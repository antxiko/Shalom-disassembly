#!/usr/bin/env python3
"""El mundo de Shalom montado sala a sala desde la ROM (tools/salas.py).

LAS VECINAS SALEN DEL CODIGO (p02:844F, cambia_de_sala):

  - Salas 0x000-0x1FF: la tabla p02:858C da, por direccion, lo que se suma a
    la sala: arriba -0x20, abajo +0x20, izquierda -1, derecha +1. El mundo es
    una rejilla de 32 x 16 salas (sala = fila * 32 + columna) y p01:73D4-740E
    cierran los bordes de esa rejilla.
  - Salas 0x202-0x20D (p02:859C, tabla p02:85A4) y 0x213-0x21E (p02:8714,
    tabla p02:871C): cada sala dice a mano a donde lleva cada direccion. Aqui
    estan copiadas como posiciones de rejilla: (sala, columna, fila), y cada
    paso sale de una rutina del listado (ver CAMINOS).
  - Salas 0x226-0x227 (p02:88D4): una lleva a la otra.
  - Salas 0x228-0x22D (p02:8C32): la siguiente sale al azar de p02:8C83.

Uso: mundo.py png <exterior|mazmorra1|mazmorra2|especiales> <png> [reduccion]
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import salas as S  # noqa: E402

W, H = 8 * S.ANCHO, 8 * S.ALTO

# (sala, columna, fila): leidas de las rutinas de p02:85BC-8711. Cada salida:
# 0x202 der 0x203 | 0x203 izq 0x202, der 0x204 | 0x204 izq 0x203, arr 0x205 |
# 0x205 aba 0x204, der 0x206 | 0x206 izq 0x205, arr 0x207 | 0x207 aba 0x206,
# arr 0x208 | 0x208 aba 0x207, arr 0x209 | 0x209 aba 0x208, izq 0x20A |
# 0x20A izq 0x20B, der 0x209 | 0x20B der 0x20A | 0x20C arr 0x20D | 0x20D aba 0x20C
MAZMORRA1 = [(0x202, 0, 4), (0x203, 1, 4), (0x204, 2, 4), (0x205, 2, 3), (0x206, 3, 3),
             (0x207, 3, 2), (0x208, 3, 1), (0x209, 3, 0), (0x20A, 2, 0), (0x20B, 1, 0)]
# p02:8734-88C7: 0x213 der 0x215 | 0x214 aba 0x215, der 0x217 | 0x215 arr 0x214,
# aba 0x216, izq 0x213, der 0x218 | 0x216 arr 0x215, der 0x219 | 0x217 izq 0x214,
# aba 0x218 | 0x218 arr 0x217, aba 0x219, izq 0x215 | 0x219 izq 0x216, der 0x21C,
# arr 0x218 | 0x21A aba 0x21B, der 0x21D | 0x21B arr 0x21A, aba 0x21C |
# 0x21C arr 0x21B, izq 0x219 | 0x21D izq 0x21A, der 0x21E | 0x21E izq 0x21D
MAZMORRA2 = [(0x213, 0, 1), (0x214, 1, 0), (0x215, 1, 1), (0x216, 1, 2), (0x217, 2, 0),
             (0x218, 2, 1), (0x219, 2, 2), (0x21A, 3, 0), (0x21B, 3, 1), (0x21C, 3, 2),
             (0x21D, 4, 0), (0x21E, 5, 0)]


def rejilla(posiciones, fondo=(24, 24, 24)):
    from PIL import Image
    cols = max(c for _, c, _ in posiciones) + 1
    filas = max(f for _, _, f in posiciones) + 1
    im = Image.new("RGB", (cols * W, filas * H), fondo)
    for s, c, f in posiciones:
        im.paste(S.sala_png(s), (c * W, f * H))
    return im


def exterior():
    return rejilla([(s, s % 32, s // 32) for s in range(0x200)])


def especiales():
    """Las salas 0x200-0x234 sueltas, con su numero (las 0x235 y 0x236 no
    tienen mapa: el banco 20 acaba en la 0x234)."""
    from PIL import Image, ImageDraw
    n, cols = 0x35, 8
    filas = (n + cols - 1) // cols
    im = Image.new("RGB", (cols * (W + 8), filas * (H + 18)), (24, 24, 24))
    d = ImageDraw.Draw(im)
    for i in range(n):
        x, y = (i % cols) * (W + 8) + 4, (i // cols) * (H + 18) + 15
        im.paste(S.sala_png(0x200 + i), (x, y))
        d.text((x, y - 13), "0x%03X" % (0x200 + i), fill=(255, 255, 255))
    return im


def main(argv):
    if len(argv) >= 4 and argv[1] == "png":
        im = {"exterior": exterior, "mazmorra1": lambda: rejilla(MAZMORRA1),
              "mazmorra2": lambda: rejilla(MAZMORRA2), "especiales": especiales}[argv[2]]()
        if len(argv) > 4:
            from PIL import Image
            k = int(argv[4])
            im = im.resize((im.width // k, im.height // k), Image.LANCZOS)
        im.save(argv[3])
        print(argv[3], im.size)
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
