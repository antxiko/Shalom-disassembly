# Shalom: Knightmare III - desensamblado comentado

*(Also [in English](README.md).)*

El desensamblado comentado de **Shalom: Knightmare III** (Konami, 1987, RC-754)
para MSX: un MegaROM de 256 KB con el mapper de Konami sin SCC, treinta y dos
bancos de 8 KB.

- **100 %** del binario explicado: 54.779 bytes de código y 207.365 de datos
  con nombre.
- **42,7 %** del listado comentado, 3.418 rutinas, ninguna por debajo del 10 %
  de comentarios.
- El listado se reensambla en la ROM original **byte a byte**.
- El mundo de 512 salas y sus mazmorras, el título, la historia, la escena
  inicial, Shalom, los 265 personajes que se ven con su nombre, las escenas de
  acción y sus jefes y las viñetas del marcador están **dibujados desde la
  ROM**, no capturados. Los 902 textos en japonés salen con la tabla de la
  fuente del cartucho, y las 42 músicas, ejecutando su motor de sonido.

La web: <https://antxiko.github.io/Shalom-disassembly/es/>
(en inglés: <https://antxiko.github.io/Shalom-disassembly/>).

## Reproducirlo

La imagen del cartucho no se distribuye. Pon la tuya en la raíz como
`shalom.rom` (sha256 `658ad7ef...`) y ejecuta `make`. Los detalles, en
[EMPEZAR](docs/es/EMPEZAR.md).

## Legal

El juego es de Konami y de sus titulares de derechos. La licencia de `LICENSE`
cubre solo las herramientas, los comentarios, el análisis y la documentación de
aquí. Ver [AVISO-LEGAL.md](AVISO-LEGAL.md).
