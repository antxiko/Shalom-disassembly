# Shalom: Knightmare III - a commented disassembly

*(También [en castellano](README.es.md).)*

The commented disassembly of **Shalom: Knightmare III** (Konami, 1987, RC-754)
for the MSX: a 256 KB MegaROM with the Konami mapper without SCC, thirty-two
banks of 8 KB.

- **100 %** of the binary explained: 54,779 bytes of code and 207,365 of named
  data.
- **42.7 %** of the listing commented, 3,418 routines, none below 10 %
  comments.
- The listing reassembles into the original ROM **byte for byte**.
- The 512-room world and its dungeons, the title, the story, the opening scene,
  Shalom, the 265 visible characters with their names, the action scenes and
  their bosses and the status-panel pictures are **drawn from the ROM**, not
  captured. The 902 Japanese texts are taken out with the cartridge's font
  table, and the 42 tunes by running its sound engine.

The website: <https://antxiko.github.io/Shalom-disassembly/>
(in Spanish: <https://antxiko.github.io/Shalom-disassembly/es/>).

## Reproducing it

The cartridge image is not distributed. Put yours in the root as `shalom.rom`
(sha256 `658ad7ef...`) and run `make`. The details are in
[GETTING-STARTED](docs/GETTING-STARTED.md).

## Legal

The game belongs to Konami and its rights holders. The licence in `LICENSE`
covers only the tools, comments, analysis and documentation here. See
[LEGAL-NOTICE.md](LEGAL-NOTICE.md).
