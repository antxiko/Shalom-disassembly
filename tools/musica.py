#!/usr/bin/env python3
"""La musica del cartucho, ejecutando su motor de sonido (ver motor_musica.py).

El motor esta en el banco 29 (0x6000) y sus datos en el 29, el 30 y el 31.
La interrupcion (p00:404C) pone 29-30-31 y llama al cuadro de sonido,
p29:6449, en cada cuadro; el juego pide un sonido con p00:415B (A = numero),
que pone 29-30-31 y llama a p29:6000. Cinco canales de 0x2C bytes desde
0xE210; la copia del mezclador del PSG esta en 0xE2FE, que el arranque deja
en 0xBF (p01:7083). MegaROM Konami4 de 256 KB, sin SCC.

Uso:  musica.py registros 0x3B [cuadros] | mp3 0x3B f.mp3 | todas docs/audio
      musica.py barrido 0x01 0x61 | emu
      musica.py lecturas 0x01 0x61   los bytes de 0x6000-0xBFFF que lee el
                                     motor para cada numero (sin contar las
                                     instrucciones), en rangos
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import motor_musica  # noqa: E402

N_SONIDOS = 0x61     # p29:612F + 2 x numero; la tabla acaba en p29:61F3

PIEZAS = []

CFG = dict(rom="shalom.rom", org=0x4000, mapper="konami",
           bancos0=((0x4000, 0), (0x6000, 29), (0x8000, 30), (0xA000, 31)),
           frame=0x6449, pide=0x6000, banco_frame=29, banco_pide=29,
           ram=(0xE210, 0xE308), ram0=[(0xE2FE, 0xBF)], hz=60,
           psg0={7: 0xBF}, romtype="konami", max_s=300, piezas=PIEZAS)


class Lector(motor_musica.Cartucho):
    """El cartucho apuntando cada lectura de 0x6000-0xBFFF con su banco."""

    def __init__(self, cfg, rom):
        super().__init__(cfg, rom)
        self.leidos = set()
        self.instr = set()

    def _una(self):
        self._en_instr = True
        pc0 = self.pc
        super()._una()
        self._en_instr = False
        # las lecturas de la instruccion: desde pc0 hasta donde haya avanzado
        # el pc si sigue de largo; las de un salto no importan, solo se
        # descuentan las direcciones de codigo que se hayan leido como tal

    def _leer(self, d):
        d &= 0xFFFF
        if 0x6000 <= d < 0xC000:
            b = self.bancos.get(d & 0xE000)
            clave = (b, d)
            if getattr(self, "_en_instr", False) and d == self.pc:
                self.instr.add(clave)
            else:
                self.leidos.add(clave)
        return super()._leer(d)


def lecturas(desde, hasta):
    """{numero: set((banco, direccion))} de las lecturas de datos."""
    rom = open(os.path.join(motor_musica.RAIZ, CFG["rom"]), "rb").read()
    viejo = motor_musica.Cartucho
    motor_musica.Cartucho = Lector
    fuera = {}
    try:
        for n in range(desde, hasta + 1):
            z = [None]

            def arranca(cfg, rom, numero, _a=motor_musica.arranca):
                z[0] = _a(cfg, rom, numero)
                return z[0]
            motor_musica.arranca, viejo_arranca = arranca, motor_musica.arranca
            try:
                motor_musica.ejecuta(CFG, rom, n, CFG["hz"] * 120)
            finally:
                motor_musica.arranca = viejo_arranca
            fuera[n] = z[0].leidos - z[0].instr
    finally:
        motor_musica.Cartucho = viejo
    return fuera


def rangos(conjunto):
    out = []
    for b, d in sorted(conjunto, key=lambda x: (x[0] or 0, x[1])):
        if out and out[-1][0] == b and out[-1][2] == d:
            out[-1][2] = d + 1
        else:
            out.append([b, d, d + 1])
    return out


if __name__ == "__main__":
    if sys.argv[1:2] == ["lecturas"]:
        res = lecturas(int(sys.argv[2], 0), int(sys.argv[3], 0))
        for n, s in res.items():
            print("0x%02X: %s" % (n, " ".join("p%02d:%04X-%04X" % (b, a, z) for b, a, z in rangos(s))))
        sys.exit(0)
    sys.exit(motor_musica.main(CFG, sys.argv[1:]))
