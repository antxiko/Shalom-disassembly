"""Las vinetas del marcador (tools/marcador.py)."""
import os
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))


class Marcador(unittest.TestCase):
    def test_las_17_comparten_colocacion(self):
        import pantalla as P
        r = P.Rom().trio(9)
        self.assertEqual({r.palabra(0x6713 + 2 * i) for i in range(17)}, {0x6735})
        self.assertNotEqual(r.palabra(0x6713 + 2 * 17), 0x6735)

    def test_cada_vineta_tiene_dibujo(self):
        import marcador as M
        for n in range(1, M.N + 1):
            v = M.vineta(n)
            self.assertTrue(any(v.v[0x2D80:0x2D80 + 0x240]), n)


if __name__ == "__main__":
    unittest.main()
