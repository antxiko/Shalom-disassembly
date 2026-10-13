; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 26 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS mensaje_25_9FEF_cola: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba (sigue del banco 25); lo
;   leen p00:4E76 (45 bytes)
;   0xa000..0xa02d  (45 bytes)
DATA_mensaje_25_9FEF_cola:
	defb 049h,045h,003h,00ah,00ah,001h,002h,03ch,0feh,0fch,03bh,044h,0b6h,045h,003h,000h	; a000  IE.....<...D.E..
	defb 079h,003h,077h,003h,06ch,000h,040h,045h,003h,061h,068h,0feh,04bh,0a4h,042h,046h	; a010  y.w.l.@E.ah.K.BF
	defb 065h,042h,058h,000h,046h,0a5h,042h,04eh,045h,001h,001h,03ch,0ffh	; a020  eBX.F.BNE..<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A02D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (119
;   bytes)
;   0xa02d..0xa0a4  (119 bytes)
DATA_mensaje_26_A02D:
	defb 0fch,03bh,0c9h,06ch,000h,04fh,047h,066h,06dh,052h,003h,041h,068h,001h,002h,03ch	; a02d  ...l.OGfmR.Ah..<
	defb 0fdh,0f8h,03bh,089h,089h,089h,089h,000h,044h,04bh,043h,052h,063h,06ah,042h,006h	; a03d  ........DKCRcjB.
	defb 0feh,049h,049h,055h,041h,068h,000h,0bah,0ddh,053h,003h,062h,059h,000h,0c6h,058h	; a04d  .IIUAh...S.bY..X
	defb 0feh,052h,055h,065h,067h,000h,05fh,054h,000h,04dh,06dh,058h,042h,04ah,069h,0feh	; a05d  .RUeg._T.MmXBJi.
	defb 079h,003h,077h,003h,04ah,05eh,055h,000h,051h,045h,043h,068h,058h,04fh,003h,001h	; a06d  y.w.J^U.QEChXO..
	defb 001h,03ch,0fdh,0fbh,03bh,0c9h,052h,000h,044h,04eh,06ah,04bh,041h,049h,053h,06ch	; a07d  .<....R.DNjKAISl
	defb 001h,0feh,040h,054h,04fh,059h,000h,0bah,058h,0f0h,06ch,000h,053h,003h,042h,0dbh	; a08d  ..@TOY..X.l.S.B.
	defb 0a6h,052h,068h,058h,001h,03ch,0ffh	; a09d

; ----------------------------------------------------------------------
; DATOS mensaje_26_A0A4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (40
;   bytes)
;   0xa0a4..0xa0cc  (40 bytes)
DATA_mensaje_26_A0A4:
	defb 0f8h,03bh,049h,049h,06ch,000h,0b8h,051h,048h,066h,069h,04fh,000h,041h,04bh,003h	; a0a4  ..IIl..QHfiO.AK.
	defb 0a5h,042h,0feh,054h,045h,003h,041h,059h,000h,060h,065h,042h,006h,000h,04ah,066h	; a0b4  .B.TE.AY.`eB..Jf
	defb 059h,003h,04fh,003h,001h,03ch,0fah,005h	; a0c4  Y.O..<..

; ----------------------------------------------------------------------
; DATOS mensaje_26_A0CC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0xa0cc..0xa0e9  (29 bytes)
DATA_mensaje_26_A0CC:
	defb 0fbh,03bh,049h,049h,045h,003h,000h,0bch,058h,000h,04bh,0a4h,042h,046h,0a5h,042h	; a0cc  ..IIE...X.K.BF.B
	defb 058h,0feh,05dh,06dh,046h,0a5h,050h,000h,054h,058h,057h,03ch,0ffh	; a0dc  X.]mF.P.TXW<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A0E9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0xa0e9..0xa112  (41 bytes)
DATA_mensaje_26_A0E9:
	defb 0fbh,03bh,04bh,06dh,04bh,003h,0a3h,059h,000h,0f1h,0bah,058h,000h,065h,042h,04fh	; a0e9  ..KmK..Y...X.eBO
	defb 003h,048h,053h,003h,0feh,05fh,06dh,054h,000h,0c9h,045h,055h,000h,053h,067h,051h	; a0f9  .HS.._mT..EU.SgQ
	defb 045h,069h,052h,068h,05fh,04fh,041h,03ch,0ffh	; a109  EiRh_OA<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A112: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (63
;   bytes)
;   0xa112..0xa151  (63 bytes)
DATA_mensaje_26_A112:
	defb 0fch,03bh,040h,0a6h,000h,05eh,052h,0a6h,001h,03ch,0feh,0fbh,03bh,0f7h,0fch,001h	; a112  ..@..^R..<......
	defb 049h,058h,0bah,04fh,050h,053h,003h,042h,04ch,068h,058h,002h,03ch,0feh,0fch,03bh	; a122  IX.OPS.BLhX.<...
	defb 040h,058h,000h,046h,0a5h,042h,04eh,06ch,000h,04fh,044h,04dh,059h,003h,0feh,062h	; a132  @X.F.BNl.ODMY..b
	defb 053h,053h,003h,042h,067h,055h,000h,054h,068h,04fh,003h,06ah,042h,03ch,0ffh	; a142  SS.BgU.ThO.jB<.

; ----------------------------------------------------------------------
; DATOS mensajes_26_A151: 4 palabras: los mensajes de la sala 524 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (8
;   bytes)
;   0xa151..0xa159  (8 bytes)
DATA_mensajes_26_A151:
	defb 059h,0a1h	; a151
	defb 08eh,0a1h	; a153
	defb 0d3h,0a1h	; a155
	defb 024h,0a2h	; a157

; ----------------------------------------------------------------------
; DATOS mensaje_26_A159: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (53
;   bytes)
;   0xa159..0xa18e  (53 bytes)
DATA_mensaje_26_A159:
	defb 0f8h,03bh,049h,058h,044h,047h,055h,000h,0c6h,04fh,050h,058h,000h,0c5h,0d0h,045h	; a159  ..IXDGU..OPX...E
	defb 003h,0feh,041h,066h,0a6h,04bh,0a3h,041h,05eh,04ch,006h,000h,04eh,058h,0efh,045h	; a169  ..Af.K.A^L..NX.E
	defb 066h,0feh,044h,069h,041h,058h,000h,04bh,054h,06ch,000h,044h,042h,048h,053h,067h	; a179  f.DiAX.KTl.DBHSg
	defb 0d3h,04ah,041h,03ch,0ffh	; a189

; ----------------------------------------------------------------------
; DATOS mensaje_26_A18E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (69
;   bytes)
;   0xa18e..0xa1d3  (69 bytes)
DATA_mensaje_26_A18E:
	defb 0fch,03bh,049h,003h,0a6h,047h,06dh,000h,049h,003h,0a6h,047h,06dh,000h,049h,003h	; a18e  ..I..Gm.I..Gm.I.
	defb 0a6h,047h,06dh,03ch,0feh,0fbh,03bh,053h,003h,042h,04bh,04fh,058h,002h,03ch,0feh	; a19e  .Gm<...S.BKOX.<.
	defb 0fch,03bh,04ch,048h,003h,01dh,001h,000h,05eh,06bh,067h,059h,000h,05ah,003h,04bh	; a1ae  ..LH....^kgY.Z.K
	defb 003h,06dh,058h,0feh,057h,01dh,050h,0a3h,06dh,000h,04fh,003h,066h,048h,04fh,003h	; a1be  .mX.W.P.m.O.fHO.
	defb 04dh,003h,001h,03ch,0ffh	; a1ce

; ----------------------------------------------------------------------
; DATOS mensaje_26_A1D3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (81
;   bytes)
;   0xa1d3..0xa224  (81 bytes)
DATA_mensaje_26_A1D3:
	defb 0f8h,03bh,041h,045h,045h,003h,052h,003h,04bh,04fh,045h,002h,03ch,0feh,0fch,03bh	; a1d3  ..AEE.R.KOE.<...
	defb 040h,069h,04bh,003h,0a3h,01dh,000h,089h,096h,058h,000h,04fh,04bh,055h,062h,00ah	; a1e3  @iK......X.OKUb.
	defb 00ah,03ch,0fbh,03bh,053h,052h,062h,000h,040h,067h,045h,003h,04fh,041h,000h,062h	; a1f3  .<..SRb.@gE.OA.b
	defb 058h,052h,003h,04bh,04fh,03ch,0fdh,0f8h,03bh,04eh,042h,052h,003h,04ch,045h,000h	; a203  XR.KO<...NBR.LE.
	defb 0b7h,055h,0d2h,0a6h,052h,0feh,041h,04fh,04fh,003h,048h,05eh,04bh,04fh,045h,03ch	; a213  .U..R.AOO.H^KOE<
	defb 0ffh	; a223

; ----------------------------------------------------------------------
; DATOS mensaje_26_A224: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (48
;   bytes)
;   0xa224..0xa254  (48 bytes)
DATA_mensaje_26_A224:
	defb 0f8h,03bh,054h,045h,003h,041h,0ddh,000h,044h,05ah,046h,053h,061h,04bh,052h,0feh	; a224  ..TE.A..DZFSaKR.
	defb 062h,042h,04bh,06bh,048h,000h,040h,067h,05eh,04dh,06dh,052h,003h,04bh,04fh,006h	; a234  bBKkH.@g^MmR.KO.
	defb 0feh,052h,003h,059h,000h,044h,048h,003h,06dh,0b7h,052h,003h,00ah,00ah,03ch,0ffh	; a244  .R.Y.DH.m.R...<.

; ----------------------------------------------------------------------
; DATOS mensajes_26_A254: 11 palabras: los mensajes de la sala 526 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (22 bytes)
;   0xa254..0xa26a  (22 bytes)
DATA_mensajes_26_A254:
	defb 06ah,0a2h	; a254
	defb 0a1h,0a2h	; a256
	defb 0b8h,0a2h	; a258
	defb 0d6h,0a2h	; a25a
	defb 00ah,0a3h	; a25c
	defb 034h,0a3h	; a25e
	defb 061h,0a3h	; a260
	defb 07eh,0a3h	; a262
	defb 09eh,0a3h	; a264
	defb 0e2h,0a3h	; a266
	defb 0cah,0a4h	; a268

; ----------------------------------------------------------------------
; DATOS mensaje_26_A26A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (55
;   bytes)
;   0xa26a..0xa2a1  (55 bytes)
DATA_mensaje_26_A26A:
	defb 0f8h,03bh,044h,04bh,003h,041h,04ah,06dh,000h,049h,058h,0bah,045h,003h,000h,08dh	; a26a  ..DK.AJm.IX.E...
	defb 003h,077h,06ch,0feh,04fh,04ch,048h,052h,000h,047h,069h,04fh,065h,006h,000h,04eh	; a27a  .wl.OLHR.GiOe..N
	defb 04bh,052h,0feh,04ch,041h,05fh,0a3h,047h,06ch,000h,0b8h,051h,048h,052h,047h,069h	; a28a  KR.LA_.Gl..QHRGi
	defb 04fh,06dh,04fh,003h,001h,03ch,0ffh	; a29a

; ----------------------------------------------------------------------
; DATOS mensaje_26_A2A1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0xa2a1..0xa2b8  (23 bytes)
DATA_mensaje_26_A2A1:
	defb 0f8h,03bh,049h,058h,000h,044h,06dh,059h,000h,041h,0a6h,04bh,0a5h,042h,0feh,06bh	; a2a1  ..IX.DmY.A.K.B.k
	defb 04ch,069h,054h,041h,065h,03ch,0ffh	; a2b1

; ----------------------------------------------------------------------
; DATOS mensaje_26_A2B8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (30
;   bytes)
;   0xa2b8..0xa2d6  (30 bytes)
DATA_mensaje_26_A2B8:
	defb 0f8h,03bh,0c9h,045h,000h,052h,003h,046h,068h,049h,053h,045h,003h,000h,040h,069h	; a2b8  ...E.R.FhISE..@i
	defb 059h,003h,0feh,044h,0a6h,04bh,0a3h,0a6h,052h,0d3h,04ah,041h,03ch,0ffh	; a2c8  Y..D.K..R.JA<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A2D6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (52
;   bytes)
;   0xa2d6..0xa30a  (52 bytes)
DATA_mensaje_26_A2D6:
	defb 0fch,03bh,079h,003h,077h,003h,058h,000h,0e1h,069h,068h,000h,059h,003h,04bh,0a5h	; a2d6  ..y.w.X..ih.Y.K.
	defb 06ch,0feh,0edh,067h,04fh,041h,06dh,04fh,003h,048h,053h,003h,00ah,00ah,03ch,0feh	; a2e6  l..gOAmO.HS...<.
	defb 0f8h,03bh,042h,060h,000h,04eh,069h,059h,000h,060h,051h,045h,04bh,041h,058h,042h	; a2f6  ..B`.NiY.`QEKAXB
	defb 00ah,00ah,03ch,0ffh	; a306

; ----------------------------------------------------------------------
; DATOS mensaje_26_A30A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (42
;   bytes)
;   0xa30a..0xa334  (42 bytes)
DATA_mensaje_26_A30A:
	defb 0fch,03bh,04fh,058h,060h,065h,006h,000h,0c9h,052h,003h,062h,000h,041h,041h,045h	; a30a  ..OX`e...R.b.AAE
	defb 066h,0feh,044h,04dh,020h,052h,050h,0a5h,020h,04fh,003h,041h,001h,03ch,0feh,0fbh	; a31a  f.DM RP. O.A.<..
	defb 03bh,0b7h,0e4h,050h,0bch,041h,06bh,057h,03ch,0ffh	; a32a  ...P.AkW<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A334: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (45
;   bytes)
;   0xa334..0xa361  (45 bytes)
DATA_mensaje_26_A334:
	defb 0fch,03bh,07ah,072h,098h,06ch,000h,04fh,04ch,048h,052h,063h,0a6h,04fh,04bh,003h	; a334  ..zr.l.OLHRc.OK.
	defb 0a3h,057h,01dh,045h,03ch,0f8h,03bh,0f7h,0fch,053h,003h,058h,058h,000h,049h,053h	; a344  .W.E<....S.XX.IS
	defb 059h,003h,053h,059h,0feh,0dbh,043h,05eh,04dh,06dh,054h,03ch,0ffh	; a354  Y.SY..C^MmT<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A361: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0xa361..0xa37e  (29 bytes)
DATA_mensaje_26_A361:
	defb 0fbh,03bh,04bh,045h,04fh,054h,041h,06bh,006h,000h,04bh,003h,05bh,003h,06dh,04fh	; a361  ..KEOTAk..K.[.mO
	defb 050h,052h,003h,0feh,04ah,045h,003h,04bh,05eh,04bh,0a5h,03ch,0ffh	; a371  PR..JE.K^K.<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A37E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0xa37e..0xa39e  (32 bytes)
DATA_mensaje_26_A37E:
	defb 0f8h,03bh,041h,04fh,041h,001h,000h,00ah,00ah,04eh,042h,04bh,003h,0a3h,001h,0feh	; a37e  ..AOA....NBK....
	defb 0dbh,041h,04fh,003h,04bh,04fh,001h,000h,096h,020h,084h,04fh,003h,001h,03ch,0ffh	; a38e  .AO.KO... .O..<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A39E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (68
;   bytes)
;   0xa39e..0xa3e2  (68 bytes)
DATA_mensaje_26_A39E:
	defb 0fch,03bh,06eh,096h,020h,084h,06fh,053h,041h,042h,058h,059h,000h,089h,004h,09dh	; a39e  ..n. .oSABXY....
	defb 055h,056h,068h,00ah,03ch,0fbh,03bh,04eh,069h,059h,000h,096h,020h,08eh,052h,003h	; a3ae  UVh.<..NiY.. .R.
	defb 04bh,0a5h,03ch,0feh,0f8h,03bh,096h,020h,084h,053h,041h,042h,058h,059h,000h,08eh	; a3be  K.<.... .SABXY..
	defb 07eh,003h,000h,00ah,00ah,062h,053h,041h,0c1h,0d0h,054h,06dh,04bh,003h,0a3h,00ah	; a3ce  ~....bSA..TmK...
	defb 00ah,006h,0fah,00ch	; a3de

; ----------------------------------------------------------------------
; DATOS mensaje_26_A3E2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (232
;   bytes)
;   0xa3e2..0xa4ca  (232 bytes)
DATA_mensaje_26_A3E2:
	defb 0c9h,052h,003h,062h,04eh,058h,0ebh,000h,0bch,0c1h,053h,000h,048h,041h,063h,047h	; a3e2  .R.bNX....S.HAcG
	defb 04bh,052h,0feh,0ech,054h,054h,041h,0b2h,06ch,052h,055h,0d2h,069h,000h,0c9h,05ah	; a3f2  KR..TTA.lRU.i..Z
	defb 003h,0a3h,047h,057h,06dh,062h,0feh,0e7h,046h,051h,051h,003h,048h,052h,041h,068h	; a402  ..GWmb..FQQ.HRAh
	defb 066h,04bh,041h,006h,000h,0cfh,0d0h,054h,066h,0feh,079h,003h,077h,003h,058h,0e1h	; a412  fKA....Tf.y.w.X.
	defb 06bh,069h,068h,059h,003h,04bh,0a5h,062h,0edh,0a6h,053h,068h,04bh,003h,0a3h,06ah	; a422  kihY.K.b..ShK..j
	defb 006h,0fdh,0fch,03bh,04eh,058h,096h,020h,084h,059h,000h,053h,003h,049h,055h,041h	; a432  ....NX. .Y.S.IUA
	defb 068h,058h,002h,03ch,0feh,0f8h,03bh,082h,003h,0afh,083h,003h,09ah,0afh,077h,050h	; a442  hX.<..........wP
	defb 05dh,042h,06ch,000h,08fh,084h,08fh,05ch,0feh,08fh,084h,08fh,05ch,053h,0dch,048h	; a452  ]Bl....\....\S.H
	defb 059h,003h,000h,089h,071h,076h,0aeh,045h,003h,040h,067h,0feh,04eh,049h,055h,04ch	; a462  Y...qv.E.@g.NIUL
	defb 06dh,052h,003h,044h,068h,04eh,042h,054h,006h,0fdh,04bh,045h,04bh,000h,04ch,054h	; a472  mR.DhNBT..KEK.LT
	defb 040h,066h,04bh,058h,04fh,061h,000h,0efh,045h,003h,047h,045h,003h,0feh,06bh,045h	; a482  @fKXOa..E.GE..kE
	defb 066h,054h,047h,054h,067h,000h,0e7h,046h,052h,045h,043h,0a6h,04fh,062h,058h,059h	; a492  fTGTg..FREC.ObXY
	defb 0feh,044h,066h,06dh,058h,04bh,003h,0a3h,03ch,0fdh,0fch,03bh,0f7h,0fbh,000h,044h	; a4a2  .DfmXK..<......D
	defb 0b6h,000h,0dch,0a6h,052h,049h,041h,03ch,0feh,0fbh,03bh,0b3h,04ah,066h,000h,0c9h	; a4b2  ....RIA<....Jf..
	defb 0c8h,0a6h,052h,068h,058h,001h,03ch,0ffh	; a4c2  ..RhX.<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A4CA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (38
;   bytes)
;   0xa4ca..0xa4f0  (38 bytes)
DATA_mensaje_26_A4CA:
	defb 0f8h,03bh,06bh,04bh,045h,003h,000h,0edh,0a6h,052h,041h,068h,058h,059h,0feh,04eh	; a4ca  ..kKE....RAhXY.N
	defb 069h,04fh,003h,048h,04bh,003h,063h,006h,000h,053h,003h,042h,045h,000h,0b7h,06ch	; a4da  iO.HK.c..S.BE..l
	defb 051h,048h,052h,00ah,03ch,0ffh	; a4ea

; ----------------------------------------------------------------------
; DATOS mensajes_26_A4F0: 1 palabras: los mensajes de la sala 527 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xa4f0..0xa4f2  (2 bytes)
DATA_mensajes_26_A4F0:
	defb 0f2h,0a4h	; a4f0

; ----------------------------------------------------------------------
; DATOS mensaje_26_A4F2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (69
;   bytes)
;   0xa4f2..0xa537  (69 bytes)
DATA_mensaje_26_A4F2:
	defb 0fch,03bh,06bh,04fh,045h,003h,04bh,045h,003h,000h,040h,068h,001h,03ch,0feh,0fbh	; a4f2  ..kOE.KE..@h.<..
	defb 03bh,050h,045h,003h,042h,06bh,03ch,0fdh,0fch,03bh,04bh,003h,0a3h,040h,000h,06bh	; a502  .PE.Bk<...K..@.k
	defb 04fh,040h,061h,045h,002h,03ch,0feh,0fbh,03bh,05dh,06dh,053h,055h,000h,047h,041h	; a512  O@aE.<...]mSU.GA
	defb 041h,04bh,003h,000h,059h,0a6h,052h,068h,058h,057h,006h,0feh,040h,069h,059h,000h	; a522  AK..Y.RhXW..@iY.
	defb 047h,062h,065h,03ch,0ffh	; a532

; ----------------------------------------------------------------------
; DATOS mensajes_26_A537: 14 palabras: los mensajes de la sala 528 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (28 bytes)
;   0xa537..0xa553  (28 bytes)
DATA_mensajes_26_A537:
	defb 053h,0a5h	; a537
	defb 007h,0a6h	; a539
	defb 040h,0a6h	; a53b
	defb 059h,0a6h	; a53d
	defb 08eh,0a6h	; a53f
	defb 0f5h,0a6h	; a541
	defb 05ch,0a7h	; a543
	defb 096h,0a7h	; a545
	defb 07dh,0a8h	; a547
	defb 0b2h,0a8h	; a549
	defb 08eh,0a9h	; a54b
	defb 01ch,0aah	; a54d
	defb 04dh,0aah	; a54f
	defb 07bh,0aah	; a551

; ----------------------------------------------------------------------
; DATOS mensaje_26_A553: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (180
;   bytes)
;   0xa553..0xa607  (180 bytes)
DATA_mensaje_26_A553:
	defb 0f8h,03bh,0c6h,059h,000h,08dh,004h,08dh,004h,09ah,09dh,058h,000h,051h,05eh,0feh	; a553  ...Y.......X.Q^.
	defb 070h,08bh,09ah,082h,003h,0a8h,082h,052h,003h,04ch,006h,000h,0f7h,0fch,0feh,040h	; a563  p......R.L.....@
	defb 054h,04fh,059h,000h,049h,058h,0c2h,0c3h,055h,000h,046h,052h,045h,066h,0feh,053h	; a573  TOY.IX..U.FREf.S
	defb 052h,062h,000h,041h,0a6h,04bh,0a5h,042h,048h,06dh,061h,041h,0fdh,0e7h,046h,052h	; a583  Rb.A.K.BHmaA..FR
	defb 041h,05eh,04ch,057h,006h,000h,040h,054h,04fh,058h,0eah,0f3h,055h,0feh,041h,068h	; a593  A^LW..@TOX..U.Ah
	defb 0eah,059h,000h,04eh,058h,0f4h,04eh,058h,0f4h,055h,000h,054h,045h,003h,04ah,069h	; a5a3  .Y.NX.NX.U.TE.Ji
	defb 052h,0feh,041h,04fh,058h,055h,000h,0b3h,059h,000h,0f1h,0bah,04fh,050h,058h,000h	; a5b3  R.AOXU..Y...OPX.
	defb 054h,063h,05fh,06ch,0feh,046h,046h,053h,053h,003h,048h,000h,0bah,0dah,058h,04fh	; a5c3  Tc_l.FFSS.H...XO
	defb 061h,055h,0fdh,051h,047h,04bh,052h,041h,05eh,04ch,006h,000h,0f5h,058h,0f2h,059h	; a5d3  aU.QGKRA^L...X.Y
	defb 000h,04eh,06dh,054h,0feh,040h,054h,04fh,058h,000h,0dch,041h,06ch,000h,05dh,05dh	; a5e3  .NmT.@TOX..Al.]]
	defb 043h,05eh,04bh,047h,0feh,0b8h,051h,061h,052h,041h,068h,049h,053h,052h,003h,04bh	; a5f3  C^KG..QaRAhISR.K
	defb 0a5h,042h,03ch,0ffh	; a603

; ----------------------------------------------------------------------
; DATOS mensaje_26_A607: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (57
;   bytes)
;   0xa607..0xa640  (57 bytes)
DATA_mensaje_26_A607:
	defb 0f8h,03bh,040h,054h,04fh,058h,0eah,0f3h,055h,000h,062h,053h,003h,0a6h,04fh,0eah	; a607  ..@TOX..U.bS..O.
	defb 062h,0feh,0b3h,058h,0b7h,0e4h,050h,06ch,000h,06bh,04ch,069h,068h,049h,053h,058h	; a617  b..X..Pl.kLihISX
	defb 054h,041h,065h,042h,0feh,0bah,0dah,055h,000h,04bh,06dh,04dh,051h,055h,000h,04bh	; a627  TAeB...U.KmMQU.K
	defb 052h,040h,048h,003h,054h,04ah,041h,03ch,0ffh	; a637  R@H.TJA<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A640: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (25
;   bytes)
;   0xa640..0xa659  (25 bytes)
DATA_mensaje_26_A640:
	defb 0f8h,03bh,054h,06dh,04bh,003h,058h,042h,043h,055h,000h,05ch,041h,040h,06dh,0feh	; a640  ..TmK.XBCU.\A@m.
	defb 040h,066h,06dh,049h,053h,06ch,001h,03ch,0ffh	; a650  @fmISl.<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_A659: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (53
;   bytes)
;   0xa659..0xa68e  (53 bytes)
DATA_mensaje_26_A659:
	defb 0fbh,03bh,089h,004h,09dh,089h,004h,020h,07ch,0c5h,058h,000h,059h,059h,046h,003h	; a659  ....... |.X.YYF.
	defb 05fh,058h,0feh,070h,08bh,09ah,082h,003h,0a8h,082h,006h,000h,063h,04ah,04bh,04ah	; a669  _X.p........cJKJ
	defb 053h,000h,051h,065h,04ah,06ch,0feh,0e4h,0a6h,04fh,000h,04ch,059h,003h,066h,04bh	; a679  S.QeJl...O.LY.fK
	defb 041h,0bah,065h,03ch,0ffh	; a689

; ----------------------------------------------------------------------
; DATOS mensaje_26_A68E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (103
;   bytes)
;   0xa68e..0xa6f5  (103 bytes)
DATA_mensaje_26_A68E:
	defb 0f8h,03bh,0c6h,059h,0beh,0bfh,058h,0c5h,000h,08dh,004h,08dh,004h,09ah,09dh,052h	; a68e  ...Y..X........R
	defb 003h,040h,068h,006h,0feh,0b3h,049h,04eh,000h,06eh,0c1h,0d5h,052h,003h,06dh,04dh	; a69e  .@h...IN.n..R.mM
	defb 051h,06fh,058h,04ch,05ch,003h,052h,058h,0feh,084h,07eh,003h,06ch,000h,053h,046h	; a6ae  QoXL\.RX..~.l.SF
	defb 040h,045h,04eh,042h,001h,03ch,0fdh,0fch,03bh,06eh,0c1h,0d5h,052h,003h,06dh,04dh	; a6be  @ENB.<...n..R.mM
	defb 051h,06fh,002h,04eh,069h,059h,0f7h,0f9h,058h,0feh,0e4h,0a6h,052h,04fh,078h,003h	; a6ce  Qo.NiY..X...ROx.
	defb 020h,090h,000h,06eh,07bh,0ach,09ah,090h,06fh,058h,0feh,07ah,08bh,003h,07fh,071h	; a6de   ..n{...oX.z...q
	defb 083h,098h,04fh,003h,001h,0fah,00eh	; a6ee

; ----------------------------------------------------------------------
; DATOS mensaje_26_A6F5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 6 bloques:
;   (mensaje_26_A75C A75C-A797) (mensaje_26_A796 A796-A87E) (mensaje_26_A87D
;   A87D-A8B3) (mensaje_26_A8B2 A8B2-A98F) (mensaje_26_A98E A98E-AA1C); lo
;   leen p00:4E76 (807 bytes)
;   0xa6f5..0xaa1c  (807 bytes)
DATA_mensaje_26_A6F5:
	defb 04eh,058h,078h,003h,020h,090h,06ch,000h,059h,04bh,003h,061h,04fh,000h,04bh,0a4h	; a6f5  NXx. .l.YK.aO.K.
	defb 06dh,045h,06dh,0feh,074h,099h,059h,000h,049h,058h,077h,003h,097h,020h,077h,0c5h	; a705  mEm.t.Y.IXw.. w.
	defb 0c0h,055h,046h,04fh,06dh,04fh,003h,001h,0feh,078h,003h,020h,090h,053h,074h,099h	; a715  .UFOmO...x. .St.
	defb 053h,020h,0b2h,0c9h,058h,045h,06dh,048h,041h,045h,003h,002h,03ch,0fdh,0f8h,03bh	; a725  S ..XEmHAE..<...
	defb 06eh,0c1h,0d5h,052h,003h,06dh,04dh,051h,06fh,053h,059h,000h,0bah,0ddh,06ch,04ch	; a735  n..R.mMQoSY...lL
	defb 047h,042h,0feh,04fh,061h,058h,0f2h,058h,04eh,042h,0d4h,054h,000h,048h,041h,045h	; a745  GB.OaX.XNB.T.HAE
	defb 047h,054h,058h,04fh,003h,006h,0fah,0f7h,0fch,058h,0eah,0f3h,000h,0bah,0dah,059h	; a755  GTXO.....X.....Y
	defb 000h,0f2h,058h,049h,003h,041h,04bh,055h,0feh,04eh,060h,046h,000h,040h,067h,053h	; a765  ..XI.AKU.N`F.@gS
	defb 040h,066h,064h,068h,000h,051h,05fh,06ch,044h,045h,04ch,006h,04eh,069h,059h,000h	; a775  @fdh.Q_lDEL.NiY.
	defb 0f0h,058h,0deh,055h,07ah,07fh,09dh,045h,003h,0d2h,068h,045h,066h,04fh,003h,006h	; a785  .X.Uz..E..hEfO..
	defb 0fah,04eh,04bh,052h,000h,050h,04bh,003h,0a5h,042h,058h,000h,04ch,05ch,003h,052h	; a795  .NKR.PK..BX.L\.R
	defb 058h,0e7h,046h,053h,04bh,0feh,0e7h,048h,068h,062h,058h,045h,003h,000h,07ah,07fh	; a7a5  X.FSK..HhbXE..z.
	defb 09dh,055h,065h,067h,0feh,05dh,06ah,05dh,003h,04ah,069h,068h,03ch,0fdh,0fch,03bh	; a7b5  .Ueg.]j].Jih<...
	defb 0f2h,059h,000h,04eh,069h,06ch,000h,05bh,04dh,048h,003h,054h,041h,058h,002h,03ch	; a7c5  .Y.Nil.[MH.TAX.<
	defb 0feh,0f8h,03bh,0bah,0ddh,011h,0bah,011h,0bah,045h,003h,000h,05fh,04ch,003h,045h	; a7d5  .........E.._L.E
	defb 066h,000h,07ah,07fh,09dh,06ch,0feh,044h,041h,059h,066h,044h,042h,053h,000h,04bh	; a7e5  f.z..l.DAYfDBS.K
	defb 054h,048h,069h,059h,003h,000h,090h,097h,04fh,003h,03ch,0feh,0fch,03bh,00ah,00ah	; a7f5  THiY....O.<.....
	defb 03ch,0fdh,0f8h,03bh,04eh,058h,04fh,061h,055h,06eh,07bh,0ach,09ah,090h,06fh,045h	; a805  <...NXOaUn{...oE
	defb 003h,040h,068h,058h,04fh,003h,006h,0feh,049h,058h,078h,003h,020h,090h,06ch,059h	; a815  .@hXO...IXx. .lY
	defb 04bh,003h,061h,04fh,000h,040h,054h,04fh,045h,003h,000h,05eh,04ch,003h,0feh,04bh	; a825  K.aO.@TOE..^L..K
	defb 003h,04bh,06dh,058h,0f0h,045h,066h,000h,07ah,07fh,09dh,06ch,0feh,053h,067h,058h	; a835  .KmX.Ef.z..l.SgX
	defb 04eh,003h,046h,054h,04ah,041h,006h,0fdh,04eh,04bh,052h,000h,04ch,05ch,003h,052h	; a845  N.FTJA..NKR.L\.R
	defb 058h,0bah,0dah,06ch,000h,07ah,07fh,09dh,045h,066h,0feh,04ch,047h,042h,058h,04fh	; a855  X..l.z..Ef.LGBXO
	defb 003h,001h,000h,0f7h,0fch,045h,003h,000h,07ah,07fh,09dh,06ch,0feh,042h,050h,04ch	; a865  .....E..z..l.BPL
	defb 043h,068h,058h,04fh,003h,001h,03ch,0fah,0fch,03bh,074h,099h,059h,000h,051h,05eh	; a875  ChXO..<...t.Y.Q^
	defb 066h,054h,041h,0bah,0ddh,04fh,003h,04dh,003h,03ch,0feh,0f8h,03bh,0f2h,045h,003h	; a885  fTA..O.M.<....E.
	defb 0f7h,0fch,06ch,043h,066h,059h,003h,069h,04fh,006h,000h,04eh,069h,052h,003h,0feh	; a895  ..lCfY.iO..NiR..
	defb 04bh,003h,0a4h,042h,05bh,003h,06dh,054h,058h,04fh,003h,03ch,0fah,0f8h,03bh,0bah	; a8a5  K..B[.mTXO.<....
	defb 0ddh,059h,000h,013h,053h,003h,000h,04ah,041h,063h,047h,055h,0b8h,05eh,06bh,069h	; a8b5  .Y..S..JAcGU.^ki
	defb 068h,006h,0c6h,058h,0eah,0f3h,059h,075h,003h,097h,072h,07ch,006h,000h,089h,004h	; a8c5  h..X..Yu..r|....
	defb 09dh,089h,004h,020h,07ch,058h,0feh,0eah,0f3h,059h,079h,003h,077h,003h,006h,04eh	; a8d5  ... |X...Yy.w..N
	defb 04bh,052h,000h,0f7h,0fch,058h,0eah,0f3h,059h,0feh,07ah,07fh,09dh,001h,03ch,0fdh	; a8e5  KR...X..Y.z...<.
	defb 0fch,03bh,051h,05eh,067h,000h,074h,099h,045h,003h,000h,049h,058h,0eah,0f3h,055h	; a8f5  ..Q^g.t.E..IX..U
	defb 046h,052h,0feh,079h,003h,077h,003h,053h,000h,04fh,04fh,045h,042h,000h,089h,091h	; a905  FR.y.w.S.OOEB...
	defb 055h,054h,0a6h,04fh,058h,059h,0feh,074h,099h,058h,0eah,0f3h,055h,000h,07ah,07fh	; a915  UT.OXY.t.X..U.z.
	defb 09dh,053h,04fh,04fh,045h,042h,0feh,050h,045h,066h,06ch,000h,051h,048h,068h,04fh	; a925  .SOOEB.PEfl.QHhO
	defb 061h,054h,058h,045h,001h,002h,03ch,0fdh,0f8h,03bh,04eh,042h,04fh,003h,006h,000h	; a935  aTXE..<...NBO...
	defb 062h,04bh,000h,0f7h,0fch,045h,003h,000h,079h,003h,077h,003h,055h,0feh,05eh,048h	; a945  bK...E..y.w.U.^H
	defb 068h,065h,042h,054h,049h,053h,045h,003h,040h,069h,059h,003h,000h,0bah,0ddh,0c2h	; a955  heBTISE.@iY.....
	defb 0c3h,059h,0feh,049h,058h,0eah,0f3h,052h,003h,044h,06bh,068h,006h,05ah,041h,052h	; a965  .Y.IX..R.Dkh.ZAR
	defb 059h,0f7h,0fch,058h,0feh,0eah,0f3h,062h,000h,053h,042h,04dh,003h,06dh,000h,054h	; a975  Y..X...b.SBM.m.T
	defb 041h,062h,058h,053h,054h,068h,001h,03ch,0fah,0fch,03bh,0f7h,0f9h,059h,000h,049h	; a985  AbXSTh.<.....Y.I
	defb 058h,049h,053h,06ch,0edh,0a6h,052h,041h,04fh,06dh,0feh,04fh,003h,06ah,042h,045h	; a995  XISl..RAOm.O.jBE
	defb 002h,03ch,0feh,0f8h,03bh,00ah,00ah,03ch,0fdh,0fbh,03bh,0edh,0a6h,052h,04fh,06dh	; a9a5  .<.....<.....ROm
	defb 04bh,003h,0a3h,054h,041h,002h,052h,003h,062h,000h,044h,04eh,066h,047h,0feh,0f7h	; a9b5  K..TA.R.b.DNfG..
	defb 0fch,055h,000h,04eh,06dh,054h,0e8h,045h,003h,048h,058h,078h,003h,020h,090h,06ch	; a9c5  .U.NmT.E.HXx. .l
	defb 0feh,04ah,04dh,068h,058h,045h,003h,000h,049h,06bh,047h,052h,000h,045h,047h,04eh	; a9d5  .JMhXE..IkGR.EGN
	defb 042h,053h,0feh,04bh,052h,04fh,058h,065h,03ch,0fdh,0f8h,03bh,0f7h,0f9h,059h,000h	; a9e5  BS.KROXe<.....Y.
	defb 063h,04ah,04bh,041h,0d6h,04fh,003h,006h,000h,041h,051h,062h,0feh,0f7h,0fch,058h	; a9f5  cJKA.O...AQb...X
	defb 049h,053h,06ch,000h,040h,04fh,04fh,045h,047h,0feh,0b8h,05eh,062h,0a6h,052h,041h	; aa05  ISl.@OOEG..^b.RA
	defb 068h,04fh,003h,06ah,042h,03ch,0ffh	; aa15

; ----------------------------------------------------------------------
; DATOS mensaje_26_AA1C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0xaa1c..0xaa4d  (49 bytes)
DATA_mensaje_26_AA1C:
	defb 0f8h,03bh,0f2h,055h,000h,043h,066h,059h,003h,069h,04fh,000h,062h,058h,065h,006h	; aa1c  ...U.CfY.iO.bXe.
	defb 000h,04ah,040h,0feh,0dch,046h,054h,04ah,041h,006h,000h,0f2h,045h,003h,000h,040h	; aa2c  .J@..FTJA...E..@
	defb 054h,04fh,053h,053h,062h,055h,0feh,044h,066h,069h,06dh,049h,053h,06ch,001h,03ch	; aa3c  TOSSbU.DfimISl.<
	defb 0ffh	; aa4c

; ----------------------------------------------------------------------
; DATOS mensaje_26_AA4D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0xaa4d..0xaa7b  (46 bytes)
DATA_mensaje_26_AA4D:
	defb 0fbh,03bh,0eeh,053h,000h,04dh,041h,046h,003h,058h,000h,064h,042h,04bh,0a3h,006h	; aa4d  ...S.MAF.X.dBK..
	defb 0feh,04eh,04bh,052h,000h,089h,004h,09dh,089h,004h,020h,07ch,0c5h,058h,000h,050h	; aa5d  .NKR...... |.X.P
	defb 050h,044h,063h,058h,0feh,08dh,004h,08dh,004h,09ah,09dh,001h,03ch,0ffh	; aa6d  PDcX........<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_AA7B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensajes_26_AAC0 AAC0-AAC2); lo leen p00:4E76 (71 bytes)
;   0xaa7b..0xaac2  (71 bytes)
DATA_mensaje_26_AA7B:
	defb 0fch,03bh,06eh,07bh,0ach,09ah,090h,06fh,053h,059h,000h,020h,0b2h,00ah,002h,03ch	; aa7b  ..n{...oSY. ...<
	defb 0feh,0f8h,03bh,0c6h,045h,003h,000h,0f7h,0fch,058h,0eah,0f3h,058h,0bah,055h,0feh	; aa8b  ....E....X..X.U.
	defb 04eh,069h,053h,054h,047h,000h,051h,047h,066h,04dh,04fh,000h,078h,003h,020h,090h	; aa9b  NiSTG.QGfMO.x. .
	defb 006h,0feh,0c6h,045h,066h,0f7h,0fch,05ch,058h,091h,0afh,07dh,020h,07bh,003h,054h	; aaab  ...Ef..\X..} {.T
	defb 058h,04fh,003h,03ch,0fah,0c2h,0aah	; aabb

; ----------------------------------------------------------------------
; DATOS mensaje_26_AAC2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0xaac2..0xaad5  (19 bytes)
DATA_mensaje_26_AAC2:
	defb 0fbh,03bh,049h,049h,059h,000h,07fh,003h,071h,093h,058h,000h,063h,05eh,058h,0deh	; aac2  ..IIY...q.X.c^X.
	defb 065h,03ch,0ffh	; aad2

; ----------------------------------------------------------------------
; DATOS mensajes_26_AAD5: 1 palabras: los mensajes de la sala 541 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xaad5..0xaad7  (2 bytes)
DATA_mensajes_26_AAD5:
	defb 0d7h,0aah	; aad5

; ----------------------------------------------------------------------
; DATOS mensaje_26_AAD7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0xaad7..0xaaea  (19 bytes)
DATA_mensaje_26_AAD7:
	defb 0fbh,03bh,049h,049h,059h,000h,07fh,003h,071h,093h,058h,000h,063h,05eh,058h,0deh	; aad7  ..IIY...q.X.c^X.
	defb 065h,03ch,0ffh	; aae7

; ----------------------------------------------------------------------
; DATOS mensajes_26_AAEA: 13 palabras: los mensajes de la sala 542 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (26 bytes)
;   0xaaea..0xab04  (26 bytes)
DATA_mensajes_26_AAEA:
	defb 004h,0abh	; aaea
	defb 011h,0abh	; aaec
	defb 064h,0abh	; aaee
	defb 073h,0abh	; aaf0
	defb 012h,0ach	; aaf2
	defb 030h,0ach	; aaf4
	defb 048h,0ach	; aaf6
	defb 064h,0ach	; aaf8
	defb 07eh,0ach	; aafa
	defb 0a2h,0ach	; aafc
	defb 0cch,0ach	; aafe
	defb 0e9h,0ach	; ab00
	defb 03ah,0adh	; ab02

; ----------------------------------------------------------------------
; DATOS mensaje_26_AB04: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0xab04..0xab11  (13 bytes)
DATA_mensaje_26_AB04:
	defb 0fbh,03bh,04fh,003h,069h,045h,000h,041h,068h,06bh,001h,03ch,0ffh	; ab04  ..O.iE.Ahk.<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_AB11: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (83
;   bytes)
;   0xab11..0xab64  (83 bytes)
DATA_mensaje_26_AB11:
	defb 0f8h,03bh,0c6h,059h,000h,07fh,003h,071h,093h,058h,000h,0f7h,0f8h,065h,006h,0feh	; ab11  ...Y...q.X...e..
	defb 054h,045h,003h,041h,0ddh,000h,049h,049h,055h,000h,053h,04bh,003h,049h,061h,066h	; ab21  TE.A..IIU.SK.Iaf
	defb 069h,052h,0feh,0c1h,0c5h,055h,000h,045h,06dh,04bh,000h,04ah,069h,052h,041h,04fh	; ab31  iR...U.EmK.JiRAO
	defb 058h,006h,0fdh,052h,003h,062h,000h,0f7h,0fch,045h,003h,000h,0c1h,0c5h,06ch,0feh	; ab41  X..R.b...E....l.
	defb 04fh,044h,04bh,052h,047h,069h,04fh,058h,052h,003h,000h,04fh,04ch,045h,0a6h,04fh	; ab51  ODKRGiOXR..OLE.O
	defb 06bh,03ch,0ffh	; ab61

; ----------------------------------------------------------------------
; DATOS mensaje_26_AB64: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0xab64..0xab73  (15 bytes)
DATA_mensaje_26_AB64:
	defb 0fbh,03bh,07fh,003h,071h,093h,058h,000h,065h,042h,04dh,041h,065h,03ch,0ffh	; ab64  ....q.X.eBMAe<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_AB73: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (159
;   bytes)
;   0xab73..0xac12  (159 bytes)
DATA_mensaje_26_AB73:
	defb 0f8h,03bh,04fh,04ch,048h,052h,047h,069h,04fh,000h,044h,069h,041h,055h,0feh,049h	; ab73  ..OLHRGiO.DiAU.I
	defb 058h,000h,063h,05eh,052h,003h,000h,053h,069h,04fh,000h,07fh,003h,071h,093h,06ch	; ab83  X.c^R..SiO...q.l
	defb 0feh,08bh,004h,099h,07dh,003h,09dh,083h,04ch,068h,06bh,006h,0fdh,049h,049h,055h	; ab93  ....}...Lhk..IIU
	defb 000h,014h,051h,058h,000h,07fh,003h,071h,093h,045h,003h,000h,040h,068h,058h,006h	; aba3  ..QX...q.E..@hX.
	defb 0feh,013h,045h,047h,050h,0a4h,042h,005h,014h,045h,047h,050h,0a4h,042h,005h,0feh	; abb3  ..EGP.B..EGP.B..
	defb 016h,045h,047h,050h,0a4h,042h,005h,04eh,04bh,052h,000h,046h,0a4h,042h,0b2h,005h	; abc3  .EGP.B.NKR.F.B..
	defb 0feh,049h,058h,0deh,045h,066h,000h,011h,051h,04fh,003h,048h,000h,04ah,04bh,040h	; abd3  .IX.Ef..QO.H.JK@
	defb 048h,003h,068h,06bh,006h,0fdh,043h,066h,06dh,04fh,003h,000h,07fh,003h,071h,093h	; abe3  H.hk..CfmO....q.
	defb 045h,003h,0b7h,055h,0d2h,066h,054h,041h,0eah,059h,0feh,062h,042h,011h,053h,003h	; abf3  E..U.fTA.Y.bB.S.
	defb 000h,043h,066h,05ah,003h,054h,044h,04dh,059h,003h,041h,041h,06bh,03ch,0ffh	; ac03  .CfZ.TDMY.AAk<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_AC12: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (30
;   bytes)
;   0xac12..0xac30  (30 bytes)
DATA_mensaje_26_AC12:
	defb 0f8h,03bh,04bh,003h,0a3h,040h,000h,013h,045h,047h,050h,0a4h,042h,058h,000h,07fh	; ac12  ..K..@..EGP.BX..
	defb 003h,071h,093h,06ch,0feh,04ah,04bh,040h,048h,003h,068h,06bh,03ch,0ffh	; ac22  .q.l.JK@H.hk<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_AC30: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0xac30..0xac48  (24 bytes)
DATA_mensaje_26_AC30:
	defb 0f8h,03bh,014h,045h,047h,050h,0a4h,042h,045h,003h,000h,041h,041h,058h,057h,006h	; ac30  ...EGP.BE..AAXW.
	defb 000h,053h,003h,042h,04eh,003h,03ch,0ffh	; ac40  .S.BN.<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_AC48: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0xac48..0xac64  (28 bytes)
DATA_mensaje_26_AC48:
	defb 0f8h,03bh,04bh,003h,0a3h,040h,000h,016h,045h,047h,050h,0a4h,042h,058h,062h,058h	; ac48  ..K..@..EGP.BXbX
	defb 06ch,0feh,0e4h,0a6h,052h,0dch,046h,054h,04ah,041h,03ch,0ffh	; ac58  l...R.FTJA<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_AC64: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (26
;   bytes)
;   0xac64..0xac7e  (26 bytes)
DATA_mensaje_26_AC64:
	defb 0f8h,03bh,05eh,06dh,05eh,068h,058h,000h,046h,069h,041h,054h,000h,07fh,003h,071h	; ac64  ..^m^hX.FiAT...q
	defb 093h,06ch,0feh,053h,003h,042h,04eh,003h,03ch,0ffh	; ac74  .l.S.BN.<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_AC7E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0xac7e..0xaca2  (36 bytes)
DATA_mensaje_26_AC7E:
	defb 0f8h,03bh,0f7h,0fch,059h,000h,0b3h,000h,07fh,003h,071h,093h,06ch,0e4h,0a6h,052h	; ac7e  ....Y.....q.l..R
	defb 068h,06bh,006h,04eh,069h,06ch,000h,045h,043h,04bh,052h,045h,066h,055h,000h,04bh	; ac8e  hk.Nil.ECKREfU.K
	defb 052h,057h,03ch,0ffh	; ac9e

; ----------------------------------------------------------------------
; DATOS mensaje_26_ACA2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (42
;   bytes)
;   0xaca2..0xaccc  (42 bytes)
DATA_mensaje_26_ACA2:
	defb 0fch,03bh,049h,058h,000h,07fh,003h,071h,093h,000h,045h,043h,04ch,065h,03ch,0feh	; aca2  ..IX...q..ECLe<.
	defb 0f8h,03bh,04eh,042h,006h,000h,04bh,003h,0a3h,040h,000h,05dh,045h,058h,06ch,0feh	; acb2  ..NB..K..@.]EXl.
	defb 0e4h,0a6h,052h,0dch,046h,054h,04ah,041h,03ch,0ffh	; acc2  ..R.FTJA<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_ACCC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0xaccc..0xace9  (29 bytes)
DATA_mensaje_26_ACCC:
	defb 0f8h,03bh,0c6h,059h,000h,049h,058h,000h,063h,05eh,058h,000h,07fh,003h,071h,093h	; accc  ...Y.IX.c^X...q.
	defb 06ch,0feh,05eh,062h,068h,000h,065h,042h,04dh,041h,065h,03ch,0ffh	; acdc  l.^bh.eBMAe<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_ACE9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (81
;   bytes)
;   0xace9..0xad3a  (81 bytes)
DATA_mensaje_26_ACE9:
	defb 0f8h,03bh,049h,058h,000h,014h,051h,058h,042h,050h,058h,000h,053h,003h,069h,045h	; ace9  ..IX..QXBPX.S.iE
	defb 000h,011h,051h,058h,07fh,003h,071h,093h,059h,000h,0c9h,045h,04bh,066h,000h,05ah	; acf9  ..QX..q.Y..EKf.Z
	defb 05fh,051h,06ch,0feh,055h,046h,003h,0a6h,052h,041h,068h,065h,042h,057h,006h,0fdh	; ad09  _Ql.UF..RAheBW..
	defb 04fh,003h,045h,066h,000h,0c1h,0c5h,045h,003h,000h,0c6h,06ch,000h,045h,06dh,046h	; ad19  O.Ef...E...l.EmF
	defb 06dh,0feh,04bh,052h,041h,04fh,055h,000h,050h,045h,003h,041h,054h,041h,06bh,03ch	; ad29  m.KRAOU.PE.ATAk<
	defb 0ffh	; ad39

; ----------------------------------------------------------------------
; DATOS mensaje_26_AD3A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0xad3a..0xad4c  (18 bytes)
DATA_mensaje_26_AD3A:
	defb 0f8h,03bh,0f7h,0fch,058h,000h,049h,053h,059h,000h,06bh,04ch,069h,054h,041h,06bh	; ad3a  ....X.ISY.kLiTAk
	defb 03ch,0ffh	; ad4a

; ----------------------------------------------------------------------
; DATOS mensajes_26_AD4C: 1 palabras: los mensajes de la sala 543 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xad4c..0xad4e  (2 bytes)
DATA_mensajes_26_AD4C:
	defb 04eh,0adh	; ad4c

; ----------------------------------------------------------------------
; DATOS mensaje_26_AD4E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0xad4e..0xad6a  (28 bytes)
DATA_mensaje_26_AD4E:
	defb 0fbh,03bh,049h,049h,059h,000h,092h,077h,003h,096h,04fh,050h,045h,003h,000h,051h	; ad4e  ..IIY..w..OPE..Q
	defb 047h,0a6h,04fh,0feh,050h,045h,051h,042h,06ah,065h,03ch,0ffh	; ad5e  G.O.PEQBje<.

; ----------------------------------------------------------------------
; DATOS mensajes_26_AD6A: 3 palabras: los mensajes de la sala 549 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (6
;   bytes)
;   0xad6a..0xad70  (6 bytes)
DATA_mensajes_26_AD6A:
	defb 070h,0adh	; ad6a
	defb 058h,0afh	; ad6c
	defb 036h,0b0h	; ad6e

; ----------------------------------------------------------------------
; DATOS mensaje_26_AD70: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 4 bloques:
;   (mensaje_26_AF58 AF58-B037) (mensaje_26_B036 B036-B129) (mensajes_26_B128
;   B128-B136); lo leen p00:4E76 (966 bytes)
;   0xad70..0xb136  (966 bytes)
DATA_mensaje_26_AD70:
	defb 0f6h,089h,004h,07ch,003h,096h,000h,03bh,075h,003h,072h,072h,0afh,001h,000h,076h	; ad70  ...|....u.rr...v
	defb 07ah,08eh,045h,003h,000h,0f7h,0fch,045h,001h,0fdh,074h,099h,059h,000h,018h,0bah	; ad80  z.E....E..t.Y...
	defb 0c1h,0c5h,058h,000h,04ah,041h,049h,003h,058h,0c5h,005h,0feh,06eh,089h,004h,07ch	; ad90  ..X.JAI.X...n..|
	defb 003h,096h,06fh,04fh,003h,001h,001h,000h,05eh,0a6h,052h,041h,04fh,04eh,003h,001h	; ada0  ..oO....^.RAON..
	defb 0feh,049h,049h,052h,003h,000h,044h,0b6h,059h,000h,0ech,056h,058h,04fh,003h,001h	; adb0  .IIR..D.Y..VXO..
	defb 000h,04eh,069h,062h,0feh,04fh,06dh,054h,068h,0ech,055h,0efh,052h,003h,059h,054h	; adc0  .Nib.OmTh.U.R.YT
	defb 041h,001h,0fdh,049h,058h,000h,074h,099h,058h,000h,089h,004h,07ch,003h,098h,055h	; add0  A..IX.t.X...|..U
	defb 000h,054h,063h,05fh,005h,0feh,047h,068h,04bh,05fh,005h,040h,048h,003h,047h,058h	; ade0  .Tc_..GhK_.@H.GX
	defb 059h,052h,055h,000h,0b9h,063h,0feh,08fh,08fh,063h,000h,089h,084h,045h,066h,000h	; adf0  YRU..c...c...Ef.
	defb 088h,072h,08fh,07eh,045h,003h,0feh,053h,05ah,003h,04fh,003h,04bh,04eh,042h,055h	; ae00  .r.~E..SZ.O.KNBU
	defb 000h,054h,067h,054h,045h,003h,066h,005h,0fdh,070h,07fh,08eh,06ch,000h,045h,045h	; ae10  .TgTE.f..p..l.EE
	defb 043h,052h,000h,047h,068h,041h,0ech,055h,0feh,04ch,068h,058h,04fh,003h,001h,001h	; ae20  CR.GhA.U.LhXO...
	defb 000h,045h,003h,059h,059h,059h,059h,001h,03ch,0feh,0fch,03bh,0c9h,052h,000h,0b9h	; ae30  .E.YYYY.<....R..
	defb 058h,05ch,066h,054h,041h,0c1h,0c5h,054h,06dh,04fh,003h,001h,03ch,0fdh,0fbh,03bh	; ae40  X\fTA..TmO..<...
	defb 0f7h,0fch,001h,000h,089h,004h,07ch,003h,098h,058h,0deh,055h,0feh,080h,0aah,098h	; ae50  ......|..X.U....
	defb 07bh,020h,0e3h,045h,003h,000h,053h,04bh,003h,049h,061h,066h,069h,052h,068h,06bh	; ae60  { .E..SK.IafiRhk
	defb 001h,03ch,0fch,03bh,001h,001h,000h,049h,06dh,054h,053h,049h,06ah,052h,003h,000h	; ae70  .<.....ImTSIjR..
	defb 049h,06dh,054h,093h,081h,055h,0feh,051h,045h,05eh,0a6h,052h,041h,04fh,058h,045h	; ae80  ImT..U.QE^.RAOXE
	defb 001h,0fdh,080h,0aah,098h,07bh,020h,001h,000h,0b3h,04fh,04ch,048h,052h,063h,068h	; ae90  .....{ ...OLHRch
	defb 045h,066h,054h,001h,03ch,0f6h,0e3h,000h,000h,000h,03bh,0f7h,0fch,001h,000h,0c6h	; aea0  EfT.<...........
	defb 055h,000h,045h,05eh,06bh,054h,041h,052h,003h,0feh,055h,048h,003h,052h,050h,0a5h	; aeb0  U.E^kTAR..UH.RP.
	defb 042h,04fh,003h,041h,001h,000h,0c6h,058h,04fh,061h,055h,0feh,040h,054h,04fh,058h	; aec0  BO.A...XOaU.@TOX
	defb 000h,08fh,08fh,063h,000h,089h,084h,045h,066h,0fdh,088h,072h,058h,000h,08fh,07eh	; aed0  ...c...Ef..rX..~
	defb 045h,003h,000h,053h,05ah,003h,04fh,003h,04ch,058h,06ch,0b8h,068h,058h,059h,0feh	; aee0  E..SZ.O.LXl.hXY.
	defb 053h,052h,062h,000h,051h,066h,041h,06bh,001h,03ch,0feh,0f6h,089h,004h,07ch,003h	; aef0  SRb.QfAk.<....|.
	defb 096h,000h,03bh,065h,042h,04bh,006h,000h,052h,003h,059h,000h,074h,099h,058h,000h	; af00  ...eBK..R.Y.t.X.
	defb 011h,018h,059h,003h,06dh,058h,0feh,089h,004h,07ch,003h,098h,005h,06eh,0c7h,0d2h	; af10  ..Y.mX...|...n..
	defb 067h,0e2h,06fh,06ch,000h,059h,04bh,003h,061h,068h,001h,0fdh,049h,058h,0e2h,06ch	; af20  g.ol.YK.ah..IX.l
	defb 000h,042h,05eh,047h,000h,04fh,04ch,048h,04fh,003h,04bh,04fh,054h,066h,0feh,076h	; af30  .B^G.OLHO.KOTf.v
	defb 07ah,08eh,058h,000h,0c8h,042h,049h,053h,055h,000h,0c9h,052h,003h,062h,0feh,049h	; af40  z.X..BISU..R.b.I
	defb 04fh,043h,052h,063h,06ah,042h,03ch,0fah,0f6h,0e3h,000h,000h,000h,03bh,0f7h,0fch	; af50  OCRcjB<.........
	defb 000h,040h,067h,045h,003h,053h,042h,001h,03ch,0feh,0fch,03bh,089h,004h,07ch,003h	; af60  .@gE.SB.<.....|.
	defb 096h,001h,000h,063h,047h,04eh,047h,053h,003h,042h,067h,000h,074h,099h,058h,0feh	; af70  ...cGNGS.Bg.t.X.
	defb 04bh,051h,062h,06dh,055h,000h,049h,04fh,043h,052h,062h,066h,042h,04eh,003h,001h	; af80  KQbmU.IOCRbfBN..
	defb 03ch,0feh,0f6h,089h,004h,07ch,003h,096h,000h,03bh,072h,077h,003h,077h,003h,00ah	; af90  <....|....rw.w..
	defb 00ah,03ch,0fdh,0fch,03bh,04eh,058h,011h,005h,077h,003h,096h,09dh,083h,003h,077h	; afa0  .<...NX..w.....w
	defb 09ah,07ch,055h,000h,054h,0a6h,04fh,0eah,0feh,0d4h,0c1h,0c5h,079h,003h,077h,003h	; afb0  .|U.T.O.....y.w.
	defb 059h,000h,053h,003h,049h,055h,0e1h,06bh,069h,068h,002h,03ch,0feh,0f6h,089h,004h	; afc0  Y.S.IU.kih.<....
	defb 07ch,003h,096h,000h,03bh,091h,07ch,077h,063h,05eh,058h,0deh,055h,00ah,00ah,03ch	; afd0  |.....|wc^X.U..<
	defb 0fdh,0f6h,0e3h,000h,000h,000h,03bh,091h,07ch,077h,00ah,00ah,0f7h,0fch,001h,000h	; afe0  ........|w......
	defb 04eh,069h,059h,0feh,07fh,003h,09dh,082h,058h,000h,041h,043h,058h,000h,04ch,047h	; aff0  NiY.....X.ACX.LG
	defb 003h,000h,050h,045h,047h,055h,040h,068h,0feh,063h,05eh,065h,001h,000h,0c6h,059h	; b000  ..PEGU@h.c^e...Y
	defb 000h,05ah,053h,040h,04bh,000h,04ah,046h,055h,0feh,04eh,049h,05ch,000h,0dch,0a6h	; b010  .ZS@K.JFU.NI\...
	defb 052h,068h,06bh,001h,001h,03ch,0fdh,0fch,03bh,0b7h,06ch,051h,048h,052h,0dch,047h	; b020  Rhk..<....lQHR.G
	defb 06dh,04fh,003h,065h,03ch,0fah,0fch,03bh,04eh,058h,012h,005h,06eh,0f5h,0b2h,058h	; b030  mO.e<...NX..n..X
	defb 077h,003h,096h,09dh,083h,003h,077h,09ah,07ch,06fh,059h,0feh,0edh,0a6h,052h,041h	; b040  w.....w.|oY...RA
	defb 068h,045h,003h,000h,062h,042h,011h,051h,058h,000h,06eh,04eh,066h,058h,0feh,077h	; b050  hE..bB.QX.nNfX.w
	defb 003h,096h,09dh,083h,003h,077h,09ah,07ch,06fh,053h,059h,000h,0c9h,054h,06dh,04fh	; b060  .....w.|oSY..TmO
	defb 003h,001h,002h,03ch,0fdh,0f6h,089h,004h,07ch,003h,096h,000h,03bh,04eh,069h,059h	; b070  ...<....|....NiY
	defb 0c8h,043h,06dh,006h,000h,04fh,04fh,003h,04bh,000h,07fh,003h,071h,093h,058h,0feh	; b080  .Cm..OO.K...q.X.
	defb 063h,05eh,055h,000h,08ah,09dh,083h,045h,003h,040h,068h,00ah,00ah,053h,04fh,003h	; b090  c^U....E.@h..SO.
	defb 048h,0feh,0c8h,0a6h,052h,044h,047h,006h,000h,072h,077h,003h,077h,003h,077h,003h	; b0a0  H...RDG..rw.w.w.
	defb 077h,003h,0feh,074h,099h,059h,000h,062h,042h,000h,04fh,003h,061h,04fh,003h,00ah	; b0b0  w..t.Y.bB.O.aO..
	defb 00ah,075h,003h,077h,0afh,03ch,0fdh,0fch,03bh,00ah,00ah,006h,000h,062h,042h,04ch	; b0c0  .u.w.<.......bBL
	defb 047h,003h,000h,077h,003h,096h,09dh,083h,003h,077h,09ah,07ch,055h,0feh,054h,0a6h	; b0d0  G..w.....w.|U.T.
	defb 052h,04bh,05eh,042h,006h,000h,0f7h,0fbh,000h,0dch,047h,04eh,003h,03ch,0fdh,0fbh	; b0e0  RK^B......GN.<..
	defb 03bh,057h,06dh,058h,04fh,061h,055h,000h,0f5h,062h,06dh,045h,003h,047h,04bh,0a3h	; b0f0  .WmXOaU..bmE.GK.
	defb 058h,0feh,075h,097h,099h,074h,058h,000h,053h,049h,06ah,055h,0dch,0a6h,052h,0feh	; b100  X.u..tX.SIjU..R.
	defb 05dh,04bh,058h,000h,065h,042h,04ch,06ch,000h,062h,042h,011h,053h,003h,0feh,0b8h	; b110  ]KX.eBLl.bB.S...
	defb 052h,05fh,05eh,04bh,0a5h,042h,03ch,0fah,036h,0b1h,04eh,0b1h,070h,0b1h,0c0h,0b1h	; b120  R_^K.B<.6.N.p...
	defb 000h,0b2h,040h,0b2h,086h,0b2h	; b130

; ----------------------------------------------------------------------
; DATOS mensaje_26_B136: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0xb136..0xb14e  (24 bytes)
DATA_mensaje_26_B136:
	defb 0fbh,03bh,053h,003h,049h,06ch,000h,0b8h,06bh,04fh,04bh,052h,062h,000h,05fh,04ch	; b136  ..S.Il..kOKRb._L
	defb 003h,059h,003h,045h,067h,065h,03ch,0ffh	; b146  .Y.Ege<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B14E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0xb14e..0xb170  (34 bytes)
DATA_mensaje_26_B14E:
	defb 0fbh,03bh,049h,069h,059h,000h,04ch,049h,003h,041h,000h,067h,0a5h,042h,058h,000h	; b14e  ..IiY.LI.A.g.BX.
	defb 05fh,04ch,003h,065h,001h,0feh,0d4h,049h,042h,04ch,003h,041h,04fh,003h,06bh,001h	; b15e  _L.e...IBL.AO.k.
	defb 03ch,0ffh	; b16e

; ----------------------------------------------------------------------
; DATOS mensaje_26_B170: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (80
;   bytes)
;   0xb170..0xb1c0  (80 bytes)
DATA_mensaje_26_B170:
	defb 0fbh,03bh,0d4h,0c1h,0c5h,079h,003h,077h,003h,058h,000h,059h,054h,0a6h,04fh,000h	; b170  .....y.w.X.YT.O.
	defb 04ah,041h,063h,047h,052h,003h,0feh,0f5h,053h,050h,058h,000h,05fh,04ch,003h,045h	; b180  JAcGR...SPX._L.E
	defb 003h,000h,041h,0a6h,04dh,041h,055h,0feh,040h,05bh,069h,04fh,058h,065h,001h,001h	; b190  ..A.MAU.@[iOXe..
	defb 000h,044h,04eh,066h,047h,000h,049h,058h,0c2h,058h,0feh,0e7h,046h,062h,058h,059h	; b1a0  .DNfG.IX.X..FbXY
	defb 000h,04ch,05ch,003h,052h,0ech,06dh,04fh,003h,06dh,04fh,003h,06bh,001h,03ch,0ffh	; b1b0  .L\.R.mO.mO.k.<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B1C0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (64
;   bytes)
;   0xb1c0..0xb200  (64 bytes)
DATA_mensaje_26_B1C0:
	defb 0fbh,03bh,040h,040h,0a6h,001h,000h,065h,048h,003h,06dh,053h,003h,042h,067h,000h	; b1c0  ..@@...eH.mS.Bg.
	defb 04ch,05ch,003h,052h,058h,0feh,062h,058h,045h,003h,000h,0ech,055h,04fh,043h,000h	; b1d0  L\.RX.bXE...UOC.
	defb 0bch,0c1h,04bh,059h,041h,058h,0c2h,0c3h,053h,0feh,054h,068h,058h,065h,001h,000h	; b1e0  ..KYAX..S.ThXe..
	defb 04ch,05ch,003h,052h,045h,003h,000h,05fh,04ch,003h,058h,070h,09bh,057h,03ch,0ffh	; b1f0  L\.RE.._L.Xp.W<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B200: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (64
;   bytes)
;   0xb200..0xb240  (64 bytes)
DATA_mensaje_26_B200:
	defb 0fbh,03bh,04ch,05ch,003h,052h,045h,003h,000h,044h,06bh,0a6h,04fh,058h,065h,006h	; b200  ..L\.RE..Dk.OXe.
	defb 052h,003h,046h,068h,049h,053h,0feh,053h,0c8h,043h,059h,003h,000h,04ah,041h,049h	; b210  R.FhIS.S.CY..JAI
	defb 003h,055h,000h,07dh,020h,08bh,003h,04bh,04fh,053h,049h,06ah,0feh,045h,066h,000h	; b220  .U.} ..KOSIj.Ef.
	defb 079h,09dh,082h,0a8h,085h,0adh,020h,000h,04ch,068h,047h,066h,041h,057h,03ch,0ffh	; b230  y..... .LhGfAW<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B240: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (70
;   bytes)
;   0xb240..0xb286  (70 bytes)
DATA_mensaje_26_B240:
	defb 0fch,03bh,040h,054h,04fh,058h,000h,05dh,045h,055h,000h,0e7h,046h,052h,041h,068h	; b240  ..@TOX.]EU..FRAh
	defb 0bah,059h,0feh,041h,068h,058h,045h,041h,002h,03ch,0feh,0f8h,03bh,05dh,053h,06dh	; b250  .Y.AhXEA.<...]Sm
	defb 053h,003h,000h,044h,066h,06dh,04bh,003h,0a3h,06ah,006h,000h,0c6h,062h,062h,042h	; b260  S..DfmK..j...bbB
	defb 0feh,0ech,056h,006h,000h,0bah,0ddh,058h,0c2h,0c3h,059h,000h,044h,06bh,0a6h,04fh	; b270  ..V....X..Y.Dk.O
	defb 06dh,04bh,003h,0a3h,03ch,0ffh	; b280

; ----------------------------------------------------------------------
; DATOS mensaje_26_B286: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (40
;   bytes)
;   0xb286..0xb2ae  (40 bytes)
DATA_mensaje_26_B286:
	defb 0f8h,03bh,040h,06dh,04fh,062h,000h,053h,003h,049h,05ch,0dch,0a6h,052h,062h,000h	; b286  ..@mOb.S.I\..Rb.
	defb 090h,07fh,003h,04bh,003h,0a3h,006h,044h,053h,054h,04bh,047h,000h,0ech,06ch,05eh	; b296  ...K...DSTKG..l^
	defb 051h,06dh,04bh,003h,0a3h,065h,03ch,0ffh	; b2a6  QmK..e<.

; ----------------------------------------------------------------------
; DATOS mensajes_26_B2AE: 7 palabras: los mensajes de la sala 554 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (14 bytes)
;   0xb2ae..0xb2bc  (14 bytes)
DATA_mensajes_26_B2AE:
	defb 0bch,0b2h	; b2ae
	defb 0d9h,0b2h	; b2b0
	defb 0fah,0b2h	; b2b2
	defb 056h,0b3h	; b2b4
	defb 000h,0b2h	; b2b6
	defb 040h,0b2h	; b2b8
	defb 086h,0b2h	; b2ba

; ----------------------------------------------------------------------
; DATOS mensaje_26_B2BC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0xb2bc..0xb2d9  (29 bytes)
DATA_mensaje_26_B2BC:
	defb 0fbh,03bh,0d4h,046h,054h,000h,04ah,059h,003h,047h,057h,006h,000h,043h,06dh,043h	; b2bc  ...FT.JY.GW..CmC
	defb 06dh,053h,0feh,051h,051h,003h,041h,052h,041h,068h,06bh,03ch,0ffh	; b2cc  mS.QQ.ARAhk<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B2D9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0xb2d9..0xb2fa  (33 bytes)
DATA_mensaje_26_B2D9:
	defb 0fch,03bh,05eh,04ah,045h,000h,049h,058h,000h,04ah,059h,003h,047h,045h,003h,000h	; b2d9  ..^JE.IX.JY.GE..
	defb 079h,003h,077h,003h,058h,0feh,04ah,041h,063h,047h,04bh,003h,0a3h,001h,002h,03ch	; b2e9  y.w.X.JAcGK....<
	defb 0ffh	; b2f9

; ----------------------------------------------------------------------
; DATOS mensaje_26_B2FA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (92
;   bytes)
;   0xb2fa..0xb356  (92 bytes)
DATA_mensaje_26_B2FA:
	defb 0fbh,03bh,001h,000h,04eh,042h,065h,001h,000h,079h,003h,077h,003h,059h,000h,049h	; b2fa  ....NBe..y.w.Y.I
	defb 058h,050h,04bh,003h,0a5h,042h,0feh,04ch,05ch,003h,052h,055h,000h,04ch,054h,06ch	; b30a  XPK..B.L\.RU.LTl
	defb 000h,05bh,066h,04dh,04fh,06dh,04fh,003h,06bh,001h,0fdh,0b3h,0f4h,05eh,052h,003h	; b31a  .[fMOmO.k....^R.
	defb 000h,0bah,0ddh,045h,003h,000h,046h,04ch,003h,041h,052h,046h,04fh,062h,058h,059h	; b32a  ...E..FL.ARFObXY
	defb 0feh,04ch,05ch,003h,052h,000h,04ch,054h,058h,04bh,04fh,055h,000h,042h,062h,069h	; b33a  .L\.R.LTXKOU.Bbi
	defb 052h,0feh,04bh,05eh,0a6h,04fh,058h,065h,001h,001h,03ch,0ffh	; b34a  R.K^.OXe..<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B356: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (104
;   bytes)
;   0xb356..0xb3be  (104 bytes)
DATA_mensaje_26_B356:
	defb 0fch,03bh,047h,04eh,0a6h,001h,000h,04dh,0a6h,045h,047h,000h,049h,049h,05eh,052h	; b356  ..GN...M.EG.II^R
	defb 003h,0feh,04fh,053h,003h,067h,051h,041h,04fh,058h,055h,001h,000h,043h,020h,041h	; b366  ..OS.gQAOXU..C A
	defb 00ah,00ah,03ch,0feh,07bh,003h,0ach,097h,07bh,003h,0ach,097h,000h,07bh,003h,0ach	; b376  ..<.{...{....{..
	defb 097h,07bh,003h,0ach,097h,001h,001h,0feh,0fbh,03bh,0c9h,06ch,000h,04bh,052h,068h	; b386  .{.........l.KRh
	defb 058h,002h,03ch,0fdh,0fch,03bh,047h,063h,04bh,045h,003h,0a6h,052h,068h,058h,04ah	; b396  X.<...GcKE..RhXJ
	defb 03ch,0feh,0fbh,03bh,002h,03ch,0feh,0fch,03bh,04ch,054h,06ch,000h,045h,06dh,052h	; b3a6  <....<...LTl.EmR
	defb 003h,068h,06dh,04fh,003h,065h,03ch,0ffh	; b3b6  .hmO.e<.

; ----------------------------------------------------------------------
; DATOS mensajes_26_B3BE: 7 palabras: los mensajes de la sala 556 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (14 bytes)
;   0xb3be..0xb3cc  (14 bytes)
DATA_mensajes_26_B3BE:
	defb 0cch,0b3h	; b3be
	defb 0deh,0b3h	; b3c0
	defb 0feh,0b3h	; b3c2
	defb 038h,0b4h	; b3c4
	defb 000h,0b2h	; b3c6
	defb 040h,0b2h	; b3c8
	defb 086h,0b2h	; b3ca

; ----------------------------------------------------------------------
; DATOS mensaje_26_B3CC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0xb3cc..0xb3de  (18 bytes)
DATA_mensaje_26_B3CC:
	defb 0fbh,03bh,05eh,0a6h,047h,066h,052h,003h,000h,0c9h,062h,0b8h,043h,054h,041h,06bh	; b3cc  ..^.GfR...b.CTAk
	defb 03ch,0ffh	; b3dc

; ----------------------------------------------------------------------
; DATOS mensaje_26_B3DE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0xb3de..0xb3fe  (32 bytes)
DATA_mensaje_26_B3DE:
	defb 0fbh,03bh,0c9h,045h,000h,04ch,041h,049h,05eh,069h,04eh,042h,054h,000h,04bh,003h	; b3de  ...E.LAI^iNBT.K.
	defb 0a3h,0bch,054h,0feh,045h,06dh,04bh,003h,045h,003h,000h,04ch,068h,06bh,03ch,0ffh	; b3ee  ..T.EmK.E..Lhk<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B3FE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (58
;   bytes)
;   0xb3fe..0xb438  (58 bytes)
DATA_mensaje_26_B3FE:
	defb 0fbh,03bh,079h,003h,077h,003h,058h,04ah,041h,063h,047h,052h,003h,000h,0f4h,058h	; b3fe  ..y.w.XJAcGR...X
	defb 05ah,045h,067h,045h,003h,0feh,054h,047h,054h,0a6h,04fh,058h,065h,001h,000h,0bah	; b40e  ZEgE..TGT.OXe...
	defb 0ddh,059h,000h,049h,058h,0feh,047h,066h,063h,05fh,052h,003h,059h,000h,0e7h,046h	; b41e  .Y.IX.Gfc_R.Y..F
	defb 052h,059h,041h,048h,054h,041h,06bh,001h,03ch,0ffh	; b42e  RYAHTAk.<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B438: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (59
;   bytes)
;   0xb438..0xb473  (59 bytes)
DATA_mensaje_26_B438:
	defb 0fch,03bh,06bh,01dh,01dh,01dh,06dh,001h,000h,047h,066h,041h,065h,006h,04dh,05eh	; b438  ..k...m..GfAe.M^
	defb 041h,065h,006h,0feh,049h,06bh,041h,065h,01dh,01dh,01dh,001h,03ch,0feh,0fbh,03bh	; b448  Ae..IkAe....<...
	defb 04eh,06dh,054h,055h,000h,054h,045h,054h,041h,052h,003h,006h,0feh,091h,09dh,083h	; b458  NmTU.TETAR......
	defb 003h,072h,058h,000h,045h,045h,068h,0bah,057h,03ch,0ffh	; b468  .rX.EEh.W<.

; ----------------------------------------------------------------------
; DATOS mensajes_26_B473: 2 palabras: los mensajes de la sala 559 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0xb473..0xb477  (4 bytes)
DATA_mensajes_26_B473:
	defb 077h,0b4h	; b473
	defb 08fh,0b4h	; b475

; ----------------------------------------------------------------------
; DATOS mensaje_26_B477: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0xb477..0xb48f  (24 bytes)
DATA_mensaje_26_B477:
	defb 0fbh,03bh,0f7h,0fch,000h,05eh,0a6h,052h,001h,000h,0c9h,045h,000h,048h,059h,041h	; b477  .....^.R...E.HYA
	defb 045h,003h,0feh,04ch,068h,06bh,03ch,0ffh	; b487  E..Lhk<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B48F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (299
;   bytes)
;   0xb48f..0xb5ba  (299 bytes)
DATA_mensaje_26_B48F:
	defb 0fch,03bh,080h,0aah,098h,07bh,020h,001h,000h,05bh,003h,04bh,003h,04fh,003h,0a6h	; b48f  .....{ ..[.K.O..
	defb 04fh,045h,006h,0feh,053h,042h,053h,042h,000h,077h,003h,096h,09dh,083h,003h,077h	; b49f  OE..SBSB.w.....w
	defb 09ah,07ch,055h,054h,0a6h,04fh,065h,001h,0feh,079h,003h,077h,003h,059h,000h,0e1h	; b4af  .|UT.Oe..y.w.Y..
	defb 06bh,069h,04fh,045h,041h,002h,03ch,0fdh,0f8h,03bh,0f7h,0fch,001h,000h,049h,06bh	; b4bf  kiOEA.<.......Ik
	defb 045h,0a6h,04fh,06bh,006h,0feh,0c6h,045h,003h,011h,0bah,052h,003h,000h,045h,047h	; b4cf  E.Ok...E...R..EG
	defb 069h,052h,041h,068h,053h,000h,079h,003h,077h,003h,045h,003h,0feh,0e1h,06bh,069h	; b4df  iRAhS.y.w.E...ki
	defb 000h,0e8h,045h,066h,045h,003h,066h,000h,055h,048h,003h,052h,046h,04fh,058h,03ch	; b4ef  ..EfE.f.UH.RFOX<
	defb 0fdh,0fch,03bh,079h,003h,077h,003h,06ch,0b8h,04fh,06dh,04fh,003h,057h,001h,000h	; b4ff  ...y.w.l.OmO.W..
	defb 053h,003h,06dh,054h,000h,093h,081h,0feh,054h,06dh,04fh,003h,005h,079h,003h,077h	; b50f  S.mT....TmO..y.w
	defb 003h,053h,059h,001h,002h,03ch,0feh,0f8h,03bh,040h,040h,0a6h,000h,0dbh,041h,04fh	; b51f  .SY..<...@@...AO
	defb 003h,04bh,04fh,04fh,003h,048h,052h,003h,062h,0feh,0b2h,045h,003h,000h,05bh,068h	; b52f  .KOO.HR.b..E..[h
	defb 043h,052h,047h,068h,06bh,001h,000h,044h,04eh,06ah,04bh,041h,03ch,0fdh,0fch,03bh	; b53f  CRGhk..DNjKA<...
	defb 080h,0aah,098h,07bh,020h,000h,044h,050h,051h,047h,06dh,04fh,003h,006h,0feh,062h	; b54f  ...{ .DPQGmO...b
	defb 042h,000h,04fh,003h,041h,04bh,003h,0a5h,042h,05bh,003h,04fh,003h,065h,006h,000h	; b55f  B.O.AK..B[.O.e..
	defb 04bh,003h,0a3h,040h,0feh,076h,08fh,059h,000h,04ah,046h,055h,000h,077h,003h,097h	; b56f  K..@.v.Y.JFU.w..
	defb 020h,077h,0d5h,05ch,000h,062h,053h,003h,067h,0feh,044h,042h,043h,06dh,058h,000h	; b57f   w.\.bS.g.DBCmX.
	defb 05ch,041h,04bh,06ch,065h,06dh,052h,003h,046h,052h,047h,069h,03ch,0fdh,0f8h,03bh	; b58f  \AKlemR.FRGi<...
	defb 06bh,045h,0a6h,04fh,06bh,006h,000h,0f7h,0fch,000h,0f7h,0fbh,0feh,053h,003h,042h	; b59f  kE.Ok........S.B
	defb 045h,000h,0b7h,06ch,051h,048h,052h,057h,001h,03ch,0ffh	; b5af  E..lQHRW.<.

; ----------------------------------------------------------------------
; DATOS mensajes_26_B5BA: 1 palabras: los mensajes de la sala 560 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xb5ba..0xb5bc  (2 bytes)
DATA_mensajes_26_B5BA:
	defb 0bch,0b5h	; b5ba

; ----------------------------------------------------------------------
; DATOS mensaje_26_B5BC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (54
;   bytes)
;   0xb5bc..0xb5f2  (54 bytes)
DATA_mensaje_26_B5BC:
	defb 0fbh,03bh,05eh,0a6h,052h,001h,000h,05eh,04fh,000h,0bah,058h,048h,059h,041h,045h	; b5bc  ..^.R..^O..XHYAE
	defb 003h,04ch,068h,06bh,006h,049h,058h,000h,051h,046h,003h,058h,000h,05ch,063h,065h	; b5cc  .Lhk.IX.QF.X.\ce
	defb 03ch,0feh,0fch,03bh,079h,003h,077h,003h,04fh,003h,06ah,042h,045h,002h,00ah,00ah	; b5dc  <...y.w.O.jBE...
	defb 0dch,047h,04eh,003h,03ch,0ffh	; b5ec

; ----------------------------------------------------------------------
; DATOS mensajes_26_B5F2: 11 palabras: los mensajes de la sala 562 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (22 bytes)
;   0xb5f2..0xb608  (22 bytes)
DATA_mensajes_26_B5F2:
	defb 0a4h,067h	; b5f2
	defb 0cah,067h	; b5f4
	defb 004h,068h	; b5f6
	defb 024h,068h	; b5f8
	defb 03ah,068h	; b5fa
	defb 04fh,068h	; b5fc
	defb 065h,068h	; b5fe
	defb 008h,0b6h	; b600
	defb 031h,0b6h	; b602
	defb 06fh,0b6h	; b604
	defb 0a0h,0b6h	; b606

; ----------------------------------------------------------------------
; DATOS mensaje_26_B608: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0xb608..0xb631  (41 bytes)
DATA_mensaje_26_B608:
	defb 0f8h,03bh,089h,0afh,077h,07bh,0aeh,01dh,09dh,001h,000h,089h,0afh,077h,07bh,0aeh	; b608  ....w{.......w{.
	defb 01dh,09dh,001h,0feh,049h,049h,059h,000h,08bh,004h,09ah,077h,003h,096h,08eh,020h	; b618  ....IIY....w...
	defb 058h,000h,05ch,063h,052h,003h,04ch,03ch,0ffh	; b628  X.\cR.L<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B631: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (62
;   bytes)
;   0xb631..0xb66f  (62 bytes)
DATA_mensaje_26_B631:
	defb 0f8h,03bh,04bh,003h,0a5h,042h,04fh,003h,06dh,000h,08dh,004h,071h,08dh,004h,071h	; b631  ..K..BO.m...q..q
	defb 0afh,001h,04ah,041h,054h,06dh,0feh,048h,003h,051h,065h,042h,001h,000h,050h,05ah	; b641  ..JATm.H.QeB..PZ
	defb 003h,0a6h,0d6h,093h,09dh,076h,020h,063h,057h,06dh,006h,0feh,095h,020h,079h,001h	; b651  .....v cWm... y.
	defb 000h,04ch,046h,063h,052h,003h,01dh,01dh,01dh,0a6h,001h,001h,03ch,0ffh	; b661  .LFcR.......<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B66F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0xb66f..0xb6a0  (49 bytes)
DATA_mensaje_26_B66F:
	defb 0f8h,03bh,053h,06ah,041h,006h,057h,060h,041h,006h,04fh,003h,068h,041h,006h,045h	; b66f  ..SjA.W`A.O.hA.E
	defb 043h,067h,04fh,041h,006h,06eh,065h,064h,042h,058h,000h,065h,0a6h,050h,0a3h,06dh	; b67f  CgOA.nedBX.e.P.m
	defb 06fh,053h,059h,0feh,074h,099h,058h,049h,053h,000h,04fh,003h,06dh,05ch,003h,03ch	; b68f  oSY.t.XIS.O.m\.<
	defb 0ffh	; b69f

; ----------------------------------------------------------------------
; DATOS mensaje_26_B6A0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (100
;   bytes)
;   0xb6a0..0xb704  (100 bytes)
DATA_mensaje_26_B6A0:
	defb 0f8h,03bh,05dh,053h,06dh,053h,003h,000h,0ech,055h,045h,048h,063h,006h,000h,065h	; b6a0  ..]SmS...UEHc..e
	defb 068h,059h,0feh,046h,003h,0a4h,042h,053h,003h,06dh,06ch,000h,04fh,05ch,003h,052h	; b6b0  hY.F..BS.ml.O\.R
	defb 000h,045h,003h,06dh,059h,003h,0a6h,04fh,06dh,063h,006h,04ah,041h,049h,003h,05eh	; b6c0  .E.mY..Omc.JAI.^
	defb 052h,003h,000h,040h,046h,066h,061h,04ch,003h,055h,000h,063h,0a6h,052h,054h,006h	; b6d0  R..@FfaL.U.c.RT.
	defb 0fdh,050h,054h,05fh,055h,000h,05dh,003h,047h,059h,000h,05fh,054h,0d6h,058h,0feh	; b6e0  .PT_U.].GY._T.X.
	defb 0d4h,005h,0d4h,005h,0d4h,08bh,0a7h,09dh,054h,06dh,063h,006h,000h,05fh,054h,0d6h	; b6f0  ........Tmc.._T.
	defb 0e8h,001h,03ch,0ffh	; b700

; ----------------------------------------------------------------------
; DATOS mensajes_26_B704: 11 palabras: los mensajes de la sala 563 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (22 bytes)
;   0xb704..0xb71a  (22 bytes)
DATA_mensajes_26_B704:
	defb 0a4h,067h	; b704
	defb 0cah,067h	; b706
	defb 004h,068h	; b708
	defb 024h,068h	; b70a
	defb 03ah,068h	; b70c
	defb 04fh,068h	; b70e
	defb 065h,068h	; b710
	defb 01ah,0b7h	; b712
	defb 055h,0b7h	; b714
	defb 094h,0b7h	; b716
	defb 0d2h,0b7h	; b718

; ----------------------------------------------------------------------
; DATOS mensaje_26_B71A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (59
;   bytes)
;   0xb71a..0xb755  (59 bytes)
DATA_mensaje_26_B71A:
	defb 0f8h,03bh,052h,003h,06ah,052h,003h,06ah,059h,003h,01dh,001h,092h,070h,071h,04bh	; b71a  ..R.jR.jY....pqK
	defb 003h,0a3h,000h,06bh,01dh,069h,001h,0feh,06eh,04fh,066h,059h,003h,075h,003h,085h	; b72a  ...k.i..nOfY.u..
	defb 06fh,0a6h,052h,000h,0edh,0a6h,052h,068h,048h,01dh,002h,0feh,053h,003h,049h,055h	; b73a  o.R...RhH...S.IU
	defb 000h,044h,068h,06dh,063h,06ah,045h,01dh,002h,03ch,0ffh	; b74a  .DhmcjE..<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B755: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (63
;   bytes)
;   0xb755..0xb794  (63 bytes)
DATA_mensaje_26_B755:
	defb 0f8h,03bh,04bh,067h,061h,051h,069h,051h,054h,000h,073h,020h,08ah,003h,020h,045h	; b755  ..KgaQiQT.s .. E
	defb 003h,04fh,058h,0c6h,059h,0feh,08bh,003h,07fh,0d6h,050h,0a3h,06dh,045h,003h,000h	; b765  .OX.Y.....P.mE..
	defb 0b7h,055h,0d2h,0a6h,04fh,0aeh,020h,006h,0feh,073h,09dh,082h,003h,0a8h,09dh,077h	; b775  .U..O. ..s.....w
	defb 003h,052h,003h,000h,045h,06dh,053h,003h,042h,04bh,052h,087h,001h,03ch,0ffh	; b785  .R..EmS.BKR..<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B794: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (62
;   bytes)
;   0xb794..0xb7d2  (62 bytes)
DATA_mensaje_26_B794:
	defb 0f8h,03bh,06eh,042h,043h,059h,066h,06fh,052h,003h,049h,003h,04ah,003h,041h,05eh	; b794  ..nBCYfoR.I.J.A^
	defb 04ch,006h,000h,041h,051h,062h,0feh,092h,070h,071h,04ah,05eh,055h,000h,045h,06bh	; b7a4  L..AQb..pqJ^U.Ek
	defb 041h,045h,003h,0a6h,052h,041h,04fh,04fh,003h,046h,0feh,04fh,041h,05ch,06dh,000h	; b7b4  AE..RAOO.F.OA\m.
	defb 04bh,040h,06bh,04dh,055h,0dbh,0a6h,052h,044h,067h,05eh,04ch,03ch,0ffh	; b7c4  K@kMU..RDg^L<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B7D2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (57
;   bytes)
;   0xb7d2..0xb80b  (57 bytes)
DATA_mensaje_26_B7D2:
	defb 0f8h,03bh,041h,0a6h,05ah,0a6h,05ah,0a6h,006h,000h,06bh,04bh,059h,000h,053h,052h	; b7d2  ..A.Z.Z...kKY.SR
	defb 062h,0feh,057h,044h,046h,045h,003h,0bch,041h,053h,003h,006h,000h,049h,049h,000h	; b7e2  b.WDFE..AS...II.
	defb 04ah,041h,046h,06dh,059h,0feh,05ch,003h,06dh,05ah,004h,046h,003h,05fh,063h,04bh	; b7f2  JAFmY.\.mZ.F._cK
	defb 00ah,00ah,053h,05dh,05dh,05dh,05dh,03ch,0ffh	; b802  ..S]]]]<.

; ----------------------------------------------------------------------
; DATOS mensajes_26_B80B: 11 palabras: los mensajes de la sala 564 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (22 bytes)
;   0xb80b..0xb821  (22 bytes)
DATA_mensajes_26_B80B:
	defb 0a4h,067h	; b80b
	defb 0cah,067h	; b80d
	defb 004h,068h	; b80f
	defb 024h,068h	; b811
	defb 03ah,068h	; b813
	defb 04fh,068h	; b815
	defb 065h,068h	; b817
	defb 021h,0b8h	; b819
	defb 062h,0b8h	; b81b
	defb 09ah,0b8h	; b81d
	defb 0d7h,0b8h	; b81f

; ----------------------------------------------------------------------
; DATOS mensaje_26_B821: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (65
;   bytes)
;   0xb821..0xb862  (65 bytes)
DATA_mensaje_26_B821:
	defb 0f8h,03bh,052h,003h,046h,068h,005h,052h,003h,046h,068h,006h,000h,06bh,01dh,04ch	; b821  ..R.Fh.R.Fh..k.L
	defb 069h,04fh,040h,01dh,006h,0feh,0c9h,052h,003h,000h,05dh,003h,045h,09eh,000h,046h	; b831  iO@....R..].E..F
	defb 0a3h,040h,06dh,049h,053h,000h,059h,003h,0a6h,045h,04bh,0feh,04dh,054h,000h,040h	; b841  .@mIS.Y..EK.MT.@
	defb 045h,06dh,04fh,003h,066h,09eh,002h,043h,067h,0a3h,040h,01dh,0a6h,050h,0a3h,03ch	; b851  EmO.f..Cg.@..P.<
	defb 0ffh	; b861

; ----------------------------------------------------------------------
; DATOS mensaje_26_B862: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (56
;   bytes)
;   0xb862..0xb89a  (56 bytes)
DATA_mensaje_26_B862:
	defb 0f8h,03bh,060h,0a6h,050h,0a3h,047h,050h,0a3h,000h,057h,060h,041h,06bh,09eh,01dh	; b862  ..`.P.GP..W`Ak..
	defb 001h,0feh,04fh,003h,069h,058h,04dh,041h,063h,002h,000h,0c6h,059h,000h,04ch,0a6h	; b872  ..O.iXMAc...Y.L.
	defb 045h,067h,0feh,011h,010h,010h,018h,058h,000h,04bh,003h,064h,042h,0bah,055h,000h	; b882  Eg.....X.K.dB.U.
	defb 054h,0a6h,052h,04bh,062h,04fh,03ch,0ffh	; b892  T.RKbO<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B89A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (61
;   bytes)
;   0xb89a..0xb8d7  (61 bytes)
DATA_mensaje_26_B89A:
	defb 0f8h,03bh,040h,01dh,001h,04bh,003h,05bh,003h,06dh,058h,000h,041h,043h,055h,000h	; b89a  ..@..K.[.mX.ACU.
	defb 045h,043h,067h,04fh,041h,006h,04bh,003h,064h,042h,054h,0b2h,055h,054h,067h,04fh	; b8aa  ECgOA.K.dBT.UTgO
	defb 041h,006h,000h,042h,05eh,041h,062h,06dh,0feh,047h,041h,04fh,041h,006h,000h,062h	; b8ba  A..B^Abm.GAOA..b
	defb 0a6h,053h,000h,040h,04eh,05ah,003h,04fh,041h,01dh,001h,03ch,0ffh	; b8ca  .S.@NZ.OA..<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_B8D7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (53
;   bytes)
;   0xb8d7..0xb90c  (53 bytes)
DATA_mensaje_26_B8D7:
	defb 0f8h,03bh,04bh,05eh,045h,066h,000h,052h,003h,069h,06dh,053h,000h,082h,003h,020h	; b8d7  ..K^Ef.R.imS...
	defb 083h,052h,003h,046h,05ch,06dh,006h,040h,04bh,04fh,058h,000h,012h,0eah,05eh,052h	; b8e7  .R.F\m.@KOX...^R
	defb 003h,055h,000h,046h,0a5h,042h,053h,055h,0feh,0dch,045h,06dh,053h,000h,040h,045h	; b8f7  .U.F.BSU..EmS.@E
	defb 06dh,057h,06dh,03ch,0ffh	; b907

; ----------------------------------------------------------------------
; DATOS mensajes_26_B90C: 24 palabras: los mensajes de la sala 565 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (48 bytes)
;   0xb90c..0xb93c  (48 bytes)
DATA_mensajes_26_B90C:
	defb 03ch,0b9h	; b90c
	defb 0fdh,0b9h	; b90e
	defb 02dh,0bah	; b910
	defb 05fh,0bah	; b912
	defb 06fh,0bah	; b914
	defb 09ah,0bah	; b916
	defb 0bbh,0bah	; b918
	defb 00ch,0bbh	; b91a
	defb 05ah,0bbh	; b91c
	defb 019h,0bch	; b91e
	defb 077h,0bch	; b920
	defb 099h,0bch	; b922
	defb 0c2h,0bch	; b924
	defb 06ch,0bdh	; b926
	defb 099h,0bdh	; b928
	defb 0afh,0bdh	; b92a
	defb 050h,0beh	; b92c
	defb 05ah,0beh	; b92e
	defb 09bh,0beh	; b930
	defb 07eh,0bfh	; b932
	defb 0b1h,0bfh	; b934
	defb 0cfh,0bfh	; b936
	defb 0deh,0bfh	; b938
	defb 0e9h,0bfh	; b93a

; ----------------------------------------------------------------------
; DATOS mensaje_26_B93C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 4 bloques:
;   (mensaje_26_B9FD B9FD-BA60) (mensaje_26_BA2D BA2D-BA60) (mensaje_26_BA5F
;   BA5F-BA6F); lo leen p00:4E76 (307 bytes)
;   0xb93c..0xba6f  (307 bytes)
DATA_mensaje_26_B93C:
	defb 0f6h,079h,003h,077h,003h,000h,000h,03bh,074h,099h,04ah,05eh,045h,003h,005h,0bah	; b93c  .y.w....t.J^E...
	defb 0ddh,0c2h,0c3h,045h,003h,04eh,042h,047h,003h,042h,04ch,068h,0feh,012h,053h,003h	; b94c  ...E.NBG.BLh..S.
	defb 0b5h,058h,000h,04ah,041h,063h,047h,005h,06eh,0d4h,0c1h,0c5h,079h,003h,077h,003h	; b95c  .X.JAcG.n...y.w.
	defb 06fh,006h,0fdh,0bah,0ddh,053h,003h,062h,045h,003h,000h,0b3h,0f4h,05eh,052h,003h	; b96c  o....S.bE....^R.
	defb 000h,046h,04ch,003h,041h,052h,046h,04fh,0feh,05bh,003h,06dh,061h,041h,005h,045h	; b97c  .FL.ARFO.[.maA.E
	defb 045h,003h,047h,005h,04bh,0a4h,042h,046h,0a5h,042h,005h,0feh,0bah,0ddh,0eeh,005h	; b98c  E.G.K.BF.B......
	defb 040h,067h,053h,040h,066h,064h,068h,062h,058h,06ch,0feh,05dh,06ah,05dh,003h,04ch	; b99c  @gS@fdhbXl.]j].L
	defb 04fh,061h,000h,049h,058h,0c2h,055h,0e1h,06bh,069h,04fh,006h,0fdh,04eh,04bh,052h	; b9ac  Oa.IX.U.kiO..NKR
	defb 000h,058h,050h,055h,059h,000h,0bch,058h,000h,04bh,059h,041h,04ch,068h,0feh,063h	; b9bc  .XPUY..X.KYALh.c
	defb 05fh,058h,0c2h,0c3h,045h,003h,000h,058h,049h,068h,058h,04fh,003h,006h,0feh,05eh	; b9cc  _X..E..XIhXO...^
	defb 04ch,003h,000h,052h,059h,04bh,003h,061h,055h,000h,0f7h,0fch,001h,0feh,076h,07ah	; b9dc  L..RYK.aU.....vz
	defb 08eh,045h,066h,000h,067h,0a5h,042h,067h,000h,04bh,052h,063h,06ah,042h,001h,03ch	; b9ec  .Ef.g.Bg.KRcjB.<
	defb 0fah,0f6h,079h,003h,077h,003h,000h,000h,03bh,050h,0a5h,049h,04ah,003h,041h,054h	; b9fc  ..y.w....P.IJ.AT
	defb 093h,081h,04fh,003h,006h,04bh,045h,04bh,000h,051h,046h,003h,058h,0feh,041h,050h	; ba0c  ..O..KEK.QF.X.AP
	defb 048h,003h,046h,052h,003h,000h,044h,0b6h,058h,0e8h,059h,054h,047h,054h,068h,001h	; ba1c  H.FR..D.X.YTGTh.
	defb 0fdh,076h,003h,0ach,089h,089h,089h,089h,0afh,001h,0feh,0f7h,0fch,065h,000h,04ah	; ba2c  .v...........e.J
	defb 066h,059h,003h,04fh,003h,006h,000h,04bh,003h,049h,003h,047h,05ch,0feh,044h,050h	; ba3c  fY.O...K.I.G\.DP
	defb 06ah,001h,001h,03ch,0feh,0fbh,03bh,0f7h,0fch,001h,000h,040h,05bh,003h,054h,041h	; ba4c  j..<.......@[.TA
	defb 001h,03ch,0fah,0fbh,03bh,08bh,003h,08ah,020h,020h,020h,020h,020h,020h,0afh,001h	; ba5c  .<......      ..
	defb 001h,03ch,0ffh	; ba6c

; ----------------------------------------------------------------------
; DATOS mensaje_26_BA6F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (43
;   bytes)
;   0xba6f..0xba9a  (43 bytes)
DATA_mensaje_26_BA6F:
	defb 0fch,03bh,0f7h,0fbh,001h,000h,04fh,003h,041h,04bh,003h,0a5h,042h,05bh,003h,045h	; ba6f  ......O.AK..B[.E
	defb 001h,002h,03ch,0feh,0fbh,03bh,042h,042h,0a6h,001h,00ah,00ah,05fh,046h,003h,042h	; ba7f  ..<...BB...._F.B
	defb 052h,003h,045h,003h,000h,041h,04fh,060h,06bh,03ch,0ffh	; ba8f  R.E..AO`k<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_BA9A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0xba9a..0xbabb  (33 bytes)
DATA_mensaje_26_BA9A:
	defb 0fch,03bh,05ah,053h,003h,041h,076h,07ch,003h,04fh,003h,001h,000h,074h,099h,058h	; ba9a  ..ZS.Av|.O...t.X
	defb 000h,05fh,045h,003h,06bh,067h,055h,0feh,054h,0a6h,052h,00ah,00ah,0f7h,0fbh,03ch	; baaa  ._E.kgU.T.R....<
	defb 0ffh	; baba

; ----------------------------------------------------------------------
; DATOS mensaje_26_BABB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (81
;   bytes)
;   0xbabb..0xbb0c  (81 bytes)
DATA_mensaje_26_BABB:
	defb 0fbh,03bh,0c6h,045h,003h,000h,046h,0a4h,042h,055h,000h,053h,05ah,003h,04fh,003h	; babb  ...E..F.BU.SZ.O.
	defb 04bh,04fh,045h,066h,0feh,079h,003h,077h,003h,058h,0b7h,045h,003h,000h,050h,0a6h	; bacb  KOEf.y.w.X.E..P.
	defb 052h,04bh,05eh,041h,005h,0feh,049h,058h,052h,041h,053h,003h,058h,000h,076h,07ch	; badb  RK^A..IXRAS.X.v|
	defb 003h,052h,003h,000h,04ch,06dh,04fh,003h,048h,053h,003h,006h,0feh,05dh,06dh,053h	; baeb  .R..LmO.HS...]mS
	defb 054h,066h,000h,053h,003h,042h,054h,0a6h,052h,04fh,049h,053h,045h,00ah,00ah,03ch	; bafb  Tf.S.BT.ROISE..<
	defb 0ffh	; bb0b

; ----------------------------------------------------------------------
; DATOS mensaje_26_BB0C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (78
;   bytes)
;   0xbb0c..0xbb5a  (78 bytes)
DATA_mensaje_26_BB0C:
	defb 0fch,03bh,044h,042h,046h,0a4h,042h,04bh,0a5h,050h,04fh,003h,006h,000h,074h,099h	; bb0c  ..DBF.BK.PO...t.
	defb 058h,0feh,089h,09dh,075h,080h,06ch,000h,05eh,041h,052h,044h,047h,065h,006h,000h	; bb1c  X...u.l.^ARDGe..
	defb 04bh,045h,04bh,0feh,054h,04dh,003h,000h,0e8h,06ch,045h,048h,052h,05eh,052h,003h	; bb2c  KEK.TM...lEHR^R.
	defb 000h,074h,099h,06ch,0feh,05eh,062h,06ah,042h,053h,04ch,068h,06dh,04fh,003h,041h	; bb3c  .t.l.^bjBSLhmO.A
	defb 002h,03ch,0fdh,0fbh,03bh,054h,04dh,003h,045h,04bh,066h,057h,03ch,0ffh	; bb4c  .<...TM.EKfW<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_BB5A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (191
;   bytes)
;   0xbb5a..0xbc19  (191 bytes)
DATA_mensaje_26_BB5A:
	defb 0fbh,03bh,079h,003h,077h,003h,059h,000h,053h,003h,049h,001h,002h,03ch,0feh,0fch	; bb5a  ..y.w.Y.S.I..<..
	defb 03bh,001h,03ch,0fdh,0f6h,079h,003h,077h,003h,000h,000h,03bh,077h,003h,098h,098h	; bb6a  ..<..y.w....w...
	defb 098h,098h,006h,000h,050h,0a3h,059h,003h,06dh,048h,003h,046h,059h,0feh,049h,069h	; bb7a  ....P.Y.mH.FY.Ii
	defb 047h,066h,041h,055h,000h,04bh,052h,044h,047h,006h,000h,041h,065h,041h,065h,0feh	; bb8a  GfAU.KRDG..AeAe.
	defb 04bh,003h,06dh,068h,041h,06ch,000h,05dh,06ah,05dh,003h,04ch,000h,04ah,041h,049h	; bb9a  K.mhAl.]j].L.JAI
	defb 003h,058h,0feh,08ah,075h,097h,06ch,000h,059h,054h,051h,0eah,045h,003h,000h,046h	; bbaa  .X..u.l.YTQ.E..F
	defb 04fh,006h,0fdh,049h,058h,08ah,075h,097h,06ch,0b8h,04fh,045h,003h,000h,04ah,041h	; bbba  O..IX.u.l.OE..JA
	defb 049h,003h,000h,049h,058h,0c2h,058h,0feh,0e7h,046h,053h,04bh,0e7h,048h,068h,062h	; bbca  I..IX.X..FSK.Hhb
	defb 058h,000h,04ch,05ch,003h,052h,045h,003h,0ech,056h,058h,04fh,003h,03ch,0fch,03bh	; bbda  X.L\.RE..VXO.<..
	defb 00ah,00ah,001h,03ch,0fdh,0fbh,03bh,079h,003h,077h,003h,045h,003h,000h,04eh,066h	; bbea  ...<...y.w.E..Nf
	defb 05ch,000h,058h,05dh,003h,0a6h,052h,0dch,047h,06bh,006h,0feh,0c6h,04fh,050h,062h	; bbfa  \.X]..R.Gk...OPb
	defb 000h,04eh,053h,05ch,000h,052h,003h,05eh,04bh,0a5h,042h,001h,03ch,0fah,025h	; bc0a  .NS\.R.^K.B.<.%

; ----------------------------------------------------------------------
; DATOS mensaje_26_BC19: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (94
;   bytes)
;   0xbc19..0xbc77  (94 bytes)
DATA_mensaje_26_BC19:
	defb 0fbh,03bh,079h,003h,077h,003h,045h,003h,04eh,066h,058h,042h,043h,055h,000h,058h	; bc19  ..y.w.E.NfXBCU.X
	defb 05dh,003h,0a6h,052h,0dch,047h,06bh,006h,047h,068h,05ch,003h,046h,0eah,045h,003h	; bc29  ]..R.Gk.Gh\.F.E.
	defb 000h,046h,04fh,058h,057h,03ch,0fdh,0fch,03bh,041h,063h,000h,04ah,041h,049h,003h	; bc39  .FOXW<...Ac.JAI.
	defb 05eh,052h,003h,000h,040h,046h,066h,061h,068h,054h,001h,0feh,079h,003h,077h,003h	; bc49  ^R..@FfahT..y.w.
	defb 06ch,000h,04fh,044h,04ch,000h,05dh,042h,05dh,042h,045h,003h,000h,045h,054h,066h	; bc59  l.ODL.]B]BE..ETf
	defb 04ch,003h,0feh,040h,068h,059h,04ch,003h,04fh,003h,001h,001h,03ch,0ffh	; bc69  L..@hYL.O...<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_BC77: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0xbc77..0xbc99  (34 bytes)
DATA_mensaje_26_BC77:
	defb 0fbh,03bh,04eh,042h,057h,006h,000h,079h,003h,077h,003h,06ch,000h,04fh,044h,04ch	; bc77  ..NBW..y.w.l.ODL
	defb 0feh,05dh,042h,05dh,042h,06ch,000h,045h,06dh,045h,003h,043h,05eh,04bh,0a5h,042h	; bc87  .]B]Bl.EmE.C^K.B
	defb 03ch,0ffh	; bc97

; ----------------------------------------------------------------------
; DATOS mensaje_26_BC99: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0xbc99..0xbcc2  (41 bytes)
DATA_mensaje_26_BC99:
	defb 0fbh,03bh,04eh,066h,058h,000h,079h,003h,077h,003h,045h,003h,000h,0b3h,055h,062h	; bc99  ..NfX.y.w.E...Ub
	defb 000h,04ah,041h,049h,003h,058h,0feh,08ah,075h,097h,06ch,000h,059h,054h,053h,042h	; bca9  .JAI.X..u.l.YTSB
	defb 053h,000h,04bh,052h,041h,068h,06bh,03ch,0ffh	; bcb9  S.KRAhk<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_BCC2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (170
;   bytes)
;   0xbcc2..0xbd6c  (170 bytes)
DATA_mensaje_26_BCC2:
	defb 0fbh,03bh,047h,068h,04bh,041h,0eah,058h,0f2h,04fh,003h,058h,05fh,059h,000h,053h	; bcc2  ..GhKA.X.O.X_Y.S
	defb 003h,042h,045h,04bh,066h,03ch,0fch,03bh,04eh,06dh,054h,049h,053h,000h,063h,0a6h	; bcd2  .BEKf<..NmTIS.c.
	defb 052h,068h,059h,003h,040h,041h,04bh,003h,0a3h,0feh,054h,041h,04eh,003h,03ch,0fdh	; bce2  RhY.@AK...TAN.<.
	defb 0fbh,03bh,063h,0a6h,052h,05fh,054h,047h,050h,0a3h,000h,06bh,045h,066h,054h,041h	; bcf2  ..c.R_TGP..kEfTA
	defb 06bh,006h,0fdh,0f5h,058h,0f2h,065h,001h,000h,040h,054h,04fh,058h,0c2h,0c3h,045h	; bd02  k...X.e..@TOX..E
	defb 003h,000h,0b3h,0feh,0d4h,0c1h,0c5h,079h,003h,077h,003h,055h,065h,067h,000h,05dh	; bd12  .......y.w.Ueg.]
	defb 06ah,05dh,003h,04ah,069h,065h,042h,053h,0feh,04bh,052h,041h,05eh,04ch,006h,000h	; bd22  j].JieBS.KRA^L..
	defb 053h,003h,042h,045h,0c6h,04fh,050h,06ch,0feh,044h,0b8h,04ch,052h,055h,000h,054h	; bd32  S.BE.OPl.D.LRU.T
	defb 066h,054h,041h,052h,003h,0d3h,04ah,041h,001h,0fdh,04dh,061h,052h,000h,079h,003h	; bd42  fTAR..JA..MaR.y.
	defb 077h,003h,06ch,04fh,044h,04ch,000h,011h,051h,058h,08ah,09dh,083h,06ch,0feh,044h	; bd52  w.lODL..QX...l.D
	defb 04bh,061h,04bh,0d3h,04ah,041h,001h,03ch,0fah,026h	; bd62  KaK.JA.<.&

; ----------------------------------------------------------------------
; DATOS mensaje_26_BD6C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (45
;   bytes)
;   0xbd6c..0xbd99  (45 bytes)
DATA_mensaje_26_BD6C:
	defb 0fch,03bh,049h,069h,045h,003h,000h,049h,058h,06eh,055h,04bh,003h,06fh,045h,003h	; bd6c  ..IiE..IXnUK.oE.
	defb 08ah,09dh,083h,045h,001h,002h,03ch,0fbh,03bh,04eh,058h,065h,042h,057h,006h,000h	; bd7c  ...E..<..NXeBW..
	defb 020h,0b2h,000h,053h,003h,042h,041h,042h,049h,053h,002h,03ch,0ffh	; bd8c   ..S.BABIS.<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_BD99: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0xbd99..0xbdaf  (22 bytes)
DATA_mensaje_26_BD99:
	defb 0fch,03bh,055h,04bh,003h,06ch,000h,053h,003h,042h,04ch,069h,059h,003h,041h,041h	; bd99  ..UK.l.S.BLiY.AA
	defb 06dh,04fh,003h,002h,03ch,0ffh	; bda9

; ----------------------------------------------------------------------
; DATOS mensaje_26_BDAF: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (161
;   bytes)
;   0xbdaf..0xbe50  (161 bytes)
DATA_mensaje_26_BDAF:
	defb 0fbh,03bh,070h,07fh,08eh,058h,0deh,06ch,000h,062h,042h,011h,053h,003h,000h,04dh	; bdaf  ..p..X.l.bB.S..M
	defb 041h,067h,0feh,04bh,05eh,04bh,0a5h,042h,006h,000h,080h,0aah,098h,07bh,020h,053h	; bdbf  Ag.K^K.B.....{ S
	defb 041h,0a6h,04bh,0a5h,055h,0feh,0b8h,051h,048h,04fh,000h,06eh,079h,092h,09dh,07bh	; bdcf  A.K.U..QHO.ny..{
	defb 003h,0aeh,06fh,055h,000h,079h,003h,077h,003h,06ch,0feh,04fh,044h,04ch,000h,08ah	; bddf  ..oU.y.w.l.ODL..
	defb 09dh,083h,045h,003h,000h,058h,0a6h,052h,041h,04fh,006h,0fdh,06eh,0f5h,0b2h,058h	; bdef  ..E..X.RAO..n..X
	defb 077h,003h,096h,09dh,083h,003h,077h,09ah,07ch,053h,000h,04eh,066h,058h,0feh,077h	; bdff  w.....w.|S.NfX.w
	defb 003h,096h,09dh,083h,003h,077h,09ah,07ch,045h,003h,000h,045h,04ah,054h,068h,0eah	; be0f  .....w.|E..EJTh.
	defb 0feh,042h,06dh,061h,041h,058h,000h,046h,003h,0a3h,047h,04ah,065h,042h,055h,065h	; be1f  .BmaAX.F..GJeBUe
	defb 067h,0feh,079h,003h,077h,003h,059h,000h,05dh,06ah,05ah,003h,068h,06fh,00ah,00ah	; be2f  g.y.w.Y.]jZ.ho..
	defb 053h,006h,0fdh,04eh,042h,04fh,003h,001h,000h,06bh,045h,0a6h,04fh,06bh,001h,03ch	; be3f  S..NBO...kE.Ok.<
	defb 0ffh	; be4f

; ----------------------------------------------------------------------
; DATOS mensaje_26_BE50: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (10
;   bytes)
;   0xbe50..0xbe5a  (10 bytes)
DATA_mensaje_26_BE50:
	defb 0fbh,03bh,06bh,045h,0a6h,04fh,06bh,001h,03ch,0ffh	; be50  ..kE.Ok.<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_BE5A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 3 bloques:
;   (mensaje_26_BE9B BE9B-BF7F) (mensaje_26_BF7E BF7E-BFB1); lo leen p00:4E76
;   (343 bytes)
;   0xbe5a..0xbfb1  (343 bytes)
DATA_mensaje_26_BE5A:
	defb 0fch,03bh,0b8h,06ah,001h,000h,062h,042h,011h,051h,058h,06eh,055h,04bh,003h,06fh	; be5a  ...j..bB.QXnUK.o
	defb 045h,003h,052h,003h,04fh,001h,0feh,04eh,069h,062h,000h,012h,051h,045h,003h,000h	; be6a  E.R.O..Nib..QE..
	defb 077h,09ah,07ch,04ch,068h,065h,042h,055h,001h,0feh,00ah,00ah,040h,040h,0a6h,000h	; be7a  w.|LheBU....@@..
	defb 079h,003h,077h,003h,058h,065h,042h,04ch,045h,003h,05ch,06dh,04fh,003h,001h,03ch	; be8a  y.w.XeBLE.\mO..<
	defb 0fah,0f6h,079h,003h,077h,003h,000h,000h,03bh,072h,076h,003h,0ach,020h,020h,020h	; be9a  ..y.w....rv..
	defb 020h,020h,020h,0afh,001h,001h,000h,077h,003h,073h,0afh,001h,0feh,08bh,003h,077h	; beaa     ....w.s.....w
	defb 003h,0a9h,0a9h,0a9h,0afh,001h,000h,075h,003h,074h,074h,0abh,0abh,0abh,0abh,0afh	; beba  .......u.tt.....
	defb 001h,001h,0feh,076h,003h,0ach,070h,0a7h,0a7h,0a7h,020h,020h,020h,020h,020h,020h	; beca  ...v..p...
	defb 020h,001h,001h,03ch,0fdh,0fch,03bh,06eh,04eh,066h,058h,077h,003h,096h,09dh,083h	; beda   ..<...nNfXw....
	defb 003h,077h,09ah,07ch,06fh,053h,059h,0feh,077h,09ah,07ch,04ch,068h,06eh,055h,04bh	; beea  .w.|oSY.w.|LhnUK
	defb 003h,06fh,058h,049h,053h,04fh,003h,0a6h,04fh,06dh,04fh,003h,001h,0fdh,04eh,069h	; befa  .oXISO..OmO...Ni
	defb 055h,059h,000h,017h,041h,06ah,058h,000h,055h,04bh,003h,06ch,0feh,04fh,003h,04ch	; bf0a  UY..AjX.UK.l.O.L
	defb 049h,053h,058h,052h,003h,046h,068h,005h,051h,05eh,067h,000h,08bh,004h,097h,07ch	; bf1a  ISXR.Fh.Q^g....|
	defb 003h,090h,058h,0feh,059h,04fh,066h,046h,06ch,04ch,068h,005h,013h,045h,047h,050h	; bf2a  ..X.YOfFlLh..EGP
	defb 0a4h,042h,058h,0feh,07fh,003h,071h,093h,045h,003h,000h,05ah,051h,065h,042h,04fh	; bf3a  .BX...q.E..ZQeBO
	defb 003h,0a6h,04fh,06dh,04fh,003h,001h,03ch,0fdh,0fbh,03bh,079h,003h,077h,003h,045h	; bf4a  ..OmO..<...y.w.E
	defb 003h,000h,0ech,06dh,052h,003h,0dch,047h,06bh,00ah,00ah,03ch,0feh,0fch,03bh,072h	; bf5a  ...mR..Gk..<...r
	defb 090h,000h,049h,069h,052h,003h,000h,04ch,05ch,003h,052h,045h,003h,000h,044h,06bh	; bf6a  ..IiR..L\.RE..Dk
	defb 0a6h,04fh,03ch,0fah,0fbh,03bh,07fh,003h,091h,04fh,003h,06bh,001h,000h,049h,042h	; bf7a  .O<......O.k..IB
	defb 045h,000h,054h,041h,06bh,001h,0feh,040h,040h,0a6h,001h,000h,079h,003h,077h,003h	; bf8a  E.TAk..@@...y.w.
	defb 045h,003h,000h,04ah,041h,049h,003h,058h,000h,08ah,075h,097h,06ch,0feh,059h,054h	; bf9a  E..JAI.X..u.l.YT
	defb 0a6h,04fh,001h,001h,03ch,0fah,027h	; bfaa

; ----------------------------------------------------------------------
; DATOS mensaje_26_BFB1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensaje_26_BFCF BFCF-BFDE); lo leen p00:4E76 (45 bytes)
;   0xbfb1..0xbfde  (45 bytes)
DATA_mensaje_26_BFB1:
	defb 0fch,03bh,042h,06bh,09eh,020h,020h,020h,020h,020h,0a6h,001h,001h,03ch,0feh,0fbh	; bfb1  ..Bk.     ...<..
	defb 03bh,046h,0a3h,040h,020h,020h,020h,020h,020h,0a6h,001h,001h,03ch,0fah,0fbh,03bh	; bfc1  .F.@     ...<...
	defb 05eh,04ch,003h,000h,065h,047h,0b8h,068h,049h,053h,057h,03ch,0ffh	; bfd1  ^L..eG.hISW<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_BFDE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (11
;   bytes)
;   0xbfde..0xbfe9  (11 bytes)
DATA_mensaje_26_BFDE:
	defb 0fbh,03bh,0c9h,06ch,04ch,068h,051h,062h,067h,03ch,0ffh	; bfde  ...lLhQbg<.

; ----------------------------------------------------------------------
; DATOS mensaje_26_BFE9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0xbfe9..0xbff9  (16 bytes)
DATA_mensaje_26_BFE9:
	defb 0fbh,03bh,0c9h,06ch,000h,0ceh,05ch,003h,068h,0a6h,052h,041h,042h,058h,03ch,0ffh	; bfe9  ...l..\.h.RABX<.

; ----------------------------------------------------------------------
; DATOS resto_BFF9: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (7 bytes)
;   0xbff9..0xc000  (7 bytes)
DATA_resto_BFF9:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff9
