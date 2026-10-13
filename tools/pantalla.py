#!/usr/bin/env python3
"""La VRAM de SCREEN 2 llenada con los formatos del cartucho, y su dibujo.

Los registros del VDP de p01:70B0 dejan la pantalla asi: dibujos en 0x2000,
colores en 0x0000 (tres tercios de 0x800 cada uno), nombres en 0x3800,
dibujos de sprite en 0x1800 (16 x 16) y atributos de sprite en 0x3B00.

Las rutinas del banco 0 que se reproducen aqui (los nombres son los del
listado):
  rle          p00:5A03  [n < 0x80][byte] repite n veces, [0x80 + n] copia n
                         bytes, 0x80 trae otra direccion de VRAM, 0 acaba;
                         con el bit 0 de C cada byte va con los bits al reves
  rle_a_dos_tercios / rle_a_tres_tercios
               p00:5972  el mismo RLE en dos o tres tercios (+0x800)
  bytes_a_vram p00:59C2  [direccion] y bytes; 0xFE otra direccion, 0xFF acaba
  copia        p00:5941  LDIRVM
  rle_a_ram    p04:65D4  el mismo RLE escrito en la RAM

Uso como modulo: Rom, Vram, imagen(vram).
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
TAM = 0x2000

# Los 16 colores del TMS9918 (los de openMSX por defecto)
TMS = [(0, 0, 0), (0, 0, 0), (33, 200, 66), (94, 220, 120), (84, 85, 237), (125, 118, 252),
       (212, 82, 77), (66, 235, 245), (252, 85, 84), (255, 121, 120), (212, 193, 84),
       (230, 206, 128), (33, 176, 59), (201, 91, 186), (204, 204, 204), (255, 255, 255)]

NOMBRES, DIBUJOS, COLORES = 0x3800, 0x2000, 0x0000
SPR_DIBUJOS, SPR_ATRIBUTOS = 0x1800, 0x3B00


def ruta_rom():
    return os.path.join(RAIZ, "shalom.rom")


class Rom:
    """La ROM vista por el Z80 con los bancos que se le pongan."""

    def __init__(self, ruta=None):
        self.d = open(ruta or ruta_rom(), "rb").read()
        self.s = {0x6000: 1, 0x8000: 2, 0xA000: 3}

    def pon(self, a=None, b=None, c=None):
        for v, n in zip((0x6000, 0x8000, 0xA000), (a, b, c)):
            if n is not None:
                self.s[v] = n
        return self

    def trio(self, n):
        """Los repartos de p00:40F9-4149: n, n+1, n+2."""
        return self.pon(n, n + 1, n + 2)

    def __getitem__(self, a):
        a &= 0xFFFF
        if a < 0x6000:
            return self.d[a - 0x4000]
        return self.d[self.s[a & 0xE000] * TAM + (a & 0x1FFF)]

    def palabra(self, a):
        return self[a] | self[a + 1] << 8

    def bytes(self, a, n):
        return bytes(self[a + i] for i in range(n))


def al_reves(b):
    """p00:5A63: los 8 bits al reves."""
    r = 0
    for i in range(8):
        if b & (1 << i):
            r |= 0x80 >> i
    return r


class Vram:
    def __init__(self, rom):
        self.v = bytearray(0x4000)
        self.r = rom

    def _pon(self, hl, b):
        self.v[hl & 0x3FFF] = b

    def rle(self, de, hl, volteado=False):
        """p00:5A03 (p00:5A2A, y p00:5A32 volteado). Devuelve DE tras el 0."""
        r = self.r
        while True:
            n = r[de]
            de += 1
            if n == 0:
                return de
            if n < 0x80:
                b = r[de]
                de += 1
                b = al_reves(b) if volteado else b
                for _ in range(n):
                    self._pon(hl, b)
                    hl += 1
            elif n == 0x80:            # p00:5A11: otra direccion
                hl = r.palabra(de)
                de += 2
            else:
                for _ in range(n & 0x7F):
                    b = r[de]
                    de += 1
                    self._pon(hl, al_reves(b) if volteado else b)
                    hl += 1

    def rle_con_destino(self, de, volteado=False):
        """p00:59FB: la direccion de VRAM va delante."""
        return self.rle(de + 2, self.r.palabra(de), volteado)

    def rle_tercios(self, de, hl, n, volteado=False):
        """p00:5972 (n = 2) y p00:5976 (n = 3): el RLE en n tercios."""
        for k in range(n):
            self.rle(de, hl + 0x800 * k, volteado)

    def llena(self, hl, n, valor):
        """FILVRM."""
        for i in range(n):
            self._pon(hl + i, valor)

    def llena_tercios(self, hl, n, valor, tercios=3):
        """p00:5961 (tres) y p00:595D (dos)."""
        for k in range(tercios):
            self.llena(hl + 0x800 * k, n, valor)

    def copia(self, de, hl, n):
        """p00:5941: LDIRVM de DE (ROM) a la VRAM HL."""
        for i in range(n):
            self._pon(hl + i, self.r[de + i])

    def copia_bytes(self, datos, hl):
        for i, b in enumerate(datos):
            self._pon(hl + i, b)

    def bytes_a_vram(self, de, mascara=0xFF):
        """p00:59C2: [direccion] y bytes; 0xFE otra direccion, 0xFF acaba."""
        r = self.r
        hl = r.palabra(de)
        de += 2
        while True:
            b = r[de]
            de += 1
            if b == 0xFF:
                return de
            if b == 0xFE:
                hl = r.palabra(de)
                de += 2
                continue
            self._pon(hl, b & mascara)
            hl += 1


def rle_a_ram(rom, de):
    """p04:65D4: el RLE de DE como bytes (sin direccion delante)."""
    out = bytearray()
    while True:
        n = rom[de]
        de += 1
        if n == 0:
            return bytes(out)
        if n < 0x80:
            out += bytes([rom[de]]) * n
            de += 1
        elif n == 0x80:
            raise ValueError("rle_a_ram con otra direccion en 0x%04X" % de)
        else:
            out += rom.bytes(de, n & 0x7F)
            de += n & 0x7F


def imagen(v, sprites=True, fondo=(0, 0, 0)):
    """Los 256 x 192 puntos de la pantalla: nombres, dibujos, colores y los 32
    sprites de 16 x 16 (el de numero mas bajo encima; Y = 0xD0 corta)."""
    from PIL import Image
    im = Image.new("RGB", (256, 192), fondo)
    px = im.load()
    for fila in range(24):
        tercio = fila // 8
        for col in range(32):
            c = v.v[NOMBRES + fila * 32 + col]
            base = 0x800 * tercio + 8 * c
            for f in range(8):
                p = v.v[DIBUJOS + base + f]
                k = v.v[COLORES + base + f]
                for b in range(8):
                    ci = (k >> 4) if p & (0x80 >> b) else (k & 0x0F)
                    if ci:
                        px[col * 8 + b, fila * 8 + f] = TMS[ci]
    if sprites:
        lista = []
        for n in range(32):
            y, x, pat, col = v.v[SPR_ATRIBUTOS + 4 * n: SPR_ATRIBUTOS + 4 * n + 4]
            if y == 0xD0:
                break
            lista.append((n, y, x, pat, col))
        for n, y, x, pat, col in reversed(lista):     # el 0 encima de todos
            ci = col & 0x0F
            if not ci:
                continue
            if col & 0x80:
                x -= 32
            y = (y + 1) & 0xFF
            if y > 0xD0:
                y -= 256
            base = SPR_DIBUJOS + 8 * (pat & 0xFC)
            for f in range(16):
                for mitad in range(2):
                    b8 = v.v[base + f + 16 * mitad]
                    for b in range(8):
                        if b8 & (0x80 >> b):
                            xx, yy = x + 8 * mitad + b, y + f
                            if 0 <= xx < 256 and 0 <= yy < 192:
                                px[xx, yy] = TMS[ci]
    return im


if __name__ == "__main__":
    sys.exit("modulo: lo usan titulo.py y los demas dibujos")
