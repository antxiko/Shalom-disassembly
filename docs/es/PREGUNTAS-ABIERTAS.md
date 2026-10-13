# Preguntas abiertas

- **Los jefes de las escenas 2 y 4** no ponen fichas: van en sprites, y no
  están dibujados.
- **Los personajes que van en fichas** (bit 15 del tipo en `p07:8BC2`) no están
  pintados.
- **El árbol de respuestas de la escena inicial**: los mensajes están, pero no
  qué respuesta va con cada opción.
- **Los objetos 13-24** se llaman todos あける en `p04:7A15`.
- **20 tipos de personaje** se borran al crearlos con las banderas de la
  historia a cero: su fotograma sale solo de leer su rutina.
- **Cinco músicas** (0x2C, 0x38, 0x3C, 0x3D y 0x5B) no las pide ninguna rutina
  del listado, y la 0x60 no vuelve al principio en 25 minutos.
- **Las escenas de acción** se montan sobre la sala de la que se viene; aquí
  parten de una pantalla vacía.
- **El cotejo de la VRAM** contra openMSX está pendiente.
