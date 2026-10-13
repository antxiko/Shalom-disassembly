# La música

Todo lo que suena aquí sale de ejecutar el motor de sonido del cartucho (`motor_cuadro`, p29:6449, que llama la interrupción, y `motor_pide`, p29:6000, al que el juego llega por `pide_sonido` (p00:415B) con los bancos 29-30-31) en un Z80 emulado, cuadro a cuadro y a 60 por segundo, igual que lo llama el juego. Lo que el motor escribe en el PSG pasa a sonido con un AY-3-8910 (`tools/musica.py`). Cada MP3 es la pieza entera hasta donde vuelve a empezar, más 8 segundos de la vuelta apagándose; las que no se repiten acaban donde acaba el motor.

## Cotejado con openMSX

Las escrituras al PSG se han comparado cuadro a cuadro con las de openMSX (C-BIOS MSX1 japonés). En todos los cuadros el PSG queda igual:

- el exterior (0x36) entero, 7.426 cuadros;
- la pantalla de nombres (0x3B) entera, 3.361 cuadros, salvo 6 en los que el periodo del canal A no coincide mientras ese canal está callado.

El timbre no está cotejado: es el de un AY-3-8910 de manual, no una grabación del emulador. Las sondas están en `tools/omsx_psg.tcl` y `tools/coteja_psg.py`.

## Cómo se pide una pieza

`pide_sonido` recibe el número en A. El motor tiene cinco canales de 0x2C bytes desde 0xE210: la música va en los tres primeros y los efectos en los dos últimos, que toman prestada una voz del PSG y la devuelven al acabar. La música de cada sala sale de un nibble por sala en p00:4696 y de la tabla de 16 números de p00:47B6; con la bandera de la historia 0x20, bit 0, el exterior cambia de pieza. Las escenas de acción toman la suya de p09:607C. Aquí solo están las músicas, sin repetir: 0x32, 0x56, 0x5C y 0x5D suenan igual que 0x30, 0x4B, 0x5B y 0x31. La 0x60 no vuelve al principio en 25 minutos: se corta a los 5 minutos.

## Las músicas

**El título** (0x50)

Lo pide `titulo_cuadro` (p04:6286); dura 1,0 s.

<audio controls preload="none" src="../audio/musica_50.mp3?v=db4e6d6f"></audio>

**La pantalla de nombres y diez salas** (0x3B)

Lo pide el paso 0 del estado 4 (p01:65F2) y `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: las 10 salas del grupo 5; dura 56,0 s y vuelve a empezar en el segundo 26,1.

<audio controls preload="none" src="../audio/musica_3B.mp3?v=5815ee05"></audio>

**La escena inicial y el final del juego** (0x2B)

Lo pide `escena_inicial_46` (p04:6D91) y `final_paso_03` (p09:6CEC); dura 136,8 s y vuelve a empezar en el segundo 64,8.

<audio controls preload="none" src="../audio/musica_2B.mp3?v=592dc113"></audio>

**Otra pieza de la escena inicial y del final** (0x26)

Lo pide `escena_inicial_24` (p04:6B09) y `final_paso_00` (p09:6CAC); dura 7,6 s.

<audio controls preload="none" src="../audio/musica_26.mp3?v=975af8e3"></audio>

**La escena inicial, paso 36** (0x4A)

Lo pide `escena_inicial_36` (p04:6C40); dura 37,6 s y vuelve a empezar en el segundo 18,2.

<audio controls preload="none" src="../audio/musica_4A.mp3?v=345746e9"></audio>

**La historia y cuatro salas** (0x4B)

Lo pide `historia_0` (p04:6E47) y `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: las salas 0x03E y 0x232-0x234; dura 110,4 s y vuelve a empezar en el segundo 52,8.

<audio controls preload="none" src="../audio/musica_4B.mp3?v=0e4bd38c"></audio>

**El exterior** (0x36)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: las 471 salas del grupo 0, casi todo el exterior; y `final_paso_28` (p09:6F51); dura 123,8 s y vuelve a empezar en el segundo 7,2.

<audio controls preload="none" src="../audio/musica_36.mp3?v=5e74a47a"></audio>

**El exterior con la bandera 0x20** (0x34)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: las salas de los grupos 0 y 1 con la bandera de la historia 0x20, bit 0 (p00:4632); dura 21,6 s y vuelve a empezar en el segundo 2,4.

<audio controls preload="none" src="../audio/musica_34.mp3?v=8595739e"></audio>

**El exterior con la bandera 0x20, tras la 0x2B** (0x42)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: con la bandera 0x20, bit 0, si sonaba la 0x2B, o en la sala 0x12D viniendo de la 0x12C; dura 28,0 s y vuelve a empezar en el segundo 8,8.

<audio controls preload="none" src="../audio/musica_42.mp3?v=54ec427b"></audio>

**Ocho salas del exterior** (0x2D)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: el grupo 1: salas 0x062, 0x063, 0x082, 0x083, 0x0AF, 0x0B0, 0x0CF y 0x0D0; dura 63,0 s y vuelve a empezar en el segundo 5,4.

<audio controls preload="none" src="../audio/musica_2D.mp3?v=dd0e2773"></audio>

**Treinta salas** (0x59)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: las 30 salas del grupo 0x0B; dura 54,3 s y vuelve a empezar en el segundo 6,3.

<audio controls preload="none" src="../audio/musica_59.mp3?v=ddaa0f6b"></audio>

**Nueve salas** (0x5F)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: el grupo 0x0D: salas 0x138, 0x139, 0x158, 0x159, 0x178, 0x179, 0x1A1, 0x226 y 0x227; dura 27,8 s y vuelve a empezar en el segundo 2,1.

<audio controls preload="none" src="../audio/musica_5F.mp3?v=f89e2dc5"></audio>

**La sala 0x118** (0x2E)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: la sala 0x118, sin la bandera 0x24, bit 7; dura 36,9 s y vuelve a empezar en el segundo 0,1.

<audio controls preload="none" src="../audio/musica_2E.mp3?v=3db944a7"></audio>

**Las mazmorras** (0x31)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: las 26 salas del grupo 4 (0x202-0x231); y como 0x5D, en una escena de acción (p01:7CBA); dura 113,7 s y vuelve a empezar en el segundo 50,7.

<audio controls preload="none" src="../audio/musica_31.mp3?v=fae5b669"></audio>

**La sala 0x208** (0x30)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: la sala 0x208; y como 0x32, el paso 0 de los eventos 0x15 y 0x18 (p02:98F8, p02:99DE); dura 35,4 s y vuelve a empezar en el segundo 16,0.

<audio controls preload="none" src="../audio/musica_30.mp3?v=5c185c18"></audio>

**Las salas 0x20C y 0x20D** (0x33)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: las salas 0x20C y 0x20D, y siempre que 0xE3D9 vale 1 (p08:B814); dura 65,2 s y vuelve a empezar en el segundo 35,1.

<audio controls preload="none" src="../audio/musica_33.mp3?v=44e1510d"></audio>

**La sala 0x210** (0x35)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: la sala 0x210; dura 26,4 s y vuelve a empezar en el segundo 9,3.

<audio controls preload="none" src="../audio/musica_35.mp3?v=098495bd"></audio>

**Las salas 0x228, 0x229 y 0x231** (0x3F)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: las salas 0x228 y 0x229, y la 0x231 sin la bandera 0x1D, bit 1; dura 106,7 s y vuelve a empezar en el segundo 24,3.

<audio controls preload="none" src="../audio/musica_3F.mp3?v=90b2fc1f"></audio>

**Las salas 0x22C y 0x22D** (0x60)

Lo pide `musica_de_la_sala` (p00:45E1), por el nibble de p00:4696: las salas 0x22C y 0x22D; se corta a los 300 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_60.mp3?v=cf9465c8"></audio>

**La escena de acción 1** (0x39)

Lo pide `sonido_de_la_escena` (p09:606E), tabla p09:607C; dura 53,4 s y vuelve a empezar en el segundo 29,4.

<audio controls preload="none" src="../audio/musica_39.mp3?v=f74e0efe"></audio>

**Las escenas de acción 2, 3, 4, 6 y 7** (0x49)

Lo pide `sonido_de_la_escena` (p09:606E), tabla p09:607C; dura 76,8 s y vuelve a empezar en el segundo 38,4.

<audio controls preload="none" src="../audio/musica_49.mp3?v=5b852195"></audio>

**Las escenas de acción 5 y 8** (0x4C)

Lo pide `sonido_de_la_escena` (p09:606E), tabla p09:607C; dura 102,7 s y vuelve a empezar en el segundo 25,9.

<audio controls preload="none" src="../audio/musica_4C.mp3?v=81324bb7"></audio>

**La escena de acción 9** (0x57)

Lo pide `sonido_de_la_escena` (p09:606E), tabla p09:607C; dura 33,8 s y vuelve a empezar en el segundo 1,8.

<audio controls preload="none" src="../audio/musica_57.mp3?v=e17c0dfa"></audio>

**La clase 9 de los objetos, paso 6** (0x5A)

Lo pide la clase 9 de los objetos (`objeto_09`, p11:A47A), paso 6; dura 3,0 s.

<audio controls preload="none" src="../audio/musica_5A.mp3?v=7ffbff30"></audio>

**La clase 9 de los objetos, paso 17** (0x55)

Lo pide la clase 9 de los objetos (`objeto_09`, p11:A47A), paso 17; dura 77,5 s y vuelve a empezar en el segundo 2,9.

<audio controls preload="none" src="../audio/musica_55.mp3?v=7b9885c2"></audio>

**La clase 9 de los objetos, paso 20** (0x4E)

Lo pide la clase 9 de los objetos (`objeto_09`, p11:A47A), paso 20; dura 7,2 s y vuelve a empezar en el segundo 3,0.

<audio controls preload="none" src="../audio/musica_4E.mp3?v=78be7075"></audio>

**La clase 9 de los objetos, paso 21** (0x3E)

Lo pide la clase 9 de los objetos (`objeto_09`, p11:A47A), paso 21; dura 107,4 s y vuelve a empezar en el segundo 48,5.

<audio controls preload="none" src="../audio/musica_3E.mp3?v=528112bf"></audio>

**La clase 9 de los objetos, paso 23** (0x51)

Lo pide la clase 9 de los objetos (`objeto_09`, p11:A47A), paso 23; dura 4,4 s.

<audio controls preload="none" src="../audio/musica_51.mp3?v=d938afbc"></audio>

**Un objeto sin vida** (0x53)

Lo pide un proyectil deja sin vida a un objeto de las clases 2, 3, 4, 6 o 7 (p11:A867); y `evento_27` (p02:9C46); dura 3,0 s.

<audio controls preload="none" src="../audio/musica_53.mp3?v=f2dab517"></audio>

**El paso 0 de cuatro eventos** (0x2F)

Lo pide los eventos 0x01, 0x06, 0x0C y 0x17 (p02:919A, p02:9332, p02:9574, p02:9987); dura 21,9 s y vuelve a empezar en el segundo 8,8.

<audio controls preload="none" src="../audio/musica_2F.mp3?v=ccb4d976"></audio>

**El evento 0x19** (0x27)

Lo pide `evento_19` (p02:9A14); dura 2,1 s.

<audio controls preload="none" src="../audio/musica_27.mp3?v=5f5dc3b6"></audio>

**El actor 0xA5** (0x37)

Lo pide `actor_a5` (p08:A35C), cuando el personaje queda a menos de 0x11 puntos en vertical; dura 39,2 s y vuelve a empezar en el segundo 19,9.

<audio controls preload="none" src="../audio/musica_37.mp3?v=d24677a8"></audio>

**La entrada por arriba** (0x07)

Lo pide `personaje_modo_2` (p01:72B9) y `actor_a5` (p08:A328); dura 1,1 s.

<audio controls preload="none" src="../audio/musica_07.mp3?v=3c6fad76"></audio>

**El personaje baja** (0x08)

Lo pide `personaje_baja` (p01:72D8), el modo 3 del personaje; dura 38,0 s y vuelve a empezar en el segundo 1,2.

<audio controls preload="none" src="../audio/musica_08.mp3?v=89fe6839"></audio>

**El desplazamiento de la pantalla** (0x28)

Lo pide `sonido_28_y_21_22_23` (p00:4040), desde p21:606C y p21:60B1; dura 8,6 s.

<audio controls preload="none" src="../audio/musica_28.mp3?v=cdb0c42d"></audio>

**Los finales del estado 6** (0x3A)

Lo pide `final_1` y `final_2`, paso 0 (p06:AF69, p06:AFAA); dura 45,9 s y vuelve a empezar en el segundo 22,4.

<audio controls preload="none" src="../audio/musica_3A.mp3?v=1ef49399"></audio>

**El final del juego, paso 31** (0x58)

Lo pide `final_paso_31` (p09:7013); dura 76,8 s y vuelve a empezar en el segundo 38,4.

<audio controls preload="none" src="../audio/musica_58.mp3?v=d59fefae"></audio>

**Sin petición: 0x2C** (0x2C)

Lo pide ninguna rutina del listado la pide, ni está en p00:47B6 ni en p09:607C; dura 78,5 s y vuelve a empezar en el segundo 19,6.

<audio controls preload="none" src="../audio/musica_2C.mp3?v=6b4f2787"></audio>

**Sin petición: 0x38** (0x38)

Lo pide ninguna rutina del listado la pide, ni está en p00:47B6 ni en p09:607C; dura 38,2 s y vuelve a empezar en el segundo 18,8.

<audio controls preload="none" src="../audio/musica_38.mp3?v=cb5459a7"></audio>

**Sin petición: 0x3C** (0x3C)

Lo pide ninguna rutina del listado la pide, ni está en p00:47B6 ni en p09:607C; dura 58,0 s y vuelve a empezar en el segundo 27,9.

<audio controls preload="none" src="../audio/musica_3C.mp3?v=7412f5c8"></audio>

**Sin petición: 0x3D** (0x3D)

Lo pide ninguna rutina del listado la pide, ni está en p00:47B6 ni en p09:607C; dura 114,0 s y vuelve a empezar en el segundo 56,4.

<audio controls preload="none" src="../audio/musica_3D.mp3?v=934c72e5"></audio>

**Sin petición: 0x5B (y 0x5C)** (0x5B)

Lo pide ninguna rutina del listado la pide, ni está en p00:47B6 ni en p09:607C; dura 74,8 s y vuelve a empezar en el segundo 0,2.

<audio controls preload="none" src="../audio/musica_5B.mp3?v=521364f2"></audio>
