#!/usr/bin/env python3
"""Todas las imagenes de la web, dibujadas desde la ROM con las herramientas
de tools/ (ninguna es una captura).

Uso: imagenes.py <carpeta>      (make imagenes: docs/imagenes)
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))


def doble(im, k=2):
    from PIL import Image
    return im.resize((im.width * k, im.height * k), Image.NEAREST)


def fuente():
    """Los 246 caracteres de p04:6F39, 16 por fila, con el codigo 0x00 arriba
    a la izquierda."""
    from PIL import Image
    import pantalla as P
    rom = P.Rom().trio(4)
    im = Image.new("RGB", (16 * 10, 16 * 10), (24, 24, 24))
    px = im.load()
    for c in range(0xF6):
        x0, y0 = (c % 16) * 10 + 1, (c // 16) * 10 + 1
        for f in range(8):
            b = rom[0x6F39 + 8 * c + f]
            for x in range(8):
                if b & (0x80 >> x):
                    px[x0 + x, y0 + f] = (255, 255, 255)
    return im


def main(argv):
    if len(argv) != 2:
        print(__doc__)
        return 1
    d = argv[1]
    os.makedirs(d, exist_ok=True)
    import pantalla as P
    import titulo, mundo, personajes, actores, historia, escena, accion, marcador
    r = lambda n: os.path.join(d, n)                     # noqa: E731
    doble(P.imagen(titulo.rotulo())).save(r("rotulo.png"))
    doble(P.imagen(titulo.titulo())).save(r("titulo.png"))
    from PIL import Image
    m = mundo.exterior()
    m.save(r("mundo.png"))
    m.resize((m.width // 4, m.height // 4), Image.LANCZOS).save(r("mundo_4.png"))
    mundo.rejilla(mundo.MAZMORRA1).save(r("mazmorra1.png"))
    mundo.rejilla(mundo.MAZMORRA2).save(r("mazmorra2.png"))
    mundo.especiales().save(r("salas_especiales.png"))
    personajes.gif(r("personaje.gif"))
    actores.hoja()[0].save(r("personajes_de_las_salas.png"))
    doble(actores.sala_con_actores(0x0D0)).save(r("sala_0D0_con_personajes.png"))
    actores.gif(0x21F, r("sala_21F_con_personajes.gif"))
    for p in range(historia.PAGINAS):
        doble(historia.pagina_png(p)).save(r("historia_%d.png" % p))
    doble(escena.png(1)).save(r("escena_inicial.png"))
    for e in range(1, 10):
        doble(P.imagen(accion.pantalla(e), sprites=False)).save(r("accion_%d.png" % e))
    marcador.png().save(r("marcador.png"))
    doble(fuente(), 3).save(r("fuente.png"))
    print(len(os.listdir(d)), "imagenes en", d)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
