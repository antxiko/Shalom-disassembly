; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 11 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ======================================================================
; CODIGO 0xa000..0xa012  (18 bytes)
; ======================================================================


L_A000:
	ld a,(de)			;a000   ; una ficha del dibujo, con la mascara B
	and b			;a001
	ld (hl),a			;a002
	inc de			;a003
	inc hl			;a004
	exx			;a005
	djnz $-7		;a006
	exx			;a008
	ld a,016h		;a009   ; la siguiente fila
	call 040a1h		;a00b   ; hl_mas_a: HL = HL + A
	dec c			;a00e
	jr nz,$-19		;a00f
	ret			;a011

; ----------------------------------------------------------------------
; DATOS resto_A012: lo apuntan con el banco puesto p10:9FF3 (0xA012); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p10:9FF3 (186 bytes)
;   0xa012..0xa0cc  (186 bytes)
DATA_resto_A012:
	defb 018h,0a0h,054h,0a0h,090h,0a0h,000h,06fh,0b8h,0beh,0b0h,0afh,0aeh,000h,000h,000h	; a012  ..T....o........
	defb 000h,0b9h,08bh,070h,08dh,08ch,073h,072h,071h,066h,000h,0bah,04ch,04dh,076h,077h	; a022  ...p..srqf..LMvw
	defb 078h,050h,04fh,065h,000h,053h,052h,091h,090h,067h,08fh,08eh,07fh,07eh,064h,082h	; a032  xPOe.SR..g...~d.
	defb 05ah,081h,093h,092h,080h,056h,055h,054h,000h,097h,096h,095h,0adh,094h,057h,058h	; a042  Z....VUT......WX
	defb 083h,059h,000h,06fh,0b8h,0beh,0b0h,0afh,0aeh,000h,000h,000h,000h,0b9h,08bh,06eh	; a052  .Y.o...........n
	defb 075h,074h,073h,072h,071h,066h,000h,0bah,04ch,04eh,079h,07ah,07bh,07ch,051h,07dh	; a062  utsrqf..LNyz{|Q}
	defb 000h,000h,06bh,09ah,05bh,099h,06ch,098h,085h,084h,068h,09fh,09eh,09dh,05dh,05ch	; a072  ..k.[.l...h...]\
	defb 069h,09ch,09bh,06ah,0a3h,087h,086h,05eh,05fh,060h,0a2h,0a1h,0abh,0a0h,000h,06fh	; a082  i..j...^_`.....o
	defb 0b8h,0beh,0b1h,0b7h,0b6h,0b5h,0b4h,0b3h,000h,0b9h,08bh,070h,0a9h,0a8h,0a7h,0a6h	; a092  ...........p....
	defb 0a5h,0a4h,000h,0bah,04ch,04dh,076h,089h,088h,062h,000h,06dh,000h,053h,052h,091h	; a0a2  ....LMv..b.m.SR.
	defb 090h,067h,08fh,08eh,07fh,07eh,064h,082h,05ah,081h,093h,092h,080h,056h,055h,054h	; a0b2  .g...~d.Z....VUT
	defb 000h,097h,096h,095h,0adh,094h,057h,058h,083h,059h	; a0c2  ......WX.Y

; ======================================================================
; CODIGO 0xa0cc..0xa0d5  (9 bytes)
; ======================================================================


objeto_19:		; la rutina de la clase 19 de los objetos de 0xEA00 (p10:8CCD)
	call objeto_fuera		;a0cc   ; objeto_fuera: si el objeto sale por la izquierda o por abajo, lo borra y no vuelve a su rutina
	ld a,(ix+001h)		;a0cf   ; lee el paso del objeto
	call 040abh		;a0d2   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A0D5: tabla de 3 palabras del despachador (call 0x408D en
;   0xA0D2); lo leen L_40AB (6 bytes)
;   0xa0d5..0xa0db  (6 bytes)
DATA_saltos_A0D5:
	defb 001h,0a1h	; a0d5
	defb 025h,0a1h	; a0d7
	defb 041h,0a1h	; a0d9

; ======================================================================
; CODIGO 0xa0db..0xa0e4  (9 bytes)
; ======================================================================


objeto_20:		; la rutina de la clase 20 de los objetos de 0xEA00 (p10:8CCD)
	call objeto_fuera		;a0db   ; objeto_fuera: si el objeto sale por la izquierda o por abajo, lo borra y no vuelve a su rutina
	ld a,(ix+001h)		;a0de   ; lee el paso del objeto
	call 040abh		;a0e1   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A0E4: tabla de 3 palabras del despachador (call 0x408D en
;   0xA0E1); lo leen L_40AB (6 bytes)
;   0xa0e4..0xa0ea  (6 bytes)
DATA_saltos_A0E4:
	defb 0fdh,0a0h	; a0e4
	defb 025h,0a1h	; a0e6
	defb 041h,0a1h	; a0e8

; ======================================================================
; CODIGO 0xa0ea..0xa0f3  (9 bytes)
; ======================================================================


objeto_21:		; la rutina de la clase 21 de los objetos de 0xEA00 (p10:8CCD)
	call objeto_fuera		;a0ea   ; objeto_fuera: si el objeto sale por la izquierda o por abajo, lo borra y no vuelve a su rutina
	ld a,(ix+001h)		;a0ed   ; lee el paso del objeto
	call 040abh		;a0f0   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A0F3: tabla de 3 palabras del despachador (call 0x408D en
;   0xA0F0); lo leen L_40AB (6 bytes)
;   0xa0f3..0xa0f9  (6 bytes)
DATA_saltos_A0F3:
	defb 0f9h,0a0h	; a0f3
	defb 025h,0a1h	; a0f5
	defb 041h,0a1h	; a0f7

; ======================================================================
; CODIGO 0xa0f9..0xa185  (140 bytes)
; ======================================================================


L_A0F9:
	ld a,0ffh		;a0f9
	jr L_A103		;a0fb
L_A0FD:
	ld a,0feh		;a0fd
	jr L_A103		;a0ff
L_A101:
	ld a,0fdh		;a101
L_A103:
	ld (ix+005h),a		;a103   ; guarda la velocidad X del objeto (alta)
	ld (ix+01bh),003h		;a106   ; la cuenta del objeto = 0x03
	ld (ix+00ah),015h		;a10a   ; el fotograma del objeto = 0x15
	ld (ix+00dh),001h		;a10e   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x01
	ld (ix+01dh),000h		;a112   ; la variable 0x1D del objeto (en los jefes, la accion) = 0x00
	ld (ix+002h),000h		;a116   ; la velocidad Y del objeto = 0x00
	ld (ix+004h),080h		;a11a   ; la velocidad X del objeto = 0x80
	ld (ix+003h),0feh		;a11e   ; la velocidad Y del objeto (alta) = 0xFE
	jp 09ea1h		;a122
L_A125:
	ld de,00050h		;a125
	ld l,(ix+002h)		;a128   ; lee la velocidad Y del objeto
	ld h,(ix+003h)		;a12b   ; lee la velocidad Y del objeto (alta)
	add hl,de			;a12e
	ld (ix+002h),l		;a12f   ; guarda la velocidad Y del objeto
	ld (ix+003h),h		;a132   ; guarda la velocidad Y del objeto (alta)
	call 09c58h		;a135   ; objeto_avanza: Y (ix+6/7) += (ix+2/3) y X (ix+8/9) += (ix+4/5)
	ld a,(ix+007h)		;a138   ; lee la Y del objeto
	cp 018h		;a13b
	ret nc			;a13d
	jp 09ea1h		;a13e
L_A141:
	ld de,0ff80h		;a141
	ld l,(ix+002h)		;a144   ; lee la velocidad Y del objeto
	ld h,(ix+003h)		;a147   ; lee la velocidad Y del objeto (alta)
	add hl,de			;a14a
	ld (ix+002h),l		;a14b   ; guarda la velocidad Y del objeto
	ld (ix+003h),h		;a14e   ; guarda la velocidad Y del objeto (alta)
	jp 09c58h		;a151   ; objeto_avanza: Y (ix+6/7) += (ix+2/3) y X (ix+8/9) += (ix+4/5)
objeto_fuera:		; si el objeto sale por la izquierda o por abajo, lo borra y no vuelve a su rutina
	ld a,(ix+009h)		;a154   ; lee la X del objeto
	cp 020h		;a157
	jr c,L_A161		;a159
	ld a,(ix+007h)		;a15b   ; lee la Y del objeto
	cp 068h		;a15e
	ret c			;a160
L_A161:
	pop hl			;a161
	jp borra_objeto		;a162   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
objeto_parado:		; el objeto con fotograma 1, choques 2 y velocidad X -8
	xor a			;a165
	ld (ix+00dh),002h		;a166   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x02
	ld (ix+00ah),001h		;a16a   ; el fotograma del objeto = 0x01
	ld (ix+01dh),a		;a16e   ; guarda la variable 0x1D del objeto (en los jefes, la accion)
	ld (ix+002h),a		;a171   ; guarda la velocidad Y del objeto
	ld (ix+003h),a		;a174   ; guarda la velocidad Y del objeto (alta)
	ld (ix+004h),a		;a177   ; guarda la velocidad X del objeto
	ld (ix+005h),0f8h		;a17a   ; la velocidad X del objeto (alta) = 0xF8
	ret			;a17e
objeto_08:		; la rutina de la clase 8 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(ix+001h)		;a17f   ; lee el paso del objeto
	call 040abh		;a182   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A185: tabla de 9 palabras del despachador (call 0x408D en
;   0xA182); lo leen L_40AB (18 bytes)
;   0xa185..0xa197  (18 bytes)
DATA_saltos_A185:
	defb 097h,0a1h	; a185
	defb 0b3h,0a1h	; a187
	defb 0c9h,0a1h	; a189
	defb 0d0h,0a1h	; a18b
	defb 005h,0a2h	; a18d
	defb 00fh,0a2h	; a18f
	defb 025h,0a2h	; a191
	defb 02eh,0a2h	; a193
	defb 044h,0a2h	; a195

; ======================================================================
; CODIGO 0xa197..0xa2f6  (351 bytes)
; ======================================================================


L_A197:
	call lanza_objeto_17		;a197   ; lanza_objeto_17: un objeto de clase 0x17 en (0x20, 0x78)
	ld (ix+010h),000h		;a19a
	ld hl,0a32ah		;a19e
	ld de,0ec60h		;a1a1   ; apunta a las piezas del jefe o la fila de fichas que entra
	ld bc,00028h		;a1a4
	ldir		;a1a7
	call dibujo_de_15_filas		;a1a9   ; dibujo_de_15_filas: 15 filas de p11:A352 a 0xED00: [salto] y bytes hasta 0xFF
	call piezas_del_jefe		;a1ac   ; piezas_del_jefe: las 10 piezas de 0xEC60 (dibujos p11:A2F6) en la pantalla, o borradas
	inc (ix+001h)		;a1af   ; sube el paso del objeto
	ret			;a1b2
L_A1B3:
	ld c,000h		;a1b3
	call 04313h		;a1b5   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;a1b8   ; lee el texto en marcha
	and a			;a1bb
	ret nz			;a1bc
	ld a,(0e887h)		;a1bd   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;a1c0
	ret nz			;a1c1
	call 050ebh		;a1c2   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	inc (ix+001h)		;a1c5   ; sube el paso del objeto
	ret			;a1c8
L_A1C9:
	call lanza_objeto_12		;a1c9   ; lanza_objeto_12: un objeto de clase 0x12 en (0x10, 0x60)
	inc (ix+001h)		;a1cc   ; sube el paso del objeto
	ret			;a1cf
L_A1D0:
	ld hl,0ed4ch		;a1d0
	ld b,00ah		;a1d3
L_A1D5:
	push bc			;a1d5
	push hl			;a1d6
	ld b,008h		;a1d7
L_A1D9:
	ld (hl),000h		;a1d9
	inc hl			;a1db
	djnz L_A1D9		;a1dc
	pop hl			;a1de
	ld de,00020h		;a1df
	add hl,de			;a1e2
	pop bc			;a1e3
	djnz L_A1D5		;a1e4
	ld (ix+010h),000h		;a1e6
	call piezas_del_jefe		;a1ea   ; piezas_del_jefe: las 10 piezas de 0xEC60 (dibujos p11:A2F6) en la pantalla, o borradas
	ld (ix+010h),001h		;a1ed
	call piezas_del_jefe		;a1f1   ; piezas_del_jefe: las 10 piezas de 0xEC60 (dibujos p11:A2F6) en la pantalla, o borradas
	ld hl,(0ec64h)		;a1f4
	ld de,0ed4ch		;a1f7
	or a			;a1fa
	sbc hl,de		;a1fb
	ld a,0c2h		;a1fd
	cp l			;a1ff
	ret nz			;a200
	inc (ix+001h)		;a201   ; sube el paso del objeto
	ret			;a204
L_A205:
	ld a,(0ea21h)		;a205
	cp 004h		;a208
	ret nz			;a20a
	inc (ix+001h)		;a20b   ; sube el paso del objeto
	ret			;a20e
L_A20F:
	ld c,001h		;a20f
	call 04313h		;a211   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;a214   ; lee el texto en marcha
	or a			;a217
	ret nz			;a218
	ld a,(0e887h)		;a219   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;a21c
	ret nz			;a21d
	call 050ebh		;a21e   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	inc (ix+001h)		;a221   ; sube el paso del objeto
	ret			;a224
L_A225:
	ld a,(0ea20h)		;a225   ; lee los 7 objetos lanzados (0x20 bytes cada uno)
	or a			;a228
	ret nz			;a229
	inc (ix+001h)		;a22a   ; sube el paso del objeto
	ret			;a22d
L_A22E:
	ld c,002h		;a22e
	call 04313h		;a230   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;a233   ; lee el texto en marcha
	or a			;a236
	ret nz			;a237
	ld a,(0e887h)		;a238   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;a23b
	ret nz			;a23c
	call 050ebh		;a23d   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	inc (ix+001h)		;a240   ; sube el paso del objeto
	ret			;a243
jefe_8_vencido:		; pone el bit 0 de 0xEB7D y salta a la sala 0x12C
	ld hl,0eb7dh		;a244   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	set 0,(hl)		;a247
	xor a			;a249
	ld (0e368h),a		;a24a   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;a24d
	ld (0e360h),a		;a24e   ; guarda el modo dentro de la sala (tabla p00:5A83)
	inc a			;a251
	ld (0e337h),a		;a252   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,0012ch		;a255
	ld (0e36ah),hl		;a258   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
	ld hl,08030h		;a25b
	ld (0e3c1h),hl		;a25e   ; guarda la Y del personaje y el byte siguiente (16 bits)
	jp 058eah		;a261   ; borra_nombres_sin_ventana: borra 0x1E0 de 0xED00 y los vuelca
dibujo_de_15_filas:		; 15 filas de p11:A352 a 0xED00: [salto] y bytes hasta 0xFF
	ld hl,0a352h		;a264
	ld de,0ed00h		;a267   ; apunta a los nombres de la pantalla (32 x 24)
	ld b,00fh		;a26a
L_A26C:
	push de			;a26c
	ld a,(hl)			;a26d
	inc hl			;a26e
	call 040a6h		;a26f   ; de_mas_a: DE = DE + A
	call copia_hasta_ff		;a272   ; copia_hasta_ff: copia de HL a DE hasta 0xFF
	pop de			;a275
	ld a,020h		;a276
	call 040a6h		;a278   ; de_mas_a: DE = DE + A
	djnz L_A26C		;a27b
	ret			;a27d
copia_hasta_ff:		; copia de HL a DE hasta 0xFF
	ld a,(hl)			;a27e   ; el byte
	inc hl			;a27f
	cp 0ffh		;a280   ; 0xFF: acaba
	ret z			;a282
	ld (de),a			;a283
	inc de			;a284
	jr copia_hasta_ff		;a285
piezas_del_jefe:		; las 10 piezas de 0xEC60 (dibujos p11:A2F6) en la pantalla, o borradas
	ld hl,0ec60h		;a287   ; apunta a las piezas del jefe o la fila de fichas que entra
	ld b,00ah		;a28a
L_A28C:
	ld a,(ix+010h)		;a28c   ; borrando?
	or a			;a28f
	jr z,L_A29A		;a290
	ld a,00bh		;a292   ; la pieza que toca
	sub b			;a294
	ld (ix+010h),a		;a295
	jr L_A2B2		;a298
L_A29A:
	ld a,(0ea41h)		;a29a   ; el objeto de 0xEA40 en el paso 2
	cp 002h		;a29d
	jr nz,L_A2B2		;a29f
	ld a,00bh		;a2a1
	sub b			;a2a3
	ld c,a			;a2a4
	ld a,(0ea51h)		;a2a5   ; tiene la pieza que toca?
	cp c			;a2a8
	jr nz,L_A2B2		;a2a9
	ld a,(ix+00fh)		;a2ab   ; y parpadea
	and 001h		;a2ae
	jr z,L_A2D3		;a2b0
L_A2B2:
	ld e,(hl)			;a2b2
	inc hl			;a2b3
	ld d,(hl)			;a2b4
	inc hl			;a2b5
	ld a,(hl)			;a2b6
	inc hl			;a2b7
	inc hl			;a2b8
	push hl			;a2b9
	push de			;a2ba
	ld de,0a2f6h		;a2bb
	call 043a4h		;a2be   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ex de,hl			;a2c1
	pop de			;a2c2
	push bc			;a2c3
	call pieza		;a2c4   ; pieza: un dibujo [alto][ancho] y sus fichas a DE (o ceros con (ix+0x10))
	pop bc			;a2c7
	pop hl			;a2c8
L_A2C9:
	djnz L_A28C		;a2c9
	ld a,(ix+010h)		;a2cb
	or a			;a2ce
	ret nz			;a2cf
	jp 05e45h		;a2d0   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
L_A2D3:
	inc hl			;a2d3
	inc hl			;a2d4
	inc hl			;a2d5
	inc hl			;a2d6
	jr L_A2C9		;a2d7
pieza:		; un dibujo [alto][ancho] y sus fichas a DE (o ceros con (ix+0x10))
	ld c,(hl)			;a2d9
	inc hl			;a2da
	ld b,(hl)			;a2db
	inc hl			;a2dc
L_A2DD:
	push de			;a2dd
	push bc			;a2de
L_A2DF:
	ld a,(ix+010h)		;a2df
	or a			;a2e2
	jr nz,L_A2E6		;a2e3
	ld a,(hl)			;a2e5
L_A2E6:
	inc hl			;a2e6
	ld (de),a			;a2e7   ; la ficha
	inc de			;a2e8
	djnz L_A2DF		;a2e9
	pop bc			;a2eb
	pop de			;a2ec
	ld a,020h		;a2ed   ; la siguiente fila
	call 040a6h		;a2ef   ; de_mas_a: DE = DE + A
	dec c			;a2f2
	jr nz,L_A2DD		;a2f3
	ret			;a2f5

; ----------------------------------------------------------------------
; DATOS resto_A2F6: lo apuntan con el banco puesto p11:A2BB (0xA2F6), p11:A19E
;   (0xA32A), p11:A264 (0xA352); el tamano es lo que hay hasta lo siguiente,
;   no sale de recorrerlo; lo leen p11:A2BB, p11:A19E, p11:A264 (388 bytes)
;   0xa2f6..0xa47a  (388 bytes)
DATA_resto_A2F6:
	defb 0feh,0a2h,004h,0a3h,00eh,0a3h,018h,0a3h,002h,002h,010h,011h,024h,01fh,004h,002h	; a2f6  ............$...
	defb 010h,011h,014h,012h,023h,01eh,024h,022h,002h,004h,010h,015h,01bh,017h,024h,021h	; a306  ....#.$"......$!
	defb 020h,028h,004h,004h,010h,016h,019h,017h,025h,013h,01ah,01ch,026h,000h,000h,018h	; a316   (......%...&...
	defb 027h,000h,000h,01dh,0cch,0edh,000h,000h,04eh,0edh,003h,000h,0d2h,0edh,000h,000h	; a326  '.......N.......
	defb 04ch,0edh,001h,000h,052h,0edh,001h,000h,0ceh,0edh,002h,000h,00ch,0eeh,001h,000h	; a336  L...R...........
	defb 00eh,0eeh,000h,000h,010h,0eeh,000h,000h,012h,0eeh,001h,000h,00fh,029h,091h,0ffh	; a346  .............)..
	defb 008h,054h,055h,056h,057h,058h,059h,05ah,077h,0dfh,0c2h,0c1h,0c0h,0bfh,0beh,0bdh	; a356  .TUVWXYZw.......
	defb 0bch,0ffh,008h,02ah,02bh,02ch,053h,000h,000h,000h,000h,000h,000h,000h,000h,0bbh	; a366  ...*+,S.........
	defb 094h,093h,092h,0ffh,007h,05bh,052h,05ch,02dh,05dh,000h,000h,000h,000h,000h,000h	; a376  .....[R\-]......
	defb 000h,000h,0c5h,095h,0c4h,0bah,0c3h,0ffh,007h,02eh,051h,050h,02fh,030h,000h,000h	; a386  ..........QP/0..
	defb 000h,000h,000h,000h,000h,000h,098h,097h,0b8h,0b9h,096h,0ffh,006h,05eh,05fh,04dh	; a396  .............^_M
	defb 04eh,04fh,031h,000h,000h,000h,000h,000h,000h,000h,000h,099h,0b7h,0b6h,0b5h,0c7h	; a3a6  NO1.............
	defb 0c6h,0ffh,006h,032h,040h,04bh,000h,063h,064h,000h,000h,000h,000h,000h,000h,000h	; a3b6  ...2@K.cd.......
	defb 000h,0cch,0cbh,000h,0b3h,0b4h,09ah,0ffh,006h,060h,061h,062h,065h,000h,066h,000h	; a3c6  .........`abe.f.
	defb 000h,000h,000h,000h,000h,000h,000h,0ceh,000h,0cdh,0cah,0c9h,0c8h,0ffh,006h,033h	; a3d6  ...............3
	defb 067h,034h,068h,000h,049h,000h,000h,000h,000h,000h,000h,000h,000h,0b1h,000h,0d0h	; a3e6  g4h.I...........
	defb 09ch,0cfh,09bh,0ffh,006h,048h,069h,04ah,000h,000h,06ah,000h,000h,000h,000h,000h	; a3f6  .....HiJ..j.....
	defb 000h,000h,000h,0d2h,000h,000h,0b2h,0d1h,0b0h,0ffh,006h,06bh,035h,047h,000h,000h	; a406  ...........k5G..
	defb 06ch,000h,000h,000h,000h,000h,000h,000h,000h,0d4h,000h,000h,0afh,09dh,0d3h,0ffh	; a416  l...............
	defb 006h,06dh,036h,037h,000h,06eh,06fh,000h,000h,000h,000h,000h,000h,000h,000h,0d7h	; a426  .m67.no.........
	defb 0d6h,000h,09fh,09eh,0d5h,0ffh,006h,070h,038h,039h,000h,03ah,071h,046h,03bh,03ch	; a436  .......p89.:qF.<
	defb 000h,000h,0a4h,0a3h,0aeh,0d9h,0a2h,000h,0a1h,0a0h,0d8h,0ffh,006h,03dh,03eh,03fh	; a446  .............=>?
	defb 040h,072h,041h,073h,045h,000h,000h,000h,000h,0adh,0dbh,0a9h,0dah,0a8h,0a7h,0a6h	; a456  @rAsE...........
	defb 0a5h,0ffh,008h,074h,075h,076h,042h,043h,044h,000h,000h,000h,000h,0ach,0abh,0aah	; a466  ...tuvBCD.......
	defb 0deh,0ddh,0dch,0ffh	; a476

; ======================================================================
; CODIGO 0xa47a..0xa483  (9 bytes)
; ======================================================================


objeto_09:		; la rutina de la clase 9 de los objetos de 0xEA00 (p10:8CCD)
	call parpadeo_de_cinco_sprites		;a47a   ; parpadeo_de_cinco_sprites: el color de los 5 sprites de 0xF060 segun el cuadro (p11:A522)
	ld a,(ix+001h)		;a47d   ; lee el paso del objeto
	call 040abh		;a480   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A483: tabla de 27 palabras del despachador (call 0x408D en
;   0xA480); lo leen L_40AB (54 bytes)
;   0xa483..0xa4b9  (54 bytes)
DATA_saltos_A483:
	defb 02ah,0a5h	; a483
	defb 05ah,0a5h	; a485
	defb 074h,0a5h	; a487
	defb 07bh,0a5h	; a489
	defb 08bh,0a5h	; a48b
	defb 0afh,0a5h	; a48d
	defb 0c8h,0a5h	; a48f
	defb 0d5h,0a5h	; a491
	defb 0eah,0a5h	; a493
	defb 01eh,0a6h	; a495
	defb 027h,0b8h	; a497
	defb 06fh,0b8h	; a499
	defb 012h,0b9h	; a49b
	defb 013h,0b9h	; a49d
	defb 03ah,0b9h	; a49f
	defb 054h,0b9h	; a4a1
	defb 06eh,0b9h	; a4a3
	defb 089h,0b9h	; a4a5
	defb 09ch,0b9h	; a4a7
	defb 0bfh,0b9h	; a4a9
	defb 0c0h,0b9h	; a4ab
	defb 0d7h,0b9h	; a4ad
	defb 0f0h,0b9h	; a4af
	defb 0ffh,0b9h	; a4b1
	defb 018h,0bah	; a4b3
	defb 02ah,0bah	; a4b5
	defb 039h,0bah	; a4b7

; ======================================================================
; CODIGO 0xa4b9..0xa4ef  (54 bytes)
; ======================================================================


L_A4B9:
	inc (ix+001h)		;a4b9   ; sube el paso del objeto
	ret			;a4bc
sprites_que_bajan:		; los 5 sprites de 0xF060 bajan uno; NZ si queda alguno
	ld hl,0f060h		;a4bd   ; apunta a los sprites de los proyectiles (desde el 24)
	ld de,00004h		;a4c0
	ld b,005h		;a4c3
	ld c,000h		;a4c5
L_A4C7:
	ld a,(hl)			;a4c7
	cp 0f0h		;a4c8
	jr z,L_A4CE		;a4ca
	dec (hl)			;a4cc
	inc c			;a4cd
L_A4CE:
	add hl,de			;a4ce
	djnz L_A4C7		;a4cf
	ld a,c			;a4d1
	or a			;a4d2
	ret			;a4d3
esconde_cinco_sprites:		; los 5 sprites de 0xF060 escondidos
	ld hl,0f060h		;a4d4   ; apunta a los sprites de los proyectiles (desde el 24)
	ld de,0f061h		;a4d7
	ld bc,00013h		;a4da
	ld a,0e0h		;a4dd
	ld (hl),a			;a4df
	ldir		;a4e0
	ret			;a4e2
pon_cinco_sprites:		; los 5 sprites de p11:A4EF en 0xF060
	ld hl,0a4efh		;a4e3
	ld de,0f060h		;a4e6   ; apunta a los sprites de los proyectiles (desde el 24)
	ld bc,00014h		;a4e9
	ldir		;a4ec
	ret			;a4ee

; ----------------------------------------------------------------------
; DATOS resto_A4EF: lo apuntan con el banco puesto p11:A4E3 (0xA4EF); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:A4E3 (20 bytes)
;   0xa4ef..0xa503  (20 bytes)
DATA_resto_A4EF:
	defb 02ah,070h,078h,000h,02ah,080h,07ch,000h,041h,050h,06ch,000h,041h,0a0h,070h,000h	; a4ef  *px.*.|.APl.A.p.
	defb 058h,078h,074h,000h	; a4ff

; ======================================================================
; CODIGO 0xa503..0xa522  (31 bytes)
; ======================================================================


parpadeo_de_cinco_sprites:		; el color de los 5 sprites de 0xF060 segun el cuadro (p11:A522)
	ld a,(ix+001h)		;a503   ; lee el paso del objeto
	cp 00ah		;a506
	ret nc			;a508
	ld a,(0e003h)		;a509   ; lee la cuenta de cuadros
	and 007h		;a50c
	ld hl,0a522h		;a50e
	call 040a1h		;a511   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;a514
	ld hl,0f063h		;a515
	ld b,005h		;a518
	ld de,00004h		;a51a
L_A51D:
	ld (hl),a			;a51d
	add hl,de			;a51e
	djnz L_A51D		;a51f
	ret			;a521

; ----------------------------------------------------------------------
; DATOS resto_A522: lo apuntan con el banco puesto p11:A50E (0xA522); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:A50E (8 bytes)
;   0xa522..0xa52a  (8 bytes)
DATA_resto_A522:
	defb 006h,008h,009h,00ah,009h,008h,006h,000h	; a522  ........

; ======================================================================
; CODIGO 0xa52a..0xa655  (299 bytes)
; ======================================================================


L_A52A:
	call pon_cinco_sprites		;a52a   ; pon_cinco_sprites: los 5 sprites de p11:A4EF en 0xF060
	ld hl,0bdaah		;a52d
	ld de,0ed00h		;a530   ; apunta a los nombres de la pantalla (32 x 24)
	ld bc,001e0h		;a533
	ldir		;a536
	call 050ebh		;a538   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	ld hl,00079h		;a53b
	ld (0eb1bh),hl		;a53e   ; guarda el nombre de quien habla (5 bytes) y el byte siguiente (16 bits)
	ld hl,00077h		;a541
	ld (0eb1dh),hl		;a544
	ld a,0ffh		;a547
	ld (0eb1fh),a		;a549
	ld hl,0000ch		;a54c
	ld (0e3e0h),hl		;a54f   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	xor a			;a552
	ld (0e3b1h),a		;a553   ; guarda el paso comun de la escena de accion
	inc (ix+001h)		;a556   ; sube el paso del objeto
	ret			;a559
L_A55A:
	ld c,000h		;a55a
	call 04313h		;a55c   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;a55f   ; lee el texto en marcha
	or a			;a562
	ret nz			;a563
	ld a,(0e887h)		;a564   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;a567
	ret nz			;a568
	call 050ebh		;a569   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	ld (ix+010h),0a0h		;a56c
	inc (ix+001h)		;a570   ; sube el paso del objeto
	ret			;a573
L_A574:
	call 05e45h		;a574   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
	inc (ix+001h)		;a577   ; sube el paso del objeto
	ret			;a57a
L_A57B:
	call lanza_objeto_18		;a57b   ; lanza_objeto_18: un objeto de clase 0x18 en (0xF0, 0xF0)
	dec (ix+010h)		;a57e
	ret nz			;a581
	ld a,001h		;a582
	ld (0e3b1h),a		;a584   ; guarda el paso comun de la escena de accion
	inc (ix+001h)		;a587   ; sube el paso del objeto
	ret			;a58a
L_A58B:
	ld a,(0e3b1h)		;a58b   ; lee el paso comun de la escena de accion
	cp 002h		;a58e
	ret nz			;a590
	push ix		;a591
	ld b,007h		;a593
	ld ix,0ea20h		;a595   ; apunta a los 7 objetos lanzados (0x20 bytes cada uno)
L_A599:
	push bc			;a599
	ld a,(ix+000h)		;a59a   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	or a			;a59d
	call nz,borra_objeto		;a59e   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
	ld de,00014h		;a5a1
	add ix,de		;a5a4
	pop bc			;a5a6
	djnz L_A599		;a5a7
	pop ix		;a5a9
	inc (ix+001h)		;a5ab
	ret			;a5ae
L_A5AF:
	ld c,001h		;a5af
	call 04313h		;a5b1   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;a5b4   ; lee el texto en marcha
	or a			;a5b7
	ret nz			;a5b8
	ld a,(0e887h)		;a5b9   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;a5bc
	ret nz			;a5bd
	call 050ebh		;a5be   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	call lanza_objeto_19		;a5c1   ; lanza_objeto_19: un objeto de clase 0x19 en (0x60, 0xF0)
	inc (ix+001h)		;a5c4   ; sube el paso del objeto
	ret			;a5c7
L_A5C8:
	ld a,(0e3b1h)		;a5c8   ; lee el paso comun de la escena de accion
	cp 003h		;a5cb
	ret nz			;a5cd
	inc (ix+001h)		;a5ce   ; sube el paso del objeto
	call 06032h		;a5d1   ; sonido_5a: pide el sonido 0x5A
	ret			;a5d4
L_A5D5:
	call destello		;a5d5   ; destello: el color del borde alterna 0x0F y 0x00 (VDP R#7)
	ld c,003h		;a5d8
	call 04313h		;a5da   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;a5dd   ; lee el texto en marcha
	or a			;a5e0
	ret nz			;a5e1
	inc (ix+001h)		;a5e2   ; sube el paso del objeto
	ld (ix+01fh),03ch		;a5e5   ; la variable 0x1F del objeto (en los jefes, donde va su dibujo) = 0x3C
	ret			;a5e9
L_A5EA:
	call destello		;a5ea   ; destello: el color del borde alterna 0x0F y 0x00 (VDP R#7)
	dec (ix+01fh)		;a5ed   ; baja la variable 0x1F del objeto (en los jefes, donde va su dibujo)
	ret nz			;a5f0
	call borde_negro		;a5f1   ; borde_negro: el color del borde a 0xE0
	ld a,004h		;a5f4
	ld (0e3b1h),a		;a5f6   ; guarda el paso comun de la escena de accion
	ld hl,0ed00h		;a5f9   ; apunta a los nombres de la pantalla (32 x 24)
	ld de,0ed01h		;a5fc
	xor a			;a5ff
	ld (hl),a			;a600
	ld bc,001dfh		;a601
	ldir		;a604
	call 05e45h		;a606   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
	call 050ebh		;a609   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	inc (ix+001h)		;a60c   ; sube el paso del objeto
	ret			;a60f
destello:		; el color del borde alterna 0x0F y 0x00 (VDP R#7)
	ld a,(0e003h)		;a610   ; lee la cuenta de cuadros
	and 001h		;a613
	ld b,0efh		;a615
	jr z,L_A61B		;a617
borde_negro:		; el color del borde a 0xE0
	ld b,0e0h		;a619
L_A61B:
	jp 058a7h		;a61b   ; color_de_borde: VDP R#7 = B
L_A61E:
	call sprites_que_bajan		;a61e   ; sprites_que_bajan: los 5 sprites de 0xF060 bajan uno; NZ si queda alguno
	ret nz			;a621
	ld a,(0e3b1h)		;a622   ; lee el paso comun de la escena de accion
	cp 005h		;a625
	ret nz			;a627
	call esconde_cinco_sprites		;a628   ; esconde_cinco_sprites: los 5 sprites de 0xF060 escondidos
	ld hl,00155h		;a62b
	ld (0e363h),hl		;a62e   ; guarda el tipo del personaje de enfrente
	ld hl,0ea00h		;a631   ; apunta a el rival de la escena (objeto 0, 0x20 bytes)
	ld (0e365h),hl		;a634   ; guarda la ficha del personaje de enfrente
	ld a,002h		;a637
	ld (0e360h),a		;a639   ; guarda el modo dentro de la sala (tabla p00:5A83)
	xor a			;a63c
	ld (0e8a6h),a		;a63d   ; guarda el actor de enfrente (0xFF: ninguno)
	ld a,001h		;a640
	ld (0e8a0h),a		;a642   ; guarda el paso del menu (tabla p00:5231)
	call 050ebh		;a645   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	inc (ix+001h)		;a648   ; sube el paso del objeto
	ret			;a64b
objeto_24:		; la rutina de la clase 24 de los objetos de 0xEA00 (p10:8CCD)
	call objeto_avanza_xy		;a64c   ; objeto_avanza_xy: X y luego Y con su velocidad
	ld a,(ix+001h)		;a64f   ; lee el paso del objeto
	call 040abh		;a652   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A655: tabla de 2 palabras del despachador (call 0x408D en
;   0xA652); lo leen L_40AB (4 bytes)
;   0xa655..0xa659  (4 bytes)
DATA_saltos_A655:
	defb 059h,0a6h	; a655
	defb 09ah,0a6h	; a657

; ======================================================================
; CODIGO 0xa659..0xa692  (57 bytes)
; ======================================================================


L_A659:
	call 06037h		;a659   ; sonido_43: pide el sonido 0x43
	ld (ix+00ah),01dh		;a65c   ; el fotograma del objeto = 0x1D
	ld a,r		;a660
	ld b,a			;a662
	ld a,(0e003h)		;a663   ; lee la cuenta de cuadros
	xor b			;a666
	ld b,a			;a667
	and 0f0h		;a668
	cp 020h		;a66a
	jr nc,L_A670		;a66c
	ld a,020h		;a66e
L_A670:
	cp 0e0h		;a670
	jr c,L_A676		;a672
	ld a,0e0h		;a674
L_A676:
	ld (ix+009h),a		;a676   ; guarda la X del objeto
	ld (ix+007h),010h		;a679   ; la Y del objeto = 0x10
	ld a,b			;a67d
	and 007h		;a67e
	ld hl,0a692h		;a680
	call 040a1h		;a683   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;a686
	ld (ix+005h),a		;a687   ; guarda la velocidad X del objeto (alta)
	ld (ix+003h),008h		;a68a   ; la velocidad Y del objeto (alta) = 0x08
	inc (ix+001h)		;a68e   ; sube el paso del objeto
	ret			;a691

; ----------------------------------------------------------------------
; DATOS resto_A692: lo apuntan con el banco puesto p11:A680 (0xA692); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:A680 (8 bytes)
;   0xa692..0xa69a  (8 bytes)
DATA_resto_A692:
	defb 000h,0fch,0fdh,0feh,000h,004h,003h,002h	; a692  ........

; ======================================================================
; CODIGO 0xa69a..0xa6c7  (45 bytes)
; ======================================================================


L_A69A:
	push ix		;a69a
	pop hl			;a69c
	add hl,hl			;a69d
	add hl,hl			;a69e
	add hl,hl			;a69f
	ld a,h			;a6a0
	and 007h		;a6a1
	ld b,a			;a6a3
	ld a,(0e003h)		;a6a4   ; lee la cuenta de cuadros
	add a,b			;a6a7
	and 003h		;a6a8
	ld hl,0a6c7h		;a6aa
	call 040a1h		;a6ad   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;a6b0
	ld (ix+00ah),a		;a6b1   ; guarda el fotograma del objeto
	ld a,(ix+009h)		;a6b4   ; lee la X del objeto
	add a,010h		;a6b7
	cp 020h		;a6b9
	jp c,borra_objeto		;a6bb   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
	ld a,(ix+007h)		;a6be   ; lee la Y del objeto
	cp 080h		;a6c1
	ret c			;a6c3
	jp borra_objeto		;a6c4   ; borra_objeto: los 0x20 bytes de la ficha IX a cero

; ----------------------------------------------------------------------
; DATOS resto_A6C7: lo apuntan con el banco puesto p11:A6AA (0xA6C7); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:A6AA (4 bytes)
;   0xa6c7..0xa6cb  (4 bytes)
DATA_resto_A6C7:
	defb 01dh,01eh,01fh,01eh	; a6c7

; ======================================================================
; CODIGO 0xa6cb..0xa6d1  (6 bytes)
; ======================================================================


objeto_25:		; la rutina de la clase 25 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(ix+001h)		;a6cb   ; lee el paso del objeto
	call 040abh		;a6ce   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A6D1: tabla de 3 palabras del despachador (call 0x408D en
;   0xA6CE); lo leen L_40AB (6 bytes)
;   0xa6d1..0xa6d7  (6 bytes)
DATA_saltos_A6D1:
	defb 0d7h,0a6h	; a6d1
	defb 0e3h,0a6h	; a6d3
	defb 004h,0a7h	; a6d5

; ======================================================================
; CODIGO 0xa6d7..0xa785  (174 bytes)
; ======================================================================


L_A6D7:
	ld (ix+00ah),01ah		;a6d7   ; el fotograma del objeto = 0x1A
	ld (ix+005h),0f8h		;a6db   ; la velocidad X del objeto (alta) = 0xF8
	inc (ix+001h)		;a6df   ; sube el paso del objeto
	ret			;a6e2
L_A6E3:
	ld a,(0e003h)		;a6e3   ; lee la cuenta de cuadros
	and 001h		;a6e6
	ld a,01ah		;a6e8
	jr z,L_A6ED		;a6ea
	inc a			;a6ec
L_A6ED:
	ld (ix+00ah),a		;a6ed   ; guarda el fotograma del objeto
	call objeto_avanza_x		;a6f0   ; objeto_avanza_x: (ix+8/9) += (ix+4/5)
	ld a,(ix+009h)		;a6f3   ; lee la X del objeto
	cp 090h		;a6f6
	ret nc			;a6f8
	ld (ix+009h),088h		;a6f9   ; la X del objeto = 0x88
	inc (ix+001h)		;a6fd   ; sube el paso del objeto
	call 0603ch		;a700   ; sonido_44: pide el sonido 0x44
	ret			;a703
L_A704:
	ld a,(0ea01h)		;a704   ; lee el paso del rival
	cp 009h		;a707
	jr z,L_A713		;a709
	cp 008h		;a70b
	ret nz			;a70d
	ld (ix+00ah),01ch		;a70e   ; el fotograma del objeto = 0x1C
	ret			;a712
L_A713:
	ld (ix+00ah),01ah		;a713   ; el fotograma del objeto = 0x1A
	ret			;a717
choques_de_la_escena:		; los choques de los 8 objetos de 0xEA00 con el personaje (bit 0 de +0x0D) y con los proyectiles (bit 1)
	ld a,(0e3fch)		;a718   ; lee los choques de la escena estan en marcha
	or a			;a71b
	ret z			;a71c
	ld ix,0ea00h		;a71d   ; apunta a el rival de la escena (objeto 0, 0x20 bytes)
	ld b,008h		;a721
L_A723:
	push bc			;a723
	ld a,(ix+000h)		;a724   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	and a			;a727
	jr z,L_A73E		;a728
	bit 0,(ix+00dh)		;a72a   ; mira el bit 0 de los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles)
	call nz,choque_con_el_personaje		;a72e   ; choque_con_el_personaje: si el objeto toca al personaje (medidas p11:A7ED): su rutina (p11:A785); tras un golpe, 0x40 o 0x20 cuadros sin dano
	ld a,(ix+00bh)		;a731   ; lee la vida del objeto
	and a			;a734
	jr z,L_A73E		;a735
	bit 1,(ix+00dh)		;a737   ; mira el bit 1 de los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles)
	call nz,choque_con_los_proyectiles		;a73b   ; choque_con_los_proyectiles: mira los 3 proyectiles de 0xEC30 contra el objeto
L_A73E:
	ld de,00020h		;a73e
	add ix,de		;a741
	pop bc			;a743
	djnz L_A723		;a744
	ret			;a746
choque_con_el_personaje:		; si el objeto toca al personaje (medidas p11:A7ED): su rutina (p11:A785); tras un golpe, 0x40 o 0x20 cuadros sin dano
	ld hl,0e3d8h		;a747   ; los cuadros sin dano tras un golpe
	ld a,(hl)			;a74a
	and a			;a74b
	jr z,L_A750		;a74c
	dec (hl)			;a74e   ; cuentan
	ret nz			;a74f
L_A750:
	ld a,(0e3e5h)		;a750   ; lee la Y del personaje en la escena de accion
	ld e,a			;a753
	ld a,(0e3e7h)		;a754   ; lee la X del personaje en la escena de accion
	ld d,a			;a757
	ld a,(ix+000h)		;a758   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	dec a			;a75b
	ld hl,0a7edh		;a75c
	add a,a			;a75f
	call 040a1h		;a760   ; hl_mas_a: HL = HL + A
	push hl			;a763
	pop iy		;a764
	ld a,e			;a766
	sub (ix+007h)		;a767   ; le resta la Y del objeto
	jr nc,L_A76E		;a76a
	neg		;a76c
L_A76E:
	cp (iy+000h)		;a76e
	ret nc			;a771
	ld a,d			;a772
	sub (ix+009h)		;a773   ; le resta la X del objeto
	jr nc,L_A77A		;a776
	neg		;a778
L_A77A:
	cp (iy+001h)		;a77a
	ret nc			;a77d
	ld a,(ix+000h)		;a77e   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	dec a			;a781
	call 040abh		;a782   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A785: tabla de 22 palabras del despachador (call 0x408D en
;   0xA782); lo leen L_40AB (44 bytes)
;   0xa785..0xa7b1  (44 bytes)
DATA_saltos_A785:
	defb 0b1h,0a7h	; a785
	defb 0b1h,0a7h	; a787
	defb 0b1h,0a7h	; a789
	defb 0b1h,0a7h	; a78b
	defb 0b1h,0a7h	; a78d
	defb 0b1h,0a7h	; a78f
	defb 0b5h,0a7h	; a791
	defb 0b1h,0a7h	; a793
	defb 0b1h,0a7h	; a795
	defb 0b5h,0a7h	; a797
	defb 0cdh,0a7h	; a799
	defb 0e5h,0a7h	; a79b
	defb 0cdh,0a7h	; a79d
	defb 0e5h,0a7h	; a79f
	defb 0e5h,0a7h	; a7a1
	defb 0cdh,0a7h	; a7a3
	defb 0e5h,0a7h	; a7a5
	defb 0e5h,0a7h	; a7a7
	defb 0cdh,0a7h	; a7a9
	defb 0cdh,0a7h	; a7ab
	defb 0cdh,0a7h	; a7ad
	defb 0b5h,0a7h	; a7af

; ======================================================================
; CODIGO 0xa7b1..0xa7ed  (60 bytes)
; ======================================================================


L_A7B1:
	call 0459ch		;a7b1   ; sonido_23: pide el sonido 0x23
	ret			;a7b4
L_A7B5:
	call 0459ch		;a7b5   ; sonido_23: pide el sonido 0x23
	ld a,(0e9e4h)		;a7b8   ; lee el objeto 10 (bit 0: se lleva)
	or a			;a7bb
	jr z,L_A7C5		;a7bc
	ld hl,0e3b4h		;a7be
	inc (hl)			;a7c1
	ld a,(hl)			;a7c2
	rra			;a7c3
	ret nc			;a7c4
L_A7C5:
	ld hl,0e3f6h		;a7c5   ; apunta a la vida en la escena de accion
	dec (hl)			;a7c8
	ld a,040h		;a7c9
	jr L_A7E9		;a7cb
L_A7CD:
	call 0459ch		;a7cd   ; sonido_23: pide el sonido 0x23
	ld a,(0e9e4h)		;a7d0   ; lee el objeto 10 (bit 0: se lleva)
	or a			;a7d3
	jr z,L_A7DD		;a7d4
	ld hl,0e3b4h		;a7d6
	inc (hl)			;a7d9
	ld a,(hl)			;a7da
	rra			;a7db
	ret nc			;a7dc
L_A7DD:
	ld hl,0e3f6h		;a7dd   ; apunta a la vida en la escena de accion
	dec (hl)			;a7e0
	ld a,020h		;a7e1
	jr L_A7E9		;a7e3
L_A7E5:
	call 0459ch		;a7e5   ; sonido_23: pide el sonido 0x23
	ret			;a7e8
L_A7E9:
	ld (0e3d8h),a		;a7e9
	ret			;a7ec

; ----------------------------------------------------------------------
; DATOS resto_A7ED: lo apuntan con el banco puesto p11:A75C (0xA7ED); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:A75C (44 bytes)
;   0xa7ed..0xa819  (44 bytes)
DATA_resto_A7ED:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,018h,020h,000h,000h	; a7ed  ............. ..
	defb 000h,000h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,008h,008h	; a7fd  ................
	defb 010h,010h,010h,010h,008h,008h,008h,008h,008h,008h,010h,010h	; a80d  ............

; ======================================================================
; CODIGO 0xa819..0xa867  (78 bytes)
; ======================================================================


choque_con_los_proyectiles:		; mira los 3 proyectiles de 0xEC30 contra el objeto
	ld de,0ec30h		;a819   ; apunta a los 3 proyectiles (16 bytes cada uno)
	ld b,003h		;a81c
L_A81E:
	push bc			;a81e
	ld a,(de)			;a81f
	push de			;a820
	and a			;a821
	call nz,choque_con_un_proyectil		;a822   ; choque_con_un_proyectil: si el proyectil DE toca al objeto (medidas p11:A96F): su rutina (p11:A867)
	pop de			;a825
	ld a,010h		;a826
	call 040a6h		;a828   ; de_mas_a: DE = DE + A
	pop bc			;a82b
	djnz L_A81E		;a82c
	ret			;a82e
choque_con_un_proyectil:		; si el proyectil DE toca al objeto (medidas p11:A96F): su rutina (p11:A867)
	ld (0e8e0h),de		;a82f   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	ld a,(ix+000h)		;a833   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	dec a			;a836
	ld hl,0a96fh		;a837
	add a,a			;a83a
	call 040a1h		;a83b   ; hl_mas_a: HL = HL + A
	push hl			;a83e
	pop iy		;a83f
	ld a,009h		;a841
	call 040a6h		;a843   ; de_mas_a: DE = DE + A
	ld a,(de)			;a846
	sub (ix+007h)		;a847   ; le resta la Y del objeto
	jr nc,L_A84E		;a84a
	neg		;a84c
L_A84E:
	cp (iy+000h)		;a84e
	ret nc			;a851
	inc de			;a852
	inc de			;a853
	ld a,(de)			;a854
	sub (ix+009h)		;a855   ; le resta la X del objeto
	jr nc,L_A85C		;a858
	neg		;a85a
L_A85C:
	cp (iy+001h)		;a85c
	ret nc			;a85f
	ld a,(ix+000h)		;a860   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	dec a			;a863
	call 040abh		;a864   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A867: tabla de 22 palabras del despachador (call 0x408D en
;   0xA864); lo leen L_40AB (44 bytes)
;   0xa867..0xa893  (44 bytes)
DATA_saltos_A867:
	defb 093h,0a8h	; a867
	defb 097h,0a8h	; a869
	defb 0b5h,0a8h	; a86b
	defb 0cfh,0a8h	; a86d
	defb 0f1h,0a8h	; a86f
	defb 0f5h,0a8h	; a871
	defb 041h,0a9h	; a873
	defb 063h,0a9h	; a875
	defb 063h,0a9h	; a877
	defb 067h,0a9h	; a879
	defb 067h,0a9h	; a87b
	defb 06eh,0a9h	; a87d
	defb 06eh,0a9h	; a87f
	defb 06eh,0a9h	; a881
	defb 06eh,0a9h	; a883
	defb 06eh,0a9h	; a885
	defb 06eh,0a9h	; a887
	defb 06eh,0a9h	; a889
	defb 06eh,0a9h	; a88b
	defb 06eh,0a9h	; a88d
	defb 06eh,0a9h	; a88f
	defb 067h,0a9h	; a891

; ======================================================================
; CODIGO 0xa893..0xa96f  (220 bytes)
; ======================================================================


L_A893:
	call 0602dh		;a893   ; sonido_12: pide el sonido 0x12
	ret			;a896
L_A897:
	call 0602dh		;a897   ; sonido_12: pide el sonido 0x12
	ld de,(0e8e0h)		;a89a   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	xor a			;a89e
	ld (de),a			;a89f
	ld (ix+001h),004h		;a8a0   ; el paso del objeto = 0x04
	dec (ix+00bh)		;a8a4   ; baja la vida del objeto
	ret nz			;a8a7
	ld (ix+001h),005h		;a8a8   ; el paso del objeto = 0x05
	ld a,040h		;a8ac
	ld (0e004h),a		;a8ae   ; guarda la espera del estado, en cuadros
	call 04560h		;a8b1   ; sonido_53: pide el sonido 0x53
	ret			;a8b4
L_A8B5:
	call 0602dh		;a8b5   ; sonido_12: pide el sonido 0x12
	ld de,(0e8e0h)		;a8b8   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	xor a			;a8bc
	ld (de),a			;a8bd
	dec (ix+00bh)		;a8be   ; baja la vida del objeto
	ret nz			;a8c1
	ld (ix+001h),002h		;a8c2   ; el paso del objeto = 0x02
	ld a,040h		;a8c6
	ld (0e004h),a		;a8c8   ; guarda la espera del estado, en cuadros
	call 04560h		;a8cb   ; sonido_53: pide el sonido 0x53
	ret			;a8ce
L_A8CF:
	call 0602dh		;a8cf   ; sonido_12: pide el sonido 0x12
	ld de,(0e8e0h)		;a8d2   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	xor a			;a8d6
	ld (de),a			;a8d7
	inc (ix+01ch)		;a8d8   ; sube la variable 0x1C del objeto (cada clase la usa a su manera)
	ld a,(ix+01ch)		;a8db   ; lee la variable 0x1C del objeto (cada clase la usa a su manera)
	rra			;a8de
	ret c			;a8df
	dec (ix+00bh)		;a8e0   ; baja la vida del objeto
	ret nz			;a8e3
	ld (ix+001h),004h		;a8e4   ; el paso del objeto = 0x04
	ld a,040h		;a8e8
	ld (0e004h),a		;a8ea   ; guarda la espera del estado, en cuadros
	call 04560h		;a8ed   ; sonido_53: pide el sonido 0x53
	ret			;a8f0
L_A8F1:
	call 0602dh		;a8f1   ; sonido_12: pide el sonido 0x12
	ret			;a8f4
L_A8F5:
	call 0602dh		;a8f5   ; sonido_12: pide el sonido 0x12
	ld de,(0e8e0h)		;a8f8   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	xor a			;a8fc
	ld (de),a			;a8fd
	ld a,(ix+007h)		;a8fe   ; lee la Y del objeto
	cp 088h		;a901
	ld hl,00000h		;a903
	ld de,00403h		;a906
	jr z,L_A91C		;a909
	ld a,088h		;a90b
	sub (ix+007h)		;a90d   ; le resta la Y del objeto
	srl a		;a910
	srl a		;a912
	srl a		;a914
	ld e,a			;a916
	inc e			;a917
	ld d,003h		;a918
	ld h,008h		;a91a
L_A91C:
	ld (ix+01bh),e		;a91c   ; guarda la cuenta del objeto
	ld (ix+01dh),d		;a91f   ; guarda la variable 0x1D del objeto (en los jefes, la accion)
	ld (ix+002h),l		;a922   ; guarda la velocidad Y del objeto
	ld (ix+003h),h		;a925   ; guarda la velocidad Y del objeto (alta)
	ld (ix+004h),000h		;a928   ; la velocidad X del objeto = 0x00
	ld (ix+005h),000h		;a92c   ; la velocidad X del objeto (alta) = 0x00
	dec (ix+00bh)		;a930   ; baja la vida del objeto
	ret nz			;a933
	ld (ix+001h),002h		;a934   ; el paso del objeto = 0x02
	ld a,040h		;a938
	ld (0e004h),a		;a93a   ; guarda la espera del estado, en cuadros
	call 04560h		;a93d   ; sonido_53: pide el sonido 0x53
	ret			;a940
L_A941:
	call 0602dh		;a941   ; sonido_12: pide el sonido 0x12
	ld de,(0e8e0h)		;a944   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	xor a			;a948
	ld (de),a			;a949
	inc (ix+01ch)		;a94a   ; sube la variable 0x1C del objeto (cada clase la usa a su manera)
	ld a,(ix+01ch)		;a94d   ; lee la variable 0x1C del objeto (cada clase la usa a su manera)
	rra			;a950
	ret c			;a951
	dec (ix+00bh)		;a952   ; baja la vida del objeto
	ret nz			;a955
	ld (ix+001h),002h		;a956   ; el paso del objeto = 0x02
	ld a,040h		;a95a
	ld (0e004h),a		;a95c   ; guarda la espera del estado, en cuadros
	call 04560h		;a95f   ; sonido_53: pide el sonido 0x53
	ret			;a962
L_A963:
	call 0602dh		;a963   ; sonido_12: pide el sonido 0x12
	ret			;a966
L_A967:
	ld de,(0e8e0h)		;a967   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	xor a			;a96b
	ld (de),a			;a96c
	ret			;a96d
L_A96E:
	ret			;a96e

; ----------------------------------------------------------------------
; DATOS resto_A96F: lo apuntan con el banco puesto p11:A837 (0xA96F); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:A837 (44 bytes)
;   0xa96f..0xa99b  (44 bytes)
DATA_resto_A96F:
	defb 000h,000h,008h,010h,008h,010h,010h,010h,000h,000h,008h,010h,010h,010h,000h,000h	; a96f  ................
	defb 000h,000h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h	; a97f  ................
	defb 010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h	; a98f  ............

; ======================================================================
; CODIGO 0xa99b..0xa9b1  (22 bytes)
; ======================================================================


lanza_objetos:		; si el personaje no esta tocado, lo que lanza la escena (p11:A9A8)
	ld a,(0e3f7h)		;a99b   ; lee tocado en la escena de accion (parpadea)
	or a			;a99e
	ret nz			;a99f
	push ix		;a9a0
	call lanza_objetos_de_la_escena		;a9a2   ; lanza_objetos_de_la_escena: la rutina de la escena 0xE3A1 - 2 (tabla p11:A9B1)
	pop ix		;a9a5
	ret			;a9a7
lanza_objetos_de_la_escena:		; la rutina de la escena 0xE3A1 - 2 (tabla p11:A9B1)
	ld a,(0e3a1h)		;a9a8   ; lee la escena de accion (1-9)
	sub 002h		;a9ab
	ret c			;a9ad
	call 040abh		;a9ae   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A9B1: tabla de 7 palabras del despachador (call 0x408D en
;   0xA9AE); lo leen L_40AB (14 bytes)
;   0xa9b1..0xa9bf  (14 bytes)
DATA_saltos_A9B1:
	defb 01ch,0abh	; a9b1
	defb 0e4h,0a9h	; a9b3
	defb 07fh,0aah	; a9b5
	defb 09fh,0aah	; a9b7
	defb 042h,0aah	; a9b9
	defb 0bfh,0a9h	; a9bb
	defb 0e3h,0a9h	; a9bd

; ======================================================================
; CODIGO 0xa9bf..0xaa36  (119 bytes)
; ======================================================================


L_A9BF:
	ld hl,0e3a4h		;a9bf
	inc (hl)			;a9c2
	ld a,(hl)			;a9c3
	and 007h		;a9c4
	ret nz			;a9c6
	call 0600fh		;a9c7   ; sonido_0e: pide el sonido 0x0E
	ld e,(ix+007h)		;a9ca   ; lee la Y del objeto
	ld d,(ix+009h)		;a9cd   ; lee la X del objeto
	ld c,013h		;a9d0
	push de			;a9d2
	call crea_objeto		;a9d3   ; crea_objeto: un objeto de clase C en (E, D) en el primer hueco de los 7 de 0xEA20; acarreo si lo crea
	pop de			;a9d6
	ld c,014h		;a9d7
	push de			;a9d9
	call crea_objeto		;a9da   ; crea_objeto: un objeto de clase C en (E, D) en el primer hueco de los 7 de 0xEA20; acarreo si lo crea
	pop de			;a9dd
	ld c,015h		;a9de
	jp crea_objeto		;a9e0   ; crea_objeto: un objeto de clase C en (E, D) en el primer hueco de los 7 de 0xEA20; acarreo si lo crea
L_A9E3:
	ret			;a9e3
L_A9E4:
	ld hl,0e3a6h		;a9e4   ; apunta a la cuenta de lanzamientos de la escena
	dec (hl)			;a9e7
	ret nz			;a9e8
	ld a,(0ea20h)		;a9e9   ; lee los 7 objetos lanzados (0x20 bytes cada uno)
	and a			;a9ec
	jr z,L_A9F1		;a9ed
	inc (hl)			;a9ef
	ret			;a9f0
L_A9F1:
	ld (hl),018h		;a9f1   ; la siguiente vez en 0x18 cuadros
	ld a,r		;a9f3   ; al azar, un lado u otro
	bit 1,a		;a9f5
	ld a,(0ea1eh)		;a9f7   ; la posicion del primer lado
	ld hl,0ea13h		;a9fa
	ld de,0aa36h		;a9fd
	ld c,000h		;aa00
	jr z,L_AA0E		;aa02
	ld a,(0ea1fh)		;aa04   ; la del segundo
	ld hl,0ea14h		;aa07
	ld de,0aa3ch		;aa0a
	inc c			;aa0d
L_AA0E:
	ld (hl),001h		;aa0e
	add a,a			;aa10
	call 040a6h		;aa11   ; de_mas_a: DE = DE + A
	ex de,hl			;aa14
	ld e,(hl)			;aa15
	inc hl			;aa16
	ld d,(hl)			;aa17
	ld ix,0ea20h		;aa18   ; apunta a los 7 objetos lanzados (0x20 bytes cada uno)
	ld (ix+000h),00bh		;aa1c   ; la clase del objeto (tabla p10:8CCD; 0: libre) = 0x0B
	ld (ix+001h),000h		;aa20   ; el paso del objeto = 0x00
	ld (ix+006h),000h		;aa24   ; la Y del objeto (fraccion) = 0x00
	ld (ix+007h),e		;aa28   ; guarda la Y del objeto
	ld (ix+008h),000h		;aa2b   ; la X del objeto (fraccion) = 0x00
	ld (ix+009h),d		;aa2f   ; guarda la X del objeto
	ld (ix+01fh),c		;aa32   ; guarda la variable 0x1F del objeto (en los jefes, donde va su dibujo)
	ret			;aa35

; ----------------------------------------------------------------------
; DATOS resto_AA36: lo apuntan con el banco puesto p11:A9FD (0xAA36), p11:AA0A
;   (0xAA3C); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p11:A9FD, p11:AA0A (12 bytes)
;   0xaa36..0xaa42  (12 bytes)
DATA_resto_AA36:
	defb 008h,034h,028h,028h,042h,032h,008h,0bch,028h,0c8h,042h,0beh	; aa36  .4((B2..(.B.

; ======================================================================
; CODIGO 0xaa42..0xac85  (579 bytes)
; ======================================================================


L_AA42:
	call lanza_objeto_11		;aa42   ; lanza_objeto_11: si no hay proyectil ni objeto en 0xEA60, crea alli uno de clase 0x11
	ld hl,0e3a6h		;aa45   ; apunta a la cuenta de lanzamientos de la escena
	dec (hl)			;aa48
	ld a,(hl)			;aa49
	and 00fh		;aa4a
	ret nz			;aa4c
	ld a,(0ea07h)		;aa4d
	add a,008h		;aa50
	ld e,a			;aa52
	ld a,(0ea09h)		;aa53
	add a,010h		;aa56
	ld d,a			;aa58
	ld c,010h		;aa59
	exx			;aa5b
	ld ix,0ea20h		;aa5c   ; apunta a los 7 objetos lanzados (0x20 bytes cada uno)
	ld b,003h		;aa60
	jp crea_objeto_en		;aa62   ; crea_objeto_en: como p11:AB76 desde IX y B huecos
lanza_objeto_11:		; si no hay proyectil ni objeto en 0xEA60, crea alli uno de clase 0x11
	ld a,(0ec30h)		;aa65   ; lee los 3 proyectiles (16 bytes cada uno)
	or a			;aa68
	ret nz			;aa69
	ld a,(0ea60h)		;aa6a
	or a			;aa6d
	ret nz			;aa6e
	ld c,011h		;aa6f
	ld e,000h		;aa71
	ld d,020h		;aa73
	exx			;aa75
	ld ix,0ea60h		;aa76
	ld b,001h		;aa7a
	jp crea_objeto_en		;aa7c   ; crea_objeto_en: como p11:AB76 desde IX y B huecos
L_AA7F:
	ld hl,0e3a6h		;aa7f   ; apunta a la cuenta de lanzamientos de la escena
	dec (hl)			;aa82
	ld a,(hl)			;aa83
	and 00fh		;aa84
	ret nz			;aa86
	ld a,(0ea07h)		;aa87
	add a,00ch		;aa8a
	ld e,a			;aa8c
	ld a,(0ea09h)		;aa8d
	sub 008h		;aa90
	ld d,a			;aa92
	ld c,00dh		;aa93
	exx			;aa95
	ld ix,0ea20h		;aa96   ; apunta a los 7 objetos lanzados (0x20 bytes cada uno)
	ld b,003h		;aa9a
	jp crea_objeto_en		;aa9c   ; crea_objeto_en: como p11:AB76 desde IX y B huecos
L_AA9F:
	ld hl,(0e401h)		;aa9f   ; los dos actores sueltos (0xE401, 0xE402)
	ld a,h			;aaa2
	add a,l			;aaa3
	cp 002h		;aaa4   ; si ya estan los dos, nada
	ret nc			;aaa6
	ld a,(0e3aah)		;aaa7   ; quedan por soltar?
	or a			;aaaa
	ret z			;aaab
	ld hl,0e3a4h		;aaac   ; cada 64 cuadros
	inc (hl)			;aaaf
	ld a,(hl)			;aab0
	and 03fh		;aab1
	ret nz			;aab3
	ld a,(0e401h)		;aab4   ; cual sale
	or a			;aab7
	jr nz,L_AAC8		;aab8
	ld d,068h		;aaba   ; en la X 0x68
	ld a,(0e3aah)		;aabc
	rra			;aabf
	jr c,L_AACA		;aac0
	ld a,(0e402h)		;aac2
	or a			;aac5
	jr nz,L_AACA		;aac6
L_AAC8:
	ld d,090h		;aac8   ; o en la 0x90
L_AACA:
	ld e,024h		;aaca
	ld c,00eh		;aacc
	call crea_objeto		;aace   ; crea_objeto: un objeto de clase C en (E, D) en el primer hueco de los 7 de 0xEA20; acarreo si lo crea
	ret nc			;aad1
	ld hl,0e3aah		;aad2
	dec (hl)			;aad5
	ret			;aad6
L_AAD7:
	push ix		;aad7
	call lanza_objeto_0f		;aad9   ; lanza_objeto_0f: un objeto de clase 0x0F en (0x40, 0x78)
	pop ix		;aadc
	ret			;aade
lanza_objeto_0f:		; un objeto de clase 0x0F en (0x40, 0x78)
	ld c,00fh		;aadf
	ld e,040h		;aae1
	ld d,078h		;aae3
	jp crea_objeto		;aae5   ; crea_objeto: un objeto de clase C en (E, D) en el primer hueco de los 7 de 0xEA20; acarreo si lo crea
lanza_objeto_12:		; un objeto de clase 0x12 en (0x10, 0x60)
	push ix		;aae8
	ld c,012h		;aaea
	ld de,06010h		;aaec
	call crea_objeto		;aaef   ; crea_objeto: un objeto de clase C en (E, D) en el primer hueco de los 7 de 0xEA20; acarreo si lo crea
	pop ix		;aaf2
	ret			;aaf4
lanza_objeto_17:		; un objeto de clase 0x17 en (0x20, 0x78)
	push ix		;aaf5
	ld c,017h		;aaf7
	ld de,07820h		;aaf9
	call crea_objeto		;aafc   ; crea_objeto: un objeto de clase C en (E, D) en el primer hueco de los 7 de 0xEA20; acarreo si lo crea
	pop ix		;aaff
	ret			;ab01
lanza_objeto_18:		; un objeto de clase 0x18 en (0xF0, 0xF0)
	push ix		;ab02
	ld c,018h		;ab04
	ld de,0f0f0h		;ab06
	call crea_objeto		;ab09   ; crea_objeto: un objeto de clase C en (E, D) en el primer hueco de los 7 de 0xEA20; acarreo si lo crea
	pop ix		;ab0c
	ret			;ab0e
lanza_objeto_19:		; un objeto de clase 0x19 en (0x60, 0xF0)
	push ix		;ab0f
	ld c,019h		;ab11
	ld de,0f060h		;ab13   ; apunta a los sprites de los proyectiles (desde el 24)
	call crea_objeto		;ab16   ; crea_objeto: un objeto de clase C en (E, D) en el primer hueco de los 7 de 0xEA20; acarreo si lo crea
	pop ix		;ab19
	ret			;ab1b
L_AB1C:
	call lanza_objeto_0a		;ab1c   ; lanza_objeto_0a: cada 64 cuadros, sonido y un objeto de clase 0x0A en 0xEA80
	ld hl,0e3a5h		;ab1f
	inc (hl)			;ab22
	ld a,(hl)			;ab23
	and 01fh		;ab24
	ret nz			;ab26
	call 043d0h		;ab27   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 007h		;ab2a
	rla			;ab2c
	rla			;ab2d
	rla			;ab2e
	rla			;ab2f
	and 0f0h		;ab30
	add a,030h		;ab32
	ld d,a			;ab34
	ld e,a			;ab35
L_AB36:
	push de			;ab36
	call bit_de_columna		;ab37   ; bit_de_columna: A = 1 << (X / 16 - 3)
	ld b,a			;ab3a
	ld a,(0e3a7h)		;ab3b
	and b			;ab3e
	pop de			;ab3f
	jr nz,L_AB4F		;ab40
	ld e,008h		;ab42
	ld c,016h		;ab44
	exx			;ab46
	ld ix,0ea20h		;ab47   ; apunta a los 7 objetos lanzados (0x20 bytes cada uno)
	ld b,003h		;ab4b
	jr crea_objeto_en		;ab4d
L_AB4F:
	ld a,d			;ab4f
	add a,010h		;ab50
	cp 0b0h		;ab52
	jr nz,L_AB58		;ab54
	ld a,030h		;ab56
L_AB58:
	cp e			;ab58
	ld d,a			;ab59
	jr nz,L_AB36		;ab5a
	ret			;ab5c
lanza_objeto_0a:		; cada 64 cuadros, sonido y un objeto de clase 0x0A en 0xEA80
	ld hl,0e3a4h		;ab5d   ; la cuenta
	inc (hl)			;ab60
	ld a,(hl)			;ab61
	and 03fh		;ab62   ; cada 64 cuadros
	ret nz			;ab64
	call 0600fh		;ab65   ; sonido_0e: pide el sonido 0x0E
	ld c,00ah		;ab68   ; clase 0x0A en (0x50, 0xC0)
	ld de,0c050h		;ab6a
	exx			;ab6d
	ld ix,0ea80h		;ab6e
	ld b,004h		;ab72
	jr crea_objeto_en		;ab74
crea_objeto:		; un objeto de clase C en (E, D) en el primer hueco de los 7 de 0xEA20; acarreo si lo crea
	exx			;ab76
	ld ix,0ea20h		;ab77   ; apunta a los 7 objetos lanzados (0x20 bytes cada uno)
	ld b,007h		;ab7b
crea_objeto_en:		; como p11:AB76 desde IX y B huecos
	ld a,(ix+000h)		;ab7d   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	or a			;ab80
	jr nz,L_AB9A		;ab81
	exx			;ab83
	ld (ix+001h),a		;ab84   ; guarda el paso del objeto
	ld (ix+000h),c		;ab87   ; guarda la clase del objeto (tabla p10:8CCD; 0: libre)
	ld (ix+006h),000h		;ab8a   ; la Y del objeto (fraccion) = 0x00
	ld (ix+007h),e		;ab8e   ; guarda la Y del objeto
	ld (ix+008h),000h		;ab91   ; la X del objeto (fraccion) = 0x00
	ld (ix+009h),d		;ab95   ; guarda la X del objeto
	scf			;ab98
	ret			;ab99
L_AB9A:
	ld de,00020h		;ab9a   ; el siguiente hueco
	add ix,de		;ab9d
	djnz crea_objeto_en		;ab9f
	exx			;aba1
	and a			;aba2   ; sin hueco: sin acarreo
	ret			;aba3
invierte_vy_del_objeto:		; (ix+2/3) = -(ix+2/3)
	ld d,(ix+003h)		;aba4   ; lee la velocidad Y del objeto (alta)
	ld e,(ix+002h)		;aba7   ; lee la velocidad Y del objeto
	call 043adh		;abaa   ; de_negativo: DE = -DE
	ld (ix+003h),d		;abad   ; guarda la velocidad Y del objeto (alta)
	ld (ix+002h),e		;abb0   ; guarda la velocidad Y del objeto
	ret			;abb3
invierte_vx_del_objeto:		; (ix+4/5) = -(ix+4/5)
	ld d,(ix+005h)		;abb4   ; lee la velocidad X del objeto (alta)
	ld e,(ix+004h)		;abb7   ; lee la velocidad X del objeto
	call 043adh		;abba   ; de_negativo: DE = -DE
	ld (ix+005h),d		;abbd   ; guarda la velocidad X del objeto (alta)
	ld (ix+004h),e		;abc0   ; guarda la velocidad X del objeto
	ret			;abc3
objeto_avanza_xy:		; X y luego Y con su velocidad
	call objeto_avanza_x		;abc4   ; objeto_avanza_x: (ix+8/9) += (ix+4/5)
objeto_avanza_y:		; (ix+6/7) += (ix+2/3)
	ld h,(ix+007h)		;abc7   ; lee la Y del objeto
	ld l,(ix+006h)		;abca   ; lee la Y del objeto (fraccion)
	ld d,(ix+003h)		;abcd   ; lee la velocidad Y del objeto (alta)
	ld e,(ix+002h)		;abd0   ; lee la velocidad Y del objeto
	add hl,de			;abd3
	ld (ix+007h),h		;abd4   ; guarda la Y del objeto
	ld (ix+006h),l		;abd7   ; guarda la Y del objeto (fraccion)
	ret			;abda
objeto_avanza_x:		; (ix+8/9) += (ix+4/5)
	ld h,(ix+009h)		;abdb   ; lee la X del objeto
	ld l,(ix+008h)		;abde   ; lee la X del objeto (fraccion)
	ld d,(ix+005h)		;abe1   ; lee la velocidad X del objeto (alta)
	ld e,(ix+004h)		;abe4   ; lee la velocidad X del objeto
	add hl,de			;abe7
	ld (ix+009h),h		;abe8   ; guarda la X del objeto
	ld (ix+008h),l		;abeb   ; guarda la X del objeto (fraccion)
	ret			;abee
velocidades_del_objeto:		; velocidad X = DE y velocidad Y = HL
	call vx_del_objeto		;abef   ; vx_del_objeto: velocidad X = DE
	ex de,hl			;abf2
vy_del_objeto:		; velocidad Y = DE
	ld (ix+003h),d		;abf3   ; guarda la velocidad Y del objeto (alta)
	ld (ix+002h),e		;abf6   ; guarda la velocidad Y del objeto
	ret			;abf9
vx_del_objeto:		; velocidad X = DE
	ld (ix+005h),d		;abfa   ; guarda la velocidad X del objeto (alta)
	ld (ix+004h),e		;abfd   ; guarda la velocidad X del objeto
	ret			;ac00
objeto_quieto:		; las dos velocidades a cero
	call vx_del_objeto_a_cero		;ac01   ; vx_del_objeto_a_cero: la velocidad X a cero
vy_del_objeto_a_cero:		; la velocidad Y a cero
	ld de,00000h		;ac04
	jr vy_del_objeto		;ac07
vx_del_objeto_a_cero:		; la velocidad X a cero
	ld de,00000h		;ac09
	jr vx_del_objeto		;ac0c
borra_objeto:		; los 0x20 bytes de la ficha IX a cero
	push ix		;ac0e   ; HL = la ficha
	pop hl			;ac10
	ld d,h			;ac11
	ld e,l			;ac12
	inc de			;ac13
	ld (hl),000h		;ac14   ; a cero
	ld bc,0001fh		;ac16   ; los 0x20 bytes
	ldir		;ac19
	ret			;ac1b
sprites_de_objetos:		; los sprites de los 7 objetos de 0xEA20 en 0xF020 (fotogramas p11:AC85) y el resto escondidos
	ld a,(0ea00h)		;ac1c   ; lee el rival de la escena (objeto 0, 0x20 bytes)
	cp 001h		;ac1f
	ret z			;ac21
	cp 009h		;ac22
	jr nz,L_AC2C		;ac24
	ld a,(0ea01h)		;ac26   ; lee el paso del rival
	cp 00ah		;ac29
	ret nc			;ac2b
L_AC2C:
	ld ix,0ea20h		;ac2c   ; apunta a los 7 objetos lanzados (0x20 bytes cada uno)
	ld de,0f020h		;ac30   ; apunta a los sprites de los actores (desde el 8)
	ld c,008h		;ac33
	exx			;ac35
	ld b,007h		;ac36
L_AC38:
	exx			;ac38
	ld a,(ix+000h)		;ac39   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	or a			;ac3c
	jr z,L_AC46		;ac3d
	ld a,(ix+00eh)		;ac3f   ; lee si el objeto no lleva sprites (bit 0)
	rra			;ac42
	call nc,sprites_de_un_objeto		;ac43   ; sprites_de_un_objeto: las piezas del fotograma (ix+0x0A): [n] y n x [dy][dx][patron][color]
L_AC46:
	exx			;ac46
	ld de,00020h		;ac47   ; el siguiente objeto
	add ix,de		;ac4a
	djnz L_AC38		;ac4c
	exx			;ac4e
	ex de,hl			;ac4f
	ld b,c			;ac50   ; los sprites que sobran
L_AC51:
	ld (hl),0e0h		;ac51   ; escondidos
	inc hl			;ac53
	inc hl			;ac54
	inc hl			;ac55
	inc hl			;ac56
	djnz L_AC51		;ac57
	ret			;ac59
sprites_de_un_objeto:		; las piezas del fotograma (ix+0x0A): [n] y n x [dy][dx][patron][color]
	ld a,(ix+00ah)		;ac5a   ; lee el fotograma del objeto
	ld hl,0ac85h		;ac5d
	add a,a			;ac60
	call 040a1h		;ac61   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;ac64
	inc hl			;ac65
	ld h,(hl)			;ac66
	ld l,a			;ac67
	ld a,(hl)			;ac68
	inc hl			;ac69
	ld b,a			;ac6a
L_AC6B:
	ld a,(hl)			;ac6b   ; la Y de la pieza
	add a,(ix+007h)		;ac6c   ; le suma la Y del objeto
	ld (de),a			;ac6f
	inc hl			;ac70
	inc de			;ac71
	ld a,(hl)			;ac72   ; la X de la pieza
	add a,(ix+009h)		;ac73   ; le suma la X del objeto
	ld (de),a			;ac76
	inc hl			;ac77
	inc de			;ac78
	ld a,(hl)			;ac79   ; el patron
	ld (de),a			;ac7a
	inc hl			;ac7b
	inc de			;ac7c
	ld a,(hl)			;ac7d   ; el color
	ld (de),a			;ac7e
	inc hl			;ac7f
	inc de			;ac80
	dec c			;ac81
	djnz L_AC6B		;ac82
	ret			;ac84

; ----------------------------------------------------------------------
; DATOS resto_AC85: lo apuntan con el banco puesto p11:AC5D (0xAC85), p09:6C81
;   (0xAD32); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p11:AC5D, p09:6C81 (278 bytes)
;   0xac85..0xad9b  (278 bytes)
DATA_resto_AC85:
	defb 0c9h,0ach,0ceh,0ach,0d3h,0ach,0d8h,0ach,0ddh,0ach,0e2h,0ach,0e7h,0ach,0ech,0ach	; ac85  ................
	defb 0f1h,0ach,0f6h,0ach,0fbh,0ach,000h,0adh,005h,0adh,00ah,0adh,00fh,0adh,014h,0adh	; ac95  ................
	defb 019h,0adh,01eh,0adh,023h,0adh,028h,0adh,02dh,0adh,032h,0adh,037h,0adh,040h,0adh	; aca5  ....#.(.-.2.7.@.
	defb 049h,0adh,052h,0adh,05bh,0adh,068h,0adh,075h,0adh,082h,0adh,087h,0adh,08ch,0adh	; acb5  I.R.[.h.u.......
	defb 091h,0adh,096h,0adh,001h,000h,000h,090h,006h,001h,000h,000h,094h,006h,001h,000h	; acc5  ................
	defb 000h,09ch,00ah,001h,000h,000h,0a0h,00ah,001h,000h,000h,0a4h,00ah,001h,000h,000h	; acd5  ................
	defb 0a8h,009h,001h,000h,000h,0d0h,005h,001h,000h,000h,0d4h,00dh,001h,000h,000h,0d8h	; ace5  ................
	defb 00bh,001h,000h,000h,0bch,00fh,001h,000h,000h,0c0h,00fh,001h,000h,000h,0c4h,00fh	; acf5  ................
	defb 001h,000h,000h,0c0h,00dh,001h,000h,000h,0c0h,00ah,001h,000h,000h,0c0h,003h,001h	; ad05  ................
	defb 000h,000h,09ch,009h,001h,000h,000h,09ch,00ah,001h,000h,000h,0a0h,00ah,001h,000h	; ad15  ................
	defb 000h,0a4h,00ah,001h,000h,000h,0a8h,00ah,001h,000h,000h,000h,00ah,001h,000h,000h	; ad25  ................
	defb 09ch,008h,002h,008h,000h,0dch,00fh,008h,000h,0e0h,00eh,002h,000h,000h,0e4h,004h	; ad35  ................
	defb 000h,000h,0e8h,00fh,002h,000h,000h,0ech,004h,000h,000h,0f0h,00fh,002h,000h,000h	; ad45  ................
	defb 0f4h,004h,000h,000h,0f8h,00fh,003h,000h,000h,0d0h,004h,0f8h,000h,0d4h,00bh,008h	; ad55  ................
	defb 000h,0d8h,008h,003h,000h,000h,0dch,004h,0f8h,000h,0e0h,00bh,008h,000h,0e4h,008h	; ad65  ................
	defb 003h,000h,000h,0e8h,004h,0f8h,000h,0ech,00bh,008h,000h,0f0h,008h,001h,000h,000h	; ad75  ................
	defb 0f4h,008h,001h,000h,000h,0f4h,00ah,001h,000h,000h,0f4h,00fh,001h,000h,000h,0c8h	; ad85  ................
	defb 009h,001h,000h,000h,0cch,008h	; ad95

; ======================================================================
; CODIGO 0xad9b..0xadd4  (57 bytes)
; ======================================================================


objeto_en_fichas:		; el objeto pintado con 3 fichas en la VRAM (p11:ADD4)
	call objeto_en_fichas_pasos		;ad9b   ; objeto_en_fichas_pasos: los pasos del objeto en fichas: aparece, cuenta y cae
	ld a,(ix+000h)		;ad9e   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	or a			;ada1
	ret z			;ada2
	ld l,(ix+007h)		;ada3   ; lee la Y del objeto
	ld h,(ix+009h)		;ada6   ; lee la X del objeto
	call 04509h		;ada9   ; mapa_de_bloques: HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
	ld a,h			;adac
	sub 0b5h		;adad
	ld h,a			;adaf
	ld a,(ix+00ah)		;adb0   ; lee el fotograma del objeto
	ld b,a			;adb3
	add a,a			;adb4
	add a,b			;adb5
	ld de,0add4h		;adb6
	call 040a6h		;adb9   ; de_mas_a: DE = DE + A
	ld b,003h		;adbc
L_ADBE:
	push bc			;adbe
	ld a,(de)			;adbf
	call ficha_a_vram		;adc0   ; ficha_a_vram: A a la VRAM HL
	inc de			;adc3
	ld bc,00020h		;adc4
	add hl,bc			;adc7
	pop bc			;adc8
	djnz L_ADBE		;adc9
	ret			;adcb
ficha_a_vram:		; A a la VRAM HL
	call 0592bh		;adcc   ; escribe_en_vram: SETWRT en HL y C' = el puerto de datos del VDP
	exx			;adcf
	out (c),a		;add0
	exx			;add2
	ret			;add3

; ----------------------------------------------------------------------
; DATOS resto_ADD4: lo apuntan con el banco puesto p11:ADB6 (0xADD4); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:ADB6 (12 bytes)
;   0xadd4..0xade0  (12 bytes)
DATA_resto_ADD4:
	defb 013h,000h,000h,011h,012h,000h,010h,013h,000h,014h,010h,013h	; add4  ............

; ======================================================================
; CODIGO 0xade0..0xaefc  (284 bytes)
; ======================================================================


objeto_en_fichas_pasos:		; los pasos del objeto en fichas: aparece, cuenta y cae
	ld a,(ix+001h)		;ade0   ; lee el paso del objeto
	dec a			;ade3
	jr z,L_AE24		;ade4
	dec a			;ade6
	jr z,L_AE38		;ade7
	ld a,(ix+009h)		;ade9   ; lee la X del objeto
	call bit_de_columna		;adec   ; bit_de_columna: A = 1 << (X / 16 - 3)
	ld (ix+01ch),a		;adef   ; guarda la variable 0x1C del objeto (cada clase la usa a su manera)
	ld b,a			;adf2
	ld a,(0e3a7h)		;adf3
	or b			;adf6
	ld (0e3a7h),a		;adf7
	xor a			;adfa
	ld (ix+00ah),a		;adfb   ; guarda el fotograma del objeto
	ld (ix+01bh),a		;adfe   ; guarda la cuenta del objeto
	inc a			;ae01
	ld (ix+001h),a		;ae02   ; guarda el paso del objeto
	ld (ix+00bh),a		;ae05   ; guarda la vida del objeto
	ld (ix+00ch),a		;ae08
	ld (ix+00dh),003h		;ae0b   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x03
	ld (ix+00eh),a		;ae0f   ; guarda si el objeto no lleva sprites (bit 0)
	ret			;ae12
bit_de_columna:		; A = 1 << (X / 16 - 3)
	rra			;ae13   ; la X / 16
	rra			;ae14
	rra			;ae15
	rra			;ae16
	and 00fh		;ae17
	sub 003h		;ae19   ; menos 3: la columna
	ld b,a			;ae1b
	ld a,001h		;ae1c   ; desde el bit 0
	ret z			;ae1e
L_AE1F:
	sla a		;ae1f
	djnz L_AE1F		;ae21
	ret			;ae23
L_AE24:
	ld a,(ix+01bh)		;ae24   ; lee la cuenta del objeto
	dec a			;ae27
	ld (ix+01bh),a		;ae28   ; guarda la cuenta del objeto
	jr z,L_AE34		;ae2b
	and 03fh		;ae2d
	ret nz			;ae2f
	inc (ix+00ah)		;ae30   ; sube el fotograma del objeto
	ret			;ae33
L_AE34:
	inc (ix+001h)		;ae34   ; sube el paso del objeto
	ret			;ae37
L_AE38:
	call borra_objeto_en_fichas		;ae38   ; borra_objeto_en_fichas: borra sus 3 fichas
	ld a,(0e003h)		;ae3b   ; lee la cuenta de cuadros
	and 003h		;ae3e
	ret nz			;ae40
	ld a,(ix+007h)		;ae41   ; lee la Y del objeto
	add a,008h		;ae44
	ld (ix+007h),a		;ae46   ; guarda la Y del objeto
	cp 028h		;ae49
	jr z,L_AE53		;ae4b
	cp 058h		;ae4d
	ret nz			;ae4f
	jp borra_objeto		;ae50   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
L_AE53:
	ld b,(ix+01ch)		;ae53   ; lee la variable 0x1C del objeto (cada clase la usa a su manera)
	ld a,(0e3a7h)		;ae56
	xor b			;ae59
	ld (0e3a7h),a		;ae5a
	ret			;ae5d
borra_objeto_en_fichas:		; borra sus 3 fichas
	ld l,(ix+007h)		;ae5e   ; lee la Y del objeto
	ld h,(ix+009h)		;ae61   ; lee la X del objeto
	call 04509h		;ae64   ; mapa_de_bloques: HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
	ld a,h			;ae67
	sub 0b5h		;ae68
	ld h,a			;ae6a
	xor a			;ae6b
	call ficha_a_vram		;ae6c   ; ficha_a_vram: A a la VRAM HL
	ld de,00020h		;ae6f
	add hl,de			;ae72
	call ficha_a_vram		;ae73   ; ficha_a_vram: A a la VRAM HL
	ld de,00020h		;ae76
	add hl,de			;ae79
	jp ficha_a_vram		;ae7a   ; ficha_a_vram: A a la VRAM HL
objeto_10:		; la rutina de la clase 10 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(ix+001h)		;ae7d   ; lee el paso del objeto
	dec a			;ae80
	jr z,L_AEB4		;ae81
	ld a,001h		;ae83
	ld (ix+001h),a		;ae85   ; guarda el paso del objeto
	ld (ix+00ah),000h		;ae88   ; el fotograma del objeto = 0x00
	ld (ix+00bh),a		;ae8c   ; guarda la vida del objeto
	ld (ix+00ch),a		;ae8f
	ld (ix+00dh),003h		;ae92   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x03
	ld (ix+00eh),000h		;ae96   ; si el objeto no lleva sprites (bit 0) = 0x00
	call 043d0h		;ae9a   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	rra			;ae9d
	ld de,0fc00h		;ae9e
	ld b,020h		;aea1
	jr c,L_AEA9		;aea3
	ld d,0ffh		;aea5
	ld b,020h		;aea7
L_AEA9:
	ld (ix+01ch),b		;aea9   ; guarda la variable 0x1C del objeto (cada clase la usa a su manera)
	ld (ix+01bh),d		;aeac   ; guarda la cuenta del objeto
	ld d,0fdh		;aeaf
	jp vy_del_objeto		;aeb1   ; vy_del_objeto: velocidad Y = DE
L_AEB4:
	ld a,(0e003h)		;aeb4   ; lee la cuenta de cuadros
	and 003h		;aeb7
	jr nz,L_AEC3		;aeb9
	ld a,(ix+00ah)		;aebb   ; lee el fotograma del objeto
	xor 001h		;aebe
	ld (ix+00ah),a		;aec0   ; guarda el fotograma del objeto
L_AEC3:
	ld a,(ix+009h)		;aec3   ; lee la X del objeto
	dec a			;aec6
	ld (ix+009h),a		;aec7   ; guarda la X del objeto
	cp 010h		;aeca
	jp c,borra_objeto		;aecc   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
	ld h,(ix+003h)		;aecf   ; lee la velocidad Y del objeto (alta)
	ld l,(ix+002h)		;aed2   ; lee la velocidad Y del objeto
	ld d,000h		;aed5
	ld e,(ix+01ch)		;aed7   ; lee la variable 0x1C del objeto (cada clase la usa a su manera)
	add hl,de			;aeda
	ld (ix+003h),h		;aedb   ; guarda la velocidad Y del objeto (alta)
	ld (ix+002h),l		;aede   ; guarda la velocidad Y del objeto
	call objeto_avanza_y		;aee1   ; objeto_avanza_y: (ix+6/7) += (ix+2/3)
	ld a,(ix+007h)		;aee4   ; lee la Y del objeto
	cp 060h		;aee7
	ret c			;aee9
	ld (ix+007h),060h		;aeea   ; la Y del objeto = 0x60
	ld d,(ix+01bh)		;aeee   ; lee la cuenta del objeto
	ld e,000h		;aef1
	jp vy_del_objeto		;aef3   ; vy_del_objeto: velocidad Y = DE
objeto_11:		; la rutina de la clase 11 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(ix+001h)		;aef6   ; lee el paso del objeto
	call 040abh		;aef9   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_AEFC: tabla de 4 palabras del despachador (call 0x408D en
;   0xAEF9); lo leen L_40AB (8 bytes)
;   0xaefc..0xaf04  (8 bytes)
DATA_saltos_AEFC:
	defb 008h,0afh	; aefc
	defb 023h,0afh	; aefe
	defb 07ah,0afh	; af00
	defb 0beh,0afh	; af02

; ======================================================================
; CODIGO 0xaf04..0xafcd  (201 bytes)
; ======================================================================


L_AF04:
	inc (ix+001h)		;af04   ; sube el paso del objeto
	ret			;af07
L_AF08:
	ld (ix+00ah),010h		;af08   ; el fotograma del objeto = 0x10
	ld (ix+00bh),001h		;af0c   ; la vida del objeto = 0x01
	ld (ix+00ch),001h		;af10
	ld (ix+00dh),003h		;af14   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x03
	ld (ix+00eh),000h		;af18   ; si el objeto no lleva sprites (bit 0) = 0x00
	ld a,010h		;af1c
	ld (0e004h),a		;af1e   ; guarda la espera del estado, en cuadros
	jr L_AF04		;af21
L_AF23:
	ld hl,0e004h		;af23   ; apunta a la espera del estado, en cuadros
	dec (hl)			;af26
	jr z,L_AF41		;af27
	ld a,(hl)			;af29
	cp 00ch		;af2a
	ld c,010h		;af2c
	jr nc,L_AF3D		;af2e
	cp 008h		;af30
	ld c,011h		;af32
	jr nc,L_AF3D		;af34
fotograma_parpadeo_12:		; fotograma 0x12 o 0x13 segun el bit 1 de A
	and 002h		;af36
	ld c,012h		;af38
	jr z,L_AF3D		;af3a
	inc c			;af3c
L_AF3D:
	ld (ix+00ah),c		;af3d   ; guarda el fotograma del objeto
	ret			;af40
L_AF41:
	ld e,(ix+007h)		;af41   ; lee la Y del objeto
	ld d,(ix+009h)		;af44   ; lee la X del objeto
	ld a,080h		;af47
	call 04356h		;af49   ; a_rumbo_al_rival: con 1-2-3, p01:6320 (el paso hacia 0xE3E5/0xE3E7 con la velocidad A); vuelve con 9-10-11
	add hl,hl			;af4c
	add hl,hl			;af4d
	ld (ix+002h),l		;af4e   ; guarda la velocidad Y del objeto
	ld (ix+003h),h		;af51   ; guarda la velocidad Y del objeto (alta)
	ex de,hl			;af54
	add hl,hl			;af55
	add hl,hl			;af56
	ld (ix+004h),l		;af57   ; guarda la velocidad X del objeto
	ld (ix+005h),h		;af5a   ; guarda la velocidad X del objeto (alta)
	ld a,(ix+01fh)		;af5d   ; lee la variable 0x1F del objeto (en los jefes, donde va su dibujo)
	and a			;af60
	ld hl,0ea13h		;af61
	ld de,0ea1ch		;af64
	jr z,L_AF6F		;af67
	ld hl,0ea14h		;af69
	ld de,0ea1dh		;af6c
L_AF6F:
	ld (hl),000h		;af6f
	ld a,003h		;af71
	ld (de),a			;af73
	call 06000h		;af74   ; sonido_0b: pide el sonido 0x0B
	jp L_AF04		;af77
L_AF7A:
	ld hl,0e004h		;af7a   ; apunta a la espera del estado, en cuadros
	dec (hl)			;af7d
	ld a,(hl)			;af7e
	call fotograma_parpadeo_12		;af7f   ; fotograma_parpadeo_12: fotograma 0x12 o 0x13 segun el bit 1 de A
	ld l,(ix+006h)		;af82   ; lee la Y del objeto (fraccion)
	ld h,(ix+007h)		;af85   ; lee la Y del objeto
	ld e,(ix+002h)		;af88   ; lee la velocidad Y del objeto
	ld d,(ix+003h)		;af8b   ; lee la velocidad Y del objeto (alta)
	add hl,de			;af8e
	ld (ix+006h),l		;af8f   ; guarda la Y del objeto (fraccion)
	ld (ix+007h),h		;af92   ; guarda la Y del objeto
	ld l,(ix+008h)		;af95   ; lee la X del objeto (fraccion)
	ld h,(ix+009h)		;af98   ; lee la X del objeto
	ld e,(ix+004h)		;af9b   ; lee la velocidad X del objeto
	ld d,(ix+005h)		;af9e   ; lee la velocidad X del objeto (alta)
	add hl,de			;afa1
	ld (ix+008h),l		;afa2   ; guarda la X del objeto (fraccion)
	ld (ix+009h),h		;afa5   ; guarda la X del objeto
	ld a,(ix+007h)		;afa8   ; lee la Y del objeto
	cp 06ch		;afab
	jp nc,L_AF04		;afad
	ld a,(ix+009h)		;afb0   ; lee la X del objeto
	cp 0f8h		;afb3
	jp nc,L_AF04		;afb5
	cp 008h		;afb8
	jp c,L_AF04		;afba
	ret			;afbd
L_AFBE:
	ld (ix+000h),000h		;afbe   ; la clase del objeto (tabla p10:8CCD; 0: libre) = 0x00
	ld (ix+001h),000h		;afc2   ; el paso del objeto = 0x00
	ret			;afc6
objeto_13:		; la rutina de la clase 13 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(ix+001h)		;afc7   ; lee el paso del objeto
	call 040abh		;afca   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_AFCD: tabla de 8 palabras del despachador (call 0x408D en
;   0xAFCA); lo leen L_40AB (16 bytes)
;   0xafcd..0xafdd  (16 bytes)
DATA_saltos_AFCD:
	defb 0e1h,0afh	; afcd
	defb 01eh,0b0h	; afcf
	defb 042h,0b0h	; afd1
	defb 0b6h,0b0h	; afd3
	defb 0eah,0b0h	; afd5
	defb 01bh,0b1h	; afd7
	defb 052h,0b1h	; afd9
	defb 08ch,0b1h	; afdb

; ======================================================================
; CODIGO 0xafdd..0xb0a6  (201 bytes)
; ======================================================================


objeto_siguiente_paso:		; (ix+1) + 1
	inc (ix+001h)		;afdd   ; sube el paso del objeto
	ret			;afe0
L_AFE1:
	ld hl,0e003h		;afe1   ; apunta a la cuenta de cuadros
	ld a,r		;afe4
	rra			;afe6
	rra			;afe7
	add a,(hl)			;afe8
	and 00fh		;afe9
	ld (ix+01fh),a		;afeb   ; guarda la variable 0x1F del objeto (en los jefes, donde va su dibujo)
	ld b,006h		;afee
	call 06085h		;aff0   ; velocidad_por_angulo: DE = p09:60AC[A] * B y HL = p09:60A4[A] * B
	ld (ix+002h),l		;aff3   ; guarda la velocidad Y del objeto
	ld (ix+003h),h		;aff6   ; guarda la velocidad Y del objeto (alta)
	ld (ix+004h),e		;aff9   ; guarda la velocidad X del objeto
	ld (ix+005h),d		;affc   ; guarda la velocidad X del objeto (alta)
	ld (ix+00ah),002h		;afff   ; el fotograma del objeto = 0x02
	ld (ix+00bh),001h		;b003   ; la vida del objeto = 0x01
	ld (ix+00ch),001h		;b007
	ld (ix+00dh),001h		;b00b   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x01
	ld (ix+00eh),000h		;b00f   ; si el objeto no lleva sprites (bit 0) = 0x00
	ld (ix+01eh),000h		;b013   ; la variable 0x1E del objeto (en los jefes, donde va su dibujo) = 0x00
	ld a,080h		;b017
	ld (0e004h),a		;b019   ; guarda la espera del estado, en cuadros
	jr objeto_siguiente_paso		;b01c
L_B01E:
	ld hl,0e004h		;b01e   ; apunta a la espera del estado, en cuadros
	dec (hl)			;b021
	jr z,L_B03C		;b022
	ld a,(hl)			;b024
	cp 060h		;b025
	ld c,002h		;b027
	jr nc,L_B038		;b029
	cp 040h		;b02b
	ld c,003h		;b02d
	jr nc,L_B038		;b02f
fotograma_parpadeo_4:		; fotograma 4 o 5 segun el bit 3 de A
	and 008h		;b031
	ld c,004h		;b033
	jr z,L_B038		;b035
	inc c			;b037
L_B038:
	ld (ix+00ah),c		;b038   ; guarda el fotograma del objeto
	ret			;b03b
L_B03C:
	call 0600ah		;b03c   ; sonido_0d: pide el sonido 0x0D
	jp objeto_siguiente_paso		;b03f   ; objeto_siguiente_paso: (ix+1) + 1
L_B042:
	ld hl,0e004h		;b042   ; apunta a la espera del estado, en cuadros
	dec (hl)			;b045
	ld a,(hl)			;b046
	call fotograma_parpadeo_4		;b047   ; fotograma_parpadeo_4: fotograma 4 o 5 segun el bit 3 de A
	ld l,(ix+006h)		;b04a   ; lee la Y del objeto (fraccion)
	ld h,(ix+007h)		;b04d   ; lee la Y del objeto
	ld e,(ix+002h)		;b050   ; lee la velocidad Y del objeto
	ld d,(ix+003h)		;b053   ; lee la velocidad Y del objeto (alta)
	add hl,de			;b056
	ld (ix+006h),l		;b057   ; guarda la Y del objeto (fraccion)
	ld (ix+007h),h		;b05a   ; guarda la Y del objeto
	ld l,(ix+008h)		;b05d   ; lee la X del objeto (fraccion)
	ld h,(ix+009h)		;b060   ; lee la X del objeto
	ld e,(ix+004h)		;b063   ; lee la velocidad X del objeto
	ld d,(ix+005h)		;b066   ; lee la velocidad X del objeto (alta)
	add hl,de			;b069
	ld (ix+008h),l		;b06a   ; guarda la X del objeto (fraccion)
	ld (ix+009h),h		;b06d   ; guarda la X del objeto
	ld a,008h		;b070
	cp (ix+007h)		;b072   ; compara con la Y del objeto
	jr nc,L_B090		;b075
	ld a,068h		;b077
	cp (ix+007h)		;b079   ; compara con la Y del objeto
	jr c,L_B090		;b07c
	ld a,020h		;b07e
	cp (ix+009h)		;b080   ; compara con la X del objeto
	jr nc,L_B08B		;b083
	ld a,0d0h		;b085
	cp (ix+009h)		;b087   ; compara con la X del objeto
	ret nc			;b08a
L_B08B:
	ld (ix+009h),a		;b08b   ; guarda la X del objeto
	jr L_B093		;b08e
L_B090:
	ld (ix+007h),a		;b090   ; guarda la Y del objeto
L_B093:
	ld a,(ix+01fh)		;b093   ; lee la variable 0x1F del objeto (en los jefes, donde va su dibujo)
	ld hl,0b0a6h		;b096
	call 040a1h		;b099   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;b09c
	add a,(ix+001h)		;b09d   ; le suma el paso del objeto
	ld (ix+001h),a		;b0a0   ; guarda el paso del objeto
	jp objeto_siguiente_paso		;b0a3   ; objeto_siguiente_paso: (ix+1) + 1

; ----------------------------------------------------------------------
; DATOS resto_B0A6: lo apuntan con el banco puesto p11:B096 (0xB0A6); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:B096 (16 bytes)
;   0xb0a6..0xb0b6  (16 bytes)
DATA_resto_B0A6:
	defb 000h,000h,003h,003h,002h,002h,000h,000h,001h,001h,002h,002h,003h,003h,001h,001h	; b0a6  ................

; ======================================================================
; CODIGO 0xb0b6..0xb19b  (229 bytes)
; ======================================================================


L_B0B6:
	ld hl,0e004h		;b0b6   ; apunta a la espera del estado, en cuadros
	dec (hl)			;b0b9
	ld a,(hl)			;b0ba
	call fotograma_parpadeo_4		;b0bb   ; fotograma_parpadeo_4: fotograma 4 o 5 segun el bit 3 de A
	ld a,(ix+007h)		;b0be   ; lee la Y del objeto
	sub 006h		;b0c1
	ld (ix+007h),a		;b0c3   ; guarda la Y del objeto
	cp 008h		;b0c6
	ret nc			;b0c8
	ld (ix+007h),008h		;b0c9   ; la Y del objeto = 0x08
	inc (ix+01eh)		;b0cd   ; sube la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	ld a,(ix+01eh)		;b0d0   ; lee la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	cp 005h		;b0d3
	jr nz,L_B0DC		;b0d5
	ld (ix+001h),007h		;b0d7   ; el paso del objeto = 0x07
	ret			;b0db
L_B0DC:
	ld a,(ix+009h)		;b0dc   ; lee la X del objeto
	cp 080h		;b0df
	call c,objeto_siguiente_paso		;b0e1   ; objeto_siguiente_paso: (ix+1) + 1
	call objeto_siguiente_paso		;b0e4   ; objeto_siguiente_paso: (ix+1) + 1
	jp objeto_siguiente_paso		;b0e7   ; objeto_siguiente_paso: (ix+1) + 1
L_B0EA:
	ld hl,0e004h		;b0ea   ; apunta a la espera del estado, en cuadros
	dec (hl)			;b0ed
	ld a,(hl)			;b0ee
	call fotograma_parpadeo_4		;b0ef   ; fotograma_parpadeo_4: fotograma 4 o 5 segun el bit 3 de A
	ld a,(ix+007h)		;b0f2   ; lee la Y del objeto
	add a,006h		;b0f5
	ld (ix+007h),a		;b0f7   ; guarda la Y del objeto
	cp 068h		;b0fa
	ret c			;b0fc
	ld (ix+007h),068h		;b0fd   ; la Y del objeto = 0x68
	inc (ix+01eh)		;b101   ; sube la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	ld a,(ix+01eh)		;b104   ; lee la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	cp 005h		;b107
	jr nz,L_B110		;b109
	ld (ix+001h),007h		;b10b   ; el paso del objeto = 0x07
	ret			;b10f
L_B110:
	ld a,(ix+009h)		;b110   ; lee la X del objeto
	cp 080h		;b113
	call c,objeto_siguiente_paso		;b115   ; objeto_siguiente_paso: (ix+1) + 1
	jp objeto_siguiente_paso		;b118   ; objeto_siguiente_paso: (ix+1) + 1
L_B11B:
	ld hl,0e004h		;b11b   ; apunta a la espera del estado, en cuadros
	dec (hl)			;b11e
	ld a,(hl)			;b11f
	call fotograma_parpadeo_4		;b120   ; fotograma_parpadeo_4: fotograma 4 o 5 segun el bit 3 de A
	ld a,(ix+009h)		;b123   ; lee la X del objeto
	sub 006h		;b126
	ld (ix+009h),a		;b128   ; guarda la X del objeto
	ld a,(ix+009h)		;b12b   ; lee la X del objeto
	cp 020h		;b12e
	ret nc			;b130
	ld (ix+009h),020h		;b131   ; la X del objeto = 0x20
	inc (ix+01eh)		;b135   ; sube la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	ld a,(ix+01eh)		;b138   ; lee la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	cp 005h		;b13b
	jr nz,L_B144		;b13d
	ld (ix+001h),007h		;b13f   ; el paso del objeto = 0x07
	ret			;b143
L_B144:
	ld a,(ix+007h)		;b144   ; lee la Y del objeto
	cp 040h		;b147
	jr c,L_B14E		;b149
	dec (ix+001h)		;b14b   ; baja el paso del objeto
L_B14E:
	dec (ix+001h)		;b14e   ; baja el paso del objeto
	ret			;b151
L_B152:
	ld hl,0e004h		;b152   ; apunta a la espera del estado, en cuadros
	dec (hl)			;b155
	ld a,(hl)			;b156
	call fotograma_parpadeo_4		;b157   ; fotograma_parpadeo_4: fotograma 4 o 5 segun el bit 3 de A
	ld a,(ix+009h)		;b15a   ; lee la X del objeto
	add a,006h		;b15d
	ld (ix+009h),a		;b15f   ; guarda la X del objeto
	ld a,(ix+009h)		;b162   ; lee la X del objeto
	cp 0d0h		;b165
	ret c			;b167
	ld (ix+009h),0d0h		;b168   ; la X del objeto = 0xD0
	inc (ix+01eh)		;b16c   ; sube la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	ld a,(ix+01eh)		;b16f   ; lee la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	cp 005h		;b172
	jr nz,L_B17B		;b174
	ld (ix+001h),007h		;b176   ; el paso del objeto = 0x07
	ret			;b17a
L_B17B:
	ld a,(ix+007h)		;b17b   ; lee la Y del objeto
	cp 040h		;b17e
	jr c,L_B185		;b180
	dec (ix+001h)		;b182   ; baja el paso del objeto
L_B185:
	dec (ix+001h)		;b185   ; baja el paso del objeto
	dec (ix+001h)		;b188   ; baja el paso del objeto
	ret			;b18b
L_B18C:
	ld (ix+000h),000h		;b18c   ; la clase del objeto (tabla p10:8CCD; 0: libre) = 0x00
	ld (ix+001h),000h		;b190   ; el paso del objeto = 0x00
	ret			;b194
objeto_14:		; la rutina de la clase 14 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(ix+001h)		;b195   ; lee el paso del objeto
	call 040abh		;b198   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B19B: tabla de 5 palabras del despachador (call 0x408D en
;   0xB198); lo leen L_40AB (10 bytes)
;   0xb19b..0xb1a5  (10 bytes)
DATA_saltos_B19B:
	defb 0a5h,0b1h	; b19b
	defb 0cbh,0b1h	; b19d
	defb 0d3h,0b1h	; b19f
	defb 00bh,0b2h	; b1a1
	defb 01fh,0b2h	; b1a3

; ======================================================================
; CODIGO 0xb1a5..0xb256  (177 bytes)
; ======================================================================


L_B1A5:
	ld a,001h		;b1a5
	ld (ix+001h),a		;b1a7   ; guarda el paso del objeto
	ld (ix+00ah),006h		;b1aa   ; el fotograma del objeto = 0x06
	ld (ix+00bh),a		;b1ae   ; guarda la vida del objeto
	ld (ix+00ch),a		;b1b1
	ld (ix+00dh),a		;b1b4   ; guarda los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles)
	xor a			;b1b7
	ld (ix+00eh),a		;b1b8   ; guarda si el objeto no lleva sprites (bit 0)
	ld (ix+004h),a		;b1bb   ; guarda la velocidad X del objeto
	ld (ix+005h),a		;b1be   ; guarda la velocidad X del objeto (alta)
	ld (ix+01bh),010h		;b1c1   ; la cuenta del objeto = 0x10
	ld de,00200h		;b1c5
	jp vy_del_objeto		;b1c8   ; vy_del_objeto: velocidad Y = DE
L_B1CB:
	dec (ix+01bh)		;b1cb   ; baja la cuenta del objeto
	ret nz			;b1ce
	inc (ix+001h)		;b1cf   ; sube el paso del objeto
	ret			;b1d2
L_B1D3:
	call objeto_avanza_y		;b1d3   ; objeto_avanza_y: (ix+6/7) += (ix+2/3)
	ld a,(ix+007h)		;b1d6   ; lee la Y del objeto
	cp 0c0h		;b1d9
	jp nc,borra_objeto		;b1db   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
	cp 0aeh		;b1de
	ret c			;b1e0
	ld a,(0e3e7h)		;b1e1   ; lee la X del personaje en la escena de accion
	sub (ix+009h)		;b1e4   ; le resta la X del objeto
	jr c,L_B1EE		;b1e7
	cp 004h		;b1e9
	ret nc			;b1eb
	jr L_B1F1		;b1ec
L_B1EE:
	cp 0f0h		;b1ee
	ret c			;b1f0
L_B1F1:
	ld (ix+007h),0b0h		;b1f1   ; la Y del objeto = 0xB0
	ld a,(0e3e7h)		;b1f5   ; lee la X del personaje en la escena de accion
	ld (ix+009h),a		;b1f8   ; guarda la X del objeto
	ld (ix+00ah),007h		;b1fb   ; el fotograma del objeto = 0x07
	ld hl,0e3f8h		;b1ff
	ld (hl),001h		;b202
	inc hl			;b204
	ld (hl),020h		;b205
	inc (ix+001h)		;b207   ; sube el paso del objeto
	ret			;b20a
L_B20B:
	ld a,(0e3f8h)		;b20b
	or a			;b20e
	ret nz			;b20f
	ld (ix+01ch),010h		;b210   ; la variable 0x1C del objeto (cada clase la usa a su manera) = 0x10
	ld (ix+00ah),008h		;b214   ; el fotograma del objeto = 0x08
	inc (ix+001h)		;b218   ; sube el paso del objeto
	call 0601eh		;b21b   ; sonido_17: pide el sonido 0x17
	ret			;b21e
L_B21F:
	dec (ix+01ch)		;b21f   ; baja la variable 0x1C del objeto (cada clase la usa a su manera)
	ret nz			;b222
	jp borra_objeto		;b223   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
objeto_15:		; la rutina de la clase 15 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(ix+001h)		;b226   ; lee el paso del objeto
	or a			;b229
	jr z,L_B250		;b22a
	ld a,(ix+001h)		;b22c   ; lee el paso del objeto
	cp 008h		;b22f
	jr nc,L_B250		;b231
	call mira_los_proyectiles		;b233   ; mira_los_proyectiles: dos proyectiles desde 0xEC39
	ld a,(0e003h)		;b236   ; lee la cuenta de cuadros
	and 007h		;b239
	jr nz,L_B250		;b23b
	ld a,(ix+01ch)		;b23d   ; lee la variable 0x1C del objeto (cada clase la usa a su manera)
	inc a			;b240
	and 003h		;b241
	ld (ix+01ch),a		;b243   ; guarda la variable 0x1C del objeto (cada clase la usa a su manera)
	ld hl,0b26ah		;b246
	call 040a1h		;b249   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;b24c
	ld (ix+00ah),a		;b24d   ; guarda el fotograma del objeto
L_B250:
	ld a,(ix+001h)		;b250   ; lee el paso del objeto
	call 040abh		;b253   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B256: tabla de 10 palabras del despachador (call 0x408D en
;   0xB253); lo leen L_40AB (20 bytes)
;   0xb256..0xb26a  (20 bytes)
DATA_saltos_B256:
	defb 06eh,0b2h	; b256
	defb 08fh,0b2h	; b258
	defb 0b0h,0b2h	; b25a
	defb 0e1h,0b2h	; b25c
	defb 006h,0b3h	; b25e
	defb 02bh,0b3h	; b260
	defb 066h,0b3h	; b262
	defb 091h,0b3h	; b264
	defb 0a2h,0b3h	; b266
	defb 0e3h,0b3h	; b268

; ----------------------------------------------------------------------
; DATOS resto_B26A: lo apuntan con el banco puesto p11:B246 (0xB26A); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:B246 (4 bytes)
;   0xb26a..0xb26e  (4 bytes)
DATA_resto_B26A:
	defb 009h,00ah,00bh,00ah	; b26a

; ======================================================================
; CODIGO 0xb26e..0xb35e  (240 bytes)
; ======================================================================


L_B26E:
	ld a,001h		;b26e
	ld (ix+001h),a		;b270   ; guarda el paso del objeto
	ld (ix+00ah),009h		;b273   ; el fotograma del objeto = 0x09
	ld (ix+00bh),a		;b277   ; guarda la vida del objeto
	ld (ix+00ch),a		;b27a
	ld (ix+00dh),000h		;b27d   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x00
	ld (ix+00eh),000h		;b281   ; si el objeto no lleva sprites (bit 0) = 0x00
	ld (ix+01ch),000h		;b285   ; la variable 0x1C del objeto (cada clase la usa a su manera) = 0x00
	ld de,00100h		;b289
	jp vy_del_objeto		;b28c   ; vy_del_objeto: velocidad Y = DE
L_B28F:
	ld a,(ix+007h)		;b28f   ; lee la Y del objeto
	cp 050h		;b292
	jp c,objeto_avanza_y		;b294   ; objeto_avanza_y: (ix+6/7) += (ix+2/3)
	ld (ix+007h),050h		;b297   ; la Y del objeto = 0x50
	ld de,00100h		;b29b
	ld a,r		;b29e
	and 001h		;b2a0
	jr z,L_B2A6		;b2a2
	ld d,0ffh		;b2a4
L_B2A6:
	call vx_del_objeto		;b2a6   ; vx_del_objeto: velocidad X = DE
	call vy_del_objeto_a_cero		;b2a9   ; vy_del_objeto_a_cero: la velocidad Y a cero
	inc (ix+001h)		;b2ac   ; sube el paso del objeto
	ret			;b2af
L_B2B0:
	ld a,(ix+005h)		;b2b0   ; lee la velocidad X del objeto (alta)
	rla			;b2b3
	ld a,(ix+009h)		;b2b4   ; lee la X del objeto
	jr nc,L_B2C1		;b2b7
	ld d,040h		;b2b9
	cp d			;b2bb
	jp nc,objeto_avanza_x		;b2bc   ; objeto_avanza_x: (ix+8/9) += (ix+4/5)
	jr L_B2C7		;b2bf
L_B2C1:
	ld d,0b0h		;b2c1
	cp d			;b2c3
	jp c,objeto_avanza_x		;b2c4   ; objeto_avanza_x: (ix+8/9) += (ix+4/5)
L_B2C7:
	ld (ix+008h),000h		;b2c7   ; la X del objeto (fraccion) = 0x00
	ld (ix+009h),d		;b2cb   ; guarda la X del objeto
	ld a,r		;b2ce
	and 001h		;b2d0
	ld d,0ffh		;b2d2
	jr z,L_B2D8		;b2d4
	ld d,001h		;b2d6
L_B2D8:
	ld e,000h		;b2d8
	call vy_del_objeto		;b2da   ; vy_del_objeto: velocidad Y = DE
	inc (ix+001h)		;b2dd   ; sube el paso del objeto
	ret			;b2e0
L_B2E1:
	ld a,(ix+003h)		;b2e1   ; lee la velocidad Y del objeto (alta)
	rla			;b2e4
	ld a,(ix+007h)		;b2e5   ; lee la Y del objeto
	jr c,L_B2F2		;b2e8
	ld d,078h		;b2ea
	cp d			;b2ec
	jp c,objeto_avanza_y		;b2ed   ; objeto_avanza_y: (ix+6/7) += (ix+2/3)
	jr L_B2F8		;b2f0
L_B2F2:
	ld d,008h		;b2f2
	cp d			;b2f4
	jp nc,objeto_avanza_y		;b2f5   ; objeto_avanza_y: (ix+6/7) += (ix+2/3)
L_B2F8:
	ld (ix+006h),000h		;b2f8   ; la Y del objeto (fraccion) = 0x00
	ld (ix+007h),d		;b2fc   ; guarda la Y del objeto
	call invierte_vx_del_objeto		;b2ff   ; invierte_vx_del_objeto: (ix+4/5) = -(ix+4/5)
	inc (ix+001h)		;b302   ; sube el paso del objeto
	ret			;b305
L_B306:
	ld a,(ix+005h)		;b306   ; lee la velocidad X del objeto (alta)
	rla			;b309
	ld a,(ix+009h)		;b30a   ; lee la X del objeto
	jr nc,L_B317		;b30d
	ld d,040h		;b30f
	cp d			;b311
	jp nc,objeto_avanza_x		;b312   ; objeto_avanza_x: (ix+8/9) += (ix+4/5)
	jr L_B31D		;b315
L_B317:
	ld d,0b0h		;b317
	cp d			;b319
	jp c,objeto_avanza_x		;b31a   ; objeto_avanza_x: (ix+8/9) += (ix+4/5)
L_B31D:
	ld (ix+008h),000h		;b31d   ; la X del objeto (fraccion) = 0x00
	ld (ix+009h),d		;b321   ; guarda la X del objeto
	call invierte_vy_del_objeto		;b324   ; invierte_vy_del_objeto: (ix+2/3) = -(ix+2/3)
	inc (ix+001h)		;b327   ; sube el paso del objeto
	ret			;b32a
L_B32B:
	ld a,(ix+003h)		;b32b   ; lee la velocidad Y del objeto (alta)
	rla			;b32e
	ld a,(ix+007h)		;b32f   ; lee la Y del objeto
	jr c,L_B33B		;b332
	cp 050h		;b334
	jp c,objeto_avanza_y		;b336   ; objeto_avanza_y: (ix+6/7) += (ix+2/3)
	jr L_B340		;b339
L_B33B:
	cp 050h		;b33b
	jp nc,objeto_avanza_y		;b33d   ; objeto_avanza_y: (ix+6/7) += (ix+2/3)
L_B340:
	ld (ix+007h),050h		;b340   ; la Y del objeto = 0x50
	ld (ix+006h),000h		;b344   ; la Y del objeto (fraccion) = 0x00
	call invierte_vx_del_objeto		;b348   ; invierte_vx_del_objeto: (ix+4/5) = -(ix+4/5)
	call 043d0h		;b34b   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 007h		;b34e
	ld hl,0b35eh		;b350
	call 040a1h		;b353   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;b356
	ld (ix+01bh),a		;b357   ; guarda la cuenta del objeto
	inc (ix+001h)		;b35a   ; sube el paso del objeto
	ret			;b35d

; ----------------------------------------------------------------------
; DATOS resto_B35E: lo apuntan con el banco puesto p11:B350 (0xB35E); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:B350 (8 bytes)
;   0xb35e..0xb366  (8 bytes)
DATA_resto_B35E:
	defb 048h,078h,068h,088h,0a8h,098h,078h,058h	; b35e  Hxh...xX

; ======================================================================
; CODIGO 0xb366..0xb478  (274 bytes)
; ======================================================================


L_B366:
	ld a,(ix+005h)		;b366   ; lee la velocidad X del objeto (alta)
	rla			;b369
	ld a,(ix+009h)		;b36a   ; lee la X del objeto
	jr c,L_B377		;b36d
	cp (ix+01bh)		;b36f   ; compara con la cuenta del objeto
	jp c,objeto_avanza_x		;b372   ; objeto_avanza_x: (ix+8/9) += (ix+4/5)
	jr L_B37D		;b375
L_B377:
	cp (ix+01bh)		;b377   ; compara con la cuenta del objeto
	jp nc,objeto_avanza_x		;b37a   ; objeto_avanza_x: (ix+8/9) += (ix+4/5)
L_B37D:
	ld a,(ix+01bh)		;b37d   ; lee la cuenta del objeto
	ld (ix+009h),a		;b380   ; guarda la X del objeto
	ld (ix+008h),000h		;b383   ; la X del objeto (fraccion) = 0x00
	ld de,00100h		;b387
	call vy_del_objeto		;b38a   ; vy_del_objeto: velocidad Y = DE
	inc (ix+001h)		;b38d   ; sube el paso del objeto
	ret			;b390
L_B391:
	call cerca_del_personaje		;b391   ; cerca_del_personaje: si esta abajo, mira la distancia en X al personaje
	jp nc,L_B450		;b394
	ld a,(ix+007h)		;b397   ; lee la Y del objeto
	cp 0beh		;b39a
	jp c,objeto_avanza_y		;b39c   ; objeto_avanza_y: (ix+6/7) += (ix+2/3)
	jp borra_objeto		;b39f   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
L_B3A2:
	ld a,(ix+007h)		;b3a2   ; lee la Y del objeto
	cp 0beh		;b3a5
	jp nc,borra_objeto		;b3a7   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
	call objeto_avanza_y		;b3aa   ; objeto_avanza_y: (ix+6/7) += (ix+2/3)
	call cerca_del_personaje		;b3ad   ; cerca_del_personaje: si esta abajo, mira la distancia en X al personaje
	ret c			;b3b0
	call 06019h		;b3b1   ; sonido_1d: pide el sonido 0x1D
	ld a,(ix+01eh)		;b3b4   ; lee la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	dec a			;b3b7
	jr z,L_B3DB		;b3b8
	dec a			;b3ba
	jr nz,L_B3D1		;b3bb
	ld a,(0e3a8h)		;b3bd   ; lee las bolas que quedan en la escena
	cp 002h		;b3c0
	jp nc,borra_objeto		;b3c2   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
	ld hl,0e3a8h		;b3c5   ; apunta a las bolas que quedan en la escena
	ld (hl),082h		;b3c8
	xor a			;b3ca
	ld (0e3fah),a		;b3cb
	jp borra_objeto		;b3ce   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
L_B3D1:
	xor a			;b3d1
	ld (0ec3eh),a		;b3d2
	ld (0e3fah),a		;b3d5
	jp borra_objeto		;b3d8   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
L_B3DB:
	ld a,001h		;b3db
	ld (0e3fah),a		;b3dd
	jp borra_objeto		;b3e0   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
L_B3E3:
	dec (ix+01dh)		;b3e3   ; baja la variable 0x1D del objeto (en los jefes, la accion)
	jp z,borra_objeto		;b3e6   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
	ld a,(ix+01dh)		;b3e9   ; lee la variable 0x1D del objeto (en los jefes, la accion)
	and 002h		;b3ec
	ld a,020h		;b3ee
	jr z,L_B3F3		;b3f0
	inc a			;b3f2
L_B3F3:
	ld (ix+00ah),a		;b3f3   ; guarda el fotograma del objeto
	ret			;b3f6
cerca_del_personaje:		; si esta abajo, mira la distancia en X al personaje
	ld a,(ix+007h)		;b3f7   ; lee la Y del objeto
	cp 0a0h		;b3fa
	ret c			;b3fc
	ld a,(0e3e7h)		;b3fd   ; lee la X del personaje en la escena de accion
	sub (ix+009h)		;b400   ; le resta la X del objeto
	jr nc,L_B407		;b403
	neg		;b405
L_B407:
	cp 010h		;b407
	ccf			;b409
	ret			;b40a
mira_los_proyectiles:		; dos proyectiles desde 0xEC39
	ld hl,0ec39h		;b40b
	ld b,002h		;b40e
L_B410:
	push bc			;b410
	call distancia_y		;b411   ; distancia_y: A = la distancia en Y entre (HL) y el objeto
	pop bc			;b414
	jr c,L_B41E		;b415
	ld de,0000eh		;b417
	add hl,de			;b41a
	djnz L_B410		;b41b
	ret			;b41d
L_B41E:
	ld a,(0e3a8h)		;b41e   ; lee las bolas que quedan en la escena
	cp 002h		;b421
	jr z,L_B450		;b423
	ld hl,0e3abh		;b425
	inc (hl)			;b428
	ld a,(hl)			;b429
	and 00fh		;b42a
	ld hl,0b478h		;b42c
	call 040a1h		;b42f   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;b432
	or a			;b433
	jr z,L_B450		;b434
	ld (ix+01eh),a		;b436   ; guarda la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	ld c,00ch		;b439
	dec a			;b43b
	jr z,L_B443		;b43c
	inc c			;b43e
	dec a			;b43f
	jr z,L_B443		;b440
	inc c			;b442
L_B443:
	ld (ix+00ah),c		;b443   ; guarda el fotograma del objeto
	ld (ix+001h),008h		;b446   ; el paso del objeto = 0x08
	ld de,00100h		;b44a
	jp vy_del_objeto		;b44d   ; vy_del_objeto: velocidad Y = DE
L_B450:
	call 06014h		;b450   ; sonido_1c: pide el sonido 0x1C
	ld (ix+001h),009h		;b453   ; el paso del objeto = 0x09
	ld (ix+00ah),020h		;b457   ; el fotograma del objeto = 0x20
	ld (ix+01dh),040h		;b45b   ; la variable 0x1D del objeto (en los jefes, la accion) = 0x40
	ret			;b45f
distancia_y:		; A = la distancia en Y entre (HL) y el objeto
	ld a,(hl)			;b460
	sub (ix+007h)		;b461   ; le resta la Y del objeto
	jr nc,L_B468		;b464
	neg		;b466
L_B468:
	cp 00ah		;b468
	ret nc			;b46a
	inc l			;b46b
	inc l			;b46c
	ld a,(hl)			;b46d
	sub (ix+009h)		;b46e   ; le resta la X del objeto
	jr nc,L_B475		;b471
	neg		;b473
L_B475:
	cp 00ah		;b475
	ret			;b477

; ----------------------------------------------------------------------
; DATOS resto_B478: lo apuntan con el banco puesto p11:B42C (0xB478); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:B42C (16 bytes)
;   0xb478..0xb488  (16 bytes)
DATA_resto_B478:
	defb 000h,000h,000h,003h,000h,000h,000h,001h,000h,000h,000h,003h,000h,000h,000h,002h	; b478  ................

; ======================================================================
; CODIGO 0xb488..0xb48e  (6 bytes)
; ======================================================================


objeto_16:		; la rutina de la clase 16 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(ix+001h)		;b488   ; lee el paso del objeto
	call 040abh		;b48b   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B48E: tabla de 3 palabras del despachador (call 0x408D en
;   0xB48B); lo leen L_40AB (6 bytes)
;   0xb48e..0xb494  (6 bytes)
DATA_saltos_B48E:
	defb 098h,0b4h	; b48e
	defb 0eah,0b4h	; b490
	defb 02dh,0b5h	; b492

; ======================================================================
; CODIGO 0xb494..0xb4de  (74 bytes)
; ======================================================================


L_B494:
	inc (ix+001h)		;b494   ; sube el paso del objeto
	ret			;b497
L_B498:
	ld c,000h		;b498
	ld a,(ix+007h)		;b49a   ; lee la Y del objeto
	ld hl,0e3e5h		;b49d   ; apunta a la Y del personaje en la escena de accion
	sub (hl)			;b4a0
	jr c,L_B4AB		;b4a1
	ld c,001h		;b4a3
	cp 020h		;b4a5
	jr c,L_B4AB		;b4a7
	ld c,002h		;b4a9
L_B4AB:
	ld a,c			;b4ab
	ld hl,0b4deh		;b4ac
	add a,a			;b4af
	add a,a			;b4b0
	call 040a1h		;b4b1   ; hl_mas_a: HL = HL + A
	ld e,(hl)			;b4b4
	inc hl			;b4b5
	ld d,(hl)			;b4b6
	inc hl			;b4b7
	ld c,(hl)			;b4b8
	inc hl			;b4b9
	ld b,(hl)			;b4ba
	ld (ix+002h),e		;b4bb   ; guarda la velocidad Y del objeto
	ld (ix+003h),d		;b4be   ; guarda la velocidad Y del objeto (alta)
	ld (ix+004h),c		;b4c1   ; guarda la velocidad X del objeto
	ld (ix+005h),b		;b4c4   ; guarda la velocidad X del objeto (alta)
	ld (ix+00ah),00fh		;b4c7   ; el fotograma del objeto = 0x0F
	ld (ix+00bh),001h		;b4cb   ; la vida del objeto = 0x01
	ld (ix+00ch),001h		;b4cf
	ld (ix+00dh),001h		;b4d3   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x01
	ld (ix+00eh),000h		;b4d7   ; si el objeto no lleva sprites (bit 0) = 0x00
	jp L_B494		;b4db

; ----------------------------------------------------------------------
; DATOS resto_B4DE: lo apuntan con el banco puesto p11:B4AC (0xB4DE); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:B4AC (12 bytes)
;   0xb4de..0xb4ea  (12 bytes)
DATA_resto_B4DE:
	defb 000h,0feh,000h,005h,000h,0fch,000h,005h,000h,0fah,000h,005h	; b4de  ............

; ======================================================================
; CODIGO 0xb4ea..0xb53c  (82 bytes)
; ======================================================================


L_B4EA:
	ld l,(ix+006h)		;b4ea   ; lee la Y del objeto (fraccion)
	ld h,(ix+007h)		;b4ed   ; lee la Y del objeto
	ld e,(ix+002h)		;b4f0   ; lee la velocidad Y del objeto
	ld d,(ix+003h)		;b4f3   ; lee la velocidad Y del objeto (alta)
	push de			;b4f6
	add hl,de			;b4f7
	ld (ix+006h),l		;b4f8   ; guarda la Y del objeto (fraccion)
	ld (ix+007h),h		;b4fb   ; guarda la Y del objeto
	ld l,(ix+008h)		;b4fe   ; lee la X del objeto (fraccion)
	ld h,(ix+009h)		;b501   ; lee la X del objeto
	ld e,(ix+004h)		;b504   ; lee la velocidad X del objeto
	ld d,(ix+005h)		;b507   ; lee la velocidad X del objeto (alta)
	add hl,de			;b50a
	ld (ix+008h),l		;b50b   ; guarda la X del objeto (fraccion)
	ld (ix+009h),h		;b50e   ; guarda la X del objeto
	pop hl			;b511
	ld bc,00040h		;b512
	add hl,bc			;b515
	ld (ix+002h),l		;b516   ; guarda la velocidad Y del objeto
	ld (ix+003h),h		;b519   ; guarda la velocidad Y del objeto (alta)
	ld a,(ix+007h)		;b51c   ; lee la Y del objeto
	cp 0b8h		;b51f
	jp nc,L_B494		;b521
	ld a,(ix+009h)		;b524   ; lee la X del objeto
	cp 0e0h		;b527
	jp nc,L_B494		;b529
	ret			;b52c
L_B52D:
	ld (ix+000h),000h		;b52d   ; la clase del objeto (tabla p10:8CCD; 0: libre) = 0x00
	ld (ix+001h),000h		;b531   ; el paso del objeto = 0x00
	ret			;b535
objeto_17:		; la rutina de la clase 17 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(ix+001h)		;b536   ; lee el paso del objeto
	call 040abh		;b539   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B53C: tabla de 4 palabras del despachador (call 0x408D en
;   0xB539); lo leen L_40AB (8 bytes)
;   0xb53c..0xb544  (8 bytes)
DATA_saltos_B53C:
	defb 044h,0b5h	; b53c
	defb 077h,0b5h	; b53e
	defb 086h,0b5h	; b540
	defb 0a6h,0b5h	; b542

; ======================================================================
; CODIGO 0xb544..0xb5d0  (140 bytes)
; ======================================================================


L_B544:
	ld a,001h		;b544
	ld (ix+001h),a		;b546   ; guarda el paso del objeto
	ld (ix+00ah),000h		;b549   ; el fotograma del objeto = 0x00
	ld (ix+00bh),a		;b54d   ; guarda la vida del objeto
	ld (ix+00ch),a		;b550
	ld (ix+00dh),a		;b553   ; guarda los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles)
	ld (ix+00eh),000h		;b556   ; si el objeto no lleva sprites (bit 0) = 0x00
	call 043d0h		;b55a   ; aleatorio: A = el registro R revuelto con la cuenta de cuadros
	and 003h		;b55d
	add a,004h		;b55f
	ld d,a			;b561
	ld e,000h		;b562
	ld l,e			;b564
	ld h,a			;b565
	srl h		;b566
	rr l		;b568
	rr h		;b56a
	rr l		;b56c
	call velocidades_del_objeto		;b56e   ; velocidades_del_objeto: velocidad X = DE y velocidad Y = HL
	ld a,038h		;b571
	ld (ix+01bh),a		;b573   ; guarda la cuenta del objeto
	ret			;b576
L_B577:
	call alterna_fotograma		;b577   ; alterna_fotograma: cada 4 cuadros, el fotograma XOR 1
	ld a,(ix+009h)		;b57a   ; lee la X del objeto
	cp 070h		;b57d
	jp c,objeto_avanza_xy		;b57f   ; objeto_avanza_xy: X y luego Y con su velocidad
	inc (ix+001h)		;b582   ; sube el paso del objeto
	ret			;b585
L_B586:
	call alterna_fotograma		;b586   ; alterna_fotograma: cada 4 cuadros, el fotograma XOR 1
	ld a,(ix+009h)		;b589   ; lee la X del objeto
	cp 0e0h		;b58c
	jp nc,borra_objeto		;b58e   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
	ld h,(ix+003h)		;b591   ; lee la velocidad Y del objeto (alta)
	ld l,(ix+002h)		;b594   ; lee la velocidad Y del objeto
	ld d,000h		;b597
	ld e,(ix+01bh)		;b599   ; lee la cuenta del objeto
	add hl,de			;b59c
	ld (ix+003h),h		;b59d   ; guarda la velocidad Y del objeto (alta)
	ld (ix+002h),l		;b5a0   ; guarda la velocidad Y del objeto
	jp objeto_avanza_xy		;b5a3   ; objeto_avanza_xy: X y luego Y con su velocidad
L_B5A6:
	ld a,(0e3e5h)		;b5a6   ; lee la Y del personaje en la escena de accion
	ld (ix+007h),a		;b5a9   ; guarda la Y del objeto
	ld a,(0e3e7h)		;b5ac   ; lee la X del personaje en la escena de accion
	sub 010h		;b5af
	ld (ix+009h),a		;b5b1   ; guarda la X del objeto
	ret			;b5b4
alterna_fotograma:		; cada 4 cuadros, el fotograma XOR 1
	ld a,(0e003h)		;b5b5   ; lee la cuenta de cuadros
	and 003h		;b5b8
	ret nz			;b5ba
	ld a,(ix+00ah)		;b5bb   ; lee el fotograma del objeto
	xor 001h		;b5be
	ld (ix+00ah),a		;b5c0   ; guarda el fotograma del objeto
	ret			;b5c3
objeto_18:		; la rutina de la clase 18 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(0ea01h)		;b5c4   ; lee el paso del rival
	cp 004h		;b5c7
	ret nc			;b5c9
	ld a,(ix+001h)		;b5ca   ; lee el paso del objeto
	call 040abh		;b5cd   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B5D0: tabla de 6 palabras del despachador (call 0x408D en
;   0xB5CD); lo leen L_40AB (12 bytes)
;   0xb5d0..0xb5dc  (12 bytes)
DATA_saltos_B5D0:
	defb 0dch,0b5h	; b5d0
	defb 0e4h,0b5h	; b5d2
	defb 053h,0b6h	; b5d4
	defb 03eh,0b7h	; b5d6
	defb 03eh,0b7h	; b5d8
	defb 098h,0b7h	; b5da

; ======================================================================
; CODIGO 0xb5dc..0xb6ce  (242 bytes)
; ======================================================================


L_B5DC:
	inc (ix+001h)		;b5dc   ; sube el paso del objeto
	ld (ix+00ah),016h		;b5df   ; el fotograma del objeto = 0x16
	ret			;b5e3
L_B5E4:
	ld a,(0e008h)		;b5e4   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 00fh		;b5e7
	jr nz,L_B610		;b5e9
	ld a,(0e009h)		;b5eb   ; lee las teclas que hay
	and 030h		;b5ee
	jr nz,L_B5F3		;b5f0
	ret			;b5f2
L_B5F3:
	call ficha_bajo_el_objeto		;b5f3   ; ficha_bajo_el_objeto: A = la ficha del bloque en el centro del objeto
	or a			;b5f6
	ret z			;b5f7
	ld (ix+011h),a		;b5f8
	inc (ix+001h)		;b5fb   ; sube el paso del objeto
	ret			;b5fe
ficha_bajo_el_objeto:		; A = la ficha del bloque en el centro del objeto
	ld a,(ix+009h)		;b5ff   ; lee la X del objeto
	add a,008h		;b602
	ld h,a			;b604
	ld a,(ix+007h)		;b605   ; lee la Y del objeto
	add a,008h		;b608
	ld l,a			;b60a
	call 04509h		;b60b   ; mapa_de_bloques: HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
	ld a,(hl)			;b60e
	ret			;b60f
L_B610:
	ld a,(0e008h)		;b610   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 003h		;b613
	call nz,paso_x_1		;b615   ; paso_x_1: H = +16 o -16 segun el bit 0 de A
	ld a,(0e008h)		;b618   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 00ch		;b61b
	call nz,paso_x_4		;b61d   ; paso_x_4: H = +16 o -16 segun el bit 2 de A
	ret			;b620
paso_x_1:		; H = +16 o -16 segun el bit 0 de A
	ld h,010h		;b621
	and 001h		;b623
	jr z,L_B629		;b625
	ld h,0f0h		;b627
L_B629:
	ld a,(ix+007h)		;b629   ; lee la Y del objeto
	add a,h			;b62c
	cp 010h		;b62d
	ret c			;b62f
	cp 058h		;b630
	ret nc			;b632
	ld (ix+007h),a		;b633   ; guarda la Y del objeto
	call 0456fh		;b636   ; sonido_47: pide el sonido 0x47
	ret			;b639
paso_x_4:		; H = +16 o -16 segun el bit 2 de A
	ld h,010h		;b63a
	and 004h		;b63c
	jr z,L_B642		;b63e
	ld h,0f0h		;b640
L_B642:
	ld a,(ix+009h)		;b642   ; lee la X del objeto
	add a,h			;b645
	cp 058h		;b646
	ret c			;b648
	cp 098h		;b649
	ret nc			;b64b
	ld (ix+009h),a		;b64c   ; guarda la X del objeto
	call 0456fh		;b64f   ; sonido_47: pide el sonido 0x47
	ret			;b652
L_B653:
	ld a,(0e009h)		;b653   ; lee las teclas que hay
	and 030h		;b656
	jr z,L_B68C		;b658
	ld a,(0e008h)		;b65a   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 00fh		;b65d
	ret z			;b65f
	call ficha_bajo_el_objeto		;b660   ; ficha_bajo_el_objeto: A = la ficha del bloque en el centro del objeto
	ld (ix+011h),a		;b663
	dec a			;b666
	add a,a			;b667
	add a,a			;b668
	ld hl,0ec60h		;b669   ; apunta a las piezas del jefe o la fila de fichas que entra
	call 040a1h		;b66c   ; hl_mas_a: HL = HL + A
	push ix		;b66f
	push hl			;b671
	pop ix		;b672
	call objeto_con_cursores		;b674   ; objeto_con_cursores: con los cursores, la velocidad del objeto de p11:B6CE y p11:B6DE
	ld a,(ix+003h)		;b677
	pop ix		;b67a
	jr nz,L_B68C		;b67c
	ld (ix+010h),a		;b67e
	call 045bfh		;b681   ; sonido_48: pide el sonido 0x48
	ld (ix+012h),008h		;b684
	inc (ix+001h)		;b688
	ret			;b68b
L_B68C:
	dec (ix+001h)		;b68c   ; baja el paso del objeto
	ret			;b68f
objeto_con_cursores:		; con los cursores, la velocidad del objeto de p11:B6CE y p11:B6DE
	ld a,(0e008h)		;b690   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 00fh		;b693
	ld hl,0b6ceh		;b695
	call 040a1h		;b698   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;b69b
	or a			;b69c
	jr z,L_B6BB		;b69d
	ld (ix+003h),a		;b69f   ; guarda la velocidad Y del objeto (alta)
	call velocidad_de_tabla		;b6a2   ; velocidad_de_tabla: DE = la velocidad de p11:B6DE
L_B6A5:
	ld a,(de)			;b6a5
	ld l,a			;b6a6
	inc de			;b6a7
	ld a,(de)			;b6a8
	ld h,a			;b6a9
	inc de			;b6aa
	or l			;b6ab
	ret z			;b6ac
	push de			;b6ad
	ld e,(ix+000h)		;b6ae   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	ld d,(ix+001h)		;b6b1   ; lee el paso del objeto
	add hl,de			;b6b4
	pop de			;b6b5
	ld a,(hl)			;b6b6
	or a			;b6b7
	ret nz			;b6b8
	jr L_B6A5		;b6b9
L_B6BB:
	ld a,001h		;b6bb
	or a			;b6bd
	ret			;b6be
velocidad_de_tabla:		; DE = la velocidad de p11:B6DE
	ld a,(ix+002h)		;b6bf   ; lee la velocidad Y del objeto
	add a,a			;b6c2
	add a,a			;b6c3
	add a,(ix+003h)		;b6c4   ; le suma la velocidad Y del objeto (alta)
	dec a			;b6c7
	ld de,0b6deh		;b6c8
	jp 043a4h		;b6cb   ; palabra_de_tabla: DE = la palabra A de la tabla DE

; ----------------------------------------------------------------------
; DATOS resto_B6CE: lo apuntan con el banco puesto p11:B695 (0xB6CE), p11:B6C8
;   (0xB6DE); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p11:B695, p11:B6C8 (112 bytes)
;   0xb6ce..0xb73e  (112 bytes)
DATA_resto_B6CE:
	defb 000h,001h,002h,000h,004h,000h,000h,004h,003h,000h,000h,003h,000h,001h,002h,000h	; b6ce  ................
	defb 0feh,0b6h,002h,0b7h,008h,0b7h,00ch,0b7h,0feh,0b6h,010h,0b7h,016h,0b7h,01ch,0b7h	; b6de  ................
	defb 022h,0b7h,028h,0b7h,02eh,0b7h,00ch,0b7h,022h,0b7h,032h,0b7h,038h,0b7h,01ch,0b7h	; b6ee  ".(.....".2.8...
	defb 0e0h,0ffh,000h,000h,040h,000h,041h,000h,000h,000h,002h,000h,000h,000h,0ffh,0ffh	; b6fe  ....@.A.........
	defb 000h,000h,080h,000h,081h,000h,000h,000h,002h,000h,042h,000h,000h,000h,0ffh,0ffh	; b70e  ..........B.....
	defb 03fh,000h,000h,000h,0e0h,0ffh,0e2h,0ffh,000h,000h,040h,000h,042h,000h,000h,000h	; b71e  ?.........@.B...
	defb 004h,000h,000h,000h,080h,000h,082h,000h,000h,000h,004h,000h,044h,000h,000h,000h	; b72e  ............D...

; ======================================================================
; CODIGO 0xb73e..0xb788  (74 bytes)
; ======================================================================


L_B73E:
	ld a,(ix+010h)		;b73e
	dec a			;b741
	ld de,0b790h		;b742
	call 043a4h		;b745   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld a,(ix+009h)		;b748   ; lee la X del objeto
	add a,e			;b74b
	ld (ix+009h),a		;b74c   ; guarda la X del objeto
	ld a,(ix+007h)		;b74f   ; lee la Y del objeto
	add a,d			;b752
	ld (ix+007h),a		;b753   ; guarda la Y del objeto
	ld a,(ix+010h)		;b756
	dec a			;b759
	ld de,0b788h		;b75a
	call 043a4h		;b75d   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld a,(ix+011h)		;b760
	dec a			;b763
	add a,a			;b764
	add a,a			;b765
	ld hl,0ec60h		;b766   ; apunta a las piezas del jefe o la fila de fichas que entra
	call 040a1h		;b769   ; hl_mas_a: HL = HL + A
	push ix		;b76c
	push hl			;b76e
	pop ix		;b76f
	ld l,(ix+000h)		;b771
	ld h,(ix+001h)		;b774
	add hl,de			;b777
	ld (ix+000h),l		;b778
	ld (ix+001h),h		;b77b
	pop ix		;b77e
	ld (ix+012h),008h		;b780
	inc (ix+001h)		;b784
	ret			;b787

; ----------------------------------------------------------------------
; DATOS resto_B788: lo apuntan con el banco puesto p11:B75A (0xB788), p11:B742
;   (0xB790); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p11:B75A, p11:B742 (16 bytes)
;   0xb788..0xb798  (16 bytes)
DATA_resto_B788:
	defb 0e0h,0ffh,020h,000h,001h,000h,0ffh,0ffh,000h,0f8h,000h,008h,008h,000h,0f8h,000h	; b788  .. .............

; ======================================================================
; CODIGO 0xb798..0xb7a3  (11 bytes)
; ======================================================================


L_B798:
	ld (ix+001h),000h		;b798   ; el paso del objeto = 0x00
	ret			;b79c
objeto_23:		; la rutina de la clase 23 de los objetos de 0xEA00 (p10:8CCD)
	ld a,(ix+001h)		;b79d   ; lee el paso del objeto
	call 040abh		;b7a0   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B7A3: tabla de 6 palabras del despachador (call 0x408D en
;   0xB7A0); lo leen L_40AB (12 bytes)
;   0xb7a3..0xb7af  (12 bytes)
DATA_saltos_B7A3:
	defb 0afh,0b7h	; b7a3
	defb 0b7h,0b7h	; b7a5
	defb 0e3h,0b7h	; b7a7
	defb 0f0h,0b7h	; b7a9
	defb 00eh,0b8h	; b7ab
	defb 018h,0b8h	; b7ad

; ======================================================================
; CODIGO 0xb7af..0xbb96  (999 bytes)
; ======================================================================


L_B7AF:
	ld (ix+00ah),017h		;b7af   ; el fotograma del objeto = 0x17
	inc (ix+001h)		;b7b3   ; sube el paso del objeto
	ret			;b7b6
L_B7B7:
	ld hl,(0ec64h)		;b7b7
	ld de,0ed00h		;b7ba   ; apunta a los nombres de la pantalla (32 x 24)
	or a			;b7bd
	sbc hl,de		;b7be
	add hl,hl			;b7c0
	add hl,hl			;b7c1
	add hl,hl			;b7c2
	ld a,l			;b7c3
	and 0f8h		;b7c4
	add a,008h		;b7c6
	ld (ix+009h),a		;b7c8   ; guarda la X del objeto
	add hl,hl			;b7cb
	add hl,hl			;b7cc
	add hl,hl			;b7cd
	ld a,h			;b7ce
	and 0f8h		;b7cf
	add a,010h		;b7d1
	ld (ix+007h),a		;b7d3   ; guarda la Y del objeto
	ld a,(0ea01h)		;b7d6   ; lee el paso del rival
	cp 004h		;b7d9
	ret nz			;b7db
	call 04565h		;b7dc   ; sonido_14: pide el sonido 0x14
	inc (ix+001h)		;b7df   ; sube el paso del objeto
	ret			;b7e2
L_B7E3:
	inc (ix+007h)		;b7e3   ; sube la Y del objeto
	ld a,(ix+007h)		;b7e6   ; lee la Y del objeto
	cp 070h		;b7e9
	ret c			;b7eb
	inc (ix+001h)		;b7ec   ; sube el paso del objeto
	ret			;b7ef
L_B7F0:
	call fotograma_parpadeo_18		;b7f0   ; fotograma_parpadeo_18: fotograma 0x18 o 0x19 cada 4 cuadros
	inc (ix+009h)		;b7f3   ; sube la X del objeto
	ld a,(ix+009h)		;b7f6   ; lee la X del objeto
	cp 0d0h		;b7f9
	ret c			;b7fb
	inc (ix+001h)		;b7fc   ; sube el paso del objeto
	ret			;b7ff
fotograma_parpadeo_18:		; fotograma 0x18 o 0x19 cada 4 cuadros
	ld a,(0e003h)		;b800   ; lee la cuenta de cuadros
	and 004h		;b803
	ld a,018h		;b805
	jr z,L_B80A		;b807
	inc a			;b809
L_B80A:
	ld (ix+00ah),a		;b80a   ; guarda el fotograma del objeto
	ret			;b80d
L_B80E:
	ld a,(0ea01h)		;b80e   ; lee el paso del rival
	cp 006h		;b811
	ret nz			;b813
	inc (ix+001h)		;b814   ; sube el paso del objeto
	ret			;b817
L_B818:
	call fotograma_parpadeo_18		;b818   ; fotograma_parpadeo_18: fotograma 0x18 o 0x19 cada 4 cuadros
	inc (ix+009h)		;b81b   ; sube la X del objeto
	ld a,(ix+009h)		;b81e   ; lee la X del objeto
	cp 0f0h		;b821
	ret c			;b823
	jp borra_objeto		;b824   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
L_B827:
	call 049f0h		;b827   ; graficos_14_a: patrones y colores p14:A7EF-B37B y 0x1E0 nombres de p20:A84E
	xor a			;b82a
	ld hl,007f8h		;b82b
	ld bc,00008h		;b82e
	call 00056h		;b831   ; BIOS FILVRM - Fills VRAM with value
	xor a			;b834
	ld hl,00ff8h		;b835
	ld bc,00008h		;b838
	call 00056h		;b83b   ; BIOS FILVRM - Fills VRAM with value
	ld a,001h		;b83e
	ld (0e3fdh),a		;b840
	push ix		;b843
	ld ix,0ea20h		;b845   ; apunta a los 7 objetos lanzados (0x20 bytes cada uno)
	call borra_objeto		;b849   ; borra_objeto: los 0x20 bytes de la ficha IX a cero
	pop ix		;b84c
	call 058ffh		;b84e   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	ld de,0f028h		;b851
	ld hl,0bc30h		;b854
	ld bc,00008h		;b857
	ldir		;b85a
	ld (ix+01ch),0ffh		;b85c
	ld (ix+01dh),000h		;b860
	ld (ix+01eh),000h		;b864
	ld (ix+01fh),010h		;b868
	jp L_B936		;b86c
L_B86F:
	call 05f15h		;b86f
	ld a,(ix+01dh)		;b872   ; lee la variable 0x1D del objeto (en los jefes, la accion)
	and 001h		;b875
	ld c,009h		;b877
	call z,04313h		;b879   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;b87c   ; lee el texto en marcha
	and a			;b87f
	jr nz,L_B88A		;b880
	ld a,001h		;b882
	or (ix+01dh)		;b884   ; OR con la variable 0x1D del objeto (en los jefes, la accion)
	ld (ix+01dh),a		;b887   ; guarda la variable 0x1D del objeto (en los jefes, la accion)
L_B88A:
	call parpadeo_de_sprites		;b88a   ; parpadeo_de_sprites: cada 4 cuadros, el color de 20 sprites desde 0xF033
	call baja_sprites		;b88d   ; baja_sprites: cada (ix+0x1F) cuadros esconde los sprites de 0xF030 y avanza (ix+0x1E)
	ld a,(ix+01ch)		;b890   ; lee la variable 0x1C del objeto (cada clase la usa a su manera)
	or a			;b893
	jr z,L_B89D		;b894
	dec (ix+01ch)		;b896   ; baja la variable 0x1C del objeto (cada clase la usa a su manera)
	ret nz			;b899
	call 06046h		;b89a   ; sonido_4f: pide el sonido 0x4F
L_B89D:
	ld a,(ix+01dh)		;b89d   ; lee la variable 0x1D del objeto (en los jefes, la accion)
	ld b,a			;b8a0
	and 002h		;b8a1
	ld a,b			;b8a3
	jr nz,L_B8DB		;b8a4
	ld a,(0e003h)		;b8a6   ; lee la cuenta de cuadros
	ld b,a			;b8a9
	and 001h		;b8aa
	ret nz			;b8ac
	ld hl,0f02bh		;b8ad
	ld a,b			;b8b0
	rra			;b8b1
	and 007h		;b8b2
	ld de,0bc28h		;b8b4
	call 040a6h		;b8b7   ; de_mas_a: DE = DE + A
	ld a,(de)			;b8ba
	ld (hl),a			;b8bb
	inc hl			;b8bc
	inc hl			;b8bd
	inc hl			;b8be
	inc hl			;b8bf
	ld (hl),a			;b8c0
	ld a,b			;b8c1
	and 003h		;b8c2
	ld a,b			;b8c4
	ret nz			;b8c5
	ld hl,0f028h		;b8c6
	dec (hl)			;b8c9
	inc hl			;b8ca
	inc hl			;b8cb
	inc hl			;b8cc
	inc hl			;b8cd
	dec (hl)			;b8ce
	ld a,(hl)			;b8cf
	cp 0f0h		;b8d0
	ret nz			;b8d2
	ld a,002h		;b8d3
	or (ix+01dh)		;b8d5   ; OR con la variable 0x1D del objeto (en los jefes, la accion)
	ld (ix+01dh),a		;b8d8   ; guarda la variable 0x1D del objeto (en los jefes, la accion)
L_B8DB:
	cp 003h		;b8db
	ret nz			;b8dd
	ld hl,0a7eah		;b8de
	ld (0e34ch),hl		;b8e1   ; guarda la lista del efecto
	ld de,0f029h		;b8e4
	ld hl,0f028h		;b8e7
	ld bc,00054h		;b8ea
	ld (hl),0e0h		;b8ed
	ldir		;b8ef
	call 05f15h		;b8f1
	ld hl,00156h		;b8f4
	ld (0e363h),hl		;b8f7   ; guarda el tipo del personaje de enfrente
	xor a			;b8fa
	ld (0e8a6h),a		;b8fb   ; guarda el actor de enfrente (0xFF: ninguno)
	ld a,0ffh		;b8fe
	ld (0e368h),a		;b900   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	ld a,001h		;b903
	ld (0e8a0h),a		;b905   ; guarda el paso del menu (tabla p00:5231)
	inc a			;b908
	ld (0e360h),a		;b909   ; guarda el modo dentro de la sala (tabla p00:5A83)
	inc a			;b90c
	ld (0e8a3h),a		;b90d   ; guarda la lista de opciones del menu
	jr L_B936		;b910
L_B912:
	ret			;b912
L_B913:
	call 05f15h		;b913
	ld a,(0e003h)		;b916   ; lee la cuenta de cuadros
	and 003h		;b919
	ret nz			;b91b
	call 042e2h		;b91c   ; a_desaparece_por_tercios: con 12-13-14, p00:4C04 (efecto de borrar en tres pasos (0xE348) sobre la lista de 0xE34C); vuelve con 9-10-11
	ld a,(0e34bh)		;b91f   ; lee el efecto en marcha
	or a			;b922
	ret nz			;b923
	ld a,0ffh		;b924
	ld hl,03800h		;b926
	ld bc,00100h		;b929
	call 00056h		;b92c   ; BIOS FILVRM - Fills VRAM with value
	call zona_888_b		;b92f   ; zona_888_b: HL = 0x0888 y BC = 0x0470
	ld (ix+010h),020h		;b932
L_B936:
	inc (ix+001h)		;b936   ; sube el paso del objeto
	ret			;b939
L_B93A:
	dec (ix+010h)		;b93a
	ret nz			;b93d
	ld e,004h		;b93e
	call zona_7f8		;b940   ; zona_7f8: HL = 0x07F8
	ld hl,00ff8h		;b943
	ld e,004h		;b946
	call color_doble		;b948   ; color_doble: 8 bytes de color E en los dos nibbles desde la VRAM HL
	call zona_888_c		;b94b   ; zona_888_c: HL = 0x0888 y BC = 0x0470
	ld (ix+010h),020h		;b94e
	jr L_B936		;b952
L_B954:
	dec (ix+010h)		;b954
	ret nz			;b957
	ld e,005h		;b958
	call zona_7f8		;b95a   ; zona_7f8: HL = 0x07F8
	ld e,005h		;b95d
	ld hl,00ff8h		;b95f
	call color_doble		;b962   ; color_doble: 8 bytes de color E en los dos nibbles desde la VRAM HL
	call zona_888_c		;b965   ; zona_888_c: HL = 0x0888 y BC = 0x0470
	ld (ix+010h),020h		;b968
	jr L_B936		;b96c
L_B96E:
	dec (ix+010h)		;b96e
	ret nz			;b971
	ld e,007h		;b972
	call zona_7f8		;b974   ; zona_7f8: HL = 0x07F8
	ld e,007h		;b977
	ld hl,00ff8h		;b979
	call color_doble		;b97c   ; color_doble: 8 bytes de color E en los dos nibbles desde la VRAM HL
	call zona_888_c		;b97f   ; zona_888_c: HL = 0x0888 y BC = 0x0470
	ld (ix+010h),020h		;b982
	jp L_B936		;b986
L_B989:
	dec (ix+010h)		;b989
	ret nz			;b98c
	call zona_888		;b98d   ; zona_888: HL = 0x0888 y BC = 0x0470
	call 045b5h		;b990   ; sonido_80: pide el sonido 0x80
	call 0605ah		;b993   ; sonido_55: pide el sonido 0x55
	call 04a29h		;b996   ; graficos_14_b: patrones y colores p14:B636-B924 y 0x100 nombres de p20:AA2E
	jp L_B936		;b999
L_B99C:
	ld c,00dh		;b99c
	call 04313h		;b99e   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;b9a1   ; lee el texto en marcha
	or a			;b9a4
	ret nz			;b9a5
	ld hl,0eb70h		;b9a6   ; apunta a las banderas de la historia, byte 0x30 (se graban con la partida)
	set 2,(hl)		;b9a9
	ld (ix+01fh),040h		;b9ab   ; la variable 0x1F del objeto (en los jefes, donde va su dibujo) = 0x40
	ld a,001h		;b9af
	ld (0e8a0h),a		;b9b1   ; guarda el paso del menu (tabla p00:5231)
	inc a			;b9b4
	ld (0e360h),a		;b9b5   ; guarda el modo dentro de la sala (tabla p00:5A83)
	inc a			;b9b8
	ld (0e8a3h),a		;b9b9   ; guarda la lista de opciones del menu
	jp L_B936		;b9bc
L_B9BF:
	ret			;b9bf
L_B9C0:
	call 06050h		;b9c0   ; sonido_4e: pide el sonido 0x4E
	call 04a74h		;b9c3   ; graficos_14_c: patrones p14:B96F y colores p14:BA17 en el tercio central
	ld hl,0bc38h		;b9c6
	ld de,0f028h		;b9c9
	ld bc,00024h		;b9cc
	ldir		;b9cf
	call 05f15h		;b9d1
	jp L_B936		;b9d4
L_B9D7:
	ld c,011h		;b9d7
	call 04313h		;b9d9   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;b9dc   ; lee el texto en marcha
	or a			;b9df
	ret nz			;b9e0
	ld a,(0e887h)		;b9e1   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	or a			;b9e4
	ret nz			;b9e5
	ld (ix+01fh),040h		;b9e6   ; la variable 0x1F del objeto (en los jefes, donde va su dibujo) = 0x40
	call 06055h		;b9ea   ; sonido_3e: pide el sonido 0x3E
	jp L_B936		;b9ed
L_B9F0:
	call destello		;b9f0   ; destello: el color del borde alterna 0x0F y 0x00 (VDP R#7)
	dec (ix+01fh)		;b9f3   ; baja la variable 0x1F del objeto (en los jefes, donde va su dibujo)
	ret nz			;b9f6
	ld b,000h		;b9f7
	call 058a7h		;b9f9   ; color_de_borde: VDP R#7 = B
	jp L_B936		;b9fc
L_B9FF:
	ld c,012h		;b9ff
	call 04313h		;ba01   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;ba04   ; lee el texto en marcha
	or a			;ba07
	ret nz			;ba08
	ld a,(0e887h)		;ba09   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	or a			;ba0c
	ret nz			;ba0d
	ld (ix+01fh),040h		;ba0e   ; la variable 0x1F del objeto (en los jefes, donde va su dibujo) = 0x40
	call 06041h		;ba12   ; sonido_51: pide el sonido 0x51
	jp L_B936		;ba15
L_BA18:
	call destello		;ba18   ; destello: el color del borde alterna 0x0F y 0x00 (VDP R#7)
	dec (ix+01fh)		;ba1b   ; baja la variable 0x1F del objeto (en los jefes, donde va su dibujo)
	ret nz			;ba1e
	ld b,000h		;ba1f
	call 058a7h		;ba21   ; color_de_borde: VDP R#7 = B
	ld a,001h		;ba24
	ld (0e336h),a		;ba26   ; guarda se acaba la partida
	ret			;ba29
L_BA2A:
	call destello		;ba2a   ; destello: el color del borde alterna 0x0F y 0x00 (VDP R#7)
	dec (ix+01fh)		;ba2d   ; baja la variable 0x1F del objeto (en los jefes, donde va su dibujo)
	ret nz			;ba30
	ld b,000h		;ba31
	call 058a7h		;ba33   ; color_de_borde: VDP R#7 = B
	jp L_B936		;ba36
L_BA39:
	ld c,014h		;ba39
	call 04313h		;ba3b   ; texto_y_9_10_11: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	ld a,(0e886h)		;ba3e   ; lee el texto en marcha
	or a			;ba41
	ret nz			;ba42
	ld a,(0e887h)		;ba43   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	or a			;ba46
	ret nz			;ba47
	xor a			;ba48
	ld (0e368h),a		;ba49   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;ba4c
	ld (0e360h),a		;ba4d   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ld a,003h		;ba50
	ld (0e338h),a		;ba52   ; guarda la sala de partida (indice de p01:67E3)
	ret			;ba55
parpadeo_de_sprites:		; cada 4 cuadros, el color de 20 sprites desde 0xF033
	ld a,(0e003h)		;ba56   ; cada 4 cuadros
	ld b,a			;ba59
	and 003h		;ba5a
	ret nz			;ba5c
	ld a,b			;ba5d   ; el color sube con la cuenta
	rra			;ba5e
	rra			;ba5f
	and 003h		;ba60
	add a,00ah		;ba62
	ld hl,0f033h		;ba64   ; desde el color del sprite 12
	ld de,00004h		;ba67
	ld b,014h		;ba6a   ; 20 sprites
L_BA6C:
	ld (hl),a			;ba6c
	add hl,de			;ba6d
	djnz L_BA6C		;ba6e
	ret			;ba70
baja_sprites:		; cada (ix+0x1F) cuadros esconde los sprites de 0xF030 y avanza (ix+0x1E)
	dec (ix+01fh)		;ba71   ; baja la variable 0x1F del objeto (en los jefes, donde va su dibujo)
	ret nz			;ba74
	ld de,0f031h		;ba75
	ld hl,0f030h		;ba78
	ld bc,00050h		;ba7b
	ld (hl),0e0h		;ba7e
	ldir		;ba80
	ld (ix+01fh),010h		;ba82   ; la variable 0x1F del objeto (en los jefes, donde va su dibujo) = 0x10
	inc (ix+01eh)		;ba86   ; sube la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	ld a,(ix+01eh)		;ba89   ; lee la variable 0x1E del objeto (en los jefes, donde va su dibujo)
	and 007h		;ba8c
	cp 001h		;ba8e
	jr z,L_BA96		;ba90
	cp 006h		;ba92
	jr nz,L_BA9B		;ba94
L_BA96:
	push af			;ba96
	call 0604bh		;ba97   ; sonido_52: pide el sonido 0x52
	pop af			;ba9a
L_BA9B:
	ld hl,0bb96h		;ba9b
	call 040a1h		;ba9e   ; hl_mas_a: HL = HL + A
	ld b,003h		;baa1
	ld de,0f030h		;baa3
	ld (0e8e0h),de		;baa6   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
L_BAAA:
	push bc			;baaa
	ld a,(hl)			;baab
	inc hl			;baac
	push hl			;baad
	add a,a			;baae
	ld hl,0bbaeh		;baaf
	call 040a1h		;bab2   ; hl_mas_a: HL = HL + A
	ld e,(hl)			;bab5
	inc hl			;bab6
	ld d,(hl)			;bab7
	ex de,hl			;bab8
	ld a,(hl)			;bab9
	or a			;baba
	jr z,L_BAD0		;babb
	ld c,a			;babd
	ld b,000h		;babe
	inc hl			;bac0
	ld de,(0e8e0h)		;bac1   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	ldir		;bac5
	ld (0e8e0h),de		;bac7   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	pop hl			;bacb
	pop bc			;bacc
	djnz L_BAAA		;bacd
	ret			;bacf
L_BAD0:
	pop hl			;bad0
	pop bc			;bad1
	ret			;bad2
zona_888:		; HL = 0x0888 y BC = 0x0470
	ld hl,00888h		;bad3
	ld bc,00470h		;bad6
L_BAD9:
	call 0004ah		;bad9   ; BIOS RDVRM - Reads the content of VRAM
	ld d,a			;badc
	and 00fh		;badd
	cp 006h		;badf
	ld e,008h		;bae1
	jr z,L_BAEC		;bae3
	cp 008h		;bae5
	ld e,009h		;bae7
	jr z,L_BAEC		;bae9
	ld e,a			;baeb
L_BAEC:
	ld a,d			;baec   ; el color de fondo
	and 0f0h		;baed
	cp 060h		;baef   ; el 6 pasa a 8
	ld d,080h		;baf1
	jr z,L_BAFC		;baf3
	cp 080h		;baf5   ; el 8 pasa a 9
	ld d,090h		;baf7
	jr z,L_BAFC		;baf9
	ld d,a			;bafb
L_BAFC:
	ld a,d			;bafc
	or e			;bafd
	call 0004dh		;bafe   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;bb01
	dec bc			;bb02
	ld a,c			;bb03
	or b			;bb04
	jr nz,L_BAD9		;bb05
	ret			;bb07
zona_888_b:		; HL = 0x0888 y BC = 0x0470
	ld hl,00888h		;bb08
	ld bc,00470h		;bb0b
L_BB0E:
	call 0004ah		;bb0e   ; BIOS RDVRM - Reads the content of VRAM | el color de la VRAM
	ld d,a			;bb11
	and 00fh		;bb12   ; el de fondo (nibble bajo)
	cp 004h		;bb14   ; el 4 pasa a 6
	ld e,006h		;bb16
	jr z,L_BB27		;bb18
	cp 005h		;bb1a   ; el 5 pasa a 8
	ld e,008h		;bb1c
	jr z,L_BB27		;bb1e
	cp 00fh		;bb20   ; el 0x0F pasa a 0x0A
	ld e,00ah		;bb22
	jr z,L_BB27		;bb24
	ld e,a			;bb26
L_BB27:
	ld a,d			;bb27   ; el de tinta (nibble alto)
	and 0f0h		;bb28
	cp 040h		;bb2a   ; el 4 pasa a 6
	ld d,060h		;bb2c
	jr z,L_BB3D		;bb2e
	cp 050h		;bb30   ; el 5 pasa a 8
	ld d,080h		;bb32
	jr z,L_BB3D		;bb34
	cp 0f0h		;bb36   ; el 0x0F pasa a 0x0A
	ld d,0a0h		;bb38
	jr z,L_BB3D		;bb3a
	ld d,a			;bb3c
L_BB3D:
	ld a,d			;bb3d
	or e			;bb3e
	call 0004dh		;bb3f   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;bb42
	dec bc			;bb43
	ld a,c			;bb44
	or b			;bb45
	jr nz,L_BB0E		;bb46
	ret			;bb48
zona_888_c:		; HL = 0x0888 y BC = 0x0470
	ld hl,00888h		;bb49
	ld bc,00470h		;bb4c
L_BB4F:
	call 0004ah		;bb4f   ; BIOS RDVRM - Reads the content of VRAM | el color de la VRAM
	ld d,a			;bb52
	and 00fh		;bb53   ; el de fondo (nibble bajo)
	ld e,004h		;bb55   ; el 0 pasa a 4
	jr z,L_BB66		;bb57
	cp 004h		;bb59   ; el 4 pasa a 5
	ld e,005h		;bb5b
	jr z,L_BB66		;bb5d
	cp 005h		;bb5f   ; el 5 pasa a 7
	ld e,007h		;bb61
	jr z,L_BB66		;bb63
	ld e,a			;bb65
L_BB66:
	ld a,d			;bb66   ; el de tinta (nibble alto)
	and 0f0h		;bb67
	ld d,040h		;bb69   ; el 0 pasa a 4
	jr z,L_BB7A		;bb6b
	cp 040h		;bb6d   ; el 4 pasa a 5
	ld d,050h		;bb6f
	jr z,L_BB7A		;bb71
	cp 050h		;bb73   ; el 5 pasa a 7
	ld d,070h		;bb75
	jr z,L_BB7A		;bb77
	ld d,a			;bb79
L_BB7A:
	ld a,d			;bb7a
	or e			;bb7b
	call 0004dh		;bb7c   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;bb7f
	dec bc			;bb80
	ld a,c			;bb81
	or b			;bb82
	jr nz,L_BB4F		;bb83
	ret			;bb85
zona_7f8:		; HL = 0x07F8
	ld hl,007f8h		;bb86
color_doble:		; 8 bytes de color E en los dos nibbles desde la VRAM HL
	ld a,e			;bb89
	or a			;bb8a
	rla			;bb8b
	rla			;bb8c
	rla			;bb8d
	rla			;bb8e
	or e			;bb8f
	ld bc,00008h		;bb90
	jp 00056h		;bb93   ; BIOS FILVRM - Fills VRAM with value

; ----------------------------------------------------------------------
; DATOS resto_BB96: lo apuntan con el banco puesto p11:BA9B (0xBB96), p11:BAAF
;   (0xBBAE), p11:B8B4 (0xBC28), p11:B854 (0xBC30), p11:B9C6 (0xBC38); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p11:BA9B, p11:BAAF, p11:B8B4, p11:B854, p11:B9C6 (198 bytes)
;   0xbb96..0xbc5c  (198 bytes)
DATA_resto_BB96:
	defb 000h,003h,004h,005h,005h,005h,001h,002h,004h,000h,002h,004h,005h,005h,005h,001h	; bb96  ................
	defb 003h,004h,005h,005h,005h,001h,002h,004h,0bah,0bbh,0cbh,0bbh,0e8h,0bbh,0f1h,0bbh	; bba6  ................
	defb 00eh,0bch,027h,0bch,010h,01eh,038h,088h,00ah,02eh,02eh,084h,00ah,03eh,03ch,088h	; bbb6  ..'...8......><.
	defb 00ah,04eh,03ch,084h,00ah,01ch,00ch,05ah,080h,00ah,01ch,04ah,084h,00ah,01ch,05ah	; bbc6  .N<....Z...J...Z
	defb 088h,00ah,02ch,05ah,088h,00ah,03ch,050h,084h,00ah,04ch,050h,088h,00ah,05ch,056h	; bbd6  ..,Z..<P..LP..\V
	defb 088h,00ah,008h,038h,0a2h,084h,00ah,048h,0a2h,088h,00ah,01ch,024h,0dah,080h,00ah	; bbe6  ...8...H....$...
	defb 034h,0cah,084h,00ah,034h,0dah,088h,00ah,044h,0d0h,084h,00ah,054h,0d2h,080h,00ah	; bbf6  4...4...D...T...
	defb 064h,0c2h,084h,00ah,064h,0d2h,088h,00ah,018h,03fh,070h,08ch,00ah,03fh,080h,090h	; bc06  d...d....?p..?..
	defb 00ah,04fh,060h,094h,00ah,04fh,070h,098h,00ah,04fh,080h,09ch,00ah,05fh,068h,0a0h	; bc16  .O`..Op..O..._h.
	defb 00ah,000h,006h,008h,008h,009h,00ah,00ah,009h,008h,040h,068h,0a4h,008h,040h,088h	; bc26  ..........@h..@.
	defb 0a8h,008h,000h,070h,0ach,009h,000h,080h,0b0h,009h,010h,070h,0b4h,009h,010h,080h	; bc36  ...p.......p....
	defb 0b8h,009h,020h,080h,0bch,009h,030h,080h,0c0h,009h,008h,078h,0c4h,005h,018h,078h	; bc46  .. ...0....x...x
	defb 0c8h,005h,010h,078h,0cch,00fh	; bc56

; ======================================================================
; CODIGO 0xbc5c..0xbd12  (182 bytes)
; ======================================================================


demo_empieza:		; la demo: sala de partida 2 (0xE338), guion desde el principio (0xE00B) y el personaje en (0x50, 0x60)
	xor a			;bc5c
	ld (0e009h),a		;bc5d   ; guarda las teclas que hay
	ld (0e00bh),a		;bc60   ; guarda el puntero del guion de la demo
	inc a			;bc63
	ld (0e340h),a		;bc64   ; guarda en partida (bit 7: la demo acaba)
	inc a			;bc67
	ld (0e338h),a		;bc68   ; guarda la sala de partida (indice de p01:67E3)
	ld hl,000feh		;bc6b
	ld (0e00ch),hl		;bc6e   ; guarda la espera del guion de la demo y el byte siguiente (16 bits)
	ld a,(0eb58h)		;bc71   ; lee las banderas de la historia, byte 0x18 (se graban con la partida)
	and 03fh		;bc74
	ld (0eb58h),a		;bc76   ; guarda las banderas de la historia, byte 0x18 (se graban con la partida)
	call 058bfh		;bc79   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	call 04365h		;bc7c   ; a_primera_sala: con 1-2-3, p01:6702 (la sala de partida (o la de 0xE338, p01:67E3) con sus banderas y la entrada); vuelve con 9-10-11
	ld hl,06050h		;bc7f
	ld (0e3c1h),hl		;bc82   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;bc85
demo_cuadro:		; un cuadro de la demo (p11:BC92); al acabar el guion, sonido 0x85 y 0xE340 = 0
	call demo_guion		;bc86   ; demo_guion: el guion p11:BD12: anda hacia cada [Y X] pulsando la tecla, 0xFE n espera, 0xFF acaba; NZ mientras sigue
	ret nz			;bc89
	call 045abh		;bc8a   ; sonido_85: pide el sonido 0x85
	xor a			;bc8d
	ld (0e340h),a		;bc8e   ; guarda en partida (bit 7: la demo acaba)
	ret			;bc91
demo_guion:		; el guion p11:BD12: anda hacia cada [Y X] pulsando la tecla, 0xFE n espera, 0xFF acaba; NZ mientras sigue
	ld hl,0e00ch		;bc92   ; apunta a la espera del guion de la demo
	ld a,(hl)			;bc95
	cp 0feh		;bc96
	jr z,L_BC9F		;bc98
	dec (hl)			;bc9a
	jr nz,L_BCC9		;bc9b
	jr L_BCCF		;bc9d
L_BC9F:
	call demo_byte		;bc9f   ; demo_byte: A = el byte 0xE00B del guion
	rrca			;bca2
	rrca			;bca3
	rrca			;bca4
	rrca			;bca5
	call nibble_por_16		;bca6   ; nibble_por_16: A = (A AND 0x0F) * 16
	ld hl,0e3c1h		;bca9   ; apunta a la Y del personaje
	cp (hl)			;bcac
	jr z,L_BCDA		;bcad
	call demo_byte		;bcaf   ; demo_byte: A = el byte 0xE00B del guion
	call nibble_por_16		;bcb2   ; nibble_por_16: A = (A AND 0x0F) * 16
	ld hl,0e3c2h		;bcb5   ; apunta a la X del personaje
	cp (hl)			;bcb8
	jr z,L_BCDA		;bcb9
	ld hl,0e00bh		;bcbb   ; apunta a el puntero del guion de la demo
	ld c,(hl)			;bcbe
	inc c			;bcbf
	call demo_byte_c		;bcc0   ; demo_byte_c: A = el byte C del guion
demo_pulsa:		; la tecla de la demo como si se pulsara (p01:70BE)
	ld hl,0e009h		;bcc3   ; apunta a las teclas que hay
	call 0430ah		;bcc6   ; a_teclas_nuevas: con 1-2-3, p01:70BE (guarda A en (HL) y deja en (HL-1) lo que no estaba); vuelve con 9-10-11
L_BCC9:
	call 0436eh		;bcc9   ; a_cuadro_de_la_sala: con 1-2-3, p00:5A6E (un cuadro dentro de la sala: sprites, actores (p07:800A), musica y el modo 0xE360 (tabla p00:5A83)); vuelve con 9-10-11
	or 0ffh		;bccc
	ret			;bcce
L_BCCF:
	call demo_byte		;bccf   ; demo_byte: A = el byte 0xE00B del guion
	call demo_pulsa		;bcd2   ; demo_pulsa: la tecla de la demo como si se pulsara (p01:70BE)
	ld hl,0e00bh		;bcd5   ; apunta a el puntero del guion de la demo
	jr L_BCDE		;bcd8
L_BCDA:
	ld hl,0e00bh		;bcda   ; apunta a el puntero del guion de la demo
	inc (hl)			;bcdd
L_BCDE:
	inc (hl)			;bcde
	call demo_byte		;bcdf   ; demo_byte: A = el byte 0xE00B del guion
	cp 0ffh		;bce2
	ret z			;bce4
	cp 0feh		;bce5
	jr nz,L_BCF6		;bce7
	inc de			;bce9
	ld a,(de)			;bcea
	ld (0e00ch),a		;bceb   ; guarda la espera del guion de la demo
	ld hl,0e00bh		;bcee   ; apunta a el puntero del guion de la demo
	inc (hl)			;bcf1
	inc (hl)			;bcf2
	or 0ffh		;bcf3
	ret			;bcf5
L_BCF6:
	ld a,0feh		;bcf6
	ld (0e00ch),a		;bcf8   ; guarda la espera del guion de la demo
	or a			;bcfb
	ret			;bcfc
demo_byte:		; A = el byte 0xE00B del guion
	ld hl,0e00bh		;bcfd   ; apunta a el puntero del guion de la demo
	ld c,(hl)			;bd00
demo_byte_c:		; A = el byte C del guion
	ld de,0bd12h		;bd01   ; el guion de la demo
	ld l,c			;bd04   ; mas C
	ld h,000h		;bd05
	add hl,de			;bd07
	ex de,hl			;bd08
	ld a,(de)			;bd09   ; A = el byte
	ret			;bd0a
nibble_por_16:		; A = (A AND 0x0F) * 16
	and 00fh		;bd0b
	add a,a			;bd0d
	add a,a			;bd0e
	add a,a			;bd0f
	add a,a			;bd10
solo_ret:		; no hace nada: `ret`
	ret			;bd11

; ----------------------------------------------------------------------
; DATOS resto_BD12: lo apuntan con el banco puesto p11:BD01 (0xBD12), p11:A52D
;   (0xBDAA), p09:6EBE (0xBE02), p09:6EE4 (0xBE46); el tamano es lo que hay
;   hasta lo siguiente, no sale de recorrerlo; lo leen p11:BD01, p11:A52D,
;   p09:6EBE, p09:6EE4 (632 bytes)
;   0xbd12..0xbf8a  (632 bytes)
DATA_resto_BD12:
	defb 057h,001h,064h,004h,025h,001h,036h,008h,037h,001h,048h,004h,029h,001h,037h,004h	; bd12  W.d.%.6.7.H.).7.
	defb 0feh,001h,020h,0feh,040h,010h,0feh,0fdh,000h,0feh,0fdh,010h,0feh,0fdh,000h,0feh	; bd22  .. .@...........
	defb 0fdh,010h,0feh,0fdh,000h,0feh,0fdh,010h,0feh,0fdh,000h,0feh,0fdh,010h,0feh,0fdh	; bd32  ................
	defb 000h,0feh,0fdh,010h,0feh,0fdh,000h,0feh,0fdh,010h,0feh,0fdh,000h,0feh,0fdh,010h	; bd42  ................
	defb 0feh,0fdh,000h,0feh,0fdh,010h,0feh,0fdh,000h,0feh,0fdh,010h,0feh,0fdh,000h,0feh	; bd52  ................
	defb 0fdh,010h,0feh,0fdh,000h,0feh,0fdh,010h,0feh,0fdh,000h,0feh,0fdh,010h,0feh,0fdh	; bd62  ................
	defb 000h,0feh,0fdh,010h,0feh,0fdh,000h,0feh,0fdh,020h,058h,002h,064h,004h,025h,001h	; bd72  ......... X.d.%.
	defb 0feh,001h,020h,0feh,020h,002h,0feh,020h,010h,0feh,0fdh,000h,0feh,0c0h,010h,0feh	; bd82  .. . .. ........
	defb 0c0h,020h,055h,002h,063h,004h,024h,002h,038h,008h,039h,002h,044h,008h,065h,002h	; bd92  . U.c.$.8.9.D.e.
	defb 076h,008h,047h,002h,0feh,080h,000h,0ffh,000h,000h,04bh,055h,000h,05ch,04dh,0c5h	; bda2  v.G.......KU.\M.
	defb 039h,02ch,05bh,000h,071h,073h,076h,05fh,0d7h,0eeh,0ebh,0e9h,000h,0d3h,0a4h,0b1h	; bdb2  9,[.qsv_........
	defb 04dh,0c5h,0d4h,000h,0cdh,0c3h,000h,000h,000h,000h,03bh,056h,059h,05dh,080h,069h	; bdc2  M..........VY].i
	defb 03ah,026h,066h,010h,06eh,06fh,07eh,084h,0fch,0f6h,0e7h,0e6h,088h,0deh,09eh,0b2h	; bdd2  :&f.no~.........
	defb 0e1h,0f8h,0d5h,0d1h,0ceh,0b3h,000h,000h,000h,033h,011h,012h,013h,060h,054h,014h	; bde2  .........3...`T.
	defb 015h,062h,016h,017h,063h,018h,051h,038h,0b0h,0c9h,090h,0dbh,08fh,08eh,0dah,08dh	; bdf2  .b..c.Q8........
	defb 08ch,0cch,0d8h,08bh,08ah,089h,0abh,000h,075h,02dh,06ah,032h,03eh,019h,02fh,02bh	; be02  ........u-j2>./+
	defb 068h,04ah,083h,035h,064h,06ch,06bh,07ch,0f4h,0e3h,0e4h,0dch,0adh,0fbh,0c2h,0e0h	; be12  hJ.5dlk|........
	defb 0a3h,0a7h,091h,0b6h,0aah,0e2h,0a5h,0edh,052h,043h,077h,01ah,036h,06dh,037h,01bh	; be22  ........RCw.6m7.
	defb 01ch,082h,072h,050h,048h,061h,070h,045h,0bdh,0e8h,0d9h,0c0h,0c8h,0eah,0fah,094h	; be32  ..rPHapE........
	defb 093h,0afh,0e5h,0aeh,092h,0efh,0bbh,0cah,042h,01dh,01eh,01fh,020h,021h,081h,03ch	; be42  ........B... !.<
	defb 02eh,049h,07ah,05ah,05eh,03fh,086h,047h,0bfh,0feh,0b7h,0d6h,0d2h,0f2h,0c1h,0a6h	; be52  .IzZ^?.G........
	defb 0b4h,0f9h,099h,098h,097h,096h,095h,0bah,034h,022h,023h,057h,065h,07bh,024h,079h	; be62  ........4"#We{$y
	defb 030h,04ch,074h,058h,040h,041h,02ah,04fh,0c7h,0a2h,0b9h,0b8h,0d0h,0ech,0c4h,0a8h	; be72  0LtX@A*O........
	defb 0f1h,09ch,0f3h,0ddh,0cfh,09bh,09ah,0ach,07fh,067h,025h,078h,03dh,000h,027h,028h	; be82  .........g%x=.'(
	defb 029h,031h,044h,07dh,046h,053h,04eh,085h,0fdh,0c6h,0cbh,0beh,0f5h,0bch,0a9h,0a1h	; be92  )1D}FSN.........
	defb 0a0h,09fh,000h,0b5h,0f0h,09dh,0dfh,0f7h,034h,041h,048h,030h,039h,046h,010h,044h	; bea2  ........4AH09F.D
	defb 000h,000h,021h,06eh,042h,055h,03ah,06bh,0dbh,0aah,0c5h,0b2h,0deh,091h,000h,000h	; beb2  ..!nBU:k........
	defb 0b4h,080h,0b6h,0a9h,0a0h,0b8h,0b1h,0a4h,011h,012h,061h,06ch,067h,05ah,037h,03eh	; bec2  ..........algZ7>
	defb 038h,000h,051h,04dh,022h,05fh,05ch,023h,093h,0cch,0cfh,092h,0bdh,0c1h,000h,0a8h	; bed2  8.QM"_\#........
	defb 0aeh,0a7h,0cah,0d7h,0dch,0d1h,082h,081h,013h,032h,070h,043h,000h,02ah,03bh,06dh	; bee2  .........2pC.*.m
	defb 029h,000h,028h,035h,068h,056h,062h,057h,0c7h,0d2h,0c6h,0d8h,0a5h,099h,000h,099h	; bef2  ).(5hVbW........
	defb 0ddh,0abh,09ah,000h,0b3h,0e0h,0a2h,083h,014h,069h,03dh,049h,015h,016h,04ch,06fh	; bf02  .........i=I..Lo
	defb 058h,000h,020h,059h,064h,04bh,06ah,04fh,0bfh,0dah,0bbh,0d4h,0c9h,090h,000h,0c8h	; bf12  X. YdKjO........
	defb 0dfh,0bch,086h,085h,0b9h,0adh,0d9h,084h,02ch,036h,017h,066h,03ch,065h,047h,018h	; bf22  ........,6.f<eG.
	defb 02dh,024h,053h,045h,060h,05dh,063h,026h,096h,0d3h,0cdh,0d0h,0b5h,0c3h,094h,09dh	; bf32  -$SE`]c&........
	defb 088h,0b7h,0d5h,0ach,0d6h,087h,0a6h,09ch,02bh,02fh,000h,019h,071h,033h,01ah,000h	; bf42  ........+/..q3..
	defb 025h,074h,05eh,072h,000h,027h,05bh,01bh,08bh,0cbh,097h,000h,0e2h,0ceh,0e4h,095h	; bf52  %t^r.'[.........
	defb 000h,08ah,0a3h,0e1h,089h,000h,09fh,09bh,031h,073h,04ah,050h,040h,052h,054h,03fh	; bf62  ........1sJP@RT?
	defb 01ch,01fh,000h,02eh,000h,01dh,04eh,01eh,08eh,0beh,08dh,000h,09eh,000h,08fh,08ch	; bf72  ......N.........
	defb 0afh,0c4h,0c2h,0b0h,0c0h,0bah,0e3h,0a1h	; bf82  ........

; ----------------------------------------------------------------------
; DATOS relleno_ff: 118 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (118 bytes)
;   0xbf8a..0xc000  (118 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf8a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfaa  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfba  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfca  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfda  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfea  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bffa
