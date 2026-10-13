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
