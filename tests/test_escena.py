"""La escena inicial (tools/escena.py)."""
import os
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))


class Escena(unittest.TestCase):
    def test_el_marco_y_la_cortinilla(self):
        import escena as E
        rom, v, nombres = E.paso_5()
        self.assertEqual(rom.palabra(0x6443), 0xC000)          # fila 0, columna 24
        self.assertEqual(nombres[25 + 32 * 1], 0xE0)        # el dibujo lleva borde
        self.assertEqual(bytes(v.v[0x0880:0x0B80]), bytes(0x300))  # sin color
        E.con_opcion_1(rom, v, nombres)
        self.assertNotEqual(bytes(v.v[0x0880:0x0B80]), bytes(0x300))


if __name__ == "__main__":
    unittest.main()
