#!/usr/bin/env python3
"""Las 17 vinetas del marcador de Shalom, dibujadas desde la ROM.

El recuadro de la derecha (8 x 7 fichas desde la fila 8, columna 24) ensena
el dibujo 0xE368 (1-17; 0 vacio): p00:4856 pone el RLE p12:733E[n - 1] en
0x2D80 (las fichas 0xB0 en adelante del tercio central) y p00:443D coloca
p09:6713[n - 1] (todas apuntan a p09:6735: 3 x 3 bloques de 2 x 2 fichas) con
p00:44B8 en la posicion (Y 0x48, X 0xC8). Los colores son los del marcador
(p00:4875: dibujos p12:7360 y colores p12:73D0 en dos tercios, y el RLE con
destino p12:73FD).

Uso: marcador.py png <png>      las 17 en fila
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import pantalla as P  # noqa: E402

N = 17


def vineta(n):
    """La VRAM con la vineta n (1-17) en su sitio."""
    rom = P.Rom().trio(12)
    v = P.Vram(rom)
    v.rle_tercios(0x7360, 0x2080, 2)              # p00:4875
    v.rle_tercios(0x73D0, 0x0080, 2)
    v.rle_con_destino(0x73FD)
    v.rle(rom.palabra(0x733E + 2 * (n - 1)), 0x2D80)   # p00:4856
    r9 = P.Rom().trio(9)
    hl = r9.palabra(0x6713 + 2 * (n - 1))
    alto, ancho = r9[hl], r9[hl + 1]
    de = hl + 2
    f0, c0 = 0x48 // 8, 0xC8 // 8
    for f in range(alto):                         # p00:44B8
        for c in range(ancho):
            for dy, dx in ((0, 0), (0, 1), (1, 0), (1, 1)):
                v.v[P.NOMBRES + 32 * (f0 + 2 * f + dy) + c0 + 2 * c + dx] = r9[de]
                de += 1
    return v


def png(escala=2):
    from PIL import Image
    out = Image.new("RGB", (N * 60 + 4, 60), (40, 40, 40))
    for n in range(1, N + 1):
        im = P.imagen(vineta(n), sprites=False).crop((200, 72, 248, 120))
        out.paste(im, ((n - 1) * 60 + 6, 6))
    return out.resize((out.width * escala, out.height * escala), Image.NEAREST)


def main(argv):
    if len(argv) == 3 and argv[1] == "png":
        png().save(argv[2])
        print(argv[2])
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
