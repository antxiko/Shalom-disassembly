; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 21 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x600f  (15 bytes)
; ======================================================================


desplazamiento:		; un paso del modo 7 (0xE387, tabla p21:600F)
	ld hl,0600fh		;6000
	ld a,(0e387h)		;6003
	add a,a			;6006
	call hl_mas_a		;6007   ; hl_mas_a: HL = HL + A
	ld e,(hl)			;600a
	inc hl			;600b
	ld d,(hl)			;600c
	ex de,hl			;600d
	jp (hl)			;600e

; ----------------------------------------------------------------------
; DATOS saltos_600F: tabla de 5 palabras del despachador (call 0x408D en
;   0x600E); lo leen L_40AB (10 bytes)
;   0x600f..0x6019  (10 bytes)
DATA_saltos_600F:
	defb 019h,060h	; 600f
	defb 03fh,060h	; 6011
	defb 074h,060h	; 6013
	defb 07dh,060h	; 6015
	defb 0b9h,060h	; 6017

; ======================================================================
; CODIGO 0x6019..0x617a  (353 bytes)
; ======================================================================


desplazamiento_empieza:		; borra la zona de juego, el fondo (p21:6357), el personaje en (0x50, 0x50) y 8 pasos de espera
	call 0402eh		;6019   ; borra_zona_de_juego_y_21_22_23: borra 16 filas x 24 de 0xED00 y las vuelca; vuelve con 21-22-23
	call 04034h		;601c   ; graficos_del_marcador_y_21_22_23: patrones p12:7360 y colores p12:73D0 en dos tercios y nombres p12:73FD; vuelve con 21-22-23
	call fondo_de_bajada		;601f   ; fondo_de_bajada: 0xEC60 lleno de la ficha 0x10 y 6 filas de p21:62AF en 0xEE20
	call 0403ah		;6022   ; vuelca_zona_de_juego_y_21_22_23: 16 filas x 24 de 0xED00 a 0x3800; vuelve con 21-22-23
	ld a,008h		;6025
	ld (0e388h),a		;6027
	ld a,001h		;602a
	ld (0e007h),a		;602c   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld hl,05050h		;602f
	ld (0e3c1h),hl		;6032   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ld a,058h		;6035
	ld (0f020h),a		;6037
	ld hl,0e387h		;603a
	inc (hl)			;603d
	ret			;603e
desplazamiento_entra:		; cada 16 cuadros el personaje sube un punto; al acabar, la musica y el guion p21:617B
	ld a,(0e003h)		;603f   ; lee la cuenta de cuadros
	and 00fh		;6042
	ret nz			;6044
	ld hl,0e388h		;6045
	dec (hl)			;6048
	jr z,L_6054		;6049
	ld hl,0e3c1h		;604b   ; apunta a la Y del personaje
	dec (hl)			;604e
	ld hl,0f020h		;604f
	dec (hl)			;6052
	ret			;6053
L_6054:
	ld a,006h		;6054
	ld (0e389h),a		;6056
	ld (0e388h),a		;6059
	ld a,080h		;605c
	ld (0e38ah),a		;605e
	ld a,070h		;6061
	ld (0e38dh),a		;6063
	ld hl,0617bh		;6066
	ld (0e38bh),hl		;6069
	call 04040h		;606c   ; sonido_28_y_21_22_23: pide el sonido 0x28; vuelve con 21-22-23
	ld hl,0e387h		;606f
	inc (hl)			;6072
	ret			;6073
desplazamiento_baja:		; un cuadro: la pantalla baja (p21:60C2) y los dibujos del guion (p21:615E)
	call 0403ah		;6074   ; vuelca_zona_de_juego_y_21_22_23: 16 filas x 24 de 0xED00 a 0x3800; vuelve con 21-22-23
	call pantalla_baja		;6077   ; pantalla_baja: cada 0xE389 cuadros baja 20 filas de 0xEEC0 una fila; al acabar, 0xE386 = 1
	jp dibujo_del_guion_abajo		;607a   ; dibujo_del_guion_abajo: al llegar la cuenta 0xE38A a la de 0xE38D, el siguiente dibujo del guion (0xE38B) arriba
desplazamiento_empieza_arriba:		; como p21:6019 con el fondo de p21:6389 y el guion p21:61BF
	call 0402eh		;607d   ; borra_zona_de_juego_y_21_22_23: borra 16 filas x 24 de 0xED00 y las vuelca; vuelve con 21-22-23
	call 04034h		;6080   ; graficos_del_marcador_y_21_22_23: patrones p12:7360 y colores p12:73D0 en dos tercios y nombres p12:73FD; vuelve con 21-22-23
	call fondo_de_subida		;6083   ; fondo_de_subida: 21 filas de 0xED00 con la ficha 0x10
	call 0403ah		;6086   ; vuelca_zona_de_juego_y_21_22_23: 16 filas x 24 de 0xED00 a 0x3800; vuelve con 21-22-23
	ld a,001h		;6089
	ld (0e007h),a		;608b   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld a,006h		;608e
	ld (0e389h),a		;6090
	ld (0e388h),a		;6093
	ld a,080h		;6096
	ld (0e38ah),a		;6098
	ld a,070h		;609b
	ld (0e38dh),a		;609d
	ld hl,061bfh		;60a0
	ld (0e38bh),hl		;60a3
	ld hl,05050h		;60a6
	ld (0e3c1h),hl		;60a9   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ld a,058h		;60ac
	ld (0f020h),a		;60ae
	call 04040h		;60b1   ; sonido_28_y_21_22_23: pide el sonido 0x28; vuelve con 21-22-23
	ld hl,0e387h		;60b4
	inc (hl)			;60b7
	ret			;60b8
desplazamiento_sube:		; un cuadro: la pantalla sube (p21:6112) y los dibujos del guion (p21:61A2)
	call 0403ah		;60b9   ; vuelca_zona_de_juego_y_21_22_23: 16 filas x 24 de 0xED00 a 0x3800; vuelve con 21-22-23
	call pantalla_sube		;60bc   ; pantalla_sube: cada 0xE389 cuadros sube 20 filas de 0xED20 una fila; al acabar, 0xE386 = 2
	jp dibujo_del_guion_arriba		;60bf   ; dibujo_del_guion_arriba: al llegar la cuenta, el siguiente dibujo del guion abajo
pantalla_baja:		; cada 0xE389 cuadros baja 20 filas de 0xEEC0 una fila; al acabar, 0xE386 = 1
	ld hl,0e388h		;60c2
	dec (hl)			;60c5
	ret nz			;60c6
	ld hl,0e38ah		;60c7
	dec (hl)			;60ca
	jr z,L_610C		;60cb
	ld a,(hl)			;60cd
	and 007h		;60ce
	jr nz,L_60DA		;60d0
	ld hl,0e389h		;60d2
	ld a,(hl)			;60d5
	dec a			;60d6
	jr z,L_60DA		;60d7
	dec (hl)			;60d9
L_60DA:
	ld a,(0e389h)		;60da
	ld (0e388h),a		;60dd
	ld hl,0eec0h		;60e0
	ld de,0eee0h		;60e3
	ld b,014h		;60e6
L_60E8:
	push bc			;60e8
	ld bc,00018h		;60e9
	ldir		;60ec
	ld bc,00038h		;60ee
	push bc			;60f1
	and a			;60f2
	sbc hl,bc		;60f3
	ex de,hl			;60f5
	pop bc			;60f6
	and a			;60f7
	sbc hl,bc		;60f8
	ex de,hl			;60fa
	pop bc			;60fb
	djnz L_60E8		;60fc
	ld hl,0ec60h		;60fe
	ld de,0ec61h		;6101
	ld bc,00017h		;6104
	ld (hl),010h		;6107
	ldir		;6109
	ret			;610b
L_610C:
	ld a,001h		;610c
	ld (0e386h),a		;610e
	ret			;6111
pantalla_sube:		; cada 0xE389 cuadros sube 20 filas de 0xED20 una fila; al acabar, 0xE386 = 2
	ld hl,0e388h		;6112
	dec (hl)			;6115
	ret nz			;6116
	ld hl,0e38ah		;6117
	dec (hl)			;611a
	jr z,L_6158		;611b
	ld a,(hl)			;611d
	and 007h		;611e
	jr nz,L_612A		;6120
	ld hl,0e389h		;6122
	ld a,(hl)			;6125
	dec a			;6126
	jr z,L_612A		;6127
	dec (hl)			;6129
L_612A:
	ld a,(0e389h)		;612a
	ld (0e388h),a		;612d
	ld hl,0ed20h		;6130
	ld de,0ed00h		;6133   ; apunta a los nombres de la pantalla (32 x 24)
	ld b,014h		;6136
L_6138:
	push bc			;6138
	ld bc,00018h		;6139
	ldir		;613c
	ld bc,00008h		;613e
	push bc			;6141
	add hl,bc			;6142
	ex de,hl			;6143
	pop bc			;6144
	add hl,bc			;6145
	ex de,hl			;6146
	pop bc			;6147
	djnz L_6138		;6148
	ld hl,0ef80h		;614a
	ld de,0ef81h		;614d
	ld bc,00017h		;6150
	ld (hl),010h		;6153
	ldir		;6155
	ret			;6157
L_6158:
	ld a,002h		;6158
	ld (0e386h),a		;615a
	ret			;615d
dibujo_del_guion_abajo:		; al llegar la cuenta 0xE38A a la de 0xE38D, el siguiente dibujo del guion (0xE38B) arriba
	ld a,(0e38ah)		;615e
	ld hl,0e38dh		;6161
	cp (hl)			;6164
	ret nz			;6165
	ld hl,(0e38bh)		;6166
	ld c,(hl)			;6169
	inc hl			;616a
	ld b,(hl)			;616b
	inc hl			;616c
	ld a,(hl)			;616d
	ld (0e38dh),a		;616e
	ld a,c			;6171
	ld c,000h		;6172
	inc hl			;6174
	ld (0e38bh),hl		;6175
	jr $+110		;6178

; ----------------------------------------------------------------------
; DATOS resto_617A: lo apuntan con el banco puesto p21:6066 (0x617B); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p21:6066 (40 bytes)
;   0x617a..0x61a2  (40 bytes)
DATA_resto_617A:
	defb 070h,002h,050h,068h,003h,060h,060h,004h,020h,058h,005h,080h,050h,006h,040h,048h	; 617a  p.Ph.``. X..P.@H
	defb 001h,030h,040h,002h,070h,038h,003h,050h,030h,004h,060h,028h,005h,020h,020h,006h	; 618a  .0@.p8.P0.`(.  .
	defb 080h,018h,001h,040h,010h,001h,040h,0ffh	; 619a  ...@..@.

; ======================================================================
; CODIGO 0x61a2..0x61be  (28 bytes)
; ======================================================================


dibujo_del_guion_arriba:		; al llegar la cuenta, el siguiente dibujo del guion abajo
	ld a,(0e38ah)		;61a2
	ld hl,0e38dh		;61a5
	cp (hl)			;61a8
	ret nz			;61a9
	ld hl,(0e38bh)		;61aa
	ld c,(hl)			;61ad
	inc hl			;61ae
	ld b,(hl)			;61af
	inc hl			;61b0
	ld a,(hl)			;61b1
	ld (0e38dh),a		;61b2
	ld a,c			;61b5
	ld c,001h		;61b6
	inc hl			;61b8
	ld (0e38bh),hl		;61b9
	jr $+42		;61bc

; ----------------------------------------------------------------------
; DATOS resto_61BE: lo apuntan con el banco puesto p21:60A0 (0x61BF); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p21:60A0 (40 bytes)
;   0x61be..0x61e6  (40 bytes)
DATA_resto_61BE:
	defb 070h,002h,050h,068h,003h,060h,060h,004h,020h,058h,005h,080h,050h,006h,040h,048h	; 61be  p.Ph.``. X..P.@H
	defb 001h,030h,040h,002h,070h,038h,003h,050h,030h,004h,060h,028h,005h,020h,020h,006h	; 61ce  .0@.p8.P0.`(.  .
	defb 080h,018h,001h,040h,010h,001h,040h,0ffh	; 61de  ...@..@.

; ======================================================================
; CODIGO 0x61e6..0x621d  (55 bytes)
; ======================================================================


dibujo_entrante:		; el dibujo A de p21:621D en la columna B de la fila que entra
	dec a			;61e6
	ld de,0621dh		;61e7
	ld l,a			;61ea
	ld h,000h		;61eb
	add hl,hl			;61ed
	add hl,de			;61ee
	ld e,(hl)			;61ef
	inc hl			;61f0
	ld d,(hl)			;61f1
	dec c			;61f2
	ld hl,0ec60h		;61f3
	jr nz,L_61FB		;61f6
	ld hl,0ef00h		;61f8   ; apunta a la ventana del texto (32 x 8)
L_61FB:
	ld a,b			;61fb
	and 0f8h		;61fc
	rra			;61fe
	rra			;61ff
	rra			;6200
	call hl_mas_a		;6201   ; hl_mas_a: HL = HL + A
	ld a,(de)			;6204
	ld c,a			;6205
	inc de			;6206
	ld a,(de)			;6207
	ld b,a			;6208
	inc de			;6209
L_620A:
	push bc			;620a
	push hl			;620b
L_620C:
	ld a,(de)			;620c
	ld (hl),a			;620d
	inc hl			;620e
	inc de			;620f
	djnz L_620C		;6210
	pop hl			;6212
	ld a,020h		;6213
	call hl_mas_a		;6215   ; hl_mas_a: HL = HL + A
	pop bc			;6218
	dec c			;6219
	jr nz,L_620A		;621a
	ret			;621c

; ----------------------------------------------------------------------
; DATOS resto_621D: lo apuntan con el banco puesto p21:61E7 (0x621D), p21:636E
;   (0x62AF); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p21:61E7, p21:636E (314 bytes)
;   0x621d..0x6357  (314 bytes)
DATA_resto_621D:
	defb 029h,062h,02fh,062h,037h,062h,041h,062h,055h,062h,06ch,062h,002h,002h,012h,018h	; 621d  )b/b7bAbUblb....
	defb 01ch,020h,002h,003h,012h,013h,018h,01ch,01eh,01fh,002h,004h,012h,014h,018h,015h	; 622d  . ..............
	defb 01ch,01eh,01dh,01fh,003h,006h,011h,012h,013h,013h,015h,010h,016h,017h,019h,019h	; 623d  ................
	defb 019h,01ah,01bh,01ch,01dh,01eh,01fh,010h,003h,007h,011h,012h,014h,014h,013h,015h	; 624d  ................
	defb 010h,016h,017h,019h,017h,019h,017h,01ah,01bh,01ch,01eh,01dh,020h,01fh,010h,005h	; 625d  ............ ...
	defb 00dh,010h,010h,010h,012h,014h,013h,014h,013h,018h,015h,010h,010h,010h,011h,012h	; 626d  ................
	defb 014h,017h,017h,017h,017h,017h,017h,017h,018h,015h,010h,016h,019h,017h,017h,017h	; 627d  ................
	defb 017h,017h,017h,017h,017h,019h,017h,01ah,01ch,019h,017h,019h,019h,017h,019h,017h	; 628d  ................
	defb 019h,019h,020h,01fh,010h,010h,01bh,01ch,01eh,01eh,01ch,01dh,01eh,01dh,01fh,010h	; 629d  .. .............
	defb 010h,010h,027h,023h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h	; 62ad  ..'#............
	defb 010h,010h,010h,010h,010h,010h,010h,010h,024h,028h,029h,02ah,02bh,02ch,025h,021h	; 62bd  ........$()*+,%!
	defb 010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,022h,026h,039h,03ah	; 62cd  ............"&9:
	defb 03bh,03ch,02dh,02eh,02fh,030h,031h,032h,049h,04ah,049h,04ah,049h,04ah,049h,04ah	; 62dd  .<-./012IJIJIJIJ
	defb 049h,04ah,049h,04ah,03dh,03eh,03fh,040h,041h,042h,033h,034h,035h,036h,037h,038h	; 62ed  IJIJ=>?@AB345678
	defb 04bh,04ch,04bh,04ch,04bh,04ch,04bh,04ch,04bh,04ch,04bh,04ch,043h,044h,045h,046h	; 62fd  KLKLKLKLKLKLCDEF
	defb 047h,048h,04dh,04eh,04fh,05dh,05eh,05fh,056h,056h,056h,056h,056h,056h,056h,056h	; 630d  GHMNO]^_VVVVVVVV
	defb 056h,056h,056h,056h,060h,061h,062h,050h,051h,052h,05ch,054h,055h,063h,063h,063h	; 631d  VVVV`abPQR\TUccc
	defb 063h,063h,063h,063h,063h,063h,063h,063h,063h,063h,063h,063h,063h,063h,063h,05ah	; 632d  cccccccccccccccZ
	defb 05bh,053h,063h,063h,063h,063h,063h,063h,063h,063h,063h,063h,063h,063h,063h,063h	; 633d  [Scccccccccccccc
	defb 063h,063h,063h,057h,058h,059h,063h,063h,063h,063h	; 634d  cccWXYcccc

; ======================================================================
; CODIGO 0x6357..0x639e  (71 bytes)
; ======================================================================


fondo_de_bajada:		; 0xEC60 lleno de la ficha 0x10 y 6 filas de p21:62AF en 0xEE20
	ld hl,0ec60h		;6357
	ld de,00008h		;635a
	ld a,010h		;635d
	ld c,00eh		;635f
L_6361:
	ld b,018h		;6361
L_6363:
	ld (hl),a			;6363
	inc hl			;6364
	djnz L_6363		;6365
	add hl,de			;6367
	dec c			;6368
	jr nz,L_6361		;6369
	ld hl,0ee20h		;636b
	ld de,062afh		;636e
	ld c,006h		;6371
L_6373:
	ld b,018h		;6373
L_6375:
	ld a,(de)			;6375
	ld (hl),a			;6376
	inc de			;6377
	inc hl			;6378
	djnz L_6375		;6379
	ld a,008h		;637b
	call hl_mas_a		;637d   ; hl_mas_a: HL = HL + A
	dec c			;6380
	jr nz,L_6373		;6381
	ret			;6383
hl_mas_a:		; HL = HL + A
	add a,l			;6384
	ld l,a			;6385
	ret nc			;6386
	inc h			;6387
	ret			;6388
fondo_de_subida:		; 21 filas de 0xED00 con la ficha 0x10
	ld hl,0ed00h		;6389   ; apunta a los nombres de la pantalla (32 x 24)
	ld de,00008h		;638c
	ld a,010h		;638f
	ld c,015h		;6391
L_6393:
	ld b,018h		;6393
L_6395:
	ld (hl),a			;6395
	inc hl			;6396
	djnz L_6395		;6397
	add hl,de			;6399
	dec c			;639a
	jr nz,L_6393		;639b
	ret			;639d

; ----------------------------------------------------------------------
; DATOS grupo_de_mensajes: un nibble por sala (L_43BB con 0xEB40): 0 = bancos
;   21-22-23, 1 = 24-25-26, 2 = 27-28 (p00:4E6A); lo leen p00:4E76 (284 bytes)
;   0x639e..0x64ba  (284 bytes)
DATA_grupo_de_mensajes:
	defb 000h,000h,000h,000h,000h,001h,011h,000h,010h,020h,000h,000h,000h,000h,000h,020h	; 639e  ......... .....
	defb 000h,001h,010h,020h,000h,001h,011h,000h,010h,000h,002h,000h,000h,001h,000h,010h	; 63ae  ... ............
	defb 000h,010h,000h,002h,000h,001h,000h,000h,010h,010h,000h,000h,000h,002h,010h,010h	; 63be  ................
	defb 000h,000h,000h,000h,000h,021h,011h,000h,000h,000h,001h,000h,001h,002h,010h,000h	; 63ce  .....!..........
	defb 000h,011h,001h,000h,001h,010h,000h,000h,010h,000h,002h,010h,020h,002h,000h,000h	; 63de  ............ ...
	defb 001h,010h,001h,001h,000h,000h,001h,011h,000h,000h,000h,000h,000h,000h,000h,000h	; 63ee  ................
	defb 000h,001h,001h,000h,010h,010h,011h,001h,001h,010h,000h,000h,000h,000h,000h,000h	; 63fe  ................
	defb 000h,010h,010h,001h,000h,000h,000h,011h,011h,001h,010h,022h,011h,000h,021h,000h	; 640e  ..........."..!.
	defb 000h,000h,000h,001h,001h,000h,000h,001h,000h,001h,000h,011h,012h,000h,000h,000h	; 641e  ................
	defb 000h,000h,000h,000h,000h,000h,011h,000h,010h,000h,000h,022h,000h,000h,000h,000h	; 642e  ..........."....
	defb 000h,010h,000h,020h,011h,002h,001h,000h,000h,000h,000h,012h,000h,000h,000h,000h	; 643e  ... ............
	defb 000h,001h,000h,000h,000h,000h,000h,020h,010h,000h,000h,020h,000h,001h,010h,010h	; 644e  ....... ... ....
	defb 000h,001h,000h,000h,000h,002h,000h,000h,000h,001h,000h,000h,000h,000h,000h,000h	; 645e  ................
	defb 001h,020h,020h,000h,002h,002h,010h,011h,011h,000h,000h,000h,021h,020h,010h,000h	; 646e  .  .........! ..
	defb 000h,000h,011h,010h,002h,000h,000h,011h,002h,020h,001h,001h,021h,020h,000h,000h	; 647e  ......... ..! ..
	defb 020h,002h,002h,000h,000h,000h,000h,000h,002h,000h,002h,000h,002h,020h,000h,002h	; 648e   ............ ..
	defb 010h,000h,000h,000h,010h,000h,010h,011h,010h,001h,011h,011h,011h,011h,011h,011h	; 649e  ................
	defb 000h,000h,001h,000h,011h,011h,011h,001h,010h,011h,011h,000h	; 64ae  ............

; ----------------------------------------------------------------------
; DATOS mensajes_por_sala: 567 palabras: la tabla de mensajes de cada sala
;   (p00:4EA5: 0x64BA + sala x 2); lo leen p00:4E76 (1134 bytes)
;   0x64ba..0x6928  (1134 bytes)
DATA_mensajes_por_sala:
	defb 028h,069h	; 64ba
	defb 028h,069h	; 64bc
	defb 028h,069h	; 64be
	defb 028h,069h	; 64c0
	defb 028h,069h	; 64c2
	defb 028h,069h	; 64c4
	defb 028h,069h	; 64c6
	defb 028h,069h	; 64c8
	defb 028h,069h	; 64ca
	defb 028h,069h	; 64cc
	defb 028h,069h	; 64ce
	defb 012h,060h	; 64d0
	defb 032h,060h	; 64d2
	defb 080h,060h	; 64d4
	defb 028h,069h	; 64d6
	defb 028h,069h	; 64d8
	defb 0c0h,060h	; 64da
	defb 028h,069h	; 64dc
	defb 037h,0bfh	; 64de
	defb 028h,069h	; 64e0
	defb 028h,069h	; 64e2
	defb 028h,069h	; 64e4
	defb 028h,069h	; 64e6
	defb 028h,069h	; 64e8
	defb 028h,069h	; 64ea
	defb 028h,069h	; 64ec
	defb 028h,069h	; 64ee
	defb 028h,069h	; 64f0
	defb 028h,069h	; 64f2
	defb 028h,069h	; 64f4
	defb 01ch,0bdh	; 64f6
	defb 028h,069h	; 64f8
	defb 028h,069h	; 64fa
	defb 028h,069h	; 64fc
	defb 028h,069h	; 64fe
	defb 0dfh,060h	; 6500
	defb 0edh,060h	; 6502
	defb 028h,069h	; 6504
	defb 00fh,0bfh	; 6506
	defb 028h,069h	; 6508
	defb 028h,069h	; 650a
	defb 028h,069h	; 650c
	defb 028h,069h	; 650e
	defb 000h,060h	; 6510
	defb 0ddh,061h	; 6512
	defb 007h,062h	; 6514
	defb 028h,069h	; 6516
	defb 028h,069h	; 6518
	defb 04fh,062h	; 651a
	defb 028h,069h	; 651c
	defb 028h,069h	; 651e
	defb 028h,069h	; 6520
	defb 028h,069h	; 6522
	defb 0b0h,0bdh	; 6524
	defb 028h,069h	; 6526
	defb 028h,069h	; 6528
	defb 028h,069h	; 652a
	defb 028h,069h	; 652c
	defb 028h,069h	; 652e
	defb 034h,065h	; 6530
	defb 028h,069h	; 6532
	defb 028h,069h	; 6534
	defb 090h,067h	; 6536
	defb 028h,069h	; 6538
	defb 028h,069h	; 653a
	defb 028h,069h	; 653c
	defb 00ch,069h	; 653e
	defb 028h,069h	; 6540
	defb 028h,069h	; 6542
	defb 028h,069h	; 6544
	defb 028h,069h	; 6546
	defb 0dfh,0beh	; 6548
	defb 028h,069h	; 654a
	defb 028h,069h	; 654c
	defb 028h,069h	; 654e
	defb 034h,065h	; 6550
	defb 028h,069h	; 6552
	defb 028h,069h	; 6554
	defb 028h,069h	; 6556
	defb 028h,069h	; 6558
	defb 07dh,07fh	; 655a
	defb 028h,069h	; 655c
	defb 0edh,060h	; 655e
	defb 028h,069h	; 6560
	defb 028h,069h	; 6562
	defb 028h,069h	; 6564
	defb 028h,069h	; 6566
	defb 028h,069h	; 6568
	defb 028h,069h	; 656a
	defb 028h,069h	; 656c
	defb 028h,069h	; 656e
	defb 05bh,0bfh	; 6570
	defb 0edh,060h	; 6572
	defb 028h,069h	; 6574
	defb 025h,069h	; 6576
	defb 028h,069h	; 6578
	defb 028h,069h	; 657a
	defb 028h,069h	; 657c
	defb 010h,075h	; 657e
	defb 013h,079h	; 6580
	defb 028h,069h	; 6582
	defb 028h,069h	; 6584
	defb 028h,069h	; 6586
	defb 028h,069h	; 6588
	defb 028h,069h	; 658a
	defb 028h,069h	; 658c
	defb 0b8h,0beh	; 658e
	defb 066h,07fh	; 6590
	defb 032h,069h	; 6592
	defb 041h,069h	; 6594
	defb 028h,069h	; 6596
	defb 028h,069h	; 6598
	defb 028h,069h	; 659a
	defb 028h,069h	; 659c
	defb 028h,069h	; 659e
	defb 028h,069h	; 65a0
	defb 028h,069h	; 65a2
	defb 034h,065h	; 65a4
	defb 028h,069h	; 65a6
	defb 028h,069h	; 65a8
	defb 028h,069h	; 65aa
	defb 09eh,069h	; 65ac
	defb 028h,069h	; 65ae
	defb 086h,0bfh	; 65b0
	defb 090h,069h	; 65b2
	defb 028h,069h	; 65b4
	defb 028h,069h	; 65b6
	defb 028h,069h	; 65b8
	defb 028h,069h	; 65ba
	defb 028h,069h	; 65bc
	defb 029h,06ah	; 65be
	defb 067h,06bh	; 65c0
	defb 028h,069h	; 65c2
	defb 094h,06ch	; 65c4
	defb 028h,069h	; 65c6
	defb 028h,069h	; 65c8
	defb 028h,069h	; 65ca
	defb 098h,06dh	; 65cc
	defb 07bh,06eh	; 65ce
	defb 028h,069h	; 65d0
	defb 028h,069h	; 65d2
	defb 0e9h,07ah	; 65d4
	defb 028h,069h	; 65d6
	defb 028h,069h	; 65d8
	defb 05bh,06fh	; 65da
	defb 028h,069h	; 65dc
	defb 028h,069h	; 65de
	defb 028h,069h	; 65e0
	defb 028h,069h	; 65e2
	defb 0c2h,0bdh	; 65e4
	defb 0cfh,06fh	; 65e6
	defb 028h,069h	; 65e8
	defb 0e8h,0bdh	; 65ea
	defb 049h,07bh	; 65ec
	defb 028h,069h	; 65ee
	defb 0b9h,0bfh	; 65f0
	defb 028h,069h	; 65f2
	defb 028h,069h	; 65f4
	defb 028h,069h	; 65f6
	defb 028h,069h	; 65f8
	defb 028h,069h	; 65fa
	defb 0e0h,06fh	; 65fc
	defb 004h,070h	; 65fe
	defb 028h,069h	; 6600
	defb 028h,069h	; 6602
	defb 014h,070h	; 6604
	defb 028h,069h	; 6606
	defb 0d2h,077h	; 6608
	defb 028h,069h	; 660a
	defb 028h,069h	; 660c
	defb 028h,069h	; 660e
	defb 028h,069h	; 6610
	defb 028h,069h	; 6612
	defb 021h,071h	; 6614
	defb 054h,071h	; 6616
	defb 0dch,071h	; 6618
	defb 0d2h,07dh	; 661a
	defb 007h,0bfh	; 661c
	defb 028h,069h	; 661e
	defb 013h,086h	; 6620
	defb 028h,069h	; 6622
	defb 028h,069h	; 6624
	defb 028h,069h	; 6626
	defb 028h,069h	; 6628
	defb 028h,069h	; 662a
	defb 028h,069h	; 662c
	defb 028h,069h	; 662e
	defb 028h,069h	; 6630
	defb 028h,069h	; 6632
	defb 028h,069h	; 6634
	defb 028h,069h	; 6636
	defb 028h,069h	; 6638
	defb 028h,069h	; 663a
	defb 028h,069h	; 663c
	defb 028h,069h	; 663e
	defb 035h,075h	; 6640
	defb 028h,069h	; 6642
	defb 057h,075h	; 6644
	defb 028h,069h	; 6646
	defb 028h,069h	; 6648
	defb 064h,075h	; 664a
	defb 038h,088h	; 664c
	defb 0edh,060h	; 664e
	defb 028h,069h	; 6650
	defb 0bbh,075h	; 6652
	defb 0e6h,075h	; 6654
	defb 043h,0bfh	; 6656
	defb 0f6h,075h	; 6658
	defb 02dh,089h	; 665a
	defb 01eh,077h	; 665c
	defb 0e6h,075h	; 665e
	defb 028h,069h	; 6660
	defb 028h,069h	; 6662
	defb 028h,069h	; 6664
	defb 028h,069h	; 6666
	defb 028h,069h	; 6668
	defb 028h,069h	; 666a
	defb 028h,069h	; 666c
	defb 028h,069h	; 666e
	defb 028h,069h	; 6670
	defb 028h,069h	; 6672
	defb 028h,069h	; 6674
	defb 028h,069h	; 6676
	defb 028h,069h	; 6678
	defb 028h,069h	; 667a
	defb 028h,069h	; 667c
	defb 076h,077h	; 667e
	defb 028h,069h	; 6680
	defb 034h,065h	; 6682
	defb 028h,069h	; 6684
	defb 028h,069h	; 6686
	defb 0d2h,077h	; 6688
	defb 028h,069h	; 668a
	defb 028h,069h	; 668c
	defb 028h,069h	; 668e
	defb 028h,069h	; 6690
	defb 0e6h,08bh	; 6692
	defb 06eh,0bfh	; 6694
	defb 0a3h,078h	; 6696
	defb 0f4h,078h	; 6698
	defb 036h,079h	; 669a
	defb 0a1h,07bh	; 669c
	defb 028h,069h	; 669e
	defb 0feh,07bh	; 66a0
	defb 057h,07eh	; 66a2
	defb 028h,069h	; 66a4
	defb 042h,0bdh	; 66a6
	defb 067h,0bdh	; 66a8
	defb 00dh,07fh	; 66aa
	defb 034h,065h	; 66ac
	defb 028h,069h	; 66ae
	defb 028h,069h	; 66b0
	defb 0a9h,0beh	; 66b2
	defb 036h,07fh	; 66b4
	defb 028h,069h	; 66b6
	defb 028h,069h	; 66b8
	defb 028h,069h	; 66ba
	defb 028h,069h	; 66bc
	defb 028h,069h	; 66be
	defb 028h,069h	; 66c0
	defb 028h,069h	; 66c2
	defb 028h,069h	; 66c4
	defb 028h,069h	; 66c6
	defb 08dh,07fh	; 66c8
	defb 028h,069h	; 66ca
	defb 030h,083h	; 66cc
	defb 028h,069h	; 66ce
	defb 0aah,0beh	; 66d0
	defb 028h,069h	; 66d2
	defb 0cch,08ch	; 66d4
	defb 062h,08dh	; 66d6
	defb 034h,065h	; 66d8
	defb 028h,069h	; 66da
	defb 0b8h,0beh	; 66dc
	defb 028h,069h	; 66de
	defb 01eh,084h	; 66e0
	defb 028h,069h	; 66e2
	defb 028h,069h	; 66e4
	defb 0edh,060h	; 66e6
	defb 04eh,085h	; 66e8
	defb 05dh,085h	; 66ea
	defb 067h,0bdh	; 66ec
	defb 028h,069h	; 66ee
	defb 028h,069h	; 66f0
	defb 028h,069h	; 66f2
	defb 028h,069h	; 66f4
	defb 028h,069h	; 66f6
	defb 028h,069h	; 66f8
	defb 028h,069h	; 66fa
	defb 028h,069h	; 66fc
	defb 028h,069h	; 66fe
	defb 028h,069h	; 6700
	defb 028h,069h	; 6702
	defb 028h,069h	; 6704
	defb 028h,069h	; 6706
	defb 028h,069h	; 6708
	defb 028h,069h	; 670a
	defb 028h,069h	; 670c
	defb 028h,069h	; 670e
	defb 028h,069h	; 6710
	defb 09fh,085h	; 6712
	defb 062h,088h	; 6714
	defb 0b4h,08dh	; 6716
	defb 09eh,0beh	; 6718
	defb 0b4h,088h	; 671a
	defb 028h,069h	; 671c
	defb 028h,069h	; 671e
	defb 028h,069h	; 6720
	defb 028h,069h	; 6722
	defb 028h,069h	; 6724
	defb 08eh,0bdh	; 6726
	defb 067h,0bdh	; 6728
	defb 028h,069h	; 672a
	defb 028h,069h	; 672c
	defb 028h,069h	; 672e
	defb 028h,069h	; 6730
	defb 028h,069h	; 6732
	defb 028h,069h	; 6734
	defb 028h,069h	; 6736
	defb 028h,069h	; 6738
	defb 028h,069h	; 673a
	defb 028h,069h	; 673c
	defb 002h,089h	; 673e
	defb 028h,069h	; 6740
	defb 028h,069h	; 6742
	defb 028h,069h	; 6744
	defb 00ch,0bdh	; 6746
	defb 028h,069h	; 6748
	defb 0adh,089h	; 674a
	defb 0e6h,075h	; 674c
	defb 028h,069h	; 674e
	defb 0deh,0bbh	; 6750
	defb 028h,069h	; 6752
	defb 0f6h,089h	; 6754
	defb 028h,069h	; 6756
	defb 028h,069h	; 6758
	defb 028h,069h	; 675a
	defb 028h,069h	; 675c
	defb 054h,08eh	; 675e
	defb 028h,069h	; 6760
	defb 028h,069h	; 6762
	defb 028h,069h	; 6764
	defb 014h,08bh	; 6766
	defb 09fh,0bdh	; 6768
	defb 028h,069h	; 676a
	defb 01eh,08fh	; 676c
	defb 028h,069h	; 676e
	defb 028h,069h	; 6770
	defb 028h,069h	; 6772
	defb 028h,069h	; 6774
	defb 028h,069h	; 6776
	defb 028h,069h	; 6778
	defb 028h,069h	; 677a
	defb 028h,069h	; 677c
	defb 028h,069h	; 677e
	defb 043h,08bh	; 6780
	defb 028h,069h	; 6782
	defb 0b1h,092h	; 6784
	defb 0b9h,096h	; 6786
	defb 028h,069h	; 6788
	defb 028h,069h	; 678a
	defb 028h,069h	; 678c
	defb 028h,069h	; 678e
	defb 028h,069h	; 6790
	defb 028h,069h	; 6792
	defb 028h,069h	; 6794
	defb 00eh,0bch	; 6796
	defb 028h,069h	; 6798
	defb 052h,08bh	; 679a
	defb 028h,069h	; 679c
	defb 028h,069h	; 679e
	defb 028h,069h	; 67a0
	defb 028h,069h	; 67a2
	defb 028h,069h	; 67a4
	defb 08eh,0bdh	; 67a6
	defb 028h,069h	; 67a8
	defb 028h,069h	; 67aa
	defb 028h,069h	; 67ac
	defb 028h,069h	; 67ae
	defb 0b0h,08ch	; 67b0
	defb 0b3h,08eh	; 67b2
	defb 028h,069h	; 67b4
	defb 010h,08fh	; 67b6
	defb 028h,069h	; 67b8
	defb 028h,069h	; 67ba
	defb 028h,069h	; 67bc
	defb 028h,069h	; 67be
	defb 034h,065h	; 67c0
	defb 028h,069h	; 67c2
	defb 02ah,098h	; 67c4
	defb 0dah,098h	; 67c6
	defb 028h,069h	; 67c8
	defb 028h,069h	; 67ca
	defb 028h,069h	; 67cc
	defb 028h,069h	; 67ce
	defb 02ah,0beh	; 67d0
	defb 028h,069h	; 67d2
	defb 028h,069h	; 67d4
	defb 028h,069h	; 67d6
	defb 028h,069h	; 67d8
	defb 028h,069h	; 67da
	defb 028h,069h	; 67dc
	defb 028h,069h	; 67de
	defb 01eh,08fh	; 67e0
	defb 028h,069h	; 67e2
	defb 028h,069h	; 67e4
	defb 028h,069h	; 67e6
	defb 028h,069h	; 67e8
	defb 028h,069h	; 67ea
	defb 028h,069h	; 67ec
	defb 028h,069h	; 67ee
	defb 028h,069h	; 67f0
	defb 028h,069h	; 67f2
	defb 028h,069h	; 67f4
	defb 028h,069h	; 67f6
	defb 028h,069h	; 67f8
	defb 028h,069h	; 67fa
	defb 0f3h,08fh	; 67fc
	defb 082h,0bch	; 67fe
	defb 028h,069h	; 6800
	defb 09bh,0bch	; 6802
	defb 028h,069h	; 6804
	defb 028h,069h	; 6806
	defb 028h,069h	; 6808
	defb 028h,069h	; 680a
	defb 0f5h,0bdh	; 680c
	defb 0dah,099h	; 680e
	defb 0f5h,0bdh	; 6810
	defb 034h,065h	; 6812
	defb 028h,069h	; 6814
	defb 08ah,090h	; 6816
	defb 0bfh,090h	; 6818
	defb 056h,091h	; 681a
	defb 0edh,060h	; 681c
	defb 028h,069h	; 681e
	defb 028h,069h	; 6820
	defb 028h,069h	; 6822
	defb 028h,069h	; 6824
	defb 028h,069h	; 6826
	defb 028h,069h	; 6828
	defb 07eh,0beh	; 682a
	defb 066h,091h	; 682c
	defb 0c8h,0bfh	; 682e
	defb 028h,069h	; 6830
	defb 034h,065h	; 6832
	defb 028h,069h	; 6834
	defb 028h,069h	; 6836
	defb 028h,069h	; 6838
	defb 028h,069h	; 683a
	defb 028h,069h	; 683c
	defb 028h,069h	; 683e
	defb 028h,069h	; 6840
	defb 043h,08bh	; 6842
	defb 0edh,060h	; 6844
	defb 079h,091h	; 6846
	defb 028h,069h	; 6848
	defb 028h,069h	; 684a
	defb 0f5h,0bdh	; 684c
	defb 028h,069h	; 684e
	defb 028h,069h	; 6850
	defb 028h,069h	; 6852
	defb 028h,069h	; 6854
	defb 0edh,090h	; 6856
	defb 02ah,091h	; 6858
	defb 0a8h,09ch	; 685a
	defb 01ah,0beh	; 685c
	defb 05fh,0beh	; 685e
	defb 028h,069h	; 6860
	defb 0c2h,09fh	; 6862
	defb 009h,092h	; 6864
	defb 028h,069h	; 6866
	defb 059h,092h	; 6868
	defb 0c8h,0bfh	; 686a
	defb 0edh,060h	; 686c
	defb 07eh,0beh	; 686e
	defb 028h,069h	; 6870
	defb 028h,069h	; 6872
	defb 028h,069h	; 6874
	defb 028h,069h	; 6876
	defb 028h,069h	; 6878
	defb 0dfh,0bch	; 687a
	defb 028h,069h	; 687c
	defb 028h,069h	; 687e
	defb 039h,0bch	; 6880
	defb 028h,069h	; 6882
	defb 050h,0bch	; 6884
	defb 028h,069h	; 6886
	defb 028h,069h	; 6888
	defb 028h,069h	; 688a
	defb 028h,069h	; 688c
	defb 028h,069h	; 688e
	defb 021h,0a1h	; 6890
	defb 028h,069h	; 6892
	defb 028h,069h	; 6894
	defb 028h,069h	; 6896
	defb 028h,069h	; 6898
	defb 028h,069h	; 689a
	defb 00dh,0beh	; 689c
	defb 028h,069h	; 689e
	defb 028h,069h	; 68a0
	defb 028h,069h	; 68a2
	defb 0c8h,0bfh	; 68a4
	defb 028h,069h	; 68a6
	defb 028h,069h	; 68a8
	defb 028h,069h	; 68aa
	defb 07eh,0beh	; 68ac
	defb 07eh,0beh	; 68ae
	defb 028h,069h	; 68b0
	defb 028h,069h	; 68b2
	defb 028h,069h	; 68b4
	defb 028h,069h	; 68b6
	defb 0bch,0bch	; 68b8
	defb 0aeh,092h	; 68ba
	defb 076h,0a1h	; 68bc
	defb 095h,0a2h	; 68be
	defb 095h,0a2h	; 68c0
	defb 095h,0a2h	; 68c2
	defb 095h,0a2h	; 68c4
	defb 095h,0a2h	; 68c6
	defb 095h,0a2h	; 68c8
	defb 00fh,09fh	; 68ca
	defb 095h,0a2h	; 68cc
	defb 095h,0a2h	; 68ce
	defb 095h,0a2h	; 68d0
	defb 051h,0a1h	; 68d2
	defb 09bh,0a2h	; 68d4
	defb 054h,0a2h	; 68d6
	defb 0f0h,0a4h	; 68d8
	defb 037h,0a5h	; 68da
	defb 0bdh,0a4h	; 68dc
	defb 028h,069h	; 68de
	defb 0c0h,0aah	; 68e0
	defb 0c0h,0aah	; 68e2
	defb 0c0h,0aah	; 68e4
	defb 0c0h,0aah	; 68e6
	defb 0c0h,0aah	; 68e8
	defb 0c0h,0aah	; 68ea
	defb 0c0h,0aah	; 68ec
	defb 0c0h,0aah	; 68ee
	defb 0c0h,0aah	; 68f0
	defb 0c0h,0aah	; 68f2
	defb 0d5h,0aah	; 68f4
	defb 0eah,0aah	; 68f6
	defb 04ch,0adh	; 68f8
	defb 028h,069h	; 68fa
	defb 028h,069h	; 68fc
	defb 028h,069h	; 68fe
	defb 028h,069h	; 6900
	defb 028h,069h	; 6902
	defb 06ah,0adh	; 6904
	defb 028h,069h	; 6906
	defb 096h,0ach	; 6908
	defb 028h,0b1h	; 690a
	defb 028h,0b1h	; 690c
	defb 0aeh,0b2h	; 690e
	defb 0aeh,0b2h	; 6910
	defb 0beh,0b3h	; 6912
	defb 0beh,0b3h	; 6914
	defb 028h,069h	; 6916
	defb 073h,0b4h	; 6918
	defb 0bah,0b5h	; 691a
	defb 0e8h,0b1h	; 691c
	defb 0f2h,0b5h	; 691e
	defb 004h,0b7h	; 6920
	defb 00bh,0b8h	; 6922
	defb 00ch,0b9h	; 6924
	defb 0c2h,0b6h	; 6926

; ----------------------------------------------------------------------
; DATOS mensajes_fijos_1: 32 palabras: los mensajes de 0xE889 = 1
;   (p00:4E83-4E95); lo leen p00:4E76 (64 bytes)
;   0x6928..0x6968  (64 bytes)
DATA_mensajes_fijos_1:
	defb 068h,069h	; 6928
	defb 098h,069h	; 692a
	defb 0cah,069h	; 692c
	defb 0f5h,069h	; 692e
	defb 01bh,06ah	; 6930
	defb 054h,06ah	; 6932
	defb 064h,06ah	; 6934
	defb 094h,06ah	; 6936
	defb 0bbh,06ah	; 6938
	defb 000h,06bh	; 693a
	defb 016h,06bh	; 693c
	defb 02dh,06bh	; 693e
	defb 067h,06bh	; 6940
	defb 083h,06bh	; 6942
	defb 0b2h,06bh	; 6944
	defb 0dch,06bh	; 6946
	defb 0f0h,06bh	; 6948
	defb 006h,06ch	; 694a
	defb 047h,06ch	; 694c
	defb 057h,06ch	; 694e
	defb 06eh,06ch	; 6950
	defb 090h,06ch	; 6952
	defb 0a8h,06ch	; 6954
	defb 0d4h,06ch	; 6956
	defb 0e2h,06ch	; 6958
	defb 0f7h,06ch	; 695a
	defb 015h,06dh	; 695c
	defb 02dh,06dh	; 695e
	defb 03eh,06dh	; 6960
	defb 059h,06dh	; 6962
	defb 07bh,06dh	; 6964
	defb 08fh,06dh	; 6966

; ----------------------------------------------------------------------
; DATOS mensaje_21_6968: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (48
;   bytes)
;   0x6968..0x6998  (48 bytes)
DATA_mensaje_21_6968:
	defb 0fbh,03bh,04fh,003h,069h,055h,000h,0cah,04bh,045h,048h,052h,068h,051h,062h,067h	; 6968  ..O.iU..KEHRhQbg
	defb 002h,0feh,04bh,0a6h,045h,067h,04bh,052h,065h,001h,03ch,0feh,0fch,03bh,041h,050h	; 6978  ..K.EgKRe.<...AP
	defb 041h,050h,000h,042h,068h,04ah,041h,000h,093h,081h,04fh,003h,054h,040h,03ch,0ffh	; 6988  AP.BhJA...O.T@<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6998: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0x6998..0x69ca  (50 bytes)
DATA_mensaje_21_6998:
	defb 0fbh,03bh,04eh,049h,055h,059h,000h,04fh,003h,069h,062h,000h,041h,054h,041h,06bh	; 6998  ..NIUY.O.ib.ATAk
	defb 006h,0feh,0f7h,0fch,000h,057h,052h,068h,06dh,04bh,003h,0a3h,054h,041h,058h,002h	; 69a8  .....WRhmK..TAX.
	defb 03ch,0feh,0fch,03bh,04bh,051h,069h,041h,054h,006h,090h,085h,0ach,090h,085h,0ach	; 69b8  <...KQiAT.......
	defb 03ch,0ffh	; 69c8

; ----------------------------------------------------------------------
; DATOS mensaje_21_69CA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (43
;   bytes)
;   0x69ca..0x69f5  (43 bytes)
DATA_mensaje_21_69CA:
	defb 0fbh,03bh,049h,049h,059h,000h,0c6h,04fh,050h,04fh,003h,048h,065h,03ch,0feh,0fch	; 69ca  ..IIY..OPO.He<..
	defb 03bh,06bh,045h,0a6h,052h,068h,065h,006h,053h,067h,040h,043h,04ch,003h,0feh,0cah	; 69da  .kE.Rhe.Sg@CL...
	defb 045h,048h,052h,05fh,04fh,04fh,003h,048h,04ah,03ch,0ffh	; 69ea  EHR_OO.HJ<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_69F5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (38
;   bytes)
;   0x69f5..0x6a1b  (38 bytes)
DATA_mensaje_21_69F5:
	defb 0fbh,03bh,053h,003h,049h,000h,060h,041h,052h,000h,0cah,04bh,052h,068h,058h,002h	; 69f5  ..S.I.`AR..KRhX.
	defb 03ch,0feh,0fch,03bh,05ah,053h,067h,049h,003h,053h,045h,003h,000h,04ch,046h,054h	; 6a05  <...ZSgI.SE..LFT
	defb 06dh,04fh,003h,065h,03ch,0ffh	; 6a15

; ----------------------------------------------------------------------
; DATOS mensaje_21_6A1B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (57
;   bytes)
;   0x6a1b..0x6a54  (57 bytes)
DATA_mensaje_21_6A1B:
	defb 0fbh,03bh,0c9h,0b8h,052h,068h,058h,002h,000h,08dh,003h,020h,0afh,053h,04bh,052h	; 6a1b  ....RhX.... .SKR
	defb 041h,068h,0feh,08ah,08eh,059h,000h,054h,041h,058h,065h,001h,03ch,0feh,0fch,03bh	; 6a2b  Ah...Y.TAXe.<...
	defb 074h,099h,059h,000h,08dh,003h,020h,0afh,053h,04ch,068h,058h,045h,003h,0feh,053h	; 6a3b  t.Y... .SLhXE..S
	defb 047h,041h,054h,06dh,04fh,003h,065h,03ch,0ffh	; 6a4b  GATmO.e<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6A54: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x6a54..0x6a64  (16 bytes)
DATA_mensaje_21_6A54:
	defb 0fbh,03bh,0b8h,052h,058h,053h,042h,067h,058h,000h,048h,04bh,046h,065h,03ch,0ffh	; 6a54  ...RXSBgX.HKFe<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6A64: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (48
;   bytes)
;   0x6a64..0x6a94  (48 bytes)
DATA_mensaje_21_6A64:
	defb 0fbh,03bh,053h,047h,055h,000h,0b5h,055h,051h,047h,062h,058h,059h,000h,054h,041h	; 6a64  ..SGU..UQGbXY.TA
	defb 065h,042h,057h,03ch,0fch,03bh,089h,084h,055h,000h,051h,047h,062h,058h,045h,003h	; 6a74  eBW<....U.QGbXE.
	defb 000h,063h,047h,011h,05ah,004h,046h,0feh,041h,068h,048h,053h,003h,054h,03ch,0ffh	; 6a84  .cG.Z.F.AhHS.T<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6A94: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (39
;   bytes)
;   0x6a94..0x6abb  (39 bytes)
DATA_mensaje_21_6A94:
	defb 0fbh,03bh,045h,06bh,0a6h,04fh,062h,058h,059h,000h,0b8h,040h,04fh,066h,054h,041h	; 6a94  ..Ek.ObXY..@OfTA
	defb 06bh,03ch,0feh,0fch,03bh,072h,090h,006h,044h,05eh,043h,058h,0bbh,047h,066h,041h	; 6aa4  k<...r..D^CX.GfA
	defb 058h,062h,06dh,04fh,003h,03ch,0ffh	; 6ab4

; ----------------------------------------------------------------------
; DATOS mensaje_21_6ABB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (69
;   bytes)
;   0x6abb..0x6b00  (69 bytes)
DATA_mensaje_21_6ABB:
	defb 0fbh,03bh,0c6h,06ch,0ceh,05ch,003h,068h,051h,062h,067h,002h,000h,04eh,058h,083h	; 6abb  ...l.\.hQbg..NX.
	defb 07bh,052h,003h,0feh,044h,041h,04bh,0a3h,04ah,06dh,079h,003h,0a6h,079h,062h,000h	; 6acb  {R..DAK.Jmy..yb.
	defb 054h,041h,052h,003h,04bh,0a5h,03ch,0feh,0fch,03bh,071h,093h,000h,04fh,05eh,055h	; 6adb  TAR.K.<...q..O^U
	defb 059h,000h,041h,041h,062h,06dh,00ah,00ah,0feh,0c9h,06ch,000h,0c8h,06bh,04dh,068h	; 6aeb  Y.AAbm....l..kMh
	defb 06dh,04fh,003h,03ch,0ffh	; 6afb

; ----------------------------------------------------------------------
; DATOS mensaje_21_6B00: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x6b00..0x6b16  (22 bytes)
DATA_mensaje_21_6B00:
	defb 0fbh,03bh,0ceh,05ch,003h,052h,062h,000h,04bh,045h,04fh,054h,041h,053h,000h,0dbh	; 6b00  ...\.Rb.KEOTAS..
	defb 042h,048h,053h,003h,03ch,0ffh	; 6b10

; ----------------------------------------------------------------------
; DATOS mensaje_21_6B16: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x6b16..0x6b2d  (23 bytes)
DATA_mensaje_21_6B16:
	defb 0fbh,03bh,049h,049h,052h,003h,000h,058h,06dh,05ah,003h,067h,000h,04bh,052h,041h	; 6b16  ..IIR..XmZ.g.KRA
	defb 066h,069h,054h,041h,06bh,03ch,0ffh	; 6b26

; ----------------------------------------------------------------------
; DATOS mensaje_21_6B2D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (58
;   bytes)
;   0x6b2d..0x6b67  (58 bytes)
DATA_mensaje_21_6B2D:
	defb 0fbh,03bh,04bh,003h,05bh,003h,06dh,058h,000h,088h,072h,08fh,07eh,052h,003h,062h	; 6b2d  ..K.[.mX..r.~R.b
	defb 0feh,0ceh,05ch,003h,052h,05fh,04fh,066h,002h,03ch,0feh,0fch,03bh,074h,099h,059h	; 6b3d  ..\.R_Of.<...t.Y
	defb 000h,08eh,098h,079h,091h,08fh,07eh,045h,003h,000h,04ch,046h,054h,058h,03ch,0fbh	; 6b4d  ...y..~E..LFTX<.
	defb 03bh,065h,01dh,000h,06bh,045h,066h,06dh,03ch,0ffh	; 6b5d  .e..kEfm<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6B67: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0x6b67..0x6b83  (28 bytes)
DATA_mensaje_21_6B67:
	defb 0fbh,03bh,0c9h,052h,003h,062h,000h,045h,06dh,052h,003h,062h,000h,0b1h,06ah,042h	; 6b67  ...R.b.EmR.b..jB
	defb 053h,04ch,068h,058h,0feh,0bch,041h,077h,07dh,057h,03ch,0ffh	; 6b77  SLhX..Aw}W<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6B83: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (47
;   bytes)
;   0x6b83..0x6bb2  (47 bytes)
DATA_mensaje_21_6B83:
	defb 0fbh,03bh,04eh,06dh,054h,055h,000h,0c9h,052h,003h,062h,0b1h,0a6h,052h,0feh,099h	; 6b83  ..NmTU..R.b..R..
	defb 082h,003h,0a8h,055h,0e4h,04fh,04dh,068h,0b7h,054h,058h,002h,03ch,0feh,0fch,03bh	; 6b93  ...U.OMh.TX.<...
	defb 099h,082h,003h,0a8h,002h,000h,053h,003h,049h,053h,003h,049h,002h,03ch,0ffh	; 6ba3  ......S.IS.I.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6BB2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (42
;   bytes)
;   0x6bb2..0x6bdc  (42 bytes)
DATA_mensaje_21_6BB2:
	defb 0fbh,03bh,049h,053h,04bh,062h,000h,05eh,04fh,011h,051h,000h,083h,07bh,06ch,0b1h	; 6bb2  ..ISKb.^O.Q..{l.
	defb 068h,058h,057h,03ch,0fch,03bh,047h,04fh,003h,066h,054h,041h,049h,053h,0c8h,0a6h	; 6bc2  hXW<..GO.fTAIS..
	defb 052h,068h,059h,003h,040h,041h,045h,001h,03ch,0ffh	; 6bd2  RhY.@AE.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6BDC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (20
;   bytes)
;   0x6bdc..0x6bf0  (20 bytes)
DATA_mensaje_21_6BDC:
	defb 0fbh,03bh,0b1h,069h,04eh,042h,054h,062h,058h,059h,000h,0b8h,040h,04fh,066h,054h	; 6bdc  ...iNBTbXY..@OfT
	defb 041h,06bh,03ch,0ffh	; 6bec

; ----------------------------------------------------------------------
; DATOS mensaje_21_6BF0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x6bf0..0x6c06  (22 bytes)
DATA_mensaje_21_6BF0:
	defb 0fbh,03bh,04bh,003h,05bh,003h,06dh,058h,000h,070h,07fh,08eh,06ch,000h,0b0h,041h	; 6bf0  ..K.[.mX.p..l..A
	defb 054h,04ah,041h,065h,03ch,0ffh	; 6c00

; ----------------------------------------------------------------------
; DATOS mensaje_21_6C06: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (65
;   bytes)
;   0x6c06..0x6c47  (65 bytes)
DATA_mensaje_21_6C06:
	defb 0fbh,03bh,0c6h,059h,000h,0f7h,0fch,058h,000h,061h,04bh,0b0h,041h,04bh,003h,0a3h	; 6c06  ...Y...X.aK.AK..
	defb 0feh,054h,041h,06dh,04fh,003h,045h,066h,001h,000h,04eh,06dh,054h,055h,0feh,049h	; 6c16  .TAmO.Ef..NmTU.I
	defb 046h,0b0h,06bh,054h,041h,052h,003h,065h,001h,03ch,0feh,0fch,03bh,070h,099h,0afh	; 6c26  F.kTAR.e.<...p..
	defb 002h,000h,061h,04bh,0b0h,041h,04bh,003h,0a3h,054h,045h,0a6h,04fh,058h,002h,03ch	; 6c36  ..aK.AK..TE.OX.<
	defb 0ffh	; 6c46

; ----------------------------------------------------------------------
; DATOS mensaje_21_6C47: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x6c47..0x6c57  (16 bytes)
DATA_mensaje_21_6C47:
	defb 0fbh,03bh,0b0h,043h,04eh,042h,054h,062h,058h,059h,000h,054h,041h,06bh,03ch,0ffh	; 6c47  ...CNBTbXY.TAk<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6C57: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x6c57..0x6c6e  (23 bytes)
DATA_mensaje_21_6C57:
	defb 0fbh,03bh,0c9h,06ch,0b0h,042h,0a6h,052h,041h,042h,058h,002h,0feh,059h,0a6h,046h	; 6c57  ...l.B.RABX..Y.F
	defb 067h,04bh,052h,065h,001h,03ch,0ffh	; 6c67

; ----------------------------------------------------------------------
; DATOS mensaje_21_6C6E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0x6c6e..0x6c90  (34 bytes)
DATA_mensaje_21_6C6E:
	defb 0fbh,03bh,05ch,06dh,054h,062h,058h,000h,0b8h,04dh,054h,041h,052h,003h,065h,03ch	; 6c6e  ..\mTbX..MTAR.e<
	defb 0feh,0fch,03bh,0c9h,06ch,000h,045h,06dh,045h,003h,043h,053h,06dh,04bh,003h,0a3h	; 6c7e  ....l.EmE.CSmK..
	defb 03ch,0ffh	; 6c8e

; ----------------------------------------------------------------------
; DATOS mensaje_21_6C90: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0x6c90..0x6ca8  (24 bytes)
DATA_mensaje_21_6C90:
	defb 0fbh,03bh,0f7h,0fch,0a6h,052h,000h,08dh,09dh,083h,055h,0feh,0b8h,04dh,04fh,045h	; 6c90  .....R....U..MOE
	defb 003h,067h,063h,054h,058h,057h,03ch,0ffh	; 6ca0  .gcTXW<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6CA8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (44
;   bytes)
;   0x6ca8..0x6cd4  (44 bytes)
DATA_mensaje_21_6CA8:
	defb 0fbh,03bh,0c9h,06ch,000h,0b8h,04dh,065h,042h,0a6h,052h,041h,042h,058h,002h,000h	; 6ca8  ...l..MeB.RABX..
	defb 0c9h,062h,0feh,0e4h,0a6h,052h,041h,054h,041h,047h,04dh,055h,03ch,0feh,0fch,03bh	; 6cb8  .b...RATAGMU<...
	defb 040h,040h,000h,04eh,042h,04fh,003h,0a6h,04fh,054h,03ch,0ffh	; 6cc8  @@.NBO..OT<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6CD4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x6cd4..0x6ce2  (14 bytes)
DATA_mensaje_21_6CD4:
	defb 0fbh,03bh,04fh,003h,069h,055h,000h,0b8h,04dh,068h,058h,002h,03ch,0ffh	; 6cd4  ..O.iU..MhX.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6CE2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x6ce2..0x6cf7  (21 bytes)
DATA_mensaje_21_6CE2:
	defb 0fbh,03bh,06bh,04fh,04ch,065h,042h,054h,062h,058h,059h,000h,0e4h,0a6h,052h,041h	; 6ce2  ..kOLeBTbXY...RA
	defb 054h,041h,06bh,03ch,0ffh	; 6cf2

; ----------------------------------------------------------------------
; DATOS mensaje_21_6CF7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (30
;   bytes)
;   0x6cf7..0x6d15  (30 bytes)
DATA_mensaje_21_6CF7:
	defb 0fbh,03bh,09bh,07fh,07ch,059h,000h,08bh,003h,07fh,0d6h,03ch,0feh,0fch,03bh,05bh	; 6cf7  ....|Y.....<...[
	defb 04ah,003h,048h,068h,054h,0a6h,000h,051h,020h,058h,0afh,001h,03ch,0ffh	; 6d07  J.HhT..Q X..<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6D15: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0x6d15..0x6d2d  (24 bytes)
DATA_mensaje_21_6D15:
	defb 0fbh,03bh,04eh,069h,053h,003h,049h,06ah,04bh,003h,0a3h,000h,054h,041h,06dh,04bh	; 6d15  ..NiS.IjK...TAmK
	defb 003h,0a3h,054h,041h,058h,002h,03ch,0ffh	; 6d25  ..TAX.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6D2D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x6d2d..0x6d3e  (17 bytes)
DATA_mensaje_21_6D2D:
	defb 0fbh,03bh,04fh,003h,069h,055h,000h,06bh,04fh,04ch,058h,045h,04bh,066h,002h,03ch	; 6d2d  ..O.iU.kOLXEKf.<
	defb 0ffh	; 6d3d

; ----------------------------------------------------------------------
; DATOS mensaje_21_6D3E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0x6d3e..0x6d59  (27 bytes)
DATA_mensaje_21_6D3E:
	defb 0fbh,03bh,04eh,06dh,054h,049h,053h,000h,04bh,052h,068h,000h,059h,003h,040h,041h	; 6d3e  ..NmTIS.KRh.Y.@A
	defb 0feh,04bh,003h,0a3h,054h,041h,06bh,065h,001h,03ch,0ffh	; 6d4e  .K..TAke.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6D59: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0x6d59..0x6d7b  (34 bytes)
DATA_mensaje_21_6D59:
	defb 0fbh,03bh,0c9h,06ch,000h,04ch,068h,058h,045h,000h,046h,061h,068h,058h,059h,0feh	; 6d59  ...l.LhXE.FahXY.
	defb 0f7h,0fch,065h,03ch,0feh,0fch,03bh,0c9h,06ch,000h,04bh,065h,042h,045h,054h,040h	; 6d69  ..e<....l.KeBET@
	defb 03ch,0ffh	; 6d79

; ----------------------------------------------------------------------
; DATOS mensaje_21_6D7B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (20
;   bytes)
;   0x6d7b..0x6d8f  (20 bytes)
DATA_mensaje_21_6D7B:
	defb 0fbh,03bh,04eh,06dh,054h,049h,053h,065h,067h,000h,041h,04eh,046h,003h,05eh,04bh	; 6d7b  ..NmTISeg.ANF.^K
	defb 0a5h,042h,03ch,0ffh	; 6d8b

; ----------------------------------------------------------------------
; DATOS mensaje_21_6D8F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x6d8f..0x6da6  (23 bytes)
DATA_mensaje_21_6D8F:
	defb 0fbh,03bh,0c9h,045h,0a6h,052h,000h,0c9h,002h,03ch,0feh,0fch,03bh,0c9h,054h,06dh	; 6d8f  ...E.R...<....Tm
	defb 04fh,003h,06ah,042h,002h,03ch,0ffh	; 6d9f

; ----------------------------------------------------------------------
; DATOS mensajes_fijos_4: 3 palabras: los mensajes de 0xE889 = 4
;   (p00:4E83-4E95); lo leen p00:4E76 (6 bytes)
;   0x6da6..0x6dac  (6 bytes)
DATA_mensajes_fijos_4:
	defb 01ch,074h	; 6da6
	defb 0a9h,074h	; 6da8
	defb 008h,074h	; 6daa

; ----------------------------------------------------------------------
; DATOS mensajes_fijos_2: 32 palabras: los mensajes de 0xE889 = 2
;   (p00:4E83-4E95); lo leen p00:4E76 (64 bytes)
;   0x6dac..0x6dec  (64 bytes)
DATA_mensajes_fijos_2:
	defb 0ech,06dh	; 6dac
	defb 0ech,06dh	; 6dae
	defb 0ech,06dh	; 6db0
	defb 0ech,06dh	; 6db2
	defb 0ech,06dh	; 6db4
	defb 00dh,06eh	; 6db6
	defb 02dh,06eh	; 6db8
	defb 04ch,06eh	; 6dba
	defb 06eh,06eh	; 6dbc
	defb 081h,06eh	; 6dbe
	defb 0a2h,06eh	; 6dc0
	defb 0bfh,06eh	; 6dc2
	defb 0d5h,06eh	; 6dc4
	defb 0eah,06eh	; 6dc6
	defb 026h,06fh	; 6dc8
	defb 03ah,06fh	; 6dca
	defb 04dh,06fh	; 6dcc
	defb 060h,06fh	; 6dce
	defb 075h,06fh	; 6dd0
	defb 089h,06fh	; 6dd2
	defb 09eh,06fh	; 6dd4
	defb 0b8h,06fh	; 6dd6
	defb 0d8h,06fh	; 6dd8
	defb 0edh,06fh	; 6dda
	defb 0feh,06fh	; 6ddc
	defb 00fh,070h	; 6dde
	defb 026h,070h	; 6de0
	defb 033h,070h	; 6de2
	defb 048h,070h	; 6de4
	defb 058h,070h	; 6de6
	defb 06bh,070h	; 6de8
	defb 079h,070h	; 6dea

; ----------------------------------------------------------------------
; DATOS mensaje_21_6DEC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0x6dec..0x6e0d  (33 bytes)
DATA_mensaje_21_6DEC:
	defb 0f8h,03bh,0c6h,058h,0bbh,055h,000h,0c9h,045h,000h,051h,041h,052h,041h,068h,045h	; 6dec  ...X.U..E.QARAhE
	defb 041h,002h,03ch,0fch,03bh,089h,084h,077h,07eh,000h,051h,041h,052h,068h,065h,03ch	; 6dfc  A.<....w~.QARhe<
	defb 0ffh	; 6e0c

; ----------------------------------------------------------------------
; DATOS mensaje_21_6E0D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x6e0d..0x6e2d  (32 bytes)
DATA_mensaje_21_6E0D:
	defb 0f8h,03bh,04bh,051h,069h,041h,04fh,003h,054h,001h,000h,0bah,058h,0bbh,06ch,0feh	; 6e0d  ..KQiAO.T...X.l.
	defb 04eh,06dh,054h,055h,000h,058h,04eh,003h,046h,049h,060h,054h,065h,001h,03ch,0ffh	; 6e1d  NmTU.XN.FI`Te.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6E2D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (31
;   bytes)
;   0x6e2d..0x6e4c  (31 bytes)
DATA_mensaje_21_6E2D:
	defb 0f8h,03bh,08bh,003h,080h,0adh,001h,03ch,0feh,0fch,03bh,0c9h,06ch,000h,045h,06dh	; 6e2d  .......<....l.Em
	defb 045h,003h,043h,052h,06dh,04fh,003h,000h,079h,071h,081h,059h,001h,03ch,0ffh	; 6e3d  E.CRmO..yq.Y.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6E4C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0x6e4c..0x6e6e  (34 bytes)
DATA_mensaje_21_6E4C:
	defb 0f8h,03bh,04eh,06dh,054h,055h,000h,0b8h,051h,061h,052h,0feh,07ah,071h,08fh,09dh	; 6e4c  ..NmTU..QaR.zq..
	defb 07bh,003h,0adh,081h,052h,003h,062h,000h,045h,048h,068h,051h,062h,067h,045h,002h	; 6e5c  {...R.b.EHhQbgE.
	defb 03ch,0ffh	; 6e6c

; ----------------------------------------------------------------------
; DATOS mensaje_21_6E6E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x6e6e..0x6e81  (19 bytes)
DATA_mensaje_21_6E6E:
	defb 0f8h,03bh,047h,04ch,047h,003h,0a6h,04fh,041h,054h,006h,063h,061h,052h,047h,069h	; 6e6e  ..GLG..OAT.caRGi
	defb 065h,03ch,0ffh	; 6e7e

; ----------------------------------------------------------------------
; DATOS mensaje_21_6E81: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0x6e81..0x6ea2  (33 bytes)
DATA_mensaje_21_6E81:
	defb 0f8h,03bh,059h,003h,069h,04fh,05fh,04fh,041h,04fh,003h,054h,006h,04bh,003h,051h	; 6e81  ..Y.iO_OAO.T.K.Q
	defb 059h,000h,0c6h,058h,0b2h,059h,012h,053h,042h,04bh,06dh,054h,06dh,04fh,003h,03ch	; 6e91  Y..X.Y.SBKmTmO.<
	defb 0ffh	; 6ea1

; ----------------------------------------------------------------------
; DATOS mensaje_21_6EA2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x6ea2..0x6ebf  (29 bytes)
DATA_mensaje_21_6EA2:
	defb 0f8h,03bh,04eh,069h,041h,04bh,003h,0a5h,042h,000h,04ah,06bh,066h,069h,068h,053h	; 6ea2  ..NiAK..B.JkfihS
	defb 0feh,077h,07dh,055h,000h,054h,067h,04eh,042h,04fh,003h,03ch,0ffh	; 6eb2  .w}U.TgNBO.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6EBF: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x6ebf..0x6ed5  (22 bytes)
DATA_mensaje_21_6EBF:
	defb 0f8h,03bh,045h,06bh,0a6h,04fh,000h,07bh,0adh,08fh,045h,003h,000h,040h,068h,06dh	; 6ebf  ..Ek.O.{..E..@hm
	defb 04fh,003h,054h,040h,03ch,0ffh	; 6ecf

; ----------------------------------------------------------------------
; DATOS mensaje_21_6ED5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x6ed5..0x6eea  (21 bytes)
DATA_mensaje_21_6ED5:
	defb 0f8h,03bh,0b1h,066h,069h,068h,065h,042h,054h,062h,058h,059h,0feh,0e4h,0a6h,052h	; 6ed5  ...fiheBTbXY...R
	defb 054h,041h,065h,03ch,0ffh	; 6ee5

; ----------------------------------------------------------------------
; DATOS mensaje_21_6EEA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (60
;   bytes)
;   0x6eea..0x6f26  (60 bytes)
DATA_mensaje_21_6EEA:
	defb 0f8h,03bh,042h,06bh,01dh,0a6h,001h,000h,074h,071h,089h,076h,003h,04fh,003h,01dh	; 6eea  ..Bk....tq.v.O..
	defb 0a6h,001h,001h,03ch,0feh,0fch,03bh,053h,003h,049h,055h,002h,000h,074h,099h,000h	; 6efa  ...<...S.IU..t..
	defb 059h,066h,05ch,004h,049h,054h,06dh,04fh,003h,03ch,0feh,0fbh,03bh,04eh,069h,059h	; 6f0a  Yf\.ITmO.<...NiY
	defb 000h,074h,089h,076h,003h,000h,052h,003h,04bh,0a5h,03ch,0ffh	; 6f1a  .t.v..R.K.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6F26: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (20
;   bytes)
;   0x6f26..0x6f3a  (20 bytes)
DATA_mensaje_21_6F26:
	defb 0f8h,03bh,0c9h,052h,003h,062h,000h,0b1h,067h,04fh,045h,003h,068h,06dh,04fh,003h	; 6f26  ...R.b..gOE.hmO.
	defb 054h,040h,03ch,0ffh	; 6f36

; ----------------------------------------------------------------------
; DATOS mensaje_21_6F3A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x6f3a..0x6f4d  (19 bytes)
DATA_mensaje_21_6F3A:
	defb 0f8h,03bh,045h,057h,0b5h,058h,062h,058h,059h,000h,0e4h,0a6h,052h,041h,054h,041h	; 6f3a  ..EW.XbXY...RATA
	defb 065h,03ch,0ffh	; 6f4a

; ----------------------------------------------------------------------
; DATOS mensaje_21_6F4D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x6f4d..0x6f60  (19 bytes)
DATA_mensaje_21_6F4D:
	defb 0f8h,03bh,04ch,047h,003h,000h,0bah,06ch,000h,049h,046h,0b0h,042h,06dh,04fh,003h	; 6f4d  ..LG...l.IF.BmO.
	defb 054h,03ch,0ffh	; 6f5d

; ----------------------------------------------------------------------
; DATOS mensaje_21_6F60: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x6f60..0x6f75  (21 bytes)
DATA_mensaje_21_6F60:
	defb 0f8h,03bh,0b0h,043h,068h,065h,042h,054h,000h,053h,003h,042h,047h,003h,059h,000h	; 6f60  ...CheBT.S.BG.Y.
	defb 054h,041h,065h,03ch,0ffh	; 6f70

; ----------------------------------------------------------------------
; DATOS mensaje_21_6F75: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (20
;   bytes)
;   0x6f75..0x6f89  (20 bytes)
DATA_mensaje_21_6F75:
	defb 0f8h,03bh,0c6h,059h,000h,0c9h,058h,000h,053h,067h,043h,062h,054h,041h,000h,0bah	; 6f75  ...Y..X.SgCbTA..
	defb 0ddh,04ah,03ch,0ffh	; 6f85

; ----------------------------------------------------------------------
; DATOS mensaje_21_6F89: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x6f89..0x6f9e  (21 bytes)
DATA_mensaje_21_6F89:
	defb 0f8h,03bh,0c6h,06ch,0b0h,0a6h,052h,000h,0c9h,06ch,04ch,068h,051h,062h,067h,04fh	; 6f89  ...l..R..lLhQbgO
	defb 003h,041h,002h,03ch,0ffh	; 6f99

; ----------------------------------------------------------------------
; DATOS mensaje_21_6F9E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (26
;   bytes)
;   0x6f9e..0x6fb8  (26 bytes)
DATA_mensaje_21_6F9E:
	defb 0f8h,03bh,0c9h,06ch,000h,0b8h,04dh,052h,047h,069h,068h,058h,045h,054h,002h,0feh	; 6f9e  ...l..MRGihXET..
	defb 04fh,058h,04bh,05fh,04fh,003h,054h,040h,03ch,0ffh	; 6fae  OXK_O.T@<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6FB8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x6fb8..0x6fd8  (32 bytes)
DATA_mensaje_21_6FB8:
	defb 0f8h,03bh,076h,08fh,058h,0bbh,000h,0b8h,04dh,052h,062h,066h,0a6h,052h,062h,0feh	; 6fb8  ..v.X...MRbf.Rb.
	defb 04bh,045h,04fh,000h,054h,041h,06dh,04fh,003h,048h,053h,003h,00ah,00ah,03ch,0ffh	; 6fc8  KEO.TAmO.HS...<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_6FD8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x6fd8..0x6fed  (21 bytes)
DATA_mensaje_21_6FD8:
	defb 0f8h,03bh,0b8h,04dh,068h,065h,042h,054h,062h,058h,000h,0e4h,0a6h,052h,068h,058h	; 6fd8  ...MheBTbX...RhX
	defb 045h,041h,002h,03ch,0ffh	; 6fe8

; ----------------------------------------------------------------------
; DATOS mensaje_21_6FED: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x6fed..0x6ffe  (17 bytes)
DATA_mensaje_21_6FED:
	defb 0f8h,03bh,04bh,003h,0a3h,040h,000h,0b8h,04dh,052h,062h,066h,044h,042h,045h,03ch	; 6fed  ..K..@..MRbfDBE<
	defb 0ffh	; 6ffd

; ----------------------------------------------------------------------
; DATOS mensaje_21_6FFE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x6ffe..0x700f  (17 bytes)
DATA_mensaje_21_6FFE:
	defb 0f8h,03bh,062h,066h,043h,068h,062h,058h,059h,000h,062h,066h,041h,05eh,04ch,03ch	; 6ffe  ..bfChbXY.bfA^L<
	defb 0ffh	; 700e

; ----------------------------------------------------------------------
; DATOS mensaje_21_700F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x700f..0x7026  (23 bytes)
DATA_mensaje_21_700F:
	defb 0f8h,03bh,09bh,07fh,07ch,0a6h,051h,042h,058h,059h,000h,074h,088h,099h,058h,049h	; 700f  ....|.QBXY.t..XI
	defb 053h,04fh,003h,05ch,003h,03ch,0ffh	; 701f

; ----------------------------------------------------------------------
; DATOS mensaje_21_7026: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x7026..0x7033  (13 bytes)
DATA_mensaje_21_7026:
	defb 0f8h,03bh,0c9h,045h,000h,047h,069h,068h,058h,045h,002h,03ch,0ffh	; 7026  ...E.GihXE.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7033: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x7033..0x7048  (21 bytes)
DATA_mensaje_21_7033:
	defb 0f8h,03bh,06bh,04fh,04ch,065h,042h,054h,062h,058h,000h,0e4h,0a6h,052h,041h,068h	; 7033  ..kOLeBTbX...RAh
	defb 058h,045h,002h,03ch,0ffh	; 7043

; ----------------------------------------------------------------------
; DATOS mensaje_21_7048: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x7048..0x7058  (16 bytes)
DATA_mensaje_21_7048:
	defb 0f8h,03bh,0c9h,045h,0a6h,052h,000h,059h,0a6h,046h,067h,04bh,06ah,065h,03ch,0ffh	; 7048  ...E.R.Y.FgKje<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7058: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x7058..0x706b  (19 bytes)
DATA_mensaje_21_7058:
	defb 0f8h,03bh,0c9h,06ch,000h,044h,0a6h,059h,004h,04bh,003h,061h,068h,06dh,04fh,003h	; 7058  ...l.D.Y.K.ahmO.
	defb 002h,03ch,0ffh	; 7068

; ----------------------------------------------------------------------
; DATOS mensaje_21_706B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x706b..0x7079  (14 bytes)
DATA_mensaje_21_706B:
	defb 0f8h,03bh,05ch,06dh,054h,049h,053h,000h,04ch,068h,054h,065h,03ch,0ffh	; 706b  ..\mTIS.LhTe<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7079: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (7
;   bytes)
;   0x7079..0x7080  (7 bytes)
DATA_mensaje_21_7079:
	defb 0f8h,03bh,0c9h,06ch,002h,03ch,0ffh	; 7079

; ----------------------------------------------------------------------
; DATOS mensajes_fijos_3: 32 palabras: los mensajes de 0xE889 = 3
;   (p00:4E83-4E95); lo leen p00:4E76 (64 bytes)
;   0x7080..0x70c0  (64 bytes)
DATA_mensajes_fijos_3:
	defb 0c0h,070h	; 7080
	defb 0c0h,070h	; 7082
	defb 0c0h,070h	; 7084
	defb 0c0h,070h	; 7086
	defb 0c0h,070h	; 7088
	defb 0dch,070h	; 708a
	defb 002h,071h	; 708c
	defb 019h,071h	; 708e
	defb 043h,071h	; 7090
	defb 060h,071h	; 7092
	defb 081h,071h	; 7094
	defb 092h,071h	; 7096
	defb 0aah,071h	; 7098
	defb 0c0h,071h	; 709a
	defb 0dah,071h	; 709c
	defb 0fdh,071h	; 709e
	defb 012h,072h	; 70a0
	defb 03fh,072h	; 70a2
	defb 050h,072h	; 70a4
	defb 061h,072h	; 70a6
	defb 076h,072h	; 70a8
	defb 086h,072h	; 70aa
	defb 094h,072h	; 70ac
	defb 0a2h,072h	; 70ae
	defb 0b5h,072h	; 70b0
	defb 0cah,072h	; 70b2
	defb 0deh,072h	; 70b4
	defb 0eeh,072h	; 70b6
	defb 0f8h,072h	; 70b8
	defb 00ah,073h	; 70ba
	defb 013h,073h	; 70bc
	defb 022h,073h	; 70be

; ----------------------------------------------------------------------
; DATOS mensaje_21_70C0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0x70c0..0x70dc  (28 bytes)
DATA_mensaje_21_70C0:
	defb 0f8h,03bh,04eh,06dh,054h,055h,000h,07bh,003h,09ah,07bh,003h,09ah,0feh,0b8h,054h	; 70c0  ..NmTU.{..{....T
	defb 041h,052h,003h,050h,0a5h,042h,04fh,003h,041h,001h,03ch,0ffh	; 70d0  AR.P.BO.A.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_70DC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (38
;   bytes)
;   0x70dc..0x7102  (38 bytes)
DATA_mensaje_21_70DC:
	defb 0f8h,03bh,0c6h,058h,0bbh,055h,000h,0c9h,045h,000h,051h,041h,052h,068h,002h,03ch	; 70dc  ...X.U..E.QARh.<
	defb 0feh,0fch,03bh,072h,01dh,090h,006h,074h,099h,049h,003h,058h,05fh,058h,000h,08eh	; 70ec  ...r...t.I.X_X..
	defb 07ch,077h,04fh,003h,03ch,0ffh	; 70fc

; ----------------------------------------------------------------------
; DATOS mensaje_21_7102: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x7102..0x7119  (23 bytes)
DATA_mensaje_21_7102:
	defb 0f8h,03bh,04eh,06dh,054h,055h,000h,0b8h,051h,061h,066h,069h,068h,053h,0feh,082h	; 7102  ..NmTU..QafihS..
	defb 099h,050h,0a3h,042h,06bh,03ch,0ffh	; 7112

; ----------------------------------------------------------------------
; DATOS mensaje_21_7119: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (42
;   bytes)
;   0x7119..0x7143  (42 bytes)
DATA_mensaje_21_7119:
	defb 0f8h,03bh,063h,0a6h,059h,004h,067h,000h,0c6h,0a6h,052h,000h,04fh,003h,06dh,04dh	; 7119  ..c.Y.g...R.O.mM
	defb 041h,058h,0b5h,06ch,0feh,05ah,046h,051h,048h,068h,000h,08fh,097h,0aeh,077h,045h	; 7129  AX.l.ZFQHh....wE
	defb 003h,000h,040h,068h,06dh,04fh,003h,06bh,03ch,0ffh	; 7139  ..@hmO.k<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7143: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x7143..0x7160  (29 bytes)
DATA_mensaje_21_7143:
	defb 0f8h,03bh,0b7h,063h,04ch,047h,000h,0bah,058h,0b2h,055h,0feh,04ah,06bh,066h,054h	; 7143  ...cLG..X.U.JkfT
	defb 041h,052h,003h,050h,0a5h,042h,04fh,003h,041h,001h,001h,03ch,0ffh	; 7153  AR.P.BO.A..<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7160: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0x7160..0x7181  (33 bytes)
DATA_mensaje_21_7160:
	defb 0f8h,03bh,05ch,06dh,054h,053h,049h,000h,04ah,06bh,066h,054h,041h,052h,003h,065h	; 7160  ..\mTSI.JkfTAR.e
	defb 006h,0feh,045h,06dh,04bh,003h,050h,0a3h,042h,04bh,003h,0a3h,054h,041h,058h,03ch	; 7170  ..EmK.P.BK..TAX<
	defb 0ffh	; 7180

; ----------------------------------------------------------------------
; DATOS mensaje_21_7181: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x7181..0x7192  (17 bytes)
DATA_mensaje_21_7181:
	defb 0f8h,03bh,049h,06dh,053h,003h,000h,05eh,04fh,000h,064h,0a6h,047h,067h,087h,03ch	; 7181  ..ImS..^O.d.Gg.<
	defb 0ffh	; 7191

; ----------------------------------------------------------------------
; DATOS mensaje_21_7192: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0x7192..0x71aa  (24 bytes)
DATA_mensaje_21_7192:
	defb 0f8h,03bh,04eh,069h,059h,000h,041h,041h,048h,053h,003h,000h,074h,075h,087h,0feh	; 7192  ..NiY.AAHS..tu..
	defb 041h,04fh,04fh,003h,047h,06bh,03ch,0ffh	; 71a2  AOO.Gk<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_71AA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x71aa..0x71c0  (22 bytes)
DATA_mensaje_21_71AA:
	defb 0f8h,03bh,0bah,058h,062h,058h,000h,045h,0a6h,052h,055h,000h,053h,066h,054h,041h	; 71aa  ...XbX.E.RU.SfTA
	defb 052h,003h,065h,001h,03ch,0ffh	; 71ba

; ----------------------------------------------------------------------
; DATOS mensaje_21_71C0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (26
;   bytes)
;   0x71c0..0x71da  (26 bytes)
DATA_mensaje_21_71C0:
	defb 0f8h,03bh,0c6h,058h,000h,05bh,047h,06ch,0b1h,068h,051h,062h,067h,002h,0feh,0bah	; 71c0  ...X.[Gl.hQbg...
	defb 06ch,000h,065h,05bh,003h,06bh,065h,001h,03ch,0ffh	; 71d0  l.e[.ke.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_71DA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (35
;   bytes)
;   0x71da..0x71fd  (35 bytes)
DATA_mensaje_21_71DA:
	defb 0f8h,03bh,0c9h,052h,003h,062h,000h,045h,06dh,052h,003h,062h,000h,0b1h,069h,059h	; 71da  ...R.b.EmR.b..iY
	defb 003h,041h,041h,0feh,0a6h,052h,062h,06dh,04bh,003h,0a3h,000h,054h,041h,058h,065h	; 71ea  .AA..RbmK...TAXe
	defb 001h,03ch,0ffh	; 71fa

; ----------------------------------------------------------------------
; DATOS mensaje_21_71FD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x71fd..0x7212  (21 bytes)
DATA_mensaje_21_71FD:
	defb 0f8h,03bh,0c6h,06ch,0b1h,068h,002h,000h,0bah,04ah,066h,041h,065h,000h,04eh,069h	; 71fd  ...l.h...JfAe.Ni
	defb 04bh,003h,0a3h,03ch,0ffh	; 720d

; ----------------------------------------------------------------------
; DATOS mensaje_21_7212: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (45
;   bytes)
;   0x7212..0x723f  (45 bytes)
DATA_mensaje_21_7212:
	defb 0f8h,03bh,0c6h,06ch,0b0h,0a6h,052h,000h,0c9h,06ch,04ch,068h,0b7h,002h,03ch,0feh	; 7212  ...l..R..lLh..<.
	defb 0fch,03bh,074h,075h,087h,062h,042h,048h,03ch,0feh,0fbh,03bh,04eh,069h,059h,000h	; 7222  ..tu.bBH<...NiY.
	defb 050h,0a5h,0a6h,053h,000h,093h,089h,003h,071h,06bh,065h,03ch,0ffh	; 7232  P..S....qke<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_723F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x723f..0x7250  (17 bytes)
DATA_mensaje_21_723F:
	defb 0f8h,03bh,05ch,06dh,054h,062h,058h,052h,003h,062h,000h,0b0h,042h,058h,002h,03ch	; 723f  ..\mTbXR.b..BX.<
	defb 0ffh	; 724f

; ----------------------------------------------------------------------
; DATOS mensaje_21_7250: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x7250..0x7261  (17 bytes)
DATA_mensaje_21_7250:
	defb 0f8h,03bh,0d0h,058h,0d6h,06ch,000h,049h,046h,0b0h,042h,051h,062h,067h,002h,03ch	; 7250  ...X.l.IF.BQbg.<
	defb 0ffh	; 7260

; ----------------------------------------------------------------------
; DATOS mensaje_21_7261: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x7261..0x7276  (21 bytes)
DATA_mensaje_21_7261:
	defb 0f8h,03bh,0c6h,059h,000h,0b0h,042h,065h,042h,054h,062h,058h,000h,0e4h,0a6h,052h	; 7261  ...Y..BeBTbX...R
	defb 054h,041h,06bh,03ch,0ffh	; 7271

; ----------------------------------------------------------------------
; DATOS mensaje_21_7276: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x7276..0x7286  (16 bytes)
DATA_mensaje_21_7276:
	defb 0f8h,03bh,040h,054h,04fh,000h,09ah,07bh,0adh,081h,076h,0aeh,072h,002h,03ch,0ffh	; 7276  ..@TO..{..v.r.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7286: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x7286..0x7294  (14 bytes)
DATA_mensaje_21_7286:
	defb 0f8h,03bh,0c9h,002h,000h,0b8h,04dh,052h,0b8h,04dh,052h,001h,03ch,0ffh	; 7286  ......MR.MR.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7294: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x7294..0x72a2  (14 bytes)
DATA_mensaje_21_7294:
	defb 0f8h,03bh,0b8h,04dh,04fh,045h,003h,067h,063h,04ah,06dh,087h,03ch,0ffh	; 7294  ...MOE.gcJm.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_72A2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x72a2..0x72b5  (19 bytes)
DATA_mensaje_21_72A2:
	defb 0f8h,03bh,0c9h,06ch,000h,0b8h,04dh,052h,062h,066h,043h,068h,058h,045h,04bh,066h	; 72a2  ...l..MRbfChXEKf
	defb 002h,03ch,0ffh	; 72b2

; ----------------------------------------------------------------------
; DATOS mensaje_21_72B5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x72b5..0x72ca  (21 bytes)
DATA_mensaje_21_72B5:
	defb 0f8h,03bh,0c9h,045h,000h,062h,066h,043h,068h,058h,002h,000h,050h,0a5h,01dh,04fh	; 72b5  ...E.bfChX..P..O
	defb 003h,041h,001h,03ch,0ffh	; 72c5

; ----------------------------------------------------------------------
; DATOS mensaje_21_72CA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (20
;   bytes)
;   0x72ca..0x72de  (20 bytes)
DATA_mensaje_21_72CA:
	defb 0f8h,03bh,06bh,04fh,04ch,065h,042h,054h,062h,058h,000h,0e4h,0a6h,052h,041h,068h	; 72ca  ..kOLeBTbX...RAh
	defb 058h,002h,03ch,0ffh	; 72da

; ----------------------------------------------------------------------
; DATOS mensaje_21_72DE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x72de..0x72ee  (16 bytes)
DATA_mensaje_21_72DE:
	defb 0f8h,03bh,0c9h,06ch,000h,06bh,04fh,04bh,052h,047h,069h,068h,058h,002h,03ch,0ffh	; 72de  ...l.kOKRGihX.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_72EE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (10
;   bytes)
;   0x72ee..0x72f8  (10 bytes)
DATA_mensaje_21_72EE:
	defb 0f8h,03bh,041h,04fh,04fh,003h,047h,06bh,03ch,0ffh	; 72ee  ..AOO.Gk<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_72F8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x72f8..0x730a  (18 bytes)
DATA_mensaje_21_72F8:
	defb 0f8h,03bh,05ch,06dh,054h,049h,053h,000h,04bh,054h,041h,052h,003h,065h,001h,001h	; 72f8  ..\mTIS.KTAR.e..
	defb 03ch,0ffh	; 7308

; ----------------------------------------------------------------------
; DATOS mensaje_21_730A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (9
;   bytes)
;   0x730a..0x7313  (9 bytes)
DATA_mensaje_21_730A:
	defb 0f8h,03bh,0c9h,045h,04bh,066h,002h,03ch,0ffh	; 730a  ...EKf.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7313: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x7313..0x7322  (15 bytes)
DATA_mensaje_21_7313:
	defb 0f8h,03bh,0c9h,045h,0a6h,052h,000h,0c9h,054h,058h,065h,001h,002h,03ch,0ffh	; 7313  ...E.R..TXe..<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7322: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x7322..0x7331  (15 bytes)
DATA_mensaje_21_7322:
	defb 0f8h,03bh,0c9h,06ch,000h,04ch,068h,051h,062h,067h,054h,058h,002h,03ch,0ffh	; 7322  ...l.LhQbgTX.<.

; ----------------------------------------------------------------------
; DATOS resto_7331: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (20 bytes)
;   0x7331..0x7345  (20 bytes)
DATA_resto_7331:
	defb 033h,073h,0fbh,03bh,0c6h,059h,04fh,003h,069h,005h,000h,049h,049h,059h,053h,003h	; 7331  3s...YO.i..IIYS.
	defb 049h,001h,03ch,0ffh	; 7341

; ----------------------------------------------------------------------
; DATOS mensaje_21_7345: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x7345..0x735c  (23 bytes)
DATA_mensaje_21_7345:
	defb 0f8h,03bh,08ch,003h,082h,0a8h,06ch,04ch,047h,0a6h,052h,047h,069h,052h,000h,040h	; 7345  ......lLG.RGiR.@
	defb 067h,045h,003h,053h,042h,03ch,0ffh	; 7355

; ----------------------------------------------------------------------
; DATOS mensaje_21_735C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x735c..0x7379  (29 bytes)
DATA_mensaje_21_735C:
	defb 0f8h,03bh,0c1h,0c5h,06ch,000h,04fh,044h,04bh,04fh,000h,064h,042h,04bh,0a3h,001h	; 735c  ....l.ODKO.dBK..
	defb 0feh,0f7h,0fch,000h,040h,067h,045h,003h,053h,042h,001h,03ch,0ffh	; 736c  ....@gE.SB.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7379: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (11
;   bytes)
;   0x7379..0x7384  (11 bytes)
DATA_mensaje_21_7379:
	defb 0fbh,03bh,0c9h,06ch,04ch,068h,051h,062h,067h,03ch,0ffh	; 7379  ...lLhQbg<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7384: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x7384..0x7393  (15 bytes)
DATA_mensaje_21_7384:
	defb 0fbh,03bh,05eh,04ch,003h,000h,065h,047h,0b8h,068h,049h,053h,057h,03ch,0ffh	; 7384  ..^L..eG.hISW<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7393: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x7393..0x73a0  (13 bytes)
DATA_mensaje_21_7393:
	defb 0fbh,03bh,049h,069h,059h,000h,0b1h,069h,054h,041h,06bh,03ch,0ffh	; 7393  ..IiY..iTAk<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_73A0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0x73a0..0x73ac  (12 bytes)
DATA_mensaje_21_73A0:
	defb 0f8h,03bh,04eh,069h,04fh,003h,048h,052h,003h,04ch,03ch,0ffh	; 73a0  ..NiO.HR.L<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_73AC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x73ac..0x73bc  (16 bytes)
DATA_mensaje_21_73AC:
	defb 0fbh,03bh,04fh,003h,069h,055h,000h,0cah,04bh,045h,048h,052h,068h,058h,03ch,0ffh	; 73ac  ..O.iU..KEHRhX<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_73BC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (40
;   bytes)
;   0x73bc..0x73e4  (40 bytes)
DATA_mensaje_21_73BC:
	defb 0fch,03bh,05eh,0a6h,047h,066h,052h,003h,000h,0c9h,062h,000h,0b8h,043h,054h,041h	; 73bc  ..^.GfR...b..CTA
	defb 063h,03ch,0feh,0fbh,03bh,09ah,020h,07eh,077h,059h,000h,04bh,061h,0a6h,052h,052h	; 73cc  c<.... ~wY.Ka.RR
	defb 000h,0b0h,043h,054h,041h,06bh,03ch,0ffh	; 73dc  ..CTAk<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_73E4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x73e4..0x73f5  (17 bytes)
DATA_mensaje_21_73E4:
	defb 0fbh,03bh,053h,003h,042h,063h,066h,000h,050h,045h,058h,000h,065h,042h,057h,03ch	; 73e4  ..S.Bcf.PEX.eBW<
	defb 0ffh	; 73f4

; ----------------------------------------------------------------------
; DATOS mensaje_21_73F5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x73f5..0x7408  (19 bytes)
DATA_mensaje_21_73F5:
	defb 0fbh,03bh,05eh,0a6h,047h,066h,052h,003h,000h,0c9h,062h,000h,0b8h,043h,054h,041h	; 73f5  ..^.GfR...b..CTA
	defb 06bh,03ch,0ffh	; 7405

; ----------------------------------------------------------------------
; DATOS mensaje_21_7408: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (20
;   bytes)
;   0x7408..0x741c  (20 bytes)
DATA_mensaje_21_7408:
	defb 0fbh,03bh,04eh,06dh,054h,062h,058h,000h,06bh,04fh,04bh,052h,062h,04fh,003h,061h	; 7408  ..NmTbX.kOKRbO.a
	defb 065h,001h,03ch,0ffh	; 7418

; ----------------------------------------------------------------------
; DATOS mensaje_21_741C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x741c..0x742f  (19 bytes)
DATA_mensaje_21_741C:
	defb 0fbh,03bh,04eh,06dh,054h,062h,058h,000h,0b0h,0a6h,052h,062h,04fh,003h,061h,065h	; 741c  ..NmTbX...RbO.ae
	defb 001h,03ch,0ffh	; 742c

; ----------------------------------------------------------------------
; DATOS mensaje_21_742F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (30
;   bytes)
;   0x742f..0x744d  (30 bytes)
DATA_mensaje_21_742F:
	defb 0fbh,03bh,045h,05ch,003h,045h,003h,0cdh,041h,04fh,06bh,001h,000h,060h,049h,042h	; 742f  ..E\.E..AOk..`IB
	defb 055h,0feh,05ch,063h,045h,003h,000h,040h,068h,06bh,065h,001h,03ch,0ffh	; 743f  U.\cE..@hke.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_744D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x744d..0x746a  (29 bytes)
DATA_mensaje_21_744D:
	defb 0fch,03bh,080h,0aah,07ch,083h,01dh,0afh,001h,000h,041h,052h,01dh,0a6h,001h,0feh	; 744d  ....|.....AR....
	defb 049h,06bh,069h,068h,000h,06bh,048h,000h,054h,041h,065h,03ch,0ffh	; 745d  Ikih.kH.TAe<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_746A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x746a..0x7478  (14 bytes)
DATA_mensaje_21_746A:
	defb 0fbh,03bh,0c9h,06ch,000h,0b1h,068h,0a6h,052h,041h,042h,058h,03ch,0ffh	; 746a  ...l..h.RABX<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7478: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x7478..0x7488  (16 bytes)
DATA_mensaje_21_7478:
	defb 0fbh,03bh,0c9h,06ch,000h,0ceh,05ch,003h,068h,0a6h,052h,041h,042h,058h,03ch,0ffh	; 7478  ...l..\.h.RABX<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7488: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x7488..0x749b  (19 bytes)
DATA_mensaje_21_7488:
	defb 0f8h,03bh,049h,003h,061h,06dh,057h,006h,062h,042h,0b8h,04dh,066h,069h,054h,041h	; 7488  ..I.amW.bB.MfiTA
	defb 065h,03ch,0ffh	; 7498

; ----------------------------------------------------------------------
; DATOS mensaje_21_749B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x749b..0x74a9  (14 bytes)
DATA_mensaje_21_749B:
	defb 0fbh,03bh,0c9h,06ch,000h,0b8h,068h,0a6h,052h,041h,042h,058h,03ch,0ffh	; 749b  ...l..h.RABX<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_74A9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x74a9..0x74bc  (19 bytes)
DATA_mensaje_21_74A9:
	defb 0fbh,03bh,04eh,06dh,054h,062h,058h,000h,0b8h,04dh,052h,062h,04fh,003h,061h,065h	; 74a9  ..NmTbX..MRbO.ae
	defb 001h,03ch,0ffh	; 74b9

; ----------------------------------------------------------------------
; DATOS mensaje_21_74BC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x74bc..0x74cb  (15 bytes)
DATA_mensaje_21_74BC:
	defb 0f8h,03bh,062h,042h,000h,045h,048h,052h,062h,066h,0a6h,04fh,065h,03ch,0ffh	; 74bc  ..bB.EHRbf.Oe<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_74CB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x74cb..0x74e0  (21 bytes)
DATA_mensaje_21_74CB:
	defb 0fbh,03bh,05eh,04fh,003h,000h,0cdh,045h,054h,041h,05dh,042h,045h,003h,000h,041h	; 74cb  ..^O...ETA]BE..A
	defb 041h,06bh,065h,03ch,0ffh	; 74db

; ----------------------------------------------------------------------
; DATOS mensaje_21_74E0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (48
;   bytes)
;   0x74e0..0x7510  (48 bytes)
DATA_mensaje_21_74E0:
	defb 0fch,03bh,065h,042h,04bh,001h,000h,074h,020h,08eh,09dh,058h,000h,05fh,04ch,003h	; 74e0  ..eBK..t ..X._L.
	defb 06ch,0feh,045h,048h,052h,040h,048h,003h,068h,006h,000h,05fh,04ch,003h,065h,001h	; 74f0  l.EHR@H.h.._L.e.
	defb 000h,049h,058h,0bah,06ch,0feh,046h,065h,061h,04fh,05eh,043h,001h,03ch,0fah,003h	; 7500  .IX.l.FeaO^C.<..

; ----------------------------------------------------------------------
; DATOS mensajes_21_7510: 17 palabras: los mensajes de la sala 98 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (34 bytes)
;   0x7510..0x7532  (34 bytes)
DATA_mensajes_21_7510:
	defb 032h,075h	; 7510
	defb 0c5h,075h	; 7512
	defb 04ch,076h	; 7514
	defb 067h,076h	; 7516
	defb 07bh,076h	; 7518
	defb 089h,076h	; 751a
	defb 009h,077h	; 751c
	defb 042h,077h	; 751e
	defb 078h,077h	; 7520
	defb 092h,077h	; 7522
	defb 0cch,078h	; 7524
	defb 0e2h,078h	; 7526
	defb 04dh,074h	; 7528
	defb 002h,079h	; 752a
	defb 02fh,074h	; 752c
	defb 09bh,074h	; 752e
	defb 078h,074h	; 7530

; ----------------------------------------------------------------------
; DATOS mensaje_21_7532: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (147
;   bytes)
;   0x7532..0x75c5  (147 bytes)
DATA_mensaje_21_7532:
	defb 0f8h,03bh,0c6h,045h,003h,000h,075h,08fh,074h,090h,012h,0c2h,052h,003h,040h,068h	; 7532  ...E..u.t...R.@h
	defb 006h,0feh,0f7h,0fch,053h,003h,058h,000h,0f7h,0fbh,053h,003h,058h,0feh,065h,047h	; 7542  ....S.X...S.X.eG
	defb 000h,049h,066h,069h,04fh,006h,0fdh,050h,05eh,04fh,052h,003h,059h,005h,079h,003h	; 7552  .IfiO..P^OR.Y.y.
	defb 077h,003h,053h,041h,042h,000h,0d4h,0c1h,0c5h,045h,003h,0feh,077h,003h,097h,020h	; 7562  w.SAB....E..w..
	defb 077h,0c5h,0c0h,06ch,000h,04bh,059h,041h,04bh,065h,042h,053h,0feh,04bh,052h,041h	; 7572  w..l.KYAKeBS.KRA
	defb 068h,005h,054h,053h,003h,053h,041h,042h,000h,042h,06bh,04ah,045h,003h,0feh,05ah	; 7582  h.TS.SAB.BkJE..Z
	defb 06ah,05eh,0a6h,052h,041h,068h,066h,04bh,041h,045h,003h,00ah,00ah,0fdh,04bh,0a5h	; 7592  j^.RAhfKAE....K.
	defb 04dh,06dh,000h,051h,047h,067h,0cah,001h,000h,04eh,058h,065h,042h,054h,0feh,0c1h	; 75a2  Mm.QGg...NXeBT..
	defb 0c5h,059h,000h,049h,058h,0c2h,055h,059h,000h,04eh,06dh,04ah,003h,041h,04bh,054h	; 75b2  .Y.IX.UY.NmJ.AKT
	defb 041h,03ch,0ffh	; 75c2

; ----------------------------------------------------------------------
; DATOS mensaje_21_75C5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (135
;   bytes)
;   0x75c5..0x764c  (135 bytes)
DATA_mensaje_21_75C5:
	defb 0fch,03bh,079h,003h,077h,003h,059h,000h,04eh,06dh,04ah,003h,041h,04bh,054h,041h	; 75c5  ..y.w.Y.NmJ.AKTA
	defb 001h,002h,0feh,04eh,06dh,054h,000h,089h,003h,075h,054h,002h,03ch,0fdh,0f8h,03bh	; 75d5  ...NmT...uT.<...
	defb 0bah,0ddh,053h,041h,042h,062h,058h,059h,000h,0c2h,058h,0deh,045h,003h,0feh,044h	; 75e5  ..SABbXY..X.E..D
	defb 062h,04bh,06ah,047h,000h,054h,047h,054h,0a6h,052h,047h,068h,053h,0feh,04eh,058h	; 75f5  bKjG.TGT.RGhS.NX
	defb 065h,042h,054h,000h,0bch,058h,000h,04eh,06dh,04ah,003h,041h,06ch,0feh,051h,047h	; 7605  eBT..X.NmJ.Al.QG
	defb 067h,04fh,003h,04ch,058h,04fh,003h,006h,000h,044h,06ah,045h,054h,000h,049h,053h	; 7615  gO.LXO...DjET.IS
	defb 065h,03ch,0fdh,0fch,03bh,04bh,003h,0a3h,040h,000h,074h,099h,059h,000h,04bh,003h	; 7625  e<...K..@.t.Y.K.
	defb 05bh,003h,06dh,058h,000h,0c2h,0c3h,055h,0feh,062h,053h,003h,069h,054h,041h,0a6h	; 7635  [.mX...U.bS.iTA.
	defb 052h,049h,053h,045h,002h,03ch,0ffh	; 7645

; ----------------------------------------------------------------------
; DATOS mensaje_21_764C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0x764c..0x7667  (27 bytes)
DATA_mensaje_21_764C:
	defb 0f8h,03bh,04fh,05ah,003h,058h,000h,051h,045h,069h,06ch,000h,041h,063h,04bh,052h	; 764c  ..OZ.X.QEil.AcKR
	defb 0feh,0dch,045h,069h,068h,045h,003h,065h,041h,03ch,0ffh	; 765c  ..EihE.eA<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7667: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (20
;   bytes)
;   0x7667..0x767b  (20 bytes)
DATA_mensaje_21_7667:
	defb 0fbh,03bh,040h,04dh,06ch,000h,05ah,003h,0a6h,04bh,0a5h,067h,000h,045h,041h,052h	; 7667  ..@Ml.Z..K.g.EAR
	defb 068h,06bh,03ch,0ffh	; 7677

; ----------------------------------------------------------------------
; DATOS mensaje_21_767B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x767b..0x7689  (14 bytes)
DATA_mensaje_21_767B:
	defb 0fbh,03bh,041h,046h,046h,003h,069h,04bh,052h,068h,06bh,057h,03ch,0ffh	; 767b  ..AFF.iKRhkW<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7689: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (128
;   bytes)
;   0x7689..0x7709  (128 bytes)
DATA_mensaje_21_7689:
	defb 0fbh,03bh,077h,09dh,077h,09dh,00ah,00ah,049h,069h,059h,001h,001h,0feh,053h,054h	; 7689  ..w.w...IiY...ST
	defb 067h,058h,000h,05ch,063h,052h,003h,000h,0b8h,051h,048h,04fh,000h,05bh,047h,058h	; 7699  gX.\cR...QHO.[GX
	defb 0feh,055h,044h,041h,045h,003h,000h,04ch,068h,06bh,001h,03ch,0fdh,0f8h,03bh,0c9h	; 76a9  .UDAE..Lhk.<....
	defb 058h,000h,049h,053h,045h,054h,002h,000h,0f7h,0fbh,053h,003h,058h,059h,0feh,059h	; 76b9  X.ISET....S.XY.Y
	defb 054h,045h,003h,000h,06bh,068h,041h,065h,042h,04fh,003h,03ch,0feh,0fch,03bh,05eh	; 76c9  TE..khAeBO.<...^
	defb 04ah,045h,001h,002h,03ch,0feh,0f8h,03bh,053h,003h,042h,054h,04ah,069h,04fh,002h	; 76d9  JE..<...S.BTJiO.
	defb 03ch,0fdh,0fch,03bh,0f7h,0fbh,044h,0b6h,000h,045h,05bh,06dh,04bh,0a5h,042h,045h	; 76e9  <.....D..E[mK.BE
	defb 002h,03ch,0feh,0fbh,03bh,040h,054h,04fh,000h,0dfh,0e0h,054h,0bah,057h,03ch,0ffh	; 76f9  .<...@TO...T.W<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7709: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (57
;   bytes)
;   0x7709..0x7742  (57 bytes)
DATA_mensaje_21_7709:
	defb 0fch,03bh,053h,054h,067h,058h,000h,05ch,063h,055h,000h,05bh,047h,045h,003h,0feh	; 7709  ..STgX.\cU.[GE..
	defb 044h,050h,052h,041h,04fh,06dh,04fh,003h,048h,053h,003h,000h,040h,069h,059h,0feh	; 7719  DPRAOmO.HS..@iY.
	defb 04fh,003h,069h,058h,045h,054h,002h,03ch,0feh,0f8h,03bh,04ah,040h,000h,06bh,045h	; 7729  O.iXET.<...J@.kE
	defb 067h,045h,057h,05eh,04ch,054h,040h,03ch,0ffh	; 7739  gEW^LT@<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7742: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (54
;   bytes)
;   0x7742..0x7778  (54 bytes)
DATA_mensaje_21_7742:
	defb 0fch,03bh,05eh,04ah,045h,000h,040h,058h,05bh,047h,059h,000h,040h,054h,04fh,058h	; 7742  ..^JE.@X[GY.@TOX
	defb 052h,003h,059h,002h,03ch,0f8h,03bh,053h,003h,058h,065h,042h,054h,000h,05bh,047h	; 7752  R.Y.<..S.XeBT.[G
	defb 045h,000h,04bh,066h,06dh,045h,003h,0feh,0c6h,058h,062h,058h,052h,003h,059h,000h	; 7762  E.KfmE...XbXR.Y.
	defb 054h,041h,04eh,003h,03ch,0ffh	; 7772

; ----------------------------------------------------------------------
; DATOS mensaje_21_7778: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (26
;   bytes)
;   0x7778..0x7792  (26 bytes)
DATA_mensaje_21_7778:
	defb 0fch,03bh,041h,063h,000h,04eh,042h,055h,000h,050h,045h,003h,041h,054h,041h,001h	; 7778  ..Ac.NBU.PE.ATA.
	defb 03ch,0feh,0f8h,03bh,04bh,066h,06dh,001h,03ch,0ffh	; 7788  <...Kfm.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7792: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (314
;   bytes)
;   0x7792..0x78cc  (314 bytes)
DATA_mensaje_21_7792:
	defb 0fch,03bh,059h,047h,04bh,003h,0a5h,042h,000h,04bh,06ah,0a6h,001h,03ch,0feh,0f8h	; 7792  ..YGK..B.Kj..<..
	defb 03bh,04bh,066h,06dh,053h,000h,0c8h,0a6h,04fh,066h,000h,04bh,066h,06dh,001h,0feh	; 77a2  .KfmS...Of.Kfm..
	defb 054h,04dh,003h,000h,0c6h,045h,003h,000h,046h,0a5h,042h,04eh,058h,000h,05bh,047h	; 77b2  TM...E..F.BNX.[G
	defb 06ch,0feh,046h,054h,048h,069h,059h,003h,000h,054h,066h,056h,058h,04fh,003h,001h	; 77c2  l.FTHiY..TfVXO..
	defb 002h,03ch,0fdh,0fbh,03bh,040h,066h,0a6h,000h,040h,066h,066h,0a6h,001h,002h,0feh	; 77d2  .<...@f..@ff....
	defb 0f7h,0fch,059h,000h,06eh,05bh,047h,06fh,053h,059h,000h,0c8h,0a6h,04fh,048h,053h	; 77e2  ..Y.n[GoSY...OHS
	defb 003h,06eh,046h,0a5h,042h,04eh,058h,000h,05bh,047h,06fh,053h,059h,000h,05ah,053h	; 77f2  .nF.BNX.[GoSY.ZS
	defb 049h,053h,062h,0c8h,0a6h,052h,054h,041h,06bh,065h,001h,03ch,0fdh,0fch,03bh,0f7h	; 7802  ISb..RTAke.<....
	defb 0fbh,044h,0b6h,000h,070h,07fh,08eh,000h,041h,041h,06dh,04fh,003h,054h,006h,0feh	; 7812  .D..p...AAmO.T..
	defb 075h,08fh,074h,090h,012h,0c2h,001h,000h,044h,0b6h,045h,003h,000h,079h,003h,077h	; 7822  u.t.....D.E..y.w
	defb 003h,06ch,0feh,04ch,042h,059h,041h,04ch,068h,000h,0bch,0c1h,058h,000h,04bh,0a4h	; 7832  .l.LBYALh...X.K.
	defb 042h,046h,0a5h,042h,058h,0feh,046h,0a5h,042h,04eh,04fh,003h,001h,03ch,0fdh,0f8h	; 7842  BF.BX.F.BNO..<..
	defb 03bh,00ah,00ah,08bh,08bh,08bh,08bh,08bh,006h,000h,041h,045h,055h,062h,0feh,0c6h	; 7852  ..........AEUb..
	defb 045h,003h,000h,046h,0a5h,042h,04eh,04fh,003h,006h,000h,079h,003h,077h,003h,04ah	; 7862  E..F.BNO...y.w.J
	defb 05eh,059h,000h,0feh,04eh,06dh,04ah,003h,041h,04bh,054h,041h,053h,000h,0c8h,0a6h	; 7872  ^Y..NmJ.AKTAS...
	defb 04fh,058h,062h,072h,07eh,04fh,003h,001h,0fdh,079h,003h,077h,003h,04ah,05eh,059h	; 7882  OXbr~O...y.w.J^Y
	defb 000h,0ddh,062h,054h,047h,000h,049h,058h,0c2h,0c3h,055h,0feh,0e1h,06bh,069h,000h	; 7892  ..bTG.IX..U..ki.
	defb 0bah,0ddh,06ch,000h,05dh,06ah,05dh,003h,04ch,058h,04fh,003h,001h,0feh,075h,003h	; 78a2  ..l.]j].LXO...u.
	defb 089h,089h,089h,089h,089h,0afh,001h,03ch,0feh,0fch,03bh,065h,047h,000h,06bh,066h	; 78b2  .......<...eG.kf
	defb 042h,000h,063h,051h,04fh,003h,054h,03ch,0fah,005h	; 78c2  B.cQO.T<..

; ----------------------------------------------------------------------
; DATOS mensaje_21_78CC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x78cc..0x78e2  (22 bytes)
DATA_mensaje_21_78CC:
	defb 0fch,03bh,040h,0a6h,001h,000h,05eh,052h,0a6h,001h,000h,053h,003h,049h,05ch,000h	; 78cc  ..@...^R...S.I\.
	defb 0dch,047h,001h,002h,03ch,0ffh	; 78dc

; ----------------------------------------------------------------------
; DATOS mensaje_21_78E2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x78e2..0x7902  (32 bytes)
DATA_mensaje_21_78E2:
	defb 0fch,03bh,05dh,06dh,053h,055h,000h,0edh,066h,054h,041h,002h,03ch,0feh,0f8h,03bh	; 78e2  ..]mSU..fTA.<...
	defb 04ah,0a6h,059h,004h,067h,000h,06bh,045h,067h,05eh,04dh,06dh,04eh,003h,03ch,0ffh	; 78f2  J.Y.g.kEg^MmN.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7902: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x7902..0x7913  (17 bytes)
DATA_mensaje_21_7902:
	defb 0fch,03bh,065h,042h,04bh,000h,044h,04bh,052h,05fh,065h,042h,001h,001h,03ch,0fah	; 7902  ..eBK.DKR_eB..<.
	defb 008h	; 7912

; ----------------------------------------------------------------------
; DATOS mensajes_21_7913: 14 palabras: los mensajes de la sala 99 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (28 bytes)
;   0x7913..0x792f  (28 bytes)
DATA_mensajes_21_7913:
	defb 02fh,079h	; 7913
	defb 06bh,079h	; 7915
	defb 07eh,079h	; 7917
	defb 0b4h,079h	; 7919
	defb 0f2h,079h	; 791b
	defb 07ch,07ah	; 791d
	defb 08fh,07ah	; 791f
	defb 09bh,07ah	; 7921
	defb 0b7h,07ah	; 7923
	defb 04dh,074h	; 7925
	defb 0dah,07ah	; 7927
	defb 02fh,074h	; 7929
	defb 078h,074h	; 792b
	defb 06ah,074h	; 792d

; ----------------------------------------------------------------------
; DATOS mensaje_21_792F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (60
;   bytes)
;   0x792f..0x796b  (60 bytes)
DATA_mensaje_21_792F:
	defb 0fbh,03bh,049h,069h,059h,000h,0b3h,000h,055h,048h,003h,052h,046h,04fh,000h,046h	; 792f  ..IiY...UH.RFO.F
	defb 0a5h,042h,04eh,045h,003h,0feh,056h,046h,003h,04ch,052h,04fh,000h,062h,058h,058h	; 793f  .BNE..VF.LRO.bXX
	defb 065h,042h,057h,03ch,0feh,0fch,03bh,04eh,042h,05fh,04fh,041h,04fh,003h,054h,006h	; 794f  eBW<...NB_OAO.T.
	defb 05eh,04fh,003h,000h,040h,04fh,04fh,045h,041h,063h,03ch,0ffh	; 795f  ^O..@OOEAc<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_796B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x796b..0x797e  (19 bytes)
DATA_mensaje_21_796B:
	defb 0fbh,03bh,040h,044h,041h,000h,05bh,047h,045h,003h,000h,044h,050h,052h,041h,068h	; 796b  ..@DA.[GE..DPRAh
	defb 06bh,03ch,0ffh	; 797b

; ----------------------------------------------------------------------
; DATOS mensaje_21_797E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (54
;   bytes)
;   0x797e..0x79b4  (54 bytes)
DATA_mensaje_21_797E:
	defb 0fch,03bh,072h,090h,006h,000h,074h,099h,055h,000h,05ah,004h,0a6h,04fh,067h,058h	; 797e  ..r...t.U.Z..OgX
	defb 07ah,071h,07ch,003h,04fh,003h,03ch,0fbh,03bh,04eh,06dh,054h,062h,058h,000h,046h	; 798e  zq|.O.<..NmTbX.F
	defb 052h,000h,040h,054h,04fh,045h,003h,0feh,046h,0a5h,042h,04eh,055h,000h,054h,068h	; 799e  R.@TOE..F.BNU.Th
	defb 051h,062h,067h,002h,03ch,0ffh	; 79ae

; ----------------------------------------------------------------------
; DATOS mensaje_21_79B4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (62
;   bytes)
;   0x79b4..0x79f2  (62 bytes)
DATA_mensaje_21_79B4:
	defb 0fbh,03bh,050h,047h,04bh,0a5h,042h,001h,000h,0f1h,0bah,04fh,050h,055h,0feh,05ah	; 79b4  ..PGK.B....OPU.Z
	defb 053h,003h,041h,049h,053h,06ch,000h,04bh,052h,041h,04fh,000h,059h,003h,051h,04fh	; 79c4  S.AISl.KRAO.Y.QO
	defb 003h,001h,0feh,079h,088h,093h,09ah,0afh,006h,000h,079h,088h,093h,09ah,0afh,03ch	; 79d4  ...y......y....<
	defb 0feh,0fch,03bh,044h,050h,051h,048h,006h,044h,050h,051h,048h,03ch,0ffh	; 79e4  ...DPQH.DPQH<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_79F2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (138
;   bytes)
;   0x79f2..0x7a7c  (138 bytes)
DATA_mensaje_21_79F2:
	defb 0fch,03bh,044h,0b6h,058h,000h,082h,003h,075h,089h,003h,084h,052h,003h,000h,055h	; 79f2  ..D.X...u...R..U
	defb 044h,041h,052h,003h,062h,0feh,045h,041h,052h,003h,05fh,054h,03ch,0fdh,0fbh,03bh	; 7a02  DAR.b.EAR._T<...
	defb 049h,053h,059h,003h,055h,000h,0b7h,06ch,000h,051h,048h,052h,065h,001h,0feh,077h	; 7a12  ISY.U..l.QHRe..w
	defb 09dh,077h,09dh,00ah,00ah,077h,09dh,077h,09dh,00ah,00ah,0feh,040h,066h,002h,000h	; 7a22  .w...w.w....@f..
	defb 053h,003h,049h,045h,052h,003h,000h,045h,041h,04fh,003h,049h,053h,058h,040h,068h	; 7a32  S.IER..EAO.ISX@h
	defb 0feh,055h,044h,041h,04fh,003h,06bh,03ch,0fdh,0fch,03bh,053h,003h,049h,04fh,003h	; 7a42  .UDAO.k<...S.IO.
	defb 001h,002h,000h,04eh,069h,059h,001h,002h,03ch,0feh,0fbh,03bh,06bh,045h,06dh,054h	; 7a52  ...NiY..<...kEmT
	defb 01dh,041h,03ch,0feh,0fch,03bh,08bh,003h,097h,0afh,0d6h,059h,000h,065h,04dh,001h	; 7a62  .A<........Y.eM.
	defb 000h,08bh,003h,07fh,058h,047h,04dh,055h,03ch,0ffh	; 7a72  ....XGMU<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7A7C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x7a7c..0x7a8f  (19 bytes)
DATA_mensaje_21_7A7C:
	defb 0fbh,03bh,046h,04fh,054h,041h,06bh,006h,000h,044h,041h,052h,044h,046h,05eh,04bh	; 7a7c  ..FOTAk..DARDF^K
	defb 0a5h,03ch,0ffh	; 7a8c

; ----------------------------------------------------------------------
; DATOS mensaje_21_7A8F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0x7a8f..0x7a9b  (12 bytes)
DATA_mensaje_21_7A8F:
	defb 0fbh,03bh,0dch,046h,053h,003h,05eh,067h,065h,001h,03ch,0ffh	; 7a8f  ...FS.^ge.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7A9B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0x7a9b..0x7ab7  (28 bytes)
DATA_mensaje_21_7A9B:
	defb 0fbh,03bh,053h,003h,049h,045h,066h,045h,000h,045h,04dh,003h,045h,003h,000h,0d2h	; 7a9b  ..S.IEfE.EM.E...
	defb 0a6h,052h,046h,052h,041h,068h,05fh,04fh,041h,057h,03ch,0ffh	; 7aab  .RFRAh_OAW<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7AB7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (35
;   bytes)
;   0x7ab7..0x7ada  (35 bytes)
DATA_mensaje_21_7AB7:
	defb 0fbh,03bh,045h,04dh,003h,059h,000h,049h,058h,000h,045h,05ch,003h,058h,000h,04ch	; 7ab7  ..EM.Y.IX.E\.X.L
	defb 046h,05eh,045h,066h,0feh,0d2h,0a6h,052h,046h,052h,041h,068h,065h,042h,04fh,003h	; 7ac7  F^Ef...RFRAheBO.
	defb 06bh,03ch,0ffh	; 7ad7

; ----------------------------------------------------------------------
; DATOS mensaje_21_7ADA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x7ada..0x7ae9  (15 bytes)
DATA_mensaje_21_7ADA:
	defb 0fch,03bh,065h,042h,04bh,000h,044h,04bh,052h,05fh,065h,042h,03ch,0fah,007h	; 7ada  ..eBK.DKR_eB<..

; ----------------------------------------------------------------------
; DATOS mensajes_21_7AE9: 5 palabras: los mensajes de la sala 141 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (10 bytes)
;   0x7ae9..0x7af3  (10 bytes)
DATA_mensajes_21_7AE9:
	defb 0f3h,07ah	; 7ae9
	defb 005h,07bh	; 7aeb
	defb 016h,07bh	; 7aed
	defb 079h,073h	; 7aef
	defb 09bh,074h	; 7af1

; ----------------------------------------------------------------------
; DATOS mensaje_21_7AF3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x7af3..0x7b05  (18 bytes)
DATA_mensaje_21_7AF3:
	defb 0fbh,03bh,046h,055h,000h,0cah,04bh,045h,048h,052h,062h,000h,090h,07fh,003h,065h	; 7af3  ..FU..KEHRb....e
	defb 03ch,0ffh	; 7b03

; ----------------------------------------------------------------------
; DATOS mensaje_21_7B05: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x7b05..0x7b16  (17 bytes)
DATA_mensaje_21_7B05:
	defb 0fch,03bh,049h,058h,000h,046h,06ch,000h,046h,0a6h,052h,05fh,065h,042h,03ch,0fah	; 7b05  ..IX.Fl.F.R_eB<.
	defb 021h	; 7b15

; ----------------------------------------------------------------------
; DATOS mensaje_21_7B16: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (51
;   bytes)
;   0x7b16..0x7b49  (51 bytes)
DATA_mensaje_21_7B16:
	defb 0fch,03bh,054h,04dh,003h,000h,046h,06ch,000h,046h,068h,04fh,003h,048h,052h,003h	; 7b16  ..TM..Fl.FhO.HR.
	defb 000h,059h,04bh,045h,003h,0feh,0e1h,06bh,069h,068h,06dh,04fh,003h,002h,03ch,0feh	; 7b26  .YKE...kihmO..<.
	defb 0fbh,03bh,049h,05eh,045h,041h,049h,053h,059h,000h,041h,041h,04bh,003h,0a3h,054h	; 7b36  ..I^EAISY.AAK..T
	defb 041h,03ch,0ffh	; 7b46

; ----------------------------------------------------------------------
; DATOS mensajes_21_7B49: 9 palabras: los mensajes de la sala 153 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (18 bytes)
;   0x7b49..0x7b5b  (18 bytes)
DATA_mensajes_21_7B49:
	defb 05bh,07bh	; 7b49
	defb 0e8h,07bh	; 7b4b
	defb 0f6h,07bh	; 7b4d
	defb 008h,07ch	; 7b4f
	defb 01bh,07ch	; 7b51
	defb 029h,07ch	; 7b53
	defb 04ah,07ch	; 7b55
	defb 084h,073h	; 7b57
	defb 079h,073h	; 7b59

; ----------------------------------------------------------------------
; DATOS mensaje_21_7B5B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (141
;   bytes)
;   0x7b5b..0x7be8  (141 bytes)
DATA_mensaje_21_7B5B:
	defb 0f8h,03bh,062h,042h,000h,044h,046h,052h,000h,04fh,003h,041h,04bh,003h,0a5h,042h	; 7b5b  ..bB.DFR.O.AK..B
	defb 05bh,003h,054h,058h,002h,03ch,0feh,0fch,03bh,040h,054h,04fh,045h,003h,000h,074h	; 7b6b  [.TX.<...@TOE..t
	defb 099h,04fh,050h,06ch,000h,04fh,04ch,048h,052h,0feh,047h,069h,04fh,058h,045h,041h	; 7b7b  .OPl.OLHR.GiOXEA
	defb 002h,03ch,0fdh,0f8h,03bh,041h,01dh,043h,006h,000h,060h,04ch,049h,058h,000h,07fh	; 7b8b  .<...A.C..`LIX..
	defb 003h,09dh,082h,065h,006h,0feh,04ch,054h,058h,0deh,052h,003h,000h,062h,045h,003h	; 7b9b  ...e..LTX.R..bE.
	defb 041h,052h,068h,000h,040h,054h,04fh,0efh,06ch,0feh,0b8h,051h,048h,000h,045h,06dh	; 7bab  ARh.@TO.l..QH.Em
	defb 041h,0a6h,059h,004h,051h,058h,000h,053h,049h,06ah,052h,003h,0feh,04fh,04ch,048h	; 7bbb  A.Y.QX.SIjR..OLH
	defb 04fh,058h,065h,03ch,0fdh,0fch,03bh,07fh,003h,09dh,082h,059h,002h,03ch,0feh,0f8h	; 7bcb  OXe<.......Y.<..
	defb 03bh,051h,041h,0b3h,000h,052h,003h,045h,048h,04fh,06bh,03ch,0ffh	; 7bdb  .QA..R.EHOk<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7BE8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x7be8..0x7bf6  (14 bytes)
DATA_mensaje_21_7BE8:
	defb 0f8h,03bh,0b7h,06ch,051h,048h,052h,0dch,046h,054h,04ah,041h,03ch,0ffh	; 7be8  ...lQHR.FTJA<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7BF6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x7bf6..0x7c08  (18 bytes)
DATA_mensaje_21_7BF6:
	defb 0fbh,03bh,087h,0afh,077h,099h,07ch,045h,003h,000h,044h,050h,052h,041h,068h,06bh	; 7bf6  ....w.|E..DPRAhk
	defb 03ch,0ffh	; 7c06

; ----------------------------------------------------------------------
; DATOS mensaje_21_7C08: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x7c08..0x7c1b  (19 bytes)
DATA_mensaje_21_7C08:
	defb 0fbh,03bh,0b8h,044h,05dh,003h,043h,058h,040h,068h,000h,087h,0afh,077h,099h,07ch	; 7c08  ...D].CX@h...w.|
	defb 057h,03ch,0ffh	; 7c18

; ----------------------------------------------------------------------
; DATOS mensaje_21_7C1B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x7c1b..0x7c29  (14 bytes)
DATA_mensaje_21_7C1B:
	defb 0fbh,03bh,0b1h,0a6h,052h,044h,046h,05eh,04bh,0a5h,042h,03ch,0fah,005h	; 7c1b  ....RDF^K.B<..

; ----------------------------------------------------------------------
; DATOS mensaje_21_7C29: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0x7c29..0x7c4a  (33 bytes)
DATA_mensaje_21_7C29:
	defb 0fch,03bh,049h,058h,087h,0afh,077h,099h,07ch,059h,000h,040h,054h,04fh,058h,002h	; 7c29  ..IX..w.|Y.@TOX.
	defb 03ch,0feh,0f8h,03bh,041h,043h,000h,0c6h,058h,04bh,003h,0a3h,054h,041h,06bh,03ch	; 7c39  <...AC..XK..TAk<
	defb 0ffh	; 7c49

; ----------------------------------------------------------------------
; DATOS mensaje_21_7C4A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (392
;   bytes)
;   0x7c4a..0x7dd2  (392 bytes)
DATA_mensaje_21_7C4A:
	defb 0f8h,03bh,04eh,042h,04eh,042h,006h,000h,049h,058h,0b6h,000h,060h,04ch,049h,045h	; 7c4a  ..NBNB..IX..`LIE
	defb 003h,0feh,046h,069h,041h,054h,000h,0d0h,058h,0bah,06ch,000h,051h,069h,052h,046h	; 7c5a  ..FiAT..X.l.QiRF
	defb 04fh,058h,006h,0feh,053h,003h,049h,045h,058h,000h,044h,0e3h,04ah,05eh,058h,065h	; 7c6a  OX..S.IEX.D.J^Xe
	defb 042h,054h,00ah,00ah,03ch,0fdh,0fbh,03bh,0dbh,041h,04fh,003h,04bh,04fh,06bh,001h	; 7c7a  BT..<....AO.KOk.
	defb 000h,049h,058h,087h,0afh,077h,099h,07ch,059h,0feh,077h,003h,097h,020h,077h,0d5h	; 7c8a  .IX..w.|Y.w.. w.
	defb 052h,003h,0b8h,04fh,000h,080h,0aah,098h,07bh,020h,0e3h,058h,0feh,04bh,0a5h,042h	; 7c9a  R..O....{ .X.K.B
	defb 04eh,003h,042h,045h,003h,058h,0deh,052h,003h,000h,0cfh,0d0h,045h,003h,000h,0feh	; 7caa  N.BE.X.R....E...
	defb 05fh,055h,000h,051h,048h,052h,04fh,062h,058h,065h,001h,03ch,0fdh,0f8h,03bh,04eh	; 7cba  _U.QHRObXe.<...N
	defb 042h,041h,043h,059h,003h,000h,060h,04ch,049h,059h,000h,049h,06dh,054h,049h,053h	; 7cca  BACY..`LIY.ImTIS
	defb 06ch,0feh,0c8h,0a6h,052h,04fh,06bh,006h,000h,06eh,012h,0bah,058h,000h,048h,0a6h	; 7cda  l...ROk..n..X.H.
	defb 049h,06dh,06ch,0feh,05fh,053h,061h,04ah,04dh,068h,055h,059h,000h,079h,003h,077h	; 7cea  Iml._SaJMhUY.y.w
	defb 003h,06ch,000h,04fh,044h,04bh,052h,0feh,052h,045h,003h,066h,06ch,000h,04fh,052h	; 7cfa  .l.ODKR.RE.fl.OR
	defb 068h,04bh,045h,054h,041h,06fh,053h,03ch,0fdh,0fbh,03bh,051h,05eh,067h,000h,080h	; 7d0a  hKETAoS<...Q^g..
	defb 0aah,098h,07bh,020h,059h,089h,004h,09dh,089h,004h,020h,07ch,0c5h,055h,005h,07fh	; 7d1a  ..{ Y..... |.U..
	defb 003h,09dh,082h,053h,058h,000h,048h,0a6h,049h,06dh,06ch,000h,059h,06dh,04fh,041h	; 7d2a  ...SX.H.Iml.YmOA
	defb 0feh,04ah,069h,052h,044h,067h,005h,012h,0bah,052h,003h,000h,079h,003h,077h,003h	; 7d3a  .JiRDg...R..y.w.
	defb 06ch,000h,04fh,044h,04bh,005h,0fdh,0c5h,055h,000h,048h,0a6h,049h,06dh,06ch,000h	; 7d4a  l.ODK...U.H.Iml.
	defb 05fh,053h,061h,04ah,04dh,065h,042h,053h,0feh,04bh,052h,041h,068h,06dh,04fh,003h	; 7d5a  _SaJMeBS.KRAhmO.
	defb 06bh,006h,000h,04eh,058h,04fh,061h,055h,000h,0d5h,06ch,0feh,052h,003h,04fh,058h	; 7d6a  k..NXOaU..l.R.OX
	defb 065h,03ch,0fdh,0f8h,03bh,040h,058h,0d0h,058h,0bah,045h,003h,000h,080h,0aah,098h	; 7d7a  e<...@X.X.E.....
	defb 07bh,020h,0e3h,04fh,003h,0a6h,04fh,0feh,054h,06dh,052h,03ch,0fdh,0fch,03bh,012h	; 7d8a  { .O..O.TmR<....
	defb 0bah,045h,003h,000h,041h,0a6h,04bh,0a5h,055h,000h,041h,068h,049h,053h,059h,0feh	; 7d9a  .E..A.K.U.AhISY.
	defb 04fh,04bh,045h,04fh,003h,006h,04eh,069h,055h,000h,079h,003h,077h,003h,058h,000h	; 7daa  OKEO..NiU.y.w.X.
	defb 04fh,044h,04bh,0efh,06ch,0feh,062h,042h,0b8h,051h,048h,052h,041h,068h,045h,062h	; 7dba  ODK.l.bB.QHRAhEb
	defb 000h,04bh,069h,054h,041h,054h,03ch,0ffh	; 7dca  .KiTAT<.

; ----------------------------------------------------------------------
; DATOS mensajes_21_7DD2: 32 palabras: los mensajes de la sala 176 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (64 bytes)
;   0x7dd2..0x7e12  (64 bytes)
DATA_mensajes_21_7DD2:
	defb 012h,07eh	; 7dd2
	defb 051h,07eh	; 7dd4
	defb 07eh,07eh	; 7dd6
	defb 0b8h,07eh	; 7dd8
	defb 0e7h,07eh	; 7dda
	defb 017h,07fh	; 7ddc
	defb 0a9h,07fh	; 7dde
	defb 08bh,080h	; 7de0
	defb 0bdh,080h	; 7de2
	defb 0d2h,080h	; 7de4
	defb 0e1h,080h	; 7de6
	defb 0f8h,080h	; 7de8
	defb 005h,081h	; 7dea
	defb 02ah,081h	; 7dec
	defb 03bh,081h	; 7dee
	defb 046h,081h	; 7df0
	defb 04fh,081h	; 7df2
	defb 056h,081h	; 7df4
	defb 061h,081h	; 7df6
	defb 06bh,081h	; 7df8
	defb 0b0h,081h	; 7dfa
	defb 091h,082h	; 7dfc
	defb 01dh,083h	; 7dfe
	defb 061h,083h	; 7e00
	defb 09ah,083h	; 7e02
	defb 0ceh,083h	; 7e04
	defb 034h,084h	; 7e06
	defb 01ch,085h	; 7e08
	defb 0fch,085h	; 7e0a
	defb 078h,074h	; 7e0c
	defb 0a9h,074h	; 7e0e
	defb 008h,074h	; 7e10

; ----------------------------------------------------------------------
; DATOS mensaje_21_7E12: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (63
;   bytes)
;   0x7e12..0x7e51  (63 bytes)
DATA_mensaje_21_7E12:
	defb 0f8h,03bh,050h,045h,050h,003h,045h,000h,089h,004h,09dh,089h,004h,020h,07ch,0c5h	; 7e12  ..PEP.E...... |.
	defb 000h,04fh,06dh,04bh,003h,0a5h,042h,011h,010h,010h,04ah,041h,06ch,046h,057h,06dh	; 7e22  .OmK..B...JAlFWm
	defb 04bh,052h,000h,05bh,003h,053h,042h,045h,041h,045h,003h,0feh,040h,068h,058h,006h	; 7e32  KR.[.SBEAE..@hX.
	defb 04eh,058h,04fh,061h,058h,000h,04eh,042h,04bh,003h,054h,058h,065h,03ch,0ffh	; 7e42  NXOaX.NBK.TXe<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7E51: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (45
;   bytes)
;   0x7e51..0x7e7e  (45 bytes)
DATA_mensaje_21_7E51:
	defb 0f8h,03bh,040h,06dh,04fh,04fh,050h,062h,000h,047h,069h,059h,003h,041h,041h,06bh	; 7e51  ..@mOOPb.GiY.AAk
	defb 03ch,0feh,0fch,03bh,040h,067h,045h,003h,053h,042h,006h,05eh,04fh,003h,000h,049h	; 7e61  <...@gE.SB.^O..I
	defb 058h,0c2h,0c3h,055h,0feh,041h,069h,059h,003h,057h,001h,03ch,0ffh	; 7e71  X..U.AiY.W.<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7E7E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (58
;   bytes)
;   0x7e7e..0x7eb8  (58 bytes)
DATA_mensaje_21_7E7E:
	defb 0f6h,0f1h,0bah,000h,000h,03bh,089h,004h,09dh,089h,004h,020h,07ch,0c5h,000h,080h	; 7e7e  ........... |...
	defb 0aah,098h,07bh,020h,0e3h,0feh,059h,003h,06dh,04ah,003h,041h,001h,001h,000h,06bh	; 7e8e  ..{ ..Y.mJ.A...k
	defb 069h,066h,045h,003h,000h,077h,003h,097h,020h,077h,0feh,0c5h,0c0h,055h,000h,043h	; 7e9e  ifE..w.. w...U.C
	defb 041h,049h,042h,040h,069h,0a6h,001h,001h,03ch,0ffh	; 7eae  AIB@i...<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7EB8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (47
;   bytes)
;   0x7eb8..0x7ee7  (47 bytes)
DATA_mensaje_21_7EB8:
	defb 0f8h,03bh,049h,069h,045h,066h,000h,089h,004h,09dh,089h,004h,020h,07ch,0c5h,011h	; 7eb8  ..IiEf...... |..
	defb 010h,010h,04ah,041h,06ch,0feh,046h,057h,06dh,04bh,052h,000h,05bh,003h,053h,042h	; 7ec8  ..JAl.FWmKR.[.SB
	defb 089h,004h,020h,082h,0a8h,045h,003h,0feh,0b4h,045h,069h,05eh,04ch,03ch,0ffh	; 7ed8  .. ..E...Ei^L<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7EE7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (48
;   bytes)
;   0x7ee7..0x7f17  (48 bytes)
DATA_mensaje_21_7EE7:
	defb 0f8h,03bh,080h,0aah,098h,07bh,020h,0e3h,045h,003h,000h,062h,053h,003h,066h,069h	; 7ee7  .....{ .E..bS.fi
	defb 052h,0feh,089h,004h,09dh,089h,004h,020h,07ch,0c5h,059h,000h,04ch,0a6h,045h,067h	; 7ef7  R...... |.Y.L.Eg
	defb 000h,048h,003h,06dh,046h,06ch,053h,067h,062h,053h,003h,04ah,069h,04fh,03ch,0ffh	; 7f07  .H.mFlSgbS.JiO<.

; ----------------------------------------------------------------------
; DATOS mensaje_21_7F17: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (146
;   bytes)
;   0x7f17..0x7fa9  (146 bytes)
DATA_mensaje_21_7F17:
	defb 0f8h,03bh,0f7h,0fch,053h,003h,058h,000h,0f7h,0fbh,053h,003h,058h,0feh,065h,047h	; 7f17  ....S.X...S.X.eG
	defb 04eh,003h,000h,045h,043h,0a6h,052h,049h,066h,069h,04fh,001h,0feh,080h,0aah,098h	; 7f27  N..EC.RIfiO.....
	defb 07bh,020h,058h,0cah,055h,065h,068h,053h,005h,0d4h,0c1h,0c5h,079h,003h,077h,003h	; 7f37  { X.UehS....y.w.
	defb 045h,003h,0feh,091h,07ch,077h,058h,063h,05eh,055h,000h,0e1h,06bh,069h,068h,063h	; 7f47  E...|wXc^U..kihc
	defb 041h,054h,063h,0fdh,040h,054h,04fh,0efh,045h,003h,000h,079h,003h,077h,003h,06ch	; 7f57  ATc.@TO.E..y.w.l
	defb 000h,04fh,041h,04bh,003h,04bh,04fh,00ah,053h,006h,041h,063h,000h,065h,047h,000h	; 7f67  .OAK.KO.S.Ac.eG.
	defb 04fh,044h,04bh,052h,047h,069h,04fh,001h,001h,0feh,077h,003h,097h,020h,077h,058h	; 7f77  ODKRGiO...w.. wX
	defb 0bah,0dah,059h,000h,05fh,054h,000h,040h,054h,04fh,0efh,055h,0feh,045h,06dh,04bh	; 7f87  ..Y._T.@TO.U.EmK
	defb 0a3h,000h,04bh,052h,041h,05eh,04ch,006h,000h,040h,067h,045h,003h,053h,042h,001h	; 7f97  ..KRA^L..@gE.SB.
	defb 03ch,0ffh	; 7fa7

; ----------------------------------------------------------------------
; DATOS mensaje_21_7FA9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba (sigue en el banco 22, en
;   0x8000); lo leen p00:4E76 (87 bytes)
;   0x7fa9..0x8000  (87 bytes)
DATA_mensaje_21_7FA9:
	defb 0f8h,03bh,0b3h,0f4h,059h,000h,0c6h,058h,04fh,06dh,04bh,003h,0a5h,042h,011h,010h	; 7fa9  ....Y..XOmK..B..
	defb 010h,057h,06dh,058h,0feh,044h,041h,06bh,041h,045h,003h,040h,067h,000h,077h,003h	; 7fb9  .WmX.DAkAE.@g.w.
	defb 097h,020h,077h,0c5h,0c0h,058h,0bah,0dah,045h,003h,0feh,040h,051h,05eh,0a6h,052h	; 7fc9  . w..X..E..@Q^.R
	defb 047h,069h,052h,041h,05eh,04ch,006h,0fdh,04eh,069h,055h,000h,080h,0aah,098h,07bh	; 7fd9  GiRA^L..NiU....{
	defb 020h,062h,000h,062h,053h,003h,0a6h,052h,046h,04fh,006h,0feh,04eh,04bh,052h,000h	; 7fe9   b.bS..RFO..NKR.
	defb 045h,06bh,041h,04eh,042h,054h,049h	; 7ff9
