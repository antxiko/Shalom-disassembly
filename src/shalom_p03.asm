; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 03 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ======================================================================
; CODIGO 0xa000..0xaabe  (2750 bytes)
; ======================================================================


L_A000:
	ld a,c			;a000
	cp 005h		;a001
	jr z,L_A008		;a003
	ld c,004h		;a005
	ret			;a007
L_A008:
	ld c,006h		;a008
	ret			;a00a
respuesta_del_tipo_29:		; ajusta la respuesta C del personaje de tipo 0x29 con las banderas de la historia
	ld hl,0eb62h		;a00b   ; apunta a las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 7,(hl)		;a00e
	ret z			;a010
	ld a,c			;a011
	cp 006h		;a012
	jr nz,L_A019		;a014
	ld c,007h		;a016
	ret			;a018
L_A019:
	ld c,003h		;a019
	ret			;a01b
respuesta_del_tipo_2a:		; ajusta la respuesta C del personaje de tipo 0x2A con las banderas de la historia
	ld hl,0eb62h		;a01c   ; apunta a las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 6,(hl)		;a01f
	jr nz,L_A037		;a021
	ld a,c			;a023
	cp 006h		;a024
	ret z			;a026
	dec a			;a027
	jr nz,L_A034		;a028
	bit 5,(hl)		;a02a
	jr z,L_A031		;a02c
	ld c,002h		;a02e
	ret			;a030
L_A031:
	set 5,(hl)		;a031
	ret			;a033
L_A034:
	ld c,008h		;a034
	ret			;a036
L_A037:
	ld a,c			;a037
	cp 006h		;a038
	jr nz,L_A03F		;a03a
	ld c,007h		;a03c
	ret			;a03e
L_A03F:
	cp 001h		;a03f
	jr nz,L_A046		;a041
	ld c,004h		;a043
	ret			;a045
L_A046:
	bit 4,(hl)		;a046
	jr nz,L_A05A		;a048
	set 4,(hl)		;a04a
	ld a,002h		;a04c
	ld (0e368h),a		;a04e   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;a051   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;a054   ; sonido_13: pide el sonido 0x13
	ld c,005h		;a057
	ret			;a059
L_A05A:
	xor a			;a05a
	ld (0e368h),a		;a05b   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	ld c,009h		;a05e
	ret			;a060
respuesta_del_tipo_2d:		; ajusta la respuesta C del personaje de tipo 0x2D con las banderas de la historia
	ld hl,0eb63h		;a061   ; apunta a las banderas de la historia, byte 0x23 (se graban con la partida)
	ld a,c			;a064
	and a			;a065
	jr nz,L_A087		;a066
	bit 2,(hl)		;a068
	jr z,L_A06F		;a06a
	ld c,001h		;a06c
	ret			;a06e
L_A06F:
	bit 7,(hl)		;a06f
	jr nz,L_A076		;a071
	set 7,(hl)		;a073
	ret			;a075
L_A076:
	bit 1,(hl)		;a076
	ld c,001h		;a078
	jr nz,L_A081		;a07a
	set 6,(hl)		;a07c
	set 1,(hl)		;a07e
	ret			;a080
L_A081:
	inc c			;a081
	set 5,(hl)		;a082
	res 1,(hl)		;a084
	ret			;a086
L_A087:
	cp 003h		;a087
	jr nz,L_A08E		;a089
	set 4,(hl)		;a08b
	ret			;a08d
L_A08E:
	cp 004h		;a08e
	jr nz,L_A095		;a090
	set 3,(hl)		;a092
	ret			;a094
L_A095:
	set 2,(hl)		;a095
	ld hl,0e9d2h		;a097   ; apunta a el objeto 1 (bit 0: se lleva)
	ld (hl),001h		;a09a
	ret			;a09c
respuesta_del_tipo_31:		; ajusta la respuesta C del personaje de tipo 0x31 con las banderas de la historia
	ld hl,0e9d4h		;a09d   ; apunta a el objeto 2 (bit 0: se lleva)
	ld a,c			;a0a0
	cp 003h		;a0a1
	ret nz			;a0a3
	ld (hl),001h		;a0a4
	ret			;a0a6
respuesta_del_tipo_33:		; ajusta la respuesta C del personaje de tipo 0x33 con las banderas de la historia
	ld hl,0eb65h		;a0a7   ; apunta a las banderas de la historia, byte 0x25 (se graban con la partida)
	ld a,c			;a0aa
	and a			;a0ab
	jr nz,L_A0B8		;a0ac
	bit 7,(hl)		;a0ae
	jr nz,L_A0B5		;a0b0
	set 7,(hl)		;a0b2
	ret			;a0b4
L_A0B5:
	ld c,001h		;a0b5
	ret			;a0b7
L_A0B8:
	cp 005h		;a0b8
	jr nz,L_A0C6		;a0ba
	bit 4,(hl)		;a0bc
	jr nz,L_A0C3		;a0be
	ld c,008h		;a0c0
	ret			;a0c2
L_A0C3:
	set 3,(hl)		;a0c3
	ret			;a0c5
L_A0C6:
	cp 006h		;a0c6
	ret nz			;a0c8
	set 2,(hl)		;a0c9
	ret			;a0cb
respuesta_del_tipo_34:		; ajusta la respuesta C del personaje de tipo 0x34 con las banderas de la historia
	ld hl,0eb65h		;a0cc   ; apunta a las banderas de la historia, byte 0x25 (se graban con la partida)
	ld a,c			;a0cf
	cp 003h		;a0d0
	jr nz,L_A0DE		;a0d2
	bit 6,(hl)		;a0d4
	jr nz,L_A0DB		;a0d6
	ld c,007h		;a0d8
	ret			;a0da
L_A0DB:
	set 5,(hl)		;a0db
	ret			;a0dd
L_A0DE:
	cp 004h		;a0de
	jr nz,L_A0F1		;a0e0
	bit 5,(hl)		;a0e2
	jr nz,L_A0E9		;a0e4
	ld c,008h		;a0e6
	ret			;a0e8
L_A0E9:
	set 4,(hl)		;a0e9
	ld hl,0e9e2h		;a0eb   ; apunta a el objeto 9 (bit 0: se lleva)
	set 0,(hl)		;a0ee
	ret			;a0f0
L_A0F1:
	cp 005h		;a0f1
	jr nz,L_A0FF		;a0f3
	bit 4,(hl)		;a0f5
	jr nz,L_A0FC		;a0f7
	ld c,008h		;a0f9
	ret			;a0fb
L_A0FC:
	set 3,(hl)		;a0fc
	ret			;a0fe
L_A0FF:
	cp 002h		;a0ff
	ret nz			;a101
	set 6,(hl)		;a102
	ret			;a104
respuesta_del_tipo_3a:		; ajusta la respuesta C del personaje de tipo 0x3A con las banderas de la historia
	ld hl,0eb7dh		;a105   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 3,(hl)		;a108
	jr nz,L_A117		;a10a
	ld hl,0eb66h		;a10c   ; apunta a las banderas de la historia, byte 0x26 (se graban con la partida)
	bit 7,(hl)		;a10f
	ret z			;a111
	set 6,(hl)		;a112
	ld c,002h		;a114
	ret			;a116
L_A117:
	ld c,003h		;a117
	ret			;a119
respuesta_del_tipo_35:		; ajusta la respuesta C del personaje de tipo 0x35 con las banderas de la historia
	ld hl,0eb67h		;a11a   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	ld a,c			;a11d
	and a			;a11e
	jr nz,L_A12B		;a11f
	bit 6,(hl)		;a121
	jr nz,L_A128		;a123
	ld c,00ch		;a125
	ret			;a127
L_A128:
	set 7,(hl)		;a128
	ret			;a12a
L_A12B:
	dec a			;a12b
	jr nz,L_A131		;a12c
	set 6,(hl)		;a12e
	ret			;a130
L_A131:
	ld a,c			;a131
	cp 005h		;a132
	jr nz,L_A13C		;a134
	bit 7,(hl)		;a136
	ret nz			;a138
	ld c,00dh		;a139
	ret			;a13b
L_A13C:
	cp 004h		;a13c
	ret nz			;a13e
	set 2,(hl)		;a13f
	ret			;a141
respuesta_del_tipo_36:		; ajusta la respuesta C del personaje de tipo 0x36 con las banderas de la historia
	ld hl,0eb67h		;a142   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	ld a,c			;a145
	cp 008h		;a146
	ret nz			;a148
	bit 5,(hl)		;a149
	jr nz,L_A150		;a14b
	ld c,00ch		;a14d
	ret			;a14f
L_A150:
	set 4,(hl)		;a150
	ret			;a152
respuesta_del_tipo_37:		; ajusta la respuesta C del personaje de tipo 0x37 con las banderas de la historia
	ld hl,0eb68h		;a153   ; apunta a las banderas de la historia, byte 0x28 (se graban con la partida)
	bit 7,(hl)		;a156
	jr nz,L_A172		;a158
	ld a,c			;a15a
	cp 003h		;a15b
	jr nz,L_A162		;a15d
	ld c,00fh		;a15f
	ret			;a161
L_A162:
	cp 004h		;a162
	jr nz,L_A169		;a164
	ld c,010h		;a166
	ret			;a168
L_A169:
	cp 002h		;a169
	ret nz			;a16b
	ld hl,0eb67h		;a16c   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	set 3,(hl)		;a16f
	ret			;a171
L_A172:
	ld a,c			;a172
	cp 003h		;a173
	jr nz,L_A17A		;a175
	set 6,(hl)		;a177
	ret			;a179
L_A17A:
	cp 004h		;a17a
	jr nz,L_A181		;a17c
	set 5,(hl)		;a17e
	ret			;a180
L_A181:
	jr nc,L_A19A		;a181
	bit 2,(hl)		;a183
	jr z,L_A18C		;a185
	ld c,008h		;a187
	set 1,(hl)		;a189
	ret			;a18b
L_A18C:
	bit 3,(hl)		;a18c
	jr z,L_A195		;a18e
	ld c,007h		;a190
	set 2,(hl)		;a192
	ret			;a194
L_A195:
	ld c,006h		;a195
	set 4,(hl)		;a197
	ret			;a199
L_A19A:
	cp 005h		;a19a
	jr nz,L_A1A1		;a19c
	set 3,(hl)		;a19e
	ret			;a1a0
L_A1A1:
	bit 1,(hl)		;a1a1
	ret z			;a1a3
	ld c,009h		;a1a4
	set 0,(hl)		;a1a6
	ret			;a1a8
respuesta_del_tipo_44:		; ajusta la respuesta C del personaje de tipo 0x44 con las banderas de la historia
	ld hl,0eb6ah		;a1a9   ; apunta a las banderas de la historia, byte 0x2A (se graban con la partida)
	ld a,(hl)			;a1ac
	and 0f0h		;a1ad
	cp 0f0h		;a1af
	jr nz,L_A1B8		;a1b1
	ld c,003h		;a1b3
	set 3,(hl)		;a1b5
	ret			;a1b7
L_A1B8:
	bit 7,(hl)		;a1b8
	jr z,L_A1C1		;a1ba
	ld c,002h		;a1bc
	set 6,(hl)		;a1be
	ret			;a1c0
L_A1C1:
	set 7,(hl)		;a1c1
	ret			;a1c3
respuesta_del_tipo_48:		; ajusta la respuesta C del personaje de tipo 0x48 con las banderas de la historia
	ld hl,0eb69h		;a1c4   ; apunta a las banderas de la historia, byte 0x29 (se graban con la partida)
	bit 7,(hl)		;a1c7
	ret z			;a1c9
	ld c,002h		;a1ca
	ret			;a1cc
respuesta_del_tipo_4a:		; ajusta la respuesta C del personaje de tipo 0x4A con las banderas de la historia
	ld hl,0eb6bh		;a1cd   ; apunta a las banderas de la historia, byte 0x2B (se graban con la partida)
	bit 7,(hl)		;a1d0
	jr nz,L_A1D7		;a1d2
	set 7,(hl)		;a1d4
	ret			;a1d6
L_A1D7:
	res 7,(hl)		;a1d7
	ld c,001h		;a1d9
	set 6,(hl)		;a1db
	ret			;a1dd
respuesta_del_tipo_47:		; ajusta la respuesta C del personaje de tipo 0x47 con las banderas de la historia
	ld hl,0eb69h		;a1de   ; apunta a las banderas de la historia, byte 0x29 (se graban con la partida)
	bit 7,(hl)		;a1e1
	ret z			;a1e3
	ld a,c			;a1e4
	and a			;a1e5
	ret nz			;a1e6
	ld c,001h		;a1e7
	ret			;a1e9
respuesta_del_tipo_4b:		; ajusta la respuesta C del personaje de tipo 0x4B con las banderas de la historia
	ld hl,0eb69h		;a1ea   ; apunta a las banderas de la historia, byte 0x29 (se graban con la partida)
	bit 7,(hl)		;a1ed
	ret z			;a1ef
	ld c,001h		;a1f0
	ret			;a1f2
respuesta_del_tipo_4d:		; ajusta la respuesta C del personaje de tipo 0x4D con las banderas de la historia
	ld hl,0eb6ch		;a1f3   ; apunta a las banderas de la historia, byte 0x2C (se graban con la partida)
	bit 7,(hl)		;a1f6
	jr nz,L_A20E		;a1f8
	ld a,c			;a1fa
	and a			;a1fb
	jr nz,L_A201		;a1fc
	set 6,(hl)		;a1fe
	ret			;a200
L_A201:
	cp 001h		;a201
	jr z,L_A20B		;a203
	cp 003h		;a205
	ret nz			;a207
	ld c,00eh		;a208
	ret			;a20a
L_A20B:
	ld c,00dh		;a20b
	ret			;a20d
L_A20E:
	ld a,(0eb6dh)		;a20e   ; lee las banderas de la historia, byte 0x2D (se graban con la partida)
	bit 7,a		;a211
	jr nz,L_A240		;a213
	ld a,c			;a215
	cp 001h		;a216
	jr nz,L_A21D		;a218
	set 5,(hl)		;a21a
	ret			;a21c
L_A21D:
	cp 003h		;a21d
	jr nz,L_A224		;a21f
	set 3,(hl)		;a221
	ret			;a223
L_A224:
	cp 004h		;a224
	jr nz,L_A22B		;a226
	set 2,(hl)		;a228
	ret			;a22a
L_A22B:
	cp 005h		;a22b
	jr nz,L_A232		;a22d
	set 1,(hl)		;a22f
	ret			;a231
L_A232:
	cp 006h		;a232
	jr nz,L_A239		;a234
	set 0,(hl)		;a236
	ret			;a238
L_A239:
	and a			;a239
	ret nz			;a23a
	ld c,002h		;a23b
	set 4,(hl)		;a23d
	ret			;a23f
L_A240:
	ld a,c			;a240
	and a			;a241
	jr z,L_A251		;a242
	cp 001h		;a244
	jr nz,L_A24B		;a246
	ld c,00dh		;a248
	ret			;a24a
L_A24B:
	cp 003h		;a24b
	ret nz			;a24d
	ld c,00eh		;a24e
	ret			;a250
L_A251:
	ld a,(0eb6dh)		;a251   ; lee las banderas de la historia, byte 0x2D (se graban con la partida)
	bit 6,a		;a254
	jr nz,L_A25B		;a256
	ld c,007h		;a258
	ret			;a25a
L_A25B:
	ld a,r		;a25b
	bit 2,a		;a25d
	ld c,007h		;a25f
	ret z			;a261
	ld c,008h		;a262
	ret			;a264
respuesta_del_tipo_50:		; ajusta la respuesta C del personaje de tipo 0x50 con las banderas de la historia
	ld hl,0eb6eh		;a265   ; apunta a las banderas de la historia, byte 0x2E (se graban con la partida)
	ld a,c			;a268
	and a			;a269
	jr nz,L_A28E		;a26a
	ld a,(0eb6dh)		;a26c   ; lee las banderas de la historia, byte 0x2D (se graban con la partida)
	bit 5,a		;a26f
	jr z,L_A27B		;a271
	ld c,00dh		;a273
	set 4,a		;a275
	ld (0eb6dh),a		;a277   ; guarda las banderas de la historia, byte 0x2D (se graban con la partida)
	ret			;a27a
L_A27B:
	bit 0,(hl)		;a27b
	jr z,L_A282		;a27d
	ld c,009h		;a27f
	ret			;a281
L_A282:
	bit 1,(hl)		;a282
	jr z,L_A28B		;a284
	ld c,008h		;a286
	set 0,(hl)		;a288
	ret			;a28a
L_A28B:
	set 7,(hl)		;a28b
	ret			;a28d
L_A28E:
	cp 001h		;a28e
	jr nz,L_A295		;a290
	set 6,(hl)		;a292
	ret			;a294
L_A295:
	cp 002h		;a295
	jr nz,L_A29C		;a297
	set 5,(hl)		;a299
	ret			;a29b
L_A29C:
	cp 003h		;a29c
	jr nz,L_A2A3		;a29e
	set 4,(hl)		;a2a0
	ret			;a2a2
L_A2A3:
	cp 004h		;a2a3
	jr nz,L_A2B1		;a2a5
	bit 3,(hl)		;a2a7
	jr z,L_A2AE		;a2a9
	ld c,005h		;a2ab
	ret			;a2ad
L_A2AE:
	set 3,(hl)		;a2ae
	ret			;a2b0
L_A2B1:
	cp 006h		;a2b1
	ret nz			;a2b3
	bit 2,(hl)		;a2b4
	jr z,L_A2C9		;a2b6
	ld a,(0eb5ah)		;a2b8   ; lee las banderas de la historia, byte 0x1A (se graban con la partida)
	bit 2,(hl)		;a2bb
	jr z,L_A2C9		;a2bd
	ld c,007h		;a2bf
	set 1,(hl)		;a2c1
	ld hl,0eb5ah		;a2c3   ; apunta a las banderas de la historia, byte 0x1A (se graban con la partida)
	set 3,(hl)		;a2c6
	ret			;a2c8
L_A2C9:
	set 2,(hl)		;a2c9
	ret			;a2cb
respuesta_del_tipo_40:		; ajusta la respuesta C del personaje de tipo 0x40 con las banderas de la historia
	ld a,c			;a2cc
	inc a			;a2cd
	ret nz			;a2ce
	ld hl,0eb6ah		;a2cf   ; apunta a las banderas de la historia, byte 0x2A (se graban con la partida)
	set 2,(hl)		;a2d2
	ret			;a2d4
respuesta_del_tipo_4e:		; ajusta la respuesta C del personaje de tipo 0x4E con las banderas de la historia
	ld hl,0eb59h		;a2d5   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	bit 6,(hl)		;a2d8
	jr nz,L_A2F6		;a2da
	ld hl,0eb6fh		;a2dc   ; apunta a las banderas de la historia, byte 0x2F (se graban con la partida)
	ld a,c			;a2df
	cp 001h		;a2e0
	ret nz			;a2e2
	bit 6,(hl)		;a2e3
	jr z,L_A2EE		;a2e5
	bit 5,(hl)		;a2e7
	jr z,L_A2F1		;a2e9
	ld c,003h		;a2eb
	ret			;a2ed
L_A2EE:
	set 6,(hl)		;a2ee
	ret			;a2f0
L_A2F1:
	set 5,(hl)		;a2f1
	ld c,002h		;a2f3
	ret			;a2f5
L_A2F6:
	ld hl,0eb70h		;a2f6   ; apunta a las banderas de la historia, byte 0x30 (se graban con la partida)
	bit 7,(hl)		;a2f9
	jr nz,L_A334		;a2fb
	ld hl,0eb6fh		;a2fd   ; apunta a las banderas de la historia, byte 0x2F (se graban con la partida)
	ld a,c			;a300
	cp 001h		;a301
	jr nz,L_A311		;a303
	bit 3,(hl)		;a305
	jr nz,L_A30E		;a307
	ld c,009h		;a309
	set 3,(hl)		;a30b
	ret			;a30d
L_A30E:
	ld c,00ah		;a30e
	ret			;a310
L_A311:
	cp 005h		;a311
	jr nz,L_A320		;a313
	bit 0,(hl)		;a315
	ret nz			;a317
	bit 2,(hl)		;a318
	ret z			;a31a
	ld c,008h		;a31b
	set 0,(hl)		;a31d
	ret			;a31f
L_A320:
	cp 006h		;a320
	jr nz,L_A32E		;a322
	bit 3,(hl)		;a324
	jr nz,L_A32B		;a326
	ld c,00eh		;a328
	ret			;a32a
L_A32B:
	set 2,(hl)		;a32b
	ret			;a32d
L_A32E:
	cp 007h		;a32e
	ret nz			;a330
	set 1,(hl)		;a331
	ret			;a333
L_A334:
	ld a,c			;a334
	cp 001h		;a335
	jr nz,L_A345		;a337
	bit 5,(hl)		;a339
	jr nz,L_A342		;a33b
	ld c,00bh		;a33d
	set 6,(hl)		;a33f
	ret			;a341
L_A342:
	ld c,00dh		;a342
	ret			;a344
L_A345:
	cp 00ch		;a345
	jr nz,L_A350		;a347
	set 5,(hl)		;a349
	xor a			;a34b
	ld (0e9d6h),a		;a34c   ; guarda el objeto 3 (bit 0: se lleva)
	ret			;a34f
L_A350:
	cp 006h		;a350
	ret nz			;a352
	ld c,00eh		;a353
	ret			;a355
respuesta_del_tipo_06:		; ajusta la respuesta C del personaje de tipo 0x06 con las banderas de la historia
	ld hl,0eb59h		;a356   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	bit 6,(hl)		;a359
	jr z,L_A37A		;a35b
	ld a,c			;a35d
	cp 00bh		;a35e
	jr nz,L_A36A		;a360
	ld hl,0eb62h		;a362   ; apunta a las banderas de la historia, byte 0x22 (se graban con la partida)
	set 0,(hl)		;a365
	ld c,00fh		;a367
	ret			;a369
L_A36A:
	cp 00ch		;a36a
	jr nz,L_A377		;a36c
	ld hl,0eb62h		;a36e   ; apunta a las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 0,(hl)		;a371
	ret nz			;a373
	ld c,010h		;a374
	ret			;a376
L_A377:
	ld c,00eh		;a377
	ret			;a379
L_A37A:
	ld a,c			;a37a
	cp 00dh		;a37b
	ret nz			;a37d
	set 6,(hl)		;a37e
	ld a,008h		;a380
	ld (0e368h),a		;a382   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;a385   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;a388   ; sonido_13: pide el sonido 0x13
	ld c,00dh		;a38b
	ld a,001h		;a38d
	ld (0e9dah),a		;a38f   ; guarda el objeto 5 (bit 0: se lleva)
	ret			;a392
respuesta_del_tipo_52:		; ajusta la respuesta C del personaje de tipo 0x52 con las banderas de la historia
	ld hl,0eb71h		;a393   ; apunta a las banderas de la historia, byte 0x31 (se graban con la partida)
	ld a,(0eb59h)		;a396   ; lee las banderas de la historia, byte 0x19 (se graban con la partida)
	and 040h		;a399
	jr nz,L_A3A4		;a39b
	ld a,c			;a39d
	cp 006h		;a39e
	ret nz			;a3a0
	set 7,(hl)		;a3a1
	ret			;a3a3
L_A3A4:
	ld a,c			;a3a4
	cp 002h		;a3a5
	jr c,L_A3AC		;a3a7
	cp 006h		;a3a9
	ret c			;a3ab
L_A3AC:
	cp 001h		;a3ac
	jr z,L_A3B6		;a3ae
	cp 006h		;a3b0
	jr nz,L_A3BC		;a3b2
	set 7,(hl)		;a3b4
L_A3B6:
	bit 6,(hl)		;a3b6
	ret z			;a3b8
	ld c,00ch		;a3b9
	ret			;a3bb
L_A3BC:
	cp 00ah		;a3bc
	ret nz			;a3be
	set 6,(hl)		;a3bf
	xor a			;a3c1
	ld (0e9dah),a		;a3c2   ; guarda el objeto 5 (bit 0: se lleva)
	ld hl,0eb70h		;a3c5   ; apunta a las banderas de la historia, byte 0x30 (se graban con la partida)
	set 7,(hl)		;a3c8
	ret			;a3ca
respuesta_del_tipo_54:		; ajusta la respuesta C del personaje de tipo 0x54 con las banderas de la historia
	ld hl,0eb72h		;a3cb   ; apunta a las banderas de la historia, byte 0x32 (se graban con la partida)
	ld a,(hl)			;a3ce
	and 07fh		;a3cf
	cp 07fh		;a3d1
	ret nz			;a3d3
	ld a,(0eb73h)		;a3d4   ; lee las banderas de la historia, byte 0x33 (se graban con la partida)
	and 0e0h		;a3d7
	cp 0e0h		;a3d9
	ret nz			;a3db
	bit 7,(hl)		;a3dc
	jr nz,L_A3E5		;a3de
	set 7,(hl)		;a3e0
	ld c,002h		;a3e2
	ret			;a3e4
L_A3E5:
	ld c,003h		;a3e5
	ret			;a3e7
respuesta_del_tipo_55:		; ajusta la respuesta C del personaje de tipo 0x55 con las banderas de la historia
	ld hl,0eb72h		;a3e8   ; apunta a las banderas de la historia, byte 0x32 (se graban con la partida)
	ld a,(hl)			;a3eb
	and 07fh		;a3ec
	cp 07fh		;a3ee
	ret nz			;a3f0
	ld a,(0eb73h)		;a3f1   ; lee las banderas de la historia, byte 0x33 (se graban con la partida)
	and 0e0h		;a3f4
	cp 0e0h		;a3f6
	ret nz			;a3f8
	ld c,001h		;a3f9
	ret			;a3fb
respuesta_del_tipo_56:		; ajusta la respuesta C del personaje de tipo 0x56 con las banderas de la historia
	ld hl,0eb72h		;a3fc   ; apunta a las banderas de la historia, byte 0x32 (se graban con la partida)
	ld a,c			;a3ff
	cp 002h		;a400
	jr nz,L_A407		;a402
	set 6,(hl)		;a404
	ret			;a406
L_A407:
	cp 003h		;a407
	jr nz,L_A415		;a409
	bit 6,(hl)		;a40b
	jr nz,L_A412		;a40d
	ld c,00dh		;a40f
	ret			;a411
L_A412:
	set 5,(hl)		;a412
	ret			;a414
L_A415:
	cp 004h		;a415
	ret nz			;a417
	set 4,(hl)		;a418
	ret			;a41a
respuesta_del_tipo_57:		; ajusta la respuesta C del personaje de tipo 0x57 con las banderas de la historia
	ld hl,0eb72h		;a41b   ; apunta a las banderas de la historia, byte 0x32 (se graban con la partida)
	ld a,c			;a41e
	cp 005h		;a41f
	jr nz,L_A426		;a421
	set 3,(hl)		;a423
	ret			;a425
L_A426:
	cp 006h		;a426
	jr nz,L_A434		;a428
	bit 3,(hl)		;a42a
	jr nz,L_A431		;a42c
	ld c,00dh		;a42e
	ret			;a430
L_A431:
	set 2,(hl)		;a431
	ret			;a433
L_A434:
	cp 007h		;a434
	jr nz,L_A43B		;a436
	set 1,(hl)		;a438
	ret			;a43a
L_A43B:
	cp 008h		;a43b
	ret nz			;a43d
	set 0,(hl)		;a43e
	ret			;a440
respuesta_del_tipo_58:		; ajusta la respuesta C del personaje de tipo 0x58 con las banderas de la historia
	ld hl,0eb73h		;a441   ; apunta a las banderas de la historia, byte 0x33 (se graban con la partida)
	ld a,c			;a444
	cp 009h		;a445
	jr nz,L_A44C		;a447
	set 7,(hl)		;a449
	ret			;a44b
L_A44C:
	cp 00ah		;a44c
	jr nz,L_A45A		;a44e
	bit 7,(hl)		;a450
	jr nz,L_A457		;a452
	ld c,00dh		;a454
	ret			;a456
L_A457:
	set 6,(hl)		;a457
	ret			;a459
L_A45A:
	cp 00bh		;a45a
	ret nz			;a45c
	set 5,(hl)		;a45d
	ret			;a45f
respuesta_del_tipo_60:		; ajusta la respuesta C del personaje de tipo 0x60 con las banderas de la historia
	ld hl,0eb74h		;a460   ; apunta a las banderas de la historia, byte 0x34 (se graban con la partida)
	ld a,c			;a463
	cp 002h		;a464
	jr nz,L_A482		;a466
	bit 7,(hl)		;a468
	jr nz,L_A46F		;a46a
	set 7,(hl)		;a46c
	ret			;a46e
L_A46F:
	bit 5,(hl)		;a46f
	jr nz,L_A478		;a471
	ld c,003h		;a473
	set 6,(hl)		;a475
	ret			;a477
L_A478:
	bit 4,(hl)		;a478
	jr nz,L_A47F		;a47a
	ld c,008h		;a47c
	ret			;a47e
L_A47F:
	ld c,00ah		;a47f
	ret			;a481
L_A482:
	cp 007h		;a482
	ret nz			;a484
	set 5,(hl)		;a485
	ret			;a487
respuesta_del_tipo_61:		; ajusta la respuesta C del personaje de tipo 0x61 con las banderas de la historia
	ld hl,0eb75h		;a488   ; apunta a las banderas de la historia, byte 0x35 (se graban con la partida)
	ld a,c			;a48b
	and a			;a48c
	jr nz,L_A4A9		;a48d
	bit 4,(hl)		;a48f
	jr nz,L_A4A3		;a491
	bit 6,(hl)		;a493
	jr nz,L_A4A6		;a495
	bit 7,(hl)		;a497
	jr nz,L_A49E		;a499
	set 7,(hl)		;a49b
	ret			;a49d
L_A49E:
	set 3,(hl)		;a49e
	ld c,001h		;a4a0
	ret			;a4a2
L_A4A3:
	ld c,004h		;a4a3
	ret			;a4a5
L_A4A6:
	ld c,003h		;a4a6
	ret			;a4a8
L_A4A9:
	bit 6,(hl)		;a4a9
	jr nz,L_A4B7		;a4ab
	set 6,(hl)		;a4ad
	ld c,002h		;a4af
	ld a,001h		;a4b1
	ld (0e9dch),a		;a4b3   ; guarda el objeto 6 (bit 0: se lleva)
	ret			;a4b6
L_A4B7:
	ld c,005h		;a4b7
	ret			;a4b9
respuesta_del_tipo_63:		; ajusta la respuesta C del personaje de tipo 0x63 con las banderas de la historia
	ld hl,0eb76h		;a4ba   ; apunta a las banderas de la historia, byte 0x36 (se graban con la partida)
	bit 4,(hl)		;a4bd
	jr nz,L_A4F2		;a4bf
	ld a,c			;a4c1
	and a			;a4c2
	jr nz,L_A4CF		;a4c3
	bit 5,(hl)		;a4c5
	jr nz,L_A4CC		;a4c7
	set 7,(hl)		;a4c9
	ret			;a4cb
L_A4CC:
	ld c,003h		;a4cc
	ret			;a4ce
L_A4CF:
	cp 005h		;a4cf
	jr nz,L_A4D6		;a4d1
	ld c,00ch		;a4d3
	ret			;a4d5
L_A4D6:
	cp 001h		;a4d6
	jr nz,L_A4E4		;a4d8
	bit 7,(hl)		;a4da
	jr z,L_A4E1		;a4dc
	set 6,(hl)		;a4de
	ret			;a4e0
L_A4E1:
	ld c,00dh		;a4e1
	ret			;a4e3
L_A4E4:
	bit 6,(hl)		;a4e4
	jr z,L_A4EF		;a4e6
	set 5,(hl)		;a4e8
	xor a			;a4ea
	ld (0e9dch),a		;a4eb   ; guarda el objeto 6 (bit 0: se lleva)
	ret			;a4ee
L_A4EF:
	ld c,00eh		;a4ef
	ret			;a4f1
L_A4F2:
	ld a,c			;a4f2
	and a			;a4f3
	jr nz,L_A504		;a4f4
	bit 1,(hl)		;a4f6
	jr nz,L_A4FE		;a4f8
	bit 3,(hl)		;a4fa
	jr nz,L_A501		;a4fc
L_A4FE:
	ld c,003h		;a4fe
	ret			;a500
L_A501:
	ld c,007h		;a501
	ret			;a503
L_A504:
	cp 005h		;a504
	jr nz,L_A51B		;a506
	bit 4,(hl)		;a508
	jr z,L_A518		;a50a
	bit 3,(hl)		;a50c
	jr nz,L_A518		;a50e
	set 3,(hl)		;a510
	ld a,001h		;a512
	ld (0e9dch),a		;a514   ; guarda el objeto 6 (bit 0: se lleva)
	ret			;a517
L_A518:
	ld c,00ch		;a518
	ret			;a51a
L_A51B:
	cp 001h		;a51b
	jr nz,L_A522		;a51d
	ld c,00dh		;a51f
	ret			;a521
L_A522:
	bit 2,(hl)		;a522
	jr z,L_A52F		;a524
	ld c,008h		;a526
	set 1,(hl)		;a528
	xor a			;a52a
	ld (0e9dch),a		;a52b   ; guarda el objeto 6 (bit 0: se lleva)
	ret			;a52e
L_A52F:
	ld c,00fh		;a52f
	ret			;a531
respuesta_del_tipo_64:		; ajusta la respuesta C del personaje de tipo 0x64 con las banderas de la historia
	ld hl,0eb76h		;a532   ; apunta a las banderas de la historia, byte 0x36 (se graban con la partida)
	ld a,c			;a535
	cp 006h		;a536
	jr nz,L_A53D		;a538
	set 2,(hl)		;a53a
	ret			;a53c
L_A53D:
	cp 009h		;a53d
	jr nz,L_A556		;a53f
	bit 2,(hl)		;a541
	jr z,L_A553		;a543
	ld a,00bh		;a545
	ld (0e368h),a		;a547   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;a54a   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;a54d   ; sonido_13: pide el sonido 0x13
	ld c,009h		;a550
	ret			;a552
L_A553:
	ld c,010h		;a553
	ret			;a555
L_A556:
	cp 00bh		;a556
	ret nz			;a558
	bit 2,(hl)		;a559
	jr z,L_A56D		;a55b
	set 0,(hl)		;a55d
	ld a,00bh		;a55f
	ld (0e368h),a		;a561   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;a564   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;a567   ; sonido_13: pide el sonido 0x13
	ld c,00bh		;a56a
	ret			;a56c
L_A56D:
	ld c,011h		;a56d
	ret			;a56f
respuesta_del_tipo_6c:		; ajusta la respuesta C del personaje de tipo 0x6C con las banderas de la historia
	ld hl,0eb78h		;a570   ; apunta a las banderas de la historia, byte 0x38 (se graban con la partida)
	bit 7,(hl)		;a573
	ret z			;a575
	ld a,c			;a576
	and a			;a577
	ret nz			;a578
	bit 6,(hl)		;a579
	jr nz,L_A580		;a57b
	ld c,003h		;a57d
	ret			;a57f
L_A580:
	ld c,002h		;a580
	ret			;a582
respuesta_del_tipo_77:		; ajusta la respuesta C del personaje de tipo 0x77 con las banderas de la historia
	ld hl,0eb79h		;a583   ; apunta a las banderas de la historia, byte 0x39 (se graban con la partida)
	ld a,c			;a586
	cp 002h		;a587
	jr nz,L_A58E		;a589
	set 5,(hl)		;a58b
	ret			;a58d
L_A58E:
	cp 004h		;a58e
	jr nz,L_A59A		;a590
	bit 4,(hl)		;a592
	ret z			;a594
	ld c,005h		;a595
	set 3,(hl)		;a597
	ret			;a599
L_A59A:
	ld a,(0eb7dh)		;a59a   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 7,a		;a59d
	jr z,L_A5A4		;a59f
	ld c,006h		;a5a1
	ret			;a5a3
L_A5A4:
	bit 5,(hl)		;a5a4
	jr z,L_A5AB		;a5a6
	ld c,003h		;a5a8
	ret			;a5aa
L_A5AB:
	bit 6,(hl)		;a5ab
	ret nz			;a5ad
	bit 7,(hl)		;a5ae
	jr nz,L_A5B5		;a5b0
	set 7,(hl)		;a5b2
	ret			;a5b4
L_A5B5:
	set 6,(hl)		;a5b5
	ld c,001h		;a5b7
	ld hl,0eb52h		;a5b9
	inc (hl)			;a5bc
	ld a,(hl)			;a5bd
	cp 003h		;a5be
	ret c			;a5c0
	ld (hl),003h		;a5c1
	ret			;a5c3
respuesta_del_tipo_73:		; ajusta la respuesta C del personaje de tipo 0x73 con las banderas de la historia
	ld hl,0eb79h		;a5c4   ; apunta a las banderas de la historia, byte 0x39 (se graban con la partida)
	ld a,c			;a5c7
	cp 00ch		;a5c8
	jr nz,L_A5DA		;a5ca
	ld a,00dh		;a5cc
	ld (0e368h),a		;a5ce   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;a5d1   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;a5d4   ; sonido_13: pide el sonido 0x13
	ld c,00ch		;a5d7
	ret			;a5d9
L_A5DA:
	bit 2,(hl)		;a5da
	jr z,L_A5E1		;a5dc
	ld c,00bh		;a5de
	ret			;a5e0
L_A5E1:
	cp 004h		;a5e1
	ret nz			;a5e3
	set 2,(hl)		;a5e4
	ld a,00dh		;a5e6
	ld (0e368h),a		;a5e8   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;a5eb   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;a5ee   ; sonido_13: pide el sonido 0x13
	ld c,004h		;a5f1
	ret			;a5f3
respuesta_del_tipo_74:		; ajusta la respuesta C del personaje de tipo 0x74 con las banderas de la historia
	ld a,c			;a5f4
	cp 003h		;a5f5
	ret nz			;a5f7
	ld a,004h		;a5f8
	ld (0e368h),a		;a5fa   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;a5fd   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;a600   ; sonido_13: pide el sonido 0x13
	ld c,003h		;a603
	ret			;a605
respuesta_del_tipo_70:		; ajusta la respuesta C del personaje de tipo 0x70 con las banderas de la historia
	ld hl,0eb7ch		;a606   ; apunta a las banderas de la historia, byte 0x3C (se graban con la partida)
	ld a,c			;a609
	cp 007h		;a60a
	ret nz			;a60c
	ld a,(hl)			;a60d
	and 0f0h		;a60e
	ret z			;a610
	bit 7,(hl)		;a611
	jr z,L_A618		;a613
	ld c,00ch		;a615
	ret			;a617
L_A618:
	bit 6,(hl)		;a618
	jr z,L_A61F		;a61a
	ld c,006h		;a61c
	ret			;a61e
L_A61F:
	bit 5,(hl)		;a61f
	jr z,L_A626		;a621
	ld c,003h		;a623
	ret			;a625
L_A626:
	bit 4,(hl)		;a626
	ret z			;a628
	ld c,00ah		;a629
	ret			;a62b
respuesta_del_tipo_83:		; ajusta la respuesta C del personaje de tipo 0x83 con las banderas de la historia
	ld hl,0eb58h		;a62c   ; apunta a las banderas de la historia, byte 0x18 (se graban con la partida)
	ld a,c			;a62f
	cp 001h		;a630
	jr nz,L_A652		;a632
	bit 4,(hl)		;a634
	jr nz,L_A64F		;a636
	bit 5,(hl)		;a638
	jr nz,L_A63F		;a63a
	set 5,(hl)		;a63c
	ret			;a63e
L_A63F:
	set 4,(hl)		;a63f
	ld a,005h		;a641
	ld (0e368h),a		;a643   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;a646   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;a649   ; sonido_13: pide el sonido 0x13
	ld c,003h		;a64c
	ret			;a64e
L_A64F:
	ld c,00ch		;a64f
	ret			;a651
L_A652:
	cp 004h		;a652
	jr nz,L_A65C		;a654
	ld hl,0e9deh		;a656   ; apunta a el objeto 7 (bit 0: se lleva)
	ld (hl),003h		;a659
	ret			;a65b
L_A65C:
	cp 005h		;a65c
	jr nz,L_A666		;a65e
	ld hl,0e9deh		;a660   ; apunta a el objeto 7 (bit 0: se lleva)
	ld (hl),005h		;a663
	ret			;a665
L_A666:
	cp 006h		;a666
	jr nz,L_A670		;a668
	ld hl,0e9deh		;a66a   ; apunta a el objeto 7 (bit 0: se lleva)
	ld (hl),009h		;a66d
	ret			;a66f
L_A670:
	cp 007h		;a670
	jr nz,L_A67A		;a672
	ld hl,0e9deh		;a674   ; apunta a el objeto 7 (bit 0: se lleva)
	ld (hl),011h		;a677
	ret			;a679
L_A67A:
	cp 009h		;a67a
	ret nz			;a67c
	ld hl,0e9deh		;a67d   ; apunta a el objeto 7 (bit 0: se lleva)
	ld (hl),000h		;a680
	ret			;a682
respuesta_del_tipo_89:		; ajusta la respuesta C del personaje de tipo 0x89 con las banderas de la historia
	ld hl,0eb58h		;a683   ; apunta a las banderas de la historia, byte 0x18 (se graban con la partida)
	ld a,c			;a686
	cp 004h		;a687
	jr nz,L_A699		;a689
	ld a,006h		;a68b
	ld (0e368h),a		;a68d   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;a690   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;a693   ; sonido_13: pide el sonido 0x13
	ld c,004h		;a696
	ret			;a698
L_A699:
	cp 005h		;a699
	jr nz,L_A6A3		;a69b
	bit 3,(hl)		;a69d
	ret nz			;a69f
	ld c,00ah		;a6a0
	ret			;a6a2
L_A6A3:
	cp 008h		;a6a3
	jr nz,L_A6AA		;a6a5
	set 1,(hl)		;a6a7
	ret			;a6a9
L_A6AA:
	cp 004h		;a6aa
	ret nc			;a6ac
	bit 1,(hl)		;a6ad
	jr z,L_A6BB		;a6af
	set 0,(hl)		;a6b1
	ld hl,0e9e0h		;a6b3   ; apunta a el objeto 8 (bit 0: se lleva)
	ld (hl),001h		;a6b6
	ld c,009h		;a6b8
	ret			;a6ba
L_A6BB:
	cp 003h		;a6bb
	jr nz,L_A6C2		;a6bd
	set 2,(hl)		;a6bf
	ret			;a6c1
L_A6C2:
	cp 002h		;a6c2
	ret nz			;a6c4
	set 3,(hl)		;a6c5
	ret			;a6c7
respuesta_del_tipo_8a:		; ajusta la respuesta C del personaje de tipo 0x8A con las banderas de la historia
	ld hl,0eb59h		;a6c8   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	ld a,c			;a6cb
	cp 001h		;a6cc
	jr z,L_A6D6		;a6ce
	bit 5,(hl)		;a6d0
	ret z			;a6d2
	ld c,002h		;a6d3
	ret			;a6d5
L_A6D6:
	set 5,(hl)		;a6d6
	ret			;a6d8
respuesta_del_tipo_90:		; ajusta la respuesta C del personaje de tipo 0x90 con las banderas de la historia
	ld hl,0eb59h		;a6d9   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	ld a,c			;a6dc
	cp 001h		;a6dd
	jr z,L_A6EF		;a6df
	cp 003h		;a6e1
	jr z,L_A6F2		;a6e3
	bit 5,(hl)		;a6e5
	jr z,L_A6EC		;a6e7
	ld c,002h		;a6e9
	ret			;a6eb
L_A6EC:
	set 3,(hl)		;a6ec
	ret			;a6ee
L_A6EF:
	set 5,(hl)		;a6ef
	ret			;a6f1
L_A6F2:
	set 2,(hl)		;a6f2
	ret			;a6f4
respuesta_del_tipo_a2:		; ajusta la respuesta C del personaje de tipo 0xA2 con las banderas de la historia
	ld hl,0eb59h		;a6f5   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	ld a,c			;a6f8
	and a			;a6f9
	ret nz			;a6fa
	bit 4,(hl)		;a6fb
	ret z			;a6fd
	ld c,002h		;a6fe
	ret			;a700
respuesta_del_tipo_a3:		; ajusta la respuesta C del personaje de tipo 0xA3 con las banderas de la historia
	ld hl,0eb59h		;a701   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	ld a,c			;a704
	cp 001h		;a705
	ret nz			;a707
	ld a,(0eb7dh)		;a708   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	cp 0ffh		;a70b
	jr z,L_A719		;a70d
	bit 4,(hl)		;a70f
	jr nz,L_A716		;a711
	set 4,(hl)		;a713
	ret			;a715
L_A716:
	ld c,007h		;a716
	ret			;a718
L_A719:
	ld c,006h		;a719
	ld hl,0eb5bh		;a71b   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	res 0,(hl)		;a71e
	ret			;a720
respuesta_del_tipo_a4:		; ajusta la respuesta C del personaje de tipo 0xA4 con las banderas de la historia
	ld hl,0eb66h		;a721   ; apunta a las banderas de la historia, byte 0x26 (se graban con la partida)
	ld a,c			;a724
	and a			;a725
	jr nz,L_A761		;a726
	ld a,(0eb7dh)		;a728   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 7,a		;a72b
	jr z,L_A732		;a72d
	ld c,010h		;a72f
	ret			;a731
L_A732:
	bit 0,(hl)		;a732
	jr z,L_A739		;a734
	ld c,00dh		;a736
	ret			;a738
L_A739:
	bit 1,(hl)		;a739
	jr z,L_A740		;a73b
	ld c,00bh		;a73d
	ret			;a73f
L_A740:
	bit 2,(hl)		;a740
	jr z,L_A74E		;a742
	ld c,00ah		;a744
	set 1,(hl)		;a746
	ld hl,0eb79h		;a748   ; apunta a las banderas de la historia, byte 0x39 (se graban con la partida)
	set 4,(hl)		;a74b
	ret			;a74d
L_A74E:
	bit 4,(hl)		;a74e
	jr z,L_A755		;a750
	ld c,002h		;a752
	ret			;a754
L_A755:
	bit 5,(hl)		;a755
	jr z,L_A75E		;a757
	ld c,001h		;a759
	set 4,(hl)		;a75b
	ret			;a75d
L_A75E:
	set 5,(hl)		;a75e
	ret			;a760
L_A761:
	cp 003h		;a761
	jr nz,L_A782		;a763
	ld a,(0eb7dh)		;a765   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 7,a		;a768
	jr z,L_A76F		;a76a
	ld c,010h		;a76c
	ret			;a76e
L_A76F:
	ld a,(0e3f0h)		;a76f
	and a			;a772
	jr nz,L_A77F		;a773
	bit 4,(hl)		;a775
	jr z,L_A77C		;a777
	set 3,(hl)		;a779
	ret			;a77b
L_A77C:
	ld c,012h		;a77c
	ret			;a77e
L_A77F:
	ld c,008h		;a77f
	ret			;a781
L_A782:
	cp 004h		;a782
	jr nz,L_A79A		;a784
	ld a,(0eb7dh)		;a786   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 7,a		;a789
	jr z,L_A790		;a78b
	ld c,010h		;a78d
	ret			;a78f
L_A790:
	bit 3,(hl)		;a790
	jr z,L_A797		;a792
	ld c,004h		;a794
	ret			;a796
L_A797:
	ld c,013h		;a797
	ret			;a799
L_A79A:
	cp 005h		;a79a
	jr nz,L_A7A4		;a79c
	ld hl,0eb67h		;a79e   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	set 1,(hl)		;a7a1
	ret			;a7a3
L_A7A4:
	cp 006h		;a7a4
	ret nz			;a7a6
	ld a,(0eb7dh)		;a7a7   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 7,a		;a7aa
	jr z,L_A7B1		;a7ac
	ld c,010h		;a7ae
	ret			;a7b0
L_A7B1:
	ld a,(0e3a2h)		;a7b1
	and a			;a7b4
	jr z,L_A7BC		;a7b5
	ld c,00ch		;a7b7
	set 0,(hl)		;a7b9
	ret			;a7bb
L_A7BC:
	bit 1,(hl)		;a7bc
	ret z			;a7be
	ld c,00bh		;a7bf
	ret			;a7c1
respuesta_del_tipo_a8:		; ajusta la respuesta C del personaje de tipo 0xA8 con las banderas de la historia
	ld a,(0eb7dh)		;a7c2   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 1,a		;a7c5
	ret z			;a7c7
	ld c,001h		;a7c8
	ret			;a7ca
respuesta_del_tipo_aa:		; ajusta la respuesta C del personaje de tipo 0xAA con las banderas de la historia
	ld hl,0eb59h		;a7cb   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	ld a,c			;a7ce
	cp 001h		;a7cf
	jr nz,L_A7DD		;a7d1
	bit 1,(hl)		;a7d3
	jr nz,L_A7DA		;a7d5
	set 1,(hl)		;a7d7
	ret			;a7d9
L_A7DA:
	ld c,003h		;a7da
	ret			;a7dc
L_A7DD:
	cp 002h		;a7dd
	ret nz			;a7df
	bit 1,(hl)		;a7e0
	jr z,L_A7EB		;a7e2
	bit 0,(hl)		;a7e4
	jr nz,L_A7EB		;a7e6
	set 0,(hl)		;a7e8
	ret			;a7ea
L_A7EB:
	ld c,004h		;a7eb
	ret			;a7ed
respuesta_del_tipo_ad:		; ajusta la respuesta C del personaje de tipo 0xAD con las banderas de la historia
	ld hl,0eb5ah		;a7ee   ; apunta a las banderas de la historia, byte 0x1A (se graban con la partida)
	set 1,(hl)		;a7f1
	ret			;a7f3
respuesta_del_tipo_bf:		; ajusta la respuesta C del personaje de tipo 0xBF con las banderas de la historia
	ld hl,0eb5bh		;a7f4   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 3,(hl)		;a7f7
	ret z			;a7f9
	ld a,r		;a7fa
	and 002h		;a7fc
	ld c,003h		;a7fe
	ret z			;a800
	inc c			;a801
	ret			;a802
respuesta_del_tipo_c1:		; ajusta la respuesta C del personaje de tipo 0xC1 con las banderas de la historia
	ld hl,0eb5bh		;a803   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 3,(hl)		;a806
	jr z,L_A813		;a808
	ld a,r		;a80a
	and 002h		;a80c
	ld c,003h		;a80e
	ret z			;a810
	inc c			;a811
	ret			;a812
L_A813:
	ld hl,0eb5ah		;a813   ; apunta a las banderas de la historia, byte 0x1A (se graban con la partida)
	bit 0,(hl)		;a816
	jr z,L_A826		;a818
	res 0,(hl)		;a81a
	ld c,002h		;a81c
	ld hl,0eb5bh		;a81e   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	set 6,(hl)		;a821
	res 1,(hl)		;a823
	ret			;a825
L_A826:
	set 0,(hl)		;a826
	ld c,001h		;a828
	ret			;a82a
respuesta_del_tipo_c2:		; ajusta la respuesta C del personaje de tipo 0xC2 con las banderas de la historia
	ld hl,0eb5bh		;a82b   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 3,(hl)		;a82e
	ret z			;a830
	ld a,r		;a831
	and 002h		;a833
	ld c,002h		;a835
	ret z			;a837
	inc c			;a838
	ret			;a839
respuesta_del_tipo_bc:		; ajusta la respuesta C del personaje de tipo 0xBC con las banderas de la historia
	ld hl,0eb5bh		;a83a   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	ld a,c			;a83d
	cp 001h		;a83e
	ret nz			;a840
	set 3,(hl)		;a841
	ret			;a843
respuesta_del_tipo_c7:		; ajusta la respuesta C del personaje de tipo 0xC7 con las banderas de la historia
	ld hl,0eb5ch		;a844   ; apunta a las banderas de la historia, byte 0x1C (se graban con la partida)
	ld a,c			;a847
	and a			;a848
	jr nz,L_A881		;a849
	bit 1,(hl)		;a84b
	jr z,L_A852		;a84d
	ld c,00ah		;a84f
	ret			;a851
L_A852:
	ld a,(0eb7dh)		;a852   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 5,a		;a855
	jr z,L_A865		;a857
	push hl			;a859
	ld a,008h		;a85a
	call 04662h		;a85c
	pop hl			;a85f
	ld c,009h		;a860
	set 1,(hl)		;a862
	ret			;a864
L_A865:
	bit 5,(hl)		;a865
	jr z,L_A86E		;a867
	ld c,004h		;a869
	set 4,(hl)		;a86b
	ret			;a86d
L_A86E:
	bit 6,(hl)		;a86e
	jr z,L_A877		;a870
	ld c,003h		;a872
	set 5,(hl)		;a874
	ret			;a876
L_A877:
	bit 0,(hl)		;a877
	jr nz,L_A87E		;a879
	set 0,(hl)		;a87b
	ret			;a87d
L_A87E:
	ld c,001h		;a87e
	ret			;a880
L_A881:
	cp 002h		;a881
	ret nz			;a883
	set 6,(hl)		;a884
	ret			;a886
respuesta_del_tipo_a7:		; ajusta la respuesta C del personaje de tipo 0xA7 con las banderas de la historia
	ld hl,0eb5ch		;a887   ; apunta a las banderas de la historia, byte 0x1C (se graban con la partida)
	ld a,c			;a88a
	cp 005h		;a88b
	jr nz,L_A892		;a88d
	set 3,(hl)		;a88f
	ret			;a891
L_A892:
	cp 006h		;a892
	jr nz,L_A89C		;a894
	bit 3,(hl)		;a896
	ret nz			;a898
	ld c,00bh		;a899
	ret			;a89b
L_A89C:
	cp 007h		;a89c
	jr nz,L_A8A6		;a89e
	bit 3,(hl)		;a8a0
	ret nz			;a8a2
	ld c,00bh		;a8a3
	ret			;a8a5
L_A8A6:
	set 2,(hl)		;a8a6
	ret			;a8a8
respuesta_del_tipo_cb:		; ajusta la respuesta C del personaje de tipo 0xCB con las banderas de la historia
	ld hl,0eb61h		;a8a9   ; apunta a las banderas de la historia, byte 0x21 (se graban con la partida)
	ld a,c			;a8ac
	and a			;a8ad
	jr nz,L_A8D4		;a8ae
	ld a,(0eb62h)		;a8b0   ; lee las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 3,a		;a8b3
	jr z,L_A8BF		;a8b5
	ld c,00dh		;a8b7
	ld hl,0eb62h		;a8b9   ; apunta a las banderas de la historia, byte 0x22 (se graban con la partida)
	set 2,(hl)		;a8bc
	ret			;a8be
L_A8BF:
	bit 5,(hl)		;a8bf
	jr z,L_A8C8		;a8c1
	set 3,(hl)		;a8c3
	ld c,005h		;a8c5
	ret			;a8c7
L_A8C8:
	bit 6,(hl)		;a8c8
	jr z,L_A8D1		;a8ca
	set 5,(hl)		;a8cc
	ld c,001h		;a8ce
	ret			;a8d0
L_A8D1:
	set 6,(hl)		;a8d1
	ret			;a8d3
L_A8D4:
	cp 002h		;a8d4
	ret nz			;a8d6
	set 4,(hl)		;a8d7
	ret			;a8d9
respuesta_del_tipo_cc:		; ajusta la respuesta C del personaje de tipo 0xCC con las banderas de la historia
	ld hl,0eb61h		;a8da   ; apunta a las banderas de la historia, byte 0x21 (se graban con la partida)
	ld a,c			;a8dd
	cp 006h		;a8de
	jr nz,L_A8E5		;a8e0
	set 2,(hl)		;a8e2
	ret			;a8e4
L_A8E5:
	cp 007h		;a8e5
	jr nz,L_A8F3		;a8e7
	bit 2,(hl)		;a8e9
	jr z,L_A8F0		;a8eb
	set 1,(hl)		;a8ed
	ret			;a8ef
L_A8F0:
	ld c,00eh		;a8f0
	ret			;a8f2
L_A8F3:
	cp 008h		;a8f3
	jr nz,L_A901		;a8f5
	bit 1,(hl)		;a8f7
	jr z,L_A8FE		;a8f9
	set 0,(hl)		;a8fb
	ret			;a8fd
L_A8FE:
	ld c,00fh		;a8fe
	ret			;a900
L_A901:
	cp 00bh		;a901
	ret nz			;a903
	ld hl,0eb62h		;a904   ; apunta a las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 3,(hl)		;a907
	jr nz,L_A90E		;a909
	set 3,(hl)		;a90b
	ret			;a90d
L_A90E:
	ld c,00ch		;a90e
	ret			;a910
respuesta_del_tipo_e0:		; ajusta la respuesta C del personaje de tipo 0xE0 con las banderas de la historia
	ld hl,0eb6bh		;a911   ; apunta a las banderas de la historia, byte 0x2B (se graban con la partida)
	ld a,c			;a914
	cp 001h		;a915
	jr nz,L_A935		;a917
	ld a,(hl)			;a919
	and 003h		;a91a
	cp 003h		;a91c
	jr nz,L_A92D		;a91e
	ld a,008h		;a920
	call 04662h		;a922
	ld c,00bh		;a925
	ld hl,0eb5dh		;a927   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	set 1,(hl)		;a92a
	ret			;a92c
L_A92D:
	bit 4,(hl)		;a92d
	ret z			;a92f
	ld c,004h		;a930
	set 3,(hl)		;a932
	ret			;a934
L_A935:
	cp 002h		;a935
	jr nz,L_A945		;a937
	bit 3,(hl)		;a939
	jr z,L_A942		;a93b
	ld c,005h		;a93d
	set 2,(hl)		;a93f
	ret			;a941
L_A942:
	set 5,(hl)		;a942
	ret			;a944
L_A945:
	cp 003h		;a945
	jr nz,L_A953		;a947
	bit 5,(hl)		;a949
	jr z,L_A950		;a94b
	set 4,(hl)		;a94d
	ret			;a94f
L_A950:
	ld c,00dh		;a950
	ret			;a952
L_A953:
	cp 007h		;a953
	jr nz,L_A961		;a955
	bit 1,(hl)		;a957
	jr z,L_A95E		;a959
	ld c,009h		;a95b
	ret			;a95d
L_A95E:
	set 1,(hl)		;a95e
	ret			;a960
L_A961:
	cp 008h		;a961
	ret nz			;a963
	bit 0,(hl)		;a964
	jr z,L_A96B		;a966
	ld c,00ah		;a968
	ret			;a96a
L_A96B:
	set 0,(hl)		;a96b
	ret			;a96d
respuesta_del_tipo_d0:		; ajusta la respuesta C del personaje de tipo 0xD0 con las banderas de la historia
	ld hl,0eb5fh		;a96e   ; apunta a las banderas de la historia, byte 0x1F (se graban con la partida)
	ld a,c			;a971
	cp 006h		;a972
	ret nz			;a974
	set 3,(hl)		;a975
	ret			;a977
respuesta_del_tipo_f6:		; ajusta la respuesta C del personaje de tipo 0xF6 con las banderas de la historia
	ld hl,0eb78h		;a978   ; apunta a las banderas de la historia, byte 0x38 (se graban con la partida)
	ld a,c			;a97b
	cp 005h		;a97c
	jr nz,L_A990		;a97e
	bit 0,(hl)		;a980
	jr z,L_A987		;a982
	ld c,016h		;a984
	ret			;a986
L_A987:
	bit 5,(hl)		;a987
	jr z,L_A98D		;a989
	ld c,006h		;a98b
L_A98D:
	set 5,(hl)		;a98d
	ret			;a98f
L_A990:
	cp 00bh		;a990
	jr nz,L_A997		;a992
	set 3,(hl)		;a994
	ret			;a996
L_A997:
	cp 00ch		;a997
	jr nz,L_A9A1		;a999
	bit 3,(hl)		;a99b
	ret nz			;a99d
	ld c,01dh		;a99e
	ret			;a9a0
L_A9A1:
	cp 00dh		;a9a1
	ret z			;a9a3
	cp 014h		;a9a4
	jr nz,L_A9B2		;a9a6
	bit 2,(hl)		;a9a8
	jr z,L_A9AF		;a9aa
	set 1,(hl)		;a9ac
	ret			;a9ae
L_A9AF:
	ld c,01eh		;a9af
	ret			;a9b1
L_A9B2:
	cp 01ah		;a9b2
	ret nz			;a9b4
	ld hl,0eb77h		;a9b5   ; apunta a las banderas de la historia, byte 0x37 (se graban con la partida)
	bit 2,(hl)		;a9b8
	jr z,L_A9BF		;a9ba
	set 1,(hl)		;a9bc
	ret			;a9be
L_A9BF:
	ld c,01fh		;a9bf
	ret			;a9c1
respuesta_del_tipo_f8:		; ajusta la respuesta C del personaje de tipo 0xF8 con las banderas de la historia
	ld hl,0eb77h		;a9c2   ; apunta a las banderas de la historia, byte 0x37 (se graban con la partida)
	ld a,c			;a9c5
	cp 007h		;a9c6
	jr nz,L_A9D0		;a9c8
	bit 1,(hl)		;a9ca
	ret z			;a9cc
	ld c,01bh		;a9cd
	ret			;a9cf
L_A9D0:
	cp 008h		;a9d0
	jr nz,L_A9D7		;a9d2
	set 4,(hl)		;a9d4
	ret			;a9d6
L_A9D7:
	cp 009h		;a9d7
	jr nz,L_A9E1		;a9d9
	bit 4,(hl)		;a9db
	ret nz			;a9dd
	ld c,01dh		;a9de
	ret			;a9e0
L_A9E1:
	cp 00ah		;a9e1
	ret z			;a9e3
	cp 015h		;a9e4
	ret nz			;a9e6
	ld hl,0eb78h		;a9e7   ; apunta a las banderas de la historia, byte 0x38 (se graban con la partida)
	bit 1,(hl)		;a9ea
	jr z,L_A9F1		;a9ec
	set 0,(hl)		;a9ee
	ret			;a9f0
L_A9F1:
	ld c,020h		;a9f1
	ret			;a9f3
respuesta_del_tipo_fb:		; ajusta la respuesta C del personaje de tipo 0xFB con las banderas de la historia
	ld hl,0eb7dh		;a9f4   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 4,(hl)		;a9f7
	ret z			;a9f9
	ld c,001h		;a9fa
	ret			;a9fc
respuesta_del_tipo_ff:		; ajusta la respuesta C del personaje de tipo 0xFF con las banderas de la historia
	ld hl,0eb5eh		;a9fd   ; apunta a las banderas de la historia, byte 0x1E (se graban con la partida)
	ld a,c			;aa00
	and a			;aa01
	jr nz,L_AA07		;aa02
	set 4,(hl)		;aa04
	ret			;aa06
L_AA07:
	cp 001h		;aa07
	jr nz,L_AA15		;aa09
	bit 4,(hl)		;aa0b
	jr z,L_AA12		;aa0d
	set 3,(hl)		;aa0f
	ret			;aa11
L_AA12:
	ld c,003h		;aa12
	ret			;aa14
L_AA15:
	bit 3,(hl)		;aa15
	jr nz,L_AA1C		;aa17
	ld c,004h		;aa19
	ret			;aa1b
L_AA1C:
	ld hl,0eb62h		;aa1c   ; apunta a las banderas de la historia, byte 0x22 (se graban con la partida)
	set 1,(hl)		;aa1f
	ld hl,0e9e6h		;aa21   ; apunta a el objeto 11 (bit 0: se lleva)
	ld (hl),001h		;aa24
	ret			;aa26
respuesta_del_tipo_11b:		; ajusta la respuesta C del personaje de tipo 0x11B con las banderas de la historia
	ld hl,0eb5eh		;aa27   ; apunta a las banderas de la historia, byte 0x1E (se graban con la partida)
	set 2,(hl)		;aa2a
	res 1,(hl)		;aa2c
	ret			;aa2e
respuesta_del_tipo_155:		; ajusta la respuesta C del personaje de tipo 0x155 con las banderas de la historia
	ld hl,0eb64h		;aa2f   ; apunta a las banderas de la historia, byte 0x24 (se graban con la partida)
	ld a,c			;aa32
	cp 004h		;aa33
	jr nz,L_AA46		;aa35
	ld a,(hl)			;aa37
	and 01eh		;aa38
	cp 01eh		;aa3a
	jr z,L_AA41		;aa3c
	set 4,(hl)		;aa3e
	ret			;aa40
L_AA41:
	ld c,008h		;aa41
	set 0,(hl)		;aa43
	ret			;aa45
L_AA46:
	cp 005h		;aa46
	jr nz,L_AA4D		;aa48
	set 3,(hl)		;aa4a
	ret			;aa4c
L_AA4D:
	cp 006h		;aa4d
	jr nz,L_AA5B		;aa4f
	bit 3,(hl)		;aa51
	jr z,L_AA58		;aa53
	set 2,(hl)		;aa55
	ret			;aa57
L_AA58:
	ld c,015h		;aa58
	ret			;aa5a
L_AA5B:
	cp 007h		;aa5b
	ret nz			;aa5d
	set 1,(hl)		;aa5e
	ld a,010h		;aa60
	ld (0e368h),a		;aa62   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	call 04856h		;aa65   ; graficos_del_personaje: el bloque A-1 de p12:733E en RLE a 0x2D80
	call 04574h		;aa68   ; sonido_13: pide el sonido 0x13
	ld c,007h		;aa6b
	ret			;aa6d
respuesta_del_tipo_156:		; ajusta la respuesta C del personaje de tipo 0x156 con las banderas de la historia
	ld hl,0eb70h		;aa6e   ; apunta a las banderas de la historia, byte 0x30 (se graban con la partida)
	ld a,c			;aa71
	cp 00ah		;aa72
	jr nz,L_AA80		;aa74
	bit 2,(hl)		;aa76
	jr z,L_AA7D		;aa78
	ld c,00eh		;aa7a
	ret			;aa7c
L_AA7D:
	set 4,(hl)		;aa7d
	ret			;aa7f
L_AA80:
	cp 00bh		;aa80
	jr nz,L_AA87		;aa82
	set 3,(hl)		;aa84
	ret			;aa86
L_AA87:
	cp 00fh		;aa87
	jr nz,L_AA9C		;aa89
	bit 1,(hl)		;aa8b
	jr z,L_AA92		;aa8d
	ld c,010h		;aa8f
	ret			;aa91
L_AA92:
	bit 2,(hl)		;aa92
	jr z,L_AA99		;aa94
	set 1,(hl)		;aa96
	ret			;aa98
L_AA99:
	ld c,016h		;aa99
	ret			;aa9b
L_AA9C:
	cp 011h		;aa9c
	ret nz			;aa9e
	ld hl,0e9deh		;aa9f   ; apunta a el objeto 7 (bit 0: se lleva)
	bit 1,(hl)		;aaa2
	jr nz,L_AAA9		;aaa4
	ld c,013h		;aaa6
	ret			;aaa8
L_AAA9:
	ld hl,0eb70h		;aaa9   ; apunta a las banderas de la historia, byte 0x30 (se graban con la partida)
	set 0,(hl)		;aaac
	ret			;aaae
respuesta_del_tipo_c4:		; ajusta la respuesta C del personaje de tipo 0xC4 con las banderas de la historia
	ld hl,0eb5bh		;aaaf   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	bit 3,(hl)		;aab2
	ret z			;aab4
	ld a,r		;aab5
	and 002h		;aab7
	ld c,002h		;aab9
	ret z			;aabb
	inc c			;aabc
	ret			;aabd

; ----------------------------------------------------------------------
; DATOS resto_AABE: lo apuntan con el banco puesto p02:9CF3 (0xAABE); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p02:9CF3 (212 bytes)
;   0xaabe..0xab92  (212 bytes)
DATA_resto_AABE:
	defb 010h,000h,011h,000h,001h,000h,014h,000h,016h,000h,017h,000h,019h,000h,01ah,000h	; aabe  ................
	defb 01bh,000h,01ch,000h,022h,000h,015h,000h,02ch,000h,027h,000h,028h,000h,009h,000h	; aace  ...."...,.'.(...
	defb 025h,000h,026h,000h,029h,000h,02ah,000h,02dh,000h,031h,000h,033h,000h,034h,000h	; aade  %.&.).*.-.1.3.4.
	defb 03ah,000h,035h,000h,036h,000h,037h,000h,044h,000h,048h,000h,049h,000h,04ah,000h	; aaee  :.5.6.7.D.H.I.J.
	defb 047h,000h,04bh,000h,04dh,000h,050h,000h,040h,000h,041h,000h,042h,000h,045h,000h	; aafe  G.K.M.P.@.A.B.E.
	defb 04eh,000h,006h,000h,052h,000h,054h,000h,055h,000h,056h,000h,057h,000h,058h,000h	; ab0e  N...R.T.U.V.W.X.
	defb 060h,000h,061h,000h,063h,000h,064h,000h,06ch,000h,077h,000h,073h,000h,074h,000h	; ab1e  `.a.c.d.l.w.s.t.
	defb 070h,000h,071h,000h,078h,000h,079h,000h,07ah,000h,07bh,000h,07ch,000h,07dh,000h	; ab2e  p.q.x.y.z.{.|.}.
	defb 07eh,000h,083h,000h,089h,000h,08ah,000h,08bh,000h,08ch,000h,08dh,000h,08eh,000h	; ab3e  ~...............
	defb 08fh,000h,090h,000h,091h,000h,0a2h,000h,0a3h,000h,0a4h,000h,0a8h,000h,0aah,000h	; ab4e  ................
	defb 0adh,000h,0bfh,000h,0c1h,000h,0c2h,000h,0c3h,000h,0bch,000h,0c7h,000h,0a7h,000h	; ab5e  ................
	defb 0cbh,000h,0cch,000h,0e0h,000h,0d0h,000h,0d1h,000h,0d2h,000h,0f6h,000h,0f8h,000h	; ab6e  ................
	defb 0fbh,000h,0fch,000h,0fdh,000h,0feh,000h,0ffh,000h,01bh,001h,055h,001h,056h,001h	; ab7e  ............U.V.
	defb 0c4h,000h,0ffh,0ffh	; ab8e

; ======================================================================
; CODIGO 0xab92..0xb3a8  (2070 bytes)
; ======================================================================


banderas_tras_hablar:		; despues de la respuesta C: banderas de la historia en las salas 0x89 y 0x79
	ld de,(0eb40h)		;ab92   ; lee la sala
	ld hl,00089h		;ab96
	and a			;ab99
	sbc hl,de		;ab9a
	jr nz,L_ABA7		;ab9c
	ld a,c			;ab9e
	dec a			;ab9f
	ret nz			;aba0
	ld hl,0eb5ah		;aba1   ; apunta a las banderas de la historia, byte 0x1A (se graban con la partida)
	set 5,(hl)		;aba4
	ret			;aba6
L_ABA7:
	ld hl,00079h		;aba7
	and a			;abaa
	sbc hl,de		;abab
	ret nz			;abad
	ld hl,0eb64h		;abae   ; apunta a las banderas de la historia, byte 0x24 (se graban con la partida)
	ld a,c			;abb1
	and a			;abb2
	jr nz,L_ABB8		;abb3
	set 6,(hl)		;abb5
	ret			;abb7
L_ABB8:
	dec a			;abb8
	ret nz			;abb9
	set 5,(hl)		;abba
	ret			;abbc
respuesta_de_la_sala:		; en ciertas salas cambia la respuesta C (4-7, 8-11...) por otra; acarreo si la cambia
	ld de,(0eb40h)		;abbd   ; lee la sala
	ld hl,000afh		;abc1
	and a			;abc4
	sbc hl,de		;abc5
	jr nz,L_ABD6		;abc7
	ld a,c			;abc9
	cp 004h		;abca
	jr c,L_ABD6		;abcc
	cp 008h		;abce
	jr nc,L_ABD6		;abd0
	ld c,002h		;abd2
	scf			;abd4
	ret			;abd5
L_ABD6:
	ld hl,0008ah		;abd6
	and a			;abd9
	sbc hl,de		;abda
	jr nz,L_ABF0		;abdc
	ld a,c			;abde
	cp 004h		;abdf
	jr c,L_ABF0		;abe1
	cp 008h		;abe3
	jr nc,L_ABF0		;abe5
	ld c,002h		;abe7
	ld hl,0eb5ah		;abe9   ; apunta a las banderas de la historia, byte 0x1A (se graban con la partida)
	set 7,(hl)		;abec
	scf			;abee
	ret			;abef
L_ABF0:
	ld hl,00201h		;abf0
	and a			;abf3
	sbc hl,de		;abf4
	jr nz,L_AC20		;abf6
	ld a,c			;abf8
	cp 008h		;abf9
	jr c,L_AC0B		;abfb
	cp 00ch		;abfd
	jr nc,L_AC0B		;abff
	ld hl,0e9d2h		;ac01   ; apunta a el objeto 1 (bit 0: se lleva)
	bit 7,(hl)		;ac04
	ret z			;ac06
	ld c,004h		;ac07
	scf			;ac09
	ret			;ac0a
L_AC0B:
	cp 004h		;ac0b
	jr c,L_AC20		;ac0d
	cp 008h		;ac0f
	jr nc,L_AC20		;ac11
	ld hl,0e9d2h		;ac13   ; apunta a el objeto 1 (bit 0: se lleva)
	bit 7,(hl)		;ac16
	ld c,001h		;ac18
	jr z,L_AC1E		;ac1a
	ld c,003h		;ac1c
L_AC1E:
	scf			;ac1e
	ret			;ac1f
L_AC20:
	ld hl,000f3h		;ac20
	and a			;ac23
	sbc hl,de		;ac24
	jr nz,L_AC3A		;ac26
	ld a,c			;ac28
	cp 004h		;ac29
	jr c,L_AC3A		;ac2b
	cp 008h		;ac2d
	jr nc,L_AC3A		;ac2f
	ld c,003h		;ac31
	ld hl,0eb5eh		;ac33   ; apunta a las banderas de la historia, byte 0x1E (se graban con la partida)
	set 7,(hl)		;ac36
	scf			;ac38
	ret			;ac39
L_AC3A:
	ld hl,00118h		;ac3a
	and a			;ac3d
	sbc hl,de		;ac3e
	jr nz,L_AC5E		;ac40
	ld hl,0eb64h		;ac42   ; apunta a las banderas de la historia, byte 0x24 (se graban con la partida)
	bit 7,(hl)		;ac45
	jr nz,L_AC5E		;ac47
	ld a,c			;ac49
	cp 004h		;ac4a
	jr c,L_AC5E		;ac4c
	cp 00ch		;ac4e
	jr nc,L_AC5E		;ac50
	cp 008h		;ac52
	jr nc,L_AC5A		;ac54
	ld c,000h		;ac56
	scf			;ac58
	ret			;ac59
L_AC5A:
	ld c,001h		;ac5a
	scf			;ac5c
	ret			;ac5d
L_AC5E:
	ld hl,001c6h		;ac5e
	and a			;ac61
	sbc hl,de		;ac62
	jr nz,L_AC73		;ac64
	ld a,c			;ac66
	cp 004h		;ac67
	jr c,L_AC73		;ac69
	cp 008h		;ac6b
	jr nc,L_AC73		;ac6d
	ld c,000h		;ac6f
	scf			;ac71
	ret			;ac72
L_AC73:
	ld hl,00063h		;ac73
	and a			;ac76
	sbc hl,de		;ac77
	jr nz,L_AC95		;ac79
	ld a,c			;ac7b
	cp 004h		;ac7c
	jr c,L_AC95		;ac7e
	cp 008h		;ac80
	jr c,L_AC91		;ac82
	cp 00ch		;ac84
	jr nc,L_AC95		;ac86
	ld c,007h		;ac88
	ld hl,0eb67h		;ac8a   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	set 5,(hl)		;ac8d
	scf			;ac8f
	ret			;ac90
L_AC91:
	ld c,006h		;ac91
	scf			;ac93
	ret			;ac94
L_AC95:
	ld hl,00208h		;ac95
	and a			;ac98
	sbc hl,de		;ac99
	jr nz,L_ACBF		;ac9b
	ld hl,0eb6ah		;ac9d   ; apunta a las banderas de la historia, byte 0x2A (se graban con la partida)
	ld a,c			;aca0
	cp 004h		;aca1
	jr c,L_ACBF		;aca3
	cp 00ch		;aca5
	jr nc,L_ACBF		;aca7
	cp 008h		;aca9
	jr nc,L_ACB3		;acab
	ld c,004h		;acad
	set 5,(hl)		;acaf
	scf			;acb1
	ret			;acb2
L_ACB3:
	ld a,(0eb69h)		;acb3   ; lee las banderas de la historia, byte 0x29 (se graban con la partida)
	rla			;acb6
	jr c,L_ACBF		;acb7
	ld c,005h		;acb9
	set 4,(hl)		;acbb
	scf			;acbd
	ret			;acbe
L_ACBF:
	ld hl,00202h		;acbf
	and a			;acc2
	sbc hl,de		;acc3
	jr nz,L_ACDC		;acc5
L_ACC7:
	ld a,c			;acc7
	cp 004h		;acc8
	jr c,L_AD1C		;acca
	cp 00ch		;accc
	jr nc,L_AD1C		;acce
	cp 008h		;acd0
	jr nc,L_ACD8		;acd2
	ld c,000h		;acd4
	scf			;acd6
	ret			;acd7
L_ACD8:
	ld c,001h		;acd8
	scf			;acda
	ret			;acdb
L_ACDC:
	ld hl,00203h		;acdc
	and a			;acdf
	sbc hl,de		;ace0
	jr z,L_ACC7		;ace2
	ld hl,00204h		;ace4
	and a			;ace7
	sbc hl,de		;ace8
	jr z,L_ACC7		;acea
	ld hl,00205h		;acec
	and a			;acef
	sbc hl,de		;acf0
	jr z,L_ACC7		;acf2
	ld hl,00206h		;acf4
	and a			;acf7
	sbc hl,de		;acf8
	jr z,L_ACC7		;acfa
	ld hl,00207h		;acfc
	and a			;acff
	sbc hl,de		;ad00
	jr z,L_ACC7		;ad02
	ld hl,00209h		;ad04
	and a			;ad07
	sbc hl,de		;ad08
	jr z,L_ACC7		;ad0a
	ld hl,0020ah		;ad0c
	and a			;ad0f
	sbc hl,de		;ad10
	jr z,L_ACC7		;ad12
	ld hl,0020bh		;ad14
	and a			;ad17
	sbc hl,de		;ad18
	jr z,L_ACC7		;ad1a
L_AD1C:
	ld hl,001aah		;ad1c
	and a			;ad1f
	sbc hl,de		;ad20
	jr nz,L_AD38		;ad22
	ld a,c			;ad24
	cp 004h		;ad25
	jr c,L_AD38		;ad27
	cp 008h		;ad29
	jr nc,L_AD38		;ad2b
	ld hl,0eb6ch		;ad2d   ; apunta a las banderas de la historia, byte 0x2C (se graban con la partida)
	bit 7,(hl)		;ad30
	jr nz,L_AD38		;ad32
	ld c,009h		;ad34
	scf			;ad36
	ret			;ad37
L_AD38:
	ld hl,00107h		;ad38
	and a			;ad3b
	sbc hl,de		;ad3c
	jr nz,L_AD54		;ad3e
	ld a,c			;ad40
	cp 004h		;ad41
	jr c,L_AD54		;ad43
	cp 008h		;ad45
	jr nc,L_AD54		;ad47
	ld hl,0eb6dh		;ad49   ; apunta a las banderas de la historia, byte 0x2D (se graban con la partida)
	bit 5,(hl)		;ad4c
	jr z,L_AD54		;ad4e
	ld c,00eh		;ad50
	scf			;ad52
	ret			;ad53
L_AD54:
	ld hl,001d0h		;ad54
	and a			;ad57
	sbc hl,de		;ad58
	jr nz,L_AD74		;ad5a
	ld a,c			;ad5c
	cp 004h		;ad5d
	jr c,L_AD74		;ad5f
	cp 008h		;ad61
	jr nc,L_AD74		;ad63
	ld a,(0e40eh)		;ad65
	or a			;ad68
	jr nz,L_AD74		;ad69
	ld hl,0eb6fh		;ad6b   ; apunta a las banderas de la historia, byte 0x2F (se graban con la partida)
	set 7,(hl)		;ad6e
	ld c,000h		;ad70
	scf			;ad72
	ret			;ad73
L_AD74:
	ld hl,00030h		;ad74
	and a			;ad77
	sbc hl,de		;ad78
	jr nz,L_AD94		;ad7a
	ld a,c			;ad7c
	cp 004h		;ad7d
	jr c,L_AD94		;ad7f
	cp 008h		;ad81
	jr nc,L_AD94		;ad83
	ld a,(0e40eh)		;ad85
	or a			;ad88
	jr nz,L_AD94		;ad89
	ld hl,0eb71h		;ad8b   ; apunta a las banderas de la historia, byte 0x31 (se graban con la partida)
	set 4,(hl)		;ad8e
	ld c,000h		;ad90
	scf			;ad92
	ret			;ad93
L_AD94:
	ld hl,0020ch		;ad94
	and a			;ad97
	sbc hl,de		;ad98
	jr nz,L_ADA9		;ad9a
	ld a,c			;ad9c
	cp 004h		;ad9d
	jr c,L_ADA9		;ad9f
	cp 008h		;ada1
	jr nc,L_ADA9		;ada3
	ld c,001h		;ada5
	scf			;ada7
	ret			;ada8
L_ADA9:
	ld hl,000a7h		;ada9
	and a			;adac
	sbc hl,de		;adad
	jr nz,L_ADFF		;adaf
L_ADB1:
	ld de,(0e363h)		;adb1   ; lee el tipo del personaje de enfrente
	ld hl,00059h		;adb5
	and a			;adb8
	sbc hl,de		;adb9
	jr z,L_ADC5		;adbb
	ld hl,0005ah		;adbd
	and a			;adc0
	sbc hl,de		;adc1
	jr nz,L_ADE2		;adc3
L_ADC5:
	ld a,c			;adc5
	cp 010h		;adc6
	jr c,L_ADFF		;adc8
	cp 014h		;adca
	jr nc,L_ADD2		;adcc
	ld c,004h		;adce
	scf			;add0
	ret			;add1
L_ADD2:
	cp 018h		;add2
	jr nc,L_ADDA		;add4
	ld c,005h		;add6
	scf			;add8
	ret			;add9
L_ADDA:
	cp 01ch		;adda
	jr nc,L_AE07		;addc
	ld c,006h		;adde
	scf			;ade0
	ret			;ade1
L_ADE2:
	ld hl,0005bh		;ade2
	and a			;ade5
	sbc hl,de		;ade6
	jr z,L_AE07		;ade8
	ld hl,0005dh		;adea
	and a			;aded
	sbc hl,de		;adee
	jr z,L_AE07		;adf0
	ld a,c			;adf2
	cp 004h		;adf3
	jr c,L_AE07		;adf5
	cp 008h		;adf7
	jr nc,L_AE07		;adf9
	ld c,008h		;adfb
	scf			;adfd
	ret			;adfe
L_ADFF:
	ld hl,000e7h		;adff
	and a			;ae02
	sbc hl,de		;ae03
	jr z,L_ADB1		;ae05
L_AE07:
	ld hl,001d4h		;ae07
	and a			;ae0a
	sbc hl,de		;ae0b
	jr nz,L_AE2C		;ae0d
	ld hl,0eb77h		;ae0f   ; apunta a las banderas de la historia, byte 0x37 (se graban con la partida)
	bit 7,(hl)		;ae12
	jr z,L_AE2C		;ae14
	ld hl,0eb76h		;ae16   ; apunta a las banderas de la historia, byte 0x36 (se graban con la partida)
	bit 5,(hl)		;ae19
	jr z,L_AE2C		;ae1b
	ld a,c			;ae1d
	cp 008h		;ae1e
	jr c,L_AE2C		;ae20
	cp 00ch		;ae22
	jr nc,L_AE2C		;ae24
	ld c,004h		;ae26
	set 4,(hl)		;ae28
	scf			;ae2a
	ret			;ae2b
L_AE2C:
	ld hl,001d5h		;ae2c
	and a			;ae2f
	sbc hl,de		;ae30
	jr nz,L_AE63		;ae32
	ld a,c			;ae34
	cp 004h		;ae35
	jr c,L_AE63		;ae37
	cp 008h		;ae39
	jr c,L_AE5F		;ae3b
	cp 00ch		;ae3d
	jr nc,L_AE63		;ae3f
	ld hl,0eb76h		;ae41   ; apunta a las banderas de la historia, byte 0x36 (se graban con la partida)
	bit 0,(hl)		;ae44
	jr nz,L_AE63		;ae46
	ld hl,0eb77h		;ae48   ; apunta a las banderas de la historia, byte 0x37 (se graban con la partida)
	bit 6,(hl)		;ae4b
	jr z,L_AE59		;ae4d
	bit 5,(hl)		;ae4f
	jr z,L_AE59		;ae51
	ld c,002h		;ae53
	set 7,(hl)		;ae55
	scf			;ae57
	ret			;ae58
L_AE59:
	ld c,001h		;ae59
	set 5,(hl)		;ae5b
	scf			;ae5d
	ret			;ae5e
L_AE5F:
	ld c,000h		;ae5f
	scf			;ae61
	ret			;ae62
L_AE63:
	ld hl,001d7h		;ae63
	and a			;ae66
	sbc hl,de		;ae67
	jr nz,L_AE80		;ae69
	ld a,c			;ae6b
	cp 004h		;ae6c
	jr c,L_AE80		;ae6e
	cp 008h		;ae70
	jr c,L_AE7C		;ae72
	cp 00ch		;ae74
	jr nc,L_AE80		;ae76
	ld c,001h		;ae78
	scf			;ae7a
	ret			;ae7b
L_AE7C:
	ld c,000h		;ae7c
	scf			;ae7e
	ret			;ae7f
L_AE80:
	ld hl,0020fh		;ae80
	and a			;ae83
	sbc hl,de		;ae84
	jr nz,L_AE95		;ae86
	ld a,c			;ae88
	cp 004h		;ae89
	jr c,L_AE95		;ae8b
	cp 008h		;ae8d
	jr nc,L_AE95		;ae8f
	ld c,000h		;ae91
	scf			;ae93
	ret			;ae94
L_AE95:
	ld hl,00213h		;ae95
	and a			;ae98
	sbc hl,de		;ae99
	jr nz,L_AEFA		;ae9b
L_AE9D:
	ld a,c			;ae9d
	cp 004h		;ae9e
	jr c,L_AEFA		;aea0
	cp 008h		;aea2
	jr nc,L_AEFA		;aea4
	ld c,000h		;aea6
	scf			;aea8
	ret			;aea9
L_AEAA:
	ld hl,00214h		;aeaa
	and a			;aead
	sbc hl,de		;aeae
	jr z,L_AE9D		;aeb0
	ld hl,00215h		;aeb2
	and a			;aeb5
	sbc hl,de		;aeb6
	jr z,L_AE9D		;aeb8
	ld hl,00216h		;aeba
	and a			;aebd
	sbc hl,de		;aebe
	jr z,L_AE9D		;aec0
	ld hl,00217h		;aec2
	and a			;aec5
	sbc hl,de		;aec6
	jr z,L_AE9D		;aec8
	ld hl,00218h		;aeca
	and a			;aecd
	sbc hl,de		;aece
	jr z,L_AE9D		;aed0
	ld hl,00219h		;aed2
	and a			;aed5
	sbc hl,de		;aed6
	jr z,L_AE9D		;aed8
	ld hl,0021ah		;aeda
	and a			;aedd
	sbc hl,de		;aede
	jr z,L_AE9D		;aee0
	ld hl,0021bh		;aee2
	and a			;aee5
	sbc hl,de		;aee6
	jr z,L_AE9D		;aee8
	ld hl,0021ch		;aeea
	and a			;aeed
	sbc hl,de		;aeee
	jr z,L_AE9D		;aef0
	ld hl,0021dh		;aef2
	and a			;aef5
	sbc hl,de		;aef6
	jr z,L_AE9D		;aef8
L_AEFA:
	ld hl,0021eh		;aefa
	and a			;aefd
	sbc hl,de		;aefe
	jr nz,L_AF0F		;af00
	ld a,c			;af02
	cp 004h		;af03
	jr c,L_AF0F		;af05
	cp 008h		;af07
	jr nc,L_AF0F		;af09
	ld c,000h		;af0b
	scf			;af0d
	ret			;af0e
L_AF0F:
	ld hl,000b3h		;af0f
	and a			;af12
	sbc hl,de		;af13
	jr nz,L_AF32		;af15
	ld a,(0eb58h)		;af17   ; lee las banderas de la historia, byte 0x18 (se graban con la partida)
	bit 0,a		;af1a
	jr nz,L_AF32		;af1c
	ld a,c			;af1e
	cp 004h		;af1f
	jr c,L_AF32		;af21
	cp 008h		;af23
	jr nc,L_AF32		;af25
	ld hl,0eb59h		;af27   ; apunta a las banderas de la historia, byte 0x19 (se graban con la partida)
	bit 5,(hl)		;af2a
	jr nz,L_AF32		;af2c
	ld c,000h		;af2e
	scf			;af30
	ret			;af31
L_AF32:
	ld hl,0021fh		;af32
	and a			;af35
	sbc hl,de		;af36
	jr nz,L_AF47		;af38
	ld a,c			;af3a
	cp 004h		;af3b
	jr c,L_AF47		;af3d
	cp 008h		;af3f
	jr nc,L_AF47		;af41
	ld c,000h		;af43
	scf			;af45
	ret			;af46
L_AF47:
	ld hl,00159h		;af47
	and a			;af4a
	sbc hl,de		;af4b
	jr nz,L_AF5F		;af4d
	ld a,c			;af4f
	cp 004h		;af50
	jr nc,L_AF5F		;af52
	ld a,(0eb5ch)		;af54   ; lee las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 1,a		;af57
	jr z,L_AF5F		;af59
	ld c,00ah		;af5b
	scf			;af5d
	ret			;af5e
L_AF5F:
	ld hl,00228h		;af5f
	and a			;af62
	sbc hl,de		;af63
	jr nz,L_AFA1		;af65
L_AF67:
	ld hl,0eb5fh		;af67   ; apunta a las banderas de la historia, byte 0x1F (se graban con la partida)
	bit 3,(hl)		;af6a
	jr z,L_AF72		;af6c
	ld c,004h		;af6e
	scf			;af70
	ret			;af71
L_AF72:
	ld a,c			;af72
	cp 004h		;af73
	jr c,L_AF89		;af75
	cp 008h		;af77
	jr c,L_AF9B		;af79
	cp 00ch		;af7b
	jr nc,L_AFC9		;af7d
	bit 2,(hl)		;af7f
	jr z,L_AFC9		;af81
	ld c,001h		;af83
	set 1,(hl)		;af85
	scf			;af87
	ret			;af88
L_AF89:
	bit 1,(hl)		;af89
	jr z,L_AFC9		;af8b
	bit 0,(hl)		;af8d
	jr nz,L_AF97		;af8f
	ld c,002h		;af91
	set 0,(hl)		;af93
	scf			;af95
	ret			;af96
L_AF97:
	ld c,003h		;af97
	scf			;af99
	ret			;af9a
L_AF9B:
	ld c,000h		;af9b
	set 2,(hl)		;af9d
	scf			;af9f
	ret			;afa0
L_AFA1:
	ld hl,00229h		;afa1
	and a			;afa4
	sbc hl,de		;afa5
	jr z,L_AF67		;afa7
	ld hl,0022ah		;afa9
	and a			;afac
	sbc hl,de		;afad
	jr z,L_AF67		;afaf
	ld hl,0022bh		;afb1
	and a			;afb4
	sbc hl,de		;afb5
	jr z,L_AF67		;afb7
	ld hl,0022ch		;afb9
	and a			;afbc
	sbc hl,de		;afbd
	jr z,L_AF67		;afbf
	ld hl,0022dh		;afc1
	and a			;afc4
	sbc hl,de		;afc5
	jr z,L_AF67		;afc7
L_AFC9:
	ld hl,000b0h		;afc9
	and a			;afcc
	sbc hl,de		;afcd
	jr nz,L_B021		;afcf
	ld hl,0eb5dh		;afd1   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	bit 0,(hl)		;afd4
	jr z,L_B021		;afd6
	ld a,c			;afd8
	cp 004h		;afd9
	jr nc,L_AFFE		;afdb
	ld hl,0eb78h		;afdd   ; apunta a las banderas de la historia, byte 0x38 (se graban con la partida)
	bit 2,(hl)		;afe0
	jr z,L_AFF5		;afe2
	bit 0,(hl)		;afe4
	jr z,L_AFF5		;afe6
	ld hl,0eb77h		;afe8   ; apunta a las banderas de la historia, byte 0x37 (se graban con la partida)
	bit 4,(hl)		;afeb
	jr nz,L_AFF5		;afed
	set 4,(hl)		;afef
	ld c,017h		;aff1
	scf			;aff3
	ret			;aff4
L_AFF5:
	ld hl,0eb78h		;aff5   ; apunta a las banderas de la historia, byte 0x38 (se graban con la partida)
	ld c,013h		;aff8
	set 2,(hl)		;affa
	scf			;affc
	ret			;affd
L_AFFE:
	cp 008h		;affe
	jr nc,L_B006		;b000
	ld c,01ch		;b002
	scf			;b004
	ret			;b005
L_B006:
	cp 01ch		;b006
	jr c,L_B021		;b008
	ld hl,0eb77h		;b00a   ; apunta a las banderas de la historia, byte 0x37 (se graban con la partida)
	bit 3,(hl)		;b00d
	jr nz,L_B01B		;b00f
	bit 4,(hl)		;b011
	jr z,L_B021		;b013
	set 3,(hl)		;b015
	ld c,018h		;b017
	scf			;b019
	ret			;b01a
L_B01B:
	set 2,(hl)		;b01b
	ld c,019h		;b01d
	scf			;b01f
	ret			;b020
L_B021:
	ld hl,001a1h		;b021
	and a			;b024
	sbc hl,de		;b025
	jr nz,L_B079		;b027
	ld hl,0eb62h		;b029   ; apunta a las banderas de la historia, byte 0x22 (se graban con la partida)
	bit 4,(hl)		;b02c
	jr z,L_B079		;b02e
	ld hl,0eb60h		;b030   ; apunta a las banderas de la historia, byte 0x20 (se graban con la partida)
	ld a,c			;b033
	cp 004h		;b034
	jr c,L_B079		;b036
	cp 008h		;b038
	jr c,L_B051		;b03a
	cp 00ch		;b03c
	jr c,L_B05B		;b03e
	cp 01ch		;b040
	jr c,L_B079		;b042
	ld hl,0eb60h		;b044   ; apunta a las banderas de la historia, byte 0x20 (se graban con la partida)
	bit 3,(hl)		;b047
	jr z,L_B079		;b049
	ld c,002h		;b04b
	set 2,(hl)		;b04d
	scf			;b04f
	ret			;b050
L_B051:
	bit 2,(hl)		;b051
	jr nz,L_B065		;b053
L_B055:
	ld c,000h		;b055
	set 4,(hl)		;b057
	scf			;b059
	ret			;b05a
L_B05B:
	bit 4,(hl)		;b05b
	jr z,L_B079		;b05d
	ld c,001h		;b05f
	set 3,(hl)		;b061
	scf			;b063
	ret			;b064
L_B065:
	ld hl,0eb5ch		;b065   ; apunta a las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 1,(hl)		;b068
	jr z,L_B055		;b06a
	ld hl,0eb60h		;b06c   ; apunta a las banderas de la historia, byte 0x20 (se graban con la partida)
	bit 2,(hl)		;b06f
	jr z,L_B055		;b071
	set 1,(hl)		;b073
	ld c,003h		;b075
	scf			;b077
	ret			;b078
L_B079:
	ld hl,001e0h		;b079
	and a			;b07c
	sbc hl,de		;b07d
	jr nz,L_B08A		;b07f
	ld a,c			;b081
	cp 004h		;b082
	jr nc,L_B08A		;b084
	ld c,000h		;b086
	scf			;b088
	ret			;b089
L_B08A:
	and a			;b08a
	ret			;b08b
opcion_cerrada:		; acarreo si la opcion C no vale todavia con el personaje de tipo 0xE363 (banderas de la historia)
	ld de,(0e363h)		;b08c   ; lee el tipo del personaje de enfrente
	ld hl,00022h		;b090
	and a			;b093
	sbc hl,de		;b094
	jr nz,L_B0AE		;b096
	ld a,c			;b098
	and a			;b099
	jr nz,L_B0A5		;b09a
	ld hl,0eb5ah		;b09c   ; apunta a las banderas de la historia, byte 0x1A (se graban con la partida)
	bit 7,(hl)		;b09f
	jr nz,L_B0AE		;b0a1
	scf			;b0a3
	ret			;b0a4
L_B0A5:
	ld hl,0eb5ah		;b0a5   ; apunta a las banderas de la historia, byte 0x1A (se graban con la partida)
	bit 6,(hl)		;b0a8
	jr nz,L_B0AE		;b0aa
	scf			;b0ac
	ret			;b0ad
L_B0AE:
	ld hl,00028h		;b0ae
	and a			;b0b1
	sbc hl,de		;b0b2
	jr nz,L_B0C9		;b0b4
	ld a,c			;b0b6
	and a			;b0b7
	jr z,L_B0C9		;b0b8
	ld a,(0eb7bh)		;b0ba   ; lee las banderas de la historia, byte 0x3B (se graban con la partida)
	and a			;b0bd
	jr z,L_B0C7		;b0be
	ld hl,0eb5fh		;b0c0   ; apunta a las banderas de la historia, byte 0x1F (se graban con la partida)
	bit 6,(hl)		;b0c3
	jr nz,L_B0C9		;b0c5
L_B0C7:
	scf			;b0c7
	ret			;b0c8
L_B0C9:
	ld hl,0002bh		;b0c9
	and a			;b0cc
	sbc hl,de		;b0cd
	jr nz,L_B0E8		;b0cf
	ld hl,0eb61h		;b0d1   ; apunta a las banderas de la historia, byte 0x21 (se graban con la partida)
	ld a,c			;b0d4
	and a			;b0d5
	jr z,L_B0DE		;b0d6
	bit 7,(hl)		;b0d8
	jr nz,L_B0E8		;b0da
	scf			;b0dc
	ret			;b0dd
L_B0DE:
	bit 7,(hl)		;b0de
	jr z,L_B0E8		;b0e0
	bit 6,(hl)		;b0e2
	jr nz,L_B0E8		;b0e4
	scf			;b0e6
	ret			;b0e7
L_B0E8:
	ld hl,0002dh		;b0e8
	and a			;b0eb
	sbc hl,de		;b0ec
	jr nz,L_B100		;b0ee
	ld hl,0eb63h		;b0f0   ; apunta a las banderas de la historia, byte 0x23 (se graban con la partida)
	bit 2,(hl)		;b0f3
	jr nz,L_B0FE		;b0f5
	ld a,(hl)			;b0f7
	and 0f8h		;b0f8
	cp 0f8h		;b0fa
	jr z,L_B100		;b0fc
L_B0FE:
	scf			;b0fe
	ret			;b0ff
L_B100:
	ld hl,00035h		;b100
	and a			;b103
	sbc hl,de		;b104
	jr nz,L_B113		;b106
	ld a,(0eb67h)		;b108   ; lee las banderas de la historia, byte 0x27 (se graban con la partida)
	and 0c0h		;b10b
	cp 0c0h		;b10d
	jr z,L_B113		;b10f
	scf			;b111
	ret			;b112
L_B113:
	ld hl,00036h		;b113
	and a			;b116
	sbc hl,de		;b117
	jr nz,L_B124		;b119
	ld hl,0eb67h		;b11b   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	bit 4,(hl)		;b11e
	jr nz,L_B124		;b120
	scf			;b122
	ret			;b123
L_B124:
	ld hl,00037h		;b124
	and a			;b127
	sbc hl,de		;b128
	jr nz,L_B13F		;b12a
	ld hl,0eb67h		;b12c   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	bit 2,(hl)		;b12f
	jr z,L_B13D		;b131
	ld hl,0eb68h		;b133   ; apunta a las banderas de la historia, byte 0x28 (se graban con la partida)
	ld a,(hl)			;b136
	and 070h		;b137
	cp 070h		;b139
	jr z,L_B13F		;b13b
L_B13D:
	scf			;b13d
	ret			;b13e
L_B13F:
	ld hl,00038h		;b13f
	and a			;b142
	sbc hl,de		;b143
	jr nz,L_B150		;b145
	ld hl,0eb68h		;b147   ; apunta a las banderas de la historia, byte 0x28 (se graban con la partida)
	bit 7,(hl)		;b14a
	jr nz,L_B150		;b14c
	scf			;b14e
	ret			;b14f
L_B150:
	ld hl,0004dh		;b150
	and a			;b153
	sbc hl,de		;b154
	jr nz,L_B168		;b156
	ld hl,0eb6ch		;b158   ; apunta a las banderas de la historia, byte 0x2C (se graban con la partida)
	bit 7,(hl)		;b15b
	jr z,L_B166		;b15d
	ld hl,0eb6dh		;b15f   ; apunta a las banderas de la historia, byte 0x2D (se graban con la partida)
	bit 7,(hl)		;b162
	jr z,L_B168		;b164
L_B166:
	scf			;b166
	ret			;b167
L_B168:
	ld hl,00050h		;b168
	and a			;b16b
	sbc hl,de		;b16c
	jr nz,L_B17B		;b16e
	ld a,(0eb6eh)		;b170   ; lee las banderas de la historia, byte 0x2E (se graban con la partida)
	and 0e0h		;b173
	cp 0e0h		;b175
	jr z,L_B17B		;b177
	scf			;b179
	ret			;b17a
L_B17B:
	ld hl,00052h		;b17b
	and a			;b17e
	sbc hl,de		;b17f
	jr nz,L_B1A8		;b181
	ld hl,0eb71h		;b183   ; apunta a las banderas de la historia, byte 0x31 (se graban con la partida)
	ld a,c			;b186
	and a			;b187
	jr z,L_B1A8		;b188
	dec a			;b18a
	jr nz,L_B193		;b18b
	bit 6,(hl)		;b18d
	jr z,L_B1A8		;b18f
	scf			;b191
	ret			;b192
L_B193:
	dec a			;b193
	jr nz,L_B19C		;b194
	bit 5,(hl)		;b196
	jr z,L_B1A8		;b198
	scf			;b19a
	ret			;b19b
L_B19C:
	bit 5,(hl)		;b19c
	jr z,L_B1A2		;b19e
	scf			;b1a0
	ret			;b1a1
L_B1A2:
	bit 7,(hl)		;b1a2
	jr nz,L_B1A8		;b1a4
	scf			;b1a6
	ret			;b1a7
L_B1A8:
	ld hl,00056h		;b1a8
	and a			;b1ab
	sbc hl,de		;b1ac
	jr nz,L_B1B9		;b1ae
	ld hl,0eb72h		;b1b0   ; apunta a las banderas de la historia, byte 0x32 (se graban con la partida)
	bit 5,(hl)		;b1b3
	jr nz,L_B1B9		;b1b5
	scf			;b1b7
	ret			;b1b8
L_B1B9:
	ld hl,00057h		;b1b9
	and a			;b1bc
	sbc hl,de		;b1bd
	jr nz,L_B1CC		;b1bf
	ld a,(0eb72h)		;b1c1   ; lee las banderas de la historia, byte 0x32 (se graban con la partida)
	and 006h		;b1c4
	cp 006h		;b1c6
	jr z,L_B1CC		;b1c8
	scf			;b1ca
	ret			;b1cb
L_B1CC:
	ld hl,00058h		;b1cc
	and a			;b1cf
	sbc hl,de		;b1d0
	jr nz,L_B1DD		;b1d2
	ld hl,0eb73h		;b1d4   ; apunta a las banderas de la historia, byte 0x33 (se graban con la partida)
	bit 6,(hl)		;b1d7
	jr nz,L_B1DD		;b1d9
	scf			;b1db
	ret			;b1dc
L_B1DD:
	ld hl,00040h		;b1dd
	and a			;b1e0
	sbc hl,de		;b1e1
	jr nz,L_B1FC		;b1e3
L_B1E5:
	ld hl,0eb67h		;b1e5   ; apunta a las banderas de la historia, byte 0x27 (se graban con la partida)
	bit 3,(hl)		;b1e8
	jr z,L_B1FA		;b1ea
	ld hl,0eb66h		;b1ec   ; apunta a las banderas de la historia, byte 0x26 (se graban con la partida)
	bit 6,(hl)		;b1ef
	jr z,L_B1FA		;b1f1
	ld hl,0eb6bh		;b1f3   ; apunta a las banderas de la historia, byte 0x2B (se graban con la partida)
	bit 6,(hl)		;b1f6
	jr nz,L_B214		;b1f8
L_B1FA:
	scf			;b1fa
	ret			;b1fb
L_B1FC:
	ld hl,00041h		;b1fc
	and a			;b1ff
	sbc hl,de		;b200
	jr z,L_B1E5		;b202
	ld hl,00042h		;b204
	and a			;b207
	sbc hl,de		;b208
	jr z,L_B1E5		;b20a
	ld hl,00045h		;b20c
	and a			;b20f
	sbc hl,de		;b210
	jr z,L_B1E5		;b212
L_B214:
	ld hl,0006ch		;b214
	and a			;b217
	sbc hl,de		;b218
	jr nz,L_B225		;b21a
	ld hl,0eb78h		;b21c   ; apunta a las banderas de la historia, byte 0x38 (se graban con la partida)
	bit 7,(hl)		;b21f
	jr z,L_B225		;b221
	scf			;b223
	ret			;b224
L_B225:
	ld hl,00077h		;b225
	and a			;b228
	sbc hl,de		;b229
	jr nz,L_B23D		;b22b
	ld hl,0eb7dh		;b22d   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 7,(hl)		;b230
	jr nz,L_B23B		;b232
	ld a,(0eb52h)		;b234
	cp 003h		;b237
	jr z,L_B23D		;b239
L_B23B:
	scf			;b23b
	ret			;b23c
L_B23D:
	ld hl,00051h		;b23d
	and a			;b240
	sbc hl,de		;b241
	jr nz,L_B24E		;b243
	ld hl,0eb6dh		;b245   ; apunta a las banderas de la historia, byte 0x2D (se graban con la partida)
	bit 5,(hl)		;b248
	jr z,L_B24E		;b24a
	scf			;b24c
	ret			;b24d
L_B24E:
	ld hl,00083h		;b24e
	and a			;b251
	sbc hl,de		;b252
	jr nz,L_B278		;b254
	ld a,c			;b256
	and a			;b257
	jr z,L_B26E		;b258
	dec a			;b25a
	jr nz,L_B278		;b25b
	ld a,(0eb58h)		;b25d   ; lee las banderas de la historia, byte 0x18 (se graban con la partida)
	bit 4,a		;b260
	jr z,L_B275		;b262
	ld a,(0e9deh)		;b264   ; lee el objeto 7 (bit 0: se lleva)
	rra			;b267
	jr nc,L_B278		;b268
	ld a,008h		;b26a
	jr L_B276		;b26c
L_B26E:
	ld a,(0eb58h)		;b26e   ; lee las banderas de la historia, byte 0x18 (se graban con la partida)
	bit 4,a		;b271
	jr nz,L_B278		;b273
L_B275:
	xor a			;b275
L_B276:
	scf			;b276
	ret			;b277
L_B278:
	ld hl,00089h		;b278
	and a			;b27b
	sbc hl,de		;b27c
	jr nz,L_B289		;b27e
	ld a,(0eb58h)		;b280   ; lee las banderas de la historia, byte 0x18 (se graban con la partida)
	bit 2,a		;b283
	jr nz,L_B289		;b285
	scf			;b287
	ret			;b288
L_B289:
	ld hl,000a3h		;b289
	and a			;b28c
	sbc hl,de		;b28d
	jr nz,L_B2A0		;b28f
	ld hl,0e39eh		;b291
	inc (hl)			;b294
	ld a,(hl)			;b295
	cp 008h		;b296
	jr nz,L_B29E		;b298
	ld (hl),007h		;b29a
	jr L_B2A0		;b29c
L_B29E:
	scf			;b29e
	ret			;b29f
L_B2A0:
	ld hl,000a4h		;b2a0
	and a			;b2a3
	sbc hl,de		;b2a4
	jr nz,L_B2B7		;b2a6
	ld hl,0eb66h		;b2a8   ; apunta a las banderas de la historia, byte 0x26 (se graban con la partida)
	bit 4,(hl)		;b2ab
	jr z,L_B2B5		;b2ad
	ld a,(0e3f0h)		;b2af
	and a			;b2b2
	jr z,L_B2B7		;b2b3
L_B2B5:
	scf			;b2b5
	ret			;b2b6
L_B2B7:
	ld hl,00033h		;b2b7
	and a			;b2ba
	sbc hl,de		;b2bb
	jr nz,L_B2D6		;b2bd
	ld a,c			;b2bf
	cp 003h		;b2c0
	jr nz,L_B2D6		;b2c2
	ld hl,0eb65h		;b2c4   ; apunta a las banderas de la historia, byte 0x25 (se graban con la partida)
	bit 3,(hl)		;b2c7
	jr z,L_B2D4		;b2c9
	ld a,(0eb58h)		;b2cb   ; lee las banderas de la historia, byte 0x18 (se graban con la partida)
	and 0c0h		;b2ce
	cp 0c0h		;b2d0
	jr z,L_B2D6		;b2d2
L_B2D4:
	scf			;b2d4
	ret			;b2d5
L_B2D6:
	ld hl,00090h		;b2d6
	and a			;b2d9
	sbc hl,de		;b2da
	jr nz,L_B2F0		;b2dc
	ld a,c			;b2de
	cp 003h		;b2df
	jr nz,L_B2F0		;b2e1
	ld a,(0eb59h)		;b2e3   ; lee las banderas de la historia, byte 0x19 (se graban con la partida)
	bit 2,a		;b2e6
	jr nz,L_B2EE		;b2e8
	bit 3,a		;b2ea
	jr nz,L_B2F0		;b2ec
L_B2EE:
	scf			;b2ee
	ret			;b2ef
L_B2F0:
	ld hl,000a7h		;b2f0
	and a			;b2f3
	sbc hl,de		;b2f4
	jr nz,L_B301		;b2f6
	ld hl,0eb5ch		;b2f8   ; apunta a las banderas de la historia, byte 0x1C (se graban con la partida)
	bit 3,(hl)		;b2fb
	jr nz,L_B301		;b2fd
	scf			;b2ff
	ret			;b300
L_B301:
	ld hl,000cch		;b301
	and a			;b304
	sbc hl,de		;b305
	jr nz,L_B312		;b307
	ld hl,0eb61h		;b309   ; apunta a las banderas de la historia, byte 0x21 (se graban con la partida)
	bit 0,(hl)		;b30c
	jr nz,L_B312		;b30e
	scf			;b310
	ret			;b311
L_B312:
	ld hl,000cbh		;b312
	and a			;b315
	sbc hl,de		;b316
	jr nz,L_B328		;b318
	ld a,c			;b31a
	cp 002h		;b31b
	jr nz,L_B328		;b31d
	ld hl,0eb61h		;b31f   ; apunta a las banderas de la historia, byte 0x21 (se graban con la partida)
	bit 4,(hl)		;b322
	jr nz,L_B328		;b324
	scf			;b326
	ret			;b327
L_B328:
	ld hl,000f8h		;b328
	and a			;b32b
	sbc hl,de		;b32c
	jr nz,L_B33E		;b32e
	ld a,c			;b330
	cp 003h		;b331
	jr nz,L_B33E		;b333
	ld hl,0eb78h		;b335   ; apunta a las banderas de la historia, byte 0x38 (se graban con la partida)
	bit 1,(hl)		;b338
	jr nz,L_B33E		;b33a
	scf			;b33c
	ret			;b33d
L_B33E:
	ld hl,00155h		;b33e
	and a			;b341
	sbc hl,de		;b342
	jr nz,L_B34F		;b344
	ld hl,0eb64h		;b346   ; apunta a las banderas de la historia, byte 0x24 (se graban con la partida)
	bit 3,(hl)		;b349
	jr nz,L_B34F		;b34b
	scf			;b34d
	ret			;b34e
L_B34F:
	ld hl,00156h		;b34f
	and a			;b352
	sbc hl,de		;b353
	jr nz,L_B375		;b355
	ld a,c			;b357
	and a			;b358
	jr nz,L_B364		;b359
	ld hl,0eb70h		;b35b   ; apunta a las banderas de la historia, byte 0x30 (se graban con la partida)
	bit 1,(hl)		;b35e
	jr nz,L_B375		;b360
	scf			;b362
	ret			;b363
L_B364:
	ld hl,0eb70h		;b364   ; apunta a las banderas de la historia, byte 0x30 (se graban con la partida)
	bit 2,(hl)		;b367
	jr nz,L_B373		;b369
	bit 4,(hl)		;b36b
	jr z,L_B373		;b36d
	bit 3,(hl)		;b36f
	jr nz,L_B375		;b371
L_B373:
	scf			;b373
	ret			;b374
L_B375:
	and a			;b375
	ret			;b376
efecto_que_sube:		; prepara el efecto del actor de enfrente (p03:B3A8[tipo - 0x25]) y los sprites de 0xF010
	ld ix,(0e365h)		;b377   ; lee la ficha del personaje de enfrente
	ld de,0b3a8h		;b37b
	ld a,(ix+000h)		;b37e
	sub 025h		;b381
	call 043a4h		;b383   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld (ix+00eh),e		;b386
	ld (ix+00fh),d		;b389
	xor a			;b38c
	ld (0e373h),a		;b38d
	ld (0e372h),a		;b390
	inc a			;b393
	ld (0e372h),a		;b394
	ld (0e371h),a		;b397
	ld a,(ix+003h)		;b39a
	ld (0e374h),a		;b39d
	ld a,(ix+004h)		;b3a0
	ld (0e375h),a		;b3a3
	jr $+58		;b3a6

; ----------------------------------------------------------------------
; DATOS resto_B3A8: lo apuntan con el banco puesto p03:B37B (0xB3A8); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p03:B37B (14 bytes)
;   0xb3a8..0xb3b6  (14 bytes)
DATA_resto_B3A8:
	defb 001h,00fh,006h,00bh,006h,00fh,001h,00fh,004h,00fh,004h,00bh,001h,00fh	; b3a8  ..............

; ======================================================================
; CODIGO 0xb3b6..0xb402  (76 bytes)
; ======================================================================


efecto_que_sube_cuadro:		; un cuadro del efecto: la Y sube cada 16 cuadros y al acabar se esconde
	ld a,(0e372h)		;b3b6
	or a			;b3b9
	jr z,$-67		;b3ba
	ld a,(0e373h)		;b3bc
	inc a			;b3bf
	ld (0e373h),a		;b3c0
	or a			;b3c3
	jr z,L_B3D3		;b3c4
	and 00fh		;b3c6
	jr nz,L_B3E0		;b3c8
	ld a,(0e374h)		;b3ca
	inc a			;b3cd
	ld (0e374h),a		;b3ce
	jr L_B3E0		;b3d1
L_B3D3:
	xor a			;b3d3
	ld (0e371h),a		;b3d4
	ld a,002h		;b3d7
	ld (0e372h),a		;b3d9
	ld c,0e0h		;b3dc
	jr L_B3E4		;b3de
L_B3E0:
	ld a,(0e374h)		;b3e0
	ld c,a			;b3e3
L_B3E4:
	ld hl,0f010h		;b3e4
	ld b,004h		;b3e7
L_B3E9:
	ld (hl),c			;b3e9
	inc l			;b3ea
	ld a,(0e375h)		;b3eb
	ld (hl),a			;b3ee
	inc l			;b3ef
	ld (hl),0fch		;b3f0
	inc l			;b3f2
	ld (hl),000h		;b3f3
	inc l			;b3f5
	djnz L_B3E9		;b3f6
	ret			;b3f8
modo_4_anima:		; modo 4: la animacion 0xE378 (1 o 2; tabla p03:B402)
	ld a,(0e378h)		;b3f9
	and a			;b3fc
	ret z			;b3fd
	dec a			;b3fe
	call 040abh		;b3ff   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B402: tabla de 2 palabras del despachador (call 0x408D en
;   0xB3FF); lo leen L_40AB (4 bytes)
;   0xb402..0xb406  (4 bytes)
DATA_saltos_B402:
	defb 006h,0b4h	; b402
	defb 041h,0b4h	; b404

; ======================================================================
; CODIGO 0xb406..0xb47c  (118 bytes)
; ======================================================================


anima_borde_izquierdo:		; cambia los bloques de (0x20, 0x00) con los dibujos p03:B490/B486/B47C segun la espera
	ld hl,0e004h		;b406   ; apunta a la espera del estado, en cuadros
	dec (hl)			;b409
	jr z,L_B430		;b40a
	ld a,(hl)			;b40c
	cp 020h		;b40d
	jr c,L_B424		;b40f
	cp 03fh		;b411
	jr nz,L_B418		;b413
	call 04592h		;b415   ; sonido_06: pide el sonido 6
L_B418:
	ld de,00020h		;b418
	ld hl,0b490h		;b41b
	call 044b8h		;b41e
	jp 05e5fh		;b421   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
L_B424:
	ld de,00020h		;b424
	ld hl,0b486h		;b427
	call 044b8h		;b42a
	jp 05e5fh		;b42d   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
L_B430:
	ld de,00020h		;b430
	ld hl,0b47ch		;b433
	call 044b8h		;b436
	call 05e5fh		;b439   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	xor a			;b43c
	ld (0e378h),a		;b43d
	ret			;b440
anima_borde_derecho:		; cambia los bloques de (0x20, 0xB0) con los dibujos p03:B4AE/B4A4/B49A segun la espera
	ld hl,0e004h		;b441   ; apunta a la espera del estado, en cuadros
	dec (hl)			;b444
	jr z,L_B46B		;b445
	ld a,(hl)			;b447
	cp 020h		;b448
	jr c,L_B45F		;b44a
	cp 03fh		;b44c
	jr nz,L_B453		;b44e
	call 04592h		;b450   ; sonido_06: pide el sonido 6
L_B453:
	ld de,0b020h		;b453
	ld hl,0b4aeh		;b456
	call 044b8h		;b459
	jp 05e5fh		;b45c   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
L_B45F:
	ld de,0b020h		;b45f
	ld hl,0b4a4h		;b462
	call 044b8h		;b465
	jp 05e5fh		;b468   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
L_B46B:
	ld de,0b020h		;b46b
	ld hl,0b49ah		;b46e
	call 044b8h		;b471
	call 05e5fh		;b474   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	xor a			;b477
	ld (0e378h),a		;b478
	ret			;b47b

; ----------------------------------------------------------------------
; DATOS dibujo_B47C: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p03:B436 (10 bytes)
;   0xb47c..0xb486  (10 bytes)
DATA_dibujo_B47C:
	defb 002h,001h,038h,039h	; b47c
	defb 03ah,03bh,038h,039h	; b480
	defb 03ah,03bh	; b484

; ----------------------------------------------------------------------
; DATOS dibujo_B486: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p03:B42A (10 bytes)
;   0xb486..0xb490  (10 bytes)
DATA_dibujo_B486:
	defb 002h,001h,03ch,03dh	; b486
	defb 03ah,03fh,039h,019h	; b48a
	defb 03bh,01bh	; b48e

; ----------------------------------------------------------------------
; DATOS dibujo_B490: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p03:B41E (10 bytes)
;   0xb490..0xb49a  (10 bytes)
DATA_dibujo_B490:
	defb 002h,001h,03ch,03dh	; b490
	defb 03eh,03fh,018h,019h	; b494
	defb 01ah,01bh	; b498

; ----------------------------------------------------------------------
; DATOS dibujo_B49A: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p03:B471 (10 bytes)
;   0xb49a..0xb4a4  (10 bytes)
DATA_dibujo_B49A:
	defb 002h,001h,038h,039h	; b49a
	defb 03ah,03bh,038h,039h	; b49e
	defb 03ah,03bh	; b4a2

; ----------------------------------------------------------------------
; DATOS dibujo_B4A4: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p03:B465 (10 bytes)
;   0xb4a4..0xb4ae  (10 bytes)
DATA_dibujo_B4A4:
	defb 002h,001h,03ch,03dh	; b4a4
	defb 03eh,03bh,01ch,038h	; b4a8
	defb 01eh,03ah	; b4ac

; ----------------------------------------------------------------------
; DATOS dibujo_B4AE: dibujo (L_44B8): [filas][columnas] y 4 fichas por celda
;   de 2 x 2; lo leen p03:B459 (10 bytes)
;   0xb4ae..0xb4b8  (10 bytes)
DATA_dibujo_B4AE:
	defb 002h,001h,03ch,03dh	; b4ae
	defb 03eh,03fh,01ch,01dh	; b4b2
	defb 01eh,01fh	; b4b6

; ======================================================================
; CODIGO 0xb4b8..0xb4e7  (47 bytes)
; ======================================================================


sprites_de_0xeb7d:		; 8 sprites en 0xF060: cada bit de 0xEB7D elige una de las dos posiciones de p03:B4F5
	ld a,(0eb7dh)		;b4b8   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	ld c,a			;b4bb
	ld hl,0b4f5h		;b4bc
	ld de,0f060h		;b4bf
	ld b,008h		;b4c2
L_B4C4:
	rl c		;b4c4
	jr c,L_B4D2		;b4c6
	ld a,(hl)			;b4c8
	ld (de),a			;b4c9
	inc hl			;b4ca
	inc de			;b4cb
	ld a,(hl)			;b4cc
	ld (de),a			;b4cd
	inc hl			;b4ce
	inc hl			;b4cf
	jr L_B4DA		;b4d0
L_B4D2:
	inc hl			;b4d2
	inc hl			;b4d3
	ld a,(hl)			;b4d4
	ld (de),a			;b4d5
	inc hl			;b4d6
	inc de			;b4d7
	ld a,(hl)			;b4d8
	ld (de),a			;b4d9
L_B4DA:
	inc hl			;b4da
	inc de			;b4db
	ld a,(hl)			;b4dc
	ld (de),a			;b4dd
	inc hl			;b4de
	inc de			;b4df
	ld a,(hl)			;b4e0
	ld (de),a			;b4e1
	inc hl			;b4e2
	inc de			;b4e3
	djnz L_B4C4		;b4e4
	ret			;b4e6

; ----------------------------------------------------------------------
; DATOS resto_B4E7: lo apuntan con el banco puesto p03:B4BC (0xB4F5); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p03:B4BC (62 bytes)
;   0xb4e7..0xb525  (62 bytes)
DATA_resto_B4E7:
	defb 006h,008h,021h,060h,0f0h,036h,0e0h,023h,023h,023h,023h,010h,0f8h,0c9h,048h,06ch	; b4e7  ..!`.6.####...Hl
	defb 050h,058h,0e0h,002h,028h,050h,020h,058h,0e0h,004h,028h,028h,037h,028h,0e0h,009h	; b4f7  PX..(P X..((7(..
	defb 058h,064h,060h,058h,0e0h,00dh,030h,088h,037h,088h,0e0h,00eh,028h,070h,037h,074h	; b507  Xd`X..0.7...(p7t
	defb 0e0h,00ah,040h,040h,037h,03ch,0e0h,007h,010h,050h,010h,058h,0e0h,006h	; b517  ..@@7<...P.X..

; ======================================================================
; CODIGO 0xb525..0xb563  (62 bytes)
; ======================================================================


crea_proyectil:		; en el primer hueco de 0xEC30 (3 de 16 bytes) un proyectil de clase C delante del personaje (p03:B56E)
	ld hl,0ec30h		;b525
	ld de,00010h		;b528
	ld b,003h		;b52b
L_B52D:
	ld a,(hl)			;b52d
	or a			;b52e
	jr z,L_B535		;b52f
	add hl,de			;b531
	djnz L_B52D		;b532
	ret			;b534
L_B535:
	push hl			;b535
	pop ix		;b536
	xor a			;b538
	ld (hl),c			;b539
	inc l			;b53a
	ld (hl),a			;b53b
	ld d,h			;b53c
	ld e,l			;b53d
	inc de			;b53e
	ld bc,00006h		;b53f
	ldir		;b542
	inc de			;b544
	ld a,(0e3e3h)		;b545   ; lee hacia donde mira en la escena de accion (1-4)
	add a,a			;b548
	ld hl,0b56eh		;b549
	call 040a1h		;b54c   ; hl_mas_a: HL = HL + A
	ld a,(0e3e5h)		;b54f   ; lee la Y del personaje en la escena de accion
	add a,(hl)			;b552
	ld (de),a			;b553
	inc e			;b554
	inc e			;b555
	inc hl			;b556
	ld a,(0e3e7h)		;b557   ; lee la X del personaje en la escena de accion
	add a,(hl)			;b55a
	ld (de),a			;b55b
	ld a,(ix+000h)		;b55c
	dec a			;b55f
	call 040abh		;b560   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B563: tabla de 5 palabras del despachador (call 0x408D en
;   0xB560); lo leen L_40AB (10 bytes)
;   0xb563..0xb56d  (10 bytes)
DATA_saltos_B563:
	defb 025h,0b6h	; b563
	defb 03fh,0b6h	; b565
	defb 0cah,0b6h	; b567
	defb 065h,0b6h	; b569
	defb 009h,0bah	; b56b

; ----------------------------------------------------------------------
; DATOS resto_B56D: lo apuntan con el banco puesto p03:B549 (0xB56E); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p03:B549 (11 bytes)
;   0xb56d..0xb578  (11 bytes)
DATA_resto_B56D:
	defb 0c9h,000h,000h,0f0h,000h,010h,000h,000h,0f0h,000h,010h	; b56d  ...........

; ======================================================================
; CODIGO 0xb578..0xb5cf  (87 bytes)
; ======================================================================


mueve_proyectiles:		; un cuadro de los 3 proyectiles de 0xEC30: su rutina, la velocidad y si sale por arriba
	ld ix,0ec30h		;b578
	ld b,003h		;b57c
L_B57E:
	push bc			;b57e
	ld a,(ix+000h)		;b57f   ; lee la clase del proyectil (0: libre)
	or a			;b582
	jr z,L_B58E		;b583
	call rutina_del_proyectil		;b585   ; rutina_del_proyectil: la rutina de la clase A del proyectil (tabla p03:B5CF)
	call avanza_proyectil		;b588   ; avanza_proyectil: Y += velocidad Y y X += velocidad X en la ficha IX
	call proyectil_fuera		;b58b   ; proyectil_fuera: lo borra si sale por arriba
L_B58E:
	pop bc			;b58e
	ld de,00010h		;b58f
	add ix,de		;b592
	djnz L_B57E		;b594
	ret			;b596
avanza_proyectil:		; Y += velocidad Y y X += velocidad X en la ficha IX
	ld h,(ix+009h)		;b597   ; lee la Y del proyectil
	ld l,(ix+008h)		;b59a   ; lee la Y del proyectil (fraccion)
	ld d,(ix+005h)		;b59d   ; lee la velocidad Y del proyectil (alta)
	ld e,(ix+004h)		;b5a0   ; lee la velocidad Y del proyectil
	add hl,de			;b5a3
	ld (ix+009h),h		;b5a4   ; guarda la Y del proyectil
	ld (ix+008h),l		;b5a7   ; guarda la Y del proyectil (fraccion)
	ld h,(ix+00bh)		;b5aa   ; lee la X del proyectil
	ld l,(ix+00ah)		;b5ad   ; lee la X del proyectil (fraccion)
	ld d,(ix+007h)		;b5b0   ; lee la velocidad X del proyectil (alta)
	ld e,(ix+006h)		;b5b3   ; lee la velocidad X del proyectil
	add hl,de			;b5b6
	ld (ix+00bh),h		;b5b7   ; guarda la X del proyectil
	ld (ix+00ah),l		;b5ba   ; guarda la X del proyectil (fraccion)
	ret			;b5bd
proyectil_fuera:		; lo borra si sale por arriba
	ld a,(ix+00bh)		;b5be   ; lee la X del proyectil
	add a,010h		;b5c1
	cp 010h		;b5c3
	ret nc			;b5c5
	ld (ix+000h),000h		;b5c6   ; la clase del proyectil (0: libre) = 0x00
	ret			;b5ca
rutina_del_proyectil:		; la rutina de la clase A del proyectil (tabla p03:B5CF)
	dec a			;b5cb
	call 040abh		;b5cc   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B5CF: tabla de 5 palabras del despachador (call 0x408D en
;   0xB5CC); lo leen L_40AB (10 bytes)
;   0xb5cf..0xb5d9  (10 bytes)
DATA_saltos_B5CF:
	defb 03eh,0b6h	; b5cf
	defb 05ah,0b6h	; b5d1
	defb 0f4h,0b6h	; b5d3
	defb 0b4h,0b6h	; b5d5
	defb 020h,0bah	; b5d7

; ======================================================================
; CODIGO 0xb5d9..0xb6fa  (289 bytes)
; ======================================================================


L_B5D9:
	ret			;b5d9
borra_proyectiles:		; los 3 proyectiles de 0xEC30 a cero
	ld hl,0ec30h		;b5da
	ld de,0ec31h		;b5dd
	ld bc,0002fh		;b5e0
	xor a			;b5e3
	ld (hl),a			;b5e4
	ldir		;b5e5
	ret			;b5e7
sprites_de_proyectiles:		; los sprites de los 3 proyectiles en 0xF060
	ld a,(0ea00h)		;b5e8
	cp 009h		;b5eb
	ret z			;b5ed
	ld ix,0ec30h		;b5ee
	ld hl,0f060h		;b5f2
	ld b,003h		;b5f5
L_B5F7:
	ld a,(ix+000h)		;b5f7   ; lee la clase del proyectil (0: libre)
	or a			;b5fa
	jr z,L_B619		;b5fb
	ld a,(ix+009h)		;b5fd   ; lee la Y del proyectil
	ld (hl),a			;b600
	inc l			;b601
	ld a,(ix+00bh)		;b602   ; lee la X del proyectil
	ld (hl),a			;b605
	inc l			;b606
	ld a,(ix+002h)		;b607   ; lee el patron del proyectil
	ld (hl),a			;b60a
	inc l			;b60b
	ld a,(ix+003h)		;b60c   ; lee el color del proyectil
	ld (hl),a			;b60f
	inc l			;b610
L_B611:
	ld de,00010h		;b611
	add ix,de		;b614
	djnz L_B5F7		;b616
	ret			;b618
L_B619:
	ld (hl),0e0h		;b619
	inc l			;b61b
	xor a			;b61c
	ld (hl),a			;b61d
	inc l			;b61e
	ld (hl),a			;b61f
	inc l			;b620
	ld (hl),a			;b621
	inc l			;b622
	jr L_B611		;b623
L_B625:
	call L_BA9E		;b625
	ld de,00300h		;b628
	call pon_vx		;b62b   ; pon_vx: la velocidad X = DE
	ld (ix+002h),080h		;b62e   ; el patron del proyectil = 0x80
	ld (ix+003h),00fh		;b632   ; el color del proyectil = 0x0F
	call sonido_15		;b636   ; sonido_15: pide el sonido 0x15
	ret			;b639
L_B63A:
	xor a			;b63a
	ld (ix+000h),a		;b63b   ; guarda la clase del proyectil (0: libre)
L_B63E:
	ret			;b63e
L_B63F:
	ld a,(0e3e3h)		;b63f   ; lee hacia donde mira en la escena de accion (1-4)
	dec a			;b642
	jr nz,L_B63A		;b643
	call L_BAA3		;b645
	ld de,0fd00h		;b648
	call pon_vy		;b64b   ; pon_vy: la velocidad Y = DE
	ld (ix+002h),088h		;b64e   ; el patron del proyectil = 0x88
	ld (ix+003h),00fh		;b652   ; el color del proyectil = 0x0F
	call sonido_15		;b656   ; sonido_15: pide el sonido 0x15
	ret			;b659
L_B65A:
	ld a,(ix+009h)		;b65a   ; lee la Y del proyectil
	cp 006h		;b65d
	ret nc			;b65f
	ld (ix+000h),000h		;b660   ; la clase del proyectil (0: libre) = 0x00
	ret			;b664
L_B665:
	ld (ix+003h),00fh		;b665   ; el color del proyectil = 0x0F
	call proyectil_quieto		;b669   ; proyectil_quieto: las dos velocidades a cero
	ld a,(0e3e3h)		;b66c   ; lee hacia donde mira en la escena de accion (1-4)
	ld b,088h		;b66f
	ld de,0fd00h		;b671
	dec a			;b674
	jr z,L_B68E		;b675
	ld b,08ch		;b677
	ld de,00300h		;b679
	dec a			;b67c
	jr z,L_B68E		;b67d
	ld b,084h		;b67f
	ld de,0fd00h		;b681
	dec a			;b684
	jr z,L_B69F		;b685
	ld b,080h		;b687
	ld de,00300h		;b689
	jr L_B69F		;b68c
L_B68E:
	ld (ix+002h),b		;b68e   ; guarda el patron del proyectil
	ld a,(ix+009h)		;b691   ; lee la Y del proyectil
	cp 074h		;b694
	jr nc,L_B6C5		;b696
	call pon_vy		;b698   ; pon_vy: la velocidad Y = DE
	call sonido_15		;b69b   ; sonido_15: pide el sonido 0x15
	ret			;b69e
L_B69F:
	ld (ix+002h),b		;b69f   ; guarda el patron del proyectil
	ld a,(ix+00bh)		;b6a2   ; lee la X del proyectil
	cp 01ch		;b6a5
	jr c,L_B6C5		;b6a7
	cp 0d8h		;b6a9
	jr nc,L_B6C5		;b6ab
	call pon_vx		;b6ad   ; pon_vx: la velocidad X = DE
	call sonido_15		;b6b0   ; sonido_15: pide el sonido 0x15
	ret			;b6b3
L_B6B4:
	ld a,(ix+009h)		;b6b4   ; lee la Y del proyectil
	add a,088h		;b6b7
	cp 090h		;b6b9
	jr c,L_B6C5		;b6bb
	ld a,(ix+00bh)		;b6bd   ; lee la X del proyectil
	add a,01ch		;b6c0
	cp 034h		;b6c2
	ret nc			;b6c4
L_B6C5:
	ld (ix+000h),000h		;b6c5   ; la clase del proyectil (0: libre) = 0x00
	ret			;b6c9
L_B6CA:
	ld (ix+002h),0b8h		;b6ca   ; el patron del proyectil = 0xB8
	ld (ix+003h),00fh		;b6ce   ; el color del proyectil = 0x0F
	ld a,(ix+009h)		;b6d2   ; lee la Y del proyectil
	add a,004h		;b6d5
	ld (ix+009h),a		;b6d7   ; guarda la Y del proyectil
	xor a			;b6da
	ld (ix+00eh),a		;b6db   ; guarda la rapidez del proyectil
	ld (ix+00ch),a		;b6de
	ld a,(0e3a8h)		;b6e1
	cp 082h		;b6e4
	jr nz,L_B6EC		;b6e6
	ld (ix+00ch),001h		;b6e8
L_B6EC:
	ld a,003h		;b6ec
	ld (ix+00dh),a		;b6ee   ; guarda la cuenta del proyectil
	jp proyectil_quieto		;b6f1   ; proyectil_quieto: las dos velocidades a cero
proyectil_por_pasos:		; la rutina del paso (ix+1) del proyectil (tabla p03:B6FA)
	ld a,(ix+001h)		;b6f4   ; lee el paso del proyectil
	call 040abh		;b6f7   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_B6FA: tabla de 2 palabras del despachador (call 0x408D en
;   0xB6F7); lo leen L_40AB (4 bytes)
;   0xb6fa..0xb6fe  (4 bytes)
DATA_saltos_B6FA:
	defb 0feh,0b6h	; b6fa
	defb 034h,0b7h	; b6fc

; ======================================================================
; CODIGO 0xb6fe..0xb889  (395 bytes)
; ======================================================================


L_B6FE:
	ld hl,(0e3e6h)		;b6fe   ; lee la X del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ld (ix+00ah),l		;b701   ; guarda la X del proyectil (fraccion)
	ld (ix+00bh),h		;b704   ; guarda la X del proyectil
	dec (ix+00ch)		;b707
	jr z,L_B712		;b70a
	ld a,(0e008h)		;b70c   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	bit 4,a		;b70f
	ret z			;b711
L_B712:
	call sonido_18		;b712   ; sonido_18: pide el sonido 0x18
	inc (ix+001h)		;b715   ; sube el paso del proyectil
	ld b,001h		;b718
	ld a,r		;b71a
	rra			;b71c
	jr c,L_B721		;b71d
	ld b,004h		;b71f
L_B721:
	ld (ix+00fh),b		;b721   ; guarda el angulo del proyectil
	ld a,(0e3a6h)		;b724
	cp 040h		;b727
	ld c,000h		;b729
	jr nc,L_B72E		;b72b
	inc c			;b72d
L_B72E:
	ld (ix+00eh),c		;b72e   ; guarda la rapidez del proyectil
	jp velocidad_por_angulo		;b731   ; velocidad_por_angulo: las velocidades del angulo y la rapidez (p03:B8C6, p03:B8BA)
L_B734:
	call proyectil_rebota_x		;b734   ; proyectil_rebota_x: en las X 0x28 o 0xD0 rebota
	call proyectil_rebota_y		;b737   ; proyectil_rebota_y: por arriba rebota; por abajo se pierde (0xE3A8 - 1 y, al acabarse, 0xE3F6 - 1)
	ld a,(ix+000h)		;b73a   ; lee la clase del proyectil (0: libre)
	or a			;b73d
	ret z			;b73e
	ld a,(ix+005h)		;b73f   ; lee la velocidad Y del proyectil (alta)
	rla			;b742
	call nc,proyectil_contra_el_personaje		;b743   ; proyectil_contra_el_personaje: si llega a la altura del personaje y lo toca, rebota y cambia de angulo
	jp proyectil_contra_bloques		;b746   ; proyectil_contra_bloques: mira los cuatro puntos del proyectil contra los bloques (p03:B906)
proyectil_rebota_x:		; en las X 0x28 o 0xD0 rebota
	ld d,028h		;b749
	ld a,(ix+00bh)		;b74b   ; lee la X del proyectil
	cp 028h		;b74e
	jr c,L_B757		;b750
	ld d,0d0h		;b752
	cp 0d0h		;b754
	ret c			;b756
L_B757:
	ld (ix+00bh),d		;b757   ; guarda la X del proyectil
	ld (ix+00ah),000h		;b75a   ; la X del proyectil (fraccion) = 0x00
invierte_vx:		; velocidad X = - velocidad X
	ld d,(ix+007h)		;b75e   ; lee la velocidad X del proyectil (alta)
	ld e,(ix+006h)		;b761   ; lee la velocidad X del proyectil
	call 043adh		;b764   ; de_negativo: DE = -DE
	jp pon_vx		;b767   ; pon_vx: la velocidad X = DE
proyectil_rebota_y:		; por arriba rebota; por abajo se pierde (0xE3A8 - 1 y, al acabarse, 0xE3F6 - 1)
	ld d,008h		;b76a
	ld a,(ix+009h)		;b76c   ; lee la Y del proyectil
	cp 008h		;b76f
	jr c,L_B789		;b771
	cp 0c0h		;b773
	ret c			;b775
	xor a			;b776
	ld (ix+000h),a		;b777   ; guarda la clase del proyectil (0: libre)
	call 045a1h		;b77a   ; sonido_29: pide el sonido 0x29
	ld hl,0e3a8h		;b77d
	dec (hl)			;b780
	ld a,(hl)			;b781
	or a			;b782
	ret nz			;b783
	ld hl,0e3f6h		;b784   ; apunta a la vida en la escena de accion
	dec (hl)			;b787
	ret			;b788
L_B789:
	ld (ix+009h),d		;b789   ; guarda la Y del proyectil
	ld (ix+008h),000h		;b78c   ; la Y del proyectil (fraccion) = 0x00
invierte_vy:		; velocidad Y = - velocidad Y
	ld d,(ix+005h)		;b790   ; lee la velocidad Y del proyectil (alta)
	ld e,(ix+004h)		;b793   ; lee la velocidad Y del proyectil
	call 043adh		;b796   ; de_negativo: DE = -DE
	jp pon_vy		;b799   ; pon_vy: la velocidad Y = DE
proyectil_contra_el_personaje:		; si llega a la altura del personaje y lo toca, rebota y cambia de angulo
	ld de,0e90fh		;b79c
	ld a,(0e3fah)		;b79f
	or a			;b7a2
	jr z,L_B7A8		;b7a3
	ld de,0e117h		;b7a5
L_B7A8:
	ld a,(0e3e7h)		;b7a8   ; lee la X del personaje en la escena de accion
	sub (ix+00bh)		;b7ab   ; le resta la X del proyectil
	jr nc,L_B7B4		;b7ae
	cp d			;b7b0
	ret c			;b7b1
	jr L_B7B6		;b7b2
L_B7B4:
	cp e			;b7b4
	ret nc			;b7b5
L_B7B6:
	ld a,0a4h		;b7b6
	sub (ix+009h)		;b7b8   ; le resta la Y del proyectil
	ret nc			;b7bb
	ld a,0a8h		;b7bc
	sub (ix+009h)		;b7be   ; le resta la Y del proyectil
	ret c			;b7c1
	call sonido_19		;b7c2   ; sonido_19: pide el sonido 0x19
	xor a			;b7c5
	ld (ix+009h),0a4h		;b7c6   ; la Y del proyectil = 0xA4
	ld (ix+008h),a		;b7ca   ; guarda la Y del proyectil (fraccion)
	call L_B7E0		;b7cd
	call L_B7F5		;b7d0
	call L_B80F		;b7d3
	ld a,(0e8f2h)		;b7d6
	or a			;b7d9
	call z,L_B845		;b7da
	jp velocidad_por_angulo		;b7dd   ; velocidad_por_angulo: las velocidades del angulo y la rapidez (p03:B8C6, p03:B8BA)
L_B7E0:
	ld a,(ix+007h)		;b7e0   ; lee la velocidad X del proyectil (alta)
	rla			;b7e3
	ld a,(ix+00fh)		;b7e4   ; lee el angulo del proyectil
	jr c,L_B7EF		;b7e7
	cp 003h		;b7e9
	jp c,refleja_angulo		;b7eb   ; refleja_angulo: el angulo (ix+0x0F) reflejado (p03:B889)
	ret			;b7ee
L_B7EF:
	cp 003h		;b7ef
	jp nc,refleja_angulo		;b7f1   ; refleja_angulo: el angulo (ix+0x0F) reflejado (p03:B889)
	ret			;b7f4
L_B7F5:
	dec (ix+00dh)		;b7f5   ; baja la cuenta del proyectil
	ld a,(ix+00dh)		;b7f8   ; lee la cuenta del proyectil
	or a			;b7fb
	ret nz			;b7fc
	ld (ix+00dh),008h		;b7fd   ; la cuenta del proyectil = 0x08
	ld a,(ix+00eh)		;b801   ; lee la rapidez del proyectil
	inc a			;b804
	cp 004h		;b805
	jr nz,L_B80B		;b807
	ld a,003h		;b809
L_B80B:
	ld (ix+00eh),a		;b80b   ; guarda la rapidez del proyectil
	ret			;b80e
L_B80F:
	xor a			;b80f
	ld (0e8f2h),a		;b810
	ld a,(0e3f3h)		;b813   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
	bit 2,a		;b816
	jr nz,L_B831		;b818
	bit 3,a		;b81a
	ret z			;b81c
	ld a,001h		;b81d
	ld (0e8f2h),a		;b81f
	ld a,(ix+00fh)		;b822   ; lee el angulo del proyectil
	cp 003h		;b825
	jr c,refleja_angulo		;b827
	inc a			;b829
	cp 006h		;b82a
	dec a			;b82c
L_B82D:
	ld (ix+00fh),a		;b82d   ; guarda el angulo del proyectil
	ret			;b830
L_B831:
	ld a,001h		;b831
	ld (0e8f2h),a		;b833
	ld a,(ix+00fh)		;b836   ; lee el angulo del proyectil
	cp 003h		;b839
	jr nc,refleja_angulo		;b83b
	dec a			;b83d
	cp 0ffh		;b83e
	jr nz,L_B82D		;b840
	xor a			;b842
	jr L_B82D		;b843
L_B845:
	ld a,(0e3fah)		;b845
	or a			;b848
	jr nz,L_B85D		;b849
	ld a,(0e3e7h)		;b84b   ; lee la X del personaje en la escena de accion
	sub 00ah		;b84e
	cp (ix+00bh)		;b850   ; compara con la X del proyectil
	jr nc,L_B875		;b853
	add a,01dh		;b855
	cp (ix+00bh)		;b857   ; compara con la X del proyectil
	ret nc			;b85a
	jr L_B86D		;b85b
L_B85D:
	ld a,(0e3e7h)		;b85d   ; lee la X del personaje en la escena de accion
	sub 012h		;b860
	cp (ix+00bh)		;b862   ; compara con la X del proyectil
	jr nc,L_B875		;b865
	add a,02dh		;b867
	cp (ix+00bh)		;b869   ; compara con la X del proyectil
	ret nc			;b86c
L_B86D:
	ld a,(ix+00fh)		;b86d   ; lee el angulo del proyectil
	cp 003h		;b870
	jr c,refleja_angulo		;b872
	ret			;b874
L_B875:
	ld a,(ix+00fh)		;b875   ; lee el angulo del proyectil
	cp 003h		;b878
	ret c			;b87a
refleja_angulo:		; el angulo (ix+0x0F) reflejado (p03:B889)
	ld a,(ix+00fh)		;b87b   ; lee el angulo del proyectil
	ld hl,0b889h		;b87e
	call 040a1h		;b881   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;b884
	ld (ix+00fh),a		;b885   ; guarda el angulo del proyectil
	ret			;b888

; ----------------------------------------------------------------------
; DATOS resto_B889: lo apuntan con el banco puesto p03:B87E (0xB889); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p03:B87E (6 bytes)
;   0xb889..0xb88f  (6 bytes)
DATA_resto_B889:
	defb 005h,004h,003h,002h,001h,000h	; b889

; ======================================================================
; CODIGO 0xb88f..0xb8ba  (43 bytes)
; ======================================================================


velocidad_por_angulo:		; las velocidades del angulo y la rapidez (p03:B8C6, p03:B8BA)
	ld a,(ix+00fh)		;b88f   ; lee el angulo del proyectil
	ld b,(ix+00eh)		;b892   ; lee la rapidez del proyectil
	inc b			;b895
	push af			;b896
	ld de,0b8c6h		;b897
	call 043a4h		;b89a   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld hl,00000h		;b89d
	push bc			;b8a0
L_B8A1:
	add hl,de			;b8a1
	djnz L_B8A1		;b8a2
	ex de,hl			;b8a4
	call pon_vx		;b8a5   ; pon_vx: la velocidad X = DE
	pop bc			;b8a8
	pop af			;b8a9
	ld de,0b8bah		;b8aa
	call 043a4h		;b8ad   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld hl,00000h		;b8b0
L_B8B3:
	add hl,de			;b8b3
	djnz L_B8B3		;b8b4
	ex de,hl			;b8b6
	jp pon_vy		;b8b7   ; pon_vy: la velocidad Y = DE

; ----------------------------------------------------------------------
; DATOS resto_B8BA: lo apuntan con el banco puesto p03:B8AA (0xB8BA), p03:B897
;   (0xB8C6); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p03:B8AA, p03:B897 (24 bytes)
;   0xb8ba..0xb8d2  (24 bytes)
DATA_resto_B8BA:
	defb 080h,0ffh,04bh,0ffh,023h,0ffh,023h,0ffh,04bh,0ffh,080h,0ffh,023h,0ffh,04bh,0ffh	; b8ba  ..K.#.#.K...#.K.
	defb 080h,0ffh,080h,000h,0b5h,000h,0ddh,000h	; b8ca  ........

; ======================================================================
; CODIGO 0xb8d2..0xb908  (54 bytes)
; ======================================================================


proyectil_contra_bloques:		; mira los cuatro puntos del proyectil contra los bloques (p03:B906)
	ld a,(ix+009h)		;b8d2   ; lee la Y del proyectil
	cp 0a0h		;b8d5
	ret nc			;b8d7
	ld c,000h		;b8d8
	bit 7,(ix+005h)		;b8da   ; mira el bit 7 de la velocidad Y del proyectil (alta)
	jr z,L_B8E2		;b8de
	ld c,002h		;b8e0
L_B8E2:
	bit 7,(ix+007h)		;b8e2   ; mira el bit 7 de la velocidad X del proyectil (alta)
	jr z,L_B8EA		;b8e6
	set 0,c		;b8e8
L_B8EA:
	ld b,004h		;b8ea
L_B8EC:
	ld hl,0b906h		;b8ec
	ld a,b			;b8ef
	add a,a			;b8f0
	call 040a1h		;b8f1   ; hl_mas_a: HL = HL + A
	ld a,(ix+009h)		;b8f4   ; lee la Y del proyectil
	add a,(hl)			;b8f7
	ld e,a			;b8f8
	inc hl			;b8f9
	ld a,(ix+00bh)		;b8fa   ; lee la X del proyectil
	add a,(hl)			;b8fd
	ld d,a			;b8fe
	ex de,hl			;b8ff
	push bc			;b900
	call choque_con_bloque		;b901   ; choque_con_bloque: si el punto HL da en un bloque, rebota por el lado que toca
	pop bc			;b904
	djnz L_B8EC		;b905
	ret			;b907

; ----------------------------------------------------------------------
; DATOS resto_B908: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (32 bytes)
;   0xb908..0xb928  (32 bytes)
DATA_resto_B908:
	defb 008h,008h,008h,000h,000h,008h,000h,000h,000h,008h,000h,000h,008h,008h,008h,000h	; b908  ................
	defb 008h,000h,000h,000h,008h,008h,000h,008h,008h,008h,008h,000h,000h,008h,000h,000h	; b918  ................

; ======================================================================
; CODIGO 0xb928..0xbb1a  (498 bytes)
; ======================================================================


choque_con_bloque:		; si el punto HL da en un bloque, rebota por el lado que toca
	push hl			;b928
	push bc			;b929
	call golpea_bloque		;b92a   ; golpea_bloque: acarreo si el punto no es duro; si lo es le quita un golpe y, al romperse, lo borra y suelta lo que guardaba
	pop bc			;b92d
	pop de			;b92e
	ret c			;b92f
	ld l,(ix+009h)		;b930   ; lee la Y del proyectil
	ld h,(ix+00bh)		;b933   ; lee la X del proyectil
	dec c			;b936
	jr z,L_B968		;b937
	dec c			;b939
	jr z,L_B982		;b93a
	dec c			;b93c
	jp z,L_B99C		;b93d
	ld a,d			;b940
	and 007h		;b941
	ld d,a			;b943
	ld a,e			;b944
	and 007h		;b945
	cp d			;b947
	jr c,L_B959		;b948
L_B94A:
	ld a,h			;b94a
	and 0f8h		;b94b
	dec a			;b94d
	ld (ix+00bh),a		;b94e   ; guarda la X del proyectil
	bit 7,(ix+007h)		;b951   ; mira el bit 7 de la velocidad X del proyectil (alta)
	ret nz			;b955
	jp invierte_vx		;b956   ; invierte_vx: velocidad X = - velocidad X
L_B959:
	ld a,l			;b959
	and 0f8h		;b95a
	dec a			;b95c
	ld (ix+009h),a		;b95d   ; guarda la Y del proyectil
	bit 7,(ix+005h)		;b960   ; mira el bit 7 de la velocidad Y del proyectil (alta)
	ret nz			;b964
	jp invierte_vy		;b965   ; invierte_vy: velocidad Y = - velocidad Y
L_B968:
	ld a,e			;b968
	and 007h		;b969
	ld e,a			;b96b
	ld a,d			;b96c
	cpl			;b96d
	and 007h		;b96e
	cp e			;b970
	jr nc,L_B959		;b971
L_B973:
	ld a,h			;b973
	or 007h		;b974
	inc a			;b976
	ld (ix+00bh),a		;b977   ; guarda la X del proyectil
	bit 7,(ix+007h)		;b97a   ; mira el bit 7 de la velocidad X del proyectil (alta)
	ret z			;b97e
	jp invierte_vx		;b97f   ; invierte_vx: velocidad X = - velocidad X
L_B982:
	ld a,d			;b982
	and 007h		;b983
	ld d,a			;b985
	ld a,e			;b986
	cpl			;b987
	and 007h		;b988
	cp d			;b98a
	jr nc,L_B94A		;b98b
L_B98D:
	ld a,l			;b98d
	or 007h		;b98e
	inc a			;b990
	ld (ix+009h),a		;b991   ; guarda la Y del proyectil
	bit 7,(ix+005h)		;b994   ; mira el bit 7 de la velocidad Y del proyectil (alta)
	ret z			;b998
	jp invierte_vy		;b999   ; invierte_vy: velocidad Y = - velocidad Y
L_B99C:
	ld a,d			;b99c
	cpl			;b99d
	and 007h		;b99e
	ld d,a			;b9a0
	ld a,e			;b9a1
	cpl			;b9a2
	and 007h		;b9a3
	cp d			;b9a5
	jr nc,L_B973		;b9a6
	jr L_B98D		;b9a8
golpea_bloque:		; acarreo si el punto no es duro; si lo es le quita un golpe y, al romperse, lo borra y suelta lo que guardaba
	call 04509h		;b9aa   ; mapa_de_bloques: HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
	push hl			;b9ad
	ld de,0f703h		;b9ae
	add hl,de			;b9b1
	ex de,hl			;b9b2
	pop hl			;b9b3
	ld a,(hl)			;b9b4
	cp 012h		;b9b5
	ret c			;b9b7
	ld a,(de)			;b9b8
	dec a			;b9b9
	ld (de),a			;b9ba
	and 01fh		;b9bb
	jr z,L_B9C4		;b9bd
	call sonido_1a		;b9bf   ; sonido_1a: pide el sonido 0x1A
	and a			;b9c2
	ret			;b9c3
L_B9C4:
	push hl			;b9c4
	ld hl,0e3a6h		;b9c5
	dec (hl)			;b9c8
	call sonido_1b		;b9c9   ; sonido_1b: pide el sonido 0x1B
	ld a,(hl)			;b9cc
	and 01fh		;b9cd
	jr nz,L_B9D6		;b9cf
	ld a,008h		;b9d1
	ld (0e3aah),a		;b9d3
L_B9D6:
	ld a,(de)			;b9d6
	bit 7,a		;b9d7
	call nz,L_B9F7		;b9d9
	bit 6,a		;b9dc
	call nz,L_B9FD		;b9de
	bit 5,a		;b9e1
	call nz,L_BA03		;b9e3
	xor a			;b9e6
	ld (de),a			;b9e7
	pop hl			;b9e8
	ld a,011h		;b9e9
	ld (hl),a			;b9eb
	ld a,h			;b9ec
	sub 0b5h		;b9ed
	ld h,a			;b9ef
	ld a,011h		;b9f0
	call 0004dh		;b9f2   ; BIOS WRTVRM - Writes data in VRAM
	and a			;b9f5
	ret			;b9f6
L_B9F7:
	ld hl,0e400h		;b9f7   ; apunta a los 8 actores de la sala (0x80 bytes cada uno)
	ld (hl),001h		;b9fa
	ret			;b9fc
L_B9FD:
	ld hl,0e401h		;b9fd
	ld (hl),001h		;ba00
	ret			;ba02
L_BA03:
	ld hl,0e402h		;ba03
	ld (hl),001h		;ba06
	ret			;ba08
L_BA09:
	ld (ix+002h),090h		;ba09   ; el patron del proyectil = 0x90
	ld (ix+003h),008h		;ba0d   ; el color del proyectil = 0x08
L_BA11:
	ld a,(0e3e5h)		;ba11   ; lee la Y del personaje en la escena de accion
	ld (ix+009h),a		;ba14   ; guarda la Y del proyectil
	ld a,(0e3e7h)		;ba17   ; lee la X del personaje en la escena de accion
	sub 010h		;ba1a
	ld (ix+00bh),a		;ba1c   ; guarda la X del proyectil
	ret			;ba1f
L_BA20:
	ld a,(ix+001h)		;ba20   ; lee el paso del proyectil
	dec a			;ba23
	jr z,L_BA39		;ba24
	dec a			;ba26
	jr z,L_BA6C		;ba27
	dec a			;ba29
	jr z,L_BA94		;ba2a
	call L_BA11		;ba2c
	ld a,(0e009h)		;ba2f   ; lee las teclas que hay
	and 010h		;ba32
	ret nz			;ba34
	inc (ix+001h)		;ba35   ; sube el paso del proyectil
	ret			;ba38
L_BA39:
	call L_BA11		;ba39
	ld a,(0e008h)		;ba3c   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo, 5 menu)
	and 010h		;ba3f
	ret z			;ba41
	call sonido_20		;ba42   ; sonido_20: pide el sonido 0x20
	inc (ix+001h)		;ba45   ; sube el paso del proyectil
	ld a,(0e009h)		;ba48   ; lee las teclas que hay
	rra			;ba4b
	jr c,L_BA59		;ba4c
	rra			;ba4e
	jr nc,L_BA64		;ba4f
	ld de,0ff00h		;ba51
	ld hl,00000h		;ba54
	jr pon_velocidades		;ba57
L_BA59:
	rra			;ba59
	jr c,L_BA64		;ba5a
	ld de,0fe00h		;ba5c
	ld hl,0fd00h		;ba5f
	jr pon_velocidades		;ba62
L_BA64:
	ld de,0fd80h		;ba64
	ld hl,0fe00h		;ba67
	jr pon_velocidades		;ba6a
L_BA6C:
	ld a,(ix+009h)		;ba6c   ; lee la Y del proyectil
	cp 0a8h		;ba6f
	jr nc,L_BA80		;ba71
	ld h,(ix+005h)		;ba73   ; lee la velocidad Y del proyectil (alta)
	ld l,(ix+004h)		;ba76   ; lee la velocidad Y del proyectil
	ld de,00040h		;ba79
	add hl,de			;ba7c
	ex de,hl			;ba7d
	jr pon_vy		;ba7e
L_BA80:
	call sonido_5e		;ba80   ; sonido_5e: pide el sonido 0x5E
	ld (ix+009h),0a8h		;ba83   ; la Y del proyectil = 0xA8
	ld (ix+002h),098h		;ba87   ; el patron del proyectil = 0x98
	ld (ix+00dh),010h		;ba8b   ; la cuenta del proyectil = 0x10
	inc (ix+001h)		;ba8f   ; sube el paso del proyectil
	jr proyectil_quieto		;ba92
L_BA94:
	dec (ix+00dh)		;ba94   ; baja la cuenta del proyectil
	ret nz			;ba97
	jp L_B6C5		;ba98
proyectil_quieto:		; las dos velocidades a cero
	call L_BAA3		;ba9b
L_BA9E:
	ld de,00000h		;ba9e
	jr pon_vy		;baa1
L_BAA3:
	ld de,00000h		;baa3
	jr pon_vx		;baa6
pon_velocidades:		; velocidad X = DE y velocidad Y = HL
	call pon_vx		;baa8   ; pon_vx: la velocidad X = DE
	ex de,hl			;baab
pon_vy:		; la velocidad Y = DE
	ld (ix+005h),d		;baac   ; guarda la velocidad Y del proyectil (alta)
	ld (ix+004h),e		;baaf   ; guarda la velocidad Y del proyectil
	ret			;bab2
pon_vx:		; la velocidad X = DE
	ld (ix+007h),d		;bab3   ; guarda la velocidad X del proyectil (alta)
	ld (ix+006h),e		;bab6   ; guarda la velocidad X del proyectil
	ret			;bab9
sonido_08:		; pide el sonido 8
	ld a,008h		;baba
	jp 0415bh		;babc   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_09:		; pide el sonido 9
	ld a,009h		;babf
	jp 0415bh		;bac1   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_27:		; pide el sonido 0x27
	ld a,027h		;bac4
	jp 0415bh		;bac6   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_21:		; pide el sonido 0x21
	ld a,021h		;bac9
	jp 0415bh		;bacb   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_18:		; pide el sonido 0x18
	ld a,018h		;bace
	jp 0415bh		;bad0   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_1b:		; pide el sonido 0x1B
	ld a,01bh		;bad3
	jp 0415bh		;bad5   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_1a:		; pide el sonido 0x1A
	ld a,01ah		;bad8
	jp 0415bh		;bada   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_19:		; pide el sonido 0x19
	ld a,019h		;badd
	jp 0415bh		;badf   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_1f:		; pide el sonido 0x1F
	ld a,01fh		;bae2
	jp 0415bh		;bae4   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_20:		; pide el sonido 0x20
	ld a,020h		;bae7
	jp 0415bh		;bae9   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_0a:		; pide el sonido 0x0A
	ld a,00ah		;baec
	jp 0415bh		;baee   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_15:		; pide el sonido 0x15
	ld a,015h		;baf1
	jp 0415bh		;baf3   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_5d:		; pide el sonido 0x5D
	ld a,05dh		;baf6
	jp 0415bh		;baf8   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_5e:		; pide el sonido 0x5E
	ld a,05eh		;bafb
	jp 0415bh		;bafd   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_3b:		; pide el sonido 0x3B
	ld a,03bh		;bb00
	jp 0415bh		;bb02   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_32:		; pide el sonido 0x32
	ld a,032h		;bb05
	jp 0415bh		;bb07   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_3f:		; pide el sonido 0x3F
	ld a,03fh		;bb0a
	jp 0415bh		;bb0c   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
sonido_42:		; pide el sonido 0x42
	ld a,042h		;bb0f
	jp 0415bh		;bb11   ; pide_sonido: pide el sonido o la musica A al motor (p29:6000, bancos 29-30-31) y devuelve el reparto
graba_en_el_otro_cartucho:		; un paso de la grabacion en el otro cartucho (0xE38E, tabla p03:BB1A)
	ld a,(0e38eh)		;bb14   ; lee el paso del menu de carga
	call 040abh		;bb17   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_BB1A: tabla de 3 palabras del despachador (call 0x408D en
;   0xBB17); lo leen L_40AB (6 bytes)
;   0xbb1a..0xbb20  (6 bytes)
DATA_saltos_BB1A:
	defb 025h,0bbh	; bb1a
	defb 037h,0bbh	; bb1c
	defb 044h,0bbh	; bb1e

; ======================================================================
; CODIGO 0xbb20..0xbb65  (69 bytes)
; ======================================================================


graba_siguiente:		; 0xE38E + 1
	ld hl,0e38eh		;bb20   ; apunta a el paso del menu de carga
	inc (hl)			;bb23
	ret			;bb24
L_BB25:
	call 050ebh		;bb25   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	call aviso_de_grabar		;bb28   ; aviso_de_grabar: el nombre y el aviso de p03:BEC5
	call guarda_nombres		;bb2b   ; guarda_nombres: los nombres 0xEB00/0xEB09 a la partida (0xEB42/0xEB4A)
	call guarda_objetos		;bb2e   ; guarda_objetos: el bit 0 de cada objeto de 0xE9D0 a los bits de 0xEB53-0xEB55
	call 0457eh		;bb31   ; sonido_01: pide el sonido 1
	jp graba_siguiente		;bb34   ; graba_siguiente: 0xE38E + 1
L_BB37:
	call 06000h		;bb37   ; otro_cartucho_lee: prepara la peticion en 0xE012 (p01:6047) y llama al otro cartucho con C = 0x0A (p01:6073)
	ld a,(0e38fh)		;bb3a   ; lee el resultado de la carga (2: fallo)
	cp 002h		;bb3d
	jr z,L_BB50		;bb3f
	jp graba_siguiente		;bb41   ; graba_siguiente: 0xE38E + 1
L_BB44:
	call 045e1h		;bb44   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;bb47   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,001h		;bb4a
	ld (0e38fh),a		;bb4c   ; guarda el resultado de la carga (2: fallo)
	ret			;bb4f
L_BB50:
	call L_BEA1		;bb50
	call 045e1h		;bb53   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;bb56   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,002h		;bb59
	ld (0e38fh),a		;bb5b   ; guarda el resultado de la carga (2: fallo)
	ret			;bb5e
comprueba_el_otro_cartucho:		; un paso de la comprobacion: lo vuelve a leer y lo compara con 0xEB40 (tabla p03:BB65)
	ld a,(0e38eh)		;bb5f   ; lee el paso del menu de carga
	call 040abh		;bb62   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_BB65: tabla de 4 palabras del despachador (call 0x408D en
;   0xBB62); lo leen L_40AB (8 bytes)
;   0xbb65..0xbb6d  (8 bytes)
DATA_saltos_BB65:
	defb 06dh,0bbh	; bb65
	defb 079h,0bbh	; bb67
	defb 086h,0bbh	; bb69
	defb 099h,0bbh	; bb6b

; ======================================================================
; CODIGO 0xbb6d..0xbbba  (77 bytes)
; ======================================================================


L_BB6D:
	call 050ebh		;bb6d   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	call aviso_de_comprobar		;bb70   ; aviso_de_comprobar: el nombre y el aviso de p03:BF7D
	call 0457eh		;bb73   ; sonido_01: pide el sonido 1
	jp graba_siguiente		;bb76   ; graba_siguiente: 0xE38E + 1
L_BB79:
	call 06026h		;bb79   ; otro_cartucho_graba: prepara la peticion en 0xE012 y llama al otro cartucho con C = 0x0B (p01:609D)
	ld a,(0e38fh)		;bb7c   ; lee el resultado de la carga (2: fallo)
	cp 002h		;bb7f
	jr z,L_BBA5		;bb81
	jp graba_siguiente		;bb83   ; graba_siguiente: 0xE38E + 1
L_BB86:
	ld hl,0eb40h		;bb86   ; apunta a la sala (16 bits)
	ld de,0e8e0h		;bb89
	ld b,03eh		;bb8c
L_BB8E:
	ld a,(de)			;bb8e
	cp (hl)			;bb8f
	jr nz,L_BBA5		;bb90
	inc hl			;bb92
	inc de			;bb93
	djnz L_BB8E		;bb94
	jp graba_siguiente		;bb96   ; graba_siguiente: 0xE38E + 1
L_BB99:
	call 045e1h		;bb99   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;bb9c   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,001h		;bb9f
	ld (0e38fh),a		;bba1   ; guarda el resultado de la carga (2: fallo)
	ret			;bba4
L_BBA5:
	call L_BF7A		;bba5
	call 045e1h		;bba8   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;bbab   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,002h		;bbae
	ld (0e38fh),a		;bbb0   ; guarda el resultado de la carga (2: fallo)
	ret			;bbb3
graba_en_disco:		; un paso de la grabacion en disco (tabla p03:BBBA)
	ld a,(0e38eh)		;bbb4   ; lee el paso del menu de carga
	call 040abh		;bbb7   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_BBBA: tabla de 3 palabras del despachador (call 0x408D en
;   0xBBB7); lo leen L_40AB (6 bytes)
;   0xbbba..0xbbc0  (6 bytes)
DATA_saltos_BBBA:
	defb 0c5h,0bbh	; bbba
	defb 0d7h,0bbh	; bbbc
	defb 0e4h,0bbh	; bbbe

; ======================================================================
; CODIGO 0xbbc0..0xbc05  (69 bytes)
; ======================================================================


L_BBC0:
	ld hl,0e38eh		;bbc0   ; apunta a el paso del menu de carga
	inc (hl)			;bbc3
	ret			;bbc4
L_BBC5:
	call 050ebh		;bbc5   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	call aviso_de_grabar		;bbc8   ; aviso_de_grabar: el nombre y el aviso de p03:BEC5
	call guarda_nombres		;bbcb   ; guarda_nombres: los nombres 0xEB00/0xEB09 a la partida (0xEB42/0xEB4A)
	call guarda_objetos		;bbce   ; guarda_objetos: el bit 0 de cada objeto de 0xE9D0 a los bits de 0xEB53-0xEB55
	call 0457eh		;bbd1   ; sonido_01: pide el sonido 1
	jp L_BBC0		;bbd4
L_BBD7:
	call disco_escribe		;bbd7   ; disco_escribe: BDOS: crea el fichero de p03:BC85, escribe los 0x3E bytes de la partida y lo cierra
	ld a,(0e38fh)		;bbda   ; lee el resultado de la carga (2: fallo)
	cp 002h		;bbdd
	jr z,L_BBF0		;bbdf
	jp L_BBC0		;bbe1
L_BBE4:
	call 045e1h		;bbe4   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;bbe7   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,001h		;bbea
	ld (0e38fh),a		;bbec   ; guarda el resultado de la carga (2: fallo)
	ret			;bbef
L_BBF0:
	call L_BEA1		;bbf0
	call 045e1h		;bbf3   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;bbf6   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,002h		;bbf9
	ld (0e38fh),a		;bbfb   ; guarda el resultado de la carga (2: fallo)
	ret			;bbfe
comprueba_el_disco:		; un paso de la comprobacion del disco (tabla p03:BC05)
	ld a,(0e38eh)		;bbff   ; lee el paso del menu de carga
	call 040abh		;bc02   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_BC05: tabla de 4 palabras del despachador (call 0x408D en
;   0xBC02); lo leen L_40AB (8 bytes)
;   0xbc05..0xbc0d  (8 bytes)
DATA_saltos_BC05:
	defb 00dh,0bch	; bc05
	defb 019h,0bch	; bc07
	defb 026h,0bch	; bc09
	defb 039h,0bch	; bc0b

; ======================================================================
; CODIGO 0xbc0d..0xbc85  (120 bytes)
; ======================================================================


L_BC0D:
	call 050ebh		;bc0d   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	call aviso_de_comprobar		;bc10   ; aviso_de_comprobar: el nombre y el aviso de p03:BF7D
	call 0457eh		;bc13   ; sonido_01: pide el sonido 1
	jp L_BBC0		;bc16
L_BC19:
	call disco_lee		;bc19   ; disco_lee: BDOS: abre el fichero de p03:BC85 y lee los 0x3E bytes a 0xE03A
	ld a,(0e38fh)		;bc1c   ; lee el resultado de la carga (2: fallo)
	cp 002h		;bc1f
	jr z,L_BC45		;bc21
	jp L_BBC0		;bc23
L_BC26:
	ld hl,0eb40h		;bc26   ; apunta a la sala (16 bits)
	ld de,0e03ah		;bc29
	ld b,03eh		;bc2c
L_BC2E:
	ld a,(de)			;bc2e
	cp (hl)			;bc2f
	jr nz,L_BC45		;bc30
	inc hl			;bc32
	inc de			;bc33
	djnz L_BC2E		;bc34
	jp L_BBC0		;bc36
L_BC39:
	call 045e1h		;bc39   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;bc3c   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,001h		;bc3f
	ld (0e38fh),a		;bc41   ; guarda el resultado de la carga (2: fallo)
	ret			;bc44
L_BC45:
	call L_BF7A		;bc45
	call 045e1h		;bc48   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;bc4b   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,002h		;bc4e
	ld (0e38fh),a		;bc50   ; guarda el resultado de la carga (2: fallo)
	ret			;bc53
disco_escribe:		; BDOS: crea el fichero de p03:BC85, escribe los 0x3E bytes de la partida y lo cierra
	ld a,(0fd9ah)		;bc54
	ld (0e039h),a		;bc57   ; guarda la copia del primer byte de H.KEYI
	ld a,0c9h		;bc5a
	ld (0fd9ah),a		;bc5c
	ld (0e037h),sp		;bc5f
	call cambia_ram_del_disco		;bc63   ; cambia_ram_del_disco: cambia 0xC000-0xD0FF por la copia de 0xE280 y borra 0xF1C0
	ld hl,0bc85h		;bc66
	ld de,0e010h		;bc69   ; apunta a el puntero de la peticion al otro cartucho
	call prepara_fcb		;bc6c   ; prepara_fcb: el FCB en DE: unidad 0, el nombre de HL y ceros
	call bdos_crea		;bc6f   ; bdos_crea: BDOS 0x16 (crear)
	call fcb_registro		;bc72   ; fcb_registro: bloque actual 0, registro de 1 byte y registro aleatorio 0
	call bdos_escribe		;bc75   ; bdos_escribe: DTA = 0xC8C0 y 0x3E bytes con BDOS 0x26
	call bdos_cierra		;bc78   ; bdos_cierra: BDOS 0x10 (cerrar)
	call espera_y_devuelve_ram		;bc7b   ; espera_y_devuelve_ram: 256 llamadas a 0xCE7B y vuelve a cambiar la RAM
	ld a,(0e039h)		;bc7e   ; lee la copia del primer byte de H.KEYI
	ld (0fd9ah),a		;bc81
	ret			;bc84

; ----------------------------------------------------------------------
; DATOS resto_BC85: lo apuntan con el banco puesto p03:BC66 (0xBC85), p03:BCA2
;   (0xBC85); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p03:BC66, p03:BCA2 (11 bytes)
;   0xbc85..0xbc90  (11 bytes)
DATA_resto_BC85:
	defb 053h,048h,041h,04ch,04fh,04dh,020h,020h,020h,020h,020h	; bc85  SHALOM

; ======================================================================
; CODIGO 0xbc90..0xbd5e  (206 bytes)
; ======================================================================


disco_lee:		; BDOS: abre el fichero de p03:BC85 y lee los 0x3E bytes a 0xE03A
	ld a,(0fd9ah)		;bc90
	ld (0e039h),a		;bc93   ; guarda la copia del primer byte de H.KEYI
	ld a,0c9h		;bc96
	ld (0fd9ah),a		;bc98
	ld (0e037h),sp		;bc9b
	call cambia_ram_del_disco		;bc9f   ; cambia_ram_del_disco: cambia 0xC000-0xD0FF por la copia de 0xE280 y borra 0xF1C0
	ld hl,0bc85h		;bca2
	ld de,0e010h		;bca5   ; apunta a el puntero de la peticion al otro cartucho
	call prepara_fcb		;bca8   ; prepara_fcb: el FCB en DE: unidad 0, el nombre de HL y ceros
	call bdos_abre		;bcab   ; bdos_abre: BDOS 0x0F (abrir) con el FCB de 0xE035
	call fcb_registro		;bcae   ; fcb_registro: bloque actual 0, registro de 1 byte y registro aleatorio 0
	call bdos_lee		;bcb1   ; bdos_lee: DTA = 0xE03A y 0x3E bytes con BDOS 0x27
	call espera_y_devuelve_ram		;bcb4   ; espera_y_devuelve_ram: 256 llamadas a 0xCE7B y vuelve a cambiar la RAM
	ld a,(0e039h)		;bcb7   ; lee la copia del primer byte de H.KEYI
	ld (0fd9ah),a		;bcba
	ret			;bcbd
bdos_abre:		; BDOS 0x0F (abrir) con el FCB de 0xE035
	ld de,(0e035h)		;bcbe
	ld c,00fh		;bcc2
	call 0f37dh		;bcc4
	ld c,000h		;bcc7
	inc a			;bcc9
	jp z,disco_mal		;bcca   ; disco_mal: error: recupera la pila y H.KEYI y 0xE38F = 2
	ret			;bccd
bdos_crea:		; BDOS 0x16 (crear)
	ld de,(0e035h)		;bcce
	ld c,016h		;bcd2
	call 0f37dh		;bcd4
	ld c,001h		;bcd7
	inc a			;bcd9
	jp z,disco_mal		;bcda   ; disco_mal: error: recupera la pila y H.KEYI y 0xE38F = 2
	ret			;bcdd
bdos_cierra:		; BDOS 0x10 (cerrar)
	ld de,(0e035h)		;bcde
	ld c,010h		;bce2
	call 0f37dh		;bce4
	ld c,002h		;bce7
	inc a			;bce9
	jp z,disco_mal		;bcea   ; disco_mal: error: recupera la pila y H.KEYI y 0xE38F = 2
	ret			;bced
prepara_fcb:		; el FCB en DE: unidad 0, el nombre de HL y ceros
	ld (0e035h),de		;bcee
	xor a			;bcf2
	ld (de),a			;bcf3
	inc de			;bcf4
	ld bc,0000bh		;bcf5
	ldir		;bcf8
	xor a			;bcfa
	ld b,019h		;bcfb
L_BCFD:
	ld (de),a			;bcfd
	inc de			;bcfe
	djnz L_BCFD		;bcff
	ret			;bd01
L_BD02:
	ld (0e035h),hl		;bd02
fcb_registro:		; bloque actual 0, registro de 1 byte y registro aleatorio 0
	ld hl,(0e035h)		;bd05
	ld bc,0000ch		;bd08
	add hl,bc			;bd0b
	ld (hl),b			;bd0c
	inc hl			;bd0d
	ld (hl),b			;bd0e
	inc hl			;bd0f
	ld bc,00001h		;bd10
	ld (hl),c			;bd13
	inc hl			;bd14
	ld (hl),b			;bd15
	ld bc,00011h		;bd16
	add hl,bc			;bd19
	ld b,005h		;bd1a
	xor a			;bd1c
L_BD1D:
	ld (hl),a			;bd1d
	inc hl			;bd1e
	djnz L_BD1D		;bd1f
	ret			;bd21
bdos_escribe:		; DTA = 0xC8C0 y 0x3E bytes con BDOS 0x26
	ld de,0c8c0h		;bd22
	ld c,01ah		;bd25
	call 0f37dh		;bd27
	ld hl,0003eh		;bd2a
	jp bdos_escribe_bloque		;bd2d   ; bdos_escribe_bloque: BDOS 0x26 (escribir bloque); error 4
bdos_lee:		; DTA = 0xE03A y 0x3E bytes con BDOS 0x27
	ld de,0e03ah		;bd30
	ld c,01ah		;bd33
	call 0f37dh		;bd35
	ld hl,0003eh		;bd38
	jp bdos_lee_bloque		;bd3b   ; bdos_lee_bloque: BDOS 0x27 (leer bloque); error 3
bdos_escribe_bloque:		; BDOS 0x26 (escribir bloque); error 4
	ld de,(0e035h)		;bd3e
	ld c,026h		;bd42
	call 0f37dh		;bd44
	ld c,004h		;bd47
	or a			;bd49
	jp nz,disco_mal		;bd4a   ; disco_mal: error: recupera la pila y H.KEYI y 0xE38F = 2
	ret			;bd4d
bdos_lee_bloque:		; BDOS 0x27 (leer bloque); error 3
	ld de,(0e035h)		;bd4e
	ld c,027h		;bd52
	call 0f37dh		;bd54
	ld c,003h		;bd57
	or a			;bd59
	jp nz,disco_mal		;bd5a   ; disco_mal: error: recupera la pila y H.KEYI y 0xE38F = 2
	ret			;bd5d

; ----------------------------------------------------------------------
; DATOS resto_BD5E: lo apuntan con el banco puesto p00:41BB (0xBD5E); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p00:41BB (15 bytes)
;   0xbd5e..0xbd6d  (15 bytes)
DATA_resto_BD5E:
	defb 060h,0bdh,0cdh,08ah,0bdh,026h,040h,03ah,0f8h,0f0h,0cdh,024h,000h,018h,003h	; bd5e  `....&@:...$...

; ======================================================================
; CODIGO 0xbd6d..0xbdb5  (72 bytes)
; ======================================================================


disco_mal:		; error: recupera la pila y H.KEYI y 0xE38F = 2
	call espera_y_devuelve_ram		;bd6d   ; espera_y_devuelve_ram: 256 llamadas a 0xCE7B y vuelve a cambiar la RAM
	ld sp,(0e037h)		;bd70
	ld a,(0e039h)		;bd74   ; lee la copia del primer byte de H.KEYI
	ld (0fd9ah),a		;bd77
	ld a,002h		;bd7a
	ld (0e38fh),a		;bd7c   ; guarda el resultado de la carga (2: fallo)
	ret			;bd7f
cambia_ram_del_disco:		; cambia 0xC000-0xD0FF por la copia de 0xE280 y borra 0xF1C0
	call intercambia_ram		;bd80   ; intercambia_ram: intercambia 0x1100 bytes de 0xE280 con 0xC000
	ld hl,00000h		;bd83
	ld (0f1c0h),hl		;bd86
	ret			;bd89
espera_y_devuelve_ram:		; 256 llamadas a 0xCE7B y vuelve a cambiar la RAM
	ld b,000h		;bd8a
L_BD8C:
	push bc			;bd8c
	call 0ce7bh		;bd8d
	pop bc			;bd90
	djnz L_BD8C		;bd91
	call intercambia_ram		;bd93   ; intercambia_ram: intercambia 0x1100 bytes de 0xE280 con 0xC000
	ret			;bd96
intercambia_ram:		; intercambia 0x1100 bytes de 0xE280 con 0xC000
	ld hl,0e280h		;bd97
	ld de,0c000h		;bd9a
	ld bc,01100h		;bd9d
L_BDA0:
	push bc			;bda0
	ld b,(hl)			;bda1
	ld a,(de)			;bda2
	ld (hl),a			;bda3
	ld a,b			;bda4
	ld (de),a			;bda5
	pop bc			;bda6
	inc hl			;bda7
	inc de			;bda8
	dec bc			;bda9
	ld a,b			;bdaa
	or c			;bdab
	jr nz,L_BDA0		;bdac
	ret			;bdae
graba_en_cinta:		; un paso de la grabacion en cinta (tabla p03:BDB5)
	ld a,(0e38eh)		;bdaf   ; lee el paso del menu de carga
	call 040abh		;bdb2   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_BDB5: tabla de 4 palabras del despachador (call 0x408D en
;   0xBDB2); lo leen L_40AB (8 bytes)
;   0xbdb5..0xbdbd  (8 bytes)
DATA_saltos_BDB5:
	defb 0c2h,0bdh	; bdb5
	defb 0dah,0bdh	; bdb7
	defb 009h,0beh	; bdb9
	defb 033h,0beh	; bdbb

; ======================================================================
; CODIGO 0xbdbd..0xbe03  (70 bytes)
; ======================================================================


cinta_siguiente:		; 0xE38E + 1
	ld hl,0e38eh		;bdbd   ; apunta a el paso del menu de carga
	inc (hl)			;bdc0
	ret			;bdc1
L_BDC2:
	call 050ebh		;bdc2   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	call aviso_de_grabar		;bdc5   ; aviso_de_grabar: el nombre y el aviso de p03:BEC5
	call guarda_nombres		;bdc8   ; guarda_nombres: los nombres 0xEB00/0xEB09 a la partida (0xEB42/0xEB4A)
	call guarda_objetos		;bdcb   ; guarda_objetos: el bit 0 de cada objeto de 0xE9D0 a los bits de 0xEB53-0xEB55
	call suma_de_la_partida		;bdce   ; suma_de_la_partida: A = la suma de los 0x3F bytes de 0xEB40
	ld (0e390h),a		;bdd1   ; guarda la suma de la cinta
	call 0457eh		;bdd4   ; sonido_01: pide el sonido 1
	jp cinta_siguiente		;bdd7   ; cinta_siguiente: 0xE38E + 1
cinta_escribe_cabecera:		; 10 x 0xEA y el nombre de p03:BE03
	ld a,001h		;bdda
	call 000eah		;bddc   ; BIOS TAPOON - Turns on the cassette motor and writes the header
	ld b,00ah		;bddf
L_BDE1:
	push bc			;bde1
	ld a,0eah		;bde2
	call 000edh		;bde4   ; BIOS TAPOUT - Writes data on the tape
	pop bc			;bde7
	jp c,cinta_mal_al_grabar		;bde8   ; cinta_mal_al_grabar: para el motor y 0xE38F = 2
	djnz L_BDE1		;bdeb
	ld b,006h		;bded
	ld hl,0be03h		;bdef
L_BDF2:
	push hl			;bdf2
	push bc			;bdf3
	ld a,(hl)			;bdf4
	call 000edh		;bdf5   ; BIOS TAPOUT - Writes data on the tape
	jp c,cinta_mal_al_grabar		;bdf8   ; cinta_mal_al_grabar: para el motor y 0xE38F = 2
	pop bc			;bdfb
	pop hl			;bdfc
	inc hl			;bdfd
	djnz L_BDF2		;bdfe
	jp cinta_siguiente		;be00   ; cinta_siguiente: 0xE38E + 1

; ----------------------------------------------------------------------
; DATOS resto_BE03: lo apuntan con el banco puesto p01:6BA1 (0xBE03), p03:BDEF
;   (0xBE03), p03:BF59 (0xBE03); el tamano es lo que hay hasta lo siguiente,
;   no sale de recorrerlo; lo leen p01:6BA1, p03:BDEF, p03:BF59 (6 bytes)
;   0xbe03..0xbe09  (6 bytes)
DATA_resto_BE03:
	defb 053h,048h,041h,04ch,04fh,04dh	; be03

; ======================================================================
; CODIGO 0xbe09..0xbec5  (188 bytes)
; ======================================================================


cinta_escribe_partida:		; los 0x3E bytes de 0xEB40 y la suma
	xor a			;be09
	call 000eah		;be0a   ; BIOS TAPOON - Turns on the cassette motor and writes the header
	jr c,cinta_mal_al_grabar		;be0d
	ld de,0eb40h		;be0f   ; apunta a la sala (16 bits)
	ld bc,0003eh		;be12
L_BE15:
	push de			;be15
	push bc			;be16
	ld a,(de)			;be17
	call 000edh		;be18   ; BIOS TAPOUT - Writes data on the tape
	pop bc			;be1b
	pop de			;be1c
	jr c,cinta_mal_al_grabar		;be1d
	inc de			;be1f
	dec bc			;be20
	ld a,b			;be21
	or c			;be22
	jr nz,L_BE15		;be23
	ld a,(0e390h)		;be25   ; lee la suma de la cinta
	call 000edh		;be28   ; BIOS TAPOUT - Writes data on the tape
	jr c,cinta_mal_al_grabar		;be2b
	call 000f0h		;be2d   ; BIOS TAPOOF - Stops writing on the tape
	jp cinta_siguiente		;be30   ; cinta_siguiente: 0xE38E + 1
L_BE33:
	call 045e1h		;be33   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;be36   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,001h		;be39
	ld (0e38fh),a		;be3b   ; guarda el resultado de la carga (2: fallo)
	ret			;be3e
suma_de_la_partida:		; A = la suma de los 0x3F bytes de 0xEB40
	ld hl,0eb40h		;be3f   ; apunta a la sala (16 bits)
	ld b,03eh		;be42
	ld a,(hl)			;be44
	inc hl			;be45
L_BE46:
	add a,(hl)			;be46
	inc hl			;be47
	djnz L_BE46		;be48
	ret			;be4a
guarda_nombres:		; los nombres 0xEB00/0xEB09 a la partida (0xEB42/0xEB4A)
	ld hl,0eb00h		;be4b   ; apunta a el primer nombre (8 letras y 0xFF)
	ld de,0eb42h		;be4e   ; apunta a el primer nombre de la partida guardada
	call copia_hasta_ff		;be51   ; copia_hasta_ff: copia de HL a DE hasta 0xFF
	ld hl,0eb09h		;be54   ; apunta a el segundo nombre (8 letras y 0xFF)
	ld de,0eb4ah		;be57   ; apunta a el segundo nombre de la partida guardada
copia_hasta_ff:		; copia de HL a DE hasta 0xFF
	ld a,(hl)			;be5a
	inc a			;be5b
	ret z			;be5c
	dec a			;be5d
	ld (de),a			;be5e
	inc hl			;be5f
	inc de			;be60
	jr copia_hasta_ff		;be61
guarda_objetos:		; el bit 0 de cada objeto de 0xE9D0 a los bits de 0xEB53-0xEB55
	ld de,0e9d0h		;be63   ; apunta a los objetos (dos bytes cada uno; bit 0: se lleva)
	ld hl,0eb53h		;be66   ; apunta a los objetos de la partida guardada (bits)
	ld c,003h		;be69
L_BE6B:
	ld b,008h		;be6b
L_BE6D:
	sla (hl)		;be6d
	ld a,(de)			;be6f
	rra			;be70
	jr nc,L_BE75		;be71
	set 0,(hl)		;be73
L_BE75:
	inc de			;be75
	inc de			;be76
	djnz L_BE6D		;be77
	inc hl			;be79
	dec c			;be7a
	jr nz,L_BE6B		;be7b
	ld a,(0e9deh)		;be7d   ; lee el objeto 7 (bit 0: se lleva)
	and 00eh		;be80
	ld (0eb56h),a		;be82
	ret			;be85
cinta_mal_al_grabar:		; para el motor y 0xE38F = 2
	call 000f0h		;be86   ; BIOS TAPOOF - Stops writing on the tape
	call L_BEA1		;be89
	call 045e1h		;be8c   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;be8f   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,002h		;be92
	ld (0e38fh),a		;be94   ; guarda el resultado de la carga (2: fallo)
	ret			;be97
aviso_de_grabar:		; el nombre y el aviso de p03:BEC5
	call nombre_a_vram		;be98   ; nombre_a_vram: el nombre de 0xEB1B a la VRAM 0x3A21
	ld de,0bec5h		;be9b
	jp 059c2h		;be9e   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
L_BEA1:
	jp 050ebh		;bea1   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
nombre_a_vram:		; el nombre de 0xEB1B a la VRAM 0x3A21
	ld de,0eb1bh		;bea4
	ld hl,03a21h		;bea7
L_BEAA:
	ld a,(de)			;beaa
	inc a			;beab
	ret z			;beac
	dec a			;bead
	cp 003h		;beae
	jr nz,L_BEBE		;beb0
	ld bc,00021h		;beb2
	and a			;beb5
	sbc hl,bc		;beb6
	call 0004dh		;beb8   ; BIOS WRTVRM - Writes data in VRAM
	add hl,bc			;bebb
	jr L_BEC2		;bebc
L_BEBE:
	call 0004dh		;bebe   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;bec1
L_BEC2:
	inc de			;bec2
	jr L_BEAA		;bec3

; ----------------------------------------------------------------------
; DATOS vram_BEC5: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p03:BE9E (28 bytes)
;   0xbec5..0xbee1  (28 bytes)
DATA_vram_BEC5:
	defb 005h,03ah,000h,000h,003h,000h,000h,000h,000h,003h,000h,003h,0feh,025h,03ah,03bh	; bec5  .:...........%:.
	defb 04fh,04fh,0b3h,000h,07dh,020h,08bh,0deh,052h,04ch,03ch,0ffh	; bed5  OO..} ..RL<.

; ======================================================================
; CODIGO 0xbee1..0xbee7  (6 bytes)
; ======================================================================


comprueba_la_cinta:		; un paso de la comprobacion de la cinta (tabla p03:BEE7)
	ld a,(0e38eh)		;bee1   ; lee el paso del menu de carga
	call 040abh		;bee4   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_BEE7: tabla de 3 palabras del despachador (call 0x408D en
;   0xBEE4); lo leen L_40AB (6 bytes)
;   0xbee7..0xbeed  (6 bytes)
DATA_saltos_BEE7:
	defb 0edh,0beh	; bee7
	defb 0f9h,0beh	; bee9
	defb 025h,0bfh	; beeb

; ======================================================================
; CODIGO 0xbeed..0xbf7d  (144 bytes)
; ======================================================================


L_BEED:
	call 050ebh		;beed   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	call aviso_de_comprobar		;bef0   ; aviso_de_comprobar: el nombre y el aviso de p03:BF7D
	call 0457eh		;bef3   ; sonido_01: pide el sonido 1
	jp cinta_siguiente		;bef6   ; cinta_siguiente: 0xE38E + 1
cinta_compara:		; lee la cinta y la compara con 0xEB40 y la suma
	call cinta_busca_cabecera		;bef9   ; cinta_busca_cabecera: busca 10 x 0xEA y el nombre de p03:BE03
	ld hl,0eb40h		;befc   ; apunta a la sala (16 bits)
	ld bc,0003eh		;beff
L_BF02:
	push bc			;bf02
	push hl			;bf03
	call 000e4h		;bf04   ; BIOS TAPIN - Reads data from the tape
	pop hl			;bf07
	pop bc			;bf08
	jr c,L_BF31		;bf09
	cp (hl)			;bf0b
	jr nz,L_BF31		;bf0c
	inc hl			;bf0e
	dec bc			;bf0f
	ld a,b			;bf10
	or c			;bf11
	jr nz,L_BF02		;bf12
	call 000e4h		;bf14   ; BIOS TAPIN - Reads data from the tape
	jr c,L_BF31		;bf17
	ld hl,0e390h		;bf19   ; apunta a la suma de la cinta
	cp (hl)			;bf1c
	jr nz,L_BF31		;bf1d
	call 000f0h		;bf1f   ; BIOS TAPOOF - Stops writing on the tape
	jp cinta_siguiente		;bf22   ; cinta_siguiente: 0xE38E + 1
L_BF25:
	call 045e1h		;bf25   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;bf28   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,001h		;bf2b
	ld (0e38fh),a		;bf2d   ; guarda el resultado de la carga (2: fallo)
	ret			;bf30
L_BF31:
	call 000f0h		;bf31   ; BIOS TAPOOF - Stops writing on the tape
	call L_BF7A		;bf34
	call 045e1h		;bf37   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 045ceh		;bf3a   ; musica_pendiente: cuenta atras de 0xE33B: al llegar a 0 pide 0x80 y la musica de 0xE33A
	ld a,002h		;bf3d
	ld (0e38fh),a		;bf3f   ; guarda el resultado de la carga (2: fallo)
	ret			;bf42
cinta_busca_cabecera:		; busca 10 x 0xEA y el nombre de p03:BE03
	call 000e1h		;bf43   ; BIOS TAPION - Reads the header block after turning the cassette motor on
	jr c,L_BF31		;bf46
	ld b,00ah		;bf48
L_BF4A:
	push bc			;bf4a
	call 000e4h		;bf4b   ; BIOS TAPIN - Reads data from the tape
	pop bc			;bf4e
	jr c,L_BF31		;bf4f
	cp 0eah		;bf51
	jr nz,cinta_busca_cabecera		;bf53
	djnz L_BF4A		;bf55
	ld b,006h		;bf57
	ld hl,0be03h		;bf59
L_BF5C:
	push bc			;bf5c
	push hl			;bf5d
	call 000e4h		;bf5e   ; BIOS TAPIN - Reads data from the tape
	pop hl			;bf61
	pop bc			;bf62
	jr c,L_BF31		;bf63
	cp (hl)			;bf65
	jr nz,L_BF31		;bf66
	inc hl			;bf68
	djnz L_BF5C		;bf69
	call 000e1h		;bf6b   ; BIOS TAPION - Reads the header block after turning the cassette motor on
	jr c,L_BF31		;bf6e
	ret			;bf70
aviso_de_comprobar:		; el nombre y el aviso de p03:BF7D
	call nombre_a_vram		;bf71   ; nombre_a_vram: el nombre de 0xEB1B a la VRAM 0x3A21
	ld de,0bf7dh		;bf74
	jp 059c2h		;bf77   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
L_BF7A:
	jp 050ebh		;bf7a   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25

; ----------------------------------------------------------------------
; DATOS vram_BF7D: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; se solapan 2 bloques: (relleno_ff BF9C-C000); lo
;   leen p03:BF77, nadie (131 bytes)
;   0xbf7d..0xc000  (131 bytes)
DATA_vram_BF7D:
	defb 005h,03ah,000h,000h,003h,000h,000h,003h,000h,000h,000h,000h,000h,003h,0feh,025h	; bf7d  .:.............%
	defb 03ah,03bh,04fh,04fh,0b3h,000h,08ch,097h,08bh,0a7h,071h,0deh,052h,04ch,03ch,0ffh	; bf8d  :.OO......q.RL<.
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfad  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfbd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfcd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfdd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfed  ................
	defb 0ffh,0ffh,0ffh	; bffd
