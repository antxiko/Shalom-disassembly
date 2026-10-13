; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 08 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; Etiquetas que no caen en ninguna posicion emitida del listado
; (destinos fuera del binario o dentro de una instruccion).
; ----------------------------------------------------------------------
L_ABBD:	equ 0x0abbd

; ----------------------------------------------------------------------
; DATOS opciones_9FF9_cola: [m1][m2], un puntero por bit de m2 (p00:5532) y,
;   por cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E) (sigue del banco 7); lo leen p00:5401 (11 bytes)
;   0xa000..0xa00b  (11 bytes)
DATA_opciones_9FF9_cola:
	defb 001h,001h,002h,001h,003h,001h,004h,001h,005h,001h,006h	; a000  ...........

; ----------------------------------------------------------------------
; DATOS opciones_A00B: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (18 bytes)
;   0xa00b..0xa01d  (18 bytes)
DATA_opciones_A00B:
	defb 0ffh,000h,001h,00ah,001h,000h,001h,001h,001h,002h,001h,003h,001h,004h,001h,005h	; a00b  ................
	defb 001h,006h	; a01b

; ----------------------------------------------------------------------
; DATOS opciones_A01D: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (18 bytes)
;   0xa01d..0xa02f  (18 bytes)
DATA_opciones_A01D:
	defb 0ffh,000h,001h,008h,001h,000h,001h,001h,001h,002h,001h,003h,001h,004h,001h,005h	; a01d  ................
	defb 001h,006h	; a02d

; ----------------------------------------------------------------------
; DATOS opciones_A02F: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (18 bytes)
;   0xa02f..0xa041  (18 bytes)
DATA_opciones_A02F:
	defb 0ffh,000h,001h,009h,001h,000h,001h,001h,001h,002h,001h,003h,001h,004h,001h,005h	; a02f  ................
	defb 001h,006h	; a03f

; ----------------------------------------------------------------------
; DATOS opciones_A041: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0xa041..0xa04b  (10 bytes)
DATA_opciones_A041:
	defb 087h,080h,04bh,0a0h,001h,004h,001h,005h,001h,006h	; a041  ..K.......

; ----------------------------------------------------------------------
; DATOS subopciones_A04B: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0xa04b..0xa04e  (3 bytes)
DATA_subopciones_A04B:
	defb 029h,001h,007h	; a04b

; ----------------------------------------------------------------------
; DATOS opciones_A04E: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0xa04e..0xa05a  (12 bytes)
DATA_opciones_A04E:
	defb 097h,090h,05ah,0a0h,05eh,0a0h,001h,00ah,001h,00bh,001h,00fh	; a04e  ..Z.^.......

; ----------------------------------------------------------------------
; DATOS subopciones_A05A: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0xa05a..0xa05e  (4 bytes)
DATA_subopciones_A05A:
	defb 006h,001h,008h,011h	; a05a

; ----------------------------------------------------------------------
; DATOS subopciones_A05E: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0xa05e..0xa061  (3 bytes)
DATA_subopciones_A05E:
	defb 02ah,001h,00ch	; a05e

; ----------------------------------------------------------------------
; DATOS subopciones_A061: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (2 bytes)
;   0xa061..0xa063  (2 bytes)
DATA_subopciones_A061:
	defb 006h,000h	; a061

; ----------------------------------------------------------------------
; DATOS resto_A063: lo apuntan con el banco puesto p07:8378 (0xA063); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p07:8378 (672 bytes)
;   0xa063..0xa303  (672 bytes)
DATA_resto_A063:
	defb 000h,000h,000h,000h,08eh,020h,082h,0a8h,076h,090h,000h,000h,083h,003h,097h,070h	; a063  ..... ..v......p
	defb 08bh,004h,07eh,020h,097h,074h,09dh,000h,075h,097h,074h,07ch,091h,09ah,07ch,000h	; a073  ..~ .t..u.t|..|.
	defb 091h,097h,020h,000h,09ah,0afh,083h,003h,08eh,071h,077h,000h,076h,0ach,09ah,000h	; a083  .. ......qw.v...
	defb 082h,096h,083h,000h,07ah,089h,004h,09ah,077h,098h,083h,000h,095h,089h,09dh,000h	; a093  ....z...w.......
	defb 000h,0c5h,0ffh,000h,099h,08fh,000h,000h,070h,020h,07ah,000h,08eh,097h,070h,000h	; a0a3  ........p z...p.
	defb 08ch,003h,099h,084h,08ah,004h,073h,098h,085h,079h,096h,000h,075h,082h,097h,084h	; a0b3  ......s..y..u...
	defb 07bh,092h,09dh,000h,095h,07fh,090h,000h,07ah,096h,000h,000h,089h,004h,072h,09ah	; a0c3  {.......z.....r.
	defb 08fh,075h,000h,000h,078h,097h,020h,000h,077h,003h,086h,07ch,08ch,004h,083h,09ah	; a0d3  .u..x. .w..|....
	defb 082h,003h,0a8h,020h,097h,020h,077h,000h,082h,099h,07ah,000h,070h,092h,07ch,000h	; a0e3  ... . w...z.p.|.
	defb 08ch,003h,098h,082h,091h,096h,085h,000h,08eh,090h,000h,000h,07fh,003h,09dh,082h	; a0f3  ................
	defb 075h,08fh,074h,090h,08dh,07dh,070h,000h,070h,097h,09dh,000h,07bh,078h,090h,000h	; a103  u.t..}p.p...{x..
	defb 089h,003h,020h,098h,046h,0a5h,042h,04eh,07ch,079h,0afh,083h,075h,020h,098h,000h	; a113  .. .F.BN|y..u ..
	defb 082h,071h,096h,000h,099h,071h,000h,000h,099h,08ah,003h,000h,089h,004h,08bh,000h	; a123  .q...q..........
	defb 089h,09dh,084h,000h,07ah,072h,098h,000h,08eh,020h,08eh,000h,08eh,020h,08eh,09dh	; a133  ....zr... ... ..
	defb 070h,09dh,084h,000h,093h,076h,003h,000h,077h,097h,07ch,000h,07fh,084h,000h,000h	; a143  p....v..w.|.....
	defb 098h,07eh,09dh,000h,070h,099h,077h,000h,093h,07ah,072h,000h,05fh,0b0h,041h,000h	; a153  .~..p.w..zr._.A.
	defb 08ch,003h,09dh,000h,08fh,096h,000h,000h,082h,0a8h,074h,07ch,07dh,071h,078h,000h	; a163  ..........t|}qx.
	defb 071h,07bh,078h,003h,070h,076h,093h,08eh,076h,095h,089h,096h,071h,083h,072h,000h	; a173  q{x.pv..v...q.r.
	defb 075h,084h,092h,097h,075h,077h,000h,000h,073h,084h,081h,000h,08ah,075h,07bh,074h	; a183  u...uw..s....u{t
	defb 08bh,079h,08ah,080h,073h,098h,08bh,000h,08ch,004h,075h,000h,095h,096h,090h,000h	; a193  .y..s.....u.....
	defb 074h,090h,097h,000h,070h,089h,07ch,003h,07dh,098h,08eh,000h,092h,077h,003h,096h	; a1a3  t...p.|.}....w..
	defb 075h,097h,099h,074h,07ah,096h,077h,000h,08eh,084h,000h,000h,075h,084h,09dh,000h	; a1b3  u..tz.w.....u...
	defb 08eh,09dh,08eh,09dh,08ch,003h,082h,0a8h,089h,003h,098h,09dh,07fh,086h,000h,000h	; a1c3  ................
	defb 089h,004h,082h,0a8h,071h,07ah,072h,000h,098h,020h,088h,000h,08ch,003h,08ch,003h	; a1d3  ....qzr.. ......
	defb 095h,084h,000h,000h,0f2h,0bah,000h,000h,070h,09dh,084h,000h,098h,081h,000h,000h	; a1e3  ........p.......
	defb 08eh,09ah,09dh,000h,076h,097h,074h,09dh,077h,003h,09ah,09dh,054h,045h,003h,04fh	; a1f3  ....v.t.w...TE.O
	defb 050h,043h,000h,000h,05eh,041h,0d6h,000h,054h,045h,003h,043h,05bh,047h,041h,000h	; a203  PC..^A..TE.C[GA.
	defb 053h,04bh,054h,067h,046h,0a6h,045h,06bh,04ah,04ah,046h,000h,063h,05eh,049h,000h	; a213  SKTgF.EkJJF.c^I.
	defb 042h,043h,059h,066h,041h,047h,001h,000h,067h,0a5h,042h,000h,04bh,0a4h,042h,000h	; a223  BCYfAG..g.B.K.B.
	defb 04fh,048h,05eh,04ah,05eh,0a6h,046h,041h,000h,0e3h,0ffh,000h,093h,08ah,003h,09dh	; a233  OH^J^.FA........
	defb 08fh,082h,003h,000h,082h,090h,084h,000h,087h,08bh,003h,000h,08bh,07bh,003h,078h	; a243  .............{.x
	defb 08bh,003h,07fh,09dh,089h,003h,098h,084h,070h,077h,003h,000h,07fh,003h,089h,000h	; a253  ........pw......
	defb 093h,07eh,09dh,000h,094h,082h,079h,000h,070h,075h,003h,08dh,07fh,098h,07fh,000h	; a263  .~....y.pu......
	defb 098h,07fh,003h,09dh,08ch,004h,07fh,089h,084h,020h,093h,020h,073h,097h,07ah,003h	; a273  ......... . s.z.
	defb 084h,089h,003h,000h,09bh,0afh,083h,000h,080h,0ach,074h,000h,07fh,003h,072h,000h	; a283  ..........t...r.
	defb 075h,020h,098h,000h,096h,081h,075h,000h,073h,098h,000h,000h,07bh,0aah,089h,003h	; a293  u ....u.s...{...
	defb 099h,092h,000h,000h,07bh,003h,098h,000h,072h,071h,093h,000h,08ah,003h,08ah,003h	; a2a3  ....{...rq......
	defb 070h,08bh,003h,083h,089h,004h,07bh,0ach,099h,0afh,08dh,004h,07dh,089h,004h,000h	; a2b3  p.....{.....}...
	defb 09bh,096h,09dh,000h,07ch,083h,020h,096h,097h,07eh,003h,098h,07eh,003h,089h,003h	; a2c3  ....|. ..~..~...
	defb 074h,096h,09dh,000h,074h,08ah,003h,09dh,070h,082h,003h,09dh,093h,08bh,074h,020h	; a2d3  t...t...p.....t
	defb 089h,003h,089h,020h,07ch,020h,077h,000h,08fh,084h,099h,000h,08bh,081h,000h,000h	; a2e3  ... | w.........
	defb 07bh,096h,07fh,000h,075h,086h,077h,000h,08ch,076h,000h,000h,089h,003h,08fh,093h	; a2f3  {...u.w..v......

; ======================================================================
; CODIGO 0xa303..0xa5c5  (706 bytes)
; ======================================================================


actor_a5:		; la rutina del actor de tipo 0xA5 (p07:882D)
	ld a,(ix+002h)		;a303   ; lee el paso del actor
	dec a			;a306
	jr z,L_A32C		;a307
	dec a			;a309
	jr z,L_A367		;a30a
	ld hl,0eb6ch		;a30c   ; apunta a las banderas de la historia, byte 0x2C (se graban con la partida)
	set 7,(hl)		;a30f
	ld a,001h		;a311
	ld (0e3a9h),a		;a313   ; guarda un actor lleva al personaje (no hay menu)
	inc (ix+002h)		;a316   ; sube el paso del actor
	ld (ix+00bh),002h		;a319   ; la direccion a la que mira el actor = 0x02
	ld (ix+008h),010h		;a31d   ; el fotograma del actor (p07:97E8) = 0x10
	ld (ix+00dh),000h		;a321   ; si se puede hablar con el actor (p02:8D10) = 0x00
	call 08b01h		;a325   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
	call 04597h		;a328   ; sonido_07: pide el sonido 7
	ret			;a32b
L_A32C:
	ld a,(ix+00ah)		;a32c   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a32f
	jr z,L_A33A		;a330
	call sigue_andando		;a332   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld (ix+008h),010h		;a335   ; el fotograma del actor (p07:97E8) = 0x10
	ret			;a339
L_A33A:
	ld a,(0e3c1h)		;a33a   ; lee la Y del personaje
	sub (ix+003h)		;a33d   ; le resta la Y del actor
	cp 011h		;a340
	jr c,L_A35C		;a342
	ld a,(ix+00bh)		;a344   ; lee la direccion a la que mira el actor
	ld (ix+00ah),a		;a347   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;a34a   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld b,004h		;a34e
	ld l,(ix+003h)		;a350   ; lee la Y del actor
	ld h,(ix+004h)		;a353   ; lee la X del actor
	call 05dd3h		;a356   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp 08b26h		;a359   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
L_A35C:
	call 08005h		;a35c   ; sonido_37: pide el sonido 0x37
	ld (ix+01fh),010h		;a35f
	inc (ix+002h)		;a363   ; sube el paso del actor
	ret			;a366
L_A367:
	dec (ix+01fh)		;a367
	ret nz			;a36a
	xor a			;a36b
	ld (0e3a9h),a		;a36c   ; guarda un actor lleva al personaje (no hay menu)
	ld (0e3c0h),a		;a36f   ; guarda el modo del personaje (tabla p01:718E)
	call 08bb4h		;a372   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,003h		;a375
	ld (0e368h),a		;a377   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	xor a			;a37a
	ld b,a			;a37b
	ld l,(ix+003h)		;a37c   ; lee la Y del actor
	ld h,(ix+004h)		;a37f   ; lee la X del actor
	call 05dd3h		;a382   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld c,00ah		;a385
	jp 0561dh		;a387   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
actor_01:		; la rutina de los actores de tipo 0x01, 0x02, 0x03, 0x05 (p07:882D)
	ld a,(ix+002h)		;a38a   ; lee el paso del actor
	or a			;a38d
	jr nz,L_A3BD		;a38e
	call 043d0h		;a390   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	cp 07fh		;a393
	ret c			;a395
	ld (ix+021h),a		;a396
	ld (ix+020h),003h		;a399
	ld a,(ix+000h)		;a39d   ; lee el tipo del actor (bajo)
	cp 002h		;a3a0
	jr z,empieza_paseo_10		;a3a2
	cp 005h		;a3a4
	jr z,empieza_paseo_08		;a3a6
	jp empieza_paseo_00		;a3a8   ; empieza_paseo_00: el siguiente paso, los fotogramas 0x00-0x06 y el de su direccion
empieza_paseo_10:		; el siguiente paso, los fotogramas 0x10-0x16 y el de su direccion
	inc (ix+002h)		;a3ab   ; sube el paso del actor
	call 08aeeh		;a3ae   ; fotogramas_10: los fotogramas de las cuatro direcciones: 0x10, 0x12, 0x14, 0x16
	jp 08b11h		;a3b1   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
empieza_paseo_08:		; el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
	inc (ix+002h)		;a3b4   ; sube el paso del actor
	call 08ae6h		;a3b7   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
	jp 08b11h		;a3ba   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
L_A3BD:
	ld a,(ix+00ah)		;a3bd   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a3c0
	jp nz,sigue_andando		;a3c1   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(0e003h)		;a3c4   ; lee la cuenta de cuadros
	ld b,(ix+021h)		;a3c7
	and b			;a3ca
	jr z,L_A3E2		;a3cb
	ld a,(ix+023h)		;a3cd
	dec a			;a3d0
	jr z,fotograma_22		;a3d1
	ld (ix+023h),001h		;a3d3
	call 043d0h		;a3d7   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 003h		;a3da
	inc a			;a3dc
	ld (ix+022h),a		;a3dd
	jr fotograma_22		;a3e0
L_A3E2:
	ld a,003h		;a3e2
L_A3E4:
	ld h,(ix+004h)		;a3e4   ; lee la X del actor
	ld l,(ix+003h)		;a3e7   ; lee la Y del actor
	call 05d6ah		;a3ea
	jr z,L_A3F6		;a3ed
	cp 004h		;a3ef
	jr z,fotograma_22		;a3f1
	inc a			;a3f3
	jr L_A3E4		;a3f4
L_A3F6:
	ld a,(ix+020h)		;a3f6
	ld l,(ix+003h)		;a3f9   ; lee la Y del actor
	ld h,(ix+004h)		;a3fc   ; lee la X del actor
	call 05d6ah		;a3ff
	call nz,invierte_direccion_20		;a402   ; invierte_direccion_20: (ix+0x20) XOR 7: la direccion contraria
	ld (ix+00ah),a		;a405   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+00bh),a		;a408   ; guarda la direccion a la que mira el actor
	ld (ix+005h),001h		;a40b   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld (ix+023h),000h		;a40f
	ld b,004h		;a413
	ld l,(ix+003h)		;a415   ; lee la Y del actor
	ld h,(ix+004h)		;a418   ; lee la X del actor
	call 05dd3h		;a41b   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call fotograma_22		;a41e   ; fotograma_22: el fotograma de la direccion (ix+0x22)
	jp 08b26h		;a421   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
invierte_direccion_20:		; (ix+0x20) XOR 7: la direccion contraria
	ld a,(ix+020h)		;a424
	xor 007h		;a427
	ld (ix+020h),a		;a429
	ret			;a42c
fotograma_22:		; el fotograma de la direccion (ix+0x22)
	ld a,(ix+022h)		;a42d
	call 08b14h		;a430
	ret			;a433
actor_0e:		; la rutina del actor de tipo 0x0E (p07:882D)
	ld a,01ah		;a434
	jr L_A442		;a436
actor_0f:		; la rutina del actor de tipo 0x0F (p07:882D)
	ld a,01ch		;a438
	jr L_A442		;a43a
actor_04:		; la rutina de los actores de tipo 0x04, 0xF9 (p07:882D)
	ld a,01dh		;a43c
	jr L_A442		;a43e
actor_07:		; la rutina del actor de tipo 0x07 (p07:882D)
	ld a,01bh		;a440
L_A442:
	ld (ix+008h),a		;a442   ; guarda el fotograma del actor (p07:97E8)
	ld a,(ix+002h)		;a445   ; lee el paso del actor
	or a			;a448
	ret nz			;a449
	inc (ix+002h)		;a44a   ; sube el paso del actor
	jp 08ad6h		;a44d   ; fotogramas_1a: los fotogramas de las cuatro direcciones: 0x1A, 0x1B, 0x1C, 0x1D
actor_f4:		; la rutina del actor de tipo 0xF4 (p07:882D)
	ld a,01bh		;a450
	jr L_A456		;a452
actor_f5:		; la rutina del actor de tipo 0xF5 (p07:882D)
	ld a,01ah		;a454
L_A456:
	ld (ix+008h),a		;a456   ; guarda el fotograma del actor (p07:97E8)
	ld a,(ix+002h)		;a459   ; lee el paso del actor
	or a			;a45c
	ret nz			;a45d
	inc (ix+002h)		;a45e   ; sube el paso del actor
	jp 08ad6h		;a461   ; fotogramas_1a: los fotogramas de las cuatro direcciones: 0x1A, 0x1B, 0x1C, 0x1D
actor_f6:		; la rutina del actor de tipo 0xF6 (p07:882D)
	ld a,011h		;a464
	jr L_A46E		;a466
actor_f7:		; la rutina del actor de tipo 0xF7 (p07:882D)
	ld a,010h		;a468
	jr L_A46E		;a46a
actor_f8:		; la rutina del actor de tipo 0xF8 (p07:882D)
	ld a,006h		;a46c
L_A46E:
	ld (ix+008h),a		;a46e   ; guarda el fotograma del actor (p07:97E8)
	ld a,(ix+002h)		;a471   ; lee el paso del actor
	and 07fh		;a474
	ret nz			;a476
	inc (ix+002h)		;a477   ; sube el paso del actor
	jp 08b01h		;a47a   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_fa:		; la rutina del actor de tipo 0xFA (p07:882D)
	ld a,(ix+002h)		;a47d   ; lee el paso del actor
	dec a			;a480
	jr z,L_A48A		;a481
	dec a			;a483
	jr z,L_A4C0		;a484
	dec a			;a486
	ret z			;a487
	jr actor_07		;a488
L_A48A:
	ld a,(0e3c1h)		;a48a   ; lee la Y del personaje
	cp 050h		;a48d
	jr z,L_A497		;a48f
	ld a,(0e3c2h)		;a491   ; lee la X del personaje
	cp 050h		;a494
	ret nz			;a496
L_A497:
	inc (ix+002h)		;a497   ; sube el paso del actor
	ld (ix+008h),01ch		;a49a   ; el fotograma del actor (p07:97E8) = 0x1C
	ld a,009h		;a49e
	ld (0e3c0h),a		;a4a0   ; guarda el modo del personaje (tabla p01:718E)
	ld a,003h		;a4a3
	ld (ix+00bh),a		;a4a5   ; guarda la direccion a la que mira el actor
	ld (ix+005h),001h		;a4a8   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld (ix+00ah),a		;a4ac   ; guarda la direccion en la que anda el actor (0: quieto)
	ld b,004h		;a4af
	ld l,(ix+003h)		;a4b1   ; lee la Y del actor
	ld h,(ix+004h)		;a4b4   ; lee la X del actor
	call 05dd3h		;a4b7   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08b11h		;a4ba   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	jp 08b26h		;a4bd   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
L_A4C0:
	ld a,(ix+00ah)		;a4c0   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a4c3
	jr z,L_A4CE		;a4c4
	call sigue_andando		;a4c6   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld (ix+008h),01ch		;a4c9   ; el fotograma del actor (p07:97E8) = 0x1C
	ret			;a4cd
L_A4CE:
	inc (ix+002h)		;a4ce   ; sube el paso del actor
	ld (ix+008h),01ah		;a4d1   ; el fotograma del actor (p07:97E8) = 0x1A
	xor a			;a4d5
	ld (0e3c0h),a		;a4d6   ; guarda el modo del personaje (tabla p01:718E)
	ret			;a4d9
actor_06:		; la rutina del actor de tipo 0x06 (p07:882D)
	ld a,(ix+002h)		;a4da   ; lee el paso del actor
	or a			;a4dd
	ret nz			;a4de
	ld a,(0eb6fh)		;a4df   ; lee las banderas de la historia, byte 0x2F (se graban con la partida)
	rla			;a4e2
	jp nc,08bb4h		;a4e3   ; borra_actor: los 0x80 bytes de la ficha IX a cero
L_A4E6:
	inc (ix+002h)		;a4e6   ; sube el paso del actor
	ld (ix+008h),018h		;a4e9   ; el fotograma del actor (p07:97E8) = 0x18
	jp 08b01h		;a4ed   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_08:		; la rutina del actor de tipo 0x08 (p07:882D)
	ld a,(ix+002h)		;a4f0   ; lee el paso del actor
	or a			;a4f3
	jr nz,L_A51B		;a4f4
	ld (ix+005h),001h		;a4f6   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld (ix+00ah),000h		;a4fa   ; la direccion en la que anda el actor (0: quieto) = 0x00
	ld a,004h		;a4fe
	ld (ix+00bh),a		;a500   ; guarda la direccion a la que mira el actor
	ld (ix+020h),a		;a503
	ld (ix+021h),002h		;a506
	ld (ix+022h),009h		;a50a
	ld (ix+023h),005h		;a50e
	ld (ix+024h),a		;a512
	call 08b26h		;a515   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	jp empieza_paseo_08		;a518   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
L_A51B:
	call 08b11h		;a51b   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld a,(ix+00ah)		;a51e   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a521
	jr nz,L_A547		;a522
	ld a,(ix+024h)		;a524
	ld l,(ix+003h)		;a527   ; lee la Y del actor
	ld h,(ix+004h)		;a52a   ; lee la X del actor
	call 05d6ah		;a52d
	jp nz,08b26h		;a530   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	ld (ix+00bh),a		;a533   ; guarda la direccion a la que mira el actor
	ld (ix+00ah),a		;a536   ; guarda la direccion en la que anda el actor (0: quieto)
	ld b,004h		;a539
	ld l,(ix+003h)		;a53b   ; lee la Y del actor
	ld h,(ix+004h)		;a53e   ; lee la X del actor
	call 05dd3h		;a541   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp 08b26h		;a544   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
L_A547:
	ld a,(ix+003h)		;a547   ; lee la Y del actor
	ld l,a			;a54a
	ld h,(ix+004h)		;a54b   ; lee la X del actor
	or h			;a54e
	and 00fh		;a54f
	ret nz			;a551
	ld b,a			;a552
	ld a,(ix+00ah)		;a553   ; lee la direccion en la que anda el actor (0: quieto)
	ld (ix+00ah),b		;a556   ; guarda la direccion en la que anda el actor (0: quieto)
	cp 003h		;a559
	jr c,L_A584		;a55b
	dec a			;a55d
	xor 001h		;a55e
	inc a			;a560
	call 05dd3h		;a561   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	dec (ix+022h)		;a564
	jp nz,08b26h		;a567   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	ld (ix+022h),009h		;a56a
	ld a,(ix+021h)		;a56e
	ld (ix+00bh),a		;a571   ; guarda la direccion a la que mira el actor
	ld (ix+024h),a		;a574
	ld a,(ix+020h)		;a577
	dec a			;a57a
	xor 001h		;a57b
	inc a			;a57d
	ld (ix+020h),a		;a57e
	jp 08b26h		;a581   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
L_A584:
	dec a			;a584
	xor 001h		;a585
	inc a			;a587
	call 05dd3h		;a588   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld a,(ix+020h)		;a58b
	ld (ix+00bh),a		;a58e   ; guarda la direccion a la que mira el actor
	ld (ix+024h),a		;a591
	dec (ix+023h)		;a594
	jp nz,08b26h		;a597   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	ld (ix+023h),005h		;a59a
	ld a,(ix+021h)		;a59e
	dec a			;a5a1
	xor 001h		;a5a2
	inc a			;a5a4
	ld (ix+021h),a		;a5a5
	jp 08b26h		;a5a8   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
actor_09:		; la rutina del actor de tipo 0x09 (p07:882D)
	ld (ix+008h),002h		;a5ab   ; el fotograma del actor (p07:97E8) = 0x02
	ld a,(ix+002h)		;a5af   ; lee el paso del actor
	or a			;a5b2
	ret nz			;a5b3
	inc (ix+002h)		;a5b4   ; sube el paso del actor
	jp 08adeh		;a5b7   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
actor_0a:		; la rutina del actor de tipo 0x0A (p07:882D)
	ld (ix+00bh),002h		;a5ba   ; la direccion a la que mira el actor = 0x02
	ld a,(ix+002h)		;a5be   ; lee el paso del actor
	or a			;a5c1
	call 040abh		;a5c2   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A5C5: tabla de 3 palabras del despachador (call 0x408D en
;   0xA5C2); lo leen L_40AB (6 bytes)
;   0xa5c5..0xa5cb  (6 bytes)
DATA_saltos_A5C5:
	defb 0cbh,0a5h	; a5c5
	defb 0ddh,0a5h	; a5c7
	defb 04dh,0a6h	; a5c9

; ======================================================================
; CODIGO 0xa5cb..0xa668  (157 bytes)
; ======================================================================


L_A5CB:
	ld (ix+021h),030h		;a5cb
	ld (ix+01bh),002h		;a5cf
	inc (ix+002h)		;a5d3   ; sube el paso del actor
	ld (ix+008h),00ah		;a5d6   ; el fotograma del actor (p07:97E8) = 0x0A
	jp 08ae6h		;a5da   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
L_A5DD:
	ld a,(ix+00ah)		;a5dd   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a5e0
	jp nz,L_A625		;a5e1
	call 043d0h		;a5e4   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 003h		;a5e7
	jr nz,L_A5F3		;a5e9
	ld (ix+00ah),a		;a5eb   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+002h),002h		;a5ee   ; el paso del actor = 0x02
	ret			;a5f2
L_A5F3:
	ld a,(ix+01bh)		;a5f3
	ld l,(ix+003h)		;a5f6   ; lee la Y del actor
	ld h,(ix+004h)		;a5f9   ; lee la X del actor
	ld (0e8e0h),hl		;a5fc   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	call 05d6ah		;a5ff
	jp nz,08b11h		;a602   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld b,a			;a605
	call 05d89h		;a606
	ld a,b			;a609
	jp z,08b11h		;a60a   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld (ix+005h),001h		;a60d   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld (ix+00ah),a		;a611   ; guarda la direccion en la que anda el actor (0: quieto)
	ld b,004h		;a614
	ld l,(ix+003h)		;a616   ; lee la Y del actor
	ld h,(ix+004h)		;a619   ; lee la X del actor
	call 05dd3h		;a61c   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08b11h		;a61f   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	jp 08b26h		;a622   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
L_A625:
	call 08b11h		;a625   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld a,(ix+003h)		;a628   ; lee la Y del actor
	ld l,a			;a62b
	ld h,(ix+004h)		;a62c   ; lee la X del actor
	or h			;a62f
	and 00fh		;a630
	ret nz			;a632
	ld (ix+005h),a		;a633   ; guarda si el actor se mueve (bit 0; p07:87FA)
	ld a,(ix+01bh)		;a636
	xor 003h		;a639
	ld (ix+01bh),a		;a63b
	ld a,(ix+00ah)		;a63e   ; lee la direccion en la que anda el actor (0: quieto)
	dec a			;a641
	xor 001h		;a642
	inc a			;a644
	ld b,000h		;a645
	ld (ix+00ah),b		;a647   ; guarda la direccion en la que anda el actor (0: quieto)
	jp 05dd3h		;a64a   ; pon_bloque_de_enfrente: pone B en el bloque de delante
L_A64D:
	call 08b11h		;a64d   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	dec (ix+021h)		;a650
	ret nz			;a653
	dec (ix+002h)		;a654   ; baja el paso del actor
	ld (ix+021h),030h		;a657
	ret			;a65b
actor_0b:		; la rutina del actor de tipo 0x0B (p07:882D)
	ld (ix+00bh),001h		;a65c   ; la direccion a la que mira el actor = 0x01
	ld a,(ix+002h)		;a660   ; lee el paso del actor
	and 07fh		;a663
	call 040abh		;a665   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A668: tabla de 3 palabras del despachador (call 0x408D en
;   0xA665); lo leen L_40AB (6 bytes)
;   0xa668..0xa66e  (6 bytes)
DATA_saltos_A668:
	defb 06eh,0a6h	; a668
	defb 080h,0a6h	; a66a
	defb 04dh,0a6h	; a66c

; ======================================================================
; CODIGO 0xa66e..0xa6a1  (51 bytes)
; ======================================================================


L_A66E:
	ld (ix+021h),030h		;a66e
	ld (ix+01bh),001h		;a672
	inc (ix+002h)		;a676   ; sube el paso del actor
	ld (ix+008h),008h		;a679   ; el fotograma del actor (p07:97E8) = 0x08
	jp 08ae6h		;a67d   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
L_A680:
	ld a,(ix+00ah)		;a680   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a683
	jp nz,L_A625		;a684
	call 043d0h		;a687   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 003h		;a68a
	jp nz,L_A5F3		;a68c
	ld (ix+00ah),a		;a68f   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+002h),002h		;a692   ; el paso del actor = 0x02
	ret			;a696
actor_0c:		; la rutina del actor de tipo 0x0C (p07:882D)
	ld (ix+00bh),002h		;a697   ; la direccion a la que mira el actor = 0x02
	ld a,(ix+002h)		;a69b   ; lee el paso del actor
	call 040abh		;a69e   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A6A1: tabla de 3 palabras del despachador (call 0x408D en
;   0xA69E); lo leen L_40AB (6 bytes)
;   0xa6a1..0xa6a7  (6 bytes)
DATA_saltos_A6A1:
	defb 0a7h,0a6h	; a6a1
	defb 0b5h,0a6h	; a6a3
	defb 04dh,0a6h	; a6a5

; ======================================================================
; CODIGO 0xa6a7..0xa6d8  (49 bytes)
; ======================================================================


L_A6A7:
	ld (ix+01bh),002h		;a6a7
	inc (ix+002h)		;a6ab   ; sube el paso del actor
	ld (ix+008h),00ah		;a6ae   ; el fotograma del actor (p07:97E8) = 0x0A
	jp 08ae6h		;a6b2   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
L_A6B5:
	ld a,(ix+00ah)		;a6b5   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a6b8
	jp nz,L_A625		;a6b9
	call 043d0h		;a6bc   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 003h		;a6bf
	jp nz,L_A5F3		;a6c1
	ld (ix+00ah),a		;a6c4   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+002h),002h		;a6c7   ; el paso del actor = 0x02
	ret			;a6cb
actor_0d:		; la rutina del actor de tipo 0x0D (p07:882D)
	ld (ix+00bh),001h		;a6cc   ; la direccion a la que mira el actor = 0x01
	ld a,(ix+002h)		;a6d0   ; lee el paso del actor
	and 07fh		;a6d3
	call 040abh		;a6d5   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A6D8: tabla de 3 palabras del despachador (call 0x408D en
;   0xA6D5); lo leen L_40AB (6 bytes)
;   0xa6d8..0xa6de  (6 bytes)
DATA_saltos_A6D8:
	defb 0deh,0a6h	; a6d8
	defb 0ech,0a6h	; a6da
	defb 04dh,0a6h	; a6dc

; ======================================================================
; CODIGO 0xa6de..0xa72e  (80 bytes)
; ======================================================================


L_A6DE:
	ld (ix+020h),001h		;a6de
	inc (ix+002h)		;a6e2   ; sube el paso del actor
	ld (ix+008h),008h		;a6e5   ; el fotograma del actor (p07:97E8) = 0x08
	jp 08ae6h		;a6e9   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
L_A6EC:
	ld a,(ix+00ah)		;a6ec   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a6ef
	jp nz,L_A625		;a6f0
	call 043d0h		;a6f3   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 003h		;a6f6
	jp nz,L_A5F3		;a6f8
	ld (ix+00ah),a		;a6fb   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+002h),002h		;a6fe   ; el paso del actor = 0x02
	ret			;a702
actor_af:		; la rutina de los actores de tipo 0xAF, 0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA y 14 mas (p07:882D)
	ld a,(ix+002h)		;a703   ; lee el paso del actor
	or a			;a706
	ret nz			;a707
	inc (ix+002h)		;a708   ; sube el paso del actor
	ld (ix+008h),013h		;a70b   ; el fotograma del actor (p07:97E8) = 0x13
	jp 08b01h		;a70f   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_a8:		; la rutina de los actores de tipo 0xA8, 0xC0, 0xC1, 0xC2, 0xC4 (p07:882D)
	ld a,(ix+002h)		;a712   ; lee el paso del actor
	or a			;a715
	jp nz,pasea		;a716   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	jp empieza_paseo_00		;a719   ; empieza_paseo_00: el siguiente paso, los fotogramas 0x00-0x06 y el de su direccion
actor_c3:		; la rutina del actor de tipo 0xC3 (p07:882D)
	ld a,(ix+002h)		;a71c   ; lee el paso del actor
	or a			;a71f
	jp nz,pasea		;a720   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	jp empieza_paseo_10		;a723   ; empieza_paseo_10: el siguiente paso, los fotogramas 0x10-0x16 y el de su direccion
actor_bc:		; la rutina del actor de tipo 0xBC (p07:882D)
	ld a,(ix+002h)		;a726   ; lee el paso del actor
	and 07fh		;a729
	call 040abh		;a72b   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A72E: tabla de 6 palabras del despachador (call 0x408D en
;   0xA72B); lo leen L_40AB (12 bytes)
;   0xa72e..0xa73a  (12 bytes)
DATA_saltos_A72E:
	defb 03ah,0a7h	; a72e
	defb 051h,0a7h	; a730
	defb 089h,0a7h	; a732
	defb 0a5h,0a7h	; a734
	defb 0c2h,0a7h	; a736
	defb 0cbh,0a7h	; a738

; ======================================================================
; CODIGO 0xa73a..0xa8cf  (405 bytes)
; ======================================================================


L_A73A:
	ld a,(0eb5bh)		;a73a   ; lee las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 3,a		;a73d
	jp nz,08bb4h		;a73f   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	inc (ix+002h)		;a742   ; sube el paso del actor
	ld (ix+008h),002h		;a745   ; el fotograma del actor (p07:97E8) = 0x02
	call 08adeh		;a749   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
	ld c,000h		;a74c
	jp 0561dh		;a74e   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
L_A751:
	ld (ix+008h),002h		;a751   ; el fotograma del actor (p07:97E8) = 0x02
	ld a,(0eb5bh)		;a755   ; lee las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 3,a		;a758
	ret z			;a75a
	ld a,001h		;a75b
	ld (0e3a9h),a		;a75d   ; guarda un actor lleva al personaje (no hay menu)
	inc (ix+002h)		;a760   ; sube el paso del actor
	ld a,009h		;a763
	ld (0e3c0h),a		;a765   ; guarda el modo del personaje (tabla p01:718E)
	call 08b47h		;a768   ; direccion_del_personaje: la primera direccion con el bloque del personaje (2) delante; acarreo si lo hay
	cp 003h		;a76b
	jr nc,L_A781		;a76d
	ld a,003h		;a76f
	ld (ix+00bh),a		;a771   ; guarda la direccion a la que mira el actor
	ld (ix+00ah),a		;a774   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;a777   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	call 08b26h		;a77b   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	jp 08b11h		;a77e   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
L_A781:
	ld (ix+002h),005h		;a781   ; el paso del actor = 0x05
	ld a,002h		;a785
	jr L_A795		;a787
L_A789:
	ld a,(ix+00ah)		;a789   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a78c
	jp nz,sigue_andando		;a78d   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
L_A790:
	inc (ix+002h)		;a790   ; sube el paso del actor
L_A793:
	ld a,002h		;a793
L_A795:
	ld (ix+00bh),a		;a795   ; guarda la direccion a la que mira el actor
	ld (ix+00ah),a		;a798   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;a79b   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	call 08b26h		;a79f   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	jp 08b11h		;a7a2   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
L_A7A5:
	ld a,(ix+00ah)		;a7a5   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a7a8
	jp nz,sigue_andando		;a7a9   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+003h)		;a7ac   ; lee la Y del actor
	cp 030h		;a7af
	jr nz,L_A793		;a7b1
	inc (ix+002h)		;a7b3   ; sube el paso del actor
	ld a,(ix+004h)		;a7b6   ; lee la X del actor
	cp 040h		;a7b9
	ld a,004h		;a7bb
	jr z,L_A795		;a7bd
	dec a			;a7bf
	jr L_A795		;a7c0
L_A7C2:
	ld a,(ix+00ah)		;a7c2   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a7c5
	jp nz,sigue_andando		;a7c6   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	jr L_A790		;a7c9
L_A7CB:
	ld a,(ix+00ah)		;a7cb   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a7ce
	jp nz,sigue_andando		;a7cf   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+003h)		;a7d2   ; lee la Y del actor
	sub 070h		;a7d5
	jr nz,L_A793		;a7d7
	ld (0e3c0h),a		;a7d9   ; guarda el modo del personaje (tabla p01:718E)
	ld (0e3a9h),a		;a7dc   ; guarda un actor lleva al personaje (no hay menu)
	ld hl,05070h		;a7df
	ld b,a			;a7e2
	call 05dd3h		;a7e3   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08bb4h		;a7e6   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld c,002h		;a7e9
	jp 0561dh		;a7eb   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
actor_be:		; la rutina del actor de tipo 0xBE (p07:882D)
	ld (ix+008h),016h		;a7ee   ; el fotograma del actor (p07:97E8) = 0x16
	ld a,(ix+002h)		;a7f2   ; lee el paso del actor
	or a			;a7f5
	ret nz			;a7f6
	inc (ix+002h)		;a7f7   ; sube el paso del actor
	jp 08aeeh		;a7fa   ; fotogramas_10: los fotogramas de las cuatro direcciones: 0x10, 0x12, 0x14, 0x16
actor_bf:		; la rutina del actor de tipo 0xBF (p07:882D)
	ld a,(ix+002h)		;a7fd   ; lee el paso del actor
	and 07fh		;a800
	jp nz,pasea		;a802   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	inc (ix+002h)		;a805   ; sube el paso del actor
	call 08ae6h		;a808   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
	jp 08b11h		;a80b   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
actor_6d:		; la rutina del actor de tipo 0x6D (p07:882D)
	ld a,(ix+002h)		;a80e   ; lee el paso del actor
	dec a			;a811
	jr z,L_A820		;a812
	dec a			;a814
	ret z			;a815
	inc (ix+002h)		;a816   ; sube el paso del actor
	ld (ix+008h),012h		;a819   ; el fotograma del actor (p07:97E8) = 0x12
	call 08b01h		;a81d   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_A820:
	ld a,(0eb78h)		;a820   ; lee las banderas de la historia, byte 0x38 (se graban con la partida)
	rla			;a823
	ret nc			;a824
	inc (ix+002h)		;a825   ; sube el paso del actor
	ld (ix+00dh),003h		;a828   ; si se puede hablar con el actor (p02:8D10) = 0x03
	ld l,(ix+003h)		;a82c   ; lee la Y del actor
	ld h,(ix+004h)		;a82f   ; lee la X del actor
	xor a			;a832
	ld b,a			;a833
	jp 05dd3h		;a834   ; pon_bloque_de_enfrente: pone B en el bloque de delante
actor_10:		; la rutina de los actores de tipo 0x10, 0x11 (p07:882D)
	ld a,(ix+002h)		;a837   ; lee el paso del actor
	or a			;a83a
	ret nz			;a83b
	jp L_A4E6		;a83c
actor_12:		; la rutina del actor de tipo 0x12 (p07:882D)
	ld a,001h		;a83f
	ld (0e3a9h),a		;a841   ; guarda un actor lleva al personaje (no hay menu)
	ld a,(ix+002h)		;a844   ; lee el paso del actor
	or a			;a847
	jr nz,L_A862		;a848
	ld a,(ix+004h)		;a84a   ; lee la X del actor
	ld (ix+020h),a		;a84d
	ld (ix+004h),0b0h		;a850   ; la X del actor = 0xB0
	inc (ix+002h)		;a854   ; sube el paso del actor
	ld a,003h		;a857
	ld (ix+021h),a		;a859
	call 08ae6h		;a85c   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
	jp 08b14h		;a85f
L_A862:
	cp 003h		;a862
	ret z			;a864
	ld a,(ix+00ah)		;a865   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a868
	jp nz,sigue_andando		;a869   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+020h)		;a86c
	cp (ix+004h)		;a86f   ; compara con la X del actor
	jr z,L_A892		;a872
	ld a,(ix+021h)		;a874
	ld (ix+00bh),a		;a877   ; guarda la direccion a la que mira el actor
	ld (ix+005h),001h		;a87a   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld (ix+00ah),a		;a87e   ; guarda la direccion en la que anda el actor (0: quieto)
L_A881:
	ld b,004h		;a881
	ld l,(ix+003h)		;a883   ; lee la Y del actor
	ld h,(ix+004h)		;a886   ; lee la X del actor
	call 05dd3h		;a889   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08b11h		;a88c   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	jp 08b26h		;a88f   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
L_A892:
	inc (ix+002h)		;a892   ; sube el paso del actor
	ld a,(ix+002h)		;a895   ; lee el paso del actor
	sub 003h		;a898
	jr nz,L_A8AF		;a89a
	ld (0e3c0h),a		;a89c   ; guarda el modo del personaje (tabla p01:718E)
	ld (0e3a9h),a		;a89f   ; guarda un actor lleva al personaje (no hay menu)
	ld b,a			;a8a2
	ld h,(ix+004h)		;a8a3   ; lee la X del actor
	ld l,(ix+003h)		;a8a6   ; lee la Y del actor
	call 05dd3h		;a8a9   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp 08bb4h		;a8ac   ; borra_actor: los 0x80 bytes de la ficha IX a cero
L_A8AF:
	ld (ix+021h),004h		;a8af
	ld (ix+020h),0b0h		;a8b3
	call 08b40h		;a8b7   ; mira_al_personaje: (ix+0x0B) = la direccion en la que tiene al personaje al lado
	call 08b11h		;a8ba   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld c,000h		;a8bd
	jp 0561dh		;a8bf   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
actor_13:		; la rutina del actor de tipo 0x13 (p07:882D)
	ld a,(ix+00ah)		;a8c2   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;a8c5
	jp nz,sigue_andando		;a8c6   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+002h)		;a8c9   ; lee el paso del actor
	call 040abh		;a8cc   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A8CF: tabla de 6 palabras del despachador (call 0x408D en
;   0xA8CC); lo leen L_40AB (12 bytes)
;   0xa8cf..0xa8db  (12 bytes)
DATA_saltos_A8CF:
	defb 0dbh,0a8h	; a8cf
	defb 0e2h,0a8h	; a8d1
	defb 09ah,0a9h	; a8d3
	defb 0b2h,0a9h	; a8d5
	defb 053h,0aah	; a8d7
	defb 0abh,0aah	; a8d9

; ======================================================================
; CODIGO 0xa8db..0xab0f  (564 bytes)
; ======================================================================


L_A8DB:
	ld (ix+020h),000h		;a8db
	jp empieza_paseo_08		;a8df   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
L_A8E2:
	ld a,(ix+020h)		;a8e2
	dec a			;a8e5
	jr z,L_A910		;a8e6
	ld a,(0e3c2h)		;a8e8   ; lee la X del personaje
	cp 081h		;a8eb
	jr nc,L_A910		;a8ed
	cp 060h		;a8ef
	jr c,L_A910		;a8f1
	ld a,(0e3c1h)		;a8f3   ; lee la Y del personaje
	cp 020h		;a8f6
	jr c,L_A910		;a8f8
	cp 041h		;a8fa
	jr nc,L_A910		;a8fc
	ld a,(0e3c4h)		;a8fe   ; lee el personaje va de un bloque a otro
	or a			;a901
	jr nz,L_A910		;a902
	inc (ix+020h)		;a904
	ld a,009h		;a907
	ld (0e3c0h),a		;a909   ; guarda el modo del personaje (tabla p01:718E)
L_A90C:
	inc (ix+002h)		;a90c   ; sube el paso del actor
	ret			;a90f
L_A910:
	call 043d0h		;a910   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 07fh		;a913
	jp nz,08b11h		;a915   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	call 043d0h		;a918   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 003h		;a91b
	inc a			;a91d
	ld b,a			;a91e
	ld a,(ix+004h)		;a91f   ; lee la X del actor
	cp 060h		;a922
	jr c,L_A941		;a924
	cp 081h		;a926
	jr nc,L_A941		;a928
	ld a,(ix+003h)		;a92a   ; lee la Y del actor
	cp 050h		;a92d
	jr nz,L_A937		;a92f
	ld a,b			;a931
	cp 001h		;a932
	ret z			;a934
	jr L_A977		;a935
L_A937:
	cp 010h		;a937   ; en la Y 0x10
	jr nz,L_A977		;a939
	ld a,b			;a93b
	cp 002h		;a93c   ; no baja
	ret z			;a93e
	jr L_A977		;a93f
L_A941:
	ld a,(ix+003h)		;a941   ; lee la Y del actor
	cp 020h		;a944
	jr c,L_A977		;a946
	cp 041h		;a948
	jr nc,L_A977		;a94a
	ld a,(ix+004h)		;a94c   ; lee la X del actor
	cp 050h		;a94f
	jr nz,L_A959		;a951
L_A953:
	ld a,b			;a953
	cp 004h		;a954
	ret z			;a956
	jr L_A977		;a957
L_A959:
	cp 090h		;a959   ; en la X 0x90
	jr nz,L_A977		;a95b
	ld a,b			;a95d
	cp 003h		;a95e   ; no va a la izquierda
	ret z			;a960
	jr L_A977		;a961
L_A963:
	ld a,(ix+003h)		;a963   ; lee la Y del actor
	cp 030h		;a966
	jr c,L_A977		;a968
	cp 041h		;a96a
	jr nc,L_A977		;a96c
	ld a,(ix+004h)		;a96e   ; lee la X del actor
	cp 0a0h		;a971
	jr nz,L_A977		;a973
	jr L_A953		;a975
L_A977:
	ld a,b			;a977
	cp 004h		;a978
	jr z,L_A984		;a97a
	cp 003h		;a97c
	jr z,L_A98F		;a97e
L_A980:
	ld a,b			;a980
	jp echa_a_andar		;a981   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
L_A984:
	ld a,(ix+004h)		;a984   ; lee la X del actor
	cp 0a0h		;a987
	jr nz,L_A980		;a989
	ld b,003h		;a98b
	jr L_A980		;a98d
L_A98F:
	ld a,(ix+004h)		;a98f   ; lee la X del actor
	cp 020h		;a992
	jr nz,L_A980		;a994
	ld b,004h		;a996
	jr L_A980		;a998
L_A99A:
	ld a,(ix+003h)		;a99a   ; lee la Y del actor
	cp 040h		;a99d
	jp nc,L_A90C		;a99f
	ld a,(ix+004h)		;a9a2   ; lee la X del actor
	cp 011h		;a9a5
	jp nc,L_A90C		;a9a7
	ld a,002h		;a9aa
	ld (ix+00ah),a		;a9ac   ; guarda la direccion en la que anda el actor (0: quieto)
	jp echa_a_andar		;a9af   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
L_A9B2:
	call busca_al_personaje		;a9b2   ; busca_al_personaje: si tiene al personaje al lado, se para y habla con el (texto 0)
	ld a,(ix+002h)		;a9b5   ; lee el paso del actor
	cp 005h		;a9b8
	ret z			;a9ba
	ld a,(ix+025h)		;a9bb
	cp 001h		;a9be
	jp z,L_A90C		;a9c0
	ld a,(ix+023h)		;a9c3
	cp 001h		;a9c6
	jp z,L_AA49		;a9c8
	ld a,(ix+024h)		;a9cb
	cp 001h		;a9ce
	jr z,L_AA49		;a9d0
	ld a,(ix+021h)		;a9d2
	cp 001h		;a9d5
	jr z,L_AA26		;a9d7
	ld a,(ix+022h)		;a9d9
	cp 001h		;a9dc
	jr z,L_AA26		;a9de
	ld a,(ix+003h)		;a9e0   ; lee la Y del actor
	cp 030h		;a9e3
	jr nz,L_A9FC		;a9e5
	ld b,a			;a9e7
	ld a,(0e3c1h)		;a9e8   ; lee la Y del personaje
	cp b			;a9eb
	jr nz,L_A9F5		;a9ec
	ld (ix+021h),001h		;a9ee
	jp L_A90C		;a9f2
L_A9F5:
	ld (ix+022h),001h		;a9f5
	jp L_A90C		;a9f9
L_A9FC:
	ld a,(0e3c2h)		;a9fc   ; lee la X del personaje
	cp 070h		;a9ff
	jr nz,L_AA26		;aa01
	ld a,(0e3c1h)		;aa03   ; lee la Y del personaje
	cp 020h		;aa06
	jr nz,L_AA17		;aa08
	ld a,(ix+003h)		;aa0a   ; lee la Y del actor
	cp 040h		;aa0d
	jr c,L_AA26		;aa0f
	ld (ix+023h),001h		;aa11
	jr L_AA49		;aa15
L_AA17:
	cp 040h		;aa17
	jr nz,L_AA26		;aa19
	ld a,(ix+003h)		;aa1b   ; lee la Y del actor
	cp 020h		;aa1e
	ld (ix+024h),001h		;aa20
	jr L_AA49		;aa24
L_AA26:
	ld a,(0e3c2h)		;aa26   ; lee la X del personaje
	cp (ix+004h)		;aa29   ; compara con la X del actor
	jp z,L_A90C		;aa2c
	ld a,(0e3c2h)		;aa2f   ; lee la X del personaje
	cp (ix+004h)		;aa32   ; compara con la X del actor
L_AA35:
	ld a,003h		;aa35
	jr c,L_AA3A		;aa37
	inc a			;aa39
L_AA3A:
	ld (ix+00ah),a		;aa3a   ; guarda la direccion en la que anda el actor (0: quieto)
	jp echa_a_andar		;aa3d   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
L_AA40:
	ld (ix+025h),001h		;aa40
	ld a,(ix+00bh)		;aa44   ; lee la direccion a la que mira el actor
	jr L_AA3A		;aa47
L_AA49:
	ld a,(0e3c2h)		;aa49   ; lee la X del personaje
	cp (ix+004h)		;aa4c   ; compara con la X del actor
	jr z,L_AA40		;aa4f
	jr L_AA35		;aa51
L_AA53:
	call busca_al_personaje		;aa53   ; busca_al_personaje: si tiene al personaje al lado, se para y habla con el (texto 0)
	ld a,(ix+002h)		;aa56   ; lee el paso del actor
	cp 005h		;aa59
	ret z			;aa5b
	ld a,(ix+026h)		;aa5c
	cp 001h		;aa5f
	jr z,L_AAA7		;aa61
	ld a,(ix+022h)		;aa63
	cp 001h		;aa66
	jr nz,L_AA74		;aa68
	ld a,(0e3c1h)		;aa6a   ; lee la Y del personaje
	cp (ix+003h)		;aa6d   ; compara con la Y del actor
	jr z,L_AAA7		;aa70
	jr L_AA8D		;aa72
L_AA74:
	ld a,(ix+021h)		;aa74
	cp 001h		;aa77
	jr nz,L_AA85		;aa79
	ld a,(0e3c1h)		;aa7b   ; lee la Y del personaje
	cp (ix+003h)		;aa7e   ; compara con la Y del actor
	jr z,L_AA9E		;aa81
	jr L_AA8D		;aa83
L_AA85:
	ld a,(0e3c1h)		;aa85   ; lee la Y del personaje
	cp (ix+003h)		;aa88   ; compara con la Y del actor
	jr z,L_AAF7		;aa8b
L_AA8D:
	ld a,(0e3c1h)		;aa8d   ; lee la Y del personaje
	cp (ix+003h)		;aa90   ; compara con la Y del actor
	ld a,001h		;aa93
	jr c,L_AA98		;aa95
	inc a			;aa97
L_AA98:
	ld (ix+00ah),a		;aa98   ; guarda la direccion en la que anda el actor (0: quieto)
	jp echa_a_andar		;aa9b   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
L_AA9E:
	ld (ix+026h),001h		;aa9e
	ld a,(ix+00bh)		;aaa2   ; lee la direccion a la que mira el actor
	jr L_AA98		;aaa5
L_AAA7:
	dec (ix+002h)		;aaa7   ; baja el paso del actor
	ret			;aaaa
L_AAAB:
	ld a,(ix+027h)		;aaab
	dec a			;aaae
	jr nz,L_AAB6		;aaaf
	ld (ix+002h),001h		;aab1   ; el paso del actor = 0x01
	ret			;aab5
L_AAB6:
	ld (ix+027h),001h		;aab6
	ld a,(ix+003h)		;aaba   ; lee la Y del actor
	cp 020h		;aabd
	jr nz,L_AAC5		;aabf
	ld a,001h		;aac1
	jr L_AADA		;aac3
L_AAC5:
	cp 040h		;aac5
	jr nz,L_AACD		;aac7
	ld a,002h		;aac9
	jr L_AADA		;aacb
L_AACD:
	ld a,(ix+004h)		;aacd   ; lee la X del actor
	cp 060h		;aad0
	jr nz,L_AAD8		;aad2
	ld a,003h		;aad4
	jr L_AADA		;aad6
L_AAD8:
	ld a,004h		;aad8
L_AADA:
	ld (ix+00ah),a		;aada   ; guarda la direccion en la que anda el actor (0: quieto)
	jp echa_a_andar		;aadd   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
busca_al_personaje:		; si tiene al personaje al lado, se para y habla con el (texto 0)
	ld a,001h		;aae0
L_AAE2:
	ld h,(ix+004h)		;aae2   ; lee la X del actor
	ld l,(ix+003h)		;aae5   ; lee la Y del actor
	call 05d6ah		;aae8
	ld a,(hl)			;aaeb
	cp 002h		;aaec
	jr z,L_AAF7		;aaee
	ld a,b			;aaf0
	inc a			;aaf1
	cp 005h		;aaf2
	jr c,L_AAE2		;aaf4
	ret			;aaf6
L_AAF7:
	call 08b40h		;aaf7   ; mira_al_personaje: (ix+0x0B) = la direccion en la que tiene al personaje al lado
	call 08b11h		;aafa   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld (ix+002h),005h		;aafd   ; el paso del actor = 0x05
	xor a			;ab01
	ld (0e3c0h),a		;ab02   ; guarda el modo del personaje (tabla p01:718E)
	ld c,a			;ab05
	jp 0561dh		;ab06   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
actor_14:		; la rutina del actor de tipo 0x14 (p07:882D)
	ld a,(ix+002h)		;ab09   ; lee el paso del actor
	call 040abh		;ab0c   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_AB0F: tabla de 4 palabras del despachador (call 0x408D en
;   0xAB0C); lo leen L_40AB (8 bytes)
;   0xab0f..0xab17  (8 bytes)
DATA_saltos_AB0F:
	defb 017h,0abh	; ab0f
	defb 02ch,0abh	; ab11
	defb 03fh,0abh	; ab13
	defb 070h,0abh	; ab15

; ======================================================================
; CODIGO 0xab17..0xabe4  (205 bytes)
; ======================================================================


L_AB17:
	ld a,(0eb5bh)		;ab17   ; lee las banderas de la historia, byte 0x1B (se graban con la partida)
	rla			;ab1a
	jp c,08bb4h		;ab1b   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,002h		;ab1e
	ld (ix+00bh),a		;ab20   ; guarda la direccion a la que mira el actor
	ld (ix+008h),a		;ab23   ; guarda el fotograma del actor (p07:97E8)
	inc (ix+002h)		;ab26   ; sube el paso del actor
	jp 08adeh		;ab29   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
L_AB2C:
	ld a,(0e9d2h)		;ab2c   ; lee el objeto 1 (bit 0: se lleva)
	bit 7,a		;ab2f
	jp z,08b11h		;ab31   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld (ix+00eh),001h		;ab34   ; el color del primer sprite del actor = 0x01
	ld (ix+00fh),00fh		;ab38   ; el color del segundo sprite del actor = 0x0F
	jp 08b11h		;ab3c   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
L_AB3F:
	xor a			;ab3f
	ld (ix+00dh),a		;ab40   ; guarda si se puede hablar con el actor (p02:8D10)
	inc (ix+002h)		;ab43   ; sube el paso del actor
	inc a			;ab46
	ld hl,0e3c0h		;ab47   ; apunta a el modo del personaje (tabla p01:718E)
	ld (hl),a			;ab4a
	ld hl,0e3cbh		;ab4b
	ld (hl),a			;ab4e
	xor a			;ab4f
	ld b,003h		;ab50
	ld hl,(0e483h)		;ab52
	call 05dd3h		;ab55   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	xor a			;ab58
	ld (ix+005h),a		;ab59   ; guarda si el actor se mueve (bit 0; p07:87FA)
	ld (ix+00ah),a		;ab5c   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+020h),a		;ab5f
	inc a			;ab62
	ld (0e3a9h),a		;ab63   ; guarda un actor lleva al personaje (no hay menu)
	call 08b47h		;ab66   ; direccion_del_personaje: la primera direccion con el bloque del personaje (2) delante; acarreo si lo hay
	ld (0e3c5h),a		;ab69   ; guarda la direccion del paso en curso
	ld (ix+00bh),a		;ab6c   ; guarda la direccion a la que mira el actor
	ret			;ab6f
L_AB70:
	ld a,(ix+00ah)		;ab70   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;ab73
	jr nz,L_AB7E		;ab74
	ld b,003h		;ab76
	ld hl,(0e483h)		;ab78
	call 05dd3h		;ab7b   ; pon_bloque_de_enfrente: pone B en el bloque de delante
L_AB7E:
	ld a,(ix+00ah)		;ab7e   ; lee la direccion en la que anda el actor (0: quieto)
	ld a,(ix+005h)		;ab81   ; lee si el actor se mueve (bit 0; p07:87FA)
	or a			;ab84
	jp z,08b11h		;ab85   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	call 08b11h		;ab88   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld a,(ix+020h)		;ab8b
	dec a			;ab8e
	jr z,L_ABA9		;ab8f
	inc (ix+020h)		;ab91
	ld a,(ix+00ah)		;ab94   ; lee la direccion en la que anda el actor (0: quieto)
	add a,a			;ab97
	ld hl,0abe4h		;ab98
	ld d,000h		;ab9b
	ld e,a			;ab9d
	add hl,de			;ab9e
	ld a,(hl)			;ab9f
	ld (ix+006h),a		;aba0   ; guarda el paso Y del actor
	inc hl			;aba3
	ld a,(hl)			;aba4
	ld (ix+007h),a		;aba5   ; guarda el paso X del actor
	ret			;aba8
L_ABA9:
	ld a,(ix+003h)		;aba9   ; lee la Y del actor
	add a,(ix+006h)		;abac   ; le suma el paso Y del actor
	ld b,a			;abaf
	ld a,(ix+004h)		;abb0   ; lee la X del actor
	add a,(ix+007h)		;abb3   ; le suma el paso X del actor
	ld c,a			;abb6
	or b			;abb7
	and 00fh		;abb8
	ret nz			;abba
	ld (ix+005h),a		;abbb   ; guarda si el actor se mueve (bit 0; p07:87FA)
	ld (ix+020h),a		;abbe
	ld (ix+003h),b		;abc1   ; guarda la Y del actor
	ld (ix+004h),c		;abc4   ; guarda la X del actor
	call 08b5dh		;abc7   ; actor_quieto: (ix+6) y (ix+7) a cero
	ld a,(ix+00ah)		;abca   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;abcd
	ret z			;abce
	ld (ix+00ah),000h		;abcf   ; la direccion en la que anda el actor (0: quieto) = 0x00
	dec a			;abd3
	xor 001h		;abd4
	inc a			;abd6
	ld hl,0e3c5h		;abd7   ; apunta a la direccion del paso en curso
	cp (hl)			;abda
	ret z			;abdb
	ld b,000h		;abdc
	ld hl,(0e483h)		;abde
	jp 05dd3h		;abe1   ; pon_bloque_de_enfrente: pone B en el bloque de delante

; ----------------------------------------------------------------------
; DATOS resto_ABE4: lo apuntan con el banco puesto p08:AB98 (0xABE4); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p08:AB98 (10 bytes)
;   0xabe4..0xabee  (10 bytes)
DATA_resto_ABE4:
	defb 000h,000h,0ffh,000h,001h,000h,000h,0ffh,000h,001h	; abe4  ..........

; ======================================================================
; CODIGO 0xabee..0xae5c  (622 bytes)
; ======================================================================


actor_15:		; la rutina del actor de tipo 0x15 (p07:882D)
	ld a,(ix+002h)		;abee   ; lee el paso del actor
	or a			;abf1
	jr nz,L_AC11		;abf2
	ld a,(0eb5bh)		;abf4   ; lee las banderas de la historia, byte 0x1B (se graban con la partida)
	rla			;abf7
	jp nc,08bach		;abf8   ; quita_actor_y_anda: el personaje vuelve al modo 0 y se borra el actor
	ld a,(0eb5ah)		;abfb   ; lee las banderas de la historia, byte 0x1A (se graban con la partida)
	bit 5,a		;abfe
	jp nz,08bach		;ac00   ; quita_actor_y_anda: el personaje vuelve al modo 0 y se borra el actor
	ld (ix+00bh),002h		;ac03   ; la direccion a la que mira el actor = 0x02
	ld (ix+008h),002h		;ac07   ; el fotograma del actor (p07:97E8) = 0x02
	inc (ix+002h)		;ac0b   ; sube el paso del actor
	jp 08adeh		;ac0e   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
L_AC11:
	dec a			;ac11
	jr nz,L_AC21		;ac12
	inc (ix+002h)		;ac14   ; sube el paso del actor
	ld hl,0e9e4h		;ac17   ; apunta a el objeto 10 (bit 0: se lleva)
	set 0,(hl)		;ac1a
	ld c,001h		;ac1c
	jp 0561dh		;ac1e   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
L_AC21:
	ld a,(ix+00ah)		;ac21   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;ac24
	jp nz,sigue_andando		;ac25   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+004h)		;ac28   ; lee la X del actor
	sub 0b0h		;ac2b
	jr z,L_AC3E		;ac2d
	ld a,004h		;ac2f
	ld (ix+00bh),a		;ac31   ; guarda la direccion a la que mira el actor
	ld (ix+005h),001h		;ac34   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld (ix+00ah),a		;ac38   ; guarda la direccion en la que anda el actor (0: quieto)
	jp L_A881		;ac3b
L_AC3E:
	ld (0e3a9h),a		;ac3e   ; guarda un actor lleva al personaje (no hay menu)
	ld b,a			;ac41
	ld h,(ix+004h)		;ac42   ; lee la X del actor
	ld l,(ix+003h)		;ac45   ; lee la Y del actor
	call 05dd3h		;ac48   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp 08bach		;ac4b   ; quita_actor_y_anda: el personaje vuelve al modo 0 y se borra el actor
actor_16:		; la rutina del actor de tipo 0x16 (p07:882D)
	ld a,(ix+002h)		;ac4e   ; lee el paso del actor
	or a			;ac51
	jp nz,pasea_en_su_zona		;ac52   ; pasea_en_su_zona: como p08:B1B4, sin salir de la zona (ix+0x30)-(ix+0x33) y con la frecuencia (ix+0x34)
	ld (ix+030h),a		;ac55   ; guarda el borde de arriba de la zona del actor
	ld (ix+031h),060h		;ac58   ; el borde de abajo de la zona del actor = 0x60
	ld (ix+032h),a		;ac5c   ; guarda el borde izquierdo de la zona del actor
	ld (ix+033h),0a0h		;ac5f   ; el borde derecho de la zona del actor = 0xA0
	ld (ix+034h),00fh		;ac63   ; la frecuencia con la que cambia de direccion = 0x0F
	jp empieza_paseo_08		;ac67   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
actor_17:		; la rutina del actor de tipo 0x17 (p07:882D)
	ld a,(ix+002h)		;ac6a   ; lee el paso del actor
	or a			;ac6d
	jp nz,pasea_en_su_zona		;ac6e   ; pasea_en_su_zona: como p08:B1B4, sin salir de la zona (ix+0x30)-(ix+0x33) y con la frecuencia (ix+0x34)
	ld (ix+030h),a		;ac71   ; guarda el borde de arriba de la zona del actor
	ld (ix+031h),060h		;ac74   ; el borde de abajo de la zona del actor = 0x60
	ld (ix+032h),a		;ac78   ; guarda el borde izquierdo de la zona del actor
	ld (ix+033h),0a0h		;ac7b   ; el borde derecho de la zona del actor = 0xA0
	ld (ix+034h),07fh		;ac7f   ; la frecuencia con la que cambia de direccion = 0x7F
	jp empieza_paseo_10		;ac83   ; empieza_paseo_10: el siguiente paso, los fotogramas 0x10-0x16 y el de su direccion
actor_18:		; la rutina del actor de tipo 0x18 (p07:882D)
	ld a,(ix+002h)		;ac86   ; lee el paso del actor
	or a			;ac89
	jp nz,pasea_en_su_zona		;ac8a   ; pasea_en_su_zona: como p08:B1B4, sin salir de la zona (ix+0x30)-(ix+0x33) y con la frecuencia (ix+0x34)
	ld a,(0eb5bh)		;ac8d   ; lee las banderas de la historia, byte 0x1B (se graban con la partida)
	rla			;ac90
	jp nc,08bb4h		;ac91   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld (ix+030h),000h		;ac94   ; el borde de arriba de la zona del actor = 0x00
	ld (ix+031h),060h		;ac98   ; el borde de abajo de la zona del actor = 0x60
	ld (ix+032h),000h		;ac9c   ; el borde izquierdo de la zona del actor = 0x00
	ld (ix+033h),0a0h		;aca0   ; el borde derecho de la zona del actor = 0xA0
	ld (ix+034h),07fh		;aca4   ; la frecuencia con la que cambia de direccion = 0x7F
	jp empieza_paseo_00		;aca8   ; empieza_paseo_00: el siguiente paso, los fotogramas 0x00-0x06 y el de su direccion
actor_19:		; la rutina de los actores de tipo 0x19, 0x1A (p07:882D)
	ld a,(ix+002h)		;acab   ; lee el paso del actor
	and 07fh		;acae
	jp nz,pasea_en_su_zona		;acb0   ; pasea_en_su_zona: como p08:B1B4, sin salir de la zona (ix+0x30)-(ix+0x33) y con la frecuencia (ix+0x34)
	ld (ix+030h),030h		;acb3   ; el borde de arriba de la zona del actor = 0x30
	ld (ix+031h),070h		;acb7   ; el borde de abajo de la zona del actor = 0x70
	ld (ix+032h),000h		;acbb   ; el borde izquierdo de la zona del actor = 0x00
	ld (ix+033h),0b0h		;acbf   ; el borde derecho de la zona del actor = 0xB0
	ld (ix+034h),07fh		;acc3   ; la frecuencia con la que cambia de direccion = 0x7F
	ld a,(ix+000h)		;acc7   ; lee el tipo del actor (bajo)
	cp 01ah		;acca
	jp z,empieza_paseo_08		;accc   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
	jp empieza_paseo_00		;accf   ; empieza_paseo_00: el siguiente paso, los fotogramas 0x00-0x06 y el de su direccion
actor_1b:		; la rutina de los actores de tipo 0x1B, 0x32, 0x4F (p07:882D)
	ld a,(ix+002h)		;acd2   ; lee el paso del actor
	and 07fh		;acd5
	dec a			;acd7
	jr z,L_AD2B		;acd8
	ld a,(0e3c1h)		;acda   ; lee la Y del personaje
	add a,090h		;acdd
	cp 0a0h		;acdf
	jr c,L_ACF4		;ace1
	call 043d0h		;ace3   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 001h		;ace6
	inc a			;ace8
	cp 001h		;ace9
	ld de,05070h		;aceb
	jr z,L_AD05		;acee
	ld e,000h		;acf0
	jr L_AD05		;acf2
L_ACF4:
	call 043d0h		;acf4   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 001h		;acf7
	inc a			;acf9
	inc a			;acfa
	inc a			;acfb
	cp 003h		;acfc
	ld de,0b030h		;acfe
	jr z,L_AD05		;ad01
	ld d,000h		;ad03
L_AD05:
	ld (ix+004h),d		;ad05   ; guarda la X del actor
	ld (ix+003h),e		;ad08   ; guarda la Y del actor
	ld (ix+021h),a		;ad0b
	ld (ix+00bh),a		;ad0e   ; guarda la direccion a la que mira el actor
	inc (ix+002h)		;ad11   ; sube el paso del actor
	ld a,(ix+000h)		;ad14   ; lee el tipo del actor (bajo)
	cp 04fh		;ad17
	jr z,L_AD25		;ad19
	cp 032h		;ad1b
	jr z,L_AD25		;ad1d
	call 08ae6h		;ad1f   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
	jp 08b11h		;ad22   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
L_AD25:
	call 08adeh		;ad25   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
	jp 08b11h		;ad28   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
L_AD2B:
	ld a,(ix+00ah)		;ad2b   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;ad2e
	jp nz,sigue_andando		;ad2f   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+021h)		;ad32
	ld (ix+00bh),a		;ad35   ; guarda la direccion a la que mira el actor
	ld l,(ix+003h)		;ad38   ; lee la Y del actor
	ld h,(ix+004h)		;ad3b   ; lee la X del actor
	ld (0e8e0h),hl		;ad3e   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	call 05d89h		;ad41
	jr z,L_AD6A		;ad44
	ld hl,(0e8e0h)		;ad46   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	ld a,(ix+00bh)		;ad49   ; lee la direccion a la que mira el actor
	call 05d6ah		;ad4c
	jp nz,08b14h		;ad4f
	ld (ix+00ah),a		;ad52   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;ad55   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld b,004h		;ad59
	ld l,(ix+003h)		;ad5b   ; lee la Y del actor
	ld h,(ix+004h)		;ad5e   ; lee la X del actor
	call 05dd3h		;ad61   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08b11h		;ad64   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	jp 08b26h		;ad67   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
L_AD6A:
	xor a			;ad6a
	ld b,a			;ad6b
	ld l,(ix+003h)		;ad6c   ; lee la Y del actor
	ld h,(ix+004h)		;ad6f   ; lee la X del actor
	call 05dd3h		;ad72   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp 08bb4h		;ad75   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_1c:		; la rutina del actor de tipo 0x1C (p07:882D)
	ld (ix+008h),012h		;ad78   ; el fotograma del actor (p07:97E8) = 0x12
	ld a,(ix+002h)		;ad7c   ; lee el paso del actor
	and 07fh		;ad7f
	dec a			;ad81
	jr z,L_ADAD		;ad82
	dec a			;ad84
	ret z			;ad85
	jr L_AD99		;ad86
actor_1d:		; la rutina de los actores de tipo 0x1D, 0x1E (p07:882D)
	ld (ix+008h),002h		;ad88   ; el fotograma del actor (p07:97E8) = 0x02
	jr L_AD92		;ad8c
actor_1f:		; la rutina del actor de tipo 0x1F (p07:882D)
	ld (ix+008h),00ah		;ad8e   ; el fotograma del actor (p07:97E8) = 0x0A
L_AD92:
	ld a,(ix+002h)		;ad92   ; lee el paso del actor
	and 07fh		;ad95
	dec a			;ad97
	ret z			;ad98
L_AD99:
	inc (ix+002h)		;ad99   ; sube el paso del actor
	ld a,(ix+000h)		;ad9c   ; lee el tipo del actor (bajo)
	cp 01fh		;ad9f
	jp z,08ae6h		;ada1   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
	cp 01ch		;ada4
	jp z,08aeeh		;ada6   ; fotogramas_10: los fotogramas de las cuatro direcciones: 0x10, 0x12, 0x14, 0x16
	jp 08adeh		;ada9   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
L_ADAC:
	xor a			;adac
L_ADAD:
	inc (ix+002h)		;adad   ; sube el paso del actor
	ld c,a			;adb0
	jp 0561dh		;adb1   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
actor_20:		; la rutina de los actores de tipo 0x20, 0x21 (p07:882D)
	ld a,(ix+002h)		;adb4   ; lee el paso del actor
	and 07fh		;adb7
	dec a			;adb9
	jr z,L_ADCB		;adba
	dec a			;adbc
	ret z			;adbd
	inc (ix+00dh)		;adbe   ; sube si se puede hablar con el actor (p02:8D10)
	ld (ix+008h),012h		;adc1   ; el fotograma del actor (p07:97E8) = 0x12
	inc (ix+002h)		;adc5   ; sube el paso del actor
	jp 08b01h		;adc8   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_ADCB:
	ld a,(0e3c4h)		;adcb   ; lee el personaje va de un bloque a otro
	and a			;adce
	ret nz			;adcf
	ld a,(0eb5ah)		;add0   ; lee las banderas de la historia, byte 0x1A (se graban con la partida)
	bit 4,a		;add3
	ret nz			;add5
	ld a,(0e3cbh)		;add6
	rra			;add9
	ret c			;adda
	call 08b47h		;addb   ; direccion_del_personaje: la primera direccion con el bloque del personaje (2) delante; acarreo si lo hay
	ret nc			;adde
	ld hl,0eb5ah		;addf   ; apunta a las banderas de la historia, byte 0x1A (se graban con la partida)
	set 4,(hl)		;ade2
	ld a,009h		;ade4
	ld (0e3c0h),a		;ade6   ; guarda el modo del personaje (tabla p01:718E)
	inc (ix+002h)		;ade9   ; sube el paso del actor
	ld a,(0e3c2h)		;adec   ; lee la X del personaje
	add a,010h		;adef
	ld d,a			;adf1
	ld a,(0e3c1h)		;adf2   ; lee la Y del personaje
	cp 030h		;adf5
	jr z,L_ADFD		;adf7
	cp 050h		;adf9
	jr nz,L_AE05		;adfb
L_ADFD:
	ld b,a			;adfd   ; en las Y 0x30 y 0x50
	ld a,d			;adfe
	sub 010h		;adff   ; la X 16 menos
	ld d,a			;ae01
	ld a,b			;ae02
	sub 010h		;ae03   ; y la Y 16 menos
L_AE05:
	ld e,a			;ae05
	ld bc,00012h		;ae06
	xor a			;ae09
	ld l,a			;ae0a
	jp 082feh		;ae0b   ; crea_actor: en el primer hueco de 0xE400: el tipo BC en (E, D), direccion al azar, colores (p07:83B4) y nombre (p08:A063)
actor_22:		; la rutina del actor de tipo 0x22 (p07:882D)
	ld a,(ix+002h)		;ae0e   ; lee el paso del actor
	or a			;ae11
	ret nz			;ae12
	inc (ix+00dh)		;ae13   ; sube si se puede hablar con el actor (p02:8D10)
	inc (ix+002h)		;ae16   ; sube el paso del actor
	ld (ix+008h),018h		;ae19   ; el fotograma del actor (p07:97E8) = 0x18
	jp 08b01h		;ae1d   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_23:		; la rutina del actor de tipo 0x23 (p07:882D)
	ld a,(ix+002h)		;ae20   ; lee el paso del actor
	dec a			;ae23
	ret z			;ae24
	ld (ix+008h),026h		;ae25   ; el fotograma del actor (p07:97E8) = 0x26
	inc (ix+002h)		;ae29   ; sube el paso del actor
	jp 08b01h		;ae2c   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_24:		; la rutina del actor de tipo 0x24 (p07:882D)
	ld a,(ix+002h)		;ae2f   ; lee el paso del actor
	dec a			;ae32
	jr z,L_AE3F		;ae33
	inc (ix+002h)		;ae35   ; sube el paso del actor
	ld (ix+008h),018h		;ae38   ; el fotograma del actor (p07:97E8) = 0x18
	call 08b01h		;ae3c   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_AE3F:
	ld a,(0eb5bh)		;ae3f   ; lee las banderas de la historia, byte 0x1B (se graban con la partida)
	rla			;ae42
	ld a,002h		;ae43
	jr c,L_AE48		;ae45
	xor a			;ae47
L_AE48:
	ld (ix+00dh),a		;ae48   ; guarda si se puede hablar con el actor (p02:8D10)
	ret			;ae4b
actor_25:		; la rutina de los actores de tipo 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A (p07:882D)
	ld a,(ix+002h)		;ae4c   ; lee el paso del actor
	and 07fh		;ae4f
	jp nz,L_AEDE		;ae51
	ld a,(ix+000h)		;ae54   ; lee el tipo del actor (bajo)
	sub 025h		;ae57
	call 040abh		;ae59   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_AE5C: tabla de 6 palabras del despachador (call 0x408D en
;   0xAE59); lo leen L_40AB (12 bytes)
;   0xae5c..0xae68  (12 bytes)
DATA_saltos_AE5C:
	defb 068h,0aeh	; ae5c
	defb 076h,0aeh	; ae5e
	defb 085h,0aeh	; ae60
	defb 093h,0aeh	; ae62
	defb 0a2h,0aeh	; ae64
	defb 0b0h,0aeh	; ae66

; ======================================================================
; CODIGO 0xae68..0xaf74  (268 bytes)
; ======================================================================


L_AE68:
	ld de,03002h		;ae68
	ld hl,0010fh		;ae6b
	ld a,(0eb60h)		;ae6e   ; lee las banderas de la historia, byte 0x20 (se graban con la partida)
	rla			;ae71
	jr nc,L_AEC3		;ae72
	jr L_AEBD		;ae74
L_AE76:
	ld de,05001h		;ae76
	ld hl,0060bh		;ae79
	ld a,(0eb60h)		;ae7c   ; lee las banderas de la historia, byte 0x20 (se graban con la partida)
	bit 6,a		;ae7f
	jr z,L_AEC3		;ae81
	jr L_AEBD		;ae83
L_AE85:
	ld de,02002h		;ae85
	ld hl,0060fh		;ae88
	ld a,(0eb5fh)		;ae8b   ; lee las banderas de la historia, byte 0x1F (se graban con la partida)
	rla			;ae8e
	jr nc,L_AEC3		;ae8f
	jr L_AEBD		;ae91
L_AE93:
	ld de,04001h		;ae93
	ld hl,0010fh		;ae96
	ld a,(0eb5fh)		;ae99   ; lee las banderas de la historia, byte 0x1F (se graban con la partida)
	bit 6,a		;ae9c
	jr z,L_AEC3		;ae9e
	jr L_AEBD		;aea0
L_AEA2:
	ld de,05001h		;aea2
	ld hl,0040fh		;aea5
	ld a,(0eb62h)		;aea8   ; lee las banderas de la historia, byte 0x22 (se graban con la partida)
	rla			;aeab
	jr nc,L_AEC3		;aeac
	jr L_AEBD		;aeae
L_AEB0:
	ld de,02002h		;aeb0
	ld hl,0040fh		;aeb3
	ld a,(0eb62h)		;aeb6   ; lee las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 6,a		;aeb9
	jr z,L_AEC3		;aebb
L_AEBD:
	ld (ix+00eh),h		;aebd   ; guarda el color del primer sprite del actor
	ld (ix+00fh),l		;aec0   ; guarda el color del segundo sprite del actor
L_AEC3:
	ld (ix+025h),d		;aec3
	ld (ix+026h),e		;aec6
	ld a,(ix+000h)		;aec9   ; lee el tipo del actor (bajo)
	cp 025h		;aecc
	jp z,empieza_paseo_00		;aece   ; empieza_paseo_00: el siguiente paso, los fotogramas 0x00-0x06 y el de su direccion
	cp 027h		;aed1
	jp z,empieza_paseo_00		;aed3   ; empieza_paseo_00: el siguiente paso, los fotogramas 0x00-0x06 y el de su direccion
	cp 028h		;aed6
	jp z,empieza_paseo_08		;aed8   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
	jp empieza_paseo_10		;aedb   ; empieza_paseo_10: el siguiente paso, los fotogramas 0x10-0x16 y el de su direccion
L_AEDE:
	ld a,(ix+00ah)		;aede   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;aee1
	jp nz,sigue_andando		;aee2   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	call 043d0h		;aee5   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 07fh		;aee8
	jp nz,08b11h		;aeea   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld a,(ix+003h)		;aeed   ; lee la Y del actor
	cp (ix+025h)		;aef0
	jp nz,pasea_al_azar		;aef3   ; pasea_al_azar: una direccion al azar (p07:8B65) y a andar
	call 043d0h		;aef6   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 003h		;aef9
	inc a			;aefb
	cp (ix+026h)		;aefc
	jp nz,echa_a_andar		;aeff   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
	dec a			;af02
	xor 001h		;af03
	inc a			;af05
	jp echa_a_andar		;af06   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
actor_2b:		; la rutina del actor de tipo 0x2B (p07:882D)
	ld a,(ix+002h)		;af09   ; lee el paso del actor
	or a			;af0c
	ret nz			;af0d
	ld a,(0eb7dh)		;af0e   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 2,a		;af11
	jp nz,08bb4h		;af13   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(0eb61h)		;af16   ; lee las banderas de la historia, byte 0x21 (se graban con la partida)
	bit 5,a		;af19
	jp nz,08bb4h		;af1b   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	rla			;af1e
	jr nc,L_AF29		;af1f
	ld (ix+00eh),00eh		;af21   ; el color del primer sprite del actor = 0x0E
	ld (ix+00fh),001h		;af25   ; el color del segundo sprite del actor = 0x01
L_AF29:
	ld (ix+008h),01ah		;af29   ; el fotograma del actor (p07:97E8) = 0x1A
	inc (ix+002h)		;af2d   ; sube el paso del actor
	jp 08b01h		;af30   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_2c:		; la rutina del actor de tipo 0x2C (p07:882D)
	ld a,(ix+002h)		;af33   ; lee el paso del actor
	and 07fh		;af36
	ret nz			;af38
	ld (ix+00dh),002h		;af39   ; si se puede hablar con el actor (p02:8D10) = 0x02
	jp L_A4E6		;af3d
actor_2d:		; la rutina del actor de tipo 0x2D (p07:882D)
	ld (ix+008h),00ah		;af40   ; el fotograma del actor (p07:97E8) = 0x0A
	jp 08b01h		;af44   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_2e:		; la rutina del actor de tipo 0x2E (p07:882D)
	ld (ix+008h),012h		;af47   ; el fotograma del actor (p07:97E8) = 0x12
	ld a,(ix+002h)		;af4b   ; lee el paso del actor
	and 07fh		;af4e
	dec a			;af50
	jp z,L_ADAC		;af51
	dec a			;af54
	ret z			;af55
	inc (ix+002h)		;af56   ; sube el paso del actor
	jp 08aeeh		;af59   ; fotogramas_10: los fotogramas de las cuatro direcciones: 0x10, 0x12, 0x14, 0x16
actor_2f:		; la rutina de los actores de tipo 0x2F, 0x30 (p07:882D)
	ld a,(ix+002h)		;af5c   ; lee el paso del actor
	or a			;af5f
	jp nz,08b11h		;af60   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld a,(ix+000h)		;af63   ; lee el tipo del actor (bajo)
	cp 030h		;af66
	jp z,empieza_paseo_00		;af68   ; empieza_paseo_00: el siguiente paso, los fotogramas 0x00-0x06 y el de su direccion
	jp empieza_paseo_08		;af6b   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
actor_cb:		; la rutina del actor de tipo 0xCB (p07:882D)
	ld a,(ix+002h)		;af6e   ; lee el paso del actor
	call 040abh		;af71   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_AF74: tabla de 5 palabras del despachador (call 0x408D en
;   0xAF71); lo leen L_40AB (10 bytes)
;   0xaf74..0xaf7e  (10 bytes)
DATA_saltos_AF74:
	defb 07eh,0afh	; af74
	defb 090h,0afh	; af76
	defb 0a5h,0afh	; af78
	defb 0cfh,0afh	; af7a
	defb 0ddh,0afh	; af7c

; ======================================================================
; CODIGO 0xaf7e..0xb0e2  (356 bytes)
; ======================================================================


L_AF7E:
	ld a,(0eb62h)		;af7e   ; lee las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 2,a		;af81
	jp nz,08bb4h		;af83   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	inc (ix+002h)		;af86   ; sube el paso del actor
	ld (ix+008h),002h		;af89   ; el fotograma del actor (p07:97E8) = 0x02
	jp 08adeh		;af8d   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
L_AF90:
	ld a,(0eb61h)		;af90   ; lee las banderas de la historia, byte 0x21 (se graban con la partida)
	bit 3,a		;af93
	ret z			;af95
	inc (ix+002h)		;af96   ; sube el paso del actor
	ld bc,000cch		;af99
	ld de,05050h		;af9c
	ld l,002h		;af9f
	xor a			;afa1
	jp 082feh		;afa2   ; crea_actor: en el primer hueco de 0xE400: el tipo BC en (E, D), direccion al azar, colores (p07:83B4) y nombre (p08:A063)
L_AFA5:
	ld a,(0eb62h)		;afa5   ; lee las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 2,a		;afa8
	ret z			;afaa
	inc (ix+002h)		;afab   ; sube el paso del actor
	ld a,001h		;afae
	ld (0e3a9h),a		;afb0   ; guarda un actor lleva al personaje (no hay menu)
	call 08b47h		;afb3   ; direccion_del_personaje: la primera direccion con el bloque del personaje (2) delante; acarreo si lo hay
	dec a			;afb6
	ld a,002h		;afb7
	jr z,L_AFBC		;afb9
	dec a			;afbb
L_AFBC:
	ld (ix+00bh),a		;afbc   ; guarda la direccion a la que mira el actor
L_AFBF:
	ld a,(ix+00bh)		;afbf   ; lee la direccion a la que mira el actor
	ld (ix+00ah),a		;afc2   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;afc5   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	call 08b26h		;afc9   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	jp 08b11h		;afcc   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
L_AFCF:
	ld a,(ix+00ah)		;afcf   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;afd2
	jp nz,sigue_andando		;afd3   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	inc (ix+002h)		;afd6   ; sube el paso del actor
	ld a,004h		;afd9
	jr L_AFBC		;afdb
L_AFDD:
	ld a,(ix+00ah)		;afdd   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;afe0
	jp nz,sigue_andando		;afe1   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+004h)		;afe4   ; lee la X del actor
	sub 0b0h		;afe7
	jr nz,L_AFBF		;afe9
	ld (0e3c0h),a		;afeb   ; guarda el modo del personaje (tabla p01:718E)
	ld (0e3a9h),a		;afee   ; guarda un actor lleva al personaje (no hay menu)
	ld l,(ix+003h)		;aff1   ; lee la Y del actor
	ld h,0b0h		;aff4
	ld b,a			;aff6
	call 05dd3h		;aff7   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp 08bb4h		;affa   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_cc:		; la rutina del actor de tipo 0xCC (p07:882D)
	ld a,(ix+002h)		;affd   ; lee el paso del actor
	dec a			;b000
	jr z,L_B00F		;b001
	dec a			;b003
	ret z			;b004
	inc (ix+002h)		;b005   ; sube el paso del actor
	ld (ix+008h),018h		;b008   ; el fotograma del actor (p07:97E8) = 0x18
	jp 08b01h		;b00c   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_B00F:
	ld a,(0eb61h)		;b00f   ; lee las banderas de la historia, byte 0x21 (se graban con la partida)
	bit 2,a		;b012
	ret z			;b014
	call 0458dh		;b015   ; sonido_1e: pide el sonido 0x1E
	inc (ix+002h)		;b018   ; sube el paso del actor
	ld (ix+008h),013h		;b01b   ; el fotograma del actor (p07:97E8) = 0x13
	jp 08b01h		;b01f   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_31:		; la rutina del actor de tipo 0x31 (p07:882D)
	ld a,(ix+002h)		;b022   ; lee el paso del actor
	and 07fh		;b025
	ret nz			;b027
	inc (ix+002h)		;b028   ; sube el paso del actor
	ld (ix+008h),018h		;b02b   ; el fotograma del actor (p07:97E8) = 0x18
	jp 08b01h		;b02f   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_33:		; la rutina del actor de tipo 0x33 (p07:882D)
	ld a,(ix+002h)		;b032   ; lee el paso del actor
	or a			;b035
	jp nz,pasea_en_su_zona		;b036   ; pasea_en_su_zona: como p08:B1B4, sin salir de la zona (ix+0x30)-(ix+0x33) y con la frecuencia (ix+0x34)
	ld (ix+030h),a		;b039   ; guarda el borde de arriba de la zona del actor
	ld (ix+031h),030h		;b03c   ; el borde de abajo de la zona del actor = 0x30
	ld (ix+032h),010h		;b040   ; el borde izquierdo de la zona del actor = 0x10
	ld (ix+033h),0a0h		;b044   ; el borde derecho de la zona del actor = 0xA0
	ld (ix+034h),07fh		;b048   ; la frecuencia con la que cambia de direccion = 0x7F
	jp empieza_paseo_00		;b04c   ; empieza_paseo_00: el siguiente paso, los fotogramas 0x00-0x06 y el de su direccion
actor_34:		; la rutina del actor de tipo 0x34 (p07:882D)
	ld a,(ix+002h)		;b04f   ; lee el paso del actor
	and 07fh		;b052
	jr nz,L_B068		;b054
	ld a,(0eb65h)		;b056   ; lee las banderas de la historia, byte 0x25 (se graban con la partida)
	bit 4,a		;b059
	jp nz,08bb4h		;b05b   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	inc (ix+002h)		;b05e   ; sube el paso del actor
	ld (ix+008h),011h		;b061   ; el fotograma del actor (p07:97E8) = 0x11
	jp 08b01h		;b065   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_B068:
	ld a,(0eb65h)		;b068   ; lee las banderas de la historia, byte 0x25 (se graban con la partida)
	bit 4,a		;b06b
	jr z,L_B081		;b06d
	ld l,(ix+003h)		;b06f   ; lee la Y del actor
	ld h,(ix+004h)		;b072   ; lee la X del actor
	xor a			;b075
	ld b,a			;b076
	call 05dd3h		;b077   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08bb4h		;b07a   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	call 04565h		;b07d   ; sonido_14: pide el sonido 0x14
	ret			;b080
L_B081:
	ld a,(0e003h)		;b081   ; lee la cuenta de cuadros
	and 003h		;b084
	ret nz			;b086
	ld a,(ix+008h)		;b087   ; lee el fotograma del actor (p07:97E8)
	xor 031h		;b08a
	ld (ix+008h),a		;b08c   ; guarda el fotograma del actor (p07:97E8)
	jp 08b01h		;b08f   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_35:		; la rutina del actor de tipo 0x35 (p07:882D)
	ld a,(ix+002h)		;b092   ; lee el paso del actor
	or a			;b095
	ret nz			;b096
	inc (ix+002h)		;b097   ; sube el paso del actor
	ld (ix+008h),01ah		;b09a   ; el fotograma del actor (p07:97E8) = 0x1A
	jp 08b01h		;b09e   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_36:		; la rutina del actor de tipo 0x36 (p07:882D)
	ld a,(ix+002h)		;b0a1   ; lee el paso del actor
	and 07fh		;b0a4
	ret nz			;b0a6
	inc (ix+002h)		;b0a7   ; sube el paso del actor
	ld (ix+008h),018h		;b0aa   ; el fotograma del actor (p07:97E8) = 0x18
	jp 08b01h		;b0ae   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_37:		; la rutina del actor de tipo 0x37 (p07:882D)
	ld a,(ix+00ah)		;b0b1   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b0b4
	jp nz,sigue_andando		;b0b5   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+01dh)		;b0b8
	or a			;b0bb
	jr nz,L_B0DC		;b0bc
	ld a,(ix+003h)		;b0be   ; lee la Y del actor
	cp 060h		;b0c1
	jr nz,L_B0DC		;b0c3
	ld a,(ix+004h)		;b0c5   ; lee la X del actor
	cp 050h		;b0c8
	jr nz,L_B0DC		;b0ca
	ld a,002h		;b0cc
	ld (ix+01dh),a		;b0ce
	ld (0e3c6h),a		;b0d1   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ld (0e3c3h),a		;b0d4   ; guarda el fotograma del personaje
	ld c,00ah		;b0d7
	jp 0561dh		;b0d9   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
L_B0DC:
	ld a,(ix+002h)		;b0dc   ; lee el paso del actor
	call 040abh		;b0df   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B0E2: tabla de 7 palabras del despachador (call 0x408D en
;   0xB0DF); lo leen L_40AB (14 bytes)
;   0xb0e2..0xb0f0  (14 bytes)
DATA_saltos_B0E2:
	defb 0f0h,0b0h	; b0e2
	defb 002h,0b1h	; b0e4
	defb 027h,0b1h	; b0e6
	defb 039h,0b1h	; b0e8
	defb 04ch,0b1h	; b0ea
	defb 05bh,0b1h	; b0ec
	defb 06ah,0b1h	; b0ee

; ======================================================================
; CODIGO 0xb0f0..0xb36e  (638 bytes)
; ======================================================================


L_B0F0:
	ld a,(0eb68h)		;b0f0   ; lee las banderas de la historia, byte 0x28 (se graban con la partida)
	bit 0,a		;b0f3
	jp nz,08bb4h		;b0f5   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld (ix+008h),012h		;b0f8   ; el fotograma del actor (p07:97E8) = 0x12
	inc (ix+002h)		;b0fc   ; sube el paso del actor
	jp 08aeeh		;b0ff   ; fotogramas_10: los fotogramas de las cuatro direcciones: 0x10, 0x12, 0x14, 0x16
L_B102:
	ld a,(0eb68h)		;b102   ; lee las banderas de la historia, byte 0x28 (se graban con la partida)
	bit 0,a		;b105
	ret z			;b107
	ld a,(0e3c2h)		;b108   ; lee la X del personaje
	cp 040h		;b10b
	jr z,L_B121		;b10d
	cp 060h		;b10f
	jr z,L_B121		;b111
	inc (ix+002h)		;b113   ; sube el paso del actor
L_B116:
	ld a,009h		;b116
	ld (0e3c0h),a		;b118   ; guarda el modo del personaje (tabla p01:718E)
	ld a,001h		;b11b
	ld (0e3a9h),a		;b11d   ; guarda un actor lleva al personaje (no hay menu)
	ret			;b120
L_B121:
	ld (ix+002h),004h		;b121   ; el paso del actor = 0x04
	jr L_B116		;b125
L_B127:
	ld a,(ix+01ch)		;b127
	dec a			;b12a
	jr z,L_B148		;b12b
	ld (ix+01ch),001h		;b12d
	ld a,003h		;b131
	ld (ix+00ah),a		;b133   ; guarda la direccion en la que anda el actor (0: quieto)
	jp echa_a_andar		;b136   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
L_B139:
	ld a,(ix+003h)		;b139   ; lee la Y del actor
	cp 060h		;b13c
	jr z,L_B148		;b13e
	ld a,002h		;b140
	ld (ix+00ah),a		;b142   ; guarda la direccion en la que anda el actor (0: quieto)
	jp echa_a_andar		;b145   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
L_B148:
	inc (ix+002h)		;b148   ; sube el paso del actor
	ret			;b14b
L_B14C:
	ld a,(ix+004h)		;b14c   ; lee la X del actor
	cp 050h		;b14f
	jr z,L_B148		;b151
	ld a,004h		;b153
	ld (ix+00ah),a		;b155   ; guarda la direccion en la que anda el actor (0: quieto)
	jp echa_a_andar		;b158   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
L_B15B:
	ld a,(ix+003h)		;b15b   ; lee la Y del actor
	cp 070h		;b15e
	jr z,L_B148		;b160
	ld a,002h		;b162
	ld (ix+00ah),a		;b164   ; guarda la direccion en la que anda el actor (0: quieto)
	jp echa_a_andar		;b167   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
L_B16A:
	xor a			;b16a
	ld (0e3c0h),a		;b16b   ; guarda el modo del personaje (tabla p01:718E)
	ld (0e3a9h),a		;b16e   ; guarda un actor lleva al personaje (no hay menu)
	ld b,000h		;b171
	ld l,(ix+003h)		;b173   ; lee la Y del actor
	ld h,(ix+004h)		;b176   ; lee la X del actor
	call 05dd3h		;b179   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp 08bb4h		;b17c   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_38:		; la rutina del actor de tipo 0x38 (p07:882D)
	ld a,(ix+002h)		;b17f   ; lee el paso del actor
	or a			;b182
	ret nz			;b183
	ld a,(0eb68h)		;b184   ; lee las banderas de la historia, byte 0x28 (se graban con la partida)
	rla			;b187
	jp nc,08bach		;b188   ; quita_actor_y_anda: el personaje vuelve al modo 0 y se borra el actor
	ld (ix+008h),018h		;b18b   ; el fotograma del actor (p07:97E8) = 0x18
	inc (ix+002h)		;b18f   ; sube el paso del actor
	jp 08b01h		;b192   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_39:		; la rutina de los actores de tipo 0x39, 0x3B, 0x3C (p07:882D)
	ld (ix+008h),01bh		;b195   ; el fotograma del actor (p07:97E8) = 0x1B
	ld a,(ix+002h)		;b199   ; lee el paso del actor
	and 07fh		;b19c
	ret nz			;b19e
	inc (ix+002h)		;b19f   ; sube el paso del actor
	jp 08ad6h		;b1a2   ; fotogramas_1a: los fotogramas de las cuatro direcciones: 0x1A, 0x1B, 0x1C, 0x1D
actor_3a:		; la rutina de los actores de tipo 0x3A, 0xD3, 0xD4, 0xD6, 0xFB, 0xFC, 0x11C, 0x11D, 0x123, 0x124, 0x125, 0x127 y 18 mas (p07:882D)
	ld a,(ix+002h)		;b1a5   ; lee el paso del actor
	or a			;b1a8
	jr nz,pasea		;b1a9
empieza_paseo_00:		; el siguiente paso, los fotogramas 0x00-0x06 y el de su direccion
	inc (ix+002h)		;b1ab   ; sube el paso del actor
	call 08adeh		;b1ae   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
	jp 08b11h		;b1b1   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
pasea:		; si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	ld a,(ix+00ah)		;b1b4   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b1b7
	jr nz,sigue_andando		;b1b8
	ld a,(0e003h)		;b1ba   ; lee la cuenta de cuadros
	and 07fh		;b1bd
	jp nz,08b11h		;b1bf   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
pasea_al_azar:		; una direccion al azar (p07:8B65) y a andar
	call 08b65h		;b1c2   ; direccion_al_azar: una direccion al azar, libre si hay al menos dos libres
echa_a_andar:		; mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
	ld (ix+00bh),a		;b1c5   ; guarda la direccion a la que mira el actor
	ld l,(ix+003h)		;b1c8   ; lee la Y del actor
	ld h,(ix+004h)		;b1cb   ; lee la X del actor
	ld (0e8e0h),hl		;b1ce   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	call 05d6ah		;b1d1
	jp nz,08b14h		;b1d4
	ld b,a			;b1d7
	call 05d89h		;b1d8
	ld a,b			;b1db
	jp z,08b14h		;b1dc
	ld (ix+005h),001h		;b1df   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld (ix+00ah),a		;b1e3   ; guarda la direccion en la que anda el actor (0: quieto)
	ld b,004h		;b1e6
	ld l,(ix+003h)		;b1e8   ; lee la Y del actor
	ld h,(ix+004h)		;b1eb   ; lee la X del actor
	call 05dd3h		;b1ee   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08b11h		;b1f1   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	jp 08b26h		;b1f4   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
sigue_andando:		; su fotograma; al llegar al bloque se para y libera el que deja
	call 08b11h		;b1f7   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld a,(ix+003h)		;b1fa   ; lee la Y del actor
	ld l,a			;b1fd
	ld h,(ix+004h)		;b1fe   ; lee la X del actor
	or h			;b201
	and 00fh		;b202
	ret nz			;b204
	ld (ix+005h),a		;b205   ; guarda si el actor se mueve (bit 0; p07:87FA)
	ld a,(ix+00ah)		;b208   ; lee la direccion en la que anda el actor (0: quieto)
	dec a			;b20b
	xor 001h		;b20c
	inc a			;b20e
	ld b,000h		;b20f
	ld (ix+00ah),b		;b211   ; guarda la direccion en la que anda el actor (0: quieto)
	jp 05dd3h		;b214   ; pon_bloque_de_enfrente: pone B en el bloque de delante
actor_3d:		; la rutina del actor de tipo 0x3D (p07:882D)
	ld (ix+008h),01bh		;b217   ; el fotograma del actor (p07:97E8) = 0x1B
	ld a,(ix+002h)		;b21b   ; lee el paso del actor
	and 07fh		;b21e
	ret nz			;b220
	ld a,(0eb68h)		;b221   ; lee las banderas de la historia, byte 0x28 (se graban con la partida)
	rra			;b224
	jp nc,08bb4h		;b225   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(0eb7dh)		;b228   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 3,a		;b22b
	jp nz,08bb4h		;b22d   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	inc (ix+002h)		;b230   ; sube el paso del actor
	jp 08ad6h		;b233   ; fotogramas_1a: los fotogramas de las cuatro direcciones: 0x1A, 0x1B, 0x1C, 0x1D
actor_3e:		; la rutina de los actores de tipo 0x3E, 0x3F, 0x43, 0x46, 0x53, 0x81, 0xCF, 0xD9, 0xE2, 0xE3, 0xE4, 0xE5 y 2 mas (p07:882D)
	ld a,(ix+002h)		;b236   ; lee el paso del actor
	or a			;b239
	ret nz			;b23a
	ld (ix+008h),018h		;b23b   ; el fotograma del actor (p07:97E8) = 0x18
	ld (ix+00dh),003h		;b23f   ; si se puede hablar con el actor (p02:8D10) = 0x03
	inc (ix+002h)		;b243   ; sube el paso del actor
	call 08b01h		;b246   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
	ld a,(ix+000h)		;b249   ; lee el tipo del actor (bajo)
	sub 03fh		;b24c
	ret nz			;b24e
	ld (ix+00dh),a		;b24f   ; guarda si se puede hablar con el actor (p02:8D10)
	ret			;b252
actor_40:		; la rutina del actor de tipo 0x40 (p07:882D)
	ld a,(ix+020h)		;b253
	dec a			;b256
	ret z			;b257
	ld a,(ix+002h)		;b258   ; lee el paso del actor
	and 07fh		;b25b
	jr nz,L_B278		;b25d
	ld (ix+008h),010h		;b25f   ; el fotograma del actor (p07:97E8) = 0x10
	call 08b01h		;b263   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
	ld (ix+021h),004h		;b266
	ld (ix+00bh),002h		;b26a   ; la direccion a la que mira el actor = 0x02
	ld a,(0eb6ah)		;b26e   ; lee las banderas de la historia, byte 0x2A (se graban con la partida)
	bit 2,a		;b271
	ret z			;b273
	inc (ix+002h)		;b274   ; sube el paso del actor
	ret			;b277
L_B278:
	ld a,(0eb6ah)		;b278   ; lee las banderas de la historia, byte 0x2A (se graban con la partida)
	bit 2,a		;b27b
	ret z			;b27d
	ld a,(0eb67h)		;b27e   ; lee las banderas de la historia, byte 0x27 (se graban con la partida)
	bit 3,a		;b281
	ret z			;b283
	ld a,(0eb66h)		;b284   ; lee las banderas de la historia, byte 0x26 (se graban con la partida)
	bit 6,a		;b287
	ret z			;b289
	ld a,(0eb6bh)		;b28a   ; lee las banderas de la historia, byte 0x2B (se graban con la partida)
	bit 6,a		;b28d
	ret z			;b28f
	call 04592h		;b290   ; sonido_06: pide el sonido 6
	ld a,(ix+00ah)		;b293   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b296
	jr z,L_B2C2		;b297
	call sigue_andando		;b299   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld (ix+008h),010h		;b29c   ; el fotograma del actor (p07:97E8) = 0x10
	ret nz			;b2a0
	xor a			;b2a1
	ld (0e3c0h),a		;b2a2   ; guarda el modo del personaje (tabla p01:718E)
	ld (ix+020h),001h		;b2a5
	ld a,(0eb6ah)		;b2a9   ; lee las banderas de la historia, byte 0x2A (se graban con la partida)
	res 2,a		;b2ac
	ld (0eb6ah),a		;b2ae   ; guarda las banderas de la historia, byte 0x2A (se graban con la partida)
	ld a,(ix+022h)		;b2b1
	dec a			;b2b4
	jr z,L_B2BC		;b2b5
	ld c,002h		;b2b7
	jp 0561dh		;b2b9   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
L_B2BC:
	ld a,006h		;b2bc
	ld (0e360h),a		;b2be   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ret			;b2c1
L_B2C2:
	call 08b47h		;b2c2   ; direccion_del_personaje: la primera direccion con el bloque del personaje (2) delante; acarreo si lo hay
	ret nc			;b2c5
	dec a			;b2c6
	xor 001h		;b2c7
	inc a			;b2c9
	ld l,(ix+003h)		;b2ca   ; lee la Y del actor
	ld h,(ix+004h)		;b2cd   ; lee la X del actor
	ld (0e8e0h),hl		;b2d0   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	call 05d6ah		;b2d3
	ret nz			;b2d6
	call 05d89h		;b2d7
	ret z			;b2da
	ld a,(0e3c6h)		;b2db   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	cp b			;b2de
	ret nz			;b2df
	ld a,b			;b2e0
	ld (ix+00ah),a		;b2e1   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;b2e4   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld b,004h		;b2e8
	ld l,(ix+003h)		;b2ea   ; lee la Y del actor
	ld h,(ix+004h)		;b2ed   ; lee la X del actor
	call 05dd3h		;b2f0   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08b26h		;b2f3   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	ld a,009h		;b2f6
	ld (0e3c0h),a		;b2f8   ; guarda el modo del personaje (tabla p01:718E)
	ld a,(0e382h)		;b2fb
	cp 003h		;b2fe
	jr nz,L_B306		;b300
	ld (ix+022h),001h		;b302
L_B306:
	inc a			;b306
	ld (0e382h),a		;b307
	cp (ix+021h)		;b30a
	ret nz			;b30d
	ld a,(ix+00ah)		;b30e   ; lee la direccion en la que anda el actor (0: quieto)
	ld (ix+01bh),a		;b311
	ret			;b314
actor_41:		; la rutina del actor de tipo 0x41 (p07:882D)
	ld a,(ix+020h)		;b315
	dec a			;b318
	ret z			;b319
	ld a,(ix+002h)		;b31a   ; lee el paso del actor
	and 07fh		;b31d
	jp nz,L_B278		;b31f
	ld (ix+008h),010h		;b322   ; el fotograma del actor (p07:97E8) = 0x10
	call 08b01h		;b326   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
	ld (ix+021h),002h		;b329
	ld (ix+00bh),002h		;b32d   ; la direccion a la que mira el actor = 0x02
	ld a,(0eb6ah)		;b331   ; lee las banderas de la historia, byte 0x2A (se graban con la partida)
	bit 2,a		;b334
	ret z			;b336
	inc (ix+002h)		;b337   ; sube el paso del actor
	ret			;b33a
actor_42:		; la rutina del actor de tipo 0x42 (p07:882D)
	ld a,(ix+020h)		;b33b
	dec a			;b33e
	ret z			;b33f
	ld a,(ix+002h)		;b340   ; lee el paso del actor
	and 07fh		;b343
	jp nz,L_B278		;b345
	ld (ix+008h),010h		;b348   ; el fotograma del actor (p07:97E8) = 0x10
	call 08b01h		;b34c   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
	ld (ix+021h),001h		;b34f
	ld (ix+00bh),002h		;b353   ; la direccion a la que mira el actor = 0x02
	ld a,(0eb6ah)		;b357   ; lee las banderas de la historia, byte 0x2A (se graban con la partida)
	bit 2,a		;b35a
	ret z			;b35c
	inc (ix+002h)		;b35d   ; sube el paso del actor
	ret			;b360
actor_44:		; la rutina del actor de tipo 0x44 (p07:882D)
	ld a,(ix+00ah)		;b361   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b364
	call nz,sigue_andando		;b365   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+002h)		;b368   ; lee el paso del actor
	call 040abh		;b36b   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B36E: tabla de 5 palabras del despachador (call 0x408D en
;   0xB36B); lo leen L_40AB (10 bytes)
;   0xb36e..0xb378  (10 bytes)
DATA_saltos_B36E:
	defb 078h,0b3h	; b36e
	defb 094h,0b3h	; b370
	defb 09ch,0b3h	; b372
	defb 0cah,0b3h	; b374
	defb 0dbh,0b3h	; b376

; ======================================================================
; CODIGO 0xb378..0xb3c4  (76 bytes)
; ======================================================================


L_B378:
	ld a,(0eb6ah)		;b378   ; lee las banderas de la historia, byte 0x2A (se graban con la partida)
	and 09fh		;b37b
	ld (0eb6ah),a		;b37d   ; guarda las banderas de la historia, byte 0x2A (se graban con la partida)
	bit 3,a		;b380
	jp nz,08bb4h		;b382   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	inc (ix+002h)		;b385   ; sube el paso del actor
	ld a,002h		;b388
	ld (ix+00bh),a		;b38a   ; guarda la direccion a la que mira el actor
	ld (ix+008h),01bh		;b38d   ; el fotograma del actor (p07:97E8) = 0x1B
	jp 08ad6h		;b391   ; fotogramas_1a: los fotogramas de las cuatro direcciones: 0x1A, 0x1B, 0x1C, 0x1D
L_B394:
	inc (ix+002h)		;b394   ; sube el paso del actor
	ld c,000h		;b397
	jp 0561dh		;b399   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
L_B39C:
	ld a,(0eb6ah)		;b39c   ; lee las banderas de la historia, byte 0x2A (se graban con la partida)
	bit 3,a		;b39f
	ret z			;b3a1
	inc (ix+002h)		;b3a2   ; sube el paso del actor
	ld a,009h		;b3a5
	ld (0e3c0h),a		;b3a7   ; guarda el modo del personaje (tabla p01:718E)
	ld a,001h		;b3aa
	ld (0e3a9h),a		;b3ac   ; guarda un actor lleva al personaje (no hay menu)
	ld hl,0eb6ah		;b3af   ; apunta a las banderas de la historia, byte 0x2A (se graban con la partida)
	res 1,(hl)		;b3b2
	ld (ix+008h),01ah		;b3b4   ; el fotograma del actor (p07:97E8) = 0x1A
	ld de,05000h		;b3b8
	ld hl,0b3c4h		;b3bb
	call 044b8h		;b3be   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	jp 05e5fh		;b3c1   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800

; ----------------------------------------------------------------------
; DATOS dibujo_B3C4: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p08:B3BE (6 bytes)
;   0xb3c4..0xb3ca  (6 bytes)
DATA_dibujo_B3C4:
	defb 001h,001h,018h,019h	; b3c4
	defb 01ah,01bh	; b3c8

; ======================================================================
; CODIGO 0xb3ca..0xb49d  (211 bytes)
; ======================================================================


L_B3CA:
	inc (ix+002h)		;b3ca   ; sube el paso del actor
	ld a,001h		;b3cd
	ld (ix+00ah),a		;b3cf   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+00bh),a		;b3d2   ; guarda la direccion a la que mira el actor
	ld (ix+005h),a		;b3d5   ; guarda si el actor se mueve (bit 0; p07:87FA)
	jp 08b29h		;b3d8
L_B3DB:
	ld a,(ix+00ah)		;b3db   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b3de
	jr z,L_B3E9		;b3df
	call sigue_andando		;b3e1   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld (ix+008h),01ah		;b3e4   ; el fotograma del actor (p07:97E8) = 0x1A
	ret			;b3e8
L_B3E9:
	xor a			;b3e9
	ld (0e3c0h),a		;b3ea   ; guarda el modo del personaje (tabla p01:718E)
	ld (0e3a9h),a		;b3ed   ; guarda un actor lleva al personaje (no hay menu)
	ld b,000h		;b3f0
	ld l,(ix+003h)		;b3f2   ; lee la Y del actor
	ld h,(ix+004h)		;b3f5   ; lee la X del actor
	call 05dd3h		;b3f8   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08bb4h		;b3fb   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld c,006h		;b3fe
	jp 0561dh		;b400   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
actor_45:		; la rutina del actor de tipo 0x45 (p07:882D)
	ld a,(ix+020h)		;b403
	dec a			;b406
	ret z			;b407
	ld a,(ix+002h)		;b408   ; lee el paso del actor
	and 07fh		;b40b
	jp nz,L_B278		;b40d
	ld (ix+008h),010h		;b410   ; el fotograma del actor (p07:97E8) = 0x10
	call 08b01h		;b414   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
	ld (ix+021h),003h		;b417
	ld (ix+00bh),002h		;b41b   ; la direccion a la que mira el actor = 0x02
	ld a,(0eb6ah)		;b41f   ; lee las banderas de la historia, byte 0x2A (se graban con la partida)
	bit 2,a		;b422
	ret z			;b424
	inc (ix+002h)		;b425   ; sube el paso del actor
	ret			;b428
actor_47:		; la rutina de los actores de tipo 0x47, 0x4A, 0x4B, 0x4C (p07:882D)
	ld a,(ix+002h)		;b429   ; lee el paso del actor
	or a			;b42c
	jp nz,L_B440		;b42d
	ld a,(ix+000h)		;b430   ; lee el tipo del actor (bajo)
	cp 04ch		;b433
	jp z,empieza_paseo_10		;b435   ; empieza_paseo_10: el siguiente paso, los fotogramas 0x10-0x16 y el de su direccion
	cp 04bh		;b438
	jp z,empieza_paseo_08		;b43a   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
	jp empieza_paseo_00		;b43d   ; empieza_paseo_00: el siguiente paso, los fotogramas 0x00-0x06 y el de su direccion
L_B440:
	ld a,(ix+00ah)		;b440   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b443
	jp nz,sigue_andando		;b444   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	call 043d0h		;b447   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 03fh		;b44a
	jp nz,08b11h		;b44c   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	call 08b65h		;b44f   ; direccion_al_azar: una direccion al azar, libre si hay al menos dos libres
	jp echa_a_andar		;b452   ; echa_a_andar: mira hacia A y, si el bloque de delante esta libre y no es el borde, se pone en marcha y lo reserva (4)
actor_48:		; la rutina de los actores de tipo 0x48, 0x49, 0xD7, 0x12F, 0x133, 0x135, 0x14F, 0x154 (p07:882D)
	ld a,(ix+002h)		;b455   ; lee el paso del actor
	or a			;b458
	jp nz,pasea		;b459   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	jp empieza_paseo_08		;b45c   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
actor_4d:		; la rutina del actor de tipo 0x4D (p07:882D)
	ld a,(ix+002h)		;b45f   ; lee el paso del actor
	and 07fh		;b462
	dec a			;b464
	jr z,L_B476		;b465
	dec a			;b467
	jr z,L_B486		;b468
	dec a			;b46a
	ret z			;b46b
	ld (ix+008h),013h		;b46c   ; el fotograma del actor (p07:97E8) = 0x13
	inc (ix+002h)		;b470   ; sube el paso del actor
	jp 08b01h		;b473   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_B476:
	ld a,(0eb6ch)		;b476   ; lee las banderas de la historia, byte 0x2C (se graban con la partida)
	rla			;b479
	ret c			;b47a
	rla			;b47b
	ret nc			;b47c
	inc (ix+002h)		;b47d   ; sube el paso del actor
	ld a,009h		;b480
	ld (0e3c0h),a		;b482   ; guarda el modo del personaje (tabla p01:718E)
	ret			;b485
L_B486:
	inc (ix+002h)		;b486   ; sube el paso del actor
	ld bc,000a5h		;b489
	ld l,002h		;b48c
	ld a,(0e3c2h)		;b48e   ; lee la X del personaje
	ld d,a			;b491
	xor a			;b492
	ld e,a			;b493
	jp 082feh		;b494   ; crea_actor: en el primer hueco de 0xE400: el tipo BC en (E, D), direccion al azar, colores (p07:83B4) y nombre (p08:A063)
actor_4e:		; la rutina del actor de tipo 0x4E (p07:882D)
	ld a,(ix+002h)		;b497   ; lee el paso del actor
	call 040abh		;b49a   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B49D: tabla de 7 palabras del despachador (call 0x408D en
;   0xB49A); lo leen L_40AB (14 bytes)
;   0xb49d..0xb4ab  (14 bytes)
DATA_saltos_B49D:
	defb 0d2h,0b4h	; b49d
	defb 065h,0b5h	; b49f
	defb 0ebh,0b5h	; b4a1
	defb 010h,0b6h	; b4a3
	defb 02ah,0b6h	; b4a5
	defb 062h,0b6h	; b4a7
	defb 088h,0b6h	; b4a9

; ======================================================================
; CODIGO 0xb4ab..0xb4b1  (6 bytes)
; ======================================================================


actor_52:		; la rutina del actor de tipo 0x52 (p07:882D)
	ld a,(ix+002h)		;b4ab   ; lee el paso del actor
	call 040abh		;b4ae   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B4B1: tabla de 6 palabras del despachador (call 0x408D en
;   0xB4AE); lo leen L_40AB (12 bytes)
;   0xb4b1..0xb4bd  (12 bytes)
DATA_saltos_B4B1:
	defb 0bdh,0b4h	; b4b1
	defb 065h,0b5h	; b4b3
	defb 0ebh,0b5h	; b4b5
	defb 017h,0b6h	; b4b7
	defb 031h,0b6h	; b4b9
	defb 088h,0b6h	; b4bb

; ======================================================================
; CODIGO 0xb4bd..0xb55d  (160 bytes)
; ======================================================================


L_B4BD:
	ld a,(0eb71h)		;b4bd   ; lee las banderas de la historia, byte 0x31 (se graban con la partida)
	bit 4,a		;b4c0
	ret z			;b4c2
	ld a,(0eb70h)		;b4c3   ; lee las banderas de la historia, byte 0x30 (se graban con la partida)
	bit 5,a		;b4c6
	jp z,L_B54F		;b4c8
	ld (ix+002h),004h		;b4cb   ; el paso del actor = 0x04
	jp L_B54F		;b4cf
L_B4D2:
	ld a,(0eb6fh)		;b4d2   ; lee las banderas de la historia, byte 0x2F (se graban con la partida)
	rla			;b4d5
	ret nc			;b4d6
	ld a,(0eb70h)		;b4d7   ; lee las banderas de la historia, byte 0x30 (se graban con la partida)
	bit 5,a		;b4da
	jr z,L_B541		;b4dc
	ld (ix+002h),005h		;b4de   ; el paso del actor = 0x05
	and a			;b4e2
	ld de,(0e3c1h)		;b4e3   ; lee la Y del personaje y el byte siguiente (16 bits)
	ld hl,06060h		;b4e7
	sbc hl,de		;b4ea
	jr nz,L_B541		;b4ec
	ld h,d			;b4ee
	ld l,e			;b4ef
	ld a,000h		;b4f0
	ld b,001h		;b4f2
	call 05dd3h		;b4f4   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld hl,(0e384h)		;b4f7
	ld (0e3c1h),hl		;b4fa   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ld b,001h		;b4fd
	ld a,(0e3c1h)		;b4ff   ; lee la Y del personaje
	cp 070h		;b502
	jr z,L_B512		;b504
	inc b			;b506
	or a			;b507
	jr z,L_B512		;b508
	inc b			;b50a
	ld a,(0e3c2h)		;b50b   ; lee la X del personaje
	or a			;b50e
	jr nz,L_B512		;b50f
	inc b			;b511
L_B512:
	ld a,b			;b512
	ld (0e3c6h),a		;b513   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	dec a			;b516
	xor 001h		;b517
	inc a			;b519
	ld (ix+00bh),a		;b51a   ; guarda la direccion a la que mira el actor
	ld hl,(0e3c1h)		;b51d   ; lee la Y del personaje y el byte siguiente (16 bits)
	ld (ix+003h),l		;b520   ; guarda la Y del actor
	ld (ix+004h),h		;b523   ; guarda la X del actor
	add a,a			;b526
	ld hl,0b55bh		;b527
	call 040a1h		;b52a   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;b52d
	add a,(ix+003h)		;b52e   ; le suma la Y del actor
	ld (ix+003h),a		;b531   ; guarda la Y del actor
	inc hl			;b534
	ld a,(hl)			;b535
	add a,(ix+004h)		;b536   ; le suma la X del actor
	ld (ix+004h),a		;b539   ; guarda la X del actor
	ld c,00dh		;b53c
	call 0561dh		;b53e   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
L_B541:
	call 0458dh		;b541   ; sonido_1e: pide el sonido 0x1E
	ld (ix+00eh),00bh		;b544   ; el color del primer sprite del actor = 0x0B
	ld (ix+00fh),006h		;b548   ; el color del segundo sprite del actor = 0x06
	jp empieza_paseo_08		;b54c   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
L_B54F:
	call 0458dh		;b54f   ; sonido_1e: pide el sonido 0x1E
	ld (ix+00eh),001h		;b552   ; el color del primer sprite del actor = 0x01
	ld (ix+00fh),00bh		;b556   ; el color del segundo sprite del actor = 0x0B
	jp empieza_paseo_08		;b55a   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion

; ----------------------------------------------------------------------
; DATOS resto_B55D: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (8 bytes)
;   0xb55d..0xb565  (8 bytes)
DATA_resto_B55D:
	defb 010h,000h,0f0h,000h,000h,010h,000h,0f0h	; b55d  ........

; ======================================================================
; CODIGO 0xb565..0xb71a  (437 bytes)
; ======================================================================


L_B565:
	inc (ix+002h)		;b565   ; sube el paso del actor
	ld a,(0e3c1h)		;b568   ; lee la Y del personaje
	sub 010h		;b56b
	cp 060h		;b56d
	jr nc,L_B583		;b56f
	ld (ix+020h),001h		;b571
L_B575:
	ld a,(0e3c2h)		;b575   ; lee la X del personaje
	cp (ix+004h)		;b578   ; compara con la X del actor
	ret z			;b57b
	ld a,003h		;b57c
	jr c,L_B58F		;b57e
	inc a			;b580
	jr L_B58F		;b581
L_B583:
	ld a,(0e3c1h)		;b583   ; lee la Y del personaje
	cp (ix+003h)		;b586   ; compara con la Y del actor
	ret z			;b589
	ld a,001h		;b58a
	jr c,L_B58F		;b58c
	inc a			;b58e
L_B58F:
	ld (ix+00bh),a		;b58f   ; guarda la direccion a la que mira el actor
	ld l,(ix+003h)		;b592   ; lee la Y del actor
	ld h,(ix+004h)		;b595   ; lee la X del actor
	ld (0e8e0h),hl		;b598   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	call 05d6ah		;b59b
	jr z,L_B5B2		;b59e
	ld a,(hl)			;b5a0
	cp 002h		;b5a1
	jr z,L_B5DC		;b5a3
	ld (ix+005h),001h		;b5a5   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld (ix+00ah),b		;b5a9   ; guarda la direccion en la que anda el actor (0: quieto)
	call 08b11h		;b5ac   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	jp 08b26h		;b5af   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
L_B5B2:
	call 08b14h		;b5b2   ; su fotograma
	call 08b47h		;b5b5   ; tiene al personaje al lado?
	jr c,L_B5DC		;b5b8
	ld a,(ix+021h)		;b5ba   ; cuenta las vueltas
	inc a			;b5bd
	ld (ix+021h),a		;b5be
	cp 002h		;b5c1
	jr z,L_B5CF		;b5c3
	ld a,(ix+020h)		;b5c5
	or a			;b5c8
	jp z,L_B575		;b5c9
	jp L_B583		;b5cc
L_B5CF:
	ld (ix+002h),004h		;b5cf   ; el paso del actor = 0x04
	xor a			;b5d3
	ld (ix+020h),a		;b5d4
	ld (ix+021h),a		;b5d7
	jr L_B62A		;b5da
L_B5DC:
	ld (ix+00bh),a		;b5dc   ; guarda la direccion a la que mira el actor
	ld (ix+002h),003h		;b5df   ; el paso del actor = 0x03
	xor a			;b5e3
	ld (ix+021h),a		;b5e4
	ld (ix+020h),a		;b5e7
	ret			;b5ea
L_B5EB:
	ld a,(ix+00ah)		;b5eb   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b5ee
	jr nz,L_B5FB		;b5ef
	call 08b47h		;b5f1   ; direccion_del_personaje: la primera direccion con el bloque del personaje (2) delante; acarreo si lo hay
	jr c,L_B5DC		;b5f4
	ld a,(ix+00bh)		;b5f6   ; lee la direccion a la que mira el actor
	jr L_B58F		;b5f9
L_B5FB:
	call 08b11h		;b5fb   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld a,(ix+003h)		;b5fe   ; lee la Y del actor
	ld l,a			;b601
	ld h,(ix+004h)		;b602   ; lee la X del actor
	or h			;b605
	and 00fh		;b606
	ret nz			;b608
	ld (ix+005h),a		;b609   ; guarda si el actor se mueve (bit 0; p07:87FA)
	ld (ix+00ah),a		;b60c   ; guarda la direccion en la que anda el actor (0: quieto)
	ret			;b60f
L_B610:
	ld a,(0eb70h)		;b610   ; lee las banderas de la historia, byte 0x30 (se graban con la partida)
	bit 5,a		;b613
	jr nz,L_B63E		;b615
L_B617:
	ld a,(ix+00bh)		;b617   ; lee la direccion a la que mira el actor
	dec a			;b61a
	add a,a			;b61b
	add a,008h		;b61c
	ld (ix+008h),a		;b61e   ; guarda el fotograma del actor (p07:97E8)
	call 08b47h		;b621   ; direccion_del_personaje: la primera direccion con el bloque del personaje (2) delante; acarreo si lo hay
	ret c			;b624
	ld (ix+002h),001h		;b625   ; el paso del actor = 0x01
	ret			;b629
L_B62A:
	ld a,(0eb70h)		;b62a   ; lee las banderas de la historia, byte 0x30 (se graban con la partida)
	bit 5,a		;b62d
	jr nz,L_B63E		;b62f
L_B631:
	call 08b11h		;b631   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld a,(0e3c4h)		;b634   ; lee el personaje va de un bloque a otro
	or a			;b637
	ret z			;b638
	ld (ix+002h),001h		;b639   ; el paso del actor = 0x01
	ret			;b63d
L_B63E:
	ld hl,(0e3c1h)		;b63e   ; lee la Y del personaje y el byte siguiente (16 bits)
	ld (0e384h),hl		;b641
	ld a,00fh		;b644
	ld (0e3c0h),a		;b646   ; guarda el modo del personaje (tabla p01:718E)
	ld (ix+002h),005h		;b649   ; el paso del actor = 0x05
	call 08b47h		;b64d   ; direccion_del_personaje: la primera direccion con el bloque del personaje (2) delante; acarreo si lo hay
	ret nc			;b650
	dec a			;b651
	xor 001h		;b652
	inc a			;b654
	ld (ix+00bh),a		;b655   ; guarda la direccion a la que mira el actor
	ld (ix+00ah),a		;b658   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;b65b   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	jp 08b29h		;b65f
L_B662:
	ld a,(ix+00ah)		;b662   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b665
	jp nz,sigue_andando		;b666   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+00bh)		;b669   ; lee la direccion a la que mira el actor
	ld (ix+00ah),a		;b66c   ; guarda la direccion en la que anda el actor (0: quieto)
	inc (ix+005h)		;b66f   ; sube si el actor se mueve (bit 0; p07:87FA)
	inc (ix+022h)		;b672
	ld a,(ix+022h)		;b675
	sub 002h		;b678
	jr z,L_B681		;b67a
	dec a			;b67c
	ret nz			;b67d
	jp z,08bb4h		;b67e   ; borra_actor: los 0x80 bytes de la ficha IX a cero
L_B681:
	ld (ix+00eh),a		;b681   ; guarda el color del primer sprite del actor
	ld (ix+00fh),a		;b684   ; guarda el color del segundo sprite del actor
	ret			;b687
L_B688:
	ld a,(ix+00ah)		;b688   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b68b
	jp nz,L_B5FB		;b68c
	call 043d0h		;b68f   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 003h		;b692
	inc a			;b694
	ld (ix+00bh),a		;b695   ; guarda la direccion a la que mira el actor
	ld l,(ix+003h)		;b698   ; lee la Y del actor
	ld h,(ix+004h)		;b69b   ; lee la X del actor
	ld (0e8e0h),hl		;b69e   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	call 05d6ah		;b6a1
	jp z,08b14h		;b6a4
	ld a,(hl)			;b6a7
	cp 002h		;b6a8
	jp z,08b14h		;b6aa
	ld (ix+005h),001h		;b6ad   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld (ix+00ah),b		;b6b1   ; guarda la direccion en la que anda el actor (0: quieto)
	call 08b11h		;b6b4   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	jp 08b26h		;b6b7   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
actor_a9:		; la rutina del actor de tipo 0xA9 (p07:882D)
	ld a,(ix+002h)		;b6ba   ; lee el paso del actor
	and 07fh		;b6bd
	jp nz,pasea		;b6bf   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	inc (ix+002h)		;b6c2   ; sube el paso del actor
	call 08aeeh		;b6c5   ; fotogramas_10: los fotogramas de las cuatro direcciones: 0x10, 0x12, 0x14, 0x16
	jp 08b11h		;b6c8   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
actor_aa:		; la rutina del actor de tipo 0xAA (p07:882D)
	ld a,(ix+002h)		;b6cb   ; lee el paso del actor
	dec a			;b6ce
	jr z,L_B6E3		;b6cf
	ld a,(0eb59h)		;b6d1   ; lee las banderas de la historia, byte 0x19 (se graban con la partida)
	bit 1,a		;b6d4
	jp nz,08bb4h		;b6d6   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	inc (ix+002h)		;b6d9   ; sube el paso del actor
	ld (ix+008h),023h		;b6dc   ; el fotograma del actor (p07:97E8) = 0x23
	jp 08b01h		;b6e0   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_B6E3:
	ld a,(0eb59h)		;b6e3   ; lee las banderas de la historia, byte 0x19 (se graban con la partida)
	bit 1,a		;b6e6
	ret z			;b6e8
	ld hl,05050h		;b6e9
	xor a			;b6ec
	ld b,a			;b6ed
	call 05dd3h		;b6ee   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld hl,0394ah		;b6f1
	ld a,010h		;b6f4
	call 0004dh		;b6f6   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;b6f9
	ld a,011h		;b6fa
	call 0004dh		;b6fc   ; BIOS WRTVRM - Writes data in VRAM
	ld hl,0396ah		;b6ff
	ld a,012h		;b702
	call 0004dh		;b704   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;b707
	ld a,013h		;b708
	call 0004dh		;b70a   ; BIOS WRTVRM - Writes data in VRAM
	call 08bb4h		;b70d   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	call 0458dh		;b710   ; sonido_1e: pide el sonido 0x1E
	ret			;b713
actor_ad:		; la rutina del actor de tipo 0xAD (p07:882D)
	ld a,(ix+002h)		;b714   ; lee el paso del actor
	call 040abh		;b717   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B71A: tabla de 3 palabras del despachador (call 0x408D en
;   0xB717); lo leen L_40AB (6 bytes)
;   0xb71a..0xb720  (6 bytes)
DATA_saltos_B71A:
	defb 020h,0b7h	; b71a
	defb 046h,0b7h	; b71c
	defb 06ah,0b7h	; b71e

; ======================================================================
; CODIGO 0xb720..0xb7a4  (132 bytes)
; ======================================================================


L_B720:
	ld a,(0eb5bh)		;b720   ; lee las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 4,a		;b723
	jp z,08bb4h		;b725   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(0eb5ah)		;b728   ; lee las banderas de la historia, byte 0x1A (se graban con la partida)
	bit 1,a		;b72b
	jp nz,08bb4h		;b72d   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(0eb70h)		;b730   ; lee las banderas de la historia, byte 0x30 (se graban con la partida)
	bit 5,a		;b733
	jp z,08bb4h		;b735   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	inc (ix+002h)		;b738   ; sube el paso del actor
	ld a,002h		;b73b
	ld (ix+008h),a		;b73d   ; guarda el fotograma del actor (p07:97E8)
	ld (ix+00bh),a		;b740   ; guarda la direccion a la que mira el actor
	jp 08adeh		;b743   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
L_B746:
	ld a,(0eb5ah)		;b746   ; lee las banderas de la historia, byte 0x1A (se graban con la partida)
	bit 1,a		;b749
	jp z,08b11h		;b74b   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld a,009h		;b74e
	ld (0e3c0h),a		;b750   ; guarda el modo del personaje (tabla p01:718E)
	inc (ix+002h)		;b753   ; sube el paso del actor
	ld (ix+00bh),002h		;b756   ; la direccion a la que mira el actor = 0x02
L_B75A:
	ld a,(ix+00bh)		;b75a   ; lee la direccion a la que mira el actor
	ld (ix+00ah),a		;b75d   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;b760   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	call 08b26h		;b764   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	jp 08b11h		;b767   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
L_B76A:
	ld a,(ix+00ah)		;b76a   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b76d
	jp nz,sigue_andando		;b76e   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+003h)		;b771   ; lee la Y del actor
	cp 070h		;b774
	jr c,L_B75A		;b776
	ld hl,02070h		;b778
	ld b,a			;b77b
	call 05dd3h		;b77c   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08bb4h		;b77f   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld bc,000aeh		;b782
	ld de,02070h		;b785
	ld l,002h		;b788
	xor a			;b78a
	call 082feh		;b78b   ; crea_actor: en el primer hueco de 0xE400: el tipo BC en (E, D), direccion al azar, colores (p07:83B4) y nombre (p08:A063)
	ld hl,0eb6ah		;b78e   ; apunta a las banderas de la historia, byte 0x2A (se graban con la partida)
	set 0,(hl)		;b791
	dec hl			;b793
	ld (hl),093h		;b794
	ld hl,0eb7ah		;b796   ; apunta a las banderas de la historia, byte 0x3A (se graban con la partida)
	ld (hl),022h		;b799
	ret			;b79b
actor_ae:		; la rutina del actor de tipo 0xAE (p07:882D)
	ld a,(ix+002h)		;b79c   ; lee el paso del actor
	and 07fh		;b79f
	call 040abh		;b7a1   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B7A4: tabla de 3 palabras del despachador (call 0x408D en
;   0xB7A1); lo leen L_40AB (6 bytes)
;   0xb7a4..0xb7aa  (6 bytes)
DATA_saltos_B7A4:
	defb 0aah,0b7h	; b7a4
	defb 0d1h,0b7h	; b7a6
	defb 0ffh,0b7h	; b7a8

; ======================================================================
; CODIGO 0xb7aa..0xbc3a  (1168 bytes)
; ======================================================================


L_B7AA:
	ld hl,0eb74h		;b7aa   ; apunta a las banderas de la historia, byte 0x34 (se graban con la partida)
	set 0,(hl)		;b7ad
	call mira_arriba_y_quieto		;b7af   ; mira_arriba_y_quieto: siguiente paso, fotograma 8 mirando arriba
L_B7B2:
	ld a,(ix+00bh)		;b7b2   ; lee la direccion a la que mira el actor
	ld (ix+00ah),a		;b7b5   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;b7b8   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	call 08b26h		;b7bc   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	jp 08b11h		;b7bf   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
mira_arriba_y_quieto:		; siguiente paso, fotograma 8 mirando arriba
	inc (ix+002h)		;b7c2   ; sube el paso del actor
	ld (ix+008h),008h		;b7c5   ; el fotograma del actor (p07:97E8) = 0x08
	ld a,001h		;b7c9
	ld (ix+00bh),a		;b7cb   ; guarda la direccion a la que mira el actor
	jp 08b01h		;b7ce   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_B7D1:
	ld a,(ix+00ah)		;b7d1   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b7d4
	jp nz,sigue_andando		;b7d5   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+003h)		;b7d8   ; lee la Y del actor
	add a,010h		;b7db
	ld l,a			;b7dd
	ld h,020h		;b7de
	ld b,001h		;b7e0
	xor a			;b7e2
	call 05dd3h		;b7e3   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld a,(ix+003h)		;b7e6   ; lee la Y del actor
	cp 020h		;b7e9
	jr nz,L_B7B2		;b7eb
	inc (ix+002h)		;b7ed   ; sube el paso del actor
	ld l,a			;b7f0
	ld h,(ix+004h)		;b7f1   ; lee la X del actor
	xor a			;b7f4
	ld (0e3c0h),a		;b7f5   ; guarda el modo del personaje (tabla p01:718E)
	ld (ix+00dh),a		;b7f8   ; guarda si se puede hablar con el actor (p02:8D10)
	ld b,a			;b7fb
	jp 05dd3h		;b7fc   ; pon_bloque_de_enfrente: pone B en el bloque de delante
L_B7FF:
	ld a,(0e3c1h)		;b7ff   ; lee la Y del personaje
	cp (ix+003h)		;b802   ; compara con la Y del actor
	ret nz			;b805
	ld a,(0e3c2h)		;b806   ; lee la X del personaje
	sub (ix+004h)		;b809   ; le resta la X del actor
	ret nz			;b80c
	ld a,006h		;b80d
	ld (0e3c0h),a		;b80f   ; guarda el modo del personaje (tabla p01:718E)
	ld a,001h		;b812
	ld (0e3d9h),a		;b814
	ld hl,0eb74h		;b817   ; apunta a las banderas de la historia, byte 0x34 (se graban con la partida)
	ld a,(hl)			;b81a
	and 0f8h		;b81b
	ld (hl),a			;b81d
	call 08bb4h		;b81e   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,003h		;b821
	call 04662h		;b823
	ret			;b826
actor_c8:		; la rutina del actor de tipo 0xC8 (p07:882D)
	ld a,(ix+002h)		;b827   ; lee el paso del actor
	or a			;b82a
	jr nz,L_B7FF		;b82b
	ld h,(ix+004h)		;b82d   ; lee la X del actor
	ld l,(ix+003h)		;b830   ; lee la Y del actor
	xor a			;b833
	ld b,a			;b834
	ld (ix+00dh),a		;b835   ; guarda si se puede hablar con el actor (p02:8D10)
	call 05dd3h		;b838   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	inc (ix+002h)		;b83b   ; sube el paso del actor
	ld (ix+008h),024h		;b83e   ; el fotograma del actor (p07:97E8) = 0x24
	call 08b01h		;b842   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
	jr L_B7FF		;b845
actor_5b:		; la rutina de los actores de tipo 0x5B, 0x5C, 0x5D, 0x5E (p07:882D)
	ld a,(0eb6dh)		;b847   ; lee las banderas de la historia, byte 0x2D (se graban con la partida)
	bit 4,a		;b84a
	jp z,08bb4h		;b84c   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_50:		; la rutina del actor de tipo 0x50 (p07:882D)
	ld a,(ix+002h)		;b84f   ; lee el paso del actor
	and 07fh		;b852
	dec a			;b854
	jr z,L_B890		;b855
	dec a			;b857
	jr z,L_B8A6		;b858
	dec a			;b85a
	jp z,L_B8F3		;b85b
	ld a,(0eb74h)		;b85e   ; lee las banderas de la historia, byte 0x34 (se graban con la partida)
	bit 3,a		;b861
	jp nz,08bb4h		;b863   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld (ix+00bh),001h		;b866   ; la direccion a la que mira el actor = 0x01
	ld a,(ix+000h)		;b86a   ; lee el tipo del actor (bajo)
	cp 050h		;b86d
	jp nz,empieza_paseo_08		;b86f   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
	inc (ix+002h)		;b872   ; sube el paso del actor
	ld (ix+008h),025h		;b875   ; el fotograma del actor (p07:97E8) = 0x25
	jp 08b01h		;b879   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_5f:		; la rutina del actor de tipo 0x5F (p07:882D)
	ld (ix+008h),016h		;b87c   ; el fotograma del actor (p07:97E8) = 0x16
	ld a,(ix+002h)		;b880   ; lee el paso del actor
	or a			;b883
	ret nz			;b884
	ld (0e3a9h),a		;b885   ; guarda un actor lleva al personaje (no hay menu)
	call empieza_paseo_10		;b888   ; empieza_paseo_10: el siguiente paso, los fotogramas 0x10-0x16 y el de su direccion
	ld c,000h		;b88b
	jp 0561dh		;b88d   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
L_B890:
	ld a,(0eb6dh)		;b890   ; lee las banderas de la historia, byte 0x2D (se graban con la partida)
	bit 4,a		;b893
	ret z			;b895
	ld a,001h		;b896
	ld (ix+00bh),a		;b898   ; guarda la direccion a la que mira el actor
	ld (0e3a9h),a		;b89b   ; guarda un actor lleva al personaje (no hay menu)
	ld a,011h		;b89e
	ld (0e3c0h),a		;b8a0   ; guarda el modo del personaje (tabla p01:718E)
	jp empieza_paseo_08		;b8a3   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
L_B8A6:
	ld a,(ix+00ah)		;b8a6   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b8a9
	jp nz,sigue_andando		;b8aa   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(0eb40h)		;b8ad   ; lee la sala (16 bits)
	cp 087h		;b8b0
	jr nz,L_B8BB		;b8b2
	ld a,(ix+003h)		;b8b4   ; lee la Y del actor
	cp 050h		;b8b7
	jr z,L_B8D2		;b8b9
L_B8BB:
	ld a,(ix+003h)		;b8bb   ; lee la Y del actor
	or a			;b8be
	jp z,08bb4h		;b8bf   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(ix+00bh)		;b8c2   ; lee la direccion a la que mira el actor
	ld (ix+00ah),a		;b8c5   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;b8c8   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	call 08b11h		;b8cc   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	jp 08b26h		;b8cf   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
L_B8D2:
	ld a,001h		;b8d2
	ld (0e3a9h),a		;b8d4   ; guarda un actor lleva al personaje (no hay menu)
	ld (ix+020h),020h		;b8d7
	inc (ix+002h)		;b8db   ; sube el paso del actor
	ld hl,0eb74h		;b8de   ; apunta a las banderas de la historia, byte 0x34 (se graban con la partida)
	set 3,(hl)		;b8e1
	call 08000h		;b8e3   ; sonido_22: pide el sonido 0x22
	ld bc,00068h		;b8e6
	ld de,05040h		;b8e9
	ld l,000h		;b8ec
	ld a,001h		;b8ee
	jp 082feh		;b8f0   ; crea_actor: en el primer hueco de 0xE400: el tipo BC en (E, D), direccion al azar, colores (p07:83B4) y nombre (p08:A063)
L_B8F3:
	dec (ix+020h)		;b8f3
	ret nz			;b8f6
	jp 08bb4h		;b8f7   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_51:		; la rutina del actor de tipo 0x51 (p07:882D)
	ld a,(ix+002h)		;b8fa   ; lee el paso del actor
	or a			;b8fd
	ret nz			;b8fe
	ld (ix+00dh),002h		;b8ff   ; si se puede hablar con el actor (p02:8D10) = 0x02
	inc (ix+002h)		;b903   ; sube el paso del actor
	ld (ix+008h),018h		;b906   ; el fotograma del actor (p07:97E8) = 0x18
	jp 08b01h		;b90a   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_54:		; la rutina del actor de tipo 0x54 (p07:882D)
	ld a,(ix+002h)		;b90d   ; lee el paso del actor
	and 07fh		;b910
	jr nz,L_B92B		;b912
	ld (ix+00bh),001h		;b914   ; la direccion a la que mira el actor = 0x01
	inc (ix+002h)		;b918   ; sube el paso del actor
	call 08ae6h		;b91b   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
	call 08b11h		;b91e   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	ld a,(0e3c1h)		;b921   ; lee la Y del personaje
	cp 030h		;b924
	ret nc			;b926
	inc (ix+002h)		;b927   ; sube el paso del actor
	ret			;b92a
L_B92B:
	ld a,(ix+005h)		;b92b   ; lee si el actor se mueve (bit 0; p07:87FA)
	or a			;b92e
	jp nz,sigue_andando		;b92f   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+002h)		;b932   ; lee el paso del actor
	dec a			;b935
	jp nz,pasea		;b936   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	ld a,(ix+003h)		;b939   ; lee la Y del actor
	sub 020h		;b93c
	jr nz,L_B948		;b93e
	ld hl,0e3c0h		;b940   ; apunta a el modo del personaje (tabla p01:718E)
	ld (hl),a			;b943
	inc (ix+002h)		;b944   ; sube el paso del actor
	ret			;b947
L_B948:
	ld a,(ix+00bh)		;b948   ; lee la direccion a la que mira el actor
	ld (ix+00ah),a		;b94b   ; guarda la direccion en la que anda el actor (0: quieto)
	inc (ix+005h)		;b94e   ; sube si el actor se mueve (bit 0; p07:87FA)
	call 08b11h		;b951   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	jp 08b26h		;b954   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
actor_55:		; la rutina del actor de tipo 0x55 (p07:882D)
	ld a,(ix+002h)		;b957   ; lee el paso del actor
	or a			;b95a
	ret nz			;b95b
	inc (ix+002h)		;b95c   ; sube el paso del actor
	ld (ix+008h),011h		;b95f   ; el fotograma del actor (p07:97E8) = 0x11
	ld hl,01110h		;b963
	ld de,01312h		;b966
	jp 08af4h		;b969   ; pon_fotogramas: los fotogramas por direccion: (ix+0x11..0x14) = L, H, E, D
actor_56:		; la rutina del actor de tipo 0x56 (p07:882D)
	ld (ix+008h),027h		;b96c   ; el fotograma del actor (p07:97E8) = 0x27
	jr L_B97C		;b970
actor_57:		; la rutina del actor de tipo 0x57 (p07:882D)
	ld (ix+008h),015h		;b972   ; el fotograma del actor (p07:97E8) = 0x15
	jr L_B97C		;b976
actor_58:		; la rutina del actor de tipo 0x58 (p07:882D)
	ld (ix+008h),014h		;b978   ; el fotograma del actor (p07:97E8) = 0x14
L_B97C:
	ld a,(ix+002h)		;b97c   ; lee el paso del actor
	and 07fh		;b97f
	ret nz			;b981
	inc (ix+002h)		;b982   ; sube el paso del actor
	jp 08b01h		;b985   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_59:		; la rutina de los actores de tipo 0x59, 0x5A (p07:882D)
	ld (ix+008h),01bh		;b988   ; el fotograma del actor (p07:97E8) = 0x1B
	ld a,(ix+002h)		;b98c   ; lee el paso del actor
	and 07fh		;b98f
	ret nz			;b991
	inc (ix+002h)		;b992   ; sube el paso del actor
	jp 08ad6h		;b995   ; fotogramas_1a: los fotogramas de las cuatro direcciones: 0x1A, 0x1B, 0x1C, 0x1D
actor_60:		; la rutina del actor de tipo 0x60 (p07:882D)
	ld a,(ix+002h)		;b998   ; lee el paso del actor
	or a			;b99b
	jp nz,pasea		;b99c   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	jp empieza_paseo_08		;b99f   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
actor_61:		; la rutina del actor de tipo 0x61 (p07:882D)
	ld a,(ix+002h)		;b9a2   ; lee el paso del actor
	or a			;b9a5
	jr nz,pasea_en_su_zona		;b9a6
	ld (ix+030h),a		;b9a8   ; guarda el borde de arriba de la zona del actor
	ld (ix+031h),060h		;b9ab   ; el borde de abajo de la zona del actor = 0x60
	ld (ix+032h),010h		;b9af   ; el borde izquierdo de la zona del actor = 0x10
	ld (ix+033h),0a0h		;b9b3   ; el borde derecho de la zona del actor = 0xA0
	ld (ix+034h),07fh		;b9b7   ; la frecuencia con la que cambia de direccion = 0x7F
	jp empieza_paseo_08		;b9bb   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
pasea_en_su_zona:		; como p08:B1B4, sin salir de la zona (ix+0x30)-(ix+0x33) y con la frecuencia (ix+0x34)
	ld a,(ix+00ah)		;b9be   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;b9c1
	jp nz,sigue_andando		;b9c2   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	call 043d0h		;b9c5   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and (ix+034h)		;b9c8   ; AND con la frecuencia con la que cambia de direccion
	jp nz,08b11h		;b9cb   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	call 08b65h		;b9ce   ; direccion_al_azar: una direccion al azar, libre si hay al menos dos libres
	ld (ix+00bh),a		;b9d1   ; guarda la direccion a la que mira el actor
	ld l,(ix+003h)		;b9d4   ; lee la Y del actor
	ld h,(ix+004h)		;b9d7   ; lee la X del actor
	ld (0e8e0h),hl		;b9da   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	call 05d6ah		;b9dd
	jp nz,08b14h		;b9e0
	ld b,a			;b9e3
	call 05dabh		;b9e4   ; en_el_borde_de_ix: como p00:5D80 con los bordes de la ficha IX (+0x30-0x33)
	ld a,b			;b9e7
	jp z,08b14h		;b9e8
	ld (ix+005h),001h		;b9eb   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	ld (ix+00ah),a		;b9ef   ; guarda la direccion en la que anda el actor (0: quieto)
	ld b,004h		;b9f2
	ld l,(ix+003h)		;b9f4   ; lee la Y del actor
	ld h,(ix+004h)		;b9f7   ; lee la X del actor
	call 05dd3h		;b9fa   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 08b11h		;b9fd   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
	jp 08b26h		;ba00   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
actor_62:		; la rutina del actor de tipo 0x62 (p07:882D)
	ld a,(ix+002h)		;ba03   ; lee el paso del actor
	and 07fh		;ba06
	jp nz,pasea_en_su_zona		;ba08   ; pasea_en_su_zona: como p08:B1B4, sin salir de la zona (ix+0x30)-(ix+0x33) y con la frecuencia (ix+0x34)
	ld (ix+030h),010h		;ba0b   ; el borde de arriba de la zona del actor = 0x10
	ld (ix+031h),070h		;ba0f   ; el borde de abajo de la zona del actor = 0x70
	ld (ix+032h),010h		;ba13   ; el borde izquierdo de la zona del actor = 0x10
	ld (ix+033h),0a0h		;ba17   ; el borde derecho de la zona del actor = 0xA0
	ld (ix+034h),07fh		;ba1b   ; la frecuencia con la que cambia de direccion = 0x7F
	inc (ix+002h)		;ba1f   ; sube el paso del actor
	call 08aeeh		;ba22   ; fotogramas_10: los fotogramas de las cuatro direcciones: 0x10, 0x12, 0x14, 0x16
	jp 08b11h		;ba25   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
actor_63:		; la rutina del actor de tipo 0x63 (p07:882D)
	ld a,(ix+002h)		;ba28   ; lee el paso del actor
	and 07fh		;ba2b
	dec a			;ba2d
	jr z,L_BA37		;ba2e
	dec a			;ba30
	jp z,pasea		;ba31   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	jp empieza_paseo_08		;ba34   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
L_BA37:
	call pasea		;ba37   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	ld a,(0eb76h)		;ba3a   ; lee las banderas de la historia, byte 0x36 (se graban con la partida)
	bit 3,a		;ba3d
	ret z			;ba3f
	inc (ix+002h)		;ba40   ; sube el paso del actor
	ld de,05030h		;ba43
	ld bc,00064h		;ba46
	ld a,001h		;ba49
	ld l,002h		;ba4b
	jp 082feh		;ba4d   ; crea_actor: en el primer hueco de 0xE400: el tipo BC en (E, D), direccion al azar, colores (p07:83B4) y nombre (p08:A063)
actor_64:		; la rutina del actor de tipo 0x64 (p07:882D)
	ld a,(ix+002h)		;ba50   ; lee el paso del actor
	or a			;ba53
	ret nz			;ba54
	inc (ix+002h)		;ba55   ; sube el paso del actor
	ld a,(0eb76h)		;ba58   ; lee las banderas de la historia, byte 0x36 (se graban con la partida)
	bit 2,a		;ba5b
	jr nz,L_BA66		;ba5d
	ld (ix+008h),018h		;ba5f   ; el fotograma del actor (p07:97E8) = 0x18
	jp 08b01h		;ba63   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_BA66:
	ld (ix+008h),022h		;ba66   ; el fotograma del actor (p07:97E8) = 0x22
	jp 08b01h		;ba6a   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_a6:		; la rutina del actor de tipo 0xA6 (p07:882D)
	ld a,(0eb7dh)		;ba6d   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 4,a		;ba70
	jp nz,08bb4h		;ba72   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_65:		; la rutina de los actores de tipo 0x65, 0x66, 0x67, 0x6E, 0x80, 0xAB, 0xAC, 0x100, 0x101, 0x102, 0x103, 0x104 y 22 mas (p07:882D)
	ld a,(ix+002h)		;ba75   ; lee el paso del actor
	or a			;ba78
	ret nz			;ba79
	ld (ix+00dh),003h		;ba7a   ; si se puede hablar con el actor (p02:8D10) = 0x03
	inc (ix+002h)		;ba7e   ; sube el paso del actor
	ld (ix+008h),012h		;ba81   ; el fotograma del actor (p07:97E8) = 0x12
	jp 08b01h		;ba85   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_68:		; la rutina del actor de tipo 0x68 (p07:882D)
	ld a,(ix+002h)		;ba88   ; lee el paso del actor
	or a			;ba8b
	ret nz			;ba8c
	ld a,(0eb74h)		;ba8d   ; lee las banderas de la historia, byte 0x34 (se graban con la partida)
	bit 3,a		;ba90
	jp z,08bb4h		;ba92   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	xor a			;ba95
	ld b,a			;ba96
	ld l,(ix+003h)		;ba97   ; lee la Y del actor
	ld h,(ix+004h)		;ba9a   ; lee la X del actor
	call 05dd3h		;ba9d   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	inc (ix+002h)		;baa0   ; sube el paso del actor
	ld (ix+00dh),003h		;baa3   ; si se puede hablar con el actor (p02:8D10) = 0x03
	ld (ix+008h),021h		;baa7   ; el fotograma del actor (p07:97E8) = 0x21
	jp 08b01h		;baab   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_69:		; la rutina de los actores de tipo 0x69, 0x6A (p07:882D)
	ld a,(ix+002h)		;baae   ; lee el paso del actor
	or a			;bab1
	ret nz			;bab2
	ld (ix+00dh),003h		;bab3   ; si se puede hablar con el actor (p02:8D10) = 0x03
	jp L_A4E6		;bab7
actor_72:		; la rutina del actor de tipo 0x72 (p07:882D)
	xor a			;baba
	ld b,a			;babb
	ld l,(ix+003h)		;babc   ; lee la Y del actor
	ld h,(ix+004h)		;babf   ; lee la X del actor
	call 05dd3h		;bac2   ; pon_bloque_de_enfrente: pone B en el bloque de delante
actor_6f:		; la rutina del actor de tipo 0x6F (p07:882D)
	ld a,(ix+002h)		;bac5   ; lee el paso del actor
	and 07fh		;bac8
	dec a			;baca
	jr z,L_BADC		;bacb
	dec a			;bacd
	ret z			;bace
	inc (ix+002h)		;bacf   ; sube el paso del actor
	ld (ix+00dh),a		;bad2   ; guarda si se puede hablar con el actor (p02:8D10)
	ld (ix+008h),011h		;bad5   ; el fotograma del actor (p07:97E8) = 0x11
	jp 08b01h		;bad9   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_BADC:
	and a			;badc
	ld hl,(0e3c1h)		;badd   ; lee la Y del personaje y el byte siguiente (16 bits)
	ld e,(ix+003h)		;bae0   ; lee la Y del actor
	ld d,(ix+004h)		;bae3   ; lee la X del actor
	sbc hl,de		;bae6
	ret nz			;bae8
	ld a,007h		;bae9
	ld (0e360h),a		;baeb   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ld a,(ix+000h)		;baee   ; lee el tipo del actor (bajo)
	cp 06fh		;baf1
	ld a,000h		;baf3
	jr z,L_BAF9		;baf5
	ld a,003h		;baf7
L_BAF9:
	ld (0e387h),a		;baf9   ; guarda el paso del desplazamiento (tabla p21:600F)
	ld hl,0e440h		;bafc
	ld de,0e441h		;baff
	ld (hl),000h		;bb02
	ld bc,000ffh		;bb04
	ldir		;bb07
	ret			;bb09
actor_a7:		; la rutina del actor de tipo 0xA7 (p07:882D)
	ld a,(0eb5ch)		;bb0a   ; lee las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 2,a		;bb0d
	jp nz,08bb4h		;bb0f   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(ix+002h)		;bb12   ; lee el paso del actor
	dec a			;bb15
	jr z,L_BB1D		;bb16
	dec a			;bb18
	ret z			;bb19
	jp L_A4E6		;bb1a
L_BB1D:
	ld a,(0eb5ch)		;bb1d   ; lee las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 3,a		;bb20
	ret z			;bb22
	call 0458dh		;bb23   ; sonido_1e: pide el sonido 0x1E
	inc (ix+002h)		;bb26   ; sube el paso del actor
	ld (ix+008h),012h		;bb29   ; el fotograma del actor (p07:97E8) = 0x12
	jp 08b01h		;bb2d   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_c5:		; la rutina de los actores de tipo 0xC5, 0xC6 (p07:882D)
	ld a,(ix+002h)		;bb30   ; lee el paso del actor
	or a			;bb33
	jr nz,L_BB5B		;bb34
	ld a,(0eb65h)		;bb36   ; lee las banderas de la historia, byte 0x25 (se graban con la partida)
	bit 2,a		;bb39
	jp z,08bb4h		;bb3b   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(0eb5ch)		;bb3e   ; lee las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 1,a		;bb41
	jr nz,L_BB4D		;bb43
	ld a,(0eb5bh)		;bb45   ; lee las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 2,a		;bb48
	jp nz,08bb4h		;bb4a   ; borra_actor: los 0x80 bytes de la ficha IX a cero
L_BB4D:
	inc (ix+002h)		;bb4d   ; sube el paso del actor
	ld (ix+008h),012h		;bb50   ; el fotograma del actor (p07:97E8) = 0x12
	ld (ix+00dh),003h		;bb54   ; si se puede hablar con el actor (p02:8D10) = 0x03
	jp 08b01h		;bb58   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_BB5B:
	ld a,(0eb5ch)		;bb5b   ; lee las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 1,a		;bb5e
	ret nz			;bb60
	ld a,(0eb5bh)		;bb61   ; lee las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 2,a		;bb64
	ret z			;bb66
	jp 08bb4h		;bb67   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_c7:		; la rutina del actor de tipo 0xC7 (p07:882D)
	ld a,(ix+002h)		;bb6a   ; lee el paso del actor
	dec a			;bb6d
	jr z,L_BB9E		;bb6e
	dec a			;bb70
	jr z,L_BBB3		;bb71
	ld a,(0eb5ch)		;bb73   ; lee las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 1,a		;bb76
	jp nz,08bb4h		;bb78   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(0eb65h)		;bb7b   ; lee las banderas de la historia, byte 0x25 (se graban con la partida)
	bit 2,a		;bb7e
	jp z,08bb4h		;bb80   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	inc (ix+002h)		;bb83   ; sube el paso del actor
	ld (ix+008h),00ah		;bb86   ; el fotograma del actor (p07:97E8) = 0x0A
	call 08ae6h		;bb8a   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
	ld a,(0eb5ch)		;bb8d   ; lee las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 2,a		;bb90
	jr z,L_BB9E		;bb92
	inc (ix+002h)		;bb94   ; sube el paso del actor
	ld (ix+008h),01ch		;bb97   ; el fotograma del actor (p07:97E8) = 0x1C
	jp 08b01h		;bb9b   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_BB9E:
	ld a,(0eb5ch)		;bb9e   ; lee las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 4,a		;bba1
	ret z			;bba3
	inc (ix+002h)		;bba4   ; sube el paso del actor
	ld bc,000a7h		;bba7
	ld de,06030h		;bbaa
	ld l,002h		;bbad
	xor a			;bbaf
	jp 082feh		;bbb0   ; crea_actor: en el primer hueco de 0xE400: el tipo BC en (E, D), direccion al azar, colores (p07:83B4) y nombre (p08:A063)
L_BBB3:
	ld a,(0eb5ch)		;bbb3   ; lee las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 1,a		;bbb6
	ret z			;bbb8
	xor a			;bbb9
	ld b,a			;bbba
	call 05dd3h		;bbbb   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp 08bb4h		;bbbe   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_bd:		; la rutina del actor de tipo 0xBD (p07:882D)
	ld a,(0eb7dh)		;bbc1   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 1,a		;bbc4
	jp nz,08bb4h		;bbc6   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(ix+002h)		;bbc9   ; lee el paso del actor
	and 07fh		;bbcc
	ret nz			;bbce
	inc (ix+002h)		;bbcf   ; sube el paso del actor
	ld (ix+008h),018h		;bbd2   ; el fotograma del actor (p07:97E8) = 0x18
	ld (ix+00dh),002h		;bbd6   ; si se puede hablar con el actor (p02:8D10) = 0x02
	jp 08b01h		;bbda   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_d5:		; la rutina de los actores de tipo 0xD5, 0x11F, 0x122, 0x126, 0x12C, 0x12E, 0x132, 0x136, 0x138, 0x13D, 0x13E, 0x141 y 5 mas (p07:882D)
	ld a,(ix+002h)		;bbdd   ; lee el paso del actor
	or a			;bbe0
	jp nz,pasea		;bbe1   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	jp empieza_paseo_10		;bbe4   ; empieza_paseo_10: el siguiente paso, los fotogramas 0x10-0x16 y el de su direccion
actor_cd:		; la rutina de los actores de tipo 0xCD, 0xCE (p07:882D)
	ld a,(ix+002h)		;bbe7   ; lee el paso del actor
	or a			;bbea
	jr nz,L_BC0D		;bbeb
	ld a,(0eb7dh)		;bbed   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	and 0feh		;bbf0
	cp 0feh		;bbf2
	jp nz,08bb4h		;bbf4   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(0eb62h)		;bbf7   ; lee las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 2,a		;bbfa
	jp z,08bb4h		;bbfc   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld (ix+00dh),003h		;bbff   ; si se puede hablar con el actor (p02:8D10) = 0x03
	inc (ix+002h)		;bc03   ; sube el paso del actor
	ld (ix+008h),014h		;bc06   ; el fotograma del actor (p07:97E8) = 0x14
	jp 08b01h		;bc0a   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_BC0D:
	ld a,(0e003h)		;bc0d   ; lee la cuenta de cuadros
	and 003h		;bc10
	ret nz			;bc12
	ld d,(ix+00fh)		;bc13   ; lee el color del segundo sprite del actor
	ld e,(ix+00eh)		;bc16   ; lee el color del primer sprite del actor
	ld (ix+00eh),d		;bc19   ; guarda el color del primer sprite del actor
	ld (ix+00fh),e		;bc1c   ; guarda el color del segundo sprite del actor
	ret			;bc1f
actor_da:		; la rutina del actor de tipo 0xDA (p07:882D)
	ld a,(ix+002h)		;bc20   ; lee el paso del actor
	or a			;bc23
	ret nz			;bc24
	ld a,(0eb5dh)		;bc25   ; lee las banderas de la historia, byte 0x1D (se graban con la partida)
	bit 4,a		;bc28
	jp z,08bb4h		;bc2a   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld (ix+00dh),003h		;bc2d   ; si se puede hablar con el actor (p02:8D10) = 0x03
	jp L_A4E6		;bc31
actor_dd:		; la rutina del actor de tipo 0xDD (p07:882D)
	ld a,(ix+002h)		;bc34   ; lee el paso del actor
	call 040abh		;bc37   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_BC3A: tabla de 5 palabras del despachador (call 0x408D en
;   0xBC37); lo leen L_40AB (10 bytes)
;   0xbc3a..0xbc44  (10 bytes)
DATA_saltos_BC3A:
	defb 044h,0bch	; bc3a
	defb 04fh,0bch	; bc3c
	defb 096h,0bch	; bc3e
	defb 0c5h,0bch	; bc40
	defb 0d5h,0bch	; bc42

; ======================================================================
; CODIGO 0xbc44..0xbdce  (394 bytes)
; ======================================================================


L_BC44:
	ld hl,0eb5dh		;bc44   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	bit 3,(hl)		;bc47
	jp nz,08bb4h		;bc49   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	jp L_A4E6		;bc4c
L_BC4F:
	ld a,(0e3c4h)		;bc4f   ; lee el personaje va de un bloque a otro
	or a			;bc52
	ret nz			;bc53
	ld a,(0e3c2h)		;bc54   ; lee la X del personaje
	cp 050h		;bc57
	ret nz			;bc59
	call lleva_al_personaje		;bc5a   ; lleva_al_personaje: el actor toma al personaje (modo 9) y se pone a su altura
	ld hl,0eb5dh		;bc5d   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	set 3,(hl)		;bc60
	ld c,000h		;bc62
	jp 0561dh		;bc64   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
lleva_al_personaje:		; el actor toma al personaje (modo 9) y se pone a su altura
	ld a,009h		;bc67
	ld (0e3c0h),a		;bc69   ; guarda el modo del personaje (tabla p01:718E)
	ld a,001h		;bc6c
	ld (0e3a9h),a		;bc6e   ; guarda un actor lleva al personaje (no hay menu)
	ld (ix+008h),004h		;bc71   ; el fotograma del actor (p07:97E8) = 0x04
	call 08adeh		;bc75   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
	inc (ix+002h)		;bc78   ; sube el paso del actor
	ld a,(0e3c1h)		;bc7b   ; lee la Y del personaje
	ld (ix+003h),a		;bc7e   ; guarda la Y del actor
	ld a,003h		;bc81
mira_a:		; (ix+0x0B) = A
	ld (ix+00bh),a		;bc83   ; guarda la direccion a la que mira el actor
L_BC86:
	ld a,(ix+00bh)		;bc86   ; lee la direccion a la que mira el actor
	ld (ix+00ah),a		;bc89   ; guarda la direccion en la que anda el actor (0: quieto)
	ld (ix+005h),001h		;bc8c   ; si el actor se mueve (bit 0; p07:87FA) = 0x01
	call 08b26h		;bc90   ; velocidad_por_direccion: (ix+6), (ix+7) = el paso de la direccion (ix+0x0A) (p07:8B36)
	jp 08b11h		;bc93   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
L_BC96:
	ld a,(ix+00ah)		;bc96   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;bc99
	jp nz,sigue_andando		;bc9a   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+004h)		;bc9d   ; lee la X del actor
	cp 060h		;bca0
	jr nz,L_BC86		;bca2
	inc (ix+002h)		;bca4   ; sube el paso del actor
	ld a,(ix+003h)		;bca7   ; lee la Y del actor
	cp 030h		;bcaa
	ld a,002h		;bcac
	jr z,L_BCB2		;bcae
	ld a,001h		;bcb0
L_BCB2:
	call mira_a		;bcb2   ; mira_a: (ix+0x0B) = A
	ld (ix+008h),004h		;bcb5   ; el fotograma del actor (p07:97E8) = 0x04
	ld hl,0eb5dh		;bcb9   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	res 4,(hl)		;bcbc
	set 3,(hl)		;bcbe
	ld c,001h		;bcc0
	jp 0561dh		;bcc2   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
L_BCC5:
	ld a,(ix+00ah)		;bcc5   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;bcc8
	jp nz,sigue_andando		;bcc9   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	inc (ix+002h)		;bccc   ; sube el paso del actor
	ld (ix+00bh),003h		;bccf   ; la direccion a la que mira el actor = 0x03
	jr L_BC86		;bcd3
L_BCD5:
	ld a,(ix+00ah)		;bcd5   ; lee la direccion en la que anda el actor (0: quieto)
	or a			;bcd8
	jp nz,sigue_andando		;bcd9   ; sigue_andando: su fotograma; al llegar al bloque se para y libera el que deja
	ld a,(ix+004h)		;bcdc   ; lee la X del actor
	or a			;bcdf
	jr nz,L_BC86		;bce0
	ld (0e3c0h),a		;bce2   ; guarda el modo del personaje (tabla p01:718E)
	ld (0e3a9h),a		;bce5   ; guarda un actor lleva al personaje (no hay menu)
	ld l,(ix+003h)		;bce8   ; lee la Y del actor
	ld h,a			;bceb
	ld b,a			;bcec
	call 05dd3h		;bced   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp 08bb4h		;bcf0   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_11b:		; la rutina del actor de tipo 0x11B (p07:882D)
	ld a,(ix+002h)		;bcf3   ; lee el paso del actor
	dec a			;bcf6
	jr z,L_BD04		;bcf7
	ld a,(0eb5eh)		;bcf9   ; lee las banderas de la historia, byte 0x1E (se graban con la partida)
	bit 1,a		;bcfc
	jp z,08bb4h		;bcfe   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	jp L_A4E6		;bd01
L_BD04:
	ld a,(0eb5eh)		;bd04   ; lee las banderas de la historia, byte 0x1E (se graban con la partida)
	bit 1,a		;bd07
	ret nz			;bd09
	xor a			;bd0a
	ld b,a			;bd0b
	ld h,(ix+004h)		;bd0c   ; lee la X del actor
	ld l,(ix+003h)		;bd0f   ; lee la Y del actor
	call 05dd3h		;bd12   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 0458dh		;bd15   ; sonido_1e: pide el sonido 0x1E
	jp 08bb4h		;bd18   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_70:		; la rutina de los actores de tipo 0x70, 0x71, 0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F (p07:882D)
	ld (ix+008h),008h		;bd1b   ; el fotograma del actor (p07:97E8) = 0x08
	ld a,(ix+002h)		;bd1f   ; lee el paso del actor
	and 07fh		;bd22
	ret nz			;bd24
	inc (ix+002h)		;bd25   ; sube el paso del actor
	jp 08b01h		;bd28   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_73:		; la rutina de los actores de tipo 0x73, 0x74 (p07:882D)
	ld a,(ix+002h)		;bd2b   ; lee el paso del actor
	or a			;bd2e
	ret nz			;bd2f
	inc (ix+002h)		;bd30   ; sube el paso del actor
	ld a,(ix+000h)		;bd33   ; lee el tipo del actor (bajo)
	cp 073h		;bd36
	ld a,000h		;bd38
	jr z,L_BD3D		;bd3a
	inc a			;bd3c
L_BD3D:
	ld (ix+008h),a		;bd3d   ; guarda el fotograma del actor (p07:97E8)
	jp 08b01h		;bd40   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_75:		; la rutina del actor de tipo 0x75 (p07:882D)
	ld a,(ix+002h)		;bd43   ; lee el paso del actor
	and 07fh		;bd46
	jp nz,pasea		;bd48   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	inc (ix+002h)		;bd4b   ; sube el paso del actor
	call 08ae6h		;bd4e   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
	jp 08b11h		;bd51   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
actor_76:		; la rutina del actor de tipo 0x76 (p07:882D)
	ld a,(ix+002h)		;bd54   ; lee el paso del actor
	and 07fh		;bd57
	jp nz,pasea		;bd59   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	inc (ix+002h)		;bd5c   ; sube el paso del actor
	call 08aeeh		;bd5f   ; fotogramas_10: los fotogramas de las cuatro direcciones: 0x10, 0x12, 0x14, 0x16
	jp 08b11h		;bd62   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
actor_6b:		; la rutina del actor de tipo 0x6B (p07:882D)
	ld a,(ix+002h)		;bd65   ; lee el paso del actor
	or a			;bd68
	ret nz			;bd69
	ld (ix+008h),012h		;bd6a   ; el fotograma del actor (p07:97E8) = 0x12
	inc (ix+002h)		;bd6e   ; sube el paso del actor
	jp 08aeeh		;bd71   ; fotogramas_10: los fotogramas de las cuatro direcciones: 0x10, 0x12, 0x14, 0x16
actor_6c:		; la rutina del actor de tipo 0x6C (p07:882D)
	ld (ix+008h),01bh		;bd74   ; el fotograma del actor (p07:97E8) = 0x1B
	ld a,(ix+002h)		;bd78   ; lee el paso del actor
	or a			;bd7b
	ret nz			;bd7c
	inc (ix+002h)		;bd7d   ; sube el paso del actor
	jp 08ad6h		;bd80   ; fotogramas_1a: los fotogramas de las cuatro direcciones: 0x1A, 0x1B, 0x1C, 0x1D
actor_77:		; la rutina del actor de tipo 0x77 (p07:882D)
	ld a,(ix+002h)		;bd83   ; lee el paso del actor
	or a			;bd86
	ret nz			;bd87
	ld (ix+008h),002h		;bd88   ; el fotograma del actor (p07:97E8) = 0x02
	inc (ix+002h)		;bd8c   ; sube el paso del actor
	jp 08adeh		;bd8f   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
actor_82:		; la rutina del actor de tipo 0x82 (p07:882D)
	ld a,(ix+002h)		;bd92   ; lee el paso del actor
	or a			;bd95
	ret nz			;bd96
	ld a,(0eb7dh)		;bd97   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 6,a		;bd9a
	jp nz,08bb4h		;bd9c   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld (ix+00dh),003h		;bd9f   ; si se puede hablar con el actor (p02:8D10) = 0x03
	jp L_A4E6		;bda3
actor_83:		; la rutina del actor de tipo 0x83 (p07:882D)
	ld (ix+008h),01bh		;bda6   ; el fotograma del actor (p07:97E8) = 0x1B
	ld a,(ix+002h)		;bdaa   ; lee el paso del actor
	or a			;bdad
	ret nz			;bdae
	inc (ix+002h)		;bdaf   ; sube el paso del actor
	jp 08ad6h		;bdb2   ; fotogramas_1a: los fotogramas de las cuatro direcciones: 0x1A, 0x1B, 0x1C, 0x1D
actor_84:		; la rutina de los actores de tipo 0x84, 0x85, 0x86, 0x87, 0x88 (p07:882D)
	ld a,(ix+002h)		;bdb5   ; lee el paso del actor
	or a			;bdb8
	jp nz,pasea		;bdb9   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	ld (ix+008h),002h		;bdbc   ; el fotograma del actor (p07:97E8) = 0x02
	inc (ix+002h)		;bdc0   ; sube el paso del actor
	jp 08adeh		;bdc3   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
actor_89:		; la rutina del actor de tipo 0x89 (p07:882D)
	ld a,(ix+002h)		;bdc6   ; lee el paso del actor
	and 07fh		;bdc9
	call 040abh		;bdcb   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_BDCE: tabla de 3 palabras del despachador (call 0x408D en
;   0xBDCB); lo leen L_40AB (6 bytes)
;   0xbdce..0xbdd4  (6 bytes)
DATA_saltos_BDCE:
	defb 0d4h,0bdh	; bdce
	defb 0f5h,0bdh	; bdd0
	defb 017h,0beh	; bdd2

; ======================================================================
; CODIGO 0xbdd4..0xbffd  (553 bytes)
; ======================================================================


L_BDD4:
	ld (ix+008h),01bh		;bdd4   ; el fotograma del actor (p07:97E8) = 0x1B
	ld a,(0eb59h)		;bdd8   ; lee las banderas de la historia, byte 0x19 (se graban con la partida)
	bit 2,a		;bddb
	jp z,08bb4h		;bddd   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(0eb58h)		;bde0   ; lee las banderas de la historia, byte 0x18 (se graban con la partida)
	rra			;bde3
	jp c,08bb4h		;bde4   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld (ix+01bh),060h		;bde7
	ld (ix+008h),01bh		;bdeb   ; el fotograma del actor (p07:97E8) = 0x1B
	inc (ix+002h)		;bdef   ; sube el paso del actor
	jp 08ad6h		;bdf2   ; fotogramas_1a: los fotogramas de las cuatro direcciones: 0x1A, 0x1B, 0x1C, 0x1D
L_BDF5:
	ld (ix+008h),01bh		;bdf5   ; el fotograma del actor (p07:97E8) = 0x1B
	ld a,(0eb58h)		;bdf9   ; lee las banderas de la historia, byte 0x18 (se graban con la partida)
	rra			;bdfc
	ret nc			;bdfd
	inc (ix+002h)		;bdfe   ; sube el paso del actor
	ld hl,0e3c0h		;be01   ; apunta a el modo del personaje (tabla p01:718E)
	ld (hl),009h		;be04
	xor a			;be06
	ld (0e368h),a		;be07   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	ld (ix+00dh),a		;be0a   ; guarda si se puede hablar con el actor (p02:8D10)
	ld b,a			;be0d
	ld l,(ix+003h)		;be0e   ; lee la Y del actor
	ld h,(ix+004h)		;be11   ; lee la X del actor
	jp 05dd3h		;be14   ; pon_bloque_de_enfrente: pone B en el bloque de delante
L_BE17:
	dec (ix+01bh)		;be17   ; cuenta
	jr z,L_BE2D		;be1a
	ld a,(ix+01bh)		;be1c
	ld b,01eh		;be1f
	cp 040h		;be21   ; a 0x40 el fotograma 0x1E
	jr z,L_BE29		;be23
	inc b			;be25
	cp 020h		;be26   ; a 0x20 el 0x1F
	ret nz			;be28
L_BE29:
	ld (ix+008h),b		;be29   ; guarda el fotograma del actor (p07:97E8)
	ret			;be2c
L_BE2D:
	ld hl,0e3c0h		;be2d   ; apunta a el modo del personaje (tabla p01:718E)
	ld (hl),000h		;be30
	jp 08bb4h		;be32   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_8a:		; la rutina de los actores de tipo 0x8A, 0x8B, 0x8C, 0x8D, 0x8E, 0x8F, 0x90, 0x91 (p07:882D)
	ld (ix+008h),01bh		;be35   ; el fotograma del actor (p07:97E8) = 0x1B
	ld a,(ix+002h)		;be39   ; lee el paso del actor
	or a			;be3c
	ret nz			;be3d
	inc (ix+002h)		;be3e   ; sube el paso del actor
	jp 08ad6h		;be41   ; fotogramas_1a: los fotogramas de las cuatro direcciones: 0x1A, 0x1B, 0x1C, 0x1D
actor_92:		; la rutina de los actores de tipo 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99 (p07:882D)
	ld a,(ix+002h)		;be44   ; lee el paso del actor
	dec a			;be47
	jr z,L_BE5A		;be48
	dec a			;be4a
	ret z			;be4b
	ld (ix+00dh),000h		;be4c   ; si se puede hablar con el actor (p02:8D10) = 0x00
	inc (ix+002h)		;be50   ; sube el paso del actor
	ld (ix+008h),012h		;be53   ; el fotograma del actor (p07:97E8) = 0x12
	call 08b01h		;be57   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_BE5A:
	ld a,(0eb59h)		;be5a   ; lee las banderas de la historia, byte 0x19 (se graban con la partida)
	bit 5,a		;be5d
	ret z			;be5f
	inc (ix+002h)		;be60   ; sube el paso del actor
	ld (ix+00dh),003h		;be63   ; si se puede hablar con el actor (p02:8D10) = 0x03
	ret			;be67
actor_9a:		; la rutina de los actores de tipo 0x9A, 0x9B, 0x9C, 0x9D, 0x9E, 0x9F, 0xA0, 0xA1 (p07:882D)
	ld a,(ix+002h)		;be68   ; lee el paso del actor
	and 07fh		;be6b
	ret nz			;be6d
	ld (ix+00dh),003h		;be6e   ; si se puede hablar con el actor (p02:8D10) = 0x03
	inc (ix+002h)		;be72   ; sube el paso del actor
	ld (ix+008h),018h		;be75   ; el fotograma del actor (p07:97E8) = 0x18
	jp 08b01h		;be79   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
actor_a2:		; la rutina del actor de tipo 0xA2 (p07:882D)
	ld a,(ix+002h)		;be7c   ; lee el paso del actor
	or a			;be7f
	jp nz,pasea_en_su_zona		;be80   ; pasea_en_su_zona: como p08:B1B4, sin salir de la zona (ix+0x30)-(ix+0x33) y con la frecuencia (ix+0x34)
	ld (ix+030h),a		;be83   ; guarda el borde de arriba de la zona del actor
	ld (ix+031h),060h		;be86   ; el borde de abajo de la zona del actor = 0x60
	ld (ix+032h),050h		;be8a   ; el borde izquierdo de la zona del actor = 0x50
	ld (ix+033h),0a0h		;be8e   ; el borde derecho de la zona del actor = 0xA0
	ld (ix+034h),07fh		;be92   ; la frecuencia con la que cambia de direccion = 0x7F
	jp empieza_paseo_08		;be96   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
actor_a3:		; la rutina del actor de tipo 0xA3 (p07:882D)
	ld a,(ix+002h)		;be99   ; lee el paso del actor
	or a			;be9c
	ret nz			;be9d
	jp L_A4E6		;be9e
actor_c9:		; la rutina del actor de tipo 0xC9 (p07:882D)
	ld a,(ix+002h)		;bea1   ; lee el paso del actor
	or a			;bea4
	ret nz			;bea5
	ld (ix+00dh),a		;bea6   ; guarda si se puede hablar con el actor (p02:8D10)
	ld (ix+008h),018h		;bea9   ; el fotograma del actor (p07:97E8) = 0x18
	ld a,(0eb60h)		;bead   ; lee las banderas de la historia, byte 0x20 (se graban con la partida)
	bit 1,a		;beb0
	ret z			;beb2
	call 0458dh		;beb3   ; sonido_1e: pide el sonido 0x1E
L_BEB6:
	ld (ix+00dh),003h		;beb6   ; si se puede hablar con el actor (p02:8D10) = 0x03
	jp L_A4E6		;beba
actor_ca:		; la rutina del actor de tipo 0xCA (p07:882D)
	ld a,(ix+002h)		;bebd   ; lee el paso del actor
	or a			;bec0
	ret nz			;bec1
	ld a,(0eb62h)		;bec2   ; lee las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 2,a		;bec5
	jp z,08bb4h		;bec7   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	jp L_BEB6		;beca
actor_de:		; la rutina del actor de tipo 0xDE (p07:882D)
	ld a,(ix+002h)		;becd   ; lee el paso del actor
	and 07fh		;bed0
	jr nz,L_BEEA		;bed2
	ld a,(0eb5dh)		;bed4   ; lee las banderas de la historia, byte 0x1D (se graban con la partida)
	bit 2,a		;bed7
	jp nz,08bb4h		;bed9   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld (ix+008h),018h		;bedc   ; el fotograma del actor (p07:97E8) = 0x18
	ld (ix+00dh),000h		;bee0   ; si se puede hablar con el actor (p02:8D10) = 0x00
	inc (ix+002h)		;bee4   ; sube el paso del actor
	call 08b01h		;bee7   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_BEEA:
	ld a,(0e3c5h)		;beea   ; lee la direccion del paso en curso
	or a			;beed
	ret nz			;beee
	ld a,(0e3c2h)		;beef   ; lee la X del personaje
	cp 080h		;bef2
	ret nz			;bef4
	ld hl,0eb5dh		;bef5   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	set 2,(hl)		;bef8
	ld c,000h		;befa
	jp 0561dh		;befc   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
actor_e0:		; la rutina del actor de tipo 0xE0 (p07:882D)
	ld a,(ix+002h)		;beff   ; lee el paso del actor
	or a			;bf02
	jr nz,L_BF1C		;bf03
	ld a,(0eb5dh)		;bf05   ; lee las banderas de la historia, byte 0x1D (se graban con la partida)
	bit 1,a		;bf08
	jp nz,08bb4h		;bf0a   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld (ix+008h),013h		;bf0d   ; el fotograma del actor (p07:97E8) = 0x13
	inc (ix+002h)		;bf11   ; sube el paso del actor
	call 08b01h		;bf14   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
	ld c,000h		;bf17
	jp 0561dh		;bf19   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
L_BF1C:
	ld a,(0eb5dh)		;bf1c   ; lee las banderas de la historia, byte 0x1D (se graban con la partida)
	bit 1,a		;bf1f
	ret z			;bf21
	ld hl,07030h		;bf22
	xor a			;bf25
	ld b,a			;bf26
	ld h,(ix+004h)		;bf27   ; lee la X del actor
	ld l,(ix+003h)		;bf2a   ; lee la Y del actor
	call 05dd3h		;bf2d   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp 08bb4h		;bf30   ; borra_actor: los 0x80 bytes de la ficha IX a cero
actor_d0:		; la rutina de los actores de tipo 0xD0, 0xD1, 0xD2 (p07:882D)
	ld (ix+008h),002h		;bf33   ; el fotograma del actor (p07:97E8) = 0x02
	ld a,(ix+002h)		;bf37   ; lee el paso del actor
	or a			;bf3a
	ret nz			;bf3b
	inc (ix+002h)		;bf3c   ; sube el paso del actor
	jp 08adeh		;bf3f   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
actor_e1:		; la rutina del actor de tipo 0xE1 (p07:882D)
	ld a,(ix+002h)		;bf42   ; lee el paso del actor
	or a			;bf45
	jr nz,L_BF61		;bf46
	ld a,(0eb5dh)		;bf48   ; lee las banderas de la historia, byte 0x1D (se graban con la partida)
	rra			;bf4b
	jp c,08bb4h		;bf4c   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	rra			;bf4f
	jp nc,08bb4h		;bf50   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld (ix+008h),018h		;bf53   ; el fotograma del actor (p07:97E8) = 0x18
	ld (ix+00dh),000h		;bf57   ; si se puede hablar con el actor (p02:8D10) = 0x00
	inc (ix+002h)		;bf5b   ; sube el paso del actor
	call 08b01h		;bf5e   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_BF61:
	ld a,(0e3c4h)		;bf61   ; lee el personaje va de un bloque a otro
	or a			;bf64
	ret nz			;bf65
	ld a,(0e3c2h)		;bf66   ; lee la X del personaje
	cp 060h		;bf69
	ret nz			;bf6b
	ld a,(0e3c1h)		;bf6c   ; lee la Y del personaje
	sub 020h		;bf6f
	ret nz			;bf71
	ld hl,0eb5dh		;bf72   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	set 0,(hl)		;bf75
	call 08bb4h		;bf77   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,00fh		;bf7a
	call 04662h		;bf7c
	ld c,000h		;bf7f
	jp 0561dh		;bf81   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
actor_d8:		; la rutina de los actores de tipo 0xD8, 0xEC, 0xEF (p07:882D)
	ld a,(ix+002h)		;bf84   ; lee el paso del actor
	or a			;bf87
	ret nz			;bf88
	inc (ix+002h)		;bf89   ; sube el paso del actor
	call 08adeh		;bf8c   ; fotogramas_00: los fotogramas de las cuatro direcciones: 0x00, 0x02, 0x04, 0x06
	jp 08b11h		;bf8f   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
actor_dc:		; la rutina de los actores de tipo 0xDC, 0xDF, 0xE8, 0xEB, 0xF0 (p07:882D)
	ld a,(ix+002h)		;bf92   ; lee el paso del actor
	or a			;bf95
	ret nz			;bf96
	inc (ix+002h)		;bf97   ; sube el paso del actor
	call 08ae6h		;bf9a   ; fotogramas_08: los fotogramas de las cuatro direcciones: 0x08, 0x0A, 0x0C, 0x0E
	jp 08b11h		;bf9d   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
actor_db:		; la rutina de los actores de tipo 0xDB, 0xE9, 0xEA, 0xED, 0xEE, 0xF1, 0xF2 (p07:882D)
	ld a,(ix+002h)		;bfa0   ; lee el paso del actor
	or a			;bfa3
	ret nz			;bfa4
	inc (ix+002h)		;bfa5   ; sube el paso del actor
	call 08aeeh		;bfa8   ; fotogramas_10: los fotogramas de las cuatro direcciones: 0x10, 0x12, 0x14, 0x16
	jp 08b11h		;bfab   ; fotograma_por_direccion: (ix+8) = el de su direccion (ix+0x0B) mas el bit 4 de la cuenta
actor_fd:		; la rutina del actor de tipo 0xFD (p07:882D)
	ld a,(ix+002h)		;bfae   ; lee el paso del actor
	or a			;bfb1
	jp nz,pasea		;bfb2   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	jp empieza_paseo_08		;bfb5   ; empieza_paseo_08: el siguiente paso, los fotogramas 0x08-0x0E y el de su direccion
actor_fe:		; la rutina del actor de tipo 0xFE (p07:882D)
	ld a,(ix+002h)		;bfb8   ; lee el paso del actor
	or a			;bfbb
	jp nz,pasea		;bfbc   ; pasea: si va de camino sigue (p08:B1F7); si no, cada 128 cuadros una direccion al azar
	jp empieza_paseo_10		;bfbf   ; empieza_paseo_10: el siguiente paso, los fotogramas 0x10-0x16 y el de su direccion
actor_ff:		; la rutina del actor de tipo 0xFF (p07:882D)
	ld a,(0eb7dh)		;bfc2   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 4,a		;bfc5
	jp z,08bb4h		;bfc7   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	ld a,(ix+002h)		;bfca   ; lee el paso del actor
	or a			;bfcd
	jr nz,L_BFE1		;bfce
	ld a,(0e9e6h)		;bfd0   ; lee el objeto 11 (bit 0: se lleva)
	rra			;bfd3
	jp c,08bb4h		;bfd4   ; borra_actor: los 0x80 bytes de la ficha IX a cero
	inc (ix+002h)		;bfd7   ; sube el paso del actor
	ld (ix+008h),014h		;bfda   ; el fotograma del actor (p07:97E8) = 0x14
	call 08b01h		;bfde   ; un_solo_fotograma: las cuatro direcciones con el fotograma (ix+8)
L_BFE1:
	ld a,(0eb62h)		;bfe1   ; lee las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 1,a		;bfe4
	ret z			;bfe6
	ld hl,0e9e6h		;bfe7   ; apunta a el objeto 11 (bit 0: se lleva)
	set 0,(hl)		;bfea
	ld h,(ix+004h)		;bfec   ; lee la X del actor
	ld l,(ix+003h)		;bfef   ; lee la Y del actor
	xor a			;bff2
	ld b,a			;bff3
	call 05dd3h		;bff4   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	call 04565h		;bff7   ; sonido_14: pide el sonido 0x14
	jp 08bb4h		;bffa   ; borra_actor: los 0x80 bytes de la ficha IX a cero

; ----------------------------------------------------------------------
; DATOS resto_BFFD: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (3 bytes)
;   0xbffd..0xc000  (3 bytes)
DATA_resto_BFFD:
	defb 0ffh,0ffh,0ffh	; bffd
