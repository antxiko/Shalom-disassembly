#!/usr/bin/env python3
"""COTEJO de tools/actores.py: crea cada tipo con crea_actor (p07:82FE) en
tools/z80run.py, con las banderas de la historia a cero, y mira el fotograma
que le deja su rutina (crea_actor la corre una vez al acabar). No dibuja nada:
solo comprueba la REGLA leida de cada rutina.

Uso: coteja_actores.py      lista los que no cuadran y los que no se crean
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import motor_musica as M  # noqa: E402
import actores as A  # noqa: E402
from z80run import ParadaZ80  # noqa: E402

CFG = dict(org=0x4000, mapper="konami",
           bancos0=((0x4000, 0), (0x6000, 1), (0x8000, 7), (0xA000, 8)))


class Cartucho(M.Cartucho):
    """Sin BIOS: cada llamada por debajo de 0x4000 vuelve con A = 0."""

    def corre(self, desde, tope=300_000):
        centinela = 0xFFFE
        self.sp = (self.sp - 2) & 0xFFFF
        self._escribir16(self.sp, centinela)
        self.pc = desde
        n = 0
        while self.pc != centinela:
            if self.pc < 0x4000:
                self.a = 0
                self.pc = self._pop()
                continue
            n += 1
            if n > tope:
                raise ParadaZ80("mas de %d instrucciones" % tope)
            self._una()


def crea(rom, tipo, y=0x40, x=0x60):
    """(fotograma, direccion, colores) tras crea_actor, o None si se borra."""
    z = Cartucho(CFG, rom)
    z.sp = 0xF380
    z.mem[0xE3C1], z.mem[0xE3C2] = 0x70, 0x20       # el personaje, lejos
    z.b, z.c = tipo >> 8, tipo & 0xFF
    z.d, z.e = x, y
    z.a, z.l = 0, 0
    z.corre(0x82FE)
    if not (z.mem[0xE400] | z.mem[0xE401]):
        return None
    return z.mem[0xE408], z.mem[0xE40B], (z.mem[0xE40E], z.mem[0xE40F])


def coteja():
    rom = open(os.path.join(A.RAIZ, "shalom.rom"), "rb").read()
    mal, borrados, n = [], [], 0
    for tipo in sorted(A.salas_de_cada_tipo()):
        r = crea(rom, tipo)
        if r is None:
            borrados.append(tipo)
            continue
        n += 1
        f, d, col = r
        modo, v = A.regla(tipo)
        bien = f == v if modo == "fijo" else f in (v + 2 * (d - 1), v + 2 * (d - 1) + 1)
        if not bien or col != A.colores(tipo):
            mal.append((tipo, A.regla(tipo), f, d, col))
    return n, mal, borrados


if __name__ == "__main__":
    n, mal, borrados = coteja()
    print("cotejados %d, distintos %d, se borran al crearlos %d" % (n, len(mal), len(borrados)))
    for m in mal:
        print("  0x%03X regla %s: fotograma 0x%02X, direccion %d, colores %s" % m)
    print("  borrados:", " ".join("0x%03X" % t for t in borrados))
