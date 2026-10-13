; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 09 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x607c  (124 bytes)
; ======================================================================


L_6000:
	ld a,00bh		;6000
	jp 0415bh		;6002
L_6005:
	ld a,00ch		;6005
	jp 0415bh		;6007
L_600A:
	ld a,00dh		;600a
	jp 0415bh		;600c
L_600F:
	ld a,00eh		;600f
	jp 0415bh		;6011
L_6014:
	ld a,01ch		;6014
	jp 0415bh		;6016
L_6019:
	ld a,01dh		;6019
	jp 0415bh		;601b
L_601E:
	ld a,017h		;601e
	jp 0415bh		;6020
L_6023:
	ld a,010h		;6023
	jp 0415bh		;6025
L_6028:
	ld a,011h		;6028
	jp 0415bh		;602a
L_602D:
	ld a,012h		;602d
	jp 0415bh		;602f
L_6032:
	ld a,05ah		;6032
	jp 0415bh		;6034
L_6037:
	ld a,043h		;6037
	jp 0415bh		;6039
L_603C:
	ld a,044h		;603c
	jp 0415bh		;603e
L_6041:
	ld a,051h		;6041
	jp 0415bh		;6043
L_6046:
	ld a,04fh		;6046
	jp 0415bh		;6048
L_604B:
	ld a,052h		;604b
	jp 0415bh		;604d
L_6050:
	ld a,04eh		;6050
	jp 0415bh		;6052
L_6055:
	ld a,03eh		;6055
	jp 0415bh		;6057
L_605A:
	ld a,055h		;605a
	jp 0415bh		;605c
L_605F:
	ld a,02ch		;605f
	jp 0415bh		;6061
L_6064:
	ld a,04dh		;6064
	jp 0415bh		;6066
L_6069:
	ld a,05bh		;6069
	jp 0415bh		;606b
L_606E:
	ld a,(0e3a1h)		;606e
	dec a			;6071
	ld hl,0607ch		;6072
	call 040a1h		;6075
	ld a,(hl)			;6078
	jp 0415bh		;6079

; ----------------------------------------------------------------------
; DATOS resto_607C: lo apuntan con el banco puesto p09:6072 (0x607C); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p09:6072 (9 bytes)
;   0x607c..0x6085  (9 bytes)
DATA_resto_607C:
	defb 039h,049h,049h,049h,04ch,049h,049h,04ch,057h	; 607c  9IIILIILW

; ======================================================================
; CODIGO 0x6085..0x60a4  (31 bytes)
; ======================================================================


L_6085:
	push af			;6085
	ld de,060a4h		;6086
	call 043a4h		;6089
	ld hl,00000h		;608c
	push bc			;608f
L_6090:
	add hl,de			;6090
	djnz L_6090		;6091
	pop bc			;6093
	pop af			;6094
	push hl			;6095
	ld de,060ach		;6096
	call 043a4h		;6099
	ld hl,00000h		;609c
L_609F:
	add hl,de			;609f
	djnz L_609F		;60a0
	pop de			;60a2
	ret			;60a3

; ----------------------------------------------------------------------
; DATOS resto_60A4: lo apuntan con el banco puesto p09:6086 (0x60A4), p09:6096
;   (0x60AC); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p09:6086, p09:6096 (40 bytes)
;   0x60a4..0x60cc  (40 bytes)
DATA_resto_60A4:
	defb 000h,001h,0ddh,000h,0b5h,000h,080h,000h,000h,000h,080h,0ffh,04bh,0ffh,023h,0ffh	; 60a4  ............K.#.
	defb 000h,0ffh,023h,0ffh,04bh,0ffh,080h,0ffh,000h,000h,080h,000h,0b5h,000h,0ddh,000h	; 60b4  ..#.K...........
	defb 000h,001h,0ddh,000h,0b5h,000h,080h,000h	; 60c4  ........

; ======================================================================
; CODIGO 0x60cc..0x613c  (112 bytes)
; ======================================================================


L_60CC:
	ld bc,(0eb40h)		;60cc
	ld hl,0613ch		;60d0
	ld de,00000h		;60d3
	ld (0e8e0h),de		;60d6
L_60DA:
	ld e,(hl)			;60da
	inc hl			;60db
	ld d,(hl)			;60dc
	push hl			;60dd
	ld l,e			;60de
	ld h,d			;60df
	and a			;60e0
	sbc hl,bc		;60e1
	jr z,L_60F9		;60e3
	ld hl,0ffffh		;60e5
	and a			;60e8
	sbc hl,de		;60e9
	pop hl			;60eb
	ret z			;60ec
	inc hl			;60ed
	ld de,(0e8e0h)		;60ee
	inc de			;60f2
	ld (0e8e0h),de		;60f3
	jr L_60DA		;60f7
L_60F9:
	pop hl			;60f9
	ld hl,0e36dh		;60fa
	ld (hl),001h		;60fd
	ld hl,(0e8e0h)		;60ff
	add hl,hl			;6102
	ld de,06162h		;6103
	add hl,de			;6106
	ld e,(hl)			;6107
	inc hl			;6108
	ld d,(hl)			;6109
	ex de,hl			;610a
L_610B:
	ld a,(hl)			;610b
	inc a			;610c
	ret z			;610d
	dec a			;610e
	ld (0e36dh),a		;610f
	inc hl			;6112
	ld c,(hl)			;6113
	inc hl			;6114
	ld e,(hl)			;6115
	inc hl			;6116
	ld d,(hl)			;6117
	inc hl			;6118
	ld a,(de)			;6119
	and c			;611a
	jr z,L_6137		;611b
	ld a,(hl)			;611d
	and 0f0h		;611e
	ld e,a			;6120
	ld a,(hl)			;6121
	and 00fh		;6122
	rla			;6124
	rla			;6125
	rla			;6126
	rla			;6127
	ld d,a			;6128
	inc hl			;6129
	ld c,(hl)			;612a
	inc hl			;612b
	ld b,(hl)			;612c
	inc hl			;612d
	push hl			;612e
	ld l,c			;612f
	ld h,b			;6130
	call 044b8h		;6131
	pop hl			;6134
	jr L_610B		;6135
L_6137:
	inc hl			;6137
	inc hl			;6138
	inc hl			;6139
	jr L_610B		;613a

; ----------------------------------------------------------------------
; DATOS cofres_9_salas: 18 salas (palabras) y 0xFFFF: p09:60CC busca 0xEB40 en
;   ellas y se queda con el orden; lo leen p09:60CC (38 bytes)
;   0x613c..0x6162  (38 bytes)
DATA_cofres_9_salas:
	defb 02eh,000h	; 613c
	defb 08dh,000h	; 613e
	defb 094h,000h	; 6140
	defb 047h,001h	; 6142
	defb 097h,001h	; 6144
	defb 007h,001h	; 6146
	defb 008h,002h	; 6148
	defb 062h,000h	; 614a
	defb 063h,000h	; 614c
	defb 0a1h,001h	; 614e
	defb 026h,002h	; 6150
	defb 02ah,001h	; 6152
	defb 018h,000h	; 6154
	defb 02eh,002h	; 6156
	defb 0b0h,000h	; 6158
	defb 0fdh,000h	; 615a
	defb 059h,001h	; 615c
	defb 031h,002h	; 615e
	defb 0ffh,0ffh	; 6160

; ----------------------------------------------------------------------
; DATOS cofres_9_listas: 18 palabras: la lista de cada sala de 0x613C; lo leen
;   p09:60CC (36 bytes)
;   0x6162..0x6186  (36 bytes)
DATA_cofres_9_listas:
	defb 086h,061h	; 6162
	defb 08eh,061h	; 6164
	defb 096h,061h	; 6166
	defb 09eh,061h	; 6168
	defb 0a6h,061h	; 616a
	defb 0aeh,061h	; 616c
	defb 0b6h,061h	; 616e
	defb 0beh,061h	; 6170
	defb 0c6h,061h	; 6172
	defb 0ceh,061h	; 6174
	defb 0d6h,061h	; 6176
	defb 0deh,061h	; 6178
	defb 0edh,061h	; 617a
	defb 0f5h,061h	; 617c
	defb 0fdh,061h	; 617e
	defb 013h,062h	; 6180
	defb 01bh,062h	; 6182
	defb 023h,062h	; 6184

; ----------------------------------------------------------------------
; DATOS cofres_9_6186: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x6186..0x618e  (8 bytes)
DATA_cofres_9_6186:
	defb 000h,010h,074h,0ebh,034h,0a1h,069h,0ffh	; 6186  ..t.4.i.

; ----------------------------------------------------------------------
; DATOS cofres_9_618E: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x618e..0x6196  (8 bytes)
DATA_cofres_9_618E:
	defb 000h,020h,05bh,0ebh,035h,087h,069h,0ffh	; 618e  . [.5.i.

; ----------------------------------------------------------------------
; DATOS cofres_9_6196: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x6196..0x619e  (8 bytes)
DATA_cofres_9_6196:
	defb 000h,010h,05bh,0ebh,045h,091h,069h,0ffh	; 6196  ..[.E.i.

; ----------------------------------------------------------------------
; DATOS cofres_9_619E: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x619e..0x61a6  (8 bytes)
DATA_cofres_9_619E:
	defb 000h,002h,07dh,0ebh,044h,097h,069h,0ffh	; 619e  ..}.D.i.

; ----------------------------------------------------------------------
; DATOS cofres_9_61A6: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x61a6..0x61ae  (8 bytes)
DATA_cofres_9_61A6:
	defb 000h,020h,07dh,0ebh,058h,081h,069h,0ffh	; 61a6  . }.X.i.

; ----------------------------------------------------------------------
; DATOS cofres_9_61AE: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x61ae..0x61b6  (8 bytes)
DATA_cofres_9_61AE:
	defb 000h,020h,06dh,0ebh,041h,041h,06ah,0ffh	; 61ae  . m.AAj.

; ----------------------------------------------------------------------
; DATOS cofres_9_61B6: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x61b6..0x61be  (8 bytes)
DATA_cofres_9_61B6:
	defb 001h,002h,06ah,0ebh,005h,02fh,06bh,0ffh	; 61b6  ..j../k.

; ----------------------------------------------------------------------
; DATOS cofres_9_61BE: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x61be..0x61c6  (8 bytes)
DATA_cofres_9_61BE:
	defb 001h,001h,067h,0ebh,02bh,01bh,06bh,0ffh	; 61be  ..g.+.k.

; ----------------------------------------------------------------------
; DATOS cofres_9_61C6: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x61c6..0x61ce  (8 bytes)
DATA_cofres_9_61C6:
	defb 001h,001h,067h,0ebh,020h,025h,06bh,0ffh	; 61c6  ..g. %k.

; ----------------------------------------------------------------------
; DATOS cofres_9_61CE: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x61ce..0x61d6  (8 bytes)
DATA_cofres_9_61CE:
	defb 000h,001h,05eh,0ebh,046h,06fh,069h,0ffh	; 61ce  ..^.Foi.

; ----------------------------------------------------------------------
; DATOS cofres_9_61D6: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x61d6..0x61de  (8 bytes)
DATA_cofres_9_61D6:
	defb 000h,004h,062h,0ebh,038h,075h,069h,0ffh	; 61d6  ..b.8ui.

; ----------------------------------------------------------------------
; DATOS cofres_9_61DE: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (15 bytes)
;   0x61de..0x61ed  (15 bytes)
DATA_cofres_9_61DE:
	defb 001h,002h,05bh,0ebh,052h,0b3h,06ah,001h,002h,05bh,0ebh,062h,0b3h,06ah,0ffh	; 61de  ..[.R.j..[.b.j.

; ----------------------------------------------------------------------
; DATOS cofres_9_61ED: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x61ed..0x61f5  (8 bytes)
DATA_cofres_9_61ED:
	defb 001h,001h,05bh,0ebh,037h,0b3h,06ah,0ffh	; 61ed  ..[.7.j.

; ----------------------------------------------------------------------
; DATOS cofres_9_61F5: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x61f5..0x61fd  (8 bytes)
DATA_cofres_9_61F5:
	defb 000h,010h,05dh,0ebh,045h,075h,069h,0ffh	; 61f5  ..].Eui.

; ----------------------------------------------------------------------
; DATOS cofres_9_61FD: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (22 bytes)
;   0x61fd..0x6213  (22 bytes)
DATA_cofres_9_61FD:
	defb 001h,001h,05dh,0ebh,017h,0cbh,06ah,001h,001h,05dh,0ebh,067h,0cbh,06ah,001h,001h	; 61fd  ..]...j..].g.j..
	defb 05dh,0ebh,018h,0d1h,06ah,0ffh	; 620d

; ----------------------------------------------------------------------
; DATOS cofres_9_6213: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x6213..0x621b  (8 bytes)
DATA_cofres_9_6213:
	defb 001h,002h,05eh,0ebh,034h,0b9h,06ah,0ffh	; 6213  ..^.4.j.

; ----------------------------------------------------------------------
; DATOS cofres_9_621B: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x621b..0x6223  (8 bytes)
DATA_cofres_9_621B:
	defb 001h,002h,05ch,0ebh,023h,0bfh,06ah,0ffh	; 621b  ..\.#.j.

; ----------------------------------------------------------------------
; DATOS cofres_9_6223: registros hasta 0xFF que recorre p09:610B; lo leen
;   p09:60CC (8 bytes)
;   0x6223..0x622b  (8 bytes)
DATA_cofres_9_6223:
	defb 001h,002h,05dh,0ebh,037h,0c5h,06ah,0ffh	; 6223  ..].7.j.

; ======================================================================
; CODIGO 0x622b..0x6291  (102 bytes)
; ======================================================================


L_622B:
	ld bc,(0eb40h)		;622b
	ld hl,06291h		;622f
	ld de,00000h		;6232
	ld (0e8e0h),de		;6235
L_6239:
	ld e,(hl)			;6239
	inc hl			;623a
	ld d,(hl)			;623b
	push hl			;623c
	ld l,e			;623d
	ld h,d			;623e
	and a			;623f
	sbc hl,bc		;6240
	jr z,L_6258		;6242
	ld hl,0ffffh		;6244
	and a			;6247
	sbc hl,de		;6248
	pop hl			;624a
	ret z			;624b
	inc hl			;624c
	ld de,(0e8e0h)		;624d
	inc de			;6251
	ld (0e8e0h),de		;6252
	jr L_6239		;6256
L_6258:
	pop hl			;6258
	ld hl,0e36dh		;6259
	ld (hl),001h		;625c
	ld hl,(0e8e0h)		;625e
	add hl,hl			;6261
	ld de,063a5h		;6262
	add hl,de			;6265
	ld e,(hl)			;6266
	inc hl			;6267
	ld d,(hl)			;6268
	ex de,hl			;6269
L_626A:
	ld a,(hl)			;626a
	ld e,a			;626b
	inc a			;626c
	ret z			;626d
	inc a			;626e
	jr nz,L_6277		;626f
	ld (0e36dh),a		;6271
	inc hl			;6274
	jr L_626A		;6275
L_6277:
	ld a,e			;6277
	and 0f0h		;6278
	ld e,a			;627a
	ld a,(hl)			;627b
	and 00fh		;627c
	rla			;627e
	rla			;627f
	rla			;6280
	rla			;6281
	ld d,a			;6282
	inc hl			;6283
	ld c,(hl)			;6284
	inc hl			;6285
	ld b,(hl)			;6286
	inc hl			;6287
	push hl			;6288
	ld l,c			;6289
	ld h,b			;628a
	call 044b8h		;628b
	pop hl			;628e
	jr L_626A		;628f

; ----------------------------------------------------------------------
; DATOS cosas_9_salas: 137 salas (palabras) y 0xFFFF: p09:622B busca 0xEB40 en
;   ellas y se queda con el orden; lo leen p09:622B (276 bytes)
;   0x6291..0x63a5  (276 bytes)
DATA_cosas_9_salas:
	defb 0d0h,000h	; 6291
	defb 0afh,000h	; 6293
	defb 0f3h,000h	; 6295
	defb 013h,001h	; 6297
	defb 079h,000h	; 6299
	defb 099h,000h	; 629b
	defb 00eh,002h	; 629d
	defb 0cch,000h	; 629f
	defb 0ech,000h	; 62a1
	defb 087h,000h	; 62a3
	defb 00dh,002h	; 62a5
	defb 03eh,000h	; 62a7
	defb 032h,002h	; 62a9
	defb 033h,002h	; 62ab
	defb 034h,002h	; 62ad
	defb 08ah,000h	; 62af
	defb 065h,001h	; 62b1
	defb 066h,001h	; 62b3
	defb 085h,001h	; 62b5
	defb 086h,001h	; 62b7
	defb 00ch,000h	; 62b9
	defb 00dh,000h	; 62bb
	defb 02ch,000h	; 62bd
	defb 02dh,000h	; 62bf
	defb 085h,000h	; 62c1
	defb 0a5h,000h	; 62c3
	defb 00dh,001h	; 62c5
	defb 00eh,001h	; 62c7
	defb 02dh,001h	; 62c9
	defb 02eh,001h	; 62cb
	defb 0aeh,001h	; 62cd
	defb 0afh,001h	; 62cf
	defb 0ceh,001h	; 62d1
	defb 0cfh,001h	; 62d3
	defb 070h,001h	; 62d5
	defb 062h,000h	; 62d7
	defb 008h,002h	; 62d9
	defb 02ch,001h	; 62db
	defb 038h,000h	; 62dd
	defb 08eh,000h	; 62df
	defb 02fh,000h	; 62e1
	defb 094h,000h	; 62e3
	defb 047h,001h	; 62e5
	defb 064h,001h	; 62e7
	defb 07ah,001h	; 62e9
	defb 097h,001h	; 62eb
	defb 0d3h,001h	; 62ed
	defb 028h,000h	; 62ef
	defb 029h,000h	; 62f1
	defb 02ah,000h	; 62f3
	defb 05eh,000h	; 62f5
	defb 07eh,000h	; 62f7
	defb 09eh,000h	; 62f9
	defb 0c6h,001h	; 62fb
	defb 00ah,000h	; 62fd
	defb 0ddh,001h	; 62ff
	defb 0deh,001h	; 6301
	defb 000h,000h	; 6303
	defb 001h,000h	; 6305
	defb 002h,000h	; 6307
	defb 003h,000h	; 6309
	defb 004h,000h	; 630b
	defb 005h,000h	; 630d
	defb 006h,000h	; 630f
	defb 007h,000h	; 6311
	defb 008h,000h	; 6313
	defb 009h,000h	; 6315
	defb 00bh,000h	; 6317
	defb 00eh,000h	; 6319
	defb 00fh,000h	; 631b
	defb 010h,000h	; 631d
	defb 011h,000h	; 631f
	defb 012h,000h	; 6321
	defb 013h,000h	; 6323
	defb 014h,000h	; 6325
	defb 015h,000h	; 6327
	defb 016h,000h	; 6329
	defb 017h,000h	; 632b
	defb 018h,000h	; 632d
	defb 019h,000h	; 632f
	defb 01ah,000h	; 6331
	defb 01bh,000h	; 6333
	defb 01ch,000h	; 6335
	defb 01dh,000h	; 6337
	defb 01eh,000h	; 6339
	defb 01fh,000h	; 633b
	defb 020h,000h	; 633d
	defb 03fh,000h	; 633f
	defb 040h,000h	; 6341
	defb 05fh,000h	; 6343
	defb 060h,000h	; 6345
	defb 07fh,000h	; 6347
	defb 080h,000h	; 6349
	defb 09fh,000h	; 634b
	defb 0a0h,000h	; 634d
	defb 0bfh,000h	; 634f
	defb 0c0h,000h	; 6351
	defb 0dfh,000h	; 6353
	defb 0e0h,000h	; 6355
	defb 0ffh,000h	; 6357
	defb 000h,001h	; 6359
	defb 01fh,001h	; 635b
	defb 020h,001h	; 635d
	defb 03fh,001h	; 635f
	defb 040h,001h	; 6361
	defb 05fh,001h	; 6363
	defb 060h,001h	; 6365
	defb 07fh,001h	; 6367
	defb 080h,001h	; 6369
	defb 09fh,001h	; 636b
	defb 0a0h,001h	; 636d
	defb 0bfh,001h	; 636f
	defb 0c0h,001h	; 6371
	defb 0dfh,001h	; 6373
	defb 0e0h,001h	; 6375
	defb 0e1h,001h	; 6377
	defb 0e2h,001h	; 6379
	defb 0e3h,001h	; 637b
	defb 0e4h,001h	; 637d
	defb 0e5h,001h	; 637f
	defb 0e6h,001h	; 6381
	defb 0e7h,001h	; 6383
	defb 0e8h,001h	; 6385
	defb 0f2h,001h	; 6387
	defb 0f3h,001h	; 6389
	defb 0f4h,001h	; 638b
	defb 0f5h,001h	; 638d
	defb 0f6h,001h	; 638f
	defb 0f7h,001h	; 6391
	defb 0f8h,001h	; 6393
	defb 0f9h,001h	; 6395
	defb 0fah,001h	; 6397
	defb 0fbh,001h	; 6399
	defb 0fch,001h	; 639b
	defb 0fdh,001h	; 639d
	defb 0feh,001h	; 639f
	defb 0ffh,001h	; 63a1
	defb 0ffh,0ffh	; 63a3

; ----------------------------------------------------------------------
; DATOS cosas_9_listas: 137 palabras: la lista de cada sala de 0x6291; lo leen
;   p09:622B (274 bytes)
;   0x63a5..0x64b7  (274 bytes)
DATA_cosas_9_listas:
	defb 0b7h,064h	; 63a5
	defb 0bbh,064h	; 63a7
	defb 0c6h,064h	; 63a9
	defb 0cdh,064h	; 63ab
	defb 0fah,064h	; 63ad
	defb 007h,065h	; 63af
	defb 02ch,065h	; 63b1
	defb 03fh,065h	; 63b3
	defb 04ch,065h	; 63b5
	defb 056h,065h	; 63b7
	defb 05ah,065h	; 63b9
	defb 0efh,065h	; 63bb
	defb 00ch,066h	; 63bd
	defb 02ah,066h	; 63bf
	defb 051h,066h	; 63c1
	defb 0c2h,064h	; 63c3
	defb 0ddh,064h	; 63c5
	defb 0e4h,064h	; 63c7
	defb 0e8h,064h	; 63c9
	defb 0ech,064h	; 63cb
	defb 0dah,065h	; 63cd
	defb 0deh,065h	; 63cf
	defb 0e2h,065h	; 63d1
	defb 0e6h,065h	; 63d3
	defb 01ch,065h	; 63d5
	defb 023h,065h	; 63d7
	defb 093h,066h	; 63d9
	defb 09ah,066h	; 63db
	defb 0a1h,066h	; 63dd
	defb 0a5h,066h	; 63df
	defb 0b5h,066h	; 63e1
	defb 0bch,066h	; 63e3
	defb 0c3h,066h	; 63e5
	defb 0cah,066h	; 63e7
	defb 0f3h,064h	; 63e9
	defb 017h,065h	; 63eb
	defb 027h,065h	; 63ed
	defb 067h,065h	; 63ef
	defb 0eah,065h	; 63f1
	defb 06fh,065h	; 63f3
	defb 07ch,065h	; 63f5
	defb 081h,065h	; 63f7
	defb 086h,065h	; 63f9
	defb 08bh,065h	; 63fb
	defb 090h,065h	; 63fd
	defb 095h,065h	; 63ff
	defb 09ah,065h	; 6401
	defb 09fh,065h	; 6403
	defb 0ach,065h	; 6405
	defb 0bdh,065h	; 6407
	defb 068h,066h	; 6409
	defb 075h,066h	; 640b
	defb 086h,066h	; 640d
	defb 0ach,066h	; 640f
	defb 0ceh,065h	; 6411
	defb 0d1h,066h	; 6413
	defb 0dah,066h	; 6415
	defb 0e7h,066h	; 6417
	defb 003h,067h	; 6419
	defb 003h,067h	; 641b
	defb 003h,067h	; 641d
	defb 003h,067h	; 641f
	defb 003h,067h	; 6421
	defb 003h,067h	; 6423
	defb 003h,067h	; 6425
	defb 003h,067h	; 6427
	defb 003h,067h	; 6429
	defb 003h,067h	; 642b
	defb 003h,067h	; 642d
	defb 003h,067h	; 642f
	defb 003h,067h	; 6431
	defb 003h,067h	; 6433
	defb 003h,067h	; 6435
	defb 003h,067h	; 6437
	defb 003h,067h	; 6439
	defb 003h,067h	; 643b
	defb 003h,067h	; 643d
	defb 003h,067h	; 643f
	defb 003h,067h	; 6441
	defb 003h,067h	; 6443
	defb 003h,067h	; 6445
	defb 003h,067h	; 6447
	defb 003h,067h	; 6449
	defb 003h,067h	; 644b
	defb 003h,067h	; 644d
	defb 0eeh,066h	; 644f
	defb 007h,067h	; 6451
	defb 00bh,067h	; 6453
	defb 007h,067h	; 6455
	defb 00bh,067h	; 6457
	defb 007h,067h	; 6459
	defb 00bh,067h	; 645b
	defb 007h,067h	; 645d
	defb 00bh,067h	; 645f
	defb 007h,067h	; 6461
	defb 00bh,067h	; 6463
	defb 007h,067h	; 6465
	defb 00bh,067h	; 6467
	defb 007h,067h	; 6469
	defb 00bh,067h	; 646b
	defb 007h,067h	; 646d
	defb 00bh,067h	; 646f
	defb 007h,067h	; 6471
	defb 00bh,067h	; 6473
	defb 007h,067h	; 6475
	defb 00bh,067h	; 6477
	defb 007h,067h	; 6479
	defb 00bh,067h	; 647b
	defb 007h,067h	; 647d
	defb 00bh,067h	; 647f
	defb 007h,067h	; 6481
	defb 00bh,067h	; 6483
	defb 007h,067h	; 6485
	defb 00bh,067h	; 6487
	defb 0f5h,066h	; 6489
	defb 00fh,067h	; 648b
	defb 00fh,067h	; 648d
	defb 00fh,067h	; 648f
	defb 00fh,067h	; 6491
	defb 00fh,067h	; 6493
	defb 00fh,067h	; 6495
	defb 00fh,067h	; 6497
	defb 00fh,067h	; 6499
	defb 00fh,067h	; 649b
	defb 00fh,067h	; 649d
	defb 00fh,067h	; 649f
	defb 00fh,067h	; 64a1
	defb 00fh,067h	; 64a3
	defb 00fh,067h	; 64a5
	defb 00fh,067h	; 64a7
	defb 00fh,067h	; 64a9
	defb 00fh,067h	; 64ab
	defb 00fh,067h	; 64ad
	defb 00fh,067h	; 64af
	defb 00fh,067h	; 64b1
	defb 00fh,067h	; 64b3
	defb 0fch,066h	; 64b5

; ----------------------------------------------------------------------
; DATOS cosas_9_64B7: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x64b7..0x64bb  (4 bytes)
DATA_cosas_9_64B7:
	defb 035h,05bh,067h,0ffh	; 64b7

; ----------------------------------------------------------------------
; DATOS cosas_9_64BB: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x64bb..0x64c2  (7 bytes)
DATA_cosas_9_64BB:
	defb 015h,06dh,067h,013h,087h,067h,0ffh	; 64bb

; ----------------------------------------------------------------------
; DATOS cosas_9_64C2: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x64c2..0x64c6  (4 bytes)
DATA_cosas_9_64C2:
	defb 012h,091h,067h,0ffh	; 64c2

; ----------------------------------------------------------------------
; DATOS cosas_9_64C6: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x64c6..0x64cd  (7 bytes)
DATA_cosas_9_64C6:
	defb 029h,0e9h,067h,022h,011h,068h,0ffh	; 64c6

; ----------------------------------------------------------------------
; DATOS cosas_9_64CD: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (16 bytes)
;   0x64cd..0x64dd  (16 bytes)
DATA_cosas_9_64CD:
	defb 024h,0ddh,067h,027h,0e3h,067h,015h,0f7h,067h,022h,0e9h,067h,025h,0c9h,068h,0ffh	; 64cd  $.g'.g..g".g%.h.

; ----------------------------------------------------------------------
; DATOS cosas_9_64DD: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x64dd..0x64e4  (7 bytes)
DATA_cosas_9_64DD:
	defb 012h,067h,06ah,036h,067h,06ah,0ffh	; 64dd

; ----------------------------------------------------------------------
; DATOS cosas_9_64E4: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x64e4..0x64e8  (4 bytes)
DATA_cosas_9_64E4:
	defb 025h,067h,06ah,0ffh	; 64e4

; ----------------------------------------------------------------------
; DATOS cosas_9_64E8: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x64e8..0x64ec  (4 bytes)
DATA_cosas_9_64E8:
	defb 025h,08dh,06ah,0ffh	; 64e8

; ----------------------------------------------------------------------
; DATOS cosas_9_64EC: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x64ec..0x64f3  (7 bytes)
DATA_cosas_9_64EC:
	defb 033h,067h,06ah,027h,08dh,06ah,0ffh	; 64ec

; ----------------------------------------------------------------------
; DATOS cosas_9_64F3: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x64f3..0x64fa  (7 bytes)
DATA_cosas_9_64F3:
	defb 034h,097h,068h,036h,09dh,068h,0ffh	; 64f3

; ----------------------------------------------------------------------
; DATOS cosas_9_64FA: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (13 bytes)
;   0x64fa..0x6507  (13 bytes)
DATA_cosas_9_64FA:
	defb 041h,011h,068h,059h,011h,068h,016h,0a3h,068h,059h,0c3h,068h,0ffh	; 64fa  A.hY.h..hY.h.

; ----------------------------------------------------------------------
; DATOS cosas_9_6507: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (16 bytes)
;   0x6507..0x6517  (16 bytes)
DATA_cosas_9_6507:
	defb 035h,0ddh,067h,038h,0e3h,067h,026h,0f7h,067h,051h,011h,068h,052h,0bdh,068h,0ffh	; 6507  5.g8.g&.gQ.hR.h.

; ----------------------------------------------------------------------
; DATOS cosas_9_6517: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (5 bytes)
;   0x6517..0x651c  (5 bytes)
DATA_cosas_9_6517:
	defb 0feh,013h,0d5h,068h,0ffh	; 6517

; ----------------------------------------------------------------------
; DATOS cosas_9_651C: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x651c..0x6523  (7 bytes)
DATA_cosas_9_651C:
	defb 022h,067h,06ah,037h,067h,06ah,0ffh	; 651c

; ----------------------------------------------------------------------
; DATOS cosas_9_6523: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x6523..0x6527  (4 bytes)
DATA_cosas_9_6523:
	defb 033h,08dh,06ah,0ffh	; 6523

; ----------------------------------------------------------------------
; DATOS cosas_9_6527: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (3 bytes)
;   0x6527..0x652a  (3 bytes)
DATA_cosas_9_6527:
	defb 0feh,013h,0ffh	; 6527

; ----------------------------------------------------------------------
; DATOS resto_652A: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (2 bytes)
;   0x652a..0x652c  (2 bytes)
DATA_resto_652A:
	defb 068h,0ffh	; 652a

; ----------------------------------------------------------------------
; DATOS cosas_9_652C: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (19 bytes)
;   0x652c..0x653f  (19 bytes)
DATA_cosas_9_652C:
	defb 032h,0ddh,067h,035h,0e3h,067h,023h,0f7h,067h,049h,011h,068h,033h,0c9h,068h,04ah	; 652c  2.g5.g#.gI.h3.hJ
	defb 0bdh,068h,0ffh	; 653c

; ----------------------------------------------------------------------
; DATOS cosas_9_653F: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (13 bytes)
;   0x653f..0x654c  (13 bytes)
DATA_cosas_9_653F:
	defb 053h,0ddh,067h,058h,0e3h,067h,044h,023h,068h,056h,0cfh,068h,0ffh	; 653f  S.gX.gD#hV.h.

; ----------------------------------------------------------------------
; DATOS cosas_9_654C: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (10 bytes)
;   0x654c..0x6556  (10 bytes)
DATA_cosas_9_654C:
	defb 038h,0a3h,068h,024h,0f7h,067h,034h,0c9h,068h,0ffh	; 654c  8.h$.g4.h.

; ----------------------------------------------------------------------
; DATOS cosas_9_6556: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x6556..0x655a  (4 bytes)
DATA_cosas_9_6556:
	defb 024h,091h,067h,0ffh	; 6556

; ----------------------------------------------------------------------
; DATOS cosas_9_655A: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (13 bytes)
;   0x655a..0x6567  (13 bytes)
DATA_cosas_9_655A:
	defb 022h,055h,068h,023h,037h,069h,025h,03dh,069h,028h,031h,069h,0ffh	; 655a  "Uh#7i%=i(1i.

; ----------------------------------------------------------------------
; DATOS cosas_9_6567: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (8 bytes)
;   0x6567..0x656f  (8 bytes)
DATA_cosas_9_6567:
	defb 021h,043h,069h,0feh,033h,069h,069h,0ffh	; 6567  !Ci.3ii.

; ----------------------------------------------------------------------
; DATOS cosas_9_656F: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (13 bytes)
;   0x656f..0x657c  (13 bytes)
DATA_cosas_9_656F:
	defb 07bh,0b5h,069h,06ah,0afh,069h,06bh,0afh,069h,07ah,0afh,069h,0ffh	; 656f  {.ij.ik.iz.i.

; ----------------------------------------------------------------------
; DATOS cosas_9_657C: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (5 bytes)
;   0x657c..0x6581  (5 bytes)
DATA_cosas_9_657C:
	defb 0feh,036h,097h,069h,0ffh	; 657c

; ----------------------------------------------------------------------
; DATOS cosas_9_6581: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (5 bytes)
;   0x6581..0x6586  (5 bytes)
DATA_cosas_9_6581:
	defb 0feh,046h,091h,069h,0ffh	; 6581

; ----------------------------------------------------------------------
; DATOS cosas_9_6586: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (5 bytes)
;   0x6586..0x658b  (5 bytes)
DATA_cosas_9_6586:
	defb 0feh,046h,097h,069h,0ffh	; 6586

; ----------------------------------------------------------------------
; DATOS cosas_9_658B: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (5 bytes)
;   0x658b..0x6590  (5 bytes)
DATA_cosas_9_658B:
	defb 0feh,046h,097h,069h,0ffh	; 658b

; ----------------------------------------------------------------------
; DATOS cosas_9_6590: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (5 bytes)
;   0x6590..0x6595  (5 bytes)
DATA_cosas_9_6590:
	defb 0feh,034h,0a1h,069h,0ffh	; 6590

; ----------------------------------------------------------------------
; DATOS cosas_9_6595: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (5 bytes)
;   0x6595..0x659a  (5 bytes)
DATA_cosas_9_6595:
	defb 0feh,068h,081h,069h,0ffh	; 6595

; ----------------------------------------------------------------------
; DATOS cosas_9_659A: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (5 bytes)
;   0x659a..0x659f  (5 bytes)
DATA_cosas_9_659A:
	defb 0feh,049h,0a1h,069h,0ffh	; 659a

; ----------------------------------------------------------------------
; DATOS cosas_9_659F: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (13 bytes)
;   0x659f..0x65ac  (13 bytes)
DATA_cosas_9_659F:
	defb 0feh,038h,097h,069h,0feh,03ah,097h,069h,0feh,031h,07bh,069h,0ffh	; 659f  .8.i.:.i.1{i.

; ----------------------------------------------------------------------
; DATOS cosas_9_65AC: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (17 bytes)
;   0x65ac..0x65bd  (17 bytes)
DATA_cosas_9_65AC:
	defb 0feh,030h,0a1h,069h,0feh,033h,0a1h,069h,0feh,036h,0a1h,069h,0feh,039h,0a1h,069h	; 65ac  .0.i.3.i.6.i.9.i
	defb 0ffh	; 65bc

; ----------------------------------------------------------------------
; DATOS cosas_9_65BD: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (17 bytes)
;   0x65bd..0x65ce  (17 bytes)
DATA_cosas_9_65BD:
	defb 0feh,030h,0a1h,069h,0feh,033h,097h,069h,0feh,005h,087h,069h,0feh,025h,087h,069h	; 65bd  .0.i.3.i...i.%.i
	defb 0ffh	; 65cd

; ----------------------------------------------------------------------
; DATOS cosas_9_65CE: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (12 bytes)
;   0x65ce..0x65da  (12 bytes)
DATA_cosas_9_65CE:
	defb 000h,0ddh,069h,0feh,045h,087h,069h,0feh,065h,087h,069h,0ffh	; 65ce  ..i.E.i.e.i.

; ----------------------------------------------------------------------
; DATOS cosas_9_65DA: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x65da..0x65de  (4 bytes)
DATA_cosas_9_65DA:
	defb 035h,08dh,06ah,0ffh	; 65da

; ----------------------------------------------------------------------
; DATOS cosas_9_65DE: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x65de..0x65e2  (4 bytes)
DATA_cosas_9_65DE:
	defb 044h,067h,06ah,0ffh	; 65de

; ----------------------------------------------------------------------
; DATOS cosas_9_65E2: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x65e2..0x65e6  (4 bytes)
DATA_cosas_9_65E2:
	defb 014h,067h,06ah,0ffh	; 65e2

; ----------------------------------------------------------------------
; DATOS cosas_9_65E6: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x65e6..0x65ea  (4 bytes)
DATA_cosas_9_65E6:
	defb 014h,08dh,06ah,0ffh	; 65e6

; ----------------------------------------------------------------------
; DATOS cosas_9_65EA: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (5 bytes)
;   0x65ea..0x65ef  (5 bytes)
DATA_cosas_9_65EA:
	defb 0feh,045h,07bh,069h,0ffh	; 65ea

; ----------------------------------------------------------------------
; DATOS cosas_9_65EF: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (29 bytes)
;   0x65ef..0x660c  (29 bytes)
DATA_cosas_9_65EF:
	defb 011h,0f7h,067h,015h,011h,068h,051h,011h,068h,059h,011h,068h,023h,0e3h,067h,017h	; 65ef  ..g..hQ.hY.h#.g.
	defb 0e3h,067h,053h,0e3h,067h,068h,0ddh,067h,0feh,01ah,06fh,069h,0ffh	; 65ff  .gS.gh.g..oi.

; ----------------------------------------------------------------------
; DATOS cosas_9_660C: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (30 bytes)
;   0x660c..0x662a  (30 bytes)
DATA_cosas_9_660C:
	defb 031h,0f7h,067h,039h,0f7h,067h,043h,0e3h,067h,053h,0e3h,067h,038h,0ddh,067h,048h	; 660c  1.g9.gC.gS.g8.gH
	defb 0ddh,067h,058h,0ddh,067h,0feh,011h,06fh,069h,0feh,01ah,06fh,069h,0ffh	; 661c  .gX.g..oi..oi.

; ----------------------------------------------------------------------
; DATOS cosas_9_662A: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (39 bytes)
;   0x662a..0x6651  (39 bytes)
DATA_cosas_9_662A:
	defb 034h,0f7h,067h,059h,011h,068h,033h,0ddh,067h,043h,0ddh,067h,053h,0ddh,067h,036h	; 662a  4.gY.h3.gC.gS.g6
	defb 0e3h,067h,046h,0e3h,067h,056h,0e3h,067h,068h,0ddh,067h,0feh,011h,06fh,069h,0feh	; 663a  .gF.gV.gh.g..oi.
	defb 01ah,06fh,069h,044h,0c9h,068h,0ffh	; 664a

; ----------------------------------------------------------------------
; DATOS cosas_9_6651: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (23 bytes)
;   0x6651..0x6668  (23 bytes)
DATA_cosas_9_6651:
	defb 011h,0a3h,068h,013h,0a3h,068h,047h,0a3h,068h,049h,0a3h,068h,051h,011h,068h,063h	; 6651  ..h..hG.hI.hQ.hc
	defb 0e3h,067h,0feh,01ah,06fh,069h,0ffh	; 6661

; ----------------------------------------------------------------------
; DATOS cosas_9_6668: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (13 bytes)
;   0x6668..0x6675  (13 bytes)
DATA_cosas_9_6668:
	defb 0feh,023h,087h,069h,0feh,043h,087h,069h,0feh,063h,087h,069h,0ffh	; 6668  .#.i.C.i.c.i.

; ----------------------------------------------------------------------
; DATOS cosas_9_6675: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (17 bytes)
;   0x6675..0x6686  (17 bytes)
DATA_cosas_9_6675:
	defb 0feh,003h,087h,069h,0feh,023h,087h,069h,0feh,043h,087h,069h,0feh,063h,087h,069h	; 6675  ...i.#.i.C.i.c.i
	defb 0ffh	; 6685

; ----------------------------------------------------------------------
; DATOS cosas_9_6686: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (13 bytes)
;   0x6686..0x6693  (13 bytes)
DATA_cosas_9_6686:
	defb 0feh,003h,087h,069h,0feh,023h,087h,069h,0feh,043h,087h,069h,0ffh	; 6686  ...i.#.i.C.i.

; ----------------------------------------------------------------------
; DATOS cosas_9_6693: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x6693..0x669a  (7 bytes)
DATA_cosas_9_6693:
	defb 012h,091h,067h,037h,0b7h,067h,0ffh	; 6693

; ----------------------------------------------------------------------
; DATOS cosas_9_669A: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x669a..0x66a1  (7 bytes)
DATA_cosas_9_669A:
	defb 018h,091h,067h,033h,091h,067h,0ffh	; 669a

; ----------------------------------------------------------------------
; DATOS cosas_9_66A1: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x66a1..0x66a5  (4 bytes)
DATA_cosas_9_66A1:
	defb 017h,091h,067h,0ffh	; 66a1

; ----------------------------------------------------------------------
; DATOS cosas_9_66A5: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x66a5..0x66ac  (7 bytes)
DATA_cosas_9_66A5:
	defb 022h,0b7h,067h,037h,0b7h,067h,0ffh	; 66a5

; ----------------------------------------------------------------------
; DATOS cosas_9_66AC: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (9 bytes)
;   0x66ac..0x66b5  (9 bytes)
DATA_cosas_9_66AC:
	defb 0feh,045h,087h,069h,0feh,065h,081h,069h,0ffh	; 66ac  .E.i.e.i.

; ----------------------------------------------------------------------
; DATOS cosas_9_66B5: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x66b5..0x66bc  (7 bytes)
DATA_cosas_9_66B5:
	defb 022h,08dh,06ah,047h,067h,06ah,0ffh	; 66b5

; ----------------------------------------------------------------------
; DATOS cosas_9_66BC: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x66bc..0x66c3  (7 bytes)
DATA_cosas_9_66BC:
	defb 042h,08dh,06ah,027h,08dh,06ah,0ffh	; 66bc

; ----------------------------------------------------------------------
; DATOS cosas_9_66C3: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x66c3..0x66ca  (7 bytes)
DATA_cosas_9_66C3:
	defb 022h,067h,06ah,017h,067h,06ah,0ffh	; 66c3

; ----------------------------------------------------------------------
; DATOS cosas_9_66CA: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x66ca..0x66d1  (7 bytes)
DATA_cosas_9_66CA:
	defb 022h,08dh,06ah,047h,067h,06ah,0ffh	; 66ca

; ----------------------------------------------------------------------
; DATOS cosas_9_66D1: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (9 bytes)
;   0x66d1..0x66da  (9 bytes)
DATA_cosas_9_66D1:
	defb 0feh,046h,0a1h,069h,0feh,049h,0a1h,069h,0ffh	; 66d1  .F.i.I.i.

; ----------------------------------------------------------------------
; DATOS cosas_9_66DA: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (13 bytes)
;   0x66da..0x66e7  (13 bytes)
DATA_cosas_9_66DA:
	defb 0feh,040h,0a1h,069h,0feh,043h,0a1h,069h,0feh,046h,091h,069h,0ffh	; 66da  .@.i.C.i.F.i.

; ----------------------------------------------------------------------
; DATOS cosas_9_66E7: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x66e7..0x66ee  (7 bytes)
DATA_cosas_9_66E7:
	defb 000h,0ddh,069h,000h,0bbh,069h,0ffh	; 66e7

; ----------------------------------------------------------------------
; DATOS cosas_9_66EE: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x66ee..0x66f5  (7 bytes)
DATA_cosas_9_66EE:
	defb 000h,0ddh,069h,00bh,0bbh,069h,0ffh	; 66ee

; ----------------------------------------------------------------------
; DATOS cosas_9_66F5: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x66f5..0x66fc  (7 bytes)
DATA_cosas_9_66F5:
	defb 070h,00fh,06ah,000h,0bbh,069h,0ffh	; 66f5

; ----------------------------------------------------------------------
; DATOS cosas_9_66FC: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (7 bytes)
;   0x66fc..0x6703  (7 bytes)
DATA_cosas_9_66FC:
	defb 070h,00fh,06ah,00bh,0bbh,069h,0ffh	; 66fc

; ----------------------------------------------------------------------
; DATOS cosas_9_6703: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x6703..0x6707  (4 bytes)
DATA_cosas_9_6703:
	defb 000h,0ddh,069h,0ffh	; 6703

; ----------------------------------------------------------------------
; DATOS cosas_9_6707: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x6707..0x670b  (4 bytes)
DATA_cosas_9_6707:
	defb 000h,0bbh,069h,0ffh	; 6707

; ----------------------------------------------------------------------
; DATOS cosas_9_670B: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x670b..0x670f  (4 bytes)
DATA_cosas_9_670B:
	defb 00bh,0bbh,069h,0ffh	; 670b

; ----------------------------------------------------------------------
; DATOS cosas_9_670F: registros hasta 0xFF que recorre p09:626A; lo leen
;   p09:622B (4 bytes)
;   0x670f..0x6713  (4 bytes)
DATA_cosas_9_670F:
	defb 070h,00fh,06ah,0ffh	; 670f

; ----------------------------------------------------------------------
; DATOS dibujos_p443D: 17 palabras: el dibujo de 0xE368 - 1 (p00:444C); todas
;   apuntan a 0x6735; lo leen p00:443D (34 bytes)
;   0x6713..0x6735  (34 bytes)
DATA_dibujos_p443D:
	defb 035h,067h	; 6713
	defb 035h,067h	; 6715
	defb 035h,067h	; 6717
	defb 035h,067h	; 6719
	defb 035h,067h	; 671b
	defb 035h,067h	; 671d
	defb 035h,067h	; 671f
	defb 035h,067h	; 6721
	defb 035h,067h	; 6723
	defb 035h,067h	; 6725
	defb 035h,067h	; 6727
	defb 035h,067h	; 6729
	defb 035h,067h	; 672b
	defb 035h,067h	; 672d
	defb 035h,067h	; 672f
	defb 035h,067h	; 6731
	defb 035h,067h	; 6733

; ----------------------------------------------------------------------
; DATOS dibujo_6735: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (38 bytes)
;   0x6735..0x675b  (38 bytes)
DATA_dibujo_6735:
	defb 003h,003h,0b0h,0b1h	; 6735
	defb 0b6h,0b7h,0b2h,0b3h	; 6739
	defb 0b8h,0b9h,0b4h,0b5h	; 673d
	defb 0bah,0bbh,0bch,0bdh	; 6741
	defb 0c2h,0c3h,0beh,0bfh	; 6745
	defb 0c4h,0c5h,0c0h,0c1h	; 6749
	defb 0c6h,0c7h,0c8h,0c9h	; 674d
	defb 0ceh,0cfh,0cah,0cbh	; 6751
	defb 0d0h,0d1h,0cch,0cdh	; 6755
	defb 0d2h,0d3h	; 6759

; ----------------------------------------------------------------------
; DATOS dibujo_675B: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (18 bytes)
;   0x675b..0x676d  (18 bytes)
DATA_dibujo_675B:
	defb 002h,002h,050h,051h	; 675b
	defb 054h,055h,052h,053h	; 675f
	defb 056h,057h,058h,059h	; 6763
	defb 05ch,05dh,05ah,05bh	; 6767
	defb 05eh,05fh	; 676b

; ----------------------------------------------------------------------
; DATOS dibujo_676D: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (26 bytes)
;   0x676d..0x6787  (26 bytes)
DATA_dibujo_676D:
	defb 003h,002h,060h,061h	; 676d
	defb 065h,064h,062h,063h	; 6771
	defb 066h,067h,068h,069h	; 6775
	defb 06ch,06dh,06ah,06bh	; 6779
	defb 06eh,06fh,070h,071h	; 677d
	defb 074h,075h,072h,073h	; 6781
	defb 076h,077h	; 6785

; ----------------------------------------------------------------------
; DATOS dibujo_6787: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (10 bytes)
;   0x6787..0x6791  (10 bytes)
DATA_dibujo_6787:
	defb 001h,002h,078h,079h	; 6787
	defb 07ch,07dh,07ah,07bh	; 678b
	defb 07eh,07fh	; 678f

; ----------------------------------------------------------------------
; DATOS dibujo_6791: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (38 bytes)
;   0x6791..0x67b7  (38 bytes)
DATA_dibujo_6791:
	defb 003h,003h,050h,051h	; 6791
	defb 056h,057h,052h,053h	; 6795
	defb 058h,059h,054h,055h	; 6799
	defb 05ah,05bh,05ch,05dh	; 679d
	defb 062h,063h,05eh,05fh	; 67a1
	defb 064h,065h,060h,061h	; 67a5
	defb 066h,067h,068h,069h	; 67a9
	defb 06eh,06fh,06ah,06bh	; 67ad
	defb 070h,071h,06ch,06dh	; 67b1
	defb 072h,073h	; 67b5

; ----------------------------------------------------------------------
; DATOS dibujo_67B7: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (38 bytes)
;   0x67b7..0x67dd  (38 bytes)
DATA_dibujo_67B7:
	defb 003h,003h,086h,086h	; 67b7
	defb 084h,07ah,086h,086h	; 67bb
	defb 07bh,07bh,086h,086h	; 67bf
	defb 07bh,07ch,078h,07dh	; 67c3
	defb 079h,07dh,07dh,07dh	; 67c7
	defb 07dh,07dh,07dh,07dh	; 67cb
	defb 07dh,07dh,085h,07eh	; 67cf
	defb 085h,081h,07fh,07fh	; 67d3
	defb 082h,082h,07fh,080h	; 67d7
	defb 082h,083h	; 67db

; ----------------------------------------------------------------------
; DATOS dibujo_67DD: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x67dd..0x67e3  (6 bytes)
DATA_dibujo_67DD:
	defb 001h,001h,050h,051h	; 67dd
	defb 052h,053h	; 67e1

; ----------------------------------------------------------------------
; DATOS dibujo_67E3: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x67e3..0x67e9  (6 bytes)
DATA_dibujo_67E3:
	defb 001h,001h,054h,055h	; 67e3
	defb 056h,057h	; 67e7

; ----------------------------------------------------------------------
; DATOS dibujo_67E9: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (14 bytes)
;   0x67e9..0x67f7  (14 bytes)
DATA_dibujo_67E9:
	defb 003h,001h,05ah,05bh	; 67e9
	defb 05dh,05eh,05dh,05eh	; 67ed
	defb 05dh,05eh,05dh,05eh	; 67f1
	defb 063h,064h	; 67f5

; ----------------------------------------------------------------------
; DATOS dibujo_67F7: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (26 bytes)
;   0x67f7..0x6811  (26 bytes)
DATA_dibujo_67F7:
	defb 003h,002h,05ah,05ch	; 67f7
	defb 05dh,05ch,05ch,05bh	; 67fb
	defb 05ch,05eh,05dh,05ch	; 67ff
	defb 05dh,05ch,05ch,05eh	; 6803
	defb 05ch,05eh,05dh,05ch	; 6807
	defb 05fh,060h,05ch,05eh	; 680b
	defb 061h,062h	; 680f

; ----------------------------------------------------------------------
; DATOS dibujo_6811: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (18 bytes)
;   0x6811..0x6823  (18 bytes)
DATA_dibujo_6811:
	defb 002h,002h,05ah,05ch	; 6811
	defb 05dh,05ch,05ch,05bh	; 6815
	defb 05ch,05eh,05dh,05ch	; 6819
	defb 05fh,060h,05ch,05eh	; 681d
	defb 061h,062h	; 6821

; ----------------------------------------------------------------------
; DATOS dibujo_6823: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (50 bytes)
;   0x6823..0x6855  (50 bytes)
DATA_dibujo_6823:
	defb 003h,004h,05ah,05ch	; 6823
	defb 05dh,05ch,05ch,05ch	; 6827
	defb 05ch,05ch,05ch,05ch	; 682b
	defb 05ch,05ch,05ch,05bh	; 682f
	defb 05ch,05eh,05dh,05ch	; 6833
	defb 05dh,05ch,05ch,05ch	; 6837
	defb 05ch,05ch,05ch,05ch	; 683b
	defb 05ch,05ch,05ch,05eh	; 683f
	defb 05ch,05eh,05dh,05ch	; 6843
	defb 05fh,060h,05ch,05ch	; 6847
	defb 060h,061h,05ch,05ch	; 684b
	defb 061h,060h,05ch,05eh	; 684f
	defb 061h,062h	; 6853

; ----------------------------------------------------------------------
; DATOS dibujo_6855: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (66 bytes)
;   0x6855..0x6897  (66 bytes)
DATA_dibujo_6855:
	defb 002h,008h,05ch,05eh	; 6855
	defb 05fh,05eh,05eh,05eh	; 6859
	defb 05eh,05eh,05eh,05eh	; 685d
	defb 05eh,05eh,05eh,05eh	; 6861
	defb 05eh,05eh,05eh,05eh	; 6865
	defb 05eh,05eh,05eh,05eh	; 6869
	defb 05eh,05eh,05eh,05eh	; 686d
	defb 05eh,05eh,05eh,05dh	; 6871
	defb 05eh,060h,05fh,05eh	; 6875
	defb 061h,062h,05eh,05eh	; 6879
	defb 062h,063h,05eh,05eh	; 687d
	defb 063h,062h,05eh,05eh	; 6881
	defb 063h,063h,05eh,05eh	; 6885
	defb 062h,062h,05eh,05eh	; 6889
	defb 063h,062h,05eh,05eh	; 688d
	defb 063h,063h,05eh,060h	; 6891
	defb 062h,064h	; 6895

; ----------------------------------------------------------------------
; DATOS dibujo_6897: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6897..0x689d  (6 bytes)
DATA_dibujo_6897:
	defb 001h,001h,087h,089h	; 6897
	defb 088h,08ah	; 689b

; ----------------------------------------------------------------------
; DATOS dibujo_689D: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x689d..0x68a3  (6 bytes)
DATA_dibujo_689D:
	defb 001h,001h,08bh,08dh	; 689d
	defb 08ch,08eh	; 68a1

; ----------------------------------------------------------------------
; DATOS dibujo_68A3: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (26 bytes)
;   0x68a3..0x68bd  (26 bytes)
DATA_dibujo_68A3:
	defb 003h,002h,065h,066h	; 68a3
	defb 069h,06ah,067h,068h	; 68a7
	defb 06bh,06ch,06dh,06eh	; 68ab
	defb 071h,073h,06fh,070h	; 68af
	defb 074h,072h,075h,076h	; 68b3
	defb 079h,07ah,077h,078h	; 68b7
	defb 07bh,07ch	; 68bb

; ----------------------------------------------------------------------
; DATOS dibujo_68BD: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x68bd..0x68c3  (6 bytes)
DATA_dibujo_68BD:
	defb 001h,001h,058h,05bh	; 68bd
	defb 059h,05eh	; 68c1

; ----------------------------------------------------------------------
; DATOS dibujo_68C3: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x68c3..0x68c9  (6 bytes)
DATA_dibujo_68C3:
	defb 001h,001h,05ah,058h	; 68c3
	defb 05dh,059h	; 68c7

; ----------------------------------------------------------------------
; DATOS dibujo_68C9: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x68c9..0x68cf  (6 bytes)
DATA_dibujo_68C9:
	defb 001h,001h,05dh,058h	; 68c9
	defb 05dh,059h	; 68cd

; ----------------------------------------------------------------------
; DATOS dibujo_68CF: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x68cf..0x68d5  (6 bytes)
DATA_dibujo_68CF:
	defb 001h,001h,058h,05ch	; 68cf
	defb 059h,05ch	; 68d3

; ----------------------------------------------------------------------
; DATOS dibujo_68D5: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (42 bytes)
;   0x68d5..0x68ff  (42 bytes)
DATA_dibujo_68D5:
	defb 002h,005h,055h,054h	; 68d5
	defb 055h,054h,054h,054h	; 68d9
	defb 054h,054h,054h,054h	; 68dd
	defb 054h,054h,054h,054h	; 68e1
	defb 054h,054h,054h,055h	; 68e5
	defb 054h,055h,055h,054h	; 68e9
	defb 056h,057h,054h,054h	; 68ed
	defb 057h,057h,054h,054h	; 68f1
	defb 057h,057h,054h,054h	; 68f5
	defb 057h,057h,054h,055h	; 68f9
	defb 057h,058h	; 68fd

; ----------------------------------------------------------------------
; DATOS dibujo_68FF: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (50 bytes)
;   0x68ff..0x6931  (50 bytes)
DATA_dibujo_68FF:
	defb 002h,006h,054h,050h	; 68ff
	defb 054h,050h,050h,050h	; 6903
	defb 050h,050h,050h,050h	; 6907
	defb 050h,050h,050h,050h	; 690b
	defb 050h,050h,050h,050h	; 690f
	defb 050h,050h,050h,055h	; 6913
	defb 050h,055h,054h,050h	; 6917
	defb 052h,051h,050h,050h	; 691b
	defb 051h,051h,050h,050h	; 691f
	defb 051h,051h,050h,050h	; 6923
	defb 051h,051h,050h,050h	; 6927
	defb 051h,051h,050h,055h	; 692b
	defb 051h,053h	; 692f

; ----------------------------------------------------------------------
; DATOS dibujo_6931: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6931..0x6937  (6 bytes)
DATA_dibujo_6931:
	defb 001h,001h,050h,051h	; 6931
	defb 052h,053h	; 6935

; ----------------------------------------------------------------------
; DATOS dibujo_6937: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6937..0x693d  (6 bytes)
DATA_dibujo_6937:
	defb 001h,001h,054h,055h	; 6937
	defb 056h,057h	; 693b

; ----------------------------------------------------------------------
; DATOS dibujo_693D: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x693d..0x6943  (6 bytes)
DATA_dibujo_693D:
	defb 001h,001h,058h,059h	; 693d
	defb 05ah,05bh	; 6941

; ----------------------------------------------------------------------
; DATOS dibujo_6943: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (38 bytes)
;   0x6943..0x6969  (38 bytes)
DATA_dibujo_6943:
	defb 003h,003h,065h,066h	; 6943
	defb 054h,054h,065h,066h	; 6947
	defb 054h,054h,065h,066h	; 694b
	defb 054h,054h,059h,05ah	; 694f
	defb 05dh,05fh,05bh,05ch	; 6953
	defb 060h,05eh,061h,062h	; 6957
	defb 063h,064h,054h,054h	; 695b
	defb 057h,057h,054h,054h	; 695f
	defb 057h,057h,054h,054h	; 6963
	defb 057h,057h	; 6967

; ----------------------------------------------------------------------
; DATOS dibujo_6969: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6969..0x696f  (6 bytes)
DATA_dibujo_6969:
	defb 001h,001h,061h,062h	; 6969
	defb 063h,064h	; 696d

; ----------------------------------------------------------------------
; DATOS dibujo_696F: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x696f..0x6975  (6 bytes)
DATA_dibujo_696F:
	defb 001h,001h,038h,039h	; 696f
	defb 03ah,03bh	; 6973

; ----------------------------------------------------------------------
; DATOS dibujo_6975: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6975..0x697b  (6 bytes)
DATA_dibujo_6975:
	defb 001h,001h,01ch,01dh	; 6975
	defb 01eh,01fh	; 6979

; ----------------------------------------------------------------------
; DATOS dibujo_697B: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x697b..0x6981  (6 bytes)
DATA_dibujo_697B:
	defb 001h,001h,06dh,06eh	; 697b
	defb 06fh,070h	; 697f

; ----------------------------------------------------------------------
; DATOS dibujo_6981: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6981..0x6987  (6 bytes)
DATA_dibujo_6981:
	defb 001h,001h,050h,051h	; 6981
	defb 050h,051h	; 6985

; ----------------------------------------------------------------------
; DATOS dibujo_6987: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (10 bytes)
;   0x6987..0x6991  (10 bytes)
DATA_dibujo_6987:
	defb 002h,001h,050h,051h	; 6987
	defb 050h,051h,050h,051h	; 698b
	defb 050h,051h	; 698f

; ----------------------------------------------------------------------
; DATOS dibujo_6991: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6991..0x6997  (6 bytes)
DATA_dibujo_6991:
	defb 001h,001h,052h,052h	; 6991
	defb 053h,053h	; 6995

; ----------------------------------------------------------------------
; DATOS dibujo_6997: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (10 bytes)
;   0x6997..0x69a1  (10 bytes)
DATA_dibujo_6997:
	defb 001h,002h,052h,052h	; 6997
	defb 053h,053h,052h,052h	; 699b
	defb 053h,053h	; 699f

; ----------------------------------------------------------------------
; DATOS dibujo_69A1: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (14 bytes)
;   0x69a1..0x69af  (14 bytes)
DATA_dibujo_69A1:
	defb 001h,003h,052h,052h	; 69a1
	defb 053h,053h,052h,052h	; 69a5
	defb 053h,053h,052h,052h	; 69a9
	defb 053h,053h	; 69ad

; ----------------------------------------------------------------------
; DATOS dibujo_69AF: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x69af..0x69b5  (6 bytes)
DATA_dibujo_69AF:
	defb 001h,001h,054h,055h	; 69af
	defb 056h,057h	; 69b3

; ----------------------------------------------------------------------
; DATOS dibujo_69B5: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x69b5..0x69bb  (6 bytes)
DATA_dibujo_69B5:
	defb 001h,001h,058h,059h	; 69b5
	defb 05ah,05bh	; 69b9

; ----------------------------------------------------------------------
; DATOS dibujo_69BB: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (34 bytes)
;   0x69bb..0x69dd  (34 bytes)
DATA_dibujo_69BB:
	defb 008h,001h,058h,059h	; 69bb
	defb 05ah,05bh,058h,059h	; 69bf
	defb 05ah,05bh,058h,059h	; 69c3
	defb 05ah,05bh,058h,059h	; 69c7
	defb 05ah,05bh,058h,059h	; 69cb
	defb 05ah,05bh,058h,059h	; 69cf
	defb 05ah,05bh,058h,059h	; 69d3
	defb 05ah,05bh,058h,059h	; 69d7
	defb 05ah,05bh	; 69db

; ----------------------------------------------------------------------
; DATOS dibujo_69DD: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (50 bytes)
;   0x69dd..0x6a0f  (50 bytes)
DATA_dibujo_69DD:
	defb 001h,00ch,058h,059h	; 69dd
	defb 05ch,05dh,058h,059h	; 69e1
	defb 05ch,05dh,058h,059h	; 69e5
	defb 05ch,05dh,058h,059h	; 69e9
	defb 05ch,05dh,058h,059h	; 69ed
	defb 05ch,05dh,058h,059h	; 69f1
	defb 05ch,05dh,058h,059h	; 69f5
	defb 05ch,05dh,058h,059h	; 69f9
	defb 05ch,05dh,058h,059h	; 69fd
	defb 05ch,05dh,058h,059h	; 6a01
	defb 05ch,05dh,058h,059h	; 6a05
	defb 05ch,05dh,058h,059h	; 6a09
	defb 05ch,05dh	; 6a0d

; ----------------------------------------------------------------------
; DATOS dibujo_6A0F: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (50 bytes)
;   0x6a0f..0x6a41  (50 bytes)
DATA_dibujo_6A0F:
	defb 001h,00ch,058h,059h	; 6a0f
	defb 05ah,05bh,058h,059h	; 6a13
	defb 05ah,05bh,058h,059h	; 6a17
	defb 05ah,05bh,058h,059h	; 6a1b
	defb 05ah,05bh,058h,059h	; 6a1f
	defb 05ah,05bh,058h,059h	; 6a23
	defb 05ah,05bh,058h,059h	; 6a27
	defb 05ah,05bh,058h,059h	; 6a2b
	defb 05ah,05bh,058h,059h	; 6a2f
	defb 05ah,05bh,058h,059h	; 6a33
	defb 05ah,05bh,058h,059h	; 6a37
	defb 05ah,05bh,058h,059h	; 6a3b
	defb 05ah,05bh	; 6a3f

; ----------------------------------------------------------------------
; DATOS dibujo_6A41: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (38 bytes)
;   0x6a41..0x6a67  (38 bytes)
DATA_dibujo_6A41:
	defb 003h,003h,05eh,066h	; 6a41
	defb 062h,06ah,067h,066h	; 6a45
	defb 06ch,06ch,067h,05fh	; 6a49
	defb 06bh,064h,063h,06bh	; 6a4d
	defb 062h,06ch,06ah,06bh	; 6a51
	defb 06ah,06ah,06ah,065h	; 6a55
	defb 06ch,064h,063h,06bh	; 6a59
	defb 060h,068h,06ch,06ch	; 6a5d
	defb 069h,068h,06ah,065h	; 6a61
	defb 069h,061h	; 6a65

; ----------------------------------------------------------------------
; DATOS dibujo_6A67: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (38 bytes)
;   0x6a67..0x6a8d  (38 bytes)
DATA_dibujo_6A67:
	defb 003h,003h,09bh,09ch	; 6a67
	defb 056h,057h,052h,053h	; 6a6b
	defb 058h,059h,09dh,09eh	; 6a6f
	defb 05ah,05bh,05ch,05dh	; 6a73
	defb 062h,063h,05eh,05fh	; 6a77
	defb 064h,065h,060h,061h	; 6a7b
	defb 066h,067h,09fh,0a0h	; 6a7f
	defb 0a3h,0a4h,06ah,06bh	; 6a83
	defb 070h,071h,0a1h,0a2h	; 6a87
	defb 0a5h,0a6h	; 6a8b

; ----------------------------------------------------------------------
; DATOS dibujo_6A8D: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (38 bytes)
;   0x6a8d..0x6ab3  (38 bytes)
DATA_dibujo_6A8D:
	defb 003h,003h,090h,090h	; 6a8d
	defb 08fh,091h,090h,090h	; 6a91
	defb 07bh,07bh,090h,090h	; 6a95
	defb 07bh,092h,093h,07dh	; 6a99
	defb 094h,07dh,07dh,07dh	; 6a9d
	defb 07dh,07dh,07dh,07dh	; 6aa1
	defb 07dh,07dh,095h,096h	; 6aa5
	defb 098h,099h,07fh,07fh	; 6aa9
	defb 082h,082h,07fh,097h	; 6aad
	defb 082h,09ah	; 6ab1

; ----------------------------------------------------------------------
; DATOS dibujo_6AB3: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6ab3..0x6ab9  (6 bytes)
DATA_dibujo_6AB3:
	defb 001h,001h,024h,025h	; 6ab3
	defb 026h,027h	; 6ab7

; ----------------------------------------------------------------------
; DATOS dibujo_6AB9: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6ab9..0x6abf  (6 bytes)
DATA_dibujo_6AB9:
	defb 001h,001h,04ch,04dh	; 6ab9
	defb 04eh,04fh	; 6abd

; ----------------------------------------------------------------------
; DATOS dibujo_6ABF: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6abf..0x6ac5  (6 bytes)
DATA_dibujo_6ABF:
	defb 001h,001h,07dh,07eh	; 6abf
	defb 07fh,080h	; 6ac3

; ----------------------------------------------------------------------
; DATOS dibujo_6AC5: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6ac5..0x6acb  (6 bytes)
DATA_dibujo_6AC5:
	defb 001h,001h,056h,057h	; 6ac5
	defb 058h,059h	; 6ac9

; ----------------------------------------------------------------------
; DATOS dibujo_6ACB: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6acb..0x6ad1  (6 bytes)
DATA_dibujo_6ACB:
	defb 001h,001h,067h,068h	; 6acb
	defb 069h,06ah	; 6acf

; ----------------------------------------------------------------------
; DATOS dibujo_6AD1: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (74 bytes)
;   0x6ad1..0x6b1b  (74 bytes)
DATA_dibujo_6AD1:
	defb 006h,003h,067h,068h	; 6ad1
	defb 069h,06ah,067h,068h	; 6ad5
	defb 069h,06ah,067h,068h	; 6ad9
	defb 069h,06ah,067h,068h	; 6add
	defb 069h,06ah,067h,068h	; 6ae1
	defb 069h,06ah,067h,068h	; 6ae5
	defb 069h,06ah,067h,068h	; 6ae9
	defb 069h,06ah,067h,068h	; 6aed
	defb 069h,06ah,067h,068h	; 6af1
	defb 069h,06ah,067h,068h	; 6af5
	defb 069h,06ah,067h,068h	; 6af9
	defb 069h,06ah,067h,068h	; 6afd
	defb 069h,06ah,067h,068h	; 6b01
	defb 069h,06ah,067h,068h	; 6b05
	defb 069h,06ah,067h,068h	; 6b09
	defb 069h,06ah,067h,068h	; 6b0d
	defb 069h,06ah,067h,068h	; 6b11
	defb 069h,06ah,067h,068h	; 6b15
	defb 069h,06ah	; 6b19

; ----------------------------------------------------------------------
; DATOS dibujo_6B1B: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (10 bytes)
;   0x6b1b..0x6b25  (10 bytes)
DATA_dibujo_6B1B:
	defb 002h,001h,038h,039h	; 6b1b
	defb 03ah,03bh,038h,039h	; 6b1f
	defb 03ah,03bh	; 6b23

; ----------------------------------------------------------------------
; DATOS dibujo_6B25: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (10 bytes)
;   0x6b25..0x6b2f  (10 bytes)
DATA_dibujo_6B25:
	defb 002h,001h,038h,039h	; 6b25
	defb 03ah,03bh,038h,039h	; 6b29
	defb 03ah,03bh	; 6b2d

; ----------------------------------------------------------------------
; DATOS dibujo_6B2F: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2: uno de los 52 que van seguidos de 0x6735 a 0x6B35 (el ultimo
;   acaba justo donde empieza el codigo); lo leen p00:44B8 (6 bytes)
;   0x6b2f..0x6b35  (6 bytes)
DATA_dibujo_6B2F:
	defb 001h,001h,038h,039h	; 6b2f
	defb 03ah,03bh	; 6b33

; ======================================================================
; CODIGO 0x6b35..0x6b3f  (10 bytes)
; ======================================================================


L_6B35:
	call L_6C1A		;6b35
	ld a,(0e3a1h)		;6b38
	dec a			;6b3b
	call 040abh		;6b3c

; ----------------------------------------------------------------------
; DATOS saltos_6B3F: tabla de 9 palabras del despachador (call 0x408D en
;   0x6B3C); lo leen L_40AB (18 bytes)
;   0x6b3f..0x6b51  (18 bytes)
DATA_saltos_6B3F:
	defb 07bh,06bh	; 6b3f
	defb 051h,06bh	; 6b41
	defb 07ch,06bh	; 6b43
	defb 051h,06bh	; 6b45
	defb 09ch,06bh	; 6b47
	defb 07ch,06bh	; 6b49
	defb 07ch,06bh	; 6b4b
	defb 07bh,06bh	; 6b4d
	defb 07bh,06bh	; 6b4f

; ======================================================================
; CODIGO 0x6b51..0x6bca  (121 bytes)
; ======================================================================


L_6B51:
	ld a,(0e3a1h)		;6b51
	cp 004h		;6b54
	ld b,00ah		;6b56
	jr nz,L_6B5C		;6b58
	ld b,00dh		;6b5a
L_6B5C:
	ld hl,03981h		;6b5c
	ld c,000h		;6b5f
	call L_6B6F		;6b61
	ld hl,03981h		;6b64
	ld a,(0e3b3h)		;6b67
	or a			;6b6a
	ret z			;6b6b
	ld b,a			;6b6c
	ld c,00ah		;6b6d
L_6B6F:
	push bc			;6b6f
	ld a,c			;6b70
	call 0004dh		;6b71   ; BIOS WRTVRM - Writes data in VRAM
	ld de,0ffe0h		;6b74
	add hl,de			;6b77
	pop bc			;6b78
	djnz L_6B6F		;6b79
L_6B7B:
	ret			;6b7b
L_6B7C:
	ld hl,0ee81h		;6b7c
	ld b,00ah		;6b7f
	ld c,000h		;6b81
	call L_6B94		;6b83
	ld hl,0ee81h		;6b86
	ld a,(0e3b3h)		;6b89
	or a			;6b8c
	ret z			;6b8d
	cp 00bh		;6b8e
	ret nc			;6b90
	ld b,a			;6b91
	ld c,00ah		;6b92
L_6B94:
	ld de,0ffe0h		;6b94
L_6B97:
	ld (hl),c			;6b97
	add hl,de			;6b98
	djnz L_6B97		;6b99
	ret			;6b9b
L_6B9C:
	ld hl,010b8h		;6b9c
	call 04509h		;6b9f
	ld a,h			;6ba2
	sub 0b5h		;6ba3
	ld h,a			;6ba5
	ld b,007h		;6ba6
	ld c,000h		;6ba8
	push hl			;6baa
	call L_6B6F		;6bab
	pop hl			;6bae
	ld a,(0e3f6h)		;6baf
	or a			;6bb2
	ret z			;6bb3
	dec a			;6bb4
	or a			;6bb5
	ret z			;6bb6
	ld b,a			;6bb7
	ld c,012h		;6bb8
	jr L_6B6F		;6bba
L_6BBC:
	ld a,(0e3f7h)		;6bbc
	or a			;6bbf
	call z,L_6B35		;6bc0
	ld a,(0e3a1h)		;6bc3
	dec a			;6bc6
	call 040abh		;6bc7

; ----------------------------------------------------------------------
; DATOS saltos_6BCA: tabla de 9 palabras del despachador (call 0x408D en
;   0x6BC7); lo leen L_40AB (18 bytes)
;   0x6bca..0x6bdc  (18 bytes)
DATA_saltos_6BCA:
	defb 07bh,06bh	; 6bca
	defb 0f6h,06bh	; 6bcc
	defb 0dch,06bh	; 6bce
	defb 0f6h,06bh	; 6bd0
	defb 07bh,06bh	; 6bd2
	defb 0dch,06bh	; 6bd4
	defb 0dch,06bh	; 6bd6
	defb 07bh,06bh	; 6bd8
	defb 07bh,06bh	; 6bda

; ======================================================================
; CODIGO 0x6bdc..0x6c29  (77 bytes)
; ======================================================================


L_6BDC:
	ld hl,0ee82h		;6bdc
	ld b,00ah		;6bdf
	ld c,000h		;6be1
	call L_6B94		;6be3
	ld hl,0ee82h		;6be6
	ld a,(0ea0bh)		;6be9
	or a			;6bec
	ret z			;6bed
	cp 00bh		;6bee
	ret nc			;6bf0
	ld b,a			;6bf1
	ld c,009h		;6bf2
	jr $-96		;6bf4
L_6BF6:
	ld hl,03982h		;6bf6
	ld b,00ah		;6bf9
	ld c,000h		;6bfb
	call L_6B6F		;6bfd
	ld hl,03982h		;6c00
	ld a,(0e3a1h)		;6c03
	cp 004h		;6c06
	ld a,(0ea0bh)		;6c08
	jr nz,L_6C0F		;6c0b
	srl a		;6c0d
L_6C0F:
	or a			;6c0f
	ret z			;6c10
	cp 015h		;6c11
	ret nc			;6c13
	ld b,a			;6c14
	ld c,009h		;6c15
	jp L_6B6F		;6c17
L_6C1A:
	ld a,(0e3f6h)		;6c1a
	srl a		;6c1d
	ld (0e3b3h),a		;6c1f
	ret			;6c22
L_6C23:
	ld a,(0e350h)		;6c23
	call 040abh		;6c26

; ----------------------------------------------------------------------
; DATOS saltos_6C29: tabla de 34 palabras del despachador (call 0x408D en
;   0x6C26); lo leen L_40AB (68 bytes)
;   0x6c29..0x6c6d  (68 bytes)
DATA_saltos_6C29:
	defb 06dh,06ch	; 6c29
	defb 0c7h,06ch	; 6c2b
	defb 0d5h,06ch	; 6c2d
	defb 0d8h,06ch	; 6c2f
	defb 0b2h,06ch	; 6c31
	defb 0f1h,06ch	; 6c33
	defb 006h,06dh	; 6c35
	defb 06fh,06dh	; 6c37
	defb 0c5h,06dh	; 6c39
	defb 0a5h,06dh	; 6c3b
	defb 0b6h,06dh	; 6c3d
	defb 02ah,06eh	; 6c3f
	defb 06fh,06dh	; 6c41
	defb 0c0h,06dh	; 6c43
	defb 0a1h,06dh	; 6c45
	defb 06fh,06dh	; 6c47
	defb 0cah,06dh	; 6c49
	defb 03ch,06eh	; 6c4b
	defb 064h,06eh	; 6c4d
	defb 0a2h,06eh	; 6c4f
	defb 0c9h,06eh	; 6c51
	defb 09eh,06eh	; 6c53
	defb 09ah,06eh	; 6c55
	defb 0deh,06eh	; 6c57
	defb 096h,06eh	; 6c59
	defb 092h,06eh	; 6c5b
	defb 001h,06fh	; 6c5d
	defb 00bh,06fh	; 6c5f
	defb 012h,06fh	; 6c61
	defb 0beh,06fh	; 6c63
	defb 0dch,06fh	; 6c65
	defb 009h,070h	; 6c67
	defb 023h,070h	; 6c69
	defb 053h,070h	; 6c6b

; ======================================================================
; CODIGO 0x6c6d..0x6d6b  (254 bytes)
; ======================================================================


L_6C6D:
	call 058ffh		;6c6d
	call 0599ah		;6c70
	call 0591bh		;6c73
	ld b,009h		;6c76
	ld hl,06917h		;6c78
	call 04daah		;6c7b
	call 058bfh		;6c7e
	ld hl,0ad32h		;6c81
	call 04344h		;6c84
	call 0432fh		;6c87
	call 04335h		;6c8a
	xor a			;6c8d
	ld (0e351h),a		;6c8e
	ld (0e352h),a		;6c91
	ld (0e885h),a		;6c94
	ld hl,0e8a0h		;6c97
	ld de,0e8a1h		;6c9a
	ld bc,0003fh		;6c9d
	ld (hl),a			;6ca0
	ldir		;6ca1
	ld hl,00236h		;6ca3
	ld (0eb40h),hl		;6ca6
	call 05e51h		;6ca9
	call 0456ah		;6cac
L_6CAF:
	jp L_7034		;6caf
L_6CB2:
	ld a,(0e003h)		;6cb2
	and 007h		;6cb5
	ret nz			;6cb7
	call 0439bh		;6cb8
	ld a,(0e34bh)		;6cbb
	and a			;6cbe
	ret nz			;6cbf
	ld a,080h		;6cc0
	ld (0e004h),a		;6cc2
	jr L_6CAF		;6cc5
L_6CC7:
	ld c,000h		;6cc7
	call 04dfdh		;6cc9
	ld a,(0e886h)		;6ccc
	and a			;6ccf
	jp nz,L_706D		;6cd0
L_6CD3:
	jr L_6CAF		;6cd3
L_6CD5:
	jp L_706D		;6cd5
L_6CD8:
	ld hl,0bfa9h		;6cd8
	ld (0e34ch),hl		;6cdb
	ld a,0ffh		;6cde
	ld (0e34ah),a		;6ce0
	ld a,001h		;6ce3
	ld (0e34bh),a		;6ce5
	ld hl,0e351h		;6ce8
	inc (hl)			;6ceb
	call 045c9h		;6cec
	jr L_6CD3		;6cef
L_6CF1:
	ld c,001h		;6cf1
	call 04dfdh		;6cf3
	ld a,(0e886h)		;6cf6
	and a			;6cf9
	ret nz			;6cfa
	ld a,(0e887h)		;6cfb
	and a			;6cfe
	ret nz			;6cff
	xor a			;6d00
	ld (0e004h),a		;6d01
L_6D04:
	jr L_6CD3		;6d04
L_6D06:
	call 0599ah		;6d06
	call 0591bh		;6d09
	call 058d4h		;6d0c
	ld hl,00000h		;6d0f
	ld a,h			;6d12
	ld (0e352h),hl		;6d13
	ld (0e354h),a		;6d16
	call 04335h		;6d19
	call 04d6ch		;6d1c
	ld de,072edh		;6d1f
	ld hl,02880h		;6d22
	call 05a2ah		;6d25
	ld hl,00880h		;6d28
	ld bc,00300h		;6d2b
	xor a			;6d2e
	call 00056h		;6d2f   ; BIOS FILVRM - Fills VRAM with value
	ld hl,0ed0ah		;6d32
	ld a,080h		;6d35
	ld bc,00808h		;6d37
	call 0433bh		;6d3a
	ld hl,0ee08h		;6d3d
	ld a,010h		;6d40
	ld bc,00c08h		;6d42
	call 0433bh		;6d45
	xor a			;6d48
	ld (0e348h),a		;6d49
	call 0432fh		;6d4c
	ld hl,06d6bh		;6d4f
	ld (0e34ch),hl		;6d52
	call 0452dh		;6d55
	call 05e5fh		;6d58
	ld a,002h		;6d5b
	ld (0e8a3h),a		;6d5d
	call 0567ah		;6d60
	call 056dbh		;6d63
	call 057aeh		;6d66
L_6D69:
	jr L_6D04		;6d69

; ----------------------------------------------------------------------
; DATOS resto_6D6B: lo apuntan con el banco puesto p09:6D4F (0x6D6B); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p09:6D4F (4 bytes)
;   0x6d6b..0x6d6f  (4 bytes)
DATA_resto_6D6B:
	defb 05dh,075h,080h,008h	; 6d6b

; ======================================================================
; CODIGO 0x6d6f..0x6e18  (169 bytes)
; ======================================================================


L_6D6F:
	call 05774h		;6d6f
	call 057aeh		;6d72
	ld a,(0e008h)		;6d75
	and 010h		;6d78
	ret z			;6d7a
	ld a,(0e350h)		;6d7b
	cp 007h		;6d7e
	jr nz,L_6D8E		;6d80
	call L_6D93		;6d82
	jr z,L_6D8E		;6d85
	ld a,(0e8a4h)		;6d87
	dec a			;6d8a
	call z,L_7034		;6d8b
L_6D8E:
	call 050ebh		;6d8e
	jr $-40		;6d91
L_6D93:
	ld b,003h		;6d93
	ld hl,0e352h		;6d95
L_6D98:
	ld a,(hl)			;6d98
	or a			;6d99
	ret z			;6d9a
	inc hl			;6d9b
	djnz L_6D98		;6d9c
	or 0ffh		;6d9e
	ret			;6da0
L_6DA1:
	ld c,008h		;6da1
	jr L_6DA7		;6da3
L_6DA5:
	ld c,005h		;6da5
L_6DA7:
	call 04dfdh		;6da7
	ld a,(0e886h)		;6daa
	and a			;6dad
	ret nz			;6dae
	ld a,(0e887h)		;6daf
	and a			;6db2
	ret nz			;6db3
L_6DB4:
	jr $-75		;6db4
L_6DB6:
	call 04d28h		;6db6
	ld a,(0e34bh)		;6db9
	and a			;6dbc
	ret nz			;6dbd
	jr L_6DB4		;6dbe
L_6DC0:
	ld de,06e1eh		;6dc0
	jr L_6DCD		;6dc3
L_6DC5:
	ld de,06e18h		;6dc5
	jr L_6DCD		;6dc8
L_6DCA:
	ld de,06e24h		;6dca
L_6DCD:
	ld a,(0e8a4h)		;6dcd
	call 043a4h		;6dd0
	ld c,d			;6dd3
	push de			;6dd4
	call 04dfdh		;6dd5
	pop de			;6dd8
	ld a,(0e886h)		;6dd9
	and a			;6ddc
	ret nz			;6ddd
	ld a,(0e887h)		;6dde
	and a			;6de1
	ret nz			;6de2
	ld a,(0e350h)		;6de3
	cp 00dh		;6de6
	call z,L_6E01		;6de8
	push de			;6deb
	call L_6DF5		;6dec
	pop de			;6def
	ld a,e			;6df0
	ld (0e350h),a		;6df1
	ret			;6df4
L_6DF5:
	ld a,(0e8a4h)		;6df5
	ld hl,0e352h		;6df8
	call 040a1h		;6dfb
	ld (hl),001h		;6dfe
	ret			;6e00
L_6E01:
	ld a,(0e8a4h)		;6e01
	cp 002h		;6e04
	ret nz			;6e06
	push de			;6e07
	ld a,011h		;6e08
	ld (0e368h),a		;6e0a
	call 0486fh		;6e0d
	call 04468h		;6e10
	call 04574h		;6e13
	pop de			;6e16
	ret			;6e17

; ----------------------------------------------------------------------
; DATOS resto_6E18: lo apuntan con el banco puesto p09:6DC5 (0x6E18), p09:6DC0
;   (0x6E1E), p09:6DCA (0x6E24); el tamano es lo que hay hasta lo siguiente,
;   no sale de recorrerlo; lo leen p09:6DC5, p09:6DC0, p09:6DCA (18 bytes)
;   0x6e18..0x6e2a  (18 bytes)
DATA_resto_6E18:
	defb 007h,002h,007h,003h,007h,004h,00ch,002h,00ch,003h,00eh,007h,011h,009h,00fh,003h	; 6e18  ................
	defb 00fh,004h	; 6e28

; ======================================================================
; CODIGO 0x6e2a..0x6f57  (301 bytes)
; ======================================================================


L_6E2A:
	ld c,006h		;6e2a
	call 04dfdh		;6e2c
	ld a,(0e886h)		;6e2f
	and a			;6e32
	ret nz			;6e33
	ld a,(0e887h)		;6e34
	and a			;6e37
	ret nz			;6e38
L_6E39:
	jp L_6DB4		;6e39
L_6E3C:
	call L_6E4F		;6e3c
	ld a,01eh		;6e3f
	ld (0e8a3h),a		;6e41
	call 0567ah		;6e44
	call 056dbh		;6e47
	call 057aeh		;6e4a
	jr L_6E39		;6e4d
L_6E4F:
	call 0599ah		;6e4f
	call 0591bh		;6e52
	call 058bfh		;6e55
	call 0432fh		;6e58
	call 05e5fh		;6e5b
	call 04335h		;6e5e
	jp 0452dh		;6e61
L_6E64:
	call 05774h		;6e64
	call 057aeh		;6e67
	ld a,(0e008h)		;6e6a
	and 010h		;6e6d
	ret z			;6e6f
	ld a,(0e8a4h)		;6e70
	and a			;6e73
	jr z,L_6E90		;6e74
	call 058d4h		;6e76
	call 04d87h		;6e79
	ld hl,0ee0ch		;6e7c
	ld a,080h		;6e7f
	ld bc,00808h		;6e81
	call 0433bh		;6e84
	call 05e5fh		;6e87
	call L_7034		;6e8a
	call L_7034		;6e8d
L_6E90:
	jr L_6E39		;6e90
L_6E92:
	ld c,00dh		;6e92
	jr L_6EA4		;6e94
L_6E96:
	ld c,015h		;6e96
	jr L_6EA4		;6e98
L_6E9A:
	ld c,014h		;6e9a
	jr L_6EA4		;6e9c
L_6E9E:
	ld c,00ch		;6e9e
	jr L_6EA4		;6ea0
L_6EA2:
	ld c,00ah		;6ea2
L_6EA4:
	call 04dfdh		;6ea4
	ld a,(0e886h)		;6ea7
	and a			;6eaa
	ret nz			;6eab
	ld a,(0e887h)		;6eac
	and a			;6eaf
	ret nz			;6eb0
	ld a,(0e350h)		;6eb1
	cp 013h		;6eb4
	jr nz,L_6EC7		;6eb6
	call 058d4h		;6eb8
	call L_6EEF		;6ebb
	ld hl,0be02h		;6ebe
	call 04344h		;6ec1
	call 05e5fh		;6ec4
L_6EC7:
	jr L_6E90		;6ec7
L_6EC9:
	ld c,00bh		;6ec9
	call 04dfdh		;6ecb
	ld a,(0e886h)		;6ece
	and a			;6ed1
	ret nz			;6ed2
	ld a,(0e887h)		;6ed3
	and a			;6ed6
	ret nz			;6ed7
	ld hl,0e350h		;6ed8
	dec (hl)			;6edb
	dec (hl)			;6edc
	ret			;6edd
L_6EDE:
	call 058d4h		;6ede
	call L_6EEF		;6ee1
	ld hl,0be46h		;6ee4
	call 04344h		;6ee7
	call 05e5fh		;6eea
	jr L_6EC7		;6eed
L_6EEF:
	ld de,0877bh		;6eef
	ld hl,02a00h		;6ef2
	call 05a2ah		;6ef5
	ld de,08aa7h		;6ef8
	ld hl,00a00h		;6efb
	jp 05a2ah		;6efe
L_6F01:
	call 045a6h		;6f01
	ld a,050h		;6f04
	ld (0e004h),a		;6f06
	jr L_6EC7		;6f09
L_6F0B:
	ld hl,0e004h		;6f0b
	dec (hl)			;6f0e
	ret nz			;6f0f
	jr L_6EC7		;6f10
L_6F12:
	call 0591bh		;6f12
	call 0599ah		;6f15
	call 058bfh		;6f18
	call 04335h		;6f1b
	xor a			;6f1e
	ld (0e348h),a		;6f1f
	ld de,07c5eh		;6f22
	ld hl,02580h		;6f25
	call 05986h		;6f28
	ld b,007h		;6f2b
	ld hl,06fa2h		;6f2d
	call L_6F8B		;6f30
	ld hl,0bcaeh		;6f33
	call 04344h		;6f36
	call 05e51h		;6f39
	call 04d9bh		;6f3c
	ld hl,06f57h		;6f3f
	ld de,0f000h		;6f42
	ld bc,00034h		;6f45
	ldir		;6f48
	ld a,00eh		;6f4a
	ld (0e351h),a		;6f4c
	ld a,036h		;6f4f
	call 0415bh		;6f51
L_6F54:
	jp L_6EC7		;6f54

; ----------------------------------------------------------------------
; DATOS resto_6F57: lo apuntan con el banco puesto p09:6F3F (0x6F57); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p09:6F3F (52 bytes)
;   0x6f57..0x6f8b  (52 bytes)
DATA_resto_6F57:
	defb 040h,060h,000h,00fh,050h,068h,004h,00fh,068h,060h,008h,00fh,030h,0a0h,00ch,00fh	; 6f57  @`..Ph..h`..0...
	defb 040h,048h,018h,004h,050h,098h,014h,001h,050h,048h,01ch,004h,060h,048h,01ch,000h	; 6f67  @H..P...PH..`H..
	defb 060h,038h,020h,004h,070h,040h,024h,004h,038h,0b0h,028h,00ch,068h,0b0h,02ch,00ch	; 6f77  `8 .p@$.8.(.h.,.
	defb 050h,0b0h,030h,00ch	; 6f87

; ======================================================================
; CODIGO 0x6f8b..0x6fa2  (23 bytes)
; ======================================================================


L_6F8B:
	push bc			;6f8b
	push hl			;6f8c
	ld e,(hl)			;6f8d
	inc hl			;6f8e
	ld d,(hl)			;6f8f
	inc hl			;6f90
	ld a,(hl)			;6f91
	inc hl			;6f92
	ld h,(hl)			;6f93
	ld l,a			;6f94
	call 05a2ah		;6f95
	pop hl			;6f98
	ld a,004h		;6f99
	call 040a1h		;6f9b
	pop bc			;6f9e
	djnz L_6F8B		;6f9f
	ret			;6fa1

; ----------------------------------------------------------------------
; DATOS resto_6FA2: lo apuntan con el banco puesto p09:6F2D (0x6FA2); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p09:6F2D (28 bytes)
;   0x6fa2..0x6fbe  (28 bytes)
DATA_resto_6FA2:
	defb 05dh,078h,080h,020h,05eh,07ch,000h,025h,02ch,07fh,080h,028h,0bdh,07ch,080h,000h	; 6fa2  ]x. ^|.%,..(.|..
	defb 0cdh,07eh,000h,005h,04ah,084h,080h,008h,0cdh,07eh,080h,005h	; 6fb2  .~..J....~..

; ======================================================================
; CODIGO 0x6fbe..0x6ff9  (59 bytes)
; ======================================================================


L_6FBE:
	ld a,(0e351h)		;6fbe
	ld c,a			;6fc1
	call 04dfdh		;6fc2
	ld a,(0e886h)		;6fc5
	and a			;6fc8
	ret nz			;6fc9
	ld a,(0e887h)		;6fca
	and a			;6fcd
	ret nz			;6fce
	ld a,(0e351h)		;6fcf
	inc a			;6fd2
	cp 014h		;6fd3
	jp z,L_6F54		;6fd5
	ld (0e351h),a		;6fd8
	ret			;6fdb
L_6FDC:
	call 0591bh		;6fdc
	call 0599ah		;6fdf
	call 058bfh		;6fe2
	call 04335h		;6fe5
	call 058ffh		;6fe8
	call 04326h		;6feb
	call 045abh		;6fee
	ld a,0cah		;6ff1
	ld (0e004h),a		;6ff3
	jp L_6F54		;6ff6

; ----------------------------------------------------------------------
; DATOS resto_6FF9: lo apuntan con el banco puesto p09:7016 (0x6FF9); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p09:7016 (16 bytes)
;   0x6ff9..0x7009  (16 bytes)
DATA_resto_6FF9:
	defb 040h,060h,000h,004h,040h,070h,004h,004h,040h,080h,008h,004h,040h,090h,00ch,004h	; 6ff9  @`..@p..@...@...

; ======================================================================
; CODIGO 0x7009..0x7050  (71 bytes)
; ======================================================================


L_7009:
	ld hl,0e004h		;7009
	dec (hl)			;700c
	ret nz			;700d
	call 045b5h		;700e
	ld a,058h		;7011
	call 0415bh		;7013
	ld hl,06ff9h		;7016
	ld de,0f000h		;7019
	ld bc,00010h		;701c
	ldir		;701f
	jr L_7034		;7021
L_7023:
	ld a,(0e003h)		;7023
	and 007h		;7026
	ret nz			;7028
	call L_7039		;7029
	ld hl,0e348h		;702c
	inc (hl)			;702f
	ld a,(hl)			;7030
	cp 003h		;7031
	ret c			;7033
L_7034:
	ld hl,0e350h		;7034
	inc (hl)			;7037
	ret			;7038
L_7039:
	ld a,(0e348h)		;7039
	ld hl,07050h		;703c
	call 040a1h		;703f
	ld a,(hl)			;7042
	ld b,004h		;7043
	ld hl,0f003h		;7045
L_7048:
	ld (hl),a			;7048
	ld de,00004h		;7049
	add hl,de			;704c
	djnz L_7048		;704d
	ret			;704f

; ----------------------------------------------------------------------
; DATOS resto_7050: lo apuntan con el banco puesto p09:703C (0x7050); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p09:703C (3 bytes)
;   0x7050..0x7053  (3 bytes)
DATA_resto_7050:
	defb 005h,007h,00fh	; 7050

; ======================================================================
; CODIGO 0x7053..0x7077  (36 bytes)
; ======================================================================


L_7053:
	ld a,(0e008h)		;7053
	and a			;7056
	ret z			;7057
	call 045abh		;7058
	ld hl,0e002h		;705b
	ld a,(hl)			;705e
	and 0bfh		;705f
	ld (hl),a			;7061
	xor a			;7062
	ld (0e336h),a		;7063
	ld (0e000h),a		;7066
	ld (0e001h),a		;7069
	ret			;706c
L_706D:
	xor a			;706d
	ld (0e35bh),a		;706e
	ld a,(0e352h)		;7071
	call 040abh		;7074

; ----------------------------------------------------------------------
; DATOS saltos_7077: tabla de 4 palabras del despachador (call 0x408D en
;   0x7074); lo leen L_40AB (8 bytes)
;   0x7077..0x707f  (8 bytes)
DATA_saltos_7077:
	defb 07fh,070h	; 7077
	defb 00eh,071h	; 7079
	defb 00eh,071h	; 707b
	defb 062h,072h	; 707d

; ======================================================================
; CODIGO 0x707f..0x70ae  (47 bytes)
; ======================================================================


L_707F:
	ld hl,01800h		;707f
	ld de,070aeh		;7082
	ld bc,00060h		;7085
	call 05941h		;7088
	ld bc,010e0h		;708b
	ld ix,0e400h		;708e
	ld de,00010h		;7092
	ld a,088h		;7095
	ld (0e35ah),a		;7097
	xor a			;709a
L_709B:
	ld (ix+000h),a		;709b
	ld (ix+009h),a		;709e
	ld (ix+002h),c		;70a1
	add ix,de		;70a4
	djnz L_709B		;70a6
	ld a,001h		;70a8
	ld (0e352h),a		;70aa
	ret			;70ad

; ----------------------------------------------------------------------
; DATOS resto_70AE: lo apuntan con el banco puesto p09:7082 (0x70AE); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p09:7082 (96 bytes)
;   0x70ae..0x710e  (96 bytes)
DATA_resto_70AE:
	defb 000h,000h,000h,000h,000h,000h,000h,001h,000h,000h,000h,000h,000h,000h,000h,000h	; 70ae  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 70be  ................
	defb 000h,000h,000h,000h,000h,000h,000h,001h,001h,000h,000h,000h,000h,000h,000h,000h	; 70ce  ................
	defb 000h,000h,000h,000h,000h,000h,000h,080h,080h,000h,000h,000h,000h,000h,000h,000h	; 70de  ................
	defb 000h,000h,000h,000h,000h,000h,001h,003h,001h,000h,000h,000h,000h,000h,000h,000h	; 70ee  ................
	defb 000h,000h,000h,000h,000h,000h,000h,080h,000h,000h,000h,000h,000h,000h,000h,000h	; 70fe  ................

; ======================================================================
; CODIGO 0x710e..0x7133  (37 bytes)
; ======================================================================


L_710E:
	ld a,(0e35ah)		;710e
	dec a			;7111
	ld (0e35ah),a		;7112
	jr nz,L_711C		;7115
	ld hl,0e352h		;7117
	inc (hl)			;711a
	ret			;711b
L_711C:
	ld a,r		;711c
	ld hl,0e003h		;711e
	xor (hl)			;7121
	rra			;7122
	jp nc,L_71CD		;7123
	and 003h		;7126
	ld b,a			;7128
	ld a,(0e35bh)		;7129
	or a			;712c
	ld a,b			;712d
	jr nz,$+13		;712e
	call 040abh		;7130

; ----------------------------------------------------------------------
; DATOS saltos_7133: tabla de 4 palabras del despachador (call 0x408D en
;   0x7130); lo leen L_40AB (8 bytes)
;   0x7133..0x713b  (8 bytes)
DATA_saltos_7133:
	defb 046h,071h	; 7133
	defb 04dh,071h	; 7135
	defb 054h,071h	; 7137
	defb 05bh,071h	; 7139

; ======================================================================
; CODIGO 0x713b..0x713e  (3 bytes)
; ======================================================================


L_713B:
	call 040abh		;713b

; ----------------------------------------------------------------------
; DATOS saltos_713E: tabla de 4 palabras del despachador (call 0x408D en
;   0x713B); lo leen L_40AB (8 bytes)
;   0x713e..0x7146  (8 bytes)
DATA_saltos_713E:
	defb 062h,071h	; 713e
	defb 069h,071h	; 7140
	defb 070h,071h	; 7142
	defb 077h,071h	; 7144

; ======================================================================
; CODIGO 0x7146..0x72cd  (391 bytes)
; ======================================================================


L_7146:
	call L_72A1		;7146
	ld l,001h		;7149
	jr L_717C		;714b
L_714D:
	call L_72A1		;714d
	ld l,07fh		;7150
	jr L_717C		;7152
L_7154:
	call L_7292		;7154
	ld h,001h		;7157
	jr L_717C		;7159
L_715B:
	call L_7292		;715b
	ld h,0bfh		;715e
	jr L_717C		;7160
L_7162:
	call L_72BF		;7162
	ld l,01fh		;7165
	jr L_717C		;7167
L_7169:
	call L_72BF		;7169
	ld l,051h		;716c
	jr L_717C		;716e
L_7170:
	call L_72B0		;7170
	ld h,037h		;7173
	jr L_717C		;7175
L_7177:
	call L_72B0		;7177
	ld h,069h		;717a
L_717C:
	call L_727E		;717c
	jr nz,L_71CD		;717f
	ld (ix+002h),l		;7181
	ld (ix+004h),h		;7184
	ld a,(0e352h)		;7187
	dec a			;718a
	ld b,020h		;718b
	jr z,L_71A0		;718d
	ld a,(0e35ah)		;718f
	and 003h		;7192
	jr z,L_71A0		;7194
	ld b,050h		;7196
	ld (ix+000h),001h		;7198
	ld (ix+009h),008h		;719c
L_71A0:
	ld a,(0e35ah)		;71a0
	and 001h		;71a3
	inc a			;71a5
	rlca			;71a6
	rlca			;71a7
	rlca			;71a8
	add a,b			;71a9
	call 0435fh		;71aa
	ld a,(0e35bh)		;71ad
	or a			;71b0
	jr nz,L_71B9		;71b1
	call 043b3h		;71b3
	call 043adh		;71b6
L_71B9:
	ld (ix+005h),l		;71b9
	ld (ix+006h),h		;71bc
	ld (ix+007h),e		;71bf
	ld (ix+008h),d		;71c2
	ld (ix+004h),060h		;71c5
	ld (ix+002h),030h		;71c9
L_71CD:
	ld b,010h		;71cd
	ld ix,0e400h		;71cf
L_71D3:
	ld a,(ix+000h)		;71d3
	or a			;71d6
	jr z,L_71F6		;71d7
	ld a,(ix+004h)		;71d9
	sub 030h		;71dc
	cp 061h		;71de
	jr nc,L_71E8		;71e0
	ld (ix+009h),000h		;71e2
	jr L_71F6		;71e6
L_71E8:
	add a,018h		;71e8
	cp 091h		;71ea
	ld (ix+009h),008h		;71ec
	jr nc,L_71F6		;71f0
	ld (ix+009h),004h		;71f2
L_71F6:
	ld l,(ix+001h)		;71f6
	ld h,(ix+002h)		;71f9
	ld e,(ix+005h)		;71fc
	ld d,(ix+006h)		;71ff
	add hl,de			;7202
	ld (ix+001h),l		;7203
	ld (ix+002h),h		;7206
	ld c,h			;7209
	ld a,c			;720a
	cp 080h		;720b
	jr nc,L_7234		;720d
	ld l,(ix+003h)		;720f
	ld h,(ix+004h)		;7212
	ld e,(ix+007h)		;7215
	ld d,(ix+008h)		;7218
	add hl,de			;721b
	ld (ix+003h),l		;721c
	ld (ix+004h),h		;721f
	ld a,h			;7222
	cp 0c0h		;7223
	jr nc,L_7234		;7225
	sub 010h		;7227
	cp 0a0h		;7229
	jr c,L_7238		;722b
	ld a,c			;722d
	sub 010h		;722e
	cp 060h		;7230
	jr c,L_7238		;7232
L_7234:
	ld (ix+002h),0e0h		;7234
L_7238:
	ld de,00010h		;7238
	add ix,de		;723b
	djnz L_71D3		;723d
	ld b,010h		;723f
	ld ix,0e400h		;7241
	ld hl,0f000h		;7245
	ld de,00010h		;7248
L_724B:
	ld a,(ix+002h)		;724b
	ld (hl),a			;724e
	inc hl			;724f
	ld a,(ix+004h)		;7250
	ld (hl),a			;7253
	inc hl			;7254
	ld a,(ix+009h)		;7255
	ld (hl),a			;7258
	inc hl			;7259
	ld (hl),00fh		;725a
	inc hl			;725c
	add ix,de		;725d
	djnz L_724B		;725f
	ret			;7261
L_7262:
	ld bc,01010h		;7262
	ld a,0e0h		;7265
	ld hl,0e402h		;7267
	ld de,00010h		;726a
L_726D:
	cp (hl)			;726d
	jr nz,L_7278		;726e
	dec c			;7270
	jr nz,L_7278		;7271
	ld hl,0e350h		;7273
	inc (hl)			;7276
	ret			;7277
L_7278:
	add hl,de			;7278
	djnz L_726D		;7279
	jp L_71CD		;727b
L_727E:
	ld a,0e0h		;727e
	ld b,010h		;7280
	ld ix,0e3f0h		;7282
	ld de,00010h		;7286
L_7289:
	add ix,de		;7289
	cp (ix+002h)		;728b
	ret z			;728e
	djnz L_7289		;728f
	ret			;7291
L_7292:
	ld hl,0e003h		;7292
	xor (hl)			;7295
	and 00fh		;7296
	ld hl,072cdh		;7298
	call 040a1h		;729b
	ld a,(hl)			;729e
	ld l,a			;729f
	ret			;72a0
L_72A1:
	inc a			;72a1
	ld hl,0e003h		;72a2
	xor (hl)			;72a5
	and 007h		;72a6
	ld hl,072cdh		;72a8
	call 040a1h		;72ab
	ld h,(hl)			;72ae
	ret			;72af
L_72B0:
	ld hl,0e003h		;72b0
	xor (hl)			;72b3
	and 007h		;72b4
	ld hl,072ddh		;72b6
	call 040a1h		;72b9
	ld a,(hl)			;72bc
	ld l,a			;72bd
	ret			;72be
L_72BF:
	ld hl,0e003h		;72bf
	xor (hl)			;72c2
	and 00fh		;72c3
	ld hl,072ddh		;72c5
	call 040a1h		;72c8
	ld h,(hl)			;72cb
	ret			;72cc

; ----------------------------------------------------------------------
; DATOS resto_72CD: lo apuntan con el banco puesto p09:7298 (0x72CD), p09:72A8
;   (0x72CD), p09:72B6 (0x72DD), p09:72C5 (0x72DD); el tamano es lo que hay
;   hasta lo siguiente, no sale de recorrerlo; lo leen p09:7298, p09:72A8,
;   p09:72B6, p09:72C5 (32 bytes)
;   0x72cd..0x72ed  (32 bytes)
DATA_resto_72CD:
	defb 00fh,01dh,02bh,039h,047h,055h,063h,071h,08fh,09dh,0abh,0b9h,0a3h,0b0h,098h,0a0h	; 72cd  ..+9GUcq........
	defb 039h,03ch,03fh,042h,045h,048h,04bh,04eh,051h,054h,057h,05ah,05dh,060h,063h,066h	; 72dd  9<?BEHKNQTWZ]`cf

; ----------------------------------------------------------------------
; DATOS graficos_72ED: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p09:6D25 (624
;   bytes)
;   0x72ed..0x755d  (624 bytes)
DATA_graficos_72ED:
	defb 008h,0ffh,085h,003h,007h,00fh,01fh,01fh,003h,03fh,082h,0ffh,0feh,004h,0ffh,084h	; 72ed  .........?......
	defb 0feh,0ffh,07fh,07fh,006h,03fh,002h,00bh,09bh,009h,005h,004h,004h,002h,002h,0feh	; 72fd  .....?..........
	defb 0f9h,0f2h,0f4h,0e4h,0e8h,0c8h,04ah,07fh,09fh,04fh,02fh,027h,017h,013h,052h,0d0h	; 730d  ......J..O/'..R.
	defb 0d0h,090h,0a0h,0a0h,003h,040h,081h,0feh,007h,0fch,002h,0ffh,08eh,0dfh,0bfh,07fh	; 731d  .....@..........
	defb 07fh,0ffh,0ffh,0c0h,0e0h,0e0h,0f0h,0f8h,0f8h,0fch,0fch,00ah,0ffh,006h,000h,002h	; 732d  ................
	defb 07fh,081h,0fdh,003h,0ffh,096h,057h,0f7h,0f7h,007h,0f9h,01dh,08ch,0c4h,0f6h,0fah	; 733d  ......W.........
	defb 03fh,03fh,01fh,01fh,02fh,07bh,03fh,03fh,001h,001h,000h,000h,004h,0ffh,092h,05ch	; 734d  ??../{??.......\
	defb 01ch,0bch,098h,048h,020h,010h,00ch,03ah,038h,03dh,019h,012h,004h,008h,030h,080h	; 735d  ...H ..:8=....0.
	defb 080h,006h,0ffh,098h,0feh,0fch,0fch,0fah,0f6h,0fch,0fch,0feh,07fh,0f1h,0fbh,0e7h	; 736d  ................
	defb 09fh,01fh,03fh,03fh,0fch,0feh,0feh,07fh,0ffh,0ffh,03fh,08fh,008h,0ffh,003h,000h	; 737d  ..??......?.....
	defb 005h,001h,089h,0c2h,0f7h,0fdh,0fch,0feh,0f8h,0dfh,0f7h,0f8h,003h,0fch,088h,03eh	; 738d  ...............>
	defb 01eh,00eh,0c3h,03fh,05fh,03fh,03fh,004h,07fh,008h,0ffh,082h,002h,001h,006h,0ffh	; 739d  ...?_??.........
	defb 082h,040h,080h,00dh,0ffh,082h,000h,0fah,003h,0fch,002h,0f8h,002h,0fch,002h,07fh	; 73ad  .@..............
	defb 08eh,078h,0f1h,0c2h,083h,087h,00fh,0ffh,033h,01fh,06fh,00fh,00fh,0a7h,07bh,006h	; 73bd  .x......3.o...{.
	defb 080h,002h,0c0h,002h,001h,005h,003h,083h,005h,0f9h,0fch,003h,0ffh,091h,0f0h,0fch	; 73cd  ................
	defb 0e0h,0e3h,031h,001h,089h,0e0h,0f0h,030h,00ch,03fh,03fh,00fh,001h,000h,080h,007h	; 73dd  ..1....0.??.....
	defb 0ffh,083h,03fh,007h,002h,016h,0ffh,0c6h,0f8h,040h,0fch,0fch,0f8h,0f0h,082h,0ffh	; 73ed  ..?......@......
	defb 004h,008h,00fh,00fh,01fh,03fh,03bh,07fh,07ch,071h,0bfh,0efh,03fh,01fh,0efh,0feh	; 73fd  .....?..|q..?...
	defb 05eh,0efh,0c0h,0c0h,080h,080h,040h,040h,0c0h,0c0h,00fh,00fh,00eh,01eh,017h,017h	; 740d  ^.....@@........
	defb 00fh,00fh,0f7h,03fh,07eh,0ech,09fh,0bbh,07fh,07fh,0f0h,08ch,02ah,0fch,0c2h,0bdh	; 741d  ...?~.......*...
	defb 0ffh,0e8h,0ffh,008h,011h,00ch,017h,00bh,087h,086h,0ffh,021h,01ch,0cfh,003h,0ffh	; 742d  ...........!....
	defb 084h,05eh,04bh,0bfh,07fh,003h,0ffh,083h,0bah,070h,0f4h,003h,0ffh,0a6h,0feh,0e8h	; 743d  .^K......p......
	defb 000h,003h,080h,0ffh,080h,060h,080h,0ffh,0fch,0ffh,000h,010h,0ffh,026h,02fh,001h	; 744d  .....`.......&/.
	defb 0f8h,03eh,0c7h,08fh,03fh,0f9h,0e3h,00fh,0f9h,07fh,0ffh,0ffh,03fh,07fh,0ffh,0ffh	; 745d  .>..?.......?...
	defb 07fh,07fh,0c0h,0c0h,004h,080h,002h,0ffh,0b5h,01bh,01eh,01bh,00bh,009h,009h,005h	; 746d  ................
	defb 003h,0fbh,0e7h,0efh,0ceh,0ceh,0deh,0ceh,0dch,083h,00eh,01dh,03dh,03bh,07ah,078h	; 747d  ............=.zx
	defb 07ah,001h,0f0h,0cch,0bfh,068h,062h,0cdh,09bh,00dh,034h,0ffh,01fh,07fh,0feh,0fch	; 748d  z....hb...4.....
	defb 0bfh,090h,001h,0ffh,0feh,0feh,007h,03fh,000h,07ch,0feh,07eh,07fh,03fh,003h,0bfh	; 749d  .......?.|.~.?..
	defb 0a0h,09fh,0efh,08fh,01fh,07fh,03dh,07eh,07eh,0f7h,0ffh,0dfh,0f3h,0f9h,0fdh,0feh	; 74ad  ......=~~.......
	defb 07eh,0afh,097h,0dbh,0dfh,0edh,0fch,0efh,0ffh,0beh,0beh,0feh,0fch,0fch,0f0h,0e0h	; 74bd  ~...............
	defb 0e0h,008h,0ffh,002h,000h,006h,0ffh,085h,0ech,0e6h,07eh,037h,001h,003h,0ffh,085h	; 74cd  ..........~7....
	defb 072h,036h,036h,016h,0c3h,003h,0ffh,0bah,0c3h,0a7h,0ceh,08ah,04fh,06dh,005h,002h	; 74dd  r66.........Om..
	defb 077h,06fh,0efh,0dch,0d9h,0bbh,0b7h,0aah,07eh,0fch,0feh,0fch,0f8h,0f0h,007h,00fh	; 74ed  wo......~.......
	defb 0beh,03ch,006h,003h,041h,0f0h,0fch,0feh,03fh,09fh,0f7h,07fh,0dfh,07fh,007h,000h	; 74fd  .<..A...?.......
	defb 07fh,03fh,08fh,093h,0e9h,0ffh,0ffh,0fch,0eeh,0efh,0f8h,0feh,078h,0e0h,0c0h,0ffh	; 750d  .?..........x...
	defb 0c0h,080h,020h,0ffh,08fh,002h,005h,005h,003h,00fh,00fh,000h,0ffh,080h,0f0h,0fah	; 751d  .. .............
	defb 0fah,0f4h,0f5h,0ach,003h,0ffh,09ch,0f0h,0fah,0fch,0feh,01fh,07fh,00dh,003h,001h	; 752d  ................
	defb 001h,000h,000h,0ffh,016h,00fh,09fh,05fh,07fh,03fh,07fh,0ffh,080h,0c0h,0d0h,0e8h	; 753d  ......._.?......
	defb 0e8h,0f4h,0f6h,003h,0ffh,085h,080h,070h,0c8h,072h,0bch,011h,0ffh,007h,000h,000h	; 754d  .......p.r......

; ----------------------------------------------------------------------
; DATOS resto_755D: lo apuntan con el banco puesto p10:8EB3 (0x7820), p11:AAF9
;   (0x7820); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p10:8EB3, p11:AAF9 (1793 bytes)
;   0x755d..0x7c5e  (1793 bytes)
DATA_resto_755D:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; 755d  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,040h,040h,040h,040h,040h,040h,040h,040h	; 756d  ........@@@@@@@@
	defb 0f4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f0h,0f0h,0f4h,0f4h,0f4h,0f4h,0f4h,0e4h	; 757d  ................
	defb 0f0h,0f0h,0f4h,0f4h,0f4h,0f4h,0f4h,0e4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f4h	; 758d  ................
	defb 040h,040h,040h,040h,040h,040h,040h,040h,0ffh,0ffh,0f0h,0f0h,0f0h,0f0h,0ffh,0ffh	; 759d  @@@@@@@@........
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h	; 75ad  ................
	defb 000h,000h,0f0h,0f0h,0f0h,0f0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0feh,0feh,0feh	; 75bd  ................
	defb 0f4h,0feh,0f0h,0f0h,0e0h,0e0h,0e0h,0e0h,040h,040h,040h,040h,040h,040h,040h,040h	; 75cd  ........@@@@@@@@
	defb 0f4h,0f4h,0e4h,0e4h,044h,044h,044h,044h,0e4h,0e4h,0e4h,0e4h,0e4h,0e4h,0e4h,0e4h	; 75dd  ....DDDD........
	defb 0e4h,0e4h,0e4h,0e4h,0e4h,0e4h,0e4h,0e4h,0f4h,0f4h,044h,044h,044h,044h,044h,044h	; 75ed  ..........DDDDDD
	defb 040h,040h,040h,040h,040h,040h,040h,040h,0f0h,0feh,0f0h,0e0h,0e0h,0e0h,0f0h,0e0h	; 75fd  @@@@@@@@........
	defb 0f0h,0f0h,0f0h,0f4h,0f0h,0f0h,0feh,0feh,000h,000h,000h,000h,000h,000h,000h,000h	; 760d  ................
	defb 0f0h,0e0h,0e0h,0f0h,0f0h,0f0h,0e0h,0e0h,0feh,0e0h,0e0h,0f0h,0e0h,0feh,0f0h,0f0h	; 761d  ................
	defb 0e0h,0f0h,0e0h,0f0h,0e0h,0e0h,0e0h,0e0h,040h,040h,040h,040h,040h,040h,040h,040h	; 762d  ........@@@@@@@@
	defb 044h,044h,044h,044h,044h,044h,044h,044h,0e4h,0e4h,044h,044h,044h,044h,044h,044h	; 763d  DDDDDDDD..DDDDDD
	defb 0e4h,0e4h,044h,044h,044h,044h,044h,044h,044h,044h,044h,044h,044h,044h,044h,0f4h	; 764d  ..DDDDDDDDDDDDD.
	defb 040h,040h,040h,040h,040h,040h,040h,040h,0e0h,0f0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h	; 765d  @@@@@@@@........
	defb 0ffh,0feh,0e0h,0f0h,0feh,0feh,0feh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; 766d  ................
	defb 0e0h,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0e0h,0f0h,0f0h,0f0h,0feh,0feh,0feh,0e0h,0e0h	; 767d  ................
	defb 0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,040h,040h,040h,040h,040h,0e0h,000h,000h	; 768d  ........@@@@@...
	defb 044h,044h,044h,044h,044h,040h,040h,040h,044h,044h,044h,044h,044h,044h,044h,044h	; 769d  DDDDD@@@DDDDDDDD
	defb 044h,044h,044h,044h,044h,044h,044h,040h,044h,044h,044h,044h,044h,040h,040h,040h	; 76ad  DDDDDDD@DDDDD@@@
	defb 040h,040h,040h,040h,040h,000h,0e0h,0e0h,0e0h,0e0h,0f0h,0e0h,0e0h,0e0h,0e0h,0e0h	; 76bd  @@@@@...........
	defb 0feh,0feh,0feh,0feh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; 76cd  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h,0f0h,0f0h	; 76dd  ................
	defb 0f0h,0f0h,0e0h,0f0h,0f0h,0e0h,0f4h,0f0h,000h,040h,040h,040h,040h,040h,040h,040h	; 76ed  .........@@@@@@@
	defb 000h,040h,040h,040h,044h,044h,044h,040h,040h,040h,040h,044h,044h,044h,040h,040h	; 76fd  .@@@DDD@@@@DDD@@
	defb 040h,040h,044h,040h,040h,040h,0f0h,0f0h,040h,000h,040h,040h,040h,000h,0f0h,0f0h	; 770d  @@D@@@..@.@@@...
	defb 0e0h,0e0h,000h,0e0h,0e0h,0e0h,0f0h,0f0h,0e0h,0f0h,0f0h,0e0h,0f0h,0f0h,0f0h,0f0h	; 771d  ................
	defb 0ffh,0ffh,0f0h,0feh,0ffh,0ffh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h	; 772d  ................
	defb 0f0h,0e0h,0e0h,0e0h,0f0h,0e0h,0e0h,0e0h,0f0h,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h,0e0h	; 773d  ................
	defb 0b0h,0b0h,0b0h,0b0h,0b0h,0a0h,0a0h,0a0h,040h,0f0h,0f0h,0f0h,0f0h,0e0h,0f0h,0b0h	; 774d  ........@.......
	defb 040h,040h,000h,0b0h,0b0h,0bah,0bah,0b0h,040h,0f0h,000h,0b0h,0bah,0bah,0bah,0fbh	; 775d  @@......@.......
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; 776d  ................
	defb 0f0h,0ffh,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh	; 777d  ................
	defb 0f0h,0f0h,0f0h,0f0h,0e0h,0f0h,0f0h,0e0h,000h,000h,000h,000h,000h,000h,000h,000h	; 778d  ................
	defb 0e0h,0e0h,000h,000h,000h,000h,000h,000h,0e0h,0e0h,0e0h,0e0h,0e0h,000h,000h,000h	; 779d  ................
	defb 0e0h,0a0h,0e0h,0e0h,0e0h,000h,000h,000h,0b0h,0e0h,0b0h,0a0h,0a0h,0e0h,0a0h,0a0h	; 77ad  ................
	defb 0b0h,0b0h,0b0h,0b0h,0a0h,0b0h,0a0h,0a0h,0bah,0bah,0b0h,0b0h,0a0h,0a0h,090h,090h	; 77bd  ................
	defb 0e0h,0e0h,0e0h,0e0h,090h,090h,090h,0a0h,0f0h,0f0h,0e0h,0f0h,0e0h,0e0h,0e0h,0f0h	; 77cd  ................
	defb 0f0h,0f0h,0f0h,0e0h,0e0h,0eeh,0eeh,0e0h,0feh,0f0h,0feh,0e0h,0e0h,0e0h,0e0h,000h	; 77dd  ................
	defb 0e0h,0e0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 77ed  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 77fd  ................
	defb 000h,000h,040h,040h,040h,040h,040h,040h,0a0h,000h,040h,040h,040h,040h,040h,040h	; 780d  ..@@@@@@..@@@@@@
	defb 0a0h,000h,000h,000h,040h,040h,040h,040h,090h,090h,0a0h,0a0h,0a0h,0a0h,0a0h,0a0h	; 781d  ....@@@@........
	defb 0a0h,0bah,0bah,0bah,0bah,0bah,0bah,0bah,000h,0a0h,0a0h,0b0h,0b0h,0b0h,0b0h,0b0h	; 782d  ................
	defb 000h,000h,000h,040h,040h,040h,040h,040h,000h,000h,000h,000h,000h,000h,000h,000h	; 783d  ...@@@@@........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0e0h,0e0h,0e0h,0e0h,0e0h,0f0h	; 784d  ................
	defb 0ebh,068h,084h,0feh,0ffh,05dh,0b6h,07fh,037h,005h,087h,047h,043h,022h,0bdh,0d0h	; 785d  .h...]..7..GC"..
	defb 083h,090h,0f5h,014h,0fch,0cfh,0efh,05dh,0ffh,01ch,07dh,007h,006h,079h,001h,0e8h	; 786d  .......]..}..y..
	defb 0ech,080h,0ffh,0b8h,06dh,001h,01fh,0cbh,01dh,000h,06ah,0ddh,0d4h,003h,05ah,02fh	; 787d  ....m.....j...Z/
	defb 0ebh,000h,02ah,0d7h,045h,0f2h,018h,099h,048h,004h,0afh,041h,0e0h,0f0h,05ch,065h	; 788d  ..*.E...H..A..\e
	defb 07eh,068h,0deh,077h,0a5h,014h,002h,001h,0a0h,0a7h,0afh,04bh,0b7h,050h,0fah,047h	; 789d  ~h.w.......K.P.G
	defb 000h,0cch,0f0h,07dh,0beh,038h,042h,0a3h,000h,006h,033h,000h,000h,0e6h,000h,050h	; 78ad  ...}.8B...3....P
	defb 000h,04bh,011h,06dh,04bh,000h,02eh,080h,074h,0d0h,0d5h,040h,003h,000h,085h,020h	; 78bd  .K.mK...t..@...
	defb 098h,001h,0d4h,006h,005h,000h,083h,080h,000h,0b2h,00dh,000h,0d3h,06ah,023h,020h	; 78cd  .............j#
	defb 0ceh,071h,01fh,05ch,0b0h,000h,0ech,07eh,0d8h,026h,0bfh,086h,002h,0a9h,02ah,07eh	; 78dd  .q.\...~.&....*~
	defb 02eh,0a1h,003h,00dh,037h,040h,003h,0b7h,0c9h,07ch,05dh,0deh,018h,04ch,050h,01ah	; 78ed  ....7@...|]..LP.
	defb 035h,0cfh,08eh,02dh,01dh,001h,0a1h,0aah,0d2h,0d4h,098h,05ch,020h,058h,021h,082h	; 78fd  5..-.......\ X!.
	defb 00eh,00fh,079h,07fh,0dch,0fbh,0b6h,08ah,0fdh,074h,0a4h,0a5h,052h,0a0h,083h,003h	; 790d  ..y......t..R...
	defb 02fh,072h,0c9h,07eh,0beh,000h,026h,04bh,00bh,01ah,00eh,008h,000h,000h,029h,006h	; 791d  /r.~..&K......).
	defb 007h,000h,086h,001h,007h,007h,00fh,00fh,01fh,005h,000h,08eh,080h,0c0h,0c0h,0dbh	; 792d  ................
	defb 055h,00fh,038h,0e0h,000h,005h,080h,005h,000h,001h,006h,000h,0a3h,0bdh,077h,0c8h	; 793d  U.8...........w.
	defb 000h,028h,000h,0feh,095h,0f4h,05ch,000h,028h,0ach,0ffh,001h,000h,024h,0c0h,000h	; 794d  .(....\.(....$..
	defb 0feh,0f0h,080h,00fh,0ffh,010h,075h,004h,07fh,00fh,001h,0f0h,0fch,00fh,0e0h,0f8h	; 795d  ......u.........
	defb 004h,0ffh,093h,03fh,0f0h,007h,01fh,0ffh,0fbh,0fbh,0f1h,0ffh,0f7h,0f7h,0e3h,0e3h	; 796d  ...?............
	defb 0c1h,0c1h,0d5h,0ffh,07fh,007h,005h,000h,081h,0f1h,003h,0e0h,081h,0eah,003h,0e0h	; 797d  ................
	defb 002h,0edh,003h,0c5h,083h,0edh,092h,080h,006h,0e0h,08ah,040h,000h,0fbh,0fbh,0f1h	; 798d  ...........@....
	defb 0f1h,0e0h,0eah,0e0h,0e0h,003h,0ffh,003h,0feh,002h,0fch,002h,0fbh,002h,0f1h,002h	; 799d  ................
	defb 020h,082h,02ah,020h,004h,0ffh,084h,049h,000h,000h,038h,003h,0ffh,002h,07fh,002h	; 79ad   .* ...I..8.....
	defb 03fh,082h,01fh,0f0h,007h,000h,081h,00fh,007h,000h,089h,03fh,0ffh,0fdh,0b9h,0c1h	; 79bd  ?..........?....
	defb 0c1h,0e1h,0fdh,0fch,007h,0ffh,088h,0a0h,0ffh,080h,0ffh,0ffh,0fch,0e0h,080h,005h	; 79cd  ................
	defb 0ffh,088h,00fh,001h,0bfh,0feh,0feh,0fch,0f8h,0f8h,003h,0f0h,083h,03fh,01fh,01fh	; 79dd  .............?..
	defb 003h,00fh,002h,007h,081h,01fh,003h,0ffh,08dh,0f6h,0feh,0ceh,064h,0c0h,0f0h,0fch	; 79ed  ............d...
	defb 0feh,0dfh,04bh,0edh,065h,01fh,004h,03fh,083h,03bh,01bh,039h,003h,0e0h,002h,0c0h	; 79fd  ..K.e..?...9....
	defb 09bh,080h,000h,00fh,080h,080h,0b4h,000h,000h,003h,016h,0e7h,0fch,0f8h,0f0h,0c0h	; 7a0d  ................
	defb 003h,016h,036h,0fdh,00fh,007h,001h,028h,0b4h,05bh,07fh,07dh,004h,0c1h,002h,000h	; 7a1d  ..6....(.[.}....
	defb 092h,0c0h,0fch,059h,049h,069h,024h,034h,0b0h,03ah,0bch,01eh,0b7h,0bfh,09fh,04fh	; 7a2d  ...YIi$4.:.....O
	defb 0d7h,04eh,00fh,007h,000h,081h,001h,005h,000h,0dbh,003h,00fh,03fh,0dah,0fch,06fh	; 7a3d  .N..........?..o
	defb 037h,0f9h,0bah,0ddh,0e2h,039h,03ah,079h,07ch,0bch,0bfh,0edh,07eh,006h,07bh,0dfh	; 7a4d  7....9:y|...~.{.
	defb 03fh,0f7h,029h,09dh,07dh,0dfh,09fh,0feh,07dh,076h,0feh,0fdh,02fh,0f7h,0feh,0bfh	; 7a5d  ?.).}...}v../...
	defb 07fh,0fdh,05bh,09fh,0bfh,037h,06eh,02fh,00eh,01bh,08bh,041h,0a0h,039h,023h,003h	; 7a6d  ..[..7n/...A.9#.
	defb 0a3h,061h,030h,018h,018h,0eeh,040h,013h,0c0h,060h,024h,032h,013h,08ch,0cch,0c6h	; 7a7d  .a0...@..`$2....
	defb 0e7h,0e3h,063h,071h,031h,0bfh,02dh,02eh,070h,053h,067h,04dh,016h,0ffh,0b6h,00eh	; 7a8d  ..cq1.-.pSgM....
	defb 0e1h,059h,0fch,054h,0adh,003h,000h,0ffh,0a0h,098h,04eh,0ech,008h,05fh,0f8h,0dfh	; 7a9d  .Y.T......N.._..
	defb 0ffh,0ddh,03bh,0dfh,0deh,0feh,00fh,0ffh,0ffh,0fbh,0edh,0e4h,0feh,0b7h,0dfh,0fdh	; 7aad  ................
	defb 0eah,0dfh,0fbh,0cah,0fbh,060h,0a6h,087h,0c7h,0c3h,053h,091h,099h,0ebh,0fdh,0feh	; 7abd  .....`....S.....
	defb 0efh,02ah,06eh,06fh,0bfh,0feh,0f7h,06eh,0dfh,0fdh,08fh,07bh,0fbh,0eah,0ddh,0fdh	; 7acd  .*no...n...{....
	defb 0fdh,0e8h,068h,0c8h,0d1h,099h,0adh,02dh,02dh,06dh,06dh,0cdh,0c9h,0f7h,0b7h,0aeh	; 7add  ..h....--mm.....
	defb 05dh,0d2h,080h,03ch,060h,077h,076h,0efh,099h,023h,0f8h,033h,0f1h,0c0h,007h,018h	; 7aed  ]..<`wv..#.3....
	defb 02fh,070h,046h,0b9h,086h,001h,060h,0ach,05ah,006h,0b3h,0cdh,031h,03dh,06eh,0f0h	; 7afd  /pF...`.Z...1=n.
	defb 001h,04ah,0b3h,088h,0deh,05ch,03ah,0c7h,0e0h,0d4h,0f3h,0c4h,01eh,078h,080h,007h	; 7b0d  .J...\:......x..
	defb 01fh,03fh,07fh,03fh,03ch,063h,0efh,0deh,0eeh,0e6h,0e6h,0deh,0fch,04ch,01fh,04fh	; 7b1d  .?.?<c.......L.O
	defb 067h,031h,000h,0c0h,0ech,0b7h,058h,0f0h,0f0h,0e0h,000h,011h,00bh,08ch,01fh,04eh	; 7b2d  g1....X........N
	defb 00eh,08fh,03eh,0ffh,0efh,0e7h,00fh,038h,00ch,01dh,0fdh,0fdh,0f0h,0ffh,0f1h,064h	; 7b3d  ..>....8.......d
	defb 071h,03fh,01fh,00fh,0ffh,0ffh,0fbh,078h,0f0h,0e0h,0c0h,008h,011h,023h,083h,061h	; 7b4d  q?.....x.....#.a
	defb 07fh,07fh,03dh,03ch,03eh,09ch,0c1h,0f0h,0ffh,0fch,0fbh,0f4h,0e8h,068h,06eh,077h	; 7b5d  ..=<>........hnw
	defb 071h,0f0h,064h,024h,017h,0c7h,0fdh,074h,09ah,000h,03ch,03ch,018h,07eh,0aeh,0dfh	; 7b6d  q.d$...t..<<.~..
	defb 04fh,00fh,027h,026h,0ebh,0e9h,003h,000h,0bdh,007h,03fh,0e0h,0ffh,0f5h,003h,003h	; 7b7d  O.'&......?.....
	defb 002h,0f0h,0fch,090h,038h,078h,0dah,0b4h,066h,086h,02ch,031h,09fh,0cfh,07fh,0c3h	; 7b8d  ....8x..f.,1....
	defb 00ch,03eh,004h,010h,0cfh,0f3h,0abh,05dh,0cah,056h,020h,0ddh,0ddh,06eh,0efh,055h	; 7b9d  .>.....].V ..n.U
	defb 0abh,062h,004h,0dfh,026h,0edh,007h,007h,070h,078h,0d8h,0d8h,0f8h,068h,0ach,0ach	; 7bad  .b..&...px...h..
	defb 0b4h,0d4h,056h,07ah,023h,080h,004h,0ffh,084h,0feh,0f8h,0f0h,003h,004h,0ffh,084h	; 7bbd  ..Vz#...........
	defb 018h,000h,0e7h,0ffh,003h,0e0h,089h,080h,000h,000h,080h,0e0h,007h,00fh,01fh,01fh	; 7bcd  ................
	defb 003h,03fh,08ch,06eh,000h,001h,037h,0bah,0e1h,0deh,0fdh,0dfh,0f0h,0f8h,0f8h,003h	; 7bdd  .?.n..7.........
	defb 0fch,08eh,0aeh,0eeh,020h,000h,001h,00fh,03fh,07fh,0ffh,010h,0ffh,007h,0f0h,0feh	; 7bed  .... ...?.......
	defb 003h,0ffh,08ch,024h,0f0h,0f8h,001h,001h,080h,0c0h,0e0h,0e4h,0e8h,0f1h,0e5h,003h	; 7bfd  ...$............
	defb 0edh,002h,0ech,092h,021h,063h,0fch,0f0h,0b6h,0b5h,097h,0c3h,082h,013h,059h,0bbh	; 7c0d  ....!c........Y.
	defb 06eh,06eh,04ch,021h,0f6h,0f2h,003h,0fbh,0b3h,0f3h,0f7h,077h,0eeh,0e6h,0e7h,0f7h	; 7c1d  nnL!.......w....
	defb 0f3h,0f1h,0fah,0fbh,06eh,0c0h,01fh,0feh,0fah,0ech,0d8h,030h,000h,003h,04eh,0cch	; 7c2d  ....n......0..N.
	defb 0ech,0e1h,0ddh,0d8h,08fh,0bfh,07fh,07fh,03fh,03fh,01fh,09fh,08fh,01fh,03fh,007h	; 7c3d  ........??....?.
	defb 0fch,0f0h,083h,01fh,0c0h,0feh,03fh,003h,0e0h,078h,09fh,0c7h,007h,0ffh,081h,000h	; 7c4d  ......?..x......
	defb 000h	; 7c5d

; ----------------------------------------------------------------------
; DATOS graficos_7C5E: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p09:6F28 (95
;   bytes)
;   0x7c5e..0x7cbd  (95 bytes)
DATA_graficos_7C5E:
	defb 0c5h,0c0h,000h,03fh,0ffh,03fh,0ffh,03fh,0c0h,0ffh,0e0h,000h,01fh,0ffh,01fh,0ffh	; 7c5e  ...?.?.?........
	defb 01fh,0ffh,0ffh,0fch,0c0h,003h,03fh,003h,03fh,0f0h,0c0h,00fh,003h,01fh,00fh,0fch	; 7c6e  ......?.?.......
	defb 0e0h,060h,0c0h,0feh,0fch,00fh,03fh,007h,01fh,000h,00fh,000h,00fh,0f0h,0fch,0e0h	; 7c7e  .`....?.........
	defb 007h,003h,03fh,0c0h,0f8h,007h,03fh,0f0h,007h,0e0h,0e0h,001h,07fh,0f0h,00fh,0ffh	; 7c8e  ..?...?.........
	defb 0ffh,0c0h,003h,0ffh,0c0h,03fh,003h,0ffh,004h,000h,003h,0ffh,091h,007h,00fh,0d0h	; 7c9e  .....?..........
	defb 080h,0f4h,0e0h,0fdh,0f4h,0fah,0fch,0e0h,007h,03fh,0f0h,003h,00fh,03fh,000h	; 7cae  .........?...?.

; ----------------------------------------------------------------------
; DATOS resto_7CBD: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (835 bytes)
;   0x7cbd..0x8000  (835 bytes)
DATA_resto_7CBD:
	defb 07fh,0f7h,078h,0f7h,002h,097h,082h,0f7h,0a7h,00ch,0f7h,081h,076h,006h,0f7h,082h	; 7cbd  ..x.........v...
	defb 077h,097h,004h,0f7h,003h,076h,082h,096h,075h,003h,0f7h,086h,0f6h,076h,076h,096h	; 7ccd  w....v..u....vv.
	defb 052h,054h,006h,074h,082h,052h,054h,003h,074h,063h,070h,081h,074h,007h,070h,083h	; 7cdd  RT.t.RT.tcp.t.p.
	defb 074h,070h,070h,005h,077h,083h,097h,075h,0a7h,00ch,075h,085h,054h,074h,075h,074h	; 7ced  tpp.w..u..u.Ttut
	defb 075h,004h,074h,005h,075h,002h,074h,081h,075h,004h,0f7h,004h,0feh,004h,0f7h,004h	; 7cfd  u.t.u.t.u.......
	defb 0feh,083h,0f7h,0e7h,0f7h,004h,0e0h,084h,0f0h,0f7h,0e7h,0f7h,004h,0e7h,005h,070h	; 7d0d  ...............p
	defb 004h,0e0h,004h,070h,002h,0f0h,002h,0e0h,003h,070h,085h,0e0h,0f0h,0e0h,0e0h,0f0h	; 7d1d  ...p.....p......
	defb 004h,070h,004h,0e0h,011h,0f0h,081h,0e0h,005h,0f0h,01eh,0e0h,085h,0feh,0e0h,0e0h	; 7d2d  .p..............
	defb 0f0h,0e0h,005h,0f0h,08bh,0feh,0f0h,0e0h,0f0h,0e0h,0e0h,0f0h,0e0h,0f0h,0e0h,0f0h	; 7d3d  ................
	defb 004h,0e0h,081h,0f0h,004h,0e0h,005h,0f0h,081h,0e0h,003h,0f0h,002h,0e0h,003h,0f0h	; 7d4d  ................
	defb 082h,0e0h,0f0h,004h,0e0h,005h,0f0h,081h,0e0h,006h,0f0h,002h,0e0h,002h,0f0h,004h	; 7d5d  ................
	defb 0e0h,091h,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h,0feh,0f0h,0f0h,0feh,0feh,0f0h,0f0h,0e0h	; 7d6d  ................
	defb 0feh,0f0h,0f0h,003h,0feh,004h,0f0h,084h,0feh,0e0h,0f0h,0feh,005h,0e0h,089h,0f0h	; 7d7d  ................
	defb 0e0h,0e0h,0f0h,0feh,0e0h,0f0h,0e0h,0feh,004h,0e0h,08ch,0f0h,0feh,0e0h,0e0h,0feh	; 7d8d  ................
	defb 0e0h,0e0h,0feh,0e0h,0f0h,0e0h,0f0h,004h,0e0h,083h,0f0h,0e0h,0f0h,00ah,0e0h,002h	; 7d9d  ................
	defb 090h,005h,0e0h,002h,090h,08bh,0a0h,070h,0f0h,0f0h,0e0h,0e0h,0b0h,0a0h,0e0h,070h	; 7dad  .......p.......p
	defb 0f0h,003h,0e0h,095h,0b0h,0a0h,0e0h,0f0h,0f0h,0e0h,0b0h,0a0h,0b0h,0e0h,0e0h,0f0h	; 7dbd  ................
	defb 0f0h,0e0h,0b0h,0a0h,0b0h,0a0h,0e0h,0a0h,0eah,003h,0bah,003h,0b0h,081h,0a0h,004h	; 7dcd  ................
	defb 0b0h,081h,0a0h,004h,0b0h,003h,0a0h,0a3h,040h,0e0h,050h,0a0h,0b0h,0b0h,0a0h,0a0h	; 7ddd  ........@.P.....
	defb 0e0h,050h,050h,090h,090h,0a0h,0a0h,0bah,0bah,0b0h,0b0h,040h,090h,090h,0a0h,0a4h	; 7ded  .PP........@....
	defb 0a4h,0bah,0b0h,0bah,0b0h,0a0h,0b0h,0b0h,0a0h,000h,000h,004h,0b0h,087h,0a0h,090h	; 7dfd  ................
	defb 0a0h,0a0h,090h,0a0h,0a0h,005h,0b0h,081h,090h,003h,0a0h,003h,0b0h,082h,0a0h,020h	; 7e0d  ...............
	defb 003h,0c0h,084h,0a0h,0a4h,0a0h,0a0h,004h,0c0h,085h,090h,0a4h,0bah,0bah,020h,003h	; 7e1d  .............. .
	defb 0c0h,082h,0a0h,0a4h,005h,0a0h,002h,0e0h,083h,0e5h,054h,054h,004h,0e0h,081h,050h	; 7e2d  ..........TT...P
	defb 003h,054h,006h,0e0h,002h,050h,005h,0f0h,002h,0e0h,081h,050h,005h,054h,003h,040h	; 7e3d  .T...P.....P.T.@
	defb 005h,054h,088h,040h,054h,040h,074h,074h,050h,040h,050h,00ah,040h,081h,020h,007h	; 7e4d  .T.@T@ttP@P.@. .
	defb 070h,081h,020h,006h,070h,002h,020h,006h,070h,081h,0c0h,006h,020h,083h,0c0h,020h	; 7e5d  p. .p. .p... ..
	defb 0c0h,007h,0c2h,081h,0c0h,005h,020h,085h,0c0h,020h,0c0h,070h,070h,005h,020h,083h	; 7e6d  ...... .. .pp. .
	defb 0c2h,070h,070h,005h,020h,085h,0c2h,074h,070h,0a0h,0a0h,004h,020h,082h,0f0h,020h	; 7e7d  .pp. ..tp... ..
	defb 006h,0c0h,002h,0c2h,004h,0c0h,082h,030h,0c0h,004h,0c2h,004h,0c0h,004h,020h,082h	; 7e8d  .......0...... .
	defb 0c0h,020h,00bh,0c0h,084h,0a0h,030h,020h,020h,003h,0c0h,08bh,030h,090h,0b0h,030h	; 7e9d  . ....0  ...0..0
	defb 020h,020h,0c0h,0c0h,030h,030h,020h,005h,0c0h,086h,0a0h,030h,020h,0c2h,0c0h,0c0h	; 7ead    ..00 ....0 ...
	defb 004h,030h,002h,032h,004h,0c2h,002h,060h,086h,090h,0a9h,0a9h,0bah,0bah,0b3h,000h	; 7ebd  .0.2...`........
	defb 002h,076h,002h,096h,002h,0a9h,082h,0bah,0b3h,003h,076h,002h,096h,002h,0a9h,081h	; 7ecd  .v........v.....
	defb 0bah,004h,076h,002h,096h,002h,0a9h,002h,076h,08ch,096h,0a9h,0a9h,0bah,0b3h,0b3h	; 7edd  ..v.....v.......
	defb 0f7h,0f7h,076h,076h,097h,097h,004h,0a9h,002h,0bah,099h,0b3h,032h,032h,052h,0bah	; 7eed  ..vv........22R.
	defb 0bah,0b3h,032h,052h,052h,054h,074h,0b3h,032h,052h,052h,054h,074h,070h,070h,032h	; 7efd  ..2RRTt.2RRTtpp2
	defb 052h,055h,054h,074h,003h,070h,085h,0a2h,075h,0b5h,074h,073h,003h,070h,08dh,0bah	; 7f0d  RUTt.p..u.ts.p..
	defb 073h,0b3h,072h,032h,075h,074h,074h,032h,032h,052h,052h,054h,003h,074h,000h,0cch	; 7f1d  s.r2utt22RRT.t..
	defb 0cfh,09fh,03fh,07fh,0f9h,0e3h,0c6h,0bfh,0fch,0cah,09ch,080h,020h,0c0h,080h,000h	; 7f2d  ..?......... ...
	defb 049h,092h,036h,0e6h,0cch,09ch,03ch,078h,0cfh,0e7h,0e7h,0a7h,0e3h,0e3h,0a3h,0a3h	; 7f3d  I.6...<x........
	defb 0f9h,0f9h,07dh,07ch,07ch,03eh,03eh,03ah,0e2h,043h,041h,0c0h,080h,087h,00fh,00fh	; 7f4d  ..}||>>:.CA.....
	defb 0fdh,0f7h,0ceh,01eh,078h,0e3h,007h,03eh,0bch,007h,03ch,0e0h,000h,001h,00dh,079h	; 7f5d  ....x..>..<....y
	defb 0f8h,080h,010h,050h,090h,0a0h,020h,020h,0fch,0fch,02eh,0ffh,003h,000h,093h,0d7h	; 7f6d  ...P..  ........
	defb 01fh,0c3h,07ch,003h,000h,010h,01dh,01fh,063h,0e3h,0f3h,0f2h,0d2h,0f3h,0b3h,033h	; 7f7d  ..|.....c......3
	defb 003h,001h,006h,000h,08dh,011h,034h,036h,036h,074h,072h,052h,0f4h,0ebh,0f9h,0fdh	; 7f8d  ......466trR....
	defb 0f4h,0feh,003h,0fah,091h,07ch,0f0h,0c0h,0feh,0fch,003h,01fh,0f0h,0f2h,0f2h,046h	; 7f9d  .....|.........F
	defb 0fch,000h,007h,003h,03eh,0f9h,003h,0fch,099h,0f4h,0fch,0f4h,0f4h,0beh,0bah,092h	; 7fad  ....>...........
	defb 09ch,0c0h,0e0h,0f4h,0fch,073h,0f3h,0e3h,0e7h,067h,025h,0a4h,076h,0fch,0fch,0f8h	; 7fbd  .....s...g%.v...
	defb 0f8h,078h,003h,0f0h,0ffh,001h,0f0h,0fch,07fh,007h,0ffh,0ffh,07fh,0bch,046h,07ch	; 7fcd  .x............F|
	defb 010h,000h,003h,057h,0ffh,020h,0f6h,0eeh,0ech,0ddh,089h,099h,013h,01fh,01fh,03fh	; 7fdd  ...W. .........?
	defb 07eh,078h,067h,08fh,01fh,0c4h,0e6h,0e6h,0f6h,0f4h,020h,000h,071h,0f0h,0e8h,0c8h	; 7fed  ~xg....... .q...
	defb 098h,018h,039h	; 7ffd
