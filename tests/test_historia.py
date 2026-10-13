"""La historia (tools/historia.py): ocho vinetas y sus ocho textos."""
import os
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))


class Historia(unittest.TestCase):
    def test_cada_pagina_destapa_un_bloque_distinto(self):
        import historia as H
        rom, v = H.fondo()
        destinos = [H.vineta(rom, v, p)[1] for p in range(H.PAGINAS)]
        self.assertEqual(sorted(destinos), [0x200 * k for k in range(8)])

    def test_los_textos(self):
        import historia as H
        m = H.mensajes()
        self.assertEqual([n for _, n, _ in m], [0, 1, 0x13, 0x15, 0x17, 0x18, 0x14, 0x16])
        self.assertTrue(m[0][2].startswith("主人公　あなた"))
        self.assertTrue(m[6][2].startswith("ブタ子"))


if __name__ == "__main__":
    unittest.main()
