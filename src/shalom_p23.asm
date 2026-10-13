; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 23 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS mensaje_22_9FF0_cola: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba (sigue del banco 22); lo
;   leen p00:4E76 (12 bytes)
;   0xa000..0xa00c  (12 bytes)
DATA_mensaje_22_9FF0_cola:
	defb 053h,058h,040h,068h,0feh,074h,088h,04fh,003h,054h,03ch,0ffh	; a000  SX@h.t.O.T<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A00C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (61
;   bytes)
;   0xa00c..0xa049  (61 bytes)
DATA_mensaje_23_A00C:
	defb 0fch,03bh,040h,054h,04fh,000h,070h,099h,077h,04fh,003h,057h,006h,000h,049h,058h	; a00c  ..@TO.p.wO.W..IX
	defb 074h,088h,06ch,0feh,044h,047h,04ah,06dh,045h,066h,000h,049h,053h,04ch,003h,045h	; a01c  t.l.DGJmEf.ISL.E
	defb 0a6h,052h,04fh,06dh,04fh,003h,03ch,0feh,0f8h,03bh,044h,063h,0a6h,000h,040h,067h	; a02c  .ROmO.<...Dc..@g
	defb 045h,003h,053h,042h,000h,04fh,04ch,045h,0a6h,04fh,065h,03ch,0ffh	; a03c  E.SB.OLE.Oe<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A049: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (25
;   bytes)
;   0xa049..0xa062  (25 bytes)
DATA_mensaje_23_A049:
	defb 0f8h,03bh,049h,069h,052h,003h,000h,04bh,049h,003h,053h,045h,003h,000h,052h,003h	; a049  ..IiR..KI.SE..R.
	defb 046h,068h,04eh,003h,0a6h,053h,001h,03ch,0ffh	; a059  FhN..S.<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A062: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0xa062..0xa094  (50 bytes)
DATA_mensaje_23_A062:
	defb 0fbh,03bh,0efh,045h,003h,047h,06ch,000h,0ceh,05ch,003h,05eh,04bh,0a5h,042h,03ch	; a062  ...E.Gl..\.^K.B<
	defb 0feh,0fch,03bh,053h,003h,042h,063h,0a6h,052h,002h,03ch,0feh,0fbh,03bh,06bh,045h	; a072  ...S.Bc.R.<...kE
	defb 066h,054h,041h,06bh,006h,000h,0c9h,045h,000h,045h,06dh,045h,003h,043h,052h,065h	; a082  fTAk...E.EmE.CRe
	defb 03ch,0ffh	; a092

; ----------------------------------------------------------------------
; DATOS mensaje_23_A094: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (35
;   bytes)
;   0xa094..0xa0b7  (35 bytes)
DATA_mensaje_23_A094:
	defb 0fch,03bh,04ah,0a6h,046h,000h,06bh,04fh,04bh,04fh,000h,074h,088h,06ch,0feh,045h	; a094  ..J.F.kOKO.t.l.E
	defb 04bh,052h,062h,066h,043h,054h,041h,045h,041h,002h,03ch,0feh,0f8h,03bh,041h,041h	; a0a4  KRbfCTAEA.<...AA
	defb 065h,03ch,0ffh	; a0b4

; ----------------------------------------------------------------------
; DATOS mensaje_23_A0B7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (9
;   bytes)
;   0xa0b7..0xa0c0  (9 bytes)
DATA_mensaje_23_A0B7:
	defb 0fch,03bh,04dh,01dh,058h,001h,03ch,0fah,00dh	; a0b7  ..M.X.<..

; ----------------------------------------------------------------------
; DATOS mensaje_23_A0C0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0xa0c0..0xa0db  (27 bytes)
DATA_mensaje_23_A0C0:
	defb 0f8h,03bh,074h,088h,045h,003h,000h,054h,047h,050h,0a3h,000h,04bh,049h,003h,053h	; a0c0  ..t.E..TGP..KI.S
	defb 045h,003h,0feh,052h,003h,046h,06dh,058h,042h,03ch,0ffh	; a0d0  E..R.FmXB<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A0DB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0xa0db..0xa0e7  (12 bytes)
DATA_mensaje_23_A0DB:
	defb 0fch,03bh,074h,088h,06ch,000h,045h,043h,04ch,065h,03ch,0ffh	; a0db  ..t.l.ECLe<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A0E7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0xa0e7..0xa0f6  (15 bytes)
DATA_mensaje_23_A0E7:
	defb 0fbh,03bh,046h,069h,041h,055h,000h,046h,069h,052h,041h,068h,06bh,03ch,0ffh	; a0e7  ..FiAU.FiRAhk<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A0F6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0xa0f6..0xa106  (16 bytes)
DATA_mensaje_23_A0F6:
	defb 0fbh,03bh,049h,06dh,054h,062h,058h,000h,053h,069h,054h,041h,06bh,065h,03ch,0ffh	; a0f6  ..ImTbX.SiTAke<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A106: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0xa106..0xa121  (27 bytes)
DATA_mensaje_23_A106:
	defb 0fbh,03bh,04eh,042h,045h,001h,000h,049h,069h,052h,003h,000h,0efh,045h,003h,047h	; a106  ..NBE..IiR...E.G
	defb 045h,003h,0feh,06bh,045h,0a6h,04fh,06bh,001h,03ch,0ffh	; a116  E..kE.Ok.<.

; ----------------------------------------------------------------------
; DATOS mensajes_23_A121: 5 palabras: los mensajes de la sala 491 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (10 bytes)
;   0xa121..0xa12b  (10 bytes)
DATA_mensajes_23_A121:
	defb 02bh,0a1h	; a121
	defb 037h,0a1h	; a123
	defb 061h,0a1h	; a125
	defb 078h,074h	; a127
	defb 06ah,074h	; a129

; ----------------------------------------------------------------------
; DATOS mensaje_23_A12B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0xa12b..0xa137  (12 bytes)
DATA_mensaje_23_A12B:
	defb 0fbh,03bh,089h,09dh,08eh,020h,058h,065h,042h,057h,03ch,0ffh	; a12b  ..... XeBW<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A137: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (42
;   bytes)
;   0xa137..0xa161  (42 bytes)
DATA_mensaje_23_A137:
	defb 0fbh,03bh,0b3h,000h,04fh,044h,04bh,04fh,000h,05eh,062h,058h,045h,003h,000h,0e4h	; a137  ....ODKO.^bXE...
	defb 0a6h,052h,041h,04fh,0feh,058h,045h,04bh,066h,006h,000h,052h,003h,062h,000h,0c9h	; a147  .RAO.XEKf..R.b..
	defb 055h,0b0h,042h,058h,045h,04bh,066h,002h,03ch,0ffh	; a157  U.BXEKf.<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A161: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0xa161..0xa176  (21 bytes)
DATA_mensaje_23_A161:
	defb 0fbh,03bh,057h,06dh,058h,04fh,061h,055h,000h,053h,0a6h,052h,044h,046h,05eh,04bh	; a161  ..WmXOaU.S.RDF^K
	defb 0a5h,042h,03ch,0fah,005h	; a171

; ----------------------------------------------------------------------
; DATOS mensajes_23_A176: 8 palabras: los mensajes de la sala 513 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (16 bytes)
;   0xa176..0xa186  (16 bytes)
DATA_mensajes_23_A176:
	defb 086h,0a1h	; a176
	defb 0d6h,0a1h	; a178
	defb 0f8h,0a1h	; a17a
	defb 01ch,0a2h	; a17c
	defb 03bh,0a2h	; a17e
	defb 05fh,0a2h	; a180
	defb 087h,0a2h	; a182
	defb 0cbh,074h	; a184

; ----------------------------------------------------------------------
; DATOS mensaje_23_A186: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (80
;   bytes)
;   0xa186..0xa1d6  (80 bytes)
DATA_mensaje_23_A186:
	defb 0f6h,08dh,079h,096h,020h,03bh,075h,003h,089h,089h,089h,001h,000h,074h,099h,059h	; a186  ..y. .u......t.Y
	defb 000h,079h,003h,077h,003h,04ah,05eh,058h,0feh,04bh,062h,05ch,003h,000h,08dh,079h	; a196  .y.w.J^X.Kb\...y
	defb 096h,020h,006h,049h,049h,059h,000h,074h,099h,058h,0feh,041h,058h,0deh,04fh,003h	; a1a6  . .IIY.t.X.AX.O.
	defb 001h,000h,049h,049h,055h,000h,0d2h,0a6h,04fh,062h,058h,059h,0feh,04ch,05ch,003h	; a1b6  ..IIU...ObXY.L\.
	defb 052h,000h,053h,048h,052h,000h,054h,047h,054h,068h,058h,04fh,003h,001h,03ch,0ffh	; a1c6  R.SHR.TGThXO..<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A1D6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0xa1d6..0xa1f8  (34 bytes)
DATA_mensaje_23_A1D6:
	defb 0fbh,03bh,0b8h,06ah,0a6h,04fh,0a6h,052h,000h,05eh,06bh,067h,059h,0feh,05eh,0a6h	; a1d6  ...j.O.R.^kgY.^.
	defb 047h,066h,052h,003h,000h,0c9h,062h,000h,0b8h,043h,063h,04bh,054h,041h,06bh,001h	; a1e6  GfR...b..CcKTAk.
	defb 03ch,0ffh	; a1f6

; ----------------------------------------------------------------------
; DATOS mensaje_23_A1F8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0xa1f8..0xa21c  (36 bytes)
DATA_mensaje_23_A1F8:
	defb 0fch,03bh,04eh,042h,04fh,003h,001h,000h,09ah,020h,07eh,077h,06ch,000h,051h,048h	; a1f8  ..NBO.... ~wl.QH
	defb 052h,05fh,065h,042h,03ch,0fbh,03bh,041h,041h,000h,045h,06dh,045h,003h,043h,057h	; a208  R_eB<..AA.EmE.CW
	defb 001h,03ch,0fah,002h	; a218

; ----------------------------------------------------------------------
; DATOS mensaje_23_A21C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (31
;   bytes)
;   0xa21c..0xa23b  (31 bytes)
DATA_mensaje_23_A21C:
	defb 0fbh,03bh,0c9h,045h,000h,046h,05fh,058h,000h,0bch,041h,000h,053h,049h,06ah,057h	; a21c  ...E.F_X..A.SIjW
	defb 03ch,0feh,0fch,03bh,074h,099h,059h,000h,0bch,047h,054h,041h,001h,03ch,0ffh	; a22c  <...t.Y..GTA.<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A23B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0xa23b..0xa25f  (36 bytes)
DATA_mensaje_23_A23B:
	defb 0fbh,03bh,05eh,06bh,067h,059h,000h,041h,058h,000h,045h,05ch,003h,001h,000h,040h	; a23b  ..^kgY.AX.E\...@
	defb 04bh,062h,053h,059h,041h,043h,046h,045h,003h,000h,054h,045h,003h,069h,052h,068h	; a24b  KbSYACFE..TE.iRh
	defb 06bh,001h,03ch,0ffh	; a25b

; ----------------------------------------------------------------------
; DATOS mensaje_23_A25F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (40
;   bytes)
;   0xa25f..0xa287  (40 bytes)
DATA_mensaje_23_A25F:
	defb 0f8h,03bh,0c6h,059h,000h,08eh,097h,070h,052h,003h,04ch,03ch,0feh,0fch,03bh,0cah	; a25f  ...Y...pR.L<....
	defb 059h,000h,040h,053h,04fh,003h,006h,074h,099h,058h,000h,040h,053h,055h,0feh,051h	; a26f  Y.@SO..t.X.@SU.Q
	defb 041h,052h,046h,054h,0a6h,001h,03ch,0ffh	; a27f  ARFT..<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A287: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0xa287..0xa295  (14 bytes)
DATA_mensaje_23_A287:
	defb 0fbh,03bh,062h,042h,000h,0b0h,0a6h,052h,068h,06bh,065h,001h,03ch,0ffh	; a287  ..bB...Rhke.<.

; ----------------------------------------------------------------------
; DATOS mensajes_23_A295: 17 palabras: los mensajes de la sala 514 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; se solapan 2
;   bloques: (mensajes_23_A29B A29B-A2B7); lo leen p00:4E76 (34 bytes)
;   0xa295..0xa2b7  (34 bytes)
DATA_mensajes_23_A295:
	defb 0f5h,073h	; a295
	defb 0e4h,073h	; a297
	defb 0bch,073h	; a299
	defb 0b7h,0a2h	; a29b
	defb 0f2h,0a2h	; a29d
	defb 01fh,0a3h	; a29f
	defb 02fh,0a3h	; a2a1
	defb 066h,0a3h	; a2a3
	defb 09eh,0a3h	; a2a5
	defb 0b1h,0a3h	; a2a7
	defb 0c4h,0a3h	; a2a9
	defb 0d6h,0a3h	; a2ab
	defb 046h,0a4h	; a2ad
	defb 052h,0a4h	; a2af
	defb 076h,0a4h	; a2b1
	defb 093h,073h	; a2b3
	defb 084h,073h	; a2b5

; ----------------------------------------------------------------------
; DATOS mensaje_23_A2B7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (59
;   bytes)
;   0xa2b7..0xa2f2  (59 bytes)
DATA_mensaje_23_A2B7:
	defb 0f8h,03bh,049h,049h,055h,000h,013h,051h,058h,000h,04bh,054h,045h,003h,000h,040h	; a2b7  ..IIU..QX.KTE..@
	defb 067h,05eh,04ch,006h,053h,003h,069h,045h,000h,011h,051h,000h,054h,053h,003h,053h	; a2c7  g^L.S.iE..Q.TS.S
	defb 000h,078h,080h,054h,049h,053h,059h,0feh,0c8h,041h,05eh,04dh,06dh,006h,000h,04ch	; a2d7  .x.TISY..A^Mm..L
	defb 05ch,003h,052h,000h,053h,003h,042h,04eh,003h,03ch,0ffh	; a2e7  \.R.S.BN.<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A2F2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (45
;   bytes)
;   0xa2f2..0xa31f  (45 bytes)
DATA_mensaje_23_A2F2:
	defb 0f8h,03bh,053h,003h,042h,052h,003h,04bh,04fh,002h,000h,0c6h,045h,066h,058h,091h	; a2f2  ..S.BR.KO...EfX.
	defb 0afh,07dh,020h,07bh,003h,002h,03ch,0fch,03bh,044h,0b7h,0e4h,050h,04fh,003h,048h	; a302  .} {..<..D..PO.H
	defb 000h,041h,04fh,04fh,003h,041h,052h,044h,046h,05eh,04ch,03ch,0ffh	; a312  .AOO.ARDF^L<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A31F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0xa31f..0xa32f  (16 bytes)
DATA_mensaje_23_A31F:
	defb 0fbh,03bh,0c9h,045h,058h,000h,089h,004h,0afh,077h,05fh,04fh,041h,057h,03ch,0ffh	; a31f  ...EX....w_OAW<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A32F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (55
;   bytes)
;   0xa32f..0xa366  (55 bytes)
DATA_mensaje_23_A32F:
	defb 0fbh,03bh,096h,08ch,003h,098h,055h,000h,06eh,042h,05fh,058h,000h,04ah,050h,06fh	; a32f  ......U.nB_X.JPo
	defb 053h,0feh,045h,041h,052h,040h,068h,06bh,006h,000h,042h,05fh,052h,003h,000h,053h	; a33f  S.EAR@hk..B_R..S
	defb 069h,068h,0feh,04fh,05ch,003h,062h,058h,045h,003h,000h,04fh,047h,04ah,06dh,000h	; a34f  ih.O\.bXE..OGJm.
	defb 0d2h,0a6h,052h,068h,06bh,03ch,0ffh	; a35f

; ----------------------------------------------------------------------
; DATOS mensaje_23_A366: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (56
;   bytes)
;   0xa366..0xa39e  (56 bytes)
DATA_mensaje_23_A366:
	defb 0fbh,03bh,04fh,05ch,003h,062h,058h,045h,003h,000h,04fh,047h,04ah,06dh,006h,000h	; a366  ..O\.bXE..OGJm..
	defb 051h,05eh,067h,0feh,04ah,050h,045h,003h,000h,044h,044h,041h,006h,0fdh,06eh,04ah	; a376  Q^g.JPE..DDA..nJ
	defb 050h,000h,044h,044h,045h,069h,06fh,0a6h,052h,049h,053h,04bh,003h,0a3h,054h,041h	; a386  P.DDEio.RISK..TA
	defb 002h,03ch,0fch,03bh,00ah,00ah,03ch,0ffh	; a396  .<....<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A39E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0xa39e..0xa3b1  (19 bytes)
DATA_mensaje_23_A39E:
	defb 0fbh,03bh,046h,06dh,052h,003h,000h,051h,047h,066h,069h,04fh,000h,04eh,003h,042h	; a39e  ..FmR..QGfiO.N.B
	defb 065h,03ch,0ffh	; a3ae

; ----------------------------------------------------------------------
; DATOS mensaje_23_A3B1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0xa3b1..0xa3c4  (19 bytes)
DATA_mensaje_23_A3B1:
	defb 0fbh,03bh,049h,069h,059h,000h,046h,06dh,058h,000h,04bh,0a3h,050h,05dh,049h,065h	; a3b1  ..IiY.FmX.K.P]Ie
	defb 001h,03ch,0ffh	; a3c1

; ----------------------------------------------------------------------
; DATOS mensaje_23_A3C4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0xa3c4..0xa3d6  (18 bytes)
DATA_mensaje_23_A3C4:
	defb 0fbh,03bh,059h,067h,051h,048h,052h,040h,0a6h,052h,000h,0b1h,069h,054h,041h,06bh	; a3c4  ..YgQHR@.R..iTAk
	defb 03ch,0ffh	; a3d4

; ----------------------------------------------------------------------
; DATOS mensaje_23_A3D6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (112
;   bytes)
;   0xa3d6..0xa446  (112 bytes)
DATA_mensaje_23_A3D6:
	defb 0fbh,03bh,04bh,0a3h,050h,05dh,049h,045h,003h,000h,059h,067h,051h,048h,052h,040h	; a3d6  ..K.P]IE..YgQHR@
	defb 068h,006h,0feh,04bh,0a3h,050h,05dh,049h,059h,003h,068h,005h,04bh,0a3h,0a6h,050h	; a3e6  h..K.P]IY.h.K..P
	defb 0a5h,049h,059h,003h,068h,006h,0fdh,049h,069h,059h,000h,04eh,058h,000h,046h,003h	; a3f6  .IY.h..IiY.NX.F.
	defb 0a3h,047h,058h,000h,041h,05fh,052h,003h,0feh,06eh,046h,06dh,050h,0a5h,042h,04bh	; a406  .GX.A_R..nFmP.BK
	defb 052h,000h,045h,04fh,047h,054h,0a6h,04fh,067h,04dh,04ch,003h,097h,096h,0afh,077h	; a416  R.EOGT.OgML....w
	defb 07ch,054h,04ah,041h,06fh,0a6h,052h,049h,053h,045h,04bh,066h,002h,03ch,0fdh,0fch	; a426  |TJAo.RISEKf.<..
	defb 03bh,04ch,049h,003h,047h,000h,090h,097h,045h,003h,000h,040h,068h,054h,03ch,0ffh	; a436  .LI.G...E..@hT<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A446: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0xa446..0xa452  (12 bytes)
DATA_mensaje_23_A446:
	defb 0fbh,03bh,049h,069h,059h,000h,07ah,075h,084h,065h,03ch,0ffh	; a446  ..IiY.zu.e<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A452: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0xa452..0xa476  (36 bytes)
DATA_mensaje_23_A452:
	defb 0fbh,03bh,070h,07bh,003h,058h,000h,05ah,066h,046h,04fh,003h,06bh,006h,000h,04bh	; a452  ..p{.X.ZfFO.k..K
	defb 06dh,04eh,003h,042h,062h,0feh,05eh,0a6h,05bh,004h,04fh,051h,055h,000h,054h,0a6h	; a462  mN.Bb.^.[.OQU.T.
	defb 052h,068h,03ch,0ffh	; a472

; ----------------------------------------------------------------------
; DATOS mensaje_23_A476: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (71
;   bytes)
;   0xa476..0xa4bd  (71 bytes)
DATA_mensaje_23_A476:
	defb 0fbh,03bh,04bh,06dh,04eh,003h,042h,000h,051h,05eh,067h,000h,0f0h,045h,003h,000h	; a476  ..KmN.B.Q^g..E..
	defb 05eh,0a6h,05bh,004h,04fh,051h,006h,049h,069h,059h,000h,06eh,0f0h,06ch,000h,0b4h	; a486  ^.[.OQ.IiY.n.l..
	defb 041h,052h,000h,0bah,0dah,053h,0feh,04dh,0a6h,04bh,054h,04ah,041h,06fh,0a6h,052h	; a496  AR...S.M.KTJAo.R
	defb 041h,042h,049h,053h,045h,054h,002h,03ch,0feh,0fch,03bh,04ch,048h,003h,01dh,000h	; a4a6  ABISET.<...LH...
	defb 049h,04bh,003h,051h,048h,03ch,0ffh	; a4b6

; ----------------------------------------------------------------------
; DATOS mensajes_23_A4BD: 20 palabras: los mensajes de la sala 529 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (40 bytes)
;   0xa4bd..0xa4e5  (40 bytes)
DATA_mensajes_23_A4BD:
	defb 0e5h,0a4h	; a4bd
	defb 01dh,0a5h	; a4bf
	defb 04ah,0a6h	; a4c1
	defb 059h,0a6h	; a4c3
	defb 07eh,0a6h	; a4c5
	defb 0a5h,0a6h	; a4c7
	defb 0a6h,0a6h	; a4c9
	defb 0d5h,0a6h	; a4cb
	defb 0eah,0a6h	; a4cd
	defb 00bh,0a7h	; a4cf
	defb 05bh,0a7h	; a4d1
	defb 044h,0aah	; a4d3
	defb 07ch,0aah	; a4d5
	defb 003h,0abh	; a4d7
	defb 0ech,0abh	; a4d9
	defb 05eh,0ach	; a4db
	defb 072h,0ach	; a4dd
	defb 081h,0ach	; a4df
	defb 09bh,074h	; a4e1
	defb 084h,073h	; a4e3

; ----------------------------------------------------------------------
; DATOS mensaje_23_A4E5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (56
;   bytes)
;   0xa4e5..0xa51d  (56 bytes)
DATA_mensaje_23_A4E5:
	defb 0fbh,03bh,049h,049h,059h,000h,053h,003h,049h,054h,058h,002h,03ch,0feh,0fch,03bh	; a4e5  ..IIY.S.ITX.<...
	defb 06bh,045h,066h,06dh,03ch,0feh,03bh,04fh,003h,069h,045h,000h,041h,068h,058h,01dh	; a4f5  kEfm<..O.iE.AhX.
	defb 002h,03ch,0feh,0fch,03bh,07bh,0afh,001h,000h,0c9h,045h,0bah,058h,000h,048h,059h	; a505  .<...{....E.X.HY
	defb 041h,045h,003h,04ch,068h,03ch,0fah,019h	; a515  AE.Lh<..

; ----------------------------------------------------------------------
; DATOS mensaje_23_A51D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (301
;   bytes)
;   0xa51d..0xa64a  (301 bytes)
DATA_mensaje_23_A51D:
	defb 0f8h,03bh,0c6h,059h,000h,0f7h,0f8h,006h,000h,0c6h,058h,000h,057h,060h,067h,06ch	; a51d  ...Y......X.W`gl
	defb 0feh,04bh,003h,0a3h,05eh,04ch,068h,058h,059h,000h,04fh,003h,069h,04fh,003h,002h	; a52d  .K..^LhXY.O.iO..
	defb 03ch,0feh,0fch,03bh,0f7h,0f8h,002h,000h,040h,058h,0ech,054h,054h,041h,0b2h,06ch	; a53d  <.......@X.TTA.l
	defb 0e4h,051h,053h,0feh,0c8h,06bh,069h,052h,041h,068h,000h,0c1h,0d0h,000h,0f7h,0f8h	; a54d  .QS..kiRAh......
	defb 045h,03ch,0fdh,0f8h,03bh,044h,0b6h,059h,000h,0f7h,0fch,045h,006h,051h,041h,055h	; a55d  E<...D.Y...E.QAU
	defb 0feh,046h,044h,0a6h,04fh,045h,03ch,0feh,0fch,03bh,079h,003h,077h,003h,058h,0e1h	; a56d  .FD.OE<...y.w.X.
	defb 06bh,069h,068h,059h,003h,04bh,0a5h,06ch,046h,046h,04fh,041h,03ch,0fdh,0f8h,03bh	; a57d  kihY.K.lFFOA<...
	defb 0c9h,06ch,000h,04fh,06bh,048h,04fh,049h,053h,06ch,001h,001h,000h,0c6h,045h,003h	; a58d  .l.OkHOISl....E.
	defb 0feh,079h,003h,077h,003h,04ah,05eh,055h,000h,051h,045h,06bh,04ah,069h,04fh,000h	; a59d  .y.w.J^U.QEkJiO.
	defb 018h,0bah,0c1h,0c5h,058h,0feh,011h,0bah,053h,000h,046h,04ah,05eh,000h,0edh,0a6h	; a5ad  ....X...S.FJ^...
	defb 052h,041h,068h,058h,045h,001h,002h,03ch,0fch,03bh,0c9h,001h,002h,03ch,0fdh,0f8h	; a5bd  RAhXE..<.....<..
	defb 03bh,08ah,0afh,08ah,0afh,08ah,006h,06eh,053h,06dh,052h,003h,000h,05ah,055h,0d2h	; a5cd  .......nSmR..ZU.
	defb 068h,0feh,054h,051h,058h,000h,08fh,07ch,003h,090h,07bh,06fh,053h,059h,000h,0f7h	; a5dd  h.TQX..|..{oSY..
	defb 0fch,0feh,046h,04ah,05eh,058h,000h,049h,053h,04bh,003h,0a3h,001h,03ch,0fdh,0fch	; a5ed  ..FJ^X.ISK...<..
	defb 03bh,04bh,051h,069h,041h,054h,001h,000h,074h,099h,059h,000h,06eh,08fh,07ch,003h	; a5fd  .KQiAT..t.Y.n.|.
	defb 090h,07bh,06fh,0feh,054h,06dh,045h,0e4h,0a6h,052h,054h,041h,006h,000h,04fh,04fh	; a60d  .{o.TmE..RTA..OO
	defb 003h,000h,06eh,071h,09dh,076h,09dh,0feh,07fh,090h,07bh,06fh,054h,066h,000h,0d9h	; a61d  ..nq.v....{oTf..
	defb 0dah,00ah,00ah,03ch,0fdh,0f8h,03bh,053h,003h,050h,066h,052h,003h,062h,000h,065h	; a62d  ...<...S.PfR.b.e
	defb 041h,06bh,001h,000h,045h,047h,049h,003h,04dh,041h,001h,03ch,0ffh	; a63d  Ak..EGI.MA.<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A64A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0xa64a..0xa659  (15 bytes)
DATA_mensaje_23_A64A:
	defb 0f8h,03bh,0e7h,046h,052h,059h,000h,045h,043h,04ah,06dh,04eh,003h,03ch,0ffh	; a64a  ...FRY.ECJmN.<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A659: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (37
;   bytes)
;   0xa659..0xa67e  (37 bytes)
DATA_mensaje_23_A659:
	defb 0fbh,03bh,0c9h,05ah,003h,0a3h,047h,057h,06dh,062h,000h,0e7h,046h,052h,041h,068h	; a659  ...Z..GWmb..FRAh
	defb 0ddh,0feh,049h,06dh,054h,055h,000h,0d4h,046h,047h,054h,0a6h,052h,04bh,05eh,0a6h	; a669  ..ImTU..FGT.RK^.
	defb 04fh,058h,057h,03ch,0ffh	; a679

; ----------------------------------------------------------------------
; DATOS mensaje_23_A67E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (39
;   bytes)
;   0xa67e..0xa6a5  (39 bytes)
DATA_mensaje_23_A67E:
	defb 0fbh,03bh,054h,045h,003h,041h,0eah,0ddh,058h,04fh,061h,000h,0b2h,053h,000h,04bh	; a67e  ..TE.A..XOa..S.K
	defb 003h,061h,06dh,053h,045h,003h,0feh,053h,003h,042h,045h,000h,04bh,052h,04bh,05eh	; a68e  .amSE..S.BE.KRK^
	defb 0a6h,052h,041h,068h,06bh,03ch,0ffh	; a69e

; ----------------------------------------------------------------------
; DATOS mensaje_23_A6A5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (1
;   bytes)
;   0xa6a5..0xa6a6  (1 bytes)
DATA_mensaje_23_A6A5:
	defb 0ffh	; a6a5

; ----------------------------------------------------------------------
; DATOS mensaje_23_A6A6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (47
;   bytes)
;   0xa6a6..0xa6d5  (47 bytes)
DATA_mensaje_23_A6A6:
	defb 0fch,03bh,0f7h,0fbh,040h,05bh,003h,054h,041h,045h,066h,000h,059h,054h,069h,052h	; a6a6  ....@[.TAEf.YTiR
	defb 06ah,065h,03ch,0fbh,03bh,0f7h,0fch,001h,03ch,0feh,0f8h,03bh,0c6h,058h,000h,065h	; a6b6  je<.....<....X.e
	defb 042h,04bh,003h,0a4h,051h,06ch,0b8h,04dh,052h,063h,06ah,042h,03ch,0fah,01ah	; a6c6  BK..Ql.MRcjB<..

; ----------------------------------------------------------------------
; DATOS mensaje_23_A6D5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0xa6d5..0xa6ea  (21 bytes)
DATA_mensaje_23_A6D5:
	defb 0f8h,03bh,0f7h,0fch,000h,05eh,041h,0a6h,04fh,045h,001h,03ch,0feh,0fch,03bh,05eh	; a6d5  .....^A.OE.<...^
	defb 041h,0a6h,04fh,03ch,0ffh	; a6e5

; ----------------------------------------------------------------------
; DATOS mensaje_23_A6EA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0xa6ea..0xa70b  (33 bytes)
DATA_mensaje_23_A6EA:
	defb 0fbh,03bh,002h,000h,0cdh,046h,0efh,045h,003h,000h,05ch,06dh,057h,006h,000h,00ah	; a6ea  .....F.E..\mW...
	defb 00ah,001h,0feh,070h,098h,08bh,0a7h,08ch,003h,0afh,083h,04fh,003h,06bh,001h,0fah	; a6fa  ...p.......O.k..
	defb 01bh	; a70a

; ----------------------------------------------------------------------
; DATOS mensaje_23_A70B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (80
;   bytes)
;   0xa70b..0xa75b  (80 bytes)
DATA_mensaje_23_A70B:
	defb 073h,071h,080h,005h,071h,020h,005h,073h,098h,005h,08ah,004h,020h,00ah,00ah,08ch	; a70b  sq..q .s.... ...
	defb 098h,08bh,004h,002h,0feh,06eh,04fh,04ch,048h,052h,06fh,002h,000h,0f7h,0fch,000h	; a71b  .....nOLHRo.....
	defb 040h,054h,04fh,045h,003h,0feh,04eh,06dh,054h,000h,053h,05ah,003h,0efh,06ch,000h	; a72b  @TOE..NmT.SZ..l.
	defb 04bh,052h,068h,058h,002h,03ch,0feh,0fch,03bh,050h,045h,003h,042h,001h,03ch,0fdh	; a73b  KRhX.<...PE.B.<.
	defb 0fbh,03bh,04bh,003h,0a3h,040h,000h,0f7h,0f8h,045h,003h,00ah,00ah,002h,03ch,0ffh	; a74b  ..K..@...E....<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_A75B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (745
;   bytes)
;   0xa75b..0xaa44  (745 bytes)
DATA_mensaje_23_A75B:
	defb 0fbh,03bh,06eh,04fh,04ch,048h,052h,06fh,053h,041h,042h,058h,059h,000h,062h,04bh	; a75b  ..nOLHRoSABXY.bK
	defb 045h,04bh,052h,0feh,0f7h,0f8h,058h,000h,05dh,06dh,0f0h,045h,066h,058h,0feh,091h	; a76b  EKR...X.]m.EfX..
	defb 0afh,07dh,020h,07bh,003h,000h,04bh,003h,0a3h,054h,041h,058h,045h,04bh,066h,002h	; a77b  .} {..K..TAXEKf.
	defb 03ch,0fdh,0fch,03bh,042h,060h,006h,000h,074h,099h,062h,000h,04eh,069h,06ch,000h	; a78b  <...B`..t.b.Nil.
	defb 045h,06dh,045h,003h,043h,052h,0feh,041h,04fh,06dh,04fh,003h,006h,000h,04ah,0a6h	; a79b  EmE.CR.AOmO...J.
	defb 046h,045h,066h,000h,06eh,0e7h,046h,052h,059h,0feh,045h,043h,04ah,06dh,06fh,053h	; a7ab  FEf.n.FRY.ECJmoS
	defb 000h,049h,003h,042h,049h,003h,04bh,052h,041h,068h,047h,04dh,055h,0fdh,074h,099h	; a7bb  .I.BI.KRAhGMU.t.
	defb 06ch,000h,045h,05ch,003h,055h,000h,04fh,04fh,046h,051h,048h,068h,04fh,003h,048h	; a7cb  l.E\.U.OOFQHhO.H
	defb 052h,003h,0feh,049h,06ah,04eh,042h,053h,000h,04bh,054h,041h,06dh,04fh,003h,03ch	; a7db  R..IjNBS.KTAmO.<
	defb 0feh,0fbh,03bh,0c9h,045h,000h,09bh,078h,045h,003h,000h,040h,067h,04eh,042h,057h	; a7eb  ....E..xE..@gNBW
	defb 03ch,0fdh,0fch,03bh,044h,041h,001h,000h,0f7h,0f8h,001h,000h,044h,0b6h,058h,0feh	; a7fb  <...DA......D.X.
	defb 05dh,06dh,053h,058h,0b7h,0e4h,050h,06ch,000h,044h,04bh,043h,052h,047h,069h,001h	; a80b  ]mSX..Pl.DKCRGi.
	defb 03ch,0feh,0f8h,03bh,090h,090h,00ah,00ah,001h,03ch,0feh,0fbh,03bh,0f7h,0f8h,040h	; a81b  <........<.....@
	defb 054h,04fh,059h,0bch,041h,0bah,04bh,003h,0a3h,054h,041h,006h,0fdh,04eh,06dh,054h	; a82b  TOY.A.K..TA..NmT
	defb 0b7h,045h,003h,04ch,068h,058h,006h,000h,04fh,003h,045h,066h,000h,040h,054h,04fh	; a83b  .E.LhX..O.Ef.@TO
	defb 058h,0feh,05dh,06dh,0f0h,06ch,0b8h,04dh,052h,001h,03ch,0feh,0f8h,03bh,00ah,00ah	; a84b  X.]m.l.MR.<.....
	defb 0c6h,059h,000h,0ech,055h,04fh,041h,06dh,04bh,003h,0a3h,03ch,0feh,0fch,03bh,002h	; a85b  .Y..UOAmK..<....
	defb 03ch,0fdh,0f8h,03bh,0b3h,045h,066h,000h,012h,010h,010h,057h,06dh,05dh,053h,003h	; a86b  <....Ef....Wm]S.
	defb 000h,0ebh,005h,000h,0c6h,058h,0feh,011h,0bah,060h,04ch,049h,045h,003h,000h,079h	; a87b  .....X...`LIE..y
	defb 003h,077h,003h,058h,0b0h,041h,053h,041h,042h,0feh,0bch,0c1h,055h,065h,067h,000h	; a88b  .w.X.ASAB...Ueg.
	defb 05ah,003h,0a5h,042h,0b7h,055h,000h,04ah,04dh,066h,069h,052h,0feh,04bh,05eh,0a6h	; a89b  Z..B.U.JMfiR.K^.
	defb 04fh,006h,000h,0bch,0c1h,045h,003h,000h,0c8h,042h,055h,059h,00ah,00ah,0fdh,060h	; a8ab  O....E...BUY...`
	defb 04ch,049h,058h,000h,0e8h,06ch,000h,04fh,04ch,048h,04fh,048h,069h,059h,003h,0feh	; a8bb  LIX..l.OLHOHiY..
	defb 0c6h,058h,000h,04fh,05eh,04bh,041h,06ch,000h,065h,049h,04dh,005h,053h,006h,0feh	; a8cb  .X.O^KAl.eIM.S..
	defb 0c6h,059h,000h,060h,04ch,049h,045h,003h,000h,04fh,04ch,045h,068h,054h,066h,053h	; a8db  .Y.`LIE..OLEhTfS
	defb 0dbh,041h,0feh,0bch,0c1h,058h,0c8h,042h,053h,042h,067h,055h,04bh,04fh,006h,0fdh	; a8eb  .A...X.BSBgUKO..
	defb 04bh,045h,04bh,000h,0bch,0c1h,059h,000h,042h,066h,046h,003h,0a6h,04fh,06dh,04bh	; a8fb  KEK...Y.BfF..OmK
	defb 003h,0a3h,001h,0feh,060h,04ch,049h,059h,000h,049h,06ah,04ah,069h,052h,04bh,05eh	; a90b  ....`LIY.IjJiRK^
	defb 0a6h,04fh,006h,04eh,04bh,052h,0feh,0c6h,058h,04fh,05eh,04bh,041h,053h,000h,0d2h	; a91b  .O.NKR..XO^KAS..
	defb 069h,045h,06bh,067h,055h,000h,0bch,0c1h,058h,0feh,0f0h,045h,003h,000h,0c6h,058h	; a92b  iEkgU...X..E...X
	defb 0deh,055h,0d2h,0a6h,04fh,001h,0fdh,0c6h,058h,000h,04fh,05eh,04bh,041h,059h,000h	; a93b  .U..O...X.O^KAY.
	defb 04ch,05fh,045h,06ch,000h,042h,04bh,054h,041h,0feh,012h,010h,010h,057h,06dh,062h	; a94b  L_El.BKTA....Wmb
	defb 058h,0ddh,000h,093h,08fh,058h,0deh,06ch,0feh,04fh,04fh,003h,065h,0a6h,052h,044h	; a95b  X....X.l.OO.e.RD
	defb 068h,006h,000h,04eh,069h,059h,000h,0c6h,058h,0b2h,045h,003h,0feh,0bch,0c1h,058h	; a96b  h..NiY..X.E....X
	defb 09bh,07ah,003h,055h,065h,067h,000h,0ech,054h,054h,041h,0b2h,055h,0fdh,04ah,069h	; a97b  .z.Ueg..TTA.U.Ji
	defb 052h,041h,068h,045h,066h,054h,06dh,04bh,003h,0a3h,006h,000h,0c6h,058h,0b2h,053h	; a98b  RAhEfTmK.....X.S
	defb 0feh,049h,058h,0deh,055h,000h,05ah,04eh,060h,0bch,0c1h,053h,06ch,000h,046h,067h	; a99b  .IX.U.ZN`..Sl.Fg
	defb 059h,054h,04ch,0feh,049h,053h,045h,003h,052h,003h,046h,069h,059h,003h,000h,0c6h	; a9ab  YTL.ISE.R.FiY...
	defb 058h,0b2h,059h,000h,051h,050h,055h,0fdh,045h,043h,067h,000h,0c6h,058h,000h,04fh	; a9bb  X.Y.QPU.ECg..X.O
	defb 05eh,04bh,041h,062h,000h,0dbh,041h,058h,049h,04ch,0feh,049h,053h,054h,047h,000h	; a9cb  ^KAb..AXIL.ISTG.
	defb 0f5h,0c0h,055h,000h,0dch,047h,04bh,003h,0a3h,06ah,042h,006h,0feh,04fh,003h,045h	; a9db  ..U..GK..jB..O.E
	defb 066h,000h,0ech,055h,04fh,041h,053h,0c8h,0a6h,04fh,06dh,04bh,003h,0a3h,03ch,0feh	; a9eb  f..UOAS..OmK..<.
	defb 0fch,03bh,00ah,00ah,03ch,0fdh,0f8h,03bh,04bh,045h,04bh,000h,04eh,06dh,054h,000h	; a9fb  ....<...KEK.NmT.
	defb 050h,045h,066h,059h,000h,04fh,003h,069h,062h,0feh,0e4h,0a6h,052h,044h,066h,06dh	; aa0b  PEfY.O.ib...RDfm
	defb 006h,000h,0f7h,0fch,053h,052h,0feh,090h,097h,04fh,003h,06ah,042h,006h,000h,062h	; aa1b  ....SR...O.jB..b
	defb 042h,000h,041h,041h,006h,0feh,045h,043h,0a6h,052h,044h,047h,069h,006h,03ch,0fdh	; aa2b  B.AA..EC.RDGi.<.
	defb 0fch,03bh,04bh,045h,04bh,00ah,00ah,03ch,0ffh	; aa3b  ..KEK..<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AA44: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (56
;   bytes)
;   0xaa44..0xaa7c  (56 bytes)
DATA_mensaje_23_AA44:
	defb 0f8h,03bh,049h,049h,055h,000h,041h,068h,053h,000h,0c6h,058h,0deh,058h,0bch,0c1h	; aa44  ..IIU.AhS..X.X..
	defb 045h,003h,0feh,044h,0b6h,04fh,050h,06ch,000h,049h,06ah,04eh,042h,053h,04ch,068h	; aa54  E..D.OPl.IjNBSLh
	defb 04eh,003h,001h,0feh,059h,063h,047h,000h,049h,049h,045h,066h,000h,052h,003h,052h	; aa64  N...YcG.IIEf.R.R
	defb 0dch,047h,045h,003h,041h,041h,03ch,0ffh	; aa74  .GE.AA<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AA7C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (135
;   bytes)
;   0xaa7c..0xab03  (135 bytes)
DATA_mensaje_23_AA7C:
	defb 0fch,03bh,0f7h,0f8h,001h,000h,0b3h,000h,044h,0b6h,06ch,000h,04fh,04ch,048h,052h	; aa7c  ........D.l.OLHR
	defb 0feh,063h,068h,045h,066h,054h,001h,03ch,0fdh,0f6h,082h,0a8h,074h,07ch,03bh,052h	; aa8c  .chEfT.<....t|.R
	defb 003h,059h,000h,064h,042h,0b2h,067h,04fh,003h,051h,058h,000h,07bh,003h,0adh,081h	; aa9c  .Y.dB.gO.QX.{...
	defb 06ch,0feh,059h,04bh,003h,061h,068h,006h,000h,0f5h,055h,000h,041h,05eh,04ch,000h	; aaac  l.YK.ah...U.A^L.
	defb 04dh,003h,06dh,058h,042h,058h,0feh,0f2h,065h,001h,000h,0f0h,040h,068h,054h,066h	; aabc  M.mXBX..e...@hTf
	defb 059h,003h,000h,0c6h,058h,000h,057h,045h,003h,041h,06ch,0feh,044h,046h,046h,0d2h	; aacc  Y...X.WE.Al.DFF.
	defb 069h,0d3h,04ah,041h,001h,0fdh,049h,049h,055h,041h,068h,000h,06ah,042h,059h,003h	; aadc  i.JA..IIUAh.jBY.
	defb 058h,0b2h,045h,066h,000h,0bch,0c1h,06ch,0feh,044h,053h,067h,058h,04eh,003h,046h	; aaec  X.Ef...l.DSgXN.F
	defb 0d3h,04ah,041h,001h,03ch,0fah,01ch	; aafc

; ----------------------------------------------------------------------
; DATOS mensaje_23_AB03: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (233
;   bytes)
;   0xab03..0xabec  (233 bytes)
DATA_mensaje_23_AB03:
	defb 0f8h,03bh,0f7h,0fch,005h,082h,0a8h,074h,07ch,000h,040h,067h,045h,003h,053h,042h	; ab03  .......t|.@gE.SB
	defb 006h,0feh,049h,069h,052h,003h,000h,0c6h,062h,0f5h,0c0h,052h,003h,000h,0f0h,063h	; ab13  ..IiR...b..R...c
	defb 04ch,066h,045h,055h,0feh,047h,066h,04ch,049h,053h,045h,003h,000h,052h,003h,046h	; ab23  LfEU.GfLISE..R.F
	defb 068h,006h,0fdh,04eh,042h,04eh,042h,000h,06bh,04ch,069h,068h,053h,049h,04bh,003h	; ab33  h..NBNB.kLihSIK.
	defb 0a3h,0a6h,04fh,006h,0feh,079h,003h,077h,003h,058h,0e1h,06bh,069h,068h,000h,059h	; ab43  ..O..y.w.X.kih.Y
	defb 003h,04bh,0a5h,04fh,003h,045h,003h,000h,072h,01dh,090h,00ah,0fdh,053h,003h,049h	; ab53  .K.O.E..r....S.I
	defb 045h,058h,063h,05eh,058h,0deh,058h,065h,042h,04bh,003h,0a3h,006h,000h,04fh,003h	; ab63  EXc^X.XeBK....O.
	defb 045h,003h,0feh,0f7h,0fch,059h,000h,011h,053h,003h,000h,079h,003h,077h,003h,06ch	; ab73  E....Y..S..y.w.l
	defb 0b8h,058h,045h,003h,04ch,0feh,04bh,003h,0a3h,06ah,042h,006h,04eh,04bh,052h,000h	; ab83  .XE.L.K..jB.NKR.
	defb 04ah,041h,049h,003h,058h,04fh,04fh,045h,041h,058h,0feh,05bh,003h,04fh,041h,059h	; ab93  JAI.XOOEAX.[.OAY
	defb 00ah,00ah,0d5h,058h,0deh,04bh,003h,0a3h,001h,0fdh,0f7h,0fch,065h,000h,079h,003h	; aba3  ...X.K......e.y.
	defb 077h,003h,06ch,000h,040h,054h,053h,003h,0a6h,052h,059h,0feh,054h,066h,06dh,04eh	; abb3  w.l.@TS..RY.TfmN
	defb 003h,006h,000h,04bh,003h,0a4h,042h,04bh,003h,0a4h,042h,000h,0b7h,06ch,051h,048h	; abc3  ...K..BK..B..lQH
	defb 052h,0feh,04fh,04fh,045h,042h,058h,04fh,003h,006h,000h,052h,003h,059h,000h,04ah	; abd3  R.OOEBXO...R.Y.J
	defb 066h,059h,003h,04bh,003h,0a3h,03ch,0fah,01dh	; abe3  fY.K..<..

; ----------------------------------------------------------------------
; DATOS mensaje_23_ABEC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensaje_23_AC5E AC5E-AC72); lo leen p00:4E76 (134 bytes)
;   0xabec..0xac72  (134 bytes)
DATA_mensaje_23_ABEC:
	defb 0fbh,03bh,0dch,0a6h,052h,04bh,05eh,0a6h,04fh,06bh,057h,006h,000h,018h,0bah,0c1h	; abec  ....RK^.OkW.....
	defb 0c5h,058h,0feh,0deh,058h,011h,0bah,059h,000h,041h,06bh,059h,003h,000h,079h,003h	; abfc  .X..X..Y.AkY..y.
	defb 077h,003h,058h,0feh,046h,003h,04dh,041h,04bh,0a3h,000h,04fh,003h,0a6h,04fh,06bh	; ac0c  w.X.F.MAK..O..Ok
	defb 048h,057h,03ch,0fdh,0fch,03bh,079h,003h,077h,003h,058h,063h,051h,000h,051h,05fh	; ac1c  HW<...y.w.XcQ.Q_
	defb 062h,054h,041h,0bah,05eh,052h,003h,062h,0feh,0c1h,0c5h,055h,04bh,052h,041h,04fh	; ac2c  bTA.^R.b...UKRAO
	defb 058h,045h,006h,000h,064h,068h,04dh,054h,041h,03ch,0feh,0f6h,082h,0a8h,074h,07ch	; ac3c  XE..dhMTA<....t|
	defb 03bh,0f7h,0fch,053h,003h,058h,000h,052h,003h,059h,0c6h,059h,049h,069h,052h,003h	; ac4c  ...S.X.R.Y.YIiR.
	defb 03ch,0fah,0fch,03bh,040h,067h,045h,003h,053h,042h,03ch,0feh,0fbh,03bh,040h,067h	; ac5c  <...@gE.SB<...@g
	defb 045h,003h,053h,042h,03ch,0ffh	; ac6c

; ----------------------------------------------------------------------
; DATOS mensaje_23_AC72: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0xac72..0xac81  (15 bytes)
DATA_mensaje_23_AC72:
	defb 0fbh,03bh,0f7h,0f8h,059h,000h,062h,042h,0ech,06dh,04fh,003h,06bh,03ch,0ffh	; ac72  ....Y.bB.mO.k<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AC81: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0xac81..0xac96  (21 bytes)
DATA_mensaje_23_AC81:
	defb 0f6h,082h,0a8h,074h,07ch,03bh,0f7h,0fch,053h,003h,058h,000h,05eh,04fh,04dh,05eh	; ac81  ...t|...S.X.^OM^
	defb 04bh,04fh,054h,03ch,0ffh	; ac91

; ----------------------------------------------------------------------
; DATOS mensajes_23_AC96: 16 palabras: los mensajes de la sala 551 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (32 bytes)
;   0xac96..0xacb6  (32 bytes)
DATA_mensajes_23_AC96:
	defb 0b6h,0ach	; ac96
	defb 0d6h,0adh	; ac98
	defb 03fh,0aeh	; ac9a
	defb 067h,0aeh	; ac9c
	defb 0b0h,0aeh	; ac9e
	defb 0deh,0aeh	; aca0
	defb 018h,0afh	; aca2
	defb 026h,0afh	; aca4
	defb 04fh,0afh	; aca6
	defb 079h,0afh	; aca8
	defb 097h,0afh	; acaa
	defb 0deh,0afh	; acac
	defb 0b6h,0b1h	; acae
	defb 0c6h,0b1h	; acb0
	defb 078h,074h	; acb2
	defb 06ah,074h	; acb4

; ----------------------------------------------------------------------
; DATOS mensaje_23_ACB6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (288
;   bytes)
;   0xacb6..0xadd6  (288 bytes)
DATA_mensaje_23_ACB6:
	defb 0fch,03bh,076h,08fh,059h,000h,080h,0aah,098h,07bh,020h,04fh,003h,057h,006h,000h	; acb6  ..v.Y....{ O.W..
	defb 04bh,003h,051h,059h,0feh,0c8h,041h,055h,047h,041h,049h,053h,04fh,003h,048h,053h	; acc6  K.QY..AUGAISO.HS
	defb 003h,000h,076h,08fh,055h,0feh,051h,04fh,043h,052h,044h,045h,054h,048h,069h,059h	; acd6  ..v.U.QOCRDETHiY
	defb 003h,054h,066h,054h,041h,049h,053h,045h,003h,0feh,040h,068h,06dh,04fh,003h,03ch	; ace6  .TfTAISE..@hmO.<
	defb 0fdh,0f8h,03bh,040h,054h,04fh,059h,000h,0f7h,0fch,04ah,06dh,006h,000h,04eh,04bh	; acf6  ...@TOY...Jm..NK
	defb 052h,0feh,0f7h,0fbh,04ah,06dh,057h,006h,000h,072h,09bh,07ah,059h,000h,045h,057h	; ad06  R...JmW..r.zY.EW
	defb 045h,003h,057h,0feh,046h,041h,052h,041h,05eh,04ch,006h,0c6h,055h,000h,051h,04fh	; ad16  E.W.FARA^L..U.QO
	defb 043h,068h,049h,053h,053h,059h,0feh,0c9h,052h,003h,04ch,045h,002h,03ch,0fdh,0fch	; ad26  ChISSY..R.LE.<..
	defb 03bh,053h,003h,042h,04eh,003h,000h,0b7h,06ch,04fh,04bh,045h,055h,000h,046h,041h	; ad36  .S.BN...lOKEU.FA
	defb 052h,05dh,04bh,041h,006h,04bh,003h,051h,059h,000h,07fh,003h,09dh,082h,045h,003h	; ad46  R]KA.K.QY.....E.
	defb 000h,054h,047h,054h,0a6h,04fh,03ch,0feh,0f8h,03bh,00ah,00ah,001h,03ch,0fdh,0fch	; ad56  .TGT.O<......<..
	defb 03bh,079h,003h,077h,003h,058h,000h,044h,047h,0a6h,04fh,000h,018h,0bah,0c1h,0c5h	; ad66  .y.w.X.DG.O.....
	defb 058h,011h,0bah,058h,0feh,049h,042h,048h,003h,046h,06ch,000h,042h,048h,052h,00ah	; ad76  X..X.IBH.Fl.BHR.
	defb 00ah,006h,0fdh,06eh,04bh,040h,06bh,04dh,055h,000h,052h,003h,046h,054h,047h,052h	; ad86  ...nK@kMU.R.FTGR
	defb 000h,04ch,05eh,054h,041h,006h,0feh,076h,08fh,058h,049h,053h,059h,000h,041h,051h	; ad96  .L^TA..v.XISY.AQ
	defb 062h,000h,0f5h,045h,066h,0feh,0b8h,05eh,062h,0a6h,052h,041h,068h,06fh,006h,049h	; ada6  b..Ef..^b.RAho.I
	defb 069h,045h,003h,000h,040h,054h,04fh,05ch,058h,0feh,04ah,041h,049h,003h,058h,000h	; adb6  iE..@TO\X.JAI.X.
	defb 049h,053h,059h,003h,04fh,003h,0a6h,04fh,03ch,0fdh,0f8h,03bh,00ah,00ah,03ch,0ffh	; adc6  ISY.O..O<.....<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_ADD6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (105
;   bytes)
;   0xadd6..0xae3f  (105 bytes)
DATA_mensaje_23_ADD6:
	defb 0f8h,03bh,00ah,00ah,0b3h,059h,000h,0b3h,059h,000h,045h,054h,04bh,06dh,052h,003h	; add6  .....Y..Y.ETKmR.
	defb 041h,068h,0feh,0eah,052h,003h,059h,054h,041h,06bh,006h,000h,046h,04fh,068h,05ch	; ade6  Ah..R.YTAk..FOh\
	defb 003h,046h,0d4h,0c1h,0c5h,0feh,079h,003h,077h,003h,06ch,000h,041h,045h,055h,000h	; adf6  .F....y.w.l.AEU.
	defb 04fh,044h,04ch,045h,006h,0fdh,04eh,058h,049h,053h,04fh,003h,048h,06ch,000h,045h	; ae06  ODLE..NXISO.Hl.E
	defb 06dh,045h,003h,043h,068h,058h,065h,006h,0fdh,04eh,069h,045h,003h,000h,0cfh,058h	; ae16  mE.ChXe..NiE...X
	defb 0ech,06ch,090h,07fh,003h,055h,04bh,054h,041h,0feh,064h,041h,041h,051h,058h,000h	; ae26  .l...UKTA.dAAQX.
	defb 05dh,042h,05dh,042h,04fh,003h,06bh,03ch,0ffh	; ae36  ]B]BO.k<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AE3F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (40
;   bytes)
;   0xae3f..0xae67  (40 bytes)
DATA_mensaje_23_AE3F:
	defb 0f8h,03bh,04eh,069h,059h,000h,0c6h,058h,087h,0afh,077h,099h,07ch,04fh,003h,06bh	; ae3f  ..NiY..X..w.|O.k
	defb 03ch,0feh,0fch,03bh,07fh,003h,09dh,082h,058h,000h,041h,043h,052h,003h,000h,05ah	; ae4f  <.......X.ACR..Z
	defb 06ah,0a6h,04fh,06dh,04fh,003h,03ch,0ffh	; ae5f  j.OmO.<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AE67: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (73
;   bytes)
;   0xae67..0xaeb0  (73 bytes)
DATA_mensaje_23_AE67:
	defb 0f8h,03bh,041h,041h,06bh,006h,0f7h,0fch,045h,003h,05ah,06ah,0a6h,04fh,06dh,04fh	; ae67  ..AAk...E.Zj.OmO
	defb 003h,04bh,0feh,04ah,04bh,040h,048h,003h,068h,06bh,03ch,0feh,0fch,03bh,052h,003h	; ae77  .K.JK@H.hk<...R.
	defb 062h,000h,049h,069h,059h,000h,080h,0aah,098h,07bh,020h,058h,0feh,04fh,041h,04dh	; ae87  b.IiY....{ X.OAM
	defb 051h,054h,062h,058h,00ah,00ah,0fdh,040h,067h,045h,003h,04fh,047h,000h,041h,04fh	; ae97  QTbX...@gE.OG.AO
	defb 04fh,003h,041h,053h,046h,05eh,04ch,03ch,0ffh	; aea7  O.ASF^L<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AEB0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0xaeb0..0xaede  (46 bytes)
DATA_mensaje_23_AEB0:
	defb 0fbh,03bh,046h,069h,041h,054h,0bah,057h,03ch,0feh,0fch,03bh,072h,090h,006h,000h	; aeb0  ..FiAT.W<...r...
	defb 05ah,04ah,05ah,003h,04ah,058h,000h,054h,05eh,051h,059h,003h,0feh,049h,003h,0a6h	; aec0  ZJZ.JX.T^QY..I..
	defb 047h,06dh,000h,053h,041h,042h,045h,06dh,04bh,003h,04fh,003h,03ch,0ffh	; aed0  Gm.SABEmK.O.<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AEDE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (58
;   bytes)
;   0xaede..0xaf18  (58 bytes)
DATA_mensaje_23_AEDE:
	defb 0f8h,03bh,049h,058h,0deh,058h,000h,053h,003h,049h,045h,055h,000h,079h,003h,077h	; aede  ..IX.X.S.IEU.y.w
	defb 003h,058h,049h,053h,06ch,0feh,045h,041h,04fh,000h,06eh,079h,092h,09dh,07bh,003h	; aeee  .XISl.EAO.ny..{.
	defb 0aeh,06fh,045h,003h,000h,040h,068h,059h,04ch,003h,065h,006h,04eh,069h,06ch,000h	; aefe  .oE..@hYL.e.Nil.
	defb 04ah,045h,003h,04bh,05eh,04bh,0a5h,042h,03ch,0ffh	; af0e  JE.K^K.B<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AF18: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0xaf18..0xaf26  (14 bytes)
DATA_mensaje_23_AF18:
	defb 0fbh,03bh,0c9h,045h,000h,044h,050h,052h,068h,06bh,001h,03ch,0fah,005h	; af18  ...E.DPRhk.<..

; ----------------------------------------------------------------------
; DATOS mensaje_23_AF26: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0xaf26..0xaf4f  (41 bytes)
DATA_mensaje_23_AF26:
	defb 0fbh,03bh,08dh,003h,09ah,08dh,003h,09ah,058h,000h,05dh,06dh,058h,065h,042h,057h	; af26  ........X.]mXeBW
	defb 001h,000h,049h,069h,045h,003h,0feh,06eh,079h,092h,09dh,07bh,003h,0aeh,06fh,058h	; af36  ..IiE..ny..{..oX
	defb 000h,065h,042h,04fh,003h,06bh,001h,03ch,0ffh	; af46  .eBO.k.<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AF4F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (42
;   bytes)
;   0xaf4f..0xaf79  (42 bytes)
DATA_mensaje_23_AF4F:
	defb 0fbh,03bh,04fh,003h,061h,065h,001h,000h,049h,049h,059h,000h,04bh,06dh,04dh,041h	; af4f  ..O.ae..IIY.KmMA
	defb 054h,089h,003h,07bh,0aeh,006h,0feh,060h,063h,05fh,055h,000h,062h,058h,06ch,0b1h	; af5f  T..{...`c_U.bXl.
	defb 0a6h,052h,059h,041h,048h,054h,041h,06bh,03ch,0ffh	; af6f  .RYAHTAk<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AF79: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (30
;   bytes)
;   0xaf79..0xaf97  (30 bytes)
DATA_mensaje_23_AF79:
	defb 0fbh,03bh,06eh,079h,092h,09dh,07bh,003h,0aeh,06fh,06ch,000h,05eh,047h,066h,055h	; af79  ..ny..{..ol.^GfU
	defb 04bh,052h,0feh,057h,04fh,067h,04bh,054h,041h,052h,003h,065h,03ch,0ffh	; af89  KR.WOgKTAR.e<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_AF97: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (71
;   bytes)
;   0xaf97..0xafde  (71 bytes)
DATA_mensaje_23_AF97:
	defb 0fch,03bh,065h,04bh,000h,049h,058h,000h,08ch,004h,020h,07bh,003h,045h,003h,000h	; af97  ..eK.IX... {.E..
	defb 0b4h,041h,052h,041h,068h,0feh,053h,049h,06ah,055h,000h,07bh,074h,097h,06ch,000h	; afa7  .ARAh.SIjU.{t.l.
	defb 04ah,04bh,052h,044h,049h,042h,006h,0feh,065h,041h,04bh,0a5h,0a6h,053h,001h,03ch	; afb7  JKRDIB..eAK..S.<
	defb 0feh,0fbh,03bh,049h,069h,049h,069h,001h,000h,04eh,069h,059h,000h,074h,07bh,097h	; afc7  ...IiIi..NiY.t{.
	defb 052h,003h,04bh,0a5h,001h,03ch,0ffh	; afd7

; ----------------------------------------------------------------------
; DATOS mensaje_23_AFDE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (472
;   bytes)
;   0xafde..0xb1b6  (472 bytes)
DATA_mensaje_23_AFDE:
	defb 0fch,03bh,08dh,003h,09ah,08dh,003h,09ah,052h,003h,000h,065h,05fh,055h,047h,041h	; afde  ........R..e_UGA
	defb 054h,040h,00ah,00ah,0fdh,06eh,077h,003h,097h,020h,077h,0c5h,0c0h,045h,003h,000h	; afee  T@...nw.. w..E..
	defb 089h,004h,09dh,089h,004h,020h,07ch,0c5h,055h,065h,067h,0feh,044h,04ah,061h,066h	; affe  ..... |.Ueg.DJaf
	defb 069h,068h,0eah,0f3h,005h,075h,003h,097h,072h,07ch,055h,051h,051h,003h,047h,0feh	; b00e  ih...u..r|UQQ.G.
	defb 012h,053h,003h,0b5h,058h,000h,04ah,041h,063h,047h,052h,003h,040h,068h,0d4h,0c1h	; b01e  .S..X.JAcGR.@h..
	defb 0c5h,079h,003h,077h,003h,045h,003h,0feh,049h,058h,0c2h,055h,000h,0e1h,06bh,069h	; b02e  .y.w.E..IX.U..ki
	defb 068h,006h,0fdh,0f5h,0b2h,058h,000h,05dh,04bh,05dh,003h,04bh,045h,003h,000h,077h	; b03e  h....X.]K].KE..w
	defb 003h,096h,09dh,083h,003h,077h,09ah,07ch,06ch,0feh,045h,04fh,050h,051h,003h,047h	; b04e  .....w.|l.EOPQ.G
	defb 068h,0eah,000h,079h,003h,077h,003h,045h,003h,000h,04eh,058h,04ch,045h,003h,04fh	; b05e  h..y.w.E..NXLE.O
	defb 06ch,0feh,0e1h,06bh,04bh,000h,04ch,05ch,003h,052h,058h,0e7h,046h,053h,04bh,0e7h	; b06e  l..kK.L\.RX.FSK.
	defb 048h,068h,062h,058h,06ch,0feh,04ah,051h,067h,047h,04bh,052h,04bh,05eh,042h,006h	; b07e  HhbXl.JQgGKRK^B.
	defb 0fdh,04fh,003h,069h,011h,0bah,000h,04eh,069h,06ch,000h,05bh,04dh,047h,003h,049h	; b08e  .O.i...Nil.[MG.I
	defb 053h,059h,0feh,052h,003h,046h,054h,041h,006h,000h,04fh,04fh,003h,000h,05ch,003h	; b09e  SY.R.FTA..OO..\.
	defb 051h,058h,0bah,045h,003h,000h,049h,058h,0feh,077h,003h,097h,020h,077h,0c5h,0c0h	; b0ae  QX.E..IX.w.. w..
	defb 06ch,044h,053h,04ch,003h,069h,054h,041h,045h,046h,003h,067h,06fh,006h,0fdh,06eh	; b0be  lDSL.iTAEF.go..n
	defb 05ch,003h,051h,058h,0bah,06fh,0a6h,052h,000h,05eh,04ah,045h,000h,074h,099h,04bh	; b0ce  \.QX.o.R.^JE.t.K
	defb 003h,0a3h,0feh,054h,041h,04fh,003h,06ah,042h,054h,002h,03ch,0feh,0fbh,03bh,0f7h	; b0de  ...TAO.jBT.<....
	defb 0fch,065h,03ch,0fdh,0fch,03bh,041h,063h,054h,06dh,04fh,003h,065h,054h,006h,000h	; b0ee  .e<...AcTmO.eT..
	defb 05fh,06dh,054h,058h,076h,07fh,071h,06ch,0feh,020h,0f0h,055h,040h,051h,061h,052h	; b0fe  _mTXv.ql. .U@QaR
	defb 000h,0c9h,045h,04ch,068h,0a6h,052h,058h,03ch,0feh,0fbh,03bh,0f7h,0fch,000h,0b3h	; b10e  ..ELh.RX<.......
	defb 04ah,066h,000h,04bh,045h,04fh,054h,041h,052h,003h,04bh,0a5h,006h,051h,046h,003h	; b11e  Jf.KEOTAR.K..QF.
	defb 06ch,000h,065h,06dh,052h,003h,065h,03ch,0fdh,0fch,03bh,06eh,05eh,04fh,000h,0f5h	; b12e  l.emR.e<...n^O..
	defb 0b2h,058h,077h,003h,096h,09dh,083h,003h,077h,09ah,07ch,053h,0feh,04eh,066h,058h	; b13e  .Xw.....w.|S.NfX
	defb 077h,003h,096h,09dh,083h,003h,077h,09ah,07ch,006h,000h,012h,051h,058h,0feh,077h	; b14e  w.....w.|...QX.w
	defb 003h,096h,09dh,083h,003h,077h,09ah,07ch,045h,003h,000h,045h,04ah,054h,068h,0eah	; b15e  .....w.|E..EJTh.
	defb 00ah,00ah,0fdh,042h,06dh,0e8h,058h,000h,046h,003h,0a3h,047h,04ah,065h,042h,055h	; b16e  ...Bm.X.F..GJeBU
	defb 065h,067h,0feh,0d4h,0c1h,0c5h,079h,003h,077h,003h,059h,000h,05dh,06ah,05ah,003h	; b17e  eg....y.w.Y.]jZ.
	defb 068h,06fh,03ch,0feh,0fbh,03bh,051h,046h,003h,059h,002h,03ch,0fdh,0fch,03bh,049h	; b18e  ho<...QF.Y.<...I
	defb 069h,041h,04bh,003h,0a5h,042h,059h,000h,08dh,003h,09ah,08dh,003h,09ah,052h,003h	; b19e  iAK..BY.......R.
	defb 0feh,065h,061h,054h,041h,063h,03ch,0ffh	; b1ae  .eaTAc<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B1B6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0xb1b6..0xb1c6  (16 bytes)
DATA_mensaje_23_B1B6:
	defb 0fch,03bh,049h,069h,052h,003h,000h,04dh,003h,06dh,05bh,003h,04fh,003h,03ch,0ffh	; b1b6  ..IiR..M.m[.O.<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B1C6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0xb1c6..0xb1e8  (34 bytes)
DATA_mensaje_23_B1C6:
	defb 0f8h,03bh,0f7h,0fch,04ah,06dh,000h,0f7h,0fbh,04ah,06dh,0feh,0bch,041h,048h,053h	; b1c6  ....Jm...Jm..AHS
	defb 003h,000h,04ah,046h,055h,0dch,047h,06bh,006h,040h,067h,045h,003h,053h,042h,03ch	; b1d6  ..JFU.Gk.@gE.SB<
	defb 0fah,005h	; b1e6

; ----------------------------------------------------------------------
; DATOS mensajes_23_B1E8: 14 palabras: los mensajes de la sala 561 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (28 bytes)
;   0xb1e8..0xb204  (28 bytes)
DATA_mensajes_23_B1E8:
	defb 004h,0b2h	; b1e8
	defb 00fh,0b2h	; b1ea
	defb 046h,0b2h	; b1ec
	defb 066h,0b2h	; b1ee
	defb 091h,0b2h	; b1f0
	defb 0a4h,0b2h	; b1f2
	defb 0aeh,0b2h	; b1f4
	defb 0dah,0b2h	; b1f6
	defb 05fh,0b4h	; b1f8
	defb 03ah,0b5h	; b1fa
	defb 04ah,0b5h	; b1fc
	defb 057h,0b5h	; b1fe
	defb 0fdh,0b5h	; b200
	defb 084h,073h	; b202

; ----------------------------------------------------------------------
; DATOS mensaje_23_B204: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (11
;   bytes)
;   0xb204..0xb20f  (11 bytes)
DATA_mensaje_23_B204:
	defb 0fch,03bh,080h,0aah,098h,07bh,020h,001h,002h,03ch,0ffh	; b204  .....{ ..<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B20F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (55
;   bytes)
;   0xb20f..0xb246  (55 bytes)
DATA_mensaje_23_B20F:
	defb 0fch,03bh,080h,0aah,098h,07bh,020h,04bh,003h,0a3h,054h,041h,045h,001h,000h,053h	; b20f  .....{ K..TAE..S
	defb 003h,042h,04bh,052h,0feh,049h,049h,055h,000h,041h,068h,06dh,04fh,003h,002h,000h	; b21f  .BKR.IIU.AhmO...
	defb 077h,003h,097h,020h,077h,0d5h,055h,0feh,0dch,0a6h,04fh,06dh,04bh,003h,0a3h,000h	; b22f  w.. w.U...OmK...
	defb 054h,041h,058h,045h,002h,03ch,0ffh	; b23f

; ----------------------------------------------------------------------
; DATOS mensaje_23_B246: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0xb246..0xb266  (32 bytes)
DATA_mensaje_23_B246:
	defb 0fbh,03bh,0bbh,045h,003h,000h,05eh,0a6h,04ah,044h,065h,001h,000h,04eh,069h,055h	; b246  ...E..^.JDe..NiU
	defb 000h,0b2h,0deh,0feh,076h,07ch,003h,04fh,003h,066h,048h,04fh,003h,06bh,03ch,0ffh	; b256  ....v|.O.fHO.k<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B266: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (43
;   bytes)
;   0xb266..0xb291  (43 bytes)
DATA_mensaje_23_B266:
	defb 0fbh,03bh,0b2h,045h,003h,051h,061h,04fh,041h,001h,049h,046h,0a4h,042h,062h,000h	; b266  ...E.QaOA.IF.Bb.
	defb 040h,066h,041h,06bh,006h,0f7h,0fch,001h,000h,080h,0aah,098h,07bh,020h,058h,0e8h	; b276  @fAk........{ X.
	defb 045h,003h,0feh,040h,05bh,003h,054h,041h,06bh,03ch,0ffh	; b286  E..@[.TAk<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B291: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0xb291..0xb2a4  (19 bytes)
DATA_mensaje_23_B291:
	defb 0fch,03bh,080h,0aah,098h,07bh,020h,001h,000h,04bh,0a6h,045h,067h,04bh,06ah,0a6h	; b291  .....{ ..K.EgKj.
	defb 001h,03ch,0ffh	; b2a1

; ----------------------------------------------------------------------
; DATOS mensaje_23_B2A4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (10
;   bytes)
;   0xb2a4..0xb2ae  (10 bytes)
DATA_mensaje_23_B2A4:
	defb 0fbh,03bh,0b5h,06ch,0b4h,048h,04fh,06bh,03ch,0ffh	; b2a4  ...l.HOk<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B2AE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (44
;   bytes)
;   0xb2ae..0xb2da  (44 bytes)
DATA_mensaje_23_B2AE:
	defb 0f8h,03bh,0c6h,059h,000h,062h,042h,000h,04fh,003h,061h,006h,000h,04fh,04ch,045h	; b2ae  ...Y.bB.O.a..OLE
	defb 066h,054h,041h,03ch,0fch,03bh,065h,06bh,057h,06ch,000h,059h,047h,054h,001h,000h	; b2be  fTA<..ekWl.YGT..
	defb 045h,003h,06dh,059h,003h,068h,06dh,04fh,003h,001h,03ch,0ffh	; b2ce  E.mY.hmO..<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B2DA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (389
;   bytes)
;   0xb2da..0xb45f  (389 bytes)
DATA_mensaje_23_B2DA:
	defb 0fch,03bh,080h,0aah,098h,07bh,020h,00ah,00ah,03ch,0feh,0f8h,03bh,040h,04fh,04fh	; b2da  .....{ ..<...@OO
	defb 045h,041h,000h,052h,06ch,04bh,052h,068h,058h,057h,006h,0feh,07fh,003h,09dh,082h	; b2ea  EA.RlKRhXW......
	defb 058h,000h,052h,062h,000h,040h,04fh,04fh,045h,045h,0a6h,04fh,00ah,00ah,006h,0feh	; b2fa  X.Rb.@OOEE.O....
	defb 049h,069h,052h,003h,000h,0cfh,058h,053h,049h,06ah,05ch,000h,0dch,048h,068h,06bh	; b30a  IiR...XSIj\..Hhk
	defb 03ch,0fdh,0fch,03bh,080h,0aah,098h,07bh,020h,00ah,00ah,03ch,0feh,0f8h,03bh,04eh	; b31a  <......{ ..<...N
	defb 042h,006h,0f7h,0fch,000h,040h,054h,04fh,055h,0feh,044h,057h,045h,003h,041h,045h	; b32a  B....@TOU.DWE.AE
	defb 003h,040h,068h,058h,005h,000h,046h,041h,052h,047h,069h,068h,002h,03ch,0feh,0fch	; b33a  .@hX..FARGih.<..
	defb 03bh,0c9h,04fh,003h,041h,002h,03ch,0fdh,0f8h,03bh,04bh,003h,051h,059h,000h,0c6h	; b34a  ..O.A.<...K.QY..
	defb 055h,059h,000h,0d6h,053h,003h,062h,045h,003h,000h,041h,068h,058h,006h,062h,050h	; b35a  UY..S.bE..AhX.bP
	defb 06ah,06dh,000h,07fh,003h,09dh,082h,053h,058h,0ddh,055h,052h,003h,046h,04fh,0d6h	; b36a  jm.....SX.UR.FO.
	defb 00ah,00ah,03ch,0fch,03bh,001h,03ch,0fdh,0f8h,03bh,04eh,058h,0d6h,059h,000h,0c6h	; b37a  ..<...<...NX.Y..
	defb 045h,003h,000h,049h,049h,05ch,000h,047h,068h,0feh,053h,050h,0a4h,042h,052h,003h	; b38a  E..II\.Gh.SP.BR.
	defb 000h,06bh,045h,003h,050h,050h,000h,089h,004h,09dh,089h,004h,020h,07ch,0c5h,055h	; b39a  .kE.PP...... |.U
	defb 0feh,040h,04ch,003h,048h,04fh,058h,006h,000h,050h,050h,062h,000h,07fh,003h,09dh	; b3aa  .@L.HOX..PPb....
	defb 082h,058h,0ech,06ch,0feh,0edh,0a6h,052h,000h,045h,054h,04bh,06dh,052h,003h,047h	; b3ba  .X.l...R.ETKmR.G
	defb 069h,04fh,06bh,006h,0fdh,04eh,04bh,052h,000h,04eh,058h,0d6h,06ch,0b8h,052h,000h	; b3ca  iOk..NKR.NX.l.R.
	defb 012h,0bah,058h,049h,053h,06ch,0feh,064h,068h,04bh,052h,047h,069h,04fh,006h,000h	; b3da  ..XISl.dhKRGiO..
	defb 04eh,058h,0eah,000h,0c6h,059h,0feh,04eh,058h,0d6h,058h,0d1h,0b6h,06ch,000h,050h	; b3ea  NX...Y.NX.X..l.P
	defb 050h,055h,000h,051h,04fh,043h,068h,058h,06ch,0feh,06bh,04ch,069h,052h,04bh,05eh	; b3fa  PU.QOChXl.kLiRK^
	defb 0a6h,04fh,058h,006h,0fdh,04eh,058h,0d1h,059h,000h,0f7h,0fch,000h,040h,054h,04fh	; b40a  .OX..NX.Y....@TO
	defb 055h,000h,040h,048h,003h,04fh,0feh,087h,0afh,077h,099h,07ch,058h,000h,042h,066h	; b41a  U.@H.O...w.|X.Bf
	defb 055h,000h,05dh,0a6h,052h,040h,068h,06bh,006h,0feh,04eh,058h,0d1h,06ch,0b8h,052h	; b42a  U.].R@hk..NX.l.R
	defb 000h,089h,004h,09dh,089h,004h,020h,07ch,0c5h,055h,0feh,051h,04fh,043h,052h,050h	; b43a  ...... |.U.QOCRP
	defb 0a5h,042h,04fh,003h,041h,03ch,0fdh,0fch,03bh,04fh,04bh,045h,055h,000h,051h,04fh	; b44a  .BO.A<...OKEU.QO
	defb 043h,065h,042h,03ch,0ffh	; b45a

; ----------------------------------------------------------------------
; DATOS mensaje_23_B45F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (219
;   bytes)
;   0xb45f..0xb53a  (219 bytes)
DATA_mensaje_23_B45F:
	defb 0fch,03bh,053h,003h,042h,04bh,052h,000h,049h,06dh,054h,049h,053h,055h,001h,002h	; b45f  ..S.BKR.ImTISU..
	defb 03ch,0feh,0f8h,03bh,0c6h,059h,000h,079h,003h,077h,003h,06ch,000h,060h,045h,043h	; b46f  <....Y.y.w.l.`EC
	defb 065h,042h,053h,0feh,049h,049h,052h,003h,000h,05eh,0a6h,052h,04fh,058h,006h,04ch	; b47f  eBS.IIR..^.ROX.L
	defb 068h,053h,000h,044h,04eh,066h,047h,0feh,04eh,058h,0eah,045h,003h,000h,077h,003h	; b48f  hS.DNfG.NX.E..w.
	defb 096h,09dh,083h,003h,077h,09ah,07ch,04fh,003h,0a6h,04fh,058h,057h,005h,0fdh,071h	; b49f  ....w.|O..OXW..q
	defb 084h,081h,003h,08eh,058h,065h,042h,054h,000h,044h,053h,053h,000h,053h,062h,055h	; b4af  ....XeBT.DSS.SbU
	defb 0feh,079h,003h,077h,003h,045h,003h,0e1h,06bh,069h,04fh,058h,001h,000h,04eh,04bh	; b4bf  .y.w.E..kiOX..NK
	defb 052h,000h,0c6h,06ch,0feh,0b8h,068h,063h,041h,054h,063h,000h,049h,042h,048h,003h	; b4cf  R..l..hcATc.IBH.
	defb 046h,06ch,000h,04bh,045h,048h,052h,005h,0fdh,04eh,04bh,052h,000h,04eh,058h,049h	; b4df  Fl.KEHR..NKR.NXI
	defb 003h,000h,0c6h,058h,04ch,045h,003h,04fh,06ch,000h,05eh,057h,052h,0feh,0c6h,055h	; b4ef  ...XLE.Ol.^WR..U
	defb 000h,059h,003h,048h,052h,04bh,05eh,0a6h,04fh,058h,001h,03ch,0fdh,0fch,03bh,04eh	; b4ff  .Y.HRK^.OX.<...N
	defb 069h,04bh,003h,0a3h,040h,000h,04ah,0a6h,046h,000h,074h,099h,04fh,050h,045h,003h	; b50f  iK..@.J.F.t.OPE.
	defb 0feh,0cah,04bh,04fh,058h,059h,000h,079h,003h,077h,003h,04fh,003h,0a6h,04fh,058h	; b51f  ..KOXY.y.w.O..OX
	defb 045h,001h,03ch,0feh,0f8h,03bh,04eh,042h,065h,03ch,0ffh	; b52f  E.<...NBe<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B53A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0xb53a..0xb54a  (16 bytes)
DATA_mensaje_23_B53A:
	defb 0f8h,03bh,062h,042h,04ch,047h,003h,000h,0c6h,059h,000h,0ech,056h,06bh,03ch,0ffh	; b53a  ..bBLG...Y..Vk<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B54A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0xb54a..0xb557  (13 bytes)
DATA_mensaje_23_B54A:
	defb 0f8h,03bh,0b3h,000h,0cah,04bh,04fh,053h,042h,067h,065h,03ch,0ffh	; b54a  .....KOSBge<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B557: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (166
;   bytes)
;   0xb557..0xb5fd  (166 bytes)
DATA_mensaje_23_B557:
	defb 0f8h,03bh,0f7h,0fch,000h,044h,06bh,045h,069h,058h,0eah,045h,003h,000h,046h,04fh	; b557  .....DkEiX.E..FO
	defb 06bh,006h,040h,054h,04fh,055h,000h,040h,043h,052h,000h,065h,045h,0a6h,04fh,006h	; b567  k.@TOU.@CR.eE.O.
	defb 0feh,0f7h,0fch,000h,0f7h,0fbh,04ah,06dh,06ch,000h,04fh,003h,041h,04bh,003h,055h	; b577  ......Jml.O.AK.U
	defb 006h,0fdh,0c6h,059h,000h,0b3h,045h,066h,000h,07fh,003h,09dh,082h,058h,062h,053h	; b587  ...Y..Ef.....XbS
	defb 05ch,0feh,0e9h,04fh,003h,051h,06bh,006h,000h,0f7h,0fch,000h,045h,054h,066h,04ch	; b597  \..O.Qk.....ETfL
	defb 003h,0feh,079h,003h,077h,003h,06ch,000h,04fh,044h,04bh,052h,057h,006h,000h,04bh	; b5a7  ..y.w.l.ODKRW..K
	defb 003h,0a3h,040h,012h,0bah,053h,062h,0feh,054h,045h,065h,047h,057h,006h,0fdh,0b3h	; b5b7  ..@..Sb.TEeGW...
	defb 0f4h,05eh,052h,003h,000h,05dh,06dh,053h,042h,055h,000h,040h,067h,045h,003h,053h	; b5c7  .^R..]mSBU.@gE.S
	defb 042h,006h,0feh,040h,00ah,067h,00ah,045h,003h,00ah,00ah,053h,00ah,00ah,042h,03ch	; b5d7  B..@.g.E...S..B<
	defb 0feh,0fch,03bh,080h,0aah,098h,07bh,020h,001h,03ch,0feh,0fbh,03bh,080h,0aah,098h	; b5e7  ......{ .<......
	defb 07bh,020h,001h,03ch,0fah,012h	; b5f7

; ----------------------------------------------------------------------
; DATOS mensaje_23_B5FD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (197
;   bytes)
;   0xb5fd..0xb6c2  (197 bytes)
DATA_mensaje_23_B5FD:
	defb 0fbh,03bh,00ah,00ah,0f7h,0fch,03ch,0feh,0fch,03bh,00ah,00ah,074h,099h,059h,000h	; b5fd  ......<.....t.Y.
	defb 079h,003h,077h,003h,06ch,000h,04dh,003h,0a6h,04fh,041h,055h,0feh,064h,068h,04ah	; b60d  y.w.l.M..OAU.dhJ
	defb 054h,041h,006h,000h,045h,054h,066h,04ch,003h,000h,04fh,044h,04bh,052h,0feh,05fh	; b61d  TA..ETfL..ODKR._
	defb 04dh,068h,006h,000h,07fh,003h,09dh,082h,062h,000h,080h,0aah,098h,07bh,020h,062h	; b62d  Mh......b....{ b
	defb 0fdh,04bh,003h,05bh,003h,06dh,058h,000h,05fh,06ch,000h,052h,041h,04bh,052h,0feh	; b63d  .K.[.mX._l.RAKR.
	defb 049h,058h,077h,003h,097h,020h,077h,0c5h,0c0h,06ch,005h,05ah,041h,052h,059h,0feh	; b64d  IXw.. w..l.ZARY.
	defb 0bah,0ddh,0c2h,0c3h,06ch,000h,05eh,062h,06ah,042h,053h,04bh,04fh,006h,0fdh,0cfh	; b65d  ....l.^bjBSKO...
	defb 066h,058h,0ech,06ch,000h,048h,0a6h,04bh,052h,000h,071h,086h,0ech,055h,055h,059h	; b66d  fX.l.H.KR.q..UUY
	defb 0feh,04bh,054h,041h,006h,000h,074h,099h,058h,0e8h,06ch,045h,048h,052h,062h,00ah	; b67d  .KTA..t.X.lEHRb.
	defb 00ah,001h,03ch,0feh,0fbh,03bh,0f7h,0fch,00ah,00ah,03ch,0fdh,0fch,03bh,0f7h,0fbh	; b68d  ..<.......<.....
	defb 000h,077h,003h,097h,020h,077h,0d5h,05ch,000h,0dch,047h,04eh,003h,001h,0feh,041h	; b69d  .w.. w.\..GN...A
	defb 065h,041h,065h,000h,04ah,041h,049h,003h,058h,000h,048h,0a6h,04dh,06dh,058h,0eah	; b6ad  eAe.JAI.X.H.MmX.
	defb 04fh,003h,001h,03ch,0ffh	; b6bd

; ----------------------------------------------------------------------
; DATOS mensajes_23_B6C2: 22 palabras: los mensajes de la sala 566 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (44 bytes)
;   0xb6c2..0xb6ee  (44 bytes)
DATA_mensajes_23_B6C2:
	defb 0eeh,0b6h	; b6c2
	defb 0fbh,0b6h	; b6c4
	defb 080h,0b7h	; b6c6
	defb 0d7h,0b7h	; b6c8
	defb 022h,0b8h	; b6ca
	defb 06ch,0b8h	; b6cc
	defb 083h,0b8h	; b6ce
	defb 09dh,0b8h	; b6d0
	defb 0c9h,0b8h	; b6d2
	defb 041h,0b9h	; b6d4
	defb 063h,0bbh	; b6d6
	defb 069h,0bbh	; b6d8
	defb 06fh,0bbh	; b6da
	defb 075h,0bbh	; b6dc
	defb 097h,0bbh	; b6de
	defb 0cfh,0bbh	; b6e0
	defb 002h,0bch	; b6e2
	defb 042h,0bch	; b6e4
	defb 075h,0bch	; b6e6
	defb 0a6h,0bdh	; b6e8
	defb 069h,0beh	; b6ea
	defb 08bh,0beh	; b6ec

; ----------------------------------------------------------------------
; DATOS mensaje_23_B6EE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0xb6ee..0xb6fb  (13 bytes)
DATA_mensaje_23_B6EE:
	defb 0fch,03bh,042h,06bh,020h,020h,020h,020h,020h,0a6h,001h,03ch,0ffh	; b6ee  ..Bk     ..<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B6FB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensaje_23_B780 B780-B7D7); lo leen p00:4E76 (220 bytes)
;   0xb6fb..0xb7d7  (220 bytes)
DATA_mensaje_23_B6FB:
	defb 0fch,03bh,049h,000h,049h,049h,059h,002h,03ch,0feh,0f9h,03bh,049h,049h,059h,000h	; b6fb  ..I.IIY.<...IIY.
	defb 089h,004h,07eh,079h,09dh,077h,096h,08bh,003h,058h,000h,05ch,063h,065h,03ch,0feh	; b70b  ..~y.w...X.\ce<.
	defb 0fch,03bh,001h,000h,0f7h,0f9h,04bh,003h,0a3h,054h,041h,045h,001h,0feh,05ah,04ah	; b71b  ......K..TAE..ZJ
	defb 04bh,05bh,003h,067h,04fh,003h,054h,03ch,0fdh,0f9h,03bh,0c9h,06ch,0c8h,0a6h,052h	; b72b  K[.gO.T<....l..R
	defb 068h,058h,002h,03ch,0feh,0fch,03bh,0c9h,0a6h,052h,000h,074h,099h,059h,000h,0b3h	; b73b  hX.<.....R.t.Y..
	defb 000h,079h,003h,077h,003h,06ch,04fh,044h,04bh,052h,0feh,077h,003h,097h,020h,077h	; b74b  .y.w.lODKR.w.. w
	defb 0c5h,0c0h,045h,066h,00ah,00ah,002h,002h,002h,0fdh,040h,069h,059h,005h,0b3h,05eh	; b75b  ..Ef......@iY..^
	defb 052h,003h,058h,049h,053h,059h,00ah,00ah,0feh,094h,091h,04fh,003h,0a6h,04fh,058h	; b76b  R.XISY.....O..OX
	defb 045h,001h,002h,03ch,0fah,0fch,03bh,04eh,042h,04fh,003h,006h,000h,094h,091h,055h	; b77b  E..<...NBO.....U
	defb 000h,050h,045h,003h,041h,054h,041h,063h,006h,0feh,05eh,04ah,045h,000h,078h,003h	; b78b  .PE.ATAc..^JE.x.
	defb 020h,090h,058h,0deh,055h,000h,0bah,0ddh,045h,003h,0feh,0d2h,067h,049h,061h,068h	; b79b   .X.U...E...gIah
	defb 054h,06dh,052h,00ah,00ah,03ch,0fdh,0f9h,03bh,04bh,06dh,04bh,003h,068h,062h,000h	; b7ab  TmR..<...KmK.hb.
	defb 04bh,06dh,04bh,003h,054h,041h,062h,0feh,0f7h,0fch,04bh,04fh,003h,041h,04bh,003h	; b7bb  KmK.TAb...KO.AK.
	defb 0a3h,054h,047h,052h,002h,03ch,0feh,0fch,03bh,002h,03ch,0ffh	; b7cb  .TGR.<....<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B7D7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (75
;   bytes)
;   0xb7d7..0xb822  (75 bytes)
DATA_mensaje_23_B7D7:
	defb 0f9h,03bh,0c9h,0b8h,052h,068h,058h,002h,000h,08dh,003h,020h,0afh,053h,04bh,052h	; b7d7  ....RhX.... .SKR
	defb 041h,068h,0feh,08ah,08eh,059h,000h,054h,041h,058h,065h,001h,03ch,0fdh,0fch,03bh	; b7e7  Ah...Y.TAXe.<...
	defb 074h,099h,059h,000h,08dh,003h,020h,0afh,053h,04ch,068h,058h,045h,003h,0feh,053h	; b7f7  t.Y... .SLhXE..S
	defb 047h,041h,00ah,00ah,002h,002h,000h,053h,003h,049h,045h,052h,003h,000h,046h,041h	; b807  GA.....S.IER..FA
	defb 04fh,0feh,07dh,097h,08bh,04fh,003h,054h,040h,03ch,0ffh	; b817  O.}..O.T@<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B822: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (74
;   bytes)
;   0xb822..0xb86c  (74 bytes)
DATA_mensaje_23_B822:
	defb 0f9h,03bh,0c6h,06ch,0ceh,05ch,003h,068h,051h,062h,067h,002h,000h,04eh,058h,083h	; b822  ...l.\.hQbg..NX.
	defb 07bh,052h,003h,0feh,044h,041h,04bh,0a3h,04ah,06dh,049h,003h,0a6h,049h,062h,000h	; b832  {R..DAK.JmI..Ib.
	defb 054h,041h,052h,003h,04bh,0a5h,03ch,0feh,0fch,03bh,071h,093h,000h,04fh,05eh,055h	; b842  TAR.K.<...q..O^U
	defb 059h,000h,041h,041h,062h,06dh,00ah,00ah,002h,002h,002h,0feh,049h,058h,07dh,097h	; b852  Y.AAbm......IX}.
	defb 08bh,059h,000h,04fh,04bh,045h,00ah,00ah,03ch,0ffh	; b862  .Y.OKE..<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_B86C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensaje_23_B883 B883-B89D); lo leen p00:4E76 (49 bytes)
;   0xb86c..0xb89d  (49 bytes)
DATA_mensaje_23_B86C:
	defb 0fch,03bh,0f7h,0f9h,000h,04eh,058h,000h,052h,059h,0feh,053h,003h,042h,04bh,04fh	; b86c  .....NX.RY.S.BKO
	defb 06dh,04fh,003h,041h,002h,03ch,0fah,0f9h,03bh,049h,000h,049h,069h,059h,000h,0c9h	; b87c  mO.A.<...I.IiY..
	defb 052h,003h,062h,054h,041h,06bh,006h,0feh,0b7h,055h,04bh,054h,041h,052h,003h,03ch	; b88c  R.bTAk...UKTAR.<
	defb 0ffh	; b89c

; ----------------------------------------------------------------------
; DATOS mensaje_23_B89D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensaje_23_B8C9 B8C9-B941); lo leen p00:4E76 (164 bytes)
;   0xb89d..0xb941  (164 bytes)
DATA_mensaje_23_B89D:
	defb 0fch,03bh,06eh,0b7h,055h,04bh,054h,041h,052h,003h,06fh,053h,0c8h,06bh,069h,068h	; b89d  ..n.UKTAR.oS.kih
	defb 053h,0feh,065h,048h,041h,000h,0b7h,055h,054h,068h,06dh,04fh,003h,006h,0fdh,040h	; b8ad  S.eHA..UThmO...@
	defb 040h,0a6h,001h,000h,049h,069h,059h,00ah,00ah,002h,001h,0fah,049h,069h,059h,000h	; b8bd  @...IiY.....IiY.
	defb 074h,099h,058h,089h,09dh,075h,080h,00ah,00ah,001h,002h,0fdh,079h,003h,077h,003h	; b8cd  t.X..u......y.w.
	defb 053h,058h,000h,04ah,041h,049h,003h,058h,000h,04fh,041h,048h,051h,058h,0eah,005h	; b8dd  SX.JAI.X.OAHQX..
	defb 0feh,074h,099h,06ch,000h,045h,059h,003h,0a6h,052h,000h,0f7h,0fbh,045h,003h,000h	; b8ed  .t.l.EY..R...E..
	defb 042h,052h,003h,055h,0feh,048h,045h,003h,06ch,04bh,04fh,006h,000h,04eh,058h,0eah	; b8fd  BR.U.HE.lKO..NX.
	defb 000h,074h,099h,045h,003h,0feh,060h,04ch,06dh,052h,003h,063h,0a6h,04fh,000h,074h	; b90d  .t.E..`LmR.c.O.t
	defb 099h,058h,000h,089h,09dh,075h,080h,04fh,003h,006h,0fdh,00ah,00ah,053h,041h,042h	; b91d  .X...u.O.....SAB
	defb 049h,053h,059h,000h,0f7h,0f9h,00ah,00ah,044h,0b6h,0feh,05eh,04ah,045h,00ah,00ah	; b92d  ISY.....D..^JE..
	defb 001h,002h,03ch,0ffh	; b93d

; ----------------------------------------------------------------------
; DATOS mensaje_23_B941: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 3 bloques:
;   (mensaje_23_BB63 BB63-BB6A) (mensaje_23_BB69 BB69-BB6F); lo leen p00:4E76
;   (558 bytes)
;   0xb941..0xbb6f  (558 bytes)
DATA_mensaje_23_B941:
	defb 0fch,03bh,0f7h,0f9h,000h,044h,0b6h,058h,000h,04bh,0a5h,042h,0b2h,059h,00ah,00ah	; b941  .....D.X.K.B.Y..
	defb 0feh,08bh,003h,07fh,04fh,003h,0a6h,04fh,058h,045h,001h,002h,03ch,0fdh,0f9h,03bh	; b951  ....O..OXE..<...
	defb 0c9h,052h,003h,000h,04eh,042h,054h,068h,058h,002h,000h,04eh,042h,04bh,003h,0a3h	; b961  .R..NBThX..NBK..
	defb 054h,041h,06bh,006h,04eh,058h,000h,046h,003h,0a3h,047h,065h,006h,000h,0f7h,0fbh	; b971  TAk.NX.F..Ge....
	defb 058h,0feh,04bh,0a5h,042h,0b2h,045h,003h,000h,0c6h,04fh,003h,0a6h,04fh,058h,03ch	; b981  X.K.B.E...O..OX<
	defb 0fdh,0fch,03bh,001h,001h,000h,04ch,068h,053h,000h,063h,059h,067h,000h,0b3h,05eh	; b991  ......LhS.cYg..^
	defb 052h,003h,0feh,044h,049h,0a6h,04fh,049h,053h,059h,000h,048h,003h,06dh,04bh,003h	; b9a1  R..DI.OISY.H.mK.
	defb 051h,04fh,003h,0a6h,04fh,06dh,04fh,003h,054h,006h,04bh,045h,04bh,005h,054h,04dh	; b9b1  QO..OmO.T.KEK.TM
	defb 003h,000h,049h,06dh,054h,049h,053h,055h,00ah,00ah,002h,03ch,0fdh,0f9h,03bh,0c6h	; b9c1  ..ImTISU...<....
	defb 062h,000h,059h,04bh,003h,061h,052h,000h,078h,003h,020h,090h,06ch,04bh,04fh,0eah	; b9d1  b.YK.aR.x. .lKO.
	defb 059h,0feh,044h,053h,003h,06ah,041h,04fh,06bh,006h,078h,003h,020h,090h,053h,000h	; b9e1  Y.DS.jAOk.x. .S.
	defb 048h,003h,06dh,04bh,003h,051h,053h,045h,003h,0feh,049h,003h,0a6h,050h,0a3h,055h	; b9f1  H.mK.QSE..I..P.U
	defb 054h,0a6h,052h,04bh,05eh,0a6h,052h,00ah,00ah,006h,0fdh,052h,003h,062h,000h,04fh	; ba01  T.RK^.R....R.b.O
	defb 04bh,045h,054h,049h,053h,059h,000h,0f7h,0fch,053h,0c6h,045h,003h,0feh,079h,003h	; ba11  KETISY...S.E..y.
	defb 077h,003h,058h,0c4h,041h,055h,065h,067h,000h,077h,003h,097h,020h,077h,0c5h,0c0h	; ba21  w.X.AUeg.w.. w..
	defb 05ch,0feh,0dch,0a6h,04fh,053h,041h,042h,049h,053h,006h,0fdh,0f7h,0fch,059h,000h	; ba31  \...OSABIS....Y.
	defb 079h,003h,077h,003h,06ch,000h,04fh,044h,04ch,05ch,003h,046h,0feh,0d7h,0bah,0d8h	; ba41  y.w.l.ODL\.F....
	defb 053h,04bh,052h,006h,000h,0c6h,059h,000h,089h,004h,020h,083h,084h,020h,058h,0feh	; ba51  SKR...Y... .. X.
	defb 0f7h,0fbh,053h,04bh,052h,00ah,00ah,006h,0fdh,04eh,04bh,052h,000h,0d7h,0bah,0d8h	; ba61  ..SKR....NKR....
	defb 045h,003h,000h,079h,003h,077h,003h,06ch,0feh,04fh,044h,04ah,054h,048h,069h,059h	; ba71  E..y.w.l.ODJTHiY
	defb 003h,005h,05eh,04fh,000h,0f7h,0fbh,045h,003h,00ah,00ah,0fdh,04bh,003h,05bh,003h	; ba81  ..^O...E....K.[.
	defb 06dh,058h,000h,04bh,0a5h,042h,0b2h,06ch,000h,040h,045h,04bh,052h,0feh,04bh,05eh	; ba91  mX.K.B.l.@EKR.K^
	defb 043h,059h,003h,005h,012h,0bah,053h,062h,000h,049h,058h,0c2h,055h,0feh,062h,053h	; baa1  CY....Sb.IX.U.bS
	defb 003h,069h,054h,047h,054h,068h,049h,053h,006h,000h,04ch,05ch,003h,052h,059h,0feh	; bab1  .iTGThIS..L\.RY.
	defb 048h,003h,06dh,04bh,003h,051h,052h,003h,040h,067h,000h,078h,003h,020h,090h,052h	; bac1  H.mK.QR.@g.x. .R
	defb 003h,062h,040h,068h,058h,03ch,0fdh,0fch,03bh,04bh,003h,0a3h,040h,000h,044h,0b6h	; bad1  .b@hX<...K..@.D.
	defb 058h,000h,049h,058h,042h,052h,003h,058h,000h,076h,07ch,003h,062h,0feh,048h,003h	; bae1  X.IXBR.X.v|.b.H.
	defb 06dh,04bh,003h,051h,054h,06dh,04fh,003h,054h,006h,04bh,003h,05bh,003h,06dh,058h	; baf1  mK.QTmO.T.K.[.mX
	defb 0e8h,06ch,04ch,052h,052h,0feh,074h,099h,058h,000h,07fh,082h,053h,054h,0a6h,052h	; bb01  .lLRR.t.X...ST.R
	defb 047h,069h,04fh,0f7h,0fbh,058h,005h,041h,063h,000h,0f7h,0f9h,058h,0b7h,0e4h,050h	; bb11  GiO..X.Ac...X..P
	defb 062h,00ah,00ah,03ch,0fdh,0f9h,03bh,00ah,00ah,03ch,0fdh,0fch,03bh,0f7h,0f9h,00ah	; bb21  b..<.....<......
	defb 00ah,078h,003h,020h,090h,058h,0deh,04fh,003h,048h,052h,003h,054h,047h,0feh,049h	; bb31  .x. .X.O.HR.TG.I
	defb 069h,045h,066h,062h,000h,074h,099h,058h,04fh,061h,058h,0feh,0f7h,0fbh,052h,003h	; bb41  iEfb.t.XOaX...R.
	defb 041h,052h,047h,069h,068h,045h,041h,002h,03ch,0feh,0f9h,03bh,0f7h,0fch,00ah,00ah	; bb51  ARGihEA.<.......
	defb 03ch,0fah,0fch,03bh,00ah,00ah,03ch,0fah,0f9h,03bh,00ah,00ah,03ch,0ffh	; bb61  <.....<.....<.

; ----------------------------------------------------------------------
; DATOS mensaje_23_BB6F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 11 bloques:
;   (mensaje_23_BB75 BB75-BB98) (mensaje_23_BB97 BB97-BBD0) (mensaje_23_BBCF
;   BBCF-BC03) (mensaje_23_BC02 BC02-BC43) (mensaje_23_BC42 BC42-BC76)
;   (mensaje_23_BC75 BC75-BDA7) (mensaje_23_BDA6 BDA6-BE6A) (mensaje_23_BE69
;   BE69-BE8C) (mensaje_23_BE8B BE8B-BE9F) (mensajes_23_BE9E BE9E-BEA0); lo
;   leen p00:4E76 (817 bytes)
;   0xbb6f..0xbea0  (817 bytes)
DATA_mensaje_23_BB6F:
	defb 0fch,03bh,0f7h,0f9h,03ch,0fah,0f9h,03bh,040h,0a6h,0b8h,052h,006h,078h,003h,020h	; bb6f  ....<...@..R.x.
	defb 090h,058h,073h,09dh,082h,003h,0a8h,09dh,077h,003h,045h,003h,0feh,059h,04bh,003h	; bb7f  .Xs.....w.E..YK.
	defb 05eh,068h,053h,049h,06ah,065h,03ch,0fah,0f6h,08dh,004h,08dh,004h,09ah,09dh,03bh	; bb8f  ^hSIje<.........
	defb 0f7h,0fch,000h,076h,08fh,058h,000h,064h,042h,045h,06dh,054h,0feh,04fh,04fh,045h	; bb9f  ...v.X.dBEmT.OOE
	defb 041h,059h,000h,0f3h,0dah,000h,049h,058h,077h,003h,097h,020h,077h,0c5h,0c0h,052h	; bbaf  AY....IXw.. w..R
	defb 003h,0feh,045h,04fh,067h,051h,045h,003h,069h,068h,04fh,003h,06ah,042h,03ch,0fah	; bbbf  ..EOgQE.ihO.jB<.
	defb 0f6h,070h,08bh,09ah,082h,003h,0a8h,082h,03bh,04eh,042h,006h,000h,0c1h,0d5h,052h	; bbcf  .p.......NB....R
	defb 003h,06dh,04dh,051h,058h,0feh,05dh,06dh,053h,042h,058h,0d7h,0bah,0d8h,059h,000h	; bbdf  .mMQX.]mSBX...Y.
	defb 0f7h,0fch,0feh,040h,054h,04fh,04bh,003h,04bh,06dh,000h,04fh,003h,0a6h,04fh,058h	; bbef  ...@TOK.Km.O..OX
	defb 065h,03ch,0fah,0f6h,07fh,003h,09dh,082h,000h,03bh,0c6h,04fh,050h,059h,000h,0beh	; bbff  e<.........OPY..
	defb 0bfh,058h,062h,058h,04fh,003h,045h,003h,000h,0f7h,0fch,005h,0f7h,0f9h,000h,076h	; bc0f  .XbXO.E........v
	defb 08fh,04fh,050h,055h,059h,000h,05fh,066h,041h,045h,003h,040h,068h,006h,0b3h,049h	; bc1f  .OPUY._fAE.@h..I
	defb 058h,0eah,06ch,000h,04dh,041h,041h,0a6h,059h,004h,041h,0e7h,046h,068h,06dh,04fh	; bc2f  X.l.MAA.Y.A.FhmO
	defb 003h,03ch,0fah,0f6h,080h,0aah,098h,07bh,020h,03bh,0f7h,0fch,006h,000h,0f7h,0f9h	; bc3f  .<.....{ .......
	defb 059h,000h,040h,054h,04fh,055h,0feh,053h,0a6h,052h,000h,045h,048h,045h,003h,043h	; bc4f  Y.@TOU.S.R.EHE.C
	defb 058h,054h,041h,0bah,006h,0feh,04fh,041h,04dh,051h,055h,000h,04bh,052h,040h,048h	; bc5f  XTA...OAMQU.KR@H
	defb 003h,054h,04ah,041h,03ch,0fah,0f6h,089h,004h,09dh,089h,004h,020h,07ch,03bh,0f5h	; bc6f  .TJA<....... |..
	defb 045h,003h,000h,0f7h,0fch,055h,000h,040h,04fh,043h,04fh,062h,042h,04fh,0feh,04bh	; bc7f  E....U.@OCObBO.K
	defb 069h,06dh,055h,000h,065h,047h,04eh,003h,000h,042h,050h,045h,0a6h,04fh,006h,0feh	; bc8f  imU.eGN..BPE.O..
	defb 0c1h,0d5h,052h,003h,06dh,04dh,051h,058h,000h,04eh,042h,0d4h,054h,07bh,084h,097h	; bc9f  ..R.mMQX.NB.T{..
	defb 074h,059h,0feh,0b3h,000h,05eh,047h,06ch,053h,04bh,003h,068h,006h,0fdh,04bh,045h	; bcaf  tY...^GlSK.h..KE
	defb 04bh,000h,046h,047h,045h,003h,041h,041h,006h,000h,049h,058h,0c2h,058h,0feh,044h	; bcbf  K.FGE.AA..IX.X.D
	defb 06bh,067h,058h,0eah,005h,051h,05eh,067h,000h,0f7h,0fch,058h,0eah,0f3h,005h,0feh	; bccf  kgX..Q^g...X....
	defb 07ah,07fh,09dh,045h,003h,0bah,0dah,058h,0f0h,055h,0d2h,067h,049h,060h,006h,0fdh	; bcdf  z..E...X.U.gI`..
	defb 055h,047h,04bh,05fh,053h,000h,042h,066h,046h,003h,067h,053h,000h,065h,047h,05dh	; bcef  UGK_S.BfF.gS.eG]
	defb 003h,042h,00ah,00ah,0feh,040h,067h,053h,040h,066h,064h,068h,000h,04fh,047h,066h	; bcff  .B...@gS@fdh.OGf
	defb 05fh,052h,003h,000h,0bah,0ddh,058h,0feh,0f0h,06ch,000h,064h,042h,06bh,047h,04bh	; bd0f  _R....X..l.dBkGK
	defb 005h,049h,042h,059h,041h,04ah,04dh,068h,006h,0fdh,04eh,04bh,052h,000h,041h,05eh	; bd1f  .IBYAJMh..NKR.A^
	defb 04fh,003h,045h,051h,052h,000h,0bah,0ddh,058h,0feh,048h,041h,048h,06dh,04bh,04fh	; bd2f  O.EQR...X.HAHmKO
	defb 049h,053h,058h,054h,041h,000h,04eh,042h,04dh,003h,051h,054h,0feh,04fh,04fh,045h	; bd3f  ISXTA.NBM.QT.OOE
	defb 041h,06ch,000h,041h,053h,003h,06dh,052h,003h,047h,068h,006h,0fdh,04bh,045h,04bh	; bd4f  Al.AS.mR.Gh..KEK
	defb 000h,048h,0a6h,04bh,052h,000h,044h,04eh,069h,068h,054h,006h,000h,0eeh,06ch,0feh	; bd5f  .H.KR.DNihT...l.
	defb 0e4h,0a6h,052h,0f5h,055h,041h,058h,067h,000h,05eh,049h,053h,06ch,051h,047h,04dh	; bd6f  ..R.UAXg.^ISlQGM
	defb 065h,006h,0feh,07ah,07fh,09dh,055h,000h,042h,050h,045h,052h,068h,045h,053h,003h	; bd7f  e..z..U.BPERhES.
	defb 042h,045h,059h,0feh,0bah,0ddh,011h,0bah,011h,0bah,058h,0f0h,055h,065h,068h,062h	; bd8f  BEY.......X.Uehb
	defb 058h,052h,003h,040h,068h,006h,0fah,00ah,00ah,080h,0aah,098h,07bh,020h,058h,000h	; bd9f  XR.@h.......{ X.
	defb 058h,049h,04bh,04fh,000h,049h,058h,0feh,044h,04ah,054h,0d6h,055h,000h,06eh,07bh	; bdaf  XIKO.IX.DJT.U.n{
	defb 0ach,09ah,090h,06fh,053h,0d1h,051h,003h,048h,04fh,006h,0feh,04eh,069h,059h,000h	; bdbf  ...oS.Q.HO..NiY.
	defb 04eh,06dh,054h,000h,057h,045h,003h,041h,06ch,0feh,04bh,0a5h,042h,050h,0a5h,042h	; bdcf  NmT.WE.Al.K.BP.B
	defb 04bh,052h,058h,049h,053h,006h,0fdh,00ah,00ah,0c2h,0dah,000h,0bah,0dah,045h,003h	; bddf  KRXIS.........E.
	defb 000h,049h,058h,000h,062h,06ah,047h,062h,0feh,049h,06bh,069h,063h,04ch,041h,000h	; bdef  .IX.bjGb.IkicLA.
	defb 044h,04ah,054h,0d6h,06eh,07bh,0ach,09ah,090h,06fh,06ch,0feh,04bh,06dh,04bh,003h	; bdff  DJT.n{...ol.KmK.
	defb 051h,058h,0eeh,06ch,0e4h,0a6h,052h,000h,059h,047h,003h,047h,06dh,052h,003h,0feh	; be0f  QX.l..R.YG.GmR..
	defb 0dch,045h,06dh,049h,053h,06ch,001h,001h,0fdh,04eh,04bh,052h,000h,049h,058h,000h	; be1f  .EmISl...NKR.IX.
	defb 050h,04bh,003h,0a5h,042h,058h,000h,04ch,05ch,003h,052h,058h,0feh,0bah,0dah,045h	; be2f  PK..BX.L\.RX...E
	defb 003h,0f2h,053h,053h,062h,055h,000h,040h,066h,06dh,049h,053h,06ch,001h,001h,0feh	; be3f  ..SSbU.@fmISl...
	defb 00ah,00ah,0b3h,000h,049h,043h,04fh,045h,066h,045h,055h,0c8h,044h,042h,001h,0feh	; be4f  ....ICOEfEU.DB..
	defb 07bh,0ach,09ah,090h,001h,001h,00ah,00ah,03ch,0fah,0f9h,03bh,049h,058h,000h,08ch	; be5f  {.......<...IX..
	defb 09dh,07fh,071h,001h,03ch,0feh,08dh,003h,079h,0afh,001h,083h,003h,07ch,0afh,001h	; be6f  ..q.<...y....|..
	defb 08ch,003h,076h,003h,0afh,001h,077h,003h,07bh,0ach,001h,0fah,0fch,03bh,045h,04fh	; be7f  ..v...w.{.....EO
	defb 047h,054h,054h,000h,04dh,041h,045h,047h,054h,06dh,04fh,003h,057h,03ch,0fah,0a0h	; be8f  GTT.MAEGTmO.W<..
	defb 0beh	; be9f

; ----------------------------------------------------------------------
; DATOS mensaje_23_BEA0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (10
;   bytes)
;   0xbea0..0xbeaa  (10 bytes)
DATA_mensaje_23_BEA0:
	defb 0fbh,03bh,06eh,071h,097h,079h,0f1h,06fh,03ch,0ffh	; bea0  ..nq.y.o<.

; ----------------------------------------------------------------------
; DATOS mensajes_23_BEAA: 1 palabras: los mensajes de la sala 267 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbeaa..0xbeac  (2 bytes)
DATA_mensajes_23_BEAA:
	defb 0ach,0beh	; beaa

; ----------------------------------------------------------------------
; DATOS mensaje_23_BEAC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0xbeac..0xbeb8  (12 bytes)
DATA_mensaje_23_BEAC:
	defb 0fbh,03bh,06eh,08ch,098h,092h,09dh,063h,05eh,06fh,03ch,0ffh	; beac  ..n....c^o<.

; ----------------------------------------------------------------------
; DATOS mensajes_23_BEB8: 1 palabras: los mensajes de la sala 273 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbeb8..0xbeba  (2 bytes)
DATA_mensajes_23_BEB8:
	defb 0bah,0beh	; beb8

; ----------------------------------------------------------------------
; DATOS mensaje_23_BEBA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (77
;   bytes)
;   0xbeba..0xbf07  (77 bytes)
DATA_mensaje_23_BEBA:
	defb 0f8h,03bh,0f2h,059h,000h,065h,048h,003h,06dh,04bh,0a3h,058h,000h,047h,050h,06ch	; beba  ...Y.eH.mK.X.GPl
	defb 000h,045h,067h,052h,0feh,049h,053h,045h,003h,000h,044h,049h,068h,0b6h,055h,000h	; beca  .EgR.ISE..DIh.U.
	defb 065h,048h,003h,06dh,06ch,04ch,068h,006h,0feh,049h,069h,059h,000h,049h,053h,045h	; beda  eH.mlLh..IiY.ISE
	defb 003h,000h,044h,049h,0a6h,04fh,0eah,000h,05fh,054h,045h,003h,0feh,0f2h,06ch,000h	; beea  ..DI.O.._TE...l.
	defb 04bh,06dh,04bh,003h,068h,04fh,061h,052h,003h,040h,068h,03ch,0ffh	; befa  KmK.hOaR.@h<.

; ----------------------------------------------------------------------
; DATOS mensajes_23_BF07: 1 palabras: los mensajes de la sala 177 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbf07..0xbf09  (2 bytes)
DATA_mensajes_23_BF07:
	defb 009h,0bfh	; bf07

; ----------------------------------------------------------------------
; DATOS mensaje_23_BF09: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (58
;   bytes)
;   0xbf09..0xbf43  (58 bytes)
DATA_mensaje_23_BF09:
	defb 0f8h,03bh,0c6h,059h,077h,003h,097h,020h,077h,0d5h,058h,000h,05bh,06dh,04ch,041h	; bf09  ...Yw.. w.X.[mLA
	defb 06ch,0feh,051h,047h,0a6h,04fh,062h,058h,04fh,003h,006h,000h,05bh,06dh,04ch,041h	; bf19  l.QG.ObXO...[mLA
	defb 058h,0d3h,055h,059h,0feh,07fh,082h,055h,058h,05ah,003h,068h,000h,050h,045h,04ch	; bf29  X.UY...UXZ.h.PEL
	defb 041h,06ah,045h,003h,040h,0a6h,04fh,065h,03ch,0ffh	; bf39  AjE.@.Oe<.

; ----------------------------------------------------------------------
; DATOS mensajes_23_BF43: 1 palabras: los mensajes de la sala 206 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbf43..0xbf45  (2 bytes)
DATA_mensajes_23_BF43:
	defb 045h,0bfh	; bf43

; ----------------------------------------------------------------------
; DATOS mensaje_23_BF45: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0xbf45..0xbf6e  (41 bytes)
DATA_mensaje_23_BF45:
	defb 0f8h,03bh,080h,0aah,098h,07bh,020h,0e3h,0a6h,052h,000h,089h,004h,09dh,089h,004h	; bf45  .....{ ..R......
	defb 020h,07ch,0c5h,055h,0feh,04fh,041h,04dh,051h,055h,000h,04eh,04fh,003h,052h,066h	; bf55   |.U.OAMQU.NO.Rf
	defb 069h,04fh,0c7h,0d2h,067h,0e2h,065h,03ch,0ffh	; bf65  iO..g.e<.

; ----------------------------------------------------------------------
; DATOS mensajes_23_BF6E: 1 palabras: los mensajes de la sala 237 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbf6e..0xbf70  (2 bytes)
DATA_mensajes_23_BF6E:
	defb 070h,0bfh	; bf6e

; ----------------------------------------------------------------------
; DATOS mensaje_23_BF70: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (relleno_ff BF95-C000); lo leen p00:4E76, nadie (144 bytes)
;   0xbf70..0xc000  (144 bytes)
DATA_mensaje_23_BF70:
	defb 0f8h,03bh,0c5h,0c0h,058h,000h,040h,050h,049h,050h,055h,000h,018h,0bah,0c1h,0c5h	; bf70  ....X.@PIPU.....
	defb 045h,003h,0feh,0e1h,06bh,069h,000h,0bah,0dah,06ch,047h,068h,04bh,061h,052h,041h	; bf80  E...ki...lGhKaRA
	defb 068h,06dh,04fh,003h,03ch,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf90  hmO.<...........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfa0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff0  ................
