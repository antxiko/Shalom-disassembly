# The code

The listing reassembles byte for byte with `make verify`: the 32 banks give back
the whole ROM. Everything is explained (code, or data with whoever reads it) and
42.7 % of the instructions carry a comment; no routine is below 10 % and there
is no `call` to an unnamed routine.

## How it is made

- `tools/bancos.py` traces the whole cartridge keeping track of which bank sits
  in each window; the entries of each bank come from there.
- `tools/anotaciones.py` holds the names of the routines, the RAM and the
  records (character, actors, objects, projectiles, sound channels).
- `src/pNN.notes`: the hand notes for each bank.

## What draws (from the tables, with our own code)

| Tool | What |
|---|---|
| `pantalla.py` | the VRAM: RLE, thirds and the picture with the TMS9918 palette |
| `titulo.py` | the logo and the title |
| `salas.py`, `mundo.py` | each room and the world |
| `personajes.py` | Shalom and his GIF |
| `actores.py` | the characters in the rooms |
| `historia.py`, `escena.py` | the story and the opening scene |
| `accion.py` | the action scenes and their bosses |
| `marcador.py` | the status-panel pictures |
| `textos.py` | the texts with the font table |
| `musica.py` | the music, running the cartridge's engine |
| `imagenes.py` | every picture of the website |

## What checks (does not draw)

- `coteja_actores.py`: runs `crea_actor` in `tools/z80run.py` and compares the
  frame with the one read: 300 of 302.
- `coteja_psg.py` and `omsx_psg.tcl`: the music against openMSX.

## Code shared with other Konami cartridges

This disassembly has been compared, instruction by instruction, with
every other Konami one in the series. A block counts when the same
instructions, at least six of them from a label to its `ret` or its
unconditional jump, are in both cartridges; the addresses are left
aside, because they change from one cartridge to the next. Of the
other 57, **48** have at least one block in common with this one;
these are the ones that share the most:

| Cartridge | Blocks | Instructions | For example (here = there) |
|---|---:|---:|---|
| [Konami’s Game Master 2](https://antxiko.github.io/GameMaster2-disassembly/) | 67 | 917 | `mezclador` (p29:6C07) = `sonido_mezclador` |
| [King's Valley II](https://antxiko.github.io/KingsValley2-disassembly/) | 54 | 735 | `orden_eb` (p29:69C0) |
| [Salamander - Operation X](https://antxiko.github.io/Salamander-disassembly/) | 49 | 614 | `bytes_a_vram` (p00:59C2) = `lista_a_vram` |
| [Parodius](https://antxiko.github.io/Parodius-disassembly/) | 45 | 567 | `arranca_canal` (p29:60C0) = `carga_canal` |
| [Hai no Majutsushi - Mahjong 2](https://antxiko.github.io/Majutsushi-disassembly/) | 43 | 553 | `cartucho_en_8000` (p00:40BD) |
| [The Pro Yakyuu Gekitotsu Pennant Race](https://antxiko.github.io/PennantRace-disassembly/) | 43 | 539 | `cartucho_en_8000` (p00:40BD) = `cartucho_en_pagina_2` |
| [Nemesis 3 - The Eve of Destruction](https://antxiko.github.io/Nemesis3-disassembly/) | 41 | 521 | `cartucho_en_8000` (p00:40BD) |
| [F-1 Spirit — The Way to Formula 1](https://antxiko.github.io/F1Spirit-disassembly/) | 35 | 395 | `arranca_canal` (p29:60C0) = `SONIDO_CANAL` |
| [Nemesis 2](https://antxiko.github.io/Nemesis2-disassembly/) | 34 | 403 | `envolvente_al_psg` (p29:6BD9) = `envolvente_del_psg` |
| [Gekitotsu Pennant Race 2](https://antxiko.github.io/PennantRace2-disassembly/) | 31 | 401 | `orden_eb` (p29:69C0) |

The whole matrix, the 58 cartridges against each other, is on
[The routines](https://antxiko.github.io/MSX-disassembly-database/THE-ROUTINES.html) in the series database, along
with the method and the program that measures it.
