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


otro_cartucho_lee:		; prepara la peticion en 0xE012 (p01:6047) y llama al otro cartucho con C = 0x0A (p01:6073)
	ld a,(0fd9ah)		;6000
	ld (0e039h),a		;6003   ; guarda la copia del primer byte de H.KEYI
	ld a,0c9h		;6006
	ld (0fd9ah),a		;6008
	ld bc,0606bh		;600b
	ld hl,06021h		;600e
	ld de,0e012h		;6011   ; apunta a la peticion al otro cartucho
	call peticion_al_otro_cartucho		;6014   ; peticion_al_otro_cartucho: 0xE012: los 5 bytes de HL, 8 ceros, los 4 de BC, el slot propio y 20 ceros
	call llama_otro_cartucho_0a		;6017   ; llama_otro_cartucho_0a: su slot en 0x8000, su banco 4 y `call 0x8000` con C = 0x0A; si falla 0xE38F = 2
	ld a,(0e039h)		;601a   ; lee la copia del primer byte de H.KEYI
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


otro_cartucho_graba:		; prepara la peticion en 0xE012 y llama al otro cartucho con C = 0x0B (p01:609D)
	ld a,(0fd9ah)		;6026
	ld (0e039h),a		;6029   ; guarda la copia del primer byte de H.KEYI
	ld a,0c9h		;602c
	ld (0fd9ah),a		;602e
	ld bc,0606fh		;6031
	ld hl,06021h		;6034
	ld de,0e012h		;6037   ; apunta a la peticion al otro cartucho
	call peticion_al_otro_cartucho		;603a   ; peticion_al_otro_cartucho: 0xE012: los 5 bytes de HL, 8 ceros, los 4 de BC, el slot propio y 20 ceros
	call llama_otro_cartucho_0b		;603d   ; llama_otro_cartucho_0b: como p01:6073 con C = 0x0B
	ld a,(0e039h)		;6040   ; lee la copia del primer byte de H.KEYI
	ld (0fd9ah),a		;6043
	ret			;6046
peticion_al_otro_cartucho:		; 0xE012: los 5 bytes de HL, 8 ceros, los 4 de BC, el slot propio y 20 ceros
	push bc			;6047
	ld (0e010h),de		;6048   ; guarda el puntero de la peticion al otro cartucho y el byte siguiente (16 bits)
	ld bc,00005h		;604c
	ldir		;604f
	xor a			;6051
	ld b,008h		;6052
L_6054:
	ld (de),a			;6054   ; 8 ceros
	inc de			;6055
	djnz L_6054		;6056
	pop hl			;6058
	ld bc,00004h		;6059   ; los 4 bytes de BC
	ldir		;605c
	ld a,(0f0f8h)		;605e   ; lee el slot del cartucho
	ld (de),a			;6061   ; el slot propio
	inc de			;6062
	xor a			;6063
	ld b,014h		;6064   ; y 20 ceros
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


llama_otro_cartucho_0a:		; su slot en 0x8000, su banco 4 y `call 0x8000` con C = 0x0A; si falla 0xE38F = 2
	ld de,(0e010h)		;6073   ; lee el puntero de la peticion al otro cartucho y el byte siguiente (16 bits)
	ld b,001h		;6077
	ld a,(0f0f7h)		;6079   ; lee el slot del otro cartucho
	ld h,080h		;607c
	call 00024h		;607e   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld a,004h		;6081
	ld (08000h),a		;6083   ; el mapper: pone en 0x8000 el banco de A
	ld c,00ah		;6086
	ld de,(0e010h)		;6088   ; lee el puntero de la peticion al otro cartucho y el byte siguiente (16 bits)
	call 08000h		;608c
	push af			;608f
	ld a,(0f0f8h)		;6090   ; lee el slot del cartucho
	ld h,080h		;6093
	call 00024h		;6095   ; BIOS ENASLT - Switches to specified slot and page definitively
	pop af			;6098
	and a			;6099
	jr nz,L_60C5		;609a
	ret			;609c
llama_otro_cartucho_0b:		; como p01:6073 con C = 0x0B
	ld de,(0e010h)		;609d   ; lee el puntero de la peticion al otro cartucho y el byte siguiente (16 bits)
	ld a,(0f0f7h)		;60a1   ; lee el slot del otro cartucho
	ld h,080h		;60a4
	call 00024h		;60a6   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld a,004h		;60a9
	ld (08000h),a		;60ab   ; el mapper: pone en 0x8000 el banco de A
	ld c,00bh		;60ae
	ld de,(0e010h)		;60b0   ; lee el puntero de la peticion al otro cartucho y el byte siguiente (16 bits)
	call 08000h		;60b4
	push af			;60b7
	ld a,(0f0f8h)		;60b8   ; lee el slot del cartucho
	ld h,080h		;60bb
	call 00024h		;60bd   ; BIOS ENASLT - Switches to specified slot and page definitively
	pop af			;60c0
	and a			;60c1
	jr nz,L_60C5		;60c2
	ret			;60c4
L_60C5:
	ld a,002h		;60c5
	ld (0e38fh),a		;60c7   ; guarda el resultado de la carga (2: fallo)
	ret			;60ca
busca_otro_cartucho:		; busca en los cuatro slots (y sus subslots) un cartucho con YZ en 0x4010; su slot en 0xF0F7, 0xF0F9 = 1
	ld hl,0f0f9h		;60cb   ; apunta a hay otro cartucho
	ld (hl),000h		;60ce
	ld bc,00400h		;60d0
	ld hl,0fcc1h		;60d3
L_60D6:
	push bc			;60d6
	push hl			;60d7
	ld a,(hl)			;60d8
	bit 7,a		;60d9
	jr nz,L_60F2		;60db
	call es_el_otro_cartucho		;60dd   ; es_el_otro_cartucho: acarreo si el slot C lleva YZ (p01:6146) en 0x4010
	pop hl			;60e0
	pop bc			;60e1
L_60E2:
	ld a,(0f0f9h)		;60e2   ; lee hay otro cartucho
	and a			;60e5
	jr nz,L_60ED		;60e6
	inc hl			;60e8
	inc c			;60e9
	djnz L_60D6		;60ea
	ret			;60ec
L_60ED:
	ld a,c			;60ed
	ld (0f0f7h),a		;60ee   ; guarda el slot del otro cartucho
	ret			;60f1
L_60F2:
	call busca_en_subslots		;60f2   ; busca_en_subslots: prueba los cuatro subslots del slot C
	pop hl			;60f5
	pop bc			;60f6
	ld a,(0f0f9h)		;60f7   ; lee hay otro cartucho
	and a			;60fa
	ret nz			;60fb
	jr L_60E2		;60fc
busca_en_subslots:		; prueba los cuatro subslots del slot C
	and 080h		;60fe
	or c			;6100
	ld c,a			;6101
	ld b,004h		;6102
L_6104:
	push bc			;6104
	call es_el_otro_cartucho		;6105   ; es_el_otro_cartucho: acarreo si el slot C lleva YZ (p01:6146) en 0x4010
	pop bc			;6108
	ld a,(0f0f9h)		;6109   ; lee hay otro cartucho
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
	ld (0f0f7h),a		;611b   ; guarda el slot del otro cartucho
	ret			;611e
es_el_otro_cartucho:		; acarreo si el slot C lleva YZ (p01:6146) en 0x4010
	ld de,06146h		;611f
	ld hl,04010h		;6122
	ld b,002h		;6125
	call compara_en_slot		;6127   ; compara_en_slot: compara B bytes de HL en el slot C con DE (RDSLT); acarreo si son iguales
	ret nc			;612a
	ld hl,0f0f9h		;612b   ; apunta a hay otro cartucho
	ld (hl),001h		;612e
	ret			;6130
compara_en_slot:		; compara B bytes de HL en el slot C con DE (RDSLT); acarreo si son iguales
	push bc			;6131
	push de			;6132
	ld a,c			;6133   ; el slot
	call 0000ch		;6134   ; BIOS RDSLT - Reads the value of an address in another slot
	pop de			;6137
	pop bc			;6138
	ex de,hl			;6139   ; compara con DE
	cp (hl)			;613a
	ex de,hl			;613b
	jr nz,L_6144		;613c
	inc hl			;613e
	inc de			;613f
	djnz compara_en_slot		;6140
	scf			;6142   ; todos iguales: acarreo
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


graficos_27:		; con 27-28 puestos, el juego de graficos A de la tabla p01:6154
	call 04149h		;6148   ; bancos_27_28: pone los bancos 27-28 en 0x8000 y 0xA000
	call graficos_27_por_tabla		;614b   ; graficos_27_por_tabla: salta a la entrada A de la tabla p01:6154
	jp 040f9h		;614e   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3
graficos_27_por_tabla:		; salta a la entrada A de la tabla p01:6154
	call 040abh		;6151   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
	call 05972h		;6164   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,08282h		;6167
	ld hl,02300h		;616a
	call 05972h		;616d   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,08282h		;6170
	ld hl,02500h		;6173
	call 05986h		;6176   ; rle_volteado_a_dos_tercios: el RLE volteado (p00:5A32) en dos tercios
	ld de,083dfh		;6179
	ld hl,00080h		;617c
	call 05972h		;617f   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,085bfh		;6182
	ld hl,00300h		;6185
	call 05972h		;6188   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,085bfh		;618b
	ld hl,00500h		;618e
	jp 05972h		;6191   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
L_6194:
	ld de,08613h		;6194
	ld hl,02080h		;6197
	call 05972h		;619a   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,08613h		;619d
	ld hl,02380h		;61a0
	call 05986h		;61a3   ; rle_volteado_a_dos_tercios: el RLE volteado (p00:5A32) en dos tercios
	ld de,088d0h		;61a6
	ld hl,00080h		;61a9
	call 05972h		;61ac   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,088d0h		;61af
	ld hl,00380h		;61b2
	jp 05972h		;61b5   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
L_61B8:
	ld de,08985h		;61b8
	ld hl,02080h		;61bb
	call 05972h		;61be   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,08ef9h		;61c1
	ld hl,00080h		;61c4
	jp 05972h		;61c7   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
L_61CA:
	ld de,09611h		;61ca
	ld hl,02080h		;61cd
	call 05972h		;61d0   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,09695h		;61d3
	ld hl,02180h		;61d6
	call 05972h		;61d9   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,09695h		;61dc
	ld hl,02280h		;61df
	call 05986h		;61e2   ; rle_volteado_a_dos_tercios: el RLE volteado (p00:5A32) en dos tercios
	ld de,0973ch		;61e5
	ld hl,00080h		;61e8
	call 05972h		;61eb   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,09786h		;61ee
	ld hl,00180h		;61f1
	call 05972h		;61f4   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,09786h		;61f7
	ld hl,00280h		;61fa
	jp 05972h		;61fd   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
L_6200:
	ld de,09175h		;6200
	ld hl,02080h		;6203
	call 05972h		;6206   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,094a2h		;6209
	ld hl,00080h		;620c
	jp 05972h		;620f   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
nombres_27:		; 12 filas x 16 de la tabla p27:6233[A] a 0xED44
	call 04149h		;6212   ; bancos_27_28: pone los bancos 27-28 en 0x8000 y 0xA000
	ld de,06233h		;6215
	call 043a4h		;6218   ; palabra_de_tabla: DE = la palabra A de la tabla DE
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
	call 040a1h		;622a   ; hl_mas_a: HL = HL + A
	dec c			;622d
	jr nz,L_6220		;622e
	jp 040f9h		;6230   ; bancos_1_2_3: pone los bancos 1-2-3 y su copia en 0xF0F1-0xF0F3

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
	call 05972h		;6243   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,09ed9h		;6246
	ld hl,02370h		;6249
	call 05986h		;624c   ; rle_volteado_a_dos_tercios: el RLE volteado (p00:5A32) en dos tercios
	ld de,0a1c8h		;624f
	ld hl,00080h		;6252
	call 05972h		;6255   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
	ld de,0a1c8h		;6258
	ld hl,00370h		;625b
	jp 05972h		;625e   ; rle_a_dos_tercios: el RLE de DE (p00:5A2A) en dos tercios
L_6261:
	ld de,0a415h		;6261
	call 059fbh		;6264   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld de,0a974h		;6267
	call 059fbh		;626a   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld de,0a654h		;626d
	call 059fbh		;6270   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
	ld de,0aabah		;6273
	jp 059fbh		;6276   ; rle_con_destino: RLE de DE con su direccion de VRAM delante
L_6279:
	ld de,0ac67h		;6279
	ld hl,02080h		;627c
	call 05a2ah		;627f   ; rle: RLE de DE a la VRAM HL
	ld de,0ac67h		;6282
	ld hl,02380h		;6285
	call 05a32h		;6288   ; rle_volteado: RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld de,0af27h		;628b
	ld hl,00080h		;628e
	call 05a2ah		;6291   ; rle: RLE de DE a la VRAM HL
	ld de,0af27h		;6294
	ld hl,00380h		;6297
	call 05a2ah		;629a   ; rle: RLE de DE a la VRAM HL
	ld de,0b085h		;629d
	ld hl,02880h		;62a0
	call 05a2ah		;62a3   ; rle: RLE de DE a la VRAM HL
	ld de,0b085h		;62a6
	ld hl,02a70h		;62a9
	call 05a32h		;62ac   ; rle_volteado: RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld de,0b25ch		;62af
	ld hl,00880h		;62b2
	call 05a2ah		;62b5   ; rle: RLE de DE a la VRAM HL
	ld de,0b25ch		;62b8
	ld hl,00a70h		;62bb
	jp 05a2ah		;62be   ; rle: RLE de DE a la VRAM HL
L_62C1:
	ld de,0b372h		;62c1
	ld hl,02080h		;62c4
	call 05a2ah		;62c7   ; rle: RLE de DE a la VRAM HL
	ld de,0b372h		;62ca
	ld hl,022c8h		;62cd
	call 05a32h		;62d0   ; rle_volteado: RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld de,0b5b4h		;62d3
	ld hl,00080h		;62d6
	call 05a2ah		;62d9   ; rle: RLE de DE a la VRAM HL
	ld de,0b5b4h		;62dc
	ld hl,002c8h		;62df
	call 05a2ah		;62e2   ; rle: RLE de DE a la VRAM HL
	ld de,0b69ch		;62e5
	ld hl,02880h		;62e8
	call 05a2ah		;62eb   ; rle: RLE de DE a la VRAM HL
	ld de,0b69ch		;62ee
	ld hl,02a90h		;62f1
	call 05a32h		;62f4   ; rle_volteado: RLE de DE a la VRAM HL con los bits de cada byte al reves
	ld de,0b8a8h		;62f7
	ld hl,00880h		;62fa
	call 05a2ah		;62fd   ; rle: RLE de DE a la VRAM HL
	ld de,0b8a8h		;6300
	ld hl,00a90h		;6303
	jp 05a2ah		;6306   ; rle: RLE de DE a la VRAM HL
rumbo_al_personaje:		; el paso (HL, DE) hacia el personaje desde E, D con la velocidad A
	ld (0e353h),a		;6309   ; guarda la velocidad del rumbo, o la letra del nombre
	ld de,(0e3c1h)		;630c   ; lee la Y del personaje y el byte siguiente (16 bits)
	jr L_631B		;6310
rumbo_desde_ix:		; el paso hacia el personaje desde la ficha IX (+2, +4) con la velocidad A
	ld (0e353h),a		;6312   ; guarda la velocidad del rumbo, o la letra del nombre
	ld e,(ix+002h)		;6315
	ld d,(ix+004h)		;6318
L_631B:
	call angulo_al_centro		;631b   ; angulo_al_centro: 0xE359 = el angulo hacia (0x40, 0x58)
	jr L_6330		;631e
rumbo_al_rival:		; el paso hacia 0xE3E5/0xE3E7 con la velocidad A
	ld (0e353h),a		;6320   ; guarda la velocidad del rumbo, o la letra del nombre
	call angulo_al_rival		;6323   ; angulo_al_rival: 0xE359 = el angulo hacia 0xE3E5/0xE3E7
	jr L_6330		;6326
rumbo_al_personaje_80:		; el paso hacia el personaje con la velocidad 0x80
	ld a,080h		;6328
	ld (0e353h),a		;632a   ; guarda la velocidad del rumbo, o la letra del nombre
	call angulo_al_personaje		;632d   ; angulo_al_personaje: 0xE359 = el angulo de la posicion D, E al personaje
L_6330:
	ld a,(0e359h)		;6330   ; lee el angulo calculado (0-0x3F)
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
	ld (0e358h),a		;6345   ; guarda el angulo del eje X del rumbo
	ld e,c			;6348
	call por_velocidad		;6349   ; por_velocidad: DE = E * 0xE353 / 32
	ld a,(0e354h)		;634c   ; lee el signo de la Y del rumbo, o la casilla del nombre
	and a			;634f
	call nz,043adh		;6350   ; de_negativo: DE = -DE
	ld (0e356h),de		;6353   ; guarda el paso Y del rumbo, o la X del cursor de las letras y el byte siguiente (16 bits)
	ld a,(0e358h)		;6357   ; lee el angulo del eje X del rumbo
	ld e,a			;635a
	call por_velocidad		;635b   ; por_velocidad: DE = E * 0xE353 / 32
	ld a,(0e355h)		;635e   ; lee el signo de la X del rumbo, o el cursor de las letras (16 bits)
	and a			;6361
	call nz,043adh		;6362   ; de_negativo: DE = -DE
	ld hl,(0e356h)		;6365   ; lee el paso Y del rumbo, o la X del cursor de las letras y el byte siguiente (16 bits)
	ret			;6368
angulo_al_personaje:		; 0xE359 = el angulo de la posicion D, E al personaje
	ld a,(0e3c1h)		;6369   ; lee la Y del personaje
	ld (0e8e0h),a		;636c   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera)
	ld a,(0e3c2h)		;636f   ; lee la X del personaje
	ld (0e8e1h),a		;6372   ; guarda la variable de trabajo 0xE8E1
	jr angulo		;6375
angulo_al_rival:		; 0xE359 = el angulo hacia 0xE3E5/0xE3E7
	ld a,(0e3e5h)		;6377   ; lee la Y del personaje en la escena de accion
	ld l,a			;637a
	ld a,(0e3e7h)		;637b   ; lee la X del personaje en la escena de accion
	ld h,a			;637e
	jr L_6384		;637f
angulo_al_centro:		; 0xE359 = el angulo hacia (0x40, 0x58)
	ld hl,05840h		;6381
L_6384:
	ld (0e8e0h),hl		;6384   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
angulo:		; 0xE359 = el angulo de 0xE8E0 - E, D (tabla p01:63D5); 0xE354/0xE355 = signos
	ld hl,0e354h		;6387   ; apunta a el signo de la Y del rumbo, o la casilla del nombre
	ld (hl),000h		;638a
	ld a,(0e8e0h)		;638c   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera)
	sub e			;638f
	jr nc,L_6395		;6390
	neg		;6392
	inc (hl)			;6394
L_6395:
	inc hl			;6395
	ld (hl),000h		;6396   ; el signo de la X
	rra			;6398   ; la distancia Y / 4, en octavos
	rra			;6399
	and 038h		;639a
	ld e,a			;639c
	ld a,(0e8e1h)		;639d   ; la distancia X
	sub d			;63a0
	jr nc,L_63A6		;63a1
	neg		;63a3   ; en valor absoluto
	inc (hl)			;63a5   ; y negativa
L_63A6:
	rlca			;63a6
	rlca			;63a7
	rlca			;63a8
	and 007h		;63a9
	add a,e			;63ab
	ld hl,063d5h		;63ac
	call 040a1h		;63af   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;63b2
	ld (0e359h),a		;63b3   ; guarda el angulo calculado (0-0x3F)
	ret			;63b6
por_velocidad:		; DE = E * 0xE353 / 32
	ld a,(0e353h)		;63b7   ; lee la velocidad del rumbo, o la letra del nombre
	ld h,a			;63ba
	call multiplica		;63bb   ; multiplica: HL = H * E
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
multiplica:		; HL = H * E
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


nombre_vacio:		; Z si los 8 bytes de HL son ceros hasta 0xFF
	ld b,008h		;648a
L_648C:
	ld a,(hl)			;648c   ; la letra
	cp 0ffh		;648d   ; 0xFF: acaba, vacio
	jr z,L_6496		;648f
	or a			;6491   ; una letra: no esta vacio
	ret nz			;6492
	inc hl			;6493
	djnz L_648C		;6494
L_6496:
	xor a			;6496
	ret			;6497
nombres_por_defecto:		; si estan vacios, los nombres de 0xEB00 y 0xEB09 por defecto
	ld hl,0eb00h		;6498   ; apunta a el primer nombre (8 letras y 0xFF)
	push hl			;649b
	call nombre_vacio		;649c   ; nombre_vacio: Z si los 8 bytes de HL son ceros hasta 0xFF
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
	ld hl,0eb09h		;64b0   ; apunta a el segundo nombre (8 letras y 0xFF)
	push hl			;64b3
	call nombre_vacio		;64b4   ; nombre_vacio: Z si los 8 bytes de HL son ceros hasta 0xFF
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
cuadro:		; un cuadro del juego (lo llama la interrupcion): cuenta 0xE003 y despacha el estado 0xE000 (tabla p01:64DF)
	ld hl,0e003h		;64c8   ; la cuenta de cuadros
	inc (hl)			;64cb
	ld a,(0e000h)		;64cc   ; el estado del juego
	cp 003h		;64cf   ; en los estados 0-2
	jr nc,L_64D7		;64d1
	ld hl,06634h		;64d3   ; se vuelve por p01:6634 (el titulo y la demo miran las teclas)
	push hl			;64d6
L_64D7:
	ld bc,(0e000h)		;64d7   ; C = el estado y B = el paso
	ld a,c			;64db   ; A = el estado
	call 040abh		;64dc   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


estado_0:		; estado 0: el rotulo de Konami (p00:4242) y espera
	djnz L_64FF		;64f1   ; paso 1 (el 0 da la vuelta a B y acaba en p01:650D)
	ld a,(0e003h)		;64f3   ; un cuadro si y otro no
	rra			;64f6
	ret nc			;64f7
	call 04242h		;64f8   ; a_rotulo_konami_cuadro: con 4-5-6, p04:6555 (una columna del rotulo cada cuadro: carga la pantalla 0xE00F (p04:65B8) en 0xED00 y la va pintando (p04:65C4)); vuelve con 1-2-3
	ret nz			;64fb
	xor a			;64fc
	jr L_655C		;64fd
L_64FF:
	djnz L_650D		;64ff   ; paso 2
	ld hl,0e004h		;6501   ; espera
	dec (hl)			;6504
	ret nz			;6505
	call 0424bh		;6506   ; a_titulo: con 4-5-6, p04:622B (monta el titulo (p04:6234) y el texto p04:606C); vuelve con 1-2-3
	xor a			;6509
	jp siguiente_estado_con_espera		;650a   ; siguiente_estado_con_espera: 0xE004 = A y el siguiente estado
L_650D:
	call registros_del_vdp		;650d   ; registros_del_vdp: los 8 registros del VDP de p01:70B0
	call 0591bh		;6510   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	call 0426fh		;6513   ; a_fuente_y_colores: con 4-5-6, p04:6487 (la fuente en los tres tercios y su color); vuelve con 1-2-3
	call 04254h		;6516   ; a_rotulo_konami: con 4-5-6, p04:6527 (el RLE p04:7761 y 6 filas x 21 nombres desde 0x40 en 0x3907); vuelve con 1-2-3
	jr siguiente_paso		;6519
estado_1:		; estado 1: el titulo (p00:425D) con el cursor de 0xE335 hasta que se acabe la espera
	call cursor_del_titulo		;651b   ; cursor_del_titulo: izquierda/derecha cambian 0xE335 y pintan la flecha
	call 0425dh		;651e   ; a_titulo_cuadro: con 4-5-6, p04:6266 (un cuadro del titulo: espera, sonido 0x50 y los sprites que aparecen (0xE3AC, p04:62C3)); vuelve con 1-2-3
	ld hl,0e004h		;6521   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6524
	ret nz			;6525
	xor a			;6526
	ld (0e350h),a		;6527   ; guarda el paso de la escena (inicial, historia, final)
	ld (0e333h),a		;652a   ; guarda el paso ha acabado
	ld (0e351h),a		;652d   ; guarda el paso de la pantalla de nombres, o la pagina de la historia
	jp siguiente_estado		;6530   ; siguiente_estado: 0xE000 + 1 y el paso a cero
estado_2:		; estado 2: la demo (p09:BC5C, p09:BD11, p09:BC86) hasta que 0xE340 = 0
	djnz L_6540		;6533
	call 0591bh		;6535   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	call 0426fh		;6538   ; a_fuente_y_colores: con 4-5-6, p04:6487 (la fuente en los tres tercios y su color); vuelve con 1-2-3
	call 042efh		;653b   ; a_demo_empieza: con 9-10-11, p11:BC5C (la demo: sala de partida 2 (0xE338), guion desde el principio (0xE00B) y el personaje en (0x50, 0x60)); vuelve con 1-2-3
	jr siguiente_paso		;653e
L_6540:
	djnz L_6554		;6540
	call 042f8h		;6542   ; a_solo_ret: con 9-10-11, p11:BD11 (no hace nada: `ret`); vuelve con 1-2-3
	call 04301h		;6545   ; a_demo_cuadro: con 9-10-11, p11:BC86 (un cuadro de la demo (p11:BC92); al acabar el guion, sonido 0x85 y 0xE340 = 0); vuelve con 1-2-3
	ld a,(0e340h)		;6548   ; lee en partida (bit 7: la demo acaba)
	or a			;654b
	ret nz			;654c
L_654D:
	xor a			;654d
pon_estado:		; 0xE000 = A y el paso a cero
	ld (0e000h),a		;654e   ; guarda el estado del juego
	jp L_65D5		;6551
L_6554:
	call 04377h		;6554   ; a_historia: con 4-5-6, p04:6E03 (un paso de la historia (0xE350, tabla p04:6E09): ocho pantallas de texto (p04:6EDC) con su animacion); vuelve con 1-2-3
	ld a,(0e333h)		;6557   ; lee el paso ha acabado
	and a			;655a
	ret z			;655b
L_655C:
	ld (0e004h),a		;655c   ; guarda la espera del estado, en cuadros
siguiente_paso:		; 0xE001 + 1
	ld hl,0e001h		;655f   ; apunta a el paso del estado
	inc (hl)			;6562
	ret			;6563
estado_3:		; estado 3: empieza la partida (p01:6677) y pasa al 4
	call borra_partida		;6564   ; borra_partida: 0xE340-0xF080 a cero, la sala 0x200, nombres y posicion de partida
	ld a,001h		;6567
	ld (0e340h),a		;6569   ; guarda en partida (bit 7: la demo acaba)
	jr siguiente_estado		;656c
estado_4:		; estado 4: los nombres, la carga de partida y la primera sala, paso a paso
	djnz L_658B		;656e
	call pantalla_de_nombres		;6570   ; pantalla_de_nombres: un paso de la pantalla de nombres (0xE351, tabla p01:67EF)
	ld a,(0e333h)		;6573   ; lee el paso ha acabado
	or a			;6576
	ret z			;6577
	call nombres_por_defecto		;6578   ; nombres_por_defecto: si estan vacios, los nombres de 0xEB00 y 0xEB09 por defecto
	ld a,(0e33ch)		;657b
	and a			;657e
	jp z,siguiente_paso		;657f   ; siguiente_paso: 0xE001 + 1
	ld hl,0e001h		;6582   ; apunta a el paso del estado
	inc (hl)			;6585
	inc (hl)			;6586
	inc (hl)			;6587
	jp siguiente_paso		;6588   ; siguiente_paso: 0xE001 + 1
L_658B:
	djnz L_659F		;658b
	call 058bfh		;658d   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	call 058ffh		;6590   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	xor a			;6593
	ld (0e333h),a		;6594   ; guarda el paso ha acabado
	ld l,a			;6597
	ld h,a			;6598
	ld (0e350h),hl		;6599   ; guarda el paso de la escena (inicial, historia, final) y el byte siguiente (16 bits)
	jp siguiente_paso		;659c   ; siguiente_paso: 0xE001 + 1
L_659F:
	djnz L_65B2		;659f
	call 05ecah		;65a1   ; vuelca_sprites: los 32 sprites de 0xF000 a 0x3B00, rotando el orden cada cuadro (0xE006)
	call 04266h		;65a4   ; a_escena_inicial: con 4-5-6, p04:6693 (un paso de la escena inicial (0xE350, tabla p04:6699)); vuelve con 1-2-3
	ld a,(0e333h)		;65a7   ; lee el paso ha acabado
	or a			;65aa
	ret z			;65ab
	call siguiente_paso		;65ac   ; siguiente_paso: 0xE001 + 1
	jp siguiente_paso		;65af   ; siguiente_paso: 0xE001 + 1
L_65B2:
	djnz L_65BF		;65b2
	call menu_de_carga		;65b4   ; menu_de_carga: un paso del menu de carga (0xE38E, tabla p01:6AD4)
	ld a,(0e333h)		;65b7   ; lee el paso ha acabado
	or a			;65ba
	ret z			;65bb
	jp siguiente_paso		;65bc   ; siguiente_paso: 0xE001 + 1
L_65BF:
	djnz L_65DA		;65bf
	call 058bfh		;65c1   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	call primera_sala		;65c4   ; primera_sala: la sala de partida (o la de 0xE338, p01:67E3) con sus banderas y la entrada
	xor a			;65c7
	ld (0e334h),a		;65c8   ; guarda la entrada en la primera sala (0 nueva partida)
	ld (0e350h),a		;65cb   ; guarda el paso de la escena (inicial, historia, final)
siguiente_estado_con_espera:		; 0xE004 = A y el siguiente estado
	ld (0e004h),a		;65ce   ; guarda la espera del estado, en cuadros
siguiente_estado:		; 0xE000 + 1 y el paso a cero
	ld hl,0e000h		;65d1   ; apunta a el estado del juego
	inc (hl)			;65d4
L_65D5:
	xor a			;65d5
	ld (0e001h),a		;65d6   ; guarda el paso del estado
	ret			;65d9
L_65DA:
	call 058bfh		;65da   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	call 0591bh		;65dd   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	xor a			;65e0
	ld (0e333h),a		;65e1   ; guarda el paso ha acabado
	call 0426fh		;65e4   ; a_fuente_y_colores: con 4-5-6, p04:6487 (la fuente en los tres tercios y su color); vuelve con 1-2-3
	ld a,(0e334h)		;65e7   ; lee la entrada en la primera sala (0 nueva partida)
	ld hl,0e001h		;65ea   ; apunta a el paso del estado
	add a,(hl)			;65ed
	ld (hl),a			;65ee
	call siguiente_paso		;65ef   ; siguiente_paso: 0xE001 + 1
	call 0bb00h		;65f2   ; sonido_3b: pide el sonido 0x3B
	ret			;65f5
estado_5:		; estado 5: la partida (p00:5A6E); con 0xE336 pasa al 8
	call 05a6eh		;65f6   ; cuadro_de_la_sala: un cuadro dentro de la sala: sprites, actores (p07:800A), musica y el modo 0xE360 (tabla p00:5A83)
	ld a,(0e336h)		;65f9   ; lee se acaba la partida
	and a			;65fc
	ld a,008h		;65fd
	jp nz,pon_estado		;65ff   ; pon_estado: 0xE000 = A y el paso a cero
	ld a,(0e340h)		;6602   ; lee en partida (bit 7: la demo acaba)
	or a			;6605
	ret nz			;6606
	jr siguiente_estado		;6607
estado_6:		; estado 6: p01:6487 (4-5-6) hasta 0xE340 bit 7
	djnz L_6617		;6609
	call 04278h		;660b   ; a_estado_6_pantalla: con 4-5-6, p06:AEFC (el final segun 0xE338 (tabla p06:AF02)); vuelve con 1-2-3
	ld a,(0e340h)		;660e   ; lee en partida (bit 7: la demo acaba)
	and 080h		;6611
	ret z			;6613
	jp siguiente_estado		;6614   ; siguiente_estado: 0xE000 + 1 y el paso a cero
L_6617:
	xor a			;6617
	ld (0e339h),a		;6618   ; guarda el paso del final del estado 6
	ld (0e004h),a		;661b   ; guarda la espera del estado, en cuadros
	jp siguiente_paso		;661e   ; siguiente_paso: 0xE001 + 1
estado_7:		; estado 7: pantalla vacia, 0xE002 sin el bit 6 y al estado 0
	call 0591bh		;6621   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	ld hl,0e002h		;6624   ; apunta a las banderas del juego (bit 6: suenan los efectos)
	ld a,(hl)			;6627
	and 0bfh		;6628
	ld (hl),a			;662a
	jp L_654D		;662b
estado_8:		; estado 8: los sprites y p09:6C23
	call 05ecah		;662e   ; vuelca_sprites: los 32 sprites de 0xF000 a 0x3B00, rotando el orden cada cuadro (0xE006)
	jp 04281h		;6631   ; a_final: con 9-10-11, p09:6C23 (un paso del final del juego (0xE350, tabla p09:6C29)); vuelve con 1-2-3

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


borra_partida:		; 0xE340-0xF080 a cero, la sala 0x200, nombres y posicion de partida
	ld hl,0e340h		;6677   ; 0xE340-0xF080 a cero
	ld de,0e341h		;667a
	ld bc,00d40h		;667d
	xor a			;6680
	ld (hl),a			;6681
	ldir		;6682
	ld hl,00200h		;6684   ; la primera sala: 0x200
	ld (0eb40h),hl		;6687   ; guarda la sala
	ld hl,0ef25h		;668a   ; el cursor del texto
	ld (0e344h),hl		;668d   ; guarda el principio de la linea del texto
	ld hl,0038bh		;6690   ; el nombre de 0xEB11 por defecto (4 letras y 0xFF)
	ld (0eb12h),hl		;6693
	ld hl,0d67fh		;6696
	ld (0eb14h),hl		;6699
	ld a,0ffh		;669c
	ld (0eb16h),a		;669e
	ld a,(0e335h)		;66a1   ; la opcion del titulo
	and a			;66a4
	jr z,L_66A9		;66a5
	add a,002h		;66a7   ; la segunda opcion entra con 3
L_66A9:
	ld (0e334h),a		;66a9   ; guarda la entrada en la primera sala (0 nueva partida)
	ret			;66ac
cifras_a_vram:		; B cifras BCD de DE (hacia atras) a la VRAM HL, sin ceros a la izquierda
	ld c,000h		;66ad
L_66AF:
	ld a,(de)			;66af   ; el nibble alto
	rra			;66b0
	rra			;66b1
	rra			;66b2
	rra			;66b3
	and 00fh		;66b4
	jr z,L_66BA		;66b6   ; un cero a la izquierda no se escribe
	ld c,0ffh		;66b8   ; a partir de la primera cifra, todas
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
cursor_del_titulo:		; izquierda/derecha cambian 0xE335 y pintan la flecha
	ld hl,0e335h		;66d9   ; la opcion del titulo
	ld a,(0e008h)		;66dc   ; izquierda o derecha?
	and 003h		;66df
	jr z,L_66E8		;66e1
	inc (hl)			;66e3   ; cambia de opcion
	ld a,(hl)			;66e4
	and 001h		;66e5
	ld (hl),a			;66e7
L_66E8:
	ld a,(0e335h)		;66e8   ; lee la opcion del titulo (0 o 1)
	and a			;66eb
	ld bc,03f00h		;66ec   ; la flecha en una u otra
	jr z,L_66F4		;66ef
	ld bc,0003fh		;66f1
L_66F4:
	ld hl,03a8bh		;66f4   ; la flecha de la primera opcion
	ld a,b			;66f7
	call 0004dh		;66f8   ; BIOS WRTVRM - Writes data in VRAM
	ld hl,03aabh		;66fb   ; y la de la segunda
	ld a,c			;66fe
	jp 0004dh		;66ff   ; BIOS WRTVRM - Writes data in VRAM
primera_sala:		; la sala de partida (o la de 0xE338, p01:67E3) con sus banderas y la entrada
	ld a,(0e338h)		;6702   ; lee la sala de partida (indice de p01:67E3)
	cp 002h		;6705
	jr z,L_6733		;6707
	ld a,(0e334h)		;6709   ; lee la entrada en la primera sala (0 nueva partida)
	and a			;670c
	jr z,L_6737		;670d
	ld a,(0eb7ch)		;670f   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 01fh		;6712
	ld (0eb7ch),a		;6714   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	call entra_en_la_sala		;6717   ; entra_en_la_sala: pone el personaje (p01:7112) y monta la sala (p01:677F)
	ld hl,(0eb40h)		;671a   ; lee la sala
	ld bc,00075h		;671d
	and a			;6720
	sbc hl,bc		;6721
	jr nz,L_672A		;6723
	ld hl,0eb5bh		;6725   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	set 4,(hl)		;6728
L_672A:
	ld ix,0e400h		;672a   ; apunta a los 8 actores de la sala (0x80 bytes cada uno)
	ld c,005h		;672e
	jp 042a0h		;6730   ; habla_con_1_2_3_y_1_2_3: datos del personaje, p03:AB92, el texto y modo 3; vuelve con 1-2-3
L_6733:
	xor a			;6733
	ld (0e3aeh),a		;6734
L_6737:
	ld a,(0e338h)		;6737   ; lee la sala de partida (indice de p01:67E3)
	ld de,067e3h		;673a
	call 043a4h		;673d   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld (0eb40h),de		;6740   ; guarda la sala
	ld a,(0e338h)		;6744   ; lee la sala de partida (indice de p01:67E3)
	dec a			;6747
	jr z,entra_en_la_sala		;6748
	ld hl,0eb5bh		;674a   ; apunta a las banderas de la historia, byte 0x1B (se graban con la partida)
	set 1,(hl)		;674d
	set 0,(hl)		;674f
	ld hl,0eb5dh		;6751   ; apunta a las banderas de la historia, byte 0x1D (se graban con la partida)
	set 4,(hl)		;6754
	ld hl,0eb5eh		;6756   ; apunta a las banderas de la historia, byte 0x1E (se graban con la partida)
	set 1,(hl)		;6759
	ld hl,0eb6ah		;675b   ; apunta a las banderas de la historia, byte 0x2A (se graban con la partida)
	set 1,(hl)		;675e
entra_en_la_sala:		; pone el personaje (p01:7112) y monta la sala (p01:677F)
	ld a,008h		;6760
	ld (0e351h),a		;6762   ; guarda el paso de la pantalla de nombres, o la pagina de la historia
	xor a			;6765
	ld (0e007h),a		;6766   ; guarda las banderas de sprites (bit 0: sin rotar)
	ld (0e380h),a		;6769
	ld (0e3afh),a		;676c   ; guarda la cuenta de vueltas por la sala 0x7E
	call personaje_a_la_entrada		;676f   ; personaje_a_la_entrada: modo 0 o 7, todo a cero y la posicion de entrada
	call 043e9h		;6772   ; patrones_del_fotograma: los patrones de sprite de p18:6000[0xE3C3] a 0x1800 y la barra del marcador
	call 042ach		;6775   ; a_fuente: con 4-5-6, p04:648C (la fuente en 0x2808 y 0x3000 y su color); vuelve con 1-2-3
	xor a			;6778
	ld (0e338h),a		;6779   ; guarda la sala de partida (indice de p01:67E3)
	ld (0e334h),a		;677c   ; guarda la entrada en la primera sala (0 nueva partida)
monta_la_sala:		; musica, fichas, mapa, sprites, actores, marcador y menu de la sala
	xor a			;677f
	ld (0e382h),a		;6780
	ld (0e337h),a		;6783   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	call 045e1h		;6786   ; musica_de_la_sala: elige la musica de la sala (nibble p00:4696, numero p00:47B6) y la pide si cambia
	call 058ffh		;6789   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
	call 058d4h		;678c   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	call 050ebh		;678f   ; borra_ventana: borra la ventana del texto 0xEF00 y pone el cursor en 0xEF25
	call 042b5h		;6792   ; a_marco_de_la_escena: con 4-5-6, p04:631F (los RLE p04:633D y p04:6432, el dibujo p04:6443 y 8 x 8 nombres en 0x3818); vuelve con 1-2-3
	call 047c6h		;6795   ; fichas_de_la_sala: el juego de fichas de la sala (nibble p12:6000, lista p12:6120): patrones p12:64CE y colores p12:6C06 a la VRAM
	call 0482fh		;6798   ; graficos_de_la_sala: dos bloques RLE de p12:7990[p12:7750[sala]] a 0x2280 y 0x0280 (patrones y colores)
	call 04a8ch		;679b   ; sprites_de_la_sala: los patrones de sprite de la sala: lista p18:6A28[p18:67F1[sala]] (en la sala 0x12C ademas p27:BBC4)
	call 0514bh		;679e   ; mapa_de_la_sala: la sala 0xEB40 (12 x 8 bloques a nibbles, p15:6000 o p20:B606) a los nombres 0xED00 y la dureza 0xE800
	call 042beh		;67a1   ; a_dibujos_de_la_sala: con 9-10-11, p09:622B (en las salas de p09:6291, los dibujos de p09:63A5 (0xFE cambia el color)); vuelve con 1-2-3
	call 042c7h		;67a4   ; a_dibujos_por_bandera: con 9-10-11, p09:60CC (en las salas de p09:613C, los dibujos de p09:6162 cuya bandera de la historia esta puesta); vuelve con 1-2-3
	call 0443dh		;67a7   ; dibujo_del_marcador: el dibujo 0xE368 (p09:6713) en el marcador, o el marcador vacio
	call sprites_del_personaje		;67aa   ; sprites_del_personaje: los tres sprites del personaje en 0xF000
	call 042d0h		;67ad   ; a_crea_actores_de_la_sala: con 7-8, p07:827A (borra los 8 actores y crea los de la lista p07:8BC2[sala] (o p07:9032/904C); luego el actor 0xC8 de 0xEB69/0xEB7A); vuelve con 1-2-3
	call 042d9h		;67b0   ; a_sprites_de_actores: con 7-8, p07:865C (dos sprites por actor en 0xF020 (fotograma p07:97E8); con el bit 0 de +0x10, en fichas); vuelve con 1-2-3
	call 08947h		;67b3   ; entrada_especial: la posicion de entrada en las salas que la tienen a mano (0x201, 0x118, 0xE2, 0x20E, 0x87, 0x152, 0x21F...)
	call 05e5fh		;67b6   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800
	call 0452dh		;67b9
	ld a,003h		;67bc
	ld (0e8a3h),a		;67be   ; guarda la lista de opciones del menu
	call 0567ah		;67c1   ; opciones_guardadas: las opciones de A con el cursor guardado (0xE8B2/0xE8B1)
	call 056dbh		;67c4   ; pinta_opciones: las opciones de 0xE8B8 (textos p04:7A15) en columna desde 0x3A1A
	ret			;67c7
redibuja_la_sala:		; vuelve a montar las fichas y el mapa de la sala
	call 058d4h		;67c8   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	call 047c6h		;67cb   ; fichas_de_la_sala: el juego de fichas de la sala (nibble p12:6000, lista p12:6120): patrones p12:64CE y colores p12:6C06 a la VRAM
	call 0482fh		;67ce   ; graficos_de_la_sala: dos bloques RLE de p12:7990[p12:7750[sala]] a 0x2280 y 0x0280 (patrones y colores)
	call 0514bh		;67d1   ; mapa_de_la_sala: la sala 0xEB40 (12 x 8 bloques a nibbles, p15:6000 o p20:B606) a los nombres 0xED00 y la dureza 0xE800
	call 042beh		;67d4   ; a_dibujos_de_la_sala: con 9-10-11, p09:622B (en las salas de p09:6291, los dibujos de p09:63A5 (0xFE cambia el color)); vuelve con 1-2-3
	call 042d9h		;67d7   ; a_sprites_de_actores: con 7-8, p07:865C (dos sprites por actor en 0xF020 (fotograma p07:97E8); con el bit 0 de +0x10, en fichas); vuelve con 1-2-3
	call sprites_del_personaje		;67da   ; sprites_del_personaje: los tres sprites del personaje en 0xF000
	call marca_al_personaje		;67dd   ; marca_al_personaje: pone 2 en el bloque del personaje
	jp 05e5fh		;67e0   ; vuelca_zona_de_juego: 16 filas x 24 de 0xED00 a 0x3800

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


pantalla_de_nombres:		; un paso de la pantalla de nombres (0xE351, tabla p01:67EF)
	ld a,(0e351h)		;67e9   ; lee el paso de la pantalla de nombres, o la pagina de la historia
	call 040abh		;67ec   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


nombres_primero:		; monta la pantalla de nombres para el primero
	call tabla_de_letras		;6801   ; tabla_de_letras: la tabla de letras y el marco de la pantalla de nombres en 0xED00
	ld hl,06abbh		;6804
	ld de,0ed44h		;6807
	ld bc,00004h		;680a
	ldir		;680d
	ld hl,06ac4h		;680f
	ld bc,0000ah		;6812
	ldir		;6815
	jp L_696F		;6817
nombres_teclas:		; mueve el cursor por la tabla de letras y escribe o borra
	ld hl,0ed56h		;681a
	ld a,(0e353h)		;681d   ; lee la velocidad del rumbo, o la letra del nombre
	cp 004h		;6820
	jr z,L_6834		;6822
	ld e,a			;6824
	ld d,000h		;6825
	add hl,de			;6827
	ld a,(0e352h)		;6828   ; lee la cuenta de la escena (parpadeo, paso de las particulas)
	inc a			;682b
	ld (0e352h),a		;682c   ; guarda la cuenta de la escena (parpadeo, paso de las particulas)
	and 008h		;682f
	rlca			;6831
	rlca			;6832
	ld (hl),a			;6833
L_6834:
	ld a,(0e008h)		;6834   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	or a			;6837
	ld hl,0e357h		;6838   ; apunta a la repeticion del cursor de las letras
	jr nz,L_6848		;683b
	ld a,(0e009h)		;683d   ; lee las teclas que hay
	and 00fh		;6840
	jr z,L_6848		;6842
	dec (hl)			;6844
	jp nz,vuelca_nombres_1		;6845   ; vuelca_nombres_1: 0x300 de 0xED00 a 0x3800
L_6848:
	ld (hl),00ah		;6848
	bit 5,a		;684a
	ld b,a			;684c
	jr z,L_688F		;684d
	ld a,(0e353h)		;684f   ; lee la velocidad del rumbo, o la letra del nombre
	or a			;6852
	jr z,L_688E		;6853
	ld hl,0ed56h		;6855
	ld d,000h		;6858
	ld e,a			;685a
	add hl,de			;685b
	cp 004h		;685c
	ccf			;685e
	dec a			;685f
	ld (0e353h),a		;6860   ; guarda la velocidad del rumbo, o la letra del nombre
	ld bc,00020h		;6863
	jr c,L_6869		;6866
	ld (hl),c			;6868
L_6869:
	inc c			;6869
	or a			;686a
	sbc hl,bc		;686b
	ld a,(0e354h)		;686d   ; lee el signo de la Y del rumbo, o la casilla del nombre
	dec a			;6870
	ld e,a			;6871
	ld (0e354h),a		;6872   ; guarda el signo de la Y del rumbo, o la casilla del nombre
	ld (hl),b			;6875
	call letra_del_nombre		;6876   ; letra_del_nombre: HL = el nombre en curso (0xEB00 o 0xEB09) + E
	ld a,(hl)			;6879
	sub 003h		;687a
	cp 002h		;687c
	ld (hl),b			;687e
	jp nc,vuelca_nombres_1		;687f   ; vuelca_nombres_1: 0x300 de 0xED00 a 0x3800
	ld a,(0e354h)		;6882   ; lee el signo de la Y del rumbo, o la casilla del nombre
	dec a			;6885
	ld (0e354h),a		;6886   ; guarda el signo de la Y del rumbo, o la casilla del nombre
	dec hl			;6889
	ld (hl),b			;688a
	jp vuelca_nombres_1		;688b   ; vuelca_nombres_1: 0x300 de 0xED00 a 0x3800
L_688E:
	ld a,b			;688e
L_688F:
	bit 4,a		;688f
	jr z,L_68E6		;6891
	ld hl,(0e355h)		;6893   ; lee el signo de la X del rumbo, o el cursor de las letras (16 bits) y el byte siguiente (16 bits)
	inc h			;6896
	call casilla_de_letras		;6897   ; casilla_de_letras: HL = 0xED00 + la casilla de la tabla de letras de HL
	ld a,(0e353h)		;689a   ; lee la velocidad del rumbo, o la letra del nombre
	ld e,a			;689d
	ld b,(hl)			;689e
	inc hl			;689f
	ld a,(hl)			;68a0
	or a			;68a1
	ld d,000h		;68a2
	jr z,L_68AC		;68a4
	call 045bfh		;68a6   ; sonido_48: pide el sonido 0x48
	jp L_6960		;68a9
L_68AC:
	ld a,e			;68ac   ; la casilla del nombre
	cp 004h		;68ad   ; el nombre esta lleno?
	jr z,L_68E6		;68af
	inc a			;68b1
	ld (0e353h),a		;68b2   ; guarda la velocidad del rumbo, o la letra del nombre
	ld a,b			;68b5   ; B = la letra
	dec hl			;68b6
	ld bc,00020h		;68b7
	or a			;68ba
	sbc hl,bc		;68bb
	ld b,a			;68bd
	ld c,(hl)			;68be   ; C = el acento de encima
	ld hl,0ed56h		;68bf   ; la casilla del nombre en pantalla
	add hl,de			;68c2
	ld (hl),b			;68c3   ; la letra
	ld a,c			;68c4
	ld bc,00020h		;68c5
	or a			;68c8
	sbc hl,bc		;68c9
	ld (hl),a			;68cb   ; y su acento encima
	add hl,bc			;68cc
	ld b,(hl)			;68cd
	ld c,a			;68ce
	ld a,(0e354h)		;68cf   ; lee el signo de la Y del rumbo, o la casilla del nombre
	ld e,a			;68d2
	call letra_del_nombre		;68d3   ; letra_del_nombre: HL = el nombre en curso (0xEB00 o 0xEB09) + E
	ld (hl),b			;68d6   ; la letra al nombre
	ld a,c			;68d7
	sub 003h		;68d8   ; con acento (3 o 4)?
	cp 002h		;68da
	jr nc,L_68E1		;68dc
	inc hl			;68de
	ld (hl),c			;68df   ; el acento detras
	inc e			;68e0
L_68E1:
	ld a,e			;68e1
	inc a			;68e2
	ld (0e354h),a		;68e3   ; guarda el signo de la Y del rumbo, o la casilla del nombre
L_68E6:
	ld hl,(0e355h)		;68e6   ; lee el signo de la X del rumbo, o el cursor de las letras (16 bits) y el byte siguiente (16 bits)
	call casilla_de_letras		;68e9   ; casilla_de_letras: HL = 0xED00 + la casilla de la tabla de letras de HL
	ld a,(0e009h)		;68ec   ; lee las teclas que hay
	and 00fh		;68ef
	jp z,vuelca_nombres_1		;68f1   ; vuelca_nombres_1: 0x300 de 0xED00 a 0x3800
	ld c,000h		;68f4
	ld a,(0e009h)		;68f6   ; lee las teclas que hay
	ld (hl),000h		;68f9
	ld b,002h		;68fb
	rra			;68fd
	jr c,L_691F		;68fe
	rra			;6900
	jr c,L_692D		;6901
	rra			;6903
	ld a,(0e356h)		;6904   ; lee el paso Y del rumbo, o la X del cursor de las letras
	jr c,L_6914		;6907
	cp 017h		;6909
	jp z,L_693B		;690b
	add a,b			;690e
	ld (0e356h),a		;690f   ; guarda el paso Y del rumbo, o la X del cursor de las letras
	jr L_6939		;6912
L_6914:
	cp 005h		;6914
	jp z,L_693B		;6916
	sub b			;6919
	ld (0e356h),a		;691a   ; guarda el paso Y del rumbo, o la X del cursor de las letras
	jr L_6939		;691d
L_691F:
	ld a,(0e355h)		;691f   ; lee el signo de la X del rumbo, o el cursor de las letras (16 bits)
	cp 006h		;6922
	jp z,L_693B		;6924
	sub b			;6927
	ld (0e355h),a		;6928   ; guarda el signo de la X del rumbo, o el cursor de las letras (16 bits)
	jr L_6939		;692b
L_692D:
	ld a,(0e355h)		;692d   ; lee el signo de la X del rumbo, o el cursor de las letras (16 bits)
	cp 014h		;6930
	jp z,L_693B		;6932
	add a,b			;6935
	ld (0e355h),a		;6936   ; guarda el signo de la X del rumbo, o el cursor de las letras (16 bits)
L_6939:
	ld c,001h		;6939
L_693B:
	ld hl,(0e355h)		;693b   ; lee el signo de la X del rumbo, o el cursor de las letras (16 bits) y el byte siguiente (16 bits)
	push bc			;693e
	call casilla_de_letras		;693f   ; casilla_de_letras: HL = 0xED00 + la casilla de la tabla de letras de HL
	pop bc			;6942
	ld a,(hl)			;6943
	or a			;6944
	jr z,L_6953		;6945
	ld c,000h		;6947
	ld a,(0e356h)		;6949   ; lee el paso Y del rumbo, o la X del cursor de las letras
	sub 002h		;694c
	ld (0e356h),a		;694e   ; guarda el paso Y del rumbo, o la X del cursor de las letras
	dec hl			;6951
	dec hl			;6952
L_6953:
	ld (hl),03fh		;6953
	ld a,c			;6955
	or a			;6956
	jp z,vuelca_nombres_1		;6957   ; vuelca_nombres_1: 0x300 de 0xED00 a 0x3800
	call 04588h		;695a   ; sonido_05: pide el sonido 5: el del cursor de los menus
	jp vuelca_nombres_1		;695d   ; vuelca_nombres_1: 0x300 de 0xED00 a 0x3800
L_6960:
	ld a,(0e354h)		;6960   ; lee el signo de la Y del rumbo, o la casilla del nombre
	ld e,a			;6963
	ld b,0ffh		;6964
	call letra_del_nombre		;6966   ; letra_del_nombre: HL = el nombre en curso (0xEB00 o 0xEB09) + E
	ld (hl),b			;6969
	ld a,01eh		;696a
	ld (0e352h),a		;696c   ; guarda la cuenta de la escena (parpadeo, paso de las particulas)
L_696F:
	ld a,(0e351h)		;696f   ; lee el paso de la pantalla de nombres, o la pagina de la historia
	inc a			;6972
	ld (0e351h),a		;6973   ; guarda el paso de la pantalla de nombres, o la pagina de la historia
	jp vuelca_nombres_1		;6976   ; vuelca_nombres_1: 0x300 de 0xED00 a 0x3800
letra_del_nombre:		; HL = el nombre en curso (0xEB00 o 0xEB09) + E
	ld a,(0e351h)		;6979   ; lee el paso de la pantalla de nombres, o la pagina de la historia
	cp 001h		;697c
	ld hl,0eb00h		;697e   ; apunta a el primer nombre (8 letras y 0xFF)
	jr z,L_6986		;6981
	ld hl,0eb09h		;6983   ; apunta a el segundo nombre (8 letras y 0xFF)
L_6986:
	add hl,de			;6986
	ret			;6987
nombres_borra:		; espera y borra la pantalla
	ld a,(0e352h)		;6988   ; lee la cuenta de la escena (parpadeo, paso de las particulas)
	dec a			;698b
	ld (0e352h),a		;698c   ; guarda la cuenta de la escena (parpadeo, paso de las particulas)
	ret nz			;698f
	ld hl,0ed00h		;6990   ; apunta a los nombres de la pantalla (32 x 24)
	ld (hl),a			;6993
	ld de,0ed01h		;6994
	ld bc,002ffh		;6997
	ldir		;699a
	ld a,01eh		;699c
	ld (0e352h),a		;699e   ; guarda la cuenta de la escena (parpadeo, paso de las particulas)
	jr L_696F		;69a1
nombres_espera:		; espera 0xE352 cuadros
	ld hl,0e352h		;69a3   ; apunta a la cuenta de la escena (parpadeo, paso de las particulas)
	dec (hl)			;69a6
	ret nz			;69a7
	jp L_696F		;69a8
nombres_segundo:		; monta la pantalla de nombres para el segundo
	call tabla_de_letras		;69ab   ; tabla_de_letras: la tabla de letras y el marco de la pantalla de nombres en 0xED00
	ld hl,06abfh		;69ae
	ld de,0ed44h		;69b1
	ld bc,00005h		;69b4
	ldir		;69b7
	ld hl,06ac4h		;69b9
	ld bc,0000ah		;69bc
	ldir		;69bf
	jp L_696F		;69c1
nombres_hecho:		; 0xE333 = 1: acabado
	ld a,001h		;69c4
	ld (0e333h),a		;69c6   ; guarda el paso ha acabado
	ret			;69c9
casilla_de_letras:		; HL = 0xED00 + la casilla de la tabla de letras de HL
	ld a,l			;69ca   ; L = la Y, H = la X
	ld l,h			;69cb
	and 01fh		;69cc   ; la fila
	rrca			;69ce
	rrca			;69cf
	rrca			;69d0
	ld h,a			;69d1
	and 0f0h		;69d2
	add a,l			;69d4
	ld l,a			;69d5
	ld a,h			;69d6   ; la parte alta de la fila
	and 00fh		;69d7
	add a,0edh		;69d9   ; desde 0xED00
	ld h,a			;69db
	ret			;69dc
tabla_de_letras:		; la tabla de letras y el marco de la pantalla de nombres en 0xED00
	xor a			;69dd
	ld (0e352h),a		;69de   ; guarda la cuenta de la escena (parpadeo, paso de las particulas)
	ld hl,00000h		;69e1
	ld (0e353h),hl		;69e4   ; guarda la velocidad del rumbo, o la letra del nombre y el byte siguiente (16 bits)
	ld hl,00506h		;69e7
	ld (0e355h),hl		;69ea   ; guarda el signo de la X del rumbo, o el cursor de las letras (16 bits) y el byte siguiente (16 bits)
	ld a,00ah		;69ed
	ld (0e357h),a		;69ef   ; guarda la repeticion del cursor de las letras
	ld hl,0edc6h		;69f2
	ld a,040h		;69f5
	ld c,024h		;69f7
	call fila_seguida		;69f9   ; fila_seguida: C-1 letras seguidas desde A en HL, de dos en dos, filas de 10
	ld a,066h		;69fc
	ld c,006h		;69fe
	call fila_seguida_desde		;6a00   ; fila_seguida_desde: como p01:6AA2 sin fijar B
	ld a,063h		;6a03
	ld c,004h		;6a05
	call fila_seguida		;6a07   ; fila_seguida: C-1 letras seguidas desde A en HL, de dos en dos, filas de 10
	ld a,06bh		;6a0a
	ld c,004h		;6a0c
	call fila_seguida_desde		;6a0e   ; fila_seguida_desde: como p01:6AA2 sin fijar B
	ld a,0a3h		;6a11
	ld c,005h		;6a13
	call fila_seguida_desde		;6a15   ; fila_seguida_desde: como p01:6AA2 sin fijar B
	ld a,045h		;6a18
	ld c,010h		;6a1a
	call fila_seguida		;6a1c   ; fila_seguida: C-1 letras seguidas desde A en HL, de dos en dos, filas de 10
	ld a,059h		;6a1f
	ld c,006h		;6a21
	call fila_seguida_desde		;6a23   ; fila_seguida_desde: como p01:6AA2 sin fijar B
	ld a,059h		;6a26
	ld c,006h		;6a28
	call fila_seguida		;6a2a   ; fila_seguida: C-1 letras seguidas desde A en HL, de dos en dos, filas de 10
	ld hl,0eee6h		;6a2d
	ld a,003h		;6a30
	ld c,015h		;6a32
	call fila_de_iguales		;6a34   ; fila_de_iguales: C-1 veces A en HL, de dos en dos, filas de 10
	ld a,004h		;6a37
	ld c,006h		;6a39
	call fila_de_iguales		;6a3b   ; fila_de_iguales: C-1 veces A en HL, de dos en dos, filas de 10
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
	ld (hl),a			;6a68   ; la ficha del borde
	inc hl			;6a69
	ld (de),a			;6a6a   ; arriba y abajo
	inc de			;6a6b
	djnz L_6A68		;6a6c
	dec a			;6a6e   ; la esquina
	ld (hl),a			;6a6f
	ld a,00ch		;6a70   ; y la otra esquina
	ld (de),a			;6a72
	ld hl,0eda4h		;6a73   ; los lados
	ld a,01bh		;6a76   ; con la ficha 0x1B
	ld b,011h		;6a78
L_6A7A:
	ld (hl),a			;6a7a   ; el lado izquierdo
	ld de,00016h		;6a7b
	add hl,de			;6a7e
	ld (hl),a			;6a7f   ; y el derecho
	ld de,0000ah		;6a80   ; la fila siguiente
	add hl,de			;6a83
	djnz L_6A7A		;6a84
	ret			;6a86
vuelca_nombres_1:		; 0x300 de 0xED00 a 0x3800
	ld hl,03800h		;6a87
	ld de,0ed00h		;6a8a   ; apunta a los nombres de la pantalla (32 x 24)
	ld bc,00300h		;6a8d
	jp 05941h		;6a90   ; copia_a_vram: LDIRVM de DE a la VRAM HL
fila_de_iguales:		; C-1 veces A en HL, de dos en dos, filas de 10
	ld b,00ah		;6a93
L_6A95:
	dec c			;6a95   ; una menos
	ret z			;6a96
	ld (hl),a			;6a97   ; la letra
	inc hl			;6a98   ; dos columnas mas alla
	inc hl			;6a99
	djnz L_6A95		;6a9a
	ld de,0002ch		;6a9c   ; la siguiente fila (dos filas mas abajo)
	add hl,de			;6a9f
	jr fila_de_iguales		;6aa0
fila_seguida:		; C-1 letras seguidas desde A en HL, de dos en dos, filas de 10
	ld b,00ah		;6aa2
fila_seguida_desde:		; como p01:6AA2 sin fijar B
	dec c			;6aa4   ; una menos
	ret z			;6aa5
	ld (hl),a			;6aa6   ; la letra
	inc a			;6aa7   ; la siguiente
	inc hl			;6aa8
	inc hl			;6aa9
	djnz fila_seguida_desde		;6aaa
	ld de,0002ch		;6aac   ; la siguiente fila
	add hl,de			;6aaf
	jr fila_seguida		;6ab0

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


menu_de_carga:		; un paso del menu de carga (0xE38E, tabla p01:6AD4)
	ld a,(0e38eh)		;6ace   ; lee el paso del menu de carga
	call 040abh		;6ad1   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


carga_siguiente:		; 0xE38E + 1
	ld hl,0e38eh		;6ae0   ; apunta a el paso del menu de carga
	inc (hl)			;6ae3
	ret			;6ae4
carga_pinta:		; pinta las opciones: con disco (0xFFA7 no es 0xC9) y con el otro cartucho (0xF0F9)
	call 058bfh		;6ae5   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,06e97h		;6ae8
	call 059c2h		;6aeb   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld ix,00001h		;6aee
	ld a,(0ffa7h)		;6af2
	cp 0c9h		;6af5
	ld de,06e89h		;6af7
	jr z,L_6B07		;6afa
	inc ix		;6afc
	ld de,06e7eh		;6afe
	call 059c2h		;6b01   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld de,06e90h		;6b04
L_6B07:
	ld a,(0f0f9h)		;6b07   ; lee hay otro cartucho
	and a			;6b0a
	jr z,L_6B12		;6b0b
	inc ix		;6b0d
	call 059c2h		;6b0f   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
L_6B12:
	push ix		;6b12
	pop hl			;6b14
	ld a,l			;6b15
	inc a			;6b16
	ld (0e8a5h),a		;6b17   ; guarda la ultima opcion
	xor a			;6b1a
	ld (0e8a4h),a		;6b1b   ; guarda la opcion del cursor
	call carga_pinta_cursor		;6b1e   ; carga_pinta_cursor: borra las cuatro flechas y pinta la de la opcion
	jp carga_siguiente		;6b21   ; carga_siguiente: 0xE38E + 1
carga_elige:		; con disparo, la opcion elegida (p01:6B4D)
	call carga_cursor		;6b24   ; carga_cursor: arriba/abajo por las opciones (0xE8A4) con sonido
	ld a,(0e008h)		;6b27   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 010h		;6b2a
	ret z			;6b2c
	xor a			;6b2d
	ld (0e398h),a		;6b2e   ; guarda el paso de la carga
	ld a,(0e8a4h)		;6b31   ; lee la opcion del cursor
	ld hl,06b4dh		;6b34
	call 040a1h		;6b37   ; hl_mas_a: HL = HL + A
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
	ld (0e38eh),a		;6b49   ; guarda el paso del menu de carga
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


carga_de_cinta:		; un paso de la carga de cinta (0xE398, tabla p01:6B57)
	ld a,(0e398h)		;6b51   ; lee el paso de la carga
	call 040abh		;6b54   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


carga_paso:		; 0xE398 + 1
	ld hl,0e398h		;6b65   ; apunta a el paso de la carga
	inc (hl)			;6b68
	ret			;6b69
L_6B6A:
	call 058bfh		;6b6a   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,06f2eh		;6b6d
	call 059c2h		;6b70   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	jp carga_paso		;6b73   ; carga_paso: 0xE398 + 1
L_6B76:
	ld a,(0e008h)		;6b76   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 050h		;6b79
	ret z			;6b7b
	call 058bfh		;6b7c   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	call 0457eh		;6b7f   ; sonido_01: pide el sonido 1
	ld de,06fb1h		;6b82
	call 059c2h		;6b85   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	jp carga_paso		;6b88   ; carga_paso: 0xE398 + 1
lee_la_cinta:		; cabecera de 10 x 0xEA, el nombre de p03:BE03 y 0x3E bytes a 0xEB40; suma de p03:BE3F
	call 000e1h		;6b8b   ; BIOS TAPION - Reads the header block after turning the cassette motor on
	jr c,cinta_mal		;6b8e
	ld b,00ah		;6b90
L_6B92:
	push bc			;6b92
	call 000e4h		;6b93   ; BIOS TAPIN - Reads data from the tape
	pop bc			;6b96
	jr c,cinta_mal		;6b97
	cp 0eah		;6b99
	jr nz,lee_la_cinta		;6b9b
	djnz L_6B92		;6b9d
	ld b,006h		;6b9f
	ld hl,0be03h		;6ba1
L_6BA4:
	push bc			;6ba4
	push hl			;6ba5
	call 000e4h		;6ba6   ; BIOS TAPIN - Reads data from the tape
	pop hl			;6ba9
	pop bc			;6baa
	jr c,cinta_mal		;6bab
	cp (hl)			;6bad
	jr nz,cinta_mal		;6bae
	inc hl			;6bb0
	djnz L_6BA4		;6bb1
	call 000e1h		;6bb3   ; BIOS TAPION - Reads the header block after turning the cassette motor on
	jr c,cinta_mal		;6bb6
	ld hl,0eb40h		;6bb8   ; apunta a la sala (16 bits)
	ld bc,0003eh		;6bbb
L_6BBE:
	push bc			;6bbe
	push hl			;6bbf
	call 000e4h		;6bc0   ; BIOS TAPIN - Reads data from the tape
	pop hl			;6bc3
	pop bc			;6bc4
	jr c,cinta_mal		;6bc5
	ld (hl),a			;6bc7
	inc hl			;6bc8
	dec bc			;6bc9
	ld a,b			;6bca
	or c			;6bcb
	jr nz,L_6BBE		;6bcc
	call 000e4h		;6bce   ; BIOS TAPIN - Reads data from the tape
	jr c,cinta_mal		;6bd1
	ld (0e390h),a		;6bd3   ; guarda la suma de la cinta
	call 0be3fh		;6bd6   ; suma_de_la_partida: A = la suma de los 0x3F bytes de 0xEB40
	ld hl,0e390h		;6bd9   ; apunta a la suma de la cinta
	cp (hl)			;6bdc
	jr nz,cinta_mal		;6bdd
	call 000f0h		;6bdf   ; BIOS TAPOOF - Stops writing on the tape
	jp carga_paso		;6be2   ; carga_paso: 0xE398 + 1
L_6BE5:
	call nombres_de_la_partida		;6be5   ; nombres_de_la_partida: copia los nombres de la partida cargada (0xEB42, 0xEB4A) a 0xEB00 y 0xEB09
	call objetos_de_la_partida		;6be8   ; objetos_de_la_partida: los bits de 0xEB53-0xEB55 al bit 0 de cada objeto de 0xE9D0
	call 058bfh		;6beb   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,06fceh		;6bee
	call 059c2h		;6bf1   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld a,040h		;6bf4
	ld (0e004h),a		;6bf6   ; guarda la espera del estado, en cuadros
	jp carga_paso		;6bf9   ; carga_paso: 0xE398 + 1
L_6BFC:
	ld hl,0e004h		;6bfc   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6bff
	ret nz			;6c00
	jp carga_hecha		;6c01   ; carga_hecha: 0xE333 = 1
cinta_mal:		; para el motor y escribe el aviso de error
	call 000f0h		;6c04   ; BIOS TAPOOF - Stops writing on the tape
	ld a,005h		;6c07
	ld (0e398h),a		;6c09   ; guarda el paso de la carga
	call 058bfh		;6c0c   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,06fedh		;6c0f
	call 059c2h		;6c12   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld a,040h		;6c15
	ld (0e004h),a		;6c17   ; guarda la espera del estado, en cuadros
	jp carga_paso		;6c1a   ; carga_paso: 0xE398 + 1
L_6C1D:
	ld hl,0e004h		;6c1d   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6c20
	ret nz			;6c21
	xor a			;6c22
	ld (0e38eh),a		;6c23   ; guarda el paso del menu de carga
	ret			;6c26
carga_de_disco:		; un paso de la carga de disco (tabla p01:6C2D; p03:BC90)
	ld a,(0e398h)		;6c27   ; lee el paso de la carga
	call 040abh		;6c2a   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
	call 058bfh		;6c3b   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,06f6fh		;6c3e
	call 059c2h		;6c41   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	jp carga_paso		;6c44   ; carga_paso: 0xE398 + 1
L_6C47:
	ld a,(0e008h)		;6c47   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 050h		;6c4a
	ret z			;6c4c
	call 058bfh		;6c4d   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	call 0457eh		;6c50   ; sonido_01: pide el sonido 1
	ld de,06fb1h		;6c53
	call 059c2h		;6c56   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	xor a			;6c59
	ld (0e38fh),a		;6c5a   ; guarda el resultado de la carga (2: fallo)
	jp carga_paso		;6c5d   ; carga_paso: 0xE398 + 1
L_6C60:
	call 0bc90h		;6c60   ; disco_lee: BDOS: abre el fichero de p03:BC85 y lee los 0x3E bytes a 0xE03A
	ld a,(0e38fh)		;6c63   ; lee el resultado de la carga (2: fallo)
	cp 002h		;6c66
	jr z,L_6C97		;6c68
	jp carga_paso		;6c6a   ; carga_paso: 0xE398 + 1
L_6C6D:
	ld hl,0e03ah		;6c6d   ; apunta a la partida leida del disco o del otro cartucho
	ld de,0eb40h		;6c70   ; apunta a la sala (16 bits)
	ld bc,0003eh		;6c73
	ldir		;6c76
	call nombres_de_la_partida		;6c78   ; nombres_de_la_partida: copia los nombres de la partida cargada (0xEB42, 0xEB4A) a 0xEB00 y 0xEB09
	call objetos_de_la_partida		;6c7b   ; objetos_de_la_partida: los bits de 0xEB53-0xEB55 al bit 0 de cada objeto de 0xE9D0
	call 058bfh		;6c7e   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,06fceh		;6c81
	call 059c2h		;6c84   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld a,040h		;6c87
	ld (0e004h),a		;6c89   ; guarda la espera del estado, en cuadros
	jp carga_paso		;6c8c   ; carga_paso: 0xE398 + 1
L_6C8F:
	ld hl,0e004h		;6c8f   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6c92
	ret nz			;6c93
	jp carga_hecha		;6c94   ; carga_hecha: 0xE333 = 1
L_6C97:
	ld a,005h		;6c97
	ld (0e398h),a		;6c99   ; guarda el paso de la carga
	call 058bfh		;6c9c   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,06fedh		;6c9f
	call 059c2h		;6ca2   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld a,040h		;6ca5
	ld (0e004h),a		;6ca7   ; guarda la espera del estado, en cuadros
	jp carga_paso		;6caa   ; carga_paso: 0xE398 + 1
L_6CAD:
	ld hl,0e004h		;6cad   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6cb0
	ret nz			;6cb1
	xor a			;6cb2
	ld (0e38eh),a		;6cb3   ; guarda el paso del menu de carga
	ret			;6cb6
carga_del_otro_cartucho:		; un paso de la carga del otro cartucho (tabla p01:6CBD)
	ld a,(0e398h)		;6cb7   ; lee el paso de la carga
	call 040abh		;6cba   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
	call 058bfh		;6ccb   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,0701ch		;6cce
	call 059c2h		;6cd1   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	jp carga_paso		;6cd4   ; carga_paso: 0xE398 + 1
L_6CD7:
	ld a,(0e008h)		;6cd7   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 050h		;6cda
	ret z			;6cdc
	call 058bfh		;6cdd   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	call 0457eh		;6ce0   ; sonido_01: pide el sonido 1
	ld de,06fb1h		;6ce3
	call 059c2h		;6ce6   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	xor a			;6ce9
	ld (0e38fh),a		;6cea   ; guarda el resultado de la carga (2: fallo)
	jp carga_paso		;6ced   ; carga_paso: 0xE398 + 1
L_6CF0:
	call otro_cartucho_graba		;6cf0   ; otro_cartucho_graba: prepara la peticion en 0xE012 y llama al otro cartucho con C = 0x0B (p01:609D)
	ld a,(0e38fh)		;6cf3   ; lee el resultado de la carga (2: fallo)
	cp 002h		;6cf6
	jr z,L_6D27		;6cf8
	jp carga_paso		;6cfa   ; carga_paso: 0xE398 + 1
L_6CFD:
	ld hl,0e8e0h		;6cfd   ; apunta a la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera)
	ld de,0eb40h		;6d00   ; apunta a la sala (16 bits)
	ld bc,0003eh		;6d03
	ldir		;6d06
	call nombres_de_la_partida		;6d08   ; nombres_de_la_partida: copia los nombres de la partida cargada (0xEB42, 0xEB4A) a 0xEB00 y 0xEB09
	call objetos_de_la_partida		;6d0b   ; objetos_de_la_partida: los bits de 0xEB53-0xEB55 al bit 0 de cada objeto de 0xE9D0
	call 058bfh		;6d0e   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,06fceh		;6d11
	call 059c2h		;6d14   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld a,040h		;6d17
	ld (0e004h),a		;6d19   ; guarda la espera del estado, en cuadros
	jp carga_paso		;6d1c   ; carga_paso: 0xE398 + 1
L_6D1F:
	ld hl,0e004h		;6d1f   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6d22
	ret nz			;6d23
	jp carga_hecha		;6d24   ; carga_hecha: 0xE333 = 1
L_6D27:
	ld a,005h		;6d27
	ld (0e398h),a		;6d29   ; guarda el paso de la carga
	call 058bfh		;6d2c   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,06fedh		;6d2f
	call 059c2h		;6d32   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld a,040h		;6d35
	ld (0e004h),a		;6d37   ; guarda la espera del estado, en cuadros
	jp carga_paso		;6d3a   ; carga_paso: 0xE398 + 1
L_6D3D:
	ld hl,0e004h		;6d3d   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6d40
	ret nz			;6d41
	xor a			;6d42
	ld (0e38eh),a		;6d43   ; guarda el paso del menu de carga
	ret			;6d46
carga_14:		; un paso de la carga con p14:BBF0 (tabla p01:6D4D)
	ld a,(0e398h)		;6d47   ; lee el paso de la carga
	call 040abh		;6d4a   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
	call 058bfh		;6d59   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,07031h		;6d5c
	call 059c2h		;6d5f   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	xor a			;6d62
	ld (0e38fh),a		;6d63   ; guarda el resultado de la carga (2: fallo)
	ld (0e3b2h),a		;6d66   ; guarda el paso de la entrada de la contrasena
	jp carga_paso		;6d69   ; carga_paso: 0xE398 + 1
L_6D6C:
	call 04389h		;6d6c   ; a_pide_contrasena: con 12-13-14, p14:BBF0 (un paso de la entrada de la contrasena (0xE3B2, tabla p14:BBFF)); vuelve con 1-2-3
	ld a,(0e38fh)		;6d6f   ; lee el resultado de la carga (2: fallo)
	and a			;6d72
	ret z			;6d73
	cp 002h		;6d74
	jr z,L_6D9A		;6d76
	jp carga_paso		;6d78   ; carga_paso: 0xE398 + 1
L_6D7B:
	call nombres_de_la_partida		;6d7b   ; nombres_de_la_partida: copia los nombres de la partida cargada (0xEB42, 0xEB4A) a 0xEB00 y 0xEB09
	call objetos_de_la_partida		;6d7e   ; objetos_de_la_partida: los bits de 0xEB53-0xEB55 al bit 0 de cada objeto de 0xE9D0
	call 058bfh		;6d81   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	ld de,06fceh		;6d84
	call 059c2h		;6d87   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld a,040h		;6d8a
	ld (0e004h),a		;6d8c   ; guarda la espera del estado, en cuadros
	jp carga_paso		;6d8f   ; carga_paso: 0xE398 + 1
L_6D92:
	ld hl,0e004h		;6d92   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6d95
	ret nz			;6d96
	jp carga_hecha		;6d97   ; carga_hecha: 0xE333 = 1
L_6D9A:
	ld de,07031h		;6d9a
	call 059d9h		;6d9d   ; bytes_a_vram_a_cero: como p00:59C2 escribiendo ceros
	ld de,07054h		;6da0
	call 059c2h		;6da3   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	ld a,080h		;6da6
	ld (0e004h),a		;6da8   ; guarda la espera del estado, en cuadros
	ld a,005h		;6dab
	ld (0e398h),a		;6dad   ; guarda el paso de la carga
	ret			;6db0
L_6DB1:
	ld hl,0e004h		;6db1   ; apunta a la espera del estado, en cuadros
	dec (hl)			;6db4
	ret nz			;6db5
	ld de,07054h		;6db6
	call 059d9h		;6db9   ; bytes_a_vram_a_cero: como p00:59C2 escribiendo ceros
	ld de,07031h		;6dbc
	call 059c2h		;6dbf   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	xor a			;6dc2
	ld (0e38fh),a		;6dc3   ; guarda el resultado de la carga (2: fallo)
	inc a			;6dc6
	ld (0e3b2h),a		;6dc7   ; guarda el paso de la entrada de la contrasena
	ld (0e398h),a		;6dca   ; guarda el paso de la carga
	ret			;6dcd
carga_hecha:		; 0xE333 = 1
	ld a,(0eb7ch)		;6dce   ; lee las banderas de la historia, byte 0x3C (se graban con la partida)
	and 00fh		;6dd1
	ld (0eb7ch),a		;6dd3   ; guarda las banderas de la historia, byte 0x3C (se graban con la partida)
	ld a,001h		;6dd6
	ld (0e333h),a		;6dd8   ; guarda el paso ha acabado
	ret			;6ddb
carga_cursor:		; arriba/abajo por las opciones (0xE8A4) con sonido
	ld hl,0e8a4h		;6ddc   ; apunta a la opcion del cursor
	ld a,(0e008h)		;6ddf   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 003h		;6de2
	ret z			;6de4
	push af			;6de5
	call 04588h		;6de6   ; sonido_05: pide el sonido 5: el del cursor de los menus
	pop af			;6de9
	and 001h		;6dea
	jr z,L_6DFA		;6dec
	dec (hl)			;6dee
	ld a,(hl)			;6def
	inc a			;6df0
	jr nz,carga_pinta_cursor		;6df1
	ld a,(0e8a5h)		;6df3   ; lee la ultima opcion
	dec a			;6df6
	ld (hl),a			;6df7
	jr carga_pinta_cursor		;6df8
L_6DFA:
	inc (hl)			;6dfa
	ld a,(0e8a5h)		;6dfb   ; lee la ultima opcion
	cp (hl)			;6dfe
	jr nz,carga_pinta_cursor		;6dff
	xor a			;6e01
	ld (hl),a			;6e02
carga_pinta_cursor:		; borra las cuatro flechas y pinta la de la opcion
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
	ld a,(0e8a4h)		;6e1f   ; lee la opcion del cursor
	ld de,06e2eh		;6e22
	call 043a4h		;6e25   ; palabra_de_tabla: DE = la palabra A de la tabla DE
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


nombres_de_la_partida:		; copia los nombres de la partida cargada (0xEB42, 0xEB4A) a 0xEB00 y 0xEB09
	ld hl,0eb00h		;6e36   ; apunta a el primer nombre (8 letras y 0xFF)
	ld de,0eb42h		;6e39   ; apunta a el primer nombre de la partida guardada
	call copia_nombre		;6e3c   ; copia_nombre: 8 bytes de DE a HL y 0xFF tras el ultimo que no es cero
	ld hl,0eb09h		;6e3f   ; apunta a el segundo nombre (8 letras y 0xFF)
	ld de,0eb4ah		;6e42   ; apunta a el segundo nombre de la partida guardada
copia_nombre:		; 8 bytes de DE a HL y 0xFF tras el ultimo que no es cero
	ld b,008h		;6e45
L_6E47:
	ld a,(de)			;6e47   ; una letra
	ld (hl),a			;6e48
	inc hl			;6e49
	inc de			;6e4a
	djnz L_6E47		;6e4b
	ld b,008h		;6e4d   ; desde el final
L_6E4F:
	dec hl			;6e4f   ; hacia atras
	ld a,(hl)			;6e50
	and a			;6e51   ; hasta la ultima letra
	jr nz,L_6E57		;6e52
	djnz L_6E4F		;6e54
	dec hl			;6e56   ; todo ceros: al principio
L_6E57:
	inc hl			;6e57
	ld (hl),0ffh		;6e58
	ret			;6e5a
objetos_de_la_partida:		; los bits de 0xEB53-0xEB55 al bit 0 de cada objeto de 0xE9D0
	ld de,0eb53h		;6e5b   ; apunta a los objetos de la partida guardada (bits)
	ld hl,0e9d0h		;6e5e   ; apunta a los objetos (dos bytes cada uno; bit 0: se lleva)
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
	inc hl			;6e6c   ; dos bytes por objeto
	inc hl			;6e6d
	djnz L_6E67		;6e6e
	dec c			;6e70
	jr nz,L_6E63		;6e71
	ld a,(0eb56h)		;6e73   ; los bits 1-3 de 0xEB56
	and 00eh		;6e76
	ld hl,0e9deh		;6e78   ; apunta a el objeto 7 (bit 0: se lleva)
	or (hl)			;6e7b   ; al objeto 7
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


enciende_la_maquina:		; PSG en silencio, VRAM a cero y los registros del VDP
	ld a,0bfh		;7083
	ld e,a			;7085
	ld (0e2feh),a		;7086   ; guarda la copia del registro 7 del PSG
	ld a,007h		;7089
	call 00093h		;708b   ; BIOS WRTPSG - Writes data to PSG-register
	call 0457eh		;708e   ; sonido_01: pide el sonido 1
	xor a			;7091
	ld (0f0fah),a		;7092   ; guarda sin el sonido de las letras (cambia con F5)
	ld hl,00000h		;7095
	ld bc,04000h		;7098
	xor a			;709b
	call 00056h		;709c   ; BIOS FILVRM - Fills VRAM with value
registros_del_vdp:		; los 8 registros del VDP de p01:70B0
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


lee_los_mandos:		; 0xE009 = lo que hay, 0xE008 = lo nuevo
	call mandos		;70b8   ; mandos: joystick 1 y teclado en un byte: bits 0-3 cursores, 4 disparo o espacio, 5 boton 2 o M, 6 RETURN, 7 F5
	ld hl,0e009h		;70bb   ; apunta a las teclas que hay
teclas_nuevas:		; guarda A en (HL) y deja en (HL-1) lo que no estaba
	ld c,(hl)			;70be   ; C = lo que habia
	ld (hl),a			;70bf   ; se guarda lo que hay
	xor c			;70c0   ; lo que cambia
	and (hl)			;70c1   ; y esta pulsado ahora: lo nuevo
	dec hl			;70c2
	ld (hl),a			;70c3
	ret			;70c4
mandos:		; joystick 1 y teclado en un byte: bits 0-3 cursores, 4 disparo o espacio, 5 boton 2 o M, 6 RETURN, 7 F5
	ld e,08fh		;70c5   ; registro 15 del PSG: el puerto del joystick 1
	ld a,00fh		;70c7
	call 00093h		;70c9   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,00eh		;70cc   ; registro 14: lee el joystick
	di			;70ce
	call 00096h		;70cf   ; BIOS RDPSG - Reads value from PSG-register
	ei			;70d2
	cpl			;70d3   ; pulsado a 1
	and 03fh		;70d4   ; cursores y los dos botones
	push af			;70d6
	ld a,004h		;70d7   ; fila 4 del teclado
	call 00141h		;70d9   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;70dc
	rlca			;70dd
	rlca			;70de
	rlca			;70df
	and 020h		;70e0   ; la M al bit 5
	ld e,a			;70e2
	ld a,007h		;70e3   ; fila 7 del teclado
	call 00141h		;70e5   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;70e8
	rrca			;70e9
	ld b,a			;70ea
	and 040h		;70eb   ; RETURN al bit 6
	or e			;70ed
	ld e,a			;70ee
	ld a,b			;70ef
	rrca			;70f0
	and 080h		;70f1   ; F5 al bit 7
	or e			;70f3
	ld e,a			;70f4
	ld a,008h		;70f5   ; fila 8: espacio y cursores
	call 00141h		;70f7   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;70fa
	rrca			;70fb
	rrca			;70fc
	ld b,a			;70fd
	and 004h		;70fe   ; cursor izquierda al bit 2
	or e			;7100
	ld e,a			;7101
	ld a,b			;7102
	rrca			;7103
	rrca			;7104
	ld b,a			;7105
	and 018h		;7106   ; cursor derecha al bit 3 y espacio al bit 4
	or e			;7108
	ld e,a			;7109
	ld a,b			;710a
	rrca			;710b
	and 003h		;710c   ; cursores arriba y abajo a los bits 0 y 1
	or e			;710e
	pop bc			;710f   ; con el joystick
	or b			;7110   ; juntos
	ret			;7111
personaje_a_la_entrada:		; modo 0 o 7, todo a cero y la posicion de entrada
	ld a,(0e3c0h)		;7112   ; lee el modo del personaje (tabla p01:718E)
	cp 008h		;7115
	ret z			;7117
	xor a			;7118
	ld b,002h		;7119
	call 05dd3h		;711b   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld a,(0e3aeh)		;711e
	or a			;7121
	ld a,000h		;7122
	jr z,L_712B		;7124
	ld (0e3aeh),a		;7126
	ld a,007h		;7129
L_712B:
	ld (0e3c0h),a		;712b   ; guarda el modo del personaje (tabla p01:718E)
	xor a			;712e
	ld (0e3c3h),a		;712f   ; guarda el fotograma del personaje
	ld (0e3c4h),a		;7132   ; guarda el personaje va de un bloque a otro
	ld (0e3c7h),a		;7135   ; guarda la cuenta de cuadros del personaje
	ld (0e3c8h),a		;7138   ; guarda las teclas del cuadro anterior
	ld (0e3cbh),a		;713b
	ld (0e3cch),a		;713e   ; guarda el personaje flota (modo 10)
	ld (0e3ceh),a		;7141
	ld (0e3d9h),a		;7144
	inc a			;7147
	ld (0e3c5h),a		;7148   ; guarda la direccion del paso en curso
	ld (0e3c6h),a		;714b   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ld a,(0e334h)		;714e   ; lee la entrada en la primera sala (0 nueva partida)
	or a			;7151
	jr nz,L_715B		;7152
	ld hl,06050h		;7154
	ld (0e3c1h),hl		;7157   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;715a
L_715B:
	ld hl,05040h		;715b
	ld (0e3c1h),hl		;715e   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ret			;7161
mueve_personaje:		; un cuadro del personaje: el modo 0xE3C0 (tabla p01:718E)
	ld a,(0e3cch)		;7162   ; lee el personaje flota (modo 10)
	or a			;7165
	call nz,salida_especial		;7166   ; salida_especial: en la sala 0x18 o sin 0xEB5A bit 5: a los 16 cuadros sale de la sala
	ld a,(0e340h)		;7169   ; lee en partida (bit 7: la demo acaba)
	or a			;716c
	ret z			;716d
	ld hl,0e3c7h		;716e   ; apunta a la cuenta de cuadros del personaje
	inc (hl)			;7171
	ld a,(0e3c5h)		;7172   ; lee la direccion del paso en curso
	or a			;7175
	jr nz,L_7188		;7176
	ld a,(0e3c0h)		;7178   ; lee el modo del personaje (tabla p01:718E)
	cp 008h		;717b
	jr z,L_7188		;717d
	xor a			;717f
	ld b,002h		;7180
	ld hl,(0e3c1h)		;7182   ; lee la Y del personaje y el byte siguiente (16 bits)
	call 05dd3h		;7185   ; pon_bloque_de_enfrente: pone B en el bloque de delante
L_7188:
	ld a,(0e3c0h)		;7188   ; lee el modo del personaje (tabla p01:718E)
	call 040abh		;718b   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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


personaje_anda:		; modos 0 y 1: anda por la cuadricula de 16 x 16 con los cursores
	ld a,(0e3c4h)		;71b6   ; a medio camino entre dos bloques?
	or a			;71b9
	jp nz,L_722D		;71ba
	ld a,(0e009h)		;71bd   ; los cursores que hay
	and 00fh		;71c0
	ld b,a			;71c2
	ld hl,0e3c8h		;71c3   ; y los del cuadro anterior
	ld a,(hl)			;71c6
	ld c,a			;71c7
	ld (hl),b			;71c8   ; se guardan para el siguiente
	jp z,L_772A		;71c9   ; ninguno: quieto
	cp b			;71cc   ; los mismos que antes: sigue igual
	jp z,L_71E8		;71cd
	or b			;71d0   ; si se suma uno nuevo, manda el nuevo
	cp b			;71d1
	ld a,b			;71d2
	jr nz,L_71D6		;71d3
	xor c			;71d5
L_71D6:
	rra			;71d6   ; el primer bit pulsado da la direccion
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
	ld a,b			;71e4   ; la direccion nueva
	ld (0e3c6h),a		;71e5   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
L_71E8:
	call 05d80h		;71e8   ; en el borde: sale de la sala
	jp z,sale_de_la_sala		;71eb   ; sale_de_la_sala: al borde: 0xE337 = 1 (o 2 en la sala 0x20E)
	call 05d64h		;71ee   ; el bloque de delante
	ld a,(0e3c0h)		;71f1   ; lee el modo del personaje (tabla p01:718E)
	or a			;71f4
	ld a,(hl)			;71f5
	jr z,L_71FC		;71f6
	cp 003h		;71f8
	jr z,L_7204		;71fa
L_71FC:
	cp 005h		;71fc   ; 5: se puede pasar
	jr z,L_7204		;71fe
	or a			;7200   ; libre?
	jp nz,fotograma_del_personaje		;7201   ; duro: solo se gira
L_7204:
	ld a,(0e3c0h)		;7204   ; lee el modo del personaje (tabla p01:718E)
	or a			;7207
	jr z,L_7213		;7208
	ld a,(0e3c5h)		;720a   ; lee la direccion del paso en curso
	ld (0e48ah),a		;720d
	ld (0e48bh),a		;7210
L_7213:
	ld a,b			;7213   ; la direccion del paso
	ld (0e3c5h),a		;7214   ; guarda la direccion del paso en curso
	ld b,002h		;7217
	ld hl,(0e3c1h)		;7219   ; marca el bloque de destino
	call 05dd3h		;721c   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld a,001h		;721f   ; a medio camino
	ld (0e3c4h),a		;7221   ; guarda el personaje va de un bloque a otro
	ld a,(0e3c0h)		;7224   ; lee el modo del personaje (tabla p01:718E)
	or a			;7227
	jr z,L_722D		;7228
	ld (0e485h),a		;722a
L_722D:
	call fotograma_del_personaje		;722d   ; fotograma_del_personaje: 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites
	ld a,(0e3c5h)		;7230   ; el paso de la direccion
	add a,a			;7233
	ld hl,07277h		;7234
	ld d,000h		;7237
	ld e,a			;7239
	add hl,de			;723a
	ld a,(0e3c1h)		;723b   ; Y + paso
	add a,(hl)			;723e
	ld (0e3c1h),a		;723f   ; guarda la Y del personaje
	inc hl			;7242
	ld a,(0e3c2h)		;7243   ; X + paso
	add a,(hl)			;7246
	ld (0e3c2h),a		;7247   ; guarda la X del personaje
	ld hl,0e3c1h		;724a   ; llega a un bloque entero?
	or (hl)			;724d
	and 00fh		;724e
	jp nz,L_772A		;7250
	ld (0e3c4h),a		;7253   ; si: ya no esta a medio camino
	ld (0e37ah),a		;7256   ; guarda acaba de entrar en la sala
	ld a,(0e3c5h)		;7259   ; la direccion contraria
	dec a			;725c
	xor 001h		;725d
	inc a			;725f
	ld c,a			;7260
	ld a,(0e3c0h)		;7261   ; lee el modo del personaje (tabla p01:718E)
	or a			;7264
	jr z,L_726F		;7265
	ld a,(0e482h)		;7267
	rra			;726a
	jr c,L_726F		;726b
	ld b,003h		;726d
L_726F:
	ld a,c			;726f   ; libera el bloque que deja
	ld hl,(0e3c1h)		;7270   ; lee la Y del personaje y el byte siguiente (16 bits)
	call 05dd3h		;7273   ; pon_bloque_de_enfrente: pone B en el bloque de delante
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


personaje_modo_2:		; modo 2: la entrada por arriba
	xor a			;7289
	ld b,a			;728a
	ld hl,04030h		;728b
	call 05dd3h		;728e   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	xor a			;7291
	ld b,a			;7292
	ld hl,08050h		;7293
	call 05dd3h		;7296   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld a,(0e9d2h)		;7299   ; lee el objeto 1 (bit 0: se lleva)
	rra			;729c
	jr c,L_729F		;729d
L_729F:
	ld a,001h		;729f
	ld (0e3a9h),a		;72a1   ; guarda un actor lleva al personaje (no hay menu)
	ld hl,0a010h		;72a4
	ld (0e3c1h),hl		;72a7   ; guarda la Y del personaje y el byte siguiente (16 bits)
	inc a			;72aa
	ld (0e3c5h),a		;72ab   ; guarda la direccion del paso en curso
	inc a			;72ae
	ld (0e3c6h),a		;72af   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ld (0e3c0h),a		;72b2   ; guarda el modo del personaje (tabla p01:718E)
	inc a			;72b5
	ld (0e3c3h),a		;72b6   ; guarda el fotograma del personaje
	call 04597h		;72b9   ; sonido_07: pide el sonido 7
	ret			;72bc
personaje_baja:		; modo 3: baja 2 puntos por cuadro hasta la Y 0x60
	ld a,(0e3c1h)		;72bd   ; lee la Y del personaje
	add a,002h		;72c0
	ld (0e3c1h),a		;72c2   ; guarda la Y del personaje
	sub 060h		;72c5
	jp nz,L_772A		;72c7
	ld (0e3a9h),a		;72ca   ; guarda un actor lleva al personaje (no hay menu)
	ld (0e3c0h),a		;72cd   ; guarda el modo del personaje (tabla p01:718E)
	ld c,a			;72d0
	inc a			;72d1
	ld (0e3cch),a		;72d2   ; guarda el personaje flota (modo 10)
	call 042a0h		;72d5   ; habla_con_1_2_3_y_1_2_3: datos del personaje, p03:AB92, el texto y modo 3; vuelve con 1-2-3
	call 0babah		;72d8   ; sonido_08: pide el sonido 8
	ret			;72db
personaje_modo_4:		; modo 4: a (0x50, 0x30) mirando arriba, modo 5
	xor a			;72dc
	ld (0e3cch),a		;72dd   ; guarda el personaje flota (modo 10)
	ld (0e3c9h),a		;72e0   ; guarda la cuenta de espera del personaje
	ld b,a			;72e3
	ld hl,(0e3c1h)		;72e4   ; lee la Y del personaje y el byte siguiente (16 bits)
	call 05dd3h		;72e7   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld hl,05030h		;72ea
	ld (0e3c1h),hl		;72ed   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ld a,001h		;72f0
	ld (0e3c6h),a		;72f2   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ld a,005h		;72f5
	ld (0e3c0h),a		;72f7   ; guarda el modo del personaje (tabla p01:718E)
	jp fotograma_del_personaje		;72fa   ; fotograma_del_personaje: 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites
personaje_modo_5:		; modo 5: espera a que 0xE503 llegue a 0x70
	ld a,(0e503h)		;72fd
	cp 070h		;7300
	jp c,L_772A		;7302
	xor a			;7305
	ld (0e3c0h),a		;7306   ; guarda el modo del personaje (tabla p01:718E)
	jp L_772A		;7309
personaje_modo_6:		; modo 6: anda empujando (bloques 0x50-0x53)
	ld a,(0e3c4h)		;730c   ; lee el personaje va de un bloque a otro
	or a			;730f
	jp nz,L_7375		;7310
	ld a,(0e009h)		;7313   ; lee las teclas que hay
	and 00fh		;7316
	ld b,a			;7318
	ld hl,0e3c8h		;7319   ; apunta a las teclas del cuadro anterior
	ld a,(hl)			;731c
	ld c,a			;731d
	ld (hl),b			;731e
	jp z,sprites_empujando		;731f   ; sprites_empujando: los sprites del personaje empujando
	cp b			;7322
	jp z,L_733E		;7323
	or b			;7326
	cp b			;7327
	ld a,b			;7328
	jr nz,L_732C		;7329
	xor c			;732b
L_732C:
	rra			;732c   ; el primer bit pulsado
	ld b,001h		;732d   ; arriba
	jr c,L_733A		;732f
	rra			;7331
	inc b			;7332   ; abajo
	jr c,L_733A		;7333
	rra			;7335
	inc b			;7336   ; izquierda
	jr c,L_733A		;7337
	inc b			;7339   ; derecha
L_733A:
	ld a,b			;733a
	ld (0e3c6h),a		;733b   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
L_733E:
	ld c,000h		;733e
	call borde_del_mundo		;7340   ; borde_del_mundo: C = 0xFF si la sala esta en el borde del mapa en la direccion 0xE3C6
	ld a,c			;7343
	cp 0ffh		;7344
	ld a,b			;7346
	jp z,fotograma_del_personaje		;7347   ; fotograma_del_personaje: 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites
	call 05d80h		;734a   ; en_el_borde: Z/C segun si el personaje esta en el borde de su direccion
	jp z,sale_de_la_sala		;734d   ; sale_de_la_sala: al borde: 0xE337 = 1 (o 2 en la sala 0x20E)
	call 05d64h		;7350   ; bloque_de_enfrente: A = el bloque que hay delante del personaje (0xE3C1 + p00:5DE7[0xE3C6])
	ld a,(hl)			;7353
	or a			;7354
	jp z,empuja_bloque		;7355   ; empuja_bloque: mira el bloque de delante: si es 0x50-0x53 lo empuja
	dec a			;7358
	jp nz,fotograma_del_personaje		;7359   ; fotograma_del_personaje: 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites
	ld hl,0e3dah		;735c   ; apunta a empujando un bloque
	ld a,(hl)			;735f
	or a			;7360
	jr z,L_7364		;7361
	dec (hl)			;7363
L_7364:
	ld a,b			;7364
L_7365:
	ld (0e3c5h),a		;7365   ; guarda la direccion del paso en curso
	ld b,002h		;7368
	ld hl,(0e3c1h)		;736a   ; lee la Y del personaje y el byte siguiente (16 bits)
	call 05dd3h		;736d   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld a,001h		;7370
	ld (0e3c4h),a		;7372   ; guarda el personaje va de un bloque a otro
L_7375:
	call fotograma_del_personaje		;7375   ; fotograma_del_personaje: 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites
	ld a,(0e3c5h)		;7378   ; lee la direccion del paso en curso
	add a,a			;737b
	ld hl,07277h		;737c
	ld d,000h		;737f
	ld e,a			;7381
	add hl,de			;7382
	ld a,(0e3c1h)		;7383   ; lee la Y del personaje
	add a,(hl)			;7386
	ld (0e3c1h),a		;7387   ; guarda la Y del personaje
	inc hl			;738a
	ld a,(0e3c2h)		;738b   ; lee la X del personaje
	add a,(hl)			;738e
	ld (0e3c2h),a		;738f   ; guarda la X del personaje
	ld hl,0e3c1h		;7392   ; apunta a la Y del personaje
	or (hl)			;7395
	and 00fh		;7396
	jp nz,sprites_empujando		;7398   ; sprites_empujando: los sprites del personaje empujando
	ld (0e3c4h),a		;739b   ; guarda el personaje va de un bloque a otro
	ld (0e37ah),a		;739e   ; guarda acaba de entrar en la sala
	ld b,001h		;73a1
	ld a,(0e3dah)		;73a3   ; lee empujando un bloque
	or a			;73a6
	jr z,L_73B4		;73a7
	dec b			;73a9
	cp 003h		;73aa
	jr nz,L_73B4		;73ac
	inc b			;73ae
	ld a,002h		;73af
	ld (0e3dah),a		;73b1   ; guarda empujando un bloque
L_73B4:
	ld a,(0e3c5h)		;73b4   ; lee la direccion del paso en curso
	dec a			;73b7
	xor 001h		;73b8
	inc a			;73ba
	ld hl,(0e3c1h)		;73bb   ; lee la Y del personaje y el byte siguiente (16 bits)
	call 05dd3h		;73be   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	jp sprites_empujando		;73c1   ; sprites_empujando: los sprites del personaje empujando
borde_del_mundo:		; C = 0xFF si la sala esta en el borde del mapa en la direccion 0xE3C6
	ld a,(0e3c6h)		;73c4   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ld b,a			;73c7
	dec a			;73c8
	call 040abh		;73c9   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
	ld a,(0e3c1h)		;73d4   ; lee la Y del personaje
	cp 010h		;73d7
	ret nz			;73d9
	ld a,(0eb41h)		;73da
	or a			;73dd
	ret nz			;73de
	ld a,(0eb40h)		;73df   ; lee la sala (16 bits)
	cp 020h		;73e2
	ret nc			;73e4
	ld c,0ffh		;73e5
	ret			;73e7
L_73E8:
	ld a,(0e3c1h)		;73e8   ; lee la Y del personaje
	cp 060h		;73eb
	ret nz			;73ed
	ld a,(0eb41h)		;73ee
	or a			;73f1
	ret z			;73f2
	ld a,(0eb40h)		;73f3   ; lee la sala (16 bits)
	cp 0e0h		;73f6
	ret c			;73f8
	ld c,0ffh		;73f9
	ret			;73fb
L_73FC:
	ld a,(0e3c2h)		;73fc   ; lee la X del personaje
	cp 010h		;73ff
	ret nz			;7401
	ld a,(0eb40h)		;7402   ; lee la sala (16 bits)
	bit 4,a		;7405
	ret nz			;7407
	and 00fh		;7408
	ret nz			;740a
	ld c,0ffh		;740b
	ret			;740d
L_740E:
	ld a,(0e3c2h)		;740e   ; lee la X del personaje
	cp 0a0h		;7411
	ret nz			;7413
	ld a,(0eb40h)		;7414   ; lee la sala (16 bits)
	bit 4,a		;7417
	ret z			;7419
	and 00fh		;741a
	cp 00fh		;741c
	ret nz			;741e
	ld c,0ffh		;741f
	ret			;7421
empuja_bloque:		; mira el bloque de delante: si es 0x50-0x53 lo empuja
	ld d,000h		;7422
	ld a,(0e3c6h)		;7424   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	add a,a			;7427
	ld e,a			;7428
	ld hl,074bch		;7429
	add hl,de			;742c
	ld a,(0e3c1h)		;742d   ; lee la Y del personaje
	add a,(hl)			;7430
	ld e,a			;7431
	inc hl			;7432
	ld a,(0e3c2h)		;7433   ; lee la X del personaje
	add a,(hl)			;7436
	ld d,a			;7437
	ex de,hl			;7438
	call 04509h		;7439   ; mapa_de_bloques: HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
	ld a,(hl)			;743c
	cp 050h		;743d
	jr c,L_7457		;743f
	cp 054h		;7441
	jr nc,L_7457		;7443
	ld a,(0e3dah)		;7445   ; lee empujando un bloque
	cp 002h		;7448
	jr z,L_7451		;744a
	ld a,003h		;744c
	ld (0e3dah),a		;744e   ; guarda empujando un bloque
L_7451:
	ld a,(0e3c6h)		;7451   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	jp L_7365		;7454
L_7457:
	ld a,(0e3dah)		;7457   ; lee empujando un bloque
	or a			;745a
	jp nz,sprites_empujando		;745b   ; sprites_empujando: los sprites del personaje empujando
	xor a			;745e
	ld (0e3d9h),a		;745f
	ld d,a			;7462
	ld hl,0eb74h		;7463   ; apunta a las banderas de la historia, byte 0x34 (se graban con la partida)
	ld a,0f8h		;7466
	and (hl)			;7468
	ld (hl),a			;7469
	ld a,(0e3c6h)		;746a   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	or (hl)			;746d
	ld (hl),a			;746e
	ld a,00dh		;746f
	ld (0e3c0h),a		;7471   ; guarda el modo del personaje (tabla p01:718E)
	ld a,030h		;7474
	ld (0e3d5h),a		;7476
	ld a,(0e3c6h)		;7479   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	add a,a			;747c
	ld e,a			;747d
	ld hl,074bch		;747e
	add hl,de			;7481
	ld a,(0e3c1h)		;7482   ; lee la Y del personaje
	ld e,a			;7485
	ld b,(hl)			;7486
	add a,b			;7487
	ld (0e3c1h),a		;7488   ; guarda la Y del personaje
	inc hl			;748b
	ld a,(0e3c2h)		;748c   ; lee la X del personaje
	ld d,a			;748f
	ld b,(hl)			;7490
	add a,b			;7491
	ld (0e3c2h),a		;7492   ; guarda la X del personaje
	ld a,d			;7495
	rra			;7496
	rra			;7497
	rra			;7498
	rra			;7499
	and 00fh		;749a
	or e			;749c
	ld (0eb7ah),a		;749d   ; guarda las banderas de la historia, byte 0x3A (se graban con la partida)
	ld bc,000c8h		;74a0
	ld l,002h		;74a3
	xor a			;74a5
	call 04297h		;74a6   ; a_crea_actor: con 7-8, p07:82FE (en el primer hueco de 0xE400: el tipo BC en (E, D), direccion al azar, colores (p07:83B4) y nombre (p08:A063)); vuelve con 1-2-3
	ld hl,(0eb40h)		;74a9   ; lee la sala
	ld a,(0eb6ah)		;74ac   ; lee las banderas de la historia, byte 0x2A (se graban con la partida)
	res 0,a		;74af
	or h			;74b1
	ld h,a			;74b2
	ld (0eb69h),hl		;74b3   ; guarda las banderas de la historia, byte 0x29 (se graban con la partida) y el byte siguiente (16 bits)
	call fotograma_del_personaje		;74b6   ; fotograma_del_personaje: 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites
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


personaje_modo_7:		; modo 7: sube por la entrada
	ld a,001h		;74c6
	ld (0e3c6h),a		;74c8   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ld a,(0eb40h)		;74cb   ; lee la sala (16 bits)
	cp 0d0h		;74ce
	ld a,(0e3c1h)		;74d0   ; lee la Y del personaje
	jr z,L_74DC		;74d3
	or a			;74d5
	jp nz,personaje_un_paso		;74d6   ; personaje_un_paso: un paso en la direccion 0xE3C6 (tabla p01:7277)
	jp sale_de_la_sala		;74d9   ; sale_de_la_sala: al borde: 0xE337 = 1 (o 2 en la sala 0x20E)
L_74DC:
	sub 060h		;74dc
	jp nz,personaje_un_paso		;74de   ; personaje_un_paso: un paso en la direccion 0xE3C6 (tabla p01:7277)
	ld (0e3c0h),a		;74e1   ; guarda el modo del personaje (tabla p01:718E)
	ld hl,06060h		;74e4
	ld b,002h		;74e7
	call 05dd3h		;74e9   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld hl,06070h		;74ec
	xor a			;74ef
	ld b,a			;74f0
	jp 05dd3h		;74f1   ; pon_bloque_de_enfrente: pone B en el bloque de delante
personaje_modo_8:		; modo 8
	ld hl,05020h		;74f4
	ld (0e3c1h),hl		;74f7   ; guarda la Y del personaje y el byte siguiente (16 bits)
	xor a			;74fa
	ld (0e3cch),a		;74fb   ; guarda el personaje flota (modo 10)
	ld (0e3c9h),a		;74fe   ; guarda la cuenta de espera del personaje
	ld a,002h		;7501
	ld (0e3c3h),a		;7503   ; guarda el fotograma del personaje
	ld a,0c0h		;7506
	ld (0e3d6h),a		;7508
	call sprites_fijos		;750b   ; sprites_fijos: cuatro sprites fijos en (0x14, 0x64)
	ld c,000h		;750e
	jp 042a0h		;7510   ; habla_con_1_2_3_y_1_2_3: datos del personaje, p03:AB92, el texto y modo 3; vuelve con 1-2-3
personaje_modo_10:		; modo 10: empieza a flotar hacia el personaje
	xor a			;7513
	ld (0e3d4h),a		;7514
	ld (0e3cfh),a		;7517
	ld (0e3d1h),a		;751a
	inc a			;751d
	ld (0e3cch),a		;751e   ; guarda el personaje flota (modo 10)
	ld (0e3c6h),a		;7521   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	xor a			;7524
	ld b,a			;7525
	ld hl,(0e3c1h)		;7526   ; lee la Y del personaje y el byte siguiente (16 bits)
	call 05dd3h		;7529   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld hl,0e3c0h		;752c   ; apunta a el modo del personaje (tabla p01:718E)
	inc (hl)			;752f
	ld a,(0e3c1h)		;7530   ; lee la Y del personaje
	ld (0e3d0h),a		;7533
	ld a,(0e3c2h)		;7536   ; lee la X del personaje
	ld (0e3d2h),a		;7539
	ld a,004h		;753c
	ld (0e3d3h),a		;753e
L_7541:
	call rumbo_al_personaje		;7541   ; rumbo_al_personaje: el paso (HL, DE) hacia el personaje desde E, D con la velocidad A
	push de			;7544
	ld de,(0e3cfh)		;7545
	add hl,de			;7549
	ld (0e3cfh),hl		;754a
	pop de			;754d
	ld hl,(0e3d1h)		;754e
	add hl,de			;7551
	ld (0e3d1h),hl		;7552
	ld a,(0e3d0h)		;7555
	ld (0e3c1h),a		;7558   ; guarda la Y del personaje
	ld a,(0e3d2h)		;755b
	ld (0e3c2h),a		;755e   ; guarda la X del personaje
	jp L_772A		;7561
personaje_modo_11:		; modo 11: gira cada 8 cuadros
	ld a,(0e3c7h)		;7564   ; lee la cuenta de cuadros del personaje
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
	call 040a1h		;757b   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;757e
	ld (0e3c6h),a		;757f   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
L_7582:
	call fotograma_del_personaje		;7582   ; fotograma_del_personaje: 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites
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


personaje_modo_12:		; modo 12: vuelve a andar
	ld hl,(0e3c1h)		;758e   ; lee la Y del personaje y el byte siguiente (16 bits)
	xor a			;7591
	ld b,a			;7592
	call 05dd3h		;7593   ; pon_bloque_de_enfrente: pone B en el bloque de delante
	ld a,002h		;7596
	ld (0e3c6h),a		;7598   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	call fotograma_del_personaje		;759b   ; fotograma_del_personaje: 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites
	ld hl,0e3c0h		;759e   ; apunta a el modo del personaje (tabla p01:718E)
	xor a			;75a1
	ld (hl),a			;75a2
	ld (0e3c9h),a		;75a3   ; guarda la cuenta de espera del personaje
	ld hl,0e0e0h		;75a6
	ld (0f00ch),hl		;75a9
	ld (0f00eh),hl		;75ac
L_75AF:
	ret			;75af
personaje_espera:		; modo 13: espera 0xE3D5 cuadros y vuelve al 0
	ld hl,0e3d5h		;75b0
	dec (hl)			;75b3
	ret nz			;75b4
	xor a			;75b5
	ld (0e3c0h),a		;75b6   ; guarda el modo del personaje (tabla p01:718E)
	ret			;75b9
L_75BA:
	ret			;75ba
personaje_modo_15:		; modo 15: si no hay actor 0, a (0x50, 0x60)
	ld a,(0e400h)		;75bb   ; lee los 8 actores de la sala (0x80 bytes cada uno)
	or a			;75be
	jp nz,pegado_al_actor		;75bf   ; pegado_al_actor: la posicion del actor 0 mas la de p01:766F[direccion]
	ld hl,05060h		;75c2
	ld (0e3c1h),hl		;75c5   ; guarda la Y del personaje y el byte siguiente (16 bits)
	ld a,002h		;75c8
	ld (0e337h),a		;75ca   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,0020ch		;75cd
	ld (0e36ah),hl		;75d0   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
personaje_modo_siguiente:		; 0xE3C0 + 1
	ld hl,0e3c0h		;75d3   ; apunta a el modo del personaje (tabla p01:718E)
	inc (hl)			;75d6
	jp L_772A		;75d7
personaje_sigue_al_actor:		; modo 16: pegado al actor 0
	call pegado_al_actor		;75da   ; pegado_al_actor: la posicion del actor 0 mas la de p01:766F[direccion]
	ld a,(0e3c1h)		;75dd   ; lee la Y del personaje
	ld b,a			;75e0
	ld a,(0e3c2h)		;75e1   ; lee la X del personaje
	or b			;75e4
	and 00fh		;75e5
	ret nz			;75e7
	ld b,a			;75e8
	ld a,(0e3c6h)		;75e9   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	dec a			;75ec
	xor 001h		;75ed
	inc a			;75ef
	ld hl,(0e3c1h)		;75f0   ; lee la Y del personaje y el byte siguiente (16 bits)
	jp 05dd3h		;75f3   ; pon_bloque_de_enfrente: pone B en el bloque de delante
L_75F6:
	ld hl,0e3c0h		;75f6   ; apunta a el modo del personaje (tabla p01:718E)
	inc (hl)			;75f9
	call busca_salida		;75fa   ; busca_salida: la primera direccion con un bloque 4 delante; acarreo si la hay
	ld (0e3c6h),a		;75fd   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
personaje_un_paso:		; un paso en la direccion 0xE3C6 (tabla p01:7277)
	ld a,(0e3c6h)		;7600   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ld (0e3c5h),a		;7603   ; guarda la direccion del paso en curso
	add a,a			;7606
	ld hl,07277h		;7607
	ld d,000h		;760a
	ld e,a			;760c
	add hl,de			;760d
	ld a,(0e3c1h)		;760e   ; lee la Y del personaje
	add a,(hl)			;7611
	ld (0e3c1h),a		;7612   ; guarda la Y del personaje
	inc hl			;7615
	ld a,(0e3c2h)		;7616   ; lee la X del personaje
	add a,(hl)			;7619
	ld (0e3c2h),a		;761a   ; guarda la X del personaje
	jp fotograma_del_personaje		;761d   ; fotograma_del_personaje: 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites
L_7620:
	call personaje_un_paso		;7620   ; personaje_un_paso: un paso en la direccion 0xE3C6 (tabla p01:7277)
	ld a,(0e3c1h)		;7623   ; lee la Y del personaje
	ld b,a			;7626
	ld a,(0e3c2h)		;7627   ; lee la X del personaje
	or b			;762a
	and 00fh		;762b
	ret nz			;762d
	call personaje_modo_siguiente		;762e   ; personaje_modo_siguiente: 0xE3C0 + 1
	ret			;7631
L_7632:
	ld a,(0e400h)		;7632   ; lee los 8 actores de la sala (0x80 bytes cada uno)
	or a			;7635
	jr nz,pegado_al_actor		;7636
	ld a,(0e3c1h)		;7638   ; lee la Y del personaje
	or a			;763b
	jr nz,personaje_un_paso		;763c
	jp sale_de_la_sala		;763e   ; sale_de_la_sala: al borde: 0xE337 = 1 (o 2 en la sala 0x20E)
busca_salida:		; la primera direccion con un bloque 4 delante; acarreo si la hay
	xor a			;7641
L_7642:
	inc a			;7642   ; la siguiente direccion
	cp 005h		;7643   ; las cuatro
	ret nc			;7645
	ld hl,(0e3c1h)		;7646   ; lee la Y del personaje y el byte siguiente (16 bits)
	call 05d6ah		;7649
	ld a,(hl)			;764c   ; el bloque en esa direccion
	cp 004h		;764d   ; 4: una salida
	ld a,b			;764f
	jr nz,L_7642		;7650
	scf			;7652   ; la hay: acarreo
	ret			;7653
pegado_al_actor:		; la posicion del actor 0 mas la de p01:766F[direccion]
	ld a,(0e40bh)		;7654
	ld (0e3c6h),a		;7657   ; guarda la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ld de,0766fh		;765a
	call 043a4h		;765d   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ld a,(0e403h)		;7660
	add a,e			;7663
	ld (0e3c1h),a		;7664   ; guarda la Y del personaje
	ld a,(0e404h)		;7667
	add a,d			;766a
	ld (0e3c2h),a		;766b   ; guarda la X del personaje
	jp fotograma_del_personaje		;766e   ; fotograma_del_personaje: 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites

; ----------------------------------------------------------------------
; DATOS resto_7671: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (8 bytes)
;   0x7671..0x7679  (8 bytes)
DATA_resto_7671:
	defb 010h,000h,0f0h,000h,000h,010h,000h,0f0h	; 7671  ........

; ======================================================================
; CODIGO 0x7679..0x77e1  (360 bytes)
; ======================================================================


marca_al_personaje:		; pone 2 en el bloque del personaje
	xor a			;7679
	ld b,002h		;767a
	ld hl,(0e3c1h)		;767c   ; lee la Y del personaje y el byte siguiente (16 bits)
	jp 05dd3h		;767f   ; pon_bloque_de_enfrente: pone B en el bloque de delante
salida_especial:		; en la sala 0x18 o sin 0xEB5A bit 5: a los 16 cuadros sale de la sala
	ld a,(0eb40h)		;7682   ; lee la sala (16 bits)
	cp 018h		;7685
	jr z,L_769F		;7687
	ld a,(0eb5ah)		;7689   ; lee las banderas de la historia, byte 0x1A (se graban con la partida)
	bit 5,a		;768c
	ret nz			;768e
	ld a,(0e3c7h)		;768f   ; lee la cuenta de cuadros del personaje
	and a			;7692
	ret nz			;7693
	call cuenta_de_espera		;7694   ; cuenta_de_espera: 0xE3C9 + 1; Z al llegar a 16
	ret nz			;7697
	ld (0e340h),a		;7698   ; guarda en partida (bit 7: la demo acaba)
	ld (0e338h),a		;769b   ; guarda la sala de partida (indice de p01:67E3)
	ret			;769e
L_769F:
	ld a,(0e3c7h)		;769f   ; lee la cuenta de cuadros del personaje
	and 01fh		;76a2
	ret nz			;76a4
	call cuenta_de_espera		;76a5   ; cuenta_de_espera: 0xE3C9 + 1; Z al llegar a 16
	ret nz			;76a8
	ld (0e340h),a		;76a9   ; guarda en partida (bit 7: la demo acaba)
	ld (0e3c9h),a		;76ac   ; guarda la cuenta de espera del personaje
	inc a			;76af
	ld (0e338h),a		;76b0   ; guarda la sala de partida (indice de p01:67E3)
	ld a,008h		;76b3
	ld (0e3c0h),a		;76b5   ; guarda el modo del personaje (tabla p01:718E)
	ld hl,0eb64h		;76b8   ; apunta a las banderas de la historia, byte 0x24 (se graban con la partida)
	set 7,(hl)		;76bb
	ret			;76bd
cuenta_de_espera:		; 0xE3C9 + 1; Z al llegar a 16
	ld a,(0e3c9h)		;76be   ; lee la cuenta de espera del personaje
	inc a			;76c1
	ld (0e3c9h),a		;76c2   ; guarda la cuenta de espera del personaje
	sub 010h		;76c5
	or a			;76c7
	ret			;76c8
L_76C9:
	xor a			;76c9
	ld (0e3c0h),a		;76ca   ; guarda el modo del personaje (tabla p01:718E)
sale_de_la_sala:		; al borde: 0xE337 = 1 (o 2 en la sala 0x20E)
	ld hl,(0eb40h)		;76cd   ; lee la sala
	ld a,h			;76d0
	cp 002h		;76d1
	jr nz,L_76D9		;76d3
	ld a,l			;76d5
	cp 01fh		;76d6
	ret z			;76d8
L_76D9:
	ld a,(0e3ceh)		;76d9
	or a			;76dc
	jr nz,fotograma_del_personaje		;76dd
	ld a,(0e3c6h)		;76df   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ld (0e3c5h),a		;76e2   ; guarda la direccion del paso en curso
	ld a,00ah		;76e5
	ld (0e3cdh),a		;76e7
	and a			;76ea
	ld hl,0020eh		;76eb
	ld de,(0eb40h)		;76ee   ; lee la sala
	sbc hl,de		;76f2
	jr nz,L_7704		;76f4
	ld a,002h		;76f6
	ld (0e337h),a		;76f8   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld de,00087h		;76fb
	ld (0e36ah),de		;76fe   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
	jr fotograma_del_personaje		;7702
L_7704:
	ld a,001h		;7704
	ld (0e337h),a		;7706   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
fotograma_del_personaje:		; 0xE3C3 = 2 * (direccion - 1) + el bit 4 de 0xE3C7 y sus sprites
	ld a,(0e3c6h)		;7709   ; lee la direccion del personaje (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	dec a			;770c
	add a,a			;770d
	ld hl,0e3c7h		;770e   ; apunta a la cuenta de cuadros del personaje
	bit 4,(hl)		;7711
	jr z,L_7716		;7713
	inc a			;7715
L_7716:
	ld (0e3c3h),a		;7716   ; guarda el fotograma del personaje
	ld a,(0e3d9h)		;7719
	or a			;771c
	jr nz,sprites_empujando		;771d
sprites_del_personaje:		; los tres sprites del personaje en 0xF000
	ld a,(0e3c0h)		;771f   ; lee el modo del personaje (tabla p01:718E)
	cp 008h		;7722
	jr z,sprites_fijos		;7724
	cp 006h		;7726
	jr z,sprites_empujando		;7728
L_772A:
	and a			;772a   ; la sala 0x22C
	ld de,0022ch		;772b
	ld hl,(0eb40h)		;772e   ; lee la sala
	sbc hl,de		;7731
	ld d,004h		;7733   ; color 4 en la 0x22C
	jr z,L_773E		;7735
	dec hl			;7737   ; y en la 0x22D
	ld a,h			;7738
	or l			;7739
	jr z,L_773E		;773a
	ld d,001h		;773c   ; color 1 en las demas
L_773E:
	ld h,d			;773e
	ld de,(0e3c1h)		;773f   ; lee la Y del personaje y el byte siguiente (16 bits)
	ld (0f000h),de		;7743   ; guarda los atributos de los 32 sprites y el byte siguiente (16 bits)
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
sprites_fijos:		; cuatro sprites fijos en (0x14, 0x64)
	ld de,06414h		;7769   ; Y 0x14, X 0x64
	ld (0f000h),de		;776c   ; guarda los atributos de los 32 sprites y el byte siguiente (16 bits)
	ld hl,001ach		;7770   ; patron 0xAC, color 1
	ld (0f002h),hl		;7773
	ld (0f004h),de		;7776
	ld hl,00bb0h		;777a   ; patron 0xB0, color 0x0B
	ld (0f006h),hl		;777d
	ld a,d			;7780
	add a,00ch		;7781   ; 12 puntos a la derecha
	ld d,a			;7783
	ld (0f008h),de		;7784
	ld hl,001b4h		;7788   ; patron 0xB4, color 1
	ld (0f00ah),hl		;778b
	ld (0f00ch),de		;778e
	ld hl,00bb8h		;7792   ; patron 0xB8, color 0x0B
	ld (0f00eh),hl		;7795
	ret			;7798
sprites_empujando:		; los sprites del personaje empujando
	ld a,(0e3dah)		;7799   ; lee empujando un bloque
	or a			;779c
	jr nz,L_77C5		;779d
	ld de,(0e3c1h)		;779f   ; lee la Y del personaje y el byte siguiente (16 bits)
	ld (0f000h),de		;77a3   ; guarda los atributos de los 32 sprites y el byte siguiente (16 bits)
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
	ld hl,0f000h		;77c8   ; apunta a los atributos de los 32 sprites
	ld (hl),000h		;77cb
	ld bc,0000bh		;77cd
	ldir		;77d0
	ret			;77d2
accion:		; un paso del guion de la escena de accion (0xE3E0, tabla p01:77E1; paso 0xE3E1)
	ld a,(0e3f8h)		;77d3
	or a			;77d6
	jr nz,$+37		;77d7
	ld bc,(0e3e0h)		;77d9   ; lee la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld a,c			;77dd
	call 040abh		;77de   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

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
	ld hl,0e3f9h		;77fc   ; la cuenta de 0xE3F9
	dec (hl)			;77ff
	ret nz			;7800
	dec hl			;7801   ; al acabar
	ld (hl),000h		;7802   ; 0xE3F8 a cero
	ret			;7804
L_7805:
	djnz L_7825		;7805
	ld hl,0e3eah		;7807
	dec (hl)			;780a
	ret nz			;780b
	ld a,001h		;780c
	ld (0e3a2h),a		;780e
	call 081ceh		;7811   ; accion_siguiente_paso: 0xE3E1 + 1
	call 083ddh		;7814   ; accion_sprites_extra: dos sprites en 0xF020
	ld hl,0eb65h		;7817   ; apunta a las banderas de la historia, byte 0x25 (se graban con la partida)
	set 1,(hl)		;781a
	ld ix,0ea00h		;781c   ; apunta a el rival de la escena (objeto 0, 0x20 bytes)
	ld c,011h		;7820
	jp 042a6h		;7822   ; habla_y_1_2_3: datos del personaje, p03:AB92, el texto y modo 9; vuelve con 1-2-3
L_7825:
	djnz L_782C		;7825
	xor a			;7827
	ld (0e3e3h),a		;7828   ; guarda hacia donde mira en la escena de accion (1-4)
	ret			;782b
L_782C:
	call 081ceh		;782c   ; accion_siguiente_paso: 0xE3E1 + 1
	ld a,060h		;782f
	ld hl,0e3e5h		;7831   ; apunta a la Y del personaje en la escena de accion
	ld (hl),a			;7834
	ld a,078h		;7835
	inc l			;7837
	inc l			;7838
	ld (hl),a			;7839
	xor a			;783a
	ld (0e3e3h),a		;783b   ; guarda hacia donde mira en la escena de accion (1-4)
	ld (0e3eah),a		;783e
	ld a,(0eb79h)		;7841   ; lee las banderas de la historia, byte 0x39 (se graban con la partida)
	bit 3,a		;7844
	jp z,081ceh		;7846   ; accion_siguiente_paso: 0xE3E1 + 1
	ld a,(0eb7dh)		;7849   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	rla			;784c
	jp c,081ceh		;784d   ; accion_siguiente_paso: 0xE3E1 + 1
	ld (hl),0d0h		;7850
	ret			;7852
L_7853:
	djnz L_786F		;7853
	ld hl,0e3e9h		;7855
	dec (hl)			;7858
	call z,081ceh		;7859   ; accion_siguiente_paso: 0xE3E1 + 1
	ld a,(0e3e5h)		;785c   ; lee la Y del personaje en la escena de accion
	add a,0a8h		;785f
	cp 0b0h		;7861
	jp nc,081d6h		;7863   ; accion_avanza_y: 0xE3E4 (Y, con fraccion) += 0xE3EC
	call 081eeh		;7866   ; accion_rebota_y: 0xE3EC = -0xE3EC
	call 0bac9h		;7869   ; sonido_21: pide el sonido 0x21
	jp 081d6h		;786c   ; accion_avanza_y: 0xE3E4 (Y, con fraccion) += 0xE3EC
L_786F:
	djnz L_7891		;786f
	ld a,030h		;7871
	ld (0e3e5h),a		;7873   ; guarda la Y del personaje en la escena de accion
	ld a,078h		;7876
	ld (0e3e7h),a		;7878   ; guarda la X del personaje en la escena de accion
	ld hl,00000h		;787b
	ld (0e3ech),hl		;787e   ; guarda la velocidad Y en la escena de accion y el byte siguiente (16 bits)
	ld hl,0e3e9h		;7881
	ld (hl),090h		;7884
	ld hl,0e3efh		;7886
	ld (hl),0fah		;7889
	call 081e2h		;788b   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
	jp 081ceh		;788e   ; accion_siguiente_paso: 0xE3E1 + 1
L_7891:
	djnz L_78AD		;7891
	ld hl,0e3e9h		;7893
	dec (hl)			;7896
	call z,081ceh		;7897   ; accion_siguiente_paso: 0xE3E1 + 1
	ld a,(0e3e7h)		;789a   ; lee la X del personaje en la escena de accion
	add a,010h		;789d
	cp 020h		;789f
	jp nc,081e2h		;78a1   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
	call 081f8h		;78a4   ; accion_rebota_x: 0xE3EE = -0xE3EE
	call 0bac9h		;78a7   ; sonido_21: pide el sonido 0x21
	jp 081e2h		;78aa   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
L_78AD:
	djnz L_78CD		;78ad
	ld a,003h		;78af
	ld (0e3f1h),a		;78b1
	ld a,030h		;78b4
	ld (0e3e5h),a		;78b6   ; guarda la Y del personaje en la escena de accion
	ld a,078h		;78b9
	ld (0e3e7h),a		;78bb   ; guarda la X del personaje en la escena de accion
	ld hl,00300h		;78be
	ld (0e3ech),hl		;78c1   ; guarda la velocidad Y en la escena de accion y el byte siguiente (16 bits)
	ld (0e3eeh),hl		;78c4   ; guarda la velocidad X en la escena de accion y el byte siguiente (16 bits)
	call 081d3h		;78c7   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
	jp 081ceh		;78ca   ; accion_siguiente_paso: 0xE3E1 + 1
L_78CD:
	djnz L_78E0		;78cd
	ld a,(0e3e5h)		;78cf   ; lee la Y del personaje en la escena de accion
	cp 060h		;78d2
	jp nz,081d3h		;78d4   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
	call 081eeh		;78d7   ; accion_rebota_y: 0xE3EC = -0xE3EC
	call 0bac9h		;78da   ; sonido_21: pide el sonido 0x21
	jp 081ceh		;78dd   ; accion_siguiente_paso: 0xE3E1 + 1
L_78E0:
	djnz L_78F3		;78e0
	ld a,(0e3e5h)		;78e2   ; lee la Y del personaje en la escena de accion
	cp 030h		;78e5
	jp nz,081d3h		;78e7   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
	call 081f8h		;78ea   ; accion_rebota_x: 0xE3EE = -0xE3EE
	call 0bac9h		;78ed   ; sonido_21: pide el sonido 0x21
	jp 081ceh		;78f0   ; accion_siguiente_paso: 0xE3E1 + 1
L_78F3:
	djnz L_7905		;78f3
	ld a,(0e3e5h)		;78f5   ; lee la Y del personaje en la escena de accion
	or a			;78f8
	jp nz,081d3h		;78f9   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
	call 081eeh		;78fc   ; accion_rebota_y: 0xE3EC = -0xE3EC
	call 0bac9h		;78ff   ; sonido_21: pide el sonido 0x21
	jp 081ceh		;7902   ; accion_siguiente_paso: 0xE3E1 + 1
L_7905:
	djnz L_7918		;7905
	ld a,(0e3e5h)		;7907   ; lee la Y del personaje en la escena de accion
	cp 060h		;790a
	jp nz,081d3h		;790c   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
	call 081eeh		;790f   ; accion_rebota_y: 0xE3EC = -0xE3EC
	call 0bac9h		;7912   ; sonido_21: pide el sonido 0x21
	jp 081ceh		;7915   ; accion_siguiente_paso: 0xE3E1 + 1
L_7918:
	djnz L_792B		;7918
	ld a,(0e3e5h)		;791a   ; lee la Y del personaje en la escena de accion
	cp 030h		;791d
	jp nz,081d3h		;791f   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
	call 081f8h		;7922   ; accion_rebota_x: 0xE3EE = -0xE3EE
	call 0bac9h		;7925   ; sonido_21: pide el sonido 0x21
	jp 081ceh		;7928   ; accion_siguiente_paso: 0xE3E1 + 1
L_792B:
	djnz L_793D		;792b
	ld a,(0e3e5h)		;792d   ; lee la Y del personaje en la escena de accion
	or a			;7930
	jp nz,081d3h		;7931   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
	call 081eeh		;7934   ; accion_rebota_y: 0xE3EC = -0xE3EC
	call 0bac9h		;7937   ; sonido_21: pide el sonido 0x21
	jp 081ceh		;793a   ; accion_siguiente_paso: 0xE3E1 + 1
L_793D:
	djnz L_7950		;793d
	ld hl,0e3f1h		;793f
	dec (hl)			;7942
	jr z,L_794D		;7943
	ld a,005h		;7945
	ld (0e3e1h),a		;7947   ; guarda el paso de la escena de la escena de accion
	jp 081d3h		;794a   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
L_794D:
	jp 081ceh		;794d   ; accion_siguiente_paso: 0xE3E1 + 1
L_7950:
	djnz L_7971		;7950
	xor a			;7952
	ld (0e3e5h),a		;7953   ; guarda la Y del personaje en la escena de accion
	ld a,004h		;7956
	ld (0e3f1h),a		;7958
	ld a,008h		;795b
	ld (0e3e7h),a		;795d   ; guarda la X del personaje en la escena de accion
	ld hl,00600h		;7960
	ld (0e3ech),hl		;7963   ; guarda la velocidad Y en la escena de accion y el byte siguiente (16 bits)
	ld h,002h		;7966
	ld (0e3eeh),hl		;7968   ; guarda la velocidad X en la escena de accion y el byte siguiente (16 bits)
	call 081d3h		;796b   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
	jp 081ceh		;796e   ; accion_siguiente_paso: 0xE3E1 + 1
L_7971:
	djnz L_79B0		;7971
	ld a,(0e3e7h)		;7973   ; lee la X del personaje en la escena de accion
	cp 008h		;7976
	call z,rebota_en_los_bordes		;7978   ; rebota_en_los_bordes: invierte las dos velocidades, suena y cuenta un rebote (0xE3F1)
	cp 0e8h		;797b
	call z,rebota_en_los_bordes		;797d   ; rebota_en_los_bordes: invierte las dos velocidades, suena y cuenta un rebote (0xE3F1)
	ld a,(0e3e5h)		;7980   ; lee la Y del personaje en la escena de accion
	cp 060h		;7983
	jr nz,L_7990		;7985
	call 081eeh		;7987   ; accion_rebota_y: 0xE3EC = -0xE3EC
	call 0bac9h		;798a   ; sonido_21: pide el sonido 0x21
	jp 081d3h		;798d   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
L_7990:
	or a			;7990
	jp nz,081d3h		;7991   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
	call 081eeh		;7994   ; accion_rebota_y: 0xE3EC = -0xE3EC
	call 0bac9h		;7997   ; sonido_21: pide el sonido 0x21
	jp 081d3h		;799a   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
rebota_en_los_bordes:		; invierte las dos velocidades, suena y cuenta un rebote (0xE3F1)
	call 081f8h		;799d   ; accion_rebota_x: 0xE3EE = -0xE3EE
	call 081eeh		;79a0   ; accion_rebota_y: 0xE3EC = -0xE3EC
	call 0bac9h		;79a3   ; sonido_21: pide el sonido 0x21
	ld hl,0e3f1h		;79a6
	dec (hl)			;79a9
	jp z,081ceh		;79aa   ; accion_siguiente_paso: 0xE3E1 + 1
	jp 081d3h		;79ad   ; accion_avanza: suma las dos velocidades (p02:81E2 y p02:81D6)
L_79B0:
	djnz L_79C3		;79b0
	ld a,020h		;79b2
	ld (0e3f1h),a		;79b4
	xor a			;79b7
	ld (0e3e5h),a		;79b8   ; guarda la Y del personaje en la escena de accion
	ld a,078h		;79bb
	ld (0e3e7h),a		;79bd   ; guarda la X del personaje en la escena de accion
	jp 081ceh		;79c0   ; accion_siguiente_paso: 0xE3E1 + 1
L_79C3:
	djnz $+53		;79c3
	ld a,(0e003h)		;79c5   ; lee la cuenta de cuadros
	and 003h		;79c8
	ret nz			;79ca
	ld a,(0e3f1h)		;79cb
	dec a			;79ce
	jp z,081ceh		;79cf   ; accion_siguiente_paso: 0xE3E1 + 1
	ld (0e3f1h),a		;79d2
	ld hl,079e8h		;79d5
	and 007h		;79d8
	add a,a			;79da
	call 040a1h		;79db   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;79de
	ld (0e3e5h),a		;79df   ; guarda la Y del personaje en la escena de accion
	inc hl			;79e2
	ld a,(hl)			;79e3
	ld (0e3e7h),a		;79e4   ; guarda la X del personaje en la escena de accion
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
	ld (0e3e0h),hl		;79fd   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ret			;7a00
L_7A01:
	ld hl,0e3f0h		;7a01
	ld (hl),001h		;7a04
	ld a,078h		;7a06
	ld (0e3e7h),a		;7a08   ; guarda la X del personaje en la escena de accion
	ld a,030h		;7a0b
	ld (0e3e5h),a		;7a0d   ; guarda la Y del personaje en la escena de accion
	ld hl,(0e3e9h)		;7a10
	ld (hl),090h		;7a13
	ld hl,0e3edh		;7a15
	ld (hl),0fah		;7a18
	call 081d6h		;7a1a   ; accion_avanza_y: 0xE3E4 (Y, con fraccion) += 0xE3EC
	jp 081ceh		;7a1d   ; accion_siguiente_paso: 0xE3E1 + 1
L_7A20:
	ld a,(0e003h)		;7a20   ; lee la cuenta de cuadros
	and 003h		;7a23
	inc a			;7a25
	ld (0e3e3h),a		;7a26   ; guarda hacia donde mira en la escena de accion (1-4)
	djnz L_7A3B		;7a29
	ld a,(0e3e5h)		;7a2b   ; lee la Y del personaje en la escena de accion
	cp 060h		;7a2e
	jp nz,081d6h		;7a30   ; accion_avanza_y: 0xE3E4 (Y, con fraccion) += 0xE3EC
	ld a,030h		;7a33
	ld (0e3e5h),a		;7a35   ; guarda la Y del personaje en la escena de accion
	jp 081ceh		;7a38   ; accion_siguiente_paso: 0xE3E1 + 1
L_7A3B:
	djnz L_7A4C		;7a3b
	ld a,(0e3e7h)		;7a3d   ; lee la X del personaje en la escena de accion
	cp 0a8h		;7a40
	jp nz,081e2h		;7a42   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
	xor a			;7a45
	ld (0e3e5h),a		;7a46   ; guarda la Y del personaje en la escena de accion
	jp 081ceh		;7a49   ; accion_siguiente_paso: 0xE3E1 + 1
L_7A4C:
	djnz L_7A63		;7a4c
	ld a,(0e3e5h)		;7a4e   ; lee la Y del personaje en la escena de accion
	cp 060h		;7a51
	jp nz,081d6h		;7a53   ; accion_avanza_y: 0xE3E4 (Y, con fraccion) += 0xE3EC
	xor a			;7a56
	ld hl,0e3e5h		;7a57   ; apunta a la Y del personaje en la escena de accion
	ld (hl),a			;7a5a
	inc l			;7a5b
	inc l			;7a5c
	ld a,048h		;7a5d
	ld (hl),a			;7a5f
	jp 081ceh		;7a60   ; accion_siguiente_paso: 0xE3E1 + 1
L_7A63:
	djnz L_7A75		;7a63
	ld a,(0e3e7h)		;7a65   ; lee la X del personaje en la escena de accion
	cp 0a8h		;7a68
	jp nz,081e2h		;7a6a   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
	ld a,048h		;7a6d
	ld (0e3e7h),a		;7a6f   ; guarda la X del personaje en la escena de accion
	jp 081ceh		;7a72   ; accion_siguiente_paso: 0xE3E1 + 1
L_7A75:
	djnz L_7A87		;7a75
	ld a,(0e3e5h)		;7a77   ; lee la Y del personaje en la escena de accion
	cp 060h		;7a7a
	jp nz,081d6h		;7a7c   ; accion_avanza_y: 0xE3E4 (Y, con fraccion) += 0xE3EC
	ld a,030h		;7a7f
	ld (0e3e5h),a		;7a81   ; guarda la Y del personaje en la escena de accion
	jp 081ceh		;7a84   ; accion_siguiente_paso: 0xE3E1 + 1
L_7A87:
	djnz L_7A9F		;7a87
	ld a,(0e3e7h)		;7a89   ; lee la X del personaje en la escena de accion
	cp 098h		;7a8c
	jp nz,081e2h		;7a8e   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
	ld a,060h		;7a91
	ld hl,0e3e5h		;7a93   ; apunta a la Y del personaje en la escena de accion
	ld (hl),a			;7a96
	inc l			;7a97
	inc l			;7a98
	ld a,048h		;7a99
	ld (hl),a			;7a9b
	jp 081ceh		;7a9c   ; accion_siguiente_paso: 0xE3E1 + 1
L_7A9F:
	djnz L_7AB6		;7a9f
	ld a,(0e3e7h)		;7aa1   ; lee la X del personaje en la escena de accion
	cp 0a8h		;7aa4
	jp nz,081e2h		;7aa6   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
	xor a			;7aa9
	ld hl,0e3e5h		;7aaa   ; apunta a la Y del personaje en la escena de accion
	ld (hl),a			;7aad
	inc l			;7aae
	inc l			;7aaf
	ld a,050h		;7ab0
	ld (hl),a			;7ab2
	jp 081ceh		;7ab3   ; accion_siguiente_paso: 0xE3E1 + 1
L_7AB6:
	djnz L_7AC3		;7ab6
	ld a,(0e3e5h)		;7ab8   ; lee la Y del personaje en la escena de accion
	cp 060h		;7abb
	jp nz,081d6h		;7abd   ; accion_avanza_y: 0xE3E4 (Y, con fraccion) += 0xE3EC
	jp 081ceh		;7ac0   ; accion_siguiente_paso: 0xE3E1 + 1
L_7AC3:
	djnz L_7ADA		;7ac3
	ld a,(0e3e7h)		;7ac5   ; lee la X del personaje en la escena de accion
	cp 0a0h		;7ac8
	jp nz,081e2h		;7aca   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
	xor a			;7acd
	ld hl,0e3e5h		;7ace   ; apunta a la Y del personaje en la escena de accion
	ld (hl),a			;7ad1
	inc l			;7ad2
	inc l			;7ad3
	ld a,058h		;7ad4
	ld (hl),a			;7ad6
	jp 081ceh		;7ad7   ; accion_siguiente_paso: 0xE3E1 + 1
L_7ADA:
	djnz L_7AF1		;7ada
	ld a,(0e3e5h)		;7adc   ; lee la Y del personaje en la escena de accion
	cp 060h		;7adf
	jp nz,081d6h		;7ae1   ; accion_avanza_y: 0xE3E4 (Y, con fraccion) += 0xE3EC
	xor a			;7ae4
	ld hl,0e3e5h		;7ae5   ; apunta a la Y del personaje en la escena de accion
	ld (hl),a			;7ae8
	inc l			;7ae9
	inc l			;7aea
	ld a,058h		;7aeb
	ld (hl),a			;7aed
	jp 081ceh		;7aee   ; accion_siguiente_paso: 0xE3E1 + 1
L_7AF1:
	djnz L_7AFE		;7af1
	ld a,(0e3e7h)		;7af3   ; lee la X del personaje en la escena de accion
	cp 098h		;7af6
	jp nz,081e2h		;7af8   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
	jp 081ceh		;7afb   ; accion_siguiente_paso: 0xE3E1 + 1
L_7AFE:
	djnz L_7B10		;7afe
	ld a,(0e3e5h)		;7b00   ; lee la Y del personaje en la escena de accion
	cp 030h		;7b03
	jp nz,081d6h		;7b05   ; accion_avanza_y: 0xE3E4 (Y, con fraccion) += 0xE3EC
	ld a,0f8h		;7b08
	ld (0e3efh),a		;7b0a
	jp 081ceh		;7b0d   ; accion_siguiente_paso: 0xE3E1 + 1
L_7B10:
	djnz L_7B2D		;7b10
	ld a,(0e3e7h)		;7b12   ; lee la X del personaje en la escena de accion
	cp 048h		;7b15
	jp nz,081e2h		;7b17   ; accion_avanza_x: 0xE3E6 (X, con fraccion) += 0xE3EE
	ld a,060h		;7b1a
	ld hl,0e3e5h		;7b1c   ; apunta a la Y del personaje en la escena de accion
	ld (hl),a			;7b1f
	ld a,078h		;7b20
	inc l			;7b22
	inc l			;7b23
	ld (hl),a			;7b24
	ld hl,0e3f0h		;7b25
	ld (hl),000h		;7b28
	jp 081ceh		;7b2a   ; accion_siguiente_paso: 0xE3E1 + 1
L_7B2D:
	djnz L_7B50		;7b2d
	ld hl,00200h		;7b2f
	ld (0e3e0h),hl		;7b32   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld hl,0e3f2h		;7b35
	ld a,(hl)			;7b38
	or a			;7b39
	ld c,007h		;7b3a
	jr z,L_7B47		;7b3c
	ld c,009h		;7b3e
	push hl			;7b40
	ld hl,0eb66h		;7b41   ; apunta a las banderas de la historia, byte 0x26 (se graban con la partida)
	set 2,(hl)		;7b44
	pop hl			;7b46
L_7B47:
	ld (hl),000h		;7b47
	ld ix,0ea00h		;7b49   ; apunta a el rival de la escena (objeto 0, 0x20 bytes)
	jp 042a6h		;7b4d   ; habla_y_1_2_3: datos del personaje, p03:AB92, el texto y modo 9; vuelve con 1-2-3
L_7B50:
	xor a			;7b50
	ld hl,0e3f0h		;7b51
	ld (hl),001h		;7b54
	ld (0e3e5h),a		;7b56   ; guarda la Y del personaje en la escena de accion
	ld a,048h		;7b59
	ld (0e3e7h),a		;7b5b   ; guarda la X del personaje en la escena de accion
	ld a,004h		;7b5e
	ld hl,0e3edh		;7b60
	ld (hl),a			;7b63
	inc l			;7b64
	inc l			;7b65
	ld (hl),a			;7b66
	jp 081ceh		;7b67   ; accion_siguiente_paso: 0xE3E1 + 1
L_7B6A:
	ld a,(0e3e5h)		;7b6a   ; lee la Y del personaje en la escena de accion
	cp 060h		;7b6d
	jr nz,L_7B79		;7b6f
	ld a,(0eb7dh)		;7b71   ; lee las banderas de la historia, byte 0x3D (se graban con la partida)
	bit 6,a		;7b74
	jp nz,L_7C50		;7b76
L_7B79:
	ld a,(0e008h)		;7b79   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 010h		;7b7c
	jr z,L_7B87		;7b7e
	push bc			;7b80
	ld c,001h		;7b81
	call 0b525h		;7b83   ; crea_proyectil: en el primer hueco de 0xEC30 (3 de 16 bytes) un proyectil de clase C delante del personaje (p03:B56E)
	pop bc			;7b86
L_7B87:
	djnz L_7BC8		;7b87
	call 08202h		;7b89   ; accion_sin_vida: si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	ld hl,01099h		;7b8c
	ld (0e8f0h),hl		;7b8f   ; guarda la variable de trabajo 0xE8F0 (16 bits) y el byte siguiente (16 bits)
	ld hl,00180h		;7b92
	ld (0e8f2h),hl		;7b95   ; guarda la variable de trabajo 0xE8F2 (16 bits) y el byte siguiente (16 bits)
L_7B98:
	ld a,(0e008h)		;7b98   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 001h		;7b9b
	jr z,L_7BB8		;7b9d
	ld a,0ffh		;7b9f
	ld (0e3f5h),a		;7ba1   ; guarda el paso del salto en la escena (tabla p01:7C13)
	ld a,(0e3f3h)		;7ba4   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
	and 00ch		;7ba7
	ld (0e3f4h),a		;7ba9   ; guarda la direccion del salto en la escena
	ld a,001h		;7bac
	ld (0e3ebh),a		;7bae   ; guarda la fase del salto en la escena (1 sube, 2 baja)
	inc a			;7bb1
	ld (0e3e1h),a		;7bb2   ; guarda el paso de la escena de la escena de accion
	call 0baech		;7bb5   ; sonido_0a: pide el sonido 0x0A
L_7BB8:
	call 08214h		;7bb8   ; accion_direccion: 0xE3F3 = la direccion pulsada (1, 2, 4, 8), dando preferencia a la nueva
	and 00ch		;7bbb
	ld bc,(0e8f0h)		;7bbd   ; lee la variable de trabajo 0xE8F0 (16 bits) y el byte siguiente (16 bits)
	ld de,(0e8f2h)		;7bc1   ; lee la variable de trabajo 0xE8F2 (16 bits) y el byte siguiente (16 bits)
	jp 08254h		;7bc5   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
L_7BC8:
	djnz $+109		;7bc8
	call 08202h		;7bca   ; accion_sin_vida: si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	ld a,(0e3f4h)		;7bcd   ; lee la direccion del salto en la escena
	and 00ch		;7bd0
	ld bc,01099h		;7bd2
	ld de,00180h		;7bd5
	call 08254h		;7bd8   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
	ld a,(0e3ebh)		;7bdb   ; lee la fase del salto en la escena (1 sube, 2 baja)
	dec a			;7bde
	jr nz,L_7BF0		;7bdf
	ld hl,0e3f5h		;7be1   ; apunta a el paso del salto en la escena (tabla p01:7C13)
	inc (hl)			;7be4
	ld a,(hl)			;7be5
	cp 011h		;7be6
	jr nz,L_7C06		;7be8
	dec (hl)			;7bea
	ld hl,0e3ebh		;7beb   ; apunta a la fase del salto en la escena (1 sube, 2 baja)
	inc (hl)			;7bee
	ret			;7bef
L_7BF0:
	ld hl,0e3f5h		;7bf0   ; apunta a el paso del salto en la escena (tabla p01:7C13)
	inc (hl)			;7bf3
	ld a,(hl)			;7bf4
	cp 022h		;7bf5
	jr nz,L_7C06		;7bf7
	xor a			;7bf9
	ld (hl),a			;7bfa
	ld (0e3ebh),a		;7bfb   ; guarda la fase del salto en la escena (1 sube, 2 baja)
	ld (0e3f4h),a		;7bfe   ; guarda la direccion del salto en la escena
	inc a			;7c01
	ld (0e3e1h),a		;7c02   ; guarda el paso de la escena de la escena de accion
	ret			;7c05
L_7C06:
	ld hl,07c13h		;7c06
	call 040a1h		;7c09   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;7c0c
	ld hl,0e3e5h		;7c0d   ; apunta a la Y del personaje en la escena de accion
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
	ld (0e3f6h),a		;7c37   ; guarda la vida en la escena de accion
	ld a,001h		;7c3a
	ld (0e3fch),a		;7c3c   ; guarda los choques de la escena estan en marcha
	ld a,004h		;7c3f
	ld (0e3e3h),a		;7c41   ; guarda hacia donde mira en la escena de accion (1-4)
	ld hl,0e3e5h		;7c44   ; apunta a la Y del personaje en la escena de accion
	ld (hl),060h		;7c47
	inc l			;7c49
	inc l			;7c4a
	ld (hl),030h		;7c4b
	jp 081ceh		;7c4d   ; accion_siguiente_paso: 0xE3E1 + 1
L_7C50:
	call 081c6h		;7c50   ; accion_siguiente_escena: 0xE3E0 + 1 y su paso 0xE3E1 a cero
	inc hl			;7c53
	ld (hl),000h		;7c54
	ret			;7c56
L_7C57:
	djnz L_7C87		;7c57
	ld hl,0e3e7h		;7c59   ; apunta a la X del personaje en la escena de accion
	inc (hl)			;7c5c
	ld hl,(0e3e4h)		;7c5d   ; lee la Y del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ld de,(0e3ech)		;7c60   ; lee la velocidad Y en la escena de accion y el byte siguiente (16 bits)
	add hl,de			;7c64
	ld (0e3e4h),hl		;7c65   ; guarda la Y del personaje en la escena de accion (fraccion) y el byte siguiente (16 bits)
	ex de,hl			;7c68
	ld de,00040h		;7c69
	add hl,de			;7c6c
	ld (0e3ech),hl		;7c6d   ; guarda la velocidad Y en la escena de accion y el byte siguiente (16 bits)
	ld a,h			;7c70
	rla			;7c71
	ret c			;7c72
	ld a,(0e3e5h)		;7c73   ; lee la Y del personaje en la escena de accion
	cp 050h		;7c76
	ret c			;7c78
	ld hl,00000h		;7c79
	ld (0e3ech),hl		;7c7c   ; guarda la velocidad Y en la escena de accion y el byte siguiente (16 bits)
	ld a,050h		;7c7f
	ld (0e3e5h),a		;7c81   ; guarda la Y del personaje en la escena de accion
	jp 081ceh		;7c84   ; accion_siguiente_paso: 0xE3E1 + 1
L_7C87:
	djnz L_7CAE		;7c87
	ld a,(0e3e7h)		;7c89   ; lee la X del personaje en la escena de accion
	cp 0d0h		;7c8c
	jr c,L_7CB5		;7c8e
	xor a			;7c90
	ld (0e368h),a		;7c91   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;7c94
	ld (0e360h),a		;7c95   ; guarda el modo dentro de la sala (tabla p00:5A83)
	inc a			;7c98
	ld (0e337h),a		;7c99   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,0021eh		;7c9c
	ld (0e36ah),hl		;7c9f   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
	ld hl,00040h		;7ca2
	ld (0e3c1h),hl		;7ca5   ; guarda la Y del personaje y el byte siguiente (16 bits)
	call 0585ch		;7ca8   ; borra_cursor: borra el cursor de la columna de opciones
	jp 058eah		;7cab   ; borra_nombres_sin_ventana: borra 0x1E0 de 0xED00 y los vuelca
L_7CAE:
	ld a,(0e3e7h)		;7cae   ; lee la X del personaje en la escena de accion
	cp 097h		;7cb1
	jr nc,L_7CBA		;7cb3
L_7CB5:
	inc a			;7cb5
	ld (0e3e7h),a		;7cb6   ; guarda la X del personaje en la escena de accion
	ret			;7cb9
L_7CBA:
	call 0baf6h		;7cba   ; sonido_5d: pide el sonido 0x5D
	ld a,098h		;7cbd
	ld (0e3e7h),a		;7cbf   ; guarda la X del personaje en la escena de accion
	ld hl,0fc00h		;7cc2
	ld (0e3ech),hl		;7cc5   ; guarda la velocidad Y en la escena de accion y el byte siguiente (16 bits)
	jp 081ceh		;7cc8   ; accion_siguiente_paso: 0xE3E1 + 1
L_7CCB:
	ld a,(0e008h)		;7ccb   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 010h		;7cce
	jr z,L_7CD9		;7cd0
	push bc			;7cd2
	ld c,002h		;7cd3
	call 0b525h		;7cd5   ; crea_proyectil: en el primer hueco de 0xEC30 (3 de 16 bytes) un proyectil de clase C delante del personaje (p03:B56E)
	pop bc			;7cd8
L_7CD9:
	djnz L_7CED		;7cd9
	call 08202h		;7cdb   ; accion_sin_vida: si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	ld hl,010e1h		;7cde
	ld (0e8f0h),hl		;7ce1   ; guarda la variable de trabajo 0xE8F0 (16 bits) y el byte siguiente (16 bits)
	ld hl,00300h		;7ce4
	ld (0e8f2h),hl		;7ce7   ; guarda la variable de trabajo 0xE8F2 (16 bits) y el byte siguiente (16 bits)
	jp L_7B98		;7cea
L_7CED:
	djnz $+93		;7ced
	call 08202h		;7cef   ; accion_sin_vida: si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	ld a,(0e3f4h)		;7cf2   ; lee la direccion del salto en la escena
	ld bc,010e1h		;7cf5
	ld de,00300h		;7cf8
	call 08254h		;7cfb   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
	ld a,(0e3ebh)		;7cfe   ; lee la fase del salto en la escena (1 sube, 2 baja)
	dec a			;7d01
	jr nz,L_7D13		;7d02
	ld hl,0e3f5h		;7d04   ; apunta a el paso del salto en la escena (tabla p01:7C13)
	inc (hl)			;7d07
	ld a,(hl)			;7d08
	cp 00ah		;7d09
	jr nz,L_7D29		;7d0b
	dec (hl)			;7d0d
	ld hl,0e3ebh		;7d0e   ; apunta a la fase del salto en la escena (1 sube, 2 baja)
	inc (hl)			;7d11
	ret			;7d12
L_7D13:
	ld hl,0e3f5h		;7d13   ; apunta a el paso del salto en la escena (tabla p01:7C13)
	inc (hl)			;7d16
	ld a,(hl)			;7d17
	cp 014h		;7d18
	jr nz,L_7D29		;7d1a
	xor a			;7d1c
	ld (hl),a			;7d1d
	ld (0e3ebh),a		;7d1e   ; guarda la fase del salto en la escena (1 sube, 2 baja)
	ld (0e3f4h),a		;7d21   ; guarda la direccion del salto en la escena
	inc a			;7d24
	ld (0e3e1h),a		;7d25   ; guarda el paso de la escena de la escena de accion
	ret			;7d28
L_7D29:
	ld hl,07d36h		;7d29
	call 040a1h		;7d2c   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;7d2f
	ld hl,0e3e5h		;7d30   ; apunta a la Y del personaje en la escena de accion
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
	ld (0e3e3h),a		;7d4c   ; guarda hacia donde mira en la escena de accion (1-4)
	ld (0e3fch),a		;7d4f   ; guarda los choques de la escena estan en marcha
	ld a,014h		;7d52
	ld (0e3f6h),a		;7d54   ; guarda la vida en la escena de accion
	ld hl,0e3e5h		;7d57   ; apunta a la Y del personaje en la escena de accion
	ld (hl),068h		;7d5a
	inc l			;7d5c
	inc l			;7d5d
	ld (hl),078h		;7d5e
	jp 081ceh		;7d60   ; accion_siguiente_paso: 0xE3E1 + 1
L_7D63:
	djnz L_7D72		;7d63
	ld hl,0e3eah		;7d65
	dec (hl)			;7d68
	ret nz			;7d69
	xor a			;7d6a
	ld (0e340h),a		;7d6b   ; guarda en partida (bit 7: la demo acaba)
	ld (0e338h),a		;7d6e   ; guarda la sala de partida (indice de p01:67E3)
	ret			;7d71
L_7D72:
	ld a,080h		;7d72
	ld (0e3eah),a		;7d74
	jp 081ceh		;7d77   ; accion_siguiente_paso: 0xE3E1 + 1
L_7D7A:
	call escena_9_pasos		;7d7a   ; escena_9_pasos: los pasos de la escena 9 segun B
	jp 0840ch		;7d7d   ; accion_sprites_arriba: tres sprites en la Y 0xA0 alrededor de la X del personaje
escena_9_pasos:		; los pasos de la escena 9 segun B
	djnz L_7DBE		;7d80
	call 08202h		;7d82   ; accion_sin_vida: si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	ret z			;7d85
	ld a,(0e400h)		;7d86   ; lee los 8 actores de la sala (0x80 bytes cada uno)
	or a			;7d89
	jr z,L_7D98		;7d8a
	ld a,(0e3a6h)		;7d8c   ; lee la cuenta de lanzamientos de la escena
	or a			;7d8f
	jr nz,L_7D98		;7d90
	ld a,002h		;7d92
	ld (0ea01h),a		;7d94   ; guarda el paso del rival
	ret			;7d97
L_7D98:
	ld a,(0e3a8h)		;7d98   ; lee las bolas que quedan en la escena
	or a			;7d9b
	jp z,L_7E52		;7d9c
	cp 082h		;7d9f
	jr nz,L_7DAD		;7da1
	ld c,003h		;7da3
	call 0b525h		;7da5   ; crea_proyectil: en el primer hueco de 0xEC30 (3 de 16 bytes) un proyectil de clase C delante del personaje (p03:B56E)
	ld hl,0e3a8h		;7da8   ; apunta a las bolas que quedan en la escena
	ld (hl),002h		;7dab
L_7DAD:
	call 08214h		;7dad   ; accion_direccion: 0xE3F3 = la direccion pulsada (1, 2, 4, 8), dando preferencia a la nueva
	ld a,(0e3f3h)		;7db0   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
	and 00ch		;7db3
	ld bc,030c0h		;7db5
	ld de,00400h		;7db8
	jp 08254h		;7dbb   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
L_7DBE:
	ld a,008h		;7dbe
	ld (0e3f6h),a		;7dc0   ; guarda la vida en la escena de accion
	call 0b5dah		;7dc3   ; borra_proyectiles: los 3 proyectiles de 0xEC30 a cero
	xor a			;7dc6
	ld (0e3a6h),a		;7dc7   ; guarda la cuenta de lanzamientos de la escena
	ld (0e3aah),a		;7dca
	ld (0e3fah),a		;7dcd
	ld (0e3fbh),a		;7dd0
	ld hl,0e3f9h		;7dd3
	ld (hl),030h		;7dd6
	ld hl,0e3e5h		;7dd8   ; apunta a la Y del personaje en la escena de accion
	ld (hl),0b0h		;7ddb
	inc l			;7ddd
	inc l			;7dde
	ld (hl),078h		;7ddf
	call 081ceh		;7de1   ; accion_siguiente_paso: 0xE3E1 + 1
	xor a			;7de4
	ld hl,00000h		;7de5
	ld (0e400h),hl		;7de8   ; guarda los 8 actores de la sala (0x80 bytes cada uno) y el byte siguiente (16 bits)
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
	push bc			;7e03   ; 9 bytes con 2
	ld bc,00009h		;7e04
	ld (hl),002h		;7e07
	ldir		;7e09
	pop bc			;7e0b
	ld a,017h		;7e0c   ; cada 0x17 bytes
	call 040a1h		;7e0e   ; hl_mas_a: HL = HL + A
	ld d,h			;7e11
	ld e,l			;7e12
	inc de			;7e13
	djnz L_7E03		;7e14
	ld hl,0e4f1h		;7e16   ; tres filas mas
	ld de,0e4f2h		;7e19
	ld b,003h		;7e1c
L_7E1E:
	push bc			;7e1e   ; 3 bytes con 0x82
	ld (hl),082h		;7e1f
	ld bc,00003h		;7e21
	ldir		;7e24
	pop bc			;7e26
	ld a,01dh		;7e27   ; cada 0x1D bytes
	call 040a1h		;7e29   ; hl_mas_a: HL = HL + A
	ld d,h			;7e2c
	ld e,l			;7e2d
	inc de			;7e2e
	djnz L_7E1E		;7e2f
	ld hl,0e4d0h		;7e31   ; seis con 0x82 en 0xE4D0
	ld de,0e4d1h		;7e34
	ld (hl),082h		;7e37
	ld bc,00005h		;7e39
	ldir		;7e3c
	ld a,084h		;7e3e   ; y unos sueltos con 0x84, 0x42 y 0x22
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
	ld (0e3e3h),a		;7e59   ; guarda hacia donde mira en la escena de accion (1-4)
	ld (0e3a8h),a		;7e5c   ; guarda las bolas que quedan en la escena
	jp 0b525h		;7e5f   ; crea_proyectil: en el primer hueco de 0xEC30 (3 de 16 bytes) un proyectil de clase C delante del personaje (p03:B56E)
L_7E62:
	push bc			;7e62
	push ix		;7e63
	ld ix,0ea60h		;7e65
	ld a,(ix+000h)		;7e69
	cp 011h		;7e6c
	jr nz,L_7EA2		;7e6e
	ld a,(0e3e7h)		;7e70   ; lee la X del personaje en la escena de accion
	sub (ix+009h)		;7e73
	jr c,L_7EA2		;7e76
	cp 015h		;7e78
	jr nc,L_7EA2		;7e7a
	ld a,(0e3e5h)		;7e7c   ; lee la Y del personaje en la escena de accion
	sub (ix+007h)		;7e7f
	jr nc,L_7E86		;7e82
	neg		;7e84
L_7E86:
	cp 011h		;7e86
	jr nc,L_7EA2		;7e88
	call 0bae2h		;7e8a   ; sonido_1f: pide el sonido 0x1F
	ld hl,0ea60h		;7e8d
	ld de,0ea61h		;7e90
	ld bc,0001fh		;7e93
	ld (hl),000h		;7e96
	ldir		;7e98
	ld c,005h		;7e9a
	ld hl,0ec30h		;7e9c   ; apunta a los 3 proyectiles (16 bytes cada uno)
	call 0b535h		;7e9f
L_7EA2:
	pop ix		;7ea2
	pop bc			;7ea4
	djnz L_7EBD		;7ea5
	call 08202h		;7ea7   ; accion_sin_vida: si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	call 08214h		;7eaa   ; accion_direccion: 0xE3F3 = la direccion pulsada (1, 2, 4, 8), dando preferencia a la nueva
	ld a,(0e3f3h)		;7ead   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
	and 003h		;7eb0
	exx			;7eb2
	ld bc,02080h		;7eb3
	exx			;7eb6
	ld de,00400h		;7eb7
	jp 08254h		;7eba   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
L_7EBD:
	ld a,003h		;7ebd
	ld (0e3e3h),a		;7ebf   ; guarda hacia donde mira en la escena de accion (1-4)
	ld a,014h		;7ec2
	ld (0e3f6h),a		;7ec4   ; guarda la vida en la escena de accion
	ld a,001h		;7ec7
	ld (0e3fch),a		;7ec9   ; guarda los choques de la escena estan en marcha
	ld hl,0e3e5h		;7ecc   ; apunta a la Y del personaje en la escena de accion
	ld (hl),028h		;7ecf
	inc l			;7ed1
	inc l			;7ed2
	ld (hl),0e0h		;7ed3
	jp 081ceh		;7ed5   ; accion_siguiente_paso: 0xE3E1 + 1
L_7ED8:
	ld a,(0e3ebh)		;7ed8   ; lee la fase del salto en la escena (1 sube, 2 baja)
	or a			;7edb
	jr nz,L_7F0A		;7edc
	push bc			;7ede
	call 08214h		;7edf   ; accion_direccion: 0xE3F3 = la direccion pulsada (1, 2, 4, 8), dando preferencia a la nueva
	pop bc			;7ee2
	ld a,(0e3f3h)		;7ee3   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
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
	ld (0e3e3h),a		;7ef9   ; guarda hacia donde mira en la escena de accion (1-4)
L_7EFC:
	ld a,(0e008h)		;7efc   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 010h		;7eff
	jr z,L_7F0A		;7f01
	push bc			;7f03
	ld c,004h		;7f04
	call 0b525h		;7f06   ; crea_proyectil: en el primer hueco de 0xEC30 (3 de 16 bytes) un proyectil de clase C delante del personaje (p03:B56E)
	pop bc			;7f09
L_7F0A:
	djnz L_7F6A		;7f0a
	call 08202h		;7f0c   ; accion_sin_vida: si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	ld a,(0e008h)		;7f0f   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 020h		;7f12
	jr z,L_7F33		;7f14
	xor a			;7f16
	ld (0e3fch),a		;7f17   ; guarda los choques de la escena estan en marcha
	ld a,0ffh		;7f1a
	ld (0e3f5h),a		;7f1c   ; guarda el paso del salto en la escena (tabla p01:7C13)
	ld a,(0e3f3h)		;7f1f   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
	and 00ch		;7f22
	ld (0e3f4h),a		;7f24   ; guarda la direccion del salto en la escena
	ld a,001h		;7f27
	ld (0e3ebh),a		;7f29   ; guarda la fase del salto en la escena (1 sube, 2 baja)
	inc a			;7f2c
	ld (0e3e1h),a		;7f2d   ; guarda el paso de la escena de la escena de accion
	call 0baech		;7f30   ; sonido_0a: pide el sonido 0x0A
L_7F33:
	ld a,(0e3f3h)		;7f33   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
	rra			;7f36
	jr c,L_7F52		;7f37
	rra			;7f39
	jr c,L_7F52		;7f3a
	and 003h		;7f3c
	jr nz,L_7F5E		;7f3e
L_7F40:
	ld a,(0e3f3h)		;7f40   ; lee la direccion pulsada en la escena de accion (1, 2, 4, 8)
	exx			;7f43
	ld bc,00869h		;7f44
	exx			;7f47
	ld bc,020d1h		;7f48
	ld de,00200h		;7f4b
	jp 08254h		;7f4e   ; accion_mueve: mueve al personaje de la escena de accion en la direccion A con la velocidad DE y los topes BC; su fotograma (p02:828A)
no_hace_nada:		; `ret`
	ret			;7f51
L_7F52:
	ld a,(0e3e7h)		;7f52   ; lee la X del personaje en la escena de accion
	cp 020h		;7f55
	jr z,L_7F40		;7f57
	cp 0d0h		;7f59
	jr z,L_7F40		;7f5b
	ret			;7f5d
L_7F5E:
	ld a,(0e3e5h)		;7f5e   ; lee la Y del personaje en la escena de accion
	cp 008h		;7f61
	jr z,L_7F40		;7f63
	cp 068h		;7f65
	jr z,L_7F40		;7f67
	ret			;7f69
L_7F6A:
	djnz L_7FA7		;7f6a
	call 08202h		;7f6c   ; accion_sin_vida: si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	ld a,(0e3f4h)		;7f6f   ; lee la direccion del salto en la escena
	call no_hace_nada		;7f72   ; no_hace_nada: `ret`
	ld a,(0e3ebh)		;7f75   ; lee la fase del salto en la escena (1 sube, 2 baja)
	dec a			;7f78
	jr nz,L_7F8B		;7f79
	ld hl,0e3f5h		;7f7b   ; apunta a el paso del salto en la escena (tabla p01:7C13)
	inc (hl)			;7f7e
	ld a,(hl)			;7f7f
	cp 00ah		;7f80
	jp nz,L_7D29		;7f82
	dec (hl)			;7f85
	ld hl,0e3ebh		;7f86   ; apunta a la fase del salto en la escena (1 sube, 2 baja)
	inc (hl)			;7f89
	ret			;7f8a
L_7F8B:
	ld a,001h		;7f8b
	ld (0e3fch),a		;7f8d   ; guarda los choques de la escena estan en marcha
	ld hl,0e3f5h		;7f90   ; apunta a el paso del salto en la escena (tabla p01:7C13)
	inc (hl)			;7f93
	ld a,(hl)			;7f94
	cp 014h		;7f95
	jp nz,L_7D29		;7f97
	xor a			;7f9a
	ld (hl),a			;7f9b
	ld (0e3ebh),a		;7f9c   ; guarda la fase del salto en la escena (1 sube, 2 baja)
	ld (0e3f4h),a		;7f9f   ; guarda la direccion del salto en la escena
	inc a			;7fa2
	ld (0e3e1h),a		;7fa3   ; guarda el paso de la escena de la escena de accion
	ret			;7fa6
L_7FA7:
	ld a,014h		;7fa7
	ld (0e3f6h),a		;7fa9   ; guarda la vida en la escena de accion
	ld a,002h		;7fac
	ld (0e3e3h),a		;7fae   ; guarda hacia donde mira en la escena de accion (1-4)
	ld a,001h		;7fb1
	ld (0e3fch),a		;7fb3   ; guarda los choques de la escena estan en marcha
	ld hl,0e3e5h		;7fb6   ; apunta a la Y del personaje en la escena de accion
	ld (hl),008h		;7fb9
	inc l			;7fbb
	inc l			;7fbc
	ld (hl),078h		;7fbd
	jp 081ceh		;7fbf   ; accion_siguiente_paso: 0xE3E1 + 1
L_7FC2:
	ld a,003h		;7fc2
	ld (0e3e3h),a		;7fc4   ; guarda hacia donde mira en la escena de accion (1-4)
	ld a,070h		;7fc7
	ld hl,0e3e5h		;7fc9   ; apunta a la Y del personaje en la escena de accion
	ld (hl),a			;7fcc
	ld a,0e0h		;7fcd
	inc l			;7fcf
	inc l			;7fd0
	ld (hl),a			;7fd1
	ret			;7fd2
L_7FD3:
	ld a,(0e008h)		;7fd3   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 010h		;7fd6
	jr z,L_7FE1		;7fd8
	push bc			;7fda
	ld c,001h		;7fdb
	call 0b525h		;7fdd   ; crea_proyectil: en el primer hueco de 0xEC30 (3 de 16 bytes) un proyectil de clase C delante del personaje (p03:B56E)
	pop bc			;7fe0
L_7FE1:
	djnz $+65		;7fe1
	call 08202h		;7fe3   ; accion_sin_vida: si 0xE3F6 llega a 0: 0xE3F7 = 1 y la escena 6 (Z)
	ld hl,010a9h		;7fe6
	ld (0e8f0h),hl		;7fe9   ; guarda la variable de trabajo 0xE8F0 (16 bits) y el byte siguiente (16 bits)
	ld hl,00180h		;7fec
	ld (0e8f2h),hl		;7fef   ; guarda la variable de trabajo 0xE8F2 (16 bits) y el byte siguiente (16 bits)
	ld a,(0e008h)		;7ff2   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and 001h		;7ff5
	jr z,$+27		;7ff7
	ld a,0ffh		;7ff9
	ld (0e3f5h),a		;7ffb   ; guarda el paso del salto en la escena (tabla p01:7C13)

; ----------------------------------------------------------------------
; DATOS partida_7FFE: los dos primeros bytes de `ld a,(0xE3F3)` (3A F3 E3),
;   que sigue en el banco 2: el trazador de un solo banco no puede verla
;   entera (tools/bancos.py); lo leen p01:7FFE (2 bytes)
;   0x7ffe..0x8000  (2 bytes)
DATA_partida_7FFE:
	defb 03ah,0f3h	; 7ffe
