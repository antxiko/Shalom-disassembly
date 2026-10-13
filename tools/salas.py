#!/usr/bin/env python3
"""Las salas de Shalom dibujadas desde la ROM, como las monta el cartucho.

p01:677F (monta_la_sala) hace, en este orden, lo que importa para el dibujo:

  fichas    p00:47C6  el juego de la sala es el nibble de p12:6000[sala]
                      (p00:43BB: dos salas por byte, la par en el nibble alto);
                      p12:6120[juego] apunta a [primera ficha dura] y 64
                      indices; el indice i trae 8 bytes de dibujo de p12:64CE
                      + 8 i y 8 de color de p12:6C06 + 8 i, que van a las
                      fichas 0x10-0x4F de los dos primeros tercios
  graficos  p00:482F  p12:7990 + 4 * p12:7750[sala] da dos RLE: dibujos desde la
                      ficha 0x50 (0x2280) y sus colores (0x0280), dos tercios
  mapa      p00:514B  12 x 8 bloques de 16 x 16 a nibbles, 48 bytes por sala:
                      las salas 0-0x1FF en p15:6000 (bancos 15-16-17) y las
                      0x200 en adelante en p20:B606 (18-19-20). El bloque b son
                      las fichas 4b + 0x10..0x13 (arriba izquierda, arriba
                      derecha, abajo izquierda, abajo derecha); con el bit 3
                      de 0xEB7D la sala 0x208 cambia el bloque 0x0B por el 2
  dibujos   p09:622B  en las salas de p09:6291, la lista de p09:63A5: [Y | X/16]
                      y el dibujo; 0xFE delante quita la dureza. El dibujo
                      (p00:44B8) es [filas][columnas] y 4 fichas por bloque
  banderas  p09:60CC  en las salas de p09:613C, los dibujos que dependen de
                      una bandera de la historia (aqui: con la bandera puesta
                      o sin ella, segun se pida)

La zona de juego son 24 x 16 fichas arriba a la izquierda (p00:5E5F).

Uso: salas.py png <sala> <png> [--banderas]
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import pantalla as P  # noqa: E402

ANCHO, ALTO = 24, 16        # fichas de la zona de juego


def nibble(rom, tabla, sala):
    """p00:43BB."""
    b = rom[tabla + sala // 2]
    return (b & 0x0F) if sala & 1 else (b >> 4)


def fichas(rom, v, sala):
    """p00:47C6 (bancos 12-13-14). Devuelve la primera ficha dura."""
    rom.trio(12)
    juego = nibble(rom, 0x6000, sala)
    de = rom.palabra(0x6120 + 2 * juego)
    dura = rom[de]
    for n in range(64):
        i = rom[de + 1 + n]
        for k in range(2):
            v.copia(0x64CE + 8 * i, 0x2080 + 0x800 * k + 8 * n, 8)
            v.copia(0x6C06 + 8 * i, 0x0080 + 0x800 * k + 8 * n, 8)
    return dura


def graficos(rom, v, sala):
    """p00:482F (bancos 12-13-14)."""
    rom.trio(12)
    k = rom[0x7750 + sala]
    hl = 0x7990 + 4 * k            # el indice se dobla (p00:483D) y otra vez en p00:43A4
    v.rle_tercios(rom.palabra(hl), 0x2280, 2)
    v.rle_tercios(rom.palabra(hl + 2), 0x0280, 2)


def bloques(rom, sala, eb7d=0):
    """p00:514B: los 12 x 8 bloques de la sala."""
    if sala >= 0x200:
        rom.trio(18)
        base = 0xB606 + (sala - 0x200) * 48
    else:
        rom.trio(15)
        base = 0x6000 + sala * 48
    cambia = (eb7d & 8) and sala == 0x208
    out = []
    for f in range(8):
        fila = []
        for c in range(12):
            n = f * 12 + c
            b = rom[base + n // 2]
            b = (b & 0x0F) if n & 1 else (b >> 4)
            if cambia and b == 0x0B:
                b = 2
            fila.append(b)
        out.append(fila)
    return out


def nombres_de_bloques(bl):
    t = [[0] * ANCHO for _ in range(ALTO)]
    for f in range(8):
        for c in range(12):
            a = 4 * bl[f][c] + 0x10
            t[2 * f][2 * c], t[2 * f][2 * c + 1] = a, a + 1
            t[2 * f + 1][2 * c], t[2 * f + 1][2 * c + 1] = a + 2, a + 3
    return t


def dibujo(rom, t, y, x, hl):
    """p00:44B8: [filas][columnas] y 4 fichas por bloque en la posicion (y, x)."""
    filas, cols = rom[hl], rom[hl + 1]
    de = hl + 2
    f0, c0 = y // 8, x // 8
    for f in range(filas):
        for c in range(cols):
            ff, cc = f0 + 2 * f, c0 + 2 * c
            for dy, dx in ((0, 0), (0, 1), (1, 0), (1, 1)):
                if ff + dy < ALTO and cc + dx < ANCHO:
                    t[ff + dy][cc + dx] = rom[de]
                de += 1


def _busca(rom, tabla, sala):
    i = 0
    while True:
        v = rom.palabra(tabla + 2 * i)
        if v == 0xFFFF:
            return None
        if v == sala:
            return i
        i += 1


def dibujos_de_la_sala(rom, t, sala):
    """p09:622B (bancos 9-10-11)."""
    rom.trio(9)
    i = _busca(rom, 0x6291, sala)
    if i is None:
        return
    hl = rom.palabra(0x63A5 + 2 * i)
    while True:
        e = rom[hl]
        if e == 0xFF:
            return
        if e == 0xFE:
            hl += 1
            continue
        y, x = e & 0xF0, (e & 0x0F) << 4
        dibujo(rom, t, y, x, rom.palabra(hl + 1))
        hl += 3


def dibujos_por_bandera(rom, t, sala, banderas):
    """p09:60CC (bancos 9-10-11): [dureza][mascara][bandera] [Y | X/16][dibujo]."""
    rom.trio(9)
    i = _busca(rom, 0x613C, sala)
    if i is None:
        return
    hl = rom.palabra(0x6162 + 2 * i)
    while True:
        if rom[hl] == 0xFF:
            return
        mascara, ram = rom[hl + 1], rom.palabra(hl + 2)
        e = rom[hl + 4]
        if banderas.get(ram, 0) & mascara:
            y, x = e & 0xF0, (e & 0x0F) << 4
            dibujo(rom, t, y, x, rom.palabra(hl + 5))
        hl += 7


def sala_vram(sala, banderas=None):
    """La VRAM de la sala y su tabla de 24 x 16 nombres."""
    rom = P.Rom()
    v = P.Vram(rom)
    fichas(rom, v, sala)
    graficos(rom, v, sala)
    banderas = banderas or {}
    t = nombres_de_bloques(bloques(rom, sala, banderas.get(0xEB7D, 0)))
    dibujos_de_la_sala(rom, t, sala)
    dibujos_por_bandera(rom, t, sala, banderas)
    for f in range(ALTO):
        for c in range(ANCHO):
            v.v[P.NOMBRES + 32 * f + c] = t[f][c]
    return v, t


def sala_png(sala, banderas=None):
    v, _ = sala_vram(sala, banderas)
    v.llena(P.SPR_ATRIBUTOS, 1, 0xD0)
    return P.imagen(v).crop((0, 0, 8 * ANCHO, 8 * ALTO))


def dureza(sala):
    """p00:514B y p00:5221: el bloque b es duro si su primera ficha (4b + 0x10)
    no es menor que la primera dura del juego (0xE361). 12 x 8 de 0/1."""
    rom = P.Rom()
    dura = fichas(rom, P.Vram(rom), sala)
    return [[1 if 4 * b + 0x10 >= dura else 0 for b in fila] for fila in bloques(rom, sala)]


def plano_png(sala):
    """La sala con los bloques duros tapados en gris: el trazado, aunque sus
    fichas sean negro sobre negro."""
    im = sala_png(sala)
    px = im.load()
    for f, fila in enumerate(dureza(sala)):
        for c, d in enumerate(fila):
            if d:
                for y in range(16 * f, 16 * f + 16):
                    for x in range(16 * c, 16 * c + 16):
                        r, g, b = px[x, y]
                        px[x, y] = ((r + 128) // 2, (g + 128) // 2, (b + 128) // 2)
    return im


def main(argv):
    if len(argv) >= 4 and argv[1] == "png":
        sala = int(argv[2], 0)
        ban = {}
        if "--banderas" in argv:
            ban = {a: 0xFF for a in range(0xEB58, 0xEB7E)}
        sala_png(sala, ban).save(argv[3])
        print(argv[3])
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
