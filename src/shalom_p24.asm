; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 24 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; DATOS mensajes_24_6000: 1 palabras: los mensajes de la sala 43 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6000..0x6002  (2 bytes)
DATA_mensajes_24_6000:
	defb 002h,060h	; 6000

; ----------------------------------------------------------------------
; DATOS mensaje_24_6002: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x6002..0x6012  (16 bytes)
DATA_mensaje_24_6002:
	defb 0fbh,03bh,06eh,089h,004h,07ch,003h,096h,058h,000h,041h,067h,043h,06fh,03ch,0ffh	; 6002  ..n..|..X.AgCo<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6012: 1 palabras: los mensajes de la sala 11 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6012..0x6014  (2 bytes)
DATA_mensajes_24_6012:
	defb 014h,060h	; 6012

; ----------------------------------------------------------------------
; DATOS mensaje_24_6014: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (30
;   bytes)
;   0x6014..0x6032  (30 bytes)
DATA_mensaje_24_6014:
	defb 0f8h,03bh,049h,058h,000h,041h,067h,043h,058h,000h,060h,049h,042h,055h,0feh,042h	; 6014  ..IX.AgCX.`IBU.B
	defb 04ch,003h,04bh,044h,045h,003h,000h,052h,003h,052h,068h,065h,03ch,0ffh	; 6024  L.KDE..R.Rhe<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6032: 1 palabras: los mensajes de la sala 12 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6032..0x6034  (2 bytes)
DATA_mensajes_24_6032:
	defb 034h,060h	; 6032

; ----------------------------------------------------------------------
; DATOS mensaje_24_6034: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (76
;   bytes)
;   0x6034..0x6080  (76 bytes)
DATA_mensaje_24_6034:
	defb 0f8h,03bh,045h,041h,05bh,003h,051h,059h,000h,04fh,041h,04dh,051h,055h,0feh,04eh	; 6034  ..EA[.QY.OAMQU.N
	defb 04fh,003h,052h,066h,069h,04fh,000h,0e2h,04ah,06dh,005h,041h,06bh,064h,068h,0feh	; 6044  O.RfiO..Jm.Akdh.
	defb 06eh,0c7h,0d2h,067h,0e2h,06fh,059h,003h,045h,067h,000h,057h,066h,042h,04eh,042h	; 6054  n..g.oY.Eg.WfBNB
	defb 04fh,003h,03ch,0feh,0f6h,09ah,020h,07ch,003h,000h,03bh,0c9h,045h,000h,09bh,078h	; 6064  O.<... |....E..x
	defb 052h,003h,062h,000h,040h,068h,058h,045h,04bh,066h,03ch,0ffh	; 6074  R.b.@hXEKf<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6080: 1 palabras: los mensajes de la sala 13 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6080..0x6082  (2 bytes)
DATA_mensajes_24_6080:
	defb 082h,060h	; 6080

; ----------------------------------------------------------------------
; DATOS mensaje_24_6082: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (62
;   bytes)
;   0x6082..0x60c0  (62 bytes)
DATA_mensaje_24_6082:
	defb 0f8h,03bh,041h,067h,043h,058h,000h,049h,04bh,003h,05eh,058h,000h,052h,05eh,043h	; 6082  ..AgCX.IK.^X.R^C
	defb 05eh,052h,003h,0feh,04ah,06dh,059h,003h,04bh,045h,003h,000h,045h,045h,0a6h,052h	; 6092  ^R..JmY.KE..EE.R
	defb 041h,068h,06dh,04fh,003h,045h,003h,0feh,04eh,049h,045h,066h,000h,04ah,046h,059h	; 60a2  AhmO.E..NIEf.JFY
	defb 000h,047h,04ch,003h,069h,044h,050h,052h,068h,06dh,04fh,003h,03ch,0ffh	; 60b2  .GL.iDPRhmO.<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_60C0: 1 palabras: los mensajes de la sala 16 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x60c0..0x60c2  (2 bytes)
DATA_mensajes_24_60C0:
	defb 0c2h,060h	; 60c0

; ----------------------------------------------------------------------
; DATOS mensaje_24_60C2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x60c2..0x60df  (29 bytes)
DATA_mensaje_24_60C2:
	defb 0f8h,03bh,049h,049h,058h,000h,05fh,04ch,003h,042h,05fh,055h,059h,000h,0c9h,045h	; 60c2  ..IIX._L.B_UY..E
	defb 0feh,04ch,06dh,052h,003h,041h,068h,065h,042h,04fh,003h,03ch,0ffh	; 60d2  .LmR.AheBO.<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_60DF: 1 palabras: los mensajes de la sala 35 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x60df..0x60e1  (2 bytes)
DATA_mensajes_24_60DF:
	defb 0e1h,060h	; 60df

; ----------------------------------------------------------------------
; DATOS mensaje_24_60E1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0x60e1..0x60ed  (12 bytes)
DATA_mensaje_24_60E1:
	defb 0fbh,03bh,06eh,08ch,099h,07bh,050h,05dh,042h,06fh,03ch,0ffh	; 60e1  ..n..{P]Bo<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_60ED: 4 palabras: los mensajes de la sala 36 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (8
;   bytes)
;   0x60ed..0x60f5  (8 bytes)
DATA_mensajes_24_60ED:
	defb 0f5h,060h	; 60ed
	defb 010h,061h	; 60ef
	defb 035h,061h	; 60f1
	defb 049h,061h	; 60f3

; ----------------------------------------------------------------------
; DATOS mensaje_24_60F5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0x60f5..0x6110  (27 bytes)
DATA_mensaje_24_60F5:
	defb 0f8h,03bh,049h,049h,059h,000h,06bh,052h,066h,000h,092h,077h,003h,096h,04bh,045h	; 60f5  ..IIY.kRf..w..KE
	defb 0feh,053h,044h,069h,05eh,05ch,06dh,052h,003h,03ch,0ffh	; 6105  .SDi^\mR.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6110: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (37
;   bytes)
;   0x6110..0x6135  (37 bytes)
DATA_mensaje_24_6110:
	defb 0f8h,03bh,049h,069h,059h,000h,08bh,097h,020h,089h,004h,07ch,052h,003h,06dh,054h	; 6110  ..IiY... ..|R.mT
	defb 006h,0feh,05dh,054h,000h,053h,003h,042h,04eh,003h,000h,0b7h,041h,051h,048h,054h	; 6120  ..]T.S.BN...AQHT
	defb 059h,069h,063h,03ch,0ffh	; 6130

; ----------------------------------------------------------------------
; DATOS mensaje_24_6135: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (20
;   bytes)
;   0x6135..0x6149  (20 bytes)
DATA_mensaje_24_6135:
	defb 0f8h,03bh,053h,044h,0a6h,052h,062h,066h,0a6h,052h,000h,065h,06ah,04bh,0a4h,044h	; 6135  ..SD.Rbf.R.ejK.D
	defb 05eh,04ch,03ch,0ffh	; 6145

; ----------------------------------------------------------------------
; DATOS mensaje_24_6149: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (148
;   bytes)
;   0x6149..0x61dd  (148 bytes)
DATA_mensaje_24_6149:
	defb 0fch,03bh,053h,044h,068h,055h,059h,000h,053h,003h,042h,04ch,069h,059h,003h,000h	; 6149  ..SDhUY.S.BLiY..
	defb 041h,041h,058h,002h,03ch,0f8h,03bh,08bh,097h,020h,089h,004h,07ch,045h,003h,000h	; 6159  AAX.<.... ..|E..
	defb 05ah,051h,065h,042h,04fh,003h,04ch,054h,006h,0feh,052h,003h,062h,000h,08bh,097h	; 6169  ZQeBO.LT..R.b...
	defb 020h,089h,004h,07ch,059h,000h,04eh,042h,000h,045h,06dh,04fh,06dh,055h,0feh,04ah	; 6179   ..|Y.NB.EmOmU.J
	defb 04bh,040h,048h,003h,066h,069h,05eh,05ch,06dh,006h,000h,04fh,053h,043h,059h,003h	; 6189  K@H.fi^\m..OSCY.
	defb 00ah,00ah,0fdh,040h,04bh,06ch,000h,047h,04bh,003h,041h,052h,04bh,062h,04fh,000h	; 6199  ...@Kl.GK.ARKbO.
	defb 092h,077h,003h,096h,06ch,0feh,04fh,04ch,048h,068h,053h,045h,005h,0c9h,045h,000h	; 61a9  .w..l.OLHhSE..E.
	defb 04bh,06dh,04dh,051h,054h,049h,053h,06ch,0feh,04bh,052h,062h,066h,06bh,06dh,053h	; 61b9  KmMQTISl.KRbfkmS
	defb 000h,0bah,0ddh,04ah,06dh,055h,059h,0feh,040h,048h,003h,066h,069h,05eh,05ch,06dh	; 61c9  ...JmUY.@H.fi^\m
	defb 058h,063h,03ch,0ffh	; 61d9

; ----------------------------------------------------------------------
; DATOS mensajes_24_61DD: 1 palabras: los mensajes de la sala 44 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x61dd..0x61df  (2 bytes)
DATA_mensajes_24_61DD:
	defb 0dfh,061h	; 61dd

; ----------------------------------------------------------------------
; DATOS mensaje_24_61DF: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (40
;   bytes)
;   0x61df..0x6207  (40 bytes)
DATA_mensaje_24_61DF:
	defb 0f8h,03bh,0f7h,0fch,04ah,06dh,000h,049h,049h,058h,000h,041h,067h,043h,055h,059h	; 61df  ....Jm.IIX.AgCUY
	defb 0feh,044h,04eh,06ah,04bh,041h,000h,045h,041h,05bh,003h,051h,045h,003h,000h,04ch	; 61ef  .DNjKA.EA[.QE..L
	defb 06dh,052h,003h,041h,05eh,04ch,03ch,0ffh	; 61ff  mR.A^L<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6207: 2 palabras: los mensajes de la sala 45 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x6207..0x620b  (4 bytes)
DATA_mensajes_24_6207:
	defb 00bh,062h	; 6207
	defb 02bh,062h	; 6209

; ----------------------------------------------------------------------
; DATOS mensaje_24_620B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x620b..0x622b  (32 bytes)
DATA_mensaje_24_620B:
	defb 0f8h,03bh,045h,041h,05bh,003h,051h,045h,003h,000h,041h,067h,043h,058h,0deh,058h	; 620b  ..EA[.QE..AgCX.X
	defb 000h,049h,04bh,003h,05eh,055h,0feh,045h,047h,069h,052h,041h,068h,065h,03ch,0ffh	; 621b  .IK.^U.EGiRAhe<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_622B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0x622b..0x624f  (36 bytes)
DATA_mensaje_24_622B:
	defb 0f8h,03bh,041h,067h,043h,055h,000h,04ch,060h,000h,045h,041h,05bh,003h,051h,059h	; 622b  ..AgCU.L`.EA[.QY
	defb 0feh,044h,04eh,066h,047h,000h,018h,0bah,0c1h,0c5h,058h,011h,0bah,052h,003h,04bh	; 623b  .DNfG.....X..R.K
	defb 0a5h,042h,03ch,0ffh	; 624b

; ----------------------------------------------------------------------
; DATOS mensajes_24_624F: 13 palabras: los mensajes de la sala 48 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (26 bytes)
;   0x624f..0x6269  (26 bytes)
DATA_mensajes_24_624F:
	defb 069h,062h	; 624f
	defb 07ch,062h	; 6251
	defb 09fh,062h	; 6253
	defb 0a9h,062h	; 6255
	defb 0e2h,062h	; 6257
	defb 00dh,063h	; 6259
	defb 02ch,063h	; 625b
	defb 0cbh,063h	; 625d
	defb 033h,064h	; 625f
	defb 049h,064h	; 6261
	defb 076h,064h	; 6263
	defb 0b3h,064h	; 6265
	defb 023h,065h	; 6267

; ----------------------------------------------------------------------
; DATOS mensaje_24_6269: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x6269..0x627c  (19 bytes)
DATA_mensaje_24_6269:
	defb 0fbh,03bh,05fh,04ch,003h,042h,05fh,055h,000h,0c9h,045h,000h,041h,068h,06bh,065h	; 6269  .._L.B_U..E.Ahke
	defb 03ch,0fah,005h	; 6279

; ----------------------------------------------------------------------
; DATOS mensaje_24_627C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (35
;   bytes)
;   0x627c..0x629f  (35 bytes)
DATA_mensaje_24_627C:
	defb 0fch,03bh,049h,049h,059h,000h,0c9h,053h,041h,042h,000h,05fh,04ch,003h,042h,05fh	; 627c  ..IIY..SAB._L.B_
	defb 04fh,003h,041h,002h,03ch,0feh,0f8h,03bh,074h,083h,079h,05fh,04ch,003h,042h,05fh	; 628c  O.A.<...t.y_L.B_
	defb 04ah,03ch,0ffh	; 629c

; ----------------------------------------------------------------------
; DATOS mensaje_24_629F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (10
;   bytes)
;   0x629f..0x62a9  (10 bytes)
DATA_mensaje_24_629F:
	defb 0fbh,03bh,085h,09dh,076h,003h,0aeh,065h,03ch,0ffh	; 629f  ....v..e<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_62A9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (57
;   bytes)
;   0x62a9..0x62e2  (57 bytes)
DATA_mensaje_24_62A9:
	defb 0fbh,03bh,0c9h,045h,000h,04ah,043h,054h,041h,0bbh,06ch,000h,04bh,052h,041h,068h	; 62a9  ...E.JCTA.l.KRAh
	defb 06bh,057h,006h,0ech,06dh,04fh,003h,000h,07ah,075h,084h,058h,065h,042h,054h,000h	; 62b9  kW..mO..zu.XeBT.
	defb 0b5h,06ch,04bh,052h,068h,03ch,0f8h,03bh,0bah,058h,049h,053h,000h,045h,0a6h,052h	; 62c9  .lKRh<...XIS.E.R
	defb 055h,000h,049h,06ah,04ch,054h,065h,03ch,0ffh	; 62d9  U.IjLTe<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_62E2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (43
;   bytes)
;   0x62e2..0x630d  (43 bytes)
DATA_mensaje_24_62E2:
	defb 0f8h,03bh,049h,058h,053h,042h,067h,000h,074h,099h,059h,000h,074h,083h,079h,058h	; 62e2  ..IXSBg.t.Y.t.yX
	defb 0feh,085h,09dh,076h,003h,0aeh,04fh,003h,065h,03ch,0feh,0fch,03bh,0b7h,04bh,0a5h	; 62f2  ...v..O.e<....K.
	defb 047h,0bch,041h,000h,093h,081h,04fh,003h,054h,03ch,0ffh	; 6302  G.A...O.T<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_630D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (31
;   bytes)
;   0x630d..0x632c  (31 bytes)
DATA_mensaje_24_630D:
	defb 0f8h,03bh,074h,099h,06ch,000h,0b1h,0a6h,052h,000h,04fh,05ch,003h,052h,062h,0feh	; 630d  ..t.l...R.O\.Rb.
	defb 044h,041h,04bh,047h,054h,041h,053h,000h,0dbh,042h,048h,053h,003h,03ch,0ffh	; 631d  DAKGTAS..BHS.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_632C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (159
;   bytes)
;   0x632c..0x63cb  (159 bytes)
DATA_mensaje_24_632C:
	defb 0f8h,03bh,074h,099h,058h,000h,0cah,06ch,000h,046h,041h,052h,047h,069h,065h,006h	; 632c  ..t.X..l.FARGie.
	defb 0feh,074h,099h,059h,000h,074h,09dh,084h,045h,003h,06bh,058h,000h,06eh,08eh,020h	; 633c  .t.Y.t..E.kX.n.
	defb 08eh,06fh,0a6h,052h,0d0h,058h,0d6h,058h,085h,09dh,076h,003h,0aeh,053h,000h,050h	; 634c  .o.R.X.X..v..S.P
	defb 045h,058h,000h,04ch,041h,06ah,06ch,0b0h,0a6h,052h,000h,05bh,003h,06dh,051h,042h	; 635c  EX.LAjl..R.[.mQB
	defb 000h,04bh,052h,04fh,06dh,04fh,003h,006h,0fdh,04eh,04bh,052h,000h,049h,058h,0b6h	; 636c  .KROmO...NKR.IX.
	defb 000h,08bh,004h,09ah,08dh,004h,020h,07ch,003h,058h,052h,045h,003h,05fh,06ch,04fh	; 637c  ...... |.XRE._lO
	defb 003h,04bh,04fh,0a6h,046h,067h,000h,05ch,06dh,04bh,003h,045h,003h,000h,054h,041h	; 638c  .KO.Fg.\mK.E..TA
	defb 06dh,04fh,003h,03ch,0fdh,0fch,03bh,049h,058h,0bbh,052h,003h,000h,065h,047h,000h	; 639c  mO.<...IX.R..eG.
	defb 08bh,004h,09ah,08dh,004h,020h,07ch,003h,04bh,04fh,054h,03ch,0fbh,03bh,0f7h,0fch	; 63ac  ..... |.KOT<....
	defb 059h,000h,04fh,003h,020h,0a6h,052h,066h,0a6h,04bh,0a3h,041h,001h,03ch,0ffh	; 63bc  Y.O. .Rf.K.A.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_63CB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (104
;   bytes)
;   0x63cb..0x6433  (104 bytes)
DATA_mensaje_24_63CB:
	defb 0fch,03bh,065h,04bh,000h,04bh,003h,0a6h,053h,000h,04bh,052h,06ah,065h,006h,000h	; 63cb  ..eK.K..S.KRje..
	defb 053h,0a6h,053h,0a6h,04eh,067h,0a3h,01dh,001h,000h,040h,0a6h,000h,063h,05bh,003h	; 63db  S.S.Ng....@..c[.
	defb 048h,04fh,03ch,0feh,0f8h,03bh,0bah,045h,003h,000h,04bh,06dh,048h,06dh,055h,000h	; 63eb  HO<....E..KmHmU.
	defb 0cah,04bh,052h,068h,058h,055h,0feh,076h,09dh,076h,003h,0aeh,04ch,047h,041h,054h	; 63fb  .KRhXU.v.v..LGAT
	defb 06dh,045h,000h,04ch,068h,054h,065h,006h,0fdh,04fh,003h,041h,04fh,041h,000h,074h	; 640b  mE.LhTe..O.AOA.t
	defb 099h,059h,000h,076h,09dh,076h,003h,0aeh,04bh,003h,0a3h,054h,041h,0feh,085h,09dh	; 641b  .Y.v.v..K..TA...
	defb 076h,003h,0aeh,04fh,003h,001h,03ch,0ffh	; 642b  v..O..<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6433: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x6433..0x6449  (22 bytes)
DATA_mensaje_24_6433:
	defb 0fch,03bh,06bh,045h,0a6h,04fh,006h,000h,074h,099h,045h,003h,000h,0c9h,053h,045h	; 6433  ..kE.O..t.E...SE
	defb 04bh,065h,042h,001h,03ch,0ffh	; 6443

; ----------------------------------------------------------------------
; DATOS mensaje_24_6449: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (45
;   bytes)
;   0x6449..0x6476  (45 bytes)
DATA_mensaje_24_6449:
	defb 0f8h,03bh,049h,069h,059h,000h,0c9h,04fh,003h,041h,002h,03ch,0feh,0fch,03bh,08eh	; 6449  ..IiY..O.A.<....
	defb 020h,08eh,045h,066h,058h,000h,05ch,06dh,04bh,003h,04fh,003h,065h,03ch,0feh,0f8h	; 6459   .EfX.\mK.O.e<..
	defb 03bh,083h,003h,0afh,076h,020h,020h,020h,020h,020h,09dh,03ch,0ffh	; 6469  ....v     .<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6476: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (61
;   bytes)
;   0x6476..0x64b3  (61 bytes)
DATA_mensaje_24_6476:
	defb 0f8h,03bh,05bh,060h,05bh,060h,00ah,00ah,0c9h,053h,001h,001h,03ch,0feh,0fbh,03bh	; 6476  ..[`[`...S..<...
	defb 0c9h,052h,000h,045h,041h,052h,040h,068h,058h,002h,03ch,0feh,0f8h,03bh,052h,003h	; 6486  .R.EAR@hX.<...R.
	defb 05ch,05ch,000h,0f7h,0fch,000h,049h,069h,06ch,08eh,020h,08eh,055h,0feh,06bh,04fh	; 6496  \\....Iil. .U.kO
	defb 04bh,052h,044h,041h,052h,047h,069h,054h,041h,045h,03ch,0fah,00bh	; 64a6  KRDARGiTAE<..

; ----------------------------------------------------------------------
; DATOS mensaje_24_64B3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (112
;   bytes)
;   0x64b3..0x6523  (112 bytes)
DATA_mensaje_24_64B3:
	defb 0fch,03bh,065h,045h,0a6h,04fh,054h,03ch,0feh,0fbh,03bh,042h,066h,063h,05eh,04bh	; 64b3  ..eE.OT<...Bfc^K
	defb 041h,054h,01dh,006h,07eh,072h,07bh,07eh,072h,0eeh,052h,003h,001h,03ch,0fch,03bh	; 64c3  AT..~r{~r.R..<..
	defb 0c9h,04fh,003h,002h,000h,044h,0b6h,000h,04fh,003h,069h,045h,055h,000h,045h,04fh	; 64d3  .O...D..O.iEU.EO
	defb 0dbh,041h,0feh,04bh,052h,06dh,058h,045h,002h,000h,00ah,00ah,06bh,045h,0a6h,04fh	; 64e3  .A.KRmXE....kE.O
	defb 001h,001h,03ch,0fdh,0fbh,03bh,083h,003h,076h,0afh,03ch,0feh,0fch,03bh,080h,0aeh	; 64f3  ..<.....v.<.....
	defb 089h,0afh,075h,071h,000h,04fh,003h,06ah,001h,002h,03ch,0feh,0fbh,03bh,040h,067h	; 6503  ..uq.O.j..<...@g
	defb 045h,003h,053h,042h,006h,000h,044h,05dh,003h,043h,052h,044h,047h,06bh,03ch,0ffh	; 6513  E.SB..D].CRDGk<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6523: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x6523..0x6534  (17 bytes)
DATA_mensaje_24_6523:
	defb 0f8h,03bh,0f7h,0fch,000h,0f7h,0fbh,000h,040h,067h,045h,003h,053h,042h,001h,03ch	; 6523  ........@gE.SB.<
	defb 0ffh	; 6533

; ----------------------------------------------------------------------
; DATOS mensajes_24_6534: 14 palabras: los mensajes de la sala 59 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (28 bytes)
;   0x6534..0x6550  (28 bytes)
DATA_mensajes_24_6534:
	defb 050h,065h	; 6534
	defb 0b3h,065h	; 6536
	defb 0e4h,065h	; 6538
	defb 016h,066h	; 653a
	defb 047h,066h	; 653c
	defb 072h,066h	; 653e
	defb 07eh,066h	; 6540
	defb 0bch,066h	; 6542
	defb 0cfh,066h	; 6544
	defb 0e2h,066h	; 6546
	defb 0f3h,066h	; 6548
	defb 024h,067h	; 654a
	defb 03ah,067h	; 654c
	defb 066h,067h	; 654e

; ----------------------------------------------------------------------
; DATOS mensaje_24_6550: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (99
;   bytes)
;   0x6550..0x65b3  (99 bytes)
DATA_mensaje_24_6550:
	defb 0f8h,03bh,0c6h,059h,000h,07dh,020h,08bh,003h,06ch,051h,045h,04ah,053h,003h,068h	; 6550  ...Y.} ..lQEJS.h
	defb 062h,058h,052h,003h,04ch,006h,0fdh,06eh,0c9h,045h,04ch,068h,06fh,058h,0deh,045h	; 6560  bXR.L..n.ELhoX.E
	defb 066h,000h,044h,049h,058h,05fh,058h,0feh,07dh,020h,08bh,003h,05dh,042h,05dh,042h	; 6570  f.DIX_X.} ..]B]B
	defb 06ch,000h,044h,043h,066h,05ah,003h,0d3h,04ah,041h,0feh,049h,058h,077h,003h,097h	; 6580  l.DCfZ..JA.IXw..
	defb 020h,077h,0c5h,0c0h,055h,059h,000h,0c6h,058h,05dh,045h,055h,0feh,018h,0bah,005h	; 6590   w..UY..X]EU....
	defb 07dh,020h,08bh,003h,06ch,000h,0dch,042h,062h,058h,045h,003h,000h,044h,067h,05eh	; 65a0  } ..l..BbXE..Dg^
	defb 04ch,03ch,0ffh	; 65b0

; ----------------------------------------------------------------------
; DATOS mensaje_24_65B3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0x65b3..0x65e4  (49 bytes)
DATA_mensaje_24_65B3:
	defb 0f8h,03bh,082h,020h,08bh,004h,06ch,000h,07dh,0afh,083h,04bh,052h,0d3h,04ah,041h	; 65b3  ... ..l.}..KR.JA
	defb 006h,0feh,04bh,003h,0a4h,06dh,05ah,003h,045h,003h,000h,052h,003h,046h,04fh,066h	; 65c3  ..K..mZ.E..R.FOf
	defb 000h,032h,025h,034h,076h,020h,06ch,0feh,044h,04bh,052h,0d3h,04ah,041h,03ch,0fah	; 65d3  .2%4v l.DKR.JA<.
	defb 010h	; 65e3

; ----------------------------------------------------------------------
; DATOS mensaje_24_65E4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0x65e4..0x6616  (50 bytes)
DATA_mensaje_24_65E4:
	defb 0f8h,03bh,082h,003h,0a8h,07ch,077h,06ch,000h,07dh,0afh,083h,04bh,052h,0d3h,04ah	; 65e4  .....|wl.}..KR.J
	defb 041h,006h,0feh,04bh,003h,0a4h,06dh,05ah,003h,045h,003h,000h,052h,003h,046h,04fh	; 65f4  A..K..mZ.E..R.FO
	defb 066h,000h,032h,025h,034h,076h,020h,06ch,0feh,044h,04bh,052h,0d3h,04ah,041h,03ch	; 6604  f.2%4v l.DKR.JA<
	defb 0fah,011h	; 6614

; ----------------------------------------------------------------------
; DATOS mensaje_24_6616: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0x6616..0x6647  (49 bytes)
DATA_mensaje_24_6616:
	defb 0f8h,03bh,04fh,04fh,003h,0b3h,058h,000h,07dh,020h,08bh,003h,058h,000h,045h,047h	; 6616  ..OO..X.} ..X.EG
	defb 055h,06dh,06ch,0feh,04bh,05eh,04ch,058h,052h,003h,000h,062h,042h,011h,053h,003h	; 6626  Uml.K^LXR..bB.S.
	defb 000h,032h,025h,034h,076h,020h,06ch,0feh,044h,04bh,052h,0d3h,04ah,041h,03ch,0fah	; 6636  .2%4v l.DKR.JA<.
	defb 014h	; 6646

; ----------------------------------------------------------------------
; DATOS mensaje_24_6647: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (43
;   bytes)
;   0x6647..0x6672  (43 bytes)
DATA_mensaje_24_6647:
	defb 0f8h,03bh,05bh,003h,04bh,003h,000h,07dh,020h,08bh,003h,045h,003h,000h,044h,06bh	; 6647  ..[.K..} ..E..Dk
	defb 067h,05eh,04bh,04fh,006h,0feh,044h,0b7h,06ch,000h,051h,048h,052h,000h,0e9h,06ch	; 6657  g^KO..D.l.QHR..l
	defb 000h,051h,051h,003h,048h,052h,0d3h,04ah,041h,03ch,0ffh	; 6667  .QQ.HR.JA<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6672: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0x6672..0x667e  (12 bytes)
DATA_mensaje_24_6672:
	defb 0f8h,03bh,044h,0b7h,06ch,000h,051h,048h,052h,001h,03ch,0ffh	; 6672  ..D.l.QHR.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_667E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (62
;   bytes)
;   0x667e..0x66bc  (62 bytes)
DATA_mensaje_24_667E:
	defb 0f8h,03bh,04fh,04fh,003h,0b3h,058h,000h,07dh,020h,08bh,003h,058h,000h,045h,047h	; 667e  ..OO..X.} ..X.EG
	defb 055h,06dh,06ch,0feh,04bh,05eh,04ch,058h,052h,003h,000h,082h,020h,08bh,004h,06ch	; 668e  Uml.K^LXR... ..l
	defb 000h,05eh,046h,062h,053h,003h,04bh,052h,0feh,062h,042h,011h,053h,003h,000h,032h	; 669e  .^FbS.KR.bB.S..2
	defb 025h,034h,076h,020h,06ch,044h,04bh,052h,0d3h,04ah,041h,03ch,0fah,013h	; 66ae  %4v lDKR.JA<..

; ----------------------------------------------------------------------
; DATOS mensaje_24_66BC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x66bc..0x66cf  (19 bytes)
DATA_mensaje_24_66BC:
	defb 0f8h,03bh,05eh,04ch,003h,000h,07dh,020h,08bh,003h,04ch,068h,049h,053h,04bh,003h	; 66bc  ..^L..} ..LhISK.
	defb 0a3h,03ch,0ffh	; 66cc

; ----------------------------------------------------------------------
; DATOS mensaje_24_66CF: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x66cf..0x66e2  (19 bytes)
DATA_mensaje_24_66CF:
	defb 0f8h,03bh,07dh,020h,08bh,003h,055h,000h,04bh,0a6h,059h,004h,041h,04bh,05eh,04bh	; 66cf  ..} ..U.K.Y.AK^K
	defb 04fh,03ch,0ffh	; 66df

; ----------------------------------------------------------------------
; DATOS mensaje_24_66E2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x66e2..0x66f3  (17 bytes)
DATA_mensaje_24_66E2:
	defb 0f8h,03bh,032h,025h,034h,076h,020h,06ch,044h,04bh,052h,0d3h,04ah,041h,03ch,0fah	; 66e2  ..2%4v lDKR.JA<.
	defb 01fh	; 66f2

; ----------------------------------------------------------------------
; DATOS mensaje_24_66F3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0x66f3..0x6724  (49 bytes)
DATA_mensaje_24_66F3:
	defb 0f8h,03bh,04fh,04fh,003h,0b3h,058h,000h,07dh,020h,08bh,003h,058h,000h,045h,047h	; 66f3  ..OO..X.} ..X.EG
	defb 055h,06dh,06ch,0feh,04bh,05eh,04ch,058h,052h,003h,000h,062h,042h,011h,053h,003h	; 6703  Uml.K^LXR..bB.S.
	defb 000h,032h,025h,034h,076h,020h,06ch,0feh,044h,04bh,052h,0d3h,04ah,041h,03ch,0fah	; 6713  .2%4v l.DKR.JA<.
	defb 020h	; 6723

; ----------------------------------------------------------------------
; DATOS mensaje_24_6724: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x6724..0x673a  (22 bytes)
DATA_mensaje_24_6724:
	defb 0f8h,03bh,051h,046h,003h,058h,000h,049h,053h,059h,003h,06ch,091h,092h,04bh,052h	; 6724  ..QF.X.ISY.l..KR
	defb 0d3h,04ah,041h,03ch,0fah,029h	; 6734

; ----------------------------------------------------------------------
; DATOS mensaje_24_673A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (44
;   bytes)
;   0x673a..0x6766  (44 bytes)
DATA_mensaje_24_673A:
	defb 0f8h,03bh,062h,042h,011h,053h,003h,000h,040h,041h,049h,053h,059h,003h,06ch,0c8h	; 673a  ..bB.S..@AISY.l.
	defb 041h,05eh,04ch,058h,052h,003h,0feh,040h,054h,04fh,058h,091h,092h,053h,000h,052h	; 674a  A^LXR..@TOX..S.R
	defb 066h,04bh,040h,06bh,04dh,052h,0d3h,04ah,041h,03ch,0fah,02ah	; 675a  fK@kMR.JA<.*

; ----------------------------------------------------------------------
; DATOS mensaje_24_6766: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (42
;   bytes)
;   0x6766..0x6790  (42 bytes)
DATA_mensaje_24_6766:
	defb 0f8h,03bh,04eh,058h,091h,092h,059h,000h,04fh,041h,04dh,051h,055h,000h,05dh,045h	; 6766  ..NX..Y.OAMQU.]E
	defb 06dh,0feh,04bh,052h,044h,041h,052h,0d3h,04ah,041h,006h,000h,052h,003h,059h,000h	; 6776  m.KRDAR.JA..R.Y.
	defb 044h,0b7h,06ch,0feh,051h,048h,052h,001h,03ch,0ffh	; 6786  D.l.QHR.<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6790: 10 palabras: los mensajes de la sala 62 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (20 bytes)
;   0x6790..0x67a4  (20 bytes)
DATA_mensajes_24_6790:
	defb 0a4h,067h	; 6790
	defb 0cah,067h	; 6792
	defb 004h,068h	; 6794
	defb 024h,068h	; 6796
	defb 03ah,068h	; 6798
	defb 04fh,068h	; 679a
	defb 065h,068h	; 679c
	defb 081h,068h	; 679e
	defb 0b2h,068h	; 67a0
	defb 0ebh,068h	; 67a2

; ----------------------------------------------------------------------
; DATOS mensaje_24_67A4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (38
;   bytes)
;   0x67a4..0x67ca  (38 bytes)
DATA_mensaje_24_67A4:
	defb 0fbh,03bh,051h,045h,069h,04fh,0bbh,06ch,04bh,052h,041h,068h,06bh,057h,006h,000h	; 67a4  ..QEiO.lKRAhkW..
	defb 0b5h,045h,003h,0feh,044h,050h,049h,06dh,052h,003h,000h,05dh,05dh,062h,000h,049h	; 67b4  .E..DPImR..]]b.I
	defb 048h,052h,068h,06bh,03ch,0ffh	; 67c4

; ----------------------------------------------------------------------
; DATOS mensaje_24_67CA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (58
;   bytes)
;   0x67ca..0x6804  (58 bytes)
DATA_mensaje_24_67CA:
	defb 0fbh,03bh,0b2h,067h,0a5h,047h,005h,0b7h,067h,0a5h,047h,005h,053h,003h,042h,053h	; 67ca  ...g.G..g.G.S.BS
	defb 047h,0f0h,0feh,067h,04dh,041h,005h,04ch,05ch,003h,052h,045h,003h,000h,048h,003h	; 67da  G..gMA.L\.RE..H.
	defb 06dh,045h,041h,055h,0feh,04fh,0a6h,04bh,052h,041h,068h,06bh,006h,053h,052h,062h	; 67ea  mEAU.O.KRAhk.SRb
	defb 000h,040h,05bh,003h,054h,041h,06bh,057h,03ch,0ffh	; 67fa  .@[.TAkW<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6804: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x6804..0x6824  (32 bytes)
DATA_mensaje_24_6804:
	defb 0f8h,03bh,04ch,041h,05fh,06dh,0eah,0ddh,04fh,003h,048h,059h,000h,049h,069h,041h	; 6804  ..LA_m..O.HY.IiA
	defb 04bh,003h,0a5h,042h,0feh,0b1h,066h,054h,041h,052h,003h,05dh,04bh,041h,03ch,0ffh	; 6814  K..B..fTAR.]KA<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6824: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x6824..0x683a  (22 bytes)
DATA_mensaje_24_6824:
	defb 0f8h,03bh,062h,042h,000h,04bh,003h,0a4h,042h,05bh,003h,06dh,000h,049h,046h,0b0h	; 6824  ..bB.K..B[.m.IF.
	defb 06bh,069h,052h,068h,03ch,0ffh	; 6834

; ----------------------------------------------------------------------
; DATOS mensaje_24_683A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x683a..0x684f  (21 bytes)
DATA_mensaje_24_683A:
	defb 0f8h,03bh,05dh,042h,001h,000h,049h,069h,059h,000h,067h,0a6h,059h,004h,067h,0a6h	; 683a  ..]B..IiY.g.Y.g.
	defb 059h,004h,001h,03ch,0ffh	; 684a

; ----------------------------------------------------------------------
; DATOS mensaje_24_684F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x684f..0x6865  (22 bytes)
DATA_mensaje_24_684F:
	defb 0f8h,03bh,062h,066h,043h,068h,062h,058h,059h,000h,0c9h,052h,003h,062h,000h,062h	; 684f  ..bfChbXY..R.b.b
	defb 066h,041h,05eh,04ch,03ch,0ffh	; 685f

; ----------------------------------------------------------------------
; DATOS mensaje_24_6865: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (28
;   bytes)
;   0x6865..0x6881  (28 bytes)
DATA_mensaje_24_6865:
	defb 0f8h,03bh,0c9h,062h,000h,04bh,054h,047h,052h,041h,041h,045h,066h,000h,04eh,0a6h	; 6865  ...b.KTGRAAEf.N.
	defb 053h,0feh,04bh,052h,044h,041h,052h,05dh,04bh,041h,03ch,0ffh	; 6875  S.KRDAR]KA<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6881: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0x6881..0x68b2  (49 bytes)
DATA_mensaje_24_6881:
	defb 0f8h,03bh,0c6h,045h,003h,000h,045h,051h,052h,000h,07dh,09dh,085h,09dh,053h,0feh	; 6881  ...E..EQR.}...S.
	defb 065h,059h,003h,069h,04fh,049h,053h,058h,040h,068h,000h,08bh,004h,09ah,082h,003h	; 6891  eY.iOISX@h......
	defb 0adh,020h,07ah,020h,058h,0feh,06eh,054h,045h,003h,04fh,06fh,052h,003h,04ch,03ch	; 68a1  . z X.nTE.OoR.L<
	defb 0ffh	; 68b1

; ----------------------------------------------------------------------
; DATOS mensaje_24_68B2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (57
;   bytes)
;   0x68b2..0x68eb  (57 bytes)
DATA_mensaje_24_68B2:
	defb 0f8h,03bh,092h,020h,085h,09dh,077h,003h,079h,020h,098h,045h,003h,045h,067h,005h	; 68b2  ... ..w.y .E.Eg.
	defb 048h,06dh,005h,0feh,04bh,0a4h,042h,046h,06dh,045h,003h,045h,067h,001h,000h,04fh	; 68c2  Hm..K.BFmE.Eg..O
	defb 003h,069h,045h,000h,041h,041h,0bah,0feh,041h,052h,04fh,066h,000h,04bh,0a5h,042h	; 68d2  .iE.AA..AROf.K.B
	defb 045h,041h,000h,04bh,052h,057h,0aah,03ch,0ffh	; 68e2  EA.KRW.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_68EB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0x68eb..0x690c  (33 bytes)
DATA_mensaje_24_68EB:
	defb 0f8h,03bh,0c6h,059h,000h,053h,003h,049h,058h,0bah,0ddh,054h,06dh,052h,003h,04bh	; 68eb  ...Y.S.IX..TmR.K
	defb 0a5h,042h,002h,0feh,04fh,003h,069h,045h,000h,044h,04bh,043h,052h,0a1h,01dh,03ch	; 68fb  .B..O.iE.DKCR..<
	defb 0ffh	; 690b

; ----------------------------------------------------------------------
; DATOS mensajes_24_690C: 1 palabras: los mensajes de la sala 66 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x690c..0x690e  (2 bytes)
DATA_mensajes_24_690C:
	defb 00eh,069h	; 690c

; ----------------------------------------------------------------------
; DATOS mensaje_24_690E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x690e..0x6925  (23 bytes)
DATA_mensaje_24_690E:
	defb 0f8h,03bh,0d5h,055h,059h,000h,040h,045h,04ch,003h,058h,0ddh,045h,003h,000h,040h	; 690e  ...UY.@EL.X.E..@
	defb 068h,066h,04bh,041h,065h,03ch,0ffh	; 691e

; ----------------------------------------------------------------------
; DATOS mensajes_24_6925: 1 palabras: los mensajes de la sala 94 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6925..0x6927  (2 bytes)
DATA_mensajes_24_6925:
	defb 027h,069h	; 6925

; ----------------------------------------------------------------------
; DATOS mensaje_24_6927: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (11
;   bytes)
;   0x6927..0x6932  (11 bytes)
DATA_mensaje_24_6927:
	defb 0fbh,03bh,06eh,07ch,07fh,0afh,08bh,0f1h,06fh,03ch,0ffh	; 6927  ..n|....o<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6932: 1 palabras: los mensajes de la sala 108 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6932..0x6934  (2 bytes)
DATA_mensajes_24_6932:
	defb 034h,069h	; 6932

; ----------------------------------------------------------------------
; DATOS mensaje_24_6934: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x6934..0x6941  (13 bytes)
DATA_mensaje_24_6934:
	defb 0fbh,03bh,06eh,097h,07dh,0afh,083h,050h,05dh,042h,06fh,03ch,0ffh	; 6934  ..n.}..P]Bo<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6941: 1 palabras: los mensajes de la sala 109 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6941..0x6943  (2 bytes)
DATA_mensajes_24_6941:
	defb 043h,069h	; 6941

; ----------------------------------------------------------------------
; DATOS mensaje_24_6943: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (77
;   bytes)
;   0x6943..0x6990  (77 bytes)
DATA_mensaje_24_6943:
	defb 0f8h,03bh,05fh,0b0h,041h,058h,000h,05fh,050h,05ah,003h,047h,000h,053h,05ah,003h	; 6943  .._.AX._PZ.G.SZ.
	defb 066h,06ch,053h,042h,067h,0feh,0f5h,05ch,000h,058h,05dh,003h,068h,000h,047h,062h	; 6953  flSBg..\.X].h.Gb
	defb 055h,000h,058h,067h,054h,04ah,041h,006h,0feh,0beh,0bfh,058h,000h,041h,0d4h,054h	; 6963  U.XgTJA....X.A.T
	defb 000h,043h,041h,064h,042h,045h,003h,000h,054h,06dh,04bh,003h,055h,050h,045h,066h	; 6973  .CAdBE..TmK.UPEf
	defb 06ch,000h,040h,04fh,043h,068h,052h,003h,040h,06ah,042h,03ch,0ffh	; 6983  l.@OChR.@jB<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6990: 1 palabras: los mensajes de la sala 124 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6990..0x6992  (2 bytes)
DATA_mensajes_24_6990:
	defb 092h,069h	; 6990

; ----------------------------------------------------------------------
; DATOS mensaje_24_6992: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (12
;   bytes)
;   0x6992..0x699e  (12 bytes)
DATA_mensaje_24_6992:
	defb 0fbh,03bh,06eh,074h,020h,098h,050h,05dh,042h,06fh,03ch,0ffh	; 6992  ..nt .P]Bo<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_699E: 1 palabras: los mensajes de la sala 121 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x699e..0x69a0  (2 bytes)
DATA_mensajes_24_699E:
	defb 0a0h,069h	; 699e

; ----------------------------------------------------------------------
; DATOS mensaje_24_69A0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (137
;   bytes)
;   0x69a0..0x6a29  (137 bytes)
DATA_mensaje_24_69A0:
	defb 0fbh,03bh,049h,049h,059h,000h,053h,003h,049h,045h,04bh,066h,002h,0feh,04fh,04bh	; 69a0  ..IIY.S.IEKf..OK
	defb 045h,000h,04ch,054h,058h,0deh,055h,000h,042h,062h,069h,052h,04bh,05eh,041h,0feh	; 69b0  E.LTX.U.BbiRK^A.
	defb 062h,042h,000h,07fh,003h,091h,045h,053h,000h,0dbh,0a6h,04fh,048h,053h,003h,006h	; 69c0  bB....ES...OHS..
	defb 0feh,053h,003h,042h,063h,066h,000h,04fh,04ch,045h,0a6h,04fh,05fh,04fh,041h,03ch	; 69d0  .S.Bcf.OLE.O_OA<
	defb 0fdh,0fch,03bh,08bh,070h,01dh,01dh,01dh,0afh,000h,065h,047h,000h,057h,04fh,006h	; 69e0  ....p.....eG.WO.
	defb 0feh,044h,063h,002h,000h,049h,049h,059h,000h,0f5h,0c0h,002h,000h,04eh,069h,055h	; 69f0  .Dc..IIY.....NiU
	defb 04bh,050h,0a3h,0feh,04ah,0a6h,05bh,004h,042h,048h,041h,04fh,003h,054h,040h,03ch	; 6a00  KP..J.[.BHAO.T@<
	defb 0fdh,0fbh,03bh,058h,06dh,0b7h,054h,049h,053h,000h,0c8h,0a6h,052h,054h,041h,052h	; 6a10  ...Xm.TIS...RTAR
	defb 003h,0feh,044h,046h,04fh,066h,002h,03ch,0ffh	; 6a20  ..DFOf.<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6A29: 7 palabras: los mensajes de la sala 130 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (14 bytes)
;   0x6a29..0x6a37  (14 bytes)
DATA_mensajes_24_6A29:
	defb 037h,06ah	; 6a29
	defb 078h,06ah	; 6a2b
	defb 0e5h,06ah	; 6a2d
	defb 0fch,06ah	; 6a2f
	defb 01eh,06bh	; 6a31
	defb 034h,06bh	; 6a33
	defb 04ch,06bh	; 6a35

; ----------------------------------------------------------------------
; DATOS mensaje_24_6A37: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (65
;   bytes)
;   0x6a37..0x6a78  (65 bytes)
DATA_mensaje_24_6A37:
	defb 0f8h,03bh,049h,049h,000h,012h,01dh,013h,057h,06dh,000h,0f1h,058h,0bah,0dah,045h	; 6a37  ..II....Wm..X..E
	defb 003h,0feh,051h,046h,003h,051h,046h,003h,053h,000h,0dch,0efh,06ch,000h,047h,066h	; 6a47  ..QF.QF.S...l.Gf
	defb 05eh,04bh,052h,0feh,041h,068h,06dh,052h,003h,04ch,03ch,0feh,0fch,03bh,0c1h,0c5h	; 6a57  ^KR.AhmR.L<.....
	defb 055h,000h,04ah,066h,06bh,069h,04fh,06dh,04fh,003h,06ah,042h,045h,002h,03ch,0fah	; 6a67  U.JfkiOmO.jBE.<.
	defb 006h	; 6a77

; ----------------------------------------------------------------------
; DATOS mensaje_24_6A78: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (109
;   bytes)
;   0x6a78..0x6ae5  (109 bytes)
DATA_mensaje_24_6A78:
	defb 0f8h,03bh,041h,043h,000h,04eh,042h,052h,003h,059h,054h,041h,06dh,052h,003h,04ch	; 6a78  ..AC.NBR.YTAmR.L
	defb 006h,0feh,042h,06bh,04ah,055h,065h,068h,053h,000h,079h,003h,077h,003h,06ch,000h	; 6a88  ..BkJUehS.y.w.l.
	defb 04ch,042h,059h,041h,04ch,068h,0feh,0bch,0c1h,058h,000h,04bh,0a4h,042h,046h,0a5h	; 6a98  LBYALh...X.K.BF.
	defb 042h,045h,003h,000h,040h,067h,00ah,00ah,0fdh,0bah,0dah,06ch,000h,05ah,046h,049h	; 6aa8  BE..@g.....l.ZFI
	defb 05fh,000h,04dh,06dh,058h,042h,04bh,052h,0feh,0bch,0c1h,058h,000h,04bh,059h,041h	; 6ab8  _.MmXBKR...X.KYA
	defb 0d3h,055h,000h,04bh,052h,041h,068h,0feh,066h,04bh,041h,058h,052h,003h,04ch,03ch	; 6ac8  .U.KRAh.fKAXR.L<
	defb 0fdh,0fch,03bh,0c9h,050h,0a4h,01dh,049h,053h,06ch,001h,03ch,0ffh	; 6ad8  ....P..ISl.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6AE5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x6ae5..0x6afc  (23 bytes)
DATA_mensaje_24_6AE5:
	defb 0f8h,03bh,053h,003h,042h,045h,000h,0f1h,0bah,06ch,000h,04ch,047h,041h,04fh,003h	; 6ae5  ..S.BE...l.LGAO.
	defb 04bh,052h,0d3h,04ah,041h,03ch,0ffh	; 6af5

; ----------------------------------------------------------------------
; DATOS mensaje_24_6AFC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0x6afc..0x6b1e  (34 bytes)
DATA_mensaje_24_6AFC:
	defb 0f8h,03bh,0f1h,0bah,059h,000h,05fh,06dh,054h,000h,062h,053h,003h,0a6h,052h,046h	; 6afc  ....Y._mT.bS..RF
	defb 05eh,04bh,04fh,006h,040h,067h,045h,003h,053h,042h,049h,003h,04ah,041h,05eh,04ch	; 6b0c  ^KO.@gE.SBI.JA^L
	defb 03ch,0ffh	; 6b1c

; ----------------------------------------------------------------------
; DATOS mensaje_24_6B1E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x6b1e..0x6b34  (22 bytes)
DATA_mensaje_24_6B1E:
	defb 0f8h,03bh,049h,049h,059h,000h,075h,08fh,074h,090h,012h,0c2h,04ah,05eh,058h,000h	; 6b1e  ..IIY.u.t...J^X.
	defb 0d5h,052h,003h,04ch,03ch,0ffh	; 6b2e

; ----------------------------------------------------------------------
; DATOS mensaje_24_6B34: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0x6b34..0x6b4c  (24 bytes)
DATA_mensaje_24_6B34:
	defb 0f8h,03bh,049h,058h,000h,044h,047h,059h,000h,0d4h,05ah,06ah,0ddh,055h,0feh,054h	; 6b34  ..IX.DGY..Zj.U.T
	defb 0a6h,052h,044h,067h,05eh,04ch,03ch,0ffh	; 6b44  .RDg^L<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6B4C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0x6b4c..0x6b67  (27 bytes)
DATA_mensaje_24_6B4C:
	defb 0f8h,03bh,049h,058h,000h,044h,047h,059h,000h,075h,08fh,074h,090h,012h,0c2h,04ah	; 6b4c  ..IX.DGY.u.t...J
	defb 05eh,058h,0feh,044h,05ch,063h,052h,003h,04ch,03ch,0ffh	; 6b5c  ^X.D\cR.L<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6B67: 6 palabras: los mensajes de la sala 131 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (12 bytes)
;   0x6b67..0x6b73  (12 bytes)
DATA_mensajes_24_6B67:
	defb 073h,06bh	; 6b67
	defb 093h,06bh	; 6b69
	defb 0adh,06bh	; 6b6b
	defb 0d2h,06bh	; 6b6d
	defb 013h,06ch	; 6b6f
	defb 07eh,06ch	; 6b71

; ----------------------------------------------------------------------
; DATOS mensaje_24_6B73: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x6b73..0x6b93  (32 bytes)
DATA_mensaje_24_6B73:
	defb 0f8h,03bh,0f7h,0fch,001h,000h,0f7h,0fbh,001h,0feh,044h,0b6h,04fh,050h,059h,000h	; 6b73  ..........D.OPY.
	defb 049h,058h,000h,05ch,063h,052h,003h,000h,0ech,056h,058h,04fh,003h,001h,03ch,0ffh	; 6b83  IX.\cR...VXO..<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6B93: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (26
;   bytes)
;   0x6b93..0x6bad  (26 bytes)
DATA_mensaje_24_6B93:
	defb 0f8h,03bh,0c6h,06ch,000h,049h,06bh,04ch,002h,0feh,051h,041h,055h,000h,050h,05eh	; 6b93  ...l.IkL..QAU.P^
	defb 065h,0a6h,04fh,045h,001h,000h,0f7h,0fch,03ch,0ffh	; 6ba3  e.OE....<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6BAD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (37
;   bytes)
;   0x6bad..0x6bd2  (37 bytes)
DATA_mensaje_24_6BAD:
	defb 0f8h,03bh,075h,003h,089h,089h,0afh,001h,000h,044h,04bh,047h,066h,000h,05eh,06dh	; 6bad  ..u......DKGf.^m
	defb 04bh,003h,0a4h,042h,0feh,052h,003h,062h,000h,04bh,065h,042h,053h,000h,041h,042h	; 6bbd  K..B.R.b.KeBS.AB
	defb 058h,045h,002h,03ch,0ffh	; 6bcd

; ----------------------------------------------------------------------
; DATOS mensaje_24_6BD2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (65
;   bytes)
;   0x6bd2..0x6c13  (65 bytes)
DATA_mensaje_24_6BD2:
	defb 0f8h,03bh,058h,04eh,003h,05fh,053h,003h,042h,067h,055h,000h,04bh,052h,063h,06ah	; 6bd2  ..XN._S.BgU.KRcj
	defb 042h,006h,0feh,0c6h,045h,003h,000h,049h,042h,040h,06dh,04bh,04fh,000h,053h,0a6h	; 6be2  B...E..IB@mKO.S.
	defb 052h,044h,046h,058h,0feh,0bah,0ddh,041h,05ah,003h,067h,000h,049h,003h,06ah,04bh	; 6bf2  RDFX...AZ.g.I.jK
	defb 000h,078h,003h,020h,090h,06ch,0feh,0b8h,04dh,052h,063h,068h,06bh,001h,03ch,0fah	; 6c02  .x. .l..MRchk.<.
	defb 01eh	; 6c12

; ----------------------------------------------------------------------
; DATOS mensaje_24_6C13: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (107
;   bytes)
;   0x6c13..0x6c7e  (107 bytes)
DATA_mensaje_24_6C13:
	defb 0f8h,03bh,065h,045h,06ah,042h,006h,000h,061h,041h,053h,003h,058h,000h,05fh,063h	; 6c13  ..eEjB..aAS.X._c
	defb 048h,003h,055h,0feh,044h,04bh,043h,052h,000h,063h,06ah,042h,001h,0feh,079h,003h	; 6c23  H.U.DKCR.cjB..y.
	defb 077h,003h,04ah,05eh,059h,000h,049h,058h,000h,077h,003h,097h,020h,077h,0c5h,0c0h	; 6c33  w.J^Y.IX.w.. w..
	defb 055h,0feh,0bah,0ddh,045h,003h,000h,04eh,06dh,04ah,003h,041h,04ch,068h,045h,046h	; 6c43  U...E..NmJ.ALhEF
	defb 003h,067h,0fdh,0ech,055h,059h,000h,04bh,054h,041h,058h,04fh,003h,001h,000h,0bah	; 6c53  .g..UY.KTAXO....
	defb 0ddh,058h,0f0h,055h,0feh,065h,0a6h,052h,000h,079h,003h,077h,003h,04ah,05eh,059h	; 6c63  .X.U.e.R.y.w.J^Y
	defb 000h,0e7h,046h,051h,051h,003h,048h,068h,001h,03ch,0ffh	; 6c73  ..FQQ.Hh.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6C7E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x6c7e..0x6c94  (22 bytes)
DATA_mensaje_24_6C7E:
	defb 0f8h,03bh,049h,069h,052h,003h,000h,0c6h,058h,0bbh,062h,000h,05fh,044h,04ah,061h	; 6c7e  ..IiR...X.b._DJa
	defb 04fh,003h,04eh,003h,03ch,0ffh	; 6c8e

; ----------------------------------------------------------------------
; DATOS mensajes_24_6C94: 3 palabras: los mensajes de la sala 133 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (6
;   bytes)
;   0x6c94..0x6c9a  (6 bytes)
DATA_mensajes_24_6C94:
	defb 09ah,06ch	; 6c94
	defb 021h,06dh	; 6c96
	defb 080h,06dh	; 6c98

; ----------------------------------------------------------------------
; DATOS mensaje_24_6C9A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (135
;   bytes)
;   0x6c9a..0x6d21  (135 bytes)
DATA_mensaje_24_6C9A:
	defb 0f8h,03bh,04ah,041h,046h,06dh,000h,065h,049h,003h,053h,000h,05ch,06dh,054h,000h	; 6c9a  ..JAFm.eI.S.\mT.
	defb 049h,043h,045h,003h,0feh,046h,049h,043h,068h,06dh,04fh,003h,006h,06eh,070h,01dh	; 6caa  ICE..FIChmO..np.
	defb 01dh,070h,01dh,01dh,06fh,0a6h,052h,03ch,0fch,03bh,04eh,069h,059h,000h,044h,053h	; 6cba  .p..o.R<..NiY.DS
	defb 054h,067h,04ah,06dh,058h,000h,040h,05bh,003h,054h,041h,0feh,049h,043h,04bh,003h	; 6cca  TgJmX.@[.TA.ICK.
	defb 0a3h,000h,054h,041h,058h,045h,041h,002h,03ch,0fdh,0f6h,097h,020h,000h,000h,03bh	; 6cda  ..TAXEA.<... ...
	defb 041h,043h,000h,04eh,042h,04bh,003h,0a3h,000h,054h,041h,05fh,04fh,041h,006h,000h	; 6cea  AC.NBK...TA_OA..
	defb 0c9h,045h,05bh,045h,01dh,041h,000h,053h,049h,06ah,045h,066h,000h,046h,049h,043h	; 6cfa  .E[E.A.SIjEf.FIC
	defb 052h,047h,068h,058h,006h,05ah,05ah,003h,047h,065h,042h,054h,000h,045h,06dh,04bh	; 6d0a  RGhX.ZZ.GeBT.EmK
	defb 003h,052h,003h,00ah,00ah,03ch,0ffh	; 6d1a

; ----------------------------------------------------------------------
; DATOS mensaje_24_6D21: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (95
;   bytes)
;   0x6d21..0x6d80  (95 bytes)
DATA_mensaje_24_6D21:
	defb 0f8h,03bh,04ah,041h,046h,06dh,000h,065h,054h,045h,055h,000h,05ch,06dh,054h,000h	; 6d21  ..JAFm.eTEU.\mT.
	defb 049h,043h,045h,003h,046h,049h,043h,068h,06dh,04fh,003h,006h,06eh,070h,01dh,01dh	; 6d31  ICE.FIChmO..np..
	defb 070h,01dh,01dh,06fh,0a6h,052h,03ch,0fdh,0f6h,08eh,097h,020h,087h,03bh,05ah,047h	; 6d41  p..o.R<.... ..ZG
	defb 01dh,041h,000h,049h,043h,052h,003h,000h,0d4h,04dh,003h,041h,058h,000h,0bah,0dah	; 6d51  .A.ICR...M.AX...
	defb 045h,003h,0feh,042h,054h,0a6h,052h,041h,068h,065h,042h,054h,00ah,00ah,03ch,0feh	; 6d61  E..BT.RAheBT..<.
	defb 0fch,03bh,0c9h,045h,000h,063h,059h,003h,04eh,042h,04fh,003h,054h,03ch,0ffh	; 6d71  ...E.cY.NBO.T<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6D80: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (24
;   bytes)
;   0x6d80..0x6d98  (24 bytes)
DATA_mensaje_24_6D80:
	defb 0f8h,03bh,05ch,06dh,054h,000h,049h,043h,059h,000h,062h,042h,0feh,046h,049h,043h	; 6d80  ..\mT.ICY.bB.FIC
	defb 054h,047h,054h,0a6h,04fh,065h,03ch,0ffh	; 6d90  TGT.Oe<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6D98: 2 palabras: los mensajes de la sala 137 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x6d98..0x6d9c  (4 bytes)
DATA_mensajes_24_6D98:
	defb 09ch,06dh	; 6d98
	defb 0d7h,06dh	; 6d9a

; ----------------------------------------------------------------------
; DATOS mensaje_24_6D9C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (59
;   bytes)
;   0x6d9c..0x6dd7  (59 bytes)
DATA_mensaje_24_6D9C:
	defb 0f8h,03bh,089h,003h,075h,07fh,003h,097h,0afh,001h,000h,049h,058h,000h,040h,054h	; 6d9c  ....u......IX.@T
	defb 058h,0deh,055h,0feh,0d2h,0a6h,052h,003h,059h,003h,000h,041h,045h,003h,06dh,001h	; 6dac  X.U...R.Y..AE.m.
	defb 053h,003h,06dh,052h,003h,062h,054h,041h,049h,003h,053h,003h,045h,003h,0feh,044h	; 6dbc  S.mR.bTAI.S.E..D
	defb 049h,003h,068h,04fh,003h,04eh,003h,001h,001h,03ch,0ffh	; 6dcc  I.hO.N...<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6DD7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (123
;   bytes)
;   0x6dd7..0x6e52  (123 bytes)
DATA_mensaje_24_6DD7:
	defb 0fch,03bh,053h,003h,042h,04bh,052h,000h,08eh,097h,070h,059h,000h,041h,058h,0deh	; 6dd7  ..S.BKR...pY.AX.
	defb 052h,003h,0feh,0dfh,0b7h,04fh,003h,0a6h,04fh,06dh,04fh,003h,041h,002h,03ch,0feh	; 6de7  R....O..OmO.A.<.
	defb 0f8h,03bh,049h,058h,000h,08eh,09dh,083h,06ch,000h,046h,052h,041h,068h,045h,066h	; 6df7  ..IX....l.FRAhEf
	defb 065h,006h,0feh,05bh,04bh,046h,003h,054h,000h,050h,045h,066h,06ch,000h,0e4h,0a6h	; 6e07  e..[KF.T.PEfl...
	defb 052h,041h,068h,058h,03ch,0fdh,0f8h,03bh,04fh,04ch,048h,052h,047h,069h,04fh,000h	; 6e17  RAhX<...OLHRGiO.
	defb 044h,069h,041h,055h,000h,049h,058h,0feh,08eh,09dh,083h,06ch,000h,04ah,04bh,040h	; 6e27  DiAU.IX....l.JK@
	defb 048h,003h,068h,06bh,006h,0feh,04bh,003h,0a3h,040h,000h,040h,067h,045h,003h,053h	; 6e37  H.hk..K..@.@gE.S
	defb 042h,006h,044h,048h,003h,06dh,0b7h,052h,003h,03ch,0ffh	; 6e47  B.DH.m.R.<.

; ----------------------------------------------------------------------
; DATOS resto_6E52: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (41 bytes)
;   0x6e52..0x6e7b  (41 bytes)
DATA_resto_6E52:
	defb 0fch,03bh,040h,069h,020h,020h,020h,020h,0a6h,001h,000h,04ah,041h,054h,066h,001h	; 6e52  ..@i    ...JATf.
	defb 001h,03ch,0feh,0fbh,03bh,0bah,058h,0c8h,042h,049h,053h,046h,045h,054h,041h,045h	; 6e62  .<....X.BISFETAE
	defb 066h,065h,001h,089h,003h,075h,001h,03ch,0ffh	; 6e72  fe...u.<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6E7B: 8 palabras: los mensajes de la sala 138 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (16 bytes)
;   0x6e7b..0x6e8b  (16 bytes)
DATA_mensajes_24_6E7B:
	defb 08bh,06eh	; 6e7b
	defb 0bdh,06eh	; 6e7d
	defb 0dah,06eh	; 6e7f
	defb 0f0h,06eh	; 6e81
	defb 0ffh,06eh	; 6e83
	defb 010h,06fh	; 6e85
	defb 035h,06fh	; 6e87
	defb 046h,06fh	; 6e89

; ----------------------------------------------------------------------
; DATOS mensaje_24_6E8B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0x6e8b..0x6ebd  (50 bytes)
DATA_mensaje_24_6E8B:
	defb 0f8h,03bh,049h,066h,0a6h,001h,000h,059h,065h,000h,053h,003h,045h,003h,06dh,045h	; 6e8b  ..If...Ye.S.E.mE
	defb 003h,0a6h,001h,0feh,074h,096h,058h,000h,059h,04fh,048h,000h,040h,066h,04ch,052h	; 6e9b  ....t.X.YOH.@fLR
	defb 003h,057h,020h,0a6h,001h,03ch,0feh,0fbh,03bh,049h,003h,061h,06dh,054h,04ah,041h	; 6eab  .W ..<...I.amTJA
	defb 03ch,0ffh	; 6ebb

; ----------------------------------------------------------------------
; DATOS mensaje_24_6EBD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x6ebd..0x6eda  (29 bytes)
DATA_mensaje_24_6EBD:
	defb 0f8h,03bh,074h,096h,000h,0bah,0ddh,059h,000h,04ch,045h,003h,06dh,001h,0feh,0cah	; 6ebd  ..t....Y.LE.m...
	defb 04bh,04fh,003h,047h,003h,062h,000h,057h,020h,04fh,003h,03ch,0ffh	; 6ecd  KO.G.b.W O.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6EDA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x6eda..0x6ef0  (22 bytes)
DATA_mensaje_24_6EDA:
	defb 0fbh,03bh,050h,041h,04ah,054h,000h,041h,043h,053h,000h,059h,04fh,048h,045h,003h	; 6eda  ..PAJT.ACS.YOHE.
	defb 0feh,040h,068h,06bh,03ch,0ffh	; 6eea

; ----------------------------------------------------------------------
; DATOS mensaje_24_6EF0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x6ef0..0x6eff  (15 bytes)
DATA_mensaje_24_6EF0:
	defb 0fbh,03bh,0c9h,045h,000h,042h,043h,052h,040h,068h,065h,042h,057h,03ch,0ffh	; 6ef0  ...E.BCR@heBW<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_6EFF: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x6eff..0x6f10  (17 bytes)
DATA_mensaje_24_6EFF:
	defb 0fbh,03bh,049h,003h,047h,000h,05bh,051h,042h,058h,000h,041h,043h,065h,03ch,0feh	; 6eff  ..I.G.[QBX.ACe<.
	defb 0ffh	; 6f0f

; ----------------------------------------------------------------------
; DATOS mensaje_24_6F10: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (37
;   bytes)
;   0x6f10..0x6f35  (37 bytes)
DATA_mensaje_24_6F10:
	defb 0fbh,03bh,046h,045h,003h,000h,0d4h,046h,047h,054h,0a6h,052h,041h,068h,06bh,006h	; 6f10  ..FE...FGT.RAhk.
	defb 049h,069h,059h,0feh,089h,07bh,089h,003h,08fh,058h,054h,043h,046h,003h,000h,058h	; 6f20  IiY..{...XTCF..X
	defb 065h,042h,057h,03ch,0ffh	; 6f30

; ----------------------------------------------------------------------
; DATOS mensaje_24_6F35: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (17
;   bytes)
;   0x6f35..0x6f46  (17 bytes)
DATA_mensaje_24_6F35:
	defb 0fbh,03bh,053h,069h,068h,06bh,048h,000h,054h,041h,052h,003h,04bh,0a5h,001h,03ch	; 6f35  ..SihkH.TAR.K..<
	defb 0ffh	; 6f45

; ----------------------------------------------------------------------
; DATOS mensaje_24_6F46: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x6f46..0x6f5b  (21 bytes)
DATA_mensaje_24_6F46:
	defb 0fbh,03bh,089h,07bh,089h,003h,08fh,058h,054h,043h,046h,003h,000h,06ch,053h,0a6h	; 6f46  ...{...XTCF..lS.
	defb 04fh,058h,057h,03ch,0ffh	; 6f56

; ----------------------------------------------------------------------
; DATOS mensajes_24_6F5B: 1 palabras: los mensajes de la sala 144 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6f5b..0x6f5d  (2 bytes)
DATA_mensajes_24_6F5B:
	defb 05dh,06fh	; 6f5b

; ----------------------------------------------------------------------
; DATOS mensaje_24_6F5D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (114
;   bytes)
;   0x6f5d..0x6fcf  (114 bytes)
DATA_mensaje_24_6F5D:
	defb 0f8h,03bh,079h,003h,077h,003h,059h,000h,077h,003h,097h,020h,077h,0c5h,0c0h,061h	; 6f5d  ..y.w.Y.w.. w..a
	defb 051h,05dh,003h,042h,058h,0feh,0b6h,050h,0a5h,042h,053h,04bh,052h,000h,018h,0bah	; 6f6d  Q].BX..P.BSKR...
	defb 058h,000h,0c1h,0c5h,06ch,0feh,049h,058h,0c2h,0c3h,055h,000h,044h,047h,0a6h,04fh	; 6f7d  X...l.IX..U.DG.O
	defb 006h,0fdh,04eh,04bh,052h,000h,04eh,066h,058h,000h,05dh,04bh,045h,003h,000h,04bh	; 6f8d  ..NKR.NfX.]KE..K
	defb 003h,0a4h,042h,04bh,003h,06ch,0feh,051h,047h,068h,0eah,005h,04ch,054h,06bh,050h	; 6f9d  ..BK.l.QGh..LTkP
	defb 077h,003h,096h,09dh,083h,003h,077h,09ah,07ch,058h,0eah,0feh,079h,003h,077h,003h	; 6fad  w.....w.|X..y.w.
	defb 045h,003h,000h,0e1h,06bh,069h,000h,0c2h,0c3h,059h,000h,05dh,06ah,05ah,003h,068h	; 6fbd  E...ki...Y.]jZ.h
	defb 03ch,0ffh	; 6fcd

; ----------------------------------------------------------------------
; DATOS mensajes_24_6FCF: 1 palabras: los mensajes de la sala 150 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6fcf..0x6fd1  (2 bytes)
DATA_mensajes_24_6FCF:
	defb 0d1h,06fh	; 6fcf

; ----------------------------------------------------------------------
; DATOS mensaje_24_6FD1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x6fd1..0x6fe0  (15 bytes)
DATA_mensaje_24_6FD1:
	defb 0fbh,03bh,06eh,08bh,0abh,020h,098h,07ch,003h,050h,05dh,042h,06fh,03ch,0ffh	; 6fd1  ..n.. .|.P]Bo<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_6FE0: 1 palabras: los mensajes de la sala 161 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x6fe0..0x6fe2  (2 bytes)
DATA_mensajes_24_6FE0:
	defb 0e2h,06fh	; 6fe0

; ----------------------------------------------------------------------
; DATOS mensaje_24_6FE2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0x6fe2..0x7004  (34 bytes)
DATA_mensaje_24_6FE2:
	defb 0f8h,03bh,075h,08fh,074h,090h,053h,041h,042h,0bah,059h,000h,053h,003h,042h,062h	; 6fe2  ..u.t.SAB.Y.S.Bb
	defb 0feh,087h,079h,06ch,000h,045h,05bh,003h,0a6h,052h,041h,068h,065h,042h,04fh,003h	; 6ff2  ..yl.E[..RAheBO.
	defb 03ch,0ffh	; 7002

; ----------------------------------------------------------------------
; DATOS mensajes_24_7004: 1 palabras: los mensajes de la sala 162 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x7004..0x7006  (2 bytes)
DATA_mensajes_24_7004:
	defb 006h,070h	; 7004

; ----------------------------------------------------------------------
; DATOS mensaje_24_7006: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x7006..0x7014  (14 bytes)
DATA_mensaje_24_7006:
	defb 0fbh,03bh,06eh,075h,08fh,074h,090h,012h,0c2h,058h,0d5h,06fh,03ch,0ffh	; 7006  ..nu.t...X.o<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_7014: 2 palabras: los mensajes de la sala 165 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x7014..0x7018  (4 bytes)
DATA_mensajes_24_7014:
	defb 018h,070h	; 7014
	defb 0fdh,070h	; 7016

; ----------------------------------------------------------------------
; DATOS mensaje_24_7018: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (229
;   bytes)
;   0x7018..0x70fd  (229 bytes)
DATA_mensaje_24_7018:
	defb 0f8h,03bh,04bh,003h,051h,059h,000h,049h,058h,0b6h,000h,05bh,053h,0feh,0b8h,045h	; 7018  ..K.QY.IX..[S..E
	defb 048h,04fh,06dh,04fh,003h,045h,003h,000h,011h,0bah,058h,000h,0f1h,0bah,045h,003h	; 7028  HOmO.E....X...E.
	defb 0feh,074h,099h,058h,000h,0b8h,052h,041h,068h,0b6h,052h,003h,000h,053h,051h,04dh	; 7038  .t.X..RAh.R..SQM
	defb 003h,06dh,0feh,041h,054h,047h,054h,0a6h,04fh,06dh,04fh,003h,03ch,0fdh,0fch,03bh	; 7048  .m.ATGT.OmO.<...
	defb 041h,054h,047h,054h,0a6h,04fh,0a6h,052h,000h,053h,003h,042h,041h,042h,049h,053h	; 7058  ATGT.O.R.S.BABIS
	defb 002h,03ch,0f8h,03bh,04eh,058h,000h,074h,083h,079h,059h,000h,041h,04bh,06ch,0cdh	; 7068  .<..NX.t.yY.AKl.
	defb 045h,04bh,052h,0feh,04fh,06dh,04fh,003h,045h,003h,000h,014h,051h,058h,000h,041h	; 7078  EKR.OmO.E...QX.A
	defb 04bh,06ch,000h,04fh,04bh,045h,00ah,00ah,0fdh,08ah,07fh,003h,097h,005h,072h,073h	; 7088  Kl.OKE........rs
	defb 005h,07bh,07fh,005h,08fh,076h,003h,058h,0feh,04bh,003h,0a4h,06dh,059h,003h,06dh	; 7098  .{...v.X.K..mY.m
	defb 055h,000h,0cdh,045h,04bh,000h,04ah,041h,049h,003h,058h,0feh,014h,051h,0b5h,058h	; 70a8  U..EK.JAI.X..Q.X
	defb 000h,041h,04bh,06ch,000h,0cdh,045h,04bh,04fh,053h,04fh,06dh,0feh,04ch,045h,003h	; 70b8  .AKl..EKOSOm.LE.
	defb 04fh,045h,003h,000h,046h,043h,04fh,06dh,04fh,003h,001h,0fdh,04bh,045h,04bh,000h	; 70c8  OE..FCOmO...KEK.
	defb 053h,003h,058h,000h,041h,04bh,045h,066h,000h,04bh,003h,0a4h,06dh,055h,0feh,0cdh	; 70d8  S.X.AKEf.K..mU..
	defb 045h,04bh,04fh,045h,059h,000h,065h,047h,000h,044h,05dh,003h,043h,052h,054h,041h	; 70e8  EKOEY.eG.D].CRTA
	defb 06dh,04fh,003h,03ch,0ffh	; 70f8

; ----------------------------------------------------------------------
; DATOS mensaje_24_70FD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0x70fd..0x7121  (36 bytes)
DATA_mensaje_24_70FD:
	defb 0fch,03bh,053h,003h,049h,04fh,003h,041h,002h,000h,04eh,069h,059h,03ch,0feh,0f8h	; 70fd  ..S.IO.A..NiY<..
	defb 03bh,049h,049h,045h,066h,000h,0d9h,04bh,000h,059h,054h,069h,04fh,000h,058h,059h	; 710d  .IIEf..K.YTiO.XY
	defb 066h,04ah,03ch,0ffh	; 711d

; ----------------------------------------------------------------------
; DATOS mensajes_24_7121: 1 palabras: los mensajes de la sala 173 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x7121..0x7123  (2 bytes)
DATA_mensajes_24_7121:
	defb 023h,071h	; 7121

; ----------------------------------------------------------------------
; DATOS mensaje_24_7123: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0x7123..0x7154  (49 bytes)
DATA_mensaje_24_7123:
	defb 0f8h,03bh,060h,049h,042h,046h,003h,04bh,055h,000h,06bh,04fh,067h,04fh,041h,0eah	; 7123  ..`IBF.KU.kOgOA.
	defb 059h,0feh,045h,06bh,058h,000h,04ch,047h,003h,000h,04eh,059h,003h,058h,000h,046h	; 7133  Y.EkX.LG..NY.X.F
	defb 06ch,0feh,046h,067h,04fh,044h,04dh,059h,003h,041h,041h,06dh,04fh,003h,065h,03ch	; 7143  l.FgODMY.AAmO.e<
	defb 0ffh	; 7153

; ----------------------------------------------------------------------
; DATOS mensajes_24_7154: 1 palabras: los mensajes de la sala 174 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x7154..0x7156  (2 bytes)
DATA_mensajes_24_7154:
	defb 056h,071h	; 7154

; ----------------------------------------------------------------------
; DATOS mensaje_24_7156: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (134
;   bytes)
;   0x7156..0x71dc  (134 bytes)
DATA_mensaje_24_7156:
	defb 0f8h,03bh,065h,05fh,045h,003h,043h,067h,04bh,0d4h,0c1h,0c5h,055h,065h,067h,000h	; 7156  ..e_E.CgK...Ueg.
	defb 049h,058h,0c2h,058h,04ch,05ch,003h,052h,058h,000h,062h,058h,045h,003h,000h,059h	; 7166  IX.XL\.RX.bXE..Y
	defb 045h,041h,000h,04ah,069h,068h,006h,0feh,04eh,04bh,052h,000h,0bch,0c1h,058h,0c2h	; 7176  EA.Jih..NKR...X.
	defb 0c3h,045h,003h,000h,046h,04ch,003h,045h,069h,065h,042h,006h,0fdh,04fh,04fh,003h	; 7186  .E..FL.EieB..OO.
	defb 04bh,000h,05ch,003h,051h,058h,0bah,045h,003h,000h,0e1h,06bh,069h,000h,0eeh,053h	; 7196  K.\.QX.E...ki..S
	defb 0feh,04dh,041h,046h,003h,058h,0f0h,06ch,0e4h,0a6h,052h,000h,0d4h,0c1h,0c5h,055h	; 71a6  .MAF.X.l..R....U
	defb 0feh,04fh,050h,060h,045h,042h,054h,066h,000h,049h,058h,000h,065h,048h,003h,06dh	; 71b6  .OP`EBTf.IX.eH.m
	defb 059h,0feh,04bh,003h,0a5h,042h,04bh,003h,0a4h,000h,04ch,068h,049h,053h,054h,047h	; 71c6  Y.K..BK...LhISTG
	defb 000h,044h,06bh,068h,03ch,0ffh	; 71d6

; ----------------------------------------------------------------------
; DATOS mensajes_24_71DC: 9 palabras: los mensajes de la sala 175 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (18 bytes)
;   0x71dc..0x71ee  (18 bytes)
DATA_mensajes_24_71DC:
	defb 0eeh,071h	; 71dc
	defb 014h,072h	; 71de
	defb 03fh,072h	; 71e0
	defb 05ah,072h	; 71e2
	defb 067h,072h	; 71e4
	defb 0f2h,072h	; 71e6
	defb 08fh,074h	; 71e8
	defb 0e5h,074h	; 71ea
	defb 01ch,075h	; 71ec

; ----------------------------------------------------------------------
; DATOS mensaje_24_71EE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (38
;   bytes)
;   0x71ee..0x7214  (38 bytes)
DATA_mensaje_24_71EE:
	defb 0f8h,03bh,0c5h,059h,000h,0b3h,000h,049h,003h,05ah,003h,0a5h,042h,046h,052h,003h	; 71ee  ...Y...I.Z..BFR.
	defb 04ch,006h,0feh,044h,0cah,059h,000h,052h,05fh,04bh,003h,045h,055h,000h,057h,045h	; 71fe  L..D.Y.R_K.EU.WE
	defb 003h,041h,05eh,04ch,03ch,0ffh	; 720e

; ----------------------------------------------------------------------
; DATOS mensaje_24_7214: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (43
;   bytes)
;   0x7214..0x723f  (43 bytes)
DATA_mensaje_24_7214:
	defb 0f8h,03bh,0c5h,059h,000h,040h,054h,04fh,045h,003h,04fh,058h,000h,049h,066h,069h	; 7214  ...Y.@TOE.OX.Ifi
	defb 068h,058h,06ch,0feh,047h,05ah,003h,06ch,000h,054h,045h,003h,047h,04bh,052h,0feh	; 7224  hXl.GZ.l.TE.GKR.
	defb 05eh,0a6h,052h,044h,066h,069h,05eh,04bh,04fh,03ch,0ffh	; 7234  ^.RDfi^KO<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_723F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0x723f..0x725a  (27 bytes)
DATA_mensaje_24_723F:
	defb 0fbh,03bh,045h,05ch,003h,055h,000h,04bh,0a5h,042h,04eh,003h,042h,045h,003h,045h	; 723f  ..E\.U.K.BN.BE.E
	defb 003h,0feh,045h,045h,0a6h,052h,041h,068h,06bh,03ch,0ffh	; 724f  ..EE.RAhk<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_725A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x725a..0x7267  (13 bytes)
DATA_mensaje_24_725A:
	defb 0fbh,03bh,04fh,003h,069h,058h,0bbh,045h,04bh,066h,002h,03ch,0ffh	; 725a  ..O.iX.EKf.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7267: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (139
;   bytes)
;   0x7267..0x72f2  (139 bytes)
DATA_mensaje_24_7267:
	defb 0f8h,03bh,05eh,0a6h,052h,044h,0a6h,04fh,04eh,003h,001h,000h,0f7h,0fch,053h,003h	; 7267  ..^.RD.ON.....S.
	defb 058h,0feh,0f7h,0fbh,053h,003h,058h,001h,000h,0c6h,059h,000h,040h,054h,04fh,045h	; 7277  X...S.X...Y.@TOE
	defb 003h,04fh,045h,003h,0feh,0f5h,058h,0b0h,041h,000h,053h,04bh,052h,000h,049h,066h	; 7287  .OE...X.A.SKR.If
	defb 069h,068h,049h,053h,06ch,0feh,04bh,0a6h,052h,044h,0a6h,04fh,006h,0fdh,0b3h,063h	; 7297  ihISl.K.RD.O...c
	defb 000h,049h,058h,077h,003h,097h,020h,077h,0c5h,0c0h,062h,0feh,05bh,042h,04dh,003h	; 72a7  .IXw.. w..b.[BM.
	defb 06dh,058h,000h,053h,062h,04bh,05ah,003h,000h,054h,058h,04bh,003h,0a3h,001h,0feh	; 72b7  mX.SbKZ..TXK....
	defb 0d4h,0c1h,0c5h,079h,003h,077h,003h,058h,04fh,061h,055h,00ah,00ah,03ch,0fdh,0fch	; 72c7  ...y.w.XOaU..<..
	defb 03bh,04eh,058h,000h,079h,003h,077h,003h,0a6h,052h,058h,059h,000h,020h,0b2h,0feh	; 72d7  .NX.y.w..RXY. ..
	defb 0c9h,062h,058h,054h,06dh,04fh,003h,002h,03ch,0fah,001h	; 72e7  .bXTmO..<..

; ----------------------------------------------------------------------
; DATOS mensaje_24_72F2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (413
;   bytes)
;   0x72f2..0x748f  (413 bytes)
DATA_mensaje_24_72F2:
	defb 0f8h,03bh,079h,003h,077h,003h,053h,059h,005h,0d4h,0ebh,065h,067h,000h,0bch,058h	; 72f2  ..y.w.SY...eg..X
	defb 04bh,059h,041h,04bh,0a3h,0feh,053h,04bh,052h,000h,093h,08fh,058h,0c2h,0c3h,055h	; 7302  KYAK..SKR...X..U
	defb 047h,06dh,067h,06dh,04bh,052h,044h,068h,0feh,0d4h,0c1h,0c5h,058h,049h,053h,04bh	; 7312  GmgmKRDh....XISK
	defb 003h,0a3h,001h,0fdh,05bh,068h,047h,045h,066h,058h,000h,065h,048h,003h,06dh,04bh	; 7322  ....[hGEfX.eH.mK
	defb 0a5h,055h,059h,000h,051h,046h,003h,058h,0feh,065h,042h,055h,000h,045h,045h,069h	; 7332  .UY.QF.X.eBU.EEi
	defb 052h,044h,068h,006h,0fdh,06eh,0c9h,04dh,003h,06dh,057h,06dh,062h,058h,0ddh,000h	; 7342  RDh..n.M.mWmbX..
	defb 0f2h,058h,000h,044h,049h,054h,041h,06ch,0feh,04bh,003h,0a3h,05eh,04bh,000h,0bah	; 7352  .X.DITAl.K..^K..
	defb 0ddh,058h,0f0h,06ch,05eh,053h,003h,06bh,04bh,005h,0fdh,04eh,04bh,052h,000h,0b3h	; 7362  .X.l^S.kK..NKR..
	defb 058h,0eah,0f3h,000h,04bh,003h,049h,003h,047h,058h,04eh,049h,045h,066h,0feh,065h	; 7372  X...K.I.GXNIEf.e
	defb 05fh,045h,003h,043h,067h,000h,046h,0a5h,042h,05bh,053h,0bch,055h,065h,067h,0feh	; 7382  _E.Cg.F.B[S.Ueg.
	defb 0bah,0ddh,0c2h,0c3h,06ch,000h,05bh,059h,041h,04ah,04dh,068h,052h,003h,040h,06ah	; 7392  ....l.[YAJMhR.@j
	defb 042h,006h,0fdh,079h,003h,077h,003h,059h,000h,04eh,069h,05eh,052h,003h,055h,000h	; 73a2  B..y.w.Y.Ni^R.U.
	defb 018h,0bah,058h,0c1h,0c5h,06ch,0feh,0c5h,0c0h,055h,050h,067h,059h,003h,061h,005h	; 73b2  ..X..l...UPgY.a.
	defb 061h,051h,05dh,003h,042h,058h,04bh,003h,0a4h,06dh,05ah,003h,06ch,0feh,059h,04bh	; 73c2  aQ].BXK..mZ.l.YK
	defb 003h,061h,068h,006h,04eh,04bh,052h,000h,04eh,066h,058h,000h,05dh,04bh,045h,003h	; 73d2  .ah.NKR.NfX.]KE.
	defb 0fdh,077h,003h,096h,09dh,083h,003h,077h,09ah,07ch,053h,054h,068h,0eah,000h,04eh	; 73e2  .w.....w.|STh..N
	defb 058h,04ch,045h,003h,04fh,06ch,0feh,0e1h,06bh,04ch,052h,003h,040h,06ah,042h,06fh	; 73f2  XLE.Ol..kLR.@jBo
	defb 03ch,0feh,0fch,03bh,00ah,00ah,03ch,0fdh,0f8h,03bh,05eh,04fh,000h,0c6h,058h,020h	; 7402  <.....<...^O..X
	defb 0bah,0e2h,058h,080h,0aah,098h,07bh,020h,0e3h,045h,003h,0feh,059h,06dh,051h,046h	; 7412  ..X...{ .E..YmQF
	defb 0b6h,065h,067h,000h,0dch,0efh,045h,003h,06bh,045h,066h,054h,047h,0feh,054h,0a6h	; 7422  .eg...E.kEfTG.T.
	defb 052h,044h,068h,006h,053h,003h,042h,045h,000h,080h,0aah,098h,07bh,020h,06ch,0fdh	; 7432  RDh.S.BE....{ l.
	defb 04ah,045h,003h,04bh,04fh,003h,04bh,005h,0d4h,0c1h,0c5h,079h,003h,077h,003h,06ch	; 7442  JE.KO.K....y.w.l
	defb 04fh,041h,04bh,003h,04bh,052h,0feh,05dh,04bh,041h,001h,04eh,049h,055h,040h,068h	; 7452  OAK.KR.]KA.NIU@h
	defb 000h,04bh,0a5h,042h,04eh,003h,042h,045h,003h,052h,003h,0feh,0e2h,058h,0bbh,06ch	; 7462  .K.BN.BE.R...X.l
	defb 044h,05dh,003h,043h,052h,044h,041h,052h,047h,069h,03ch,0fdh,0fch,03bh,0c9h,045h	; 7472  D].CRDARGi<....E
	defb 000h,044h,0a6h,045h,054h,041h,0cah,04fh,003h,054h,040h,03ch,0ffh	; 7482  .D.ETA.O.T@<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_748F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (86
;   bytes)
;   0x748f..0x74e5  (86 bytes)
DATA_mensaje_24_748F:
	defb 0fch,03bh,042h,06bh,01dh,0a6h,001h,07ch,078h,003h,020h,061h,06dh,049h,041h,001h	; 748f  ..Bk...|x. amIA.
	defb 000h,074h,099h,0feh,063h,0a6h,059h,004h,067h,000h,079h,003h,077h,003h,06ch,000h	; 749f  .t..c.Y.g.y.w.l.
	defb 04fh,044h,04ch,04fh,061h,055h,0feh,046h,04fh,05fh,04fh,041h,087h,03ch,0fdh,0fbh	; 74af  ODLOaU.FO_OA.<..
	defb 03bh,05ah,003h,04bh,003h,06dh,06ch,0b8h,068h,053h,000h,04ch,047h,003h,000h,049h	; 74bf  .Z.K.ml.hS.LG..I
	defb 069h,057h,006h,0feh,089h,084h,058h,0d3h,045h,003h,000h,058h,05ah,003h,046h,0a6h	; 74cf  iW....X.E..XZ.F.
	defb 052h,068h,06bh,065h,03ch,0ffh	; 74df

; ----------------------------------------------------------------------
; DATOS mensaje_24_74E5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (55
;   bytes)
;   0x74e5..0x751c  (55 bytes)
DATA_mensaje_24_74E5:
	defb 0fch,03bh,079h,003h,077h,003h,06ch,000h,04fh,044h,04bh,052h,000h,049h,003h,066h	; 74e5  ..y.w.l.ODKR.I.f
	defb 06dh,055h,041h,069h,05eh,04ch,03ch,0f8h,03bh,04eh,042h,045h,001h,063h,0a6h,052h	; 74f5  mUAi^L<..NBE.c.R
	defb 047h,069h,068h,045h,001h,0feh,040h,067h,045h,003h,053h,042h,001h,000h,0b7h,06ch	; 7505  GihE..@gE.SB...l
	defb 051h,048h,052h,054h,001h,03ch,0ffh	; 7515

; ----------------------------------------------------------------------
; DATOS mensaje_24_751C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (25
;   bytes)
;   0x751c..0x7535  (25 bytes)
DATA_mensaje_24_751C:
	defb 0f8h,03bh,0e2h,058h,000h,04bh,0a5h,042h,04eh,003h,042h,045h,003h,059h,0feh,0b8h	; 751c  ...X.K.BN.BE.Y..
	defb 052h,047h,069h,04fh,045h,054h,002h,03ch,0ffh	; 752c  RGiOET.<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_7535: 1 palabras: los mensajes de la sala 195 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x7535..0x7537  (2 bytes)
DATA_mensajes_24_7535:
	defb 037h,075h	; 7535

; ----------------------------------------------------------------------
; DATOS mensaje_24_7537: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (32
;   bytes)
;   0x7537..0x7557  (32 bytes)
DATA_mensaje_24_7537:
	defb 0f8h,03bh,049h,058h,05ch,06dh,058h,000h,053h,003h,049h,045h,055h,000h,050h,045h	; 7537  ..IX\mX.S.IEU.PE
	defb 051h,042h,06ah,045h,003h,0feh,040h,068h,05fh,04fh,041h,04fh,003h,054h,03ch,0ffh	; 7547  QBjE..@h_OAO.T<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_7557: 1 palabras: los mensajes de la sala 197 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x7557..0x7559  (2 bytes)
DATA_mensajes_24_7557:
	defb 059h,075h	; 7557

; ----------------------------------------------------------------------
; DATOS mensaje_24_7559: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (11
;   bytes)
;   0x7559..0x7564  (11 bytes)
DATA_mensaje_24_7559:
	defb 0fbh,03bh,06eh,073h,020h,096h,083h,0f1h,06fh,03ch,0ffh	; 7559  ..ns ...o<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_7564: 2 palabras: los mensajes de la sala 200 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x7564..0x7568  (4 bytes)
DATA_mensajes_24_7564:
	defb 068h,075h	; 7564
	defb 07dh,075h	; 7566

; ----------------------------------------------------------------------
; DATOS mensaje_24_7568: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x7568..0x757d  (21 bytes)
DATA_mensaje_24_7568:
	defb 0f8h,03bh,049h,003h,061h,06dh,065h,000h,0b3h,000h,041h,04eh,045h,003h,04bh,041h	; 7568  ..I.ame...ANE.KA
	defb 06dh,04fh,003h,03ch,0ffh	; 7578

; ----------------------------------------------------------------------
; DATOS mensaje_24_757D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (62
;   bytes)
;   0x757d..0x75bb  (62 bytes)
DATA_mensaje_24_757D:
	defb 0fch,03bh,08eh,097h,070h,053h,041h,042h,000h,0d0h,058h,0d6h,06ch,0feh,0b8h,045h	; 757d  ....pSAB..X.l..E
	defb 048h,054h,045h,0a6h,04fh,045h,041h,002h,03ch,0feh,0f8h,03bh,012h,0f4h,0b6h,000h	; 758d  HTE.OEA.<.......
	defb 0d0h,058h,0d6h,045h,003h,000h,049h,058h,05ch,06dh,052h,003h,0feh,040h,04eh,06dh	; 759d  .X.E..IX\mR..@Nm
	defb 052h,003h,041h,068h,058h,06ch,000h,0b8h,045h,048h,04fh,065h,03ch,0ffh	; 75ad  R.AhXl..EHOe<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_75BB: 1 palabras: los mensajes de la sala 204 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x75bb..0x75bd  (2 bytes)
DATA_mensajes_24_75BB:
	defb 0bdh,075h	; 75bb

; ----------------------------------------------------------------------
; DATOS mensaje_24_75BD: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0x75bd..0x75e6  (41 bytes)
DATA_mensaje_24_75BD:
	defb 0f8h,03bh,042h,050h,058h,000h,044h,053h,042h,04ah,06dh,059h,000h,046h,06ch,000h	; 75bd  ..BPX.DSBJmY.Fl.
	defb 046h,067h,055h,0feh,041h,051h,062h,000h,053h,044h,047h,05eh,052h,003h,000h,052h	; 75cd  FgU.AQb.SDG^R..R
	defb 003h,045h,048h,068h,06dh,04fh,003h,03ch,0ffh	; 75dd  .EHhmO.<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_75E6: 1 palabras: los mensajes de la sala 205 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x75e6..0x75e8  (2 bytes)
DATA_mensajes_24_75E6:
	defb 0e8h,075h	; 75e6

; ----------------------------------------------------------------------
; DATOS mensaje_24_75E8: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x75e8..0x75f6  (14 bytes)
DATA_mensaje_24_75E8:
	defb 0fbh,03bh,06eh,077h,003h,097h,020h,077h,050h,05dh,042h,06fh,03ch,0ffh	; 75e8  ..nw.. wP]Bo<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_75F6: 6 palabras: los mensajes de la sala 207 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (12 bytes)
;   0x75f6..0x7602  (12 bytes)
DATA_mensajes_24_75F6:
	defb 002h,076h	; 75f6
	defb 091h,076h	; 75f8
	defb 0bch,076h	; 75fa
	defb 0c5h,076h	; 75fc
	defb 0f7h,076h	; 75fe
	defb 009h,077h	; 7600

; ----------------------------------------------------------------------
; DATOS mensaje_24_7602: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (143
;   bytes)
;   0x7602..0x7691  (143 bytes)
DATA_mensaje_24_7602:
	defb 0fch,03bh,08bh,003h,076h,045h,000h,08dh,003h,072h,077h,003h,06ch,0feh,045h,04bh	; 7602  ....vE...rw.l.EK
	defb 052h,062h,066h,043h,054h,041h,045h,054h,002h,03ch,0feh,0f8h,03bh,0c9h,055h,000h	; 7612  RbfCTAET.<....U.
	defb 0b0h,042h,058h,045h,057h,002h,03ch,0feh,0fch,03bh,079h,003h,077h,003h,06ch,000h	; 7622  .BXEW.<...y.w.l.
	defb 04fh,044h,04ch,04fh,061h,04ah,03ch,0fdh,0f8h,03bh,06bh,045h,041h,058h,000h,0b7h	; 7632  ODLOaJ<...kEAX..
	defb 055h,0d2h,0a6h,04fh,001h,000h,0c9h,052h,003h,062h,0feh,04ch,046h,054h,062h,058h	; 7642  U..O...R.b.LFTbX
	defb 000h,0e4h,0a6h,052h,0dch,046h,054h,00ah,00ah,0fdh,053h,0c8h,041h,04fh,041h,000h	; 7652  ...R.FT...S.AOA.
	defb 053h,049h,06ah,04fh,003h,045h,003h,000h,0b3h,059h,0feh,049h,069h,04bh,045h,054h	; 7662  SIjO.E...Y.IiKET
	defb 041h,006h,049h,058h,000h,04fh,06dh,048h,06dh,06ch,0feh,040h,048h,003h,065h,042h	; 7672  A.IX.OmHml.@H.eB
	defb 001h,000h,0b7h,06ch,000h,051h,048h,052h,000h,0dch,046h,054h,065h,03ch,0ffh	; 7682  ...l.QHR..FTe<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7691: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (43
;   bytes)
;   0x7691..0x76bc  (43 bytes)
DATA_mensaje_24_7691:
	defb 0fch,03bh,08bh,003h,076h,045h,000h,08dh,003h,072h,077h,003h,06ch,000h,0feh,045h	; 7691  ....vE...rw.l..E
	defb 04bh,052h,062h,066h,043h,054h,041h,045h,054h,002h,03ch,0feh,0f8h,03bh,062h,042h	; 76a1  KRbfCTAET.<...bB
	defb 000h,06bh,04fh,04bh,04fh,04fh,003h,06ah,001h,03ch,0ffh	; 76b1  .kOKOO.j.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_76BC: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (9
;   bytes)
;   0x76bc..0x76c5  (9 bytes)
DATA_mensaje_24_76BC:
	defb 0f8h,03bh,040h,05bh,003h,054h,041h,03ch,0ffh	; 76bc  ..@[.TA<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_76C5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (50
;   bytes)
;   0x76c5..0x76f7  (50 bytes)
DATA_mensaje_24_76C5:
	defb 0f8h,03bh,0c6h,04fh,050h,059h,000h,077h,003h,097h,020h,077h,058h,000h,05ch,041h	; 76c5  ...OPY.w.. wX.\A
	defb 04bh,04ah,006h,0feh,041h,051h,062h,000h,049h,042h,063h,0a6h,052h,000h,078h,09dh	; 76d5  KJ..AQb.IBc.R.x.
	defb 058h,0feh,069h,06dh,04bh,0a4h,042h,06ch,000h,04bh,052h,041h,068h,06dh,04fh,003h	; 76e5  X.imK.Bl.KRAhmO.
	defb 03ch,0ffh	; 76f5

; ----------------------------------------------------------------------
; DATOS mensaje_24_76F7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (18
;   bytes)
;   0x76f7..0x7709  (18 bytes)
DATA_mensaje_24_76F7:
	defb 0f8h,03bh,076h,08fh,062h,000h,063h,0a6h,052h,05fh,068h,053h,000h,041h,041h,065h	; 76f7  ..v.b.c.R_hS.AAe
	defb 03ch,0ffh	; 7707

; ----------------------------------------------------------------------
; DATOS mensaje_24_7709: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x7709..0x771e  (21 bytes)
DATA_mensaje_24_7709:
	defb 0f8h,03bh,078h,09dh,06ch,0b0h,043h,054h,047h,050h,0a3h,000h,040h,05bh,003h,054h	; 7709  ..x.l.CTGP..@[.T
	defb 041h,065h,001h,03ch,0ffh	; 7719

; ----------------------------------------------------------------------
; DATOS mensajes_24_771E: 2 palabras: los mensajes de la sala 209 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x771e..0x7722  (4 bytes)
DATA_mensajes_24_771E:
	defb 022h,077h	; 771e
	defb 058h,077h	; 7720

; ----------------------------------------------------------------------
; DATOS mensaje_24_7722: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (54
;   bytes)
;   0x7722..0x7758  (54 bytes)
DATA_mensaje_24_7722:
	defb 0f8h,03bh,075h,08fh,074h,090h,012h,0c2h,058h,000h,044h,04ah,061h,052h,041h,068h	; 7722  ..u.t...X.DJaRAh
	defb 0feh,050h,05dh,042h,052h,003h,059h,000h,0f1h,0bah,045h,003h,000h,044h,044h,04dh	; 7732  .P]BR.Y...E..DDM
	defb 003h,041h,0feh,064h,047h,043h,05bh,061h,041h,055h,000h,054h,0a6h,052h,068h,066h	; 7742  .A.dGC[aAU.T.Rhf
	defb 04bh,041h,04dh,003h,03ch,0ffh	; 7752

; ----------------------------------------------------------------------
; DATOS mensaje_24_7758: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (30
;   bytes)
;   0x7758..0x7776  (30 bytes)
DATA_mensaje_24_7758:
	defb 0f8h,03bh,075h,08fh,074h,090h,012h,0c2h,059h,000h,04bh,003h,051h,059h,000h,0bch	; 7758  ..u.t...Y.K.QY..
	defb 041h,0bah,0feh,04fh,003h,0a6h,04fh,04eh,042h,04fh,003h,057h,03ch,0ffh	; 7768  A..O..ONBO.W<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_7776: 3 palabras: los mensajes de la sala 226 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (6
;   bytes)
;   0x7776..0x777c  (6 bytes)
DATA_mensajes_24_7776:
	defb 07ch,077h	; 7776
	defb 09ah,077h	; 7778
	defb 0c3h,077h	; 777a

; ----------------------------------------------------------------------
; DATOS mensaje_24_777C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (30
;   bytes)
;   0x777c..0x779a  (30 bytes)
DATA_mensaje_24_777C:
	defb 0fbh,03bh,040h,066h,0a6h,001h,000h,049h,06dh,054h,000h,053h,049h,06ah,055h,0feh	; 777c  ..@f...ImT.SIjU.
	defb 045h,041h,04fh,003h,06dh,045h,003h,000h,040h,068h,06bh,001h,03ch,0ffh	; 778c  EAO.mE..@hk.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_779A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0x779a..0x77c3  (41 bytes)
DATA_mensaje_24_779A:
	defb 0fbh,03bh,0c9h,062h,000h,044h,049h,066h,054h,041h,06bh,065h,03ch,0feh,0fch,03bh	; 779a  ...b.DIfTAke<...
	defb 044h,045h,04bh,041h,054h,03ch,0feh,0fbh,03bh,062h,042h,011h,053h,003h,000h,063h	; 77aa  DEKAT<...bB.S..c
	defb 067h,054h,044h,04bh,05eh,04bh,0a5h,03ch,0ffh	; 77ba  gTDK^K.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_77C3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x77c3..0x77d2  (15 bytes)
DATA_mensaje_24_77C3:
	defb 0fbh,03bh,041h,04bh,045h,003h,000h,0cdh,041h,04fh,06bh,001h,001h,03ch,0ffh	; 77c3  ..AKE...AOk..<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_77D2: 9 palabras: los mensajes de la sala 167 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (18 bytes)
;   0x77d2..0x77e4  (18 bytes)
DATA_mensajes_24_77D2:
	defb 0e4h,077h	; 77d2
	defb 0edh,077h	; 77d4
	defb 0f5h,077h	; 77d6
	defb 008h,078h	; 77d8
	defb 02ch,078h	; 77da
	defb 034h,078h	; 77dc
	defb 03bh,078h	; 77de
	defb 08eh,078h	; 77e0
	defb 096h,078h	; 77e2

; ----------------------------------------------------------------------
; DATOS mensaje_24_77E4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (9
;   bytes)
;   0x77e4..0x77ed  (9 bytes)
DATA_mensaje_24_77E4:
	defb 0f8h,03bh,091h,0aah,01dh,01dh,01dh,03ch,0ffh	; 77e4  .......<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_77ED: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (8
;   bytes)
;   0x77ed..0x77f5  (8 bytes)
DATA_mensaje_24_77ED:
	defb 0fbh,03bh,093h,076h,003h,065h,03ch,0ffh	; 77ed  ...v.e<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_77F5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (19
;   bytes)
;   0x77f5..0x7808  (19 bytes)
DATA_mensaje_24_77F5:
	defb 0fbh,03bh,0c9h,058h,000h,05ch,06dh,052h,051h,062h,054h,041h,000h,093h,076h,003h	; 77f5  ...X.\mRQbTA..v.
	defb 065h,03ch,0ffh	; 7805

; ----------------------------------------------------------------------
; DATOS mensaje_24_7808: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0x7808..0x782c  (36 bytes)
DATA_mensaje_24_7808:
	defb 0f8h,03bh,091h,0afh,000h,091h,0afh,000h,091h,0afh,001h,03ch,0feh,0fbh,03bh,05ah	; 7808  ...........<...Z
	defb 048h,003h,06ch,000h,05ah,0a6h,059h,004h,0a6h,050h,0a3h,000h,045h,06bh,041h,04eh	; 7818  H.l.Z.Y..P..EkAN
	defb 042h,065h,03ch,0ffh	; 7828

; ----------------------------------------------------------------------
; DATOS mensaje_24_782C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (8
;   bytes)
;   0x782c..0x7834  (8 bytes)
DATA_mensaje_24_782C:
	defb 0f8h,03bh,091h,0aah,091h,0aah,03ch,0ffh	; 782c  ......<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7834: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (7
;   bytes)
;   0x7834..0x783b  (7 bytes)
DATA_mensaje_24_7834:
	defb 0f8h,03bh,091h,0aah,002h,03ch,0ffh	; 7834

; ----------------------------------------------------------------------
; DATOS mensaje_24_783B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (83
;   bytes)
;   0x783b..0x788e  (83 bytes)
DATA_mensaje_24_783B:
	defb 0f8h,03bh,092h,077h,003h,092h,077h,003h,000h,092h,077h,003h,092h,077h,003h,000h	; 783b  ...w..w...w..w..
	defb 09dh,091h,0aah,01dh,01dh,01dh,03ch,0fbh,03bh,049h,066h,0a6h,001h,000h,04fh,05ch	; 784b  ......<..If...O\
	defb 003h,050h,0a3h,000h,07fh,003h,091h,0afh,001h,03ch,0fdh,0f8h,03bh,08ch,004h,0afh	; 785b  .P.......<......
	defb 000h,08ch,004h,0afh,03ch,0feh,0fbh,03bh,062h,042h,0d9h,04bh,052h,003h,000h,04fh	; 786b  ....<...bB.KR..O
	defb 05ch,003h,066h,069h,052h,04bh,05eh,042h,0feh,053h,049h,06ah,04fh,003h,0a6h,04fh	; 787b  \.fiRK^B.SIjO..O
	defb 06bh,03ch,0ffh	; 788b

; ----------------------------------------------------------------------
; DATOS mensaje_24_788E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (8
;   bytes)
;   0x788e..0x7896  (8 bytes)
DATA_mensaje_24_788E:
	defb 0f8h,03bh,091h,091h,0aah,002h,03ch,0ffh	; 788e  ......<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7896: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0x7896..0x78a3  (13 bytes)
DATA_mensaje_24_7896:
	defb 0fbh,03bh,093h,076h,003h,045h,003h,000h,041h,068h,06bh,03ch,0ffh	; 7896  ...v.E..Ahk<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_78A3: 1 palabras: los mensajes de la sala 238 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x78a3..0x78a5  (2 bytes)
DATA_mensajes_24_78A3:
	defb 0a5h,078h	; 78a3

; ----------------------------------------------------------------------
; DATOS mensaje_24_78A5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (79
;   bytes)
;   0x78a5..0x78f4  (79 bytes)
DATA_mensaje_24_78A5:
	defb 0f8h,03bh,049h,058h,000h,077h,003h,097h,020h,077h,0c5h,0c0h,055h,059h,0feh,077h	; 78a5  ..IX.w.. w..UY.w
	defb 003h,086h,07ch,000h,0a6h,052h,041h,042h,000h,043h,066h,041h,000h,083h,003h,077h	; 78b5  ..|..RAB.CfA...w
	defb 07fh,020h,045h,003h,0feh,041h,068h,06dh,04fh,003h,006h,0fdh,054h,06dh,052h,003h	; 78c5  . E..AhmO...TmR.
	defb 062h,000h,04ah,041h,05fh,06dh,04bh,003h,0a4h,051h,06ch,0b0h,0a6h,052h,0feh,050h	; 78d5  b.JA_mK..Ql..R.P
	defb 067h,0a5h,042h,06ch,000h,04bh,052h,041h,068h,066h,04bh,041h,065h,03ch,0ffh	; 78e5  g.Bl.KRAhfKAe<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_78F4: 1 palabras: los mensajes de la sala 239 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x78f4..0x78f6  (2 bytes)
DATA_mensajes_24_78F4:
	defb 0f6h,078h	; 78f4

; ----------------------------------------------------------------------
; DATOS mensaje_24_78F6: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (64
;   bytes)
;   0x78f6..0x7936  (64 bytes)
DATA_mensaje_24_78F6:
	defb 0f8h,03bh,0c2h,059h,000h,0b3h,000h,012h,053h,003h,0b5h,058h,000h,04bh,0a4h,042h	; 78f6  ...Y....S..X.K.B
	defb 05eh,051h,058h,0eah,006h,0d4h,0c1h,0c5h,079h,003h,077h,003h,045h,003h,000h,054h	; 7906  ^QX.....y.w.E..T
	defb 045h,003h,041h,000h,057h,060h,067h,058h,0eah,06ch,0feh,044h,043h,052h,000h,050h	; 7916  E.A.W`gX.l.DCR.P
	defb 058h,000h,04eh,049h,045h,066h,000h,065h,05fh,045h,003h,043h,068h,001h,03ch,0ffh	; 7926  X.NIEf.e_E.Ch.<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_7936: 1 palabras: los mensajes de la sala 240 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x7936..0x7938  (2 bytes)
DATA_mensajes_24_7936:
	defb 038h,079h	; 7936

; ----------------------------------------------------------------------
; DATOS mensaje_24_7938: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (617
;   bytes)
;   0x7938..0x7ba1  (617 bytes)
DATA_mensaje_24_7938:
	defb 0fbh,03bh,0f7h,0fch,000h,049h,06bh,041h,06bh,03ch,0fdh,0fch,03bh,074h,099h,04fh	; 7938  .....IkAk<...t.O
	defb 003h,0a6h,052h,000h,049h,06bh,041h,04ah,006h,000h,04bh,045h,04bh,0feh,049h,049h	; 7948  ..R.IkAJ..KEK.II
	defb 05eh,052h,003h,000h,046h,04fh,06dh,04fh,003h,006h,000h,05fh,04ch,05fh,04ch,0feh	; 7958  ^R..FOmO..._L_L.
	defb 0bah,0ddh,0c2h,0c3h,06ch,000h,061h,051h,05dh,003h,042h,000h,04ah,04dh,066h,069h	; 7968  ....l.aQ].B.JMfi
	defb 052h,0feh,04fh,05eh,068h,045h,001h,03ch,0fdh,0fbh,03bh,0f7h,0fch,00ah,00ah,040h	; 7978  R.O^hE.<.......@
	defb 054h,04fh,053h,000h,041h,0a6h,04bh,0a5h,054h,066h,0feh,065h,06ah,049h,06dh,052h	; 7988  TOS.A.K.Tf.ejImR
	defb 003h,000h,0ech,057h,068h,06bh,03ch,0feh,0fch,03bh,08bh,003h,07fh,053h,000h,0f0h	; 7998  ...Whk<......S..
	defb 0deh,04ch,068h,0b7h,059h,054h,041h,065h,006h,0feh,04eh,069h,055h,00ah,00ah,03ch	; 79a8  .Lh.YTAe..NiU..<
	defb 0fdh,0fbh,03bh,04eh,069h,055h,000h,0c9h,002h,03ch,0feh,0fch,03bh,074h,099h,058h	; 79b8  ...NiU...<...t.X
	defb 0c2h,0c3h,052h,003h,059h,000h,074h,099h,058h,049h,053h,06ch,0feh,05eh,0a6h,052h	; 79c8  ..R.Y.t.XISl.^.R
	defb 047h,069h,052h,068h,0bah,045h,003h,000h,041h,068h,045h,066h,054h,03ch,0fdh,0fbh	; 79d8  GiRh.E..AhEfT<..
	defb 03bh,062h,04bh,000h,065h,048h,069h,059h,003h,000h,04eh,058h,0bah,058h,0d1h,0b6h	; 79e8  .bK.eHiY..NX.X..
	defb 06ch,0feh,046h,045h,04dh,052h,047h,069h,054h,041h,002h,03ch,0fdh,0fch,03bh,00ah	; 79f8  l.FEMRGiTA.<....
	defb 00ah,0f7h,0f9h,0a6h,052h,041h,042h,06dh,04fh,003h,03ch,0feh,0fbh,03bh,00ah,00ah	; 7a08  ....RABmO.<.....
	defb 053h,003h,06dh,054h,0bah,054h,058h,002h,03ch,0fdh,0fch,03bh,053h,003h,049h,055h	; 7a18  S.mT.TX.<...S.IU
	defb 052h,003h,062h,041h,068h,000h,05ch,041h,05dh,003h,06dh,054h,000h,08bh,003h,07ch	; 7a28  R.bAh.\A].mT...|
	defb 058h,0feh,0d0h,058h,0d6h,04fh,003h,065h,006h,00ah,00ah,052h,003h,062h,000h,0b3h	; 7a38  X..X.O.e...R.b..
	defb 045h,06dh,045h,003h,043h,068h,053h,0feh,074h,099h,055h,053h,0a6h,052h,000h,045h	; 7a48  EmE.ChS.t.US.R.E
	defb 048h,045h,003h,043h,058h,054h,041h,0feh,0d6h,04fh,003h,0a6h,04fh,054h,040h,03ch	; 7a58  HE.CXTA..O..OT@<
	defb 0fdh,0fbh,03bh,00ah,00ah,0f7h,0fch,00ah,00ah,03ch,0feh,0fch,03bh,04eh,041h,051h	; 7a68  .........<...NAQ
	defb 058h,04fh,061h,055h,062h,000h,074h,099h,059h,000h,079h,003h,077h,003h,06ch,0feh	; 7a78  XOaUb.t.Y.y.w.l.
	defb 04fh,044h,04bh,052h,000h,074h,099h,058h,0c2h,0c3h,055h,045h,043h,066h,054h,046h	; 7a88  ODKR.t.X..UECfTF
	defb 0a3h,03ch,0fdh,0fbh,03bh,0f7h,0f9h,0a6h,052h,041h,042h,0d6h,059h,000h,04bh,040h	; 7a98  .<......RAB.Y.K@
	defb 06bh,04dh,057h,006h,0feh,0f7h,0fch,055h,000h,04eh,069h,05dh,053h,003h,000h,0dbh	; 7aa8  kMW....U.Ni]S...
	defb 06bh,069h,052h,068h,0feh,054h,06dh,052h,00ah,00ah,03ch,0fdh,0fch,03bh,04ah,040h	; 7ab8  kiRh.TmR..<...J@
	defb 000h,053h,003h,042h,04fh,003h,045h,006h,000h,074h,099h,059h,000h,041h,051h,062h	; 7ac8  .S.BO.E..t.Y.AQb
	defb 0feh,0f7h,0f9h,058h,049h,053h,000h,089h,003h,075h,055h,000h,04bh,052h,068h,04bh	; 7ad8  ...XIS...uU.KRhK
	defb 00ah,00ah,0feh,074h,099h,058h,049h,053h,000h,046h,066h,0a6h,052h,068h,04fh,003h	; 7ae8  ...t.XIS.Ff.RhO.
	defb 06ah,042h,03ch,0fdh,0fbh,03bh,042h,042h,06dh,006h,000h,04eh,06dh,054h,049h,053h	; 7af8  jB<...BBm..NmTIS
	defb 000h,054h,041h,053h,0dbh,042h,006h,0feh,0cfh,0d0h,062h,000h,046h,0a6h,053h,000h	; 7b08  .TAS.B....b.F.S.
	defb 0f7h,0fch,058h,049h,053h,0feh,0dbh,0a6h,052h,068h,055h,000h,050h,045h,003h,041h	; 7b18  ..XIS...RhU.PE.A
	defb 054h,041h,06bh,03ch,0fdh,0fch,03bh,053h,003h,0a6h,050h,04fh,003h,0a6h,052h,000h	; 7b28  TAk<...S..PO..R.
	defb 041h,041h,06dh,04fh,003h,006h,0f7h,0f9h,045h,003h,0feh,04bh,040h,06bh,04dh,055h	; 7b38  AAmO....E..K@kMU
	defb 000h,0e7h,046h,052h,0dch,048h,069h,059h,003h,00ah,00ah,006h,0feh,04eh,058h,04fh	; 7b48  ..FR.HiY.....NXO
	defb 061h,055h,062h,000h,074h,099h,059h,000h,079h,003h,077h,003h,06ch,0feh,04ah,04bh	; 7b58  aUb.t.Y.y.w.l.JK
	defb 050h,045h,003h,043h,052h,052h,003h,062h,000h,045h,054h,066h,04ch,003h,000h,04fh	; 7b68  PE.CRR.b.ETfL..O
	defb 044h,04ch,03ch,0fdh,0fbh,03bh,0f7h,0fch,00ah,00ah,03ch,0feh,0fch,03bh,090h,07fh	; 7b78  DL<.......<.....
	defb 003h,0cah,059h,000h,049h,069h,047h,066h,041h,055h,04bh,065h,042h,006h,0feh,04ah	; 7b88  ..Y.IiGfAUKeB..J
	defb 040h,000h,0dch,047h,04eh,003h,001h,03ch,0ffh	; 7b98  @..GN..<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_7BA1: 1 palabras: los mensajes de la sala 241 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x7ba1..0x7ba3  (2 bytes)
DATA_mensajes_24_7BA1:
	defb 0a3h,07bh	; 7ba1

; ----------------------------------------------------------------------
; DATOS mensaje_24_7BA3: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (91
;   bytes)
;   0x7ba3..0x7bfe  (91 bytes)
DATA_mensaje_24_7BA3:
	defb 0f8h,03bh,04eh,066h,055h,000h,045h,045h,003h,063h,047h,000h,05dh,04bh,045h,003h	; 7ba3  ..NfU.EE.cG.]KE.
	defb 0feh,077h,003h,097h,020h,077h,0c5h,0c0h,06ch,000h,0deh,0f0h,055h,000h,04bh,003h	; 7bb3  .w.. w..l...U.K.
	defb 0a4h,042h,04bh,003h,045h,058h,075h,07fh,080h,06ch,000h,051h,047h,068h,0eah,00ah	; 7bc3  .BK.EXu..l.QGh..
	defb 00ah,0fdh,0c5h,0c0h,058h,000h,041h,04ch,003h,049h,045h,055h,000h,093h,08fh,058h	; 7bd3  ....X.AL.IEU...X
	defb 000h,0d4h,0c1h,0c5h,045h,003h,0feh,04eh,058h,000h,04ch,045h,003h,04fh,06ch,000h	; 7be3  ....E..NX.LE.Ol.
	defb 0e1h,06bh,04ch,052h,003h,040h,06ah,042h,001h,03ch,0ffh	; 7bf3  .kLR.@jB.<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_7BFE: 13 palabras: los mensajes de la sala 243 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (26 bytes)
;   0x7bfe..0x7c18  (26 bytes)
DATA_mensajes_24_7BFE:
	defb 018h,07ch	; 7bfe
	defb 046h,07ch	; 7c00
	defb 07fh,07ch	; 7c02
	defb 08fh,07ch	; 7c04
	defb 0aah,07ch	; 7c06
	defb 0c7h,07ch	; 7c08
	defb 0e0h,07ch	; 7c0a
	defb 0eeh,07ch	; 7c0c
	defb 008h,07dh	; 7c0e
	defb 03ch,07dh	; 7c10
	defb 082h,07dh	; 7c12
	defb 0f9h,07dh	; 7c14
	defb 010h,07eh	; 7c16

; ----------------------------------------------------------------------
; DATOS mensaje_24_7C18: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0x7c18..0x7c46  (46 bytes)
DATA_mensaje_24_7C18:
	defb 0f8h,03bh,049h,058h,000h,041h,043h,055h,059h,000h,04dh,06dh,04eh,003h,04fh,003h	; 7c18  ..IX.ACUY.MmN.O.
	defb 041h,04fh,003h,041h,0feh,051h,04fh,06bh,068h,000h,045h,05dh,042h,058h,000h,08eh	; 7c28  AO.A.QOkh.E]BX..
	defb 09dh,083h,045h,003h,0feh,040h,068h,06dh,04bh,003h,0a3h,065h,03ch,0ffh	; 7c38  ..E..@hmK..e<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7C46: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (57
;   bytes)
;   0x7c46..0x7c7f  (57 bytes)
DATA_mensaje_24_7C46:
	defb 0f8h,03bh,0c9h,052h,003h,062h,000h,04eh,058h,0ebh,000h,045h,058h,000h,07fh,003h	; 7c46  ...R.b.NX..EX...
	defb 08ah,003h,082h,003h,0c5h,045h,003h,0feh,0b0h,06bh,069h,052h,044h,0a6h,04fh,04eh	; 7c56  .....E...kiRD.ON
	defb 042h,052h,003h,000h,05bh,04bh,046h,003h,054h,0feh,050h,045h,066h,06ch,000h,0e4h	; 7c66  BR..[KF.T.PEfl..
	defb 0a6h,052h,044h,068h,066h,04bh,041h,03ch,0ffh	; 7c76  .RDhfKA<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7C7F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0x7c7f..0x7c8f  (16 bytes)
DATA_mensaje_24_7C7F:
	defb 0f8h,03bh,064h,0a6h,047h,067h,04bh,052h,000h,0dch,046h,054h,04ah,069h,03ch,0ffh	; 7c7f  ..d.GgKR..FTJi<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7C8F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (27
;   bytes)
;   0x7c8f..0x7caa  (27 bytes)
DATA_mensaje_24_7C8F:
	defb 0fbh,03bh,04ch,05fh,058h,000h,082h,020h,08bh,003h,098h,058h,000h,042h,043h,055h	; 7c8f  ..L_X.. ...X.BCU
	defb 0feh,08eh,09dh,083h,045h,003h,040h,068h,06bh,03ch,0ffh	; 7c9f  ....E.@hk<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7CAA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x7caa..0x7cc7  (29 bytes)
DATA_mensaje_24_7CAA:
	defb 0fbh,03bh,0c9h,058h,000h,05ch,06dh,052h,051h,062h,054h,041h,000h,08eh,09dh,083h	; 7caa  ...X.\mRQbTA....
	defb 055h,04bh,045h,0feh,0b8h,043h,054h,041h,048h,053h,003h,03ch,0ffh	; 7cba  UKE..CTAHS.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7CC7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (25
;   bytes)
;   0x7cc7..0x7ce0  (25 bytes)
DATA_mensaje_24_7CC7:
	defb 0fbh,03bh,045h,054h,067h,000h,044h,053h,04bh,06ch,000h,061h,04bh,052h,066h,0a6h	; 7cc7  ..ETg.DSKl.aKRf.
	defb 04bh,0a3h,068h,0feh,065h,042h,057h,03ch,0ffh	; 7cd7  K.h.eBW<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7CE0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x7ce0..0x7cee  (14 bytes)
DATA_mensaje_24_7CE0:
	defb 0fbh,03bh,0cbh,045h,003h,000h,053h,044h,041h,065h,042h,057h,03ch,0ffh	; 7ce0  ...E..SDAeBW<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7CEE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (26
;   bytes)
;   0x7cee..0x7d08  (26 bytes)
DATA_mensaje_24_7CEE:
	defb 0fbh,03bh,049h,06dh,054h,000h,08eh,09dh,083h,054h,066h,000h,053h,003h,049h,055h	; 7cee  ..ImT....Tf.S.IU
	defb 052h,003h,062h,0feh,040h,068h,06bh,065h,03ch,0ffh	; 7cfe  R.b.@hke<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7D08: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (52
;   bytes)
;   0x7d08..0x7d3c  (52 bytes)
DATA_mensaje_24_7D08:
	defb 0fch,03bh,044h,059h,003h,040h,04ah,06dh,000h,053h,04bh,059h,000h,041h,047h,051h	; 7d08  ..DY.@Jm.SKY.AGQ
	defb 002h,03ch,0feh,0f8h,03bh,04eh,042h,054h,06dh,04bh,003h,063h,006h,060h,04ch,049h	; 7d18  .<...NBTmK.c.`LI
	defb 059h,000h,0b3h,0feh,063h,05eh,055h,000h,046h,06ch,000h,046h,067h,055h,0dch,0a6h	; 7d28  Y...c^U.Fl.FgU..
	defb 053h,068h,03ch,0ffh	; 7d38

; ----------------------------------------------------------------------
; DATOS mensaje_24_7D3C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (70
;   bytes)
;   0x7d3c..0x7d82  (70 bytes)
DATA_mensaje_24_7D3C:
	defb 0fch,03bh,079h,003h,077h,003h,058h,049h,053h,000h,0c9h,045h,0edh,066h,054h,041h	; 7d3c  ..y.w.XIS..E.fTA
	defb 045h,041h,002h,03ch,0feh,0f8h,03bh,08dh,08dh,08dh,006h,06bh,045h,041h,049h,06ah	; 7d4c  EA.<.......kEAIj
	defb 059h,0feh,089h,004h,09dh,089h,004h,020h,07ch,0c5h,062h,000h,089h,09dh,07ah,090h	; 7d5c  Y...... |.b...z.
	defb 052h,003h,058h,042h,0feh,0c6h,062h,000h,040h,049h,045h,003h,069h,053h,0a6h,04fh	; 7d6c  R.XB..b.@IE.iS.O
	defb 06dh,04bh,003h,0a3h,03ch,0ffh	; 7d7c

; ----------------------------------------------------------------------
; DATOS mensaje_24_7D82: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (119
;   bytes)
;   0x7d82..0x7df9  (119 bytes)
DATA_mensaje_24_7D82:
	defb 0fch,03bh,08dh,003h,077h,058h,0c8h,0a6h,052h,068h,049h,053h,000h,06bh,045h,068h	; 7d82  ....wX..RhIS.kEh
	defb 002h,03ch,0feh,0f8h,03bh,044h,063h,0a6h,006h,0edh,0a6h,053h,0a6h,04fh,06dh,045h	; 7d92  .<...Dc....S.OmE
	defb 001h,000h,04bh,003h,051h,059h,0feh,040h,058h,08eh,09dh,083h,059h,000h,055h,04dh	; 7da2  ..K.QY.@X...Y.UM
	defb 062h,058h,04bh,003h,0a3h,006h,0fdh,012h,01dh,013h,0f4h,0b6h,000h,05bh,053h,0b8h	; 7db2  bXK..........[S.
	defb 068h,053h,000h,08eh,09dh,083h,045h,003h,0feh,054h,047h,054h,0a6h,052h,044h,067h	; 7dc2  hS....E..TGT.RDg
	defb 005h,044h,04bh,003h,041h,04ah,06dh,055h,0feh,04bh,06dh,059h,004h,041h,06ch,000h	; 7dd2  .DK.AJmU.KmY.Al.
	defb 045h,048h,05eh,041h,053h,0feh,055h,04dh,062h,058h,06ch,000h,044h,041h,053h,041h	; 7de2  EH^AS.UMbXl.DASA
	defb 04fh,06dh,04bh,003h,0a3h,03ch,0ffh	; 7df2

; ----------------------------------------------------------------------
; DATOS mensaje_24_7DF9: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0x7df9..0x7e10  (23 bytes)
DATA_mensaje_24_7DF9:
	defb 0f8h,03bh,0c9h,06ch,000h,0c8h,0a6h,053h,068h,058h,045h,000h,065h,042h,0feh,046h	; 7df9  ...l...ShXE.eB.F
	defb 049h,043h,06dh,04eh,003h,03ch,0ffh	; 7e09

; ----------------------------------------------------------------------
; DATOS mensaje_24_7E10: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (71
;   bytes)
;   0x7e10..0x7e57  (71 bytes)
DATA_mensaje_24_7E10:
	defb 0f8h,03bh,08eh,09dh,083h,059h,08eh,097h,070h,06ch,000h,04ch,047h,0a6h,052h,047h	; 7e10  .....Y..pl.LG.RG
	defb 069h,04fh,0feh,044h,069h,041h,04bh,003h,0a3h,006h,000h,04eh,058h,05eh,05eh,0feh	; 7e20  iO.DiAK....NX^^.
	defb 053h,0a6h,052h,044h,046h,054h,04ah,069h,006h,0c6h,066h,055h,000h,053h,0a6h,052h	; 7e30  S.RDFTJi..fU.S.R
	defb 0feh,011h,059h,003h,06dh,058h,04fh,045h,066h,059h,000h,049h,058h,000h,045h,04eh	; 7e40  ..Y.mXOEfY.IX.EN
	defb 003h,047h,04bh,003h,0a3h,03ch,0ffh	; 7e50

; ----------------------------------------------------------------------
; DATOS mensajes_24_7E57: 3 palabras: los mensajes de la sala 244 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (6
;   bytes)
;   0x7e57..0x7e5d  (6 bytes)
DATA_mensajes_24_7E57:
	defb 05dh,07eh	; 7e57
	defb 0c4h,07eh	; 7e59
	defb 0f0h,07eh	; 7e5b

; ----------------------------------------------------------------------
; DATOS mensaje_24_7E5D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (103
;   bytes)
;   0x7e5d..0x7ec4  (103 bytes)
DATA_mensaje_24_7E5D:
	defb 0f8h,03bh,040h,0a6h,000h,0f7h,0fch,04ah,06dh,000h,0f7h,0fbh,04ah,06dh,0feh,0c2h	; 7e5d  ..@....Jm...Jm..
	defb 062h,000h,04ch,043h,052h,003h,04ch,057h,043h,006h,000h,046h,047h,053h,049h,06ah	; 7e6d  b.LCR.LWC..FGSIj
	defb 055h,0feh,065h,068h,053h,000h,0c1h,0c5h,079h,003h,077h,003h,06ch,000h,040h,045h	; 7e7d  U.ehS...y.w.l.@E
	defb 003h,061h,068h,0feh,04bh,0a4h,042h,046h,0a5h,042h,045h,003h,000h,040h,068h,04eh	; 7e8d  .ah.K.BF.BE..@hN
	defb 042h,054h,006h,0fdh,04fh,04fh,003h,04bh,000h,04eh,058h,000h,04bh,0a4h,05dh,003h	; 7e9d  BT..OO.K.NX.K.].
	defb 042h,04bh,0a3h,059h,0feh,06bh,045h,0a6h,052h,054h,041h,066h,04bh,041h,052h,003h	; 7ead  BK.Y.kE.RTAfKAR.
	defb 04ch,048h,053h,003h,057h,03ch,0ffh	; 7ebd

; ----------------------------------------------------------------------
; DATOS mensaje_24_7EC4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (44
;   bytes)
;   0x7ec4..0x7ef0  (44 bytes)
DATA_mensaje_24_7EC4:
	defb 0f8h,03bh,079h,003h,077h,003h,06ch,000h,040h,045h,003h,061h,068h,000h,04bh,0a4h	; 7ec4  ..y.w.l.@E.ah.K.
	defb 042h,046h,0a5h,042h,058h,0feh,046h,0a5h,042h,04eh,045h,003h,000h,075h,08fh,074h	; 7ed4  BF.BX.F.BNE..u.t
	defb 090h,012h,0c2h,04fh,003h,0a6h,04fh,053h,059h,001h,03ch,0ffh	; 7ee4  ...O..OSY.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7EF0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0x7ef0..0x7f0d  (29 bytes)
DATA_mensaje_24_7EF0:
	defb 0fch,03bh,046h,067h,051h,0a6h,001h,000h,0b7h,06ch,051h,048h,0a6h,001h,03ch,0feh	; 7ef0  ..FgQ....lQH..<.
	defb 0f8h,03bh,0c6h,045h,003h,000h,099h,071h,052h,003h,04ch,03ch,0ffh	; 7f00  ...E...qR.L<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_7F0D: 1 palabras: los mensajes de la sala 248 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x7f0d..0x7f0f  (2 bytes)
DATA_mensajes_24_7F0D:
	defb 00fh,07fh	; 7f0d

; ----------------------------------------------------------------------
; DATOS mensaje_24_7F0F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (39
;   bytes)
;   0x7f0f..0x7f36  (39 bytes)
DATA_mensaje_24_7F0F:
	defb 0f8h,03bh,080h,0aah,098h,07bh,020h,0e3h,055h,000h,065h,047h,000h,055h,04fh,0bah	; 7f0f  .....{ .U.eG.UO.
	defb 045h,003h,0feh,0c9h,0f4h,045h,0b6h,000h,049h,058h,040h,04fh,067h,06ch,000h,040h	; 7f1f  E....E..IX@Ogl.@
	defb 068h,041h,052h,04fh,065h,03ch,0ffh	; 7f2f

; ----------------------------------------------------------------------
; DATOS mensajes_24_7F36: 2 palabras: los mensajes de la sala 253 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (4
;   bytes)
;   0x7f36..0x7f3a  (4 bytes)
DATA_mensajes_24_7F36:
	defb 03ah,07fh	; 7f36
	defb 050h,07fh	; 7f38

; ----------------------------------------------------------------------
; DATOS mensaje_24_7F3A: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x7f3a..0x7f50  (22 bytes)
DATA_mensaje_24_7F3A:
	defb 0fbh,03bh,089h,09dh,08eh,020h,052h,003h,000h,049h,058h,063h,05eh,06ch,049h,06bh	; 7f3a  ..... R..IXc^lIk
	defb 04ch,058h,057h,03ch,0fah,028h	; 7f4a

; ----------------------------------------------------------------------
; DATOS mensaje_24_7F50: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0x7f50..0x7f66  (22 bytes)
DATA_mensaje_24_7F50:
	defb 0fbh,03bh,063h,0a6h,04fh,001h,000h,05fh,050h,045h,003h,000h,051h,051h,003h,041h	; 7f50  ..c.O.._PE..QQ.A
	defb 052h,068h,06bh,001h,03ch,0ffh	; 7f60

; ----------------------------------------------------------------------
; DATOS mensajes_24_7F66: 1 palabras: los mensajes de la sala 107 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x7f66..0x7f68  (2 bytes)
DATA_mensajes_24_7F66:
	defb 068h,07fh	; 7f66

; ----------------------------------------------------------------------
; DATOS mensaje_24_7F68: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0x7f68..0x7f7d  (21 bytes)
DATA_mensaje_24_7F68:
	defb 0f8h,03bh,060h,063h,05fh,055h,000h,040h,054h,055h,0d2h,0a6h,052h,059h,041h,048h	; 7f68  ..`c_U.@TU..RYAH
	defb 054h,041h,065h,03ch,0ffh	; 7f78

; ----------------------------------------------------------------------
; DATOS mensajes_24_7F7D: 1 palabras: los mensajes de la sala 80 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0x7f7d..0x7f7f  (2 bytes)
DATA_mensajes_24_7F7D:
	defb 07fh,07fh	; 7f7d

; ----------------------------------------------------------------------
; DATOS mensaje_24_7F7F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0x7f7f..0x7f8d  (14 bytes)
DATA_mensaje_24_7F7F:
	defb 0fbh,03bh,06eh,074h,083h,079h,05fh,04ch,003h,042h,05fh,06fh,03ch,0ffh	; 7f7f  ..nt.y_L.B_o<.

; ----------------------------------------------------------------------
; DATOS mensajes_24_7F8D: 15 palabras: los mensajes de la sala 263 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76
;   (30 bytes)
;   0x7f8d..0x7fab  (30 bytes)
DATA_mensajes_24_7F8D:
	defb 0abh,07fh	; 7f8d
	defb 0e5h,07fh	; 7f8f
	defb 0f4h,07fh	; 7f91
	defb 006h,080h	; 7f93
	defb 0d7h,080h	; 7f95
	defb 0e8h,080h	; 7f97
	defb 01dh,081h	; 7f99
	defb 0a4h,081h	; 7f9b
	defb 0e0h,081h	; 7f9d
	defb 045h,082h	; 7f9f
	defb 074h,082h	; 7fa1
	defb 084h,082h	; 7fa3
	defb 091h,082h	; 7fa5
	defb 0a0h,082h	; 7fa7
	defb 016h,083h	; 7fa9

; ----------------------------------------------------------------------
; DATOS mensaje_24_7FAB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (58
;   bytes)
;   0x7fab..0x7fe5  (58 bytes)
DATA_mensaje_24_7FAB:
	defb 0fbh,03bh,053h,003h,042h,04bh,04fh,058h,002h,000h,05dh,003h,042h,063h,006h,000h	; 7fab  ..S.BKOX..].Bc..
	defb 049h,06dh,054h,0feh,053h,049h,06ah,052h,003h,000h,057h,050h,0a3h,000h,07fh,003h	; 7fbb  ImT.SIjR..WP....
	defb 091h,065h,03ch,0feh,0f8h,03bh,057h,052h,06dh,04bh,003h,0a3h,057h,01dh,065h,006h	; 7fcb  .e<...WRmK..W.e.
	defb 04fh,044h,069h,052h,068h,06dh,04fh,003h,03ch,0ffh	; 7fdb  ODiRhmO.<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7FE5: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0x7fe5..0x7ff4  (15 bytes)
DATA_mensaje_24_7FE5:
	defb 0fbh,03bh,0c9h,04fh,003h,045h,000h,047h,068h,04bh,04eh,042h,057h,03ch,0ffh	; 7fe5  ...O.E.GhKNBW<.

; ----------------------------------------------------------------------
; DATOS mensaje_24_7FF4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba (sigue en el banco 25, en
;   0x8000); lo leen p00:4E76 (12 bytes)
;   0x7ff4..0x8000  (12 bytes)
DATA_mensaje_24_7FF4:
	defb 0fbh,03bh,047h,050h,05ah,003h,068h,045h,003h,000h,045h,06bh	; 7ff4  ..GPZ.hE..Ek
