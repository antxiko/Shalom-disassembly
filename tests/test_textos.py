"""Los textos (tools/textos.py)."""
import os
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))


class Textos(unittest.TestCase):
    def test_objetos_y_opciones(self):
        import textos as T
        o = T.opciones()
        self.assertEqual(len(o), 94)
        self.assertEqual([t for _, _, t in o[1:4]], ["たんけん", "ローソク", "みず"])
        self.assertEqual(o[0x5D][2], "パスワード")

    def test_los_dakuten_se_juntan(self):
        import textos as T
        self.assertEqual(T.DAKU["か"], "が")
        self.assertEqual(T.HANDAKU["ハ"], "パ")


if __name__ == "__main__":
    unittest.main()
