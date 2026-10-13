#!/usr/bin/env python3
"""El rotulo de Konami y la pantalla de titulo, dibujados desde la ROM.

Sigue los pasos del cartucho con tools/pantalla.py (la VRAM empieza a cero:
p01:7083 la borra entera al encender):

  rotulo  estado 0 (p01:64F1). Paso 0: pantalla vacia (p00:591B), la fuente
          y su color (p04:6487) y p04:6527: el RLE con destino de p04:7761
          (los dibujos de los caracteres 0x40-0xBD del tercio central), sus
          colores a cero y 6 filas de 21 caracteres desde el 0x40 en la fila
          8, columna 7. Paso 1 (p04:6555): una linea de color cada cuadro;
          cada fila de caracteres sale del RLE de p04:65B8[fila] y va a la
          direccion de p04:65C4[fila]. Aqui se pinta el final: las 6 filas.
  titulo  estado 1 (p04:622B): borde negro, pantalla vacia, los 5 graficos de
          p04:60B5 en dos tercios, los volteados de p06:B255, los dibujos de
          sprite de p04:60C9, la fuente (p04:648C), los textos de p04:605D y
          p04:606C y el rectangulo de nombres de p06:B5CA (16 x 13 en la fila
          2, columna 8). Los sprites del ultimo paso de p04:6266 (la lista 5
          de p04:62C3) y la flecha de la primera opcion (p01:66D9).

Uso: titulo.py png <rotulo|titulo> <png>
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import pantalla as P  # noqa: E402


def pantalla_vacia(v):
    """p00:591B: sprites escondidos (0xE0), la ficha 0 vacia y nombres a cero."""
    v.llena(P.SPR_ATRIBUTOS, 0x80, 0xE0)
    v.llena_tercios(P.DIBUJOS, 8, 0)
    v.llena_tercios(P.COLORES, 8, 0)
    v.llena(P.NOMBRES, 0x300, 0)


def fuente(rom, v, tres_tercios):
    """p04:6487 (tres tercios) o p04:648C (solo el tercio de abajo)."""
    if tres_tercios:                      # p04:6491
        v.copia(0x6F39, 0x2000, 0x7B0)
        v.copia(0x6F39, 0x2800, 0x7B0)
    v.copia(0x76E9, 0x2808, 0x78)         # p04:64AC
    v.copia(0x6F39, 0x3000, 0x7B0)
    if tres_tercios:
        v.copia(0x6F41, 0x2808, 0x28)
        v.llena(0x0000, 0x7B0, 0xF0)      # p04:64C4
        v.llena(0x0800, 0x7B0, 0xF0)
    v.llena(0x0808, 0x78, 0xF0)           # p04:64DC
    v.llena(0x0838, 8, 0x05)
    v.llena(0x0840, 8, 0x08)
    v.llena(0x1000, 0x7B0, 0xF0)
    if tres_tercios:
        v.llena(0x0838, 0x10, 0xF0)       # p04:64D3


def rotulo():
    rom = P.Rom().trio(4)
    v = P.Vram(rom)
    pantalla_vacia(v)
    fuente(rom, v, True)
    v.rle_con_destino(0x7761)             # p04:6527
    v.llena(0x0A00, 0x3F0, 0)
    for f in range(6):
        for c in range(21):
            v.v[0x3907 + 32 * f + c] = 0x40 + 21 * f + c
    for f in range(6):                    # p04:6555, al acabar
        datos = P.rle_a_ram(rom, rom.palabra(0x65B8 + 2 * f))
        v.copia_bytes(datos[:21 * 8], rom.palabra(0x65C4 + 2 * f))
    return v


def titulo():
    rom = P.Rom().trio(4)
    v = P.Vram(rom)
    pantalla_vacia(v)                     # p04:6090
    for k in range(5):
        de, hl = rom.palabra(0x60B5 + 4 * k), rom.palabra(0x60B7 + 4 * k)
        v.rle_tercios(de, hl, 2)
    v.rle_tercios(0xB255, 0x2480, 2, volteado=True)
    v.rle(0x60C9, P.SPR_DIBUJOS)
    fuente(rom, v, False)
    v.bytes_a_vram(0x605D)                # p04:6234
    hl, c, b = rom.palabra(0xB5CA), rom[0xB5CC], rom[0xB5CD]
    de = 0xB5CE
    for _ in range(b):                    # p04:624F
        v.copia(de, hl, c)
        hl += 0x20
        de += c
    v.bytes_a_vram(0x606C)                # p04:622B
    # p04:6266: la lista 5 de p04:62C3 en los sprites, el resto cortado
    lista = rom.palabra(0x62C3 + 2 * 4)
    n = rom[lista]
    atrib = bytearray([0xD0] * 24) + bytearray([0xE0] * (0x80 - 24))
    atrib[:n] = rom.bytes(lista + 1, n)
    v.copia_bytes(atrib, P.SPR_ATRIBUTOS)
    v.v[0x3A8B], v.v[0x3AAB] = 0x3F, 0x00  # p01:66D9: la flecha en la primera
    return v


def main(argv):
    if len(argv) == 4 and argv[1] == "png":
        v = {"rotulo": rotulo, "titulo": titulo}[argv[2]]()
        P.imagen(v).save(argv[3])
        print(argv[3])
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
