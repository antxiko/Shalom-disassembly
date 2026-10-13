#!/usr/bin/env python3
"""Los personajes de las salas de Shalom, dibujados desde sus tablas.

LOS DE CADA SALA (p07:827A): la lista p07:8BC2[sala] (bancos 7-8 en 0x8000 y
0xA000) es [cuantos] y, por actor, 5 bytes: el tipo (16 bits; el bit 15 dice
que va en fichas), la Y, la X y la voz. Con el bit 0 de 0xEB5D, las salas 0xB0
y 0xD0 toman las listas p07:9032 y p07:904C.

COMO SE CREA (p07:82FE): sus dos colores son los nibbles de p07:83B4[tipo - 1]
(el alto para el primer sprite, el bajo para el segundo) y el byte siguiente
es su nombre: 4 letras en p08:A063 + 4 * n. Al acabar, crea_actor corre una
vez la rutina de su tipo (tabla p07:882D), que le pone el fotograma.

COMO SE PINTA (p07:865C): dos sprites de 16 x 16 en la misma (Y, X) con los
dos dibujos de p07:97E8[fotograma] (el primero encima); los tipos 0x23, 0x56,
0x57, 0x58, 0x6F y 0x72 llevan solo el primero; si el primer dibujo es 0, no
se ve. Los dibujos son los de la sala (p00:4A8C): la lista p18:6A28
[p18:67F1[sala]] de entradas de 4 bytes [banderas][primer dibujo][RLE]; con el
bit 0, [banderas][dibujo de origen][dibujo de destino][cuantos], volteados
(p00:5A36). En la sala 0x12C, ademas, el RLE con destino de p27:BBC4.

EL FOTOGRAMA (REGLA): leido en la rutina de cada tipo. "fijo": el que pone y
no cambia. "anda": los fotogramas de su paseo, base + 2 * (direccion - 1) mas
el bit 4 de su cuenta de cuadros (p07:8B11): dos dibujos que cambian cada 16
cuadros, como el de Shalom. Aqui se pintan mirando abajo (direccion 2).
tests/test_actores.py coteja la regla ejecutando crea_actor en tools/z80run.py.

Uso: actores.py hoja <png>          todos los tipos, cada uno en su sala
     actores.py sala <sala> <png>   la sala con sus personajes
     actores.py gif <sala> <gif>    la sala con sus personajes andando
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import pantalla as P  # noqa: E402

HZ = 60
UN_SPRITE = {0x23, 0x56, 0x57, 0x58, 0x6F, 0x72}       # p07:8697

# La regla de cada rutina (su direccion en p07:882D), leida en el listado.
# None: la rutina no pone el fotograma en el primer paso (ver POR_TIPO).
REGLA_RUTINA = {
    0xA38A: ("anda", 0x10),   # actor_01
    0xA434: None,   # actor_0e
    0xA438: None,   # actor_0f
    0xA43C: None,   # actor_04
    0xA440: ("anda", 0x1A),   # actor_07
    0xA4DA: ("fijo", 0x18),   # actor_06
    0xA4F0: ("anda", 0x08),   # actor_08
    0xA5AB: ("fijo", 0x02),   # actor_09
    0xA5BA: ("fijo", 0x0A),   # actor_0a
    0xA65C: ("fijo", 0x08),   # actor_0b
    0xA697: ("fijo", 0x0A),   # actor_0c
    0xA6CC: ("fijo", 0x08),   # actor_0d
    0xA703: ("fijo", 0x13),   # actor_af
    0xA712: ("anda", 0x00),   # actor_a8
    0xA71C: ("anda", 0x10),   # actor_c3
    0xA726: ("fijo", 0x02),   # actor_bc
    0xA7EE: ("fijo", 0x16),   # actor_be
    0xA7FD: ("anda", 0x08),   # actor_bf
    0xA80E: ("fijo", 0x12),   # actor_6d
    0xA837: None,   # actor_10
    0xA8C2: ("anda", 0x08),   # actor_13
    0xAB09: ("anda", 0x00),   # actor_14
    0xABEE: ("fijo", 0x02),   # actor_15
    0xAC4E: ("anda", 0x08),   # actor_16
    0xAC6A: ("anda", 0x10),   # actor_17
    0xAC86: ("anda", 0x00),   # actor_18
    0xACAB: ("anda", 0x08),   # actor_19
    0xACD2: ("anda", 0x08),   # actor_1b
    0xAD78: ("fijo", 0x12),   # actor_1c
    0xAD88: ("fijo", 0x02),   # actor_1d
    0xAD8E: ("fijo", 0x0A),   # actor_1f
    0xADB4: ("fijo", 0x12),   # actor_20
    0xAE0E: ("fijo", 0x18),   # actor_22
    0xAE20: ("fijo", 0x26),   # actor_23
    0xAE2F: ("fijo", 0x18),   # actor_24
    0xAE4C: None,   # actor_25
    0xAF09: ("fijo", 0x1A),   # actor_2b
    0xAF33: None,   # actor_2c
    0xAF40: ("fijo", 0x0A),   # actor_2d
    0xAF47: ("fijo", 0x12),   # actor_2e
    0xAF5C: ("anda", 0x00),   # actor_2f
    0xAF6E: ("fijo", 0x02),   # actor_cb
    0xB022: ("fijo", 0x18),   # actor_31
    0xB032: ("anda", 0x00),   # actor_33
    0xB04F: ("fijo", 0x11),   # actor_34
    0xB092: ("fijo", 0x1A),   # actor_35
    0xB0A1: ("fijo", 0x18),   # actor_36
    0xB0B1: ("fijo", 0x12),   # actor_37
    0xB17F: ("fijo", 0x18),   # actor_38
    0xB195: ("fijo", 0x1B),   # actor_39
    0xB1A5: ("anda", 0x00),   # actor_3a
    0xB217: ("fijo", 0x1B),   # actor_3d
    0xB236: ("fijo", 0x18),   # actor_3e
    0xB253: ("fijo", 0x10),   # actor_40
    0xB315: ("fijo", 0x10),   # actor_41
    0xB33B: ("fijo", 0x10),   # actor_42
    0xB361: ("fijo", 0x1B),   # actor_44
    0xB403: ("fijo", 0x10),   # actor_45
    0xB429: ("anda", 0x10),   # actor_47
    0xB455: ("anda", 0x08),   # actor_48
    0xB45F: ("fijo", 0x13),   # actor_4d
    0xB497: None,   # actor_4e
    0xB4AB: None,   # actor_52
    0xB6BA: ("anda", 0x10),   # actor_a9
    0xB6CB: ("fijo", 0x23),   # actor_aa
    0xB714: ("anda", 0x00),   # actor_ad
    0xB847: None,   # actor_5b
    0xB84F: ("anda", 0x08),   # actor_50
    0xB87C: ("fijo", 0x16),   # actor_5f
    0xB8FA: ("fijo", 0x18),   # actor_51
    0xB90D: ("anda", 0x08),   # actor_54
    0xB957: ("fijo", 0x11),   # actor_55
    0xB96C: ("fijo", 0x27),   # actor_56
    0xB972: ("fijo", 0x15),   # actor_57
    0xB978: ("fijo", 0x14),   # actor_58
    0xB988: ("fijo", 0x1B),   # actor_59
    0xB998: ("anda", 0x08),   # actor_60
    0xB9A2: ("anda", 0x08),   # actor_61
    0xBA03: ("anda", 0x10),   # actor_62
    0xBA28: ("anda", 0x08),   # actor_63
    0xBA6D: None,   # actor_a6
    0xBA75: ("fijo", 0x12),   # actor_65
    0xBA88: ("fijo", 0x21),   # actor_68
    0xBAAE: None,   # actor_69
    0xBABA: None,   # actor_72
    0xBAC5: ("fijo", 0x11),   # actor_6f
    0xBB30: ("fijo", 0x12),   # actor_c5
    0xBB6A: ("fijo", 0x0A),   # actor_c7
    0xBBC1: ("fijo", 0x18),   # actor_bd
    0xBBDD: ("anda", 0x10),   # actor_d5
    0xBBE7: ("fijo", 0x14),   # actor_cd
    0xBC20: None,   # actor_da
    0xBC34: ("fijo", 0x04),   # actor_dd
    0xBCF3: None,   # actor_11b
    0xBD1B: ("fijo", 0x08),   # actor_70
    0xBD2B: None,   # actor_73
    0xBD43: ("anda", 0x08),   # actor_75
    0xBD54: ("anda", 0x10),   # actor_76
    0xBD65: ("fijo", 0x12),   # actor_6b
    0xBD74: ("fijo", 0x1B),   # actor_6c
    0xBD83: ("fijo", 0x02),   # actor_77
    0xBD92: None,   # actor_82
    0xBDA6: ("fijo", 0x1B),   # actor_83
    0xBDB5: ("fijo", 0x02),   # actor_84
    0xBDC6: ("fijo", 0x1B),   # actor_89
    0xBE35: ("fijo", 0x1B),   # actor_8a
    0xBE44: ("fijo", 0x12),   # actor_92
    0xBE68: ("fijo", 0x18),   # actor_9a
    0xBE7C: ("anda", 0x08),   # actor_a2
    0xBE99: None,   # actor_a3
    0xBEA1: ("fijo", 0x18),   # actor_c9
    0xBEBD: None,   # actor_ca
    0xBECD: ("fijo", 0x18),   # actor_de
    0xBEFF: ("fijo", 0x13),   # actor_e0
    0xBF33: ("fijo", 0x02),   # actor_d0
    0xBF42: ("fijo", 0x18),   # actor_e1
    0xBF84: ("anda", 0x00),   # actor_d8
    0xBF92: ("anda", 0x08),   # actor_dc
    0xBFA0: ("anda", 0x10),   # actor_db
    0xBFAE: ("anda", 0x08),   # actor_fd
    0xBFB8: ("anda", 0x10),   # actor_fe
    0xBFC2: ("fijo", 0x14),   # actor_ff
}

# Las rutinas que eligen por tipo o pasan por otra rutina:
POR_TIPO = {
    # actor_01 (p08:A38A): tipo 2 paseo 0x10, tipo 5 paseo 0x08, si no 0x00
    0x01: ("anda", 0x00), 0x02: ("anda", 0x10), 0x03: ("anda", 0x00), 0x05: ("anda", 0x08),
    # actor_0e, actor_0f, actor_04, actor_07 (p08:A434-A442): A a (ix+8) en cada cuadro
    0x0E: ("fijo", 0x1A), 0x0F: ("fijo", 0x1C), 0x04: ("fijo", 0x1D), 0xF9: ("fijo", 0x1D),
    0x07: ("fijo", 0x1B),
    # L_A4E6: fotograma 0x18 (actor_10, actor_2c, actor_69, actor_82, actor_a3, actor_dd)
    0x10: ("fijo", 0x18), 0x11: ("fijo", 0x18), 0x2C: ("fijo", 0x18), 0x69: ("fijo", 0x18),
    0x6A: ("fijo", 0x18), 0x82: ("fijo", 0x18), 0xA3: ("fijo", 0x18), 0xDD: ("fijo", 0x18),
    # actor_19 (p08:ACC7): 0x1A paseo 0x08, si no 0x00
    0x19: ("anda", 0x00), 0x1A: ("anda", 0x08),
    # actor_1b (p08:AD1F/AD25): 0x1B fotogramas 0x08, 0x32 y 0x4F 0x00
    0x1B: ("anda", 0x08), 0x32: ("anda", 0x00), 0x4F: ("anda", 0x00),
    # actor_25 (p08:AE5C, una rutina por tipo)
    0x25: ("anda", 0x00), 0x26: ("anda", 0x10), 0x27: ("anda", 0x00), 0x28: ("anda", 0x08),
    0x29: ("anda", 0x10), 0x2A: ("anda", 0x10),
    # actor_2f (p08:AF63): 0x30 paseo 0x00, si no 0x08
    0x2F: ("anda", 0x08), 0x30: ("anda", 0x00),
    # actor_47 (p08:B430): 0x4C 0x10, 0x4B 0x08, si no 0x00
    0x47: ("anda", 0x00), 0x4A: ("anda", 0x00), 0x4B: ("anda", 0x08), 0x4C: ("anda", 0x10),
    # actor_50 (p08:B86A): el 0x50 fijo 0x25
    0x50: ("fijo", 0x25),
    # actor_5f (p08:B87C): 0x16 y luego el paseo 0x10
    0x5F: ("anda", 0x10),
    # actor_72 (p08:BAD5), actor_a6 (p08:BA81)
    0x72: ("fijo", 0x11), 0xA6: ("fijo", 0x12),
    # actor_73 (p08:BD3D): el fotograma es tipo - 0x73
    0x73: ("fijo", 0x00), 0x74: ("fijo", 0x01),
    # actor_4e y actor_52: el paso 0 de su tabla (p08:B49D, p08:B4B1) no lo cambia
    0x4E: ("fijo", 0x00), 0x52: ("fijo", 0x00),
}


def rom_78():
    return P.Rom().pon(1, 7, 8)


def lista_de_la_sala(sala, eb5d=0):
    """[(tipo, y, x, en_fichas, voz)] (p07:827A)."""
    rom = rom_78()
    if eb5d & 1 and sala in (0xB0, 0xD0):
        hl = 0x9032 if sala == 0xB0 else 0x904C
    else:
        hl = rom.palabra(0x8BC2 + 2 * sala)
    out = []
    for k in range(rom[hl]):
        e = hl + 1 + 5 * k
        hi = rom[e + 1]
        out.append((rom[e] | (hi & 0x7F) << 8, rom[e + 2], rom[e + 3], hi >> 7, rom[e + 4]))
    return out


def rutina(tipo):
    return rom_78().palabra(0x882D + 2 * (tipo - 1))


def regla(tipo):
    return POR_TIPO.get(tipo) or REGLA_RUTINA.get(rutina(tipo))


def colores(tipo):
    b = rom_78()[0x83B4 + 2 * (tipo - 1)]
    return b >> 4, b & 0x0F


def nombre(tipo):
    """Los 4 codigos del nombre (p08:A063)."""
    rom = rom_78()
    n = rom[0x83B4 + 2 * (tipo - 1) + 1]
    return list(rom.bytes(0xA063 + 4 * n, 4))


def fotograma(tipo, k=0, direccion=2):
    """El fotograma k-esimo (0 o 1, cada 16 cuadros) mirando a DIRECCION."""
    r = regla(tipo)
    if r is None:
        return None
    modo, v = r
    if modo == "fijo":
        return v
    return v + 2 * (direccion - 1) + (k & 1)


def dibujos(fot):
    """Los dos dibujos de sprite del fotograma (p07:97E8)."""
    rom = rom_78()
    de = rom.palabra(0x97E8 + 2 * fot)
    return rom[de], rom[de + 1]


def sprites_de_la_sala(v, sala):
    """p00:4A8C: los dibujos de sprite de la sala a 0x1800."""
    if sala == 0x12C:
        rom = P.Rom().pon(None, 27, 28)
        P.Vram.rle_con_destino(_con(v, rom), 0xBBC4)
    rom = P.Rom().trio(18)
    de = rom.palabra(0x6A28 + 2 * rom[0x67F1 + sala])
    vv = _con(v, rom)
    while rom[de] != 0xFF:
        if rom[de] & 1:                       # p00:4AD7: volteados
            src = P.SPR_DIBUJOS + 8 * rom[de + 1]
            dst = P.SPR_DIBUJOS + 8 * rom[de + 2]
            for s in range(rom[de + 3]):
                a, b = src + 0x20 * s, dst + 0x20 * s
                orig = bytes(v.v[a:a + 32])
                for i in range(16):
                    v.v[b + i] = P.al_reves(orig[16 + i])
                    v.v[b + 16 + i] = P.al_reves(orig[i])
        else:
            vv.rle(rom.palabra(de + 2), P.SPR_DIBUJOS + 8 * rom[de + 1])
        de += 4


def _con(v, rom):
    """La misma VRAM leyendo de otra vista de la ROM."""
    w = P.Vram(rom)
    w.v = v.v
    return w


def atributos(actores, k=0):
    """Los sprites de los actores como p07:865C: [(y, x, dibujo, color)]."""
    out = []
    for tipo, y, x, fichas, _ in actores:
        f = fotograma(tipo, k)
        if f is None or fichas:
            continue
        d1, d2 = dibujos(f)
        if not d1:
            continue
        c1, c2 = colores(tipo)
        out.append((y, x, d1, c1))
        if tipo not in UN_SPRITE:
            out.append((y, x, d2, c2))
    return out


def pon_sprites(v, sprites):
    a = bytearray()
    for y, x, d, c in sprites[:32]:
        a += bytes([(y - 1) & 0xFF, x, d, c])      # p00:5EEC: la Y, una menos
    a += b"\xD0"
    v.copia_bytes(bytes(a), P.SPR_ATRIBUTOS)


def sala_con_actores(sala, k=0):
    import salas as S
    v, _ = S.sala_vram(sala)
    sprites_de_la_sala(v, sala)
    pon_sprites(v, atributos(lista_de_la_sala(sala), k))
    return P.imagen(v).crop((0, 0, 8 * S.ANCHO, 8 * S.ALTO))


def gif(sala, ruta, escala=2):
    from PIL import Image
    cuadros = [sala_con_actores(sala, k) for k in range(2)]
    cuadros = [c.resize((c.width * escala, c.height * escala), Image.NEAREST) for c in cuadros]
    ms = round(1000 * 16 / HZ)
    cuadros[0].save(ruta, save_all=True, append_images=cuadros[1:], duration=ms, loop=0)
    return ms


def salas_de_cada_tipo():
    """{tipo: [(sala, y, x)]} de todas las listas."""
    out = {}
    for s in range(0x237):
        for tipo, y, x, fichas, _ in lista_de_la_sala(s):
            if not fichas:
                out.setdefault(tipo, []).append((s, y, x))
    return out


def letras(codigos):
    """Dos filas de codigos como las escribe p00:4F1B: los acentos (3, 4)
    van en la fila de arriba, sobre la letra de antes."""
    arriba, abajo = [], []
    for c in codigos:
        if c in (3, 4) and abajo:
            arriba[-1] = c
        else:
            abajo.append(c)
            arriba.append(0)
    return arriba, abajo


def texto_png(codigos, color=(255, 255, 255)):
    """Los codigos con la fuente del juego (p04:6F39, 8 x 8)."""
    from PIL import Image
    rom = P.Rom().trio(4)
    arriba, abajo = letras(codigos)
    im = Image.new("RGB", (8 * len(abajo), 16))
    px = im.load()
    for fila, cods in enumerate((arriba, abajo)):
        for i, c in enumerate(cods):
            for f in range(8):
                b = rom[0x6F39 + 8 * c + f]
                for x in range(8):
                    if b & (0x80 >> x):
                        px[8 * i + x, 8 * fila + f] = color
    return im


def codigos_de(txt):
    """'0A5' con las cifras y letras de la fuente (0x10-0x19, 0x21-0x3A)."""
    out = []
    for ch in txt:
        out.append(0x10 + int(ch) if ch.isdigit() else 0x21 + ord(ch.upper()) - ord("A"))
    return out


def hoja(columnas=16, escala=2):
    """Cada tipo en la primera sala donde esta, en su sitio y sobre su trozo
    de sala (32 x 32), con su nombre y su numero."""
    from PIL import Image
    import salas as S
    tipos = salas_de_cada_tipo()
    celdas = []
    fondos = {}
    for tipo in sorted(tipos):
        if not atributos([(tipo, 0, 0, 0, 0)]) or colores(tipo) == (0, 0):
            continue                      # no se ve: sin dibujo o transparente
        sala, y, x = tipos[tipo][0]
        if sala not in fondos:
            v, _ = S.sala_vram(sala)
            sprites_de_la_sala(v, sala)
            fondos[sala] = v
        v = fondos[sala]
        pon_sprites(v, atributos([(tipo, y, x, 0, 0)]))
        pantalla = Image.new("RGB", (256 + 32, 192 + 32), (24, 24, 24))
        pantalla.paste(P.imagen(v).crop((0, 0, 8 * S.ANCHO, 8 * S.ALTO)), (16, 16))
        cel = pantalla.crop((x + 8, y + 8, x + 40, y + 40))
        celdas.append((cel, texto_png(nombre(tipo)),
                       texto_png(codigos_de("%03X" % tipo), (160, 160, 160))))
    ancho, alto = 40 * escala, 62 * escala
    filas = (len(celdas) + columnas - 1) // columnas
    im = Image.new("RGB", (columnas * ancho, filas * alto), (24, 24, 24))
    for i, (cel, nom, num) in enumerate(celdas):
        x0, y0 = (i % columnas) * ancho + 4 * escala, (i // columnas) * alto
        im.paste(num.crop((0, 8, num.width, 16)), (x0, y0 + 2 * escala))
        im.paste(cel.resize((32 * escala, 32 * escala), Image.NEAREST), (x0, y0 + 8 * escala))
        im.paste(nom, (x0, y0 + 41 * escala))
    return im, len(celdas)


def main(argv):
    if len(argv) == 3 and argv[1] == "hoja":
        im, n = hoja()
        im.save(argv[2])
        print(argv[2], n, "tipos")
        return 0
    if len(argv) == 4 and argv[1] == "sala":
        from PIL import Image
        im = sala_con_actores(int(argv[2], 0))
        im.resize((im.width * 2, im.height * 2), Image.NEAREST).save(argv[3])
        print(argv[3])
        return 0
    if len(argv) == 4 and argv[1] == "gif":
        print(argv[3], gif(int(argv[2], 0), argv[3]), "ms por cuadro")
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
