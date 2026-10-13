; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 01 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x6021  (33 bytes)
; ======================================================================


L_6000:
	ld a,(0fd9ah)		;6000
	ld (0e039h),a		;6003
	ld a,0c9h		;6006
	ld (0fd9ah),a		;6008
	ld bc,0606bh		;600b
	ld hl,06021h		;600e
	ld de,0e012h		;6011
	call L_6047		;6014
	call L_6073		;6017
	ld a,(0e039h)		;601a
	ld (0fd9ah),a		;601d
	ret			;6020

; ----------------------------------------------------------------------
; DATOS resto_6021: lo apuntan con el banco puesto p01:600E (0x6021), p01:6034
;   (0x6021); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p01:600E, p01:6034 (5 bytes)
;   0x6021..0x6026  (5 bytes)
DATA_resto_6021:
	defb 053h,048h,041h,04ch,04dh	; 6021

; ======================================================================
; CODIGO 0x6026..0x606b  (69 bytes)
; ======================================================================


L_6026:
	ld a,(0fd9ah)		;6026
	ld (0e039h),a		;6029
	ld a,0c9h		;602c
	ld (0fd9ah),a		;602e
	ld bc,0606fh		;6031
	ld hl,06021h		;6034
	ld de,0e012h		;6037
	call L_6047		;603a
	call L_609D		;603d
	ld a,(0e039h)		;6040
	ld (0fd9ah),a		;6043
	ret			;6046
L_6047:
	push bc			;6047
	ld (0e010h),de		;6048
	ld bc,00005h		;604c
	ldir		;604f
	xor a			;6051
	ld b,008h		;6052
L_6054:
	ld (de),a			;6054
	inc de			;6055
	djnz L_6054		;6056
	pop hl			;6058
	ld bc,00004h		;6059
	ldir		;605c
	ld a,(0f0f8h)		;605e
	ld (de),a			;6061
	inc de			;6062
	xor a			;6063
	ld b,014h		;6064
L_6066:
	ld (de),a			;6066
	inc de			;6067
	djnz L_6066		;6068
	ret			;606a

; ----------------------------------------------------------------------
; DATOS resto_606B: lo apuntan con el banco puesto p01:600B (0x606B), p01:6031
;   (0x606F), p01:74EC (0x6070); el tamano es lo que hay hasta lo siguiente,
;   no sale de recorrerlo; lo leen p01:600B, p01:6031, p01:74EC (8 bytes)
;   0x606b..0x6073  (8 bytes)
DATA_resto_606B:
	defb 040h,0ebh,03eh,000h,0e0h,0e8h,03eh,000h	; 606b  @.>...>.

; ======================================================================
; CODIGO 0x6073..0x6146  (211 bytes)
; ======================================================================


L_6073:
	ld de,(0e010h)		;6073
	ld b,001h		;6077
	ld a,(0f0f7h)		;6079
	ld h,080h		;607c
	call 00024h		;607e   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld a,004h		;6081
	ld (08000h),a		;6083
	ld c,00ah		;6086
	ld de,(0e010h)		;6088
	call 08000h		;608c
	push af			;608f
	ld a,(0f0f8h)		;6090
	ld h,080h		;6093
	call 00024h		;6095   ; BIOS ENASLT - Switches to specified slot and page definitively
	pop af			;6098
	and a			;6099
	jr nz,L_60C5		;609a
	ret			;609c
L_609D:
	ld de,(0e010h)		;609d
	ld a,(0f0f7h)		;60a1
	ld h,080h		;60a4
	call 00024h		;60a6   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld a,004h		;60a9
	ld (08000h),a		;60ab
	ld c,00bh		;60ae
	ld de,(0e010h)		;60b0
	call 08000h		;60b4
	push af			;60b7
	ld a,(0f0f8h)		;60b8
	ld h,080h		;60bb
	call 00024h		;60bd   ; BIOS ENASLT - Switches to specified slot and page definitively
	pop af			;60c0
	and a			;60c1
	jr nz,L_60C5		;60c2
	ret			;60c4
L_60C5:
	ld a,002h		;60c5
	ld (0e38fh),a		;60c7
	ret			;60ca
L_60CB:
	ld hl,0f0f9h		;60cb
	ld (hl),000h		;60ce
	ld bc,00400h		;60d0
	ld hl,0fcc1h		;60d3
L_60D6:
	push bc			;60d6
	push hl			;60d7
	ld a,(hl)			;60d8
	bit 7,a		;60d9
	jr nz,L_60F2		;60db
	call L_611F		;60dd
	pop hl			;60e0
	pop bc			;60e1
L_60E2:
	ld a,(0f0f9h)		;60e2
	and a			;60e5
	jr nz,L_60ED		;60e6
	inc hl			;60e8
	inc c			;60e9
	djnz L_60D6		;60ea
	ret			;60ec
L_60ED:
	ld a,c			;60ed
	ld (0f0f7h),a		;60ee
	ret			;60f1
L_60F2:
	call L_60FE		;60f2
	pop hl			;60f5
	pop bc			;60f6
	ld a,(0f0f9h)		;60f7
	and a			;60fa
	ret nz			;60fb
	jr L_60E2		;60fc
L_60FE:
	and 080h		;60fe
	or c			;6100
	ld c,a			;6101
	ld b,004h		;6102
L_6104:
	push bc			;6104
	call L_611F		;6105
	pop bc			;6108
	ld a,(0f0f9h)		;6109
	and a			;610c
	jr nz,L_6116		;610d
	ld a,c			;610f
	add a,004h		;6110
	ld c,a			;6112
	djnz L_6104		;6113
	ret			;6115
L_6116:
	ld a,c			;6116
	and 00ch		;6117
	rra			;6119
	rra			;611a
	ld (0f0f7h),a		;611b
	ret			;611e
L_611F:
	ld de,06146h		;611f
	ld hl,04010h		;6122
	ld b,002h		;6125
	call L_6131		;6127
	ret nc			;612a
	ld hl,0f0f9h		;612b
	ld (hl),001h		;612e
	ret			;6130
L_6131:
	push bc			;6131
	push de			;6132
	ld a,c			;6133
	call 0000ch		;6134   ; BIOS RDSLT - Reads the value of an address in another slot
	pop de			;6137
	pop bc			;6138
	ex de,hl			;6139
	cp (hl)			;613a
	ex de,hl			;613b
	jr nz,L_6144		;613c
	inc hl			;613e
	inc de			;613f
	djnz L_6131		;6140
	scf			;6142
	ret			;6143
L_6144:
	and a			;6144
	ret			;6145

; ----------------------------------------------------------------------
; DATOS resto_6146: lo apuntan con el banco puesto p01:611F (0x6146); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:611F (2 bytes)
;   0x6146..0x6148  (2 bytes)
DATA_resto_6146:
	defb 059h,05ah	; 6146

; ======================================================================
; CODIGO 0x6148..0x6154  (12 bytes)
; ======================================================================


L_6148:
	call 04149h		;6148
	call L_6151		;614b
	jp 040f9h		;614e
L_6151:
	call 040abh		;6151

; ----------------------------------------------------------------------
; DATOS saltos_6154: tabla de 5 palabras del despachador (call 0x408D en
;   0x6151); lo leen L_40AB (10 bytes)
;   0x6154..0x615e  (10 bytes)
DATA_saltos_6154:
	defb 05eh,061h	; 6154
	defb 094h,061h	; 6156
	defb 0b8h,061h	; 6158
	defb 0cah,061h	; 615a
	defb 000h,062h	; 615c

; ======================================================================
; CODIGO 0x615e..0x6233  (213 bytes)
; ======================================================================


L_615E:
	ld de,08000h		;615e
	ld hl,02080h		;6161
	call 05972h		;6164
	ld de,08282h		;6167
	ld hl,02300h		;616a
	call 05972h		;616d
	ld de,08282h		;6170
	ld hl,02500h		;6173
	call 05986h		;6176
	ld de,083dfh		;6179
	ld hl,00080h		;617c
	call 05972h		;617f
	ld de,085bfh		;6182
	ld hl,00300h		;6185
	call 05972h		;6188
	ld de,085bfh		;618b
	ld hl,00500h		;618e
	jp 05972h		;6191
L_6194:
	ld de,08613h		;6194
	ld hl,02080h		;6197
	call 05972h		;619a
	ld de,08613h		;619d
	ld hl,02380h		;61a0
	call 05986h		;61a3
	ld de,088d0h		;61a6
	ld hl,00080h		;61a9
	call 05972h		;61ac
	ld de,088d0h		;61af
	ld hl,00380h		;61b2
	jp 05972h		;61b5
L_61B8:
	ld de,08985h		;61b8
	ld hl,02080h		;61bb
	call 05972h		;61be
	ld de,08ef9h		;61c1
	ld hl,00080h		;61c4
	jp 05972h		;61c7
L_61CA:
	ld de,09611h		;61ca
	ld hl,02080h		;61cd
	call 05972h		;61d0
	ld de,09695h		;61d3
	ld hl,02180h		;61d6
	call 05972h		;61d9
	ld de,09695h		;61dc
	ld hl,02280h		;61df
	call 05986h		;61e2
	ld de,0973ch		;61e5
	ld hl,00080h		;61e8
	call 05972h		;61eb
	ld de,09786h		;61ee
	ld hl,00180h		;61f1
	call 05972h		;61f4
	ld de,09786h		;61f7
	ld hl,00280h		;61fa
	jp 05972h		;61fd
L_6200:
	ld de,09175h		;6200
	ld hl,02080h		;6203
	call 05972h		;6206
	ld de,094a2h		;6209
	ld hl,00080h		;620c
	jp 05972h		;620f
L_6212:
	call 04149h		;6212
	ld de,06233h		;6215
	call 043a4h		;6218
	ld hl,0ed44h		;621b
	ld c,00ch		;621e
L_6220:
	ld b,010h		;6220
L_6222:
	ld a,(de)			;6222
	ld (hl),a			;6223
	inc hl			;6224
	inc de			;6225
	djnz L_6222		;6226
	ld a,010h		;6228
	call 040a1h		;622a
	dec c			;622d
	jr nz,L_6220		;622e
	jp 040f9h		;6230

; ----------------------------------------------------------------------
; DATOS resto_6233: lo apuntan con el banco puesto p01:6215 (0x6233); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:6215 (10 bytes)
;   0x6233..0x623d  (10 bytes)
DATA_resto_6233:
	defb 0cbh,097h,08bh,098h,04bh,099h,0cbh,09ah,00bh,09ah	; 6233  ....K.....

; ======================================================================
; CODIGO 0x623d..0x63d5  (408 bytes)
; ======================================================================


L_623D:
	ld de,09ed9h		;623d
	ld hl,02080h		;6240
	call 05972h		;6243
	ld de,09ed9h		;6246
	ld hl,02370h		;6249
	call 05986h		;624c
	ld de,0a1c8h		;624f
	ld hl,00080h		;6252
	call 05972h		;6255
	ld de,0a1c8h		;6258
	ld hl,00370h		;625b
	jp 05972h		;625e
L_6261:
	ld de,0a415h		;6261
	call 059fbh		;6264
	ld de,0a974h		;6267
	call 059fbh		;626a
	ld de,0a654h		;626d
	call 059fbh		;6270
	ld de,0aabah		;6273
	jp 059fbh		;6276
L_6279:
	ld de,0ac67h		;6279
	ld hl,02080h		;627c
	call 05a2ah		;627f
	ld de,0ac67h		;6282
	ld hl,02380h		;6285
	call 05a32h		;6288
	ld de,0af27h		;628b
	ld hl,00080h		;628e
	call 05a2ah		;6291
	ld de,0af27h		;6294
	ld hl,00380h		;6297
	call 05a2ah		;629a
	ld de,0b085h		;629d
	ld hl,02880h		;62a0
	call 05a2ah		;62a3
	ld de,0b085h		;62a6
	ld hl,02a70h		;62a9
	call 05a32h		;62ac
	ld de,0b25ch		;62af
	ld hl,00880h		;62b2
	call 05a2ah		;62b5
	ld de,0b25ch		;62b8
	ld hl,00a70h		;62bb
	jp 05a2ah		;62be
L_62C1:
	ld de,0b372h		;62c1
	ld hl,02080h		;62c4
	call 05a2ah		;62c7
	ld de,0b372h		;62ca
	ld hl,022c8h		;62cd
	call 05a32h		;62d0
	ld de,0b5b4h		;62d3
	ld hl,00080h		;62d6
	call 05a2ah		;62d9
	ld de,0b5b4h		;62dc
	ld hl,002c8h		;62df
	call 05a2ah		;62e2
	ld de,0b69ch		;62e5
	ld hl,02880h		;62e8
	call 05a2ah		;62eb
	ld de,0b69ch		;62ee
	ld hl,02a90h		;62f1
	call 05a32h		;62f4
	ld de,0b8a8h		;62f7
	ld hl,00880h		;62fa
	call 05a2ah		;62fd
	ld de,0b8a8h		;6300
	ld hl,00a90h		;6303
	jp 05a2ah		;6306
L_6309:
	ld (0e353h),a		;6309
	ld de,(0e3c1h)		;630c
	jr L_631B		;6310
L_6312:
	ld (0e353h),a		;6312
	ld e,(ix+002h)		;6315
	ld d,(ix+004h)		;6318
L_631B:
	call L_6381		;631b
	jr L_6330		;631e
L_6320:
	ld (0e353h),a		;6320
	call L_6377		;6323
	jr L_6330		;6326
L_6328:
	ld a,080h		;6328
	ld (0e353h),a		;632a
	call L_6369		;632d
L_6330:
	ld a,(0e359h)		;6330
	ld e,a			;6333
	ld d,000h		;6334
	ld a,e			;6336
	sub 03fh		;6337
	neg		;6339
	ld hl,06415h		;633b
	push hl			;633e
	add hl,de			;633f
	ld c,(hl)			;6340
	pop hl			;6341
	ld e,a			;6342
	add hl,de			;6343
	ld a,(hl)			;6344
	ld (0e358h),a		;6345
	ld e,c			;6348
	call L_63B7		;6349
	ld a,(0e354h)		;634c
	and a			;634f
	call nz,043adh		;6350
	ld (0e356h),de		;6353
	ld a,(0e358h)		;6357
	ld e,a			;635a
	call L_63B7		;635b
	ld a,(0e355h)		;635e
	and a			;6361
	call nz,043adh		;6362
	ld hl,(0e356h)		;6365
	ret			;6368
L_6369:
	ld a,(0e3c1h)		;6369
	ld (0e8e0h),a		;636c
	ld a,(0e3c2h)		;636f
	ld (0e8e1h),a		;6372
	jr L_6387		;6375
L_6377:
	ld a,(0e3e5h)		;6377
	ld l,a			;637a
	ld a,(0e3e7h)		;637b
	ld h,a			;637e
	jr L_6384		;637f
L_6381:
	ld hl,05840h		;6381
L_6384:
	ld (0e8e0h),hl		;6384
L_6387:
	ld hl,0e354h		;6387
	ld (hl),000h		;638a
	ld a,(0e8e0h)		;638c
	sub e			;638f
	jr nc,L_6395		;6390
	neg		;6392
	inc (hl)			;6394
L_6395:
	inc hl			;6395
	ld (hl),000h		;6396
	rra			;6398
	rra			;6399
	and 038h		;639a
	ld e,a			;639c
	ld a,(0e8e1h)		;639d
	sub d			;63a0
	jr nc,L_63A6		;63a1
	neg		;63a3
	inc (hl)			;63a5
L_63A6:
	rlca			;63a6
	rlca			;63a7
	rlca			;63a8
	and 007h		;63a9
	add a,e			;63ab
	ld hl,063d5h		;63ac
	call 040a1h		;63af
	ld a,(hl)			;63b2
	ld (0e359h),a		;63b3
	ret			;63b6
L_63B7:
	ld a,(0e353h)		;63b7
	ld h,a			;63ba
	call L_63C9		;63bb
	xor a			;63be
	add hl,hl			;63bf
	adc a,a			;63c0
	add hl,hl			;63c1
	adc a,a			;63c2
	add hl,hl			;63c3
	adc a,a			;63c4
	ld l,h			;63c5
	ld h,a			;63c6
	ex de,hl			;63c7
	ret			;63c8
L_63C9:
	ld b,008h		;63c9
	ld l,000h		;63cb
	ld d,l			;63cd
L_63CE:
	add hl,hl			;63ce
	jr nc,L_63D2		;63cf
	add hl,de			;63d1
L_63D2:
	djnz L_63CE		;63d2
	ret			;63d4

; ----------------------------------------------------------------------
; DATOS resto_63D5: lo apuntan con el banco puesto p01:63AC (0x63D5), p01:7769
;   (0x6414), p01:633B (0x6415); el tamano es lo que hay hasta lo siguiente,
;   no sale de recorrerlo; lo leen p01:63AC, p01:7769, p01:633B (181 bytes)
;   0x63d5..0x648a  (181 bytes)
DATA_resto_63D5:
	defb 020h,008h,004h,003h,002h,002h,001h,001h,038h,020h,015h,00fh,00ch,009h,008h,007h	; 63d5   .......8 ......
	defb 03bh,02bh,020h,019h,014h,010h,00eh,00ch,03dh,031h,027h,020h,01ah,016h,013h,011h	; 63e5  .+ .....=1' ....
	defb 03dh,034h,02ch,025h,020h,01ch,018h,015h,03eh,036h,02fh,029h,024h,020h,01ch,019h	; 63f5  =4,% ...>6/)$ ..
	defb 03eh,038h,032h,02ch,028h,023h,020h,01dh,03eh,039h,034h,02fh,02ah,026h,023h,020h	; 6405  >82,(# .>94/*&#
	defb 000h,006h,00ch,012h,019h,01fh,026h,02ch,032h,038h,03eh,044h,04ah,050h,056h,05ch	; 6415  ......&,28>DJPV\
	defb 062h,068h,06dh,073h,079h,07eh,084h,089h,08eh,093h,099h,09eh,0a2h,0a7h,0ach,0b1h	; 6425  bhmsy~..........
	defb 0b5h,0b9h,0beh,0c2h,0c6h,0cah,0ceh,0d1h,0d5h,0d8h,0dch,0dfh,0e2h,0e5h,0e7h,0eah	; 6435  ................
	defb 0edh,0efh,0f1h,0f3h,0f5h,0f7h,0f8h,0fah,0fbh,0fch,0fdh,0feh,0feh,0ffh,0ffh,0ffh	; 6445  ................
	defb 02ah,040h,0ebh,07dh,0feh,020h,020h,004h,07ch,0feh,002h,0c8h,021h,0fah,03ah,011h	; 6455  *@.}.  .|...!.:.
	defb 041h,0ebh,006h,002h,01ah,0e6h,0f0h,01fh,01fh,01fh,01fh,0cdh,07fh,064h,023h,01ah	; 6465  A............d#.
	defb 0e6h,00fh,0cdh,07fh,064h,01bh,023h,010h,0ebh,0c9h,0c6h,010h,0feh,01ah,038h,002h	; 6475  ....d.#.......8.
	defb 0c6h,007h,0c3h,04dh,000h	; 6485

; ======================================================================
; CODIGO 0x648a..0x64df  (85 bytes)
; ======================================================================


L_648A:
	ld b,008h		;648a
L_648C:
	ld a,(hl)			;648c
	cp 0ffh		;648d
	jr z,L_6496		;648f
	or a			;6491
	ret nz			;6492
	inc hl			;6493
	djnz L_648C		;6494
L_6496:
	xor a			;6496
	ret			;6497
L_6498:
	ld hl,0eb00h		;6498
	push hl			;649b
	call L_648A		;649c
	pop hl			;649f
	jr nz,L_64B0		;64a0
	ld (hl),0f5h		;64a2
	inc hl			;64a4
	ld (hl),0d3h		;64a5
	inc hl			;64a7
	ld (hl),0d4h		;64a8
	inc hl			;64aa
	ld (hl),0dfh		;64ab
	inc hl			;64ad
	ld (hl),0ffh		;64ae
L_64B0:
	ld hl,0eb09h		;64b0
	push hl			;64b3
	call L_648A		;64b4
	pop hl			;64b7
	ret nz			;64b8
	ld (hl),0d0h		;64b9
	inc hl			;64bb
	ld (hl),0d6h		;64bc
	inc hl			;64be
	ld (hl),0d4h		;64bf
	inc hl			;64c1
	ld (hl),0e7h		;64c2
	inc hl			;64c4
	ld (hl),0ffh		;64c5
	ret			;64c7
L_64C8:
	ld hl,0e003h		;64c8
	inc (hl)			;64cb
	ld a,(0e000h)		;64cc
	cp 003h		;64cf
	jr nc,L_64D7		;64d1
	ld hl,06634h		;64d3
	push hl			;64d6
L_64D7:
	ld bc,(0e000h)		;64d7
	ld a,c			;64db
	call 040abh		;64dc

; ----------------------------------------------------------------------
; DATOS saltos_64DF: tabla de 9 palabras del despachador (call 0x408D en
;   0x64DC); lo leen L_40AB (18 bytes)
;   0x64df..0x64f1  (18 bytes)
DATA_saltos_64DF:
	defb 0f1h,064h	; 64df
	defb 01bh,065h	; 64e1
	defb 033h,065h	; 64e3
	defb 064h,065h	; 64e5
	defb 06eh,065h	; 64e7
	defb 0f6h,065h	; 64e9
	defb 009h,066h	; 64eb
	defb 021h,066h	; 64ed
	defb 02eh,066h	; 64ef

; ======================================================================
; CODIGO 0x64f1..0x6634  (323 bytes)
; ======================================================================


L_64F1:
	djnz L_64FF		;64f1
	ld a,(0e003h)		;64f3
	rra			;64f6
	ret nc			;64f7
	call 04242h		;64f8
	ret nz			;64fb
	xor a			;64fc
	jr L_655C		;64fd
L_64FF:
	djnz L_650D		;64ff
	ld hl,0e004h		;6501
	dec (hl)			;6504
	ret nz			;6505
	call 0424bh		;6506
	xor a			;6509
	jp L_65CE		;650a
L_650D:
	call L_709F		;650d
	call 0591bh		;6510
	call 0426fh		;6513
	call 04254h		;6516
	jr L_655F		;6519
L_651B:
	call L_66D9		;651b
	call 0425dh		;651e
	ld hl,0e004h		;6521
	dec (hl)			;6524
	ret nz			;6525
	xor a			;6526
	ld (0e350h),a		;6527
	ld (0e333h),a		;652a
	ld (0e351h),a		;652d
	jp L_65D1		;6530
L_6533:
	djnz L_6540		;6533
	call 0591bh		;6535
	call 0426fh		;6538
	call 042efh		;653b
	jr L_655F		;653e
L_6540:
	djnz L_6554		;6540
	call 042f8h		;6542
	call 04301h		;6545
	ld a,(0e340h)		;6548
	or a			;654b
	ret nz			;654c
L_654D:
	xor a			;654d
L_654E:
	ld (0e000h),a		;654e
	jp L_65D5		;6551
L_6554:
	call 04377h		;6554
	ld a,(0e333h)		;6557
	and a			;655a
	ret z			;655b
L_655C:
	ld (0e004h),a		;655c
L_655F:
	ld hl,0e001h		;655f
	inc (hl)			;6562
	ret			;6563
L_6564:
	call L_6677		;6564
	ld a,001h		;6567
	ld (0e340h),a		;6569
	jr L_65D1		;656c
L_656E:
	djnz L_658B		;656e
	call L_67E9		;6570
	ld a,(0e333h)		;6573
	or a			;6576
	ret z			;6577
	call L_6498		;6578
	ld a,(0e33ch)		;657b
	and a			;657e
	jp z,L_655F		;657f
	ld hl,0e001h		;6582
	inc (hl)			;6585
	inc (hl)			;6586
	inc (hl)			;6587
	jp L_655F		;6588
L_658B:
	djnz L_659F		;658b
	call 058bfh		;658d
	call 058ffh		;6590
	xor a			;6593
	ld (0e333h),a		;6594
	ld l,a			;6597
	ld h,a			;6598
	ld (0e350h),hl		;6599
	jp L_655F		;659c
L_659F:
	djnz L_65B2		;659f
	call 05ecah		;65a1
	call 04266h		;65a4
	ld a,(0e333h)		;65a7
	or a			;65aa
	ret z			;65ab
	call L_655F		;65ac
	jp L_655F		;65af
L_65B2:
	djnz L_65BF		;65b2
	call L_6ACE		;65b4
	ld a,(0e333h)		;65b7
	or a			;65ba
	ret z			;65bb
	jp L_655F		;65bc
L_65BF:
	djnz L_65DA		;65bf
	call 058bfh		;65c1
	call L_6702		;65c4
	xor a			;65c7
	ld (0e334h),a		;65c8
	ld (0e350h),a		;65cb
L_65CE:
	ld (0e004h),a		;65ce
L_65D1:
	ld hl,0e000h		;65d1
	inc (hl)			;65d4
L_65D5:
	xor a			;65d5
	ld (0e001h),a		;65d6
	ret			;65d9
L_65DA:
	call 058bfh		;65da
	call 0591bh		;65dd
	xor a			;65e0
	ld (0e333h),a		;65e1
	call 0426fh		;65e4
	ld a,(0e334h)		;65e7
	ld hl,0e001h		;65ea
	add a,(hl)			;65ed
	ld (hl),a			;65ee
	call L_655F		;65ef
	call 0bb00h		;65f2
	ret			;65f5
L_65F6:
	call 05a6eh		;65f6
	ld a,(0e336h)		;65f9
	and a			;65fc
	ld a,008h		;65fd
	jp nz,L_654E		;65ff
	ld a,(0e340h)		;6602
	or a			;6605
	ret nz			;6606
	jr L_65D1		;6607
L_6609:
	djnz L_6617		;6609
	call 04278h		;660b
	ld a,(0e340h)		;660e
	and 080h		;6611
	ret z			;6613
	jp L_65D1		;6614
L_6617:
	xor a			;6617
	ld (0e339h),a		;6618
	ld (0e004h),a		;661b
	jp L_655F		;661e
L_6621:
	call 0591bh		;6621
	ld hl,0e002h		;6624
	ld a,(hl)			;6627
	and 0bfh		;6628
	ld (hl),a			;662a
	jp L_654D		;662b
L_662E:
	call 05ecah		;662e
	jp 04281h		;6631

; ----------------------------------------------------------------------
; DATOS resto_6634: lo apuntan con el banco puesto p01:64D3 (0x6634); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:64D3 (67 bytes)
;   0x6634..0x6677  (67 bytes)
DATA_resto_6634:
	defb 0cdh,0c5h,070h,021h,031h,0e3h,0cdh,0beh,070h,0b7h,0c8h,021h,004h,0e0h,036h,000h	; 6634  ..p!1...p..!..6.
	defb 06eh,011h,032h,0e3h,046h,010h,01fh,0e6h,030h,028h,023h,03eh,040h,032h,002h,0e0h	; 6644  n.2.F...0(#>@2..
	defb 036h,003h,023h,00eh,000h,071h,00dh,0cdh,0e8h,066h,03ah,030h,0e3h,0e6h,020h,028h	; 6654  6.#..q...f:0.. (
	defb 001h,03ch,032h,03ch,0e3h,0c9h,036h,001h,0cdh,083h,045h,0c3h,04bh,042h,01ah,0eeh	; 6664  .<2<..6...E.KB..
	defb 001h,012h,0c9h	; 6674

; ======================================================================
; CODIGO 0x6677..0x67e3  (364 bytes)
; ======================================================================


L_6677:
	ld hl,0e340h		;6677
	ld de,0e341h		;667a
	ld bc,00d40h		;667d
	xor a			;6680
	ld (hl),a			;6681
	ldir		;6682
	ld hl,00200h		;6684
	ld (0eb40h),hl		;6687
	ld hl,0ef25h		;668a
	ld (0e344h),hl		;668d
	ld hl,0038bh		;6690
	ld (0eb12h),hl		;6693
	ld hl,0d67fh		;6696
	ld (0eb14h),hl		;6699
	ld a,0ffh		;669c
	ld (0eb16h),a		;669e
	ld a,(0e335h)		;66a1
	and a			;66a4
	jr z,L_66A9		;66a5
	add a,002h		;66a7
L_66A9:
	ld (0e334h),a		;66a9
	ret			;66ac
L_66AD:
	ld c,000h		;66ad
L_66AF:
	ld a,(de)			;66af
	rra			;66b0
	rra			;66b1
	rra			;66b2
	rra			;66b3
	and 00fh		;66b4
	jr z,L_66BA		;66b6
	ld c,0ffh		;66b8
L_66BA:
	dec b			;66ba
	jr nz,L_66BF		;66bb
	ld c,0ffh		;66bd
L_66BF:
	inc b			;66bf
	add a,010h		;66c0
	and c			;66c2
	call 0004dh		;66c3   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;66c6
	ld a,(de)			;66c7
	and 00fh		;66c8
	jr z,L_66CE		;66ca
	ld c,0ffh		;66cc
L_66CE:
	add a,010h		;66ce
	and c			;66d0
	call 0004dh		;66d1   ; BIOS WRTVRM - Writes data in VRAM
	dec de			;66d4
	inc hl			;66d5
	djnz L_66AF		;66d6
	ret			;66d8
L_66D9:
	ld hl,0e335h		;66d9
	ld a,(0e008h)		;66dc
	and 003h		;66df
	jr z,L_66E8		;66e1
	inc (hl)			;66e3
	ld a,(hl)			;66e4
	and 001h		;66e5
	ld (hl),a			;66e7
L_66E8:
	ld a,(0e335h)		;66e8
	and a			;66eb
	ld bc,03f00h		;66ec
	jr z,L_66F4		;66ef
	ld bc,0003fh		;66f1
L_66F4:
	ld hl,03a8bh		;66f4
	ld a,b			;66f7
	call 0004dh		;66f8   ; BIOS WRTVRM - Writes data in VRAM
	ld hl,03aabh		;66fb
	ld a,c			;66fe
	jp 0004dh		;66ff   ; BIOS WRTVRM - Writes data in VRAM
L_6702:
	ld a,(0e338h)		;6702
	cp 002h		;6705
	jr z,L_6733		;6707
	ld a,(0e334h)		;6709
	and a			;670c
	jr z,L_6737		;670d
	ld a,(0eb7ch)		;670f
	and 01fh		;6712
	ld (0eb7ch),a		;6714
	call L_6760		;6717
	ld hl,(0eb40h)		;671a
	ld bc,00075h		;671d
	and a			;6720
	sbc hl,bc		;6721
	jr nz,L_672A		;6723
	ld hl,0eb5bh		;6725
	set 4,(hl)		;6728
L_672A:
	ld ix,0e400h		;672a
	ld c,005h		;672e
	jp 042a0h		;6730
L_6733:
	xor a			;6733
	ld (0e3aeh),a		;6734
L_6737:
	ld a,(0e338h)		;6737
	ld de,067e3h		;673a
	call 043a4h		;673d
	ld (0eb40h),de		;6740
	ld a,(0e338h)		;6744
	dec a			;6747
	jr z,L_6760		;6748
	ld hl,0eb5bh		;674a
	set 1,(hl)		;674d
	set 0,(hl)		;674f
	ld hl,0eb5dh		;6751
	set 4,(hl)		;6754
	ld hl,0eb5eh		;6756
	set 1,(hl)		;6759
	ld hl,0eb6ah		;675b
	set 1,(hl)		;675e
L_6760:
	ld a,008h		;6760
	ld (0e351h),a		;6762
	xor a			;6765
	ld (0e007h),a		;6766
	ld (0e380h),a		;6769
	ld (0e3afh),a		;676c
	call L_7112		;676f
	call 043e9h		;6772
	call 042ach		;6775
	xor a			;6778
	ld (0e338h),a		;6779
	ld (0e334h),a		;677c
L_677F:
	xor a			;677f
	ld (0e382h),a		;6780
	ld (0e337h),a		;6783
	call 045e1h		;6786
	call 058ffh		;6789
	call 058d4h		;678c
	call 050ebh		;678f
	call 042b5h		;6792
	call 047c6h		;6795
	call 0482fh		;6798
	call 04a8ch		;679b
	call 0514bh		;679e
	call 042beh		;67a1
	call 042c7h		;67a4
	call 0443dh		;67a7
	call L_771F		;67aa
	call 042d0h		;67ad
	call 042d9h		;67b0
	call 08947h		;67b3
	call 05e5fh		;67b6
	call 0452dh		;67b9
	ld a,003h		;67bc
	ld (0e8a3h),a		;67be
	call 0567ah		;67c1
	call 056dbh		;67c4
	ret			;67c7
L_67C8:
	call 058d4h		;67c8
	call 047c6h		;67cb
	call 0482fh		;67ce
	call 0514bh		;67d1
	call 042beh		;67d4
	call 042d9h		;67d7
	call L_771F		;67da
	call L_7679		;67dd
	jp 05e5fh		;67e0

; ----------------------------------------------------------------------
; DATOS resto_67E3: lo apuntan con el banco puesto p01:673A (0x67E3); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:673A (6 bytes)
;   0x67e3..0x67e9  (6 bytes)
DATA_resto_67E3:
	defb 010h,001h,079h,000h,0d0h,000h	; 67e3

; ======================================================================
; CODIGO 0x67e9..0x67ef  (6 bytes)
; ======================================================================


L_67E9:
	ld a,(0e351h)		;67e9
	call 040abh		;67ec

; ----------------------------------------------------------------------
; DATOS saltos_67EF: tabla de 9 palabras del despachador (call 0x408D en
;   0x67EC); lo leen L_40AB (18 bytes)
;   0x67ef..0x6801  (18 bytes)
DATA_saltos_67EF:
	defb 001h,068h	; 67ef
	defb 01ah,068h	; 67f1
	defb 088h,069h	; 67f3
	defb 0a3h,069h	; 67f5
	defb 0abh,069h	; 67f7
	defb 01ah,068h	; 67f9
	defb 088h,069h	; 67fb
	defb 0c4h,069h	; 67fd
	defb 0a3h,069h	; 67ff

; ======================================================================
; CODIGO 0x6801..0x6ab2  (689 bytes)
; ======================================================================


L_6801:
	call L_69DD		;6801
	ld hl,06abbh		;6804
	ld de,0ed44h		;6807
	ld bc,00004h		;680a
	ldir		;680d
	ld hl,06ac4h		;680f
	ld bc,0000ah		;6812
	ldir		;6815
	jp L_696F		;6817
L_681A:
	ld hl,0ed56h		;681a
	ld a,(0e353h)		;681d
	cp 004h		;6820
	jr z,L_6834		;6822
	ld e,a			;6824
	ld d,000h		;6825
	add hl,de			;6827
	ld a,(0e352h)		;6828
	inc a			;682b
	ld (0e352h),a		;682c
	and 008h		;682f
	rlca			;6831
	rlca			;6832
	ld (hl),a			;6833
L_6834:
	ld a,(0e008h)		;6834
	or a			;6837
	ld hl,0e357h		;6838
	jr nz,L_6848		;683b
	ld a,(0e009h)		;683d
	and 00fh		;6840
	jr z,L_6848		;6842
	dec (hl)			;6844
	jp nz,L_6A87		;6845
L_6848:
	ld (hl),00ah		;6848
	bit 5,a		;684a
	ld b,a			;684c
	jr z,L_688F		;684d
	ld a,(0e353h)		;684f
	or a			;6852
	jr z,L_688E		;6853
	ld hl,0ed56h		;6855
	ld d,000h		;6858
	ld e,a			;685a
	add hl,de			;685b
	cp 004h		;685c
	ccf			;685e
	dec a			;685f
	ld (0e353h),a		;6860
	ld bc,00020h		;6863
	jr c,L_6869		;6866
	ld (hl),c			;6868
L_6869:
	inc c			;6869
	or a			;686a
	sbc hl,bc		;686b
	ld a,(0e354h)		;686d
	dec a			;6870
	ld e,a			;6871
	ld (0e354h),a		;6872
	ld (hl),b			;6875
	call L_6979		;6876
	ld a,(hl)			;6879
	sub 003h		;687a
	cp 002h		;687c
	ld (hl),b			;687e
	jp nc,L_6A87		;687f
	ld a,(0e354h)		;6882
	dec a			;6885
	ld (0e354h),a		;6886
	dec hl			;6889
	ld (hl),b			;688a
	jp L_6A87		;688b
L_688E:
	ld a,b			;688e
L_688F:
	bit 4,a		;688f
	jr z,L_68E6		;6891
	ld hl,(0e355h)		;6893
	inc h			;6896
	call L_69CA		;6897
	ld a,(0e353h)		;689a
	ld e,a			;689d
	ld b,(hl)			;689e
	inc hl			;689f
	ld a,(hl)			;68a0
	or a			;68a1
	ld d,000h		;68a2
	jr z,L_68AC		;68a4
	call 045bfh		;68a6
	jp L_6960		;68a9
L_68AC:
	ld a,e			;68ac
	cp 004h		;68ad
	jr z,L_68E6		;68af
	inc a			;68b1
	ld (0e353h),a		;68b2
	ld a,b			;68b5
	dec hl			;68b6
	ld bc,00020h		;68b7
	or a			;68ba
	sbc hl,bc		;68bb
	ld b,a			;68bd
	ld c,(hl)			;68be
	ld hl,0ed56h		;68bf
	add hl,de			;68c2
	ld (hl),b			;68c3
	ld a,c			;68c4
	ld bc,00020h		;68c5
	or a			;68c8
	sbc hl,bc		;68c9
	ld (hl),a			;68cb
	add hl,bc			;68cc
	ld b,(hl)			;68cd
	ld c,a			;68ce
	ld a,(0e354h)		;68cf
	ld e,a			;68d2
	call L_6979		;68d3
	ld (hl),b			;68d6
	ld a,c			;68d7
	sub 003h		;68d8
	cp 002h		;68da
	jr nc,L_68E1		;68dc
	inc hl			;68de
	ld (hl),c			;68df
	inc e			;68e0
L_68E1:
	ld a,e			;68e1
	inc a			;68e2
	ld (0e354h),a		;68e3
L_68E6:
	ld hl,(0e355h)		;68e6
	call L_69CA		;68e9
	ld a,(0e009h)		;68ec
	and 00fh		;68ef
	jp z,L_6A87		;68f1
	ld c,000h		;68f4
	ld a,(0e009h)		;68f6
	ld (hl),000h		;68f9
	ld b,002h		;68fb
	rra			;68fd
	jr c,L_691F		;68fe
	rra			;6900
	jr c,L_692D		;6901
	rra			;6903
	ld a,(0e356h)		;6904
	jr c,L_6914		;6907
	cp 017h		;6909
	jp z,L_693B		;690b
	add a,b			;690e
	ld (0e356h),a		;690f
	jr L_6939		;6912
L_6914:
	cp 005h		;6914
	jp z,L_693B		;6916
	sub b			;6919
	ld (0e356h),a		;691a
	jr L_6939		;691d
L_691F:
	ld a,(0e355h)		;691f
	cp 006h		;6922
	jp z,L_693B		;6924
	sub b			;6927
	ld (0e355h),a		;6928
	jr L_6939		;692b
L_692D:
	ld a,(0e355h)		;692d
	cp 014h		;6930
	jp z,L_693B		;6932
	add a,b			;6935
	ld (0e355h),a		;6936
L_6939:
	ld c,001h		;6939
L_693B:
	ld hl,(0e355h)		;693b
	push bc			;693e
	call L_69CA		;693f
	pop bc			;6942
	ld a,(hl)			;6943
	or a			;6944
	jr z,L_6953		;6945
	ld c,000h		;6947
	ld a,(0e356h)		;6949
	sub 002h		;694c
	ld (0e356h),a		;694e
	dec hl			;6951
	dec hl			;6952
L_6953:
	ld (hl),03fh		;6953
	ld a,c			;6955
	or a			;6956
	jp z,L_6A87		;6957
	call 04588h		;695a
	jp L_6A87		;695d
L_6960:
	ld a,(0e354h)		;6960
	ld e,a			;6963
	ld b,0ffh		;6964
	call L_6979		;6966
	ld (hl),b			;6969
	ld a,01eh		;696a
	ld (0e352h),a		;696c
L_696F:
	ld a,(0e351h)		;696f
	inc a			;6972
	ld (0e351h),a		;6973
	jp L_6A87		;6976
L_6979:
	ld a,(0e351h)		;6979
	cp 001h		;697c
	ld hl,0eb00h		;697e
	jr z,L_6986		;6981
	ld hl,0eb09h		;6983
L_6986:
	add hl,de			;6986
	ret			;6987
L_6988:
	ld a,(0e352h)		;6988
	dec a			;698b
	ld (0e352h),a		;698c
	ret nz			;698f
	ld hl,0ed00h		;6990
	ld (hl),a			;6993
	ld de,0ed01h		;6994
	ld bc,002ffh		;6997
	ldir		;699a
	ld a,01eh		;699c
	ld (0e352h),a		;699e
	jr L_696F		;69a1
L_69A3:
	ld hl,0e352h		;69a3
	dec (hl)			;69a6
	ret nz			;69a7
	jp L_696F		;69a8
L_69AB:
	call L_69DD		;69ab
	ld hl,06abfh		;69ae
	ld de,0ed44h		;69b1
	ld bc,00005h		;69b4
	ldir		;69b7
	ld hl,06ac4h		;69b9
	ld bc,0000ah		;69bc
	ldir		;69bf
	jp L_696F		;69c1
L_69C4:
	ld a,001h		;69c4
	ld (0e333h),a		;69c6
	ret			;69c9
L_69CA:
	ld a,l			;69ca
	ld l,h			;69cb
	and 01fh		;69cc
	rrca			;69ce
	rrca			;69cf
	rrca			;69d0
	ld h,a			;69d1
	and 0f0h		;69d2
	add a,l			;69d4
	ld l,a			;69d5
	ld a,h			;69d6
	and 00fh		;69d7
	add a,0edh		;69d9
	ld h,a			;69db
	ret			;69dc
L_69DD:
	xor a			;69dd
	ld (0e352h),a		;69de
	ld hl,00000h		;69e1
	ld (0e353h),hl		;69e4
	ld hl,00506h		;69e7
	ld (0e355h),hl		;69ea
	ld a,00ah		;69ed
	ld (0e357h),a		;69ef
	ld hl,0edc6h		;69f2
	ld a,040h		;69f5
	ld c,024h		;69f7
	call L_6AA2		;69f9
	ld a,066h		;69fc
	ld c,006h		;69fe
	call L_6AA4		;6a00
	ld a,063h		;6a03
	ld c,004h		;6a05
	call L_6AA2		;6a07
	ld a,06bh		;6a0a
	ld c,004h		;6a0c
	call L_6AA4		;6a0e
	ld a,0a3h		;6a11
	ld c,005h		;6a13
	call L_6AA4		;6a15
	ld a,045h		;6a18
	ld c,010h		;6a1a
	call L_6AA2		;6a1c
	ld a,059h		;6a1f
	ld c,006h		;6a21
	call L_6AA4		;6a23
	ld a,059h		;6a26
	ld c,006h		;6a28
	call L_6AA2		;6a2a
	ld hl,0eee6h		;6a2d
	ld a,003h		;6a30
	ld c,015h		;6a32
	call L_6A93		;6a34
	ld a,004h		;6a37
	ld c,006h		;6a39
	call L_6A93		;6a3b
	ld hl,0edc5h		;6a3e
	ld (hl),03fh		;6a41
	ld hl,02020h		;6a43
	ld (0ed56h),hl		;6a46
	ld (0ed58h),hl		;6a49
	ld hl,06ab2h		;6a4c
	ld de,0ef90h		;6a4f
	ld bc,00009h		;6a52
	ldir		;6a55
	ld hl,0ed84h		;6a57
	ld (hl),00dh		;6a5a
	inc hl			;6a5c
	ld de,0efc4h		;6a5d
	ld a,00bh		;6a60
	ld (de),a			;6a62
	inc de			;6a63
	ld a,00fh		;6a64
	ld b,015h		;6a66
L_6A68:
	ld (hl),a			;6a68
	inc hl			;6a69
	ld (de),a			;6a6a
	inc de			;6a6b
	djnz L_6A68		;6a6c
	dec a			;6a6e
	ld (hl),a			;6a6f
	ld a,00ch		;6a70
	ld (de),a			;6a72
	ld hl,0eda4h		;6a73
	ld a,01bh		;6a76
	ld b,011h		;6a78
L_6A7A:
	ld (hl),a			;6a7a
	ld de,00016h		;6a7b
	add hl,de			;6a7e
	ld (hl),a			;6a7f
	ld de,0000ah		;6a80
	add hl,de			;6a83
	djnz L_6A7A		;6a84
	ret			;6a86
L_6A87:
	ld hl,03800h		;6a87
	ld de,0ed00h		;6a8a
	ld bc,00300h		;6a8d
	jp 05941h		;6a90
L_6A93:
	ld b,00ah		;6a93
L_6A95:
	dec c			;6a95
	ret z			;6a96
	ld (hl),a			;6a97
	inc hl			;6a98
	inc hl			;6a99
	djnz L_6A95		;6a9a
	ld de,0002ch		;6a9c
	add hl,de			;6a9f
	jr L_6A93		;6aa0
L_6AA2:
	ld b,00ah		;6aa2
L_6AA4:
	dec c			;6aa4
	ret z			;6aa5
	ld (hl),a			;6aa6
	inc a			;6aa7
	inc hl			;6aa8
	inc hl			;6aa9
	djnz L_6AA4		;6aaa
	ld de,0002ch		;6aac
	add hl,de			;6aaf
	jr L_6AA2		;6ab0

; ----------------------------------------------------------------------
; DATOS resto_6AB2: lo apuntan con el banco puesto p01:6A4C (0x6AB2), p01:6804
;   (0x6ABB), p01:69AE (0x6ABF), p01:680F (0x6AC4), p01:69B9 (0x6AC4); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:6A4C, p01:6804, p01:69AE, p01:680F, p01:69B9 (28 bytes)
;   0x6ab2..0x6ace  (28 bytes)
DATA_resto_6AB2:
	defb 020h,000h,001h,000h,000h,000h,044h,06bh,068h,040h,054h,04fh,058h,04ch,046h,054h	; 6ab2   .....Dkh@TOXLFT
	defb 0bah,058h,0d1h,0b6h,06ch,0d2h,069h,052h,0d3h,04ah,041h,006h	; 6ac2  .X..l.iR.JA.

; ======================================================================
; CODIGO 0x6ace..0x6ad4  (6 bytes)
; ======================================================================


L_6ACE:
	ld a,(0e38eh)		;6ace
	call 040abh		;6ad1

; ----------------------------------------------------------------------
; DATOS saltos_6AD4: tabla de 6 palabras del despachador (call 0x408D en
;   0x6AD1); lo leen L_40AB (12 bytes)
;   0x6ad4..0x6ae0  (12 bytes)
DATA_saltos_6AD4:
	defb 0e5h,06ah	; 6ad4
	defb 024h,06bh	; 6ad6
	defb 051h,06bh	; 6ad8
	defb 027h,06ch	; 6ada
	defb 0b7h,06ch	; 6adc
	defb 047h,06dh	; 6ade

; ======================================================================
; CODIGO 0x6ae0..0x6b4d  (109 bytes)
; ======================================================================


L_6AE0:
	ld hl,0e38eh		;6ae0
	inc (hl)			;6ae3
	ret			;6ae4
L_6AE5:
	call 058bfh		;6ae5
	ld de,06e97h		;6ae8
	call 059c2h		;6aeb
	ld ix,00001h		;6aee
	ld a,(0ffa7h)		;6af2
	cp 0c9h		;6af5
	ld de,06e89h		;6af7
	jr z,L_6B07		;6afa
	inc ix		;6afc
	ld de,06e7eh		;6afe
	call 059c2h		;6b01
	ld de,06e90h		;6b04
L_6B07:
	ld a,(0f0f9h)		;6b07
	and a			;6b0a
	jr z,L_6B12		;6b0b
	inc ix		;6b0d
	call 059c2h		;6b0f
L_6B12:
	push ix		;6b12
	pop hl			;6b14
	ld a,l			;6b15
	inc a			;6b16
	ld (0e8a5h),a		;6b17
	xor a			;6b1a
	ld (0e8a4h),a		;6b1b
	call L_6E03		;6b1e
	jp L_6AE0		;6b21
L_6B24:
	call L_6DDC		;6b24
	ld a,(0e008h)		;6b27
	and 010h		;6b2a
	ret z			;6b2c
	xor a			;6b2d
	ld (0e398h),a		;6b2e
	ld a,(0e8a4h)		;6b31
	ld hl,06b4dh		;6b34
	call 040a1h		;6b37
	ld a,(hl)			;6b3a
	ld c,a			;6b3b
	cp 003h		;6b3c
	jr nz,L_6B48		;6b3e
	ld a,(0ffa7h)		;6b40
	cp 0c9h		;6b43
	jr nz,L_6B48		;6b45
	inc c			;6b47
L_6B48:
	ld a,c			;6b48
	ld (0e38eh),a		;6b49
	ret			;6b4c

; ----------------------------------------------------------------------
; DATOS resto_6B4D: lo apuntan con el banco puesto p01:6B34 (0x6B4D); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:6B34 (4 bytes)
;   0x6b4d..0x6b51  (4 bytes)
DATA_resto_6B4D:
	defb 005h,002h,003h,004h	; 6b4d

; ======================================================================
; CODIGO 0x6b51..0x6b57  (6 bytes)
; ======================================================================


L_6B51:
	ld a,(0e398h)		;6b51
	call 040abh		;6b54

; ----------------------------------------------------------------------
; DATOS saltos_6B57: tabla de 7 palabras del despachador (call 0x408D en
;   0x6B54); lo leen L_40AB (14 bytes)
;   0x6b57..0x6b65  (14 bytes)
DATA_saltos_6B57:
	defb 06ah,06bh	; 6b57
	defb 076h,06bh	; 6b59
	defb 08bh,06bh	; 6b5b
	defb 0e5h,06bh	; 6b5d
	defb 0fch,06bh	; 6b5f
	defb 004h,06ch	; 6b61
	defb 01dh,06ch	; 6b63

; ======================================================================
; CODIGO 0x6b65..0x6c2d  (200 bytes)
; ======================================================================


L_6B65:
	ld hl,0e398h		;6b65
	inc (hl)			;6b68
	ret			;6b69
L_6B6A:
	call 058bfh		;6b6a
	ld de,06f2eh		;6b6d
	call 059c2h		;6b70
	jp L_6B65		;6b73
L_6B76:
	ld a,(0e008h)		;6b76
	and 050h		;6b79
	ret z			;6b7b
	call 058bfh		;6b7c
	call 0457eh		;6b7f
	ld de,06fb1h		;6b82
	call 059c2h		;6b85
	jp L_6B65		;6b88
L_6B8B:
	call 000e1h		;6b8b   ; BIOS TAPION - Reads the header block after turning the cassette motor on
	jr c,L_6C04		;6b8e
	ld b,00ah		;6b90
L_6B92:
	push bc			;6b92
	call 000e4h		;6b93   ; BIOS TAPIN - Reads data from the tape
	pop bc			;6b96
	jr c,L_6C04		;6b97
	cp 0eah		;6b99
	jr nz,L_6B8B		;6b9b
	djnz L_6B92		;6b9d
	ld b,006h		;6b9f
	ld hl,0be03h		;6ba1
L_6BA4:
	push bc			;6ba4
	push hl			;6ba5
	call 000e4h		;6ba6   ; BIOS TAPIN - Reads data from the tape
	pop hl			;6ba9
	pop bc			;6baa
	jr c,L_6C04		;6bab
	cp (hl)			;6bad
	jr nz,L_6C04		;6bae
	inc hl			;6bb0
	djnz L_6BA4		;6bb1
	call 000e1h		;6bb3   ; BIOS TAPION - Reads the header block after turning the cassette motor on
	jr c,L_6C04		;6bb6
	ld hl,0eb40h		;6bb8
	ld bc,0003eh		;6bbb
L_6BBE:
	push bc			;6bbe
	push hl			;6bbf
	call 000e4h		;6bc0   ; BIOS TAPIN - Reads data from the tape
	pop hl			;6bc3
	pop bc			;6bc4
	jr c,L_6C04		;6bc5
	ld (hl),a			;6bc7
	inc hl			;6bc8
	dec bc			;6bc9
	ld a,b			;6bca
	or c			;6bcb
	jr nz,L_6BBE		;6bcc
	call 000e4h		;6bce   ; BIOS TAPIN - Reads data from the tape
	jr c,L_6C04		;6bd1
	ld (0e390h),a		;6bd3
	call 0be3fh		;6bd6
	ld hl,0e390h		;6bd9
	cp (hl)			;6bdc
	jr nz,L_6C04		;6bdd
	call 000f0h		;6bdf   ; BIOS TAPOOF - Stops writing on the tape
	jp L_6B65		;6be2
L_6BE5:
	call L_6E36		;6be5
	call L_6E5B		;6be8
	call 058bfh		;6beb
	ld de,06fceh		;6bee
	call 059c2h		;6bf1
	ld a,040h		;6bf4
	ld (0e004h),a		;6bf6
	jp L_6B65		;6bf9
L_6BFC:
	ld hl,0e004h		;6bfc
	dec (hl)			;6bff
	ret nz			;6c00
	jp L_6DCE		;6c01
L_6C04:
	call 000f0h		;6c04   ; BIOS TAPOOF - Stops writing on the tape
	ld a,005h		;6c07
	ld (0e398h),a		;6c09
	call 058bfh		;6c0c
	ld de,06fedh		;6c0f
	call 059c2h		;6c12
	ld a,040h		;6c15
	ld (0e004h),a		;6c17
	jp L_6B65		;6c1a
L_6C1D:
	ld hl,0e004h		;6c1d
	dec (hl)			;6c20
	ret nz			;6c21
	xor a			;6c22
	ld (0e38eh),a		;6c23
	ret			;6c26
L_6C27:
	ld a,(0e398h)		;6c27
	call 040abh		;6c2a

; ----------------------------------------------------------------------
; DATOS saltos_6C2D: tabla de 7 palabras del despachador (call 0x408D en
;   0x6C2A); lo leen L_40AB (14 bytes)
;   0x6c2d..0x6c3b  (14 bytes)
DATA_saltos_6C2D:
	defb 03bh,06ch	; 6c2d
	defb 047h,06ch	; 6c2f
	defb 060h,06ch	; 6c31
	defb 06dh,06ch	; 6c33
	defb 08fh,06ch	; 6c35
	defb 097h,06ch	; 6c37
	defb 0adh,06ch	; 6c39

; ======================================================================
; CODIGO 0x6c3b..0x6cbd  (130 bytes)
; ======================================================================


L_6C3B:
	call 058bfh		;6c3b
	ld de,06f6fh		;6c3e
	call 059c2h		;6c41
	jp L_6B65		;6c44
L_6C47:
	ld a,(0e008h)		;6c47
	and 050h		;6c4a
	ret z			;6c4c
	call 058bfh		;6c4d
	call 0457eh		;6c50
	ld de,06fb1h		;6c53
	call 059c2h		;6c56
	xor a			;6c59
	ld (0e38fh),a		;6c5a
	jp L_6B65		;6c5d
L_6C60:
	call 0bc90h		;6c60
	ld a,(0e38fh)		;6c63
	cp 002h		;6c66
	jr z,L_6C97		;6c68
	jp L_6B65		;6c6a
L_6C6D:
	ld hl,0e03ah		;6c6d
	ld de,0eb40h		;6c70
	ld bc,0003eh		;6c73
	ldir		;6c76
	call L_6E36		;6c78
	call L_6E5B		;6c7b
	call 058bfh		;6c7e
	ld de,06fceh		;6c81
	call 059c2h		;6c84
	ld a,040h		;6c87
	ld (0e004h),a		;6c89
	jp L_6B65		;6c8c
L_6C8F:
	ld hl,0e004h		;6c8f
	dec (hl)			;6c92
	ret nz			;6c93
	jp L_6DCE		;6c94
L_6C97:
	ld a,005h		;6c97
	ld (0e398h),a		;6c99
	call 058bfh		;6c9c
	ld de,06fedh		;6c9f
	call 059c2h		;6ca2
	ld a,040h		;6ca5
	ld (0e004h),a		;6ca7
	jp L_6B65		;6caa
L_6CAD:
	ld hl,0e004h		;6cad
	dec (hl)			;6cb0
	ret nz			;6cb1
	xor a			;6cb2
	ld (0e38eh),a		;6cb3
	ret			;6cb6
L_6CB7:
	ld a,(0e398h)		;6cb7
	call 040abh		;6cba

; ----------------------------------------------------------------------
; DATOS saltos_6CBD: tabla de 7 palabras del despachador (call 0x408D en
;   0x6CBA); lo leen L_40AB (14 bytes)
;   0x6cbd..0x6ccb  (14 bytes)
DATA_saltos_6CBD:
	defb 0cbh,06ch	; 6cbd
	defb 0d7h,06ch	; 6cbf
	defb 0f0h,06ch	; 6cc1
	defb 0fdh,06ch	; 6cc3
	defb 01fh,06dh	; 6cc5
	defb 027h,06dh	; 6cc7
	defb 03dh,06dh	; 6cc9

; ======================================================================
; CODIGO 0x6ccb..0x6d4d  (130 bytes)
; ======================================================================


L_6CCB:
	call 058bfh		;6ccb
	ld de,0701ch		;6cce
	call 059c2h		;6cd1
	jp L_6B65		;6cd4
L_6CD7:
	ld a,(0e008h)		;6cd7
	and 050h		;6cda
	ret z			;6cdc
	call 058bfh		;6cdd
	call 0457eh		;6ce0
	ld de,06fb1h		;6ce3
	call 059c2h		;6ce6
	xor a			;6ce9
	ld (0e38fh),a		;6cea
	jp L_6B65		;6ced
L_6CF0:
	call L_6026		;6cf0
	ld a,(0e38fh)		;6cf3
	cp 002h		;6cf6
	jr z,L_6D27		;6cf8
	jp L_6B65		;6cfa
L_6CFD:
	ld hl,0e8e0h		;6cfd
	ld de,0eb40h		;6d00
	ld bc,0003eh		;6d03
	ldir		;6d06
	call L_6E36		;6d08
	call L_6E5B		;6d0b
	call 058bfh		;6d0e
	ld de,06fceh		;6d11
	call 059c2h		;6d14
	ld a,040h		;6d17
	ld (0e004h),a		;6d19
	jp L_6B65		;6d1c
L_6D1F:
	ld hl,0e004h		;6d1f
	dec (hl)			;6d22
	ret nz			;6d23
	jp L_6DCE		;6d24
L_6D27:
	ld a,005h		;6d27
	ld (0e398h),a		;6d29
	call 058bfh		;6d2c
	ld de,06fedh		;6d2f
	call 059c2h		;6d32
	ld a,040h		;6d35
	ld (0e004h),a		;6d37
	jp L_6B65		;6d3a
L_6D3D:
	ld hl,0e004h		;6d3d
	dec (hl)			;6d40
	ret nz			;6d41
	xor a			;6d42
	ld (0e38eh),a		;6d43
	ret			;6d46
L_6D47:
	ld a,(0e398h)		;6d47
	call 040abh		;6d4a

; ----------------------------------------------------------------------
; DATOS saltos_6D4D: tabla de 6 palabras del despachador (call 0x408D en
;   0x6D4A); lo leen L_40AB (12 bytes)
;   0x6d4d..0x6d59  (12 bytes)
DATA_saltos_6D4D:
	defb 059h,06dh	; 6d4d
	defb 06ch,06dh	; 6d4f
	defb 07bh,06dh	; 6d51
	defb 092h,06dh	; 6d53
	defb 09ah,06dh	; 6d55
	defb 0b1h,06dh	; 6d57

; ======================================================================
; CODIGO 0x6d59..0x6e2e  (213 bytes)
; ======================================================================


L_6D59:
	call 058bfh		;6d59
	ld de,07031h		;6d5c
	call 059c2h		;6d5f
	xor a			;6d62
	ld (0e38fh),a		;6d63
	ld (0e3b2h),a		;6d66
	jp L_6B65		;6d69
L_6D6C:
	call 04389h		;6d6c
	ld a,(0e38fh)		;6d6f
	and a			;6d72
	ret z			;6d73
	cp 002h		;6d74
	jr z,L_6D9A		;6d76
	jp L_6B65		;6d78
L_6D7B:
	call L_6E36		;6d7b
	call L_6E5B		;6d7e
	call 058bfh		;6d81
	ld de,06fceh		;6d84
	call 059c2h		;6d87
	ld a,040h		;6d8a
	ld (0e004h),a		;6d8c
	jp L_6B65		;6d8f
L_6D92:
	ld hl,0e004h		;6d92
	dec (hl)			;6d95
	ret nz			;6d96
	jp L_6DCE		;6d97
L_6D9A:
	ld de,07031h		;6d9a
	call 059d9h		;6d9d
	ld de,07054h		;6da0
	call 059c2h		;6da3
	ld a,080h		;6da6
	ld (0e004h),a		;6da8
	ld a,005h		;6dab
	ld (0e398h),a		;6dad
	ret			;6db0
L_6DB1:
	ld hl,0e004h		;6db1
	dec (hl)			;6db4
	ret nz			;6db5
	ld de,07054h		;6db6
	call 059d9h		;6db9
	ld de,07031h		;6dbc
	call 059c2h		;6dbf
	xor a			;6dc2
	ld (0e38fh),a		;6dc3
	inc a			;6dc6
	ld (0e3b2h),a		;6dc7
	ld (0e398h),a		;6dca
	ret			;6dcd
L_6DCE:
	ld a,(0eb7ch)		;6dce
	and 00fh		;6dd1
	ld (0eb7ch),a		;6dd3
	ld a,001h		;6dd6
	ld (0e333h),a		;6dd8
	ret			;6ddb
L_6DDC:
	ld hl,0e8a4h		;6ddc
	ld a,(0e008h)		;6ddf
	and 003h		;6de2
	ret z			;6de4
	push af			;6de5
	call 04588h		;6de6
	pop af			;6de9
	and 001h		;6dea
	jr z,L_6DFA		;6dec
	dec (hl)			;6dee
	ld a,(hl)			;6def
	inc a			;6df0
	jr nz,L_6E03		;6df1
	ld a,(0e8a5h)		;6df3
	dec a			;6df6
	ld (hl),a			;6df7
	jr L_6E03		;6df8
L_6DFA:
	inc (hl)			;6dfa
	ld a,(0e8a5h)		;6dfb
	cp (hl)			;6dfe
	jr nz,L_6E03		;6dff
	xor a			;6e01
	ld (hl),a			;6e02
L_6E03:
	xor a			;6e03
	ld hl,039ebh		;6e04
	call 0004dh		;6e07   ; BIOS WRTVRM - Writes data in VRAM
	xor a			;6e0a
	ld hl,03a2bh		;6e0b
	call 0004dh		;6e0e   ; BIOS WRTVRM - Writes data in VRAM
	xor a			;6e11
	ld hl,03a6bh		;6e12
	call 0004dh		;6e15   ; BIOS WRTVRM - Writes data in VRAM
	xor a			;6e18
	ld hl,03aabh		;6e19
	call 0004dh		;6e1c   ; BIOS WRTVRM - Writes data in VRAM
	ld a,(0e8a4h)		;6e1f
	ld de,06e2eh		;6e22
	call 043a4h		;6e25
	ex de,hl			;6e28
	ld a,03fh		;6e29
	jp 0004dh		;6e2b   ; BIOS WRTVRM - Writes data in VRAM

; ----------------------------------------------------------------------
; DATOS resto_6E2E: lo apuntan con el banco puesto p01:6E22 (0x6E2E); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:6E22 (8 bytes)
;   0x6e2e..0x6e36  (8 bytes)
DATA_resto_6E2E:
	defb 0ebh,039h,02bh,03ah,06bh,03ah,0abh,03ah	; 6e2e  .9+:k:.:

; ======================================================================
; CODIGO 0x6e36..0x6e7e  (72 bytes)
; ======================================================================


L_6E36:
	ld hl,0eb00h		;6e36
	ld de,0eb42h		;6e39
	call L_6E45		;6e3c
	ld hl,0eb09h		;6e3f
	ld de,0eb4ah		;6e42
L_6E45:
	ld b,008h		;6e45
L_6E47:
	ld a,(de)			;6e47
	ld (hl),a			;6e48
	inc hl			;6e49
	inc de			;6e4a
	djnz L_6E47		;6e4b
	ld b,008h		;6e4d
L_6E4F:
	dec hl			;6e4f
	ld a,(hl)			;6e50
	and a			;6e51
	jr nz,L_6E57		;6e52
	djnz L_6E4F		;6e54
	dec hl			;6e56
L_6E57:
	inc hl			;6e57
	ld (hl),0ffh		;6e58
	ret			;6e5a
L_6E5B:
	ld de,0eb53h		;6e5b
	ld hl,0e9d0h		;6e5e
	ld c,003h		;6e61
L_6E63:
	ld a,(de)			;6e63
	inc de			;6e64
	ld b,008h		;6e65
L_6E67:
	rla			;6e67
	jr nc,L_6E6C		;6e68
	set 0,(hl)		;6e6a
L_6E6C:
	inc hl			;6e6c
	inc hl			;6e6d
	djnz L_6E67		;6e6e
	dec c			;6e70
	jr nz,L_6E63		;6e71
	ld a,(0eb56h)		;6e73
	and 00eh		;6e76
	ld hl,0e9deh		;6e78
	or (hl)			;6e7b
	ld (hl),a			;6e7c
	ret			;6e7d

; ----------------------------------------------------------------------
; DATOS vram_6E7E: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6B01 (11 bytes)
;   0x6e7e..0x6e89  (11 bytes)
DATA_vram_6E7E:
	defb 04dh,03ah,003h,0feh,06dh,03ah,082h,0a8h,07ch,077h,0ffh	; 6e7e  M:..m:..|w.

; ----------------------------------------------------------------------
; DATOS resto_6E89: lo apuntan con el banco puesto p01:6AF7 (0x6E89); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:6AF7 (7 bytes)
;   0x6e89..0x6e90  (7 bytes)
DATA_resto_6E89:
	defb 06dh,03ah,033h,032h,021h,02dh,0ffh	; 6e89

; ----------------------------------------------------------------------
; DATOS vram_6E90: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6B0F (7 bytes)
;   0x6e90..0x6e97  (7 bytes)
DATA_vram_6E90:
	defb 0adh,03ah,033h,032h,021h,02dh,0ffh	; 6e90

; ----------------------------------------------------------------------
; DATOS vram_6E97: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6AEB (114 bytes)
;   0x6e97..0x6f09  (114 bytes)
DATA_vram_6E97:
	defb 00fh,03ah,004h,0feh,02dh,03ah,082h,020h,08bh,0feh,0cdh,039h,004h,000h,000h,000h	; 6e97  .:..-:. ...9....
	defb 003h,0feh,0edh,039h,089h,07ch,09bh,020h,083h,0feh,0abh,038h,003h,000h,000h,000h	; 6ea7  ...9.|. ...8....
	defb 003h,000h,000h,000h,000h,000h,003h,0feh,0c6h,038h,092h,097h,000h,03bh,0c6h,045h	; 6eb7  .........8.....E
	defb 000h,07dh,020h,08bh,06ch,000h,051h,045h,04ah,053h,068h,062h,058h,058h,0feh,0edh	; 6ec7  .} .l.QEJShbXX..
	defb 038h,003h,0feh,009h,039h,075h,09dh,083h,077h,052h,04ch,006h,000h,040h,054h,04fh	; 6ed7  8...9u..wRL..@TO
	defb 058h,0feh,02bh,039h,003h,000h,000h,000h,000h,000h,000h,003h,000h,003h,0feh,049h	; 6ee7  X.+9...........I
	defb 039h,07dh,020h,08bh,05dh,042h,05dh,042h,059h,000h,053h,069h,052h,04ch,045h,002h	; 6ef7  9} .]B]BY.SiRLE.
	defb 03ch,0ffh	; 6f07

; ----------------------------------------------------------------------
; DATOS resto_6F09: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (37 bytes)
;   0x6f09..0x6f2e  (37 bytes)
DATA_resto_6F09:
	defb 0b8h,038h,003h,0feh,0c6h,038h,092h,097h,000h,03bh,040h,054h,04fh,058h,000h,091h	; 6f09  .8...8....@TOX..
	defb 092h,04bh,04fh,000h,040h,041h,049h,053h,059h,06ch,0feh,009h,039h,0d2h,069h,052h	; 6f19  .KO.@AISYl..9.iR
	defb 0d3h,04ah,041h,03ch,0ffh	; 6f29

; ----------------------------------------------------------------------
; DATOS vram_6F2E: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6B70 (65 bytes)
;   0x6f2e..0x6f6f  (65 bytes)
DATA_vram_6F2E:
	defb 0ach,038h,004h,0feh,0c6h,038h,092h,097h,000h,03bh,082h,020h,08bh,06ch,000h,07dh	; 6f2e  .8...8..... .l.}
	defb 0afh,083h,04bh,052h,0d3h,04ah,041h,006h,0feh,0e9h,038h,003h,000h,000h,003h,003h	; 6f3e  ..KR.JA...8.....
	defb 000h,003h,0feh,009h,039h,04bh,0a4h,06dh,05ah,045h,000h,052h,046h,04fh,066h,0feh	; 6f4e  ....9K.mZE.RFOf.
	defb 049h,039h,032h,025h,034h,076h,020h,06ch,000h,044h,04bh,052h,0d3h,04ah,041h,03ch	; 6f5e  I92%4v l.DKR.JA<
	defb 0ffh	; 6f6e

; ----------------------------------------------------------------------
; DATOS vram_6F6F: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6C41 (66 bytes)
;   0x6f6f..0x6fb1  (66 bytes)
DATA_vram_6F6F:
	defb 0aah,038h,003h,0feh,0c6h,038h,092h,097h,000h,03bh,082h,0a8h,07ch,077h,06ch,000h	; 6f6f  .8...8......|wl.
	defb 07dh,0afh,083h,04bh,052h,0d3h,04ah,041h,006h,0feh,0e9h,038h,003h,000h,000h,003h	; 6f7f  }..KR.JA...8....
	defb 003h,000h,003h,0feh,009h,039h,04bh,0a4h,06dh,05ah,045h,000h,052h,046h,04fh,066h	; 6f8f  .....9K.mZE.RFOf
	defb 0feh,049h,039h,032h,025h,034h,076h,020h,06ch,000h,044h,04bh,052h,0d3h,04ah,041h	; 6f9f  .I92%4v l.DKR.JA
	defb 03ch,0ffh	; 6faf

; ----------------------------------------------------------------------
; DATOS vram_6FB1: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6CE6 (29 bytes)
;   0x6fb1..0x6fce  (29 bytes)
DATA_vram_6FB1:
	defb 0abh,038h,003h,000h,000h,000h,000h,003h,000h,003h,0feh,0c6h,038h,092h,097h,000h	; 6fb1  .8..........8...
	defb 03bh,04fh,04fh,0b3h,000h,09ah,020h,083h,0deh,052h,04ch,03ch,0ffh	; 6fc1  .OO... ..RL<.

; ----------------------------------------------------------------------
; DATOS vram_6FCE: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6D87 (31 bytes)
;   0x6fce..0x6fed  (31 bytes)
DATA_vram_6FCE:
	defb 0aah,038h,003h,003h,000h,000h,000h,003h,003h,0feh,0c6h,038h,092h,097h,000h,03bh	; 6fce  .8.........8....
	defb 05bh,04bh,000h,09ah,020h,083h,045h,044h,06bh,067h,05eh,04bh,04fh,03ch,0ffh	; 6fde  [K.. .EDkg^KO<.

; ----------------------------------------------------------------------
; DATOS vram_6FED: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6D32 (47 bytes)
;   0x6fed..0x701c  (47 bytes)
DATA_vram_6FED:
	defb 0abh,038h,003h,000h,000h,000h,000h,000h,003h,000h,000h,000h,000h,004h,0feh,0c6h	; 6fed  .8..............
	defb 038h,092h,097h,000h,03bh,04fh,04fh,0b3h,058h,000h,09ah,020h,083h,059h,000h,04bh	; 6ffd  8....OO.X.. .Y.K
	defb 0a6h,059h,041h,055h,0feh,009h,039h,044h,06bh,067h,05eh,04bh,04fh,03ch,0ffh	; 700d  .YAU..9Dkg^KO<.

; ----------------------------------------------------------------------
; DATOS vram_701C: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6CD1 (21 bytes)
;   0x701c..0x7031  (21 bytes)
DATA_vram_701C:
	defb 0c6h,038h,092h,097h,000h,03bh,032h,025h,034h,076h,020h,06ch,000h,044h,04bh,052h	; 701c  .8....2%4v l.DKR
	defb 0d3h,04ah,041h,03ch,0ffh	; 702c

; ----------------------------------------------------------------------
; DATOS vram_7031: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6DBF, p01:6D9D (35 bytes)
;   0x7031..0x7054  (35 bytes)
DATA_vram_7031:
	defb 02ch,038h,004h,000h,000h,000h,003h,000h,000h,000h,000h,000h,003h,0feh,048h,038h	; 7031  ,8............H8
	defb 092h,097h,000h,03bh,089h,07ch,09bh,020h,083h,06ch,041h,069h,052h,047h,04fh,04ah	; 7041  .....|. .lAiRGOJ
	defb 041h,03ch,0ffh	; 7051

; ----------------------------------------------------------------------
; DATOS vram_7054: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p01:6DB9, p01:6DA3 (47 bytes)
;   0x7054..0x7083  (47 bytes)
DATA_vram_7054:
	defb 02bh,038h,003h,000h,000h,000h,000h,000h,003h,000h,000h,000h,000h,004h,0feh,046h	; 7054  +8.............F
	defb 038h,092h,097h,000h,03bh,04fh,04fh,0b3h,058h,000h,09ah,020h,083h,059h,000h,04bh	; 7064  8....OO.X.. .Y.K
	defb 0a6h,059h,041h,055h,0feh,086h,038h,044h,06bh,067h,05eh,04bh,04fh,03ch,0ffh	; 7074  .YAU..8Dkg^KO<.

; ======================================================================
; CODIGO 0x7083..0x70b0  (45 bytes)
; ======================================================================


L_7083:
	ld a,0bfh		;7083
	ld e,a			;7085
	ld (0e2feh),a		;7086
	ld a,007h		;7089
	call 00093h		;708b   ; BIOS WRTPSG - Writes data to PSG-register
	call 0457eh		;708e
	xor a			;7091
	ld (0f0fah),a		;7092
	ld hl,00000h		;7095
	ld bc,04000h		;7098
	xor a			;709b
	call 00056h		;709c   ; BIOS FILVRM - Fills VRAM with value
L_709F:
	ld hl,070b0h		;709f
	ld d,008h		;70a2
	ld c,000h		;70a4
L_70A6:
	ld b,(hl)			;70a6
	call 00047h		;70a7   ; BIOS WRTVDP - Writes data in the VDP-register
	inc hl			;70aa
	inc c			;70ab
	dec d			;70ac
	jr nz,L_70A6		;70ad
	ret			;70af

; ----------------------------------------------------------------------
; DATOS resto_70B0: lo apuntan con el banco puesto p01:709F (0x70B0); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:709F (8 bytes)
;   0x70b0..0x70b8  (8 bytes)
DATA_resto_70B0:
	defb 002h,0e2h,00eh,07fh,007h,076h,003h,0efh	; 70b0  .....v..

; ======================================================================
; CODIGO 0x70b8..0x718e  (214 bytes)
; ======================================================================


L_70B8:
	call L_70C5		;70b8
	ld hl,0e009h		;70bb
L_70BE:
	ld c,(hl)			;70be
	ld (hl),a			;70bf
	xor c			;70c0
	and (hl)			;70c1
	dec hl			;70c2
	ld (hl),a			;70c3
	ret			;70c4
L_70C5:
	ld e,08fh		;70c5
	ld a,00fh		;70c7
	call 00093h		;70c9   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,00eh		;70cc
	di			;70ce
	call 00096h		;70cf   ; BIOS RDPSG - Reads value from PSG-register
	ei			;70d2
	cpl			;70d3
	and 03fh		;70d4
	push af			;70d6
	ld a,004h		;70d7
	call 00141h		;70d9   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;70dc
	rlca			;70dd
	rlca			;70de
	rlca			;70df
	and 020h		;70e0
	ld e,a			;70e2
	ld a,007h		;70e3
	call 00141h		;70e5   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;70e8
	rrca			;70e9
	ld b,a			;70ea
	and 040h		;70eb
	or e			;70ed
	ld e,a			;70ee
	ld a,b			;70ef
	rrca			;70f0
	and 080h		;70f1
	or e			;70f3
	ld e,a			;70f4
	ld a,008h		;70f5
	call 00141h		;70f7   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;70fa
	rrca			;70fb
	rrca			;70fc
	ld b,a			;70fd
	and 004h		;70fe
	or e			;7100
	ld e,a			;7101
	ld a,b			;7102
	rrca			;7103
	rrca			;7104
	ld b,a			;7105
	and 018h		;7106
	or e			;7108
	ld e,a			;7109
	ld a,b			;710a
	rrca			;710b
	and 003h		;710c
	or e			;710e
	pop bc			;710f
	or b			;7110
	ret			;7111
L_7112:
	ld a,(0e3c0h)		;7112
	cp 008h		;7115
	ret z			;7117
	xor a			;7118
	ld b,002h		;7119
	call 05dd3h		;711b
	ld a,(0e3aeh)		;711e
	or a			;7121
	ld a,000h		;7122
	jr z,L_712B		;7124
	ld (0e3aeh),a		;7126
	ld a,007h		;7129
L_712B:
	ld (0e3c0h),a		;712b
	xor a			;712e
	ld (0e3c3h),a		;712f
	ld (0e3c4h),a		;7132
	ld (0e3c7h),a		;7135
	ld (0e3c8h),a		;7138
	ld (0e3cbh),a		;713b
	ld (0e3cch),a		;713e
	ld (0e3ceh),a		;7141
	ld (0e3d9h),a		;7144
	inc a			;7147
	ld (0e3c5h),a		;7148
	ld (0e3c6h),a		;714b
	ld a,(0e334h)		;714e
	or a			;7151
	jr nz,L_715B		;7152
	ld hl,06050h		;7154
	ld (0e3c1h),hl		;7157
	ret			;715a
L_715B:
	ld hl,05040h		;715b
	ld (0e3c1h),hl		;715e
	ret			;7161
L_7162:
	ld a,(0e3cch)		;7162
	or a			;7165
	call nz,L_7682		;7166
	ld a,(0e340h)		;7169
	or a			;716c
	ret z			;716d
	ld hl,0e3c7h		;716e
	inc (hl)			;7171
	ld a,(0e3c5h)		;7172
	or a			;7175
	jr nz,L_7188		;7176
	ld a,(0e3c0h)		;7178
	cp 008h		;717b
	jr z,L_7188		;717d
	xor a			;717f
	ld b,002h		;7180
	ld hl,(0e3c1h)		;7182
	call 05dd3h		;7185
L_7188:
	ld a,(0e3c0h)		;7188
	call 040abh		;718b

; ----------------------------------------------------------------------
; DATOS saltos_718E: tabla de 20 palabras del despachador (call 0x408D en
;   0x718B); lo leen L_40AB (40 bytes)
;   0x718e..0x71b6  (40 bytes)
DATA_saltos_718E:
	defb 0b6h,071h	; 718e
	defb 0b6h,071h	; 7190
	defb 089h,072h	; 7192
	defb 0bdh,072h	; 7194
	defb 0dch,072h	; 7196
	defb 0fdh,072h	; 7198
	defb 00ch,073h	; 719a
	defb 0c6h,074h	; 719c
	defb 0f4h,074h	; 719e
	defb 0afh,075h	; 71a0
	defb 013h,075h	; 71a2
	defb 064h,075h	; 71a4
	defb 08eh,075h	; 71a6
	defb 0b0h,075h	; 71a8
	defb 0bah,075h	; 71aa
	defb 0bbh,075h	; 71ac
	defb 0dah,075h	; 71ae
	defb 0f6h,075h	; 71b0
	defb 020h,076h	; 71b2
	defb 032h,076h	; 71b4

; ======================================================================
; CODIGO 0x71b6..0x7279  (195 bytes)
; ======================================================================


L_71B6:
	ld a,(0e3c4h)		;71b6
	or a			;71b9
	jp nz,L_722D		;71ba
	ld a,(0e009h)		;71bd
	and 00fh		;71c0
	ld b,a			;71c2
	ld hl,0e3c8h		;71c3
	ld a,(hl)			;71c6
	ld c,a			;71c7
	ld (hl),b			;71c8
	jp z,L_772A		;71c9
	cp b			;71cc
	jp z,L_71E8		;71cd
	or b			;71d0
	cp b			;71d1
	ld a,b			;71d2
	jr nz,L_71D6		;71d3
	xor c			;71d5
L_71D6:
	rra			;71d6
	ld b,001h		;71d7
	jr c,L_71E4		;71d9
	rra			;71db
	inc b			;71dc
	jr c,L_71E4		;71dd
	rra			;71df
	inc b			;71e0
	jr c,L_71E4		;71e1
	inc b			;71e3
L_71E4:
	ld a,b			;71e4
	ld (0e3c6h),a		;71e5
L_71E8:
	call 05d80h		;71e8
	jp z,L_76CD		;71eb
	call 05d64h		;71ee
	ld a,(0e3c0h)		;71f1
	or a			;71f4
	ld a,(hl)			;71f5
	jr z,L_71FC		;71f6
	cp 003h		;71f8
	jr z,L_7204		;71fa
L_71FC:
	cp 005h		;71fc
	jr z,L_7204		;71fe
	or a			;7200
	jp nz,L_7709		;7201
L_7204:
	ld a,(0e3c0h)		;7204
	or a			;7207
	jr z,L_7213		;7208
	ld a,(0e3c5h)		;720a
	ld (0e48ah),a		;720d
	ld (0e48bh),a		;7210
L_7213:
	ld a,b			;7213
	ld (0e3c5h),a		;7214
	ld b,002h		;7217
	ld hl,(0e3c1h)		;7219
	call 05dd3h		;721c
	ld a,001h		;721f
	ld (0e3c4h),a		;7221
	ld a,(0e3c0h)		;7224
	or a			;7227
	jr z,L_722D		;7228
	ld (0e485h),a		;722a
L_722D:
	call L_7709		;722d
	ld a,(0e3c5h)		;7230
	add a,a			;7233
	ld hl,07277h		;7234
	ld d,000h		;7237
	ld e,a			;7239
	add hl,de			;723a
	ld a,(0e3c1h)		;723b
	add a,(hl)			;723e
	ld (0e3c1h),a		;723f
	inc hl			;7242
	ld a,(0e3c2h)		;7243
	add a,(hl)			;7246
	ld (0e3c2h),a		;7247
	ld hl,0e3c1h		;724a
	or (hl)			;724d
	and 00fh		;724e
	jp nz,L_772A		;7250
	ld (0e3c4h),a		;7253
	ld (0e37ah),a		;7256
	ld a,(0e3c5h)		;7259
	dec a			;725c
	xor 001h		;725d
	inc a			;725f
	ld c,a			;7260
	ld a,(0e3c0h)		;7261
	or a			;7264
	jr z,L_726F		;7265
	ld a,(0e482h)		;7267
	rra			;726a
	jr c,L_726F		;726b
	ld b,003h		;726d
L_726F:
	ld a,c			;726f
	ld hl,(0e3c1h)		;7270
	call 05dd3h		;7273
	jp L_772A		;7276

; ----------------------------------------------------------------------
; DATOS resto_7279: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (16 bytes)
;   0x7279..0x7289  (16 bytes)
DATA_resto_7279:
	defb 0ffh,000h,001h,000h,000h,0ffh,000h,001h,0feh,000h,002h,000h,000h,0feh,000h,002h	; 7279  ................

; ======================================================================
; CODIGO 0x7289..0x73cc  (323 bytes)
; ======================================================================


L_7289:
	xor a			;7289
	ld b,a			;728a
	ld hl,04030h		;728b
	call 05dd3h		;728e
	xor a			;7291
	ld b,a			;7292
	ld hl,08050h		;7293
	call 05dd3h		;7296
	ld a,(0e9d2h)		;7299
	rra			;729c
	jr c,L_729F		;729d
L_729F:
	ld a,001h		;729f
	ld (0e3a9h),a		;72a1
	ld hl,0a010h		;72a4
	ld (0e3c1h),hl		;72a7
	inc a			;72aa
	ld (0e3c5h),a		;72ab
	inc a			;72ae
	ld (0e3c6h),a		;72af
	ld (0e3c0h),a		;72b2
	inc a			;72b5
	ld (0e3c3h),a		;72b6
	call 04597h		;72b9
	ret			;72bc
L_72BD:
	ld a,(0e3c1h)		;72bd
	add a,002h		;72c0
	ld (0e3c1h),a		;72c2
	sub 060h		;72c5
	jp nz,L_772A		;72c7
	ld (0e3a9h),a		;72ca
	ld (0e3c0h),a		;72cd
	ld c,a			;72d0
	inc a			;72d1
	ld (0e3cch),a		;72d2
	call 042a0h		;72d5
	call 0babah		;72d8
	ret			;72db
L_72DC:
	xor a			;72dc
	ld (0e3cch),a		;72dd
	ld (0e3c9h),a		;72e0
	ld b,a			;72e3
	ld hl,(0e3c1h)		;72e4
	call 05dd3h		;72e7
	ld hl,05030h		;72ea
	ld (0e3c1h),hl		;72ed
	ld a,001h		;72f0
	ld (0e3c6h),a		;72f2
	ld a,005h		;72f5
	ld (0e3c0h),a		;72f7
	jp L_7709		;72fa
L_72FD:
	ld a,(0e503h)		;72fd
	cp 070h		;7300
	jp c,L_772A		;7302
	xor a			;7305
	ld (0e3c0h),a		;7306
	jp L_772A		;7309
L_730C:
	ld a,(0e3c4h)		;730c
	or a			;730f
	jp nz,L_7375		;7310
	ld a,(0e009h)		;7313
	and 00fh		;7316
	ld b,a			;7318
	ld hl,0e3c8h		;7319
	ld a,(hl)			;731c
	ld c,a			;731d
	ld (hl),b			;731e
	jp z,L_7799		;731f
	cp b			;7322
	jp z,L_733E		;7323
	or b			;7326
	cp b			;7327
	ld a,b			;7328
	jr nz,L_732C		;7329
	xor c			;732b
L_732C:
	rra			;732c
	ld b,001h		;732d
	jr c,L_733A		;732f
	rra			;7331
	inc b			;7332
	jr c,L_733A		;7333
	rra			;7335
	inc b			;7336
	jr c,L_733A		;7337
	inc b			;7339
L_733A:
	ld a,b			;733a
	ld (0e3c6h),a		;733b
L_733E:
	ld c,000h		;733e
	call L_73C4		;7340
	ld a,c			;7343
	cp 0ffh		;7344
	ld a,b			;7346
	jp z,L_7709		;7347
	call 05d80h		;734a
	jp z,L_76CD		;734d
	call 05d64h		;7350
	ld a,(hl)			;7353
	or a			;7354
	jp z,L_7422		;7355
	dec a			;7358
	jp nz,L_7709		;7359
	ld hl,0e3dah		;735c
	ld a,(hl)			;735f
	or a			;7360
	jr z,L_7364		;7361
	dec (hl)			;7363
L_7364:
	ld a,b			;7364
L_7365:
	ld (0e3c5h),a		;7365
	ld b,002h		;7368
	ld hl,(0e3c1h)		;736a
	call 05dd3h		;736d
	ld a,001h		;7370
	ld (0e3c4h),a		;7372
L_7375:
	call L_7709		;7375
	ld a,(0e3c5h)		;7378
	add a,a			;737b
	ld hl,07277h		;737c
	ld d,000h		;737f
	ld e,a			;7381
	add hl,de			;7382
	ld a,(0e3c1h)		;7383
	add a,(hl)			;7386
	ld (0e3c1h),a		;7387
	inc hl			;738a
	ld a,(0e3c2h)		;738b
	add a,(hl)			;738e
	ld (0e3c2h),a		;738f
	ld hl,0e3c1h		;7392
	or (hl)			;7395
	and 00fh		;7396
	jp nz,L_7799		;7398
	ld (0e3c4h),a		;739b
	ld (0e37ah),a		;739e
	ld b,001h		;73a1
	ld a,(0e3dah)		;73a3
	or a			;73a6
	jr z,L_73B4		;73a7
	dec b			;73a9
	cp 003h		;73aa
	jr nz,L_73B4		;73ac
	inc b			;73ae
	ld a,002h		;73af
	ld (0e3dah),a		;73b1
L_73B4:
	ld a,(0e3c5h)		;73b4
	dec a			;73b7
	xor 001h		;73b8
	inc a			;73ba
	ld hl,(0e3c1h)		;73bb
	call 05dd3h		;73be
	jp L_7799		;73c1
L_73C4:
	ld a,(0e3c6h)		;73c4
	ld b,a			;73c7
	dec a			;73c8
	call 040abh		;73c9

; ----------------------------------------------------------------------
; DATOS saltos_73CC: tabla de 4 palabras del despachador (call 0x408D en
;   0x73C9); lo leen L_40AB (8 bytes)
;   0x73cc..0x73d4  (8 bytes)
DATA_saltos_73CC:
	defb 0d4h,073h	; 73cc
	defb 0e8h,073h	; 73ce
	defb 0fch,073h	; 73d0
	defb 00eh,074h	; 73d2

; ======================================================================
; CODIGO 0x73d4..0x74be  (234 bytes)
; ======================================================================


L_73D4:
	ld a,(0e3c1h)		;73d4
	cp 010h		;73d7
	ret nz			;73d9
	ld a,(0eb41h)		;73da
	or a			;73dd
	ret nz			;73de
	ld a,(0eb40h)		;73df
	cp 020h		;73e2
	ret nc			;73e4
	ld c,0ffh		;73e5
	ret			;73e7
L_73E8:
	ld a,(0e3c1h)		;73e8
	cp 060h		;73eb
	ret nz			;73ed
	ld a,(0eb41h)		;73ee
	or a			;73f1
	ret z			;73f2
	ld a,(0eb40h)		;73f3
	cp 0e0h		;73f6
	ret c			;73f8
	ld c,0ffh		;73f9
	ret			;73fb
L_73FC:
	ld a,(0e3c2h)		;73fc
	cp 010h		;73ff
	ret nz			;7401
	ld a,(0eb40h)		;7402
	bit 4,a		;7405
	ret nz			;7407
	and 00fh		;7408
	ret nz			;740a
	ld c,0ffh		;740b
	ret			;740d
L_740E:
	ld a,(0e3c2h)		;740e
	cp 0a0h		;7411
	ret nz			;7413
	ld a,(0eb40h)		;7414
	bit 4,a		;7417
	ret z			;7419
	and 00fh		;741a
	cp 00fh		;741c
	ret nz			;741e
	ld c,0ffh		;741f
	ret			;7421
L_7422:
	ld d,000h		;7422
	ld a,(0e3c6h)		;7424
	add a,a			;7427
	ld e,a			;7428
	ld hl,074bch		;7429
	add hl,de			;742c
	ld a,(0e3c1h)		;742d
	add a,(hl)			;7430
	ld e,a			;7431
	inc hl			;7432
	ld a,(0e3c2h)		;7433
	add a,(hl)			;7436
	ld d,a			;7437
	ex de,hl			;7438
	call 04509h		;7439
	ld a,(hl)			;743c
	cp 050h		;743d
	jr c,L_7457		;743f
	cp 054h		;7441
	jr nc,L_7457		;7443
	ld a,(0e3dah)		;7445
	cp 002h		;7448
	jr z,L_7451		;744a
	ld a,003h		;744c
	ld (0e3dah),a		;744e
L_7451:
	ld a,(0e3c6h)		;7451
	jp L_7365		;7454
L_7457:
	ld a,(0e3dah)		;7457
	or a			;745a
	jp nz,L_7799		;745b
	xor a			;745e
	ld (0e3d9h),a		;745f
	ld d,a			;7462
	ld hl,0eb74h		;7463
	ld a,0f8h		;7466
	and (hl)			;7468
	ld (hl),a			;7469
	ld a,(0e3c6h)		;746a
	or (hl)			;746d
	ld (hl),a			;746e
	ld a,00dh		;746f
	ld (0e3c0h),a		;7471
	ld a,030h		;7474
	ld (0e3d5h),a		;7476
	ld a,(0e3c6h)		;7479
	add a,a			;747c
	ld e,a			;747d
	ld hl,074bch		;747e
	add hl,de			;7481
	ld a,(0e3c1h)		;7482
	ld e,a			;7485
	ld b,(hl)			;7486
	add a,b			;7487
	ld (0e3c1h),a		;7488
	inc hl			;748b
	ld a,(0e3c2h)		;748c
	ld d,a			;748f
	ld b,(hl)			;7490
	add a,b			;7491
	ld (0e3c2h),a		;7492
	ld a,d			;7495
	rra			;7496
	rra			;7497
	rra			;7498
	rra			;7499
	and 00fh		;749a
	or e			;749c
	ld (0eb7ah),a		;749d
	ld bc,000c8h		;74a0
	ld l,002h		;74a3
	xor a			;74a5
	call 04297h		;74a6
	ld hl,(0eb40h)		;74a9
	ld a,(0eb6ah)		;74ac
	res 0,a		;74af
	or h			;74b1
	ld h,a			;74b2
	ld (0eb69h),hl		;74b3
	call L_7709		;74b6
	xor a			;74b9
	call 04662h		;74ba
	ret			;74bd

; ----------------------------------------------------------------------
; DATOS resto_74BE: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (8 bytes)
;   0x74be..0x74c6  (8 bytes)
DATA_resto_74BE:
	defb 0f0h,000h,010h,000h,000h,0f0h,000h,010h	; 74be  ........

; ======================================================================
; CODIGO 0x74c6..0x758a  (196 bytes)
; ======================================================================


L_74C6:
	ld a,001h		;74c6
	ld (0e3c6h),a		;74c8
	ld a,(0eb40h)		;74cb
	cp 0d0h		;74ce
	ld a,(0e3c1h)		;74d0
	jr z,L_74DC		;74d3
	or a			;74d5
	jp nz,L_7600		;74d6
	jp L_76CD		;74d9
L_74DC:
	sub 060h		;74dc
	jp nz,L_7600		;74de
	ld (0e3c0h),a		;74e1
	ld hl,06060h		;74e4
	ld b,002h		;74e7
	call 05dd3h		;74e9
	ld hl,06070h		;74ec
	xor a			;74ef
	ld b,a			;74f0
	jp 05dd3h		;74f1
L_74F4:
	ld hl,05020h		;74f4
	ld (0e3c1h),hl		;74f7
	xor a			;74fa
	ld (0e3cch),a		;74fb
	ld (0e3c9h),a		;74fe
	ld a,002h		;7501
	ld (0e3c3h),a		;7503
	ld a,0c0h		;7506
	ld (0e3d6h),a		;7508
	call L_7769		;750b
	ld c,000h		;750e
	jp 042a0h		;7510
L_7513:
	xor a			;7513
	ld (0e3d4h),a		;7514
	ld (0e3cfh),a		;7517
	ld (0e3d1h),a		;751a
	inc a			;751d
	ld (0e3cch),a		;751e
	ld (0e3c6h),a		;7521
	xor a			;7524
	ld b,a			;7525
	ld hl,(0e3c1h)		;7526
	call 05dd3h		;7529
	ld hl,0e3c0h		;752c
	inc (hl)			;752f
	ld a,(0e3c1h)		;7530
	ld (0e3d0h),a		;7533
	ld a,(0e3c2h)		;7536
	ld (0e3d2h),a		;7539
	ld a,004h		;753c
	ld (0e3d3h),a		;753e
L_7541:
	call L_6309		;7541
	push de			;7544
	ld de,(0e3cfh)		;7545
	add hl,de			;7549
	ld (0e3cfh),hl		;754a
	pop de			;754d
	ld hl,(0e3d1h)		;754e
	add hl,de			;7551
	ld (0e3d1h),hl		;7552
	ld a,(0e3d0h)		;7555
	ld (0e3c1h),a		;7558
	ld a,(0e3d2h)		;755b
	ld (0e3c2h),a		;755e
	jp L_772A		;7561
L_7564:
	ld a,(0e3c7h)		;7564
	and 007h		;7567
	jr nz,L_7582		;7569
	ld a,(0e3d4h)		;756b
	inc a			;756e
	cp 005h		;756f
	jr c,L_7575		;7571
	ld a,001h		;7573
L_7575:
	ld (0e3d4h),a		;7575
	ld hl,07589h		;7578
	call 040a1h		;757b
	ld a,(hl)			;757e
	ld (0e3c6h),a		;757f
L_7582:
	call L_7709		;7582
	ld a,(0e3d3h)		;7585
	jr L_7541		;7588

; ----------------------------------------------------------------------
; DATOS resto_758A: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (4 bytes)
;   0x758a..0x758e  (4 bytes)
DATA_resto_758A:
	defb 001h,004h,002h,003h	; 758a

; ======================================================================
; CODIGO 0x758e..0x7671  (227 bytes)
; ======================================================================


L_758E:
	ld hl,(0e3c1h)		;758e
	xor a			;7591
	ld b,a			;7592
	call 05dd3h		;7593
	ld a,002h		;7596
	ld (0e3c6h),a		;7598
	call L_7709		;759b
	ld hl,0e3c0h		;759e
	xor a			;75a1
	ld (hl),a			;75a2
	ld (0e3c9h),a		;75a3
	ld hl,0e0e0h		;75a6
	ld (0f00ch),hl		;75a9
	ld (0f00eh),hl		;75ac
L_75AF:
	ret			;75af
L_75B0:
	ld hl,0e3d5h		;75b0
	dec (hl)			;75b3
	ret nz			;75b4
	xor a			;75b5
	ld (0e3c0h),a		;75b6
	ret			;75b9
L_75BA:
	ret			;75ba
L_75BB:
	ld a,(0e400h)		;75bb
	or a			;75be
	jp nz,L_7654		;75bf
	ld hl,05060h		;75c2
	ld (0e3c1h),hl		;75c5
	ld a,002h		;75c8
	ld (0e337h),a		;75ca
	ld hl,0020ch		;75cd
	ld (0e36ah),hl		;75d0
L_75D3:
	ld hl,0e3c0h		;75d3
	inc (hl)			;75d6
	jp L_772A		;75d7
L_75DA:
	call L_7654		;75da
	ld a,(0e3c1h)		;75dd
	ld b,a			;75e0
	ld a,(0e3c2h)		;75e1
	or b			;75e4
	and 00fh		;75e5
	ret nz			;75e7
	ld b,a			;75e8
	ld a,(0e3c6h)		;75e9
	dec a			;75ec
	xor 001h		;75ed
	inc a			;75ef
	ld hl,(0e3c1h)		;75f0
	jp 05dd3h		;75f3
L_75F6:
	ld hl,0e3c0h		;75f6
	inc (hl)			;75f9
	call L_7641		;75fa
	ld (0e3c6h),a		;75fd
L_7600:
	ld a,(0e3c6h)		;7600
	ld (0e3c5h),a		;7603
	add a,a			;7606
	ld hl,07277h		;7607
	ld d,000h		;760a
	ld e,a			;760c
	add hl,de			;760d
	ld a,(0e3c1h)		;760e
	add a,(hl)			;7611
	ld (0e3c1h),a		;7612
	inc hl			;7615
	ld a,(0e3c2h)		;7616
	add a,(hl)			;7619
	ld (0e3c2h),a		;761a
	jp L_7709		;761d
L_7620:
	call L_7600		;7620
	ld a,(0e3c1h)		;7623
	ld b,a			;7626
	ld a,(0e3c2h)		;7627
	or b			;762a
	and 00fh		;762b
	ret nz			;762d
	call L_75D3		;762e
	ret			;7631
L_7632:
	ld a,(0e400h)		;7632
	or a			;7635
	jr nz,L_7654		;7636
	ld a,(0e3c1h)		;7638
	or a			;763b
	jr nz,L_7600		;763c
	jp L_76CD		;763e
L_7641:
	xor a			;7641
L_7642:
	inc a			;7642
	cp 005h		;7643
	ret nc			;7645
	ld hl,(0e3c1h)		;7646
	call 05d6ah		;7649
	ld a,(hl)			;764c
	cp 004h		;764d
	ld a,b			;764f
	jr nz,L_7642		;7650
	scf			;7652
	ret			;7653
L_7654:
	ld a,(0e40bh)		;7654
	ld (0e3c6h),a		;7657
	ld de,0766fh		;765a
	call 043a4h		;765d
	ld a,(0e403h)		;7660
	add a,e			;7663
	ld (0e3c1h),a		;7664
	ld a,(0e404h)		;7667
	add a,d			;766a
	ld (0e3c2h),a		;766b
	jp L_7709		;766e

; ----------------------------------------------------------------------
; DATOS resto_7671: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (8 bytes)
;   0x7671..0x7679  (8 bytes)
DATA_resto_7671:
	defb 010h,000h,0f0h,000h,000h,010h,000h,0f0h	; 7671  ........

; ======================================================================
; CODIGO 0x7679..0x77e1  (360 bytes)
; ======================================================================


L_7679:
	xor a			;7679
	ld b,002h		;767a
	ld hl,(0e3c1h)		;767c
	jp 05dd3h		;767f
L_7682:
	ld a,(0eb40h)		;7682
	cp 018h		;7685
	jr z,L_769F		;7687
	ld a,(0eb5ah)		;7689
	bit 5,a		;768c
	ret nz			;768e
	ld a,(0e3c7h)		;768f
	and a			;7692
	ret nz			;7693
	call L_76BE		;7694
	ret nz			;7697
	ld (0e340h),a		;7698
	ld (0e338h),a		;769b
	ret			;769e
L_769F:
	ld a,(0e3c7h)		;769f
	and 01fh		;76a2
	ret nz			;76a4
	call L_76BE		;76a5
	ret nz			;76a8
	ld (0e340h),a		;76a9
	ld (0e3c9h),a		;76ac
	inc a			;76af
	ld (0e338h),a		;76b0
	ld a,008h		;76b3
	ld (0e3c0h),a		;76b5
	ld hl,0eb64h		;76b8
	set 7,(hl)		;76bb
	ret			;76bd
L_76BE:
	ld a,(0e3c9h)		;76be
	inc a			;76c1
	ld (0e3c9h),a		;76c2
	sub 010h		;76c5
	or a			;76c7
	ret			;76c8
L_76C9:
	xor a			;76c9
	ld (0e3c0h),a		;76ca
L_76CD:
	ld hl,(0eb40h)		;76cd
	ld a,h			;76d0
	cp 002h		;76d1
	jr nz,L_76D9		;76d3
	ld a,l			;76d5
	cp 01fh		;76d6
	ret z			;76d8
L_76D9:
	ld a,(0e3ceh)		;76d9
	or a			;76dc
	jr nz,L_7709		;76dd
	ld a,(0e3c6h)		;76df
	ld (0e3c5h),a		;76e2
	ld a,00ah		;76e5
	ld (0e3cdh),a		;76e7
	and a			;76ea
	ld hl,0020eh		;76eb
	ld de,(0eb40h)		;76ee
	sbc hl,de		;76f2
	jr nz,L_7704		;76f4
	ld a,002h		;76f6
	ld (0e337h),a		;76f8
	ld de,00087h		;76fb
	ld (0e36ah),de		;76fe
	jr L_7709		;7702
L_7704:
	ld a,001h		;7704
	ld (0e337h),a		;7706
L_7709:
	ld a,(0e3c6h)		;7709
	dec a			;770c
	add a,a			;770d
	ld hl,0e3c7h		;770e
	bit 4,(hl)		;7711
	jr z,L_7716		;7713
	inc a			;7715
L_7716:
	ld (0e3c3h),a		;7716
	ld a,(0e3d9h)		;7719
	or a			;771c
	jr nz,L_7799		;771d
L_771F:
	ld a,(0e3c0h)		;771f
	cp 008h		;7722
	jr z,L_7769		;7724
	cp 006h		;7726
	jr z,L_7799		;7728
L_772A:
	and a			;772a
	ld de,0022ch		;772b
	ld hl,(0eb40h)		;772e
	sbc hl,de		;7731
	ld d,004h		;7733
	jr z,L_773E		;7735
	dec hl			;7737
	ld a,h			;7738
	or l			;7739
	jr z,L_773E		;773a
	ld d,001h		;773c
L_773E:
	ld h,d			;773e
	ld de,(0e3c1h)		;773f
	ld (0f000h),de		;7743
	ld l,004h		;7747
	ld (0f002h),hl		;7749
	ld a,e			;774c
	sub 008h		;774d
	ld e,a			;774f
	ld (0f004h),de		;7750
	ld hl,00b00h		;7754
	ld (0f006h),hl		;7757
	ld a,e			;775a
	add a,010h		;775b
	ld e,a			;775d
	ld (0f008h),de		;775e
	ld hl,00808h		;7762
	ld (0f00ah),hl		;7765
	ret			;7768
L_7769:
	ld de,06414h		;7769
	ld (0f000h),de		;776c
	ld hl,001ach		;7770
	ld (0f002h),hl		;7773
	ld (0f004h),de		;7776
	ld hl,00bb0h		;777a
	ld (0f006h),hl		;777d
	ld a,d			;7780
	add a,00ch		;7781
	ld d,a			;7783
	ld (0f008h),de		;7784
	ld hl,001b4h		;7788
	ld (0f00ah),hl		;778b
	ld (0f00ch),de		;778e
	ld hl,00bb8h		;7792
	ld (0f00eh),hl		;7795
	ret			;7798
L_7799:
	ld a,(0e3dah)		;7799
	or a			;779c
	jr nz,L_77C5		;779d
	ld de,(0e3c1h)		;779f
	ld (0f000h),de		;77a3
	ld hl,0010ch		;77a7
	ld (0f002h),hl		;77aa
	ld (0f004h),de		;77ad
	ld hl,00a10h		;77b1
	ld (0f006h),hl		;77b4
	ld de,0e0e0h		;77b7
	ld (0f008h),de		;77ba
	ld hl,00000h		;77be
	ld (0f00ah),hl		;77c1
	ret			;77c4
L_77C5:
	ld de,0f001h		;77c5
	ld hl,0f000h		;77c8
	ld (hl),000h		;77cb
	ld bc,0000bh		;77cd
	ldir		;77d0
	ret			;77d2
L_77D3:
	ld a,(0e3f8h)		;77d3
	or a			;77d6
	jr nz,$+37		;77d7
	ld bc,(0e3e0h)		;77d9
	ld a,c			;77dd
	call 040abh		;77de

; ----------------------------------------------------------------------
; DATOS saltos_77E1: tabla de 13 palabras del despachador (call 0x408D en
;   0x77DE); lo leen L_40AB (26 bytes)
;   0x77e1..0x77fb  (26 bytes)
DATA_saltos_77E1:
	defb 005h,078h	; 77e1
	defb 053h,078h	; 77e3
	defb 020h,07ah	; 77e5
	defb 06ah,07bh	; 77e7
	defb 057h,07ch	; 77e9
	defb 0cbh,07ch	; 77eb
	defb 063h,07dh	; 77ed
	defb 07ah,07dh	; 77ef
	defb 062h,07eh	; 77f1
	defb 0d8h,07eh	; 77f3
	defb 0c2h,07fh	; 77f5
	defb 0d3h,07fh	; 77f7
	defb 07bh,080h	; 77f9

; ======================================================================
; CODIGO 0x77fb..0x79e8  (493 bytes)
; ======================================================================


L_77FB:
	ret			;77fb
L_77FC:
	ld hl,0e3f9h		;77fc
	dec (hl)			;77ff
	ret nz			;7800
	dec hl			;7801
	ld (hl),000h		;7802
	ret			;7804
L_7805:
	djnz L_7825		;7805
	ld hl,0e3eah		;7807
	dec (hl)			;780a
	ret nz			;780b
	ld a,001h		;780c
	ld (0e3a2h),a		;780e
	call 081ceh		;7811
	call 083ddh		;7814
	ld hl,0eb65h		;7817
	set 1,(hl)		;781a
	ld ix,0ea00h		;781c
	ld c,011h		;7820
	jp 042a6h		;7822
L_7825:
	djnz L_782C		;7825
	xor a			;7827
	ld (0e3e3h),a		;7828
	ret			;782b
L_782C:
	call 081ceh		;782c
	ld a,060h		;782f
	ld hl,0e3e5h		;7831
	ld (hl),a			;7834
	ld a,078h		;7835
	inc l			;7837
	inc l			;7838
	ld (hl),a			;7839
	xor a			;783a
	ld (0e3e3h),a		;783b
	ld (0e3eah),a		;783e
	ld a,(0eb79h)		;7841
	bit 3,a		;7844
	jp z,081ceh		;7846
	ld a,(0eb7dh)		;7849
	rla			;784c
	jp c,081ceh		;784d
	ld (hl),0d0h		;7850
	ret			;7852
L_7853:
	djnz L_786F		;7853
	ld hl,0e3e9h		;7855
	dec (hl)			;7858
	call z,081ceh		;7859
	ld a,(0e3e5h)		;785c
	add a,0a8h		;785f
	cp 0b0h		;7861
	jp nc,081d6h		;7863
	call 081eeh		;7866
	call 0bac9h		;7869
	jp 081d6h		;786c
L_786F:
	djnz L_7891		;786f
	ld a,030h		;7871
	ld (0e3e5h),a		;7873
	ld a,078h		;7876
	ld (0e3e7h),a		;7878
	ld hl,00000h		;787b
	ld (0e3ech),hl		;787e
	ld hl,0e3e9h		;7881
	ld (hl),090h		;7884
	ld hl,0e3efh		;7886
	ld (hl),0fah		;7889
	call 081e2h		;788b
	jp 081ceh		;788e
L_7891:
	djnz L_78AD		;7891
	ld hl,0e3e9h		;7893
	dec (hl)			;7896
	call z,081ceh		;7897
	ld a,(0e3e7h)		;789a
	add a,010h		;789d
	cp 020h		;789f
	jp nc,081e2h		;78a1
	call 081f8h		;78a4
	call 0bac9h		;78a7
	jp 081e2h		;78aa
L_78AD:
	djnz L_78CD		;78ad
	ld a,003h		;78af
	ld (0e3f1h),a		;78b1
	ld a,030h		;78b4
	ld (0e3e5h),a		;78b6
	ld a,078h		;78b9
	ld (0e3e7h),a		;78bb
	ld hl,00300h		;78be
	ld (0e3ech),hl		;78c1
	ld (0e3eeh),hl		;78c4
	call 081d3h		;78c7
	jp 081ceh		;78ca
L_78CD:
	djnz L_78E0		;78cd
	ld a,(0e3e5h)		;78cf
	cp 060h		;78d2
	jp nz,081d3h		;78d4
	call 081eeh		;78d7
	call 0bac9h		;78da
	jp 081ceh		;78dd
L_78E0:
	djnz L_78F3		;78e0
	ld a,(0e3e5h)		;78e2
	cp 030h		;78e5
	jp nz,081d3h		;78e7
	call 081f8h		;78ea
	call 0bac9h		;78ed
	jp 081ceh		;78f0
L_78F3:
	djnz L_7905		;78f3
	ld a,(0e3e5h)		;78f5
	or a			;78f8
	jp nz,081d3h		;78f9
	call 081eeh		;78fc
	call 0bac9h		;78ff
	jp 081ceh		;7902
L_7905:
	djnz L_7918		;7905
	ld a,(0e3e5h)		;7907
	cp 060h		;790a
	jp nz,081d3h		;790c
	call 081eeh		;790f
	call 0bac9h		;7912
	jp 081ceh		;7915
L_7918:
	djnz L_792B		;7918
	ld a,(0e3e5h)		;791a
	cp 030h		;791d
	jp nz,081d3h		;791f
	call 081f8h		;7922
	call 0bac9h		;7925
	jp 081ceh		;7928
L_792B:
	djnz L_793D		;792b
	ld a,(0e3e5h)		;792d
	or a			;7930
	jp nz,081d3h		;7931
	call 081eeh		;7934
	call 0bac9h		;7937
	jp 081ceh		;793a
L_793D:
	djnz L_7950		;793d
	ld hl,0e3f1h		;793f
	dec (hl)			;7942
	jr z,L_794D		;7943
	ld a,005h		;7945
	ld (0e3e1h),a		;7947
	jp 081d3h		;794a
L_794D:
	jp 081ceh		;794d
L_7950:
	djnz L_7971		;7950
	xor a			;7952
	ld (0e3e5h),a		;7953
	ld a,004h		;7956
	ld (0e3f1h),a		;7958
	ld a,008h		;795b
	ld (0e3e7h),a		;795d
	ld hl,00600h		;7960
	ld (0e3ech),hl		;7963
	ld h,002h		;7966
	ld (0e3eeh),hl		;7968
	call 081d3h		;796b
	jp 081ceh		;796e
L_7971:
	djnz L_79B0		;7971
	ld a,(0e3e7h)		;7973
	cp 008h		;7976
	call z,L_799D		;7978
	cp 0e8h		;797b
	call z,L_799D		;797d
	ld a,(0e3e5h)		;7980
	cp 060h		;7983
	jr nz,L_7990		;7985
	call 081eeh		;7987
	call 0bac9h		;798a
	jp 081d3h		;798d
L_7990:
	or a			;7990
	jp nz,081d3h		;7991
	call 081eeh		;7994
	call 0bac9h		;7997
	jp 081d3h		;799a
L_799D:
	call 081f8h		;799d
	call 081eeh		;79a0
	call 0bac9h		;79a3
	ld hl,0e3f1h		;79a6
	dec (hl)			;79a9
	jp z,081ceh		;79aa
	jp 081d3h		;79ad
L_79B0:
	djnz L_79C3		;79b0
	ld a,020h		;79b2
	ld (0e3f1h),a		;79b4
	xor a			;79b7
	ld (0e3e5h),a		;79b8
	ld a,078h		;79bb
	ld (0e3e7h),a		;79bd
	jp 081ceh		;79c0
L_79C3:
	djnz $+53		;79c3
	ld a,(0e003h)		;79c5
	and 003h		;79c8
	ret nz			;79ca
	ld a,(0e3f1h)		;79cb
	dec a			;79ce
	jp z,081ceh		;79cf
	ld (0e3f1h),a		;79d2
	ld hl,079e8h		;79d5
	and 007h		;79d8
	add a,a			;79da
	call 040a1h		;79db
	ld a,(hl)			;79de
	ld (0e3e5h),a		;79df
	inc hl			;79e2
	ld a,(hl)			;79e3
	ld (0e3e7h),a		;79e4
	ret			;79e7

; ----------------------------------------------------------------------
; DATOS resto_79E8: lo apuntan con el banco puesto p01:79D5 (0x79E8); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:79D5 (16 bytes)
;   0x79e8..0x79f8  (16 bytes)
DATA_resto_79E8:
	defb 000h,078h,00eh,09ah,030h,0a8h,052h,09ah,060h,078h,052h,056h,030h,048h,00eh,056h	; 79e8  .x..0.R.`xRV0H.V

; ======================================================================
; CODIGO 0x79f8..0x7c13  (539 bytes)
; ======================================================================


L_79F8:
	djnz L_7A01		;79f8
	ld hl,00002h		;79fa
	ld (0e3e0h),hl		;79fd
	ret			;7a00
L_7A01:
	ld hl,0e3f0h		;7a01
	ld (hl),001h		;7a04
	ld a,078h		;7a06
	ld (0e3e7h),a		;7a08
	ld a,030h		;7a0b
	ld (0e3e5h),a		;7a0d
	ld hl,(0e3e9h)		;7a10
	ld (hl),090h		;7a13
	ld hl,0e3edh		;7a15
	ld (hl),0fah		;7a18
	call 081d6h		;7a1a
	jp 081ceh		;7a1d
L_7A20:
	ld a,(0e003h)		;7a20
	and 003h		;7a23
	inc a			;7a25
	ld (0e3e3h),a		;7a26
	djnz L_7A3B		;7a29
	ld a,(0e3e5h)		;7a2b
	cp 060h		;7a2e
	jp nz,081d6h		;7a30
	ld a,030h		;7a33
	ld (0e3e5h),a		;7a35
	jp 081ceh		;7a38
L_7A3B:
	djnz L_7A4C		;7a3b
	ld a,(0e3e7h)		;7a3d
	cp 0a8h		;7a40
	jp nz,081e2h		;7a42
	xor a			;7a45
	ld (0e3e5h),a		;7a46
	jp 081ceh		;7a49
L_7A4C:
	djnz L_7A63		;7a4c
	ld a,(0e3e5h)		;7a4e
	cp 060h		;7a51
	jp nz,081d6h		;7a53
	xor a			;7a56
	ld hl,0e3e5h		;7a57
	ld (hl),a			;7a5a
	inc l			;7a5b
	inc l			;7a5c
	ld a,048h		;7a5d
	ld (hl),a			;7a5f
	jp 081ceh		;7a60
L_7A63:
	djnz L_7A75		;7a63
	ld a,(0e3e7h)		;7a65
	cp 0a8h		;7a68
	jp nz,081e2h		;7a6a
	ld a,048h		;7a6d
	ld (0e3e7h),a		;7a6f
	jp 081ceh		;7a72
L_7A75:
	djnz L_7A87		;7a75
	ld a,(0e3e5h)		;7a77
	cp 060h		;7a7a
	jp nz,081d6h		;7a7c
	ld a,030h		;7a7f
	ld (0e3e5h),a		;7a81
	jp 081ceh		;7a84
L_7A87:
	djnz L_7A9F		;7a87
	ld a,(0e3e7h)		;7a89
	cp 098h		;7a8c
	jp nz,081e2h		;7a8e
	ld a,060h		;7a91
	ld hl,0e3e5h		;7a93
	ld (hl),a			;7a96
	inc l			;7a97
	inc l			;7a98
	ld a,048h		;7a99
	ld (hl),a			;7a9b
	jp 081ceh		;7a9c
L_7A9F:
	djnz L_7AB6		;7a9f
	ld a,(0e3e7h)		;7aa1
	cp 0a8h		;7aa4
	jp nz,081e2h		;7aa6
	xor a			;7aa9
	ld hl,0e3e5h		;7aaa
	ld (hl),a			;7aad
	inc l			;7aae
	inc l			;7aaf
	ld a,050h		;7ab0
	ld (hl),a			;7ab2
	jp 081ceh		;7ab3
L_7AB6:
	djnz L_7AC3		;7ab6
	ld a,(0e3e5h)		;7ab8
	cp 060h		;7abb
	jp nz,081d6h		;7abd
	jp 081ceh		;7ac0
L_7AC3:
	djnz L_7ADA		;7ac3
	ld a,(0e3e7h)		;7ac5
	cp 0a0h		;7ac8
	jp nz,081e2h		;7aca
	xor a			;7acd
	ld hl,0e3e5h		;7ace
	ld (hl),a			;7ad1
	inc l			;7ad2
	inc l			;7ad3
	ld a,058h		;7ad4
	ld (hl),a			;7ad6
	jp 081ceh		;7ad7
L_7ADA:
	djnz L_7AF1		;7ada
	ld a,(0e3e5h)		;7adc
	cp 060h		;7adf
	jp nz,081d6h		;7ae1
	xor a			;7ae4
	ld hl,0e3e5h		;7ae5
	ld (hl),a			;7ae8
	inc l			;7ae9
	inc l			;7aea
	ld a,058h		;7aeb
	ld (hl),a			;7aed
	jp 081ceh		;7aee
L_7AF1:
	djnz L_7AFE		;7af1
	ld a,(0e3e7h)		;7af3
	cp 098h		;7af6
	jp nz,081e2h		;7af8
	jp 081ceh		;7afb
L_7AFE:
	djnz L_7B10		;7afe
	ld a,(0e3e5h)		;7b00
	cp 030h		;7b03
	jp nz,081d6h		;7b05
	ld a,0f8h		;7b08
	ld (0e3efh),a		;7b0a
	jp 081ceh		;7b0d
L_7B10:
	djnz L_7B2D		;7b10
	ld a,(0e3e7h)		;7b12
	cp 048h		;7b15
	jp nz,081e2h		;7b17
	ld a,060h		;7b1a
	ld hl,0e3e5h		;7b1c
	ld (hl),a			;7b1f
	ld a,078h		;7b20
	inc l			;7b22
	inc l			;7b23
	ld (hl),a			;7b24
	ld hl,0e3f0h		;7b25
	ld (hl),000h		;7b28
	jp 081ceh		;7b2a
L_7B2D:
	djnz L_7B50		;7b2d
	ld hl,00200h		;7b2f
	ld (0e3e0h),hl		;7b32
	ld hl,0e3f2h		;7b35
	ld a,(hl)			;7b38
	or a			;7b39
	ld c,007h		;7b3a
	jr z,L_7B47		;7b3c
	ld c,009h		;7b3e
	push hl			;7b40
	ld hl,0eb66h		;7b41
	set 2,(hl)		;7b44
	pop hl			;7b46
L_7B47:
	ld (hl),000h		;7b47
	ld ix,0ea00h		;7b49
	jp 042a6h		;7b4d
L_7B50:
	xor a			;7b50
	ld hl,0e3f0h		;7b51
	ld (hl),001h		;7b54
	ld (0e3e5h),a		;7b56
	ld a,048h		;7b59
	ld (0e3e7h),a		;7b5b
	ld a,004h		;7b5e
	ld hl,0e3edh		;7b60
	ld (hl),a			;7b63
	inc l			;7b64
	inc l			;7b65
	ld (hl),a			;7b66
	jp 081ceh		;7b67
L_7B6A:
	ld a,(0e3e5h)		;7b6a
	cp 060h		;7b6d
	jr nz,L_7B79		;7b6f
	ld a,(0eb7dh)		;7b71
	bit 6,a		;7b74
	jp nz,L_7C50		;7b76
L_7B79:
	ld a,(0e008h)		;7b79
	and 010h		;7b7c
	jr z,L_7B87		;7b7e
	push bc			;7b80
	ld c,001h		;7b81
	call 0b525h		;7b83
	pop bc			;7b86
L_7B87:
	djnz L_7BC8		;7b87
	call 08202h		;7b89
	ld hl,01099h		;7b8c
	ld (0e8f0h),hl		;7b8f
	ld hl,00180h		;7b92
	ld (0e8f2h),hl		;7b95
L_7B98:
	ld a,(0e008h)		;7b98
	and 001h		;7b9b
	jr z,L_7BB8		;7b9d
	ld a,0ffh		;7b9f
	ld (0e3f5h),a		;7ba1
	ld a,(0e3f3h)		;7ba4
	and 00ch		;7ba7
	ld (0e3f4h),a		;7ba9
	ld a,001h		;7bac
	ld (0e3ebh),a		;7bae
	inc a			;7bb1
	ld (0e3e1h),a		;7bb2
	call 0baech		;7bb5
L_7BB8:
	call 08214h		;7bb8
	and 00ch		;7bbb
	ld bc,(0e8f0h)		;7bbd
	ld de,(0e8f2h)		;7bc1
	jp 08254h		;7bc5
L_7BC8:
	djnz $+109		;7bc8
	call 08202h		;7bca
	ld a,(0e3f4h)		;7bcd
	and 00ch		;7bd0
	ld bc,01099h		;7bd2
	ld de,00180h		;7bd5
	call 08254h		;7bd8
	ld a,(0e3ebh)		;7bdb
	dec a			;7bde
	jr nz,L_7BF0		;7bdf
	ld hl,0e3f5h		;7be1
	inc (hl)			;7be4
	ld a,(hl)			;7be5
	cp 011h		;7be6
	jr nz,L_7C06		;7be8
	dec (hl)			;7bea
	ld hl,0e3ebh		;7beb
	inc (hl)			;7bee
	ret			;7bef
L_7BF0:
	ld hl,0e3f5h		;7bf0
	inc (hl)			;7bf3
	ld a,(hl)			;7bf4
	cp 022h		;7bf5
	jr nz,L_7C06		;7bf7
	xor a			;7bf9
	ld (hl),a			;7bfa
	ld (0e3ebh),a		;7bfb
	ld (0e3f4h),a		;7bfe
	inc a			;7c01
	ld (0e3e1h),a		;7c02
	ret			;7c05
L_7C06:
	ld hl,07c13h		;7c06
	call 040a1h		;7c09
	ld a,(hl)			;7c0c
	ld hl,0e3e5h		;7c0d
	add a,(hl)			;7c10
	ld (hl),a			;7c11
	ret			;7c12

; ----------------------------------------------------------------------
; DATOS resto_7C13: lo apuntan con el banco puesto p01:7C06 (0x7C13); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:7C06 (34 bytes)
;   0x7c13..0x7c35  (34 bytes)
DATA_resto_7C13:
	defb 0f9h,0fah,0fah,0fbh,0fbh,0fbh,0fch,0fch,0fdh,0fdh,0feh,0feh,0feh,0ffh,0ffh,0ffh	; 7c13  ................
	defb 0ffh,001h,001h,001h,001h,002h,002h,002h,003h,003h,004h,004h,005h,005h,005h,006h	; 7c23  ................
	defb 006h,007h	; 7c33

; ======================================================================
; CODIGO 0x7c35..0x7d36  (257 bytes)
; ======================================================================


L_7C35:
	ld a,014h		;7c35
	ld (0e3f6h),a		;7c37
	ld a,001h		;7c3a
	ld (0e3fch),a		;7c3c
	ld a,004h		;7c3f
	ld (0e3e3h),a		;7c41
	ld hl,0e3e5h		;7c44
	ld (hl),060h		;7c47
	inc l			;7c49
	inc l			;7c4a
	ld (hl),030h		;7c4b
	jp 081ceh		;7c4d
L_7C50:
	call 081c6h		;7c50
	inc hl			;7c53
	ld (hl),000h		;7c54
	ret			;7c56
L_7C57:
	djnz L_7C87		;7c57
	ld hl,0e3e7h		;7c59
	inc (hl)			;7c5c
	ld hl,(0e3e4h)		;7c5d
	ld de,(0e3ech)		;7c60
	add hl,de			;7c64
	ld (0e3e4h),hl		;7c65
	ex de,hl			;7c68
	ld de,00040h		;7c69
	add hl,de			;7c6c
	ld (0e3ech),hl		;7c6d
	ld a,h			;7c70
	rla			;7c71
	ret c			;7c72
	ld a,(0e3e5h)		;7c73
	cp 050h		;7c76
	ret c			;7c78
	ld hl,00000h		;7c79
	ld (0e3ech),hl		;7c7c
	ld a,050h		;7c7f
	ld (0e3e5h),a		;7c81
	jp 081ceh		;7c84
L_7C87:
	djnz L_7CAE		;7c87
	ld a,(0e3e7h)		;7c89
	cp 0d0h		;7c8c
	jr c,L_7CB5		;7c8e
	xor a			;7c90
	ld (0e368h),a		;7c91
	inc a			;7c94
	ld (0e360h),a		;7c95
	inc a			;7c98
	ld (0e337h),a		;7c99
	ld hl,0021eh		;7c9c
	ld (0e36ah),hl		;7c9f
	ld hl,00040h		;7ca2
	ld (0e3c1h),hl		;7ca5
	call 0585ch		;7ca8
	jp 058eah		;7cab
L_7CAE:
	ld a,(0e3e7h)		;7cae
	cp 097h		;7cb1
	jr nc,L_7CBA		;7cb3
L_7CB5:
	inc a			;7cb5
	ld (0e3e7h),a		;7cb6
	ret			;7cb9
L_7CBA:
	call 0baf6h		;7cba
	ld a,098h		;7cbd
	ld (0e3e7h),a		;7cbf
	ld hl,0fc00h		;7cc2
	ld (0e3ech),hl		;7cc5
	jp 081ceh		;7cc8
L_7CCB:
	ld a,(0e008h)		;7ccb
	and 010h		;7cce
	jr z,L_7CD9		;7cd0
	push bc			;7cd2
	ld c,002h		;7cd3
	call 0b525h		;7cd5
	pop bc			;7cd8
L_7CD9:
	djnz L_7CED		;7cd9
	call 08202h		;7cdb
	ld hl,010e1h		;7cde
	ld (0e8f0h),hl		;7ce1
	ld hl,00300h		;7ce4
	ld (0e8f2h),hl		;7ce7
	jp L_7B98		;7cea
L_7CED:
	djnz $+93		;7ced
	call 08202h		;7cef
	ld a,(0e3f4h)		;7cf2
	ld bc,010e1h		;7cf5
	ld de,00300h		;7cf8
	call 08254h		;7cfb
	ld a,(0e3ebh)		;7cfe
	dec a			;7d01
	jr nz,L_7D13		;7d02
	ld hl,0e3f5h		;7d04
	inc (hl)			;7d07
	ld a,(hl)			;7d08
	cp 00ah		;7d09
	jr nz,L_7D29		;7d0b
	dec (hl)			;7d0d
	ld hl,0e3ebh		;7d0e
	inc (hl)			;7d11
	ret			;7d12
L_7D13:
	ld hl,0e3f5h		;7d13
	inc (hl)			;7d16
	ld a,(hl)			;7d17
	cp 014h		;7d18
	jr nz,L_7D29		;7d1a
	xor a			;7d1c
	ld (hl),a			;7d1d
	ld (0e3ebh),a		;7d1e
	ld (0e3f4h),a		;7d21
	inc a			;7d24
	ld (0e3e1h),a		;7d25
	ret			;7d28
L_7D29:
	ld hl,07d36h		;7d29
	call 040a1h		;7d2c
	ld a,(hl)			;7d2f
	ld hl,0e3e5h		;7d30
	add a,(hl)			;7d33
	ld (hl),a			;7d34
	ret			;7d35

; ----------------------------------------------------------------------
; DATOS resto_7D36: lo apuntan con el banco puesto p01:7D29 (0x7D36); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:7D29 (20 bytes)
;   0x7d36..0x7d4a  (20 bytes)
DATA_resto_7D36:
	defb 0fah,0fbh,0fbh,0fch,0fdh,0feh,0feh,0ffh,0ffh,0ffh,001h,001h,001h,002h,002h,003h	; 7d36  ................
	defb 004h,005h,005h,006h	; 7d46

; ======================================================================
; CODIGO 0x7d4a..0x7ffe  (692 bytes)
; ======================================================================


L_7D4A:
	ld a,001h		;7d4a
	ld (0e3e3h),a		;7d4c
	ld (0e3fch),a		;7d4f
	ld a,014h		;7d52
	ld (0e3f6h),a		;7d54
	ld hl,0e3e5h		;7d57
	ld (hl),068h		;7d5a
	inc l			;7d5c
	inc l			;7d5d
	ld (hl),078h		;7d5e
	jp 081ceh		;7d60
L_7D63:
	djnz L_7D72		;7d63
	ld hl,0e3eah		;7d65
	dec (hl)			;7d68
	ret nz			;7d69
	xor a			;7d6a
	ld (0e340h),a		;7d6b
	ld (0e338h),a		;7d6e
	ret			;7d71
L_7D72:
	ld a,080h		;7d72
	ld (0e3eah),a		;7d74
	jp 081ceh		;7d77
L_7D7A:
	call L_7D80		;7d7a
	jp 0840ch		;7d7d
L_7D80:
	djnz L_7DBE		;7d80
	call 08202h		;7d82
	ret z			;7d85
	ld a,(0e400h)		;7d86
	or a			;7d89
	jr z,L_7D98		;7d8a
	ld a,(0e3a6h)		;7d8c
	or a			;7d8f
	jr nz,L_7D98		;7d90
	ld a,002h		;7d92
	ld (0ea01h),a		;7d94
	ret			;7d97
L_7D98:
	ld a,(0e3a8h)		;7d98
	or a			;7d9b
	jp z,L_7E52		;7d9c
	cp 082h		;7d9f
	jr nz,L_7DAD		;7da1
	ld c,003h		;7da3
	call 0b525h		;7da5
	ld hl,0e3a8h		;7da8
	ld (hl),002h		;7dab
L_7DAD:
	call 08214h		;7dad
	ld a,(0e3f3h)		;7db0
	and 00ch		;7db3
	ld bc,030c0h		;7db5
	ld de,00400h		;7db8
	jp 08254h		;7dbb
L_7DBE:
	ld a,008h		;7dbe
	ld (0e3f6h),a		;7dc0
	call 0b5dah		;7dc3
	xor a			;7dc6
	ld (0e3a6h),a		;7dc7
	ld (0e3aah),a		;7dca
	ld (0e3fah),a		;7dcd
	ld (0e3fbh),a		;7dd0
	ld hl,0e3f9h		;7dd3
	ld (hl),030h		;7dd6
	ld hl,0e3e5h		;7dd8
	ld (hl),0b0h		;7ddb
	inc l			;7ddd
	inc l			;7dde
	ld (hl),078h		;7ddf
	call 081ceh		;7de1
	xor a			;7de4
	ld hl,00000h		;7de5
	ld (0e400h),hl		;7de8
	ld (0e402h),a		;7deb
	ld de,0e404h		;7dee
	ld hl,0e403h		;7df1
	ld bc,001fdh		;7df4
	ld (hl),001h		;7df7
	ldir		;7df9
	ld hl,0e44eh		;7dfb
	ld de,0e44fh		;7dfe
	ld b,005h		;7e01
L_7E03:
	push bc			;7e03
	ld bc,00009h		;7e04
	ld (hl),002h		;7e07
	ldir		;7e09
	pop bc			;7e0b
	ld a,017h		;7e0c
	call 040a1h		;7e0e
	ld d,h			;7e11
	ld e,l			;7e12
	inc de			;7e13
	djnz L_7E03		;7e14
	ld hl,0e4f1h		;7e16
	ld de,0e4f2h		;7e19
	ld b,003h		;7e1c
L_7E1E:
	push bc			;7e1e
	ld (hl),082h		;7e1f
	ld bc,00003h		;7e21
	ldir		;7e24
	pop bc			;7e26
	ld a,01dh		;7e27
	call 040a1h		;7e29
	ld d,h			;7e2c
	ld e,l			;7e2d
	inc de			;7e2e
	djnz L_7E1E		;7e2f
	ld hl,0e4d0h		;7e31
	ld de,0e4d1h		;7e34
	ld (hl),082h		;7e37
	ld bc,00005h		;7e39
	ldir		;7e3c
	ld a,084h		;7e3e
	ld hl,0e4f0h		;7e40
	ld (hl),a			;7e43
	ld hl,0e4f5h		;7e44
	ld (hl),a			;7e47
	ld hl,0e490h		;7e48
	ld (hl),042h		;7e4b
	ld hl,0e495h		;7e4d
	ld (hl),022h		;7e50
L_7E52:
	xor a			;7e52
	ld (0e3fah),a		;7e53
	inc a			;7e56
	ld c,003h		;7e57
	ld (0e3e3h),a		;7e59
	ld (0e3a8h),a		;7e5c
	jp 0b525h		;7e5f
L_7E62:
	push bc			;7e62
	push ix		;7e63
	ld ix,0ea60h		;7e65
	ld a,(ix+000h)		;7e69
	cp 011h		;7e6c
	jr nz,L_7EA2		;7e6e
	ld a,(0e3e7h)		;7e70
	sub (ix+009h)		;7e73
	jr c,L_7EA2		;7e76
	cp 015h		;7e78
	jr nc,L_7EA2		;7e7a
	ld a,(0e3e5h)		;7e7c
	sub (ix+007h)		;7e7f
	jr nc,L_7E86		;7e82
	neg		;7e84
L_7E86:
	cp 011h		;7e86
	jr nc,L_7EA2		;7e88
	call 0bae2h		;7e8a
	ld hl,0ea60h		;7e8d
	ld de,0ea61h		;7e90
	ld bc,0001fh		;7e93
	ld (hl),000h		;7e96
	ldir		;7e98
	ld c,005h		;7e9a
	ld hl,0ec30h		;7e9c
	call 0b535h		;7e9f
L_7EA2:
	pop ix		;7ea2
	pop bc			;7ea4
	djnz L_7EBD		;7ea5
	call 08202h		;7ea7
	call 08214h		;7eaa
	ld a,(0e3f3h)		;7ead
	and 003h		;7eb0
	exx			;7eb2
	ld bc,02080h		;7eb3
	exx			;7eb6
	ld de,00400h		;7eb7
	jp 08254h		;7eba
L_7EBD:
	ld a,003h		;7ebd
	ld (0e3e3h),a		;7ebf
	ld a,014h		;7ec2
	ld (0e3f6h),a		;7ec4
	ld a,001h		;7ec7
	ld (0e3fch),a		;7ec9
	ld hl,0e3e5h		;7ecc
	ld (hl),028h		;7ecf
	inc l			;7ed1
	inc l			;7ed2
	ld (hl),0e0h		;7ed3
	jp 081ceh		;7ed5
L_7ED8:
	ld a,(0e3ebh)		;7ed8
	or a			;7edb
	jr nz,L_7F0A		;7edc
	push bc			;7ede
	call 08214h		;7edf
	pop bc			;7ee2
	ld a,(0e3f3h)		;7ee3
	and 00fh		;7ee6
	jr z,L_7EFC		;7ee8
	rra			;7eea
	ld e,001h		;7eeb
	jr c,L_7EF8		;7eed
	inc e			;7eef
	rra			;7ef0
	jr c,L_7EF8		;7ef1
	inc e			;7ef3
	rra			;7ef4
	jr c,L_7EF8		;7ef5
	inc e			;7ef7
L_7EF8:
	ld a,e			;7ef8
	ld (0e3e3h),a		;7ef9
L_7EFC:
	ld a,(0e008h)		;7efc
	and 010h		;7eff
	jr z,L_7F0A		;7f01
	push bc			;7f03
	ld c,004h		;7f04
	call 0b525h		;7f06
	pop bc			;7f09
L_7F0A:
	djnz L_7F6A		;7f0a
	call 08202h		;7f0c
	ld a,(0e008h)		;7f0f
	and 020h		;7f12
	jr z,L_7F33		;7f14
	xor a			;7f16
	ld (0e3fch),a		;7f17
	ld a,0ffh		;7f1a
	ld (0e3f5h),a		;7f1c
	ld a,(0e3f3h)		;7f1f
	and 00ch		;7f22
	ld (0e3f4h),a		;7f24
	ld a,001h		;7f27
	ld (0e3ebh),a		;7f29
	inc a			;7f2c
	ld (0e3e1h),a		;7f2d
	call 0baech		;7f30
L_7F33:
	ld a,(0e3f3h)		;7f33
	rra			;7f36
	jr c,L_7F52		;7f37
	rra			;7f39
	jr c,L_7F52		;7f3a
	and 003h		;7f3c
	jr nz,L_7F5E		;7f3e
L_7F40:
	ld a,(0e3f3h)		;7f40
	exx			;7f43
	ld bc,00869h		;7f44
	exx			;7f47
	ld bc,020d1h		;7f48
	ld de,00200h		;7f4b
	jp 08254h		;7f4e
L_7F51:
	ret			;7f51
L_7F52:
	ld a,(0e3e7h)		;7f52
	cp 020h		;7f55
	jr z,L_7F40		;7f57
	cp 0d0h		;7f59
	jr z,L_7F40		;7f5b
	ret			;7f5d
L_7F5E:
	ld a,(0e3e5h)		;7f5e
	cp 008h		;7f61
	jr z,L_7F40		;7f63
	cp 068h		;7f65
	jr z,L_7F40		;7f67
	ret			;7f69
L_7F6A:
	djnz L_7FA7		;7f6a
	call 08202h		;7f6c
	ld a,(0e3f4h)		;7f6f
	call L_7F51		;7f72
	ld a,(0e3ebh)		;7f75
	dec a			;7f78
	jr nz,L_7F8B		;7f79
	ld hl,0e3f5h		;7f7b
	inc (hl)			;7f7e
	ld a,(hl)			;7f7f
	cp 00ah		;7f80
	jp nz,L_7D29		;7f82
	dec (hl)			;7f85
	ld hl,0e3ebh		;7f86
	inc (hl)			;7f89
	ret			;7f8a
L_7F8B:
	ld a,001h		;7f8b
	ld (0e3fch),a		;7f8d
	ld hl,0e3f5h		;7f90
	inc (hl)			;7f93
	ld a,(hl)			;7f94
	cp 014h		;7f95
	jp nz,L_7D29		;7f97
	xor a			;7f9a
	ld (hl),a			;7f9b
	ld (0e3ebh),a		;7f9c
	ld (0e3f4h),a		;7f9f
	inc a			;7fa2
	ld (0e3e1h),a		;7fa3
	ret			;7fa6
L_7FA7:
	ld a,014h		;7fa7
	ld (0e3f6h),a		;7fa9
	ld a,002h		;7fac
	ld (0e3e3h),a		;7fae
	ld a,001h		;7fb1
	ld (0e3fch),a		;7fb3
	ld hl,0e3e5h		;7fb6
	ld (hl),008h		;7fb9
	inc l			;7fbb
	inc l			;7fbc
	ld (hl),078h		;7fbd
	jp 081ceh		;7fbf
L_7FC2:
	ld a,003h		;7fc2
	ld (0e3e3h),a		;7fc4
	ld a,070h		;7fc7
	ld hl,0e3e5h		;7fc9
	ld (hl),a			;7fcc
	ld a,0e0h		;7fcd
	inc l			;7fcf
	inc l			;7fd0
	ld (hl),a			;7fd1
	ret			;7fd2
L_7FD3:
	ld a,(0e008h)		;7fd3
	and 010h		;7fd6
	jr z,L_7FE1		;7fd8
	push bc			;7fda
	ld c,001h		;7fdb
	call 0b525h		;7fdd
	pop bc			;7fe0
L_7FE1:
	djnz $+65		;7fe1
	call 08202h		;7fe3
	ld hl,010a9h		;7fe6
	ld (0e8f0h),hl		;7fe9
	ld hl,00180h		;7fec
	ld (0e8f2h),hl		;7fef
	ld a,(0e008h)		;7ff2
	and 001h		;7ff5
	jr z,$+27		;7ff7
	ld a,0ffh		;7ff9
	ld (0e3f5h),a		;7ffb

; ----------------------------------------------------------------------
; DATOS partida_7FFE: los dos primeros bytes de `ld a,(0xE3F3)` (3A F3 E3),
;   que sigue en el banco 2: el trazador de un solo banco no puede verla
;   entera (tools/bancos.py); lo leen p01:7FFE (2 bytes)
;   0x7ffe..0x8000  (2 bytes)
DATA_partida_7FFE:
	defb 03ah,0f3h	; 7ffe
