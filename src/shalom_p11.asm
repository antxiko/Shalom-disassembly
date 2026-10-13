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
	ld a,(de)			;a000
	and b			;a001
	ld (hl),a			;a002
	inc de			;a003
	inc hl			;a004
	exx			;a005
	djnz $-7		;a006
	exx			;a008
	ld a,016h		;a009
	call 040a1h		;a00b
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


L_A0CC:
	call L_A154		;a0cc
	ld a,(ix+001h)		;a0cf
	call 040abh		;a0d2

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


L_A0DB:
	call L_A154		;a0db
	ld a,(ix+001h)		;a0de
	call 040abh		;a0e1

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


L_A0EA:
	call L_A154		;a0ea
	ld a,(ix+001h)		;a0ed
	call 040abh		;a0f0

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
	ld (ix+005h),a		;a103
	ld (ix+01bh),003h		;a106
	ld (ix+00ah),015h		;a10a
	ld (ix+00dh),001h		;a10e
	ld (ix+01dh),000h		;a112
	ld (ix+002h),000h		;a116
	ld (ix+004h),080h		;a11a
	ld (ix+003h),0feh		;a11e
	jp 09ea1h		;a122
L_A125:
	ld de,00050h		;a125
	ld l,(ix+002h)		;a128
	ld h,(ix+003h)		;a12b
	add hl,de			;a12e
	ld (ix+002h),l		;a12f
	ld (ix+003h),h		;a132
	call 09c58h		;a135
	ld a,(ix+007h)		;a138
	cp 018h		;a13b
	ret nc			;a13d
	jp 09ea1h		;a13e
L_A141:
	ld de,0ff80h		;a141
	ld l,(ix+002h)		;a144
	ld h,(ix+003h)		;a147
	add hl,de			;a14a
	ld (ix+002h),l		;a14b
	ld (ix+003h),h		;a14e
	jp 09c58h		;a151
L_A154:
	ld a,(ix+009h)		;a154
	cp 020h		;a157
	jr c,L_A161		;a159
	ld a,(ix+007h)		;a15b
	cp 068h		;a15e
	ret c			;a160
L_A161:
	pop hl			;a161
	jp L_AC0E		;a162
L_A165:
	xor a			;a165
	ld (ix+00dh),002h		;a166
	ld (ix+00ah),001h		;a16a
	ld (ix+01dh),a		;a16e
	ld (ix+002h),a		;a171
	ld (ix+003h),a		;a174
	ld (ix+004h),a		;a177
	ld (ix+005h),0f8h		;a17a
	ret			;a17e
L_A17F:
	ld a,(ix+001h)		;a17f
	call 040abh		;a182

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
	call L_AAF5		;a197
	ld (ix+010h),000h		;a19a
	ld hl,0a32ah		;a19e
	ld de,0ec60h		;a1a1
	ld bc,00028h		;a1a4
	ldir		;a1a7
	call L_A264		;a1a9
	call L_A287		;a1ac
	inc (ix+001h)		;a1af
	ret			;a1b2
L_A1B3:
	ld c,000h		;a1b3
	call 04313h		;a1b5
	ld a,(0e886h)		;a1b8
	and a			;a1bb
	ret nz			;a1bc
	ld a,(0e887h)		;a1bd
	and a			;a1c0
	ret nz			;a1c1
	call 050ebh		;a1c2
	inc (ix+001h)		;a1c5
	ret			;a1c8
L_A1C9:
	call L_AAE8		;a1c9
	inc (ix+001h)		;a1cc
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
	call L_A287		;a1ea
	ld (ix+010h),001h		;a1ed
	call L_A287		;a1f1
	ld hl,(0ec64h)		;a1f4
	ld de,0ed4ch		;a1f7
	or a			;a1fa
	sbc hl,de		;a1fb
	ld a,0c2h		;a1fd
	cp l			;a1ff
	ret nz			;a200
	inc (ix+001h)		;a201
	ret			;a204
L_A205:
	ld a,(0ea21h)		;a205
	cp 004h		;a208
	ret nz			;a20a
	inc (ix+001h)		;a20b
	ret			;a20e
L_A20F:
	ld c,001h		;a20f
	call 04313h		;a211
	ld a,(0e886h)		;a214
	or a			;a217
	ret nz			;a218
	ld a,(0e887h)		;a219
	and a			;a21c
	ret nz			;a21d
	call 050ebh		;a21e
	inc (ix+001h)		;a221
	ret			;a224
L_A225:
	ld a,(0ea20h)		;a225
	or a			;a228
	ret nz			;a229
	inc (ix+001h)		;a22a
	ret			;a22d
L_A22E:
	ld c,002h		;a22e
	call 04313h		;a230
	ld a,(0e886h)		;a233
	or a			;a236
	ret nz			;a237
	ld a,(0e887h)		;a238
	and a			;a23b
	ret nz			;a23c
	call 050ebh		;a23d
	inc (ix+001h)		;a240
	ret			;a243
L_A244:
	ld hl,0eb7dh		;a244
	set 0,(hl)		;a247
	xor a			;a249
	ld (0e368h),a		;a24a
	inc a			;a24d
	ld (0e360h),a		;a24e
	inc a			;a251
	ld (0e337h),a		;a252
	ld hl,0012ch		;a255
	ld (0e36ah),hl		;a258
	ld hl,08030h		;a25b
	ld (0e3c1h),hl		;a25e
	jp 058eah		;a261
L_A264:
	ld hl,0a352h		;a264
	ld de,0ed00h		;a267
	ld b,00fh		;a26a
L_A26C:
	push de			;a26c
	ld a,(hl)			;a26d
	inc hl			;a26e
	call 040a6h		;a26f
	call L_A27E		;a272
	pop de			;a275
	ld a,020h		;a276
	call 040a6h		;a278
	djnz L_A26C		;a27b
	ret			;a27d
L_A27E:
	ld a,(hl)			;a27e
	inc hl			;a27f
	cp 0ffh		;a280
	ret z			;a282
	ld (de),a			;a283
	inc de			;a284
	jr L_A27E		;a285
L_A287:
	ld hl,0ec60h		;a287
	ld b,00ah		;a28a
L_A28C:
	ld a,(ix+010h)		;a28c
	or a			;a28f
	jr z,L_A29A		;a290
	ld a,00bh		;a292
	sub b			;a294
	ld (ix+010h),a		;a295
	jr L_A2B2		;a298
L_A29A:
	ld a,(0ea41h)		;a29a
	cp 002h		;a29d
	jr nz,L_A2B2		;a29f
	ld a,00bh		;a2a1
	sub b			;a2a3
	ld c,a			;a2a4
	ld a,(0ea51h)		;a2a5
	cp c			;a2a8
	jr nz,L_A2B2		;a2a9
	ld a,(ix+00fh)		;a2ab
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
	call 043a4h		;a2be
	ex de,hl			;a2c1
	pop de			;a2c2
	push bc			;a2c3
	call L_A2D9		;a2c4
	pop bc			;a2c7
	pop hl			;a2c8
L_A2C9:
	djnz L_A28C		;a2c9
	ld a,(ix+010h)		;a2cb
	or a			;a2ce
	ret nz			;a2cf
	jp 05e45h		;a2d0
L_A2D3:
	inc hl			;a2d3
	inc hl			;a2d4
	inc hl			;a2d5
	inc hl			;a2d6
	jr L_A2C9		;a2d7
L_A2D9:
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
	ld (de),a			;a2e7
	inc de			;a2e8
	djnz L_A2DF		;a2e9
	pop bc			;a2eb
	pop de			;a2ec
	ld a,020h		;a2ed
	call 040a6h		;a2ef
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


L_A47A:
	call L_A503		;a47a
	ld a,(ix+001h)		;a47d
	call 040abh		;a480

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
	inc (ix+001h)		;a4b9
	ret			;a4bc
L_A4BD:
	ld hl,0f060h		;a4bd
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
L_A4D4:
	ld hl,0f060h		;a4d4
	ld de,0f061h		;a4d7
	ld bc,00013h		;a4da
	ld a,0e0h		;a4dd
	ld (hl),a			;a4df
	ldir		;a4e0
	ret			;a4e2
L_A4E3:
	ld hl,0a4efh		;a4e3
	ld de,0f060h		;a4e6
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


L_A503:
	ld a,(ix+001h)		;a503
	cp 00ah		;a506
	ret nc			;a508
	ld a,(0e003h)		;a509
	and 007h		;a50c
	ld hl,0a522h		;a50e
	call 040a1h		;a511
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
	call L_A4E3		;a52a
	ld hl,0bdaah		;a52d
	ld de,0ed00h		;a530
	ld bc,001e0h		;a533
	ldir		;a536
	call 050ebh		;a538
	ld hl,00079h		;a53b
	ld (0eb1bh),hl		;a53e
	ld hl,00077h		;a541
	ld (0eb1dh),hl		;a544
	ld a,0ffh		;a547
	ld (0eb1fh),a		;a549
	ld hl,0000ch		;a54c
	ld (0e3e0h),hl		;a54f
	xor a			;a552
	ld (0e3b1h),a		;a553
	inc (ix+001h)		;a556
	ret			;a559
L_A55A:
	ld c,000h		;a55a
	call 04313h		;a55c
	ld a,(0e886h)		;a55f
	or a			;a562
	ret nz			;a563
	ld a,(0e887h)		;a564
	and a			;a567
	ret nz			;a568
	call 050ebh		;a569
	ld (ix+010h),0a0h		;a56c
	inc (ix+001h)		;a570
	ret			;a573
L_A574:
	call 05e45h		;a574
	inc (ix+001h)		;a577
	ret			;a57a
L_A57B:
	call L_AB02		;a57b
	dec (ix+010h)		;a57e
	ret nz			;a581
	ld a,001h		;a582
	ld (0e3b1h),a		;a584
	inc (ix+001h)		;a587
	ret			;a58a
L_A58B:
	ld a,(0e3b1h)		;a58b
	cp 002h		;a58e
	ret nz			;a590
	push ix		;a591
	ld b,007h		;a593
	ld ix,0ea20h		;a595
L_A599:
	push bc			;a599
	ld a,(ix+000h)		;a59a
	or a			;a59d
	call nz,L_AC0E		;a59e
	ld de,00014h		;a5a1
	add ix,de		;a5a4
	pop bc			;a5a6
	djnz L_A599		;a5a7
	pop ix		;a5a9
	inc (ix+001h)		;a5ab
	ret			;a5ae
L_A5AF:
	ld c,001h		;a5af
	call 04313h		;a5b1
	ld a,(0e886h)		;a5b4
	or a			;a5b7
	ret nz			;a5b8
	ld a,(0e887h)		;a5b9
	and a			;a5bc
	ret nz			;a5bd
	call 050ebh		;a5be
	call L_AB0F		;a5c1
	inc (ix+001h)		;a5c4
	ret			;a5c7
L_A5C8:
	ld a,(0e3b1h)		;a5c8
	cp 003h		;a5cb
	ret nz			;a5cd
	inc (ix+001h)		;a5ce
	call 06032h		;a5d1
	ret			;a5d4
L_A5D5:
	call L_A610		;a5d5
	ld c,003h		;a5d8
	call 04313h		;a5da
	ld a,(0e886h)		;a5dd
	or a			;a5e0
	ret nz			;a5e1
	inc (ix+001h)		;a5e2
	ld (ix+01fh),03ch		;a5e5
	ret			;a5e9
L_A5EA:
	call L_A610		;a5ea
	dec (ix+01fh)		;a5ed
	ret nz			;a5f0
	call L_A619		;a5f1
	ld a,004h		;a5f4
	ld (0e3b1h),a		;a5f6
	ld hl,0ed00h		;a5f9
	ld de,0ed01h		;a5fc
	xor a			;a5ff
	ld (hl),a			;a600
	ld bc,001dfh		;a601
	ldir		;a604
	call 05e45h		;a606
	call 050ebh		;a609
	inc (ix+001h)		;a60c
	ret			;a60f
L_A610:
	ld a,(0e003h)		;a610
	and 001h		;a613
	ld b,0efh		;a615
	jr z,L_A61B		;a617
L_A619:
	ld b,0e0h		;a619
L_A61B:
	jp 058a7h		;a61b
L_A61E:
	call L_A4BD		;a61e
	ret nz			;a621
	ld a,(0e3b1h)		;a622
	cp 005h		;a625
	ret nz			;a627
	call L_A4D4		;a628
	ld hl,00155h		;a62b
	ld (0e363h),hl		;a62e
	ld hl,0ea00h		;a631
	ld (0e365h),hl		;a634
	ld a,002h		;a637
	ld (0e360h),a		;a639
	xor a			;a63c
	ld (0e8a6h),a		;a63d
	ld a,001h		;a640
	ld (0e8a0h),a		;a642
	call 050ebh		;a645
	inc (ix+001h)		;a648
	ret			;a64b
L_A64C:
	call L_ABC4		;a64c
	ld a,(ix+001h)		;a64f
	call 040abh		;a652

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
	call 06037h		;a659
	ld (ix+00ah),01dh		;a65c
	ld a,r		;a660
	ld b,a			;a662
	ld a,(0e003h)		;a663
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
	ld (ix+009h),a		;a676
	ld (ix+007h),010h		;a679
	ld a,b			;a67d
	and 007h		;a67e
	ld hl,0a692h		;a680
	call 040a1h		;a683
	ld a,(hl)			;a686
	ld (ix+005h),a		;a687
	ld (ix+003h),008h		;a68a
	inc (ix+001h)		;a68e
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
	ld a,(0e003h)		;a6a4
	add a,b			;a6a7
	and 003h		;a6a8
	ld hl,0a6c7h		;a6aa
	call 040a1h		;a6ad
	ld a,(hl)			;a6b0
	ld (ix+00ah),a		;a6b1
	ld a,(ix+009h)		;a6b4
	add a,010h		;a6b7
	cp 020h		;a6b9
	jp c,L_AC0E		;a6bb
	ld a,(ix+007h)		;a6be
	cp 080h		;a6c1
	ret c			;a6c3
	jp L_AC0E		;a6c4

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


L_A6CB:
	ld a,(ix+001h)		;a6cb
	call 040abh		;a6ce

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
	ld (ix+00ah),01ah		;a6d7
	ld (ix+005h),0f8h		;a6db
	inc (ix+001h)		;a6df
	ret			;a6e2
L_A6E3:
	ld a,(0e003h)		;a6e3
	and 001h		;a6e6
	ld a,01ah		;a6e8
	jr z,L_A6ED		;a6ea
	inc a			;a6ec
L_A6ED:
	ld (ix+00ah),a		;a6ed
	call L_ABDB		;a6f0
	ld a,(ix+009h)		;a6f3
	cp 090h		;a6f6
	ret nc			;a6f8
	ld (ix+009h),088h		;a6f9
	inc (ix+001h)		;a6fd
	call 0603ch		;a700
	ret			;a703
L_A704:
	ld a,(0ea01h)		;a704
	cp 009h		;a707
	jr z,L_A713		;a709
	cp 008h		;a70b
	ret nz			;a70d
	ld (ix+00ah),01ch		;a70e
	ret			;a712
L_A713:
	ld (ix+00ah),01ah		;a713
	ret			;a717
L_A718:
	ld a,(0e3fch)		;a718
	or a			;a71b
	ret z			;a71c
	ld ix,0ea00h		;a71d
	ld b,008h		;a721
L_A723:
	push bc			;a723
	ld a,(ix+000h)		;a724
	and a			;a727
	jr z,L_A73E		;a728
	bit 0,(ix+00dh)		;a72a
	call nz,L_A747		;a72e
	ld a,(ix+00bh)		;a731
	and a			;a734
	jr z,L_A73E		;a735
	bit 1,(ix+00dh)		;a737
	call nz,L_A819		;a73b
L_A73E:
	ld de,00020h		;a73e
	add ix,de		;a741
	pop bc			;a743
	djnz L_A723		;a744
	ret			;a746
L_A747:
	ld hl,0e3d8h		;a747
	ld a,(hl)			;a74a
	and a			;a74b
	jr z,L_A750		;a74c
	dec (hl)			;a74e
	ret nz			;a74f
L_A750:
	ld a,(0e3e5h)		;a750
	ld e,a			;a753
	ld a,(0e3e7h)		;a754
	ld d,a			;a757
	ld a,(ix+000h)		;a758
	dec a			;a75b
	ld hl,0a7edh		;a75c
	add a,a			;a75f
	call 040a1h		;a760
	push hl			;a763
	pop iy		;a764
	ld a,e			;a766
	sub (ix+007h)		;a767
	jr nc,L_A76E		;a76a
	neg		;a76c
L_A76E:
	cp (iy+000h)		;a76e
	ret nc			;a771
	ld a,d			;a772
	sub (ix+009h)		;a773
	jr nc,L_A77A		;a776
	neg		;a778
L_A77A:
	cp (iy+001h)		;a77a
	ret nc			;a77d
	ld a,(ix+000h)		;a77e
	dec a			;a781
	call 040abh		;a782

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
	call 0459ch		;a7b1
	ret			;a7b4
L_A7B5:
	call 0459ch		;a7b5
	ld a,(0e9e4h)		;a7b8
	or a			;a7bb
	jr z,L_A7C5		;a7bc
	ld hl,0e3b4h		;a7be
	inc (hl)			;a7c1
	ld a,(hl)			;a7c2
	rra			;a7c3
	ret nc			;a7c4
L_A7C5:
	ld hl,0e3f6h		;a7c5
	dec (hl)			;a7c8
	ld a,040h		;a7c9
	jr L_A7E9		;a7cb
L_A7CD:
	call 0459ch		;a7cd
	ld a,(0e9e4h)		;a7d0
	or a			;a7d3
	jr z,L_A7DD		;a7d4
	ld hl,0e3b4h		;a7d6
	inc (hl)			;a7d9
	ld a,(hl)			;a7da
	rra			;a7db
	ret nc			;a7dc
L_A7DD:
	ld hl,0e3f6h		;a7dd
	dec (hl)			;a7e0
	ld a,020h		;a7e1
	jr L_A7E9		;a7e3
L_A7E5:
	call 0459ch		;a7e5
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


L_A819:
	ld de,0ec30h		;a819
	ld b,003h		;a81c
L_A81E:
	push bc			;a81e
	ld a,(de)			;a81f
	push de			;a820
	and a			;a821
	call nz,L_A82F		;a822
	pop de			;a825
	ld a,010h		;a826
	call 040a6h		;a828
	pop bc			;a82b
	djnz L_A81E		;a82c
	ret			;a82e
L_A82F:
	ld (0e8e0h),de		;a82f
	ld a,(ix+000h)		;a833
	dec a			;a836
	ld hl,0a96fh		;a837
	add a,a			;a83a
	call 040a1h		;a83b
	push hl			;a83e
	pop iy		;a83f
	ld a,009h		;a841
	call 040a6h		;a843
	ld a,(de)			;a846
	sub (ix+007h)		;a847
	jr nc,L_A84E		;a84a
	neg		;a84c
L_A84E:
	cp (iy+000h)		;a84e
	ret nc			;a851
	inc de			;a852
	inc de			;a853
	ld a,(de)			;a854
	sub (ix+009h)		;a855
	jr nc,L_A85C		;a858
	neg		;a85a
L_A85C:
	cp (iy+001h)		;a85c
	ret nc			;a85f
	ld a,(ix+000h)		;a860
	dec a			;a863
	call 040abh		;a864

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
	call 0602dh		;a893
	ret			;a896
L_A897:
	call 0602dh		;a897
	ld de,(0e8e0h)		;a89a
	xor a			;a89e
	ld (de),a			;a89f
	ld (ix+001h),004h		;a8a0
	dec (ix+00bh)		;a8a4
	ret nz			;a8a7
	ld (ix+001h),005h		;a8a8
	ld a,040h		;a8ac
	ld (0e004h),a		;a8ae
	call 04560h		;a8b1
	ret			;a8b4
L_A8B5:
	call 0602dh		;a8b5
	ld de,(0e8e0h)		;a8b8
	xor a			;a8bc
	ld (de),a			;a8bd
	dec (ix+00bh)		;a8be
	ret nz			;a8c1
	ld (ix+001h),002h		;a8c2
	ld a,040h		;a8c6
	ld (0e004h),a		;a8c8
	call 04560h		;a8cb
	ret			;a8ce
L_A8CF:
	call 0602dh		;a8cf
	ld de,(0e8e0h)		;a8d2
	xor a			;a8d6
	ld (de),a			;a8d7
	inc (ix+01ch)		;a8d8
	ld a,(ix+01ch)		;a8db
	rra			;a8de
	ret c			;a8df
	dec (ix+00bh)		;a8e0
	ret nz			;a8e3
	ld (ix+001h),004h		;a8e4
	ld a,040h		;a8e8
	ld (0e004h),a		;a8ea
	call 04560h		;a8ed
	ret			;a8f0
L_A8F1:
	call 0602dh		;a8f1
	ret			;a8f4
L_A8F5:
	call 0602dh		;a8f5
	ld de,(0e8e0h)		;a8f8
	xor a			;a8fc
	ld (de),a			;a8fd
	ld a,(ix+007h)		;a8fe
	cp 088h		;a901
	ld hl,00000h		;a903
	ld de,00403h		;a906
	jr z,L_A91C		;a909
	ld a,088h		;a90b
	sub (ix+007h)		;a90d
	srl a		;a910
	srl a		;a912
	srl a		;a914
	ld e,a			;a916
	inc e			;a917
	ld d,003h		;a918
	ld h,008h		;a91a
L_A91C:
	ld (ix+01bh),e		;a91c
	ld (ix+01dh),d		;a91f
	ld (ix+002h),l		;a922
	ld (ix+003h),h		;a925
	ld (ix+004h),000h		;a928
	ld (ix+005h),000h		;a92c
	dec (ix+00bh)		;a930
	ret nz			;a933
	ld (ix+001h),002h		;a934
	ld a,040h		;a938
	ld (0e004h),a		;a93a
	call 04560h		;a93d
	ret			;a940
L_A941:
	call 0602dh		;a941
	ld de,(0e8e0h)		;a944
	xor a			;a948
	ld (de),a			;a949
	inc (ix+01ch)		;a94a
	ld a,(ix+01ch)		;a94d
	rra			;a950
	ret c			;a951
	dec (ix+00bh)		;a952
	ret nz			;a955
	ld (ix+001h),002h		;a956
	ld a,040h		;a95a
	ld (0e004h),a		;a95c
	call 04560h		;a95f
	ret			;a962
L_A963:
	call 0602dh		;a963
	ret			;a966
L_A967:
	ld de,(0e8e0h)		;a967
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


L_A99B:
	ld a,(0e3f7h)		;a99b
	or a			;a99e
	ret nz			;a99f
	push ix		;a9a0
	call L_A9A8		;a9a2
	pop ix		;a9a5
	ret			;a9a7
L_A9A8:
	ld a,(0e3a1h)		;a9a8
	sub 002h		;a9ab
	ret c			;a9ad
	call 040abh		;a9ae

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
	call 0600fh		;a9c7
	ld e,(ix+007h)		;a9ca
	ld d,(ix+009h)		;a9cd
	ld c,013h		;a9d0
	push de			;a9d2
	call L_AB76		;a9d3
	pop de			;a9d6
	ld c,014h		;a9d7
	push de			;a9d9
	call L_AB76		;a9da
	pop de			;a9dd
	ld c,015h		;a9de
	jp L_AB76		;a9e0
L_A9E3:
	ret			;a9e3
L_A9E4:
	ld hl,0e3a6h		;a9e4
	dec (hl)			;a9e7
	ret nz			;a9e8
	ld a,(0ea20h)		;a9e9
	and a			;a9ec
	jr z,L_A9F1		;a9ed
	inc (hl)			;a9ef
	ret			;a9f0
L_A9F1:
	ld (hl),018h		;a9f1
	ld a,r		;a9f3
	bit 1,a		;a9f5
	ld a,(0ea1eh)		;a9f7
	ld hl,0ea13h		;a9fa
	ld de,0aa36h		;a9fd
	ld c,000h		;aa00
	jr z,L_AA0E		;aa02
	ld a,(0ea1fh)		;aa04
	ld hl,0ea14h		;aa07
	ld de,0aa3ch		;aa0a
	inc c			;aa0d
L_AA0E:
	ld (hl),001h		;aa0e
	add a,a			;aa10
	call 040a6h		;aa11
	ex de,hl			;aa14
	ld e,(hl)			;aa15
	inc hl			;aa16
	ld d,(hl)			;aa17
	ld ix,0ea20h		;aa18
	ld (ix+000h),00bh		;aa1c
	ld (ix+001h),000h		;aa20
	ld (ix+006h),000h		;aa24
	ld (ix+007h),e		;aa28
	ld (ix+008h),000h		;aa2b
	ld (ix+009h),d		;aa2f
	ld (ix+01fh),c		;aa32
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
	call L_AA65		;aa42
	ld hl,0e3a6h		;aa45
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
	ld ix,0ea20h		;aa5c
	ld b,003h		;aa60
	jp L_AB7D		;aa62
L_AA65:
	ld a,(0ec30h)		;aa65
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
	jp L_AB7D		;aa7c
L_AA7F:
	ld hl,0e3a6h		;aa7f
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
	ld ix,0ea20h		;aa96
	ld b,003h		;aa9a
	jp L_AB7D		;aa9c
L_AA9F:
	ld hl,(0e401h)		;aa9f
	ld a,h			;aaa2
	add a,l			;aaa3
	cp 002h		;aaa4
	ret nc			;aaa6
	ld a,(0e3aah)		;aaa7
	or a			;aaaa
	ret z			;aaab
	ld hl,0e3a4h		;aaac
	inc (hl)			;aaaf
	ld a,(hl)			;aab0
	and 03fh		;aab1
	ret nz			;aab3
	ld a,(0e401h)		;aab4
	or a			;aab7
	jr nz,L_AAC8		;aab8
	ld d,068h		;aaba
	ld a,(0e3aah)		;aabc
	rra			;aabf
	jr c,L_AACA		;aac0
	ld a,(0e402h)		;aac2
	or a			;aac5
	jr nz,L_AACA		;aac6
L_AAC8:
	ld d,090h		;aac8
L_AACA:
	ld e,024h		;aaca
	ld c,00eh		;aacc
	call L_AB76		;aace
	ret nc			;aad1
	ld hl,0e3aah		;aad2
	dec (hl)			;aad5
	ret			;aad6
L_AAD7:
	push ix		;aad7
	call L_AADF		;aad9
	pop ix		;aadc
	ret			;aade
L_AADF:
	ld c,00fh		;aadf
	ld e,040h		;aae1
	ld d,078h		;aae3
	jp L_AB76		;aae5
L_AAE8:
	push ix		;aae8
	ld c,012h		;aaea
	ld de,06010h		;aaec
	call L_AB76		;aaef
	pop ix		;aaf2
	ret			;aaf4
L_AAF5:
	push ix		;aaf5
	ld c,017h		;aaf7
	ld de,07820h		;aaf9
	call L_AB76		;aafc
	pop ix		;aaff
	ret			;ab01
L_AB02:
	push ix		;ab02
	ld c,018h		;ab04
	ld de,0f0f0h		;ab06
	call L_AB76		;ab09
	pop ix		;ab0c
	ret			;ab0e
L_AB0F:
	push ix		;ab0f
	ld c,019h		;ab11
	ld de,0f060h		;ab13
	call L_AB76		;ab16
	pop ix		;ab19
	ret			;ab1b
L_AB1C:
	call L_AB5D		;ab1c
	ld hl,0e3a5h		;ab1f
	inc (hl)			;ab22
	ld a,(hl)			;ab23
	and 01fh		;ab24
	ret nz			;ab26
	call 043d0h		;ab27
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
	call L_AE13		;ab37
	ld b,a			;ab3a
	ld a,(0e3a7h)		;ab3b
	and b			;ab3e
	pop de			;ab3f
	jr nz,L_AB4F		;ab40
	ld e,008h		;ab42
	ld c,016h		;ab44
	exx			;ab46
	ld ix,0ea20h		;ab47
	ld b,003h		;ab4b
	jr L_AB7D		;ab4d
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
L_AB5D:
	ld hl,0e3a4h		;ab5d
	inc (hl)			;ab60
	ld a,(hl)			;ab61
	and 03fh		;ab62
	ret nz			;ab64
	call 0600fh		;ab65
	ld c,00ah		;ab68
	ld de,0c050h		;ab6a
	exx			;ab6d
	ld ix,0ea80h		;ab6e
	ld b,004h		;ab72
	jr L_AB7D		;ab74
L_AB76:
	exx			;ab76
	ld ix,0ea20h		;ab77
	ld b,007h		;ab7b
L_AB7D:
	ld a,(ix+000h)		;ab7d
	or a			;ab80
	jr nz,L_AB9A		;ab81
	exx			;ab83
	ld (ix+001h),a		;ab84
	ld (ix+000h),c		;ab87
	ld (ix+006h),000h		;ab8a
	ld (ix+007h),e		;ab8e
	ld (ix+008h),000h		;ab91
	ld (ix+009h),d		;ab95
	scf			;ab98
	ret			;ab99
L_AB9A:
	ld de,00020h		;ab9a
	add ix,de		;ab9d
	djnz L_AB7D		;ab9f
	exx			;aba1
	and a			;aba2
	ret			;aba3
L_ABA4:
	ld d,(ix+003h)		;aba4
	ld e,(ix+002h)		;aba7
	call 043adh		;abaa
	ld (ix+003h),d		;abad
	ld (ix+002h),e		;abb0
	ret			;abb3
L_ABB4:
	ld d,(ix+005h)		;abb4
	ld e,(ix+004h)		;abb7
	call 043adh		;abba
	ld (ix+005h),d		;abbd
	ld (ix+004h),e		;abc0
	ret			;abc3
L_ABC4:
	call L_ABDB		;abc4
L_ABC7:
	ld h,(ix+007h)		;abc7
	ld l,(ix+006h)		;abca
	ld d,(ix+003h)		;abcd
	ld e,(ix+002h)		;abd0
	add hl,de			;abd3
	ld (ix+007h),h		;abd4
	ld (ix+006h),l		;abd7
	ret			;abda
L_ABDB:
	ld h,(ix+009h)		;abdb
	ld l,(ix+008h)		;abde
	ld d,(ix+005h)		;abe1
	ld e,(ix+004h)		;abe4
	add hl,de			;abe7
	ld (ix+009h),h		;abe8
	ld (ix+008h),l		;abeb
	ret			;abee
L_ABEF:
	call L_ABFA		;abef
	ex de,hl			;abf2
L_ABF3:
	ld (ix+003h),d		;abf3
	ld (ix+002h),e		;abf6
	ret			;abf9
L_ABFA:
	ld (ix+005h),d		;abfa
	ld (ix+004h),e		;abfd
	ret			;ac00
L_AC01:
	call L_AC09		;ac01
L_AC04:
	ld de,00000h		;ac04
	jr L_ABF3		;ac07
L_AC09:
	ld de,00000h		;ac09
	jr L_ABFA		;ac0c
L_AC0E:
	push ix		;ac0e
	pop hl			;ac10
	ld d,h			;ac11
	ld e,l			;ac12
	inc de			;ac13
	ld (hl),000h		;ac14
	ld bc,0001fh		;ac16
	ldir		;ac19
	ret			;ac1b
L_AC1C:
	ld a,(0ea00h)		;ac1c
	cp 001h		;ac1f
	ret z			;ac21
	cp 009h		;ac22
	jr nz,L_AC2C		;ac24
	ld a,(0ea01h)		;ac26
	cp 00ah		;ac29
	ret nc			;ac2b
L_AC2C:
	ld ix,0ea20h		;ac2c
	ld de,0f020h		;ac30
	ld c,008h		;ac33
	exx			;ac35
	ld b,007h		;ac36
L_AC38:
	exx			;ac38
	ld a,(ix+000h)		;ac39
	or a			;ac3c
	jr z,L_AC46		;ac3d
	ld a,(ix+00eh)		;ac3f
	rra			;ac42
	call nc,L_AC5A		;ac43
L_AC46:
	exx			;ac46
	ld de,00020h		;ac47
	add ix,de		;ac4a
	djnz L_AC38		;ac4c
	exx			;ac4e
	ex de,hl			;ac4f
	ld b,c			;ac50
L_AC51:
	ld (hl),0e0h		;ac51
	inc hl			;ac53
	inc hl			;ac54
	inc hl			;ac55
	inc hl			;ac56
	djnz L_AC51		;ac57
	ret			;ac59
L_AC5A:
	ld a,(ix+00ah)		;ac5a
	ld hl,0ac85h		;ac5d
	add a,a			;ac60
	call 040a1h		;ac61
	ld a,(hl)			;ac64
	inc hl			;ac65
	ld h,(hl)			;ac66
	ld l,a			;ac67
	ld a,(hl)			;ac68
	inc hl			;ac69
	ld b,a			;ac6a
L_AC6B:
	ld a,(hl)			;ac6b
	add a,(ix+007h)		;ac6c
	ld (de),a			;ac6f
	inc hl			;ac70
	inc de			;ac71
	ld a,(hl)			;ac72
	add a,(ix+009h)		;ac73
	ld (de),a			;ac76
	inc hl			;ac77
	inc de			;ac78
	ld a,(hl)			;ac79
	ld (de),a			;ac7a
	inc hl			;ac7b
	inc de			;ac7c
	ld a,(hl)			;ac7d
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


L_AD9B:
	call L_ADE0		;ad9b
	ld a,(ix+000h)		;ad9e
	or a			;ada1
	ret z			;ada2
	ld l,(ix+007h)		;ada3
	ld h,(ix+009h)		;ada6
	call 04509h		;ada9
	ld a,h			;adac
	sub 0b5h		;adad
	ld h,a			;adaf
	ld a,(ix+00ah)		;adb0
	ld b,a			;adb3
	add a,a			;adb4
	add a,b			;adb5
	ld de,0add4h		;adb6
	call 040a6h		;adb9
	ld b,003h		;adbc
L_ADBE:
	push bc			;adbe
	ld a,(de)			;adbf
	call L_ADCC		;adc0
	inc de			;adc3
	ld bc,00020h		;adc4
	add hl,bc			;adc7
	pop bc			;adc8
	djnz L_ADBE		;adc9
	ret			;adcb
L_ADCC:
	call 0592bh		;adcc
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


L_ADE0:
	ld a,(ix+001h)		;ade0
	dec a			;ade3
	jr z,L_AE24		;ade4
	dec a			;ade6
	jr z,L_AE38		;ade7
	ld a,(ix+009h)		;ade9
	call L_AE13		;adec
	ld (ix+01ch),a		;adef
	ld b,a			;adf2
	ld a,(0e3a7h)		;adf3
	or b			;adf6
	ld (0e3a7h),a		;adf7
	xor a			;adfa
	ld (ix+00ah),a		;adfb
	ld (ix+01bh),a		;adfe
	inc a			;ae01
	ld (ix+001h),a		;ae02
	ld (ix+00bh),a		;ae05
	ld (ix+00ch),a		;ae08
	ld (ix+00dh),003h		;ae0b
	ld (ix+00eh),a		;ae0f
	ret			;ae12
L_AE13:
	rra			;ae13
	rra			;ae14
	rra			;ae15
	rra			;ae16
	and 00fh		;ae17
	sub 003h		;ae19
	ld b,a			;ae1b
	ld a,001h		;ae1c
	ret z			;ae1e
L_AE1F:
	sla a		;ae1f
	djnz L_AE1F		;ae21
	ret			;ae23
L_AE24:
	ld a,(ix+01bh)		;ae24
	dec a			;ae27
	ld (ix+01bh),a		;ae28
	jr z,L_AE34		;ae2b
	and 03fh		;ae2d
	ret nz			;ae2f
	inc (ix+00ah)		;ae30
	ret			;ae33
L_AE34:
	inc (ix+001h)		;ae34
	ret			;ae37
L_AE38:
	call L_AE5E		;ae38
	ld a,(0e003h)		;ae3b
	and 003h		;ae3e
	ret nz			;ae40
	ld a,(ix+007h)		;ae41
	add a,008h		;ae44
	ld (ix+007h),a		;ae46
	cp 028h		;ae49
	jr z,L_AE53		;ae4b
	cp 058h		;ae4d
	ret nz			;ae4f
	jp L_AC0E		;ae50
L_AE53:
	ld b,(ix+01ch)		;ae53
	ld a,(0e3a7h)		;ae56
	xor b			;ae59
	ld (0e3a7h),a		;ae5a
	ret			;ae5d
L_AE5E:
	ld l,(ix+007h)		;ae5e
	ld h,(ix+009h)		;ae61
	call 04509h		;ae64
	ld a,h			;ae67
	sub 0b5h		;ae68
	ld h,a			;ae6a
	xor a			;ae6b
	call L_ADCC		;ae6c
	ld de,00020h		;ae6f
	add hl,de			;ae72
	call L_ADCC		;ae73
	ld de,00020h		;ae76
	add hl,de			;ae79
	jp L_ADCC		;ae7a
L_AE7D:
	ld a,(ix+001h)		;ae7d
	dec a			;ae80
	jr z,L_AEB4		;ae81
	ld a,001h		;ae83
	ld (ix+001h),a		;ae85
	ld (ix+00ah),000h		;ae88
	ld (ix+00bh),a		;ae8c
	ld (ix+00ch),a		;ae8f
	ld (ix+00dh),003h		;ae92
	ld (ix+00eh),000h		;ae96
	call 043d0h		;ae9a
	rra			;ae9d
	ld de,0fc00h		;ae9e
	ld b,020h		;aea1
	jr c,L_AEA9		;aea3
	ld d,0ffh		;aea5
	ld b,020h		;aea7
L_AEA9:
	ld (ix+01ch),b		;aea9
	ld (ix+01bh),d		;aeac
	ld d,0fdh		;aeaf
	jp L_ABF3		;aeb1
L_AEB4:
	ld a,(0e003h)		;aeb4
	and 003h		;aeb7
	jr nz,L_AEC3		;aeb9
	ld a,(ix+00ah)		;aebb
	xor 001h		;aebe
	ld (ix+00ah),a		;aec0
L_AEC3:
	ld a,(ix+009h)		;aec3
	dec a			;aec6
	ld (ix+009h),a		;aec7
	cp 010h		;aeca
	jp c,L_AC0E		;aecc
	ld h,(ix+003h)		;aecf
	ld l,(ix+002h)		;aed2
	ld d,000h		;aed5
	ld e,(ix+01ch)		;aed7
	add hl,de			;aeda
	ld (ix+003h),h		;aedb
	ld (ix+002h),l		;aede
	call L_ABC7		;aee1
	ld a,(ix+007h)		;aee4
	cp 060h		;aee7
	ret c			;aee9
	ld (ix+007h),060h		;aeea
	ld d,(ix+01bh)		;aeee
	ld e,000h		;aef1
	jp L_ABF3		;aef3
L_AEF6:
	ld a,(ix+001h)		;aef6
	call 040abh		;aef9

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
	inc (ix+001h)		;af04
	ret			;af07
L_AF08:
	ld (ix+00ah),010h		;af08
	ld (ix+00bh),001h		;af0c
	ld (ix+00ch),001h		;af10
	ld (ix+00dh),003h		;af14
	ld (ix+00eh),000h		;af18
	ld a,010h		;af1c
	ld (0e004h),a		;af1e
	jr L_AF04		;af21
L_AF23:
	ld hl,0e004h		;af23
	dec (hl)			;af26
	jr z,L_AF41		;af27
	ld a,(hl)			;af29
	cp 00ch		;af2a
	ld c,010h		;af2c
	jr nc,L_AF3D		;af2e
	cp 008h		;af30
	ld c,011h		;af32
	jr nc,L_AF3D		;af34
L_AF36:
	and 002h		;af36
	ld c,012h		;af38
	jr z,L_AF3D		;af3a
	inc c			;af3c
L_AF3D:
	ld (ix+00ah),c		;af3d
	ret			;af40
L_AF41:
	ld e,(ix+007h)		;af41
	ld d,(ix+009h)		;af44
	ld a,080h		;af47
	call 04356h		;af49
	add hl,hl			;af4c
	add hl,hl			;af4d
	ld (ix+002h),l		;af4e
	ld (ix+003h),h		;af51
	ex de,hl			;af54
	add hl,hl			;af55
	add hl,hl			;af56
	ld (ix+004h),l		;af57
	ld (ix+005h),h		;af5a
	ld a,(ix+01fh)		;af5d
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
	call 06000h		;af74
	jp L_AF04		;af77
L_AF7A:
	ld hl,0e004h		;af7a
	dec (hl)			;af7d
	ld a,(hl)			;af7e
	call L_AF36		;af7f
	ld l,(ix+006h)		;af82
	ld h,(ix+007h)		;af85
	ld e,(ix+002h)		;af88
	ld d,(ix+003h)		;af8b
	add hl,de			;af8e
	ld (ix+006h),l		;af8f
	ld (ix+007h),h		;af92
	ld l,(ix+008h)		;af95
	ld h,(ix+009h)		;af98
	ld e,(ix+004h)		;af9b
	ld d,(ix+005h)		;af9e
	add hl,de			;afa1
	ld (ix+008h),l		;afa2
	ld (ix+009h),h		;afa5
	ld a,(ix+007h)		;afa8
	cp 06ch		;afab
	jp nc,L_AF04		;afad
	ld a,(ix+009h)		;afb0
	cp 0f8h		;afb3
	jp nc,L_AF04		;afb5
	cp 008h		;afb8
	jp c,L_AF04		;afba
	ret			;afbd
L_AFBE:
	ld (ix+000h),000h		;afbe
	ld (ix+001h),000h		;afc2
	ret			;afc6
L_AFC7:
	ld a,(ix+001h)		;afc7
	call 040abh		;afca

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


L_AFDD:
	inc (ix+001h)		;afdd
	ret			;afe0
L_AFE1:
	ld hl,0e003h		;afe1
	ld a,r		;afe4
	rra			;afe6
	rra			;afe7
	add a,(hl)			;afe8
	and 00fh		;afe9
	ld (ix+01fh),a		;afeb
	ld b,006h		;afee
	call 06085h		;aff0
	ld (ix+002h),l		;aff3
	ld (ix+003h),h		;aff6
	ld (ix+004h),e		;aff9
	ld (ix+005h),d		;affc
	ld (ix+00ah),002h		;afff
	ld (ix+00bh),001h		;b003
	ld (ix+00ch),001h		;b007
	ld (ix+00dh),001h		;b00b
	ld (ix+00eh),000h		;b00f
	ld (ix+01eh),000h		;b013
	ld a,080h		;b017
	ld (0e004h),a		;b019
	jr L_AFDD		;b01c
L_B01E:
	ld hl,0e004h		;b01e
	dec (hl)			;b021
	jr z,L_B03C		;b022
	ld a,(hl)			;b024
	cp 060h		;b025
	ld c,002h		;b027
	jr nc,L_B038		;b029
	cp 040h		;b02b
	ld c,003h		;b02d
	jr nc,L_B038		;b02f
L_B031:
	and 008h		;b031
	ld c,004h		;b033
	jr z,L_B038		;b035
	inc c			;b037
L_B038:
	ld (ix+00ah),c		;b038
	ret			;b03b
L_B03C:
	call 0600ah		;b03c
	jp L_AFDD		;b03f
L_B042:
	ld hl,0e004h		;b042
	dec (hl)			;b045
	ld a,(hl)			;b046
	call L_B031		;b047
	ld l,(ix+006h)		;b04a
	ld h,(ix+007h)		;b04d
	ld e,(ix+002h)		;b050
	ld d,(ix+003h)		;b053
	add hl,de			;b056
	ld (ix+006h),l		;b057
	ld (ix+007h),h		;b05a
	ld l,(ix+008h)		;b05d
	ld h,(ix+009h)		;b060
	ld e,(ix+004h)		;b063
	ld d,(ix+005h)		;b066
	add hl,de			;b069
	ld (ix+008h),l		;b06a
	ld (ix+009h),h		;b06d
	ld a,008h		;b070
	cp (ix+007h)		;b072
	jr nc,L_B090		;b075
	ld a,068h		;b077
	cp (ix+007h)		;b079
	jr c,L_B090		;b07c
	ld a,020h		;b07e
	cp (ix+009h)		;b080
	jr nc,L_B08B		;b083
	ld a,0d0h		;b085
	cp (ix+009h)		;b087
	ret nc			;b08a
L_B08B:
	ld (ix+009h),a		;b08b
	jr L_B093		;b08e
L_B090:
	ld (ix+007h),a		;b090
L_B093:
	ld a,(ix+01fh)		;b093
	ld hl,0b0a6h		;b096
	call 040a1h		;b099
	ld a,(hl)			;b09c
	add a,(ix+001h)		;b09d
	ld (ix+001h),a		;b0a0
	jp L_AFDD		;b0a3

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
	ld hl,0e004h		;b0b6
	dec (hl)			;b0b9
	ld a,(hl)			;b0ba
	call L_B031		;b0bb
	ld a,(ix+007h)		;b0be
	sub 006h		;b0c1
	ld (ix+007h),a		;b0c3
	cp 008h		;b0c6
	ret nc			;b0c8
	ld (ix+007h),008h		;b0c9
	inc (ix+01eh)		;b0cd
	ld a,(ix+01eh)		;b0d0
	cp 005h		;b0d3
	jr nz,L_B0DC		;b0d5
	ld (ix+001h),007h		;b0d7
	ret			;b0db
L_B0DC:
	ld a,(ix+009h)		;b0dc
	cp 080h		;b0df
	call c,L_AFDD		;b0e1
	call L_AFDD		;b0e4
	jp L_AFDD		;b0e7
L_B0EA:
	ld hl,0e004h		;b0ea
	dec (hl)			;b0ed
	ld a,(hl)			;b0ee
	call L_B031		;b0ef
	ld a,(ix+007h)		;b0f2
	add a,006h		;b0f5
	ld (ix+007h),a		;b0f7
	cp 068h		;b0fa
	ret c			;b0fc
	ld (ix+007h),068h		;b0fd
	inc (ix+01eh)		;b101
	ld a,(ix+01eh)		;b104
	cp 005h		;b107
	jr nz,L_B110		;b109
	ld (ix+001h),007h		;b10b
	ret			;b10f
L_B110:
	ld a,(ix+009h)		;b110
	cp 080h		;b113
	call c,L_AFDD		;b115
	jp L_AFDD		;b118
L_B11B:
	ld hl,0e004h		;b11b
	dec (hl)			;b11e
	ld a,(hl)			;b11f
	call L_B031		;b120
	ld a,(ix+009h)		;b123
	sub 006h		;b126
	ld (ix+009h),a		;b128
	ld a,(ix+009h)		;b12b
	cp 020h		;b12e
	ret nc			;b130
	ld (ix+009h),020h		;b131
	inc (ix+01eh)		;b135
	ld a,(ix+01eh)		;b138
	cp 005h		;b13b
	jr nz,L_B144		;b13d
	ld (ix+001h),007h		;b13f
	ret			;b143
L_B144:
	ld a,(ix+007h)		;b144
	cp 040h		;b147
	jr c,L_B14E		;b149
	dec (ix+001h)		;b14b
L_B14E:
	dec (ix+001h)		;b14e
	ret			;b151
L_B152:
	ld hl,0e004h		;b152
	dec (hl)			;b155
	ld a,(hl)			;b156
	call L_B031		;b157
	ld a,(ix+009h)		;b15a
	add a,006h		;b15d
	ld (ix+009h),a		;b15f
	ld a,(ix+009h)		;b162
	cp 0d0h		;b165
	ret c			;b167
	ld (ix+009h),0d0h		;b168
	inc (ix+01eh)		;b16c
	ld a,(ix+01eh)		;b16f
	cp 005h		;b172
	jr nz,L_B17B		;b174
	ld (ix+001h),007h		;b176
	ret			;b17a
L_B17B:
	ld a,(ix+007h)		;b17b
	cp 040h		;b17e
	jr c,L_B185		;b180
	dec (ix+001h)		;b182
L_B185:
	dec (ix+001h)		;b185
	dec (ix+001h)		;b188
	ret			;b18b
L_B18C:
	ld (ix+000h),000h		;b18c
	ld (ix+001h),000h		;b190
	ret			;b194
L_B195:
	ld a,(ix+001h)		;b195
	call 040abh		;b198

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
	ld (ix+001h),a		;b1a7
	ld (ix+00ah),006h		;b1aa
	ld (ix+00bh),a		;b1ae
	ld (ix+00ch),a		;b1b1
	ld (ix+00dh),a		;b1b4
	xor a			;b1b7
	ld (ix+00eh),a		;b1b8
	ld (ix+004h),a		;b1bb
	ld (ix+005h),a		;b1be
	ld (ix+01bh),010h		;b1c1
	ld de,00200h		;b1c5
	jp L_ABF3		;b1c8
L_B1CB:
	dec (ix+01bh)		;b1cb
	ret nz			;b1ce
	inc (ix+001h)		;b1cf
	ret			;b1d2
L_B1D3:
	call L_ABC7		;b1d3
	ld a,(ix+007h)		;b1d6
	cp 0c0h		;b1d9
	jp nc,L_AC0E		;b1db
	cp 0aeh		;b1de
	ret c			;b1e0
	ld a,(0e3e7h)		;b1e1
	sub (ix+009h)		;b1e4
	jr c,L_B1EE		;b1e7
	cp 004h		;b1e9
	ret nc			;b1eb
	jr L_B1F1		;b1ec
L_B1EE:
	cp 0f0h		;b1ee
	ret c			;b1f0
L_B1F1:
	ld (ix+007h),0b0h		;b1f1
	ld a,(0e3e7h)		;b1f5
	ld (ix+009h),a		;b1f8
	ld (ix+00ah),007h		;b1fb
	ld hl,0e3f8h		;b1ff
	ld (hl),001h		;b202
	inc hl			;b204
	ld (hl),020h		;b205
	inc (ix+001h)		;b207
	ret			;b20a
L_B20B:
	ld a,(0e3f8h)		;b20b
	or a			;b20e
	ret nz			;b20f
	ld (ix+01ch),010h		;b210
	ld (ix+00ah),008h		;b214
	inc (ix+001h)		;b218
	call 0601eh		;b21b
	ret			;b21e
L_B21F:
	dec (ix+01ch)		;b21f
	ret nz			;b222
	jp L_AC0E		;b223
L_B226:
	ld a,(ix+001h)		;b226
	or a			;b229
	jr z,L_B250		;b22a
	ld a,(ix+001h)		;b22c
	cp 008h		;b22f
	jr nc,L_B250		;b231
	call L_B40B		;b233
	ld a,(0e003h)		;b236
	and 007h		;b239
	jr nz,L_B250		;b23b
	ld a,(ix+01ch)		;b23d
	inc a			;b240
	and 003h		;b241
	ld (ix+01ch),a		;b243
	ld hl,0b26ah		;b246
	call 040a1h		;b249
	ld a,(hl)			;b24c
	ld (ix+00ah),a		;b24d
L_B250:
	ld a,(ix+001h)		;b250
	call 040abh		;b253

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
	ld (ix+001h),a		;b270
	ld (ix+00ah),009h		;b273
	ld (ix+00bh),a		;b277
	ld (ix+00ch),a		;b27a
	ld (ix+00dh),000h		;b27d
	ld (ix+00eh),000h		;b281
	ld (ix+01ch),000h		;b285
	ld de,00100h		;b289
	jp L_ABF3		;b28c
L_B28F:
	ld a,(ix+007h)		;b28f
	cp 050h		;b292
	jp c,L_ABC7		;b294
	ld (ix+007h),050h		;b297
	ld de,00100h		;b29b
	ld a,r		;b29e
	and 001h		;b2a0
	jr z,L_B2A6		;b2a2
	ld d,0ffh		;b2a4
L_B2A6:
	call L_ABFA		;b2a6
	call L_AC04		;b2a9
	inc (ix+001h)		;b2ac
	ret			;b2af
L_B2B0:
	ld a,(ix+005h)		;b2b0
	rla			;b2b3
	ld a,(ix+009h)		;b2b4
	jr nc,L_B2C1		;b2b7
	ld d,040h		;b2b9
	cp d			;b2bb
	jp nc,L_ABDB		;b2bc
	jr L_B2C7		;b2bf
L_B2C1:
	ld d,0b0h		;b2c1
	cp d			;b2c3
	jp c,L_ABDB		;b2c4
L_B2C7:
	ld (ix+008h),000h		;b2c7
	ld (ix+009h),d		;b2cb
	ld a,r		;b2ce
	and 001h		;b2d0
	ld d,0ffh		;b2d2
	jr z,L_B2D8		;b2d4
	ld d,001h		;b2d6
L_B2D8:
	ld e,000h		;b2d8
	call L_ABF3		;b2da
	inc (ix+001h)		;b2dd
	ret			;b2e0
L_B2E1:
	ld a,(ix+003h)		;b2e1
	rla			;b2e4
	ld a,(ix+007h)		;b2e5
	jr c,L_B2F2		;b2e8
	ld d,078h		;b2ea
	cp d			;b2ec
	jp c,L_ABC7		;b2ed
	jr L_B2F8		;b2f0
L_B2F2:
	ld d,008h		;b2f2
	cp d			;b2f4
	jp nc,L_ABC7		;b2f5
L_B2F8:
	ld (ix+006h),000h		;b2f8
	ld (ix+007h),d		;b2fc
	call L_ABB4		;b2ff
	inc (ix+001h)		;b302
	ret			;b305
L_B306:
	ld a,(ix+005h)		;b306
	rla			;b309
	ld a,(ix+009h)		;b30a
	jr nc,L_B317		;b30d
	ld d,040h		;b30f
	cp d			;b311
	jp nc,L_ABDB		;b312
	jr L_B31D		;b315
L_B317:
	ld d,0b0h		;b317
	cp d			;b319
	jp c,L_ABDB		;b31a
L_B31D:
	ld (ix+008h),000h		;b31d
	ld (ix+009h),d		;b321
	call L_ABA4		;b324
	inc (ix+001h)		;b327
	ret			;b32a
L_B32B:
	ld a,(ix+003h)		;b32b
	rla			;b32e
	ld a,(ix+007h)		;b32f
	jr c,L_B33B		;b332
	cp 050h		;b334
	jp c,L_ABC7		;b336
	jr L_B340		;b339
L_B33B:
	cp 050h		;b33b
	jp nc,L_ABC7		;b33d
L_B340:
	ld (ix+007h),050h		;b340
	ld (ix+006h),000h		;b344
	call L_ABB4		;b348
	call 043d0h		;b34b
	and 007h		;b34e
	ld hl,0b35eh		;b350
	call 040a1h		;b353
	ld a,(hl)			;b356
	ld (ix+01bh),a		;b357
	inc (ix+001h)		;b35a
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
	ld a,(ix+005h)		;b366
	rla			;b369
	ld a,(ix+009h)		;b36a
	jr c,L_B377		;b36d
	cp (ix+01bh)		;b36f
	jp c,L_ABDB		;b372
	jr L_B37D		;b375
L_B377:
	cp (ix+01bh)		;b377
	jp nc,L_ABDB		;b37a
L_B37D:
	ld a,(ix+01bh)		;b37d
	ld (ix+009h),a		;b380
	ld (ix+008h),000h		;b383
	ld de,00100h		;b387
	call L_ABF3		;b38a
	inc (ix+001h)		;b38d
	ret			;b390
L_B391:
	call L_B3F7		;b391
	jp nc,L_B450		;b394
	ld a,(ix+007h)		;b397
	cp 0beh		;b39a
	jp c,L_ABC7		;b39c
	jp L_AC0E		;b39f
L_B3A2:
	ld a,(ix+007h)		;b3a2
	cp 0beh		;b3a5
	jp nc,L_AC0E		;b3a7
	call L_ABC7		;b3aa
	call L_B3F7		;b3ad
	ret c			;b3b0
	call 06019h		;b3b1
	ld a,(ix+01eh)		;b3b4
	dec a			;b3b7
	jr z,L_B3DB		;b3b8
	dec a			;b3ba
	jr nz,L_B3D1		;b3bb
	ld a,(0e3a8h)		;b3bd
	cp 002h		;b3c0
	jp nc,L_AC0E		;b3c2
	ld hl,0e3a8h		;b3c5
	ld (hl),082h		;b3c8
	xor a			;b3ca
	ld (0e3fah),a		;b3cb
	jp L_AC0E		;b3ce
L_B3D1:
	xor a			;b3d1
	ld (0ec3eh),a		;b3d2
	ld (0e3fah),a		;b3d5
	jp L_AC0E		;b3d8
L_B3DB:
	ld a,001h		;b3db
	ld (0e3fah),a		;b3dd
	jp L_AC0E		;b3e0
L_B3E3:
	dec (ix+01dh)		;b3e3
	jp z,L_AC0E		;b3e6
	ld a,(ix+01dh)		;b3e9
	and 002h		;b3ec
	ld a,020h		;b3ee
	jr z,L_B3F3		;b3f0
	inc a			;b3f2
L_B3F3:
	ld (ix+00ah),a		;b3f3
	ret			;b3f6
L_B3F7:
	ld a,(ix+007h)		;b3f7
	cp 0a0h		;b3fa
	ret c			;b3fc
	ld a,(0e3e7h)		;b3fd
	sub (ix+009h)		;b400
	jr nc,L_B407		;b403
	neg		;b405
L_B407:
	cp 010h		;b407
	ccf			;b409
	ret			;b40a
L_B40B:
	ld hl,0ec39h		;b40b
	ld b,002h		;b40e
L_B410:
	push bc			;b410
	call L_B460		;b411
	pop bc			;b414
	jr c,L_B41E		;b415
	ld de,0000eh		;b417
	add hl,de			;b41a
	djnz L_B410		;b41b
	ret			;b41d
L_B41E:
	ld a,(0e3a8h)		;b41e
	cp 002h		;b421
	jr z,L_B450		;b423
	ld hl,0e3abh		;b425
	inc (hl)			;b428
	ld a,(hl)			;b429
	and 00fh		;b42a
	ld hl,0b478h		;b42c
	call 040a1h		;b42f
	ld a,(hl)			;b432
	or a			;b433
	jr z,L_B450		;b434
	ld (ix+01eh),a		;b436
	ld c,00ch		;b439
	dec a			;b43b
	jr z,L_B443		;b43c
	inc c			;b43e
	dec a			;b43f
	jr z,L_B443		;b440
	inc c			;b442
L_B443:
	ld (ix+00ah),c		;b443
	ld (ix+001h),008h		;b446
	ld de,00100h		;b44a
	jp L_ABF3		;b44d
L_B450:
	call 06014h		;b450
	ld (ix+001h),009h		;b453
	ld (ix+00ah),020h		;b457
	ld (ix+01dh),040h		;b45b
	ret			;b45f
L_B460:
	ld a,(hl)			;b460
	sub (ix+007h)		;b461
	jr nc,L_B468		;b464
	neg		;b466
L_B468:
	cp 00ah		;b468
	ret nc			;b46a
	inc l			;b46b
	inc l			;b46c
	ld a,(hl)			;b46d
	sub (ix+009h)		;b46e
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


L_B488:
	ld a,(ix+001h)		;b488
	call 040abh		;b48b

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
	inc (ix+001h)		;b494
	ret			;b497
L_B498:
	ld c,000h		;b498
	ld a,(ix+007h)		;b49a
	ld hl,0e3e5h		;b49d
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
	call 040a1h		;b4b1
	ld e,(hl)			;b4b4
	inc hl			;b4b5
	ld d,(hl)			;b4b6
	inc hl			;b4b7
	ld c,(hl)			;b4b8
	inc hl			;b4b9
	ld b,(hl)			;b4ba
	ld (ix+002h),e		;b4bb
	ld (ix+003h),d		;b4be
	ld (ix+004h),c		;b4c1
	ld (ix+005h),b		;b4c4
	ld (ix+00ah),00fh		;b4c7
	ld (ix+00bh),001h		;b4cb
	ld (ix+00ch),001h		;b4cf
	ld (ix+00dh),001h		;b4d3
	ld (ix+00eh),000h		;b4d7
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
	ld l,(ix+006h)		;b4ea
	ld h,(ix+007h)		;b4ed
	ld e,(ix+002h)		;b4f0
	ld d,(ix+003h)		;b4f3
	push de			;b4f6
	add hl,de			;b4f7
	ld (ix+006h),l		;b4f8
	ld (ix+007h),h		;b4fb
	ld l,(ix+008h)		;b4fe
	ld h,(ix+009h)		;b501
	ld e,(ix+004h)		;b504
	ld d,(ix+005h)		;b507
	add hl,de			;b50a
	ld (ix+008h),l		;b50b
	ld (ix+009h),h		;b50e
	pop hl			;b511
	ld bc,00040h		;b512
	add hl,bc			;b515
	ld (ix+002h),l		;b516
	ld (ix+003h),h		;b519
	ld a,(ix+007h)		;b51c
	cp 0b8h		;b51f
	jp nc,L_B494		;b521
	ld a,(ix+009h)		;b524
	cp 0e0h		;b527
	jp nc,L_B494		;b529
	ret			;b52c
L_B52D:
	ld (ix+000h),000h		;b52d
	ld (ix+001h),000h		;b531
	ret			;b535
L_B536:
	ld a,(ix+001h)		;b536
	call 040abh		;b539

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
	ld (ix+001h),a		;b546
	ld (ix+00ah),000h		;b549
	ld (ix+00bh),a		;b54d
	ld (ix+00ch),a		;b550
	ld (ix+00dh),a		;b553
	ld (ix+00eh),000h		;b556
	call 043d0h		;b55a
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
	call L_ABEF		;b56e
	ld a,038h		;b571
	ld (ix+01bh),a		;b573
	ret			;b576
L_B577:
	call L_B5B5		;b577
	ld a,(ix+009h)		;b57a
	cp 070h		;b57d
	jp c,L_ABC4		;b57f
	inc (ix+001h)		;b582
	ret			;b585
L_B586:
	call L_B5B5		;b586
	ld a,(ix+009h)		;b589
	cp 0e0h		;b58c
	jp nc,L_AC0E		;b58e
	ld h,(ix+003h)		;b591
	ld l,(ix+002h)		;b594
	ld d,000h		;b597
	ld e,(ix+01bh)		;b599
	add hl,de			;b59c
	ld (ix+003h),h		;b59d
	ld (ix+002h),l		;b5a0
	jp L_ABC4		;b5a3
L_B5A6:
	ld a,(0e3e5h)		;b5a6
	ld (ix+007h),a		;b5a9
	ld a,(0e3e7h)		;b5ac
	sub 010h		;b5af
	ld (ix+009h),a		;b5b1
	ret			;b5b4
L_B5B5:
	ld a,(0e003h)		;b5b5
	and 003h		;b5b8
	ret nz			;b5ba
	ld a,(ix+00ah)		;b5bb
	xor 001h		;b5be
	ld (ix+00ah),a		;b5c0
	ret			;b5c3
L_B5C4:
	ld a,(0ea01h)		;b5c4
	cp 004h		;b5c7
	ret nc			;b5c9
	ld a,(ix+001h)		;b5ca
	call 040abh		;b5cd

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
	inc (ix+001h)		;b5dc
	ld (ix+00ah),016h		;b5df
	ret			;b5e3
L_B5E4:
	ld a,(0e008h)		;b5e4
	and 00fh		;b5e7
	jr nz,L_B610		;b5e9
	ld a,(0e009h)		;b5eb
	and 030h		;b5ee
	jr nz,L_B5F3		;b5f0
	ret			;b5f2
L_B5F3:
	call L_B5FF		;b5f3
	or a			;b5f6
	ret z			;b5f7
	ld (ix+011h),a		;b5f8
	inc (ix+001h)		;b5fb
	ret			;b5fe
L_B5FF:
	ld a,(ix+009h)		;b5ff
	add a,008h		;b602
	ld h,a			;b604
	ld a,(ix+007h)		;b605
	add a,008h		;b608
	ld l,a			;b60a
	call 04509h		;b60b
	ld a,(hl)			;b60e
	ret			;b60f
L_B610:
	ld a,(0e008h)		;b610
	and 003h		;b613
	call nz,L_B621		;b615
	ld a,(0e008h)		;b618
	and 00ch		;b61b
	call nz,L_B63A		;b61d
	ret			;b620
L_B621:
	ld h,010h		;b621
	and 001h		;b623
	jr z,L_B629		;b625
	ld h,0f0h		;b627
L_B629:
	ld a,(ix+007h)		;b629
	add a,h			;b62c
	cp 010h		;b62d
	ret c			;b62f
	cp 058h		;b630
	ret nc			;b632
	ld (ix+007h),a		;b633
	call 0456fh		;b636
	ret			;b639
L_B63A:
	ld h,010h		;b63a
	and 004h		;b63c
	jr z,L_B642		;b63e
	ld h,0f0h		;b640
L_B642:
	ld a,(ix+009h)		;b642
	add a,h			;b645
	cp 058h		;b646
	ret c			;b648
	cp 098h		;b649
	ret nc			;b64b
	ld (ix+009h),a		;b64c
	call 0456fh		;b64f
	ret			;b652
L_B653:
	ld a,(0e009h)		;b653
	and 030h		;b656
	jr z,L_B68C		;b658
	ld a,(0e008h)		;b65a
	and 00fh		;b65d
	ret z			;b65f
	call L_B5FF		;b660
	ld (ix+011h),a		;b663
	dec a			;b666
	add a,a			;b667
	add a,a			;b668
	ld hl,0ec60h		;b669
	call 040a1h		;b66c
	push ix		;b66f
	push hl			;b671
	pop ix		;b672
	call L_B690		;b674
	ld a,(ix+003h)		;b677
	pop ix		;b67a
	jr nz,L_B68C		;b67c
	ld (ix+010h),a		;b67e
	call 045bfh		;b681
	ld (ix+012h),008h		;b684
	inc (ix+001h)		;b688
	ret			;b68b
L_B68C:
	dec (ix+001h)		;b68c
	ret			;b68f
L_B690:
	ld a,(0e008h)		;b690
	and 00fh		;b693
	ld hl,0b6ceh		;b695
	call 040a1h		;b698
	ld a,(hl)			;b69b
	or a			;b69c
	jr z,L_B6BB		;b69d
	ld (ix+003h),a		;b69f
	call L_B6BF		;b6a2
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
	ld e,(ix+000h)		;b6ae
	ld d,(ix+001h)		;b6b1
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
L_B6BF:
	ld a,(ix+002h)		;b6bf
	add a,a			;b6c2
	add a,a			;b6c3
	add a,(ix+003h)		;b6c4
	dec a			;b6c7
	ld de,0b6deh		;b6c8
	jp 043a4h		;b6cb

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
	call 043a4h		;b745
	ld a,(ix+009h)		;b748
	add a,e			;b74b
	ld (ix+009h),a		;b74c
	ld a,(ix+007h)		;b74f
	add a,d			;b752
	ld (ix+007h),a		;b753
	ld a,(ix+010h)		;b756
	dec a			;b759
	ld de,0b788h		;b75a
	call 043a4h		;b75d
	ld a,(ix+011h)		;b760
	dec a			;b763
	add a,a			;b764
	add a,a			;b765
	ld hl,0ec60h		;b766
	call 040a1h		;b769
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
	ld (ix+001h),000h		;b798
	ret			;b79c
L_B79D:
	ld a,(ix+001h)		;b79d
	call 040abh		;b7a0

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
	ld (ix+00ah),017h		;b7af
	inc (ix+001h)		;b7b3
	ret			;b7b6
L_B7B7:
	ld hl,(0ec64h)		;b7b7
	ld de,0ed00h		;b7ba
	or a			;b7bd
	sbc hl,de		;b7be
	add hl,hl			;b7c0
	add hl,hl			;b7c1
	add hl,hl			;b7c2
	ld a,l			;b7c3
	and 0f8h		;b7c4
	add a,008h		;b7c6
	ld (ix+009h),a		;b7c8
	add hl,hl			;b7cb
	add hl,hl			;b7cc
	add hl,hl			;b7cd
	ld a,h			;b7ce
	and 0f8h		;b7cf
	add a,010h		;b7d1
	ld (ix+007h),a		;b7d3
	ld a,(0ea01h)		;b7d6
	cp 004h		;b7d9
	ret nz			;b7db
	call 04565h		;b7dc
	inc (ix+001h)		;b7df
	ret			;b7e2
L_B7E3:
	inc (ix+007h)		;b7e3
	ld a,(ix+007h)		;b7e6
	cp 070h		;b7e9
	ret c			;b7eb
	inc (ix+001h)		;b7ec
	ret			;b7ef
L_B7F0:
	call L_B800		;b7f0
	inc (ix+009h)		;b7f3
	ld a,(ix+009h)		;b7f6
	cp 0d0h		;b7f9
	ret c			;b7fb
	inc (ix+001h)		;b7fc
	ret			;b7ff
L_B800:
	ld a,(0e003h)		;b800
	and 004h		;b803
	ld a,018h		;b805
	jr z,L_B80A		;b807
	inc a			;b809
L_B80A:
	ld (ix+00ah),a		;b80a
	ret			;b80d
L_B80E:
	ld a,(0ea01h)		;b80e
	cp 006h		;b811
	ret nz			;b813
	inc (ix+001h)		;b814
	ret			;b817
L_B818:
	call L_B800		;b818
	inc (ix+009h)		;b81b
	ld a,(ix+009h)		;b81e
	cp 0f0h		;b821
	ret c			;b823
	jp L_AC0E		;b824
L_B827:
	call 049f0h		;b827
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
	ld ix,0ea20h		;b845
	call L_AC0E		;b849
	pop ix		;b84c
	call 058ffh		;b84e
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
	ld a,(ix+01dh)		;b872
	and 001h		;b875
	ld c,009h		;b877
	call z,04313h		;b879
	ld a,(0e886h)		;b87c
	and a			;b87f
	jr nz,L_B88A		;b880
	ld a,001h		;b882
	or (ix+01dh)		;b884
	ld (ix+01dh),a		;b887
L_B88A:
	call L_BA56		;b88a
	call L_BA71		;b88d
	ld a,(ix+01ch)		;b890
	or a			;b893
	jr z,L_B89D		;b894
	dec (ix+01ch)		;b896
	ret nz			;b899
	call 06046h		;b89a
L_B89D:
	ld a,(ix+01dh)		;b89d
	ld b,a			;b8a0
	and 002h		;b8a1
	ld a,b			;b8a3
	jr nz,L_B8DB		;b8a4
	ld a,(0e003h)		;b8a6
	ld b,a			;b8a9
	and 001h		;b8aa
	ret nz			;b8ac
	ld hl,0f02bh		;b8ad
	ld a,b			;b8b0
	rra			;b8b1
	and 007h		;b8b2
	ld de,0bc28h		;b8b4
	call 040a6h		;b8b7
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
	or (ix+01dh)		;b8d5
	ld (ix+01dh),a		;b8d8
L_B8DB:
	cp 003h		;b8db
	ret nz			;b8dd
	ld hl,0a7eah		;b8de
	ld (0e34ch),hl		;b8e1
	ld de,0f029h		;b8e4
	ld hl,0f028h		;b8e7
	ld bc,00054h		;b8ea
	ld (hl),0e0h		;b8ed
	ldir		;b8ef
	call 05f15h		;b8f1
	ld hl,00156h		;b8f4
	ld (0e363h),hl		;b8f7
	xor a			;b8fa
	ld (0e8a6h),a		;b8fb
	ld a,0ffh		;b8fe
	ld (0e368h),a		;b900
	ld a,001h		;b903
	ld (0e8a0h),a		;b905
	inc a			;b908
	ld (0e360h),a		;b909
	inc a			;b90c
	ld (0e8a3h),a		;b90d
	jr L_B936		;b910
L_B912:
	ret			;b912
L_B913:
	call 05f15h		;b913
	ld a,(0e003h)		;b916
	and 003h		;b919
	ret nz			;b91b
	call 042e2h		;b91c
	ld a,(0e34bh)		;b91f
	or a			;b922
	ret nz			;b923
	ld a,0ffh		;b924
	ld hl,03800h		;b926
	ld bc,00100h		;b929
	call 00056h		;b92c   ; BIOS FILVRM - Fills VRAM with value
	call L_BB08		;b92f
	ld (ix+010h),020h		;b932
L_B936:
	inc (ix+001h)		;b936
	ret			;b939
L_B93A:
	dec (ix+010h)		;b93a
	ret nz			;b93d
	ld e,004h		;b93e
	call L_BB86		;b940
	ld hl,00ff8h		;b943
	ld e,004h		;b946
	call L_BB89		;b948
	call L_BB49		;b94b
	ld (ix+010h),020h		;b94e
	jr L_B936		;b952
L_B954:
	dec (ix+010h)		;b954
	ret nz			;b957
	ld e,005h		;b958
	call L_BB86		;b95a
	ld e,005h		;b95d
	ld hl,00ff8h		;b95f
	call L_BB89		;b962
	call L_BB49		;b965
	ld (ix+010h),020h		;b968
	jr L_B936		;b96c
L_B96E:
	dec (ix+010h)		;b96e
	ret nz			;b971
	ld e,007h		;b972
	call L_BB86		;b974
	ld e,007h		;b977
	ld hl,00ff8h		;b979
	call L_BB89		;b97c
	call L_BB49		;b97f
	ld (ix+010h),020h		;b982
	jp L_B936		;b986
L_B989:
	dec (ix+010h)		;b989
	ret nz			;b98c
	call L_BAD3		;b98d
	call 045b5h		;b990
	call 0605ah		;b993
	call 04a29h		;b996
	jp L_B936		;b999
L_B99C:
	ld c,00dh		;b99c
	call 04313h		;b99e
	ld a,(0e886h)		;b9a1
	or a			;b9a4
	ret nz			;b9a5
	ld hl,0eb70h		;b9a6
	set 2,(hl)		;b9a9
	ld (ix+01fh),040h		;b9ab
	ld a,001h		;b9af
	ld (0e8a0h),a		;b9b1
	inc a			;b9b4
	ld (0e360h),a		;b9b5
	inc a			;b9b8
	ld (0e8a3h),a		;b9b9
	jp L_B936		;b9bc
L_B9BF:
	ret			;b9bf
L_B9C0:
	call 06050h		;b9c0
	call 04a74h		;b9c3
	ld hl,0bc38h		;b9c6
	ld de,0f028h		;b9c9
	ld bc,00024h		;b9cc
	ldir		;b9cf
	call 05f15h		;b9d1
	jp L_B936		;b9d4
L_B9D7:
	ld c,011h		;b9d7
	call 04313h		;b9d9
	ld a,(0e886h)		;b9dc
	or a			;b9df
	ret nz			;b9e0
	ld a,(0e887h)		;b9e1
	or a			;b9e4
	ret nz			;b9e5
	ld (ix+01fh),040h		;b9e6
	call 06055h		;b9ea
	jp L_B936		;b9ed
L_B9F0:
	call L_A610		;b9f0
	dec (ix+01fh)		;b9f3
	ret nz			;b9f6
	ld b,000h		;b9f7
	call 058a7h		;b9f9
	jp L_B936		;b9fc
L_B9FF:
	ld c,012h		;b9ff
	call 04313h		;ba01
	ld a,(0e886h)		;ba04
	or a			;ba07
	ret nz			;ba08
	ld a,(0e887h)		;ba09
	or a			;ba0c
	ret nz			;ba0d
	ld (ix+01fh),040h		;ba0e
	call 06041h		;ba12
	jp L_B936		;ba15
L_BA18:
	call L_A610		;ba18
	dec (ix+01fh)		;ba1b
	ret nz			;ba1e
	ld b,000h		;ba1f
	call 058a7h		;ba21
	ld a,001h		;ba24
	ld (0e336h),a		;ba26
	ret			;ba29
L_BA2A:
	call L_A610		;ba2a
	dec (ix+01fh)		;ba2d
	ret nz			;ba30
	ld b,000h		;ba31
	call 058a7h		;ba33
	jp L_B936		;ba36
L_BA39:
	ld c,014h		;ba39
	call 04313h		;ba3b
	ld a,(0e886h)		;ba3e
	or a			;ba41
	ret nz			;ba42
	ld a,(0e887h)		;ba43
	or a			;ba46
	ret nz			;ba47
	xor a			;ba48
	ld (0e368h),a		;ba49
	inc a			;ba4c
	ld (0e360h),a		;ba4d
	ld a,003h		;ba50
	ld (0e338h),a		;ba52
	ret			;ba55
L_BA56:
	ld a,(0e003h)		;ba56
	ld b,a			;ba59
	and 003h		;ba5a
	ret nz			;ba5c
	ld a,b			;ba5d
	rra			;ba5e
	rra			;ba5f
	and 003h		;ba60
	add a,00ah		;ba62
	ld hl,0f033h		;ba64
	ld de,00004h		;ba67
	ld b,014h		;ba6a
L_BA6C:
	ld (hl),a			;ba6c
	add hl,de			;ba6d
	djnz L_BA6C		;ba6e
	ret			;ba70
L_BA71:
	dec (ix+01fh)		;ba71
	ret nz			;ba74
	ld de,0f031h		;ba75
	ld hl,0f030h		;ba78
	ld bc,00050h		;ba7b
	ld (hl),0e0h		;ba7e
	ldir		;ba80
	ld (ix+01fh),010h		;ba82
	inc (ix+01eh)		;ba86
	ld a,(ix+01eh)		;ba89
	and 007h		;ba8c
	cp 001h		;ba8e
	jr z,L_BA96		;ba90
	cp 006h		;ba92
	jr nz,L_BA9B		;ba94
L_BA96:
	push af			;ba96
	call 0604bh		;ba97
	pop af			;ba9a
L_BA9B:
	ld hl,0bb96h		;ba9b
	call 040a1h		;ba9e
	ld b,003h		;baa1
	ld de,0f030h		;baa3
	ld (0e8e0h),de		;baa6
L_BAAA:
	push bc			;baaa
	ld a,(hl)			;baab
	inc hl			;baac
	push hl			;baad
	add a,a			;baae
	ld hl,0bbaeh		;baaf
	call 040a1h		;bab2
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
	ld de,(0e8e0h)		;bac1
	ldir		;bac5
	ld (0e8e0h),de		;bac7
	pop hl			;bacb
	pop bc			;bacc
	djnz L_BAAA		;bacd
	ret			;bacf
L_BAD0:
	pop hl			;bad0
	pop bc			;bad1
	ret			;bad2
L_BAD3:
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
	ld a,d			;baec
	and 0f0h		;baed
	cp 060h		;baef
	ld d,080h		;baf1
	jr z,L_BAFC		;baf3
	cp 080h		;baf5
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
L_BB08:
	ld hl,00888h		;bb08
	ld bc,00470h		;bb0b
L_BB0E:
	call 0004ah		;bb0e   ; BIOS RDVRM - Reads the content of VRAM
	ld d,a			;bb11
	and 00fh		;bb12
	cp 004h		;bb14
	ld e,006h		;bb16
	jr z,L_BB27		;bb18
	cp 005h		;bb1a
	ld e,008h		;bb1c
	jr z,L_BB27		;bb1e
	cp 00fh		;bb20
	ld e,00ah		;bb22
	jr z,L_BB27		;bb24
	ld e,a			;bb26
L_BB27:
	ld a,d			;bb27
	and 0f0h		;bb28
	cp 040h		;bb2a
	ld d,060h		;bb2c
	jr z,L_BB3D		;bb2e
	cp 050h		;bb30
	ld d,080h		;bb32
	jr z,L_BB3D		;bb34
	cp 0f0h		;bb36
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
L_BB49:
	ld hl,00888h		;bb49
	ld bc,00470h		;bb4c
L_BB4F:
	call 0004ah		;bb4f   ; BIOS RDVRM - Reads the content of VRAM
	ld d,a			;bb52
	and 00fh		;bb53
	ld e,004h		;bb55
	jr z,L_BB66		;bb57
	cp 004h		;bb59
	ld e,005h		;bb5b
	jr z,L_BB66		;bb5d
	cp 005h		;bb5f
	ld e,007h		;bb61
	jr z,L_BB66		;bb63
	ld e,a			;bb65
L_BB66:
	ld a,d			;bb66
	and 0f0h		;bb67
	ld d,040h		;bb69
	jr z,L_BB7A		;bb6b
	cp 040h		;bb6d
	ld d,050h		;bb6f
	jr z,L_BB7A		;bb71
	cp 050h		;bb73
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
L_BB86:
	ld hl,007f8h		;bb86
L_BB89:
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


L_BC5C:
	xor a			;bc5c
	ld (0e009h),a		;bc5d
	ld (0e00bh),a		;bc60
	inc a			;bc63
	ld (0e340h),a		;bc64
	inc a			;bc67
	ld (0e338h),a		;bc68
	ld hl,000feh		;bc6b
	ld (0e00ch),hl		;bc6e
	ld a,(0eb58h)		;bc71
	and 03fh		;bc74
	ld (0eb58h),a		;bc76
	call 058bfh		;bc79
	call 04365h		;bc7c
	ld hl,06050h		;bc7f
	ld (0e3c1h),hl		;bc82
	ret			;bc85
L_BC86:
	call L_BC92		;bc86
	ret nz			;bc89
	call 045abh		;bc8a
	xor a			;bc8d
	ld (0e340h),a		;bc8e
	ret			;bc91
L_BC92:
	ld hl,0e00ch		;bc92
	ld a,(hl)			;bc95
	cp 0feh		;bc96
	jr z,L_BC9F		;bc98
	dec (hl)			;bc9a
	jr nz,L_BCC9		;bc9b
	jr L_BCCF		;bc9d
L_BC9F:
	call L_BCFD		;bc9f
	rrca			;bca2
	rrca			;bca3
	rrca			;bca4
	rrca			;bca5
	call L_BD0B		;bca6
	ld hl,0e3c1h		;bca9
	cp (hl)			;bcac
	jr z,L_BCDA		;bcad
	call L_BCFD		;bcaf
	call L_BD0B		;bcb2
	ld hl,0e3c2h		;bcb5
	cp (hl)			;bcb8
	jr z,L_BCDA		;bcb9
	ld hl,0e00bh		;bcbb
	ld c,(hl)			;bcbe
	inc c			;bcbf
	call L_BD01		;bcc0
L_BCC3:
	ld hl,0e009h		;bcc3
	call 0430ah		;bcc6
L_BCC9:
	call 0436eh		;bcc9
	or 0ffh		;bccc
	ret			;bcce
L_BCCF:
	call L_BCFD		;bccf
	call L_BCC3		;bcd2
	ld hl,0e00bh		;bcd5
	jr L_BCDE		;bcd8
L_BCDA:
	ld hl,0e00bh		;bcda
	inc (hl)			;bcdd
L_BCDE:
	inc (hl)			;bcde
	call L_BCFD		;bcdf
	cp 0ffh		;bce2
	ret z			;bce4
	cp 0feh		;bce5
	jr nz,L_BCF6		;bce7
	inc de			;bce9
	ld a,(de)			;bcea
	ld (0e00ch),a		;bceb
	ld hl,0e00bh		;bcee
	inc (hl)			;bcf1
	inc (hl)			;bcf2
	or 0ffh		;bcf3
	ret			;bcf5
L_BCF6:
	ld a,0feh		;bcf6
	ld (0e00ch),a		;bcf8
	or a			;bcfb
	ret			;bcfc
L_BCFD:
	ld hl,0e00bh		;bcfd
	ld c,(hl)			;bd00
L_BD01:
	ld de,0bd12h		;bd01
	ld l,c			;bd04
	ld h,000h		;bd05
	add hl,de			;bd07
	ex de,hl			;bd08
	ld a,(de)			;bd09
	ret			;bd0a
L_BD0B:
	and 00fh		;bd0b
	add a,a			;bd0d
	add a,a			;bd0e
	add a,a			;bd0f
	add a,a			;bd10
L_BD11:
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
