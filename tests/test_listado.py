#!/usr/bin/env python3
"""Lo que se afirma del listado: que explica el cartucho entero.

Necesita los trazados de work/ (los hace `make trace`, que a su vez necesita
la ROM); sin ellos falla diciendo que falta, no se salta.
"""
import os
import subprocess
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
TOOLS = os.path.join(RAIZ, "tools")
sys.path.insert(0, TOOLS)


class Listado(unittest.TestCase):

    def test_ni_un_byte_sin_explicar(self):
        """tools/presupuesto.py: cada byte es codigo trazado o una D con nombre."""
        if not os.path.exists(os.path.join(RAIZ, "work", "p00.trace.json")):
            raise AssertionError("faltan los trazados de work/: haz `make trace`")
        r = subprocess.run([sys.executable, os.path.join(TOOLS, "presupuesto.py"),
                            os.path.join(RAIZ, "work"), os.path.join(RAIZ, "src")],
                           capture_output=True, text=True, cwd=TOOLS)
        linea = next(l for l in r.stdout.splitlines() if l.strip().startswith("sin explicar"))
        self.assertEqual(int(linea.split()[2]), 0, linea)

    def test_el_makefile_y_paginas_py_dicen_lo_mismo(self):
        from paginas import ORG
        mk = open(os.path.join(RAIZ, "Makefile"), encoding="utf-8").read()
        for p, o in ORG.items():
            self.assertIn("ORG_%02d = %#06x" % (p, o), mk)

    def test_los_mensajes_se_encadenan(self):
        """Los mensajes del banco 22 (p00:4EDF: hasta 0xFF, o 0xFA y un byte)
        llenan el banco de punta a punta sin un byte suelto: es la prueba de
        que el formato esta bien leido."""
        import re
        filas = [l for l in open(os.path.join(RAIZ, "src", "p22.notes"), encoding="utf-8")
                 if l.startswith("D ")]
        tramos = sorted((int(m.group(1), 16), int(m.group(2), 16)) for m in
                        (re.match(r"D 0x(\w+) 0x(\w+) mensaje", l) for l in filas) if m)
        self.assertEqual(tramos[0][0], 0x8000)
        self.assertEqual(tramos[-1][1], 0xA000)
        for (a, b), (c, d) in zip(tramos, tramos[1:]):
            self.assertLessEqual(c, b)

    def test_los_dibujos_del_banco_9_acaban_en_el_codigo(self):
        """52 dibujos de L_44B8 seguidos desde p09:6735 acaban justo en p09:6B35."""
        from rom import leer
        a, n = 0x6735, 0
        while a < 0x6B35:
            a += 2 + 4 * leer((9, 10, 11), a) * leer((9, 10, 11), a + 1)
            n += 1
        self.assertEqual((a, n), (0x6B35, 52))


if __name__ == "__main__":
    unittest.main()
