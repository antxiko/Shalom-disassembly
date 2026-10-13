; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 14 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS graficos_9F68_cola: graficos (L_5A2A): [n] n < 0x80 repite el
;   siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: colores
;   de la entrada 2 de 0x7990 (sigue del banco 13); lo leen p00:482F (211
;   bytes)
;   0xa000..0xa0d3  (211 bytes)
DATA_graficos_9F68_cola:
	defb 000h,0ffh,0ffh,0feh,0fah,000h,0ffh,0ffh,000h,003h,0ffh,087h,0a1h,00ch,00ch,0c0h	; a000  ................
	defb 06ch,02ch,08ch,003h,033h,095h,021h,000h,00ch,018h,013h,067h,033h,07fh,0c0h,000h	; a010  l,..3.!....g3...
	defb 03fh,0c0h,07fh,0e6h,0cch,0feh,003h,000h,0fch,003h,0feh,003h,0cch,0ffh,084h,000h	; a020  ?...............
	defb 030h,018h,0c8h,006h,00fh,00ch,013h,017h,02fh,02ch,013h,0e0h,01fh,03ch,07fh,07fh	; a030  0......./,...<..
	defb 0ffh,0ffh,0f3h,007h,0f8h,038h,0feh,0feh,0ffh,0ffh,0cfh,060h,0f0h,030h,0c8h,0e8h	; a040  .....8.....`.0..
	defb 0f4h,034h,0c8h,017h,02fh,02dh,01dh,018h,013h,037h,027h,0e8h,0f4h,0b4h,0b8h,018h	; a050  .4../-...7'.....
	defb 0c8h,0ech,0e4h,0dfh,07fh,06fh,09fh,01fh,03fh,077h,0afh,0fbh,0feh,0f6h,0f9h,0f8h	; a060  .....o..?w......
	defb 0fch,0eeh,0f5h,026h,00ch,060h,061h,002h,060h,067h,06ch,07fh,00fh,030h,0ffh,000h	; a070  ...&.`a.`gl..0..
	defb 01fh,0a0h,00fh,0feh,0f0h,00ch,0ffh,000h,0f0h,005h,0f0h,064h,030h,006h,086h,040h	; a080  ...........d0..@
	defb 006h,0e6h,036h,06fh,06bh,06bh,06fh,06ch,060h,065h,000h,020h,080h,080h,000h,000h	; a090  ..6okkol`e. ....
	defb 07ah,0feh,000h,004h,001h,001h,000h,000h,0beh,0ffh,000h,0f6h,0d6h,08ch,0d6h,0f6h	; a0a0  z...............
	defb 036h,006h,0a6h,000h,0f8h,0f9h,0f8h,001h,039h,001h,003h,03fh,088h,0bfh,03fh,081h	; a0b0  6.......9..?..?.
	defb 0bdh,081h,0fdh,0fdh,001h,004h,0f9h,002h,081h,082h,080h,081h,004h,0bfh,002h,081h	; a0c0  ................
	defb 081h,001h,000h	; a0d0

; ----------------------------------------------------------------------
; DATOS graficos_A0D3: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: patrones de la
;   entrada 2 de 0x7990; lo leen p00:482F (241 bytes)
;   0xa0d3..0xa1c4  (241 bytes)
DATA_graficos_A0D3:
	defb 002h,090h,006h,0a0h,002h,080h,003h,090h,003h,0b0h,003h,0a0h,085h,090h,080h,080h	; a0d3  ................
	defb 090h,0b0h,003h,0a0h,002h,090h,085h,080h,090h,0b0h,090h,090h,006h,0b0h,002h,090h	; a0e3  ................
	defb 009h,0a0h,004h,090h,081h,0b0h,003h,0a0h,004h,090h,083h,0b0h,0f0h,0f0h,006h,0f6h	; a0f3  ................
	defb 088h,0fch,0f4h,0f4h,0f5h,0f5h,0e5h,0e5h,0e4h,029h,0f0h,006h,0e0h,002h,0f0h,006h	; a103  .........)......
	defb 0e0h,082h,000h,0f0h,006h,0e0h,082h,000h,0f0h,007h,0e0h,081h,0f0h,007h,0e0h,081h	; a113  ................
	defb 0f0h,007h,0e0h,003h,080h,087h,0e0h,090h,090h,080h,080h,098h,080h,004h,090h,002h	; a123  ................
	defb 0f0h,006h,090h,002h,0f0h,002h,090h,08ah,080h,0e0h,090h,090h,080h,080h,090h,080h	; a133  ................
	defb 080h,060h,004h,0e0h,002h,0fah,08fh,0a9h,090h,090h,0e0h,0ebh,0b0h,0fah,0fah,0a9h	; a143  .`..............
	defb 090h,0e0h,0e0h,0ebh,0b0h,090h,003h,080h,004h,0e0h,002h,0b0h,081h,0a0h,005h,0e0h	; a153  ................
	defb 082h,0a0h,0e0h,006h,0feh,082h,0a0h,0e0h,006h,0feh,083h,0b0h,0a0h,0a0h,015h,0e0h	; a163  ................
	defb 084h,0feh,0f0h,0feh,0f0h,003h,0feh,085h,0f0h,0feh,0f0h,0feh,0f0h,003h,0feh,0a1h	; a173  ................
	defb 0f0h,0e0h,0e0h,080h,0e0h,0e0h,090h,080h,080h,0f0h,0feh,0feh,0e0h,0e0h,098h,090h	; a183  ................
	defb 0b9h,0f0h,0feh,0feh,0e0h,0e0h,098h,090h,0b9h,0e0h,0e0h,080h,0e0h,0e0h,090h,080h	; a193  ................
	defb 080h,003h,090h,002h,080h,086h,090h,080h,080h,0b9h,0b9h,0b8h,003h,060h,002h,090h	; a1a3  .............`..
	defb 002h,0b9h,081h,0b8h,003h,060h,005h,090h,002h,080h,083h,090h,080h,080h,020h,0b0h	; a1b3  .....`........ .
	defb 000h	; a1c3

; ----------------------------------------------------------------------
; DATOS graficos_A1C4: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: colores de la entrada
;   3 de 0x7990; lo leen p00:482F (247 bytes)
;   0xa1c4..0xa2bb  (247 bytes)
DATA_graficos_A1C4:
	defb 096h,09bh,0bbh,09bh,080h,09bh,0bbh,09bh,080h,0d9h,0ddh,0d9h,001h,0d9h,0ddh,0d9h	; a1c4  ................
	defb 001h,088h,077h,055h,077h,077h,055h,004h,077h,0ffh,055h,077h,077h,055h,077h,088h	; a1d4  ..wUwwU.w.UwwUw.
	defb 0fch,070h,01fh,001h,0f1h,00fh,0ffh,0f8h,0ffh,0e3h,0fch,0c0h,0f1h,08fh,038h,006h	; a1e4  .p............8.
	defb 0c0h,01ch,0e1h,01fh,0fch,003h,01ch,0c3h,00fh,0f1h,0ffh,070h,01fh,0e1h,0ffh,0ffh	; a1f4  ...........p....
	defb 000h,03fh,060h,04ah,055h,04ah,055h,04ah,000h,0fch,006h,052h,0aah,052h,0aah,052h	; a204  .?`JUJUJ...R.R.R
	defb 04ah,055h,04ah,055h,04ah,060h,03fh,000h,052h,0aah,052h,0aah,052h,006h,0fch,000h	; a214  JUJUJ`?.R.R.R...
	defb 055h,04eh,060h,03fh,060h,037h,01bh,000h,0aah,072h,006h,0fch,006h,0ech,0d8h,000h	; a224  UN`?`7...r......
	defb 0fbh,0e2h,080h,0b5h,0eah,0d0h,0aah,0d0h,0f7h,027h,001h,05fh,02dh,007h,04ah,007h	; a234  .........'._-.J.
	defb 0e0h,062h,0c8h,0d2h,0adh,080h,0f4h,0efh,02bh,003h,04fh,015h,05eh,001h,017h,03dh	; a244  .b......+.O.^..=
	defb 0c0h,0a8h,0c0h,090h,060h,0c0h,020h,0c0h,0a8h,0a5h,080h,0d0h,080h,0c0h,0a0h,040h	; a254  ....`. ........@
	defb 0a8h,007h,009h,002h,011h,003h,001h,005h,002h,009h,001h,005h,002h,013h,005h,007h	; a264  ................
	defb 003h,0ffh,0feh,065h,090h,044h,000h,010h,000h,0ffh,0efh,059h,002h,008h,002h,004h	; a274  ...e.D.....Y....
	defb 000h,09eh,020h,081h,0c8h,0a5h,0feh,0ffh,000h,000h,020h,008h,001h,05ah,0bfh,0ffh	; a284  .. ....... ..Z..
	defb 080h,000h,000h,02ah,000h,000h,048h,000h,000h,002h,080h,000h,005h,000h,000h,040h	; a294  ...*..H........@
	defb 00bh,000h,081h,00eh,004h,06eh,082h,000h,00fh,006h,0efh,006h,06eh,082h,060h,000h	; a2a4  .....n......n.`.
	defb 004h,0efh,081h,0e0h,003h,000h,000h	; a2b4

; ----------------------------------------------------------------------
; DATOS graficos_A2BB: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: patrones de la
;   entrada 3 de 0x7990; lo leen p00:482F (137 bytes)
;   0xa2bb..0xa344  (137 bytes)
DATA_graficos_A2BB:
	defb 0a4h,0a9h,0a6h,0a9h,0c0h,0a9h,0a6h,0a9h,0c0h,0b9h,0b6h,0b9h,0c0h,0b9h,0b6h,0b9h	; a2bb  ................
	defb 0c0h,0cbh,090h,090h,0b0h,0b0h,090h,0b0h,0b0h,0a0h,0a0h,090h,0a0h,0a0h,090h,090h	; a2cb  ................
	defb 0cah,054h,075h,054h,075h,007h,054h,083h,075h,054h,054h,004h,075h,003h,054h,002h	; a2db  .TuTu.T.uTT.u.T.
	defb 075h,004h,054h,081h,075h,004h,054h,002h,0f0h,083h,0e0h,0f0h,0f0h,003h,0e0h,006h	; a2eb  u.T.u.T.........
	defb 0f0h,085h,0e0h,0f0h,0e0h,0e0h,0f0h,007h,0e0h,002h,0f0h,082h,0e0h,0f0h,006h,0e0h	; a2fb  ................
	defb 081h,050h,003h,040h,08bh,0f0h,0e0h,0f0h,0f0h,050h,050h,040h,040h,098h,087h,097h	; a30b  .P.@.....PP@@...
	defb 005h,074h,083h,098h,097h,087h,00ah,074h,083h,087h,097h,098h,005h,074h,083h,087h	; a31b  .t.....t.....t..
	defb 097h,098h,020h,074h,081h,094h,007h,074h,081h,094h,00eh,074h,081h,094h,007h,074h	; a32b  .. t...t...t...t
	defb 081h,094h,018h,054h,011h,0f0h,00fh,0e0h,000h	; a33b  ...T.....

; ----------------------------------------------------------------------
; DATOS graficos_A344: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: colores de la entrada
;   4 de 0x7990; lo leen p00:482F (199 bytes)
;   0xa344..0xa40b  (199 bytes)
DATA_graficos_A344:
	defb 0a0h,0f0h,0e0h,0c7h,00fh,0e7h,0e0h,0ech,0e8h,06fh,02fh,00fh,080h,083h,0c1h,001h	; a344  .........o/.....
	defb 000h,0e0h,0c0h,080h,000h,000h,080h,0c0h,0e8h,040h,0ffh,040h,080h,081h,0b1h,019h	; a354  .........@.@....
	defb 043h,008h,0ffh,0a1h,056h,06ah,056h,06ah,056h,06ah,056h,06ah,066h,059h,034h,06bh	; a364  C...VjVjVjVjfY4k
	defb 056h,02dh,01bh,007h,088h,055h,088h,063h,0c3h,0bdh,0a5h,05ah,066h,09ah,02ch,0d6h	; a374  V-...U.c...Zf.,.
	defb 06ah,0b4h,0d8h,0e0h,000h,005h,06fh,084h,00fh,060h,01fh,0c0h,004h,0ebh,08ah,0aah	; a384  j.....o..`......
	defb 044h,0ffh,01fh,0c0h,0eah,0ebh,0eah,019h,0cah,003h,0ffh,088h,001h,0f4h,006h,0f4h	; a394  D...............
	defb 001h,000h,06fh,000h,003h,080h,09ch,0f8h,0ffh,07fh,003h,001h,003h,03fh,07fh,07fh	; a3a4  ..o..........?..
	defb 0ffh,02ch,0c0h,01dh,05dh,05eh,040h,03fh,080h,0c0h,01ah,05ah,09ah,03ah,002h,0fch	; a3b4  .,..]^@?...Z.:..
	defb 001h,000h,0f0h,006h,0f7h,003h,000h,081h,070h,004h,076h,004h,0f7h,081h,007h,003h	; a3c4  ........p.v.....
	defb 000h,006h,076h,0b2h,006h,000h,07fh,0c1h,0beh,0bdh,0b3h,0b7h,0afh,000h,0fch,006h	; a3d4  ..v.............
	defb 0fah,07ah,09ah,0dah,0eah,000h,000h,080h,000h,020h,028h,06ah,03ch,080h,000h,07eh	; a3e4  .z....... (j<..~
	defb 03eh,03eh,000h,02fh,02fh,06fh,01eh,02ah,004h,088h,013h,00fh,000h,09ch,000h,07eh	; a3f4  >>.//o.*.......~
	defb 07eh,03eh,000h,02fh,02fh,06fh,000h	; a404

; ----------------------------------------------------------------------
; DATOS graficos_A40B: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: patrones de la
;   entrada 4 de 0x7990; lo leen p00:482F (157 bytes)
;   0xa40b..0xa4a8  (157 bytes)
DATA_graficos_A40B:
	defb 081h,0f4h,006h,0e4h,002h,0f4h,006h,0e4h,002h,0f4h,004h,0e4h,003h,0f4h,082h,0e4h	; a40b  ................
	defb 040h,005h,0e4h,081h,0f4h,008h,0b0h,002h,0a0h,081h,0f0h,003h,0a0h,003h,0f0h,002h	; a41b  @...............
	defb 0a0h,081h,0f0h,003h,0a0h,08dh,0f0h,0a0h,0a0h,0f0h,0fah,0a0h,0a0h,0f0h,0a0h,0f0h	; a42b  ................
	defb 0a0h,0a0h,0f0h,003h,0a0h,003h,0f0h,08ah,070h,050h,040h,040h,050h,050h,0b0h,0f0h	; a43b  ........pP@@PP..
	defb 070h,050h,003h,040h,089h,050h,0b0h,0b0h,070h,050h,050h,040h,040h,050h,004h,0b0h	; a44b  pP.@.P..pPP@@P..
	defb 084h,050h,040h,040h,0b0h,003h,040h,00dh,0b9h,002h,040h,002h,080h,002h,090h,085h	; a45b  .P@@..@...@.....
	defb 0a0h,0b0h,0a0h,080h,080h,003h,090h,082h,0a0h,0b0h,010h,0f0h,005h,0e0h,004h,0f0h	; a46b  ................
	defb 007h,0e0h,006h,0f0h,081h,0e0h,004h,0f0h,083h,0e0h,0f0h,0e0h,005h,0f0h,002h,0a0h	; a47b  ................
	defb 002h,0b0h,083h,0e0h,0f0h,0f0h,003h,0e0h,08dh,0f0h,0e0h,0e0h,050h,040h,0b0h,0e0h	; a48b  ............P@..
	defb 050h,040h,040h,0b0h,0f0h,0f0h,003h,0e0h,083h,0f0h,0e0h,0e0h,000h	; a49b  P@@..........

; ----------------------------------------------------------------------
; DATOS graficos_A4A8: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: colores de la entrada
;   5 de 0x7990; lo leen p00:482F (56 bytes)
;   0xa4a8..0xa4e0  (56 bytes)
DATA_graficos_A4A8:
	defb 008h,0ffh,098h,000h,0ffh,000h,0ffh,000h,0ffh,000h,0ffh,0ach,0a8h,0b0h,0a1h,041h	; a4a8  ...............A
	defb 023h,012h,007h,035h,015h,00dh,085h,082h,0c4h,048h,0e0h,008h,0aah,008h,055h,002h	; a4b8  #..5.....H....U.
	defb 003h,08fh,000h,003h,07bh,003h,07fh,07fh,0c0h,0c0h,000h,0c0h,0deh,0c0h,0feh,0feh	; a4c8  ....{...........
	defb 07fh,007h,003h,081h,0feh,007h,0c0h,000h	; a4d8  ........

; ----------------------------------------------------------------------
; DATOS graficos_A4E0: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: patrones de la
;   entrada 5 de 0x7990; lo leen p00:482F (29 bytes)
;   0xa4e0..0xa4fd  (29 bytes)
DATA_graficos_A4E0:
	defb 011h,0e0h,081h,0f0h,007h,0e0h,081h,0f0h,007h,0e0h,08fh,0f0h,0e0h,0f0h,0e0h,0f0h	; a4e0  ................
	defb 0e0h,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h,0f0h,020h,0e0h,000h	; a4f0  .......... ..

; ----------------------------------------------------------------------
; DATOS graficos_A4FD: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: colores de la entrada
;   6 de 0x7990; lo leen p00:482F (141 bytes)
;   0xa4fd..0xa58a  (141 bytes)
DATA_graficos_A4FD:
	defb 0aah,0e1h,0c0h,089h,081h,041h,038h,044h,041h,00fh,007h,023h,003h,005h,039h,045h	; a4fd  .....A8DA..#..9E
	defb 005h,011h,081h,085h,0c0h,0e1h,0f9h,0f1h,0c6h,011h,003h,043h,007h,00fh,03fh,01fh	; a50d  ...........C..?.
	defb 0c7h,0ffh,0fch,0e1h,08eh,0b8h,0ffh,0ffh,0c3h,0ffh,07fh,005h,0ffh,0b2h,033h,0cch	; a51d  ..............3.
	defb 0d3h,0e8h,0ebh,0ech,0f7h,0fch,0ffh,0cdh,033h,0cdh,033h,0cfh,03fh,0ffh,0ffh,0e5h	; a52d  ........3.3.?...
	defb 0fah,0fch,0feh,0fch,0ffh,0fah,0f5h,0a7h,05fh,03fh,07fh,03fh,01fh,05fh,0afh,0f2h	; a53d  ........_?.?._..
	defb 077h,0ffh,0b2h,0c0h,087h,08ah,0cah,04fh,0eeh,016h,0ffh,003h,0e1h,051h,053h,03fh	; a54d  w......O.....QS?
	defb 007h,07fh,081h,0fch,007h,0feh,008h,0ffh,008h,07fh,008h,0feh,003h,03fh,08dh,01bh	; a55d  .............?..
	defb 019h,00dh,002h,000h,0ffh,0ffh,0bfh,0bfh,09eh,0ceh,0c4h,000h,003h,0ffh,08dh,07dh	; a56d  ...............}
	defb 07fh,0f9h,062h,000h,0fch,0fch,0ech,0f8h,0d8h,0a0h,000h,000h,000h	; a57d  ..b..........

; ----------------------------------------------------------------------
; DATOS graficos_A58A: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: patrones de la
;   entrada 6 de 0x7990; lo leen p00:482F (99 bytes)
;   0xa58a..0xa5ed  (99 bytes)
DATA_graficos_A58A:
	defb 081h,0f8h,003h,0f9h,085h,0f8h,0f6h,0f8h,0f9h,0f8h,003h,0f9h,094h,0f8h,0f6h,0f8h	; a58a  ................
	defb 0f9h,0f8h,0f9h,0f8h,0f9h,0f8h,0f9h,0f8h,0f9h,0f8h,0f9h,0f8h,0f9h,0f8h,0f9h,0f8h	; a59a  ................
	defb 0f9h,00fh,0feh,086h,0f7h,0feh,0f7h,0fch,0f7h,0fch,003h,0f7h,085h,0fch,0f7h,0fch	; a5aa  ................
	defb 0f7h,0fch,003h,0f7h,08eh,0f9h,0fbh,0fah,0f9h,0f9h,0fbh,0fah,0fah,0f9h,0fbh,0fah	; a5ba  ................
	defb 0f9h,0f9h,0fbh,005h,0fah,081h,0fbh,003h,0fah,084h,0f9h,0fah,0fah,0fbh,004h,0fah	; a5ca  ................
	defb 081h,0f9h,029h,0f0h,007h,0e0h,081h,0f0h,007h,0e0h,081h,0f0h,007h,0e0h,081h,0f0h	; a5da  ..).............
	defb 007h,0e0h,000h	; a5ea

; ----------------------------------------------------------------------
; DATOS graficos_A5ED: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: colores de la entrada
;   7 de 0x7990; lo leen p00:482F (305 bytes)
;   0xa5ed..0xa71e  (305 bytes)
DATA_graficos_A5ED:
	defb 096h,09bh,0bbh,09bh,080h,09bh,0bbh,09bh,080h,0d9h,0ddh,0d9h,001h,0d9h,0ddh,0d9h	; a5ed  ................
	defb 001h,088h,077h,055h,077h,077h,055h,004h,077h,0a4h,055h,077h,077h,055h,077h,088h	; a5fd  ..wUwwU.w.UwwUw.
	defb 0fch,070h,01fh,001h,0f1h,00fh,0ffh,0f8h,0ffh,0e3h,0fch,0c0h,0f1h,08fh,038h,006h	; a60d  .p............8.
	defb 0c0h,01ch,0e1h,01fh,0fch,003h,01ch,0c3h,00fh,0f1h,000h,070h,01fh,0e1h,003h,0ffh	; a61d  ...........p....
	defb 0d5h,02fh,0e0h,0fah,07ah,0f0h,0eah,0c0h,000h,0f4h,007h,05fh,05eh,00fh,057h,003h	; a62d  ./..z......_^.W.
	defb 0c0h,0eah,0f0h,07ah,0fah,0e0h,02fh,0ffh,003h,057h,00fh,05eh,05fh,007h,0f4h,000h	; a63d  ...z../..W.^_...
	defb 0ffh,02fh,01fh,0fah,07ah,0f0h,0eah,0c0h,000h,0f4h,0f8h,05fh,05eh,00fh,057h,003h	; a64d  ./..z......_^.W.
	defb 0c0h,0eah,0f0h,07ah,0fah,01fh,02fh,0ffh,003h,057h,00fh,05eh,05fh,0f8h,0f4h,000h	; a65d  ...z../..W.^_...
	defb 0e8h,0d0h,0c0h,0a0h,0d0h,040h,0d0h,0a0h,007h,02fh,00eh,016h,02fh,00bh,02fh,016h	; a66d  .....@.../.././.
	defb 073h,0ffh,0dfh,076h,088h,052h,005h,0ffh,085h,040h,015h,0a4h,05bh,0fdh,00bh,000h	; a67d  s..v.R...@..[...
	defb 082h,010h,042h,008h,000h,083h,0a0h,0d0h,0e0h,003h,000h,091h,002h,008h,005h,00bh	; a68d  ..B.............
	defb 015h,0e0h,050h,0a0h,050h,080h,020h,000h,000h,00dh,017h,002h,005h,004h,000h,0f0h	; a69d  ..P.P. .........
	defb 0ddh,0feh,0f5h,0e9h,0c3h,083h,087h,003h,05fh,0afh,0d7h,0cbh,0edh,0fdh,0beh,0deh	; a6ad  ........_.......
	defb 025h,043h,04bh,090h,035h,006h,0c0h,0c0h,0dfh,0cbh,0e3h,0e3h,072h,0e8h,003h,003h	; a6bd  %CK.5.......r...
	defb 022h,0feh,0f5h,0e9h,0c3h,083h,087h,003h,05fh,0afh,0d7h,0cbh,0edh,0fdh,0beh,0deh	; a6cd  "......._.......
	defb 025h,043h,04bh,090h,035h,006h,0c0h,03fh,0dfh,0cbh,0e3h,0e3h,072h,0e8h,003h,0fch	; a6dd  %CK.5..?....r...
	defb 000h,03fh,060h,04ah,055h,04ah,055h,04ah,000h,0fch,006h,052h,0aah,052h,0aah,052h	; a6ed  .?`JUJUJ...R.R.R
	defb 04ah,055h,04ah,055h,04ah,060h,03fh,000h,052h,0aah,052h,0aah,052h,006h,0fch,000h	; a6fd  JUJUJ`?.R.R.R...
	defb 055h,04eh,060h,03fh,060h,037h,01bh,000h,0aah,072h,006h,0fch,006h,0ech,0d8h,000h	; a70d  UN`?`7...r......
	defb 000h	; a71d

; ----------------------------------------------------------------------
; DATOS graficos_A71E: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: patrones de la
;   entrada 7 de 0x7990; lo leen p00:482F (204 bytes)
;   0xa71e..0xa7ea  (204 bytes)
DATA_graficos_A71E:
	defb 0a4h,0a9h,0a6h,0a9h,0c0h,0a9h,0a6h,0a9h,0c0h,0b9h,0b6h,0b9h,0c0h,0b9h,0b6h,0b9h	; a71e  ................
	defb 0c0h,0cbh,090h,090h,0b0h,0b0h,090h,0b0h,0b0h,0a0h,0a0h,090h,0a0h,0a0h,090h,090h	; a72e  ................
	defb 0cah,054h,075h,054h,075h,007h,054h,083h,075h,054h,054h,004h,075h,003h,054h,002h	; a73e  .TuTu.T.uTT.u.T.
	defb 075h,003h,054h,082h,095h,075h,004h,054h,0c0h,099h,0e8h,097h,0e4h,074h,0e4h,074h	; a74e  u.T..u.T.....t.t
	defb 0e4h,0e9h,0e8h,097h,0e4h,074h,0e4h,074h,0e4h,0e4h,074h,0e4h,074h,0e4h,097h,0e8h	; a75e  .....t.t..t.t...
	defb 090h,0e4h,074h,0e4h,074h,0e4h,097h,0e8h,0e9h,022h,0ech,072h,0e4h,074h,0e4h,074h	; a76e  ..t.t....".r.t.t
	defb 0e4h,0e2h,0ech,072h,0e4h,074h,0e4h,074h,0e4h,0e4h,074h,0e4h,074h,0e4h,072h,0ech	; a77e  ...r.t.t..t.t.r.
	defb 022h,0e4h,074h,0e4h,074h,0e4h,072h,0ech,0f2h,016h,074h,005h,040h,035h,074h,081h	; a78e  ".t.t.r...t.@5t.
	defb 098h,005h,090h,002h,080h,009h,090h,081h,080h,005h,060h,081h,096h,003h,090h,002h	; a79e  ..........`.....
	defb 080h,002h,060h,082h,096h,0c2h,005h,020h,002h,0c0h,009h,020h,006h,0c0h,081h,0c2h	; a7ae  ..`.... ... ....
	defb 003h,020h,004h,0c0h,086h,0c2h,0f0h,0f0h,0e0h,0f0h,0f0h,003h,0e0h,006h,0f0h,085h	; a7be  . ..............
	defb 0e0h,0f0h,0e0h,0e0h,0f0h,007h,0e0h,002h,0f0h,082h,0e0h,0f0h,006h,0e0h,081h,050h	; a7ce  ...............P
	defb 003h,040h,088h,0f0h,0e0h,0f0h,0f0h,050h,050h,040h,040h,000h	; a7de  .@.....PP@@.

; ----------------------------------------------------------------------
; DATOS resto_A7EA: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (5 bytes)
;   0xa7ea..0xa7ef  (5 bytes)
DATA_resto_A7EA:
	defb 004h,011h,0e8h,005h,000h	; a7ea

; ----------------------------------------------------------------------
; DATOS graficos_A7EF: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:49F9
;   (1391 bytes)
;   0xa7ef..0xad5e  (1391 bytes)
DATA_graficos_A7EF:
	defb 008h,0ffh,094h,000h,008h,00ch,00eh,00fh,007h,007h,003h,017h,01fh,0beh,052h,0c5h	; a7ef  ..............R.
	defb 090h,020h,0c0h,0d4h,0d0h,028h,090h,006h,000h,09eh,001h,007h,00fh,00fh,01fh,01fh	; a7ff  . ...(..........
	defb 000h,03fh,0f0h,080h,000h,080h,000h,00eh,03fh,03fh,03dh,03fh,01ah,01dh,01fh,00eh	; a80f  .?......??=?....
	defb 080h,018h,0e0h,080h,0b7h,05ch,0fbh,0e0h,005h,000h,083h,0c0h,030h,018h,003h,000h	; a81f  .....\......0...
	defb 08ah,003h,006h,009h,01eh,010h,000h,000h,03ch,0abh,040h,003h,000h,002h,0ffh,083h	; a82f  ........<.@.....
	defb 07fh,01fh,00ah,003h,000h,003h,0ffh,08eh,0dfh,00fh,01fh,01fh,00fh,0fch,0e0h,0f8h	; a83f  ................
	defb 0fch,0f0h,0e0h,0c8h,0f0h,0bfh,004h,01fh,08ch,00fh,001h,000h,0f8h,0ebh,0feh,0f8h	; a84f  ................
	defb 0fdh,0feh,0ffh,0feh,003h,004h,007h,093h,00eh,01eh,01ch,0c0h,0c0h,003h,087h,007h	; a85f  ................
	defb 08fh,00eh,008h,000h,0e0h,080h,0e0h,0c0h,0f4h,058h,080h,003h,01fh,003h,00fh,0a7h	; a86f  .........X......
	defb 00eh,01eh,0b0h,080h,000h,020h,0c0h,021h,042h,084h,007h,00fh,00fh,00eh,007h,007h	; a87f  ..... .!B.......
	defb 003h,000h,0a0h,0c0h,040h,0c4h,068h,0f6h,0fch,0f8h,00ch,00bh,007h,005h,00ah,008h	; a88f  ....@.h.........
	defb 000h,07eh,0fch,0d3h,060h,010h,040h,004h,000h,08ch,080h,000h,000h,080h,0c0h,0a0h	; a89f  .~..`.@.........
	defb 040h,0b0h,030h,052h,020h,020h,006h,000h,0a1h,003h,083h,0f7h,0ffh,0ffh,003h,003h	; a8af  @.0R  ..........
	defb 007h,005h,001h,003h,082h,084h,0feh,0ffh,0ffh,0f7h,073h,0b0h,0e0h,0c0h,090h,050h	; a8bf  ..........s....P
	defb 060h,0e0h,0fch,0c0h,026h,00eh,03dh,01ch,01eh,00fh,003h,00ch,093h,00eh,003h,007h	; a8cf  `...&.=.........
	defb 007h,006h,007h,003h,001h,000h,000h,035h,058h,0a0h,0c0h,08eh,0b8h,073h,070h,0f0h	; a8df  .......5X....sp.
	defb 003h,0e0h,088h,060h,070h,030h,003h,006h,008h,014h,010h,003h,000h,083h,0f7h,022h	; a8ef  ...`p0........."
	defb 090h,005h,000h,087h,080h,0c0h,020h,000h,010h,003h,006h,006h,000h,081h,034h,004h	; a8ff  ...... .......4.
	defb 000h,086h,0a0h,008h,004h,00bh,007h,002h,004h,000h,08ch,0d0h,0b8h,00ch,002h,0e0h	; a90f  ................
	defb 0e2h,070h,028h,01ch,01eh,02fh,01fh,004h,000h,09ch,001h,003h,08fh,0ffh,008h,028h	; a91f  .p(../.........(
	defb 038h,078h,0f8h,0fch,0fch,0feh,006h,00ch,00ch,008h,018h,010h,030h,020h,07ch,070h	; a92f  8x..........0 |p
	defb 070h,030h,03bh,01fh,01fh,00eh,004h,000h,092h,0f8h,080h,000h,000h,001h,001h,003h	; a93f  p0..............
	defb 003h,006h,00ch,00ah,016h,003h,0c1h,019h,00fh,01bh,007h,004h,000h,08bh,080h,0c0h	; a94f  ................
	defb 0feh,0ffh,068h,000h,00eh,013h,021h,0e0h,080h,003h,000h,083h,001h,002h,028h,00ch	; a95f  ..h...!.......(.
	defb 000h,085h,02dh,01fh,02fh,017h,003h,004h,000h,084h,0feh,0fbh,0f0h,080h,004h,000h	; a96f  ..-./...........
	defb 085h,07fh,01fh,01fh,007h,001h,003h,000h,081h,0aah,004h,0ffh,085h,06dh,001h,000h	; a97f  .............m..
	defb 00ah,0b5h,003h,0ffh,0a9h,0f9h,060h,000h,000h,050h,02ah,0e5h,0fah,0ffh,07fh,02ah	; a98f  ......`..P*....*
	defb 005h,017h,04fh,03fh,0ffh,0feh,0d8h,000h,0c1h,0c7h,00eh,00eh,004h,00ch,070h,0c0h	; a99f  ..O?..........p.
	defb 0f0h,088h,006h,007h,007h,003h,006h,004h,00ch,00ch,008h,08ch,0fch,087h,007h,000h	; a9af  ................
	defb 083h,001h,01eh,031h,005h,000h,087h,0f0h,00ch,003h,03bh,0ffh,0feh,003h,005h,000h	; a9bf  ...1............
	defb 09ch,080h,000h,080h,000h,000h,080h,060h,000h,001h,007h,0fch,038h,001h,003h,006h	; a9cf  .......`....8...
	defb 01dh,0f0h,000h,000h,01ch,0fbh,0a3h,080h,000h,008h,010h,0e0h,0c0h,004h,000h,083h	; a9df  ................
	defb 080h,0e0h,0f9h,004h,0ffh,081h,008h,004h,000h,083h,0c0h,0e0h,0ffh,005h,000h,09dh	; a9ef  ................
	defb 003h,01fh,0ffh,020h,040h,040h,020h,0e0h,0fch,0feh,0feh,0e0h,010h,008h,008h,028h	; a9ff  ... @@ ........(
	defb 01bh,00eh,004h,07ch,070h,060h,020h,020h,0c0h,000h,000h,0e7h,043h,006h,000h,003h	; aa0f  ...|p`  ....C...
	defb 0ffh,082h,0feh,09ch,003h,008h,002h,0fch,082h,0f8h,008h,007h,000h,082h,0edh,003h	; aa1f  ................
	defb 003h,000h,095h,040h,028h,00eh,0b0h,0feh,01fh,003h,000h,000h,001h,008h,0d5h,03fh	; aa2f  ...@(..........?
	defb 0dfh,0efh,0fch,036h,014h,038h,020h,080h,003h,000h,084h,004h,003h,07dh,004h,004h	; aa3f  ...6.8 ......}..
	defb 000h,096h,080h,0e0h,0e7h,0f7h,03fh,00eh,008h,010h,000h,000h,0e0h,0fah,0fdh,037h	; aa4f  ......?........7
	defb 003h,000h,000h,00fh,03fh,07ah,0e8h,0e0h,003h,000h,086h,080h,0e0h,074h,09ah,027h	; aa5f  ....?z.......t.'
	defb 002h,006h,000h,096h,0e0h,01eh,00fh,0d0h,000h,000h,03eh,01dh,07fh,0ffh,0ffh,000h	; aa6f  ..........>.....
	defb 000h,001h,087h,01fh,0ffh,0feh,0f0h,07fh,01fh,003h,005h,000h,084h,0e3h,0a0h,0ffh	; aa7f  ................
	defb 040h,004h,000h,083h,02fh,029h,002h,005h,000h,083h,0e8h,0c0h,0a0h,013h,000h,086h	; aa8f  @.../)..........
	defb 014h,0ffh,0e2h,0ffh,007h,001h,004h,000h,083h,0dah,071h,0b0h,005h,000h,082h,0feh	; aa9f  ..........q.....
	defb 03fh,004h,003h,002h,001h,082h,020h,040h,003h,0d0h,083h,0cah,0eah,0f6h,003h,000h	; aaaf  ?..... @........
	defb 085h,040h,080h,0e0h,0fch,0ffh,004h,000h,084h,008h,010h,030h,0f0h,005h,000h,08eh	; aabf  .@.........0....
	defb 004h,02bh,0d6h,054h,0a2h,008h,000h,001h,01ah,03ch,0e0h,0f0h,00fh,001h,005h,000h	; aacf  .+.T.....<......
	defb 090h,074h,070h,0fah,0b4h,07ah,078h,01ch,015h,0fbh,0feh,0fch,0f0h,060h,040h,0c0h	; aadf  .tp..zx......`@.
	defb 080h,005h,000h,085h,01fh,07fh,002h,01fh,03fh,004h,0ffh,0ach,001h,007h,0ech,0f0h	; aaef  ........?.......
	defb 0e0h,0e0h,0f0h,0fch,093h,0ech,001h,080h,007h,00fh,003h,00fh,01ch,010h,01dh,09fh	; aaff  ................
	defb 01dh,01fh,08fh,00fh,007h,003h,047h,09eh,09dh,08eh,0deh,0feh,001h,00fh,060h,080h	; ab0f  ......G.......`.
	defb 000h,000h,0c0h,080h,000h,010h,030h,060h,004h,080h,002h,040h,09ch,080h,060h,020h	; ab1f  ......0`...@..`
	defb 000h,00fh,038h,0e0h,0c0h,001h,002h,001h,001h,003h,002h,00bh,01ch,00ch,037h,01fh	; ab2f  ..8...........7.
	defb 0dfh,0f0h,080h,008h,004h,0ffh,0a2h,0dbh,00fh,004h,000h,085h,017h,03fh,01fh,0efh	; ab3f  .............?..
	defb 0efh,005h,000h,08ch,0a4h,0ebh,02ch,03fh,003h,000h,001h,003h,00fh,040h,0fch,0e0h	; ab4f  ......,?.....@..
	defb 003h,000h,09fh,080h,0d4h,02bh,000h,000h,010h,00ch,003h,001h,000h,001h,007h,0a9h	; ab5f  .....+..........
	defb 067h,0aah,089h,020h,07bh,00fh,080h,0c0h,03ah,000h,010h,0e4h,078h,0c1h,016h,01bh	; ab6f  g.. {...:...x...
	defb 00eh,003h,004h,000h,093h,059h,0b3h,0efh,0f8h,006h,004h,000h,030h,040h,0c0h,080h	; ab7f  .....Y......0@..
	defb 0c0h,000h,080h,040h,070h,038h,00fh,003h,003h,000h,089h,001h,000h,0abh,0cfh,0f8h	; ab8f  ...@p8..........
	defb 000h,030h,014h,001h,004h,000h,096h,028h,03dh,079h,0a2h,0cch,0f8h,0c0h,000h,009h	; ab9f  .0.....(=y......
	defb 0c0h,074h,03ah,00fh,001h,080h,040h,024h,000h,000h,0a0h,054h,0e0h,003h,000h,09bh	; abaf  .t:...@$...T....
	defb 001h,056h,078h,0c0h,000h,001h,006h,019h,018h,002h,000h,000h,0a0h,060h,090h,0ech	; abbf  .Vx..........`..
	defb 0ach,068h,0a0h,040h,000h,004h,006h,02ch,0e8h,0feh,0c0h,005h,000h,090h,0ffh,0d9h	; abcf  .h.@...,........
	defb 03fh,00eh,008h,004h,000h,000h,0ffh,0ffh,0c0h,0fch,013h,020h,000h,000h,004h,0ffh	; abdf  ?.......... ....
	defb 090h,007h,0f0h,060h,040h,000h,001h,00ah,00fh,017h,00fh,03fh,001h,003h,080h,0adh	; abef  ...`@......?....
	defb 0d7h,004h,0ffh,085h,000h,003h,0efh,0f8h,004h,003h,000h,085h,0ffh,060h,05ch,02ah	; abff  .............`\*
	defb 003h,005h,000h,08ah,003h,0deh,0eah,0f0h,000h,000h,017h,07fh,091h,002h,004h,000h	; ac0f  ................
	defb 08ah,061h,095h,0ebh,07eh,0bfh,017h,005h,000h,095h,0f0h,003h,000h,0aeh,00ch,08ch	; ac1f  .a..~...........
	defb 0f8h,0a2h,03ah,0ffh,07fh,01fh,02fh,017h,005h,007h,007h,003h,003h,002h,002h,000h	; ac2f  ..:.../.........
	defb 000h,03ch,0ffh,0f8h,084h,001h,007h,01ch,000h,0ffh,00ch,0f3h,03ch,08fh,0e7h,033h	; ac3f  .<..........<..3
	defb 009h,085h,0fbh,01fh,0e6h,03fh,0e0h,080h,000h,00eh,0a8h,080h,005h,000h,08dh,07ch	; ac4f  .....?.........|
	defb 0feh,0f0h,0e8h,0e0h,0c0h,000h,000h,034h,017h,005h,000h,001h,003h,000h,08bh,01fh	; ac5f  .......4........
	defb 0ffh,0ffh,0f4h,040h,020h,000h,000h,070h,0f2h,0fbh,003h,0ffh,08dh,0beh,00ch,007h	; ac6f  ...@ ..p........
	defb 0e0h,000h,080h,080h,040h,040h,000h,038h,00fh,003h,005h,000h,084h,014h,00ah,006h	; ac7f  ....@@.8........
	defb 001h,004h,000h,088h,008h,001h,002h,024h,06ch,04ch,05ch,0ffh,004h,000h,084h,001h	; ac8f  .......$lL\.....
	defb 006h,00fh,003h,003h,000h,088h,004h,013h,04eh,0fch,0fbh,0ffh,07fh,01fh,005h,000h	; ac9f  ........N.......
	defb 0adh,007h,003h,013h,030h,0ffh,080h,0c1h,027h,078h,0f4h,057h,0e0h,0c0h,0e0h,0f8h	; acaf  ....0...'x.W....
	defb 00eh,000h,003h,001h,000h,000h,001h,001h,000h,074h,0feh,038h,0ffh,09ch,070h,0c0h	; acbf  .........t.8..p.
	defb 080h,0c0h,0ffh,0ffh,0fah,0eeh,08ch,050h,000h,03ch,0ffh,0ffh,03eh,058h,003h,000h	; accf  .......P.<..>X..
	defb 081h,007h,004h,0ffh,084h,04eh,019h,002h,051h,003h,000h,002h,0ffh,082h,088h,031h	; acdf  .....N..Q......1
	defb 003h,0ffh,092h,0f1h,03fh,007h,01fh,03fh,081h,0e5h,040h,093h,07ch,0bch,0ffh,0ffh	; acef  ....?..?..@.|...
	defb 047h,0bfh,0feh,0fch,080h,003h,0ffh,084h,0f8h,0f6h,0ffh,038h,004h,0ffh,083h,0f2h	; acff  G..........8....
	defb 069h,0e6h,003h,0ffh,087h,0feh,018h,0fch,0e0h,0dch,000h,0f1h,004h,000h,0a7h,044h	; ad0f  i..............D
	defb 0e9h,0c0h,00dh,000h,080h,0f0h,07fh,00fh,03fh,00fh,03ah,0ffh,0ffh,0feh,095h,0ebh	; ad1f  ........?.:.....
	defb 006h,0e8h,0ffh,0feh,080h,07eh,040h,090h,066h,095h,006h,01bh,01fh,07fh,004h,008h	; ad2f  .....~@.f.......
	defb 05ah,096h,0e9h,0c9h,010h,03eh,003h,000h,08fh,085h,0bah,00ah,074h,0fbh,000h,020h	; ad3f  Z....>......t..
	defb 068h,050h,0fch,06fh,00bh,0f5h,01eh,007h,003h,000h,083h,080h,0e3h,0c1h,000h	; ad4f  hP.o...........

; ----------------------------------------------------------------------
; DATOS graficos_AD5E: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4A0B (417
;   bytes)
;   0xad5e..0xaeff  (417 bytes)
DATA_graficos_AD5E:
	defb 008h,000h,07fh,040h,07fh,040h,07fh,040h,07fh,040h,07fh,040h,07dh,040h,042h,050h	; ad5e  ...@.@.@.@.@}@BP
	defb 003h,040h,003h,050h,081h,054h,00ch,040h,003h,050h,082h,054h,050h,00dh,040h,081h	; ad6e  .@.P.T.@.P.TP.@.
	defb 054h,006h,040h,002h,054h,006h,040h,002h,054h,085h,050h,040h,054h,040h,040h,003h	; ad7e  T.@.T.@.T.P@T@@.
	defb 050h,007h,040h,081h,050h,006h,040h,002h,054h,002h,040h,002h,050h,003h,040h,006h	; ad8e  P.@.P.@.T.@.P.@.
	defb 050h,003h,040h,004h,050h,00ah,040h,002h,050h,004h,054h,002h,050h,002h,040h,083h	; ad9e  P.@.P.@.P.T.P.@.
	defb 044h,054h,054h,005h,050h,005h,054h,007h,050h,081h,054h,006h,040h,081h,054h,00ah	; adae  DTT.P.T.P.T.@.T.
	defb 040h,005h,050h,005h,040h,004h,050h,007h,040h,005h,050h,006h,040h,002h,050h,00ah	; adbe  @.P.@.P.@.P.@.P.
	defb 040h,082h,050h,040h,004h,050h,006h,040h,081h,050h,008h,040h,081h,050h,007h,040h	; adce  @.P@.P.@.P.@.P.@
	defb 006h,050h,083h,040h,050h,050h,004h,040h,081h,050h,005h,040h,006h,050h,004h,040h	; adde  .P.@PP.@.P.@.P.@
	defb 004h,050h,004h,040h,004h,050h,002h,054h,006h,050h,082h,040h,054h,006h,050h,002h	; adee  .P.@.P.T.P.@T.P.
	defb 040h,081h,054h,005h,050h,004h,040h,081h,054h,008h,050h,003h,040h,004h,050h,004h	; adfe  @.T.P.@.T.P.@.P.
	defb 040h,002h,050h,007h,040h,002h,050h,005h,040h,004h,050h,004h,040h,002h,050h,006h	; ae0e  @.P.@.P.@.P.@.P.
	defb 040h,003h,050h,006h,040h,081h,054h,004h,040h,084h,054h,040h,050h,054h,009h,040h	; ae1e  @.P.@.T.@.T@PT.@
	defb 005h,050h,002h,040h,082h,054h,050h,00ah,040h,002h,050h,002h,040h,002h,050h,081h	; ae2e  .P.@.TP.@.P.@.P.
	defb 054h,003h,050h,083h,054h,050h,050h,005h,040h,081h,054h,007h,040h,081h,054h,007h	; ae3e  T.P.TPP.@.T.@.T.
	defb 040h,081h,054h,007h,040h,081h,050h,007h,040h,006h,050h,081h,040h,003h,050h,006h	; ae4e  @.T.@.P.@.P.@.P.
	defb 040h,003h,050h,006h,040h,00eh,050h,081h,075h,007h,050h,086h,070h,050h,050h,070h	; ae5e  @.P.@.P.u.P.pPPp
	defb 040h,040h,004h,050h,002h,075h,088h,054h,044h,054h,054h,050h,075h,075h,054h,003h	; ae6e  @@.P.u.TDTTPuuT.
	defb 040h,002h,050h,003h,070h,002h,040h,005h,050h,081h,075h,004h,040h,082h,050h,0a4h	; ae7e  @.P.p.@.P.u.@.P.
	defb 007h,040h,081h,0a4h,007h,040h,081h,0a4h,007h,040h,084h,0a4h,054h,054h,074h,004h	; ae8e  .@...@...@..TTt.
	defb 040h,003h,050h,08fh,075h,0f0h,0a0h,040h,040h,050h,050h,075h,075h,0a7h,0a4h,044h	; ae9e  @.P.u..@@PPuu..D
	defb 044h,075h,0f5h,003h,0a4h,003h,040h,084h,0f7h,0b7h,0a0h,0a4h,004h,040h,083h,0f5h	; aeae  Du....@......@..
	defb 0a7h,0a0h,005h,040h,086h,050h,0f5h,0a4h,0b4h,040h,040h,004h,050h,084h,070h,0b5h	; aebe  ...@.P...@@.P.p.
	defb 0b0h,040h,003h,050h,084h,075h,0f5h,0a7h,0a4h,003h,040h,002h,050h,082h,0f7h,0a4h	; aece  .@.P.u....@.P...
	defb 006h,040h,086h,050h,070h,0f0h,0b5h,054h,040h,004h,050h,084h,070h,0b5h,0fbh,0a4h	; aede  .@.Pp..T@.P.p...
	defb 005h,050h,083h,0f5h,0fbh,0b4h,005h,050h,083h,070h,0f5h,0b4h,007h,050h,081h,0b5h	; aeee  .P.....P.p...P..
	defb 000h	; aefe

; ----------------------------------------------------------------------
; DATOS graficos_AEFF: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4A02
;   (1148 bytes)
;   0xaeff..0xb37b  (1148 bytes)
DATA_graficos_AEFF:
	defb 008h,000h,085h,080h,0e0h,0f0h,0f8h,0feh,003h,0ffh,08ch,000h,080h,0c0h,0c0h,0e0h	; aeff  ................
	defb 0e0h,0f0h,0f8h,0f8h,0fch,0fch,0feh,004h,0ffh,005h,000h,083h,080h,0c0h,0e0h,008h	; af0f  ................
	defb 0ffh,006h,000h,082h,080h,0e0h,003h,000h,003h,080h,006h,000h,084h,003h,01fh,0ffh	; af1f  ................
	defb 0ffh,006h,000h,082h,001h,01fh,003h,000h,095h,080h,0c0h,0e0h,0f8h,0ffh,000h,001h	; af2f  ................
	defb 003h,003h,00fh,01fh,03fh,03fh,000h,000h,001h,003h,003h,007h,00fh,00fh,004h,000h	; af3f  ....??..........
	defb 08ch,001h,007h,00fh,01fh,001h,003h,007h,007h,00fh,01fh,03fh,07fh,005h,000h,0a1h	; af4f  ...........?....
	defb 001h,003h,007h,000h,000h,001h,007h,00fh,01fh,03fh,07fh,0c2h,083h,00eh,01dh,063h	; af5f  .........?.....c
	defb 056h,0b1h,005h,0f6h,09dh,026h,055h,0b2h,0deh,068h,090h,0e9h,091h,001h,022h,0c0h	; af6f  V....&U..h....".
	defb 084h,004h,000h,002h,080h,086h,0c0h,040h,040h,020h,02ah,094h,006h,000h,002h,080h	; af7f  .......@@ *.....
	defb 089h,0c0h,0d0h,0e4h,0e6h,0c6h,0e2h,0f3h,0fbh,0fbh,009h,0ffh,09eh,0fch,07eh,0e0h	; af8f  ..............~.
	defb 067h,007h,00dh,084h,086h,0c5h,0e7h,0e3h,0f2h,0eeh,0f0h,0f0h,0d0h,0e0h,0d1h,0c3h	; af9f  g...............
	defb 047h,0f0h,0f0h,0e1h,0c3h,08fh,03fh,0d3h,02eh,00fh,07fh,003h,0ffh,093h,0e7h,09fh	; afaf  G.....?.........
	defb 098h,001h,041h,087h,083h,00fh,01fh,01fh,03eh,0fch,0fch,0f4h,0f4h,0f8h,0f8h,0dch	; afbf  ..A.....>.......
	defb 00dh,006h,000h,083h,018h,081h,080h,007h,000h,002h,010h,086h,030h,038h,030h,078h	; afcf  ............080x
	defb 070h,070h,004h,000h,002h,004h,002h,00eh,003h,080h,085h,0c0h,080h,0c0h,082h,0c2h	; afdf  pp..............
	defb 003h,000h,004h,00fh,0fah,007h,0ffh,076h,0fdh,016h,01fh,011h,01fh,006h,07ch,078h	; afef  .......v......|x
	defb 07ch,000h,0ech,0feh,000h,0e6h,000h,0e0h,0c0h,000h,03ah,0ffh,00ch,0a3h,003h,083h	; afff  |.........:.....
	defb 003h,003h,000h,0fch,000h,068h,0cch,00ch,000h,0fbh,0ffh,0ffh,000h,07eh,03eh,074h	; b00f  .....h.......~>t
	defb 07fh,01fh,07fh,03bh,067h,002h,08fh,077h,0feh,0c5h,0efh,0c0h,0bbh,001h,000h,076h	; b01f  ....g..w.......v
	defb 076h,068h,000h,0fbh,000h,09fh,000h,086h,005h,000h,03eh,0ffh,001h,03ah,010h,034h	; b02f  vh........>..:.4
	defb 000h,070h,0f0h,0e7h,000h,0c7h,000h,0f7h,0eah,000h,0ddh,0ffh,080h,046h,0f8h,0feh	; b03f  .p...........F..
	defb 07eh,07ah,070h,078h,07ah,070h,007h,007h,003h,001h,003h,003h,082h,0e3h,080h,080h	; b04f  ~zpxzp..........
	defb 0c0h,0feh,0fch,0c8h,0feh,080h,0e6h,0f6h,0feh,0ceh,0cch,08ch,0feh,08eh,01ch,004h	; b05f  ................
	defb 00eh,083h,0aeh,0aah,0c0h,003h,007h,003h,07fh,084h,03fh,03bh,000h,000h,003h,001h	; b06f  ..........?.....
	defb 003h,003h,0a0h,0feh,000h,0c4h,000h,064h,010h,039h,07fh,0fch,000h,0edh,000h,0d9h	; b07f  .......d.9......
	defb 090h,0c7h,00ch,07fh,0fch,007h,078h,020h,0f8h,0d8h,030h,000h,000h,044h,0cch,0feh	; b08f  ......x ..0..D..
	defb 06eh,0ffh,04eh,004h,000h,09eh,06ah,001h,074h,0feh,000h,000h,040h,069h,0ffh,0ffh	; b09f  n.N...j.t...@i..
	defb 07fh,03fh,000h,000h,004h,026h,06fh,077h,0feh,0f5h,000h,000h,082h,097h,096h,0bfh	; b0af  .?...&ow........
	defb 0feh,092h,0f8h,0f8h,003h,0f0h,084h,0e6h,0ffh,0ffh,07ch,003h,0feh,086h,0fdh,0fch	; b0bf  ..........|.....
	defb 0e0h,0c0h,0e0h,0e0h,003h,0c0h,0ffh,080h,000h,000h,03fh,03fh,07fh,07fh,0f7h,0e7h	; b0cf  ..........??....
	defb 08fh,05dh,019h,073h,04ah,02ch,050h,010h,07fh,0f4h,064h,0c0h,0efh,0e7h,0e6h,044h	; b0df  .].sJ,P...d....D
	defb 040h,0c0h,080h,041h,023h,027h,00fh,01fh,07fh,0ffh,0efh,0c7h,087h,086h,00ch,008h	; b0ef  @..A#'..........
	defb 0feh,0feh,001h,0f9h,088h,0ceh,084h,015h,000h,000h,0bfh,07eh,0b6h,048h,098h,040h	; b0ff  ...........~.H.@
	defb 0feh,0fah,09dh,026h,0f0h,08bh,063h,0f4h,070h,000h,020h,020h,060h,080h,001h,003h	; b10f  ...&..c.p.  `...
	defb 01fh,07fh,031h,0fch,0f8h,0a8h,050h,0b8h,056h,05ch,00fh,00fh,00eh,01ch,020h,000h	; b11f  ..1...P.V\.... .
	defb 001h,005h,003h,00fh,01fh,07fh,0ffh,0fch,0d9h,091h,03fh,0ebh,0ffh,077h,0fdh,0b5h	; b12f  ..........?..w..
	defb 0eah,0b2h,00fh,01fh,07fh,0f0h,0f9h,0f6h,0abh,076h,0f8h,001h,003h,006h,01eh,03ch	; b13f  .........v.....<
	defb 07eh,0feh,07fh,0feh,0feh,0ffh,094h,0fch,0f0h,0f0h,0e0h,080h,0c0h,0e0h,0fch,01ch	; b14f  ~...............
	defb 07eh,076h,0f8h,000h,018h,03eh,0e0h,0f0h,0f0h,0e0h,080h,003h,000h,082h,092h,0bbh	; b15f  ~v...>..........
	defb 003h,07fh,0a3h,080h,0c1h,0f3h,001h,001h,083h,083h,007h,0c0h,0c0h,0e0h,0f0h,0f8h	; b16f  ................
	defb 0f8h,0fch,0ffh,080h,0c0h,0e0h,0f0h,0f8h,0fch,080h,080h,0f8h,0fch,054h,00eh,013h	; b17f  .............T..
	defb 010h,01ah,007h,000h,0fbh,003h,005h,0ffh,0a8h,0f0h,0f8h,00fh,0ffh,0ffh,0f8h,0c1h	; b18f  ................
	defb 01fh,080h,078h,081h,0ffh,0c0h,03ch,001h,0ffh,01fh,02fh,0e0h,000h,01eh,07fh,0c0h	; b19f  ..x...<.../.....
	defb 0ffh,0f0h,00dh,0ffh,05eh,0ffh,0fch,080h,002h,078h,0ffh,07fh,01bh,09fh,002h,000h	; b1af  ....^....x......
	defb 00fh,004h,000h,0cfh,0e9h,0f0h,0ffh,008h,000h,003h,00fh,07fh,002h,002h,007h,00fh	; b1bf  ................
	defb 0f3h,082h,0ffh,0ffh,00bh,030h,03fh,0e0h,0d0h,0ffh,0ffh,000h,087h,0dfh,0bfh,0e3h	; b1cf  .....0?.........
	defb 03dh,0d7h,0fch,0f8h,0c1h,08fh,03ch,068h,003h,0feh,0ffh,0f4h,07eh,080h,0ffh,0ffh	; b1df  =.....<h....~...
	defb 076h,0ffh,0ffh,07fh,024h,0e5h,0ffh,0ffh,070h,0ffh,0f9h,0c0h,002h,078h,0ffh,0ffh	; b1ef  v...$...p....x..
	defb 0b2h,007h,07fh,0deh,0f0h,083h,07fh,00fh,0dfh,0fch,0f0h,003h,03fh,0f0h,0fbh,0fch	; b1ff  ............?...
	defb 000h,036h,06fh,003h,0ffh,09ah,09fh,07fh,003h,0f8h,0fch,0ffh,0deh,0fch,0f0h,0c3h	; b20f  .6o.............
	defb 0deh,00ch,0e7h,080h,037h,007h,0f8h,0ffh,03fh,0e5h,0ffh,0f0h,003h,01fh,01fh,00fh	; b21f  ....7...?.......
	defb 003h,000h,0b7h,0f0h,0d8h,0f1h,00fh,0c0h,01bh,0f8h,0e0h,001h,00ch,03fh,0e0h,0ffh	; b22f  .............?..
	defb 00ch,00fh,03fh,0ffh,030h,09eh,001h,000h,0e0h,0f9h,0ffh,0fah,0ffh,003h,0e0h,0ffh	; b23f  ..?.0...........
	defb 06ch,031h,0f7h,08fh,007h,0c1h,0feh,0ffh,01fh,0e0h,0ffh,006h,0f9h,07fh,087h,0ffh	; b24f  l1..............
	defb 05bh,07eh,023h,09ch,070h,040h,000h,003h,0c7h,020h,003h,000h,094h,0e0h,0feh,07fh	; b25f  [~#.p@... ......
	defb 0b6h,064h,058h,000h,000h,07dh,0e0h,06fh,046h,0dfh,002h,000h,000h,003h,03fh,084h	; b26f  .dX..}.oF.....?.
	defb 011h,006h,000h,0adh,078h,012h,0c0h,000h,000h,01fh,0f8h,0ffh,0beh,010h,03eh,0e7h	; b27f  ....x.........>.
	defb 07eh,0fah,08fh,007h,070h,0b7h,0c0h,0f3h,0f8h,008h,000h,01fh,0fch,084h,00fh,02bh	; b28f  ~...p..........+
	defb 0dfh,080h,0c0h,0f1h,0ffh,078h,06ch,0a0h,0feh,0d0h,0ffh,0ffh,000h,098h,06ch,0ffh	; b29f  .....xl.......l.
	defb 0fbh,003h,0ffh,0b3h,0fbh,060h,0f0h,007h,00fh,03fh,060h,00dh,001h,00ah,000h,007h	; b2af  .....`...?`.....
	defb 010h,00fh,01bh,0f0h,07eh,070h,080h,003h,01dh,07fh,0f5h,0f0h,001h,07eh,04ah,0e0h	; b2bf  ....~p.......~J.
	defb 007h,0ffh,0bfh,078h,0ffh,052h,0a4h,010h,020h,000h,000h,0e0h,000h,078h,0ffh,0ffh	; b2cf  ...x.R.. ....x..
	defb 0fah,000h,002h,000h,0f0h,02ah,040h,004h,000h,09bh,001h,03fh,060h,007h,0feh,00fh	; b2df  .....*@....?`...
	defb 000h,0f8h,050h,00fh,018h,000h,0c7h,078h,0e0h,025h,02dh,0edh,0e1h,00fh,080h,07fh	; b2ef  ..P....x.%-.....
	defb 024h,06dh,076h,036h,070h,003h,0ffh,0a4h,096h,0dbh,0dbh,0b6h,041h,0ebh,06dh,0ffh	; b2ff  $mv6p.......A.m.
	defb 04dh,080h,070h,006h,001h,081h,0c1h,080h,002h,0f6h,07eh,07eh,0f0h,0e0h,00fh,00dh	; b30f  M.p.......~~....
	defb 06ah,06eh,0eeh,066h,0ffh,01fh,005h,0a4h,0fdh,06dh,0ffh,0efh,004h,000h,09eh,080h	; b31f  jn.f.....m......
	defb 0cah,0ffh,0e1h,0f0h,000h,00fh,00dh,042h,066h,0f0h,00fh,0e0h,02eh,0ffh,000h,0ffh	; b32f  .......Bf.......
	defb 0f3h,080h,0deh,0e1h,060h,01eh,01eh,0e3h,0f8h,00fh,0ffh,000h,040h,003h,000h,0abh	; b33f  ....`.......@...
	defb 07fh,0e0h,0fdh,0f8h,040h,007h,018h,0e7h,000h,076h,0ffh,007h,000h,054h,0c2h,082h	; b34f  ....@....v...T..
	defb 0c2h,03dh,035h,0ebh,088h,007h,010h,000h,010h,0efh,0adh,0ffh,0f7h,0f7h,000h,0f7h	; b35f  .=5.............
	defb 07fh,003h,0c0h,0e4h,082h,0b8h,000h,098h,0e0h,0fdh,0e0h,000h	; b36f  ............

; ----------------------------------------------------------------------
; DATOS graficos_B37B: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4A14 (699
;   bytes)
;   0xb37b..0xb636  (699 bytes)
DATA_graficos_B37B:
	defb 040h,010h,018h,040h,028h,050h,002h,040h,005h,050h,081h,051h,07fh,041h,081h,041h	; b37b  @..@(P.@.P.Q.A.A
	defb 01bh,0e0h,003h,0f0h,082h,010h,0f0h,00ch,0e1h,084h,0feh,0e1h,0e1h,0f1h,004h,0e1h	; b38b  ................
	defb 081h,0feh,003h,0e1h,083h,0f1h,0e1h,0f1h,008h,0e1h,081h,0f1h,004h,0e1h,002h,0f1h	; b39b  ................
	defb 083h,010h,0e1h,0f1h,003h,0e1h,002h,0f1h,081h,0e1h,003h,0f1h,002h,0e1h,002h,0f1h	; b3ab  ................
	defb 003h,0e1h,081h,0feh,003h,0e1h,084h,0f1h,0e1h,0e1h,0feh,008h,0e1h,081h,0f1h,006h	; b3bb  ................
	defb 0e1h,081h,0feh,003h,0e1h,083h,0f0h,0e0h,010h,003h,0f1h,08ah,0e1h,0f1h,0f0h,0e0h	; b3cb  ................
	defb 010h,0f0h,0f0h,0f1h,0f1h,0e1h,004h,010h,002h,0e1h,08ch,010h,0e1h,0f0h,0e1h,010h	; b3db  ................
	defb 0f1h,0e1h,0e1h,010h,0f1h,0f0h,010h,003h,0e0h,083h,010h,0f1h,0feh,003h,0f0h,089h	; b3eb  ................
	defb 010h,0f1h,0e1h,010h,0e1h,010h,010h,0f0h,0e0h,004h,0f0h,081h,010h,004h,0e1h,002h	; b3fb  ................
	defb 031h,081h,0c1h,007h,0e1h,082h,0c1h,0f1h,006h,0e1h,081h,0c1h,003h,030h,002h,020h	; b40b  1............0.
	defb 002h,0c2h,081h,0c1h,005h,030h,003h,0c2h,006h,0c0h,002h,0c1h,004h,030h,084h,020h	; b41b  .....0.......0.
	defb 0c2h,0c1h,0c1h,003h,030h,085h,020h,0c2h,0c2h,0c1h,0c1h,013h,051h,003h,041h,082h	; b42b  ....0. .....Q.A.
	defb 051h,041h,004h,051h,00ah,054h,002h,041h,002h,054h,006h,041h,004h,051h,004h,041h	; b43b  QA.Q.T.A.T.A.Q.A
	defb 006h,054h,005h,041h,081h,051h,004h,041h,006h,054h,002h,041h,003h,051h,082h,041h	; b44b  .T.A.Q.A.T.A.Q.A
	defb 051h,007h,041h,004h,051h,081h,054h,007h,041h,081h,051h,007h,041h,005h,050h,003h	; b45b  Q.A.Q.T.A.Q.A.P.
	defb 054h,081h,050h,007h,054h,003h,050h,081h,054h,004h,041h,081h,010h,005h,051h,002h	; b46b  T.P.T.P.T.A...Q.
	defb 041h,081h,050h,007h,051h,004h,010h,004h,051h,003h,010h,005h,051h,003h,010h,002h	; b47b  A.P.Q...Q...Q...
	defb 0c0h,083h,0c1h,0c5h,0c5h,003h,010h,005h,051h,081h,050h,00dh,010h,002h,051h,002h	; b48b  ........Q.P...Q.
	defb 010h,006h,041h,081h,086h,007h,061h,002h,081h,081h,086h,006h,061h,08ah,081h,086h	; b49b  ..A...a.....a...
	defb 061h,061h,081h,086h,061h,061h,081h,061h,003h,081h,084h,086h,061h,081h,086h,005h	; b4ab  aa..aa.a....a...
	defb 061h,003h,081h,005h,061h,081h,081h,004h,061h,081h,086h,003h,061h,002h,081h,004h	; b4bb  a...a...a...a...
	defb 061h,002h,081h,002h,086h,004h,061h,087h,081h,086h,061h,081h,061h,061h,081h,003h	; b4cb  a.....a...a.aa..
	defb 061h,002h,086h,00ah,061h,085h,081h,086h,061h,061h,086h,004h,061h,084h,086h,061h	; b4db  a...a...aa..a..a
	defb 061h,086h,004h,061h,081h,086h,003h,061h,081h,081h,009h,061h,002h,081h,081h,086h	; b4eb  a..a...a...a....
	defb 003h,061h,002h,081h,006h,061h,081h,081h,006h,061h,081h,081h,004h,061h,002h,086h	; b4fb  .a...a...a...a..
	defb 086h,061h,081h,081h,061h,061h,081h,006h,061h,081h,081h,003h,061h,082h,081h,086h	; b50b  .a..aa..a...a...
	defb 003h,061h,002h,081h,081h,086h,006h,061h,081h,081h,003h,086h,08ah,061h,081h,061h	; b51b  .a.....a.....a.a
	defb 011h,061h,086h,061h,061h,081h,081h,005h,061h,084h,081h,086h,061h,086h,004h,061h	; b52b  .a.aa...a...a..a
	defb 002h,041h,002h,051h,003h,041h,081h,081h,005h,041h,083h,081h,061h,061h,005h,041h	; b53b  .A.Q.A...A..aa.A
	defb 083h,081h,086h,061h,005h,041h,002h,081h,081h,061h,005h,041h,085h,081h,061h,081h	; b54b  ...a.A...a.A..a.
	defb 0c1h,041h,004h,081h,002h,061h,083h,0c1h,081h,081h,004h,061h,084h,081h,0c1h,081h	; b55b  .A...a.....a....
	defb 081h,003h,061h,002h,081h,081h,0c1h,007h,061h,083h,0c1h,061h,086h,005h,061h,082h	; b56b  ..a.....a..a..a.
	defb 0c1h,081h,006h,061h,094h,0c1h,061h,081h,061h,081h,086h,061h,061h,0c1h,061h,081h	; b57b  ...a..a.a..aa.a.
	defb 061h,086h,061h,061h,081h,041h,041h,081h,081h,003h,061h,085h,081h,0c1h,0c1h,081h	; b58b  a.aa.AA...a.....
	defb 086h,004h,061h,006h,041h,002h,061h,081h,081h,006h,061h,083h,06eh,0e1h,0e1h,006h	; b59b  ..a.A.a...a.n...
	defb 081h,094h,0c1h,081h,086h,061h,061h,081h,021h,0e2h,061h,081h,081h,061h,061h,021h	; b5ab  .....aa.!.a..aa!
	defb 0c2h,0c1h,061h,081h,086h,061h,003h,021h,082h,0c1h,086h,003h,062h,002h,021h,002h	; b5bb  ..a..a.!....b.!.
	defb 0c1h,002h,021h,09eh,0c2h,0c1h,0c1h,061h,081h,086h,0c1h,021h,0c6h,0c6h,0c1h,0c1h	; b5cb  ..!....a...!....
	defb 0e1h,0e1h,0ceh,0c1h,0ech,0e1h,021h,0c2h,0c1h,0c1h,010h,0e1h,0e1h,031h,021h,0c2h	; b5db  ......!......1!.
	defb 0cch,0c1h,004h,060h,002h,0c0h,002h,0ceh,09ah,06eh,0e1h,0e6h,0e1h,021h,0c1h,0e1h	; b5eb  ...`.....n...!..
	defb 06eh,061h,0eeh,0e1h,0e1h,0e6h,0e1h,061h,062h,0ceh,0c1h,0e1h,061h,061h,081h,081h	; b5fb  na.....ab...aa..
	defb 061h,061h,0e1h,003h,061h,082h,081h,086h,003h,061h,002h,081h,002h,061h,091h,0eeh	; b60b  aa..a....a...a..
	defb 0e1h,061h,061h,086h,06eh,06eh,061h,0e6h,0e1h,061h,061h,086h,08eh,0eeh,061h,0e6h	; b61b  .aa.nna..aa...a.
	defb 006h,0e1h,002h,061h,081h,081h,005h,0e1h,003h,061h,000h	; b62b  ...a.....a.

; ----------------------------------------------------------------------
; DATOS graficos_B636: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4A32,
;   p00:4A3B (377 bytes)
;   0xb636..0xb7af  (377 bytes)
DATA_graficos_B636:
	defb 008h,000h,0ffh,08eh,047h,04fh,02bh,095h,0c5h,0b3h,0e8h,013h,0f1h,0fdh,07eh,0bfh	; b636  ....GO+.......~.
	defb 0cbh,03fh,09dh,08eh,047h,04fh,02fh,0b5h,0efh,0bfh,0e8h,080h,044h,0d3h,0edh,079h	; b646  .?..GO/.....D..y
	defb 0bah,02dh,0e5h,08eh,047h,04fh,02bh,0d5h,0c5h,0b3h,0eah,082h,044h,0d2h,0ech,07ch	; b656  .-..GO+.....D..|
	defb 06ah,055h,0bah,074h,018h,027h,000h,0c9h,028h,000h,000h,082h,044h,0d2h,0e8h,078h	; b666  jU.t.'..(...D..x
	defb 02ah,005h,0a0h,04dh,052h,02dh,008h,003h,008h,000h,000h,02eh,0f7h,00dh,0e7h,083h	; b676  *..MR-..........
	defb 021h,060h,004h,0aah,05dh,0d9h,056h,0cch,0cbh,030h,00ch,025h,0f7h,04dh,026h,04fh	; b686  !`..].V..0.%.M&O
	defb 086h,010h,000h,082h,044h,0d2h,0e8h,078h,02ah,005h,0a3h,080h,044h,0d2h,0e8h,078h	; b696  ....D..x*...D..x
	defb 02ah,02dh,0a4h,00dh,052h,02dh,008h,003h,008h,000h,000h,006h,000h,000h,080h,080h	; b6a6  *-..R-..........
	defb 020h,060h,085h,004h,0a8h,05ch,019h,006h,004h,000h,0b0h,050h,084h,040h,0c0h,0e8h	; b6b6   `...\.....P.@..
	defb 0d2h,048h,0b0h,013h,0f1h,0fdh,07fh,0bfh,0cbh,03fh,09dh,080h,0b8h,01eh,004h,000h	; b6c6  .H.......?......
	defb 03fh,0ffh,03fh,000h,000h,078h,0b8h,026h,000h,00fh,000h,01fh,0ffh,00fh,0ffh,003h	; b6d6  ?.?..x.&........
	defb 03fh,0f8h,0c0h,000h,000h,007h,03fh,007h,03fh,007h,07fh,004h,000h,0ffh,001h,007h	; b6e6  ?.....?.?.......
	defb 03fh,007h,0f8h,0e0h,083h,01fh,07fh,00fh,03fh,0f0h,02ch,0cfh,054h,001h,007h,0e1h	; b6f6  ?.......?.,.T...
	defb 083h,00fh,003h,00fh,0e1h,0c3h,00fh,01fh,03fh,07fh,070h,0dah,07dh,01ah,0c4h,001h	; b706  ........?.p.}...
	defb 003h,007h,01fh,0c1h,083h,007h,00fh,01fh,03fh,07fh,004h,022h,00ah,000h,000h,001h	; b716  ........?.."....
	defb 003h,000h,00fh,000h,01eh,000h,038h,000h,030h,000h,00fh,0ffh,0ffh,0fch,000h,003h	; b726  ......8.0.......
	defb 0ffh,001h,00fh,0ffh,01fh,0ffh,0ffh,0e0h,000h,01fh,003h,03fh,003h,03fh,01ah,070h	; b736  ...........?.?.p
	defb 0fch,0f1h,0fch,0e0h,003h,01fh,001h,00fh,07fh,05ah,03fh,00fh,03fh,0f8h,0c0h,003h	; b746  .........Z?.?...
	defb 01fh,003h,0fch,00fh,03fh,003h,007h,01fh,07fh,000h,03fh,00fh,01fh,03fh,0fch,0f8h	; b756  ....?.....?..?..
	defb 0e0h,0c0h,00fh,0feh,0fch,0f8h,0f0h,0e0h,0c0h,000h,0feh,000h,07ch,0afh,000h,0f0h	; b766  ............|...
	defb 000h,0c0h,000h,03fh,009h,020h,0f0h,000h,03fh,0ffh,0ffh,000h,00fh,00eh,03ch,0f8h	; b776  ...?. ..?.....<.
	defb 000h,00fh,0ffh,039h,0fch,0ffh,01fh,018h,07dh,094h,034h,00fh,03fh,01eh,078h,0fch	; b786  ...9....}.4.?.x.
	defb 0f3h,0dfh,03fh,001h,007h,00fh,01fh,03fh,0feh,0fdh,0fbh,0ffh,0efh,006h,0ffh,088h	; b796  ..?....?........
	defb 083h,0ffh,00fh,0ffh,01fh,0ffh,03fh,0ffh,000h	; b7a6  ......?..

; ----------------------------------------------------------------------
; DATOS graficos_B7AF: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4A44 (209
;   bytes)
;   0xb7af..0xb880  (209 bytes)
DATA_graficos_B7AF:
	defb 0c4h,082h,044h,0d2h,0ech,07ch,06ah,055h,0bah,013h,0f1h,0fdh,07eh,0bfh,0cbh,03fh	; b7af  ..D..|jU....~..?
	defb 09dh,0c8h,08fh,0bfh,07eh,0fdh,0d3h,0fch,0b9h,041h,022h,04bh,037h,03eh,056h,0aah	; b7bf  ....~....A"K7>V.
	defb 05dh,025h,0f7h,04dh,026h,04fh,086h,010h,000h,082h,044h,0d2h,0e8h,078h,02ah,005h	; b7cf  ]%.M&O....D..x*.
	defb 0a3h,041h,022h,04bh,017h,01eh,054h,0a0h,0c5h,0a4h,0efh,0b2h,064h,0f2h,061h,008h	; b7df  .A"K..T.....d.a.
	defb 000h,038h,0abh,004h,000h,003h,0ffh,095h,01fh,018h,05ch,000h,0ffh,0ffh,07fh,00fh	; b7ef  .8........\.....
	defb 0ffh,018h,03ah,000h,0ffh,0ffh,0feh,0f0h,0ffh,01ch,0d5h,020h,000h,003h,0ffh,088h	; b7ff  ..:........ ....
	defb 0f8h,0ffh,0ffh,0f0h,0ffh,007h,0ffh,003h,005h,0ffh,004h,000h,006h,0ffh,002h,000h	; b80f  ................
	defb 002h,0ffh,0cah,00fh,000h,0e0h,000h,0c0h,000h,01dh,038h,000h,000h,07fh,034h,07eh	; b81f  ..........8...4~
	defb 018h,0b8h,080h,000h,07fh,0ffh,040h,009h,032h,01dh,001h,000h,0feh,0ffh,002h,090h	; b82f  ......@.2.......
	defb 04ch,0b8h,01ch,000h,000h,0feh,02ch,07eh,018h,08eh,047h,04fh,02bh,095h,0c5h,0b3h	; b83f  L.....,~..GO+...
	defb 0e8h,082h,044h,0d2h,0e8h,078h,02ah,005h,0a0h,041h,022h,04bh,017h,01eh,054h,0a0h	; b84f  ..D..x*..A"K..T.
	defb 005h,071h,0e2h,0f2h,0d4h,0a9h,0a3h,0cdh,017h,0a8h,05ch,019h,006h,008h,000h,083h	; b85f  .q........\.....
	defb 040h,000h,010h,005h,000h,088h,002h,000h,008h,000h,015h,03ah,098h,060h,024h,000h	; b86f  @..........:.`$.
	defb 000h	; b87f

; ----------------------------------------------------------------------
; DATOS graficos_B880: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4A4D (164
;   bytes)
;   0xb880..0xb924  (164 bytes)
DATA_graficos_B880:
	defb 07fh,0f7h,026h,0f7h,002h,097h,081h,0a9h,005h,0f7h,093h,0a7h,097h,0f9h,097h,097h	; b880  ..&.............
	defb 0a9h,0a7h,0fah,0fah,0f3h,0f3h,0f7h,0f7h,097h,097h,0a9h,0a9h,0fah,0fah,004h,0f7h	; b890  ................
	defb 003h,097h,081h,0a9h,003h,0f9h,085h,0b9h,0a9h,0fah,0fah,0f3h,003h,0f7h,002h,097h	; b8a0  ................
	defb 002h,0f9h,085h,0b9h,097h,097h,0f9h,0f9h,003h,0a9h,081h,0f9h,005h,0f7h,004h,097h	; b8b0  ................
	defb 003h,0f9h,002h,0a9h,081h,0f9h,006h,0f7h,081h,087h,00ah,097h,003h,0fah,002h,0f3h	; b8c0  ................
	defb 002h,053h,088h,075h,0a9h,0a3h,0fah,0f5h,0f7h,0f3h,073h,003h,053h,002h,075h,002h	; b8d0  .S.u......s.S.u.
	defb 0f7h,002h,075h,002h,0f3h,002h,053h,003h,075h,08ch,0f7h,0a9h,0fah,0fah,0f3h,0f3h	; b8e0  ..u...S.u.......
	defb 053h,053h,075h,0f5h,053h,053h,004h,075h,086h,0f7h,0b9h,0fbh,0fah,0fah,0a5h,003h	; b8f0  SSu.SS.u........
	defb 0f5h,089h,0fah,0a5h,0f5h,0f5h,0a5h,0f7h,0f5h,0f7h,0a7h,007h,0f7h,083h,075h,0f7h	; b900  ..............u.
	defb 0f7h,007h,075h,002h,0f7h,004h,075h,081h,0f7h,003h,075h,004h,0f7h,002h,075h,002h	; b910  ..u...u...u...u.
	defb 0f7h,01ch,075h,000h	; b920

; ----------------------------------------------------------------------
; DATOS graficos_B924: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4A5F (75
;   bytes)
;   0xb924..0xb96f  (75 bytes)
DATA_graficos_B924:
	defb 043h,0f7h,003h,097h,084h,0aah,0fah,0f7h,0f7h,003h,097h,082h,0a9h,0fah,003h,0f7h	; b924  C...............
	defb 003h,097h,082h,0a9h,0fah,005h,0f7h,002h,093h,090h,0a5h,0fah,0ffh,0ffh,0f3h,033h	; b934  ...............3
	defb 053h,055h,075h,075h,0f7h,0f7h,033h,033h,055h,055h,004h,0f7h,002h,033h,002h,055h	; b944  SUuu..33UU...3.U
	defb 004h,0f7h,085h,0f3h,073h,053h,075h,075h,003h,0f7h,003h,075h,004h,0f7h,004h,075h	; b954  ....sSuu...u...u
	defb 004h,0f7h,004h,075h,005h,0f7h,003h,075h,063h,0f7h,000h	; b964  ...u...uc..

; ----------------------------------------------------------------------
; DATOS graficos_B96F: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4A7D (168
;   bytes)
;   0xb96f..0xba17  (168 bytes)
DATA_graficos_B96F:
	defb 0a4h,082h,044h,0d2h,0ech,078h,068h,050h,0b0h,080h,0ffh,007h,00fh,01fh,03fh,03fh	; b96f  ..D..xhP......??
	defb 07fh,000h,0ffh,0c0h,0e0h,0f0h,0f8h,0fch,0fch,0c1h,022h,00bh,037h,01eh,006h,00ah	; b97f  ..........".7...
	defb 005h,020h,0f0h,040h,000h,004h,001h,094h,007h,00fh,01fh,01fh,018h,030h,020h,020h	; b98f  . .@.........0
	defb 0feh,0c0h,0e0h,0f0h,0f0h,078h,03ch,01ch,004h,007h,002h,0ffh,003h,080h,081h,0c0h	; b99f  .....x<.........
	defb 004h,003h,087h,0ffh,001h,0ffh,01fh,0f0h,0f0h,0e0h,003h,0ffh,08ah,00fh,0ffh,071h	; b9af  ...............q
	defb 039h,039h,00fh,00fh,00ah,0fah,0fdh,003h,0c0h,003h,0e0h,089h,0ffh,01ch,0ffh,0ffh	; b9bf  99..............
	defb 0f0h,0ffh,007h,0ffh,007h,009h,0ffh,002h,0fdh,002h,000h,003h,001h,089h,000h,01fh	; b9cf  ................
	defb 00fh,00fh,0f0h,082h,080h,0f0h,0f0h,003h,0ffh,081h,000h,004h,006h,082h,0ffh,080h	; b9df  ................
	defb 006h,0ffh,082h,000h,001h,006h,000h,083h,0f0h,0f8h,0f8h,005h,0b8h,081h,006h,007h	; b9ef  ................
	defb 004h,008h,0ffh,005h,000h,003h,0ffh,005h,0b8h,003h,058h,018h,0ffh,003h,058h,005h	; b9ff  ..........X...X.
	defb 018h,018h,0ffh,003h,018h,005h,008h,000h	; ba0f  ........

; ----------------------------------------------------------------------
; DATOS graficos_BA17: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p00:4A86 (126
;   bytes)
;   0xba17..0xba95  (126 bytes)
DATA_graficos_BA17:
	defb 009h,0f7h,081h,077h,006h,0a7h,082h,0f7h,077h,006h,0a7h,00bh,0f7h,005h,0a7h,008h	; ba17  ...w....w.......
	defb 0fah,081h,0a7h,007h,0fah,003h,0f7h,081h,077h,008h,0a7h,084h,099h,0a9h,0aah,0fah	; ba27  ........w.......
	defb 003h,0a7h,002h,099h,083h,0aah,0fah,0ffh,003h,0a7h,002h,0f9h,003h,0fah,004h,0a7h	; ba37  ................
	defb 002h,0a9h,09ah,0a5h,0fah,0ffh,0ffh,0f3h,033h,053h,055h,075h,077h,0ffh,0ffh,033h	; ba47  ........3SUuw..3
	defb 033h,055h,055h,077h,077h,0fah,0fah,0a3h,0a3h,0a5h,0a5h,0a7h,0a7h,003h,0fah,089h	; ba57  3UUww...........
	defb 0a3h,0fah,0fah,0a5h,0a7h,077h,077h,055h,075h,004h,0f7h,083h,077h,075h,055h,005h	; ba67  .....wwUu...wuU.
	defb 077h,083h,0a7h,075h,0a5h,007h,0a7h,081h,0a5h,005h,0a7h,008h,0f7h,008h,077h,005h	; ba77  w..u..........w.
	defb 0a7h,003h,077h,008h,0a7h,018h,077h,008h,0a7h,018h,077h,008h,0a7h,000h	; ba87  ..w...w...w...

; ======================================================================
; CODIGO 0xba95..0xbaa4  (15 bytes)
; ======================================================================


L_BA95:
	ld hl,0baa4h		;ba95
	ld a,(0e38eh)		;ba98
	add a,a			;ba9b
	call L_BBA3		;ba9c
	ld e,(hl)			;ba9f
	inc hl			;baa0
	ld d,(hl)			;baa1
	ex de,hl			;baa2
	jp (hl)			;baa3

; ----------------------------------------------------------------------
; DATOS saltos_BAA4: tabla de 4 palabras del despachador (call 0x408D en
;   0xBAA3); lo leen L_40AB (8 bytes)
;   0xbaa4..0xbaac  (8 bytes)
DATA_saltos_BAA4:
	defb 0ach,0bah	; baa4
	defb 0e0h,0bah	; baa6
	defb 051h,0bbh	; baa8
	defb 02ch,0bbh	; baaa

; ======================================================================
; CODIGO 0xbaac..0xbbff  (339 bytes)
; ======================================================================


L_BAAC:
	ld hl,0eb40h		;baac
	ld de,0e8f1h		;baaf
	ld bc,0003eh		;bab2
	ldir		;bab5
	call L_BBAD		;bab7
	ld a,(0e92fh)		;baba
	ld hl,0e8f0h		;babd
	ld (hl),a			;bac0
	inc hl			;bac1
	ld c,a			;bac2
	ld b,040h		;bac3
	xor a			;bac5
L_BAC6:
	ld a,(hl)			;bac6
	add a,c			;bac7
	ld (hl),a			;bac8
	inc hl			;bac9
	djnz L_BAC6		;baca
	ld hl,0e8f0h		;bacc
	ld (0e391h),hl		;bacf
	ld a,041h		;bad2
	ld (0e8e1h),a		;bad4
	xor a			;bad7
	ld (0e8e2h),a		;bad8
L_BADB:
	ld hl,0e38eh		;badb
	inc (hl)			;bade
	ret			;badf
L_BAE0:
	ld b,004h		;bae0
	ld hl,0efe2h		;bae2
	ld de,(0e391h)		;bae5
L_BAE9:
	push bc			;bae9
	ld b,002h		;baea
L_BAEC:
	ld a,(de)			;baec
	and 0f0h		;baed
	rra			;baef
	rra			;baf0
	rra			;baf1
	rra			;baf2
	call L_BB3D		;baf3
	ld (hl),a			;baf6
	inc hl			;baf7
	ld a,(de)			;baf8
	call L_BB3D		;baf9
	ld (hl),a			;bafc
	inc hl			;bafd
	inc de			;bafe
	exx			;baff
	ld hl,0e8e1h		;bb00
	dec (hl)			;bb03
	jr z,L_BB22		;bb04
	exx			;bb06
	djnz L_BAEC		;bb07
	xor a			;bb09
	ld (hl),a			;bb0a
	inc hl			;bb0b
	pop bc			;bb0c
	djnz L_BAE9		;bb0d
	ld (0e391h),de		;bb0f
	call L_BB19		;bb13
	jp L_BADB		;bb16
L_BB19:
	ld hl,0eff7h		;bb19
	ld a,01fh		;bb1c
	ld (hl),a			;bb1e
	jp 04046h		;bb1f
L_BB22:
	pop bc			;bb22
	call L_BB19		;bb23
	ld a,003h		;bb26
	ld (0e38eh),a		;bb28
	ret			;bb2b
L_BB2C:
	ld a,(0e008h)		;bb2c
	and 050h		;bb2f
	ret z			;bb31
	call 04046h		;bb32
	ld a,001h		;bb35
	ld (0e38fh),a		;bb37
	jp L_BADB		;bb3a
L_BB3D:
	and 00fh		;bb3d
	push bc			;bb3f
	add a,021h		;bb40
	ld c,a			;bb42
	ld a,(0e8e2h)		;bb43
	add a,007h		;bb46
	daa			;bb48
	and 00fh		;bb49
	ld (0e8e2h),a		;bb4b
	add a,c			;bb4e
	pop bc			;bb4f
	ret			;bb50
L_BB51:
	ld hl,0eff7h		;bb51
	ld a,(0e003h)		;bb54
	and 004h		;bb57
	ld a,01fh		;bb59
	jr z,L_BB5E		;bb5b
	xor a			;bb5d
L_BB5E:
	ld (hl),a			;bb5e
	ld a,(0e008h)		;bb5f
	and 050h		;bb62
	jp z,04046h		;bb64
	ld hl,0eff7h		;bb67
	ld (hl),000h		;bb6a
	ld hl,0e38eh		;bb6c
	dec (hl)			;bb6f
	ld de,0ef00h		;bb70
	ld hl,0ef40h		;bb73
	ld b,006h		;bb76
L_BB78:
	push bc			;bb78
	ld bc,00018h		;bb79
	ldir		;bb7c
	ld a,008h		;bb7e
	call L_BBA3		;bb80
	ld a,008h		;bb83
	call L_BBA8		;bb85
	pop bc			;bb88
	djnz L_BB78		;bb89
	ld b,002h		;bb8b
L_BB8D:
	push bc			;bb8d
	ld bc,00017h		;bb8e
	ld h,d			;bb91
	ld l,e			;bb92
	ld (hl),000h		;bb93
	inc de			;bb95
	ldir		;bb96
	ld a,008h		;bb98
	call L_BBA8		;bb9a
	pop bc			;bb9d
	djnz L_BB8D		;bb9e
	jp 04046h		;bba0
L_BBA3:
	add a,l			;bba3
	ld l,a			;bba4
	ret nc			;bba5
	inc h			;bba6
	ret			;bba7
L_BBA8:
	add a,e			;bba8
	ld e,a			;bba9
	ret nc			;bbaa
	inc d			;bbab
	ret			;bbac
L_BBAD:
	call L_BBC0		;bbad
	ex de,hl			;bbb0
	ld hl,0e92fh		;bbb1
	ld (hl),e			;bbb4
	inc hl			;bbb5
	ld (hl),d			;bbb6
	ret			;bbb7
L_BBB8:
	ld b,040h		;bbb8
	call L_BBC2		;bbba
	ld a,l			;bbbd
	or h			;bbbe
	ret			;bbbf
L_BBC0:
	ld b,03eh		;bbc0
L_BBC2:
	ld de,0e8f1h		;bbc2
	ld hl,00000h		;bbc5
L_BBC8:
	push bc			;bbc8
	push de			;bbc9
	ld a,(de)			;bbca
	call L_BBD4		;bbcb
	pop de			;bbce
	inc de			;bbcf
	pop bc			;bbd0
	djnz L_BBC8		;bbd1
	ret			;bbd3
L_BBD4:
	ld c,a			;bbd4
	ld de,0a001h		;bbd5
	ld b,008h		;bbd8
L_BBDA:
	ld a,c			;bbda
	rr c		;bbdb
	and a			;bbdd
	rr h		;bbde
	rr l		;bbe0
	adc a,000h		;bbe2
	rra			;bbe4
	jr nc,L_BBED		;bbe5
	ld a,d			;bbe7
	xor h			;bbe8
	ld h,a			;bbe9
	ld a,e			;bbea
	xor l			;bbeb
	ld l,a			;bbec
L_BBED:
	djnz L_BBDA		;bbed
	ret			;bbef
L_BBF0:
	ld hl,0bbffh		;bbf0
	ld a,(0e3b2h)		;bbf3
	add a,a			;bbf6
	call L_BD7F		;bbf7
	ld e,(hl)			;bbfa
	inc hl			;bbfb
	ld d,(hl)			;bbfc
	ex de,hl			;bbfd
	jp (hl)			;bbfe

; ----------------------------------------------------------------------
; DATOS saltos_BBFF: tabla de 4 palabras del despachador (call 0x408D en
;   0xBBFE); lo leen L_40AB (8 bytes)
;   0xbbff..0xbc07  (8 bytes)
DATA_saltos_BBFF:
	defb 007h,0bch	; bbff
	defb 05bh,0bch	; bc01
	defb 0b0h,0bch	; bc03
	defb 0eah,0bch	; bc05

; ======================================================================
; CODIGO 0xbc07..0xbc37  (48 bytes)
; ======================================================================


L_BC07:
	ld de,01800h		;bc07
	ld hl,0bc3bh		;bc0a
	ld bc,00020h		;bc0d
	call 0005ch		;bc10   ; BIOS LDIRVM - Block transfers to VRAM from memory
	ld de,03b00h		;bc13
	ld hl,0bc37h		;bc16
	ld bc,00004h		;bc19
	call 0005ch		;bc1c   ; BIOS LDIRVM - Block transfers to VRAM from memory
	ld hl,0e8e0h		;bc1f
	ld de,0e8e1h		;bc22
	ld bc,000efh		;bc25
	ld (hl),000h		;bc28
	ldir		;bc2a
	ld hl,0ffffh		;bc2c
	ld (0e92fh),hl		;bc2f
L_BC32:
	ld hl,0e3b2h		;bc32
	inc (hl)			;bc35
	ret			;bc36

; ----------------------------------------------------------------------
; DATOS resto_BC37: lo apuntan con el banco puesto p14:BC16 (0xBC37), p14:BC0A
;   (0xBC3B); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p14:BC16, p14:BC0A (36 bytes)
;   0xbc37..0xbc5b  (36 bytes)
DATA_resto_BC37:
	defb 0e0h,000h,000h,006h,0ffh,080h,080h,080h,080h,080h,080h,080h,080h,0ffh,000h,000h	; bc37  ................
	defb 000h,000h,000h,000h,0c0h,040h,040h,040h,040h,040h,040h,040h,040h,0c0h,000h,000h	; bc47  .....@@@@@@@@...
	defb 000h,000h,000h,000h	; bc57

; ======================================================================
; CODIGO 0xbc5b..0xbda9  (334 bytes)
; ======================================================================


L_BC5B:
	call L_BD18		;bc5b
	call L_BD6E		;bc5e
	ld (0e8e0h),a		;bc61
	ret z			;bc64
	cp 00ch		;bc65
	jr z,L_BC8B		;bc67
	cp 012h		;bc69
	jr z,L_BC93		;bc6b
	cp 015h		;bc6d
	jr z,L_BC9C		;bc6f
	cp 004h		;bc71
	jr z,L_BCA5		;bc73
	cp 00dh		;bc75
	jr z,$-69		;bc77
	call L_BD60		;bc79
	call L_BD3C		;bc7c
	call L_BD18		;bc7f
	ld hl,0e8e2h		;bc82
	ld a,(hl)			;bc85
	cp 081h		;bc86
	ret nc			;bc88
	inc (hl)			;bc89
	ret			;bc8a
L_BC8B:
	ld hl,0e8e2h		;bc8b
	ld a,(hl)			;bc8e
	and a			;bc8f
	ret z			;bc90
	dec (hl)			;bc91
	ret			;bc92
L_BC93:
	ld hl,0e8e2h		;bc93
	ld a,(hl)			;bc96
	cp 081h		;bc97
	ret nc			;bc99
	inc (hl)			;bc9a
	ret			;bc9b
L_BC9C:
	ld hl,0e8e2h		;bc9c
	ld a,(hl)			;bc9f
	sub 010h		;bca0
	ret c			;bca2
	ld (hl),a			;bca3
	ret			;bca4
L_BCA5:
	ld hl,0e8e2h		;bca5
	ld a,(hl)			;bca8
	add a,010h		;bca9
	cp 081h		;bcab
	ret nc			;bcad
	ld (hl),a			;bcae
	ret			;bcaf
L_BCB0:
	ld a,0e0h		;bcb0
	ld hl,03b00h		;bcb2
	call 0004dh		;bcb5   ; BIOS WRTVRM - Writes data in VRAM
	xor a			;bcb8
	ld (0e8e1h),a		;bcb9
	ld b,041h		;bcbc
	ld hl,0e931h		;bcbe
	ld de,0e8f0h		;bcc1
L_BCC4:
	push bc			;bcc4
	ld a,(hl)			;bcc5
	inc hl			;bcc6
	call L_BD06		;bcc7
	add a,a			;bcca
	add a,a			;bccb
	add a,a			;bccc
	add a,a			;bccd
	ld b,a			;bcce
	ld a,(hl)			;bccf
	inc hl			;bcd0
	call L_BD06		;bcd1
	or b			;bcd4
	ld (de),a			;bcd5
	inc de			;bcd6
	pop bc			;bcd7
	djnz L_BCC4		;bcd8
	ld hl,0e8f0h		;bcda
	ld c,(hl)			;bcdd
	inc hl			;bcde
	ld b,040h		;bcdf
L_BCE1:
	ld a,(hl)			;bce1
	sub c			;bce2
	ld (hl),a			;bce3
	inc hl			;bce4
	djnz L_BCE1		;bce5
	jp L_BC32		;bce7
L_BCEA:
	call L_BBB8		;bcea
	jr nz,L_BD00		;bced
	ld hl,0e8f1h		;bcef
	ld de,0eb40h		;bcf2
	ld bc,0003eh		;bcf5
	ldir		;bcf8
	ld a,001h		;bcfa
	ld (0e38fh),a		;bcfc
	ret			;bcff
L_BD00:
	ld a,002h		;bd00
	ld (0e38fh),a		;bd02
	ret			;bd05
L_BD06:
	ld c,a			;bd06
	ld a,(0e8e1h)		;bd07
	add a,007h		;bd0a
	daa			;bd0c
	and 00fh		;bd0d
	ld (0e8e1h),a		;bd0f
	add a,041h		;bd12
	sub c			;bd14
	neg		;bd15
	ret			;bd17
L_BD18:
	ld a,(0e8e2h)		;bd18
	and 0f0h		;bd1b
	dec a			;bd1d
	add a,030h		;bd1e
	ld hl,03b00h		;bd20
	call 0004dh		;bd23   ; BIOS WRTVRM - Writes data in VRAM
	ld a,(0e8e2h)		;bd26
	and 00fh		;bd29
	ld c,a			;bd2b
	rra			;bd2c
	rra			;bd2d
	and 003h		;bd2e
	add a,c			;bd30
	add a,a			;bd31
	add a,a			;bd32
	add a,a			;bd33
	add a,02fh		;bd34
	ld hl,03b01h		;bd36
	jp 0004dh		;bd39   ; BIOS WRTVRM - Writes data in VRAM
L_BD3C:
	ld a,(0e8e2h)		;bd3c
	ld c,a			;bd3f
	and 0f0h		;bd40
	ld l,a			;bd42
	ld h,000h		;bd43
	add hl,hl			;bd45
	add hl,hl			;bd46
	ld de,038c6h		;bd47
	add hl,de			;bd4a
	ld a,c			;bd4b
	and 00fh		;bd4c
	ld b,a			;bd4e
	ld a,c			;bd4f
	rra			;bd50
	rra			;bd51
	and 003h		;bd52
	add a,b			;bd54
	call L_BD7F		;bd55
	ld a,(0e8e0h)		;bd58
	sub 020h		;bd5b
	jp 0004dh		;bd5d   ; BIOS WRTVRM - Writes data in VRAM
L_BD60:
	ld a,(0e8e2h)		;bd60
	ld hl,0e931h		;bd63
	call L_BD7F		;bd66
	ld a,(0e8e0h)		;bd69
	ld (hl),a			;bd6c
	ret			;bd6d
L_BD6E:
	ld a,(0e3c0h)		;bd6e
	and a			;bd71
	ret m			;bd72
	call L_BD84		;bd73
	ld hl,0e8e0h		;bd76
	ld c,(hl)			;bd79
	ld (hl),a			;bd7a
	and a			;bd7b
	ret z			;bd7c
	cp c			;bd7d
	ret			;bd7e
L_BD7F:
	add a,l			;bd7f
	ld l,a			;bd80
	ret nc			;bd81
	inc h			;bd82
	ret			;bd83
L_BD84:
	ld b,009h		;bd84
	ld e,000h		;bd86
L_BD88:
	ld a,e			;bd88
	call 00141h		;bd89   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;bd8c
	and a			;bd8d
	jr nz,L_BD95		;bd8e
	inc e			;bd90
	djnz L_BD88		;bd91
	xor a			;bd93
	ret			;bd94
L_BD95:
	ld b,a			;bd95
	ld a,e			;bd96
	add a,a			;bd97
	add a,a			;bd98
	add a,a			;bd99
	ld hl,0bda9h		;bd9a
	call L_BD7F		;bd9d
	ld a,b			;bda0
L_BDA1:
	rra			;bda1
	jr c,L_BDA7		;bda2
	inc hl			;bda4
	jr L_BDA1		;bda5
L_BDA7:
	ld a,(hl)			;bda7
	ret			;bda8

; ----------------------------------------------------------------------
; DATOS resto_BDA9: lo apuntan con el banco puesto p14:BD9A (0xBDA9); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p14:BD9A (72 bytes)
;   0xbda9..0xbdf1  (72 bytes)
DATA_resto_BDA9:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; bda9  ................
	defb 000h,000h,000h,000h,000h,000h,041h,042h,043h,044h,045h,046h,047h,048h,049h,04ah	; bdb9  ......ABCDEFGHIJ
	defb 04bh,04ch,04dh,04eh,04fh,050h,051h,052h,053h,054h,055h,056h,057h,058h,059h,05ah	; bdc9  KLMNOPQRSTUVWXYZ
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,00dh	; bdd9  ................
	defb 000h,000h,000h,000h,00ch,015h,004h,012h	; bde9  ........

; ----------------------------------------------------------------------
; DATOS relleno_ff: 527 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (527 bytes)
;   0xbdf1..0xc000  (527 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdf1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be01  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be11  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be21  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be31  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be41  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be51  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be61  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be71  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be81  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be91  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bea1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beb1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bec1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bed1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bee1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bef1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf01  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf11  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf21  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf31  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf41  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf51  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf61  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf71  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf81  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf91  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfa1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfb1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfc1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfd1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff1  ...............
