#!/usr/bin/env python3
"""La musica del cartucho, ejecutando su motor de sonido (ver motor_musica.py).

El motor esta en el banco 29 (0x6000) y sus datos en el 29, el 30 y el 31.
La interrupcion (p00:404C) pone 29-30-31 y llama al cuadro de sonido,
p29:6449, en cada cuadro; el juego pide un sonido con p00:415B (A = numero),
que pone 29-30-31 y llama a p29:6000. Cinco canales de 0x2C bytes desde
0xE210; la copia del mezclador del PSG esta en 0xE2FE, que el arranque deja
en 0xBF (p01:7083). MegaROM Konami4 de 256 KB, sin SCC.

Uso:  musica.py registros 0x3B [cuadros] | mp3 0x3B f.mp3 | todas docs/audio
      musica.py barrido 0x01 0x61 | emu
      musica.py lecturas 0x01 0x61   los bytes de 0x6000-0xBFFF que lee el
                                     motor para cada numero (sin contar las
                                     instrucciones), en rangos
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import motor_musica  # noqa: E402

N_SONIDOS = 0x61     # p29:612F + 2 x numero; la tabla acaba en p29:61F3


def P(numero, es, en, quien_es, quien_en):
    """Como motor_musica.P, con quien la pide en los dos idiomas."""
    return (numero, "musica_%02X.mp3" % numero, "musica", es, en, quien_es, quien_en)


SALA_ES = "`musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: "
SALA_EN = "`musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: "
NADIE_ES = "ninguna rutina del listado la pide, ni está en p00:47B6 ni en p09:607C"
NADIE_EN = "no routine in the listing asks for it, and it is not in p00:47B6 or p09:607C"
CLASE9_ES = "la clase 9 de los objetos (`objeto_09`, p11:A47A), paso %d"
CLASE9_EN = "object class 9 (`objeto_09`, p11:A47A), step %d"

# Las musicas: las que tocan los canales 1-3 (los 4 y 5 son de los efectos).
# Iguales a otra, y fuera de la lista: 0x32 = 0x30, 0x56 = 0x4B, 0x5C = 0x5B
# y 0x5D = 0x31 (las mismas escrituras al PSG, tools/unicas.py).
PIEZAS = [
    P(0x50, "El título", "The title",
      "`titulo_cuadro` (p04:6286)", "`titulo_cuadro` (p04:6286)"),
    P(0x3B, "La pantalla de nombres y diez salas", "The name screen and ten rooms",
      "el paso 0 del estado 4 (p01:65F2) y " + SALA_ES + "las 10 salas del grupo 5",
      "step 0 of state 4 (p01:65F2) and " + SALA_EN + "the 10 rooms of group 5"),
    P(0x2B, "La escena inicial y el final del juego", "The opening scene and the game's ending",
      "`escena_inicial_46` (p04:6D91) y `final_paso_03` (p09:6CEC)",
      "`escena_inicial_46` (p04:6D91) and `final_paso_03` (p09:6CEC)"),
    P(0x26, "Otra pieza de la escena inicial y del final", "Another piece of the opening and the ending",
      "`escena_inicial_24` (p04:6B09) y `final_paso_00` (p09:6CAC)",
      "`escena_inicial_24` (p04:6B09) and `final_paso_00` (p09:6CAC)"),
    P(0x4A, "La escena inicial, paso 36", "The opening scene, step 36",
      "`escena_inicial_36` (p04:6C40)", "`escena_inicial_36` (p04:6C40)"),
    P(0x4B, "La historia y cuatro salas", "The story and four rooms",
      "`historia_0` (p04:6E47) y " + SALA_ES + "las salas 0x03E y 0x232-0x234",
      "`historia_0` (p04:6E47) and " + SALA_EN + "rooms 0x03E and 0x232-0x234"),
    P(0x36, "El exterior", "The outside world",
      SALA_ES + "las 471 salas del grupo 0, casi todo el exterior; y `final_paso_28` (p09:6F51)",
      SALA_EN + "the 471 rooms of group 0, most of the outside world; and `final_paso_28` (p09:6F51)"),
    P(0x34, "El exterior con la bandera 0x20", "The outside world with flag 0x20",
      SALA_ES + "las salas de los grupos 0 y 1 con la bandera de la historia 0x20, bit 0 (p00:4632)",
      SALA_EN + "the rooms of groups 0 and 1 with story flag 0x20, bit 0 (p00:4632)"),
    P(0x42, "El exterior con la bandera 0x20, tras la 0x2B", "The outside world with flag 0x20, after 0x2B",
      SALA_ES + "con la bandera 0x20, bit 0, si sonaba la 0x2B, o en la sala 0x12D viniendo de la 0x12C",
      SALA_EN + "with flag 0x20, bit 0, if 0x2B was playing, or in room 0x12D coming from 0x12C"),
    P(0x2D, "Ocho salas del exterior", "Eight outdoor rooms",
      SALA_ES + "el grupo 1: salas 0x062, 0x063, 0x082, 0x083, 0x0AF, 0x0B0, 0x0CF y 0x0D0",
      SALA_EN + "group 1: rooms 0x062, 0x063, 0x082, 0x083, 0x0AF, 0x0B0, 0x0CF and 0x0D0"),
    P(0x59, "Treinta salas", "Thirty rooms",
      SALA_ES + "las 30 salas del grupo 0x0B", SALA_EN + "the 30 rooms of group 0x0B"),
    P(0x5F, "Nueve salas", "Nine rooms",
      SALA_ES + "el grupo 0x0D: salas 0x138, 0x139, 0x158, 0x159, 0x178, 0x179, 0x1A1, 0x226 y 0x227",
      SALA_EN + "group 0x0D: rooms 0x138, 0x139, 0x158, 0x159, 0x178, 0x179, 0x1A1, 0x226 and 0x227"),
    P(0x2E, "La sala 0x118", "Room 0x118",
      SALA_ES + "la sala 0x118, sin la bandera 0x24, bit 7", SALA_EN + "room 0x118, without flag 0x24, bit 7"),
    P(0x31, "Las mazmorras", "The dungeons",
      SALA_ES + "las 26 salas del grupo 4 (0x202-0x231); y como 0x5D, en una escena de acción (p01:7CBA)",
      SALA_EN + "the 26 rooms of group 4 (0x202-0x231); and, as 0x5D, in an action scene (p01:7CBA)"),
    P(0x30, "La sala 0x208", "Room 0x208",
      SALA_ES + "la sala 0x208; y como 0x32, el paso 0 de los eventos 0x15 y 0x18 (p02:98F8, p02:99DE)",
      SALA_EN + "room 0x208; and, as 0x32, step 0 of events 0x15 and 0x18 (p02:98F8, p02:99DE)"),
    P(0x33, "Las salas 0x20C y 0x20D", "Rooms 0x20C and 0x20D",
      SALA_ES + "las salas 0x20C y 0x20D, y siempre que 0xE3D9 vale 1 (p08:B814)",
      SALA_EN + "rooms 0x20C and 0x20D, and whenever 0xE3D9 is 1 (p08:B814)"),
    P(0x35, "La sala 0x210", "Room 0x210", SALA_ES + "la sala 0x210", SALA_EN + "room 0x210"),
    P(0x3F, "Las salas 0x228, 0x229 y 0x231", "Rooms 0x228, 0x229 and 0x231",
      SALA_ES + "las salas 0x228 y 0x229, y la 0x231 sin la bandera 0x1D, bit 1",
      SALA_EN + "rooms 0x228 and 0x229, and 0x231 without flag 0x1D, bit 1"),
    P(0x60, "Las salas 0x22C y 0x22D", "Rooms 0x22C and 0x22D",
      SALA_ES + "las salas 0x22C y 0x22D", SALA_EN + "rooms 0x22C and 0x22D"),
    P(0x39, "La escena de acción 1", "Action scene 1",
      "`sonido_de_la_escena` (p09:606E), tabla p09:607C", "`sonido_de_la_escena` (p09:606E), table p09:607C"),
    P(0x49, "Las escenas de acción 2, 3, 4, 6 y 7", "Action scenes 2, 3, 4, 6 and 7",
      "`sonido_de_la_escena` (p09:606E), tabla p09:607C", "`sonido_de_la_escena` (p09:606E), table p09:607C"),
    P(0x4C, "Las escenas de acción 5 y 8", "Action scenes 5 and 8",
      "`sonido_de_la_escena` (p09:606E), tabla p09:607C", "`sonido_de_la_escena` (p09:606E), table p09:607C"),
    P(0x57, "La escena de acción 9", "Action scene 9",
      "`sonido_de_la_escena` (p09:606E), tabla p09:607C", "`sonido_de_la_escena` (p09:606E), table p09:607C"),
    P(0x5A, "La clase 9 de los objetos, paso 6", "Object class 9, step 6", CLASE9_ES % 6, CLASE9_EN % 6),
    P(0x55, "La clase 9 de los objetos, paso 17", "Object class 9, step 17", CLASE9_ES % 17, CLASE9_EN % 17),
    P(0x4E, "La clase 9 de los objetos, paso 20", "Object class 9, step 20", CLASE9_ES % 20, CLASE9_EN % 20),
    P(0x3E, "La clase 9 de los objetos, paso 21", "Object class 9, step 21", CLASE9_ES % 21, CLASE9_EN % 21),
    P(0x51, "La clase 9 de los objetos, paso 23", "Object class 9, step 23", CLASE9_ES % 23, CLASE9_EN % 23),
    P(0x53, "Un objeto sin vida", "An object out of life",
      "un proyectil deja sin vida a un objeto de las clases 2, 3, 4, 6 o 7 (p11:A867); y `evento_27` (p02:9C46)",
      "a projectile leaves an object of class 2, 3, 4, 6 or 7 without life (p11:A867); and `evento_27` (p02:9C46)"),
    P(0x2F, "El paso 0 de cuatro eventos", "Step 0 of four events",
      "los eventos 0x01, 0x06, 0x0C y 0x17 (p02:919A, p02:9332, p02:9574, p02:9987)",
      "events 0x01, 0x06, 0x0C and 0x17 (p02:919A, p02:9332, p02:9574, p02:9987)"),
    P(0x27, "El evento 0x19", "Event 0x19", "`evento_19` (p02:9A14)", "`evento_19` (p02:9A14)"),
    P(0x37, "El actor 0xA5", "Actor 0xA5",
      "`actor_a5` (p08:A35C), cuando el personaje queda a menos de 0x11 puntos en vertical",
      "`actor_a5` (p08:A35C), when the character is less than 0x11 pixels away vertically"),
    P(0x07, "La entrada por arriba", "Entering from the top",
      "`personaje_modo_2` (p01:72B9) y `actor_a5` (p08:A328)",
      "`personaje_modo_2` (p01:72B9) and `actor_a5` (p08:A328)"),
    P(0x08, "El personaje baja", "The character goes down",
      "`personaje_baja` (p01:72D8), el modo 3 del personaje", "`personaje_baja` (p01:72D8), character mode 3"),
    P(0x28, "El desplazamiento de la pantalla", "The screen scroll",
      "`sonido_28_y_21_22_23` (p00:4040), desde p21:606C y p21:60B1",
      "`sonido_28_y_21_22_23` (p00:4040), from p21:606C and p21:60B1"),
    P(0x3A, "Los finales del estado 6", "The endings of state 6",
      "`final_1` y `final_2`, paso 0 (p06:AF69, p06:AFAA)", "`final_1` and `final_2`, step 0 (p06:AF69, p06:AFAA)"),
    P(0x58, "El final del juego, paso 31", "The game's ending, step 31",
      "`final_paso_31` (p09:7013)", "`final_paso_31` (p09:7013)"),
    P(0x2C, "Sin petición: 0x2C", "Not asked for: 0x2C", NADIE_ES, NADIE_EN),
    P(0x38, "Sin petición: 0x38", "Not asked for: 0x38", NADIE_ES, NADIE_EN),
    P(0x3C, "Sin petición: 0x3C", "Not asked for: 0x3C", NADIE_ES, NADIE_EN),
    P(0x3D, "Sin petición: 0x3D", "Not asked for: 0x3D", NADIE_ES, NADIE_EN),
    P(0x5B, "Sin petición: 0x5B (y 0x5C)", "Not asked for: 0x5B (and 0x5C)", NADIE_ES, NADIE_EN),
]

PAGINA = motor_musica.pagina_basica(
    "`motor_cuadro`, p29:6449, que llama la interrupción, y `motor_pide`, "
    "p29:6000, al que el juego llega por `pide_sonido` (p00:415B) con los "
    "bancos 29-30-31",
    "`motor_cuadro`, p29:6449, called by the interrupt, and `motor_pide`, "
    "p29:6000, which the game reaches through `pide_sonido` (p00:415B) with "
    "banks 29-30-31",
    "C-BIOS MSX1 japonés",
    [("el exterior (0x36) entero, 7.426 cuadros, y la pantalla de nombres "
      "(0x3B) entera, 3.361 cuadros; en la 0x3B, en 6 cuadros, el periodo del "
      "canal A no coincide mientras ese canal está callado",
      "the outside world (0x36), whole, 7,426 frames, and the name screen "
      "(0x3B), whole, 3,361 frames; in 0x3B, in 6 frames, the period of "
      "channel A differs while that channel is silent")],
    [("Cómo se pide una pieza",
      "`pide_sonido` recibe el número en A. El motor tiene cinco canales de "
      "0x2C bytes desde 0xE210: la música va en los tres primeros y los "
      "efectos en los dos últimos, que toman prestada una voz del PSG y la "
      "devuelven al acabar. La música de cada sala sale de un nibble por sala "
      "en p00:4696 y de la tabla de 16 números de p00:47B6; con la bandera de "
      "la historia 0x20, bit 0, el exterior cambia de pieza. Las escenas de "
      "acción toman la suya de p09:607C. Aquí solo están las músicas, sin "
      "repetir: 0x32, 0x56, 0x5C y 0x5D suenan igual que 0x30, 0x4B, 0x5B y "
      "0x31. La 0x60 no vuelve al principio en 25 minutos: se corta a los "
      "5 minutos.",
      "How a piece is asked for",
      "`pide_sonido` takes the number in A. The engine has five channels of "
      "0x2C bytes from 0xE210: the music uses the first three and the effects "
      "the last two, which borrow a PSG voice and give it back when they "
      "finish. Each room's music comes from a nibble per room in p00:4696 and "
      "the table of 16 numbers at p00:47B6; with story flag 0x20, bit 0, the "
      "outside world changes piece. The action scenes take theirs from "
      "p09:607C. Only the tunes are here, without repeats: 0x32, 0x56, 0x5C "
      "and 0x5D sound the same as 0x30, 0x4B, 0x5B and 0x31. Piece 0x60 does "
      "not loop back within 25 minutes: it is cut at 5 minutes.")])

CFG = dict(rom="shalom.rom", org=0x4000, mapper="konami",
           bancos0=((0x4000, 0), (0x6000, 29), (0x8000, 30), (0xA000, 31)),
           frame=0x6449, pide=0x6000, banco_frame=29, banco_pide=29,
           ram=(0xE210, 0xE308), ram0=[(0xE2FE, 0xBF)], hz=60,
           psg0={7: 0xBF}, romtype="konami", max_s=300, piezas=PIEZAS,
           pagina=PAGINA, cotejado=[(0x36, 7426, 433), (0x3B, 3361, 1569)])


class Lector(motor_musica.Cartucho):
    """El cartucho apuntando cada lectura de 0x6000-0xBFFF con su banco."""

    def __init__(self, cfg, rom):
        super().__init__(cfg, rom)
        self.leidos = set()
        self.instr = set()

    def _una(self):
        self._en_instr = True
        pc0 = self.pc
        super()._una()
        self._en_instr = False
        # las lecturas de la instruccion: desde pc0 hasta donde haya avanzado
        # el pc si sigue de largo; las de un salto no importan, solo se
        # descuentan las direcciones de codigo que se hayan leido como tal

    def _leer(self, d):
        d &= 0xFFFF
        if 0x6000 <= d < 0xC000:
            b = self.bancos.get(d & 0xE000)
            clave = (b, d)
            if getattr(self, "_en_instr", False) and d == self.pc:
                self.instr.add(clave)
            else:
                self.leidos.add(clave)
        return super()._leer(d)


def lecturas(desde, hasta):
    """{numero: set((banco, direccion))} de las lecturas de datos."""
    rom = open(os.path.join(motor_musica.RAIZ, CFG["rom"]), "rb").read()
    viejo = motor_musica.Cartucho
    motor_musica.Cartucho = Lector
    fuera = {}
    try:
        for n in range(desde, hasta + 1):
            z = [None]

            def arranca(cfg, rom, numero, _a=motor_musica.arranca):
                z[0] = _a(cfg, rom, numero)
                return z[0]
            motor_musica.arranca, viejo_arranca = arranca, motor_musica.arranca
            try:
                motor_musica.ejecuta(CFG, rom, n, CFG["hz"] * 120)
            finally:
                motor_musica.arranca = viejo_arranca
            fuera[n] = z[0].leidos - z[0].instr
    finally:
        motor_musica.Cartucho = viejo
    return fuera


def rangos(conjunto):
    out = []
    for b, d in sorted(conjunto, key=lambda x: (x[0] or 0, x[1])):
        if out and out[-1][0] == b and out[-1][2] == d:
            out[-1][2] = d + 1
        else:
            out.append([b, d, d + 1])
    return out


if __name__ == "__main__":
    if sys.argv[1:2] == ["lecturas"]:
        res = lecturas(int(sys.argv[2], 0), int(sys.argv[3], 0))
        for n, s in res.items():
            print("0x%02X: %s" % (n, " ".join("p%02d:%04X-%04X" % (b, a, z) for b, a, z in rangos(s))))
        sys.exit(0)
    sys.exit(motor_musica.main(CFG, sys.argv[1:]))
