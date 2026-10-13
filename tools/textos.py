#!/usr/bin/env python3
"""Los textos de Shalom sacados de la ROM, con la tabla de su fuente.

LA FUENTE (p04:6F39, 0x7B0 bytes = 246 caracteres de 8 x 8, que p04:64AC pone
en el tercio de abajo, donde va la ventana del texto). La tabla de abajo es la
lectura de cada dibujo: 0x10-0x19 cifras, 0x21-0x3A letras, 0x40-0x6D
hiragana, 0x70-0x9D katakana, 0x9E-0xAF las pequenas y 0xB0-0xF5 kanji. Los
codigos 3 y 4 son los acentos (dakuten y handakuten): p00:4F1B los escribe en
la fila de arriba, sobre la letra de antes, y aqui se juntan con ella.

LOS CODIGOS DEL TEXTO (p00:4EDF): 0xFF acaba, 0xFE salta de linea, 0xFD
espera una tecla, 0xFA espera y acaba, 0xFC/0xFB/0xF9/0xF8 escriben un nombre
(0xEB00, 0xEB12, 0xEB09 y el de quien habla, 0xEB1B), 0xF7 hace que el nombre
que sigue vaya dentro del texto y 0xF6 escribe cuatro caracteres de golpe.

DONDE ESTAN (p00:4E76): las tablas fijas 1-4 (0xE889) en p21:6928, p21:6DAC,
p21:7080 y p21:6DA6; si no, la de la sala: el nibble p21:639E[sala] dice los
bancos (0: 21-22-23, 1: 24-25-26, 2: 27-28 con el 21 en 0x6000) y p21:64BA
[sala] la tabla de mensajes, una palabra por mensaje. Cuantos mensajes tiene
una tabla no lo dice el cartucho: aqui se cuenta hasta el primer mensaje
(los mensajes van detras de su tabla).

Uso: textos.py md <md>       todos los textos en Markdown (y los de p04:7A15)
     textos.py tabla         la tabla de la fuente
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import pantalla as P  # noqa: E402

TABLA = {}
TABLA.update({0x00: "　", 0x01: "！", 0x02: "？", 0x05: "、", 0x06: "。", 0x07: "，",
              0x08: "・", 0x09: "’", 0x0A: "…", 0x0B: "┗", 0x0C: "┛", 0x0D: "┏",
              0x0E: "┏", 0x0F: "┓", 0x1A: "©", 0x1B: "│", 0x1C: "：", 0x1D: "～",
              0x1E: "・", 0x1F: "▼", 0x20: "ー", 0x3B: "「", 0x3C: "」", 0x3D: "“",
              0x3E: "”", 0x3F: "▶", 0x6E: "『", 0x6F: "』"})
for i in range(10):
    TABLA[0x10 + i] = chr(ord("０") + i)
for i in range(26):
    TABLA[0x21 + i] = chr(ord("Ａ") + i)
for i, c in enumerate("あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをん"):
    TABLA[0x40 + i] = c
for i, c in enumerate("アイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲン"):
    TABLA[0x70 + i] = c
for i, c in enumerate("ぁぃぅぇぉゃゅょっァィゥェォャュョッ"):
    TABLA[0x9E + i] = c
# Los kanji. Cuatro dibujos de 8 x 8 no se leian solos y los decide el
# contexto: 0xB4 開 (とびらを開けて), 0xBB 顔 (私の顔に), 0xBE 過 (過去), 0xCF 彼
# (彼女) y 0xDD 間 (人間, ひろ間).
for i, c in enumerate("使取体今開目前気見口人顔悪町過去"
                      "国魔世界呪王私箱言何話耳移動調彼"
                      "女名入下大城子主公少々思行間中平"
                      "和現娘姫持永遠生命旅時昔死知愛方"
                      "心村神代日天"):
    TABLA[0xB0 + i] = c
DUDOSOS = set()

DAKU = {"か": "が", "き": "ぎ", "く": "ぐ", "け": "げ", "こ": "ご", "さ": "ざ", "し": "じ",
        "す": "ず", "せ": "ぜ", "そ": "ぞ", "た": "だ", "ち": "ぢ", "つ": "づ", "て": "で",
        "と": "ど", "は": "ば", "ひ": "び", "ふ": "ぶ", "へ": "べ", "ほ": "ぼ", "う": "ゔ"}
DAKU.update({chr(ord(k) + 0x60): chr(ord(v) + 0x60) for k, v in list(DAKU.items())})
HANDAKU = {"は": "ぱ", "ひ": "ぴ", "ふ": "ぷ", "へ": "ぺ", "ほ": "ぽ"}
HANDAKU.update({chr(ord(k) + 0x60): chr(ord(v) + 0x60) for k, v in list(HANDAKU.items())})

NOMBRES = {0xFC: "〔nombre 1〕", 0xFB: "ブタ子", 0xF9: "〔nombre 2〕", 0xF8: "〔quien habla〕"}


def letra(b):
    return TABLA.get(b, "〈%02X〉" % b)


def decodifica(rom, de, maximo=3000):
    """Un mensaje desde DE hasta 0xFF/0xFA. Devuelve (texto, fin)."""
    out = []
    for _ in range(maximo):
        if de >= 0xC000:
            break
        b = rom[de]
        de += 1
        if b == 0xFF:
            return "".join(out), de
        if b == 0xFA:
            out.append("〔tecla〕")
            return "".join(out), de
        if b == 0xFE:
            out.append("\n")
        elif b == 0xFD:
            out.append("〔tecla〕\n")
        elif b in NOMBRES:
            out.append(NOMBRES[b])
        elif b in (0xF7, 0xF6):
            pass
        elif b in (3, 4) and out:
            prev = out[-1]
            tabla = DAKU if b == 3 else HANDAKU
            out[-1] = tabla.get(prev, prev + ("゛" if b == 3 else "゜"))
        else:
            out.append(letra(b))
    return "".join(out) + "〔...〕", de


def bancos_de_grupo(rom, g):
    if g == 0:
        return rom.trio(21)
    if g == 1:
        return rom.trio(24)
    return rom.pon(21, 27, 28)


def tabla_de_mensajes(rom, t):
    """Las palabras de la tabla T hasta el primer mensaje."""
    primero = rom.palabra(t)
    n = max(1, (primero - t) // 2) if primero > t else 1
    out = []
    for i in range(min(n, 0x80)):
        w = rom.palabra(t + 2 * i)
        if not 0x6000 <= w < 0xC000:
            break
        out.append(w)
    return out


def tablas():
    """[(titulo, grupo, T, [salas])] de todas las tablas de mensajes."""
    rom = P.Rom().trio(21)
    out = [("tabla fija 1 (p21:6928)", 0, 0x6928, []), ("tabla fija 2 (p21:6DAC)", 0, 0x6DAC, []),
           ("tabla fija 3 (p21:7080)", 0, 0x7080, []), ("tabla fija 4 (p21:6DA6)", 0, 0x6DA6, [])]
    por = {}
    for s in range(0x237):
        rom.trio(21)
        b = rom[0x639E + s // 2]
        g = (b & 0x0F) if s & 1 else (b >> 4)
        t = rom.palabra(0x64BA + 2 * s)
        por.setdefault((g, t), []).append(s)
    for (g, t), salas in sorted(por.items(), key=lambda kv: kv[1][0]):
        fija = next((o for o in out if (o[1], o[2]) == (g, t)), None)
        if fija:
            fija[3].extend(salas)
            continue
        out.append(("", g, t, salas))
    return out


def opciones():
    """La tabla p04:7A15 (bancos 4-5-6): los nombres de los 24 objetos (1-24,
    p00:56B0 y p00:5728) y las opciones de los menus (p00:56DB). Acaba donde
    empieza el primer texto."""
    rom = P.Rom().trio(4)
    primero = min(rom.palabra(0x7A15 + 2 * i) for i in range(4))
    out = []
    i = 0
    while 0x7A15 + 2 * i < primero:
        w = rom.palabra(0x7A15 + 2 * i)
        if not 0x6000 <= w < 0xC000:
            break
        out.append((i, w, decodifica(rom, w, 40)[0]))
        i += 1
    return out


def md():
    rom = P.Rom()
    lineas = ["# Los textos de Shalom (sacados de la ROM)", "",
              "Generado por `tools/textos.py`. Cada mensaje: su numero en la tabla, "
              "su direccion y el texto. 〔tecla〕 = espera una tecla.", "",
              "## Objetos y opciones de los menus (p04:7A15)", "",
              "Los numeros 1-24 son los objetos que se llevan (0xE9D0); los demas, "
              "las opciones de los menus.", ""]
    lineas += ["- **0x%02X** (p04:%04X): %s" % o for o in opciones()]
    lineas.append("")
    for titulo, g, t, salas in tablas():
        bancos_de_grupo(rom, g)
        nombre = titulo or "salas " + ", ".join("0x%03X" % s for s in salas[:12]) + \
            (" y %d mas" % (len(salas) - 12) if len(salas) > 12 else "")
        lineas += ["## %s" % nombre, "", "Tabla p%02d:%04X (bancos del grupo %d)." %
                   (rom.s[t & 0xE000] if t >= 0x6000 else 0, t, g), ""]
        if titulo and salas:
            lineas += ["Tambien la usan las salas " + ", ".join("0x%03X" % s for s in salas[:20]) + ".", ""]
        for i, de in enumerate(tabla_de_mensajes(rom, t)):
            if de < 0x6000:
                continue
            txt, _ = decodifica(rom, de)
            lineas.append("- **0x%02X** (p%02d:%04X): %s" % (i, rom.s[de & 0xE000], de,
                                                        txt.replace("\n", " / ")))
        lineas.append("")
    return "\n".join(lineas) + "\n"


def main(argv):
    if len(argv) == 3 and argv[1] == "md":
        open(argv[2], "w", encoding="utf-8", newline="\n").write(md())
        print(argv[2])
        return 0
    if len(argv) == 2 and argv[1] == "tabla":
        for k in sorted(TABLA):
            print("%02X %s%s" % (k, TABLA[k], " ?" if k in DUDOSOS else ""))
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
