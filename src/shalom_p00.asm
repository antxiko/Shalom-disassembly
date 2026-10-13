; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 00 (se ejecuta en 0x4000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x04000


; ----------------------------------------------------------------------
; DATOS resto_4000: lo apuntan con el banco puesto p00:41EE (0x4000), p01:7098
;   (0x4000), p02:8A40 (0x4000), p08:AE93 (0x4001), p01:6122 (0x4010); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p00:41EE, p01:7098, p02:8A40, p08:AE93, p01:6122 (46 bytes)
;   0x4000..0x402e  (46 bytes)
DATA_resto_4000:
	defb 041h,042h,0a3h,041h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 4000  AB.A............
	defb 045h,046h,007h,054h,0ffh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 4010  EF.T............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h,000h,0ffh,0ffh	; 4020  ..............

; ======================================================================
; CODIGO 0x402e..0x454a  (1308 bytes)
; ======================================================================


L_402E:
	call L_58D4		;402e
	jp L_413D		;4031
L_4034:
	call L_4875		;4034
	jp L_413D		;4037
L_403A:
	call L_5E5F		;403a
	jp L_413D		;403d
L_4040:
	call L_4579		;4040
	jp L_413D		;4043
L_4046:
	call L_5E69		;4046
	jp L_412B		;4049
L_404C:
	call 0013eh		;404c   ; BIOS RDVDP - Reads VDP status register
	di			;404f
	ld hl,0e005h		;4050
	bit 4,(hl)		;4053
	jr nz,L_4079		;4055
	ld a,01dh		;4057
	ld (06000h),a		;4059
	inc a			;405c
	ld (08000h),a		;405d
	inc a			;4060
	ld (0a000h),a		;4061
	call 06449h		;4064
	ld a,(0f0f1h)		;4067
	ld (06000h),a		;406a
	ld a,(0f0f2h)		;406d
	ld (08000h),a		;4070
	ld a,(0f0f3h)		;4073
	ld (0a000h),a		;4076
L_4079:
	ld hl,0e005h		;4079
	bit 0,(hl)		;407c
	jr nz,L_409C		;407e
	inc (hl)			;4080
	ei			;4081
	call 070b8h		;4082
	ld a,(0e008h)		;4085
	and 080h		;4088
	jr z,L_4095		;408a
	ld a,(0f0fah)		;408c
	cpl			;408f
	and 001h		;4090
	ld (0f0fah),a		;4092
L_4095:
	call 064c8h		;4095
	xor a			;4098
	ld (0e005h),a		;4099
L_409C:
	call 0013eh		;409c   ; BIOS RDVDP - Reads VDP status register
	ret			;409f
L_40A0:
	add a,a			;40a0
L_40A1:
	add a,l			;40a1
	ld l,a			;40a2
	ret nc			;40a3
	inc h			;40a4
	ret			;40a5
L_40A6:
	add a,e			;40a6
	ld e,a			;40a7
	ret nc			;40a8
	inc d			;40a9
	ret			;40aa
L_40AB:
	pop hl			;40ab
	add a,a			;40ac
	call L_40A1		;40ad
	ld e,(hl)			;40b0
	inc hl			;40b1
	ld d,(hl)			;40b2
	ex de,hl			;40b3
	jp (hl)			;40b4
L_40B5:
	pop de			;40b5
	add hl,hl			;40b6
	add hl,de			;40b7
	ld e,(hl)			;40b8
	inc hl			;40b9
	ld d,(hl)			;40ba
	ex de,hl			;40bb
	jp (hl)			;40bc
L_40BD:
	call 00138h		;40bd   ; BIOS RSLREG - Reads the primary slot register
	rrca			;40c0
	rrca			;40c1
	and 003h		;40c2
	ld c,a			;40c4
	ld b,000h		;40c5
	ld hl,0fcc1h		;40c7
	add hl,bc			;40ca
	ld a,(hl)			;40cb
	and 080h		;40cc
	or c			;40ce
	ld c,a			;40cf
	inc hl			;40d0
	inc hl			;40d1
	inc hl			;40d2
	inc hl			;40d3
	ld a,(hl)			;40d4
	and 00ch		;40d5
	or c			;40d7
	ld h,080h		;40d8
	jp 00024h		;40da   ; BIOS ENASLT - Switches to specified slot and page definitively
L_40DD:
	call 00138h		;40dd   ; BIOS RSLREG - Reads the primary slot register
	rrca			;40e0
	rrca			;40e1
	and 003h		;40e2
	ld c,a			;40e4
	ld b,000h		;40e5
	ld hl,0fcc1h		;40e7
	add hl,bc			;40ea
	or (hl)			;40eb
	ld c,a			;40ec
	inc hl			;40ed
	inc hl			;40ee
	inc hl			;40ef
	inc hl			;40f0
	ld a,(hl)			;40f1
	and 00ch		;40f2
	or c			;40f4
	ld (0f0f8h),a		;40f5
	ret			;40f8
L_40F9:
	di			;40f9
	push af			;40fa
	ld a,001h		;40fb
	jr L_4103		;40fd
L_40FF:
	di			;40ff
	push af			;4100
	ld a,004h		;4101
L_4103:
	push hl			;4103
	ld hl,0f0f1h		;4104
	ld (06000h),a		;4107
	ld (hl),a			;410a
	inc a			;410b
	inc hl			;410c
L_410D:
	ld (08000h),a		;410d
	ld (hl),a			;4110
	inc a			;4111
	inc hl			;4112
	ld (0a000h),a		;4113
	ld (hl),a			;4116
	pop hl			;4117
	pop af			;4118
	ei			;4119
	ret			;411a
L_411B:
	di			;411b
	push af			;411c
	ld a,007h		;411d
	push hl			;411f
	ld hl,0f0f2h		;4120
	jr L_410D		;4123
L_4125:
	di			;4125
	push af			;4126
	ld a,009h		;4127
	jr L_4103		;4129
L_412B:
	di			;412b
	push af			;412c
	ld a,00ch		;412d
	jr L_4103		;412f
L_4131:
	di			;4131
	push af			;4132
	ld a,00fh		;4133
	jr L_4103		;4135
L_4137:
	di			;4137
	push af			;4138
	ld a,012h		;4139
	jr L_4103		;413b
L_413D:
	di			;413d
	push af			;413e
	ld a,015h		;413f
	jr L_4103		;4141
L_4143:
	di			;4143
	push af			;4144
	ld a,018h		;4145
	jr L_4103		;4147
L_4149:
	di			;4149
	push af			;414a
	ld a,01bh		;414b
	push hl			;414d
	ld hl,0f0f2h		;414e
	jr L_410D		;4151
L_4153:
	push hl			;4153
	ld hl,0e002h		;4154
	bit 6,(hl)		;4157
	pop hl			;4159
	ret z			;415a
L_415B:
	di			;415b
	push ix		;415c
	push hl			;415e
	push de			;415f
	push bc			;4160
	push af			;4161
	ld hl,(0f0f1h)		;4162
	ld de,(0f0f3h)		;4165
	push hl			;4169
	push de			;416a
	push af			;416b
	ld a,01dh		;416c
	ld (06000h),a		;416e
	ld (0f0f1h),a		;4171
	inc a			;4174
	ld (08000h),a		;4175
	ld (0f0f2h),a		;4178
	inc a			;417b
	ld (0f0f3h),a		;417c
	ld (0a000h),a		;417f
	pop af			;4182
	call 06000h		;4183
	pop de			;4186
	pop hl			;4187
	ld (0f0f1h),hl		;4188
	ld (0f0f3h),de		;418b
	ld a,l			;418f
	ld (06000h),a		;4190
	ld a,h			;4193
	ld (08000h),a		;4194
	ld a,e			;4197
	ld (0a000h),a		;4198
	pop af			;419b
	pop bc			;419c
	pop de			;419d
	pop hl			;419e
	pop ix		;419f
	ei			;41a1
	ret			;41a2
L_41A3:
	di			;41a3
	call L_40DD		;41a4
	di			;41a7
	ld h,a			;41a8
	ld l,0f7h		;41a9
	ld (0fedah),hl		;41ab
	ld hl,L_41B5		;41ae
	ld (0fedch),hl		;41b1
	ret			;41b4
L_41B5:
	di			;41b5
	im 1		;41b6
	ld sp,0e210h		;41b8
	ld hl,0bd5eh		;41bb
	ld (0f323h),hl		;41be
	ld hl,0e280h		;41c1
	ld bc,01100h		;41c4
	ld de,0c000h		;41c7
	ldir		;41ca
	ld hl,0fd9fh		;41cc
	ld de,0f0fbh		;41cf
	ld bc,00005h		;41d2
	ldir		;41d5
	ld a,0c9h		;41d7
	ld (0fd9fh),a		;41d9
	call L_40BD		;41dc
	call L_40DD		;41df
	ld a,0c3h		;41e2
	ld (0fd9ah),a		;41e4
	ld hl,L_404C		;41e7
	ld (0fd9bh),hl		;41ea
	xor a			;41ed
	ld (04000h),a		;41ee
	ld (0f0f0h),a		;41f1
	inc a			;41f4
	ld (06000h),a		;41f5
	ld (0f0f1h),a		;41f8
	inc a			;41fb
	ld (08000h),a		;41fc
	ld (0f0f2h),a		;41ff
	inc a			;4202
	ld (0a000h),a		;4203
	ld (0f0f3h),a		;4206
	xor a			;4209
	ld hl,0f0f4h		;420a
	ld (hl),a			;420d
	inc hl			;420e
	ld (hl),a			;420f
	inc hl			;4210
	ld (hl),a			;4211
	di			;4212
	ld hl,0e000h		;4213
	ld de,0e001h		;4216
	ld bc,0010fh		;4219
	ld (hl),000h		;421c
	ldir		;421e
	ld hl,0e210h		;4220
	ld de,0e211h		;4223
	ld bc,00edfh		;4226
	ld (hl),000h		;4229
	ldir		;422b
	ld a,011h		;422d
	ld (0e005h),a		;422f
	call 060cbh		;4232
	call 07083h		;4235
	xor a			;4238
	ld (0e005h),a		;4239
	call 0013eh		;423c   ; BIOS RDVDP - Reads VDP status register
	ei			;423f
L_4240:
	jr L_4240		;4240
L_4242:
	call L_40FF		;4242
	call 06555h		;4245
	jp L_40F9		;4248
L_424B:
	call L_40FF		;424b
	call 0622bh		;424e
	jp L_40F9		;4251
L_4254:
	call L_40FF		;4254
	call 06527h		;4257
	jp L_40F9		;425a
L_425D:
	call L_40FF		;425d
	call 06266h		;4260
	jp L_40F9		;4263
L_4266:
	call L_40FF		;4266
	call 06693h		;4269
	jp L_40F9		;426c
L_426F:
	call L_40FF		;426f
	call 06487h		;4272
	jp L_40F9		;4275
L_4278:
	call L_40FF		;4278
	call 0aefch		;427b
	jp L_40F9		;427e
L_4281:
	call L_4125		;4281
	call 06c23h		;4284
	jp L_40F9		;4287
L_428A:
	call L_411B		;428a
	push ix		;428d
	call 08758h		;428f
	pop ix		;4292
	jp L_40F9		;4294
L_4297:
	call L_411B		;4297
	call 082feh		;429a
	jp L_40F9		;429d
L_42A0:
	call L_561D		;42a0
	jp L_40F9		;42a3
L_42A6:
	call L_5632		;42a6
	jp L_40F9		;42a9
L_42AC:
	call L_40FF		;42ac
	call 0648ch		;42af
	jp L_40F9		;42b2
L_42B5:
	call L_40FF		;42b5
	call 0631fh		;42b8
	jp L_40F9		;42bb
L_42BE:
	call L_4125		;42be
	call 0622bh		;42c1
	jp L_40F9		;42c4
L_42C7:
	call L_4125		;42c7
	call 060cch		;42ca
	jp L_40F9		;42cd
L_42D0:
	call L_411B		;42d0
	call 0827ah		;42d3
	jp L_40F9		;42d6
L_42D9:
	call L_411B		;42d9
	call 0865ch		;42dc
	jp L_40F9		;42df
L_42E2:
	call L_412B		;42e2
	push ix		;42e5
	call L_4C04		;42e7
	pop ix		;42ea
	jp L_4125		;42ec
L_42EF:
	call L_4125		;42ef
	call 0bc5ch		;42f2
	jp L_40F9		;42f5
L_42F8:
	call L_4125		;42f8
	call 0bd11h		;42fb
	jp L_40F9		;42fe
L_4301:
	call L_4125		;4301
	call 0bc86h		;4304
	jp L_40F9		;4307
L_430A:
	call L_40F9		;430a
	call 070beh		;430d
	jp L_4125		;4310
L_4313:
	push ix		;4313
	call L_4DFD		;4315
	pop ix		;4318
	jp L_4125		;431a
L_431D:
	call L_40FF		;431d
	call L_4B1A		;4320
	jp L_4125		;4323
L_4326:
	call L_40FF		;4326
	call 0ae8fh		;4329
	jp L_4125		;432c
L_432F:
	call L_42B5		;432f
	jp L_4125		;4332
L_4335:
	call L_42AC		;4335
	jp L_4125		;4338
L_433B:
	call L_40FF		;433b
	call 06792h		;433e
	jp L_4125		;4341
L_4344:
	call L_40FF		;4344
	call 0693bh		;4347
	jp L_4125		;434a
L_434D:
	call L_40F9		;434d
	call 06312h		;4350
	jp L_40FF		;4353
L_4356:
	call L_40F9		;4356
	call 06320h		;4359
	jp L_4125		;435c
L_435F:
	call L_434D		;435f
	jp L_4125		;4362
L_4365:
	call L_40F9		;4365
	call 06702h		;4368
	jp L_4125		;436b
L_436E:
	call L_40F9		;436e
	call L_5A6E		;4371
	jp L_4125		;4374
L_4377:
	call L_40FF		;4377
	call 06e03h		;437a
	jp L_40F9		;437d
L_4380:
	call L_40F9		;4380
	call 06677h		;4383
	jp L_40FF		;4386
L_4389:
	call L_412B		;4389
	call 0bbf0h		;438c
	jp L_40F9		;438f
L_4392:
	call L_412B		;4392
	call 0ba95h		;4395
	jp L_40F9		;4398
L_439B:
	call L_40FF		;439b
	call 06b2dh		;439e
	jp L_4125		;43a1
L_43A4:
	ld l,a			;43a4
	ld h,000h		;43a5
	add hl,hl			;43a7
	add hl,de			;43a8
	ld e,(hl)			;43a9
	inc hl			;43aa
	ld d,(hl)			;43ab
	ret			;43ac
L_43AD:
	ex de,hl			;43ad
	call L_43B3		;43ae
	ex de,hl			;43b1
	ret			;43b2
L_43B3:
	xor a			;43b3
	sub l			;43b4
	ld l,a			;43b5
	ld a,000h		;43b6
	sbc a,h			;43b8
	ld h,a			;43b9
	ret			;43ba
L_43BB:
	ld hl,(0eb40h)		;43bb
	ld c,l			;43be
	srl h		;43bf
	rr l		;43c1
	add hl,de			;43c3
	bit 0,c		;43c4
	ld a,(hl)			;43c6
	jr nz,L_43CD		;43c7
	rra			;43c9
	rra			;43ca
	rra			;43cb
	rra			;43cc
L_43CD:
	and 00fh		;43cd
	ret			;43cf
L_43D0:
	ld a,r		;43d0
	rrca			;43d2
	rrca			;43d3
	rrca			;43d4
	rrca			;43d5
	ld hl,0e003h		;43d6
	xor (hl)			;43d9
	ret			;43da
L_43DB:
	call L_4137		;43db
	ld a,(0e3a1h)		;43de
	ld de,0627ch		;43e1
	call L_43A4		;43e4
	jr L_43F5		;43e7
L_43E9:
	call L_4137		;43e9
	ld de,06000h		;43ec
	ld a,(0e3c3h)		;43ef
	call L_43A4		;43f2
L_43F5:
	ld hl,01800h		;43f5
	call L_5A2A		;43f8
	call L_4E28		;43fb
	ld a,(0e3c9h)		;43fe
	or a			;4401
	ret z			;4402
	ld hl,01830h		;4403
	call L_442C		;4406
	ld hl,01840h		;4409
	call L_442C		;440c
	sub 008h		;440f
	ld hl,01810h		;4411
	call L_442C		;4414
	sub 008h		;4417
	ld hl,01820h		;4419
	call L_442C		;441c
	add a,008h		;441f
	ld hl,01850h		;4421
	call L_442C		;4424
	add a,008h		;4427
	ld hl,01860h		;4429
L_442C:
	jr z,L_4438		;442c
	jr c,L_4438		;442e
	ld c,a			;4430
	xor a			;4431
	ld b,a			;4432
	sbc hl,bc		;4433
	call 00056h		;4435   ; BIOS FILVRM - Fills VRAM with value
L_4438:
	ld a,(0e3c9h)		;4438
	or a			;443b
	ret			;443c
L_443D:
	ld a,(0e368h)		;443d
	inc a			;4440
	ret z			;4441
	call L_4125		;4442
	ld a,(0e368h)		;4445
	and a			;4448
	jr z,L_446E		;4449
	dec a			;444b
	ld de,06713h		;444c
	call L_43A4		;444f
	ex de,hl			;4452
	ld de,0c848h		;4453
	call L_44B8		;4456
	call L_40F9		;4459
	call L_448A		;445c
	jp L_5E8A		;445f
L_4462:
	call L_443D		;4462
	jp L_40FF		;4465
L_4468:
	call L_443D		;4468
	jp L_4125		;446b
L_446E:
	call L_40F9		;446e
	ld hl,0ee18h		;4471
	ld a,007h		;4474
L_4476:
	ld e,l			;4476
	ld d,h			;4477
	inc de			;4478
	ld (hl),000h		;4479
	ld bc,00007h		;447b
	ldir		;447e
	ld de,00019h		;4480
	add hl,de			;4483
	dec a			;4484
	jr nz,L_4476		;4485
	jp L_5E8A		;4487
L_448A:
	ld hl,0ee18h		;448a
	ld (hl),005h		;448d
	inc hl			;448f
	ld de,0ee1ah		;4490
	ld bc,00005h		;4493
	ld (hl),001h		;4496
	ldir		;4498
	inc hl			;449a
	ld (hl),006h		;449b
	ld hl,0ee38h		;449d
	ld a,002h		;44a0
	call L_44AA		;44a2
	ld hl,0ee3fh		;44a5
	ld a,00bh		;44a8
L_44AA:
	ld b,006h		;44aa
	ld de,00020h		;44ac
L_44AF:
	ld (hl),a			;44af
	add hl,de			;44b0
	djnz L_44AF		;44b1
	ret			;44b3
L_44B4:
	ld e,(hl)			;44b4
	inc hl			;44b5
	ld d,(hl)			;44b6
	inc hl			;44b7
L_44B8:
	ld c,(hl)			;44b8
	inc hl			;44b9
	ld b,(hl)			;44ba
	inc hl			;44bb
	ex de,hl			;44bc
	push hl			;44bd
	call L_4509		;44be
	exx			;44c1
	pop hl			;44c2
	call L_451D		;44c3
	exx			;44c6
L_44C7:
	push bc			;44c7
	exx			;44c8
	push hl			;44c9
	exx			;44ca
	push hl			;44cb
L_44CC:
	ld a,(de)			;44cc
	ld (hl),a			;44cd
	inc de			;44ce
	inc hl			;44cf
	ld a,(de)			;44d0
	ld (hl),a			;44d1
	inc de			;44d2
	inc hl			;44d3
	push hl			;44d4
	ld a,01eh		;44d5
	call L_40A1		;44d7
	ld a,(de)			;44da
	ld (hl),a			;44db
	inc de			;44dc
	inc hl			;44dd
	ld a,(de)			;44de
	ld (hl),a			;44df
	inc de			;44e0
	exx			;44e1
	ld a,(0e36dh)		;44e2
	ld (hl),a			;44e5
	inc hl			;44e6
	exx			;44e7
	pop hl			;44e8
	djnz L_44CC		;44e9
	pop hl			;44eb
	ld a,040h		;44ec
	call L_40A1		;44ee
	exx			;44f1
	pop hl			;44f2
	ld a,010h		;44f3
	call L_40A1		;44f5
	exx			;44f8
	pop bc			;44f9
	dec c			;44fa
	jr nz,L_44C7		;44fb
	ld a,001h		;44fd
	ld (0e36dh),a		;44ff
	ret			;4502
L_4503:
	call 0b3b6h		;4503
	jp L_42D9		;4506
L_4509:
	ld a,l			;4509
	rra			;450a
	rra			;450b
	rra			;450c
	rra			;450d
	rr h		;450e
	rra			;4510
	rr h		;4511
	rra			;4513
	rr h		;4514
	ld l,h			;4516
	and 003h		;4517
	add a,0edh		;4519
	ld h,a			;451b
	ret			;451c
L_451D:
	ld a,l			;451d
	and 0f0h		;451e
	ld l,a			;4520
	ld a,h			;4521
	rra			;4522
	rra			;4523
	rra			;4524
	rra			;4525
	and 00fh		;4526
	add a,l			;4528
	ld l,a			;4529
	ld h,0e8h		;452a
	ret			;452c
L_452D:
	ld de,0454ah		;452d
	call L_59C2		;4530
	ld hl,03a1fh		;4533
	call L_453C		;4536
	ld hl,03a18h		;4539
L_453C:
	ld b,007h		;453c
L_453E:
	ld a,01bh		;453e
	call 0004dh		;4540   ; BIOS WRTVRM - Writes data in VRAM
	ld de,00020h		;4543
	add hl,de			;4546
	djnz L_453E		;4547
	ret			;4549

; ----------------------------------------------------------------------
; DATOS vram_454A: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p00:588F (22 bytes)
;   0x454a..0x4560  (22 bytes)
DATA_vram_454A:
	defb 0f8h,039h,00dh,00fh,00fh,00fh,00fh,00fh,00fh,00eh,0feh,0f8h,03ah,00bh,00fh,00fh	; 454a  .9..........:...
	defb 00fh,00fh,00fh,00fh,00ch,0ffh	; 455a

; ======================================================================
; CODIGO 0x4560..0x4696  (310 bytes)
; ======================================================================


L_4560:
	ld a,053h		;4560
	jp L_415B		;4562
L_4565:
	ld a,014h		;4565
	jp L_415B		;4567
L_456A:
	ld a,026h		;456a
	jp L_415B		;456c
L_456F:
	ld a,047h		;456f
	jp L_415B		;4571
L_4574:
	ld a,013h		;4574
	jp L_415B		;4576
L_4579:
	ld a,028h		;4579
	jp L_415B		;457b
L_457E:
	ld a,001h		;457e
	jp L_415B		;4580
L_4583:
	ld a,001h		;4583
	jp L_415B		;4585
L_4588:
	ld a,005h		;4588
	jp L_415B		;458a
L_458D:
	ld a,01eh		;458d
	jp L_415B		;458f
L_4592:
	ld a,006h		;4592
	jp L_415B		;4594
L_4597:
	ld a,007h		;4597
	jp L_415B		;4599
L_459C:
	ld a,023h		;459c
	jp L_415B		;459e
L_45A1:
	ld a,029h		;45a1
	jp L_415B		;45a3
L_45A6:
	ld a,081h		;45a6
	jp L_415B		;45a8
L_45AB:
	ld a,085h		;45ab
	jp L_415B		;45ad
L_45B0:
	ld a,086h		;45b0
	jp L_415B		;45b2
L_45B5:
	ld a,080h		;45b5
	jp L_415B		;45b7
L_45BA:
	ld a,024h		;45ba
	jp L_415B		;45bc
L_45BF:
	ld a,048h		;45bf
	jp L_415B		;45c1
L_45C4:
	ld a,02fh		;45c4
	jp L_415B		;45c6
L_45C9:
	ld a,02bh		;45c9
	jp L_415B		;45cb
L_45CE:
	ld hl,0e33bh		;45ce
	ld a,(hl)			;45d1
	and a			;45d2
	ret z			;45d3
	dec (hl)			;45d4
	ret nz			;45d5
	ld a,080h		;45d6
	call L_415B		;45d8
	ld a,(0e33ah)		;45db
	jp L_415B		;45de
L_45E1:
	ld a,(0e3d9h)		;45e1
	and a			;45e4
	ld a,003h		;45e5
	jp nz,L_4662		;45e7
	ld de,04696h		;45ea
	call L_43BB		;45ed
	cp 001h		;45f0
	jr nz,L_45FD		;45f2
	ld hl,0eb60h		;45f4
	bit 0,(hl)		;45f7
	jr z,L_4626		;45f9
	jr L_4632		;45fb
L_45FD:
	ld hl,(0eb40h)		;45fd
	ld de,00231h		;4600
	and a			;4603
	sbc hl,de		;4604
	jr nz,L_4613		;4606
	ld a,(0eb5dh)		;4608
	bit 1,a		;460b
	jr nz,L_466F		;460d
	ld a,008h		;460f
	jr L_4662		;4611
L_4613:
	ld hl,(0eb40h)		;4613
	ld de,00118h		;4616
	and a			;4619
	sbc hl,de		;461a
	jr nz,L_4626		;461c
	ld hl,0eb64h		;461e
	bit 7,(hl)		;4621
	jr z,L_4626		;4623
	xor a			;4625
L_4626:
	ld c,a			;4626
	ld a,(0eb60h)		;4627
	bit 0,a		;462a
	jr z,L_4661		;462c
	ld a,c			;462e
	and a			;462f
	jr nz,L_4661		;4630
L_4632:
	ld a,(0e210h)		;4632
	cp 02bh		;4635
	jr nz,L_463D		;4637
	ld a,009h		;4639
	jr L_4662		;463b
L_463D:
	cp 034h		;463d
	jr z,L_466F		;463f
	cp 042h		;4641
	jr z,L_466F		;4643
	ld hl,(0eb40h)		;4645
	ld de,0012dh		;4648
	and a			;464b
	sbc hl,de		;464c
	jr nz,L_465F		;464e
	ld hl,(0e376h)		;4650
	ld de,0012ch		;4653
	and a			;4656
	sbc hl,de		;4657
	jr nz,L_465F		;4659
	ld c,009h		;465b
	jr L_4661		;465d
L_465F:
	ld c,00ah		;465f
L_4661:
	ld a,c			;4661
L_4662:
	ld hl,047b6h		;4662
	call L_40A1		;4665
	ld a,(hl)			;4668
	ld hl,0e210h		;4669
	cp (hl)			;466c
	jr nz,L_4689		;466d
L_466F:
	ld a,(0e33bh)		;466f
	and a			;4672
	jr nz,L_467A		;4673
	xor a			;4675
	ld (0e33ah),a		;4676
	ret			;4679
L_467A:
	xor a			;467a
	ld (0e33bh),a		;467b
	ld a,080h		;467e
	call L_415B		;4680
	ld a,(0e210h)		;4683
	jp L_415B		;4686
L_4689:
	ld (0e33ah),a		;4689
	ld a,010h		;468c
	ld (0e33bh),a		;468e
	ld a,081h		;4691
	jp L_415B		;4693

; ----------------------------------------------------------------------
; DATOS resto_4696: lo apuntan con el banco puesto p00:45EA (0x4696), p00:4662
;   (0x47B6); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p00:45EA, p00:4662 (304 bytes)
;   0x4696..0x47c6  (304 bytes)
DATA_resto_4696:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0bbh,0bbh,000h,000h,000h	; 4696  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0bbh,0bbh,005h,000h,070h	; 46a6  ...............p
	defb 000h,000h,000h,000h,000h,005h,000h,000h,000h,000h,000h,0bbh,0bbh,000h,000h,000h	; 46b6  ................
	defb 000h,011h,000h,000h,000h,000h,000h,000h,000h,000h,005h,0bbh,0b0h,000h,000h,000h	; 46c6  ................
	defb 000h,011h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 46d6  ................
	defb 000h,000h,000h,000h,000h,000h,000h,001h,010h,000h,000h,000h,000h,000h,000h,000h	; 46e6  ................
	defb 000h,000h,000h,000h,000h,000h,000h,001h,010h,000h,000h,000h,000h,000h,00bh,0b0h	; 46f6  ................
	defb 000h,000h,050h,000h,0bbh,0b0h,000h,000h,000h,000h,000h,000h,005h,000h,00bh,0b0h	; 4706  ..P.............
	defb 000h,000h,000h,000h,0bbh,0b0h,000h,005h,000h,000h,000h,000h,060h,000h,000h,000h	; 4716  ............`...
	defb 000h,000h,000h,000h,0bbh,0b0h,000h,000h,000h,000h,000h,000h,0ddh,000h,000h,000h	; 4726  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,050h,0ddh,000h,000h,000h	; 4736  ...........P....
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0ddh,000h,000h,000h	; 4746  ................
	defb 000h,005h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 4756  ................
	defb 00dh,000h,000h,000h,000h,000h,050h,000h,000h,000h,000h,000h,000h,000h,050h,000h	; 4766  ......P.......P.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 4776  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 4786  ................
	defb 000h,044h,044h,044h,0c4h,044h,033h,000h,020h,004h,044h,044h,044h,044h,044h,044h	; 4796  .DDD.D3. .DDDDDD
	defb 000h,000h,000h,0ddh,088h,0bbh,0eeh,044h,044h,077h,070h,000h,000h,000h,000h,000h	; 47a6  .......DDwp.....
	defb 036h,02dh,035h,033h,031h,03bh,02eh,04bh,03fh,042h,034h,059h,030h,05fh,060h,02bh	; 47b6  6-531..K?B4Y0_`+

; ======================================================================
; CODIGO 0x47c6..0x48be  (248 bytes)
; ======================================================================


L_47C6:
	call L_412B		;47c6
	ld de,06000h		;47c9
	call L_43BB		;47cc
	ld de,06120h		;47cf
	call L_43A4		;47d2
	ld a,(de)			;47d5
	ld (0e361h),a		;47d6
	inc de			;47d9
	ld hl,02080h		;47da
	ld (0e8e0h),hl		;47dd
	ld hl,00080h		;47e0
	ld (0e8e2h),hl		;47e3
	ld b,040h		;47e6
L_47E8:
	push bc			;47e8
	ld a,(de)			;47e9
	inc de			;47ea
	push de			;47eb
	ld l,a			;47ec
	ld h,000h		;47ed
	add hl,hl			;47ef
	add hl,hl			;47f0
	add hl,hl			;47f1
	ld (0e8e4h),hl		;47f2
	ld de,064ceh		;47f5
	add hl,de			;47f8
	ex de,hl			;47f9
	ld hl,(0e8e0h)		;47fa
	ld bc,00008h		;47fd
	call L_5945		;4800
	ld hl,(0e8e0h)		;4803
	ld de,00008h		;4806
	add hl,de			;4809
	ld (0e8e0h),hl		;480a
	ld de,06c06h		;480d
	ld hl,(0e8e4h)		;4810
	add hl,de			;4813
	ex de,hl			;4814
	ld hl,(0e8e2h)		;4815
	ld bc,00008h		;4818
	call L_5945		;481b
	ld hl,(0e8e2h)		;481e
	ld de,00008h		;4821
	add hl,de			;4824
	ld (0e8e2h),hl		;4825
	pop de			;4828
	pop bc			;4829
	djnz L_47E8		;482a
	jp L_40F9		;482c
L_482F:
	call L_412B		;482f
	ld hl,(0eb40h)		;4832
	ld de,07750h		;4835
	add hl,de			;4838
	ld a,(hl)			;4839
	ld de,07990h		;483a
	add a,a			;483d
	call L_43A4		;483e
	push hl			;4841
	ld hl,02280h		;4842
	call L_5972		;4845
	pop hl			;4848
	inc hl			;4849
	ld e,(hl)			;484a
	inc hl			;484b
	ld d,(hl)			;484c
	ld hl,00280h		;484d
	call L_5972		;4850
	jp L_40F9		;4853
L_4856:
	call L_412B		;4856
	dec a			;4859
	ld de,0733eh		;485a
	call L_43A4		;485d
	ld hl,02d80h		;4860
	call L_5A2A		;4863
	jp L_40F9		;4866
L_4869:
	call L_4856		;4869
	jp L_40FF		;486c
L_486F:
	call L_4856		;486f
	jp L_4125		;4872
L_4875:
	call L_412B		;4875
	ld de,07360h		;4878
	ld hl,02080h		;487b
	call L_5972		;487e
	ld de,073d0h		;4881
	ld hl,00080h		;4884
	call L_5972		;4887
	ld de,073fdh		;488a
	call L_59FB		;488d
	jp L_40F9		;4890
L_4893:
	call L_4149		;4893
	ld de,09b8bh		;4896
	call L_59FB		;4899
	call L_48A2		;489c
	jp L_4125		;489f
L_48A2:
	ld de,09ecbh		;48a2
	ld hl,02048h		;48a5
	call L_5972		;48a8
	ld de,09ed4h		;48ab
	ld hl,00048h		;48ae
	call L_5972		;48b1
	call L_40F9		;48b4
	ld a,(0e3a1h)		;48b7
	dec a			;48ba
	call L_40AB		;48bb

; ----------------------------------------------------------------------
; DATOS saltos_48BE: tabla de 9 palabras del despachador (call 0x408D en
;   0x48BB); lo leen L_40AB (18 bytes)
;   0x48be..0x48d0  (18 bytes)
DATA_saltos_48BE:
	defb 0d0h,048h	; 48be
	defb 0d6h,048h	; 48c0
	defb 0dch,048h	; 48c2
	defb 0e2h,048h	; 48c4
	defb 0e8h,048h	; 48c6
	defb 03fh,049h	; 48c8
	defb 054h,049h	; 48ca
	defb 072h,049h	; 48cc
	defb 099h,049h	; 48ce

; ======================================================================
; CODIGO 0x48d0..0x4e08  (1336 bytes)
; ======================================================================


L_48D0:
	call L_4149		;48d0
	jp 0623dh		;48d3
L_48D6:
	call L_4149		;48d6
	jp 06261h		;48d9
L_48DC:
	call L_4149		;48dc
	jp 06279h		;48df
L_48E2:
	call L_4149		;48e2
	jp 062c1h		;48e5
L_48E8:
	call L_4137		;48e8
	ld de,091d1h		;48eb
	ld hl,02080h		;48ee
	call L_5A2A		;48f1
	ld de,091d1h		;48f4
	ld hl,02238h		;48f7
	call L_5A32		;48fa
	ld de,0938ah		;48fd
	ld hl,00080h		;4900
	call L_5A2A		;4903
	ld de,0938ah		;4906
	ld hl,00238h		;4909
	call L_5A2A		;490c
	ld de,094a7h		;490f
	ld hl,02880h		;4912
	call L_5A2A		;4915
	ld de,094a7h		;4918
	ld hl,02b28h		;491b
	call L_5A32		;491e
	ld de,0973dh		;4921
	ld hl,00880h		;4924
	call L_5A2A		;4927
	ld de,0973dh		;492a
	ld hl,00b28h		;492d
	call L_5A2A		;4930
	ld de,09910h		;4933
	call L_59FB		;4936
	ld de,09928h		;4939
	jp L_59FB		;493c
L_493F:
	call L_4137		;493f
	ld de,09935h		;4942
	ld hl,02080h		;4945
	call L_5976		;4948
	ld de,09e89h		;494b
	ld hl,00080h		;494e
	jp L_5976		;4951
L_4954:
	call L_4137		;4954
	ld de,09935h		;4957
	ld hl,02080h		;495a
	call L_5986		;495d
	ld de,0a14ch		;4960
	ld hl,00130h		;4963
	call L_5972		;4966
	ld de,0a158h		;4969
	ld hl,00260h		;496c
	jp L_5972		;496f
L_4972:
	call L_4137		;4972
	ld de,0a2f9h		;4975
	ld hl,02080h		;4978
	call L_5972		;497b
	ld de,0a2f9h		;497e
	ld hl,023c0h		;4981
	call L_5986		;4984
	ld de,0a627h		;4987
	ld hl,00080h		;498a
	call L_5972		;498d
	ld de,0a627h		;4990
	ld hl,003c0h		;4993
	jp L_5972		;4996
L_4999:
	call L_4137		;4999
	ld de,0ab2eh		;499c
	ld hl,02080h		;499f
	call L_5A2A		;49a2
	ld de,0ab2eh		;49a5
	ld hl,02440h		;49a8
	call L_5A32		;49ab
	ld de,0aeceh		;49ae
	ld hl,00080h		;49b1
	call L_5A2A		;49b4
	ld de,0aeceh		;49b7
	ld hl,00440h		;49ba
	call L_5A2A		;49bd
	ld de,0b0f2h		;49c0
	ld hl,02880h		;49c3
	call L_5A2A		;49c6
	ld de,0b0f2h		;49c9
	ld hl,02c00h		;49cc
	call L_5A32		;49cf
	ld de,0b40ch		;49d2
	ld hl,00880h		;49d5
	call L_5A2A		;49d8
	ld de,0b40ch		;49db
	ld hl,00c00h		;49de
	call L_5A2A		;49e1
	call L_4149		;49e4
	ld de,0b987h		;49e7
	call L_59FB		;49ea
	jp L_4125		;49ed
L_49F0:
	call L_412B		;49f0
	ld de,0a7efh		;49f3
	ld hl,02080h		;49f6
	call L_5A2A		;49f9
	ld de,0aeffh		;49fc
	ld hl,02880h		;49ff
	call L_5A2A		;4a02
	ld de,0ad5eh		;4a05
	ld hl,00080h		;4a08
	call L_5A2A		;4a0b
	ld de,0b37bh		;4a0e
	ld hl,00880h		;4a11
	call L_5A2A		;4a14
	call L_4137		;4a17
	ld hl,0a84eh		;4a1a
	ld de,03800h		;4a1d
	ld bc,001e0h		;4a20
	call 0005ch		;4a23   ; BIOS LDIRVM - Block transfers to VRAM from memory
	jp L_4125		;4a26
L_4A29:
	call L_412B		;4a29
	ld de,0b636h		;4a2c
	ld hl,02080h		;4a2f
	call L_5A2A		;4a32
	ld de,0b636h		;4a35
	ld hl,02280h		;4a38
	call L_5A32		;4a3b
	ld de,0b7afh		;4a3e
	ld hl,02500h		;4a41
	call L_5A2A		;4a44
	ld de,0b880h		;4a47
	ld hl,00080h		;4a4a
	call L_5A2A		;4a4d
	ld de,0b880h		;4a50
	ld hl,00280h		;4a53
	call L_5A2A		;4a56
	ld de,0b924h		;4a59
	ld hl,00500h		;4a5c
	call L_5A2A		;4a5f
	call L_4137		;4a62
	ld hl,0aa2eh		;4a65
	ld de,03800h		;4a68
	ld bc,00100h		;4a6b
	call 0005ch		;4a6e   ; BIOS LDIRVM - Block transfers to VRAM from memory
	jp L_4125		;4a71
L_4A74:
	call L_412B		;4a74
	ld de,0b96fh		;4a77
	ld hl,02500h		;4a7a
	call L_5A2A		;4a7d
	ld de,0ba17h		;4a80
	ld hl,00500h		;4a83
	call L_5A2A		;4a86
	jp L_4125		;4a89
L_4A8C:
	ld hl,(0eb40h)		;4a8c
	ld de,0012ch		;4a8f
	and a			;4a92
	sbc hl,de		;4a93
	jr nz,L_4AA0		;4a95
	call L_4149		;4a97
	ld de,0bbc4h		;4a9a
	call L_59FB		;4a9d
L_4AA0:
	call L_4137		;4aa0
	ld de,067f1h		;4aa3
	ld hl,(0eb40h)		;4aa6
	add hl,de			;4aa9
	ld a,(hl)			;4aaa
	ld de,06a28h		;4aab
	call L_43A4		;4aae
L_4AB1:
	ld a,(de)			;4ab1
	inc a			;4ab2
	jp z,L_40F9		;4ab3
	dec a			;4ab6
	push de			;4ab7
	call L_4AC2		;4ab8
	pop de			;4abb
	inc de			;4abc
	inc de			;4abd
	inc de			;4abe
	inc de			;4abf
	jr L_4AB1		;4ac0
L_4AC2:
	ld a,(de)			;4ac2
	ld b,a			;4ac3
	and 001h		;4ac4
	jr nz,L_4AD7		;4ac6
	push bc			;4ac8
	call L_4AEC		;4ac9
	inc de			;4acc
	ld a,(de)			;4acd
	ld c,a			;4ace
	inc de			;4acf
	ld a,(de)			;4ad0
	ld d,a			;4ad1
	ld e,c			;4ad2
	pop bc			;4ad3
	jp L_5A2A		;4ad4
L_4AD7:
	push bc			;4ad7
	call L_4AEC		;4ad8
	push hl			;4adb
	call L_4AEC		;4adc
	ld bc,00010h		;4adf
	add hl,bc			;4ae2
	inc de			;4ae3
	ld a,(de)			;4ae4
	ex de,hl			;4ae5
	pop hl			;4ae6
	pop bc			;4ae7
	ld c,a			;4ae8
	jp L_5A36		;4ae9
L_4AEC:
	inc de			;4aec
	ld a,(de)			;4aed
	ld l,a			;4aee
	ld h,000h		;4aef
	add hl,hl			;4af1
	add hl,hl			;4af2
	add hl,hl			;4af3
	ld bc,01800h		;4af4
	add hl,bc			;4af7
	ret			;4af8
L_4AF9:
	call L_4137		;4af9
	ld a,(0eb74h)		;4afc
	and 007h		;4aff
	add a,a			;4b01
	jr z,L_4B08		;4b02
	sub 002h		;4b04
	jr L_4B0B		;4b06
L_4B08:
	ld a,(0e3c3h)		;4b08
L_4B0B:
	ld de,065dch		;4b0b
	call L_43A4		;4b0e
	ld hl,01860h		;4b11
	call L_5A2A		;4b14
	jp L_40F9		;4b17
L_4B1A:
	ld a,(0e348h)		;4b1a
	dec a			;4b1d
	jr z,L_4B43		;4b1e
	dec a			;4b20
	jr z,L_4B5D		;4b21
	xor a			;4b23
	ld (0e349h),a		;4b24
	ld c,000h		;4b27
	call L_4B72		;4b29
	ld a,001h		;4b2c
	ld (0e349h),a		;4b2e
	ld c,0f0h		;4b31
	call L_4B72		;4b33
	ld a,001h		;4b36
	ld (0e34ah),a		;4b38
	ld (0e34bh),a		;4b3b
L_4B3E:
	ld hl,0e348h		;4b3e
	inc (hl)			;4b41
	ret			;4b42
L_4B43:
	xor a			;4b43
	ld (0e349h),a		;4b44
	ld a,(0e34ah)		;4b47
	ld c,a			;4b4a
	call L_4B72		;4b4b
	ld hl,0e34ah		;4b4e
	ld a,(hl)			;4b51
	cp 0ffh		;4b52
	jr z,L_4B3E		;4b54
	rlca			;4b56
	rlca			;4b57
	rlca			;4b58
	or 001h		;4b59
	ld (hl),a			;4b5b
	ret			;4b5c
L_4B5D:
	ld a,001h		;4b5d
	ld (0e349h),a		;4b5f
	ld c,0ffh		;4b62
	call L_4B72		;4b64
	xor a			;4b67
	ld (0e34bh),a		;4b68
	ld (0e34ah),a		;4b6b
	ld (0e348h),a		;4b6e
	ret			;4b71
L_4B72:
	ld ix,(0e34ch)		;4b72
L_4B76:
	ld a,(ix+000h)		;4b76
	and a			;4b79
	ret z			;4b7a
	rra			;4b7b
	ld de,01000h		;4b7c
	call c,L_4B9D		;4b7f
	bit 1,(ix+000h)		;4b82
	ld de,00800h		;4b86
	call nz,L_4B9D		;4b89
	bit 2,(ix+000h)		;4b8c
	ld de,00000h		;4b90
	call nz,L_4B9D		;4b93
	ld de,00006h		;4b96
	add ix,de		;4b99
	jr L_4B76		;4b9b
L_4B9D:
	ld l,(ix+003h)		;4b9d
	ld h,000h		;4ba0
	add hl,hl			;4ba2
	add hl,hl			;4ba3
	add hl,hl			;4ba4
	add hl,de			;4ba5
	ld a,(0e349h)		;4ba6
	dec a			;4ba9
	jr z,L_4BB9		;4baa
	ld de,02000h		;4bac
	add hl,de			;4baf
	ld e,(ix+001h)		;4bb0
	ld d,(ix+002h)		;4bb3
	jp L_4BC6		;4bb6
L_4BB9:
	ld de,00000h		;4bb9
	add hl,de			;4bbc
	ld e,(ix+004h)		;4bbd
	ld d,(ix+005h)		;4bc0
	jp L_4BC6		;4bc3
L_4BC6:
	call L_592B		;4bc6
L_4BC9:
	ld a,(de)			;4bc9
	and a			;4bca
	ret z			;4bcb
	inc de			;4bcc
	ld b,a			;4bcd
	and 07fh		;4bce
	cp b			;4bd0
	jr z,L_4BEB		;4bd1
	ld b,a			;4bd3
L_4BD4:
	ld a,(de)			;4bd4
	and c			;4bd5
	inc de			;4bd6
	exx			;4bd7
	out (c),a		;4bd8
	exx			;4bda
	ld a,(0e349h)		;4bdb
	and a			;4bde
	jr nz,L_4BE7		;4bdf
	rrc c		;4be1
	rrc c		;4be3
	rrc c		;4be5
L_4BE7:
	djnz L_4BD4		;4be7
	jr L_4BC9		;4be9
L_4BEB:
	ld a,(de)			;4beb
	inc de			;4bec
L_4BED:
	push af			;4bed
	and c			;4bee
	exx			;4bef
	out (c),a		;4bf0
	exx			;4bf2
	ld a,(0e349h)		;4bf3
	and a			;4bf6
	jr nz,L_4BFF		;4bf7
	rrc c		;4bf9
	rrc c		;4bfb
	rrc c		;4bfd
L_4BFF:
	pop af			;4bff
	djnz L_4BED		;4c00
	jr L_4BC9		;4c02
L_4C04:
	ld a,(0e348h)		;4c04
	dec a			;4c07
	jr z,L_4C2F		;4c08
	dec a			;4c0a
	jr z,L_4C48		;4c0b
	xor a			;4c0d
	ld (0e349h),a		;4c0e
	ld c,0ffh		;4c11
	call L_4C5D		;4c13
	ld a,001h		;4c16
	ld (0e349h),a		;4c18
	ld c,0f0h		;4c1b
	call L_4C5D		;4c1d
	ld a,0ffh		;4c20
	ld (0e34ah),a		;4c22
	ld a,001h		;4c25
	ld (0e34bh),a		;4c27
L_4C2A:
	ld hl,0e348h		;4c2a
	inc (hl)			;4c2d
	ret			;4c2e
L_4C2F:
	xor a			;4c2f
	ld (0e349h),a		;4c30
	ld a,(0e34ah)		;4c33
	ld c,a			;4c36
	call L_4C5D		;4c37
	ld hl,0e34ah		;4c3a
	ld a,(hl)			;4c3d
	and a			;4c3e
	jr z,L_4C2A		;4c3f
	rlca			;4c41
	rlca			;4c42
	rlca			;4c43
	res 0,a		;4c44
	ld (hl),a			;4c46
	ret			;4c47
L_4C48:
	ld a,001h		;4c48
	ld (0e349h),a		;4c4a
	ld c,000h		;4c4d
	call L_4C5D		;4c4f
	xor a			;4c52
	ld (0e34bh),a		;4c53
	ld (0e34ah),a		;4c56
	ld (0e348h),a		;4c59
	ret			;4c5c
L_4C5D:
	ld ix,(0e34ch)		;4c5d
L_4C61:
	ld a,(ix+000h)		;4c61
	and a			;4c64
	ret z			;4c65
	rra			;4c66
	ld de,01000h		;4c67
	call c,L_4C88		;4c6a
	bit 1,(ix+000h)		;4c6d
	ld de,00800h		;4c71
	call nz,L_4C88		;4c74
	bit 2,(ix+000h)		;4c77
	ld de,00000h		;4c7b
	call nz,L_4C88		;4c7e
	ld de,00004h		;4c81
	add ix,de		;4c84
	jr L_4C61		;4c86
L_4C88:
	ld l,(ix+001h)		;4c88
	ld h,000h		;4c8b
	add hl,hl			;4c8d
	add hl,hl			;4c8e
	add hl,hl			;4c8f
	add hl,de			;4c90
	ld a,(0e349h)		;4c91
	dec a			;4c94
	ld de,00000h		;4c95
	jr z,L_4C9D		;4c98
	ld de,02000h		;4c9a
L_4C9D:
	add hl,de			;4c9d
	ld e,(ix+002h)		;4c9e
	ld d,(ix+003h)		;4ca1
L_4CA4:
	push hl			;4ca4
	push hl			;4ca5
	call 0004ah		;4ca6   ; BIOS RDVRM - Reads the content of VRAM
	and c			;4ca9
	pop hl			;4caa
	call 0004dh		;4cab   ; BIOS WRTVRM - Writes data in VRAM
	ld a,(0e349h)		;4cae
	and a			;4cb1
	jr nz,L_4CBA		;4cb2
	rrc c		;4cb4
	rrc c		;4cb6
	rrc c		;4cb8
L_4CBA:
	pop hl			;4cba
	inc hl			;4cbb
	dec de			;4cbc
	ld a,e			;4cbd
	or d			;4cbe
	jr nz,L_4CA4		;4cbf
	ret			;4cc1
L_4CC2:
	ld bc,01008h		;4cc2
L_4CC5:
	ld a,(de)			;4cc5
	call 0004dh		;4cc6   ; BIOS WRTVRM - Writes data in VRAM
	ld a,c			;4cc9
	call L_40A1		;4cca
	ld a,c			;4ccd
	call L_40A6		;4cce
	djnz L_4CC5		;4cd1
	ret			;4cd3
L_4CD4:
	ld ix,(0e34ch)		;4cd4
	ld a,(0e348h)		;4cd8
	dec a			;4cdb
	jr z,L_4CEF		;4cdc
	dec a			;4cde
	jp z,L_4D1A		;4cdf
L_4CE2:
	xor a			;4ce2
	ld (0e349h),a		;4ce3
	inc a			;4ce6
	ld (0e34bh),a		;4ce7
L_4CEA:
	ld hl,0e348h		;4cea
	inc (hl)			;4ced
	ret			;4cee
L_4CEF:
	ld hl,0e349h		;4cef
	ld a,(hl)			;4cf2
	inc (hl)			;4cf3
	cp 040h		;4cf4
	jr z,L_4CEA		;4cf6
	ld e,a			;4cf8
	and 0f8h		;4cf9
	ld l,a			;4cfb
	ld h,000h		;4cfc
	add hl,hl			;4cfe
	add hl,hl			;4cff
	add hl,hl			;4d00
	ld a,e			;4d01
	and 007h		;4d02
	add a,l			;4d04
	ld l,a			;4d05
	push hl			;4d06
	ld e,(ix+000h)		;4d07
	ld d,(ix+001h)		;4d0a
	add hl,de			;4d0d
	ex de,hl			;4d0e
	pop hl			;4d0f
	ld c,(ix+002h)		;4d10
	ld b,(ix+003h)		;4d13
	add hl,bc			;4d16
	jp L_4D22		;4d17
L_4D1A:
	xor a			;4d1a
	ld (0e34bh),a		;4d1b
	ld (0e348h),a		;4d1e
	ret			;4d21
L_4D22:
	ld bc,00808h		;4d22
	jp L_4CC5		;4d25
L_4D28:
	ld ix,(0e34ch)		;4d28
	ld a,(0e348h)		;4d2c
	dec a			;4d2f
	jr z,L_4D38		;4d30
	dec a			;4d32
	jp z,L_4D1A		;4d33
	jr L_4CE2		;4d36
L_4D38:
	ld hl,0e349h		;4d38
	ld a,(hl)			;4d3b
	inc (hl)			;4d3c
	cp 040h		;4d3d
	jr z,L_4CEA		;4d3f
	ld b,a			;4d41
	and 0f8h		;4d42
	ld l,a			;4d44
	ld h,000h		;4d45
	add hl,hl			;4d47
	add hl,hl			;4d48
	ld d,h			;4d49
	ld e,l			;4d4a
	add hl,hl			;4d4b
	add hl,de			;4d4c
	ld a,b			;4d4d
	and 007h		;4d4e
	add a,l			;4d50
	ld l,a			;4d51
	push hl			;4d52
	ld e,(ix+000h)		;4d53
	ld d,(ix+001h)		;4d56
	add hl,de			;4d59
	ex de,hl			;4d5a
	pop hl			;4d5b
	ld c,(ix+002h)		;4d5c
	ld b,(ix+003h)		;4d5f
	add hl,bc			;4d62
	jp L_4D66		;4d63
L_4D66:
	ld bc,00c08h		;4d66
	jp L_4CC5		;4d69
L_4D6C:
	call L_40FF		;4d6c
	ld de,07ffch		;4d6f
	ld hl,02400h		;4d72
	call L_5A2A		;4d75
	ld de,08ea9h		;4d78
	ld hl,00400h		;4d7b
L_4D7E:
	ld bc,00200h		;4d7e
	call L_5941		;4d81
	jp L_4125		;4d84
L_4D87:
	call L_40FF		;4d87
	ld de,07cb8h		;4d8a
	ld hl,02a00h		;4d8d
	call L_5A2A		;4d90
	ld de,08ca9h		;4d93
	ld hl,00c00h		;4d96
	jr L_4D7E		;4d99
L_4D9B:
	call L_40FF		;4d9b
	ld de,0be8ah		;4d9e
	ld hl,01800h		;4da1
	call L_5A2A		;4da4
	jp L_4125		;4da7
L_4DAA:
	call L_40FF		;4daa
	call 068f0h		;4dad
	ld de,0aa5dh		;4db0
	ld hl,02410h		;4db3
	call L_5986		;4db6
	jp L_4125		;4db9
L_4DBC:
	ld de,(0e363h)		;4dbc
	ld hl,00059h		;4dc0
	and a			;4dc3
	sbc hl,de		;4dc4
	jr z,L_4DF0		;4dc6
	ld hl,0005ah		;4dc8
	and a			;4dcb
	sbc hl,de		;4dcc
	jr z,L_4DF0		;4dce
	ld a,(0e8a4h)		;4dd0
	and a			;4dd3
	ld c,000h		;4dd4
	jr z,L_4DDD		;4dd6
	inc c			;4dd8
	dec a			;4dd9
	jr z,L_4DDD		;4dda
	inc c			;4ddc
L_4DDD:
	ld a,004h		;4ddd
	jr L_4DEB		;4ddf
L_4DE1:
	ld a,001h		;4de1
	jr L_4DEB		;4de3
L_4DE5:
	ld a,002h		;4de5
	jr L_4DEB		;4de7
L_4DE9:
	ld a,003h		;4de9
L_4DEB:
	ld (0e889h),a		;4deb
	jr L_4DFD		;4dee
L_4DF0:
	ld a,(0e8a4h)		;4df0
	and a			;4df3
	ld c,004h		;4df4
	jr z,L_4DFD		;4df6
	inc c			;4df8
	dec a			;4df9
	jr z,L_4DFD		;4dfa
	inc c			;4dfc
L_4DFD:
	push bc			;4dfd
	call L_5E69		;4dfe
	pop bc			;4e01
	ld a,(0e885h)		;4e02
	call L_40AB		;4e05

; ----------------------------------------------------------------------
; DATOS saltos_4E08: tabla de 2 palabras del despachador (call 0x408D en
;   0x4E05); lo leen L_40AB (4 bytes)
;   0x4e08..0x4e0c  (4 bytes)
DATA_saltos_4E08:
	defb 00ch,04eh	; 4e08
	defb 04eh,04eh	; 4e0a

; ======================================================================
; CODIGO 0x4e0c..0x4e70  (100 bytes)
; ======================================================================


L_4E0C:
	ld a,002h		;4e0c
	ld (0e886h),a		;4e0e
	call L_413D		;4e11
	call L_4E76		;4e14
	call L_4E28		;4e17
	call L_50EB		;4e1a
	ld hl,(0e344h)		;4e1d
	ld (0e346h),hl		;4e20
	ld hl,0e885h		;4e23
	inc (hl)			;4e26
	ret			;4e27
L_4E28:
	ld a,(0e000h)		;4e28
	cp 002h		;4e2b
	jr nz,L_4E39		;4e2d
	ld a,(0e001h)		;4e2f
	and a			;4e32
	jp z,L_40FF		;4e33
	jp L_40F9		;4e36
L_4E39:
	cp 008h		;4e39
	jp z,L_4125		;4e3b
	cp 004h		;4e3e
	jp nz,L_40F9		;4e40
	ld a,(0e001h)		;4e43
	cp 004h		;4e46
	jp c,L_40FF		;4e48
	jp L_40F9		;4e4b
L_4E4E:
	xor a			;4e4e
	ld (0e88ah),a		;4e4f
	call L_4E6A		;4e52
	call L_4EC0		;4e55
	call L_4E28		;4e58
	ld hl,0e886h		;4e5b
	ld a,(hl)			;4e5e
	dec a			;4e5f
	ret nz			;4e60
	dec (hl)			;4e61
	ld a,(hl)			;4e62
	ld (0e885h),a		;4e63
	ld (0e889h),a		;4e66
	ret			;4e69
L_4E6A:
	ld a,(0e88fh)		;4e6a
	call L_40AB		;4e6d

; ----------------------------------------------------------------------
; DATOS saltos_4E70: tabla de 3 palabras del despachador (call 0x408D en
;   0x4E6D); lo leen L_40AB (6 bytes)
;   0x4e70..0x4e76  (6 bytes)
DATA_saltos_4E70:
	defb 03dh,041h	; 4e70
	defb 043h,041h	; 4e72
	defb 049h,041h	; 4e74

; ======================================================================
; CODIGO 0x4e76..0x5231  (955 bytes)
; ======================================================================


L_4E76:
	xor a			;4e76
	ld (0e88fh),a		;4e77
	ld a,(0e889h)		;4e7a
	ld b,a			;4e7d
	ld a,c			;4e7e
	ld (0e880h),a		;4e7f
	dec b			;4e82
	ld de,06928h		;4e83
	jr z,L_4EB0		;4e86
	dec b			;4e88
	ld de,06dach		;4e89
	jr z,L_4EB0		;4e8c
	dec b			;4e8e
	ld de,07080h		;4e8f
	jr z,L_4EB0		;4e92
	dec b			;4e94
	ld de,06da6h		;4e95
	jr z,L_4EB0		;4e98
	ld b,a			;4e9a
	ld de,0639eh		;4e9b
	call L_43BB		;4e9e
	ld (0e88fh),a		;4ea1
	ld a,b			;4ea4
	ld hl,(0eb40h)		;4ea5
	ld de,064bah		;4ea8
	add hl,hl			;4eab
	add hl,de			;4eac
	ld e,(hl)			;4ead
	inc hl			;4eae
	ld d,(hl)			;4eaf
L_4EB0:
	push de			;4eb0
	call L_4E6A		;4eb1
	pop de			;4eb4
	ld a,(0e880h)		;4eb5
	call L_43A4		;4eb8
	ld (0e882h),de		;4ebb
	ret			;4ebf
L_4EC0:
	ld a,(0e887h)		;4ec0
	rra			;4ec3
	jp c,L_4F5D		;4ec4
	rra			;4ec7
	jp c,L_4F86		;4ec8
	ld a,(0e003h)		;4ecb
	and 001h		;4ece
	ret nz			;4ed0
	ld a,(0e884h)		;4ed1
	and a			;4ed4
	jp nz,L_50B0		;4ed5
L_4ED8:
	ld de,(0e882h)		;4ed8
	ld hl,(0e346h)		;4edc
L_4EDF:
	ld a,(de)			;4edf
	inc a			;4ee0
	jp z,L_50E3		;4ee1
	inc a			;4ee4
	jp z,L_5087		;4ee5
	inc a			;4ee8
	jr z,L_4F5D		;4ee9
	inc a			;4eeb
	jp z,L_4FAB		;4eec
	inc a			;4eef
	jp z,L_500E		;4ef0
	inc a			;4ef3
	jp z,L_4F86		;4ef4
	inc a			;4ef7
	jp z,L_503A		;4ef8
	inc a			;4efb
	jp z,L_5043		;4efc
	inc a			;4eff
	jp z,L_4FA2		;4f00
	inc a			;4f03
	jp z,L_504E		;4f04
	ld a,(de)			;4f07
	cp 03ch		;4f08
	ld a,000h		;4f0a
	jr nz,L_4F0F		;4f0c
	inc a			;4f0e
L_4F0F:
	ld (0e8e0h),a		;4f0f
	ld a,(de)			;4f12
	cp 003h		;4f13
	jr z,L_4F1B		;4f15
	cp 004h		;4f17
	jr nz,L_4F2A		;4f19
L_4F1B:
	ld c,a			;4f1b
	ld a,(0e88dh)		;4f1c
	and a			;4f1f
	ld a,c			;4f20
	jr nz,L_4F50		;4f21
	ld bc,0ffdfh		;4f23
	add hl,bc			;4f26
	ld (hl),a			;4f27
	jr L_4F50		;4f28
L_4F2A:
	ld a,l			;4f2a
	and 01fh		;4f2b
	cp 017h		;4f2d
	jp z,L_5066		;4f2f
L_4F32:
	ld a,(de)			;4f32
	cp 03ch		;4f33
	jr nz,L_4F3D		;4f35
	ld c,a			;4f37
	xor a			;4f38
	ld (0e88dh),a		;4f39
	ld a,c			;4f3c
L_4F3D:
	ld c,a			;4f3d
	ld a,(0e88dh)		;4f3e
	and a			;4f41
	ld a,c			;4f42
	jr z,L_4F4B		;4f43
	cp 03bh		;4f45
	jr z,L_4F4B		;4f47
	ld a,00ah		;4f49
L_4F4B:
	ld (hl),a			;4f4b
	inc hl			;4f4c
	ld (0e346h),hl		;4f4d
L_4F50:
	inc de			;4f50
	ld (0e882h),de		;4f51
	ld a,(0e8e0h)		;4f55
	dec a			;4f58
	ret z			;4f59
	jp L_5101		;4f5a
L_4F5D:
	ld a,001h		;4f5d
	ld (0e887h),a		;4f5f
L_4F62:
	ld a,(0e008h)		;4f62
	and 050h		;4f65
	jr nz,L_4F76		;4f67
	ld a,(0e003h)		;4f69
	and 004h		;4f6c
	jr z,L_4F72		;4f6e
	ld a,01fh		;4f70
L_4F72:
	ld (0eff7h),a		;4f72
	ret			;4f75
L_4F76:
	xor a			;4f76
	ld (0eff7h),a		;4f77
	ld de,(0e882h)		;4f7a
	call L_5087		;4f7e
	xor a			;4f81
	ld (0e887h),a		;4f82
	ret			;4f85
L_4F86:
	ld a,002h		;4f86
	ld (0e887h),a		;4f88
	xor a			;4f8b
	ld (0e886h),a		;4f8c
	call L_4F62		;4f8f
	ld a,(0e887h)		;4f92
	and a			;4f95
	ret nz			;4f96
	ld (0e885h),a		;4f97
	ld hl,(0e882h)		;4f9a
	ld a,(hl)			;4f9d
	ld (0e88ah),a		;4f9e
	ret			;4fa1
L_4FA2:
	inc de			;4fa2
	ld a,001h		;4fa3
	ld (0e888h),a		;4fa5
	jp L_4EDF		;4fa8
L_4FAB:
	ld ix,0eaffh		;4fab
	ld c,000h		;4faf
L_4FB1:
	ld a,l			;4fb1
	and 01fh		;4fb2
	cp 017h		;4fb4
	jp z,L_508C		;4fb6
	ld a,(0e888h)		;4fb9
	and a			;4fbc
	jr nz,L_4FC5		;4fbd
	ld a,c			;4fbf
	ld (0e3b0h),a		;4fc0
	jr L_4FD0		;4fc3
L_4FC5:
	push hl			;4fc5
	push de			;4fc6
	call L_5101		;4fc7
	pop de			;4fca
	pop hl			;4fcb
	inc hl			;4fcc
	inc hl			;4fcd
	inc hl			;4fce
	inc hl			;4fcf
L_4FD0:
	ld (0e346h),hl		;4fd0
	inc de			;4fd3
	ld (0e882h),de		;4fd4
	xor a			;4fd8
	ld (0e888h),a		;4fd9
	dec hl			;4fdc
	dec hl			;4fdd
	dec hl			;4fde
	dec hl			;4fdf
L_4FE0:
	inc ix		;4fe0
	ld a,(ix+000h)		;4fe2
	inc a			;4fe5
	ret z			;4fe6
	dec a			;4fe7
	ld c,a			;4fe8
	cp 003h		;4fe9
	jr z,L_4FF1		;4feb
	cp 004h		;4fed
	jr nz,L_5001		;4fef
L_4FF1:
	ld a,(0e88dh)		;4ff1
	and a			;4ff4
	ld a,c			;4ff5
	jr nz,L_4FFF		;4ff6
	push hl			;4ff8
	ld bc,0ffdfh		;4ff9
	add hl,bc			;4ffc
	ld (hl),a			;4ffd
	pop hl			;4ffe
L_4FFF:
	jr L_4FE0		;4fff
L_5001:
	ld a,(0e88dh)		;5001
	and a			;5004
	ld a,c			;5005
	jr z,L_500A		;5006
	ld a,00ah		;5008
L_500A:
	ld (hl),a			;500a
	inc hl			;500b
	jr L_4FE0		;500c
L_500E:
	xor a			;500e
	ld (0e88dh),a		;500f
	ld a,(0e888h)		;5012
	and a			;5015
	ld a,000h		;5016
	jr nz,L_501B		;5018
	inc a			;501a
L_501B:
	ld (0e88eh),a		;501b
	ld ix,0eb11h		;501e
	ld c,001h		;5022
	call L_4FB1		;5024
	ld a,(0eb7bh)		;5027
	and a			;502a
	ret z			;502b
	ld a,(0e88eh)		;502c
	and a			;502f
	ret z			;5030
	xor a			;5031
	ld (0e88eh),a		;5032
	inc a			;5035
	ld (0e88dh),a		;5036
	ret			;5039
L_503A:
	ld ix,0eb08h		;503a
	ld c,001h		;503e
	jp L_4FB1		;5040
L_5043:
	ld a,(0eb25h)		;5043
	ld c,a			;5046
	ld ix,0eb1ah		;5047
	jp L_4FB1		;504b
L_504E:
	dec hl			;504e
	dec hl			;504f
	dec hl			;5050
	dec hl			;5051
	inc de			;5052
	ld (0e346h),hl		;5053
	ld (0e882h),de		;5056
	call L_4ED8		;505a
	call L_4ED8		;505d
	call L_4ED8		;5060
	jp L_4ED8		;5063
L_5066:
	ld a,(de)			;5066
	cp 005h		;5067
	jr c,L_508C		;5069
	cp 009h		;506b
	jr c,L_507B		;506d
	cp 03ch		;506f
	jr z,L_507B		;5071
	cp 09eh		;5073
	jr c,L_508C		;5075
	cp 0b0h		;5077
	jr nc,L_508C		;5079
L_507B:
	call L_4F32		;507b
	ld hl,(0e882h)		;507e
	ld a,(hl)			;5081
	inc a			;5082
	jr z,L_50E3		;5083
	jr L_508C		;5085
L_5087:
	inc de			;5087
	ld (0e882h),de		;5088
L_508C:
	ld hl,(0e344h)		;508c
	ld de,00040h		;508f
	add hl,de			;5092
	ld de,(0e344h)		;5093
	ld (0e344h),hl		;5097
	ld (0e346h),hl		;509a
	ld bc,0f000h		;509d
	and a			;50a0
	sbc hl,bc		;50a1
	ret c			;50a3
	ld a,002h		;50a4
	ld (0e884h),a		;50a6
	ex de,hl			;50a9
	ld (0e344h),hl		;50aa
	ld (0e346h),hl		;50ad
L_50B0:
	ld hl,0e884h		;50b0
	dec (hl)			;50b3
	ld hl,0ef20h		;50b4
	ld de,0ef00h		;50b7
	ld c,018h		;50ba
L_50BC:
	push hl			;50bc
	push de			;50bd
	ld b,008h		;50be
L_50C0:
	ld a,(hl)			;50c0
	ld (de),a			;50c1
	ld a,020h		;50c2
	call L_40A1		;50c4
	ld a,020h		;50c7
	call L_40A6		;50c9
	djnz L_50C0		;50cc
	pop de			;50ce
	pop hl			;50cf
	inc de			;50d0
	inc hl			;50d1
	dec c			;50d2
	jr nz,L_50BC		;50d3
	ld hl,0efe0h		;50d5
	ld de,0efe1h		;50d8
	ld (hl),000h		;50db
	ld bc,00017h		;50dd
	ldir		;50e0
	ret			;50e2
L_50E3:
	call L_5E69		;50e3
	ld hl,0e886h		;50e6
	dec (hl)			;50e9
	ret			;50ea
L_50EB:
	ld hl,0ef00h		;50eb
	ld de,0ef01h		;50ee
	ld bc,000ffh		;50f1
	ld (hl),000h		;50f4
	ldir		;50f6
	ld hl,0ef25h		;50f8
	ld (0e344h),hl		;50fb
	jp L_5E69		;50fe
L_5101:
	push de			;5101
	push hl			;5102
	ld hl,(0eb40h)		;5103
	ld de,00236h		;5106
	and a			;5109
	sbc hl,de		;510a
	pop hl			;510c
	pop de			;510d
	jr nz,L_511A		;510e
	push bc			;5110
	ld c,a			;5111
	ld a,(0e350h)		;5112
	cp 01ch		;5115
	ld a,c			;5117
	pop bc			;5118
	ret nc			;5119
L_511A:
	push de			;511a
	push hl			;511b
	ld hl,(0eb40h)		;511c
	ld de,00235h		;511f
	and a			;5122
	sbc hl,de		;5123
	pop hl			;5125
	pop de			;5126
	jr nz,L_5133		;5127
	push bc			;5129
	ld c,a			;512a
	ld a,(0ea01h)		;512b
	cp 016h		;512e
	ld a,c			;5130
	pop bc			;5131
	ret nc			;5132
L_5133:
	ld a,(0f0fah)		;5133
	and a			;5136
	ret nz			;5137
	ld a,(0e3b0h)		;5138
	and a			;513b
	ld c,004h		;513c
	jr z,L_5147		;513e
	ld c,003h		;5140
	dec a			;5142
	jr z,L_5147		;5143
	ld c,002h		;5145
L_5147:
	ld a,c			;5147
	jp L_4153		;5148
L_514B:
	xor a			;514b
	ld (0e8e7h),a		;514c
	ld hl,0e800h		;514f
	ld de,0e801h		;5152
	ld bc,0007fh		;5155
	ld (hl),000h		;5158
	ldir		;515a
	call L_4137		;515c
	ld hl,(0eb40h)		;515f
	ld bc,00200h		;5162
	and a			;5165
	sbc hl,bc		;5166
	ld de,0b606h		;5168
	jr nc,L_5176		;516b
	call L_4131		;516d
	ld hl,(0eb40h)		;5170
	ld de,06000h		;5173
L_5176:
	ld a,(0eb7dh)		;5176
	bit 3,a		;5179
	jr z,L_5191		;517b
	push de			;517d
	push hl			;517e
	ld hl,(0eb40h)		;517f
	ld de,00208h		;5182
	and a			;5185
	sbc hl,de		;5186
	jr nz,L_518F		;5188
	ld a,001h		;518a
	ld (0e8e7h),a		;518c
L_518F:
	pop hl			;518f
	pop de			;5190
L_5191:
	add hl,hl			;5191
	add hl,hl			;5192
	add hl,hl			;5193
	add hl,hl			;5194
	ld c,l			;5195
	ld b,h			;5196
	add hl,hl			;5197
	add hl,bc			;5198
	add hl,de			;5199
	ld (0e8e0h),hl		;519a
	ld hl,0ed00h		;519d
	ld (0e8e2h),hl		;51a0
	ld hl,0e800h		;51a3
	ld (0e8e5h),hl		;51a6
	xor a			;51a9
	ld (0e8e4h),a		;51aa
	ld c,008h		;51ad
L_51AF:
	push bc			;51af
	ld b,00ch		;51b0
L_51B2:
	push bc			;51b2
	ld hl,(0e8e0h)		;51b3
	ld d,(hl)			;51b6
	ld a,(0e8e4h)		;51b7
	rra			;51ba
	ld a,d			;51bb
	jr nc,L_51C4		;51bc
	inc hl			;51be
	ld (0e8e0h),hl		;51bf
	jr L_51C8		;51c2
L_51C4:
	rra			;51c4
	rra			;51c5
	rra			;51c6
	rra			;51c7
L_51C8:
	and 00fh		;51c8
	ld c,a			;51ca
	ld a,(0e8e7h)		;51cb
	and a			;51ce
	ld a,c			;51cf
	jr z,L_51D8		;51d0
	cp 00bh		;51d2
	jr nz,L_51D8		;51d4
	ld a,002h		;51d6
L_51D8:
	add a,a			;51d8
	add a,a			;51d9
	add a,010h		;51da
	ld b,a			;51dc
	ld hl,(0e8e2h)		;51dd
	ld de,(0e8e5h)		;51e0
	ld (hl),b			;51e4
	call L_5221		;51e5
	ld (de),a			;51e8
	inc b			;51e9
	inc hl			;51ea
	ld (hl),b			;51eb
	inc b			;51ec
	inc hl			;51ed
	inc de			;51ee
	ld (0e8e2h),hl		;51ef
	ld (0e8e5h),de		;51f2
	ld a,01eh		;51f6
	call L_40A1		;51f8
	ld (hl),b			;51fb
	inc b			;51fc
	inc hl			;51fd
	ld (hl),b			;51fe
	ld hl,0e8e4h		;51ff
	inc (hl)			;5202
	pop bc			;5203
	djnz L_51B2		;5204
	ld hl,(0e8e2h)		;5206
	ld bc,00028h		;5209
	add hl,bc			;520c
	ld (0e8e2h),hl		;520d
	ld hl,(0e8e5h)		;5210
	ld bc,00004h		;5213
	add hl,bc			;5216
	ld (0e8e5h),hl		;5217
	pop bc			;521a
	dec c			;521b
	jr nz,L_51AF		;521c
	jp L_4E28		;521e
L_5221:
	ld a,(0e361h)		;5221
	cp b			;5224
	ld a,001h		;5225
	ret z			;5227
	ret c			;5228
	dec a			;5229
	ret			;522a
L_522B:
	ld a,(0e8a0h)		;522b
	call L_40AB		;522e

; ----------------------------------------------------------------------
; DATOS saltos_5231: tabla de 10 palabras del despachador (call 0x408D en
;   0x522E); lo leen L_40AB (20 bytes)
;   0x5231..0x5245  (20 bytes)
DATA_saltos_5231:
	defb 045h,052h	; 5231
	defb 0deh,052h	; 5233
	defb 0f1h,052h	; 5235
	defb 090h,053h	; 5237
	defb 0deh,053h	; 5239
	defb 001h,054h	; 523b
	defb 0bah,055h	; 523d
	defb 02eh,091h	; 523f
	defb 0e5h,055h	; 5241
	defb 041h,056h	; 5243

; ======================================================================
; CODIGO 0x5245..0x5676  (1073 bytes)
; ======================================================================


L_5245:
	ld a,003h		;5245
	ld (0e8a3h),a		;5247
	xor a			;524a
	ld (0e8b2h),a		;524b
	ld (0e8b1h),a		;524e
	call 08cf5h		;5251
	ld a,(0e8a6h)		;5254
	inc a			;5257
	jr z,L_52CF		;5258
	dec a			;525a
	call L_560E		;525b
	ld (0e365h),hl		;525e
	push hl			;5261
	pop ix		;5262
	ld e,(hl)			;5264
	inc hl			;5265
	ld d,(hl)			;5266
	ld (0e363h),de		;5267
	ld de,0003fh		;526b
	add hl,de			;526e
	ld de,0e8d0h		;526f
	ld bc,00010h		;5272
	ldir		;5275
	ld a,(0e3c6h)		;5277
	dec a			;527a
	xor 001h		;527b
	inc a			;527d
	ld (ix+00bh),a		;527e
	push ix		;5281
	pop hl			;5283
	ld de,00011h		;5284
	add hl,de			;5287
	dec a			;5288
	call L_40A1		;5289
	ld a,(hl)			;528c
	ld (ix+008h),a		;528d
	call L_5298		;5290
L_5293:
	ld hl,0e8a0h		;5293
	inc (hl)			;5296
	ret			;5297
L_5298:
	ld e,(ix+015h)		;5298
	ld d,(ix+016h)		;529b
	ld l,(ix+017h)		;529e
	ld h,(ix+018h)		;52a1
	ld a,(ix+019h)		;52a4
	ld (0eb1bh),de		;52a7
	ld (0eb1dh),hl		;52ab
	ld (0eb1fh),a		;52ae
	ld a,(ix+000h)		;52b1
	cp 059h		;52b4
	jr z,L_52C9		;52b6
	cp 05ah		;52b8
	jr z,L_52C9		;52ba
	ld a,(ix+01ah)		;52bc
	cp 002h		;52bf
	jr nz,L_52C5		;52c1
	sub 002h		;52c3
L_52C5:
	ld (0eb25h),a		;52c5
	ret			;52c8
L_52C9:
	ld a,002h		;52c9
	ld (0eb25h),a		;52cb
	ret			;52ce
L_52CF:
	ld hl,0e8d0h		;52cf
	ld de,0e8d1h		;52d2
	ld (hl),000h		;52d5
	ld bc,0000fh		;52d7
	ldir		;52da
	jr L_5293		;52dc
L_52DE:
	ld a,(0e8a3h)		;52de
	call L_567A		;52e1
	call L_56DB		;52e4
	ld a,001h		;52e7
	ld (0e8a7h),a		;52e9
	ld a,003h		;52ec
	jp L_55F3		;52ee
L_52F1:
	ld a,(0e8a3h)		;52f1
	cp 006h		;52f4
	jr z,L_5358		;52f6
	cp 017h		;52f8
	jr nz,L_5336		;52fa
	ld de,(0e8ach)		;52fc
	ld a,(0eb7ch)		;5300
	and 0f0h		;5303
	jr z,L_5310		;5305
	ld a,00dh		;5307
	call L_40A6		;5309
	ld a,02bh		;530c
	jr L_532D		;530e
L_5310:
	ld a,(0ffa7h)		;5310
	cp 0c9h		;5313
	ld h,017h		;5315
	jr nz,L_531E		;5317
	inc de			;5319
	inc de			;531a
	inc de			;531b
	inc de			;531c
	inc h			;531d
L_531E:
	ld a,(0f0f9h)		;531e
	and a			;5321
	ld a,h			;5322
	jr z,L_532D		;5323
	add a,008h		;5325
	inc de			;5327
	inc de			;5328
	inc de			;5329
	inc de			;532a
	inc de			;532b
	inc de			;532c
L_532D:
	ld (0e8a3h),a		;532d
	ld (0e8ach),de		;5330
	jr L_534A		;5334
L_5336:
	cp 01dh		;5336
	jr nz,L_534A		;5338
	ld hl,0eb65h		;533a
	bit 0,(hl)		;533d
	jr nz,L_534A		;533f
	bit 1,(hl)		;5341
	jr z,L_534A		;5343
	ld a,027h		;5345
	ld (0e8a3h),a		;5347
L_534A:
	call L_568A		;534a
	call L_56DB		;534d
	ld a,002h		;5350
	ld (0e8a7h),a		;5352
	jp L_5293		;5355
L_5358:
	call L_56B0		;5358
	jr c,L_536A		;535b
	call L_5728		;535d
	ld a,003h		;5360
	ld (0e8a7h),a		;5362
	ld a,008h		;5365
	jp L_55F3		;5367
L_536A:
	ld a,001h		;536a
	ld (0e8a7h),a		;536c
	ld (0e8a2h),a		;536f
	ld a,(0e8aeh)		;5372
	ld (0e8a4h),a		;5375
	ld a,005h		;5378
	call L_55F3		;537a
	jp L_54D6		;537d
L_5380:
	ld a,001h		;5380
	ld (0e8a7h),a		;5382
	ld (0e8a2h),a		;5385
	ld a,005h		;5388
	call L_55F3		;538a
	jp L_54D0		;538d
L_5390:
	xor a			;5390
	ld (0e8afh),a		;5391
	call L_5774		;5394
	ld a,(0e8afh)		;5397
	and a			;539a
	jr nz,L_53BC		;539b
	call L_57AE		;539d
	ld a,(0e008h)		;53a0
	and 010h		;53a3
	ret z			;53a5
	ld a,(0e8a7h)		;53a6
	dec a			;53a9
	jp nz,L_5293		;53aa
	ld a,(0e8a4h)		;53ad
	ld (0e8b2h),a		;53b0
	ld a,(0e8a2h)		;53b3
	ld (0e8b1h),a		;53b6
	jp L_5293		;53b9
L_53BC:
	ld a,(0e8a1h)		;53bc
	and a			;53bf
	ret z			;53c0
	ld a,(0e8a2h)		;53c1
	cpl			;53c4
	and 001h		;53c5
	ld (0e8a2h),a		;53c7
	ld a,(0e8afh)		;53ca
	dec a			;53cd
	jr z,L_53D2		;53ce
	ld a,003h		;53d0
L_53D2:
	ld (0e8a4h),a		;53d2
	call L_588C		;53d5
	call L_56DB		;53d8
	jp L_57AE		;53db
L_53DE:
	call L_585C		;53de
	ld a,(0e8a7h)		;53e1
	dec a			;53e4
	jr nz,L_53FE		;53e5
	ld a,(0e8a2h)		;53e7
	and a			;53ea
	ld hl,0e8d0h		;53eb
	jr z,L_53F3		;53ee
	ld hl,0e8d4h		;53f0
L_53F3:
	ld a,(0e8a4h)		;53f3
	call L_40A1		;53f6
	inc (hl)			;53f9
	ld a,(hl)			;53fa
	ld (0e8a8h),a		;53fb
L_53FE:
	jp L_5293		;53fe
L_5401:
	call L_411B		;5401
	ld a,(0e8a7h)		;5404
	cp 002h		;5407
	jp z,L_5567		;5409
	cp 003h		;540c
	jp z,L_5574		;540e
	ld a,(0e8a6h)		;5411
	inc a			;5414
	jp z,L_54D6		;5415
	ld hl,(0e363h)		;5418
	ld de,0988eh		;541b
	dec hl			;541e
	add hl,hl			;541f
	add hl,de			;5420
	ld e,(hl)			;5421
	inc hl			;5422
	ld d,(hl)			;5423
	ld a,(0e8a2h)		;5424
	and a			;5427
	ld a,(0e8a4h)		;5428
	jr z,L_542F		;542b
	add a,004h		;542d
L_542F:
	and a			;542f
	ld b,a			;5430
	ld c,000h		;5431
	ld a,(de)			;5433
	inc de			;5434
	ld l,e			;5435
	ld h,d			;5436
	ld l,(hl)			;5437
	ld h,000h		;5438
	jr z,L_5447		;543a
L_543C:
	rrc l		;543c
	jr nc,L_5441		;543e
	inc h			;5440
L_5441:
	rra			;5441
	jr nc,L_5445		;5442
	inc c			;5444
L_5445:
	djnz L_543C		;5445
L_5447:
	rra			;5447
	jp nc,L_54E4		;5448
	bit 0,l		;544b
	jp nz,L_5532		;544d
	ld l,000h		;5450
	ld a,(de)			;5452
	ld b,008h		;5453
L_5455:
	rra			;5455
	jr nc,L_5459		;5456
	inc l			;5458
L_5459:
	djnz L_5455		;5459
	ld a,l			;545b
	add a,a			;545c
	call L_40A6		;545d
	inc de			;5460
	ld a,c			;5461
	and a			;5462
	jr z,L_546D		;5463
	ld b,a			;5465
L_5466:
	ld a,(de)			;5466
	call L_40A6		;5467
	inc de			;546a
	djnz L_5466		;546b
L_546D:
	ld a,(de)			;546d
	ld (0e8a9h),a		;546e
	ld c,a			;5471
	inc de			;5472
	ld a,(0e8a8h)		;5473
	cp c			;5476
	call nc,L_55F7		;5477
	dec a			;547a
	call L_40A6		;547b
	ld a,(de)			;547e
	ld c,a			;547f
L_5480:
	call L_40F9		;5480
	call 09cedh		;5483
	ld hl,0eb6ah		;5486
	bit 2,(hl)		;5489
	jr nz,L_54A1		;548b
	ld hl,0eb67h		;548d
	bit 1,(hl)		;5490
	jr nz,L_54A8		;5492
	ld hl,0eb70h		;5494
	bit 0,(hl)		;5497
	jr nz,L_54C3		;5499
L_549B:
	call L_4DFD		;549b
	jp L_5293		;549e
L_54A1:
	xor a			;54a1
	ld (0e360h),a		;54a2
	jp L_585C		;54a5
L_54A8:
	xor a			;54a8
	ld (0e368h),a		;54a9
	inc a			;54ac
	ld (0e360h),a		;54ad
	inc a			;54b0
	ld (0e337h),a		;54b1
	ld hl,001d7h		;54b4
	ld (0e36ah),hl		;54b7
	ld hl,08030h		;54ba
	ld (0e3c1h),hl		;54bd
	jp L_585C		;54c0
L_54C3:
	ld a,014h		;54c3
	ld (0ea01h),a		;54c5
	ld a,008h		;54c8
	ld (0e360h),a		;54ca
	jp L_585C		;54cd
L_54D0:
	call L_4DBC		;54d0
	jp L_5293		;54d3
L_54D6:
	call L_5516		;54d6
	call 0abbdh		;54d9
	jr c,L_549B		;54dc
L_54DE:
	call L_4DE1		;54de
	jp L_5293		;54e1
L_54E4:
	ld hl,0021eh		;54e4
	ld de,(0eb40h)		;54e7
	and a			;54eb
	sbc hl,de		;54ec
	jr nz,L_54F7		;54ee
	cp 008h		;54f0
	jr nz,L_54F7		;54f2
	ld c,a			;54f4
	jr L_549B		;54f5
L_54F7:
	call L_5516		;54f7
	ld hl,(0e365h)		;54fa
	ld a,01ah		;54fd
	call L_40A1		;54ff
	ld a,(hl)			;5502
	cp 002h		;5503
	jr z,L_54DE		;5505
	and a			;5507
	jr nz,L_5510		;5508
	call L_4DE5		;550a
	jp L_5293		;550d
L_5510:
	call L_4DE9		;5510
	jp L_5293		;5513
L_5516:
	ld a,(0e8a2h)		;5516
	and a			;5519
	ld c,000h		;551a
	jr z,L_5520		;551c
	ld c,004h		;551e
L_5520:
	ld a,(0e8a4h)		;5520
	add a,c			;5523
	add a,a			;5524
	add a,a			;5525
	ld c,a			;5526
	ld a,r		;5527
	and 00ch		;5529
	rra			;552b
	rra			;552c
	add a,c			;552d
	ld c,a			;552e
	jp L_40F9		;552f
L_5532:
	ld c,h			;5532
	call L_40F9		;5533
	push bc			;5536
	push de			;5537
	call 0b08ch		;5538
	pop de			;553b
	pop bc			;553c
	push af			;553d
	call L_411B		;553e
	pop af			;5541
	jr c,L_54E4		;5542
	inc de			;5544
	ld a,c			;5545
	add a,a			;5546
	call L_40A6		;5547
	ld a,(de)			;554a
	ld l,a			;554b
	inc de			;554c
	ld a,(de)			;554d
	ld h,a			;554e
	ld a,(hl)			;554f
	ld (0e8a3h),a		;5550
	inc hl			;5553
	inc hl			;5554
	ld (0e8ach),hl		;5555
	xor a			;5558
	ld (0e8a2h),a		;5559
	ld a,(0e8a4h)		;555c
	ld (0e8aeh),a		;555f
	ld a,002h		;5562
	jp L_55F3		;5564
L_5567:
	ld a,(0e8a4h)		;5567
	ld hl,(0e8ach)		;556a
	call L_40A1		;556d
	ld c,(hl)			;5570
	jp L_5480		;5571
L_5574:
	ld a,(0e8a4h)		;5574
	ld hl,0e8b8h		;5577
	call L_40A1		;557a
	ld c,(hl)			;557d
	ld hl,(0e8ach)		;557e
	dec hl			;5581
	ld a,(hl)			;5582
	and a			;5583
	jr z,L_5592		;5584
	ld b,a			;5586
	inc hl			;5587
	ld a,c			;5588
	ld c,000h		;5589
L_558B:
	cp (hl)			;558b
	jr z,L_55A9		;558c
	inc hl			;558e
	inc c			;558f
	djnz L_558B		;5590
L_5592:
	ld a,(0e8aeh)		;5592
	ld (0e8a4h),a		;5595
	ld hl,(0e363h)		;5598
	ld de,00156h		;559b
	and a			;559e
	sbc hl,de		;559f
	jp nz,L_5380		;55a1
	ld c,013h		;55a4
	jp L_549B		;55a6
L_55A9:
	ld hl,(0e8ach)		;55a9
	dec hl			;55ac
	ld a,(hl)			;55ad
	inc hl			;55ae
	call L_40A1		;55af
	ld a,c			;55b2
	call L_40A1		;55b3
	ld c,(hl)			;55b6
	jp L_5480		;55b7
L_55BA:
	call L_4DFD		;55ba
	ld a,(0e886h)		;55bd
	and a			;55c0
	ret nz			;55c1
	ld a,(0e887h)		;55c2
	and a			;55c5
	ret nz			;55c6
	ld a,(0e88ah)		;55c7
	and a			;55ca
	jr nz,L_55D8		;55cb
	ld a,003h		;55cd
	ld (0e8a3h),a		;55cf
	ld a,001h		;55d2
	ld (0e8a0h),a		;55d4
	ret			;55d7
L_55D8:
	ld a,(0e88ah)		;55d8
	ld (0e8aah),a		;55db
	xor a			;55de
	ld (0e8abh),a		;55df
	jp L_5293		;55e2
L_55E5:
	call L_5806		;55e5
	call L_57CC		;55e8
	ld a,(0e008h)		;55eb
	and 010h		;55ee
	ret z			;55f0
	ld a,004h		;55f1
L_55F3:
	ld (0e8a0h),a		;55f3
	ret			;55f6
L_55F7:
	ld a,c			;55f7
	push af			;55f8
	ld a,(0e8a2h)		;55f9
	and a			;55fc
	ld hl,0e8d0h		;55fd
	jr z,L_5605		;5600
	ld hl,0e8d4h		;5602
L_5605:
	ld a,(0e8a4h)		;5605
	call L_40A1		;5608
	ld (hl),c			;560b
	pop af			;560c
	ret			;560d
L_560E:
	ld l,a			;560e
	ld h,000h		;560f
	add hl,hl			;5611
	add hl,hl			;5612
	add hl,hl			;5613
	add hl,hl			;5614
	add hl,hl			;5615
	add hl,hl			;5616
	add hl,hl			;5617
	ld de,0e400h		;5618
	add hl,de			;561b
	ret			;561c
L_561D:
	call L_5298		;561d
	call L_40F9		;5620
	call 0ab92h		;5623
	call L_4DFD		;5626
	call L_411B		;5629
	ld hl,0e360h		;562c
	ld (hl),003h		;562f
	ret			;5631
L_5632:
	call L_5298		;5632
	call 0ab92h		;5635
	call L_4DFD		;5638
	ld hl,0e360h		;563b
	ld (hl),009h		;563e
	ret			;5640
L_5641:
	ld a,003h		;5641
	ld (0e8a3h),a		;5643
	ld a,(0e3a1h)		;5646
	dec a			;5649
	add a,a			;564a
	ld de,05676h		;564b
	call L_43A4		;564e
	inc hl			;5651
	ld c,(hl)			;5652
	inc hl			;5653
	ld b,(hl)			;5654
	ld (0e363h),de		;5655
	ld (0e365h),bc		;5659
	push bc			;565d
	pop ix		;565e
	call L_5298		;5660
	ld hl,0e8d0h		;5663
	ld de,0e8d1h		;5666
	ld (hl),000h		;5669
	ld bc,0000fh		;566b
	ldir		;566e
	ld hl,0e8a0h		;5670
	ld (hl),001h		;5673
	ret			;5675

; ----------------------------------------------------------------------
; DATOS resto_5676: lo apuntan con el banco puesto p00:564B (0x5676); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p00:564B (4 bytes)
;   0x5676..0x567a  (4 bytes)
DATA_resto_5676:
	defb 0a4h,000h,000h,0eah	; 5676

; ======================================================================
; CODIGO 0x567a..0x5a83  (1033 bytes)
; ======================================================================


L_567A:
	ld c,a			;567a
	ld a,(0e8b2h)		;567b
	ld (0e8a4h),a		;567e
	ld a,(0e8b1h)		;5681
	ld (0e8a2h),a		;5684
	ld a,c			;5687
	jr L_5694		;5688
L_568A:
	ld hl,0e8a2h		;568a
	ld (hl),000h		;568d
	ld hl,0e8a4h		;568f
	ld (hl),000h		;5692
L_5694:
	call L_40FF		;5694
	ld de,07902h		;5697
	call L_43A4		;569a
	ex de,hl			;569d
	ld a,(hl)			;569e
	ld (0e8a1h),a		;569f
	inc hl			;56a2
	ld de,0e8b8h		;56a3
L_56A6:
	ld a,(hl)			;56a6
	ld (de),a			;56a7
	inc a			;56a8
	jp z,L_4E28		;56a9
	inc hl			;56ac
	inc de			;56ad
	jr L_56A6		;56ae
L_56B0:
	xor a			;56b0
	ld (0e8a2h),a		;56b1
	ld (0e8a4h),a		;56b4
	ld hl,0e9d0h		;56b7
	ld bc,01801h		;56ba
	ld de,0e8b8h		;56bd
L_56C0:
	bit 0,(hl)		;56c0
	jr z,L_56C7		;56c2
	ld a,c			;56c4
	ld (de),a			;56c5
	inc de			;56c6
L_56C7:
	inc hl			;56c7
	inc hl			;56c8
	inc c			;56c9
	djnz L_56C0		;56ca
	ld a,0ffh		;56cc
	ld (de),a			;56ce
	ld hl,0e8b8h		;56cf
	and a			;56d2
	sbc hl,de		;56d3
	jr nz,L_56D9		;56d5
	scf			;56d7
	ret			;56d8
L_56D9:
	and a			;56d9
	ret			;56da
L_56DB:
	call L_40FF		;56db
	call L_588C		;56de
	ld hl,03a1ah		;56e1
	ld (0e8e0h),hl		;56e4
	ld a,(0e8a2h)		;56e7
	and a			;56ea
	ld de,0e8b8h		;56eb
	jr z,L_56F3		;56ee
	ld de,0e8bch		;56f0
L_56F3:
	ld bc,00600h		;56f3
L_56F6:
	ld a,(de)			;56f6
	inc a			;56f7
	jr z,L_5720		;56f8
	dec a			;56fa
	push bc			;56fb
	push de			;56fc
	ld l,a			;56fd
	ld h,000h		;56fe
	ld de,07a15h		;5700
	add hl,hl			;5703
	add hl,de			;5704
	ld e,(hl)			;5705
	inc hl			;5706
	ld d,(hl)			;5707
	ld hl,(0e8e0h)		;5708
	call L_59DD		;570b
	ld hl,(0e8e0h)		;570e
	ld de,00040h		;5711
	add hl,de			;5714
	ld (0e8e0h),hl		;5715
	pop de			;5718
	pop bc			;5719
	inc de			;571a
	inc c			;571b
	djnz L_56F6		;571c
	ld c,004h		;571e
L_5720:
	dec c			;5720
	ld a,c			;5721
	ld (0e8a5h),a		;5722
	jp L_4E28		;5725
L_5728:
	call L_40FF		;5728
	call L_50EB		;572b
	ld hl,03a24h		;572e
	ld (0e8e0h),hl		;5731
	ld de,0e8b8h		;5734
L_5737:
	ld a,(de)			;5737
	inc a			;5738
	jr z,L_576C		;5739
	dec a			;573b
	push bc			;573c
	push de			;573d
	ld l,a			;573e
	ld h,000h		;573f
	ld de,07a15h		;5741
	add hl,hl			;5744
	add hl,de			;5745
	ld e,(hl)			;5746
	inc hl			;5747
	ld d,(hl)			;5748
	ld hl,(0e8e0h)		;5749
	call L_59DD		;574c
	ld hl,(0e8e0h)		;574f
	ld a,l			;5752
	and 00ch		;5753
	jr z,L_575E		;5755
	ld a,007h		;5757
	call L_40A1		;5759
	jr L_5763		;575c
L_575E:
	ld a,032h		;575e
	call L_40A1		;5760
L_5763:
	ld (0e8e0h),hl		;5763
	pop de			;5766
	pop bc			;5767
	inc de			;5768
	inc c			;5769
	jr L_5737		;576a
L_576C:
	dec c			;576c
	ld a,c			;576d
	ld (0e8a5h),a		;576e
	jp L_4E28		;5771
L_5774:
	ld hl,0e8b0h		;5774
	ld a,(0e008h)		;5777
	and 003h		;577a
	jr nz,L_5786		;577c
	ld a,(0e009h)		;577e
	and 003h		;5781
	ret z			;5783
	dec (hl)			;5784
	ret nz			;5785
L_5786:
	ld (hl),00ch		;5786
	rra			;5788
	ld hl,0e8a4h		;5789
	jr c,L_579F		;578c
	ld a,(0e8a5h)		;578e
	cp (hl)			;5791
	jr z,L_5799		;5792
	inc (hl)			;5794
	call L_4588		;5795
	ret			;5798
L_5799:
	ld a,001h		;5799
	ld (0e8afh),a		;579b
	ret			;579e
L_579F:
	ld a,(hl)			;579f
	and a			;57a0
	jr z,L_57A8		;57a1
	dec (hl)			;57a3
	call L_4588		;57a4
	ret			;57a7
L_57A8:
	ld a,002h		;57a8
	ld (0e8afh),a		;57aa
	ret			;57ad
L_57AE:
	call L_585C		;57ae
	ld hl,03a19h		;57b1
	ld a,(0e8a4h)		;57b4
	add a,a			;57b7
	add a,a			;57b8
	add a,a			;57b9
	add a,a			;57ba
	add a,a			;57bb
	add a,a			;57bc
	call L_40A1		;57bd
	ld a,(0e003h)		;57c0
	and 004h		;57c3
	jr z,L_57C9		;57c5
	ld a,03fh		;57c7
L_57C9:
	jp 0004dh		;57c9   ; BIOS WRTVRM - Writes data in VRAM
L_57CC:
	call L_586C		;57cc
	ld hl,03a23h		;57cf
	ld a,(0e8a4h)		;57d2
	ld b,a			;57d5
	sub 003h		;57d6
	ld c,000h		;57d8
	jr c,L_57ED		;57da
	ld b,a			;57dc
	sub 003h		;57dd
	ld c,040h		;57df
	jr c,L_57ED		;57e1
	ld b,a			;57e3
	sub 003h		;57e4
	ld c,080h		;57e6
	jr c,L_57ED		;57e8
	ld b,a			;57ea
	ld c,0c0h		;57eb
L_57ED:
	ld a,c			;57ed
	call L_40A1		;57ee
	ld a,b			;57f1
	add a,a			;57f2
	ld c,a			;57f3
	add a,a			;57f4
	add a,c			;57f5
	add a,b			;57f6
	call L_40A1		;57f7
	ld a,(0e003h)		;57fa
	and 004h		;57fd
	jr z,L_5803		;57ff
	ld a,03fh		;5801
L_5803:
	jp 0004dh		;5803   ; BIOS WRTVRM - Writes data in VRAM
L_5806:
	ld a,(0e008h)		;5806
	and 00fh		;5809
	ret z			;580b
	ld hl,0e8a4h		;580c
	rra			;580f
	jr c,L_582F		;5810
	rra			;5812
	jr c,L_583A		;5813
	rra			;5815
	jr c,L_584B		;5816
	ld a,(0e8a5h)		;5818
	cp (hl)			;581b
	ret z			;581c
	ld a,(hl)			;581d
	cp 002h		;581e
	ret z			;5820
	cp 005h		;5821
	ret z			;5823
	cp 008h		;5824
	ret z			;5826
	cp 00bh		;5827
	ret z			;5829
	inc (hl)			;582a
	call L_4588		;582b
	ret			;582e
L_582F:
	ld a,(hl)			;582f
	cp 003h		;5830
	ret c			;5832
	dec (hl)			;5833
	dec (hl)			;5834
	dec (hl)			;5835
	call L_4588		;5836
	ret			;5839
L_583A:
	inc (hl)			;583a
	inc (hl)			;583b
	inc (hl)			;583c
	ld a,(0e8a5h)		;583d
	cp (hl)			;5840
	jr nc,L_5847		;5841
	dec (hl)			;5843
	dec (hl)			;5844
	dec (hl)			;5845
	ret			;5846
L_5847:
	call L_4588		;5847
	ret			;584a
L_584B:
	ld a,(hl)			;584b
	and a			;584c
	ret z			;584d
	cp 003h		;584e
	ret z			;5850
	cp 006h		;5851
	ret z			;5853
	cp 009h		;5854
	ret z			;5856
	dec (hl)			;5857
	call L_4588		;5858
	ret			;585b
L_585C:
	ld hl,03a19h		;585c
	ld b,007h		;585f
	ld de,00020h		;5861
L_5864:
	xor a			;5864
	call 0004dh		;5865   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;5868
	djnz L_5864		;5869
	ret			;586b
L_586C:
	ld hl,03a23h		;586c
	ld b,004h		;586f
L_5871:
	xor a			;5871
	call 0004dh		;5872   ; BIOS WRTVRM - Writes data in VRAM
	ld de,00007h		;5875
	add hl,de			;5878
	xor a			;5879
	call 0004dh		;587a   ; BIOS WRTVRM - Writes data in VRAM
	ld de,00007h		;587d
	add hl,de			;5880
	xor a			;5881
	call 0004dh		;5882   ; BIOS WRTVRM - Writes data in VRAM
	ld de,00032h		;5885
	add hl,de			;5888
	djnz L_5871		;5889
	ret			;588b
L_588C:
	ld de,0454ah		;588c
	call L_59C2		;588f
	ld hl,03a19h		;5892
	ld d,007h		;5895
L_5897:
	ld bc,00006h		;5897
	xor a			;589a
	call 00056h		;589b   ; BIOS FILVRM - Fills VRAM with value
	ld a,020h		;589e
	call L_40A1		;58a0
	dec d			;58a3
	jr nz,L_5897		;58a4
	ret			;58a6
L_58A7:
	ld c,007h		;58a7
	jp 00047h		;58a9   ; BIOS WRTVDP - Writes data in the VDP-register
L_58AC:
	ld hl,02000h		;58ac
	ld bc,00008h		;58af
	xor a			;58b2
	call L_5961		;58b3
	ld hl,00000h		;58b6
	ld bc,00008h		;58b9
	jp L_5961		;58bc
L_58BF:
	call L_58AC		;58bf
	ld hl,0ed00h		;58c2
	ld d,000h		;58c5
	ld bc,00300h		;58c7
L_58CA:
	ld (hl),d			;58ca
	inc hl			;58cb
	dec bc			;58cc
	ld a,c			;58cd
	or b			;58ce
	jr nz,L_58CA		;58cf
	jp L_5E51		;58d1
L_58D4:
	ld hl,0ed00h		;58d4
	xor a			;58d7
	ld c,010h		;58d8
L_58DA:
	ld b,018h		;58da
L_58DC:
	ld (hl),a			;58dc
	inc hl			;58dd
	djnz L_58DC		;58de
	ld de,00008h		;58e0
	add hl,de			;58e3
	dec c			;58e4
	jr nz,L_58DA		;58e5
	jp L_5E5F		;58e7
L_58EA:
	call L_58AC		;58ea
	ld hl,0ed00h		;58ed
	ld d,000h		;58f0
	ld bc,001e0h		;58f2
L_58F5:
	ld (hl),d			;58f5
	inc hl			;58f6
	dec bc			;58f7
	ld a,c			;58f8
	or b			;58f9
	jr nz,L_58F5		;58fa
	jp L_5E45		;58fc
L_58FF:
	ld hl,0f000h		;58ff
	ld b,080h		;5902
	ld a,0e0h		;5904
L_5906:
	ld (hl),a			;5906
	inc hl			;5907
	djnz L_5906		;5908
	jp L_5ECA		;590a
L_590D:
	ld a,(0f000h)		;590d
	ld (0e367h),a		;5910
	ld a,0d0h		;5913
	ld (0f000h),a		;5915
	jp L_5ECA		;5918
L_591B:
	call L_58FF		;591b
	call L_58AC		;591e
	ld hl,03800h		;5921
	ld bc,00300h		;5924
	xor a			;5927
	jp 00056h		;5928   ; BIOS FILVRM - Fills VRAM with value
L_592B:
	ex af,af'			;592b
	call 00053h		;592c   ; BIOS SETWRT - Enables VDP to write
	exx			;592f
	ld a,(00007h)		;5930
	ld c,a			;5933
	exx			;5934
	ex af,af'			;5935
	ret			;5936
L_5937:
	call 00050h		;5937   ; BIOS SETRD - Enables VDP to read
	exx			;593a
	ld a,(00006h)		;593b
	ld c,a			;593e
	exx			;593f
	ret			;5940
L_5941:
	ex de,hl			;5941
	jp 0005ch		;5942   ; BIOS LDIRVM - Block transfers to VRAM from memory
L_5945:
	exx			;5945
	ld b,002h		;5946
	jr L_594D		;5948
L_594A:
	exx			;594a
	ld b,003h		;594b
L_594D:
	exx			;594d
	push bc			;594e
	push de			;594f
	call L_5941		;5950
	ld de,00800h		;5953
	add hl,de			;5956
	pop de			;5957
	pop bc			;5958
	exx			;5959
	djnz L_594D		;595a
	ret			;595c
L_595D:
	ld d,002h		;595d
	jr L_5963		;595f
L_5961:
	ld d,003h		;5961
L_5963:
	push bc			;5963
	push de			;5964
	call 00056h		;5965   ; BIOS FILVRM - Fills VRAM with value
	ld de,00800h		;5968
	add hl,de			;596b
	pop de			;596c
	pop bc			;596d
	dec d			;596e
	jr nz,L_5963		;596f
	ret			;5971
L_5972:
	ld b,002h		;5972
	jr L_5978		;5974
L_5976:
	ld b,003h		;5976
L_5978:
	push bc			;5978
	push de			;5979
	call L_5A2A		;597a
	ld de,00800h		;597d
	add hl,de			;5980
	pop de			;5981
	pop bc			;5982
	djnz L_5978		;5983
	ret			;5985
L_5986:
	ld b,002h		;5986
	jr L_598C		;5988
L_598A:
	ld b,003h		;598a
L_598C:
	push bc			;598c
	push de			;598d
	call L_5A32		;598e
	ld de,00800h		;5991
	add hl,de			;5994
	pop de			;5995
	pop bc			;5996
	djnz L_598C		;5997
	ret			;5999
L_599A:
	ld hl,02000h		;599a
	ld bc,01000h		;599d
	xor a			;59a0
	call 00056h		;59a1   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00000h		;59a4
	ld bc,01000h		;59a7
	xor a			;59aa
	jp 00056h		;59ab   ; BIOS FILVRM - Fills VRAM with value
L_59AE:
	ld hl,02080h		;59ae
	ld bc,00300h		;59b1
	xor a			;59b4
	call L_595D		;59b5
	ld hl,00080h		;59b8
	ld bc,00300h		;59bb
	xor a			;59be
	jp L_595D		;59bf
L_59C2:
	ld c,0ffh		;59c2
L_59C4:
	ex de,hl			;59c4
	ld e,(hl)			;59c5
	inc hl			;59c6
	ld d,(hl)			;59c7
	ex de,hl			;59c8
	inc de			;59c9
L_59CA:
	ld a,(de)			;59ca
	inc de			;59cb
	ld b,a			;59cc
	inc b			;59cd
	ret z			;59ce
	inc b			;59cf
	jr z,L_59C4		;59d0
	and c			;59d2
	call 0004dh		;59d3   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;59d6
	jr L_59CA		;59d7
L_59D9:
	ld c,000h		;59d9
	jr L_59C4		;59db
L_59DD:
	ld a,(de)			;59dd
	inc de			;59de
	inc a			;59df
	ret z			;59e0
	dec a			;59e1
	cp 003h		;59e2
	jr z,L_59EA		;59e4
	cp 004h		;59e6
	jr nz,L_59F5		;59e8
L_59EA:
	push hl			;59ea
	ld bc,0ffdfh		;59eb
	add hl,bc			;59ee
	call 0004dh		;59ef   ; BIOS WRTVRM - Writes data in VRAM
	pop hl			;59f2
	jr L_59DD		;59f3
L_59F5:
	call 0004dh		;59f5   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;59f8
	jr L_59DD		;59f9
L_59FB:
	ld c,000h		;59fb
L_59FD:
	ex de,hl			;59fd
	ld e,(hl)			;59fe
	inc hl			;59ff
	ld d,(hl)			;5a00
	ex de,hl			;5a01
	inc de			;5a02
L_5A03:
	call L_592B		;5a03
L_5A06:
	ld a,(de)			;5a06
	and a			;5a07
	ret z			;5a08
	inc de			;5a09
	ld b,a			;5a0a
	and 07fh		;5a0b
	cp b			;5a0d
	jr z,L_5A1F		;5a0e
	and a			;5a10
	jr z,L_59FB		;5a11
	ld b,a			;5a13
L_5A14:
	call L_5A5E		;5a14
	exx			;5a17
	out (c),a		;5a18
	exx			;5a1a
	djnz L_5A14		;5a1b
	jr L_5A06		;5a1d
L_5A1F:
	call L_5A5E		;5a1f
L_5A22:
	exx			;5a22
	out (c),a		;5a23
	exx			;5a25
	djnz L_5A22		;5a26
	jr L_5A06		;5a28
L_5A2A:
	ld c,000h		;5a2a
	jr L_5A03		;5a2c
L_5A2E:
	ld c,001h		;5a2e
	jr L_59FD		;5a30
L_5A32:
	ld c,001h		;5a32
	jr L_5A03		;5a34
L_5A36:
	call L_5A42		;5a36
	ld a,020h		;5a39
	call L_40A6		;5a3b
	dec c			;5a3e
	jr nz,L_5A36		;5a3f
	ret			;5a41
L_5A42:
	push de			;5a42
L_5A43:
	ld b,010h		;5a43
L_5A45:
	call 0004ah		;5a45   ; BIOS RDVRM - Reads the content of VRAM
	call L_5A63		;5a48
	ex de,hl			;5a4b
	call 0004dh		;5a4c   ; BIOS WRTVRM - Writes data in VRAM
	ex de,hl			;5a4f
	inc e			;5a50
	inc hl			;5a51
	djnz L_5A45		;5a52
	ld a,e			;5a54
	sub 020h		;5a55
	ld e,a			;5a57
	bit 4,e		;5a58
	jr z,L_5A43		;5a5a
	pop de			;5a5c
	ret			;5a5d
L_5A5E:
	ld a,(de)			;5a5e
	inc de			;5a5f
	bit 0,c		;5a60
	ret z			;5a62
L_5A63:
	push bc			;5a63
	ld c,a			;5a64
	ld b,008h		;5a65
L_5A67:
	rr c		;5a67
	rla			;5a69
	djnz L_5A67		;5a6a
	pop bc			;5a6c
	ret			;5a6d
L_5A6E:
	call L_5ECA		;5a6e
	call L_411B		;5a71
	call 0800ah		;5a74
	call L_40F9		;5a77
	call L_45CE		;5a7a
	ld a,(0e360h)		;5a7d
	call L_40AB		;5a80

; ----------------------------------------------------------------------
; DATOS saltos_5A83: tabla de 10 palabras del despachador (call 0x408D en
;   0x5A80); lo leen L_40AB (20 bytes)
;   0x5a83..0x5a97  (20 bytes)
DATA_saltos_5A83:
	defb 097h,05ah	; 5a83
	defb 0d9h,05ah	; 5a85
	defb 0fah,05ah	; 5a87
	defb 04ah,05bh	; 5a89
	defb 0c0h,05bh	; 5a8b
	defb 0d3h,05bh	; 5a8d
	defb 0d4h,05bh	; 5a8f
	defb 0f6h,05bh	; 5a91
	defb 011h,05ch	; 5a93
	defb 041h,05ch	; 5a95

; ======================================================================
; CODIGO 0x5a97..0x5d8d  (758 bytes)
; ======================================================================


L_5A97:
	call L_5C58		;5a97
	ld a,(0e360h)		;5a9a
	cp 002h		;5a9d
	ret z			;5a9f
	ld a,(0e362h)		;5aa0
	or a			;5aa3
	jr nz,L_5AA9		;5aa4
	call 07162h		;5aa6
L_5AA9:
	call L_43E9		;5aa9
	call L_4AF9		;5aac
	call L_411B		;5aaf
	call 087ech		;5ab2
	call 0865ch		;5ab5
	call L_40F9		;5ab8
	ld a,(0e360h)		;5abb
	cp 003h		;5abe
	ret z			;5ac0
	call 08cf5h		;5ac1
	ld a,(0e337h)		;5ac4
	cp 003h		;5ac7
	jr z,L_5AD3		;5ac9
	and a			;5acb
	ret z			;5acc
	ld a,001h		;5acd
	ld (0e360h),a		;5acf
	ret			;5ad2
L_5AD3:
	ld a,008h		;5ad3
	ld (0e360h),a		;5ad5
	ret			;5ad8
L_5AD9:
	call 0844fh		;5ad9
	ld a,(0e378h)		;5adc
	and a			;5adf
	jr z,L_5AE9		;5ae0
	ld a,040h		;5ae2
	ld (0e004h),a		;5ae4
	ld a,004h		;5ae7
L_5AE9:
	ld (0e360h),a		;5ae9
	call 09e39h		;5aec
	call 0677fh		;5aef
	xor a			;5af2
	ld (0e337h),a		;5af3
	ld (0e3c5h),a		;5af6
	ret			;5af9
L_5AFA:
	call L_5C8F		;5afa
	ld a,(0e360h)		;5afd
	and a			;5b00
	ret z			;5b01
	cp 008h		;5b02
	ret z			;5b04
	call L_522B		;5b05
	call L_443D		;5b08
	ld a,(0e8a0h)		;5b0b
	cp 003h		;5b0e
	ret nc			;5b10
	ld a,(0e3a2h)		;5b11
	and a			;5b14
	ret nz			;5b15
	ld de,(0eb40h)		;5b16
	ld hl,00211h		;5b1a
	and a			;5b1d
	sbc hl,de		;5b1e
	ret z			;5b20
	ld hl,00212h		;5b21
	and a			;5b24
	sbc hl,de		;5b25
	ret z			;5b27
	ld hl,(0eb40h)		;5b28
	ld de,00220h		;5b2b
	and a			;5b2e
	sbc hl,de		;5b2f
	jr c,L_5B47		;5b31
	ld hl,(0eb40h)		;5b33
	ld de,00226h		;5b36
	and a			;5b39
	sbc hl,de		;5b3a
	ret c			;5b3c
	ld hl,(0eb40h)		;5b3d
	ld de,00235h		;5b40
	and a			;5b43
	sbc hl,de		;5b44
	ret z			;5b46
L_5B47:
	jp L_42D9		;5b47
L_5B4A:
	call 0771fh		;5b4a
	call L_42D9		;5b4d
	ld a,(0e880h)		;5b50
	ld (0e88ch),a		;5b53
	call L_4DFD		;5b56
	ld a,(0e886h)		;5b59
	and a			;5b5c
	ret nz			;5b5d
	ld de,(0eb40h)		;5b5e
	ld hl,00079h		;5b62
	and a			;5b65
	sbc hl,de		;5b66
	jr z,L_5B85		;5b68
	ld hl,00185h		;5b6a
	and a			;5b6d
	sbc hl,de		;5b6e
	jr z,L_5B93		;5b70
	ld hl,00201h		;5b72
	and a			;5b75
	sbc hl,de		;5b76
	jr z,L_5BA1		;5b78
	ld hl,001aah		;5b7a
	and a			;5b7d
	sbc hl,de		;5b7e
	jr z,L_5BAC		;5b80
	xor a			;5b82
	jr L_5BA8		;5b83
L_5B85:
	ld a,(0e88ch)		;5b85
	and a			;5b88
	jr nz,L_5B90		;5b89
	ld a,00ch		;5b8b
	ld (0e3c0h),a		;5b8d
L_5B90:
	xor a			;5b90
	jr L_5BA8		;5b91
L_5B93:
	ld a,(0e88ch)		;5b93
	cp 001h		;5b96
	jr nz,L_5BA1		;5b98
	ld a,006h		;5b9a
	ld (0e3c0h),a		;5b9c
	jr L_5B90		;5b9f
L_5BA1:
	ld hl,0e8a0h		;5ba1
	ld (hl),000h		;5ba4
	ld a,002h		;5ba6
L_5BA8:
	ld (0e360h),a		;5ba8
	ret			;5bab
L_5BAC:
	ld a,(0e88ch)		;5bac
	cp 00ah		;5baf
	jr z,L_5BA1		;5bb1
	cp 00bh		;5bb3
	jr z,L_5BA1		;5bb5
	xor a			;5bb7
	ld (0e887h),a		;5bb8
	ld (0e885h),a		;5bbb
	jr L_5B90		;5bbe
L_5BC0:
	call 0771fh		;5bc0
	call L_42D9		;5bc3
	call 0b3f9h		;5bc6
	ld a,(0e378h)		;5bc9
	and a			;5bcc
	ret nz			;5bcd
	xor a			;5bce
	ld (0e360h),a		;5bcf
	ret			;5bd2
L_5BD3:
	ret			;5bd3
L_5BD4:
	call L_40FF		;5bd4
	call 06019h		;5bd7
	call L_40F9		;5bda
	ld a,(0e379h)		;5bdd
	dec a			;5be0
	jr z,L_5BE8		;5be1
	ld c,001h		;5be3
	jp L_42A0		;5be5
L_5BE8:
	call L_40FF		;5be8
	call 0603fh		;5beb
	call L_40F9		;5bee
	ld c,000h		;5bf1
	jp L_42A0		;5bf3
L_5BF6:
	xor a			;5bf6
	ld (0e386h),a		;5bf7
	call L_413D		;5bfa
	call 06000h		;5bfd
	call L_40F9		;5c00
	call 0771fh		;5c03
	ld a,(0e386h)		;5c06
	and a			;5c09
	ret z			;5c0a
	ld a,001h		;5c0b
	ld (0e360h),a		;5c0d
	ret			;5c10
L_5C11:
	call L_5D33		;5c11
	ld a,(0e360h)		;5c14
	cp 002h		;5c17
	ret z			;5c19
	call L_43DB		;5c1a
	call L_4125		;5c1d
	call 08c56h		;5c20
	call 0ac1ch		;5c23
	call L_40F9		;5c26
	call 077d3h		;5c29
	call 08311h		;5c2c
	call 0b578h		;5c2f
	call 0b5e8h		;5c32
	call L_4125		;5c35
	call 0a718h		;5c38
	call 06bbch		;5c3b
	jp L_40F9		;5c3e
L_5C41:
	call 08311h		;5c41
	ld a,(0e880h)		;5c44
	ld (0e88ch),a		;5c47
	call L_4DFD		;5c4a
	ld a,(0e886h)		;5c4d
	and a			;5c50
	ret nz			;5c51
	ld a,008h		;5c52
	ld (0e360h),a		;5c54
	ret			;5c57
L_5C58:
	ld a,(0e362h)		;5c58
	and a			;5c5b
	jr nz,L_5C74		;5c5c
	ld a,(0e3a9h)		;5c5e
	and a			;5c61
	ret nz			;5c62
	ld a,(0e3c4h)		;5c63
	and a			;5c66
	ret nz			;5c67
	ld a,(0e008h)		;5c68
	and 020h		;5c6b
	ret z			;5c6d
	ld a,001h		;5c6e
	ld (0e362h),a		;5c70
	ret			;5c73
L_5C74:
	ld hl,0e40ah		;5c74
	ld de,00080h		;5c77
	ld b,008h		;5c7a
L_5C7C:
	ld a,(hl)			;5c7c
	or a			;5c7d
	ret nz			;5c7e
	add hl,de			;5c7f
	djnz L_5C7C		;5c80
	ld a,002h		;5c82
	ld (0e360h),a		;5c84
	xor a			;5c87
	ld (0e8a0h),a		;5c88
	ld (0e362h),a		;5c8b
	ret			;5c8e
L_5C8F:
	ld a,(0e8a0h)		;5c8f
	cp 005h		;5c92
	jr c,L_5C99		;5c94
	cp 008h		;5c96
	ret c			;5c98
L_5C99:
	ld a,(0e008h)		;5c99
	and 020h		;5c9c
	ret z			;5c9e
	ld de,(0eb40h)		;5c9f
	ld hl,00211h		;5ca3
	and a			;5ca6
	sbc hl,de		;5ca7
	jp z,L_5D2B		;5ca9
	ld hl,00235h		;5cac
	and a			;5caf
	sbc hl,de		;5cb0
	ret z			;5cb2
	ld a,(0e372h)		;5cb3
	dec a			;5cb6
	ret z			;5cb7
	ld de,(0eb40h)		;5cb8
	ld hl,00201h		;5cbc
	and a			;5cbf
	sbc hl,de		;5cc0
	jr nz,L_5CCD		;5cc2
	ld a,(0e9d2h)		;5cc4
	bit 7,a		;5cc7
	jr z,L_5CFC		;5cc9
	jr L_5CD5		;5ccb
L_5CCD:
	ld hl,001aah		;5ccd
	and a			;5cd0
	sbc hl,de		;5cd1
	jr z,L_5D01		;5cd3
L_5CD5:
	ld a,(0e8a6h)		;5cd5
	inc a			;5cd8
	jr z,L_5CEB		;5cd9
	ld hl,(0e365h)		;5cdb
	ld de,00040h		;5cde
	add hl,de			;5ce1
	ex de,hl			;5ce2
	ld hl,0e8d0h		;5ce3
	ld bc,00010h		;5ce6
	ldir		;5ce9
L_5CEB:
	xor a			;5ceb
	ld (0e360h),a		;5cec
	ld (0e362h),a		;5cef
	call L_585C		;5cf2
	xor a			;5cf5
	ld (0e368h),a		;5cf6
	jp L_443D		;5cf9
L_5CFC:
	ld c,007h		;5cfc
	jp L_42A0		;5cfe
L_5D01:
	ld hl,0eb6dh		;5d01
	bit 7,(hl)		;5d04
	jr nz,L_5CD5		;5d06
	ld hl,0eb6ch		;5d08
	bit 7,(hl)		;5d0b
	jr z,L_5CD5		;5d0d
	ld a,(hl)			;5d0f
	and 03fh		;5d10
	cp 03fh		;5d12
	jr z,L_5D1B		;5d14
	ld c,00bh		;5d16
	jp L_42A0		;5d18
L_5D1B:
	xor a			;5d1b
	ld (0e368h),a		;5d1c
	inc a			;5d1f
	ld (0eb7bh),a		;5d20
	call L_443D		;5d23
	ld c,00ch		;5d26
	jp L_42A0		;5d28
L_5D2B:
	ld a,008h		;5d2b
	ld (0e360h),a		;5d2d
	jp L_585C		;5d30
L_5D33:
	ld a,(0e008h)		;5d33
	and 020h		;5d36
	ret z			;5d38
	ld a,(0e3eah)		;5d39
	and a			;5d3c
	ret nz			;5d3d
	ld de,(0eb40h)		;5d3e
	ld hl,00211h		;5d42
	and a			;5d45
	sbc hl,de		;5d46
	ret nz			;5d48
	ld a,(0ea01h)		;5d49
	cp 002h		;5d4c
	ret z			;5d4e
	cp 004h		;5d4f
	ret z			;5d51
	cp 006h		;5d52
	jr c,L_5D59		;5d54
	cp 00ah		;5d56
	ret c			;5d58
L_5D59:
	ld a,002h		;5d59
	ld (0e360h),a		;5d5b
	ld a,009h		;5d5e
	ld (0e8a0h),a		;5d60
	ret			;5d63
L_5D64:
	ld hl,(0e3c1h)		;5d64
	ld a,(0e3c6h)		;5d67
L_5D6A:
	ld b,a			;5d6a
	add a,a			;5d6b
	ld de,05de7h		;5d6c
	call L_40A6		;5d6f
	ld a,(de)			;5d72
	add a,l			;5d73
	ld l,a			;5d74
	inc de			;5d75
	ld a,(de)			;5d76
	add a,h			;5d77
	ld h,a			;5d78
	call L_451D		;5d79
	ld a,(hl)			;5d7c
	or a			;5d7d
	ld a,b			;5d7e
	ret			;5d7f
L_5D80:
	ld a,(0e3c6h)		;5d80
	ld hl,(0e3c1h)		;5d83
	ld (0e8e0h),hl		;5d86
L_5D89:
	dec a			;5d89
	call L_40AB		;5d8a

; ----------------------------------------------------------------------
; DATOS saltos_5D8D: tabla de 4 palabras del despachador (call 0x408D en
;   0x5D8A); lo leen L_40AB (8 bytes)
;   0x5d8d..0x5d95  (8 bytes)
DATA_saltos_5D8D:
	defb 095h,05dh	; 5d8d
	defb 09ah,05dh	; 5d8f
	defb 0a0h,05dh	; 5d91
	defb 0a5h,05dh	; 5d93

; ======================================================================
; CODIGO 0x5d95..0x5daf  (26 bytes)
; ======================================================================


L_5D95:
	ld a,(0e8e0h)		;5d95
	or a			;5d98
	ret			;5d99
L_5D9A:
	ld a,(0e8e0h)		;5d9a
	cp 070h		;5d9d
	ret			;5d9f
L_5DA0:
	ld a,(0e8e1h)		;5da0
	or a			;5da3
	ret			;5da4
L_5DA5:
	ld a,(0e8e1h)		;5da5
	cp 0b0h		;5da8
	ret			;5daa
L_5DAB:
	dec a			;5dab
	call L_40AB		;5dac

; ----------------------------------------------------------------------
; DATOS saltos_5DAF: tabla de 4 palabras del despachador (call 0x408D en
;   0x5DAC); lo leen L_40AB (8 bytes)
;   0x5daf..0x5db7  (8 bytes)
DATA_saltos_5DAF:
	defb 0b7h,05dh	; 5daf
	defb 0beh,05dh	; 5db1
	defb 0c5h,05dh	; 5db3
	defb 0cch,05dh	; 5db5

; ======================================================================
; CODIGO 0x5db7..0x5de7  (48 bytes)
; ======================================================================


L_5DB7:
	ld a,(0e8e0h)		;5db7
	cp (ix+030h)		;5dba
	ret			;5dbd
L_5DBE:
	ld a,(0e8e0h)		;5dbe
	cp (ix+031h)		;5dc1
	ret			;5dc4
L_5DC5:
	ld a,(0e8e1h)		;5dc5
	cp (ix+032h)		;5dc8
	ret			;5dcb
L_5DCC:
	ld a,(0e8e1h)		;5dcc
	cp (ix+033h)		;5dcf
	ret			;5dd2
L_5DD3:
	add a,a			;5dd3
	ld de,05de7h		;5dd4
	call L_40A6		;5dd7
	ld a,(de)			;5dda
	add a,l			;5ddb
	ld l,a			;5ddc
	inc de			;5ddd
	ld a,(de)			;5dde
	add a,h			;5ddf
	ld h,a			;5de0
	call L_451D		;5de1
	ld (hl),b			;5de4
	xor a			;5de5
	ret			;5de6

; ----------------------------------------------------------------------
; DATOS resto_5DE7: lo apuntan con el banco puesto p00:5D6C (0x5DE7), p00:5DD4
;   (0x5DE7); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p00:5D6C, p00:5DD4 (10 bytes)
;   0x5de7..0x5df1  (10 bytes)
DATA_resto_5DE7:
	defb 000h,000h,0f0h,000h,010h,000h,000h,0f0h,000h,010h	; 5de7  ..........

; ======================================================================
; CODIGO 0x5df1..0x5f21  (304 bytes)
; ======================================================================


L_5DF1:
	ld hl,0ed00h		;5df1
	call L_5DFA		;5df4
	ld hl,0ee00h		;5df7
L_5DFA:
	xor a			;5dfa
	ld b,004h		;5dfb
L_5DFD:
	push bc			;5dfd
	ld c,008h		;5dfe
L_5E00:
	ld b,008h		;5e00
L_5E02:
	ld (hl),a			;5e02
	inc hl			;5e03
	inc a			;5e04
	djnz L_5E02		;5e05
	ld de,00018h		;5e07
	add hl,de			;5e0a
	dec c			;5e0b
	jr nz,L_5E00		;5e0c
	pop bc			;5e0e
	ld de,000f8h		;5e0f
	and a			;5e12
	sbc hl,de		;5e13
	djnz L_5DFD		;5e15
	ret			;5e17
L_5E18:
	ld hl,0ed44h		;5e18
	ld de,00010h		;5e1b
	ld a,010h		;5e1e
	ld c,006h		;5e20
L_5E22:
	ld b,010h		;5e22
L_5E24:
	ld (hl),a			;5e24
	inc a			;5e25
	inc hl			;5e26
	djnz L_5E24		;5e27
	add hl,de			;5e29
	dec c			;5e2a
	jr nz,L_5E22		;5e2b
	ld hl,0ee04h		;5e2d
	ld de,00010h		;5e30
	ld a,060h		;5e33
	ld c,006h		;5e35
L_5E37:
	ld b,010h		;5e37
L_5E39:
	ld (hl),a			;5e39
	inc a			;5e3a
	inc hl			;5e3b
	djnz L_5E39		;5e3c
	sub 020h		;5e3e
	add hl,de			;5e40
	dec c			;5e41
	jr nz,L_5E37		;5e42
	ret			;5e44
L_5E45:
	ld hl,03800h		;5e45
	ld de,0ed00h		;5e48
	ld bc,001e0h		;5e4b
	jp L_5EAE		;5e4e
L_5E51:
	ld hl,03800h		;5e51
	ld de,0ed00h		;5e54
	ld bc,00300h		;5e57
	call L_5EAE		;5e5a
	jr L_5EA9		;5e5d
L_5E5F:
	ld hl,03800h		;5e5f
	ld de,0ed00h		;5e62
	ld b,010h		;5e65
	jr L_5E71		;5e67
L_5E69:
	ld hl,03a00h		;5e69
	ld de,0ef00h		;5e6c
	ld b,008h		;5e6f
L_5E71:
	push bc			;5e71
	ld bc,00018h		;5e72
	push hl			;5e75
	call L_5EAE		;5e76
	ex de,hl			;5e79
	ld a,008h		;5e7a
	call L_40A6		;5e7c
	pop hl			;5e7f
	ld a,020h		;5e80
	call L_40A1		;5e82
	pop bc			;5e85
	djnz L_5E71		;5e86
	jr L_5EA9		;5e88
L_5E8A:
	ld hl,03918h		;5e8a
	ld de,0ee18h		;5e8d
	ld b,007h		;5e90
L_5E92:
	push bc			;5e92
	ld bc,00008h		;5e93
	push hl			;5e96
	call L_5EAE		;5e97
	ex de,hl			;5e9a
	ld a,018h		;5e9b
	call L_40A6		;5e9d
	pop hl			;5ea0
	ld a,020h		;5ea1
	call L_40A1		;5ea3
	pop bc			;5ea6
	djnz L_5E92		;5ea7
L_5EA9:
	xor a			;5ea9
	ld (0e36ch),a		;5eaa
	ret			;5ead
L_5EAE:
	call 00053h		;5eae   ; BIOS SETWRT - Enables VDP to write
	ex de,hl			;5eb1
	ld e,c			;5eb2
	ld d,b			;5eb3
	ld a,(00007h)		;5eb4
	ld c,a			;5eb7
L_5EB8:
	ld a,(0e36ch)		;5eb8
	and a			;5ebb
	ld a,000h		;5ebc
	jr nz,L_5EC1		;5ebe
	ld a,(hl)			;5ec0
L_5EC1:
	inc hl			;5ec1
	out (c),a		;5ec2
	dec de			;5ec4
	ld a,d			;5ec5
	or e			;5ec6
	jr nz,L_5EB8		;5ec7
	ret			;5ec9
L_5ECA:
	ld a,(0e007h)		;5eca
	rra			;5ecd
	jp c,L_5F15		;5ece
	ld hl,03b00h		;5ed1
	call 00053h		;5ed4   ; BIOS SETWRT - Enables VDP to write
	ld a,(00007h)		;5ed7
	ld c,a			;5eda
	ld hl,0e006h		;5edb
	ld a,(hl)			;5ede
	add a,068h		;5edf
	and 078h		;5ee1
	ld (hl),a			;5ee3
	ld e,(hl)			;5ee4
	ld b,010h		;5ee5
	ld h,0f0h		;5ee7
L_5EE9:
	ld l,e			;5ee9
	ld a,(hl)			;5eea
	inc hl			;5eeb
	dec a			;5eec
	out (c),a		;5eed
	ld a,(hl)			;5eef
	inc hl			;5ef0
	out (c),a		;5ef1
	ld a,(hl)			;5ef3
	inc hl			;5ef4
	out (c),a		;5ef5
	ld a,(hl)			;5ef7
	inc hl			;5ef8
	out (c),a		;5ef9
	ld a,(hl)			;5efb
	inc hl			;5efc
	dec a			;5efd
	out (c),a		;5efe
	ld a,(hl)			;5f00
	inc hl			;5f01
	out (c),a		;5f02
	ld a,(hl)			;5f04
	inc hl			;5f05
	out (c),a		;5f06
	ld a,(hl)			;5f08
	inc hl			;5f09
	out (c),a		;5f0a
	ld a,e			;5f0c
	add a,048h		;5f0d
	and 078h		;5f0f
	ld e,a			;5f11
	djnz L_5EE9		;5f12
	ret			;5f14
L_5F15:
	ld hl,03b00h		;5f15
	ld de,0f000h		;5f18
	ld bc,00080h		;5f1b
	jp L_5941		;5f1e

; ----------------------------------------------------------------------
; DATOS relleno_ff: 223 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (223 bytes)
;   0x5f21..0x6000  (223 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f21  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f31  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f41  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f51  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f61  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f71  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f81  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f91  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fa1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fb1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fc1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fd1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fe1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ff1  ...............
