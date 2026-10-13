; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 02 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS partida_8000: el ultimo byte de `ld a,(0xE3F3)` de p01:7FFE, que
;   empieza en el banco 1; lo leen p01:7FFE (1 bytes)
;   0x8000..0x8001  (1 bytes)
DATA_partida_8000:
	defb 0e3h	; 8000

; ======================================================================
; CODIGO 0x8001..0x828a  (649 bytes)
; ======================================================================


L_8001:
	and 00ch		;8001
	ld (0e3f4h),a		;8003
	ld a,001h		;8006
	ld (0e3ebh),a		;8008
	inc a			;800b
	ld (0e3e1h),a		;800c
	call 0baech		;800f
L_8012:
	call L_8214		;8012
	and 00ch		;8015
	ld bc,(0e8f0h)		;8017
	ld de,(0e8f2h)		;801b
	jp L_8254		;801f
L_8022:
	djnz L_8060		;8022
	call L_8202		;8024
	ld a,(0e3f4h)		;8027
	ld bc,010a9h		;802a
	ld de,00180h		;802d
	call L_8254		;8030
	ld a,(0e3ebh)		;8033
	dec a			;8036
	jr nz,L_8049		;8037
	ld hl,0e3f5h		;8039
	inc (hl)			;803c
	ld a,(hl)			;803d
	cp 011h		;803e
	jp nz,07c06h		;8040
	dec (hl)			;8043
	ld hl,0e3ebh		;8044
	inc (hl)			;8047
	ret			;8048
L_8049:
	ld hl,0e3f5h		;8049
	inc (hl)			;804c
	ld a,(hl)			;804d
	cp 022h		;804e
	jp nz,07c06h		;8050
	xor a			;8053
	ld (hl),a			;8054
	ld (0e3ebh),a		;8055
	ld (0e3f4h),a		;8058
	inc a			;805b
	ld (0e3e1h),a		;805c
	ret			;805f
L_8060:
	ld a,014h		;8060
	ld (0e3f6h),a		;8062
	ld a,001h		;8065
	ld (0e3fch),a		;8067
	ld a,004h		;806a
	ld (0e3e3h),a		;806c
	ld hl,0e3e5h		;806f
	ld (hl),060h		;8072
	inc l			;8074
	inc l			;8075
	ld (hl),030h		;8076
	jp L_81CE		;8078
L_807B:
	djnz L_80C5		;807b
	ld hl,010f0h		;807d
	ld (0e8f0h),hl		;8080
	ld hl,00200h		;8083
	ld (0e8f2h),hl		;8086
	ld a,(0e008h)		;8089
	and 001h		;808c
	jr z,L_80A9		;808e
	ld a,0ffh		;8090
	ld (0e3f5h),a		;8092
	ld a,(0e3f3h)		;8095
	and 00ch		;8098
	ld (0e3f4h),a		;809a
	ld a,001h		;809d
	ld (0e3ebh),a		;809f
	inc a			;80a2
	ld (0e3e1h),a		;80a3
	call 0baech		;80a6
L_80A9:
	ld a,(0e3b1h)		;80a9
	dec a			;80ac
	jr nz,L_80B5		;80ad
	ld a,003h		;80af
	ld (0e3e1h),a		;80b1
	ret			;80b4
L_80B5:
	call L_8214		;80b5
	and 00ch		;80b8
	ld bc,(0e8f0h)		;80ba
	ld de,(0e8f2h)		;80be
	jp L_8254		;80c2
L_80C5:
	djnz L_8100		;80c5
	ld a,(0e3f4h)		;80c7
	ld bc,010f0h		;80ca
	ld de,00200h		;80cd
	call L_8254		;80d0
	ld a,(0e3ebh)		;80d3
	dec a			;80d6
	jr nz,L_80E9		;80d7
	ld hl,0e3f5h		;80d9
	inc (hl)			;80dc
	ld a,(hl)			;80dd
	cp 011h		;80de
	jp nz,07c06h		;80e0
	dec (hl)			;80e3
	ld hl,0e3ebh		;80e4
	inc (hl)			;80e7
	ret			;80e8
L_80E9:
	ld hl,0e3f5h		;80e9
	inc (hl)			;80ec
	ld a,(hl)			;80ed
	cp 022h		;80ee
	jp nz,07c06h		;80f0
	xor a			;80f3
	ld (hl),a			;80f4
	ld (0e3ebh),a		;80f5
	ld (0e3f4h),a		;80f8
	inc a			;80fb
	ld (0e3e1h),a		;80fc
	ret			;80ff
L_8100:
	djnz L_811E		;8100
	call L_81CE		;8102
	ld a,(0e3e7h)		;8105
	cp 078h		;8108
	ld a,008h		;810a
	jr z,L_8132		;810c
	jr c,L_8112		;810e
	ld a,004h		;8110
L_8112:
	ld bc,010f0h		;8112
	ld de,00100h		;8115
	ld (0e3f3h),a		;8118
	jp L_8254		;811b
L_811E:
	djnz L_813F		;811e
	ld bc,010f0h		;8120
	ld de,00100h		;8123
	ld a,(0e3f3h)		;8126
	call L_8254		;8129
	ld a,(0e3e7h)		;812c
	sub 078h		;812f
	ret nz			;8131
L_8132:
	ld a,001h		;8132
	ld (0e3e3h),a		;8134
	ld a,002h		;8137
	ld (0e3b1h),a		;8139
	jp L_81CE		;813c
L_813F:
	djnz L_814C		;813f
	ld a,(0ea29h)		;8141
	or a			;8144
	ret z			;8145
	cp 089h		;8146
	jp c,L_81CE		;8148
	ret			;814b
L_814C:
	djnz L_817D		;814c
	ld de,0fa00h		;814e
	ld hl,(0e3e6h)		;8151
	add hl,de			;8154
	ld (0e3e6h),hl		;8155
	ld a,h			;8158
	ld d,0fdh		;8159
	ld hl,(0e3e4h)		;815b
	add hl,de			;815e
	ld (0e3e4h),hl		;815f
	cp 008h		;8162
	ret nc			;8164
	ld hl,00000h		;8165
	ld (0e3e6h),hl		;8168
	ld a,060h		;816b
	ld (0e3e5h),a		;816d
	ld a,001h		;8170
	ld (0e3fdh),a		;8172
	ld a,003h		;8175
	ld (0e3b1h),a		;8177
	jp L_81CE		;817a
L_817D:
	djnz L_8190		;817d
	ld a,(0e3b1h)		;817f
	cp 004h		;8182
	ret nz			;8184
	xor a			;8185
	ld (0e3fdh),a		;8186
	ld a,048h		;8189
	ld (0e3e2h),a		;818b
	jr L_81CE		;818e
L_8190:
	djnz L_81B3		;8190
	ld bc,010f0h		;8192
	ld de,00400h		;8195
	ld a,008h		;8198
	call L_8254		;819a
	ld a,(0e3e7h)		;819d
	cp 078h		;81a0
	ret c			;81a2
	ld a,001h		;81a3
	ld (0e3e3h),a		;81a5
	ld (0e3f8h),a		;81a8
	ld a,005h		;81ab
	ld (0e3b1h),a		;81ad
	jp L_8311		;81b0
L_81B3:
	xor a			;81b3
	ld (0e3fdh),a		;81b4
	inc a			;81b7
	ld (0e3f8h),a		;81b8
	ld hl,0e3e5h		;81bb
	ld (hl),060h		;81be
	inc l			;81c0
	inc l			;81c1
	ld (hl),078h		;81c2
	jr L_81CE		;81c4
L_81C6:
	ld hl,0e3e0h		;81c6
	inc (hl)			;81c9
	inc l			;81ca
	ld (hl),000h		;81cb
	ret			;81cd
L_81CE:
	ld hl,0e3e1h		;81ce
	inc (hl)			;81d1
	ret			;81d2
L_81D3:
	call L_81E2		;81d3
L_81D6:
	ld hl,(0e3e4h)		;81d6
	ld de,(0e3ech)		;81d9
	add hl,de			;81dd
	ld (0e3e4h),hl		;81de
	ret			;81e1
L_81E2:
	ld hl,(0e3e6h)		;81e2
	ld de,(0e3eeh)		;81e5
	add hl,de			;81e9
	ld (0e3e6h),hl		;81ea
	ret			;81ed
L_81EE:
	ld hl,(0e3ech)		;81ee
	call 043b3h		;81f1
	ld (0e3ech),hl		;81f4
	ret			;81f7
L_81F8:
	ld hl,(0e3eeh)		;81f8
	call 043b3h		;81fb
	ld (0e3eeh),hl		;81fe
	ret			;8201
L_8202:
	ld a,(0e3f6h)		;8202
	or a			;8205
	ret nz			;8206
	ld a,001h		;8207
	ld (0e3f7h),a		;8209
	ld hl,00006h		;820c
	ld (0e3e0h),hl		;820f
	xor a			;8212
	ret			;8213
L_8214:
	ld a,(0e009h)		;8214
	and 00fh		;8217
	ld b,a			;8219
	ld c,000h		;821a
	jr z,L_824F		;821c
	ld a,(0e008h)		;821e
	and 00fh		;8221
	cp 00fh		;8223
	ret z			;8225
	ld c,001h		;8226
	rra			;8228
	jr c,L_824F		;8229
	ld c,002h		;822b
	rra			;822d
	jr c,L_824F		;822e
	ld c,004h		;8230
	rra			;8232
	jr c,L_824F		;8233
	ld c,008h		;8235
	rra			;8237
	jr c,L_824F		;8238
	ld a,b			;823a
	cp 00fh		;823b
	ret z			;823d
	ld c,001h		;823e
	rra			;8240
	jr c,L_824F		;8241
	ld c,002h		;8243
	rra			;8245
	jr c,L_824F		;8246
	ld c,004h		;8248
	rra			;824a
	jr c,L_824F		;824b
	ld c,008h		;824d
L_824F:
	ld a,c			;824f
	ld (0e3f3h),a		;8250
	ret			;8253
L_8254:
	call L_8292		;8254
	ld a,(0e3a1h)		;8257
	cp 003h		;825a
	jr nz,L_8263		;825c
	ld a,001h		;825e
	ld (0e3e3h),a		;8260
L_8263:
	ld b,000h		;8263
	ld a,(0e3ebh)		;8265
	or a			;8268
	ret nz			;8269
	ld a,(0e3f3h)		;826a
	or a			;826d
	jr z,L_8279		;826e
	ld a,(0e003h)		;8270
	and 004h		;8273
	jr z,L_8279		;8275
	ld b,001h		;8277
L_8279:
	ld a,(0e3e3h)		;8279
	dec a			;827c
	add a,a			;827d
	add a,b			;827e
	ld hl,0828ah		;827f
	call 040a1h		;8282
	ld a,(hl)			;8285
	ld (0e3e2h),a		;8286
	ret			;8289

; ----------------------------------------------------------------------
; DATOS resto_828A: lo apuntan con el banco puesto p02:827F (0x828A); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p02:827F (8 bytes)
;   0x828a..0x8292  (8 bytes)
DATA_resto_828A:
	defb 000h,00ch,018h,024h,030h,03ch,048h,054h	; 828a  ...$0<HT

; ======================================================================
; CODIGO 0x8292..0x858c  (762 bytes)
; ======================================================================


L_8292:
	and 00fh		;8292
	ret z			;8294
	rra			;8295
	jr c,L_82D9		;8296
	rra			;8298
	jr c,L_82F6		;8299
	rra			;829b
	jr c,L_82B5		;829c
	ld a,004h		;829e
	ld (0e3e3h),a		;82a0
	ld hl,(0e3e6h)		;82a3
	add hl,de			;82a6
	ld (0e3e6h),hl		;82a7
	ld a,(0e3e7h)		;82aa
	cp c			;82ad
	ret c			;82ae
	dec c			;82af
	ld hl,0e3e7h		;82b0
	ld (hl),c			;82b3
	ret			;82b4
L_82B5:
	ld a,(0e3a1h)		;82b5
	cp 002h		;82b8
	jr z,L_82C5		;82ba
	cp 007h		;82bc
	jr z,L_82C5		;82be
	ld a,003h		;82c0
	ld (0e3e3h),a		;82c2
L_82C5:
	call 043adh		;82c5
	ld hl,(0e3e6h)		;82c8
	add hl,de			;82cb
	ld (0e3e6h),hl		;82cc
	ld a,(0e3e7h)		;82cf
	cp b			;82d2
	ret nc			;82d3
	ld hl,0e3e7h		;82d4
	ld (hl),b			;82d7
	ret			;82d8
L_82D9:
	ld a,001h		;82d9
	ld (0e3e3h),a		;82db
	call 043adh		;82de
	ld hl,(0e3e4h)		;82e1
	add hl,de			;82e4
	ld (0e3e4h),hl		;82e5
	ld a,(0e3e5h)		;82e8
	exx			;82eb
	cp b			;82ec
	exx			;82ed
	ret nc			;82ee
	exx			;82ef
	ld hl,0e3e5h		;82f0
	ld (hl),b			;82f3
	exx			;82f4
	ret			;82f5
L_82F6:
	ld a,002h		;82f6
	ld (0e3e3h),a		;82f8
	ld hl,(0e3e4h)		;82fb
	add hl,de			;82fe
	ld (0e3e4h),hl		;82ff
	ld a,(0e3e5h)		;8302
	exx			;8305
	cp c			;8306
	exx			;8307
	ret c			;8308
	exx			;8309
	dec c			;830a
	ld hl,0e3e5h		;830b
	ld (hl),c			;830e
	exx			;830f
	ret			;8310
L_8311:
	ld l,03ch		;8311
	ld a,(0e3a1h)		;8313
	cp 006h		;8316
	jr z,L_8329		;8318
	cp 009h		;831a
	jr nz,L_8325		;831c
	ld a,(0e3fdh)		;831e
	or a			;8321
	jp nz,L_839D		;8322
L_8325:
	ld a,(0e3e2h)		;8325
	ld l,a			;8328
L_8329:
	ld h,001h		;8329
	ld a,(0e3a1h)		;832b
	cp 001h		;832e
	jp z,L_83AB		;8330
	cp 005h		;8333
	jr z,L_8339		;8335
	ld h,004h		;8337
L_8339:
	ld a,(0e3e5h)		;8339
	ld e,a			;833c
	ld a,(0e3e7h)		;833d
	ld d,a			;8340
	ld (0f000h),de		;8341
	ld (0f002h),hl		;8345
	ld a,e			;8348
	sub 008h		;8349
	ld e,a			;834b
	ld a,l			;834c
	add a,004h		;834d
	ld l,a			;834f
	ld (0f004h),de		;8350
	ld h,00bh		;8354
	ld (0f006h),hl		;8356
	ld a,e			;8359
	add a,010h		;835a
	ld e,a			;835c
	ld a,l			;835d
	add a,004h		;835e
	ld l,a			;8360
	ld (0f008h),de		;8361
	ld h,00fh		;8365
	ld (0f00ah),hl		;8367
	ld a,(0e3f7h)		;836a
	or a			;836d
	jr z,L_8382		;836e
	ld a,(0e003h)		;8370
	and 002h		;8373
	jr nz,L_8382		;8375
	ld a,00ah		;8377
	ld (0f003h),a		;8379
	ld (0f007h),a		;837c
	ld (0f00bh),a		;837f
L_8382:
	ld a,(0e3a1h)		;8382
	cp 006h		;8385
	ret nz			;8387
	ld a,(0e3e7h)		;8388
	ld h,a			;838b
	ld a,(0e3e5h)		;838c
	ld l,a			;838f
	call 04509h		;8390
	ld (hl),010h		;8393
	ld a,020h		;8395
	call 040a1h		;8397
	ld (hl),000h		;839a
	ret			;839c
L_839D:
	ld de,0f001h		;839d
	ld hl,0f000h		;83a0
	ld (hl),0e0h		;83a3
	ld bc,0000bh		;83a5
	ldir		;83a8
	ret			;83aa
L_83AB:
	ld a,(0e3e5h)		;83ab
	ld e,a			;83ae
	ld a,(0e3e7h)		;83af
	ld d,a			;83b2
	ld (0f000h),de		;83b3
	ld hl,00430h		;83b7
	ld (0f002h),hl		;83ba
	ld a,e			;83bd
	sub 008h		;83be
	ld e,a			;83c0
	ld (0f004h),de		;83c1
	ld hl,00b34h		;83c5
	ld (0f006h),hl		;83c8
	ld a,e			;83cb
	add a,010h		;83cc
	ld e,a			;83ce
	ld (0f008h),de		;83cf
	ld hl,00838h		;83d3
	ld a,(0f007h)		;83d6
	ld (0f00ah),hl		;83d9
	ret			;83dc
L_83DD:
	ld hl,0f020h		;83dd
	ld de,08860h		;83e0
	ld (hl),e			;83e3
	inc l			;83e4
	ld (hl),d			;83e5
	inc l			;83e6
	ld (hl),078h		;83e7
	inc l			;83e9
	ld (hl),00fh		;83ea
	inc l			;83ec
	ld (hl),e			;83ed
	inc l			;83ee
	ld (hl),d			;83ef
	inc l			;83f0
	ld (hl),07ch		;83f1
	inc l			;83f3
	ld (hl),005h		;83f4
	ret			;83f6
L_83F7:
	xor a			;83f7
	ld (0e3a2h),a		;83f8
	ld hl,0f020h		;83fb
	call L_8401		;83fe
L_8401:
	xor a			;8401
	ld (hl),0e0h		;8402
	inc l			;8404
	ld (hl),a			;8405
	inc l			;8406
	ld (hl),a			;8407
	inc l			;8408
	ld (hl),a			;8409
	inc l			;840a
	ret			;840b
L_840C:
	ld hl,0f010h		;840c
	ld b,008h		;840f
	ld a,(0e3fah)		;8411
	dec a			;8414
	jr nz,L_8419		;8415
	ld b,010h		;8417
L_8419:
	ld a,(0e3e7h)		;8419
	sub b			;841c
	ld d,a			;841d
	ld (hl),0a0h		;841e
	inc l			;8420
	ld (hl),d			;8421
	inc l			;8422
	ld (hl),0ach		;8423
	inc l			;8425
	ld (hl),007h		;8426
	inc l			;8428
	ld a,d			;8429
	sla b		;842a
	add a,b			;842c
	ld d,a			;842d
	ld (hl),0a0h		;842e
	inc l			;8430
	ld (hl),d			;8431
	inc l			;8432
	ld (hl),0b4h		;8433
	inc l			;8435
	ld (hl),007h		;8436
	ld a,b			;8438
	ld b,0e0h		;8439
	cp 020h		;843b
	jr nz,L_8441		;843d
	ld b,0a0h		;843f
L_8441:
	ld a,(0e3e7h)		;8441
	inc l			;8444
	ld (hl),b			;8445
	inc l			;8446
	ld (hl),a			;8447
	inc l			;8448
	ld (hl),0b0h		;8449
	inc l			;844b
	ld (hl),007h		;844c
	ret			;844e
L_844F:
	xor a			;844f
	ld (0e3cch),a		;8450
	ld (0e3c9h),a		;8453
	ld (0e383h),a		;8456
	ld (0e369h),a		;8459
	ld (0e39eh),a		;845c
	ld a,(0eb7ch)		;845f
	and 00fh		;8462
	ld (0eb7ch),a		;8464
	ld a,(0e338h)		;8467
	cp 003h		;846a
	jp z,L_8C32		;846c
	ld a,(0eb7dh)		;846f
	ld bc,00800h		;8472
L_8475:
	rra			;8475
	jr nc,L_8479		;8476
	inc c			;8478
L_8479:
	djnz L_8475		;8479
	ld a,c			;847b
	cp 004h		;847c
	jr c,L_8485		;847e
	ld hl,0eb78h		;8480
	set 7,(hl)		;8483
L_8485:
	ld hl,0eb59h		;8485
	res 5,(hl)		;8488
	ld hl,0eb6bh		;848a
	res 7,(hl)		;848d
	ld hl,0eb67h		;848f
	res 1,(hl)		;8492
	set 0,(hl)		;8494
	ld hl,0eb79h		;8496
	res 7,(hl)		;8499
	res 6,(hl)		;849b
	ld hl,0eb6ah		;849d
	res 2,(hl)		;84a0
	ld a,(0e337h)		;84a2
	cp 002h		;84a5
	jp z,L_8906		;84a7
	ld a,(0e386h)		;84aa
	and a			;84ad
	jp nz,L_8B17		;84ae
	ld hl,0eb6ch		;84b1
	bit 7,(hl)		;84b4
	jr z,L_84BD		;84b6
	ld hl,0eb6dh		;84b8
	set 7,(hl)		;84bb
L_84BD:
	ld de,(0eb40h)		;84bd
	ld hl,00201h		;84c1
	and a			;84c4
	sbc hl,de		;84c5
	jr nc,L_84D2		;84c7
	ld hl,0020dh		;84c9
	and a			;84cc
	sbc hl,de		;84cd
	jp nc,L_859C		;84cf
L_84D2:
	ld hl,00212h		;84d2
	and a			;84d5
	sbc hl,de		;84d6
	jr nc,L_84E3		;84d8
	ld hl,0021eh		;84da
	and a			;84dd
	sbc hl,de		;84de
	jp nc,L_8714		;84e0
L_84E3:
	ld hl,00225h		;84e3
	and a			;84e6
	sbc hl,de		;84e7
	jr nc,L_84F4		;84e9
	ld hl,00228h		;84eb
	and a			;84ee
	sbc hl,de		;84ef
	jp nc,L_88D4		;84f1
L_84F4:
	ld a,(0e3c5h)		;84f4
	dec a			;84f7
	ld hl,0858ch		;84f8
	add a,a			;84fb
	call 040a0h		;84fc
	ld e,(hl)			;84ff
	inc hl			;8500
	ld d,(hl)			;8501
	inc hl			;8502
	ld c,(hl)			;8503
	inc hl			;8504
	ld b,(hl)			;8505
	ld hl,(0eb40h)		;8506
	ld (0e376h),hl		;8509
	add hl,de			;850c
	ld (0eb40h),hl		;850d
	ex de,hl			;8510
	ld hl,00063h		;8511
	and a			;8514
	sbc hl,de		;8515
	jp z,L_8B62		;8517
	ld hl,00062h		;851a
	and a			;851d
	sbc hl,de		;851e
	jp z,L_8B40		;8520
	ld hl,001d5h		;8523
	and a			;8526
	sbc hl,de		;8527
	jp z,L_8B7F		;8529
	ld hl,001b4h		;852c
	and a			;852f
	sbc hl,de		;8530
	jp z,L_8B86		;8532
	ld hl,001f4h		;8535
	and a			;8538
	sbc hl,de		;8539
	jp z,L_8B86		;853b
	ld hl,001b5h		;853e
	and a			;8541
	sbc hl,de		;8542
	jp z,L_8B99		;8544
	ld hl,001f5h		;8547
	and a			;854a
	sbc hl,de		;854b
	jp z,L_8B99		;854d
	ld hl,001b6h		;8550
	and a			;8553
	sbc hl,de		;8554
	jp z,L_8BB1		;8556
	ld hl,001f6h		;8559
	and a			;855c
	sbc hl,de		;855d
	jp z,L_8BB1		;855f
	ld hl,001d6h		;8562
	and a			;8565
	sbc hl,de		;8566
	jp z,L_8BC4		;8568
	ld hl,0009eh		;856b
	and a			;856e
	sbc hl,de		;856f
	jp z,L_8BF7		;8571
	ld hl,0005eh		;8574
	and a			;8577
	sbc hl,de		;8578
	jp z,L_8C13		;857a
L_857D:
	ld hl,0e3c1h		;857d
	ld a,(hl)			;8580
	add a,c			;8581
	ld (hl),a			;8582
	inc hl			;8583
	ld a,(hl)			;8584
	add a,b			;8585
	ld (hl),a			;8586
L_8587:
	xor a			;8587
	ld (0e3c5h),a		;8588
	ret			;858b

; ----------------------------------------------------------------------
; DATOS resto_858C: lo apuntan con el banco puesto p02:84F8 (0x858C); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p02:84F8 (16 bytes)
;   0x858c..0x859c  (16 bytes)
DATA_resto_858C:
	defb 0e0h,0ffh,070h,000h,020h,000h,090h,000h,0ffh,0ffh,000h,0b0h,001h,000h,000h,050h	; 858c  ..p. ..........P

; ======================================================================
; CODIGO 0x859c..0x85a4  (8 bytes)
; ======================================================================


L_859C:
	ld a,(0eb40h)		;859c
	sub 002h		;859f
	call 040abh		;85a1

; ----------------------------------------------------------------------
; DATOS saltos_85A4: tabla de 12 palabras del despachador (call 0x408D en
;   0x85A1); lo leen L_40AB (24 bytes)
;   0x85a4..0x85bc  (24 bytes)
DATA_saltos_85A4:
	defb 0bch,085h	; 85a4
	defb 0c9h,085h	; 85a6
	defb 0eah,085h	; 85a8
	defb 00bh,086h	; 85aa
	defb 02ch,086h	; 85ac
	defb 04dh,086h	; 85ae
	defb 071h,086h	; 85b0
	defb 092h,086h	; 85b2
	defb 0b6h,086h	; 85b4
	defb 0d7h,086h	; 85b6
	defb 0f0h,086h	; 85b8
	defb 002h,087h	; 85ba

; ======================================================================
; CODIGO 0x85bc..0x871c  (352 bytes)
; ======================================================================


L_85BC:
	ld hl,00203h		;85bc
	ld (0eb40h),hl		;85bf
	ld b,050h		;85c2
	ld c,000h		;85c4
	jp L_857D		;85c6
L_85C9:
	ld a,(0e3c5h)		;85c9
	sub 003h		;85cc
	jr z,L_85DD		;85ce
	ld hl,00204h		;85d0
	ld (0eb40h),hl		;85d3
	ld b,050h		;85d6
	ld c,000h		;85d8
	jp L_857D		;85da
L_85DD:
	ld hl,00202h		;85dd
	ld (0eb40h),hl		;85e0
	ld b,0b0h		;85e3
	ld c,000h		;85e5
	jp L_857D		;85e7
L_85EA:
	ld a,(0e3c5h)		;85ea
	sub 003h		;85ed
	jr z,L_85FE		;85ef
	ld hl,00205h		;85f1
	ld (0eb40h),hl		;85f4
	ld b,000h		;85f7
	ld c,070h		;85f9
	jp L_857D		;85fb
L_85FE:
	ld hl,00203h		;85fe
	ld (0eb40h),hl		;8601
	ld b,0b0h		;8604
	ld c,000h		;8606
	jp L_857D		;8608
L_860B:
	ld a,(0e3c5h)		;860b
	sub 002h		;860e
	jr z,L_861F		;8610
	ld hl,00206h		;8612
	ld (0eb40h),hl		;8615
	ld b,050h		;8618
	ld c,000h		;861a
	jp L_857D		;861c
L_861F:
	ld hl,00204h		;861f
	ld (0eb40h),hl		;8622
	ld b,000h		;8625
	ld c,090h		;8627
	jp L_857D		;8629
L_862C:
	ld a,(0e3c5h)		;862c
	sub 003h		;862f
	jr z,L_8640		;8631
	ld hl,00207h		;8633
	ld (0eb40h),hl		;8636
	ld b,000h		;8639
	ld c,070h		;863b
	jp L_857D		;863d
L_8640:
	ld hl,00205h		;8640
	ld (0eb40h),hl		;8643
	ld b,0b0h		;8646
	ld c,000h		;8648
	jp L_857D		;864a
L_864D:
	ld a,(0e3c5h)		;864d
	sub 002h		;8650
	jr z,L_8664		;8652
	ld hl,00208h		;8654
	ld (0eb40h),hl		;8657
	ld b,000h		;865a
	ld c,070h		;865c
	call L_86E4		;865e
	jp L_857D		;8661
L_8664:
	ld hl,00206h		;8664
	ld (0eb40h),hl		;8667
	ld b,000h		;866a
	ld c,090h		;866c
	jp L_857D		;866e
L_8671:
	ld a,(0e3c5h)		;8671
	sub 002h		;8674
	jr z,L_8685		;8676
	ld hl,00209h		;8678
	ld (0eb40h),hl		;867b
	ld b,000h		;867e
	ld c,070h		;8680
	jp L_857D		;8682
L_8685:
	ld hl,00207h		;8685
	ld (0eb40h),hl		;8688
	ld b,000h		;868b
	ld c,090h		;868d
	jp L_857D		;868f
L_8692:
	ld a,(0e3c5h)		;8692
	sub 002h		;8695
	jr z,L_86A6		;8697
	ld hl,0020ah		;8699
	ld (0eb40h),hl		;869c
	ld b,0b0h		;869f
	ld c,000h		;86a1
	jp L_857D		;86a3
L_86A6:
	ld hl,00208h		;86a6
	ld (0eb40h),hl		;86a9
	ld b,000h		;86ac
	ld c,090h		;86ae
	call L_86E4		;86b0
	jp L_857D		;86b3
L_86B6:
	ld a,(0e3c5h)		;86b6
	sub 003h		;86b9
	jr z,L_86CA		;86bb
	ld hl,00209h		;86bd
	ld (0eb40h),hl		;86c0
	ld b,050h		;86c3
	ld c,000h		;86c5
	jp L_857D		;86c7
L_86CA:
	ld hl,0020bh		;86ca
	ld (0eb40h),hl		;86cd
	ld b,0b0h		;86d0
	ld c,000h		;86d2
	jp L_857D		;86d4
L_86D7:
	ld hl,0020ah		;86d7
	ld (0eb40h),hl		;86da
	ld b,050h		;86dd
	ld c,000h		;86df
	jp L_857D		;86e1
L_86E4:
	ld hl,0eb69h		;86e4
	bit 7,(hl)		;86e7
	ret nz			;86e9
	ld a,002h		;86ea
	ld (0e369h),a		;86ec
	ret			;86ef
L_86F0:
	ld a,003h		;86f0
	ld (0e369h),a		;86f2
	ld hl,0020dh		;86f5
	ld (0eb40h),hl		;86f8
	ld b,000h		;86fb
	ld c,070h		;86fd
	jp L_857D		;86ff
L_8702:
	ld a,003h		;8702
	ld (0e369h),a		;8704
	ld hl,0020ch		;8707
	ld (0eb40h),hl		;870a
	ld b,000h		;870d
	ld c,090h		;870f
	jp L_857D		;8711
L_8714:
	ld a,(0eb40h)		;8714
	sub 013h		;8717
	call 040abh		;8719

; ----------------------------------------------------------------------
; DATOS saltos_871C: tabla de 12 palabras del despachador (call 0x408D en
;   0x8719); lo leen L_40AB (24 bytes)
;   0x871c..0x8734  (24 bytes)
DATA_saltos_871C:
	defb 034h,087h	; 871c
	defb 041h,087h	; 871e
	defb 062h,087h	; 8720
	defb 0a2h,087h	; 8722
	defb 0c2h,087h	; 8724
	defb 0e3h,087h	; 8726
	defb 013h,088h	; 8728
	defb 045h,088h	; 872a
	defb 066h,088h	; 872c
	defb 086h,088h	; 872e
	defb 0a6h,088h	; 8730
	defb 0c7h,088h	; 8732

; ======================================================================
; CODIGO 0x8734..0x88dc  (424 bytes)
; ======================================================================


L_8734:
	ld hl,00215h		;8734
	ld (0eb40h),hl		;8737
	ld b,050h		;873a
	ld c,000h		;873c
	jp L_857D		;873e
L_8741:
	ld a,(0e3c5h)		;8741
	sub 002h		;8744
	jr z,L_8755		;8746
	ld hl,00217h		;8748
	ld (0eb40h),hl		;874b
	ld b,050h		;874e
	ld c,000h		;8750
	jp L_857D		;8752
L_8755:
	ld hl,00215h		;8755
	ld (0eb40h),hl		;8758
	ld b,000h		;875b
	ld c,090h		;875d
	jp L_857D		;875f
L_8762:
	ld a,(0e3c5h)		;8762
	dec a			;8765
	jr z,L_877B		;8766
	dec a			;8768
	jr z,L_8788		;8769
	dec a			;876b
	jr z,L_8795		;876c
	ld hl,00218h		;876e
	ld (0eb40h),hl		;8771
	ld b,050h		;8774
	ld c,000h		;8776
	jp L_857D		;8778
L_877B:
	ld hl,00214h		;877b
	ld (0eb40h),hl		;877e
	ld b,000h		;8781
	ld c,070h		;8783
	jp L_857D		;8785
L_8788:
	ld hl,00216h		;8788
	ld (0eb40h),hl		;878b
	ld b,000h		;878e
	ld c,090h		;8790
	jp L_857D		;8792
L_8795:
	ld hl,00213h		;8795
	ld (0eb40h),hl		;8798
	ld b,0b0h		;879b
	ld c,000h		;879d
	jp L_857D		;879f
L_87A2:
	ld a,(0e3c5h)		;87a2
	dec a			;87a5
	jr z,L_87B5		;87a6
	ld hl,00219h		;87a8
	ld (0eb40h),hl		;87ab
	ld b,050h		;87ae
	ld c,000h		;87b0
	jp L_857D		;87b2
L_87B5:
	ld hl,00215h		;87b5
	ld (0eb40h),hl		;87b8
	ld b,000h		;87bb
	ld c,070h		;87bd
	jp L_857D		;87bf
L_87C2:
	ld a,(0e3c5h)		;87c2
	sub 003h		;87c5
	jr z,L_87D6		;87c7
	ld hl,00218h		;87c9
	ld (0eb40h),hl		;87cc
	ld b,000h		;87cf
	ld c,090h		;87d1
	jp L_857D		;87d3
L_87D6:
	ld hl,00214h		;87d6
	ld (0eb40h),hl		;87d9
	ld b,0b0h		;87dc
	ld c,000h		;87de
	jp L_857D		;87e0
L_87E3:
	ld a,(0e3c5h)		;87e3
	dec a			;87e6
	jr z,L_87F9		;87e7
	dec a			;87e9
	jr z,L_8806		;87ea
	ld hl,00215h		;87ec
	ld (0eb40h),hl		;87ef
	ld b,0b0h		;87f2
	ld c,000h		;87f4
	jp L_857D		;87f6
L_87F9:
	ld hl,00217h		;87f9
	ld (0eb40h),hl		;87fc
	ld b,000h		;87ff
	ld c,070h		;8801
	jp L_857D		;8803
L_8806:
	ld hl,00219h		;8806
	ld (0eb40h),hl		;8809
	ld b,000h		;880c
	ld c,090h		;880e
	jp L_857D		;8810
L_8813:
	ld a,(0e3c5h)		;8813
	cp 003h		;8816
	jr z,L_882B		;8818
	sub 004h		;881a
	jr z,L_8838		;881c
	ld hl,00218h		;881e
	ld (0eb40h),hl		;8821
	ld b,000h		;8824
	ld c,070h		;8826
	jp L_857D		;8828
L_882B:
	ld hl,00216h		;882b
	ld (0eb40h),hl		;882e
	ld b,0b0h		;8831
	ld c,000h		;8833
	jp L_857D		;8835
L_8838:
	ld hl,0021ch		;8838
	ld (0eb40h),hl		;883b
	ld b,050h		;883e
	ld c,000h		;8840
	jp L_857D		;8842
L_8845:
	ld a,(0e3c5h)		;8845
	sub 002h		;8848
	jr z,L_8859		;884a
	ld hl,0021dh		;884c
	ld (0eb40h),hl		;884f
	ld b,050h		;8852
	ld c,000h		;8854
	jp L_857D		;8856
L_8859:
	ld hl,0021bh		;8859
	ld (0eb40h),hl		;885c
	ld b,000h		;885f
	ld c,090h		;8861
	jp L_857D		;8863
L_8866:
	ld a,(0e3c5h)		;8866
	dec a			;8869
	jr z,L_8879		;886a
	ld hl,0021ch		;886c
	ld (0eb40h),hl		;886f
	ld b,000h		;8872
	ld c,090h		;8874
	jp L_857D		;8876
L_8879:
	ld hl,0021ah		;8879
	ld (0eb40h),hl		;887c
	ld b,000h		;887f
	ld c,070h		;8881
	jp L_857D		;8883
L_8886:
	ld a,(0e3c5h)		;8886
	dec a			;8889
	jr z,L_8899		;888a
	ld hl,00219h		;888c
	ld (0eb40h),hl		;888f
	ld b,0b0h		;8892
	ld c,000h		;8894
	jp L_857D		;8896
L_8899:
	ld hl,0021bh		;8899
	ld (0eb40h),hl		;889c
	ld b,000h		;889f
	ld c,070h		;88a1
	jp L_857D		;88a3
L_88A6:
	ld a,(0e3c5h)		;88a6
	sub 003h		;88a9
	jr z,L_88BA		;88ab
	ld hl,0021eh		;88ad
	ld (0eb40h),hl		;88b0
	ld b,050h		;88b3
	ld c,000h		;88b5
	jp L_857D		;88b7
L_88BA:
	ld hl,0021ah		;88ba
	ld (0eb40h),hl		;88bd
	ld b,0b0h		;88c0
	ld c,000h		;88c2
	jp L_857D		;88c4
L_88C7:
	ld hl,0021dh		;88c7
	ld (0eb40h),hl		;88ca
	ld b,0b0h		;88cd
	ld c,000h		;88cf
	jp L_857D		;88d1
L_88D4:
	ld a,(0eb40h)		;88d4
	sub 026h		;88d7
	call 040abh		;88d9

; ----------------------------------------------------------------------
; DATOS saltos_88DC: tabla de 2 palabras del despachador (call 0x408D en
;   0x88D9); lo leen L_40AB (4 bytes)
;   0x88dc..0x88e0  (4 bytes)
DATA_saltos_88DC:
	defb 0e0h,088h	; 88dc
	defb 0f3h,088h	; 88de

; ======================================================================
; CODIGO 0x88e0..0x8c83  (931 bytes)
; ======================================================================


L_88E0:
	ld hl,00226h		;88e0
	ld (0e376h),hl		;88e3
	ld hl,00227h		;88e6
	ld (0eb40h),hl		;88e9
	ld b,0b0h		;88ec
	ld c,000h		;88ee
	jp L_857D		;88f0
L_88F3:
	ld hl,00227h		;88f3
	ld (0e376h),hl		;88f6
	ld hl,00226h		;88f9
	ld (0eb40h),hl		;88fc
	ld b,050h		;88ff
	ld c,000h		;8901
	jp L_857D		;8903
L_8906:
	ld hl,(0eb40h)		;8906
	ld (0e376h),hl		;8909
	ld de,(0e36ah)		;890c
	ld hl,0020ch		;8910
	and a			;8913
	sbc hl,de		;8914
	jr nz,L_891D		;8916
	ld a,003h		;8918
	ld (0e369h),a		;891a
L_891D:
	ld hl,00201h		;891d
	and a			;8920
	sbc hl,de		;8921
	jr nz,L_8939		;8923
	ld a,(0e9d2h)		;8925
	and a			;8928
	jr z,L_8936		;8929
	ld hl,0eb5dh		;892b
	bit 7,(hl)		;892e
	jr z,L_8936		;8930
	bit 5,(hl)		;8932
	jr nz,L_8939		;8934
L_8936:
	jp 00000h		;8936   ; BIOS CHKRAM - Tests RAM and sets RAM slot for the system  [alias: STARTUP, RESET, BOOT]
L_8939:
	ld (0eb40h),de		;8939
	xor a			;893d
	ld (0e3c5h),a		;893e
	ld a,001h		;8941
	ld (0e37ah),a		;8943
	ret			;8946
L_8947:
	ld de,(0eb40h)		;8947
	ld hl,00201h		;894b
	and a			;894e
	sbc hl,de		;894f
	jr nz,L_895D		;8951
	ld a,002h		;8953
	ld (0e3c0h),a		;8955
	dec a			;8958
	ld (0e36ch),a		;8959
	ret			;895c
L_895D:
	ld hl,00118h		;895d
	and a			;8960
	sbc hl,de		;8961
	jr nz,L_8977		;8963
	ld a,(0eb64h)		;8965
	rla			;8968
	ld a,000h		;8969
	jr c,L_8973		;896b
	inc a			;896d
	ld (0e369h),a		;896e
	ld a,00ah		;8971
L_8973:
	ld (0e3c0h),a		;8973
	ret			;8976
L_8977:
	ld hl,000e2h		;8977
	and a			;897a
	sbc hl,de		;897b
	jr nz,L_8993		;897d
	ld bc,(0e376h)		;897f
	ld hl,00202h		;8983
	and a			;8986
	sbc hl,bc		;8987
	jr nz,L_8993		;8989
	ld hl,0e3c2h		;898b
	ld a,(hl)			;898e
	sub 010h		;898f
	ld (hl),a			;8991
	ret			;8992
L_8993:
	ld hl,0020eh		;8993
	and a			;8996
	sbc hl,de		;8997
	jr nz,L_89B3		;8999
	ld bc,(0e376h)		;899b
	ld hl,00087h		;899f
	and a			;89a2
	sbc hl,bc		;89a3
	jr nz,L_89B3		;89a5
	ld hl,0e3c1h		;89a7
	ld a,(hl)			;89aa
	add a,030h		;89ab
	ld (hl),a			;89ad
	xor a			;89ae
	ld (0e3c0h),a		;89af
	ret			;89b2
L_89B3:
	ld hl,00087h		;89b3
	and a			;89b6
	sbc hl,de		;89b7
	jr nz,L_89D6		;89b9
	ld bc,(0e376h)		;89bb
	ld hl,0020eh		;89bf
	and a			;89c2
	sbc hl,bc		;89c3
	ret nz			;89c5
	ld hl,0e3c1h		;89c6
	ld a,(hl)			;89c9
	sub 030h		;89ca
	ld (hl),a			;89cc
	inc hl			;89cd
	ld a,(hl)			;89ce
	cp 060h		;89cf
	ret nz			;89d1
	sub 010h		;89d2
	ld (hl),a			;89d4
	ret			;89d5
L_89D6:
	ld hl,00152h		;89d6
	and a			;89d9
	sbc hl,de		;89da
	jr nz,L_89F5		;89dc
	ld a,(0eb78h)		;89de
	res 6,a		;89e1
	ld de,(0e376h)		;89e3
	ld hl,00151h		;89e7
	and a			;89ea
	sbc hl,de		;89eb
	jr nz,L_89F1		;89ed
	set 6,a		;89ef
L_89F1:
	ld (0eb78h),a		;89f1
	ret			;89f4
L_89F5:
	ld bc,(0e376h)		;89f5
	ld hl,0021fh		;89f9
	and a			;89fc
	sbc hl,bc		;89fd
	jr nz,L_8A0D		;89ff
	ld hl,0eb59h		;8a01
	set 5,(hl)		;8a04
	ld hl,05030h		;8a06
	ld (0e3c1h),hl		;8a09
	ret			;8a0c
L_8A0D:
	ld hl,0021fh		;8a0d
	and a			;8a10
	sbc hl,de		;8a11
	jr nz,L_8A6E		;8a13
	ld de,(0e376h)		;8a15
	ld hl,00024h		;8a19
	and a			;8a1c
	sbc hl,de		;8a1d
	ld bc,00020h		;8a1f
	jr z,L_8A69		;8a22
	ld hl,00052h		;8a24
	and a			;8a27
	sbc hl,de		;8a28
	ld bc,07000h		;8a2a
	jr z,L_8A69		;8a2d
	ld hl,0005ch		;8a2f
	and a			;8a32
	sbc hl,de		;8a33
	ld bc,0b020h		;8a35
	jr z,L_8A69		;8a38
	ld hl,000cah		;8a3a
	and a			;8a3d
	sbc hl,de		;8a3e
	ld bc,04000h		;8a40
	jr z,L_8A69		;8a43
	ld hl,00116h		;8a45
	and a			;8a48
	sbc hl,de		;8a49
	ld bc,07070h		;8a4b
	jr z,L_8A69		;8a4e
	ld hl,001b1h		;8a50
	and a			;8a53
	sbc hl,de		;8a54
	ld bc,04070h		;8a56
	jr z,L_8A69		;8a59
	ld hl,001c5h		;8a5b
	and a			;8a5e
	sbc hl,de		;8a5f
	ld bc,00050h		;8a61
	jr z,L_8A69		;8a64
	ld bc,0b050h		;8a66
L_8A69:
	ld (0e3c1h),bc		;8a69
	ret			;8a6d
L_8A6E:
	ld hl,00158h		;8a6e
	and a			;8a71
	sbc hl,de		;8a72
	jr nz,L_8A94		;8a74
	ld hl,00158h		;8a76
	and a			;8a79
	sbc hl,bc		;8a7a
	ret nz			;8a7c
	ld a,(0e3c2h)		;8a7d
	cp 030h		;8a80
	ld bc,03020h		;8a82
	jr nz,L_8A8A		;8a85
	ld bc,05030h		;8a87
L_8A8A:
	ld hl,0eb5bh		;8a8a
	set 2,(hl)		;8a8d
	ld (0e3c1h),bc		;8a8f
	ret			;8a93
L_8A94:
	ld hl,00006h		;8a94
	and a			;8a97
	sbc hl,de		;8a98
	jr nz,L_8AAA		;8a9a
	ld hl,00027h		;8a9c
	and a			;8a9f
	sbc hl,bc		;8aa0
	ret nz			;8aa2
	ld hl,02030h		;8aa3
	ld (0e3c1h),hl		;8aa6
	ret			;8aa9
L_8AAA:
	ld hl,00027h		;8aaa
	and a			;8aad
	sbc hl,de		;8aae
	jr nz,L_8AC0		;8ab0
	ld hl,00006h		;8ab2
	and a			;8ab5
	sbc hl,bc		;8ab6
	ret nz			;8ab8
	ld hl,05030h		;8ab9
	ld (0e3c1h),hl		;8abc
	ret			;8abf
L_8AC0:
	ld hl,001b5h		;8ac0
	and a			;8ac3
	sbc hl,de		;8ac4
	jr nz,L_8AD6		;8ac6
	ld hl,00194h		;8ac8
	and a			;8acb
	sbc hl,bc		;8acc
	ret nz			;8ace
	ld hl,08020h		;8acf
	ld (0e3c1h),hl		;8ad2
	ret			;8ad5
L_8AD6:
	ld hl,00194h		;8ad6
	and a			;8ad9
	sbc hl,de		;8ada
	jr nz,L_8AEC		;8adc
	ld hl,001b5h		;8ade
	and a			;8ae1
	sbc hl,bc		;8ae2
	ret nz			;8ae4
	ld hl,06030h		;8ae5
	ld (0e3c1h),hl		;8ae8
	ret			;8aeb
L_8AEC:
	ld hl,00226h		;8aec
	and a			;8aef
	sbc hl,de		;8af0
	jr nz,L_8B02		;8af2
	ld hl,001a1h		;8af4
	and a			;8af7
	sbc hl,bc		;8af8
	ret nz			;8afa
	ld hl,08030h		;8afb
	ld (0e3c1h),hl		;8afe
	ret			;8b01
L_8B02:
	ld hl,001a1h		;8b02
	and a			;8b05
	sbc hl,de		;8b06
	ret nz			;8b08
	ld hl,00226h		;8b09
	and a			;8b0c
	sbc hl,bc		;8b0d
	ret nz			;8b0f
	ld hl,06040h		;8b10
	ld (0e3c1h),hl		;8b13
	ret			;8b16
L_8B17:
	rra			;8b17
	jr nc,L_8B2D		;8b18
	ld hl,06050h		;8b1a
	ld (0e3c1h),hl		;8b1d
	ld hl,00210h		;8b20
	ld (0eb40h),hl		;8b23
	xor a			;8b26
	ld (0e386h),a		;8b27
	jp L_8587		;8b2a
L_8B2D:
	ld hl,06050h		;8b2d
	ld (0e3c1h),hl		;8b30
	ld hl,0020fh		;8b33
	ld (0eb40h),hl		;8b36
	xor a			;8b39
	ld (0e386h),a		;8b3a
	jp L_8587		;8b3d
L_8B40:
	ld hl,(0e376h)		;8b40
	ld de,00063h		;8b43
	and a			;8b46
	sbc hl,de		;8b47
	jp nz,L_857D		;8b49
	ld a,002h		;8b4c
	ld (0e378h),a		;8b4e
	ld hl,0eb67h		;8b51
	res 0,(hl)		;8b54
	ld hl,0eb68h		;8b56
	set 7,(hl)		;8b59
	ld a,b			;8b5b
	sub 010h		;8b5c
	ld b,a			;8b5e
	jp L_857D		;8b5f
L_8B62:
	ld hl,(0e376h)		;8b62
	ld de,00062h		;8b65
	and a			;8b68
	sbc hl,de		;8b69
	jp nz,L_857D		;8b6b
	ld a,001h		;8b6e
	ld (0e378h),a		;8b70
	ld hl,0eb67h		;8b73
	res 0,(hl)		;8b76
	ld a,b			;8b78
	add a,010h		;8b79
	ld b,a			;8b7b
	jp L_857D		;8b7c
L_8B7F:
	xor a			;8b7f
	ld (0e380h),a		;8b80
	jp L_857D		;8b83
L_8B86:
	ld hl,(0e376h)		;8b86
	ld de,001d4h		;8b89
	and a			;8b8c
	sbc hl,de		;8b8d
	jp nz,L_857D		;8b8f
	ld (0eb40h),de		;8b92
	jp L_857D		;8b96
L_8B99:
	ld hl,(0e376h)		;8b99
	ld de,001d5h		;8b9c
	and a			;8b9f
	sbc hl,de		;8ba0
	jp nz,L_857D		;8ba2
	ld (0eb40h),de		;8ba5
	ld hl,0eb77h		;8ba9
	set 6,(hl)		;8bac
	jp L_857D		;8bae
L_8BB1:
	ld hl,(0e376h)		;8bb1
	ld de,001d6h		;8bb4
	and a			;8bb7
	sbc hl,de		;8bb8
	jp nz,L_857D		;8bba
	ld (0eb40h),de		;8bbd
	jp L_857D		;8bc1
L_8BC4:
	ld hl,(0e376h)		;8bc4
	ld de,001d5h		;8bc7
	and a			;8bca
	sbc hl,de		;8bcb
	jp nz,L_857D		;8bcd
	ld hl,0eb76h		;8bd0
	bit 0,(hl)		;8bd3
	jr z,L_8BE7		;8bd5
	ld hl,0eb74h		;8bd7
	bit 4,(hl)		;8bda
	jr z,L_8BE7		;8bdc
	ld hl,0e380h		;8bde
	inc (hl)			;8be1
	ld a,(hl)			;8be2
	cp 008h		;8be3
	jr z,L_8BEE		;8be5
L_8BE7:
	ld (0eb40h),de		;8be7
	jp L_857D		;8beb
L_8BEE:
	ld hl,001d6h		;8bee
	ld (0eb40h),hl		;8bf1
	jp L_857D		;8bf4
L_8BF7:
	ld hl,(0e376h)		;8bf7
	ld de,0007eh		;8bfa
	and a			;8bfd
	sbc hl,de		;8bfe
	jp nz,L_857D		;8c00
	ld hl,0e3afh		;8c03
	dec (hl)			;8c06
	jp z,L_857D		;8c07
	ld hl,0007eh		;8c0a
	ld (0eb40h),hl		;8c0d
	jp L_857D		;8c10
L_8C13:
	ld hl,(0e376h)		;8c13
	ld de,0007eh		;8c16
	and a			;8c19
	sbc hl,de		;8c1a
	jp nz,L_857D		;8c1c
	ld hl,0e3afh		;8c1f
	inc (hl)			;8c22
	ld a,(hl)			;8c23
	cp 010h		;8c24
	jp z,L_857D		;8c26
	ld hl,0007eh		;8c29
	ld (0eb40h),hl		;8c2c
	jp L_857D		;8c2f
L_8C32:
	ld de,(0eb40h)		;8c32
	ld hl,00228h		;8c36
	and a			;8c39
	sbc hl,de		;8c3a
	jr z,$+77		;8c3c
	ld hl,00229h		;8c3e
	and a			;8c41
	sbc hl,de		;8c42
	jr z,$+69		;8c44
	ld hl,0022ah		;8c46
	and a			;8c49
	sbc hl,de		;8c4a
	jr z,$+90		;8c4c
	ld hl,0022bh		;8c4e
	and a			;8c51
	sbc hl,de		;8c52
	jr z,$+82		;8c54
	ld hl,0022ch		;8c56
	and a			;8c59
	sbc hl,de		;8c5a
	jr z,$+103		;8c5c
	ld hl,0022dh		;8c5e
	and a			;8c61
	sbc hl,de		;8c62
	jr z,$+95		;8c64
	ld a,r		;8c66
	and 003h		;8c68
	and a			;8c6a
	jr z,L_8C6E		;8c6b
	dec a			;8c6d
L_8C6E:
	ld de,08c83h		;8c6e
	call 043a4h		;8c71
	ld (0eb40h),de		;8c74
	ld hl,06040h		;8c78
	ld (0e3c1h),hl		;8c7b
	xor a			;8c7e
	ld (0e3b5h),a		;8c7f
	ret			;8c82

; ----------------------------------------------------------------------
; DATOS resto_8C83: lo apuntan con el banco puesto p02:8C6E (0x8C83); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p02:8C6E (6 bytes)
;   0x8c83..0x8c89  (6 bytes)
DATA_resto_8C83:
	defb 028h,002h,02ah,002h,02ch,002h	; 8c83

; ======================================================================
; CODIGO 0x8c89..0x8ced  (100 bytes)
; ======================================================================


L_8C89:
	ld hl,(0eb40h)		;8c89
	ld (0e376h),hl		;8c8c
	ld hl,0e3b5h		;8c8f
	inc (hl)			;8c92
	bit 3,(hl)		;8c93
	jr z,L_8C9E		;8c95
	ld (hl),000h		;8c97
	ld hl,00229h		;8c99
	jr L_8CA1		;8c9c
L_8C9E:
	ld hl,00228h		;8c9e
L_8CA1:
	ld (0eb40h),hl		;8ca1
	jr L_8CDE		;8ca4
L_8CA6:
	ld hl,(0eb40h)		;8ca6
	ld (0e376h),hl		;8ca9
	ld hl,0e3b5h		;8cac
	inc (hl)			;8caf
	bit 3,(hl)		;8cb0
	jr z,L_8CBB		;8cb2
	ld (hl),000h		;8cb4
	ld hl,0022bh		;8cb6
	jr L_8CBE		;8cb9
L_8CBB:
	ld hl,0022ah		;8cbb
L_8CBE:
	ld (0eb40h),hl		;8cbe
	jr L_8CDE		;8cc1
L_8CC3:
	ld hl,(0eb40h)		;8cc3
	ld (0e376h),hl		;8cc6
	ld hl,0e3b5h		;8cc9
	inc (hl)			;8ccc
	bit 3,(hl)		;8ccd
	jr z,L_8CD8		;8ccf
	ld (hl),000h		;8cd1
	ld hl,0022dh		;8cd3
	jr L_8CDB		;8cd6
L_8CD8:
	ld hl,0022ch		;8cd8
L_8CDB:
	ld (0eb40h),hl		;8cdb
L_8CDE:
	ld a,(0e3c5h)		;8cde
	dec a			;8ce1
	ld de,08cedh		;8ce2
	call 043a4h		;8ce5
	ld c,e			;8ce8
	ld b,d			;8ce9
	jp L_857D		;8cea

; ----------------------------------------------------------------------
; DATOS resto_8CED: lo apuntan con el banco puesto p02:8CE2 (0x8CED); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p02:8CE2 (8 bytes)
;   0x8ced..0x8cf5  (8 bytes)
DATA_resto_8CED:
	defb 070h,000h,090h,000h,000h,0b0h,000h,050h	; 8ced  p......P

; ======================================================================
; CODIGO 0x8cf5..0x9126  (1073 bytes)
; ======================================================================


L_8CF5:
	ld a,(0e3c6h)		;8cf5
	dec a			;8cf8
	ld de,09126h		;8cf9
	call 043a4h		;8cfc
	ld hl,(0e3c1h)		;8cff
	ld a,e			;8d02
	add a,l			;8d03
	ld e,a			;8d04
	ld a,d			;8d05
	add a,h			;8d06
	ld d,a			;8d07
	ld ix,0e400h		;8d08
	ld b,008h		;8d0c
	ld c,000h		;8d0e
L_8D10:
	ld a,(ix+00dh)		;8d10
	and a			;8d13
	jr z,L_8D31		;8d14
	cp 002h		;8d16
	jr z,L_8D41		;8d18
	ld hl,0e37ah		;8d1a
	bit 0,(hl)		;8d1d
	jr nz,L_8D25		;8d1f
	cp 003h		;8d21
	jr z,L_8D41		;8d23
L_8D25:
	ld l,(ix+003h)		;8d25
	ld h,(ix+004h)		;8d28
	and a			;8d2b
	sbc hl,de		;8d2c
	jp z,L_9121		;8d2e
L_8D31:
	ex de,hl			;8d31
	ld de,00080h		;8d32
	add ix,de		;8d35
	ex de,hl			;8d37
	inc c			;8d38
	djnz L_8D10		;8d39
	ld a,0ffh		;8d3b
	ld (0e8a6h),a		;8d3d
	ret			;8d40
L_8D41:
	push de			;8d41
	ld de,(0e3c1h)		;8d42
	ld l,(ix+003h)		;8d46
	ld h,(ix+004h)		;8d49
	and a			;8d4c
	sbc hl,de		;8d4d
	pop de			;8d4f
	jr nz,L_8D31		;8d50
	call L_9121		;8d52
	call 0560eh		;8d55
	ld e,(hl)			;8d58
	inc hl			;8d59
	ld d,(hl)			;8d5a
	ld hl,00020h		;8d5b
	and a			;8d5e
	sbc hl,de		;8d5f
	jr z,L_8D6B		;8d61
	ld hl,00021h		;8d63
	and a			;8d66
	sbc hl,de		;8d67
	jr nz,L_8D71		;8d69
L_8D6B:
	ld hl,00201h		;8d6b
	jp L_9065		;8d6e
L_8D71:
	ld hl,00024h		;8d71
	and a			;8d74
	sbc hl,de		;8d75
	jr nz,L_8D89		;8d77
	ld a,004h		;8d79
	ld (0e3c0h),a		;8d7b
	ld hl,0e9d2h		;8d7e
	res 7,(hl)		;8d81
	ld hl,00089h		;8d83
	jp L_9065		;8d86
L_8D89:
	ld hl,0003eh		;8d89
	and a			;8d8c
	sbc hl,de		;8d8d
	jr nz,L_8D97		;8d8f
	ld hl,0020bh		;8d91
	jp L_9065		;8d94
L_8D97:
	ld hl,0003fh		;8d97
	and a			;8d9a
	sbc hl,de		;8d9b
	jr nz,L_8DA5		;8d9d
	ld hl,00202h		;8d9f
	jp L_9065		;8da2
L_8DA5:
	ld hl,00043h		;8da5
	and a			;8da8
	sbc hl,de		;8da9
	jr nz,L_8DB3		;8dab
	ld hl,000e2h		;8dad
	jp L_9065		;8db0
L_8DB3:
	ld hl,00046h		;8db3
	and a			;8db6
	sbc hl,de		;8db7
	jr nz,L_8DC1		;8db9
	ld hl,00063h		;8dbb
	jp L_9065		;8dbe
L_8DC1:
	ld hl,00053h		;8dc1
	and a			;8dc4
	sbc hl,de		;8dc5
	jr nz,L_8DCF		;8dc7
	ld hl,001d0h		;8dc9
	jp L_9065		;8dcc
L_8DCF:
	ld hl,00068h		;8dcf
	and a			;8dd2
	sbc hl,de		;8dd3
	jr nz,L_8DDD		;8dd5
	ld hl,0020eh		;8dd7
	jp L_9065		;8dda
L_8DDD:
	ld hl,00069h		;8ddd
	and a			;8de0
	sbc hl,de		;8de1
	jr nz,L_8DEB		;8de3
	ld hl,00087h		;8de5
	jp L_9065		;8de8
L_8DEB:
	ld hl,0006ah		;8deb
	and a			;8dee
	sbc hl,de		;8def
	jr nz,L_8DF9		;8df1
	ld hl,00087h		;8df3
	jp L_9065		;8df6
L_8DF9:
	ld hl,0006dh		;8df9
	and a			;8dfc
	sbc hl,de		;8dfd
	jr nz,L_8E07		;8dff
	ld hl,0020fh		;8e01
	jp L_9065		;8e04
L_8E07:
	ld hl,0006eh		;8e07
	and a			;8e0a
	sbc hl,de		;8e0b
	jr nz,L_8E15		;8e0d
	ld hl,00152h		;8e0f
	jp L_9065		;8e12
L_8E15:
	ld hl,00080h		;8e15
	and a			;8e18
	sbc hl,de		;8e19
	jr nz,L_8E23		;8e1b
	ld hl,00213h		;8e1d
	jp L_9065		;8e20
L_8E23:
	ld hl,00081h		;8e23
	and a			;8e26
	sbc hl,de		;8e27
	jr nz,L_8E31		;8e29
	ld hl,000feh		;8e2b
	jp L_9065		;8e2e
L_8E31:
	ld hl,00092h		;8e31
	and a			;8e34
	sbc hl,de		;8e35
	jr nz,L_8E3F		;8e37
	ld hl,0021fh		;8e39
	jp L_9065		;8e3c
L_8E3F:
	ld hl,00093h		;8e3f
	and a			;8e42
	sbc hl,de		;8e43
	jr nz,L_8E4D		;8e45
	ld hl,0021fh		;8e47
	jp L_9065		;8e4a
L_8E4D:
	ld hl,00094h		;8e4d
	and a			;8e50
	sbc hl,de		;8e51
	jr nz,L_8E5B		;8e53
	ld hl,0021fh		;8e55
	jp L_9065		;8e58
L_8E5B:
	ld hl,00095h		;8e5b
	and a			;8e5e
	sbc hl,de		;8e5f
	jr nz,L_8E69		;8e61
	ld hl,0021fh		;8e63
	jp L_9065		;8e66
L_8E69:
	ld hl,00096h		;8e69
	and a			;8e6c
	sbc hl,de		;8e6d
	jr nz,L_8E77		;8e6f
	ld hl,0021fh		;8e71
	jp L_9065		;8e74
L_8E77:
	ld hl,00097h		;8e77
	and a			;8e7a
	sbc hl,de		;8e7b
	jr nz,L_8E85		;8e7d
	ld hl,0021fh		;8e7f
	jp L_9065		;8e82
L_8E85:
	ld hl,00098h		;8e85
	and a			;8e88
	sbc hl,de		;8e89
	jr nz,L_8E93		;8e8b
	ld hl,0021fh		;8e8d
	jp L_9065		;8e90
L_8E93:
	ld hl,00099h		;8e93
	and a			;8e96
	sbc hl,de		;8e97
	jr nz,L_8EA1		;8e99
	ld hl,0021fh		;8e9b
	jp L_9065		;8e9e
L_8EA1:
	ld hl,0009ah		;8ea1
	and a			;8ea4
	sbc hl,de		;8ea5
	jr nz,L_8EAF		;8ea7
	ld hl,000cah		;8ea9
	jp L_9065		;8eac
L_8EAF:
	ld hl,0009bh		;8eaf
	and a			;8eb2
	sbc hl,de		;8eb3
	jr nz,L_8EBD		;8eb5
	ld hl,00052h		;8eb7
	jp L_9065		;8eba
L_8EBD:
	ld hl,0009ch		;8ebd
	and a			;8ec0
	sbc hl,de		;8ec1
	jr nz,L_8ECB		;8ec3
	ld hl,0005ch		;8ec5
	jp L_9065		;8ec8
L_8ECB:
	ld hl,0009dh		;8ecb
	and a			;8ece
	sbc hl,de		;8ecf
	jr nz,L_8ED9		;8ed1
	ld hl,001d9h		;8ed3
	jp L_9065		;8ed6
L_8ED9:
	ld hl,0009eh		;8ed9
	and a			;8edc
	sbc hl,de		;8edd
	jr nz,L_8EE7		;8edf
	ld hl,00116h		;8ee1
	jp L_9065		;8ee4
L_8EE7:
	ld hl,0009fh		;8ee7
	and a			;8eea
	sbc hl,de		;8eeb
	jr nz,L_8EF5		;8eed
	ld hl,001b1h		;8eef
	jp L_9065		;8ef2
L_8EF5:
	ld hl,000a0h		;8ef5
	and a			;8ef8
	sbc hl,de		;8ef9
	jr nz,L_8F03		;8efb
	ld hl,001c5h		;8efd
	jp L_9065		;8f00
L_8F03:
	ld hl,000a1h		;8f03
	and a			;8f06
	sbc hl,de		;8f07
	jr nz,L_8F11		;8f09
	ld hl,00024h		;8f0b
	jp L_9065		;8f0e
L_8F11:
	ld hl,00065h		;8f11
	and a			;8f14
	sbc hl,de		;8f15
	jr nz,L_8F24		;8f17
	ld hl,00211h		;8f19
	ld (0eb40h),hl		;8f1c
	ld a,001h		;8f1f
	jp L_906E		;8f21
L_8F24:
	ld hl,00066h		;8f24
	and a			;8f27
	sbc hl,de		;8f28
	jr nz,L_8F37		;8f2a
	ld hl,00211h		;8f2c
	ld (0eb40h),hl		;8f2f
	ld a,001h		;8f32
	jp L_906E		;8f34
L_8F37:
	ld hl,00067h		;8f37
	and a			;8f3a
	sbc hl,de		;8f3b
	jr nz,L_8F4A		;8f3d
	ld hl,00211h		;8f3f
	ld (0eb40h),hl		;8f42
	ld a,001h		;8f45
	jp L_906E		;8f47
L_8F4A:
	ld hl,00082h		;8f4a
	and a			;8f4d
	sbc hl,de		;8f4e
	jp z,L_909B		;8f50
	ld hl,000a6h		;8f53
	and a			;8f56
	sbc hl,de		;8f57
	jp z,L_90BC		;8f59
	ld hl,000bdh		;8f5c
	and a			;8f5f
	sbc hl,de		;8f60
	jp z,L_90DD		;8f62
	ld hl,000c5h		;8f65
	and a			;8f68
	sbc hl,de		;8f69
	jr nz,L_8F73		;8f6b
	ld hl,00158h		;8f6d
	jp L_9065		;8f70
L_8F73:
	ld hl,000c6h		;8f73
	and a			;8f76
	sbc hl,de		;8f77
	jr nz,L_8F81		;8f79
	ld hl,00158h		;8f7b
	jp L_9065		;8f7e
L_8F81:
	ld hl,000c9h		;8f81
	and a			;8f84
	sbc hl,de		;8f85
	jr nz,L_8F8F		;8f87
	ld hl,00226h		;8f89
	jp L_9065		;8f8c
L_8F8F:
	ld hl,000cah		;8f8f
	and a			;8f92
	sbc hl,de		;8f93
	jr nz,L_8F9D		;8f95
	ld hl,001a1h		;8f97
	jp L_9065		;8f9a
L_8F9D:
	ld hl,000cdh		;8f9d
	and a			;8fa0
	sbc hl,de		;8fa1
	jr nz,L_8FAB		;8fa3
	ld hl,00027h		;8fa5
	jp L_9065		;8fa8
L_8FAB:
	ld hl,000ceh		;8fab
	and a			;8fae
	sbc hl,de		;8faf
	jr nz,L_8FB9		;8fb1
	ld hl,00006h		;8fb3
	jp L_9065		;8fb6
L_8FB9:
	ld hl,000cfh		;8fb9
	and a			;8fbc
	sbc hl,de		;8fbd
	jp z,L_90FF		;8fbf
	ld hl,000e2h		;8fc2
	and a			;8fc5
	sbc hl,de		;8fc6
	jr nz,L_8FD0		;8fc8
	ld hl,00232h		;8fca
	jp L_9065		;8fcd
L_8FD0:
	ld hl,000e3h		;8fd0
	and a			;8fd3
	sbc hl,de		;8fd4
	jr nz,L_8FDE		;8fd6
	ld hl,0003eh		;8fd8
	jp L_9065		;8fdb
L_8FDE:
	ld hl,000e4h		;8fde
	and a			;8fe1
	sbc hl,de		;8fe2
	jr nz,L_8FEC		;8fe4
	ld hl,00233h		;8fe6
	jp L_9065		;8fe9
L_8FEC:
	ld hl,000e5h		;8fec
	and a			;8fef
	sbc hl,de		;8ff0
	jr nz,L_8FFA		;8ff2
	ld hl,00232h		;8ff4
	jp L_9065		;8ff7
L_8FFA:
	ld hl,000e6h		;8ffa
	and a			;8ffd
	sbc hl,de		;8ffe
	jr nz,L_9008		;9000
	ld hl,00234h		;9002
	jp L_9065		;9005
L_9008:
	ld hl,000e7h		;9008
	and a			;900b
	sbc hl,de		;900c
	jr nz,L_9016		;900e
	ld hl,00233h		;9010
	jp L_9065		;9013
L_9016:
	ld hl,000d9h		;9016
	and a			;9019
	sbc hl,de		;901a
	jr nz,L_9024		;901c
	ld hl,0022eh		;901e
	jp L_9065		;9021
L_9024:
	ld hl,000dah		;9024
	and a			;9027
	sbc hl,de		;9028
	jr nz,L_9032		;902a
	ld hl,00038h		;902c
	jp L_9065		;902f
L_9032:
	ld hl,000ffh		;9032
	and a			;9035
	sbc hl,de		;9036
	jr nc,L_904A		;9038
	ld hl,0011ah		;903a
	and a			;903d
	sbc hl,de		;903e
	jr c,L_904A		;9040
	xor a			;9042
	ld (0e338h),a		;9043
	ld (0e340h),a		;9046
	ret			;9049
L_904A:
	ld hl,000abh		;904a
	and a			;904d
	sbc hl,de		;904e
	jr nz,L_9058		;9050
	ld hl,001b5h		;9052
	jp L_9065		;9055
L_9058:
	ld hl,000ach		;9058
	and a			;905b
	sbc hl,de		;905c
	ret nz			;905e
	ld hl,00194h		;905f
	ld (0e36ah),hl		;9062
L_9065:
	ld (0e36ah),hl		;9065
	ld a,002h		;9068
	ld (0e337h),a		;906a
	ret			;906d
L_906E:
	ld (0e3a1h),a		;906e
	ld a,003h		;9071
	ld (0e337h),a		;9073
	ld hl,00000h		;9076
	ld (0e3e0h),hl		;9079
	ld hl,0eb7dh		;907c
	bit 7,(hl)		;907f
	ld a,00ah		;9081
	jr nz,L_908F		;9083
	xor a			;9085
	ld hl,0eb66h		;9086
	bit 5,(hl)		;9089
	jr z,L_908F		;908b
	ld a,004h		;908d
L_908F:
	ld (0e3a0h),a		;908f
	xor a			;9092
	ld (0e39fh),a		;9093
	dec a			;9096
	ld (0e368h),a		;9097
	ret			;909a
L_909B:
	ld a,002h		;909b
	ld (0e3a1h),a		;909d
	inc a			;90a0
	ld (0e337h),a		;90a1
	ld hl,00003h		;90a4
	ld (0e3e0h),hl		;90a7
	ld hl,00212h		;90aa
	ld (0eb40h),hl		;90ad
	xor a			;90b0
	ld (0e39fh),a		;90b1
	ld (0e3a0h),a		;90b4
	dec a			;90b7
	ld (0e368h),a		;90b8
	ret			;90bb
L_90BC:
	ld a,004h		;90bc
	ld (0e3a1h),a		;90be
	dec a			;90c1
	ld (0e337h),a		;90c2
	ld hl,00009h		;90c5
	ld (0e3e0h),hl		;90c8
	ld hl,00222h		;90cb
	ld (0eb40h),hl		;90ce
	xor a			;90d1
	ld (0e39fh),a		;90d2
	ld (0e3a0h),a		;90d5
	dec a			;90d8
	ld (0e368h),a		;90d9
	ret			;90dc
L_90DD:
	ld a,007h		;90dd
	ld (0e3a1h),a		;90df
	ld a,003h		;90e2
	ld (0e337h),a		;90e4
	ld hl,00009h		;90e7
	ld (0e3e0h),hl		;90ea
	ld hl,00224h		;90ed
	ld (0eb40h),hl		;90f0
	xor a			;90f3
	ld (0e39fh),a		;90f4
	ld (0e3a0h),a		;90f7
	dec a			;90fa
	ld (0e368h),a		;90fb
	ret			;90fe
L_90FF:
	ld a,008h		;90ff
	ld (0e3a1h),a		;9101
	ld a,003h		;9104
	ld (0e337h),a		;9106
	ld hl,0000ah		;9109
	ld (0e3e0h),hl		;910c
	ld hl,00225h		;910f
	ld (0eb40h),hl		;9112
	xor a			;9115
	ld (0e39fh),a		;9116
	ld (0e3a0h),a		;9119
	dec a			;911c
	ld (0e368h),a		;911d
	ret			;9120
L_9121:
	ld a,c			;9121
	ld (0e8a6h),a		;9122
	ret			;9125

; ----------------------------------------------------------------------
; DATOS resto_9126: lo apuntan con el banco puesto p02:8CF9 (0x9126); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p02:8CF9 (8 bytes)
;   0x9126..0x912e  (8 bytes)
DATA_resto_9126:
	defb 0f0h,000h,010h,000h,000h,0f0h,000h,010h	; 9126  ........

; ======================================================================
; CODIGO 0x912e..0x9135  (7 bytes)
; ======================================================================


L_912E:
	ld a,(0e8aah)		;912e
	dec a			;9131
	call 040abh		;9132

; ----------------------------------------------------------------------
; DATOS saltos_9135: tabla de 42 palabras del despachador (call 0x408D en
;   0x9132); lo leen L_40AB (84 bytes)
;   0x9135..0x9189  (84 bytes)
DATA_saltos_9135:
	defb 08eh,091h	; 9135
	defb 0f3h,091h	; 9137
	defb 006h,092h	; 9139
	defb 0d0h,092h	; 913b
	defb 01fh,093h	; 913d
	defb 026h,093h	; 913f
	defb 082h,093h	; 9141
	defb 0e8h,093h	; 9143
	defb 04eh,094h	; 9145
	defb 056h,094h	; 9147
	defb 010h,095h	; 9149
	defb 04bh,095h	; 914b
	defb 0a7h,095h	; 914d
	defb 0bah,095h	; 914f
	defb 00eh,097h	; 9151
	defb 036h,097h	; 9153
	defb 09bh,097h	; 9155
	defb 000h,098h	; 9157
	defb 031h,098h	; 9159
	defb 08ch,098h	; 915b
	defb 0e7h,098h	; 915d
	defb 03bh,099h	; 915f
	defb 076h,099h	; 9161
	defb 0cfh,099h	; 9163
	defb 014h,09ah	; 9165
	defb 024h,09ah	; 9167
	defb 032h,09ah	; 9169
	defb 045h,09ah	; 916b
	defb 052h,09ah	; 916d
	defb 0c3h,09ah	; 916f
	defb 0ebh,09ah	; 9171
	defb 050h,09bh	; 9173
	defb 0abh,09bh	; 9175
	defb 0cdh,09bh	; 9177
	defb 0f5h,09bh	; 9179
	defb 00ah,09ch	; 917b
	defb 01fh,09ch	; 917d
	defb 02ch,09ch	; 917f
	defb 03ch,09ch	; 9181
	defb 04ch,09ch	; 9183
	defb 065h,09ch	; 9185
	defb 0aah,09ch	; 9187

; ======================================================================
; CODIGO 0x9189..0x9194  (11 bytes)
; ======================================================================


L_9189:
	ld hl,0e8abh		;9189
	inc (hl)			;918c
	ret			;918d
L_918E:
	ld a,(0e8abh)		;918e
	call 040abh		;9191

; ----------------------------------------------------------------------
; DATOS saltos_9194: tabla de 3 palabras del despachador (call 0x408D en
;   0x9191); lo leen L_40AB (6 bytes)
;   0x9194..0x919a  (6 bytes)
DATA_saltos_9194:
	defb 09ah,091h	; 9194
	defb 0beh,091h	; 9196
	defb 0cbh,091h	; 9198

; ======================================================================
; CODIGO 0x919a..0x920c  (114 bytes)
; ======================================================================


L_919A:
	call 045c4h		;919a
	ld a,001h		;919d
	ld (0e007h),a		;919f
	ld hl,0eb58h		;91a2
	set 7,(hl)		;91a5
	call 0590dh		;91a7
	call 058d4h		;91aa
	xor a			;91ad
	ld (0e368h),a		;91ae
	call 06148h		;91b1
	xor a			;91b4
	call 06212h		;91b5
	call 05e5fh		;91b8
	jp L_9189		;91bb
L_91BE:
	ld c,005h		;91be
	call 04dfdh		;91c0
	ld a,(0e886h)		;91c3
	and a			;91c6
	ret nz			;91c7
	jp L_9189		;91c8
L_91CB:
	ld a,(0e008h)		;91cb
	and a			;91ce
	ret z			;91cf
	call 067c8h		;91d0
	ld a,001h		;91d3
	call 04662h		;91d5
	ld a,00ch		;91d8
	ld (0e368h),a		;91da
	call 04856h		;91dd
	ld a,(0e367h)		;91e0
	ld (0f000h),a		;91e3
	xor a			;91e6
	ld (0e007h),a		;91e7
	call 05ecah		;91ea
	ld a,003h		;91ed
	ld (0e8a0h),a		;91ef
	ret			;91f2
L_91F3:
	call 05e5fh		;91f3
	ld hl,0e9d2h		;91f6
	set 7,(hl)		;91f9
	ld a,001h		;91fb
	ld (0e8a0h),a		;91fd
	ld a,003h		;9200
	ld (0e8a3h),a		;9202
	ret			;9205
L_9206:
	ld a,(0e8abh)		;9206
	call 040abh		;9209

; ----------------------------------------------------------------------
; DATOS saltos_920C: tabla de 5 palabras del despachador (call 0x408D en
;   0x9209); lo leen L_40AB (10 bytes)
;   0x920c..0x9216  (10 bytes)
DATA_saltos_920C:
	defb 016h,092h	; 920c
	defb 06ch,092h	; 920e
	defb 07bh,092h	; 9210
	defb 096h,092h	; 9212
	defb 0a8h,092h	; 9214

; ======================================================================
; CODIGO 0x9216..0x9249  (51 bytes)
; ======================================================================


L_9216:
	ld a,001h		;9216
	ld (0e007h),a		;9218
	ld de,(0e363h)		;921b
	ld hl,09249h		;921f
	ld bc,00700h		;9222
L_9225:
	ld a,(hl)			;9225
	inc hl			;9226
	cp e			;9227
	jr nz,L_922E		;9228
	ld a,(hl)			;922a
	cp d			;922b
	jr z,L_9232		;922c
L_922E:
	inc hl			;922e
	inc c			;922f
	djnz L_9225		;9230
L_9232:
	ld a,c			;9232
	ld hl,09257h		;9233
	add a,a			;9236
	add a,c			;9237
	call 040a1h		;9238
	ld e,(hl)			;923b
	inc hl			;923c
	ld d,(hl)			;923d
	inc hl			;923e
	ld a,(hl)			;923f
	ex de,hl			;9240
	or (hl)			;9241
	ld (hl),a			;9242
	call 0babfh		;9243
	jp L_9189		;9246

; ----------------------------------------------------------------------
; DATOS resto_9249: lo apuntan con el banco puesto p02:921F (0x9249), p02:9233
;   (0x9257); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p02:921F, p02:9233 (35 bytes)
;   0x9249..0x926c  (35 bytes)
DATA_resto_9249:
	defb 027h,000h,028h,000h,025h,000h,026h,000h,02bh,000h,029h,000h,02ah,000h,05fh,0ebh	; 9249  '.(.%.&.+.).*._.
	defb 080h,05fh,0ebh,040h,060h,0ebh,080h,060h,0ebh,040h,061h,0ebh,080h,062h,0ebh,080h	; 9259  ._.@`..`.@a..b..
	defb 062h,0ebh,040h	; 9269

; ======================================================================
; CODIGO 0x926c..0x92d6  (106 bytes)
; ======================================================================


L_926C:
	call 04503h		;926c
	ld a,(0e372h)		;926f
	sub 002h		;9272
	ret nz			;9274
	ld (0e372h),a		;9275
	jp L_9189		;9278
L_927B:
	xor a			;927b
	ld (0e007h),a		;927c
	ld hl,(0eb40h)		;927f
	ld de,00185h		;9282
	and a			;9285
	sbc hl,de		;9286
	jp z,L_9189		;9288
	ld a,001h		;928b
	ld (0e8a0h),a		;928d
	ld a,003h		;9290
	ld (0e8a3h),a		;9292
	ret			;9295
L_9296:
	ld c,001h		;9296
	call 04dfdh		;9298
	ld a,(0e886h)		;929b
	and a			;929e
	ret nz			;929f
	ld a,(0e887h)		;92a0
	and a			;92a3
	ret nz			;92a4
	jp L_9189		;92a5
L_92A8:
	ld a,008h		;92a8
	ld (0e360h),a		;92aa
	ld a,006h		;92ad
	ld (0e3a1h),a		;92af
	ld a,003h		;92b2
	ld (0e337h),a		;92b4
	ld hl,00008h		;92b7
	ld (0e3e0h),hl		;92ba
	ld hl,00223h		;92bd
	ld (0eb40h),hl		;92c0
	ld a,0ffh		;92c3
	ld (0e368h),a		;92c5
	xor a			;92c8
	ld (0e39fh),a		;92c9
	ld (0e3a0h),a		;92cc
	ret			;92cf
L_92D0:
	ld a,(0e8abh)		;92d0
	call 040abh		;92d3

; ----------------------------------------------------------------------
; DATOS saltos_92D6: tabla de 2 palabras del despachador (call 0x408D en
;   0x92D3); lo leen L_40AB (4 bytes)
;   0x92d6..0x92da  (4 bytes)
DATA_saltos_92D6:
	defb 0dah,092h	; 92d6
	defb 015h,093h	; 92d8

; ======================================================================
; CODIGO 0x92da..0x9310  (54 bytes)
; ======================================================================


L_92DA:
	call 0428ah		;92da
	ld a,(0e36fh)		;92dd
	and a			;92e0
	ret z			;92e1
	dec a			;92e2
	jp z,L_9189		;92e3
	ld de,(0e363h)		;92e6
	ld hl,09310h		;92ea
	ld c,000h		;92ed
L_92EF:
	ld a,(hl)			;92ef
	inc hl			;92f0
	cp e			;92f1
	jr nz,L_92F8		;92f2
	ld a,(hl)			;92f4
	cp d			;92f5
	jr z,L_92FC		;92f6
L_92F8:
	inc hl			;92f8
	inc c			;92f9
	jr L_92EF		;92fa
L_92FC:
	ld a,c			;92fc
	ld hl,09312h		;92fd
	add a,a			;9300
	add a,c			;9301
	call 040a1h		;9302
	ld e,(hl)			;9305
	inc hl			;9306
	ld d,(hl)			;9307
	inc hl			;9308
	ld a,(hl)			;9309
	ex de,hl			;930a
	or (hl)			;930b
	ld (hl),a			;930c
	jp L_9189		;930d

; ----------------------------------------------------------------------
; DATOS resto_9310: lo apuntan con el banco puesto p02:92EA (0x9310), p02:92FD
;   (0x9312); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p02:92EA, p02:92FD (5 bytes)
;   0x9310..0x9315  (5 bytes)
DATA_resto_9310:
	defb 02bh,000h,061h,0ebh,020h	; 9310

; ======================================================================
; CODIGO 0x9315..0x932c  (23 bytes)
; ======================================================================


L_9315:
	xor a			;9315
	ld (0e36fh),a		;9316
	ld (0e360h),a		;9319
	jp 0585ch		;931c
L_931F:
	xor a			;931f
	ld (0e360h),a		;9320
	jp 0585ch		;9323
L_9326:
	ld a,(0e8abh)		;9326
	call 040abh		;9329

; ----------------------------------------------------------------------
; DATOS saltos_932C: tabla de 3 palabras del despachador (call 0x408D en
;   0x9329); lo leen L_40AB (6 bytes)
;   0x932c..0x9332  (6 bytes)
DATA_saltos_932C:
	defb 032h,093h	; 932c
	defb 055h,093h	; 932e
	defb 062h,093h	; 9330

; ======================================================================
; CODIGO 0x9332..0x9388  (86 bytes)
; ======================================================================


L_9332:
	call 045c4h		;9332
	ld a,001h		;9335
	ld (0e007h),a		;9337
	ld hl,0eb66h		;933a
	set 7,(hl)		;933d
	call 0590dh		;933f
	call 058d4h		;9342
	ld a,001h		;9345
	call 06148h		;9347
	ld a,001h		;934a
	call 06212h		;934c
	call 05e5fh		;934f
	jp L_9189		;9352
L_9355:
	ld c,001h		;9355
	call 04dfdh		;9357
	ld a,(0e886h)		;935a
	and a			;935d
	ret nz			;935e
	jp L_9189		;935f
L_9362:
	ld a,(0e008h)		;9362
	and a			;9365
	ret z			;9366
	call 067c8h		;9367
	ld a,001h		;936a
	call 04662h		;936c
	ld a,(0e367h)		;936f
	ld (0f000h),a		;9372
	xor a			;9375
	ld (0e007h),a		;9376
	call 05ecah		;9379
	ld a,003h		;937c
	ld (0e8a0h),a		;937e
	ret			;9381
L_9382:
	ld a,(0e8abh)		;9382
	call 040abh		;9385

; ----------------------------------------------------------------------
; DATOS saltos_9388: tabla de 4 palabras del despachador (call 0x408D en
;   0x9385); lo leen L_40AB (8 bytes)
;   0x9388..0x9390  (8 bytes)
DATA_saltos_9388:
	defb 090h,093h	; 9388
	defb 09bh,093h	; 938a
	defb 0b2h,093h	; 938c
	defb 0d8h,093h	; 938e

; ======================================================================
; CODIGO 0x9390..0x93ee  (94 bytes)
; ======================================================================


L_9390:
	ld a,040h		;9390
	ld (0e004h),a		;9392
	call 04592h		;9395
	jp L_9189		;9398
L_939B:
	ld hl,0e004h		;939b
	dec (hl)			;939e
	ld a,(hl)			;939f
	cp 020h		;93a0
	ret nz			;93a2
	ld de,00020h		;93a3
	ld hl,0b486h		;93a6
	call 044b8h		;93a9
	call 05e5fh		;93ac
	jp L_9189		;93af
L_93B2:
	ld hl,0e004h		;93b2
	dec (hl)			;93b5
	ret nz			;93b6
	ld de,00020h		;93b7
	ld hl,0b490h		;93ba
	call 044b8h		;93bd
	xor a			;93c0
	ld hl,0e830h		;93c1
	ld (hl),a			;93c4
	ld hl,0e480h		;93c5
	ld de,0e481h		;93c8
	ld bc,0007fh		;93cb
	ld (hl),000h		;93ce
	ldir		;93d0
	call 05e5fh		;93d2
	jp L_9189		;93d5
L_93D8:
	ld c,00bh		;93d8
	call 04dfdh		;93da
	ld a,(0e886h)		;93dd
	and a			;93e0
	ret nz			;93e1
	ld (0e360h),a		;93e2
	jp 0585ch		;93e5
L_93E8:
	ld a,(0e8abh)		;93e8
	call 040abh		;93eb

; ----------------------------------------------------------------------
; DATOS saltos_93EE: tabla de 4 palabras del despachador (call 0x408D en
;   0x93EB); lo leen L_40AB (8 bytes)
;   0x93ee..0x93f6  (8 bytes)
DATA_saltos_93EE:
	defb 0f6h,093h	; 93ee
	defb 001h,094h	; 93f0
	defb 018h,094h	; 93f2
	defb 03eh,094h	; 93f4

; ======================================================================
; CODIGO 0x93f6..0x945c  (102 bytes)
; ======================================================================


L_93F6:
	ld a,040h		;93f6
	ld (0e004h),a		;93f8
	call 04592h		;93fb
	jp L_9189		;93fe
L_9401:
	ld hl,0e004h		;9401
	dec (hl)			;9404
	ld a,(hl)			;9405
	cp 020h		;9406
	ret nz			;9408
	ld de,0b020h		;9409
	ld hl,0b4a4h		;940c
	call 044b8h		;940f
	call 05e5fh		;9412
	jp L_9189		;9415
L_9418:
	ld hl,0e004h		;9418
	dec (hl)			;941b
	ret nz			;941c
	ld de,0b020h		;941d
	ld hl,0b4aeh		;9420
	call 044b8h		;9423
	xor a			;9426
	ld hl,0e83bh		;9427
	ld (hl),a			;942a
	ld hl,0e400h		;942b
	ld de,0e401h		;942e
	ld bc,0007fh		;9431
	ld (hl),000h		;9434
	ldir		;9436
	call 05e5fh		;9438
	jp L_9189		;943b
L_943E:
	ld c,00eh		;943e
	call 04dfdh		;9440
	ld a,(0e886h)		;9443
	and a			;9446
	ret nz			;9447
	ld (0e360h),a		;9448
	jp 0585ch		;944b
L_944E:
	ld a,003h		;944e
	call 04856h		;9450
	jp L_931F		;9453
L_9456:
	ld a,(0e8abh)		;9456
	call 040abh		;9459

; ----------------------------------------------------------------------
; DATOS saltos_945C: tabla de 4 palabras del despachador (call 0x408D en
;   0x9459); lo leen L_40AB (8 bytes)
;   0x945c..0x9464  (8 bytes)
DATA_saltos_945C:
	defb 064h,094h	; 945c
	defb 06fh,094h	; 945e
	defb 086h,094h	; 9460
	defb 09dh,094h	; 9462

; ======================================================================
; CODIGO 0x9464..0x94be  (90 bytes)
; ======================================================================


L_9464:
	ld a,030h		;9464
	ld (0e004h),a		;9466
	call 0458dh		;9469
	jp L_9189		;946c
L_946F:
	ld hl,0e004h		;946f
	dec (hl)			;9472
	ld a,(hl)			;9473
	cp 020h		;9474
	ret nz			;9476
	ld de,02050h		;9477
	ld hl,0950ah		;947a
	call 044b8h		;947d
	call 05e5fh		;9480
	jp L_9189		;9483
L_9486:
	ld hl,0e004h		;9486
	dec (hl)			;9489
	ld a,(hl)			;948a
	cp 010h		;948b
	ret nz			;948d
	ld de,01040h		;948e
	ld hl,094e4h		;9491
	call 044b8h		;9494
	call 05e5fh		;9497
	jp L_9189		;949a
L_949D:
	ld hl,0e004h		;949d
	dec (hl)			;94a0
	ret nz			;94a1
	ld de,01040h		;94a2
	ld hl,094beh		;94a5
	xor a			;94a8
	ld (0e36dh),a		;94a9
	call 044b8h		;94ac
	call 05e5fh		;94af
	ld hl,0eb6dh		;94b2
	set 5,(hl)		;94b5
	xor a			;94b7
	ld (0e9d8h),a		;94b8
	jp L_931F		;94bb

; ----------------------------------------------------------------------
; DATOS dibujo_94BE: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p02:94AC (38 bytes)
;   0x94be..0x94e4  (38 bytes)
DATA_dibujo_94BE:
	defb 003h,003h,05eh,066h	; 94be
	defb 062h,06ah,067h,066h	; 94c2
	defb 06ch,06ch,067h,05fh	; 94c6
	defb 06bh,064h,063h,06bh	; 94ca
	defb 062h,06ch,06ah,06bh	; 94ce
	defb 06ah,06ah,06ah,065h	; 94d2
	defb 06ch,064h,063h,06bh	; 94d6
	defb 060h,068h,06ch,06ch	; 94da
	defb 069h,068h,06ah,065h	; 94de
	defb 069h,061h	; 94e2

; ----------------------------------------------------------------------
; DATOS dibujo_94E4: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p02:9494 (38 bytes)
;   0x94e4..0x950a  (38 bytes)
DATA_dibujo_94E4:
	defb 003h,003h,028h,029h	; 94e4
	defb 02ah,05eh,028h,029h	; 94e8
	defb 066h,067h,028h,029h	; 94ec
	defb 05fh,02bh,028h,062h	; 94f0
	defb 02ah,063h,06ah,06bh	; 94f4
	defb 06bh,06ah,064h,029h	; 94f8
	defb 065h,02bh,028h,060h	; 94fc
	defb 02ah,02bh,068h,069h	; 9500
	defb 02ah,02bh,061h,029h	; 9504
	defb 02ah,02bh	; 9508

; ----------------------------------------------------------------------
; DATOS dibujo_950A: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p02:947D (6 bytes)
;   0x950a..0x9510  (6 bytes)
DATA_dibujo_950A:
	defb 001h,001h,05eh,05fh	; 950a
	defb 060h,061h	; 950e

; ======================================================================
; CODIGO 0x9510..0x9516  (6 bytes)
; ======================================================================


L_9510:
	ld a,(0e8abh)		;9510
	call 040abh		;9513

; ----------------------------------------------------------------------
; DATOS saltos_9516: tabla de 2 palabras del despachador (call 0x408D en
;   0x9513); lo leen L_40AB (4 bytes)
;   0x9516..0x951a  (4 bytes)
DATA_saltos_9516:
	defb 01ah,095h	; 9516
	defb 028h,095h	; 9518

; ======================================================================
; CODIGO 0x951a..0x9551  (55 bytes)
; ======================================================================


L_951A:
	ld a,009h		;951a
	ld (0e368h),a		;951c
	call 04856h		;951f
	call 04574h		;9522
	jp L_9189		;9525
L_9528:
	ld c,00bh		;9528
	call 04dfdh		;952a
	ld a,(0e886h)		;952d
	and a			;9530
	ret nz			;9531
	ld hl,0eb71h		;9532
	set 5,(hl)		;9535
	ld a,001h		;9537
	ld (0e9d6h),a		;9539
	xor a			;953c
	ld (0e368h),a		;953d
	ld a,001h		;9540
	ld (0e8a0h),a		;9542
	ld a,003h		;9545
	ld (0e8a3h),a		;9547
	ret			;954a
L_954B:
	ld a,(0e8abh)		;954b
	call 040abh		;954e

; ----------------------------------------------------------------------
; DATOS saltos_9551: tabla de 3 palabras del despachador (call 0x408D en
;   0x954E); lo leen L_40AB (6 bytes)
;   0x9551..0x9557  (6 bytes)
DATA_saltos_9551:
	defb 057h,095h	; 9551
	defb 07ah,095h	; 9553
	defb 087h,095h	; 9555

; ======================================================================
; CODIGO 0x9557..0x95c0  (105 bytes)
; ======================================================================


L_9557:
	ld a,001h		;9557
	ld (0e007h),a		;9559
	ld hl,0eb74h		;955c
	set 4,(hl)		;955f
	call 0590dh		;9561
	call 058d4h		;9564
	ld a,002h		;9567
	call 06148h		;9569
	ld a,002h		;956c
	call 06212h		;956e
	call 05e5fh		;9571
	call 045c4h		;9574
	jp L_9189		;9577
L_957A:
	ld c,009h		;957a
	call 04dfdh		;957c
	ld a,(0e886h)		;957f
	and a			;9582
	ret nz			;9583
	jp L_9189		;9584
L_9587:
	ld a,(0e008h)		;9587
	and a			;958a
	ret z			;958b
	call 067c8h		;958c
	ld a,000h		;958f
	call 04662h		;9591
	ld a,(0e367h)		;9594
	ld (0f000h),a		;9597
	xor a			;959a
	ld (0e007h),a		;959b
	call 05ecah		;959e
	ld a,003h		;95a1
	ld (0e8a0h),a		;95a3
	ret			;95a6
L_95A7:
	ld a,022h		;95a7
	ld (0e488h),a		;95a9
	call 0458dh		;95ac
	ld a,001h		;95af
	ld (0e8a0h),a		;95b1
	ld a,003h		;95b4
	ld (0e8a3h),a		;95b6
	ret			;95b9
L_95BA:
	ld a,(0e8abh)		;95ba
	call 040abh		;95bd

; ----------------------------------------------------------------------
; DATOS saltos_95C0: tabla de 15 palabras del despachador (call 0x408D en
;   0x95BD); lo leen L_40AB (30 bytes)
;   0x95c0..0x95de  (30 bytes)
DATA_saltos_95C0:
	defb 0deh,095h	; 95c0
	defb 0ech,095h	; 95c2
	defb 0feh,095h	; 95c4
	defb 01bh,096h	; 95c6
	defb 032h,096h	; 95c8
	defb 048h,096h	; 95ca
	defb 05fh,096h	; 95cc
	defb 070h,096h	; 95ce
	defb 087h,096h	; 95d0
	defb 09fh,096h	; 95d2
	defb 0b6h,096h	; 95d4
	defb 0c7h,096h	; 95d6
	defb 0deh,096h	; 95d8
	defb 0ech,096h	; 95da
	defb 003h,097h	; 95dc

; ======================================================================
; CODIGO 0x95de..0x973c  (350 bytes)
; ======================================================================


L_95DE:
	ld a,00eh		;95de
	ld (0e368h),a		;95e0
	call 04856h		;95e3
	call 04574h		;95e6
	jp L_9189		;95e9
L_95EC:
	ld c,005h		;95ec
	call 04dfdh		;95ee
	ld a,(0e886h)		;95f1
	and a			;95f4
	ret nz			;95f5
	ld a,(0e887h)		;95f6
	and a			;95f9
	ret nz			;95fa
	jp L_9189		;95fb
L_95FE:
	ld a,001h		;95fe
	ld (0e007h),a		;9600
	call 0590dh		;9603
	call 058d4h		;9606
	xor a			;9609
	ld (0e368h),a		;960a
	xor a			;960d
	call 06148h		;960e
	xor a			;9611
	call 06212h		;9612
	call 05e5fh		;9615
	jp L_9189		;9618
L_961B:
	ld c,006h		;961b
	call 04dfdh		;961d
	ld a,(0e886h)		;9620
	and a			;9623
	ret nz			;9624
	ld a,(0e887h)		;9625
	and a			;9628
	ret nz			;9629
	ld a,00eh		;962a
	ld (0e8aah),a		;962c
	jp L_9189		;962f
L_9632:
	call 0590dh		;9632
	call 058d4h		;9635
	ld a,004h		;9638
	call 06148h		;963a
	ld a,004h		;963d
	call 06212h		;963f
	call 05e5fh		;9642
	jp L_9189		;9645
L_9648:
	ld c,007h		;9648
	call 04dfdh		;964a
	ld a,(0e886h)		;964d
	and a			;9650
	ret nz			;9651
	ld a,(0e887h)		;9652
	and a			;9655
	ret nz			;9656
	ld a,00eh		;9657
	ld (0e8aah),a		;9659
	jp L_9189		;965c
L_965F:
	call 067c8h		;965f
	ld a,00dh		;9662
	ld (0e368h),a		;9664
	call 04856h		;9667
	call 04574h		;966a
	jp L_9189		;966d
L_9670:
	ld c,008h		;9670
	call 04dfdh		;9672
	ld a,(0e886h)		;9675
	and a			;9678
	ret nz			;9679
	ld a,(0e887h)		;967a
	and a			;967d
	ret nz			;967e
	ld a,00eh		;967f
	ld (0e8aah),a		;9681
	jp L_9189		;9684
L_9687:
	call 0590dh		;9687
	call 058d4h		;968a
	xor a			;968d
	ld (0e368h),a		;968e
	xor a			;9691
	call 06148h		;9692
	xor a			;9695
	call 06212h		;9696
	call 05e5fh		;9699
	jp L_9189		;969c
L_969F:
	ld c,009h		;969f
	call 04dfdh		;96a1
	ld a,(0e886h)		;96a4
	and a			;96a7
	ret nz			;96a8
	ld a,(0e887h)		;96a9
	and a			;96ac
	ret nz			;96ad
	ld a,00eh		;96ae
	ld (0e8aah),a		;96b0
	jp L_9189		;96b3
L_96B6:
	call 067c8h		;96b6
	ld a,00eh		;96b9
	ld (0e368h),a		;96bb
	call 04856h		;96be
	call 04574h		;96c1
	jp L_9189		;96c4
L_96C7:
	ld c,00dh		;96c7
	call 04dfdh		;96c9
	ld a,(0e886h)		;96cc
	and a			;96cf
	ret nz			;96d0
	ld a,(0e887h)		;96d1
	and a			;96d4
	ret nz			;96d5
	ld a,00eh		;96d6
	ld (0e8aah),a		;96d8
	jp L_9189		;96db
L_96DE:
	ld a,00fh		;96de
	ld (0e368h),a		;96e0
	call 04856h		;96e3
	call 04574h		;96e6
	jp L_9189		;96e9
L_96EC:
	ld c,00ah		;96ec
	call 04dfdh		;96ee
	ld a,(0e886h)		;96f1
	and a			;96f4
	ret nz			;96f5
	ld a,(0e887h)		;96f6
	and a			;96f9
	ret nz			;96fa
	ld a,00eh		;96fb
	ld (0e8aah),a		;96fd
	jp L_9189		;9700
L_9703:
	ld a,001h		;9703
	ld (0e8a0h),a		;9705
	ld a,003h		;9708
	ld (0e8a3h),a		;970a
	ret			;970d
L_970E:
	ld a,008h		;970e
	ld (0e360h),a		;9710
	ld a,009h		;9713
	ld (0e3a1h),a		;9715
	ld a,003h		;9718
	ld (0e337h),a		;971a
	ld hl,00005h		;971d
	ld (0e3e0h),hl		;9720
	ld hl,00235h		;9723
	ld (0eb40h),hl		;9726
	ld a,0ffh		;9729
	ld (0e368h),a		;972b
	xor a			;972e
	ld (0e39fh),a		;972f
	ld (0e3a0h),a		;9732
	ret			;9735
L_9736:
	ld a,(0e8abh)		;9736
	call 040abh		;9739

; ----------------------------------------------------------------------
; DATOS saltos_973C: tabla de 5 palabras del despachador (call 0x408D en
;   0x9739); lo leen L_40AB (10 bytes)
;   0x973c..0x9746  (10 bytes)
DATA_saltos_973C:
	defb 046h,097h	; 973c
	defb 05ah,097h	; 973e
	defb 06bh,097h	; 9740
	defb 07bh,097h	; 9742
	defb 090h,097h	; 9744

; ======================================================================
; CODIGO 0x9746..0x97a1  (91 bytes)
; ======================================================================


L_9746:
	xor a			;9746
	ld (0e38fh),a		;9747
	ld (0e38eh),a		;974a
	ld a,(0eb7ch)		;974d
	and 00fh		;9750
	set 6,a		;9752
	ld (0eb7ch),a		;9754
	jp L_9189		;9757
L_975A:
	call 0bdafh		;975a
	ld a,(0e38fh)		;975d
	and a			;9760
	ret z			;9761
	dec a			;9762
	jr z,L_9768		;9763
	call L_9189		;9765
L_9768:
	jp L_9189		;9768
L_976B:
	ld c,004h		;976b
	call 04dfdh		;976d
	ld a,(0e886h)		;9770
	and a			;9773
	ret nz			;9774
	call L_9189		;9775
	jp L_9189		;9778
L_977B:
	ld c,008h		;977b
	call 04dfdh		;977d
	ld a,(0e886h)		;9780
	and a			;9783
	ret nz			;9784
	ld a,(0eb7ch)		;9785
	and 00fh		;9788
	ld (0eb7ch),a		;978a
	jp L_9189		;978d
L_9790:
	ld a,001h		;9790
	ld (0e8a0h),a		;9792
	ld a,003h		;9795
	ld (0e8a3h),a		;9797
	ret			;979a
L_979B:
	ld a,(0e8abh)		;979b
	call 040abh		;979e

; ----------------------------------------------------------------------
; DATOS saltos_97A1: tabla de 5 palabras del despachador (call 0x408D en
;   0x979E); lo leen L_40AB (10 bytes)
;   0x97a1..0x97ab  (10 bytes)
DATA_saltos_97A1:
	defb 0abh,097h	; 97a1
	defb 0bfh,097h	; 97a3
	defb 0d0h,097h	; 97a5
	defb 0e0h,097h	; 97a7
	defb 0f5h,097h	; 97a9

; ======================================================================
; CODIGO 0x97ab..0x9806  (91 bytes)
; ======================================================================


L_97AB:
	xor a			;97ab
	ld (0e38fh),a		;97ac
	ld (0e38eh),a		;97af
	ld a,(0eb7ch)		;97b2
	and 00fh		;97b5
	set 5,a		;97b7
	ld (0eb7ch),a		;97b9
	jp L_9189		;97bc
L_97BF:
	call 0bbb4h		;97bf
	ld a,(0e38fh)		;97c2
	and a			;97c5
	ret z			;97c6
	dec a			;97c7
	jr z,L_97CD		;97c8
	call L_9189		;97ca
L_97CD:
	jp L_9189		;97cd
L_97D0:
	ld c,004h		;97d0
	call 04dfdh		;97d2
	ld a,(0e886h)		;97d5
	and a			;97d8
	ret nz			;97d9
	call L_9189		;97da
	jp L_9189		;97dd
L_97E0:
	ld c,008h		;97e0
	call 04dfdh		;97e2
	ld a,(0e886h)		;97e5
	and a			;97e8
	ret nz			;97e9
	ld a,(0eb7ch)		;97ea
	and 00fh		;97ed
	ld (0eb7ch),a		;97ef
	jp L_9189		;97f2
L_97F5:
	ld a,001h		;97f5
	ld (0e8a0h),a		;97f7
	ld a,003h		;97fa
	ld (0e8a3h),a		;97fc
	ret			;97ff
L_9800:
	ld a,(0e8abh)		;9800
	call 040abh		;9803

; ----------------------------------------------------------------------
; DATOS saltos_9806: tabla de 2 palabras del despachador (call 0x408D en
;   0x9803); lo leen L_40AB (4 bytes)
;   0x9806..0x980a  (4 bytes)
DATA_saltos_9806:
	defb 00ah,098h	; 9806
	defb 019h,098h	; 9808

; ======================================================================
; CODIGO 0x980a..0x982b  (33 bytes)
; ======================================================================


L_980A:
	ld de,07030h		;980a
	ld hl,0982bh		;980d
	call 044b8h		;9810
	call 05e5fh		;9813
	jp L_9189		;9816
L_9819:
	ld c,00ch		;9819
	call 04dfdh		;981b
	ld a,(0e886h)		;981e
	and a			;9821
	ret nz			;9822
	ld hl,0eb5dh		;9823
	set 4,(hl)		;9826
	jp L_931F		;9828

; ----------------------------------------------------------------------
; DATOS dibujo_982B: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p02:9810 (6 bytes)
;   0x982b..0x9831  (6 bytes)
DATA_dibujo_982B:
	defb 001h,001h,056h,057h	; 982b
	defb 058h,059h	; 982f

; ======================================================================
; CODIGO 0x9831..0x9837  (6 bytes)
; ======================================================================


L_9831:
	ld a,(0e8abh)		;9831
	call 040abh		;9834

; ----------------------------------------------------------------------
; DATOS saltos_9837: tabla de 5 palabras del despachador (call 0x408D en
;   0x9834); lo leen L_40AB (10 bytes)
;   0x9837..0x9841  (10 bytes)
DATA_saltos_9837:
	defb 041h,098h	; 9837
	defb 04bh,098h	; 9839
	defb 05ch,098h	; 983b
	defb 06ch,098h	; 983d
	defb 079h,098h	; 983f

; ======================================================================
; CODIGO 0x9841..0x9892  (81 bytes)
; ======================================================================


L_9841:
	xor a			;9841
	ld (0e38fh),a		;9842
	ld (0e38eh),a		;9845
	jp L_9189		;9848
L_984B:
	call 0bee1h		;984b
	ld a,(0e38fh)		;984e
	and a			;9851
	ret z			;9852
	dec a			;9853
	jr z,L_9859		;9854
	call L_9189		;9856
L_9859:
	jp L_9189		;9859
L_985C:
	ld c,004h		;985c
	call 04dfdh		;985e
	ld a,(0e886h)		;9861
	and a			;9864
	ret nz			;9865
	call L_9189		;9866
	jp L_9189		;9869
L_986C:
	ld c,008h		;986c
	call 04dfdh		;986e
	ld a,(0e886h)		;9871
	and a			;9874
	ret nz			;9875
	jp L_9189		;9876
L_9879:
	ld a,(0eb7ch)		;9879
	and 00fh		;987c
	ld (0eb7ch),a		;987e
	ld a,001h		;9881
	ld (0e8a0h),a		;9883
	ld a,003h		;9886
	ld (0e8a3h),a		;9888
	ret			;988b
L_988C:
	ld a,(0e8abh)		;988c
	call 040abh		;988f

; ----------------------------------------------------------------------
; DATOS saltos_9892: tabla de 5 palabras del despachador (call 0x408D en
;   0x988F); lo leen L_40AB (10 bytes)
;   0x9892..0x989c  (10 bytes)
DATA_saltos_9892:
	defb 09ch,098h	; 9892
	defb 0a6h,098h	; 9894
	defb 0b7h,098h	; 9896
	defb 0c7h,098h	; 9898
	defb 0d4h,098h	; 989a

; ======================================================================
; CODIGO 0x989c..0x98ed  (81 bytes)
; ======================================================================


L_989C:
	xor a			;989c
	ld (0e38fh),a		;989d
	ld (0e38eh),a		;98a0
	jp L_9189		;98a3
L_98A6:
	call 0bbffh		;98a6
	ld a,(0e38fh)		;98a9
	and a			;98ac
	ret z			;98ad
	dec a			;98ae
	jr z,L_98B4		;98af
	call L_9189		;98b1
L_98B4:
	jp L_9189		;98b4
L_98B7:
	ld c,004h		;98b7
	call 04dfdh		;98b9
	ld a,(0e886h)		;98bc
	and a			;98bf
	ret nz			;98c0
	call L_9189		;98c1
	jp L_9189		;98c4
L_98C7:
	ld c,008h		;98c7
	call 04dfdh		;98c9
	ld a,(0e886h)		;98cc
	and a			;98cf
	ret nz			;98d0
	jp L_9189		;98d1
L_98D4:
	ld a,(0eb7ch)		;98d4
	and 00fh		;98d7
	ld (0eb7ch),a		;98d9
	ld a,001h		;98dc
	ld (0e8a0h),a		;98de
	ld a,003h		;98e1
	ld (0e8a3h),a		;98e3
	ret			;98e6
L_98E7:
	ld a,(0e8abh)		;98e7
	call 040abh		;98ea

; ----------------------------------------------------------------------
; DATOS saltos_98ED: tabla de 3 palabras del despachador (call 0x408D en
;   0x98EA); lo leen L_40AB (6 bytes)
;   0x98ed..0x98f3  (6 bytes)
DATA_saltos_98ED:
	defb 0f3h,098h	; 98ed
	defb 014h,099h	; 98ef
	defb 021h,099h	; 98f1

; ======================================================================
; CODIGO 0x98f3..0x9941  (78 bytes)
; ======================================================================


L_98F3:
	ld a,001h		;98f3
	ld (0e007h),a		;98f5
	call 0bb05h		;98f8
	call 058ffh		;98fb
	call 058d4h		;98fe
	ld a,003h		;9901
	call 06148h		;9903
	ld a,003h		;9906
	call 06212h		;9908
	call 05e5fh		;990b
	call 0b4b8h		;990e
	jp L_9189		;9911
L_9914:
	ld c,008h		;9914
	call 04dfdh		;9916
	ld a,(0e886h)		;9919
	and a			;991c
	ret nz			;991d
	jp L_9189		;991e
L_9921:
	ld a,(0e008h)		;9921
	and a			;9924
	ret z			;9925
	call 058ffh		;9926
	call 067c8h		;9929
	xor a			;992c
	ld (0e007h),a		;992d
	ld a,001h		;9930
	ld (0e8a0h),a		;9932
	ld a,003h		;9935
	ld (0e8a3h),a		;9937
	ret			;993a
L_993B:
	ld a,(0e8abh)		;993b
	call 040abh		;993e

; ----------------------------------------------------------------------
; DATOS saltos_9941: tabla de 3 palabras del despachador (call 0x408D en
;   0x993E); lo leen L_40AB (6 bytes)
;   0x9941..0x9947  (6 bytes)
DATA_saltos_9941:
	defb 047h,099h	; 9941
	defb 055h,099h	; 9943
	defb 062h,099h	; 9945

; ======================================================================
; CODIGO 0x9947..0x997c  (53 bytes)
; ======================================================================


L_9947:
	ld a,00ah		;9947
	ld (0e368h),a		;9949
	call 04856h		;994c
	call 04574h		;994f
	jp L_9189		;9952
L_9955:
	ld c,005h		;9955
	call 04dfdh		;9957
	ld a,(0e886h)		;995a
	and a			;995d
	ret nz			;995e
	jp L_9189		;995f
L_9962:
	ld a,(0e008h)		;9962
	and a			;9965
	ret z			;9966
	xor a			;9967
	ld (0e368h),a		;9968
	ld a,001h		;996b
	ld (0e8a0h),a		;996d
	ld a,003h		;9970
	ld (0e8a3h),a		;9972
	ret			;9975
L_9976:
	ld a,(0e8abh)		;9976
	call 040abh		;9979

; ----------------------------------------------------------------------
; DATOS saltos_997C: tabla de 3 palabras del despachador (call 0x408D en
;   0x9979); lo leen L_40AB (6 bytes)
;   0x997c..0x9982  (6 bytes)
DATA_saltos_997C:
	defb 082h,099h	; 997c
	defb 0a3h,099h	; 997e
	defb 0b5h,099h	; 9980

; ======================================================================
; CODIGO 0x9982..0x99d5  (83 bytes)
; ======================================================================


L_9982:
	ld a,001h		;9982
	ld (0e007h),a		;9984
	call 045c4h		;9987
	call 058ffh		;998a
	call 058d4h		;998d
	ld a,003h		;9990
	call 06148h		;9992
	ld a,003h		;9995
	call 06212h		;9997
	call 05e5fh		;999a
	call 0b4b8h		;999d
	jp L_9189		;99a0
L_99A3:
	ld c,009h		;99a3
	call 04dfdh		;99a5
	ld a,(0e886h)		;99a8
	and a			;99ab
	ret nz			;99ac
	ld hl,0eb60h		;99ad
	set 0,(hl)		;99b0
	jp L_9189		;99b2
L_99B5:
	ld a,(0e008h)		;99b5
	and a			;99b8
	ret z			;99b9
	call 058ffh		;99ba
	call 067c8h		;99bd
	xor a			;99c0
	ld (0e007h),a		;99c1
	ld a,001h		;99c4
	ld (0e8a0h),a		;99c6
	ld a,003h		;99c9
	ld (0e8a3h),a		;99cb
	ret			;99ce
L_99CF:
	ld a,(0e8abh)		;99cf
	call 040abh		;99d2

; ----------------------------------------------------------------------
; DATOS saltos_99D5: tabla de 2 palabras del despachador (call 0x408D en
;   0x99D2); lo leen L_40AB (4 bytes)
;   0x99d5..0x99d9  (4 bytes)
DATA_saltos_99D5:
	defb 0d9h,099h	; 99d5
	defb 0fah,099h	; 99d7

; ======================================================================
; CODIGO 0x99d9..0x9a58  (127 bytes)
; ======================================================================


L_99D9:
	ld a,001h		;99d9
	ld (0e007h),a		;99db
	call 0bb05h		;99de
	call 058ffh		;99e1
	call 058d4h		;99e4
	ld a,003h		;99e7
	call 06148h		;99e9
	ld a,003h		;99ec
	call 06212h		;99ee
	call 05e5fh		;99f1
	call 0b4b8h		;99f4
	jp L_9189		;99f7
L_99FA:
	ld a,(0e008h)		;99fa
	and a			;99fd
	ret z			;99fe
	call 058ffh		;99ff
	call 067c8h		;9a02
	xor a			;9a05
	ld (0e007h),a		;9a06
	ld a,001h		;9a09
	ld (0e8a0h),a		;9a0b
	ld a,003h		;9a0e
	ld (0e8a3h),a		;9a10
	ret			;9a13
L_9A14:
	call 0bac4h		;9a14
	ld a,002h		;9a17
	ld (0ea01h),a		;9a19
	ld a,008h		;9a1c
	ld (0e360h),a		;9a1e
	jp 0585ch		;9a21
L_9A24:
	ld hl,00001h		;9a24
	ld (0e3e0h),hl		;9a27
	ld a,008h		;9a2a
	ld (0e360h),a		;9a2c
	jp 0585ch		;9a2f
L_9A32:
	ld hl,00002h		;9a32
	ld (0e3e0h),hl		;9a35
	ld a,001h		;9a38
	ld (0e3f2h),a		;9a3a
	ld a,008h		;9a3d
	ld (0e360h),a		;9a3f
	jp 0585ch		;9a42
L_9A45:
	ld a,006h		;9a45
	ld (0ea01h),a		;9a47
	ld a,008h		;9a4a
	ld (0e360h),a		;9a4c
	jp 0585ch		;9a4f
L_9A52:
	ld a,(0e8abh)		;9a52
	call 040abh		;9a55

; ----------------------------------------------------------------------
; DATOS saltos_9A58: tabla de 5 palabras del despachador (call 0x408D en
;   0x9A55); lo leen L_40AB (10 bytes)
;   0x9a58..0x9a62  (10 bytes)
DATA_saltos_9A58:
	defb 062h,09ah	; 9a58
	defb 06ah,09ah	; 9a5a
	defb 085h,09ah	; 9a5c
	defb 092h,09ah	; 9a5e
	defb 0a7h,09ah	; 9a60

; ======================================================================
; CODIGO 0x9a62..0x9a81  (31 bytes)
; ======================================================================


L_9A62:
	ld a,080h		;9a62
	ld (0e004h),a		;9a64
	jp L_9189		;9a67
L_9A6A:
	ld hl,0e004h		;9a6a
	dec (hl)			;9a6d
	jp z,L_9189		;9a6e
	ld a,(hl)			;9a71
	and 00ch		;9a72
	rra			;9a74
	rra			;9a75
	ld hl,09a81h		;9a76
	call 040a1h		;9a79
	ld a,(hl)			;9a7c
	ld (0f02bh),a		;9a7d
	ret			;9a80

; ----------------------------------------------------------------------
; DATOS resto_9A81: lo apuntan con el banco puesto p02:9A76 (0x9A81); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p02:9A76 (4 bytes)
;   0x9a81..0x9a85  (4 bytes)
DATA_resto_9A81:
	defb 00ah,009h,008h,006h	; 9a81

; ======================================================================
; CODIGO 0x9a85..0x9af1  (108 bytes)
; ======================================================================


L_9A85:
	ld a,0e0h		;9a85
	ld (0f028h),a		;9a87
	ld hl,0eb7dh		;9a8a
	set 7,(hl)		;9a8d
	jp L_9189		;9a8f
L_9A92:
	ld c,00eh		;9a92
	call 04dfdh		;9a94
	ld a,(0e886h)		;9a97
	and a			;9a9a
	ret nz			;9a9b
	ld a,(0e887h)		;9a9c
	and a			;9a9f
	ret nz			;9aa0
	call L_83F7		;9aa1
	jp L_9189		;9aa4
L_9AA7:
	ld c,00fh		;9aa7
	call 04dfdh		;9aa9
	ld a,(0e886h)		;9aac
	and a			;9aaf
	ret nz			;9ab0
	ld a,000h		;9ab1
	call 04662h		;9ab3
	ld hl,0eb65h		;9ab6
	set 0,(hl)		;9ab9
	ld a,008h		;9abb
	ld (0e360h),a		;9abd
	jp 0585ch		;9ac0
L_9AC3:
	ld a,008h		;9ac3
	ld (0e360h),a		;9ac5
	ld a,005h		;9ac8
	ld (0e3a1h),a		;9aca
	ld a,003h		;9acd
	ld (0e337h),a		;9acf
	ld hl,00007h		;9ad2
	ld (0e3e0h),hl		;9ad5
	ld hl,00220h		;9ad8
	ld (0eb40h),hl		;9adb
	ld a,0ffh		;9ade
	ld (0e368h),a		;9ae0
	xor a			;9ae3
	ld (0e39fh),a		;9ae4
	ld (0e3a0h),a		;9ae7
	ret			;9aea
L_9AEB:
	ld a,(0e8abh)		;9aeb
	call 040abh		;9aee

; ----------------------------------------------------------------------
; DATOS saltos_9AF1: tabla de 5 palabras del despachador (call 0x408D en
;   0x9AEE); lo leen L_40AB (10 bytes)
;   0x9af1..0x9afb  (10 bytes)
DATA_saltos_9AF1:
	defb 0fbh,09ah	; 9af1
	defb 00fh,09bh	; 9af3
	defb 020h,09bh	; 9af5
	defb 030h,09bh	; 9af7
	defb 045h,09bh	; 9af9

; ======================================================================
; CODIGO 0x9afb..0x9b56  (91 bytes)
; ======================================================================


L_9AFB:
	xor a			;9afb
	ld (0e38fh),a		;9afc
	ld (0e38eh),a		;9aff
	ld a,(0eb7ch)		;9b02
	and 00fh		;9b05
	set 4,a		;9b07
	ld (0eb7ch),a		;9b09
	jp L_9189		;9b0c
L_9B0F:
	call 0bb14h		;9b0f
	ld a,(0e38fh)		;9b12
	and a			;9b15
	ret z			;9b16
	dec a			;9b17
	jr z,L_9B1D		;9b18
	call L_9189		;9b1a
L_9B1D:
	jp L_9189		;9b1d
L_9B20:
	ld c,004h		;9b20
	call 04dfdh		;9b22
	ld a,(0e886h)		;9b25
	and a			;9b28
	ret nz			;9b29
	call L_9189		;9b2a
	jp L_9189		;9b2d
L_9B30:
	ld c,008h		;9b30
	call 04dfdh		;9b32
	ld a,(0e886h)		;9b35
	and a			;9b38
	ret nz			;9b39
	ld a,(0eb7ch)		;9b3a
	and 00fh		;9b3d
	ld (0eb7ch),a		;9b3f
	jp L_9189		;9b42
L_9B45:
	ld a,001h		;9b45
	ld (0e8a0h),a		;9b47
	ld a,003h		;9b4a
	ld (0e8a3h),a		;9b4c
	ret			;9b4f
L_9B50:
	ld a,(0e8abh)		;9b50
	call 040abh		;9b53

; ----------------------------------------------------------------------
; DATOS saltos_9B56: tabla de 5 palabras del despachador (call 0x408D en
;   0x9B53); lo leen L_40AB (10 bytes)
;   0x9b56..0x9b60  (10 bytes)
DATA_saltos_9B56:
	defb 060h,09bh	; 9b56
	defb 06ah,09bh	; 9b58
	defb 07bh,09bh	; 9b5a
	defb 08bh,09bh	; 9b5c
	defb 098h,09bh	; 9b5e

; ======================================================================
; CODIGO 0x9b60..0x9bc3  (99 bytes)
; ======================================================================


L_9B60:
	xor a			;9b60
	ld (0e38fh),a		;9b61
	ld (0e38eh),a		;9b64
	jp L_9189		;9b67
L_9B6A:
	call 0bb5fh		;9b6a
	ld a,(0e38fh)		;9b6d
	and a			;9b70
	ret z			;9b71
	dec a			;9b72
	jr z,L_9B78		;9b73
	call L_9189		;9b75
L_9B78:
	jp L_9189		;9b78
L_9B7B:
	ld c,004h		;9b7b
	call 04dfdh		;9b7d
	ld a,(0e886h)		;9b80
	and a			;9b83
	ret nz			;9b84
	call L_9189		;9b85
	jp L_9189		;9b88
L_9B8B:
	ld c,008h		;9b8b
	call 04dfdh		;9b8d
	ld a,(0e886h)		;9b90
	and a			;9b93
	ret nz			;9b94
	jp L_9189		;9b95
L_9B98:
	ld a,(0eb7ch)		;9b98
	and 00fh		;9b9b
	ld (0eb7ch),a		;9b9d
	ld a,001h		;9ba0
	ld (0e8a0h),a		;9ba2
	ld a,003h		;9ba5
	ld (0e8a3h),a		;9ba7
	ret			;9baa
L_9BAB:
	ld de,05030h		;9bab
	ld hl,09bc3h		;9bae
	xor a			;9bb1
	ld (0e36dh),a		;9bb2
	call 044b8h		;9bb5
	call 05e5fh		;9bb8
	ld hl,0eb5bh		;9bbb
	set 5,(hl)		;9bbe
	jp L_931F		;9bc0

; ----------------------------------------------------------------------
; DATOS dibujo_9BC3: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p02:9BB5 (10 bytes)
;   0x9bc3..0x9bcd  (10 bytes)
DATA_dibujo_9BC3:
	defb 002h,001h,050h,051h	; 9bc3
	defb 050h,051h,050h,051h	; 9bc7
	defb 050h,051h	; 9bcb

; ======================================================================
; CODIGO 0x9bcd..0x9c04  (55 bytes)
; ======================================================================


L_9BCD:
	ld a,008h		;9bcd
	ld (0e360h),a		;9bcf
	ld a,003h		;9bd2
	ld (0e3a1h),a		;9bd4
	ld a,003h		;9bd7
	ld (0e337h),a		;9bd9
	ld hl,00005h		;9bdc
	ld (0e3e0h),hl		;9bdf
	ld hl,00223h		;9be2
	ld (0eb40h),hl		;9be5
	ld a,0ffh		;9be8
	ld (0e368h),a		;9bea
	xor a			;9bed
	ld (0e39fh),a		;9bee
	ld (0e3a0h),a		;9bf1
	ret			;9bf4
L_9BF5:
	ld de,03020h		;9bf5
	ld hl,09c04h		;9bf8
	call 044b8h		;9bfb
	call 05e5fh		;9bfe
	jp L_931F		;9c01

; ----------------------------------------------------------------------
; DATOS dibujo_9C04: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p02:9BFB (6 bytes)
;   0x9c04..0x9c0a  (6 bytes)
DATA_dibujo_9C04:
	defb 001h,001h,07dh,07eh	; 9c04
	defb 07fh,080h	; 9c08

; ======================================================================
; CODIGO 0x9c0a..0x9c19  (15 bytes)
; ======================================================================


L_9C0A:
	ld de,06040h		;9c0a
	ld hl,09c19h		;9c0d
	call 044b8h		;9c10
	call 05e5fh		;9c13
	jp L_931F		;9c16

; ----------------------------------------------------------------------
; DATOS dibujo_9C19: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p02:9C10 (6 bytes)
;   0x9c19..0x9c1f  (6 bytes)
DATA_dibujo_9C19:
	defb 001h,001h,038h,039h	; 9c19
	defb 03ah,03bh	; 9c1d

; ======================================================================
; CODIGO 0x9c1f..0x9c5f  (64 bytes)
; ======================================================================


L_9C1F:
	ld a,00ah		;9c1f
	ld (0ea01h),a		;9c21
	ld a,008h		;9c24
	ld (0e360h),a		;9c26
	jp 0585ch		;9c29
L_9C2C:
	ld a,00dh		;9c2c
	ld (0ea01h),a		;9c2e
	ld a,008h		;9c31
	ld (0e360h),a		;9c33
	call 045b0h		;9c36
	jp 0585ch		;9c39
L_9C3C:
	ld a,019h		;9c3c
	ld (0ea01h),a		;9c3e
	ld a,008h		;9c41
	ld (0e360h),a		;9c43
	call 04560h		;9c46
	jp 0585ch		;9c49
L_9C4C:
	xor a			;9c4c
	ld (0e36dh),a		;9c4d
	ld de,04030h		;9c50
	ld hl,09c5fh		;9c53
	call 044b8h		;9c56
	call 05e5fh		;9c59
	jp L_931F		;9c5c

; ----------------------------------------------------------------------
; DATOS dibujo_9C5F: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p02:9C56 (6 bytes)
;   0x9c5f..0x9c65  (6 bytes)
DATA_dibujo_9C5F:
	defb 001h,001h,018h,019h	; 9c5f
	defb 01ah,01bh	; 9c63

; ======================================================================
; CODIGO 0x9c65..0x9c6b  (6 bytes)
; ======================================================================


L_9C65:
	ld a,(0e8abh)		;9c65
	call 040abh		;9c68

; ----------------------------------------------------------------------
; DATOS saltos_9C6B: tabla de 4 palabras del despachador (call 0x408D en
;   0x9C68); lo leen L_40AB (8 bytes)
;   0x9c6b..0x9c73  (8 bytes)
DATA_saltos_9C6B:
	defb 073h,09ch	; 9c6b
	defb 087h,09ch	; 9c6d
	defb 092h,09ch	; 9c6f
	defb 09fh,09ch	; 9c71

; ======================================================================
; CODIGO 0x9c73..0x9cb0  (61 bytes)
; ======================================================================


L_9C73:
	xor a			;9c73
	ld (0e38fh),a		;9c74
	ld (0e38eh),a		;9c77
	ld a,(0eb7ch)		;9c7a
	and 00fh		;9c7d
	set 7,a		;9c7f
	ld (0eb7ch),a		;9c81
	jp L_9189		;9c84
L_9C87:
	call 04392h		;9c87
	ld a,(0e38fh)		;9c8a
	and a			;9c8d
	ret z			;9c8e
	jp L_9189		;9c8f
L_9C92:
	ld c,00dh		;9c92
	call 04dfdh		;9c94
	ld a,(0e886h)		;9c97
	and a			;9c9a
	ret nz			;9c9b
	jp L_9189		;9c9c
L_9C9F:
	ld a,001h		;9c9f
	ld (0e8a0h),a		;9ca1
	ld a,003h		;9ca4
	ld (0e8a3h),a		;9ca6
	ret			;9ca9
L_9CAA:
	ld a,(0e8abh)		;9caa
	call 040abh		;9cad

; ----------------------------------------------------------------------
; DATOS saltos_9CB0: tabla de 4 palabras del despachador (call 0x408D en
;   0x9CAD); lo leen L_40AB (8 bytes)
;   0x9cb0..0x9cb8  (8 bytes)
DATA_saltos_9CB0:
	defb 0b8h,09ch	; 9cb0
	defb 0c2h,09ch	; 9cb2
	defb 0cdh,09ch	; 9cb4
	defb 0dah,09ch	; 9cb6

; ======================================================================
; CODIGO 0x9cb8..0x9d1e  (102 bytes)
; ======================================================================


L_9CB8:
	xor a			;9cb8
	ld (0e38fh),a		;9cb9
	ld (0e38eh),a		;9cbc
	jp L_9189		;9cbf
L_9CC2:
	call 04392h		;9cc2
	ld a,(0e38fh)		;9cc5
	and a			;9cc8
	ret z			;9cc9
	jp L_9189		;9cca
L_9CCD:
	ld c,00dh		;9ccd
	call 04dfdh		;9ccf
	ld a,(0e886h)		;9cd2
	and a			;9cd5
	ret nz			;9cd6
	jp L_9189		;9cd7
L_9CDA:
	ld a,(0eb7ch)		;9cda
	and 00fh		;9cdd
	ld (0eb7ch),a		;9cdf
	ld a,001h		;9ce2
	ld (0e8a0h),a		;9ce4
	ld a,003h		;9ce7
	ld (0e8a3h),a		;9ce9
	ret			;9cec
L_9CED:
	ld b,000h		;9ced
	ld (0e8e0h),de		;9cef
	ld ix,0aabeh		;9cf3
	ld hl,(0e365h)		;9cf7
	push hl			;9cfa
	pop iy		;9cfb
	ld de,(0e363h)		;9cfd
L_9D01:
	ld l,(ix+000h)		;9d01
	ld h,(ix+001h)		;9d04
	ld a,l			;9d07
	and h			;9d08
	cp 0ffh		;9d09
	ret z			;9d0b
	and a			;9d0c
	sbc hl,de		;9d0d
	jr z,L_9D18		;9d0f
	inc b			;9d11
	inc ix		;9d12
	inc ix		;9d14
	jr L_9D01		;9d16
L_9D18:
	ld l,b			;9d18
	ld h,000h		;9d19
	call 040b5h		;9d1b

; ----------------------------------------------------------------------
; DATOS saltos_9D1E: tabla de 105 palabras del despachador (call 0x408D en
;   0x9D1B); lo leen L_40AB (210 bytes)
;   0x9d1e..0x9df0  (210 bytes)
DATA_saltos_9D1E:
	defb 0f0h,09dh	; 9d1e
	defb 013h,09eh	; 9d20
	defb 030h,09eh	; 9d22
	defb 060h,09eh	; 9d24
	defb 074h,09eh	; 9d26
	defb 087h,09eh	; 9d28
	defb 09eh,09eh	; 9d2a
	defb 0c2h,09eh	; 9d2c
	defb 0edh,09eh	; 9d2e
	defb 000h,09fh	; 9d30
	defb 00bh,09fh	; 9d32
	defb 03ch,09fh	; 9d34
	defb 045h,09fh	; 9d36
	defb 069h,09fh	; 9d38
	defb 083h,09fh	; 9d3a
	defb 0cdh,09fh	; 9d3c
	defb 0dah,09fh	; 9d3e
	defb 0fah,09fh	; 9d40
	defb 00bh,0a0h	; 9d42
	defb 01ch,0a0h	; 9d44
	defb 061h,0a0h	; 9d46
	defb 09dh,0a0h	; 9d48
	defb 0a7h,0a0h	; 9d4a
	defb 0cch,0a0h	; 9d4c
	defb 005h,0a1h	; 9d4e
	defb 01ah,0a1h	; 9d50
	defb 042h,0a1h	; 9d52
	defb 053h,0a1h	; 9d54
	defb 0a9h,0a1h	; 9d56
	defb 0c4h,0a1h	; 9d58
	defb 0c4h,0a1h	; 9d5a
	defb 0cdh,0a1h	; 9d5c
	defb 0deh,0a1h	; 9d5e
	defb 0eah,0a1h	; 9d60
	defb 0f3h,0a1h	; 9d62
	defb 065h,0a2h	; 9d64
	defb 0cch,0a2h	; 9d66
	defb 0cch,0a2h	; 9d68
	defb 0cch,0a2h	; 9d6a
	defb 0cch,0a2h	; 9d6c
	defb 0d5h,0a2h	; 9d6e
	defb 056h,0a3h	; 9d70
	defb 093h,0a3h	; 9d72
	defb 0cbh,0a3h	; 9d74
	defb 0e8h,0a3h	; 9d76
	defb 0fch,0a3h	; 9d78
	defb 01bh,0a4h	; 9d7a
	defb 041h,0a4h	; 9d7c
	defb 060h,0a4h	; 9d7e
	defb 088h,0a4h	; 9d80
	defb 0bah,0a4h	; 9d82
	defb 032h,0a5h	; 9d84
	defb 070h,0a5h	; 9d86
	defb 083h,0a5h	; 9d88
	defb 0c4h,0a5h	; 9d8a
	defb 0f4h,0a5h	; 9d8c
	defb 006h,0a6h	; 9d8e
	defb 006h,0a6h	; 9d90
	defb 006h,0a6h	; 9d92
	defb 006h,0a6h	; 9d94
	defb 006h,0a6h	; 9d96
	defb 006h,0a6h	; 9d98
	defb 006h,0a6h	; 9d9a
	defb 006h,0a6h	; 9d9c
	defb 006h,0a6h	; 9d9e
	defb 02ch,0a6h	; 9da0
	defb 083h,0a6h	; 9da2
	defb 0c8h,0a6h	; 9da4
	defb 0c8h,0a6h	; 9da6
	defb 0c8h,0a6h	; 9da8
	defb 0c8h,0a6h	; 9daa
	defb 0c8h,0a6h	; 9dac
	defb 0c8h,0a6h	; 9dae
	defb 0d9h,0a6h	; 9db0
	defb 0c8h,0a6h	; 9db2
	defb 0f5h,0a6h	; 9db4
	defb 001h,0a7h	; 9db6
	defb 021h,0a7h	; 9db8
	defb 0c2h,0a7h	; 9dba
	defb 0cbh,0a7h	; 9dbc
	defb 0eeh,0a7h	; 9dbe
	defb 0f4h,0a7h	; 9dc0
	defb 003h,0a8h	; 9dc2
	defb 02bh,0a8h	; 9dc4
	defb 02bh,0a8h	; 9dc6
	defb 03ah,0a8h	; 9dc8
	defb 044h,0a8h	; 9dca
	defb 087h,0a8h	; 9dcc
	defb 0a9h,0a8h	; 9dce
	defb 0dah,0a8h	; 9dd0
	defb 011h,0a9h	; 9dd2
	defb 06eh,0a9h	; 9dd4
	defb 06eh,0a9h	; 9dd6
	defb 06eh,0a9h	; 9dd8
	defb 078h,0a9h	; 9dda
	defb 0c2h,0a9h	; 9ddc
	defb 0f4h,0a9h	; 9dde
	defb 0f4h,0a9h	; 9de0
	defb 0f4h,0a9h	; 9de2
	defb 0f4h,0a9h	; 9de4
	defb 0fdh,0a9h	; 9de6
	defb 027h,0aah	; 9de8
	defb 02fh,0aah	; 9dea
	defb 06eh,0aah	; 9dec
	defb 0afh,0aah	; 9dee

; ======================================================================
; CODIGO 0x9df0..0xa000  (528 bytes)
; ======================================================================


L_9DF0:
	ld hl,0eb58h		;9df0
	bit 6,(hl)		;9df3
	jr nz,L_9E10		;9df5
	ld a,c			;9df7
	cp 007h		;9df8
	jr nz,L_9DFF		;9dfa
	ld c,008h		;9dfc
	ret			;9dfe
L_9DFF:
	cp 004h		;9dff
	ret nz			;9e01
	ld a,00ch		;9e02
	ld (0e368h),a		;9e04
	call 04856h		;9e07
	call 04574h		;9e0a
	ld c,004h		;9e0d
	ret			;9e0f
L_9E10:
	ld c,007h		;9e10
	ret			;9e12
L_9E13:
	ld hl,0eb58h		;9e13
	bit 7,(hl)		;9e16
	jr nz,L_9E1D		;9e18
	ld c,003h		;9e1a
	ret			;9e1c
L_9E1D:
	ld a,001h		;9e1d
	ld (0e368h),a		;9e1f
	call 04856h		;9e22
	call 04574h		;9e25
	ld hl,0eb58h		;9e28
	set 6,(hl)		;9e2b
	ld c,006h		;9e2d
	ret			;9e2f
L_9E30:
	ld hl,0eb59h		;9e30
	bit 7,(hl)		;9e33
	ret z			;9e35
	ld c,002h		;9e36
	ret			;9e38
L_9E39:
	ld c,080h		;9e39
	ld de,(0eb40h)		;9e3b
	ld hl,000cfh		;9e3f
	and a			;9e42
	sbc hl,de		;9e43
	jr z,L_9E58		;9e45
	ld hl,000b0h		;9e47
	and a			;9e4a
	sbc hl,de		;9e4b
	jr z,L_9E58		;9e4d
	ld hl,000f0h		;9e4f
	and a			;9e52
	sbc hl,de		;9e53
	ret nz			;9e55
	ld c,000h		;9e56
L_9E58:
	ld a,(0eb59h)		;9e58
	or c			;9e5b
	ld (0eb59h),a		;9e5c
	ret			;9e5f
L_9E60:
	ld hl,0eb5bh		;9e60
	ld a,c			;9e63
	cp 005h		;9e64
	ret nz			;9e66
	ld a,009h		;9e67
	ld (0e3c0h),a		;9e69
	ld a,002h		;9e6c
	ld (0e482h),a		;9e6e
	set 7,(hl)		;9e71
	ret			;9e73
L_9E74:
	ld hl,0eb5bh		;9e74
	bit 7,(hl)		;9e77
	jr nz,L_9E84		;9e79
	ld a,c			;9e7b
	dec a			;9e7c
	ret nz			;9e7d
	ld hl,0eb5dh		;9e7e
	set 7,(hl)		;9e81
	ret			;9e83
L_9E84:
	ld c,005h		;9e84
	ret			;9e86
L_9E87:
	ld hl,0eb5bh		;9e87
	bit 7,(hl)		;9e8a
	jr nz,L_9E9B		;9e8c
	ld hl,0eb5dh		;9e8e
	bit 6,(hl)		;9e91
	ld c,004h		;9e93
	ret nz			;9e95
	set 6,(hl)		;9e96
	ld c,003h		;9e98
	ret			;9e9a
L_9E9B:
	ld c,006h		;9e9b
	ret			;9e9d
L_9E9E:
	ld hl,0eb5bh		;9e9e
	bit 7,(hl)		;9ea1
	jr nz,L_9EBF		;9ea3
	ld a,c			;9ea5
	cp 005h		;9ea6
	ret z			;9ea8
	ld hl,0eb5eh		;9ea9
	bit 7,(hl)		;9eac
	jr nz,L_9EB5		;9eae
	set 7,(hl)		;9eb0
	ld c,000h		;9eb2
	ret			;9eb4
L_9EB5:
	bit 6,(hl)		;9eb5
	ld c,002h		;9eb7
	ret nz			;9eb9
	set 6,(hl)		;9eba
	ld c,001h		;9ebc
	ret			;9ebe
L_9EBF:
	ld c,00ch		;9ebf
	ret			;9ec1
L_9EC2:
	ld hl,0eb5bh		;9ec2
	bit 7,(hl)		;9ec5
	jr nz,L_9EEA		;9ec7
	ld a,c			;9ec9
	cp 006h		;9eca
	ret z			;9ecc
	ld hl,0eb5eh		;9ecd
	bit 5,(hl)		;9ed0
	jr z,L_9EE3		;9ed2
	ld a,r		;9ed4
	and 00ch		;9ed6
	rra			;9ed8
	rra			;9ed9
	add a,008h		;9eda
	cp 00ah		;9edc
	jr nz,L_9EE1		;9ede
	dec a			;9ee0
L_9EE1:
	ld c,a			;9ee1
	ret			;9ee2
L_9EE3:
	ld a,c			;9ee3
	cp 00ah		;9ee4
	ret nz			;9ee6
	set 5,(hl)		;9ee7
	ret			;9ee9
L_9EEA:
	ld c,00ch		;9eea
	ret			;9eec
L_9EED:
	ld hl,0eb5dh		;9eed
	bit 7,(hl)		;9ef0
	ret z			;9ef2
	ex de,hl			;9ef3
	ld hl,0eb5bh		;9ef4
	bit 7,(hl)		;9ef7
	ret nz			;9ef9
	ld c,001h		;9efa
	ex de,hl			;9efc
	set 5,(hl)		;9efd
	ret			;9eff
L_9F00:
	ld hl,0eb5ch		;9f00
	bit 7,(hl)		;9f03
	ret nz			;9f05
	set 7,(hl)		;9f06
	ld c,001h		;9f08
	ret			;9f0a
L_9F0B:
	ld hl,0eb5ah		;9f0b
	ld a,c			;9f0e
	cp 002h		;9f0f
	jr nz,L_9F16		;9f11
	set 7,(hl)		;9f13
	ret			;9f15
L_9F16:
	cp 003h		;9f16
	jr nz,L_9F26		;9f18
	bit 3,(hl)		;9f1a
	jr z,L_9F23		;9f1c
	ld c,005h		;9f1e
	set 6,(hl)		;9f20
	ret			;9f22
L_9F23:
	set 2,(hl)		;9f23
	ret			;9f25
L_9F26:
	cp 007h		;9f26
	ret nz			;9f28
	ld a,007h		;9f29
	ld (0e368h),a		;9f2b
	call 04856h		;9f2e
	call 04574h		;9f31
	ld c,007h		;9f34
	ld a,001h		;9f36
	ld (0e9d8h),a		;9f38
	ret			;9f3b
L_9F3C:
	ld hl,0eb5ah		;9f3c
	ld a,c			;9f3f
	dec a			;9f40
	ret nz			;9f41
	set 5,(hl)		;9f42
	ret			;9f44
L_9F45:
	ld hl,0e9d2h		;9f45
	bit 7,(hl)		;9f48
	jr nz,L_9F53		;9f4a
	ld a,c			;9f4c
	cp 004h		;9f4d
	ret nz			;9f4f
	ld c,007h		;9f50
	ret			;9f52
L_9F53:
	ld a,c			;9f53
	dec a			;9f54
	jr nz,L_9F5A		;9f55
	ld c,003h		;9f57
	ret			;9f59
L_9F5A:
	dec a			;9f5a
	ret nz			;9f5b
	ld c,006h		;9f5c
	ld a,001h		;9f5e
	ld (0e8a2h),a		;9f60
	ld a,003h		;9f63
	ld (0e8a3h),a		;9f65
	ret			;9f68
L_9F69:
	ld hl,0eb5fh		;9f69
	bit 7,(hl)		;9f6c
	jr nz,L_9F7C		;9f6e
	ld a,c			;9f70
	cp 00bh		;9f71
	ret z			;9f73
	ld a,r		;9f74
	and 004h		;9f76
	rra			;9f78
	rra			;9f79
	ld c,a			;9f7a
	ret			;9f7b
L_9F7C:
	ld a,c			;9f7c
	cp 00bh		;9f7d
	ret nz			;9f7f
	ld c,00ch		;9f80
	ret			;9f82
L_9F83:
	ld hl,0eb5fh		;9f83
	bit 6,(hl)		;9f86
	jr nz,L_9FAA		;9f88
	ld a,c			;9f8a
	cp 00bh		;9f8b
	ret z			;9f8d
	cp 007h		;9f8e
	jr nz,L_9F95		;9f90
	ld c,00dh		;9f92
	ret			;9f94
L_9F95:
	bit 5,(hl)		;9f95
	jr z,L_9FA3		;9f97
	ld a,r		;9f99
	and 002h		;9f9b
	jr nz,L_9FA1		;9f9d
	ld a,004h		;9f9f
L_9FA1:
	ld c,a			;9fa1
	ret			;9fa2
L_9FA3:
	ld a,c			;9fa3
	cp 003h		;9fa4
	ret nz			;9fa6
	set 5,(hl)		;9fa7
	ret			;9fa9
L_9FAA:
	ld a,c			;9faa
	cp 00bh		;9fab
	jr nz,L_9FB2		;9fad
	ld c,00ch		;9faf
	ret			;9fb1
L_9FB2:
	cp 005h		;9fb2
	jr nc,L_9FB9		;9fb4
	ld c,006h		;9fb6
	ret			;9fb8
L_9FB9:
	cp 009h		;9fb9
	ret nz			;9fbb
	bit 4,(hl)		;9fbc
	ret nz			;9fbe
	ld c,008h		;9fbf
	set 4,(hl)		;9fc1
	ld hl,0eb6dh		;9fc3
	set 6,(hl)		;9fc6
	xor a			;9fc8
	ld (0eb7bh),a		;9fc9
	ret			;9fcc
L_9FCD:
	ld hl,0e9d0h		;9fcd
	bit 0,(hl)		;9fd0
	jr nz,L_9FD7		;9fd2
	set 0,(hl)		;9fd4
	ret			;9fd6
L_9FD7:
	ld c,001h		;9fd7
	ret			;9fd9
L_9FDA:
	ld hl,0eb60h		;9fda
	bit 7,(hl)		;9fdd
	jr nz,L_9FEF		;9fdf
	bit 5,(hl)		;9fe1
	jr z,L_9FEC		;9fe3
	ld a,c			;9fe5
	cp 005h		;9fe6
	ret z			;9fe8
	ld c,001h		;9fe9
	ret			;9feb
L_9FEC:
	set 5,(hl)		;9fec
	ret			;9fee
L_9FEF:
	ld a,c			;9fef
	cp 005h		;9ff0
	jr z,L_9FF7		;9ff2
	ld c,003h		;9ff4
	ret			;9ff6
L_9FF7:
	ld c,006h		;9ff7
	ret			;9ff9
L_9FFA:
	ld hl,0eb60h		;9ffa
	bit 6,(hl)		;9ffd
	ret z			;9fff
