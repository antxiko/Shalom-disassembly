# El cartucho

Un MegaROM de 256 KB con el mapper de Konami sin SCC (Konami4): el banco 0 está
fijo en `0x4000` y `0x6000`, `0x8000` y `0xA000` eligen el banco de su ventana.
Son 32 bancos de 8 KB. En el cartucho no hay ninguna escritura a
`0x5000/0x7000/0x9000/0xB000`, las del SCC.

## El arranque

INIT en `0x41A3` pone el gancho H.STKE, que salta a `0x41B5`. La interrupción
(H.KEYI) va a `0x404C`: pone los bancos 29-30-31 y corre la música
(`p29:6449`) y, si no está ya dentro, el cuadro del juego.

## Los repartos de bancos

Las rutinas de `p00:40F9-414F` ponen los bancos de tres en tres: 1-2-3, 4-5-6,
7-8 (en `0x8000` y `0xA000`), 9-10-11, 12-13-14, 15-16-17, 18-19-20, 21-22-23,
24-25-26 y 27-28; el sonido usa 29-30-31.

## Qué hay en cada banco

| Bancos | Qué |
|---|---|
| 0 | el núcleo: mapper, pantalla, textos, salas, sonido |
| 1-3 | estados del juego, el personaje, eventos y respuestas, grabar |
| 4-6 | rótulo, título, historia, escena inicial, la fuente, menús |
| 7-8 | los personajes de las salas |
| 9-11 | dibujos de las salas, las escenas de acción y sus jefes |
| 12-14 | fichas de las salas, marcador, contraseña |
| 15-17 | el mapa de las salas 0x000-0x1FF |
| 18-20 | sprites, salas 0x200 en adelante, gráficos de las escenas |
| 21-28 | los textos y gráficos de las escenas 1-4 |
| 29-31 | el motor de sonido y la música |

## Los estados

`p01:64DF`: 0 rótulo, 1 título, 2 demo (guion `p11:BD12`), 3 y 4 la partida
(nombres, carga, escena inicial), 5 el juego, 6 un final, 7 vuelta, 8 el final
del juego (`p09:6C23`).

## Los mandos

`0xE008`: bits 0-3 los cursores, 4 disparo o espacio, 5 botón 2 o M (menú), 6
RETURN, 7 F5 (calla el sonido de las letras, `0xF0FA`).

## Grabar

Contraseña (banco 14), cinta (BIOS `00E1-00F0`), disco (BDOS `0x0F`, `0x16`,
`0x10`, `0x1A`, `0x26`, `0x27`, `p03:BCC4`) y otro cartucho con «YZ» en
`0x4010` (`p01:60CB`, le habla por `0x8000`).
