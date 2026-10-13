; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 25 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS mensaje_24_7FF4_cola: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba (sigue del banco 24); lo
;   leen p00:4E76 (6 bytes)
;   0x8000..0x8006  (6 bytes)
DATA_mensaje_24_7FF4_cola:
	defb 041h,052h,068h,06bh,03ch,0ffh	; 8000

; ----------------------------------------------------------------------
; DATOS mensaje_25_8006: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (209
;   bytes)
;   0x8006..0x80d7  (209 bytes)
DATA_mensaje_25_8006:
	defb 0fbh,03bh,054h,04dh,003h,000h,049h,049h,052h,003h,000h,057h,052h,068h,058h,045h	; 8006  ..TM..IIR..WRhXE
	defb 0feh,06bh,048h,06ch,000h,046h,045h,04dh,052h,047h,069h,054h,041h,002h,03ch,0fdh	; 8016  .kHl.FEMRGiTA.<.
	defb 0f8h,03bh,057h,052h,06dh,04bh,003h,0a3h,000h,057h,020h,001h,000h,051h,020h,058h	; 8026  ..WRmK...W ..Q X
	defb 006h,0feh,00ah,00ah,04bh,003h,051h,059h,000h,074h,071h,096h,058h,0f1h,058h,000h	; 8036  ....K.QY.tq.X.X.
	defb 041h,053h,003h,045h,003h,0feh,045h,069h,052h,04bh,05eh,0a6h,052h,000h,058h,05fh	; 8046  AS.E..EiRK^.R.X_
	defb 05fh,04ch,003h,045h,003h,0feh,04eh,049h,06ch,000h,051h,041h,052h,04bh,05eh,0a6h	; 8056  _L.E..NIl.QARK^.
	defb 04fh,06dh,04fh,003h,006h,0fdh,04eh,049h,052h,003h,000h,074h,071h,096h,045h,003h	; 8066  OmO...NIR..tq.E.
	defb 000h,05fh,04ch,003h,058h,000h,06bh,046h,04eh,042h,054h,053h,049h,06ah,06ch,000h	; 8076  ._L.X.kFNBTSIjl.
	defb 04ah,045h,003h,04bh,055h,000h,0dch,047h,049h,053h,055h,054h,0a6h,04fh,006h,04eh	; 8086  JE.KU..GISUT.O.N
	defb 04bh,052h,000h,049h,049h,052h,003h,000h,05fh,04ch,003h,045h,003h,000h,06bh,047h	; 8096  KR.IIR.._L.E..kG
	defb 0a6h,052h,049h,053h,046h,041h,052h,000h,046h,052h,05fh,04fh,06dh,04fh,003h,048h	; 80a6  .RISFAR.FR_OmO.H
	defb 053h,003h,00ah,00ah,03ch,0fdh,0fch,03bh,049h,058h,053h,042h,067h,000h,05fh,04ch	; 80b6  S...<...IXSBg._L
	defb 003h,058h,000h,011h,052h,046h,062h,0feh,054h,045h,0a6h,04fh,06bh,048h,045h,03ch	; 80c6  .X..RFb.TE.OkHE<
	defb 0ffh	; 80d6

; ----------------------------------------------------------------------
; DATOS mensaje_25_80D7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x80d7..0x80e8  (17 bytes)
DATA_mensaje_25_80D7:
	defb 0fbh,03bh,062h,042h,000h,04fh,003h,041h,04bh,003h,0a5h,042h,05bh,003h,065h,03ch	; 80d7  ..bB.O.AK..B[.e<
	defb 0ffh	; 80e7

; ----------------------------------------------------------------------
; DATOS mensaje_25_80E8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (53
;   bytes)
;   0x80e8..0x811d  (53 bytes)
DATA_mensaje_25_80E8:
	defb 0fbh,03bh,045h,06bh,041h,04eh,042h,055h,006h,052h,003h,062h,000h,049h,058h,0f7h	; 80e8  ..EkANBU.R.b.IX.
	defb 0fch,045h,003h,0c9h,053h,045h,000h,04bh,052h,047h,069h,068h,06bh,006h,04fh,065h	; 80f8  .E..SE.KRGihk.Oe
	defb 067h,054h,041h,048h,053h,003h,03ch,0fch,03bh,045h,0a6h,052h,054h,049h,053h,000h	; 8108  gTAHS.<..E.RTIS.
	defb 0c8h,042h,054h,03ch,0ffh	; 8118

; ----------------------------------------------------------------------
; DATOS mensaje_25_811D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (135
;   bytes)
;   0x811d..0x81a4  (135 bytes)
DATA_mensaje_25_811D:
	defb 0fch,03bh,074h,020h,07ch,083h,096h,097h,070h,058h,000h,05dh,055h,0a4h,042h,068h	; 811d  ..t |...pX.]U.Bh
	defb 041h,006h,0feh,0b6h,040h,04bh,059h,000h,05fh,04bh,003h,045h,047h,000h,042h,04bh	; 812d  A...@KY._K.EG.BK
	defb 06ah,040h,04bh,059h,0feh,054h,045h,003h,041h,006h,000h,042h,04bh,06ah,040h,04bh	; 813d  j@KY.TE.A..BKj@K
	defb 053h,000h,044h,052h,003h,000h,04fh,051h,006h,0fdh,091h,07ch,059h,000h,05bh,047h	; 814d  S.DR..OQ...|Y.[G
	defb 06ah,04bh,003h,0a5h,042h,058h,000h,05bh,047h,05bh,003h,055h,0feh,0d6h,06ch,0d2h	; 815d  jK..BX.[G[.U..l.
	defb 069h,052h,000h,04eh,04fh,003h,052h,068h,03ch,0fdh,0fbh,03bh,044h,049h,068h,06bh	; 816d  iR.NO.Rh<...DIhk
	defb 065h,006h,000h,04eh,069h,059h,000h,075h,09dh,075h,003h,098h,020h,006h,0b3h,059h	; 817d  e..NiY.u.u.. ..Y
	defb 000h,045h,06dh,045h,003h,043h,068h,001h,03ch,0feh,0f8h,03bh,054h,01dh,06dh,063h	; 818d  .EmE.Ch.<...T.mc
	defb 000h,04eh,069h,059h,001h,03ch,0ffh	; 819d

; ----------------------------------------------------------------------
; DATOS mensaje_25_81A4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (60
;   bytes)
;   0x81a4..0x81e0  (60 bytes)
DATA_mensaje_25_81A4:
	defb 0fch,03bh,053h,003h,042h,04bh,04fh,062h,06dh,04fh,003h,06ah,042h,002h,03ch,0feh	; 81a4  ..S.BKObmO.jB.<.
	defb 0f8h,03bh,0d9h,0dah,058h,000h,05fh,04ch,003h,052h,003h,059h,000h,07fh,003h,091h	; 81b4  ....X._L.R.Y....
	defb 054h,06dh,04fh,003h,006h,0feh,00ah,00ah,089h,07bh,089h,003h,08fh,058h,073h,07fh	; 81c4  TmO......{...Xs.
	defb 003h,04ah,043h,000h,040h,069h,059h,003h,054h,040h,03ch,0ffh	; 81d4  .JC.@iY.T@<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_81E0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (101
;   bytes)
;   0x81e0..0x8245  (101 bytes)
DATA_mensaje_25_81E0:
	defb 0fch,03bh,04eh,058h,000h,089h,07bh,089h,003h,08fh,058h,073h,07fh,003h,0a6h,052h	; 81e0  ..NX..{...Xs...R
	defb 002h,03ch,0feh,0f8h,03bh,05fh,04ch,003h,06ch,000h,05dh,067h,044h,049h,04ch,000h	; 81f0  .<..._L.l.]gDIL.
	defb 073h,07fh,003h,04fh,003h,065h,03ch,0fdh,0fbh,03bh,04eh,042h,065h,001h,000h,089h	; 8200  s..O.e<...NBe...
	defb 07bh,089h,003h,08fh,058h,000h,076h,058h,000h,073h,07fh,003h,059h,04bh,003h,04bh	; 8210  {...X.vX.s..YK.K
	defb 0a3h,047h,058h,000h,059h,04fh,066h,046h,045h,003h,000h,040h,0a6h,052h,0feh,04ch	; 8220  .GX.YOfFE..@.R.L
	defb 041h,05fh,0a3h,047h,06ch,000h,05dh,067h,040h,052h,068h,049h,053h,045h,003h,052h	; 8230  A_.Gl.]g@RhISE.R
	defb 003h,046h,068h,03ch,0ffh	; 8240

; ----------------------------------------------------------------------
; DATOS mensaje_25_8245: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (47
;   bytes)
;   0x8245..0x8274  (47 bytes)
DATA_mensaje_25_8245:
	defb 0f8h,03bh,04eh,058h,073h,07fh,003h,06ch,06eh,0b0h,041h,06fh,054h,045h,003h,066h	; 8245  ..NXs..ln.AoTE.f
	defb 0feh,049h,049h,058h,000h,04bh,003h,061h,06dh,058h,000h,042h,043h,06ch,000h,0feh	; 8255  .IIX.K.amX.BCl..
	defb 040h,068h,046h,05eh,06bh,0a6h,052h,05dh,04bh,041h,06dh,04fh,003h,03ch,0ffh	; 8265  @hF^k.R]KAmO.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8274: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x8274..0x8284  (16 bytes)
DATA_mensaje_25_8274:
	defb 0f8h,03bh,04fh,003h,061h,04fh,003h,006h,000h,0cdh,048h,054h,041h,063h,03ch,0ffh	; 8274  ..O.aO....HTAc<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8284: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x8284..0x8291  (13 bytes)
DATA_mensaje_25_8284:
	defb 0fbh,03bh,049h,049h,04bh,003h,0a3h,000h,054h,041h,06bh,03ch,0ffh	; 8284  ..IIK...TAk<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8291: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x8291..0x82a0  (15 bytes)
DATA_mensaje_25_8291:
	defb 0fbh,03bh,040h,0a6h,04fh,06bh,001h,000h,049h,049h,065h,001h,03ch,0fah,00ah	; 8291  ..@.Ok..IIe.<..

; ----------------------------------------------------------------------
; DATOS mensaje_25_82A0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (118
;   bytes)
;   0x82a0..0x8316  (118 bytes)
DATA_mensaje_25_82A0:
	defb 0fbh,03bh,05dh,003h,042h,063h,001h,000h,04ch,041h,05fh,0a3h,047h,045h,003h,0feh	; 82a0  ..].Bc..LA_.GE..
	defb 0b8h,051h,045h,0a6h,04fh,06bh,065h,001h,03ch,0fdh,0f8h,03bh,040h,067h,045h,003h	; 82b0  .QE.Oke.<...@gE.
	defb 053h,042h,001h,000h,0c9h,04fh,003h,045h,000h,048h,003h,06dh,0b7h,045h,003h,0feh	; 82c0  SB...O.E.H.m.E..
	defb 06bh,041h,052h,046h,04fh,006h,000h,044h,069h,041h,055h,000h,042h,050h,055h,0feh	; 82d0  kARFO..DiAU.BPU.
	defb 04bh,0a5h,042h,04fh,041h,04ch,068h,065h,006h,000h,051h,041h,053h,041h,052h,003h	; 82e0  K.BOALhe..QASAR.
	defb 001h,03ch,0fdh,0fch,03bh,0c9h,04fh,003h,000h,040h,068h,048h,068h,058h,045h,03ch	; 82f0  .<....O..@hHhXE<
	defb 0feh,0fbh,03bh,0d6h,053h,003h,062h,0a6h,052h,000h,048h,003h,06dh,046h,06dh,04fh	; 8300  ....S.b.R.H.mFmO
	defb 003h,045h,066h,03ch,0fah,005h	; 8310

; ----------------------------------------------------------------------
; DATOS mensaje_25_8316: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (26
;   bytes)
;   0x8316..0x8330  (26 bytes)
DATA_mensaje_25_8316:
	defb 0fbh,03bh,012h,0bah,052h,003h,000h,05dh,067h,040h,052h,04fh,000h,04ch,041h,05fh	; 8316  ....R..]g@RO.LA_
	defb 0a3h,047h,045h,003h,0feh,040h,068h,06bh,03ch,0ffh	; 8326  .GE..@hk<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_8330: 3 palabras: los mensajes de la sala 265 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (6
;   bytes)
;   0x8330..0x8336  (6 bytes)
DATA_mensajes_25_8330:
	defb 036h,083h	; 8330
	defb 044h,083h	; 8332
	defb 0cch,083h	; 8334

; ----------------------------------------------------------------------
; DATOS mensaje_25_8336: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x8336..0x8344  (14 bytes)
DATA_mensaje_25_8336:
	defb 0f8h,03bh,04fh,04ch,048h,052h,020h,020h,020h,020h,0a6h,001h,03ch,0ffh	; 8336  ..OLHR    ..<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8344: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (136
;   bytes)
;   0x8344..0x83cc  (136 bytes)
DATA_mensaje_25_8344:
	defb 0f8h,03bh,040h,054h,04fh,059h,000h,0f7h,0fch,04ah,06dh,057h,006h,0feh,040h,067h	; 8344  ..@TOY...JmW..@g
	defb 045h,003h,053h,042h,006h,000h,04fh,04ch,045h,0a6h,04fh,06bh,03ch,0fdh,0fch,03bh	; 8354  E.SB..OLE.Ok<...
	defb 069h,041h,055h,059h,000h,044h,065h,059h,003h,054h,041h,04ah,006h,0feh,04eh,058h	; 8364  iAUY.DeY.TAJ..NX
	defb 045h,06bh,067h,053h,041h,0a6h,050h,0a3h,000h,0c9h,04fh,003h,048h,053h,003h,0feh	; 8374  EkgSA.P...O.HS..
	defb 044h,050h,0a3h,052h,003h,062h,000h,0dch,046h,05eh,04dh,06dh,045h,002h,03ch,0fdh	; 8384  DP.R.b..F^MmE.<.
	defb 0f8h,03bh,040h,067h,045h,003h,053h,042h,006h,000h,05eh,04fh,000h,049h,06dh,053h	; 8394  ..@gE.SB..^O.ImS
	defb 003h,057h,006h,0feh,0c6h,000h,059h,063h,047h,000h,08eh,08eh,058h,053h,049h,06ah	; 83a4  .W....YcG...XSIj
	defb 05ch,000h,062h,053h,003h,0a6h,052h,0feh,065h,06ah,049h,059h,003h,04dh,052h,040h	; 83b4  \.bS..R.ejIY.MR@
	defb 048h,003h,04fh,041h,058h,03ch,0fah,005h	; 83c4  H.OAX<..

; ----------------------------------------------------------------------
; DATOS mensaje_25_83CC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (82
;   bytes)
;   0x83cc..0x841e  (82 bytes)
DATA_mensaje_25_83CC:
	defb 0fch,03bh,00ah,00ah,074h,099h,059h,000h,0c9h,058h,04fh,061h,055h,000h,0cfh,0d0h	; 83cc  ....t.Y..XOaU...
	defb 06ch,0feh,04fh,04ch,048h,04fh,06dh,04fh,003h,00ah,00ah,006h,040h,06dh,054h,000h	; 83dc  l.OLHOmO....@mT.
	defb 046h,069h,041h,054h,0d6h,006h,062h,0a6h,04fh,041h,054h,041h,03ch,0fdh,0fbh,03bh	; 83ec  FiAT..b.OATA<...
	defb 0f7h,0fch,0a6h,052h,000h,07ah,071h,082h,020h,054h,000h,04dh,041h,045h,047h,0feh	; 83fc  ...R.zq. T.MAEG.
	defb 04bh,052h,068h,058h,057h,001h,000h,051h,046h,040h,041h,046h,069h,054h,041h,06bh	; 840c  KRhXW..QF@AFiTAk
	defb 03ch,0ffh	; 841c

; ----------------------------------------------------------------------
; DATOS mensajes_25_841E: 8 palabras: los mensajes de la sala 275 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (16 bytes)
;   0x841e..0x842e  (16 bytes)
DATA_mensajes_25_841E:
	defb 02eh,084h	; 841e
	defb 052h,084h	; 8420
	defb 09ah,084h	; 8422
	defb 0bbh,084h	; 8424
	defb 0f0h,084h	; 8426
	defb 000h,085h	; 8428
	defb 020h,085h	; 842a
	defb 02eh,085h	; 842c

; ----------------------------------------------------------------------
; DATOS mensaje_25_842E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0x842e..0x8452  (36 bytes)
DATA_mensaje_25_842E:
	defb 0f8h,03bh,0c6h,058h,000h,0e2h,058h,000h,08eh,097h,070h,06ch,0feh,0b8h,045h,048h	; 842e  ...X..X...pl..EH
	defb 05eh,04dh,06dh,052h,003h,04bh,04fh,045h,002h,03ch,0feh,0fch,03bh,04bh,066h,054h	; 843e  ^MmR.KOE.<...KfT
	defb 041h,065h,03ch,0ffh	; 844e

; ----------------------------------------------------------------------
; DATOS mensaje_25_8452: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (72
;   bytes)
;   0x8452..0x849a  (72 bytes)
DATA_mensaje_25_8452:
	defb 0fch,03bh,04eh,058h,0d6h,045h,003h,000h,053h,003h,042h,045h,04bh,04fh,058h,002h	; 8452  ..NX.E..S.BEKOX.
	defb 03ch,0feh,0f8h,03bh,012h,01dh,013h,0f4h,0b6h,045h,066h,000h,041h,043h,055h,0feh	; 8462  <........Ef.ACU.
	defb 062h,053h,003h,0a6h,052h,041h,054h,041h,06dh,052h,003h,04ch,006h,05eh,04ah,045h	; 8472  bS..RATAmR.L.^JE
	defb 0c1h,0c5h,058h,0feh,04fh,003h,069h,045h,055h,000h,04ah,066h,06bh,069h,04fh,058h	; 8482  ..X.O.iEU.JfkiOX
	defb 052h,003h,059h,00ah,00ah,002h,03ch,0ffh	; 8492  R.Y...<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_849A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0x849a..0x84bb  (33 bytes)
DATA_mensaje_25_849A:
	defb 0f8h,03bh,040h,040h,0a6h,001h,000h,053h,003h,042h,04bh,065h,042h,001h,0feh,075h	; 849a  ..@@...S.BKeB..u
	defb 08fh,04ah,05eh,006h,08dh,083h,078h,04ah,05eh,006h,0f7h,0fch,04ah,05eh,001h,03ch	; 84aa  .J^...xJ^...J^.<
	defb 0ffh	; 84ba

; ----------------------------------------------------------------------
; DATOS mensaje_25_84BB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (53
;   bytes)
;   0x84bb..0x84f0  (53 bytes)
DATA_mensaje_25_84BB:
	defb 0f8h,03bh,08eh,097h,070h,057h,043h,04ah,06dh,059h,000h,044h,052h,06dh,059h,003h	; 84bb  ....pWCJmY.DRmY.
	defb 04fh,003h,045h,066h,0feh,0bah,058h,000h,0dch,045h,054h,041h,065h,042h,054h,000h	; 84cb  O.Ef..X..ETAeBT.
	defb 053h,049h,06ah,059h,003h,045h,067h,0feh,05dh,003h,042h,048h,06dh,000h,04ch,068h	; 84db  SIjY.Eg.].BHm.Lh
	defb 06dh,04fh,003h,03ch,0ffh	; 84eb

; ----------------------------------------------------------------------
; DATOS mensaje_25_84F0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x84f0..0x8500  (16 bytes)
DATA_mensaje_25_84F0:
	defb 0f8h,03bh,053h,003h,049h,05ch,000h,0dch,0a6h,04fh,058h,045h,054h,040h,03ch,0ffh	; 84f0  ..S.I\...OXET@<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8500: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x8500..0x8520  (32 bytes)
DATA_mensaje_25_8500:
	defb 0f8h,03bh,0e2h,06ch,000h,04fh,04ch,048h,052h,047h,04fh,003h,04ch,0a6h,052h,0feh	; 8500  ...l.OLHRGO.L.R.
	defb 040h,067h,045h,003h,053h,042h,049h,003h,04ah,003h,041h,05eh,04bh,04fh,03ch,0ffh	; 8510  @gE.SBI.J.A^KO<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8520: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x8520..0x852e  (14 bytes)
DATA_mensaje_25_8520:
	defb 0f8h,03bh,040h,067h,045h,003h,053h,042h,006h,0f7h,0fch,001h,03ch,0ffh	; 8520  ..@gE.SB....<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_852E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x852e..0x854e  (32 bytes)
DATA_mensaje_25_852E:
	defb 0f8h,03bh,040h,058h,0eah,059h,000h,040h,067h,045h,053h,042h,006h,0feh,049h,06bh	; 852e  ..@X.Y.@gESB..Ik
	defb 045h,0a6h,04fh,048h,053h,003h,000h,04fh,058h,04bh,045h,0a6h,04fh,06bh,03ch,0ffh	; 853e  E.OHS..OXKE.Ok<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_854E: 1 palabras: los mensajes de la sala 279 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x854e..0x8550  (2 bytes)
DATA_mensajes_25_854E:
	defb 050h,085h	; 854e

; ----------------------------------------------------------------------
; DATOS mensaje_25_8550: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x8550..0x855d  (13 bytes)
DATA_mensaje_25_8550:
	defb 0fbh,03bh,06eh,099h,097h,0afh,077h,050h,05dh,042h,06fh,03ch,0ffh	; 8550  ..n...wP]Bo<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_855D: 2 palabras: los mensajes de la sala 280 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x855d..0x8561  (4 bytes)
DATA_mensajes_25_855D:
	defb 061h,085h	; 855d
	defb 073h,085h	; 855f

; ----------------------------------------------------------------------
; DATOS mensaje_25_8561: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x8561..0x8573  (18 bytes)
DATA_mensaje_25_8561:
	defb 0fbh,03bh,04bh,003h,061h,06dh,045h,003h,000h,0cdh,041h,052h,041h,068h,06bh,001h	; 8561  ..K.amE...ARAhk.
	defb 03ch,0ffh	; 8571

; ----------------------------------------------------------------------
; DATOS mensaje_25_8573: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (44
;   bytes)
;   0x8573..0x859f  (44 bytes)
DATA_mensaje_25_8573:
	defb 0fbh,03bh,050h,0a4h,042h,044h,042h,055h,000h,05ah,046h,065h,04dh,066h,069h,052h	; 8573  ..P.BDBU.ZFeMfiR
	defb 068h,0feh,06dh,04bh,003h,0a3h,054h,041h,001h,002h,03ch,0feh,0fch,03bh,074h,099h	; 8583  h.mK..TA..<...t.
	defb 062h,000h,04eh,06dh,054h,0b7h,045h,003h,04ch,068h,03ch,0ffh	; 8593  b.NmT.E.Lh<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_859F: 10 palabras: los mensajes de la sala 300 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (20 bytes)
;   0x859f..0x85b3  (20 bytes)
DATA_mensajes_25_859F:
	defb 0b3h,085h	; 859f
	defb 0f0h,085h	; 85a1
	defb 039h,087h	; 85a3
	defb 070h,087h	; 85a5
	defb 090h,087h	; 85a7
	defb 0a4h,087h	; 85a9
	defb 0d5h,087h	; 85ab
	defb 056h,088h	; 85ad
	defb 01eh,086h	; 85af
	defb 0e6h,087h	; 85b1

; ----------------------------------------------------------------------
; DATOS mensaje_25_85B3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (61
;   bytes)
;   0x85b3..0x85f0  (61 bytes)
DATA_mensaje_25_85B3:
	defb 0f8h,03bh,0c6h,059h,000h,0f5h,062h,06dh,045h,003h,047h,04bh,0a3h,058h,0feh,075h	; 85b3  ...Y..bmE.GK.X.u
	defb 097h,099h,074h,000h,052h,003h,04ch,006h,000h,0f7h,0fch,053h,003h,058h,0feh,04eh	; 85c3  ..t.R.L....S.X.N
	defb 049h,055h,040h,068h,000h,0f5h,0b2h,05dh,003h,042h,043h,06dh,046h,0a5h,042h,06ch	; 85d3  IU@h...].BCmF.Bl
	defb 0feh,058h,04eh,003h,041h,052h,0b8h,052h,0d3h,04ah,041h,03ch,0ffh	; 85e3  .XN.AR.R.JA<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_85F0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0x85f0..0x861e  (46 bytes)
DATA_mensaje_25_85F0:
	defb 0f8h,03bh,049h,069h,059h,000h,04eh,066h,058h,000h,05dh,04bh,058h,000h,065h,042h	; 85f0  ..IiY.NfX.]KX.eB
	defb 04ch,045h,003h,0feh,053h,047h,04bh,0a4h,054h,000h,05dh,042h,05dh,042h,052h,003h	; 8600  LE..SGK.T.]B]BR.
	defb 000h,0b8h,043h,068h,0feh,076h,075h,071h,052h,003h,04ch,006h,0fah,015h	; 8610  ..Ch.vuqR.L...

; ----------------------------------------------------------------------
; DATOS mensaje_25_861E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (283
;   bytes)
;   0x861e..0x8739  (283 bytes)
DATA_mensaje_25_861E:
	defb 0deh,0f0h,055h,040h,068h,058h,045h,003h,000h,080h,076h,0adh,072h,058h,07fh,003h	; 861e  ..U@hXE...v.rX..
	defb 08fh,020h,052h,003h,04ch,006h,05eh,06bh,067h,055h,000h,0b8h,043h,068h,058h,045h	; 862e  . R.L.^kgU..ChXE
	defb 003h,0feh,080h,076h,0adh,072h,058h,050h,045h,047h,058h,000h,05dh,04bh,05dh,003h	; 863e  ...v.rXPEGX.]K].
	defb 04bh,052h,003h,04ch,006h,0fdh,04bh,003h,051h,059h,000h,0c6h,058h,000h,048h,041h	; 864e  KR.L..K.QY..X.HA
	defb 04ah,06dh,055h,000h,065h,068h,053h,0feh,0ddh,062h,054h,047h,000h,080h,076h,0adh	; 865e  JmU.ehS..bTG..v.
	defb 072h,06ch,0deh,0f0h,055h,000h,05eh,06bh,067h,058h,0feh,05dh,04bh,045h,003h,000h	; 866e  rl..U.^kgX.]KE..
	defb 04bh,003h,0a4h,042h,04bh,003h,06ch,000h,045h,04fh,050h,051h,003h,047h,068h,0feh	; 867e  K..BK.l.EOPQ.Gh.
	defb 058h,052h,003h,04ch,006h,051h,05eh,067h,000h,077h,003h,096h,09dh,083h,003h,077h	; 868e  XR.L.Q^g.w.....w
	defb 09ah,07ch,052h,003h,04ch,03ch,0fdh,0fch,03bh,077h,003h,096h,09dh,083h,003h,077h	; 869e  .|R.L<...w.....w
	defb 09ah,07ch,002h,03ch,0feh,0f8h,03bh,04eh,042h,006h,000h,04eh,066h,055h,000h,042h	; 86ae  .|.<...NB..NfU.B
	defb 045h,05bh,003h,000h,046h,0a5h,0d4h,054h,0feh,04bh,003h,0a4h,042h,04bh,003h,045h	; 86be  E[..F..T.K..BK.E
	defb 000h,054h,058h,052h,003h,04ch,03ch,0feh,0fch,03bh,04eh,069h,045h,003h,000h,053h	; 86ce  .TXR.L<...NiE..S
	defb 003h,042h,045h,04bh,04fh,058h,002h,03ch,0fdh,0f8h,03bh,04eh,058h,000h,041h,05fh	; 86de  .BEKOX.<...NX.A_
	defb 04ch,068h,053h,049h,06ah,059h,000h,059h,045h,041h,005h,0feh,061h,051h,05dh,003h	; 86ee  LhSIjY.YEA..aQ].
	defb 042h,000h,04eh,04bh,052h,000h,044h,06bh,067h,052h,003h,04ch,006h,0fdh,044h,04eh	; 86fe  B.NKR.DkgR.L..DN
	defb 066h,047h,000h,04eh,058h,0eah,000h,0bah,0ddh,059h,000h,04fh,003h,069h,011h,0bah	; 870e  fG.NX....Y.O.i..
	defb 0feh,0e7h,046h,058h,05ah,003h,068h,049h,053h,059h,000h,052h,003h,046h,054h,041h	; 871e  ..FXZ.hISY.R.FTA
	defb 052h,003h,04bh,0a5h,042h,03ch,0fch,03bh,001h,03ch,0ffh	; 872e  R.K.B<...<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8739: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (55
;   bytes)
;   0x8739..0x8770  (55 bytes)
DATA_mensaje_25_8739:
	defb 0f8h,03bh,044h,04eh,06ah,04bh,041h,049h,053h,052h,003h,04ch,045h,003h,000h,049h	; 8739  ..DNjKAISR.LE..I
	defb 069h,06ch,0feh,04ah,048h,068h,049h,053h,059h,000h,052h,003h,046h,05eh,04dh,06dh	; 8749  il.JHhISY.R.F^Mm
	defb 006h,000h,05eh,04fh,0feh,0eah,0dah,000h,05dh,04bh,058h,065h,042h,04ch,06ch,0b8h	; 8759  ..^O....]KXeBLl.
	defb 055h,046h,054h,04ah,041h,03ch,0ffh	; 8769

; ----------------------------------------------------------------------
; DATOS mensaje_25_8770: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x8770..0x8790  (32 bytes)
DATA_mensaje_25_8770:
	defb 0fch,03bh,044h,020h,041h,000h,044h,020h,041h,03ch,0feh,0fbh,03bh,049h,069h,059h	; 8770  ..D A.D A<...IiY
	defb 000h,091h,075h,003h,08dh,09dh,000h,04bh,003h,0a3h,054h,041h,06bh,065h,03ch,0ffh	; 8780  ..u....K..TAke<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8790: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (20
;   bytes)
;   0x8790..0x87a4  (20 bytes)
DATA_mensaje_25_8790:
	defb 0fch,03bh,05dh,045h,055h,000h,0c9h,045h,000h,0b8h,043h,054h,041h,058h,045h,054h	; 8790  ..]EU..E..CTAXET
	defb 09eh,002h,0fah,016h	; 87a0

; ----------------------------------------------------------------------
; DATOS mensaje_25_87A4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0x87a4..0x87d5  (49 bytes)
DATA_mensaje_25_87A4:
	defb 00ah,00ah,074h,074h,0afh,000h,040h,069h,059h,001h,000h,04ch,049h,003h,01dh,041h	; 87a4  ..tt..@iY..LI..A
	defb 001h,0feh,041h,045h,06dh,000h,089h,084h,080h,003h,045h,003h,001h,03ch,0feh,0fbh	; 87b4  ..AEm.....E..<..
	defb 03bh,011h,0bah,052h,003h,000h,0c9h,000h,0b8h,052h,068h,058h,065h,001h,002h,03ch	; 87c4  ...R.....RhXe..<
	defb 0ffh	; 87d4

; ----------------------------------------------------------------------
; DATOS mensaje_25_87D5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x87d5..0x87e6  (17 bytes)
DATA_mensaje_25_87D5:
	defb 0fch,03bh,077h,003h,096h,09dh,083h,003h,077h,09ah,07ch,04fh,003h,001h,03ch,0fah	; 87d5  ..w.....w.|O..<.
	defb 017h	; 87e5

; ----------------------------------------------------------------------
; DATOS mensaje_25_87E6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (112
;   bytes)
;   0x87e6..0x8856  (112 bytes)
DATA_mensaje_25_87E6:
	defb 0f8h,03bh,051h,041h,055h,000h,047h,068h,05ch,003h,046h,0eah,045h,003h,000h,046h	; 87e6  ..QAU.Gh\.F.E..F
	defb 05eh,04bh,04fh,006h,0feh,0b3h,055h,062h,000h,044h,04eh,06ah,04bh,041h,049h,053h	; 87f6  ^KO...Ub.DNjKAIS
	defb 045h,003h,0feh,044h,049h,068h,052h,003h,04bh,0a5h,042h,001h,001h,03ch,0fdh,0fbh	; 8806  E..DIhR.K.B..<..
	defb 03bh,0f7h,0fch,001h,001h,03ch,0feh,0fch,03bh,042h,060h,006h,000h,041h,065h,041h	; 8816  .....<...B`..AeA
	defb 065h,000h,079h,003h,077h,003h,053h,058h,0feh,04fh,041h,048h,051h,04fh,003h,054h	; 8826  e.y.w.SX.OAHQO.T
	defb 03ch,0fdh,0fbh,03bh,080h,0aah,098h,07bh,020h,045h,003h,000h,04ah,046h,055h,0dch	; 8836  <......{ E..JFU.
	defb 0a6h,052h,068h,045h,066h,0feh,041h,04eh,046h,003h,05eh,04bh,0a5h,042h,03ch,0ffh	; 8846  .RhEf.ANF.^K.B<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8856: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0x8856..0x8862  (12 bytes)
DATA_mensaje_25_8856:
	defb 0fbh,03bh,0b8h,052h,058h,053h,044h,067h,065h,03ch,0fah,018h	; 8856  ...RXSDge<..

; ----------------------------------------------------------------------
; DATOS mensajes_25_8862: 2 palabras: los mensajes de la sala 301 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x8862..0x8866  (4 bytes)
DATA_mensajes_25_8862:
	defb 066h,088h	; 8862
	defb 095h,088h	; 8864

; ----------------------------------------------------------------------
; DATOS mensaje_25_8866: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (47
;   bytes)
;   0x8866..0x8895  (47 bytes)
DATA_mensaje_25_8866:
	defb 0f8h,03bh,049h,058h,044h,047h,055h,059h,000h,052h,06dh,062h,06dh,045h,003h,047h	; 8866  ..IXDGUY.RmbmE.G
	defb 04bh,0a3h,058h,0feh,075h,097h,099h,074h,045h,003h,041h,052h,000h,04eh,066h,058h	; 8876  K.X.u..tE.AR.NfX
	defb 000h,05dh,04bh,06ch,0feh,045h,06dh,04ah,051h,04bh,052h,068h,065h,03ch,0ffh	; 8886  .]Kl.EmJQKRhe<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8895: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (31
;   bytes)
;   0x8895..0x88b4  (31 bytes)
DATA_mensaje_25_8895:
	defb 0f8h,03bh,075h,097h,099h,074h,059h,000h,04dh,06dh,04dh,041h,04bh,003h,0a4h,051h	; 8895  ..u..tY.MmMAK..Q
	defb 062h,0feh,063h,0a6h,052h,041h,068h,000h,043h,066h,041h,0bah,065h,03ch,0ffh	; 88a5  b.c.RAh.CfA.e<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_88B4: 1 palabras: los mensajes de la sala 304 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x88b4..0x88b6  (2 bytes)
DATA_mensajes_25_88B4:
	defb 0b6h,088h	; 88b4

; ----------------------------------------------------------------------
; DATOS mensaje_25_88B6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (76
;   bytes)
;   0x88b6..0x8902  (76 bytes)
DATA_mensaje_25_88B6:
	defb 0f8h,03bh,079h,003h,077h,003h,059h,000h,049h,058h,0c2h,0c3h,06ch,000h,05dh,06ah	; 88b6  ..y.w.Y.IX..l.]j
	defb 05dh,003h,04ch,04fh,003h,06ah,042h,006h,04bh,045h,04bh,000h,011h,051h,04fh,003h	; 88c6  ].LO.jB.KEK..QO.
	defb 048h,000h,0bah,0dah,058h,000h,04fh,04ch,045h,068h,0feh,05dh,042h,05dh,042h,045h	; 88d6  H...X.OLEh.]B]BE
	defb 003h,040h,068h,006h,0feh,04eh,058h,075h,076h,003h,059h,000h,011h,0bah,058h,0d0h	; 88e6  .@h..NXuv.Y...X.
	defb 045h,003h,000h,055h,046h,003h,0a6h,052h,041h,068h,03ch,0ffh	; 88f6  E..UF..RAh<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_8902: 4 palabras: los mensajes de la sala 322 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (8
;   bytes)
;   0x8902..0x890a  (8 bytes)
DATA_mensajes_25_8902:
	defb 00ah,089h	; 8902
	defb 038h,089h	; 8904
	defb 083h,089h	; 8906
	defb 09eh,089h	; 8908

; ----------------------------------------------------------------------
; DATOS mensaje_25_890A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0x890a..0x8938  (46 bytes)
DATA_mensaje_25_890A:
	defb 0f8h,03bh,077h,003h,097h,020h,077h,0c5h,0c0h,059h,000h,0b3h,063h,000h,079h,003h	; 890a  ..w.. w..Y..c.y.
	defb 077h,003h,058h,0feh,052h,055h,000h,065h,067h,000h,0bch,058h,0c2h,0c3h,055h,0feh	; 891a  w.X.RU.eg..X..U.
	defb 045h,043h,066h,069h,065h,042h,053h,04bh,052h,041h,068h,001h,03ch,0ffh	; 892a  ECfieBSKRAh.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8938: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (75
;   bytes)
;   0x8938..0x8983  (75 bytes)
DATA_mensaje_25_8938:
	defb 0f8h,03bh,0f7h,0fch,053h,003h,058h,000h,049h,049h,06ch,000h,0d9h,04bh,0feh,04ch	; 8938  ....S.X.IIl..K.L
	defb 04ch,060h,053h,000h,074h,020h,08eh,09dh,058h,000h,05fh,04ch,003h,042h,05fh,045h	; 8948  L`S.t ..X._L.B_E
	defb 003h,0feh,040h,067h,05eh,04ch,006h,000h,04eh,049h,058h,000h,05fh,04ch,003h,06ch	; 8958  ..@g^L..NIX._L.l
	defb 000h,045h,048h,068h,053h,0feh,053h,003h,06dh,054h,000h,062h,058h,052h,003h,062h	; 8968  .EHhS.S.mT.bXR.b
	defb 000h,0b8h,043h,068h,052h,003h,04bh,0a5h,042h,03ch,0ffh	; 8978  ..ChR.K.B<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8983: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0x8983..0x899e  (27 bytes)
DATA_mensaje_25_8983:
	defb 0f8h,03bh,0cfh,058h,000h,0c8h,042h,049h,053h,059h,000h,040h,052h,055h,0feh,04bh	; 8983  ...X..BISY.@RU.K
	defb 054h,041h,0efh,045h,003h,000h,041h,041h,065h,03ch,0ffh	; 8993  TA.E..AAe<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_899E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x899e..0x89ad  (15 bytes)
DATA_mensaje_25_899E:
	defb 0f8h,03bh,04bh,06dh,04bh,003h,050h,0a3h,000h,04fh,003h,061h,065h,03ch,0ffh	; 899e  ..KmK.P..O.ae<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_89AD: 2 palabras: los mensajes de la sala 328 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x89ad..0x89b1  (4 bytes)
DATA_mensajes_25_89AD:
	defb 0b1h,089h	; 89ad
	defb 0e4h,089h	; 89af

; ----------------------------------------------------------------------
; DATOS mensaje_25_89B1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (51
;   bytes)
;   0x89b1..0x89e4  (51 bytes)
DATA_mensaje_25_89B1:
	defb 0f8h,03bh,08dh,003h,077h,059h,000h,075h,020h,08ch,004h,09dh,07fh,020h,04fh,003h	; 89b1  ....wY.u .... O.
	defb 04dh,003h,006h,000h,049h,049h,058h,0feh,046h,06ch,000h,046h,0a6h,052h,000h,060h	; 89c1  M...IIX.Fl.F.R.`
	defb 049h,042h,046h,003h,04bh,055h,000h,059h,04bh,06ch,0feh,045h,048h,068h,06dh,04fh	; 89d1  IBF.KU.YKl.EHhmO
	defb 003h,03ch,0ffh	; 89e1

; ----------------------------------------------------------------------
; DATOS mensaje_25_89E4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x89e4..0x89f6  (18 bytes)
DATA_mensaje_25_89E4:
	defb 0f8h,03bh,059h,04bh,045h,003h,000h,045h,06dh,04dh,041h,04bh,04fh,04eh,003h,001h	; 89e4  ..YKE..EmMAKON..
	defb 03ch,0ffh	; 89f4

; ----------------------------------------------------------------------
; DATOS mensajes_25_89F6: 6 palabras: los mensajes de la sala 333 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (12 bytes)
;   0x89f6..0x8a02  (12 bytes)
DATA_mensajes_25_89F6:
	defb 002h,08ah	; 89f6
	defb 05fh,08ah	; 89f8
	defb 09fh,08ah	; 89fa
	defb 0bch,08ah	; 89fc
	defb 0e1h,08ah	; 89fe
	defb 0f3h,08ah	; 8a00

; ----------------------------------------------------------------------
; DATOS mensaje_25_8A02: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (93
;   bytes)
;   0x8a02..0x8a5f  (93 bytes)
DATA_mensaje_25_8A02:
	defb 0f8h,03bh,05fh,046h,003h,058h,000h,05dh,05dh,06ch,000h,05bh,003h,04fh,069h,068h	; 8a02  .._F.X.]]l.[.Oih
	defb 053h,0feh,05ah,04fh,003h,067h,058h,000h,05dh,05dh,062h,000h,04ah,04bh,04fh,003h	; 8a12  S.ZO.gX.]]b.JKO.
	defb 04ch,006h,0feh,04eh,058h,065h,042h,054h,000h,0eah,04fh,003h,041h,059h,000h,062h	; 8a22  L..NXeBT..O.AY.b
	defb 042h,0feh,044h,06bh,0a6h,04fh,001h,0fdh,0b3h,000h,049h,058h,000h,04bh,0a4h,042h	; 8a32  B.Dk.O....IX.K.B
	defb 05eh,051h,058h,0eah,000h,0bch,055h,0feh,04fh,041h,04bh,052h,059h,000h,04fh,003h	; 8a42  ^QX...U.OAKRY.O.
	defb 06dh,049h,000h,04fh,04fh,045h,041h,054h,04ah,041h,001h,03ch,0ffh	; 8a52  mI.OOEATJA.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8A5F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (64
;   bytes)
;   0x8a5f..0x8a9f  (64 bytes)
DATA_mensaje_25_8A5F:
	defb 0f8h,03bh,040h,054h,04fh,059h,000h,0f7h,0fch,053h,003h,058h,052h,003h,04ch,057h	; 8a5f  ..@TOY...S.XR.LW
	defb 006h,0feh,05eh,062h,058h,053h,003h,062h,058h,000h,05eh,067h,0a5h,047h,06ch,0feh	; 8a6f  ..^bXS.bX.^g.Gl.
	defb 059h,06dh,048h,003h,06dh,000h,04ah,04dh,068h,000h,08eh,09dh,083h,045h,003h,0feh	; 8a7f  YmH.m.JMh....E..
	defb 044h,063h,047h,055h,000h,04fh,051h,049h,053h,052h,003h,04bh,0a5h,042h,03ch,0ffh	; 8a8f  DcGU.OQISR.K.B<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8A9F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x8a9f..0x8abc  (29 bytes)
DATA_mensaje_25_8A9F:
	defb 0f8h,03bh,062h,042h,04bh,06bh,048h,054h,041h,045h,003h,000h,04fh,04fh,003h,0b3h	; 8a9f  ..bBKkHTAE..OO..
	defb 0feh,04dh,0a6h,046h,0a5h,042h,0deh,052h,003h,04ch,006h,03ch,0ffh	; 8aaf  .M.F.B.R.L.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8ABC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (37
;   bytes)
;   0x8abc..0x8ae1  (37 bytes)
DATA_mensaje_25_8ABC:
	defb 0f8h,03bh,0cfh,059h,000h,065h,048h,003h,06dh,04bh,0a3h,04ah,006h,05eh,040h,000h	; 8abc  ...Y.eH.mK.J.^@.
	defb 040h,052h,055h,0feh,04bh,054h,041h,0efh,045h,003h,000h,05fh,058h,000h,04fh,061h	; 8acc  @RU.KTA.E.._X.Oa
	defb 04fh,003h,06ah,03ch,0ffh	; 8adc

; ----------------------------------------------------------------------
; DATOS mensaje_25_8AE1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x8ae1..0x8af3  (18 bytes)
DATA_mensaje_25_8AE1:
	defb 0f8h,03bh,040h,067h,0a3h,000h,05eh,064h,051h,059h,003h,062h,06dh,04fh,003h,065h	; 8ae1  ..@g..^dQY.bmO.e
	defb 03ch,0ffh	; 8af1

; ----------------------------------------------------------------------
; DATOS mensaje_25_8AF3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0x8af3..0x8b14  (33 bytes)
DATA_mensaje_25_8AF3:
	defb 0f8h,03bh,0c6h,055h,059h,000h,060h,04ch,003h,045h,04bh,047h,052h,0feh,0c9h,045h	; 8af3  ...UY.`L.EKGR..E
	defb 003h,000h,0c8h,041h,04fh,041h,058h,045h,000h,06bh,045h,066h,054h,041h,06bh,03ch	; 8b03  ...AOAXE.kEfTAk<
	defb 0ffh	; 8b13

; ----------------------------------------------------------------------
; DATOS mensajes_25_8B14: 1 palabras: los mensajes de la sala 342 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x8b14..0x8b16  (2 bytes)
DATA_mensajes_25_8B14:
	defb 016h,08bh	; 8b14

; ----------------------------------------------------------------------
; DATOS mensaje_25_8B16: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (45
;   bytes)
;   0x8b16..0x8b43  (45 bytes)
DATA_mensaje_25_8B16:
	defb 0f8h,03bh,0c6h,059h,000h,0ebh,000h,07dh,020h,08bh,003h,06ch,000h,051h,045h,04ah	; 8b16  ...Y...} ..l.QEJ
	defb 053h,003h,068h,062h,058h,0feh,04fh,003h,0a6h,04fh,06dh,04fh,003h,045h,003h,000h	; 8b26  S.hbX.O..OmO.E..
	defb 0b3h,059h,000h,063h,0a6h,052h,054h,041h,06dh,04fh,003h,03ch,0ffh	; 8b36  .Y.c.RTAmO.<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_8B43: 1 palabras: los mensajes de la sala 355 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x8b43..0x8b45  (2 bytes)
DATA_mensajes_25_8B43:
	defb 045h,08bh	; 8b43

; ----------------------------------------------------------------------
; DATOS mensaje_25_8B45: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x8b45..0x8b52  (13 bytes)
DATA_mensaje_25_8B45:
	defb 0fbh,03bh,06eh,074h,020h,08eh,09dh,050h,05dh,042h,06fh,03ch,0ffh	; 8b45  ..nt ..P]Bo<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_8B52: 6 palabras: los mensajes de la sala 368 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (12 bytes)
;   0x8b52..0x8b5e  (12 bytes)
DATA_mensajes_25_8B52:
	defb 05eh,08bh	; 8b52
	defb 08ch,08bh	; 8b54
	defb 0dbh,08bh	; 8b56
	defb 002h,08ch	; 8b58
	defb 030h,08ch	; 8b5a
	defb 050h,08ch	; 8b5c

; ----------------------------------------------------------------------
; DATOS mensaje_25_8B5E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0x8b5e..0x8b8c  (46 bytes)
DATA_mensaje_25_8B5E:
	defb 0f8h,03bh,0c6h,059h,000h,09ah,020h,07eh,077h,042h,067h,000h,04bh,003h,0a3h,006h	; 8b5e  ...Y.. ~wBg.K...
	defb 0feh,09ah,020h,07eh,077h,06ch,000h,045h,06bh,054h,041h,058h,054h,066h,000h,053h	; 8b6e  .. ~wl.EkTAXTf.S
	defb 0a6h,053h,053h,0feh,045h,043h,0a6h,052h,044h,047h,069h,001h,03ch,0ffh	; 8b7e  .SS.EC.RDGi.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8B8C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (79
;   bytes)
;   0x8b8c..0x8bdb  (79 bytes)
DATA_mensaje_25_8B8C:
	defb 0fch,03bh,011h,05dh,004h,06dh,000h,041h,047h,066h,04fh,003h,041h,002h,03ch,0fdh	; 8b8c  ...].m.AGfO.A.<.
	defb 0f8h,03bh,049h,058h,000h,09ah,020h,07eh,077h,059h,000h,0c6h,045h,003h,0feh,04dh	; 8b9c  ..IX.. ~wY..E..M
	defb 041h,049h,06dh,000h,049h,061h,052h,000h,051h,047h,0a6h,04fh,0feh,089h,003h,09dh	; 8bac  AIm.IaR.QG.O....
	defb 083h,003h,073h,071h,083h,003h,000h,041h,063h,000h,089h,09dh,083h,003h,091h,071h	; 8bbc  ..sq...Ac......q
	defb 083h,003h,006h,0feh,057h,059h,000h,051h,048h,066h,069h,06dh,001h,03ch,0ffh	; 8bcc  ....WY.QHfim.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8BDB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (39
;   bytes)
;   0x8bdb..0x8c02  (39 bytes)
DATA_mensaje_25_8BDB:
	defb 0fch,03bh,04bh,003h,0a3h,040h,000h,050h,0a5h,042h,04fh,003h,041h,054h,03ch,0feh	; 8bdb  ..K..@.P.BO.AT<.
	defb 0f8h,03bh,089h,003h,075h,07fh,097h,0afh,001h,000h,04fh,04fh,003h,052h,003h,059h	; 8beb  ....u.....OO.R.Y
	defb 000h,063h,069h,06dh,001h,03ch,0ffh	; 8bfb

; ----------------------------------------------------------------------
; DATOS mensaje_25_8C02: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0x8c02..0x8c30  (46 bytes)
DATA_mensaje_25_8C02:
	defb 0fbh,03bh,04fh,04fh,003h,058h,000h,09ah,020h,07eh,077h,042h,067h,058h,000h,06ah	; 8c02  ..OO.X.. ~wBgX.j
	defb 042h,059h,003h,065h,03ch,0feh,0f8h,03bh,044h,057h,043h,04ah,06dh,053h,000h,0c8h	; 8c12  BY.e<...DWCJmS..
	defb 041h,06dh,04bh,0a3h,041h,001h,03ch,0feh,0fch,03bh,00ah,00ah,03ch,0ffh	; 8c22  AmK.A.<.....<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8C30: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x8c30..0x8c50  (32 bytes)
DATA_mensaje_25_8C30:
	defb 0f8h,03bh,049h,066h,0a6h,001h,000h,045h,0a6h,052h,055h,000h,0bah,058h,0feh,09ah	; 8c30  ..If...E.RU..X..
	defb 020h,07eh,077h,06ch,000h,0b1h,068h,06dh,04bh,003h,0a3h,054h,041h,001h,03ch,0ffh	; 8c40   ~wl..hmK..TA.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8C50: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (96
;   bytes)
;   0x8c50..0x8cb0  (96 bytes)
DATA_mensaje_25_8C50:
	defb 0fch,03bh,044h,057h,043h,04ah,06dh,045h,003h,000h,051h,047h,066h,069h,04fh,0feh	; 8c50  ..DWCJmE..QGfiO.
	defb 049h,058h,000h,09ah,020h,07eh,077h,059h,000h,05fh,049h,003h,053h,054h,0feh,052h	; 8c60  IX.. ~wY._I.ST.R
	defb 003h,046h,059h,003h,043h,052h,003h,000h,049h,003h,04ah,003h,041h,05eh,04ch,057h	; 8c70  .FY.CR..I.J.A^LW
	defb 043h,03ch,0fdh,0f8h,03bh,04eh,042h,045h,001h,000h,06bh,045h,0a6h,052h,047h,069h	; 8c80  C<...NBE..kE.RGi
	defb 04fh,045h,006h,0feh,052h,003h,059h,000h,049h,058h,000h,09ah,020h,07eh,077h,06ch	; 8c90  OE..R.Y.IX.. ~wl
	defb 000h,011h,05dh,004h,06dh,0feh,0e4h,0a6h,052h,0dch,046h,054h,04ah,041h,03ch,0ffh	; 8ca0  ..].m...R.FTJA<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_8CB0: 7 palabras: los mensajes de la sala 379 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (14 bytes)
;   0x8cb0..0x8cbe  (14 bytes)
DATA_mensajes_25_8CB0:
	defb 0beh,08ch	; 8cb0
	defb 0e0h,08ch	; 8cb2
	defb 02ch,08dh	; 8cb4
	defb 0e9h,08dh	; 8cb6
	defb 01eh,08eh	; 8cb8
	defb 02fh,08eh	; 8cba
	defb 091h,08eh	; 8cbc

; ----------------------------------------------------------------------
; DATOS mensaje_25_8CBE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0x8cbe..0x8ce0  (34 bytes)
DATA_mensaje_25_8CBE:
	defb 0f8h,03bh,0c9h,06ch,000h,045h,047h,04eh,042h,005h,0c6h,045h,003h,000h,082h,0a8h	; 8cbe  ...l.EGNB..E....
	defb 074h,07ch,04fh,003h,03ch,0feh,0fch,03bh,05ch,06dh,054h,000h,063h,0a6h,050h,0a3h	; 8cce  t|O.<...\mT.c.P.
	defb 03ch,0ffh	; 8cde

; ----------------------------------------------------------------------
; DATOS mensaje_25_8CE0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (76
;   bytes)
;   0x8ce0..0x8d2c  (76 bytes)
DATA_mensaje_25_8CE0:
	defb 0fbh,03bh,040h,054h,04fh,059h,000h,0c9h,06ch,000h,04ch,068h,0bah,054h,058h,052h	; 8ce0  ..@TOY..l.Lh.TXR
	defb 003h,04ch,045h,002h,03ch,0f8h,03bh,0c6h,058h,09bh,07ah,003h,059h,000h,053h,052h	; 8cf0  .LE.<...X.z.Y.SR
	defb 062h,000h,076h,078h,09dh,052h,003h,04ch,006h,0feh,052h,003h,04bh,000h,041h,045h	; 8d00  b.vx.R.L..R.K.AE
	defb 003h,041h,058h,0bah,055h,0feh,044h,04bh,043h,068h,049h,053h,059h,000h,052h,003h	; 8d10  .AX.U.DKChISY.R.
	defb 046h,05eh,04dh,06dh,03ch,0fdh,0fch,03bh,078h,080h,03ch,0ffh	; 8d20  F^Mm<...x.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8D2C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (189
;   bytes)
;   0x8d2c..0x8de9  (189 bytes)
DATA_mensaje_25_8D2C:
	defb 0fbh,03bh,049h,058h,077h,003h,097h,020h,077h,0c5h,0c0h,058h,000h,061h,041h,040h	; 8d2c  ..IXw.. w..X.aA@
	defb 06dh,045h,003h,0feh,040h,054h,04fh,055h,000h,045h,045h,0a6h,052h,041h,068h,045h	; 8d3c  mE..@TOU.EE.RAhE
	defb 062h,0feh,04bh,069h,054h,041h,058h,065h,006h,000h,040h,054h,04fh,058h,000h,09bh	; 8d4c  b.KiTAXe..@TOX..
	defb 07ah,003h,06ch,0feh,0b8h,04dh,052h,0d3h,04ah,041h,03ch,0fdh,0f8h,03bh,065h,06ah	; 8d5c  z.l..MR.JA<...ej
	defb 04bh,041h,006h,000h,040h,054h,04fh,0efh,058h,000h,057h,051h,041h,055h,0feh,042h	; 8d6c  KA..@TO.X.WQAU.B
	defb 04fh,069h,04fh,006h,000h,0c6h,058h,000h,09bh,07ah,003h,053h,059h,00ah,00ah,0feh	; 8d7c  OiO...X..z.SY...
	defb 06eh,064h,042h,0b2h,067h,04fh,003h,051h,06fh,058h,000h,07bh,003h,0adh,081h,054h	; 8d8c  ndB.gO.QoX.{...T
	defb 058h,04bh,003h,0a3h,006h,0fdh,04ch,054h,06bh,050h,000h,0bah,0ddh,058h,000h,0f0h	; 8d9c  XK....LTkP...X..
	defb 053h,0feh,055h,047h,0b2h,06ch,000h,05bh,003h,06dh,067h,000h,04ah,04dh,065h,042h	; 8dac  S.UG.l.[.mg.JMeB
	defb 053h,0feh,041h,042h,062h,058h,04bh,003h,0a3h,006h,000h,054h,045h,003h,057h,06dh	; 8dbc  S.ABbXK....TE.Wm
	defb 058h,0feh,048h,06dh,046h,0a4h,042h,058h,04ch,043h,000h,063h,0a6h,053h,0fdh,0b2h	; 8dcc  X.HmF.BXLC.c.S..
	defb 053h,047h,000h,052h,003h,046h,04fh,058h,04bh,003h,0a3h,03ch,0ffh	; 8ddc  SG.R.FOXK..<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8DE9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (53
;   bytes)
;   0x8de9..0x8e1e  (53 bytes)
DATA_mensaje_25_8DE9:
	defb 0fbh,03bh,040h,054h,04fh,058h,09bh,07ah,003h,06ch,000h,0b8h,04dh,052h,0d3h,04ah	; 8de9  ..@TOX.z.l..MR.J
	defb 041h,03ch,0feh,0f8h,03bh,05ah,051h,065h,042h,054h,0eah,000h,041h,045h,003h,041h	; 8df9  A<...ZQeBT..AE.A
	defb 059h,000h,049h,058h,09bh,07ah,003h,059h,0feh,0b0h,041h,04fh,047h,054h,041h,06dh	; 8e09  Y.IX.z.Y..AOGTAm
	defb 04bh,003h,0a3h,03ch,0ffh	; 8e19

; ----------------------------------------------------------------------
; DATOS mensaje_25_8E1E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x8e1e..0x8e2f  (17 bytes)
DATA_mensaje_25_8E1E:
	defb 0f8h,03bh,04fh,058h,05eh,069h,052h,062h,000h,090h,097h,04bh,003h,0a3h,065h,03ch	; 8e1e  ..OX^iRb...K..e<
	defb 0ffh	; 8e2e

; ----------------------------------------------------------------------
; DATOS mensaje_25_8E2F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (98
;   bytes)
;   0x8e2f..0x8e91  (98 bytes)
DATA_mensaje_25_8E2F:
	defb 0fch,03bh,04bh,003h,051h,059h,000h,0ech,057h,054h,041h,0b2h,055h,054h,067h,0feh	; 8e2f  ..K.QY..WTA.UTg.
	defb 049h,05eh,0a6h,052h,041h,068h,0bah,045h,003h,041h,068h,006h,04fh,04ch,048h,052h	; 8e3f  I^.RAh.E.Ah.OLHR
	defb 0feh,047h,069h,068h,045h,041h,002h,03ch,0fdh,0f8h,03bh,065h,06ah,04bh,041h,006h	; 8e4f  .GihEA.<...ejKA.
	defb 000h,052h,003h,059h,000h,04ah,046h,055h,000h,04eh,058h,0bah,058h,0feh,053h,049h	; 8e5f  .R.Y.JFU.NX.X.SI
	defb 06ah,05ch,000h,0dch,0a6h,052h,041h,054h,04ah,041h,006h,000h,0c6h,062h,0feh,040h	; 8e6f  j\...RATJA...b.@
	defb 053h,045h,066h,000h,051h,041h,052h,0dch,047h,049h,053h,055h,000h,04bh,065h,042h	; 8e7f  SEf.QAR.GISU.KeB
	defb 03ch,0ffh	; 8e8f

; ----------------------------------------------------------------------
; DATOS mensaje_25_8E91: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0x8e91..0x8eb3  (34 bytes)
DATA_mensaje_25_8E91:
	defb 0fch,03bh,040h,058h,0eah,059h,000h,040h,067h,045h,003h,053h,042h,03ch,0feh,0f8h	; 8e91  ..@X.Y.@gE.SB<..
	defb 03bh,0c6h,062h,000h,05ch,003h,06dh,046h,0a5h,042h,055h,000h,054h,0a6h,04fh,065h	; 8ea1  ..b.\.mF.BU.T.Oe
	defb 03ch,0ffh	; 8eb1

; ----------------------------------------------------------------------
; DATOS mensajes_25_8EB3: 2 palabras: los mensajes de la sala 380 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x8eb3..0x8eb7  (4 bytes)
DATA_mensajes_25_8EB3:
	defb 0b7h,08eh	; 8eb3
	defb 0dbh,08eh	; 8eb5

; ----------------------------------------------------------------------
; DATOS mensaje_25_8EB7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0x8eb7..0x8edb  (36 bytes)
DATA_mensaje_25_8EB7:
	defb 0f8h,03bh,049h,049h,058h,000h,082h,0a8h,074h,07ch,04ah,05eh,059h,000h,046h,04dh	; 8eb7  ..IIX...t|J^Y.FM
	defb 046h,06ch,0feh,044h,049h,04ch,049h,053h,045h,003h,000h,052h,003h,046h,068h,06dh	; 8ec7  Fl.DILISE..R.Fhm
	defb 04fh,003h,03ch,0ffh	; 8ed7

; ----------------------------------------------------------------------
; DATOS mensaje_25_8EDB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (53
;   bytes)
;   0x8edb..0x8f10  (53 bytes)
DATA_mensaje_25_8EDB:
	defb 0f8h,03bh,08dh,003h,077h,04fh,050h,059h,000h,082h,0a8h,074h,07ch,04ah,05eh,058h	; 8edb  ....wOPY...t|J^X
	defb 0feh,052h,003h,04bh,000h,054h,06dh,04fh,003h,048h,053h,003h,000h,054h,045h,054h	; 8eeb  .R.K.TmO.HS..TET
	defb 045h,0feh,08eh,07ch,07fh,020h,000h,052h,003h,046h,068h,062h,06dh,04bh,003h,0a3h	; 8efb  E..|. .R.FhbmK..
	defb 054h,041h,065h,03ch,0ffh	; 8f0b

; ----------------------------------------------------------------------
; DATOS mensajes_25_8F10: 1 palabras: los mensajes de la sala 382 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x8f10..0x8f12  (2 bytes)
DATA_mensajes_25_8F10:
	defb 012h,08fh	; 8f10

; ----------------------------------------------------------------------
; DATOS mensaje_25_8F12: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0x8f12..0x8f1e  (12 bytes)
DATA_mensaje_25_8F12:
	defb 0fbh,03bh,06eh,09bh,020h,077h,050h,05dh,042h,06fh,03ch,0ffh	; 8f12  ..n. wP]Bo<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_8F1E: 3 palabras: los mensajes de la sala 403 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (6
;   bytes)
;   0x8f1e..0x8f24  (6 bytes)
DATA_mensajes_25_8F1E:
	defb 024h,08fh	; 8f1e
	defb 091h,08fh	; 8f20
	defb 09bh,08fh	; 8f22

; ----------------------------------------------------------------------
; DATOS mensaje_25_8F24: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (109
;   bytes)
;   0x8f24..0x8f91  (109 bytes)
DATA_mensaje_25_8F24:
	defb 0f8h,03bh,08dh,003h,077h,059h,000h,085h,09dh,076h,003h,0aeh,058h,000h,08eh,020h	; 8f24  ....wY...v..X..
	defb 08eh,053h,0feh,08eh,020h,08eh,09dh,058h,000h,0d6h,053h,003h,062h,058h,000h,08eh	; 8f34  .S.. ..X..S.bX..
	defb 09dh,08eh,09dh,052h,003h,04ch,006h,0feh,0f7h,0fch,058h,000h,044h,045h,048h,003h	; 8f44  ...R.L....X.DEH.
	defb 052h,003h,000h,012h,0bah,059h,0feh,048h,0a6h,049h,06dh,052h,003h,046h,05eh,04bh	; 8f54  R....Y.H.ImR.F^K
	defb 04fh,006h,0fdh,012h,0bah,045h,066h,058h,000h,04ah,04ah,063h,045h,054h,000h,08bh	; 8f64  O....EfX.JJcET..
	defb 004h,099h,07dh,003h,09dh,083h,06ch,0feh,065h,042h,041h,04bh,052h,068h,058h,052h	; 8f74  ..}...l.eBAKRhXR
	defb 003h,000h,042h,048h,053h,0a6h,052h,0d3h,04ah,041h,03ch,0fah,005h	; 8f84  ..BHS.R.JA<..

; ----------------------------------------------------------------------
; DATOS mensaje_25_8F91: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (10
;   bytes)
;   0x8f91..0x8f9b  (10 bytes)
DATA_mensaje_25_8F91:
	defb 0fbh,03bh,05bh,057h,04fh,003h,06bh,001h,03ch,0ffh	; 8f91  ..[WO.k.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_8F9B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (88
;   bytes)
;   0x8f9b..0x8ff3  (88 bytes)
DATA_mensaje_25_8F9B:
	defb 0fbh,03bh,091h,0afh,07dh,020h,07bh,003h,045h,003h,000h,05dh,0a6h,052h,040h,068h	; 8f9b  ....} {.E..].R@h
	defb 06bh,006h,0fdh,06eh,0c6h,04fh,050h,058h,0eeh,058h,076h,0adh,020h,08ah,004h,0afh	; 8fab  k..n.OPX.Xv. ...
	defb 083h,04ah,05eh,05ch,06fh,0feh,04fh,003h,0a6h,052h,006h,000h,0f7h,0fch,058h,049h	; 8fbb  .J^\o.O..R....XI
	defb 053h,000h,049h,069h,045h,066h,0feh,076h,0adh,020h,08ah,004h,020h,050h,0a3h,06dh	; 8fcb  S.IiEf.v. .. P.m
	defb 0a6h,052h,065h,06dh,052h,003h,062h,041h,041h,002h,03ch,0feh,0fch,03bh,0bah,06ch	; 8fdb  .RemR.bAA.<....l
	defb 000h,08eh,095h,087h,020h,07ch,003h,0ffh	; 8feb  .... |..

; ----------------------------------------------------------------------
; DATOS mensajes_25_8FF3: 4 palabras: los mensajes de la sala 417 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (8
;   bytes)
;   0x8ff3..0x8ffb  (8 bytes)
DATA_mensajes_25_8FF3:
	defb 0fbh,08fh	; 8ff3
	defb 007h,090h	; 8ff5
	defb 01eh,090h	; 8ff7
	defb 073h,090h	; 8ff9

; ----------------------------------------------------------------------
; DATOS mensaje_25_8FFB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0x8ffb..0x9007  (12 bytes)
DATA_mensaje_25_8FFB:
	defb 0fbh,03bh,049h,049h,059h,000h,071h,07dh,076h,057h,03ch,0ffh	; 8ffb  ..IIY.q}vW<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_9007: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x9007..0x901e  (23 bytes)
DATA_mensaje_25_9007:
	defb 0fbh,03bh,053h,003h,049h,045h,052h,003h,000h,0b8h,04fh,049h,053h,058h,040h,068h	; 9007  ..S.IER...OISX@h
	defb 000h,045h,04fh,050h,057h,03ch,0ffh	; 9017

; ----------------------------------------------------------------------
; DATOS mensaje_25_901E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (85
;   bytes)
;   0x901e..0x9073  (85 bytes)
DATA_mensaje_25_901E:
	defb 0fbh,03bh,0dbh,041h,04fh,003h,04bh,04fh,06bh,001h,000h,053h,042h,061h,041h,0bah	; 901e  ...AO.KOk..SBaA.
	defb 0ddh,055h,0feh,04ah,069h,052h,041h,04fh,000h,06eh,082h,003h,0a8h,020h,06fh,053h	; 902e  .U.JiRAO.n... oS
	defb 041h,042h,0d6h,058h,0feh,044h,054h,045h,055h,000h,0e1h,069h,04fh,000h,0f2h,058h	; 903e  AB.X.DTEU..iO..X
	defb 000h,048h,041h,04bh,003h,065h,001h,0fdh,04eh,069h,053h,000h,049h,049h,058h,000h	; 904e  .HAK.e..NiS.IIX.
	defb 071h,07dh,076h,058h,000h,045h,04fh,050h,045h,003h,0feh,044h,054h,04bh,003h,04fh	; 905e  q}vX.EOPE..DTK.O
	defb 003h,06bh,001h,03ch,0ffh	; 906e

; ----------------------------------------------------------------------
; DATOS mensaje_25_9073: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x9073..0x908a  (23 bytes)
DATA_mensaje_25_9073:
	defb 0fbh,03bh,040h,0a6h,001h,040h,06dh,054h,053h,049h,06ah,055h,045h,041h,04fh,003h	; 9073  ..@..@mTSIjUEAO.
	defb 06dh,045h,003h,001h,03ch,0fah,024h	; 9083

; ----------------------------------------------------------------------
; DATOS mensajes_25_908A: 2 palabras: los mensajes de la sala 430 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x908a..0x908e  (4 bytes)
DATA_mensajes_25_908A:
	defb 08eh,090h	; 908a
	defb 019h,091h	; 908c

; ----------------------------------------------------------------------
; DATOS mensaje_25_908E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0x908e..0x90bf  (49 bytes)
DATA_mensaje_25_908E:
	defb 0f8h,03bh,0c6h,000h,011h,053h,003h,000h,05eh,062h,058h,058h,000h,04ch,060h,000h	; 908e  .....S..^bXX.L`.
	defb 040h,054h,055h,0feh,044h,050h,045h,048h,04fh,049h,053h,045h,003h,040h,068h,058h	; 909e  @TU.DPEHOISE.@hX
	defb 006h,000h,044h,04eh,06ah,04bh,041h,0feh,0bbh,045h,003h,0b8h,043h,04fh,06bh,03ch	; 90ae  ..DNjKA..E..COk<
	defb 0ffh	; 90be

; ----------------------------------------------------------------------
; DATOS mensajes_25_90BF: 2 palabras: los mensajes de la sala 431 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x90bf..0x90c3  (4 bytes)
DATA_mensajes_25_90BF:
	defb 0c3h,090h	; 90bf
	defb 019h,091h	; 90c1

; ----------------------------------------------------------------------
; DATOS mensaje_25_90C3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (42
;   bytes)
;   0x90c3..0x90ed  (42 bytes)
DATA_mensaje_25_90C3:
	defb 0f8h,03bh,049h,058h,000h,050h,05dh,042h,055h,059h,000h,040h,054h,045h,003h,000h	; 90c3  ..IX.P]BUY.@TE..
	defb 04fh,047h,04ah,06dh,0feh,040h,068h,006h,000h,044h,0a6h,049h,050h,068h,053h,000h	; 90d3  OGJm.@h..D.IPhS.
	defb 0ech,06dh,052h,003h,04bh,05eh,042h,065h,03ch,0ffh	; 90e3  .mR.K^Be<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_90ED: 2 palabras: los mensajes de la sala 462 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x90ed..0x90f1  (4 bytes)
DATA_mensajes_25_90ED:
	defb 0f1h,090h	; 90ed
	defb 019h,091h	; 90ef

; ----------------------------------------------------------------------
; DATOS mensaje_25_90F1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (40
;   bytes)
;   0x90f1..0x9119  (40 bytes)
DATA_mensaje_25_90F1:
	defb 0f8h,03bh,040h,054h,04fh,059h,000h,0f7h,0fch,052h,003h,04ch,057h,006h,000h,040h	; 90f1  ..@TOY...R.LW..@
	defb 054h,058h,0feh,0deh,055h,04ch,060h,000h,05eh,062h,058h,06ch,000h,04fh,041h,04bh	; 9101  TX..UL`.^bXl.OAK
	defb 003h,04bh,052h,0d3h,04ah,041h,03ch,0ffh	; 9111  .KR.JA<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_9119: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x9119..0x912a  (17 bytes)
DATA_mensaje_25_9119:
	defb 0f8h,03bh,049h,058h,0f1h,059h,000h,04ch,047h,06bh,069h,05eh,04bh,04fh,001h,03ch	; 9119  ..IX.Y.LGki^KO.<
	defb 0ffh	; 9129

; ----------------------------------------------------------------------
; DATOS mensajes_25_912A: 2 palabras: los mensajes de la sala 463 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x912a..0x912e  (4 bytes)
DATA_mensajes_25_912A:
	defb 02eh,091h	; 912a
	defb 019h,091h	; 912c

; ----------------------------------------------------------------------
; DATOS mensaje_25_912E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (40
;   bytes)
;   0x912e..0x9156  (40 bytes)
DATA_mensaje_25_912E:
	defb 0f8h,03bh,04fh,047h,04ah,06dh,040h,068h,000h,040h,054h,058h,0deh,052h,003h,000h	; 912e  ..OGJm@h.@TX.R..
	defb 011h,051h,04fh,003h,048h,0feh,05eh,062h,058h,058h,000h,04ch,060h,000h,040h,054h	; 913e  .QO.H.^bXX.L`.@T
	defb 045h,003h,040h,068h,04eh,003h,03ch,0ffh	; 914e  E.@hN.<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_9156: 1 palabras: los mensajes de la sala 432 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x9156..0x9158  (2 bytes)
DATA_mensajes_25_9156:
	defb 058h,091h	; 9156

; ----------------------------------------------------------------------
; DATOS mensaje_25_9158: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x9158..0x9166  (14 bytes)
DATA_mensaje_25_9158:
	defb 0fbh,03bh,06eh,070h,090h,087h,07bh,070h,050h,05dh,042h,06fh,03ch,0ffh	; 9158  ..np..{pP]Bo<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_9166: 1 palabras: los mensajes de la sala 441 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x9166..0x9168  (2 bytes)
DATA_mensajes_25_9166:
	defb 068h,091h	; 9166

; ----------------------------------------------------------------------
; DATOS mensaje_25_9168: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x9168..0x9179  (17 bytes)
DATA_mensaje_25_9168:
	defb 0fbh,03bh,06eh,082h,003h,0afh,083h,003h,09ah,0afh,077h,050h,05dh,042h,06fh,03ch	; 9168  ..n.......wP]Bo<
	defb 0ffh	; 9178

; ----------------------------------------------------------------------
; DATOS mensajes_25_9179: 5 palabras: los mensajes de la sala 454 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (10 bytes)
;   0x9179..0x9183  (10 bytes)
DATA_mensajes_25_9179:
	defb 083h,091h	; 9179
	defb 0aah,091h	; 917b
	defb 0bbh,091h	; 917d
	defb 0d0h,091h	; 917f
	defb 0e6h,091h	; 9181

; ----------------------------------------------------------------------
; DATOS mensaje_25_9183: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (39
;   bytes)
;   0x9183..0x91aa  (39 bytes)
DATA_mensaje_25_9183:
	defb 0fch,03bh,049h,049h,059h,000h,05fh,04ch,003h,042h,05fh,000h,058h,065h,042h,04fh	; 9183  ..IIY._L.B_.XeBO
	defb 003h,054h,006h,0feh,04ch,046h,053h,044h,0a6h,04fh,000h,046h,069h,041h,054h,000h	; 9193  .T..LFSD.O.FiAT.
	defb 05fh,04ch,003h,04fh,003h,03ch,0ffh	; 91a3

; ----------------------------------------------------------------------
; DATOS mensaje_25_91AA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x91aa..0x91bb  (17 bytes)
DATA_mensaje_25_91AA:
	defb 0fch,03bh,05bh,01dh,0a6h,006h,000h,04ah,0a6h,059h,004h,067h,04bh,04fh,001h,03ch	; 91aa  ..[....J.Y.gKO.<
	defb 0ffh	; 91ba

; ----------------------------------------------------------------------
; DATOS mensaje_25_91BB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x91bb..0x91d0  (21 bytes)
DATA_mensaje_25_91BB:
	defb 0fch,03bh,042h,01dh,06dh,006h,000h,051h,061h,04fh,047h,052h,000h,044h,041h,04bh	; 91bb  ..B.m..QaOGR.DAK
	defb 041h,063h,001h,03ch,0ffh	; 91cb

; ----------------------------------------------------------------------
; DATOS mensaje_25_91D0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x91d0..0x91e6  (22 bytes)
DATA_mensaje_25_91D0:
	defb 0fch,03bh,05fh,04ch,003h,06ch,000h,047h,06dh,052h,003h,000h,0e4h,0a6h,052h,0dch	; 91d0  .._L.l.GmR....R.
	defb 049h,042h,0a6h,053h,03ch,0ffh	; 91e0

; ----------------------------------------------------------------------
; DATOS mensaje_25_91E6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (35
;   bytes)
;   0x91e6..0x9209  (35 bytes)
DATA_mensaje_25_91E6:
	defb 0fbh,03bh,050h,0a5h,0a6h,053h,001h,000h,049h,06dh,054h,000h,053h,049h,06ah,052h	; 91e6  ..P..S..ImT.SIjR
	defb 003h,0feh,04dh,06dh,04fh,047h,054h,06dh,045h,000h,04bh,054h,041h,052h,003h,065h	; 91f6  ..MmOGTmE.KTAR.e
	defb 001h,03ch,0ffh	; 9206

; ----------------------------------------------------------------------
; DATOS mensajes_25_9209: 3 palabras: los mensajes de la sala 469 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (6
;   bytes)
;   0x9209..0x920f  (6 bytes)
DATA_mensajes_25_9209:
	defb 00fh,092h	; 9209
	defb 033h,092h	; 920b
	defb 048h,092h	; 920d

; ----------------------------------------------------------------------
; DATOS mensaje_25_920F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0x920f..0x9233  (36 bytes)
DATA_mensaje_25_920F:
	defb 0fbh,03bh,053h,003h,049h,06ch,000h,0b8h,06bh,04fh,04bh,052h,062h,000h,04ch,054h	; 920f  ..S.Il..kOKRb.LT
	defb 040h,066h,04bh,052h,003h,0b5h,062h,000h,0b4h,048h,066h,069h,054h,041h,047h,066h	; 921f  @fKR..b..HfiTAGf
	defb 041h,065h,03ch,0ffh	; 922f

; ----------------------------------------------------------------------
; DATOS mensaje_25_9233: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x9233..0x9248  (21 bytes)
DATA_mensaje_25_9233:
	defb 0fbh,03bh,0c9h,04fh,003h,045h,000h,05fh,050h,055h,000h,05eh,065h,0a6h,04fh,05fh	; 9233  ...O.E._PU.^e.O_
	defb 04fh,041h,057h,03ch,0ffh	; 9243

; ----------------------------------------------------------------------
; DATOS mensaje_25_9248: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x9248..0x9259  (17 bytes)
DATA_mensaje_25_9248:
	defb 0fbh,03bh,0efh,045h,003h,047h,045h,003h,000h,06bh,045h,066h,054h,041h,06bh,03ch	; 9248  ...E.GE..kEfTAk<
	defb 0ffh	; 9258

; ----------------------------------------------------------------------
; DATOS mensajes_25_9259: 2 palabras: los mensajes de la sala 471 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x9259..0x925d  (4 bytes)
DATA_mensajes_25_9259:
	defb 05dh,092h	; 9259
	defb 08fh,092h	; 925b

; ----------------------------------------------------------------------
; DATOS mensaje_25_925D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0x925d..0x928f  (50 bytes)
DATA_mensaje_25_925D:
	defb 0fbh,03bh,040h,054h,045h,003h,000h,013h,051h,000h,040h,068h,06bh,03ch,0feh,0fch	; 925d  ..@TE...Q.@hk<..
	defb 03bh,040h,054h,045h,003h,000h,013h,051h,00ah,00ah,042h,01dh,060h,03ch,0feh,0fbh	; 926d  .@TE...Q..B.`<..
	defb 03bh,0c9h,06ch,000h,045h,06dh,045h,003h,043h,049h,06dh,052h,003h,068h,058h,002h	; 927d  ..l.EmE.CImR.hX.
	defb 03ch,0ffh	; 928d

; ----------------------------------------------------------------------
; DATOS mensaje_25_928F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (31
;   bytes)
;   0x928f..0x92ae  (31 bytes)
DATA_mensaje_25_928F:
	defb 0fbh,03bh,049h,049h,059h,000h,089h,071h,076h,0aeh,057h,006h,000h,040h,063h,04bh	; 928f  ..IIY..qv.W..@cK
	defb 041h,0feh,062h,058h,059h,000h,0b8h,040h,04fh,066h,054h,041h,06bh,03ch,0ffh	; 929f  A.bXY..@OfTAk<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_92AE: 44 palabras: los mensajes de la sala 512 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (88 bytes)
;   0x92ae..0x9306  (88 bytes)
DATA_mensajes_25_92AE:
	defb 006h,093h	; 92ae
	defb 093h,093h	; 92b0
	defb 028h,094h	; 92b2
	defb 073h,094h	; 92b4
	defb 096h,094h	; 92b6
	defb 0e3h,094h	; 92b8
	defb 0fdh,094h	; 92ba
	defb 08fh,095h	; 92bc
	defb 0d6h,095h	; 92be
	defb 00ah,096h	; 92c0
	defb 048h,096h	; 92c2
	defb 05ah,096h	; 92c4
	defb 0efh,096h	; 92c6
	defb 0feh,096h	; 92c8
	defb 01fh,097h	; 92ca
	defb 03ch,097h	; 92cc
	defb 03ch,097h	; 92ce
	defb 03dh,097h	; 92d0
	defb 059h,097h	; 92d2
	defb 071h,097h	; 92d4
	defb 0e1h,097h	; 92d6
	defb 041h,098h	; 92d8
	defb 09ch,098h	; 92da
	defb 0ech,098h	; 92dc
	defb 053h,099h	; 92de
	defb 0b9h,099h	; 92e0
	defb 0b9h,099h	; 92e2
	defb 0b9h,099h	; 92e4
	defb 01fh,09ah	; 92e6
	defb 034h,09ah	; 92e8
	defb 059h,09ah	; 92ea
	defb 086h,09ah	; 92ec
	defb 096h,09ah	; 92ee
	defb 0dch,09ah	; 92f0
	defb 0ddh,09ah	; 92f2
	defb 026h,09bh	; 92f4
	defb 069h,09bh	; 92f6
	defb 027h,09ch	; 92f8
	defb 0e6h,09ch	; 92fa
	defb 028h,09eh	; 92fc
	defb 057h,09eh	; 92fe
	defb 09fh,09eh	; 9300
	defb 0bah,09eh	; 9302
	defb 0f3h,09eh	; 9304

; ----------------------------------------------------------------------
; DATOS mensaje_25_9306: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (141
;   bytes)
;   0x9306..0x9393  (141 bytes)
DATA_mensaje_25_9306:
	defb 0d7h,0bah,0d8h,000h,0f7h,0fch,0feh,053h,040h,068h,089h,071h,07ch,077h,020h,098h	; 9306  .......S@h.q|w .
	defb 058h,000h,045h,003h,047h,04dh,041h,052h,003h,0feh,089h,004h,07eh,079h,09dh,077h	; 9316  X.E.GMAR....~y.w
	defb 096h,08bh,003h,058h,097h,020h,07fh,003h,020h,006h,0feh,05dh,042h,045h,049h,003h	; 9326  ...X. .. ..]BEI.
	defb 000h,077h,096h,08bh,003h,058h,000h,089h,004h,07eh,079h,09dh,06ch,0b0h,041h,0feh	; 9336  .w...X...~y.l.A.
	defb 078h,003h,020h,090h,06ch,04ch,068h,058h,045h,003h,055h,0a6h,045h,053h,054h,0a6h	; 9346  x. .lLhXE.U.EST.
	defb 052h,041h,04fh,006h,0feh,087h,059h,000h,063h,04ah,04bh,041h,058h,04fh,003h,045h	; 9356  RAO...Y.cJKAXO.E
	defb 003h,000h,0d9h,0dah,081h,0afh,089h,004h,097h,052h,003h,0feh,0bah,055h,04fh,041h	; 9366  .........R...UOA
	defb 04bh,052h,000h,051h,061h,04fh,041h,000h,04fh,041h,053h,003h,06ch,0feh,053h,067h	; 9376  KR.QaOA.OAS.l.Sg
	defb 045h,003h,050h,054h,000h,0f7h,0fch,04fh,003h,0a6h,04fh,006h,0ffh	; 9386  E.PT...O..O..

; ----------------------------------------------------------------------
; DATOS mensaje_25_9393: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (149
;   bytes)
;   0x9393..0x9428  (149 bytes)
DATA_mensaje_25_9393:
	defb 08ah,09ah,071h,09dh,000h,040h,054h,04fh,058h,000h,075h,003h,020h,098h,08bh,099h	; 9393  ..q..@TOX.u. ...
	defb 09dh,083h,003h,0feh,0f7h,0fch,053h,044h,054h,04bh,003h,000h,089h,004h,07eh,079h	; 93a3  ......SDTK....~y
	defb 09dh,077h,096h,08bh,003h,058h,0feh,091h,09dh,089h,003h,020h,052h,003h,005h,077h	; 93b3  .w...X..... R..w
	defb 096h,07ch,091h,020h,083h,052h,003h,062h,040h,0a6h,04fh,006h,0feh,05dh,058h,045h	; 93c3  .|. .R.b@.O..]XE
	defb 055h,000h,0f7h,0fch,055h,0dbh,041h,06ch,065h,04dh,052h,044h,067h,0feh,05eh,049h	; 93d3  U...U.AleMRDg.^I
	defb 003h,049h,06ah,06ch,000h,051h,047h,04ch,058h,04fh,003h,045h,003h,000h,053h,003h	; 93e3  .Ijl.QGLXO.E..S.
	defb 06dh,045h,06dh,054h,0feh,0f7h,0fch,059h,000h,05eh,0a6h,04fh,047h,0b7h,051h,003h	; 93f3  mEmT...Y.^.OG.Q.
	defb 041h,052h,044h,066h,04ch,003h,0feh,03bh,083h,003h,096h,090h,075h,09dh,001h,03ch	; 9403  ARDfL.......u..<
	defb 053h,0bch,04fh,041h,06ch,000h,051h,045h,069h,068h,0feh,05eh,041h,055h,050h,04fh	; 9413  S.OAl.QEih.^AUPO
	defb 003h,0a6h,04fh,006h,0ffh	; 9423

; ----------------------------------------------------------------------
; DATOS mensaje_25_9428: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (75
;   bytes)
;   0x9428..0x9473  (75 bytes)
DATA_mensaje_25_9428:
	defb 0b3h,0f4h,062h,000h,0f7h,0fch,059h,000h,078h,003h,020h,090h,06ch,04ch,068h,04fh	; 9428  ..b...Y.x. .lLhO
	defb 061h,0feh,077h,096h,08bh,003h,055h,0bbh,06ch,04fh,003h,04bh,04fh,006h,000h,083h	; 9438  a.w...U.lO.KO...
	defb 003h,070h,06ch,0b4h,048h,068h,053h,0feh,0f7h,0f9h,045h,003h,000h,011h,0bah,000h	; 9448  .pl.HhS...E.....
	defb 05eh,040h,04fh,066h,04bh,041h,0feh,078h,003h,020h,090h,07eh,08bh,083h,06ch,045h	; 9458  ^@OfKA.x. .~..lE
	defb 045h,043h,052h,000h,04fh,0a6h,052h,041h,04fh,006h,0ffh	; 9468  ECR.O.RAO..

; ----------------------------------------------------------------------
; DATOS mensaje_25_9473: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (35
;   bytes)
;   0x9473..0x9496  (35 bytes)
DATA_mensaje_25_9473:
	defb 0fch,03bh,08bh,003h,07ch,058h,000h,0f7h,0f9h,045h,006h,000h,0b3h,0f4h,059h,0feh	; 9473  ....|X...E....Y.
	defb 044h,0b6h,011h,0bah,045h,041h,002h,03ch,0feh,0f9h,03bh,04eh,042h,05fh,04fh,041h	; 9483  D...EA.<...NB_OA
	defb 057h,03ch,0ffh	; 9493

; ----------------------------------------------------------------------
; DATOS mensaje_25_9496: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (77
;   bytes)
;   0x9496..0x94e3  (77 bytes)
DATA_mensaje_25_9496:
	defb 0f9h,03bh,05eh,04fh,000h,078h,003h,020h,090h,06ch,063h,067h,055h,000h,046h,04fh	; 9496  ..^O.x. .lcgU.FO
	defb 058h,057h,006h,0feh,0d9h,04bh,059h,000h,08bh,004h,09ah,077h,003h,096h,090h,052h	; 94a6  XW...KY....w...R
	defb 003h,062h,000h,051h,047h,069h,059h,003h,002h,03ch,0feh,0fch,03bh,06bh,045h,0a6h	; 94b6  .b.QGiY..<...kE.
	defb 04fh,000h,06bh,045h,0a6h,04fh,006h,000h,044h,0b6h,058h,0feh,04dh,0a6h,046h,0a5h	; 94c6  O.kE.O..D.X.M.F.
	defb 042h,059h,000h,08fh,08fh,055h,07fh,079h,04fh,003h,065h,03ch,0ffh	; 94d6  BY...U.yO.e<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_94E3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (26
;   bytes)
;   0x94e3..0x94fd  (26 bytes)
DATA_mensaje_25_94E3:
	defb 0fch,03bh,0c9h,06ch,0e4h,0a6h,052h,068h,06dh,04fh,003h,002h,03ch,0feh,0f9h,03bh	; 94e3  ...l..RhmO..<...
	defb 0c9h,052h,003h,062h,054h,041h,06bh,065h,03ch,0ffh	; 94f3  .R.bTAke<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_94FD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (146
;   bytes)
;   0x94fd..0x958f  (146 bytes)
DATA_mensaje_25_94FD:
	defb 0fch,03bh,04eh,069h,059h,000h,049h,06dh,053h,003h,000h,079h,084h,08fh,045h,066h	; 94fd  ..NiY.ImS..y..Ef
	defb 052h,003h,04fh,0feh,06eh,07bh,0ach,09ah,090h,06fh,0feh,04bh,003h,0a3h,054h,041h	; 950d  R.O.n{...o.K..TA
	defb 045h,001h,000h,040h,067h,045h,003h,04fh,041h,001h,000h,04ah,0a6h,04eh,047h,0feh	; 951d  E..@gE.OA..J.NG.
	defb 08bh,004h,099h,071h,04ch,068h,045h,001h,03ch,0fdh,0f9h,03bh,07fh,003h,091h,001h	; 952d  ...qLhE.<.......
	defb 000h,049h,069h,059h,000h,07fh,003h,091h,065h,001h,03ch,0feh,0fch,03bh,078h,080h	; 953d  .IiY....e.<...x.
	defb 047h,04ah,041h,000h,063h,051h,04fh,003h,054h,006h,05ch,068h,062h,06dh,04bh,003h	; 954d  GJA.cQO.T.\hbmK.
	defb 0a3h,0feh,054h,041h,06dh,04fh,003h,045h,066h,00ah,00ah,03ch,0fdh,0f9h,03bh,049h	; 955d  ..TAmO.Ef..<...I
	defb 058h,078h,003h,020h,090h,04fh,003h,048h,059h,000h,063h,061h,053h,041h,04fh,0efh	; 956d  Xx. .O.HY.caSAO.
	defb 045h,003h,0feh,041h,041h,001h,000h,040h,054h,04fh,058h,000h,04fh,061h,065h,001h	; 957d  E..AA..@TOX.Oae.
	defb 03ch,0ffh	; 958d

; ----------------------------------------------------------------------
; DATOS mensaje_25_958F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensaje_25_95D6 95D6-960A); lo leen p00:4E76 (123 bytes)
;   0x958f..0x960a  (123 bytes)
DATA_mensaje_25_958F:
	defb 0fch,03bh,00ah,00ah,040h,0a6h,050h,060h,041h,052h,000h,08dh,071h,0afh,001h,03ch	; 958f  ....@.P`AR..q..<
	defb 0fdh,0f9h,03bh,002h,000h,00ah,00ah,040h,0a6h,03ch,0feh,0fch,03bh,044h,0b6h,059h	; 959f  .......@.<...D.Y
	defb 000h,08dh,09dh,083h,055h,089h,003h,075h,04fh,003h,054h,006h,050h,0a5h,0a6h,053h	; 95af  ....U..uO.T.P..S
	defb 0feh,078h,003h,020h,090h,04ch,068h,04fh,003h,048h,04ah,006h,04eh,049h,052h,003h	; 95bf  .x. .LhO.HJ.NIR.
	defb 0b8h,052h,054h,0a6h,052h,03ch,0fah,0f9h,03bh,049h,058h,08ch,09dh,07fh,071h,001h	; 95cf  .RT.R<...IX...q.
	defb 000h,041h,063h,066h,04bh,041h,06bh,057h,001h,03ch,0fdh,08dh,003h,079h,0afh,001h	; 95df  .AcfKAkW.<...y..
	defb 083h,003h,07ch,0afh,001h,08ch,003h,076h,0afh,001h,077h,003h,07bh,0ach,001h,0feh	; 95ef  ..|....v..w.{...
	defb 0fch,03bh,05eh,041h,067h,05eh,04bh,04fh,001h,03ch,0ffh	; 95ff  ..^Ag^KO.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_960A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensaje_25_9648 9648-965A); lo leen p00:4E76 (80 bytes)
;   0x960a..0x965a  (80 bytes)
DATA_mensaje_25_960A:
	defb 0f9h,03bh,053h,003h,042h,04bh,052h,062h,000h,049h,058h,078h,003h,020h,090h,06ch	; 960a  ..S.BKRb.IXx. .l
	defb 04ch,068h,058h,057h,002h,0feh,06bh,045h,0a6h,04fh,06bh,006h,000h,04bh,003h,0a3h	; 961a  LhXW..kE.Ok..K..
	defb 040h,000h,0b7h,06ch,051h,048h,052h,057h,03ch,0feh,0fch,03bh,0c9h,058h,049h,0a6h	; 962a  @..lQHRW<....XI.
	defb 050h,0a3h,002h,000h,04ah,052h,07ch,071h,0afh,080h,074h,09dh,03ch,0fah,0fch,03bh	; 963a  P...JR|q..t.<...
	defb 040h,054h,04fh,058h,0d1h,0b6h,002h,000h,074h,099h,059h,000h,0f7h,0fch,03ch,0ffh	; 964a  @TOX....t.Y...<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_965A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (149
;   bytes)
;   0x965a..0x96ef  (149 bytes)
DATA_mensaje_25_965A:
	defb 0fch,03bh,040h,054h,04fh,058h,04ch,046h,054h,0bah,058h,0d1h,0b6h,002h,000h,043h	; 965a  ..@TOXLFT.X....C
	defb 01dh,053h,00ah,03ch,0f9h,03bh,0f7h,0fch,000h,0c6h,058h,0d1h,0b6h,06ch,0d2h,069h	; 966a  .S.<......X..l.i
	defb 052h,047h,069h,054h,041h,0feh,045h,04bh,066h,002h,03ch,0feh,0fch,03bh,0c9h,002h	; 967a  RGiTA.EKf.<.....
	defb 000h,044h,0b6h,000h,074h,099h,055h,000h,05dh,069h,052h,06dh,058h,002h,03ch,0fdh	; 968a  .D..t.U.]iRmX.<.
	defb 0f9h,03bh,078h,003h,020h,090h,06ch,000h,04ah,04dh,052h,040h,048h,003h,068h,000h	; 969a  ..x. .l.JMR@H.h.
	defb 044h,069h,041h,055h,005h,0feh,04fh,003h,05eh,0a6h,052h,000h,06eh,0f7h,0f9h,06fh	; 96aa  DiAU..O.^.R.n..o
	defb 053h,000h,042h,050h,049h,06dh,052h,003h,006h,0fch,03bh,0eeh,058h,049h,047h,059h	; 96ba  S.BPImR.....XIGY
	defb 047h,000h,053h,041h,042h,065h,067h,0feh,046h,0a5h,042h,059h,047h,000h,04ah,069h	; 96ca  G.SABeg.F.BYG.Ji
	defb 052h,068h,045h,06dh,04bh,003h,04fh,003h,054h,006h,0fdh,06eh,0f7h,0f9h,06fh,00ah	; 96da  RhEmK.O.T..n..o.
	defb 00ah,0a6h,053h,03ch,0ffh	; 96ea

; ----------------------------------------------------------------------
; DATOS mensaje_25_96EF: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x96ef..0x96fe  (15 bytes)
DATA_mensaje_25_96EF:
	defb 0fch,03bh,04ah,052h,000h,059h,04bh,003h,061h,068h,045h,00ah,00ah,03ch,0ffh	; 96ef  ..JR.YK.ahE..<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_96FE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0x96fe..0x971f  (33 bytes)
DATA_mensaje_25_96FE:
	defb 0fch,03bh,042h,06bh,020h,020h,020h,020h,020h,020h,0a6h,001h,001h,03ch,0feh,0f9h	; 96fe  ..Bk      ...<..
	defb 03bh,076h,0ach,020h,020h,020h,020h,020h,0afh,001h,000h,0f7h,0fch,001h,001h,03ch	; 970e  .v.     .......<
	defb 0ffh	; 971e

; ----------------------------------------------------------------------
; DATOS mensaje_25_971F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensaje_25_973C 973C-973D); lo leen p00:4E76 (30 bytes)
;   0x971f..0x973d  (30 bytes)
DATA_mensaje_25_971F:
	defb 0f7h,0fch,058h,000h,04ch,045h,003h,04fh,045h,003h,000h,0f7h,0f9h,058h,0feh,0b5h	; 971f  ..X.LE.OE....X..
	defb 058h,0b6h,045h,066h,000h,046h,043h,04fh,00ah,00ah,001h,002h,0fah,0ffh	; 972f  X.Ef.FCO......

; ----------------------------------------------------------------------
; DATOS mensaje_25_973D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0x973d..0x9759  (28 bytes)
DATA_mensaje_25_973D:
	defb 0f9h,03bh,0c9h,06ch,0ceh,05ch,003h,068h,051h,062h,067h,002h,000h,0b5h,051h,046h	; 973d  ...l.\.hQbg...QF
	defb 045h,003h,0feh,041h,063h,066h,04bh,041h,06bh,065h,03ch,0ffh	; 974d  E..AcfKAke<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_9759: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0x9759..0x9771  (24 bytes)
DATA_mensaje_25_9759:
	defb 0f9h,03bh,012h,0bah,052h,003h,000h,071h,07ch,0b1h,067h,078h,003h,020h,090h,052h	; 9759  ....R..q|.gx. .R
	defb 003h,062h,04ch,068h,058h,002h,03ch,0ffh	; 9769  .bLhX.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_9771: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (112
;   bytes)
;   0x9771..0x97e1  (112 bytes)
DATA_mensaje_25_9771:
	defb 089h,004h,09dh,089h,004h,020h,07ch,0c5h,0feh,043h,041h,064h,042h,000h,08dh,004h	; 9771  ..... |..CAdB...
	defb 08dh,004h,09ah,09dh,053h,000h,070h,08bh,09ah,082h,003h,0a8h,082h,058h,0feh,0ddh	; 9781  ....S.p......X..
	defb 055h,000h,042h,05eh,069h,000h,012h,0bah,054h,046h,040h,053h,0feh,077h,003h,097h	; 9791  U.B^i...TF@S.w..
	defb 020h,077h,0c5h,0c0h,058h,0dfh,0e0h,06ch,000h,05eh,062h,0a6h,052h,046h,04fh,006h	; 97a1   w..X..l.^b.RFO.
	defb 0feh,04bh,045h,04bh,005h,011h,0bah,0e2h,058h,000h,080h,0aah,098h,07bh,020h,045h	; 97b1  .KEK....X....{ E
	defb 003h,0feh,0dch,0efh,05bh,061h,041h,055h,000h,054h,0a6h,052h,045h,066h,000h,063h	; 97c1  ....[aAU.T.REf.c
	defb 05eh,041h,058h,0feh,053h,049h,055h,000h,05bh,04dh,0a6h,052h,041h,068h,006h,0ffh	; 97d1  ^AX.SIU.[M.RAh..

; ----------------------------------------------------------------------
; DATOS mensaje_25_97E1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (96
;   bytes)
;   0x97e1..0x9841  (96 bytes)
DATA_mensaje_25_97E1:
	defb 0f7h,0fbh,0feh,077h,003h,097h,020h,077h,0c5h,0c0h,055h,04ch,060h,000h,0bah,0ddh	; 97e1  ...w.. w..UL`...
	defb 058h,049h,053h,059h,003h,06ch,0feh,04bh,0a3h,05ch,003h,068h,08bh,003h,07fh,052h	; 97f1  XISY.l.K.\.h...R
	defb 003h,000h,0f7h,0fch,053h,041h,0a6h,04bh,0a5h,055h,0feh,0e9h,06ch,000h,04ch,068h	; 9801  ....SA.K.U..l.Lh
	defb 049h,053h,055h,054h,068h,006h,0feh,040h,068h,0eah,059h,000h,078h,09dh,075h,062h	; 9811  ISUTh..@h.Y.x.ub
	defb 04bh,000h,040h,068h,0eah,059h,0feh,059h,048h,003h,05eh,04bh,040h,041h,000h,0f7h	; 9821  K.@h.Y.YH.^K@A..
	defb 0fch,058h,0feh,065h,046h,089h,004h,020h,083h,084h,020h,053h,054h,068h,006h,0ffh	; 9831  .X.eF.. .. STh..

; ----------------------------------------------------------------------
; DATOS mensaje_25_9841: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (91
;   bytes)
;   0x9841..0x989c  (91 bytes)
DATA_mensaje_25_9841:
	defb 080h,0aah,098h,07bh,020h,0e3h,0feh,089h,004h,09dh,089h,004h,020h,07ch,058h,011h	; 9841  ...{ ....... |X.
	defb 0bah,0e2h,006h,0feh,0c5h,0c0h,020h,058h,000h,05ah,003h,05dh,003h,042h,053h,000h	; 9851  ...... X.Z.].BS.
	defb 063h,04ah,04bh,04ah,06ch,0e4h,050h,0feh,0f1h,0bah,04fh,050h,058h,000h,040h,049h	; 9861  cJKJl.P...OPX.@I
	defb 045h,003h,069h,058h,05eh,053h,052h,003h,040h,0a6h,04fh,006h,0feh,04bh,045h,04bh	; 9871  E.iX^SR.@.O..KEK
	defb 000h,040h,068h,0f4h,000h,049h,051h,04dh,003h,06dh,053h,000h,04ch,045h,003h,04fh	; 9881  .@h..IQM.mS.LE.O
	defb 06ch,0feh,048h,04bh,052h,04bh,05eh,0a6h,04fh,006h,0ffh	; 9891  l.HKRK^.O..

; ----------------------------------------------------------------------
; DATOS mensaje_25_989C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (80
;   bytes)
;   0x989c..0x98ec  (80 bytes)
DATA_mensaje_25_989C:
	defb 0d4h,0c1h,0c5h,000h,079h,003h,077h,003h,0feh,063h,05fh,058h,0c2h,0c3h,055h,000h	; 989c  ....y.w..c_X..U.
	defb 047h,06dh,067h,06dh,04ch,068h,0feh,046h,0a5h,042h,05bh,058h,000h,0d4h,0c1h,0c5h	; 98ac  GmgmLh.F.B[X....
	defb 006h,0feh,0bah,0ddh,0c2h,0c3h,055h,000h,0d4h,04ah,041h,063h,047h,06ch,05bh,066h	; 98bc  ......U..JAcGl[f
	defb 04dh,068h,04fh,061h,0feh,04bh,003h,049h,003h,047h,058h,000h,04eh,049h,045h,066h	; 98cc  MhOa.K.I.GX.NIEf
	defb 000h,065h,05fh,045h,003h,043h,066h,06dh,053h,0feh,04bh,052h,041h,068h,006h,0ffh	; 98dc  .e_E.CfmS.KRAh..

; ----------------------------------------------------------------------
; DATOS mensaje_25_98EC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (103
;   bytes)
;   0x98ec..0x9953  (103 bytes)
DATA_mensaje_25_98EC:
	defb 08dh,004h,08dh,004h,09ah,09dh,0feh,0beh,0bfh,000h,08ah,0adh,083h,003h,088h,07ch	; 98ec  ...............|
	defb 053h,000h,075h,003h,097h,072h,07ch,06ch,04fh,044h,04bh,0feh,077h,003h,097h,020h	; 98fc  S.u..r|lODK.w..
	defb 077h,0c5h,0c0h,058h,000h,046h,046h,06ch,000h,04ch,047h,0a6h,04fh,0feh,043h,041h	; 990c  w..X.FFl.LG.O.CA
	defb 064h,042h,006h,0feh,0eah,059h,000h,054h,045h,003h,069h,000h,0cfh,059h,0b3h,063h	; 991c  dB...Y.TE.i..Y.c
	defb 000h,0f5h,058h,0bah,053h,0feh,054h,0a6h,052h,044h,067h,000h,077h,003h,097h,020h	; 992c  ..X.S.T.RDg.w..
	defb 077h,0c5h,0c0h,06ch,000h,04eh,066h,058h,0feh,042h,043h,045h,066h,000h,0b8h,05eh	; 993c  w..l.NfX.BCEf..^
	defb 062h,0a6h,052h,041h,068h,006h,0ffh	; 994c

; ----------------------------------------------------------------------
; DATOS mensaje_25_9953: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (102
;   bytes)
;   0x9953..0x99b9  (102 bytes)
DATA_mensaje_25_9953:
	defb 070h,08bh,09ah,082h,003h,0a8h,082h,0feh,05eh,04fh,003h,000h,0e7h,06ch,042h,048h	; 9953  p.......^O...lBH
	defb 052h,041h,054h,041h,000h,044h,04ah,054h,049h,003h,0feh,04fh,003h,0a6h,04fh,000h	; 9963  RATA.DJTI..O..O.
	defb 089h,004h,09dh,089h,004h,020h,07ch,06ch,000h,053h,067h,062h,053h,003h,04ch,0feh	; 9973  ..... |l.SgbS.L.
	defb 04fh,061h,000h,064h,042h,045h,06dh,055h,000h,04fh,04fh,045h,0a6h,04fh,005h,0feh	; 9983  Oa.dBEmU.OOE.O..
	defb 045h,051h,052h,058h,0e3h,006h,0feh,08dh,004h,08dh,004h,09ah,09dh,053h,000h,053h	; 9993  EQRX.........S.S
	defb 062h,055h,000h,0c5h,0c0h,058h,0feh,0dch,047h,04ch,043h,06ch,000h,040h,06dh,04bh	; 99a3  bU...X..GLCl.@mK
	defb 003h,052h,041h,068h,006h,0ffh	; 99b3

; ----------------------------------------------------------------------
; DATOS mensaje_25_99B9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (102
;   bytes)
;   0x99b9..0x9a1f  (102 bytes)
DATA_mensaje_25_99B9:
	defb 0fch,03bh,072h,072h,0afh,001h,000h,041h,052h,01dh,0a6h,001h,0feh,0b2h,045h,003h	; 99b9  ..rr...AR.....E.
	defb 000h,089h,003h,096h,089h,003h,096h,055h,054h,067h,04eh,042h,04fh,003h,006h,0feh	; 99c9  .......UTgNBO...
	defb 020h,0b2h,000h,0c9h,045h,003h,044h,049h,0a6h,04fh,06dh,04fh,003h,002h,03ch,0fdh	; 99d9   ...E.DI.OmO..<.
	defb 0fch,03bh,04eh,042h,04fh,003h,001h,040h,058h,078h,003h,020h,090h,06ch,059h,04bh	; 99e9  ..NBO..@Xx. .lYK
	defb 003h,061h,04fh,053h,04fh,06dh,0feh,0b5h,058h,0b6h,045h,003h,000h,05eh,0a6h,047h	; 99f9  .aOSOm..X.E..^.G
	defb 066h,055h,054h,067h,0feh,0b7h,06ch,042h,04bh,054h,0a6h,052h,04bh,05eh,0a6h,04fh	; 9a09  fUTg..lBKT.RK^.O
	defb 06dh,04fh,003h,001h,03ch,0ffh	; 9a19

; ----------------------------------------------------------------------
; DATOS mensaje_25_9A1F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x9a1f..0x9a34  (21 bytes)
DATA_mensaje_25_9A1F:
	defb 0fch,03bh,0b2h,045h,003h,044h,062h,047h,052h,000h,044h,046h,040h,045h,003h,069h	; 9a1f  ...E.DbGR.DF@E.i
	defb 054h,041h,063h,03ch,0ffh	; 9a2f

; ----------------------------------------------------------------------
; DATOS mensaje_25_9A34: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (37
;   bytes)
;   0x9a34..0x9a59  (37 bytes)
DATA_mensaje_25_9A34:
	defb 0fch,03bh,04ah,0a6h,046h,058h,000h,04bh,0a5h,042h,048h,003h,046h,058h,04dh,041h	; 9a34  ..J.FX.K.BH.FXMA
	defb 052h,003h,0feh,0b2h,045h,003h,000h,041h,042h,049h,053h,06ch,046h,045h,054h,041h	; 9a44  R...E..ABISlFETA
	defb 066h,04bh,041h,03ch,0ffh	; 9a54

; ----------------------------------------------------------------------
; DATOS mensaje_25_9A59: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (45
;   bytes)
;   0x9a59..0x9a86  (45 bytes)
DATA_mensaje_25_9A59:
	defb 0f6h,08bh,003h,07fh,000h,000h,03bh,08bh,003h,08ah,08ah,000h,08bh,003h,08ah,000h	; 9a59  ................
	defb 08bh,003h,08ah,03ch,0feh,0fch,03bh,0c9h,054h,06dh,04fh,003h,000h,049h,058h,08bh	; 9a69  ...<....TmO..IX.
	defb 003h,07fh,05fh,04fh,041h,054h,0feh,049h,043h,059h,002h,03ch,0ffh	; 9a79  .._OAT.ICY.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_9A86: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 3 bloques:
;   (mensaje_25_9A96 9A96-9ADD) (mensaje_25_9ADC 9ADC-9ADD); lo leen p00:4E76
;   (87 bytes)
;   0x9a86..0x9add  (87 bytes)
DATA_mensaje_25_9A86:
	defb 0fch,03bh,05eh,05bh,003h,04fh,045h,003h,000h,044h,062h,041h,054h,01dh,03ch,0fah	; 9a86  ..^[.OE..DbAT.<.
	defb 0fch,03bh,072h,09bh,0a7h,0afh,001h,000h,052h,003h,04fh,040h,020h,0a6h,001h,001h	; 9a96  ..r.....R.O@ ...
	defb 0feh,00ah,00ah,053h,0dbh,0a6h,052h,000h,065h,047h,0b8h,069h,059h,003h,00ah,00ah	; 9aa6  ...S..R.eG.iY...
	defb 0fdh,05eh,05bh,003h,04fh,000h,04bh,003h,0a3h,054h,047h,052h,000h,08bh,003h,07fh	; 9ab6  .^[.O.K..TGR....
	defb 045h,003h,0feh,044h,062h,041h,06dh,04bh,003h,0a3h,057h,020h,045h,001h,000h,053h	; 9ac6  E..DbAmK..W E..S
	defb 003h,048h,065h,001h,03ch,0fah,0ffh	; 9ad6

; ----------------------------------------------------------------------
; DATOS mensaje_25_9ADD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (73
;   bytes)
;   0x9add..0x9b26  (73 bytes)
DATA_mensaje_25_9ADD:
	defb 0f6h,08bh,003h,07fh,000h,000h,03bh,049h,003h,061h,06dh,054h,04ah,041h,006h,044h	; 9add  .......I.amTJA.D
	defb 053h,003h,06ah,045h,04ch,051h,062h,067h,059h,0feh,054h,045h,0a6h,04fh,058h,065h	; 9aed  S.jELQbgY.TE.OXe
	defb 03ch,0feh,0fch,03bh,051h,062h,067h,059h,000h,054h,047h,052h,062h,000h,052h,061h	; 9afd  <...QbgY.TGRb.Ra
	defb 020h,058h,081h,096h,0feh,0b8h,052h,000h,044h,053h,003h,06ah,045h,054h,041h,093h	; 9b0d   X....R.DS.jETA.
	defb 081h,000h,041h,068h,045h,065h,001h,03ch,0ffh	; 9b1d  ..AhEe.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_9B26: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (67
;   bytes)
;   0x9b26..0x9b69  (67 bytes)
DATA_mensaje_25_9B26:
	defb 0fch,03bh,044h,05eh,043h,00ah,00ah,0b9h,045h,003h,000h,046h,048h,068h,058h,045h	; 9b26  ..D^C...E..FHhXE
	defb 002h,03ch,0feh,0f6h,08bh,003h,07fh,000h,000h,03bh,04eh,042h,065h,006h,044h,053h	; 9b36  .<........NBe.DS
	defb 003h,06ah,041h,04fh,002h,03ch,0feh,0fch,03bh,0bah,06ch,000h,044h,053h,003h,06ah	; 9b46  .jAO.<....l.DS.j
	defb 045h,04ch,058h,059h,000h,0bbh,04fh,003h,048h,055h,0feh,04bh,052h,047h,069h,065h	; 9b56  ELXY..O.HU.KRGie
	defb 054h,03ch,0ffh	; 9b66

; ----------------------------------------------------------------------
; DATOS mensaje_25_9B69: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensaje_25_9C27 9C27-9CE6); lo leen p00:4E76 (381 bytes)
;   0x9b69..0x9ce6  (381 bytes)
DATA_mensaje_25_9B69:
	defb 0f6h,08bh,003h,07fh,000h,000h,03bh,040h,054h,04fh,000h,04bh,003h,05bh,003h,06dh	; 9b69  .......@TO.K.[.m
	defb 058h,000h,04fh,050h,059h,003h,045h,003h,0feh,06bh,045h,0a6h,052h,054h,041h,065h	; 9b79  X.OPY.E..kE.RTAe
	defb 042h,04fh,003h,045h,066h,0feh,044h,04bh,043h,052h,040h,048h,003h,068h,048h,053h	; 9b89  BO.Ef.DKCR@H.hHS
	defb 003h,00ah,00ah,006h,049h,049h,059h,0feh,040h,054h,04fh,058h,000h,04ch,06dh,052h	; 9b99  ....IIY.@TOX.LmR
	defb 003h,04fh,0bdh,04bh,003h,0a3h,054h,041h,058h,065h,006h,0fdh,049h,049h,059h,000h	; 9ba9  .O.K..TAXe..IIY.
	defb 0beh,0bfh,058h,000h,04eh,04bh,052h,0feh,08bh,0a7h,09dh,07fh,07bh,003h,020h,058h	; 9bb9  ..X.NKR.....{. X
	defb 0c0h,006h,05eh,05dh,042h,063h,000h,046h,04dh,046h,045h,003h,048h,003h,06dh,04bh	; 9bc9  ..^]Bc.FMFE.H.mK
	defb 003h,051h,055h,000h,044h,049h,068h,0c2h,0c3h,054h,058h,03ch,0fdh,0fch,03bh,0c9h	; 9bd9  .QU.DIh..TX<....
	defb 041h,0a6h,052h,06dh,04fh,003h,065h,006h,049h,049h,059h,000h,074h,099h,045h,003h	; 9be9  A.RmO.e.IIY.t.E.
	defb 0feh,0e7h,05eh,069h,000h,04eh,04fh,003h,0a6h,04fh,0bdh,04fh,003h,04dh,003h,03ch	; 9bf9  ..^i.NO..O.O.M.<
	defb 0feh,0f6h,08bh,003h,07fh,000h,000h,03bh,04bh,003h,0a3h,040h,000h,05eh,06bh,067h	; 9c09  ........K..@.^kg
	defb 06ch,000h,065h,01dh,047h,0feh,0b8h,052h,05fh,054h,04ah,041h,03ch,0fah,0f6h,08bh	; 9c19  l.e.G..R_TJA<...
	defb 003h,07fh,000h,000h,03bh,05dh,066h,057h,006h,0b8h,04fh,049h,053h,062h,054h,041h	; 9c29  .....]fW..OISbTA
	defb 0c2h,0c3h,052h,003h,04bh,0a5h,03ch,0fch,03bh,00ah,00ah,03ch,0fdh,0f6h,08bh,003h	; 9c39  ..R.K.<....<....
	defb 07fh,000h,000h,03bh,063h,0a6h,053h,000h,06bh,045h,0a6h,052h,046h,04fh,065h,042h	; 9c49  ....c.S.kE.RFOeB
	defb 057h,006h,0feh,040h,054h,04fh,059h,000h,040h,058h,078h,003h,020h,090h,058h,0feh	; 9c59  W..@TOY.@Xx. .X.
	defb 0c4h,041h,055h,065h,0a6h,052h,000h,049h,058h,0c2h,0c3h,055h,000h,0feh,046h,052h	; 9c69  .AUe.R.IX..U..FR
	defb 04bh,05eh,0a6h,04fh,058h,065h,006h,0fdh,040h,054h,04fh,058h,0c2h,0c3h,055h,000h	; 9c79  K^.OXe..@TOX..U.
	defb 045h,043h,067h,04fh,048h,069h,059h,003h,00ah,00ah,0feh,04eh,058h,05dh,042h,05dh	; 9c89  ECgOHiY....NX]B]
	defb 042h,059h,000h,011h,051h,04bh,045h,054h,041h,06bh,03ch,0feh,0fch,03bh,04eh,069h	; 9c99  BY..QKETAk<...Ni
	defb 059h,002h,03ch,0fdh,0f6h,08bh,003h,07fh,000h,000h,03bh,049h,058h,0c2h,0c3h,058h	; 9ca9  Y.<........IX..X
	defb 0d4h,0c1h,0c5h,079h,003h,077h,003h,06ch,000h,04fh,044h,04ch,049h,053h,006h,04eh	; 9cb9  ...y.w.l.ODLIS.N
	defb 042h,04bh,054h,041h,053h,000h,0c4h,041h,059h,000h,053h,048h,054h,041h,06bh,03ch	; 9cc9  BKTAS..AY.SHTAk<
	defb 0feh,0fch,03bh,075h,003h,080h,0aeh,01dh,09dh,001h,001h,03ch,0ffh	; 9cd9  ...u.......<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_9CE6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; se solapan 2 bloques:
;   (mensaje_25_9E28 9E28-9E57); lo leen p00:4E76 (369 bytes)
;   0x9ce6..0x9e57  (369 bytes)
DATA_mensaje_25_9CE6:
	defb 0fch,03bh,04bh,045h,04fh,054h,041h,063h,006h,04bh,003h,0a3h,000h,04ah,0a6h,04eh	; 9ce6  ..KEOTAc.K...J.N
	defb 047h,0feh,04eh,058h,000h,079h,003h,077h,003h,053h,063h,066h,06ch,000h,041h,04fh	; 9cf6  G.NX.y.w.Scfl.AO
	defb 041h,0b5h,055h,0feh,040h,06bh,04dh,052h,063h,06ah,01dh,04bh,003h,0a3h,054h,041h	; 9d06  A.U.@kMRcj.K..TA
	defb 045h,001h,0feh,053h,003h,049h,055h,000h,041h,068h,06dh,04fh,003h,002h,000h,04eh	; 9d16  E..S.IU.AhmO...N
	defb 041h,051h,059h,001h,03ch,0fdh,0f6h,08bh,003h,07fh,000h,000h,03bh,079h,003h,077h	; 9d26  AQY.<........y.w
	defb 003h,058h,000h,041h,059h,003h,04bh,0a5h,059h,000h,04fh,003h,069h,062h,0feh,0edh	; 9d36  .X.AY.K.Y.O.ib..
	defb 066h,054h,041h,06bh,006h,04eh,042h,000h,040h,04dh,066h,054h,041h,052h,003h,006h	; 9d46  fTAk.NB.@MfTAR..
	defb 0feh,049h,058h,0c0h,058h,0c5h,000h,089h,004h,09dh,089h,004h,020h,07ch,055h,000h	; 9d56  .IX.X....... |U.
	defb 0feh,040h,041h,055h,0dch,046h,05eh,04bh,0a5h,042h,03ch,0fdh,0fch,03bh,04fh,003h	; 9d66  .@AU.F^K.B<...O.
	defb 069h,04fh,003h,041h,000h,04eh,041h,051h,059h,002h,0feh,044h,05eh,043h,000h,04bh	; 9d76  iO.A.NAQY..D^C.K
	defb 0a6h,052h,06dh,058h,002h,03ch,0fdh,0f6h,08bh,003h,07fh,000h,000h,03bh,040h,043h	; 9d86  .RmX.<........@C
	defb 059h,003h,000h,06bh,045h,068h,06bh,006h,04eh,069h,055h,04bh,052h,062h,0feh,0bah	; 9d96  Y..kEhk.NiUKRb..
	defb 058h,049h,053h,06ch,000h,044h,05eh,043h,053h,045h,000h,08bh,003h,07fh,053h,045h	; 9da6  XISl.D^CSE....SE
	defb 00ah,00ah,0feh,05dh,045h,055h,000h,0c8h,041h,0efh,054h,041h,058h,002h,03ch,0fdh	; 9db6  ...]EU..A.TAX.<.
	defb 0fch,03bh,04bh,003h,0a3h,040h,000h,08bh,003h,07fh,074h,059h,000h,053h,003h,042h	; 9dc6  ..K..@....tY.S.B
	defb 04fh,003h,041h,002h,03ch,0feh,0f6h,08bh,003h,07fh,000h,000h,03bh,04bh,051h,069h	; 9dd6  O.A.<........KQi
	defb 041h,054h,0bah,057h,001h,000h,0c6h,059h,099h,082h,003h,0a8h,065h,001h,03ch,0feh	; 9de6  AT.W...Y....e.<.
	defb 0fch,03bh,077h,077h,0afh,006h,04bh,003h,0a3h,040h,000h,0f7h,0fbh,04fh,003h,006h	; 9df6  ..ww..K..@...O..
	defb 0feh,074h,099h,059h,000h,0f7h,0fch,03ch,0fdh,0fbh,03bh,06bh,045h,0a6h,04fh,006h	; 9e06  .t.Y...<...kE.O.
	defb 0feh,053h,067h,040h,043h,04ch,003h,000h,041h,04eh,046h,003h,05eh,04bh,0a5h,042h	; 9e16  .Sg@CL..ANF.^K.B
	defb 03ch,0fah,0fch,03bh,04bh,045h,04bh,000h,044h,05eh,043h,000h,05dh,06dh,053h,042h	; 9e26  <...KEK.D^C.]mSB
	defb 055h,0feh,08bh,003h,07ch,04fh,003h,054h,040h,03ch,0feh,0f6h,08bh,003h,07fh,000h	; 9e36  U...|O.T@<......
	defb 000h,03bh,0bah,058h,049h,053h,000h,0c8h,043h,04fh,0bbh,045h,04bh,066h,002h,03ch	; 9e46  ...XIS..CO.EKf.<
	defb 0ffh	; 9e56

; ----------------------------------------------------------------------
; DATOS mensaje_25_9E57: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (72
;   bytes)
;   0x9e57..0x9e9f  (72 bytes)
DATA_mensaje_25_9E57:
	defb 0f6h,08bh,003h,07fh,000h,000h,03bh,040h,054h,04fh,000h,06eh,083h,003h,06fh,045h	; 9e57  .......@TO.n..oE
	defb 003h,000h,051h,047h,058h,057h,03ch,0feh,0fch,03bh,002h,03ch,0feh,0f6h,08bh,003h	; 9e67  ..QGXW<....<....
	defb 07fh,000h,000h,03bh,083h,003h,07ch,078h,08ch,003h,065h,001h,000h,0bah,058h,0b2h	; 9e77  ......|x..e...X.
	defb 000h,0b7h,063h,04ch,047h,0feh,04ah,06bh,066h,054h,041h,052h,003h,065h,001h,000h	; 9e87  ..cLG.JkfTAR.e..
	defb 089h,003h,075h,0afh,001h,001h,03ch,0ffh	; 9e97  ..u...<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_9E9F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0x9e9f..0x9eba  (27 bytes)
DATA_mensaje_25_9E9F:
	defb 0f6h,08bh,003h,07fh,000h,000h,03bh,04bh,051h,049h,041h,06bh,057h,006h,041h,041h	; 9e9f  .......KQIAkW.AA
	defb 045h,048h,003h,06dh,055h,04bh,052h,065h,001h,03ch,0ffh	; 9eaf  EH.mUKRe.<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_9EBA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (57
;   bytes)
;   0x9eba..0x9ef3  (57 bytes)
DATA_mensaje_25_9EBA:
	defb 0f6h,08bh,003h,07fh,000h,000h,03bh,04eh,06dh,054h,055h,000h,0b8h,053h,069h,068h	; 9eba  .......NmTU..Sih
	defb 05dh,053h,003h,0feh,09bh,07fh,07bh,000h,046h,069h,041h,045h,04bh,066h,002h,03ch	; 9eca  ]S....{.FiAEKf.<
	defb 0feh,0fch,03bh,065h,047h,0c8h,042h,065h,006h,07fh,09bh,07bh,052h,003h,000h,0bbh	; 9eda  ...eG.Be...{R...
	defb 0feh,040h,066h,0a6h,053h,046h,054h,03ch,0ffh	; 9eea  .@f.SFT<.

; ----------------------------------------------------------------------
; DATOS mensaje_25_9EF3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0x9ef3..0x9f0f  (28 bytes)
DATA_mensaje_25_9EF3:
	defb 0f6h,08bh,003h,07fh,000h,000h,03bh,05eh,04fh,003h,000h,042h,049h,003h,045h,054h	; 9ef3  .......^O..BI.ET
	defb 041h,05dh,042h,045h,003h,000h,041h,041h,06bh,065h,03ch,0ffh	; 9f03  A]BE..AAke<.

; ----------------------------------------------------------------------
; DATOS mensajes_25_9F0F: 7 palabras: los mensajes de la sala 520 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (14 bytes)
;   0x9f0f..0x9f1d  (14 bytes)
DATA_mensajes_25_9F0F:
	defb 01dh,09fh	; 9f0f
	defb 0efh,09fh	; 9f11
	defb 02dh,0a0h	; 9f13
	defb 0a4h,0a0h	; 9f15
	defb 0cch,0a0h	; 9f17
	defb 0e9h,0a0h	; 9f19
	defb 012h,0a1h	; 9f1b

; ----------------------------------------------------------------------
; DATOS mensaje_25_9F1D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (210
;   bytes)
;   0x9f1d..0x9fef  (210 bytes)
DATA_mensaje_25_9F1D:
	defb 0f8h,03bh,06bh,069h,066h,045h,003h,000h,079h,003h,077h,003h,04ah,05eh,001h,0feh	; 9f1d  ..kifE..y.w.J^..
	defb 049h,058h,000h,041h,05eh,06bh,04bh,046h,000h,0bah,0ddh,053h,003h,062h,058h,000h	; 9f2d  IX.A^kKF...S.bX.
	defb 0f0h,045h,066h,067h,04dh,041h,053h,000h,053h,003h,042h,053h,047h,053h,000h,04dh	; 9f3d  .EfgMAS.S.BSGS.M
	defb 041h,046h,003h,053h,0feh,0eeh,06ch,000h,053h,067h,058h,04eh,003h,046h,04fh,062h	; 9f4d  AF.S..l.SgXN.FOb
	defb 042h,001h,0fdh,04eh,04bh,052h,000h,055h,047h,04bh,05fh,053h,000h,042h,066h,046h	; 9f5d  B..NKR.UGK_S.BfF
	defb 003h,067h,053h,0feh,065h,047h,05dh,003h,042h,053h,000h,0bch,058h,0f0h,06ch,000h	; 9f6d  .gS.eG].BS..X.l.
	defb 040h,04fh,043h,04fh,062h,042h,001h,0fdh,057h,045h,003h,06bh,047h,059h,003h,000h	; 9f7d  @OCObB..WE.kGY..
	defb 041h,0a6h,049h,047h,062h,000h,059h,063h,047h,0feh,040h,054h,04fh,04ah,05eh,058h	; 9f8d  A.IGb.YcG.@TOJ^X
	defb 000h,04bh,059h,041h,04ah,069h,068h,000h,0c2h,0c3h,045h,003h,0feh,04bh,003h,051h	; 9f9d  .KYAJih...E..K.Q
	defb 048h,003h,06dh,000h,04dh,06dh,049h,053h,06ch,001h,001h,0fdh,04ah,040h,0a6h,001h	; 9fad  H.m.MmISl...J@..
	defb 000h,0bah,0ddh,053h,003h,062h,065h,001h,000h,044h,058h,069h,058h,0feh,04fh,05eh	; 9fbd  ...S.be..DXiX.O^
	defb 04bh,041h,06ch,000h,04ch,052h,04ah,067h,000h,04eh,058h,0f0h,058h,0deh,055h,0feh	; 9fcd  KAl.LRJg.NX.X.U.
	defb 079h,003h,077h,003h,04ah,05eh,06ch,000h,060h,045h,043h,068h,058h,04fh,003h,001h	; 9fdd  y.w.J^l.`EChXO..
	defb 03ch,0ffh	; 9fed

; ----------------------------------------------------------------------
; DATOS mensaje_25_9FEF: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba (sigue en el banco 26, en
;   0xA000); lo leen p00:4E76 (17 bytes)
;   0x9fef..0xa000  (17 bytes)
DATA_mensaje_25_9FEF:
	defb 0f8h,03bh,0c9h,053h,001h,000h,0f7h,0fch,001h,000h,053h,003h,042h,04bh,052h,0feh	; 9fef  ...S......S.BKR.
	defb 049h	; 9fff
