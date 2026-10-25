# El código

El listado se reensambla byte a byte con `make verify`: los 32 bancos dan la
ROM entera. Está todo explicado (código o datos con quien los lee) y el 42,7 %
de las instrucciones lleva comentario; ninguna rutina queda por debajo del 10 %
y no hay ningún `call` a una rutina sin nombre.

## Cómo está hecho

- `tools/bancos.py` traza el cartucho entero llevando la cuenta de qué banco
  hay en cada ventana; de ahí salen las entradas de cada banco.
- `tools/anotaciones.py` tiene los nombres de las rutinas, de la RAM y de las
  fichas (personaje, actores, objetos, proyectiles, canales de sonido).
- `src/pNN.notes`: las notas a mano de cada banco.

## Lo que dibuja (desde las tablas, con código nuestro)

| Herramienta | Qué |
|---|---|
| `pantalla.py` | la VRAM: RLE, tercios y la imagen con la paleta del TMS9918 |
| `titulo.py` | el rótulo y el título |
| `salas.py`, `mundo.py` | cada sala y el mundo |
| `personajes.py` | Shalom y su GIF |
| `actores.py` | los personajes de las salas |
| `historia.py`, `escena.py` | la historia y la escena inicial |
| `accion.py` | las escenas de acción y sus jefes |
| `marcador.py` | las viñetas del marcador |
| `textos.py` | los textos con la tabla de la fuente |
| `musica.py` | la música, ejecutando el motor del cartucho |
| `imagenes.py` | todas las imágenes de la web |

## Lo que coteja (no dibuja)

- `coteja_actores.py`: ejecuta `crea_actor` en `tools/z80run.py` y compara el
  fotograma con el leído: 300 de 302.
- `coteja_psg.py` y `omsx_psg.tcl`: la música contra openMSX.

## Código compartido con otros cartuchos de Konami

Este desensamblado se ha comparado, instrucción por instrucción, con
todos los demás de Konami de la serie. Cuenta un bloque cuando las
mismas instrucciones, al menos seis desde una etiqueta hasta su `ret`
o su salto sin condición, están en los dos cartuchos; las direcciones
no se miran, porque cambian de un cartucho a otro. De los otros 57,
**48** tienen al menos un bloque en común con este; estos son los
que más comparten:

| Cartucho | Bloques | Instrucciones | Por ejemplo (aquí = allí) |
|---|---:|---:|---|
| [Konami’s Game Master 2](https://antxiko.github.io/GameMaster2-disassembly/es/) | 67 | 917 | `mezclador` (p29:6C07) = `sonido_mezclador` |
| [King's Valley II](https://antxiko.github.io/KingsValley2-disassembly/es/) | 54 | 735 | `orden_eb` (p29:69C0) |
| [Salamander - Operation X](https://antxiko.github.io/Salamander-disassembly/es/) | 49 | 614 | `bytes_a_vram` (p00:59C2) = `lista_a_vram` |
| [Parodius](https://antxiko.github.io/Parodius-disassembly/es/) | 45 | 567 | `arranca_canal` (p29:60C0) = `carga_canal` |
| [Hai no Majutsushi - Mahjong 2](https://antxiko.github.io/Majutsushi-disassembly/es/) | 43 | 553 | `cartucho_en_8000` (p00:40BD) |
| [The Pro Yakyuu Gekitotsu Pennant Race](https://antxiko.github.io/PennantRace-disassembly/es/) | 43 | 539 | `cartucho_en_8000` (p00:40BD) = `cartucho_en_pagina_2` |
| [Nemesis 3 - The Eve of Destruction](https://antxiko.github.io/Nemesis3-disassembly/es/) | 41 | 521 | `cartucho_en_8000` (p00:40BD) |
| [F-1 Spirit — The Way to Formula 1](https://antxiko.github.io/F1Spirit-disassembly/es/) | 35 | 395 | `arranca_canal` (p29:60C0) = `SONIDO_CANAL` |
| [Nemesis 2](https://antxiko.github.io/Nemesis2-disassembly/es/) | 34 | 403 | `envolvente_al_psg` (p29:6BD9) = `envolvente_del_psg` |
| [Gekitotsu Pennant Race 2](https://antxiko.github.io/PennantRace2-disassembly/es/) | 31 | 401 | `orden_eb` (p29:69C0) |

La matriz entera, los 58 cartuchos entre sí, está en
[Las rutinas](https://antxiko.github.io/MSX-disassembly-database/es/LAS-RUTINAS.html) de la base de datos de la
serie, con el método y el programa que la mide.
