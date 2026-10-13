#!/usr/bin/env python3
"""La regla banco -> direccion del MegaROM, compartida por todas las herramientas.

Shalom - Knightmare III (Konami, RC-754, 1987, MSX1) es un cartucho de 256 KB
con el mapper Konami SIN SCC (Konami4): 32 bancos de 8 KB. El banco de
0x4000-0x5FFF es FIJO -no hay registro para el- y los otros tres se eligen
escribiendo el numero de banco en 0x6000 (para 0x6000-0x7FFF), 0x8000 (para
0x8000-0x9FFF) y 0xA000 (para 0xA000-0xBFFF).

Lo que dice la ROM (tools/reconocimiento.py lo vuelve a medir cada vez):
  - NO hay ni una escritura a 0x5000, 0x7000, 0x9000 ni 0xB000, que son los
    registros del mapper con SCC.
  - Los repartos se meten con `ld a,N` y el reparto de p00:4103 (`inc a`
    entre registro y registro, con copia en 0xF0F1-0xF0F3): p00:40F9 pone
    1-2-3, p00:40FF 4-5-6, p00:4125 9-10-11, p00:412B 12-13-14, p00:4131
    15-16-17, p00:4137 18-19-20, p00:413D 21-22-23 y p00:4143 24-25-26.
    p00:411B y p00:4149 entran por p00:410D, sin tocar 0x6000: ponen 7-8 y
    27-28 en 0x8000 y 0xA000. La musica va con 29-30-31 (p00:4057,
    p00:416C).
  - p00:4067 y p00:4188 devuelven el reparto que habia, leido de la copia
    en RAM.
"""
import os
import sys

TAM_PAGINA = 0x2000
N_PAGINAS = 32

# banco -> direccion de ejecucion. Medido, no supuesto: ver reconocimiento.py.
EN_6000 = (1, 4, 9, 12, 15, 18, 21, 24, 29)
EN_8000 = (2, 5, 7, 10, 13, 16, 19, 22, 25, 27, 30)
EN_A000 = (3, 6, 8, 11, 14, 17, 20, 23, 26, 28, 31)
ORG = {0: 0x4000}
for _b in EN_6000:
    ORG[_b] = 0x6000
for _b in EN_8000:
    ORG[_b] = 0x8000
for _b in EN_A000:
    ORG[_b] = 0xA000

# Escrituras al mapper que ponen un banco fuera de su ranura, medidas en
# reconocimiento.py: (banco, pc de la escritura) -> ranura.
EXCEPCIONES = {}

NUNCA_MAPEADOS = ()

# Escrituras a 0x8000 que NO van a este cartucho: p01:607E y p01:60A6 ponen
# antes en 0x8000 el slot de 0xF0F7 (ENASLT) y despues devuelven el propio
# (0xF0F8). (banco, pc de la escritura).
OTRO_SLOT = {(1, 0x6083), (1, 0x60AB)}


def org(p):
    """Direccion en la que se ejecuta el banco p."""
    return ORG[p]


def nombre(p):
    """Nombre del modulo del banco p: p00..p31."""
    return "p%02d" % p


def main(argv):
    if len(argv) < 2:
        sys.exit(__doc__)
    if argv[1] == "org":
        print("%#06x" % org(int(argv[2], 10)))
    elif argv[1] == "lista":
        for p in range(N_PAGINAS):
            print("%d %#06x" % (p, org(p)))
    elif argv[1] == "corta":
        rom, dst = argv[2], argv[3]
        d = open(rom, "rb").read()
        if len(d) != TAM_PAGINA * N_PAGINAS:
            sys.exit("la ROM mide %d bytes y no %d" % (len(d), TAM_PAGINA * N_PAGINAS))
        os.makedirs(dst, exist_ok=True)
        for p in range(N_PAGINAS):
            with open(os.path.join(dst, nombre(p) + ".bin"), "wb") as f:
                f.write(d[p * TAM_PAGINA:(p + 1) * TAM_PAGINA])
        print("%d bancos de %d bytes en %s/" % (N_PAGINAS, TAM_PAGINA, dst))
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main(sys.argv)
