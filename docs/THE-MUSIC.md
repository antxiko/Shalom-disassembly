# The music

Everything you hear here comes from running the cartridge's own sound engine (`motor_cuadro`, p29:6449, called by the interrupt, and `motor_pide`, p29:6000, which the game reaches through `pide_sonido` (p00:415B) with banks 29-30-31) on an emulated Z80, frame by frame at 60 per second, just as the game calls it. What the engine writes to the PSG is turned into sound with an AY-3-8910 (`tools/musica.py`). Each MP3 is the whole piece up to where it starts again, plus 8 seconds of the repeat fading out; those that do not repeat end where the engine ends.

## Checked against openMSX

The PSG writes have been compared frame by frame with those of openMSX (C-BIOS MSX1 japonés). In every frame the PSG ends up the same:

- the outside world (0x36), whole, 7,426 frames;
- the name screen (0x3B), whole, 3,361 frames, except 6 in which the period of channel A differs while that channel is silent.

The timbre is not checked: it is a textbook AY-3-8910, not a recording of the emulator. The probes are `tools/omsx_psg.tcl` and `tools/coteja_psg.py`.

## How a piece is asked for

`pide_sonido` takes the number in A. The engine has five channels of 0x2C bytes from 0xE210: the music uses the first three and the effects the last two, which borrow a PSG voice and give it back when they finish. Each room's music comes from a nibble per room in p00:4696 and the table of 16 numbers at p00:47B6; with story flag 0x20, bit 0, the outside world changes piece. The action scenes take theirs from p09:607C. Only the tunes are here, without repeats: 0x32, 0x56, 0x5C and 0x5D sound the same as 0x30, 0x4B, 0x5B and 0x31. Piece 0x60 does not loop back within 25 minutes: it is cut at 5 minutes.

## The tunes

**The title** (0x50)

Asked for by `titulo_cuadro` (p04:6286); lasts 1.0 s.

<audio controls preload="none" src="audio/musica_50.mp3?v=db4e6d6f"></audio>

**The name screen and ten rooms** (0x3B)

Asked for by step 0 of state 4 (p01:65F2) and `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: the 10 rooms of group 5; lasts 56.0 s and starts again at second 26.1.

<audio controls preload="none" src="audio/musica_3B.mp3?v=5815ee05"></audio>

**The opening scene and the game's ending** (0x2B)

Asked for by `escena_inicial_46` (p04:6D91) and `final_paso_03` (p09:6CEC); lasts 136.8 s and starts again at second 64.8.

<audio controls preload="none" src="audio/musica_2B.mp3?v=592dc113"></audio>

**Another piece of the opening and the ending** (0x26)

Asked for by `escena_inicial_24` (p04:6B09) and `final_paso_00` (p09:6CAC); lasts 7.6 s.

<audio controls preload="none" src="audio/musica_26.mp3?v=975af8e3"></audio>

**The opening scene, step 36** (0x4A)

Asked for by `escena_inicial_36` (p04:6C40); lasts 37.6 s and starts again at second 18.2.

<audio controls preload="none" src="audio/musica_4A.mp3?v=345746e9"></audio>

**The story and four rooms** (0x4B)

Asked for by `historia_0` (p04:6E47) and `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: rooms 0x03E and 0x232-0x234; lasts 110.4 s and starts again at second 52.8.

<audio controls preload="none" src="audio/musica_4B.mp3?v=0e4bd38c"></audio>

**The outside world** (0x36)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: the 471 rooms of group 0, most of the outside world; and `final_paso_28` (p09:6F51); lasts 123.8 s and starts again at second 7.2.

<audio controls preload="none" src="audio/musica_36.mp3?v=5e74a47a"></audio>

**The outside world with flag 0x20** (0x34)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: the rooms of groups 0 and 1 with story flag 0x20, bit 0 (p00:4632); lasts 21.6 s and starts again at second 2.4.

<audio controls preload="none" src="audio/musica_34.mp3?v=8595739e"></audio>

**The outside world with flag 0x20, after 0x2B** (0x42)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: with flag 0x20, bit 0, if 0x2B was playing, or in room 0x12D coming from 0x12C; lasts 28.0 s and starts again at second 8.8.

<audio controls preload="none" src="audio/musica_42.mp3?v=54ec427b"></audio>

**Eight outdoor rooms** (0x2D)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: group 1: rooms 0x062, 0x063, 0x082, 0x083, 0x0AF, 0x0B0, 0x0CF and 0x0D0; lasts 63.0 s and starts again at second 5.4.

<audio controls preload="none" src="audio/musica_2D.mp3?v=dd0e2773"></audio>

**Thirty rooms** (0x59)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: the 30 rooms of group 0x0B; lasts 54.3 s and starts again at second 6.3.

<audio controls preload="none" src="audio/musica_59.mp3?v=ddaa0f6b"></audio>

**Nine rooms** (0x5F)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: group 0x0D: rooms 0x138, 0x139, 0x158, 0x159, 0x178, 0x179, 0x1A1, 0x226 and 0x227; lasts 27.8 s and starts again at second 2.1.

<audio controls preload="none" src="audio/musica_5F.mp3?v=f89e2dc5"></audio>

**Room 0x118** (0x2E)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: room 0x118, without flag 0x24, bit 7; lasts 36.9 s and starts again at second 0.1.

<audio controls preload="none" src="audio/musica_2E.mp3?v=3db944a7"></audio>

**The dungeons** (0x31)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: the 26 rooms of group 4 (0x202-0x231); and, as 0x5D, in an action scene (p01:7CBA); lasts 113.7 s and starts again at second 50.7.

<audio controls preload="none" src="audio/musica_31.mp3?v=fae5b669"></audio>

**Room 0x208** (0x30)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: room 0x208; and, as 0x32, step 0 of events 0x15 and 0x18 (p02:98F8, p02:99DE); lasts 35.4 s and starts again at second 16.0.

<audio controls preload="none" src="audio/musica_30.mp3?v=5c185c18"></audio>

**Rooms 0x20C and 0x20D** (0x33)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: rooms 0x20C and 0x20D, and whenever 0xE3D9 is 1 (p08:B814); lasts 65.2 s and starts again at second 35.1.

<audio controls preload="none" src="audio/musica_33.mp3?v=44e1510d"></audio>

**Room 0x210** (0x35)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: room 0x210; lasts 26.4 s and starts again at second 9.3.

<audio controls preload="none" src="audio/musica_35.mp3?v=098495bd"></audio>

**Rooms 0x228, 0x229 and 0x231** (0x3F)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: rooms 0x228 and 0x229, and 0x231 without flag 0x1D, bit 1; lasts 106.7 s and starts again at second 24.3.

<audio controls preload="none" src="audio/musica_3F.mp3?v=90b2fc1f"></audio>

**Rooms 0x22C and 0x22D** (0x60)

Asked for by `musica_de_la_sala` (p00:45E1), by the nibble in p00:4696: rooms 0x22C and 0x22D; is cut at 300 s (the piece goes on).

<audio controls preload="none" src="audio/musica_60.mp3?v=cf9465c8"></audio>

**Action scene 1** (0x39)

Asked for by `sonido_de_la_escena` (p09:606E), table p09:607C; lasts 53.4 s and starts again at second 29.4.

<audio controls preload="none" src="audio/musica_39.mp3?v=f74e0efe"></audio>

**Action scenes 2, 3, 4, 6 and 7** (0x49)

Asked for by `sonido_de_la_escena` (p09:606E), table p09:607C; lasts 76.8 s and starts again at second 38.4.

<audio controls preload="none" src="audio/musica_49.mp3?v=5b852195"></audio>

**Action scenes 5 and 8** (0x4C)

Asked for by `sonido_de_la_escena` (p09:606E), table p09:607C; lasts 102.7 s and starts again at second 25.9.

<audio controls preload="none" src="audio/musica_4C.mp3?v=81324bb7"></audio>

**Action scene 9** (0x57)

Asked for by `sonido_de_la_escena` (p09:606E), table p09:607C; lasts 33.8 s and starts again at second 1.8.

<audio controls preload="none" src="audio/musica_57.mp3?v=e17c0dfa"></audio>

**Object class 9, step 6** (0x5A)

Asked for by object class 9 (`objeto_09`, p11:A47A), step 6; lasts 3.0 s.

<audio controls preload="none" src="audio/musica_5A.mp3?v=7ffbff30"></audio>

**Object class 9, step 17** (0x55)

Asked for by object class 9 (`objeto_09`, p11:A47A), step 17; lasts 77.5 s and starts again at second 2.9.

<audio controls preload="none" src="audio/musica_55.mp3?v=7b9885c2"></audio>

**Object class 9, step 20** (0x4E)

Asked for by object class 9 (`objeto_09`, p11:A47A), step 20; lasts 7.2 s and starts again at second 3.0.

<audio controls preload="none" src="audio/musica_4E.mp3?v=78be7075"></audio>

**Object class 9, step 21** (0x3E)

Asked for by object class 9 (`objeto_09`, p11:A47A), step 21; lasts 107.4 s and starts again at second 48.5.

<audio controls preload="none" src="audio/musica_3E.mp3?v=528112bf"></audio>

**Object class 9, step 23** (0x51)

Asked for by object class 9 (`objeto_09`, p11:A47A), step 23; lasts 4.4 s.

<audio controls preload="none" src="audio/musica_51.mp3?v=d938afbc"></audio>

**An object out of life** (0x53)

Asked for by a projectile leaves an object of class 2, 3, 4, 6 or 7 without life (p11:A867); and `evento_27` (p02:9C46); lasts 3.0 s.

<audio controls preload="none" src="audio/musica_53.mp3?v=f2dab517"></audio>

**Step 0 of four events** (0x2F)

Asked for by events 0x01, 0x06, 0x0C and 0x17 (p02:919A, p02:9332, p02:9574, p02:9987); lasts 21.9 s and starts again at second 8.8.

<audio controls preload="none" src="audio/musica_2F.mp3?v=ccb4d976"></audio>

**Event 0x19** (0x27)

Asked for by `evento_19` (p02:9A14); lasts 2.1 s.

<audio controls preload="none" src="audio/musica_27.mp3?v=5f5dc3b6"></audio>

**Actor 0xA5** (0x37)

Asked for by `actor_a5` (p08:A35C), when the character is less than 0x11 pixels away vertically; lasts 39.2 s and starts again at second 19.9.

<audio controls preload="none" src="audio/musica_37.mp3?v=d24677a8"></audio>

**Entering from the top** (0x07)

Asked for by `personaje_modo_2` (p01:72B9) and `actor_a5` (p08:A328); lasts 1.1 s.

<audio controls preload="none" src="audio/musica_07.mp3?v=3c6fad76"></audio>

**The character goes down** (0x08)

Asked for by `personaje_baja` (p01:72D8), character mode 3; lasts 38.0 s and starts again at second 1.2.

<audio controls preload="none" src="audio/musica_08.mp3?v=89fe6839"></audio>

**The screen scroll** (0x28)

Asked for by `sonido_28_y_21_22_23` (p00:4040), from p21:606C and p21:60B1; lasts 8.6 s.

<audio controls preload="none" src="audio/musica_28.mp3?v=cdb0c42d"></audio>

**The endings of state 6** (0x3A)

Asked for by `final_1` and `final_2`, step 0 (p06:AF69, p06:AFAA); lasts 45.9 s and starts again at second 22.4.

<audio controls preload="none" src="audio/musica_3A.mp3?v=1ef49399"></audio>

**The game's ending, step 31** (0x58)

Asked for by `final_paso_31` (p09:7013); lasts 76.8 s and starts again at second 38.4.

<audio controls preload="none" src="audio/musica_58.mp3?v=d59fefae"></audio>

**Not asked for: 0x2C** (0x2C)

Asked for by no routine in the listing asks for it, and it is not in p00:47B6 or p09:607C; lasts 78.5 s and starts again at second 19.6.

<audio controls preload="none" src="audio/musica_2C.mp3?v=6b4f2787"></audio>

**Not asked for: 0x38** (0x38)

Asked for by no routine in the listing asks for it, and it is not in p00:47B6 or p09:607C; lasts 38.2 s and starts again at second 18.8.

<audio controls preload="none" src="audio/musica_38.mp3?v=cb5459a7"></audio>

**Not asked for: 0x3C** (0x3C)

Asked for by no routine in the listing asks for it, and it is not in p00:47B6 or p09:607C; lasts 58.0 s and starts again at second 27.9.

<audio controls preload="none" src="audio/musica_3C.mp3?v=7412f5c8"></audio>

**Not asked for: 0x3D** (0x3D)

Asked for by no routine in the listing asks for it, and it is not in p00:47B6 or p09:607C; lasts 114.0 s and starts again at second 56.4.

<audio controls preload="none" src="audio/musica_3D.mp3?v=934c72e5"></audio>

**Not asked for: 0x5B (and 0x5C)** (0x5B)

Asked for by no routine in the listing asks for it, and it is not in p00:47B6 or p09:607C; lasts 74.8 s and starts again at second 0.2.

<audio controls preload="none" src="audio/musica_5B.mp3?v=521364f2"></audio>
