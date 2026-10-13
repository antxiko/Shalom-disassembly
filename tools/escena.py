#!/usr/bin/env python3
"""La escena inicial de Shalom (p04:6693, 53 pasos), dibujada desde la ROM.

Es una conversacion con opciones (cursor en la columna de la derecha). El
paso 5 (p04:671A) monta la pantalla:

  - borra dibujos y colores de dos tercios (p00:599A), pantalla vacia, la zona
    de juego a cero y la fuente del tercio de abajo (p04:648C);
  - RLE p06:B69E a 0x2880, p06:B951 a 0x2600, p06:BC83 a 0x0600 y p04:7FFC a
    0x2400; 0x200 bytes de colores de p05:8EA9 a 0x0400 (los mismos de la
    vineta de la heroina en la historia) y 0x300 ceros en 0x0880;
  - nombres: 8 x 8 fichas desde la 0x80 en la fila 0, columna 10 (p04:6765) y
    12 x 8 desde la 0x10 en la fila 8, columna 8 (p04:6770);
  - el marco (p04:631F): los RLE p04:633D y p04:6432, y el dibujo p04:6443
    (8 x 8 fichas) en la fila 0, columna 24, en el bufer y en la VRAM.

El dibujo de 12 x 8 no tiene color hasta el paso 8, y solo si se elige la
opcion 1: la cortinilla p00:4D28 copia los 0x300 bytes de p06:B983 (lista
p04:678E) a los colores de 0x0880; antes, p04:67EE cambia 4 fichas de la fila
3 (columna 12) y dos de la fila 5 (columna 13).

Uso: escena.py png <0|1> <png>    la pantalla del paso 5, o con la opcion 1
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import pantalla as P  # noqa: E402
import titulo as T  # noqa: E402


def rectangulo(nombres, fila, col, primera, ancho, alto):
    """p04:6792: ANCHO x ALTO fichas seguidas desde PRIMERA."""
    for f in range(alto):
        for c in range(ancho):
            nombres[32 * (fila + f) + col + c] = (primera + f * ancho + c) & 0xFF


def paso_5():
    rom = P.Rom().trio(4)
    v = P.Vram(rom)
    v.llena(P.DIBUJOS, 0x1000, 0)                 # p00:599A
    v.llena(P.COLORES, 0x1000, 0)
    T.pantalla_vacia(v)                           # p00:591B
    T.fuente(rom, v, False)                       # p04:648C
    for de, hl in ((0xB69E, 0x2880), (0xB951, 0x2600), (0xBC83, 0x0600), (0x7FFC, 0x2400)):
        v.rle(de, hl)
    v.copia(0x8EA9, 0x0400, 0x200)
    v.llena(0x0880, 0x300, 0)
    nombres = bytearray(0x300)                    # el bufer 0xED00
    rectangulo(nombres, 0, 10, 0x80, 8, 8)
    rectangulo(nombres, 8, 8, 0x10, 12, 8)
    v.rle_con_destino(0x633D)                     # p04:631F: el marco
    v.rle_con_destino(0x6432)
    pos, ancho, alto = rom.palabra(0x6443), rom[0x6445], rom[0x6446]
    fila, col = (pos & 0xFF) // 8, (pos >> 8) // 8     # p00:4509: L = Y, H = X
    for f in range(alto):
        for c in range(ancho):
            nombres[32 * (fila + f) + col + c] = rom[0x6447 + f * ancho + c]
    return rom, v, nombres


def con_opcion_1(rom, v, nombres):
    rectangulo(nombres, 3, 12, 0xC0, 4, 1)        # p04:67EE
    nombres[0xAD], nombres[0xAE] = 0xC4, 0xC5
    origen, destino = rom.palabra(0x678E), rom.palabra(0x6790)
    v.copia(origen, destino, 0x300)               # p00:4D28: 64 pasos de 12 x 8 bytes


def png(opcion):
    rom, v, nombres = paso_5()
    if opcion == 1:
        con_opcion_1(rom, v, nombres)
    v.v[P.NOMBRES:P.NOMBRES + 0x200] = nombres[:0x200]     # p00:5E5F y el marco
    return P.imagen(v, sprites=False).crop((0, 0, 256, 128))


def main(argv):
    if len(argv) == 4 and argv[1] == "png":
        from PIL import Image
        im = png(int(argv[2]))
        im.resize((512, 256), Image.NEAREST).save(argv[3])
        print(argv[3])
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
