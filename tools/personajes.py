#!/usr/bin/env python3
"""El personaje de Shalom dibujado desde la ROM, con su animacion.

EL PERSONAJE SON TRES SPRITES DE 16 x 16 (p01:772A): el 0 en (Y, X) con el
dibujo 4 y color 1 (o 4 en las salas 0x22C y 0x22D), el 1 en (Y - 8, X) con
el dibujo 0 y color 0x0B, y el 2 en (Y + 8, X) con el dibujo 8 y color 8. El
0 tapa a los otros dos.

LOS DIBUJOS (p00:43E9): el RLE de p18:6000[fotograma] a 0x1800 (los tres
sprites, 0x60 bytes). El fotograma (p01:7709) es 2 * (direccion - 1) mas el
bit 4 de la cuenta de cuadros del personaje (0xE3C7, que sube uno por cuadro
en p01:716E): arriba 0-1, abajo 2-3, izquierda 4-5, derecha 6-7, y cambia
cada 16 cuadros mientras anda.

Uso: personajes.py gif <gif>      las cuatro direcciones andando
     personajes.py png <png>      los 8 fotogramas en fila
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import pantalla as P  # noqa: E402

HZ = 60                      # la interrupcion de una maquina japonesa


def fotograma(n, color0=1):
    """La VRAM con los tres sprites del fotograma n en (Y, X) = (8, 0)."""
    rom = P.Rom().trio(18)
    v = P.Vram(rom)
    v.rle(rom.palabra(0x6000 + 2 * n), P.SPR_DIBUJOS)
    y, x = 8, 0
    # p00:5EEC: al volcar los sprites, la Y baja uno (el VDP pinta una mas abajo)
    atributos = [y - 1, x, 4, color0, (y - 9) & 0xFF, x, 0, 0x0B, y + 7, x, 8, 8, 0xD0]
    v.copia_bytes(bytes(atributos), P.SPR_ATRIBUTOS)
    return v


def suelo(ancho, alto):
    """El bloque mas repetido de la sala de partida (0x110, p01:67E3), en
    mosaico, de fondo."""
    from collections import Counter
    from PIL import Image
    import salas as S
    rom = P.Rom()
    bl = S.bloques(rom, 0x110)
    b = Counter(x for f in bl for x in f).most_common(1)[0][0]
    f, c = next((f, c) for f in range(8) for c in range(12) if bl[f][c] == b)
    tesela = S.sala_png(0x110).crop((16 * c, 16 * f, 16 * c + 16, 16 * f + 16))
    im = Image.new("RGB", (ancho, alto))
    for y in range(0, alto, 16):
        for x in range(0, ancho, 16):
            im.paste(tesela, (x, y))
    return im


def imagen_fotograma(n, fondo=None):
    """El fotograma n sobre el suelo de la sala de partida (o un color)."""
    v = fotograma(n)
    if isinstance(fondo, tuple):
        return P.imagen(v, fondo=fondo).crop((0, 0, 16, 32))
    base = suelo(16, 32)
    v.llena(P.NOMBRES, 0x300, 0)
    sp = P.imagen(v, fondo=(1, 2, 3)).crop((0, 0, 16, 32))
    px, pb = sp.load(), base.load()
    for y in range(32):
        for x in range(16):
            if px[x, y] != (1, 2, 3):
                pb[x, y] = px[x, y]
    return base


def tira():
    from PIL import Image
    im = suelo(8 * 20, 32)
    for n in range(8):
        im.paste(imagen_fotograma(n), (n * 20 + 2, 0))
    return im


def gif(ruta, escala=4):
    """Las cuatro direcciones a la vez, cada una con sus dos fotogramas
    cambiando cada 16 cuadros (16 / 60 s)."""
    from PIL import Image
    cuadros = []
    for k in range(2):
        im = suelo(4 * 24, 32)
        for d in range(4):
            im.paste(imagen_fotograma(2 * d + k), (d * 24 + 4, 0))
        cuadros.append(im.resize((im.width * escala, im.height * escala), Image.NEAREST))
    ms = round(1000 * 16 / HZ)
    cuadros[0].save(ruta, save_all=True, append_images=cuadros[1:], duration=ms, loop=0)
    return ms


def main(argv):
    if len(argv) == 3 and argv[1] == "gif":
        print(argv[2], gif(argv[2]), "ms por cuadro")
        return 0
    if len(argv) == 3 and argv[1] == "png":
        from PIL import Image
        im = tira()
        im.resize((im.width * 4, im.height * 4), Image.NEAREST).save(argv[2])
        print(argv[2])
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
