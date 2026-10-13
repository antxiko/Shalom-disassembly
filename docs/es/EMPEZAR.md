# Empezar

La ROM no se distribuye. Hace falta la japonesa (GoodMSX, sha256
`658ad7ef...`, 262.144 bytes) en la raíz del repositorio como `shalom.rom`.

```
make comprueba    # el sha256 de la ROM
make              # el listado, el reensamblado byte a byte, sanity y los tests
make verify       # solo el reensamblado: los 32 bancos tienen que dar la ROM
make test         # los tests
make densidad     # cuánto está comentado, banco a banco
make imagenes     # las imágenes de la web, desde la ROM (Python con PIL)
make musica       # los MP3 y las páginas de la música (Python con numpy y lameenc)
make web          # las páginas HTML
```

Hace falta `pasmo` para reensamblar y Python 3.

## Dónde está cada cosa

- `src/shalom_pNN.asm`: el listado de cada banco (p00 a p31).
- `src/pNN.notes`: las notas a mano de cada banco.
- `tools/anotaciones.py`: los nombres de las rutinas, de la RAM y de las fichas.
- `tools/`: las herramientas que dibujan y cotejan (ver [El código](EL-CODIGO.html)).
