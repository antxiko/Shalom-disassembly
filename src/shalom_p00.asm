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


borra_zona_de_juego_y_21_22_23:		; borra 16 filas x 24 de 0xED00 y las vuelca; vuelve con 21-22-23
	call borra_zona_de_juego		;402e   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	jp bancos_21_22_23		;4031   ; bancos_21_22_23: pone los bancos 21-22-23
graficos_del_marcador_y_21_22_23:		; patrones p12:7360 y colores p12:73D0 en dos tercios y nombres p12:73FD; vuelve con 21-22-23
	call graficos_del_marcador		;4034   ; graficos_del_marcador: patrones p12:7360 y colores p12:73D0 en dos tercios y nombres p12:73FD
	jp bancos_21_22_23		;4037   ; bancos_21_22_23: pone los bancos 21-22-23
vuelca_zona_de_juego_y_21_22_23:		; 16 filas x 24 de 0xED00 a 0x3800; vuelve con 21-22-23
	call vuelca_zona_de_juego		;403a   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp bancos_21_22_23		;403d   ; bancos_21_22_23: pone los bancos 21-22-23
sonido_28_y_21_22_23:		; pide el sonido 0x28; vuelve con 21-22-23
	call sonido_28		;4040   ; sonido_28: pide el sonido 0x28
	jp bancos_21_22_23		;4043   ; bancos_21_22_23: pone los bancos 21-22-23
vuelca_ventana_y_12_13_14:		; 8 filas x 24 de 0xEF00 a 0x3A00 (la ventana del texto); vuelve con 12-13-14
	call vuelca_ventana		;4046   ; vuelca_ventana: 8 filas x 24 de 0xEF00 a 0x3A00 (la ventana del texto)
	jp bancos_12_13_14		;4049   ; bancos_12_13_14: pone los bancos 12-13-14
interrupcion:		; gancho H.KEYI: la musica con 29-30-31 (p29:6449) y, si no esta ya dentro, el cuadro del juego
	call 0013eh		;404c   ; BIOS RDVDP - Reads VDP status register
	di			;404f
	ld hl,0e005h		;4050   ; apunta a la interrupcion: bit 0 dentro del cuadro, bit 4 sin musica
	bit 4,(hl)		;4053
	jr nz,L_4079		;4055
	ld a,01dh		;4057
	ld (06000h),a		;4059   ; el mapper: pone en 0x6000 el banco de A
	inc a			;405c
	ld (08000h),a		;405d   ; el mapper: pone en 0x8000 el banco de A
	inc a			;4060
	ld (0a000h),a		;4061   ; el mapper: pone en 0xA000 el banco de A
	call 06449h		;4064   ; motor_cuadro: un cuadro del sonido (lo llama la interrupcion): fundidos, los 5 canales y los registros del PSG
	ld a,(0f0f1h)		;4067   ; lee la copia del banco de 0x6000
	ld (06000h),a		;406a   ; el mapper: pone en 0x6000 el banco de A
	ld a,(0f0f2h)		;406d   ; lee la copia del banco de 0x8000
	ld (08000h),a		;4070   ; el mapper: pone en 0x8000 el banco de A
	ld a,(0f0f3h)		;4073   ; lee la copia del banco de 0xA000
	ld (0a000h),a		;4076   ; el mapper: pone en 0xA000 el banco de A
L_4079:
	ld hl,0e005h		;4079   ; apunta a la interrupcion: bit 0 dentro del cuadro, bit 4 sin musica
	bit 0,(hl)		;407c
	jr nz,L_409C		;407e
	inc (hl)			;4080
	ei			;4081
	call 070b8h		;4082   ; lee_los_mandos: 0xE009 = lo que hay, 0xE008 = lo nuevo
	ld a,(0e008h)		;4085   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	and 080h		;4088
	jr z,L_4095		;408a
	ld a,(0f0fah)		;408c   ; lee sin el sonido de las letras (cambia con la tecla del bit 7)
	cpl			;408f
	and 001h		;4090
	ld (0f0fah),a		;4092   ; guarda sin el sonido de las letras (cambia con la tecla del bit 7)
L_4095:
	call 064c8h		;4095   ; cuadro: un cuadro del juego (lo llama la interrupcion): cuenta 0xE003 y despacha el estado 0xE000 (tabla p01:64DF)
	xor a			;4098
	ld (0e005h),a		;4099   ; guarda la interrupcion: bit 0 dentro del cuadro, bit 4 sin musica
L_409C:
	call 0013eh		;409c   ; BIOS RDVDP - Reads VDP status register
	ret			;409f
hl_mas_2a:		; HL = HL + 2 * A
	add a,a			;40a0
hl_mas_a:		; HL = HL + A
	add a,l			;40a1
	ld l,a			;40a2
	ret nc			;40a3
	inc h			;40a4
	ret			;40a5
de_mas_a:		; DE = DE + A
	add a,e			;40a6
	ld e,a			;40a7
	ret nc			;40a8
	inc d			;40a9
	ret			;40aa
despacha:		; salta a la palabra A de la tabla pegada detras del `call`
	pop hl			;40ab
	add a,a			;40ac
	call hl_mas_a		;40ad   ; hl_mas_a: HL = HL + A
	ld e,(hl)			;40b0
	inc hl			;40b1
	ld d,(hl)			;40b2
	ex de,hl			;40b3
	jp (hl)			;40b4
despacha_hl:		; salta a la palabra HL de la tabla pegada detras del `call`
	pop de			;40b5
	add hl,hl			;40b6
	add hl,de			;40b7
	ld e,(hl)			;40b8
	inc hl			;40b9
	ld d,(hl)			;40ba
	ex de,hl			;40bb
	jp (hl)			;40bc
cartucho_en_8000:		; pone en 0x8000 el slot del cartucho (ENASLT)
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
slot_del_cartucho:		; A = el slot del cartucho (primario y secundario), copia en 0xF0F8
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
	ld (0f0f8h),a		;40f5   ; guarda el slot del cartucho
	ret			;40f8
bancos_1_2_3:		; pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	di			;40f9
	push af			;40fa
	ld a,001h		;40fb
	jr pon_trio		;40fd
bancos_4_5_6:		; pone los bancos 4-5-6 (p00:4103)
	di			;40ff
	push af			;4100
	ld a,004h		;4101
pon_trio:		; pone A, A+1 y A+2 en 0x6000, 0x8000 y 0xA000 y su copia
	push hl			;4103
	ld hl,0f0f1h		;4104   ; apunta a la copia del banco de 0x6000
	ld (06000h),a		;4107   ; el mapper: pone en 0x6000 el banco de A
	ld (hl),a			;410a
	inc a			;410b
	inc hl			;410c
pon_duo:		; pone A y A+1 en 0x8000 y 0xA000 y su copia
	ld (08000h),a		;410d   ; el mapper: pone en 0x8000 el banco de A
	ld (hl),a			;4110
	inc a			;4111
	inc hl			;4112
	ld (0a000h),a		;4113   ; el mapper: pone en 0xA000 el banco de A
	ld (hl),a			;4116
	pop hl			;4117
	pop af			;4118
	ei			;4119
	ret			;411a
bancos_7_8:		; pone los bancos 7-8 en 0x8000 y 0xA000
	di			;411b
	push af			;411c
	ld a,007h		;411d
	push hl			;411f
	ld hl,0f0f2h		;4120   ; apunta a la copia del banco de 0x8000
	jr pon_duo		;4123
bancos_9_10_11:		; pone los bancos 9-10-11
	di			;4125
	push af			;4126
	ld a,009h		;4127
	jr pon_trio		;4129
bancos_12_13_14:		; pone los bancos 12-13-14
	di			;412b
	push af			;412c
	ld a,00ch		;412d
	jr pon_trio		;412f
bancos_15_16_17:		; pone los bancos 15-16-17
	di			;4131
	push af			;4132
	ld a,00fh		;4133
	jr pon_trio		;4135
bancos_18_19_20:		; pone los bancos 18-19-20
	di			;4137
	push af			;4138
	ld a,012h		;4139
	jr pon_trio		;413b
bancos_21_22_23:		; pone los bancos 21-22-23
	di			;413d
	push af			;413e
	ld a,015h		;413f
	jr pon_trio		;4141
bancos_24_25_26:		; pone los bancos 24-25-26
	di			;4143
	push af			;4144
	ld a,018h		;4145
	jr pon_trio		;4147
bancos_27_28:		; pone los bancos 27-28 en 0x8000 y 0xA000
	di			;4149
	push af			;414a
	ld a,01bh		;414b
	push hl			;414d
	ld hl,0f0f2h		;414e   ; apunta a la copia del banco de 0x8000
	jr pon_duo		;4151
efecto:		; pide el sonido A si 0xE002 lleva el bit 6
	push hl			;4153
	ld hl,0e002h		;4154   ; apunta a las banderas del juego (bit 6: suenan los efectos)
	bit 6,(hl)		;4157
	pop hl			;4159
	ret z			;415a
pide_sonido:		; pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
	di			;415b
	push ix		;415c
	push hl			;415e
	push de			;415f
	push bc			;4160
	push af			;4161
	ld hl,(0f0f1h)		;4162   ; lee la copia del banco de 0x6000 y el byte siguiente (16 bits)
	ld de,(0f0f3h)		;4165   ; lee la copia del banco de 0xA000 y el byte siguiente (16 bits)
	push hl			;4169
	push de			;416a
	push af			;416b
	ld a,01dh		;416c
	ld (06000h),a		;416e   ; el mapper: pone en 0x6000 el banco de A
	ld (0f0f1h),a		;4171   ; guarda la copia del banco de 0x6000
	inc a			;4174
	ld (08000h),a		;4175   ; el mapper: pone en 0x8000 el banco de A
	ld (0f0f2h),a		;4178   ; guarda la copia del banco de 0x8000
	inc a			;417b
	ld (0f0f3h),a		;417c   ; guarda la copia del banco de 0xA000
	ld (0a000h),a		;417f   ; el mapper: pone en 0xA000 el banco de A
	pop af			;4182
	call 06000h		;4183   ; motor_pide: el sonido A: 0x80 corta el fundido, 0x81/0x85/0x86 funden, 0x84 sube; si no, su cabecera (p29:612F) a los canales de menos prioridad
	pop de			;4186
	pop hl			;4187
	ld (0f0f1h),hl		;4188   ; guarda la copia del banco de 0x6000 y el byte siguiente (16 bits)
	ld (0f0f3h),de		;418b   ; guarda la copia del banco de 0xA000 y el byte siguiente (16 bits)
	ld a,l			;418f
	ld (06000h),a		;4190   ; el mapper: pone en 0x6000 el banco de A
	ld a,h			;4193
	ld (08000h),a		;4194   ; el mapper: pone en 0x8000 el banco de A
	ld a,e			;4197
	ld (0a000h),a		;4198   ; el mapper: pone en 0xA000 el banco de A
	pop af			;419b
	pop bc			;419c
	pop de			;419d
	pop hl			;419e
	pop ix		;419f
	ei			;41a1
	ret			;41a2
init:		; INIT del cartucho: engancha H.STKE para arrancar cuando el BASIC acabe
	di			;41a3
	call slot_del_cartucho		;41a4   ; slot_del_cartucho: A = el slot del cartucho (primario y secundario), copia en 0xF0F8
	di			;41a7
	ld h,a			;41a8
	ld l,0f7h		;41a9
	ld (0fedah),hl		;41ab
	ld hl,arranque		;41ae
	ld (0fedch),hl		;41b1
	ret			;41b4
arranque:		; pila, RAM a cero, ganchos, bancos 1-2-3 y la presentacion (p01:60CB); se queda en `jr $`
	di			;41b5
	im 1		;41b6
	ld sp,0e210h		;41b8   ; la musica que suena
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
	call cartucho_en_8000		;41dc   ; cartucho_en_8000: pone en 0x8000 el slot del cartucho (ENASLT)
	call slot_del_cartucho		;41df   ; slot_del_cartucho: A = el slot del cartucho (primario y secundario), copia en 0xF0F8
	ld a,0c3h		;41e2
	ld (0fd9ah),a		;41e4
	ld hl,interrupcion		;41e7
	ld (0fd9bh),hl		;41ea
	xor a			;41ed
	ld (04000h),a		;41ee
	ld (0f0f0h),a		;41f1
	inc a			;41f4
	ld (06000h),a		;41f5   ; el mapper: pone en 0x6000 el banco de A
	ld (0f0f1h),a		;41f8   ; guarda la copia del banco de 0x6000
	inc a			;41fb
	ld (08000h),a		;41fc   ; el mapper: pone en 0x8000 el banco de A
	ld (0f0f2h),a		;41ff   ; guarda la copia del banco de 0x8000
	inc a			;4202
	ld (0a000h),a		;4203   ; el mapper: pone en 0xA000 el banco de A
	ld (0f0f3h),a		;4206   ; guarda la copia del banco de 0xA000
	xor a			;4209
	ld hl,0f0f4h		;420a
	ld (hl),a			;420d
	inc hl			;420e
	ld (hl),a			;420f
	inc hl			;4210
	ld (hl),a			;4211
	di			;4212
	ld hl,0e000h		;4213   ; apunta a el estado del juego
	ld de,0e001h		;4216   ; apunta a el paso del estado
	ld bc,0010fh		;4219
	ld (hl),000h		;421c
	ldir		;421e
	ld hl,0e210h		;4220   ; apunta a la musica que suena
	ld de,0e211h		;4223
	ld bc,00edfh		;4226
	ld (hl),000h		;4229
	ldir		;422b
	ld a,011h		;422d
	ld (0e005h),a		;422f   ; guarda la interrupcion: bit 0 dentro del cuadro, bit 4 sin musica
	call 060cbh		;4232   ; busca_otro_cartucho: busca en los cuatro slots (y sus subslots) un cartucho con YZ en 0x4010; su slot en 0xF0F7, 0xF0F9 = 1
	call 07083h		;4235   ; enciende_la_maquina: PSG en silencio, VRAM a cero y los registros del VDP
	xor a			;4238
	ld (0e005h),a		;4239   ; guarda la interrupcion: bit 0 dentro del cuadro, bit 4 sin musica
	call 0013eh		;423c   ; BIOS RDVDP - Reads VDP status register
	ei			;423f
L_4240:
	jr L_4240		;4240
a_rotulo_konami_cuadro:		; con 4-5-6, p04:6555 (una columna del rotulo cada cuadro: carga la pantalla 0xE00F (p04:65B8) en 0xED00 y la va pintando (p04:65C4)); vuelve con 1-2-3
	call bancos_4_5_6		;4242   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 06555h		;4245   ; rotulo_konami_cuadro: una columna del rotulo cada cuadro: carga la pantalla 0xE00F (p04:65B8) en 0xED00 y la va pintando (p04:65C4)
	jp bancos_1_2_3		;4248   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_titulo:		; con 4-5-6, p04:622B (monta el titulo (p04:6234) y el texto p04:606C); vuelve con 1-2-3
	call bancos_4_5_6		;424b   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 0622bh		;424e   ; titulo: monta el titulo (p04:6234) y el texto p04:606C
	jp bancos_1_2_3		;4251   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_rotulo_konami:		; con 4-5-6, p04:6527 (el RLE p04:7761 y 6 filas x 21 nombres desde 0x40 en 0x3907); vuelve con 1-2-3
	call bancos_4_5_6		;4254   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 06527h		;4257   ; rotulo_konami: el RLE p04:7761 y 6 filas x 21 nombres desde 0x40 en 0x3907
	jp bancos_1_2_3		;425a   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_titulo_cuadro:		; con 4-5-6, p04:6266 (un cuadro del titulo: espera, sonido 0x50 y los sprites que aparecen (0xE3AC, p04:62C3)); vuelve con 1-2-3
	call bancos_4_5_6		;425d   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 06266h		;4260   ; titulo_cuadro: un cuadro del titulo: espera, sonido 0x50 y los sprites que aparecen (0xE3AC, p04:62C3)
	jp bancos_1_2_3		;4263   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_escena_inicial:		; con 4-5-6, p04:6693 (un paso de la escena inicial (0xE350, tabla p04:6699)); vuelve con 1-2-3
	call bancos_4_5_6		;4266   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 06693h		;4269   ; escena_inicial: un paso de la escena inicial (0xE350, tabla p04:6699)
	jp bancos_1_2_3		;426c   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_fuente_y_colores:		; con 4-5-6, p04:6487 (la fuente en los tres tercios y su color); vuelve con 1-2-3
	call bancos_4_5_6		;426f   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 06487h		;4272   ; fuente_y_colores: la fuente en los tres tercios y su color
	jp bancos_1_2_3		;4275   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_estado_6_pantalla:		; con 4-5-6, p06:AEFC (el final segun 0xE338 (tabla p06:AF02)); vuelve con 1-2-3
	call bancos_4_5_6		;4278   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 0aefch		;427b   ; estado_6_pantalla: el final segun 0xE338 (tabla p06:AF02)
	jp bancos_1_2_3		;427e   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_final:		; con 9-10-11, p09:6C23 (un paso del final del juego (0xE350, tabla p09:6C29)); vuelve con 1-2-3
	call bancos_9_10_11		;4281   ; bancos_9_10_11: pone los bancos 9-10-11
	call 06c23h		;4284   ; final: un paso del final del juego (0xE350, tabla p09:6C29)
	jp bancos_1_2_3		;4287   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_anima_al_de_enfrente:		; con 7-8, p07:8758 (un paso de la animacion del actor de enfrente (0xE370, tabla p07:8762)); vuelve con 1-2-3
	call bancos_7_8		;428a   ; bancos_7_8: pone los bancos 7-8 en 0x8000 y 0xA000
	push ix		;428d
	call 08758h		;428f   ; anima_al_de_enfrente: un paso de la animacion del actor de enfrente (0xE370, tabla p07:8762)
	pop ix		;4292
	jp bancos_1_2_3		;4294   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_crea_actor:		; con 7-8, p07:82FE (en el primer hueco de 0xE400: el tipo BC en (E, D), direccion al azar, colores (p07:83B4) y nombre (p08:A063)); vuelve con 1-2-3
	call bancos_7_8		;4297   ; bancos_7_8: pone los bancos 7-8 en 0x8000 y 0xA000
	call 082feh		;429a   ; crea_actor: en el primer hueco de 0xE400: el tipo BC en (E, D), direccion al azar, colores (p07:83B4) y nombre (p08:A063)
	jp bancos_1_2_3		;429d   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
habla_con_1_2_3_y_1_2_3:		; datos del personaje, p03:AB92, el texto y modo 3; vuelve con 1-2-3
	call habla_con_1_2_3		;42a0   ; habla_con_1_2_3: datos del personaje, p03:AB92, el texto y modo 3
	jp bancos_1_2_3		;42a3   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
habla_y_1_2_3:		; datos del personaje, p03:AB92, el texto y modo 9; vuelve con 1-2-3
	call habla		;42a6   ; habla: datos del personaje, p03:AB92, el texto y modo 9
	jp bancos_1_2_3		;42a9   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_fuente:		; con 4-5-6, p04:648C (la fuente en 0x2808 y 0x3000 y su color); vuelve con 1-2-3
	call bancos_4_5_6		;42ac   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 0648ch		;42af   ; fuente: la fuente en 0x2808 y 0x3000 y su color
	jp bancos_1_2_3		;42b2   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_marco_de_la_escena:		; con 4-5-6, p04:631F (los RLE p04:633D y p04:6432, el dibujo p04:6443 y 8 x 8 nombres en 0x3818); vuelve con 1-2-3
	call bancos_4_5_6		;42b5   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 0631fh		;42b8   ; marco_de_la_escena: los RLE p04:633D y p04:6432, el dibujo p04:6443 y 8 x 8 nombres en 0x3818
	jp bancos_1_2_3		;42bb   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_dibujos_de_la_sala:		; con 9-10-11, p09:622B (en las salas de p09:6291, los dibujos de p09:63A5 (0xFE cambia el color)); vuelve con 1-2-3
	call bancos_9_10_11		;42be   ; bancos_9_10_11: pone los bancos 9-10-11
	call 0622bh		;42c1   ; dibujos_de_la_sala: en las salas de p09:6291, los dibujos de p09:63A5 (0xFE cambia el color)
	jp bancos_1_2_3		;42c4   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_dibujos_por_bandera:		; con 9-10-11, p09:60CC (en las salas de p09:613C, los dibujos de p09:6162 cuya bandera de la historia esta puesta); vuelve con 1-2-3
	call bancos_9_10_11		;42c7   ; bancos_9_10_11: pone los bancos 9-10-11
	call 060cch		;42ca   ; dibujos_por_bandera: en las salas de p09:613C, los dibujos de p09:6162 cuya bandera de la historia esta puesta
	jp bancos_1_2_3		;42cd   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_crea_actores_de_la_sala:		; con 7-8, p07:827A (borra los 8 actores y crea los de la lista p07:8BC2[sala] (o p07:9032/904C); luego el actor 0xC8 de 0xEB69/0xEB7A); vuelve con 1-2-3
	call bancos_7_8		;42d0   ; bancos_7_8: pone los bancos 7-8 en 0x8000 y 0xA000
	call 0827ah		;42d3   ; crea_actores_de_la_sala: borra los 8 actores y crea los de la lista p07:8BC2[sala] (o p07:9032/904C); luego el actor 0xC8 de 0xEB69/0xEB7A
	jp bancos_1_2_3		;42d6   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_sprites_de_actores:		; con 7-8, p07:865C (dos sprites por actor en 0xF020 (fotograma p07:97E8); con el bit 0 de +0x10, en fichas); vuelve con 1-2-3
	call bancos_7_8		;42d9   ; bancos_7_8: pone los bancos 7-8 en 0x8000 y 0xA000
	call 0865ch		;42dc   ; sprites_de_actores: dos sprites por actor en 0xF020 (fotograma p07:97E8); con el bit 0 de +0x10, en fichas
	jp bancos_1_2_3		;42df   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_desaparece_por_tercios:		; con 12-13-14, p00:4C04 (efecto de borrar en tres pasos (0xE348) sobre la lista de 0xE34C); vuelve con 9-10-11
	call bancos_12_13_14		;42e2   ; bancos_12_13_14: pone los bancos 12-13-14
	push ix		;42e5
	call desaparece_por_tercios		;42e7   ; desaparece_por_tercios: efecto de borrar en tres pasos (0xE348) sobre la lista de 0xE34C
	pop ix		;42ea
	jp bancos_9_10_11		;42ec   ; bancos_9_10_11: pone los bancos 9-10-11
a_demo_empieza:		; con 9-10-11, p11:BC5C (la demo: sala de partida 2 (0xE338), guion desde el principio (0xE00B) y el personaje en (0x50, 0x60)); vuelve con 1-2-3
	call bancos_9_10_11		;42ef   ; bancos_9_10_11: pone los bancos 9-10-11
	call 0bc5ch		;42f2   ; demo_empieza: la demo: sala de partida 2 (0xE338), guion desde el principio (0xE00B) y el personaje en (0x50, 0x60)
	jp bancos_1_2_3		;42f5   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_solo_ret:		; con 9-10-11, p11:BD11 (no hace nada: `ret`); vuelve con 1-2-3
	call bancos_9_10_11		;42f8   ; bancos_9_10_11: pone los bancos 9-10-11
	call 0bd11h		;42fb   ; solo_ret: no hace nada: `ret`
	jp bancos_1_2_3		;42fe   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_demo_cuadro:		; con 9-10-11, p11:BC86 (un cuadro de la demo (p11:BC92); al acabar el guion, sonido 0x85 y 0xE340 = 0); vuelve con 1-2-3
	call bancos_9_10_11		;4301   ; bancos_9_10_11: pone los bancos 9-10-11
	call 0bc86h		;4304   ; demo_cuadro: un cuadro de la demo (p11:BC92); al acabar el guion, sonido 0x85 y 0xE340 = 0
	jp bancos_1_2_3		;4307   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_teclas_nuevas:		; con 1-2-3, p01:70BE (guarda A en (HL) y deja en (HL-1) lo que no estaba); vuelve con 9-10-11
	call bancos_1_2_3		;430a   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call 070beh		;430d   ; teclas_nuevas: guarda A en (HL) y deja en (HL-1) lo que no estaba
	jp bancos_9_10_11		;4310   ; bancos_9_10_11: pone los bancos 9-10-11
texto_y_9_10_11:		; un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E); vuelve con 9-10-11
	push ix		;4313
	call texto		;4315   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	pop ix		;4318
	jp bancos_9_10_11		;431a   ; bancos_9_10_11: pone los bancos 9-10-11
a_aparece_por_tercios:		; con 4-5-6, p00:4B1A (efecto de aparecer en tres pasos (0xE348) sobre la lista de 0xE34C); vuelve con 9-10-11
	call bancos_4_5_6		;431d   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call aparece_por_tercios		;4320   ; aparece_por_tercios: efecto de aparecer en tres pasos (0xE348) sobre la lista de 0xE34C
	jp bancos_9_10_11		;4323   ; bancos_9_10_11: pone los bancos 9-10-11
a_texto_en_sprites_bf98:		; con 4-5-6, p06:AE8F (el texto p06:BF98 como patrones de sprite desde 0x1800); vuelve con 9-10-11
	call bancos_4_5_6		;4326   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 0ae8fh		;4329   ; texto_en_sprites_bf98: el texto p06:BF98 como patrones de sprite desde 0x1800
	jp bancos_9_10_11		;432c   ; bancos_9_10_11: pone los bancos 9-10-11
a_marco_de_la_escena_y_9_10_11:		; con 4-5-6, p04:631F (los RLE p04:633D y p04:6432, el dibujo p04:6443 y 8 x 8 nombres en 0x3818); vuelve con 1-2-3; vuelve con 9-10-11
	call a_marco_de_la_escena		;432f   ; a_marco_de_la_escena: con 4-5-6, p04:631F (los RLE p04:633D y p04:6432, el dibujo p04:6443 y 8 x 8 nombres en 0x3818); vuelve con 1-2-3
	jp bancos_9_10_11		;4332   ; bancos_9_10_11: pone los bancos 9-10-11
a_fuente_y_9_10_11:		; con 4-5-6, p04:648C (la fuente en 0x2808 y 0x3000 y su color); vuelve con 1-2-3; vuelve con 9-10-11
	call a_fuente		;4335   ; a_fuente: con 4-5-6, p04:648C (la fuente en 0x2808 y 0x3000 y su color); vuelve con 1-2-3
	jp bancos_9_10_11		;4338   ; bancos_9_10_11: pone los bancos 9-10-11
a_rectangulo_de_fichas:		; con 4-5-6, p04:6792 (B x C fichas seguidas desde A en el bufer HL (0x20 por fila)); vuelve con 9-10-11
	call bancos_4_5_6		;433b   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 06792h		;433e   ; rectangulo_de_fichas: B x C fichas seguidas desde A en el bufer HL (0x20 por fila)
	jp bancos_9_10_11		;4341   ; bancos_9_10_11: pone los bancos 9-10-11
a_dibujo_en_el_mapa:		; con 4-5-6, p04:693B (un dibujo [posicion][ancho][alto] y sus fichas a 0xED00); vuelve con 9-10-11
	call bancos_4_5_6		;4344   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 0693bh		;4347   ; dibujo_en_el_mapa: un dibujo [posicion][ancho][alto] y sus fichas a 0xED00
	jp bancos_9_10_11		;434a   ; bancos_9_10_11: pone los bancos 9-10-11
a_rumbo_desde_ix:		; con 1-2-3, p01:6312 (el paso hacia el personaje desde la ficha IX (+2, +4) con la velocidad A); vuelve con 4-5-6
	call bancos_1_2_3		;434d   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call 06312h		;4350   ; rumbo_desde_ix: el paso hacia el personaje desde la ficha IX (+2, +4) con la velocidad A
	jp bancos_4_5_6		;4353   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
a_rumbo_al_rival:		; con 1-2-3, p01:6320 (el paso hacia 0xE3E5/0xE3E7 con la velocidad A); vuelve con 9-10-11
	call bancos_1_2_3		;4356   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call 06320h		;4359   ; rumbo_al_rival: el paso hacia 0xE3E5/0xE3E7 con la velocidad A
	jp bancos_9_10_11		;435c   ; bancos_9_10_11: pone los bancos 9-10-11
a_rumbo_desde_ix_y_9_10_11:		; con 1-2-3, p01:6312 (el paso hacia el personaje desde la ficha IX (+2, +4) con la velocidad A); vuelve con 4-5-6; vuelve con 9-10-11
	call a_rumbo_desde_ix		;435f   ; a_rumbo_desde_ix: con 1-2-3, p01:6312 (el paso hacia el personaje desde la ficha IX (+2, +4) con la velocidad A); vuelve con 4-5-6
	jp bancos_9_10_11		;4362   ; bancos_9_10_11: pone los bancos 9-10-11
a_primera_sala:		; con 1-2-3, p01:6702 (la sala de partida (o la de 0xE338, p01:67E3) con sus banderas y la entrada); vuelve con 9-10-11
	call bancos_1_2_3		;4365   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call 06702h		;4368   ; primera_sala: la sala de partida (o la de 0xE338, p01:67E3) con sus banderas y la entrada
	jp bancos_9_10_11		;436b   ; bancos_9_10_11: pone los bancos 9-10-11
a_cuadro_de_la_sala:		; con 1-2-3, p00:5A6E (un cuadro dentro de la sala: sprites, actores (p07:800A), musica y el modo 0xE360 (tabla p00:5A83)); vuelve con 9-10-11
	call bancos_1_2_3		;436e   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call cuadro_de_la_sala		;4371   ; cuadro_de_la_sala: un cuadro dentro de la sala: sprites, actores (p07:800A), musica y el modo 0xE360 (tabla p00:5A83)
	jp bancos_9_10_11		;4374   ; bancos_9_10_11: pone los bancos 9-10-11
a_historia:		; con 4-5-6, p04:6E03 (un paso de la historia (0xE350, tabla p04:6E09): ocho pantallas de texto (p04:6EDC) con su animacion); vuelve con 1-2-3
	call bancos_4_5_6		;4377   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 06e03h		;437a   ; historia: un paso de la historia (0xE350, tabla p04:6E09): ocho pantallas de texto (p04:6EDC) con su animacion
	jp bancos_1_2_3		;437d   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_borra_partida:		; con 1-2-3, p01:6677 (0xE340-0xF080 a cero, la sala 0x200, nombres y posicion de partida); vuelve con 4-5-6
	call bancos_1_2_3		;4380   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call 06677h		;4383   ; borra_partida: 0xE340-0xF080 a cero, la sala 0x200, nombres y posicion de partida
	jp bancos_4_5_6		;4386   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
a_pide_contrasena:		; con 12-13-14, p14:BBF0 (un paso de la entrada de la contrasena (0xE3B2, tabla p14:BBFF)); vuelve con 1-2-3
	call bancos_12_13_14		;4389   ; bancos_12_13_14: pone los bancos 12-13-14
	call 0bbf0h		;438c   ; pide_contrasena: un paso de la entrada de la contrasena (0xE3B2, tabla p14:BBFF)
	jp bancos_1_2_3		;438f   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_da_contrasena:		; con 12-13-14, p14:BA95 (un paso de la contrasena que se le da al jugador (0xE38E, tabla p14:BAA4)); vuelve con 1-2-3
	call bancos_12_13_14		;4392   ; bancos_12_13_14: pone los bancos 12-13-14
	call 0ba95h		;4395   ; da_contrasena: un paso de la contrasena que se le da al jugador (0xE38E, tabla p14:BAA4)
	jp bancos_1_2_3		;4398   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
a_mezcla_patrones:		; con 4-5-6, p04:6B2D (cada 4 cuadros mezcla los patrones de 0x2500 y 0x2600 con la mascara 0xE34A); vuelve con 9-10-11
	call bancos_4_5_6		;439b   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 06b2dh		;439e   ; mezcla_patrones: cada 4 cuadros mezcla los patrones de 0x2500 y 0x2600 con la mascara 0xE34A
	jp bancos_9_10_11		;43a1   ; bancos_9_10_11: pone los bancos 9-10-11
palabra_de_tabla:		; DE = la palabra A de la tabla DE
	ld l,a			;43a4
	ld h,000h		;43a5
	add hl,hl			;43a7
	add hl,de			;43a8
	ld e,(hl)			;43a9
	inc hl			;43aa
	ld d,(hl)			;43ab
	ret			;43ac
de_negativo:		; DE = -DE
	ex de,hl			;43ad
	call hl_negativo		;43ae   ; hl_negativo: HL = -HL
	ex de,hl			;43b1
	ret			;43b2
hl_negativo:		; HL = -HL
	xor a			;43b3
	sub l			;43b4
	ld l,a			;43b5
	ld a,000h		;43b6
	sbc a,h			;43b8
	ld h,a			;43b9
	ret			;43ba
nibble_de_la_sala:		; A = el nibble de la sala 0xEB40 en la tabla DE (par: el alto)
	ld hl,(0eb40h)		;43bb   ; lee la sala
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
aleatorio:		; A = el registro R revuelto con la cuenta de cuadros
	ld a,r		;43d0
	rrca			;43d2
	rrca			;43d3
	rrca			;43d4
	rrca			;43d5
	ld hl,0e003h		;43d6   ; apunta a la cuenta de cuadros
	xor (hl)			;43d9
	ret			;43da
L_43DB:
	call bancos_18_19_20		;43db   ; bancos_18_19_20: pone los bancos 18-19-20
	ld a,(0e3a1h)		;43de   ; lee la escena de accion (1-9)
	ld de,0627ch		;43e1
	call palabra_de_tabla		;43e4   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	jr L_43F5		;43e7
L_43E9:
	call bancos_18_19_20		;43e9   ; bancos_18_19_20: pone los bancos 18-19-20
	ld de,06000h		;43ec
	ld a,(0e3c3h)		;43ef   ; lee el fotograma del personaje
	call palabra_de_tabla		;43f2   ; palabra_de_tabla: DE = la palabra A de la tabla DE
L_43F5:
	ld hl,01800h		;43f5
	call rle		;43f8   ; rle: RLE de DE a la VRAM HL
	call bancos_del_estado		;43fb   ; bancos_del_estado: pone el reparto que corresponde al estado 0xE000/0xE001
	ld a,(0e3c9h)		;43fe
	or a			;4401
	ret z			;4402
	ld hl,01830h		;4403
	call borra_barra		;4406   ; borra_barra: borra con FILVRM la parte que sobra de una barra del marcador
	ld hl,01840h		;4409
	call borra_barra		;440c   ; borra_barra: borra con FILVRM la parte que sobra de una barra del marcador
	sub 008h		;440f
	ld hl,01810h		;4411
	call borra_barra		;4414   ; borra_barra: borra con FILVRM la parte que sobra de una barra del marcador
	sub 008h		;4417
	ld hl,01820h		;4419
	call borra_barra		;441c   ; borra_barra: borra con FILVRM la parte que sobra de una barra del marcador
	add a,008h		;441f
	ld hl,01850h		;4421
	call borra_barra		;4424   ; borra_barra: borra con FILVRM la parte que sobra de una barra del marcador
	add a,008h		;4427
	ld hl,01860h		;4429
borra_barra:		; borra con FILVRM la parte que sobra de una barra del marcador
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
	ld a,(0e368h)		;443d   ; lee el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;4440
	ret z			;4441
	call bancos_9_10_11		;4442   ; bancos_9_10_11: pone los bancos 9-10-11
	ld a,(0e368h)		;4445   ; lee el dibujo de p12:733E que se ve (0: ninguno)
	and a			;4448
	jr z,L_446E		;4449
	dec a			;444b
	ld de,06713h		;444c
	call palabra_de_tabla		;444f   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ex de,hl			;4452
	ld de,0c848h		;4453
	call L_44B8		;4456
	call bancos_1_2_3		;4459   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call L_448A		;445c
	jp vuelca_marcador		;445f   ; vuelca_marcador: 7 filas x 8 de 0xEE18 a 0x3918
L_4462:
	call L_443D		;4462
	jp bancos_4_5_6		;4465   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
L_4468:
	call L_443D		;4468
	jp bancos_9_10_11		;446b   ; bancos_9_10_11: pone los bancos 9-10-11
L_446E:
	call bancos_1_2_3		;446e   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	ld hl,0ee18h		;4471   ; apunta a el marcador (8 x 7)
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
	jp vuelca_marcador		;4487   ; vuelca_marcador: 7 filas x 8 de 0xEE18 a 0x3918
L_448A:
	ld hl,0ee18h		;448a   ; apunta a el marcador (8 x 7)
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
	call mapa_de_bloques		;44be   ; mapa_de_bloques: HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
	exx			;44c1
	pop hl			;44c2
	call bloque_de_la_sala		;44c3   ; bloque_de_la_sala: HL = 0xE800 + (Y / 16) * 16 + X / 16: el bloque de la sala en la posicion L = Y, H = X
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
	call hl_mas_a		;44d7   ; hl_mas_a: HL = HL + A
	ld a,(de)			;44da
	ld (hl),a			;44db
	inc de			;44dc
	inc hl			;44dd
	ld a,(de)			;44de
	ld (hl),a			;44df
	inc de			;44e0
	exx			;44e1
	ld a,(0e36dh)		;44e2   ; lee el color de las fichas copiadas
	ld (hl),a			;44e5
	inc hl			;44e6
	exx			;44e7
	pop hl			;44e8
	djnz L_44CC		;44e9
	pop hl			;44eb
	ld a,040h		;44ec
	call hl_mas_a		;44ee   ; hl_mas_a: HL = HL + A
	exx			;44f1
	pop hl			;44f2
	ld a,010h		;44f3
	call hl_mas_a		;44f5   ; hl_mas_a: HL = HL + A
	exx			;44f8
	pop bc			;44f9
	dec c			;44fa
	jr nz,L_44C7		;44fb
	ld a,001h		;44fd
	ld (0e36dh),a		;44ff   ; guarda el color de las fichas copiadas
	ret			;4502
L_4503:
	call 0b3b6h		;4503   ; efecto_que_sube_cuadro: un cuadro del efecto: la Y sube cada 16 cuadros y al acabar se esconde
	jp a_sprites_de_actores		;4506   ; a_sprites_de_actores: con 7-8, p07:865C (dos sprites por actor en 0xF020 (fotograma p07:97E8); con el bit 0 de +0x10, en fichas); vuelve con 1-2-3
mapa_de_bloques:		; HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
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
bloque_de_la_sala:		; HL = 0xE800 + (Y / 16) * 16 + X / 16: el bloque de la sala en la posicion L = Y, H = X
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
	call bytes_a_vram		;4530   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
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


sonido_53:		; pide el sonido 0x53
	ld a,053h		;4560
	jp pide_sonido		;4562   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_14:		; pide el sonido 0x14
	ld a,014h		;4565
	jp pide_sonido		;4567   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_26:		; pide el sonido 0x26
	ld a,026h		;456a
	jp pide_sonido		;456c   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_47:		; pide el sonido 0x47
	ld a,047h		;456f
	jp pide_sonido		;4571   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_13:		; pide el sonido 0x13
	ld a,013h		;4574
	jp pide_sonido		;4576   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_28:		; pide el sonido 0x28
	ld a,028h		;4579
	jp pide_sonido		;457b   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_01:		; pide el sonido 1
	ld a,001h		;457e
	jp pide_sonido		;4580   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_01_b:		; pide el sonido 1
	ld a,001h		;4583
	jp pide_sonido		;4585   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_05:		; pide el sonido 5: el del cursor de los menus
	ld a,005h		;4588
	jp pide_sonido		;458a   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_1e:		; pide el sonido 0x1E
	ld a,01eh		;458d
	jp pide_sonido		;458f   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_06:		; pide el sonido 6
	ld a,006h		;4592
	jp pide_sonido		;4594   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_07:		; pide el sonido 7
	ld a,007h		;4597
	jp pide_sonido		;4599   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_23:		; pide el sonido 0x23
	ld a,023h		;459c
	jp pide_sonido		;459e   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_29:		; pide el sonido 0x29
	ld a,029h		;45a1
	jp pide_sonido		;45a3   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_81:		; pide el sonido 0x81
	ld a,081h		;45a6
	jp pide_sonido		;45a8   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_85:		; pide el sonido 0x85
	ld a,085h		;45ab
	jp pide_sonido		;45ad   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_86:		; pide el sonido 0x86
	ld a,086h		;45b0
	jp pide_sonido		;45b2   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_80:		; pide el sonido 0x80
	ld a,080h		;45b5
	jp pide_sonido		;45b7   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_24:		; pide el sonido 0x24
	ld a,024h		;45ba
	jp pide_sonido		;45bc   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_48:		; pide el sonido 0x48
	ld a,048h		;45bf
	jp pide_sonido		;45c1   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_2f:		; pide el sonido 0x2F
	ld a,02fh		;45c4
	jp pide_sonido		;45c6   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_2b:		; pide el sonido 0x2B
	ld a,02bh		;45c9
	jp pide_sonido		;45cb   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
musica_pendiente:		; cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld hl,0e33bh		;45ce   ; apunta a la espera hasta la musica de 0xE33A
	ld a,(hl)			;45d1
	and a			;45d2
	ret z			;45d3
	dec (hl)			;45d4
	ret nz			;45d5
	ld a,080h		;45d6
	call pide_sonido		;45d8   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
	ld a,(0e33ah)		;45db   ; lee la musica que va despues
	jp pide_sonido		;45de   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
musica_de_la_sala:		; elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	ld a,(0e3d9h)		;45e1
	and a			;45e4
	ld a,003h		;45e5
	jp nz,L_4662		;45e7
	ld de,04696h		;45ea
	call nibble_de_la_sala		;45ed   ; nibble_de_la_sala: A = el nibble de la sala 0xEB40 en la tabla DE (par: el alto)
	cp 001h		;45f0
	jr nz,L_45FD		;45f2
	ld hl,0eb60h		;45f4   ; apunta a las banderas de la historia, byte 0x20 (se graban con la partida)
	bit 0,(hl)		;45f7
	jr z,L_4626		;45f9
	jr L_4632		;45fb
L_45FD:
	ld hl,(0eb40h)		;45fd   ; lee la sala
	ld de,00231h		;4600
	and a			;4603
	sbc hl,de		;4604
	jr nz,L_4613		;4606
	ld a,(0eb5dh)		;4608   ; lee las banderas de la historia, byte 0x1D (se graban con la partida)
	bit 1,a		;460b
	jr nz,L_466F		;460d
	ld a,008h		;460f
	jr L_4662		;4611
L_4613:
	ld hl,(0eb40h)		;4613   ; lee la sala
	ld de,00118h		;4616
	and a			;4619
	sbc hl,de		;461a
	jr nz,L_4626		;461c
	ld hl,0eb64h		;461e   ; apunta a las banderas de la historia, byte 0x24 (se graban con la partida)
	bit 7,(hl)		;4621
	jr z,L_4626		;4623
	xor a			;4625
L_4626:
	ld c,a			;4626
	ld a,(0eb60h)		;4627   ; lee las banderas de la historia, byte 0x20 (se graban con la partida)
	bit 0,a		;462a
	jr z,L_4661		;462c
	ld a,c			;462e
	and a			;462f
	jr nz,L_4661		;4630
L_4632:
	ld a,(0e210h)		;4632   ; lee la musica que suena
	cp 02bh		;4635
	jr nz,L_463D		;4637
	ld a,009h		;4639
	jr L_4662		;463b
L_463D:
	cp 034h		;463d
	jr z,L_466F		;463f
	cp 042h		;4641
	jr z,L_466F		;4643
	ld hl,(0eb40h)		;4645   ; lee la sala
	ld de,0012dh		;4648
	and a			;464b
	sbc hl,de		;464c
	jr nz,L_465F		;464e
	ld hl,(0e376h)		;4650   ; lee la sala de la que se viene y el byte siguiente (16 bits)
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
	call hl_mas_a		;4665   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;4668
	ld hl,0e210h		;4669   ; apunta a la musica que suena
	cp (hl)			;466c
	jr nz,L_4689		;466d
L_466F:
	ld a,(0e33bh)		;466f   ; lee la espera hasta la musica de 0xE33A
	and a			;4672
	jr nz,L_467A		;4673
	xor a			;4675
	ld (0e33ah),a		;4676   ; guarda la musica que va despues
	ret			;4679
L_467A:
	xor a			;467a
	ld (0e33bh),a		;467b   ; guarda la espera hasta la musica de 0xE33A
	ld a,080h		;467e
	call pide_sonido		;4680   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
	ld a,(0e210h)		;4683   ; lee la musica que suena
	jp pide_sonido		;4686   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
L_4689:
	ld (0e33ah),a		;4689   ; guarda la musica que va despues
	ld a,010h		;468c
	ld (0e33bh),a		;468e   ; guarda la espera hasta la musica de 0xE33A
	ld a,081h		;4691
	jp pide_sonido		;4693   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto

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


fichas_de_la_sala:		; el juego de fichas de la sala (nibble p12:6000, lista p12:6120): patrones p12:64CE y colores p12:6C06 a la VRAM
	call bancos_12_13_14		;47c6   ; bancos_12_13_14: pone los bancos 12-13-14
	ld de,06000h		;47c9
	call nibble_de_la_sala		;47cc   ; nibble_de_la_sala: A = el nibble de la sala 0xEB40 en la tabla DE (par: el alto)
	ld de,06120h		;47cf
	call palabra_de_tabla		;47d2   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld a,(de)			;47d5
	ld (0e361h),a		;47d6   ; guarda la primera ficha dura de la sala
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
	call copia_a_dos_tercios		;4800   ; copia_a_dos_tercios: LDIRVM en dos tercios seguidos (0x800 entre uno y otro)
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
	call copia_a_dos_tercios		;481b   ; copia_a_dos_tercios: LDIRVM en dos tercios seguidos (0x800 entre uno y otro)
	ld hl,(0e8e2h)		;481e
	ld de,00008h		;4821
	add hl,de			;4824
	ld (0e8e2h),hl		;4825
	pop de			;4828
	pop bc			;4829
	djnz L_47E8		;482a
	jp bancos_1_2_3		;482c   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
graficos_de_la_sala:		; dos bloques RLE de p12:7990[p12:7750[sala]] a 0x2280 y 0x0280 (patrones y colores)
	call bancos_12_13_14		;482f   ; bancos_12_13_14: pone los bancos 12-13-14
	ld hl,(0eb40h)		;4832   ; lee la sala
	ld de,07750h		;4835
	add hl,de			;4838
	ld a,(hl)			;4839
	ld de,07990h		;483a
	add a,a			;483d
	call palabra_de_tabla		;483e   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	push hl			;4841
	ld hl,02280h		;4842
	call rle_a_dos_tercios		;4845   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	pop hl			;4848
	inc hl			;4849
	ld e,(hl)			;484a
	inc hl			;484b
	ld d,(hl)			;484c
	ld hl,00280h		;484d
	call rle_a_dos_tercios		;4850   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	jp bancos_1_2_3		;4853   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
graficos_del_personaje:		; el bloque A-1 de p12:733E en RLE a 0x2D80
	call bancos_12_13_14		;4856   ; bancos_12_13_14: pone los bancos 12-13-14
	dec a			;4859
	ld de,0733eh		;485a
	call palabra_de_tabla		;485d   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld hl,02d80h		;4860
	call rle		;4863   ; rle: RLE de DE a la VRAM HL
	jp bancos_1_2_3		;4866   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
L_4869:
	call graficos_del_personaje		;4869   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	jp bancos_4_5_6		;486c   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
L_486F:
	call graficos_del_personaje		;486f   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	jp bancos_9_10_11		;4872   ; bancos_9_10_11: pone los bancos 9-10-11
graficos_del_marcador:		; patrones p12:7360 y colores p12:73D0 en dos tercios y nombres p12:73FD
	call bancos_12_13_14		;4875   ; bancos_12_13_14: pone los bancos 12-13-14
	ld de,07360h		;4878
	ld hl,02080h		;487b
	call rle_a_dos_tercios		;487e   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,073d0h		;4881
	ld hl,00080h		;4884
	call rle_a_dos_tercios		;4887   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,073fdh		;488a
	call rle_con_destino		;488d   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	jp bancos_1_2_3		;4890   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
pantalla_de_27:		; nombres p27:9B8B, fichas p27:9ECB/9ED4 y lo que toque segun 0xE3A1 (tabla p00:48BE)
	call bancos_27_28		;4893   ; bancos_27_28: pone los bancos 27-28 en 0x8000 y 0xA000
	ld de,09b8bh		;4896
	call rle_con_destino		;4899   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	call L_48A2		;489c
	jp bancos_9_10_11		;489f   ; bancos_9_10_11: pone los bancos 9-10-11
L_48A2:
	ld de,09ecbh		;48a2
	ld hl,02048h		;48a5
	call rle_a_dos_tercios		;48a8   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,09ed4h		;48ab
	ld hl,00048h		;48ae
	call rle_a_dos_tercios		;48b1   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	call bancos_1_2_3		;48b4   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	ld a,(0e3a1h)		;48b7   ; lee la escena de accion (1-9)
	dec a			;48ba
	call despacha		;48bb   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
	call bancos_27_28		;48d0   ; bancos_27_28: pone los bancos 27-28 en 0x8000 y 0xA000
	jp 0623dh		;48d3
L_48D6:
	call bancos_27_28		;48d6   ; bancos_27_28: pone los bancos 27-28 en 0x8000 y 0xA000
	jp 06261h		;48d9
L_48DC:
	call bancos_27_28		;48dc   ; bancos_27_28: pone los bancos 27-28 en 0x8000 y 0xA000
	jp 06279h		;48df
L_48E2:
	call bancos_27_28		;48e2   ; bancos_27_28: pone los bancos 27-28 en 0x8000 y 0xA000
	jp 062c1h		;48e5
graficos_18_a:		; patrones y colores de p18:91D1-973D a la VRAM y nombres p18:9910 y p18:9928
	call bancos_18_19_20		;48e8   ; bancos_18_19_20: pone los bancos 18-19-20
	ld de,091d1h		;48eb
	ld hl,02080h		;48ee
	call rle		;48f1   ; rle: RLE de DE a la VRAM HL
	ld de,091d1h		;48f4
	ld hl,02238h		;48f7
	call rle_volteado		;48fa   ; rle_volteado: RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld de,0938ah		;48fd
	ld hl,00080h		;4900
	call rle		;4903   ; rle: RLE de DE a la VRAM HL
	ld de,0938ah		;4906
	ld hl,00238h		;4909
	call rle		;490c   ; rle: RLE de DE a la VRAM HL
	ld de,094a7h		;490f
	ld hl,02880h		;4912
	call rle		;4915   ; rle: RLE de DE a la VRAM HL
	ld de,094a7h		;4918
	ld hl,02b28h		;491b
	call rle_volteado		;491e   ; rle_volteado: RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld de,0973dh		;4921
	ld hl,00880h		;4924
	call rle		;4927   ; rle: RLE de DE a la VRAM HL
	ld de,0973dh		;492a
	ld hl,00b28h		;492d
	call rle		;4930   ; rle: RLE de DE a la VRAM HL
	ld de,09910h		;4933
	call rle_con_destino		;4936   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld de,09928h		;4939
	jp rle_con_destino		;493c   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
graficos_18_b:		; patrones p18:9935 y colores p18:9E89 en los tres tercios
	call bancos_18_19_20		;493f   ; bancos_18_19_20: pone los bancos 18-19-20
	ld de,09935h		;4942
	ld hl,02080h		;4945
	call rle_a_tres_tercios		;4948   ; rle_a_tres_tercios: el RLE de DE en los tres tercios
	ld de,09e89h		;494b
	ld hl,00080h		;494e
	jp rle_a_tres_tercios		;4951   ; rle_a_tres_tercios: el RLE de DE en los tres tercios
graficos_18_c:		; patrones p18:9935 volteados y colores p18:A14C/A158
	call bancos_18_19_20		;4954   ; bancos_18_19_20: pone los bancos 18-19-20
	ld de,09935h		;4957
	ld hl,02080h		;495a
	call rle_volteado_a_dos_tercios		;495d   ; rle_volteado_a_dos_tercios: el RLE volteado (p00:5A32) en dos tercios
	ld de,0a14ch		;4960
	ld hl,00130h		;4963
	call rle_a_dos_tercios		;4966   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,0a158h		;4969
	ld hl,00260h		;496c
	jp rle_a_dos_tercios		;496f   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
graficos_18_d:		; patrones y colores p18:A2F9/A627, tambien volteados
	call bancos_18_19_20		;4972   ; bancos_18_19_20: pone los bancos 18-19-20
	ld de,0a2f9h		;4975
	ld hl,02080h		;4978
	call rle_a_dos_tercios		;497b   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,0a2f9h		;497e
	ld hl,023c0h		;4981
	call rle_volteado_a_dos_tercios		;4984   ; rle_volteado_a_dos_tercios: el RLE volteado (p00:5A32) en dos tercios
	ld de,0a627h		;4987
	ld hl,00080h		;498a
	call rle_a_dos_tercios		;498d   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,0a627h		;4990
	ld hl,003c0h		;4993
	jp rle_a_dos_tercios		;4996   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
graficos_18_e:		; patrones y colores p18:AB2E-B40C, nombres p27:B987
	call bancos_18_19_20		;4999   ; bancos_18_19_20: pone los bancos 18-19-20
	ld de,0ab2eh		;499c
	ld hl,02080h		;499f
	call rle		;49a2   ; rle: RLE de DE a la VRAM HL
	ld de,0ab2eh		;49a5
	ld hl,02440h		;49a8
	call rle_volteado		;49ab   ; rle_volteado: RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld de,0aeceh		;49ae
	ld hl,00080h		;49b1
	call rle		;49b4   ; rle: RLE de DE a la VRAM HL
	ld de,0aeceh		;49b7
	ld hl,00440h		;49ba
	call rle		;49bd   ; rle: RLE de DE a la VRAM HL
	ld de,0b0f2h		;49c0
	ld hl,02880h		;49c3
	call rle		;49c6   ; rle: RLE de DE a la VRAM HL
	ld de,0b0f2h		;49c9
	ld hl,02c00h		;49cc
	call rle_volteado		;49cf   ; rle_volteado: RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld de,0b40ch		;49d2
	ld hl,00880h		;49d5
	call rle		;49d8   ; rle: RLE de DE a la VRAM HL
	ld de,0b40ch		;49db
	ld hl,00c00h		;49de
	call rle		;49e1   ; rle: RLE de DE a la VRAM HL
	call bancos_27_28		;49e4   ; bancos_27_28: pone los bancos 27-28 en 0x8000 y 0xA000
	ld de,0b987h		;49e7
	call rle_con_destino		;49ea   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	jp bancos_9_10_11		;49ed   ; bancos_9_10_11: pone los bancos 9-10-11
graficos_14_a:		; patrones y colores p14:A7EF-B37B y 0x1E0 nombres de p20:A84E
	call bancos_12_13_14		;49f0   ; bancos_12_13_14: pone los bancos 12-13-14
	ld de,0a7efh		;49f3
	ld hl,02080h		;49f6
	call rle		;49f9   ; rle: RLE de DE a la VRAM HL
	ld de,0aeffh		;49fc
	ld hl,02880h		;49ff
	call rle		;4a02   ; rle: RLE de DE a la VRAM HL
	ld de,0ad5eh		;4a05
	ld hl,00080h		;4a08
	call rle		;4a0b   ; rle: RLE de DE a la VRAM HL
	ld de,0b37bh		;4a0e
	ld hl,00880h		;4a11
	call rle		;4a14   ; rle: RLE de DE a la VRAM HL
	call bancos_18_19_20		;4a17   ; bancos_18_19_20: pone los bancos 18-19-20
	ld hl,0a84eh		;4a1a
	ld de,03800h		;4a1d
	ld bc,001e0h		;4a20
	call 0005ch		;4a23   ; BIOS LDIRVM - Block transfers to VRAM from memory
	jp bancos_9_10_11		;4a26   ; bancos_9_10_11: pone los bancos 9-10-11
graficos_14_b:		; patrones y colores p14:B636-B924 y 0x100 nombres de p20:AA2E
	call bancos_12_13_14		;4a29   ; bancos_12_13_14: pone los bancos 12-13-14
	ld de,0b636h		;4a2c
	ld hl,02080h		;4a2f
	call rle		;4a32   ; rle: RLE de DE a la VRAM HL
	ld de,0b636h		;4a35
	ld hl,02280h		;4a38
	call rle_volteado		;4a3b   ; rle_volteado: RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld de,0b7afh		;4a3e
	ld hl,02500h		;4a41
	call rle		;4a44   ; rle: RLE de DE a la VRAM HL
	ld de,0b880h		;4a47
	ld hl,00080h		;4a4a
	call rle		;4a4d   ; rle: RLE de DE a la VRAM HL
	ld de,0b880h		;4a50
	ld hl,00280h		;4a53
	call rle		;4a56   ; rle: RLE de DE a la VRAM HL
	ld de,0b924h		;4a59
	ld hl,00500h		;4a5c
	call rle		;4a5f   ; rle: RLE de DE a la VRAM HL
	call bancos_18_19_20		;4a62   ; bancos_18_19_20: pone los bancos 18-19-20
	ld hl,0aa2eh		;4a65
	ld de,03800h		;4a68
	ld bc,00100h		;4a6b
	call 0005ch		;4a6e   ; BIOS LDIRVM - Block transfers to VRAM from memory
	jp bancos_9_10_11		;4a71   ; bancos_9_10_11: pone los bancos 9-10-11
graficos_14_c:		; patrones p14:B96F y colores p14:BA17 en el tercio central
	call bancos_12_13_14		;4a74   ; bancos_12_13_14: pone los bancos 12-13-14
	ld de,0b96fh		;4a77
	ld hl,02500h		;4a7a
	call rle		;4a7d   ; rle: RLE de DE a la VRAM HL
	ld de,0ba17h		;4a80
	ld hl,00500h		;4a83
	call rle		;4a86   ; rle: RLE de DE a la VRAM HL
	jp bancos_9_10_11		;4a89   ; bancos_9_10_11: pone los bancos 9-10-11
sprites_de_la_sala:		; los patrones de sprite de la sala: lista p18:6A28[p18:67F1[sala]] (en la sala 0x12C ademas p27:BBC4)
	ld hl,(0eb40h)		;4a8c   ; lee la sala
	ld de,0012ch		;4a8f
	and a			;4a92
	sbc hl,de		;4a93
	jr nz,L_4AA0		;4a95
	call bancos_27_28		;4a97   ; bancos_27_28: pone los bancos 27-28 en 0x8000 y 0xA000
	ld de,0bbc4h		;4a9a
	call rle_con_destino		;4a9d   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
L_4AA0:
	call bancos_18_19_20		;4aa0   ; bancos_18_19_20: pone los bancos 18-19-20
	ld de,067f1h		;4aa3
	ld hl,(0eb40h)		;4aa6   ; lee la sala
	add hl,de			;4aa9
	ld a,(hl)			;4aaa
	ld de,06a28h		;4aab
	call palabra_de_tabla		;4aae   ; palabra_de_tabla: DE = la palabra A de la tabla DE
L_4AB1:
	ld a,(de)			;4ab1
	inc a			;4ab2
	jp z,bancos_1_2_3		;4ab3   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	dec a			;4ab6
	push de			;4ab7
	call un_sprite_de_la_lista		;4ab8   ; un_sprite_de_la_lista: una entrada de 4 bytes: [banderas][primer patron][RLE] (bit 0: copia volteada de otro)
	pop de			;4abb
	inc de			;4abc
	inc de			;4abd
	inc de			;4abe
	inc de			;4abf
	jr L_4AB1		;4ac0
un_sprite_de_la_lista:		; una entrada de 4 bytes: [banderas][primer patron][RLE] (bit 0: copia volteada de otro)
	ld a,(de)			;4ac2
	ld b,a			;4ac3
	and 001h		;4ac4
	jr nz,L_4AD7		;4ac6
	push bc			;4ac8
	call patron_de_sprite		;4ac9   ; patron_de_sprite: HL = 0x1800 + 8 * el byte siguiente de DE
	inc de			;4acc
	ld a,(de)			;4acd
	ld c,a			;4ace
	inc de			;4acf
	ld a,(de)			;4ad0
	ld d,a			;4ad1
	ld e,c			;4ad2
	pop bc			;4ad3
	jp rle		;4ad4   ; rle: RLE de DE a la VRAM HL
L_4AD7:
	push bc			;4ad7
	call patron_de_sprite		;4ad8   ; patron_de_sprite: HL = 0x1800 + 8 * el byte siguiente de DE
	push hl			;4adb
	call patron_de_sprite		;4adc   ; patron_de_sprite: HL = 0x1800 + 8 * el byte siguiente de DE
	ld bc,00010h		;4adf
	add hl,bc			;4ae2
	inc de			;4ae3
	ld a,(de)			;4ae4
	ex de,hl			;4ae5
	pop hl			;4ae6
	pop bc			;4ae7
	ld c,a			;4ae8
	jp voltea_sprites		;4ae9   ; voltea_sprites: C sprites de 16x16 de la VRAM HL volteados a DE
patron_de_sprite:		; HL = 0x1800 + 8 * el byte siguiente de DE
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
patrones_del_personaje:		; los patrones de p18:65DC[0xEB74 o 0xE3C3] a 0x1860
	call bancos_18_19_20		;4af9   ; bancos_18_19_20: pone los bancos 18-19-20
	ld a,(0eb74h)		;4afc   ; lee las banderas de la historia, byte 0x34 (se graban con la partida)
	and 007h		;4aff
	add a,a			;4b01
	jr z,L_4B08		;4b02
	sub 002h		;4b04
	jr L_4B0B		;4b06
L_4B08:
	ld a,(0e3c3h)		;4b08   ; lee el fotograma del personaje
L_4B0B:
	ld de,065dch		;4b0b
	call palabra_de_tabla		;4b0e   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld hl,01860h		;4b11
	call rle		;4b14   ; rle: RLE de DE a la VRAM HL
	jp bancos_1_2_3		;4b17   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
aparece_por_tercios:		; efecto de aparecer en tres pasos (0xE348) sobre la lista de 0xE34C
	ld a,(0e348h)		;4b1a   ; lee el paso del efecto de aparecer/borrar
	dec a			;4b1d
	jr z,L_4B43		;4b1e
	dec a			;4b20
	jr z,L_4B5D		;4b21
	xor a			;4b23
	ld (0e349h),a		;4b24   ; guarda la tabla del efecto (0: colores, 1: patrones) o la cuenta
	ld c,000h		;4b27
	call lista_rle_con_mascara		;4b29   ; lista_rle_con_mascara: recorre la lista de 6 bytes de 0xE34C y pasa sus RLE a la VRAM con la mascara C
	ld a,001h		;4b2c
	ld (0e349h),a		;4b2e   ; guarda la tabla del efecto (0: colores, 1: patrones) o la cuenta
	ld c,0f0h		;4b31
	call lista_rle_con_mascara		;4b33   ; lista_rle_con_mascara: recorre la lista de 6 bytes de 0xE34C y pasa sus RLE a la VRAM con la mascara C
	ld a,001h		;4b36
	ld (0e34ah),a		;4b38   ; guarda la mascara del efecto
	ld (0e34bh),a		;4b3b   ; guarda el efecto en marcha
L_4B3E:
	ld hl,0e348h		;4b3e   ; apunta a el paso del efecto de aparecer/borrar
	inc (hl)			;4b41
	ret			;4b42
L_4B43:
	xor a			;4b43
	ld (0e349h),a		;4b44   ; guarda la tabla del efecto (0: colores, 1: patrones) o la cuenta
	ld a,(0e34ah)		;4b47   ; lee la mascara del efecto
	ld c,a			;4b4a
	call lista_rle_con_mascara		;4b4b   ; lista_rle_con_mascara: recorre la lista de 6 bytes de 0xE34C y pasa sus RLE a la VRAM con la mascara C
	ld hl,0e34ah		;4b4e   ; apunta a la mascara del efecto
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
	ld (0e349h),a		;4b5f   ; guarda la tabla del efecto (0: colores, 1: patrones) o la cuenta
	ld c,0ffh		;4b62
	call lista_rle_con_mascara		;4b64   ; lista_rle_con_mascara: recorre la lista de 6 bytes de 0xE34C y pasa sus RLE a la VRAM con la mascara C
	xor a			;4b67
	ld (0e34bh),a		;4b68   ; guarda el efecto en marcha
	ld (0e34ah),a		;4b6b   ; guarda la mascara del efecto
	ld (0e348h),a		;4b6e   ; guarda el paso del efecto de aparecer/borrar
	ret			;4b71
lista_rle_con_mascara:		; recorre la lista de 6 bytes de 0xE34C y pasa sus RLE a la VRAM con la mascara C
	ld ix,(0e34ch)		;4b72   ; lee la lista del efecto
L_4B76:
	ld a,(ix+000h)		;4b76
	and a			;4b79
	ret z			;4b7a
	rra			;4b7b
	ld de,01000h		;4b7c
	call c,rle_con_mascara		;4b7f   ; rle_con_mascara: un RLE de la lista a la VRAM con la mascara C
	bit 1,(ix+000h)		;4b82
	ld de,00800h		;4b86
	call nz,rle_con_mascara		;4b89   ; rle_con_mascara: un RLE de la lista a la VRAM con la mascara C
	bit 2,(ix+000h)		;4b8c
	ld de,00000h		;4b90
	call nz,rle_con_mascara		;4b93   ; rle_con_mascara: un RLE de la lista a la VRAM con la mascara C
	ld de,00006h		;4b96
	add ix,de		;4b99
	jr L_4B76		;4b9b
rle_con_mascara:		; un RLE de la lista a la VRAM con la mascara C
	ld l,(ix+003h)		;4b9d
	ld h,000h		;4ba0
	add hl,hl			;4ba2
	add hl,hl			;4ba3
	add hl,hl			;4ba4
	add hl,de			;4ba5
	ld a,(0e349h)		;4ba6   ; lee la tabla del efecto (0: colores, 1: patrones) o la cuenta
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
	call escribe_en_vram		;4bc6   ; escribe_en_vram: SETWRT en HL y C' = el puerto de datos del VDP
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
	ld a,(0e349h)		;4bdb   ; lee la tabla del efecto (0: colores, 1: patrones) o la cuenta
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
	ld a,(0e349h)		;4bf3   ; lee la tabla del efecto (0: colores, 1: patrones) o la cuenta
	and a			;4bf6
	jr nz,L_4BFF		;4bf7
	rrc c		;4bf9
	rrc c		;4bfb
	rrc c		;4bfd
L_4BFF:
	pop af			;4bff
	djnz L_4BED		;4c00
	jr L_4BC9		;4c02
desaparece_por_tercios:		; efecto de borrar en tres pasos (0xE348) sobre la lista de 0xE34C
	ld a,(0e348h)		;4c04   ; lee el paso del efecto de aparecer/borrar
	dec a			;4c07
	jr z,L_4C2F		;4c08
	dec a			;4c0a
	jr z,L_4C48		;4c0b
	xor a			;4c0d
	ld (0e349h),a		;4c0e   ; guarda la tabla del efecto (0: colores, 1: patrones) o la cuenta
	ld c,0ffh		;4c11
	call lista_vram_con_mascara		;4c13   ; lista_vram_con_mascara: recorre la lista de 4 bytes de 0xE34C y hace AND con C en la VRAM
	ld a,001h		;4c16
	ld (0e349h),a		;4c18   ; guarda la tabla del efecto (0: colores, 1: patrones) o la cuenta
	ld c,0f0h		;4c1b
	call lista_vram_con_mascara		;4c1d   ; lista_vram_con_mascara: recorre la lista de 4 bytes de 0xE34C y hace AND con C en la VRAM
	ld a,0ffh		;4c20
	ld (0e34ah),a		;4c22   ; guarda la mascara del efecto
	ld a,001h		;4c25
	ld (0e34bh),a		;4c27   ; guarda el efecto en marcha
L_4C2A:
	ld hl,0e348h		;4c2a   ; apunta a el paso del efecto de aparecer/borrar
	inc (hl)			;4c2d
	ret			;4c2e
L_4C2F:
	xor a			;4c2f
	ld (0e349h),a		;4c30   ; guarda la tabla del efecto (0: colores, 1: patrones) o la cuenta
	ld a,(0e34ah)		;4c33   ; lee la mascara del efecto
	ld c,a			;4c36
	call lista_vram_con_mascara		;4c37   ; lista_vram_con_mascara: recorre la lista de 4 bytes de 0xE34C y hace AND con C en la VRAM
	ld hl,0e34ah		;4c3a   ; apunta a la mascara del efecto
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
	ld (0e349h),a		;4c4a   ; guarda la tabla del efecto (0: colores, 1: patrones) o la cuenta
	ld c,000h		;4c4d
	call lista_vram_con_mascara		;4c4f   ; lista_vram_con_mascara: recorre la lista de 4 bytes de 0xE34C y hace AND con C en la VRAM
	xor a			;4c52
	ld (0e34bh),a		;4c53   ; guarda el efecto en marcha
	ld (0e34ah),a		;4c56   ; guarda la mascara del efecto
	ld (0e348h),a		;4c59   ; guarda el paso del efecto de aparecer/borrar
	ret			;4c5c
lista_vram_con_mascara:		; recorre la lista de 4 bytes de 0xE34C y hace AND con C en la VRAM
	ld ix,(0e34ch)		;4c5d   ; lee la lista del efecto
L_4C61:
	ld a,(ix+000h)		;4c61
	and a			;4c64
	ret z			;4c65
	rra			;4c66
	ld de,01000h		;4c67
	call c,vram_con_mascara		;4c6a   ; vram_con_mascara: AND de DE bytes de la VRAM con C
	bit 1,(ix+000h)		;4c6d
	ld de,00800h		;4c71
	call nz,vram_con_mascara		;4c74   ; vram_con_mascara: AND de DE bytes de la VRAM con C
	bit 2,(ix+000h)		;4c77
	ld de,00000h		;4c7b
	call nz,vram_con_mascara		;4c7e   ; vram_con_mascara: AND de DE bytes de la VRAM con C
	ld de,00004h		;4c81
	add ix,de		;4c84
	jr L_4C61		;4c86
vram_con_mascara:		; AND de DE bytes de la VRAM con C
	ld l,(ix+001h)		;4c88
	ld h,000h		;4c8b
	add hl,hl			;4c8d
	add hl,hl			;4c8e
	add hl,hl			;4c8f
	add hl,de			;4c90
	ld a,(0e349h)		;4c91   ; lee la tabla del efecto (0: colores, 1: patrones) o la cuenta
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
	ld a,(0e349h)		;4cae   ; lee la tabla del efecto (0: colores, 1: patrones) o la cuenta
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
columna_de_vram:		; 16 bytes de DE a la VRAM HL, saltando C en origen y destino
	ld bc,01008h		;4cc2
L_4CC5:
	ld a,(de)			;4cc5
	call 0004dh		;4cc6   ; BIOS WRTVRM - Writes data in VRAM
	ld a,c			;4cc9
	call hl_mas_a		;4cca   ; hl_mas_a: HL = HL + A
	ld a,c			;4ccd
	call de_mas_a		;4cce   ; de_mas_a: DE = DE + A
	djnz L_4CC5		;4cd1
	ret			;4cd3
cortinilla_8:		; copia la ficha 0xE349 de 64 (8x8) de la lista de 0xE34C, una por cuadro
	ld ix,(0e34ch)		;4cd4   ; lee la lista del efecto
	ld a,(0e348h)		;4cd8   ; lee el paso del efecto de aparecer/borrar
	dec a			;4cdb
	jr z,L_4CEF		;4cdc
	dec a			;4cde
	jp z,L_4D1A		;4cdf
L_4CE2:
	xor a			;4ce2
	ld (0e349h),a		;4ce3   ; guarda la tabla del efecto (0: colores, 1: patrones) o la cuenta
	inc a			;4ce6
	ld (0e34bh),a		;4ce7   ; guarda el efecto en marcha
L_4CEA:
	ld hl,0e348h		;4cea   ; apunta a el paso del efecto de aparecer/borrar
	inc (hl)			;4ced
	ret			;4cee
L_4CEF:
	ld hl,0e349h		;4cef   ; apunta a la tabla del efecto (0: colores, 1: patrones) o la cuenta
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
	ld (0e34bh),a		;4d1b   ; guarda el efecto en marcha
	ld (0e348h),a		;4d1e   ; guarda el paso del efecto de aparecer/borrar
	ret			;4d21
L_4D22:
	ld bc,00808h		;4d22
	jp L_4CC5		;4d25
cortinilla_12:		; como p00:4CD4 con filas de 12
	ld ix,(0e34ch)		;4d28   ; lee la lista del efecto
	ld a,(0e348h)		;4d2c   ; lee el paso del efecto de aparecer/borrar
	dec a			;4d2f
	jr z,L_4D38		;4d30
	dec a			;4d32
	jp z,L_4D1A		;4d33
	jr L_4CE2		;4d36
L_4D38:
	ld hl,0e349h		;4d38   ; apunta a la tabla del efecto (0: colores, 1: patrones) o la cuenta
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
graficos_04_a:		; patrones p04:7FFC a 0x2400 y 0x200 colores de p05:8EA9
	call bancos_4_5_6		;4d6c   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	ld de,07ffch		;4d6f
	ld hl,02400h		;4d72
	call rle		;4d75   ; rle: RLE de DE a la VRAM HL
	ld de,08ea9h		;4d78
	ld hl,00400h		;4d7b
L_4D7E:
	ld bc,00200h		;4d7e
	call copia_a_vram		;4d81   ; copia_a_vram: LDIRVM de DE a la VRAM HL
	jp bancos_9_10_11		;4d84   ; bancos_9_10_11: pone los bancos 9-10-11
graficos_04_b:		; patrones p04:7CB8 a 0x2A00 y 0x200 colores de p05:8CA9
	call bancos_4_5_6		;4d87   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	ld de,07cb8h		;4d8a
	ld hl,02a00h		;4d8d
	call rle		;4d90   ; rle: RLE de DE a la VRAM HL
	ld de,08ca9h		;4d93
	ld hl,00c00h		;4d96
	jr L_4D7E		;4d99
sprites_06:		; patrones de sprite p06:BE8A a 0x1800
	call bancos_4_5_6		;4d9b   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	ld de,0be8ah		;4d9e
	ld hl,01800h		;4da1
	call rle		;4da4   ; rle: RLE de DE a la VRAM HL
	jp bancos_9_10_11		;4da7   ; bancos_9_10_11: pone los bancos 9-10-11
graficos_04_c:		; p04:68F0 y patrones volteados p06:AA5D a 0x2410
	call bancos_4_5_6		;4daa   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 068f0h		;4dad   ; graficos_de_lista: B entradas de 4 bytes [RLE][VRAM] en dos tercios
	ld de,0aa5dh		;4db0
	ld hl,02410h		;4db3
	call rle_volteado_a_dos_tercios		;4db6   ; rle_volteado_a_dos_tercios: el RLE volteado (p00:5A32) en dos tercios
	jp bancos_9_10_11		;4db9   ; bancos_9_10_11: pone los bancos 9-10-11
texto_fijo_4:		; texto C (0-2 segun 0xE8A4, o 4-6 con los tipos 0x59/0x5A) de la tabla fija 4 (p21:6DA6)
	ld de,(0e363h)		;4dbc   ; lee el tipo del personaje de enfrente
	ld hl,00059h		;4dc0
	and a			;4dc3
	sbc hl,de		;4dc4
	jr z,L_4DF0		;4dc6
	ld hl,0005ah		;4dc8
	and a			;4dcb
	sbc hl,de		;4dcc
	jr z,L_4DF0		;4dce
	ld a,(0e8a4h)		;4dd0   ; lee la opcion del cursor
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
texto_fijo_1:		; texto C de la tabla fija 1 (p21:6928)
	ld a,001h		;4de1
	jr L_4DEB		;4de3
texto_fijo_2:		; texto C de la tabla fija 2 (p21:6DAC)
	ld a,002h		;4de5
	jr L_4DEB		;4de7
texto_fijo_3:		; texto C de la tabla fija 3 (p21:7080)
	ld a,003h		;4de9
L_4DEB:
	ld (0e889h),a		;4deb   ; guarda la tabla del texto (1-4 fijas; otra: la de la sala)
	jr texto		;4dee
L_4DF0:
	ld a,(0e8a4h)		;4df0   ; lee la opcion del cursor
	and a			;4df3
	ld c,004h		;4df4
	jr z,texto		;4df6
	inc c			;4df8
	dec a			;4df9
	jr z,texto		;4dfa
	inc c			;4dfc
texto:		; un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	push bc			;4dfd
	call vuelca_ventana		;4dfe   ; vuelca_ventana: 8 filas x 24 de 0xEF00 a 0x3A00 (la ventana del texto)
	pop bc			;4e01
	ld a,(0e885h)		;4e02   ; lee el paso del texto (0 prepara, 1 escribe)
	call despacha		;4e05   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


empieza_texto:		; busca el texto (p00:4E76), borra la ventana y deja el cursor
	ld a,002h		;4e0c
	ld (0e886h),a		;4e0e   ; guarda el texto en marcha
	call bancos_21_22_23		;4e11   ; bancos_21_22_23: pone los bancos 21-22-23
	call busca_texto		;4e14   ; busca_texto: 0xE882 = el texto C: tablas fijas 1-4 (0xE889) o la de la sala (grupo p21:639E, tabla p21:64BA)
	call bancos_del_estado		;4e17   ; bancos_del_estado: pone el reparto que corresponde al estado 0xE000/0xE001
	call borra_ventana		;4e1a   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	ld hl,(0e344h)		;4e1d   ; lee el principio de la linea del texto
	ld (0e346h),hl		;4e20   ; guarda el cursor del texto
	ld hl,0e885h		;4e23   ; apunta a el paso del texto (0 prepara, 1 escribe)
	inc (hl)			;4e26
	ret			;4e27
bancos_del_estado:		; pone el reparto que corresponde al estado 0xE000/0xE001
	ld a,(0e000h)		;4e28   ; lee el estado del juego
	cp 002h		;4e2b
	jr nz,L_4E39		;4e2d
	ld a,(0e001h)		;4e2f   ; lee el paso del estado
	and a			;4e32
	jp z,bancos_4_5_6		;4e33   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	jp bancos_1_2_3		;4e36   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
L_4E39:
	cp 008h		;4e39
	jp z,bancos_9_10_11		;4e3b   ; bancos_9_10_11: pone los bancos 9-10-11
	cp 004h		;4e3e
	jp nz,bancos_1_2_3		;4e40   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	ld a,(0e001h)		;4e43   ; lee el paso del estado
	cp 004h		;4e46
	jp c,bancos_4_5_6		;4e48   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	jp bancos_1_2_3		;4e4b   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
sigue_texto:		; escribe el texto en curso (p00:4EC0) y acaba cuando 0xE886 llega a 1
	xor a			;4e4e
	ld (0e88ah),a		;4e4f   ; guarda el texto que va despues
	call bancos_del_texto		;4e52   ; bancos_del_texto: pone 21-22-23, 24-25-26 o 27-28 segun 0xE88F
	call escribe_texto		;4e55   ; escribe_texto: un caracter del texto: codigos FF fin, FE linea, FD espera, FC-F7 nombres y avisos
	call bancos_del_estado		;4e58   ; bancos_del_estado: pone el reparto que corresponde al estado 0xE000/0xE001
	ld hl,0e886h		;4e5b   ; apunta a el texto en marcha
	ld a,(hl)			;4e5e
	dec a			;4e5f
	ret nz			;4e60
	dec (hl)			;4e61
	ld a,(hl)			;4e62
	ld (0e885h),a		;4e63   ; guarda el paso del texto (0 prepara, 1 escribe)
	ld (0e889h),a		;4e66   ; guarda la tabla del texto (1-4 fijas; otra: la de la sala)
	ret			;4e69
bancos_del_texto:		; pone 21-22-23, 24-25-26 o 27-28 segun 0xE88F
	ld a,(0e88fh)		;4e6a   ; lee el grupo de bancos del texto
	call despacha		;4e6d   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


busca_texto:		; 0xE882 = el texto C: tablas fijas 1-4 (0xE889) o la de la sala (grupo p21:639E, tabla p21:64BA)
	xor a			;4e76
	ld (0e88fh),a		;4e77   ; guarda el grupo de bancos del texto
	ld a,(0e889h)		;4e7a   ; lee la tabla del texto (1-4 fijas; otra: la de la sala)
	ld b,a			;4e7d
	ld a,c			;4e7e
	ld (0e880h),a		;4e7f   ; guarda el numero del texto
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
	call nibble_de_la_sala		;4e9e   ; nibble_de_la_sala: A = el nibble de la sala 0xEB40 en la tabla DE (par: el alto)
	ld (0e88fh),a		;4ea1   ; guarda el grupo de bancos del texto
	ld a,b			;4ea4
	ld hl,(0eb40h)		;4ea5   ; lee la sala
	ld de,064bah		;4ea8
	add hl,hl			;4eab
	add hl,de			;4eac
	ld e,(hl)			;4ead
	inc hl			;4eae
	ld d,(hl)			;4eaf
L_4EB0:
	push de			;4eb0
	call bancos_del_texto		;4eb1   ; bancos_del_texto: pone 21-22-23, 24-25-26 o 27-28 segun 0xE88F
	pop de			;4eb4
	ld a,(0e880h)		;4eb5   ; lee el numero del texto
	call palabra_de_tabla		;4eb8   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld (0e882h),de		;4ebb   ; guarda el puntero del texto
	ret			;4ebf
escribe_texto:		; un caracter del texto: codigos FF fin, FE linea, FD espera, FC-F7 nombres y avisos
	ld a,(0e887h)		;4ec0   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	rra			;4ec3
	jp c,espera_tecla		;4ec4   ; espera_tecla: espera a que se pulse una tecla (0xE887 = 1) con el cursor parpadeando en 0xEFF7
	rra			;4ec7
	jp c,espera_y_acaba		;4ec8   ; espera_y_acaba: espera tecla y acaba el texto (0xE887 = 2)
	ld a,(0e003h)		;4ecb   ; lee la cuenta de cuadros
	and 001h		;4ece
	ret nz			;4ed0
	ld a,(0e884h)		;4ed1   ; lee las lineas que quedan por subir
	and a			;4ed4
	jp nz,sube_el_texto		;4ed5   ; sube_el_texto: sube la ventana del texto 0xEF00 una linea
L_4ED8:
	ld de,(0e882h)		;4ed8   ; lee el puntero del texto
	ld hl,(0e346h)		;4edc   ; lee el cursor del texto
L_4EDF:
	ld a,(de)			;4edf
	inc a			;4ee0
	jp z,acaba_texto		;4ee1   ; acaba_texto: vuelca la ventana y acaba el texto
	inc a			;4ee4
	jp z,salto_de_linea		;4ee5   ; salto_de_linea: salta de linea en la ventana del texto (0x40 bytes = dos filas)
	inc a			;4ee8
	jr z,espera_tecla		;4ee9
	inc a			;4eeb
	jp z,nombre_del_personaje		;4eec   ; nombre_del_personaje: escribe el nombre de 0xEAFF (codigo FC)
	inc a			;4eef
	jp z,nombre_11		;4ef0   ; nombre_11: escribe el nombre de 0xEB11
	inc a			;4ef3
	jp z,espera_y_acaba		;4ef4   ; espera_y_acaba: espera tecla y acaba el texto (0xE887 = 2)
	inc a			;4ef7
	jp z,nombre_08		;4ef8   ; nombre_08: escribe el nombre de 0xEB08
	inc a			;4efb
	jp z,nombre_1a		;4efc   ; nombre_1a: escribe el nombre de 0xEB1A
	inc a			;4eff
	jp z,L_4FA2		;4f00
	inc a			;4f03
	jp z,cuatro_caracteres		;4f04   ; cuatro_caracteres: escribe cuatro caracteres del texto seguidos
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
	ld a,(0e88dh)		;4f1c   ; lee escribir en gris (0x0A)
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
	jp z,fin_de_linea		;4f2f   ; fin_de_linea: al llegar a la columna 23: si el caracter no puede ir, salta de linea
L_4F32:
	ld a,(de)			;4f32
	cp 03ch		;4f33
	jr nz,L_4F3D		;4f35
	ld c,a			;4f37
	xor a			;4f38
	ld (0e88dh),a		;4f39   ; guarda escribir en gris (0x0A)
	ld a,c			;4f3c
L_4F3D:
	ld c,a			;4f3d
	ld a,(0e88dh)		;4f3e   ; lee escribir en gris (0x0A)
	and a			;4f41
	ld a,c			;4f42
	jr z,L_4F4B		;4f43
	cp 03bh		;4f45
	jr z,L_4F4B		;4f47
	ld a,00ah		;4f49
L_4F4B:
	ld (hl),a			;4f4b
	inc hl			;4f4c
	ld (0e346h),hl		;4f4d   ; guarda el cursor del texto
L_4F50:
	inc de			;4f50
	ld (0e882h),de		;4f51   ; guarda el puntero del texto
	ld a,(0e8e0h)		;4f55
	dec a			;4f58
	ret z			;4f59
	jp sonido_de_letra		;4f5a   ; sonido_de_letra: el sonido de cada letra (2-4 segun 0xE3B0) salvo en ciertas salas
espera_tecla:		; espera a que se pulse una tecla (0xE887 = 1) con el cursor parpadeando en 0xEFF7
	ld a,001h		;4f5d
	ld (0e887h),a		;4f5f   ; guarda la espera del texto (1 tecla, 2 tecla y fin)
cursor_de_espera:		; parpadea el cursor del texto y, con tecla, sigue (p00:5087)
	ld a,(0e008h)		;4f62   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	and 050h		;4f65
	jr nz,L_4F76		;4f67
	ld a,(0e003h)		;4f69   ; lee la cuenta de cuadros
	and 004h		;4f6c
	jr z,L_4F72		;4f6e
	ld a,01fh		;4f70
L_4F72:
	ld (0eff7h),a		;4f72
	ret			;4f75
L_4F76:
	xor a			;4f76
	ld (0eff7h),a		;4f77
	ld de,(0e882h)		;4f7a   ; lee el puntero del texto
	call salto_de_linea		;4f7e   ; salto_de_linea: salta de linea en la ventana del texto (0x40 bytes = dos filas)
	xor a			;4f81
	ld (0e887h),a		;4f82   ; guarda la espera del texto (1 tecla, 2 tecla y fin)
	ret			;4f85
espera_y_acaba:		; espera tecla y acaba el texto (0xE887 = 2)
	ld a,002h		;4f86
	ld (0e887h),a		;4f88   ; guarda la espera del texto (1 tecla, 2 tecla y fin)
	xor a			;4f8b
	ld (0e886h),a		;4f8c   ; guarda el texto en marcha
	call cursor_de_espera		;4f8f   ; cursor_de_espera: parpadea el cursor del texto y, con tecla, sigue (p00:5087)
	ld a,(0e887h)		;4f92   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;4f95
	ret nz			;4f96
	ld (0e885h),a		;4f97   ; guarda el paso del texto (0 prepara, 1 escribe)
	ld hl,(0e882h)		;4f9a   ; lee el puntero del texto
	ld a,(hl)			;4f9d
	ld (0e88ah),a		;4f9e   ; guarda el texto que va despues
	ret			;4fa1
L_4FA2:
	inc de			;4fa2
	ld a,001h		;4fa3
	ld (0e888h),a		;4fa5   ; guarda el nombre va entre parentesis
	jp L_4EDF		;4fa8
nombre_del_personaje:		; escribe el nombre de 0xEAFF (codigo FC)
	ld ix,0eaffh		;4fab
	ld c,000h		;4faf
escribe_nombre:		; escribe el nombre de IX hasta 0xFF
	ld a,l			;4fb1
	and 01fh		;4fb2
	cp 017h		;4fb4
	jp z,L_508C		;4fb6
	ld a,(0e888h)		;4fb9   ; lee el nombre va entre parentesis
	and a			;4fbc
	jr nz,L_4FC5		;4fbd
	ld a,c			;4fbf
	ld (0e3b0h),a		;4fc0   ; guarda quien habla (sonido de las letras)
	jr L_4FD0		;4fc3
L_4FC5:
	push hl			;4fc5
	push de			;4fc6
	call sonido_de_letra		;4fc7   ; sonido_de_letra: el sonido de cada letra (2-4 segun 0xE3B0) salvo en ciertas salas
	pop de			;4fca
	pop hl			;4fcb
	inc hl			;4fcc
	inc hl			;4fcd
	inc hl			;4fce
	inc hl			;4fcf
L_4FD0:
	ld (0e346h),hl		;4fd0   ; guarda el cursor del texto
	inc de			;4fd3
	ld (0e882h),de		;4fd4   ; guarda el puntero del texto
	xor a			;4fd8
	ld (0e888h),a		;4fd9   ; guarda el nombre va entre parentesis
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
	ld a,(0e88dh)		;4ff1   ; lee escribir en gris (0x0A)
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
	ld a,(0e88dh)		;5001   ; lee escribir en gris (0x0A)
	and a			;5004
	ld a,c			;5005
	jr z,L_500A		;5006
	ld a,00ah		;5008
L_500A:
	ld (hl),a			;500a
	inc hl			;500b
	jr L_4FE0		;500c
nombre_11:		; escribe el nombre de 0xEB11
	xor a			;500e
	ld (0e88dh),a		;500f   ; guarda escribir en gris (0x0A)
	ld a,(0e888h)		;5012   ; lee el nombre va entre parentesis
	and a			;5015
	ld a,000h		;5016
	jr nz,L_501B		;5018
	inc a			;501a
L_501B:
	ld (0e88eh),a		;501b
	ld ix,0eb11h		;501e
	ld c,001h		;5022
	call escribe_nombre		;5024   ; escribe_nombre: escribe el nombre de IX hasta 0xFF
	ld a,(0eb7bh)		;5027   ; lee las banderas de la historia, byte 0x3B (se graban con la partida)
	and a			;502a
	ret z			;502b
	ld a,(0e88eh)		;502c
	and a			;502f
	ret z			;5030
	xor a			;5031
	ld (0e88eh),a		;5032
	inc a			;5035
	ld (0e88dh),a		;5036   ; guarda escribir en gris (0x0A)
	ret			;5039
nombre_08:		; escribe el nombre de 0xEB08
	ld ix,0eb08h		;503a
	ld c,001h		;503e
	jp escribe_nombre		;5040   ; escribe_nombre: escribe el nombre de IX hasta 0xFF
nombre_1a:		; escribe el nombre de 0xEB1A
	ld a,(0eb25h)		;5043
	ld c,a			;5046
	ld ix,0eb1ah		;5047
	jp escribe_nombre		;504b   ; escribe_nombre: escribe el nombre de IX hasta 0xFF
cuatro_caracteres:		; escribe cuatro caracteres del texto seguidos
	dec hl			;504e
	dec hl			;504f
	dec hl			;5050
	dec hl			;5051
	inc de			;5052
	ld (0e346h),hl		;5053   ; guarda el cursor del texto
	ld (0e882h),de		;5056   ; guarda el puntero del texto
	call L_4ED8		;505a
	call L_4ED8		;505d
	call L_4ED8		;5060
	jp L_4ED8		;5063
fin_de_linea:		; al llegar a la columna 23: si el caracter no puede ir, salta de linea
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
	ld hl,(0e882h)		;507e   ; lee el puntero del texto
	ld a,(hl)			;5081
	inc a			;5082
	jr z,acaba_texto		;5083
	jr L_508C		;5085
salto_de_linea:		; salta de linea en la ventana del texto (0x40 bytes = dos filas)
	inc de			;5087
	ld (0e882h),de		;5088   ; guarda el puntero del texto
L_508C:
	ld hl,(0e344h)		;508c   ; lee el principio de la linea del texto
	ld de,00040h		;508f
	add hl,de			;5092
	ld de,(0e344h)		;5093   ; lee el principio de la linea del texto
	ld (0e344h),hl		;5097   ; guarda el principio de la linea del texto
	ld (0e346h),hl		;509a   ; guarda el cursor del texto
	ld bc,0f000h		;509d   ; apunta a los atributos de los 32 sprites
	and a			;50a0
	sbc hl,bc		;50a1
	ret c			;50a3
	ld a,002h		;50a4
	ld (0e884h),a		;50a6   ; guarda las lineas que quedan por subir
	ex de,hl			;50a9
	ld (0e344h),hl		;50aa   ; guarda el principio de la linea del texto
	ld (0e346h),hl		;50ad   ; guarda el cursor del texto
sube_el_texto:		; sube la ventana del texto 0xEF00 una linea
	ld hl,0e884h		;50b0   ; apunta a las lineas que quedan por subir
	dec (hl)			;50b3
	ld hl,0ef20h		;50b4
	ld de,0ef00h		;50b7   ; apunta a la ventana del texto (32 x 8)
	ld c,018h		;50ba
L_50BC:
	push hl			;50bc
	push de			;50bd
	ld b,008h		;50be
L_50C0:
	ld a,(hl)			;50c0
	ld (de),a			;50c1
	ld a,020h		;50c2
	call hl_mas_a		;50c4   ; hl_mas_a: HL = HL + A
	ld a,020h		;50c7
	call de_mas_a		;50c9   ; de_mas_a: DE = DE + A
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
acaba_texto:		; vuelca la ventana y acaba el texto
	call vuelca_ventana		;50e3   ; vuelca_ventana: 8 filas x 24 de 0xEF00 a 0x3A00 (la ventana del texto)
	ld hl,0e886h		;50e6   ; apunta a el texto en marcha
	dec (hl)			;50e9
	ret			;50ea
borra_ventana:		; borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	ld hl,0ef00h		;50eb   ; apunta a la ventana del texto (32 x 8)
	ld de,0ef01h		;50ee
	ld bc,000ffh		;50f1
	ld (hl),000h		;50f4
	ldir		;50f6
	ld hl,0ef25h		;50f8
	ld (0e344h),hl		;50fb   ; guarda el principio de la linea del texto
	jp vuelca_ventana		;50fe   ; vuelca_ventana: 8 filas x 24 de 0xEF00 a 0x3A00 (la ventana del texto)
sonido_de_letra:		; el sonido de cada letra (2-4 segun 0xE3B0) salvo en ciertas salas
	push de			;5101
	push hl			;5102
	ld hl,(0eb40h)		;5103   ; lee la sala
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
	ld hl,(0eb40h)		;511c   ; lee la sala
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
	ld a,(0f0fah)		;5133   ; lee sin el sonido de las letras (cambia con la tecla del bit 7)
	and a			;5136
	ret nz			;5137
	ld a,(0e3b0h)		;5138   ; lee quien habla (sonido de las letras)
	and a			;513b
	ld c,004h		;513c
	jr z,L_5147		;513e
	ld c,003h		;5140
	dec a			;5142
	jr z,L_5147		;5143
	ld c,002h		;5145
L_5147:
	ld a,c			;5147
	jp efecto		;5148   ; efecto: pide el sonido A si 0xE002 lleva el bit 6
mapa_de_la_sala:		; la sala 0xEB40 (12 x 8 bloques a nibbles, p15:6000 o p20:B606) a los nombres 0xED00 y la dureza 0xE800
	xor a			;514b
	ld (0e8e7h),a		;514c
	ld hl,0e800h		;514f   ; apunta a la dureza de los bloques de la sala (16 por fila)
	ld de,0e801h		;5152
	ld bc,0007fh		;5155
	ld (hl),000h		;5158
	ldir		;515a
	call bancos_18_19_20		;515c   ; bancos_18_19_20: pone los bancos 18-19-20
	ld hl,(0eb40h)		;515f   ; lee la sala
	ld bc,00200h		;5162
	and a			;5165
	sbc hl,bc		;5166
	ld de,0b606h		;5168
	jr nc,L_5176		;516b
	call bancos_15_16_17		;516d   ; bancos_15_16_17: pone los bancos 15-16-17
	ld hl,(0eb40h)		;5170   ; lee la sala
	ld de,06000h		;5173
L_5176:
	ld a,(0eb7dh)		;5176   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 3,a		;5179
	jr z,L_5191		;517b
	push de			;517d
	push hl			;517e
	ld hl,(0eb40h)		;517f   ; lee la sala
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
	ld hl,0ed00h		;519d   ; apunta a los nombres de la pantalla (32 x 24)
	ld (0e8e2h),hl		;51a0
	ld hl,0e800h		;51a3   ; apunta a la dureza de los bloques de la sala (16 por fila)
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
	call es_duro		;51e5   ; es_duro: A = 1 si la ficha B es >= la primera dura (0xE361)
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
	call hl_mas_a		;51f8   ; hl_mas_a: HL = HL + A
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
	jp bancos_del_estado		;521e   ; bancos_del_estado: pone el reparto que corresponde al estado 0xE000/0xE001
es_duro:		; A = 1 si la ficha B es >= la primera dura (0xE361)
	ld a,(0e361h)		;5221   ; lee la primera ficha dura de la sala
	cp b			;5224
	ld a,001h		;5225
	ret z			;5227
	ret c			;5228
	dec a			;5229
	ret			;522a
menu:		; un paso del menu de la sala (0xE8A0, tabla p00:5231)
	ld a,(0e8a0h)		;522b   ; lee el paso del menu (tabla p00:5231)
	call despacha		;522e   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


menu_abre:		; abre el menu: el personaje de enfrente (0xE8A6) o nada
	ld a,003h		;5245
	ld (0e8a3h),a		;5247   ; guarda la lista de opciones del menu
	xor a			;524a
	ld (0e8b2h),a		;524b
	ld (0e8b1h),a		;524e
	call 08cf5h		;5251   ; actor_de_enfrente: 0xE8A6 = el actor que esta delante del personaje (0xFF si no hay); si es una puerta, prepara el salto
	ld a,(0e8a6h)		;5254   ; lee el actor de enfrente (0xFF: ninguno)
	inc a			;5257
	jr z,L_52CF		;5258
	dec a			;525a
	call ficha_de_actor		;525b   ; ficha_de_actor: HL = 0xE400 + A * 0x80: la ficha del actor A
	ld (0e365h),hl		;525e   ; guarda la ficha del personaje de enfrente
	push hl			;5261
	pop ix		;5262
	ld e,(hl)			;5264
	inc hl			;5265
	ld d,(hl)			;5266
	ld (0e363h),de		;5267   ; guarda el tipo del personaje de enfrente
	ld de,0003fh		;526b
	add hl,de			;526e
	ld de,0e8d0h		;526f   ; apunta a las veces que se ha elegido cada opcion
	ld bc,00010h		;5272
	ldir		;5275
	ld a,(0e3c6h)		;5277   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	dec a			;527a
	xor 001h		;527b
	inc a			;527d
	ld (ix+00bh),a		;527e
	push ix		;5281
	pop hl			;5283
	ld de,00011h		;5284
	add hl,de			;5287
	dec a			;5288
	call hl_mas_a		;5289   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;528c
	ld (ix+008h),a		;528d
	call datos_del_personaje		;5290   ; datos_del_personaje: copia de la ficha IX los nombres (0xEB1B-0xEB1F) y 0xEB25
menu_siguiente:		; pasa al siguiente paso del menu (0xE8A0 + 1)
	ld hl,0e8a0h		;5293   ; apunta a el paso del menu (tabla p00:5231)
	inc (hl)			;5296
	ret			;5297
datos_del_personaje:		; copia de la ficha IX los nombres (0xEB1B-0xEB1F) y 0xEB25
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
	ld hl,0e8d0h		;52cf   ; apunta a las veces que se ha elegido cada opcion
	ld de,0e8d1h		;52d2
	ld (hl),000h		;52d5
	ld bc,0000fh		;52d7
	ldir		;52da
	jr menu_siguiente		;52dc
menu_pinta:		; pinta las opciones del menu
	ld a,(0e8a3h)		;52de   ; lee la lista de opciones del menu
	call opciones_guardadas		;52e1   ; opciones_guardadas: las opciones de A con el cursor guardado (0xE8B2/0xE8B1)
	call pinta_opciones		;52e4   ; pinta_opciones: las opciones de 0xE8B8 (textos p04:7A15) en columna desde 0x3A1A
	ld a,001h		;52e7
	ld (0e8a7h),a		;52e9   ; guarda la clase del menu (1 hablar, 2 opciones, 3 objetos)
	ld a,003h		;52ec
	jp menu_paso		;52ee   ; menu_paso: 0xE8A0 = A
menu_opciones:		; elige la lista de opciones del menu
	ld a,(0e8a3h)		;52f1   ; lee la lista de opciones del menu
	cp 006h		;52f4
	jr z,L_5358		;52f6
	cp 017h		;52f8
	jr nz,L_5336		;52fa
	ld de,(0e8ach)		;52fc
	ld a,(0eb7ch)		;5300   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 0f0h		;5303
	jr z,L_5310		;5305
	ld a,00dh		;5307
	call de_mas_a		;5309   ; de_mas_a: DE = DE + A
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
	ld a,(0f0f9h)		;531e   ; lee hay otro cartucho
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
	ld (0e8a3h),a		;532d   ; guarda la lista de opciones del menu
	ld (0e8ach),de		;5330
	jr L_534A		;5334
L_5336:
	cp 01dh		;5336
	jr nz,L_534A		;5338
	ld hl,0eb65h		;533a   ; apunta a las banderas de la historia, byte 0x25 (se graban con la partida)
	bit 0,(hl)		;533d
	jr nz,L_534A		;533f
	bit 1,(hl)		;5341
	jr z,L_534A		;5343
	ld a,027h		;5345
	ld (0e8a3h),a		;5347   ; guarda la lista de opciones del menu
L_534A:
	call opciones		;534a   ; opciones: la lista de opciones A de p04:7902 a 0xE8B8, cursor a cero
	call pinta_opciones		;534d   ; pinta_opciones: las opciones de 0xE8B8 (textos p04:7A15) en columna desde 0x3A1A
	ld a,002h		;5350
	ld (0e8a7h),a		;5352   ; guarda la clase del menu (1 hablar, 2 opciones, 3 objetos)
	jp menu_siguiente		;5355   ; menu_siguiente: pasa al siguiente paso del menu (0xE8A0 + 1)
L_5358:
	call lista_de_objetos		;5358   ; lista_de_objetos: los objetos que se llevan (0xE9D0, bit 0) a 0xE8B8; acarreo si no hay ninguno
	jr c,L_536A		;535b
	call pinta_objetos		;535d   ; pinta_objetos: los objetos de 0xE8B8 en cuadricula desde 0x3A24
	ld a,003h		;5360
	ld (0e8a7h),a		;5362   ; guarda la clase del menu (1 hablar, 2 opciones, 3 objetos)
	ld a,008h		;5365
	jp menu_paso		;5367   ; menu_paso: 0xE8A0 = A
L_536A:
	ld a,001h		;536a
	ld (0e8a7h),a		;536c   ; guarda la clase del menu (1 hablar, 2 opciones, 3 objetos)
	ld (0e8a2h),a		;536f   ; guarda la columna del menu
	ld a,(0e8aeh)		;5372
	ld (0e8a4h),a		;5375   ; guarda la opcion del cursor
	ld a,005h		;5378
	call menu_paso		;537a   ; menu_paso: 0xE8A0 = A
	jp L_54D6		;537d
L_5380:
	ld a,001h		;5380
	ld (0e8a7h),a		;5382   ; guarda la clase del menu (1 hablar, 2 opciones, 3 objetos)
	ld (0e8a2h),a		;5385   ; guarda la columna del menu
	ld a,005h		;5388
	call menu_paso		;538a   ; menu_paso: 0xE8A0 = A
	jp L_54D0		;538d
menu_elige:		; mueve el cursor del menu y, con disparo, elige
	xor a			;5390
	ld (0e8afh),a		;5391
	call cursor_vertical		;5394   ; cursor_vertical: arriba/abajo con repeticion (0xE8B0) en 0xE8A4
	ld a,(0e8afh)		;5397
	and a			;539a
	jr nz,L_53BC		;539b
	call pinta_cursor		;539d   ; pinta_cursor: el cursor parpadeante en la columna de opciones
	ld a,(0e008h)		;53a0   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	and 010h		;53a3
	ret z			;53a5
	ld a,(0e8a7h)		;53a6   ; lee la clase del menu (1 hablar, 2 opciones, 3 objetos)
	dec a			;53a9
	jp nz,menu_siguiente		;53aa   ; menu_siguiente: pasa al siguiente paso del menu (0xE8A0 + 1)
	ld a,(0e8a4h)		;53ad   ; lee la opcion del cursor
	ld (0e8b2h),a		;53b0
	ld a,(0e8a2h)		;53b3   ; lee la columna del menu
	ld (0e8b1h),a		;53b6
	jp menu_siguiente		;53b9   ; menu_siguiente: pasa al siguiente paso del menu (0xE8A0 + 1)
L_53BC:
	ld a,(0e8a1h)		;53bc   ; lee el menu tiene dos columnas
	and a			;53bf
	ret z			;53c0
	ld a,(0e8a2h)		;53c1   ; lee la columna del menu
	cpl			;53c4
	and 001h		;53c5
	ld (0e8a2h),a		;53c7   ; guarda la columna del menu
	ld a,(0e8afh)		;53ca
	dec a			;53cd
	jr z,L_53D2		;53ce
	ld a,003h		;53d0
L_53D2:
	ld (0e8a4h),a		;53d2   ; guarda la opcion del cursor
	call marco_del_menu		;53d5   ; marco_del_menu: el marco del menu (p00:454A) y su interior a cero
	call pinta_opciones		;53d8   ; pinta_opciones: las opciones de 0xE8B8 (textos p04:7A15) en columna desde 0x3A1A
	jp pinta_cursor		;53db   ; pinta_cursor: el cursor parpadeante en la columna de opciones
menu_cuenta:		; cuenta cuantas veces se ha elegido cada opcion (0xE8D0)
	call borra_cursor		;53de   ; borra_cursor: borra el cursor de la columna de opciones
	ld a,(0e8a7h)		;53e1   ; lee la clase del menu (1 hablar, 2 opciones, 3 objetos)
	dec a			;53e4
	jr nz,L_53FE		;53e5
	ld a,(0e8a2h)		;53e7   ; lee la columna del menu
	and a			;53ea
	ld hl,0e8d0h		;53eb   ; apunta a las veces que se ha elegido cada opcion
	jr z,L_53F3		;53ee
	ld hl,0e8d4h		;53f0
L_53F3:
	ld a,(0e8a4h)		;53f3   ; lee la opcion del cursor
	call hl_mas_a		;53f6   ; hl_mas_a: HL = HL + A
	inc (hl)			;53f9
	ld a,(hl)			;53fa
	ld (0e8a8h),a		;53fb
L_53FE:
	jp menu_siguiente		;53fe   ; menu_siguiente: pasa al siguiente paso del menu (0xE8A0 + 1)
menu_responde:		; la respuesta a la opcion elegida (p07:988E)
	call bancos_7_8		;5401   ; bancos_7_8: pone los bancos 7-8 en 0x8000 y 0xA000
	ld a,(0e8a7h)		;5404   ; lee la clase del menu (1 hablar, 2 opciones, 3 objetos)
	cp 002h		;5407
	jp z,L_5567		;5409
	cp 003h		;540c
	jp z,L_5574		;540e
	ld a,(0e8a6h)		;5411   ; lee el actor de enfrente (0xFF: ninguno)
	inc a			;5414
	jp z,L_54D6		;5415
	ld hl,(0e363h)		;5418   ; lee el tipo del personaje de enfrente
	ld de,0988eh		;541b
	dec hl			;541e
	add hl,hl			;541f
	add hl,de			;5420
	ld e,(hl)			;5421
	inc hl			;5422
	ld d,(hl)			;5423
	ld a,(0e8a2h)		;5424   ; lee la columna del menu
	and a			;5427
	ld a,(0e8a4h)		;5428   ; lee la opcion del cursor
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
	call de_mas_a		;545d   ; de_mas_a: DE = DE + A
	inc de			;5460
	ld a,c			;5461
	and a			;5462
	jr z,L_546D		;5463
	ld b,a			;5465
L_5466:
	ld a,(de)			;5466
	call de_mas_a		;5467   ; de_mas_a: DE = DE + A
	inc de			;546a
	djnz L_5466		;546b
L_546D:
	ld a,(de)			;546d
	ld (0e8a9h),a		;546e
	ld c,a			;5471
	inc de			;5472
	ld a,(0e8a8h)		;5473
	cp c			;5476
	call nc,menu_guarda_cuenta		;5477   ; menu_guarda_cuenta: guarda C en la cuenta de la opcion
	dec a			;547a
	call de_mas_a		;547b   ; de_mas_a: DE = DE + A
	ld a,(de)			;547e
	ld c,a			;547f
L_5480:
	call bancos_1_2_3		;5480   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call 09cedh		;5483   ; ajusta_respuesta: busca el tipo del personaje (0xE363) en p03:AABE y ajusta la respuesta C con su rutina (tabla p02:9D1E)
	ld hl,0eb6ah		;5486   ; apunta a las banderas de la historia, byte 0x2A (se graban con la partida)
	bit 2,(hl)		;5489
	jr nz,L_54A1		;548b
	ld hl,0eb67h		;548d   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	bit 1,(hl)		;5490
	jr nz,L_54A8		;5492
	ld hl,0eb70h		;5494   ; apunta a las banderas de la historia, byte 0x30 (se graban con la partida)
	bit 0,(hl)		;5497
	jr nz,L_54C3		;5499
L_549B:
	call texto		;549b   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	jp menu_siguiente		;549e   ; menu_siguiente: pasa al siguiente paso del menu (0xE8A0 + 1)
L_54A1:
	xor a			;54a1
	ld (0e360h),a		;54a2   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp borra_cursor		;54a5   ; borra_cursor: borra el cursor de la columna de opciones
L_54A8:
	xor a			;54a8
	ld (0e368h),a		;54a9   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;54ac
	ld (0e360h),a		;54ad   ; guarda el modo dentro de la sala (tabla p00:5A83)
	inc a			;54b0
	ld (0e337h),a		;54b1   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,001d7h		;54b4
	ld (0e36ah),hl		;54b7   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
	ld hl,08030h		;54ba
	ld (0e3c1h),hl		;54bd   ; guarda la Y del personaje y el byte siguiente (16 bits)
	jp borra_cursor		;54c0   ; borra_cursor: borra el cursor de la columna de opciones
L_54C3:
	ld a,014h		;54c3
	ld (0ea01h),a		;54c5
	ld a,008h		;54c8
	ld (0e360h),a		;54ca   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp borra_cursor		;54cd   ; borra_cursor: borra el cursor de la columna de opciones
L_54D0:
	call texto_fijo_4		;54d0   ; texto_fijo_4: texto C (0-2 segun 0xE8A4, o 4-6 con los tipos 0x59/0x5A) de la tabla fija 4 (p21:6DA6)
	jp menu_siguiente		;54d3   ; menu_siguiente: pasa al siguiente paso del menu (0xE8A0 + 1)
L_54D6:
	call respuesta_al_azar		;54d6   ; respuesta_al_azar: C = la respuesta (opcion + 4 * lado) con dos bits al azar
	call 0abbdh		;54d9
	jr c,L_549B		;54dc
L_54DE:
	call texto_fijo_1		;54de   ; texto_fijo_1: texto C de la tabla fija 1 (p21:6928)
	jp menu_siguiente		;54e1   ; menu_siguiente: pasa al siguiente paso del menu (0xE8A0 + 1)
L_54E4:
	ld hl,0021eh		;54e4
	ld de,(0eb40h)		;54e7   ; lee la sala
	and a			;54eb
	sbc hl,de		;54ec
	jr nz,L_54F7		;54ee
	cp 008h		;54f0
	jr nz,L_54F7		;54f2
	ld c,a			;54f4
	jr L_549B		;54f5
L_54F7:
	call respuesta_al_azar		;54f7   ; respuesta_al_azar: C = la respuesta (opcion + 4 * lado) con dos bits al azar
	ld hl,(0e365h)		;54fa   ; lee la ficha del personaje de enfrente
	ld a,01ah		;54fd
	call hl_mas_a		;54ff   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;5502
	cp 002h		;5503
	jr z,L_54DE		;5505
	and a			;5507
	jr nz,L_5510		;5508
	call texto_fijo_2		;550a   ; texto_fijo_2: texto C de la tabla fija 2 (p21:6DAC)
	jp menu_siguiente		;550d   ; menu_siguiente: pasa al siguiente paso del menu (0xE8A0 + 1)
L_5510:
	call texto_fijo_3		;5510   ; texto_fijo_3: texto C de la tabla fija 3 (p21:7080)
	jp menu_siguiente		;5513   ; menu_siguiente: pasa al siguiente paso del menu (0xE8A0 + 1)
respuesta_al_azar:		; C = la respuesta (opcion + 4 * lado) con dos bits al azar
	ld a,(0e8a2h)		;5516   ; lee la columna del menu
	and a			;5519
	ld c,000h		;551a
	jr z,L_5520		;551c
	ld c,004h		;551e
L_5520:
	ld a,(0e8a4h)		;5520   ; lee la opcion del cursor
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
	jp bancos_1_2_3		;552f   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
L_5532:
	ld c,h			;5532
	call bancos_1_2_3		;5533   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	push bc			;5536
	push de			;5537
	call 0b08ch		;5538   ; opcion_cerrada: acarreo si la opcion C no vale todavia con el personaje de tipo 0xE363 (banderas de la historia)
	pop de			;553b
	pop bc			;553c
	push af			;553d
	call bancos_7_8		;553e   ; bancos_7_8: pone los bancos 7-8 en 0x8000 y 0xA000
	pop af			;5541
	jr c,L_54E4		;5542
	inc de			;5544
	ld a,c			;5545
	add a,a			;5546
	call de_mas_a		;5547   ; de_mas_a: DE = DE + A
	ld a,(de)			;554a
	ld l,a			;554b
	inc de			;554c
	ld a,(de)			;554d
	ld h,a			;554e
	ld a,(hl)			;554f
	ld (0e8a3h),a		;5550   ; guarda la lista de opciones del menu
	inc hl			;5553
	inc hl			;5554
	ld (0e8ach),hl		;5555
	xor a			;5558
	ld (0e8a2h),a		;5559   ; guarda la columna del menu
	ld a,(0e8a4h)		;555c   ; lee la opcion del cursor
	ld (0e8aeh),a		;555f
	ld a,002h		;5562
	jp menu_paso		;5564   ; menu_paso: 0xE8A0 = A
L_5567:
	ld a,(0e8a4h)		;5567   ; lee la opcion del cursor
	ld hl,(0e8ach)		;556a
	call hl_mas_a		;556d   ; hl_mas_a: HL = HL + A
	ld c,(hl)			;5570
	jp L_5480		;5571
L_5574:
	ld a,(0e8a4h)		;5574   ; lee la opcion del cursor
	ld hl,0e8b8h		;5577   ; apunta a las opciones del menu (0xFF acaba)
	call hl_mas_a		;557a   ; hl_mas_a: HL = HL + A
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
	ld (0e8a4h),a		;5595   ; guarda la opcion del cursor
	ld hl,(0e363h)		;5598   ; lee el tipo del personaje de enfrente
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
	call hl_mas_a		;55af   ; hl_mas_a: HL = HL + A
	ld a,c			;55b2
	call hl_mas_a		;55b3   ; hl_mas_a: HL = HL + A
	ld c,(hl)			;55b6
	jp L_5480		;55b7
menu_texto:		; escribe la respuesta y vuelve al menu
	call texto		;55ba   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;55bd   ; lee el texto en marcha
	and a			;55c0
	ret nz			;55c1
	ld a,(0e887h)		;55c2   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;55c5
	ret nz			;55c6
	ld a,(0e88ah)		;55c7   ; lee el texto que va despues
	and a			;55ca
	jr nz,L_55D8		;55cb
	ld a,003h		;55cd
	ld (0e8a3h),a		;55cf   ; guarda la lista de opciones del menu
	ld a,001h		;55d2
	ld (0e8a0h),a		;55d4   ; guarda el paso del menu (tabla p00:5231)
	ret			;55d7
L_55D8:
	ld a,(0e88ah)		;55d8   ; lee el texto que va despues
	ld (0e8aah),a		;55db   ; guarda el evento en curso (tabla p02:9135)
	xor a			;55de
	ld (0e8abh),a		;55df   ; guarda el paso del evento
	jp menu_siguiente		;55e2   ; menu_siguiente: pasa al siguiente paso del menu (0xE8A0 + 1)
menu_cursor:		; mueve el cursor de la cuadricula y, con disparo, pasa al paso 4
	call cursor_cuadricula		;55e5   ; cursor_cuadricula: mueve el cursor de la cuadricula de 3 columnas
	call pinta_cursor_cuadricula		;55e8   ; pinta_cursor_cuadricula: el cursor parpadeante en la cuadricula de objetos
	ld a,(0e008h)		;55eb   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	and 010h		;55ee
	ret z			;55f0
	ld a,004h		;55f1
menu_paso:		; 0xE8A0 = A
	ld (0e8a0h),a		;55f3   ; guarda el paso del menu (tabla p00:5231)
	ret			;55f6
menu_guarda_cuenta:		; guarda C en la cuenta de la opcion
	ld a,c			;55f7
	push af			;55f8
	ld a,(0e8a2h)		;55f9   ; lee la columna del menu
	and a			;55fc
	ld hl,0e8d0h		;55fd   ; apunta a las veces que se ha elegido cada opcion
	jr z,L_5605		;5600
	ld hl,0e8d4h		;5602
L_5605:
	ld a,(0e8a4h)		;5605   ; lee la opcion del cursor
	call hl_mas_a		;5608   ; hl_mas_a: HL = HL + A
	ld (hl),c			;560b
	pop af			;560c
	ret			;560d
ficha_de_actor:		; HL = 0xE400 + A * 0x80: la ficha del actor A
	ld l,a			;560e
	ld h,000h		;560f
	add hl,hl			;5611
	add hl,hl			;5612
	add hl,hl			;5613
	add hl,hl			;5614
	add hl,hl			;5615
	add hl,hl			;5616
	add hl,hl			;5617
	ld de,0e400h		;5618   ; apunta a los 8 actores de la sala (0x80 bytes cada uno)
	add hl,de			;561b
	ret			;561c
habla_con_1_2_3:		; datos del personaje, p03:AB92, el texto y modo 3
	call datos_del_personaje		;561d   ; datos_del_personaje: copia de la ficha IX los nombres (0xEB1B-0xEB1F) y 0xEB25
	call bancos_1_2_3		;5620   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call 0ab92h		;5623   ; banderas_tras_hablar: despues de la respuesta C: banderas de la historia en las salas 0x89 y 0x79
	call texto		;5626   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	call bancos_7_8		;5629   ; bancos_7_8: pone los bancos 7-8 en 0x8000 y 0xA000
	ld hl,0e360h		;562c   ; apunta a el modo dentro de la sala (tabla p00:5A83)
	ld (hl),003h		;562f
	ret			;5631
habla:		; datos del personaje, p03:AB92, el texto y modo 9
	call datos_del_personaje		;5632   ; datos_del_personaje: copia de la ficha IX los nombres (0xEB1B-0xEB1F) y 0xEB25
	call 0ab92h		;5635   ; banderas_tras_hablar: despues de la respuesta C: banderas de la historia en las salas 0x89 y 0x79
	call texto		;5638   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld hl,0e360h		;563b   ; apunta a el modo dentro de la sala (tabla p00:5A83)
	ld (hl),009h		;563e
	ret			;5640
menu_fijo:		; abre el menu con el personaje de la tabla p00:5676[0xE3A1]
	ld a,003h		;5641
	ld (0e8a3h),a		;5643   ; guarda la lista de opciones del menu
	ld a,(0e3a1h)		;5646   ; lee la escena de accion (1-9)
	dec a			;5649
	add a,a			;564a
	ld de,05676h		;564b
	call palabra_de_tabla		;564e   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	inc hl			;5651
	ld c,(hl)			;5652
	inc hl			;5653
	ld b,(hl)			;5654
	ld (0e363h),de		;5655   ; guarda el tipo del personaje de enfrente
	ld (0e365h),bc		;5659   ; guarda la ficha del personaje de enfrente
	push bc			;565d
	pop ix		;565e
	call datos_del_personaje		;5660   ; datos_del_personaje: copia de la ficha IX los nombres (0xEB1B-0xEB1F) y 0xEB25
	ld hl,0e8d0h		;5663   ; apunta a las veces que se ha elegido cada opcion
	ld de,0e8d1h		;5666
	ld (hl),000h		;5669
	ld bc,0000fh		;566b
	ldir		;566e
	ld hl,0e8a0h		;5670   ; apunta a el paso del menu (tabla p00:5231)
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


opciones_guardadas:		; las opciones de A con el cursor guardado (0xE8B2/0xE8B1)
	ld c,a			;567a
	ld a,(0e8b2h)		;567b
	ld (0e8a4h),a		;567e   ; guarda la opcion del cursor
	ld a,(0e8b1h)		;5681
	ld (0e8a2h),a		;5684   ; guarda la columna del menu
	ld a,c			;5687
	jr L_5694		;5688
opciones:		; la lista de opciones A de p04:7902 a 0xE8B8, cursor a cero
	ld hl,0e8a2h		;568a   ; apunta a la columna del menu
	ld (hl),000h		;568d
	ld hl,0e8a4h		;568f   ; apunta a la opcion del cursor
	ld (hl),000h		;5692
L_5694:
	call bancos_4_5_6		;5694   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	ld de,07902h		;5697
	call palabra_de_tabla		;569a   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ex de,hl			;569d
	ld a,(hl)			;569e
	ld (0e8a1h),a		;569f   ; guarda el menu tiene dos columnas
	inc hl			;56a2
	ld de,0e8b8h		;56a3   ; apunta a las opciones del menu (0xFF acaba)
L_56A6:
	ld a,(hl)			;56a6
	ld (de),a			;56a7
	inc a			;56a8
	jp z,bancos_del_estado		;56a9   ; bancos_del_estado: pone el reparto que corresponde al estado 0xE000/0xE001
	inc hl			;56ac
	inc de			;56ad
	jr L_56A6		;56ae
lista_de_objetos:		; los objetos que se llevan (0xE9D0, bit 0) a 0xE8B8; acarreo si no hay ninguno
	xor a			;56b0
	ld (0e8a2h),a		;56b1   ; guarda la columna del menu
	ld (0e8a4h),a		;56b4   ; guarda la opcion del cursor
	ld hl,0e9d0h		;56b7   ; apunta a los objetos (dos bytes cada uno; bit 0: se lleva)
	ld bc,01801h		;56ba
	ld de,0e8b8h		;56bd   ; apunta a las opciones del menu (0xFF acaba)
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
	ld hl,0e8b8h		;56cf   ; apunta a las opciones del menu (0xFF acaba)
	and a			;56d2
	sbc hl,de		;56d3
	jr nz,L_56D9		;56d5
	scf			;56d7
	ret			;56d8
L_56D9:
	and a			;56d9
	ret			;56da
pinta_opciones:		; las opciones de 0xE8B8 (textos p04:7A15) en columna desde 0x3A1A
	call bancos_4_5_6		;56db   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call marco_del_menu		;56de   ; marco_del_menu: el marco del menu (p00:454A) y su interior a cero
	ld hl,03a1ah		;56e1
	ld (0e8e0h),hl		;56e4
	ld a,(0e8a2h)		;56e7   ; lee la columna del menu
	and a			;56ea
	ld de,0e8b8h		;56eb   ; apunta a las opciones del menu (0xFF acaba)
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
	call texto_a_vram		;570b   ; texto_a_vram: texto de DE a la VRAM HL hasta 0xFF; 3 y 4 (dakuten) van a la fila de arriba
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
	ld (0e8a5h),a		;5722   ; guarda la ultima opcion
	jp bancos_del_estado		;5725   ; bancos_del_estado: pone el reparto que corresponde al estado 0xE000/0xE001
pinta_objetos:		; los objetos de 0xE8B8 en cuadricula desde 0x3A24
	call bancos_4_5_6		;5728   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call borra_ventana		;572b   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	ld hl,03a24h		;572e
	ld (0e8e0h),hl		;5731
	ld de,0e8b8h		;5734   ; apunta a las opciones del menu (0xFF acaba)
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
	call texto_a_vram		;574c   ; texto_a_vram: texto de DE a la VRAM HL hasta 0xFF; 3 y 4 (dakuten) van a la fila de arriba
	ld hl,(0e8e0h)		;574f
	ld a,l			;5752
	and 00ch		;5753
	jr z,L_575E		;5755
	ld a,007h		;5757
	call hl_mas_a		;5759   ; hl_mas_a: HL = HL + A
	jr L_5763		;575c
L_575E:
	ld a,032h		;575e
	call hl_mas_a		;5760   ; hl_mas_a: HL = HL + A
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
	ld (0e8a5h),a		;576e   ; guarda la ultima opcion
	jp bancos_del_estado		;5771   ; bancos_del_estado: pone el reparto que corresponde al estado 0xE000/0xE001
cursor_vertical:		; arriba/abajo con repeticion (0xE8B0) en 0xE8A4
	ld hl,0e8b0h		;5774   ; apunta a la repeticion del cursor
	ld a,(0e008h)		;5777   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	and 003h		;577a
	jr nz,L_5786		;577c
	ld a,(0e009h)		;577e   ; lee las teclas que hay
	and 003h		;5781
	ret z			;5783
	dec (hl)			;5784
	ret nz			;5785
L_5786:
	ld (hl),00ch		;5786
	rra			;5788
	ld hl,0e8a4h		;5789   ; apunta a la opcion del cursor
	jr c,L_579F		;578c
	ld a,(0e8a5h)		;578e   ; lee la ultima opcion
	cp (hl)			;5791
	jr z,L_5799		;5792
	inc (hl)			;5794
	call sonido_05		;5795   ; sonido_05: pide el sonido 5: el del cursor de los menus
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
	call sonido_05		;57a4   ; sonido_05: pide el sonido 5: el del cursor de los menus
	ret			;57a7
L_57A8:
	ld a,002h		;57a8
	ld (0e8afh),a		;57aa
	ret			;57ad
pinta_cursor:		; el cursor parpadeante en la columna de opciones
	call borra_cursor		;57ae   ; borra_cursor: borra el cursor de la columna de opciones
	ld hl,03a19h		;57b1
	ld a,(0e8a4h)		;57b4   ; lee la opcion del cursor
	add a,a			;57b7
	add a,a			;57b8
	add a,a			;57b9
	add a,a			;57ba
	add a,a			;57bb
	add a,a			;57bc
	call hl_mas_a		;57bd   ; hl_mas_a: HL = HL + A
	ld a,(0e003h)		;57c0   ; lee la cuenta de cuadros
	and 004h		;57c3
	jr z,L_57C9		;57c5
	ld a,03fh		;57c7
L_57C9:
	jp 0004dh		;57c9   ; BIOS WRTVRM - Writes data in VRAM
pinta_cursor_cuadricula:		; el cursor parpadeante en la cuadricula de objetos
	call borra_cursor_cuadricula		;57cc   ; borra_cursor_cuadricula: borra el cursor de la cuadricula
	ld hl,03a23h		;57cf
	ld a,(0e8a4h)		;57d2   ; lee la opcion del cursor
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
	call hl_mas_a		;57ee   ; hl_mas_a: HL = HL + A
	ld a,b			;57f1
	add a,a			;57f2
	ld c,a			;57f3
	add a,a			;57f4
	add a,c			;57f5
	add a,b			;57f6
	call hl_mas_a		;57f7   ; hl_mas_a: HL = HL + A
	ld a,(0e003h)		;57fa   ; lee la cuenta de cuadros
	and 004h		;57fd
	jr z,L_5803		;57ff
	ld a,03fh		;5801
L_5803:
	jp 0004dh		;5803   ; BIOS WRTVRM - Writes data in VRAM
cursor_cuadricula:		; mueve el cursor de la cuadricula de 3 columnas
	ld a,(0e008h)		;5806   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	and 00fh		;5809
	ret z			;580b
	ld hl,0e8a4h		;580c   ; apunta a la opcion del cursor
	rra			;580f
	jr c,L_582F		;5810
	rra			;5812
	jr c,L_583A		;5813
	rra			;5815
	jr c,L_584B		;5816
	ld a,(0e8a5h)		;5818   ; lee la ultima opcion
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
	call sonido_05		;582b   ; sonido_05: pide el sonido 5: el del cursor de los menus
	ret			;582e
L_582F:
	ld a,(hl)			;582f
	cp 003h		;5830
	ret c			;5832
	dec (hl)			;5833
	dec (hl)			;5834
	dec (hl)			;5835
	call sonido_05		;5836   ; sonido_05: pide el sonido 5: el del cursor de los menus
	ret			;5839
L_583A:
	inc (hl)			;583a
	inc (hl)			;583b
	inc (hl)			;583c
	ld a,(0e8a5h)		;583d   ; lee la ultima opcion
	cp (hl)			;5840
	jr nc,L_5847		;5841
	dec (hl)			;5843
	dec (hl)			;5844
	dec (hl)			;5845
	ret			;5846
L_5847:
	call sonido_05		;5847   ; sonido_05: pide el sonido 5: el del cursor de los menus
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
	call sonido_05		;5858   ; sonido_05: pide el sonido 5: el del cursor de los menus
	ret			;585b
borra_cursor:		; borra el cursor de la columna de opciones
	ld hl,03a19h		;585c
	ld b,007h		;585f
	ld de,00020h		;5861
L_5864:
	xor a			;5864
	call 0004dh		;5865   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;5868
	djnz L_5864		;5869
	ret			;586b
borra_cursor_cuadricula:		; borra el cursor de la cuadricula
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
marco_del_menu:		; el marco del menu (p00:454A) y su interior a cero
	ld de,0454ah		;588c
	call bytes_a_vram		;588f   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld hl,03a19h		;5892
	ld d,007h		;5895
L_5897:
	ld bc,00006h		;5897
	xor a			;589a
	call 00056h		;589b   ; BIOS FILVRM - Fills VRAM with value
	ld a,020h		;589e
	call hl_mas_a		;58a0   ; hl_mas_a: HL = HL + A
	dec d			;58a3
	jr nz,L_5897		;58a4
	ret			;58a6
color_de_borde:		; VDP R#7 = B
	ld c,007h		;58a7
	jp 00047h		;58a9   ; BIOS WRTVDP - Writes data in the VDP-register
primera_ficha_vacia:		; los 8 bytes de la ficha 0 a cero en los tres tercios de patrones y colores
	ld hl,02000h		;58ac
	ld bc,00008h		;58af
	xor a			;58b2
	call llena_tres_tercios		;58b3   ; llena_tres_tercios: FILVRM en los tres tercios
	ld hl,00000h		;58b6
	ld bc,00008h		;58b9
	jp llena_tres_tercios		;58bc   ; llena_tres_tercios: FILVRM en los tres tercios
borra_nombres:		; borra los nombres 0xED00 (0x300) y los vuelca
	call primera_ficha_vacia		;58bf   ; primera_ficha_vacia: los 8 bytes de la ficha 0 a cero en los tres tercios de patrones y colores
	ld hl,0ed00h		;58c2   ; apunta a los nombres de la pantalla (32 x 24)
	ld d,000h		;58c5
	ld bc,00300h		;58c7
L_58CA:
	ld (hl),d			;58ca
	inc hl			;58cb
	dec bc			;58cc
	ld a,c			;58cd
	or b			;58ce
	jr nz,L_58CA		;58cf
	jp vuelca_nombres		;58d1   ; vuelca_nombres: 0x300 de 0xED00 a 0x3800
borra_zona_de_juego:		; borra 16 filas x 24 de 0xED00 y las vuelca
	ld hl,0ed00h		;58d4   ; apunta a los nombres de la pantalla (32 x 24)
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
	jp vuelca_zona_de_juego		;58e7   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
borra_nombres_sin_ventana:		; borra 0x1E0 de 0xED00 y los vuelca
	call primera_ficha_vacia		;58ea   ; primera_ficha_vacia: los 8 bytes de la ficha 0 a cero en los tres tercios de patrones y colores
	ld hl,0ed00h		;58ed   ; apunta a los nombres de la pantalla (32 x 24)
	ld d,000h		;58f0
	ld bc,001e0h		;58f2
L_58F5:
	ld (hl),d			;58f5
	inc hl			;58f6
	dec bc			;58f7
	ld a,c			;58f8
	or b			;58f9
	jr nz,L_58F5		;58fa
	jp vuelca_nombres_sin_ventana		;58fc   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
esconde_sprites:		; Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	ld hl,0f000h		;58ff   ; apunta a los atributos de los 32 sprites
	ld b,080h		;5902
	ld a,0e0h		;5904
L_5906:
	ld (hl),a			;5906
	inc hl			;5907
	djnz L_5906		;5908
	jp vuelca_sprites		;590a   ; vuelca_sprites: los 32 sprites de 0xF000 a 0x3B00, rotando el orden cada cuadro (0xE006)
corta_sprites:		; guarda la Y del primer sprite en 0xE367, la pone a 0xD0 y vuelca
	ld a,(0f000h)		;590d   ; lee los atributos de los 32 sprites
	ld (0e367h),a		;5910   ; guarda la Y guardada del primer sprite
	ld a,0d0h		;5913
	ld (0f000h),a		;5915   ; guarda los atributos de los 32 sprites
	jp vuelca_sprites		;5918   ; vuelca_sprites: los 32 sprites de 0xF000 a 0x3B00, rotando el orden cada cuadro (0xE006)
pantalla_vacia:		; sprites escondidos, ficha 0 vacia y nombres a cero
	call esconde_sprites		;591b   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	call primera_ficha_vacia		;591e   ; primera_ficha_vacia: los 8 bytes de la ficha 0 a cero en los tres tercios de patrones y colores
	ld hl,03800h		;5921
	ld bc,00300h		;5924
	xor a			;5927
	jp 00056h		;5928   ; BIOS FILVRM - Fills VRAM with value
escribe_en_vram:		; SETWRT en HL y C' = el puerto de datos del VDP
	ex af,af'			;592b
	call 00053h		;592c   ; BIOS SETWRT - Enables VDP to write
	exx			;592f
	ld a,(00007h)		;5930
	ld c,a			;5933
	exx			;5934
	ex af,af'			;5935
	ret			;5936
lee_de_vram:		; SETRD en HL y C' = el puerto de datos del VDP
	call 00050h		;5937   ; BIOS SETRD - Enables VDP to read
	exx			;593a
	ld a,(00006h)		;593b
	ld c,a			;593e
	exx			;593f
	ret			;5940
copia_a_vram:		; LDIRVM de DE a la VRAM HL
	ex de,hl			;5941
	jp 0005ch		;5942   ; BIOS LDIRVM - Block transfers to VRAM from memory
copia_a_dos_tercios:		; LDIRVM en dos tercios seguidos (0x800 entre uno y otro)
	exx			;5945
	ld b,002h		;5946
	jr L_594D		;5948
copia_a_tres_tercios:		; LDIRVM en los tres tercios
	exx			;594a
	ld b,003h		;594b
L_594D:
	exx			;594d
	push bc			;594e
	push de			;594f
	call copia_a_vram		;5950   ; copia_a_vram: LDIRVM de DE a la VRAM HL
	ld de,00800h		;5953
	add hl,de			;5956
	pop de			;5957
	pop bc			;5958
	exx			;5959
	djnz L_594D		;595a
	ret			;595c
llena_dos_tercios:		; FILVRM en dos tercios
	ld d,002h		;595d
	jr L_5963		;595f
llena_tres_tercios:		; FILVRM en los tres tercios
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
rle_a_dos_tercios:		; el RLE de DE (p00:5A2A) en dos tercios
	ld b,002h		;5972
	jr L_5978		;5974
rle_a_tres_tercios:		; el RLE de DE en los tres tercios
	ld b,003h		;5976
L_5978:
	push bc			;5978
	push de			;5979
	call rle		;597a   ; rle: RLE de DE a la VRAM HL
	ld de,00800h		;597d
	add hl,de			;5980
	pop de			;5981
	pop bc			;5982
	djnz L_5978		;5983
	ret			;5985
rle_volteado_a_dos_tercios:		; el RLE volteado (p00:5A32) en dos tercios
	ld b,002h		;5986
	jr L_598C		;5988
rle_volteado_a_tres_tercios:		; el RLE volteado en los tres tercios
	ld b,003h		;598a
L_598C:
	push bc			;598c
	push de			;598d
	call rle_volteado		;598e   ; rle_volteado: RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld de,00800h		;5991
	add hl,de			;5994
	pop de			;5995
	pop bc			;5996
	djnz L_598C		;5997
	ret			;5999
borra_patrones:		; 0x1000 de patrones y de colores a cero
	ld hl,02000h		;599a
	ld bc,01000h		;599d
	xor a			;59a0
	call 00056h		;59a1   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00000h		;59a4
	ld bc,01000h		;59a7
	xor a			;59aa
	jp 00056h		;59ab   ; BIOS FILVRM - Fills VRAM with value
borra_fichas_del_juego:		; 0x300 de patrones y colores desde la ficha 0x10, en dos tercios
	ld hl,02080h		;59ae
	ld bc,00300h		;59b1
	xor a			;59b4
	call llena_dos_tercios		;59b5   ; llena_dos_tercios: FILVRM en dos tercios
	ld hl,00080h		;59b8
	ld bc,00300h		;59bb
	xor a			;59be
	jp llena_dos_tercios		;59bf   ; llena_dos_tercios: FILVRM en dos tercios
bytes_a_vram:		; lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
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
bytes_a_vram_a_cero:		; como p00:59C2 escribiendo ceros
	ld c,000h		;59d9
	jr L_59C4		;59db
texto_a_vram:		; texto de DE a la VRAM HL hasta 0xFF; 3 y 4 (dakuten) van a la fila de arriba
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
	jr texto_a_vram		;59f3
L_59F5:
	call 0004dh		;59f5   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;59f8
	jr texto_a_vram		;59f9
rle_con_destino:		; RLE de DE con su direccion de VRAM delante
	ld c,000h		;59fb
L_59FD:
	ex de,hl			;59fd
	ld e,(hl)			;59fe
	inc hl			;59ff
	ld d,(hl)			;5a00
	ex de,hl			;5a01
	inc de			;5a02
rle_a_vram:		; RLE de DE a la VRAM HL: 0 acaba, bit 7 = repite, si no copia n; C bit 0 = volteado
	call escribe_en_vram		;5a03   ; escribe_en_vram: SETWRT en HL y C' = el puerto de datos del VDP
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
	jr z,rle_con_destino		;5a11
	ld b,a			;5a13
L_5A14:
	call byte_del_rle		;5a14   ; byte_del_rle: A = el byte de DE, al reves si C bit 0
	exx			;5a17
	out (c),a		;5a18
	exx			;5a1a
	djnz L_5A14		;5a1b
	jr L_5A06		;5a1d
L_5A1F:
	call byte_del_rle		;5a1f   ; byte_del_rle: A = el byte de DE, al reves si C bit 0
L_5A22:
	exx			;5a22
	out (c),a		;5a23
	exx			;5a25
	djnz L_5A22		;5a26
	jr L_5A06		;5a28
rle:		; RLE de DE a la VRAM HL
	ld c,000h		;5a2a
	jr rle_a_vram		;5a2c
rle_volteado_con_destino:		; RLE volteado de DE con su direccion de VRAM delante
	ld c,001h		;5a2e
	jr L_59FD		;5a30
rle_volteado:		; RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld c,001h		;5a32
	jr rle_a_vram		;5a34
voltea_sprites:		; C sprites de 16x16 de la VRAM HL volteados a DE
	call voltea_un_sprite		;5a36   ; voltea_un_sprite: un sprite de 16x16 de la VRAM HL volteado a DE (bytes al reves y mitades cambiadas)
	ld a,020h		;5a39
	call de_mas_a		;5a3b   ; de_mas_a: DE = DE + A
	dec c			;5a3e
	jr nz,voltea_sprites		;5a3f
	ret			;5a41
voltea_un_sprite:		; un sprite de 16x16 de la VRAM HL volteado a DE (bytes al reves y mitades cambiadas)
	push de			;5a42
L_5A43:
	ld b,010h		;5a43
L_5A45:
	call 0004ah		;5a45   ; BIOS RDVRM - Reads the content of VRAM
	call invierte_bits		;5a48   ; invierte_bits: A con sus 8 bits al reves
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
byte_del_rle:		; A = el byte de DE, al reves si C bit 0
	ld a,(de)			;5a5e
	inc de			;5a5f
	bit 0,c		;5a60
	ret z			;5a62
invierte_bits:		; A con sus 8 bits al reves
	push bc			;5a63
	ld c,a			;5a64
	ld b,008h		;5a65
L_5A67:
	rr c		;5a67
	rla			;5a69
	djnz L_5A67		;5a6a
	pop bc			;5a6c
	ret			;5a6d
cuadro_de_la_sala:		; un cuadro dentro de la sala: sprites, actores (p07:800A), musica y el modo 0xE360 (tabla p00:5A83)
	call vuelca_sprites		;5a6e   ; vuelca_sprites: los 32 sprites de 0xF000 a 0x3B00, rotando el orden cada cuadro (0xE006)
	call bancos_7_8		;5a71   ; bancos_7_8: pone los bancos 7-8 en 0x8000 y 0xA000
	call 0800ah		;5a74   ; anima_fichas: la animacion de fichas de la sala (0xE369, tabla p07:8010)
	call bancos_1_2_3		;5a77   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call musica_pendiente		;5a7a   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,(0e360h)		;5a7d   ; lee el modo dentro de la sala (tabla p00:5A83)
	call despacha		;5a80   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


modo_0:		; modo 0: la tecla de menu, p01:7162, los sprites y los actores; cambia de modo si toca
	call tecla_de_menu		;5a97   ; tecla_de_menu: con la tecla de menu (0xE008 bit 5) espera a que no quede actor y pasa al modo 2
	ld a,(0e360h)		;5a9a   ; lee el modo dentro de la sala (tabla p00:5A83)
	cp 002h		;5a9d
	ret z			;5a9f
	ld a,(0e362h)		;5aa0   ; lee el menu pedido
	or a			;5aa3
	jr nz,L_5AA9		;5aa4
	call 07162h		;5aa6   ; mueve_personaje: un cuadro del personaje: el modo 0xE3C0 (tabla p01:718E)
L_5AA9:
	call L_43E9		;5aa9
	call patrones_del_personaje		;5aac   ; patrones_del_personaje: los patrones de p18:65DC[0xEB74 o 0xE3C3] a 0x1860
	call bancos_7_8		;5aaf   ; bancos_7_8: pone los bancos 7-8 en 0x8000 y 0xA000
	call 087ech		;5ab2   ; mueve_actores: un cuadro de los 8 actores: su rutina y, si se mueven, su paso
	call 0865ch		;5ab5   ; sprites_de_actores: dos sprites por actor en 0xF020 (fotograma p07:97E8); con el bit 0 de +0x10, en fichas
	call bancos_1_2_3		;5ab8   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	ld a,(0e360h)		;5abb   ; lee el modo dentro de la sala (tabla p00:5A83)
	cp 003h		;5abe
	ret z			;5ac0
	call 08cf5h		;5ac1   ; actor_de_enfrente: 0xE8A6 = el actor que esta delante del personaje (0xFF si no hay); si es una puerta, prepara el salto
	ld a,(0e337h)		;5ac4   ; lee que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	cp 003h		;5ac7
	jr z,L_5AD3		;5ac9
	and a			;5acb
	ret z			;5acc
	ld a,001h		;5acd
	ld (0e360h),a		;5acf   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ret			;5ad2
L_5AD3:
	ld a,008h		;5ad3
	ld (0e360h),a		;5ad5   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ret			;5ad8
modo_1:		; modo 1 (p07:844F): sale de la sala
	call 0844fh		;5ad9   ; cambia_de_sala: modo 1: la sala nueva por el borde (vecinas: sala - 0x20, + 0x20, - 1, + 1 de p02:858C), las salas 0x201-0x228 a mano o el salto de 0xE36A
	ld a,(0e378h)		;5adc
	and a			;5adf
	jr z,L_5AE9		;5ae0
	ld a,040h		;5ae2
	ld (0e004h),a		;5ae4   ; guarda la espera del estado, en cuadros
	ld a,004h		;5ae7
L_5AE9:
	ld (0e360h),a		;5ae9   ; guarda el modo dentro de la sala (tabla p00:5A83)
	call 09e39h		;5aec   ; marca_salas_cf_b0_f0: en las salas 0xCF y 0xB0 pone el bit 7 de 0xEB59; en la 0xF0, ninguno
	call 0677fh		;5aef   ; monta_la_sala: musica, fichas, mapa, sprites, actores, marcador y menu de la sala
	xor a			;5af2
	ld (0e337h),a		;5af3   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld (0e3c5h),a		;5af6   ; guarda la direccion del paso en curso
	ret			;5af9
modo_menu:		; modo 2: el menu de la sala
	call cierra_menu		;5afa   ; cierra_menu: con la tecla de menu se cierra el menu (o, en ciertas salas, otra cosa)
	ld a,(0e360h)		;5afd   ; lee el modo dentro de la sala (tabla p00:5A83)
	and a			;5b00
	ret z			;5b01
	cp 008h		;5b02
	ret z			;5b04
	call menu		;5b05   ; menu: un paso del menu de la sala (0xE8A0, tabla p00:5231)
	call L_443D		;5b08
	ld a,(0e8a0h)		;5b0b   ; lee el paso del menu (tabla p00:5231)
	cp 003h		;5b0e
	ret nc			;5b10
	ld a,(0e3a2h)		;5b11
	and a			;5b14
	ret nz			;5b15
	ld de,(0eb40h)		;5b16   ; lee la sala
	ld hl,00211h		;5b1a
	and a			;5b1d
	sbc hl,de		;5b1e
	ret z			;5b20
	ld hl,00212h		;5b21
	and a			;5b24
	sbc hl,de		;5b25
	ret z			;5b27
	ld hl,(0eb40h)		;5b28   ; lee la sala
	ld de,00220h		;5b2b
	and a			;5b2e
	sbc hl,de		;5b2f
	jr c,L_5B47		;5b31
	ld hl,(0eb40h)		;5b33   ; lee la sala
	ld de,00226h		;5b36
	and a			;5b39
	sbc hl,de		;5b3a
	ret c			;5b3c
	ld hl,(0eb40h)		;5b3d   ; lee la sala
	ld de,00235h		;5b40
	and a			;5b43
	sbc hl,de		;5b44
	ret z			;5b46
L_5B47:
	jp a_sprites_de_actores		;5b47   ; a_sprites_de_actores: con 7-8, p07:865C (dos sprites por actor en 0xF020 (fotograma p07:97E8); con el bit 0 de +0x10, en fichas); vuelve con 1-2-3
modo_texto:		; modo 3: el texto del personaje y lo que pasa despues en las salas 0x79, 0x185, 0x201, 0x1AA
	call 0771fh		;5b4a
	call a_sprites_de_actores		;5b4d   ; a_sprites_de_actores: con 7-8, p07:865C (dos sprites por actor en 0xF020 (fotograma p07:97E8); con el bit 0 de +0x10, en fichas); vuelve con 1-2-3
	ld a,(0e880h)		;5b50   ; lee el numero del texto
	ld (0e88ch),a		;5b53
	call texto		;5b56   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;5b59   ; lee el texto en marcha
	and a			;5b5c
	ret nz			;5b5d
	ld de,(0eb40h)		;5b5e   ; lee la sala
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
	ld (0e3c0h),a		;5b8d   ; guarda el modo del personaje (tabla p01:718E)
L_5B90:
	xor a			;5b90
	jr L_5BA8		;5b91
L_5B93:
	ld a,(0e88ch)		;5b93
	cp 001h		;5b96
	jr nz,L_5BA1		;5b98
	ld a,006h		;5b9a
	ld (0e3c0h),a		;5b9c   ; guarda el modo del personaje (tabla p01:718E)
	jr L_5B90		;5b9f
L_5BA1:
	ld hl,0e8a0h		;5ba1   ; apunta a el paso del menu (tabla p00:5231)
	ld (hl),000h		;5ba4
	ld a,002h		;5ba6
L_5BA8:
	ld (0e360h),a		;5ba8   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ret			;5bab
L_5BAC:
	ld a,(0e88ch)		;5bac
	cp 00ah		;5baf
	jr z,L_5BA1		;5bb1
	cp 00bh		;5bb3
	jr z,L_5BA1		;5bb5
	xor a			;5bb7
	ld (0e887h),a		;5bb8   ; guarda la espera del texto (1 tecla, 2 tecla y fin)
	ld (0e885h),a		;5bbb   ; guarda el paso del texto (0 prepara, 1 escribe)
	jr L_5B90		;5bbe
modo_4:		; modo 4 (p08:B3F9) hasta que 0xE378 = 0
	call 0771fh		;5bc0
	call a_sprites_de_actores		;5bc3   ; a_sprites_de_actores: con 7-8, p07:865C (dos sprites por actor en 0xF020 (fotograma p07:97E8); con el bit 0 de +0x10, en fichas); vuelve con 1-2-3
	call 0b3f9h		;5bc6   ; modo_4_anima: modo 4: la animacion 0xE378 (1 o 2; tabla p03:B402)
	ld a,(0e378h)		;5bc9
	and a			;5bcc
	ret nz			;5bcd
	xor a			;5bce
	ld (0e360h),a		;5bcf   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ret			;5bd2
L_5BD3:
	ret			;5bd3
modo_6:		; modo 6 (p04:6019 y p04:603F segun 0xE379) y el texto 0 o 1
	call bancos_4_5_6		;5bd4   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 06019h		;5bd7   ; comprueba_cuatro_actores: 0xE379 = 1 si el byte 0x1B de los actores 1-4 vale 3, 1, 2 y 4; si no, 2
	call bancos_1_2_3		;5bda   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	ld a,(0e379h)		;5bdd
	dec a			;5be0
	jr z,L_5BE8		;5be1
	ld c,001h		;5be3
	jp habla_con_1_2_3_y_1_2_3		;5be5   ; habla_con_1_2_3_y_1_2_3: datos del personaje, p03:AB92, el texto y modo 3; vuelve con 1-2-3
L_5BE8:
	call bancos_4_5_6		;5be8   ; bancos_4_5_6: pone los bancos 4-5-6 (p00:4103)
	call 0603fh		;5beb   ; pon_dibujo_6057: sonido 0x1E, 0xE40D = 3 y el dibujo p04:6057 en (0x30, 0x40)
	call bancos_1_2_3		;5bee   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	ld c,000h		;5bf1
	jp habla_con_1_2_3_y_1_2_3		;5bf3   ; habla_con_1_2_3_y_1_2_3: datos del personaje, p03:AB92, el texto y modo 3; vuelve con 1-2-3
modo_7:		; modo 7 (p21:6000)
	xor a			;5bf6
	ld (0e386h),a		;5bf7
	call bancos_21_22_23		;5bfa   ; bancos_21_22_23: pone los bancos 21-22-23
	call 06000h		;5bfd   ; desplazamiento: un paso del modo 7 (0xE387, tabla p21:600F)
	call bancos_1_2_3		;5c00   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call 0771fh		;5c03   ; sprites_del_personaje: los tres sprites del personaje en 0xF000
	ld a,(0e386h)		;5c06
	and a			;5c09
	ret z			;5c0a
	ld a,001h		;5c0b
	ld (0e360h),a		;5c0d   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ret			;5c10
modo_8:		; modo 8: una ronda de rutinas de los bancos 1-3 y 9-11
	call menu_en_la_sala_211		;5c11   ; menu_en_la_sala_211: en la sala 0x211, la tecla de menu abre el paso 9
	ld a,(0e360h)		;5c14   ; lee el modo dentro de la sala (tabla p00:5A83)
	cp 002h		;5c17
	ret z			;5c19
	call L_43DB		;5c1a
	call bancos_9_10_11		;5c1d   ; bancos_9_10_11: pone los bancos 9-10-11
	call 08c56h		;5c20   ; prepara_escena: un paso de la preparacion de la escena de accion (0xE39F, tabla p10:8C5C)
	call 0ac1ch		;5c23   ; sprites_de_objetos: los sprites de los 7 objetos de 0xEA20 en 0xF020 (fotogramas p11:AC85) y el resto escondidos
	call bancos_1_2_3		;5c26   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
	call 077d3h		;5c29   ; accion: un paso del guion de la escena de accion (0xE3E0, tabla p01:77E1; paso 0xE3E1)
	call 08311h		;5c2c   ; accion_sprites: los tres sprites del personaje de la escena de accion (0xE3E5, 0xE3E7) en 0xF000
	call 0b578h		;5c2f   ; mueve_proyectiles: un cuadro de los 3 proyectiles de 0xEC30: su rutina, la velocidad y si sale por arriba
	call 0b5e8h		;5c32   ; sprites_de_proyectiles: los sprites de los 3 proyectiles en 0xF060
	call bancos_9_10_11		;5c35   ; bancos_9_10_11: pone los bancos 9-10-11
	call 0a718h		;5c38   ; choques_de_la_escena: los choques de los 8 objetos de 0xEA00 con el personaje (bit 0 de +0x0D) y con los proyectiles (bit 1)
	call 06bbch		;5c3b   ; barras: la barra de vida si no esta tocado y la segunda barra de la escena (tabla p09:6BCA)
	jp bancos_1_2_3		;5c3e   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
modo_9:		; modo 9: escribe el texto y pasa al 8
	call 08311h		;5c41   ; accion_sprites: los tres sprites del personaje de la escena de accion (0xE3E5, 0xE3E7) en 0xF000
	ld a,(0e880h)		;5c44   ; lee el numero del texto
	ld (0e88ch),a		;5c47
	call texto		;5c4a   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;5c4d   ; lee el texto en marcha
	and a			;5c50
	ret nz			;5c51
	ld a,008h		;5c52
	ld (0e360h),a		;5c54   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ret			;5c57
tecla_de_menu:		; con la tecla de menu (0xE008 bit 5) espera a que no quede actor y pasa al modo 2
	ld a,(0e362h)		;5c58   ; lee el menu pedido
	and a			;5c5b
	jr nz,L_5C74		;5c5c
	ld a,(0e3a9h)		;5c5e
	and a			;5c61
	ret nz			;5c62
	ld a,(0e3c4h)		;5c63   ; lee el personaje va de un bloque a otro
	and a			;5c66
	ret nz			;5c67
	ld a,(0e008h)		;5c68   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	and 020h		;5c6b
	ret z			;5c6d
	ld a,001h		;5c6e
	ld (0e362h),a		;5c70   ; guarda el menu pedido
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
	ld (0e360h),a		;5c84   ; guarda el modo dentro de la sala (tabla p00:5A83)
	xor a			;5c87
	ld (0e8a0h),a		;5c88   ; guarda el paso del menu (tabla p00:5231)
	ld (0e362h),a		;5c8b   ; guarda el menu pedido
	ret			;5c8e
cierra_menu:		; con la tecla de menu se cierra el menu (o, en ciertas salas, otra cosa)
	ld a,(0e8a0h)		;5c8f   ; lee el paso del menu (tabla p00:5231)
	cp 005h		;5c92
	jr c,L_5C99		;5c94
	cp 008h		;5c96
	ret c			;5c98
L_5C99:
	ld a,(0e008h)		;5c99   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	and 020h		;5c9c
	ret z			;5c9e
	ld de,(0eb40h)		;5c9f   ; lee la sala
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
	ld de,(0eb40h)		;5cb8   ; lee la sala
	ld hl,00201h		;5cbc
	and a			;5cbf
	sbc hl,de		;5cc0
	jr nz,L_5CCD		;5cc2
	ld a,(0e9d2h)		;5cc4   ; lee el objeto 1 (bit 0: se lleva)
	bit 7,a		;5cc7
	jr z,L_5CFC		;5cc9
	jr L_5CD5		;5ccb
L_5CCD:
	ld hl,001aah		;5ccd
	and a			;5cd0
	sbc hl,de		;5cd1
	jr z,L_5D01		;5cd3
L_5CD5:
	ld a,(0e8a6h)		;5cd5   ; lee el actor de enfrente (0xFF: ninguno)
	inc a			;5cd8
	jr z,L_5CEB		;5cd9
	ld hl,(0e365h)		;5cdb   ; lee la ficha del personaje de enfrente
	ld de,00040h		;5cde
	add hl,de			;5ce1
	ex de,hl			;5ce2
	ld hl,0e8d0h		;5ce3   ; apunta a las veces que se ha elegido cada opcion
	ld bc,00010h		;5ce6
	ldir		;5ce9
L_5CEB:
	xor a			;5ceb
	ld (0e360h),a		;5cec   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ld (0e362h),a		;5cef   ; guarda el menu pedido
	call borra_cursor		;5cf2   ; borra_cursor: borra el cursor de la columna de opciones
	xor a			;5cf5
	ld (0e368h),a		;5cf6   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	jp L_443D		;5cf9
L_5CFC:
	ld c,007h		;5cfc
	jp habla_con_1_2_3_y_1_2_3		;5cfe   ; habla_con_1_2_3_y_1_2_3: datos del personaje, p03:AB92, el texto y modo 3; vuelve con 1-2-3
L_5D01:
	ld hl,0eb6dh		;5d01   ; apunta a las banderas de la historia, byte 0x2D (se graban con la partida)
	bit 7,(hl)		;5d04
	jr nz,L_5CD5		;5d06
	ld hl,0eb6ch		;5d08   ; apunta a las banderas de la historia, byte 0x2C (se graban con la partida)
	bit 7,(hl)		;5d0b
	jr z,L_5CD5		;5d0d
	ld a,(hl)			;5d0f
	and 03fh		;5d10
	cp 03fh		;5d12
	jr z,L_5D1B		;5d14
	ld c,00bh		;5d16
	jp habla_con_1_2_3_y_1_2_3		;5d18   ; habla_con_1_2_3_y_1_2_3: datos del personaje, p03:AB92, el texto y modo 3; vuelve con 1-2-3
L_5D1B:
	xor a			;5d1b
	ld (0e368h),a		;5d1c   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;5d1f
	ld (0eb7bh),a		;5d20   ; guarda las banderas de la historia, byte 0x3B (se graban con la partida)
	call L_443D		;5d23
	ld c,00ch		;5d26
	jp habla_con_1_2_3_y_1_2_3		;5d28   ; habla_con_1_2_3_y_1_2_3: datos del personaje, p03:AB92, el texto y modo 3; vuelve con 1-2-3
L_5D2B:
	ld a,008h		;5d2b
	ld (0e360h),a		;5d2d   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp borra_cursor		;5d30   ; borra_cursor: borra el cursor de la columna de opciones
menu_en_la_sala_211:		; en la sala 0x211, la tecla de menu abre el paso 9
	ld a,(0e008h)		;5d33   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	and 020h		;5d36
	ret z			;5d38
	ld a,(0e3eah)		;5d39
	and a			;5d3c
	ret nz			;5d3d
	ld de,(0eb40h)		;5d3e   ; lee la sala
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
	ld (0e360h),a		;5d5b   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ld a,009h		;5d5e
	ld (0e8a0h),a		;5d60   ; guarda el paso del menu (tabla p00:5231)
	ret			;5d63
bloque_de_enfrente:		; A = el bloque que hay delante del personaje (0xE3C1 + p00:5DE7[0xE3C6])
	ld hl,(0e3c1h)		;5d64   ; lee la Y del personaje y el byte siguiente (16 bits)
	ld a,(0e3c6h)		;5d67   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
L_5D6A:
	ld b,a			;5d6a
	add a,a			;5d6b
	ld de,05de7h		;5d6c
	call de_mas_a		;5d6f   ; de_mas_a: DE = DE + A
	ld a,(de)			;5d72
	add a,l			;5d73
	ld l,a			;5d74
	inc de			;5d75
	ld a,(de)			;5d76
	add a,h			;5d77
	ld h,a			;5d78
	call bloque_de_la_sala		;5d79   ; bloque_de_la_sala: HL = 0xE800 + (Y / 16) * 16 + X / 16: el bloque de la sala en la posicion L = Y, H = X
	ld a,(hl)			;5d7c
	or a			;5d7d
	ld a,b			;5d7e
	ret			;5d7f
en_el_borde:		; Z/C segun si el personaje esta en el borde de su direccion
	ld a,(0e3c6h)		;5d80   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ld hl,(0e3c1h)		;5d83   ; lee la Y del personaje y el byte siguiente (16 bits)
	ld (0e8e0h),hl		;5d86
L_5D89:
	dec a			;5d89
	call despacha		;5d8a   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
en_el_borde_de_ix:		; como p00:5D80 con los bordes de la ficha IX (+0x30-0x33)
	dec a			;5dab
	call despacha		;5dac   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
pon_bloque_de_enfrente:		; pone B en el bloque de delante
	add a,a			;5dd3
	ld de,05de7h		;5dd4
	call de_mas_a		;5dd7   ; de_mas_a: DE = DE + A
	ld a,(de)			;5dda
	add a,l			;5ddb
	ld l,a			;5ddc
	inc de			;5ddd
	ld a,(de)			;5dde
	add a,h			;5ddf
	ld h,a			;5de0
	call bloque_de_la_sala		;5de1   ; bloque_de_la_sala: HL = 0xE800 + (Y / 16) * 16 + X / 16: el bloque de la sala en la posicion L = Y, H = X
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


nombres_en_cuadricula:		; 0xED00 y 0xEE00 con las fichas 0-0xFF en bloques de 8x8
	ld hl,0ed00h		;5df1   ; apunta a los nombres de la pantalla (32 x 24)
	call cuadricula_de_fichas		;5df4   ; cuadricula_de_fichas: 256 fichas seguidas en 4 bloques de 8 x 8
	ld hl,0ee00h		;5df7
cuadricula_de_fichas:		; 256 fichas seguidas en 4 bloques de 8 x 8
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
nombres_del_marco:		; las fichas 0x10-0x6F en dos bloques de 16 x 6
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
vuelca_nombres_sin_ventana:		; 0x1E0 de 0xED00 a 0x3800
	ld hl,03800h		;5e45
	ld de,0ed00h		;5e48   ; apunta a los nombres de la pantalla (32 x 24)
	ld bc,001e0h		;5e4b
	jp vuelca		;5e4e   ; vuelca: BC bytes de DE a la VRAM HL (a cero si 0xE36C)
vuelca_nombres:		; 0x300 de 0xED00 a 0x3800
	ld hl,03800h		;5e51
	ld de,0ed00h		;5e54   ; apunta a los nombres de la pantalla (32 x 24)
	ld bc,00300h		;5e57
	call vuelca		;5e5a   ; vuelca: BC bytes de DE a la VRAM HL (a cero si 0xE36C)
	jr L_5EA9		;5e5d
vuelca_zona_de_juego:		; 16 filas x 24 de 0xED00 a 0x3800
	ld hl,03800h		;5e5f
	ld de,0ed00h		;5e62   ; apunta a los nombres de la pantalla (32 x 24)
	ld b,010h		;5e65
	jr L_5E71		;5e67
vuelca_ventana:		; 8 filas x 24 de 0xEF00 a 0x3A00 (la ventana del texto)
	ld hl,03a00h		;5e69
	ld de,0ef00h		;5e6c   ; apunta a la ventana del texto (32 x 8)
	ld b,008h		;5e6f
L_5E71:
	push bc			;5e71
	ld bc,00018h		;5e72
	push hl			;5e75
	call vuelca		;5e76   ; vuelca: BC bytes de DE a la VRAM HL (a cero si 0xE36C)
	ex de,hl			;5e79
	ld a,008h		;5e7a
	call de_mas_a		;5e7c   ; de_mas_a: DE = DE + A
	pop hl			;5e7f
	ld a,020h		;5e80
	call hl_mas_a		;5e82   ; hl_mas_a: HL = HL + A
	pop bc			;5e85
	djnz L_5E71		;5e86
	jr L_5EA9		;5e88
vuelca_marcador:		; 7 filas x 8 de 0xEE18 a 0x3918
	ld hl,03918h		;5e8a
	ld de,0ee18h		;5e8d   ; apunta a el marcador (8 x 7)
	ld b,007h		;5e90
L_5E92:
	push bc			;5e92
	ld bc,00008h		;5e93
	push hl			;5e96
	call vuelca		;5e97   ; vuelca: BC bytes de DE a la VRAM HL (a cero si 0xE36C)
	ex de,hl			;5e9a
	ld a,018h		;5e9b
	call de_mas_a		;5e9d   ; de_mas_a: DE = DE + A
	pop hl			;5ea0
	ld a,020h		;5ea1
	call hl_mas_a		;5ea3   ; hl_mas_a: HL = HL + A
	pop bc			;5ea6
	djnz L_5E92		;5ea7
L_5EA9:
	xor a			;5ea9
	ld (0e36ch),a		;5eaa   ; guarda pantalla en negro (los volcados escriben ceros)
	ret			;5ead
vuelca:		; BC bytes de DE a la VRAM HL (a cero si 0xE36C)
	call 00053h		;5eae   ; BIOS SETWRT - Enables VDP to write
	ex de,hl			;5eb1
	ld e,c			;5eb2
	ld d,b			;5eb3
	ld a,(00007h)		;5eb4
	ld c,a			;5eb7
L_5EB8:
	ld a,(0e36ch)		;5eb8   ; lee pantalla en negro (los volcados escriben ceros)
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
vuelca_sprites:		; los 32 sprites de 0xF000 a 0x3B00, rotando el orden cada cuadro (0xE006)
	ld a,(0e007h)		;5eca   ; lee las banderas de sprites (bit 0: sin rotar)
	rra			;5ecd
	jp c,L_5F15		;5ece
	ld hl,03b00h		;5ed1
	call 00053h		;5ed4   ; BIOS SETWRT - Enables VDP to write
	ld a,(00007h)		;5ed7
	ld c,a			;5eda
	ld hl,0e006h		;5edb   ; apunta a el desplazamiento de la rotacion de sprites
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
	ld de,0f000h		;5f18   ; apunta a los atributos de los 32 sprites
	ld bc,00080h		;5f1b
	jp copia_a_vram		;5f1e   ; copia_a_vram: LDIRVM de DE a la VRAM HL

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
