; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 28 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS graficos_9ED9_cola: graficos (L_5A2A): [n] n < 0x80 repite el
;   siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba (sigue
;   del banco 27); lo leen p01:6243, p01:624C (456 bytes)
;   0xa000..0xa1c8  (456 bytes)
DATA_graficos_9ED9_cola:
	defb 0fch,0d0h,028h,001h,003h,04dh,0b7h,07eh,0a7h,07eh,0b8h,0f8h,0d0h,0c0h,001h,0c6h	; a000  ..(..M.~.~......
	defb 0e9h,0aeh,0d7h,0e0h,09ah,07eh,0bfh,03fh,08ah,0fbh,083h,077h,000h,082h,0adh,0ffh	; a010  .....~.?...w....
	defb 064h,0efh,07ch,0f3h,0bch,000h,0a5h,0ffh,002h,0ffh,001h,000h,000h,090h,036h,01bh	; a020  d.|...........6.
	defb 027h,00dh,014h,08eh,027h,009h,000h,0a8h,0d7h,0cbh,06eh,01eh,095h,040h,000h,00bh	; a030  '...'.....n..@..
	defb 0b7h,025h,0efh,0fdh,0b0h,000h,005h,05fh,0c9h,012h,000h,001h,000h,001h,004h,002h	; a040  .%....._........
	defb 000h,00bh,08fh,089h,0c6h,0c5h,082h,068h,014h,0afh,0d7h,0cfh,0efh,0f7h,0ffh,03dh	; a050  .......h.......=
	defb 0dfh,08fh,063h,023h,089h,08ch,0c4h,073h,059h,0d5h,020h,064h,0cdh,0dfh,0feh,0fch	; a060  ..c#...sY. d....
	defb 079h,078h,099h,0e3h,0cch,0a8h,07bh,07fh,03dh,0e0h,086h,01ch,028h,050h,072h,0e0h	; a070  yx....{.=...(Pr.
	defb 045h,07ch,0eeh,0adh,066h,073h,018h,082h,012h,087h,09ah,0aeh,01eh,03bh,01bh,038h	; a080  E|..fs.........8
	defb 09ch,0d5h,09dh,098h,0c9h,029h,065h,02ch,004h,00ch,020h,007h,03ah,0d0h,001h,00bh	; a090  .....)e,.. .:...
	defb 09fh,000h,000h,082h,005h,086h,00fh,00fh,02fh,0ffh,0a3h,005h,08bh,015h,013h,00ah	; a0a0  ......../.......
	defb 009h,006h,000h,000h,048h,094h,0aeh,01fh,0fdh,0fch,00fh,083h,040h,065h,052h,0a4h	; a0b0  ....H.......@eR.
	defb 0ech,0cdh,0d7h,053h,028h,080h,005h,049h,05bh,0dbh,02fh,013h,00ch,003h,0a0h,0d8h	; a0c0  ...S(..I[./.....
	defb 0f4h,0fdh,0cdh,07fh,07eh,0f0h,000h,008h,055h,0aah,0a6h,06eh,077h,0bfh,07fh,0fch	; a0d0  ....~...U..nw...
	defb 0f2h,0a4h,0c8h,020h,080h,002h,0a8h,003h,06ch,090h,01ah,036h,024h,04ch,054h,054h	; a0e0  ... ....l..6$LTT
	defb 0b4h,0a4h,028h,058h,058h,0f0h,030h,050h,0a0h,0c0h,000h,001h,002h,004h,009h,002h	; a0f0  ..(XX.0P........
	defb 00ch,01dh,03bh,032h,046h,0ach,0d4h,038h,050h,0e1h,020h,040h,020h,060h,0a0h,090h	; a100  ...2F..8P. @ `..
	defb 060h,050h,0c2h,08eh,014h,054h,02ch,0c8h,099h,0d9h,003h,001h,003h,006h,004h,004h	; a110  `P...T,.........
	defb 001h,002h,0d0h,050h,068h,098h,058h,048h,06ch,0ffh,02ch,091h,0b3h,023h,061h,0e5h	; a120  ...Ph.XHl.,..#a.
	defb 0c1h,045h,065h,004h,00dh,019h,013h,005h,008h,01bh,032h,0bch,0e6h,0b2h,0dbh,049h	; a130  .Ee.......2....I
	defb 026h,034h,092h,045h,0e2h,046h,066h,063h,023h,0b3h,091h,036h,036h,07bh,052h,057h	; a140  &4.E.Ffc#..66{RW
	defb 032h,033h,019h,0b3h,0a4h,064h,068h,0c0h,0c1h,00bh,01eh,080h,001h,000h,000h,020h	; a150  23...dh........
	defb 000h,020h,000h,02bh,052h,024h,0ech,0c8h,050h,080h,003h,072h,0a6h,02ch,048h,0d0h	; a160  . .+R$..P..r.,H.
	defb 0b0h,040h,002h,076h,0b5h,0aah,050h,000h,008h,043h,0a0h,060h,080h,006h,041h,000h	; a170  .@.v..P..C.`..A.
	defb 008h,021h,006h,003h,005h,007h,007h,042h,0f0h,0a8h,0b4h,0e0h,080h,001h,002h,005h	; a180  .!.....B........
	defb 00ah,01eh,029h,0e0h,0c0h,003h,006h,012h,02dh,029h,05ah,0c0h,080h,002h,00dh,01ch	; a190  ..).....-)Z.....
	defb 019h,033h,06ch,030h,060h,0c0h,0c0h,080h,001h,08ah,003h,00ah,00bh,005h,00bh,003h	; a1a0  .3l0`...........
	defb 080h,080h,040h,0a0h,008h,0ffh,090h,000h,004h,040h,008h,0e7h,000h,020h,0cfh,000h	; a1b0  ..@......@... ..
	defb 040h,004h,0f3h,030h,0dfh,002h,0fdh,000h	; a1c0  @..0....

; ----------------------------------------------------------------------
; DATOS graficos_A1C8: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p01:6255 (589
;   bytes)
;   0xa1c8..0xa415  (589 bytes)
DATA_graficos_A1C8:
	defb 03fh,050h,081h,0e0h,006h,050h,081h,040h,006h,050h,003h,040h,082h,050h,040h,006h	; a1c8  ?P...P.@.P.@.P@.
	defb 050h,084h,040h,050h,050h,040h,004h,050h,002h,040h,082h,050h,040h,005h,050h,081h	; a1d8  P.@PP@.P.@.P@.P.
	defb 040h,003h,050h,081h,040h,007h,050h,004h,040h,083h,050h,040h,040h,005h,050h,082h	; a1e8  @.P.@.P.@.P@@.P.
	defb 040h,050h,003h,040h,002h,050h,082h,040h,050h,004h,040h,081h,050h,003h,040h,084h	; a1f8  @P.@.P.@P.@.P.@.
	defb 054h,040h,050h,040h,004h,050h,082h,040h,050h,003h,040h,005h,050h,002h,040h,081h	; a208  T@P@.P.@P.@.P.@.
	defb 050h,005h,040h,083h,050h,040h,050h,004h,040h,004h,050h,085h,0e0h,050h,050h,040h	; a218  P.@.P@P.@.P..PP@
	defb 050h,003h,040h,084h,054h,050h,050h,040h,003h,050h,081h,040h,003h,054h,082h,040h	; a228  P.@.TPP@.P.@.T.@
	defb 050h,003h,040h,081h,054h,004h,040h,002h,054h,002h,050h,003h,040h,087h,054h,040h	; a238  P.@.T.@.T.P.@.T@
	defb 050h,040h,050h,040h,050h,004h,040h,002h,054h,004h,040h,08dh,054h,050h,040h,054h	; a248  P@P@P.@.T.@.TP@T
	defb 040h,050h,040h,050h,050h,040h,050h,040h,050h,006h,040h,08bh,050h,054h,040h,040h	; a258  @P@PP@P@P.@.PT@@
	defb 050h,040h,050h,040h,050h,040h,040h,003h,050h,085h,054h,040h,040h,050h,050h,008h	; a268  P@P@P@@.P.T@@PP.
	defb 040h,089h,050h,040h,050h,040h,050h,050h,054h,040h,054h,005h,040h,002h,050h,006h	; a278  @.P@P@PPT@T.@.P.
	defb 040h,084h,054h,040h,050h,040h,004h,050h,083h,054h,040h,050h,005h,040h,084h,054h	; a288  @.T@P@.P.T@P.@.T
	defb 040h,054h,050h,004h,040h,085h,054h,040h,040h,050h,050h,003h,040h,003h,090h,004h	; a298  @TP.@.T@@PP.@...
	defb 050h,086h,040h,0a0h,0a0h,090h,0a0h,090h,003h,050h,085h,090h,0a0h,090h,0a0h,0a0h	; a2a8  P.@......P......
	defb 003h,050h,084h,0a0h,090h,0a0h,0a0h,003h,050h,081h,054h,008h,090h,081h,0a0h,007h	; a2b8  .P......P.T.....
	defb 0b0h,002h,0a0h,082h,0b0h,0a0h,003h,0b0h,089h,0a0h,090h,0a0h,090h,0a0h,0a0h,0b0h	; a2c8  ................
	defb 0a0h,0b0h,003h,090h,099h,0a0h,0b0h,0a0h,0b0h,0a0h,090h,090h,0a0h,0b0h,0a0h,0b0h	; a2d8  ................
	defb 0a0h,0b0h,0a0h,090h,090h,0b0h,0a0h,0a0h,0b0h,0a0h,0b0h,0b0h,090h,0a0h,004h,090h	; a2e8  ................
	defb 08ah,0a0h,0b0h,0b0h,0a0h,0b0h,0a0h,090h,0a0h,0a0h,090h,003h,0a0h,087h,090h,0a0h	; a2f8  ................
	defb 0b0h,090h,080h,090h,0a0h,003h,090h,003h,0a0h,087h,080h,090h,090h,0a0h,090h,0a0h	; a308  ................
	defb 090h,004h,0a0h,083h,090h,0a0h,090h,004h,080h,08dh,090h,0a0h,0a0h,0b0h,0b0h,090h	; a318  ................
	defb 080h,080h,090h,090h,0a0h,090h,0a0h,005h,090h,083h,0a0h,090h,0b0h,003h,0a0h,088h	; a328  ................
	defb 080h,090h,0a0h,090h,0a0h,0b0h,0a0h,0b0h,003h,080h,002h,090h,002h,0a0h,08ah,0b0h	; a338  ................
	defb 0a0h,0b0h,0a0h,080h,0e0h,0f0h,0f0h,080h,080h,003h,090h,002h,0e0h,088h,0f0h,0e0h	; a348  ................
	defb 0e0h,0f0h,0e0h,0f0h,0e0h,0f0h,003h,0e0h,086h,0f0h,0e0h,0f0h,0e0h,0e0h,0f0h,006h	; a358  ................
	defb 0e0h,086h,0f0h,0e0h,0e0h,0f0h,0e0h,0e0h,003h,0f0h,08fh,0e0h,0f0h,0e0h,0f0h,0e0h	; a368  ................
	defb 0f0h,0f0h,0e0h,0e0h,0f0h,0e0h,0e0h,0f0h,0e0h,0e0h,005h,0f0h,087h,0e0h,0f0h,0e0h	; a378  ................
	defb 0f0h,0e0h,0e0h,0f0h,00bh,0e0h,002h,0f0h,096h,0e0h,0f0h,0e0h,0e0h,0f0h,0e0h,0f0h	; a388  ................
	defb 0e0h,0e0h,0f0h,0e0h,0e0h,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h,0e0h,0f0h,0e0h,0f0h,003h	; a398  ................
	defb 0e0h,08fh,0f0h,0e0h,0f0h,0e0h,0e0h,0f0h,0e0h,0f0h,0f0h,0e0h,0f0h,0e0h,0e0h,0f0h	; a3a8  ................
	defb 0a0h,006h,0f0h,09ch,0e0h,0f0h,0e0h,0f0h,0e0h,0f0h,0f0h,080h,0e0h,0e0h,0f0h,0e0h	; a3b8  ................
	defb 0f0h,0e0h,0f0h,090h,0e0h,0f0h,0e0h,0f0h,0f0h,080h,090h,090h,0f0h,0f0h,0e0h,0f0h	; a3c8  ................
	defb 005h,090h,002h,0a0h,081h,0b0h,003h,0e0h,083h,0f0h,050h,050h,006h,0e0h,002h,050h	; a3d8  ..........PP...P
	defb 006h,0e0h,002h,050h,003h,0e0h,083h,0f0h,0e0h,0f0h,003h,040h,002h,050h,084h,0e0h	; a3e8  ...P.......@.P..
	defb 0f0h,0e0h,050h,003h,040h,084h,0f0h,0e0h,0f0h,0e0h,009h,090h,08fh,098h,0a9h,0a9h	; a3f8  ..P.@...........
	defb 096h,0a9h,0a9h,090h,090h,098h,0a9h,096h,0a9h,090h,0a9h,096h,000h	; a408  .............

; ----------------------------------------------------------------------
; DATOS graficos_A415: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0
;   acaba; lo leen p01:6264 (575 bytes)
;   0xa415..0xa654  (575 bytes)
DATA_graficos_A415:
	defb 080h,020h,094h,031h,0d9h,0fdh,0f9h,07ah,072h,072h,062h,07ah,072h,072h,062h,042h	; a415  . .1...zrrbzrrbB
	defb 064h,034h,024h,034h,028h,018h,010h,004h,000h,0ffh,042h,064h,034h,024h,034h,028h	; a425  d4$4(.....Bd4$4(
	defb 018h,010h,008h,01ch,02ch,072h,036h,0ach,0c5h,0b1h,005h,003h,001h,009h,008h,014h	; a435  ....,r6.........
	defb 01ch,026h,000h,000h,001h,002h,006h,002h,00dh,017h,000h,001h,000h,003h,002h,006h	; a445  .&..............
	defb 002h,007h,000h,020h,022h,010h,084h,083h,0c0h,061h,00eh,020h,022h,010h,084h,083h	; a455  ... "....a. "...
	defb 040h,021h,03ch,0beh,09fh,095h,0ceh,060h,006h,040h,001h,001h,003h,003h,007h,007h	; a465  @!<....`.@......
	defb 00dh,01ch,000h,023h,023h,011h,084h,083h,0c0h,061h,0d3h,0e6h,0adh,04ah,01dh,01fh	; a475  ...##....a...J..
	defb 01eh,007h,08ch,039h,0c3h,006h,019h,003h,07eh,0fch,03ch,018h,082h,01ch,078h,03ch	; a485  ...9....~.<...x<
	defb 00bh,040h,000h,003h,002h,00dh,00eh,034h,032h,066h,0e8h,060h,070h,078h,036h,038h	; a495  .@.....42f.`px68
	defb 00eh,040h,071h,060h,030h,010h,080h,0c4h,08eh,0ffh,025h,03ch,018h,082h,01ch,079h	; a4a5  .@q`0.....%<...y
	defb 03ch,00bh,040h,004h,0f8h,0f9h,0f2h,0e4h,0c0h,018h,062h,0f8h,07fh,038h,002h,01ch	; a4b5  <.@.......b..8..
	defb 00dh,0b1h,0e3h,00ch,000h,000h,008h,019h,031h,001h,01bh,0e7h,08ch,03ch,011h,033h	; a4c5  ........1....<.3
	defb 073h,062h,031h,0c3h,082h,000h,0f8h,0fch,0f6h,0fah,0feh,0e6h,0c2h,065h,033h,038h	; a4d5  sb1..........e38
	defb 010h,000h,028h,00fh,03ch,0dch,0b9h,033h,033h,03ah,091h,000h,007h,00ch,012h,03ch	; a4e5  ..(.<..33:.....<
	defb 033h,079h,0e0h,00fh,00ch,03ch,039h,079h,079h,0f1h,0f1h,0e7h,08ch,03ch,011h,033h	; a4f5  3y...<9yy....<.3
	defb 073h,062h,071h,09fh,07ah,0f8h,0e0h,0c7h,09ch,038h,032h,0f0h,0a0h,081h,0c2h,002h	; a505  sbq.z....82.....
	defb 004h,080h,041h,028h,020h,030h,018h,01eh,000h,002h,000h,018h,03bh,03bh,03dh,03ch	; a515  ..A( 0........=<
	defb 07fh,05ch,04ch,000h,001h,001h,003h,006h,00fh,0ffh,00fh,01fh,07eh,05ch,031h,006h	; a525  .\L.........~\1.
	defb 03eh,0fch,018h,0f2h,0eeh,074h,021h,006h,03eh,0fch,018h,0f2h,020h,070h,0e1h,0f3h	; a535  >....t!.>... p..
	defb 077h,066h,001h,040h,005h,01fh,03eh,034h,074h,0f9h,0d1h,0b1h,011h,0e0h,0f0h,0d0h	; a545  wf.@..>4t.......
	defb 0e0h,044h,00eh,01dh,0e0h,030h,006h,01fh,07eh,0f6h,0f8h,0f8h,0efh,0a5h,052h,053h	; a555  .D...0..~.....RS
	defb 030h,029h,018h,007h,071h,060h,030h,010h,080h,0c4h,00eh,025h,080h,0b7h,0b2h,090h	; a565  0)..q`0....%....
	defb 0c1h,043h,027h,08ch,0cbh,0e3h,077h,04bh,01bh,031h,02dh,07ch,0b1h,04fh,02bh,019h	; a575  .C'...wK.1-|.O+.
	defb 01dh,015h,00eh,003h,005h,00fh,00eh,014h,014h,018h,010h,030h,0cbh,063h,077h,03bh	; a585  ...........0.cw.
	defb 01bh,011h,00dh,002h,0ffh,0e7h,0f5h,078h,03ch,0c2h,0e3h,0f3h,0f7h,0f2h,0f9h,0b9h	; a595  .......x<.......
	defb 07eh,036h,0cfh,017h,087h,00dh,08bh,089h,000h,097h,004h,082h,000h,0f8h,0fch,0feh	; a5a5  ~6..............
	defb 0fdh,0fdh,0f6h,0f8h,0c0h,0deh,06ch,021h,006h,03ch,0e4h,018h,0e2h,01bh,00bh,001h	; a5b5  ......l!.<......
	defb 001h,003h,000h,0ffh,0c0h,078h,07eh,03eh,0bfh,0bfh,01ch,00fh,001h,07fh,09eh,0e3h	; a5c5  .....x~>........
	defb 01ch,07eh,0e8h,073h,01ch,012h,008h,030h,068h,074h,07ch,0fah,0f7h,004h,008h,001h	; a5d5  .~.s...0ht|.....
	defb 012h,024h,0c4h,018h,062h,00fh,03fh,07eh,0edh,0f9h,0d9h,0d9h,0c9h,03ch,034h,076h	; a5e5  .$..b.?~.....<4v
	defb 07bh,07fh,0f7h,0ffh,0feh,09ch,079h,0f7h,08bh,01fh,03ch,0d3h,000h,01eh,035h,03eh	; a5f5  {.....y...<...5>
	defb 03ch,07eh,07ch,0fdh,0fch,0dfh,0fbh,0f7h,09ah,00fh,03bh,0ech,050h,08fh,0cfh,0e5h	; a605  <~|.........P...
	defb 0e3h,0f3h,06bh,072h,037h,01bh,03fh,03bh,034h,036h,06bh,00fh,0c3h,0ffh,0f7h,0fch	; a615  ..kr7.?.46k.....
	defb 0beh,0c4h,0f3h,0e7h,038h,01fh,07ah,0e0h,0c0h,087h,01ch,030h,002h,064h,060h,070h	; a625  ....8.z....0.d`p
	defb 078h,0fch,0fch,078h,071h,0e3h,08eh,030h,079h,0fch,0f6h,039h,016h,000h,03ch,05fh	; a635  x..xq..0y..9..<_
	defb 080h,0eah,0f1h,08ah,0e1h,0c3h,012h,069h,0f9h,0f8h,0d0h,0e0h,0ech,0dbh,000h	; a645  .......i.......

; ----------------------------------------------------------------------
; DATOS graficos_A654: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0
;   acaba; lo leen p01:6270 (800 bytes)
;   0xa654..0xa974  (800 bytes)
DATA_graficos_A654:
	defb 080h,028h,094h,031h,0d9h,0fdh,0f9h,07ah,072h,072h,062h,07ah,072h,072h,062h,042h	; a654  .(.1...zrrbzrrbB
	defb 064h,034h,024h,034h,028h,018h,010h,004h,000h,09ah,042h,064h,034h,024h,034h,028h	; a664  d4$4(.....Bd4$4(
	defb 018h,010h,008h,01ch,02ch,072h,036h,0ach,0c5h,0b1h,092h,036h,074h,060h,080h,000h	; a674  ....,r6....6t`..
	defb 003h,00fh,0c0h,060h,00ah,000h,002h,001h,082h,02ch,0b3h,004h,000h,087h,008h,010h	; a684  ...`.....,......
	defb 030h,030h,083h,068h,007h,00ah,000h,086h,001h,007h,007h,071h,030h,008h,005h,000h	; a694  00.h.......q0...
	defb 088h,003h,006h,00dh,01eh,0d8h,034h,064h,0f8h,003h,000h,086h,003h,00fh,03eh,074h	; a6a4  ......4d......>t
	defb 0d8h,020h,003h,000h,09fh,083h,064h,0b9h,087h,000h,000h,0c0h,018h,00ch,0e2h,0f1h	; a6b4  . ....d.........
	defb 0f9h,070h,0a0h,0e0h,0e0h,0d1h,031h,011h,08bh,060h,0e0h,0a0h,0e0h,0d0h,0f1h,09bh	; a6c4  .p....1..`......
	defb 004h,000h,040h,040h,003h,0e1h,092h,091h,038h,020h,080h,080h,0c4h,0a4h,0f1h,00bh	; a6d4  ..@@....8 ......
	defb 020h,005h,007h,067h,0bah,0bah,098h,0d2h,0f6h,004h,000h,002h,001h,002h,003h,087h	; a6e4   ..g............
	defb 092h,036h,074h,060h,080h,000h,003h,003h,00fh,086h,03dh,076h,0dah,006h,004h,01ch	; a6f4  .6t`......=v....
	defb 003h,000h,0c2h,002h,00fh,01fh,016h,08fh,010h,018h,068h,0c0h,0c4h,089h,08bh,09bh	; a704  ..........h.....
	defb 003h,003h,007h,006h,00ah,00ah,00ch,018h,00ch,00eh,006h,002h,001h,001h,003h,003h	; a714  ................
	defb 086h,02ch,038h,098h,098h,08ch,080h,0c0h,086h,0f4h,07ch,058h,038h,038h,018h,004h	; a724  .,8.......|X88..
	defb 000h,001h,001h,003h,007h,002h,001h,000h,069h,0b2h,07fh,0f2h,0f4h,0e8h,0f4h,0d0h	; a734  ........i.......
	defb 02ch,088h,040h,021h,001h,003h,003h,084h,07ah,07eh,036h,00ch,004h,000h,082h,003h	; a744  ,.@!....z~6.....
	defb 006h,003h,00eh,085h,006h,002h,001h,008h,00ch,003h,007h,0bfh,003h,006h,005h,000h	; a754  ................
	defb 007h,00dh,076h,0dah,006h,004h,01ch,044h,097h,032h,058h,074h,0e0h,0c1h,041h,03eh	; a764  ..v....D.2Xt..A>
	defb 05eh,07eh,0fah,0e4h,0f8h,060h,000h,0f8h,07fh,038h,002h,01ch,00dh,0b1h,0e3h,0d7h	; a774  ^~...`...8......
	defb 079h,022h,044h,040h,080h,0c0h,0c0h,006h,00dh,038h,07dh,0d9h,0e9h,0b3h,0e3h,003h	; a784  y"D@.....8}.....
	defb 00fh,096h,07ch,05ch,00eh,032h,064h,073h,0d1h,03dh,030h,004h,000h,0a6h,0f4h,0f3h	; a794  ..|\.2ds.=0.....
	defb 0f4h,0d9h,0c1h,0c3h,0c7h,06fh,0deh,039h,0f0h,0a0h,040h,0c0h,081h,003h,000h,07ch	; a7a4  .....o.9..@....|
	defb 07bh,03fh,02fh,03bh,01ch,01ch,000h,000h,001h,007h,03dh,07eh,07fh,0f4h,081h,024h	; a7b4  {?/.......=~...$
	defb 0f3h,0e1h,02fh,01bh,004h,000h,097h,0c0h,098h,00eh,083h,0e3h,076h,000h,000h,002h	; a7c4  ../.........v...
	defb 007h,03bh,0fch,000h,0f4h,006h,001h,060h,0f2h,0e6h,0c7h,08ch,0f0h,020h,003h,000h	; a7d4  .......`..... ..
	defb 0ffh,083h,064h,039h,082h,000h,000h,0c0h,018h,00ch,0e2h,031h,009h,0f9h,0a2h,04ch	; a7e4  ..d9.......1...L
	defb 071h,0e0h,0c1h,082h,000h,007h,02fh,0c7h,0d1h,03fh,0fch,010h,047h,0c7h,0e3h,0dch	; a7f4  q...../..?..G...
	defb 082h,008h,067h,0c3h,040h,003h,006h,007h,007h,00fh,00fh,006h,003h,0dbh,0dfh,0d6h	; a804  ..g.@...........
	defb 07ch,05ch,00eh,032h,064h,012h,008h,030h,068h,074h,07ch,0fah,0f7h,0e3h,07fh,07fh	; a814  |\.2d..0ht|.....
	defb 0f9h,0ffh,0e7h,07fh,0fch,087h,00dh,08bh,089h,000h,004h,082h,000h,0f7h,0f2h,0f9h	; a824  ................
	defb 0b9h,07eh,036h,0cfh,017h,047h,0fdh,0f3h,0fbh,0f8h,0f4h,0fah,0ffh,0e0h,0c0h,083h	; a834  .~6..G..........
	defb 018h,020h,0c0h,001h,007h,03ch,014h,004h,078h,000h,005h,08bh,0cfh,0c6h,001h,060h	; a844  . ...<..x......`
	defb 0f2h,0e6h,0c7h,08fh,0dfh,0fch,0dfh,0beh,07eh,07ch,0fch,078h,079h,0f8h,03ch,04dh	; a854  ........~|.xy.<M
	defb 08fh,0e1h,0f2h,0c9h,0c1h,083h,086h,00ch,088h,088h,020h,000h,080h,000h,001h,000h	; a864  .......... .....
	defb 003h,001h,081h,000h,003h,002h,002h,004h,099h,000h,008h,008h,010h,010h,0e5h,067h	; a874  ...............g
	defb 067h,0fah,0fah,0f8h,0f2h,0f6h,02bh,076h,0ech,0e9h,0c7h,03fh,0ffh,0ffh,007h,03fh	; a884  g.....+v...?...?
	defb 0f6h,0e9h,003h,0ffh,0ffh,0f4h,068h,0f0h,0cch,0fch,0f8h,070h,097h,0ffh,020h,01ch	; a894  ......h....p.. .
	defb 07ah,0ffh,0fdh,0ffh,0ffh,0fbh,012h,069h,0f9h,0f8h,0d0h,0e0h,0ech,0dbh,000h,03ch	; a8a4  z......i.......<
	defb 05fh,080h,0eah,0f1h,0e1h,0c3h,01bh,03fh,03bh,034h,036h,06bh,00fh,0c3h,08fh,0cfh	; a8b4  _......?.46k....
	defb 0e5h,0e3h,0f3h,06bh,072h,037h,000h,0d3h,03ch,01fh,08bh,0f7h,079h,09ch,050h,0ech	; a8c4  ...kr7..<...y.P.
	defb 03bh,00fh,09ah,0f7h,0fbh,0dfh,043h,00fh,01ah,03ch,07ch,0fdh,0f3h,0e7h,00ch,0c9h	; a8d4  ......C..<|.....
	defb 0ddh,0ebh,06bh,027h,003h,01dh,03ch,0d1h,007h,0e7h,0f3h,0f0h,0e0h,0c0h,012h,069h	; a8e4  ..k'..<........i
	defb 0f9h,0f8h,0d0h,0e0h,0ech,0dbh,01dh,03bh,06fh,0fdh,0dch,0feh,0feh,0ffh,003h,00eh	; a8f4  ........o.......
	defb 01eh,0feh,07ch,07eh,0b2h,0e0h,0f4h,0feh,0bfh,0ffh,0bfh,0ffh,03fh,020h,020h,030h	; a904  ..|~........?  0
	defb 018h,00dh,002h,000h,0abh,001h,003h,023h,081h,003h,017h,079h,0e0h,000h,000h,00fh	; a914  .......#...y....
	defb 07bh,0c1h,080h,000h,081h,0e3h,076h,0e5h,067h,067h,0fah,0fah,0f8h,0f2h,0f6h,016h	; a924  {.....v.gg......
	defb 039h,0f6h,0fch,079h,030h,08eh,0e3h,01ch,073h,0e8h,07eh,01ch,0e3h,09eh,07fh,0ffh	; a934  9..y0...s.~.....
	defb 003h,0feh,0ach,0ffh,03eh,073h,061h,0b0h,083h,064h,018h,000h,005h,08bh,0cfh,0f1h	; a944  ....>sa..d......
	defb 0e1h,0c3h,081h,07ch,018h,001h,001h,07fh,0e0h,0ceh,0c0h,040h,030h,00eh,000h,07fh	; a954  ...|.......@0...
	defb 07fh,038h,002h,01ch,00dh,0b1h,0e3h,000h,080h,0eah,0c1h,0c4h,089h,08bh,09bh,000h	; a964  .8..............

; ----------------------------------------------------------------------
; DATOS graficos_A974: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0
;   acaba; lo leen p01:626A (326 bytes)
;   0xa974..0xaaba  (326 bytes)
DATA_graficos_A974:
	defb 080h,000h,005h,080h,002h,060h,002h,080h,002h,060h,088h,080h,090h,080h,060h,090h	; a974  .....`...`....`.
	defb 060h,080h,060h,006h,090h,088h,080h,060h,090h,060h,080h,060h,090h,0a0h,005h,090h	; a984  `.`....`.`.`....
	defb 082h,060h,080h,026h,090h,084h,080h,090h,090h,080h,00ah,090h,081h,080h,009h,090h	; a994  .`.&............
	defb 081h,080h,005h,090h,006h,080h,083h,090h,080h,080h,005h,090h,003h,080h,007h,090h	; a9a4  ................
	defb 088h,080h,090h,080h,090h,080h,090h,090h,080h,005h,090h,004h,080h,008h,090h,002h	; a9b4  ................
	defb 0a0h,083h,090h,080h,080h,003h,090h,081h,0a0h,004h,080h,081h,090h,003h,080h,081h	; a9c4  ................
	defb 090h,004h,080h,003h,090h,006h,080h,082h,090h,080h,007h,090h,004h,080h,005h,090h	; a9d4  ................
	defb 004h,080h,083h,090h,080h,080h,008h,090h,083h,080h,090h,098h,005h,080h,082h,090h	; a9e4  ................
	defb 080h,003h,090h,085h,080h,090h,080h,080h,090h,004h,080h,083h,090h,080h,090h,004h	; a9f4  ................
	defb 080h,004h,090h,081h,080h,004h,090h,002h,080h,005h,090h,082h,080h,090h,003h,080h	; aa04  ................
	defb 006h,090h,004h,080h,002h,090h,006h,080h,002h,090h,003h,080h,005h,090h,002h,080h	; aa14  ................
	defb 002h,090h,082h,080h,090h,003h,080h,082h,090h,080h,004h,090h,003h,080h,004h,090h	; aa24  ................
	defb 085h,080h,090h,090h,080h,090h,003h,080h,002h,090h,081h,080h,00ah,090h,002h,080h	; aa34  ................
	defb 081h,098h,003h,080h,002h,090h,002h,080h,08dh,090h,080h,080h,090h,080h,090h,080h	; aa44  ................
	defb 080h,090h,080h,090h,080h,080h,004h,090h,002h,080h,082h,090h,080h,004h,090h,003h	; aa54  ................
	defb 080h,004h,090h,035h,080h,002h,090h,004h,080h,081h,090h,003h,080h,002h,090h,083h	; aa64  ...5............
	defb 080h,090h,090h,009h,080h,081h,090h,007h,080h,085h,090h,080h,090h,080h,090h,00ch	; aa74  ................
	defb 080h,084h,090h,080h,080h,090h,00dh,080h,081h,090h,006h,080h,081h,090h,006h,080h	; aa84  ................
	defb 081h,090h,006h,080h,002h,090h,082h,080h,090h,003h,080h,002h,090h,003h,080h,002h	; aa94  ................
	defb 090h,082h,080h,090h,006h,080h,081h,098h,003h,080h,004h,090h,082h,080h,098h,004h	; aaa4  ................
	defb 080h,002h,090h,006h,080h,000h	; aab4

; ----------------------------------------------------------------------
; DATOS graficos_AABA: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0
;   acaba; lo leen p01:6276 (429 bytes)
;   0xaaba..0xac67  (429 bytes)
DATA_graficos_AABA:
	defb 080h,008h,005h,080h,002h,060h,002h,080h,002h,060h,088h,080h,090h,080h,060h,090h	; aaba  .....`...`....`.
	defb 060h,080h,060h,006h,090h,088h,080h,060h,090h,060h,080h,060h,090h,0a0h,005h,090h	; aaca  `.`....`.`.`....
	defb 082h,060h,080h,030h,090h,081h,080h,00ah,090h,085h,080h,090h,080h,090h,080h,005h	; aada  .`.0............
	defb 090h,082h,080h,090h,007h,080h,004h,090h,003h,080h,002h,090h,090h,080h,090h,090h	; aaea  ................
	defb 080h,080h,090h,080h,080h,090h,090h,080h,090h,080h,080h,090h,080h,005h,090h,002h	; aafa  ................
	defb 080h,002h,090h,081h,080h,004h,090h,081h,080h,003h,090h,081h,080h,004h,090h,002h	; ab0a  ................
	defb 080h,005h,090h,088h,080h,090h,090h,080h,080h,090h,080h,080h,003h,090h,083h,080h	; ab1a  ................
	defb 090h,090h,004h,080h,008h,090h,084h,080h,090h,090h,080h,003h,090h,08ah,080h,090h	; ab2a  ................
	defb 080h,090h,090h,080h,090h,080h,090h,080h,004h,090h,006h,080h,082h,090h,080h,004h	; ab3a  ................
	defb 090h,003h,080h,082h,090h,080h,004h,090h,003h,080h,007h,090h,002h,080h,081h,090h	; ab4a  ................
	defb 005h,080h,005h,090h,002h,080h,008h,090h,082h,080h,090h,004h,080h,003h,090h,004h	; ab5a  ................
	defb 080h,004h,090h,004h,080h,084h,090h,098h,080h,080h,003h,090h,002h,080h,003h,090h	; ab6a  ................
	defb 007h,080h,081h,090h,003h,080h,083h,090h,080h,098h,004h,090h,003h,080h,003h,090h	; ab7a  ................
	defb 082h,080h,090h,003h,080h,083h,090h,080h,090h,004h,080h,084h,090h,080h,090h,090h	; ab8a  ................
	defb 008h,080h,086h,090h,080h,090h,090h,080h,090h,003h,080h,007h,090h,003h,080h,007h	; ab9a  ................
	defb 090h,003h,080h,086h,090h,080h,080h,090h,080h,090h,004h,080h,004h,090h,002h,080h	; abaa  ................
	defb 005h,090h,085h,080h,098h,080h,090h,090h,004h,080h,004h,090h,004h,080h,081h,090h	; abba  ................
	defb 005h,080h,086h,090h,080h,090h,080h,080h,090h,003h,080h,002h,090h,004h,080h,084h	; abca  ................
	defb 090h,080h,090h,090h,003h,080h,081h,090h,003h,080h,004h,090h,004h,080h,003h,090h	; abda  ................
	defb 006h,080h,002h,090h,083h,080h,090h,090h,06ch,080h,081h,090h,007h,080h,081h,090h	; abea  ........l.......
	defb 007h,080h,081h,090h,007h,080h,002h,090h,006h,080h,002h,090h,007h,080h,083h,090h	; abfa  ................
	defb 080h,098h,009h,080h,081h,090h,008h,080h,084h,090h,080h,090h,090h,006h,080h,081h	; ac0a  ................
	defb 090h,003h,080h,081h,090h,003h,080h,083h,090h,080h,090h,005h,080h,081h,090h,006h	; ac1a  ................
	defb 080h,003h,090h,006h,080h,081h,090h,007h,080h,081h,090h,00dh,080h,003h,090h,00dh	; ac2a  ................
	defb 080h,005h,090h,00ch,080h,083h,090h,080h,090h,006h,080h,002h,090h,003h,080h,084h	; ac3a  ................
	defb 098h,080h,080h,090h,003h,080h,081h,090h,00ah,080h,003h,090h,009h,080h,081h,098h	; ac4a  ................
	defb 004h,090h,083h,080h,098h,090h,008h,080h,009h,090h,004h,080h,000h	; ac5a  .............

; ----------------------------------------------------------------------
; DATOS graficos_AC67: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p01:627F,
;   p01:6288 (704 bytes)
;   0xac67..0xaf27  (704 bytes)
DATA_graficos_AC67:
	defb 084h,000h,004h,002h,001h,004h,000h,094h,0fch,0f1h,001h,0c4h,0beh,0dfh,04fh,0efh	; ac67  ..............O.
	defb 03dh,03fh,01fh,09bh,00fh,08dh,0cdh,0a6h,004h,004h,002h,001h,004h,000h,08ch,009h	; ac77  =?..............
	defb 085h,046h,042h,025h,010h,011h,008h,002h,002h,001h,001h,004h,000h,09ch,0feh,0ebh	; ac87  .FB%............
	defb 033h,0a1h,087h,007h,04eh,021h,009h,0fah,0efh,0f2h,051h,0a0h,000h,008h,066h,0f8h	; ac97  3...N!....Q...f.
	defb 094h,0a0h,040h,000h,00fh,020h,078h,0f8h,0f7h,0c0h,004h,000h,083h,017h,0cfh,07ch	; aca7  ..@.. x........|
	defb 006h,000h,082h,010h,007h,007h,000h,082h,0c0h,03fh,006h,000h,082h,001h,0feh,004h	; acb7  .........?......
	defb 000h,083h,00bh,030h,0c0h,005h,000h,081h,080h,007h,000h,089h,0a0h,041h,081h,002h	; acc7  ...0.........A..
	defb 004h,018h,060h,000h,001h,007h,000h,082h,003h,001h,00ch,000h,082h,00dh,079h,007h	; acd7  ..`...........y.
	defb 000h,081h,0e0h,003h,000h,085h,0e0h,0f0h,0b0h,058h,09ch,004h,000h,084h,080h,0e0h	; ace7  .........X......
	defb 0d8h,07eh,007h,000h,081h,003h,006h,000h,082h,001h,007h,006h,000h,082h,07ch,0feh	; acf7  .~............|.
	defb 003h,001h,00ch,000h,081h,001h,006h,000h,082h,007h,01fh,005h,000h,084h,001h,003h	; ad07  ................
	defb 007h,0e0h,003h,000h,084h,01eh,078h,0f0h,006h,003h,000h,085h,001h,006h,00fh,00ch	; ad17  ......x.........
	defb 01ah,003h,000h,088h,0f1h,087h,01eh,01fh,03fh,002h,001h,001h,004h,000h,092h,084h	; ad27  ........?.......
	defb 000h,001h,007h,01ch,030h,063h,055h,0afh,056h,06dh,014h,021h,01ah,00ah,005h,005h	; ad37  ....0cU.Vm.!....
	defb 000h,003h,001h,090h,003h,078h,0ffh,0c4h,0feh,0d4h,0f8h,0a2h,05ch,0f2h,048h,020h	; ad47  .....x......\.H
	defb 002h,001h,0a1h,080h,003h,000h,081h,004h,005h,000h,09bh,038h,0ech,0beh,02ch,08bh	; ad57  ...........8..,.
	defb 0d8h,001h,006h,03bh,0cch,021h,087h,047h,0a3h,053h,001h,000h,000h,0a0h,0d6h,0e7h	; ad67  .....!.G.S......
	defb 0e5h,0d3h,0fah,0aah,055h,005h,003h,000h,0b5h,001h,003h,07ch,0e3h,0f0h,0feh,0a4h	; ad77  ....U......|....
	defb 0fch,0f8h,0d2h,00eh,0f4h,0f8h,07fh,0e7h,0dfh,09fh,07fh,026h,019h,007h,08ch,0e7h	; ad87  ...........&....
	defb 001h,0ffh,0fbh,0b5h,043h,02fh,056h,00dh,014h,021h,01ah,00ah,085h,025h,03ch,09ch	; ad97  ....C/V..!...%<.
	defb 076h,00eh,0feh,07eh,0feh,0fdh,0c0h,070h,00fh,067h,0f9h,07fh,03fh,07bh,003h,000h	; ada7  v..~...p.g..?{..
	defb 0ffh,0c0h,0f0h,0fch,0f6h,007h,036h,01fh,015h,00ah,0c0h,021h,01eh,001h,03fh,07dh	; adb7  ......6....!..?}
	defb 03ch,01ch,01eh,09eh,04fh,0e9h,0fdh,0deh,0feh,0efh,07fh,077h,039h,01eh,018h,005h	; adc7  <...O......w9...
	defb 020h,014h,010h,008h,006h,004h,00bh,057h,00ah,000h,0c0h,020h,018h,005h,00bh,02eh	; add7   ......W... ....
	defb 08dh,0dfh,01fh,01fh,00fh,037h,08bh,044h,082h,050h,082h,042h,004h,0f8h,000h,0fch	; ade7  .....7.D.P.B....
	defb 0abh,0ffh,0feh,0f8h,060h,003h,060h,000h,002h,004h,018h,0e0h,004h,004h,0feh,0e7h	; adf7  ....`.`.........
	defb 05fh,0c0h,0f4h,0e0h,090h,000h,080h,002h,002h,080h,080h,096h,053h,021h,001h,007h	; ae07  _...........S!..
	defb 01eh,03fh,07fh,080h,0ffh,08eh,0fch,0e3h,09fh,0ffh,0ffh,0fdh,0b9h,0e3h,003h,0e0h	; ae17  .?..............
	defb 014h,05ch,0bah,0ffh,0feh,0fdh,01fh,0dfh,0c0h,080h,07fh,0ffh,0c0h,0b1h,03fh,07ah	; ae27  .\............?z
	defb 0ffh,0ffh,0e0h,081h,0e8h,0fch,0ffh,0fah,0f0h,0e0h,0c3h,00fh,03dh,0f3h,0ceh,014h	; ae37  ............=...
	defb 01ch,09ah,0dch,0aah,0c8h,090h,041h,040h,030h,05ch,03fh,07fh,0ffh,0cdh,03fh,03fh	; ae47  ......A@0\?...??
	defb 05fh,01fh,02fh,000h,001h,002h,00bh,0e0h,0ech,076h,000h,028h,000h,037h,0f6h,00fh	; ae57  _./......v.(.7..
	defb 01bh,0bfh,0d6h,020h,053h,0b3h,0e4h,0c3h,08fh,03fh,080h,0ffh,0feh,0cah,0f1h,0c0h	; ae67  ... S....?......
	defb 0b8h,07fh,037h,007h,09fh,0bch,072h,070h,0a3h,024h,0b9h,09fh,08eh,086h,0c0h,0d0h	; ae77  ..7...rp.$......
	defb 0c9h,0ech,066h,006h,0b7h,086h,0e3h,0f1h,038h,004h,083h,0fch,00ch,0c2h,0f8h,039h	; ae87  ..f.....8......9
	defb 098h,08ch,0c6h,06fh,0e8h,031h,091h,081h,040h,0c0h,0e8h,068h,024h,018h,069h,014h	; ae97  ...o.1..@..h$.i.
	defb 01fh,01eh,05fh,04fh,089h,086h,0e6h,0d2h,078h,060h,029h,00ch,004h,000h,000h,02eh	; aea7  .._O....x`).....
	defb 09fh,014h,018h,019h,010h,080h,005h,017h,013h,00bh,038h,03ch,0e0h,07fh,01eh,000h	; aeb7  ..........8<....
	defb 074h,0a9h,0f0h,002h,088h,004h,006h,022h,000h,080h,080h,07eh,05fh,0cfh,0cfh,097h	; aec7  t......"...~_...
	defb 004h,000h,091h,0c7h,0f1h,0e8h,0f0h,028h,0a6h,036h,092h,0a0h,0b6h,053h,021h,000h	; aed7  .......(.6...S!.
	defb 000h,001h,002h,003h,003h,007h,088h,000h,001h,0f1h,01ch,08dh,041h,0e2h,0fah,003h	; aee7  ............A...
	defb 000h,002h,080h,0abh,0c3h,0efh,0efh,000h,000h,003h,00fh,03fh,0e0h,0f7h,0f8h,01eh	; aef7  ...........?....
	defb 03dh,0e0h,080h,002h,07fh,08dh,020h,018h,0f6h,02fh,005h,0feh,037h,0c1h,0a8h,0e4h	; af07  =..... ../..7...
	defb 0c0h,0c2h,080h,040h,0c0h,0c0h,080h,003h,007h,00ch,027h,078h,060h,001h,002h,000h	; af17  ...@......'x`...

; ----------------------------------------------------------------------
; DATOS graficos_AF27: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p01:6291 (350
;   bytes)
;   0xaf27..0xb085  (350 bytes)
DATA_graficos_AF27:
	defb 075h,040h,081h,000h,028h,040h,058h,050h,081h,040h,008h,050h,081h,040h,006h,050h	; af27  u@..(@XP.@.P.@.P
	defb 006h,040h,00ah,050h,081h,040h,003h,050h,084h,040h,050h,050h,040h,009h,050h,004h	; af37  .@.P.@.P.@PP@.P.
	defb 040h,004h,050h,083h,040h,050h,050h,006h,040h,007h,050h,002h,040h,082h,054h,040h	; af47  @.P.@PP.@.P.@.T@
	defb 004h,050h,002h,040h,006h,050h,003h,040h,082h,050h,040h,003h,050h,081h,040h,006h	; af57  .P.@.P.@.P@.P.@.
	defb 050h,081h,054h,006h,040h,003h,050h,005h,040h,004h,050h,002h,054h,00bh,040h,085h	; af67  P.T.@.P.@.P.T.@.
	defb 050h,040h,050h,040h,050h,005h,040h,002h,050h,082h,054h,050h,004h,040h,006h,050h	; af77  P@P@P.@.P.TP.@.P
	defb 085h,040h,054h,050h,040h,050h,008h,040h,082h,050h,040h,003h,050h,006h,040h,002h	; af87  .@TP@P.@.P@.P.@.
	defb 050h,006h,040h,085h,050h,040h,040h,050h,050h,00ch,040h,003h,050h,007h,040h,082h	; af97  P.@.P@@PP.@.P.@.
	defb 050h,054h,004h,040h,081h,050h,006h,040h,086h,050h,040h,054h,050h,040h,054h,009h	; afa7  PT.@.P.@.P@TP@T.
	defb 040h,083h,050h,040h,040h,003h,050h,002h,040h,082h,054h,040h,003h,050h,006h,040h	; afb7  @.P@@.P.@.T@.P.@
	defb 003h,050h,007h,040h,002h,054h,002h,040h,087h,054h,050h,040h,050h,040h,054h,054h	; afc7  .P.@.T.@.TP@P@TT
	defb 006h,040h,081h,050h,00ah,040h,081h,050h,003h,040h,002h,050h,007h,040h,081h,050h	; afd7  .@.P.@.P.@.P.@.P
	defb 007h,040h,083h,050h,040h,040h,006h,050h,081h,054h,003h,040h,002h,050h,082h,040h	; afe7  .@.P@@.P.T.@.P.@
	defb 054h,004h,040h,002h,050h,002h,040h,003h,050h,002h,040h,002h,050h,003h,040h,08ah	; aff7  T.@.P.@.P.@.P.@.
	defb 050h,040h,040h,050h,040h,040h,054h,040h,054h,054h,003h,050h,002h,040h,081h,050h	; b007  P@@P@@T@TT.P.@.P
	defb 003h,040h,002h,050h,003h,040h,006h,050h,003h,040h,002h,050h,003h,040h,002h,050h	; b017  .@.P.@.P.@.P.@.P
	defb 003h,040h,003h,050h,004h,040h,002h,050h,003h,040h,088h,050h,040h,040h,050h,050h	; b027  .@.P.@.P.@.P@@PP
	defb 040h,040h,054h,003h,050h,083h,040h,050h,050h,005h,040h,005h,050h,003h,040h,006h	; b037  @@T.P.@PP.@.P.@.
	defb 050h,002h,040h,002h,050h,002h,040h,002h,050h,002h,040h,006h,050h,002h,040h,003h	; b047  P.@.P.@.P.@.P.@.
	defb 050h,081h,040h,003h,050h,006h,040h,002h,050h,081h,040h,004h,050h,086h,040h,054h	; b057  P.@.P.@.P.@.P.@T
	defb 040h,040h,050h,050h,003h,054h,081h,040h,004h,050h,002h,054h,081h,040h,003h,050h	; b067  @@PP.T.@.P.T.@.P
	defb 002h,040h,002h,050h,004h,040h,003h,050h,003h,040h,082h,0b0h,0c0h,000h	; b077  .@.P.@.P.@....

; ----------------------------------------------------------------------
; DATOS graficos_B085: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p01:62A3,
;   p01:62AC (471 bytes)
;   0xb085..0xb25c  (471 bytes)
DATA_graficos_B085:
	defb 00ah,0ffh,083h,0edh,0feh,0fbh,004h,0ffh,08dh,0f7h,018h,0a5h,0c1h,0a6h,073h,0edh	; b085  ..............s.
	defb 0ffh,0ffh,0dfh,07fh,0dfh,07fh,004h,0ffh,085h,0dch,0ffh,0f9h,0f6h,0fch,003h,0ffh	; b095  ................
	defb 084h,097h,07fh,09fh,00fh,003h,0ffh,08fh,0b9h,0f4h,0dfh,0e9h,0f6h,0cch,0ffh,0c7h	; b0a5  ................
	defb 0bfh,097h,07bh,095h,00fh,0e3h,07fh,007h,0ffh,089h,0f7h,0ffh,0f7h,0f7h,01ch,01ch	; b0b5  ..{.............
	defb 03eh,080h,06dh,003h,0ffh,003h,0f7h,08ah,01ch,0e3h,0e3h,022h,03eh,05dh,063h,03eh	; b0c5  >.m........">]c>
	defb 080h,06dh,003h,0f7h,003h,0e3h,08ah,03eh,0ddh,0c1h,03eh,05dh,063h,07fh,03eh,080h	; b0d5  .m.....>..>]c.>.
	defb 06dh,003h,000h,085h,074h,0cbh,00dh,0f0h,03fh,003h,000h,0bah,016h,039h,0c3h,0dfh	; b0e5  m...t...?....9..
	defb 0ffh,000h,000h,003h,005h,0fch,0d9h,07fh,0ffh,01eh,061h,0f1h,047h,00dh,0ffh,0fdh	; b0f5  ..........a.G...
	defb 07fh,03fh,0eeh,0c8h,033h,0e7h,0bbh,0ffh,0ffh,0f3h,086h,00ch,06ah,0efh,0dfh,0ffh	; b105  .?..3.......j...
	defb 0ffh,0f8h,050h,03dh,0fch,0ffh,0f7h,0ffh,0ffh,041h,09ch,07fh,0ffh,0feh,00ch,0ffh	; b115  ..P=.....A......
	defb 0ffh,0fbh,0c1h,0e7h,09dh,0feh,003h,0ffh,09dh,09dh,09fh,039h,0e3h,0ffh,0feh,0fch	; b125  ...........9....
	defb 0efh,03ch,0e0h,0e7h,057h,0afh,0bfh,00eh,0ffh,0fbh,0a2h,0efh,0feh,073h,0efh,0ffh	; b135  .<..W........s..
	defb 0ffh,08eh,033h,047h,0edh,0d7h,003h,0ffh,004h,000h,0ffh,001h,00fh,05eh,0c0h,003h	; b145  ..3G.........^..
	defb 007h,03dh,022h,0ech,09ah,01fh,03ch,0e3h,035h,0bfh,05fh,0fdh,0e5h,099h,053h,0bdh	; b155  .="...<.5._...S.
	defb 0fdh,0b1h,063h,037h,0c0h,0fbh,076h,0c6h,09ch,03ah,0f1h,0f9h,0c7h,0cbh,04eh,01ch	; b165  ..c7..v..:....N.
	defb 070h,0cah,09fh,01eh,0dch,03dh,07ah,0c2h,0c0h,085h,01ah,00ch,0b0h,0fch,0a7h,0e3h	; b175  p....=z.........
	defb 0bbh,0b2h,0d4h,0a3h,08bh,0cfh,017h,000h,000h,001h,003h,01fh,01eh,030h,020h,00eh	; b185  .............0 .
	defb 073h,0d7h,06fh,017h,0c1h,077h,0deh,079h,0f3h,053h,0ddh,0b9h,0f3h,0f3h,0e3h,0fch	; b195  s.o..w.y.S......
	defb 0cdh,0dfh,0deh,08eh,09eh,00dh,01fh,0eah,05eh,039h,032h,01eh,0f2h,0f8h,0c9h,01bh	; b1a5  ........^92.....
	defb 0b7h,03fh,03dh,079h,03bh,037h,075h,001h,003h,019h,015h,07bh,06bh,0c7h,0afh,015h	; b1b5  .?=y.7u....{k...
	defb 014h,012h,0a0h,0cdh,062h,0ceh,0deh,08fh,0c7h,000h,09ah,026h,00dh,06bh,0f3h,0f7h	; b1c5  ....b......&.k..
	defb 0a3h,001h,018h,07ch,0e5h,0c7h,0cdh,0d9h,0fah,0f9h,035h,0c9h,043h,047h,007h,08fh	; b1d5  ...|......5.CG..
	defb 081h,006h,058h,080h,080h,003h,000h,08dh,008h,040h,0c0h,0e0h,0e3h,044h,0c0h,080h	; b1e5  ..X......@...D..
	defb 000h,001h,00eh,070h,080h,003h,000h,082h,030h,0c0h,009h,000h,003h,001h,002h,000h	; b1f5  ...p....0.......
	defb 0a4h,0c7h,000h,000h,087h,00fh,01fh,037h,01eh,080h,040h,010h,000h,005h,00bh,01ch	; b205  .......7..@.....
	defb 01fh,0beh,0f8h,060h,0c1h,006h,017h,03ah,0a4h,00dh,036h,0fch,0d8h,0a8h,041h,082h	; b215  ...`...:..6...A.
	defb 00ch,03eh,03eh,039h,01ch,004h,000h,08bh,00eh,01fh,0beh,058h,043h,0c4h,0c1h,086h	; b225  .>>9.......XC...
	defb 02fh,09ch,0d0h,005h,000h,002h,001h,09eh,0e1h,058h,0fch,0feh,0fch,03dh,01ch,00fh	; b235  /........X...=..
	defb 016h,000h,011h,008h,00ah,00dh,030h,084h,044h,0eeh,0efh,0c7h,050h,04ch,01eh,0fch	; b245  ......0.D...PL..
	defb 038h,006h,0beh,03eh,01ch,081h,000h	; b255

; ----------------------------------------------------------------------
; DATOS graficos_B25C: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p01:62B5 (278
;   bytes)
;   0xb25c..0xb372  (278 bytes)
DATA_graficos_B25C:
	defb 049h,080h,085h,083h,082h,030h,0c0h,0c0h,005h,080h,09dh,083h,082h,082h,0c8h,083h	; b25c  I....0..........
	defb 082h,030h,020h,030h,0c0h,0c0h,080h,080h,082h,083h,082h,083h,082h,083h,0c8h,083h	; b26c  .0 0............
	defb 082h,030h,020h,030h,0c0h,0c0h,080h,080h,004h,090h,004h,080h,004h,090h,082h,080h	; b27c  .0 0............
	defb 090h,005h,080h,081h,090h,005h,080h,084h,090h,080h,090h,090h,003h,080h,084h,090h	; b28c  ................
	defb 080h,080h,090h,005h,080h,002h,090h,006h,080h,081h,090h,006h,080h,002h,090h,003h	; b29c  ................
	defb 080h,081h,098h,005h,080h,081h,090h,006h,080h,081h,090h,005h,080h,082h,090h,098h	; b2ac  ................
	defb 004h,080h,081h,098h,005h,080h,081h,090h,003h,080h,004h,090h,004h,080h,005h,090h	; b2bc  ................
	defb 081h,080h,003h,090h,088h,080h,090h,090h,080h,090h,080h,080h,090h,005h,080h,081h	; b2cc  ................
	defb 090h,003h,080h,003h,090h,081h,098h,003h,080h,003h,090h,004h,080h,003h,090h,003h	; b2dc  ................
	defb 080h,002h,090h,003h,080h,003h,090h,084h,098h,080h,090h,080h,003h,090h,003h,080h	; b2ec  ................
	defb 005h,090h,081h,080h,004h,090h,08bh,080h,090h,080h,080h,090h,080h,080h,090h,090h	; b2fc  ................
	defb 080h,090h,003h,080h,002h,090h,004h,080h,002h,090h,002h,080h,081h,090h,005h,080h	; b30c  ................
	defb 081h,090h,005h,080h,007h,090h,083h,080h,090h,090h,003h,040h,004h,090h,081h,080h	; b31c  ...........@....
	defb 003h,040h,003h,090h,084h,080h,090h,050h,050h,005h,090h,081h,080h,01dh,040h,003h	; b32c  .@.....PP.....@.
	defb 000h,008h,040h,00bh,050h,009h,040h,083h,050h,040h,050h,008h,040h,081h,050h,004h	; b33c  ..@.P.@.P@P.@.P.
	defb 040h,081h,050h,006h,040h,006h,050h,008h,040h,00bh,050h,004h,040h,085h,050h,040h	; b34c  @.P.@.P.@.P.@.P@
	defb 040h,050h,040h,003h,050h,081h,040h,003h,050h,003h,040h,002h,050h,002h,040h,002h	; b35c  @P@.P.@.P.@.P.@.
	defb 050h,002h,040h,081h,050h,000h	; b36c

; ----------------------------------------------------------------------
; DATOS graficos_B372: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p01:62C7,
;   p01:62D0 (578 bytes)
;   0xb372..0xb5b4  (578 bytes)
DATA_graficos_B372:
	defb 0c0h,000h,03fh,040h,04fh,050h,055h,052h,055h,000h,0fch,002h,0f2h,00ah,0aah,04ah	; b372  ..?@OPURU......J
	defb 0aah,055h,052h,055h,050h,04fh,040h,03fh,000h,0aah,04ah,0aah,00ah,0f2h,002h,0fch	; b382  .URUPO@?..J.....
	defb 000h,000h,03fh,040h,04fh,050h,055h,052h,055h,000h,0fch,002h,0f2h,00ah,0aah,04ah	; b392  ..?@OPURU......J
	defb 0aah,055h,052h,055h,050h,04fh,040h,03fh,000h,0aah,04ah,0aah,00ah,0f2h,002h,0fch	; b3a2  .URUPO@?..J.....
	defb 000h,008h,0ffh,089h,0fdh,0fch,0fah,0f8h,0fdh,0fdh,0f9h,0feh,0c0h,003h,080h,002h	; b3b2  ................
	defb 000h,002h,080h,0f0h,0f2h,0e4h,0edh,0cdh,0cdh,0cah,0cah,0e8h,0ffh,0feh,0ffh,0fdh	; b3c2  ................
	defb 0ffh,0feh,0fah,0fah,0ffh,07dh,0c7h,03ah,061h,00ah,000h,000h,0d5h,0cdh,0e8h,0dah	; b3d2  .....}.:a.......
	defb 0d2h,0f2h,0d2h,0dah,0fah,0f6h,0fch,0f4h,0edh,0e9h,0d9h,0d1h,050h,040h,0a8h,080h	; b3e2  ............P@..
	defb 0a0h,000h,0a0h,040h,0d8h,0fbh,0a4h,0c0h,084h,0a0h,048h,010h,020h,0fch,0e5h,0deh	; b3f2  ...@......H. ...
	defb 0f5h,0bah,0b1h,026h,002h,0c0h,0fdh,0dfh,0fch,003h,064h,0c0h,0c3h,00bh,040h,000h	; b402  ...&......d...@.
	defb 0feh,0cch,0b2h,066h,008h,003h,006h,04ch,0c8h,080h,0feh,0fdh,01ch,078h,0c0h,0fch	; b412  ...f...L.....x..
	defb 0f4h,0fdh,0fbh,0f2h,010h,0f9h,0c3h,000h,000h,060h,0ech,0f9h,00fh,070h,0c0h,003h	; b422  .........`...p..
	defb 03eh,0f8h,001h,0c1h,004h,000h,0c3h,001h,004h,000h,008h,010h,001h,010h,021h,002h	; b432  >.............!.
	defb 023h,004h,004h,000h,000h,009h,001h,000h,001h,022h,020h,002h,041h,001h,001h,002h	; b442  #........" .A...
	defb 021h,021h,001h,000h,004h,000h,040h,003h,00eh,00ch,008h,048h,018h,010h,000h,007h	; b452  !!....@....H....
	defb 006h,00ch,01ch,098h,018h,038h,020h,021h,001h,011h,023h,0c1h,081h,088h,005h,00ch	; b462  .....8 !..#.....
	defb 009h,038h,034h,014h,030h,01ah,008h,008h,004h,004h,003h,000h,0b6h,008h,060h,081h	; b472  .84.0.........`.
	defb 006h,01ch,018h,080h,004h,001h,003h,04eh,090h,000h,003h,030h,030h,021h,0a3h,007h	; b482  .......N...00!..
	defb 042h,006h,002h,0ffh,004h,050h,060h,0c0h,0c0h,080h,000h,024h,001h,0fch,09fh,001h	; b492  B....P`....$....
	defb 0ech,080h,01dh,030h,000h,067h,08ah,00ch,010h,020h,00ch,004h,020h,0ffh,003h,007h	; b4a2  ...0.g... .. ...
	defb 00fh,008h,090h,003h,000h,09ch,009h,004h,018h,021h,023h,000h,03ch,0c0h,000h,030h	; b4b2  .........!#.<..0
	defb 0e0h,082h,010h,000h,020h,001h,01fh,060h,006h,03dh,0f8h,04ah,010h,032h,032h,024h	; b4c2  .... ..`.=.J.22$
	defb 0a0h,080h,003h,000h,0e1h,002h,008h,040h,00eh,078h,0e0h,001h,046h,01bh,02ch,050h	; b4d2  .......@.x..F.,P
	defb 030h,042h,08ch,006h,010h,031h,026h,006h,008h,010h,088h,050h,0f8h,0e4h,0d8h,020h	; b4e2  0B...1&....P...
	defb 000h,003h,004h,080h,0f7h,0feh,0b8h,000h,000h,003h,00ch,030h,00ch,073h,000h,000h	; b4f2  ...........0.s..
	defb 098h,0eeh,07bh,0e0h,0e7h,010h,0c0h,000h,000h,040h,020h,018h,060h,080h,000h,001h	; b502  ..{......@ .`...
	defb 000h,01eh,01eh,0c8h,0c4h,008h,010h,080h,003h,006h,005h,068h,040h,080h,001h,003h	; b512  ...........h@...
	defb 003h,002h,003h,0a6h,0ach,043h,0e0h,009h,060h,078h,06ch,0ffh,0b9h,060h,0c0h,005h	; b522  .....C..`xl..`..
	defb 08ch,001h,018h,002h,001h,001h,005h,000h,0f8h,032h,014h,00ch,003h,000h,010h,028h	; b532  .........2.....(
	defb 030h,0eah,0cdh,0bah,050h,080h,013h,066h,025h,000h,000h,0f0h,0fah,0bfh,05bh,0adh	; b542  0...P..f%.....[.
	defb 053h,059h,0b8h,02ch,0f6h,05fh,08ah,05eh,0a5h,001h,003h,002h,003h,006h,005h,000h	; b552  SY.,._.^........
	defb 000h,007h,01ch,033h,06dh,06ah,075h,062h,035h,000h,0c0h,0f0h,0fah,0bfh,05bh,0adh	; b562  ...3mjub5.....[.
	defb 053h,000h,00fh,073h,0d5h,0eah,040h,003h,08ch,03fh,030h,040h,00ah,0b7h,075h,0bfh	; b572  S..s..@..?0@..u.
	defb 0c0h,000h,003h,00ch,01fh,00bh,000h,000h,030h,000h,043h,08ch,01fh,00bh,080h,060h	; b582  ........0.C....`
	defb 0f0h,000h,0f0h,09ch,0f2h,019h,005h,040h,020h,0d0h,07ah,00dh,080h,040h,098h,0eeh	; b592  .......@ .z..@..
	defb 07bh,007h,041h,0e0h,0a8h,07eh,075h,00eh,002h,061h,038h,054h,02ah,004h,08ah,080h	; b5a2  {.A..~u..a8T*...
	defb 020h,000h	; b5b2

; ----------------------------------------------------------------------
; DATOS graficos_B5B4: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p01:62D9 (232
;   bytes)
;   0xb5b4..0xb69c  (232 bytes)
DATA_graficos_B5B4:
	defb 002h,0f0h,085h,0e0h,0f0h,0e0h,0f0h,0e0h,009h,0f0h,009h,0e0h,08eh,0f0h,0e0h,0f0h	; b5b4  ................
	defb 0e0h,0f0h,0e0h,0e0h,050h,050h,040h,050h,040h,050h,040h,009h,050h,084h,040h,050h	; b5c4  ....PP@P@P@.P.@P
	defb 040h,050h,005h,040h,083h,050h,040h,050h,004h,040h,050h,060h,081h,096h,007h,060h	; b5d4  @P.@.P@P.@P`...`
	defb 002h,096h,006h,060h,004h,096h,004h,060h,006h,096h,002h,060h,003h,096h,005h,060h	; b5e4  ...`...`...`...`
	defb 006h,096h,002h,060h,007h,096h,081h,060h,060h,096h,081h,066h,019h,096h,081h,066h	; b5f4  ...`...``..f...f
	defb 03eh,096h,004h,060h,003h,0c0h,081h,096h,004h,060h,083h,020h,030h,020h,005h,060h	; b604  >..`.....`. 0 .`
	defb 084h,020h,0c0h,0c0h,096h,005h,060h,082h,030h,020h,004h,060h,084h,0c0h,030h,030h	; b614  . ....`.0 .`..00
	defb 0c2h,005h,060h,003h,0c0h,003h,060h,081h,020h,009h,0c0h,002h,040h,081h,050h,004h	; b624  ..`...`. ...@.P.
	defb 060h,084h,0b0h,090h,090h,0f0h,018h,0c0h,004h,020h,08eh,0c0h,020h,0c0h,0c0h,020h	; b634  `........ .. ..
	defb 0c0h,0c0h,020h,0c0h,020h,0c0h,0c0h,030h,020h,006h,0c0h,002h,030h,002h,020h,004h	; b644  .. . ..0 ...0. .
	defb 0c0h,002h,030h,002h,020h,084h,0c0h,020h,0c0h,0c0h,003h,020h,003h,0c0h,082h,030h	; b654  ..0. .. ... ...0
	defb 020h,003h,0c0h,082h,030h,020h,003h,0c0h,002h,030h,083h,020h,0c0h,0c0h,003h,020h	; b664   ...0 ...0. ...
	defb 002h,030h,083h,020h,0c0h,0c0h,004h,020h,082h,030h,020h,003h,0c0h,088h,030h,020h	; b674  .0. ... .0 ...0
	defb 020h,0c0h,0c0h,030h,020h,020h,003h,0c0h,083h,030h,020h,020h,004h,0c0h,088h,030h	; b684   ..0  ...0  ...0
	defb 020h,020h,0c0h,0c0h,020h,020h,0c0h,000h	; b694    ..  ..

; ----------------------------------------------------------------------
; DATOS graficos_B69C: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p01:62EB,
;   p01:62F4 (524 bytes)
;   0xb69c..0xb8a8  (524 bytes)
DATA_graficos_B69C:
	defb 0c0h,000h,03fh,040h,04fh,050h,055h,052h,055h,000h,0fch,002h,0f2h,00ah,0aah,04ah	; b69c  ..?@OPURU......J
	defb 0aah,055h,052h,055h,050h,04fh,040h,03fh,000h,0aah,04ah,0aah,00ah,0f2h,002h,0fch	; b6ac  .URUPO@?..J.....
	defb 000h,000h,03fh,040h,04fh,050h,055h,052h,055h,000h,0fch,002h,0f2h,00ah,0aah,04ah	; b6bc  ..?@OPURU......J
	defb 0aah,055h,052h,055h,050h,04fh,040h,03fh,000h,0aah,04ah,0aah,00ah,0f2h,002h,0fch	; b6cc  .URUPO@?..J.....
	defb 000h,008h,0ffh,002h,0edh,002h,0f4h,0c4h,0e9h,0e8h,0feh,0f3h,090h,0c0h,0d8h,066h	; b6dc  ...............f
	defb 0f1h,05eh,0bfh,0ebh,0dbh,0f9h,0e9h,0f4h,0d4h,0f4h,0f2h,0dah,0fah,0d8h,0fch,0ech	; b6ec  .^..............
	defb 0e5h,0f4h,0feh,0fah,000h,040h,080h,000h,040h,000h,000h,080h,000h,020h,000h,040h	; b6fc  .....@..@.... .@
	defb 040h,080h,0a0h,080h,020h,080h,052h,008h,0a9h,084h,0e4h,0f0h,080h,030h,084h,099h	; b70c  @... .R......0..
	defb 0cah,0c7h,0f0h,0beh,020h,082h,028h,0c1h,0fch,0bfh,0ffh,0ffh,004h,000h,0ffh,004h	; b71c  .... .(.........
	defb 040h,015h,048h,0fah,0fah,0fch,0fch,0feh,040h,0feh,050h,08ah,0e1h,0feh,068h,080h	; b72c  @.H.....@.P...h.
	defb 006h,043h,000h,028h,080h,0f9h,000h,0ceh,000h,020h,090h,019h,090h,046h,085h,0c2h	; b73c  .C.(..... ...F..
	defb 0a8h,0f6h,0ffh,0ffh,0c0h,013h,0fch,030h,00ch,083h,078h,01eh,07ah,060h,0c1h,0cah	; b74c  .......0..x.z`..
	defb 0c3h,0d6h,07fh,072h,0dch,0ffh,0d1h,07ch,007h,080h,008h,0d0h,007h,0ffh,0e1h,003h	; b75c  ...r...|........
	defb 008h,070h,002h,027h,09ch,0f2h,0c0h,0f1h,01eh,040h,03ch,0f6h,0ffh,0feh,040h,010h	; b76c  .p.'.....@<...@.
	defb 081h,0c0h,078h,0ffh,0fbh,0ffh,020h,030h,09ch,002h,001h,020h,000h,020h,000h,008h	; b77c  ..x... 0... . ..
	defb 010h,008h,000h,080h,008h,000h,010h,000h,008h,028h,004h,004h,006h,082h,001h,000h	; b78c  .........(......
	defb 040h,021h,001h,004h,02ch,008h,088h,000h,005h,000h,002h,082h,043h,041h,002h,060h	; b79c  @!..,.......CA.`
	defb 09ah,034h,010h,010h,090h,000h,090h,0c4h,0c0h,0e0h,040h,048h,028h,030h,020h,010h	; b7ac  .4........@H(0 .
	defb 010h,004h,004h,002h,040h,020h,032h,002h,083h,021h,001h,005h,000h,0c3h,004h,006h	; b7bc  ....@ 2..!......
	defb 002h,000h,080h,000h,010h,010h,00ch,00eh,083h,0c1h,01ch,006h,006h,042h,003h,000h	; b7cc  .............B..
	defb 088h,066h,0feh,088h,000h,040h,04ch,030h,018h,00dh,080h,018h,08eh,0c0h,078h,01eh	; b7dc  .f...@L0......x.
	defb 043h,000h,040h,000h,010h,090h,000h,000h,028h,020h,010h,010h,00ch,006h,007h,010h	; b7ec  C.@.....( ......
	defb 000h,002h,0a0h,012h,041h,030h,00ah,0e1h,038h,000h,032h,030h,018h,04bh,001h,000h	; b7fc  ....A0..8.20.K..
	defb 008h,003h,000h,0ffh,00fh,079h,0d6h,032h,010h,090h,080h,000h,024h,024h,07ah,0dfh	; b80c  .....y.2....$$z.
	defb 07fh,0cfh,090h,040h,091h,000h,048h,003h,003h,007h,026h,037h,01fh,006h,080h,000h	; b81c  ...@..H...&7....
	defb 092h,048h,006h,005h,002h,003h,003h,001h,080h,010h,01eh,0ffh,049h,0d3h,0d7h,078h	; b82c  .H..........I..x
	defb 001h,000h,01eh,00dh,00fh,007h,001h,008h,0c0h,005h,095h,025h,00dh,000h,000h,020h	; b83c  ...........%...
	defb 094h,0c0h,019h,038h,02ch,016h,00fh,002h,0c0h,050h,002h,001h,004h,002h,000h,003h	; b84c  ...8,....P......
	defb 002h,040h,090h,040h,011h,000h,008h,000h,001h,00ch,00fh,032h,005h,049h,012h,00ch	; b85c  .@.@.......2.I..
	defb 003h,040h,095h,025h,06dh,0b6h,000h,042h,014h,000h,000h,027h,078h,0e0h,001h,01ah	; b86c  .@.%m..B...'x...
	defb 075h,01eh,06ch,031h,064h,02eh,078h,073h,016h,03ch,061h,038h,054h,02ah,004h,08ah	; b87c  u.l1d.xs.<a8T*..
	defb 080h,000h,000h,097h,052h,0a0h,0c4h,0a4h,0cch,054h,01ah,0c1h,0d4h,0b2h,046h,06ch	; b88c  ....R....T....Fl
	defb 00ah,012h,0e4h,009h,00bh,007h,001h,008h,008h,00ch,005h,000h	; b89c  ............

; ----------------------------------------------------------------------
; DATOS graficos_B8A8: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p01:62FD (223
;   bytes)
;   0xb8a8..0xb987  (223 bytes)
DATA_graficos_B8A8:
	defb 002h,0f0h,085h,0e0h,0f0h,0e0h,0f0h,0e0h,009h,0f0h,009h,0e0h,08eh,0f0h,0e0h,0f0h	; b8a8  ................
	defb 0e0h,0f0h,0e0h,0e0h,050h,050h,040h,050h,040h,050h,040h,009h,050h,084h,040h,050h	; b8b8  ....PP@P@P@.P.@P
	defb 040h,050h,005h,040h,083h,050h,040h,050h,004h,040h,05dh,060h,083h,096h,060h,096h	; b8c8  @P.@.P@P.@]`..`.
	defb 003h,060h,005h,096h,003h,060h,082h,096h,060h,003h,096h,084h,090h,060h,060h,090h	; b8d8  .`...`..`....``.
	defb 004h,060h,081h,000h,003h,060h,004h,096h,087h,080h,090h,080h,080h,090h,080h,090h	; b8e8  .`...`..........
	defb 004h,060h,005h,096h,003h,060h,005h,096h,003h,060h,005h,096h,003h,060h,005h,096h	; b8f8  .`...`...`...`..
	defb 003h,060h,05dh,096h,081h,060h,02fh,096h,004h,090h,083h,080h,0a0h,0b0h,004h,0f0h	; b908  .`]..`/.........
	defb 085h,0b0h,0a0h,090h,080h,060h,004h,020h,088h,0c0h,090h,080h,090h,050h,050h,070h	; b918  .....`. .....PPp
	defb 0f0h,007h,0c0h,002h,020h,081h,030h,003h,060h,085h,000h,0c0h,0c0h,020h,030h,004h	; b928  .... .0.`.... 0.
	defb 0c0h,083h,020h,030h,030h,003h,060h,002h,0c0h,081h,020h,005h,060h,088h,020h,0c0h	; b938  .. 00.`... .`. .
	defb 0c0h,020h,0c0h,020h,060h,060h,007h,0c0h,081h,060h,004h,020h,081h,0c0h,003h,060h	; b948  . . ``...`. ...`
	defb 005h,0c0h,002h,020h,003h,0c0h,002h,020h,007h,0c0h,085h,020h,0c0h,0c0h,020h,020h	; b958  ... ... ... ..
	defb 007h,0c0h,086h,020h,030h,020h,020h,0c0h,0c0h,004h,020h,004h,0c0h,083h,020h,030h	; b968  ... 0  ... ... 0
	defb 0c0h,003h,020h,003h,0c0h,086h,020h,030h,0c0h,020h,030h,030h,004h,0c0h,000h	; b978  .. ... 0. 00...

; ----------------------------------------------------------------------
; DATOS graficos_B987: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0
;   acaba; lo leen p00:49EA (573 bytes)
;   0xb987..0xbbc4  (573 bytes)
DATA_graficos_B987:
	defb 060h,01bh,010h,000h,081h,07eh,00eh,000h,082h,01eh,07eh,00eh,000h,081h,078h,012h	; b987  `....~....~...x.
	defb 000h,086h,001h,002h,046h,047h,023h,001h,00ah,000h,086h,080h,040h,062h,0e2h,0c4h	; b997  ....FG#.....@b..
	defb 080h,009h,000h,082h,060h,030h,016h,000h,086h,001h,002h,086h,047h,003h,001h,00ah	; b9a7  ....`0......G...
	defb 000h,08ah,080h,040h,061h,0e2h,0c0h,080h,000h,000h,006h,00ch,00dh,000h,081h,038h	; b9b7  ...@a..........8
	defb 003h,018h,004h,00ch,088h,01ch,018h,018h,010h,030h,060h,0c0h,080h,016h,000h,084h	; b9c7  .........0`.....
	defb 004h,00ah,009h,008h,003h,010h,08ch,020h,040h,080h,001h,007h,004h,00ch,038h,060h	; b9d7  ....... @.....8`
	defb 060h,0e0h,038h,003h,008h,002h,004h,002h,002h,082h,0c0h,038h,004h,004h,082h,006h	; b9e7  `.8........8....
	defb 003h,003h,002h,081h,006h,004h,004h,007h,000h,089h,0e0h,020h,020h,010h,008h,006h	; b9f7  ...........  ...
	defb 002h,001h,001h,008h,000h,088h,0f8h,000h,000h,07ah,070h,078h,000h,070h,008h,000h	; ba07  .........zpx.p..
	defb 081h,01ch,005h,000h,087h,0aah,0c0h,000h,000h,001h,000h,001h,003h,003h,087h,007h	; ba17  ................
	defb 000h,000h,001h,003h,003h,082h,009h,000h,084h,0e6h,000h,000h,0ceh,003h,000h,081h	; ba27  ................
	defb 08eh,013h,000h,003h,00fh,081h,000h,004h,007h,082h,000h,07fh,008h,000h,081h,0e7h	; ba37  ................
	defb 003h,000h,084h,086h,000h,000h,03eh,004h,000h,081h,076h,003h,000h,081h,0fbh,006h	; ba47  ......>...v.....
	defb 000h,081h,0ddh,003h,000h,083h,003h,000h,003h,009h,000h,081h,03ah,006h,000h,081h	; ba57  ............:...
	defb 0fbh,008h,000h,089h,0ech,000h,000h,0e6h,03eh,074h,000h,000h,07fh,00bh,000h,086h	; ba67  ........>t......
	defb 08fh,077h,000h,0c5h,0efh,0c0h,00fh,000h,087h,080h,040h,03ch,01fh,00fh,007h,003h	; ba77  .w........@<....
	defb 00dh,000h,087h,0c0h,0e0h,0f0h,0f8h,00ch,002h,001h,009h,000h,087h,003h,007h,00fh	; ba87  ................
	defb 01fh,030h,040h,080h,005h,000h,087h,001h,002h,03ch,0f8h,0f0h,0e0h,0c0h,010h,000h	; ba97  .0@......<......
	defb 004h,001h,002h,000h,088h,007h,00fh,01fh,038h,030h,060h,040h,0c0h,004h,080h,004h	; baa7  ........80`@....
	defb 000h,08bh,0c0h,0e0h,0f0h,0f8h,03ch,01ch,00eh,006h,007h,003h,003h,003h,001h,00ch	; bab7  ......<.........
	defb 000h,003h,080h,082h,0c0h,003h,003h,002h,02ch,000h,003h,0c0h,004h,060h,002h,020h	; bac7  ........,....`.
	defb 003h,030h,004h,010h,010h,000h,083h,010h,018h,018h,00dh,008h,010h,000h,010h,008h	; bad7  .0..............
	defb 006h,000h,085h,007h,008h,010h,010h,020h,00ch,000h,089h,080h,040h,020h,020h,010h	; bae7  ....... ....@  .
	defb 010h,008h,008h,00ch,010h,000h,002h,004h,081h,006h,004h,002h,006h,001h,013h,000h	; baf7  ................
	defb 083h,00eh,006h,006h,00eh,000h,08bh,001h,002h,00eh,012h,010h,00ch,007h,004h,004h	; bb07  ................
	defb 002h,001h,005h,000h,08bh,0e0h,050h,068h,008h,008h,010h,0f0h,090h,040h,030h,040h	; bb17  ......Ph.....@0@
	defb 00eh,000h,002h,001h,083h,00dh,00fh,003h,00bh,000h,089h,0a0h,090h,0f0h,0f0h,0e0h	; bb27  ................
	defb 000h,003h,003h,001h,00dh,000h,084h,060h,0b0h,0c0h,080h,00eh,000h,08ah,001h,002h	; bb37  .......`........
	defb 00eh,012h,010h,00ch,009h,00ah,009h,012h,006h,000h,08ah,0e0h,050h,068h,008h,008h	; bb47  ............Ph..
	defb 010h,030h,048h,090h,048h,00fh,000h,002h,001h,083h,00dh,00fh,003h,00bh,000h,089h	; bb57  .0H.H...........
	defb 0a0h,090h,0f0h,0f0h,0e0h,006h,005h,006h,00ch,00ch,000h,084h,0c0h,0b0h,060h,030h	; bb67  ..............`0
	defb 00eh,000h,08bh,002h,005h,008h,010h,030h,058h,023h,010h,010h,022h,01dh,005h,000h	; bb77  .......0X#.."...
	defb 08bh,040h,0a0h,010h,008h,00ch,01ah,0c4h,008h,008h,0c4h,038h,00eh,000h,085h,002h	; bb87  .@.........8....
	defb 007h,00fh,00fh,027h,00bh,000h,089h,040h,0e0h,0f0h,0f0h,0e4h,01ch,00fh,00fh,01dh	; bb97  ...'...@........
	defb 00ch,000h,084h,038h,0f0h,0f0h,038h,00ch,000h,002h,020h,002h,070h,08ch,058h,0d8h	; bba7  ...8..8... .p.X.
	defb 088h,088h,0cch,0cch,0c8h,068h,068h,078h,010h,010h,010h,000h,000h	; bbb7  .....hhx.....

; ----------------------------------------------------------------------
; DATOS graficos_BBC4: graficos (L_59FB): [direccion de VRAM] y [n] n < 0x80
;   repite el siguiente, n > 0x80 copia n & 0x7F, 0x80 otra direccion, 0
;   acaba; lo leen p00:4A9D (26 bytes)
;   0xbbc4..0xbbde  (26 bytes)
DATA_graficos_BBC4:
	defb 000h,01fh,004h,000h,087h,003h,007h,00bh,005h,00ah,001h,004h,009h,000h,088h,0c0h	; bbc4  ................
	defb 0e0h,0f0h,0f0h,050h,070h,0a0h,040h,004h,000h,000h	; bbd4  ...Pp.@...

; ----------------------------------------------------------------------
; DATOS mensajes_28_BBDE: 1 palabras: los mensajes de la sala 331 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbbde..0xbbe0  (2 bytes)
DATA_mensajes_28_BBDE:
	defb 0e0h,0bbh	; bbde

; ----------------------------------------------------------------------
; DATOS mensaje_28_BBE0: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0xbbe0..0xbc0e  (46 bytes)
DATA_mensaje_28_BBE0:
	defb 0f8h,03bh,041h,053h,049h,058h,000h,082h,099h,07ah,045h,003h,000h,09ah,020h,07eh	; bbe0  ..ASIX...zE... ~
	defb 077h,06ch,0feh,042h,0a6h,053h,068h,006h,044h,04fh,003h,052h,066h,069h,063h,04ch	; bbf0  wl.B.Sh.DO.RficL
	defb 041h,000h,04dh,041h,045h,047h,0feh,054h,06dh,04bh,003h,0a3h,03ch,0ffh	; bc00  A.MAEG.TmK..<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BC0E: 1 palabras: los mensajes de la sala 366 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbc0e..0xbc10  (2 bytes)
DATA_mensajes_28_BC0E:
	defb 010h,0bch	; bc0e

; ----------------------------------------------------------------------
; DATOS mensaje_28_BC10: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0xbc10..0xbc39  (41 bytes)
DATA_mensaje_28_BC10:
	defb 0f8h,03bh,08ch,098h,092h,09dh,063h,05eh,058h,000h,0c1h,0c5h,06ch,000h,04fh,044h	; bc10  ......c^X...l.OD
	defb 04ch,053h,0feh,08eh,084h,058h,000h,059h,04bh,051h,003h,047h,067h,062h,000h,04dh	; bc20  LS...X.YKQ.Ggb.M
	defb 041h,045h,003h,052h,003h,068h,065h,03ch,0ffh	; bc30  AE.R.he<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BC39: 1 palabras: los mensajes de la sala 483 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbc39..0xbc3b  (2 bytes)
DATA_mensajes_28_BC39:
	defb 03bh,0bch	; bc39

; ----------------------------------------------------------------------
; DATOS mensaje_28_BC3B: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (21
;   bytes)
;   0xbc3b..0xbc50  (21 bytes)
DATA_mensaje_28_BC3B:
	defb 0f8h,03bh,049h,058h,05ch,06dh,055h,000h,05fh,04ch,003h,042h,05fh,045h,003h,000h	; bc3b  ..IX\mU._L.B_E..
	defb 040h,068h,065h,03ch,0ffh	; bc4b

; ----------------------------------------------------------------------
; DATOS mensajes_28_BC50: 1 palabras: los mensajes de la sala 485 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbc50..0xbc52  (2 bytes)
DATA_mensajes_28_BC50:
	defb 052h,0bch	; bc50

; ----------------------------------------------------------------------
; DATOS mensaje_28_BC52: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (48
;   bytes)
;   0xbc52..0xbc82  (48 bytes)
DATA_mensaje_28_BC52:
	defb 0f8h,03bh,0eah,055h,059h,000h,04ah,059h,003h,047h,058h,000h,04ah,06dh,05dh,004h	; bc52  ...UY.JY.GX.Jm].
	defb 062h,041h,041h,057h,03ch,0feh,0f6h,07bh,0ach,097h,020h,03bh,011h,01eh,012h,01eh	; bc62  bAAW<..{.. .....
	defb 013h,05dh,004h,00ah,00ah,04ah,040h,000h,045h,043h,067h,05eh,04bh,0a5h,03ch,0ffh	; bc72  .]...J@.ECg^K.<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BC82: 1 palabras: los mensajes de la sala 418 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbc82..0xbc84  (2 bytes)
DATA_mensajes_28_BC82:
	defb 084h,0bch	; bc82

; ----------------------------------------------------------------------
; DATOS mensaje_28_BC84: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (23
;   bytes)
;   0xbc84..0xbc9b  (23 bytes)
DATA_mensaje_28_BC84:
	defb 0f8h,03bh,060h,049h,042h,046h,003h,04bh,055h,059h,000h,071h,07dh,076h,045h,003h	; bc84  ..`IBF.KUY.q}vE.
	defb 040h,0a6h,04fh,04eh,003h,03ch,0ffh	; bc94

; ----------------------------------------------------------------------
; DATOS mensajes_28_BC9B: 1 palabras: los mensajes de la sala 420 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbc9b..0xbc9d  (2 bytes)
DATA_mensajes_28_BC9B:
	defb 09dh,0bch	; bc9b

; ----------------------------------------------------------------------
; DATOS mensaje_28_BC9D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (31
;   bytes)
;   0xbc9d..0xbcbc  (31 bytes)
DATA_mensaje_28_BC9D:
	defb 0f8h,03bh,060h,049h,042h,046h,003h,04bh,058h,0f1h,055h,059h,000h,0f1h,0bah,045h	; bc9d  ..`IBF.KX.UY...E
	defb 003h,04ch,06dh,053h,003h,068h,0feh,059h,04ch,003h,04bh,003h,0a3h,03ch,0ffh	; bcad  .LmS.h.YL.K..<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BCBC: 1 palabras: los mensajes de la sala 511 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbcbc..0xbcbe  (2 bytes)
DATA_mensajes_28_BCBC:
	defb 0beh,0bch	; bcbc

; ----------------------------------------------------------------------
; DATOS mensaje_28_BCBE: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (33
;   bytes)
;   0xbcbe..0xbcdf  (33 bytes)
DATA_mensaje_28_BCBE:
	defb 0f8h,03bh,082h,0a8h,074h,07ch,059h,000h,0c1h,0c5h,058h,011h,0bah,06ch,000h,04fh	; bcbe  ....t|Y...X..l.O
	defb 044h,04ch,0eah,050h,045h,066h,055h,000h,054h,0a6h,052h,047h,069h,065h,042h,03ch	; bcce  DL.PEfU.T.RGieB<
	defb 0ffh	; bcde

; ----------------------------------------------------------------------
; DATOS mensajes_28_BCDF: 1 palabras: los mensajes de la sala 480 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbcdf..0xbce1  (2 bytes)
DATA_mensajes_28_BCDF:
	defb 0e1h,0bch	; bcdf

; ----------------------------------------------------------------------
; DATOS mensaje_28_BCE1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (43
;   bytes)
;   0xbce1..0xbd0c  (43 bytes)
DATA_mensaje_28_BCE1:
	defb 0f8h,03bh,0bah,06ch,064h,068h,04bh,054h,04ah,041h,001h,045h,04ch,003h,045h,046h	; bce1  ...ldhKTJA.EL.EF
	defb 003h,067h,054h,047h,001h,065h,0a6h,052h,000h,089h,003h,077h,003h,045h,003h,040h	; bcf1  .gTG.e.R...w.E.@
	defb 0a6h,052h,062h,000h,064h,068h,04bh,052h,057h,03ch,0ffh	; bd01  .Rb.dhKRW<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BD0C: 1 palabras: los mensajes de la sala 326 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbd0c..0xbd0e  (2 bytes)
DATA_mensajes_28_BD0C:
	defb 00eh,0bdh	; bd0c

; ----------------------------------------------------------------------
; DATOS mensaje_28_BD0E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0xbd0e..0xbd1c  (14 bytes)
DATA_mensaje_28_BD0E:
	defb 0fbh,03bh,06eh,08bh,003h,096h,071h,09dh,083h,003h,0f1h,06fh,03ch,0ffh	; bd0e  ..n...q....o<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BD1C: 1 palabras: los mensajes de la sala 30 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbd1c..0xbd1e  (2 bytes)
DATA_mensajes_28_BD1C:
	defb 01eh,0bdh	; bd1c

; ----------------------------------------------------------------------
; DATOS mensaje_28_BD1E: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0xbd1e..0xbd42  (36 bytes)
DATA_mensaje_28_BD1E:
	defb 0f8h,03bh,049h,058h,0f1h,052h,003h,059h,000h,06bh,045h,062h,058h,058h,04dh,041h	; bd1e  ..IX.R.Y.kEbXXMA
	defb 04bh,0a4h,06dh,045h,003h,05bh,05fh,055h,04bh,003h,066h,069h,052h,044h,068h,04eh	; bd2e  K.mE.[_UK.fiRDhN
	defb 042h,054h,03ch,0ffh	; bd3e

; ----------------------------------------------------------------------
; DATOS mensajes_28_BD42: 1 palabras: los mensajes de la sala 246 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbd42..0xbd44  (2 bytes)
DATA_mensajes_28_BD42:
	defb 044h,0bdh	; bd42

; ----------------------------------------------------------------------
; DATOS mensaje_28_BD44: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (35
;   bytes)
;   0xbd44..0xbd67  (35 bytes)
DATA_mensaje_28_BD44:
	defb 0f8h,03bh,04ah,041h,046h,06dh,000h,07fh,003h,09dh,082h,053h,041h,042h,0bah,045h	; bd44  ..JAFm.....SAB.E
	defb 003h,0feh,049h,058h,05ch,06dh,06ch,000h,072h,09ah,072h,09ah,04bh,052h,041h,068h	; bd54  ..IX\ml.r.r.KRAh
	defb 06bh,03ch,0ffh	; bd64

; ----------------------------------------------------------------------
; DATOS mensajes_28_BD67: 1 palabras: los mensajes de la sala 247 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbd67..0xbd69  (2 bytes)
DATA_mensajes_28_BD67:
	defb 069h,0bdh	; bd67

; ----------------------------------------------------------------------
; DATOS mensaje_28_BD69: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (37
;   bytes)
;   0xbd69..0xbd8e  (37 bytes)
DATA_mensaje_28_BD69:
	defb 0f8h,03bh,04ch,054h,058h,0deh,055h,000h,042h,062h,069h,052h,04bh,05eh,0a6h,04fh	; bd69  ..LTX.U.BbiRK^.O
	defb 066h,0feh,040h,06bh,052h,04ch,003h,055h,000h,03dh,002h,03eh,06ch,000h,04fh,04fh	; bd79  f.@kRL.U.=.>l.OO
	defb 048h,065h,001h,03ch,0ffh	; bd89

; ----------------------------------------------------------------------
; DATOS mensajes_28_BD8E: 1 palabras: los mensajes de la sala 310 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbd8e..0xbd90  (2 bytes)
DATA_mensajes_28_BD8E:
	defb 090h,0bdh	; bd8e

; ----------------------------------------------------------------------
; DATOS mensaje_28_BD90: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0xbd90..0xbd9f  (15 bytes)
DATA_mensaje_28_BD90:
	defb 0f8h,03bh,04ch,054h,058h,0deh,055h,000h,042h,062h,069h,065h,001h,03ch,0ffh	; bd90  ..LTX.U.Bbie.<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BD9F: 1 palabras: los mensajes de la sala 343 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbd9f..0xbda1  (2 bytes)
DATA_mensajes_28_BD9F:
	defb 0a1h,0bdh	; bd9f

; ----------------------------------------------------------------------
; DATOS mensaje_28_BDA1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (15
;   bytes)
;   0xbda1..0xbdb0  (15 bytes)
DATA_mensaje_28_BDA1:
	defb 0fbh,03bh,06eh,046h,0a5h,04bh,003h,06dh,058h,071h,07dh,076h,06fh,03ch,0ffh	; bda1  ..nF.K.mXq}vo<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BDB0: 1 palabras: los mensajes de la sala 53 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbdb0..0xbdb2  (2 bytes)
DATA_mensajes_28_BDB0:
	defb 0b2h,0bdh	; bdb0

; ----------------------------------------------------------------------
; DATOS mensaje_28_BDB2: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (16
;   bytes)
;   0xbdb2..0xbdc2  (16 bytes)
DATA_mensaje_28_BDB2:
	defb 0f8h,03bh,091h,07ch,077h,063h,05eh,059h,000h,05ah,06ah,041h,065h,01dh,03ch,0ffh	; bdb2  ...|wc^Y.ZjAe.<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BDC2: 1 palabras: los mensajes de la sala 149 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbdc2..0xbdc4  (2 bytes)
DATA_mensajes_28_BDC2:
	defb 0c4h,0bdh	; bdc2

; ----------------------------------------------------------------------
; DATOS mensaje_28_BDC4: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (36
;   bytes)
;   0xbdc4..0xbde8  (36 bytes)
DATA_mensaje_28_BDC4:
	defb 0f8h,03bh,049h,053h,045h,003h,000h,04ch,04ch,05eh,054h,041h,0eah,059h,000h,040h	; bdc4  ..ISE..LL^TA.Y.@
	defb 066h,064h,068h,0feh,049h,053h,06ch,000h,063h,0a6h,052h,05fh,068h,05ch,003h,046h	; bdd4  fdh.ISl.c.R_h\.F
	defb 04fh,003h,03ch,0ffh	; bde4

; ----------------------------------------------------------------------
; DATOS mensajes_28_BDE8: 1 palabras: los mensajes de la sala 152 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbde8..0xbdea  (2 bytes)
DATA_mensajes_28_BDE8:
	defb 0eah,0bdh	; bde8

; ----------------------------------------------------------------------
; DATOS mensaje_28_BDEA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (11
;   bytes)
;   0xbdea..0xbdf5  (11 bytes)
DATA_mensaje_28_BDEA:
	defb 0fbh,03bh,06eh,091h,07ch,077h,063h,05eh,06fh,03ch,0ffh	; bdea  ..n.|wc^o<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BDF5: 1 palabras: los mensajes de la sala 425 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbdf5..0xbdf7  (2 bytes)
DATA_mensajes_28_BDF5:
	defb 0f7h,0bdh	; bdf5

; ----------------------------------------------------------------------
; DATOS mensaje_28_BDF7: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (22
;   bytes)
;   0xbdf7..0xbe0d  (22 bytes)
DATA_mensaje_28_BDF7:
	defb 0f8h,03bh,049h,058h,05ch,06dh,059h,000h,065h,047h,000h,041h,04bh,045h,003h,05bh	; bdf7  ..IX\mY.eG.AKE.[
	defb 0a6h,052h,047h,068h,03ch,0ffh	; be07

; ----------------------------------------------------------------------
; DATOS mensajes_28_BE0D: 1 palabras: los mensajes de la sala 497 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbe0d..0xbe0f  (2 bytes)
DATA_mensajes_28_BE0D:
	defb 00fh,0beh	; be0d

; ----------------------------------------------------------------------
; DATOS mensaje_28_BE0F: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (11
;   bytes)
;   0xbe0f..0xbe1a  (11 bytes)
DATA_mensaje_28_BE0F:
	defb 0fbh,03bh,06eh,07ah,098h,07ah,09dh,0f1h,06fh,03ch,0ffh	; be0f  ..nz.z..o<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BE1A: 1 palabras: los mensajes de la sala 465 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbe1a..0xbe1c  (2 bytes)
DATA_mensajes_28_BE1A:
	defb 01ch,0beh	; be1a

; ----------------------------------------------------------------------
; DATOS mensaje_28_BE1C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (14
;   bytes)
;   0xbe1c..0xbe2a  (14 bytes)
DATA_mensaje_28_BE1C:
	defb 0fbh,03bh,06eh,074h,09dh,084h,05fh,04ch,003h,042h,05fh,06fh,03ch,0ffh	; be1c  ..nt.._L.B_o<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BE2A: 1 palabras: los mensajes de la sala 395 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbe2a..0xbe2c  (2 bytes)
DATA_mensajes_28_BE2A:
	defb 02ch,0beh	; be2a

; ----------------------------------------------------------------------
; DATOS mensaje_28_BE2C: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (51
;   bytes)
;   0xbe2c..0xbe5f  (51 bytes)
DATA_mensaje_28_BE2C:
	defb 0f8h,03bh,041h,051h,045h,000h,070h,07fh,08eh,06ch,051h,065h,047h,042h,0a6h,04fh	; be2c  ..AQE.p..lQeGB.O
	defb 0f1h,0bah,045h,003h,077h,003h,086h,07ch,053h,041h,042h,000h,083h,003h,077h,07fh	; be3c  ..E.w..|SAB...w.
	defb 020h,055h,0feh,054h,044h,04bh,052h,062h,066h,0a6h,04fh,049h,053h,045h,003h,040h	; be4c   U.TDKRbf.OISE.@
	defb 068h,03ch,0ffh	; be5c

; ----------------------------------------------------------------------
; DATOS mensajes_28_BE5F: 1 palabras: los mensajes de la sala 466 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbe5f..0xbe61  (2 bytes)
DATA_mensajes_28_BE5F:
	defb 061h,0beh	; be5f

; ----------------------------------------------------------------------
; DATOS mensaje_28_BE61: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (29
;   bytes)
;   0xbe61..0xbe7e  (29 bytes)
DATA_mensaje_28_BE61:
	defb 0f8h,03bh,040h,054h,058h,0deh,055h,0d2h,06ah,042h,053h,04ch,068h,0b6h,055h,0feh	; be61  ..@TX.U.jBSLh.U.
	defb 075h,084h,092h,097h,055h,000h,040h,0a6h,052h,044h,048h,03ch,0ffh	; be71  u...U.@.RDH<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BE7E: 1 palabras: los mensajes de la sala 440 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbe7e..0xbe80  (2 bytes)
DATA_mensajes_28_BE7E:
	defb 080h,0beh	; be7e

; ----------------------------------------------------------------------
; DATOS mensaje_28_BE80: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0xbe80..0xbea9  (41 bytes)
DATA_mensaje_28_BE80:
	defb 0f8h,03bh,04ah,059h,003h,047h,052h,003h,000h,05fh,050h,055h,000h,05eh,065h,0a6h	; be80  ..JY.GR.._PU.^e.
	defb 04fh,0eah,059h,0feh,040h,053h,062h,053h,003h,067h,04bh,052h,000h,045h,06dh,045h	; be90  O.Y.@SbS.gKR.EmE
	defb 003h,043h,068h,045h,003h,041h,041h,03ch,0ffh	; bea0  .ChE.AA<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BEA9: 1 palabras: los mensajes de la sala 252 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbea9..0xbeab  (2 bytes)
DATA_mensajes_28_BEA9:
	defb 0abh,0beh	; bea9

; ----------------------------------------------------------------------
; DATOS mensaje_28_BEAB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0xbeab..0xbeb8  (13 bytes)
DATA_mensaje_28_BEAB:
	defb 0fbh,03bh,06eh,07fh,003h,071h,093h,058h,063h,05eh,06fh,03ch,0ffh	; beab  ..n..q.Xc^o<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BEB8: 1 palabras: los mensajes de la sala 106 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbeb8..0xbeba  (2 bytes)
DATA_mensajes_28_BEB8:
	defb 0bah,0beh	; beb8

; ----------------------------------------------------------------------
; DATOS mensaje_28_BEBA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (37
;   bytes)
;   0xbeba..0xbedf  (37 bytes)
DATA_mensaje_28_BEBA:
	defb 0f8h,03bh,070h,020h,07ah,059h,000h,04bh,003h,05bh,003h,06dh,058h,000h,055h,06bh	; beba  ..p zY.K.[.mX.Uk
	defb 058h,0feh,059h,04fh,048h,055h,000h,0c9h,045h,000h,042h,043h,052h,041h,068h,04eh	; beca  X.YOHU..E.BCRAhN
	defb 042h,04fh,003h,03ch,0ffh	; beda

; ----------------------------------------------------------------------
; DATOS mensajes_28_BEDF: 1 palabras: los mensajes de la sala 71 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbedf..0xbee1  (2 bytes)
DATA_mensajes_28_BEDF:
	defb 0e1h,0beh	; bedf

; ----------------------------------------------------------------------
; DATOS mensaje_28_BEE1: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (46
;   bytes)
;   0xbee1..0xbf0f  (46 bytes)
DATA_mensaje_28_BEE1:
	defb 0f8h,03bh,049h,058h,0b6h,000h,042h,04ch,003h,04bh,044h,055h,000h,05eh,046h,049h	; bee1  ..IX..BL.KDU.^FI
	defb 05eh,069h,04fh,0feh,0f1h,0bah,045h,003h,000h,041h,067h,043h,058h,000h,04eh,053h	; bef1  ^iO...E..AgCX.NS
	defb 052h,003h,0feh,0b8h,051h,045h,0a6h,04fh,04eh,042h,04fh,003h,03ch,0ffh	; bf01  R...QE.ONBO.<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BF0F: 1 palabras: los mensajes de la sala 38 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbf0f..0xbf11  (2 bytes)
DATA_mensajes_28_BF0F:
	defb 011h,0bfh	; bf0f

; ----------------------------------------------------------------------
; DATOS mensaje_28_BF11: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (38
;   bytes)
;   0xbf11..0xbf37  (38 bytes)
DATA_mensaje_28_BF11:
	defb 0f8h,03bh,049h,058h,000h,046h,06dh,05ch,004h,06dh,058h,000h,05fh,04ch,003h,05ch	; bf11  ..IX.Fm\.mX._L.\
	defb 003h,055h,0feh,042h,04ch,003h,04bh,044h,045h,003h,000h,0e1h,06bh,069h,068h,0eah	; bf21  .U.BL.KDE...kih.
	defb 045h,003h,047h,068h,03ch,0ffh	; bf31

; ----------------------------------------------------------------------
; DATOS mensajes_28_BF37: 1 palabras: los mensajes de la sala 18 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbf37..0xbf39  (2 bytes)
DATA_mensajes_28_BF37:
	defb 039h,0bfh	; bf37

; ----------------------------------------------------------------------
; DATOS mensaje_28_BF39: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (34
;   bytes)
;   0xbf39..0xbf5b  (34 bytes)
DATA_mensaje_28_BF39:
	defb 0f8h,03bh,05fh,04ch,003h,042h,05fh,055h,059h,000h,085h,09dh,076h,003h,0aeh,045h	; bf39  .._L.B_UY...v..E
	defb 003h,04ch,06dh,052h,003h,068h,0feh,053h,041h,042h,000h,072h,09bh,07ah,04fh,003h	; bf49  .LmR.h.SAB.r.zO.
	defb 03ch,0ffh	; bf59

; ----------------------------------------------------------------------
; DATOS mensajes_28_BF5B: 1 palabras: los mensajes de la sala 91 (y de las que
;   apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbf5b..0xbf5d  (2 bytes)
DATA_mensajes_28_BF5B:
	defb 05dh,0bfh	; bf5b

; ----------------------------------------------------------------------
; DATOS mensaje_28_BF5D: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (41
;   bytes)
;   0xbf5d..0xbf86  (41 bytes)
DATA_mensaje_28_BF5D:
	defb 0f8h,03bh,07fh,003h,071h,093h,063h,05eh,055h,0d2h,068h,055h,059h,000h,089h,09dh	; bf5d  ....q.c^U.hUY...
	defb 08eh,020h,052h,003h,0feh,063h,05eh,058h,000h,041h,067h,047h,003h,050h,06ch,000h	; bf6d  . R..c^X.AgG.Pl.
	defb 049h,06bh,04ch,06dh,04fh,003h,065h,03ch,0ffh	; bf7d  IkLmO.e<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BF86: 1 palabras: los mensajes de la sala 123 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbf86..0xbf88  (2 bytes)
DATA_mensajes_28_BF86:
	defb 088h,0bfh	; bf86

; ----------------------------------------------------------------------
; DATOS mensaje_28_BF88: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (49
;   bytes)
;   0xbf88..0xbfb9  (49 bytes)
DATA_mensaje_28_BF88:
	defb 0f8h,03bh,0ebh,045h,066h,058h,0c8h,041h,051h,04fh,043h,052h,003h,059h,000h,07fh	; bf88  ...EfX.AQOCR.Y..
	defb 003h,071h,093h,06ch,0feh,0e4h,0a6h,052h,068h,000h,065h,042h,04dh,041h,045h,003h	; bf98  .q.l...Rh.eBMAE.
	defb 000h,063h,05eh,058h,0deh,055h,0feh,04ch,06dh,052h,003h,068h,04eh,042h,065h,03ch	; bfa8  .c^X.U.LmR.hNBe<
	defb 0ffh	; bfb8

; ----------------------------------------------------------------------
; DATOS mensajes_28_BFB9: 1 palabras: los mensajes de la sala 155 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbfb9..0xbfbb  (2 bytes)
DATA_mensajes_28_BFB9:
	defb 0bbh,0bfh	; bfb9

; ----------------------------------------------------------------------
; DATOS mensaje_28_BFBB: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (13
;   bytes)
;   0xbfbb..0xbfc8  (13 bytes)
DATA_mensaje_28_BFBB:
	defb 0f8h,03bh,041h,041h,0f5h,0b7h,04bh,003h,0a3h,058h,042h,03ch,0ffh	; bfbb  ..AA..K..XB<.

; ----------------------------------------------------------------------
; DATOS mensajes_28_BFC8: 1 palabras: los mensajes de la sala 442 (y de las
;   que apuntan aqui); el tamano, hasta el primer mensaje; lo leen p00:4E76 (2
;   bytes)
;   0xbfc8..0xbfca  (2 bytes)
DATA_mensajes_28_BFC8:
	defb 0cah,0bfh	; bfc8

; ----------------------------------------------------------------------
; DATOS mensaje_28_BFCA: mensaje (p00:4EDF): caracteres; 0xFE linea, 0xFD
;   espera una tecla, 0xFC/0xFB/0xF9/0xF8 un nombre, 0xF7 y 0xF6 cambian la
;   letra, 0xFA acaba con un byte detras, 0xFF acaba; lo leen p00:4E76 (48
;   bytes)
;   0xbfca..0xbffa  (48 bytes)
DATA_mensaje_28_BFCA:
	defb 0f8h,03bh,049h,058h,04ah,059h,003h,047h,058h,000h,053h,003h,049h,045h,055h,0c1h	; bfca  ..IXJY.GX.S.IEU.
	defb 0d0h,096h,020h,084h,045h,003h,041h,068h,006h,000h,04bh,045h,04bh,000h,04eh,042h	; bfda  .. .E.Ah..KEK.NB
	defb 045h,06dh,04fh,06dh,055h,059h,0feh,04fh,053h,003h,067h,051h,048h,06dh,03ch,0ffh	; bfea  EmOmUY.OS.gQHm<.

; ----------------------------------------------------------------------
; DATOS resto_BFFA: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (6 bytes)
;   0xbffa..0xc000  (6 bytes)
DATA_resto_BFFA:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bffa
