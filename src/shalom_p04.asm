; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 04 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x6057  (87 bytes)
; ======================================================================


sonido_41:		; pide el sonido 0x41
	ld a,041h		;6000
	jp 0415bh		;6002   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_50:		; pide el sonido 0x50
	ld a,050h		;6005
	jp 0415bh		;6007   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_3a:		; pide el sonido 0x3A
	ld a,03ah		;600a
	jp 0415bh		;600c   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_4a:		; pide el sonido 0x4A
	ld a,04ah		;600f
	jp 0415bh		;6011   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_4b:		; pide el sonido 0x4B
	ld a,04bh		;6014
	jp 0415bh		;6016   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
comprueba_cuatro_actores:		; 0xE379 = 1 si el byte 0x1B de los actores 1-4 vale 3, 1, 2 y 4; si no, 2
	ld a,(0e49bh)		;6019   ; el actor 1 (0xE480 + 0x1B)
	cp 003h		;601c
	jr nz,L_6039		;601e
	ld a,(0e51bh)		;6020   ; el actor 2
	cp 001h		;6023
	jr nz,L_6039		;6025
	ld a,(0e59bh)		;6027   ; el actor 3
	cp 002h		;602a
	jr nz,L_6039		;602c
	ld a,(0e61bh)		;602e   ; el actor 4
	cp 004h		;6031
	jr nz,L_6039		;6033
	ld a,001h		;6035   ; bien: 1
	jr L_603B		;6037
L_6039:
	ld a,002h		;6039
L_603B:
	ld (0e379h),a		;603b   ; guarda el resultado de los cuatro actores (1 bien, 2 mal)
	ret			;603e
pon_dibujo_6057:		; sonido 0x1E, 0xE40D = 3 y el dibujo p04:6057 en (0x30, 0x40)
	call 0458dh		;603f   ; sonido_1e: pide el sonido 0x1E
	ld a,003h		;6042
	ld (0e40dh),a		;6044
	ld de,04030h		;6047
	ld hl,06057h		;604a
	xor a			;604d
	ld (0e36dh),a		;604e   ; guarda el color de las fichas copiadas
	call 044b8h		;6051   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	jp 05e5fh		;6054   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800

; ----------------------------------------------------------------------
; DATOS dibujo_6057: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p04:6051 (6 bytes)
;   0x6057..0x605d  (6 bytes)
DATA_dibujo_6057:
	defb 001h,001h,020h,021h	; 6057
	defb 022h,023h	; 605b

; ----------------------------------------------------------------------
; DATOS vram_605D: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p04:6241 (15 bytes)
;   0x605d..0x606c  (15 bytes)
DATA_vram_605D:
	defb 009h,03ah,01ah,02bh,02fh,02eh,021h,02dh,029h,000h,011h,019h,018h,017h,0ffh	; 605d  .:.+/.!-)......

; ----------------------------------------------------------------------
; DATOS vram_606C: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p04:6231 (36 bytes)
;   0x606c..0x6090  (36 bytes)
DATA_vram_606C:
	defb 049h,03ah,030h,035h,033h,028h,000h,033h,030h,021h,023h,025h,000h,02bh,025h,039h	; 606c  I:053(.30!#%.+%9
	defb 0feh,08ch,03ah,033h,034h,021h,032h,034h,0feh,0ach,03ah,023h,02fh,02eh,034h,029h	; 607c  ..:34!24..:#/.4)
	defb 02eh,035h,025h,0ffh	; 608c

; ======================================================================
; CODIGO 0x6090..0x60b5  (37 bytes)
; ======================================================================


graficos_del_titulo:		; borde negro, pantalla vacia, 5 graficos de p04:60B5, patrones volteados p05:B255 y sprites p04:60C9
	ld b,0e0h		;6090
	call 058a7h		;6092   ; color_de_borde: VDP R#7 = B
	call 0591bh		;6095   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	ld hl,060b5h		;6098
	ld b,005h		;609b
	call graficos_de_lista		;609d   ; graficos_de_lista: B entradas de 4 bytes [RLE][VRAM] en dos tercios
	ld de,0b255h		;60a0
	ld hl,02480h		;60a3
	call 05986h		;60a6   ; rle_volteado_a_dos_tercios: el RLE volteado (p00:5A32) en dos tercios
	ld hl,01800h		;60a9
	ld de,060c9h		;60ac
	call 05a2ah		;60af   ; rle: RLE de DE a la VRAM HL
	jp fuente		;60b2   ; fuente: la fuente en 0x2808 y 0x3000 y su color

; ----------------------------------------------------------------------
; DATOS resto_60B5: lo apuntan con el banco puesto p04:6098 (0x60B5); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:6098 (20 bytes)
;   0x60b5..0x60c9  (20 bytes)
DATA_resto_60B5:
	defb 00ch,0b0h,080h,020h,055h,0b2h,000h,023h,08fh,0b3h,080h,000h,04ah,0b5h,000h,003h	; 60b5  ... U..#....J...
	defb 04ah,0b5h,080h,004h	; 60c5

; ----------------------------------------------------------------------
; DATOS graficos_60C9: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p04:60AF (354
;   bytes)
;   0x60c9..0x622b  (354 bytes)
DATA_graficos_60C9:
	defb 012h,000h,003h,008h,085h,02ah,01ch,0ffh,01ch,02ah,003h,008h,010h,000h,003h,001h	; 60c9  .....*...*......
	defb 006h,000h,086h,003h,01ch,030h,060h,0c1h,0c0h,003h,080h,081h,0afh,004h,000h,002h	; 60d9  .....0`.........
	defb 008h,08ah,0e8h,00ah,009h,008h,008h,088h,049h,02ah,01ch,0ffh,00ah,000h,086h,040h	; 60e9  ........I*.....@
	defb 080h,000h,000h,020h,020h,003h,001h,00dh,000h,003h,080h,086h,0c0h,041h,060h,030h	; 60f9  ...  ........A`0
	defb 01ch,007h,007h,000h,084h,01ch,02ah,049h,088h,003h,008h,084h,00bh,0c8h,008h,008h	; 6109  ......*I........
	defb 005h,000h,087h,020h,000h,000h,080h,000h,040h,080h,013h,000h,086h,001h,000h,002h	; 6119  ... ....@.......
	defb 002h,000h,00eh,004h,000h,087h,006h,010h,000h,000h,004h,002h,001h,004h,000h,081h	; 6129  ................
	defb 0ffh,004h,008h,082h,07ch,00bh,005h,008h,085h,088h,06bh,07fh,03eh,0ffh,006h,000h	; 6139  ....|.....k.>...
	defb 08dh,080h,000h,000h,010h,040h,080h,008h,008h,000h,0f8h,000h,002h,002h,011h,000h	; 6149  .....@..........
	defb 087h,001h,082h,084h,040h,030h,018h,003h,005h,000h,084h,03eh,07fh,06bh,088h,005h	; 6159  ....@0.....>.k..
	defb 008h,082h,009h,048h,005h,008h,002h,000h,085h,008h,088h,040h,000h,010h,011h,000h	; 6169  ...H.......@....
	defb 008h,008h,011h,000h,081h,002h,003h,000h,096h,002h,004h,008h,008h,010h,010h,000h	; 6179  ................
	defb 020h,020h,000h,0feh,000h,001h,020h,080h,040h,000h,010h,008h,004h,002h,001h,003h	; 6189    .... .@.......
	defb 000h,088h,003h,0dfh,008h,008h,00ah,009h,008h,008h,003h,00ch,002h,01ch,085h,0ddh	; 6199  ................
	defb 0ffh,07fh,0ffh,0ffh,004h,000h,092h,001h,000h,004h,000h,010h,020h,040h,080h,080h	; 61a9  ............ @..
	defb 000h,0c0h,0edh,000h,020h,020h,000h,000h,010h,007h,000h,084h,002h,000h,000h,003h	; 61b9  ....  ..........
	defb 003h,000h,088h,001h,002h,004h,008h,010h,000h,040h,080h,004h,000h,086h,0ffh,07fh	; 61c9  .........@......
	defb 0ffh,0ddh,01ch,01ch,005h,00ch,091h,00dh,00eh,0e8h,008h,008h,0c0h,002h,080h,080h	; 61d9  ................
	defb 040h,024h,014h,000h,004h,020h,041h,080h,004h,000h,008h,008h,01dh,000h,084h,020h	; 61e9  @$... A........
	defb 000h,040h,000h,003h,080h,014h,000h,081h,001h,00fh,000h,086h,080h,060h,010h,000h	; 61f9  .@...........`..
	defb 000h,002h,00dh,000h,081h,080h,006h,000h,084h,010h,000h,004h,002h,010h,000h,082h	; 6209  ................
	defb 080h,018h,00fh,000h,081h,00eh,007h,000h,083h,001h,000h,002h,004h,000h,082h,040h	; 6219  ...............@
	defb 000h,000h	; 6229

; ======================================================================
; CODIGO 0x622b..0x62c3  (152 bytes)
; ======================================================================


titulo:		; monta el titulo (p04:6234) y el texto p04:606C
	call monta_titulo		;622b   ; monta_titulo: los graficos, el texto p04:605D y el rectangulo de nombres de p05:B5CA
	ld de,0606ch		;622e
	jp 059c2h		;6231   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
monta_titulo:		; los graficos, el texto p04:605D y el rectangulo de nombres de p05:B5CA
	xor a			;6234
	ld (0e3ach),a		;6235   ; guarda el paso de los sprites del titulo
	ld (0e3adh),a		;6238   ; guarda la fase del titulo
	call graficos_del_titulo		;623b   ; graficos_del_titulo: borde negro, pantalla vacia, 5 graficos de p04:60B5, patrones volteados p05:B255 y sprites p04:60C9
	ld de,0605dh		;623e
	call 059c2h		;6241   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld hl,0b5cah		;6244
	ld e,(hl)			;6247
	inc hl			;6248
	ld d,(hl)			;6249
	inc hl			;624a
	ld c,(hl)			;624b
	inc hl			;624c
	ld b,(hl)			;624d
	inc hl			;624e
rectangulo_a_vram:		; B filas de C bytes de HL a la VRAM DE (0x20 por fila)
	ex de,hl			;624f
L_6250:
	push de			;6250
	push hl			;6251
	push bc			;6252
	ld b,000h		;6253
	call 05941h		;6255   ; copia_a_vram: LDIRVM de DE a la VRAM HL
	pop bc			;6258
	pop hl			;6259
	ld de,00020h		;625a
	add hl,de			;625d
	pop de			;625e
	ld a,c			;625f
	call 040a6h		;6260   ; de_mas_a: DE = DE + A
	djnz L_6250		;6263
	ret			;6265
titulo_cuadro:		; un cuadro del titulo: espera, sonido 0x50 y los sprites que aparecen (0xE3AC, p04:62C3)
	call 05f15h		;6266
	ld hl,0f000h		;6269   ; apunta a los atributos de los 32 sprites
	ld de,0f001h		;626c
	ld a,0d0h		;626f
	ld (hl),a			;6271
	ld bc,00017h		;6272
	ldir		;6275
	ld a,(0e3adh)		;6277   ; lee la fase del titulo
	cp 001h		;627a
	jp z,L_6290		;627c
	jp nc,L_631E		;627f
	ld a,(0e004h)		;6282   ; lee la espera del estado, en cuadros
	cp 0e0h		;6285
	ret nc			;6287
	ld hl,0e3adh		;6288   ; apunta a la fase del titulo
	inc (hl)			;628b
	call sonido_50		;628c   ; sonido_50: pide el sonido 0x50
	ret			;628f
L_6290:
	ld hl,0e3ach		;6290   ; apunta a el paso de los sprites del titulo
	ld a,(hl)			;6293
	call sprites_del_titulo		;6294   ; sprites_del_titulo: copia a 0xF000 la lista de sprites A de p04:62C3
	ld a,(0e004h)		;6297   ; lee la espera del estado, en cuadros
	and 003h		;629a
	ret nz			;629c
	ld a,(0e3ach)		;629d   ; lee el paso de los sprites del titulo
	cp 005h		;62a0
	jr z,L_62A9		;62a2
	ld hl,0e3ach		;62a4   ; apunta a el paso de los sprites del titulo
	inc (hl)			;62a7
	ret			;62a8
L_62A9:
	ld hl,0e3adh		;62a9   ; apunta a la fase del titulo
	inc (hl)			;62ac
	ret			;62ad
sprites_del_titulo:		; copia a 0xF000 la lista de sprites A de p04:62C3
	or a			;62ae
	ret z			;62af
	dec a			;62b0
	ld de,062c3h		;62b1
	call 043a4h		;62b4   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld a,(de)			;62b7
	inc de			;62b8
	ld c,a			;62b9
	ld b,000h		;62ba
	ex de,hl			;62bc
	ld de,0f000h		;62bd   ; apunta a los atributos de los 32 sprites
	ldir		;62c0
	ret			;62c2

; ----------------------------------------------------------------------
; DATOS resto_62C3: lo apuntan con el banco puesto p04:62B1 (0x62C3); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:62B1 (91 bytes)
;   0x62c3..0x631e  (91 bytes)
DATA_resto_62C3:
	defb 0cdh,062h,0d2h,062h,0e3h,062h,0f4h,062h,00dh,063h,004h,028h,0a8h,000h,00fh,010h	; 62c3  .b.b.b.b.c.(....
	defb 020h,0a0h,004h,00fh,020h,0b0h,008h,00fh,030h,0a0h,00ch,00fh,030h,0b0h,010h,00fh	; 62d3   ... ...0...0...
	defb 010h,020h,0a0h,014h,00fh,020h,0b0h,018h,00fh,030h,0a0h,01ch,00fh,030h,0b0h,020h	; 62e3  . ... ...0...0.
	defb 00fh,018h,010h,0b0h,024h,00fh,020h,0a0h,028h,00fh,020h,0b0h,02ch,00fh,030h,0a0h	; 62f3  ....$. .(. .,.0.
	defb 030h,00fh,030h,0b0h,034h,00fh,040h,0b0h,038h,00fh,010h,020h,0a0h,03ch,00fh,020h	; 6303  0.0.4.@.8.. .<.
	defb 0b0h,040h,00fh,030h,0a0h,044h,00fh,030h,0b0h,048h,00fh	; 6313  .@.0.D.0.H.

; ======================================================================
; CODIGO 0x631e..0x633d  (31 bytes)
; ======================================================================


L_631E:
	ret			;631e
marco_de_la_escena:		; los RLE p04:633D y p04:6432, el dibujo p04:6443 y 8 x 8 nombres en 0x3818
	ld de,0633dh		;631f
	call 059fbh		;6322   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld de,06432h		;6325
	call 059fbh		;6328   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld hl,06443h		;632b
	call dibujo_en_el_mapa		;632e   ; dibujo_en_el_mapa: un dibujo [posicion][ancho][alto] y sus fichas a 0xED00
	ld de,03818h		;6331
	ld bc,00808h		;6334
	ld hl,06447h		;6337
	jp rectangulo_a_vram		;633a   ; rectangulo_a_vram: B filas de C bytes de HL a la VRAM DE (0x20 por fila)

; ----------------------------------------------------------------------
; DATOS graficos_633D: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0
;   acaba; lo leen p04:6322 (245 bytes)
;   0x633d..0x6432  (245 bytes)
DATA_graficos_633D:
	defb 000h,027h,005h,000h,0a3h,001h,003h,007h,000h,001h,00fh,03fh,07ch,0f3h,0cfh,0bfh	; 633d  .'.........?|...
	defb 01fh,0ffh,0f8h,087h,07fh,0feh,0f0h,0eeh,0f8h,0ffh,01fh,0e1h,01eh,0efh,0efh,01fh	; 634d  ................
	defb 000h,080h,0f0h,0fch,03fh,0cfh,0f3h,0fdh,005h,000h,0bfh,080h,0c0h,0e0h,00fh,01eh	; 635d  ....?...........
	defb 01dh,03bh,03bh,077h,076h,076h,07fh,0fch,0feh,0ffh,0ffh,032h,013h,078h,003h,0f0h	; 636d  ...wvv.....2.x..
	defb 03ch,0c3h,0dfh,023h,051h,051h,084h,063h,018h,087h,0f0h,00ch,099h,0d9h,07eh,0bfh	; 637d  <..#QQ.c......~.
	defb 07fh,0ffh,0ffh,04eh,004h,024h,0f0h,078h,0b8h,0dch,0dch,02eh,06eh,06eh,077h,076h	; 638d  ...N.$.x....nnwv
	defb 076h,03ah,03bh,01dh,01eh,00fh,012h,0cbh,04ah,092h,003h,0ffh,085h,07fh,045h,060h	; 639d  v:......J.....E`
	defb 06ch,00ch,003h,0ffh,085h,022h,0d9h,095h,090h,002h,003h,0ffh,085h,083h,0a2h,022h	; 63ad  l...."........."
	defb 02eh,044h,003h,0ffh,081h,03eh,003h,06eh,088h,01ch,0dch,0b8h,078h,0f0h,007h,003h	; 63bd  .D...>.n....x...
	defb 001h,005h,000h,0a3h,0bfh,0cfh,0f3h,07ch,03fh,00fh,001h,000h,04ah,0ffh,0f5h,07fh	; 63cd  .......|?...J...
	defb 087h,0f8h,0ffh,01fh,091h,0ffh,00bh,0feh,0e1h,01fh,0ffh,0f8h,03dh,0f3h,0cfh,03fh	; 63dd  ............=..?
	defb 0fch,0f0h,080h,000h,0e0h,0c0h,080h,007h,000h,089h,094h,096h,0e6h,0a5h,095h,094h	; 63ed  ................
	defb 000h,000h,0b9h,004h,092h,08dh,0b9h,000h,000h,092h,052h,01eh,0d2h,052h,092h,000h	; 63fd  ..........R..R..
	defb 000h,0e9h,04fh,004h,049h,002h,000h,091h,033h,04ah,04ah,07bh,04ah,04ah,000h,000h	; 640d  ..O.I...3JJ{JJ..
	defb 09ch,050h,05ch,090h,050h,05ch,000h,000h,07fh,004h,03bh,084h,07fh,000h,000h,0fch	; 641d  .P\.P\..........
	defb 004h,0b8h,081h,0fch,000h	; 642d

; ----------------------------------------------------------------------
; DATOS graficos_6432: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0
;   acaba; lo leen p04:6328 (17 bytes)
;   0x6432..0x6443  (17 bytes)
DATA_graficos_6432:
	defb 000h,007h,011h,0a0h,081h,0aah,007h,0a0h,081h,0aah,07fh,0a0h,027h,0a0h,040h,0f0h	; 6432  ............'.@.
	defb 000h	; 6442

; ----------------------------------------------------------------------
; DATOS resto_6443: lo apuntan con el banco puesto p04:632B (0x6443), p04:6337
;   (0x6447); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p04:632B, p04:6337 (68 bytes)
;   0x6443..0x6487  (68 bytes)
DATA_resto_6443:
	defb 000h,0c0h,008h,008h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0e0h,0e1h,0e2h	; 6443  ................
	defb 0e3h,0e4h,0e5h,000h,000h,0e6h,0e7h,0e8h,0e9h,0eah,0ebh,000h,000h,0ech,0edh,0eeh	; 6453  ................
	defb 0efh,0f0h,0f1h,000h,000h,0f2h,0f3h,0f4h,0f5h,0f6h,0f7h,000h,000h,0f8h,0f9h,0fah	; 6463  ................
	defb 0fbh,0fch,0fdh,000h,000h,000h,000h,0feh,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6473  ................
	defb 000h,000h,000h,000h	; 6483

; ======================================================================
; CODIGO 0x6487..0x65b8  (305 bytes)
; ======================================================================


fuente_y_colores:		; la fuente en los tres tercios y su color
	call fuente_en_tres_tercios		;6487   ; fuente_en_tres_tercios: la fuente p04:6F39 en 0x2000, 0x2800 y 0x3000 y lo extra de p04:6F41
	jr color_de_la_fuente_en_tres_tercios		;648a
fuente:		; la fuente en 0x2808 y 0x3000 y su color
	call fuente_extra		;648c   ; fuente_extra: p04:76E9 en 0x2808 y la fuente en 0x3000
	jr color_de_la_fuente		;648f
fuente_en_tres_tercios:		; la fuente p04:6F39 en 0x2000, 0x2800 y 0x3000 y lo extra de p04:6F41
	ld hl,02000h		;6491
	call copia_fuente		;6494   ; copia_fuente: 0x7B0 bytes de la fuente p04:6F39 a la VRAM HL
	ld hl,02800h		;6497
	call copia_fuente		;649a   ; copia_fuente: 0x7B0 bytes de la fuente p04:6F39 a la VRAM HL
	call fuente_extra		;649d   ; fuente_extra: p04:76E9 en 0x2808 y la fuente en 0x3000
	ld hl,02808h		;64a0
	ld de,06f41h		;64a3
	ld bc,00028h		;64a6
	jp 05941h		;64a9   ; copia_a_vram: LDIRVM de DE a la VRAM HL
fuente_extra:		; p04:76E9 en 0x2808 y la fuente en 0x3000
	ld hl,02808h		;64ac
	ld de,076e9h		;64af
	ld bc,00078h		;64b2
	call 05941h		;64b5   ; copia_a_vram: LDIRVM de DE a la VRAM HL
	ld hl,03000h		;64b8
copia_fuente:		; 0x7B0 bytes de la fuente p04:6F39 a la VRAM HL
	ld de,06f39h		;64bb
	ld bc,007b0h		;64be
	jp 05941h		;64c1   ; copia_a_vram: LDIRVM de DE a la VRAM HL
color_de_la_fuente_en_tres_tercios:		; color 0xF0 para la fuente en los tres tercios
	ld hl,00000h		;64c4
	call color_f0_de_la_fuente		;64c7   ; color_f0_de_la_fuente: 0x7B0 bytes de color 0xF0 desde HL
	ld hl,00800h		;64ca
	call color_f0_de_la_fuente		;64cd   ; color_f0_de_la_fuente: 0x7B0 bytes de color 0xF0 desde HL
	call color_de_la_fuente		;64d0   ; color_de_la_fuente: color 0xF0 para la fuente (y 5 y 8 para dos fichas)
	ld hl,00838h		;64d3
	ld bc,00010h		;64d6
	jp pon_color_f0		;64d9   ; pon_color_f0: llena BC bytes de la VRAM HL con 0xF0
color_de_la_fuente:		; color 0xF0 para la fuente (y 5 y 8 para dos fichas)
	ld hl,00808h		;64dc
	ld bc,00078h		;64df
	call pon_color_f0		;64e2   ; pon_color_f0: llena BC bytes de la VRAM HL con 0xF0
	ld hl,00838h		;64e5
	ld bc,00008h		;64e8
	ld a,005h		;64eb
	call 00056h		;64ed   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00840h		;64f0
	ld bc,00008h		;64f3
	ld a,008h		;64f6
	call 00056h		;64f8   ; BIOS FILVRM - Fills VRAM with value
	ld hl,01000h		;64fb
color_f0_de_la_fuente:		; 0x7B0 bytes de color 0xF0 desde HL
	ld bc,007b0h		;64fe
pon_color_f0:		; llena BC bytes de la VRAM HL con 0xF0
	ld a,0f0h		;6501
	jp 00056h		;6503   ; BIOS FILVRM - Fills VRAM with value
fuente_en_dos_tercios:		; 0x200 bytes de la fuente en dos tercios y colores a cero
	ld hl,02000h		;6506
	ld de,06f39h		;6509
	ld bc,00200h		;650c
	call 05945h		;650f   ; copia_a_dos_tercios: LDIRVM en dos tercios seguidos (0x800 entre uno y otro)
	xor a			;6512
	push af			;6513
	ld hl,00040h		;6514
	ld bc,00008h		;6517
	call 0595dh		;651a   ; llena_dos_tercios: FILVRM en dos tercios
	pop af			;651d
	ld hl,00108h		;651e
	ld bc,000d0h		;6521
	jp 0595dh		;6524   ; llena_dos_tercios: FILVRM en dos tercios
rotulo_konami:		; el RLE p04:7761 y 6 filas x 21 nombres desde 0x40 en 0x3907
	ld hl,00000h		;6527
	ld (0e00eh),hl		;652a   ; guarda la cuenta del rotulo de Konami y el byte siguiente (16 bits)
	ld de,07761h		;652d
	call 059fbh		;6530   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld hl,00a00h		;6533
	ld bc,003f0h		;6536
	xor a			;6539
	call 00056h		;653a   ; BIOS FILVRM - Fills VRAM with value
	ld hl,03907h		;653d
	ld a,040h		;6540
	ld c,006h		;6542
	ld de,0000bh		;6544
L_6547:
	ld b,015h		;6547
L_6549:
	call 0004dh		;6549   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;654c
	inc a			;654d
	djnz L_6549		;654e
	add hl,de			;6550
	dec c			;6551
	jr nz,L_6547		;6552
	ret			;6554
rotulo_konami_cuadro:		; una columna del rotulo cada cuadro: carga la pantalla 0xE00F (p04:65B8) en 0xED00 y la va pintando (p04:65C4)
	ld a,(0e00fh)		;6555   ; lee la pantalla del rotulo de Konami
	cp 006h		;6558
	ld c,a			;655a
	ret z			;655b
	ld a,(0e00eh)		;655c   ; lee la cuenta del rotulo de Konami
	and 007h		;655f
	ld a,c			;6561
	push af			;6562
	call z,pantalla_del_rotulo		;6563   ; pantalla_del_rotulo: el RLE de la pantalla A (p04:65B8) a 0xED00
	pop af			;6566
	call vram_del_rotulo		;6567   ; vram_del_rotulo: DE = la direccion de VRAM A de p04:65C4
	ld hl,0e00eh		;656a   ; apunta a la cuenta del rotulo de Konami
	ld a,(hl)			;656d
	and 007h		;656e
	ld c,a			;6570
	cp 007h		;6571
	jr nz,L_6577		;6573
	inc hl			;6575
	inc (hl)			;6576
L_6577:
	inc a			;6577
	and 007h		;6578
	ld (0e00eh),a		;657a   ; guarda la cuenta del rotulo de Konami
	ld a,c			;657d
	call 040a6h		;657e   ; de_mas_a: DE = DE + A
	ld a,c			;6581
	ld hl,0ed00h		;6582   ; apunta a los nombres de la pantalla (32 x 24)
	call 040a1h		;6585   ; hl_mas_a: HL = HL + A
	ex de,hl			;6588
	ld b,015h		;6589
L_658B:
	ld a,(de)			;658b
	call 0004dh		;658c   ; BIOS WRTVRM - Writes data in VRAM
	ld a,008h		;658f
	call 040a6h		;6591   ; de_mas_a: DE = DE + A
	ld a,008h		;6594
	call 040a1h		;6596   ; hl_mas_a: HL = HL + A
	djnz L_658B		;6599
	inc b			;659b
	ret			;659c
pantalla_del_rotulo:		; el RLE de la pantalla A (p04:65B8) a 0xED00
	ld hl,065b8h		;659d
	call 040a0h		;65a0   ; hl_mas_2a: HL = HL + 2 * A
	ld e,(hl)			;65a3
	inc hl			;65a4
	ld d,(hl)			;65a5
	inc hl			;65a6
	ex de,hl			;65a7
	ld de,0ed00h		;65a8   ; apunta a los nombres de la pantalla (32 x 24)
	jp rle_a_ram		;65ab   ; rle_a_ram: RLE de HL a la RAM DE: 0 acaba, bit 7 = repite, si no copia n; con 0x80, otra direccion
vram_del_rotulo:		; DE = la direccion de VRAM A de p04:65C4
	ld hl,065c4h		;65ae
	call 040a0h		;65b1   ; hl_mas_2a: HL = HL + 2 * A
	ld e,(hl)			;65b4
	inc hl			;65b5
	ld d,(hl)			;65b6
	ret			;65b7

; ----------------------------------------------------------------------
; DATOS pantallas_a_ram: 6 palabras: 6 RLE que p04:659D descomprime a 0xED00
;   (p04:65D4, el formato de los graficos); lo leen p04:659D (12 bytes)
;   0x65b8..0x65c4  (12 bytes)
DATA_pantallas_a_ram:
	defb 0e0h,078h	; 65b8
	defb 0e5h,078h	; 65ba
	defb 0eah,078h	; 65bc
	defb 0f1h,078h	; 65be
	defb 0f8h,078h	; 65c0
	defb 0fdh,078h	; 65c2

; ----------------------------------------------------------------------
; DATOS direcciones_vram: 6 palabras: 6 direcciones de VRAM (0x0A00-0x0D48)
;   que da p04:65AE; lo leen p04:65AE (12 bytes)
;   0x65c4..0x65d0  (12 bytes)
DATA_direcciones_vram:
	defb 000h,00ah	; 65c4
	defb 0a8h,00ah	; 65c6
	defb 050h,00bh	; 65c8
	defb 0f8h,00bh	; 65ca
	defb 0a0h,00ch	; 65cc
	defb 048h,00dh	; 65ce

; ======================================================================
; CODIGO 0x65d0..0x6683  (179 bytes)
; ======================================================================


rle_a_ram_con_destino:		; el RLE de HL con su direccion de RAM delante
	ld e,(hl)			;65d0
	inc hl			;65d1
	ld d,(hl)			;65d2
	inc hl			;65d3
rle_a_ram:		; RLE de HL a la RAM DE: 0 acaba, bit 7 = repite, si no copia n; con 0x80, otra direccion
	ld a,(hl)			;65d4   ; el byte del RLE
	and a			;65d5
	ret z			;65d6   ; 0: acaba
	inc hl			;65d7
	ld b,a			;65d8
	and 07fh		;65d9   ; bit 7: repetir
	cp b			;65db
	jr z,L_65E8		;65dc
	and a			;65de
	jr z,rle_a_ram_con_destino		;65df   ; 0x80: otra direccion
	ld c,a			;65e1   ; C = cuantos se copian
	ld b,000h		;65e2
	ldir		;65e4
	jr rle_a_ram		;65e6
L_65E8:
	ld a,(hl)			;65e8
	inc hl			;65e9
L_65EA:
	ld (de),a			;65ea
	inc de			;65eb
	djnz L_65EA		;65ec
	jr rle_a_ram		;65ee
cortinilla_de_la_escena:		; efecto en pasos (0xE348) con la lista de 0xE34C, de dos en dos columnas (p00:4CC2)
	ld ix,(0e34ch)		;65f0   ; lee la lista del efecto
	ld a,(0e348h)		;65f4   ; lee el paso del efecto de aparecer/borrar
	dec a			;65f7
	jr z,L_6616		;65f8
	dec a			;65fa
	jp z,L_668B		;65fb
	ld e,(ix+000h)		;65fe
	ld d,(ix+001h)		;6601
	call 059fbh		;6604   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld a,06eh		;6607
	ld (0e349h),a		;6609   ; guarda la tabla del efecto (0: colores, 1: patrones) o la cuenta
	ld a,001h		;660c
	ld (0e34bh),a		;660e   ; guarda el efecto en marcha
L_6611:
	ld hl,0e348h		;6611   ; apunta a el paso del efecto de aparecer/borrar
	inc (hl)			;6614
	ret			;6615
L_6616:
	ld hl,0e349h		;6616   ; apunta a la tabla del efecto (0: colores, 1: patrones) o la cuenta
	ld a,(hl)			;6619   ; la cuenta baja
	dec (hl)			;661a
	cp 00eh		;661b   ; hasta 0x0E
	jr z,L_6611		;661d
	bit 0,a		;661f   ; par: patrones; impar: colores
	jr nz,L_664B		;6621
	ld e,a			;6623
	and 0f0h		;6624   ; la fila (nibble alto) por 64
	ld l,a			;6626
	ld h,000h		;6627
	add hl,hl			;6629
	add hl,hl			;662a
	add hl,hl			;662b
	ld a,e			;662c   ; y la columna (nibble bajo) / 2
	and 00fh		;662d
	srl a		;662f
	add a,l			;6631
	ld l,a			;6632
	push hl			;6633
	ld de,00000h		;6634
	add hl,de			;6637
	ex de,hl			;6638
	ld l,(ix+002h)		;6639   ; el destino de la lista
	ld h,(ix+003h)		;663c
	ld bc,00080h		;663f
	and a			;6642
	sbc hl,bc		;6643
	pop bc			;6645
	add hl,bc			;6646
	ex de,hl			;6647
	jp 04cc2h		;6648   ; columna_de_vram: 16 bytes de DE a la VRAM HL, saltando C en origen y destino
L_664B:
	ld e,a			;664b   ; la columna
	and 00fh		;664c
	cp 00fh		;664e   ; la 0x0F pasa a la fila siguiente
	jr nz,L_6656		;6650
	ld a,e			;6652
	add a,010h		;6653
	ld e,a			;6655
L_6656:
	and 00fh		;6656   ; la columna / 2
	srl a		;6658
	ld hl,06683h		;665a   ; en la tabla p04:6683
	call 040a1h		;665d   ; hl_mas_a: HL = HL + A
	ld a,e			;6660
	ld e,(hl)			;6661
	and 0f0h		;6662
	ld l,a			;6664
	ld h,000h		;6665
	add hl,hl			;6667
	add hl,hl			;6668
	add hl,hl			;6669
	ld a,e			;666a
	add a,l			;666b
	ld l,a			;666c
	push hl			;666d
	ld de,00800h		;666e   ; en los colores (0x800 mas alla)
	add hl,de			;6671
	ex de,hl			;6672
	ld l,(ix+002h)		;6673   ; el destino de la lista
	ld h,(ix+003h)		;6676
	ld bc,00280h		;6679
	add hl,bc			;667c
	pop bc			;667d
	add hl,bc			;667e
	ex de,hl			;667f
	jp 04cc2h		;6680   ; columna_de_vram: 16 bytes de DE a la VRAM HL, saltando C en origen y destino

; ----------------------------------------------------------------------
; DATOS resto_6683: lo apuntan con el banco puesto p04:665A (0x6683); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:665A (8 bytes)
;   0x6683..0x668b  (8 bytes)
DATA_resto_6683:
	defb 006h,005h,004h,003h,002h,001h,000h,007h	; 6683  ........

; ======================================================================
; CODIGO 0x668b..0x6699  (14 bytes)
; ======================================================================


L_668B:
	xor a			;668b
	ld (0e34bh),a		;668c   ; guarda el efecto en marcha
	ld (0e348h),a		;668f   ; guarda el paso del efecto de aparecer/borrar
	ret			;6692
escena_inicial:		; un paso de la escena inicial (0xE350, tabla p04:6699)
	ld a,(0e350h)		;6693   ; lee el paso de la escena (inicial, historia, final)
	call 040abh		;6696   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_6699: tabla de 53 palabras del despachador (call 0x408D en
;   0x6696); lo leen L_40AB (106 bytes)
;   0x6699..0x6703  (106 bytes)
DATA_saltos_6699:
	defb 003h,067h	; 6699
	defb 00bh,067h	; 669b
	defb 00eh,067h	; 669d
	defb 011h,067h	; 669f
	defb 014h,067h	; 66a1
	defb 01ah,067h	; 66a3
	defb 0a3h,067h	; 66a5
	defb 0c1h,067h	; 66a7
	defb 002h,068h	; 66a9
	defb 01fh,068h	; 66ab
	defb 0c1h,067h	; 66ad
	defb 093h,068h	; 66af
	defb 01ah,068h	; 66b1
	defb 0c1h,067h	; 66b3
	defb 015h,068h	; 66b5
	defb 0ach,068h	; 66b7
	defb 05ah,069h	; 66b9
	defb 06ch,069h	; 66bb
	defb 041h,06ah	; 66bd
	defb 04ch,06ah	; 66bf
	defb 06ah,06ah	; 66c1
	defb 08eh,06ah	; 66c3
	defb 0bbh,06ah	; 66c5
	defb 0d5h,06ah	; 66c7
	defb 001h,06bh	; 66c9
	defb 018h,06bh	; 66cb
	defb 089h,06bh	; 66cd
	defb 08fh,06bh	; 66cf
	defb 095h,06bh	; 66d1
	defb 0aah,06bh	; 66d3
	defb 0b8h,06bh	; 66d5
	defb 0d6h,06bh	; 66d7
	defb 001h,06ch	; 66d9
	defb 010h,06ch	; 66db
	defb 016h,06ch	; 66dd
	defb 02eh,06ch	; 66df
	defb 040h,06ch	; 66e1
	defb 064h,06ch	; 66e3
	defb 07eh,06ch	; 66e5
	defb 090h,06ch	; 66e7
	defb 0bfh,06ch	; 66e9
	defb 0c2h,06ch	; 66eb
	defb 0f2h,06ch	; 66ed
	defb 029h,06dh	; 66ef
	defb 055h,06dh	; 66f1
	defb 067h,06dh	; 66f3
	defb 083h,06dh	; 66f5
	defb 097h,06dh	; 66f7
	defb 0a9h,06dh	; 66f9
	defb 0afh,06dh	; 66fb
	defb 0c8h,06dh	; 66fd
	defb 0ceh,06dh	; 66ff
	defb 0e6h,06dh	; 6701

; ======================================================================
; CODIGO 0x6703..0x678e  (139 bytes)
; ======================================================================


escena_inicial_00:		; el paso 0 de la escena inicial (0xE350, tabla p04:6699)
	ld a,001h		;6703
	ld (0e3aeh),a		;6705
	jp escena_siguiente		;6708   ; escena_siguiente: 0xE350 + 1
escena_inicial_01:		; el paso 1 de la escena inicial (0xE350, tabla p04:6699)
	jp escena_siguiente		;670b   ; escena_siguiente: 0xE350 + 1
escena_inicial_02:		; el paso 2 de la escena inicial (0xE350, tabla p04:6699)
	jp escena_siguiente		;670e   ; escena_siguiente: 0xE350 + 1
escena_inicial_03:		; el paso 3 de la escena inicial (0xE350, tabla p04:6699)
	jp escena_siguiente		;6711   ; escena_siguiente: 0xE350 + 1
escena_inicial_04:		; el paso 4 de la escena inicial (0xE350, tabla p04:6699)
	call 050ebh		;6714   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	jp escena_siguiente		;6717   ; escena_siguiente: 0xE350 + 1
escena_inicial_05:		; el paso 5 de la escena inicial (0xE350, tabla p04:6699)
	ld a,008h		;671a
	ld (0e351h),a		;671c   ; guarda el paso de la pantalla de nombres, o la pagina de la historia
	call 0599ah		;671f   ; borra_patrones: 0x1000 de patrones y de colores a cero
	call 0591bh		;6722   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	call 058d4h		;6725   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	call fuente		;6728   ; fuente: la fuente en 0x2808 y 0x3000 y su color
	ld de,0b69eh		;672b
	ld hl,02880h		;672e
	call 05a2ah		;6731   ; rle: RLE de DE a la VRAM HL
	ld de,0b951h		;6734
	ld hl,02600h		;6737
	call 05a2ah		;673a   ; rle: RLE de DE a la VRAM HL
	ld de,0bc83h		;673d
	ld hl,00600h		;6740
	call 05a2ah		;6743   ; rle: RLE de DE a la VRAM HL
	ld de,07ffch		;6746
	ld hl,02400h		;6749
	call 05a2ah		;674c   ; rle: RLE de DE a la VRAM HL
	ld de,08ea9h		;674f
	ld hl,00400h		;6752
	ld bc,00200h		;6755
	call 05941h		;6758   ; copia_a_vram: LDIRVM de DE a la VRAM HL
	ld hl,00880h		;675b
	ld bc,00300h		;675e
	xor a			;6761
	call 00056h		;6762   ; BIOS FILVRM - Fills VRAM with value
	ld hl,0ed0ah		;6765
	ld a,080h		;6768
	ld bc,00808h		;676a
	call rectangulo_de_fichas		;676d   ; rectangulo_de_fichas: B x C fichas seguidas desde A en el bufer HL (0x20 por fila)
	ld hl,0ee08h		;6770
	ld a,010h		;6773
	ld bc,00c08h		;6775
	call rectangulo_de_fichas		;6778   ; rectangulo_de_fichas: B x C fichas seguidas desde A en el bufer HL (0x20 por fila)
	xor a			;677b
	ld (0e348h),a		;677c   ; guarda el paso del efecto de aparecer/borrar
	call marco_de_la_escena		;677f   ; marco_de_la_escena: los RLE p04:633D y p04:6432, el dibujo p04:6443 y 8 x 8 nombres en 0x3818
	ld hl,0678eh		;6782
	ld (0e34ch),hl		;6785   ; guarda la lista del efecto
	call 05e5fh		;6788   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp escena_siguiente		;678b   ; escena_siguiente: 0xE350 + 1

; ----------------------------------------------------------------------
; DATOS resto_678E: lo apuntan con el banco puesto p04:6782 (0x678E); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:6782 (4 bytes)
;   0x678e..0x6792  (4 bytes)
DATA_resto_678E:
	defb 083h,0b9h,080h,008h	; 678e

; ======================================================================
; CODIGO 0x6792..0x6873  (225 bytes)
; ======================================================================


rectangulo_de_fichas:		; B x C fichas seguidas desde A en el bufer HL (0x20 por fila)
	ld de,00020h		;6792
L_6795:
	push bc			;6795
	push hl			;6796
L_6797:
	ld (hl),a			;6797   ; la ficha
	inc a			;6798   ; la siguiente
	inc hl			;6799
	djnz L_6797		;679a
	pop hl			;679c
	pop bc			;679d
	add hl,de			;679e   ; la siguiente fila
	dec c			;679f
	jr nz,L_6795		;67a0
	ret			;67a2
escena_inicial_06:		; el paso 6 de la escena inicial (0xE350, tabla p04:6699)
	ld c,002h		;67a3
	call 04dfdh		;67a5   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;67a8   ; lee el texto en marcha
	and a			;67ab
	ret nz			;67ac
	call 0452dh		;67ad
	ld a,021h		;67b0
	ld (0e8a3h),a		;67b2   ; guarda la lista de opciones del menu
	call 0567ah		;67b5   ; opciones_guardadas: las opciones de A con el cursor guardado (0xE8B2/0xE8B1)
	call 056dbh		;67b8   ; pinta_opciones: las opciones de 0xE8B8 (textos p04:7A15) en columna desde 0x3A1A
	call 057aeh		;67bb   ; pinta_cursor: el cursor parpadeante en la columna de opciones
	jp escena_siguiente		;67be   ; escena_siguiente: 0xE350 + 1
escena_inicial_07:		; el paso 7 de la escena inicial (0xE350, tabla p04:6699)
	call 05774h		;67c1   ; cursor_vertical: arriba/abajo con repeticion (0xE8B0) en 0xE8A4
	call 057aeh		;67c4   ; pinta_cursor: el cursor parpadeante en la columna de opciones
	ld a,(0e008h)		;67c7   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 010h		;67ca
	ret z			;67cc
	ld a,(0e350h)		;67cd   ; lee el paso de la escena (inicial, historia, final)
	cp 007h		;67d0
	call z,dibujo_si_opcion_1		;67d2   ; dibujo_si_opcion_1: con la opcion 1, el dibujo de p04:67EE
	cp 00dh		;67d5
	call z,dibujo_si_opcion_3		;67d7   ; dibujo_si_opcion_3: con la opcion 3, el dibujo de p04:67EE
	call 050ebh		;67da   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	jp escena_siguiente		;67dd   ; escena_siguiente: 0xE350 + 1
dibujo_si_opcion_3:		; con la opcion 3, el dibujo de p04:67EE
	ld a,(0e8a4h)		;67e0   ; lee la opcion del cursor
	cp 003h		;67e3
	ret nz			;67e5
	jr L_67EE		;67e6
dibujo_si_opcion_1:		; con la opcion 1, el dibujo de p04:67EE
	ld a,(0e8a4h)		;67e8   ; lee la opcion del cursor
	cp 001h		;67eb
	ret nz			;67ed
L_67EE:
	ld hl,0ed6ch		;67ee
	ld a,0c0h		;67f1
	ld bc,00401h		;67f3
	call rectangulo_de_fichas		;67f6   ; rectangulo_de_fichas: B x C fichas seguidas desde A en el bufer HL (0x20 por fila)
	ld hl,0c5c4h		;67f9
	ld (0edadh),hl		;67fc
	jp 05e5fh		;67ff   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
escena_inicial_08:		; el paso 8 de la escena inicial (0xE350, tabla p04:6699)
	ld a,(0e8a4h)		;6802   ; lee la opcion del cursor
	cp 001h		;6805
	jp nz,escena_siguiente		;6807   ; escena_siguiente: 0xE350 + 1
	call 04d28h		;680a   ; cortinilla_12: como p00:4CD4 con filas de 12
	ld a,(0e34bh)		;680d   ; lee el efecto en marcha
	and a			;6810
	ret nz			;6811
	jp escena_siguiente		;6812   ; escena_siguiente: 0xE350 + 1
escena_inicial_14:		; el paso 14 de la escena inicial (0xE350, tabla p04:6699)
	ld de,06883h		;6815
	jr L_6822		;6818
escena_inicial_12:		; el paso 12 de la escena inicial (0xE350, tabla p04:6699)
	ld de,0687bh		;681a
	jr L_6822		;681d
escena_inicial_09:		; el paso 9 de la escena inicial (0xE350, tabla p04:6699)
	ld de,06873h		;681f
L_6822:
	ld a,(0e8a4h)		;6822   ; lee la opcion del cursor
	call 043a4h		;6825   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld c,d			;6828
	ld a,(0e8a4h)		;6829   ; lee la opcion del cursor
	or a			;682c
	call z,segunda_vez		;682d   ; segunda_vez: C + 1 si 0xE8D2 es impar
	push de			;6830
	call 04dfdh		;6831   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	pop de			;6834
	ld a,(0e886h)		;6835   ; lee el texto en marcha
	and a			;6838
	ret nz			;6839
	ld a,(0e887h)		;683a   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;683d
	ret nz			;683e
	ld a,(0e8a4h)		;683f   ; lee la opcion del cursor
	or a			;6842
	jr nz,L_6849		;6843
	ld hl,0e8d2h		;6845
	inc (hl)			;6848
L_6849:
	push de			;6849
	call dibujo_de_la_respuesta		;684a   ; dibujo_de_la_respuesta: en el paso 9, con la opcion 1, cambia unas fichas
	pop de			;684d
	ld a,e			;684e
	ld (0e350h),a		;684f   ; guarda el paso de la escena (inicial, historia, final)
	ret			;6852
dibujo_de_la_respuesta:		; en el paso 9, con la opcion 1, cambia unas fichas
	ld a,(0e350h)		;6853   ; lee el paso de la escena (inicial, historia, final)
	cp 009h		;6856
	ret nz			;6858
	ld a,(0e8a4h)		;6859   ; lee la opcion del cursor
	cp 001h		;685c
	ret nz			;685e
	ld hl,0ed6ch		;685f
	ld a,09ah		;6862
	ld bc,00401h		;6864
	call rectangulo_de_fichas		;6867   ; rectangulo_de_fichas: B x C fichas seguidas desde A en el bufer HL (0x20 por fila)
	ld hl,0acabh		;686a
	ld (0edadh),hl		;686d
	jp 05e5fh		;6870   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800

; ----------------------------------------------------------------------
; DATOS resto_6873: lo apuntan con el banco puesto p04:681F (0x6873), p04:681A
;   (0x687B), p04:6815 (0x6883); el tamano es lo que hay hasta lo siguiente,
;   no sale de recorrerlo; lo leen p04:681F, p04:681A, p04:6815 (24 bytes)
;   0x6873..0x688b  (24 bytes)
DATA_resto_6873:
	defb 007h,003h,00ah,005h,007h,011h,007h,012h,00ah,003h,00ah,005h,00dh,006h,00ah,012h	; 6873  ................
	defb 00dh,003h,00dh,005h,00dh,006h,00fh,007h	; 6883  ........

; ======================================================================
; CODIGO 0x688b..0x6907  (124 bytes)
; ======================================================================


segunda_vez:		; C + 1 si 0xE8D2 es impar
	ld a,(0e8d2h)		;688b
	and 001h		;688e
	ret z			;6890
	inc c			;6891
	ret			;6892
escena_inicial_11:		; el paso 11 de la escena inicial (0xE350, tabla p04:6699)
	ld a,(0e8a4h)		;6893   ; lee la opcion del cursor
	cp 002h		;6896
	jp nz,escena_siguiente		;6898   ; escena_siguiente: 0xE350 + 1
	ld a,00eh		;689b
	ld (0e368h),a		;689d   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04869h		;68a0
	call 04462h		;68a3
	call 04574h		;68a6   ; sonido_13: pide el sonido 0x13
	jp escena_siguiente		;68a9   ; escena_siguiente: 0xE350 + 1
escena_inicial_15:		; el paso 15 de la escena inicial (0xE350, tabla p04:6699)
	xor a			;68ac
	ld (0e368h),a		;68ad   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 0591bh		;68b0   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	call 058d4h		;68b3   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	ld b,009h		;68b6
	ld hl,06907h		;68b8
	call graficos_de_lista		;68bb   ; graficos_de_lista: B entradas de 4 bytes [RLE][VRAM] en dos tercios
	ld de,0aa5dh		;68be
	ld hl,02410h		;68c1
	call 05986h		;68c4   ; rle_volteado_a_dos_tercios: el RLE volteado (p00:5A32) en dos tercios
	ld hl,0ad32h		;68c7
	call dibujo_en_el_mapa		;68ca   ; dibujo_en_el_mapa: un dibujo [posicion][ancho][alto] y sus fichas a 0xED00
	call marco_de_la_escena		;68cd   ; marco_de_la_escena: los RLE p04:633D y p04:6432, el dibujo p04:6443 y 8 x 8 nombres en 0x3818
	call 05e5fh		;68d0   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	call fuente		;68d3   ; fuente: la fuente en 0x2808 y 0x3000 y su color
	call 0452dh		;68d6
	call 0ae97h		;68d9   ; texto_en_sprites_a830: el texto p06:A830 como patrones de sprite desde 0x1800
	call 0ae5fh		;68dc   ; nombres_en_sprites: los dos nombres como patrones de sprite desde 0x1980
	ld a,022h		;68df
	ld (0e8a3h),a		;68e1   ; guarda la lista de opciones del menu
	call 0567ah		;68e4   ; opciones_guardadas: las opciones de A con el cursor guardado (0xE8B2/0xE8B1)
	call 056dbh		;68e7   ; pinta_opciones: las opciones de 0xE8B8 (textos p04:7A15) en columna desde 0x3A1A
	call 057aeh		;68ea   ; pinta_cursor: el cursor parpadeante en la columna de opciones
	jp escena_siguiente		;68ed   ; escena_siguiente: 0xE350 + 1
graficos_de_lista:		; B entradas de 4 bytes [RLE][VRAM] en dos tercios
	push bc			;68f0
	push hl			;68f1
	ld e,(hl)			;68f2
	inc hl			;68f3
	ld d,(hl)			;68f4
	inc hl			;68f5
	ld a,(hl)			;68f6
	inc hl			;68f7
	ld h,(hl)			;68f8
	ld l,a			;68f9
	call 05972h		;68fa   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	pop hl			;68fd
	ld a,004h		;68fe
	call 040a1h		;6900   ; hl_mas_a: HL = HL + A
	pop bc			;6903
	djnz graficos_de_lista		;6904
	ret			;6906

; ----------------------------------------------------------------------
; DATOS resto_6907: lo apuntan con el banco puesto p04:68B8 (0x6907); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:68B8 (52 bytes)
;   0x6907..0x693b  (52 bytes)
DATA_resto_6907:
	defb 003h,0abh,000h,025h,028h,0adh,000h,005h,02dh,0adh,000h,006h,0d2h,0abh,000h,026h	; 6907  ...%(...-......&
	defb 05dh,0a8h,080h,020h,05dh,0aah,010h,023h,040h,0ach,080h,000h,0d7h,0ach,010h,003h	; 6917  ].. ]..#@.......
	defb 0d7h,0ach,010h,004h,003h,0abh,000h,026h,028h,0adh,000h,006h,02dh,0adh,000h,005h	; 6927  .......&(...-...
	defb 0d2h,0abh,000h,025h	; 6937

; ======================================================================
; CODIGO 0x693b..0x69a7  (108 bytes)
; ======================================================================


dibujo_en_el_mapa:		; un dibujo [posicion][ancho][alto] y sus fichas a 0xED00
	ld e,(hl)			;693b
	inc hl			;693c
	ld d,(hl)			;693d
	inc hl			;693e
	ld c,(hl)			;693f
	inc hl			;6940
	ld b,(hl)			;6941
	inc hl			;6942
	ex de,hl			;6943
	call 04509h		;6944   ; mapa_de_bloques: HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
L_6947:
	push bc			;6947
	push hl			;6948
L_6949:
	ld a,(de)			;6949   ; una ficha del dibujo
	ld (hl),a			;694a
	inc de			;694b
	inc hl			;694c
	djnz L_6949		;694d
	pop hl			;694f
	pop bc			;6950
	ld a,020h		;6951   ; la siguiente fila (0x20)
	call 040a1h		;6953   ; hl_mas_a: HL = HL + A
	dec c			;6956
	jr nz,L_6947		;6957
	ret			;6959
escena_inicial_16:		; el paso 16 de la escena inicial (0xE350, tabla p04:6699)
	call 05774h		;695a   ; cursor_vertical: arriba/abajo con repeticion (0xE8B0) en 0xE8A4
	call 057aeh		;695d   ; pinta_cursor: el cursor parpadeante en la columna de opciones
	ld a,(0e008h)		;6960   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 010h		;6963
	ret z			;6965
	call 050ebh		;6966   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	jp escena_siguiente		;6969   ; escena_siguiente: 0xE350 + 1
escena_inicial_17:		; el paso 17 de la escena inicial (0xE350, tabla p04:6699)
	ld a,(0e8a4h)		;696c   ; lee la opcion del cursor
	or a			;696f
	jr z,L_6987		;6970
	xor a			;6972
	ld (0e351h),a		;6973   ; guarda el paso de la pantalla de nombres, o la pagina de la historia
	ld c,009h		;6976
	call 04dfdh		;6978   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;697b   ; lee el texto en marcha
	or a			;697e
	ret nz			;697f
	ld a,(0e887h)		;6980   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;6983
	ret nz			;6984
	jr L_6996		;6985
L_6987:
	ld c,008h		;6987
	call 04dfdh		;6989   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;698c   ; lee el texto en marcha
	or a			;698f
	ret nz			;6990
	ld hl,0e350h		;6991   ; apunta a el paso de la escena (inicial, historia, final)
	dec (hl)			;6994
	ret			;6995
L_6996:
	ld hl,069a7h		;6996
	call copia_lista		;6999   ; copia_lista: [destino][n] y n bytes
	call 050ebh		;699c   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	ld a,0c0h		;699f
	ld (0e004h),a		;69a1   ; guarda la espera del estado, en cuadros
	jp escena_siguiente		;69a4   ; escena_siguiente: 0xE350 + 1

; ----------------------------------------------------------------------
; DATOS resto_69A7: lo apuntan con el banco puesto p04:6996 (0x69A7), p04:6A5B
;   (0x69A7), p04:6A61 (0x69BB), p04:6A85 (0x69C7), p04:6AAC (0x69C7),
;   p04:6AB2 (0x69DF); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p04:6996, p04:6A5B, p04:6A61, p04:6A85, p04:6AAC,
;   p04:6AB2 (110 bytes)
;   0x69a7..0x6a15  (110 bytes)
DATA_resto_69A7:
	defb 000h,0f0h,011h,020h,040h,000h,00fh,020h,050h,004h,00fh,020h,060h,008h,00fh,020h	; 69a7  ... @.. P.. `..
	defb 070h,00ch,00fh,0d0h,010h,0f0h,009h,030h,050h,030h,00fh,030h,060h,034h,00fh,0d0h	; 69b7  p......0P0.0`4..
	defb 000h,0f0h,015h,020h,040h,010h,00fh,020h,050h,014h,00fh,020h,060h,018h,00fh,020h	; 69c7  ... @.. P.. `..
	defb 070h,01ch,00fh,0d0h,0d0h,0d0h,0d0h,0d0h,010h,0f0h,009h,030h,050h,038h,00fh,030h	; 69d7  p..........0P8.0
	defb 060h,03ch,00fh,0d0h,000h,0f0h,018h,020h,040h,020h,00fh,020h,050h,024h,00fh,020h	; 69e7  `<..... @ . P$.
	defb 060h,028h,00fh,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,000h	; 69f7  `(..............
	defb 0f0h,00ch,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h,0d0h	; 6a07  ..............

; ======================================================================
; CODIGO 0x6a15..0x6a39  (36 bytes)
; ======================================================================


copia_lista:		; [destino][n] y n bytes
	ld e,(hl)			;6a15   ; DE = el destino
	inc hl			;6a16
	ld d,(hl)			;6a17
	inc hl			;6a18
	ld c,(hl)			;6a19   ; C = cuantos
	inc hl			;6a1a
	ld b,000h		;6a1b
	ldir		;6a1d   ; se copian
	ret			;6a1f
parpadeo_de_sprites:		; el color de los 4 primeros sprites de p04:6A39 segun el cuadro
	ld a,(0e003h)		;6a20   ; lee la cuenta de cuadros
	and 007h		;6a23
	ld hl,06a39h		;6a25
	call 040a1h		;6a28   ; hl_mas_a: HL = HL + A
	ld c,(hl)			;6a2b
	ld hl,0f003h		;6a2c
	ld b,004h		;6a2f
L_6A31:
	ld (hl),c			;6a31
	ld de,00004h		;6a32
	add hl,de			;6a35
	djnz L_6A31		;6a36
	ret			;6a38

; ----------------------------------------------------------------------
; DATOS resto_6A39: lo apuntan con el banco puesto p04:6A25 (0x6A39); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:6A25 (8 bytes)
;   0x6a39..0x6a41  (8 bytes)
DATA_resto_6A39:
	defb 000h,00eh,00eh,00fh,00fh,00eh,00eh,000h	; 6a39  ........

; ======================================================================
; CODIGO 0x6a41..0x6ca7  (614 bytes)
; ======================================================================


escena_inicial_18:		; el paso 18 de la escena inicial (0xE350, tabla p04:6699)
	call parpadeo_de_sprites		;6a41   ; parpadeo_de_sprites: el color de los 4 primeros sprites de p04:6A39 segun el cuadro
	ld hl,0e004h		;6a44   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6a47
	ret nz			;6a48
	jp escena_siguiente		;6a49   ; escena_siguiente: 0xE350 + 1
escena_inicial_19:		; el paso 19 de la escena inicial (0xE350, tabla p04:6699)
	ld c,00ah		;6a4c
	call 04dfdh		;6a4e   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6a51   ; lee el texto en marcha
	or a			;6a54
	ret nz			;6a55
	ld a,0c0h		;6a56
	ld (0e004h),a		;6a58   ; guarda la espera del estado, en cuadros
	ld hl,069a7h		;6a5b
	call copia_lista		;6a5e   ; copia_lista: [destino][n] y n bytes
	ld hl,069bbh		;6a61
	call copia_lista		;6a64   ; copia_lista: [destino][n] y n bytes
	jp escena_siguiente		;6a67   ; escena_siguiente: 0xE350 + 1
escena_inicial_20:		; el paso 20 de la escena inicial (0xE350, tabla p04:6699)
	ld hl,0e004h		;6a6a   ; apunta a la espera del estado, en cuadros
	ld a,(hl)			;6a6d
	or a			;6a6e
	jr z,L_6A76		;6a6f
	dec (hl)			;6a71
	ret nz			;6a72
	jp 050ebh		;6a73   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
L_6A76:
	ld c,00fh		;6a76
	call 04dfdh		;6a78   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6a7b   ; lee el texto en marcha
	or a			;6a7e
	ret nz			;6a7f
	ld a,0c0h		;6a80
	ld (0e004h),a		;6a82   ; guarda la espera del estado, en cuadros
	ld hl,069c7h		;6a85
	call copia_lista		;6a88   ; copia_lista: [destino][n] y n bytes
	jp escena_siguiente		;6a8b   ; escena_siguiente: 0xE350 + 1
escena_inicial_21:		; el paso 21 de la escena inicial (0xE350, tabla p04:6699)
	call parpadeo_de_sprites		;6a8e   ; parpadeo_de_sprites: el color de los 4 primeros sprites de p04:6A39 segun el cuadro
	ld hl,0e004h		;6a91   ; apunta a la espera del estado, en cuadros
	ld a,(hl)			;6a94
	or a			;6a95
	jr z,L_6A9D		;6a96
	dec (hl)			;6a98
	ret nz			;6a99
	jp 050ebh		;6a9a   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
L_6A9D:
	ld c,00bh		;6a9d
	call 04dfdh		;6a9f   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6aa2   ; lee el texto en marcha
	or a			;6aa5
	ret nz			;6aa6
	ld a,0c0h		;6aa7
	ld (0e004h),a		;6aa9   ; guarda la espera del estado, en cuadros
	ld hl,069c7h		;6aac
	call copia_lista		;6aaf   ; copia_lista: [destino][n] y n bytes
	ld hl,069dfh		;6ab2
	call copia_lista		;6ab5   ; copia_lista: [destino][n] y n bytes
	jp escena_siguiente		;6ab8   ; escena_siguiente: 0xE350 + 1
escena_inicial_22:		; el paso 22 de la escena inicial (0xE350, tabla p04:6699)
	ld hl,0e004h		;6abb   ; apunta a la espera del estado, en cuadros
	ld a,(hl)			;6abe
	or a			;6abf
	jr z,L_6AC7		;6ac0
	dec (hl)			;6ac2
	ret nz			;6ac3
	jp 050ebh		;6ac4   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
L_6AC7:
	ld a,0c0h		;6ac7
	ld (0e004h),a		;6ac9   ; guarda la espera del estado, en cuadros
	ld hl,069ebh		;6acc
	call copia_lista		;6acf   ; copia_lista: [destino][n] y n bytes
	jp escena_siguiente		;6ad2   ; escena_siguiente: 0xE350 + 1
escena_inicial_23:		; el paso 23 de la escena inicial (0xE350, tabla p04:6699)
	ld hl,0e004h		;6ad5   ; apunta a la espera del estado, en cuadros
	ld a,(hl)			;6ad8
	or a			;6ad9
	jr z,L_6AE1		;6ada
	dec (hl)			;6adc
	ret nz			;6add
	jp 050ebh		;6ade   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
L_6AE1:
	ld c,00ch		;6ae1
	call 04dfdh		;6ae3   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6ae6   ; lee el texto en marcha
	or a			;6ae9
	ret nz			;6aea
	xor a			;6aeb
	ld (0e352h),a		;6aec   ; guarda la cuenta de la escena (parpadeo, paso de las particulas)
	ld a,0ffh		;6aef
	ld (0e34ah),a		;6af1   ; guarda la mascara del efecto
	ld a,0c0h		;6af4
	ld (0e004h),a		;6af6   ; guarda la espera del estado, en cuadros
	ld a,001h		;6af9
	ld (0e34bh),a		;6afb   ; guarda el efecto en marcha
	jp escena_siguiente		;6afe   ; escena_siguiente: 0xE350 + 1
escena_inicial_24:		; el paso 24 de la escena inicial (0xE350, tabla p04:6699)
	call parpadeo_de_sprites		;6b01   ; parpadeo_de_sprites: el color de los 4 primeros sprites de p04:6A39 segun el cuadro
	ld hl,0e004h		;6b04   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6b07
	ret nz			;6b08
	call 0456ah		;6b09   ; sonido_26: pide el sonido 0x26
	ld hl,06a06h		;6b0c
	call copia_lista		;6b0f   ; copia_lista: [destino][n] y n bytes
	call 050ebh		;6b12   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	jp escena_siguiente		;6b15   ; escena_siguiente: 0xE350 + 1
escena_inicial_25:		; el paso 25 de la escena inicial (0xE350, tabla p04:6699)
	call 0a5b8h		;6b18   ; particulas: un paso de las 16 particulas de 0xE400 (0xE352, tabla p06:A5C2)
	ld c,00dh		;6b1b
	call 04dfdh		;6b1d   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6b20   ; lee el texto en marcha
	or a			;6b23
	ret nz			;6b24
	ld a,(0e887h)		;6b25   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	or a			;6b28
	ret nz			;6b29
	jp escena_siguiente		;6b2a   ; escena_siguiente: 0xE350 + 1
mezcla_patrones:		; cada 4 cuadros mezcla los patrones de 0x2500 y 0x2600 con la mascara 0xE34A
	ld a,(0e003h)		;6b2d   ; lee la cuenta de cuadros
	and 003h		;6b30
	ret nz			;6b32
	ld a,(0e34bh)		;6b33   ; lee el efecto en marcha
	or a			;6b36
	ret z			;6b37
	call mezcla_patrones_una_vez		;6b38   ; mezcla_patrones_una_vez: 0xE8 bytes: (0x2500 AND mascara) OR (0x2600 AND NOT mascara) a 0x2500 y 0x2D00
	ld hl,0e34ah		;6b3b   ; apunta a la mascara del efecto
	ld a,(hl)			;6b3e
	and a			;6b3f
	jr z,L_6B49		;6b40
	rlca			;6b42
	rlca			;6b43
	rlca			;6b44
	res 0,a		;6b45
	ld (hl),a			;6b47
	ret			;6b48
L_6B49:
	xor a			;6b49
	ld (0e34bh),a		;6b4a   ; guarda el efecto en marcha
	ret			;6b4d
mezcla_patrones_una_vez:		; 0xE8 bytes: (0x2500 AND mascara) OR (0x2600 AND NOT mascara) a 0x2500 y 0x2D00
	ld a,(0e34ah)		;6b4e   ; lee la mascara del efecto
	ld c,a			;6b51
	ld hl,02500h		;6b52
	ld de,000e8h		;6b55
L_6B58:
	push hl			;6b58
	call 0004ah		;6b59   ; BIOS RDVRM - Reads the content of VRAM
	and c			;6b5c
	ld b,a			;6b5d
	pop hl			;6b5e
	push hl			;6b5f
	push bc			;6b60
	inc h			;6b61
	ld a,c			;6b62
	cpl			;6b63
	ld c,a			;6b64
	call 0004ah		;6b65   ; BIOS RDVRM - Reads the content of VRAM
	and c			;6b68
	pop bc			;6b69
	or b			;6b6a
	pop hl			;6b6b
	push hl			;6b6c
	ld b,a			;6b6d
	call 0004dh		;6b6e   ; BIOS WRTVRM - Writes data in VRAM
	pop hl			;6b71
	push hl			;6b72
	ld a,008h		;6b73
	add a,h			;6b75
	ld h,a			;6b76
	ld a,b			;6b77
	call 0004dh		;6b78   ; BIOS WRTVRM - Writes data in VRAM
	pop hl			;6b7b
	rrc c		;6b7c
	rrc c		;6b7e
	rrc c		;6b80
	inc hl			;6b82
	dec de			;6b83
	ld a,e			;6b84
	or d			;6b85
	jr nz,L_6B58		;6b86
	ret			;6b88
escena_inicial_26:		; el paso 26 de la escena inicial (0xE350, tabla p04:6699)
	call mezcla_patrones		;6b89   ; mezcla_patrones: cada 4 cuadros mezcla los patrones de 0x2500 y 0x2600 con la mascara 0xE34A
	jp 0a5b8h		;6b8c   ; particulas: un paso de las 16 particulas de 0xE400 (0xE352, tabla p06:A5C2)
escena_inicial_27:		; el paso 27 de la escena inicial (0xE350, tabla p04:6699)
	call 050ebh		;6b8f   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	jp escena_siguiente		;6b92   ; escena_siguiente: 0xE350 + 1
escena_inicial_28:		; el paso 28 de la escena inicial (0xE350, tabla p04:6699)
	ld c,00eh		;6b95
	call 04dfdh		;6b97   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6b9a   ; lee el texto en marcha
	or a			;6b9d
	ret nz			;6b9e
	ld a,(0e887h)		;6b9f   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	or a			;6ba2
	ret nz			;6ba3
	call 050ebh		;6ba4   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	jp escena_siguiente		;6ba7   ; escena_siguiente: 0xE350 + 1
escena_inicial_29:		; el paso 29 de la escena inicial (0xE350, tabla p04:6699)
	call 0591bh		;6baa   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	call marco_de_la_escena		;6bad   ; marco_de_la_escena: los RLE p04:633D y p04:6432, el dibujo p04:6443 y 8 x 8 nombres en 0x3818
	ld a,009h		;6bb0
	ld (0e351h),a		;6bb2   ; guarda el paso de la pantalla de nombres, o la pagina de la historia
	jp escena_siguiente		;6bb5   ; escena_siguiente: 0xE350 + 1
escena_inicial_30:		; el paso 30 de la escena inicial (0xE350, tabla p04:6699)
	ld c,01bh		;6bb8
	call 04dfdh		;6bba   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6bbd   ; lee el texto en marcha
	and a			;6bc0
	ret nz			;6bc1
	call 0452dh		;6bc2
	ld a,001h		;6bc5
	ld (0e8a3h),a		;6bc7   ; guarda la lista de opciones del menu
	call 0567ah		;6bca   ; opciones_guardadas: las opciones de A con el cursor guardado (0xE8B2/0xE8B1)
	call 056dbh		;6bcd   ; pinta_opciones: las opciones de 0xE8B8 (textos p04:7A15) en columna desde 0x3A1A
	call 057aeh		;6bd0   ; pinta_cursor: el cursor parpadeante en la columna de opciones
	jp escena_siguiente		;6bd3   ; escena_siguiente: 0xE350 + 1
escena_inicial_31:		; el paso 31 de la escena inicial (0xE350, tabla p04:6699)
	call 05774h		;6bd6   ; cursor_vertical: arriba/abajo con repeticion (0xE8B0) en 0xE8A4
	call 057aeh		;6bd9   ; pinta_cursor: el cursor parpadeante en la columna de opciones
	ld a,(0e008h)		;6bdc   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 010h		;6bdf
	jr nz,L_6BEB		;6be1
	ld a,(0e008h)		;6be3   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 020h		;6be6
	ret z			;6be8
	jr L_6BF7		;6be9
L_6BEB:
	ld a,(0e8a4h)		;6beb   ; lee la opcion del cursor
	and a			;6bee
	jr z,L_6BFC		;6bef
	call escena_siguiente		;6bf1   ; escena_siguiente: 0xE350 + 1
	call escena_siguiente		;6bf4   ; escena_siguiente: 0xE350 + 1
L_6BF7:
	call escena_siguiente		;6bf7   ; escena_siguiente: 0xE350 + 1
	jr escena_siguiente		;6bfa
L_6BFC:
	call sonido_41		;6bfc   ; sonido_41: pide el sonido 0x41
	jr escena_siguiente		;6bff
escena_inicial_32:		; el paso 32 de la escena inicial (0xE350, tabla p04:6699)
	ld c,01eh		;6c01
	call 04dfdh		;6c03   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6c06   ; lee el texto en marcha
	and a			;6c09
	ret nz			;6c0a
	ld hl,0e350h		;6c0b   ; apunta a el paso de la escena (inicial, historia, final)
	dec (hl)			;6c0e
	ret			;6c0f
escena_inicial_33:		; el paso 33 de la escena inicial (0xE350, tabla p04:6699)
	ld hl,0e8d2h		;6c10
	jp cuenta_hasta_2		;6c13   ; cuenta_hasta_2: (HL) + 1 sin pasar de 2 y el siguiente paso
escena_inicial_34:		; el paso 34 de la escena inicial (0xE350, tabla p04:6699)
	ld a,(0e8d2h)		;6c16   ; cuantas veces se eligio
	dec a			;6c19
	and a			;6c1a
	ld c,01ch		;6c1b   ; la primera vez, el texto 0x1C; luego el 0x1D
	jr z,L_6C20		;6c1d
	inc c			;6c1f
L_6C20:
	call 04dfdh		;6c20   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6c23   ; lee el texto en marcha
	and a			;6c26
	ret nz			;6c27
	ld a,01fh		;6c28
	ld (0e350h),a		;6c2a   ; guarda el paso de la escena (inicial, historia, final)
	ret			;6c2d
escena_inicial_35:		; el paso 35 de la escena inicial (0xE350, tabla p04:6699)
	ld c,01fh		;6c2e
	call 04dfdh		;6c30   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6c33   ; lee el texto en marcha
	and a			;6c36
	ret nz			;6c37
	ld a,(0e887h)		;6c38   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;6c3b
	ret nz			;6c3c
	jp escena_siguiente		;6c3d   ; escena_siguiente: 0xE350 + 1
escena_inicial_36:		; el paso 36 de la escena inicial (0xE350, tabla p04:6699)
	call sonido_4a		;6c40   ; sonido_4a: pide el sonido 0x4A
	call 058d4h		;6c43   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	call 059aeh		;6c46   ; borra_fichas_del_juego: 0x300 de patrones y colores desde la ficha 0x10, en dos tercios
	call 05e18h		;6c49   ; nombres_del_marco: las fichas 0x10-0x6F en dos bloques de 16 x 6
	call 05e5fh		;6c4c   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	call marco_de_la_escena		;6c4f   ; marco_de_la_escena: los RLE p04:633D y p04:6432, el dibujo p04:6443 y 8 x 8 nombres en 0x3818
	ld a,009h		;6c52
	ld (0e351h),a		;6c54   ; guarda el paso de la pantalla de nombres, o la pagina de la historia
	call animacion_de_la_escena		;6c57   ; animacion_de_la_escena: 0xE34C = la lista p04:7C71[0xE351]
	ld a,020h		;6c5a
	ld (0e004h),a		;6c5c   ; guarda la espera del estado, en cuadros
escena_siguiente:		; 0xE350 + 1
	ld hl,0e350h		;6c5f   ; apunta a el paso de la escena (inicial, historia, final)
	inc (hl)			;6c62
	ret			;6c63
escena_inicial_37:		; el paso 37 de la escena inicial (0xE350, tabla p04:6699)
	ld hl,0e004h		;6c64   ; apunta a la espera del estado, en cuadros
	ld a,(hl)			;6c67
	or a			;6c68
	jr z,L_6C6D		;6c69
	dec (hl)			;6c6b
	ret			;6c6c
L_6C6D:
	ld a,(0e003h)		;6c6d   ; lee la cuenta de cuadros
	and 007h		;6c70
	ret nz			;6c72
	call cortinilla_de_la_escena		;6c73   ; cortinilla_de_la_escena: efecto en pasos (0xE348) con la lista de 0xE34C, de dos en dos columnas (p00:4CC2)
	ld a,(0e34bh)		;6c76   ; lee el efecto en marcha
	and a			;6c79
	ret nz			;6c7a
	jp escena_siguiente		;6c7b   ; escena_siguiente: 0xE350 + 1
escena_inicial_38:		; el paso 38 de la escena inicial (0xE350, tabla p04:6699)
	ld c,020h		;6c7e
	call 04dfdh		;6c80   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6c83   ; lee el texto en marcha
	and a			;6c86
	ret nz			;6c87
	ld a,(0e887h)		;6c88   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;6c8b
	ret nz			;6c8c
	jp escena_siguiente		;6c8d   ; escena_siguiente: 0xE350 + 1
escena_inicial_39:		; el paso 39 de la escena inicial (0xE350, tabla p04:6699)
	call 058ffh		;6c90   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	call 050ebh		;6c93   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	ld a,002h		;6c96
	ld (0e8a3h),a		;6c98   ; guarda la lista de opciones del menu
	call 0567ah		;6c9b   ; opciones_guardadas: las opciones de A con el cursor guardado (0xE8B2/0xE8B1)
	call 056dbh		;6c9e   ; pinta_opciones: las opciones de 0xE8B8 (textos p04:7A15) en columna desde 0x3A1A
	call 057aeh		;6ca1   ; pinta_cursor: el cursor parpadeante en la columna de opciones
	jp escena_siguiente		;6ca4   ; escena_siguiente: 0xE350 + 1

; ----------------------------------------------------------------------
; DATOS resto_6CA7: lo apuntan con el banco puesto p04:6D11 (0x6CA7); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:6D11 (24 bytes)
;   0x6ca7..0x6cbf  (24 bytes)
DATA_resto_6CA7:
	defb 04fh,050h,000h,00bh,053h,050h,004h,00fh,058h,050h,008h,004h,05fh,068h,00ch,00bh	; 6ca7  OP..SP..XP.._h..
	defb 064h,068h,010h,008h,05eh,068h,014h,004h	; 6cb7  dh..^h..

; ======================================================================
; CODIGO 0x6cbf..0x6d51  (146 bytes)
; ======================================================================


escena_inicial_40:		; el paso 40 de la escena inicial (0xE350, tabla p04:6699)
	jp escena_siguiente		;6cbf   ; escena_siguiente: 0xE350 + 1
escena_inicial_41:		; el paso 41 de la escena inicial (0xE350, tabla p04:6699)
	call 05774h		;6cc2   ; cursor_vertical: arriba/abajo con repeticion (0xE8B0) en 0xE8A4
	call 057aeh		;6cc5   ; pinta_cursor: el cursor parpadeante en la columna de opciones
	ld a,(0e008h)		;6cc8   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 010h		;6ccb
	jr nz,L_6CE0		;6ccd
	ld a,(0e008h)		;6ccf   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 020h		;6cd2
	ret z			;6cd4
	ld a,02fh		;6cd5
	ld (0e350h),a		;6cd7   ; guarda el paso de la escena (inicial, historia, final)
	ld bc,0002bh		;6cda
	jp L_6D99		;6cdd
L_6CE0:
	ld a,(0e8a4h)		;6ce0   ; lee la opcion del cursor
	and a			;6ce3
	jp z,escena_siguiente		;6ce4   ; escena_siguiente: 0xE350 + 1
	dec a			;6ce7
	ld a,030h		;6ce8
	jr z,L_6CEE		;6cea
	add a,002h		;6cec
L_6CEE:
	ld (0e350h),a		;6cee   ; guarda el paso de la escena (inicial, historia, final)
	ret			;6cf1
escena_inicial_42:		; el paso 42 de la escena inicial (0xE350, tabla p04:6699)
	ld hl,0e8d0h		;6cf2   ; apunta a las veces que se ha elegido cada opcion
	ld a,(hl)			;6cf5
	or a			;6cf6
	push hl			;6cf7
	call z,pantalla_de_la_escena_42		;6cf8   ; pantalla_de_la_escena_42: sonido, pantalla vacia, sprites de p04:6CA7 y el fotograma 8
	pop hl			;6cfb
	ld a,(hl)			;6cfc
	inc (hl)			;6cfd
	cp 002h		;6cfe
	jr nz,L_6D05		;6d00
	call escena_siguiente		;6d02   ; escena_siguiente: 0xE350 + 1
L_6D05:
	jp escena_siguiente		;6d05   ; escena_siguiente: 0xE350 + 1
pantalla_de_la_escena_42:		; sonido, pantalla vacia, sprites de p04:6CA7 y el fotograma 8
	call 045abh		;6d08   ; sonido_85: pide el sonido 0x85
	call 058d4h		;6d0b   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	call 059aeh		;6d0e   ; borra_fichas_del_juego: 0x300 de patrones y colores desde la ficha 0x10, en dos tercios
	ld hl,06ca7h		;6d11
	ld de,0f000h		;6d14   ; apunta a los atributos de los 32 sprites
	ld bc,00018h		;6d17
	ldir		;6d1a
	ld a,008h		;6d1c
	ld (0e3c3h),a		;6d1e   ; guarda el fotograma del personaje
	ld a,001h		;6d21
	ld (0e007h),a		;6d23   ; guarda las banderas de sprites (bit 0: sin rotar)
	jp 043e9h		;6d26   ; patrones_del_fotograma: los patrones de sprite de p18:6000[0xE3C3] a 0x1800 y la barra del marcador
escena_inicial_43:		; el paso 43 de la escena inicial (0xE350, tabla p04:6699)
	ld hl,0e8d0h		;6d29   ; apunta a las veces que se ha elegido cada opcion
	ld a,(hl)			;6d2c
	dec a			;6d2d
	ld hl,06d51h		;6d2e
	call 040a1h		;6d31   ; hl_mas_a: HL = HL + A
	ld c,(hl)			;6d34
	call 04dfdh		;6d35   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6d38   ; lee el texto en marcha
	and a			;6d3b
	ret nz			;6d3c
	ld a,(0e887h)		;6d3d   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;6d40
	ret nz			;6d41
	ld a,(0e8d0h)		;6d42   ; lee las veces que se ha elegido cada opcion
	cp 004h		;6d45
	ld a,029h		;6d47
	jr nz,L_6D4D		;6d49
	ld a,034h		;6d4b
L_6D4D:
	ld (0e350h),a		;6d4d   ; guarda el paso de la escena (inicial, historia, final)
	ret			;6d50

; ----------------------------------------------------------------------
; DATOS resto_6D51: lo apuntan con el banco puesto p04:6D2E (0x6D51); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:6D2E (4 bytes)
;   0x6d51..0x6d55  (4 bytes)
DATA_resto_6D51:
	defb 022h,023h,024h,026h	; 6d51

; ======================================================================
; CODIGO 0x6d55..0x6e09  (180 bytes)
; ======================================================================


escena_inicial_44:		; el paso 44 de la escena inicial (0xE350, tabla p04:6699)
	ld c,024h		;6d55
	call 04dfdh		;6d57   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6d5a   ; lee el texto en marcha
	and a			;6d5d
	ret nz			;6d5e
	ld a,(0e887h)		;6d5f   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;6d62
	ret nz			;6d63
	jp escena_siguiente		;6d64   ; escena_siguiente: 0xE350 + 1
escena_inicial_45:		; el paso 45 de la escena inicial (0xE350, tabla p04:6699)
	call 059aeh		;6d67   ; borra_fichas_del_juego: 0x300 de patrones y colores desde la ficha 0x10, en dos tercios
	call 0514bh		;6d6a   ; mapa_de_la_sala: la sala 0xEB40 (12 x 8 bloques a nibbles, p15:6000 o p20:B606) a los nombres 0xED00 y la dureza 0xE800
	call 05e5fh		;6d6d   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	ld a,008h		;6d70
	ld (0e351h),a		;6d72   ; guarda el paso de la pantalla de nombres, o la pagina de la historia
	call animacion_de_la_escena		;6d75   ; animacion_de_la_escena: 0xE34C = la lista p04:7C71[0xE351]
	ld a,001h		;6d78
	ld (0f00bh),a		;6d7a
	ld (0f017h),a		;6d7d
	jp escena_siguiente		;6d80   ; escena_siguiente: 0xE350 + 1
escena_inicial_46:		; el paso 46 de la escena inicial (0xE350, tabla p04:6699)
	ld a,(0e003h)		;6d83   ; lee la cuenta de cuadros
	and 007h		;6d86
	ret nz			;6d88
	call 04b1ah		;6d89   ; aparece_por_tercios: efecto de aparecer en tres pasos (0xE348) sobre la lista de 0xE34C
	ld a,(0e34bh)		;6d8c   ; lee el efecto en marcha
	and a			;6d8f
	ret nz			;6d90
	call 045c9h		;6d91   ; sonido_2b: pide el sonido 0x2B
	jp escena_siguiente		;6d94   ; escena_siguiente: 0xE350 + 1
escena_inicial_47:		; el paso 47 de la escena inicial (0xE350, tabla p04:6699)
	ld c,025h		;6d97
L_6D99:
	call 04dfdh		;6d99   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6d9c   ; lee el texto en marcha
	and a			;6d9f
	ret nz			;6da0
	ld hl,0e350h		;6da1   ; apunta a el paso de la escena (inicial, historia, final)
	ld a,(hl)			;6da4
	sub 006h		;6da5
	ld (hl),a			;6da7
	ret			;6da8
escena_inicial_48:		; el paso 48 de la escena inicial (0xE350, tabla p04:6699)
	ld hl,0e8d1h		;6da9
	jp cuenta_hasta_2		;6dac   ; cuenta_hasta_2: (HL) + 1 sin pasar de 2 y el siguiente paso
escena_inicial_49:		; el paso 49 de la escena inicial (0xE350, tabla p04:6699)
	ld a,(0e8d1h)		;6daf   ; cuantas veces se eligio
	dec a			;6db2
	and a			;6db3
	ld c,027h		;6db4   ; la primera vez, el texto 0x27; luego el 0x2A
	jr z,L_6DBA		;6db6
	ld c,02ah		;6db8
L_6DBA:
	call 04dfdh		;6dba   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6dbd   ; lee el texto en marcha
	and a			;6dc0
	ret nz			;6dc1
	ld a,029h		;6dc2
	ld (0e350h),a		;6dc4   ; guarda el paso de la escena (inicial, historia, final)
	ret			;6dc7
escena_inicial_50:		; el paso 50 de la escena inicial (0xE350, tabla p04:6699)
	ld hl,0e8d3h		;6dc8
	jp cuenta_hasta_2		;6dcb   ; cuenta_hasta_2: (HL) + 1 sin pasar de 2 y el siguiente paso
escena_inicial_51:		; el paso 51 de la escena inicial (0xE350, tabla p04:6699)
	ld a,(0e8d3h)		;6dce   ; cuantas veces se eligio
	dec a			;6dd1
	and a			;6dd2
	ld c,028h		;6dd3   ; la primera vez, el texto 0x28; luego el 0x29
	jr z,L_6DD8		;6dd5
	inc c			;6dd7
L_6DD8:
	call 04dfdh		;6dd8   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6ddb   ; lee el texto en marcha
	and a			;6dde
	ret nz			;6ddf
	ld a,029h		;6de0
	ld (0e350h),a		;6de2   ; guarda el paso de la escena (inicial, historia, final)
	ret			;6de5
escena_inicial_52:		; el paso 52 de la escena inicial (0xE350, tabla p04:6699)
	ld a,001h		;6de6
	ld (0e333h),a		;6de8   ; guarda el paso ha acabado
	ret			;6deb
animacion_de_la_escena:		; 0xE34C = la lista p04:7C71[0xE351]
	ld a,(0e351h)		;6dec   ; lee el paso de la pantalla de nombres, o la pagina de la historia
	ld de,07c71h		;6def
	call 043a4h		;6df2   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld (0e34ch),de		;6df5   ; guarda la lista del efecto
	ret			;6df9
cuenta_hasta_2:		; (HL) + 1 sin pasar de 2 y el siguiente paso
	ld a,(hl)			;6dfa
	cp 002h		;6dfb
	jr z,L_6E00		;6dfd
	inc (hl)			;6dff
L_6E00:
	jp escena_siguiente		;6e00   ; escena_siguiente: 0xE350 + 1
historia:		; un paso de la historia (0xE350, tabla p04:6E09): ocho pantallas de texto (p04:6EDC) con su animacion
	ld a,(0e350h)		;6e03   ; lee el paso de la escena (inicial, historia, final)
	call 040abh		;6e06   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_6E09: tabla de 5 palabras del despachador (call 0x408D en
;   0x6E06); lo leen L_40AB (10 bytes)
;   0x6e09..0x6e13  (10 bytes)
DATA_saltos_6E09:
	defb 013h,06eh	; 6e09
	defb 080h,06eh	; 6e0b
	defb 086h,06eh	; 6e0d
	defb 097h,06eh	; 6e0f
	defb 0bfh,06eh	; 6e11

; ======================================================================
; CODIGO 0x6e13..0x6edc  (201 bytes)
; ======================================================================


historia_0:		; el paso 0 de la historia (0xE350, tabla p04:6E09)
	call 04380h		;6e13   ; a_borra_partida: con 1-2-3, p01:6677 (0xE340-0xF080 a cero, la sala 0x200, nombres y posicion de partida); vuelve con 4-5-6
	ld a,0ffh		;6e16
	ld (0eb00h),a		;6e18   ; guarda el primer nombre (8 letras y 0xFF)
	ld (0eb09h),a		;6e1b   ; guarda el segundo nombre (8 letras y 0xFF)
	call 0591bh		;6e1e   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	call 0599ah		;6e21   ; borra_patrones: 0x1000 de patrones y de colores a cero
	ld a,001h		;6e24
	ld (0e3aeh),a		;6e26
	call 05df1h		;6e29   ; nombres_en_cuadricula: 0xED00 y 0xEE00 con las fichas 0-0xFF en bloques de 8x8
	ld de,07cb6h		;6e2c
	call 059fbh		;6e2f   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld de,07ffah		;6e32
	call 059fbh		;6e35   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld de,081c0h		;6e38
	call 059fbh		;6e3b   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld de,0833eh		;6e3e
	call 059fbh		;6e41   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	call 058ffh		;6e44   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	call sonido_4b		;6e47   ; sonido_4b: pide el sonido 0x4B
	xor a			;6e4a
	ld (0e351h),a		;6e4b   ; guarda el paso de la pantalla de nombres, o la pagina de la historia
	ld (0e348h),a		;6e4e   ; guarda el paso del efecto de aparecer/borrar
	ld (0e34bh),a		;6e51   ; guarda el efecto en marcha
	ld (0e885h),a		;6e54   ; guarda el paso del texto (0 prepara, 1 escribe)
	ld hl,00200h		;6e57
	ld (0eb40h),hl		;6e5a   ; guarda la sala
	ld hl,05440h		;6e5d
	ld (0eb00h),hl		;6e60   ; guarda el primer nombre (8 letras y 0xFF) y el byte siguiente (16 bits)
	ld hl,0ff4fh		;6e63
	ld (0eb02h),hl		;6e66
	ld hl,0038bh		;6e69
	ld (0eb12h),hl		;6e6c
	ld hl,0d67fh		;6e6f
	ld (0eb14h),hl		;6e72
	ld a,0ffh		;6e75
	ld (0eb16h),a		;6e77
	call 05e51h		;6e7a   ; vuelca_nombres: 0x300 de 0xED00 a 0x3800
	jp historia_siguiente		;6e7d   ; historia_siguiente: 0xE350 + 1
historia_1:		; el paso 1 de la historia (0xE350, tabla p04:6E09)
	call animacion_de_la_historia		;6e80   ; animacion_de_la_historia: 0xE34C = la lista p04:7C71[0xE351]
	jp historia_siguiente		;6e83   ; historia_siguiente: 0xE350 + 1
historia_2:		; el paso 2 de la historia (0xE350, tabla p04:6E09)
	ld a,(0e003h)		;6e86   ; lee la cuenta de cuadros
	and 001h		;6e89
	ret nz			;6e8b
	call 04cd4h		;6e8c   ; cortinilla_8: copia la ficha 0xE349 de 64 (8x8) de la lista de 0xE34C, una por cuadro
	ld a,(0e34bh)		;6e8f   ; lee el efecto en marcha
	and a			;6e92
	ret nz			;6e93
	jp historia_siguiente		;6e94   ; historia_siguiente: 0xE350 + 1
historia_3:		; el paso 3 de la historia (0xE350, tabla p04:6E09)
	ld a,(0e351h)		;6e97   ; lee el paso de la pantalla de nombres, o la pagina de la historia
	cp 007h		;6e9a
	call z,anima_ficha_60		;6e9c   ; anima_ficha_60: en cuatro filas (p05:94A9) la ficha 0x60 cambia con el cuadro (p04:6F1E)
	ld a,(0e351h)		;6e9f   ; lee el paso de la pantalla de nombres, o la pagina de la historia
	ld hl,06edch		;6ea2
	call 040a1h		;6ea5   ; hl_mas_a: HL = HL + A
	ld c,(hl)			;6ea8
	ld a,(0e003h)		;6ea9   ; lee la cuenta de cuadros
	and 007h		;6eac
	ret nz			;6eae
	call 04dfdh		;6eaf   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;6eb2   ; lee el texto en marcha
	and a			;6eb5
	ret nz			;6eb6
	ld a,080h		;6eb7
	ld (0e004h),a		;6eb9   ; guarda la espera del estado, en cuadros
	jp historia_siguiente		;6ebc   ; historia_siguiente: 0xE350 + 1
historia_4:		; el paso 4 de la historia (0xE350, tabla p04:6E09)
	ld hl,0e004h		;6ebf   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6ec2
	ret nz			;6ec3
	call 050ebh		;6ec4   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	ld hl,0e351h		;6ec7   ; apunta a el paso de la pantalla de nombres, o la pagina de la historia
	inc (hl)			;6eca
	ld a,(hl)			;6ecb
	cp 008h		;6ecc
	jr z,L_6ED6		;6ece
	ld a,001h		;6ed0
	ld (0e350h),a		;6ed2   ; guarda el paso de la escena (inicial, historia, final)
	ret			;6ed5
L_6ED6:
	ld a,001h		;6ed6
	ld (0e333h),a		;6ed8   ; guarda el paso ha acabado
	ret			;6edb

; ----------------------------------------------------------------------
; DATOS resto_6EDC: lo apuntan con el banco puesto p04:6EA2 (0x6EDC); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:6EA2 (8 bytes)
;   0x6edc..0x6ee4  (8 bytes)
DATA_resto_6EDC:
	defb 000h,001h,013h,015h,017h,018h,014h,016h	; 6edc  ........

; ======================================================================
; CODIGO 0x6ee4..0x6f1e  (58 bytes)
; ======================================================================


anima_ficha_60:		; en cuatro filas (p05:94A9) la ficha 0x60 cambia con el cuadro (p04:6F1E)
	ld b,004h		;6ee4
	ld hl,094a9h		;6ee6
L_6EE9:
	push hl			;6ee9
	push bc			;6eea
	call anima_fila		;6eeb   ; anima_fila: B fichas de DE: donde hay 0x60 escribe en la VRAM HL la ficha del cuadro
	pop bc			;6eee
	pop hl			;6eef
	ld de,00005h		;6ef0
	add hl,de			;6ef3
	djnz L_6EE9		;6ef4
	ret			;6ef6
anima_fila:		; B fichas de DE: donde hay 0x60 escribe en la VRAM HL la ficha del cuadro
	ld e,(hl)			;6ef7   ; DE = la fila de fichas
	inc hl			;6ef8
	ld d,(hl)			;6ef9
	inc hl			;6efa
	ld b,(hl)			;6efb   ; B = cuantas
	inc hl			;6efc
	ld a,(hl)			;6efd   ; HL = su VRAM
	inc hl			;6efe
	ld h,(hl)			;6eff
	ld l,a			;6f00
L_6F01:
	ld a,(de)			;6f01
	cp 060h		;6f02
	jr nz,L_6F19		;6f04
	push hl			;6f06
	ld a,(0e003h)		;6f07   ; lee la cuenta de cuadros
	srl a		;6f0a
	and 007h		;6f0c
	ld hl,06f1eh		;6f0e
	call 040a1h		;6f11   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;6f14
	pop hl			;6f15
	call 0004dh		;6f16   ; BIOS WRTVRM - Writes data in VRAM
L_6F19:
	inc hl			;6f19
	inc de			;6f1a
	djnz L_6F01		;6f1b
	ret			;6f1d

; ----------------------------------------------------------------------
; DATOS resto_6F1E: lo apuntan con el banco puesto p04:6F0E (0x6F1E); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:6F0E (8 bytes)
;   0x6f1e..0x6f26  (8 bytes)
DATA_resto_6F1E:
	defb 060h,080h,090h,0a0h,0f0h,0a0h,090h,080h	; 6f1e  `.......

; ======================================================================
; CODIGO 0x6f26..0x6f39  (19 bytes)
; ======================================================================


historia_siguiente:		; 0xE350 + 1
	ld hl,0e350h		;6f26   ; apunta a el paso de la escena (inicial, historia, final)
	inc (hl)			;6f29
	ret			;6f2a
animacion_de_la_historia:		; 0xE34C = la lista p04:7C71[0xE351]
	ld a,(0e351h)		;6f2b   ; lee el paso de la pantalla de nombres, o la pagina de la historia
	ld de,07c71h		;6f2e
	call 043a4h		;6f31   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld (0e34ch),de		;6f34   ; guarda la lista del efecto
	ret			;6f38

; ----------------------------------------------------------------------
; DATOS fuente: la fuente: 246 caracteres de 8 x 8 (1 bit por punto) que
;   p04:64BB copia con LDIRVM (0x7B0 bytes) a los patrones de la VRAM 0x2000,
;   0x2800 y 0x3000; p06:AEDA saca uno a uno (0x6F39 + caracter x 8); lo leen
;   p04:64BB (1968 bytes)
;   0x6f39..0x76e9  (1968 bytes)
DATA_fuente:
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 6f39  ........
	defb 018h,018h,018h,018h,018h,000h,000h,018h	; 6f41  ........
	defb 03eh,063h,063h,00eh,018h,000h,000h,018h	; 6f49  >cc.....
	defb 000h,000h,000h,000h,000h,000h,00ah,005h	; 6f51  ........
	defb 000h,000h,000h,000h,000h,006h,009h,006h	; 6f59  ........
	defb 000h,000h,000h,000h,000h,000h,020h,010h	; 6f61  ...... .
	defb 000h,000h,000h,000h,018h,024h,024h,018h	; 6f69  .....$$.
	defb 000h,000h,000h,000h,000h,030h,010h,020h	; 6f71  .....0.
	defb 000h,000h,000h,000h,000h,030h,030h,000h	; 6f79  .....00.
	defb 000h,030h,010h,020h,000h,000h,000h,000h	; 6f81  .0. ....
	defb 000h,000h,000h,000h,000h,000h,000h,049h	; 6f89  .......I
	defb 018h,018h,018h,01fh,01fh,000h,000h,000h	; 6f91  ........
	defb 018h,018h,018h,0f8h,0f8h,000h,000h,000h	; 6f99  ........
	defb 000h,000h,000h,01fh,01fh,018h,018h,018h	; 6fa1  ........
	defb 000h,000h,000h,0f8h,0f8h,018h,018h,018h	; 6fa9  ........
	defb 000h,000h,000h,0ffh,0ffh,000h,000h,000h	; 6fb1  ........
	defb 000h,01ch,022h,063h,063h,063h,022h,01ch	; 6fb9  .."ccc".
	defb 000h,018h,038h,018h,018h,018h,018h,07eh	; 6fc1  ..8....~
	defb 000h,03eh,063h,003h,00eh,03ch,070h,07fh	; 6fc9  .>c..<p.
	defb 000h,03eh,063h,003h,00eh,003h,063h,03eh	; 6fd1  .>c...c>
	defb 000h,00eh,01eh,036h,066h,066h,07fh,006h	; 6fd9  ...6ff..
	defb 000h,07fh,060h,07eh,063h,003h,063h,03eh	; 6fe1  ..`~c.c>
	defb 000h,03eh,063h,060h,07eh,063h,063h,03eh	; 6fe9  .>c`~cc>
	defb 000h,07fh,063h,006h,00ch,018h,018h,018h	; 6ff1  ..c.....
	defb 000h,03eh,063h,063h,03eh,063h,063h,03eh	; 6ff9  .>cc>cc>
	defb 000h,03eh,063h,063h,03fh,003h,063h,03eh	; 7001  .>cc?.c>
	defb 01ch,022h,04dh,051h,051h,04dh,022h,01ch	; 7009  ."MQQM".
	defb 018h,018h,018h,018h,018h,018h,018h,018h	; 7011  ........
	defb 000h,000h,010h,000h,000h,010h,000h,000h	; 7019  ........
	defb 000h,000h,000h,032h,04ch,000h,000h,000h	; 7021  ...2L...
	defb 000h,000h,000h,018h,018h,000h,000h,000h	; 7029  ........
	defb 000h,003h,003h,013h,033h,07eh,030h,010h	; 7031  ....3~0.
	defb 000h,000h,000h,000h,07eh,000h,000h,000h	; 7039  ....~...
	defb 000h,01ch,036h,063h,063h,07fh,063h,063h	; 7041  ..6cc.cc
	defb 000h,07eh,063h,063h,07eh,063h,063h,07eh	; 7049  .~cc~cc~
	defb 000h,03eh,063h,060h,060h,060h,063h,03eh	; 7051  .>c```c>
	defb 000h,07ch,066h,063h,063h,063h,066h,07ch	; 7059  .|fcccf|
	defb 000h,07fh,060h,060h,07eh,060h,060h,07fh	; 7061  ..``~``.
	defb 000h,07fh,060h,060h,07eh,060h,060h,060h	; 7069  ..``~```
	defb 000h,03eh,063h,060h,067h,063h,063h,03fh	; 7071  .>c`gcc?
	defb 000h,063h,063h,063h,07fh,063h,063h,063h	; 7079  .ccc.ccc
	defb 000h,03ch,018h,018h,018h,018h,018h,03ch	; 7081  .<.....<
	defb 000h,01fh,006h,006h,006h,006h,066h,03ch	; 7089  ......f<
	defb 000h,063h,066h,06ch,078h,07ch,06eh,067h	; 7091  .cflx|ng
	defb 000h,060h,060h,060h,060h,060h,060h,07fh	; 7099  .``````.
	defb 000h,063h,077h,07fh,07fh,06bh,063h,063h	; 70a1  .cw..kcc
	defb 000h,063h,073h,07bh,07fh,06fh,067h,063h	; 70a9  .cs{.ogc
	defb 000h,03eh,063h,063h,063h,063h,063h,03eh	; 70b1  .>ccccc>
	defb 000h,07eh,063h,063h,063h,07eh,060h,060h	; 70b9  .~ccc~``
	defb 000h,03eh,063h,063h,063h,06fh,066h,03dh	; 70c1  .>cccof=
	defb 000h,07eh,063h,063h,062h,07ch,066h,063h	; 70c9  .~ccb|fc
	defb 000h,03eh,063h,060h,03eh,003h,063h,03eh	; 70d1  .>c`>.c>
	defb 000h,07eh,018h,018h,018h,018h,018h,018h	; 70d9  .~......
	defb 000h,063h,063h,063h,063h,063h,063h,03eh	; 70e1  .cccccc>
	defb 000h,063h,063h,063h,063h,036h,01ch,008h	; 70e9  .cccc6..
	defb 000h,063h,063h,06bh,06bh,07fh,077h,022h	; 70f1  .cckk.w"
	defb 000h,063h,076h,03ch,01ch,01eh,037h,063h	; 70f9  .cv<..7c
	defb 000h,066h,066h,07eh,03ch,018h,018h,018h	; 7101  .ff~<...
	defb 000h,07fh,007h,00eh,01ch,038h,070h,07fh	; 7109  .....8p.
	defb 01ch,010h,010h,010h,010h,010h,010h,000h	; 7111  ........
	defb 000h,008h,008h,008h,008h,008h,008h,038h	; 7119  .......8
	defb 012h,024h,036h,000h,000h,000h,000h,000h	; 7121  .$6.....
	defb 06ch,024h,048h,000h,000h,000h,000h,000h	; 7129  l$H.....
	defb 000h,010h,018h,01ch,01eh,01ch,018h,010h	; 7131  ........
	defb 000h,008h,03ch,010h,01eh,035h,059h,032h	; 7139  ..<..5Y2
	defb 000h,000h,040h,042h,041h,041h,040h,020h	; 7141  ..@BAA@
	defb 000h,01eh,000h,00eh,031h,001h,001h,00eh	; 7149  ....1...
	defb 000h,01eh,000h,00eh,032h,004h,00ch,037h	; 7151  ....2..7
	defb 000h,012h,03dh,010h,01eh,031h,051h,036h	; 7159  ..=..1Q6
	defb 000h,004h,022h,039h,065h,024h,024h,028h	; 7161  .."9e$$(
	defb 000h,008h,03eh,004h,03fh,002h,020h,01eh	; 7169  ..>.?. .
	defb 000h,004h,008h,010h,020h,010h,008h,004h	; 7171  .... ...
	defb 000h,042h,05fh,042h,042h,042h,042h,024h	; 7179  .B_BBBB$
	defb 000h,03ch,002h,004h,000h,000h,020h,01eh	; 7181  .<.... .
	defb 000h,008h,03eh,004h,002h,000h,020h,01eh	; 7189  ..>... .
	defb 000h,020h,010h,010h,010h,010h,011h,00eh	; 7191  . ......
	defb 000h,004h,07fh,00ch,014h,00ch,004h,018h	; 7199  ........
	defb 000h,024h,024h,07fh,024h,024h,020h,01eh	; 71a1  .$$.$$ .
	defb 000h,026h,01ah,004h,07fh,008h,010h,00eh	; 71a9  .&......
	defb 000h,020h,030h,067h,020h,020h,028h,047h	; 71b1  . 0g  (G
	defb 000h,008h,03fh,008h,01eh,031h,001h,00eh	; 71b9  ..?..1..
	defb 000h,000h,00eh,071h,001h,001h,002h,00ch	; 71c1  ...q....
	defb 000h,000h,07fh,004h,008h,010h,010h,00eh	; 71c9  ........
	defb 000h,020h,013h,01ch,010h,020h,020h,01fh	; 71d1  . ...  .
	defb 000h,022h,079h,022h,022h,04eh,013h,00ch	; 71d9  ."y""N..
	defb 000h,020h,027h,028h,020h,020h,028h,017h	; 71e1  . '(  (.
	defb 000h,028h,02eh,039h,029h,06bh,055h,032h	; 71e9  .(.9)kU2
	defb 000h,010h,016h,079h,011h,033h,035h,052h	; 71f1  ...y.35R
	defb 000h,01ch,02ah,049h,049h,051h,051h,022h	; 71f9  ..*IIQQ"
	defb 000h,042h,05fh,042h,042h,04eh,053h,02ch	; 7201  .B_BBNS,
	defb 000h,000h,072h,013h,022h,042h,044h,038h	; 7209  ..r."BD8
	defb 000h,018h,004h,008h,02ah,045h,045h,018h	; 7211  ....*EE.
	defb 000h,000h,000h,030h,028h,044h,003h,000h	; 7219  ...0(D..
	defb 000h,05fh,042h,05fh,042h,04eh,053h,02ch	; 7221  ._B_BNS,
	defb 004h,03eh,004h,03eh,004h,01ch,026h,018h	; 7229  .>.>..&.
	defb 000h,038h,00ah,00ah,03fh,04ah,052h,024h	; 7231  .8..?JR$
	defb 000h,010h,07ah,011h,030h,052h,022h,01ch	; 7239  ..z.0R".
	defb 000h,028h,02eh,039h,029h,069h,051h,032h	; 7241  .(.9)iQ2
	defb 000h,010h,03ch,010h,03ch,010h,011h,00eh	; 7249  ..<.<...
	defb 000h,008h,026h,029h,071h,012h,008h,004h	; 7251  ..&)q...
	defb 000h,010h,05eh,069h,049h,049h,04ah,010h	; 7259  ..^iIIJ.
	defb 000h,004h,007h,004h,004h,01ch,026h,019h	; 7261  ......&.
	defb 000h,018h,006h,020h,02eh,031h,001h,01eh	; 7269  ... .1..
	defb 000h,012h,021h,021h,029h,011h,002h,01ch	; 7271  ..!!)...
	defb 000h,01eh,004h,00eh,031h,009h,015h,01eh	; 7279  ....1...
	defb 000h,012h,016h,07ah,012h,032h,032h,051h	; 7281  ...z.22Q
	defb 000h,01eh,004h,00eh,031h,001h,001h,01eh	; 7289  ....1...
	defb 000h,010h,016h,079h,011h,031h,031h,052h	; 7291  ...y.11R
	defb 000h,008h,03eh,010h,01eh,024h,020h,01eh	; 7299  ..>..$ .
	defb 000h,008h,010h,010h,038h,029h,049h,046h	; 72a1  ....8)IF
	defb 03eh,022h,02eh,028h,028h,028h,038h,000h	; 72a9  >".(((8.
	defb 000h,01ch,014h,014h,014h,074h,044h,07ch	; 72b1  .....tD|
	defb 000h,07fh,009h,009h,00eh,008h,008h,030h	; 72b9  .......0
	defb 000h,003h,01ch,068h,008h,008h,008h,008h	; 72c1  ...h....
	defb 000h,008h,07fh,041h,041h,001h,002h,01ch	; 72c9  ...AA...
	defb 000h,07fh,008h,008h,008h,008h,008h,07fh	; 72d1  ........
	defb 000h,004h,07fh,004h,00ch,014h,014h,064h	; 72d9  .......d
	defb 000h,010h,07fh,011h,011h,011h,011h,062h	; 72e1  .......b
	defb 000h,010h,07fh,008h,008h,07fh,004h,004h	; 72e9  ........
	defb 000h,03fh,021h,041h,001h,001h,006h,038h	; 72f1  .?!A...8
	defb 000h,020h,03fh,022h,042h,002h,004h,018h	; 72f9  . ?"B...
	defb 000h,07fh,001h,001h,001h,001h,001h,07fh	; 7301  ........
	defb 000h,022h,07fh,022h,022h,022h,002h,01ch	; 7309  ."."""..
	defb 000h,070h,001h,071h,001h,001h,002h,07ch	; 7311  .p.q...|
	defb 000h,07fh,001h,001h,002h,004h,01ah,061h	; 7319  .......a
	defb 000h,020h,07fh,021h,021h,022h,020h,01fh	; 7321  . .!!" .
	defb 000h,041h,041h,041h,021h,001h,002h,03ch	; 7329  .AAA!..<
	defb 000h,03fh,021h,059h,007h,001h,006h,038h	; 7331  .?!Y...8
	defb 000h,03fh,004h,07fh,004h,004h,008h,030h	; 7339  .?.....0
	defb 000h,051h,051h,051h,001h,002h,002h,03ch	; 7341  .QQQ...<
	defb 000h,07fh,000h,07fh,004h,004h,004h,038h	; 7349  .......8
	defb 000h,020h,020h,03ch,023h,020h,020h,020h	; 7351  .  <#
	defb 000h,004h,07fh,004h,004h,004h,008h,070h	; 7359  .......p
	defb 000h,000h,03eh,000h,000h,000h,000h,07fh	; 7361  ..>.....
	defb 000h,07fh,001h,011h,009h,006h,006h,079h	; 7369  .......y
	defb 000h,008h,07fh,001h,001h,03eh,049h,008h	; 7371  .....>I.
	defb 000h,001h,001h,002h,002h,004h,008h,030h	; 7379  .......0
	defb 000h,022h,021h,021h,021h,021h,021h,041h	; 7381  ."!!!!!A
	defb 000h,040h,07eh,040h,040h,040h,040h,03fh	; 7389  .@~@@@@?
	defb 000h,07fh,001h,001h,001h,001h,002h,03ch	; 7391  .......<
	defb 000h,010h,028h,044h,044h,002h,002h,001h	; 7399  ..(DD...
	defb 000h,008h,07fh,008h,02ah,02ah,04ah,049h	; 73a1  ....**JI
	defb 000h,07fh,001h,001h,021h,016h,008h,004h	; 73a9  ....!...
	defb 000h,07eh,000h,000h,07eh,000h,000h,07eh	; 73b1  .~..~..~
	defb 000h,010h,020h,020h,042h,041h,041h,07fh	; 73b9  ..  BAA.
	defb 000h,001h,001h,012h,00ah,004h,00ah,031h	; 73c1  .......1
	defb 000h,07fh,010h,010h,07fh,010h,010h,00fh	; 73c9  ........
	defb 000h,020h,07fh,021h,021h,026h,020h,020h	; 73d1  . .!!&
	defb 000h,03eh,002h,002h,002h,002h,002h,07fh	; 73d9  .>......
	defb 000h,07fh,001h,001h,07fh,001h,001h,07fh	; 73e1  ........
	defb 000h,07fh,000h,07fh,001h,001h,001h,03eh	; 73e9  .......>
	defb 000h,041h,041h,041h,041h,001h,006h,038h	; 73f1  .AAAA..8
	defb 000h,028h,028h,028h,029h,029h,049h,04eh	; 73f9  .((())IN
	defb 000h,020h,020h,020h,021h,021h,022h,03ch	; 7401  .   !!"<
	defb 000h,07fh,041h,041h,041h,041h,041h,07fh	; 7409  ..AAAAA.
	defb 000h,07fh,041h,041h,001h,001h,002h,03ch	; 7411  ..AA...<
	defb 000h,07fh,001h,001h,07fh,001h,002h,03ch	; 7419  .......<
	defb 000h,071h,001h,001h,001h,001h,002h,07ch	; 7421  .q.....|
	defb 000h,000h,004h,00eh,005h,00fh,016h,00dh	; 7429  ........
	defb 000h,000h,000h,000h,000h,012h,015h,008h	; 7431  ........
	defb 000h,000h,000h,00ch,000h,01eh,002h,00ch	; 7439  ........
	defb 000h,000h,000h,008h,01eh,004h,008h,016h	; 7441  ........
	defb 000h,000h,004h,00eh,005h,00eh,015h,00eh	; 7449  ........
	defb 000h,000h,000h,014h,01eh,031h,012h,008h	; 7451  .....1..
	defb 000h,000h,000h,008h,02eh,035h,026h,008h	; 7459  .....5&.
	defb 000h,000h,004h,006h,004h,00ch,016h,008h	; 7461  ........
	defb 000h,000h,000h,000h,00eh,031h,001h,006h	; 7469  .....1..
	defb 000h,000h,000h,01fh,001h,005h,004h,018h	; 7471  ........
	defb 000h,000h,000h,001h,007h,01ch,004h,004h	; 7479  ........
	defb 000h,000h,000h,004h,01fh,011h,001h,006h	; 7481  ........
	defb 000h,000h,000h,000h,00fh,002h,002h,00fh	; 7489  ........
	defb 000h,000h,000h,002h,01fh,006h,00ah,012h	; 7491  ........
	defb 000h,000h,000h,008h,01fh,009h,00ah,008h	; 7499  ........
	defb 000h,000h,000h,000h,01eh,002h,002h,01fh	; 74a1  ........
	defb 000h,000h,000h,00fh,001h,00fh,001h,00fh	; 74a9  ........
	defb 000h,000h,000h,015h,015h,015h,001h,006h	; 74b1  ........
	defb 024h,03fh,044h,05fh,0dfh,044h,04ch,05bh	; 74b9  $?D_.DL[
	defb 0f8h,057h,075h,055h,075h,052h,096h,011h	; 74c1  .WuUuR..
	defb 024h,03fh,044h,04eh,0d5h,05fh,044h,044h	; 74c9  $?DN._DD
	defb 018h,024h,05ah,081h,07eh,002h,004h,038h	; 74d1  .$Z.~..8
	defb 008h,07fh,049h,07fh,055h,07fh,055h,055h	; 74d9  ..I.U.UU
	defb 000h,07eh,042h,07eh,042h,07eh,042h,07eh	; 74e1  .~B~B~B~
	defb 022h,07fh,000h,075h,055h,075h,055h,053h	; 74e9  "..uUuUS
	defb 020h,03fh,040h,03eh,002h,02ah,019h,065h	; 74f1   ?@>.*.e
	defb 03eh,022h,03eh,022h,03eh,03eh,015h,067h	; 74f9  >">">>.g
	defb 000h,07fh,041h,041h,041h,041h,041h,07fh	; 7501  ..AAAAA.
	defb 008h,008h,008h,008h,010h,018h,024h,043h	; 7509  ......$C
	defb 020h,0ffh,054h,0ffh,089h,0afh,080h,0a9h	; 7511   .T.....
	defb 07fh,014h,03eh,014h,07fh,000h,056h,05dh	; 7519  ..>...V]
	defb 000h,0f8h,0afh,0fah,0aah,0fah,002h,01eh	; 7521  ........
	defb 000h,0ceh,00ah,0cah,05fh,051h,051h,0bfh	; 7529  ...._QQ.
	defb 008h,008h,03eh,008h,07fh,010h,022h,07fh	; 7531  ..>...".
	defb 07fh,041h,05dh,05dh,04bh,05dh,041h,07fh	; 7539  .A]]K]A.
	defb 008h,07fh,077h,07eh,05eh,05eh,054h,0afh	; 7541  ..w~^^T.
	defb 000h,02ah,02ah,07fh,02ah,02eh,020h,01fh	; 7549  .**.*. .
	defb 03eh,03eh,02ah,03eh,014h,036h,055h,014h	; 7551  >>*>.6U.
	defb 00fh,009h,079h,05fh,056h,076h,00ah,013h	; 7559  ..y_Vv..
	defb 000h,07fh,008h,008h,03eh,008h,008h,07fh	; 7561  ....>...
	defb 072h,022h,072h,024h,074h,068h,0a9h,02fh	; 7569  r"r$th./
	defb 024h,03fh,048h,027h,075h,027h,075h,027h	; 7571  $?H'u'u'
	defb 008h,07fh,000h,03eh,000h,03eh,022h,03eh	; 7579  ...>.>">
	defb 020h,03fh,041h,05dh,0d5h,05dh,041h,047h	; 7581   ?A].]AG
	defb 020h,077h,002h,077h,002h,077h,055h,077h	; 7589   w.w.wUw
	defb 07fh,022h,03eh,022h,03eh,022h,07eh,002h	; 7591  .">">"~.
	defb 072h,023h,075h,022h,075h,063h,0a2h,02ch	; 7599  r#u"uc.,
	defb 034h,07ch,027h,075h,075h,025h,035h,06ah	; 75a1  4|'uu%5j
	defb 020h,077h,005h,077h,005h,077h,057h,075h	; 75a9   w.w.wWu
	defb 024h,05fh,0b5h,054h,0dfh,055h,052h,055h	; 75b1  $_.T.URU
	defb 010h,010h,0ffh,024h,044h,064h,018h,064h	; 75b9  ...$Dd.d
	defb 00fh,011h,02ah,004h,01fh,071h,011h,01fh	; 75c1  ..*..q..
	defb 000h,030h,010h,010h,008h,018h,024h,0c3h	; 75c9  .0....$.
	defb 07fh,00ch,00ah,009h,008h,008h,008h,008h	; 75d1  ........
	defb 008h,008h,07fh,008h,008h,014h,022h,041h	; 75d9  ......"A
	defb 005h,004h,05fh,0f4h,052h,05ah,095h,025h	; 75e1  .._.RZ.%
	defb 03eh,004h,008h,07fh,004h,004h,024h,018h	; 75e9  >.....$.
	defb 008h,07fh,008h,008h,03eh,008h,008h,07fh	; 75f1  ....>...
	defb 020h,024h,042h,091h,010h,024h,03ch,062h	; 75f9   $B..$<b
	defb 000h,008h,02ah,02ah,05bh,00ch,018h,060h	; 7601  ..**[..`
	defb 000h,000h,010h,01eh,022h,054h,008h,004h	; 7609  ...."T..
	defb 03eh,02ah,03eh,02ah,03eh,000h,055h,04fh	; 7611  >*>*>.UO
	defb 04eh,080h,03fh,042h,0c2h,042h,042h,046h	; 7619  N.?B.BBF
	defb 008h,07fh,049h,05dh,055h,05dh,05dh,041h	; 7621  ..I]U]]A
	defb 008h,008h,07fh,049h,049h,07fh,008h,008h	; 7629  ...II...
	defb 03eh,008h,02ah,02ah,07fh,008h,008h,008h	; 7631  >.**....
	defb 030h,060h,020h,0ffh,029h,079h,0afh,020h	; 7639  0` .)y.
	defb 00fh,079h,02fh,079h,02fh,036h,04ah,013h	; 7641  .y/y/6J.
	defb 024h,02fh,0f9h,05fh,05fh,069h,03ah,04dh	; 7649  $/.__i:M
	defb 020h,02fh,0fah,05fh,059h,06fh,03ah,04fh	; 7651   /._Yo:O
	defb 044h,0ffh,044h,05fh,062h,0dfh,04ah,046h	; 7659  D.D_b.JF
	defb 030h,000h,032h,0dch,058h,054h,054h,0b2h	; 7661  0.2.XTT.
	defb 004h,04eh,004h,0dfh,04ah,04dh,054h,0bfh	; 7669  .N..JMT.
	defb 008h,048h,07fh,048h,03eh,008h,008h,07fh	; 7671  .H.H>...
	defb 018h,024h,07eh,081h,07eh,05ah,06ah,008h	; 7679  .$~.~Zj.
	defb 028h,0ffh,04ah,074h,05dh,096h,015h,064h	; 7681  (.Jt]..d
	defb 004h,0ffh,0a4h,0ffh,0a2h,0bfh,0eah,006h	; 7689  ........
	defb 024h,07eh,024h,0ffh,000h,03ch,03ch,03ch	; 7691  $~$..<<<
	defb 000h,07fh,014h,035h,05eh,034h,025h,043h	; 7699  ...5^4%C
	defb 040h,070h,0aeh,02ah,0fah,02ah,05eh,080h	; 76a1  @p.*.*^.
	defb 07dh,02ah,0ffh,0a9h,05eh,034h,048h,097h	; 76a9  }*..^4H.
	defb 008h,07fh,010h,01eh,012h,012h,02ah,044h	; 76b1  ......*D
	defb 000h,000h,020h,015h,055h,050h,051h,00eh	; 76b9  .. .UPQ.
	defb 022h,022h,07fh,022h,06ah,076h,0a2h,026h	; 76c1  ""."jv.&
	defb 044h,0e4h,03fh,05fh,0ffh,05fh,044h,044h	; 76c9  D.?_._DD
	defb 025h,024h,05fh,044h,0c4h,044h,044h,041h	; 76d1  %$_D.DDA
	defb 000h,07eh,042h,042h,07eh,042h,042h,07eh	; 76d9  .~BB~BB~
	defb 000h,07fh,008h,03eh,008h,008h,014h,063h	; 76e1  ...>...c

; ----------------------------------------------------------------------
; DATOS fuente_extra: 15 caracteres mas que p04:64AF copia (0x78 bytes) a la
;   VRAM 0x2808; lo leen p04:64AF (120 bytes)
;   0x76e9..0x7761  (120 bytes)
DATA_fuente_extra:
	defb 000h,000h,000h,000h,000h,000h,0ffh,0ffh	; 76e9  ........
	defb 003h,003h,003h,003h,003h,003h,003h,003h	; 76f1  ........
	defb 0ffh,0ffh,000h,000h,000h,000h,00ah,005h	; 76f9  ........
	defb 0ffh,0ffh,000h,000h,000h,006h,009h,006h	; 7701  ........
	defb 000h,000h,000h,000h,000h,000h,003h,003h	; 7709  ........
	defb 000h,000h,000h,000h,000h,000h,0c0h,0c0h	; 7711  ........
	defb 000h,073h,063h,063h,063h,07eh,060h,060h	; 7719  .sccc~``
	defb 000h,07fh,060h,060h,07eh,060h,060h,07fh	; 7721  ..``~``.
	defb 000h,000h,0fch,0fch,0fch,0fch,0fch,0fch	; 7729  ........
	defb 000h,000h,0fch,0fch,0fch,0fch,0fch,0fch	; 7731  ........
	defb 0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h	; 7739  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 7741  ........
	defb 01fh,01fh,018h,018h,018h,018h,018h,018h	; 7749  ........
	defb 0f8h,0f8h,018h,018h,018h,018h,018h,018h	; 7751  ........
	defb 0ffh,0ffh,000h,000h,000h,000h,000h,000h	; 7759  ........

; ----------------------------------------------------------------------
; DATOS graficos_7761: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0
;   acaba; lo leen p04:6530 (354 bytes)
;   0x7761..0x78c3  (354 bytes)
DATA_graficos_7761:
	defb 000h,02ah,018h,000h,002h,007h,003h,00fh,002h,01fh,081h,03fh,008h,0ffh,002h,0f8h	; 7761  .*.........?....
	defb 003h,0f0h,003h,0e0h,07fh,000h,00dh,000h,087h,001h,003h,00fh,07fh,03fh,07fh,07fh	; 7771  .............?..
	defb 00ah,0ffh,082h,0fch,0f0h,003h,0c0h,002h,080h,07fh,000h,083h,001h,003h,007h,003h	; 7781  ................
	defb 00fh,081h,03fh,009h,0ffh,087h,0feh,0fch,0f8h,0f8h,0f0h,0f8h,0c0h,00bh,000h,002h	; 7791  ..?.............
	defb 001h,083h,003h,07fh,07fh,00bh,0ffh,002h,0feh,083h,0fch,080h,080h,006h,000h,002h	; 77a1  ................
	defb 03ch,002h,078h,092h,079h,0f3h,0f7h,0ffh,01fh,03eh,07ch,0f9h,0f3h,0e3h,0c3h,087h	; 77b1  <.x.y....>|.....
	defb 01fh,07fh,0f8h,0f0h,0e0h,0e0h,003h,0c0h,084h,0f0h,0f8h,078h,078h,003h,079h,002h	; 77c1  ...........xx.y.
	defb 07fh,083h,0ffh,0f7h,0f7h,003h,0e7h,002h,00fh,003h,01eh,003h,03ch,088h,003h,007h	; 77d1  ............<...
	defb 00fh,00eh,01eh,03ch,038h,078h,005h,0e0h,003h,0e1h,002h,07eh,083h,0feh,0f6h,0f6h	; 77e1  ...<8x.....~....
	defb 003h,0eeh,002h,00fh,088h,01fh,01dh,03dh,03bh,07bh,073h,0f1h,0f1h,003h,0e3h,003h	; 77f1  .......=.{s.....
	defb 0c7h,002h,0e0h,003h,0c0h,003h,080h,008h,000h,003h,01fh,003h,03fh,002h,07fh,008h	; 7801  ............?...
	defb 0ffh,083h,0f0h,0e0h,0e0h,003h,0c0h,002h,080h,007h,000h,087h,007h,003h,007h,007h	; 7811  ................
	defb 00fh,01fh,03fh,009h,0ffh,089h,0f8h,0fch,0f8h,0f8h,0f0h,0e0h,0c0h,000h,000h,003h	; 7821  ..?.............
	defb 001h,003h,003h,002h,007h,088h,0efh,0e7h,0e7h,0c7h,0c7h,0c3h,083h,083h,003h,087h	; 7831  ................
	defb 003h,0c7h,092h,0e3h,0e0h,080h,080h,081h,081h,083h,0c7h,0ffh,0feh,0fbh,0f3h,0f3h	; 7841  ................
	defb 0f7h,0e7h,0c7h,08fh,00fh,003h,0c7h,003h,087h,002h,007h,002h,078h,088h,079h,0f1h	; 7851  ............x.y.
	defb 0f3h,0f7h,0e7h,0efh,070h,0f0h,003h,0ffh,002h,081h,081h,001h,003h,0e3h,003h,0e7h	; 7861  ....p...........
	defb 002h,0efh,002h,0ceh,081h,0cfh,003h,08fh,002h,00fh,088h,0f7h,0e7h,0c7h,0cfh,08fh	; 7871  ................
	defb 08fh,01eh,01eh,003h,08fh,003h,01eh,002h,03ch,090h,007h,008h,017h,014h,017h,014h	; 7881  ........<.......
	defb 008h,007h,080h,040h,020h,0a0h,020h,0a0h,040h,080h,011h,000h,085h,003h,00fh,01fh	; 7891  ...@ . .@.......
	defb 03fh,07fh,00bh,0ffh,086h,0fch,0f0h,0e0h,0c0h,080h,080h,07fh,000h,00ah,000h,003h	; 78a1  ?...............
	defb 001h,003h,003h,002h,007h,009h,0ffh,002h,0feh,003h,0fch,002h,0f8h,07fh,000h,009h	; 78b1  ................
	defb 000h,000h	; 78c1

; ----------------------------------------------------------------------
; DATOS rle_78C3: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n >
;   0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: SIN LECTOR A LA VISTA:
;   una RLE como las de 0x65B8 que ninguna tabla apunta; lo leen nadie (29
;   bytes)
;   0x78c3..0x78e0  (29 bytes)
DATA_rle_78C3:
	defb 07fh,090h,029h,090h,07fh,090h,029h,090h,020h,090h,020h,060h,068h,0e0h,018h,090h	; 78c3  ..)...). . `h...
	defb 020h,060h,070h,0e0h,07fh,060h,029h,060h,07fh,060h,029h,060h,000h	; 78d3   `p..`)`.`)`.

; ----------------------------------------------------------------------
; DATOS rle_78E0: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n >
;   0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: a 0xED00 (p04:65D4), de
;   la tabla 0x65B8; lo leen p04:659D (5 bytes)
;   0x78e0..0x78e5  (5 bytes)
DATA_rle_78E0:
	defb 07fh,090h,029h,090h,000h	; 78e0

; ----------------------------------------------------------------------
; DATOS rle_78E5: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n >
;   0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: a 0xED00 (p04:65D4), de
;   la tabla 0x65B8; lo leen p04:659D (5 bytes)
;   0x78e5..0x78ea  (5 bytes)
DATA_rle_78E5:
	defb 07fh,090h,029h,090h,000h	; 78e5

; ----------------------------------------------------------------------
; DATOS rle_78EA: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n >
;   0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: a 0xED00 (p04:65D4), de
;   la tabla 0x65B8; lo leen p04:659D (7 bytes)
;   0x78ea..0x78f1  (7 bytes)
DATA_rle_78EA:
	defb 020h,090h,020h,060h,068h,0e0h,000h	; 78ea

; ----------------------------------------------------------------------
; DATOS rle_78F1: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n >
;   0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: a 0xED00 (p04:65D4), de
;   la tabla 0x65B8; lo leen p04:659D (7 bytes)
;   0x78f1..0x78f8  (7 bytes)
DATA_rle_78F1:
	defb 018h,090h,020h,060h,070h,0e0h,000h	; 78f1

; ----------------------------------------------------------------------
; DATOS rle_78F8: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n >
;   0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: a 0xED00 (p04:65D4), de
;   la tabla 0x65B8; lo leen p04:659D (5 bytes)
;   0x78f8..0x78fd  (5 bytes)
DATA_rle_78F8:
	defb 07fh,060h,029h,060h,000h	; 78f8

; ----------------------------------------------------------------------
; DATOS rle_78FD: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n >
;   0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: a 0xED00 (p04:65D4), de
;   la tabla 0x65B8; lo leen p04:659D (5 bytes)
;   0x78fd..0x7902  (5 bytes)
DATA_rle_78FD:
	defb 07fh,060h,029h,060h,000h	; 78fd

; ----------------------------------------------------------------------
; DATOS listas_de_objetos: 44 palabras: una lista de objetos por numero
;   (L_43A4 con A); lo leen p00:5694 (88 bytes)
;   0x7902..0x795a  (88 bytes)
DATA_listas_de_objetos:
	defb 05ah,079h	; 7902
	defb 05eh,079h	; 7904
	defb 062h,079h	; 7906
	defb 067h,079h	; 7908
	defb 071h,079h	; 790a
	defb 075h,079h	; 790c
	defb 05ah,079h	; 790e
	defb 079h,079h	; 7910
	defb 07dh,079h	; 7912
	defb 080h,079h	; 7914
	defb 086h,079h	; 7916
	defb 08bh,079h	; 7918
	defb 08fh,079h	; 791a
	defb 093h,079h	; 791c
	defb 099h,079h	; 791e
	defb 09ch,079h	; 7920
	defb 09fh,079h	; 7922
	defb 0a4h,079h	; 7924
	defb 0aah,079h	; 7926
	defb 0aeh,079h	; 7928
	defb 0b1h,079h	; 792a
	defb 0b7h,079h	; 792c
	defb 0bah,079h	; 792e
	defb 0beh,079h	; 7930
	defb 0c3h,079h	; 7932
	defb 0c7h,079h	; 7934
	defb 0cdh,079h	; 7936
	defb 0d1h,079h	; 7938
	defb 0d6h,079h	; 793a
	defb 0d9h,079h	; 793c
	defb 0ddh,079h	; 793e
	defb 0e1h,079h	; 7940
	defb 0e7h,079h	; 7942
	defb 0ech,079h	; 7944
	defb 0f2h,079h	; 7946
	defb 0f6h,079h	; 7948
	defb 0f9h,079h	; 794a
	defb 0fch,079h	; 794c
	defb 001h,07ah	; 794e
	defb 006h,07ah	; 7950
	defb 009h,07ah	; 7952
	defb 00ch,07ah	; 7954
	defb 00fh,07ah	; 7956
	defb 012h,07ah	; 7958

; ----------------------------------------------------------------------
; DATOS objetos_795A: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x795a..0x795e  (4 bytes)
DATA_objetos_795A:
	defb 000h,018h,019h,0ffh	; 795a

; ----------------------------------------------------------------------
; DATOS objetos_795E: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x795e..0x7962  (4 bytes)
DATA_objetos_795E:
	defb 000h,01ah,01bh,0ffh	; 795e

; ----------------------------------------------------------------------
; DATOS objetos_7962: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (5 bytes)
;   0x7962..0x7967  (5 bytes)
DATA_objetos_7962:
	defb 000h,01ch,01dh,01eh,0ffh	; 7962

; ----------------------------------------------------------------------
; DATOS objetos_7967: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (10 bytes)
;   0x7967..0x7971  (10 bytes)
DATA_objetos_7967:
	defb 001h,01ch,01dh,01eh,01fh,020h,021h,022h,023h,0ffh	; 7967  ..... !"#.

; ----------------------------------------------------------------------
; DATOS objetos_7971: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x7971..0x7975  (4 bytes)
DATA_objetos_7971:
	defb 000h,024h,025h,0ffh	; 7971

; ----------------------------------------------------------------------
; DATOS objetos_7975: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x7975..0x7979  (4 bytes)
DATA_objetos_7975:
	defb 000h,024h,026h,0ffh	; 7975

; ----------------------------------------------------------------------
; DATOS objetos_7979: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x7979..0x797d  (4 bytes)
DATA_objetos_7979:
	defb 000h,027h,028h,0ffh	; 7979

; ----------------------------------------------------------------------
; DATOS objetos_797D: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x797d..0x7980  (3 bytes)
DATA_objetos_797D:
	defb 000h,029h,0ffh	; 797d

; ----------------------------------------------------------------------
; DATOS objetos_7980: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (6 bytes)
;   0x7980..0x7986  (6 bytes)
DATA_objetos_7980:
	defb 000h,02ah,02bh,02ch,02dh,0ffh	; 7980

; ----------------------------------------------------------------------
; DATOS objetos_7986: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (5 bytes)
;   0x7986..0x798b  (5 bytes)
DATA_objetos_7986:
	defb 000h,02eh,02fh,030h,0ffh	; 7986

; ----------------------------------------------------------------------
; DATOS objetos_798B: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x798b..0x798f  (4 bytes)
DATA_objetos_798B:
	defb 000h,031h,032h,0ffh	; 798b

; ----------------------------------------------------------------------
; DATOS objetos_798F: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x798f..0x7993  (4 bytes)
DATA_objetos_798F:
	defb 000h,030h,033h,0ffh	; 798f

; ----------------------------------------------------------------------
; DATOS objetos_7993: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (6 bytes)
;   0x7993..0x7999  (6 bytes)
DATA_objetos_7993:
	defb 000h,031h,032h,034h,035h,0ffh	; 7993

; ----------------------------------------------------------------------
; DATOS objetos_7999: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x7999..0x799c  (3 bytes)
DATA_objetos_7999:
	defb 000h,032h,0ffh	; 7999

; ----------------------------------------------------------------------
; DATOS objetos_799C: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x799c..0x799f  (3 bytes)
DATA_objetos_799C:
	defb 000h,036h,0ffh	; 799c

; ----------------------------------------------------------------------
; DATOS objetos_799F: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (5 bytes)
;   0x799f..0x79a4  (5 bytes)
DATA_objetos_799F:
	defb 000h,037h,038h,039h,0ffh	; 799f

; ----------------------------------------------------------------------
; DATOS objetos_79A4: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (6 bytes)
;   0x79a4..0x79aa  (6 bytes)
DATA_objetos_79A4:
	defb 000h,03ah,037h,03bh,03ch,0ffh	; 79a4

; ----------------------------------------------------------------------
; DATOS objetos_79AA: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x79aa..0x79ae  (4 bytes)
DATA_objetos_79AA:
	defb 000h,03dh,03dh,0ffh	; 79aa

; ----------------------------------------------------------------------
; DATOS objetos_79AE: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x79ae..0x79b1  (3 bytes)
DATA_objetos_79AE:
	defb 000h,037h,0ffh	; 79ae

; ----------------------------------------------------------------------
; DATOS objetos_79B1: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (6 bytes)
;   0x79b1..0x79b7  (6 bytes)
DATA_objetos_79B1:
	defb 000h,03eh,03fh,040h,038h,0ffh	; 79b1

; ----------------------------------------------------------------------
; DATOS objetos_79B7: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x79b7..0x79ba  (3 bytes)
DATA_objetos_79B7:
	defb 000h,034h,0ffh	; 79b7

; ----------------------------------------------------------------------
; DATOS objetos_79BA: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x79ba..0x79be  (4 bytes)
DATA_objetos_79BA:
	defb 000h,033h,041h,0ffh	; 79ba

; ----------------------------------------------------------------------
; DATOS objetos_79BE: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (5 bytes)
;   0x79be..0x79c3  (5 bytes)
DATA_objetos_79BE:
	defb 000h,05dh,043h,044h,0ffh	; 79be

; ----------------------------------------------------------------------
; DATOS objetos_79C3: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x79c3..0x79c7  (4 bytes)
DATA_objetos_79C3:
	defb 000h,05dh,043h,0ffh	; 79c3

; ----------------------------------------------------------------------
; DATOS objetos_79C7: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (6 bytes)
;   0x79c7..0x79cd  (6 bytes)
DATA_objetos_79C7:
	defb 000h,046h,047h,048h,049h,0ffh	; 79c7

; ----------------------------------------------------------------------
; DATOS objetos_79CD: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x79cd..0x79d1  (4 bytes)
DATA_objetos_79CD:
	defb 000h,04ah,008h,0ffh	; 79cd

; ----------------------------------------------------------------------
; DATOS objetos_79D1: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (5 bytes)
;   0x79d1..0x79d6  (5 bytes)
DATA_objetos_79D1:
	defb 000h,04bh,04ch,04dh,0ffh	; 79d1

; ----------------------------------------------------------------------
; DATOS objetos_79D6: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x79d6..0x79d9  (3 bytes)
DATA_objetos_79D6:
	defb 000h,04eh,0ffh	; 79d6

; ----------------------------------------------------------------------
; DATOS objetos_79D9: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x79d9..0x79dd  (4 bytes)
DATA_objetos_79D9:
	defb 000h,050h,04fh,0ffh	; 79d9

; ----------------------------------------------------------------------
; DATOS objetos_79DD: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x79dd..0x79e1  (4 bytes)
DATA_objetos_79DD:
	defb 000h,05bh,042h,0ffh	; 79dd

; ----------------------------------------------------------------------
; DATOS objetos_79E1: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (6 bytes)
;   0x79e1..0x79e7  (6 bytes)
DATA_objetos_79E1:
	defb 000h,05dh,043h,044h,051h,0ffh	; 79e1

; ----------------------------------------------------------------------
; DATOS objetos_79E7: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (5 bytes)
;   0x79e7..0x79ec  (5 bytes)
DATA_objetos_79E7:
	defb 000h,05dh,043h,051h,0ffh	; 79e7

; ----------------------------------------------------------------------
; DATOS objetos_79EC: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (6 bytes)
;   0x79ec..0x79f2  (6 bytes)
DATA_objetos_79EC:
	defb 000h,01ch,01dh,01eh,01fh,0ffh	; 79ec

; ----------------------------------------------------------------------
; DATOS objetos_79F2: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (4 bytes)
;   0x79f2..0x79f6  (4 bytes)
DATA_objetos_79F2:
	defb 000h,052h,035h,0ffh	; 79f2

; ----------------------------------------------------------------------
; DATOS objetos_79F6: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x79f6..0x79f9  (3 bytes)
DATA_objetos_79F6:
	defb 000h,053h,0ffh	; 79f6

; ----------------------------------------------------------------------
; DATOS objetos_79F9: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x79f9..0x79fc  (3 bytes)
DATA_objetos_79F9:
	defb 000h,054h,0ffh	; 79f9

; ----------------------------------------------------------------------
; DATOS objetos_79FC: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (5 bytes)
;   0x79fc..0x7a01  (5 bytes)
DATA_objetos_79FC:
	defb 000h,055h,056h,057h,0ffh	; 79fc

; ----------------------------------------------------------------------
; DATOS objetos_7A01: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (5 bytes)
;   0x7a01..0x7a06  (5 bytes)
DATA_objetos_7A01:
	defb 000h,058h,03bh,059h,0ffh	; 7a01

; ----------------------------------------------------------------------
; DATOS objetos_7A06: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x7a06..0x7a09  (3 bytes)
DATA_objetos_7A06:
	defb 000h,050h,0ffh	; 7a06

; ----------------------------------------------------------------------
; DATOS objetos_7A09: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x7a09..0x7a0c  (3 bytes)
DATA_objetos_7A09:
	defb 000h,05ah,0ffh	; 7a09

; ----------------------------------------------------------------------
; DATOS objetos_7A0C: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x7a0c..0x7a0f  (3 bytes)
DATA_objetos_7A0C:
	defb 000h,04dh,0ffh	; 7a0c

; ----------------------------------------------------------------------
; DATOS objetos_7A0F: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x7a0f..0x7a12  (3 bytes)
DATA_objetos_7A0F:
	defb 000h,05ch,0ffh	; 7a0f

; ----------------------------------------------------------------------
; DATOS objetos_7A12: [0xE8A1] y numeros de objeto hasta 0xFF, que p00:56A6
;   copia a 0xE8B8; lo leen p00:5694 (3 bytes)
;   0x7a12..0x7a15  (3 bytes)
DATA_objetos_7A12:
	defb 000h,045h,0ffh	; 7a12

; ----------------------------------------------------------------------
; DATOS nombres_de_objeto: 94 palabras: el nombre de cada objeto (0x7A15 +
;   objeto x 2); lo leen p00:5700 (188 bytes)
;   0x7a15..0x7ad1  (188 bytes)
DATA_nombres_de_objeto:
	defb 0d1h,07ah	; 7a15
	defb 0d1h,07ah	; 7a17
	defb 0d6h,07ah	; 7a19
	defb 0dbh,07ah	; 7a1b
	defb 0dfh,07ah	; 7a1d
	defb 0e4h,07ah	; 7a1f
	defb 0eah,07ah	; 7a21
	defb 0efh,07ah	; 7a23
	defb 0f2h,07ah	; 7a25
	defb 0f7h,07ah	; 7a27
	defb 0feh,07ah	; 7a29
	defb 004h,07bh	; 7a2b
	defb 008h,07bh	; 7a2d
	defb 00dh,07bh	; 7a2f
	defb 00dh,07bh	; 7a31
	defb 00dh,07bh	; 7a33
	defb 00dh,07bh	; 7a35
	defb 00dh,07bh	; 7a37
	defb 00dh,07bh	; 7a39
	defb 00dh,07bh	; 7a3b
	defb 00dh,07bh	; 7a3d
	defb 00dh,07bh	; 7a3f
	defb 00dh,07bh	; 7a41
	defb 00dh,07bh	; 7a43
	defb 00dh,07bh	; 7a45
	defb 011h,07bh	; 7a47
	defb 016h,07bh	; 7a49
	defb 01ch,07bh	; 7a4b
	defb 022h,07bh	; 7a4d
	defb 028h,07bh	; 7a4f
	defb 02bh,07bh	; 7a51
	defb 030h,07bh	; 7a53
	defb 033h,07bh	; 7a55
	defb 036h,07bh	; 7a57
	defb 03ah,07bh	; 7a59
	defb 03eh,07bh	; 7a5b
	defb 043h,07bh	; 7a5d
	defb 046h,07bh	; 7a5f
	defb 04ah,07bh	; 7a61
	defb 050h,07bh	; 7a63
	defb 056h,07bh	; 7a65
	defb 05bh,07bh	; 7a67
	defb 061h,07bh	; 7a69
	defb 067h,07bh	; 7a6b
	defb 06eh,07bh	; 7a6d
	defb 075h,07bh	; 7a6f
	defb 07ah,07bh	; 7a71
	defb 07dh,07bh	; 7a73
	defb 080h,07bh	; 7a75
	defb 084h,07bh	; 7a77
	defb 088h,07bh	; 7a79
	defb 08bh,07bh	; 7a7b
	defb 091h,07bh	; 7a7d
	defb 097h,07bh	; 7a7f
	defb 09ch,07bh	; 7a81
	defb 0a2h,07bh	; 7a83
	defb 0a9h,07bh	; 7a85
	defb 0aeh,07bh	; 7a87
	defb 0b3h,07bh	; 7a89
	defb 0bah,07bh	; 7a8b
	defb 0c0h,07bh	; 7a8d
	defb 0c6h,07bh	; 7a8f
	defb 0cah,07bh	; 7a91
	defb 0d1h,07bh	; 7a93
	defb 0d7h,07bh	; 7a95
	defb 0ddh,07bh	; 7a97
	defb 0e1h,07bh	; 7a99
	defb 0e6h,07bh	; 7a9b
	defb 0ebh,07bh	; 7a9d
	defb 0f1h,07bh	; 7a9f
	defb 0f6h,07bh	; 7aa1
	defb 0fah,07bh	; 7aa3
	defb 0feh,07bh	; 7aa5
	defb 002h,07ch	; 7aa7
	defb 007h,07ch	; 7aa9
	defb 00ch,07ch	; 7aab
	defb 011h,07ch	; 7aad
	defb 016h,07ch	; 7aaf
	defb 01ch,07ch	; 7ab1
	defb 021h,07ch	; 7ab3
	defb 026h,07ch	; 7ab5
	defb 02bh,07ch	; 7ab7
	defb 030h,07ch	; 7ab9
	defb 036h,07ch	; 7abb
	defb 03ch,07ch	; 7abd
	defb 041h,07ch	; 7abf
	defb 044h,07ch	; 7ac1
	defb 048h,07ch	; 7ac3
	defb 04bh,07ch	; 7ac5
	defb 051h,07ch	; 7ac7
	defb 056h,07ch	; 7ac9
	defb 05ch,07ch	; 7acb
	defb 063h,07ch	; 7acd
	defb 069h,07ch	; 7acf

; ----------------------------------------------------------------------
; DATOS nombre_7AD1: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7ad1..0x7ad6  (5 bytes)
DATA_nombre_7AD1:
	defb 04fh,06dh,048h,06dh,0ffh	; 7ad1

; ----------------------------------------------------------------------
; DATOS nombre_7AD6: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7ad6..0x7adb  (5 bytes)
DATA_nombre_7AD6:
	defb 09ah,020h,07eh,077h,0ffh	; 7ad6

; ----------------------------------------------------------------------
; DATOS nombre_7ADB: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7adb..0x7adf  (4 bytes)
DATA_nombre_7ADB:
	defb 05fh,04ch,003h,0ffh	; 7adb

; ----------------------------------------------------------------------
; DATOS nombre_7ADF: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7adf..0x7ae4  (5 bytes)
DATA_nombre_7ADF:
	defb 064h,05ah,003h,06bh,0ffh	; 7adf

; ----------------------------------------------------------------------
; DATOS nombre_7AE4: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7ae4..0x7aea  (6 bytes)
DATA_nombre_7AE4:
	defb 059h,04fh,048h,058h,046h,0ffh	; 7ae4

; ----------------------------------------------------------------------
; DATOS nombre_7AEA: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7aea..0x7aef  (5 bytes)
DATA_nombre_7AEA:
	defb 052h,045h,003h,05fh,0ffh	; 7aea

; ----------------------------------------------------------------------
; DATOS nombre_7AEF: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (3 bytes)
;   0x7aef..0x7af2  (3 bytes)
DATA_nombre_7AEF:
	defb 074h,088h,0ffh	; 7aef

; ----------------------------------------------------------------------
; DATOS nombre_7AF2: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7af2..0x7af7  (5 bytes)
DATA_nombre_7AF2:
	defb 07fh,003h,071h,093h,0ffh	; 7af2

; ----------------------------------------------------------------------
; DATOS nombre_7AF7: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (7 bytes)
;   0x7af7..0x7afe  (7 bytes)
DATA_nombre_7AF7:
	defb 08bh,097h,020h,089h,004h,07ch,0ffh	; 7af7

; ----------------------------------------------------------------------
; DATOS nombre_7AFE: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7afe..0x7b04  (6 bytes)
DATA_nombre_7AFE:
	defb 087h,0afh,077h,099h,07ch,0ffh	; 7afe

; ----------------------------------------------------------------------
; DATOS nombre_7B04: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7b04..0x7b08  (4 bytes)
DATA_nombre_7B04:
	defb 08eh,09dh,083h,0ffh	; 7b04

; ----------------------------------------------------------------------
; DATOS nombre_7B08: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7b08..0x7b0d  (5 bytes)
DATA_nombre_7B08:
	defb 089h,09dh,08eh,020h,0ffh	; 7b08

; ----------------------------------------------------------------------
; DATOS nombre_7B0D: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7b0d..0x7b11  (4 bytes)
DATA_nombre_7B0D:
	defb 040h,048h,068h,0ffh	; 7b0d

; ----------------------------------------------------------------------
; DATOS nombre_7B11: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7b11..0x7b16  (5 bytes)
DATA_nombre_7B11:
	defb 040h,048h,054h,041h,0ffh	; 7b11

; ----------------------------------------------------------------------
; DATOS nombre_7B16: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7b16..0x7b1c  (6 bytes)
DATA_nombre_7B16:
	defb 0cbh,06ch,04ch,05eh,04ch,0ffh	; 7b16

; ----------------------------------------------------------------------
; DATOS nombre_7B1C: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7b1c..0x7b22  (6 bytes)
DATA_nombre_7B1C:
	defb 0b5h,06ch,0b4h,048h,068h,0ffh	; 7b1c

; ----------------------------------------------------------------------
; DATOS nombre_7B22: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7b22..0x7b28  (6 bytes)
DATA_nombre_7B22:
	defb 0cah,04bh,045h,048h,068h,0ffh	; 7b22

; ----------------------------------------------------------------------
; DATOS nombre_7B28: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (3 bytes)
;   0x7b28..0x7b2b  (3 bytes)
DATA_nombre_7B28:
	defb 0b8h,068h,0ffh	; 7b28

; ----------------------------------------------------------------------
; DATOS nombre_7B2B: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7b2b..0x7b30  (5 bytes)
DATA_nombre_7B2B:
	defb 0ceh,05ch,003h,068h,0ffh	; 7b2b

; ----------------------------------------------------------------------
; DATOS nombre_7B30: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (3 bytes)
;   0x7b30..0x7b33  (3 bytes)
DATA_nombre_7B30:
	defb 0b1h,068h,0ffh	; 7b30

; ----------------------------------------------------------------------
; DATOS nombre_7B33: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (3 bytes)
;   0x7b33..0x7b36  (3 bytes)
DATA_nombre_7B33:
	defb 0b0h,042h,0ffh	; 7b33

; ----------------------------------------------------------------------
; DATOS nombre_7B36: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7b36..0x7b3a  (4 bytes)
DATA_nombre_7B36:
	defb 0b8h,04dh,068h,0ffh	; 7b36

; ----------------------------------------------------------------------
; DATOS nombre_7B3A: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7b3a..0x7b3e  (4 bytes)
DATA_nombre_7B3A:
	defb 06bh,04fh,04ch,0ffh	; 7b3a

; ----------------------------------------------------------------------
; DATOS nombre_7B3E: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7b3e..0x7b43  (5 bytes)
DATA_nombre_7B3E:
	defb 0c9h,045h,04ch,068h,0ffh	; 7b3e

; ----------------------------------------------------------------------
; DATOS nombre_7B43: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (3 bytes)
;   0x7b43..0x7b46  (3 bytes)
DATA_nombre_7B43:
	defb 041h,043h,0ffh	; 7b43

; ----------------------------------------------------------------------
; DATOS nombre_7B46: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7b46..0x7b4a  (4 bytes)
DATA_nombre_7B46:
	defb 059h,04fh,048h,0ffh	; 7b46

; ----------------------------------------------------------------------
; DATOS nombre_7B4A: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7b4a..0x7b50  (6 bytes)
DATA_nombre_7B4A:
	defb 059h,04fh,048h,058h,046h,0ffh	; 7b4a

; ----------------------------------------------------------------------
; DATOS nombre_7B50: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7b50..0x7b56  (6 bytes)
DATA_nombre_7B50:
	defb 04bh,003h,05bh,003h,06dh,0ffh	; 7b50

; ----------------------------------------------------------------------
; DATOS nombre_7B56: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7b56..0x7b5b  (5 bytes)
DATA_nombre_7B56:
	defb 08bh,003h,07fh,0d6h,0ffh	; 7b56

; ----------------------------------------------------------------------
; DATOS nombre_7B5B: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7b5b..0x7b61  (6 bytes)
DATA_nombre_7B5B:
	defb 044h,04fh,003h,052h,068h,0ffh	; 7b5b

; ----------------------------------------------------------------------
; DATOS nombre_7B61: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7b61..0x7b67  (6 bytes)
DATA_nombre_7B61:
	defb 0bbh,06ch,040h,066h,042h,0ffh	; 7b61

; ----------------------------------------------------------------------
; DATOS nombre_7B67: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (7 bytes)
;   0x7b67..0x7b6e  (7 bytes)
DATA_nombre_7B67:
	defb 05fh,04ch,003h,06ch,058h,060h,0ffh	; 7b67

; ----------------------------------------------------------------------
; DATOS nombre_7B6E: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (7 bytes)
;   0x7b6e..0x7b75  (7 bytes)
DATA_nombre_7B6E:
	defb 05fh,04ch,003h,06ch,047h,060h,0ffh	; 7b6e

; ----------------------------------------------------------------------
; DATOS nombre_7B75: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7b75..0x7b7a  (5 bytes)
DATA_nombre_7B75:
	defb 04dh,06dh,04fh,047h,0ffh	; 7b75

; ----------------------------------------------------------------------
; DATOS nombre_7B7A: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (3 bytes)
;   0x7b7a..0x7b7d  (3 bytes)
DATA_nombre_7B7A:
	defb 046h,068h,0ffh	; 7b7a

; ----------------------------------------------------------------------
; DATOS nombre_7B7D: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (3 bytes)
;   0x7b7d..0x7b80  (3 bytes)
DATA_nombre_7B7D:
	defb 05bh,060h,0ffh	; 7b7d

; ----------------------------------------------------------------------
; DATOS nombre_7B80: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7b80..0x7b84  (4 bytes)
DATA_nombre_7B80:
	defb 055h,044h,042h,0ffh	; 7b80

; ----------------------------------------------------------------------
; DATOS nombre_7B84: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7b84..0x7b88  (4 bytes)
DATA_nombre_7B84:
	defb 049h,06bh,04ch,0ffh	; 7b84

; ----------------------------------------------------------------------
; DATOS nombre_7B88: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (3 bytes)
;   0x7b88..0x7b8b  (3 bytes)
DATA_nombre_7B88:
	defb 044h,04ch,0ffh	; 7b88

; ----------------------------------------------------------------------
; DATOS nombre_7B8B: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7b8b..0x7b91  (6 bytes)
DATA_nombre_7B8B:
	defb 053h,041h,051h,061h,068h,0ffh	; 7b8b

; ----------------------------------------------------------------------
; DATOS nombre_7B91: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7b91..0x7b97  (6 bytes)
DATA_nombre_7B91:
	defb 04fh,04ch,003h,057h,068h,0ffh	; 7b91

; ----------------------------------------------------------------------
; DATOS nombre_7B97: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7b97..0x7b9c  (5 bytes)
DATA_nombre_7B97:
	defb 078h,003h,020h,090h,0ffh	; 7b97

; ----------------------------------------------------------------------
; DATOS nombre_7B9C: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7b9c..0x7ba2  (6 bytes)
DATA_nombre_7B9C:
	defb 044h,050h,0a5h,047h,068h,0ffh	; 7b9c

; ----------------------------------------------------------------------
; DATOS nombre_7BA2: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (7 bytes)
;   0x7ba2..0x7ba9  (7 bytes)
DATA_nombre_7BA2:
	defb 045h,06dh,045h,003h,043h,068h,0ffh	; 7ba2

; ----------------------------------------------------------------------
; DATOS nombre_7BA9: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7ba9..0x7bae  (5 bytes)
DATA_nombre_7BA9:
	defb 054h,047h,003h,068h,0ffh	; 7ba9

; ----------------------------------------------------------------------
; DATOS nombre_7BAE: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7bae..0x7bb3  (5 bytes)
DATA_nombre_7BAE:
	defb 05ch,051h,066h,042h,0ffh	; 7bae

; ----------------------------------------------------------------------
; DATOS nombre_7BB3: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (7 bytes)
;   0x7bb3..0x7bba  (7 bytes)
DATA_nombre_7BB3:
	defb 054h,047h,003h,04ah,061h,068h,0ffh	; 7bb3

; ----------------------------------------------------------------------
; DATOS nombre_7BBA: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7bba..0x7bc0  (6 bytes)
DATA_nombre_7BBA:
	defb 06bh,048h,06ch,046h,047h,0ffh	; 7bba

; ----------------------------------------------------------------------
; DATOS nombre_7BC0: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7bc0..0x7bc6  (6 bytes)
DATA_nombre_7BC0:
	defb 042h,049h,003h,045h,04ch,0ffh	; 7bc0

; ----------------------------------------------------------------------
; DATOS nombre_7BC6: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7bc6..0x7bca  (4 bytes)
DATA_nombre_7BC6:
	defb 04ch,047h,042h,0ffh	; 7bc6

; ----------------------------------------------------------------------
; DATOS nombre_7BCA: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (7 bytes)
;   0x7bca..0x7bd1  (7 bytes)
DATA_nombre_7BCA:
	defb 04ch,045h,003h,067h,051h,047h,0ffh	; 7bca

; ----------------------------------------------------------------------
; DATOS nombre_7BD1: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7bd1..0x7bd7  (6 bytes)
DATA_nombre_7BD1:
	defb 044h,06dh,06ch,042h,068h,0ffh	; 7bd1

; ----------------------------------------------------------------------
; DATOS nombre_7BD7: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7bd7..0x7bdd  (6 bytes)
DATA_nombre_7BD7:
	defb 040h,046h,066h,061h,068h,0ffh	; 7bd7

; ----------------------------------------------------------------------
; DATOS nombre_7BDD: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7bdd..0x7be1  (4 bytes)
DATA_nombre_7BDD:
	defb 04fh,058h,060h,0ffh	; 7bdd

; ----------------------------------------------------------------------
; DATOS nombre_7BE1: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7be1..0x7be6  (5 bytes)
DATA_nombre_7BE1:
	defb 076h,07ch,04ch,068h,0ffh	; 7be1

; ----------------------------------------------------------------------
; DATOS nombre_7BE6: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7be6..0x7beb  (5 bytes)
DATA_nombre_7BE6:
	defb 082h,020h,08bh,004h,0ffh	; 7be6

; ----------------------------------------------------------------------
; DATOS nombre_7BEB: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7beb..0x7bf1  (6 bytes)
DATA_nombre_7BEB:
	defb 082h,003h,0a8h,07ch,077h,0ffh	; 7beb

; ----------------------------------------------------------------------
; DATOS nombre_7BF1: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7bf1..0x7bf6  (5 bytes)
DATA_nombre_7BF1:
	defb 045h,047h,055h,06dh,0ffh	; 7bf1

; ----------------------------------------------------------------------
; DATOS nombre_7BF6: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7bf6..0x7bfa  (4 bytes)
DATA_nombre_7BF6:
	defb 013h,045h,047h,0ffh	; 7bf6

; ----------------------------------------------------------------------
; DATOS nombre_7BFA: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7bfa..0x7bfe  (4 bytes)
DATA_nombre_7BFA:
	defb 014h,045h,047h,0ffh	; 7bfa

; ----------------------------------------------------------------------
; DATOS nombre_7BFE: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7bfe..0x7c02  (4 bytes)
DATA_nombre_7BFE:
	defb 016h,045h,047h,0ffh	; 7bfe

; ----------------------------------------------------------------------
; DATOS nombre_7C02: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7c02..0x7c07  (5 bytes)
DATA_nombre_7C02:
	defb 046h,0a4h,042h,0b2h,0ffh	; 7c02

; ----------------------------------------------------------------------
; DATOS nombre_7C07: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7c07..0x7c0c  (5 bytes)
DATA_nombre_7C07:
	defb 065h,042h,04dh,041h,0ffh	; 7c07

; ----------------------------------------------------------------------
; DATOS nombre_7C0C: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7c0c..0x7c11  (5 bytes)
DATA_nombre_7C0C:
	defb 04fh,05ch,003h,068h,0ffh	; 7c0c

; ----------------------------------------------------------------------
; DATOS nombre_7C11: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7c11..0x7c16  (5 bytes)
DATA_nombre_7C11:
	defb 045h,066h,045h,042h,0ffh	; 7c11

; ----------------------------------------------------------------------
; DATOS nombre_7C16: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7c16..0x7c1c  (6 bytes)
DATA_nombre_7C16:
	defb 052h,040h,052h,04ch,068h,0ffh	; 7c16

; ----------------------------------------------------------------------
; DATOS nombre_7C1C: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7c1c..0x7c21  (5 bytes)
DATA_nombre_7C1C:
	defb 058h,04eh,003h,047h,0ffh	; 7c1c

; ----------------------------------------------------------------------
; DATOS nombre_7C21: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7c21..0x7c26  (5 bytes)
DATA_nombre_7C21:
	defb 055h,048h,003h,068h,0ffh	; 7c21

; ----------------------------------------------------------------------
; DATOS nombre_7C26: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7c26..0x7c2b  (5 bytes)
DATA_nombre_7C26:
	defb 04fh,04fh,045h,042h,0ffh	; 7c26

; ----------------------------------------------------------------------
; DATOS nombre_7C2B: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7c2b..0x7c30  (5 bytes)
DATA_nombre_7C2B:
	defb 033h,032h,021h,02dh,0ffh	; 7c2b

; ----------------------------------------------------------------------
; DATOS nombre_7C30: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7c30..0x7c36  (6 bytes)
DATA_nombre_7C30:
	defb 04fh,003h,046h,051h,047h,0ffh	; 7c30

; ----------------------------------------------------------------------
; DATOS nombre_7C36: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7c36..0x7c3c  (6 bytes)
DATA_nombre_7C36:
	defb 046h,046h,04fh,003h,04ch,0ffh	; 7c36

; ----------------------------------------------------------------------
; DATOS nombre_7C3C: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7c3c..0x7c41  (5 bytes)
DATA_nombre_7C3C:
	defb 05fh,045h,003h,047h,0ffh	; 7c3c

; ----------------------------------------------------------------------
; DATOS nombre_7C41: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (3 bytes)
;   0x7c41..0x7c44  (3 bytes)
DATA_nombre_7C41:
	defb 057h,068h,0ffh	; 7c41

; ----------------------------------------------------------------------
; DATOS nombre_7C44: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (4 bytes)
;   0x7c44..0x7c48  (4 bytes)
DATA_nombre_7C44:
	defb 059h,04ah,060h,0ffh	; 7c44

; ----------------------------------------------------------------------
; DATOS nombre_7C48: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (3 bytes)
;   0x7c48..0x7c4b  (3 bytes)
DATA_nombre_7C48:
	defb 065h,060h,0ffh	; 7c48

; ----------------------------------------------------------------------
; DATOS nombre_7C4B: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7c4b..0x7c51  (6 bytes)
DATA_nombre_7C4B:
	defb 059h,048h,003h,05eh,04ch,0ffh	; 7c4b

; ----------------------------------------------------------------------
; DATOS nombre_7C51: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (5 bytes)
;   0x7c51..0x7c56  (5 bytes)
DATA_nombre_7C51:
	defb 052h,06ch,053h,068h,0ffh	; 7c51

; ----------------------------------------------------------------------
; DATOS nombre_7C56: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7c56..0x7c5c  (6 bytes)
DATA_nombre_7C56:
	defb 04fh,003h,045h,04dh,068h,0ffh	; 7c56

; ----------------------------------------------------------------------
; DATOS nombre_7C5C: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (7 bytes)
;   0x7c5c..0x7c63  (7 bytes)
DATA_nombre_7C5C:
	defb 04fh,003h,046h,065h,04dh,068h,0ffh	; 7c5c

; ----------------------------------------------------------------------
; DATOS nombre_7C63: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (6 bytes)
;   0x7c63..0x7c69  (6 bytes)
DATA_nombre_7C63:
	defb 0f2h,04fh,003h,058h,05fh,0ffh	; 7c63

; ----------------------------------------------------------------------
; DATOS nombre_7C69: nombre de objeto: caracteres hasta 0xFF; 3 y 4 son las
;   marcas que van encima del caracter anterior (p00:59DD); lo leen p00:5700
;   (8 bytes)
;   0x7c69..0x7c71  (8 bytes)
DATA_nombre_7C69:
	defb 089h,004h,07ch,09bh,020h,083h,003h,0ffh	; 7c69  ..|. ...

; ----------------------------------------------------------------------
; DATOS animaciones_e34c: 10 palabras: lo que p04:6DEC pone en 0xE34C segun
;   0xE351; lo leen p04:6DEC (20 bytes)
;   0x7c71..0x7c85  (20 bytes)
DATA_animaciones_e34c:
	defb 099h,07ch	; 7c71
	defb 09dh,07ch	; 7c73
	defb 085h,07ch	; 7c75
	defb 095h,07ch	; 7c77
	defb 08dh,07ch	; 7c79
	defb 091h,07ch	; 7c7b
	defb 0a1h,07ch	; 7c7d
	defb 089h,07ch	; 7c7f
	defb 0a5h,07ch	; 7c81
	defb 0b2h,07ch	; 7c83

; ----------------------------------------------------------------------
; DATOS animaciones: registros de 4 bytes [graficos lo][hi][..][..] que
;   recorre p04:65F0 desde 0xE34C; los graficos, con su direccion de VRAM
;   (L_59FB), estan en el banco 5; lo leen p04:6DEC (49 bytes)
;   0x7c85..0x7cb6  (49 bytes)
DATA_animaciones:
	defb 0a9h,092h,000h,000h	; 7c85
	defb 0bdh,094h,000h,002h	; 7c89
	defb 0bdh,096h,000h,004h	; 7c8d
	defb 0bdh,098h,000h,006h	; 7c91
	defb 0a9h,08ah,000h,008h	; 7c95
	defb 0a9h,08ch,000h,00ah	; 7c99
	defb 0a9h,08eh,000h,00ch	; 7c9d
	defb 0a9h,090h,000h,00eh	; 7ca1
	defb 006h,02ch,0a5h,028h	; 7ca5
	defb 070h,0a5h,006h,04eh	; 7ca9
	defb 0a5h,044h,092h,0a5h	; 7cad
	defb 000h,0bdh,09ah,02ch	; 7cb1
	defb 09fh	; 7cb5

; ----------------------------------------------------------------------
; DATOS graficos_7CB6: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0
;   acaba; se solapan 2 bloques: (graficos_7CB8 7CB8-7FFA); lo leen p04:6E2F,
;   p00:4D90 (836 bytes)
;   0x7cb6..0x7ffa  (836 bytes)
DATA_graficos_7CB6:
	defb 000h,028h,008h,000h,083h,007h,00fh,00fh,003h,01fh,002h,03fh,0a3h,0f0h,0e0h,0c0h	; 7cb6  .(.........?....
	defb 0e0h,080h,0c0h,080h,000h,01fh,03fh,03fh,07fh,07fh,0feh,0feh,0fch,0f8h,0fch,0fch	; 7cc6  ......??........
	defb 0feh,0feh,07fh,07fh,03fh,00fh,007h,003h,007h,001h,003h,001h,000h,0e0h,0f0h,0f0h	; 7cd6  ....?...........
	defb 003h,0f8h,002h,0fch,00dh,000h,002h,001h,081h,003h,003h,03fh,005h,0bfh,0a0h,080h	; 7ce6  ...........?....
	defb 000h,080h,0feh,0feh,0f6h,0beh,0beh,0fch,0f8h,0f1h,0f3h,0f3h,0f7h,0f2h,0f5h,03fh	; 7cf6  ...............?
	defb 01fh,08fh,0cfh,0cfh,0efh,04fh,0afh,001h,000h,001h,07fh,07fh,06fh,07dh,07dh,003h	; 7d06  .....O......o}}.
	defb 0fch,005h,0fdh,005h,000h,002h,080h,081h,0c0h,008h,003h,002h,09fh,0aeh,0dfh,0deh	; 7d16  ................
	defb 0cfh,0cdh,0c5h,0c0h,0feh,0b7h,0b7h,09bh,08dh,022h,070h,081h,076h,077h,073h,0bbh	; 7d26  ........."p.vws.
	defb 099h,045h,019h,00fh,06eh,0eeh,0ceh,0ddh,099h,0a2h,098h,0f0h,07fh,0edh,0edh,0d9h	; 7d36  .E..n...........
	defb 0b1h,044h,00eh,081h,0f9h,0f9h,0fbh,07bh,0f3h,0b3h,0a3h,003h,008h,0c0h,002h,003h	; 7d46  .D.....{........
	defb 003h,001h,003h,000h,084h,0e2h,0e0h,0e1h,0f1h,003h,0f9h,086h,07ch,048h,069h,07ch	; 7d56  ............|Hi|
	defb 07fh,07fh,003h,0bfh,084h,0afh,03fh,07fh,07fh,004h,0ffh,08dh,0f5h,0fch,0feh,0feh	; 7d66  ......?.........
	defb 040h,040h,0c0h,0bfh,012h,096h,03eh,0feh,0feh,003h,0fdh,084h,047h,007h,087h,08fh	; 7d76  @@....>.....G...
	defb 003h,09fh,083h,03eh,0c0h,0c0h,003h,080h,00bh,000h,09ah,07ch,0bch,05eh,067h,070h	; 7d86  ...>.......|.^gp
	defb 03ch,03eh,01fh,0dfh,05fh,01fh,00fh,00fh,007h,007h,003h,0ffh,0feh,0ffh,0feh,0feh	; 7d96  <>.._...........
	defb 0f9h,0fch,0feh,03fh,03fh,003h,07fh,093h,09fh,03fh,07fh,0fbh,0fah,0f8h,0f0h,0f0h	; 7da6  ...??....?......
	defb 0e0h,0e0h,0c0h,03eh,03dh,07ah,0e6h,00eh,03ch,07ch,0f8h,010h,000h,0aeh,00fh,007h	; 7db6  ...>=z..<|......
	defb 001h,002h,001h,001h,000h,000h,001h,0e0h,0feh,07ch,080h,0c0h,0f0h,03eh,0feh,0ffh	; 7dc6  .........|...>..
	defb 07fh,03fh,00fh,003h,000h,000h,07fh,0ffh,0feh,0fch,0f0h,0c2h,006h,006h,080h,007h	; 7dd6  .?..............
	defb 07fh,03eh,001h,003h,00fh,07ch,0f0h,0e0h,080h,040h,080h,080h,01bh,000h,09fh,064h	; 7de6  .>...|...@.....d
	defb 048h,00ch,050h,003h,00fh,03fh,040h,000h,040h,040h,0e3h,07fh,07fh,0bfh,00eh,01eh	; 7df6  H.P..?@.@@......
	defb 03eh,00fh,07fh,0feh,0feh,0fdh,000h,026h,012h,030h,00ah,0c0h,0f0h,0fch,012h,000h	; 7e06  >......&.0......
	defb 090h,006h,01ch,03eh,077h,06fh,0ceh,001h,007h,01fh,07fh,03fh,00fh,0c0h,0f8h,007h	; 7e16  ...>wo.....?....
	defb 03fh,003h,0ffh,095h,0feh,0ffh,01fh,0dfh,0e4h,0f9h,0f8h,0fch,08fh,0fbh,0fch,0fbh	; 7e26  ?...............
	defb 027h,01fh,01fh,03fh,0f1h,0dfh,03fh,0e0h,0fch,003h,0ffh,0c0h,07fh,0ffh,0f8h,080h	; 7e36  '..?..?.........
	defb 0e0h,0f8h,0feh,0fch,0f0h,003h,01fh,000h,000h,060h,038h,07ch,0eeh,0f6h,073h,000h	; 7e46  .........`8|..s.
	defb 000h,001h,003h,007h,00fh,00fh,01fh,03fh,0e8h,080h,000h,000h,001h,000h,001h,080h	; 7e56  .......?........
	defb 01fh,07fh,0cbh,03dh,07fh,04bh,03eh,0f7h,023h,0d7h,0efh,0e4h,0cbh,09fh,0b8h,03fh	; 7e66  ...=.K>.#......?
	defb 085h,0e0h,0b0h,048h,080h,0c0h,0a0h,080h,0f8h,0feh,02fh,003h,007h,000h,002h,080h	; 7e76  ...H....../.....
	defb 002h,0c0h,008h,000h,004h,01fh,089h,00fh,02fh,037h,07fh,002h,000h,001h,000h,002h	; 7e86  ......../7......
	defb 003h,000h,08ch,05fh,0ffh,07ah,086h,002h,0c2h,080h,00ch,0ffh,03eh,06bh,0ffh,003h	; 7e96  ..._.z......>k..
	defb 03fh,088h,07fh,040h,010h,000h,040h,000h,000h,07fh,008h,000h,006h,0e0h,083h,0c0h	; 7ea6  ?..@..@.........
	defb 0a0h,0f0h,008h,000h,094h,07fh,012h,026h,060h,004h,022h,0fbh,07fh,0ffh,0ffh,076h	; 7eb6  .......&`."....v
	defb 0feh,0eeh,0cch,0dch,0dch,01eh,03eh,03eh,07eh,004h,07fh,082h,07eh,07ch,003h,079h	; 7ec6  ......>>~...~|.y
	defb 094h,03ch,01eh,080h,07fh,0fbh,0f7h,0e7h,0eeh,0eeh,076h,003h,010h,084h,060h,07fh	; 7ed6  .<........v...`.
	defb 0f7h,0cah,077h,013h,0f0h,004h,0f8h,083h,0d0h,0b8h,070h,008h,000h,002h,07bh,0b3h	; 7ee6  ..w.......p...{.
	defb 039h,01ch,00ch,002h,008h,00ch,0ceh,0e7h,0e0h,0f8h,000h,038h,060h,048h,07fh,03eh	; 7ef6  9..........8`H.>
	defb 03ch,01bh,07fh,03fh,01fh,09fh,084h,01fh,0e0h,080h,018h,0b9h,0fch,0e8h,0c8h,07ch	; 7f06  <..?...........|
	defb 00eh,09eh,01fh,03fh,03fh,0ffh,0cah,010h,006h,00fh,019h,011h,037h,0a7h,0f0h,0a0h	; 7f16  ...??.......7...
	defb 0e0h,020h,050h,003h,070h,008h,000h,002h,006h,097h,001h,000h,001h,001h,000h,000h	; 7f26  . P.p...........
	defb 0d8h,06dh,078h,07fh,03fh,0bfh,0bfh,09fh,01fh,03fh,0dfh,01fh,0bfh,07fh,07fh,00fh	; 7f36  .mx.?....?......
	defb 081h,007h,0ffh,098h,0e0h,0c0h,080h,080h,0c0h,0c0h,0e0h,0e0h,0abh,0a7h,0f7h,0f6h	; 7f46  ................
	defb 0e6h,0feh,0fch,0d8h,038h,038h,078h,058h,058h,030h,070h,060h,010h,000h,099h,05fh	; 7f56  ....88xXX0p`..._
	defb 02fh,00fh,00fh,007h,007h,003h,003h,093h,0e7h,0f7h,0efh,0f0h,0e7h,0f0h,0f8h,0ffh	; 7f66  /...............
	defb 0f7h,0f7h,003h,0e7h,08fh,01fh,07fh,0e0h,004h,0f0h,08eh,0e0h,0c0h,080h,0c0h,0c0h	; 7f76  ................
	defb 0d0h,090h,090h,0b8h,038h,03ch,0e0h,040h,080h,015h,000h,002h,001h,006h,000h,002h	; 7f86  ....8<.@........
	defb 0fch,0a2h,0feh,07fh,03fh,01fh,007h,001h,0cfh,01fh,07fh,03eh,0f8h,0e0h,0feh,0f0h	; 7f96  ....?......>....
	defb 0feh,0fch,0f8h,0f0h,0c1h,081h,002h,006h,03dh,039h,079h,073h,073h,067h,0cfh,08fh	; 7fa6  ........=9yssg..
	defb 000h,000h,080h,080h,004h,0c0h,005h,000h,083h,0f8h,0ffh,00bh,003h,000h,095h,003h	; 7fb6  ................
	defb 00eh,03ch,034h,078h,000h,007h,03eh,07eh,07ch,0fah,0f0h,0f4h,040h,000h,002h,002h	; 7fc6  .<4x..>~|...@...
	defb 006h,007h,007h,00fh,005h,000h,08fh,003h,000h,080h,00ch,01ch,038h,070h,0c0h,003h	; 7fd6  ............8p..
	defb 00fh,013h,01fh,01fh,03fh,07fh,004h,0ffh,003h,0c0h,003h,080h,002h,000h,006h,0ffh	; 7fe6  ....?...........
	defb 082h,0ebh,03fh,000h	; 7ff6

; ----------------------------------------------------------------------
; DATOS graficos_7FFA: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba
;   (sigue en el banco 5, en 0x8000); se solapan 2 bloques: (graficos_7FFC
;   7FFC-8000); lo leen p04:6E35, p00:4D75 (6 bytes)
;   0x7ffa..0x8000  (6 bytes)
DATA_graficos_7FFA:
	defb 000h,02ch,008h,000h,085h,003h	; 7ffa
