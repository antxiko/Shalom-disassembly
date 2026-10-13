"""Los personajes de las salas (tools/actores.py), cotejados ejecutando
crea_actor en tools/z80run.py (tools/coteja_actores.py)."""
import os
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))


class Actores(unittest.TestCase):
    def test_la_regla_de_cada_tipo_cuadra_con_su_rutina(self):
        import coteja_actores
        n, mal, borrados = coteja_actores.coteja()
        self.assertEqual(n, 302)
        self.assertEqual(len(borrados), 20)     # su rutina los borra con las banderas a cero
        # actor_01 (p08:A390) espera un azar >= 0x7F antes de echar a andar:
        # recien creado sigue con el fotograma 0
        self.assertEqual([(t, f) for t, _, f, _, _ in mal], [(0x02, 0), (0x05, 0)])

    def test_la_plaza_de_la_fuente(self):
        import actores as A
        tipos = [t for t, *_ in A.lista_de_la_sala(0x0D0)]
        self.assertEqual(tipos, [1, 2, 3, 4, 5, 6, 7])
        self.assertEqual(A.colores(0x04), (1, 7))
        self.assertEqual(A.fotograma(0x04), 0x1D)


if __name__ == "__main__":
    unittest.main()
