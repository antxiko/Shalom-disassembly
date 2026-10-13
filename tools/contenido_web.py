#!/usr/bin/env python3
"""Lo que la web dice de ESTE cartucho: nombre, cifras, cabecera, hallazgos y
galeria. La maquinaria (md2html.py, make_web.py) no nombra ningun juego."""

NOMBRE = "Shalom: Knightmare III"
CATALOGO = "RC-754"
ANIO = 1987
REPOSITORIO = "https://github.com/antxiko/Shalom-disassembly"

# Las cifras del listado (make densidad y tools/presupuesto.py, 27d1030)
CODIGO = 54779
DATOS = 207365
RUTINAS = 3418
INSTRUCCIONES = 25581
COMENTARIOS = 10934

# Los bancos con codigo (los demas son datos)
BANCOS_CON_CODIGO = ("00", "01", "02", "03", "04", "06", "07", "08", "09", "10",
                     "11", "14", "21", "29")


def densidad(idioma):
    """El porcentaje comentado, con la coma o el punto de cada idioma."""
    d = "%.1f" % (100.0 * COMENTARIOS / INSTRUCCIONES)
    return d.replace(".", ",") if idioma == "es" else d


PIE_LEGAL = {
    "es": "<em>Shalom: Knightmare III</em> lo public&oacute; Konami para MSX "
          "en 1987; su n&uacute;mero de cat&aacute;logo es RC-754 y son 256 KB. "
          "Todos los derechos sobre el juego siguen siendo de sus titulares. "
          "Este trabajo es de preservaci&oacute;n, estudio y "
          "documentaci&oacute;n, y la imagen del cartucho no se distribuye.",
    "en": "<em>Shalom: Knightmare III</em> was published by Konami for the MSX "
          "in 1987; its catalogue number is RC-754 and it is 256 KB. All rights "
          "in the game remain with their holders. This is preservation, study "
          "and documentation work, and the cartridge image is not distributed.",
}

PORTADA = {
    "es": dict(
        titulo="Shalom: Knightmare III - desensamblado comentado",
        claim="El mundo de 512 salas y sus mazmorras, 265 personajes con su "
              "nombre, los nueve jefes, la historia en ocho vi&ntilde;etas, los "
              "902 textos en japon&eacute;s y 42 m&uacute;sicas. Todo dibujado "
              "y sacado desde la ROM.",
        ficha=["Konami - <b>(c) Konami 1987</b>",
               "Cartucho <b>RC-754</b>, MegaROM de 256 KB (Konami4, sin SCC)",
               "<b>MSX</b>", "Volcado japon&eacute;s <b>25f5adec...</b>"],
        aviso="<b>Aqu&iacute; no hay ninguna captura.</b> Todas las "
              "im&aacute;genes est&aacute;n <b>dibujadas desde los bytes de la "
              "ROM</b> con las tablas del cartucho. <b>El cotejo contra la VRAM "
              "de openMSX est&aacute; pendiente.</b> El listado se reensambla "
              "<b>byte a byte</b> con <code>make</code>.",
    ),
    "en": dict(
        titulo="Shalom: Knightmare III - a commented disassembly",
        claim="The 512-room world and its dungeons, 265 characters with their "
              "names, the nine bosses, the story in eight panels, the 902 "
              "Japanese texts and 42 tunes. All drawn and taken from the ROM.",
        ficha=["Konami - <b>(c) Konami 1987</b>",
               "An <b>RC-754</b> cartridge, a 256 KB MegaROM (Konami4, no SCC)",
               "<b>MSX</b>", "Japanese dump <b>25f5adec...</b>"],
        aviso="<b>Not one capture here.</b> Every picture is <b>drawn from the "
              "bytes of the ROM</b> with the cartridge's own tables. <b>The "
              "check against the openMSX VRAM is still to be done.</b> The "
              "listing reassembles <b>byte for byte</b> with <code>make</code>.",
    ),
}

LEIDO = {"es": "<p>Le&iacute;do en el c&oacute;digo.</p>", "en": "<p>Read in the code.</p>"}

HALLAZGOS = {
    "es": [
        ("Una capa que para la mitad de los golpes",
         "<p>En las escenas de acci&oacute;n cada golpe quita un punto de vida "
         "y se empieza con 20 (<code>p11:A7C5</code>). Si se lleva el objeto 11, "
         "la capa (&#12510;&#12531;&#12488;), solo cuenta un golpe de cada dos "
         "(<code>p11:A7B8</code>).</p>" + LEIDO["es"]),
        ("La contrase&ntilde;a es la partida entera",
         "<p>Los 62 bytes de la partida (desde <code>0xEB40</code>) m&aacute;s "
         "un CRC-16 (polinomio <code>0xA001</code>), todo mezclado con una clave: "
         "130 letras (<code>p14:BAAC</code>). Si el CRC no cuadra, no se carga "
         "(<code>p14:BCEA</code>).</p>" + LEIDO["es"]),
        ("Graba en otro cartucho",
         "<p>Adem&aacute;s de cinta y disco, busca en las ranuras un cartucho "
         "con &laquo;YZ&raquo; en <code>0x4010</code> y le habla por "
         "<code>0x8000</code> (<code>p01:60CB</code>).</p>" + LEIDO["es"]),
        ("En la historia, el protagonista eres t&uacute;",
         "<p>La historia pone &laquo;&#12354;&#12394;&#12383;&raquo; "
         "(&laquo;t&uacute;&raquo;) como primer nombre antes de presentar a los "
         "personajes (<code>p04:6E5D</code>).</p>" + LEIDO["es"]),
        ("Los jefes se dibujan con fichas",
         "<p>Siete de los nueve no son sprites: se pintan en la pantalla de "
         "nombres en su primer paso. El de la escena 1 baja fila a fila hasta "
         "su sitio (<code>p10:8E0D</code>).</p>" + LEIDO["es"]),
    ],
    "en": [
        ("A cloak that stops half the hits",
         "<p>In the action scenes each hit takes one point of life and you "
         "start with 20 (<code>p11:A7C5</code>). Carrying item 11, the cloak "
         "(&#12510;&#12531;&#12488;), only one hit in two counts "
         "(<code>p11:A7B8</code>).</p>" + LEIDO["en"]),
        ("The password is the whole game",
         "<p>The 62 bytes of the game (from <code>0xEB40</code>) plus a CRC-16 "
         "(polynomial <code>0xA001</code>), all mixed with a key: 130 letters "
         "(<code>p14:BAAC</code>). If the CRC does not match, it is not loaded "
         "(<code>p14:BCEA</code>).</p>" + LEIDO["en"]),
        ("It saves to another cartridge",
         "<p>Besides tape and disk, it looks in the slots for a cartridge with "
         "&ldquo;YZ&rdquo; at <code>0x4010</code> and talks to it through "
         "<code>0x8000</code> (<code>p01:60CB</code>).</p>" + LEIDO["en"]),
        ("In the story, the hero is you",
         "<p>The story sets &ldquo;&#12354;&#12394;&#12383;&rdquo; "
         "(&ldquo;you&rdquo;) as the first name before introducing the "
         "characters (<code>p04:6E5D</code>).</p>" + LEIDO["en"]),
        ("The bosses are drawn with tiles",
         "<p>Seven of the nine are not sprites: they are painted into the name "
         "table on their first step. The one in scene 1 comes down row by row "
         "to its place (<code>p10:8E0D</code>).</p>" + LEIDO["en"]),
    ],
}

# (imagen, pie en castellano, pie en ingles)
LOGOTIPO = "titulo.png"
GALERIA = [
    ("titulo.png",
     "La pantalla de t&iacute;tulo, montada desde la ROM (<code>p04:622B</code>).",
     "The title screen, built from the ROM (<code>p04:622B</code>)."),
    ("historia_7.png",
     "La historia: ocho vi&ntilde;etas que aparecen una por p&aacute;gina "
     "(<code>p04:7C71</code>, cortinilla <code>p00:4CD4</code>).",
     "The story: eight panels, one per page (<code>p04:7C71</code>, wipe "
     "<code>p00:4CD4</code>)."),
    ("escena_inicial.png",
     "La escena inicial con la opci&oacute;n 1 (<code>p04:671A</code>).",
     "The opening scene with option 1 (<code>p04:671A</code>)."),
    ("mundo_4.png",
     "El exterior: 32 x 16 salas, colocadas por sus vecinas "
     "(<code>p02:858C</code>), a un cuarto de tama&ntilde;o.",
     "The outside world: 32 x 16 rooms, placed by their neighbours "
     "(<code>p02:858C</code>), at a quarter size."),
    ("personaje.gif",
     "Shalom andando: tres sprites por fotograma (<code>p01:772A</code>), "
     "un dibujo cada 16 cuadros.",
     "Shalom walking: three sprites per frame (<code>p01:772A</code>), one "
     "drawing every 16 frames."),
    ("sala_0D0_con_personajes.png",
     "La plaza de la fuente con sus vecinos (<code>p07:8BC2</code>).",
     "The fountain square with its neighbours (<code>p07:8BC2</code>)."),
    ("personajes_de_las_salas.png",
     "Los 265 personajes que se ven, cada uno en su sala y con su nombre "
     "(<code>p08:A063</code>).",
     "The 265 visible characters, each in its room and with its name "
     "(<code>p08:A063</code>)."),
    ("accion_9.png",
     "El gran demonio Gog, el jefe de la escena 9 (<code>p11:A52A</code>).",
     "The great demon Gog, the boss of scene 9 (<code>p11:A52A</code>)."),
    ("marcador.png",
     "Las 17 vi&ntilde;etas del marcador (<code>p12:733E</code>).",
     "The 17 status-panel pictures (<code>p12:733E</code>)."),
]
