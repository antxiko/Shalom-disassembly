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
	ld (0e3f4h),a		;8003   ; guarda la direccion del salto en la escena
	ld a,001h		;8006
	ld (0e3ebh),a		;8008   ; guarda la fase del salto en la escena (1 sube, 2 baja)
	inc a			;800b
	ld (0e3e1h),a		;800c   ; guarda el paso de la escena de la escena de accion
	call 0baech		;800f   ; sonido_0a: pide el sonido 0x0A
L_8012:
	call accion_direccion		;8012   ; accion_direccion: 0xE3F3 = la direccion pulsada (1, 2, 4, 8), dando preferencia a la nueva
	and 00ch		;8015
	ld bc,(0e8f0h)		;8017   ; lee la variable de trabajo 0xE8F0 (16 bits) y el byte siguiente (16 bits)
	ld de,(0e8f2h)		;801b   ; lee la variable de trabajo 0xE8F2 (16 bits) y el byte siguiente (16 bits)
	jp accion_mueve		;801f   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
L_8022:
	djnz L_8060		;8022
	call accion_sin_vida		;8024   ; accion_sin_vida: si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	ld a,(0e3f4h)		;8027   ; lee la direccion del salto en la escena
	ld bc,010a9h		;802a
	ld de,00180h		;802d
	call accion_mueve		;8030   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
	ld a,(0e3ebh)		;8033   ; lee la fase del salto en la escena (1 sube, 2 baja)
	dec a			;8036
	jr nz,L_8049		;8037
	ld hl,0e3f5h		;8039   ; apunta a el paso del salto en la escena (tabla p01:7C13)
	inc (hl)			;803c
	ld a,(hl)			;803d
	cp 011h		;803e
	jp nz,07c06h		;8040
	dec (hl)			;8043
	ld hl,0e3ebh		;8044   ; apunta a la fase del salto en la escena (1 sube, 2 baja)
	inc (hl)			;8047
	ret			;8048
L_8049:
	ld hl,0e3f5h		;8049   ; apunta a el paso del salto en la escena (tabla p01:7C13)
	inc (hl)			;804c
	ld a,(hl)			;804d
	cp 022h		;804e
	jp nz,07c06h		;8050
	xor a			;8053
	ld (hl),a			;8054
	ld (0e3ebh),a		;8055   ; guarda la fase del salto en la escena (1 sube, 2 baja)
	ld (0e3f4h),a		;8058   ; guarda la direccion del salto en la escena
	inc a			;805b
	ld (0e3e1h),a		;805c   ; guarda el paso de la escena de la escena de accion
	ret			;805f
L_8060:
	ld a,014h		;8060
	ld (0e3f6h),a		;8062   ; guarda la vida en la escena de accion
	ld a,001h		;8065
	ld (0e3fch),a		;8067   ; guarda los choques de la escena estan en marcha
	ld a,004h		;806a
	ld (0e3e3h),a		;806c   ; guarda hacia donde mira en la escena de accion (1-4)
	ld hl,0e3e5h		;806f   ; apunta a la Y del personaje en la escena de accion
	ld (hl),060h		;8072
	inc l			;8074
	inc l			;8075
	ld (hl),030h		;8076
	jp accion_siguiente_paso		;8078   ; accion_siguiente_paso: 0xE3E1 + 1
L_807B:
	djnz L_80C5		;807b
	ld hl,010f0h		;807d
	ld (0e8f0h),hl		;8080   ; guarda la variable de trabajo 0xE8F0 (16 bits) y el byte siguiente (16 bits)
	ld hl,00200h		;8083
	ld (0e8f2h),hl		;8086   ; guarda la variable de trabajo 0xE8F2 (16 bits) y el byte siguiente (16 bits)
	ld a,(0e008h)		;8089   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 001h		;808c
	jr z,L_80A9		;808e
	ld a,0ffh		;8090
	ld (0e3f5h),a		;8092   ; guarda el paso del salto en la escena (tabla p01:7C13)
	ld a,(0e3f3h)		;8095   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
	and 00ch		;8098
	ld (0e3f4h),a		;809a   ; guarda la direccion del salto en la escena
	ld a,001h		;809d
	ld (0e3ebh),a		;809f   ; guarda la fase del salto en la escena (1 sube, 2 baja)
	inc a			;80a2
	ld (0e3e1h),a		;80a3   ; guarda el paso de la escena de la escena de accion
	call 0baech		;80a6   ; sonido_0a: pide el sonido 0x0A
L_80A9:
	ld a,(0e3b1h)		;80a9   ; lee el paso comun de la escena de accion
	dec a			;80ac
	jr nz,L_80B5		;80ad
	ld a,003h		;80af
	ld (0e3e1h),a		;80b1   ; guarda el paso de la escena de la escena de accion
	ret			;80b4
L_80B5:
	call accion_direccion		;80b5   ; accion_direccion: 0xE3F3 = la direccion pulsada (1, 2, 4, 8), dando preferencia a la nueva
	and 00ch		;80b8
	ld bc,(0e8f0h)		;80ba   ; lee la variable de trabajo 0xE8F0 (16 bits) y el byte siguiente (16 bits)
	ld de,(0e8f2h)		;80be   ; lee la variable de trabajo 0xE8F2 (16 bits) y el byte siguiente (16 bits)
	jp accion_mueve		;80c2   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
L_80C5:
	djnz L_8100		;80c5
	ld a,(0e3f4h)		;80c7   ; lee la direccion del salto en la escena
	ld bc,010f0h		;80ca
	ld de,00200h		;80cd
	call accion_mueve		;80d0   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
	ld a,(0e3ebh)		;80d3   ; lee la fase del salto en la escena (1 sube, 2 baja)
	dec a			;80d6
	jr nz,L_80E9		;80d7
	ld hl,0e3f5h		;80d9   ; apunta a el paso del salto en la escena (tabla p01:7C13)
	inc (hl)			;80dc
	ld a,(hl)			;80dd
	cp 011h		;80de
	jp nz,07c06h		;80e0
	dec (hl)			;80e3
	ld hl,0e3ebh		;80e4   ; apunta a la fase del salto en la escena (1 sube, 2 baja)
	inc (hl)			;80e7
	ret			;80e8
L_80E9:
	ld hl,0e3f5h		;80e9   ; apunta a el paso del salto en la escena (tabla p01:7C13)
	inc (hl)			;80ec
	ld a,(hl)			;80ed
	cp 022h		;80ee
	jp nz,07c06h		;80f0
	xor a			;80f3
	ld (hl),a			;80f4
	ld (0e3ebh),a		;80f5   ; guarda la fase del salto en la escena (1 sube, 2 baja)
	ld (0e3f4h),a		;80f8   ; guarda la direccion del salto en la escena
	inc a			;80fb
	ld (0e3e1h),a		;80fc   ; guarda el paso de la escena de la escena de accion
	ret			;80ff
L_8100:
	djnz L_811E		;8100
	call accion_siguiente_paso		;8102   ; accion_siguiente_paso: 0xE3E1 + 1
	ld a,(0e3e7h)		;8105   ; lee la X del personaje en la escena de accion
	cp 078h		;8108
	ld a,008h		;810a
	jr z,L_8132		;810c
	jr c,L_8112		;810e
	ld a,004h		;8110
L_8112:
	ld bc,010f0h		;8112
	ld de,00100h		;8115
	ld (0e3f3h),a		;8118   ; guarda la direccion pulsada en la escena de accion (1, 2, 4, 8)
	jp accion_mueve		;811b   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
L_811E:
	djnz L_813F		;811e
	ld bc,010f0h		;8120
	ld de,00100h		;8123
	ld a,(0e3f3h)		;8126   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
	call accion_mueve		;8129   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
	ld a,(0e3e7h)		;812c   ; lee la X del personaje en la escena de accion
	sub 078h		;812f
	ret nz			;8131
L_8132:
	ld a,001h		;8132
	ld (0e3e3h),a		;8134   ; guarda hacia donde mira en la escena de accion (1-4)
	ld a,002h		;8137
	ld (0e3b1h),a		;8139   ; guarda el paso comun de la escena de accion
	jp accion_siguiente_paso		;813c   ; accion_siguiente_paso: 0xE3E1 + 1
L_813F:
	djnz L_814C		;813f
	ld a,(0ea29h)		;8141
	or a			;8144
	ret z			;8145
	cp 089h		;8146
	jp c,accion_siguiente_paso		;8148   ; accion_siguiente_paso: 0xE3E1 + 1
	ret			;814b
L_814C:
	djnz L_817D		;814c
	ld de,0fa00h		;814e
	ld hl,(0e3e6h)		;8151   ; lee la X del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	add hl,de			;8154
	ld (0e3e6h),hl		;8155   ; guarda la X del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ld a,h			;8158
	ld d,0fdh		;8159
	ld hl,(0e3e4h)		;815b   ; lee la Y del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	add hl,de			;815e
	ld (0e3e4h),hl		;815f   ; guarda la Y del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	cp 008h		;8162
	ret nc			;8164
	ld hl,00000h		;8165
	ld (0e3e6h),hl		;8168   ; guarda la X del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ld a,060h		;816b
	ld (0e3e5h),a		;816d   ; guarda la Y del personaje en la escena de accion
	ld a,001h		;8170
	ld (0e3fdh),a		;8172
	ld a,003h		;8175
	ld (0e3b1h),a		;8177   ; guarda el paso comun de la escena de accion
	jp accion_siguiente_paso		;817a   ; accion_siguiente_paso: 0xE3E1 + 1
L_817D:
	djnz L_8190		;817d
	ld a,(0e3b1h)		;817f   ; lee el paso comun de la escena de accion
	cp 004h		;8182
	ret nz			;8184
	xor a			;8185
	ld (0e3fdh),a		;8186
	ld a,048h		;8189
	ld (0e3e2h),a		;818b   ; guarda el fotograma del personaje en la escena de accion
	jr accion_siguiente_paso		;818e
L_8190:
	djnz L_81B3		;8190
	ld bc,010f0h		;8192
	ld de,00400h		;8195
	ld a,008h		;8198
	call accion_mueve		;819a   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
	ld a,(0e3e7h)		;819d   ; lee la X del personaje en la escena de accion
	cp 078h		;81a0
	ret c			;81a2
	ld a,001h		;81a3
	ld (0e3e3h),a		;81a5   ; guarda hacia donde mira en la escena de accion (1-4)
	ld (0e3f8h),a		;81a8
	ld a,005h		;81ab
	ld (0e3b1h),a		;81ad   ; guarda el paso comun de la escena de accion
	jp accion_sprites		;81b0   ; accion_sprites: los tres sprites del personaje de la escena de accion (0xE3E5, 0xE3E7) en 0xF000
L_81B3:
	xor a			;81b3
	ld (0e3fdh),a		;81b4
	inc a			;81b7
	ld (0e3f8h),a		;81b8
	ld hl,0e3e5h		;81bb   ; apunta a la Y del personaje en la escena de accion
	ld (hl),060h		;81be
	inc l			;81c0
	inc l			;81c1
	ld (hl),078h		;81c2
	jr accion_siguiente_paso		;81c4
accion_siguiente_escena:		; 0xE3E0 + 1 y su paso 0xE3E1 a cero
	ld hl,0e3e0h		;81c6   ; apunta a la escena de la escena de accion (tabla p01:77E1)
	inc (hl)			;81c9
	inc l			;81ca
	ld (hl),000h		;81cb
	ret			;81cd
accion_siguiente_paso:		; 0xE3E1 + 1
	ld hl,0e3e1h		;81ce   ; apunta a el paso de la escena de la escena de accion
	inc (hl)			;81d1
	ret			;81d2
accion_avanza:		; suma las dos velocidades (p02:81E2 y p02:81D6)
	call accion_avanza_x		;81d3   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
accion_avanza_y:		; 0xE3E4 (Y, con fraccion) += 0xE3EC
	ld hl,(0e3e4h)		;81d6   ; lee la Y del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ld de,(0e3ech)		;81d9   ; lee la velocidad Y en la escena de accion y el byte siguiente (16 bits)
	add hl,de			;81dd
	ld (0e3e4h),hl		;81de   ; guarda la Y del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ret			;81e1
accion_avanza_x:		; 0xE3E6 (X, con fraccion) += 0xE3EE
	ld hl,(0e3e6h)		;81e2   ; lee la X del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ld de,(0e3eeh)		;81e5   ; lee la velocidad X en la escena de accion y el byte siguiente (16 bits)
	add hl,de			;81e9
	ld (0e3e6h),hl		;81ea   ; guarda la X del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ret			;81ed
accion_rebota_y:		; 0xE3EC = -0xE3EC
	ld hl,(0e3ech)		;81ee   ; lee la velocidad Y en la escena de accion y el byte siguiente (16 bits)
	call 043b3h		;81f1   ; hl_negativo: HL = -HL
	ld (0e3ech),hl		;81f4   ; guarda la velocidad Y en la escena de accion y el byte siguiente (16 bits)
	ret			;81f7
accion_rebota_x:		; 0xE3EE = -0xE3EE
	ld hl,(0e3eeh)		;81f8   ; lee la velocidad X en la escena de accion y el byte siguiente (16 bits)
	call 043b3h		;81fb   ; hl_negativo: HL = -HL
	ld (0e3eeh),hl		;81fe   ; guarda la velocidad X en la escena de accion y el byte siguiente (16 bits)
	ret			;8201
accion_sin_vida:		; si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	ld a,(0e3f6h)		;8202   ; lee la vida en la escena de accion
	or a			;8205
	ret nz			;8206
	ld a,001h		;8207
	ld (0e3f7h),a		;8209   ; guarda tocado en la escena de accion (parpadea)
	ld hl,00006h		;820c
	ld (0e3e0h),hl		;820f   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	xor a			;8212
	ret			;8213
accion_direccion:		; 0xE3F3 = la direccion pulsada (1, 2, 4, 8), dando preferencia a la nueva
	ld a,(0e009h)		;8214   ; los cursores que hay
	and 00fh		;8217
	ld b,a			;8219   ; B = los que hay
	ld c,000h		;821a   ; ninguno: C = 0
	jr z,L_824F		;821c
	ld a,(0e008h)		;821e   ; los cursores nuevos
	and 00fh		;8221
	cp 00fh		;8223   ; todos a la vez: nada
	ret z			;8225
	ld c,001h		;8226   ; arriba
	rra			;8228
	jr c,L_824F		;8229
	ld c,002h		;822b   ; abajo
	rra			;822d
	jr c,L_824F		;822e
	ld c,004h		;8230   ; izquierda
	rra			;8232
	jr c,L_824F		;8233
	ld c,008h		;8235   ; derecha
	rra			;8237
	jr c,L_824F		;8238
	ld a,b			;823a   ; si no hay nuevos, los que hay
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
	ld (0e3f3h),a		;8250   ; guarda la direccion pulsada en la escena de accion (1, 2, 4, 8)
	ret			;8253
accion_mueve:		; mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
	call accion_un_paso		;8254   ; accion_un_paso: un paso en la direccion A con los topes BC (y BC' en vertical)
	ld a,(0e3a1h)		;8257   ; lee la escena de accion (1-9)
	cp 003h		;825a
	jr nz,L_8263		;825c
	ld a,001h		;825e
	ld (0e3e3h),a		;8260   ; guarda hacia donde mira en la escena de accion (1-4)
L_8263:
	ld b,000h		;8263
	ld a,(0e3ebh)		;8265   ; lee la fase del salto en la escena (1 sube, 2 baja)
	or a			;8268
	ret nz			;8269
	ld a,(0e3f3h)		;826a   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
	or a			;826d
	jr z,L_8279		;826e
	ld a,(0e003h)		;8270   ; lee la cuenta de cuadros
	and 004h		;8273
	jr z,L_8279		;8275
	ld b,001h		;8277
L_8279:
	ld a,(0e3e3h)		;8279   ; lee hacia donde mira en la escena de accion (1-4)
	dec a			;827c
	add a,a			;827d
	add a,b			;827e
	ld hl,0828ah		;827f
	call 040a1h		;8282   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;8285
	ld (0e3e2h),a		;8286   ; guarda el fotograma del personaje en la escena de accion
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


accion_un_paso:		; un paso en la direccion A con los topes BC (y BC' en vertical)
	and 00fh		;8292
	ret z			;8294
	rra			;8295
	jr c,L_82D9		;8296
	rra			;8298
	jr c,L_82F6		;8299
	rra			;829b
	jr c,L_82B5		;829c
	ld a,004h		;829e
	ld (0e3e3h),a		;82a0   ; guarda hacia donde mira en la escena de accion (1-4)
	ld hl,(0e3e6h)		;82a3   ; lee la X del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	add hl,de			;82a6
	ld (0e3e6h),hl		;82a7   ; guarda la X del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ld a,(0e3e7h)		;82aa   ; lee la X del personaje en la escena de accion
	cp c			;82ad
	ret c			;82ae
	dec c			;82af
	ld hl,0e3e7h		;82b0   ; apunta a la X del personaje en la escena de accion
	ld (hl),c			;82b3
	ret			;82b4
L_82B5:
	ld a,(0e3a1h)		;82b5   ; lee la escena de accion (1-9)
	cp 002h		;82b8
	jr z,L_82C5		;82ba
	cp 007h		;82bc
	jr z,L_82C5		;82be
	ld a,003h		;82c0
	ld (0e3e3h),a		;82c2   ; guarda hacia donde mira en la escena de accion (1-4)
L_82C5:
	call 043adh		;82c5   ; de_negativo: DE = -DE
	ld hl,(0e3e6h)		;82c8   ; lee la X del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	add hl,de			;82cb
	ld (0e3e6h),hl		;82cc   ; guarda la X del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ld a,(0e3e7h)		;82cf   ; lee la X del personaje en la escena de accion
	cp b			;82d2
	ret nc			;82d3
	ld hl,0e3e7h		;82d4   ; apunta a la X del personaje en la escena de accion
	ld (hl),b			;82d7
	ret			;82d8
L_82D9:
	ld a,001h		;82d9
	ld (0e3e3h),a		;82db   ; guarda hacia donde mira en la escena de accion (1-4)
	call 043adh		;82de   ; de_negativo: DE = -DE
	ld hl,(0e3e4h)		;82e1   ; lee la Y del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	add hl,de			;82e4
	ld (0e3e4h),hl		;82e5   ; guarda la Y del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ld a,(0e3e5h)		;82e8   ; lee la Y del personaje en la escena de accion
	exx			;82eb
	cp b			;82ec
	exx			;82ed
	ret nc			;82ee
	exx			;82ef
	ld hl,0e3e5h		;82f0   ; apunta a la Y del personaje en la escena de accion
	ld (hl),b			;82f3
	exx			;82f4
	ret			;82f5
L_82F6:
	ld a,002h		;82f6
	ld (0e3e3h),a		;82f8   ; guarda hacia donde mira en la escena de accion (1-4)
	ld hl,(0e3e4h)		;82fb   ; lee la Y del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	add hl,de			;82fe
	ld (0e3e4h),hl		;82ff   ; guarda la Y del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ld a,(0e3e5h)		;8302   ; lee la Y del personaje en la escena de accion
	exx			;8305
	cp c			;8306
	exx			;8307
	ret c			;8308
	exx			;8309
	dec c			;830a
	ld hl,0e3e5h		;830b   ; apunta a la Y del personaje en la escena de accion
	ld (hl),c			;830e
	exx			;830f
	ret			;8310
accion_sprites:		; los tres sprites del personaje de la escena de accion (0xE3E5, 0xE3E7) en 0xF000
	ld l,03ch		;8311
	ld a,(0e3a1h)		;8313   ; lee la escena de accion (1-9)
	cp 006h		;8316
	jr z,L_8329		;8318
	cp 009h		;831a
	jr nz,L_8325		;831c
	ld a,(0e3fdh)		;831e
	or a			;8321
	jp nz,L_839D		;8322
L_8325:
	ld a,(0e3e2h)		;8325   ; lee el fotograma del personaje en la escena de accion
	ld l,a			;8328
L_8329:
	ld h,001h		;8329
	ld a,(0e3a1h)		;832b   ; lee la escena de accion (1-9)
	cp 001h		;832e
	jp z,L_83AB		;8330
	cp 005h		;8333
	jr z,L_8339		;8335
	ld h,004h		;8337
L_8339:
	ld a,(0e3e5h)		;8339   ; lee la Y del personaje en la escena de accion
	ld e,a			;833c
	ld a,(0e3e7h)		;833d   ; lee la X del personaje en la escena de accion
	ld d,a			;8340
	ld (0f000h),de		;8341   ; guarda los atributos de los 32 sprites y el byte siguiente (16 bits)
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
	ld a,(0e3f7h)		;836a   ; lee tocado en la escena de accion (parpadea)
	or a			;836d
	jr z,L_8382		;836e
	ld a,(0e003h)		;8370   ; lee la cuenta de cuadros
	and 002h		;8373
	jr nz,L_8382		;8375
	ld a,00ah		;8377
	ld (0f003h),a		;8379
	ld (0f007h),a		;837c
	ld (0f00bh),a		;837f
L_8382:
	ld a,(0e3a1h)		;8382   ; lee la escena de accion (1-9)
	cp 006h		;8385
	ret nz			;8387
	ld a,(0e3e7h)		;8388   ; lee la X del personaje en la escena de accion
	ld h,a			;838b
	ld a,(0e3e5h)		;838c   ; lee la Y del personaje en la escena de accion
	ld l,a			;838f
	call 04509h		;8390   ; mapa_de_bloques: HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
	ld (hl),010h		;8393
	ld a,020h		;8395
	call 040a1h		;8397   ; hl_mas_a: HL = HL + A
	ld (hl),000h		;839a
	ret			;839c
L_839D:
	ld de,0f001h		;839d
	ld hl,0f000h		;83a0   ; apunta a los atributos de los 32 sprites
	ld (hl),0e0h		;83a3
	ld bc,0000bh		;83a5
	ldir		;83a8
	ret			;83aa
L_83AB:
	ld a,(0e3e5h)		;83ab   ; lee la Y del personaje en la escena de accion
	ld e,a			;83ae
	ld a,(0e3e7h)		;83af   ; lee la X del personaje en la escena de accion
	ld d,a			;83b2
	ld (0f000h),de		;83b3   ; guarda los atributos de los 32 sprites y el byte siguiente (16 bits)
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
accion_sprites_extra:		; dos sprites en 0xF020
	ld hl,0f020h		;83dd   ; el primer sprite
	ld de,08860h		;83e0   ; Y 0x60, X 0x88
	ld (hl),e			;83e3
	inc l			;83e4
	ld (hl),d			;83e5
	inc l			;83e6
	ld (hl),078h		;83e7   ; patron 0x78, color 0x0F
	inc l			;83e9
	ld (hl),00fh		;83ea
	inc l			;83ec
	ld (hl),e			;83ed   ; el segundo en el mismo sitio
	inc l			;83ee
	ld (hl),d			;83ef
	inc l			;83f0
	ld (hl),07ch		;83f1   ; patron 0x7C, color 5
	inc l			;83f3
	ld (hl),005h		;83f4
	ret			;83f6
accion_quita_extra:		; esconde los sprites de 0xF020
	xor a			;83f7
	ld (0e3a2h),a		;83f8
	ld hl,0f020h		;83fb   ; apunta a los sprites de los actores (desde el 8)
	call esconde_un_sprite		;83fe   ; esconde_un_sprite: Y = 0xE0 y el resto a cero en el sprite de HL
esconde_un_sprite:		; Y = 0xE0 y el resto a cero en el sprite de HL
	xor a			;8401   ; A = 0
	ld (hl),0e0h		;8402   ; Y = 0xE0: escondido
	inc l			;8404
	ld (hl),a			;8405   ; X, patron y color a cero
	inc l			;8406
	ld (hl),a			;8407
	inc l			;8408
	ld (hl),a			;8409
	inc l			;840a
	ret			;840b
accion_sprites_arriba:		; tres sprites en la Y 0xA0 alrededor de la X del personaje
	ld hl,0f010h		;840c   ; desde el sprite 4
	ld b,008h		;840f   ; 8 puntos a los lados
	ld a,(0e3fah)		;8411
	dec a			;8414
	jr nz,L_8419		;8415
	ld b,010h		;8417   ; o 16
L_8419:
	ld a,(0e3e7h)		;8419   ; la X del personaje
	sub b			;841c
	ld d,a			;841d
	ld (hl),0a0h		;841e   ; Y 0xA0
	inc l			;8420
	ld (hl),d			;8421
	inc l			;8422
	ld (hl),0ach		;8423   ; patron 0xAC, color 7
	inc l			;8425
	ld (hl),007h		;8426
	inc l			;8428
	ld a,d			;8429
	sla b		;842a   ; al otro lado
	add a,b			;842c
	ld d,a			;842d
	ld (hl),0a0h		;842e
	inc l			;8430
	ld (hl),d			;8431
	inc l			;8432
	ld (hl),0b4h		;8433   ; patron 0xB4, color 7
	inc l			;8435
	ld (hl),007h		;8436
	ld a,b			;8438
	ld b,0e0h		;8439   ; el tercero escondido
	cp 020h		;843b
	jr nz,L_8441		;843d
	ld b,0a0h		;843f   ; salvo con 16: en la Y 0xA0
L_8441:
	ld a,(0e3e7h)		;8441   ; lee la X del personaje en la escena de accion
	inc l			;8444
	ld (hl),b			;8445
	inc l			;8446
	ld (hl),a			;8447
	inc l			;8448
	ld (hl),0b0h		;8449
	inc l			;844b
	ld (hl),007h		;844c
	ret			;844e
cambia_de_sala:		; modo 1: la sala nueva por el borde (vecinas: sala - 0x20, + 0x20, - 1, + 1 de p02:858C), las salas 0x201-0x228 a mano o el salto de 0xE36A
	xor a			;844f
	ld (0e3cch),a		;8450   ; guarda el personaje flota (modo 10)
	ld (0e3c9h),a		;8453   ; guarda la cuenta de espera del personaje
	ld (0e383h),a		;8456   ; guarda la cuenta de la animacion de fichas
	ld (0e369h),a		;8459   ; guarda la animacion de fichas de la sala (p07:800A)
	ld (0e39eh),a		;845c
	ld a,(0eb7ch)		;845f   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;8462
	ld (0eb7ch),a		;8464   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	ld a,(0e338h)		;8467   ; lee la sala de partida (indice de p01:67E3)
	cp 003h		;846a
	jp z,salas_al_azar		;846c   ; salas_al_azar: en las salas 0x228-0x22D, la siguiente sale al azar de p02:8C83
	ld a,(0eb7dh)		;846f   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
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
	ld hl,0eb78h		;8480   ; apunta a las banderas de la historia, byte 0x38 (se graban con la partida)
	set 7,(hl)		;8483
L_8485:
	ld hl,0eb59h		;8485   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	res 5,(hl)		;8488
	ld hl,0eb6bh		;848a   ; apunta a las banderas de la historia, byte 0x2B (se graban con la partida)
	res 7,(hl)		;848d
	ld hl,0eb67h		;848f   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	res 1,(hl)		;8492
	set 0,(hl)		;8494
	ld hl,0eb79h		;8496   ; apunta a las banderas de la historia, byte 0x39 (se graban con la partida)
	res 7,(hl)		;8499
	res 6,(hl)		;849b
	ld hl,0eb6ah		;849d   ; apunta a las banderas de la historia, byte 0x2A (se graban con la partida)
	res 2,(hl)		;84a0
	ld a,(0e337h)		;84a2   ; lee que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	cp 002h		;84a5
	jp z,salta_a_la_sala		;84a7   ; salta_a_la_sala: la sala de 0xE36A; a la 0x201 sin lo que hace falta, la maquina se reinicia (`jp 0`)
	ld a,(0e386h)		;84aa   ; lee el final del desplazamiento (1 abajo, 2 arriba)
	and a			;84ad
	jp nz,L_8B17		;84ae
	ld hl,0eb6ch		;84b1   ; apunta a las banderas de la historia, byte 0x2C (se graban con la partida)
	bit 7,(hl)		;84b4
	jr z,L_84BD		;84b6
	ld hl,0eb6dh		;84b8   ; apunta a las banderas de la historia, byte 0x2D (se graban con la partida)
	set 7,(hl)		;84bb
L_84BD:
	ld de,(0eb40h)		;84bd   ; lee la sala
	ld hl,00201h		;84c1
	and a			;84c4
	sbc hl,de		;84c5
	jr nc,L_84D2		;84c7
	ld hl,0020dh		;84c9
	and a			;84cc
	sbc hl,de		;84cd
	jp nc,salas_201_20d		;84cf   ; salas_201_20d: las vecinas de las salas 0x202-0x20D (tabla p02:85A4)
L_84D2:
	ld hl,00212h		;84d2
	and a			;84d5
	sbc hl,de		;84d6
	jr nc,L_84E3		;84d8
	ld hl,0021eh		;84da
	and a			;84dd
	sbc hl,de		;84de
	jp nc,salas_213_21e		;84e0   ; salas_213_21e: las vecinas de las salas 0x213-0x21E (tabla p02:871C)
L_84E3:
	ld hl,00225h		;84e3
	and a			;84e6
	sbc hl,de		;84e7
	jr nc,L_84F4		;84e9
	ld hl,00228h		;84eb
	and a			;84ee
	sbc hl,de		;84ef
	jp nc,salas_226_227		;84f1   ; salas_226_227: las vecinas de las salas 0x226 y 0x227
L_84F4:
	ld a,(0e3c5h)		;84f4   ; la direccion del paso
	dec a			;84f7
	ld hl,0858ch		;84f8   ; la tabla de vecinas
	add a,a			;84fb   ; 4 bytes por direccion
	call 040a0h		;84fc   ; hl_mas_2a: HL = HL + 2 * A
	ld e,(hl)			;84ff   ; DE = lo que se suma a la sala
	inc hl			;8500
	ld d,(hl)			;8501
	inc hl			;8502
	ld c,(hl)			;8503   ; C = lo que se suma a la Y
	inc hl			;8504
	ld b,(hl)			;8505   ; B = lo que se suma a la X
	ld hl,(0eb40h)		;8506   ; lee la sala
	ld (0e376h),hl		;8509   ; guarda la sala de la que se viene y el byte siguiente (16 bits)
	add hl,de			;850c   ; la sala vecina
	ld (0eb40h),hl		;850d   ; guarda la sala
	ex de,hl			;8510
	ld hl,00063h		;8511   ; las salas con algo especial al entrar
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
posicion_en_la_sala_nueva:		; Y += C, X += B en el personaje y 0xE3C5 = 0
	ld hl,0e3c1h		;857d   ; apunta a la Y del personaje
	ld a,(hl)			;8580
	add a,c			;8581
	ld (hl),a			;8582
	inc hl			;8583
	ld a,(hl)			;8584
	add a,b			;8585
	ld (hl),a			;8586
L_8587:
	xor a			;8587
	ld (0e3c5h),a		;8588   ; guarda la direccion del paso en curso
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


salas_201_20d:		; las vecinas de las salas 0x202-0x20D (tabla p02:85A4)
	ld a,(0eb40h)		;859c   ; lee la sala (16 bits)
	sub 002h		;859f
	call 040abh		;85a1   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
	ld (0eb40h),hl		;85bf   ; guarda la sala
	ld b,050h		;85c2
	ld c,000h		;85c4
	jp posicion_en_la_sala_nueva		;85c6   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_85C9:
	ld a,(0e3c5h)		;85c9   ; lee la direccion del paso en curso
	sub 003h		;85cc
	jr z,L_85DD		;85ce
	ld hl,00204h		;85d0
	ld (0eb40h),hl		;85d3   ; guarda la sala
	ld b,050h		;85d6
	ld c,000h		;85d8
	jp posicion_en_la_sala_nueva		;85da   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_85DD:
	ld hl,00202h		;85dd
	ld (0eb40h),hl		;85e0   ; guarda la sala
	ld b,0b0h		;85e3
	ld c,000h		;85e5
	jp posicion_en_la_sala_nueva		;85e7   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_85EA:
	ld a,(0e3c5h)		;85ea   ; lee la direccion del paso en curso
	sub 003h		;85ed
	jr z,L_85FE		;85ef
	ld hl,00205h		;85f1
	ld (0eb40h),hl		;85f4   ; guarda la sala
	ld b,000h		;85f7
	ld c,070h		;85f9
	jp posicion_en_la_sala_nueva		;85fb   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_85FE:
	ld hl,00203h		;85fe
	ld (0eb40h),hl		;8601   ; guarda la sala
	ld b,0b0h		;8604
	ld c,000h		;8606
	jp posicion_en_la_sala_nueva		;8608   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_860B:
	ld a,(0e3c5h)		;860b   ; lee la direccion del paso en curso
	sub 002h		;860e
	jr z,L_861F		;8610
	ld hl,00206h		;8612
	ld (0eb40h),hl		;8615   ; guarda la sala
	ld b,050h		;8618
	ld c,000h		;861a
	jp posicion_en_la_sala_nueva		;861c   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_861F:
	ld hl,00204h		;861f
	ld (0eb40h),hl		;8622   ; guarda la sala
	ld b,000h		;8625
	ld c,090h		;8627
	jp posicion_en_la_sala_nueva		;8629   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_862C:
	ld a,(0e3c5h)		;862c   ; lee la direccion del paso en curso
	sub 003h		;862f
	jr z,L_8640		;8631
	ld hl,00207h		;8633
	ld (0eb40h),hl		;8636   ; guarda la sala
	ld b,000h		;8639
	ld c,070h		;863b
	jp posicion_en_la_sala_nueva		;863d   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8640:
	ld hl,00205h		;8640
	ld (0eb40h),hl		;8643   ; guarda la sala
	ld b,0b0h		;8646
	ld c,000h		;8648
	jp posicion_en_la_sala_nueva		;864a   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_864D:
	ld a,(0e3c5h)		;864d   ; lee la direccion del paso en curso
	sub 002h		;8650
	jr z,L_8664		;8652
	ld hl,00208h		;8654
	ld (0eb40h),hl		;8657   ; guarda la sala
	ld b,000h		;865a
	ld c,070h		;865c
	call marca_369		;865e   ; marca_369: 0xE369 = 2 si 0xEB69 no lleva el bit 7
	jp posicion_en_la_sala_nueva		;8661   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8664:
	ld hl,00206h		;8664
	ld (0eb40h),hl		;8667   ; guarda la sala
	ld b,000h		;866a
	ld c,090h		;866c
	jp posicion_en_la_sala_nueva		;866e   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8671:
	ld a,(0e3c5h)		;8671   ; lee la direccion del paso en curso
	sub 002h		;8674
	jr z,L_8685		;8676
	ld hl,00209h		;8678
	ld (0eb40h),hl		;867b   ; guarda la sala
	ld b,000h		;867e
	ld c,070h		;8680
	jp posicion_en_la_sala_nueva		;8682   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8685:
	ld hl,00207h		;8685
	ld (0eb40h),hl		;8688   ; guarda la sala
	ld b,000h		;868b
	ld c,090h		;868d
	jp posicion_en_la_sala_nueva		;868f   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8692:
	ld a,(0e3c5h)		;8692   ; lee la direccion del paso en curso
	sub 002h		;8695
	jr z,L_86A6		;8697
	ld hl,0020ah		;8699
	ld (0eb40h),hl		;869c   ; guarda la sala
	ld b,0b0h		;869f
	ld c,000h		;86a1
	jp posicion_en_la_sala_nueva		;86a3   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_86A6:
	ld hl,00208h		;86a6
	ld (0eb40h),hl		;86a9   ; guarda la sala
	ld b,000h		;86ac
	ld c,090h		;86ae
	call marca_369		;86b0   ; marca_369: 0xE369 = 2 si 0xEB69 no lleva el bit 7
	jp posicion_en_la_sala_nueva		;86b3   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_86B6:
	ld a,(0e3c5h)		;86b6   ; lee la direccion del paso en curso
	sub 003h		;86b9
	jr z,L_86CA		;86bb
	ld hl,00209h		;86bd
	ld (0eb40h),hl		;86c0   ; guarda la sala
	ld b,050h		;86c3
	ld c,000h		;86c5
	jp posicion_en_la_sala_nueva		;86c7   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_86CA:
	ld hl,0020bh		;86ca
	ld (0eb40h),hl		;86cd   ; guarda la sala
	ld b,0b0h		;86d0
	ld c,000h		;86d2
	jp posicion_en_la_sala_nueva		;86d4   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_86D7:
	ld hl,0020ah		;86d7
	ld (0eb40h),hl		;86da   ; guarda la sala
	ld b,050h		;86dd
	ld c,000h		;86df
	jp posicion_en_la_sala_nueva		;86e1   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
marca_369:		; 0xE369 = 2 si 0xEB69 no lleva el bit 7
	ld hl,0eb69h		;86e4   ; apunta a las banderas de la historia, byte 0x29 (se graban con la partida)
	bit 7,(hl)		;86e7
	ret nz			;86e9
	ld a,002h		;86ea
	ld (0e369h),a		;86ec   ; guarda la animacion de fichas de la sala (p07:800A)
	ret			;86ef
L_86F0:
	ld a,003h		;86f0
	ld (0e369h),a		;86f2   ; guarda la animacion de fichas de la sala (p07:800A)
	ld hl,0020dh		;86f5
	ld (0eb40h),hl		;86f8   ; guarda la sala
	ld b,000h		;86fb
	ld c,070h		;86fd
	jp posicion_en_la_sala_nueva		;86ff   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8702:
	ld a,003h		;8702
	ld (0e369h),a		;8704   ; guarda la animacion de fichas de la sala (p07:800A)
	ld hl,0020ch		;8707
	ld (0eb40h),hl		;870a   ; guarda la sala
	ld b,000h		;870d
	ld c,090h		;870f
	jp posicion_en_la_sala_nueva		;8711   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
salas_213_21e:		; las vecinas de las salas 0x213-0x21E (tabla p02:871C)
	ld a,(0eb40h)		;8714   ; lee la sala (16 bits)
	sub 013h		;8717
	call 040abh		;8719   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
	ld (0eb40h),hl		;8737   ; guarda la sala
	ld b,050h		;873a
	ld c,000h		;873c
	jp posicion_en_la_sala_nueva		;873e   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8741:
	ld a,(0e3c5h)		;8741   ; lee la direccion del paso en curso
	sub 002h		;8744
	jr z,L_8755		;8746
	ld hl,00217h		;8748
	ld (0eb40h),hl		;874b   ; guarda la sala
	ld b,050h		;874e
	ld c,000h		;8750
	jp posicion_en_la_sala_nueva		;8752   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8755:
	ld hl,00215h		;8755
	ld (0eb40h),hl		;8758   ; guarda la sala
	ld b,000h		;875b
	ld c,090h		;875d
	jp posicion_en_la_sala_nueva		;875f   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8762:
	ld a,(0e3c5h)		;8762   ; lee la direccion del paso en curso
	dec a			;8765
	jr z,L_877B		;8766
	dec a			;8768
	jr z,L_8788		;8769
	dec a			;876b
	jr z,L_8795		;876c
	ld hl,00218h		;876e
	ld (0eb40h),hl		;8771   ; guarda la sala
	ld b,050h		;8774
	ld c,000h		;8776
	jp posicion_en_la_sala_nueva		;8778   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_877B:
	ld hl,00214h		;877b
	ld (0eb40h),hl		;877e   ; guarda la sala
	ld b,000h		;8781
	ld c,070h		;8783
	jp posicion_en_la_sala_nueva		;8785   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8788:
	ld hl,00216h		;8788
	ld (0eb40h),hl		;878b   ; guarda la sala
	ld b,000h		;878e
	ld c,090h		;8790
	jp posicion_en_la_sala_nueva		;8792   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8795:
	ld hl,00213h		;8795
	ld (0eb40h),hl		;8798   ; guarda la sala
	ld b,0b0h		;879b
	ld c,000h		;879d
	jp posicion_en_la_sala_nueva		;879f   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_87A2:
	ld a,(0e3c5h)		;87a2   ; lee la direccion del paso en curso
	dec a			;87a5
	jr z,L_87B5		;87a6
	ld hl,00219h		;87a8
	ld (0eb40h),hl		;87ab   ; guarda la sala
	ld b,050h		;87ae
	ld c,000h		;87b0
	jp posicion_en_la_sala_nueva		;87b2   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_87B5:
	ld hl,00215h		;87b5
	ld (0eb40h),hl		;87b8   ; guarda la sala
	ld b,000h		;87bb
	ld c,070h		;87bd
	jp posicion_en_la_sala_nueva		;87bf   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_87C2:
	ld a,(0e3c5h)		;87c2   ; lee la direccion del paso en curso
	sub 003h		;87c5
	jr z,L_87D6		;87c7
	ld hl,00218h		;87c9
	ld (0eb40h),hl		;87cc   ; guarda la sala
	ld b,000h		;87cf
	ld c,090h		;87d1
	jp posicion_en_la_sala_nueva		;87d3   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_87D6:
	ld hl,00214h		;87d6
	ld (0eb40h),hl		;87d9   ; guarda la sala
	ld b,0b0h		;87dc
	ld c,000h		;87de
	jp posicion_en_la_sala_nueva		;87e0   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_87E3:
	ld a,(0e3c5h)		;87e3   ; lee la direccion del paso en curso
	dec a			;87e6
	jr z,L_87F9		;87e7
	dec a			;87e9
	jr z,L_8806		;87ea
	ld hl,00215h		;87ec
	ld (0eb40h),hl		;87ef   ; guarda la sala
	ld b,0b0h		;87f2
	ld c,000h		;87f4
	jp posicion_en_la_sala_nueva		;87f6   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_87F9:
	ld hl,00217h		;87f9
	ld (0eb40h),hl		;87fc   ; guarda la sala
	ld b,000h		;87ff
	ld c,070h		;8801
	jp posicion_en_la_sala_nueva		;8803   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8806:
	ld hl,00219h		;8806
	ld (0eb40h),hl		;8809   ; guarda la sala
	ld b,000h		;880c
	ld c,090h		;880e
	jp posicion_en_la_sala_nueva		;8810   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8813:
	ld a,(0e3c5h)		;8813   ; lee la direccion del paso en curso
	cp 003h		;8816
	jr z,L_882B		;8818
	sub 004h		;881a
	jr z,L_8838		;881c
	ld hl,00218h		;881e
	ld (0eb40h),hl		;8821   ; guarda la sala
	ld b,000h		;8824
	ld c,070h		;8826
	jp posicion_en_la_sala_nueva		;8828   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_882B:
	ld hl,00216h		;882b
	ld (0eb40h),hl		;882e   ; guarda la sala
	ld b,0b0h		;8831
	ld c,000h		;8833
	jp posicion_en_la_sala_nueva		;8835   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8838:
	ld hl,0021ch		;8838
	ld (0eb40h),hl		;883b   ; guarda la sala
	ld b,050h		;883e
	ld c,000h		;8840
	jp posicion_en_la_sala_nueva		;8842   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8845:
	ld a,(0e3c5h)		;8845   ; lee la direccion del paso en curso
	sub 002h		;8848
	jr z,L_8859		;884a
	ld hl,0021dh		;884c
	ld (0eb40h),hl		;884f   ; guarda la sala
	ld b,050h		;8852
	ld c,000h		;8854
	jp posicion_en_la_sala_nueva		;8856   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8859:
	ld hl,0021bh		;8859
	ld (0eb40h),hl		;885c   ; guarda la sala
	ld b,000h		;885f
	ld c,090h		;8861
	jp posicion_en_la_sala_nueva		;8863   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8866:
	ld a,(0e3c5h)		;8866   ; lee la direccion del paso en curso
	dec a			;8869
	jr z,L_8879		;886a
	ld hl,0021ch		;886c
	ld (0eb40h),hl		;886f   ; guarda la sala
	ld b,000h		;8872
	ld c,090h		;8874
	jp posicion_en_la_sala_nueva		;8876   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8879:
	ld hl,0021ah		;8879
	ld (0eb40h),hl		;887c   ; guarda la sala
	ld b,000h		;887f
	ld c,070h		;8881
	jp posicion_en_la_sala_nueva		;8883   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8886:
	ld a,(0e3c5h)		;8886   ; lee la direccion del paso en curso
	dec a			;8889
	jr z,L_8899		;888a
	ld hl,00219h		;888c
	ld (0eb40h),hl		;888f   ; guarda la sala
	ld b,0b0h		;8892
	ld c,000h		;8894
	jp posicion_en_la_sala_nueva		;8896   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8899:
	ld hl,0021bh		;8899
	ld (0eb40h),hl		;889c   ; guarda la sala
	ld b,000h		;889f
	ld c,070h		;88a1
	jp posicion_en_la_sala_nueva		;88a3   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_88A6:
	ld a,(0e3c5h)		;88a6   ; lee la direccion del paso en curso
	sub 003h		;88a9
	jr z,L_88BA		;88ab
	ld hl,0021eh		;88ad
	ld (0eb40h),hl		;88b0   ; guarda la sala
	ld b,050h		;88b3
	ld c,000h		;88b5
	jp posicion_en_la_sala_nueva		;88b7   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_88BA:
	ld hl,0021ah		;88ba
	ld (0eb40h),hl		;88bd   ; guarda la sala
	ld b,0b0h		;88c0
	ld c,000h		;88c2
	jp posicion_en_la_sala_nueva		;88c4   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_88C7:
	ld hl,0021dh		;88c7
	ld (0eb40h),hl		;88ca   ; guarda la sala
	ld b,0b0h		;88cd
	ld c,000h		;88cf
	jp posicion_en_la_sala_nueva		;88d1   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
salas_226_227:		; las vecinas de las salas 0x226 y 0x227
	ld a,(0eb40h)		;88d4   ; lee la sala (16 bits)
	sub 026h		;88d7
	call 040abh		;88d9   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
	ld (0e376h),hl		;88e3   ; guarda la sala de la que se viene y el byte siguiente (16 bits)
	ld hl,00227h		;88e6
	ld (0eb40h),hl		;88e9   ; guarda la sala
	ld b,0b0h		;88ec
	ld c,000h		;88ee
	jp posicion_en_la_sala_nueva		;88f0   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_88F3:
	ld hl,00227h		;88f3
	ld (0e376h),hl		;88f6   ; guarda la sala de la que se viene y el byte siguiente (16 bits)
	ld hl,00226h		;88f9
	ld (0eb40h),hl		;88fc   ; guarda la sala
	ld b,050h		;88ff
	ld c,000h		;8901
	jp posicion_en_la_sala_nueva		;8903   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
salta_a_la_sala:		; la sala de 0xE36A; a la 0x201 sin lo que hace falta, la maquina se reinicia (`jp 0`)
	ld hl,(0eb40h)		;8906   ; lee la sala
	ld (0e376h),hl		;8909   ; guarda la sala de la que se viene y el byte siguiente (16 bits)
	ld de,(0e36ah)		;890c   ; lee la sala a la que se salta y el byte siguiente (16 bits)
	ld hl,0020ch		;8910
	and a			;8913
	sbc hl,de		;8914
	jr nz,L_891D		;8916
	ld a,003h		;8918
	ld (0e369h),a		;891a   ; guarda la animacion de fichas de la sala (p07:800A)
L_891D:
	ld hl,00201h		;891d
	and a			;8920
	sbc hl,de		;8921
	jr nz,L_8939		;8923
	ld a,(0e9d2h)		;8925   ; lee el objeto 1 (bit 0: se lleva)
	and a			;8928
	jr z,L_8936		;8929
	ld hl,0eb5dh		;892b   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	bit 7,(hl)		;892e
	jr z,L_8936		;8930
	bit 5,(hl)		;8932
	jr nz,L_8939		;8934
L_8936:
	jp 00000h		;8936   ; BIOS CHKRAM - Tests RAM and sets RAM slot for the system  [alias: STARTUP, RESET, BOOT]
L_8939:
	ld (0eb40h),de		;8939   ; guarda la sala
	xor a			;893d
	ld (0e3c5h),a		;893e   ; guarda la direccion del paso en curso
	ld a,001h		;8941
	ld (0e37ah),a		;8943   ; guarda acaba de entrar en la sala
	ret			;8946
entrada_especial:		; la posicion de entrada en las salas que la tienen a mano (0x201, 0x118, 0xE2, 0x20E, 0x87, 0x152, 0x21F...)
	ld de,(0eb40h)		;8947   ; lee la sala
	ld hl,00201h		;894b
	and a			;894e
	sbc hl,de		;894f
	jr nz,L_895D		;8951
	ld a,002h		;8953
	ld (0e3c0h),a		;8955   ; guarda el modo del personaje (tabla p01:718E)
	dec a			;8958
	ld (0e36ch),a		;8959   ; guarda pantalla en negro (los volcados escriben ceros)
	ret			;895c
L_895D:
	ld hl,00118h		;895d
	and a			;8960
	sbc hl,de		;8961
	jr nz,L_8977		;8963
	ld a,(0eb64h)		;8965   ; lee las banderas de la historia, byte 0x24 (se graban con la partida)
	rla			;8968
	ld a,000h		;8969
	jr c,L_8973		;896b
	inc a			;896d
	ld (0e369h),a		;896e   ; guarda la animacion de fichas de la sala (p07:800A)
	ld a,00ah		;8971
L_8973:
	ld (0e3c0h),a		;8973   ; guarda el modo del personaje (tabla p01:718E)
	ret			;8976
L_8977:
	ld hl,000e2h		;8977
	and a			;897a
	sbc hl,de		;897b
	jr nz,L_8993		;897d
	ld bc,(0e376h)		;897f   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld hl,00202h		;8983
	and a			;8986
	sbc hl,bc		;8987
	jr nz,L_8993		;8989
	ld hl,0e3c2h		;898b   ; apunta a la X del personaje
	ld a,(hl)			;898e
	sub 010h		;898f
	ld (hl),a			;8991
	ret			;8992
L_8993:
	ld hl,0020eh		;8993
	and a			;8996
	sbc hl,de		;8997
	jr nz,L_89B3		;8999
	ld bc,(0e376h)		;899b   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld hl,00087h		;899f
	and a			;89a2
	sbc hl,bc		;89a3
	jr nz,L_89B3		;89a5
	ld hl,0e3c1h		;89a7   ; apunta a la Y del personaje
	ld a,(hl)			;89aa
	add a,030h		;89ab
	ld (hl),a			;89ad
	xor a			;89ae
	ld (0e3c0h),a		;89af   ; guarda el modo del personaje (tabla p01:718E)
	ret			;89b2
L_89B3:
	ld hl,00087h		;89b3
	and a			;89b6
	sbc hl,de		;89b7
	jr nz,L_89D6		;89b9
	ld bc,(0e376h)		;89bb   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld hl,0020eh		;89bf
	and a			;89c2
	sbc hl,bc		;89c3
	ret nz			;89c5
	ld hl,0e3c1h		;89c6   ; apunta a la Y del personaje
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
	ld a,(0eb78h)		;89de   ; lee las banderas de la historia, byte 0x38 (se graban con la partida)
	res 6,a		;89e1
	ld de,(0e376h)		;89e3   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld hl,00151h		;89e7
	and a			;89ea
	sbc hl,de		;89eb
	jr nz,L_89F1		;89ed
	set 6,a		;89ef
L_89F1:
	ld (0eb78h),a		;89f1   ; guarda las banderas de la historia, byte 0x38 (se graban con la partida)
	ret			;89f4
L_89F5:
	ld bc,(0e376h)		;89f5   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld hl,0021fh		;89f9
	and a			;89fc
	sbc hl,bc		;89fd
	jr nz,L_8A0D		;89ff
	ld hl,0eb59h		;8a01   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	set 5,(hl)		;8a04
	ld hl,05030h		;8a06
	ld (0e3c1h),hl		;8a09   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;8a0c
L_8A0D:
	ld hl,0021fh		;8a0d   ; la sala 0x21F
	and a			;8a10
	sbc hl,de		;8a11
	jr nz,L_8A6E		;8a13
	ld de,(0e376h)		;8a15   ; la entrada depende de la sala de la que se viene
	ld hl,00024h		;8a19   ; desde la 0x24
	and a			;8a1c
	sbc hl,de		;8a1d
	ld bc,00020h		;8a1f   ; en (0x20, 0x00)
	jr z,L_8A69		;8a22
	ld hl,00052h		;8a24   ; desde la 0x52
	and a			;8a27
	sbc hl,de		;8a28
	ld bc,07000h		;8a2a
	jr z,L_8A69		;8a2d
	ld hl,0005ch		;8a2f   ; desde la 0x5C
	and a			;8a32
	sbc hl,de		;8a33
	ld bc,0b020h		;8a35
	jr z,L_8A69		;8a38
	ld hl,000cah		;8a3a   ; desde la 0xCA
	and a			;8a3d
	sbc hl,de		;8a3e
	ld bc,04000h		;8a40
	jr z,L_8A69		;8a43
	ld hl,00116h		;8a45   ; desde la 0x116
	and a			;8a48
	sbc hl,de		;8a49
	ld bc,07070h		;8a4b
	jr z,L_8A69		;8a4e
	ld hl,001b1h		;8a50   ; desde la 0x1B1
	and a			;8a53
	sbc hl,de		;8a54
	ld bc,04070h		;8a56
	jr z,L_8A69		;8a59
	ld hl,001c5h		;8a5b   ; desde la 0x1C5
	and a			;8a5e
	sbc hl,de		;8a5f
	ld bc,00050h		;8a61
	jr z,L_8A69		;8a64
	ld bc,0b050h		;8a66   ; desde las demas, en (0x50, 0xB0)
L_8A69:
	ld (0e3c1h),bc		;8a69   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;8a6d
L_8A6E:
	ld hl,00158h		;8a6e   ; la sala 0x158
	and a			;8a71
	sbc hl,de		;8a72
	jr nz,L_8A94		;8a74
	ld hl,00158h		;8a76   ; viniendo de ella misma
	and a			;8a79
	sbc hl,bc		;8a7a
	ret nz			;8a7c
	ld a,(0e3c2h)		;8a7d   ; segun la X
	cp 030h		;8a80
	ld bc,03020h		;8a82
	jr nz,L_8A8A		;8a85
	ld bc,05030h		;8a87
L_8A8A:
	ld hl,0eb5bh		;8a8a   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	set 2,(hl)		;8a8d
	ld (0e3c1h),bc		;8a8f   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;8a93
L_8A94:
	ld hl,00006h		;8a94   ; la sala 6
	and a			;8a97
	sbc hl,de		;8a98
	jr nz,L_8AAA		;8a9a
	ld hl,00027h		;8a9c   ; viniendo de la 0x27
	and a			;8a9f
	sbc hl,bc		;8aa0
	ret nz			;8aa2
	ld hl,02030h		;8aa3   ; en (0x30, 0x20)
	ld (0e3c1h),hl		;8aa6   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;8aa9
L_8AAA:
	ld hl,00027h		;8aaa   ; la sala 0x27
	and a			;8aad
	sbc hl,de		;8aae
	jr nz,L_8AC0		;8ab0
	ld hl,00006h		;8ab2   ; viniendo de la 6
	and a			;8ab5
	sbc hl,bc		;8ab6
	ret nz			;8ab8
	ld hl,05030h		;8ab9   ; en (0x30, 0x50)
	ld (0e3c1h),hl		;8abc   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;8abf
L_8AC0:
	ld hl,001b5h		;8ac0   ; la sala 0x1B5
	and a			;8ac3
	sbc hl,de		;8ac4
	jr nz,L_8AD6		;8ac6
	ld hl,00194h		;8ac8   ; viniendo de la 0x194
	and a			;8acb
	sbc hl,bc		;8acc
	ret nz			;8ace
	ld hl,08020h		;8acf   ; en (0x20, 0x80)
	ld (0e3c1h),hl		;8ad2   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;8ad5
L_8AD6:
	ld hl,00194h		;8ad6   ; la sala 0x194
	and a			;8ad9
	sbc hl,de		;8ada
	jr nz,L_8AEC		;8adc
	ld hl,001b5h		;8ade   ; viniendo de la 0x1B5
	and a			;8ae1
	sbc hl,bc		;8ae2
	ret nz			;8ae4
	ld hl,06030h		;8ae5   ; en (0x30, 0x60)
	ld (0e3c1h),hl		;8ae8   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;8aeb
L_8AEC:
	ld hl,00226h		;8aec   ; la sala 0x226
	and a			;8aef
	sbc hl,de		;8af0
	jr nz,L_8B02		;8af2
	ld hl,001a1h		;8af4   ; viniendo de la 0x1A1
	and a			;8af7
	sbc hl,bc		;8af8
	ret nz			;8afa
	ld hl,08030h		;8afb   ; en (0x30, 0x80)
	ld (0e3c1h),hl		;8afe   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;8b01
L_8B02:
	ld hl,001a1h		;8b02   ; la sala 0x1A1
	and a			;8b05
	sbc hl,de		;8b06
	ret nz			;8b08
	ld hl,00226h		;8b09   ; viniendo de la 0x226
	and a			;8b0c
	sbc hl,bc		;8b0d
	ret nz			;8b0f
	ld hl,06040h		;8b10   ; en (0x40, 0x60)
	ld (0e3c1h),hl		;8b13   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;8b16
L_8B17:
	rra			;8b17
	jr nc,L_8B2D		;8b18
	ld hl,06050h		;8b1a
	ld (0e3c1h),hl		;8b1d   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ld hl,00210h		;8b20
	ld (0eb40h),hl		;8b23   ; guarda la sala
	xor a			;8b26
	ld (0e386h),a		;8b27   ; guarda el final del desplazamiento (1 abajo, 2 arriba)
	jp L_8587		;8b2a
L_8B2D:
	ld hl,06050h		;8b2d
	ld (0e3c1h),hl		;8b30   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ld hl,0020fh		;8b33
	ld (0eb40h),hl		;8b36   ; guarda la sala
	xor a			;8b39
	ld (0e386h),a		;8b3a   ; guarda el final del desplazamiento (1 abajo, 2 arriba)
	jp L_8587		;8b3d
L_8B40:
	ld hl,(0e376h)		;8b40   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld de,00063h		;8b43
	and a			;8b46
	sbc hl,de		;8b47
	jp nz,posicion_en_la_sala_nueva		;8b49   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
	ld a,002h		;8b4c
	ld (0e378h),a		;8b4e   ; guarda la animacion del modo 4 (1 o 2)
	ld hl,0eb67h		;8b51   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	res 0,(hl)		;8b54
	ld hl,0eb68h		;8b56   ; apunta a las banderas de la historia, byte 0x28 (se graban con la partida)
	set 7,(hl)		;8b59
	ld a,b			;8b5b
	sub 010h		;8b5c
	ld b,a			;8b5e
	jp posicion_en_la_sala_nueva		;8b5f   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8B62:
	ld hl,(0e376h)		;8b62   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld de,00062h		;8b65
	and a			;8b68
	sbc hl,de		;8b69
	jp nz,posicion_en_la_sala_nueva		;8b6b   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
	ld a,001h		;8b6e
	ld (0e378h),a		;8b70   ; guarda la animacion del modo 4 (1 o 2)
	ld hl,0eb67h		;8b73   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	res 0,(hl)		;8b76
	ld a,b			;8b78
	add a,010h		;8b79
	ld b,a			;8b7b
	jp posicion_en_la_sala_nueva		;8b7c   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8B7F:
	xor a			;8b7f
	ld (0e380h),a		;8b80
	jp posicion_en_la_sala_nueva		;8b83   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8B86:
	ld hl,(0e376h)		;8b86   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld de,001d4h		;8b89
	and a			;8b8c
	sbc hl,de		;8b8d
	jp nz,posicion_en_la_sala_nueva		;8b8f   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
	ld (0eb40h),de		;8b92   ; guarda la sala
	jp posicion_en_la_sala_nueva		;8b96   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8B99:
	ld hl,(0e376h)		;8b99   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld de,001d5h		;8b9c
	and a			;8b9f
	sbc hl,de		;8ba0
	jp nz,posicion_en_la_sala_nueva		;8ba2   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
	ld (0eb40h),de		;8ba5   ; guarda la sala
	ld hl,0eb77h		;8ba9   ; apunta a las banderas de la historia, byte 0x37 (se graban con la partida)
	set 6,(hl)		;8bac
	jp posicion_en_la_sala_nueva		;8bae   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8BB1:
	ld hl,(0e376h)		;8bb1   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld de,001d6h		;8bb4
	and a			;8bb7
	sbc hl,de		;8bb8
	jp nz,posicion_en_la_sala_nueva		;8bba   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
	ld (0eb40h),de		;8bbd   ; guarda la sala
	jp posicion_en_la_sala_nueva		;8bc1   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8BC4:
	ld hl,(0e376h)		;8bc4   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld de,001d5h		;8bc7
	and a			;8bca
	sbc hl,de		;8bcb
	jp nz,posicion_en_la_sala_nueva		;8bcd   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
	ld hl,0eb76h		;8bd0   ; apunta a las banderas de la historia, byte 0x36 (se graban con la partida)
	bit 0,(hl)		;8bd3
	jr z,L_8BE7		;8bd5
	ld hl,0eb74h		;8bd7   ; apunta a las banderas de la historia, byte 0x34 (se graban con la partida)
	bit 4,(hl)		;8bda
	jr z,L_8BE7		;8bdc
	ld hl,0e380h		;8bde
	inc (hl)			;8be1
	ld a,(hl)			;8be2
	cp 008h		;8be3
	jr z,L_8BEE		;8be5
L_8BE7:
	ld (0eb40h),de		;8be7   ; guarda la sala
	jp posicion_en_la_sala_nueva		;8beb   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8BEE:
	ld hl,001d6h		;8bee
	ld (0eb40h),hl		;8bf1   ; guarda la sala
	jp posicion_en_la_sala_nueva		;8bf4   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8BF7:
	ld hl,(0e376h)		;8bf7   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld de,0007eh		;8bfa
	and a			;8bfd
	sbc hl,de		;8bfe
	jp nz,posicion_en_la_sala_nueva		;8c00   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
	ld hl,0e3afh		;8c03   ; apunta a la cuenta de vueltas por la sala 0x7E
	dec (hl)			;8c06
	jp z,posicion_en_la_sala_nueva		;8c07   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
	ld hl,0007eh		;8c0a
	ld (0eb40h),hl		;8c0d   ; guarda la sala
	jp posicion_en_la_sala_nueva		;8c10   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
L_8C13:
	ld hl,(0e376h)		;8c13   ; lee la sala de la que se viene y el byte siguiente (16 bits)
	ld de,0007eh		;8c16
	and a			;8c19
	sbc hl,de		;8c1a
	jp nz,posicion_en_la_sala_nueva		;8c1c   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
	ld hl,0e3afh		;8c1f   ; apunta a la cuenta de vueltas por la sala 0x7E
	inc (hl)			;8c22
	ld a,(hl)			;8c23
	cp 010h		;8c24
	jp z,posicion_en_la_sala_nueva		;8c26   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
	ld hl,0007eh		;8c29
	ld (0eb40h),hl		;8c2c   ; guarda la sala
	jp posicion_en_la_sala_nueva		;8c2f   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0
salas_al_azar:		; en las salas 0x228-0x22D, la siguiente sale al azar de p02:8C83
	ld de,(0eb40h)		;8c32   ; lee la sala
	ld hl,00228h		;8c36   ; la sala 0x228
	and a			;8c39
	sbc hl,de		;8c3a
	jr z,$+77		;8c3c
	ld hl,00229h		;8c3e   ; la 0x229
	and a			;8c41
	sbc hl,de		;8c42
	jr z,$+69		;8c44
	ld hl,0022ah		;8c46   ; la 0x22A
	and a			;8c49
	sbc hl,de		;8c4a
	jr z,$+90		;8c4c
	ld hl,0022bh		;8c4e   ; la 0x22B
	and a			;8c51
	sbc hl,de		;8c52
	jr z,$+82		;8c54
	ld hl,0022ch		;8c56   ; la 0x22C
	and a			;8c59
	sbc hl,de		;8c5a
	jr z,$+103		;8c5c
	ld hl,0022dh		;8c5e   ; la 0x22D
	and a			;8c61
	sbc hl,de		;8c62
	jr z,$+95		;8c64
	ld a,r		;8c66   ; las demas: una de tres al azar
	and 003h		;8c68
	and a			;8c6a
	jr z,L_8C6E		;8c6b
	dec a			;8c6d
L_8C6E:
	ld de,08c83h		;8c6e
	call 043a4h		;8c71   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld (0eb40h),de		;8c74   ; guarda la sala
	ld hl,06040h		;8c78
	ld (0e3c1h),hl		;8c7b   ; guarda la Y del personaje y el byte siguiente (16 bits)
	xor a			;8c7e
	ld (0e3b5h),a		;8c7f   ; guarda la cuenta de las salas al azar
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
	ld hl,(0eb40h)		;8c89   ; lee la sala
	ld (0e376h),hl		;8c8c   ; guarda la sala de la que se viene y el byte siguiente (16 bits)
	ld hl,0e3b5h		;8c8f   ; apunta a la cuenta de las salas al azar
	inc (hl)			;8c92
	bit 3,(hl)		;8c93
	jr z,L_8C9E		;8c95
	ld (hl),000h		;8c97
	ld hl,00229h		;8c99
	jr L_8CA1		;8c9c
L_8C9E:
	ld hl,00228h		;8c9e
L_8CA1:
	ld (0eb40h),hl		;8ca1   ; guarda la sala
	jr L_8CDE		;8ca4
L_8CA6:
	ld hl,(0eb40h)		;8ca6   ; lee la sala
	ld (0e376h),hl		;8ca9   ; guarda la sala de la que se viene y el byte siguiente (16 bits)
	ld hl,0e3b5h		;8cac   ; apunta a la cuenta de las salas al azar
	inc (hl)			;8caf
	bit 3,(hl)		;8cb0
	jr z,L_8CBB		;8cb2
	ld (hl),000h		;8cb4
	ld hl,0022bh		;8cb6
	jr L_8CBE		;8cb9
L_8CBB:
	ld hl,0022ah		;8cbb
L_8CBE:
	ld (0eb40h),hl		;8cbe   ; guarda la sala
	jr L_8CDE		;8cc1
L_8CC3:
	ld hl,(0eb40h)		;8cc3   ; lee la sala
	ld (0e376h),hl		;8cc6   ; guarda la sala de la que se viene y el byte siguiente (16 bits)
	ld hl,0e3b5h		;8cc9   ; apunta a la cuenta de las salas al azar
	inc (hl)			;8ccc
	bit 3,(hl)		;8ccd
	jr z,L_8CD8		;8ccf
	ld (hl),000h		;8cd1
	ld hl,0022dh		;8cd3
	jr L_8CDB		;8cd6
L_8CD8:
	ld hl,0022ch		;8cd8
L_8CDB:
	ld (0eb40h),hl		;8cdb   ; guarda la sala
L_8CDE:
	ld a,(0e3c5h)		;8cde   ; lee la direccion del paso en curso
	dec a			;8ce1
	ld de,08cedh		;8ce2
	call 043a4h		;8ce5   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld c,e			;8ce8
	ld b,d			;8ce9
	jp posicion_en_la_sala_nueva		;8cea   ; posicion_en_la_sala_nueva: Y += C, X += B en el personaje y 0xE3C5 = 0

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


actor_de_enfrente:		; 0xE8A6 = el actor que esta delante del personaje (0xFF si no hay); si es una puerta, prepara el salto
	ld a,(0e3c6h)		;8cf5   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	dec a			;8cf8
	ld de,09126h		;8cf9
	call 043a4h		;8cfc   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld hl,(0e3c1h)		;8cff   ; lee la Y del personaje y el byte siguiente (16 bits)
	ld a,e			;8d02
	add a,l			;8d03
	ld e,a			;8d04
	ld a,d			;8d05
	add a,h			;8d06
	ld d,a			;8d07
	ld ix,0e400h		;8d08   ; apunta a los 8 actores de la sala (0x80 bytes cada uno)
	ld b,008h		;8d0c
	ld c,000h		;8d0e
L_8D10:
	ld a,(ix+00dh)		;8d10   ; lee si se puede hablar con el actor (p02:8D10)
	and a			;8d13
	jr z,L_8D31		;8d14
	cp 002h		;8d16
	jr z,L_8D41		;8d18
	ld hl,0e37ah		;8d1a   ; apunta a acaba de entrar en la sala
	bit 0,(hl)		;8d1d
	jr nz,L_8D25		;8d1f
	cp 003h		;8d21
	jr z,L_8D41		;8d23
L_8D25:
	ld l,(ix+003h)		;8d25   ; lee la Y del actor
	ld h,(ix+004h)		;8d28   ; lee la X del actor
	and a			;8d2b
	sbc hl,de		;8d2c
	jp z,guarda_actor_de_enfrente		;8d2e   ; guarda_actor_de_enfrente: 0xE8A6 = C
L_8D31:
	ex de,hl			;8d31
	ld de,00080h		;8d32
	add ix,de		;8d35
	ex de,hl			;8d37
	inc c			;8d38
	djnz L_8D10		;8d39
	ld a,0ffh		;8d3b
	ld (0e8a6h),a		;8d3d   ; guarda el actor de enfrente (0xFF: ninguno)
	ret			;8d40
L_8D41:
	push de			;8d41
	ld de,(0e3c1h)		;8d42   ; lee la Y del personaje y el byte siguiente (16 bits)
	ld l,(ix+003h)		;8d46
	ld h,(ix+004h)		;8d49
	and a			;8d4c
	sbc hl,de		;8d4d
	pop de			;8d4f
	jr nz,L_8D31		;8d50
	call guarda_actor_de_enfrente		;8d52   ; guarda_actor_de_enfrente: 0xE8A6 = C
	call 0560eh		;8d55   ; ficha_de_actor: HL = 0xE400 + A * 0x80: la ficha del actor A
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
	jp salta_a		;8d6e   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8D71:
	ld hl,00024h		;8d71
	and a			;8d74
	sbc hl,de		;8d75
	jr nz,L_8D89		;8d77
	ld a,004h		;8d79
	ld (0e3c0h),a		;8d7b   ; guarda el modo del personaje (tabla p01:718E)
	ld hl,0e9d2h		;8d7e   ; apunta a el objeto 1 (bit 0: se lleva)
	res 7,(hl)		;8d81
	ld hl,00089h		;8d83
	jp salta_a		;8d86   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8D89:
	ld hl,0003eh		;8d89
	and a			;8d8c
	sbc hl,de		;8d8d
	jr nz,L_8D97		;8d8f
	ld hl,0020bh		;8d91
	jp salta_a		;8d94   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8D97:
	ld hl,0003fh		;8d97
	and a			;8d9a
	sbc hl,de		;8d9b
	jr nz,L_8DA5		;8d9d
	ld hl,00202h		;8d9f
	jp salta_a		;8da2   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8DA5:
	ld hl,00043h		;8da5
	and a			;8da8
	sbc hl,de		;8da9
	jr nz,L_8DB3		;8dab
	ld hl,000e2h		;8dad
	jp salta_a		;8db0   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8DB3:
	ld hl,00046h		;8db3
	and a			;8db6
	sbc hl,de		;8db7
	jr nz,L_8DC1		;8db9
	ld hl,00063h		;8dbb
	jp salta_a		;8dbe   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8DC1:
	ld hl,00053h		;8dc1
	and a			;8dc4
	sbc hl,de		;8dc5
	jr nz,L_8DCF		;8dc7
	ld hl,001d0h		;8dc9
	jp salta_a		;8dcc   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8DCF:
	ld hl,00068h		;8dcf
	and a			;8dd2
	sbc hl,de		;8dd3
	jr nz,L_8DDD		;8dd5
	ld hl,0020eh		;8dd7
	jp salta_a		;8dda   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8DDD:
	ld hl,00069h		;8ddd
	and a			;8de0
	sbc hl,de		;8de1
	jr nz,L_8DEB		;8de3
	ld hl,00087h		;8de5
	jp salta_a		;8de8   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8DEB:
	ld hl,0006ah		;8deb
	and a			;8dee
	sbc hl,de		;8def
	jr nz,L_8DF9		;8df1
	ld hl,00087h		;8df3
	jp salta_a		;8df6   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8DF9:
	ld hl,0006dh		;8df9
	and a			;8dfc
	sbc hl,de		;8dfd
	jr nz,L_8E07		;8dff
	ld hl,0020fh		;8e01
	jp salta_a		;8e04   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E07:
	ld hl,0006eh		;8e07
	and a			;8e0a
	sbc hl,de		;8e0b
	jr nz,L_8E15		;8e0d
	ld hl,00152h		;8e0f
	jp salta_a		;8e12   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E15:
	ld hl,00080h		;8e15
	and a			;8e18
	sbc hl,de		;8e19
	jr nz,L_8E23		;8e1b
	ld hl,00213h		;8e1d
	jp salta_a		;8e20   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E23:
	ld hl,00081h		;8e23
	and a			;8e26
	sbc hl,de		;8e27
	jr nz,L_8E31		;8e29
	ld hl,000feh		;8e2b
	jp salta_a		;8e2e   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E31:
	ld hl,00092h		;8e31
	and a			;8e34
	sbc hl,de		;8e35
	jr nz,L_8E3F		;8e37
	ld hl,0021fh		;8e39
	jp salta_a		;8e3c   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E3F:
	ld hl,00093h		;8e3f
	and a			;8e42
	sbc hl,de		;8e43
	jr nz,L_8E4D		;8e45
	ld hl,0021fh		;8e47
	jp salta_a		;8e4a   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E4D:
	ld hl,00094h		;8e4d
	and a			;8e50
	sbc hl,de		;8e51
	jr nz,L_8E5B		;8e53
	ld hl,0021fh		;8e55
	jp salta_a		;8e58   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E5B:
	ld hl,00095h		;8e5b
	and a			;8e5e
	sbc hl,de		;8e5f
	jr nz,L_8E69		;8e61
	ld hl,0021fh		;8e63
	jp salta_a		;8e66   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E69:
	ld hl,00096h		;8e69
	and a			;8e6c
	sbc hl,de		;8e6d
	jr nz,L_8E77		;8e6f
	ld hl,0021fh		;8e71
	jp salta_a		;8e74   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E77:
	ld hl,00097h		;8e77
	and a			;8e7a
	sbc hl,de		;8e7b
	jr nz,L_8E85		;8e7d
	ld hl,0021fh		;8e7f
	jp salta_a		;8e82   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E85:
	ld hl,00098h		;8e85
	and a			;8e88
	sbc hl,de		;8e89
	jr nz,L_8E93		;8e8b
	ld hl,0021fh		;8e8d
	jp salta_a		;8e90   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8E93:
	ld hl,00099h		;8e93
	and a			;8e96
	sbc hl,de		;8e97
	jr nz,L_8EA1		;8e99
	ld hl,0021fh		;8e9b
	jp salta_a		;8e9e   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8EA1:
	ld hl,0009ah		;8ea1
	and a			;8ea4
	sbc hl,de		;8ea5
	jr nz,L_8EAF		;8ea7
	ld hl,000cah		;8ea9
	jp salta_a		;8eac   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8EAF:
	ld hl,0009bh		;8eaf
	and a			;8eb2
	sbc hl,de		;8eb3
	jr nz,L_8EBD		;8eb5
	ld hl,00052h		;8eb7
	jp salta_a		;8eba   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8EBD:
	ld hl,0009ch		;8ebd
	and a			;8ec0
	sbc hl,de		;8ec1
	jr nz,L_8ECB		;8ec3
	ld hl,0005ch		;8ec5
	jp salta_a		;8ec8   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8ECB:
	ld hl,0009dh		;8ecb
	and a			;8ece
	sbc hl,de		;8ecf
	jr nz,L_8ED9		;8ed1
	ld hl,001d9h		;8ed3
	jp salta_a		;8ed6   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8ED9:
	ld hl,0009eh		;8ed9
	and a			;8edc
	sbc hl,de		;8edd
	jr nz,L_8EE7		;8edf
	ld hl,00116h		;8ee1
	jp salta_a		;8ee4   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8EE7:
	ld hl,0009fh		;8ee7
	and a			;8eea
	sbc hl,de		;8eeb
	jr nz,L_8EF5		;8eed
	ld hl,001b1h		;8eef
	jp salta_a		;8ef2   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8EF5:
	ld hl,000a0h		;8ef5
	and a			;8ef8
	sbc hl,de		;8ef9
	jr nz,L_8F03		;8efb
	ld hl,001c5h		;8efd
	jp salta_a		;8f00   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8F03:
	ld hl,000a1h		;8f03
	and a			;8f06
	sbc hl,de		;8f07
	jr nz,L_8F11		;8f09
	ld hl,00024h		;8f0b
	jp salta_a		;8f0e   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8F11:
	ld hl,00065h		;8f11
	and a			;8f14
	sbc hl,de		;8f15
	jr nz,L_8F24		;8f17
	ld hl,00211h		;8f19
	ld (0eb40h),hl		;8f1c   ; guarda la sala
	ld a,001h		;8f1f
	jp empieza_accion		;8f21   ; empieza_accion: 0xE3A1 = A, 0xE337 = 3 y la escena 0 de la escena de accion
L_8F24:
	ld hl,00066h		;8f24
	and a			;8f27
	sbc hl,de		;8f28
	jr nz,L_8F37		;8f2a
	ld hl,00211h		;8f2c
	ld (0eb40h),hl		;8f2f   ; guarda la sala
	ld a,001h		;8f32
	jp empieza_accion		;8f34   ; empieza_accion: 0xE3A1 = A, 0xE337 = 3 y la escena 0 de la escena de accion
L_8F37:
	ld hl,00067h		;8f37
	and a			;8f3a
	sbc hl,de		;8f3b
	jr nz,L_8F4A		;8f3d
	ld hl,00211h		;8f3f
	ld (0eb40h),hl		;8f42   ; guarda la sala
	ld a,001h		;8f45
	jp empieza_accion		;8f47   ; empieza_accion: 0xE3A1 = A, 0xE337 = 3 y la escena 0 de la escena de accion
L_8F4A:
	ld hl,00082h		;8f4a
	and a			;8f4d
	sbc hl,de		;8f4e
	jp z,accion_2		;8f50   ; accion_2: la escena de accion 2 en la sala 0x212
	ld hl,000a6h		;8f53
	and a			;8f56
	sbc hl,de		;8f57
	jp z,accion_4		;8f59   ; accion_4: la escena de accion 4 en la sala 0x222
	ld hl,000bdh		;8f5c
	and a			;8f5f
	sbc hl,de		;8f60
	jp z,accion_7		;8f62   ; accion_7: la escena de accion 7 en la sala 0x224
	ld hl,000c5h		;8f65
	and a			;8f68
	sbc hl,de		;8f69
	jr nz,L_8F73		;8f6b
	ld hl,00158h		;8f6d
	jp salta_a		;8f70   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8F73:
	ld hl,000c6h		;8f73
	and a			;8f76
	sbc hl,de		;8f77
	jr nz,L_8F81		;8f79
	ld hl,00158h		;8f7b
	jp salta_a		;8f7e   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8F81:
	ld hl,000c9h		;8f81
	and a			;8f84
	sbc hl,de		;8f85
	jr nz,L_8F8F		;8f87
	ld hl,00226h		;8f89
	jp salta_a		;8f8c   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8F8F:
	ld hl,000cah		;8f8f
	and a			;8f92
	sbc hl,de		;8f93
	jr nz,L_8F9D		;8f95
	ld hl,001a1h		;8f97
	jp salta_a		;8f9a   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8F9D:
	ld hl,000cdh		;8f9d
	and a			;8fa0
	sbc hl,de		;8fa1
	jr nz,L_8FAB		;8fa3
	ld hl,00027h		;8fa5
	jp salta_a		;8fa8   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8FAB:
	ld hl,000ceh		;8fab
	and a			;8fae
	sbc hl,de		;8faf
	jr nz,L_8FB9		;8fb1
	ld hl,00006h		;8fb3
	jp salta_a		;8fb6   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8FB9:
	ld hl,000cfh		;8fb9
	and a			;8fbc
	sbc hl,de		;8fbd
	jp z,accion_8		;8fbf   ; accion_8: la escena de accion 8 en la sala 0x225
	ld hl,000e2h		;8fc2
	and a			;8fc5
	sbc hl,de		;8fc6
	jr nz,L_8FD0		;8fc8
	ld hl,00232h		;8fca
	jp salta_a		;8fcd   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8FD0:
	ld hl,000e3h		;8fd0
	and a			;8fd3
	sbc hl,de		;8fd4
	jr nz,L_8FDE		;8fd6
	ld hl,0003eh		;8fd8
	jp salta_a		;8fdb   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8FDE:
	ld hl,000e4h		;8fde
	and a			;8fe1
	sbc hl,de		;8fe2
	jr nz,L_8FEC		;8fe4
	ld hl,00233h		;8fe6
	jp salta_a		;8fe9   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8FEC:
	ld hl,000e5h		;8fec
	and a			;8fef
	sbc hl,de		;8ff0
	jr nz,L_8FFA		;8ff2
	ld hl,00232h		;8ff4
	jp salta_a		;8ff7   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_8FFA:
	ld hl,000e6h		;8ffa
	and a			;8ffd
	sbc hl,de		;8ffe
	jr nz,L_9008		;9000
	ld hl,00234h		;9002
	jp salta_a		;9005   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_9008:
	ld hl,000e7h		;9008
	and a			;900b
	sbc hl,de		;900c
	jr nz,L_9016		;900e
	ld hl,00233h		;9010
	jp salta_a		;9013   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_9016:
	ld hl,000d9h		;9016
	and a			;9019
	sbc hl,de		;901a
	jr nz,L_9024		;901c
	ld hl,0022eh		;901e
	jp salta_a		;9021   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_9024:
	ld hl,000dah		;9024
	and a			;9027
	sbc hl,de		;9028
	jr nz,L_9032		;902a
	ld hl,00038h		;902c
	jp salta_a		;902f   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
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
	ld (0e338h),a		;9043   ; guarda la sala de partida (indice de p01:67E3)
	ld (0e340h),a		;9046   ; guarda en partida (bit 7: la demo acaba)
	ret			;9049
L_904A:
	ld hl,000abh		;904a
	and a			;904d
	sbc hl,de		;904e
	jr nz,L_9058		;9050
	ld hl,001b5h		;9052
	jp salta_a		;9055   ; salta_a: 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
L_9058:
	ld hl,000ach		;9058
	and a			;905b
	sbc hl,de		;905c
	ret nz			;905e
	ld hl,00194h		;905f
	ld (0e36ah),hl		;9062   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
salta_a:		; 0xE36A = HL y 0xE337 = 2: al cambiar de sala se salta a ella
	ld (0e36ah),hl		;9065   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
	ld a,002h		;9068
	ld (0e337h),a		;906a   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ret			;906d
empieza_accion:		; 0xE3A1 = A, 0xE337 = 3 y la escena 0 de la escena de accion
	ld (0e3a1h),a		;906e   ; guarda la escena de accion (1-9)
	ld a,003h		;9071
	ld (0e337h),a		;9073   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00000h		;9076
	ld (0e3e0h),hl		;9079   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld hl,0eb7dh		;907c   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 7,(hl)		;907f
	ld a,00ah		;9081
	jr nz,L_908F		;9083
	xor a			;9085
	ld hl,0eb66h		;9086   ; apunta a las banderas de la historia, byte 0x26 (se graban con la partida)
	bit 5,(hl)		;9089
	jr z,L_908F		;908b
	ld a,004h		;908d
L_908F:
	ld (0e3a0h),a		;908f   ; guarda el paso con el que empieza el rival
	xor a			;9092
	ld (0e39fh),a		;9093   ; guarda el paso de la preparacion de la escena de accion
	dec a			;9096
	ld (0e368h),a		;9097   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	ret			;909a
accion_2:		; la escena de accion 2 en la sala 0x212
	ld a,002h		;909b
	ld (0e3a1h),a		;909d   ; guarda la escena de accion (1-9)
	inc a			;90a0
	ld (0e337h),a		;90a1   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00003h		;90a4
	ld (0e3e0h),hl		;90a7   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld hl,00212h		;90aa
	ld (0eb40h),hl		;90ad   ; guarda la sala
	xor a			;90b0
	ld (0e39fh),a		;90b1   ; guarda el paso de la preparacion de la escena de accion
	ld (0e3a0h),a		;90b4   ; guarda el paso con el que empieza el rival
	dec a			;90b7
	ld (0e368h),a		;90b8   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	ret			;90bb
accion_4:		; la escena de accion 4 en la sala 0x222
	ld a,004h		;90bc
	ld (0e3a1h),a		;90be   ; guarda la escena de accion (1-9)
	dec a			;90c1
	ld (0e337h),a		;90c2   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00009h		;90c5
	ld (0e3e0h),hl		;90c8   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld hl,00222h		;90cb
	ld (0eb40h),hl		;90ce   ; guarda la sala
	xor a			;90d1
	ld (0e39fh),a		;90d2   ; guarda el paso de la preparacion de la escena de accion
	ld (0e3a0h),a		;90d5   ; guarda el paso con el que empieza el rival
	dec a			;90d8
	ld (0e368h),a		;90d9   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	ret			;90dc
accion_7:		; la escena de accion 7 en la sala 0x224
	ld a,007h		;90dd
	ld (0e3a1h),a		;90df   ; guarda la escena de accion (1-9)
	ld a,003h		;90e2
	ld (0e337h),a		;90e4   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00009h		;90e7
	ld (0e3e0h),hl		;90ea   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld hl,00224h		;90ed
	ld (0eb40h),hl		;90f0   ; guarda la sala
	xor a			;90f3
	ld (0e39fh),a		;90f4   ; guarda el paso de la preparacion de la escena de accion
	ld (0e3a0h),a		;90f7   ; guarda el paso con el que empieza el rival
	dec a			;90fa
	ld (0e368h),a		;90fb   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	ret			;90fe
accion_8:		; la escena de accion 8 en la sala 0x225
	ld a,008h		;90ff
	ld (0e3a1h),a		;9101   ; guarda la escena de accion (1-9)
	ld a,003h		;9104
	ld (0e337h),a		;9106   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,0000ah		;9109
	ld (0e3e0h),hl		;910c   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld hl,00225h		;910f
	ld (0eb40h),hl		;9112   ; guarda la sala
	xor a			;9115
	ld (0e39fh),a		;9116   ; guarda el paso de la preparacion de la escena de accion
	ld (0e3a0h),a		;9119   ; guarda el paso con el que empieza el rival
	dec a			;911c
	ld (0e368h),a		;911d   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	ret			;9120
guarda_actor_de_enfrente:		; 0xE8A6 = C
	ld a,c			;9121
	ld (0e8a6h),a		;9122   ; guarda el actor de enfrente (0xFF: ninguno)
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


evento:		; un paso del evento 0xE8AA (tabla p02:9135)
	ld a,(0e8aah)		;912e   ; lee el evento en curso (tabla p02:9135)
	dec a			;9131
	call 040abh		;9132   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_siguiente_paso:		; 0xE8AB + 1
	ld hl,0e8abh		;9189   ; apunta a el paso del evento
	inc (hl)			;918c
	ret			;918d
evento_01:		; el evento 0x01 (0xE8AA): despacha su paso 0xE8AB (tabla p02:9194)
	ld a,(0e8abh)		;918e   ; lee el paso del evento
	call 040abh		;9191   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_01_0:		; el evento 0x01, paso 0
	call 045c4h		;919a   ; sonido_2f: pide el sonido 0x2F
	ld a,001h		;919d
	ld (0e007h),a		;919f   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld hl,0eb58h		;91a2   ; apunta a las banderas de la historia, byte 0x18 (se graban con la partida)
	set 7,(hl)		;91a5
	call 0590dh		;91a7   ; corta_sprites: guarda la Y del primer sprite en 0xE367, la pone a 0xD0 y vuelca
	call 058d4h		;91aa   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	xor a			;91ad
	ld (0e368h),a		;91ae   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 06148h		;91b1   ; graficos_27: con 27-28 puestos, el juego de graficos A de la tabla p01:6154
	xor a			;91b4
	call 06212h		;91b5   ; nombres_27: 12 filas x 16 de la tabla p27:6233[A] a 0xED44
	call 05e5fh		;91b8   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;91bb   ; evento_siguiente_paso: 0xE8AB + 1
evento_01_1:		; el evento 0x01, paso 1
	ld c,005h		;91be
	call 04dfdh		;91c0   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;91c3   ; lee el texto en marcha
	and a			;91c6
	ret nz			;91c7
	jp evento_siguiente_paso		;91c8   ; evento_siguiente_paso: 0xE8AB + 1
evento_01_2:		; el evento 0x01, paso 2
	ld a,(0e008h)		;91cb   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and a			;91ce
	ret z			;91cf
	call 067c8h		;91d0   ; redibuja_la_sala: vuelve a montar las fichas y el mapa de la sala
	ld a,001h		;91d3
	call 04662h		;91d5
	ld a,00ch		;91d8
	ld (0e368h),a		;91da   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;91dd   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	ld a,(0e367h)		;91e0   ; lee la Y guardada del primer sprite
	ld (0f000h),a		;91e3   ; guarda los atributos de los 32 sprites
	xor a			;91e6
	ld (0e007h),a		;91e7   ; guarda las banderas de sprites (bit 0: sin rotar)
	call 05ecah		;91ea   ; vuelca_sprites: los 32 sprites de 0xF000 a 0x3B00, rotando el orden cada cuadro (0xE006)
	ld a,003h		;91ed
	ld (0e8a0h),a		;91ef   ; guarda el paso del menu (tabla p00:5231)
	ret			;91f2
evento_02:		; el evento 0x02 (0xE8AA), de un solo paso
	call 05e5fh		;91f3   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	ld hl,0e9d2h		;91f6   ; apunta a el objeto 1 (bit 0: se lleva)
	set 7,(hl)		;91f9
	ld a,001h		;91fb
	ld (0e8a0h),a		;91fd   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9200
	ld (0e8a3h),a		;9202   ; guarda la lista de opciones del menu
	ret			;9205
evento_03:		; el evento 0x03 (0xE8AA): despacha su paso 0xE8AB (tabla p02:920C)
	ld a,(0e8abh)		;9206   ; lee el paso del evento
	call 040abh		;9209   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_03_0:		; el evento 0x03, paso 0
	ld a,001h		;9216
	ld (0e007h),a		;9218   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld de,(0e363h)		;921b   ; lee el tipo del personaje de enfrente
	ld hl,09249h		;921f
	ld bc,00700h		;9222
L_9225:
	ld a,(hl)			;9225   ; el tipo de la tabla
	inc hl			;9226
	cp e			;9227   ; es el del personaje de enfrente?
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
	call 040a1h		;9238   ; hl_mas_a: HL = HL + A
	ld e,(hl)			;923b
	inc hl			;923c
	ld d,(hl)			;923d
	inc hl			;923e
	ld a,(hl)			;923f
	ex de,hl			;9240
	or (hl)			;9241
	ld (hl),a			;9242
	call 0babfh		;9243   ; sonido_09: pide el sonido 9
	jp evento_siguiente_paso		;9246   ; evento_siguiente_paso: 0xE8AB + 1

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


evento_03_1:		; el evento 0x03, paso 1
	call 04503h		;926c
	ld a,(0e372h)		;926f   ; lee el paso del efecto que sube
	sub 002h		;9272
	ret nz			;9274
	ld (0e372h),a		;9275   ; guarda el paso del efecto que sube
	jp evento_siguiente_paso		;9278   ; evento_siguiente_paso: 0xE8AB + 1
evento_03_2:		; el evento 0x03, paso 2
	xor a			;927b
	ld (0e007h),a		;927c   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld hl,(0eb40h)		;927f   ; lee la sala
	ld de,00185h		;9282
	and a			;9285
	sbc hl,de		;9286
	jp z,evento_siguiente_paso		;9288   ; evento_siguiente_paso: 0xE8AB + 1
	ld a,001h		;928b
	ld (0e8a0h),a		;928d   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9290
	ld (0e8a3h),a		;9292   ; guarda la lista de opciones del menu
	ret			;9295
evento_03_3:		; el evento 0x03, paso 3
	ld c,001h		;9296
	call 04dfdh		;9298   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;929b   ; lee el texto en marcha
	and a			;929e
	ret nz			;929f
	ld a,(0e887h)		;92a0   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;92a3
	ret nz			;92a4
	jp evento_siguiente_paso		;92a5   ; evento_siguiente_paso: 0xE8AB + 1
evento_03_4:		; el evento 0x03, paso 4
	ld a,008h		;92a8
	ld (0e360h),a		;92aa   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ld a,006h		;92ad
	ld (0e3a1h),a		;92af   ; guarda la escena de accion (1-9)
	ld a,003h		;92b2
	ld (0e337h),a		;92b4   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00008h		;92b7
	ld (0e3e0h),hl		;92ba   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld hl,00223h		;92bd
	ld (0eb40h),hl		;92c0   ; guarda la sala
	ld a,0ffh		;92c3
	ld (0e368h),a		;92c5   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	xor a			;92c8
	ld (0e39fh),a		;92c9   ; guarda el paso de la preparacion de la escena de accion
	ld (0e3a0h),a		;92cc   ; guarda el paso con el que empieza el rival
	ret			;92cf
evento_04:		; el evento 0x04 (0xE8AA): despacha su paso 0xE8AB (tabla p02:92D6)
	ld a,(0e8abh)		;92d0   ; lee el paso del evento
	call 040abh		;92d3   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_04_0:		; el evento 0x04, paso 0
	call 0428ah		;92da   ; a_anima_al_de_enfrente: con 7-8, p07:8758 (un paso de la animacion del actor de enfrente (0xE370, tabla p07:8762)); vuelve con 1-2-3
	ld a,(0e36fh)		;92dd   ; lee el resultado de la animacion del de enfrente
	and a			;92e0
	ret z			;92e1
	dec a			;92e2
	jp z,evento_siguiente_paso		;92e3   ; evento_siguiente_paso: 0xE8AB + 1
	ld de,(0e363h)		;92e6   ; lee el tipo del personaje de enfrente
	ld hl,09310h		;92ea
	ld c,000h		;92ed
L_92EF:
	ld a,(hl)			;92ef   ; el tipo de la tabla
	inc hl			;92f0
	cp e			;92f1   ; es el del personaje de enfrente?
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
	call 040a1h		;9302   ; hl_mas_a: HL = HL + A
	ld e,(hl)			;9305
	inc hl			;9306
	ld d,(hl)			;9307
	inc hl			;9308
	ld a,(hl)			;9309
	ex de,hl			;930a
	or (hl)			;930b
	ld (hl),a			;930c
	jp evento_siguiente_paso		;930d   ; evento_siguiente_paso: 0xE8AB + 1

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


evento_04_1:		; el evento 0x04, paso 1
	xor a			;9315
	ld (0e36fh),a		;9316   ; guarda el resultado de la animacion del de enfrente
	ld (0e360h),a		;9319   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp 0585ch		;931c   ; borra_cursor: borra el cursor de la columna de opciones
evento_05:		; el evento 0x05 (0xE8AA), de un solo paso
	xor a			;931f
	ld (0e360h),a		;9320   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp 0585ch		;9323   ; borra_cursor: borra el cursor de la columna de opciones
evento_06:		; el evento 0x06 (0xE8AA): despacha su paso 0xE8AB (tabla p02:932C)
	ld a,(0e8abh)		;9326   ; lee el paso del evento
	call 040abh		;9329   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_06_0:		; el evento 0x06, paso 0
	call 045c4h		;9332   ; sonido_2f: pide el sonido 0x2F
	ld a,001h		;9335
	ld (0e007h),a		;9337   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld hl,0eb66h		;933a   ; apunta a las banderas de la historia, byte 0x26 (se graban con la partida)
	set 7,(hl)		;933d
	call 0590dh		;933f   ; corta_sprites: guarda la Y del primer sprite en 0xE367, la pone a 0xD0 y vuelca
	call 058d4h		;9342   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	ld a,001h		;9345
	call 06148h		;9347   ; graficos_27: con 27-28 puestos, el juego de graficos A de la tabla p01:6154
	ld a,001h		;934a
	call 06212h		;934c   ; nombres_27: 12 filas x 16 de la tabla p27:6233[A] a 0xED44
	call 05e5fh		;934f   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;9352   ; evento_siguiente_paso: 0xE8AB + 1
evento_06_1:		; el evento 0x06, paso 1
	ld c,001h		;9355
	call 04dfdh		;9357   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;935a   ; lee el texto en marcha
	and a			;935d
	ret nz			;935e
	jp evento_siguiente_paso		;935f   ; evento_siguiente_paso: 0xE8AB + 1
evento_06_2:		; el evento 0x06, paso 2
	ld a,(0e008h)		;9362   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and a			;9365
	ret z			;9366
	call 067c8h		;9367   ; redibuja_la_sala: vuelve a montar las fichas y el mapa de la sala
	ld a,001h		;936a
	call 04662h		;936c
	ld a,(0e367h)		;936f   ; lee la Y guardada del primer sprite
	ld (0f000h),a		;9372   ; guarda los atributos de los 32 sprites
	xor a			;9375
	ld (0e007h),a		;9376   ; guarda las banderas de sprites (bit 0: sin rotar)
	call 05ecah		;9379   ; vuelca_sprites: los 32 sprites de 0xF000 a 0x3B00, rotando el orden cada cuadro (0xE006)
	ld a,003h		;937c
	ld (0e8a0h),a		;937e   ; guarda el paso del menu (tabla p00:5231)
	ret			;9381
evento_07:		; el evento 0x07 (0xE8AA): despacha su paso 0xE8AB (tabla p02:9388)
	ld a,(0e8abh)		;9382   ; lee el paso del evento
	call 040abh		;9385   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_07_0:		; el evento 0x07, paso 0
	ld a,040h		;9390
	ld (0e004h),a		;9392   ; guarda la espera del estado, en cuadros
	call 04592h		;9395   ; sonido_06: pide el sonido 6
	jp evento_siguiente_paso		;9398   ; evento_siguiente_paso: 0xE8AB + 1
evento_07_1:		; el evento 0x07, paso 1
	ld hl,0e004h		;939b   ; apunta a la espera del estado, en cuadros
	dec (hl)			;939e
	ld a,(hl)			;939f
	cp 020h		;93a0
	ret nz			;93a2
	ld de,00020h		;93a3
	ld hl,0b486h		;93a6
	call 044b8h		;93a9   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	call 05e5fh		;93ac   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;93af   ; evento_siguiente_paso: 0xE8AB + 1
evento_07_2:		; el evento 0x07, paso 2
	ld hl,0e004h		;93b2   ; apunta a la espera del estado, en cuadros
	dec (hl)			;93b5
	ret nz			;93b6
	ld de,00020h		;93b7
	ld hl,0b490h		;93ba
	call 044b8h		;93bd   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	xor a			;93c0
	ld hl,0e830h		;93c1
	ld (hl),a			;93c4
	ld hl,0e480h		;93c5
	ld de,0e481h		;93c8
	ld bc,0007fh		;93cb
	ld (hl),000h		;93ce
	ldir		;93d0
	call 05e5fh		;93d2   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;93d5   ; evento_siguiente_paso: 0xE8AB + 1
evento_07_3:		; el evento 0x07, paso 3
	ld c,00bh		;93d8
	call 04dfdh		;93da   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;93dd   ; lee el texto en marcha
	and a			;93e0
	ret nz			;93e1
	ld (0e360h),a		;93e2   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp 0585ch		;93e5   ; borra_cursor: borra el cursor de la columna de opciones
evento_08:		; el evento 0x08 (0xE8AA): despacha su paso 0xE8AB (tabla p02:93EE)
	ld a,(0e8abh)		;93e8   ; lee el paso del evento
	call 040abh		;93eb   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_08_0:		; el evento 0x08, paso 0
	ld a,040h		;93f6
	ld (0e004h),a		;93f8   ; guarda la espera del estado, en cuadros
	call 04592h		;93fb   ; sonido_06: pide el sonido 6
	jp evento_siguiente_paso		;93fe   ; evento_siguiente_paso: 0xE8AB + 1
evento_08_1:		; el evento 0x08, paso 1
	ld hl,0e004h		;9401   ; apunta a la espera del estado, en cuadros
	dec (hl)			;9404
	ld a,(hl)			;9405
	cp 020h		;9406
	ret nz			;9408
	ld de,0b020h		;9409
	ld hl,0b4a4h		;940c
	call 044b8h		;940f   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	call 05e5fh		;9412   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;9415   ; evento_siguiente_paso: 0xE8AB + 1
evento_08_2:		; el evento 0x08, paso 2
	ld hl,0e004h		;9418   ; apunta a la espera del estado, en cuadros
	dec (hl)			;941b
	ret nz			;941c
	ld de,0b020h		;941d
	ld hl,0b4aeh		;9420
	call 044b8h		;9423   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	xor a			;9426
	ld hl,0e83bh		;9427
	ld (hl),a			;942a
	ld hl,0e400h		;942b   ; apunta a los 8 actores de la sala (0x80 bytes cada uno)
	ld de,0e401h		;942e
	ld bc,0007fh		;9431
	ld (hl),000h		;9434
	ldir		;9436
	call 05e5fh		;9438   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;943b   ; evento_siguiente_paso: 0xE8AB + 1
evento_08_3:		; el evento 0x08, paso 3
	ld c,00eh		;943e
	call 04dfdh		;9440   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9443   ; lee el texto en marcha
	and a			;9446
	ret nz			;9447
	ld (0e360h),a		;9448   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp 0585ch		;944b   ; borra_cursor: borra el cursor de la columna de opciones
evento_09:		; el evento 0x09 (0xE8AA), de un solo paso
	ld a,003h		;944e
	call 04856h		;9450   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	jp evento_05		;9453   ; evento_05: el evento 0x05 (0xE8AA), de un solo paso
evento_0a:		; el evento 0x0A (0xE8AA): despacha su paso 0xE8AB (tabla p02:945C)
	ld a,(0e8abh)		;9456   ; lee el paso del evento
	call 040abh		;9459   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_0a_0:		; el evento 0x0A, paso 0
	ld a,030h		;9464
	ld (0e004h),a		;9466   ; guarda la espera del estado, en cuadros
	call 0458dh		;9469   ; sonido_1e: pide el sonido 0x1E
	jp evento_siguiente_paso		;946c   ; evento_siguiente_paso: 0xE8AB + 1
evento_0a_1:		; el evento 0x0A, paso 1
	ld hl,0e004h		;946f   ; apunta a la espera del estado, en cuadros
	dec (hl)			;9472
	ld a,(hl)			;9473
	cp 020h		;9474
	ret nz			;9476
	ld de,02050h		;9477
	ld hl,0950ah		;947a
	call 044b8h		;947d   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	call 05e5fh		;9480   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;9483   ; evento_siguiente_paso: 0xE8AB + 1
evento_0a_2:		; el evento 0x0A, paso 2
	ld hl,0e004h		;9486   ; apunta a la espera del estado, en cuadros
	dec (hl)			;9489
	ld a,(hl)			;948a
	cp 010h		;948b
	ret nz			;948d
	ld de,01040h		;948e
	ld hl,094e4h		;9491
	call 044b8h		;9494   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	call 05e5fh		;9497   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;949a   ; evento_siguiente_paso: 0xE8AB + 1
evento_0a_3:		; el evento 0x0A, paso 3
	ld hl,0e004h		;949d   ; apunta a la espera del estado, en cuadros
	dec (hl)			;94a0
	ret nz			;94a1
	ld de,01040h		;94a2
	ld hl,094beh		;94a5
	xor a			;94a8
	ld (0e36dh),a		;94a9   ; guarda el color de las fichas copiadas
	call 044b8h		;94ac   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	call 05e5fh		;94af   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	ld hl,0eb6dh		;94b2   ; apunta a las banderas de la historia, byte 0x2D (se graban con la partida)
	set 5,(hl)		;94b5
	xor a			;94b7
	ld (0e9d8h),a		;94b8   ; guarda el objeto 4 (bit 0: se lleva)
	jp evento_05		;94bb   ; evento_05: el evento 0x05 (0xE8AA), de un solo paso

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


evento_0b:		; el evento 0x0B (0xE8AA): despacha su paso 0xE8AB (tabla p02:9516)
	ld a,(0e8abh)		;9510   ; lee el paso del evento
	call 040abh		;9513   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_0b_0:		; el evento 0x0B, paso 0
	ld a,009h		;951a
	ld (0e368h),a		;951c   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;951f   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;9522   ; sonido_13: pide el sonido 0x13
	jp evento_siguiente_paso		;9525   ; evento_siguiente_paso: 0xE8AB + 1
evento_0b_1:		; el evento 0x0B, paso 1
	ld c,00bh		;9528
	call 04dfdh		;952a   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;952d   ; lee el texto en marcha
	and a			;9530
	ret nz			;9531
	ld hl,0eb71h		;9532   ; apunta a las banderas de la historia, byte 0x31 (se graban con la partida)
	set 5,(hl)		;9535
	ld a,001h		;9537
	ld (0e9d6h),a		;9539   ; guarda el objeto 3 (bit 0: se lleva)
	xor a			;953c
	ld (0e368h),a		;953d   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	ld a,001h		;9540
	ld (0e8a0h),a		;9542   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9545
	ld (0e8a3h),a		;9547   ; guarda la lista de opciones del menu
	ret			;954a
evento_0c:		; el evento 0x0C (0xE8AA): despacha su paso 0xE8AB (tabla p02:9551)
	ld a,(0e8abh)		;954b   ; lee el paso del evento
	call 040abh		;954e   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_0c_0:		; el evento 0x0C, paso 0
	ld a,001h		;9557
	ld (0e007h),a		;9559   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld hl,0eb74h		;955c   ; apunta a las banderas de la historia, byte 0x34 (se graban con la partida)
	set 4,(hl)		;955f
	call 0590dh		;9561   ; corta_sprites: guarda la Y del primer sprite en 0xE367, la pone a 0xD0 y vuelca
	call 058d4h		;9564   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	ld a,002h		;9567
	call 06148h		;9569   ; graficos_27: con 27-28 puestos, el juego de graficos A de la tabla p01:6154
	ld a,002h		;956c
	call 06212h		;956e   ; nombres_27: 12 filas x 16 de la tabla p27:6233[A] a 0xED44
	call 05e5fh		;9571   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	call 045c4h		;9574   ; sonido_2f: pide el sonido 0x2F
	jp evento_siguiente_paso		;9577   ; evento_siguiente_paso: 0xE8AB + 1
evento_0c_1:		; el evento 0x0C, paso 1
	ld c,009h		;957a
	call 04dfdh		;957c   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;957f   ; lee el texto en marcha
	and a			;9582
	ret nz			;9583
	jp evento_siguiente_paso		;9584   ; evento_siguiente_paso: 0xE8AB + 1
evento_0c_2:		; el evento 0x0C, paso 2
	ld a,(0e008h)		;9587   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and a			;958a
	ret z			;958b
	call 067c8h		;958c   ; redibuja_la_sala: vuelve a montar las fichas y el mapa de la sala
	ld a,000h		;958f
	call 04662h		;9591
	ld a,(0e367h)		;9594   ; lee la Y guardada del primer sprite
	ld (0f000h),a		;9597   ; guarda los atributos de los 32 sprites
	xor a			;959a
	ld (0e007h),a		;959b   ; guarda las banderas de sprites (bit 0: sin rotar)
	call 05ecah		;959e   ; vuelca_sprites: los 32 sprites de 0xF000 a 0x3B00, rotando el orden cada cuadro (0xE006)
	ld a,003h		;95a1
	ld (0e8a0h),a		;95a3   ; guarda el paso del menu (tabla p00:5231)
	ret			;95a6
evento_0d:		; el evento 0x0D (0xE8AA), de un solo paso
	ld a,022h		;95a7
	ld (0e488h),a		;95a9
	call 0458dh		;95ac   ; sonido_1e: pide el sonido 0x1E
	ld a,001h		;95af
	ld (0e8a0h),a		;95b1   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;95b4
	ld (0e8a3h),a		;95b6   ; guarda la lista de opciones del menu
	ret			;95b9
evento_0e:		; el evento 0x0E (0xE8AA): despacha su paso 0xE8AB (tabla p02:95C0)
	ld a,(0e8abh)		;95ba   ; lee el paso del evento
	call 040abh		;95bd   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_0e_0:		; el evento 0x0E, paso 0
	ld a,00eh		;95de
	ld (0e368h),a		;95e0   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;95e3   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;95e6   ; sonido_13: pide el sonido 0x13
	jp evento_siguiente_paso		;95e9   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_1:		; el evento 0x0E, paso 1
	ld c,005h		;95ec
	call 04dfdh		;95ee   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;95f1   ; lee el texto en marcha
	and a			;95f4
	ret nz			;95f5
	ld a,(0e887h)		;95f6   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;95f9
	ret nz			;95fa
	jp evento_siguiente_paso		;95fb   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_2:		; el evento 0x0E, paso 2
	ld a,001h		;95fe
	ld (0e007h),a		;9600   ; guarda las banderas de sprites (bit 0: sin rotar)
	call 0590dh		;9603   ; corta_sprites: guarda la Y del primer sprite en 0xE367, la pone a 0xD0 y vuelca
	call 058d4h		;9606   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	xor a			;9609
	ld (0e368h),a		;960a   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	xor a			;960d
	call 06148h		;960e   ; graficos_27: con 27-28 puestos, el juego de graficos A de la tabla p01:6154
	xor a			;9611
	call 06212h		;9612   ; nombres_27: 12 filas x 16 de la tabla p27:6233[A] a 0xED44
	call 05e5fh		;9615   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;9618   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_3:		; el evento 0x0E, paso 3
	ld c,006h		;961b
	call 04dfdh		;961d   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9620   ; lee el texto en marcha
	and a			;9623
	ret nz			;9624
	ld a,(0e887h)		;9625   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;9628
	ret nz			;9629
	ld a,00eh		;962a
	ld (0e8aah),a		;962c   ; guarda el evento en curso (tabla p02:9135)
	jp evento_siguiente_paso		;962f   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_4:		; el evento 0x0E, paso 4
	call 0590dh		;9632   ; corta_sprites: guarda la Y del primer sprite en 0xE367, la pone a 0xD0 y vuelca
	call 058d4h		;9635   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	ld a,004h		;9638
	call 06148h		;963a   ; graficos_27: con 27-28 puestos, el juego de graficos A de la tabla p01:6154
	ld a,004h		;963d
	call 06212h		;963f   ; nombres_27: 12 filas x 16 de la tabla p27:6233[A] a 0xED44
	call 05e5fh		;9642   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;9645   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_5:		; el evento 0x0E, paso 5
	ld c,007h		;9648
	call 04dfdh		;964a   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;964d   ; lee el texto en marcha
	and a			;9650
	ret nz			;9651
	ld a,(0e887h)		;9652   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;9655
	ret nz			;9656
	ld a,00eh		;9657
	ld (0e8aah),a		;9659   ; guarda el evento en curso (tabla p02:9135)
	jp evento_siguiente_paso		;965c   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_6:		; el evento 0x0E, paso 6
	call 067c8h		;965f   ; redibuja_la_sala: vuelve a montar las fichas y el mapa de la sala
	ld a,00dh		;9662
	ld (0e368h),a		;9664   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;9667   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;966a   ; sonido_13: pide el sonido 0x13
	jp evento_siguiente_paso		;966d   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_7:		; el evento 0x0E, paso 7
	ld c,008h		;9670
	call 04dfdh		;9672   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9675   ; lee el texto en marcha
	and a			;9678
	ret nz			;9679
	ld a,(0e887h)		;967a   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;967d
	ret nz			;967e
	ld a,00eh		;967f
	ld (0e8aah),a		;9681   ; guarda el evento en curso (tabla p02:9135)
	jp evento_siguiente_paso		;9684   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_8:		; el evento 0x0E, paso 8
	call 0590dh		;9687   ; corta_sprites: guarda la Y del primer sprite en 0xE367, la pone a 0xD0 y vuelca
	call 058d4h		;968a   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	xor a			;968d
	ld (0e368h),a		;968e   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	xor a			;9691
	call 06148h		;9692   ; graficos_27: con 27-28 puestos, el juego de graficos A de la tabla p01:6154
	xor a			;9695
	call 06212h		;9696   ; nombres_27: 12 filas x 16 de la tabla p27:6233[A] a 0xED44
	call 05e5fh		;9699   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;969c   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_9:		; el evento 0x0E, paso 9
	ld c,009h		;969f
	call 04dfdh		;96a1   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;96a4   ; lee el texto en marcha
	and a			;96a7
	ret nz			;96a8
	ld a,(0e887h)		;96a9   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;96ac
	ret nz			;96ad
	ld a,00eh		;96ae
	ld (0e8aah),a		;96b0   ; guarda el evento en curso (tabla p02:9135)
	jp evento_siguiente_paso		;96b3   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_10:		; el evento 0x0E, paso 10
	call 067c8h		;96b6   ; redibuja_la_sala: vuelve a montar las fichas y el mapa de la sala
	ld a,00eh		;96b9
	ld (0e368h),a		;96bb   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;96be   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;96c1   ; sonido_13: pide el sonido 0x13
	jp evento_siguiente_paso		;96c4   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_11:		; el evento 0x0E, paso 11
	ld c,00dh		;96c7
	call 04dfdh		;96c9   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;96cc   ; lee el texto en marcha
	and a			;96cf
	ret nz			;96d0
	ld a,(0e887h)		;96d1   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;96d4
	ret nz			;96d5
	ld a,00eh		;96d6
	ld (0e8aah),a		;96d8   ; guarda el evento en curso (tabla p02:9135)
	jp evento_siguiente_paso		;96db   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_12:		; el evento 0x0E, paso 12
	ld a,00fh		;96de
	ld (0e368h),a		;96e0   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;96e3   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;96e6   ; sonido_13: pide el sonido 0x13
	jp evento_siguiente_paso		;96e9   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_13:		; el evento 0x0E, paso 13
	ld c,00ah		;96ec
	call 04dfdh		;96ee   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;96f1   ; lee el texto en marcha
	and a			;96f4
	ret nz			;96f5
	ld a,(0e887h)		;96f6   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;96f9
	ret nz			;96fa
	ld a,00eh		;96fb
	ld (0e8aah),a		;96fd   ; guarda el evento en curso (tabla p02:9135)
	jp evento_siguiente_paso		;9700   ; evento_siguiente_paso: 0xE8AB + 1
evento_0e_14:		; el evento 0x0E, paso 14
	ld a,001h		;9703
	ld (0e8a0h),a		;9705   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9708
	ld (0e8a3h),a		;970a   ; guarda la lista de opciones del menu
	ret			;970d
evento_0f:		; el evento 0x0F (0xE8AA), de un solo paso
	ld a,008h		;970e
	ld (0e360h),a		;9710   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ld a,009h		;9713
	ld (0e3a1h),a		;9715   ; guarda la escena de accion (1-9)
	ld a,003h		;9718
	ld (0e337h),a		;971a   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00005h		;971d
	ld (0e3e0h),hl		;9720   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld hl,00235h		;9723
	ld (0eb40h),hl		;9726   ; guarda la sala
	ld a,0ffh		;9729
	ld (0e368h),a		;972b   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	xor a			;972e
	ld (0e39fh),a		;972f   ; guarda el paso de la preparacion de la escena de accion
	ld (0e3a0h),a		;9732   ; guarda el paso con el que empieza el rival
	ret			;9735
evento_10:		; el evento 0x10 (0xE8AA): despacha su paso 0xE8AB (tabla p02:973C)
	ld a,(0e8abh)		;9736   ; lee el paso del evento
	call 040abh		;9739   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_10_0:		; el evento 0x10, paso 0
	xor a			;9746
	ld (0e38fh),a		;9747   ; guarda el resultado de la carga (2: fallo)
	ld (0e38eh),a		;974a   ; guarda el paso del menu de carga
	ld a,(0eb7ch)		;974d   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;9750
	set 6,a		;9752
	ld (0eb7ch),a		;9754   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	jp evento_siguiente_paso		;9757   ; evento_siguiente_paso: 0xE8AB + 1
evento_10_1:		; el evento 0x10, paso 1
	call 0bdafh		;975a   ; graba_en_cinta: un paso de la grabacion en cinta (tabla p03:BDB5)
	ld a,(0e38fh)		;975d   ; lee el resultado de la carga (2: fallo)
	and a			;9760
	ret z			;9761
	dec a			;9762
	jr z,L_9768		;9763
	call evento_siguiente_paso		;9765   ; evento_siguiente_paso: 0xE8AB + 1
L_9768:
	jp evento_siguiente_paso		;9768   ; evento_siguiente_paso: 0xE8AB + 1
evento_10_2:		; el evento 0x10, paso 2
	ld c,004h		;976b
	call 04dfdh		;976d   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9770   ; lee el texto en marcha
	and a			;9773
	ret nz			;9774
	call evento_siguiente_paso		;9775   ; evento_siguiente_paso: 0xE8AB + 1
	jp evento_siguiente_paso		;9778   ; evento_siguiente_paso: 0xE8AB + 1
evento_10_3:		; el evento 0x10, paso 3
	ld c,008h		;977b
	call 04dfdh		;977d   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9780   ; lee el texto en marcha
	and a			;9783
	ret nz			;9784
	ld a,(0eb7ch)		;9785   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;9788
	ld (0eb7ch),a		;978a   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	jp evento_siguiente_paso		;978d   ; evento_siguiente_paso: 0xE8AB + 1
evento_10_4:		; el evento 0x10, paso 4
	ld a,001h		;9790
	ld (0e8a0h),a		;9792   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9795
	ld (0e8a3h),a		;9797   ; guarda la lista de opciones del menu
	ret			;979a
evento_11:		; el evento 0x11 (0xE8AA): despacha su paso 0xE8AB (tabla p02:97A1)
	ld a,(0e8abh)		;979b   ; lee el paso del evento
	call 040abh		;979e   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_11_0:		; el evento 0x11, paso 0
	xor a			;97ab
	ld (0e38fh),a		;97ac   ; guarda el resultado de la carga (2: fallo)
	ld (0e38eh),a		;97af   ; guarda el paso del menu de carga
	ld a,(0eb7ch)		;97b2   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;97b5
	set 5,a		;97b7
	ld (0eb7ch),a		;97b9   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	jp evento_siguiente_paso		;97bc   ; evento_siguiente_paso: 0xE8AB + 1
evento_11_1:		; el evento 0x11, paso 1
	call 0bbb4h		;97bf   ; graba_en_disco: un paso de la grabacion en disco (tabla p03:BBBA)
	ld a,(0e38fh)		;97c2   ; lee el resultado de la carga (2: fallo)
	and a			;97c5
	ret z			;97c6
	dec a			;97c7
	jr z,L_97CD		;97c8
	call evento_siguiente_paso		;97ca   ; evento_siguiente_paso: 0xE8AB + 1
L_97CD:
	jp evento_siguiente_paso		;97cd   ; evento_siguiente_paso: 0xE8AB + 1
evento_11_2:		; el evento 0x11, paso 2
	ld c,004h		;97d0
	call 04dfdh		;97d2   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;97d5   ; lee el texto en marcha
	and a			;97d8
	ret nz			;97d9
	call evento_siguiente_paso		;97da   ; evento_siguiente_paso: 0xE8AB + 1
	jp evento_siguiente_paso		;97dd   ; evento_siguiente_paso: 0xE8AB + 1
evento_11_3:		; el evento 0x11, paso 3
	ld c,008h		;97e0
	call 04dfdh		;97e2   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;97e5   ; lee el texto en marcha
	and a			;97e8
	ret nz			;97e9
	ld a,(0eb7ch)		;97ea   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;97ed
	ld (0eb7ch),a		;97ef   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	jp evento_siguiente_paso		;97f2   ; evento_siguiente_paso: 0xE8AB + 1
evento_11_4:		; el evento 0x11, paso 4
	ld a,001h		;97f5
	ld (0e8a0h),a		;97f7   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;97fa
	ld (0e8a3h),a		;97fc   ; guarda la lista de opciones del menu
	ret			;97ff
evento_12:		; el evento 0x12 (0xE8AA): despacha su paso 0xE8AB (tabla p02:9806)
	ld a,(0e8abh)		;9800   ; lee el paso del evento
	call 040abh		;9803   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_12_0:		; el evento 0x12, paso 0
	ld de,07030h		;980a
	ld hl,0982bh		;980d
	call 044b8h		;9810   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	call 05e5fh		;9813   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_siguiente_paso		;9816   ; evento_siguiente_paso: 0xE8AB + 1
evento_12_1:		; el evento 0x12, paso 1
	ld c,00ch		;9819
	call 04dfdh		;981b   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;981e   ; lee el texto en marcha
	and a			;9821
	ret nz			;9822
	ld hl,0eb5dh		;9823   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	set 4,(hl)		;9826
	jp evento_05		;9828   ; evento_05: el evento 0x05 (0xE8AA), de un solo paso

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


evento_13:		; el evento 0x13 (0xE8AA): despacha su paso 0xE8AB (tabla p02:9837)
	ld a,(0e8abh)		;9831   ; lee el paso del evento
	call 040abh		;9834   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_13_0:		; el evento 0x13, paso 0
	xor a			;9841
	ld (0e38fh),a		;9842   ; guarda el resultado de la carga (2: fallo)
	ld (0e38eh),a		;9845   ; guarda el paso del menu de carga
	jp evento_siguiente_paso		;9848   ; evento_siguiente_paso: 0xE8AB + 1
evento_13_1:		; el evento 0x13, paso 1
	call 0bee1h		;984b   ; comprueba_la_cinta: un paso de la comprobacion de la cinta (tabla p03:BEE7)
	ld a,(0e38fh)		;984e   ; lee el resultado de la carga (2: fallo)
	and a			;9851
	ret z			;9852
	dec a			;9853
	jr z,L_9859		;9854
	call evento_siguiente_paso		;9856   ; evento_siguiente_paso: 0xE8AB + 1
L_9859:
	jp evento_siguiente_paso		;9859   ; evento_siguiente_paso: 0xE8AB + 1
evento_13_2:		; el evento 0x13, paso 2
	ld c,004h		;985c
	call 04dfdh		;985e   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9861   ; lee el texto en marcha
	and a			;9864
	ret nz			;9865
	call evento_siguiente_paso		;9866   ; evento_siguiente_paso: 0xE8AB + 1
	jp evento_siguiente_paso		;9869   ; evento_siguiente_paso: 0xE8AB + 1
evento_13_3:		; el evento 0x13, paso 3
	ld c,008h		;986c
	call 04dfdh		;986e   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9871   ; lee el texto en marcha
	and a			;9874
	ret nz			;9875
	jp evento_siguiente_paso		;9876   ; evento_siguiente_paso: 0xE8AB + 1
evento_13_4:		; el evento 0x13, paso 4
	ld a,(0eb7ch)		;9879   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;987c
	ld (0eb7ch),a		;987e   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	ld a,001h		;9881
	ld (0e8a0h),a		;9883   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9886
	ld (0e8a3h),a		;9888   ; guarda la lista de opciones del menu
	ret			;988b
evento_14:		; el evento 0x14 (0xE8AA): despacha su paso 0xE8AB (tabla p02:9892)
	ld a,(0e8abh)		;988c   ; lee el paso del evento
	call 040abh		;988f   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_14_0:		; el evento 0x14, paso 0
	xor a			;989c
	ld (0e38fh),a		;989d   ; guarda el resultado de la carga (2: fallo)
	ld (0e38eh),a		;98a0   ; guarda el paso del menu de carga
	jp evento_siguiente_paso		;98a3   ; evento_siguiente_paso: 0xE8AB + 1
evento_14_1:		; el evento 0x14, paso 1
	call 0bbffh		;98a6   ; comprueba_el_disco: un paso de la comprobacion del disco (tabla p03:BC05)
	ld a,(0e38fh)		;98a9   ; lee el resultado de la carga (2: fallo)
	and a			;98ac
	ret z			;98ad
	dec a			;98ae
	jr z,L_98B4		;98af
	call evento_siguiente_paso		;98b1   ; evento_siguiente_paso: 0xE8AB + 1
L_98B4:
	jp evento_siguiente_paso		;98b4   ; evento_siguiente_paso: 0xE8AB + 1
evento_14_2:		; el evento 0x14, paso 2
	ld c,004h		;98b7
	call 04dfdh		;98b9   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;98bc   ; lee el texto en marcha
	and a			;98bf
	ret nz			;98c0
	call evento_siguiente_paso		;98c1   ; evento_siguiente_paso: 0xE8AB + 1
	jp evento_siguiente_paso		;98c4   ; evento_siguiente_paso: 0xE8AB + 1
evento_14_3:		; el evento 0x14, paso 3
	ld c,008h		;98c7
	call 04dfdh		;98c9   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;98cc   ; lee el texto en marcha
	and a			;98cf
	ret nz			;98d0
	jp evento_siguiente_paso		;98d1   ; evento_siguiente_paso: 0xE8AB + 1
evento_14_4:		; el evento 0x14, paso 4
	ld a,(0eb7ch)		;98d4   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;98d7
	ld (0eb7ch),a		;98d9   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	ld a,001h		;98dc
	ld (0e8a0h),a		;98de   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;98e1
	ld (0e8a3h),a		;98e3   ; guarda la lista de opciones del menu
	ret			;98e6
evento_15:		; el evento 0x15 (0xE8AA): despacha su paso 0xE8AB (tabla p02:98ED)
	ld a,(0e8abh)		;98e7   ; lee el paso del evento
	call 040abh		;98ea   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_15_0:		; el evento 0x15, paso 0
	ld a,001h		;98f3
	ld (0e007h),a		;98f5   ; guarda las banderas de sprites (bit 0: sin rotar)
	call 0bb05h		;98f8   ; sonido_32: pide el sonido 0x32
	call 058ffh		;98fb   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	call 058d4h		;98fe   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	ld a,003h		;9901
	call 06148h		;9903   ; graficos_27: con 27-28 puestos, el juego de graficos A de la tabla p01:6154
	ld a,003h		;9906
	call 06212h		;9908   ; nombres_27: 12 filas x 16 de la tabla p27:6233[A] a 0xED44
	call 05e5fh		;990b   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	call 0b4b8h		;990e   ; sprites_de_0xeb7d: 8 sprites en 0xF060: cada bit de 0xEB7D elige una de las dos posiciones de p03:B4F5
	jp evento_siguiente_paso		;9911   ; evento_siguiente_paso: 0xE8AB + 1
evento_15_1:		; el evento 0x15, paso 1
	ld c,008h		;9914
	call 04dfdh		;9916   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9919   ; lee el texto en marcha
	and a			;991c
	ret nz			;991d
	jp evento_siguiente_paso		;991e   ; evento_siguiente_paso: 0xE8AB + 1
evento_15_2:		; el evento 0x15, paso 2
	ld a,(0e008h)		;9921   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and a			;9924
	ret z			;9925
	call 058ffh		;9926   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	call 067c8h		;9929   ; redibuja_la_sala: vuelve a montar las fichas y el mapa de la sala
	xor a			;992c
	ld (0e007h),a		;992d   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld a,001h		;9930
	ld (0e8a0h),a		;9932   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9935
	ld (0e8a3h),a		;9937   ; guarda la lista de opciones del menu
	ret			;993a
evento_16:		; el evento 0x16 (0xE8AA): despacha su paso 0xE8AB (tabla p02:9941)
	ld a,(0e8abh)		;993b   ; lee el paso del evento
	call 040abh		;993e   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_16_0:		; el evento 0x16, paso 0
	ld a,00ah		;9947
	ld (0e368h),a		;9949   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;994c   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;994f   ; sonido_13: pide el sonido 0x13
	jp evento_siguiente_paso		;9952   ; evento_siguiente_paso: 0xE8AB + 1
evento_16_1:		; el evento 0x16, paso 1
	ld c,005h		;9955
	call 04dfdh		;9957   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;995a   ; lee el texto en marcha
	and a			;995d
	ret nz			;995e
	jp evento_siguiente_paso		;995f   ; evento_siguiente_paso: 0xE8AB + 1
evento_16_2:		; el evento 0x16, paso 2
	ld a,(0e008h)		;9962   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and a			;9965
	ret z			;9966
	xor a			;9967
	ld (0e368h),a		;9968   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	ld a,001h		;996b
	ld (0e8a0h),a		;996d   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9970
	ld (0e8a3h),a		;9972   ; guarda la lista de opciones del menu
	ret			;9975
evento_17:		; el evento 0x17 (0xE8AA): despacha su paso 0xE8AB (tabla p02:997C)
	ld a,(0e8abh)		;9976   ; lee el paso del evento
	call 040abh		;9979   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_17_0:		; el evento 0x17, paso 0
	ld a,001h		;9982
	ld (0e007h),a		;9984   ; guarda las banderas de sprites (bit 0: sin rotar)
	call 045c4h		;9987   ; sonido_2f: pide el sonido 0x2F
	call 058ffh		;998a   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	call 058d4h		;998d   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	ld a,003h		;9990
	call 06148h		;9992   ; graficos_27: con 27-28 puestos, el juego de graficos A de la tabla p01:6154
	ld a,003h		;9995
	call 06212h		;9997   ; nombres_27: 12 filas x 16 de la tabla p27:6233[A] a 0xED44
	call 05e5fh		;999a   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	call 0b4b8h		;999d   ; sprites_de_0xeb7d: 8 sprites en 0xF060: cada bit de 0xEB7D elige una de las dos posiciones de p03:B4F5
	jp evento_siguiente_paso		;99a0   ; evento_siguiente_paso: 0xE8AB + 1
evento_17_1:		; el evento 0x17, paso 1
	ld c,009h		;99a3
	call 04dfdh		;99a5   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;99a8   ; lee el texto en marcha
	and a			;99ab
	ret nz			;99ac
	ld hl,0eb60h		;99ad   ; apunta a las banderas de la historia, byte 0x20 (se graban con la partida)
	set 0,(hl)		;99b0
	jp evento_siguiente_paso		;99b2   ; evento_siguiente_paso: 0xE8AB + 1
evento_17_2:		; el evento 0x17, paso 2
	ld a,(0e008h)		;99b5   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and a			;99b8
	ret z			;99b9
	call 058ffh		;99ba   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	call 067c8h		;99bd   ; redibuja_la_sala: vuelve a montar las fichas y el mapa de la sala
	xor a			;99c0
	ld (0e007h),a		;99c1   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld a,001h		;99c4
	ld (0e8a0h),a		;99c6   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;99c9
	ld (0e8a3h),a		;99cb   ; guarda la lista de opciones del menu
	ret			;99ce
evento_18:		; el evento 0x18 (0xE8AA): despacha su paso 0xE8AB (tabla p02:99D5)
	ld a,(0e8abh)		;99cf   ; lee el paso del evento
	call 040abh		;99d2   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_18_0:		; el evento 0x18, paso 0
	ld a,001h		;99d9
	ld (0e007h),a		;99db   ; guarda las banderas de sprites (bit 0: sin rotar)
	call 0bb05h		;99de   ; sonido_32: pide el sonido 0x32
	call 058ffh		;99e1   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	call 058d4h		;99e4   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	ld a,003h		;99e7
	call 06148h		;99e9   ; graficos_27: con 27-28 puestos, el juego de graficos A de la tabla p01:6154
	ld a,003h		;99ec
	call 06212h		;99ee   ; nombres_27: 12 filas x 16 de la tabla p27:6233[A] a 0xED44
	call 05e5fh		;99f1   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	call 0b4b8h		;99f4   ; sprites_de_0xeb7d: 8 sprites en 0xF060: cada bit de 0xEB7D elige una de las dos posiciones de p03:B4F5
	jp evento_siguiente_paso		;99f7   ; evento_siguiente_paso: 0xE8AB + 1
evento_18_1:		; el evento 0x18, paso 1
	ld a,(0e008h)		;99fa   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and a			;99fd
	ret z			;99fe
	call 058ffh		;99ff   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	call 067c8h		;9a02   ; redibuja_la_sala: vuelve a montar las fichas y el mapa de la sala
	xor a			;9a05
	ld (0e007h),a		;9a06   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld a,001h		;9a09
	ld (0e8a0h),a		;9a0b   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9a0e
	ld (0e8a3h),a		;9a10   ; guarda la lista de opciones del menu
	ret			;9a13
evento_19:		; el evento 0x19 (0xE8AA), de un solo paso
	call 0bac4h		;9a14   ; sonido_27: pide el sonido 0x27
	ld a,002h		;9a17
	ld (0ea01h),a		;9a19   ; guarda el paso del rival
	ld a,008h		;9a1c
	ld (0e360h),a		;9a1e   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp 0585ch		;9a21   ; borra_cursor: borra el cursor de la columna de opciones
evento_1a:		; el evento 0x1A (0xE8AA), de un solo paso
	ld hl,00001h		;9a24
	ld (0e3e0h),hl		;9a27   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld a,008h		;9a2a
	ld (0e360h),a		;9a2c   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp 0585ch		;9a2f   ; borra_cursor: borra el cursor de la columna de opciones
evento_1b:		; el evento 0x1B (0xE8AA), de un solo paso
	ld hl,00002h		;9a32
	ld (0e3e0h),hl		;9a35   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld a,001h		;9a38
	ld (0e3f2h),a		;9a3a
	ld a,008h		;9a3d
	ld (0e360h),a		;9a3f   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp 0585ch		;9a42   ; borra_cursor: borra el cursor de la columna de opciones
evento_1c:		; el evento 0x1C (0xE8AA), de un solo paso
	ld a,006h		;9a45
	ld (0ea01h),a		;9a47   ; guarda el paso del rival
	ld a,008h		;9a4a
	ld (0e360h),a		;9a4c   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp 0585ch		;9a4f   ; borra_cursor: borra el cursor de la columna de opciones
evento_1d:		; el evento 0x1D (0xE8AA): despacha su paso 0xE8AB (tabla p02:9A58)
	ld a,(0e8abh)		;9a52   ; lee el paso del evento
	call 040abh		;9a55   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_1d_0:		; el evento 0x1D, paso 0
	ld a,080h		;9a62
	ld (0e004h),a		;9a64   ; guarda la espera del estado, en cuadros
	jp evento_siguiente_paso		;9a67   ; evento_siguiente_paso: 0xE8AB + 1
evento_1d_1:		; el evento 0x1D, paso 1
	ld hl,0e004h		;9a6a   ; apunta a la espera del estado, en cuadros
	dec (hl)			;9a6d
	jp z,evento_siguiente_paso		;9a6e   ; evento_siguiente_paso: 0xE8AB + 1
	ld a,(hl)			;9a71
	and 00ch		;9a72
	rra			;9a74
	rra			;9a75
	ld hl,09a81h		;9a76
	call 040a1h		;9a79   ; hl_mas_a: HL = HL + A
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


evento_1d_2:		; el evento 0x1D, paso 2
	ld a,0e0h		;9a85
	ld (0f028h),a		;9a87
	ld hl,0eb7dh		;9a8a   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	set 7,(hl)		;9a8d
	jp evento_siguiente_paso		;9a8f   ; evento_siguiente_paso: 0xE8AB + 1
evento_1d_3:		; el evento 0x1D, paso 3
	ld c,00eh		;9a92
	call 04dfdh		;9a94   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9a97   ; lee el texto en marcha
	and a			;9a9a
	ret nz			;9a9b
	ld a,(0e887h)		;9a9c   ; lee la espera del texto (1 tecla, 2 tecla y fin)
	and a			;9a9f
	ret nz			;9aa0
	call accion_quita_extra		;9aa1   ; accion_quita_extra: esconde los sprites de 0xF020
	jp evento_siguiente_paso		;9aa4   ; evento_siguiente_paso: 0xE8AB + 1
evento_1d_4:		; el evento 0x1D, paso 4
	ld c,00fh		;9aa7
	call 04dfdh		;9aa9   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9aac   ; lee el texto en marcha
	and a			;9aaf
	ret nz			;9ab0
	ld a,000h		;9ab1
	call 04662h		;9ab3
	ld hl,0eb65h		;9ab6   ; apunta a las banderas de la historia, byte 0x25 (se graban con la partida)
	set 0,(hl)		;9ab9
	ld a,008h		;9abb
	ld (0e360h),a		;9abd   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp 0585ch		;9ac0   ; borra_cursor: borra el cursor de la columna de opciones
evento_1e:		; el evento 0x1E (0xE8AA), de un solo paso
	ld a,008h		;9ac3
	ld (0e360h),a		;9ac5   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ld a,005h		;9ac8
	ld (0e3a1h),a		;9aca   ; guarda la escena de accion (1-9)
	ld a,003h		;9acd
	ld (0e337h),a		;9acf   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00007h		;9ad2
	ld (0e3e0h),hl		;9ad5   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld hl,00220h		;9ad8
	ld (0eb40h),hl		;9adb   ; guarda la sala
	ld a,0ffh		;9ade
	ld (0e368h),a		;9ae0   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	xor a			;9ae3
	ld (0e39fh),a		;9ae4   ; guarda el paso de la preparacion de la escena de accion
	ld (0e3a0h),a		;9ae7   ; guarda el paso con el que empieza el rival
	ret			;9aea
evento_1f:		; el evento 0x1F (0xE8AA): despacha su paso 0xE8AB (tabla p02:9AF1)
	ld a,(0e8abh)		;9aeb   ; lee el paso del evento
	call 040abh		;9aee   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_1f_0:		; el evento 0x1F, paso 0
	xor a			;9afb
	ld (0e38fh),a		;9afc   ; guarda el resultado de la carga (2: fallo)
	ld (0e38eh),a		;9aff   ; guarda el paso del menu de carga
	ld a,(0eb7ch)		;9b02   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;9b05
	set 4,a		;9b07
	ld (0eb7ch),a		;9b09   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	jp evento_siguiente_paso		;9b0c   ; evento_siguiente_paso: 0xE8AB + 1
evento_1f_1:		; el evento 0x1F, paso 1
	call 0bb14h		;9b0f   ; graba_en_el_otro_cartucho: un paso de la grabacion en el otro cartucho (0xE38E, tabla p03:BB1A)
	ld a,(0e38fh)		;9b12   ; lee el resultado de la carga (2: fallo)
	and a			;9b15
	ret z			;9b16
	dec a			;9b17
	jr z,L_9B1D		;9b18
	call evento_siguiente_paso		;9b1a   ; evento_siguiente_paso: 0xE8AB + 1
L_9B1D:
	jp evento_siguiente_paso		;9b1d   ; evento_siguiente_paso: 0xE8AB + 1
evento_1f_2:		; el evento 0x1F, paso 2
	ld c,004h		;9b20
	call 04dfdh		;9b22   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9b25   ; lee el texto en marcha
	and a			;9b28
	ret nz			;9b29
	call evento_siguiente_paso		;9b2a   ; evento_siguiente_paso: 0xE8AB + 1
	jp evento_siguiente_paso		;9b2d   ; evento_siguiente_paso: 0xE8AB + 1
evento_1f_3:		; el evento 0x1F, paso 3
	ld c,008h		;9b30
	call 04dfdh		;9b32   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9b35   ; lee el texto en marcha
	and a			;9b38
	ret nz			;9b39
	ld a,(0eb7ch)		;9b3a   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;9b3d
	ld (0eb7ch),a		;9b3f   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	jp evento_siguiente_paso		;9b42   ; evento_siguiente_paso: 0xE8AB + 1
evento_1f_4:		; el evento 0x1F, paso 4
	ld a,001h		;9b45
	ld (0e8a0h),a		;9b47   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9b4a
	ld (0e8a3h),a		;9b4c   ; guarda la lista de opciones del menu
	ret			;9b4f
evento_20:		; el evento 0x20 (0xE8AA): despacha su paso 0xE8AB (tabla p02:9B56)
	ld a,(0e8abh)		;9b50   ; lee el paso del evento
	call 040abh		;9b53   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_20_0:		; el evento 0x20, paso 0
	xor a			;9b60
	ld (0e38fh),a		;9b61   ; guarda el resultado de la carga (2: fallo)
	ld (0e38eh),a		;9b64   ; guarda el paso del menu de carga
	jp evento_siguiente_paso		;9b67   ; evento_siguiente_paso: 0xE8AB + 1
evento_20_1:		; el evento 0x20, paso 1
	call 0bb5fh		;9b6a   ; comprueba_el_otro_cartucho: un paso de la comprobacion: lo vuelve a leer y lo compara con 0xEB40 (tabla p03:BB65)
	ld a,(0e38fh)		;9b6d   ; lee el resultado de la carga (2: fallo)
	and a			;9b70
	ret z			;9b71
	dec a			;9b72
	jr z,L_9B78		;9b73
	call evento_siguiente_paso		;9b75   ; evento_siguiente_paso: 0xE8AB + 1
L_9B78:
	jp evento_siguiente_paso		;9b78   ; evento_siguiente_paso: 0xE8AB + 1
evento_20_2:		; el evento 0x20, paso 2
	ld c,004h		;9b7b
	call 04dfdh		;9b7d   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9b80   ; lee el texto en marcha
	and a			;9b83
	ret nz			;9b84
	call evento_siguiente_paso		;9b85   ; evento_siguiente_paso: 0xE8AB + 1
	jp evento_siguiente_paso		;9b88   ; evento_siguiente_paso: 0xE8AB + 1
evento_20_3:		; el evento 0x20, paso 3
	ld c,008h		;9b8b
	call 04dfdh		;9b8d   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9b90   ; lee el texto en marcha
	and a			;9b93
	ret nz			;9b94
	jp evento_siguiente_paso		;9b95   ; evento_siguiente_paso: 0xE8AB + 1
evento_20_4:		; el evento 0x20, paso 4
	ld a,(0eb7ch)		;9b98   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;9b9b
	ld (0eb7ch),a		;9b9d   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	ld a,001h		;9ba0
	ld (0e8a0h),a		;9ba2   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9ba5
	ld (0e8a3h),a		;9ba7   ; guarda la lista de opciones del menu
	ret			;9baa
evento_21:		; el evento 0x21 (0xE8AA), de un solo paso
	ld de,05030h		;9bab
	ld hl,09bc3h		;9bae
	xor a			;9bb1
	ld (0e36dh),a		;9bb2   ; guarda el color de las fichas copiadas
	call 044b8h		;9bb5   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	call 05e5fh		;9bb8   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	ld hl,0eb5bh		;9bbb   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	set 5,(hl)		;9bbe
	jp evento_05		;9bc0   ; evento_05: el evento 0x05 (0xE8AA), de un solo paso

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


evento_22:		; el evento 0x22 (0xE8AA), de un solo paso
	ld a,008h		;9bcd
	ld (0e360h),a		;9bcf   ; guarda el modo dentro de la sala (tabla p00:5A83)
	ld a,003h		;9bd2
	ld (0e3a1h),a		;9bd4   ; guarda la escena de accion (1-9)
	ld a,003h		;9bd7
	ld (0e337h),a		;9bd9   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00005h		;9bdc
	ld (0e3e0h),hl		;9bdf   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld hl,00223h		;9be2
	ld (0eb40h),hl		;9be5   ; guarda la sala
	ld a,0ffh		;9be8
	ld (0e368h),a		;9bea   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	xor a			;9bed
	ld (0e39fh),a		;9bee   ; guarda el paso de la preparacion de la escena de accion
	ld (0e3a0h),a		;9bf1   ; guarda el paso con el que empieza el rival
	ret			;9bf4
evento_23:		; el evento 0x23 (0xE8AA), de un solo paso
	ld de,03020h		;9bf5
	ld hl,09c04h		;9bf8
	call 044b8h		;9bfb   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	call 05e5fh		;9bfe   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_05		;9c01   ; evento_05: el evento 0x05 (0xE8AA), de un solo paso

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


evento_24:		; el evento 0x24 (0xE8AA), de un solo paso
	ld de,06040h		;9c0a
	ld hl,09c19h		;9c0d
	call 044b8h		;9c10   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	call 05e5fh		;9c13   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_05		;9c16   ; evento_05: el evento 0x05 (0xE8AA), de un solo paso

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


evento_25:		; el evento 0x25 (0xE8AA), de un solo paso
	ld a,00ah		;9c1f
	ld (0ea01h),a		;9c21   ; guarda el paso del rival
	ld a,008h		;9c24
	ld (0e360h),a		;9c26   ; guarda el modo dentro de la sala (tabla p00:5A83)
	jp 0585ch		;9c29   ; borra_cursor: borra el cursor de la columna de opciones
evento_26:		; el evento 0x26 (0xE8AA), de un solo paso
	ld a,00dh		;9c2c
	ld (0ea01h),a		;9c2e   ; guarda el paso del rival
	ld a,008h		;9c31
	ld (0e360h),a		;9c33   ; guarda el modo dentro de la sala (tabla p00:5A83)
	call 045b0h		;9c36   ; sonido_86: pide el sonido 0x86
	jp 0585ch		;9c39   ; borra_cursor: borra el cursor de la columna de opciones
evento_27:		; el evento 0x27 (0xE8AA), de un solo paso
	ld a,019h		;9c3c
	ld (0ea01h),a		;9c3e   ; guarda el paso del rival
	ld a,008h		;9c41
	ld (0e360h),a		;9c43   ; guarda el modo dentro de la sala (tabla p00:5A83)
	call 04560h		;9c46   ; sonido_53: pide el sonido 0x53
	jp 0585ch		;9c49   ; borra_cursor: borra el cursor de la columna de opciones
evento_28:		; el evento 0x28 (0xE8AA), de un solo paso
	xor a			;9c4c
	ld (0e36dh),a		;9c4d   ; guarda el color de las fichas copiadas
	ld de,04030h		;9c50
	ld hl,09c5fh		;9c53
	call 044b8h		;9c56   ; copia_bloques: BC (alto, ancho) bloques de 2x2 fichas de HL a la pantalla DE y su dureza
	call 05e5fh		;9c59   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	jp evento_05		;9c5c   ; evento_05: el evento 0x05 (0xE8AA), de un solo paso

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


evento_29:		; el evento 0x29 (0xE8AA): despacha su paso 0xE8AB (tabla p02:9C6B)
	ld a,(0e8abh)		;9c65   ; lee el paso del evento
	call 040abh		;9c68   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_29_0:		; el evento 0x29, paso 0
	xor a			;9c73
	ld (0e38fh),a		;9c74   ; guarda el resultado de la carga (2: fallo)
	ld (0e38eh),a		;9c77   ; guarda el paso del menu de carga
	ld a,(0eb7ch)		;9c7a   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;9c7d
	set 7,a		;9c7f
	ld (0eb7ch),a		;9c81   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	jp evento_siguiente_paso		;9c84   ; evento_siguiente_paso: 0xE8AB + 1
evento_29_1:		; el evento 0x29, paso 1
	call 04392h		;9c87   ; a_da_contrasena: con 12-13-14, p14:BA95 (un paso de la contrasena que se le da al jugador (0xE38E, tabla p14:BAA4)); vuelve con 1-2-3
	ld a,(0e38fh)		;9c8a   ; lee el resultado de la carga (2: fallo)
	and a			;9c8d
	ret z			;9c8e
	jp evento_siguiente_paso		;9c8f   ; evento_siguiente_paso: 0xE8AB + 1
evento_29_2:		; el evento 0x29, paso 2
	ld c,00dh		;9c92
	call 04dfdh		;9c94   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9c97   ; lee el texto en marcha
	and a			;9c9a
	ret nz			;9c9b
	jp evento_siguiente_paso		;9c9c   ; evento_siguiente_paso: 0xE8AB + 1
evento_29_3:		; el evento 0x29, paso 3
	ld a,001h		;9c9f
	ld (0e8a0h),a		;9ca1   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9ca4
	ld (0e8a3h),a		;9ca6   ; guarda la lista de opciones del menu
	ret			;9ca9
evento_2a:		; el evento 0x2A (0xE8AA): despacha su paso 0xE8AB (tabla p02:9CB0)
	ld a,(0e8abh)		;9caa   ; lee el paso del evento
	call 040abh		;9cad   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


evento_2a_0:		; el evento 0x2A, paso 0
	xor a			;9cb8
	ld (0e38fh),a		;9cb9   ; guarda el resultado de la carga (2: fallo)
	ld (0e38eh),a		;9cbc   ; guarda el paso del menu de carga
	jp evento_siguiente_paso		;9cbf   ; evento_siguiente_paso: 0xE8AB + 1
evento_2a_1:		; el evento 0x2A, paso 1
	call 04392h		;9cc2   ; a_da_contrasena: con 12-13-14, p14:BA95 (un paso de la contrasena que se le da al jugador (0xE38E, tabla p14:BAA4)); vuelve con 1-2-3
	ld a,(0e38fh)		;9cc5   ; lee el resultado de la carga (2: fallo)
	and a			;9cc8
	ret z			;9cc9
	jp evento_siguiente_paso		;9cca   ; evento_siguiente_paso: 0xE8AB + 1
evento_2a_2:		; el evento 0x2A, paso 2
	ld c,00dh		;9ccd
	call 04dfdh		;9ccf   ; texto: un paso del texto C: 0xE885 = 0 lo prepara (p00:4E0C), si no lo escribe (p00:4E4E)
	ld a,(0e886h)		;9cd2   ; lee el texto en marcha
	and a			;9cd5
	ret nz			;9cd6
	jp evento_siguiente_paso		;9cd7   ; evento_siguiente_paso: 0xE8AB + 1
evento_2a_3:		; el evento 0x2A, paso 3
	ld a,(0eb7ch)		;9cda   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;9cdd
	ld (0eb7ch),a		;9cdf   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	ld a,001h		;9ce2
	ld (0e8a0h),a		;9ce4   ; guarda el paso del menu (tabla p00:5231)
	ld a,003h		;9ce7
	ld (0e8a3h),a		;9ce9   ; guarda la lista de opciones del menu
	ret			;9cec
ajusta_respuesta:		; busca el tipo del personaje (0xE363) en p03:AABE y ajusta la respuesta C con su rutina (tabla p02:9D1E)
	ld b,000h		;9ced
	ld (0e8e0h),de		;9cef   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	ld ix,0aabeh		;9cf3
	ld hl,(0e365h)		;9cf7   ; lee la ficha del personaje de enfrente
	push hl			;9cfa
	pop iy		;9cfb
	ld de,(0e363h)		;9cfd   ; lee el tipo del personaje de enfrente
L_9D01:
	ld l,(ix+000h)		;9d01   ; el tipo de la tabla
	ld h,(ix+001h)		;9d04
	ld a,l			;9d07   ; 0xFFFF: acaba sin encontrarlo
	and h			;9d08
	cp 0ffh		;9d09
	ret z			;9d0b
	and a			;9d0c
	sbc hl,de		;9d0d   ; es el del personaje de enfrente?
	jr z,L_9D18		;9d0f
	inc b			;9d11   ; cuenta la posicion
	inc ix		;9d12
	inc ix		;9d14
	jr L_9D01		;9d16
L_9D18:
	ld l,b			;9d18
	ld h,000h		;9d19
	call 040b5h		;9d1b   ; despacha_hl: salta a la palabra HL de la tabla pegada detras del `call`

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


respuesta_del_tipo_10:		; ajusta la respuesta C del personaje de tipo 0x10 con las banderas de la historia
	ld hl,0eb58h		;9df0   ; apunta a las banderas de la historia, byte 0x18 (se graban con la partida)
	bit 6,(hl)		;9df3   ; mira la bandera 6 de la historia (0xEB58)
	jr nz,L_9E10		;9df5
	ld a,c			;9df7   ; A = la respuesta
	cp 007h		;9df8   ; compara la respuesta con la 0x07
	jr nz,L_9DFF		;9dfa
	ld c,008h		;9dfc   ; la respuesta pasa a ser la 0x08
	ret			;9dfe   ; vuelve con la respuesta en C
L_9DFF:
	cp 004h		;9dff
	ret nz			;9e01
	ld a,00ch		;9e02
	ld (0e368h),a		;9e04   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;9e07   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;9e0a   ; sonido_13: pide el sonido 0x13
	ld c,004h		;9e0d   ; la respuesta pasa a ser la 0x04
	ret			;9e0f   ; vuelve con la respuesta en C
L_9E10:
	ld c,007h		;9e10   ; la respuesta pasa a ser la 0x07
	ret			;9e12   ; vuelve con la respuesta en C
respuesta_del_tipo_11:		; ajusta la respuesta C del personaje de tipo 0x11 con las banderas de la historia
	ld hl,0eb58h		;9e13   ; apunta a las banderas de la historia, byte 0x18 (se graban con la partida)
	bit 7,(hl)		;9e16   ; mira la bandera 7 de la historia (0xEB58)
	jr nz,L_9E1D		;9e18
	ld c,003h		;9e1a   ; la respuesta pasa a ser la 0x03
	ret			;9e1c   ; vuelve con la respuesta en C
L_9E1D:
	ld a,001h		;9e1d
	ld (0e368h),a		;9e1f   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;9e22   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;9e25   ; sonido_13: pide el sonido 0x13
	ld hl,0eb58h		;9e28   ; apunta a las banderas de la historia, byte 0x18 (se graban con la partida)
	set 6,(hl)		;9e2b   ; pone la bandera 6 de la historia (0xEB58)
	ld c,006h		;9e2d   ; la respuesta pasa a ser la 0x06
	ret			;9e2f   ; vuelve con la respuesta en C
respuesta_del_tipo_01:		; ajusta la respuesta C del personaje de tipo 0x01 con las banderas de la historia
	ld hl,0eb59h		;9e30   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	bit 7,(hl)		;9e33   ; mira la bandera 7 de la historia (0xEB59)
	ret z			;9e35
	ld c,002h		;9e36   ; la respuesta pasa a ser la 0x02
	ret			;9e38   ; vuelve con la respuesta en C
marca_salas_cf_b0_f0:		; en las salas 0xCF y 0xB0 pone el bit 7 de 0xEB59; en la 0xF0, ninguno
	ld c,080h		;9e39   ; C = el bit 7
	ld de,(0eb40h)		;9e3b   ; lee la sala
	ld hl,000cfh		;9e3f   ; las salas 0xCF y 0xB0
	and a			;9e42
	sbc hl,de		;9e43
	jr z,L_9E58		;9e45
	ld hl,000b0h		;9e47
	and a			;9e4a
	sbc hl,de		;9e4b
	jr z,L_9E58		;9e4d
	ld hl,000f0h		;9e4f   ; la 0xF0
	and a			;9e52
	sbc hl,de		;9e53
	ret nz			;9e55
	ld c,000h		;9e56   ; sin bit
L_9E58:
	ld a,(0eb59h)		;9e58   ; lee las banderas de la historia, byte 0x19 (se graban con la partida)
	or c			;9e5b
	ld (0eb59h),a		;9e5c   ; guarda las banderas de la historia, byte 0x19 (se graban con la partida)
	ret			;9e5f
respuesta_del_tipo_14:		; ajusta la respuesta C del personaje de tipo 0x14 con las banderas de la historia
	ld hl,0eb5bh		;9e60   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	ld a,c			;9e63   ; A = la respuesta
	cp 005h		;9e64   ; compara la respuesta con la 0x05
	ret nz			;9e66   ; vuelve si no lo es
	ld a,009h		;9e67
	ld (0e3c0h),a		;9e69   ; guarda el modo del personaje (tabla p01:718E)
	ld a,002h		;9e6c
	ld (0e482h),a		;9e6e
	set 7,(hl)		;9e71   ; pone la bandera 7 de la historia (0xEB5B)
	ret			;9e73   ; vuelve con la respuesta en C
respuesta_del_tipo_16:		; ajusta la respuesta C del personaje de tipo 0x16 con las banderas de la historia
	ld hl,0eb5bh		;9e74   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 7,(hl)		;9e77   ; mira la bandera 7 de la historia (0xEB5B)
	jr nz,L_9E84		;9e79
	ld a,c			;9e7b   ; A = la respuesta
	dec a			;9e7c   ; mira si es la respuesta 0x01
	ret nz			;9e7d   ; vuelve si no lo es
	ld hl,0eb5dh		;9e7e   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	set 7,(hl)		;9e81   ; pone la bandera 7 de la historia (0xEB5D)
	ret			;9e83   ; vuelve con la respuesta en C
L_9E84:
	ld c,005h		;9e84   ; la respuesta pasa a ser la 0x05
	ret			;9e86   ; vuelve con la respuesta en C
respuesta_del_tipo_17:		; ajusta la respuesta C del personaje de tipo 0x17 con las banderas de la historia
	ld hl,0eb5bh		;9e87   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 7,(hl)		;9e8a   ; mira la bandera 7 de la historia (0xEB5B)
	jr nz,L_9E9B		;9e8c
	ld hl,0eb5dh		;9e8e   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	bit 6,(hl)		;9e91   ; mira la bandera 6 de la historia (0xEB5D)
	ld c,004h		;9e93   ; la respuesta pasa a ser la 0x04
	ret nz			;9e95
	set 6,(hl)		;9e96   ; pone la bandera 6 de la historia (0xEB5D)
	ld c,003h		;9e98   ; la respuesta pasa a ser la 0x03
	ret			;9e9a   ; vuelve con la respuesta en C
L_9E9B:
	ld c,006h		;9e9b   ; la respuesta pasa a ser la 0x06
	ret			;9e9d   ; vuelve con la respuesta en C
respuesta_del_tipo_19:		; ajusta la respuesta C del personaje de tipo 0x19 con las banderas de la historia
	ld hl,0eb5bh		;9e9e   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 7,(hl)		;9ea1   ; mira la bandera 7 de la historia (0xEB5B)
	jr nz,L_9EBF		;9ea3
	ld a,c			;9ea5   ; A = la respuesta
	cp 005h		;9ea6   ; compara la respuesta con la 0x05
	ret z			;9ea8   ; vuelve si lo es
	ld hl,0eb5eh		;9ea9   ; apunta a las banderas de la historia, byte 0x1E (se graban con la partida)
	bit 7,(hl)		;9eac   ; mira la bandera 7 de la historia (0xEB5E)
	jr nz,L_9EB5		;9eae
	set 7,(hl)		;9eb0   ; pone la bandera 7 de la historia (0xEB5E)
	ld c,000h		;9eb2   ; la respuesta pasa a ser la 0x00
	ret			;9eb4   ; vuelve con la respuesta en C
L_9EB5:
	bit 6,(hl)		;9eb5
	ld c,002h		;9eb7   ; la respuesta pasa a ser la 0x02
	ret nz			;9eb9
	set 6,(hl)		;9eba
	ld c,001h		;9ebc   ; la respuesta pasa a ser la 0x01
	ret			;9ebe   ; vuelve con la respuesta en C
L_9EBF:
	ld c,00ch		;9ebf   ; la respuesta pasa a ser la 0x0C
	ret			;9ec1   ; vuelve con la respuesta en C
respuesta_del_tipo_1a:		; ajusta la respuesta C del personaje de tipo 0x1A con las banderas de la historia
	ld hl,0eb5bh		;9ec2   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 7,(hl)		;9ec5   ; mira la bandera 7 de la historia (0xEB5B)
	jr nz,L_9EEA		;9ec7
	ld a,c			;9ec9   ; A = la respuesta
	cp 006h		;9eca   ; compara la respuesta con la 0x06
	ret z			;9ecc   ; vuelve si lo es
	ld hl,0eb5eh		;9ecd   ; apunta a las banderas de la historia, byte 0x1E (se graban con la partida)
	bit 5,(hl)		;9ed0   ; mira la bandera 5 de la historia (0xEB5E)
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
	ret			;9ee2   ; vuelve con la respuesta en C
L_9EE3:
	ld a,c			;9ee3   ; A = la respuesta
	cp 00ah		;9ee4   ; compara la respuesta con la 0x0A
	ret nz			;9ee6   ; vuelve si no lo es
	set 5,(hl)		;9ee7
	ret			;9ee9   ; vuelve con la respuesta en C
L_9EEA:
	ld c,00ch		;9eea   ; la respuesta pasa a ser la 0x0C
	ret			;9eec   ; vuelve con la respuesta en C
respuesta_del_tipo_1b:		; ajusta la respuesta C del personaje de tipo 0x1B con las banderas de la historia
	ld hl,0eb5dh		;9eed   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	bit 7,(hl)		;9ef0   ; mira la bandera 7 de la historia (0xEB5D)
	ret z			;9ef2
	ex de,hl			;9ef3
	ld hl,0eb5bh		;9ef4   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 7,(hl)		;9ef7   ; mira la bandera 7 de la historia (0xEB5B)
	ret nz			;9ef9
	ld c,001h		;9efa   ; la respuesta pasa a ser la 0x01
	ex de,hl			;9efc
	set 5,(hl)		;9efd   ; pone la bandera 5 de la historia (0xEB5B)
	ret			;9eff   ; vuelve con la respuesta en C
respuesta_del_tipo_1c:		; ajusta la respuesta C del personaje de tipo 0x1C con las banderas de la historia
	ld hl,0eb5ch		;9f00   ; apunta a las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 7,(hl)		;9f03   ; mira la bandera 7 de la historia (0xEB5C)
	ret nz			;9f05
	set 7,(hl)		;9f06   ; pone la bandera 7 de la historia (0xEB5C)
	ld c,001h		;9f08   ; la respuesta pasa a ser la 0x01
	ret			;9f0a   ; vuelve con la respuesta en C
respuesta_del_tipo_22:		; ajusta la respuesta C del personaje de tipo 0x22 con las banderas de la historia
	ld hl,0eb5ah		;9f0b   ; apunta a las banderas de la historia, byte 0x1A (se graban con la partida)
	ld a,c			;9f0e   ; A = la respuesta
	cp 002h		;9f0f   ; compara la respuesta con la 0x02
	jr nz,L_9F16		;9f11
	set 7,(hl)		;9f13   ; pone la bandera 7 de la historia (0xEB5A)
	ret			;9f15   ; vuelve con la respuesta en C
L_9F16:
	cp 003h		;9f16
	jr nz,L_9F26		;9f18
	bit 3,(hl)		;9f1a
	jr z,L_9F23		;9f1c
	ld c,005h		;9f1e   ; la respuesta pasa a ser la 0x05
	set 6,(hl)		;9f20
	ret			;9f22   ; vuelve con la respuesta en C
L_9F23:
	set 2,(hl)		;9f23
	ret			;9f25   ; vuelve con la respuesta en C
L_9F26:
	cp 007h		;9f26
	ret nz			;9f28
	ld a,007h		;9f29
	ld (0e368h),a		;9f2b   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;9f2e   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;9f31   ; sonido_13: pide el sonido 0x13
	ld c,007h		;9f34   ; la respuesta pasa a ser la 0x07
	ld a,001h		;9f36
	ld (0e9d8h),a		;9f38   ; guarda el objeto 4 (bit 0: se lleva)
	ret			;9f3b   ; vuelve con la respuesta en C
respuesta_del_tipo_15:		; ajusta la respuesta C del personaje de tipo 0x15 con las banderas de la historia
	ld hl,0eb5ah		;9f3c   ; apunta a las banderas de la historia, byte 0x1A (se graban con la partida)
	ld a,c			;9f3f   ; A = la respuesta
	dec a			;9f40   ; mira si es la respuesta 0x01
	ret nz			;9f41   ; vuelve si no lo es
	set 5,(hl)		;9f42   ; pone la bandera 5 de la historia (0xEB5A)
	ret			;9f44   ; vuelve con la respuesta en C
respuesta_del_tipo_2c:		; ajusta la respuesta C del personaje de tipo 0x2C con las banderas de la historia
	ld hl,0e9d2h		;9f45   ; apunta a el objeto 1 (bit 0: se lleva)
	bit 7,(hl)		;9f48   ; mira la bandera 7 de el objeto 1 (0xE9D2)
	jr nz,L_9F53		;9f4a
	ld a,c			;9f4c   ; A = la respuesta
	cp 004h		;9f4d   ; compara la respuesta con la 0x04
	ret nz			;9f4f   ; vuelve si no lo es
	ld c,007h		;9f50   ; la respuesta pasa a ser la 0x07
	ret			;9f52   ; vuelve con la respuesta en C
L_9F53:
	ld a,c			;9f53   ; A = la respuesta
	dec a			;9f54   ; mira si es la respuesta 0x01
	jr nz,L_9F5A		;9f55
	ld c,003h		;9f57   ; la respuesta pasa a ser la 0x03
	ret			;9f59   ; vuelve con la respuesta en C
L_9F5A:
	dec a			;9f5a
	ret nz			;9f5b
	ld c,006h		;9f5c   ; la respuesta pasa a ser la 0x06
	ld a,001h		;9f5e
	ld (0e8a2h),a		;9f60   ; guarda la columna del menu
	ld a,003h		;9f63
	ld (0e8a3h),a		;9f65   ; guarda la lista de opciones del menu
	ret			;9f68   ; vuelve con la respuesta en C
respuesta_del_tipo_27:		; ajusta la respuesta C del personaje de tipo 0x27 con las banderas de la historia
	ld hl,0eb5fh		;9f69   ; apunta a las banderas de la historia, byte 0x1F (se graban con la partida)
	bit 7,(hl)		;9f6c   ; mira la bandera 7 de la historia (0xEB5F)
	jr nz,L_9F7C		;9f6e
	ld a,c			;9f70   ; A = la respuesta
	cp 00bh		;9f71   ; compara la respuesta con la 0x0B
	ret z			;9f73   ; vuelve si lo es
	ld a,r		;9f74
	and 004h		;9f76
	rra			;9f78
	rra			;9f79
	ld c,a			;9f7a
	ret			;9f7b   ; vuelve con la respuesta en C
L_9F7C:
	ld a,c			;9f7c   ; A = la respuesta
	cp 00bh		;9f7d   ; compara la respuesta con la 0x0B
	ret nz			;9f7f   ; vuelve si no lo es
	ld c,00ch		;9f80   ; la respuesta pasa a ser la 0x0C
	ret			;9f82   ; vuelve con la respuesta en C
respuesta_del_tipo_28:		; ajusta la respuesta C del personaje de tipo 0x28 con las banderas de la historia
	ld hl,0eb5fh		;9f83   ; apunta a las banderas de la historia, byte 0x1F (se graban con la partida)
	bit 6,(hl)		;9f86   ; mira la bandera 6 de la historia (0xEB5F)
	jr nz,L_9FAA		;9f88
	ld a,c			;9f8a   ; A = la respuesta
	cp 00bh		;9f8b   ; compara la respuesta con la 0x0B
	ret z			;9f8d   ; vuelve si lo es
	cp 007h		;9f8e   ; compara la respuesta con la 0x07
	jr nz,L_9F95		;9f90
	ld c,00dh		;9f92   ; la respuesta pasa a ser la 0x0D
	ret			;9f94   ; vuelve con la respuesta en C
L_9F95:
	bit 5,(hl)		;9f95   ; la bandera 5 de 0xEB5F
	jr z,L_9FA3		;9f97
	ld a,r		;9f99   ; al azar
	and 002h		;9f9b
	jr nz,L_9FA1		;9f9d
	ld a,004h		;9f9f   ; la respuesta 2 o 4
L_9FA1:
	ld c,a			;9fa1
	ret			;9fa2   ; vuelve con la respuesta en C
L_9FA3:
	ld a,c			;9fa3   ; A = la respuesta
	cp 003h		;9fa4   ; compara la respuesta con la 0x03
	ret nz			;9fa6   ; vuelve si no lo es
	set 5,(hl)		;9fa7
	ret			;9fa9   ; vuelve con la respuesta en C
L_9FAA:
	ld a,c			;9faa   ; A = la respuesta
	cp 00bh		;9fab   ; compara la respuesta con la 0x0B
	jr nz,L_9FB2		;9fad
	ld c,00ch		;9faf   ; la respuesta pasa a ser la 0x0C
	ret			;9fb1   ; vuelve con la respuesta en C
L_9FB2:
	cp 005h		;9fb2
	jr nc,L_9FB9		;9fb4
	ld c,006h		;9fb6   ; la respuesta pasa a ser la 0x06
	ret			;9fb8   ; vuelve con la respuesta en C
L_9FB9:
	cp 009h		;9fb9
	ret nz			;9fbb
	bit 4,(hl)		;9fbc
	ret nz			;9fbe
	ld c,008h		;9fbf   ; la respuesta pasa a ser la 0x08
	set 4,(hl)		;9fc1
	ld hl,0eb6dh		;9fc3   ; apunta a las banderas de la historia, byte 0x2D (se graban con la partida)
	set 6,(hl)		;9fc6   ; pone la bandera 6 de la historia (0xEB6D)
	xor a			;9fc8
	ld (0eb7bh),a		;9fc9   ; guarda las banderas de la historia, byte 0x3B (se graban con la partida)
	ret			;9fcc   ; vuelve con la respuesta en C
respuesta_del_tipo_09:		; ajusta la respuesta C del personaje de tipo 0x09 con las banderas de la historia
	ld hl,0e9d0h		;9fcd   ; apunta a los objetos (dos bytes cada uno; bit 0: se lleva)
	bit 0,(hl)		;9fd0   ; mira la bandera 0 de el objeto 0 (0xE9D0)
	jr nz,L_9FD7		;9fd2
	set 0,(hl)		;9fd4   ; pone la bandera 0 de el objeto 0 (0xE9D0)
	ret			;9fd6   ; vuelve con la respuesta en C
L_9FD7:
	ld c,001h		;9fd7   ; la respuesta pasa a ser la 0x01
	ret			;9fd9   ; vuelve con la respuesta en C
respuesta_del_tipo_25:		; ajusta la respuesta C del personaje de tipo 0x25 con las banderas de la historia
	ld hl,0eb60h		;9fda   ; apunta a las banderas de la historia, byte 0x20 (se graban con la partida)
	bit 7,(hl)		;9fdd   ; mira la bandera 7 de la historia (0xEB60)
	jr nz,L_9FEF		;9fdf
	bit 5,(hl)		;9fe1   ; mira la bandera 5 de la historia (0xEB60)
	jr z,L_9FEC		;9fe3
	ld a,c			;9fe5   ; A = la respuesta
	cp 005h		;9fe6   ; compara la respuesta con la 0x05
	ret z			;9fe8   ; vuelve si lo es
	ld c,001h		;9fe9   ; la respuesta pasa a ser la 0x01
	ret			;9feb   ; vuelve con la respuesta en C
L_9FEC:
	set 5,(hl)		;9fec
	ret			;9fee   ; vuelve con la respuesta en C
L_9FEF:
	ld a,c			;9fef   ; A = la respuesta
	cp 005h		;9ff0   ; compara la respuesta con la 0x05
	jr z,L_9FF7		;9ff2
	ld c,003h		;9ff4   ; la respuesta pasa a ser la 0x03
	ret			;9ff6   ; vuelve con la respuesta en C
L_9FF7:
	ld c,006h		;9ff7   ; la respuesta pasa a ser la 0x06
	ret			;9ff9   ; vuelve con la respuesta en C
respuesta_del_tipo_26:		; ajusta la respuesta C del personaje de tipo 0x26 con las banderas de la historia
	ld hl,0eb60h		;9ffa   ; apunta a las banderas de la historia, byte 0x20 (se graban con la partida)
	bit 6,(hl)		;9ffd   ; mira la bandera 6 de la historia (0xEB60)
	ret z			;9fff
