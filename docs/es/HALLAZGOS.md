# Hallazgos

Todo leído en el código.

## Una capa que para la mitad de los golpes

En las escenas de acción cada golpe quita un punto de vida y se empieza con 20
(`p11:A7C5`). Si se lleva el objeto 11, la capa (マント), solo cuenta un golpe
de cada dos (`p11:A7B8`, contador `0xE3B4`).

## La contraseña es la partida entera

Los 62 bytes de la partida (desde `0xEB40`) más un CRC-16 (polinomio `0xA001`,
`p14:BBAD`), todo mezclado con una clave: 130 letras (`p14:BAAC`). Si el CRC no
cuadra, no se carga (`p14:BCEA`).

## Graba en otro cartucho

Además de cinta y disco, busca en las ranuras un cartucho con «YZ» en `0x4010`
y le habla por `0x8000` (`p01:60CB`).

## En la historia, el protagonista eres tú

La historia pone «あなた» («tú») como primer nombre antes de presentar a los
personajes (`p04:6E5D`).

## Los jefes se dibujan con fichas

Siete de los nueve no son sprites: se pintan en la pantalla de nombres en su
primer paso. El de la escena 1 baja fila a fila hasta su sitio (`p10:8E0D`).
