; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 06 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS resto_A000: lo apuntan con el banco puesto p00:4113 (0xA000), p00:417F
;   (0xA000); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p00:4113, p00:417F (1464 bytes)
;   0xa000..0xa5b8  (1464 bytes)
DATA_resto_A000:
	defb 080h,080h,080h,080h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,099h,099h	; a000  ................
	defb 098h,098h,098h,098h,0b9h,0b9h,0b9h,0b9h,0b9h,0b9h,0b9h,0b9h,0b7h,0b7h,0b7h,0b7h	; a010  ................
	defb 0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b9h,0b9h,090h,090h	; a020  ................
	defb 090h,090h,090h,090h,080h,080h,080h,080h,080h,080h,080h,080h,090h,090h,0b9h,0b9h	; a030  ................
	defb 0b9h,0b9h,0b9h,0b9h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a040  ................
	defb 098h,098h,098h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a050  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,098h,098h,098h,098h,098h,098h,098h,098h	; a060  ................
	defb 098h,098h,098h,098h,0f0h,0f0h,080h,080h,098h,098h,098h,098h,080h,080h,098h,098h	; a070  ................
	defb 086h,086h,086h,086h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a080  ................
	defb 098h,098h,098h,098h,0b9h,0b9h,0b9h,0b9h,0b9h,0b9h,0b9h,090h,0b7h,0b7h,0b7h,0b7h	; a090  ................
	defb 0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,090h,090h,090h,090h	; a0a0  ................
	defb 090h,096h,060h,060h,080h,080h,080h,090h,090h,090h,0b6h,0b6h,0b9h,0b9h,0b9h,0b9h	; a0b0  ..``............
	defb 0b9h,0b9h,0b9h,0b9h,098h,098h,098h,098h,098h,098h,098h,098h,080h,080h,080h,080h	; a0c0  ................
	defb 080h,080h,080h,080h,080h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,098h,098h,098h,098h	; a0d0  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,080h,080h,098h,098h,098h,080h	; a0e0  ................
	defb 080h,080h,080h,080h,098h,098h,098h,098h,080h,080h,080h,080h,086h,086h,096h,096h	; a0f0  ................
	defb 096h,096h,098h,098h,086h,086h,086h,060h,060h,086h,086h,086h,098h,060h,060h,060h	; a100  .......``....```
	defb 096h,098h,098h,098h,0b0h,0b9h,0b9h,0b9h,0b9h,098h,098h,098h,0b9h,0b9h,0b9h,0b9h	; a110  ................
	defb 0b9h,0b9h,098h,098h,0b7h,0b7h,0b7h,0b9h,0b9h,0b9h,0b9h,0b9h,062h,066h,062h,062h	; a120  ............bfbb
	defb 062h,062h,062h,062h,0b6h,0b6h,0b6h,0b6h,0b6h,0b6h,0b6h,0b6h,0b9h,0b9h,0b9h,0b9h	; a130  bbbb............
	defb 0b9h,0b9h,0b9h,0b9h,098h,098h,098h,098h,098h,098h,098h,098h,080h,080h,098h,098h	; a140  ................
	defb 098h,098h,098h,098h,0f0h,0f0h,0f0h,0f0h,080h,098h,098h,098h,098h,098h,098h,098h	; a150  ................
	defb 098h,098h,098h,098h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a160  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,098h,098h,098h,098h	; a170  ................
	defb 098h,098h,098h,098h,086h,098h,098h,098h,080h,080h,080h,080h,098h,098h,098h,098h	; a180  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a190  ................
	defb 098h,098h,098h,098h,0b9h,0b9h,0b9h,098h,098h,098h,098h,098h,062h,062h,062h,062h	; a1a0  ............bbbb
	defb 062h,062h,062h,062h,0b6h,0b6h,0b6h,062h,062h,062h,062h,062h,0b9h,0b9h,0b9h,0b9h	; a1b0  bbbb...bbbbb....
	defb 0b9h,0b9h,0b9h,0b9h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a1c0  ................
	defb 098h,098h,098h,098h,098h,098h,098h,086h,086h,086h,086h,086h,098h,098h,098h,098h	; a1d0  ................
	defb 096h,096h,096h,096h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a1e0  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,098h,098h,098h,098h	; a1f0  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a200  ................
	defb 080h,080h,080h,080h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a210  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,0b7h,0b7h,0b7h,0b7h	; a220  ................
	defb 0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h	; a230  ................
	defb 0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b7h,0b9h,0b9h,0b9h,0b9h	; a240  ................
	defb 0b9h,0b9h,0b9h,0b9h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a250  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,080h,080h,080h,080h	; a260  ................
	defb 080h,080h,080h,080h,080h,080h,088h,080h,080h,080h,080h,080h,060h,086h,086h,086h	; a270  ............`...
	defb 080h,080h,080h,080h,086h,086h,086h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a280  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a290  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,076h,076h,076h,076h	; a2a0  ............vvvv
	defb 076h,076h,076h,076h,076h,076h,076h,076h,076h,076h,076h,076h,076h,076h,076h,076h	; a2b0  vvvvvvvvvvvvvvvv
	defb 076h,076h,076h,076h,0b0h,0b0h,0b0h,0b7h,0b7h,0b7h,0b7h,0b7h,0b9h,0b9h,0b9h,0b9h	; a2c0  vvvv............
	defb 0b9h,0b9h,0b9h,0b9h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a2d0  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a2e0  ................
	defb 098h,098h,098h,086h,086h,086h,086h,080h,080h,080h,080h,080h,060h,060h,060h,060h	; a2f0  ............````
	defb 060h,060h,060h,060h,080h,080h,080h,080h,080h,080h,086h,086h,086h,086h,080h,080h	; a300  ````............
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a310  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,076h,076h,076h,076h	; a320  ............vvvv
	defb 076h,076h,076h,076h,062h,062h,062h,062h,062h,076h,076h,076h,062h,062h,062h,062h	; a330  vvvvbbbbbvvvbbbb
	defb 062h,062h,062h,062h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b9h,0b9h,0b9h,0b9h	; a340  bbbb............
	defb 0b9h,0b9h,0b9h,0b9h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a350  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,086h,086h,086h,086h	; a360  ................
	defb 086h,086h,086h,086h,086h,086h,086h,086h,086h,086h,086h,086h,086h,086h,086h,086h	; a370  ................
	defb 086h,086h,086h,060h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a380  ...`............
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a390  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,076h,076h,076h,076h	; a3a0  ............vvvv
	defb 076h,076h,076h,076h,060h,060h,060h,060h,060h,060h,060h,060h,062h,062h,062h,062h	; a3b0  vvvv````````bbbb
	defb 062h,062h,062h,062h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b9h,0b9h,0b9h,0b9h	; a3c0  bbbb............
	defb 0b9h,0b9h,0b9h,0b9h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a3d0  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a3e0  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a3f0  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a400  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h	; a410  ................
	defb 098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,062h,062h,062h,062h	; a420  ............bbbb
	defb 062h,062h,062h,060h,060h,060h,060h,060h,060h,060h,060h,060h,0b6h,0b6h,0b6h,0b6h	; a430  bbb`````````....
	defb 062h,062h,062h,062h,0b9h,0b9h,0b9h,0b9h,0b0h,0b0h,0b0h,0b0h,090h,098h,090h,080h	; a440  bbbb............
	defb 098h,090h,0b9h,090h,086h,086h,098h,098h,098h,098h,098h,098h,080h,080h,080h,080h	; a450  ................
	defb 080h,088h,098h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a460  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a470  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a480  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a490  ................
	defb 080h,080h,080h,080h,098h,098h,098h,098h,098h,098h,098h,098h,062h,062h,062h,062h	; a4a0  ............bbbb
	defb 062h,062h,062h,062h,060h,060h,060h,060h,060h,060h,060h,060h,0b9h,0b9h,0b9h,0b9h	; a4b0  bbbb````````....
	defb 0b9h,0b6h,0b6h,0b6h,098h,098h,098h,0b9h,0b9h,0b9h,0b9h,0b9h,098h,098h,098h,098h	; a4c0  ................
	defb 098h,098h,098h,096h,086h,086h,086h,086h,086h,086h,086h,086h,096h,096h,096h,096h	; a4d0  ................
	defb 096h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,098h,080h,080h,080h,080h	; a4e0  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a4f0  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a500  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; a510  ................
	defb 080h,080h,080h,080h,098h,098h,098h,098h,098h,098h,098h,098h,0a0h,07fh,040h,0efh	; a520  ..............@.
	defb 0bdh,0ffh,0ffh,0bfh,0fbh,07fh,0efh,0fdh,008h,0bfh,0f7h,0dfh,004h,07fh,0efh,0fdh	; a530  ................
	defb 008h,0bfh,0f7h,0dfh,004h,07fh,040h,0efh,0bdh,0ffh,0ffh,0bfh,0fbh,000h,0a0h,00bh	; a540  ......@.........
	defb 0c0h,07fh,069h,0fbh,0a3h,0dch,0ceh,017h,0fch,005h,0feh,025h,04fh,0bbh,05dh,020h	; a550  ..i........%O.]
	defb 092h,080h,0e0h,0bch,0e1h,0c3h,0f0h,043h,034h,003h,007h,05dh,0c3h,0a1h,007h,000h	; a560  .......C4..]....
	defb 0a0h,090h,0b9h,090h,098h,090h,090h,090h,090h,098h,090h,098h,0b9h,090h,090h,098h	; a570  ................
	defb 0b9h,098h,090h,098h,0b9h,090h,090h,098h,0b9h,090h,0b9h,090h,098h,090h,090h,090h	; a580  ................
	defb 090h,000h,0a0h,0c9h,092h,0c9h,0c2h,0c0h,020h,020h,0c0h,092h,0c9h,092h,0c9h,0c2h	; a590  ........  ......
	defb 0c0h,020h,0c0h,0c0h,020h,090h,090h,090h,060h,090h,090h,020h,020h,090h,090h,060h	; a5a0  . .. ...`..  ..`
	defb 090h,060h,090h,000h,03eh,001h,018h,001h	; a5b0  .`..>...

; ======================================================================
; CODIGO 0xa5b8..0xa5c2  (10 bytes)
; ======================================================================


particulas:		; un paso de las 16 particulas de 0xE400 (0xE352, tabla p06:A5C2)
	xor a			;a5b8
	ld (0e35bh),a		;a5b9   ; guarda las particulas se alejan del personaje
	ld a,(0e352h)		;a5bc   ; lee la cuenta de la escena (parpadeo, paso de las particulas)
	call 040abh		;a5bf   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A5C2: tabla de 4 palabras del despachador (call 0x408D en
;   0xA5BF); lo leen L_40AB (8 bytes)
;   0xa5c2..0xa5ca  (8 bytes)
DATA_saltos_A5C2:
	defb 0cah,0a5h	; a5c2
	defb 059h,0a6h	; a5c4
	defb 059h,0a6h	; a5c6
	defb 0a5h,0a7h	; a5c8

; ======================================================================
; CODIGO 0xa5ca..0xa5f9  (47 bytes)
; ======================================================================


particulas_empiezan:		; sus patrones (p06:A5F9 a 0x1800), las 16 escondidas y 0x80 cuadros de vida
	ld hl,01800h		;a5ca
	ld de,0a5f9h		;a5cd
	ld bc,00060h		;a5d0
	call 05941h		;a5d3   ; copia_a_vram: LDIRVM de DE a la VRAM HL
	ld bc,010e0h		;a5d6
	ld ix,0e400h		;a5d9   ; apunta a los 8 actores de la sala (0x80 bytes cada uno)
	ld de,00010h		;a5dd
	ld a,080h		;a5e0
	ld (0e35ah),a		;a5e2   ; guarda la vida de las particulas, en cuadros
	xor a			;a5e5
L_A5E6:
	ld (ix+000h),a		;a5e6   ; guarda si la particula esta viva
	ld (ix+009h),a		;a5e9   ; guarda el patron de la particula
	ld (ix+002h),c		;a5ec   ; guarda la Y de la particula
	add ix,de		;a5ef
	djnz L_A5E6		;a5f1
	ld a,001h		;a5f3
	ld (0e352h),a		;a5f5   ; guarda la cuenta de la escena (parpadeo, paso de las particulas)
	ret			;a5f8

; ----------------------------------------------------------------------
; DATOS resto_A5F9: lo apuntan con el banco puesto p06:A5CD (0xA5F9); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p06:A5CD (96 bytes)
;   0xa5f9..0xa659  (96 bytes)
DATA_resto_A5F9:
	defb 000h,000h,000h,000h,000h,000h,000h,001h,000h,000h,000h,000h,000h,000h,000h,000h	; a5f9  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a609  ................
	defb 000h,000h,000h,000h,000h,000h,000h,001h,001h,000h,000h,000h,000h,000h,000h,000h	; a619  ................
	defb 000h,000h,000h,000h,000h,000h,000h,080h,080h,000h,000h,000h,000h,000h,000h,000h	; a629  ................
	defb 000h,000h,000h,000h,000h,000h,001h,003h,001h,000h,000h,000h,000h,000h,000h,000h	; a639  ................
	defb 000h,000h,000h,000h,000h,000h,000h,080h,000h,000h,000h,000h,000h,000h,000h,000h	; a649  ................

; ======================================================================
; CODIGO 0xa659..0xa67e  (37 bytes)
; ======================================================================


particulas_cuadro:		; salen por los bordes al azar, van hacia la posicion del personaje (p01:6312) y desaparecen en el centro; sprites en 0xF000
	ld a,(0e35ah)		;a659   ; lee la vida de las particulas, en cuadros
	dec a			;a65c
	ld (0e35ah),a		;a65d   ; guarda la vida de las particulas, en cuadros
	jr nz,L_A667		;a660
	ld hl,0e352h		;a662   ; apunta a la cuenta de la escena (parpadeo, paso de las particulas)
	inc (hl)			;a665
	ret			;a666
L_A667:
	ld a,r		;a667
	ld hl,0e003h		;a669   ; apunta a la cuenta de cuadros
	xor (hl)			;a66c
	rra			;a66d
	jp nc,L_A710		;a66e
	and 003h		;a671
	ld b,a			;a673
	ld a,(0e35bh)		;a674   ; lee las particulas se alejan del personaje
	or a			;a677
	ld a,b			;a678
	jr nz,$+13		;a679
	call 040abh		;a67b   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A67E: tabla de 4 palabras del despachador (call 0x408D en
;   0xA67B); lo leen L_40AB (8 bytes)
;   0xa67e..0xa686  (8 bytes)
DATA_saltos_A67E:
	defb 091h,0a6h	; a67e
	defb 098h,0a6h	; a680
	defb 09fh,0a6h	; a682
	defb 0a6h,0a6h	; a684

; ======================================================================
; CODIGO 0xa686..0xa689  (3 bytes)
; ======================================================================


L_A686:
	call 040abh		;a686   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_A689: tabla de 4 palabras del despachador (call 0x408D en
;   0xA686); lo leen L_40AB (8 bytes)
;   0xa689..0xa691  (8 bytes)
DATA_saltos_A689:
	defb 0adh,0a6h	; a689
	defb 0b4h,0a6h	; a68b
	defb 0bbh,0a6h	; a68d
	defb 0c2h,0a6h	; a68f

; ======================================================================
; CODIGO 0xa691..0xa810  (383 bytes)
; ======================================================================


L_A691:
	call x_al_azar		;a691   ; x_al_azar: H = una X al azar de p06:A810
	ld l,001h		;a694
	jr L_A6C7		;a696
L_A698:
	call x_al_azar		;a698   ; x_al_azar: H = una X al azar de p06:A810
	ld l,07fh		;a69b
	jr L_A6C7		;a69d
L_A69F:
	call y_al_azar		;a69f   ; y_al_azar: L = una Y al azar de p06:A810
	ld h,001h		;a6a2
	jr L_A6C7		;a6a4
L_A6A6:
	call y_al_azar		;a6a6   ; y_al_azar: L = una Y al azar de p06:A810
	ld h,0bfh		;a6a9
	jr L_A6C7		;a6ab
L_A6AD:
	call x_al_azar_b		;a6ad   ; x_al_azar_b: H = una X al azar de p06:A820
	ld l,01fh		;a6b0
	jr L_A6C7		;a6b2
L_A6B4:
	call x_al_azar_b		;a6b4   ; x_al_azar_b: H = una X al azar de p06:A820
	ld l,051h		;a6b7
	jr L_A6C7		;a6b9
L_A6BB:
	call y_al_azar_b		;a6bb   ; y_al_azar_b: L = una Y al azar de p06:A820
	ld h,037h		;a6be
	jr L_A6C7		;a6c0
L_A6C2:
	call y_al_azar_b		;a6c2   ; y_al_azar_b: L = una Y al azar de p06:A820
	ld h,069h		;a6c5
L_A6C7:
	call particula_libre		;a6c7   ; particula_libre: IX = la primera particula escondida (Y = 0xE0); Z si la hay
	jr nz,L_A710		;a6ca
	ld (ix+002h),l		;a6cc   ; guarda la Y de la particula
	ld (ix+004h),h		;a6cf   ; guarda la X de la particula
	ld a,(0e352h)		;a6d2   ; lee la cuenta de la escena (parpadeo, paso de las particulas)
	dec a			;a6d5
	ld b,020h		;a6d6
	jr z,L_A6EB		;a6d8
	ld a,(0e35ah)		;a6da   ; lee la vida de las particulas, en cuadros
	and 003h		;a6dd
	jr z,L_A6EB		;a6df
	ld b,050h		;a6e1
	ld (ix+000h),001h		;a6e3   ; si la particula esta viva = 0x01
	ld (ix+009h),008h		;a6e7   ; el patron de la particula = 0x08
L_A6EB:
	ld a,(0e35ah)		;a6eb   ; lee la vida de las particulas, en cuadros
	and 001h		;a6ee
	inc a			;a6f0
	rlca			;a6f1
	rlca			;a6f2
	rlca			;a6f3
	add a,b			;a6f4
	call 0434dh		;a6f5   ; a_rumbo_desde_ix: con 1-2-3, p01:6312 (el paso hacia el personaje desde la ficha IX (+2, +4) con la velocidad A); vuelve con 4-5-6
	ld a,(0e35bh)		;a6f8   ; lee las particulas se alejan del personaje
	or a			;a6fb
	jr z,L_A704		;a6fc
	call 043b3h		;a6fe   ; hl_negativo: HL = -HL
	call 043adh		;a701   ; de_negativo: DE = -DE
L_A704:
	ld (ix+005h),l		;a704   ; guarda la velocidad Y de la particula
	ld (ix+006h),h		;a707   ; guarda la velocidad Y de la particula (alta)
	ld (ix+007h),e		;a70a   ; guarda la velocidad X de la particula
	ld (ix+008h),d		;a70d   ; guarda la velocidad X de la particula (alta)
L_A710:
	ld b,010h		;a710
	ld ix,0e400h		;a712   ; apunta a los 8 actores de la sala (0x80 bytes cada uno)
L_A716:
	ld a,(ix+000h)		;a716   ; lee si la particula esta viva
	or a			;a719
	jr z,L_A739		;a71a
	ld a,(ix+004h)		;a71c   ; lee la X de la particula
	sub 030h		;a71f
	cp 061h		;a721
	jr nc,L_A72B		;a723
	ld (ix+009h),000h		;a725   ; el patron de la particula = 0x00
	jr L_A739		;a729
L_A72B:
	add a,018h		;a72b
	cp 091h		;a72d
	ld (ix+009h),008h		;a72f   ; el patron de la particula = 0x08
	jr nc,L_A739		;a733
	ld (ix+009h),004h		;a735   ; el patron de la particula = 0x04
L_A739:
	ld l,(ix+001h)		;a739   ; lee la Y de la particula (fraccion)
	ld h,(ix+002h)		;a73c   ; lee la Y de la particula
	ld e,(ix+005h)		;a73f   ; lee la velocidad Y de la particula
	ld d,(ix+006h)		;a742   ; lee la velocidad Y de la particula (alta)
	add hl,de			;a745
	ld (ix+001h),l		;a746   ; guarda la Y de la particula (fraccion)
	ld (ix+002h),h		;a749   ; guarda la Y de la particula
	ld c,h			;a74c
	ld a,c			;a74d
	cp 080h		;a74e
	jr nc,L_A777		;a750
	ld l,(ix+003h)		;a752   ; lee la X de la particula (fraccion)
	ld h,(ix+004h)		;a755   ; lee la X de la particula
	ld e,(ix+007h)		;a758   ; lee la velocidad X de la particula
	ld d,(ix+008h)		;a75b   ; lee la velocidad X de la particula (alta)
	add hl,de			;a75e
	ld (ix+003h),l		;a75f   ; guarda la X de la particula (fraccion)
	ld (ix+004h),h		;a762   ; guarda la X de la particula
	ld a,h			;a765
	cp 0c0h		;a766
	jr nc,L_A777		;a768
	sub 038h		;a76a
	cp 031h		;a76c
	jr nc,L_A77B		;a76e
	ld a,c			;a770
	sub 020h		;a771
	cp 031h		;a773
	jr nc,L_A77B		;a775
L_A777:
	ld (ix+002h),0e0h		;a777   ; la Y de la particula = 0xE0
L_A77B:
	ld de,00010h		;a77b
	add ix,de		;a77e
	djnz L_A716		;a780
	ld b,010h		;a782
	ld ix,0e400h		;a784   ; apunta a los 8 actores de la sala (0x80 bytes cada uno)
	ld hl,0f000h		;a788   ; apunta a los atributos de los 32 sprites
	ld de,00010h		;a78b
L_A78E:
	ld a,(ix+002h)		;a78e   ; lee la Y de la particula
	ld (hl),a			;a791
	inc hl			;a792
	ld a,(ix+004h)		;a793   ; lee la X de la particula
	ld (hl),a			;a796
	inc hl			;a797
	ld a,(ix+009h)		;a798   ; lee el patron de la particula
	ld (hl),a			;a79b
	inc hl			;a79c
	ld (hl),00fh		;a79d
	inc hl			;a79f
	add ix,de		;a7a0
	djnz L_A78E		;a7a2
	ret			;a7a4
particulas_acaban:		; cuando las 16 estan escondidas, el siguiente paso (0xE350)
	ld bc,01010h		;a7a5
	ld a,0e0h		;a7a8
	ld hl,0e402h		;a7aa
	ld de,00010h		;a7ad
L_A7B0:
	cp (hl)			;a7b0
	jr nz,L_A7BB		;a7b1
	dec c			;a7b3
	jr nz,L_A7BB		;a7b4
	ld hl,0e350h		;a7b6   ; apunta a el paso de la escena (inicial, historia, final)
	inc (hl)			;a7b9
	ret			;a7ba
L_A7BB:
	add hl,de			;a7bb
	djnz L_A7B0		;a7bc
	jp L_A710		;a7be
particula_libre:		; IX = la primera particula escondida (Y = 0xE0); Z si la hay
	ld a,0e0h		;a7c1
	ld b,010h		;a7c3
	ld ix,0e3f0h		;a7c5
	ld de,00010h		;a7c9
L_A7CC:
	add ix,de		;a7cc
	cp (ix+002h)		;a7ce   ; compara con la Y de la particula
	ret z			;a7d1
	djnz L_A7CC		;a7d2
	ret			;a7d4
y_al_azar:		; L = una Y al azar de p06:A810
	ld hl,0e003h		;a7d5   ; apunta a la cuenta de cuadros
	xor (hl)			;a7d8
	and 00fh		;a7d9
	ld hl,0a810h		;a7db
	call 040a1h		;a7de   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;a7e1
	ld l,a			;a7e2
	ret			;a7e3
x_al_azar:		; H = una X al azar de p06:A810
	inc a			;a7e4
	ld hl,0e003h		;a7e5   ; apunta a la cuenta de cuadros
	xor (hl)			;a7e8
	and 007h		;a7e9
	ld hl,0a810h		;a7eb
	call 040a1h		;a7ee   ; hl_mas_a: HL = HL + A
	ld h,(hl)			;a7f1
	ret			;a7f2
y_al_azar_b:		; L = una Y al azar de p06:A820
	ld hl,0e003h		;a7f3   ; apunta a la cuenta de cuadros
	xor (hl)			;a7f6
	and 007h		;a7f7
	ld hl,0a820h		;a7f9
	call 040a1h		;a7fc   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;a7ff
	ld l,a			;a800
	ret			;a801
x_al_azar_b:		; H = una X al azar de p06:A820
	ld hl,0e003h		;a802   ; apunta a la cuenta de cuadros
	xor (hl)			;a805
	and 00fh		;a806
	ld hl,0a820h		;a808
	call 040a1h		;a80b   ; hl_mas_a: HL = HL + A
	ld h,(hl)			;a80e
	ret			;a80f

; ----------------------------------------------------------------------
; DATOS resto_A810: lo apuntan con el banco puesto p06:A7DB (0xA810), p06:A7EB
;   (0xA810), p06:A7F9 (0xA820), p06:A808 (0xA820), p06:AE9A (0xA830); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p06:A7DB, p06:A7EB, p06:A7F9, p06:A808, p06:AE9A (589 bytes)
;   0xa810..0xaa5d  (589 bytes)
DATA_resto_A810:
	defb 00fh,01dh,02bh,039h,047h,055h,063h,071h,08fh,09dh,0abh,0b9h,0a3h,0b0h,098h,0a0h	; a810  ..+9GUcq........
	defb 039h,03ch,03fh,042h,045h,048h,04bh,04eh,051h,054h,057h,05ah,05dh,060h,063h,066h	; a820  9<?BEHKNQTWZ]`cf
	defb 040h,054h,0d2h,069h,04fh,058h,052h,0d3h,0d1h,0b6h,04ah,041h,06ch,000h,006h,000h	; a830  @T.iOXR...JAl...
	defb 04ch,046h,000h,0d2h,054h,0bah,069h,052h,058h,0d1h,0d3h,04ah,0b6h,06ch,041h,006h	; a840  LF..T.iRX..J.lA.
	defb 03fh,07ch,000h,000h,07fh,020h,000h,000h,083h,000h,000h,000h,0ffh,00ah,0ffh,083h	; a850  ?|... ..........
	defb 011h,042h,052h,005h,0ffh,083h,061h,068h,001h,005h,0ffh,002h,07fh,081h,01fh,003h	; a860  .BR...ah........
	defb 0ffh,08ah,000h,0ffh,0cbh,0ffh,081h,07eh,07eh,081h,000h,000h,008h,0ffh,006h,000h	; a870  .......~~.......
	defb 082h,0f8h,007h,00eh,0f8h,08eh,038h,0f8h,038h,0f8h,038h,0f8h,038h,0f8h,0fch,0fah	; a880  ......8.8.8.8...
	defb 0f9h,0f8h,0f8h,007h,003h,0f8h,083h,0f9h,0fah,007h,004h,0ffh,082h,01fh,0e0h,00eh	; a890  ................
	defb 01fh,08eh,01ch,01fh,01ch,01fh,01ch,01fh,01ch,01fh,03fh,05fh,09fh,01fh,01fh,0e0h	; a8a0  ..........?_....
	defb 003h,01fh,083h,09fh,05fh,0e0h,004h,0ffh,081h,000h,005h,0ffh,083h,054h,06bh,000h	; a8b0  ...._........Tk.
	defb 005h,0ffh,083h,0a5h,056h,000h,00ah,0ffh,002h,000h,092h,0ffh,000h,0ffh,094h,0ffh	; a8c0  ....V...........
	defb 0ffh,000h,000h,0ffh,000h,0ffh,0aah,0ffh,0ffh,000h,000h,0ffh,000h,003h,0ffh,085h	; a8d0  ................
	defb 000h,0ffh,000h,0ffh,000h,003h,0ffh,003h,0fch,005h,0ffh,003h,0e7h,005h,0ffh,002h	; a8e0  ................
	defb 03fh,081h,03ch,003h,0ffh,081h,000h,003h,0ffh,003h,0e7h,082h,0ffh,000h,003h,0ffh	; a8f0  ?.<.............
	defb 003h,0f3h,082h,0ffh,000h,003h,0ffh,003h,03fh,085h,0ffh,000h,000h,0ffh,000h,004h	; a900  ........?.......
	defb 0ffh,004h,002h,002h,006h,085h,01eh,0fch,000h,0ffh,0ffh,006h,000h,081h,03fh,007h	; a910  ..............?.
	defb 000h,081h,0f0h,007h,000h,081h,0ffh,00ch,000h,002h,040h,002h,050h,009h,054h,083h	; a920  ..........@.P.T.
	defb 014h,044h,050h,00ah,054h,005h,000h,083h,0c0h,0f0h,0f4h,007h,0f7h,084h,037h,0c7h	; a930  .DP.T.........7.
	defb 0f3h,0f4h,006h,0f7h,083h,037h,007h,003h,005h,000h,083h,080h,0b0h,0bch,007h,0bdh	; a940  .....7..........
	defb 085h,03dh,08ch,0b1h,0bdh,0bdh,006h,000h,082h,003h,00fh,004h,000h,081h,03fh,003h	; a950  .=............?.
	defb 0ffh,081h,03fh,003h,000h,094h,010h,018h,018h,010h,000h,01fh,000h,000h,001h,00fh	; a960  ..?.............
	defb 01eh,038h,000h,0f8h,000h,000h,0c0h,008h,000h,001h,003h,000h,003h,001h,002h,003h	; a970  .8..............
	defb 095h,068h,0e0h,0d0h,0a2h,0d0h,022h,0abh,019h,004h,008h,000h,000h,042h,041h,060h	; a980  .h...."......BA`
	defb 098h,0c0h,040h,020h,020h,000h,003h,010h,081h,003h,004h,001h,002h,000h,091h,001h	; a990  ..@  ...........
	defb 070h,0a1h,03bh,01fh,01dh,098h,088h,008h,001h,001h,011h,001h,002h,002h,000h,000h	; a9a0  p...............
	defb 005h,010h,086h,018h,008h,00ch,000h,002h,006h,005h,00eh,081h,001h,004h,003h,002h	; a9b0  ................
	defb 001h,091h,003h,044h,046h,005h,004h,08ch,09eh,0f3h,0e4h,008h,000h,0c0h,004h,012h	; a9c0  ...DF...........
	defb 021h,0c1h,0b1h,003h,00ch,002h,018h,09eh,070h,030h,00ch,007h,01fh,0feh,064h,0c4h	; a9d0  !.......p0....d.
	defb 0c6h,0e6h,086h,0e9h,02ah,015h,011h,009h,009h,005h,006h,0cah,0aah,090h,080h,088h	; a9e0  ....*...........
	defb 080h,090h,0a0h,001h,002h,002h,003h,004h,08bh,00ch,00fh,000h,080h,040h,060h,020h	; a9f0  .............@`
	defb 020h,010h,090h,0ffh,003h,001h,004h,0ffh,08ah,0c6h,0e4h,084h,00ch,0cch,00ch,08ch	; aa00   ...............
	defb 00eh,002h,001h,006h,000h,082h,0c0h,080h,006h,000h,094h,00eh,00ch,004h,008h,00bh	; aa10  ................
	defb 00eh,00ch,01ch,010h,010h,000h,010h,010h,020h,050h,010h,0ffh,003h,003h,002h,004h	; aa20  ........ P......
	defb 000h,085h,006h,083h,043h,021h,001h,004h,000h,086h,080h,0f0h,0e0h,0c0h,0c0h,080h	; aa30  ....C!..........
	defb 003h,000h,081h,013h,005h,000h,093h,00eh,04dh,088h,010h,010h,000h,020h,070h,010h	; aa40  ........M.... p.
	defb 010h,020h,060h,000h,080h,000h,000h,0c8h,000h,040h,005h,000h,000h	; aa50  . `......@...

; ----------------------------------------------------------------------
; DATOS graficos_AA5D: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4DB6 (166
;   bytes)
;   0xaa5d..0xab03  (166 bytes)
DATA_graficos_AA5D:
	defb 002h,040h,089h,000h,040h,040h,000h,040h,000h,000h,07fh,00fh,006h,000h,002h,0ffh	; aa5d  .@..@@.@........
	defb 006h,000h,082h,0c0h,0e0h,006h,000h,082h,03fh,01fh,005h,000h,002h,0ffh,08ah,080h	; aa6d  ........?.......
	defb 03fh,078h,060h,060h,040h,0ffh,0ffh,000h,0c8h,004h,000h,002h,0ffh,002h,000h,081h	; aa7d  ?x``@...........
	defb 00eh,003h,000h,002h,0ffh,002h,000h,081h,087h,003h,000h,002h,0ffh,002h,000h,081h	; aa8d  ................
	defb 0f9h,003h,000h,008h,0bfh,08dh,0bch,0bfh,0bch,0bfh,0bch,0bfh,0bch,0bfh,000h,000h	; aa9d  ................
	defb 0ffh,000h,0ffh,003h,0abh,002h,000h,083h,033h,04fh,0dfh,003h,0bfh,002h,000h,083h	; aaad  ........3O......
	defb 0ffh,080h,0e0h,003h,0ffh,002h,000h,086h,0ffh,000h,0cfh,0e0h,0ffh,0ffh,005h,0bfh	; aabd  ................
	defb 088h,080h,03fh,0bfh,000h,000h,05fh,040h,05fh,003h,05ah,082h,03fh,080h,006h,0bfh	; aacd  ..?..._@_.Z.?...
	defb 081h,080h,007h,0dfh,0a0h,05fh,03fh,040h,03fh,040h,03fh,010h,00fh,05fh,00fh,000h	; aadd  ....._?@?@?.._..
	defb 0ffh,000h,0ffh,000h,0ffh,0a4h,0ffh,000h,0ffh,000h,0ffh,000h,0ffh,0bfh,03fh,01fh	; aaed  ..............?.
	defb 000h,0c0h,03fh,0c0h,07fh,000h	; aafd

; ----------------------------------------------------------------------
; DATOS resto_AB03: lo apuntan con el banco puesto p04:686A (0xACAB), p04:68C7
;   (0xAD32); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p04:686A, p04:68C7 (819 bytes)
;   0xab03..0xae36  (819 bytes)
DATA_resto_AB03:
	defb 005h,000h,083h,0c7h,0eeh,0ddh,004h,000h,084h,0d4h,0bah,0fdh,0abh,005h,000h,09ch	; ab03  ................
	defb 080h,0a0h,06ch,0beh,07bh,074h,072h,0d8h,0f2h,06ch,0f1h,000h,001h,014h,0c8h,003h	; ab13  ..l.{tr..l......
	defb 010h,008h,0c0h,0fbh,0d5h,060h,018h,024h,094h,042h,04ah,000h,003h,080h,004h,040h	; ab23  .....`.$.BJ....@
	defb 005h,0bdh,08bh,03ch,008h,00ch,0d2h,0c4h,011h,0a3h,012h,088h,040h,040h,008h,000h	; ab33  ...<........@@..
	defb 08dh,00ah,048h,009h,080h,000h,041h,0c3h,043h,080h,080h,07fh,000h,000h,003h,0ffh	; ab43  ..H...A.C.......
	defb 081h,03eh,003h,000h,004h,0ffh,088h,020h,070h,061h,03bh,09bh,0cfh,0ebh,0efh,005h	; ab53  .>..... pa......
	defb 000h,087h,080h,0c0h,0e0h,063h,060h,000h,000h,003h,007h,082h,00fh,0ffh,005h,000h	; ab63  .....c`.........
	defb 083h,001h,00fh,0ffh,003h,000h,0afh,007h,03fh,0fdh,0d2h,0efh,01fh,03bh,0f5h,0f8h	; ab73  ........?.......
	defb 0f0h,050h,048h,020h,088h,003h,088h,0c4h,044h,030h,018h,00fh,010h,0c0h,000h,040h	; ab83  .PH ....D0.....@
	defb 020h,058h,08eh,040h,040h,041h,041h,062h,060h,078h,03fh,03eh,0dbh,0ech,0a6h,095h	; ab93   X.@@AAb`x?>....
	defb 042h,012h,000h,0a8h,000h,080h,005h,000h,092h,068h,024h,032h,011h,008h,004h,002h	; aba3  B........h$2....
	defb 002h,00eh,018h,018h,028h,0c4h,008h,008h,000h,009h,010h,003h,090h,087h,040h,000h	; abb3  ....(.........@.
	defb 000h,0c0h,038h,006h,001h,003h,002h,005h,000h,084h,080h,040h,040h,000h,000h,005h	; abc3  ..8........@@...
	defb 000h,083h,0c0h,0e0h,0ech,010h,000h,006h,0efh,086h,06fh,08fh,000h,040h,070h,078h	; abd3  ..........o..@px
	defb 004h,07bh,005h,000h,083h,0c0h,0d0h,0dch,008h,000h,005h,0bdh,088h,03dh,00dh,00fh	; abe3  .{...........=..
	defb 0e7h,0e9h,0eeh,0efh,0efh,003h,0ffh,002h,07bh,083h,0ffh,000h,000h,003h,0ffh,002h	; abf3  ........{.......
	defb 0deh,083h,0ffh,000h,000h,003h,0ffh,085h,000h,0c0h,0ffh,000h,000h,003h,0ffh,081h	; ac03  ................
	defb 03fh,003h,000h,005h,0ffh,003h,000h,005h,0ffh,003h,000h,005h,0ffh,003h,000h,005h	; ac13  ?...............
	defb 0ffh,007h,000h,081h,0ffh,007h,000h,081h,0ffh,007h,000h,081h,0ffh,007h,000h,081h	; ac23  ................
	defb 0ffh,007h,000h,004h,040h,002h,060h,082h,078h,03fh,038h,000h,000h,021h,0e0h,081h	; ac33  ....@.`.x?8..!..
	defb 0f0h,003h,0e0h,081h,0f0h,007h,0e0h,085h,0f0h,0e0h,0e0h,060h,060h,006h,0e0h,083h	; ac43  ...........``...
	defb 0e6h,060h,0f6h,01ah,0e6h,082h,060h,0f6h,004h,0e6h,081h,0feh,005h,0e8h,082h,080h	; ac53  .`....`.........
	defb 0f8h,015h,0e8h,081h,0e6h,004h,0e8h,082h,080h,0f8h,004h,0e8h,081h,0feh,005h,0e0h	; ac63  ................
	defb 002h,090h,083h,0f0h,0e0h,0e0h,003h,0f0h,002h,090h,083h,0f0h,0e0h,0e0h,003h,0f0h	; ac73  ................
	defb 002h,090h,081h,0f0h,006h,0e0h,081h,090h,004h,0f0h,003h,0e0h,003h,090h,002h,0f0h	; ac83  ................
	defb 003h,0e0h,003h,090h,081h,0f0h,003h,0e0h,002h,090h,081h,0f0h,006h,0e0h,082h,0e9h	; ac93  ................
	defb 0e8h,006h,0e0h,082h,0e2h,0ech,006h,0e0h,082h,0e7h,0e5h,005h,0e0h,085h,0f0h,0e0h	; aca3  ................
	defb 0e0h,0e8h,0e8h,003h,0e0h,085h,0f0h,0e0h,0e0h,0e6h,0e8h,003h,0e0h,087h,0f0h,0e0h	; acb3  ................
	defb 0e0h,0e2h,0e2h,0e0h,0e0h,004h,0f0h,003h,0e0h,081h,0e4h,07fh,040h,07fh,040h,07fh	; acc3  ............@.@.
	defb 040h,01bh,040h,000h,028h,040h,003h,060h,005h,040h,002h,060h,006h,040h,002h,060h	; acd3  @.@.(@.`.@.`.@.`
	defb 006h,040h,002h,060h,006h,040h,002h,060h,006h,040h,012h,0e0h,081h,0f0h,007h,0e0h	; ace3  .@.`.@.`.@......
	defb 004h,0f0h,005h,0e0h,003h,0feh,004h,0e0h,081h,0f0h,00ah,0e0h,002h,0f0h,003h,0e0h	; acf3  ................
	defb 081h,0f0h,006h,0e0h,002h,0f0h,005h,0e0h,002h,0f0h,007h,0e0h,083h,090h,0f0h,0f0h	; ad03  ................
	defb 005h,0e0h,002h,090h,081h,0f0h,005h,0e0h,002h,090h,002h,0f0h,005h,0e0h,081h,090h	; ad13  ................
	defb 003h,0f0h,002h,0e0h,000h,07fh,040h,069h,040h,000h,07fh,040h,069h,040h,000h,000h	; ad23  ......@i@..@i@..
	defb 020h,010h,010h,06fh,070h,015h,015h,015h,015h,015h,015h,015h,015h,015h,015h,015h	; ad33   ..op...........
	defb 015h,090h,08fh,06ch,010h,028h,029h,02ah,011h,012h,013h,010h,010h,010h,010h,010h	; ad43  ...l.()*........
	defb 010h,010h,08ch,072h,01ah,067h,068h,016h,069h,06ah,06bh,08bh,08ah,089h,016h,088h	; ad53  ...r.gh.ijk.....
	defb 087h,01fh,092h,06ch,018h,062h,063h,064h,065h,066h,064h,064h,086h,085h,064h,083h	; ad63  ...l.bcdefdd..d.
	defb 082h,01dh,08ch,06dh,019h,034h,000h,031h,032h,000h,033h,033h,000h,041h,042h,000h	; ad73  ...m.4.12.33.AB.
	defb 000h,01eh,08dh,06dh,019h,035h,038h,000h,000h,000h,000h,000h,043h,044h,045h,046h	; ad83  ...m.58.....CDEF
	defb 000h,01eh,08dh,06dh,019h,036h,039h,03ch,0a0h,0a1h,0a2h,000h,047h,048h,049h,04ah	; ad93  ...m.69<....GHIJ
	defb 04bh,01eh,08dh,06dh,019h,037h,03ah,03dh,0a3h,0a4h,0a5h,0a6h,04ch,04dh,04eh,04fh	; ada3  K..m.7:=....LMNO
	defb 000h,01eh,08dh,06dh,019h,000h,03bh,0a7h,0a8h,0a9h,0aah,0abh,050h,051h,052h,053h	; adb3  ...m........PQRS
	defb 054h,01eh,08dh,06ch,018h,03eh,03fh,0ach,0adh,0aeh,0afh,055h,056h,057h,058h,059h	; adc3  T..l.>?....UVWXY
	defb 05ah,01dh,08ch,074h,017h,040h,0b0h,0b1h,0b2h,0b3h,0b4h,05bh,05ch,05dh,05eh,05fh	; add3  Z..t.@.....[\]^_
	defb 060h,01ch,094h,06ch,018h,0b5h,0b6h,0b7h,0b8h,0b9h,0bah,0bbh,0bch,000h,000h,061h	; ade3  `..l...........a
	defb 02fh,01dh,08ch,06ch,01bh,023h,023h,023h,023h,023h,021h,022h,023h,023h,023h,023h	; adf3  /..l.#####!"####
	defb 023h,020h,08ch,079h,024h,024h,024h,024h,024h,024h,025h,026h,024h,024h,024h,024h	; ae03  # .y$$$$$$%&$$$$
	defb 024h,024h,099h,075h,02bh,02dh,073h,06eh,02eh,02eh,071h,091h,02eh,02eh,08eh,093h	; ae13  $$.u+-sn..q.....
	defb 02ch,014h,095h,076h,027h,027h,077h,027h,027h,027h,078h,098h,027h,027h,027h,097h	; ae23  ,..v''w'''x.'''.
	defb 027h,027h,096h	; ae33

; ======================================================================
; CODIGO 0xae36..0xaf02  (204 bytes)
; ======================================================================


nombre_en_pares:		; las letras del nombre HL de dos en dos en DE, con los acentos (3 y 4) en la fila de arriba
	inc de			;ae36
	inc de			;ae37
	ld c,008h		;ae38
L_AE3A:
	ld b,002h		;ae3a
L_AE3C:
	ld a,(hl)			;ae3c
	inc hl			;ae3d
	cp 0ffh		;ae3e
	ret z			;ae40
	ld (de),a			;ae41
	inc de			;ae42
	ld a,(hl)			;ae43
	cp 003h		;ae44
	call z,acento_arriba		;ae46   ; acento_arriba: el acento A a la fila de arriba de la letra anterior
	cp 004h		;ae49
	call z,acento_arriba		;ae4b   ; acento_arriba: el acento A a la fila de arriba de la letra anterior
	dec c			;ae4e
	ret z			;ae4f
	djnz L_AE3C		;ae50
	inc de			;ae52
	inc de			;ae53
	jr L_AE3A		;ae54
acento_arriba:		; el acento A a la fila de arriba de la letra anterior
	inc hl			;ae56   ; la letra siguiente
	dec de			;ae57   ; tres atras: la fila de arriba
	dec de			;ae58
	dec de			;ae59
	ld (de),a			;ae5a   ; el acento
	inc de			;ae5b   ; y vuelve
	inc de			;ae5c
	inc de			;ae5d
	ret			;ae5e
nombres_en_sprites:		; los dos nombres como patrones de sprite desde 0x1980
	ld hl,0e8e2h		;ae5f   ; apunta a la variable de trabajo 0xE8E2 (16 bits)
	ld de,0e8e3h		;ae62
	ld bc,0000fh		;ae65
	xor a			;ae68
	ld (hl),a			;ae69
	ldir		;ae6a
	ld de,0e8e2h		;ae6c   ; apunta a la variable de trabajo 0xE8E2 (16 bits)
	ld hl,0eb00h		;ae6f   ; apunta a el primer nombre (8 letras y 0xFF)
	call nombre_en_pares		;ae72   ; nombre_en_pares: las letras del nombre HL de dos en dos en DE, con los acentos (3 y 4) en la fila de arriba
	ld de,0e8eah		;ae75
	ld hl,0eb09h		;ae78   ; apunta a el segundo nombre (8 letras y 0xFF)
	call nombre_en_pares		;ae7b   ; nombre_en_pares: las letras del nombre HL de dos en dos en DE, con los acentos (3 y 4) en la fila de arriba
	ld a,0ffh		;ae7e
	ld (0e8f2h),a		;ae80   ; guarda la variable de trabajo 0xE8F2 (16 bits)
	ld de,01980h		;ae83
	ld hl,0e8e2h		;ae86   ; apunta a la variable de trabajo 0xE8E2 (16 bits)
	ld (0e8e0h),de		;ae89   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	jr letras_en_sprites		;ae8d
texto_en_sprites_bf98:		; el texto p06:BF98 como patrones de sprite desde 0x1800
	ld de,01800h		;ae8f
	ld hl,0bf98h		;ae92
	jr texto_en_sprites		;ae95
texto_en_sprites_a830:		; el texto p06:A830 como patrones de sprite desde 0x1800
	ld de,01800h		;ae97
	ld hl,0a830h		;ae9a
	jr texto_en_sprites		;ae9d
texto_en_sprites:		; borra los patrones de sprite y escribe el texto HL desde DE
	ld (0e8e0h),de		;ae9f   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	push hl			;aea3
	ld hl,01800h		;aea4
	xor a			;aea7
	ld bc,00800h		;aea8
	call 00056h		;aeab   ; BIOS FILVRM - Fills VRAM with value
	pop hl			;aeae
letras_en_sprites:		; pares de letras de HL como sprites de 16 x 16 hasta 0xFF
	ld b,002h		;aeaf
L_AEB1:
	ld a,(hl)			;aeb1
	inc a			;aeb2
	ret z			;aeb3
	push bc			;aeb4
	call dos_letras_en_sprite		;aeb5   ; dos_letras_en_sprite: dos letras de la fuente (p04:6F39) a 0xE8E0 y 0xE8E0 + 0x10
	pop bc			;aeb8
	ld de,00018h		;aeb9
	call retrocede_destino		;aebc   ; retrocede_destino: 0xE8E0 -= DE
	djnz L_AEB1		;aebf
	ld de,0fff0h		;aec1
	call retrocede_destino		;aec4   ; retrocede_destino: 0xE8E0 -= DE
	jr letras_en_sprites		;aec7
retrocede_destino:		; 0xE8E0 -= DE
	push hl			;aec9
	ld hl,(0e8e0h)		;aeca   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	or a			;aecd
	sbc hl,de		;aece
	ld (0e8e0h),hl		;aed0   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	pop hl			;aed3
	ret			;aed4
dos_letras_en_sprite:		; dos letras de la fuente (p04:6F39) a 0xE8E0 y 0xE8E0 + 0x10
	dec a			;aed5
	call letra_en_sprite		;aed6   ; letra_en_sprite: los 8 bytes de la letra A de la fuente a la VRAM 0xE8E0
	ld a,(hl)			;aed9
letra_en_sprite:		; los 8 bytes de la letra A de la fuente a la VRAM 0xE8E0
	push hl			;aeda
	ld l,a			;aedb
	ld h,000h		;aedc
	add hl,hl			;aede
	add hl,hl			;aedf
	add hl,hl			;aee0
	ld de,06f39h		;aee1
	add hl,de			;aee4
	ex de,hl			;aee5
	ld hl,(0e8e0h)		;aee6   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	ld bc,00008h		;aee9
	call 05941h		;aeec   ; copia_a_vram: LDIRVM de DE a la VRAM HL
	ld hl,(0e8e0h)		;aeef   ; lee la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	ld de,00010h		;aef2
	add hl,de			;aef5
	ld (0e8e0h),hl		;aef6   ; guarda la variable de trabajo 0xE8E0 (16 bits; cada rutina la usa a su manera) y el byte siguiente (16 bits)
	pop hl			;aef9
	inc hl			;aefa
	ret			;aefb
estado_6_pantalla:		; el final segun 0xE338 (tabla p06:AF02)
	ld a,(0e338h)		;aefc   ; lee la sala de partida (indice de p01:67E3)
	call 040abh		;aeff   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_AF02: tabla de 2 palabras del despachador (call 0x408D en
;   0xAEFF); lo leen L_40AB (4 bytes)
;   0xaf02..0xaf06  (4 bytes)
DATA_saltos_AF02:
	defb 04eh,0afh	; af02
	defb 08bh,0afh	; af04

; ----------------------------------------------------------------------
; DATOS resto_AF06: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (4 bytes)
;   0xaf06..0xaf0a  (4 bytes)
DATA_resto_AF06:
	defb 00ah,0afh,00ah,0afh	; af06

; ----------------------------------------------------------------------
; DATOS vram_AF0A: bytes a la VRAM (L_59C2): [direccion] y bytes; 0xFE otra
;   direccion, 0xFF acaba; lo leen p06:AFA4 (68 bytes)
;   0xaf0a..0xaf4e  (68 bytes)
DATA_vram_AF0A:
	defb 008h,039h,049h,042h,04bh,052h,0feh,011h,039h,059h,000h,05eh,062h,058h,058h,0feh	; af0a  .9IBKR..9Y.^bXX.
	defb 02fh,039h,003h,0feh,048h,039h,052h,055h,000h,044h,050h,005h,000h,077h,097h,020h	; af1a  /9..H9RU.DP..w.
	defb 077h,0c5h,0c0h,06ch,0feh,06fh,039h,003h,0feh,088h,039h,04ch,047h,042h,049h,053h	; af2a  w..l.o9...9LGBIS
	defb 059h,000h,052h,046h,054h,045h,0a6h,04fh,001h,0feh,0cch,039h,034h,028h,025h,000h	; af3a  Y.RFTE.O...94(%.
	defb 025h,02eh,024h,0ffh	; af4a

; ======================================================================
; CODIGO 0xaf4e..0xaf54  (6 bytes)
; ======================================================================


final_1:		; un paso del final 1 (0xE339, tabla p06:AF54): el texto p06:AF0A y el nombre; con tecla se acaba (0xE340 = 0x80)
	ld a,(0e339h)		;af4e   ; lee el paso del final del estado 6
	call 040abh		;af51   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_AF54: tabla de 3 palabras del despachador (call 0x408D en
;   0xAF51); lo leen L_40AB (6 bytes)
;   0xaf54..0xaf5a  (6 bytes)
DATA_saltos_AF54:
	defb 05ah,0afh	; af54
	defb 071h,0afh	; af56
	defb 080h,0afh	; af58

; ======================================================================
; CODIGO 0xaf5a..0xaf91  (55 bytes)
; ======================================================================


L_AF5A:
	call 0591bh		;af5a   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	call 06487h		;af5d   ; fuente_y_colores: la fuente en los tres tercios y su color
	ld de,0af0ah		;af60
	call 059c2h		;af63   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	call nombre_en_0x390d		;af66   ; nombre_en_0x390d: el primer nombre en la VRAM 0x390D
	call 0600ah		;af69   ; sonido_3a: pide el sonido 0x3A
final_siguiente:		; 0xE339 + 1
	ld hl,0e339h		;af6c   ; apunta a el paso del final del estado 6
	inc (hl)			;af6f
	ret			;af70
L_AF71:
	ld a,(0e008h)		;af71   ; lee las teclas nuevas (bits 0-3 cursores, 4 disparo o espacio, 5 menu: boton 2 o M, 6 RETURN, 7 F5)
	and a			;af74
	ret z			;af75
	call 045abh		;af76   ; sonido_85: pide el sonido 0x85
	ld a,0cah		;af79
	ld (0e004h),a		;af7b   ; guarda la espera del estado, en cuadros
	jr final_siguiente		;af7e
L_AF80:
	ld hl,0e004h		;af80   ; apunta a la espera del estado, en cuadros
	dec (hl)			;af83
	ret nz			;af84
	ld a,080h		;af85
	ld (0e340h),a		;af87   ; guarda en partida (bit 7: la demo acaba)
	ret			;af8a
final_2:		; un paso del final 2 (0xE339, tabla p06:AF91): espera la tecla de la fila 2, bit 4, y vuelve al estado 4, paso 4
	ld a,(0e339h)		;af8b   ; lee el paso del final del estado 6
	call 040abh		;af8e   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_AF91: tabla de 3 palabras del despachador (call 0x408D en
;   0xAF8E); lo leen L_40AB (6 bytes)
;   0xaf91..0xaf97  (6 bytes)
DATA_saltos_AF91:
	defb 097h,0afh	; af91
	defb 0b0h,0afh	; af93
	defb 0d4h,0afh	; af95

; ======================================================================
; CODIGO 0xaf97..0xb00c  (117 bytes)
; ======================================================================


L_AF97:
	xor a			;af97
	ld (0e369h),a		;af98   ; guarda la animacion de fichas de la sala (p07:800A)
	call 0591bh		;af9b   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	call 06487h		;af9e   ; fuente_y_colores: la fuente en los tres tercios y su color
	ld de,0af0ah		;afa1
	call 059c2h		;afa4   ; bytes_a_vram: lista [direccion] bytes; 0xFE otra direccion, 0xFF acaba
	call nombre_en_0x390d		;afa7   ; nombre_en_0x390d: el primer nombre en la VRAM 0x390D
	call 0600ah		;afaa   ; sonido_3a: pide el sonido 0x3A
	jp final_siguiente		;afad   ; final_siguiente: 0xE339 + 1
L_AFB0:
	ld a,002h		;afb0
	call 00141h		;afb2   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 4,a		;afb5
	jr z,L_AFCA		;afb7
	ld hl,0e003h		;afb9   ; apunta a la cuenta de cuadros
	bit 3,(hl)		;afbc
	ld a,002h		;afbe
	jr z,L_AFC3		;afc0
	xor a			;afc2
L_AFC3:
	ld hl,03997h		;afc3
	call 0004dh		;afc6   ; BIOS WRTVRM - Writes data in VRAM
	ret			;afc9
L_AFCA:
	call 045a6h		;afca   ; sonido_81: pide el sonido 0x81
	ld a,050h		;afcd
	ld (0e004h),a		;afcf   ; guarda la espera del estado, en cuadros
	jr $-102		;afd2
L_AFD4:
	ld hl,0e004h		;afd4   ; apunta a la espera del estado, en cuadros
	dec (hl)			;afd7
	ret nz			;afd8
	call 0591bh		;afd9   ; pantalla_vacia: sprites escondidos, ficha 0 vacia y nombres a cero
	ld hl,00404h		;afdc
	ld (0e000h),hl		;afdf   ; guarda el estado del juego y el byte siguiente (16 bits)
	ld a,001h		;afe2
	ld (0e340h),a		;afe4   ; guarda en partida (bit 7: la demo acaba)
	ret			;afe7
nombre_en_0x390d:		; el primer nombre en la VRAM 0x390D
	ld hl,0390dh		;afe8
	ld de,0eb00h		;afeb   ; apunta a el primer nombre (8 letras y 0xFF)
L_AFEE:
	ld a,(de)			;afee   ; la letra
	inc de			;afef
	inc a			;aff0   ; 0xFF: acaba
	ret z			;aff1
	dec a			;aff2
	cp 003h		;aff3   ; 3 y 4: acentos
	jr z,L_B001		;aff5
	cp 004h		;aff7
	jr z,L_B001		;aff9
	call 0004dh		;affb   ; BIOS WRTVRM - Writes data in VRAM | a la VRAM
	inc hl			;affe
	jr L_AFEE		;afff
L_B001:
	push hl			;b001
	ld bc,0ffdfh		;b002
	add hl,bc			;b005
	call 0004dh		;b006   ; BIOS WRTVRM - Writes data in VRAM
	pop hl			;b009
	jr L_AFEE		;b00a

; ----------------------------------------------------------------------
; DATOS resto_B00C: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (585 bytes)
;   0xb00c..0xb255  (585 bytes)
DATA_resto_B00C:
	defb 090h,0fch,000h,000h,07fh,0e0h,001h,0fch,0f0h,03eh,000h,000h,0fch,00fh,0f0h,01bh	; b00c  .........>......
	defb 005h,007h,0ffh,09bh,007h,0ffh,0ffh,0f8h,0e1h,0aeh,090h,039h,000h,0e1h,0c7h,09bh	; b01c  ...........9....
	defb 00eh,063h,0f0h,006h,0f8h,0c2h,0f1h,0f9h,0fdh,0fdh,0edh,03bh,00eh,0ffh,080h,006h	; b02c  .c..............
	defb 07fh,007h,0ffh,081h,01fh,008h,0ffh,0b1h,0f8h,0e0h,0c7h,04fh,04fh,0a3h,09ch,063h	; b03c  ...........OO..c
	defb 018h,0e7h,0f8h,0ffh,0ffh,0e0h,00fh,080h,01eh,007h,070h,080h,0ffh,000h,00fh,0f0h	; b04c  ..........p.....
	defb 033h,080h,0e0h,038h,08eh,003h,003h,0ffh,07eh,0c7h,038h,00eh,061h,080h,0e6h,039h	; b05c  3..8....~.8.a..9
	defb 0e0h,0ffh,01fh,07fh,0e4h,03fh,000h,0c0h,0dfh,003h,02fh,0d1h,0cfh,01fh,03fh,07fh	; b06c  .....?..../...?.
	defb 0c7h,08eh,089h,096h,014h,02ch,02dh,02eh,0ffh,00fh,0f5h,01fh,00eh,0c6h,0e4h,0e0h	; b07c  .....,-.........
	defb 0feh,0c2h,07fh,03eh,01ch,05ch,0dch,0ddh,088h,056h,07fh,03eh,01ch,09ch,09ch,0dch	; b08c  ...>.\...V.>....
	defb 07fh,000h,067h,059h,0a0h,0a0h,045h,04dh,000h,00fh,09fh,0e7h,0f9h,0f1h,073h,073h	; b09c  ..gY..EM......ss
	defb 0ffh,085h,07fh,03eh,01eh,09eh,0deh,0deh,006h,0c1h,030h,03dh,07bh,07bh,077h,077h	; b0ac  ...>......0={{ww
	defb 041h,09ch,070h,0d8h,086h,083h,093h,09bh,0ffh,001h,07fh,0cfh,08fh,003h,08bh,0c0h	; b0bc  A.p.............
	defb 0ffh,0fch,07dh,0cbh,09bh,0b5h,0b5h,0c9h,0f3h,009h,0f1h,0e0h,0e4h,0cch,0cch,0ceh	; b0cc  ..}.............
	defb 02fh,007h,071h,078h,07ch,07ah,07dh,075h,081h,0e3h,0fdh,006h,078h,01fh,08fh,0c7h	; b0dc  /.qx|z}u....x...
	defb 0dch,09fh,03fh,05fh,01dh,000h,01ch,05ch,0dch,01dh,0ddh,0fdh,0ddh,09dh,000h,01ch	; b0ec  ..?_...\........
	defb 04dh,05ah,05ah,02ah,035h,09fh,08fh,0c0h,07bh,039h,039h,0bdh,0fch,0dch,01eh,000h	; b0fc  MZZ*5...{99.....
	defb 006h,0deh,082h,01eh,040h,005h,077h,083h,067h,010h,003h,005h,09bh,096h,083h,018h	; b10c  ....@.w.g.......
	defb 09bh,0c9h,0f9h,0cdh,0c8h,0c2h,00ah,0cah,089h,0c9h,0d1h,0f0h,0e5h,005h,0f1h,079h	; b11c  ...............y
	defb 071h,0ceh,0c0h,00eh,005h,0ceh,0e0h,076h,06eh,06fh,028h,010h,007h,01fh,0bfh,0e7h	; b12c  q......vno(.....
	defb 0e7h,00eh,0f8h,000h,005h,0ffh,0ffh,05dh,05dh,0beh,07fh,000h,000h,0ffh,0ffh,05ch	; b13c  .......]]......\
	defb 0dch,0beh,07fh,000h,080h,0ffh,0ffh,06ch,05ch,03ch,07eh,000h,080h,0ffh,0ffh,04eh	; b14c  .......l\<~....N
	defb 0efh,0efh,05fh,000h,0e0h,0ffh,0ffh,05eh,05eh,01eh,0bfh,000h,040h,0ffh,0ffh,033h	; b15c  .._....^^...@..3
	defb 039h,078h,0fch,000h,001h,0ffh,0ffh,09bh,09bh,0c6h,038h,000h,001h,0ffh,0ffh,089h	; b16c  9x........8.....
	defb 01ch,01ch,07eh,000h,000h,0ffh,003h,071h,0a1h,0a3h,027h,000h,048h,0ffh,0b6h,0c6h	; b17c  ..~....q..'.H...
	defb 0c6h,0e2h,0f0h,000h,000h,0f8h,0fdh,00bh,0ffh,002h,0feh,083h,003h,0feh,0feh,003h	; b18c  ................
	defb 0ffh,085h,05ah,09ah,016h,092h,052h,003h,0ffh,085h,09dh,0a1h,0adh,0a5h,09dh,003h	; b19c  ..Z...R.........
	defb 0ffh,085h,02eh,024h,0e4h,024h,024h,003h,0ffh,085h,0d9h,0fah,0abh,08ah,0aah,003h	; b1ac  ...$.$$.........
	defb 0ffh,085h,09eh,052h,0dch,054h,052h,003h,0ffh,097h,0efh,085h,0e5h,085h,0efh,0f9h	; b1bc  ...R.TR.........
	defb 0fdh,0ffh,0efh,04eh,05eh,05fh,0efh,036h,02ah,022h,022h,008h,0ddh,0ffh,0ffh,0fch	; b1cc  ...N^_.6*"".....
	defb 0fdh,004h,0ffh,084h,080h,0e0h,000h,0adh,006h,0ffh,082h,000h,062h,003h,0ffh,085h	; b1dc  ............b...
	defb 0b7h,047h,047h,000h,0dah,003h,0ffh,085h,02eh,0cah,04ah,020h,075h,003h,0ffh,085h	; b1ec  .GG.......J u...
	defb 092h,0d5h,0b7h,000h,0adh,003h,0ffh,085h,055h,06dh,055h,000h,018h,003h,0ffh,003h	; b1fc  ........UmU.....
	defb 07fh,082h,00fh,01fh,004h,0ffh,095h,001h,007h,0ffh,0ffh,080h,0f0h,01eh,007h,01fh	; b20c  ................
	defb 077h,037h,086h,0ceh,0ffh,0ffh,0e0h,03fh,000h,02eh,000h,0d1h,005h,0ffh,083h,095h	; b21c  w7.....?........
	defb 000h,06ah,005h,0ffh,090h,045h,000h,0bah,0ffh,0ffh,007h,0fch,0ffh,07fh,0ffh,001h	; b22c  .j...E..........
	defb 00fh,078h,0e0h,0f8h,0eeh,005h,000h,086h,0ffh,000h,0ffh,0ffh,000h,0ffh,005h,000h	; b23c  .x..............
	defb 009h,0ffh,004h,000h,002h,0ffh,081h,000h,000h	; b24c  .........

; ----------------------------------------------------------------------
; DATOS graficos_B255: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p04:60A6 (314
;   bytes)
;   0xb255..0xb38f  (314 bytes)
DATA_graficos_B255:
	defb 007h,000h,081h,003h,006h,000h,084h,03fh,0c0h,0c0h,03fh,00ah,000h,0a4h,001h,007h	; b255  .......?..?.....
	defb 01ch,071h,000h,001h,00fh,078h,0c3h,00fh,07fh,0f9h,03ch,0e1h,00fh,07fh,0f0h,0d7h	; b265  .q...x....<.....
	defb 02ch,0dbh,01fh,0e0h,0feh,0f4h,0f5h,073h,0b0h,038h,0f0h,0cdh,0b3h,06bh,085h,078h	; b275  ,......s.8...k.x
	defb 080h,00fh,006h,000h,0c5h,001h,003h,001h,003h,00eh,038h,073h,0cfh,09fh,03fh,0c7h	; b285  ..........8s..?.
	defb 01fh,07fh,0feh,0feh,0ffh,0a7h,04bh,0cbh,031h,04ch,0b0h,043h,00fh,0fch,0e0h,0c0h	; b295  ......K.1L.C....
	defb 007h,01fh,07ch,0e0h,001h,00fh,07fh,07fh,0feh,0c0h,000h,01fh,0fch,0ffh,0ffh,006h	; b2a5  ..|.............
	defb 00ch,009h,01bh,033h,026h,06ch,0cch,07dh,0fah,0fch,06eh,0deh,0dch,028h,081h,053h	; b2b5  ...3&l.}..n..(.S
	defb 087h,09ch,038h,061h,0c7h,08fh,01fh,083h,00fh,03fh,005h,0ffh,09ah,000h,001h,001h	; b2c5  ..8a.....?......
	defb 003h,002h,006h,006h,004h,09dh,03ch,03dh,07ah,07ah,0fch,0feh,0ffh,026h,04ch,088h	; b2d5  ......<=zz...&L.
	defb 018h,031h,0e3h,0e3h,0c7h,03fh,07fh,006h,0ffh,090h,005h,00dh,00dh,009h,009h,01bh	; b2e5  .1...?..........
	defb 01bh,013h,0ffh,0f7h,0cbh,0e9h,0a9h,0a9h,093h,052h,008h,013h,0cah,026h,066h,086h	; b2f5  .........R...&f.
	defb 0e6h,04eh,086h,0a6h,042h,013h,01bh,01bh,009h,009h,00dh,00dh,004h,052h,012h,0a2h	; b305  .N..B........R..
	defb 0a6h,0c7h,0cfh,0ffh,0ffh,004h,006h,006h,002h,003h,001h,001h,000h,0e5h,0dah,0e5h	; b315  ................
	defb 065h,072h,034h,0b0h,099h,0bfh,0ffh,010h,090h,088h,08ch,086h,0e3h,0dch,06ch,026h	; b325  er4...........l&
	defb 037h,01bh,009h,00ch,006h,011h,0e3h,045h,010h,08fh,0c0h,0e2h,071h,080h,0c0h,060h	; b335  7......E....q..`
	defb 038h,09ch,04fh,0c3h,03fh,003h,001h,006h,000h,09ch,03ch,09eh,0cfh,073h,038h,00eh	; b345  8.O.?.....<..s8.
	defb 003h,001h,03fh,079h,0f6h,0f1h,0f9h,078h,09ch,0c7h,038h,08eh,043h,06fh,00bh,0deh	; b355  ..?y...x..8.Co..
	defb 00fh,000h,071h,01ch,007h,001h,004h,000h,0a0h,0e0h,078h,01eh,0c3h,078h,00fh,001h	; b365  ..q.......x..x..
	defb 000h,09bh,0e5h,019h,081h,063h,01fh,0e0h,03eh,0fbh,0f6h,0fch,0f5h,0f3h,0f0h,0f8h	; b375  .....c..>.......
	defb 01eh,0fdh,0b3h,06bh,085h,078h,080h,000h,00bh,000h	; b385  ...k.x....

; ----------------------------------------------------------------------
; DATOS resto_B38F: lo apuntan con el banco puesto p04:6244 (0xB5CA); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:6244 (783 bytes)
;   0xb38f..0xb69e  (783 bytes)
DATA_resto_B38F:
	defb 003h,0a0h,085h,0f0h,0fbh,0fbh,0a0h,0b0h,003h,0a0h,083h,0f0h,0fbh,0fbh,006h,0a0h	; b38f  ................
	defb 084h,0b0h,0a0h,0a0h,0bah,004h,0a0h,084h,0b0h,0a0h,0fah,0b0h,003h,0a0h,002h,0f0h	; b39f  ................
	defb 002h,0a0h,081h,0b0h,004h,0a0h,089h,0b0h,0a0h,0b0h,0b0h,0a0h,0fah,0a0h,0a0h,0b0h	; b3af  ................
	defb 007h,0a0h,090h,0b0h,0a0h,0a0h,0fah,0b0h,0a0h,0a0h,0b0h,0a0h,0bah,0bah,0b0h,0b0h	; b3bf  ................
	defb 0a0h,0a0h,0b0h,004h,0a0h,08ch,0b0h,0a0h,0a0h,0b0h,0a0h,0b0h,0b0h,0a0h,0b0h,0f0h	; b3cf  ................
	defb 0a0h,0b0h,004h,0a0h,09dh,0b0h,0f0h,0f0h,0b0h,0b0h,0bah,0a0h,000h,0b0h,0bah,0b0h	; b3df  ................
	defb 0b0h,0a0h,0f0h,0a0h,0a0h,0f0h,000h,0a0h,0b0h,0a0h,0b0h,0a0h,0a0h,0b0h,0a0h,0a0h	; b3ef  ................
	defb 0b0h,0a0h,005h,0b0h,002h,0a0h,002h,0b0h,002h,0f0h,002h,0b0h,004h,0a0h,004h,0b0h	; b3ff  ................
	defb 004h,0a0h,081h,0b0h,008h,0a0h,081h,0b0h,008h,0a0h,003h,0b0h,005h,0a0h,002h,0b0h	; b40f  ................
	defb 007h,0a0h,081h,0b0h,005h,0a0h,081h,0b0h,007h,0a0h,083h,0b0h,0bbh,0b0h,003h,0a0h	; b41f  ................
	defb 082h,0b0h,0a0h,004h,0b0h,002h,0a0h,002h,0b0h,082h,0f0h,0b0h,004h,0a0h,002h,0b0h	; b42f  ................
	defb 003h,0f0h,002h,0a0h,081h,0b0h,003h,0e0h,003h,0f0h,003h,0a0h,084h,0b0h,0e0h,0b0h	; b43f  ................
	defb 0b0h,004h,0f0h,003h,0a0h,002h,0b0h,003h,0f0h,002h,0a0h,084h,0b0h,0a0h,0b0h,0b0h	; b44f  ................
	defb 003h,0f0h,085h,0a0h,0b0h,0a0h,0b0h,0b0h,004h,0f0h,084h,0b0h,0a0h,0b0h,0b0h,003h	; b45f  ................
	defb 0f0h,002h,0a0h,002h,0b0h,004h,0f0h,002h,0a0h,002h,0b0h,003h,0f0h,002h,0a0h,081h	; b46f  ................
	defb 0b0h,004h,0f0h,003h,0a0h,004h,0f0h,003h,0a0h,083h,0b0h,0f0h,0f0h,003h,0a0h,081h	; b47f  ................
	defb 0b0h,007h,0e0h,003h,0a0h,004h,0e0h,004h,0a0h,081h,0b0h,003h,0e0h,005h,0a0h,083h	; b48f  ................
	defb 0b0h,0e0h,0e0h,006h,0a0h,082h,0b0h,0e0h,006h,0a0h,082h,0b0h,0e0h,006h,0a0h,08bh	; b49f  ................
	defb 0b0h,0e0h,0a0h,0a0h,0aah,0aah,0a0h,0a0h,0b0h,0e0h,0f0h,004h,0a0h,088h,0b0h,0e0h	; b4af  ................
	defb 0e0h,0a0h,0a0h,0aah,0aah,0b0h,003h,0e0h,003h,0a0h,081h,0fah,004h,0e0h,003h,0a0h	; b4bf  ................
	defb 081h,0f0h,004h,0e0h,011h,0a0h,081h,0eah,005h,0a0h,002h,0f0h,081h,0e0h,006h,0a0h	; b4cf  ................
	defb 002h,0f0h,081h,0e0h,006h,0a0h,002h,0f0h,081h,0e0h,005h,0a0h,002h,0f0h,081h,0e0h	; b4df  ................
	defb 004h,0a0h,002h,0f0h,081h,0e0h,004h,0a0h,002h,0f0h,081h,0e0h,00ah,0a0h,002h,0f0h	; b4ef  ................
	defb 002h,0a0h,002h,0b0h,008h,0a0h,002h,0fah,00dh,0a0h,082h,0f0h,0e0h,007h,0a0h,082h	; b4ff  ................
	defb 0f0h,0e0h,007h,0a0h,081h,0f0h,006h,0a0h,082h,0f0h,0e0h,00eh,0a0h,002h,0fah,002h	; b50f  ................
	defb 0a0h,004h,0fah,007h,0a0h,003h,0fah,006h,0a0h,002h,0f0h,081h,0e0h,005h,0a0h,002h	; b51f  ................
	defb 0f0h,005h,0a0h,002h,0fah,003h,0a0h,004h,0fah,002h,0a0h,008h,0f0h,002h,0a0h,006h	; b52f  ................
	defb 0e0h,009h,000h,003h,0a0h,084h,0f0h,000h,000h,0f0h,000h,010h,0f0h,002h,0e0h,00bh	; b53f  ................
	defb 0f0h,088h,0a0h,0b0h,0a0h,0f0h,0e0h,0f0h,0e0h,0f0h,003h,0a0h,083h,0f0h,0e0h,0b0h	; b54f  ................
	defb 005h,0a0h,082h,0f0h,0fbh,006h,0a0h,083h,0b0h,0f0h,0b0h,00dh,0a0h,083h,0f0h,0a0h	; b55f  ................
	defb 0f0h,015h,0a0h,081h,0f0h,004h,0a0h,083h,0f0h,0a0h,0b0h,004h,0a0h,084h,0f0h,0fbh	; b56f  ................
	defb 0a0h,0b0h,00bh,0a0h,081h,0fah,008h,0a0h,081h,0b0h,007h,0a0h,081h,0b0h,018h,0a0h	; b57f  ................
	defb 004h,0b0h,002h,0a0h,082h,0b0h,0a0h,003h,0b0h,019h,0a0h,081h,0f0h,028h,0a0h,005h	; b58f  .............(..
	defb 0bah,081h,0fah,008h,0a0h,081h,0fah,007h,0a0h,087h,0fah,0bah,0fah,0fah,0bah,0fah	; b59f  ................
	defb 0fah,019h,0a0h,003h,0fah,002h,0a0h,084h,0f0h,0a0h,0a0h,0f0h,008h,0a0h,003h,0f0h	; b5af  ................
	defb 009h,0a0h,081h,0f0h,00bh,0a0h,081h,0f0h,006h,0a0h,000h,048h,038h,010h,00dh,000h	; b5bf  ...........H8...
	defb 000h,000h,000h,000h,060h,061h,05ch,05ch,091h,090h,000h,000h,000h,000h,000h,000h	; b5cf  ....`a\\........
	defb 000h,000h,063h,064h,065h,066h,067h,097h,096h,095h,094h,093h,000h,000h,000h,000h	; b5df  ..cdefg.........
	defb 068h,069h,06ah,06bh,06ch,06dh,010h,011h,09dh,09ch,09bh,09ah,099h,098h,000h,000h	; b5ef  hijklm..........
	defb 06eh,06fh,070h,071h,012h,013h,014h,015h,016h,017h,0a1h,0a0h,09fh,09eh,000h,072h	; b5ff  nopq...........r
	defb 073h,074h,075h,018h,019h,01ah,01bh,01ch,01dh,01eh,01fh,0a5h,0a4h,0a3h,0a2h,076h	; b60f  stu............v
	defb 077h,020h,021h,022h,023h,024h,025h,026h,027h,028h,029h,02ah,02bh,0a7h,0a6h,078h	; b61f  w !"#$%&'()*+..x
	defb 079h,02ch,02dh,02eh,02fh,030h,031h,032h,033h,034h,035h,036h,037h,0a9h,0a8h,07ah	; b62f  y,-./01234567..z
	defb 07bh,038h,039h,03ah,03bh,03ch,03dh,03eh,03fh,040h,041h,042h,043h,0abh,0aah,07ch	; b63f  {89:.<=>?@ABC..|
	defb 07dh,07eh,044h,045h,046h,047h,048h,049h,04ah,04bh,04ch,04dh,0aeh,0adh,0ach,000h	; b64f  }~DEFGHIJKLM....
	defb 07fh,080h,081h,04eh,04fh,050h,051h,052h,053h,054h,055h,0b1h,0b0h,0afh,000h,000h	; b65f  ...NOPQRSTU.....
	defb 082h,083h,084h,085h,056h,057h,058h,059h,05ah,05bh,0b5h,0b4h,0b3h,0b2h,000h,000h	; b66f  ....VWXYZ[......
	defb 000h,000h,086h,087h,088h,089h,08ah,0bah,0b9h,0b8h,0b7h,0b6h,000h,000h,000h,000h	; b67f  ................
	defb 000h,000h,000h,000h,000h,062h,05dh,05dh,092h,000h,000h,000h,000h,000h,000h	; b68f  .....b]].......

; ----------------------------------------------------------------------
; DATOS graficos_B69E: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p04:6731 (691
;   bytes)
;   0xb69e..0xb951  (691 bytes)
DATA_graficos_B69E:
	defb 008h,0ffh,085h,003h,007h,00fh,01fh,01fh,003h,03fh,082h,0ffh,0feh,004h,0ffh,084h	; b69e  .........?......
	defb 0feh,0ffh,07fh,07fh,006h,03fh,002h,00bh,09bh,009h,005h,004h,004h,002h,002h,0feh	; b6ae  .....?..........
	defb 0f9h,0f2h,0f4h,0e4h,0e8h,0c8h,04ah,07fh,09fh,04fh,02fh,027h,017h,013h,052h,0d0h	; b6be  ......J..O/'..R.
	defb 0d0h,090h,0a0h,0a0h,003h,040h,081h,0feh,007h,0fch,002h,0ffh,08eh,0dfh,0bfh,07fh	; b6ce  .....@..........
	defb 07fh,0ffh,0ffh,0c0h,0e0h,0e0h,0f0h,0f8h,0f8h,0fch,0fch,00ah,0ffh,006h,000h,002h	; b6de  ................
	defb 07fh,081h,0fdh,003h,0ffh,096h,057h,0f7h,0f7h,007h,0f9h,01dh,08ch,0c4h,0f6h,0fah	; b6ee  ......W.........
	defb 03fh,03fh,01fh,01fh,02fh,07bh,03fh,03fh,001h,001h,000h,000h,003h,0ffh,0b1h,0fch	; b6fe  ??../{??........
	defb 05ch,01ch,0bch,098h,048h,0d8h,003h,01ch,03ah,038h,03dh,0e1h,008h,063h,08fh,03eh	; b70e  \...H...:8=..c.>
	defb 080h,080h,0ffh,05fh,003h,001h,070h,038h,0feh,0fch,0fch,0fah,0f6h,0fch,0fch,0feh	; b71e  ..._..p8........
	defb 07fh,0f1h,0fbh,0e7h,09fh,01fh,03fh,03fh,0fch,0feh,0feh,07fh,0ffh,0ffh,03fh,08fh	; b72e  ......??......?.
	defb 006h,0ffh,002h,080h,003h,000h,005h,001h,089h,0c2h,0f7h,0fdh,0fch,0feh,0f8h,0dfh	; b73e  ................
	defb 0f7h,0f8h,003h,0fch,088h,03eh,01eh,00eh,0c3h,03fh,05fh,03eh,03eh,003h,07eh,086h	; b74e  .....>...?_>>.~.
	defb 07fh,0c0h,00fh,078h,057h,077h,003h,02fh,08bh,0e0h,01dh,0f9h,0fbh,0f3h,0c7h,097h	; b75e  ...xWw./........
	defb 027h,0fch,0f3h,0efh,005h,0ffh,002h,0f0h,09eh,0e8h,0d8h,0f0h,0f0h,0e8h,0f8h,0fah	; b76e  '...............
	defb 07ch,0fch,07ch,078h,078h,07ch,0fch,07fh,07fh,078h,0f1h,0c2h,083h,087h,00fh,0ffh	; b77e  |.|xx|...x......
	defb 033h,01fh,06fh,00fh,00fh,0a7h,07bh,006h,080h,002h,0c0h,002h,001h,005h,003h,083h	; b78e  3.o...{.........
	defb 005h,0f9h,0fch,003h,0ffh,0b8h,0f0h,0fch,0e0h,0e3h,031h,001h,089h,0e0h,0f0h,030h	; b79e  ..........1....0
	defb 00ch,03fh,03fh,00fh,001h,0ffh,080h,0ffh,0ffh,017h,016h,016h,00ah,00ah,008h,003h	; b7ae  .??.............
	defb 00fh,057h,047h,0a7h,0cfh,01fh,0c7h,0e3h,0f1h,0ffh,0ffh,0feh,0feh,0f8h,07fh,0beh	; b7be  .WG.............
	defb 0fch,0f0h,0f0h,0e0h,0e0h,0c8h,088h,008h,034h,07ch,07ch,0f8h,0f0h,080h,003h,0ffh	; b7ce  ........4||.....
	defb 002h,00fh,098h,01fh,03fh,03bh,07fh,07ch,071h,0bfh,0efh,03fh,01fh,0efh,0feh,05eh	; b7de  ....?..|q..?...^
	defb 0efh,0c0h,0c0h,080h,020h,040h,020h,0e0h,0f0h,007h,003h,005h,007h,096h,006h,0dch	; b7ee  .... @ .........
	defb 0ffh,0e5h,0b8h,071h,0e3h,0cfh,0cfh,002h,0a0h,003h,067h,0ceh,09ch,018h,039h,00fh	; b7fe  ...q......g...9.
	defb 07fh,0fch,079h,0fbh,003h,0ffh,0b9h,01fh,08fh,067h,0f3h,0f9h,0f5h,0f4h,0a2h,0f8h	; b80e  ..y......g......
	defb 0f8h,0fch,0fch,0feh,0feh,0fch,0f8h,0e0h,0c0h,085h,00dh,009h,021h,018h,01eh,0d4h	; b81e  ............!...
	defb 0b4h,0aah,0bah,0dah,0fbh,0f5h,067h,008h,0ffh,010h,030h,060h,020h,040h,003h,0e3h	; b82e  ......g...0` @..
	defb 040h,083h,087h,048h,0ffh,03ch,0c3h,03fh,01fh,085h,07fh,03fh,00fh,0a7h,007h,0f0h	; b83e  @..H.<.?...?....
	defb 004h,0f8h,084h,0e8h,0ech,0cch,007h,007h,00fh,08fh,0deh,0beh,0bch,0feh,07bh,0fbh	; b84e  ..............{.
	defb 0ffh,0ffh,033h,077h,0ffh,0f7h,0f7h,0efh,0f7h,009h,0ffh,0a9h,086h,0ceh,0ffh,0fdh	; b85e  ..3w............
	defb 0f9h,0f2h,0deh,0fch,070h,040h,000h,000h,001h,007h,00fh,05fh,007h,067h,003h,00fh	; b86e  ....p@....._.g..
	defb 01fh,01fh,03fh,03fh,01ch,0a0h,080h,0c7h,0c1h,0d8h,0fch,0fch,01fh,037h,043h,0e5h	; b87e  ..??.........7C.
	defb 0f7h,0f3h,0fbh,0f8h,0fdh,003h,0ffh,08dh,07fh,0ffh,0ffh,0efh,07dh,01fh,08fh,0c7h	; b88e  ............}...
	defb 0c3h,0e3h,0f9h,0f9h,0dch,007h,0fch,003h,007h,081h,003h,003h,001h,089h,000h,0ffh	; b89e  ................
	defb 0ffh,0f7h,0ffh,0bfh,0cfh,0e3h,03fh,003h,0ffh,0a2h,0efh,0ffh,0fdh,0f7h,060h,0ffh	; b8ae  ......?.......`.
	defb 0feh,0fch,0f0h,0a0h,0fch,0f8h,0e0h,0f8h,0f0h,0c0h,080h,000h,003h,0ffh,00fh,06fh	; b8be  ...............o
	defb 03fh,007h,000h,0c0h,0f8h,07fh,0ffh,07fh,01fh,00fh,01fh,00fh,003h,0ffh,002h,0fch	; b8ce  ?...............
	defb 088h,0f8h,0f9h,081h,003h,00fh,007h,0f8h,0fah,003h,0fbh,095h,0f3h,0f4h,0ech,06fh	; b8de  ...............o
	defb 037h,0d3h,0fbh,0fdh,0ffh,0fdh,05fh,0ddh,0edh,0f6h,0feh,0fbh,0fbh,0fch,07dh,0f8h	; b8ee  7....._.......}.
	defb 0f8h,003h,0f0h,002h,0e0h,081h,0c0h,008h,0ffh,083h,07eh,03fh,00fh,006h,0ffh,095h	; b8fe  ..........~?....
	defb 0f8h,0ffh,001h,0ffh,0ffh,000h,001h,0ffh,001h,0ffh,008h,01ah,07ah,0fah,0f4h,07fh	; b90e  ............z...
	defb 0e0h,03fh,001h,0c0h,0fch,004h,0ffh,081h,049h,003h,0ffh,002h,0afh,09ah,0fch,0ffh	; b91e  .?......I.......
	defb 024h,0ffh,0ffh,000h,0f5h,0f5h,0ffh,080h,0f0h,080h,001h,0fdh,0fdh,0feh,01fh,007h	; b92e  $...............
	defb 000h,0ffh,030h,048h,072h,0bch,07fh,01fh,006h,0ffh,083h,0f0h,0fch,0e0h,005h,0ffh	; b93e  ..0Hr...........
	defb 008h,000h,000h	; b94e

; ----------------------------------------------------------------------
; DATOS graficos_B951: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p04:673A (50
;   bytes)
;   0xb951..0xb983  (50 bytes)
DATA_graficos_B951:
	defb 0b0h,060h,00fh,054h,090h,0e8h,0f0h,0ffh,07fh,001h,007h,04fh,07fh,09fh,07fh,01eh	; b951  .`.T.......O....
	defb 07fh,0f8h,0fch,0f2h,0feh,0f9h,0feh,018h,03eh,000h,0f5h,08ah,00bh,017h,00fh,000h	; b961  ........>.......
	defb 0feh,0fch,0f9h,0f8h,0f8h,0fch,0fch,0ffh,03fh,03fh,09fh,01fh,05fh,03fh,03fh,0ffh	; b971  ........??.._??.
	defb 0fch,000h	; b981

; ----------------------------------------------------------------------
; DATOS resto_B983: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (768 bytes)
;   0xb983..0xbc83  (768 bytes)
DATA_resto_B983:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; b983  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,040h,040h,040h,040h,040h,040h,040h,040h	; b993  ........@@@@@@@@
	defb 0f4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f0h,0f0h,0f4h,0f4h,0f4h,0f4h,0f4h,0e4h	; b9a3  ................
	defb 0f0h,0f0h,0f4h,0f4h,0f4h,0f4h,0f4h,0e4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f4h,0f4h	; b9b3  ................
	defb 040h,040h,040h,040h,040h,040h,040h,040h,0ffh,0ffh,0f0h,0f0h,0f0h,0f0h,0ffh,0ffh	; b9c3  @@@@@@@@........
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h	; b9d3  ................
	defb 000h,000h,0f0h,0f0h,0f0h,0f0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0feh,0feh,0feh	; b9e3  ................
	defb 0f4h,0feh,0f0h,0f0h,0e0h,0e0h,0e0h,0e0h,040h,040h,040h,040h,040h,040h,040h,040h	; b9f3  ........@@@@@@@@
	defb 0f4h,0f4h,0e4h,0e4h,044h,044h,040h,040h,0e4h,0e4h,0e4h,0e4h,0e4h,040h,0f0h,0f0h	; ba03  ....DD@@.....@..
	defb 0e4h,0e4h,0e4h,040h,0f0h,0f0h,0b0h,0b0h,0f4h,0f4h,044h,040h,040h,040h,090h,0b0h	; ba13  ...@......D@@@..
	defb 040h,040h,040h,040h,040h,040h,040h,040h,0f0h,0feh,0f0h,0e0h,0e0h,0e0h,0f0h,0e0h	; ba23  @@@@@@@@........
	defb 0f0h,0f0h,0f0h,0f4h,0f0h,0f0h,0feh,0feh,000h,000h,000h,000h,000h,000h,0f0h,0f0h	; ba33  ................
	defb 0f0h,0e0h,0e0h,0f0h,0f0h,0f0h,0e0h,0e0h,0feh,0e0h,0e0h,0f0h,0e0h,0feh,0f0h,0f0h	; ba43  ................
	defb 0e0h,0f0h,0e0h,0f0h,0e0h,0e0h,0e0h,0e0h,040h,040h,040h,040h,040h,040h,040h,040h	; ba53  ........@@@@@@@@
	defb 040h,0f0h,0f0h,0a0h,0a0h,0b0h,0b0h,0f0h,0f0h,0a0h,0a0h,0b0h,0a0h,0b0h,0b0h,0b0h	; ba63  @...............
	defb 0b0h,0a0h,0b0h,0bbh,0bbh,0bah,0bah,0bbh,0b0h,0a0h,0a0h,0b0h,0b0h,0a0h,0a0h,0b0h	; ba73  ................
	defb 040h,040h,040h,040h,040h,040h,040h,040h,0e0h,0f0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h	; ba83  @@@@@@@@........
	defb 0ffh,0feh,0e0h,0f0h,0feh,0feh,0feh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; ba93  ................
	defb 0e0h,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0e0h,0f0h,0f0h,0f0h,0feh,0feh,0feh,0e0h,0e0h	; baa3  ................
	defb 0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,040h,040h,040h,040h,000h,0e0h,000h,000h	; bab3  ........@@@@....
	defb 0a0h,0b0h,0f0h,0a0h,0b0h,0b0h,0f0h,0f0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0f0h,0f0h	; bac3  ................
	defb 0bah,0bah,0bah,0bah,0bah,0a0h,0a0h,090h,0a0h,0a0h,0a0h,0a0h,090h,090h,090h,090h	; bad3  ................
	defb 040h,040h,040h,040h,040h,000h,000h,000h,0e0h,0e0h,0f0h,0e0h,0e0h,0e0h,0e0h,0e0h	; bae3  @@@@@...........
	defb 0feh,0feh,0feh,0feh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h,0e0h,0f0h,0e0h,0e0h	; baf3  ................
	defb 0f0h,0e0h,0f0h,0e0h,0f0h,0e0h,0f0h,0f0h,0e0h,0eeh,0e0h,0f0h,0e0h,0f0h,0f0h,0f0h	; bb03  ................
	defb 0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0ffh,0ffh,0ffh	; bb13  ................
	defb 0f0h,0f0h,0f0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h	; bb23  ................
	defb 0a0h,090h,090h,090h,090h,090h,090h,090h,090h,090h,0a0h,0b0h,0a0h,0f0h,0a0h,0f0h	; bb33  ................
	defb 040h,000h,040h,040h,040h,040h,040h,0f0h,0e0h,0e0h,0e0h,0e0h,0e0h,000h,0e0h,0e0h	; bb43  @.@@@@@.........
	defb 0f0h,0feh,0feh,0f0h,0f0h,0f0h,0e0h,0feh,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h	; bb53  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0ffh,0ffh	; bb63  ................
	defb 0f0h,0f0h,0ffh,0f0h,0f0h,0f0h,0f0h,0ffh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0ffh	; bb73  ................
	defb 0f0h,0e0h,0f0h,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h,0e0h,090h,090h,090h,090h,090h,090h	; bb83  ................
	defb 0a0h,090h,0b9h,0b9h,0b9h,0bah,0b9h,0bah,0a0h,0b0h,0b0h,0f0h,0b0h,0b0h,0b0h,0b0h	; bb93  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0ffh,0feh,0f0h,0ffh,0ffh,0f0h	; bba3  ................
	defb 0e0h,0e0h,0f0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; bbb3  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0ffh,0ffh,0f4h,0ffh,0feh,0feh,0feh,0feh	; bbc3  ................
	defb 0ffh,0ffh,0ffh,0f4h,0ffh,0feh,0f4h,0feh,0feh,0feh,0feh,0feh,0feh,0e0h,0e0h,0e0h	; bbd3  ................
	defb 0e0h,0e0h,0e0h,0e0h,040h,040h,000h,040h,090h,090h,090h,090h,040h,040h,040h,000h	; bbe3  ....@@.@....@@@.
	defb 0bah,0bah,0bah,0a9h,090h,000h,000h,000h,0b0h,0b0h,0a0h,090h,0e0h,0e0h,0e0h,0e0h	; bbf3  ................
	defb 0e0h,0f0h,0e0h,0f0h,0e0h,0e0h,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f4h,0ffh,0f4h,0f0h	; bc03  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0f4h,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h,0e0h,0e0h	; bc13  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0e0h,0e0h,0e0h,000h,000h,000h,000h,000h	; bc23  ................
	defb 0e0h,0e0h,000h,040h,000h,000h,040h,040h,000h,050h,000h,040h,040h,040h,040h,040h	; bc33  ...@..@@.P.@@@@@
	defb 040h,054h,050h,050h,040h,040h,044h,044h,044h,044h,054h,055h,000h,000h,040h,040h	; bc43  @TPP@@DDDDTU..@@
	defb 040h,044h,054h,055h,000h,040h,040h,040h,000h,040h,050h,050h,040h,040h,040h,040h	; bc53  @DTU.@@@.@PP@@@@
	defb 0e0h,0e0h,0e0h,000h,040h,040h,040h,040h,0feh,0feh,0eeh,000h,000h,000h,000h,000h	; bc63  ....@@@@........
	defb 0feh,0e0h,0e0h,000h,000h,000h,000h,000h,0f0h,0e0h,0f0h,0e0h,0e0h,0e0h,0e0h,0f0h	; bc73  ................

; ----------------------------------------------------------------------
; DATOS graficos_BC83: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p04:6743 (43
;   bytes)
;   0xbc83..0xbcae  (43 bytes)
DATA_graficos_BC83:
	defb 087h,090h,040h,0f4h,0f4h,0b4h,0a4h,0aah,003h,0a0h,004h,0a4h,002h,0bah,081h,0a0h	; bc83  ..@.............
	defb 005h,0a4h,002h,0bah,088h,0b0h,040h,0f4h,0f4h,0b4h,0a4h,0bah,0a0h,003h,0b0h,002h	; bc93  ......@.........
	defb 0b9h,082h,0b0h,0bbh,004h,0b0h,002h,0b9h,003h,0b0h,000h	; bca3  ...........

; ----------------------------------------------------------------------
; DATOS resto_BCAE: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (476 bytes)
;   0xbcae..0xbe8a  (476 bytes)
DATA_resto_BCAE:
	defb 008h,020h,00eh,018h,010h,011h,012h,013h,014h,015h,016h,030h,032h,0a2h,0a1h,0a0h	; bcae  . .........02...
	defb 096h,096h,0b0h,0b1h,0b2h,033h,022h,021h,023h,024h,025h,026h,017h,018h,019h,01ah	; bcbe  .....3"!#$%&....
	defb 01bh,031h,0a4h,0a3h,0a5h,0a6h,0a7h,0a8h,0b9h,0a9h,0b8h,0b7h,0b6h,0b5h,0b3h,0b4h	; bcce  .1..............
	defb 02eh,027h,028h,029h,01ch,01dh,01eh,01fh,020h,02fh,0aah,0abh,035h,042h,03bh,03ch	; bcde  .'().... /..5B.<
	defb 06ah,06bh,03fh,036h,043h,034h,0bbh,0bah,044h,045h,02bh,02ah,020h,020h,02ch,048h	; bcee  jk?6C4..DE+*  ,H
	defb 049h,02dh,020h,020h,038h,039h,03ah,04dh,06ch,06dh,04eh,04fh,03eh,03dh,020h,046h	; bcfe  I-  89:MlmNO>= F
	defb 07fh,080h,047h,020h,041h,037h,04ah,068h,069h,04bh,083h,084h,085h,04ch,056h,057h	; bd0e  ..G A7JhiK...LVW
	defb 05dh,05eh,051h,054h,05fh,089h,08ah,08bh,072h,073h,081h,040h,000h,052h,055h,06eh	; bd1e  ]^QT_...rs.@.RUn
	defb 06fh,053h,086h,087h,088h,05bh,05ah,058h,060h,061h,062h,063h,08ch,08dh,08eh,08fh	; bd2e  oS...[ZX`abc....
	defb 074h,075h,082h,000h,07bh,07ch,07dh,070h,071h,07eh,078h,079h,07ah,050h,05ch,059h	; bd3e  tu..{|}pq~xyzP\Y
	defb 064h,065h,066h,067h,090h,076h,077h,091h,092h,094h,093h,095h,010h,011h,013h,01eh	; bd4e  defg.vw.........
	defb 029h,014h,039h,07bh,08ah,0a7h,051h,052h,053h,054h,055h,056h,041h,085h,086h,0a2h	; bd5e  ).9{..QRSTUVA...
	defb 0a1h,0a0h,090h,098h,01fh,016h,015h,020h,021h,022h,034h,076h,077h,078h,04bh,04ah	; bd6e  ....... !"4vwxKJ
	defb 045h,044h,043h,042h,07ch,07dh,08fh,099h,09eh,09fh,093h,094h,017h,018h,028h,031h	; bd7e  EDCB|}........(1
	defb 032h,02ah,070h,071h,06eh,06fh,079h,0aah,046h,047h,048h,0abh,07eh,07fh,066h,09ah	; bd8e  2*pqnoy.FGH.~.f.
	defb 095h,09bh,09ch,0a6h,02bh,02ch,02dh,02eh,037h,038h,067h,068h,069h,06ah,06bh,0afh	; bd9e  ....+,-.78ghijk.
	defb 0adh,03eh,03dh,0ach,080h,081h,065h,0a5h,097h,0a3h,0a4h,057h,023h,025h,02fh,033h	; bdae  .>=...e....W#%/3
	defb 059h,03bh,06ch,06dh,05eh,05fh,04eh,0b0h,0aeh,0a9h,03ch,03dh,062h,03ah,0a8h,08bh	; bdbe  Y.lm^_N...<=b:..
	defb 08ch,08dh,08eh,058h,01ch,01ah,019h,026h,035h,05ah,05bh,05ch,05dh,0b2h,04dh,04ch	; bdce  ...X...&5Z[\].ML
	defb 061h,060h,0b6h,03fh,063h,084h,07ah,087h,064h,088h,01dh,089h,050h,030h,012h,027h	; bdde  a`.?c.z.d...P0.'
	defb 01bh,036h,072h,073h,074h,075h,04fh,0b1h,049h,0b3h,0b4h,0b5h,040h,082h,083h,096h	; bdee  .6rstuO.I...@...
	defb 09dh,092h,024h,091h,040h,060h,008h,008h,000h,040h,041h,042h,043h,000h,000h,000h	; bdfe  ..$.@`...@ABC...
	defb 000h,044h,066h,079h,0a1h,000h,000h,000h,000h,04bh,08eh,09ah,086h,000h,000h,000h	; be0e  .Dfy.....K......
	defb 000h,09bh,088h,08ah,08bh,087h,000h,000h,045h,04ch,0a8h,081h,09fh,089h,000h,000h	; be1e  ........EL......
	defb 046h,04dh,05ah,080h,06eh,0a3h,0a4h,000h,047h,04eh,05ch,05eh,065h,083h,063h,049h	; be2e  FMZ.n...GN\^e.cI
	defb 048h,059h,058h,057h,05bh,056h,055h,04ah,040h,060h,008h,008h,04fh,051h,09eh,09ch	; be3e  HYXW[VUJ@`..OQ..
	defb 09dh,07bh,052h,053h,050h,08fh,090h,091h,092h,095h,094h,054h,097h,098h,099h,085h	; be4e  .{RSP......T....
	defb 093h,0a2h,096h,07fh,05fh,067h,068h,06bh,07ch,073h,06fh,072h,060h,06ch,069h,076h	; be5e  ...._ghk|sor`liv
	defb 07dh,077h,074h,071h,061h,06dh,075h,08dh,070h,084h,06ah,062h,000h,000h,078h,08ch	; be6e  }wtqamu.p.jb..x.
	defb 07eh,07ah,0a0h,000h,000h,000h,0a6h,0a5h,0a7h,064h,05dh,082h	; be7e  ~z.......d].

; ----------------------------------------------------------------------
; DATOS graficos_BE8A: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4DA4 (270
;   bytes)
;   0xbe8a..0xbf98  (270 bytes)
DATA_graficos_BE8A:
	defb 010h,000h,082h,09fh,01fh,008h,00fh,081h,027h,015h,000h,082h,01fh,03fh,003h,01fh	; be8a  ........'....?..
	defb 08bh,00fh,00eh,00eh,01ch,01dh,01dh,01ch,01eh,00eh,00fh,00eh,011h,000h,085h,001h	; be9a  ................
	defb 007h,01fh,03fh,03fh,003h,07fh,082h,03fh,01fh,004h,00fh,083h,01fh,0e8h,0f0h,009h	; beaa  ..??...?........
	defb 0e0h,003h,0f0h,002h,0f8h,010h,000h,00ch,0ffh,084h,01fh,0efh,0efh,0f3h,00dh,000h	; beba  ................
	defb 002h,080h,081h,0c0h,005h,000h,003h,002h,081h,006h,003h,004h,081h,002h,013h,000h	; beca  ................
	defb 002h,0f9h,0abh,07dh,07ch,07ch,03eh,03eh,03ah,0beh,0bah,092h,000h,000h,0e0h,0f4h	; beda  ...}||>>:.......
	defb 0fch,0e0h,0f0h,0f0h,0f8h,0f8h,0ech,0f4h,074h,054h,024h,024h,028h,018h,010h,000h	; beea  ........tT$$(...
	defb 080h,0f0h,0e8h,0c8h,098h,000h,000h,079h,000h,000h,065h,009h,019h,003h,003h,007h	; befa  .......y..e.....
	defb 00ch,080h,004h,000h,002h,006h,08eh,00ch,000h,00ch,006h,007h,007h,003h,000h,000h	; bf0a  ................
	defb 080h,080h,040h,040h,0c0h,010h,000h,088h,063h,0e3h,0f3h,0f2h,0d2h,0f3h,0b3h,033h	; bf1a  ..@@....c......3
	defb 008h,000h,002h,0c0h,086h,0e6h,0e0h,0a3h,047h,027h,0a6h,008h,000h,004h,000h,08dh	; bf2a  ........G'......
	defb 003h,007h,00fh,00fh,01dh,01ah,010h,010h,013h,01eh,00eh,00ch,06eh,004h,000h,086h	; bf3a  ............n...
	defb 0ech,0d8h,030h,020h,066h,040h,003h,000h,085h,006h,018h,007h,00fh,00fh,004h,01fh	; bf4a  ..0 f@..........
	defb 002h,01eh,005h,00eh,002h,006h,081h,000h,004h,080h,004h,000h,089h,00fh,01eh,03ch	; bf5a  ...............<
	defb 078h,061h,043h,00eh,004h,004h,008h,006h,002h,007h,004h,003h,089h,0d8h,060h,004h	; bf6a  xaC...........`.
	defb 008h,012h,000h,072h,000h,066h,005h,000h,084h,09dh,080h,000h,001h,004h,003h,002h	; bf7a  ...r.f..........
	defb 001h,009h,000h,087h,001h,007h,000h,000h,01fh,0ffh,0feh,008h,000h,000h	; bf8a  ..............

; ----------------------------------------------------------------------
; DATOS resto_BF98: lo apuntan con el banco puesto p06:AE92 (0xBF98); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p06:AE92 (24 bytes)
;   0xbf98..0xbfb0  (24 bytes)
DATA_resto_BF98:
	defb 034h,028h,000h,000h,025h,000h,000h,000h,025h,02eh,000h,000h,024h,000h,000h,000h	; bf98  4(..%...%...$...
	defb 0ffh,006h,003h,0abh,0a0h,028h,0adh,000h	; bfa8  .....(..

; ----------------------------------------------------------------------
; DATOS relleno_ff: 80 bytes a 0xFF hasta el final del banco: relleno; lo leen
;   nadie (80 bytes)
;   0xbfb0..0xc000  (80 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff0  ................
