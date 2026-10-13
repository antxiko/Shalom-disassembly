# Getting started

The ROM is not distributed. You need the Japanese one (GoodMSX, sha256
`658ad7ef...`, 262,144 bytes) at the root of the repository as `shalom.rom`.

```
make comprueba    # the ROM's sha256
make              # the listing, the byte-for-byte rebuild, sanity and the tests
make verify       # just the rebuild: the 32 banks must give back the ROM
make test         # the tests
make densidad     # how much is commented, bank by bank
make imagenes     # the website pictures, from the ROM (Python with PIL)
make musica       # the MP3s and the music pages (Python with numpy and lameenc)
make web          # the HTML pages
```

You need `pasmo` to reassemble and Python 3.

## Where things are

- `src/shalom_pNN.asm`: the listing of each bank (p00 to p31).
- `src/pNN.notes`: the hand notes for each bank.
- `tools/anotaciones.py`: the names of the routines, the RAM and the records.
- `tools/`: the tools that draw and check (see [The code](THE-CODE.html)).
