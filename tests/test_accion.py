"""Las escenas de accion (tools/accion.py)."""
import os
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))


class Accion(unittest.TestCase):
    def test_los_jefes_ponen_fichas(self):
        import accion as A
        for e in (1, 3, 5, 6, 7, 8, 9):
            v = A.pantalla(e)
            self.assertGreater(sum(1 for b in v.v[0x3800:0x39E0] if b), 50, e)

    def test_la_escena_1_baja_hasta_la_fila_0(self):
        import accion as A
        import pantalla as P
        buf = bytearray(0x300)
        A.jefe_1(P.Rom().trio(9), buf)
        self.assertEqual(bytes(buf[0x1A0:0x1E0]), P.Rom().trio(9).bytes(0x8EEA, 0x40))


if __name__ == "__main__":
    unittest.main()
