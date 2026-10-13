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
