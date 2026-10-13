; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 22 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS mensaje_21_7FA9_cola: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba (sigue del banco 21); lo
;   leen p00:4E76 (139 bytes)
;   0x8000..0x808b  (139 bytes)
DATA_mensaje_21_7FA9_cola:
	defb 053h,06ch,04bh,04fh,045h,003h,0feh,07fh,003h,09dh,082h,053h,058h,0ddh,055h,0e7h	; 8000  SlKOE......SX.U.
	defb 05eh,069h,04fh,000h,044h,04ah,054h,049h,003h,005h,0feh,051h,05eh,067h,000h,0c5h	; 8010  ^iO.DJTI...Q^g..
	defb 0c0h,058h,000h,040h,053h,053h,067h,062h,041h,068h,006h,0fdh,04eh,04bh,052h,000h	; 8020  .X.@SSgbAh..NKR.
	defb 079h,003h,077h,003h,06ch,000h,04fh,041h,04bh,003h,04bh,04fh,000h,08ah,020h,09ah	; 8030  y.w.l.OAK.KO.. .
	defb 020h,005h,0f7h,0fch,053h,003h,058h,000h,0f7h,0fbh,053h,003h,058h,045h,003h,041h	; 8040   ...S.X...S.XE.A
	defb 068h,006h,0feh,049h,06dh,054h,055h,000h,04ch,059h,003h,066h,04bh,041h,049h,053h	; 8050  h..ImTU.LY.fKAIS
	defb 045h,003h,000h,0feh,045h,04ah,054h,0a6h,04fh,0f4h,059h,000h,059h,04bh,003h,061h	; 8060  E...EJT.O.Y.YK.a
	defb 052h,04fh,003h,006h,0fdh,04ah,040h,000h,05fh,06dh,054h,052h,003h,000h,041h,058h	; 8070  RO...J@._mTR..AX
	defb 06ah,042h,052h,003h,059h,054h,041h,045h,001h,03ch,0ffh	; 8080  jBR.YTAE.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_808B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0x808b..0x80bd  (50 bytes)
DATA_mensaje_22_808B:
	defb 0f8h,03bh,0f7h,0fch,000h,0f7h,0fbh,04ah,06dh,006h,0feh,065h,047h,000h,049h,003h	; 808b  .......Jm..eG.I.
	defb 05bh,003h,04bh,003h,052h,003h,000h,045h,043h,066h,069h,05eh,04bh,04fh,006h,0feh	; 809b  [.K.R..ECfi^KO..
	defb 079h,003h,077h,003h,059h,000h,04fh,044h,04bh,04fh,06dh,052h,003h,04bh,0a5h,002h	; 80ab  y.w.Y.ODKOmR.K..
	defb 03ch,0ffh	; 80bb

; ----------------------------------------------------------------------
; DATOS mensaje_22_80BD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x80bd..0x80d2  (21 bytes)
DATA_mensaje_22_80BD:
	defb 0fbh,03bh,049h,058h,080h,0aah,098h,07bh,020h,045h,003h,000h,055h,04dh,062h,058h	; 80bd  ..IX...{ E..UMbX
	defb 054h,058h,057h,03ch,0ffh	; 80cd

; ----------------------------------------------------------------------
; DATOS mensaje_22_80D2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x80d2..0x80e1  (15 bytes)
DATA_mensaje_22_80D2:
	defb 0fbh,03bh,042h,05eh,047h,000h,059h,003h,048h,052h,041h,068h,06bh,03ch,0ffh	; 80d2  ..B^G.Y.HRAhk<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_80E1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x80e1..0x80f8  (23 bytes)
DATA_mensaje_22_80E1:
	defb 0fbh,03bh,059h,003h,048h,058h,000h,045h,06bh,06ch,000h,059h,041h,052h,003h,063h	; 80e1  ..Y.HX.Ekl.YAR.c
	defb 067h,05eh,04bh,0a5h,042h,03ch,0ffh	; 80f1

; ----------------------------------------------------------------------
; DATOS mensaje_22_80F8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x80f8..0x8105  (13 bytes)
DATA_mensaje_22_80F8:
	defb 0fbh,03bh,0bbh,041h,06ah,045h,003h,000h,041h,041h,06bh,03ch,0ffh	; 80f8  ...AjE..AAk<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8105: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (37
;   bytes)
;   0x8105..0x812a  (37 bytes)
DATA_mensaje_22_8105:
	defb 0fbh,03bh,0bbh,041h,06ah,059h,000h,065h,047h,052h,062h,000h,011h,010h,010h,04ah	; 8105  ...AjY.eGRb....J
	defb 041h,0feh,053h,062h,054h,068h,053h,000h,0d9h,04bh,000h,044h,051h,045h,069h,058h	; 8115  A.SbThS..K.DQEiX
	defb 065h,042h,057h,03ch,0ffh	; 8125

; ----------------------------------------------------------------------
; DATOS mensaje_22_812A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x812a..0x813b  (17 bytes)
DATA_mensaje_22_812A:
	defb 0fbh,03bh,045h,054h,067h,000h,053h,04bh,06ch,000h,053h,0a6h,052h,068h,06bh,03ch	; 812a  ..ETg.SKl.S.Rhk<
	defb 0ffh	; 813a

; ----------------------------------------------------------------------
; DATOS mensaje_22_813B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (11
;   bytes)
;   0x813b..0x8146  (11 bytes)
DATA_mensaje_22_813B:
	defb 03bh,089h,003h,08bh,003h,089h,003h,08bh,003h,03ch,0ffh	; 813b  .........<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8146: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (9
;   bytes)
;   0x8146..0x814f  (9 bytes)
DATA_mensaje_22_8146:
	defb 03bh,08bh,003h,020h,08bh,003h,020h,03ch,0ffh	; 8146  ... .. <.

; ----------------------------------------------------------------------
; DATOS mensaje_22_814F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (7
;   bytes)
;   0x814f..0x8156  (7 bytes)
DATA_mensaje_22_814F:
	defb 03bh,070h,01dh,070h,01dh,03ch,0ffh	; 814f

; ----------------------------------------------------------------------
; DATOS mensaje_22_8156: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (11
;   bytes)
;   0x8156..0x8161  (11 bytes)
DATA_mensaje_22_8156:
	defb 03bh,089h,004h,08bh,004h,089h,004h,08bh,004h,03ch,0ffh	; 8156  .........<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8161: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (10
;   bytes)
;   0x8161..0x816b  (10 bytes)
DATA_mensaje_22_8161:
	defb 03bh,08eh,09dh,08eh,000h,08eh,09dh,08eh,03ch,0ffh	; 8161  ........<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_816B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (69
;   bytes)
;   0x816b..0x81b0  (69 bytes)
DATA_mensaje_22_816B:
	defb 0fbh,03bh,05fh,06dh,054h,000h,080h,0aah,098h,07bh,020h,045h,003h,000h,055h,04dh	; 816b  .._mT....{ E..UM
	defb 062h,058h,053h,059h,0feh,0b7h,051h,003h,041h,052h,041h,054h,041h,06bh,006h,0feh	; 817b  bXSY..Q.ARATAk..
	defb 053h,003h,042h,04ch,069h,059h,003h,000h,055h,04dh,062h,058h,000h,053h,041h,042h	; 818b  S.BLiY..UMbX.SAB
	defb 049h,053h,045h,003h,0feh,04bh,0a5h,042h,061h,041h,000h,052h,003h,046h,068h,045h	; 819b  ISE..K.BaA.R.FhE
	defb 04bh,066h,002h,03ch,0ffh	; 81ab

; ----------------------------------------------------------------------
; DATOS mensaje_22_81B0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (225
;   bytes)
;   0x81b0..0x8291  (225 bytes)
DATA_mensaje_22_81B0:
	defb 0fch,03bh,049h,069h,059h,000h,080h,0aah,098h,07bh,020h,045h,003h,041h,051h,062h	; 81b0  ..IiY....{ E.AQb
	defb 000h,047h,05ah,003h,055h,0feh,045h,048h,052h,041h,04fh,062h,058h,006h,000h,049h	; 81c0  .GZ.U.EHRAObX..I
	defb 069h,06ch,0e4h,0a6h,052h,041h,054h,041h,0feh,0cfh,0d0h,059h,000h,055h,04dh,062h	; 81d0  il..RATA...Y.UMb
	defb 058h,04fh,003h,001h,0fdh,049h,049h,055h,041h,068h,000h,080h,0aah,098h,07bh,020h	; 81e0  XO...IIUAh....{
	defb 059h,000h,079h,003h,077h,003h,045h,003h,0feh,059h,003h,048h,052h,041h,068h,000h	; 81f0  Y.y.w.E..Y.HRAh.
	defb 055h,04dh,062h,058h,054h,06dh,04fh,003h,001h,001h,03ch,0feh,0f8h,03bh,00ah,00ah	; 8200  UMbXTmO...<.....
	defb 09bh,0afh,089h,0afh,089h,0afh,089h,006h,000h,0f7h,0fch,053h,003h,058h,0feh,051h	; 8210  ...........S.X.Q
	defb 05eh,066h,054h,041h,07bh,003h,0aeh,072h,07fh,003h,09dh,059h,063h,061h,052h,0d3h	; 8220  ^fTA{..r...YcaR.
	defb 04ah,041h,03ch,0fdh,0fch,03bh,07bh,003h,0aeh,072h,07fh,003h,09dh,054h,06dh,045h	; 8230  JA<...{..r...TmE
	defb 04bh,003h,0a3h,054h,041h,006h,0feh,05dh,06dh,062h,058h,058h,000h,080h,0aah,098h	; 8240  K..TA..]mbXX....
	defb 07bh,020h,059h,000h,091h,07ch,077h,058h,0feh,063h,05eh,052h,003h,000h,049h,049h	; 8250  { Y..|wX.c^R..II
	defb 055h,041h,068h,085h,07dh,058h,080h,0aah,098h,07bh,020h,055h,0feh,049h,06ah,04ah	; 8260  UAh.}X...{ U.IjJ
	defb 069h,052h,04bh,05eh,0a6h,04fh,06dh,04fh,003h,03ch,0fdh,0f8h,03bh,0f7h,0fch,053h	; 8270  iRK^.OmO.<.....S
	defb 003h,058h,001h,000h,0c8h,041h,04ch,046h,003h,052h,003h,04ch,04eh,003h,001h,03ch	; 8280  .X...ALF.R.LN..<
	defb 0ffh	; 8290

; ----------------------------------------------------------------------
; DATOS mensaje_22_8291: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (140
;   bytes)
;   0x8291..0x831d  (140 bytes)
DATA_mensaje_22_8291:
	defb 0fch,03bh,080h,0aah,098h,07bh,020h,005h,04eh,049h,055h,041h,068h,076h,08fh,058h	; 8291  .....{ .NIUAhv.X
	defb 0feh,08ch,003h,08ah,003h,020h,06ch,000h,04fh,003h,046h,040h,048h,003h,052h,049h	; 82a1  ..... l.O.F@H.RI
	defb 003h,066h,06dh,03ch,0feh,0f8h,03bh,04ah,040h,000h,049h,0a6h,050h,055h,000h,044h	; 82b1  .fm<...J@.I.PU.D
	defb 041h,052h,003h,03ch,0feh,03bh,089h,003h,08bh,003h,002h,03ch,0fdh,0f8h,03bh,044h	; 82c1  AR.<.......<...D
	defb 041h,052h,003h,03ch,0feh,03bh,08ah,003h,0aah,01dh,01dh,01dh,01dh,001h,000h,08ah	; 82d1  AR.<............
	defb 003h,0aah,01dh,01dh,01dh,01dh,001h,001h,03ch,0fdh,0fch,03bh,05dh,066h,000h,076h	; 82e1  ........<...]f.v
	defb 08fh,045h,003h,000h,05dh,06dh,053h,042h,055h,000h,049h,058h,0d6h,058h,0feh,059h	; 82f1  .E..]mSBU.IX.X.Y
	defb 059h,044h,063h,054h,066h,000h,046h,0a4h,042h,055h,000h,054h,046h,04fh,003h,04bh	; 8301  YDcTf.F.BU.TFO.K
	defb 04fh,067h,0feh,04bh,054h,041h,059h,04ch,003h,04ah,03ch,0ffh	; 8311  Og.KTAYL.J<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_831D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (68
;   bytes)
;   0x831d..0x8361  (68 bytes)
DATA_mensaje_22_831D:
	defb 0fch,03bh,049h,058h,0d6h,045h,003h,000h,054h,046h,04fh,003h,04bh,04fh,058h,045h	; 831d  ..IX.E..TFO.KOXE
	defb 003h,0feh,04bh,0a5h,042h,049h,04fh,003h,001h,000h,049h,058h,080h,0aah,098h,07bh	; 832d  ..K.BIO...IX...{
	defb 020h,059h,0feh,055h,04dh,062h,058h,04fh,003h,001h,03ch,0feh,0f8h,03bh,090h,07bh	; 833d   Y.UMbXO..<....{
	defb 058h,000h,041h,053h,003h,049h,06ah,045h,003h,0bch,045h,0a6h,04fh,06dh,04bh,003h	; 834d  X.AS.IjE..E.OmK.
	defb 0a3h,06ah,03ch,0ffh	; 835d

; ----------------------------------------------------------------------
; DATOS mensaje_22_8361: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (57
;   bytes)
;   0x8361..0x839a  (57 bytes)
DATA_mensaje_22_8361:
	defb 0fbh,03bh,0f7h,0fch,000h,049h,069h,04bh,003h,0a3h,040h,000h,0c9h,06ch,0c8h,0a6h	; 8361  .....IiK..@..l..
	defb 052h,062h,0feh,07fh,003h,091h,065h,006h,000h,089h,004h,09dh,089h,004h,020h,07ch	; 8371  Rb....e....... |
	defb 0c5h,059h,000h,055h,04dh,062h,058h,06ch,0feh,05dh,06dh,062h,058h,053h,000h,0dbh	; 8381  .Y.UMbXl.]mbXS..
	defb 041h,049h,06dh,052h,003h,068h,06bh,03ch,0ffh	; 8391  AImR.hk<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_839A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (52
;   bytes)
;   0x839a..0x83ce  (52 bytes)
DATA_mensaje_22_839A:
	defb 0fbh,03bh,05dh,06dh,062h,058h,058h,000h,080h,0aah,098h,07bh,020h,045h,003h,000h	; 839a  ..]mbXX....{ E..
	defb 0ech,056h,0feh,05eh,046h,003h,06bh,055h,000h,04bh,0a5h,042h,049h,053h,000h,054h	; 83aa  .V.^F.kU.K.BIS.T
	defb 068h,065h,042h,054h,049h,053h,0feh,0c8h,0a6h,052h,054h,045h,0a6h,04fh,045h,04bh	; 83ba  heBTIS...RTE.OEK
	defb 066h,002h,03ch,0ffh	; 83ca

; ----------------------------------------------------------------------
; DATOS mensaje_22_83CE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (102
;   bytes)
;   0x83ce..0x8434  (102 bytes)
DATA_mensaje_22_83CE:
	defb 0fch,03bh,080h,0aah,098h,07bh,020h,045h,003h,000h,0c8h,041h,058h,049h,04bh,04fh	; 83ce  .....{ E...AXIKO
	defb 049h,053h,059h,00ah,0feh,087h,0afh,077h,099h,07ch,058h,042h,066h,055h,000h,07fh	; 83de  ISY....w.|XBfU..
	defb 003h,09dh,082h,053h,058h,0ddh,055h,0feh,052h,003h,046h,04fh,000h,08ch,003h,08ah	; 83ee  ...SX.U.R.FO....
	defb 003h,020h,058h,0d1h,0b6h,045h,003h,05dh,0a6h,052h,040h,068h,045h,066h,0fdh,04eh	; 83fe  . X..E.].R@hEf.N
	defb 069h,06ch,000h,089h,004h,09dh,089h,004h,020h,07ch,0c5h,055h,000h,051h,04fh,043h	; 840e  il...... |.U.QOC
	defb 052h,0feh,05dh,04bh,041h,00ah,00ah,053h,03ch,0feh,0fbh,03bh,04eh,069h,001h,000h	; 841e  R.]KA..S<...Ni..
	defb 04eh,069h,065h,001h,03ch,0ffh	; 842e

; ----------------------------------------------------------------------
; DATOS mensaje_22_8434: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (232
;   bytes)
;   0x8434..0x851c  (232 bytes)
DATA_mensaje_22_8434:
	defb 0fch,03bh,049h,069h,059h,000h,05dh,06dh,062h,058h,058h,000h,080h,0aah,098h,07bh	; 8434  ..IiY.]mbXX....{
	defb 020h,045h,003h,0feh,0e4h,0a6h,052h,041h,04fh,000h,087h,0afh,077h,099h,07ch,006h	; 8444   E....RAO...w.|.
	defb 000h,049h,058h,042h,066h,055h,0feh,049h,058h,08ch,003h,08ah,003h,020h,058h,000h	; 8454  .IXBfU.IX.... X.
	defb 0d1h,0b6h,045h,003h,05dh,0a6h,052h,040h,068h,03ch,0fdh,0f8h,03bh,042h,060h,00ah	; 8464  ..E.].R@h<...B`.
	defb 00ah,041h,045h,055h,062h,006h,000h,049h,058h,0d1h,0b6h,059h,0c6h,045h,003h,0feh	; 8474  .AEUb..IX..Y.E..
	defb 080h,0aah,098h,07bh,020h,055h,000h,041h,051h,062h,0c8h,0a6h,052h,044h,0a6h,04fh	; 8484  ...{ U.AQb..RD.O
	defb 0feh,0d1h,0b6h,04bh,003h,0a3h,006h,000h,06eh,080h,0aah,098h,07bh,020h,000h,044h	; 8494  ...K....n...{ .D
	defb 0b6h,045h,003h,0fdh,04fh,003h,069h,045h,04ch,046h,054h,0bah,053h,000h,048h,0a6h	; 84a4  .E..O.iELFT.S.H.
	defb 049h,06dh,04bh,000h,0d6h,045h,003h,0feh,0e7h,05eh,069h,04fh,066h,000h,049h,058h	; 84b4  ImK..E...^iOf.IX
	defb 0d1h,06ch,051h,048h,065h,06fh,053h,0feh,041h,051h,062h,0c8h,0a6h,052h,044h,0a6h	; 84c4  .lQHeoS.AQb..RD.
	defb 04fh,03ch,0fdh,0fch,03bh,05dh,06dh,062h,058h,058h,000h,080h,0aah,098h,07bh,020h	; 84d4  O<...]mbXX....{
	defb 054h,066h,000h,0feh,06bh,045h,003h,0d6h,058h,0d1h,0b6h,059h,0edh,0a6h,052h,041h	; 84e4  Tf..kE..X..Y..RA
	defb 068h,059h,04ch,003h,03ch,0feh,0f8h,03bh,041h,045h,055h,062h,03ch,0fdh,0fch,03bh	; 84f4  hYL.<...AEUb<...
	defb 074h,099h,045h,003h,000h,04eh,058h,0d1h,0b6h,06ch,000h,053h,041h,04fh,04fh,003h	; 8504  t.E..NX..l.SAOO.
	defb 04bh,052h,0feh,05fh,068h,065h,03ch,0ffh	; 8514  KR._he<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_851C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (224
;   bytes)
;   0x851c..0x85fc  (224 bytes)
DATA_mensaje_22_851C:
	defb 0fch,03bh,080h,0aah,098h,07bh,020h,005h,076h,08fh,058h,0d6h,058h,0d1h,0b6h,059h	; 851c  .....{ .v.X.X..Y
	defb 0feh,0c9h,053h,041h,042h,002h,03ch,0feh,0f8h,03bh,00ah,00ah,03ch,0fdh,0fch,03bh	; 852c  ..SAB.<.....<...
	defb 076h,08fh,045h,003h,000h,089h,004h,09dh,089h,004h,020h,07ch,0c5h,045h,066h,000h	; 853c  v.E....... |.Ef.
	defb 041h,051h,062h,0feh,0c8h,06bh,069h,052h,044h,067h,005h,04eh,04bh,052h,000h,0d1h	; 854c  AQb..kiRDg.NKR..
	defb 051h,003h,048h,04fh,0feh,049h,058h,0d6h,058h,0d1h,0b6h,04fh,003h,065h,006h,076h	; 855c  Q.HO.IX.X..O.e.v
	defb 08fh,058h,087h,0afh,077h,099h,07ch,058h,0feh,042h,066h,055h,000h,05dh,0a6h,052h	; 856c  .X..w.|X.BfU.].R
	defb 040h,0a6h,04fh,0d1h,0b6h,04fh,003h,065h,006h,0fdh,04ah,040h,0a6h,001h,000h,0c8h	; 857c  @.O..O.e..J@....
	defb 0a6h,052h,05fh,068h,06dh,04fh,003h,001h,0feh,076h,08fh,045h,003h,000h,05dh,06dh	; 858c  .R_hmO...v.E..]m
	defb 053h,042h,055h,000h,049h,058h,0d6h,058h,059h,059h,044h,063h,005h,080h,0aah,098h	; 859c  SBU.IX.XYYDc....
	defb 07bh,020h,0e3h,054h,066h,000h,0c8h,043h,068h,059h,04ch,003h,04fh,003h,001h,001h	; 85ac  { .Tf..ChYL.O...
	defb 03ch,0fdh,0f8h,03bh,00ah,00ah,00ah,00ah,072h,01dh,0afh,001h,000h,076h,003h,0ach	; 85bc  <.......r....v..
	defb 089h,089h,089h,089h,001h,0feh,059h,003h,069h,04fh,066h,000h,04bh,045h,04fh,054h	; 85cc  ......Y.iOf.KEOT
	defb 041h,006h,000h,076h,07ah,08eh,058h,0feh,0c8h,042h,053h,042h,067h,000h,074h,099h	; 85dc  A..vz.X..BSBg.t.
	defb 04ah,05eh,045h,003h,06eh,079h,003h,077h,003h,06fh,04fh,003h,001h,03ch,0fah,00fh	; 85ec  J^E.ny.w.oO..<..

; ----------------------------------------------------------------------
; DATOS mensaje_22_85FC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x85fc..0x8613  (23 bytes)
DATA_mensaje_22_85FC:
	defb 0fbh,03bh,0f1h,0bah,045h,003h,000h,044h,044h,04dh,003h,041h,000h,040h,051h,05eh	; 85fc  ....E..DDM.A.@Q^
	defb 0a6h,052h,041h,068h,06bh,03ch,0ffh	; 860c

; ----------------------------------------------------------------------
; DATOS mensajes_22_8613: 11 palabras: los mensajes de la sala 179 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (22 bytes)
;   0x8613..0x8629  (22 bytes)
DATA_mensajes_22_8613:
	defb 029h,086h	; 8613
	defb 040h,086h	; 8615
	defb 098h,086h	; 8617
	defb 0cbh,086h	; 8619
	defb 0f3h,086h	; 861b
	defb 00ch,087h	; 861d
	defb 01ch,087h	; 861f
	defb 042h,087h	; 8621
	defb 079h,087h	; 8623
	defb 0b2h,087h	; 8625
	defb 078h,074h	; 8627

; ----------------------------------------------------------------------
; DATOS mensaje_22_8629: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x8629..0x8640  (23 bytes)
DATA_mensaje_22_8629:
	defb 0fbh,03bh,040h,06dh,054h,053h,049h,06ah,055h,000h,087h,07ch,003h,08fh,045h,003h	; 8629  ..@mTSIjU..|..E.
	defb 000h,041h,068h,06bh,001h,03ch,0ffh	; 8639

; ----------------------------------------------------------------------
; DATOS mensaje_22_8640: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (88
;   bytes)
;   0x8640..0x8698  (88 bytes)
DATA_mensaje_22_8640:
	defb 0fch,03bh,044h,041h,000h,087h,07ch,003h,08fh,058h,000h,087h,07ch,003h,049h,042h	; 8640  ..DA..|..X..|.IB
	defb 001h,0feh,0c9h,04bh,052h,068h,06dh,04fh,003h,000h,049h,06dh,054h,053h,049h,06ah	; 8650  ...KRhmO..ImTSIj
	defb 052h,003h,002h,03ch,0fdh,0f8h,03bh,040h,06dh,04ah,06dh,000h,0c9h,064h,020h,052h	; 8660  R..<...@mJm..d R
	defb 05eh,06dh,057h,06dh,006h,0feh,065h,042h,0b8h,053h,047h,054h,059h,069h,006h,06bh	; 8670  ^mWm..eB.SGTYi.k
	defb 052h,059h,000h,049h,058h,053h,042h,067h,069h,0a6h,046h,053h,04bh,04fh,000h,092h	; 8680  RY.IXSBgi.FSKO..
	defb 077h,003h,096h,04fh,003h,04ch,03ch,0ffh	; 8690  w..O.L<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8698: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (51
;   bytes)
;   0x8698..0x86cb  (51 bytes)
DATA_mensaje_22_8698:
	defb 0f8h,03bh,04bh,003h,051h,059h,000h,040h,04bh,06ch,000h,047h,04bh,003h,041h,052h	; 8698  ..K.QY.@Kl.GK.AR
	defb 04bh,062h,052h,0feh,0cdh,048h,06dh,065h,042h,055h,000h,054h,0a6h,052h,04bh,05eh	; 86a8  KbR..HmeBU.T.RK^
	defb 041h,05eh,04bh,052h,06dh,03ch,0fbh,03bh,05eh,040h,000h,045h,06bh,041h,04eh,042h	; 86b8  A^KRm<..^@.EkANB
	defb 055h,03ch,0ffh	; 86c8

; ----------------------------------------------------------------------
; DATOS mensaje_22_86CB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (40
;   bytes)
;   0x86cb..0x86f3  (40 bytes)
DATA_mensaje_22_86CB:
	defb 0f8h,03bh,040h,06dh,04fh,000h,0f7h,0fch,059h,06dh,000h,04fh,003h,0a6h,04bh,0a3h	; 86cb  ..@mO...Ym.O..K.
	defb 06ah,002h,054h,09eh,000h,04fh,04ch,048h,053h,047h,054h,059h,069h,006h,049h,003h	; 86db  j.T..OLHSGTYi.I.
	defb 04bh,0a5h,042h,04fh,003h,04ch,03ch,0ffh	; 86eb  K.BO.L<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_86F3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (25
;   bytes)
;   0x86f3..0x870c  (25 bytes)
DATA_mensaje_22_86F3:
	defb 0fbh,03bh,087h,07ch,003h,08fh,065h,03ch,0feh,0f8h,03bh,06bh,052h,059h,000h,092h	; 86f3  ...|..e<...kRY..
	defb 077h,003h,096h,04fh,003h,0a6h,04dh,03ch,0ffh	; 8703  w..O..M<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_870C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x870c..0x871c  (16 bytes)
DATA_mensaje_22_870C:
	defb 0fbh,03bh,040h,04bh,06ch,000h,047h,04bh,003h,041h,052h,041h,068h,06bh,03ch,0ffh	; 870c  ..@Kl.GK.ARAhk<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_871C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (38
;   bytes)
;   0x871c..0x8742  (38 bytes)
DATA_mensaje_22_871C:
	defb 0f8h,03bh,063h,061h,053h,041h,04fh,0efh,045h,003h,000h,065h,06ah,04bh,0a4h,044h	; 871c  ..caSAO.E..ejK.D
	defb 05eh,006h,0feh,06bh,052h,059h,000h,05eh,04ch,003h,041h,04ah,045h,041h,006h,000h	; 872c  ^..kRY.^L.AJEA..
	defb 08dh,09dh,08eh,055h,03ch,0ffh	; 873c

; ----------------------------------------------------------------------
; DATOS mensaje_22_8742: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (55
;   bytes)
;   0x8742..0x8779  (55 bytes)
DATA_mensaje_22_8742:
	defb 0fch,03bh,04eh,058h,000h,074h,074h,07ah,075h,05ch,003h,06dh,000h,0c9h,053h,045h	; 8742  ..NX.ttzu\.m..SE
	defb 0feh,054h,067h,05eh,05ch,06dh,058h,045h,002h,03ch,0feh,0f8h,03bh,0f7h,0fch,059h	; 8752  .Tg^\mXE.<.....Y
	defb 06dh,049h,04eh,000h,074h,074h,07ah,075h,05ch,003h,06dh,0feh,042h,051h,0a6h,052h	; 8762  mIN.ttzu\.m.BQ.R
	defb 05eh,06dh,045h,003h,054h,03ch,0ffh	; 8772

; ----------------------------------------------------------------------
; DATOS mensaje_22_8779: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (57
;   bytes)
;   0x8779..0x87b2  (57 bytes)
DATA_mensaje_22_8779:
	defb 0fbh,03bh,04bh,065h,042h,045h,003h,054h,041h,06bh,057h,006h,052h,040h,052h,04bh	; 8779  ..KeBE.TAkW.R@RK
	defb 052h,040h,048h,003h,068h,03ch,0f8h,03bh,07bh,003h,01dh,01dh,01dh,09dh,006h,063h	; 8789  R@H.h<..{......c
	defb 04ah,04bh,041h,000h,08bh,003h,07fh,04fh,003h,04ch,054h,03ch,0fbh,03bh,08bh,003h	; 8799  JKA....O.LT<....
	defb 07fh,059h,000h,065h,048h,041h,065h,03ch,0ffh	; 87a9  .Y.eHAe<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_87B2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (134
;   bytes)
;   0x87b2..0x8838  (134 bytes)
DATA_mensaje_22_87B2:
	defb 0f8h,03bh,06bh,052h,059h,000h,049h,058h,077h,003h,097h,020h,077h,0c5h,0c0h,0deh	; 87b2  ..kRY.IXw.. w...
	defb 055h,0feh,050h,045h,051h,042h,06ah,06ch,000h,05dh,0a6h,053h,067h,05eh,04ch,057h	; 87c2  U.PEQBjl.].Sg^LW
	defb 06dh,006h,0feh,044h,069h,041h,055h,000h,050h,045h,051h,042h,06ah,06ch,000h,053h	; 87d2  m..DiAU.PEQBjl.S
	defb 044h,068h,049h,053h,045h,003h,052h,003h,046h,068h,000h,08bh,097h,020h,089h,004h	; 87e2  DhISE.R.Fh... ..
	defb 07ch,06ch,000h,04ah,04bh,040h,048h,003h,05eh,04ch,006h,0fdh,06bh,052h,058h,000h	; 87f2  |l.JK@H.^L..kRX.
	defb 054h,045h,05eh,058h,000h,092h,077h,003h,096h,055h,000h,04eh,069h,06ch,0feh,0b8h	; 8802  TE^X..w..U.Nil..
	defb 04dh,069h,059h,003h,000h,053h,044h,04bh,052h,047h,069h,05eh,04ch,04ah,045h,041h	; 8812  MiY..SDKRGi^LJEA
	defb 006h,0feh,053h,003h,01dh,062h,000h,044h,01dh,046h,055h,006h,05dh,054h,000h,04ah	; 8822  ..S..b.D.FU.]T.J
	defb 041h,054h,066h,03ch,0fah,005h	; 8832

; ----------------------------------------------------------------------
; DATOS mensajes_22_8838: 4 palabras: los mensajes de la sala 201 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (8
;   bytes)
;   0x8838..0x8840  (8 bytes)
DATA_mensajes_22_8838:
	defb 040h,088h	; 8838
	defb 072h,088h	; 883a
	defb 0f3h,088h	; 883c
	defb 0a0h,073h	; 883e

; ----------------------------------------------------------------------
; DATOS mensaje_22_8840: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0x8840..0x8872  (50 bytes)
DATA_mensaje_22_8840:
	defb 0f8h,03bh,057h,043h,000h,040h,054h,04fh,000h,0f7h,0fch,052h,003h,04bh,0a5h,001h	; 8840  ..WC.@TO...R.K..
	defb 0feh,046h,041h,052h,000h,046h,041h,052h,001h,000h,05dh,045h,058h,0bah,055h,059h	; 8850  .FAR.FAR..]EX.UY
	defb 0feh,054h,041h,04bh,0a5h,065h,001h,000h,049h,049h,04fh,003h,048h,058h,0cah,001h	; 8860  .TAK.e..IIO.HX..
	defb 03ch,0ffh	; 8870

; ----------------------------------------------------------------------
; DATOS mensaje_22_8872: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (129
;   bytes)
;   0x8872..0x88f3  (129 bytes)
DATA_mensaje_22_8872:
	defb 0fch,03bh,0c9h,04fh,003h,041h,002h,03ch,0feh,0f8h,03bh,070h,020h,07ah,0a6h,052h	; 8872  ...O.A.<...p z.R
	defb 041h,042h,000h,0bah,0ddh,076h,003h,096h,071h,058h,0feh,044h,0a6h,04ah,06dh,000h	; 8882  AB...v..qX.D.Jm.
	defb 054h,06dh,04fh,003h,048h,053h,003h,00ah,00ah,0fdh,06eh,04ch,041h,05fh,0a3h,047h	; 8892  TmO.HS....nLA_.G
	defb 000h,042h,066h,054h,041h,04bh,055h,000h,054h,068h,04eh,003h,06fh,0feh,0a6h,052h	; 88a2  .BfTAKU.ThN.o..R
	defb 0c8h,0a6h,052h,04fh,04eh,042h,065h,03ch,0feh,0fch,03bh,04eh,058h,0bah,059h,000h	; 88b2  ..RONBe<...NX.Y.
	defb 047h,04ch,067h,063h,045h,041h,002h,03ch,0feh,0f8h,03bh,053h,003h,042h,04bh,052h	; 88c2  GLgcEA.<...S.BKR
	defb 002h,03ch,0fdh,0fch,03bh,04ch,041h,05fh,06dh,063h,047h,000h,042h,066h,054h,041h	; 88d2  .<...LA_mcG.BfTA
	defb 06dh,04fh,003h,06ah,002h,03ch,0feh,0fbh,03bh,062h,04bh,062h,04bh,00ah,00ah,03ch	; 88e2  mO.j.<...bKbK..<
	defb 0ffh	; 88f2

; ----------------------------------------------------------------------
; DATOS mensaje_22_88F3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (58
;   bytes)
;   0x88f3..0x892d  (58 bytes)
DATA_mensaje_22_88F3:
	defb 0f8h,03bh,050h,045h,003h,042h,058h,006h,05fh,04ch,003h,058h,000h,06bh,046h,052h	; 88f3  ..PE.BX._L.X.kFR
	defb 003h,068h,053h,049h,06ah,06ch,040h,052h,068h,058h,045h,003h,06eh,04ch,041h,05fh	; 8903  .hSIjl@RhXE.nLA_
	defb 0a3h,047h,000h,042h,066h,054h,041h,04bh,06fh,0feh,054h,058h,065h,006h,000h,0b3h	; 8913  .G.BfTAKo.TXe...
	defb 000h,059h,063h,0a6h,052h,068h,058h,065h,03ch,0ffh	; 8923  .Yc.RhXe<.

; ----------------------------------------------------------------------
; DATOS mensajes_22_892D: 20 palabras: los mensajes de la sala 208 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (40 bytes)
;   0x892d..0x8955  (40 bytes)
DATA_mensajes_22_892D:
	defb 055h,089h	; 892d
	defb 098h,089h	; 892f
	defb 0afh,089h	; 8931
	defb 0bdh,089h	; 8933
	defb 00eh,08ah	; 8935
	defb 026h,08ah	; 8937
	defb 056h,08ah	; 8939
	defb 073h,08ah	; 893b
	defb 0adh,08ah	; 893d
	defb 0e1h,08ah	; 893f
	defb 013h,08bh	; 8941
	defb 025h,08bh	; 8943
	defb 03ah,08bh	; 8945
	defb 071h,08bh	; 8947
	defb 083h,08bh	; 8949
	defb 09bh,074h	; 894b
	defb 078h,074h	; 894d
	defb 095h,08bh	; 894f
	defb 0beh,08bh	; 8951
	defb 0cbh,08bh	; 8953

; ----------------------------------------------------------------------
; DATOS mensaje_22_8955: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (67
;   bytes)
;   0x8955..0x8998  (67 bytes)
DATA_mensaje_22_8955:
	defb 0f8h,03bh,065h,042h,049h,04eh,000h,077h,003h,097h,020h,077h,0d5h,05ch,001h,03ch	; 8955  ..eBIN.w.. w.\.<
	defb 0feh,0fch,03bh,049h,049h,045h,003h,000h,077h,003h,097h,020h,077h,0d5h,002h,03ch	; 8965  ...IIE..w.. w..<
	defb 0feh,0f8h,03bh,04eh,042h,052h,003h,04ch,006h,0e9h,058h,000h,051h,045h,069h,06ch	; 8975  ...NBR.L..X.QEil
	defb 000h,041h,063h,04bh,052h,064h,0a6h,047h,067h,04bh,052h,041h,0a6h,052h,0d3h,04ah	; 8985  .AcKRd.GgKRA.R.J
	defb 041h,03ch,0ffh	; 8995

; ----------------------------------------------------------------------
; DATOS mensaje_22_8998: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x8998..0x89af  (23 bytes)
DATA_mensaje_22_8998:
	defb 0f8h,03bh,043h,06dh,067h,0a5h,000h,04dh,04ch,003h,055h,000h,044h,047h,05ch,000h	; 8998  ..Cmg..ML.U.DG\.
	defb 053h,003h,042h,04eh,003h,03ch,0ffh	; 89a8

; ----------------------------------------------------------------------
; DATOS mensaje_22_89AF: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x89af..0x89bd  (14 bytes)
DATA_mensaje_22_89AF:
	defb 0f8h,03bh,05eh,04fh,000h,041h,066h,04bh,052h,0d3h,04ah,041h,03ch,0ffh	; 89af  ..^O.AfKR.JA<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_89BD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (81
;   bytes)
;   0x89bd..0x8a0e  (81 bytes)
DATA_mensaje_22_89BD:
	defb 0fch,03bh,0c9h,06ch,000h,045h,06dh,045h,003h,043h,049h,06dh,052h,003h,041h,068h	; 89bd  ...l.EmE.CImR.Ah
	defb 058h,002h,03ch,0feh,0f8h,03bh,049h,058h,0d5h,058h,0deh,062h,000h,0b3h,059h,0dfh	; 89cd  X.<...IX.X.b..Y.
	defb 0e0h,052h,003h,04ch,045h,003h,0feh,041h,04ch,003h,069h,000h,0d4h,0c1h,0c5h,079h	; 89dd  .R.LE..AL.i....y
	defb 003h,077h,003h,045h,003h,000h,04dh,061h,049h,06dh,052h,003h,0feh,047h,068h,052h	; 89ed  .w.E..MaImR..GhR
	defb 003h,04bh,0a5h,042h,006h,040h,040h,0a6h,000h,044h,04eh,06ah,04bh,041h,001h,03ch	; 89fd  .K.B.@@..DNjKA.<
	defb 0ffh	; 8a0d

; ----------------------------------------------------------------------
; DATOS mensaje_22_8A0E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0x8a0e..0x8a26  (24 bytes)
DATA_mensaje_22_8A0E:
	defb 0f8h,03bh,040h,054h,04fh,062h,000h,044h,0b7h,06ch,051h,048h,052h,000h,0e9h,06ch	; 8a0e  ..@TOb.D.lQHR..l
	defb 0feh,04bh,052h,0d3h,04ah,041h,03ch,0ffh	; 8a1e  .KR.JA<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8A26: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (48
;   bytes)
;   0x8a26..0x8a56  (48 bytes)
DATA_mensaje_22_8A26:
	defb 0fch,03bh,077h,003h,097h,020h,077h,0c5h,0c0h,0a6h,052h,000h,05ah,06ah,041h,058h	; 8a26  ..w.. w...R.ZjAX
	defb 002h,03ch,0feh,0f8h,03bh,053h,052h,062h,000h,05ah,06ah,041h,052h,003h,04ch,065h	; 8a36  .<...SRb.ZjAR.Le
	defb 006h,05fh,050h,055h,0feh,05eh,065h,06bh,054h,041h,065h,042h,055h,087h,03ch,0ffh	; 8a46  ._PU.^ekTAeBU.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8A56: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x8a56..0x8a73  (29 bytes)
DATA_mensaje_22_8A56:
	defb 0f8h,03bh,049h,058h,000h,044h,047h,059h,000h,08bh,003h,076h,058h,05ch,063h,053h	; 8a56  ..IX.DGY...vX\cS
	defb 0feh,077h,09dh,099h,09dh,058h,05ch,063h,052h,003h,04ch,03ch,0ffh	; 8a66  .w...X\cR.L<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8A73: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (58
;   bytes)
;   0x8a73..0x8aad  (58 bytes)
DATA_mensaje_22_8A73:
	defb 0fch,03bh,04eh,058h,095h,09ah,071h,000h,045h,04bh,052h,062h,066h,043h,068h,002h	; 8a73  ..NX..q.EKRbfCh.
	defb 03ch,0feh,0f8h,03bh,0deh,058h,000h,08bh,003h,076h,058h,05ch,063h,055h,000h,08dh	; 8a83  <....X...vX\cU..
	defb 003h,072h,077h,003h,062h,0feh,040h,067h,05eh,04ch,006h,04eh,049h,052h,003h,000h	; 8a93  .rw.b.@g^L.NIR..
	defb 046h,041h,052h,05fh,052h,0d3h,04ah,041h,03ch,0ffh	; 8aa3  FAR_R.JA<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8AAD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (52
;   bytes)
;   0x8aad..0x8ae1  (52 bytes)
DATA_mensaje_22_8AAD:
	defb 0fch,03bh,0d5h,058h,000h,05dh,045h,055h,000h,0f1h,059h,000h,040h,068h,058h,002h	; 8aad  ...X.]EU..Y.@hX.
	defb 03ch,0feh,0f8h,03bh,062h,050h,06ah,06dh,006h,049h,049h,045h,066h,000h,04ch,047h	; 8abd  <...bPjm.IIEf.LG
	defb 003h,058h,0feh,053h,049h,06ah,054h,066h,000h,071h,097h,079h,0f1h,045h,003h,040h	; 8acd  .X.SIjTf.q.y.E.@
	defb 068h,065h,03ch,0ffh	; 8add

; ----------------------------------------------------------------------
; DATOS mensaje_22_8AE1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0x8ae1..0x8b13  (50 bytes)
DATA_mensaje_22_8AE1:
	defb 0f8h,03bh,04ch,05eh,054h,041h,045h,003h,000h,0b3h,000h,059h,06dh,053h,04bh,055h	; 8ae1  ..L^TAE....YmSKU
	defb 0feh,011h,045h,041h,046h,067h,058h,000h,082h,003h,020h,083h,054h,06dh,04fh,003h	; 8af1  ..EAFgX... .TmO.
	defb 03ch,0feh,0f6h,096h,07ah,003h,09ah,000h,03bh,049h,003h,061h,06dh,054h,04ah,041h	; 8b01  <...z....I.amTJA
	defb 03ch,0ffh	; 8b11

; ----------------------------------------------------------------------
; DATOS mensaje_22_8B13: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x8b13..0x8b25  (18 bytes)
DATA_mensaje_22_8B13:
	defb 0f8h,03bh,049h,058h,000h,044h,047h,059h,000h,0d4h,05ah,06ah,0ddh,052h,003h,04ch	; 8b13  ..IX.DGY..Zj.R.L
	defb 03ch,0ffh	; 8b23

; ----------------------------------------------------------------------
; DATOS mensaje_22_8B25: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x8b25..0x8b3a  (21 bytes)
DATA_mensaje_22_8B25:
	defb 0fbh,03bh,05bh,06dh,04ch,041h,058h,0deh,055h,000h,0c9h,045h,000h,042h,041h,052h	; 8b25  ..[mLAX.U..E.BAR
	defb 041h,068h,06bh,03ch,0ffh	; 8b35

; ----------------------------------------------------------------------
; DATOS mensaje_22_8B3A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (55
;   bytes)
;   0x8b3a..0x8b71  (55 bytes)
DATA_mensaje_22_8B3A:
	defb 0fch,03bh,04fh,04fh,003h,058h,000h,075h,003h,096h,07ch,05ah,003h,06dh,058h,000h	; 8b3a  ..OO.X.u..|Z.mX.
	defb 065h,042h,04fh,003h,045h,003h,006h,0feh,041h,063h,000h,0deh,055h,000h,052h,045h	; 8b4a  eBO.E...Ac..U.RE
	defb 003h,05fh,045h,003h,000h,0d2h,0a6h,052h,041h,068h,04eh,003h,001h,062h,04bh,045h	; 8b5a  ._E....RAhN..bKE
	defb 04ch,068h,053h,00ah,00ah,03ch,0ffh	; 8b6a

; ----------------------------------------------------------------------
; DATOS mensaje_22_8B71: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x8b71..0x8b83  (18 bytes)
DATA_mensaje_22_8B71:
	defb 0fbh,03bh,057h,06dh,058h,04fh,061h,000h,0b1h,0a6h,052h,044h,046h,05eh,04bh,0a5h	; 8b71  ..WmXOa...RDF^K.
	defb 03ch,0ffh	; 8b81

; ----------------------------------------------------------------------
; DATOS mensaje_22_8B83: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x8b83..0x8b95  (18 bytes)
DATA_mensaje_22_8B83:
	defb 0fbh,03bh,062h,042h,000h,0b1h,0a6h,04fh,06dh,04bh,003h,0a3h,054h,041h,058h,002h	; 8b83  ..bB...OmK..TAX.
	defb 03ch,0ffh	; 8b93

; ----------------------------------------------------------------------
; DATOS mensaje_22_8B95: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0x8b95..0x8bbe  (41 bytes)
DATA_mensaje_22_8B95:
	defb 0f8h,03bh,065h,042h,049h,04eh,000h,077h,003h,097h,020h,077h,0d5h,05ch,006h,000h	; 8b95  ..eBIN.w.. w.\..
	defb 0b3h,0f4h,059h,0feh,089h,004h,09dh,089h,004h,020h,07ch,0c5h,058h,000h,044h,041h	; 8ba5  ..Y...... |.X.DA
	defb 06bh,041h,058h,0f4h,052h,003h,04ch,03ch,0ffh	; 8bb5  kAX.R.L<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8BBE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x8bbe..0x8bcb  (13 bytes)
DATA_mensaje_22_8BBE:
	defb 0f8h,03bh,044h,047h,05ch,000h,053h,003h,042h,04eh,003h,03ch,0ffh	; 8bbe  ..DG\.S.BN.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8BCB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0x8bcb..0x8be6  (27 bytes)
DATA_mensaje_22_8BCB:
	defb 0f8h,03bh,0b3h,0f4h,059h,000h,0d4h,05ah,06ah,0ddh,052h,003h,000h,089h,004h,020h	; 8bcb  ....Y..Zj.R....
	defb 082h,0a8h,045h,003h,0feh,040h,067h,05eh,04ch,03ch,0ffh	; 8bdb  ..E..@g^L<.

; ----------------------------------------------------------------------
; DATOS mensajes_22_8BE6: 6 palabras: los mensajes de la sala 236 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (12 bytes)
;   0x8be6..0x8bf2  (12 bytes)
DATA_mensajes_22_8BE6:
	defb 0f2h,08bh	; 8be6
	defb 0fbh,08bh	; 8be8
	defb 049h,08ch	; 8bea
	defb 088h,08ch	; 8bec
	defb 0ach,08ch	; 8bee
	defb 079h,073h	; 8bf0

; ----------------------------------------------------------------------
; DATOS mensaje_22_8BF2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (9
;   bytes)
;   0x8bf2..0x8bfb  (9 bytes)
DATA_mensaje_22_8BF2:
	defb 0f8h,03bh,049h,05eh,0a6h,04fh,06bh,03ch,0ffh	; 8bf2  ..I^.Ok<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8BFB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (78
;   bytes)
;   0x8bfb..0x8c49  (78 bytes)
DATA_mensaje_22_8BFB:
	defb 0f8h,03bh,0c6h,058h,000h,04bh,0a4h,0bah,059h,000h,070h,099h,077h,053h,041h,042h	; 8bfb  ...X.K..Y.p.wSAB
	defb 0feh,046h,049h,067h,054h,06dh,052h,003h,04ch,045h,003h,000h,074h,088h,06ch,000h	; 8c0b  .FIgTmR.LE..t.l.
	defb 06bh,04ch,069h,052h,0feh,04bh,049h,003h,053h,055h,000h,0dch,0a6h,052h,04bh,05eh	; 8c1b  kLiR.KI.SU...RK^
	defb 0a6h,04fh,058h,03ch,0fdh,0fch,03bh,074h,074h,0afh,000h,088h,020h,001h,03ch,0feh	; 8c2b  .OX<...tt... .<.
	defb 0fbh,03bh,047h,04fh,003h,066h,06dh,049h,053h,06ch,00ah,00ah,03ch,0ffh	; 8c3b  ..GO.fmISl..<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8C49: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (63
;   bytes)
;   0x8c49..0x8c88  (63 bytes)
DATA_mensaje_22_8C49:
	defb 0fch,03bh,074h,099h,052h,003h,000h,065h,048h,069h,059h,003h,00ah,00ah,03ch,0fdh	; 8c49  ..t.R..eHiY...<.
	defb 0f8h,03bh,040h,067h,045h,003h,053h,042h,001h,000h,04fh,04ch,045h,067h,05eh,04bh	; 8c59  ..@gE.SB..OLEg^K
	defb 04fh,006h,0feh,052h,003h,059h,000h,049h,058h,000h,074h,088h,06ch,000h,04bh,0a4h	; 8c69  O..R.Y.IX.t.l.K.
	defb 0bah,055h,0feh,053h,053h,003h,048h,052h,0d3h,04ah,041h,05eh,04dh,03ch,0ffh	; 8c79  .U.SS.HR.JA^M<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8C88: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0x8c88..0x8cac  (36 bytes)
DATA_mensaje_22_8C88:
	defb 0f8h,03bh,0c6h,058h,000h,04bh,0a4h,0bah,058h,000h,070h,099h,077h,055h,000h,074h	; 8c88  ...X.K..X.p.wU.t
	defb 088h,06ch,0feh,053h,053h,003h,048h,052h,000h,041h,04fh,04fh,003h,048h,05eh,04bh	; 8c98  .l.SS.HR.AOO.H^K
	defb 04fh,002h,03ch,0ffh	; 8ca8

; ----------------------------------------------------------------------
; DATOS mensaje_22_8CAC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x8cac..0x8ccc  (32 bytes)
DATA_mensaje_22_8CAC:
	defb 0f8h,03bh,074h,088h,059h,00ah,00ah,002h,03ch,0feh,0fch,03bh,053h,053h,003h,048h	; 8cac  ..t.Y...<...SS.H
	defb 05eh,04bh,04fh,065h,03ch,0feh,0f8h,03bh,040h,067h,045h,003h,053h,042h,03ch,0ffh	; 8cbc  ^KOe<...@gE.SB<.

; ----------------------------------------------------------------------
; DATOS mensajes_22_8CCC: 4 palabras: los mensajes de la sala 269 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (8
;   bytes)
;   0x8ccc..0x8cd4  (8 bytes)
DATA_mensajes_22_8CCC:
	defb 0d4h,08ch	; 8ccc
	defb 050h,08dh	; 8cce
	defb 045h,073h	; 8cd0
	defb 05ch,073h	; 8cd2

; ----------------------------------------------------------------------
; DATOS mensaje_22_8CD4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (124
;   bytes)
;   0x8cd4..0x8d50  (124 bytes)
DATA_mensaje_22_8CD4:
	defb 0f8h,03bh,049h,058h,0f1h,058h,000h,08ch,003h,082h,0a8h,053h,041h,042h,000h,0d0h	; 8cd4  ..IX.X.....SAB..
	defb 058h,0d6h,045h,003h,0feh,0c1h,0c5h,058h,000h,041h,048h,055h,043h,055h,000h,043h	; 8ce4  X.E....X.AHUCU.C
	defb 066h,059h,003h,069h,052h,0feh,04bh,05eh,041h,05eh,04bh,04fh,001h,0feh,053h,003h	; 8cf4  fY.iR.K^A^KO..S.
	defb 042h,045h,000h,04fh,04ch,048h,052h,0d3h,04ah,041h,05eh,04bh,001h,03ch,0fdh,0fch	; 8d04  BE.OLHR.JA^K.<..
	defb 03bh,0c1h,0c5h,002h,03ch,0feh,0f8h,03bh,04eh,042h,052h,003h,04ch,006h,000h,0d4h	; 8d14  ....<...NBR.L...
	defb 0c1h,0c5h,079h,003h,077h,003h,045h,003h,000h,049h,058h,0c2h,055h,0feh,044h,047h	; 8d24  ..y.w.E..IX.U.DG
	defb 067h,049h,06dh,04fh,003h,000h,018h,0bah,0c1h,0c5h,058h,011h,0bah,000h,041h,063h	; 8d34  gImO......X...Ac
	defb 0feh,011h,05ah,004h,046h,054h,058h,052h,003h,04ch,03ch,0ffh	; 8d44  ..Z.FTXR.L<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8D50: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x8d50..0x8d62  (18 bytes)
DATA_mensaje_22_8D50:
	defb 0f8h,03bh,08ch,003h,082h,0a8h,06ch,000h,04ch,047h,0a6h,052h,0d3h,04ah,041h,001h	; 8d50  ......l.LG.R.JA.
	defb 03ch,0ffh	; 8d60

; ----------------------------------------------------------------------
; DATOS mensajes_22_8D62: 4 palabras: los mensajes de la sala 270 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (8
;   bytes)
;   0x8d62..0x8d6a  (8 bytes)
DATA_mensajes_22_8D62:
	defb 06ah,08dh	; 8d62
	defb 092h,08dh	; 8d64
	defb 045h,073h	; 8d66
	defb 05ch,073h	; 8d68

; ----------------------------------------------------------------------
; DATOS mensaje_22_8D6A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (40
;   bytes)
;   0x8d6a..0x8d92  (40 bytes)
DATA_mensaje_22_8D6A:
	defb 0f8h,03bh,08ch,003h,082h,0a8h,059h,000h,0c6h,058h,000h,053h,062h,04fh,003h,050h	; 8d6a  ......Y..X.SbO.P
	defb 054h,058h,006h,0feh,053h,003h,042h,045h,000h,0c1h,0c5h,06ch,000h,04fh,041h,04bh	; 8d7a  TX..S.BE...l.OAK
	defb 003h,04bh,052h,0d3h,04ah,041h,03ch,0ffh	; 8d8a  .KR.JA<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8D92: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0x8d92..0x8db4  (34 bytes)
DATA_mensaje_22_8D92:
	defb 0f8h,03bh,0c1h,0c5h,059h,000h,049h,058h,0f1h,058h,000h,050h,045h,047h,058h,0feh	; 8d92  ....Y.IX.X.PEGX.
	defb 08ch,098h,092h,09dh,063h,05eh,055h,000h,04ch,06dh,052h,003h,068h,06dh,04fh,003h	; 8da2  ....c^U.LmR.hmO.
	defb 03ch,0ffh	; 8db2

; ----------------------------------------------------------------------
; DATOS mensajes_22_8DB4: 5 palabras: los mensajes de la sala 302 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (10 bytes)
;   0x8db4..0x8dbe  (10 bytes)
DATA_mensajes_22_8DB4:
	defb 0beh,08dh	; 8db4
	defb 0f5h,08dh	; 8db6
	defb 012h,08eh	; 8db8
	defb 045h,073h	; 8dba
	defb 05ch,073h	; 8dbc

; ----------------------------------------------------------------------
; DATOS mensaje_22_8DBE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (55
;   bytes)
;   0x8dbe..0x8df5  (55 bytes)
DATA_mensaje_22_8DBE:
	defb 0f8h,03bh,0c9h,052h,049h,053h,052h,003h,04bh,0a5h,042h,001h,000h,0c6h,058h,000h	; 8dbe  ...RISR.K.B...X.
	defb 04fh,003h,041h,04bh,003h,054h,0feh,0e2h,058h,08ch,003h,082h,0a8h,045h,003h,000h	; 8dce  O.AK.T..X....E..
	defb 041h,048h,055h,043h,055h,054h,068h,054h,06dh,052h,001h,0feh,040h,040h,0a6h,000h	; 8dde  AHUCUThTmR..@@..
	defb 08ch,003h,082h,0a8h,001h,03ch,0ffh	; 8dee

; ----------------------------------------------------------------------
; DATOS mensaje_22_8DF5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x8df5..0x8e12  (29 bytes)
DATA_mensaje_22_8DF5:
	defb 0f8h,03bh,045h,06bh,041h,04eh,042h,055h,006h,000h,08ch,003h,082h,0a8h,059h,000h	; 8df5  ..EkANBU......Y.
	defb 07fh,086h,058h,0feh,011h,0bah,0e2h,054h,06dh,04fh,003h,03ch,0ffh	; 8e05  ..X....TmO.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8E12: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (66
;   bytes)
;   0x8e12..0x8e54  (66 bytes)
DATA_mensaje_22_8E12:
	defb 0fch,03bh,08ch,003h,082h,0a8h,0a6h,052h,0d6h,059h,000h,045h,06bh,041h,041h,058h	; 8e12  .......R.Y.EkAAX
	defb 002h,03ch,0feh,0f8h,03bh,04eh,067h,0a3h,062h,042h,000h,049h,058h,0f1h,052h,003h	; 8e22  .<...Ng.bB.IX.R.
	defb 000h,05fh,046h,003h,055h,0feh,052h,003h,068h,0d6h,059h,000h,041h,054h,041h,065h	; 8e32  ._F.U.R.h.Y.ATAe
	defb 03ch,0feh,0fbh,03bh,0f7h,0fch,000h,0c9h,045h,06dh,045h,003h,043h,052h,068h,058h	; 8e42  <.......EmE.CRhX
	defb 03ch,0ffh	; 8e52

; ----------------------------------------------------------------------
; DATOS mensajes_22_8E54: 8 palabras: los mensajes de la sala 338 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (16 bytes)
;   0x8e54..0x8e64  (16 bytes)
DATA_mensajes_22_8E54:
	defb 064h,08eh	; 8e54
	defb 098h,08eh	; 8e56
	defb 0c5h,08eh	; 8e58
	defb 0dbh,08eh	; 8e5a
	defb 0f1h,08eh	; 8e5c
	defb 006h,08fh	; 8e5e
	defb 09bh,074h	; 8e60
	defb 078h,074h	; 8e62

; ----------------------------------------------------------------------
; DATOS mensaje_22_8E64: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (52
;   bytes)
;   0x8e64..0x8e98  (52 bytes)
DATA_mensaje_22_8E64:
	defb 0f8h,03bh,0f7h,0fch,000h,040h,054h,04fh,059h,000h,05eh,04fh,003h,000h,04eh,058h	; 8e64  .....@TOY.^O..NX
	defb 0feh,053h,05ah,003h,066h,055h,000h,0d2h,068h,049h,053h,059h,000h,052h,003h,046h	; 8e74  .SZ.fU..hISY.R.F
	defb 05eh,04dh,06dh,006h,0feh,0eah,045h,003h,000h,046h,052h,054h,041h,045h,066h,052h	; 8e84  ^Mm...E..FRTAEfR
	defb 003h,04ch,03ch,0ffh	; 8e94

; ----------------------------------------------------------------------
; DATOS mensaje_22_8E98: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (45
;   bytes)
;   0x8e98..0x8ec5  (45 bytes)
DATA_mensaje_22_8E98:
	defb 0fch,03bh,06eh,0eah,06fh,053h,059h,000h,041h,051h,058h,049h,053h,002h,03ch,0feh	; 8e98  ..n.oSY.AQXIS.<.
	defb 0f8h,03bh,04eh,058h,0eah,045h,003h,000h,047h,069h,059h,003h,000h,044h,058h,04ch	; 8ea8  ..NX.E..GiY..DXL
	defb 003h,053h,0feh,06bh,045h,068h,052h,003h,040h,06ah,042h,03ch,0ffh	; 8eb8  .S.kEhR.@jB<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8EC5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x8ec5..0x8edb  (22 bytes)
DATA_mensaje_22_8EC5:
	defb 0f8h,03bh,0eah,059h,000h,046h,04fh,006h,053h,05ah,003h,066h,06ch,000h,053h,044h	; 8ec5  ...Y.FO.SZ.fl.SD
	defb 067h,054h,04ah,041h,03ch,0ffh	; 8ed5

; ----------------------------------------------------------------------
; DATOS mensaje_22_8EDB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x8edb..0x8ef1  (22 bytes)
DATA_mensaje_22_8EDB:
	defb 0f8h,03bh,054h,06dh,04bh,003h,055h,000h,043h,041h,049h,042h,000h,040h,066h,06dh	; 8edb  ..TmK.U.CAIB.@fm
	defb 049h,053h,06ch,001h,03ch,0ffh	; 8eeb

; ----------------------------------------------------------------------
; DATOS mensaje_22_8EF1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x8ef1..0x8f06  (21 bytes)
DATA_mensaje_22_8EF1:
	defb 0fbh,03bh,0b2h,045h,003h,000h,046h,06dh,041h,06ah,055h,000h,05ah,045h,0a6h,052h	; 8ef1  ...E..FmAjU.ZE.R
	defb 041h,068h,06bh,03ch,0ffh	; 8f01

; ----------------------------------------------------------------------
; DATOS mensaje_22_8F06: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0x8f06..0x8f1e  (24 bytes)
DATA_mensaje_22_8F06:
	defb 0f8h,03bh,0c6h,059h,000h,0f2h,055h,000h,051h,045h,06bh,04ah,069h,04fh,0feh,05fh	; 8f06  ...Y..U.QEkJiO._
	defb 0b0h,041h,052h,003h,040h,068h,03ch,0ffh	; 8f16  .AR.@h<.

; ----------------------------------------------------------------------
; DATOS mensajes_22_8F1E: 12 palabras: los mensajes de la sala 345 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (24 bytes)
;   0x8f1e..0x8f36  (24 bytes)
DATA_mensajes_22_8F1E:
	defb 036h,08fh	; 8f1e
	defb 09eh,08fh	; 8f20
	defb 0b6h,08fh	; 8f22
	defb 081h,090h	; 8f24
	defb 0f9h,090h	; 8f26
	defb 027h,091h	; 8f28
	defb 03eh,091h	; 8f2a
	defb 053h,091h	; 8f2c
	defb 064h,091h	; 8f2e
	defb 08fh,091h	; 8f30
	defb 084h,092h	; 8f32
	defb 084h,073h	; 8f34

; ----------------------------------------------------------------------
; DATOS mensaje_22_8F36: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (104
;   bytes)
;   0x8f36..0x8f9e  (104 bytes)
DATA_mensaje_22_8F36:
	defb 0f8h,03bh,063h,040h,000h,076h,08fh,059h,000h,0f7h,0fch,04fh,003h,057h,006h,0feh	; 8f36  ..c@.v.Y...O.W..
	defb 04eh,04bh,052h,000h,0f7h,0fbh,04ah,06dh,062h,03ch,0feh,0fch,03bh,076h,08fh,059h	; 8f46  NKR...Jmb<...v.Y
	defb 002h,03ch,0feh,0f8h,03bh,0c6h,059h,000h,07fh,003h,09dh,082h,053h,041h,042h,062h	; 8f56  .<....Y.....SABb
	defb 058h,04fh,003h,03ch,0fdh,0fch,03bh,04ch,068h,053h,00ah,00ah,074h,099h,04fh,050h	; 8f66  XO.<...LhS..t.OP
	defb 045h,003h,000h,04ch,054h,058h,0deh,055h,0feh,042h,062h,069h,052h,04bh,05eh,0a6h	; 8f76  E..LTX.U.BbiRK^.
	defb 04fh,0eah,000h,04fh,04ch,048h,052h,047h,069h,04fh,00ah,03ch,0f8h,03bh,040h,040h	; 8f86  O..OLHRGiO.<..@@
	defb 000h,04eh,042h,04fh,003h,065h,03ch,0ffh	; 8f96  .NBO.e<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8F9E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0x8f9e..0x8fb6  (24 bytes)
DATA_mensaje_22_8F9E:
	defb 0fch,03bh,04eh,058h,04dh,051h,059h,000h,053h,003h,042h,062h,03ch,0feh,0fbh,03bh	; 8f9e  ..NXMQY.S.Bb<...
	defb 040h,067h,045h,003h,053h,042h,03ch,0ffh	; 8fae  @gE.SB<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_8FB6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (203
;   bytes)
;   0x8fb6..0x9081  (203 bytes)
DATA_mensaje_22_8FB6:
	defb 0f8h,03bh,049h,069h,059h,00ah,00ah,001h,002h,000h,080h,0aah,098h,07bh,020h,0e3h	; 8fb6  ..IiY........{ .
	defb 058h,0feh,087h,0afh,077h,099h,07ch,04fh,003h,057h,002h,000h,053h,003h,042h,04bh	; 8fc6  X...w.|O.W..S.BK
	defb 052h,000h,049h,06dh,054h,0feh,062h,058h,06ch,00ah,00ah,002h,03ch,0feh,0fch,03bh	; 8fd6  R.ImT.bXl...<...
	defb 049h,069h,059h,000h,076h,08fh,058h,041h,043h,052h,003h,0b8h,051h,048h,04fh,06dh	; 8fe6  IiY.v.XACR..QHOm
	defb 04fh,003h,03ch,0fdh,0f8h,03bh,04eh,042h,045h,000h,04bh,003h,0a3h,040h,000h,044h	; 8ff6  O.<...NBE.K..@.D
	defb 065h,04eh,000h,04ah,0a6h,04bh,052h,0feh,041h,068h,04fh,003h,06ah,042h,045h,003h	; 9006  eN.J.KR.AhO.jBE.
	defb 00ah,00ah,0c6h,053h,080h,0aah,098h,07bh,020h,059h,0feh,0eeh,04bh,040h,0a6h,052h	; 9016  ...S...{ Y..K@.R
	defb 041h,068h,006h,000h,053h,049h,06ah,045h,003h,00ah,00ah,0feh,089h,004h,09dh,089h	; 9026  Ah..SIjE........
	defb 004h,020h,07ch,0c5h,058h,000h,044h,064h,068h,04bh,045h,003h,000h,062h,066h,043h	; 9036  . |.X.DdhKE..bfC
	defb 04ch,003h,0fdh,012h,0bah,052h,003h,000h,079h,003h,077h,003h,06ch,04fh,044h,04bh	; 9046  L....R..y.w.lODK
	defb 005h,048h,0a6h,049h,06dh,06ch,0feh,046h,0a5h,045h,04bh,052h,062h,066h,044h,042h	; 9056  .H.Iml.F.EKRbfDB
	defb 005h,053h,041h,042h,000h,09bh,078h,0feh,054h,06dh,04fh,003h,03ch,0fdh,0fch,03bh	; 9066  .SAB..x.TmO.<...
	defb 0dbh,0a6h,04fh,053h,042h,067h,04fh,003h,054h,03ch,0ffh	; 9076  ..OSBgO.T<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9081: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (120
;   bytes)
;   0x9081..0x90f9  (120 bytes)
DATA_mensaje_22_9081:
	defb 0f8h,03bh,0c6h,053h,000h,080h,0aah,098h,07bh,020h,059h,000h,079h,003h,077h,003h	; 9081  ...S....{ Y.y.w.
	defb 058h,049h,053h,055h,0feh,051h,041h,052h,000h,045h,045h,069h,04fh,000h,06eh,079h	; 9091  XISU.QAR.EEiO.ny
	defb 092h,09dh,07bh,003h,0aeh,06fh,06ch,0feh,04ah,045h,003h,04ch,049h,053h,055h,054h	; 90a1  ..{..ol.JE.LISUT
	defb 067h,005h,000h,04ah,059h,003h,047h,0feh,050h,05dh,042h,058h,000h,041h,04dh,046h	; 90b1  g..JY.G.P]BX.AMF
	defb 058h,000h,053h,003h,049h,045h,055h,040h,068h,005h,0fdh,053h,041h,042h,049h,053h	; 90c1  X.S.IEU@h..SABIS
	defb 045h,003h,000h,06bh,045h,0a6h,04fh,006h,000h,0cfh,0d0h,059h,0b3h,0feh,05ch,003h	; 90d1  E..kE.O....Y..\.
	defb 051h,058h,000h,04ah,059h,003h,047h,055h,040h,068h,000h,041h,04dh,046h,05ch,053h	; 90e1  QX.JY.GU@h.AMF\S
	defb 0feh,0dch,0a6h,052h,041h,068h,03ch,0ffh	; 90f1  ...RAh<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_90F9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0x90f9..0x9127  (46 bytes)
DATA_mensaje_22_90F9:
	defb 0f8h,03bh,0f7h,0fch,062h,000h,049h,049h,055h,06eh,079h,092h,09dh,07bh,003h,0aeh	; 90f9  ....b.IIUny..{..
	defb 06fh,045h,003h,0feh,054h,041h,045h,000h,04ah,045h,003h,04bh,052h,047h,069h,054h	; 9109  oE..TAE.JE.KRGiT
	defb 041h,045h,03ch,0feh,0fch,03bh,040h,040h,000h,041h,041h,065h,03ch,0ffh	; 9119  AE<...@@.AAe<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9127: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x9127..0x913e  (23 bytes)
DATA_mensaje_22_9127:
	defb 0fbh,03bh,040h,0a6h,000h,049h,06dh,054h,053h,049h,06ah,055h,000h,096h,09dh,08bh	; 9127  ..@..ImTSIjU....
	defb 004h,045h,003h,001h,03ch,0fah,005h	; 9137

; ----------------------------------------------------------------------
; DATOS mensaje_22_913E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x913e..0x9153  (21 bytes)
DATA_mensaje_22_913E:
	defb 0fbh,03bh,049h,069h,059h,000h,04bh,003h,0a4h,06dh,046h,06dh,058h,000h,096h,09dh	; 913e  ..IiY.K..mFmX...
	defb 08bh,004h,057h,03ch,0ffh	; 914e

; ----------------------------------------------------------------------
; DATOS mensaje_22_9153: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x9153..0x9164  (17 bytes)
DATA_mensaje_22_9153:
	defb 0fch,03bh,049h,069h,059h,000h,045h,054h,067h,000h,044h,062h,04fh,041h,06bh,03ch	; 9153  ..IiY.ETg.DbOAk<
	defb 0ffh	; 9163

; ----------------------------------------------------------------------
; DATOS mensaje_22_9164: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (43
;   bytes)
;   0x9164..0x918f  (43 bytes)
DATA_mensaje_22_9164:
	defb 0f6h,0c1h,0c5h,070h,079h,003h,098h,03bh,065h,059h,003h,069h,052h,000h,053h,05ah	; 9164  ...py...eY.iR.SZ
	defb 003h,052h,003h,052h,0feh,07bh,003h,0ach,07bh,003h,0ach,07bh,003h,0ach,07bh,003h	; 9174  .R.R.{..{..{..{.
	defb 0ach,01dh,01dh,01dh,01dh,09dh,001h,001h,03ch,0fah,022h	; 9184  ........<."

; ----------------------------------------------------------------------
; DATOS mensaje_22_918F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (245
;   bytes)
;   0x918f..0x9284  (245 bytes)
DATA_mensaje_22_918F:
	defb 0fch,03bh,0f7h,0f8h,001h,044h,041h,000h,053h,003h,042h,04bh,04fh,06dh,04fh,003h	; 918f  .....DA.S.BKOmO.
	defb 001h,002h,0feh,04bh,0a6h,045h,067h,04bh,06ah,001h,03ch,0fdh,0f8h,03bh,0b3h,058h	; 919f  ...K.EgKj.<....X
	defb 000h,04fh,04fh,045h,041h,058h,0eah,000h,052h,046h,058h,0feh,054h,045h,003h,069h	; 91af  .OOEAX..RFX.TE.i
	defb 04fh,003h,05eh,055h,000h,040h,04fh,0a6h,052h,04bh,05eh,0a6h,04fh,006h,0feh,062h	; 91bf  O.^U.@O.RK^.O..b
	defb 042h,000h,04fh,003h,061h,04fh,003h,001h,03ch,0feh,0fch,03bh,0c9h,06ch,065h,06bh	; 91cf  B.O.aO..<....lek
	defb 057h,06ch,000h,059h,041h,052h,068h,06dh,04fh,003h,001h,002h,03ch,0fdh,0f8h,03bh	; 91df  Wl.YARhmO...<...
	defb 071h,093h,000h,04bh,003h,05bh,003h,06dh,058h,0b2h,058h,049h,053h,059h,000h,04bh	; 91ef  q..K.[.mX.XISY.K
	defb 003h,05bh,003h,06dh,052h,003h,0feh,06bh,045h,068h,04ah,006h,0f7h,0fch,000h,080h	; 91ff  .[.mR..kEhJ.....
	defb 0aah,098h,07bh,020h,055h,0feh,051h,04fh,043h,052h,047h,069h,006h,000h,06eh,04bh	; 920f  ..{ U.QOCRGi..nK
	defb 040h,06bh,04dh,055h,000h,0feh,052h,003h,046h,054h,047h,052h,000h,04ch,05eh,054h	; 921f  @kMU..R.FTGR.L^T
	defb 045h,0a6h,04fh,006h,0fdh,076h,08fh,058h,049h,053h,059h,000h,041h,051h,062h,000h	; 922f  E.O..v.XISY.AQb.
	defb 0f5h,045h,066h,0feh,0b8h,05eh,062h,0a6h,052h,041h,068h,06fh,053h,006h,0feh,0f7h	; 923f  .Ef..^b.RAhoS...
	defb 0fch,000h,079h,003h,077h,003h,06ch,000h,045h,054h,066h,04ch,003h,0feh,04fh,044h	; 924f  ..y.w.l.ETfL..OD
	defb 04ch,06dh,04fh,003h,04eh,003h,006h,000h,04fh,058h,01eh,06dh,01eh,04fh,003h,01eh	; 925f  LmO.N...OX.m.O..
	defb 04eh,003h,00ah,03ch,0fdh,0fch,03bh,0f7h,0f8h,001h,001h,03ch,0feh,0fbh,03bh,0f7h	; 926f  N..<.......<....
	defb 0f8h,001h,03ch,0fah,023h	; 927f

; ----------------------------------------------------------------------
; DATOS mensaje_22_9284: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (45
;   bytes)
;   0x9284..0x92b1  (45 bytes)
DATA_mensaje_22_9284:
	defb 0fch,03bh,07fh,003h,09dh,082h,058h,0ech,06ch,000h,090h,07fh,003h,055h,000h,04bh	; 9284  ......X.l....U.K
	defb 054h,041h,065h,042h,055h,0feh,079h,003h,077h,003h,055h,000h,045h,054h,066h,04ch	; 9294  TAeBU.y.w.U.ETfL
	defb 003h,000h,045h,0a6h,052h,05fh,04dh,068h,04eh,003h,001h,03ch,0ffh	; 92a4  ..E.R_MhN..<.

; ----------------------------------------------------------------------
; DATOS mensajes_22_92B1: 14 palabras: los mensajes de la sala 357 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (28 bytes)
;   0x92b1..0x92cd  (28 bytes)
DATA_mensajes_22_92B1:
	defb 0cdh,092h	; 92b1
	defb 031h,093h	; 92b3
	defb 040h,093h	; 92b5
	defb 05eh,093h	; 92b7
	defb 0cbh,093h	; 92b9
	defb 0e1h,093h	; 92bb
	defb 003h,094h	; 92bd
	defb 026h,094h	; 92bf
	defb 042h,094h	; 92c1
	defb 096h,096h	; 92c3
	defb 0a9h,096h	; 92c5
	defb 0e0h,074h	; 92c7
	defb 0bch,074h	; 92c9
	defb 09bh,074h	; 92cb

; ----------------------------------------------------------------------
; DATOS mensaje_22_92CD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (100
;   bytes)
;   0x92cd..0x9331  (100 bytes)
DATA_mensaje_22_92CD:
	defb 0f8h,03bh,044h,04fh,045h,003h,041h,058h,000h,04ch,045h,003h,04fh,045h,003h,000h	; 92cd  ..DOE.AX.LE.OE..
	defb 0b8h,043h,054h,041h,0feh,053h,041h,042h,058h,059h,000h,053h,052h,062h,000h,076h	; 92dd  .CTA.SABXY.SRb.v
	defb 078h,09dh,052h,003h,04ch,06bh,006h,0fdh,04fh,003h,0a6h,052h,000h,04fh,003h,069h	; 92ed  x.R.Lk..O..R.O.i
	defb 045h,003h,000h,053h,003h,049h,055h,000h,041h,068h,058h,045h,0feh,06bh,045h,066h	; 92fd  E..S.IU.AhXE.kEf
	defb 054h,041h,058h,052h,003h,000h,0c6h,059h,000h,046h,0a5h,042h,052h,003h,0feh,013h	; 930d  TAXR...Y.F.BR...
	defb 012h,014h,079h,062h,000h,079h,08bh,003h,045h,003h,000h,052h,003h,046h,05eh,04bh	; 931d  ..yb.y..E..R.F^K
	defb 04fh,006h,03ch,0ffh	; 932d

; ----------------------------------------------------------------------
; DATOS mensaje_22_9331: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x9331..0x9340  (15 bytes)
DATA_mensaje_22_9331:
	defb 0fch,03bh,071h,07fh,071h,001h,000h,0b7h,06ch,051h,048h,052h,001h,03ch,0ffh	; 9331  ..q.q...lQHR.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9340: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (30
;   bytes)
;   0x9340..0x935e  (30 bytes)
DATA_mensaje_22_9340:
	defb 0f8h,03bh,071h,082h,082h,082h,0afh,001h,000h,0b7h,06ch,051h,048h,052h,000h,040h	; 9340  ..q.......lQHR.@
	defb 068h,041h,052h,0feh,062h,066h,043h,06dh,045h,058h,042h,001h,03ch,0ffh	; 9350  hAR.bfCmEXB.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_935E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (109
;   bytes)
;   0x935e..0x93cb  (109 bytes)
DATA_mensaje_22_935E:
	defb 0f8h,03bh,0c6h,059h,000h,04ah,041h,05fh,06dh,04bh,003h,0a4h,051h,04bh,058h,000h	; 935e  ...Y.JA_mK..QKX.
	defb 077h,003h,086h,07ch,053h,041h,042h,062h,06dh,04bh,003h,0a3h,045h,003h,000h,04bh	; 936e  w..|SABbmK..E..K
	defb 0a5h,042h,059h,003h,041h,0feh,040h,045h,003h,0a6h,04fh,067h,052h,003h,054h,040h	; 937e  .BY.A.@E..OgR.T@
	defb 03ch,0feh,0fch,03bh,054h,04dh,003h,002h,03ch,0fdh,0f8h,03bh,0bah,059h,0c6h,058h	; 938e  <...TM..<....Y.X
	defb 0b5h,06ch,0b8h,052h,000h,05bh,045h,041h,0feh,057h,060h,067h,055h,0d2h,068h,06dh	; 939e  .l.R.[EA.W`gU.hm
	defb 04bh,003h,0a3h,045h,003h,000h,0b5h,058h,05fh,045h,0feh,0bbh,062h,000h,04ch,045h	; 93ae  K..E...X_E..b.LE
	defb 003h,04fh,062h,000h,0b8h,043h,06dh,045h,066h,058h,042h,03ch,0ffh	; 93be  .Ob..CmEfXB<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_93CB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x93cb..0x93e1  (22 bytes)
DATA_mensaje_22_93CB:
	defb 0f8h,03bh,059h,063h,047h,062h,053h,055h,000h,062h,053h,003h,066h,054h,041h,062h	; 93cb  ..YcGbSU.bS.fTAb
	defb 058h,045h,054h,040h,03ch,0ffh	; 93db

; ----------------------------------------------------------------------
; DATOS mensaje_22_93E1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0x93e1..0x9403  (34 bytes)
DATA_mensaje_22_93E1:
	defb 0f8h,03bh,049h,069h,052h,003h,000h,079h,08bh,003h,06ch,000h,051h,047h,066h,054h	; 93e1  ..IiR..y..l.QGfT
	defb 047h,052h,0feh,04ch,05fh,05eh,04ch,006h,000h,040h,067h,045h,003h,053h,042h,001h	; 93f1  GR.L_^L..@gE.SB.
	defb 03ch,0ffh	; 9401

; ----------------------------------------------------------------------
; DATOS mensaje_22_9403: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (35
;   bytes)
;   0x9403..0x9426  (35 bytes)
DATA_mensaje_22_9403:
	defb 0f8h,03bh,063h,069h,063h,069h,000h,049h,069h,052h,003h,000h,063h,0a6h,053h,0feh	; 9403  ..cici.IiR..c.S.
	defb 0e7h,046h,045h,043h,0a6h,04fh,000h,0b7h,0e4h,050h,055h,000h,054h,069h,04fh,06bh	; 9413  .FEC.O...PU.TiOk
	defb 041h,03ch,0ffh	; 9423

; ----------------------------------------------------------------------
; DATOS mensaje_22_9426: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0x9426..0x9442  (28 bytes)
DATA_mensaje_22_9426:
	defb 0f8h,03bh,049h,069h,049h,069h,000h,040h,05eh,067h,000h,0c6h,058h,0b5h,06ch,0feh	; 9426  ..IiIi.@^g..X.l.
	defb 0b8h,054h,041h,0efh,045h,003h,000h,041h,041h,065h,03ch,0ffh	; 9436  .TA.E..AAe<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9442: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (596
;   bytes)
;   0x9442..0x9696  (596 bytes)
DATA_mensaje_22_9442:
	defb 0fch,03bh,077h,003h,086h,07ch,005h,04bh,003h,051h,059h,000h,049h,058h,000h,0f7h	; 9442  ..w..|.K.QY.IX..
	defb 0fbh,045h,003h,0feh,070h,07fh,08eh,06ch,000h,051h,065h,047h,000h,042h,0a6h,052h	; 9452  .E..p..l.QeG.B.R
	defb 0feh,046h,044h,047h,06ch,000h,042h,04bh,054h,0a6h,052h,041h,068h,06dh,04fh,003h	; 9462  .FDGl.BKT.RAhmO.
	defb 006h,0feh,0c9h,053h,045h,000h,054h,066h,054h,041h,04fh,003h,06ah,042h,045h,002h	; 9472  ...SE.TfTAO.jBE.
	defb 03ch,0fdh,0f8h,03bh,072h,090h,006h,000h,04fh,04ch,048h,052h,047h,069h,04fh,000h	; 9482  <...r...OLHRGiO.
	defb 044h,069h,041h,055h,0feh,04fh,04fh,003h,052h,003h,000h,063h,0a6h,052h,063h,06ah	; 9492  DiAU.OO.R..c.Rcj
	defb 042h,006h,000h,04bh,045h,04bh,001h,0feh,054h,044h,068h,045h,053h,003h,042h,045h	; 94a2  B..KEK..TDhES.BE
	defb 000h,05dh,04bh,0a5h,042h,059h,000h,052h,003h,046h,06dh,001h,04eh,069h,052h,003h	; 94b2  .]K.BY.R.Fm.NiR.
	defb 062h,000h,065h,041h,045h,054h,002h,03ch,0fdh,0f8h,03bh,052h,003h,059h,000h,059h	; 94c2  b.eAET.<...R.Y.Y
	defb 04bh,003h,061h,065h,042h,006h,0feh,0f7h,0fbh,04ah,06dh,000h,0c6h,058h,0b5h,06ch	; 94d2  K.aeB....Jm..X.l
	defb 065h,01dh,047h,0b8h,054h,04ah,041h,03ch,0fbh,03bh,00ah,00ah,03ch,0fdh,0f8h,03bh	; 94e2  e.G.TJA<....<...
	defb 05eh,05bh,003h,04fh,045h,003h,000h,044h,062h,041h,01dh,006h,000h,04eh,04bh,052h	; 94f2  ^[.OE..DbA...NKR
	defb 0feh,057h,060h,047h,054h,0a6h,052h,046h,04fh,01dh,03ch,0feh,0fch,03bh,077h,003h	; 9502  .W`GT.RFO.<...w.
	defb 01dh,000h,077h,003h,01dh,03ch,0feh,0f8h,03bh,049h,066h,0a6h,001h,000h,076h,08fh	; 9512  ..w..<...If...v.
	defb 045h,003h,000h,057h,050h,0a3h,041h,045h,06dh,001h,03ch,0fdh,0f8h,03bh,04ah,040h	; 9522  E..WP.AEm.<...J@
	defb 000h,0f0h,06ch,000h,0b4h,046h,054h,04ah,041h,006h,0feh,0f0h,058h,000h,045h,046h	; 9532  ..l..FTJA...X.EF
	defb 003h,06ch,000h,053h,067h,059h,04ch,003h,04bh,000h,053h,05ah,003h,066h,06ch,0feh	; 9542  .l.SgYL.K.SZ.fl.
	defb 0b4h,048h,052h,000h,0b8h,04dh,052h,044h,047h,069h,03ch,0feh,0fbh,03bh,00ah,00ah	; 9552  .HR..MRDGi<.....
	defb 03ch,0fdh,0fbh,03bh,0f7h,0fch,001h,000h,04eh,058h,078h,003h,020h,090h,059h,000h	; 9562  <.......NXx. .Y.
	defb 07fh,003h,091h,0afh,001h,0feh,040h,040h,0a6h,000h,053h,003h,049h,0a6h,001h,002h	; 9572  ......@@..S.I...
	defb 000h,053h,003h,049h,054h,058h,001h,002h,0feh,046h,0a3h,040h,020h,020h,020h,0a6h	; 9582  .S.ITX...F.@   .
	defb 001h,001h,000h,0f7h,0fch,001h,001h,03ch,0fdh,0fch,03bh,045h,06dh,04dh,003h,06dh	; 9592  .......<...EmM.m
	defb 055h,000h,053h,050h,047h,068h,0a6h,052h,068h,054h,03ch,0fdh,0f8h,03bh,04eh,042h	; 95a2  U.SPGh.RhT<...NB
	defb 052h,003h,059h,054h,041h,006h,046h,044h,047h,059h,000h,062h,053h,003h,068h,045h	; 95b2  R.YTA.FDGY.bS.hE
	defb 003h,0feh,0c9h,045h,000h,042h,050h,040h,048h,068h,049h,053h,058h,000h,052h,003h	; 95c2  ...E.BP@HhISX.R.
	defb 046h,054h,041h,0feh,04bh,003h,0a4h,042h,0d4h,054h,000h,05ah,05fh,051h,06ch,000h	; 95d2  FTA.K..B.T.Z_Ql.
	defb 0f0h,058h,000h,0feh,044h,047h,05bh,045h,047h,055h,000h,04bh,05eh,0a6h,052h,044h	; 95e2  .X..DG[EGU.K^.RD
	defb 068h,06dh,04bh,003h,0a3h,03ch,0fdh,0f8h,03bh,065h,04bh,001h,000h,052h,003h,059h	; 95f2  hmK..<...eK..R.Y
	defb 000h,013h,051h,000h,045h,04eh,003h,043h,04fh,066h,0feh,0b5h,06ch,0b4h,048h,054h	; 9602  ..Q.EN.COf..l.HT
	defb 04ah,041h,006h,000h,046h,044h,047h,059h,000h,062h,042h,0feh,062h,053h,003h,0a6h	; 9612  JA..FDGY.bB.bS..
	defb 052h,041h,068h,04bh,003h,0a3h,06ah,042h,006h,0feh,00ah,011h,00ah,012h,00ah,013h	; 9622  RAhK..jB........
	defb 001h,001h,000h,08dh,099h,020h,0afh,001h,03ch,0fdh,0fbh,03bh,08bh,0a7h,01dh,000h	; 9632  ..... ..<.......
	defb 065h,047h,000h,057h,060h,0a6h,04fh,006h,0feh,0f7h,0fch,000h,0c9h,06ch,000h,08dh	; 9642  eG.W`.O......l..
	defb 003h,07ah,0afh,053h,04bh,052h,068h,058h,001h,0feh,059h,063h,047h,000h,04ah,046h	; 9652  .z.SKRhX..YcG.JF
	defb 06ch,000h,041h,04eh,046h,003h,05eh,04bh,0a5h,001h,03ch,0fdh,0f8h,03bh,065h,045h	; 9662  l.ANF.^K..<...eE
	defb 0a6h,04fh,000h,065h,045h,0a6h,04fh,006h,000h,04ah,040h,0feh,0b7h,06ch,051h,048h	; 9672  .O.eE.O..J@..lQH
	defb 052h,000h,0dch,046h,054h,04ah,041h,03ch,0feh,0fch,03bh,040h,067h,045h,003h,053h	; 9682  R..FTJA<...@gE.S
	defb 042h,001h,03ch,0ffh	; 9692

; ----------------------------------------------------------------------
; DATOS mensaje_22_9696: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x9696..0x96a9  (19 bytes)
DATA_mensaje_22_9696:
	defb 0f8h,03bh,0f7h,0fbh,04ah,06dh,059h,000h,062h,042h,000h,054h,044h,0a6h,053h,068h	; 9696  ....JmY.bB.TD.Sh
	defb 065h,03ch,0ffh	; 96a6

; ----------------------------------------------------------------------
; DATOS mensaje_22_96A9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x96a9..0x96b9  (16 bytes)
DATA_mensaje_22_96A9:
	defb 0f8h,03bh,048h,0a6h,04fh,041h,054h,000h,0bbh,04bh,003h,0a3h,058h,042h,03ch,0ffh	; 96a9  ..H.OAT..K..XB<.

; ----------------------------------------------------------------------
; DATOS mensajes_22_96B9: 7 palabras: los mensajes de la sala 358 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (14 bytes)
;   0x96b9..0x96c7  (14 bytes)
DATA_mensajes_22_96B9:
	defb 0c7h,096h	; 96b9
	defb 08bh,097h	; 96bb
	defb 0b9h,097h	; 96bd
	defb 0ebh,097h	; 96bf
	defb 00bh,098h	; 96c1
	defb 0e0h,074h	; 96c3
	defb 0bch,074h	; 96c5

; ----------------------------------------------------------------------
; DATOS mensaje_22_96C7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (196
;   bytes)
;   0x96c7..0x978b  (196 bytes)
DATA_mensaje_22_96C7:
	defb 0f8h,03bh,0f7h,0fch,053h,003h,058h,001h,000h,0c6h,059h,000h,049h,058h,0f1h,058h	; 96c7  ....S.X...Y.IX.X
	defb 0feh,074h,07ah,052h,003h,04ch,03ch,0feh,0fch,03bh,0c9h,045h,003h,000h,040h,0a6h	; 96d7  .tzR.L<....E..@.
	defb 04fh,058h,002h,03ch,0fdh,0f8h,03bh,04bh,003h,051h,059h,00ah,00ah,049h,058h,0f1h	; 96e7  OX.<...K.QY..IX.
	defb 058h,062h,058h,059h,000h,05fh,054h,0feh,04bh,06dh,04bh,003h,06dh,05bh,003h,045h	; 96f7  XbXY._T.KmK.m[.E
	defb 047h,000h,05eh,041h,055h,050h,000h,011h,053h,003h,059h,0feh,05fh,054h,052h,003h	; 9707  G.^AUP..S.Y._TR.
	defb 000h,040h,051h,05eh,067h,000h,0f2h,055h,000h,044h,041h,058h,067h,06ch,0feh,04ah	; 9717  .@Q^g..U.DAXgl.J
	defb 04ah,048h,003h,052h,044h,067h,05eh,04bh,04fh,006h,0fdh,04eh,069h,045h,003h,000h	; 9727  JH.RDg^KO..NiE..
	defb 079h,003h,077h,003h,058h,000h,041h,045h,067h,055h,05bh,069h,000h,05dh,069h,0feh	; 9737  y.w.X.AEgU[i.]i.
	defb 0b8h,052h,058h,053h,042h,067h,000h,041h,063h,000h,0b8h,043h,05eh,04dh,06dh,045h	; 9747  .RXSBg.Ac..C^MmE
	defb 003h,0feh,049h,058h,053h,042h,067h,000h,04ch,045h,003h,04fh,000h,045h,04fh,050h	; 9757  ..IXSBg.LE.O.EOP
	defb 045h,003h,0feh,048h,04ah,069h,052h,04bh,05eh,0a6h,04fh,058h,052h,003h,04ch,03ch	; 9767  E..HJiRK^.OXR.L<
	defb 0fdh,0fbh,03bh,05eh,040h,001h,000h,0c9h,052h,000h,05ah,053h,003h,041h,049h,053h	; 9777  ...^@...R.ZS.AIS
	defb 06ch,001h,03ch,0ffh	; 9787

; ----------------------------------------------------------------------
; DATOS mensaje_22_978B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0x978b..0x97b9  (46 bytes)
DATA_mensaje_22_978B:
	defb 0f8h,03bh,049h,058h,05eh,05eh,052h,003h,059h,000h,053h,052h,062h,000h,047h,066h	; 978b  ..IX^^R.Y.SRb.Gf
	defb 04bh,052h,0feh,064h,048h,05eh,04dh,06dh,006h,000h,053h,003h,042h,045h,000h,049h	; 979b  KR.dH^Mm..S.BE.I
	defb 058h,0f1h,06ch,0feh,04ch,047h,0a6h,052h,0d3h,04ah,041h,001h,03ch,0ffh	; 97ab  X.l.LG.R.JA.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_97B9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0x97b9..0x97eb  (50 bytes)
DATA_mensaje_22_97B9:
	defb 0f8h,03bh,049h,049h,055h,059h,000h,016h,0bah,058h,000h,0f1h,0bah,045h,003h,0feh	; 97b9  ..IIUY...X...E..
	defb 04ch,06dh,052h,003h,044h,067h,05eh,04ch,006h,000h,053h,003h,042h,045h,000h,05fh	; 97c9  LmR.Dg^L..S.BE._
	defb 06dh,054h,06ch,0feh,04fh,04ch,048h,052h,047h,04fh,003h,04ah,041h,05eh,04bh,001h	; 97d9  mTl.OLHRGO.JA^K.
	defb 03ch,0ffh	; 97e9

; ----------------------------------------------------------------------
; DATOS mensaje_22_97EB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x97eb..0x980b  (32 bytes)
DATA_mensaje_22_97EB:
	defb 0f8h,03bh,040h,067h,045h,003h,053h,042h,049h,003h,04ah,003h,041h,05eh,04ch,001h	; 97eb  ..@gE.SBI.J.A^L.
	defb 0feh,0f7h,0fch,053h,003h,058h,001h,000h,0f7h,0fbh,053h,003h,058h,001h,03ch,0ffh	; 97fb  ...S.X....S.X.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_980B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (31
;   bytes)
;   0x980b..0x982a  (31 bytes)
DATA_mensaje_22_980B:
	defb 0f8h,03bh,040h,054h,04fh,04ah,05eh,049h,04eh,000h,05eh,049h,053h,000h,0f2h,058h	; 980b  ..@TOJ^IN.^IS..X
	defb 0feh,0b0h,06bh,04ah,069h,04fh,000h,044h,0efh,052h,003h,04ch,001h,03ch,0ffh	; 981b  ..kJiO.D.R.L.<.

; ----------------------------------------------------------------------
; DATOS mensajes_22_982A: 3 palabras: los mensajes de la sala 389 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (6
;   bytes)
;   0x982a..0x9830  (6 bytes)
DATA_mensajes_22_982A:
	defb 030h,098h	; 982a
	defb 06dh,098h	; 982c
	defb 0e0h,074h	; 982e

; ----------------------------------------------------------------------
; DATOS mensaje_22_9830: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (61
;   bytes)
;   0x9830..0x986d  (61 bytes)
DATA_mensaje_22_9830:
	defb 0f8h,03bh,044h,044h,0a6h,001h,000h,0f7h,0fch,053h,003h,058h,001h,000h,049h,058h	; 9830  ..DD.....S.X..IX
	defb 0f1h,059h,0feh,05eh,062h,058h,055h,000h,065h,0a6h,052h,000h,0c4h,06bh,069h,052h	; 9840  .Y.^bXU.e.R..kiR
	defb 041h,05eh,04ch,006h,0feh,076h,078h,09dh,052h,003h,04ch,001h,000h,04ch,047h,003h	; 9850  A^L..vx.R.L..LG.
	defb 000h,062h,053h,003h,066h,069h,068h,045h,003h,041h,041h,03ch,0ffh	; 9860  .bS.fihE.AA<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_986D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (109
;   bytes)
;   0x986d..0x98da  (109 bytes)
DATA_mensaje_22_986D:
	defb 0f6h,082h,003h,08ah,003h,098h,000h,03bh,075h,003h,098h,098h,098h,098h,0afh,001h	; 986d  ........u.......
	defb 000h,0f7h,0fch,000h,0f7h,0fbh,0feh,044h,05eh,043h,04fh,050h,059h,000h,0b5h,04ah	; 987d  .......D^COPY..J
	defb 003h,06bh,067h,054h,058h,04fh,003h,001h,0feh,0ddh,062h,054h,047h,000h,079h,003h	; 988d  .kgTXO....bTG.y.
	defb 077h,003h,04ah,05eh,045h,003h,000h,049h,058h,0c2h,0c3h,055h,0feh,0e1h,06bh,069h	; 989d  w.J^E..IX..U..ki
	defb 068h,053h,041h,042h,058h,055h,00ah,00ah,0fdh,04bh,003h,063h,05eh,059h,003h,045h	; 98ad  hSABXU...K.c^Y.E
	defb 067h,000h,04bh,044h,0a6h,052h,001h,0feh,074h,099h,04ah,05eh,045h,003h,000h,049h	; 98bd  g.KD.R..t.J^E..I
	defb 049h,052h,003h,000h,049h,06ah,04bh,052h,063h,068h,001h,0fah,005h	; 98cd  IR..IjKRch...

; ----------------------------------------------------------------------
; DATOS mensajes_22_98DA: 10 palabras: los mensajes de la sala 390 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (20 bytes)
;   0x98da..0x98ee  (20 bytes)
DATA_mensajes_22_98DA:
	defb 0eeh,098h	; 98da
	defb 01dh,099h	; 98dc
	defb 04fh,099h	; 98de
	defb 066h,099h	; 98e0
	defb 079h,099h	; 98e2
	defb 084h,099h	; 98e4
	defb 0e0h,074h	; 98e6
	defb 0bch,074h	; 98e8
	defb 09bh,074h	; 98ea
	defb 088h,074h	; 98ec

; ----------------------------------------------------------------------
; DATOS mensaje_22_98EE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (47
;   bytes)
;   0x98ee..0x991d  (47 bytes)
DATA_mensaje_22_98EE:
	defb 0f8h,03bh,042h,06bh,01dh,06dh,006h,000h,0f1h,058h,0bah,045h,003h,000h,053h,003h	; 98ee  ..Bk.m...X.E..S.
	defb 049h,055h,062h,0feh,041h,054h,047h,054h,0a6h,04fh,03ch,0feh,0fch,03bh,054h,047h	; 98fe  IUb.ATGT.O<...TG
	defb 054h,0a6h,001h,04bh,06dh,059h,004h,041h,000h,054h,041h,045h,066h,03ch,0ffh	; 990e  T..KmY.A.TAEf<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_991D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0x991d..0x994f  (50 bytes)
DATA_mensaje_22_991D:
	defb 0f8h,03bh,0b8h,052h,0b8h,052h,000h,04ah,041h,049h,003h,055h,044h,041h,058h,067h	; 991d  ...R.R.JAI.UDAXg
	defb 0feh,04bh,04fh,0eah,057h,000h,08dh,003h,077h,058h,000h,044h,054h,045h,055h,0feh	; 992d  .KO.W...wX.DTEU.
	defb 05ch,06dh,054h,000h,043h,045h,003h,000h,0e1h,06bh,069h,04fh,06dh,04fh,003h,065h	; 993d  \mT.CE...kiOmO.e
	defb 03ch,0ffh	; 994d

; ----------------------------------------------------------------------
; DATOS mensaje_22_994F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x994f..0x9966  (23 bytes)
DATA_mensaje_22_994F:
	defb 0f8h,03bh,059h,063h,047h,000h,08dh,003h,077h,06ch,000h,062h,053h,053h,003h,042h	; 994f  ..YcG...wl.bSS.B
	defb 067h,055h,04bh,052h,065h,03ch,0ffh	; 995f

; ----------------------------------------------------------------------
; DATOS mensaje_22_9966: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x9966..0x9979  (19 bytes)
DATA_mensaje_22_9966:
	defb 0f8h,03bh,042h,06bh,01dh,041h,006h,040h,067h,045h,003h,053h,042h,000h,0f7h,0fch	; 9966  ..Bk.A.@gE.SB...
	defb 001h,03ch,0ffh	; 9976

; ----------------------------------------------------------------------
; DATOS mensaje_22_9979: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (11
;   bytes)
;   0x9979..0x9984  (11 bytes)
DATA_mensaje_22_9979:
	defb 0f8h,03bh,040h,067h,045h,003h,053h,042h,001h,03ch,0ffh	; 9979  ..@gE.SB.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9984: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (86
;   bytes)
;   0x9984..0x99da  (86 bytes)
DATA_mensaje_22_9984:
	defb 0f8h,03bh,05dh,066h,057h,006h,000h,08dh,003h,077h,045h,003h,000h,044h,041h,058h	; 9984  ..]fW....wE..DAX
	defb 067h,04bh,052h,068h,053h,0feh,0f2h,04ah,05eh,045h,003h,000h,06eh,054h,06dh,04bh	; 9994  gKRhS..J^E..nTmK
	defb 003h,055h,000h,048h,041h,04bh,003h,06ch,0feh,04ah,04ch,003h,048h,068h,06fh,0a6h	; 99a4  .U.HAK.l.JL.Hho.
	defb 052h,03ch,0fdh,0fch,03bh,072h,090h,006h,000h,0c9h,045h,058h,0eah,000h,063h,047h	; 99b4  R<...r....EX..cG
	defb 04fh,003h,051h,045h,062h,0feh,04bh,069h,054h,041h,045h,066h,000h,065h,047h,0b8h	; 99c4  O.QEb.KiTAEf.eG.
	defb 052h,044h,049h,042h,03ch,0ffh	; 99d4

; ----------------------------------------------------------------------
; DATOS mensajes_22_99DA: 15 palabras: los mensajes de la sala 426 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (30 bytes)
;   0x99da..0x99f8  (30 bytes)
DATA_mensajes_22_99DA:
	defb 0f8h,099h	; 99da
	defb 021h,09ah	; 99dc
	defb 066h,09ah	; 99de
	defb 082h,09ah	; 99e0
	defb 08fh,09ah	; 99e2
	defb 0d2h,09ah	; 99e4
	defb 03dh,09bh	; 99e6
	defb 0b8h,09bh	; 99e8
	defb 0e4h,09bh	; 99ea
	defb 014h,09ch	; 99ec
	defb 028h,09ch	; 99ee
	defb 03bh,09ch	; 99f0
	defb 06ch,09ch	; 99f2
	defb 0ach,073h	; 99f4
	defb 078h,074h	; 99f6

; ----------------------------------------------------------------------
; DATOS mensaje_22_99F8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0x99f8..0x9a21  (41 bytes)
DATA_mensaje_22_99F8:
	defb 0fbh,03bh,0c9h,052h,000h,045h,041h,052h,040h,068h,058h,002h,03ch,0feh,0fch,03bh	; 99f8  ...R.EAR@hX.<...
	defb 06eh,066h,005h,047h,005h,04dh,005h,046h,005h,055h,005h,0feh,050h,005h,0a4h,005h	; 9a08  nf.G.M.F.U..P...
	defb 042h,005h,041h,005h,001h,06fh,03ch,0fah,009h	; 9a18  B.A..o<..

; ----------------------------------------------------------------------
; DATOS mensaje_22_9A21: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (69
;   bytes)
;   0x9a21..0x9a66  (69 bytes)
DATA_mensaje_22_9A21:
	defb 0fch,03bh,044h,041h,0a6h,001h,000h,0f7h,0fbh,000h,04bh,0a6h,045h,067h,04bh,06ah	; 9a21  ..DA......K.EgKj
	defb 001h,03ch,0fbh,03bh,00ah,00ah,049h,049h,059h,000h,053h,003h,049h,002h,000h,0c6h	; 9a31  .<....IIY.S.I...
	defb 059h,000h,04fh,003h,069h,002h,03ch,0feh,0fch,03bh,049h,049h,059h,000h,077h,003h	; 9a41  Y.O.i.<...IIY.w.
	defb 097h,020h,077h,0c5h,0c0h,001h,0feh,044h,0b6h,059h,000h,08bh,003h,07fh,04fh,003h	; 9a51  . w....D.Y....O.
	defb 04dh,003h,001h,03ch,0ffh	; 9a61

; ----------------------------------------------------------------------
; DATOS mensaje_22_9A66: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0x9a66..0x9a82  (28 bytes)
DATA_mensaje_22_9A66:
	defb 0fch,03bh,062h,06ah,055h,000h,0f7h,0fbh,058h,000h,070h,07fh,08eh,058h,0feh,052h	; 9a66  ..bjU...X.p..X.R
	defb 0a6h,05ch,004h,06dh,055h,000h,044h,050h,04fh,054h,03ch,0ffh	; 9a76  .\.mU.DPOT<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9A82: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x9a82..0x9a8f  (13 bytes)
DATA_mensaje_22_9A82:
	defb 0fch,03bh,04bh,003h,0a4h,042h,04bh,0a5h,042h,04fh,003h,03ch,0ffh	; 9a82  ..K..BK.BO.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9A8F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (67
;   bytes)
;   0x9a8f..0x9ad2  (67 bytes)
DATA_mensaje_22_9A8F:
	defb 0fch,03bh,04fh,003h,061h,04fh,003h,001h,000h,0b3h,058h,000h,066h,047h,04dh,046h	; 9a8f  ..O.aO....X.fGMF
	defb 058h,0feh,07bh,0aeh,0afh,077h,052h,003h,000h,0f7h,0fbh,059h,000h,0f7h,0fbh,059h	; 9a9f  X.{..wR....Y...Y
	defb 00ah,0feh,077h,098h,077h,098h,000h,088h,020h,082h,09dh,000h,089h,004h,020h,052h	; 9aaf  ..w.w... ..... R
	defb 003h,06dh,057h,06dh,055h,0feh,054h,0a6h,052h,04bh,05eh,0a6h,04fh,06dh,04fh,003h	; 9abf  .mWmU.T.RK^.OmO.
	defb 001h,03ch,0ffh	; 9acf

; ----------------------------------------------------------------------
; DATOS mensaje_22_9AD2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (107
;   bytes)
;   0x9ad2..0x9b3d  (107 bytes)
DATA_mensaje_22_9AD2:
	defb 0fch,03bh,041h,050h,045h,000h,059h,003h,050h,045h,04fh,003h,006h,000h,062h,042h	; 9ad2  ..APE.Y.PEO...bB
	defb 011h,053h,003h,0feh,044h,054h,04bh,003h,000h,04bh,0a5h,042h,048h,003h,046h,06ch	; 9ae2  .S..DTK..K.BH.Fl
	defb 000h,040h,04fh,043h,069h,059h,003h,0feh,062h,053h,055h,000h,062h,053h,003h,068h	; 9af2  .@OCiY..bSU.bS.h
	defb 045h,062h,00ah,00ah,03ch,0fdh,08dh,003h,075h,0afh,001h,000h,08dh,003h,079h,0afh	; 9b02  Eb..<...u.....y.
	defb 001h,000h,083h,003h,07ch,0afh,001h,0feh,0fbh,03bh,00ah,00ah,05ch,000h,05ch,05ch	; 9b12  ....|.......\.\\
	defb 05ch,000h,05ch,05ch,05ch,05ch,03ch,0feh,0fch,03bh,041h,045h,06dh,001h,000h,046h	; 9b22  \.\\\\<...AEm..F
	defb 003h,0a3h,047h,049h,042h,045h,04fh,003h,001h,03ch,0ffh	; 9b32  ..GIBEO..<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9B3D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (123
;   bytes)
;   0x9b3d..0x9bb8  (123 bytes)
DATA_mensaje_22_9B3D:
	defb 0fch,03bh,044h,000h,044h,041h,000h,0bch,041h,000h,07bh,003h,0aeh,072h,07fh,003h	; 9b3d  ..D.DA..A.{..r..
	defb 09dh,059h,0feh,065h,04dh,065h,006h,000h,08dh,09dh,083h,059h,0c9h,053h,062h,054h	; 9b4d  .Y.eMe.....Y.SbT
	defb 041h,06dh,04fh,003h,06ah,002h,0b3h,05eh,052h,003h,000h,08bh,003h,07fh,08bh,003h	; 9b5d  AmO.j..^R.......
	defb 07fh,0a6h,052h,000h,089h,003h,075h,055h,04bh,052h,04fh,0feh,074h,099h,045h,003h	; 9b6d  ..R...uUKRO.t.E.
	defb 000h,0bch,045h,0a6h,04fh,03ch,0fdh,0fbh,03bh,00ah,00ah,040h,054h,04fh,000h,04fh	; 9b7d  ..E.O<.....@TO.O
	defb 003h,069h,002h,03ch,0feh,0fch,03bh,075h,003h,08ah,003h,01dh,01dh,01dh,09dh,001h	; 9b8d  .i.<...u........
	defb 000h,08eh,07bh,003h,052h,003h,000h,04bh,003h,05bh,003h,06dh,058h,0feh,046h,044h	; 9b9d  ..{.R..K.[.mX.FD
	defb 047h,06ch,000h,042h,04bh,054h,0a6h,052h,068h,03ch,0ffh	; 9bad  Gl.BKT.Rh<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9BB8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (44
;   bytes)
;   0x9bb8..0x9be4  (44 bytes)
DATA_mensaje_22_9BB8:
	defb 0fch,03bh,06eh,066h,047h,04dh,046h,055h,000h,050h,0a4h,042h,041h,001h,06fh,045h	; 9bb8  ..nfGMFU.P.BA.oE
	defb 006h,0feh,049h,049h,052h,003h,000h,0f7h,0fbh,059h,000h,046h,044h,047h,06ch,0feh	; 9bc8  ..IIR....Y.FDGl.
	defb 042h,04bh,054h,0a6h,04fh,06dh,04fh,003h,054h,040h,03ch,0ffh	; 9bd8  BKT.OmO.T@<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9BE4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (48
;   bytes)
;   0x9be4..0x9c14  (48 bytes)
DATA_mensaje_22_9BE4:
	defb 0fbh,03bh,0c9h,04fh,003h,045h,003h,000h,049h,058h,000h,045h,06dh,059h,003h,06dh	; 9be4  ...O.E..IX.EmY.m
	defb 06ch,000h,0b8h,068h,053h,0feh,070h,07fh,08eh,045h,003h,000h,041h,04fh,047h,054h	; 9bf4  l..hS.p..E..AOGT
	defb 0a6h,052h,047h,068h,06bh,006h,0feh,054h,04dh,003h,045h,04bh,066h,002h,03ch,0ffh	; 9c04  .RGhk..TM.EKf.<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9C14: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (20
;   bytes)
;   0x9c14..0x9c28  (20 bytes)
DATA_mensaje_22_9C14:
	defb 0fbh,03bh,040h,04eh,049h,055h,000h,045h,06dh,059h,003h,06dh,045h,003h,000h,040h	; 9c14  ..@NIU.EmY.mE..@
	defb 068h,06bh,03ch,0ffh	; 9c24

; ----------------------------------------------------------------------
; DATOS mensaje_22_9C28: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x9c28..0x9c3b  (19 bytes)
DATA_mensaje_22_9C28:
	defb 0fbh,03bh,08bh,003h,08ah,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,0afh	; 9c28  .....          .
	defb 001h,03ch,0ffh	; 9c38

; ----------------------------------------------------------------------
; DATOS mensaje_22_9C3B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0x9c3b..0x9c6c  (49 bytes)
DATA_mensaje_22_9C3B:
	defb 0fch,03bh,077h,098h,077h,098h,000h,04ch,0a6h,052h,06dh,089h,004h,020h,055h,0feh	; 9c3b  ..w.w..L.Rm.. U.
	defb 054h,0a6h,052h,04bh,05eh,0a6h,04fh,000h,0f7h,0fbh,06ch,000h,049h,049h,055h,0feh	; 9c4b  T.RK^.O...l.IIU.
	defb 058h,049h,04bh,052h,0dch,047h,06bh,048h,055h,059h,000h,041h,045h,054h,041h,03ch	; 9c5b  XIKR.GkHUY.AETA<
	defb 0ffh	; 9c6b

; ----------------------------------------------------------------------
; DATOS mensaje_22_9C6C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (60
;   bytes)
;   0x9c6c..0x9ca8  (60 bytes)
DATA_mensaje_22_9C6C:
	defb 0fch,03bh,049h,042h,04bh,052h,041h,052h,062h,000h,066h,050h,045h,003h,000h,040h	; 9c6c  ..IBKRARb.fPE..@
	defb 045h,06dh,006h,0feh,05eh,04fh,000h,05bh,053h,04bh,04fh,049h,053h,052h,003h,000h	; 9c7c  Em..^O.[SKOISR..
	defb 046h,044h,047h,045h,003h,0feh,062h,053h,003h,068h,045h,062h,04bh,069h,054h,041h	; 9c8c  FDGE..bS.hEbKiTA
	defb 04bh,00ah,00ah,051h,069h,052h,0dch,049h,042h,03ch,0fah,005h	; 9c9c  K..QiR.IB<..

; ----------------------------------------------------------------------
; DATOS mensajes_22_9CA8: 15 palabras: los mensajes de la sala 464 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (30 bytes)
;   0x9ca8..0x9cc6  (30 bytes)
DATA_mensajes_22_9CA8:
	defb 0c6h,09ch	; 9ca8
	defb 0e0h,09ch	; 9caa
	defb 014h,09dh	; 9cac
	defb 0fch,09dh	; 9cae
	defb 028h,09eh	; 9cb0
	defb 044h,09eh	; 9cb2
	defb 065h,09eh	; 9cb4
	defb 089h,09eh	; 9cb6
	defb 0ebh,09eh	; 9cb8
	defb 01bh,09fh	; 9cba
	defb 033h,09fh	; 9cbc
	defb 049h,09fh	; 9cbe
	defb 074h,09fh	; 9cc0
	defb 0b2h,09fh	; 9cc2
	defb 0a9h,074h	; 9cc4

; ----------------------------------------------------------------------
; DATOS mensaje_22_9CC6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (26
;   bytes)
;   0x9cc6..0x9ce0  (26 bytes)
DATA_mensaje_22_9CC6:
	defb 0fbh,03bh,05fh,04ch,003h,042h,05fh,052h,003h,000h,04fh,003h,069h,045h,000h,044h	; 9cc6  .._L.B_R..O.iE.D
	defb 065h,041h,052h,003h,041h,068h,06bh,03ch,0fah,005h	; 9cd6  eAR.Ahk<..

; ----------------------------------------------------------------------
; DATOS mensaje_22_9CE0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (52
;   bytes)
;   0x9ce0..0x9d14  (52 bytes)
DATA_mensaje_22_9CE0:
	defb 0f8h,03bh,0f7h,0fch,04ah,06dh,052h,003h,04ch,057h,006h,000h,044h,057h,045h,003h	; 9ce0  ....JmR.LW..DWE.
	defb 041h,045h,003h,0feh,040h,068h,058h,052h,003h,04ch,045h,003h,00ah,006h,000h,052h	; 9cf0  AE..@hXR.LE....R
	defb 045h,003h,05fh,06ch,000h,04ah,045h,003h,04bh,052h,0feh,05dh,04bh,041h,06dh,052h	; 9d00  E._l.JE.KR.]KAmR
	defb 003h,04ch,03ch,0ffh	; 9d10

; ----------------------------------------------------------------------
; DATOS mensaje_22_9D14: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (232
;   bytes)
;   0x9d14..0x9dfc  (232 bytes)
DATA_mensaje_22_9D14:
	defb 0f8h,03bh,0c6h,04fh,050h,000h,085h,09dh,076h,003h,0aeh,059h,000h,074h,09dh,084h	; 9d14  ...OP...v..Y.t..
	defb 053h,0feh,074h,083h,079h,053h,005h,05ch,003h,051h,05ch,003h,051h,058h,000h,05fh	; 9d24  S.t.yS.\.Q\.QX._
	defb 04ch,003h,042h,05fh,055h,04ch,06dh,052h,003h,041h,068h,058h,052h,003h,04ch,006h	; 9d34  L.B_ULmR.AhXR.L.
	defb 0fdh,04eh,04bh,052h,000h,012h,051h,058h,000h,05fh,04ch,003h,042h,05fh,06ch,000h	; 9d44  .NKR..QX._L.B_l.
	defb 060h,04ch,05bh,003h,0feh,050h,045h,058h,000h,04ch,041h,06ah,06ch,000h,0b0h,0a6h	; 9d54  `L[..PEX.LAjl...
	defb 052h,000h,05bh,003h,06dh,051h,042h,06ch,051h,051h,003h,048h,052h,044h,067h,05eh	; 9d64  R.[.mQBlQQ.HRDg^
	defb 04bh,04fh,006h,0fdh,04eh,04bh,052h,000h,049h,058h,04fh,05ah,003h,000h,0c6h,045h	; 9d74  KO..NKR.IXOZ...E
	defb 003h,000h,074h,083h,079h,045h,003h,06bh,058h,0feh,0efh,053h,000h,048h,0a6h,049h	; 9d84  ..t.yE.kX..S.H.I
	defb 06dh,04ch,068h,049h,053h,055h,054h,067h,0feh,052h,045h,003h,05fh,06ch,000h,044h	; 9d94  mLhISUTg.RE._l.D
	defb 044h,047h,067h,04bh,04fh,058h,052h,003h,04ch,045h,003h,0feh,05eh,04fh,003h,000h	; 9da4  DGgKOXR.LE..^O..
	defb 053h,053h,003h,041h,052h,041h,054h,041h,065h,042h,054h,058h,052h,003h,04ch,006h	; 9db4  SS.ARATAeBTXR.L.
	defb 0fdh,04ch,041h,06ah,058h,0deh,055h,062h,000h,054h,041h,065h,042h,052h,003h,04ch	; 9dc4  .LAjX.Ub.TAeBR.L
	defb 04bh,0feh,062h,04bh,045h,04ch,068h,053h,000h,0c9h,045h,058h,000h,046h,0a6h,045h	; 9dd4  K.bKELhS..EX.F.E
	defb 048h,052h,003h,0feh,050h,04bh,003h,0a5h,042h,055h,000h,052h,003h,04fh,058h,045h	; 9de4  HR..PK..BU.R.OXE
	defb 062h,04bh,069h,05eh,04dh,06dh,03ch,0ffh	; 9df4  bKi^Mm<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9DFC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (44
;   bytes)
;   0x9dfc..0x9e28  (44 bytes)
DATA_mensaje_22_9DFC:
	defb 0f8h,03bh,0c6h,059h,000h,049h,058h,053h,042h,067h,000h,050h,04bh,003h,0a5h,042h	; 9dfc  ...Y.IXSBg.PK..B
	defb 055h,059h,0feh,052h,003h,066h,069h,05eh,04dh,06dh,006h,000h,053h,003h,042h,045h	; 9e0c  UY.R.fi^Mm..S.BE
	defb 000h,04ah,045h,003h,04bh,052h,0feh,0d3h,04ah,041h,03ch,0ffh	; 9e1c  .JE.KR..JA<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9E28: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0x9e28..0x9e44  (28 bytes)
DATA_mensaje_22_9E28:
	defb 0fbh,03bh,049h,058h,0d0h,058h,0bah,059h,000h,08eh,020h,091h,071h,083h,003h,005h	; 9e28  ..IX.X.Y.. .q...
	defb 000h,051h,05eh,067h,085h,09dh,076h,003h,0aeh,065h,03ch,0ffh	; 9e38  .Q^g..v..e<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9E44: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0x9e44..0x9e65  (33 bytes)
DATA_mensaje_22_9E44:
	defb 0f8h,03bh,049h,058h,000h,07bh,0afh,08dh,004h,059h,000h,08dh,09dh,092h,088h,065h	; 9e44  ..IX.{...Y.....e
	defb 006h,0feh,05ah,0a6h,059h,004h,0a6h,052h,062h,000h,053h,069h,054h,041h,06bh,03ch	; 9e54  ..Z.Y..Rb.SiTAk<
	defb 0ffh	; 9e64

; ----------------------------------------------------------------------
; DATOS mensaje_22_9E65: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0x9e65..0x9e89  (36 bytes)
DATA_mensaje_22_9E65:
	defb 0f8h,03bh,06bh,040h,0a6h,000h,049h,069h,045h,003h,000h,0c6h,058h,000h,044h,047h	; 9e65  ..k@..IiE...X.DG
	defb 0a6h,04fh,0feh,052h,045h,003h,05fh,052h,003h,04ch,006h,000h,040h,067h,045h,003h	; 9e75  .O.RE._R.L..@gE.
	defb 053h,042h,03ch,0ffh	; 9e85

; ----------------------------------------------------------------------
; DATOS mensaje_22_9E89: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (98
;   bytes)
;   0x9e89..0x9eeb  (98 bytes)
DATA_mensaje_22_9E89:
	defb 0f8h,03bh,062h,042h,04bh,06bh,048h,000h,054h,041h,058h,052h,003h,04ch,045h,003h	; 9e89  ..bBKkH.TAXR.LE.
	defb 0feh,049h,058h,000h,052h,045h,003h,05fh,000h,074h,083h,079h,045h,003h,06bh,05eh	; 9e99  .IX.RE._.t.yE.k^
	defb 052h,003h,0feh,053h,053h,003h,048h,052h,062h,066h,043h,05eh,04dh,06dh,045h,002h	; 9ea9  R..SS.HRbfC^MmE.
	defb 0fdh,050h,045h,04ch,041h,06ah,045h,003h,000h,040h,069h,041h,066h,041h,000h,049h	; 9eb9  .PELAjE..@iAfA.I
	defb 06bh,069h,052h,0feh,041h,068h,058h,052h,003h,04ch,03ch,0feh,0fch,03bh,06bh,045h	; 9ec9  kiR.AhXR.L<...kE
	defb 0a6h,04fh,006h,04bh,003h,0a3h,040h,000h,053h,053h,003h,048h,052h,047h,068h,065h	; 9ed9  .O.K..@.SS.HRGhe
	defb 03ch,0ffh	; 9ee9

; ----------------------------------------------------------------------
; DATOS mensaje_22_9EEB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (48
;   bytes)
;   0x9eeb..0x9f1b  (48 bytes)
DATA_mensaje_22_9EEB:
	defb 0f8h,03bh,049h,058h,000h,052h,045h,003h,05fh,059h,000h,074h,083h,079h,045h,003h	; 9eeb  ..IX.RE._Y.t.yE.
	defb 06bh,058h,0efh,055h,0feh,044h,047h,0a6h,04fh,062h,058h,052h,003h,04ch,006h,000h	; 9efb  kX.U.DG.ObXR.L..
	defb 053h,003h,042h,045h,0feh,0b1h,066h,054h,041h,052h,003h,0d3h,04ah,041h,03ch,0ffh	; 9f0b  S.BE..fTAR..JA<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9F1B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0x9f1b..0x9f33  (24 bytes)
DATA_mensaje_22_9F1B:
	defb 0fch,03bh,052h,045h,003h,05fh,000h,0b8h,051h,048h,04fh,065h,03ch,0feh,0f8h,03bh	; 9f1b  ..RE._..QHOe<...
	defb 040h,067h,045h,003h,053h,042h,03ch,0ffh	; 9f2b  @gE.SB<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9F33: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x9f33..0x9f49  (22 bytes)
DATA_mensaje_22_9F33:
	defb 0f8h,03bh,052h,045h,003h,05fh,059h,000h,053h,053h,003h,048h,052h,0d3h,04ah,041h	; 9f33  ..RE._Y.SS.HR.JA
	defb 05eh,04bh,04fh,002h,03ch,0ffh	; 9f43

; ----------------------------------------------------------------------
; DATOS mensaje_22_9F49: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (43
;   bytes)
;   0x9f49..0x9f74  (43 bytes)
DATA_mensaje_22_9F49:
	defb 0fch,03bh,052h,045h,003h,05fh,000h,074h,083h,079h,045h,003h,06bh,058h,0bah,055h	; 9f49  ..RE._.t.yE.kX.U
	defb 000h,053h,053h,003h,048h,052h,0feh,046h,04fh,065h,03ch,0feh,0f8h,03bh,049h,003h	; 9f59  .SS.HR.FOe<...I.
	defb 047h,06ah,042h,04ah,05eh,052h,003h,04bh,04fh,03ch,0ffh	; 9f69  GjBJ^R.KO<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9F74: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (62
;   bytes)
;   0x9f74..0x9fb2  (62 bytes)
DATA_mensaje_22_9F74:
	defb 0fch,03bh,049h,069h,059h,074h,083h,079h,045h,003h,06bh,045h,066h,058h,000h,044h	; 9f74  ..IiYt.yE.kEfX.D
	defb 045h,043h,04bh,03ch,0feh,0f8h,03bh,06bh,040h,0a6h,001h,000h,07ch,082h,076h,001h	; 9f84  ECK<...k@...|.v.
	defb 000h,0f7h,0fch,04ah,06dh,0feh,0f7h,0fbh,04ah,06dh,000h,044h,069h,041h,055h,000h	; 9f94  ...Jm...Jm.DiAU.
	defb 0c6h,04fh,050h,058h,0c0h,055h,046h,052h,0d3h,04ah,041h,03ch,0fah,005h	; 9fa4  .OPX.UFR.JA<..

; ----------------------------------------------------------------------
; DATOS mensaje_22_9FB2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x9fb2..0x9fc2  (16 bytes)
DATA_mensaje_22_9FB2:
	defb 0f8h,03bh,041h,06ah,041h,06ah,053h,000h,040h,067h,045h,003h,053h,042h,03ch,0ffh	; 9fb2  ..AjAjS.@gE.SB<.

; ----------------------------------------------------------------------
; DATOS mensajes_22_9FC2: 18 palabras: los mensajes de la sala 468 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (36 bytes)
;   0x9fc2..0x9fe6  (36 bytes)
DATA_mensajes_22_9FC2:
	defb 0e6h,09fh	; 9fc2
	defb 0f0h,09fh	; 9fc4
	defb 00ch,0a0h	; 9fc6
	defb 049h,0a0h	; 9fc8
	defb 062h,0a0h	; 9fca
	defb 094h,0a0h	; 9fcc
	defb 0b7h,0a0h	; 9fce
	defb 0c0h,0a0h	; 9fd0
	defb 0dbh,0a0h	; 9fd2
	defb 0e7h,0a0h	; 9fd4
	defb 0f6h,0a0h	; 9fd6
	defb 006h,0a1h	; 9fd8
	defb 06ah,074h	; 9fda
	defb 0a9h,074h	; 9fdc
	defb 008h,074h	; 9fde
	defb 079h,073h	; 9fe0
	defb 09bh,074h	; 9fe2
	defb 078h,074h	; 9fe4

; ----------------------------------------------------------------------
; DATOS mensaje_22_9FE6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (10
;   bytes)
;   0x9fe6..0x9ff0  (10 bytes)
DATA_mensaje_22_9FE6:
	defb 0f8h,03bh,065h,06bh,0a6h,04fh,058h,042h,03ch,0ffh	; 9fe6  ..ek.OXB<.

; ----------------------------------------------------------------------
; DATOS mensaje_22_9FF0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba (sigue en el banco 23, en
;   0xA000); lo leen p00:4E76 (16 bytes)
;   0x9ff0..0xa000  (16 bytes)
DATA_mensaje_22_9FF0:
	defb 0f8h,03bh,06dh,0a6h,002h,000h,053h,003h,049h,045h,052h,003h,000h,0b8h,04fh,049h	; 9ff0  ..m...S.IER...OI
