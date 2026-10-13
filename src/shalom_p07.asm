; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 07 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ======================================================================
; CODIGO 0x8000..0x8010  (16 bytes)
; ======================================================================


L_8000:
	ld a,022h		;8000
	jp 0415bh		;8002
L_8005:
	ld a,037h		;8005
	jp 0415bh		;8007
L_800A:
	ld a,(0e369h)		;800a
	call 040abh		;800d

; ----------------------------------------------------------------------
; DATOS saltos_8010: tabla de 4 palabras del despachador (call 0x408D en
;   0x800D); lo leen L_40AB (8 bytes)
;   0x8010..0x8018  (8 bytes)
DATA_saltos_8010:
	defb 018h,080h	; 8010
	defb 019h,080h	; 8012
	defb 03fh,080h	; 8014
	defb 062h,080h	; 8016

; ======================================================================
; CODIGO 0x8018..0x8037  (31 bytes)
; ======================================================================


L_8018:
	ret			;8018
L_8019:
	ld hl,0e383h		;8019
	inc (hl)			;801c
	ld a,(hl)			;801d
	and 00fh		;801e
	ret nz			;8020
	ld a,(hl)			;8021
	and 030h		;8022
	rra			;8024
	rra			;8025
	rra			;8026
	rra			;8027
	ld de,08037h		;8028
	call 043a4h		;802b
	ld hl,020a0h		;802e
	ld bc,00040h		;8031
	jp 05945h		;8034

; ----------------------------------------------------------------------
; DATOS resto_8037: lo apuntan con el banco puesto p07:8028 (0x8037); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p07:8028 (8 bytes)
;   0x8037..0x803f  (8 bytes)
DATA_resto_8037:
	defb 09ah,080h,0bah,080h,0dah,080h,0fah,080h	; 8037  ........

; ======================================================================
; CODIGO 0x803f..0x805e  (31 bytes)
; ======================================================================


L_803F:
	ld hl,0e383h		;803f
	inc (hl)			;8042
	ld a,(hl)			;8043
	and 01fh		;8044
	ret nz			;8046
	ld a,(hl)			;8047
	and 020h		;8048
	rra			;804a
	rra			;804b
	rra			;804c
	rra			;804d
	rra			;804e
	ld de,0805eh		;804f
	call 043a4h		;8052
	ld hl,021e0h		;8055
	ld bc,00020h		;8058
	jp 05945h		;805b

; ----------------------------------------------------------------------
; DATOS resto_805E: lo apuntan con el banco puesto p07:804F (0x805E); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p07:804F (4 bytes)
;   0x805e..0x8062  (4 bytes)
DATA_resto_805E:
	defb 03ah,081h,05ah,081h	; 805e

; ======================================================================
; CODIGO 0x8062..0x8092  (48 bytes)
; ======================================================================


L_8062:
	ld hl,0e383h		;8062
	inc (hl)			;8065
	ld a,(hl)			;8066
	and 01fh		;8067
	ret nz			;8069
	ld a,(hl)			;806a
	and 020h		;806b
	rra			;806d
	rra			;806e
	rra			;806f
	rra			;8070
	rra			;8071
	push af			;8072
	ld de,08092h		;8073
	call 043a4h		;8076
	ld hl,02200h		;8079
	ld bc,00040h		;807c
	call 05945h		;807f
	pop af			;8082
	ld de,08096h		;8083
	call 043a4h		;8086
	ld hl,00200h		;8089
	ld bc,00040h		;808c
	jp 05945h		;808f

; ----------------------------------------------------------------------
; DATOS resto_8092: lo apuntan con el banco puesto p07:8073 (0x8092), p07:8083
;   (0x8096); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p07:8073, p07:8083 (488 bytes)
;   0x8092..0x827a  (488 bytes)
DATA_resto_8092:
	defb 07ah,081h,0bah,081h,0fah,081h,03ah,082h,0f5h,0afh,0fbh,0ech,06fh,0feh,0f7h,0bdh	; 8092  z.....:.....o...
	defb 0ebh,09fh,0fah,0dbh,0b7h,0deh,073h,0ddh,0ebh,09fh,0fah,0dbh,0b7h,0deh,073h,0ddh	; 80a2  ......s.......s.
	defb 0f5h,0afh,0fbh,0ech,06fh,0feh,0f7h,0bdh,0ebh,09fh,0fah,0dbh,0b7h,0deh,073h,0ddh	; 80b2  ....o.........s.
	defb 0fbh,0efh,07fh,0f6h,0bfh,0ffh,0efh,0bdh,0fbh,0efh,07fh,0f6h,0bfh,0ffh,0efh,0bdh	; 80c2  ................
	defb 0ebh,09fh,0fah,0dbh,0b7h,0deh,073h,0ddh,0fbh,0efh,07fh,0f6h,0bfh,0ffh,0efh,0bdh	; 80d2  ......s.........
	defb 0bbh,0ffh,0d6h,06fh,0fah,0dfh,0bfh,0ebh,0bbh,0ffh,0d6h,06fh,0fah,0dfh,0bfh,0ebh	; 80e2  ...o.......o....
	defb 0fbh,0efh,07fh,0f6h,0bfh,0ffh,0efh,0bdh,0bbh,0ffh,0d6h,06fh,0fah,0dfh,0bfh,0ebh	; 80f2  ...........o....
	defb 0f5h,0afh,0fbh,0ech,06fh,0feh,0f7h,0bdh,0f5h,0afh,0fbh,0ech,06fh,0feh,0f7h,0bdh	; 8102  ....o.......o...
	defb 0bbh,0ffh,0d6h,06fh,0fah,0dfh,0bfh,0ebh,0f5h,0afh,0fbh,0ech,06fh,0feh,0f7h,0bdh	; 8112  ...o........o...
	defb 0ebh,09fh,0fah,0dbh,0b7h,0deh,073h,0ddh,0ebh,09fh,0fah,0dbh,0b7h,0deh,073h,0ddh	; 8122  ......s.......s.
	defb 0f5h,0afh,0fbh,0ech,06fh,0feh,0f7h,0bdh,000h,013h,017h,02fh,06fh,063h,074h,073h	; 8132  ....o....../octs
	defb 080h,0e4h,0f4h,0fah,0fbh,0f3h,0e7h,0ebh,039h,03fh,03fh,01fh,02fh,021h,016h,007h	; 8142  ........9??./!..
	defb 077h,0feh,0feh,0fch,0fah,0c2h,034h,070h,000h,009h,020h,001h,007h,00fh,008h,037h	; 8152  w.....4p.. ....7
	defb 000h,020h,004h,080h,0e0h,0f0h,0c8h,0f6h,07fh,05fh,03fh,01fh,02fh,021h,016h,007h	; 8162  . ......._?./!..
	defb 0ffh,0fdh,0feh,0fch,0fah,0c2h,034h,070h,000h,03eh,070h,068h,058h,050h,040h,020h	; 8172  ......4p.>phXP@
	defb 000h,003h,001h,014h,036h,0bch,078h,060h,032h,01dh,019h,01ch,01fh,00fh,00eh,003h	; 8182  ....6.x`2.......
	defb 0f8h,0ach,0d4h,0e8h,0fch,054h,0ach,0f8h,000h,0c0h,080h,028h,06ch,03dh,01eh,006h	; 8192  .....T.....(l=..
	defb 000h,07ch,00eh,016h,01ah,00ah,002h,004h,01fh,035h,02bh,017h,03fh,02ah,035h,01fh	; 81a2  .|.......5+.?*5.
	defb 04ch,0b8h,098h,038h,0f8h,0f0h,070h,0c0h,000h,03eh,070h,068h,058h,050h,050h,040h	; 81b2  L..8..p..>phXPP@
	defb 000h,003h,001h,014h,036h,0bch,078h,060h,040h,001h,001h,060h,031h,07fh,0ceh,003h	; 81c2  ....6.x`@..`1...
	defb 0f8h,0ach,0d4h,0e8h,0fch,054h,0ach,0f8h,000h,0c0h,080h,028h,06ch,03dh,01eh,006h	; 81d2  .....T.....(l=..
	defb 000h,07ch,00eh,016h,01ah,00ah,00ah,002h,01fh,035h,02bh,017h,03fh,02ah,035h,01fh	; 81e2  .|.......5+.?*5.
	defb 002h,080h,080h,006h,08ch,0feh,073h,0c0h,070h,070h,0f0h,0e0h,070h,0f0h,0f0h,080h	; 81f2  ......s.pp..p...
	defb 070h,070h,0e0h,0a0h,0f0h,0b0h,0a0h,090h,080h,090h,080h,080h,080h,080h,080h,060h	; 8202  pp.............`
	defb 0b0h,0f0h,0a0h,0a0h,090h,090h,080h,060h,070h,070h,0e0h,0a0h,0f0h,0b0h,0a0h,090h	; 8212  .......`pp......
	defb 070h,070h,0f0h,0e0h,070h,0f0h,0f0h,080h,0b0h,0f0h,0a0h,0a0h,090h,090h,080h,060h	; 8222  pp..p..........`
	defb 080h,090h,080h,080h,080h,080h,080h,060h,070h,070h,0f0h,0e0h,070h,0f0h,0f0h,070h	; 8232  .......`pp..p..p
	defb 070h,070h,0e0h,0a0h,0f0h,0b0h,0a0h,090h,0e0h,0a0h,0a0h,080h,090h,080h,080h,060h	; 8242  pp.............`
	defb 0b0h,0f0h,0a0h,0a0h,090h,090h,080h,060h,070h,070h,0e0h,0a0h,0f0h,0b0h,0a0h,090h	; 8252  .......`pp......
	defb 070h,070h,0f0h,0e0h,070h,0f0h,0f0h,070h,0b0h,0f0h,0a0h,0a0h,090h,090h,080h,060h	; 8262  pp..p..p.......`
	defb 0e0h,0a0h,0a0h,080h,090h,080h,080h,060h	; 8272  .......`

; ======================================================================
; CODIGO 0x827a..0x83b4  (314 bytes)
; ======================================================================


L_827A:
	ld hl,0e400h		;827a
	ld de,0e401h		;827d
	ld bc,003ffh		;8280
	ld (hl),000h		;8283
	ldir		;8285
	ld a,(0eb5dh)		;8287
	rra			;828a
	jr nc,L_82A4		;828b
	ld hl,(0eb40h)		;828d
	ld a,h			;8290
	or a			;8291
	jr nz,L_82A4		;8292
	ld a,l			;8294
	ld hl,09032h		;8295
	cp 0b0h		;8298
	jr z,L_82B0		;829a
	ld hl,0904ch		;829c
	cp 0d0h		;829f
	jr z,L_82B0		;82a1
	ret			;82a3
L_82A4:
	ld hl,(0eb40h)		;82a4
	add hl,hl			;82a7
	ld de,08bc2h		;82a8
	add hl,de			;82ab
	ld e,(hl)			;82ac
	inc hl			;82ad
	ld d,(hl)			;82ae
	ex de,hl			;82af
L_82B0:
	ld a,(hl)			;82b0
	or a			;82b1
	jr z,L_82D0		;82b2
	ld b,a			;82b4
	inc hl			;82b5
L_82B6:
	push bc			;82b6
	ld c,(hl)			;82b7
	inc hl			;82b8
	ld a,(hl)			;82b9
	and 07fh		;82ba
	ld b,a			;82bc
	ld a,(hl)			;82bd
	and 080h		;82be
	rlca			;82c0
	inc hl			;82c1
	ld e,(hl)			;82c2
	inc hl			;82c3
	ld d,(hl)			;82c4
	inc hl			;82c5
	push hl			;82c6
	ld l,(hl)			;82c7
	call L_82FE		;82c8
	pop hl			;82cb
	inc hl			;82cc
	pop bc			;82cd
	djnz L_82B6		;82ce
L_82D0:
	ld a,(0e3d9h)		;82d0
	or a			;82d3
	ret nz			;82d4
	ld a,(0eb5ah)		;82d5
	bit 1,a		;82d8
	ret z			;82da
	ld hl,(0eb40h)		;82db
	ld de,(0eb69h)		;82de
	ld a,d			;82e2
	and 001h		;82e3
	ld d,a			;82e5
	sbc hl,de		;82e6
	ret nz			;82e8
	ld a,(0eb7ah)		;82e9
	ld d,a			;82ec
	and 0f0h		;82ed
	ld e,a			;82ef
	sla d		;82f0
	sla d		;82f2
	sla d		;82f4
	sla d		;82f6
	ld bc,000c8h		;82f8
	ld l,002h		;82fb
	xor a			;82fd
L_82FE:
	ld (0e8e0h),bc		;82fe
	ld (0e8e2h),de		;8302
	ld (0e8e4h),a		;8306
	ld a,l			;8309
	ld (0e8e5h),a		;830a
	ld hl,0e400h		;830d
	ld b,008h		;8310
	xor a			;8312
	ld de,00080h		;8313
L_8316:
	cp (hl)			;8316
	jr z,L_831D		;8317
	add hl,de			;8319
	djnz L_8316		;831a
	ret			;831c
L_831D:
	push hl			;831d
	ld bc,(0e8e0h)		;831e
	ld (hl),c			;8322
	inc l			;8323
	ld (hl),b			;8324
	xor a			;8325
	inc l			;8326
	ld (hl),a			;8327
	inc l			;8328
	ld de,(0e8e2h)		;8329
	ld (hl),e			;832d
	inc l			;832e
	ld (hl),d			;832f
	inc l			;8330
	ld (hl),a			;8331
	inc l			;8332
	ld (hl),a			;8333
	inc l			;8334
	ld (hl),a			;8335
	inc l			;8336
	ld (hl),a			;8337
	inc l			;8338
	ld (hl),a			;8339
	inc l			;833a
	ld (hl),a			;833b
	inc l			;833c
	ld a,r		;833d
	and 00ch		;833f
	jr nz,L_8345		;8341
	ld a,004h		;8343
L_8345:
	rra			;8345
	rra			;8346
	ld (hl),a			;8347
	inc l			;8348
	xor a			;8349
	ld (hl),a			;834a
	inc l			;834b
	ld (hl),a			;834c
	inc (hl)			;834d
	inc l			;834e
	ld (0e8e6h),bc		;834f
	exx			;8353
	ld hl,(0e8e6h)		;8354
	dec hl			;8357
	add hl,hl			;8358
	ld de,083b4h		;8359
	add hl,de			;835c
	ld (0e8e6h),hl		;835d
	exx			;8360
	ld de,(0e8e6h)		;8361
	call L_83A4		;8365
	ld a,(0e8e4h)		;8368
	ld (hl),a			;836b
	ld a,005h		;836c
	call 040a1h		;836e
	ld a,(de)			;8371
	exx			;8372
	ld l,a			;8373
	ld h,000h		;8374
	add hl,hl			;8376
	add hl,hl			;8377
	ld de,0a063h		;8378
	add hl,de			;837b
	ld (0e8e6h),hl		;837c
	exx			;837f
	ld de,(0e8e6h)		;8380
	ld bc,00004h		;8384
	push hl			;8387
	ex de,hl			;8388
	ldir		;8389
	inc de			;838b
	pop hl			;838c
	xor a			;838d
	ld b,003h		;838e
	cp (hl)			;8390
	jr z,L_839C		;8391
	inc hl			;8393
L_8394:
	cp (hl)			;8394
	jr z,L_839A		;8395
	inc hl			;8397
	djnz L_8394		;8398
L_839A:
	ld (hl),0ffh		;839a
L_839C:
	ld a,(0e8e5h)		;839c
	ld (de),a			;839f
	pop hl			;83a0
	jp L_881D		;83a1
L_83A4:
	ld a,(de)			;83a4
	rra			;83a5
	rra			;83a6
	rra			;83a7
	rra			;83a8
	and 00fh		;83a9
	ld (hl),a			;83ab
	ld a,(de)			;83ac
	and 00fh		;83ad
	inc l			;83af
	ld (hl),a			;83b0
	inc de			;83b1
	inc l			;83b2
	ret			;83b3

; ----------------------------------------------------------------------
; DATOS resto_83B4: lo apuntan con el banco puesto p07:8359 (0x83B4); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p07:8359 (680 bytes)
;   0x83b4..0x865c  (680 bytes)
DATA_resto_83B4:
	defb 01bh,001h,01bh,002h,01fh,003h,017h,004h,01fh,005h,000h,000h,017h,007h,04bh,008h	; 83b4  ..............K.
	defb 01bh,009h,017h,00ah,017h,00bh,017h,00ch,017h,00dh,017h,00eh,017h,00fh,000h,010h	; 83c4  ................
	defb 000h,000h,01bh,012h,01bh,012h,000h,013h,01fh,013h,06fh,014h,01bh,015h,01fh,013h	; 83d4  ..........o.....
	defb 01fh,016h,01fh,017h,01bh,018h,01fh,019h,01fh,01ah,01bh,01bh,06fh,01ch,010h,000h	; 83e4  ............o...
	defb 010h,000h,000h,000h,010h,000h,000h,000h,000h,006h,000h,011h,000h,01dh,000h,01eh	; 83f4  ................
	defb 000h,01fh,000h,020h,000h,021h,000h,000h,01fh,022h,01fh,023h,01bh,024h,01fh,025h	; 8404  ... .!...".#.$.%
	defb 000h,000h,06fh,055h,06fh,026h,0f0h,027h,015h,000h,0b1h,000h,017h,028h,000h,000h	; 8414  ..oUo&.'.....(..
	defb 017h,029h,01bh,02ah,017h,02bh,017h,02ch,017h,028h,000h,000h,000h,000h,01fh,000h	; 8424  .).*.+.,.(......
	defb 01fh,000h,01fh,000h,000h,000h,014h,02dh,01fh,000h,000h,000h,01bh,031h,01fh,02eh	; 8434  .......-.....1..
	defb 01bh,02fh,01bh,030h,01bh,032h,01bh,033h,019h,000h,000h,036h,01fh,034h,01bh,035h	; 8444  ./.0.2.3...6.4.5
	defb 0b1h,035h,000h,037h,0b1h,035h,0b6h,036h,06bh,038h,010h,000h,010h,000h,010h,000h	; 8454  .5.7.5.6k8......
	defb 01fh,039h,01fh,039h,01bh,035h,01bh,035h,01bh,035h,01bh,035h,01bh,035h,01fh,03ah	; 8464  .9.9.5.5.5.5.5.:
	defb 06fh,03bh,01bh,03ch,01bh,03dh,0b1h,000h,010h,000h,010h,000h,010h,000h,0b1h,000h	; 8474  o..<.=..........
	defb 0b1h,000h,0b1h,000h,01fh,03eh,01ah,03fh,010h,000h,010h,000h,0f0h,000h,04fh,043h	; 8484  .....>.?......OC
	defb 04fh,04bh,0f0h,000h,017h,010h,0d1h,076h,01fh,040h,01bh,041h,01bh,042h,04fh,04ch	; 8494  OK.....v.@.A.BOL
	defb 04fh,044h,04fh,045h,04fh,046h,04fh,047h,04fh,048h,04fh,049h,04fh,04ah,010h,000h	; 84a4  ODOEOFOGOHOIOJ..
	defb 000h,000h,000h,000h,0b6h,04dh,01fh,04eh,01fh,04fh,01fh,050h,01fh,051h,01fh,052h	; 84b4  .....M.N.O.P.Q.R
	defb 016h,053h,016h,053h,016h,053h,016h,053h,016h,053h,016h,053h,016h,053h,016h,053h	; 84c4  .S.S.S.S.S.S.S.S
	defb 016h,053h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h	; 84d4  .S..............
	defb 010h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 84e4  ................
	defb 000h,000h,01bh,054h,000h,054h,0ffh,0ffh,01fh,000h,010h,000h,01ah,000h,01bh,056h	; 84f4  ...T.T.........V
	defb 01bh,057h,000h,000h,010h,000h,010h,000h,01bh,058h,01ah,000h,019h,000h,019h,000h	; 8504  .W.......X......
	defb 019h,000h,019h,000h,019h,000h,019h,000h,019h,000h,019h,000h,019h,000h,019h,000h	; 8514  ................
	defb 019h,000h,019h,000h,019h,000h,01fh,059h,000h,000h,01bh,05ah,06fh,05bh,01fh,05ch	; 8524  .......Y...Zo[.\
	defb 01bh,05dh,01fh,05eh,01bh,05fh,01fh,060h,010h,000h,010h,000h,017h,027h,01ah,000h	; 8534  .].^._.`.....'..
	defb 01fh,000h,01fh,000h,0f4h,076h,01fh,000h,0efh,000h,0efh,000h,01fh,000h,01bh,061h	; 8544  .....v.........a
	defb 01bh,061h,04fh,061h,01fh,062h,06fh,063h,01fh,064h,01fh,065h,01fh,066h,01fh,069h	; 8554  .aOa.boc.d.e.f.i
	defb 01fh,000h,01fh,000h,01bh,067h,01fh,068h,0f4h,076h,01fh,000h,01bh,06ah,04fh,076h	; 8564  .....g.h.v...jOv
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,01bh,06bh	; 8574  ...............k
	defb 01bh,06ch,01bh,06dh,01bh,06eh,01fh,06fh,01bh,070h,01bh,071h,01bh,072h,01fh,073h	; 8584  .l.m.n.o.p.q.r.s
	defb 01bh,074h,01bh,075h,019h,000h,017h,00fh,017h,00eh,01fh,010h,01bh,000h,0f1h,076h	; 8594  .t.u...........v
	defb 017h,004h,017h,007h,01bh,077h,01fh,078h,01fh,079h,01bh,07ah,019h,000h,010h,000h	; 85a4  .....w.x.y.z....
	defb 010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h	; 85b4  ................
	defb 010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h	; 85c4  ................
	defb 010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h,010h,000h	; 85d4  ................
	defb 010h,000h,010h,000h,000h,000h,01fh,07bh,01bh,07ch,019h,000h,01bh,07dh,019h,000h	; 85e4  .......{.|...}..
	defb 019h,000h,01bh,07eh,01bh,07fh,01fh,080h,01fh,081h,01fh,082h,01fh,083h,01bh,084h	; 85f4  ...~............
	defb 019h,000h,019h,000h,019h,000h,01fh,085h,01bh,086h,01bh,087h,01fh,088h,01fh,089h	; 8604  ................
	defb 01bh,08ah,01bh,08bh,01bh,08ch,01fh,08dh,01fh,08eh,06fh,08fh,01fh,090h,01bh,091h	; 8614  ..........o.....
	defb 019h,000h,019h,000h,01fh,092h,01fh,093h,01bh,094h,01fh,095h,019h,000h,01fh,096h	; 8624  ................
	defb 01fh,097h,01fh,098h,01fh,099h,01fh,09ah,01fh,09bh,019h,000h,01fh,09ch,019h,000h	; 8634  ................
	defb 01bh,09dh,019h,000h,01bh,09eh,01bh,09fh,01fh,0a0h,01fh,0a1h,01fh,0a2h,01bh,0a3h	; 8644  ................
	defb 06fh,0a4h,01bh,0a5h,01fh,0a6h,01fh,0a7h	; 8654  o.......

; ======================================================================
; CODIGO 0x865c..0x8762  (262 bytes)
; ======================================================================


L_865C:
	ld ix,0e400h		;865c
	ld hl,0f020h		;8660
	ld b,008h		;8663
L_8665:
	push bc			;8665
	ld a,(ix+000h)		;8666
	or (ix+001h)		;8669
	jp z,L_8738		;866c
	push hl			;866f
	ld a,(ix+008h)		;8670
	ld de,097e8h		;8673
	call 043a4h		;8676
	pop hl			;8679
	ld a,(ix+00dh)		;867a
	dec a			;867d
	jr nz,L_868C		;867e
	ld a,(ix+003h)		;8680
	cp 080h		;8683
	jr nc,L_868C		;8685
	exx			;8687
	call L_874C		;8688
	exx			;868b
L_868C:
	ld a,(de)			;868c
	or a			;868d
	jp z,L_8738		;868e
	bit 0,(ix+010h)		;8691
	jr nz,L_8705		;8695
	ld a,(ix+001h)		;8697
	or a			;869a
	jr nz,L_86B8		;869b
	ld a,(ix+000h)		;869d
	cp 023h		;86a0
	jr z,L_86E6		;86a2
	cp 056h		;86a4
	jr z,L_86E6		;86a6
	cp 057h		;86a8
	jr z,L_86E6		;86aa
	cp 058h		;86ac
	jr z,L_86E6		;86ae
	cp 06fh		;86b0
	jr z,L_86E6		;86b2
	cp 072h		;86b4
	jr z,L_86E6		;86b6
L_86B8:
	ld a,(ix+003h)		;86b8
	ld (hl),a			;86bb
	inc l			;86bc
	ld a,(ix+004h)		;86bd
	ld (hl),a			;86c0
	inc l			;86c1
	ld a,(de)			;86c2
	ld (hl),a			;86c3
	inc de			;86c4
	inc l			;86c5
	ld a,(ix+00eh)		;86c6
	ld (hl),a			;86c9
	inc l			;86ca
	ld a,(ix+003h)		;86cb
	ld (hl),a			;86ce
	inc l			;86cf
	ld a,(ix+004h)		;86d0
	ld (hl),a			;86d3
	inc l			;86d4
	ld a,(de)			;86d5
	ld (hl),a			;86d6
	inc l			;86d7
	ld a,(ix+00fh)		;86d8
	ld (hl),a			;86db
	inc l			;86dc
L_86DD:
	pop bc			;86dd
	ld de,00080h		;86de
	add ix,de		;86e1
	djnz L_8665		;86e3
	ret			;86e5
L_86E6:
	ld a,(ix+003h)		;86e6
	ld (hl),a			;86e9
	inc l			;86ea
	ld a,(ix+004h)		;86eb
	ld (hl),a			;86ee
	inc l			;86ef
	ld a,(de)			;86f0
	ld (hl),a			;86f1
	inc de			;86f2
	inc l			;86f3
	ld a,(ix+00eh)		;86f4
	ld (hl),a			;86f7
	inc l			;86f8
	xor a			;86f9
	ld (hl),0e0h		;86fa
	inc l			;86fc
	ld (hl),a			;86fd
	inc l			;86fe
	ld (hl),a			;86ff
	inc l			;8700
	ld (hl),a			;8701
	inc l			;8702
	jr L_86DD		;8703
L_8705:
	push hl			;8705
	ld l,(ix+003h)		;8706
	ld h,(ix+004h)		;8709
	call 04509h		;870c
	ld c,l			;870f
	ld b,h			;8710
	ld a,h			;8711
	sub 0b5h		;8712
	ld h,a			;8714
	ld a,(de)			;8715
	call L_8744		;8716
	inc hl			;8719
	inc bc			;871a
	inc de			;871b
	ld a,(de)			;871c
	call L_8744		;871d
	inc de			;8720
	ld a,01fh		;8721
	call 040a1h		;8723
	ld c,l			;8726
	ld b,h			;8727
	ld a,0b4h		;8728
	add a,b			;872a
	ld b,a			;872b
	ld a,(de)			;872c
	call L_8744		;872d
	inc hl			;8730
	inc bc			;8731
	inc de			;8732
	ld a,(de)			;8733
	call L_8744		;8734
	pop hl			;8737
L_8738:
	xor a			;8738
	ld (hl),0e0h		;8739
	inc l			;873b
	ld (hl),a			;873c
	inc l			;873d
	ld (hl),a			;873e
	inc l			;873f
	ld (hl),a			;8740
	inc l			;8741
	jr L_86DD		;8742
L_8744:
	call 0592bh		;8744
	exx			;8747
	out (c),a		;8748
	exx			;874a
	ret			;874b
L_874C:
	ld l,(ix+003h)		;874c
	ld h,(ix+004h)		;874f
	call 0451dh		;8752
	ld (hl),004h		;8755
	ret			;8757
L_8758:
	ld ix,(0e365h)		;8758
	ld a,(0e370h)		;875c
	call 040abh		;875f

; ----------------------------------------------------------------------
; DATOS saltos_8762: tabla de 5 palabras del despachador (call 0x408D en
;   0x875F); lo leen L_40AB (10 bytes)
;   0x8762..0x876c  (10 bytes)
DATA_saltos_8762:
	defb 06ch,087h	; 8762
	defb 077h,087h	; 8764
	defb 097h,087h	; 8766
	defb 0beh,087h	; 8768
	defb 0d1h,087h	; 876a

; ======================================================================
; CODIGO 0x876c..0x882d  (193 bytes)
; ======================================================================


L_876C:
	xor a			;876c
	ld (0e36fh),a		;876d
	ld (0e37fh),a		;8770
	inc a			;8773
	ld (0e370h),a		;8774
L_8777:
	dec (ix+00ch)		;8777
	ret nz			;877a
	ld a,(ix+000h)		;877b
	cp 02bh		;877e
	jr nz,L_8788		;8780
	ld a,004h		;8782
	ld (0e370h),a		;8784
	ret			;8787
L_8788:
	ld (ix+00fh),006h		;8788
	ld (ix+008h),012h		;878c
L_8790:
	ld hl,0e370h		;8790
	inc (hl)			;8793
	jp L_865C		;8794
L_8797:
	ld hl,0e37fh		;8797
	inc (hl)			;879a
	ld a,(hl)			;879b
	cp 080h		;879c
	jr nz,L_87B1		;879e
	xor a			;87a0
	ld b,a			;87a1
	ld h,(ix+004h)		;87a2
	ld l,(ix+003h)		;87a5
	call 05dd3h		;87a8
	ld (ix+003h),0e0h		;87ab
	jr L_8790		;87af
L_87B1:
	bit 3,a		;87b1
	ld a,012h		;87b3
	jr z,L_87B8		;87b5
	inc a			;87b7
L_87B8:
	ld (ix+008h),a		;87b8
	jp L_865C		;87bb
L_87BE:
	xor a			;87be
	ld (ix+000h),a		;87bf
	ld (ix+001h),a		;87c2
	ld (0e370h),a		;87c5
	ld (0e3ceh),a		;87c8
	ld a,002h		;87cb
	ld (0e36fh),a		;87cd
	ret			;87d0
L_87D1:
	ld (ix+00eh),005h		;87d1
	ld (ix+00fh),00bh		;87d5
	ld hl,0e37fh		;87d9
	inc (hl)			;87dc
	ld a,020h		;87dd
	cp (hl)			;87df
	ret c			;87e0
	xor a			;87e1
	ld (0e37fh),a		;87e2
	ld hl,0e370h		;87e5
	ld (hl),001h		;87e8
	jr L_8788		;87ea
L_87EC:
	ld hl,0e400h		;87ec
	ld b,008h		;87ef
L_87F1:
	ld a,(hl)			;87f1
	and a			;87f2
	jr z,L_8803		;87f3
	push hl			;87f5
	push bc			;87f6
	call L_881D		;87f7
	bit 0,(ix+005h)		;87fa
	call nz,L_880A		;87fe
	pop bc			;8801
	pop hl			;8802
L_8803:
	ld de,00080h		;8803
	add hl,de			;8806
	djnz L_87F1		;8807
	ret			;8809
L_880A:
	ld a,(ix+003h)		;880a
	add a,(ix+006h)		;880d
	ld (ix+003h),a		;8810
	ld a,(ix+004h)		;8813
	add a,(ix+007h)		;8816
	ld (ix+004h),a		;8819
	ret			;881c
L_881D:
	push hl			;881d
	pop ix		;881e
	inc (ix+009h)		;8820
	ld l,(ix+000h)		;8823
	ld h,(ix+001h)		;8826
	dec hl			;8829
	call 040b5h		;882a

; ----------------------------------------------------------------------
; DATOS saltos_882D: tabla de 340 palabras del despachador (call 0x408D en
;   0x882A); lo leen L_40AB (680 bytes)
;   0x882d..0x8ad5  (680 bytes)
DATA_saltos_882D:
	defb 08ah,0a3h	; 882d
	defb 08ah,0a3h	; 882f
	defb 08ah,0a3h	; 8831
	defb 03ch,0a4h	; 8833
	defb 08ah,0a3h	; 8835
	defb 0dah,0a4h	; 8837
	defb 040h,0a4h	; 8839
	defb 0f0h,0a4h	; 883b
	defb 0abh,0a5h	; 883d
	defb 0bah,0a5h	; 883f
	defb 05ch,0a6h	; 8841
	defb 097h,0a6h	; 8843
	defb 0cch,0a6h	; 8845
	defb 034h,0a4h	; 8847
	defb 038h,0a4h	; 8849
	defb 037h,0a8h	; 884b
	defb 037h,0a8h	; 884d
	defb 03fh,0a8h	; 884f
	defb 0c2h,0a8h	; 8851
	defb 009h,0abh	; 8853
	defb 0eeh,0abh	; 8855
	defb 04eh,0ach	; 8857
	defb 06ah,0ach	; 8859
	defb 086h,0ach	; 885b
	defb 0abh,0ach	; 885d
	defb 0abh,0ach	; 885f
	defb 0d2h,0ach	; 8861
	defb 078h,0adh	; 8863
	defb 088h,0adh	; 8865
	defb 088h,0adh	; 8867
	defb 08eh,0adh	; 8869
	defb 0b4h,0adh	; 886b
	defb 0b4h,0adh	; 886d
	defb 00eh,0aeh	; 886f
	defb 020h,0aeh	; 8871
	defb 02fh,0aeh	; 8873
	defb 04ch,0aeh	; 8875
	defb 04ch,0aeh	; 8877
	defb 04ch,0aeh	; 8879
	defb 04ch,0aeh	; 887b
	defb 04ch,0aeh	; 887d
	defb 04ch,0aeh	; 887f
	defb 009h,0afh	; 8881
	defb 033h,0afh	; 8883
	defb 040h,0afh	; 8885
	defb 047h,0afh	; 8887
	defb 05ch,0afh	; 8889
	defb 05ch,0afh	; 888b
	defb 022h,0b0h	; 888d
	defb 0d2h,0ach	; 888f
	defb 032h,0b0h	; 8891
	defb 04fh,0b0h	; 8893
	defb 092h,0b0h	; 8895
	defb 0a1h,0b0h	; 8897
	defb 0b1h,0b0h	; 8899
	defb 07fh,0b1h	; 889b
	defb 095h,0b1h	; 889d
	defb 0a5h,0b1h	; 889f
	defb 095h,0b1h	; 88a1
	defb 095h,0b1h	; 88a3
	defb 017h,0b2h	; 88a5
	defb 036h,0b2h	; 88a7
	defb 036h,0b2h	; 88a9
	defb 053h,0b2h	; 88ab
	defb 015h,0b3h	; 88ad
	defb 03bh,0b3h	; 88af
	defb 036h,0b2h	; 88b1
	defb 061h,0b3h	; 88b3
	defb 003h,0b4h	; 88b5
	defb 036h,0b2h	; 88b7
	defb 029h,0b4h	; 88b9
	defb 055h,0b4h	; 88bb
	defb 055h,0b4h	; 88bd
	defb 029h,0b4h	; 88bf
	defb 029h,0b4h	; 88c1
	defb 029h,0b4h	; 88c3
	defb 05fh,0b4h	; 88c5
	defb 097h,0b4h	; 88c7
	defb 0d2h,0ach	; 88c9
	defb 04fh,0b8h	; 88cb
	defb 0fah,0b8h	; 88cd
	defb 0abh,0b4h	; 88cf
	defb 036h,0b2h	; 88d1
	defb 00dh,0b9h	; 88d3
	defb 057h,0b9h	; 88d5
	defb 06ch,0b9h	; 88d7
	defb 072h,0b9h	; 88d9
	defb 078h,0b9h	; 88db
	defb 088h,0b9h	; 88dd
	defb 088h,0b9h	; 88df
	defb 047h,0b8h	; 88e1
	defb 047h,0b8h	; 88e3
	defb 047h,0b8h	; 88e5
	defb 047h,0b8h	; 88e7
	defb 07ch,0b8h	; 88e9
	defb 098h,0b9h	; 88eb
	defb 0a2h,0b9h	; 88ed
	defb 003h,0bah	; 88ef
	defb 028h,0bah	; 88f1
	defb 050h,0bah	; 88f3
	defb 075h,0bah	; 88f5
	defb 075h,0bah	; 88f7
	defb 075h,0bah	; 88f9
	defb 088h,0bah	; 88fb
	defb 0aeh,0bah	; 88fd
	defb 0aeh,0bah	; 88ff
	defb 065h,0bdh	; 8901
	defb 074h,0bdh	; 8903
	defb 00eh,0a8h	; 8905
	defb 075h,0bah	; 8907
	defb 0c5h,0bah	; 8909
	defb 01bh,0bdh	; 890b
	defb 01bh,0bdh	; 890d
	defb 0bah,0bah	; 890f
	defb 02bh,0bdh	; 8911
	defb 02bh,0bdh	; 8913
	defb 043h,0bdh	; 8915
	defb 054h,0bdh	; 8917
	defb 083h,0bdh	; 8919
	defb 01bh,0bdh	; 891b
	defb 01bh,0bdh	; 891d
	defb 01bh,0bdh	; 891f
	defb 01bh,0bdh	; 8921
	defb 01bh,0bdh	; 8923
	defb 01bh,0bdh	; 8925
	defb 01bh,0bdh	; 8927
	defb 01bh,0bdh	; 8929
	defb 075h,0bah	; 892b
	defb 036h,0b2h	; 892d
	defb 092h,0bdh	; 892f
	defb 0a6h,0bdh	; 8931
	defb 0b5h,0bdh	; 8933
	defb 0b5h,0bdh	; 8935
	defb 0b5h,0bdh	; 8937
	defb 0b5h,0bdh	; 8939
	defb 0b5h,0bdh	; 893b
	defb 0c6h,0bdh	; 893d
	defb 035h,0beh	; 893f
	defb 035h,0beh	; 8941
	defb 035h,0beh	; 8943
	defb 035h,0beh	; 8945
	defb 035h,0beh	; 8947
	defb 035h,0beh	; 8949
	defb 035h,0beh	; 894b
	defb 035h,0beh	; 894d
	defb 044h,0beh	; 894f
	defb 044h,0beh	; 8951
	defb 044h,0beh	; 8953
	defb 044h,0beh	; 8955
	defb 044h,0beh	; 8957
	defb 044h,0beh	; 8959
	defb 044h,0beh	; 895b
	defb 044h,0beh	; 895d
	defb 068h,0beh	; 895f
	defb 068h,0beh	; 8961
	defb 068h,0beh	; 8963
	defb 068h,0beh	; 8965
	defb 068h,0beh	; 8967
	defb 068h,0beh	; 8969
	defb 068h,0beh	; 896b
	defb 068h,0beh	; 896d
	defb 07ch,0beh	; 896f
	defb 099h,0beh	; 8971
	defb 0d5h,08ah	; 8973
	defb 003h,0a3h	; 8975
	defb 06dh,0bah	; 8977
	defb 00ah,0bbh	; 8979
	defb 012h,0a7h	; 897b
	defb 0bah,0b6h	; 897d
	defb 0cbh,0b6h	; 897f
	defb 075h,0bah	; 8981
	defb 075h,0bah	; 8983
	defb 014h,0b7h	; 8985
	defb 09ch,0b7h	; 8987
	defb 003h,0a7h	; 8989
	defb 003h,0a7h	; 898b
	defb 003h,0a7h	; 898d
	defb 003h,0a7h	; 898f
	defb 003h,0a7h	; 8991
	defb 003h,0a7h	; 8993
	defb 003h,0a7h	; 8995
	defb 003h,0a7h	; 8997
	defb 003h,0a7h	; 8999
	defb 003h,0a7h	; 899b
	defb 003h,0a7h	; 899d
	defb 003h,0a7h	; 899f
	defb 003h,0a7h	; 89a1
	defb 026h,0a7h	; 89a3
	defb 0c1h,0bbh	; 89a5
	defb 0eeh,0a7h	; 89a7
	defb 0fdh,0a7h	; 89a9
	defb 012h,0a7h	; 89ab
	defb 012h,0a7h	; 89ad
	defb 012h,0a7h	; 89af
	defb 01ch,0a7h	; 89b1
	defb 012h,0a7h	; 89b3
	defb 030h,0bbh	; 89b5
	defb 030h,0bbh	; 89b7
	defb 06ah,0bbh	; 89b9
	defb 027h,0b8h	; 89bb
	defb 0a1h,0beh	; 89bd
	defb 0bdh,0beh	; 89bf
	defb 06eh,0afh	; 89c1
	defb 0fdh,0afh	; 89c3
	defb 0e7h,0bbh	; 89c5
	defb 0e7h,0bbh	; 89c7
	defb 036h,0b2h	; 89c9
	defb 033h,0bfh	; 89cb
	defb 033h,0bfh	; 89cd
	defb 033h,0bfh	; 89cf
	defb 0a5h,0b1h	; 89d1
	defb 0a5h,0b1h	; 89d3
	defb 0ddh,0bbh	; 89d5
	defb 0a5h,0b1h	; 89d7
	defb 055h,0b4h	; 89d9
	defb 084h,0bfh	; 89db
	defb 036h,0b2h	; 89dd
	defb 020h,0bch	; 89df
	defb 0a0h,0bfh	; 89e1
	defb 092h,0bfh	; 89e3
	defb 034h,0bch	; 89e5
	defb 0cdh,0beh	; 89e7
	defb 092h,0bfh	; 89e9
	defb 0ffh,0beh	; 89eb
	defb 042h,0bfh	; 89ed
	defb 036h,0b2h	; 89ef
	defb 036h,0b2h	; 89f1
	defb 036h,0b2h	; 89f3
	defb 036h,0b2h	; 89f5
	defb 036h,0b2h	; 89f7
	defb 036h,0b2h	; 89f9
	defb 092h,0bfh	; 89fb
	defb 0a0h,0bfh	; 89fd
	defb 0a0h,0bfh	; 89ff
	defb 092h,0bfh	; 8a01
	defb 084h,0bfh	; 8a03
	defb 0a0h,0bfh	; 8a05
	defb 0a0h,0bfh	; 8a07
	defb 084h,0bfh	; 8a09
	defb 092h,0bfh	; 8a0b
	defb 0a0h,0bfh	; 8a0d
	defb 0a0h,0bfh	; 8a0f
	defb 003h,0a7h	; 8a11
	defb 050h,0a4h	; 8a13
	defb 054h,0a4h	; 8a15
	defb 064h,0a4h	; 8a17
	defb 068h,0a4h	; 8a19
	defb 06ch,0a4h	; 8a1b
	defb 03ch,0a4h	; 8a1d
	defb 07dh,0a4h	; 8a1f
	defb 0a5h,0b1h	; 8a21
	defb 0a5h,0b1h	; 8a23
	defb 0aeh,0bfh	; 8a25
	defb 0b8h,0bfh	; 8a27
	defb 0c2h,0bfh	; 8a29
	defb 075h,0bah	; 8a2b
	defb 075h,0bah	; 8a2d
	defb 075h,0bah	; 8a2f
	defb 075h,0bah	; 8a31
	defb 075h,0bah	; 8a33
	defb 075h,0bah	; 8a35
	defb 075h,0bah	; 8a37
	defb 075h,0bah	; 8a39
	defb 075h,0bah	; 8a3b
	defb 075h,0bah	; 8a3d
	defb 075h,0bah	; 8a3f
	defb 075h,0bah	; 8a41
	defb 075h,0bah	; 8a43
	defb 075h,0bah	; 8a45
	defb 075h,0bah	; 8a47
	defb 075h,0bah	; 8a49
	defb 075h,0bah	; 8a4b
	defb 075h,0bah	; 8a4d
	defb 075h,0bah	; 8a4f
	defb 075h,0bah	; 8a51
	defb 075h,0bah	; 8a53
	defb 075h,0bah	; 8a55
	defb 075h,0bah	; 8a57
	defb 075h,0bah	; 8a59
	defb 075h,0bah	; 8a5b
	defb 075h,0bah	; 8a5d
	defb 075h,0bah	; 8a5f
	defb 0f3h,0bch	; 8a61
	defb 0a5h,0b1h	; 8a63
	defb 0a5h,0b1h	; 8a65
	defb 003h,0a7h	; 8a67
	defb 0ddh,0bbh	; 8a69
	defb 003h,0a7h	; 8a6b
	defb 003h,0a7h	; 8a6d
	defb 0ddh,0bbh	; 8a6f
	defb 0a5h,0b1h	; 8a71
	defb 0a5h,0b1h	; 8a73
	defb 0a5h,0b1h	; 8a75
	defb 0ddh,0bbh	; 8a77
	defb 0a5h,0b1h	; 8a79
	defb 0a5h,0b1h	; 8a7b
	defb 003h,0a7h	; 8a7d
	defb 003h,0a7h	; 8a7f
	defb 003h,0a7h	; 8a81
	defb 0ddh,0bbh	; 8a83
	defb 0a5h,0b1h	; 8a85
	defb 0ddh,0bbh	; 8a87
	defb 055h,0b4h	; 8a89
	defb 0a5h,0b1h	; 8a8b
	defb 0a5h,0b1h	; 8a8d
	defb 0ddh,0bbh	; 8a8f
	defb 055h,0b4h	; 8a91
	defb 0a5h,0b1h	; 8a93
	defb 055h,0b4h	; 8a95
	defb 0ddh,0bbh	; 8a97
	defb 0a5h,0b1h	; 8a99
	defb 0ddh,0bbh	; 8a9b
	defb 003h,0a7h	; 8a9d
	defb 003h,0a7h	; 8a9f
	defb 0a5h,0b1h	; 8aa1
	defb 0a5h,0b1h	; 8aa3
	defb 0ddh,0bbh	; 8aa5
	defb 0ddh,0bbh	; 8aa7
	defb 003h,0a7h	; 8aa9
	defb 0a5h,0b1h	; 8aab
	defb 0ddh,0bbh	; 8aad
	defb 0ddh,0bbh	; 8aaf
	defb 0ddh,0bbh	; 8ab1
	defb 0a5h,0b1h	; 8ab3
	defb 0ddh,0bbh	; 8ab5
	defb 003h,0a7h	; 8ab7
	defb 0ddh,0bbh	; 8ab9
	defb 003h,0a7h	; 8abb
	defb 0a5h,0b1h	; 8abd
	defb 003h,0a7h	; 8abf
	defb 0a5h,0b1h	; 8ac1
	defb 0a5h,0b1h	; 8ac3
	defb 0a5h,0b1h	; 8ac5
	defb 0a5h,0b1h	; 8ac7
	defb 055h,0b4h	; 8ac9
	defb 0a5h,0b1h	; 8acb
	defb 0ddh,0bbh	; 8acd
	defb 0a5h,0b1h	; 8acf
	defb 0a5h,0b1h	; 8ad1
	defb 055h,0b4h	; 8ad3

; ======================================================================
; CODIGO 0x8ad5..0x8b36  (97 bytes)
; ======================================================================


L_8AD5:
	ret			;8ad5
L_8AD6:
	ld hl,01b1ah		;8ad6
	ld de,01d1ch		;8ad9
	jr L_8AF4		;8adc
L_8ADE:
	ld hl,00200h		;8ade
	ld de,00604h		;8ae1
	jr L_8AF4		;8ae4
L_8AE6:
	ld hl,00a08h		;8ae6
	ld de,00e0ch		;8ae9
	jr L_8AF4		;8aec
L_8AEE:
	ld hl,01210h		;8aee
	ld de,01614h		;8af1
L_8AF4:
	ld (ix+011h),l		;8af4
	ld (ix+012h),h		;8af7
	ld (ix+013h),e		;8afa
	ld (ix+014h),d		;8afd
	ret			;8b00
L_8B01:
	ld a,(ix+008h)		;8b01
	ld (ix+011h),a		;8b04
	ld (ix+012h),a		;8b07
	ld (ix+013h),a		;8b0a
	ld (ix+014h),a		;8b0d
	ret			;8b10
L_8B11:
	ld a,(ix+00bh)		;8b11
L_8B14:
	dec a			;8b14
	add a,a			;8b15
	bit 4,(ix+009h)		;8b16
	jr z,L_8B1D		;8b1a
	inc a			;8b1c
L_8B1D:
	ld b,a			;8b1d
	ld a,(ix+011h)		;8b1e
	add a,b			;8b21
	ld (ix+008h),a		;8b22
	ret			;8b25
L_8B26:
	ld a,(ix+00ah)		;8b26
L_8B29:
	ld de,08b36h		;8b29
	call 043a4h		;8b2c
	ld (ix+006h),e		;8b2f
	ld (ix+007h),d		;8b32
	ret			;8b35

; ----------------------------------------------------------------------
; DATOS resto_8B36: lo apuntan con el banco puesto p07:8B29 (0x8B36); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p07:8B29 (10 bytes)
;   0x8b36..0x8b40  (10 bytes)
DATA_resto_8B36:
	defb 000h,000h,0ffh,000h,001h,000h,000h,0ffh,000h,001h	; 8b36  ..........

; ======================================================================
; CODIGO 0x8b40..0x8bc2  (130 bytes)
; ======================================================================


L_8B40:
	call L_8B47		;8b40
	ld (ix+00bh),a		;8b43
	ret			;8b46
L_8B47:
	xor a			;8b47
L_8B48:
	inc a			;8b48
	cp 005h		;8b49
	ret nc			;8b4b
	ld l,(ix+003h)		;8b4c
	ld h,(ix+004h)		;8b4f
	call 05d6ah		;8b52
	ld a,(hl)			;8b55
	cp 002h		;8b56
	ld a,b			;8b58
	jr nz,L_8B48		;8b59
	scf			;8b5b
	ret			;8b5c
L_8B5D:
	xor a			;8b5d
	ld (ix+006h),a		;8b5e
	ld (ix+007h),a		;8b61
	ret			;8b64
L_8B65:
	xor a			;8b65
	ld (0e8e5h),a		;8b66
L_8B69:
	inc a			;8b69
	cp 005h		;8b6a
	jr nc,L_8B81		;8b6c
	ld h,(ix+004h)		;8b6e
	ld l,(ix+003h)		;8b71
	call 05d6ah		;8b74
	call nz,L_8B7C		;8b77
	jr L_8B69		;8b7a
L_8B7C:
	ld hl,0e8e5h		;8b7c
	inc (hl)			;8b7f
	ret			;8b80
L_8B81:
	ld a,(0e8e5h)		;8b81
	cp 002h		;8b84
	jr c,L_8BA5		;8b86
	call 043d0h		;8b88
	and 003h		;8b8b
	inc a			;8b8d
	ld b,004h		;8b8e
L_8B90:
	push bc			;8b90
	ld h,(ix+004h)		;8b91
	ld l,(ix+003h)		;8b94
	call 05d6ah		;8b97
	pop bc			;8b9a
	ret z			;8b9b
	inc a			;8b9c
	cp 005h		;8b9d
	jr c,L_8BA3		;8b9f
	ld a,001h		;8ba1
L_8BA3:
	djnz L_8B90		;8ba3
L_8BA5:
	call 043d0h		;8ba5
	and 003h		;8ba8
	inc a			;8baa
	ret			;8bab
L_8BAC:
	xor a			;8bac
	ld (0e3c0h),a		;8bad
	xor a			;8bb0
	ld (0e3a9h),a		;8bb1
L_8BB4:
	push ix		;8bb4
	pop hl			;8bb6
	ld d,h			;8bb7
	ld e,l			;8bb8
	inc de			;8bb9
	ld (hl),000h		;8bba
	ld bc,0007fh		;8bbc
	ldir		;8bbf
	ret			;8bc1

; ----------------------------------------------------------------------
; DATOS actores_por_sala: 568 palabras: la lista de actores de cada sala
;   (0x8BC2 + 0xEB40 x 2); lo leen p07:82A4 (1136 bytes)
;   0x8bc2..0x9032  (1136 bytes)
DATA_actores_por_sala:
	defb 057h,090h	; 8bc2
	defb 057h,090h	; 8bc4
	defb 057h,090h	; 8bc6
	defb 057h,090h	; 8bc8
	defb 057h,090h	; 8bca
	defb 057h,090h	; 8bcc
	defb 058h,090h	; 8bce
	defb 05eh,090h	; 8bd0
	defb 05eh,090h	; 8bd2
	defb 05eh,090h	; 8bd4
	defb 05eh,090h	; 8bd6
	defb 05fh,090h	; 8bd8
	defb 065h,090h	; 8bda
	defb 06bh,090h	; 8bdc
	defb 071h,090h	; 8bde
	defb 071h,090h	; 8be0
	defb 072h,090h	; 8be2
	defb 078h,090h	; 8be4
	defb 079h,090h	; 8be6
	defb 07fh,090h	; 8be8
	defb 07fh,090h	; 8bea
	defb 07fh,090h	; 8bec
	defb 07fh,090h	; 8bee
	defb 07fh,090h	; 8bf0
	defb 07fh,090h	; 8bf2
	defb 07fh,090h	; 8bf4
	defb 07fh,090h	; 8bf6
	defb 07fh,090h	; 8bf8
	defb 07fh,090h	; 8bfa
	defb 07fh,090h	; 8bfc
	defb 080h,090h	; 8bfe
	defb 086h,090h	; 8c00
	defb 086h,090h	; 8c02
	defb 086h,090h	; 8c04
	defb 086h,090h	; 8c06
	defb 087h,090h	; 8c08
	defb 08dh,090h	; 8c0a
	defb 098h,090h	; 8c0c
	defb 099h,090h	; 8c0e
	defb 09fh,090h	; 8c10
	defb 0a5h,090h	; 8c12
	defb 0abh,090h	; 8c14
	defb 0abh,090h	; 8c16
	defb 0ach,090h	; 8c18
	defb 0b2h,090h	; 8c1a
	defb 0b8h,090h	; 8c1c
	defb 0c3h,090h	; 8c1e
	defb 0c3h,090h	; 8c20
	defb 0c4h,090h	; 8c22
	defb 0cah,090h	; 8c24
	defb 0cah,090h	; 8c26
	defb 0cah,090h	; 8c28
	defb 0cah,090h	; 8c2a
	defb 0cbh,090h	; 8c2c
	defb 0d1h,090h	; 8c2e
	defb 0d1h,090h	; 8c30
	defb 0d2h,090h	; 8c32
	defb 0d8h,090h	; 8c34
	defb 0d8h,090h	; 8c36
	defb 0d9h,090h	; 8c38
	defb 0dfh,090h	; 8c3a
	defb 0dfh,090h	; 8c3c
	defb 0e0h,090h	; 8c3e
	defb 0f5h,090h	; 8c40
	defb 0f5h,090h	; 8c42
	defb 0f5h,090h	; 8c44
	defb 0f6h,090h	; 8c46
	defb 0fch,090h	; 8c48
	defb 0fch,090h	; 8c4a
	defb 0fch,090h	; 8c4c
	defb 0fch,090h	; 8c4e
	defb 0fdh,090h	; 8c50
	defb 003h,091h	; 8c52
	defb 003h,091h	; 8c54
	defb 003h,091h	; 8c56
	defb 004h,091h	; 8c58
	defb 00ah,091h	; 8c5a
	defb 00ah,091h	; 8c5c
	defb 00ah,091h	; 8c5e
	defb 00ah,091h	; 8c60
	defb 00bh,091h	; 8c62
	defb 011h,091h	; 8c64
	defb 012h,091h	; 8c66
	defb 01dh,091h	; 8c68
	defb 01dh,091h	; 8c6a
	defb 01dh,091h	; 8c6c
	defb 01dh,091h	; 8c6e
	defb 01dh,091h	; 8c70
	defb 01dh,091h	; 8c72
	defb 01dh,091h	; 8c74
	defb 01dh,091h	; 8c76
	defb 01eh,091h	; 8c78
	defb 024h,091h	; 8c7a
	defb 02fh,091h	; 8c7c
	defb 030h,091h	; 8c7e
	defb 036h,091h	; 8c80
	defb 036h,091h	; 8c82
	defb 036h,091h	; 8c84
	defb 037h,091h	; 8c86
	defb 042h,091h	; 8c88
	defb 052h,091h	; 8c8a
	defb 052h,091h	; 8c8c
	defb 052h,091h	; 8c8e
	defb 052h,091h	; 8c90
	defb 052h,091h	; 8c92
	defb 052h,091h	; 8c94
	defb 053h,091h	; 8c96
	defb 059h,091h	; 8c98
	defb 05fh,091h	; 8c9a
	defb 065h,091h	; 8c9c
	defb 06bh,091h	; 8c9e
	defb 06bh,091h	; 8ca0
	defb 06bh,091h	; 8ca2
	defb 06bh,091h	; 8ca4
	defb 06bh,091h	; 8ca6
	defb 06bh,091h	; 8ca8
	defb 06bh,091h	; 8caa
	defb 06ch,091h	; 8cac
	defb 072h,091h	; 8cae
	defb 072h,091h	; 8cb0
	defb 072h,091h	; 8cb2
	defb 072h,091h	; 8cb4
	defb 072h,091h	; 8cb6
	defb 073h,091h	; 8cb8
	defb 079h,091h	; 8cba
	defb 07fh,091h	; 8cbc
	defb 07fh,091h	; 8cbe
	defb 07fh,091h	; 8cc0
	defb 07fh,091h	; 8cc2
	defb 07fh,091h	; 8cc4
	defb 080h,091h	; 8cc6
	defb 095h,091h	; 8cc8
	defb 09bh,091h	; 8cca
	defb 09ch,091h	; 8ccc
	defb 0a7h,091h	; 8cce
	defb 0a8h,091h	; 8cd0
	defb 0b3h,091h	; 8cd2
	defb 0b4h,091h	; 8cd4
	defb 0c4h,091h	; 8cd6
	defb 0cfh,091h	; 8cd8
	defb 0cfh,091h	; 8cda
	defb 0d0h,091h	; 8cdc
	defb 0d6h,091h	; 8cde
	defb 0d6h,091h	; 8ce0
	defb 0d7h,091h	; 8ce2
	defb 0ddh,091h	; 8ce4
	defb 0ddh,091h	; 8ce6
	defb 0ddh,091h	; 8ce8
	defb 0ddh,091h	; 8cea
	defb 0deh,091h	; 8cec
	defb 0e4h,091h	; 8cee
	defb 0eah,091h	; 8cf0
	defb 0ebh,091h	; 8cf2
	defb 0f1h,091h	; 8cf4
	defb 0fch,091h	; 8cf6
	defb 0fdh,091h	; 8cf8
	defb 003h,092h	; 8cfa
	defb 003h,092h	; 8cfc
	defb 003h,092h	; 8cfe
	defb 003h,092h	; 8d00
	defb 003h,092h	; 8d02
	defb 004h,092h	; 8d04
	defb 00ah,092h	; 8d06
	defb 010h,092h	; 8d08
	defb 010h,092h	; 8d0a
	defb 011h,092h	; 8d0c
	defb 017h,092h	; 8d0e
	defb 018h,092h	; 8d10
	defb 023h,092h	; 8d12
	defb 023h,092h	; 8d14
	defb 023h,092h	; 8d16
	defb 023h,092h	; 8d18
	defb 023h,092h	; 8d1a
	defb 024h,092h	; 8d1c
	defb 02ah,092h	; 8d1e
	defb 030h,092h	; 8d20
	defb 045h,092h	; 8d22
	defb 04bh,092h	; 8d24
	defb 051h,092h	; 8d26
	defb 052h,092h	; 8d28
	defb 058h,092h	; 8d2a
	defb 058h,092h	; 8d2c
	defb 058h,092h	; 8d2e
	defb 058h,092h	; 8d30
	defb 058h,092h	; 8d32
	defb 058h,092h	; 8d34
	defb 058h,092h	; 8d36
	defb 058h,092h	; 8d38
	defb 058h,092h	; 8d3a
	defb 058h,092h	; 8d3c
	defb 058h,092h	; 8d3e
	defb 058h,092h	; 8d40
	defb 058h,092h	; 8d42
	defb 058h,092h	; 8d44
	defb 058h,092h	; 8d46
	defb 059h,092h	; 8d48
	defb 05fh,092h	; 8d4a
	defb 060h,092h	; 8d4c
	defb 066h,092h	; 8d4e
	defb 067h,092h	; 8d50
	defb 06dh,092h	; 8d52
	defb 073h,092h	; 8d54
	defb 079h,092h	; 8d56
	defb 084h,092h	; 8d58
	defb 085h,092h	; 8d5a
	defb 08bh,092h	; 8d5c
	defb 091h,092h	; 8d5e
	defb 097h,092h	; 8d60
	defb 0b1h,092h	; 8d62
	defb 0d5h,092h	; 8d64
	defb 0dbh,092h	; 8d66
	defb 0e1h,092h	; 8d68
	defb 0e1h,092h	; 8d6a
	defb 0e1h,092h	; 8d6c
	defb 0e1h,092h	; 8d6e
	defb 0e1h,092h	; 8d70
	defb 0e1h,092h	; 8d72
	defb 0e1h,092h	; 8d74
	defb 0e1h,092h	; 8d76
	defb 0e1h,092h	; 8d78
	defb 0e1h,092h	; 8d7a
	defb 0e1h,092h	; 8d7c
	defb 0e1h,092h	; 8d7e
	defb 0e1h,092h	; 8d80
	defb 0e1h,092h	; 8d82
	defb 0e1h,092h	; 8d84
	defb 0e2h,092h	; 8d86
	defb 0fch,092h	; 8d88
	defb 0fdh,092h	; 8d8a
	defb 003h,093h	; 8d8c
	defb 003h,093h	; 8d8e
	defb 004h,093h	; 8d90
	defb 00fh,093h	; 8d92
	defb 00fh,093h	; 8d94
	defb 00fh,093h	; 8d96
	defb 00fh,093h	; 8d98
	defb 010h,093h	; 8d9a
	defb 016h,093h	; 8d9c
	defb 01ch,093h	; 8d9e
	defb 022h,093h	; 8da0
	defb 028h,093h	; 8da2
	defb 02eh,093h	; 8da4
	defb 034h,093h	; 8da6
	defb 035h,093h	; 8da8
	defb 045h,093h	; 8daa
	defb 04bh,093h	; 8dac
	defb 04ch,093h	; 8dae
	defb 052h,093h	; 8db0
	defb 058h,093h	; 8db2
	defb 05eh,093h	; 8db4
	defb 064h,093h	; 8db6
	defb 064h,093h	; 8db8
	defb 065h,093h	; 8dba
	defb 06bh,093h	; 8dbc
	defb 071h,093h	; 8dbe
	defb 077h,093h	; 8dc0
	defb 077h,093h	; 8dc2
	defb 077h,093h	; 8dc4
	defb 077h,093h	; 8dc6
	defb 077h,093h	; 8dc8
	defb 077h,093h	; 8dca
	defb 077h,093h	; 8dcc
	defb 077h,093h	; 8dce
	defb 078h,093h	; 8dd0
	defb 083h,093h	; 8dd2
	defb 084h,093h	; 8dd4
	defb 08fh,093h	; 8dd6
	defb 090h,093h	; 8dd8
	defb 096h,093h	; 8dda
	defb 097h,093h	; 8ddc
	defb 09dh,093h	; 8dde
	defb 0a8h,093h	; 8de0
	defb 0aeh,093h	; 8de2
	defb 0afh,093h	; 8de4
	defb 0b5h,093h	; 8de6
	defb 0b6h,093h	; 8de8
	defb 0c6h,093h	; 8dea
	defb 0c6h,093h	; 8dec
	defb 0c7h,093h	; 8dee
	defb 0d2h,093h	; 8df0
	defb 0d8h,093h	; 8df2
	defb 0d9h,093h	; 8df4
	defb 0dfh,093h	; 8df6
	defb 0dfh,093h	; 8df8
	defb 0dfh,093h	; 8dfa
	defb 0dfh,093h	; 8dfc
	defb 0dfh,093h	; 8dfe
	defb 0dfh,093h	; 8e00
	defb 0dfh,093h	; 8e02
	defb 0dfh,093h	; 8e04
	defb 0dfh,093h	; 8e06
	defb 0dfh,093h	; 8e08
	defb 0dfh,093h	; 8e0a
	defb 0dfh,093h	; 8e0c
	defb 0dfh,093h	; 8e0e
	defb 0dfh,093h	; 8e10
	defb 0dfh,093h	; 8e12
	defb 0dfh,093h	; 8e14
	defb 0e0h,093h	; 8e16
	defb 0e0h,093h	; 8e18
	defb 0e1h,093h	; 8e1a
	defb 0ech,093h	; 8e1c
	defb 0f7h,093h	; 8e1e
	defb 002h,094h	; 8e20
	defb 008h,094h	; 8e22
	defb 00eh,094h	; 8e24
	defb 00eh,094h	; 8e26
	defb 00eh,094h	; 8e28
	defb 00eh,094h	; 8e2a
	defb 00eh,094h	; 8e2c
	defb 00fh,094h	; 8e2e
	defb 015h,094h	; 8e30
	defb 01bh,094h	; 8e32
	defb 01bh,094h	; 8e34
	defb 01bh,094h	; 8e36
	defb 01bh,094h	; 8e38
	defb 01bh,094h	; 8e3a
	defb 01bh,094h	; 8e3c
	defb 01bh,094h	; 8e3e
	defb 01bh,094h	; 8e40
	defb 01bh,094h	; 8e42
	defb 01bh,094h	; 8e44
	defb 01ch,094h	; 8e46
	defb 02ch,094h	; 8e48
	defb 02ch,094h	; 8e4a
	defb 02ch,094h	; 8e4c
	defb 02dh,094h	; 8e4e
	defb 033h,094h	; 8e50
	defb 034h,094h	; 8e52
	defb 03ah,094h	; 8e54
	defb 040h,094h	; 8e56
	defb 041h,094h	; 8e58
	defb 047h,094h	; 8e5a
	defb 048h,094h	; 8e5c
	defb 05dh,094h	; 8e5e
	defb 05dh,094h	; 8e60
	defb 05dh,094h	; 8e62
	defb 05dh,094h	; 8e64
	defb 05eh,094h	; 8e66
	defb 069h,094h	; 8e68
	defb 069h,094h	; 8e6a
	defb 069h,094h	; 8e6c
	defb 06ah,094h	; 8e6e
	defb 070h,094h	; 8e70
	defb 076h,094h	; 8e72
	defb 081h,094h	; 8e74
	defb 087h,094h	; 8e76
	defb 087h,094h	; 8e78
	defb 087h,094h	; 8e7a
	defb 087h,094h	; 8e7c
	defb 087h,094h	; 8e7e
	defb 087h,094h	; 8e80
	defb 087h,094h	; 8e82
	defb 087h,094h	; 8e84
	defb 087h,094h	; 8e86
	defb 088h,094h	; 8e88
	defb 08eh,094h	; 8e8a
	defb 08fh,094h	; 8e8c
	defb 09ah,094h	; 8e8e
	defb 0a5h,094h	; 8e90
	defb 0a5h,094h	; 8e92
	defb 0a5h,094h	; 8e94
	defb 0a5h,094h	; 8e96
	defb 0a5h,094h	; 8e98
	defb 0a5h,094h	; 8e9a
	defb 0a5h,094h	; 8e9c
	defb 0a6h,094h	; 8e9e
	defb 0ach,094h	; 8ea0
	defb 0adh,094h	; 8ea2
	defb 0b3h,094h	; 8ea4
	defb 0b3h,094h	; 8ea6
	defb 0b3h,094h	; 8ea8
	defb 0b3h,094h	; 8eaa
	defb 0b3h,094h	; 8eac
	defb 0b4h,094h	; 8eae
	defb 0bah,094h	; 8eb0
	defb 0bah,094h	; 8eb2
	defb 0bah,094h	; 8eb4
	defb 0bah,094h	; 8eb6
	defb 0bbh,094h	; 8eb8
	defb 0c1h,094h	; 8eba
	defb 0cch,094h	; 8ebc
	defb 0cdh,094h	; 8ebe
	defb 0d3h,094h	; 8ec0
	defb 0d3h,094h	; 8ec2
	defb 0d3h,094h	; 8ec4
	defb 0d3h,094h	; 8ec6
	defb 0d4h,094h	; 8ec8
	defb 0dah,094h	; 8eca
	defb 0dbh,094h	; 8ecc
	defb 0e1h,094h	; 8ece
	defb 0ech,094h	; 8ed0
	defb 0ech,094h	; 8ed2
	defb 0ech,094h	; 8ed4
	defb 0ech,094h	; 8ed6
	defb 0edh,094h	; 8ed8
	defb 0f3h,094h	; 8eda
	defb 0f3h,094h	; 8edc
	defb 0f3h,094h	; 8ede
	defb 0f3h,094h	; 8ee0
	defb 0f3h,094h	; 8ee2
	defb 0f3h,094h	; 8ee4
	defb 0f3h,094h	; 8ee6
	defb 0f4h,094h	; 8ee8
	defb 0fah,094h	; 8eea
	defb 000h,095h	; 8eec
	defb 000h,095h	; 8eee
	defb 000h,095h	; 8ef0
	defb 000h,095h	; 8ef2
	defb 000h,095h	; 8ef4
	defb 000h,095h	; 8ef6
	defb 000h,095h	; 8ef8
	defb 000h,095h	; 8efa
	defb 000h,095h	; 8efc
	defb 000h,095h	; 8efe
	defb 000h,095h	; 8f00
	defb 000h,095h	; 8f02
	defb 001h,095h	; 8f04
	defb 007h,095h	; 8f06
	defb 00dh,095h	; 8f08
	defb 00eh,095h	; 8f0a
	defb 014h,095h	; 8f0c
	defb 014h,095h	; 8f0e
	defb 014h,095h	; 8f10
	defb 014h,095h	; 8f12
	defb 015h,095h	; 8f14
	defb 01bh,095h	; 8f16
	defb 021h,095h	; 8f18
	defb 027h,095h	; 8f1a
	defb 02dh,095h	; 8f1c
	defb 03dh,095h	; 8f1e
	defb 043h,095h	; 8f20
	defb 049h,095h	; 8f22
	defb 04fh,095h	; 8f24
	defb 05ah,095h	; 8f26
	defb 05ah,095h	; 8f28
	defb 05ah,095h	; 8f2a
	defb 05bh,095h	; 8f2c
	defb 061h,095h	; 8f2e
	defb 061h,095h	; 8f30
	defb 062h,095h	; 8f32
	defb 068h,095h	; 8f34
	defb 06eh,095h	; 8f36
	defb 074h,095h	; 8f38
	defb 075h,095h	; 8f3a
	defb 07bh,095h	; 8f3c
	defb 07bh,095h	; 8f3e
	defb 07bh,095h	; 8f40
	defb 07bh,095h	; 8f42
	defb 07bh,095h	; 8f44
	defb 07bh,095h	; 8f46
	defb 07bh,095h	; 8f48
	defb 07ch,095h	; 8f4a
	defb 082h,095h	; 8f4c
	defb 08dh,095h	; 8f4e
	defb 093h,095h	; 8f50
	defb 093h,095h	; 8f52
	defb 094h,095h	; 8f54
	defb 09ah,095h	; 8f56
	defb 0aah,095h	; 8f58
	defb 0b5h,095h	; 8f5a
	defb 0b6h,095h	; 8f5c
	defb 0c6h,095h	; 8f5e
	defb 0cch,095h	; 8f60
	defb 0d2h,095h	; 8f62
	defb 0d8h,095h	; 8f64
	defb 0deh,095h	; 8f66
	defb 0e4h,095h	; 8f68
	defb 0e5h,095h	; 8f6a
	defb 0ebh,095h	; 8f6c
	defb 0ebh,095h	; 8f6e
	defb 0ech,095h	; 8f70
	defb 0fch,095h	; 8f72
	defb 002h,096h	; 8f74
	defb 00dh,096h	; 8f76
	defb 013h,096h	; 8f78
	defb 013h,096h	; 8f7a
	defb 013h,096h	; 8f7c
	defb 013h,096h	; 8f7e
	defb 013h,096h	; 8f80
	defb 013h,096h	; 8f82
	defb 013h,096h	; 8f84
	defb 013h,096h	; 8f86
	defb 014h,096h	; 8f88
	defb 01ah,096h	; 8f8a
	defb 01bh,096h	; 8f8c
	defb 021h,096h	; 8f8e
	defb 021h,096h	; 8f90
	defb 021h,096h	; 8f92
	defb 021h,096h	; 8f94
	defb 021h,096h	; 8f96
	defb 022h,096h	; 8f98
	defb 032h,096h	; 8f9a
	defb 042h,096h	; 8f9c
	defb 052h,096h	; 8f9e
	defb 05dh,096h	; 8fa0
	defb 06dh,096h	; 8fa2
	defb 082h,096h	; 8fa4
	defb 088h,096h	; 8fa6
	defb 088h,096h	; 8fa8
	defb 088h,096h	; 8faa
	defb 089h,096h	; 8fac
	defb 08fh,096h	; 8fae
	defb 08fh,096h	; 8fb0
	defb 08fh,096h	; 8fb2
	defb 090h,096h	; 8fb4
	defb 096h,096h	; 8fb6
	defb 09ch,096h	; 8fb8
	defb 09ch,096h	; 8fba
	defb 09ch,096h	; 8fbc
	defb 09ch,096h	; 8fbe
	defb 09dh,096h	; 8fc0
	defb 0a3h,096h	; 8fc2
	defb 0a4h,096h	; 8fc4
	defb 0b4h,096h	; 8fc6
	defb 0bah,096h	; 8fc8
	defb 0bah,096h	; 8fca
	defb 0bah,096h	; 8fcc
	defb 0bah,096h	; 8fce
	defb 0bah,096h	; 8fd0
	defb 0bbh,096h	; 8fd2
	defb 0c1h,096h	; 8fd4
	defb 0c1h,096h	; 8fd6
	defb 0c2h,096h	; 8fd8
	defb 0c8h,096h	; 8fda
	defb 0d3h,096h	; 8fdc
	defb 0e8h,096h	; 8fde
	defb 0fdh,096h	; 8fe0
	defb 008h,097h	; 8fe2
	defb 018h,097h	; 8fe4
	defb 018h,097h	; 8fe6
	defb 019h,097h	; 8fe8
	defb 01fh,097h	; 8fea
	defb 01fh,097h	; 8fec
	defb 01fh,097h	; 8fee
	defb 01fh,097h	; 8ff0
	defb 01fh,097h	; 8ff2
	defb 01fh,097h	; 8ff4
	defb 01fh,097h	; 8ff6
	defb 01fh,097h	; 8ff8
	defb 01fh,097h	; 8ffa
	defb 020h,097h	; 8ffc
	defb 026h,097h	; 8ffe
	defb 02ch,097h	; 9000
	defb 055h,097h	; 9002
	defb 055h,097h	; 9004
	defb 055h,097h	; 9006
	defb 055h,097h	; 9008
	defb 055h,097h	; 900a
	defb 055h,097h	; 900c
	defb 056h,097h	; 900e
	defb 05ch,097h	; 9010
	defb 062h,097h	; 9012
	defb 063h,097h	; 9014
	defb 069h,097h	; 9016
	defb 06ah,097h	; 9018
	defb 070h,097h	; 901a
	defb 071h,097h	; 901c
	defb 077h,097h	; 901e
	defb 07dh,097h	; 9020
	defb 083h,097h	; 9022
	defb 089h,097h	; 9024
	defb 08fh,097h	; 9026
	defb 0aeh,097h	; 9028
	defb 0cdh,097h	; 902a
	defb 0e7h,097h	; 902c
	defb 0e7h,097h	; 902e
	defb 0e7h,097h	; 9030

; ----------------------------------------------------------------------
; DATOS actores_9032: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE (la lista de la sala 0xB0/0xD0 cuando 0xEB5D
;   tiene el bit 0, p07:8295); lo leen p07:82A4 (26 bytes)
;   0x9032..0x904c  (26 bytes)
DATA_actores_9032:
	defb 005h,0f4h,000h,010h,030h	; 9032
	defb 000h,0f5h,000h,060h,030h	; 9037
	defb 000h,0f6h,000h,020h,010h	; 903c
	defb 000h,0f7h,000h,030h,010h	; 9041
	defb 000h,0f8h,000h,040h,010h	; 9046
	defb 001h	; 904b

; ----------------------------------------------------------------------
; DATOS actores_904C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE (la lista de la sala 0xB0/0xD0 cuando 0xEB5D
;   tiene el bit 0, p07:8295); lo leen p07:82A4 (11 bytes)
;   0x904c..0x9057  (11 bytes)
DATA_actores_904C:
	defb 002h,0f9h,000h,030h,010h	; 904c
	defb 000h,0fah,000h,060h,070h	; 9051
	defb 000h	; 9056

; ----------------------------------------------------------------------
; DATOS actores_9057: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9057..0x9058  (1 bytes)
DATA_actores_9057:
	defb 000h	; 9057

; ----------------------------------------------------------------------
; DATOS actores_9058: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9058..0x905e  (6 bytes)
DATA_actores_9058:
	defb 001h,0cdh,000h,030h,020h	; 9058
	defb 002h	; 905d

; ----------------------------------------------------------------------
; DATOS actores_905E: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x905e..0x905f  (1 bytes)
DATA_actores_905E:
	defb 000h	; 905e

; ----------------------------------------------------------------------
; DATOS actores_905F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x905f..0x9065  (6 bytes)
DATA_actores_905F:
	defb 001h,022h,001h,040h,090h	; 905f
	defb 000h	; 9064

; ----------------------------------------------------------------------
; DATOS actores_9065: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9065..0x906b  (6 bytes)
DATA_actores_9065:
	defb 001h,0d7h,000h,040h,090h	; 9065
	defb 000h	; 906a

; ----------------------------------------------------------------------
; DATOS actores_906B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x906b..0x9071  (6 bytes)
DATA_actores_906B:
	defb 001h,0d6h,000h,020h,040h	; 906b
	defb 000h	; 9070

; ----------------------------------------------------------------------
; DATOS actores_9071: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9071..0x9072  (1 bytes)
DATA_actores_9071:
	defb 000h	; 9071

; ----------------------------------------------------------------------
; DATOS actores_9072: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9072..0x9078  (6 bytes)
DATA_actores_9072:
	defb 001h,027h,001h,050h,050h	; 9072
	defb 000h	; 9077

; ----------------------------------------------------------------------
; DATOS actores_9078: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9078..0x9079  (1 bytes)
DATA_actores_9078:
	defb 000h	; 9078

; ----------------------------------------------------------------------
; DATOS actores_9079: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9079..0x907f  (6 bytes)
DATA_actores_9079:
	defb 001h,028h,001h,040h,050h	; 9079
	defb 000h	; 907e

; ----------------------------------------------------------------------
; DATOS actores_907F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x907f..0x9080  (1 bytes)
DATA_actores_907F:
	defb 000h	; 907f

; ----------------------------------------------------------------------
; DATOS actores_9080: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9080..0x9086  (6 bytes)
DATA_actores_9080:
	defb 001h,049h,001h,060h,030h	; 9080
	defb 000h	; 9085

; ----------------------------------------------------------------------
; DATOS actores_9086: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9086..0x9087  (1 bytes)
DATA_actores_9086:
	defb 000h	; 9086

; ----------------------------------------------------------------------
; DATOS actores_9087: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9087..0x908d  (6 bytes)
DATA_actores_9087:
	defb 001h,0bah,000h,030h,070h	; 9087
	defb 002h	; 908c

; ----------------------------------------------------------------------
; DATOS actores_908D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x908d..0x9098  (11 bytes)
DATA_actores_908D:
	defb 002h,08ah,000h,040h,060h	; 908d
	defb 000h,092h,000h,030h,050h	; 9092
	defb 002h	; 9097

; ----------------------------------------------------------------------
; DATOS actores_9098: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9098..0x9099  (1 bytes)
DATA_actores_9098:
	defb 000h	; 9098

; ----------------------------------------------------------------------
; DATOS actores_9099: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9099..0x909f  (6 bytes)
DATA_actores_9099:
	defb 001h,026h,001h,040h,080h	; 9099
	defb 000h	; 909e

; ----------------------------------------------------------------------
; DATOS actores_909F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x909f..0x90a5  (6 bytes)
DATA_actores_909F:
	defb 001h,0ceh,000h,030h,050h	; 909f
	defb 002h	; 90a4

; ----------------------------------------------------------------------
; DATOS actores_90A5: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x90a5..0x90ab  (6 bytes)
DATA_actores_90A5:
	defb 001h,0cfh,000h,030h,010h	; 90a5
	defb 002h	; 90aa

; ----------------------------------------------------------------------
; DATOS actores_90AB: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x90ab..0x90ac  (1 bytes)
DATA_actores_90AB:
	defb 000h	; 90ab

; ----------------------------------------------------------------------
; DATOS actores_90AC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x90ac..0x90b2  (6 bytes)
DATA_actores_90AC:
	defb 001h,021h,001h,020h,090h	; 90ac
	defb 002h	; 90b1

; ----------------------------------------------------------------------
; DATOS actores_90B2: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x90b2..0x90b8  (6 bytes)
DATA_actores_90B2:
	defb 001h,0d3h,000h,030h,080h	; 90b2
	defb 001h	; 90b7

; ----------------------------------------------------------------------
; DATOS actores_90B8: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x90b8..0x90c3  (11 bytes)
DATA_actores_90B8:
	defb 002h,0d4h,000h,010h,080h	; 90b8
	defb 001h,0d5h,000h,040h,020h	; 90bd
	defb 000h	; 90c2

; ----------------------------------------------------------------------
; DATOS actores_90C3: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x90c3..0x90c4  (1 bytes)
DATA_actores_90C3:
	defb 000h	; 90c3

; ----------------------------------------------------------------------
; DATOS actores_90C4: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x90c4..0x90ca  (6 bytes)
DATA_actores_90C4:
	defb 001h,052h,000h,020h,060h	; 90c4
	defb 000h	; 90c9

; ----------------------------------------------------------------------
; DATOS actores_90CA: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x90ca..0x90cb  (1 bytes)
DATA_actores_90CA:
	defb 000h	; 90ca

; ----------------------------------------------------------------------
; DATOS actores_90CB: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x90cb..0x90d1  (6 bytes)
DATA_actores_90CB:
	defb 001h,03dh,001h,020h,070h	; 90cb
	defb 000h	; 90d0

; ----------------------------------------------------------------------
; DATOS actores_90D1: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x90d1..0x90d2  (1 bytes)
DATA_actores_90D1:
	defb 000h	; 90d1

; ----------------------------------------------------------------------
; DATOS actores_90D2: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x90d2..0x90d8  (6 bytes)
DATA_actores_90D2:
	defb 001h,0d9h,000h,040h,050h	; 90d2
	defb 002h	; 90d7

; ----------------------------------------------------------------------
; DATOS actores_90D8: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x90d8..0x90d9  (1 bytes)
DATA_actores_90D8:
	defb 000h	; 90d8

; ----------------------------------------------------------------------
; DATOS actores_90D9: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x90d9..0x90df  (6 bytes)
DATA_actores_90D9:
	defb 001h,070h,000h,030h,050h	; 90d9
	defb 000h	; 90de

; ----------------------------------------------------------------------
; DATOS actores_90DF: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x90df..0x90e0  (1 bytes)
DATA_actores_90DF:
	defb 000h	; 90df

; ----------------------------------------------------------------------
; DATOS actores_90E0: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (21 bytes)
;   0x90e0..0x90f5  (21 bytes)
DATA_actores_90E0:
	defb 004h,0e2h,000h,010h,0a0h	; 90e0
	defb 002h,0dbh,000h,050h,060h	; 90e5
	defb 000h,0dch,000h,030h,080h	; 90ea
	defb 001h,0d8h,000h,040h,040h	; 90ef
	defb 001h	; 90f4

; ----------------------------------------------------------------------
; DATOS actores_90F5: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x90f5..0x90f6  (1 bytes)
DATA_actores_90F5:
	defb 000h	; 90f5

; ----------------------------------------------------------------------
; DATOS actores_90F6: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x90f6..0x90fc  (6 bytes)
DATA_actores_90F6:
	defb 001h,01fh,001h,020h,030h	; 90f6
	defb 000h	; 90fb

; ----------------------------------------------------------------------
; DATOS actores_90FC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x90fc..0x90fd  (1 bytes)
DATA_actores_90FC:
	defb 000h	; 90fc

; ----------------------------------------------------------------------
; DATOS actores_90FD: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x90fd..0x9103  (6 bytes)
DATA_actores_90FD:
	defb 001h,023h,001h,020h,010h	; 90fd
	defb 000h	; 9102

; ----------------------------------------------------------------------
; DATOS actores_9103: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9103..0x9104  (1 bytes)
DATA_actores_9103:
	defb 000h	; 9103

; ----------------------------------------------------------------------
; DATOS actores_9104: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9104..0x910a  (6 bytes)
DATA_actores_9104:
	defb 001h,071h,000h,030h,050h	; 9104
	defb 000h	; 9109

; ----------------------------------------------------------------------
; DATOS actores_910A: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x910a..0x910b  (1 bytes)
DATA_actores_910A:
	defb 000h	; 910a

; ----------------------------------------------------------------------
; DATOS actores_910B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x910b..0x9111  (6 bytes)
DATA_actores_910B:
	defb 001h,029h,001h,030h,060h	; 910b
	defb 002h	; 9110

; ----------------------------------------------------------------------
; DATOS actores_9111: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9111..0x9112  (1 bytes)
DATA_actores_9111:
	defb 000h	; 9111

; ----------------------------------------------------------------------
; DATOS actores_9112: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9112..0x911d  (11 bytes)
DATA_actores_9112:
	defb 002h,08bh,000h,040h,060h	; 9112
	defb 000h,093h,000h,030h,050h	; 9117
	defb 002h	; 911c

; ----------------------------------------------------------------------
; DATOS actores_911D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x911d..0x911e  (1 bytes)
DATA_actores_911D:
	defb 000h	; 911d

; ----------------------------------------------------------------------
; DATOS actores_911E: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x911e..0x9124  (6 bytes)
DATA_actores_911E:
	defb 001h,04bh,001h,030h,060h	; 911e
	defb 000h	; 9123

; ----------------------------------------------------------------------
; DATOS actores_9124: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9124..0x912f  (11 bytes)
DATA_actores_9124:
	defb 002h,08ch,000h,040h,060h	; 9124
	defb 000h,094h,000h,030h,050h	; 9129
	defb 002h	; 912e

; ----------------------------------------------------------------------
; DATOS actores_912F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x912f..0x9130  (1 bytes)
DATA_actores_912F:
	defb 000h	; 912f

; ----------------------------------------------------------------------
; DATOS actores_9130: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9130..0x9136  (6 bytes)
DATA_actores_9130:
	defb 001h,0f3h,000h,010h,070h	; 9130
	defb 002h	; 9135

; ----------------------------------------------------------------------
; DATOS actores_9136: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9136..0x9137  (1 bytes)
DATA_actores_9136:
	defb 000h	; 9136

; ----------------------------------------------------------------------
; DATOS actores_9137: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9137..0x9142  (11 bytes)
DATA_actores_9137:
	defb 002h,038h,000h,030h,0b0h	; 9137
	defb 002h,037h,000h,010h,050h	; 913c
	defb 000h	; 9141

; ----------------------------------------------------------------------
; DATOS actores_9142: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x9142..0x9152  (16 bytes)
DATA_actores_9142:
	defb 003h,035h,000h,050h,040h	; 9142
	defb 002h,036h,000h,030h,000h	; 9147
	defb 002h,03eh,000h,030h,060h	; 914c
	defb 002h	; 9151

; ----------------------------------------------------------------------
; DATOS actores_9152: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9152..0x9153  (1 bytes)
DATA_actores_9152:
	defb 000h	; 9152

; ----------------------------------------------------------------------
; DATOS actores_9153: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9153..0x9159  (6 bytes)
DATA_actores_9153:
	defb 001h,025h,001h,030h,050h	; 9153
	defb 000h	; 9158

; ----------------------------------------------------------------------
; DATOS actores_9159: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9159..0x915f  (6 bytes)
DATA_actores_9159:
	defb 001h,024h,001h,040h,060h	; 9159
	defb 000h	; 915e

; ----------------------------------------------------------------------
; DATOS actores_915F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x915f..0x9165  (6 bytes)
DATA_actores_915F:
	defb 001h,0b7h,000h,030h,050h	; 915f
	defb 002h	; 9164

; ----------------------------------------------------------------------
; DATOS actores_9165: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9165..0x916b  (6 bytes)
DATA_actores_9165:
	defb 001h,06bh,000h,050h,040h	; 9165
	defb 000h	; 916a

; ----------------------------------------------------------------------
; DATOS actores_916B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x916b..0x916c  (1 bytes)
DATA_actores_916B:
	defb 000h	; 916b

; ----------------------------------------------------------------------
; DATOS actores_916C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x916c..0x9172  (6 bytes)
DATA_actores_916C:
	defb 001h,078h,000h,030h,050h	; 916c
	defb 000h	; 9171

; ----------------------------------------------------------------------
; DATOS actores_9172: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9172..0x9173  (1 bytes)
DATA_actores_9172:
	defb 000h	; 9172

; ----------------------------------------------------------------------
; DATOS actores_9173: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9173..0x9179  (6 bytes)
DATA_actores_9173:
	defb 001h,04ch,001h,040h,080h	; 9173
	defb 001h	; 9178

; ----------------------------------------------------------------------
; DATOS actores_9179: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9179..0x917f  (6 bytes)
DATA_actores_9179:
	defb 001h,0b3h,000h,030h,070h	; 9179
	defb 002h	; 917e

; ----------------------------------------------------------------------
; DATOS actores_917F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x917f..0x9180  (1 bytes)
DATA_actores_917F:
	defb 000h	; 917f

; ----------------------------------------------------------------------
; DATOS actores_9180: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (21 bytes)
;   0x9180..0x9195  (21 bytes)
DATA_actores_9180:
	defb 004h,039h,000h,060h,070h	; 9180
	defb 000h,03ah,000h,030h,020h	; 9185
	defb 001h,03bh,000h,030h,0a0h	; 918a
	defb 000h,03ch,000h,010h,040h	; 918f
	defb 000h	; 9194

; ----------------------------------------------------------------------
; DATOS actores_9195: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9195..0x919b  (6 bytes)
DATA_actores_9195:
	defb 001h,03dh,000h,010h,070h	; 9195
	defb 000h	; 919a

; ----------------------------------------------------------------------
; DATOS actores_919B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x919b..0x919c  (1 bytes)
DATA_actores_919B:
	defb 000h	; 919b

; ----------------------------------------------------------------------
; DATOS actores_919C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x919c..0x91a7  (11 bytes)
DATA_actores_919C:
	defb 002h,048h,000h,020h,070h	; 919c
	defb 000h,049h,000h,050h,030h	; 91a1
	defb 000h	; 91a6

; ----------------------------------------------------------------------
; DATOS actores_91A7: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x91a7..0x91a8  (1 bytes)
DATA_actores_91A7:
	defb 000h	; 91a7

; ----------------------------------------------------------------------
; DATOS actores_91A8: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x91a8..0x91b3  (11 bytes)
DATA_actores_91A8:
	defb 002h,05eh,000h,060h,050h	; 91a8
	defb 000h,068h,080h,040h,050h	; 91ad
	defb 002h	; 91b2

; ----------------------------------------------------------------------
; DATOS actores_91B3: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x91b3..0x91b4  (1 bytes)
DATA_actores_91B3:
	defb 000h	; 91b3

; ----------------------------------------------------------------------
; DATOS actores_91B4: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x91b4..0x91c4  (16 bytes)
DATA_actores_91B4:
	defb 003h,020h,000h,030h,040h	; 91b4
	defb 002h,021h,000h,050h,080h	; 91b9
	defb 002h,015h,000h,020h,050h	; 91be
	defb 001h	; 91c3

; ----------------------------------------------------------------------
; DATOS actores_91C4: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x91c4..0x91cf  (11 bytes)
DATA_actores_91C4:
	defb 002h,013h,000h,040h,030h	; 91c4
	defb 000h,022h,000h,030h,070h	; 91c9
	defb 002h	; 91ce

; ----------------------------------------------------------------------
; DATOS actores_91CF: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x91cf..0x91d0  (1 bytes)
DATA_actores_91CF:
	defb 000h	; 91cf

; ----------------------------------------------------------------------
; DATOS actores_91D0: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x91d0..0x91d6  (6 bytes)
DATA_actores_91D0:
	defb 001h,0aah,080h,050h,050h	; 91d0
	defb 002h	; 91d5

; ----------------------------------------------------------------------
; DATOS actores_91D6: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x91d6..0x91d7  (1 bytes)
DATA_actores_91D6:
	defb 000h	; 91d6

; ----------------------------------------------------------------------
; DATOS actores_91D7: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x91d7..0x91dd  (6 bytes)
DATA_actores_91D7:
	defb 001h,086h,000h,030h,040h	; 91d7
	defb 000h	; 91dc

; ----------------------------------------------------------------------
; DATOS actores_91DD: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x91dd..0x91de  (1 bytes)
DATA_actores_91DD:
	defb 000h	; 91dd

; ----------------------------------------------------------------------
; DATOS actores_91DE: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x91de..0x91e4  (6 bytes)
DATA_actores_91DE:
	defb 001h,03eh,001h,030h,080h	; 91de
	defb 000h	; 91e3

; ----------------------------------------------------------------------
; DATOS actores_91E4: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x91e4..0x91ea  (6 bytes)
DATA_actores_91E4:
	defb 001h,0b4h,000h,030h,030h	; 91e4
	defb 002h	; 91e9

; ----------------------------------------------------------------------
; DATOS actores_91EA: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x91ea..0x91eb  (1 bytes)
DATA_actores_91EA:
	defb 000h	; 91ea

; ----------------------------------------------------------------------
; DATOS actores_91EB: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x91eb..0x91f1  (6 bytes)
DATA_actores_91EB:
	defb 001h,03fh,001h,010h,040h	; 91eb
	defb 002h	; 91f0

; ----------------------------------------------------------------------
; DATOS actores_91F1: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x91f1..0x91fc  (11 bytes)
DATA_actores_91F1:
	defb 002h,034h,000h,040h,030h	; 91f1
	defb 002h,033h,000h,020h,090h	; 91f6
	defb 001h	; 91fb

; ----------------------------------------------------------------------
; DATOS actores_91FC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x91fc..0x91fd  (1 bytes)
DATA_actores_91FC:
	defb 000h	; 91fc

; ----------------------------------------------------------------------
; DATOS actores_91FD: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x91fd..0x9203  (6 bytes)
DATA_actores_91FD:
	defb 001h,04dh,001h,030h,080h	; 91fd
	defb 000h	; 9202

; ----------------------------------------------------------------------
; DATOS actores_9203: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9203..0x9204  (1 bytes)
DATA_actores_9203:
	defb 000h	; 9203

; ----------------------------------------------------------------------
; DATOS actores_9204: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9204..0x920a  (6 bytes)
DATA_actores_9204:
	defb 001h,01ch,001h,030h,060h	; 9204
	defb 000h	; 9209

; ----------------------------------------------------------------------
; DATOS actores_920A: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x920a..0x9210  (6 bytes)
DATA_actores_920A:
	defb 001h,01eh,001h,020h,040h	; 920a
	defb 002h	; 920f

; ----------------------------------------------------------------------
; DATOS actores_9210: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9210..0x9211  (1 bytes)
DATA_actores_9210:
	defb 000h	; 9210

; ----------------------------------------------------------------------
; DATOS actores_9211: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9211..0x9217  (6 bytes)
DATA_actores_9211:
	defb 001h,04ah,000h,020h,050h	; 9211
	defb 000h	; 9216

; ----------------------------------------------------------------------
; DATOS actores_9217: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9217..0x9218  (1 bytes)
DATA_actores_9217:
	defb 000h	; 9217

; ----------------------------------------------------------------------
; DATOS actores_9218: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9218..0x9223  (11 bytes)
DATA_actores_9218:
	defb 002h,05dh,000h,060h,050h	; 9218
	defb 000h,05ah,000h,030h,080h	; 921d
	defb 002h	; 9222

; ----------------------------------------------------------------------
; DATOS actores_9223: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9223..0x9224  (1 bytes)
DATA_actores_9223:
	defb 000h	; 9223

; ----------------------------------------------------------------------
; DATOS actores_9224: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9224..0x922a  (6 bytes)
DATA_actores_9224:
	defb 001h,0a9h,000h,030h,060h	; 9224
	defb 000h	; 9229

; ----------------------------------------------------------------------
; DATOS actores_922A: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x922a..0x9230  (6 bytes)
DATA_actores_922A:
	defb 001h,085h,000h,030h,060h	; 922a
	defb 000h	; 922f

; ----------------------------------------------------------------------
; DATOS actores_9230: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (21 bytes)
;   0x9230..0x9245  (21 bytes)
DATA_actores_9230:
	defb 004h,00eh,000h,060h,040h	; 9230
	defb 000h,00fh,000h,040h,0a0h	; 9235
	defb 000h,010h,000h,020h,060h	; 923a
	defb 000h,011h,000h,010h,040h	; 923f
	defb 002h	; 9244

; ----------------------------------------------------------------------
; DATOS actores_9245: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9245..0x924b  (6 bytes)
DATA_actores_9245:
	defb 001h,008h,000h,010h,010h	; 9245
	defb 001h	; 924a

; ----------------------------------------------------------------------
; DATOS actores_924B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x924b..0x9251  (6 bytes)
DATA_actores_924B:
	defb 001h,02dh,001h,020h,060h	; 924b
	defb 000h	; 9250

; ----------------------------------------------------------------------
; DATOS actores_9251: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9251..0x9252  (1 bytes)
DATA_actores_9251:
	defb 000h	; 9251

; ----------------------------------------------------------------------
; DATOS actores_9252: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9252..0x9258  (6 bytes)
DATA_actores_9252:
	defb 001h,089h,000h,030h,050h	; 9252
	defb 000h	; 9257

; ----------------------------------------------------------------------
; DATOS actores_9258: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9258..0x9259  (1 bytes)
DATA_actores_9258:
	defb 000h	; 9258

; ----------------------------------------------------------------------
; DATOS actores_9259: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9259..0x925f  (6 bytes)
DATA_actores_9259:
	defb 001h,01dh,001h,060h,040h	; 9259
	defb 000h	; 925e

; ----------------------------------------------------------------------
; DATOS actores_925F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x925f..0x9260  (1 bytes)
DATA_actores_925F:
	defb 000h	; 925f

; ----------------------------------------------------------------------
; DATOS actores_9260: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9260..0x9266  (6 bytes)
DATA_actores_9260:
	defb 001h,020h,001h,030h,020h	; 9260
	defb 002h	; 9265

; ----------------------------------------------------------------------
; DATOS actores_9266: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9266..0x9267  (1 bytes)
DATA_actores_9266:
	defb 000h	; 9266

; ----------------------------------------------------------------------
; DATOS actores_9267: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9267..0x926d  (6 bytes)
DATA_actores_9267:
	defb 001h,05ch,000h,060h,050h	; 9267
	defb 000h	; 926c

; ----------------------------------------------------------------------
; DATOS actores_926D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x926d..0x9273  (6 bytes)
DATA_actores_926D:
	defb 001h,01bh,000h,000h,050h	; 926d
	defb 000h	; 9272

; ----------------------------------------------------------------------
; DATOS actores_9273: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9273..0x9279  (6 bytes)
DATA_actores_9273:
	defb 001h,04fh,000h,030h,050h	; 9273
	defb 001h	; 9278

; ----------------------------------------------------------------------
; DATOS actores_9279: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9279..0x9284  (11 bytes)
DATA_actores_9279:
	defb 002h,08dh,000h,040h,060h	; 9279
	defb 000h,095h,000h,030h,050h	; 927e
	defb 002h	; 9283

; ----------------------------------------------------------------------
; DATOS actores_9284: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9284..0x9285  (1 bytes)
DATA_actores_9284:
	defb 000h	; 9284

; ----------------------------------------------------------------------
; DATOS actores_9285: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9285..0x928b  (6 bytes)
DATA_actores_9285:
	defb 001h,062h,000h,030h,040h	; 9285
	defb 000h	; 928a

; ----------------------------------------------------------------------
; DATOS actores_928B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x928b..0x9291  (6 bytes)
DATA_actores_928B:
	defb 001h,0b0h,000h,030h,070h	; 928b
	defb 002h	; 9290

; ----------------------------------------------------------------------
; DATOS actores_9291: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9291..0x9297  (6 bytes)
DATA_actores_9291:
	defb 001h,02eh,001h,020h,060h	; 9291
	defb 001h	; 9296

; ----------------------------------------------------------------------
; DATOS actores_9297: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (26 bytes)
;   0x9297..0x92b1  (26 bytes)
DATA_actores_9297:
	defb 005h,009h,000h,040h,030h	; 9297
	defb 000h,00ah,000h,010h,090h	; 929c
	defb 000h,00bh,000h,030h,090h	; 92a1
	defb 000h,00ch,000h,040h,070h	; 92a6
	defb 000h,00dh,000h,060h,070h	; 92ab
	defb 000h	; 92b0

; ----------------------------------------------------------------------
; DATOS actores_92B1: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (36 bytes)
;   0x92b1..0x92d5  (36 bytes)
DATA_actores_92B1:
	defb 007h,001h,000h,060h,040h	; 92b1
	defb 000h,002h,000h,050h,0a0h	; 92b6
	defb 001h,003h,000h,020h,030h	; 92bb
	defb 000h,004h,000h,040h,010h	; 92c0
	defb 000h,005h,000h,030h,080h	; 92c5
	defb 000h,006h,000h,030h,060h	; 92ca
	defb 002h,007h,000h,010h,050h	; 92cf
	defb 000h	; 92d4

; ----------------------------------------------------------------------
; DATOS actores_92D5: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x92d5..0x92db  (6 bytes)
DATA_actores_92D5:
	defb 001h,04bh,000h,020h,060h	; 92d5
	defb 000h	; 92da

; ----------------------------------------------------------------------
; DATOS actores_92DB: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x92db..0x92e1  (6 bytes)
DATA_actores_92DB:
	defb 001h,0b1h,000h,030h,080h	; 92db
	defb 002h	; 92e0

; ----------------------------------------------------------------------
; DATOS actores_92E1: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x92e1..0x92e2  (1 bytes)
DATA_actores_92E1:
	defb 000h	; 92e1

; ----------------------------------------------------------------------
; DATOS actores_92E2: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (26 bytes)
;   0x92e2..0x92fc  (26 bytes)
DATA_actores_92E2:
	defb 005h,03fh,000h,030h,040h	; 92e2
	defb 002h,042h,000h,020h,080h	; 92e7
	defb 002h,041h,000h,010h,060h	; 92ec
	defb 002h,045h,000h,050h,050h	; 92f1
	defb 002h,040h,000h,030h,040h	; 92f6
	defb 002h	; 92fb

; ----------------------------------------------------------------------
; DATOS actores_92FC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x92fc..0x92fd  (1 bytes)
DATA_actores_92FC:
	defb 000h	; 92fc

; ----------------------------------------------------------------------
; DATOS actores_92FD: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x92fd..0x9303  (6 bytes)
DATA_actores_92FD:
	defb 001h,079h,000h,030h,050h	; 92fd
	defb 000h	; 9302

; ----------------------------------------------------------------------
; DATOS actores_9303: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9303..0x9304  (1 bytes)
DATA_actores_9303:
	defb 000h	; 9303

; ----------------------------------------------------------------------
; DATOS actores_9304: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9304..0x930f  (11 bytes)
DATA_actores_9304:
	defb 002h,05bh,000h,060h,050h	; 9304
	defb 000h,059h,000h,030h,030h	; 9309
	defb 002h	; 930e

; ----------------------------------------------------------------------
; DATOS actores_930F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x930f..0x9310  (1 bytes)
DATA_actores_930F:
	defb 000h	; 930f

; ----------------------------------------------------------------------
; DATOS actores_9310: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9310..0x9316  (6 bytes)
DATA_actores_9310:
	defb 001h,061h,000h,030h,060h	; 9310
	defb 001h	; 9315

; ----------------------------------------------------------------------
; DATOS actores_9316: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9316..0x931c  (6 bytes)
DATA_actores_9316:
	defb 001h,030h,001h,030h,060h	; 9316
	defb 000h	; 931b

; ----------------------------------------------------------------------
; DATOS actores_931C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x931c..0x9322  (6 bytes)
DATA_actores_931C:
	defb 001h,04ch,000h,040h,050h	; 931c
	defb 000h	; 9321

; ----------------------------------------------------------------------
; DATOS actores_9322: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9322..0x9328  (6 bytes)
DATA_actores_9322:
	defb 001h,088h,000h,030h,070h	; 9322
	defb 000h	; 9327

; ----------------------------------------------------------------------
; DATOS actores_9328: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9328..0x932e  (6 bytes)
DATA_actores_9328:
	defb 001h,0e1h,000h,020h,060h	; 9328
	defb 002h	; 932d

; ----------------------------------------------------------------------
; DATOS actores_932E: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x932e..0x9334  (6 bytes)
DATA_actores_932E:
	defb 001h,084h,000h,030h,060h	; 932e
	defb 000h	; 9333

; ----------------------------------------------------------------------
; DATOS actores_9334: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9334..0x9335  (1 bytes)
DATA_actores_9334:
	defb 000h	; 9334

; ----------------------------------------------------------------------
; DATOS actores_9335: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x9335..0x9345  (16 bytes)
DATA_actores_9335:
	defb 003h,019h,000h,050h,040h	; 9335
	defb 000h,01ah,000h,030h,070h	; 933a
	defb 001h,023h,000h,020h,030h	; 933f
	defb 002h	; 9344

; ----------------------------------------------------------------------
; DATOS actores_9345: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9345..0x934b  (6 bytes)
DATA_actores_9345:
	defb 001h,047h,000h,030h,070h	; 9345
	defb 000h	; 934a

; ----------------------------------------------------------------------
; DATOS actores_934B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x934b..0x934c  (1 bytes)
DATA_actores_934B:
	defb 000h	; 934b

; ----------------------------------------------------------------------
; DATOS actores_934C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x934c..0x9352  (6 bytes)
DATA_actores_934C:
	defb 001h,040h,001h,040h,050h	; 934c
	defb 001h	; 9351

; ----------------------------------------------------------------------
; DATOS actores_9352: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9352..0x9358  (6 bytes)
DATA_actores_9352:
	defb 001h,041h,001h,050h,070h	; 9352
	defb 000h	; 9357

; ----------------------------------------------------------------------
; DATOS actores_9358: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9358..0x935e  (6 bytes)
DATA_actores_9358:
	defb 001h,032h,000h,000h,000h	; 9358
	defb 000h	; 935d

; ----------------------------------------------------------------------
; DATOS actores_935E: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x935e..0x9364  (6 bytes)
DATA_actores_935E:
	defb 001h,07ah,000h,030h,050h	; 935e
	defb 000h	; 9363

; ----------------------------------------------------------------------
; DATOS actores_9364: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9364..0x9365  (1 bytes)
DATA_actores_9364:
	defb 000h	; 9364

; ----------------------------------------------------------------------
; DATOS actores_9365: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9365..0x936b  (6 bytes)
DATA_actores_9365:
	defb 001h,04ah,001h,050h,0a0h	; 9365
	defb 002h	; 936a

; ----------------------------------------------------------------------
; DATOS actores_936B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x936b..0x9371  (6 bytes)
DATA_actores_936B:
	defb 001h,01bh,081h,030h,040h	; 936b
	defb 002h	; 9370

; ----------------------------------------------------------------------
; DATOS actores_9371: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9371..0x9377  (6 bytes)
DATA_actores_9371:
	defb 001h,080h,000h,040h,010h	; 9371
	defb 002h	; 9376

; ----------------------------------------------------------------------
; DATOS actores_9377: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9377..0x9378  (1 bytes)
DATA_actores_9377:
	defb 000h	; 9377

; ----------------------------------------------------------------------
; DATOS actores_9378: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9378..0x9383  (11 bytes)
DATA_actores_9378:
	defb 002h,050h,000h,030h,050h	; 9378
	defb 000h,051h,000h,050h,020h	; 937d
	defb 002h	; 9382

; ----------------------------------------------------------------------
; DATOS actores_9383: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9383..0x9384  (1 bytes)
DATA_actores_9383:
	defb 000h	; 9383

; ----------------------------------------------------------------------
; DATOS actores_9384: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9384..0x938f  (11 bytes)
DATA_actores_9384:
	defb 002h,0bch,000h,010h,050h	; 9384
	defb 001h,0bdh,000h,040h,050h	; 9389
	defb 002h	; 938e

; ----------------------------------------------------------------------
; DATOS actores_938F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x938f..0x9390  (1 bytes)
DATA_actores_938F:
	defb 000h	; 938f

; ----------------------------------------------------------------------
; DATOS actores_9390: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9390..0x9396  (6 bytes)
DATA_actores_9390:
	defb 001h,02bh,001h,050h,010h	; 9390
	defb 002h	; 9395

; ----------------------------------------------------------------------
; DATOS actores_9396: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9396..0x9397  (1 bytes)
DATA_actores_9396:
	defb 000h	; 9396

; ----------------------------------------------------------------------
; DATOS actores_9397: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9397..0x939d  (6 bytes)
DATA_actores_9397:
	defb 001h,0c4h,000h,040h,050h	; 9397
	defb 000h	; 939c

; ----------------------------------------------------------------------
; DATOS actores_939D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x939d..0x93a8  (11 bytes)
DATA_actores_939D:
	defb 002h,0c2h,000h,020h,020h	; 939d
	defb 001h,0c3h,000h,050h,080h	; 93a2
	defb 000h	; 93a7

; ----------------------------------------------------------------------
; DATOS actores_93A8: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x93a8..0x93ae  (6 bytes)
DATA_actores_93A8:
	defb 001h,07bh,000h,030h,050h	; 93a8
	defb 000h	; 93ad

; ----------------------------------------------------------------------
; DATOS actores_93AE: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x93ae..0x93af  (1 bytes)
DATA_actores_93AE:
	defb 000h	; 93ae

; ----------------------------------------------------------------------
; DATOS actores_93AF: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x93af..0x93b5  (6 bytes)
DATA_actores_93AF:
	defb 001h,02ch,001h,030h,060h	; 93af
	defb 000h	; 93b4

; ----------------------------------------------------------------------
; DATOS actores_93B5: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x93b5..0x93b6  (1 bytes)
DATA_actores_93B5:
	defb 000h	; 93b5

; ----------------------------------------------------------------------
; DATOS actores_93B6: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x93b6..0x93c6  (16 bytes)
DATA_actores_93B6:
	defb 003h,016h,000h,040h,040h	; 93b6
	defb 001h,017h,000h,030h,080h	; 93bb
	defb 000h,018h,000h,010h,070h	; 93c0
	defb 001h	; 93c5

; ----------------------------------------------------------------------
; DATOS actores_93C6: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x93c6..0x93c7  (1 bytes)
DATA_actores_93C6:
	defb 000h	; 93c6

; ----------------------------------------------------------------------
; DATOS actores_93C7: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x93c7..0x93d2  (11 bytes)
DATA_actores_93C7:
	defb 002h,08eh,000h,040h,060h	; 93c7
	defb 000h,096h,000h,030h,050h	; 93cc
	defb 002h	; 93d1

; ----------------------------------------------------------------------
; DATOS actores_93D2: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x93d2..0x93d8  (6 bytes)
DATA_actores_93D2:
	defb 001h,0bbh,000h,030h,050h	; 93d2
	defb 002h	; 93d7

; ----------------------------------------------------------------------
; DATOS actores_93D8: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x93d8..0x93d9  (1 bytes)
DATA_actores_93D8:
	defb 000h	; 93d8

; ----------------------------------------------------------------------
; DATOS actores_93D9: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x93d9..0x93df  (6 bytes)
DATA_actores_93D9:
	defb 001h,042h,001h,040h,030h	; 93d9
	defb 000h	; 93de

; ----------------------------------------------------------------------
; DATOS actores_93DF: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x93df..0x93e0  (1 bytes)
DATA_actores_93DF:
	defb 000h	; 93df

; ----------------------------------------------------------------------
; DATOS actores_93E0: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x93e0..0x93e1  (1 bytes)
DATA_actores_93E0:
	defb 000h	; 93e0

; ----------------------------------------------------------------------
; DATOS actores_93E1: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x93e1..0x93ec  (11 bytes)
DATA_actores_93E1:
	defb 002h,0a2h,000h,020h,060h	; 93e1
	defb 000h,0a3h,000h,030h,020h	; 93e6
	defb 002h	; 93eb

; ----------------------------------------------------------------------
; DATOS actores_93EC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x93ec..0x93f7  (11 bytes)
DATA_actores_93EC:
	defb 002h,0beh,000h,020h,010h	; 93ec
	defb 000h,0c0h,000h,050h,050h	; 93f1
	defb 001h	; 93f6

; ----------------------------------------------------------------------
; DATOS actores_93F7: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x93f7..0x9402  (11 bytes)
DATA_actores_93F7:
	defb 002h,0bfh,000h,020h,070h	; 93f7
	defb 001h,0c1h,000h,050h,030h	; 93fc
	defb 000h	; 9401

; ----------------------------------------------------------------------
; DATOS actores_9402: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9402..0x9408  (6 bytes)
DATA_actores_9402:
	defb 001h,02ah,001h,040h,020h	; 9402
	defb 002h	; 9407

; ----------------------------------------------------------------------
; DATOS actores_9408: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9408..0x940e  (6 bytes)
DATA_actores_9408:
	defb 001h,087h,000h,040h,050h	; 9408
	defb 000h	; 940d

; ----------------------------------------------------------------------
; DATOS actores_940E: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x940e..0x940f  (1 bytes)
DATA_actores_940E:
	defb 000h	; 940e

; ----------------------------------------------------------------------
; DATOS actores_940F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x940f..0x9415  (6 bytes)
DATA_actores_940F:
	defb 001h,044h,001h,030h,060h	; 940f
	defb 000h	; 9414

; ----------------------------------------------------------------------
; DATOS actores_9415: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9415..0x941b  (6 bytes)
DATA_actores_9415:
	defb 001h,043h,001h,020h,080h	; 9415
	defb 000h	; 941a

; ----------------------------------------------------------------------
; DATOS actores_941B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x941b..0x941c  (1 bytes)
DATA_actores_941B:
	defb 000h	; 941b

; ----------------------------------------------------------------------
; DATOS actores_941C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x941c..0x942c  (16 bytes)
DATA_actores_941C:
	defb 003h,02eh,000h,030h,070h	; 941c
	defb 000h,02fh,000h,020h,050h	; 9421
	defb 000h,030h,000h,040h,040h	; 9426
	defb 001h	; 942b

; ----------------------------------------------------------------------
; DATOS actores_942C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x942c..0x942d  (1 bytes)
DATA_actores_942C:
	defb 000h	; 942c

; ----------------------------------------------------------------------
; DATOS actores_942D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x942d..0x9433  (6 bytes)
DATA_actores_942D:
	defb 001h,048h,001h,060h,070h	; 942d
	defb 002h	; 9432

; ----------------------------------------------------------------------
; DATOS actores_9433: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9433..0x9434  (1 bytes)
DATA_actores_9433:
	defb 000h	; 9433

; ----------------------------------------------------------------------
; DATOS actores_9434: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9434..0x943a  (6 bytes)
DATA_actores_9434:
	defb 001h,0a8h,000h,030h,050h	; 9434
	defb 000h	; 9439

; ----------------------------------------------------------------------
; DATOS actores_943A: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x943a..0x9440  (6 bytes)
DATA_actores_943A:
	defb 001h,0afh,000h,040h,050h	; 943a
	defb 002h	; 943f

; ----------------------------------------------------------------------
; DATOS actores_9440: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9440..0x9441  (1 bytes)
DATA_actores_9440:
	defb 000h	; 9440

; ----------------------------------------------------------------------
; DATOS actores_9441: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9441..0x9447  (6 bytes)
DATA_actores_9441:
	defb 001h,02fh,001h,030h,050h	; 9441
	defb 001h	; 9446

; ----------------------------------------------------------------------
; DATOS actores_9447: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9447..0x9448  (1 bytes)
DATA_actores_9447:
	defb 000h	; 9447

; ----------------------------------------------------------------------
; DATOS actores_9448: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (21 bytes)
;   0x9448..0x945d  (21 bytes)
DATA_actores_9448:
	defb 004h,01ch,000h,030h,060h	; 9448
	defb 000h,01dh,000h,050h,070h	; 944d
	defb 000h,01eh,000h,050h,050h	; 9452
	defb 000h,01fh,000h,040h,040h	; 9457
	defb 001h	; 945c

; ----------------------------------------------------------------------
; DATOS actores_945D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x945d..0x945e  (1 bytes)
DATA_actores_945D:
	defb 000h	; 945d

; ----------------------------------------------------------------------
; DATOS actores_945E: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x945e..0x9469  (11 bytes)
DATA_actores_945E:
	defb 002h,06ch,000h,030h,050h	; 945e
	defb 000h,06dh,000h,050h,090h	; 9463
	defb 002h	; 9468

; ----------------------------------------------------------------------
; DATOS actores_9469: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9469..0x946a  (1 bytes)
DATA_actores_9469:
	defb 000h	; 9469

; ----------------------------------------------------------------------
; DATOS actores_946A: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x946a..0x9470  (6 bytes)
DATA_actores_946A:
	defb 001h,07fh,000h,030h,050h	; 946a
	defb 000h	; 946f

; ----------------------------------------------------------------------
; DATOS actores_9470: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9470..0x9476  (6 bytes)
DATA_actores_9470:
	defb 001h,046h,001h,030h,090h	; 9470
	defb 002h	; 9475

; ----------------------------------------------------------------------
; DATOS actores_9476: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9476..0x9481  (11 bytes)
DATA_actores_9476:
	defb 002h,0c5h,000h,020h,030h	; 9476
	defb 002h,0c6h,000h,030h,050h	; 947b
	defb 002h	; 9480

; ----------------------------------------------------------------------
; DATOS actores_9481: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9481..0x9487  (6 bytes)
DATA_actores_9481:
	defb 001h,0c7h,000h,020h,030h	; 9481
	defb 000h	; 9486

; ----------------------------------------------------------------------
; DATOS actores_9487: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9487..0x9488  (1 bytes)
DATA_actores_9487:
	defb 000h	; 9487

; ----------------------------------------------------------------------
; DATOS actores_9488: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9488..0x948e  (6 bytes)
DATA_actores_9488:
	defb 001h,0b8h,000h,040h,030h	; 9488
	defb 002h	; 948d

; ----------------------------------------------------------------------
; DATOS actores_948E: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x948e..0x948f  (1 bytes)
DATA_actores_948E:
	defb 000h	; 948e

; ----------------------------------------------------------------------
; DATOS actores_948F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x948f..0x949a  (11 bytes)
DATA_actores_948F:
	defb 002h,027h,000h,020h,090h	; 948f
	defb 001h,028h,000h,050h,040h	; 9494
	defb 000h	; 9499

; ----------------------------------------------------------------------
; DATOS actores_949A: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x949a..0x94a5  (11 bytes)
DATA_actores_949A:
	defb 002h,025h,000h,010h,080h	; 949a
	defb 000h,026h,000h,050h,030h	; 949f
	defb 001h	; 94a4

; ----------------------------------------------------------------------
; DATOS actores_94A5: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x94a5..0x94a6  (1 bytes)
DATA_actores_94A5:
	defb 000h	; 94a5

; ----------------------------------------------------------------------
; DATOS actores_94A6: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x94a6..0x94ac  (6 bytes)
DATA_actores_94A6:
	defb 001h,031h,001h,010h,060h	; 94a6
	defb 000h	; 94ab

; ----------------------------------------------------------------------
; DATOS actores_94AC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x94ac..0x94ad  (1 bytes)
DATA_actores_94AC:
	defb 000h	; 94ac

; ----------------------------------------------------------------------
; DATOS actores_94AD: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x94ad..0x94b3  (6 bytes)
DATA_actores_94AD:
	defb 001h,02dh,000h,030h,050h	; 94ad
	defb 001h	; 94b2

; ----------------------------------------------------------------------
; DATOS actores_94B3: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x94b3..0x94b4  (1 bytes)
DATA_actores_94B3:
	defb 000h	; 94b3

; ----------------------------------------------------------------------
; DATOS actores_94B4: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x94b4..0x94ba  (6 bytes)
DATA_actores_94B4:
	defb 001h,045h,001h,030h,070h	; 94b4
	defb 000h	; 94b9

; ----------------------------------------------------------------------
; DATOS actores_94BA: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x94ba..0x94bb  (1 bytes)
DATA_actores_94BA:
	defb 000h	; 94ba

; ----------------------------------------------------------------------
; DATOS actores_94BB: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x94bb..0x94c1  (6 bytes)
DATA_actores_94BB:
	defb 001h,077h,000h,020h,040h	; 94bb
	defb 000h	; 94c0

; ----------------------------------------------------------------------
; DATOS actores_94C1: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x94c1..0x94cc  (11 bytes)
DATA_actores_94C1:
	defb 002h,075h,000h,020h,060h	; 94c1
	defb 000h,076h,000h,040h,030h	; 94c6
	defb 000h	; 94cb

; ----------------------------------------------------------------------
; DATOS actores_94CC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x94cc..0x94cd  (1 bytes)
DATA_actores_94CC:
	defb 000h	; 94cc

; ----------------------------------------------------------------------
; DATOS actores_94CD: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x94cd..0x94d3  (6 bytes)
DATA_actores_94CD:
	defb 001h,0b6h,000h,030h,050h	; 94cd
	defb 002h	; 94d2

; ----------------------------------------------------------------------
; DATOS actores_94D3: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x94d3..0x94d4  (1 bytes)
DATA_actores_94D3:
	defb 000h	; 94d3

; ----------------------------------------------------------------------
; DATOS actores_94D4: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x94d4..0x94da  (6 bytes)
DATA_actores_94D4:
	defb 001h,07ch,000h,030h,050h	; 94d4
	defb 000h	; 94d9

; ----------------------------------------------------------------------
; DATOS actores_94DA: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x94da..0x94db  (1 bytes)
DATA_actores_94DA:
	defb 000h	; 94da

; ----------------------------------------------------------------------
; DATOS actores_94DB: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x94db..0x94e1  (6 bytes)
DATA_actores_94DB:
	defb 001h,02bh,000h,050h,040h	; 94db
	defb 000h	; 94e0

; ----------------------------------------------------------------------
; DATOS actores_94E1: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x94e1..0x94ec  (11 bytes)
DATA_actores_94E1:
	defb 002h,02ah,000h,010h,060h	; 94e1
	defb 000h,029h,000h,050h,070h	; 94e6
	defb 000h	; 94eb

; ----------------------------------------------------------------------
; DATOS actores_94EC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x94ec..0x94ed  (1 bytes)
DATA_actores_94EC:
	defb 000h	; 94ec

; ----------------------------------------------------------------------
; DATOS actores_94ED: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x94ed..0x94f3  (6 bytes)
DATA_actores_94ED:
	defb 001h,03bh,001h,020h,030h	; 94ed
	defb 000h	; 94f2

; ----------------------------------------------------------------------
; DATOS actores_94F3: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x94f3..0x94f4  (1 bytes)
DATA_actores_94F3:
	defb 000h	; 94f3

; ----------------------------------------------------------------------
; DATOS actores_94F4: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x94f4..0x94fa  (6 bytes)
DATA_actores_94F4:
	defb 001h,0adh,000h,020h,020h	; 94f4
	defb 000h	; 94f9

; ----------------------------------------------------------------------
; DATOS actores_94FA: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x94fa..0x9500  (6 bytes)
DATA_actores_94FA:
	defb 001h,0abh,000h,030h,060h	; 94fa
	defb 002h	; 94ff

; ----------------------------------------------------------------------
; DATOS actores_9500: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9500..0x9501  (1 bytes)
DATA_actores_9500:
	defb 000h	; 9500

; ----------------------------------------------------------------------
; DATOS actores_9501: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9501..0x9507  (6 bytes)
DATA_actores_9501:
	defb 001h,0c9h,000h,040h,060h	; 9501
	defb 002h	; 9506

; ----------------------------------------------------------------------
; DATOS actores_9507: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9507..0x950d  (6 bytes)
DATA_actores_9507:
	defb 001h,034h,001h,030h,0a0h	; 9507
	defb 000h	; 950c

; ----------------------------------------------------------------------
; DATOS actores_950D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x950d..0x950e  (1 bytes)
DATA_actores_950D:
	defb 000h	; 950d

; ----------------------------------------------------------------------
; DATOS actores_950E: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x950e..0x9514  (6 bytes)
DATA_actores_950E:
	defb 001h,035h,001h,040h,020h	; 950e
	defb 000h	; 9513

; ----------------------------------------------------------------------
; DATOS actores_9514: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9514..0x9515  (1 bytes)
DATA_actores_9514:
	defb 000h	; 9514

; ----------------------------------------------------------------------
; DATOS actores_9515: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9515..0x951b  (6 bytes)
DATA_actores_9515:
	defb 001h,036h,001h,030h,050h	; 9515
	defb 001h	; 951a

; ----------------------------------------------------------------------
; DATOS actores_951B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x951b..0x9521  (6 bytes)
DATA_actores_951B:
	defb 001h,04dh,000h,040h,050h	; 951b
	defb 002h	; 9520

; ----------------------------------------------------------------------
; DATOS actores_9521: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9521..0x9527  (6 bytes)
DATA_actores_9521:
	defb 001h,037h,001h,030h,040h	; 9521
	defb 000h	; 9526

; ----------------------------------------------------------------------
; DATOS actores_9527: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9527..0x952d  (6 bytes)
DATA_actores_9527:
	defb 001h,07dh,000h,030h,050h	; 9527
	defb 000h	; 952c

; ----------------------------------------------------------------------
; DATOS actores_952D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x952d..0x953d  (16 bytes)
DATA_actores_952D:
	defb 003h,001h,001h,040h,010h	; 952d
	defb 002h,002h,001h,020h,060h	; 9532
	defb 002h,003h,001h,060h,080h	; 9537
	defb 002h	; 953c

; ----------------------------------------------------------------------
; DATOS actores_953D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x953d..0x9543  (6 bytes)
DATA_actores_953D:
	defb 001h,0fch,000h,020h,060h	; 953d
	defb 001h	; 9542

; ----------------------------------------------------------------------
; DATOS actores_9543: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9543..0x9549  (6 bytes)
DATA_actores_9543:
	defb 001h,0feh,000h,060h,060h	; 9543
	defb 000h	; 9548

; ----------------------------------------------------------------------
; DATOS actores_9549: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9549..0x954f  (6 bytes)
DATA_actores_9549:
	defb 001h,0b2h,000h,030h,060h	; 9549
	defb 002h	; 954e

; ----------------------------------------------------------------------
; DATOS actores_954F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x954f..0x955a  (11 bytes)
DATA_actores_954F:
	defb 002h,08fh,000h,040h,060h	; 954f
	defb 000h,097h,000h,030h,050h	; 9554
	defb 002h	; 9559

; ----------------------------------------------------------------------
; DATOS actores_955A: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x955a..0x955b  (1 bytes)
DATA_actores_955A:
	defb 000h	; 955a

; ----------------------------------------------------------------------
; DATOS actores_955B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x955b..0x9561  (6 bytes)
DATA_actores_955B:
	defb 001h,0ach,000h,020h,080h	; 955b
	defb 002h	; 9560

; ----------------------------------------------------------------------
; DATOS actores_9561: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9561..0x9562  (1 bytes)
DATA_actores_9561:
	defb 000h	; 9561

; ----------------------------------------------------------------------
; DATOS actores_9562: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9562..0x9568  (6 bytes)
DATA_actores_9562:
	defb 001h,052h,001h,030h,060h	; 9562
	defb 000h	; 9567

; ----------------------------------------------------------------------
; DATOS actores_9568: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9568..0x956e  (6 bytes)
DATA_actores_9568:
	defb 001h,0b5h,000h,030h,060h	; 9568
	defb 002h	; 956d

; ----------------------------------------------------------------------
; DATOS actores_956E: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x956e..0x9574  (6 bytes)
DATA_actores_956E:
	defb 001h,04eh,001h,040h,060h	; 956e
	defb 000h	; 9573

; ----------------------------------------------------------------------
; DATOS actores_9574: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9574..0x9575  (1 bytes)
DATA_actores_9574:
	defb 000h	; 9574

; ----------------------------------------------------------------------
; DATOS actores_9575: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9575..0x957b  (6 bytes)
DATA_actores_9575:
	defb 001h,07eh,000h,030h,050h	; 9575
	defb 000h	; 957a

; ----------------------------------------------------------------------
; DATOS actores_957B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x957b..0x957c  (1 bytes)
DATA_actores_957B:
	defb 000h	; 957b

; ----------------------------------------------------------------------
; DATOS actores_957C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x957c..0x9582  (6 bytes)
DATA_actores_957C:
	defb 001h,0b9h,000h,030h,050h	; 957c
	defb 002h	; 9581

; ----------------------------------------------------------------------
; DATOS actores_9582: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9582..0x958d  (11 bytes)
DATA_actores_9582:
	defb 002h,090h,000h,040h,060h	; 9582
	defb 000h,098h,000h,030h,050h	; 9587
	defb 002h	; 958c

; ----------------------------------------------------------------------
; DATOS actores_958D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x958d..0x9593  (6 bytes)
DATA_actores_958D:
	defb 001h,031h,000h,030h,050h	; 958d
	defb 002h	; 9592

; ----------------------------------------------------------------------
; DATOS actores_9593: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9593..0x9594  (1 bytes)
DATA_actores_9593:
	defb 000h	; 9593

; ----------------------------------------------------------------------
; DATOS actores_9594: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9594..0x959a  (6 bytes)
DATA_actores_9594:
	defb 001h,038h,001h,030h,040h	; 9594
	defb 000h	; 9599

; ----------------------------------------------------------------------
; DATOS actores_959A: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x959a..0x95aa  (16 bytes)
DATA_actores_959A:
	defb 003h,004h,001h,020h,020h	; 959a
	defb 002h,005h,001h,060h,050h	; 959f
	defb 002h,006h,001h,040h,080h	; 95a4
	defb 002h	; 95a9

; ----------------------------------------------------------------------
; DATOS actores_95AA: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x95aa..0x95b5  (11 bytes)
DATA_actores_95AA:
	defb 002h,007h,001h,020h,050h	; 95aa
	defb 002h,008h,001h,050h,060h	; 95af
	defb 002h	; 95b4

; ----------------------------------------------------------------------
; DATOS actores_95B5: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x95b5..0x95b6  (1 bytes)
DATA_actores_95B5:
	defb 000h	; 95b5

; ----------------------------------------------------------------------
; DATOS actores_95B6: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x95b6..0x95c6  (16 bytes)
DATA_actores_95B6:
	defb 003h,009h,001h,050h,030h	; 95b6
	defb 002h,00ah,001h,060h,050h	; 95bb
	defb 002h,00bh,001h,030h,080h	; 95c0
	defb 002h	; 95c5

; ----------------------------------------------------------------------
; DATOS actores_95C6: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x95c6..0x95cc  (6 bytes)
DATA_actores_95C6:
	defb 001h,0fbh,000h,050h,080h	; 95c6
	defb 000h	; 95cb

; ----------------------------------------------------------------------
; DATOS actores_95CC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x95cc..0x95d2  (6 bytes)
DATA_actores_95CC:
	defb 001h,0fdh,000h,010h,060h	; 95cc
	defb 001h	; 95d1

; ----------------------------------------------------------------------
; DATOS actores_95D2: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x95d2..0x95d8  (6 bytes)
DATA_actores_95D2:
	defb 001h,04eh,000h,030h,050h	; 95d2
	defb 001h	; 95d7

; ----------------------------------------------------------------------
; DATOS actores_95D8: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x95d8..0x95de  (6 bytes)
DATA_actores_95D8:
	defb 001h,03ah,001h,020h,020h	; 95d8
	defb 002h	; 95dd

; ----------------------------------------------------------------------
; DATOS actores_95DE: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x95de..0x95e4  (6 bytes)
DATA_actores_95DE:
	defb 001h,03ch,001h,030h,030h	; 95de
	defb 000h	; 95e3

; ----------------------------------------------------------------------
; DATOS actores_95E4: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x95e4..0x95e5  (1 bytes)
DATA_actores_95E4:
	defb 000h	; 95e4

; ----------------------------------------------------------------------
; DATOS actores_95E5: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x95e5..0x95eb  (6 bytes)
DATA_actores_95E5:
	defb 001h,063h,000h,040h,070h	; 95e5
	defb 000h	; 95ea

; ----------------------------------------------------------------------
; DATOS actores_95EB: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x95eb..0x95ec  (1 bytes)
DATA_actores_95EB:
	defb 000h	; 95eb

; ----------------------------------------------------------------------
; DATOS actores_95EC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x95ec..0x95fc  (16 bytes)
DATA_actores_95EC:
	defb 003h,065h,000h,010h,050h	; 95ec
	defb 002h,066h,000h,030h,080h	; 95f1
	defb 002h,067h,000h,050h,050h	; 95f6
	defb 002h	; 95fb

; ----------------------------------------------------------------------
; DATOS actores_95FC: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x95fc..0x9602  (6 bytes)
DATA_actores_95FC:
	defb 001h,04fh,001h,030h,080h	; 95fc
	defb 001h	; 9601

; ----------------------------------------------------------------------
; DATOS actores_9602: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9602..0x960d  (11 bytes)
DATA_actores_9602:
	defb 002h,091h,000h,040h,060h	; 9602
	defb 000h,099h,000h,030h,050h	; 9607
	defb 002h	; 960c

; ----------------------------------------------------------------------
; DATOS actores_960D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x960d..0x9613  (6 bytes)
DATA_actores_960D:
	defb 001h,051h,001h,040h,040h	; 960d
	defb 001h	; 9612

; ----------------------------------------------------------------------
; DATOS actores_9613: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9613..0x9614  (1 bytes)
DATA_actores_9613:
	defb 000h	; 9613

; ----------------------------------------------------------------------
; DATOS actores_9614: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9614..0x961a  (6 bytes)
DATA_actores_9614:
	defb 001h,032h,001h,040h,050h	; 9614
	defb 000h	; 9619

; ----------------------------------------------------------------------
; DATOS actores_961A: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x961a..0x961b  (1 bytes)
DATA_actores_961A:
	defb 000h	; 961a

; ----------------------------------------------------------------------
; DATOS actores_961B: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x961b..0x9621  (6 bytes)
DATA_actores_961B:
	defb 001h,033h,001h,030h,060h	; 961b
	defb 000h	; 9620

; ----------------------------------------------------------------------
; DATOS actores_9621: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9621..0x9622  (1 bytes)
DATA_actores_9621:
	defb 000h	; 9621

; ----------------------------------------------------------------------
; DATOS actores_9622: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x9622..0x9632  (16 bytes)
DATA_actores_9622:
	defb 003h,0a6h,000h,040h,030h	; 9622
	defb 002h,000h,001h,010h,070h	; 9627
	defb 002h,0ffh,000h,020h,030h	; 962c
	defb 002h	; 9631

; ----------------------------------------------------------------------
; DATOS actores_9632: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x9632..0x9642  (16 bytes)
DATA_actores_9632:
	defb 003h,00ch,001h,020h,040h	; 9632
	defb 002h,00dh,001h,050h,070h	; 9637
	defb 002h,00eh,001h,010h,080h	; 963c
	defb 002h	; 9641

; ----------------------------------------------------------------------
; DATOS actores_9642: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x9642..0x9652  (16 bytes)
DATA_actores_9642:
	defb 003h,00fh,001h,030h,030h	; 9642
	defb 002h,010h,001h,010h,070h	; 9647
	defb 002h,011h,001h,040h,0a0h	; 964c
	defb 002h	; 9651

; ----------------------------------------------------------------------
; DATOS actores_9652: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x9652..0x965d  (11 bytes)
DATA_actores_9652:
	defb 002h,012h,001h,030h,040h	; 9652
	defb 002h,013h,001h,050h,080h	; 9657
	defb 002h	; 965c

; ----------------------------------------------------------------------
; DATOS actores_965D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x965d..0x966d  (16 bytes)
DATA_actores_965D:
	defb 003h,014h,001h,010h,030h	; 965d
	defb 002h,015h,001h,050h,070h	; 9662
	defb 002h,016h,001h,060h,0a0h	; 9667
	defb 002h	; 966c

; ----------------------------------------------------------------------
; DATOS actores_966D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (21 bytes)
;   0x966d..0x9682  (21 bytes)
DATA_actores_966D:
	defb 004h,017h,001h,010h,010h	; 966d
	defb 002h,018h,001h,050h,060h	; 9672
	defb 002h,019h,001h,020h,080h	; 9677
	defb 002h,01ah,001h,060h,090h	; 967c
	defb 002h	; 9681

; ----------------------------------------------------------------------
; DATOS actores_9682: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9682..0x9688  (6 bytes)
DATA_actores_9682:
	defb 001h,039h,001h,030h,050h	; 9682
	defb 002h	; 9687

; ----------------------------------------------------------------------
; DATOS actores_9688: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9688..0x9689  (1 bytes)
DATA_actores_9688:
	defb 000h	; 9688

; ----------------------------------------------------------------------
; DATOS actores_9689: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9689..0x968f  (6 bytes)
DATA_actores_9689:
	defb 001h,050h,001h,040h,040h	; 9689
	defb 000h	; 968e

; ----------------------------------------------------------------------
; DATOS actores_968F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x968f..0x9690  (1 bytes)
DATA_actores_968F:
	defb 000h	; 968f

; ----------------------------------------------------------------------
; DATOS actores_9690: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9690..0x9696  (6 bytes)
DATA_actores_9690:
	defb 001h,053h,001h,030h,060h	; 9690
	defb 000h	; 9695

; ----------------------------------------------------------------------
; DATOS actores_9696: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9696..0x969c  (6 bytes)
DATA_actores_9696:
	defb 001h,054h,001h,030h,030h	; 9696
	defb 000h	; 969b

; ----------------------------------------------------------------------
; DATOS actores_969C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x969c..0x969d  (1 bytes)
DATA_actores_969C:
	defb 000h	; 969c

; ----------------------------------------------------------------------
; DATOS actores_969D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x969d..0x96a3  (6 bytes)
DATA_actores_969D:
	defb 001h,047h,001h,030h,060h	; 969d
	defb 000h	; 96a2

; ----------------------------------------------------------------------
; DATOS actores_96A3: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x96a3..0x96a4  (1 bytes)
DATA_actores_96A3:
	defb 000h	; 96a3

; ----------------------------------------------------------------------
; DATOS actores_96A4: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x96a4..0x96b4  (16 bytes)
DATA_actores_96A4:
	defb 003h,024h,000h,040h,070h	; 96a4
	defb 002h,014h,000h,020h,030h	; 96a9
	defb 001h,02ch,000h,060h,0a0h	; 96ae
	defb 002h	; 96b3

; ----------------------------------------------------------------------
; DATOS actores_96B4: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x96b4..0x96ba  (6 bytes)
DATA_actores_96B4:
	defb 001h,043h,000h,030h,040h	; 96b4
	defb 002h	; 96b9

; ----------------------------------------------------------------------
; DATOS actores_96BA: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x96ba..0x96bb  (1 bytes)
DATA_actores_96BA:
	defb 000h	; 96ba

; ----------------------------------------------------------------------
; DATOS actores_96BB: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x96bb..0x96c1  (6 bytes)
DATA_actores_96BB:
	defb 001h,044h,000h,010h,050h	; 96bb
	defb 000h	; 96c0

; ----------------------------------------------------------------------
; DATOS actores_96C1: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x96c1..0x96c2  (1 bytes)
DATA_actores_96C1:
	defb 000h	; 96c1

; ----------------------------------------------------------------------
; DATOS actores_96C2: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x96c2..0x96c8  (6 bytes)
DATA_actores_96C2:
	defb 001h,046h,000h,030h,060h	; 96c2
	defb 002h	; 96c7

; ----------------------------------------------------------------------
; DATOS actores_96C8: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x96c8..0x96d3  (11 bytes)
DATA_actores_96C8:
	defb 002h,054h,000h,050h,050h	; 96c8
	defb 001h,053h,000h,060h,060h	; 96cd
	defb 002h	; 96d2

; ----------------------------------------------------------------------
; DATOS actores_96D3: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (21 bytes)
;   0x96d3..0x96e8  (21 bytes)
DATA_actores_96D3:
	defb 004h,055h,000h,050h,060h	; 96d3
	defb 001h,056h,000h,020h,030h	; 96d8
	defb 002h,057h,000h,020h,050h	; 96dd
	defb 002h,058h,000h,020h,080h	; 96e2
	defb 002h	; 96e7

; ----------------------------------------------------------------------
; DATOS actores_96E8: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (21 bytes)
;   0x96e8..0x96fd  (21 bytes)
DATA_actores_96E8:
	defb 004h,05fh,000h,060h,040h	; 96e8
	defb 000h,060h,000h,020h,070h	; 96ed
	defb 000h,069h,000h,070h,050h	; 96f2
	defb 002h,06ah,000h,070h,060h	; 96f7
	defb 002h	; 96fc

; ----------------------------------------------------------------------
; DATOS actores_96FD: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (11 bytes)
;   0x96fd..0x9708  (11 bytes)
DATA_actores_96FD:
	defb 002h,06fh,000h,030h,050h	; 96fd
	defb 002h,06eh,000h,050h,090h	; 9702
	defb 002h	; 9707

; ----------------------------------------------------------------------
; DATOS actores_9708: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (16 bytes)
;   0x9708..0x9718  (16 bytes)
DATA_actores_9708:
	defb 003h,072h,000h,070h,050h	; 9708
	defb 002h,073h,000h,020h,040h	; 970d
	defb 000h,074h,000h,030h,070h	; 9712
	defb 001h	; 9717

; ----------------------------------------------------------------------
; DATOS actores_9718: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9718..0x9719  (1 bytes)
DATA_actores_9718:
	defb 000h	; 9718

; ----------------------------------------------------------------------
; DATOS actores_9719: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9719..0x971f  (6 bytes)
DATA_actores_9719:
	defb 001h,081h,000h,040h,010h	; 9719
	defb 002h	; 971e

; ----------------------------------------------------------------------
; DATOS actores_971F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x971f..0x9720  (1 bytes)
DATA_actores_971F:
	defb 000h	; 971f

; ----------------------------------------------------------------------
; DATOS actores_9720: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9720..0x9726  (6 bytes)
DATA_actores_9720:
	defb 001h,082h,000h,040h,0b0h	; 9720
	defb 002h	; 9725

; ----------------------------------------------------------------------
; DATOS actores_9726: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9726..0x972c  (6 bytes)
DATA_actores_9726:
	defb 001h,083h,000h,030h,060h	; 9726
	defb 001h	; 972b

; ----------------------------------------------------------------------
; DATOS actores_972C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (41 bytes)
;   0x972c..0x9755  (41 bytes)
DATA_actores_972C:
	defb 008h,09ah,000h,000h,040h	; 972c
	defb 002h,09bh,000h,000h,070h	; 9731
	defb 002h,09ch,000h,020h,0b0h	; 9736
	defb 002h,09dh,000h,050h,0b0h	; 973b
	defb 002h,09eh,000h,070h,070h	; 9740
	defb 002h,09fh,000h,070h,040h	; 9745
	defb 002h,0a0h,000h,050h,000h	; 974a
	defb 002h,0a1h,000h,020h,000h	; 974f
	defb 002h	; 9754

; ----------------------------------------------------------------------
; DATOS actores_9755: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9755..0x9756  (1 bytes)
DATA_actores_9755:
	defb 000h	; 9755

; ----------------------------------------------------------------------
; DATOS actores_9756: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9756..0x975c  (6 bytes)
DATA_actores_9756:
	defb 001h,0cah,000h,030h,080h	; 9756
	defb 002h	; 975b

; ----------------------------------------------------------------------
; DATOS actores_975C: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x975c..0x9762  (6 bytes)
DATA_actores_975C:
	defb 001h,0cbh,000h,020h,060h	; 975c
	defb 001h	; 9761

; ----------------------------------------------------------------------
; DATOS actores_9762: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9762..0x9763  (1 bytes)
DATA_actores_9762:
	defb 000h	; 9762

; ----------------------------------------------------------------------
; DATOS actores_9763: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9763..0x9769  (6 bytes)
DATA_actores_9763:
	defb 001h,0d0h,000h,030h,050h	; 9763
	defb 000h	; 9768

; ----------------------------------------------------------------------
; DATOS actores_9769: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9769..0x976a  (1 bytes)
DATA_actores_9769:
	defb 000h	; 9769

; ----------------------------------------------------------------------
; DATOS actores_976A: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x976a..0x9770  (6 bytes)
DATA_actores_976A:
	defb 001h,0d1h,000h,030h,050h	; 976a
	defb 000h	; 976f

; ----------------------------------------------------------------------
; DATOS actores_9770: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x9770..0x9771  (1 bytes)
DATA_actores_9770:
	defb 000h	; 9770

; ----------------------------------------------------------------------
; DATOS actores_9771: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9771..0x9777  (6 bytes)
DATA_actores_9771:
	defb 001h,0d2h,000h,030h,050h	; 9771
	defb 000h	; 9776

; ----------------------------------------------------------------------
; DATOS actores_9777: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9777..0x977d  (6 bytes)
DATA_actores_9777:
	defb 001h,0dah,000h,040h,050h	; 9777
	defb 002h	; 977c

; ----------------------------------------------------------------------
; DATOS actores_977D: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x977d..0x9783  (6 bytes)
DATA_actores_977D:
	defb 001h,0ddh,000h,010h,0b0h	; 977d
	defb 001h	; 9782

; ----------------------------------------------------------------------
; DATOS actores_9783: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9783..0x9789  (6 bytes)
DATA_actores_9783:
	defb 001h,0deh,000h,030h,080h	; 9783
	defb 002h	; 9788

; ----------------------------------------------------------------------
; DATOS actores_9789: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (6 bytes)
;   0x9789..0x978f  (6 bytes)
DATA_actores_9789:
	defb 001h,0e0h,000h,030h,070h	; 9789
	defb 001h	; 978e

; ----------------------------------------------------------------------
; DATOS actores_978F: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (31 bytes)
;   0x978f..0x97ae  (31 bytes)
DATA_actores_978F:
	defb 006h,0e3h,000h,010h,0a0h	; 978f
	defb 002h,0e4h,000h,010h,010h	; 9794
	defb 002h,0dfh,000h,010h,050h	; 9799
	defb 000h,0e8h,000h,030h,040h	; 979e
	defb 000h,0e9h,000h,040h,060h	; 97a3
	defb 000h,0eah,000h,060h,070h	; 97a8
	defb 000h	; 97ad

; ----------------------------------------------------------------------
; DATOS actores_97AE: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (31 bytes)
;   0x97ae..0x97cd  (31 bytes)
DATA_actores_97AE:
	defb 006h,0e6h,000h,010h,0a0h	; 97ae
	defb 002h,0e5h,000h,010h,010h	; 97b3
	defb 002h,0ebh,000h,010h,070h	; 97b8
	defb 000h,0ech,000h,050h,010h	; 97bd
	defb 001h,0edh,000h,030h,020h	; 97c2
	defb 000h,0eeh,000h,040h,090h	; 97c7
	defb 000h	; 97cc

; ----------------------------------------------------------------------
; DATOS actores_97CD: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (26 bytes)
;   0x97cd..0x97e7  (26 bytes)
DATA_actores_97CD:
	defb 005h,0e7h,000h,010h,0a0h	; 97cd
	defb 002h,0efh,000h,010h,070h	; 97d2
	defb 000h,0f0h,000h,030h,050h	; 97d7
	defb 001h,0f1h,000h,040h,030h	; 97dc
	defb 000h,0f2h,000h,060h,050h	; 97e1
	defb 000h	; 97e6

; ----------------------------------------------------------------------
; DATOS actores_97E7: [n] y n actores de 5 bytes [c][b, bit 7 aparte][e][d][l]
;   que p07:82B6 pasa a p07:82FE; lo leen p07:82A4 (1 bytes)
;   0x97e7..0x97e8  (1 bytes)
DATA_actores_97E7:
	defb 000h	; 97e7

; ----------------------------------------------------------------------
; DATOS cuadros_de_actor: 40 palabras: el cuadro de cada actor segun (ix+8)
;   (L_43A4); lo leen p07:8673 (80 bytes)
;   0x97e8..0x9838  (80 bytes)
DATA_cuadros_de_actor:
	defb 038h,098h	; 97e8
	defb 03ah,098h	; 97ea
	defb 03ch,098h	; 97ec
	defb 03eh,098h	; 97ee
	defb 040h,098h	; 97f0
	defb 042h,098h	; 97f2
	defb 044h,098h	; 97f4
	defb 046h,098h	; 97f6
	defb 048h,098h	; 97f8
	defb 04ah,098h	; 97fa
	defb 04ch,098h	; 97fc
	defb 04eh,098h	; 97fe
	defb 050h,098h	; 9800
	defb 052h,098h	; 9802
	defb 054h,098h	; 9804
	defb 056h,098h	; 9806
	defb 058h,098h	; 9808
	defb 05ah,098h	; 980a
	defb 05ch,098h	; 980c
	defb 05eh,098h	; 980e
	defb 060h,098h	; 9810
	defb 062h,098h	; 9812
	defb 064h,098h	; 9814
	defb 066h,098h	; 9816
	defb 068h,098h	; 9818
	defb 06ah,098h	; 981a
	defb 06ch,098h	; 981c
	defb 06eh,098h	; 981e
	defb 070h,098h	; 9820
	defb 072h,098h	; 9822
	defb 074h,098h	; 9824
	defb 076h,098h	; 9826
	defb 078h,098h	; 9828
	defb 07ah,098h	; 982a
	defb 07eh,098h	; 982c
	defb 082h,098h	; 982e
	defb 086h,098h	; 9830
	defb 088h,098h	; 9832
	defb 08ah,098h	; 9834
	defb 08ch,098h	; 9836

; ----------------------------------------------------------------------
; DATOS cuadros: los cuadros de 0x97E8: dos sprites (p07:86C2, p07:86D5) o
;   cuatro fichas (p07:8715-8733); dos o cuatro bytes cada uno, el ultimo
;   acaba donde empieza 0x988E; lo leen p07:8673 (86 bytes)
;   0x9838..0x988e  (86 bytes)
DATA_cuadros:
	defb 018h,01ch	; 9838
	defb 020h,024h	; 983a
	defb 028h,02ch	; 983c
	defb 030h,034h	; 983e
	defb 038h,03ch	; 9840
	defb 040h,044h	; 9842
	defb 048h,04ch	; 9844
	defb 050h,054h	; 9846
	defb 058h,05ch	; 9848
	defb 060h,064h	; 984a
	defb 068h,06ch	; 984c
	defb 070h,074h	; 984e
	defb 078h,07ch	; 9850
	defb 080h,084h	; 9852
	defb 088h,08ch	; 9854
	defb 090h,094h	; 9856
	defb 098h,09ch	; 9858
	defb 0a0h,0a4h	; 985a
	defb 0a8h,0ach	; 985c
	defb 0b0h,0b4h	; 985e
	defb 0b8h,0bch	; 9860
	defb 0c0h,0c4h	; 9862
	defb 0c8h,0cch	; 9864
	defb 0d0h,0d4h	; 9866
	defb 000h,000h	; 9868
	defb 0d8h,014h	; 986a
	defb 0d8h,0dch	; 986c
	defb 0e0h,0e4h	; 986e
	defb 0e8h,0ech	; 9870
	defb 0f0h,0f4h	; 9872
	defb 0cch,0d0h	; 9874
	defb 0d4h,014h	; 9876
	defb 0a4h,014h	; 9878
	defb 074h,075h	; 987a
	defb 076h,077h	; 987c
	defb 0a7h,0a8h	; 987e
	defb 0a9h,0aah	; 9880
	defb 018h,019h	; 9882
	defb 01ah,01bh	; 9884
	defb 00ch,010h	; 9886
	defb 0f8h,0fch	; 9888
	defb 0e4h,014h	; 988a
	defb 0bch,014h	; 988c

; ----------------------------------------------------------------------
; DATOS opciones_de_personaje: 342 palabras: lo que ofrece cada personaje
;   (0x988E + (0xE363 - 1) x 2); lo leen p00:5401 (684 bytes)
;   0x988e..0x9b3a  (684 bytes)
DATA_opciones_de_personaje:
	defb 066h,09bh	; 988e
	defb 0fah,09ch	; 9890
	defb 0adh,09bh	; 9892
	defb 005h,09dh	; 9894
	defb 011h,09dh	; 9896
	defb 01ch,09dh	; 9898
	defb 026h,09dh	; 989a
	defb 066h,09bh	; 989c
	defb 040h,09bh	; 989e
	defb 08fh,09bh	; 98a0
	defb 099h,09bh	; 98a2
	defb 0a3h,09bh	; 98a4
	defb 0adh,09bh	; 98a6
	defb 040h,09bh	; 98a8
	defb 085h,09bh	; 98aa
	defb 093h,09ch	; 98ac
	defb 09fh,09ch	; 98ae
	defb 03ah,09bh	; 98b0
	defb 085h,09bh	; 98b2
	defb 0adh,09bh	; 98b4
	defb 03ah,09bh	; 98b6
	defb 0b5h,09dh	; 98b8
	defb 099h,09bh	; 98ba
	defb 0c1h,09bh	; 98bc
	defb 05ah,09dh	; 98be
	defb 067h,09dh	; 98c0
	defb 040h,09bh	; 98c2
	defb 08fh,09bh	; 98c4
	defb 099h,09bh	; 98c6
	defb 0a3h,09bh	; 98c8
	defb 0adh,09bh	; 98ca
	defb 03ah,09bh	; 98cc
	defb 03ah,09bh	; 98ce
	defb 04ah,09ch	; 98d0
	defb 076h,09dh	; 98d2
	defb 03ah,09bh	; 98d4
	defb 03dh,09eh	; 98d6
	defb 04bh,09eh	; 98d8
	defb 019h,09eh	; 98da
	defb 027h,09eh	; 98dc
	defb 08ah,09eh	; 98de
	defb 098h,09eh	; 98e0
	defb 07ch,09eh	; 98e2
	defb 024h,09fh	; 98e4
	defb 059h,09eh	; 98e6
	defb 085h,09bh	; 98e8
	defb 08fh,09bh	; 98ea
	defb 099h,09bh	; 98ec
	defb 0c1h,09eh	; 98ee
	defb 040h,09bh	; 98f0
	defb 066h,09ch	; 98f2
	defb 079h,09ch	; 98f4
	defb 019h,09ch	; 98f6
	defb 02ah,09ch	; 98f8
	defb 0f9h,09bh	; 98fa
	defb 00fh,09ch	; 98fc
	defb 0a3h,09bh	; 98fe
	defb 040h,09bh	; 9900
	defb 0adh,09bh	; 9902
	defb 0b7h,09bh	; 9904
	defb 036h,09ch	; 9906
	defb 03ah,09bh	; 9908
	defb 03ah,09bh	; 990a
	defb 045h,09dh	; 990c
	defb 045h,09dh	; 990e
	defb 045h,09dh	; 9910
	defb 03ah,09bh	; 9912
	defb 085h,09bh	; 9914
	defb 045h,09dh	; 9916
	defb 03ah,09bh	; 9918
	defb 080h,09dh	; 991a
	defb 040h,09bh	; 991c
	defb 085h,09bh	; 991e
	defb 066h,09bh	; 9920
	defb 040h,09bh	; 9922
	defb 040h,09bh	; 9924
	defb 0b0h,09eh	; 9926
	defb 0e2h,09eh	; 9928
	defb 0cfh,09dh	; 992a
	defb 097h,09dh	; 992c
	defb 0adh,09dh	; 992e
	defb 0cbh,09bh	; 9930
	defb 03ah,09bh	; 9932
	defb 040h,09bh	; 9934
	defb 040h,09bh	; 9936
	defb 034h,09fh	; 9938
	defb 043h,09fh	; 993a
	defb 052h,09fh	; 993c
	defb 083h,09ch	; 993e
	defb 083h,09ch	; 9940
	defb 03ah,09bh	; 9942
	defb 03ah,09bh	; 9944
	defb 03ah,09bh	; 9946
	defb 03ah,09bh	; 9948
	defb 085h,09bh	; 994a
	defb 061h,09fh	; 994c
	defb 04eh,09dh	; 994e
	defb 040h,09bh	; 9950
	defb 0fah,09eh	; 9952
	defb 00eh,09fh	; 9954
	defb 03ah,09bh	; 9956
	defb 03ah,09bh	; 9958
	defb 03ah,09bh	; 995a
	defb 03ah,09bh	; 995c
	defb 03ah,09bh	; 995e
	defb 03ah,09bh	; 9960
	defb 040h,09bh	; 9962
	defb 0e9h,09dh	; 9964
	defb 03ah,09bh	; 9966
	defb 03ah,09bh	; 9968
	defb 03ah,09bh	; 996a
	defb 04ah,09bh	; 996c
	defb 04ah,09bh	; 996e
	defb 03ah,09bh	; 9970
	defb 073h,09fh	; 9972
	defb 07fh,09fh	; 9974
	defb 040h,09bh	; 9976
	defb 085h,09bh	; 9978
	defb 06ch,09eh	; 997a
	defb 04ah,09bh	; 997c
	defb 04ah,09bh	; 997e
	defb 04ah,09bh	; 9980
	defb 04ah,09bh	; 9982
	defb 04ah,09bh	; 9984
	defb 04ah,09bh	; 9986
	defb 04ah,09bh	; 9988
	defb 040h,09bh	; 998a
	defb 03ah,09bh	; 998c
	defb 03ah,09bh	; 998e
	defb 03ah,09bh	; 9990
	defb 0a1h,09fh	; 9992
	defb 040h,09bh	; 9994
	defb 040h,09bh	; 9996
	defb 040h,09bh	; 9998
	defb 040h,09bh	; 999a
	defb 040h,09bh	; 999c
	defb 0e3h,09ch	; 999e
	defb 077h,09bh	; 99a0
	defb 0ebh,09bh	; 99a2
	defb 0ebh,09bh	; 99a4
	defb 0ebh,09bh	; 99a6
	defb 0c1h,09dh	; 99a8
	defb 0ebh,09bh	; 99aa
	defb 0cfh,09eh	; 99ac
	defb 0ebh,09bh	; 99ae
	defb 03ah,09bh	; 99b0
	defb 03ah,09bh	; 99b2
	defb 03ah,09bh	; 99b4
	defb 03ah,09bh	; 99b6
	defb 03ah,09bh	; 99b8
	defb 03ah,09bh	; 99ba
	defb 03ah,09bh	; 99bc
	defb 03ah,09bh	; 99be
	defb 03ah,09bh	; 99c0
	defb 03ah,09bh	; 99c2
	defb 03ah,09bh	; 99c4
	defb 03ah,09bh	; 99c6
	defb 03ah,09bh	; 99c8
	defb 03ah,09bh	; 99ca
	defb 03ah,09bh	; 99cc
	defb 03ah,09bh	; 99ce
	defb 040h,09bh	; 99d0
	defb 0dch,09dh	; 99d2
	defb 08dh,09fh	; 99d4
	defb 03ah,09bh	; 99d6
	defb 03ah,09bh	; 99d8
	defb 0fch,09dh	; 99da
	defb 040h,09bh	; 99dc
	defb 040h,09bh	; 99de
	defb 05ah,09ch	; 99e0
	defb 03ah,09bh	; 99e2
	defb 03ah,09bh	; 99e4
	defb 040h,09bh	; 99e6
	defb 0a8h,09eh	; 99e8
	defb 03ch,09bh	; 99ea
	defb 03ch,09bh	; 99ec
	defb 03ch,09bh	; 99ee
	defb 03ch,09bh	; 99f0
	defb 03ch,09bh	; 99f2
	defb 03ch,09bh	; 99f4
	defb 03ch,09bh	; 99f6
	defb 03ch,09bh	; 99f8
	defb 03ch,09bh	; 99fa
	defb 03ch,09bh	; 99fc
	defb 03ch,09bh	; 99fe
	defb 071h,09bh	; 9a00
	defb 03ch,09bh	; 9a02
	defb 085h,09bh	; 9a04
	defb 03ah,09bh	; 9a06
	defb 040h,09bh	; 9a08
	defb 040h,09bh	; 9a0a
	defb 085h,09bh	; 9a0c
	defb 085h,09bh	; 9a0e
	defb 040h,09bh	; 9a10
	defb 085h,09bh	; 9a12
	defb 066h,09bh	; 9a14
	defb 03ah,09bh	; 9a16
	defb 03ah,09bh	; 9a18
	defb 00bh,09eh	; 9a1a
	defb 03ah,09bh	; 9a1c
	defb 03ah,09bh	; 9a1e
	defb 03ah,09bh	; 9a20
	defb 0bfh,09fh	; 9a22
	defb 0d3h,09fh	; 9a24
	defb 03ah,09bh	; 9a26
	defb 03ah,09bh	; 9a28
	defb 03ah,09bh	; 9a2a
	defb 066h,09bh	; 9a2c
	defb 066h,09bh	; 9a2e
	defb 066h,09bh	; 9a30
	defb 040h,09bh	; 9a32
	defb 085h,09bh	; 9a34
	defb 040h,09bh	; 9a36
	defb 040h,09bh	; 9a38
	defb 040h,09bh	; 9a3a
	defb 02fh,0a0h	; 9a3c
	defb 03ah,09bh	; 9a3e
	defb 03ah,09bh	; 9a40
	defb 0f9h,09fh	; 9a42
	defb 01dh,0a0h	; 9a44
	defb 03ah,09bh	; 9a46
	defb 03ah,09bh	; 9a48
	defb 0f9h,09fh	; 9a4a
	defb 0e4h,09fh	; 9a4c
	defb 03ah,09bh	; 9a4e
	defb 03ah,09bh	; 9a50
	defb 03ah,09bh	; 9a52
	defb 03ah,09bh	; 9a54
	defb 03ah,09bh	; 9a56
	defb 03ah,09bh	; 9a58
	defb 03ah,09bh	; 9a5a
	defb 00bh,0a0h	; 9a5c
	defb 01dh,0a0h	; 9a5e
	defb 02fh,0a0h	; 9a60
	defb 0f9h,09fh	; 9a62
	defb 01dh,0a0h	; 9a64
	defb 02fh,0a0h	; 9a66
	defb 00bh,0a0h	; 9a68
	defb 0f9h,09fh	; 9a6a
	defb 01dh,0a0h	; 9a6c
	defb 02fh,0a0h	; 9a6e
	defb 00bh,0a0h	; 9a70
	defb 03ch,09bh	; 9a72
	defb 0a3h,09bh	; 9a74
	defb 099h,09bh	; 9a76
	defb 0a4h,09ch	; 9a78
	defb 0bch,09ch	; 9a7a
	defb 0ceh,09ch	; 9a7c
	defb 030h,09dh	; 9a7e
	defb 03ah,09dh	; 9a80
	defb 040h,09bh	; 9a82
	defb 040h,09bh	; 9a84
	defb 040h,09bh	; 9a86
	defb 040h,09bh	; 9a88
	defb 01ch,09fh	; 9a8a
	defb 03ah,09bh	; 9a8c
	defb 03ah,09bh	; 9a8e
	defb 03ah,09bh	; 9a90
	defb 03ah,09bh	; 9a92
	defb 03ah,09bh	; 9a94
	defb 03ah,09bh	; 9a96
	defb 03ah,09bh	; 9a98
	defb 03ah,09bh	; 9a9a
	defb 03ah,09bh	; 9a9c
	defb 03ah,09bh	; 9a9e
	defb 03ah,09bh	; 9aa0
	defb 03ah,09bh	; 9aa2
	defb 03ah,09bh	; 9aa4
	defb 03ah,09bh	; 9aa6
	defb 03ah,09bh	; 9aa8
	defb 03ah,09bh	; 9aaa
	defb 03ah,09bh	; 9aac
	defb 03ah,09bh	; 9aae
	defb 03ah,09bh	; 9ab0
	defb 03ah,09bh	; 9ab2
	defb 03ah,09bh	; 9ab4
	defb 03ah,09bh	; 9ab6
	defb 03ah,09bh	; 9ab8
	defb 03ah,09bh	; 9aba
	defb 03ah,09bh	; 9abc
	defb 03ah,09bh	; 9abe
	defb 03ah,09bh	; 9ac0
	defb 08fh,09dh	; 9ac2
	defb 040h,09bh	; 9ac4
	defb 040h,09bh	; 9ac6
	defb 03ch,09bh	; 9ac8
	defb 040h,09bh	; 9aca
	defb 03ch,09bh	; 9acc
	defb 03ch,09bh	; 9ace
	defb 040h,09bh	; 9ad0
	defb 040h,09bh	; 9ad2
	defb 040h,09bh	; 9ad4
	defb 040h,09bh	; 9ad6
	defb 040h,09bh	; 9ad8
	defb 040h,09bh	; 9ada
	defb 040h,09bh	; 9adc
	defb 03ch,09bh	; 9ade
	defb 03ch,09bh	; 9ae0
	defb 03ch,09bh	; 9ae2
	defb 040h,09bh	; 9ae4
	defb 040h,09bh	; 9ae6
	defb 040h,09bh	; 9ae8
	defb 040h,09bh	; 9aea
	defb 040h,09bh	; 9aec
	defb 040h,09bh	; 9aee
	defb 040h,09bh	; 9af0
	defb 040h,09bh	; 9af2
	defb 040h,09bh	; 9af4
	defb 040h,09bh	; 9af6
	defb 040h,09bh	; 9af8
	defb 040h,09bh	; 9afa
	defb 040h,09bh	; 9afc
	defb 03ch,09bh	; 9afe
	defb 03ch,09bh	; 9b00
	defb 040h,09bh	; 9b02
	defb 040h,09bh	; 9b04
	defb 040h,09bh	; 9b06
	defb 040h,09bh	; 9b08
	defb 03ch,09bh	; 9b0a
	defb 040h,09bh	; 9b0c
	defb 040h,09bh	; 9b0e
	defb 040h,09bh	; 9b10
	defb 040h,09bh	; 9b12
	defb 040h,09bh	; 9b14
	defb 040h,09bh	; 9b16
	defb 03ch,09bh	; 9b18
	defb 040h,09bh	; 9b1a
	defb 03ch,09bh	; 9b1c
	defb 040h,09bh	; 9b1e
	defb 03ch,09bh	; 9b20
	defb 040h,09bh	; 9b22
	defb 040h,09bh	; 9b24
	defb 040h,09bh	; 9b26
	defb 040h,09bh	; 9b28
	defb 040h,09bh	; 9b2a
	defb 040h,09bh	; 9b2c
	defb 040h,09bh	; 9b2e
	defb 040h,09bh	; 9b30
	defb 040h,09bh	; 9b32
	defb 040h,09bh	; 9b34
	defb 041h,0a0h	; 9b36
	defb 04eh,0a0h	; 9b38

; ----------------------------------------------------------------------
; DATOS opciones_9B3A: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (2 bytes)
;   0x9b3a..0x9b3c  (2 bytes)
DATA_opciones_9B3A:
	defb 000h,000h	; 9b3a

; ----------------------------------------------------------------------
; DATOS opciones_9B3C: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (4 bytes)
;   0x9b3c..0x9b40  (4 bytes)
DATA_opciones_9B3C:
	defb 002h,000h,001h,000h	; 9b3c

; ----------------------------------------------------------------------
; DATOS opciones_9B40: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9b40..0x9b4a  (10 bytes)
DATA_opciones_9B40:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,000h	; 9b40  qpa.a.a...

; ----------------------------------------------------------------------
; DATOS opciones_9B4A: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9b4a..0x9b56  (12 bytes)
DATA_opciones_9B4A:
	defb 0f1h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,056h,09bh,001h,000h	; 9b4a  ..a.a.a.V...

; ----------------------------------------------------------------------
; DATOS subopciones_9B56: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (16 bytes)
;   0x9b56..0x9b66  (16 bytes)
DATA_subopciones_9B56:
	defb 017h,003h,00bh,001h,002h,000h,00bh,001h,00bh,001h,002h,009h,00bh,001h,009h,007h	; 9b56  ................

; ----------------------------------------------------------------------
; DATOS opciones_9B66: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (11 bytes)
;   0x9b66..0x9b71  (11 bytes)
DATA_opciones_9B66:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,002h,000h,001h	; 9b66  qpa.a.a....

; ----------------------------------------------------------------------
; DATOS opciones_9B71: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (6 bytes)
;   0x9b71..0x9b77  (6 bytes)
DATA_opciones_9B71:
	defb 012h,010h,061h,0a0h,001h,000h	; 9b71

; ----------------------------------------------------------------------
; DATOS opciones_9B77: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9b77..0x9b81  (10 bytes)
DATA_opciones_9B77:
	defb 071h,070h,061h,0a0h,081h,09bh,061h,0a0h,001h,000h	; 9b77  qpa...a...

; ----------------------------------------------------------------------
; DATOS subopciones_9B81: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9b81..0x9b85  (4 bytes)
DATA_subopciones_9B81:
	defb 006h,001h,009h,001h	; 9b81

; ----------------------------------------------------------------------
; DATOS opciones_9B85: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9b85..0x9b8f  (10 bytes)
DATA_opciones_9B85:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,001h	; 9b85  qpa.a.a...

; ----------------------------------------------------------------------
; DATOS opciones_9B8F: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9b8f..0x9b99  (10 bytes)
DATA_opciones_9B8F:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,002h	; 9b8f  qpa.a.a...

; ----------------------------------------------------------------------
; DATOS opciones_9B99: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9b99..0x9ba3  (10 bytes)
DATA_opciones_9B99:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,003h	; 9b99  qpa.a.a...

; ----------------------------------------------------------------------
; DATOS opciones_9BA3: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9ba3..0x9bad  (10 bytes)
DATA_opciones_9BA3:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,004h	; 9ba3  qpa.a.a...

; ----------------------------------------------------------------------
; DATOS opciones_9BAD: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9bad..0x9bb7  (10 bytes)
DATA_opciones_9BAD:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,005h	; 9bad  qpa.a.a...

; ----------------------------------------------------------------------
; DATOS opciones_9BB7: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9bb7..0x9bc1  (10 bytes)
DATA_opciones_9BB7:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,006h	; 9bb7  qpa.a.a...

; ----------------------------------------------------------------------
; DATOS opciones_9BC1: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9bc1..0x9bcb  (10 bytes)
DATA_opciones_9BC1:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,007h	; 9bc1  qpa.a.a...

; ----------------------------------------------------------------------
; DATOS opciones_9BCB: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (20 bytes)
;   0x9bcb..0x9bdf  (20 bytes)
DATA_opciones_9BCB:
	defb 0ffh,0f0h,061h,0a0h,0dfh,09bh,0e3h,09bh,0e7h,09bh,002h,001h,006h,002h,002h,003h	; 9bcb  ..a.............
	defb 001h,004h,001h,005h	; 9bdb

; ----------------------------------------------------------------------
; DATOS subopciones_9BDF: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9bdf..0x9be3  (4 bytes)
DATA_subopciones_9BDF:
	defb 006h,001h,006h,009h	; 9bdf

; ----------------------------------------------------------------------
; DATOS subopciones_9BE3: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9be3..0x9be7  (4 bytes)
DATA_subopciones_9BE3:
	defb 006h,001h,006h,00ah	; 9be3

; ----------------------------------------------------------------------
; DATOS subopciones_9BE7: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9be7..0x9beb  (4 bytes)
DATA_subopciones_9BE7:
	defb 012h,002h,007h,008h	; 9be7

; ----------------------------------------------------------------------
; DATOS opciones_9BEB: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9beb..0x9bf5  (10 bytes)
DATA_opciones_9BEB:
	defb 071h,070h,061h,0a0h,0f5h,09bh,061h,0a0h,001h,000h	; 9beb  qpa...a...

; ----------------------------------------------------------------------
; DATOS subopciones_9BF5: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9bf5..0x9bf9  (4 bytes)
DATA_subopciones_9BF5:
	defb 006h,001h,009h,001h	; 9bf5

; ----------------------------------------------------------------------
; DATOS opciones_9BF9: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (18 bytes)
;   0x9bf9..0x9c0b  (18 bytes)
DATA_opciones_9BF9:
	defb 0f7h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,00bh,09ch,003h,000h,001h,002h,001h,003h	; 9bf9  ..a.a.a.........
	defb 001h,004h	; 9c09

; ----------------------------------------------------------------------
; DATOS subopciones_9C0B: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9c0b..0x9c0f  (4 bytes)
DATA_subopciones_9C0B:
	defb 00ch,002h,005h,00bh	; 9c0b

; ----------------------------------------------------------------------
; DATOS opciones_9C0F: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (6 bytes)
;   0x9c0f..0x9c15  (6 bytes)
DATA_opciones_9C0F:
	defb 090h,090h,061h,0a0h,015h,09ch	; 9c0f

; ----------------------------------------------------------------------
; DATOS subopciones_9C15: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9c15..0x9c19  (4 bytes)
DATA_subopciones_9C15:
	defb 00bh,002h,00ch,00dh	; 9c15

; ----------------------------------------------------------------------
; DATOS opciones_9C19: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9c19..0x9c25  (12 bytes)
DATA_opciones_9C19:
	defb 09eh,090h,061h,0a0h,025h,09ch,001h,001h,001h,000h,001h,005h	; 9c19  ..a.%.......

; ----------------------------------------------------------------------
; DATOS subopciones_9C25: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (5 bytes)
;   0x9c25..0x9c2a  (5 bytes)
DATA_subopciones_9C25:
	defb 00ah,003h,002h,003h,004h	; 9c25

; ----------------------------------------------------------------------
; DATOS opciones_9C2A: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (8 bytes)
;   0x9c2a..0x9c32  (8 bytes)
DATA_opciones_9C2A:
	defb 094h,090h,061h,0a0h,032h,09ch,001h,008h	; 9c2a  ..a.2...

; ----------------------------------------------------------------------
; DATOS subopciones_9C32: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9c32..0x9c36  (4 bytes)
DATA_subopciones_9C32:
	defb 00bh,002h,009h,00ah	; 9c32

; ----------------------------------------------------------------------
; DATOS opciones_9C36: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (14 bytes)
;   0x9c36..0x9c44  (14 bytes)
DATA_opciones_9C36:
	defb 0f3h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,044h,09ch,001h,000h,001h,005h	; 9c36  ..a.a.a.D.....

; ----------------------------------------------------------------------
; DATOS subopciones_9C44: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (6 bytes)
;   0x9c44..0x9c4a  (6 bytes)
DATA_subopciones_9C44:
	defb 00dh,004h,001h,002h,004h,003h	; 9c44

; ----------------------------------------------------------------------
; DATOS opciones_9C4A: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (8 bytes)
;   0x9c4a..0x9c52  (8 bytes)
DATA_opciones_9C4A:
	defb 01ch,01ch,052h,09ch,056h,09ch,061h,0a0h	; 9c4a  ..R.V.a.

; ----------------------------------------------------------------------
; DATOS subopciones_9C52: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9c52..0x9c56  (4 bytes)
DATA_subopciones_9C52:
	defb 004h,002h,004h,003h	; 9c52

; ----------------------------------------------------------------------
; DATOS subopciones_9C56: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9c56..0x9c5a  (4 bytes)
DATA_subopciones_9C56:
	defb 005h,002h,006h,007h	; 9c56

; ----------------------------------------------------------------------
; DATOS opciones_9C5A: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (8 bytes)
;   0x9c5a..0x9c62  (8 bytes)
DATA_opciones_9C5A:
	defb 013h,010h,062h,09ch,001h,000h,001h,002h	; 9c5a  ..b.....

; ----------------------------------------------------------------------
; DATOS subopciones_9C62: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9c62..0x9c66  (4 bytes)
DATA_subopciones_9C62:
	defb 006h,001h,007h,001h	; 9c62

; ----------------------------------------------------------------------
; DATOS opciones_9C66: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9c66..0x9c72  (12 bytes)
DATA_opciones_9C66:
	defb 0f1h,0f0h,061h,0a0h,072h,09ch,061h,0a0h,076h,09ch,001h,000h	; 9c66  ..a.r.a.v...

; ----------------------------------------------------------------------
; DATOS subopciones_9C72: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9c72..0x9c76  (4 bytes)
DATA_subopciones_9C72:
	defb 006h,001h,00ah,005h	; 9c72

; ----------------------------------------------------------------------
; DATOS subopciones_9C76: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9c76..0x9c79  (3 bytes)
DATA_subopciones_9C76:
	defb 023h,001h,006h	; 9c76

; ----------------------------------------------------------------------
; DATOS opciones_9C79: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9c79..0x9c83  (10 bytes)
DATA_opciones_9C79:
	defb 01eh,010h,061h,0a0h,001h,002h,001h,003h,001h,004h	; 9c79  ..a.......

; ----------------------------------------------------------------------
; DATOS opciones_9C83: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (16 bytes)
;   0x9c83..0x9c93  (16 bytes)
DATA_opciones_9C83:
	defb 07fh,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,000h,001h,001h,001h,002h,001h,003h	; 9c83  .pa.a.a.........

; ----------------------------------------------------------------------
; DATOS opciones_9C93: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9c93..0x9c9f  (12 bytes)
DATA_opciones_9C93:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,003h,004h,008h,007h	; 9c93  qpa.a.a.....

; ----------------------------------------------------------------------
; DATOS opciones_9C9F: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (5 bytes)
;   0x9c9f..0x9ca4  (5 bytes)
DATA_opciones_9C9F:
	defb 002h,000h,002h,003h,006h	; 9c9f

; ----------------------------------------------------------------------
; DATOS opciones_9CA4: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (16 bytes)
;   0x9ca4..0x9cb4  (16 bytes)
DATA_opciones_9CA4:
	defb 07fh,070h,061h,0a0h,0b4h,09ch,0b8h,09ch,001h,005h,001h,00bh,001h,00ch,001h,00dh	; 9ca4  .pa.............

; ----------------------------------------------------------------------
; DATOS subopciones_9CB4: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9cb4..0x9cb8  (4 bytes)
DATA_subopciones_9CB4:
	defb 006h,001h,00ah,014h	; 9cb4

; ----------------------------------------------------------------------
; DATOS subopciones_9CB8: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9cb8..0x9cbc  (4 bytes)
DATA_subopciones_9CB8:
	defb 006h,001h,00ah,01ah	; 9cb8

; ----------------------------------------------------------------------
; DATOS opciones_9CBC: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (18 bytes)
;   0x9cbc..0x9cce  (18 bytes)
DATA_opciones_9CBC:
	defb 0ffh,000h,001h,00eh,001h,00fh,001h,010h,001h,011h,001h,00fh,001h,00eh,001h,010h	; 9cbc  ................
	defb 001h,012h	; 9ccc

; ----------------------------------------------------------------------
; DATOS opciones_9CCE: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (18 bytes)
;   0x9cce..0x9ce0  (18 bytes)
DATA_opciones_9CCE:
	defb 0ffh,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,0e0h,09ch,001h,007h,001h,008h,001h,009h	; 9cce  ..a.a.a.........
	defb 001h,00ah	; 9cde

; ----------------------------------------------------------------------
; DATOS subopciones_9CE0: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9ce0..0x9ce3  (3 bytes)
DATA_subopciones_9CE0:
	defb 028h,001h,015h	; 9ce0

; ----------------------------------------------------------------------
; DATOS opciones_9CE3: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (18 bytes)
;   0x9ce3..0x9cf5  (18 bytes)
DATA_opciones_9CE3:
	defb 0f7h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,0f5h,09ch,003h,001h,002h,003h,001h,004h	; 9ce3  ..a.a.a.........
	defb 001h,005h	; 9cf3

; ----------------------------------------------------------------------
; DATOS subopciones_9CF5: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (5 bytes)
;   0x9cf5..0x9cfa  (5 bytes)
DATA_subopciones_9CF5:
	defb 01bh,003h,006h,007h,008h	; 9cf5

; ----------------------------------------------------------------------
; DATOS opciones_9CFA: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (11 bytes)
;   0x9cfa..0x9d05  (11 bytes)
DATA_opciones_9CFA:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,002h,003h,004h	; 9cfa  qpa.a.a....

; ----------------------------------------------------------------------
; DATOS opciones_9D05: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9d05..0x9d11  (12 bytes)
DATA_opciones_9D05:
	defb 079h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,006h,001h,007h	; 9d05  ypa.a.a.....

; ----------------------------------------------------------------------
; DATOS opciones_9D11: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (11 bytes)
;   0x9d11..0x9d1c  (11 bytes)
DATA_opciones_9D11:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,002h,008h,009h	; 9d11  qpa.a.a....

; ----------------------------------------------------------------------
; DATOS opciones_9D1C: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9d1c..0x9d26  (10 bytes)
DATA_opciones_9D1C:
	defb 01eh,010h,061h,0a0h,001h,00bh,001h,00ch,001h,00dh	; 9d1c  ..a.......

; ----------------------------------------------------------------------
; DATOS opciones_9D26: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9d26..0x9d30  (10 bytes)
DATA_opciones_9D26:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,00ah	; 9d26  qpa.a.a...

; ----------------------------------------------------------------------
; DATOS opciones_9D30: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9d30..0x9d3a  (10 bytes)
DATA_opciones_9D30:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,013h	; 9d30  qpa.a.a...

; ----------------------------------------------------------------------
; DATOS opciones_9D3A: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (11 bytes)
;   0x9d3a..0x9d45  (11 bytes)
DATA_opciones_9D3A:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,002h,011h,012h	; 9d3a  qpa.a.a....

; ----------------------------------------------------------------------
; DATOS opciones_9D45: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (6 bytes)
;   0x9d45..0x9d4b  (6 bytes)
DATA_opciones_9D45:
	defb 090h,090h,061h,0a0h,04bh,09dh	; 9d45

; ----------------------------------------------------------------------
; DATOS subopciones_9D4B: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9d4b..0x9d4e  (3 bytes)
DATA_subopciones_9D4B:
	defb 00eh,001h,0ffh	; 9d4b

; ----------------------------------------------------------------------
; DATOS opciones_9D4E: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9d4e..0x9d5a  (12 bytes)
DATA_opciones_9D4E:
	defb 0f1h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,000h,001h,002h	; 9d4e  .pa.a.a.....

; ----------------------------------------------------------------------
; DATOS opciones_9D5A: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (13 bytes)
;   0x9d5a..0x9d67  (13 bytes)
DATA_opciones_9D5A:
	defb 075h,070h,061h,0a0h,061h,0a0h,061h,0a0h,002h,000h,001h,001h,005h	; 9d5a  upa.a.a......

; ----------------------------------------------------------------------
; DATOS opciones_9D67: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (15 bytes)
;   0x9d67..0x9d76  (15 bytes)
DATA_opciones_9D67:
	defb 075h,070h,061h,0a0h,061h,0a0h,061h,0a0h,004h,008h,009h,00ah,00bh,001h,006h	; 9d67  upa.a.a........

; ----------------------------------------------------------------------
; DATOS opciones_9D76: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9d76..0x9d80  (10 bytes)
DATA_opciones_9D76:
	defb 01eh,010h,061h,0a0h,001h,003h,001h,004h,001h,007h	; 9d76  ..a.......

; ----------------------------------------------------------------------
; DATOS opciones_9D80: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9d80..0x9d8c  (12 bytes)
DATA_opciones_9D80:
	defb 0f1h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,08ch,09dh,001h,000h	; 9d80  ..a.a.a.....

; ----------------------------------------------------------------------
; DATOS subopciones_9D8C: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9d8c..0x9d8f  (3 bytes)
DATA_subopciones_9D8C:
	defb 00fh,001h,002h	; 9d8c

; ----------------------------------------------------------------------
; DATOS opciones_9D8F: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (4 bytes)
;   0x9d8f..0x9d93  (4 bytes)
DATA_opciones_9D8F:
	defb 010h,010h,093h,09dh	; 9d8f

; ----------------------------------------------------------------------
; DATOS subopciones_9D93: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9d93..0x9d97  (4 bytes)
DATA_subopciones_9D93:
	defb 006h,001h,00ch,000h	; 9d93

; ----------------------------------------------------------------------
; DATOS opciones_9D97: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (16 bytes)
;   0x9d97..0x9da7  (16 bytes)
DATA_opciones_9D97:
	defb 0f7h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,0a7h,09dh,001h,000h,001h,001h,001h,002h	; 9d97  ..a.a.a.........

; ----------------------------------------------------------------------
; DATOS subopciones_9DA7: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (6 bytes)
;   0x9da7..0x9dad  (6 bytes)
DATA_subopciones_9DA7:
	defb 011h,004h,004h,006h,003h,00ah	; 9da7

; ----------------------------------------------------------------------
; DATOS opciones_9DAD: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (4 bytes)
;   0x9dad..0x9db1  (4 bytes)
DATA_opciones_9DAD:
	defb 010h,010h,0b1h,09dh	; 9dad

; ----------------------------------------------------------------------
; DATOS subopciones_9DB1: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9db1..0x9db5  (4 bytes)
DATA_subopciones_9DB1:
	defb 006h,001h,005h,00ch	; 9db1

; ----------------------------------------------------------------------
; DATOS opciones_9DB5: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9db5..0x9dc1  (12 bytes)
DATA_opciones_9DB5:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,003h,000h,001h,002h	; 9db5  qpa.a.a.....

; ----------------------------------------------------------------------
; DATOS opciones_9DC1: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9dc1..0x9dcb  (10 bytes)
DATA_opciones_9DC1:
	defb 071h,070h,061h,0a0h,0cbh,09dh,061h,0a0h,001h,000h	; 9dc1  qpa...a...

; ----------------------------------------------------------------------
; DATOS subopciones_9DCB: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9dcb..0x9dcf  (4 bytes)
DATA_subopciones_9DCB:
	defb 006h,001h,009h,001h	; 9dcb

; ----------------------------------------------------------------------
; DATOS opciones_9DCF: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (13 bytes)
;   0x9dcf..0x9ddc  (13 bytes)
DATA_opciones_9DCF:
	defb 071h,070h,061h,0a0h,061h,0a0h,061h,0a0h,004h,000h,001h,002h,003h	; 9dcf  qpa.a.a......

; ----------------------------------------------------------------------
; DATOS opciones_9DDC: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9ddc..0x9de6  (10 bytes)
DATA_opciones_9DDC:
	defb 093h,090h,061h,0a0h,0e6h,09dh,001h,003h,001h,001h	; 9ddc  ..a.......

; ----------------------------------------------------------------------
; DATOS subopciones_9DE6: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9de6..0x9de9  (3 bytes)
DATA_subopciones_9DE6:
	defb 01ch,001h,004h	; 9de6

; ----------------------------------------------------------------------
; DATOS opciones_9DE9: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (16 bytes)
;   0x9de9..0x9df9  (16 bytes)
DATA_opciones_9DE9:
	defb 0f7h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,0f9h,09dh,001h,000h,001h,004h,001h,005h	; 9de9  ..a.a.a.........

; ----------------------------------------------------------------------
; DATOS subopciones_9DF9: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9df9..0x9dfc  (3 bytes)
DATA_subopciones_9DF9:
	defb 015h,001h,001h	; 9df9

; ----------------------------------------------------------------------
; DATOS opciones_9DFC: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9dfc..0x9e08  (12 bytes)
DATA_opciones_9DFC:
	defb 09eh,090h,061h,0a0h,008h,09eh,001h,005h,001h,006h,001h,007h	; 9dfc  ..a.........

; ----------------------------------------------------------------------
; DATOS subopciones_9E08: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9e08..0x9e0b  (3 bytes)
DATA_subopciones_9E08:
	defb 024h,001h,008h	; 9e08

; ----------------------------------------------------------------------
; DATOS opciones_9E0B: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9e0b..0x9e15  (10 bytes)
DATA_opciones_9E0B:
	defb 071h,070h,061h,0a0h,015h,09eh,061h,0a0h,001h,000h	; 9e0b  qpa...a...

; ----------------------------------------------------------------------
; DATOS subopciones_9E15: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9e15..0x9e19  (4 bytes)
DATA_subopciones_9E15:
	defb 006h,001h,00ah,002h	; 9e15

; ----------------------------------------------------------------------
; DATOS opciones_9E19: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9e19..0x9e23  (10 bytes)
DATA_opciones_9E19:
	defb 071h,070h,023h,09eh,061h,0a0h,061h,0a0h,001h,005h	; 9e19  qp#.a.a...

; ----------------------------------------------------------------------
; DATOS subopciones_9E23: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9e23..0x9e27  (4 bytes)
DATA_subopciones_9E23:
	defb 006h,001h,003h,00bh	; 9e23

; ----------------------------------------------------------------------
; DATOS opciones_9E27: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (14 bytes)
;   0x9e27..0x9e35  (14 bytes)
DATA_opciones_9E27:
	defb 073h,070h,035h,09eh,039h,09eh,061h,0a0h,003h,002h,003h,004h,001h,007h	; 9e27  sp5.9.a.......

; ----------------------------------------------------------------------
; DATOS subopciones_9E35: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9e35..0x9e39  (4 bytes)
DATA_subopciones_9E35:
	defb 006h,001h,003h,00bh	; 9e35

; ----------------------------------------------------------------------
; DATOS subopciones_9E39: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9e39..0x9e3d  (4 bytes)
DATA_subopciones_9E39:
	defb 007h,002h,00ah,009h	; 9e39

; ----------------------------------------------------------------------
; DATOS opciones_9E3D: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9e3d..0x9e47  (10 bytes)
DATA_opciones_9E3D:
	defb 071h,070h,047h,09eh,061h,0a0h,061h,0a0h,001h,000h	; 9e3d  qpG.a.a...

; ----------------------------------------------------------------------
; DATOS subopciones_9E47: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9e47..0x9e4b  (4 bytes)
DATA_subopciones_9E47:
	defb 006h,001h,003h,005h	; 9e47

; ----------------------------------------------------------------------
; DATOS opciones_9E4B: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9e4b..0x9e55  (10 bytes)
DATA_opciones_9E4B:
	defb 071h,070h,055h,09eh,061h,0a0h,061h,0a0h,001h,002h	; 9e4b  qpU.a.a...

; ----------------------------------------------------------------------
; DATOS subopciones_9E55: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9e55..0x9e59  (4 bytes)
DATA_subopciones_9E55:
	defb 006h,001h,003h,005h	; 9e55

; ----------------------------------------------------------------------
; DATOS opciones_9E59: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (16 bytes)
;   0x9e59..0x9e69  (16 bytes)
DATA_opciones_9E59:
	defb 0fbh,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,069h,09eh,001h,000h,001h,003h,001h,004h	; 9e59  ..a.a.a.i.......

; ----------------------------------------------------------------------
; DATOS subopciones_9E69: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9e69..0x9e6c  (3 bytes)
DATA_subopciones_9E69:
	defb 008h,001h,005h	; 9e69

; ----------------------------------------------------------------------
; DATOS opciones_9E6C: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9e6c..0x9e78  (12 bytes)
DATA_opciones_9E6C:
	defb 0f1h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,078h,09eh,001h,000h	; 9e6c  ..a.a.a.x...

; ----------------------------------------------------------------------
; DATOS subopciones_9E78: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9e78..0x9e7c  (4 bytes)
DATA_subopciones_9E78:
	defb 016h,002h,002h,004h	; 9e78

; ----------------------------------------------------------------------
; DATOS opciones_9E7C: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9e7c..0x9e86  (10 bytes)
DATA_opciones_9E7C:
	defb 071h,070h,086h,09eh,061h,0a0h,061h,0a0h,001h,000h	; 9e7c  qp..a.a...

; ----------------------------------------------------------------------
; DATOS subopciones_9E86: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9e86..0x9e8a  (4 bytes)
DATA_subopciones_9E86:
	defb 006h,001h,003h,002h	; 9e86

; ----------------------------------------------------------------------
; DATOS opciones_9E8A: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9e8a..0x9e94  (10 bytes)
DATA_opciones_9E8A:
	defb 071h,070h,094h,09eh,061h,0a0h,061h,0a0h,001h,000h	; 9e8a  qp..a.a...

; ----------------------------------------------------------------------
; DATOS subopciones_9E94: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9e94..0x9e98  (4 bytes)
DATA_subopciones_9E94:
	defb 006h,001h,003h,006h	; 9e94

; ----------------------------------------------------------------------
; DATOS opciones_9E98: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9e98..0x9ea4  (12 bytes)
DATA_opciones_9E98:
	defb 073h,070h,0a4h,09eh,061h,0a0h,061h,0a0h,001h,001h,001h,005h	; 9e98  sp..a.a.....

; ----------------------------------------------------------------------
; DATOS subopciones_9EA4: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9ea4..0x9ea8  (4 bytes)
DATA_subopciones_9EA4:
	defb 006h,001h,003h,006h	; 9ea4

; ----------------------------------------------------------------------
; DATOS opciones_9EA8: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (8 bytes)
;   0x9ea8..0x9eb0  (8 bytes)
DATA_opciones_9EA8:
	defb 016h,010h,061h,0a0h,001h,001h,001h,002h	; 9ea8  ..a.....

; ----------------------------------------------------------------------
; DATOS opciones_9EB0: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9eb0..0x9ebc  (12 bytes)
DATA_opciones_9EB0:
	defb 097h,090h,061h,0a0h,0bch,09eh,001h,001h,001h,000h,001h,003h	; 9eb0  ..a.........

; ----------------------------------------------------------------------
; DATOS subopciones_9EBC: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (5 bytes)
;   0x9ebc..0x9ec1  (5 bytes)
DATA_subopciones_9EBC:
	defb 010h,003h,004h,005h,006h	; 9ebc

; ----------------------------------------------------------------------
; DATOS opciones_9EC1: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (8 bytes)
;   0x9ec1..0x9ec9  (8 bytes)
DATA_opciones_9EC1:
	defb 092h,090h,061h,0a0h,0c9h,09eh,001h,000h	; 9ec1  ..a.....

; ----------------------------------------------------------------------
; DATOS subopciones_9EC9: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (6 bytes)
;   0x9ec9..0x9ecf  (6 bytes)
DATA_subopciones_9EC9:
	defb 009h,004h,001h,002h,003h,004h	; 9ec9

; ----------------------------------------------------------------------
; DATOS opciones_9ECF: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9ecf..0x9edb  (12 bytes)
DATA_opciones_9ECF:
	defb 0f1h,0f0h,061h,0a0h,0dbh,09eh,061h,0a0h,0dfh,09eh,001h,000h	; 9ecf  ..a...a.....

; ----------------------------------------------------------------------
; DATOS subopciones_9EDB: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9edb..0x9edf  (4 bytes)
DATA_subopciones_9EDB:
	defb 006h,001h,009h,001h	; 9edb

; ----------------------------------------------------------------------
; DATOS subopciones_9EDF: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9edf..0x9ee2  (3 bytes)
DATA_subopciones_9EDF:
	defb 015h,001h,003h	; 9edf

; ----------------------------------------------------------------------
; DATOS opciones_9EE2: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (14 bytes)
;   0x9ee2..0x9ef0  (14 bytes)
DATA_opciones_9EE2:
	defb 07bh,070h,061h,0a0h,0f0h,09eh,0f4h,09eh,001h,001h,001h,004h,001h,005h	; 9ee2  {pa...........

; ----------------------------------------------------------------------
; DATOS subopciones_9EF0: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9ef0..0x9ef4  (4 bytes)
DATA_subopciones_9EF0:
	defb 006h,001h,006h,006h	; 9ef0

; ----------------------------------------------------------------------
; DATOS subopciones_9EF4: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (6 bytes)
;   0x9ef4..0x9efa  (6 bytes)
DATA_subopciones_9EF4:
	defb 006h,002h,004h,006h,00ch,007h	; 9ef4

; ----------------------------------------------------------------------
; DATOS opciones_9EFA: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9efa..0x9f06  (12 bytes)
DATA_opciones_9EFA:
	defb 079h,070h,061h,0a0h,006h,09fh,00ah,09fh,001h,000h,001h,005h	; 9efa  ypa.........

; ----------------------------------------------------------------------
; DATOS subopciones_9F06: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9f06..0x9f0a  (4 bytes)
DATA_subopciones_9F06:
	defb 006h,001h,007h,001h	; 9f06

; ----------------------------------------------------------------------
; DATOS subopciones_9F0A: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9f0a..0x9f0e  (4 bytes)
DATA_subopciones_9F0A:
	defb 006h,001h,007h,002h	; 9f0a

; ----------------------------------------------------------------------
; DATOS opciones_9F0E: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (10 bytes)
;   0x9f0e..0x9f18  (10 bytes)
DATA_opciones_9F0E:
	defb 01eh,010h,018h,09fh,001h,009h,001h,00bh,001h,00ah	; 9f0e  ..........

; ----------------------------------------------------------------------
; DATOS subopciones_9F18: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9f18..0x9f1c  (4 bytes)
DATA_subopciones_9F18:
	defb 006h,001h,007h,006h	; 9f18

; ----------------------------------------------------------------------
; DATOS opciones_9F1C: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (8 bytes)
;   0x9f1c..0x9f24  (8 bytes)
DATA_opciones_9F1C:
	defb 00eh,000h,001h,000h,001h,001h,001h,002h	; 9f1c  ........

; ----------------------------------------------------------------------
; DATOS opciones_9F24: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9f24..0x9f30  (12 bytes)
DATA_opciones_9F24:
	defb 076h,070h,030h,09fh,061h,0a0h,061h,0a0h,001h,001h,001h,004h	; 9f24  vp0.a.a.....

; ----------------------------------------------------------------------
; DATOS subopciones_9F30: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9f30..0x9f34  (4 bytes)
DATA_subopciones_9F30:
	defb 006h,001h,002h,002h	; 9f30

; ----------------------------------------------------------------------
; DATOS opciones_9F34: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9f34..0x9f40  (12 bytes)
DATA_opciones_9F34:
	defb 09eh,090h,061h,0a0h,040h,09fh,001h,002h,001h,003h,001h,00ch	; 9f34  ..a.@.......

; ----------------------------------------------------------------------
; DATOS subopciones_9F40: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9f40..0x9f43  (3 bytes)
DATA_subopciones_9F40:
	defb 013h,001h,004h	; 9f40

; ----------------------------------------------------------------------
; DATOS opciones_9F43: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9f43..0x9f4f  (12 bytes)
DATA_opciones_9F43:
	defb 09eh,090h,061h,0a0h,04fh,09fh,001h,005h,001h,006h,001h,007h	; 9f43  ..a.O.......

; ----------------------------------------------------------------------
; DATOS subopciones_9F4F: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9f4f..0x9f52  (3 bytes)
DATA_subopciones_9F4F:
	defb 013h,001h,008h	; 9f4f

; ----------------------------------------------------------------------
; DATOS opciones_9F52: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9f52..0x9f5e  (12 bytes)
DATA_opciones_9F52:
	defb 09eh,090h,061h,0a0h,05eh,09fh,001h,009h,001h,00ah,001h,00ch	; 9f52  ..a.^.......

; ----------------------------------------------------------------------
; DATOS subopciones_9F5E: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (3 bytes)
;   0x9f5e..0x9f61  (3 bytes)
DATA_subopciones_9F5E:
	defb 013h,001h,00bh	; 9f5e

; ----------------------------------------------------------------------
; DATOS opciones_9F61: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9f61..0x9f6d  (12 bytes)
DATA_opciones_9F61:
	defb 0f1h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,06dh,09fh,001h,002h	; 9f61  ..a.a.a.m...

; ----------------------------------------------------------------------
; DATOS subopciones_9F6D: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (6 bytes)
;   0x9f6d..0x9f73  (6 bytes)
DATA_subopciones_9F6D:
	defb 014h,004h,004h,005h,006h,007h	; 9f6d

; ----------------------------------------------------------------------
; DATOS opciones_9F73: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9f73..0x9f7f  (12 bytes)
DATA_opciones_9F73:
	defb 073h,070h,061h,0a0h,061h,0a0h,061h,0a0h,001h,004h,001h,00ch	; 9f73  spa.a.a.....

; ----------------------------------------------------------------------
; DATOS opciones_9F7F: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (14 bytes)
;   0x9f7f..0x9f8d  (14 bytes)
DATA_opciones_9F7F:
	defb 073h,070h,061h,0a0h,061h,0a0h,061h,0a0h,003h,000h,001h,002h,001h,003h	; 9f7f  spa.a.a.......

; ----------------------------------------------------------------------
; DATOS opciones_9F8D: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (16 bytes)
;   0x9f8d..0x9f9d  (16 bytes)
DATA_opciones_9F8D:
	defb 0f7h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,09dh,09fh,001h,000h,001h,003h,001h,004h	; 9f8d  ..a.a.a.........

; ----------------------------------------------------------------------
; DATOS subopciones_9F9D: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9f9d..0x9fa1  (4 bytes)
DATA_subopciones_9F9D:
	defb 01dh,002h,006h,005h	; 9f9d

; ----------------------------------------------------------------------
; DATOS opciones_9FA1: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (16 bytes)
;   0x9fa1..0x9fb1  (16 bytes)
DATA_opciones_9FA1:
	defb 07fh,07ch,0b1h,09fh,0b5h,09fh,061h,0a0h,061h,0a0h,0bbh,09fh,001h,001h,001h,002h	; 9fa1  .|....a.a.......

; ----------------------------------------------------------------------
; DATOS subopciones_9FB1: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9fb1..0x9fb5  (4 bytes)
DATA_subopciones_9FB1:
	defb 01ah,002h,00ah,00bh	; 9fb1

; ----------------------------------------------------------------------
; DATOS subopciones_9FB5: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (6 bytes)
;   0x9fb5..0x9fbb  (6 bytes)
DATA_subopciones_9FB5:
	defb 019h,004h,004h,005h,006h,007h	; 9fb5

; ----------------------------------------------------------------------
; DATOS subopciones_9FBB: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9fbb..0x9fbf  (4 bytes)
DATA_subopciones_9FBB:
	defb 006h,001h,008h,009h	; 9fbb

; ----------------------------------------------------------------------
; DATOS opciones_9FBF: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9fbf..0x9fcb  (12 bytes)
DATA_opciones_9FBF:
	defb 073h,070h,061h,0a0h,0cbh,09fh,0cfh,09fh,001h,000h,001h,004h	; 9fbf  spa.........

; ----------------------------------------------------------------------
; DATOS subopciones_9FCB: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9fcb..0x9fcf  (4 bytes)
DATA_subopciones_9FCB:
	defb 006h,001h,00ah,002h	; 9fcb

; ----------------------------------------------------------------------
; DATOS subopciones_9FCF: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (4 bytes)
;   0x9fcf..0x9fd3  (4 bytes)
DATA_subopciones_9FCF:
	defb 006h,001h,00ah,003h	; 9fcf

; ----------------------------------------------------------------------
; DATOS opciones_9FD3: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (12 bytes)
;   0x9fd3..0x9fdf  (12 bytes)
DATA_opciones_9FD3:
	defb 09eh,090h,061h,0a0h,0dfh,09fh,001h,006h,001h,007h,001h,008h	; 9fd3  ..a.........

; ----------------------------------------------------------------------
; DATOS subopciones_9FDF: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (5 bytes)
;   0x9fdf..0x9fe4  (5 bytes)
DATA_subopciones_9FDF:
	defb 025h,003h,009h,00ah,00bh	; 9fdf

; ----------------------------------------------------------------------
; DATOS opciones_9FE4: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E); lo leen p00:5401 (16 bytes)
;   0x9fe4..0x9ff4  (16 bytes)
DATA_opciones_9FE4:
	defb 0f7h,0f0h,061h,0a0h,061h,0a0h,061h,0a0h,0f4h,09fh,001h,001h,001h,002h,001h,003h	; 9fe4  ..a.a.a.........

; ----------------------------------------------------------------------
; DATOS subopciones_9FF4: [0xE8A3][n] y la lista que recorren p00:5567 y
;   p00:5574; la apunta un registro de 0x988E y acaba donde empieza el
;   siguiente; lo leen p00:5401 (5 bytes)
;   0x9ff4..0x9ff9  (5 bytes)
DATA_subopciones_9FF4:
	defb 026h,003h,006h,008h,007h	; 9ff4

; ----------------------------------------------------------------------
; DATOS opciones_9FF9: [m1][m2], un puntero por bit de m2 (p00:5532) y, por
;   cada bit de m1 que no esta en m2, [n] y n numeros de mensaje
;   (p00:5466-547E) (sigue en el banco 8, en 0xA000); lo leen p00:5401 (7
;   bytes)
;   0x9ff9..0xa000  (7 bytes)
DATA_opciones_9FF9:
	defb 0ffh,000h,001h,007h,001h,000h,001h	; 9ff9
