#!/usr/bin/env python3
"""Lo que se ha MEDIDO del cartucho, clavado para que no se deshaga solo.

Estas comprobaciones necesitan la ROM, y si no esta **fallan**: no se saltan.
Cada una lee el binario: ninguna compara una constante contra si misma.
"""
import hashlib
import os
import subprocess
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
TOOLS = os.path.join(RAIZ, "tools")
sys.path.insert(0, TOOLS)

ROM = os.path.join(RAIZ, "shalom.rom")
SHA = "658ad7ef812eb15b09d76bc413ddf2956a2361c7e534ffcb915cfaafbf7e2a4a"

FALTA = ("falta shalom.rom en la raiz del repo. Son los 262.144 bytes de Shalom "
         "- Knightmare III (Konami, RC-754, 1987, MSX), y no se distribuyen "
         "aqui: pon tu copia. El sha256 tiene que ser %s" % SHA)


class Cartucho(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        if not os.path.exists(ROM):
            raise AssertionError(FALTA)
        with open(ROM, "rb") as f:
            cls.rom = f.read()

    def test_es_la_misma_rom(self):
        self.assertEqual(len(self.rom), 262144)
        self.assertEqual(hashlib.sha256(self.rom).hexdigest(), SHA)

    def test_cabecera_ab(self):
        """0x4000 'AB', INIT 0x41A3 y los otros tres vectores a cero."""
        self.assertEqual(self.rom[0:2], b"AB")
        self.assertEqual(self.rom[2] | (self.rom[3] << 8), 0x41A3)
        self.assertEqual(self.rom[4:10], b"\x00" * 6)

    def test_segunda_cabecera_rc754(self):
        """0x4010: 'EF', 0x07 y 0x54, o sea RC-754."""
        self.assertEqual(self.rom[0x10:0x14], bytes([0x45, 0x46, 0x07, 0x54]))

    def test_busca_otro_cartucho_con_yz(self):
        """p01:611F compara 0x4010 de cada slot (RDSLT) con los dos bytes de
        p01:6146, 'YZ'."""
        o = 1 * 0x2000 + (0x6146 - 0x6000)
        self.assertEqual(self.rom[o:o + 2], b"YZ")
        o = 1 * 0x2000 + (0x611F - 0x6000)
        self.assertEqual(self.rom[o:o + 6], bytes([0x11, 0x46, 0x61, 0x21, 0x10, 0x40]))

    def test_ganchos_de_arranque(self):
        """INIT engancha H.STKE a 0x41B5 (p00:41AE) y este H.KEYI a 0x404C
        (p00:41E7)."""
        self.assertEqual(self.rom[0x1AE:0x1B1], bytes([0x21, 0xB5, 0x41]))
        self.assertEqual(self.rom[0x1E7:0x1EA], bytes([0x21, 0x4C, 0x40]))

    def test_reparto_de_bancos(self):
        """tools/reconocimiento.py: la regla banco -> org la cumplen todas."""
        r = subprocess.run([sys.executable, os.path.join(TOOLS, "reconocimiento.py"), ROM],
                           capture_output=True, text=True, cwd=TOOLS)
        self.assertIn("OK: la regla banco -> org", r.stdout.strip().splitlines()[-1])


if __name__ == "__main__":
    unittest.main()
