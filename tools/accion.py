#!/usr/bin/env python3
"""Las pantallas de las 9 escenas de accion de Shalom, desde la ROM.

p10:8C60 las prepara: esconde los sprites, borra los proyectiles, borra los
nombres (escenas 5-8) o la zona de juego y los nombres sin la ventana (las
demas), crea el rival (p10:8D6F) y llama a pantalla_de_27 (p00:4893):

  - con 27-28 en 0x8000/0xA000: los nombres del RLE con destino p27:9B8B, los
    dibujos p27:9ECB desde la ficha 9 (0x2048) y sus colores p27:9ED4
    (0x0048), en dos tercios;
  - y lo de cada escena (tabla p00:48BE). Las 1-4 saltan a p01:623D, 6261,
    6279 y 62C1 (el banco 1 sigue en 0x6000) y leen de p27/p28; las 5-9 son
    graficos_18_a-e (bancos 18-19-20), y la 9 acaba con los nombres p27:B987.

Lo que no toca la escena se queda como estaba (los dibujos de la sala de la
que se viene y la fuente del tercio de abajo): aqui la VRAM empieza a cero y
lleva la fuente (p04:648C).

EL RIVAL es el objeto de clase = escena (p10:8D00, posicion en p10:8D6F) y se
pinta con fichas en el bufer de nombres al aparecer: ver jefe_1-9 (el 2 y el
4, en su paso 2); el 9 lleva ademas cinco sprites. Lo que cambia despues (dibujos al
azar, piezas que parpadean, sprites) no esta.

Uso: accion.py png <1-9> <png>
     accion.py todas <png>        las nueve en una hoja
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import pantalla as P  # noqa: E402
import titulo as T  # noqa: E402

# (bancos, [(operacion, DE, HL)]): "rle", "volteado", "dos", "dos_volteado",
# "tres", "destino" (RLE con destino)
B27 = (1, 27, 28)
B18 = (18, 19, 20)
ESCENAS = {
    1: (B27, [("dos", 0x9ED9, 0x2080), ("dos_volteado", 0x9ED9, 0x2370),
              ("dos", 0xA1C8, 0x0080), ("dos", 0xA1C8, 0x0370)]),           # p01:623D
    2: (B27, [("destino", 0xA415, None), ("destino", 0xA974, None),
              ("destino", 0xA654, None), ("destino", 0xAABA, None)]),       # p01:6261
    3: (B27, [("rle", 0xAC67, 0x2080), ("volteado", 0xAC67, 0x2380),
              ("rle", 0xAF27, 0x0080), ("rle", 0xAF27, 0x0380),
              ("rle", 0xB085, 0x2880), ("volteado", 0xB085, 0x2A70),
              ("rle", 0xB25C, 0x0880), ("rle", 0xB25C, 0x0A70)]),           # p01:6279
    4: (B27, [("rle", 0xB372, 0x2080), ("volteado", 0xB372, 0x22C8),
              ("rle", 0xB5B4, 0x0080), ("rle", 0xB5B4, 0x02C8),
              ("rle", 0xB69C, 0x2880), ("volteado", 0xB69C, 0x2A90),
              ("rle", 0xB8A8, 0x0880), ("rle", 0xB8A8, 0x0A90)]),           # p01:62C1
    5: (B18, [("rle", 0x91D1, 0x2080), ("volteado", 0x91D1, 0x2238),
              ("rle", 0x938A, 0x0080), ("rle", 0x938A, 0x0238),
              ("rle", 0x94A7, 0x2880), ("volteado", 0x94A7, 0x2B28),
              ("rle", 0x973D, 0x0880), ("rle", 0x973D, 0x0B28),
              ("destino", 0x9910, None), ("destino", 0x9928, None)]),       # p00:48E8
    6: (B18, [("tres", 0x9935, 0x2080), ("tres", 0x9E89, 0x0080)]),         # p00:493F
    7: (B18, [("dos_volteado", 0x9935, 0x2080), ("dos", 0xA14C, 0x0130),
              ("dos", 0xA158, 0x0260)]),                                    # p00:4954
    8: (B18, [("dos", 0xA2F9, 0x2080), ("dos_volteado", 0xA2F9, 0x23C0),
              ("dos", 0xA627, 0x0080), ("dos", 0xA627, 0x03C0)]),           # p00:4972
    9: (B18, [("rle", 0xAB2E, 0x2080), ("volteado", 0xAB2E, 0x2440),
              ("rle", 0xAECE, 0x0080), ("rle", 0xAECE, 0x0440),
              ("rle", 0xB0F2, 0x2880), ("volteado", 0xB0F2, 0x2C00),
              ("rle", 0xB40C, 0x0880), ("rle", 0xB40C, 0x0C00),
              ("destino27", 0xB987, None)]),                                # p00:4999
}


def haz(v, op, de, hl):
    if op == "rle":
        v.rle(de, hl)
    elif op == "volteado":
        v.rle(de, hl, volteado=True)
    elif op == "dos":
        v.rle_tercios(de, hl, 2)
    elif op == "dos_volteado":
        v.rle_tercios(de, hl, 2, volteado=True)
    elif op == "tres":
        v.rle_tercios(de, hl, 3)
    elif op in ("destino", "destino27"):
        v.rle_con_destino(de)


def dibujo_a_ram(rom, buf, de, hl, tope=0x1A0):
    """p10:8E31: [n] n bytes [salto] hasta 0xFF, sin pasar de 0xEEA0."""
    while True:
        n = rom[de]
        de += 1
        if n == 0xFF:
            return
        for _ in range(n):
            buf[hl] = rom[de]
            de += 1
            hl += 1
        hl += rom[de]
        de += 1
        if hl >= tope:
            return


def jefe_1(rom, buf):
    """objeto_01 pasos 0-2 (p10:8DF8-8E53): el suelo p10:8EEA en 0xEEA0 y el
    dibujo p10:8F2A bajando de la fila 12 a la 0, columna 14, uno cada 4
    cuadros."""
    buf[0x1A0:0x1E0] = rom.bytes(0x8EEA, 0x40)
    for cuenta in range(12, -1, -1):
        dibujo_a_ram(rom, buf, 0x8F2A, 32 * cuenta + 0x0E)


def dibujo_con_mascara(rom, buf, de, c=0xFF):
    """p10:94B3: [destino en 0xED00-] y tramos [n] bytes [salto] hasta 0xFF,
    cada byte AND C."""
    hl = rom.palabra(de) - 0xED00
    de += 2
    while rom[de] != 0xFF:
        n = rom[de]
        de += 1
        for _ in range(n):
            buf[hl] = rom[de] & c
            de += 1
            hl += 1
        hl += rom[de]
        de += 1


def jefe_3(rom, buf):
    """objeto_03 paso 0 (p10:93B0): los dibujos p10:94D1, 9587 y 9626 y la
    ficha 0x10 en 0xEEA0-0xEEFF. Lo que cambia al azar luego (p10:93F0, los
    dibujos de (ix+0x1E) y (ix+0x1F)) no esta."""
    for de in (0x94D1, 0x9587, 0x9626):
        dibujo_con_mascara(rom, buf, de)
    buf[0x1A0:0x200] = bytes([0x10]) * 0x60


def tramos(rom, buf, de, hl):
    """p10:9B37 (y p10:9140, p10:993E): [n] n bytes [salto] hasta 0xFF."""
    while rom[de] != 0xFF:
        n = rom[de]
        de += 1
        for _ in range(n):
            buf[hl] = rom[de]
            de += 1
            hl += 1
        hl += rom[de]
        de += 1


def rival(rom, escena):
    """p10:8D6F[escena - 1]: (Y, X) del rival."""
    de = rom.palabra(0x8D6F + 2 * (escena - 1))
    return rom[de], rom[de + 1]


def bloque(y, x):
    """p00:4509: el desplazamiento en 0xED00 de la posicion (Y, X)."""
    return 32 * (y // 8) + x // 8


def bloques_de_fichas(buf, hl, ancho, alto):
    """p10:96E7: ANCHO x ALTO bloques de 2 x 2 con las fichas 0x10-0x13."""
    for f in range(alto):
        for c in range(ancho):
            a = hl + 64 * f + 2 * c
            buf[a], buf[a + 1], buf[a + 32], buf[a + 33] = 0x10, 0x11, 0x12, 0x13


def dibujo_6x10(rom, buf, hl, tabla, fotograma=1):
    """p10:9C89 y p10:9FDD: 6 filas de 10 fichas de TABLA[fotograma - 1]."""
    de = rom.palabra(tabla + 2 * (fotograma - 1))
    for f in range(6):
        for c in range(10):
            buf[hl + 32 * f + c] = rom[de]
            de += 1


def con_destino(rom, buf, de):
    """p10:913A: [destino] y tramos [n] bytes [salto] hasta 0xFF."""
    tramos(rom, buf, de + 2, rom.palabra(de) - 0xED00)


def aparece(rom, buf, tabla):
    """El paso 2 de las clases 2 y 4 (p10:9120, p10:9710): cada 16 cuadros el
    dibujo con destino TABLA[cuenta]; al llegar la cuenta a 5 pasa de paso sin
    pintar el ultimo: se pintan los cuatro primeros."""
    for k in range(4):
        con_destino(rom, buf, rom.palabra(tabla + 2 * k))


def jefe_2(rom, buf):
    """objeto_02: el paso 0 (p10:9100), los dibujos con destino p10:91B6 y
    924E, y el paso 2, los de p10:9244."""
    for de in (0x91B6, 0x924E):
        con_destino(rom, buf, de)
    aparece(rom, buf, 0x9244)


def jefe_4(rom, buf):
    """objeto_04: el paso 0 (p10:96A2), un marco de bloques 0x10-0x13 y el
    interior con la ficha 0x18, y el paso 2, los dibujos de p10:978A."""
    bloques_de_fichas(buf, 0x24, 12, 1)
    bloques_de_fichas(buf, 0x64, 1, 5)
    bloques_de_fichas(buf, 0x7A, 1, 5)
    bloques_de_fichas(buf, 0x1A4, 12, 1)
    for f in range(10):
        buf[0x66 + 32 * f:0x66 + 32 * f + 20] = bytes([0x18]) * 20
    aparece(rom, buf, 0x978A)                     # el paso 2 (p10:9710)


def jefe_5(rom, buf):
    """objeto_05 paso 0 (p10:98F4): bordes con la ficha 0x10, el interior con
    la 0x11 y el dibujo p10:99AA en 0xED4B."""
    buf[0x04:0x04 + 0x18] = bytes([0x10]) * 0x18
    for f in range(23):
        for c in (0x24, 0x3B):
            if c + 32 * f < 0x300:
                buf[c + 32 * f] = 0x10
    for f in range(23):
        for c in range(22):
            if 0x25 + 32 * f + c < 0x300:
                buf[0x25 + 32 * f + c] = 0x11
    tramos(rom, buf, 0x99AA, 0x4B)


def jefe_6(rom, buf):
    """objeto_06 paso 0 (p10:9B1F): el dibujo p10:9CC1 en 0xED05 y el rival
    (fotograma 1, p10:A165) en 6 x 10 fichas de p10:9D9B, en (Y, X - 0x30)."""
    tramos(rom, buf, 0x9CC1, 0x05)
    y, x = rival(rom, 6)
    dibujo_6x10(rom, buf, bloque(y, x - 0x30), 0x9D9B)


def jefe_7(rom, buf):
    """objeto_07 paso 0 (p10:9EA5): las fichas 0x27, 0x26 en la fila 22 desde
    la columna 4 (0xEEC4) y el rival en 6 x 10 fichas de p10:A012."""
    for k in range(14):
        buf[0x1C4 + 2 * k], buf[0x1C5 + 2 * k] = 0x27, 0x26
    y, x = rival(rom, 7)
    dibujo_6x10(rom, buf, bloque(y, x), 0xA012)


def jefe_8(rom, buf):
    """objeto_08 paso 0 (p11:A197): las 15 filas de p11:A352 (p11:A264: por
    fila [columna] y fichas hasta 0xFF) y las 10 piezas de p11:A32A (p11:A287:
    [destino][pieza], dibujos p11:A2F6: [alto][ancho] y sus fichas)."""
    hl = 0xA352
    for f in range(15):
        d = 32 * f + rom[hl]
        hl += 1
        while rom[hl] != 0xFF:
            buf[d] = rom[hl]
            d += 1
            hl += 1
        hl += 1
    for k in range(10):
        e = 0xA32A + 4 * k
        d, n = rom.palabra(e) - 0xED00, rom[e + 2]
        pz = rom.palabra(0xA2F6 + 2 * n)
        alto, ancho = rom[pz], rom[pz + 1]
        pz += 2
        for f in range(alto):
            for c in range(ancho):
                buf[d + 32 * f + c] = rom[pz]
                pz += 1


def jefe_9(rom, buf):
    """objeto_09, primer paso (p11:A52A): los 0x1E0 nombres de p11:BDAA (y
    cinco sprites de p11:A4EF, que aqui no estan)."""
    buf[:0x1E0] = rom.bytes(0xBDAA, 0x1E0)


JEFES = {1: jefe_1, 8: jefe_8, 9: jefe_9, 2: jefe_2, 3: jefe_3, 4: jefe_4, 5: jefe_5, 6: jefe_6, 7: jefe_7}


def pantalla(escena):
    rom = P.Rom().trio(4)
    v = P.Vram(rom)
    T.pantalla_vacia(v)
    T.fuente(rom, v, False)
    v.r = P.Rom().pon(1, 27, 28)                  # p00:4893
    v.rle_con_destino(0x9B8B)
    v.rle_tercios(0x9ECB, 0x2048, 2)
    v.rle_tercios(0x9ED4, 0x0048, 2)
    bancos, ops = ESCENAS[escena]
    for op, de, hl in ops:
        v.r = P.Rom().pon(1, 27, 28) if op == "destino27" else P.Rom().pon(*bancos)
        haz(v, op, de, hl)
    buf = bytearray(0x300)
    if escena in JEFES:
        JEFES[escena](P.Rom().trio(9), buf)
    v.v[P.NOMBRES:P.NOMBRES + 0x300] = buf               # p00:5E45 / p00:5E51
    return v


def main(argv):
    if len(argv) == 4 and argv[1] == "png":
        from PIL import Image
        im = P.imagen(pantalla(int(argv[2])), sprites=False)
        im.resize((512, 384), Image.NEAREST).save(argv[3])
        print(argv[3])
        return 0
    if len(argv) == 3 and argv[1] == "todas":
        from PIL import Image
        h = Image.new("RGB", (3 * 260 - 4, 3 * 196 - 4), (40, 40, 40))
        for e in range(1, 10):
            h.paste(P.imagen(pantalla(e), sprites=False), (((e - 1) % 3) * 260, ((e - 1) // 3) * 196))
        h.save(argv[2])
        print(argv[2])
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
