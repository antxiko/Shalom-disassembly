; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 29 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x60e0  (224 bytes)
; ======================================================================


L_6000:
	ld c,a			;6000
	cp 080h		;6001
	jp z,L_60EC		;6003
	cp 081h		;6006
	jp z,L_610A		;6008
	cp 084h		;600b
	jp z,L_6121		;600d
	cp 085h		;6010
	jp z,L_60FF		;6012
	cp 086h		;6015
	jp z,L_60F4		;6017
	ld hl,0e294h		;601a
	ld a,c			;601d
	cp 004h		;601e
	jr nz,L_6025		;6020
	ld a,(hl)			;6022
	cp c			;6023
	ret z			;6024
L_6025:
	ld a,c			;6025
	cp 003h		;6026
	jr nz,L_602D		;6028
	ld a,(hl)			;602a
	cp c			;602b
	ret z			;602c
L_602D:
	ld a,c			;602d
	cp 002h		;602e
	jr nz,L_6035		;6030
	ld a,(hl)			;6032
	cp c			;6033
	ret z			;6034
L_6035:
	ld hl,0e210h		;6035
	ld a,c			;6038
	cp 032h		;6039
	jr nz,L_6040		;603b
	ld a,(hl)			;603d
	cp c			;603e
	ret z			;603f
L_6040:
	ld a,c			;6040
	cp 02fh		;6041
	jr nz,L_6048		;6043
	ld a,(hl)			;6045
	cp c			;6046
	ret z			;6047
L_6048:
	ld hl,0e2edh		;6048
	ld (hl),c			;604b
	ld hl,0612fh		;604c
	ld a,c			;604f
	add a,c			;6050
	ld e,a			;6051
	ld d,000h		;6052
	add hl,de			;6054
	ld e,(hl)			;6055
	inc hl			;6056
	ld d,(hl)			;6057
	ex de,hl			;6058
	ld de,0e2eeh		;6059
	ld bc,0000ch		;605c
	ldir		;605f
	ld ix,0e2f0h		;6061
	ld hl,0e2eeh		;6065
	bit 7,(hl)		;6068
	jp z,L_6079		;606a
	inc hl			;606d
	ld a,(hl)			;606e
	ld hl,0e211h		;606f
	call L_60C0		;6072
	inc ix		;6075
	inc ix		;6077
L_6079:
	ld hl,0e2eeh		;6079
	bit 6,(hl)		;607c
	jp z,L_608D		;607e
	inc hl			;6081
	ld a,(hl)			;6082
	ld hl,0e23dh		;6083
	call L_60C0		;6086
	inc ix		;6089
	inc ix		;608b
L_608D:
	ld hl,0e2eeh		;608d
	bit 5,(hl)		;6090
	jp z,L_60A1		;6092
	inc hl			;6095
	ld a,(hl)			;6096
	ld hl,0e269h		;6097
	call L_60C0		;609a
	inc ix		;609d
	inc ix		;609f
L_60A1:
	ld hl,0e2eeh		;60a1
	bit 4,(hl)		;60a4
	jp z,L_60B5		;60a6
	inc hl			;60a9
	ld a,(hl)			;60aa
	ld hl,0e295h		;60ab
	call L_60C0		;60ae
	inc ix		;60b1
	inc ix		;60b3
L_60B5:
	ld hl,0e2eeh		;60b5
	bit 3,(hl)		;60b8
	ret z			;60ba
	inc hl			;60bb
	ld a,(hl)			;60bc
	ld hl,0e2c1h		;60bd
L_60C0:
	ld b,(hl)			;60c0
	cp b			;60c1
	ret c			;60c2
	ex de,hl			;60c3
	ld (de),a			;60c4
	dec de			;60c5
	ld hl,0e2edh		;60c6
	ld a,(hl)			;60c9
	ld (de),a			;60ca
	inc de			;60cb
	inc de			;60cc
	ld a,(ix+000h)		;60cd
	ld (de),a			;60d0
	inc de			;60d1
	ld a,(ix+001h)		;60d2
	ld (de),a			;60d5
	inc de			;60d6
	ld hl,060e0h		;60d7
	ld bc,0000ch		;60da
	ldir		;60dd
	ret			;60df

; ----------------------------------------------------------------------
; DATOS canal_al_arrancar: 12 bytes que p29:60D7 copia a cada canal cuando
;   arranca una pista; lo leen p29:60D7 (12 bytes)
;   0x60e0..0x60ec  (12 bytes)
DATA_canal_al_arrancar:
	defb 001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 60e0  ............

; ======================================================================
; CODIGO 0x60ec..0x6131  (69 bytes)
; ======================================================================


L_60EC:
	ld hl,0e2ech		;60ec
	res 0,(hl)		;60ef
	jp L_6119		;60f1
L_60F4:
	ld hl,0e2fah		;60f4
	ld (hl),078h		;60f7
	inc hl			;60f9
	ld (hl),005h		;60fa
	jp L_6112		;60fc
L_60FF:
	ld hl,0e2fah		;60ff
	ld (hl),020h		;6102
	inc hl			;6104
	ld (hl),006h		;6105
	jp L_6112		;6107
L_610A:
	ld hl,0e2fah		;610a
	ld (hl),006h		;610d
	inc hl			;610f
	ld (hl),008h		;6110
L_6112:
	ld hl,0e2ech		;6112
	set 0,(hl)		;6115
	res 4,(hl)		;6117
L_6119:
	ld hl,0e2fch		;6119
	xor a			;611c
	ld (hl),a			;611d
	inc hl			;611e
	ld (hl),a			;611f
	ret			;6120
L_6121:
	ld hl,0e2ech		;6121
	set 4,(hl)		;6124
	res 0,(hl)		;6126
	ld hl,0e2fch		;6128
	xor a			;612b
	ld (hl),a			;612c
	inc hl			;612d
	ld (hl),007h		;612e
	ret			;6130

; ----------------------------------------------------------------------
; DATOS sonidos: 97 palabras: la cabecera de los sonidos 0x01-0x61 (p29:604C:
;   0x612F + numero x 2; el 0 no se pide y su palabra es el final de
;   p29:612D); lo leen p29:6048 (194 bytes)
;   0x6131..0x61f3  (194 bytes)
DATA_sonidos:
	defb 0f3h,061h	; 6131
	defb 0ffh,061h	; 6133
	defb 003h,062h	; 6135
	defb 007h,062h	; 6137
	defb 00bh,062h	; 6139
	defb 00fh,062h	; 613b
	defb 013h,062h	; 613d
	defb 01bh,062h	; 613f
	defb 023h,062h	; 6141
	defb 027h,062h	; 6143
	defb 02bh,062h	; 6145
	defb 02fh,062h	; 6147
	defb 033h,062h	; 6149
	defb 037h,062h	; 614b
	defb 03bh,062h	; 614d
	defb 03fh,062h	; 614f
	defb 043h,062h	; 6151
	defb 047h,062h	; 6153
	defb 04bh,062h	; 6155
	defb 051h,062h	; 6157
	defb 055h,062h	; 6159
	defb 059h,062h	; 615b
	defb 05dh,062h	; 615d
	defb 061h,062h	; 615f
	defb 065h,062h	; 6161
	defb 069h,062h	; 6163
	defb 06dh,062h	; 6165
	defb 071h,062h	; 6167
	defb 075h,062h	; 6169
	defb 079h,062h	; 616b
	defb 07dh,062h	; 616d
	defb 081h,062h	; 616f
	defb 085h,062h	; 6171
	defb 089h,062h	; 6173
	defb 08dh,062h	; 6175
	defb 091h,062h	; 6177
	defb 099h,062h	; 6179
	defb 09dh,062h	; 617b
	defb 0a5h,062h	; 617d
	defb 0adh,062h	; 617f
	defb 0b5h,062h	; 6181
	defb 0b9h,062h	; 6183
	defb 0c1h,062h	; 6185
	defb 0c9h,062h	; 6187
	defb 0d1h,062h	; 6189
	defb 0d9h,062h	; 618b
	defb 0e1h,062h	; 618d
	defb 0e9h,062h	; 618f
	defb 0f1h,062h	; 6191
	defb 0f9h,062h	; 6193
	defb 001h,063h	; 6195
	defb 029h,063h	; 6197
	defb 031h,063h	; 6199
	defb 039h,063h	; 619b
	defb 041h,063h	; 619d
	defb 049h,063h	; 619f
	defb 059h,063h	; 61a1
	defb 061h,063h	; 61a3
	defb 069h,063h	; 61a5
	defb 009h,063h	; 61a7
	defb 011h,063h	; 61a9
	defb 019h,063h	; 61ab
	defb 021h,063h	; 61ad
	defb 051h,063h	; 61af
	defb 071h,063h	; 61b1
	defb 075h,063h	; 61b3
	defb 07dh,063h	; 61b5
	defb 081h,063h	; 61b7
	defb 085h,063h	; 61b9
	defb 089h,063h	; 61bb
	defb 08dh,063h	; 61bd
	defb 091h,063h	; 61bf
	defb 095h,063h	; 61c1
	defb 09dh,063h	; 61c3
	defb 0a5h,063h	; 61c5
	defb 0adh,063h	; 61c7
	defb 0b5h,063h	; 61c9
	defb 019h,064h	; 61cb
	defb 0bdh,063h	; 61cd
	defb 0c1h,063h	; 61cf
	defb 0c9h,063h	; 61d1
	defb 0d1h,063h	; 61d3
	defb 0d5h,063h	; 61d5
	defb 0ddh,063h	; 61d7
	defb 0e3h,063h	; 61d9
	defb 0ebh,063h	; 61db
	defb 0f3h,063h	; 61dd
	defb 0fbh,063h	; 61df
	defb 003h,064h	; 61e1
	defb 00bh,064h	; 61e3
	defb 011h,064h	; 61e5
	defb 021h,064h	; 61e7
	defb 029h,064h	; 61e9
	defb 031h,064h	; 61eb
	defb 035h,064h	; 61ed
	defb 03dh,064h	; 61ef
	defb 045h,064h	; 61f1

; ----------------------------------------------------------------------
; DATOS cabecera_61F3: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (12
;   bytes)
;   0x61f3..0x61ff  (12 bytes)
DATA_cabecera_61F3:
	defb 0f8h,0ffh,03ah,06fh,03ah,06fh,03ah,06fh,03ah,06fh,03ah,06fh	; 61f3  ..:o:o:o:o:o

; ----------------------------------------------------------------------
; DATOS cabecera_61FF: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x61ff..0x6203  (4 bytes)
DATA_cabecera_61FF:
	defb 010h,060h,0eah,0b3h	; 61ff

; ----------------------------------------------------------------------
; DATOS cabecera_6203: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6203..0x6207  (4 bytes)
DATA_cabecera_6203:
	defb 010h,030h,02bh,0b4h	; 6203

; ----------------------------------------------------------------------
; DATOS cabecera_6207: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6207..0x620b  (4 bytes)
DATA_cabecera_6207:
	defb 010h,030h,03ah,0b4h	; 6207

; ----------------------------------------------------------------------
; DATOS cabecera_620B: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x620b..0x620f  (4 bytes)
DATA_cabecera_620B:
	defb 010h,050h,049h,0b4h	; 620b

; ----------------------------------------------------------------------
; DATOS cabecera_620F: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x620f..0x6213  (4 bytes)
DATA_cabecera_620F:
	defb 010h,080h,072h,0b4h	; 620f

; ----------------------------------------------------------------------
; DATOS cabecera_6213: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6213..0x621b  (8 bytes)
DATA_cabecera_6213:
	defb 0e0h,0c8h,09dh,0b4h,0dch,0b4h,0e4h,0b4h	; 6213  ........

; ----------------------------------------------------------------------
; DATOS cabecera_621B: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x621b..0x6223  (8 bytes)
DATA_cabecera_621B:
	defb 0e0h,0d0h,0f7h,0b0h,03ch,0b1h,097h,0b1h	; 621b  ....<...

; ----------------------------------------------------------------------
; DATOS cabecera_6223: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6223..0x6227  (4 bytes)
DATA_cabecera_6223:
	defb 010h,090h,0eeh,0b4h	; 6223

; ----------------------------------------------------------------------
; DATOS cabecera_6227: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6227..0x622b  (4 bytes)
DATA_cabecera_6227:
	defb 010h,060h,015h,0b5h	; 6227

; ----------------------------------------------------------------------
; DATOS cabecera_622B: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x622b..0x622f  (4 bytes)
DATA_cabecera_622B:
	defb 010h,080h,04ch,0b5h	; 622b

; ----------------------------------------------------------------------
; DATOS cabecera_622F: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x622f..0x6233  (4 bytes)
DATA_cabecera_622F:
	defb 010h,080h,086h,0b5h	; 622f

; ----------------------------------------------------------------------
; DATOS cabecera_6233: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6233..0x6237  (4 bytes)
DATA_cabecera_6233:
	defb 010h,080h,0afh,0b5h	; 6233

; ----------------------------------------------------------------------
; DATOS cabecera_6237: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6237..0x623b  (4 bytes)
DATA_cabecera_6237:
	defb 010h,080h,0dfh,0b5h	; 6237

; ----------------------------------------------------------------------
; DATOS cabecera_623B: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x623b..0x623f  (4 bytes)
DATA_cabecera_623B:
	defb 010h,038h,03fh,0b6h	; 623b

; ----------------------------------------------------------------------
; DATOS cabecera_623F: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x623f..0x6243  (4 bytes)
DATA_cabecera_623F:
	defb 010h,070h,040h,0b6h	; 623f

; ----------------------------------------------------------------------
; DATOS cabecera_6243: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6243..0x6247  (4 bytes)
DATA_cabecera_6243:
	defb 010h,080h,061h,0b6h	; 6243

; ----------------------------------------------------------------------
; DATOS cabecera_6247: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6247..0x624b  (4 bytes)
DATA_cabecera_6247:
	defb 010h,090h,088h,0b6h	; 6247

; ----------------------------------------------------------------------
; DATOS cabecera_624B: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (6
;   bytes)
;   0x624b..0x6251  (6 bytes)
DATA_cabecera_624B:
	defb 018h,090h,0b3h,0b6h,0cfh,0b6h	; 624b

; ----------------------------------------------------------------------
; DATOS cabecera_6251: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6251..0x6255  (4 bytes)
DATA_cabecera_6251:
	defb 010h,090h,003h,0b7h	; 6251

; ----------------------------------------------------------------------
; DATOS cabecera_6255: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6255..0x6259  (4 bytes)
DATA_cabecera_6255:
	defb 010h,078h,026h,0b7h	; 6255

; ----------------------------------------------------------------------
; DATOS cabecera_6259: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6259..0x625d  (4 bytes)
DATA_cabecera_6259:
	defb 010h,038h,0f6h,0b0h	; 6259

; ----------------------------------------------------------------------
; DATOS cabecera_625D: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x625d..0x6261  (4 bytes)
DATA_cabecera_625D:
	defb 010h,060h,0f2h,0b1h	; 625d

; ----------------------------------------------------------------------
; DATOS cabecera_6261: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6261..0x6265  (4 bytes)
DATA_cabecera_6261:
	defb 010h,060h,015h,0b2h	; 6261

; ----------------------------------------------------------------------
; DATOS cabecera_6265: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6265..0x6269  (4 bytes)
DATA_cabecera_6265:
	defb 010h,060h,056h,0b7h	; 6265

; ----------------------------------------------------------------------
; DATOS cabecera_6269: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6269..0x626d  (4 bytes)
DATA_cabecera_6269:
	defb 010h,060h,067h,0b2h	; 6269

; ----------------------------------------------------------------------
; DATOS cabecera_626D: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x626d..0x6271  (4 bytes)
DATA_cabecera_626D:
	defb 010h,060h,03ah,0b2h	; 626d

; ----------------------------------------------------------------------
; DATOS cabecera_6271: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6271..0x6275  (4 bytes)
DATA_cabecera_6271:
	defb 010h,070h,00ch,0b6h	; 6271

; ----------------------------------------------------------------------
; DATOS cabecera_6275: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6275..0x6279  (4 bytes)
DATA_cabecera_6275:
	defb 010h,078h,083h,0b7h	; 6275

; ----------------------------------------------------------------------
; DATOS cabecera_6279: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6279..0x627d  (4 bytes)
DATA_cabecera_6279:
	defb 010h,0b0h,0c0h,0b2h	; 6279

; ----------------------------------------------------------------------
; DATOS cabecera_627D: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x627d..0x6281  (4 bytes)
DATA_cabecera_627D:
	defb 010h,078h,0b2h,0b7h	; 627d

; ----------------------------------------------------------------------
; DATOS cabecera_6281: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6281..0x6285  (4 bytes)
DATA_cabecera_6281:
	defb 010h,078h,0edh,0b7h	; 6281

; ----------------------------------------------------------------------
; DATOS cabecera_6285: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6285..0x6289  (4 bytes)
DATA_cabecera_6285:
	defb 010h,0b0h,0ebh,0b2h	; 6285

; ----------------------------------------------------------------------
; DATOS cabecera_6289: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6289..0x628d  (4 bytes)
DATA_cabecera_6289:
	defb 010h,0b0h,086h,0b2h	; 6289

; ----------------------------------------------------------------------
; DATOS cabecera_628D: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x628d..0x6291  (4 bytes)
DATA_cabecera_628D:
	defb 010h,0a0h,010h,0b8h	; 628d

; ----------------------------------------------------------------------
; DATOS cabecera_6291: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6291..0x6299  (8 bytes)
DATA_cabecera_6291:
	defb 0e0h,0e0h,032h,0b8h,032h,0b8h,032h,0b8h	; 6291  ..2.2.2.

; ----------------------------------------------------------------------
; DATOS cabecera_6299: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6299..0x629d  (4 bytes)
DATA_cabecera_6299:
	defb 010h,0d0h,033h,0b8h	; 6299

; ----------------------------------------------------------------------
; DATOS cabecera_629D: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x629d..0x62a5  (8 bytes)
DATA_cabecera_629D:
	defb 0e0h,0d0h,04ch,0b8h,06ah,0b8h,095h,0b8h	; 629d  ..L.j...

; ----------------------------------------------------------------------
; DATOS cabecera_62A5: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62a5..0x62ad  (8 bytes)
DATA_cabecera_62A5:
	defb 0e0h,003h,017h,0bah,050h,0bah,071h,0bah	; 62a5  ....P.q.

; ----------------------------------------------------------------------
; DATOS cabecera_62AD: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62ad..0x62b5  (8 bytes)
DATA_cabecera_62AD:
	defb 0e0h,050h,020h,0b3h,02ah,0b3h,036h,0b3h	; 62ad  .P .*.6.

; ----------------------------------------------------------------------
; DATOS cabecera_62B5: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x62b5..0x62b9  (4 bytes)
DATA_cabecera_62B5:
	defb 010h,0f0h,0a6h,0bah	; 62b5

; ----------------------------------------------------------------------
; DATOS cabecera_62B9: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62b9..0x62c1  (8 bytes)
DATA_cabecera_62B9:
	defb 0e0h,045h,09dh,0bfh,09dh,0bfh,09dh,0bfh	; 62b9  .E......

; ----------------------------------------------------------------------
; DATOS cabecera_62C1: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62c1..0x62c9  (8 bytes)
DATA_cabecera_62C1:
	defb 0e0h,003h,0c0h,070h,057h,071h,059h,072h	; 62c1  ...pWqYr

; ----------------------------------------------------------------------
; DATOS cabecera_62C9: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62c9..0x62d1  (8 bytes)
DATA_cabecera_62C9:
	defb 0e0h,003h,0f6h,0afh,03ah,0b0h,084h,0b0h	; 62c9  ....:...

; ----------------------------------------------------------------------
; DATOS cabecera_62D1: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62d1..0x62d9  (8 bytes)
DATA_cabecera_62D1:
	defb 0e0h,003h,02dh,09dh,0b0h,09dh,065h,09eh	; 62d1  ..-...e.

; ----------------------------------------------------------------------
; DATOS cabecera_62D9: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62d9..0x62e1  (8 bytes)
DATA_cabecera_62D9:
	defb 0e0h,003h,03bh,07bh,01ah,07ch,0cdh,07ch	; 62d9  ...{.|.|

; ----------------------------------------------------------------------
; DATOS cabecera_62E1: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62e1..0x62e9  (8 bytes)
DATA_cabecera_62E1:
	defb 0e0h,005h,0c2h,07dh,01eh,07eh,07ah,07eh	; 62e1  ...}.~z~

; ----------------------------------------------------------------------
; DATOS cabecera_62E9: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62e9..0x62f1  (8 bytes)
DATA_cabecera_62E9:
	defb 0e0h,003h,0b9h,080h,065h,081h,0f0h,081h	; 62e9  ....e...

; ----------------------------------------------------------------------
; DATOS cabecera_62F1: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62f1..0x62f9  (8 bytes)
DATA_cabecera_62F1:
	defb 0e0h,003h,0dfh,07eh,073h,07fh,0f7h,07fh	; 62f1  ...~s...

; ----------------------------------------------------------------------
; DATOS cabecera_62F9: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x62f9..0x6301  (8 bytes)
DATA_cabecera_62F9:
	defb 0e0h,003h,0b9h,080h,065h,081h,0f0h,081h	; 62f9  ....e...

; ----------------------------------------------------------------------
; DATOS cabecera_6301: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6301..0x6309  (8 bytes)
DATA_cabecera_6301:
	defb 0e0h,003h,067h,09fh,05dh,0a0h,043h,0a1h	; 6301  ..g.].C.

; ----------------------------------------------------------------------
; DATOS cabecera_6309: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6309..0x6311  (8 bytes)
DATA_cabecera_6309:
	defb 0e0h,003h,082h,09fh,081h,0a0h,061h,0a1h	; 6309  ......a.

; ----------------------------------------------------------------------
; DATOS cabecera_6311: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6311..0x6319  (8 bytes)
DATA_cabecera_6311:
	defb 0e0h,003h,03ah,09dh,0c9h,09dh,073h,09eh	; 6311  ..:...s.

; ----------------------------------------------------------------------
; DATOS cabecera_6319: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6319..0x6321  (8 bytes)
DATA_cabecera_6319:
	defb 0e0h,003h,0d3h,0aeh,01eh,0afh,088h,0afh	; 6319  ........

; ----------------------------------------------------------------------
; DATOS cabecera_6321: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6321..0x6329  (8 bytes)
DATA_cabecera_6321:
	defb 0e0h,003h,0afh,084h,0f0h,085h,038h,087h	; 6321  ......8.

; ----------------------------------------------------------------------
; DATOS cabecera_6329: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6329..0x6331  (8 bytes)
DATA_cabecera_6329:
	defb 0e0h,003h,0e4h,093h,0ceh,094h,037h,095h	; 6329  ......7.

; ----------------------------------------------------------------------
; DATOS cabecera_6331: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6331..0x6339  (8 bytes)
DATA_cabecera_6331:
	defb 0e0h,003h,05ch,09ah,0cdh,09ah,0f3h,09bh	; 6331  ..\.....

; ----------------------------------------------------------------------
; DATOS cabecera_6339: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6339..0x6341  (8 bytes)
DATA_cabecera_6339:
	defb 0e0h,003h,09ch,08dh,065h,08fh,0bdh,091h	; 6339  ....e...

; ----------------------------------------------------------------------
; DATOS cabecera_6341: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6341..0x6349  (8 bytes)
DATA_cabecera_6341:
	defb 0e0h,0e0h,075h,082h,0b9h,082h,0fdh,082h	; 6341  ..u.....

; ----------------------------------------------------------------------
; DATOS cabecera_6349: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6349..0x6351  (8 bytes)
DATA_cabecera_6349:
	defb 0e0h,003h,087h,082h,0cbh,082h,00dh,083h	; 6349  ........

; ----------------------------------------------------------------------
; DATOS cabecera_6351: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6351..0x6359  (8 bytes)
DATA_cabecera_6351:
	defb 0e0h,003h,0f5h,0afh,0f5h,0afh,0f5h,0afh	; 6351  ........

; ----------------------------------------------------------------------
; DATOS cabecera_6359: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6359..0x6361  (8 bytes)
DATA_cabecera_6359:
	defb 0e0h,003h,073h,0a2h,0e7h,0a2h,05ah,0a3h	; 6359  ..s...Z.

; ----------------------------------------------------------------------
; DATOS cabecera_6361: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6361..0x6369  (8 bytes)
DATA_cabecera_6361:
	defb 0e0h,003h,082h,083h,0b7h,083h,0efh,083h	; 6361  ........

; ----------------------------------------------------------------------
; DATOS cabecera_6369: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6369..0x6371  (8 bytes)
DATA_cabecera_6369:
	defb 0e0h,003h,03bh,06fh,087h,06fh,0f5h,06fh	; 6369  ...o.o.o

; ----------------------------------------------------------------------
; DATOS cabecera_6371: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6371..0x6375  (4 bytes)
DATA_cabecera_6371:
	defb 010h,070h,0f7h,0bah	; 6371

; ----------------------------------------------------------------------
; DATOS cabecera_6375: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6375..0x637d  (8 bytes)
DATA_cabecera_6375:
	defb 0e0h,003h,023h,096h,060h,096h,0a4h,096h	; 6375  ..#.`...

; ----------------------------------------------------------------------
; DATOS cabecera_637D: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x637d..0x6381  (4 bytes)
DATA_cabecera_637D:
	defb 010h,040h,03eh,0bbh	; 637d

; ----------------------------------------------------------------------
; DATOS cabecera_6381: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6381..0x6385  (4 bytes)
DATA_cabecera_6381:
	defb 010h,090h,08ah,0bbh	; 6381

; ----------------------------------------------------------------------
; DATOS cabecera_6385: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6385..0x6389  (4 bytes)
DATA_cabecera_6385:
	defb 010h,050h,0bah,0bbh	; 6385

; ----------------------------------------------------------------------
; DATOS cabecera_6389: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6389..0x638d  (4 bytes)
DATA_cabecera_6389:
	defb 010h,090h,0e4h,0bbh	; 6389

; ----------------------------------------------------------------------
; DATOS cabecera_638D: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x638d..0x6391  (4 bytes)
DATA_cabecera_638D:
	defb 010h,050h,0e5h,0bbh	; 638d

; ----------------------------------------------------------------------
; DATOS cabecera_6391: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6391..0x6395  (4 bytes)
DATA_cabecera_6391:
	defb 010h,060h,0f6h,0bbh	; 6391

; ----------------------------------------------------------------------
; DATOS cabecera_6395: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6395..0x639d  (8 bytes)
DATA_cabecera_6395:
	defb 0e0h,003h,092h,0a5h,0e7h,0a5h,03ch,0a6h	; 6395  ......<.

; ----------------------------------------------------------------------
; DATOS cabecera_639D: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x639d..0x63a5  (8 bytes)
DATA_cabecera_639D:
	defb 0e0h,003h,044h,088h,0a5h,088h,006h,089h	; 639d  ..D.....

; ----------------------------------------------------------------------
; DATOS cabecera_63A5: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x63a5..0x63ad  (8 bytes)
DATA_cabecera_63A5:
	defb 0e0h,003h,067h,089h,03ah,08ah,046h,08bh	; 63a5  ..g.:.F.

; ----------------------------------------------------------------------
; DATOS cabecera_63AD: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x63ad..0x63b5  (8 bytes)
DATA_cabecera_63AD:
	defb 0e0h,003h,088h,0a7h,08dh,0a8h,0c5h,0a9h	; 63ad  ........

; ----------------------------------------------------------------------
; DATOS cabecera_63B5: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x63b5..0x63bd  (8 bytes)
DATA_cabecera_63B5:
	defb 0e0h,005h,09bh,08dh,09bh,08dh,09bh,08dh	; 63b5  ........

; ----------------------------------------------------------------------
; DATOS cabecera_63BD: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x63bd..0x63c1  (4 bytes)
DATA_cabecera_63BD:
	defb 010h,060h,042h,0bch	; 63bd

; ----------------------------------------------------------------------
; DATOS cabecera_63C1: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x63c1..0x63c9  (8 bytes)
DATA_cabecera_63C1:
	defb 0e0h,0e0h,03ah,0beh,06bh,0beh,096h,0beh	; 63c1  ..:.k...

; ----------------------------------------------------------------------
; DATOS cabecera_63C9: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x63c9..0x63d1  (8 bytes)
DATA_cabecera_63C9:
	defb 0e0h,070h,036h,0bdh,064h,0bdh,093h,0bdh	; 63c9  .p6.d...

; ----------------------------------------------------------------------
; DATOS cabecera_63D1: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x63d1..0x63d5  (4 bytes)
DATA_cabecera_63D1:
	defb 010h,050h,0e7h,0bdh	; 63d1

; ----------------------------------------------------------------------
; DATOS cabecera_63D5: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x63d5..0x63dd  (8 bytes)
DATA_cabecera_63D5:
	defb 0e0h,0c0h,0c3h,0beh,0e9h,0beh,02eh,0bfh	; 63d5  ........

; ----------------------------------------------------------------------
; DATOS cabecera_63DD: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (6
;   bytes)
;   0x63dd..0x63e3  (6 bytes)
DATA_cabecera_63DD:
	defb 018h,050h,09ch,0bfh,09ch,0bfh	; 63dd

; ----------------------------------------------------------------------
; DATOS cabecera_63E3: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x63e3..0x63eb  (8 bytes)
DATA_cabecera_63E3:
	defb 0e0h,0b0h,06ah,0aeh,088h,0aeh,0bdh,0aeh	; 63e3  ..j.....

; ----------------------------------------------------------------------
; DATOS cabecera_63EB: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x63eb..0x63f3  (8 bytes)
DATA_cabecera_63EB:
	defb 0e0h,003h,067h,089h,03ah,08ah,046h,08bh	; 63eb  ..g.:.F.

; ----------------------------------------------------------------------
; DATOS cabecera_63F3: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x63f3..0x63fb  (8 bytes)
DATA_cabecera_63F3:
	defb 0e0h,003h,081h,0ach,017h,0adh,0bdh,0adh	; 63f3  ........

; ----------------------------------------------------------------------
; DATOS cabecera_63FB: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x63fb..0x6403  (8 bytes)
DATA_cabecera_63FB:
	defb 0e0h,055h,0d2h,075h,0b2h,077h,098h,079h	; 63fb  .U.u.w.y

; ----------------------------------------------------------------------
; DATOS cabecera_6403: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6403..0x640b  (8 bytes)
DATA_cabecera_6403:
	defb 0e0h,003h,0ddh,096h,0a2h,097h,03fh,098h	; 6403  ......?.

; ----------------------------------------------------------------------
; DATOS cabecera_640B: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (6
;   bytes)
;   0x640b..0x6411  (6 bytes)
DATA_cabecera_640B:
	defb 018h,0a0h,0c3h,0beh,02eh,0bfh	; 640b

; ----------------------------------------------------------------------
; DATOS cabecera_6411: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6411..0x6419  (8 bytes)
DATA_cabecera_6411:
	defb 0e0h,003h,072h,0aeh,090h,0aeh,0c5h,0aeh	; 6411  ..r.....

; ----------------------------------------------------------------------
; DATOS cabecera_6419: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6419..0x6421  (8 bytes)
DATA_cabecera_6419:
	defb 0e0h,003h,02bh,0abh,03ch,0abh,050h,0abh	; 6419  ..+.<.P.

; ----------------------------------------------------------------------
; DATOS cabecera_6421: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6421..0x6429  (8 bytes)
DATA_cabecera_6421:
	defb 0e0h,003h,072h,0aeh,090h,0aeh,0c5h,0aeh	; 6421  ..r.....

; ----------------------------------------------------------------------
; DATOS cabecera_6429: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6429..0x6431  (8 bytes)
DATA_cabecera_6429:
	defb 0e0h,080h,09eh,0bfh,0a7h,0bfh,0b0h,0bfh	; 6429  ........

; ----------------------------------------------------------------------
; DATOS cabecera_6431: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6431..0x6435  (4 bytes)
DATA_cabecera_6431:
	defb 010h,080h,0b9h,0bfh	; 6431

; ----------------------------------------------------------------------
; DATOS cabecera_6435: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x6435..0x643d  (8 bytes)
DATA_cabecera_6435:
	defb 0e0h,003h,0a1h,099h,0cch,099h,01eh,09ah	; 6435  ........

; ----------------------------------------------------------------------
; DATOS cabecera_643D: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (8
;   bytes)
;   0x643d..0x6445  (8 bytes)
DATA_cabecera_643D:
	defb 0e0h,004h,0f7h,098h,025h,099h,00eh,099h	; 643d  ....%...

; ----------------------------------------------------------------------
; DATOS cabecera_6445: [canales: bits 7-3][prioridad] y la pista de cada canal
;   (p29:6061-60BD; el motor copia 12 bytes, p29:605C); lo leen p29:6048 (4
;   bytes)
;   0x6445..0x6449  (4 bytes)
DATA_cabecera_6445:
	defb 010h,040h,0f6h,0b0h	; 6445

; ======================================================================
; CODIGO 0x6449..0x6537  (238 bytes)
; ======================================================================


L_6449:
	ld a,(0e2feh)		;6449
	call L_6C40		;644c
	ld a,(0e2ech)		;644f
	bit 0,a		;6452
	call nz,L_67E5		;6454
	ld a,(0e2ech)		;6457
	bit 4,a		;645a
	call nz,L_6837		;645c
	ld a,001h		;645f
	ld (0e2ffh),a		;6461
	ld ix,0e210h		;6464
	call L_649F		;6468
	ld a,002h		;646b
	ld (0e2ffh),a		;646d
	ld ix,0e23ch		;6470
	call L_649F		;6474
	ld a,004h		;6477
	ld (0e2ffh),a		;6479
	ld ix,0e268h		;647c
	call L_649F		;6480
	ld a,008h		;6483
	ld (0e2ffh),a		;6485
	ld ix,0e294h		;6488
	call L_649F		;648c
	ld a,010h		;648f
	ld (0e2ffh),a		;6491
	ld ix,0e2c0h		;6494
	call L_649F		;6498
	call L_6B14		;649b
	ret			;649e
L_649F:
	ld a,(ix+000h)		;649f
	or a			;64a2
	call nz,L_64A7		;64a3
	ret			;64a6
L_64A7:
	dec (ix+004h)		;64a7
	jp nz,L_669B		;64aa
	ld l,(ix+002h)		;64ad
	ld h,(ix+003h)		;64b0
L_64B3:
	ld a,(hl)			;64b3
	cp 0ffh		;64b4
	jp z,L_684F		;64b6
	cp 0d0h		;64b9
	jp c,L_64C5		;64bb
	call L_68B7		;64be
	inc hl			;64c1
	jp L_64B3		;64c2
L_64C5:
	bit 0,(ix+009h)		;64c5
	jp nz,L_64DC		;64c9
	bit 1,(ix+009h)		;64cc
	jp nz,L_6543		;64d0
	ld a,(ix+009h)		;64d3
	and 03ch		;64d6
	jp nz,L_65BD		;64d8
	ret			;64db
L_64DC:
	ld a,(hl)			;64dc
	and 00fh		;64dd
	ld b,a			;64df
	ld a,(ix+014h)		;64e0
	jp z,L_64EA		;64e3
	ld e,a			;64e6
L_64E7:
	add a,e			;64e7
	djnz L_64E7		;64e8
L_64EA:
	ld (ix+004h),a		;64ea
	ld a,(hl)			;64ed
	and 0f0h		;64ee
	rrca			;64f0
	rrca			;64f1
	rrca			;64f2
	rrca			;64f3
	call L_67DD		;64f4
	bit 7,(ix+009h)		;64f7
	ret nz			;64fb
	cp 00ch		;64fc
	jp nc,L_6532		;64fe
	ld hl,06537h		;6501
	ld e,a			;6504
	ld d,000h		;6505
	add hl,de			;6507
	ld l,(hl)			;6508
	ld h,000h		;6509
	ld a,(ix+016h)		;650b
	or a			;650e
	jp z,L_6516		;650f
	ld b,a			;6512
L_6513:
	add hl,hl			;6513
	djnz L_6513		;6514
L_6516:
	ld (ix+010h),l		;6516
	ld (ix+011h),h		;6519
	ld e,(ix+015h)		;651c
	ld a,(0e2ech)		;651f
	and 011h		;6522
	call nz,L_681C		;6524
	ld (ix+012h),e		;6527
	ld (ix+00dh),002h		;652a
	call L_6650		;652e
	ret			;6531
L_6532:
	ld (ix+00dh),000h		;6532
	ret			;6536

; ----------------------------------------------------------------------
; DATOS periodos: 12 bytes: el periodo de cada nota de la octava (p29:6501),
;   que p29:6513 dobla por octava; lo leen p29:6501 (12 bytes)
;   0x6537..0x6543  (12 bytes)
DATA_periodos:
	defb 06ah,064h,05eh,059h,054h,04fh,04ah,046h,042h,03fh,03bh,038h	; 6537  jd^YTOJFB?.8

; ======================================================================
; CODIGO 0x6543..0x68cc  (905 bytes)
; ======================================================================


L_6543:
	ld a,(ix+00dh)		;6543
	and 003h		;6546
	jp z,L_65AE		;6548
	cp 001h		;654b
	jp z,L_658B		;654d
	ld a,(hl)			;6550
	bit 6,(ix+00eh)		;6551
	jp nz,L_6575		;6555
	bit 5,(ix+00eh)		;6558
	jp nz,L_657B		;655c
	and 0f0h		;655f
	ld b,a			;6561
	xor (hl)			;6562
	ld d,a			;6563
	inc hl			;6564
	ld a,(hl)			;6565
	ld (ix+010h),a		;6566
	ld (ix+011h),d		;6569
	ld a,b			;656c
	rrca			;656d
	rrca			;656e
	rrca			;656f
	rrca			;6570
	ld b,a			;6571
	jp L_658F		;6572
L_6575:
	ld (ix+010h),a		;6575
	jp L_659D		;6578
L_657B:
	and 0f0h		;657b
	rrca			;657d
	rrca			;657e
	rrca			;657f
	rrca			;6580
	ld b,a			;6581
	ld a,(hl)			;6582
	and 00fh		;6583
	ld (ix+011h),a		;6585
	jp L_658F		;6588
L_658B:
	ld a,(hl)			;658b
	and 00fh		;658c
	ld b,a			;658e
L_658F:
	bit 2,(ix+00dh)		;658f
	jp z,L_6598		;6593
	ld b,010h		;6596
L_6598:
	inc b			;6598
	inc b			;6599
	ld (ix+012h),b		;659a
L_659D:
	ld e,(ix+012h)		;659d
	ld a,(0e2ech)		;65a0
	and 011h		;65a3
	call nz,L_681C		;65a5
	ld (ix+012h),e		;65a8
	call L_6650		;65ab
L_65AE:
	bit 7,(ix+009h)		;65ae
	ret nz			;65b2
	call L_67DD		;65b3
	ld a,(ix+013h)		;65b6
	ld (ix+004h),a		;65b9
	ret			;65bc
L_65BD:
	set 7,(ix+009h)		;65bd
	call L_64DC		;65c1
	ld b,a			;65c4
	call L_65F4		;65c5
	ld a,b			;65c8
	add a,a			;65c9
	ld e,a			;65ca
	ld d,000h		;65cb
	add hl,de			;65cd
	ld e,(hl)			;65ce
	inc hl			;65cf
	ld d,(hl)			;65d0
	ex de,hl			;65d1
	ld a,(hl)			;65d2
L_65D3:
	set 1,(ix+009h)		;65d3
	call L_64B3		;65d7
	res 1,(ix+009h)		;65da
	res 7,(ix+009h)		;65de
	ld a,(ix+013h)		;65e2
	ld (ix+019h),a		;65e5
	inc hl			;65e8
	ld (ix+017h),l		;65e9
	ld (ix+018h),h		;65ec
	set 0,(ix+00eh)		;65ef
	ret			;65f3
L_65F4:
	bit 2,(ix+009h)		;65f4
	jp nz,L_6610		;65f8
	bit 3,(ix+009h)		;65fb
	jp nz,L_6620		;65ff
	bit 4,(ix+009h)		;6602
	jp nz,L_6630		;6606
	bit 5,(ix+009h)		;6609
	jp nz,L_6640		;660d
L_6610:
	ld a,(ix+016h)		;6610
	cp 001h		;6613
	jp z,L_661C		;6615
	ld hl,06c5dh		;6618
	ret			;661b
L_661C:
	ld hl,06c71h		;661c
	ret			;661f
L_6620:
	ld a,(ix+016h)		;6620
	cp 001h		;6623
	jp z,L_662C		;6625
	ld hl,06cd4h		;6628
	ret			;662b
L_662C:
	ld hl,06d97h		;662c
	ret			;662f
L_6630:
	ld a,(ix+016h)		;6630
	cp 001h		;6633
	jp z,L_663C		;6635
	ld hl,06e21h		;6638
	ret			;663b
L_663C:
	ld hl,06e73h		;663c
	ret			;663f
L_6640:
	ld a,(ix+016h)		;6640
	cp 001h		;6643
	jp z,L_664C		;6645
	ld hl,06e8ch		;6648
	ret			;664b
L_664C:
	ld hl,06f0dh		;664c
	ret			;664f
L_6650:
	call L_66D5		;6650
	res 4,(ix+00eh)		;6653
	ld a,(ix+00fh)		;6657
	and 0d7h		;665a
	ld (ix+00fh),a		;665c
	xor a			;665f
	ld (ix+01dh),a		;6660
	ld (ix+01eh),a		;6663
	ld (ix+01fh),a		;6666
	ld (ix+020h),a		;6669
	set 2,(ix+00fh)		;666c
	ld a,(ix+012h)		;6670
	bit 7,(ix+00eh)		;6673
	jp z,L_6681		;6677
	ld e,(ix+015h)		;667a
	sub e			;667d
	call m,L_6699		;667e
L_6681:
	ld (ix+00ch),a		;6681
	bit 2,(ix+00dh)		;6684
	ret nz			;6688
	bit 1,(ix+00fh)		;6689
	ret z			;668d
	ld a,(ix+025h)		;668e
	ld (ix+00ch),a		;6691
	res 2,(ix+00fh)		;6694
	ret			;6698
L_6699:
	xor a			;6699
	ret			;669a
L_669B:
	bit 0,(ix+00eh)		;669b
	jp nz,L_66B1		;669f
	bit 2,(ix+00eh)		;66a2
	call nz,L_66F2		;66a6
	bit 0,(ix+00fh)		;66a9
	call nz,L_6747		;66ad
	ret			;66b0
L_66B1:
	dec (ix+019h)		;66b1
	ret nz			;66b4
	ld l,(ix+017h)		;66b5
	ld h,(ix+018h)		;66b8
	ld a,(hl)			;66bb
	cp 0ffh		;66bc
	jp z,L_66C9		;66be
	set 7,(ix+009h)		;66c1
	call L_65D3		;66c5
	ret			;66c8
L_66C9:
	res 0,(ix+00eh)		;66c9
	xor a			;66cd
	ld (ix+00ch),a		;66ce
	ld (ix+00dh),a		;66d1
	ret			;66d4
L_66D5:
	ld e,(ix+010h)		;66d5
	ld d,(ix+011h)		;66d8
	bit 1,(ix+00eh)		;66db
	jp z,L_66EB		;66df
	ld a,(ix+026h)		;66e2
	add a,e			;66e5
	ld e,a			;66e6
	jp nc,L_66EB		;66e7
	inc d			;66ea
L_66EB:
	ld (ix+00ah),e		;66eb
	ld (ix+00bh),d		;66ee
	ret			;66f1
L_66F2:
	inc (ix+01eh)		;66f2
	ld a,(ix+01eh)		;66f5
	ld b,(ix+00eh)		;66f8
	bit 4,b		;66fb
	jp nz,L_6714		;66fd
	bit 3,b		;6700
	jp z,L_6714		;6702
	cp (ix+01ah)		;6705
	ret nz			;6708
	ld (ix+01eh),000h		;6709
	set 4,(ix+00eh)		;670d
	jp L_6718		;6711
L_6714:
	cp (ix+01bh)		;6714
	ret nz			;6717
L_6718:
	ld e,(ix+00ah)		;6718
	ld d,(ix+00bh)		;671b
	ld b,(ix+01ch)		;671e
	ld a,(ix+01dh)		;6721
	cpl			;6724
	ld (ix+01dh),a		;6725
	and a			;6728
	ld a,e			;6729
	jp nz,L_6736		;672a
	add a,b			;672d
	ld e,a			;672e
	jp nc,L_673C		;672f
	inc d			;6732
	jp L_673C		;6733
L_6736:
	sub b			;6736
	ld e,a			;6737
	jp nc,L_673C		;6738
	dec d			;673b
L_673C:
	ld (ix+00ah),e		;673c
	ld (ix+00bh),d		;673f
	ld (ix+01eh),000h		;6742
	ret			;6746
L_6747:
	bit 2,(ix+00dh)		;6747
	ret nz			;674b
	call L_6753		;674c
	ld (ix+00ch),e		;674f
	ret			;6752
L_6753:
	ld e,(ix+00ch)		;6753
	inc (ix+01fh)		;6756
	ld b,(ix+01fh)		;6759
	bit 5,(ix+00fh)		;675c
	jp nz,L_67D1		;6760
	bit 3,(ix+00fh)		;6763
	jp nz,L_6798		;6767
	bit 2,(ix+00fh)		;676a
	jp nz,L_6784		;676e
	ld a,e			;6771
	inc a			;6772
	ld e,a			;6773
	cp (ix+012h)		;6774
	ret c			;6777
	set 2,(ix+00fh)		;6778
	ld e,(ix+012h)		;677c
	ld (ix+01fh),000h		;677f
	ret			;6783
L_6784:
	ld a,e			;6784
	dec a			;6785
	jp m,L_678A		;6786
	ld e,a			;6789
L_678A:
	ld a,b			;678a
	cp (ix+021h)		;678b
	ret c			;678e
	ld (ix+01fh),000h		;678f
	set 3,(ix+00fh)		;6793
	ret			;6797
L_6798:
	bit 4,(ix+00fh)		;6798
	jp nz,L_67BB		;679c
	ld a,b			;679f
	cp (ix+022h)		;67a0
	ret nz			;67a3
	ld a,e			;67a4
	dec a			;67a5
	ret m			;67a6
	ld e,a			;67a7
	inc (ix+020h)		;67a8
	ld a,(ix+020h)		;67ab
	cp (ix+023h)		;67ae
	ld (ix+01fh),000h		;67b1
	ret nz			;67b5
	set 5,(ix+00fh)		;67b6
	ret			;67ba
L_67BB:
	ld a,(ix+022h)		;67bb
	ld d,a			;67be
	ld a,e			;67bf
	sub d			;67c0
	ld e,000h		;67c1
	jp m,L_67C7		;67c3
	ld e,a			;67c6
L_67C7:
	ld a,b			;67c7
	cp (ix+023h)		;67c8
	ret nz			;67cb
	set 5,(ix+00fh)		;67cc
	ret			;67d0
L_67D1:
	ld a,(ix+004h)		;67d1
	cp (ix+024h)		;67d4
	ret nc			;67d7
	ld a,e			;67d8
	dec a			;67d9
	ret m			;67da
	ld e,a			;67db
	ret			;67dc
L_67DD:
	inc hl			;67dd
	ld (ix+002h),l		;67de
	ld (ix+003h),h		;67e1
	ret			;67e4
L_67E5:
	ld hl,0e2fch		;67e5
	ld de,0e2fah		;67e8
	ld a,(de)			;67eb
	ld b,a			;67ec
	inc de			;67ed
	ld a,(de)			;67ee
	ld c,a			;67ef
	inc (hl)			;67f0
	ld a,(hl)			;67f1
	cp b			;67f2
	ret nz			;67f3
	ld (hl),000h		;67f4
	inc hl			;67f6
	inc (hl)			;67f7
	ld a,(hl)			;67f8
	cp c			;67f9
	ret nz			;67fa
	ld hl,0e2ech		;67fb
	res 0,(hl)		;67fe
	xor a			;6800
	ld hl,0e2fch		;6801
	ld (hl),a			;6804
	inc hl			;6805
	ld (hl),a			;6806
	ld de,0002ch		;6807
	ld ix,0e210h		;680a
	call L_684F		;680e
	add ix,de		;6811
	call L_684F		;6813
	add ix,de		;6816
	call L_684F		;6818
	ret			;681b
L_681C:
	ld a,(0e2ffh)		;681c
	cp 008h		;681f
	ret nc			;6821
	bit 2,(ix+00dh)		;6822
	jp nz,L_6834		;6826
	ld a,(0e2fdh)		;6829
	ld b,a			;682c
	ld a,e			;682d
	sub b			;682e
	ld e,000h		;682f
	ret m			;6831
	ld e,a			;6832
	ret			;6833
L_6834:
	ld e,000h		;6834
	ret			;6836
L_6837:
	ld hl,0e2fch		;6837
	inc (hl)			;683a
	ld a,(hl)			;683b
	cp 010h		;683c
	ret nz			;683e
	ld (hl),000h		;683f
	inc hl			;6841
	dec (hl)			;6842
	ret nz			;6843
	ld hl,0e2ech		;6844
	res 4,(hl)		;6847
	ld hl,0e2fch		;6849
	ld (hl),000h		;684c
	ret			;684e
L_684F:
	xor a			;684f
	ld (ix+000h),a		;6850
	ld (ix+001h),a		;6853
	ld (ix+005h),a		;6856
	ld (ix+006h),a		;6859
	ld (ix+00ah),a		;685c
	ld (ix+00bh),a		;685f
	ld (ix+00ch),a		;6862
	ld (ix+00dh),a		;6865
	ld (ix+00eh),a		;6868
	ld (ix+00fh),a		;686b
	call L_6889		;686e
	ld hl,0e302h		;6871
	ld a,(0e2ffh)		;6874
	cp 008h		;6877
	jp nz,L_6886		;6879
	res 1,(hl)		;687c
	bit 3,(hl)		;687e
	ret z			;6880
	res 3,(hl)		;6881
	set 2,(hl)		;6883
	ret			;6885
L_6886:
	res 3,(hl)		;6886
	ret			;6888
L_6889:
	ld hl,0e306h		;6889
	ld a,(0e2ffh)		;688c
	cp 010h		;688f
	jp z,L_68AF		;6891
	cp 008h		;6894
	jp z,L_68A7		;6896
	cp 004h		;6899
	jp z,L_68A1		;689b
	cp 002h		;689e
	ret nz			;68a0
L_68A1:
	res 3,(hl)		;68a1
	ret			;68a3
L_68A4:
	res 1,(hl)		;68a4
	ret			;68a6
L_68A7:
	ld a,(0e268h)		;68a7
	or a			;68aa
	ret z			;68ab
	set 1,(hl)		;68ac
	ret			;68ae
L_68AF:
	ld a,(0e23ch)		;68af
	or a			;68b2
	ret z			;68b3
	set 3,(hl)		;68b4
	ret			;68b6
L_68B7:
	cp 0e0h		;68b7
	jp c,L_6AFE		;68b9
	and 01fh		;68bc
	push hl			;68be
	ld hl,068cch		;68bf
	add a,a			;68c2
	ld e,a			;68c3
	ld d,000h		;68c4
	add hl,de			;68c6
	ld e,(hl)			;68c7
	inc hl			;68c8
	ld d,(hl)			;68c9
	ex de,hl			;68ca
	jp (hl)			;68cb

; ----------------------------------------------------------------------
; DATOS saltos_68CC: tabla de 31 palabras del despachador (call 0x408D en
;   0x68CB); lo leen L_40AB (62 bytes)
;   0x68cc..0x690a  (62 bytes)
DATA_saltos_68CC:
	defb 00ah,069h	; 68cc
	defb 020h,069h	; 68ce
	defb 00ah,069h	; 68d0
	defb 020h,069h	; 68d2
	defb 040h,069h	; 68d4
	defb 06bh,069h	; 68d6
	defb 07fh,069h	; 68d8
	defb 08fh,069h	; 68da
	defb 0a1h,069h	; 68dc
	defb 0b2h,069h	; 68de
	defb 0b9h,069h	; 68e0
	defb 0c0h,069h	; 68e2
	defb 013h,06ah	; 68e4
	defb 01dh,06ah	; 68e6
	defb 024h,06ah	; 68e8
	defb 02fh,06ah	; 68ea
	defb 035h,06ah	; 68ec
	defb 03fh,06ah	; 68ee
	defb 05ah,06ah	; 68f0
	defb 069h,06ah	; 68f2
	defb 06fh,06ah	; 68f4
	defb 075h,06ah	; 68f6
	defb 07bh,06ah	; 68f8
	defb 085h,06ah	; 68fa
	defb 08bh,06ah	; 68fc
	defb 092h,06ah	; 68fe
	defb 09dh,06ah	; 6900
	defb 0a5h,06ah	; 6902
	defb 0c0h,06ah	; 6904
	defb 0d7h,06ah	; 6906
	defb 0dbh,06ah	; 6908

; ======================================================================
; CODIGO 0x690a..0x6c51  (839 bytes)
; ======================================================================


L_690A:
	pop hl			;690a
L_690B:
	res 6,(ix+00eh)		;690b
	ld a,(hl)			;690f
	and 003h		;6910
	ld (ix+00dh),a		;6912
	ld b,a			;6915
	inc hl			;6916
	ld a,(hl)			;6917
	ld (ix+013h),a		;6918
	ld a,b			;691b
	or a			;691c
	ret nz			;691d
	dec hl			;691e
	ret			;691f
L_6920:
	pop hl			;6920
	ld a,(0e2ffh)		;6921
	cp 008h		;6924
	ld a,(0e302h)		;6926
	jp nz,L_6936		;6929
	set 0,a		;692c
	res 1,a		;692e
	ld (0e302h),a		;6930
	jp L_690B		;6933
L_6936:
	set 2,a		;6936
	res 3,a		;6938
	ld (0e302h),a		;693a
	jp L_690B		;693d
L_6940:
	pop hl			;6940
	inc hl			;6941
	ld a,(hl)			;6942
	and 01fh		;6943
	ld b,a			;6945
	ld a,(0e2ffh)		;6946
	cp 008h		;6949
	ld a,b			;694b
	jp nz,L_695D		;694c
	ld (0e300h),a		;694f
	ld a,(0e302h)		;6952
	set 0,a		;6955
	res 1,a		;6957
	ld (0e302h),a		;6959
	ret			;695c
L_695D:
	ld (0e301h),a		;695d
	ld a,(0e302h)		;6960
	set 2,a		;6963
	res 3,a		;6965
	ld (0e302h),a		;6967
	ret			;696a
L_696B:
	pop hl			;696b
	inc hl			;696c
	res 3,(ix+00dh)		;696d
	ld a,(hl)			;6971
	ld (0e303h),a		;6972
	ld de,0e302h		;6975
	ld a,(de)			;6978
	set 5,a		;6979
	ld (de),a			;697b
	jp L_6980		;697c
L_697F:
	pop hl			;697f
L_6980:
	inc hl			;6980
	ld a,(hl)			;6981
	ld (0e305h),a		;6982
	ld de,0e302h		;6985
	ld a,(de)			;6988
	set 6,a		;6989
	ld (de),a			;698b
	jp L_6990		;698c
L_698F:
	pop hl			;698f
L_6990:
	inc hl			;6990
	ld a,(hl)			;6991
	ld (0e304h),a		;6992
	ld de,0e302h		;6995
	ld a,(de)			;6998
	set 7,a		;6999
	ld (de),a			;699b
	set 2,(ix+00dh)		;699c
	ret			;69a0
L_69A1:
	pop hl			;69a1
	ld de,0e302h		;69a2
	ld a,(de)			;69a5
	and 01fh		;69a6
	ld (de),a			;69a8
	ld a,(ix+00dh)		;69a9
	and 0f3h		;69ac
	ld (ix+00dh),a		;69ae
	ret			;69b1
L_69B2:
	pop hl			;69b2
	inc hl			;69b3
	ld a,(hl)			;69b4
	ld (ix+014h),a		;69b5
	ret			;69b8
L_69B9:
	pop hl			;69b9
	inc hl			;69ba
	ld a,(hl)			;69bb
	ld (ix+015h),a		;69bc
	ret			;69bf
L_69C0:
	pop hl			;69c0
	inc hl			;69c1
	ld a,(ix+00fh)		;69c2
	and 080h		;69c5
	ld (ix+00fh),a		;69c7
	ld a,(hl)			;69ca
	and 0f0h		;69cb
	rrca			;69cd
	rrca			;69ce
	rrca			;69cf
	rrca			;69d0
	cp 008h		;69d1
	jp nc,L_69DA		;69d3
	set 2,(ix+00fh)		;69d6
L_69DA:
	res 3,a		;69da
	inc a			;69dc
	bit 2,(ix+00fh)		;69dd
	jp nz,L_69E8		;69e1
	set 1,(ix+00fh)		;69e4
L_69E8:
	ld (ix+021h),a		;69e8
	ld a,(hl)			;69eb
	and 00fh		;69ec
	cp 008h		;69ee
	jp c,L_69F7		;69f0
	set 4,(ix+00fh)		;69f3
L_69F7:
	res 3,a		;69f7
	inc a			;69f9
	ld (ix+022h),a		;69fa
	inc hl			;69fd
	ld a,(hl)			;69fe
	and 0f0h		;69ff
	rrca			;6a01
	rrca			;6a02
	rrca			;6a03
	rrca			;6a04
	ld (ix+023h),a		;6a05
	ld a,(hl)			;6a08
	and 00fh		;6a09
	ld (ix+024h),a		;6a0b
	set 0,(ix+00fh)		;6a0e
	ret			;6a12
L_6A13:
	pop hl			;6a13
	res 0,(ix+00fh)		;6a14
	res 1,(ix+00fh)		;6a18
	ret			;6a1c
L_6A1D:
	pop hl			;6a1d
	inc hl			;6a1e
	ld a,(hl)			;6a1f
	ld (ix+025h),a		;6a20
	ret			;6a23
L_6A24:
	pop hl			;6a24
	inc hl			;6a25
	ld a,(hl)			;6a26
	ld (ix+026h),a		;6a27
	set 1,(ix+00eh)		;6a2a
	ret			;6a2e
L_6A2F:
	pop hl			;6a2f
	res 1,(ix+00eh)		;6a30
	ret			;6a34
L_6A35:
	pop hl			;6a35
	ld a,(ix+00eh)		;6a36
	and 0e2h		;6a39
	ld (ix+00eh),a		;6a3b
	ret			;6a3e
L_6A3F:
	pop hl			;6a3f
	inc hl			;6a40
	ld a,(ix+00eh)		;6a41
	or 014h		;6a44
	ld (ix+00eh),a		;6a46
	ld a,(hl)			;6a49
	and 00fh		;6a4a
	ld (ix+01ch),a		;6a4c
	ld a,(hl)			;6a4f
	and 0f0h		;6a50
	rrca			;6a52
	rrca			;6a53
	rrca			;6a54
	rrca			;6a55
	ld (ix+01bh),a		;6a56
	ret			;6a59
L_6A5A:
	pop hl			;6a5a
	inc hl			;6a5b
	ld a,(hl)			;6a5c
	ld (ix+01ah),a		;6a5d
	ld a,(ix+00eh)		;6a60
	or 00ch		;6a63
	ld (ix+00eh),a		;6a65
	ret			;6a68
L_6A69:
	pop hl			;6a69
	res 3,(ix+00eh)		;6a6a
	ret			;6a6e
L_6A6F:
	pop hl			;6a6f
	set 6,(ix+00eh)		;6a70
	ret			;6a74
L_6A75:
	pop hl			;6a75
	set 5,(ix+00eh)		;6a76
	ret			;6a7a
L_6A7B:
	pop hl			;6a7b
	ld a,(ix+00eh)		;6a7c
	and 09fh		;6a7f
	ld (ix+00eh),a		;6a81
	ret			;6a84
L_6A85:
	pop hl			;6a85
	res 7,(ix+00eh)		;6a86
	ret			;6a8a
L_6A8B:
	pop hl			;6a8b
	inc hl			;6a8c
	ld a,(hl)			;6a8d
	ld (ix+001h),a		;6a8e
	ret			;6a91
L_6A92:
	pop hl			;6a92
	call L_6AB2		;6a93
	ld (ix+007h),e		;6a96
	ld (ix+008h),d		;6a99
	ret			;6a9c
L_6A9D:
	pop hl			;6a9d
	ld l,(ix+007h)		;6a9e
	ld h,(ix+008h)		;6aa1
	ret			;6aa4
L_6AA5:
	pop hl			;6aa5
	inc hl			;6aa6
	ld a,(ix+005h)		;6aa7
	inc a			;6aaa
	cp (hl)			;6aab
	jp z,L_6AB9		;6aac
	ld (ix+005h),a		;6aaf
L_6AB2:
	inc hl			;6ab2
	ld e,(hl)			;6ab3
	inc hl			;6ab4
	ld d,(hl)			;6ab5
	ex de,hl			;6ab6
	dec hl			;6ab7
	ret			;6ab8
L_6AB9:
	inc hl			;6ab9
	inc hl			;6aba
	ld (ix+005h),000h		;6abb
	ret			;6abf
L_6AC0:
	pop hl			;6ac0
	inc hl			;6ac1
	ld a,(ix+006h)		;6ac2
	inc a			;6ac5
	cp (hl)			;6ac6
	jp z,L_6AD0		;6ac7
	ld (ix+006h),a		;6aca
	jp L_6AB2		;6acd
L_6AD0:
	inc hl			;6ad0
	inc hl			;6ad1
	ld (ix+006h),000h		;6ad2
	ret			;6ad6
L_6AD7:
	pop hl			;6ad7
	jp L_6AB2		;6ad8
L_6ADB:
	pop hl			;6adb
	inc hl			;6adc
	ld a,(hl)			;6add
	ld (ix+009h),a		;6ade
	cp 004h		;6ae1
	jp c,L_6AF9		;6ae3
	ld a,(ix+00eh)		;6ae6
	set 0,a		;6ae9
	and 011h		;6aeb
	ld (ix+00eh),a		;6aed
	res 0,(ix+00fh)		;6af0
	res 1,(ix+00fh)		;6af4
	ret			;6af8
L_6AF9:
	res 0,(ix+00eh)		;6af9
	ret			;6afd
L_6AFE:
	ld a,(hl)			;6afe
	and 00fh		;6aff
	cp 006h		;6b01
	jp nc,L_6B0A		;6b03
	ld (ix+016h),a		;6b06
	ret			;6b09
L_6B0A:
	set 7,(ix+00eh)		;6b0a
	sub 005h		;6b0e
	ld (ix+015h),a		;6b10
	ret			;6b13
L_6B14:
	ld hl,0e306h		;6b14
	res 0,(hl)		;6b17
	ld a,(0e269h)		;6b19
	ld b,a			;6b1c
	ld a,(0e295h)		;6b1d
	cp b			;6b20
	jp c,L_6B26		;6b21
	set 0,(hl)		;6b24
L_6B26:
	res 2,(hl)		;6b26
	ld a,(0e23dh)		;6b28
	ld b,a			;6b2b
	ld a,(0e2c1h)		;6b2c
	cp b			;6b2f
	jp c,L_6B35		;6b30
	set 2,(hl)		;6b33
L_6B35:
	call L_6B42		;6b35
	call L_6BAF		;6b38
	call L_6BD9		;6b3b
	call L_6C07		;6b3e
	ret			;6b41
L_6B42:
	ld b,000h		;6b42
	ld c,008h		;6b44
	ld hl,0e21ah		;6b46
	call L_6B91		;6b49
	ld hl,0e306h		;6b4c
	bit 2,(hl)		;6b4f
	jp nz,L_6B69		;6b51
	bit 3,(hl)		;6b54
	jp z,L_6B60		;6b56
	res 3,(hl)		;6b59
	ld a,005h		;6b5b
	ld (0e248h),a		;6b5d
L_6B60:
	ld hl,0e246h		;6b60
	call L_6B91		;6b63
	jp L_6B6F		;6b66
L_6B69:
	ld hl,0e2cah		;6b69
	call L_6B91		;6b6c
L_6B6F:
	ld hl,0e306h		;6b6f
	bit 0,(hl)		;6b72
	jp nz,L_6B8A		;6b74
	bit 1,(hl)		;6b77
	jp z,L_6B83		;6b79
	res 1,(hl)		;6b7c
	ld a,005h		;6b7e
	ld (0e274h),a		;6b80
L_6B83:
	ld hl,0e272h		;6b83
	call L_6B91		;6b86
	ret			;6b89
L_6B8A:
	ld hl,0e29eh		;6b8a
	call L_6B91		;6b8d
	ret			;6b90
L_6B91:
	ld e,(hl)			;6b91
	ld a,b			;6b92
	call 00093h		;6b93   ; BIOS WRTPSG - Writes data to PSG-register
	inc hl			;6b96
	inc b			;6b97
	ld e,(hl)			;6b98
	ld a,b			;6b99
	call 00093h		;6b9a   ; BIOS WRTPSG - Writes data to PSG-register
	inc hl			;6b9d
	ld e,(hl)			;6b9e
	ld a,c			;6b9f
	inc b			;6ba0
	inc c			;6ba1
	inc hl			;6ba2
	bit 3,(hl)		;6ba3
	ret nz			;6ba5
	call 00093h		;6ba6   ; BIOS WRTPSG - Writes data to PSG-register
	bit 2,(hl)		;6ba9
	ret z			;6bab
	set 3,(hl)		;6bac
	ret			;6bae
L_6BAF:
	ld hl,0e302h		;6baf
	bit 0,(hl)		;6bb2
	jp z,L_6BC5		;6bb4
	res 0,(hl)		;6bb7
	set 1,(hl)		;6bb9
	ld a,(0e300h)		;6bbb
	ld e,a			;6bbe
	ld a,006h		;6bbf
	call 00093h		;6bc1   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;6bc4
L_6BC5:
	bit 1,(hl)		;6bc5
	ret nz			;6bc7
	bit 2,(hl)		;6bc8
	ret z			;6bca
	res 2,(hl)		;6bcb
	set 3,(hl)		;6bcd
	ld a,(0e301h)		;6bcf
	ld e,a			;6bd2
	ld a,006h		;6bd3
	call 00093h		;6bd5   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;6bd8
L_6BD9:
	ld hl,0e302h		;6bd9
	bit 7,(hl)		;6bdc
	ret z			;6bde
	res 7,(hl)		;6bdf
	ld a,(0e304h)		;6be1
	ld e,a			;6be4
	ld a,00bh		;6be5
	call 00093h		;6be7   ; BIOS WRTPSG - Writes data to PSG-register
	bit 6,(hl)		;6bea
	ret z			;6bec
	res 6,(hl)		;6bed
	ld a,(0e305h)		;6bef
	ld e,a			;6bf2
	ld a,00ch		;6bf3
	call 00093h		;6bf5   ; BIOS WRTPSG - Writes data to PSG-register
	bit 5,(hl)		;6bf8
	ret z			;6bfa
	res 5,(hl)		;6bfb
	ld a,(0e303h)		;6bfd
	ld e,a			;6c00
	ld a,00dh		;6c01
	call 00093h		;6c03   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;6c06
L_6C07:
	ld hl,0e21dh		;6c07
	ld a,(hl)			;6c0a
	ld hl,06c51h		;6c0b
	call L_6C4A		;6c0e
	ld b,(hl)			;6c11
	ld a,(0e306h)		;6c12
	bit 2,a		;6c15
	ld hl,0e249h		;6c17
	jp z,L_6C20		;6c1a
	ld hl,0e2cdh		;6c1d
L_6C20:
	ld a,(hl)			;6c20
	ld hl,06c55h		;6c21
	call L_6C4A		;6c24
	ld c,(hl)			;6c27
	ld a,(0e306h)		;6c28
	bit 0,a		;6c2b
	ld hl,0e275h		;6c2d
	jp z,L_6C36		;6c30
	ld hl,0e2a1h		;6c33
L_6C36:
	ld a,(hl)			;6c36
	ld hl,06c59h		;6c37
	call L_6C4A		;6c3a
	ld a,(hl)			;6c3d
	or b			;6c3e
	or c			;6c3f
L_6C40:
	ld e,a			;6c40
	ld (0e2feh),a		;6c41
	ld a,007h		;6c44
	call 00093h		;6c46   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;6c49
L_6C4A:
	and 003h		;6c4a
	ld e,a			;6c4c
	ld d,000h		;6c4d
	add hl,de			;6c4f
	ret			;6c50

; ----------------------------------------------------------------------
; DATOS mezclador_por_modo: 3 x 4 bytes: los bits del registro 7 de cada canal
;   segun su modo (p29:6C0B, 6C21, 6C37); lo leen p29:6C07 (12 bytes)
;   0x6c51..0x6c5d  (12 bytes)
DATA_mezclador_por_modo:
	defb 089h,081h,088h,080h	; 6c51
	defb 092h,082h,090h,080h	; 6c55
	defb 0a4h,084h,0a0h,080h	; 6c59

; ----------------------------------------------------------------------
; DATOS percusiones: las ocho tablas de palabras de p29:65F4 (0x6C5D, 0x6C71,
;   0x6CD4, 0x6D97, 0x6E21, 0x6E73, 0x6E8C, 0x6F0D, segun el modo del canal y
;   (ix+0x16)) y las secuencias a las que apuntan, que p29:65D3 toca como
;   notas; los huecos que ninguna pieza lee son entradas sin usar; lo leen
;   p29:65BD (733 bytes)
;   0x6c5d..0x6f3a  (733 bytes)
DATA_percusiones:
	defb 071h,06ch,071h,06ch,071h,06ch,071h,06ch,071h,06ch,071h,06ch,071h,06ch,071h,06ch	; 6c5d  qlqlqlqlqlqlqlql
	defb 071h,06ch,071h,06ch,085h,06ch,08bh,06ch,098h,06ch,0a7h,06ch,0bch,06ch,0d4h,06ch	; 6c6d  qlql.l.l.l.l.l.l
	defb 0d4h,06ch,0d4h,06ch,0d4h,06ch,0d4h,06ch,0e1h,001h,0e4h,000h,007h,0ffh,0e3h,001h	; 6c7d  .l.l.l.l........
	defb 0e4h,000h,08ah,000h,0e1h,004h,006h,005h,004h,003h,0ffh,0e2h,001h,0e5h,009h,003h	; 6c8d  ................
	defb 000h,093h,0d0h,096h,000h,097h,000h,098h,000h,0ffh,0e1h,001h,0e4h,014h,008h,0e2h	; 6c9d  ................
	defb 001h,082h,000h,0e1h,002h,0e4h,010h,004h,003h,0e1h,001h,0e4h,006h,002h,0ffh,0e2h	; 6cad  ................
	defb 001h,0e5h,009h,000h,042h,0c1h,0b0h,0e1h,001h,0e4h,008h,008h,007h,006h,005h,004h	; 6cbd  ....B...........
	defb 003h,002h,002h,001h,001h,000h,0ffh,0ech,06ch,0ffh,06ch,0ffh,06ch,012h,06dh,025h	; 6ccd  ........l.l.l.m%
	defb 06dh,038h,06dh,04bh,06dh,04bh,06dh,05eh,06dh,071h,06dh,084h,06dh,097h,06dh,0e2h	; 6cdd  m8mKmKm^mqm.m.m.
	defb 004h,070h,035h,060h,035h,050h,035h,040h,035h,030h,035h,020h,035h,010h,035h,000h	; 6ced  .p5`5P5@505 5.5.
	defb 035h,0ffh,0e2h,004h,070h,02fh,060h,02fh,050h,02fh,040h,02fh,030h,02fh,020h,02fh	; 6cfd  5...p/`/P/@/0/ /
	defb 010h,02fh,000h,02fh,0ffh,0e2h,004h,070h,02ch,060h,02ch,050h,02ch,040h,02ch,030h	; 6d0d  ././...p,`,P,@,0
	defb 02ch,020h,02ch,010h,02ch,000h,02ch,0ffh,0e2h,004h,070h,02ah,060h,02ah,050h,02ah	; 6d1d  , ,.,.,...p*`*P*
	defb 040h,02ah,030h,02ah,020h,02ah,010h,02ah,000h,02ah,0ffh,0e2h,004h,070h,028h,060h	; 6d2d  @*0* *.*.*...p(`
	defb 028h,050h,028h,040h,028h,030h,028h,020h,028h,010h,028h,000h,028h,0ffh,0e2h,004h	; 6d3d  (P(@(0( (.(.(...
	defb 070h,023h,060h,023h,050h,023h,040h,023h,030h,023h,020h,023h,010h,023h,000h,023h	; 6d4d  p#`#P#@#0# #.#.#
	defb 0ffh,0e2h,004h,070h,021h,060h,021h,050h,021h,040h,021h,030h,021h,020h,021h,010h	; 6d5d  ...p!`!P!@!0! !.
	defb 021h,000h,021h,0ffh,0e2h,004h,070h,01fh,060h,01fh,050h,01fh,040h,01fh,030h,01fh	; 6d6d  !.!...p.`.P.@.0.
	defb 020h,01fh,010h,01fh,000h,01fh,0ffh,0e2h,004h,070h,01eh,060h,01eh,050h,01eh,040h	; 6d7d   ........p.`.P.@
	defb 01eh,030h,01eh,020h,01eh,010h,01eh,000h,01eh,0ffh,0afh,06dh,0c2h,06dh,0c2h,06dh	; 6d8d  .0. .......m.m.m
	defb 0c2h,06dh,0c2h,06dh,0c2h,06dh,0d5h,06dh,0e8h,06dh,0fbh,06dh,0fbh,06dh,00eh,06eh	; 6d9d  .m.m.m.m.m.m.m.n
	defb 021h,06eh,0e2h,004h,070h,06ah,060h,06ah,050h,06ah,040h,06ah,030h,06ah,020h,06ah	; 6dad  !n..pj`jPj@j0j j
	defb 010h,06ah,000h,06ah,0ffh,0e2h,004h,070h,04fh,060h,04fh,050h,04fh,040h,04fh,030h	; 6dbd  .j.j...pO`OPO@O0
	defb 04fh,020h,04fh,010h,04fh,000h,04fh,0ffh,0e2h,004h,070h,04ah,060h,04ah,050h,04ah	; 6dcd  O O.O.O...pJ`JPJ
	defb 040h,04ah,030h,04ah,020h,04ah,010h,04ah,000h,04ah,0ffh,0e2h,004h,070h,046h,060h	; 6ddd  @J0J J.J.J...pF`
	defb 046h,050h,046h,040h,046h,030h,046h,020h,046h,010h,046h,000h,046h,0ffh,0e2h,004h	; 6ded  FPF@F0F F.F.F...
	defb 070h,03fh,060h,03fh,050h,03fh,040h,03fh,030h,03fh,020h,03fh,010h,03fh,000h,03fh	; 6dfd  p?`?P?@?0? ?.?.?
	defb 0ffh,0e2h,004h,070h,03bh,060h,03bh,050h,03bh,040h,03bh,030h,03bh,020h,03bh,010h	; 6e0d  ...p.`.P.@.0. ..
	defb 03bh,000h,03bh,0ffh,039h,06eh,039h,06eh,039h,06eh,039h,06eh,039h,06eh,039h,06eh	; 6e1d  ....9n9n9n9n9n9n
	defb 03ah,06eh,04dh,06eh,039h,06eh,060h,06eh,039h,06eh,039h,06eh,0ffh,0e2h,004h,050h	; 6e2d  :nMn9n`n9n9n...P
	defb 04ah,040h,04ah,030h,04ah,020h,04ah,010h,04ah,000h,04ah,000h,04ah,000h,04ah,0ffh	; 6e3d  J@J0J J.J.J.J.J.
	defb 0e2h,004h,050h,046h,040h,046h,030h,046h,020h,046h,010h,046h,000h,046h,000h,046h	; 6e4d  ..PF@F0F F.F.F.F
	defb 000h,046h,0ffh,0e2h,004h,050h,03fh,040h,03fh,030h,03fh,020h,03fh,010h,03fh,000h	; 6e5d  .F...P?@?0? ?.?.
	defb 03fh,000h,03fh,000h,03fh,0ffh,08bh,06eh,08bh,06eh,08bh,06eh,08bh,06eh,08bh,06eh	; 6e6d  ?.?.?..n.n.n.n.n
	defb 08bh,06eh,08bh,06eh,08bh,06eh,08bh,06eh,08bh,06eh,08bh,06eh,08bh,06eh,0ffh,0a4h	; 6e7d  .n.n.n.n.n.n.n..
	defb 06eh,0b9h,06eh,0b9h,06eh,0ceh,06eh,0e3h,06eh,00dh,06fh,00dh,06fh,00dh,06fh,00dh	; 6e8d  n.n.n.n.n.o.o.o.
	defb 06fh,0e3h,06eh,0f8h,06eh,00dh,06fh,0e2h,001h,096h,0aeh,083h,057h,0e2h,005h,096h	; 6e9d  o.n.n.o.....W...
	defb 0aeh,086h,0aeh,076h,0aeh,066h,0aeh,056h,0aeh,046h,0aeh,0ffh,0e2h,001h,095h,0f4h	; 6ead  ...v.f.V.F......
	defb 082h,0fah,0e2h,005h,095h,0f4h,085h,0f4h,075h,0f4h,065h,0f4h,055h,0f4h,045h,0f4h	; 6ebd  ........u.e.U.E.
	defb 0ffh,0e2h,001h,095h,09eh,082h,0cfh,0e2h,005h,095h,09eh,085h,09eh,075h,09eh,065h	; 6ecd  .............u.e
	defb 09eh,055h,09eh,045h,09eh,0ffh,0e2h,001h,093h,0f6h,081h,0fah,0e2h,005h,093h,0f6h	; 6edd  .U.E............
	defb 083h,0f6h,073h,0f6h,063h,0f6h,053h,0f6h,043h,0f6h,0ffh,0e2h,001h,093h,0bbh,081h	; 6eed  ..s.c.S.C.......
	defb 0e0h,0e2h,005h,093h,0bbh,083h,0bbh,073h,0bbh,063h,0bbh,053h,0bbh,043h,0bbh,0ffh	; 6efd  .......s.c.S.C..
	defb 03ah,06fh,03ah,06fh,03ah,06fh,03ah,06fh,03ah,06fh,03ah,06fh,03ah,06fh,03ah,06fh	; 6f0d  :o:o:o:o:o:o:o:o
	defb 03ah,06fh,03ah,06fh,025h,06fh,03ah,06fh,0e2h,001h,097h,080h,088h,0c0h,0e2h,005h	; 6f1d  :o:o%o:o........
	defb 097h,080h,087h,080h,077h,080h,067h,080h,057h,080h,047h,080h,0ffh	; 6f2d  ....w.g.W.G..

; ----------------------------------------------------------------------
; DATOS pistas: las 177 pistas de los sonidos 0x01-0x61: notas (< 0xD0),
;   ordenes 0xD0-0xFE (p29:68B7: octava, volumen, envolvente, saltos, bucles,
;   llamadas) y 0xFF fin; medido ejecutando el motor, ninguna pieza lee 4
;   trozos: p31:AFF4 (un 0xFF tras un salto), p31:B652-B660 (una secuencia que
;   nadie apunta), p31:BF52-BF53 (la direccion de un bucle que no vuelve) y la
;   cola de 0xFF (sigue en el banco 30, en 0x8000); lo leen p29:64B3 (4294
;   bytes)
;   0x6f3a..0x8000  (4294 bytes)
DATA_pistas:
	defb 0ffh,0feh,001h,0e9h,007h,0c1h,0f2h,009h,0f1h,042h,0eah,00bh,0ebh,000h,010h,0c1h	; 6f3a  .........B......
	defb 0f9h,02dh,070h,0eah,00bh,0f9h,066h,070h,0eah,008h,003h,0eah,00bh,0f9h,07ch,070h	; 6f4a  .-p...fp......|p
	defb 0eah,008h,0b3h,0eah,00bh,0f9h,066h,070h,0f9h,091h,070h,0d3h,070h,0b0h,0d2h,020h	; 6f5a  ......fp..p.p..
	defb 050h,070h,0b0h,0d1h,020h,050h,0eah,00ah,070h,0b0h,0d0h,020h,050h,0eah,009h,0d1h	; 6f6a  Pp.. P..p.. P...
	defb 070h,0b0h,0eah,008h,0d0h,020h,050h,0eah,003h,051h,0fdh,040h,06fh,0feh,001h,0f2h	; 6f7a  p.... P..Q.@o...
	defb 00ah,0f1h,041h,0e9h,007h,0ech,0eah,009h,0d3h,001h,0edh,009h,0eah,00bh,0ebh,080h	; 6f8a  ..A.............
	defb 010h,071h,0d2h,00bh,0d3h,001h,071h,0d2h,00bh,0d4h,0b1h,0d3h,071h,0bbh,0d4h,0b1h	; 6f9a  .q....q.....q...
	defb 0d3h,071h,0bbh,0d4h,0a1h,0d3h,041h,0abh,0d4h,0a1h,0d3h,041h,0abh,0d4h,091h,0d3h	; 6faa  .q....A....A....
	defb 021h,09bh,0d4h,091h,0d3h,021h,09bh,0edh,00ah,0f9h,0b5h,070h,0d4h,041h,0b1h,0d3h	; 6fba  !....!.....p.A..
	defb 04bh,0d4h,041h,0b1h,0d3h,04bh,0f9h,0b5h,070h,0eeh,001h,0f2h,00ah,0f1h,043h,0eah	; 6fca  K.A..K..p.....C.
	defb 00ch,0ebh,000h,010h,0d4h,07fh,0ech,0eah,007h,0e9h,001h,0c4h,0e9h,007h,0f9h,09dh	; 6fda  ................
	defb 070h,0eah,004h,0d0h,020h,0e9h,001h,051h,0fdh,087h,06fh,0feh,001h,0e9h,007h,0c3h	; 6fea  p... ..Q..o.....
	defb 0c1h,0eeh,002h,0f2h,009h,0f1h,042h,0eeh,002h,0eah,009h,0ebh,000h,010h,0f9h,02dh	; 6ffa  ......B........-
	defb 070h,0f9h,066h,070h,0eah,005h,003h,0eah,009h,0f9h,07ch,070h,0eah,005h,0b3h,0eah	; 700a  p.fp......|p....
	defb 009h,0f9h,066h,070h,0ech,0eah,007h,0f9h,091h,070h,0eeh,000h,0f9h,09dh,070h,0c5h	; 701a  ..fp.....p....p.
	defb 0fdh,0fbh,06fh,0d2h,041h,071h,0d1h,041h,0d2h,041h,0d1h,001h,045h,0fbh,002h,02dh	; 702a  ..o.Aq.A.A..E..-
	defb 070h,0d2h,021h,071h,0d1h,021h,0d2h,071h,0b1h,0d1h,025h,0fbh,002h,03bh,070h,0d2h	; 703a  p.!q.!.q..%...p.
	defb 041h,071h,0d1h,041h,0d2h,071h,0a1h,0d1h,045h,0fbh,002h,049h,070h,0d2h,021h,091h	; 704a  Aq.A.q..E..Ip.!.
	defb 0d1h,021h,0d2h,051h,091h,0d1h,025h,0fbh,002h,057h,070h,0fah,0d3h,091h,0d2h,001h	; 705a  .!.Q..%..Wp.....
	defb 041h,0d3h,091h,0d2h,001h,041h,001h,041h,091h,041h,091h,0d1h,001h,0d2h,091h,0d1h	; 706a  A....A.A.A......
	defb 001h,0fah,0d3h,071h,0b1h,0d2h,021h,0d3h,071h,0b1h,0d2h,021h,0d3h,0b1h,0d2h,021h	; 707a  ...q..!.q..!...!
	defb 071h,021h,071h,0b1h,071h,0b1h,0fah,0d3h,071h,0b1h,0d2h,021h,051h,071h,0b1h,0d1h	; 708a  q!q.q...q..!Qq..
	defb 021h,051h,0fah,0d3h,070h,0b0h,0d2h,020h,050h,070h,0b0h,0d1h,020h,050h,0eah,006h	; 709a  !Q..p.. Pp.. P..
	defb 070h,0b0h,0d0h,020h,050h,0eah,005h,0d1h,070h,0b0h,0fah,0d4h,051h,0d3h,001h,05bh	; 70aa  p.. P...p...Q..[
	defb 0d4h,051h,0d3h,001h,05bh,0fah,0f9h,0d8h,074h,0eah,00bh,0c3h,0f9h,096h,073h,025h	; 70ba  .Q..[...t.....s%
	defb 000h,0d2h,0b0h,0eah,008h,0b1h,0eah,00bh,0c1h,0f9h,096h,073h,021h,0d2h,0b1h,0d1h	; 70ca  ...........s!...
	defb 001h,021h,0c1h,0f9h,0ddh,073h,031h,051h,071h,021h,0eah,008h,020h,0eah,00ah,0edh	; 70da  .!...s1Qq!.. ...
	defb 009h,0ebh,085h,0f0h,0d2h,0f9h,0d0h,074h,030h,0ebh,000h,010h,0eah,007h,031h,0eah	; 70ea  .......t0.....1.
	defb 00bh,0f9h,0ddh,073h,033h,053h,073h,0b3h,0eah,007h,0d1h,0b1h,0f1h,041h,0f9h,0e6h	; 70fa  ...s3Ss......A..
	defb 073h,009h,0eah,008h,001h,0f9h,0e6h,073h,043h,051h,041h,021h,021h,001h,0eah,008h	; 710a  s......sCQA!!...
	defb 001h,0eah,00bh,000h,020h,041h,003h,0eah,008h,001h,0eah,00bh,041h,051h,071h,073h	; 711a  .... A......AQqs
	defb 0eah,008h,071h,0eah,00bh,051h,041h,007h,0eah,008h,001h,0eah,00bh,0d1h,071h,0d0h	; 712a  ..q..QA.......q.
	defb 001h,0d1h,0b1h,0d0h,017h,0eah,008h,011h,0eah,00bh,0d1h,041h,091h,0d0h,041h,042h	; 713a  ...........A..AB
	defb 022h,001h,0d1h,0b2h,092h,071h,09dh,0eah,008h,091h,0fdh,0c0h,070h,0f9h,0f4h,073h	; 714a  "....q......p..s
	defb 0f9h,025h,074h,0b0h,070h,020h,0d3h,0b0h,070h,020h,0d4h,0b0h,070h,0f9h,0f4h,073h	; 715a  .%t.p ..p ..p..s
	defb 0f9h,025h,074h,0d3h,070h,0b0h,0d2h,020h,0d3h,0b0h,0d2h,020h,070h,0b0h,070h,0eah	; 716a  .%t.p.. ... p.p.
	defb 00bh,0ebh,001h,010h,0d4h,0a1h,0d3h,051h,0a1h,0d4h,097h,0eah,008h,091h,0eah,00bh	; 717a  .......Q........
	defb 0a1h,0d3h,031h,081h,0d4h,071h,0eah,009h,071h,0eah,00bh,071h,081h,091h,0a1h,0d3h	; 718a  ..1..q..q..q....
	defb 051h,0a1h,0d4h,097h,0eah,008h,091h,0eah,00ah,0ebh,007h,010h,0a0h,0d3h,030h,080h	; 719a  Q.............0.
	defb 030h,0d4h,090h,0d3h,050h,090h,050h,0d4h,0a0h,0d3h,050h,0a0h,050h,0d4h,070h,0d3h	; 71aa  0...P.P...P.P.p.
	defb 020h,070h,020h,0eah,00bh,0ebh,000h,010h,0f9h,05bh,074h,051h,091h,0d2h,041h,001h	; 71ba   p ......[tQ..A.
	defb 0d3h,091h,0d2h,001h,0d3h,051h,091h,0f9h,05bh,074h,0eah,00ah,0ebh,005h,010h,001h	; 71ca  .....Q..[t......
	defb 041h,071h,0a1h,0d2h,021h,041h,021h,0d3h,0a1h,0ebh,000h,010h,0eah,00bh,055h,0eah	; 71da  Aq..!A!.......U.
	defb 009h,051h,0eah,00bh,045h,0eah,009h,041h,0eah,00bh,0d4h,091h,0d3h,041h,071h,0d4h	; 71ea  .Q..E..A.....Aq.
	defb 0a3h,0d3h,051h,0a1h,051h,0d4h,051h,0d3h,001h,051h,0d4h,073h,0d3h,021h,071h,021h	; 71fa  ..Q.Q.Q..Q.s.!q!
	defb 0eeh,001h,0ech,0eah,009h,0d4h,090h,0eah,007h,090h,0eah,009h,0d3h,010h,0eah,007h	; 720a  ................
	defb 010h,0eah,009h,010h,0eah,007h,010h,0eah,009h,040h,0eah,007h,040h,0eah,00ah,040h	; 721a  .........@..@..@
	defb 0eah,007h,040h,0eah,00ah,090h,0eah,007h,090h,0fbh,002h,02dh,072h,0eah,00ah,0d2h	; 722a  ..@........-r...
	defb 010h,0eah,007h,010h,0eeh,000h,0eah,00bh,0ebh,000h,010h,0d4h,051h,0d3h,001h,051h	; 723a  ............Q..Q
	defb 091h,0d4h,071h,0d3h,021h,071h,0b1h,0d4h,09dh,0eah,008h,091h,0fdh,057h,071h,0f9h	; 724a  ..q.!q.......Wq.
	defb 0d8h,074h,0eeh,001h,0eah,00ah,0c3h,0f9h,065h,074h,0ech,0eeh,002h,0eah,007h,091h	; 725a  .t......et......
	defb 070h,091h,053h,050h,090h,0b5h,090h,0eeh,001h,0eah,00ah,0ebh,000h,010h,0d2h,091h	; 726a  p.SP............
	defb 053h,050h,090h,0b5h,090h,070h,0eeh,001h,0eah,007h,0ebh,000h,010h,0d2h,071h,0eah	; 727a  SP...p........q.
	defb 00ah,0c1h,0f9h,065h,074h,0eah,00ah,040h,040h,0eeh,001h,0ech,0eah,006h,092h,053h	; 728a  ...et..@@......S
	defb 050h,090h,0b5h,090h,0eeh,001h,0eah,00ah,0ebh,000h,010h,0d2h,091h,053h,050h,090h	; 729a  P............SP.
	defb 0b1h,071h,091h,0b1h,0f9h,0c0h,074h,033h,0eah,008h,031h,0eah,00ah,022h,0eeh,001h	; 72aa  .q....t3..1.."..
	defb 0ech,0eah,007h,0d2h,070h,0f9h,0d0h,074h,0ebh,000h,010h,0eeh,000h,0f9h,0c0h,074h	; 72ba  ....p..t.......t
	defb 0d1h,003h,023h,033h,053h,0eeh,001h,0eah,007h,0d1h,051h,0ech,0b0h,0d0h,000h,0d1h	; 72ca  ..#3S.....Q.....
	defb 0b0h,070h,040h,000h,0eah,008h,0d2h,0b0h,0d1h,000h,0d2h,0b0h,070h,040h,000h,0d3h	; 72da  .p@.........p@..
	defb 0b0h,070h,0eah,006h,071h,0eah,007h,0d0h,040h,050h,040h,000h,0d1h,090h,050h,0eah	; 72ea  .p..q...@P@...P.
	defb 008h,040h,050h,040h,000h,0d2h,090h,050h,040h,000h,0eah,006h,001h,0eah,007h,0d1h	; 72fa  .@P@...P@.......
	defb 0b0h,0d0h,000h,0d1h,0b0h,070h,040h,000h,0eah,008h,0d2h,0b0h,0d1h,000h,0d2h,0b0h	; 730a  .....p@.........
	defb 070h,040h,000h,0d3h,0b0h,070h,0ebh,007h,010h,0eah,009h,040h,070h,070h,0a0h,0a0h	; 731a  p@...p.....@pp..
	defb 0d2h,000h,000h,040h,0eah,00ah,040h,070h,070h,0a0h,0a0h,0d1h,000h,000h,040h,0f1h	; 732a  ...@..@pp.....@.
	defb 041h,0eah,00ah,0ebh,000h,010h,0d1h,091h,091h,0eah,007h,091h,0eah,00ah,070h,090h	; 733a  A.............p.
	defb 0b1h,073h,0eah,008h,071h,0eah,009h,0ebh,006h,010h,0eeh,001h,0d4h,090h,0d3h,000h	; 734a  .s..q...........
	defb 000h,040h,040h,090h,090h,0d2h,000h,0eah,00ah,0d3h,0a0h,0d2h,020h,020h,050h,050h	; 735a  .@@.........  PP
	defb 0a0h,0a0h,0d1h,020h,0eeh,000h,0ebh,000h,010h,091h,071h,001h,071h,0eah,008h,071h	; 736a  ... ......q.q..q
	defb 0eah,00ah,021h,0d2h,0b1h,071h,0d1h,04dh,0eah,007h,041h,0eah,009h,0d0h,002h,0d1h	; 737a  ..!..q.M..A.....
	defb 0b2h,091h,072h,052h,041h,04dh,0eah,007h,041h,0fdh,059h,072h,0d2h,041h,051h,071h	; 738a  ..rRAM..A.Yr.AQq
	defb 041h,071h,0d1h,021h,00dh,0eah,008h,001h,0eah,00bh,0d2h,0c3h,041h,051h,071h,041h	; 739a  Aq.!........AQqA
	defb 071h,0d1h,041h,025h,041h,055h,0eah,008h,051h,0eah,00bh,041h,041h,091h,025h,0eah	; 73aa  q.A%AU..Q..AA.%.
	defb 008h,021h,0eah,00bh,000h,0d2h,0b0h,0d1h,001h,001h,041h,0d2h,0b5h,0eah,008h,0b1h	; 73ba  .!........A.....
	defb 0eah,00bh,090h,070h,091h,053h,050h,090h,0b5h,090h,070h,0d1h,001h,0d2h,093h,090h	; 73ca  ...p.SP...p.....
	defb 0d1h,000h,0fah,0d1h,071h,051h,001h,071h,051h,001h,051h,0fah,0eah,00bh,0d1h,0b1h	; 73da  ....qQ.qQ.Q.....
	defb 0d0h,001h,0d1h,071h,072h,052h,041h,055h,0d0h,0fah,0feh,001h,0f2h,009h,0f1h,041h	; 73ea  ...qrRAU.......A
	defb 0e9h,009h,0eah,00bh,0ebh,001h,010h,0d4h,001h,071h,0d3h,041h,071h,0d2h,025h,000h	; 73fa  .........q.Aq.%.
	defb 0d3h,0b0h,0d4h,051h,001h,081h,0d3h,001h,0ech,0eah,008h,071h,0eah,009h,073h,0eah	; 740a  ...Q.......q..s.
	defb 00bh,0ebh,001h,010h,050h,040h,0fbh,002h,0f4h,073h,0fah,0d3h,051h,091h,0d2h,041h	; 741a  ....P@...s..Q..A
	defb 0d3h,043h,071h,0d2h,021h,0d3h,071h,091h,0d2h,001h,041h,0d3h,073h,0b1h,0d2h,021h	; 742a  .Cq.!.q...A.s..!
	defb 0d3h,0b1h,0d4h,051h,090h,0d3h,000h,050h,090h,0d2h,000h,050h,0d4h,051h,070h,0b0h	; 743a  ...Q...P...P.Qp.
	defb 0d3h,020h,070h,0b0h,0d2h,020h,0d4h,051h,0d3h,000h,050h,090h,0d2h,000h,050h,090h	; 744a  . p.. .Q..P...P.
	defb 0fah,0d3h,001h,041h,0b1h,071h,0b1h,071h,041h,071h,0fah,0d2h,001h,021h,0eah,008h	; 745a  ...A.q.qAq...!..
	defb 041h,0eah,00ah,0d3h,0b1h,0d2h,041h,071h,0eah,009h,079h,0eah,005h,071h,0ech,0eah	; 746a  A.....Aq..y..q..
	defb 007h,0eeh,002h,0d1h,070h,0eeh,001h,0edh,007h,0ebh,087h,010h,0eah,008h,080h,070h	; 747a  ....p..........p
	defb 050h,071h,0eah,006h,071h,0ebh,000h,010h,0eah,00ah,0d2h,001h,021h,0eah,008h,041h	; 748a  Pq..q.......!..A
	defb 0eah,00ah,0d3h,0b1h,0eah,008h,0d2h,041h,0eah,00ah,0d2h,071h,08dh,0eah,007h,081h	; 749a  .......A...q....
	defb 0eah,00ah,0d2h,091h,091h,091h,075h,0eah,007h,071h,0eah,00ah,050h,040h,091h,091h	; 74aa  ......u..q..P@..
	defb 091h,075h,0eah,007h,071h,0fah,0eah,00ah,0d2h,073h,0eah,008h,071h,0eah,00ah,057h	; 74ba  .u..q....s..q..W
	defb 0eah,008h,051h,0eah,00ah,0fah,070h,090h,0b0h,0d1h,000h,010h,020h,0fah,0feh,001h	; 74ca  ..Q...p..... ...
	defb 0f2h,009h,0f1h,042h,0e9h,009h,0eah,00bh,0ebh,000h,010h,0fah,0f9h,001h,075h,0f9h	; 74da  ...B..........u.
	defb 01eh,075h,0f9h,027h,075h,0eeh,004h,0f9h,067h,075h,0f9h,070h,075h,0efh,0f9h,01eh	; 74ea  .u.'u...gu.pu...
	defb 075h,0f9h,027h,075h,0fdh,0e6h,074h,0feh,001h,0e9h,007h,0eah,00bh,0edh,007h,0ebh	; 74fa  u.'u..t.........
	defb 080h,010h,0f1h,068h,0d2h,003h,013h,063h,057h,0f1h,065h,0d1h,003h,013h,0f1h,064h	; 750a  ...h...cW.e....d
	defb 063h,057h,0f0h,0fah,0feh,001h,0e9h,007h,0ebh,000h,010h,0d0h,0fah,0eah,00dh,000h	; 751a  cW..............
	defb 0eah,00ah,000h,0eah,00dh,010h,0eah,00ah,010h,0eah,00ah,000h,0eah,007h,000h,0eah	; 752a  ................
	defb 00ah,010h,0eah,007h,010h,0eah,007h,000h,0eah,004h,000h,0eah,007h,010h,0eah,004h	; 753a  ................
	defb 010h,0eah,005h,000h,0eah,002h,000h,0eah,005h,010h,0eah,002h,010h,0fah,0f9h,067h	; 754a  ...............g
	defb 075h,0f9h,070h,075h,0f9h,0b1h,075h,0f9h,027h,075h,0fdh,058h,075h,0feh,001h,0e9h	; 755a  u.pu..u.'u.Xu...
	defb 007h,0ebh,000h,010h,0d4h,0fah,0eah,00ch,000h,0eah,009h,000h,0eah,00ch,000h,0eah	; 756a  ................
	defb 009h,000h,0eah,00ch,000h,0eah,009h,000h,0eah,00ch,010h,0eah,009h,010h,0eah,00ch	; 757a  ................
	defb 000h,0eah,009h,000h,0eah,00ch,000h,0eah,009h,000h,0eah,00ch,000h,0eah,009h,000h	; 758a  ................
	defb 0eah,00ch,010h,0eah,009h,010h,0eah,00ch,000h,0eah,009h,000h,0eah,00ch,010h,0eah	; 759a  ................
	defb 009h,010h,0fbh,002h,070h,075h,0fah,0feh,001h,0e9h,007h,0ebh,000h,010h,0d3h,0fah	; 75aa  ....pu..........
	defb 0f9h,0b1h,075h,0f9h,070h,075h,0f9h,0c9h,075h,0f9h,027h,075h,0fdh,0bah,075h,0feh	; 75ba  ..u.pu..u.'u..u.
	defb 001h,0e9h,007h,0ebh,000h,010h,0d2h,0fah,0feh,001h,0f2h,00ah,0f1h,041h,0e9h,009h	; 75ca  .............A..
	defb 0ebh,000h,010h,0d1h,0eah,00bh,053h,0eah,00ah,053h,0eah,009h,051h,0eah,00bh,041h	; 75da  ......S..S..Q..A
	defb 050h,072h,043h,0eah,00ah,043h,0eah,009h,041h,0eah,00bh,001h,021h,041h,043h,0eah	; 75ea  PrC..C..A...!AC.
	defb 00ah,043h,0eah,009h,041h,0eah,00bh,021h,040h,052h,02dh,0eah,008h,021h,0eah,00bh	; 75fa  .C..A..!@R-..!..
	defb 053h,0eah,00ah,053h,0eah,009h,051h,0eah,00bh,041h,050h,072h,043h,0eah,00ah,043h	; 760a  S..S..Q..APrC..C
	defb 0eah,009h,043h,0eah,00bh,051h,073h,093h,0eah,00ah,093h,0eah,009h,095h,0c3h,0eah	; 761a  ..C..Qs.........
	defb 00bh,093h,0a3h,0d0h,003h,0feh,001h,0f2h,009h,0f1h,041h,0e9h,009h,0eah,00bh,0ebh	; 762a  ..........A.....
	defb 000h,010h,0d0h,003h,0eah,00ah,001h,0eah,00bh,0d1h,0a0h,090h,0adh,0eah,008h,0a1h	; 763a  ................
	defb 0eah,00bh,072h,072h,0ech,0eah,009h,0e9h,001h,0d0h,033h,04dh,0eah,00bh,0ebh,000h	; 764a  ..rr......3M....
	defb 010h,0e9h,009h,003h,0eah,00ah,001h,0eah,00bh,0d1h,043h,041h,073h,063h,0eah,00ah	; 765a  ..........CAsc..
	defb 063h,0eah,009h,063h,0eah,008h,063h,0ech,0eah,009h,0e9h,001h,083h,0eah,00bh,0ebh	; 766a  c..c..c.........
	defb 000h,010h,0e9h,00ah,094h,0e9h,009h,023h,021h,021h,071h,04dh,0eah,008h,041h,0eah	; 767a  .......#!!qM..A.
	defb 00bh,075h,053h,0eah,00ah,053h,0eah,009h,053h,0eah,008h,055h,0f0h,0ech,0feh,004h	; 768a  .uS..S..S..U....
	defb 0d1h,020h,020h,0e9h,004h,000h,0e9h,005h,000h,0e9h,009h,020h,030h,030h,040h,040h	; 769a  .  ........ 00@@
	defb 0feh,001h,0f2h,00ah,0f1h,041h,0e9h,009h,0ebh,001h,011h,0d1h,0eah,00bh,053h,0eah	; 76aa  .....A........S.
	defb 00ah,0d3h,0a0h,0a0h,0d2h,020h,020h,050h,050h,0eah,00bh,0d1h,041h,050h,072h,043h	; 76ba  .....  PP...APrC
	defb 0eah,00ah,0d3h,0a0h,0a0h,0d2h,000h,000h,040h,040h,0eah,00bh,0d1h,001h,021h,041h	; 76ca  ........@@....!A
	defb 043h,0eah,00ah,0d3h,040h,050h,090h,0d2h,000h,040h,050h,0eah,00bh,0d1h,021h,040h	; 76da  C...@P...@P...!@
	defb 052h,023h,0eah,00ah,0d3h,020h,050h,090h,0d2h,050h,020h,0d3h,090h,050h,0d2h,020h	; 76ea  R#... P..P ..P.
	defb 0d3h,090h,050h,020h,040h,0eah,00bh,0d1h,053h,0eah,00ah,0d3h,0a0h,0a0h,0d2h,020h	; 76fa  ..P @...S......
	defb 020h,050h,050h,0eah,00bh,0d1h,041h,050h,072h,043h,0eah,00ah,0d3h,0a0h,0d2h,000h	; 770a   PP...APrC......
	defb 040h,070h,0a0h,070h,0eah,00bh,0d1h,041h,051h,073h,095h,0eah,00ah,0d3h,050h,090h	; 771a  @p.p...AQs....P.
	defb 0d2h,000h,050h,090h,0d1h,000h,050h,090h,0d3h,020h,010h,020h,030h,0eah,00bh,0d1h	; 772a  ..P...P.. . 0...
	defb 093h,0a3h,0d0h,003h,0feh,001h,0e9h,009h,0eah,00bh,0ebh,001h,010h,0d0h,005h,0d1h	; 773a  ................
	defb 0a0h,090h,0a7h,0eah,00ah,040h,000h,0d2h,070h,040h,000h,0d3h,070h,040h,070h,0eah	; 774a  .....@..p@..p@p.
	defb 00bh,0d1h,072h,072h,0e9h,001h,0d0h,033h,04dh,0e9h,009h,005h,0d1h,043h,041h,073h	; 775a  ..rr...3M....CAs
	defb 067h,0eah,00ah,0d3h,020h,060h,090h,060h,090h,0d2h,020h,060h,090h,0eah,00bh,0e9h	; 776a  g... `.`.. `....
	defb 001h,0d1h,083h,0e9h,00ah,094h,0e9h,009h,023h,021h,021h,071h,047h,0eah,00ah,0d1h	; 777a  ........#!!qG...
	defb 000h,0d2h,0a0h,090h,070h,050h,040h,020h,000h,0eah,00bh,0d1h,075h,05fh,0eah,00ah	; 778a  ....pP@ ....u_..
	defb 051h,0f0h,0ech,0feh,004h,0d1h,020h,020h,0e9h,004h,000h,0e9h,005h,000h,0e9h,009h	; 779a  Q.....  ........
	defb 020h,040h,040h,040h,040h,0fdh,0aah,076h,0feh,001h,0f2h,009h,0f1h,042h,0e9h,009h	; 77aa   @@@@..v.....B..
	defb 0eah,00bh,0edh,009h,0ebh,086h,010h,0d4h,071h,0a1h,0d3h,021h,057h,0eah,009h,051h	; 77ba  ........q..!W..Q
	defb 0eah,00bh,0d4h,071h,0a1h,0d3h,001h,045h,0eah,009h,041h,0eah,008h,041h,0eah,00bh	; 77ca  ...q...E..A..A..
	defb 0d4h,051h,091h,0d3h,001h,047h,0eah,009h,041h,0eah,00bh,0d4h,051h,091h,0d3h,001h	; 77da  .Q...G..A...Q...
	defb 021h,0edh,00ah,0d4h,050h,090h,0d3h,000h,020h,0d3h,050h,090h,0d2h,000h,020h,0edh	; 77ea  !...P... .P... .
	defb 009h,0d4h,071h,0a1h,0d3h,021h,057h,0eah,009h,051h,0eah,00bh,0d4h,071h,0a1h,0d3h	; 77fa  ..q..!W..Q...q..
	defb 001h,047h,0eah,009h,041h,0eah,00bh,0d4h,051h,091h,0d3h,001h,047h,0eah,009h,041h	; 780a  .G..A...Q...G..A
	defb 0eah,00bh,0ebh,084h,090h,0d4h,060h,090h,0d3h,000h,030h,0d4h,060h,090h,0d3h,000h	; 781a  ......`...0.`...
	defb 030h,0ebh,086h,0f0h,060h,090h,0d2h,000h,030h,060h,090h,0d1h,000h,030h,0feh,001h	; 782a  0...`...0`...0..
	defb 0f2h,009h,0f1h,042h,0e9h,009h,0eah,00bh,0edh,009h,0ebh,086h,010h,0d4h,071h,0a1h	; 783a  ...B..........q.
	defb 0d3h,021h,055h,051h,040h,050h,0d4h,071h,0a1h,0d3h,001h,044h,022h,001h,0d4h,091h	; 784a  .!UQ@P.q...D"...
	defb 0d3h,001h,041h,075h,041h,071h,0d4h,091h,0d3h,001h,021h,061h,0d4h,090h,0d3h,000h	; 785a  ..AuAq....!a....
	defb 020h,060h,090h,0d2h,000h,020h,060h,0d4h,071h,0a1h,0d3h,021h,057h,0eah,009h,051h	; 786a   `... `.q..!W..Q
	defb 0eah,00bh,0d4h,071h,0a1h,0d3h,001h,049h,0d4h,051h,091h,0d3h,001h,057h,0eah,009h	; 787a  ...q...I.Q...W..
	defb 051h,0eah,00bh,0d4h,051h,091h,0d3h,001h,057h,0eah,009h,051h,0eah,00bh,0feh,001h	; 788a  Q...Q...W..Q....
	defb 0e9h,009h,0eah,00ch,0edh,009h,0ebh,012h,010h,0d4h,071h,070h,070h,070h,071h,070h	; 789a  ..........qpppqp
	defb 070h,070h,051h,050h,021h,020h,001h,000h,000h,000h,001h,000h,000h,0d3h,000h,0d4h	; 78aa  ppQP! ..........
	defb 000h,000h,000h,000h,020h,040h,051h,050h,050h,050h,051h,050h,051h,050h,050h,050h	; 78ba  .... @QPPPQPQPPP
	defb 050h,000h,050h,020h,0d3h,020h,0d4h,020h,020h,021h,020h,021h,020h,0d3h,020h,0d4h	; 78ca  P.P . .  ! ! . .
	defb 020h,040h,040h,050h,060h,071h,070h,070h,050h,051h,021h,020h,040h,050h,070h,050h	; 78da   @@P`qppPQ! @PpP
	defb 040h,020h,001h,000h,000h,000h,001h,000h,001h,000h,000h,000h,020h,040h,070h,051h	; 78ea  @ .......... @pQ
	defb 050h,050h,050h,001h,050h,050h,050h,051h,050h,050h,051h,020h,020h,021h,020h,030h	; 78fa  PPP.PPPQPPQ  ! 0
	defb 040h,050h,060h,060h,0d3h,060h,0d4h,060h,060h,090h,0d3h,000h,030h,0feh,001h,0eah	; 790a  @P``.`.``...0...
	defb 00ch,0edh,009h,0ebh,012h,010h,0d4h,070h,070h,071h,070h,070h,071h,070h,070h,070h	; 791a  .......ppqppqppp
	defb 071h,050h,020h,050h,000h,000h,001h,000h,000h,001h,000h,040h,070h,0d3h,000h,040h	; 792a  qP P.......@p..@
	defb 000h,0d4h,0a0h,070h,091h,090h,090h,090h,090h,070h,040h,090h,090h,091h,090h,090h	; 793a  ...p.....p@.....
	defb 091h,020h,0d3h,020h,0d4h,020h,020h,021h,020h,021h,020h,0d3h,020h,0d4h,020h,040h	; 794a  . . .  ! ! . . @
	defb 0d3h,040h,0d4h,050h,060h,071h,070h,070h,070h,071h,070h,070h,070h,051h,020h,040h	; 795a  .@.P`qpppqpppQ @
	defb 050h,070h,001h,000h,000h,000h,001h,001h,040h,070h,0a0h,0d3h,000h,0d4h,0a0h,070h	; 796a  Pp......@p.....p
	defb 040h,051h,050h,050h,050h,000h,020h,050h,050h,050h,050h,051h,000h,020h,050h,050h	; 797a  @QPPP. PPPPQ. PP
	defb 050h,051h,050h,050h,051h,050h,050h,050h,051h,050h,051h,0fdh,098h,078h,0feh,001h	; 798a  PQPPQPPPQPQ..x..
	defb 0eeh,002h,0f2h,00ah,0f1h,041h,0e9h,009h,0ech,0eah,006h,0d1h,05bh,041h,050h,072h	; 799a  .....A......[APr
	defb 049h,001h,021h,041h,0d1h,049h,021h,040h,052h,026h,0eah,007h,0d4h,050h,090h,0d3h	; 79aa  I.!A.I!@R&...P..
	defb 000h,020h,0eah,008h,050h,090h,0d2h,000h,0eah,006h,0d1h,05bh,041h,050h,072h,04bh	; 79ba  . ..P......[APrK
	defb 051h,073h,09bh,0eah,004h,091h,0c1h,0eah,008h,0eeh,000h,0d1h,033h,063h,093h,0feh	; 79ca  Qs..........3c..
	defb 001h,0eeh,001h,0f2h,009h,0f1h,042h,0e9h,009h,0eah,00ah,0ebh,000h,010h,0d1h,075h	; 79da  ......B........u
	defb 020h,020h,02dh,0eah,007h,021h,0eah,00ah,042h,042h,0ech,0eah,008h,0e9h,001h,073h	; 79ea    -..!..BB.....s
	defb 07dh,0eah,00ah,0ebh,000h,010h,0e9h,009h,075h,003h,001h,043h,009h,0eah,007h,001h	; 79fa  }.......u..C....
	defb 0eah,007h,0eeh,002h,0ech,0d3h,091h,0d2h,000h,020h,0eeh,001h,0eah,008h,0e9h,001h	; 7a0a  ......... ......
	defb 0d1h,023h,0eah,00ah,0ebh,000h,010h,0e9h,00ah,024h,0e9h,009h,0d2h,0a3h,0a1h,0a1h	; 7a1a  .#.......$......
	defb 0d1h,021h,0edh,009h,0ebh,083h,010h,0eah,00ah,0d2h,0a5h,095h,073h,0ebh,000h,010h	; 7a2a  .!..........s...
	defb 0eah,00ah,0d2h,095h,09dh,0eah,007h,091h,0ebh,087h,0f0h,0eah,008h,0edh,007h,0f1h	; 7a3a  ................
	defb 043h,0d0h,073h,051h,041h,051h,0feh,001h,0eeh,001h,0f2h,00ah,0f1h,041h,0e9h,009h	; 7a4a  C.sQAQ.......A..
	defb 0eah,009h,0ebh,000h,010h,0d1h,023h,0d2h,050h,0a0h,0d1h,020h,052h,043h,050h,070h	; 7a5a  ......#.P.. RCPp
	defb 0d2h,0a3h,0d1h,000h,0d2h,0a0h,070h,040h,001h,041h,051h,071h,090h,0a0h,0d1h,000h	; 7a6a  ......p@.AQq....
	defb 042h,0d3h,050h,090h,0d2h,000h,020h,050h,070h,090h,070h,050h,090h,020h,050h,090h	; 7a7a  B.P... Pp.pP. P.
	defb 0d1h,000h,020h,000h,0d2h,090h,070h,050h,050h,070h,070h,090h,090h,050h,050h,020h	; 7a8a  .. ...pPPpp..PP
	defb 050h,0d1h,020h,057h,0d1h,042h,050h,070h,0d2h,0a5h,0d3h,0a0h,0d2h,000h,040h,070h	; 7a9a  P. W.BPp......@p
	defb 071h,091h,0a3h,0d1h,005h,0d3h,000h,050h,090h,0d2h,000h,050h,090h,0d1h,000h,050h	; 7aaa  q......P...P...P
	defb 0d3h,060h,050h,060h,090h,0d1h,095h,0a3h,0d0h,001h,0feh,001h,0f2h,008h,0f1h,042h	; 7aba  .`P`...........B
	defb 0e9h,009h,0eeh,001h,0eah,009h,0ebh,000h,010h,0d1h,025h,0a0h,090h,070h,050h,040h	; 7aca  ..........%..pP@
	defb 020h,000h,0d2h,0a0h,090h,070h,0a0h,0a0h,0d1h,000h,0d2h,070h,040h,000h,0d3h,070h	; 7ada   ....p.....p@..p
	defb 040h,0d1h,042h,042h,071h,045h,003h,001h,043h,0d2h,000h,020h,060h,090h,0d1h,020h	; 7aea  @.BBqE..C.. `..
	defb 060h,020h,0d2h,090h,0d1h,060h,020h,000h,020h,000h,0d2h,090h,060h,020h,0a5h,0a3h	; 7afa  ` ...` . ...` ..
	defb 0a1h,0a1h,0a1h,0d3h,0a0h,0d2h,000h,040h,070h,0a0h,070h,040h,000h,0d1h,040h,020h	; 7b0a  .......@p.p@..@
	defb 000h,0d2h,0a0h,090h,070h,050h,040h,0d3h,090h,0d2h,000h,050h,090h,0a1h,096h,0d1h	; 7b1a  ....pP@....P....
	defb 000h,050h,090h,0d0h,075h,053h,0d3h,090h,090h,0d2h,000h,000h,050h,050h,0fdh,050h	; 7b2a  .P..uS......PP.P
	defb 07ah,0feh,001h,0f8h,003h,0f2h,009h,0f1h,042h,0e9h,006h,0eah,00bh,0ebh,034h,010h	; 7b3a  z.......B.....4.
	defb 0d2h,091h,0d1h,001h,0d2h,091h,0d1h,001h,0d2h,091h,0d1h,001h,0d2h,091h,0d1h,001h	; 7b4a  ................
	defb 0d2h,0b1h,0d1h,031h,0d2h,0b1h,0d1h,031h,0d2h,0b1h,0d1h,031h,0d2h,0b1h,0d1h,031h	; 7b5a  ...1...1...1...1
	defb 0fch,002h,03bh,07bh,0feh,001h,0f2h,009h,0f1h,043h,0e9h,006h,0eah,00bh,0ebh,000h	; 7b6a  ...{.....C......
	defb 010h,0d2h,091h,0a0h,0b0h,0d1h,009h,0eah,009h,001h,0eah,00bh,031h,010h,000h,0d2h	; 7b7a  ............1...
	defb 0b9h,0eah,009h,0b1h,0eah,00bh,091h,0a0h,0b0h,0d1h,009h,0eah,009h,001h,0eah,00bh	; 7b8a  ................
	defb 0d2h,0b1h,0d1h,000h,010h,039h,0eah,009h,031h,0fch,002h,06eh,07bh,0feh,001h,0f2h	; 7b9a  .....9..1..n{...
	defb 009h,0f1h,053h,0e9h,006h,0eah,00bh,0ebh,013h,031h,0d1h,0c1h,021h,071h,0eah,008h	; 7baa  ..S......1..!q..
	defb 071h,0eah,00bh,021h,071h,0eah,008h,071h,0eah,00bh,021h,0eah,008h,021h,0eah,00bh	; 7bba  q..!q..q..!..!..
	defb 031h,081h,0eah,008h,081h,0eah,00bh,031h,081h,0eah,008h,081h,0eah,00bh,031h,0fch	; 7bca  1......1......1.
	defb 004h,0a7h,07bh,0feh,001h,0f2h,009h,0f1h,053h,0e9h,006h,0eah,00bh,0ebh,013h,021h	; 7bda  ..{.....S......!
	defb 0d3h,041h,071h,061h,0b1h,0d3h,031h,071h,061h,0b1h,0d2h,031h,071h,061h,0b1h,0a1h	; 7bea  .Aqa..1qa..1qa..
	defb 0d1h,041h,031h,071h,0eah,007h,071h,0c5h,0ebh,034h,010h,0eah,00bh,0d3h,090h,0d2h	; 7bfa  .A1q..q..4......
	defb 000h,0d3h,090h,0d2h,000h,0d2h,090h,0d1h,000h,0d2h,090h,0d1h,000h,0fdh,03bh,07bh	; 7c0a  ...............{
	defb 0feh,001h,0f8h,001h,0eeh,001h,0f2h,009h,0f1h,042h,0e9h,006h,0eah,00ch,0ebh,033h	; 7c1a  .........B.....3
	defb 020h,0d4h,091h,091h,091h,091h,091h,091h,091h,091h,0fch,004h,01ah,07ch,0feh,001h	; 7c2a   ............|..
	defb 0eeh,001h,0f2h,009h,0f1h,042h,0e9h,006h,0eah,00ch,0ebh,012h,021h,0d3h,041h,0ebh	; 7c3a  .....B......!.A.
	defb 033h,020h,0d4h,091h,091h,0ebh,012h,021h,0d3h,041h,0ebh,033h,020h,0d4h,091h,091h	; 7c4a  3 .....!.A.3 ...
	defb 091h,091h,0ebh,012h,021h,0d3h,031h,0ebh,033h,020h,0d4h,091h,091h,0ebh,012h,021h	; 7c5a  ....!.1.3 .....!
	defb 0d3h,031h,0ebh,033h,020h,0d4h,091h,091h,091h,091h,0fch,004h,038h,07ch,0feh,001h	; 7c6a  .1.3 .......8|..
	defb 0eeh,001h,0f2h,009h,0f1h,042h,0e9h,006h,0eah,00bh,0ebh,002h,010h,0d4h,049h,081h	; 7c7a  .....B........I.
	defb 0d3h,021h,071h,0d4h,039h,091h,0d3h,031h,081h,0fch,004h,078h,07ch,0feh,001h,0f2h	; 7c8a  .!q.9..1...x|...
	defb 009h,0f1h,053h,0e9h,006h,0eah,00bh,0ebh,013h,021h,0d4h,041h,071h,061h,0b1h,0a1h	; 7c9a  ..S......!.Aqa..
	defb 0d3h,041h,031h,071h,061h,0b1h,0a1h,0d2h,041h,031h,071h,061h,0b1h,0eah,007h,0b1h	; 7caa  .A1qa...A1qa....
	defb 0c5h,0ebh,034h,010h,0eah,00ah,0d3h,040h,090h,040h,090h,0d2h,040h,090h,040h,090h	; 7cba  ..4....@.@..@.@.
	defb 0fdh,01ah,07ch,0feh,001h,0f8h,001h,0eeh,001h,0f2h,009h,0f1h,042h,0e9h,006h,0eah	; 7cca  ..|.........B...
	defb 006h,0c0h,0ebh,000h,010h,0d2h,091h,0d1h,001h,0d2h,091h,0d1h,001h,0d2h,091h,0d1h	; 7cda  ................
	defb 001h,0d2h,091h,0d1h,001h,0d2h,0b1h,0d1h,031h,0d2h,0b1h,0d1h,031h,0d2h,0b1h,0d1h	; 7cea  ........1...1...
	defb 031h,0d2h,0b1h,0d1h,030h,0eah,00ah,0eeh,000h,0ebh,034h,010h,0d2h,041h,091h,041h	; 7cfa  1...0.....4..A.A
	defb 091h,041h,091h,041h,091h,031h,0b1h,031h,0b1h,031h,0b1h,031h,0b1h,0feh,001h,0eeh	; 7d0a  .A.A.1.1.1.1....
	defb 001h,0f2h,009h,0f1h,042h,0e9h,006h,0eah,00ah,0ebh,034h,010h,0d3h,091h,0d2h,001h	; 7d1a  ....B.....4.....
	defb 0d3h,091h,0d2h,001h,0d3h,091h,0d2h,001h,0d3h,091h,0d2h,001h,0d3h,0b1h,0d2h,031h	; 7d2a  ...............1
	defb 0d3h,0b1h,0d2h,031h,0d3h,0b1h,0d2h,031h,0d3h,0b1h,0d2h,031h,0fch,004h,017h,07dh	; 7d3a  ...1...1...1...}
	defb 0feh,001h,0f2h,009h,0f1h,053h,0e9h,006h,0eah,00bh,0ebh,013h,031h,0d2h,0c1h,081h	; 7d4a  .....S......1...
	defb 0d1h,021h,0eah,007h,021h,0eah,00ah,0d2h,081h,0d1h,021h,0eah,007h,021h,0eah,00ah	; 7d5a  .!..!.....!..!..
	defb 0d2h,081h,0eah,007h,081h,0eah,00bh,091h,0d1h,031h,0eah,007h,031h,0eah,00ah,0d2h	; 7d6a  .........1..1...
	defb 091h,0d1h,031h,0eah,007h,031h,0eah,00ah,0d2h,091h,0fch,004h,04ah,07dh,0feh,001h	; 7d7a  ..1..1......J}..
	defb 0f2h,009h,0f1h,053h,0e9h,006h,0eah,00bh,0ebh,013h,021h,0d5h,041h,071h,061h,0b1h	; 7d8a  ...S......!.Aqa.
	defb 0a1h,0d4h,041h,031h,071h,0eah,00ah,0d3h,0a1h,0d2h,041h,031h,071h,061h,0b1h,0a1h	; 7d9a  ..A1q.....A1qa..
	defb 0d1h,041h,0eah,006h,041h,0c5h,0eah,009h,0ebh,000h,010h,0d3h,080h,070h,040h,030h	; 7daa  .A..A........p@0
	defb 020h,000h,0d4h,0b0h,0a0h,0fdh,0cdh,07ch,0feh,002h,0e2h,001h,047h,0f4h,0e2h,003h	; 7dba   ......|....G...
	defb 0c5h,0f4h,0c5h,0f7h,0e2h,005h,0c5h,0f4h,0e2h,003h,0b5h,0f7h,0b5h,0f4h,0b5h,0f7h	; 7dca  ................
	defb 0a5h,0f4h,0a5h,0f7h,0a5h,0f4h,0a5h,0f7h,0a5h,0f4h,0a5h,0f7h,085h,0f4h,095h,0f7h	; 7dda  ................
	defb 095h,0f4h,075h,0f7h,085h,0f4h,085h,0f7h,065h,0f4h,075h,0f7h,075h,0f4h,055h,0f7h	; 7dea  ..u.....e.u.u.U.
	defb 065h,0f4h,065h,0f7h,045h,0f4h,055h,0f7h,055h,0f4h,035h,0f7h,045h,0f4h,045h,0f7h	; 7dfa  e.e.E.U.U.5.E.E.
	defb 025h,0f4h,035h,0f7h,035h,0f4h,015h,0f7h,025h,0f4h,025h,0f7h,015h,0f4h,0f9h,0d6h	; 7e0a  %.5.5...%.%.....
	defb 07eh,0f9h,0e6h,074h,0feh,002h,0e2h,001h,047h,0a0h,0e2h,003h,0c5h,09eh,0c5h,0a0h	; 7e1a  ~..t....G.......
	defb 0e2h,005h,0c5h,09eh,0e2h,003h,0b5h,0a0h,0b5h,09eh,0b5h,0a0h,0a5h,09eh,0a5h,0a0h	; 7e2a  ................
	defb 0a5h,09eh,0a5h,0a0h,0a5h,09eh,0a5h,0a0h,085h,09eh,095h,0a0h,095h,09eh,075h,0a0h	; 7e3a  ..............u.
	defb 085h,09eh,085h,0a0h,065h,09eh,075h,0a0h,075h,09eh,055h,0a0h,065h,09eh,065h,0a0h	; 7e4a  ....e.u.u.U.e.e.
	defb 045h,09eh,055h,0a0h,055h,09eh,035h,0a0h,045h,09eh,045h,0a0h,025h,09eh,035h,0a0h	; 7e5a  E.U.U.5.E.E.%.5.
	defb 035h,09eh,015h,0a0h,025h,09eh,025h,0a0h,015h,09eh,0f9h,0d6h,07eh,0f9h,058h,075h	; 7e6a  5...%.%.....~.Xu
	defb 0feh,002h,0e2h,001h,044h,0bch,0e2h,003h,0c4h,0bah,0c4h,0bch,0e2h,005h,0c4h,0bah	; 7e7a  ....D...........
	defb 0e2h,003h,0b4h,0bch,0b4h,0bah,0b4h,0bch,0a4h,0bah,0a4h,0bch,0a4h,0bah,0a4h,0bch	; 7e8a  ................
	defb 0a4h,0bah,0a4h,0bch,084h,0bah,094h,0bch,094h,0bah,074h,0bch,084h,0bah,084h,0bch	; 7e9a  ..........t.....
	defb 064h,0bah,074h,0bch,074h,0bah,054h,0bch,064h,0bah,064h,0bch,044h,0bah,054h,0bch	; 7eaa  d.t.t.T.d.d.D.T.
	defb 054h,0bah,034h,0bch,044h,0bah,044h,0bch,024h,0bah,034h,0bch,034h,0bah,014h,0bch	; 7eba  T.4.D.D.$.4.4...
	defb 024h,0bah,024h,0bch,014h,0bah,0f9h,0d6h,07eh,0f9h,0bah,075h,0e0h,00ah,0fch,002h	; 7eca  $.$.....~..u....
	defb 0d6h,07eh,0f8h,003h,0fah,0feh,001h,0e9h,009h,0eah,00ch,0ebh,011h,020h,0f9h,061h	; 7eda  .~........... .a
	defb 080h,0eah,00ch,0d3h,041h,0b1h,0d2h,041h,0d3h,051h,0b1h,0d2h,053h,0eah,00bh,053h	; 7eea  ....A..A.Q..S..S
	defb 0eah,00ah,053h,0eah,009h,053h,0fbh,002h,0ebh,07eh,0eah,00ah,0d3h,041h,0b1h,0d2h	; 7efa  ..S..S...~...A..
	defb 041h,0eah,00bh,0d3h,051h,0b1h,0d2h,051h,0eah,00ch,0d3h,041h,0b1h,0d2h,041h,0eah	; 7f0a  A...Q..Q...A..A.
	defb 00dh,0d3h,051h,0b1h,0d2h,051h,0eah,00bh,051h,0eah,00ah,051h,0eah,009h,051h,0f9h	; 7f1a  ..Q..Q..Q..Q..Q.
	defb 061h,080h,0f2h,005h,0f1h,042h,0ebh,080h,010h,0edh,008h,0eah,008h,0d1h,041h,0b1h	; 7f2a  a....B........A.
	defb 0d0h,041h,0d1h,051h,0b1h,0d0h,057h,0eah,007h,053h,0eah,006h,053h,0fbh,002h,035h	; 7f3a  .A.Q..W..S..S..5
	defb 07fh,0eah,008h,0d2h,041h,0b1h,0d1h,041h,0eah,009h,0d2h,051h,0b1h,0d1h,051h,0eah	; 7f4a  ....A..A...Q..Q.
	defb 00ah,0d2h,041h,0b1h,0d1h,041h,0eah,00bh,0d2h,051h,0b1h,0d1h,051h,0eah,00ah,051h	; 7f5a  ..A..A...Q..Q..Q
	defb 0eah,009h,051h,0eah,008h,051h,0fdh,0dfh,07eh,0feh,001h,0e9h,009h,0eah,00ch,0ebh	; 7f6a  ..Q..Q..~.......
	defb 011h,020h,0f9h,0a9h,080h,0d4h,0eah,00ch,041h,0eah,00ah,041h,0eah,00ch,0b1h,0eah	; 7f7a  . ......A..A....
	defb 00ah,0b1h,0d3h,0eah,00ch,001h,0eah,00ah,001h,0eah,00ch,0d4h,091h,0eah,00ah,091h	; 7f8a  ................
	defb 0eah,00ch,0b1h,0eah,00ah,0b1h,0eah,00ch,071h,0eah,00ah,071h,0eah,00ch,091h,0eah	; 7f9a  ........q..q....
	defb 00ah,091h,0eah,00ch,061h,0eah,00ah,061h,0fbh,002h,07fh,07fh,0eah,00ch,0d4h,041h	; 7faa  ....a..a.......A
	defb 0b1h,0d3h,041h,0d4h,051h,0b1h,0d3h,053h,0eah,00bh,053h,0eah,00ah,053h,0eah,009h	; 7fba  ..A.Q..S..S..S..
	defb 053h,0fbh,002h,0b6h,07fh,0eah,00ah,0d4h,041h,0b1h,0d3h,041h,0eah,00bh,0d4h,051h	; 7fca  S.......A..A...Q
	defb 0b1h,0d3h,051h,0eah,00ch,0d4h,041h,0b1h,0d3h,041h,0eah,00dh,0d4h,051h,0b1h,0d3h	; 7fda  ..Q...A..A...Q..
	defb 051h,0eah,00bh,051h,0eah,00ah,051h,0eah,009h,051h,0fdh,073h,07fh,0feh,001h,0e9h	; 7fea  Q..Q..Q..Q.s....
	defb 009h,0eah,00ah,0c1h,0eeh,007h	; 7ffa
