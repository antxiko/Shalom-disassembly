#!/usr/bin/env python3
"""La historia de Shalom (estado 4: p04:6E03), dibujada desde la ROM.

historia_0 (p04:6E13): pantalla vacia, dibujos y colores de los dos primeros
tercios a cero (p00:599A), los nombres de los dos tercios con las fichas 0-0xFF
en cuatro bloques de 8 x 8 (p00:5DF1: el bloque b son las columnas 8b-8b+7 y
las fichas 64b-64b+63) y cuatro RLE con destino: p04:7CB6, p04:7FFA, p05:81C0
y p05:833E (bancos 4-5-6). Sin colores no se ve nada.

Cada pagina (p04:6E80-6EBF, 8 paginas): la lista p04:7C71[pagina] da [origen]
[destino] y la cortinilla p00:4CD4 copia, un cuadro si y otro no, 0x200 bytes
del origen a la tabla de colores (64 pasos de 8 bytes): una vineta de 8 x 8
fichas aparece. Las vinetas se quedan: al acabar se ven las ocho. El texto de
cada pagina es el mensaje p04:6EDC[pagina] (la sala es la 0x200, p04:6E57);
en la pagina 7 la ficha 0x60 de cuatro filas (p05:94A9) cambia con el cuadro.

Uso: historia.py png <pagina 0-7> <png>    lo que se ve al acabar esa pagina
     historia.py textos                     los mensajes de cada pagina
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import pantalla as P  # noqa: E402

PAGINAS = 8


def fondo():
    rom = P.Rom().trio(4)
    v = P.Vram(rom)
    v.llena(P.SPR_ATRIBUTOS, 0x80, 0xE0)          # p00:591B
    v.llena(P.DIBUJOS, 0x1000, 0)                 # p00:599A
    v.llena(P.COLORES, 0x1000, 0)
    for tercio in range(2):                       # p00:5DF1
        for b in range(4):
            for f in range(8):
                for c in range(8):
                    v.v[P.NOMBRES + 0x100 * tercio + 32 * f + 8 * b + c] = 64 * b + 8 * f + c
    for de in (0x7CB6, 0x7FFA, 0x81C0, 0x833E):
        v.rle_con_destino(de)
    return rom, v


def vineta(rom, v, pagina):
    """p00:4CD4 entera: los 64 pasos de la cortinilla."""
    lista = rom.palabra(0x7C71 + 2 * pagina)
    origen, destino = rom.palabra(lista), rom.palabra(lista + 2)
    for k in range(64):
        off = (k & 0xF8) * 8 + (k & 7)
        for i in range(8):                        # p00:4CC5: 8 bytes, de 8 en 8
            v.v[(destino + off + 8 * i) & 0x3FFF] = rom[origen + off + 8 * i]
    return origen, destino


def pagina_png(pagina):
    rom, v = fondo()
    for p in range(pagina + 1):
        vineta(rom, v, p)
    return P.imagen(v, sprites=False).crop((0, 0, 256, 128))


def mensajes():
    """[(pagina, numero, texto)] con textos.py: la tabla de la sala 0x200."""
    import textos as T
    rom = P.Rom().trio(4)
    nums = [rom[0x6EDC + p] for p in range(PAGINAS)]
    out = []
    for titulo, g, t, salas in T.tablas():
        if 0x200 not in salas:
            continue
        r = P.Rom()
        T.bancos_de_grupo(r, g)
        tabla = T.tabla_de_mensajes(r, t)
        for p, n in enumerate(nums):
            txt = T.decodifica(r, tabla[n])[0]
            # p04:6E5D: historia_0 pone "あなた" (0x40 0x54 0x4F) de primer nombre
            out.append((p, n, txt.replace(T.NOMBRES[0xFC], "あなた")))
    return out


def main(argv):
    if len(argv) == 4 and argv[1] == "png":
        from PIL import Image
        im = pagina_png(int(argv[2]))
        im.resize((512, 256), Image.NEAREST).save(argv[3])
        print(argv[3])
        return 0
    if len(argv) == 2 and argv[1] == "textos":
        for p, n, txt in mensajes():
            print("pagina %d, mensaje 0x%02X: %s" % (p, n, txt.replace("\n", " / ")))
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
