; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 10 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS resto_8000: lo apuntan con el banco puesto p00:410D (0x8000), p00:4175
;   (0x8000), p10:9437 (0x8030), p10:999E (0x8030), p11:A25B (0x8030); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p00:410D, p00:4175, p10:9437, p10:999E, p11:A25B (1915 bytes)
;   0x8000..0x877b  (1915 bytes)
DATA_resto_8000:
	defb 079h,0f1h,01bh,077h,0c8h,07eh,0f0h,0c6h,09ch,039h,060h,04ch,0cfh,01fh,007h,021h	; 8000  y..w.~...9`L...!
	defb 0fch,0cfh,01fh,007h,0e2h,0f0h,0f1h,0e7h,00ch,00ch,0ceh,092h,033h,0f3h,099h,099h	; 8010  ............3...
	defb 088h,0cch,0c6h,0f0h,03fh,001h,0feh,0feh,0fch,0fch,03fh,03fh,07fh,07fh,081h,00eh	; 8020  ....?.....??....
	defb 03dh,07bh,0f4h,0e8h,0c0h,000h,0f8h,0fdh,0fbh,0e6h,0f4h,0e4h,04ch,0f9h,009h,0c0h	; 8030  ={..........L...
	defb 0f0h,069h,048h,001h,01bh,07bh,0fbh,0fbh,0f9h,0fdh,054h,024h,024h,028h,018h,011h	; 8040  .iH..{....T$$(..
	defb 003h,082h,086h,0f0h,003h,000h,0b4h,001h,083h,0c3h,0e1h,0cfh,0cfh,0e6h,0e0h,0a3h	; 8050  ................
	defb 047h,027h,0a6h,06ch,066h,035h,021h,00ch,03fh,078h,0f0h,0f5h,065h,009h,019h,003h	; 8060  G'.lf5!.?x..e...
	defb 023h,023h,0e3h,0e7h,0f3h,0f3h,0f9h,0f9h,0ech,0f4h,074h,08ah,019h,014h,06bh,0e7h	; 8070  ##........t...k.
	defb 0f0h,0fch,0fch,0c2h,0c2h,0a4h,060h,0c0h,04ch,087h,007h,003h,0ffh,085h,07fh,01fh	; 8080  ......`.L.......
	defb 0cfh,06fh,0a7h,00ah,0ffh,004h,07fh,082h,0ffh,03fh,004h,0ffh,090h,01fh,0efh,0efh	; 8090  .o.......?......
	defb 0f3h,0e0h,0fch,07eh,07fh,07eh,0feh,0fch,0fch,0e1h,0e4h,0e4h,0e6h,003h,0cfh,0a1h	; 80a0  ...~.~..........
	defb 080h,067h,047h,0cfh,09eh,03eh,07ch,0f8h,0f0h,087h,00eh,03ch,0f9h,0e3h,086h,01ch	; 80b0  .gG..>|....<....
	defb 071h,07fh,000h,0feh,070h,003h,0ffh,0fch,000h,078h,09eh,0c7h,0f0h,07eh,01fh,0c7h	; 80c0  q...p....x...~..
	defb 070h,003h,0ffh,088h,09fh,0e7h,0fbh,0f9h,0bah,08fh,0ffh,0f9h,005h,0ffh,084h,0c7h	; 80d0  p...............
	defb 01fh,0feh,0f8h,004h,0ffh,005h,000h,09bh,080h,0fch,0ffh,0ceh,0c7h,0e3h,0f1h,078h	; 80e0  ...............x
	defb 03eh,08fh,0e1h,0e3h,0f3h,0f1h,0f8h,07ch,03fh,03fh,09fh,0efh,0efh,0e7h,0dfh,01dh	; 80f0  >......|??......
	defb 01fh,05eh,0fch,004h,0ffh,090h,0feh,0f8h,0f0h,0f0h,0ceh,0beh,07fh,07fh,03fh,0bfh	; 8100  .^............?.
	defb 07fh,0ffh,0f0h,0f0h,0f8h,0feh,004h,0ffh,006h,000h,002h,001h,002h,038h,0b4h,01ch	; 8110  .............8..
	defb 09eh,08eh,08fh,0c7h,0e7h,0d0h,0dah,06dh,06eh,037h,033h,019h,09ch,016h,006h,081h	; 8120  .......mn73.....
	defb 0c0h,070h,0bch,0cfh,0f3h,0deh,0f4h,06ch,080h,001h,00fh,080h,080h,083h,08fh,01eh	; 8130  .p.....l........
	defb 07dh,0f2h,004h,038h,0e1h,099h,019h,019h,039h,031h,071h,0f3h,0a3h,011h,019h,030h	; 8140  }..8....91q....0
	defb 030h,070h,070h,004h,0e0h,002h,0c0h,081h,040h,003h,080h,09ah,0e7h,0feh,0f8h,0feh	; 8150  0pp.....@.......
	defb 0ffh,0e0h,0ffh,0feh,001h,018h,03fh,0bfh,0bfh,05fh,05fh,0dfh,005h,00eh,000h,087h	; 8160  ......?..__.....
	defb 0ffh,0ffh,0f8h,0feh,0c0h,00fh,003h,0ffh,085h,0e0h,0f8h,0fch,007h,0cfh,003h,0feh	; 8170  ................
	defb 083h,0fch,0f0h,0ffh,003h,00fh,003h,01fh,002h,03fh,08ch,0f3h,0e1h,0e5h,0e1h,0c5h	; 8180  .........?......
	defb 0d4h,092h,088h,001h,07fh,007h,001h,003h,07fh,089h,07eh,0c1h,067h,08fh,08fh,007h	; 8190  ..........~.g...
	defb 031h,018h,0ffh,003h,07fh,084h,07ch,079h,07fh,077h,003h,07fh,003h,03fh,098h,0bfh	; 81a0  1.....|y.w...?..
	defb 09fh,0ceh,0fdh,0f9h,0fbh,0f2h,0e5h,0ech,0c0h,001h,076h,076h,077h,0f7h,0f3h,0e3h	; 81b0  ..........vvw...
	defb 063h,003h,0b4h,034h,066h,066h,076h,003h,036h,002h,09fh,002h,0bfh,084h,03fh,00fh	; 81c0  c..4ffv.6.....?.
	defb 039h,01fh,004h,0ffh,0cdh,000h,0b7h,078h,0f3h,0e0h,0e3h,0e7h,0c7h,0c7h,027h,00fh	; 81d0  9......x......'.
	defb 00fh,0c1h,0e1h,0f0h,0f8h,0f8h,0f9h,0f9h,0f3h,09ch,0ddh,0ddh,09ch,05eh,02eh,06fh	; 81e0  .............^.o
	defb 02eh,041h,024h,07fh,038h,041h,028h,03fh,01fh,0bfh,0f8h,0e1h,007h,0b0h,0b8h,0f6h	; 81f0  .A$.8A(?........
	defb 0f8h,039h,067h,0deh,023h,00fh,018h,080h,0f0h,000h,07eh,03ch,0f8h,007h,070h,00eh	; 8200  .9g.#.....~<..p.
	defb 003h,087h,08fh,08fh,09fh,080h,08fh,09eh,09fh,09fh,0feh,0bch,039h,000h,0f8h,025h	; 8210  ............9..%
	defb 0f8h,0feh,003h,000h,084h,007h,017h,037h,057h,003h,000h,0b8h,00fh,037h,03fh,0b0h	; 8220  .......7W....7?.
	defb 0c1h,004h,02dh,01ch,09eh,0ceh,080h,013h,07fh,07fh,0bfh,09fh,04fh,06fh,06fh,00fh	; 8230  ..-.........Ooo.
	defb 09fh,001h,007h,09fh,087h,007h,01fh,0fdh,097h,076h,02ch,001h,080h,070h,0e3h,08fh	; 8240  .........v,..p..
	defb 01fh,00fh,00fh,027h,009h,0feh,05eh,0feh,0fbh,0dfh,0bfh,01fh,0dfh,0dfh,0efh,06eh	; 8250  ...'..^........n
	defb 00eh,047h,0cfh,08fh,004h,0dfh,0ffh,0deh,0f7h,0f3h,0e7h,081h,0c3h,0e7h,07eh,03ch	; 8260  .G............~<
	defb 08fh,039h,07fh,07fh,09eh,07fh,0c0h,085h,0c7h,071h,0fch,0f6h,08ah,0f1h,01ch,000h	; 8270  .9.......q......
	defb 02fh,05bh,05fh,05fh,0bfh,0bfh,07fh,07fh,048h,064h,0c9h,0fah,0d9h,0fdh,0fdh,0ech	; 8280  /[__....Hd......
	defb 08fh,003h,000h,010h,038h,03eh,07fh,07fh,0f6h,0a2h,004h,000h,000h,080h,082h,087h	; 8290  ....8>..........
	defb 0bbh,0f7h,003h,040h,04ch,06eh,0efh,0dfh,0deh,0ceh,08eh,00eh,0ceh,06eh,066h,0e6h	; 82a0  ...@Ln.......nf.
	defb 0f8h,0f8h,0f0h,0e0h,0c0h,080h,00dh,019h,09ch,0ceh,007h,041h,030h,0c0h,001h,003h	; 82b0  ...........A0...
	defb 090h,010h,0d0h,090h,009h,04eh,0ceh,0cch,009h,08dh,095h,095h,080h,022h,038h,07ch	; 82c0  .....N......."8|
	defb 0bch,03eh,07fh,0f0h,000h,004h,014h,088h,0c0h,0c0h,060h,060h,020h,040h,000h,040h	; 82d0  .>........`` @.@
	defb 0edh,0c4h,0d4h,096h,09ah,01bh,0ffh,01bh,03fh,09dh,049h,00eh,008h,0c1h,003h,00bh	; 82e0  ........?.I.....
	defb 00bh,03fh,03dh,00eh,003h,0f0h,0fch,0feh,0fch,0e7h,023h,031h,0f0h,070h,001h,0c0h	; 82f0  .?=.......#1.p..
	defb 09ch,0f9h,0f1h,003h,063h,0f8h,03fh,0c6h,003h,0c0h,0e0h,060h,030h,005h,005h,015h	; 8300  ....c.?....`0...
	defb 030h,04dh,0c7h,0c6h,0e3h,0c1h,0f0h,0f8h,0f8h,060h,060h,070h,0d0h,0f8h,0b8h,078h	; 8310  0M.......``p...x
	defb 0fch,0cah,0c8h,0e5h,0e5h,0f1h,0f3h,0fbh,0f2h,0ech,0f4h,0e6h,0e6h,0e4h,0cch,098h	; 8320  ................
	defb 030h,00eh,003h,000h,000h,008h,008h,004h,00ah,00fh,003h,031h,08ch,0c7h,0a3h,0d9h	; 8330  0..........1....
	defb 0c9h,07fh,00fh,01eh,03ch,078h,061h,043h,00eh,0f4h,07ch,07eh,07ah,07fh,07eh,03eh	; 8340  ....<xaC..|~z.~>
	defb 03fh,0f0h,0f8h,0feh,07fh,09fh,0c3h,060h,038h,060h,0c8h,091h,067h,0ffh,0fah,0f6h	; 8350  ?......`8`..g...
	defb 08ch,0d8h,060h,004h,008h,012h,09bh,032h,072h,062h,0fah,0efh,0f8h,0ffh,08ah,0ffh	; 8360  ..`....2rb......
	defb 0ffh,07ch,0e0h,001h,004h,05bh,0f7h,0cfh,09eh,0e0h,00fh,007h,08fh,01fh,07eh,0fdh	; 8370  .|...[........~.
	defb 0e7h,08fh,005h,07fh,002h,03fh,0d9h,01fh,03dh,0f7h,08fh,03fh,0feh,0fdh,0f9h,0efh	; 8380  .....?..=..?....
	defb 0f0h,0ffh,00dh,037h,0d8h,0e1h,085h,007h,0bch,033h,00fh,09fh,0bfh,03fh,07fh,07fh	; 8390  ...7.....3...?..
	defb 020h,046h,08fh,0bfh,03fh,07fh,006h,018h,061h,01eh,07fh,03eh,000h,080h,045h,047h	; 83a0   F..?...a..>..EG
	defb 0fch,0f8h,080h,002h,014h,0bch,0fch,0f8h,066h,066h,026h,026h,025h,00fh,09dh,09dh	; 83b0  ........ff&&%...
	defb 00fh,005h,087h,0c7h,0c7h,083h,003h,001h,09fh,0dfh,0cfh,0cfh,06fh,06fh,04fh,04fh	; 83c0  ............ooOO
	defb 0c1h,080h,080h,083h,003h,003h,040h,006h,09fh,06fh,0b7h,0d8h,0ffh,07fh,00fh,003h	; 83d0  ......@..o......
	defb 003h,0ffh,08bh,0f0h,09fh,03fh,06eh,0edh,0e2h,086h,01eh,0fch,0f8h,0e6h,003h,0feh	; 83e0  .....?n.........
	defb 003h,0fch,081h,0feh,003h,0ffh,0a1h,076h,0dfh,0efh,0ffh,0f3h,06bh,0f8h,0f4h,0e1h	; 83f0  .......v....k...
	defb 06eh,0fch,0c1h,0e3h,0e0h,0c0h,0fbh,0b6h,07fh,00fh,01fh,038h,01ch,0ffh,0dfh,0cch	; 8400  n..........8....
	defb 0e7h,07dh,0bbh,0c7h,0f7h,0f7h,0efh,078h,003h,000h,081h,0e0h,003h,0ffh,0a1h,08ch	; 8410  .}.....x........
	defb 001h,007h,01fh,03fh,03fh,07fh,07fh,07dh,03fh,03fh,01fh,007h,000h,000h,0e0h,0ceh	; 8420  ...??..}??......
	defb 0feh,007h,0efh,0efh,005h,003h,0ffh,0fdh,07ch,00eh,000h,080h,0c0h,007h,01fh,0f7h	; 8430  ........|.......
	defb 003h,0d7h,084h,0d3h,0bch,03fh,031h,008h,0ffh,000h,018h,054h,050h,040h,008h,050h	; 8440  .....?1....TP@.P
	defb 082h,040h,050h,006h,040h,003h,054h,007h,040h,002h,050h,002h,040h,002h,054h,083h	; 8450  .@P.@.T.@.P.@.T.
	defb 050h,040h,050h,008h,040h,002h,050h,005h,040h,081h,050h,005h,040h,003h,050h,082h	; 8460  P@P.@.P.@.P.@.P.
	defb 040h,050h,003h,040h,005h,054h,004h,040h,081h,050h,006h,040h,081h,054h,008h,040h	; 8470  @P.@.T.@.P.@.T.@
	defb 002h,050h,002h,040h,082h,0e0h,050h,008h,040h,081h,0e0h,004h,040h,0aah,0e0h,050h	; 8480  .P.@..P.@...@..P
	defb 040h,0e0h,054h,054h,0e4h,050h,050h,0e0h,050h,0e0h,040h,0e0h,050h,040h,040h,0e0h	; 8490  @.TT.PP.P.@.P@@.
	defb 0e0h,054h,050h,040h,0e0h,050h,040h,050h,040h,0e0h,040h,040h,0e0h,050h,0e0h,040h	; 84a0  .TP@.P@P@.@@.P.@
	defb 050h,040h,0e0h,050h,054h,054h,040h,050h,006h,040h,081h,0e4h,006h,054h,083h,040h	; 84b0  P@.PTT@P.@...T.@
	defb 0f0h,050h,007h,040h,088h,0f0h,040h,050h,050h,0a0h,0f0h,050h,0e0h,003h,050h,005h	; 84c0  .P.@..@PP..P..P.
	defb 040h,085h,090h,0a0h,0a0h,090h,090h,006h,040h,082h,0a0h,090h,007h,040h,088h,0f0h	; 84d0  @.......@....@..
	defb 050h,040h,0b0h,0b0h,0a0h,0a0h,050h,004h,040h,004h,0a0h,005h,0b0h,002h,040h,084h	; 84e0  P@....P.@.....@.
	defb 0b0h,050h,0f0h,0e0h,004h,0b0h,007h,0a0h,081h,040h,07fh,0f0h,021h,0f0h,004h,0e0h	; 84f0  .P.......@..!...
	defb 081h,0f0h,007h,0e0h,084h,0f0h,0e0h,0e0h,0f0h,003h,0e0h,082h,0f0h,0e0h,003h,0f0h	; 8500  ................
	defb 007h,0e0h,081h,0f0h,007h,0e0h,081h,0feh,005h,0e0h,081h,0f0h,003h,0e0h,081h,0f0h	; 8510  ................
	defb 003h,0e0h,086h,0f0h,0e0h,0f0h,0f0h,0e0h,0f0h,00ah,0e0h,002h,0a0h,002h,0b0h,002h	; 8520  ................
	defb 0bah,002h,0b0h,086h,0bah,0a0h,0a0h,040h,0a0h,0a0h,003h,0b0h,002h,0a0h,082h,090h	; 8530  .......@........
	defb 080h,004h,0b0h,083h,0bah,0a9h,090h,003h,0b0h,002h,0bah,08ah,0a9h,090h,0bah,0bah	; 8540  ................
	defb 0b0h,0b0h,0a0h,090h,090h,000h,008h,0b0h,089h,0a0h,0b0h,0b0h,0a0h,0b0h,0a0h,0b0h	; 8550  ................
	defb 0b0h,0fbh,003h,0bah,004h,0a0h,081h,0bah,006h,0a0h,082h,000h,0a0h,00ch,0b0h,087h	; 8560  ................
	defb 0a0h,090h,090h,0a0h,0a0h,090h,0a0h,003h,090h,081h,0c0h,004h,0b0h,003h,0a0h,089h	; 8570  ................
	defb 0c0h,0b0h,0b0h,0a0h,0a0h,0b0h,0a0h,0b0h,0b0h,005h,090h,083h,0a0h,080h,090h,004h	; 8580  ................
	defb 098h,085h,0a9h,0a8h,0a0h,080h,080h,003h,090h,004h,0a0h,002h,080h,003h,090h,003h	; 8590  ................
	defb 0a0h,005h,080h,098h,090h,080h,090h,080h,090h,090h,0a0h,080h,080h,090h,080h,090h	; 85a0  ................
	defb 090h,0a0h,080h,098h,090h,080h,090h,080h,090h,080h,080h,090h,003h,0a0h,081h,0a9h	; 85b0  ................
	defb 003h,098h,081h,0a0h,003h,080h,089h,0b0h,0a0h,0b0h,0b0h,040h,0a0h,080h,090h,0b5h	; 85c0  ...........@....
	defb 004h,0b0h,083h,0a0h,0a8h,098h,004h,090h,002h,080h,082h,090h,0a0h,004h,080h,081h	; 85d0  ................
	defb 090h,003h,0a0h,002h,080h,002h,090h,002h,0a0h,002h,080h,082h,0f0h,080h,003h,090h	; 85e0  ................
	defb 083h,0a0h,0f0h,080h,003h,090h,085h,0a9h,0bah,0bah,0b0h,0b7h,003h,0c0h,002h,0b0h	; 85f0  ................
	defb 083h,0a0h,090h,090h,003h,0f0h,002h,0a0h,081h,098h,004h,090h,086h,0f0h,080h,080h	; 8600  ................
	defb 0a0h,0a0h,0f0h,003h,080h,082h,090h,080h,003h,090h,003h,0b0h,08fh,0bah,0a8h,0bah	; 8610  ................
	defb 0b0h,0a0h,0a0h,090h,090h,0d0h,090h,0d0h,0d0h,080h,0a0h,090h,003h,0d0h,081h,090h	; 8620  ................
	defb 003h,080h,08ah,090h,080h,090h,0d0h,090h,0d0h,0d0h,080h,080h,098h,003h,090h,085h	; 8630  ................
	defb 0d0h,090h,0d0h,080h,080h,003h,090h,002h,0a0h,002h,090h,003h,080h,002h,090h,087h	; 8640  ................
	defb 0a0h,0d0h,0a0h,0a0h,080h,080h,090h,004h,0d0h,086h,0a0h,0d0h,080h,080h,090h,090h	; 8650  ................
	defb 004h,0b0h,08dh,0a0h,090h,080h,090h,0b0h,0b0h,0a0h,0a0h,0c0h,0f0h,0a0h,0a0h,0f0h	; 8660  ................
	defb 003h,0a0h,081h,0c0h,003h,090h,088h,0a0h,090h,0b0h,090h,0c0h,0a0h,030h,030h,003h	; 8670  .............00.
	defb 0a0h,002h,090h,002h,0c0h,081h,020h,007h,0a0h,082h,0c0h,0a0h,004h,0b0h,081h,020h	; 8680  ...... ........
	defb 003h,0c0h,091h,020h,030h,030h,0c0h,0f0h,0b0h,0b0h,0c0h,020h,030h,030h,0f0h,0b0h	; 8690  ... 00..... 00..
	defb 0b0h,0a0h,020h,020h,003h,030h,08bh,0a0h,0f0h,0b0h,020h,030h,0c0h,0f0h,0b0h,0b0h	; 86a0  ..  .0.... 0....
	defb 0a0h,0b0h,004h,090h,084h,020h,0c0h,0c0h,0b0h,030h,0c0h,081h,020h,007h,0c2h,007h	; 86b0  ..... ...0.. ...
	defb 0c0h,081h,020h,003h,0c2h,005h,0c0h,004h,0c2h,009h,0c0h,083h,020h,0c0h,020h,003h	; 86c0  .. ......... . .
	defb 0c0h,081h,000h,003h,0c0h,081h,0c2h,004h,0c0h,004h,0c2h,082h,030h,0c3h,006h,0c2h	; 86d0  ............0...
	defb 002h,020h,083h,0c0h,030h,020h,003h,0c0h,002h,0c2h,081h,0c3h,005h,0c2h,08ah,032h	; 86e0  . ..0 .........2
	defb 020h,0c2h,0c2h,0c3h,0c2h,0c3h,0c2h,0c0h,030h,003h,020h,002h,0c0h,087h,030h,0c0h	; 86f0   .......0. ...0.
	defb 0c0h,030h,020h,030h,020h,004h,0c2h,089h,020h,030h,030h,0c0h,0c0h,020h,020h,030h	; 8700  .0 0 ... 00..  0
	defb 030h,006h,0c0h,002h,020h,002h,030h,083h,020h,0c0h,020h,005h,0c0h,08eh,020h,030h	; 8710  0... .0. . ... 0
	defb 030h,0f0h,0c0h,020h,0c0h,020h,020h,0c0h,020h,0c0h,070h,050h,003h,0c0h,082h,080h	; 8720  0.. .  . .pP....
	defb 0c0h,005h,0f0h,003h,0fbh,006h,0f0h,002h,0b0h,006h,0f0h,005h,0f8h,004h,0f0h,081h	; 8730  ................
	defb 0fbh,005h,0f0h,086h,0a0h,0f0h,0b0h,0b0h,0a0h,0bah,004h,0fbh,08dh,0b0h,0a0h,0a0h	; 8740  ................
	defb 0fbh,0fbh,0a0h,0a0h,0b2h,0f0h,0fah,0b9h,0b0h,0a0h,004h,0f0h,081h,0a0h,007h,0f0h	; 8750  ................
	defb 081h,0a0h,007h,0f0h,007h,0a0h,003h,0f0h,081h,0fah,004h,0a0h,087h,000h,0f0h,0a0h	; 8760  ................
	defb 0a0h,0f0h,0a0h,0a0h,008h,0f0h,002h,0a0h,008h,0f0h,000h	; 8770  ...........

; ----------------------------------------------------------------------
; DATOS graficos_877B: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p09:6EF5 (812
;   bytes)
;   0x877b..0x8aa7  (812 bytes)
DATA_graficos_877B:
	defb 082h,000h,001h,003h,003h,084h,007h,00fh,01fh,07fh,007h,0ffh,081h,0f8h,005h,0ffh	; 877b  ................
	defb 08ah,0efh,03fh,000h,000h,0c0h,0f0h,0e8h,0e8h,0f8h,0d0h,004h,01fh,002h,00fh,087h	; 878b  ..?.............
	defb 007h,00fh,000h,001h,003h,003h,007h,003h,00fh,003h,01fh,003h,03fh,003h,07fh,003h	; 879b  ............?...
	defb 07eh,084h,07ch,03eh,03eh,03ch,004h,01eh,081h,01fh,003h,00fh,003h,000h,002h,080h	; 87ab  ~.|>><..........
	defb 003h,040h,003h,060h,003h,070h,082h,0f8h,0f0h,003h,00fh,08dh,007h,00dh,005h,002h	; 87bb  .@.`.p..........
	defb 000h,0fdh,0ffh,0fdh,0ffh,0fbh,0ffh,003h,00fh,003h,01fh,004h,03fh,003h,07fh,081h	; 87cb  ............?...
	defb 07eh,003h,07fh,002h,03fh,09fh,000h,010h,000h,003h,02fh,05ch,03eh,0f8h,078h,0d0h	; 87db  ~...?...../\>.x.
	defb 060h,000h,000h,040h,008h,000h,040h,000h,003h,0f1h,08ch,000h,040h,001h,000h,040h	; 87eb  `..@..@.....@..@
	defb 000h,030h,063h,044h,040h,003h,000h,0aeh,008h,0c0h,0f0h,03ch,01ch,02fh,00eh,006h	; 87fb  .0cD@......<./..
	defb 020h,018h,008h,00ch,02ch,004h,03bh,03fh,06fh,01fh,03eh,0feh,0feh,0fch,03eh,0deh	; 880b   ...,..?o.>...>.
	defb 0eeh,0e4h,0f0h,0f0h,0f1h,0e3h,0e4h,020h,000h,023h,05fh,0ffh,0fdh,034h,0feh,0ffh	; 881b  ....... .#_..4..
	defb 0fch,0f1h,0e6h,0dch,0ddh,0f9h,003h,01fh,002h,00fh,002h,007h,099h,003h,0fch,0feh	; 882b  ................
	defb 0ffh,08fh,0c3h,0e1h,0f9h,0fch,007h,03fh,0ffh,0fbh,0fbh,0f7h,0f7h,0efh,0feh,0ffh	; 883b  .......?........
	defb 083h,0f0h,0fch,0a0h,0e8h,0feh,004h,000h,08eh,083h,0c7h,0cfh,0dfh,062h,032h,098h	; 884b  .............b2.
	defb 058h,01ch,08eh,04eh,02eh,01fh,01fh,00ah,03fh,002h,01fh,002h,00eh,002h,007h,082h	; 885b  X..N....?.......
	defb 003h,001h,004h,000h,002h,0fch,0fbh,0f8h,0f0h,0e0h,0c0h,080h,000h,0f8h,0f0h,0f0h	; 886b  ................
	defb 0e4h,0e6h,0ceh,0cfh,09eh,000h,000h,00ch,03fh,087h,083h,041h,001h,0e9h,01ch,01ch	; 887b  ........?..A....
	defb 0b8h,018h,030h,0a0h,07ch,000h,0fch,000h,0dch,003h,0f1h,004h,00eh,0fch,003h,0ffh	; 888b  ..0.|...........
	defb 0f7h,0bdh,0f7h,0d9h,0f6h,0ffh,0efh,0ffh,0bbh,0f7h,0dfh,056h,08fh,023h,094h,005h	; 889b  ...........V.#..
	defb 003h,00bh,005h,017h,02bh,021h,08ah,067h,0cdh,0bfh,0f7h,0bfh,0feh,0fch,0feh,0feh	; 88ab  ....+!.g........
	defb 07fh,0ffh,0dfh,0feh,0feh,048h,0b0h,014h,0a8h,0c0h,00fh,0d2h,0d9h,03bh,073h,06dh	; 88bb  .....H........sm
	defb 08dh,073h,03fh,00fh,001h,0f8h,0b1h,071h,0e3h,0c7h,01fh,03eh,00eh,0ffh,0bbh,04eh	; 88cb  .s?....q...>...N
	defb 001h,080h,081h,068h,0d1h,016h,033h,032h,033h,03bh,05ah,073h,062h,08fh,05fh,0abh	; 88db  ...h..323.Zsb._.
	defb 0efh,05fh,005h,0feh,08bh,0ffh,0bfh,07fh,03fh,05fh,09bh,07fh,07fh,0e0h,082h,076h	; 88eb  ._......?_.....v
	defb 003h,07fh,0d5h,074h,0cah,083h,040h,001h,090h,040h,090h,08fh,05bh,0feh,0dfh,0fbh	; 88fb  ...t..@..@..[...
	defb 0bfh,0ffh,0ffh,0feh,0ffh,0feh,0feh,0bfh,0fdh,0fdh,0fbh,07fh,0efh,0fah,0fdh,07fh	; 890b  ................
	defb 0fbh,0feh,0bfh,03fh,007h,060h,07ah,0ffh,037h,06ch,000h,06dh,0ddh,003h,020h,06eh	; 891b  ...?.`z.7l.m.. n
	defb 07eh,078h,07eh,0bfh,0ffh,0feh,000h,00fh,07fh,03fh,00eh,000h,0e0h,0f8h,0fch,0beh	; 892b  ~x~......?......
	defb 04eh,068h,007h,0bch,09ch,000h,004h,046h,072h,03bh,03ah,00eh,040h,060h,0fch,082h	; 893b  Nh.....Fr.:.@`..
	defb 081h,015h,004h,067h,065h,03fh,03bh,040h,003h,0e0h,0cbh,080h,0c0h,0e0h,0f0h,0f8h	; 894b  ...ge?.@........
	defb 0f8h,0fch,0fch,0f9h,07dh,03fh,01dh,047h,0a0h,005h,046h,04ah,061h,0b6h,098h,03dh	; 895b  ....}?.G..FJa..=
	defb 0cfh,01fh,03fh,000h,00eh,03fh,06fh,00fh,0cdh,0c4h,0c4h,01fh,01fh,00fh,00fh,01fh	; 896b  ..?..?o.........
	defb 00fh,033h,0fdh,0f6h,0fdh,0efh,0ffh,0bdh,0ffh,0eeh,0ffh,0fdh,0feh,0feh,0e0h,067h	; 897b  .3.............g
	defb 09fh,0e3h,0f8h,0e0h,0f0h,0e0h,0e0h,0f8h,0fch,0fch,0fah,000h,0c0h,0a0h,0c0h,078h	; 898b  ...............x
	defb 0fch,0cch,0f2h,00fh,01fh,01fh,003h,0c0h,09fh,03fh,03eh,03ch,0feh,0f2h,01eh,0ffh	; 899b  .........?><....
	defb 07bh,08dh,07ah,015h,02eh,07eh,05ch,040h,0f6h,0fbh,03ah,000h,0b1h,01fh,003h,0dfh	; 89ab  {.z..~\@..:.....
	defb 0e8h,05fh,003h,0feh,0fah,0feh,003h,0c0h,003h,003h,0cdh,0dfh,0fbh,0f7h,0feh,0dfh	; 89bb  ._..............
	defb 0feh,0fah,0f6h,00ah,00bh,00eh,006h,0d8h,003h,007h,00fh,000h,01ch,066h,048h,0f3h	; 89cb  .............fH.
	defb 0c7h,09fh,03fh,01fh,03ch,023h,0cfh,080h,0feh,0f8h,0e0h,0e1h,03fh,08fh,0b3h,079h	; 89db  ..?.<#......?..y
	defb 09dh,0eeh,0f2h,077h,06fh,06eh,06ch,0bdh,0bbh,0fbh,0fbh,076h,075h,073h,077h,0d7h	; 89eb  ...wonl....vusw.
	defb 04ch,007h,070h,098h,0beh,0c2h,0edh,063h,0f9h,0fch,03fh,000h,003h,03dh,0beh,0f8h	; 89fb  L.p....c..?..=..
	defb 0e7h,09fh,07fh,087h,023h,0f1h,0f9h,0fdh,003h,0ffh,0c6h,000h,010h,001h,003h,007h	; 8a0b  ....#...........
	defb 007h,00fh,00fh,07fh,0fch,0fdh,0f9h,0f2h,0f2h,0f6h,0f4h,043h,08bh,017h,02fh,02fh	; 8a1b  ...........C..//
	defb 01fh,03fh,0ffh,01fh,001h,0e0h,07fh,0ffh,0ffh,002h,014h,001h,004h,00fh,00fh,007h	; 8a2b  .?..............
	defb 031h,07ch,007h,00bh,0f8h,000h,03bh,07bh,073h,039h,008h,0cdh,0e3h,093h,028h,07ch	; 8a3b  1|.....{s9....(|
	defb 07ch,0bch,037h,000h,000h,003h,003h,080h,004h,00dh,01fh,0cch,023h,034h,073h,0f8h	; 8a4b  |.7.........#4s.
	defb 0fdh,003h,0f8h,0a4h,0c0h,000h,0e0h,0d8h,0e0h,0f0h,040h,0d8h,028h,068h,060h,040h	; 8a5b  ..........@.(h`@
	defb 0c0h,0c0h,040h,0fch,00fh,0ffh,07eh,0f7h,0dfh,03fh,03fh,015h,003h,015h,0b1h,031h	; 8a6b  ..@...~..??....1
	defb 01bh,01fh,01fh,000h,080h,0e0h,0a0h,0f0h,003h,0f8h,088h,002h,00fh,07fh,0ffh,0f0h	; 8a7b  ................
	defb 007h,0ffh,0fch,003h,000h,095h,003h,007h,060h,00fh,000h,0ech,066h,0c7h,08fh,01fh	; 8a8b  ........`...f...
	defb 018h,006h,080h,01fh,01fh,01dh,00eh,007h,01ch,0e1h,0f8h,000h	; 8a9b  ............

; ----------------------------------------------------------------------
; DATOS graficos_8AA7: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba; lo leen p09:6EFE (431
;   bytes)
;   0x8aa7..0x8c56  (431 bytes)
DATA_graficos_8AA7:
	defb 066h,040h,007h,0f4h,082h,0f0h,0f4h,03fh,0f0h,006h,0e0h,003h,0f0h,003h,0e0h,004h	; 8aa7  f@.....?........
	defb 0f0h,003h,0feh,002h,0f0h,003h,0e0h,087h,0f0h,0e0h,0f0h,0e0h,0f0h,0e0h,0f0h,003h	; 8ab7  ................
	defb 0e0h,003h,0f0h,084h,0e0h,0f0h,0e0h,0e0h,007h,0f0h,002h,0e0h,004h,0f0h,084h,0e0h	; 8ac7  ................
	defb 0feh,0f0h,0feh,004h,0b0h,003h,0f0h,002h,0e0h,003h,0b0h,008h,0a0h,022h,0b0h,002h	; 8ad7  ............."..
	defb 0f0h,002h,040h,002h,0f0h,002h,0f5h,002h,0e4h,081h,040h,006h,0e4h,08ch,040h,0a4h	; 8ae7  ..@.......@...@.
	defb 040h,0b4h,040h,054h,040h,094h,094h,0a7h,0bah,0bbh,01ch,0b9h,004h,0b0h,00ah,0b9h	; 8af7  @.@T@...........
	defb 081h,090h,006h,0f0h,009h,0b0h,002h,0f0h,081h,0e0h,005h,0b6h,081h,0b8h,00fh,0b6h	; 8b07  ................
	defb 005h,0b0h,081h,0bbh,005h,0b6h,002h,0b0h,003h,0b6h,003h,0b0h,081h,0b6h,011h,0b9h	; 8b17  ................
	defb 002h,0b0h,081h,0b9h,004h,0b0h,003h,0b9h,083h,0b0h,0b9h,0b9h,003h,0b0h,004h,040h	; 8b27  ...............@
	defb 002h,050h,085h,040h,050h,050h,090h,090h,003h,0a0h,083h,0b6h,0b5h,0b0h,004h,040h	; 8b37  .P.@PP.........@
	defb 004h,050h,004h,040h,004h,090h,002h,080h,004h,090h,003h,060h,008h,0b6h,082h,060h	; 8b47  .P.@.......`...`
	defb 090h,009h,0a0h,006h,0b0h,002h,0f0h,081h,0e0h,004h,090h,002h,0a0h,005h,0b0h,003h	; 8b57  ................
	defb 0a0h,082h,0f0h,0e0h,006h,0b4h,087h,0f4h,0f0h,0b9h,0b9h,0b0h,0b0h,0b9h,003h,0b6h	; 8b67  ................
	defb 003h,090h,082h,0a9h,0bah,005h,0b0h,082h,0a0h,090h,00ah,080h,081h,090h,004h,080h	; 8b77  ................
	defb 003h,0e8h,004h,080h,086h,090h,080h,080h,090h,080h,080h,005h,098h,003h,080h,004h	; 8b87  ................
	defb 098h,004h,080h,003h,0b6h,082h,0b0h,040h,003h,090h,085h,0b9h,0b6h,0b0h,0b6h,0b0h	; 8b97  .......@........
	defb 003h,0b6h,004h,0a4h,081h,040h,003h,084h,002h,090h,002h,0a0h,002h,090h,002h,0a0h	; 8ba7  .....@..........
	defb 08bh,090h,0a0h,0f0h,0f0h,0a0h,097h,097h,0a7h,090h,090h,0a0h,004h,0f0h,086h,070h	; 8bb7  ...............p
	defb 090h,0a0h,090h,0a0h,0a0h,004h,0f0h,003h,090h,002h,0b8h,083h,0b0h,090h,090h,005h	; 8bc7  ................
	defb 0a0h,084h,090h,097h,0a9h,090h,004h,0f0h,002h,070h,005h,0a7h,004h,0b0h,081h,0f0h	; 8bd7  .........p......
	defb 007h,0a0h,007h,0a7h,081h,097h,006h,0a7h,084h,0b8h,0bah,0bah,0a9h,003h,080h,002h	; 8be7  ................
	defb 098h,081h,090h,003h,0f0h,087h,0e0h,050h,040h,054h,050h,054h,054h,005h,040h,083h	; 8bf7  .......P@TPTT.@.
	defb 050h,040h,050h,007h,090h,083h,050h,040h,0f0h,006h,090h,002h,0a0h,006h,0b0h,004h	; 8c07  P@P...P@........
	defb 040h,003h,050h,083h,090h,0a0h,0a0h,003h,0b0h,084h,097h,0a9h,0a4h,0bah,004h,0b0h	; 8c17  @.P.............
	defb 085h,090h,0a0h,094h,0a0h,0a4h,003h,0b4h,003h,0a0h,002h,090h,002h,0a0h,081h,0b0h	; 8c27  ................
	defb 003h,0a0h,002h,0b0h,002h,0f0h,081h,0e0h,005h,0a0h,086h,0f0h,0feh,0feh,0a0h,0a0h	; 8c37  ................
	defb 0b0h,003h,0f0h,08ah,040h,0f4h,085h,084h,094h,084h,094h,040h,0a0h,0f0h,000h	; 8c47  ....@......@...

; ======================================================================
; CODIGO 0x8c56..0x8c5c  (6 bytes)
; ======================================================================


prepara_escena:		; un paso de la preparacion de la escena de accion (0xE39F, tabla p10:8C5C)
	ld a,(0e39fh)		;8c56
	call 040abh		;8c59   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_8C5C: tabla de 2 palabras del despachador (call 0x408D en
;   0x8C59); lo leen L_40AB (4 bytes)
;   0x8c5c..0x8c60  (4 bytes)
DATA_saltos_8C5C:
	defb 060h,08ch	; 8c5c
	defb 0ach,08ch	; 8c5e

; ======================================================================
; CODIGO 0x8c60..0x8ccd  (109 bytes)
; ======================================================================


monta_escena:		; sprites y proyectiles a cero, la pantalla, el rival (p10:8D00), su sonido y los graficos de 27-28
	ld hl,0f000h		;8c60   ; apunta a los atributos de los 32 sprites
	ld de,0f001h		;8c63
	ld (hl),0e0h		;8c66
	ld bc,0007fh		;8c68
	ldir		;8c6b
	call 05ecah		;8c6d   ; vuelca_sprites: los 32 sprites de 0xF000 a 0x3B00, rotando el orden cada cuadro (0xE006)
	ld hl,0ec30h		;8c70
	ld de,0ec31h		;8c73
	ld (hl),000h		;8c76
	ld bc,0002fh		;8c78
	ldir		;8c7b
	ld a,(0e3a1h)		;8c7d   ; lee la escena de accion (1-9)
	sub 005h		;8c80
	jr z,L_8C8D		;8c82
	dec a			;8c84
	jr z,L_8C8D		;8c85
	dec a			;8c87
	jr z,L_8C8D		;8c88
	dec a			;8c8a
	jr nz,L_8C92		;8c8b
L_8C8D:
	call 058bfh		;8c8d   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	jr L_8C98		;8c90
L_8C92:
	call 058d4h		;8c92   ; borra_zona_de_juego: borra 16 filas x 24 de 0xED00 y las vuelca
	call 058eah		;8c95   ; borra_nombres_sin_ventana: borra 0x1E0 de 0xED00 y los vuelca
L_8C98:
	call crea_rival		;8c98   ; crea_rival: borra 0xE400-0xE7FF y 0xEA00-0xEAFF y pone en 0xEA00 el de la escena 0xE3A1 (p10:8D6F: Y, X, nombre...)
	ld a,(0e3a1h)		;8c9b   ; lee la escena de accion (1-9)
	dec a			;8c9e
	jr z,L_8CA4		;8c9f
	call 0606eh		;8ca1   ; sonido_de_la_escena: pide el sonido de la escena de accion 0xE3A1 (p09:607C)
L_8CA4:
	call 04893h		;8ca4   ; pantalla_de_27: nombres p27:9B8B, fichas p27:9ECB/9ED4 y lo que toque segun 0xE3A1 (tabla p00:48BE)
	ld hl,0e39fh		;8ca7
	inc (hl)			;8caa
	ret			;8cab
mueve_objetos:		; un cuadro de los 8 objetos de 0xEA00 (0x20 bytes): la rutina de su clase
	ld ix,0ea00h		;8cac
	ld b,008h		;8cb0
L_8CB2:
	push bc			;8cb2
	ld a,(ix+000h)		;8cb3   ; lee la clase del objeto (tabla p10:8CCD; 0: libre)
	and a			;8cb6
	call nz,rutina_del_objeto		;8cb7   ; rutina_del_objeto: cuenta un cuadro y salta a la rutina de la clase (ix+0) (tabla p10:8CCD)
	ld de,00020h		;8cba
	add ix,de		;8cbd
	pop bc			;8cbf
	djnz L_8CB2		;8cc0
	ret			;8cc2
rutina_del_objeto:		; cuenta un cuadro y salta a la rutina de la clase (ix+0) (tabla p10:8CCD)
	inc (ix+00fh)		;8cc3
	ld a,(ix+000h)		;8cc6
	dec a			;8cc9
	call 040abh		;8cca   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_8CCD: tabla de 25 palabras del despachador (call 0x408D en
;   0x8CCA); lo leen L_40AB (50 bytes)
;   0x8ccd..0x8cff  (50 bytes)
DATA_saltos_8CCD:
	defb 0d8h,08dh	; 8ccd
	defb 0e6h,090h	; 8ccf
	defb 09eh,093h	; 8cd1
	defb 08ch,096h	; 8cd3
	defb 0e4h,098h	; 8cd5
	defb 00dh,09bh	; 8cd7
	defb 093h,09eh	; 8cd9
	defb 07fh,0a1h	; 8cdb
	defb 07ah,0a4h	; 8cdd
	defb 07dh,0aeh	; 8cdf
	defb 0f6h,0aeh	; 8ce1
	defb 0ffh,08ch	; 8ce3
	defb 0c7h,0afh	; 8ce5
	defb 095h,0b1h	; 8ce7
	defb 026h,0b2h	; 8ce9
	defb 088h,0b4h	; 8ceb
	defb 036h,0b5h	; 8ced
	defb 0c4h,0b5h	; 8cef
	defb 0cch,0a0h	; 8cf1
	defb 0dbh,0a0h	; 8cf3
	defb 0eah,0a0h	; 8cf5
	defb 09bh,0adh	; 8cf7
	defb 09dh,0b7h	; 8cf9
	defb 04ch,0a6h	; 8cfb
	defb 0cbh,0a6h	; 8cfd

; ======================================================================
; CODIGO 0x8cff..0x8d6f  (112 bytes)
; ======================================================================


L_8CFF:
	ret			;8cff
crea_rival:		; borra 0xE400-0xE7FF y 0xEA00-0xEAFF y pone en 0xEA00 el de la escena 0xE3A1 (p10:8D6F: Y, X, nombre...)
	ld hl,0e400h		;8d00   ; apunta a los 8 actores de la sala (0x80 bytes cada uno)
	ld de,0e401h		;8d03
	ld bc,003ffh		;8d06
	ld (hl),000h		;8d09
	ldir		;8d0b
	ld hl,0ea00h		;8d0d
	ld de,0ea01h		;8d10
	ld bc,000ffh		;8d13
	ld (hl),000h		;8d16
	ldir		;8d18
	ld a,(0e3a1h)		;8d1a   ; lee la escena de accion (1-9)
	dec a			;8d1d
	ld de,08d6fh		;8d1e
	call 043a4h		;8d21   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	ex de,hl			;8d24
	ld ix,0ea00h		;8d25
	ld a,(0e3a1h)		;8d29   ; lee la escena de accion (1-9)
	ld (ix+000h),a		;8d2c   ; guarda la clase del objeto (tabla p10:8CCD; 0: libre)
	ld a,(0e3a0h)		;8d2f
	ld (ix+001h),a		;8d32   ; guarda el paso del objeto
	ld a,(hl)			;8d35
	ld (ix+007h),a		;8d36   ; guarda la Y del objeto
	inc hl			;8d39
	ld a,(hl)			;8d3a
	ld (ix+009h),a		;8d3b   ; guarda la X del objeto
	inc hl			;8d3e
	ld a,(hl)			;8d3f
	ld (ix+00bh),a		;8d40   ; guarda la vida del objeto
	inc hl			;8d43
	ld a,(hl)			;8d44
	ld (ix+00eh),a		;8d45   ; guarda si el objeto no lleva sprites (bit 0)
	inc hl			;8d48
	ld a,(hl)			;8d49
	ld (ix+01ah),a		;8d4a
	inc hl			;8d4d
	ld a,(hl)			;8d4e
	ld (ix+015h),a		;8d4f   ; guarda el nombre del objeto
	inc a			;8d52
	ret z			;8d53
	inc hl			;8d54
	ld a,(hl)			;8d55
	ld (ix+016h),a		;8d56
	inc a			;8d59
	ret z			;8d5a
	inc hl			;8d5b
	ld a,(hl)			;8d5c
	ld (ix+017h),a		;8d5d
	inc a			;8d60
	ret z			;8d61
	inc hl			;8d62
	ld a,(hl)			;8d63
	ld (ix+018h),a		;8d64
	inc a			;8d67
	ret z			;8d68
	inc hl			;8d69
	ld a,(hl)			;8d6a
	ld (ix+019h),a		;8d6b
	ret			;8d6e

; ----------------------------------------------------------------------
; DATOS resto_8D6F: lo apuntan con el banco puesto p10:8D1E (0x8D6F); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p10:8D1E (105 bytes)
;   0x8d6f..0x8dd8  (105 bytes)
DATA_resto_8D6F:
	defb 081h,08dh,08ah,08dh,092h,08dh,09ch,08dh,0a6h,08dh,0b0h,08dh,0bah,08dh,0c4h,08dh	; 8d6f  ................
	defb 0ceh,08dh,000h,000h,01eh,001h,001h,096h,020h,084h,0ffh,028h,0d8h,00ah,001h,000h	; 8d7f  ........ ..(....
	defb 075h,074h,0ffh,008h,078h,00ah,001h,000h,05ah,053h,051h,061h,0ffh,040h,080h,014h	; 8d8f  ut..x...ZSQa.@..
	defb 001h,000h,059h,06dh,046h,003h,0ffh,028h,0d8h,00ah,001h,000h,075h,08fh,074h,090h	; 8d9f  ..YmF..(....u.t.
	defb 0ffh,088h,090h,00ah,001h,000h,082h,003h,08ah,003h,0ffh,040h,0b0h,00ah,001h,000h	; 8daf  ...........@....
	defb 082h,003h,08ah,003h,0ffh,088h,090h,00ah,001h,000h,059h,004h,04ch,003h,0ffh,088h	; 8dbf  ..........Y.L...
	defb 090h,00ah,001h,002h,049h,003h,047h,003h,0ffh	; 8dcf  ....I.G..

; ======================================================================
; CODIGO 0x8dd8..0x8dde  (6 bytes)
; ======================================================================


objeto_01:		; la clase 1 de los objetos de 0xEA00 (p10:8CCD): un paso (ix+1) de la tabla p10:8DDE
	ld a,(ix+001h)		;8dd8   ; lee el paso del objeto
	call 040abh		;8ddb   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_8DDE: tabla de 11 palabras del despachador (call 0x408D en
;   0x8DDB); lo leen L_40AB (22 bytes)
;   0x8dde..0x8df4  (22 bytes)
DATA_saltos_8DDE:
	defb 0f8h,08dh	; 8dde
	defb 008h,08eh	; 8de0
	defb 00dh,08eh	; 8de2
	defb 056h,08eh	; 8de4
	defb 05bh,08eh	; 8de6
	defb 075h,08eh	; 8de8
	defb 07ah,08eh	; 8dea
	defb 08ah,08eh	; 8dec
	defb 0b3h,08eh	; 8dee
	defb 0c6h,08eh	; 8df0
	defb 0deh,08eh	; 8df2

; ======================================================================
; CODIGO 0x8df4..0x8eea  (246 bytes)
; ======================================================================


L_8DF4:
	inc (ix+001h)		;8df4   ; sube el paso del objeto
	ret			;8df7
objeto_01_0:		; la clase 1, paso 0
	ld hl,08eeah		;8df8
	ld de,0eea0h		;8dfb
	ld bc,00040h		;8dfe
	ldir		;8e01
	call 05e45h		;8e03   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
	jr L_8DF4		;8e06
objeto_01_1:		; la clase 1, paso 1
	ld (ix+01bh),00ch		;8e08   ; la cuenta del objeto = 0x0C
	ret			;8e0c
objeto_01_2:		; la clase 1, paso 2
	ld a,(0e003h)		;8e0d   ; lee la cuenta de cuadros
	and 003h		;8e10
	ret nz			;8e12
	ld l,(ix+01bh)		;8e13   ; lee la cuenta del objeto
	ld h,000h		;8e16
	add hl,hl			;8e18
	add hl,hl			;8e19
	add hl,hl			;8e1a
	add hl,hl			;8e1b
	add hl,hl			;8e1c
	ld de,0ed00h		;8e1d   ; apunta a los nombres de la pantalla (32 x 24)
	add hl,de			;8e20
	ld de,0000eh		;8e21
	add hl,de			;8e24
	dec (ix+01bh)		;8e25   ; baja la cuenta del objeto
	ld a,(ix+01bh)		;8e28   ; lee la cuenta del objeto
	inc a			;8e2b
	jr z,L_8E50		;8e2c
	ld de,08f2ah		;8e2e
dibujo_a_ram:		; [n] n bytes [salto] hasta 0xFF, de DE a HL (sin pasar de 0xEEA0)
	ld a,(de)			;8e31
	inc de			;8e32
	inc a			;8e33
	jr z,L_8E4D		;8e34
	dec a			;8e36
	ld b,a			;8e37
L_8E38:
	ld a,(de)			;8e38
	ld (hl),a			;8e39
	inc de			;8e3a
	inc hl			;8e3b
	djnz L_8E38		;8e3c
	ld a,(de)			;8e3e
	inc de			;8e3f
	call 040a1h		;8e40   ; hl_mas_a: HL = HL + A
	push hl			;8e43
	ld bc,0eea0h		;8e44
	and a			;8e47
	sbc hl,bc		;8e48
	pop hl			;8e4a
	jr c,dibujo_a_ram		;8e4b
L_8E4D:
	jp 05e45h		;8e4d   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
L_8E50:
	call 0606eh		;8e50   ; sonido_de_la_escena: pide el sonido de la escena de accion 0xE3A1 (p09:607C)
	jp L_8DF4		;8e53
objeto_01_3:		; la clase 1, paso 3
	ld (ix+01bh),001h		;8e56   ; la cuenta del objeto = 0x01
	ret			;8e5a
objeto_01_4:		; la clase 1, paso 4
	call 0606eh		;8e5b   ; sonido_de_la_escena: pide el sonido de la escena de accion 0xE3A1 (p09:607C)
	ld hl,08eeah		;8e5e
	ld de,0eea0h		;8e61
	ld bc,00040h		;8e64
	ldir		;8e67
	ld hl,0ed2eh		;8e69
	ld de,08f2ah		;8e6c
	call dibujo_a_ram		;8e6f   ; dibujo_a_ram: [n] n bytes [salto] hasta 0xFF, de DE a HL (sin pasar de 0xEEA0)
	jp L_8DF4		;8e72
objeto_01_5:		; la clase 1, paso 5
	ld (ix+01bh),000h		;8e75   ; la cuenta del objeto = 0x00
	ret			;8e79
objeto_01_6:		; la clase 1, paso 6
	ld (ix+01bh),000h		;8e7a   ; la cuenta del objeto = 0x00
	ld hl,0ed2eh		;8e7e
	ld de,08f2ah		;8e81
	call dibujo_a_ram		;8e84   ; dibujo_a_ram: [n] n bytes [salto] hasta 0xFF, de DE a HL (sin pasar de 0xEEA0)
	jp L_8DF4		;8e87
objeto_01_7:		; la clase 1, paso 7
	ld a,(0e003h)		;8e8a   ; lee la cuenta de cuadros
	and 003h		;8e8d
	ret nz			;8e8f
	ld l,(ix+01bh)		;8e90   ; lee la cuenta del objeto
	ld h,000h		;8e93
	add hl,hl			;8e95
	add hl,hl			;8e96
	add hl,hl			;8e97
	add hl,hl			;8e98
	add hl,hl			;8e99
	ld de,0ed00h		;8e9a   ; apunta a los nombres de la pantalla (32 x 24)
	add hl,de			;8e9d
	ld de,0000eh		;8e9e
	add hl,de			;8ea1
	inc (ix+01bh)		;8ea2   ; sube la cuenta del objeto
	ld a,(ix+01bh)		;8ea5   ; lee la cuenta del objeto
	cp 00eh		;8ea8
	jp z,L_8DF4		;8eaa
	ld de,08ff9h		;8ead
	jp dibujo_a_ram		;8eb0   ; dibujo_a_ram: [n] n bytes [salto] hasta 0xFF, de DE a HL (sin pasar de 0xEEA0)
objeto_01_8:		; la clase 1, paso 8
	ld hl,07820h		;8eb3
	ld (0f028h),hl		;8eb6
	ld hl,00074h		;8eb9
	ld (0f02ah),hl		;8ebc
	ld (ix+01bh),010h		;8ebf   ; la cuenta del objeto = 0x10
	jp L_8DF4		;8ec3
objeto_01_9:		; la clase 1, paso 9
	dec (ix+01bh)		;8ec6   ; baja la cuenta del objeto
	jp z,L_8DF4		;8ec9
	ld a,(ix+01bh)		;8ecc   ; lee la cuenta del objeto
	and 00ch		;8ecf
	rra			;8ed1
	rra			;8ed2
	ld hl,090e2h		;8ed3
	call 040a1h		;8ed6   ; hl_mas_a: HL = HL + A
	ld a,(hl)			;8ed9
	ld (0f02bh),a		;8eda
	ret			;8edd
restaura_marco:		; 0x40 bytes de p10:8EEA a 0xEEA0
	ld hl,08eeah		;8ede
	ld de,0eea0h		;8ee1
	ld bc,00040h		;8ee4
	ldir		;8ee7
	ret			;8ee9

; ----------------------------------------------------------------------
; DATOS resto_8EEA: lo apuntan con el banco puesto p10:8DF8 (0x8EEA), p10:8E5E
;   (0x8EEA), p10:8EDE (0x8EEA), p10:8E2E (0x8F2A), p10:8E6C (0x8F2A),
;   p10:8E81 (0x8F2A); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p10:8DF8, p10:8E5E, p10:8EDE, p10:8E2E, p10:8E6C,
;   p10:8E81 (508 bytes)
;   0x8eea..0x90e6  (508 bytes)
DATA_resto_8EEA:
	defb 06dh,06ch,06ch,06dh,06dh,06ch,06ch,06dh,06dh,06ch,06ch,06dh,06dh,06ch,06ch,06dh	; 8eea  mllmmllmmllmmllm
	defb 06dh,06ch,06ch,06dh,06dh,06ch,06ch,06dh,06dh,06ch,06ch,06dh,06dh,06ch,06ch,06dh	; 8efa  mllmmllmmllmmllm
	defb 06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh	; 8f0a  kkkkkkkkkkkkkkkk
	defb 06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh,06bh	; 8f1a  kkkkkkkkkkkkkkkk
	defb 004h,010h,01eh,07ch,06eh,01ah,008h,011h,019h,020h,026h,084h,07eh,077h,06fh,017h	; 8f2a  ...|n.... &.~wo.
	defb 00ah,024h,034h,025h,066h,061h,0bfh,0c4h,083h,092h,082h,016h,00ah,021h,022h,067h	; 8f3a  .$4%fa.......!"g
	defb 062h,048h,0a6h,0c0h,0c5h,080h,07fh,015h,00ch,023h,01dh,068h,05fh,065h,03fh,09dh	; 8f4a  bH.......#.h_e?.
	defb 0c3h,0bdh,0c6h,07bh,081h,013h,00eh,012h,02fh,069h,064h,063h,051h,049h,0a7h,0afh	; 8f5a  ...{..../idcQI..
	defb 0c1h,0c2h,0c7h,08dh,070h,011h,010h,015h,027h,033h,052h,043h,042h,04ah,040h,09eh	; 8f6a  ....p...'3RCBJ@.
	defb 0a8h,0a0h,0a1h,0b0h,091h,085h,073h,00fh,012h,014h,028h,02bh,054h,053h,04ch,044h	; 8f7a  ......s...(+TSLD
	defb 04bh,04eh,0ach,0a9h,0a2h,0aah,0b1h,0b2h,089h,086h,072h,00dh,014h,018h,029h,02ah	; 8f8a  KN........r...)*
	defb 017h,055h,060h,047h,046h,045h,04dh,0abh,0a3h,0a4h,0a5h,0beh,0b3h,075h,088h,087h	; 8f9a  .U`GFEM......u..
	defb 076h,00bh,016h,013h,032h,031h,030h,058h,057h,056h,03eh,041h,050h,04fh,0adh,0aeh	; 8faa  v...210XWV>APO..
	defb 09fh,09ch,0b4h,0b5h,0b6h,08eh,08fh,090h,071h,009h,018h,016h,02ch,02dh,02eh,01fh	; 8fba  ........q...,-..
	defb 05bh,05ah,059h,03ah,03bh,03ch,03dh,09bh,09ah,099h,098h,0b7h,0b8h,0b9h,07dh,08ch	; 8fca  [ZY:.<=.......}.
	defb 08bh,08ah,074h,008h,018h,01bh,035h,036h,01ah,01ch,05eh,05dh,05ch,06ah,037h,038h	; 8fda  ..t...56..^]\j78
	defb 039h,097h,096h,095h,0c8h,0bah,0bbh,0bch,07ah,078h,094h,093h,079h,000h,0ffh,004h	; 8fea  9.......zx..y...
	defb 000h,000h,000h,000h,01ah,008h,000h,000h,010h,01eh,07ch,06eh,000h,000h,017h,00ah	; 8ffa  ..........|n....
	defb 000h,011h,019h,020h,026h,084h,07eh,077h,06fh,000h,016h,00ah,024h,034h,025h,066h	; 900a  ... &.~wo...$4%f
	defb 061h,0bfh,0c4h,083h,092h,082h,015h,00ch,000h,021h,022h,067h,062h,048h,0a6h,0c0h	; 901a  a........!"gbH..
	defb 0c5h,080h,07fh,000h,013h,00eh,000h,023h,01dh,068h,05fh,065h,03fh,09dh,0c3h,0bdh	; 902a  .......#.h_e?...
	defb 0c6h,07bh,081h,000h,011h,010h,000h,012h,02fh,069h,064h,063h,051h,049h,0a7h,0afh	; 903a  .{....../idcQI..
	defb 0c1h,0c2h,0c7h,08dh,070h,000h,00fh,012h,000h,015h,027h,033h,052h,043h,042h,04ah	; 904a  ....p.....'3RCBJ
	defb 040h,09eh,0a8h,0a0h,0a1h,0b0h,091h,085h,073h,000h,00dh,014h,000h,014h,028h,02bh	; 905a  @.......s.....(+
	defb 054h,053h,04ch,044h,04bh,04eh,0ach,0a9h,0a2h,0aah,0b1h,0b2h,089h,086h,072h,000h	; 906a  TSLDKN........r.
	defb 00bh,016h,000h,018h,029h,02ah,017h,055h,060h,047h,046h,045h,04dh,0abh,0a3h,0a4h	; 907a  ....)*.U`GFEM...
	defb 0a5h,0beh,0b3h,075h,088h,087h,076h,000h,009h,018h,000h,013h,032h,031h,030h,058h	; 908a  ...u..v.....210X
	defb 057h,056h,03eh,041h,050h,04fh,0adh,0aeh,09fh,09ch,0b4h,0b5h,0b6h,08eh,08fh,090h	; 909a  WV>APO..........
	defb 071h,000h,008h,018h,016h,02ch,02dh,02eh,01fh,05bh,05ah,059h,03ah,03bh,03ch,03dh	; 90aa  q....,-..[ZY:.<=
	defb 09bh,09ah,099h,098h,0b7h,0b8h,0b9h,07dh,08ch,08bh,08ah,074h,008h,018h,01bh,035h	; 90ba  .......}...t...5
	defb 036h,01ah,01ch,05eh,05dh,05ch,06ah,037h,038h,039h,097h,096h,095h,0c8h,0bah,0bbh	; 90ca  6..^]\j789......
	defb 0bch,07ah,078h,094h,093h,079h,000h,0ffh,006h,008h,009h,00ah	; 90da  .zx..y......

; ======================================================================
; CODIGO 0x90e6..0x90ec  (6 bytes)
; ======================================================================


objeto_02:		; la clase 2 de los objetos de 0xEA00 (p10:8CCD): un paso (ix+1) de la tabla p10:90EC
	ld a,(ix+001h)		;90e6   ; lee el paso del objeto
	call 040abh		;90e9   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_90EC: tabla de 8 palabras del despachador (call 0x408D en
;   0x90E9); lo leen L_40AB (16 bytes)
;   0x90ec..0x90fc  (16 bytes)
DATA_saltos_90EC:
	defb 000h,091h	; 90ec
	defb 018h,091h	; 90ee
	defb 020h,091h	; 90f0
	defb 057h,091h	; 90f2
	defb 063h,091h	; 90f4
	defb 08fh,091h	; 90f6
	defb 0a7h,091h	; 90f8
	defb 0b0h,091h	; 90fa

; ======================================================================
; CODIGO 0x90fc..0x91b6  (186 bytes)
; ======================================================================


L_90FC:
	inc (ix+001h)		;90fc   ; sube el paso del objeto
	ret			;90ff
objeto_02_0:		; la clase 2, paso 0
	ld de,091b6h		;9100
	call dibujo_con_destino		;9103   ; dibujo_con_destino: [destino] y el dibujo de DE (p10:9140) y vuelca los nombres
	ld de,0924eh		;9106
	call dibujo_con_destino		;9109   ; dibujo_con_destino: [destino] y el dibujo de DE (p10:9140) y vuelca los nombres
	ld a,040h		;910c
	ld (0e004h),a		;910e   ; guarda la espera del estado, en cuadros
	ld (ix+01bh),000h		;9111   ; la cuenta del objeto = 0x00
	jp L_90FC		;9115
objeto_02_1:		; la clase 2, paso 1
	ld hl,0e004h		;9118   ; apunta a la espera del estado, en cuadros
	dec (hl)			;911b
	ret nz			;911c
	jp L_90FC		;911d
objeto_02_2:		; la clase 2, paso 2
	ld a,(0e003h)		;9120   ; lee la cuenta de cuadros
	and 00fh		;9123
	ret nz			;9125
	ld a,(ix+01bh)		;9126   ; lee la cuenta del objeto
	ld de,09244h		;9129
	call 043a4h		;912c   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	inc (ix+01bh)		;912f   ; sube la cuenta del objeto
	ld a,(ix+01bh)		;9132   ; lee la cuenta del objeto
	cp 005h		;9135
	jp z,L_90FC		;9137
dibujo_con_destino:		; [destino] y el dibujo de DE (p10:9140) y vuelca los nombres
	ld a,(de)			;913a
	ld l,a			;913b
	inc de			;913c
	ld a,(de)			;913d
	ld h,a			;913e
	inc de			;913f
L_9140:
	ld a,(de)			;9140
	inc de			;9141
	inc a			;9142
	jr z,L_9154		;9143
	dec a			;9145
	ld b,a			;9146
L_9147:
	ld a,(de)			;9147
	ld (hl),a			;9148
	inc de			;9149
	inc hl			;914a
	djnz L_9147		;914b
	ld a,(de)			;914d
	inc de			;914e
	call 040a1h		;914f   ; hl_mas_a: HL = HL + A
	jr L_9140		;9152
L_9154:
	jp 05e45h		;9154   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
objeto_02_3:		; la clase 2, paso 3
	ld (ix+00dh),002h		;9157   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x02
	ld (ix+01bh),00fh		;915b   ; la cuenta del objeto = 0x0F
	call 0a99bh		;915f   ; lanza_objetos: si el personaje no esta tocado, lo que lanza la escena (p11:A9A8)
	ret			;9162
objeto_02_4:		; la clase 2, paso 4
	ld (ix+00dh),000h		;9163   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x00
	dec (ix+01bh)		;9167   ; baja la cuenta del objeto
	jr z,L_918A		;916a
	bit 0,(ix+01bh)		;916c   ; mira el bit 0 de la cuenta del objeto
	ret nz			;9170
	ld a,(ix+01bh)		;9171   ; lee la cuenta del objeto
	and 002h		;9174
	ld de,02423h		;9176
	jr z,L_917E		;9179
	ld de,0491fh		;917b
L_917E:
	ld hl,038bbh		;917e
	ld a,e			;9181
	call 0004dh		;9182   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;9185
	ld a,d			;9186
	jp 0004dh		;9187   ; BIOS WRTVRM - Writes data in VRAM
L_918A:
	ld (ix+001h),003h		;918a   ; el paso del objeto = 0x03
	ret			;918e
objeto_02_5:		; la clase 2, paso 5
	ld hl,0e004h		;918f   ; apunta a la espera del estado, en cuadros
	dec (hl)			;9192
	ld a,(hl)			;9193
	and a			;9194
	jp z,L_90FC		;9195
	and 001h		;9198
	ret nz			;919a
	ld a,(hl)			;919b
	and 002h		;919c
	ld b,00fh		;919e
	jr z,L_91A4		;91a0
	ld b,000h		;91a2
L_91A4:
	jp 058a7h		;91a4   ; color_de_borde: VDP R#7 = B
objeto_02_6:		; la clase 2, paso 6
	ld de,09354h		;91a7
	call dibujo_con_destino		;91aa   ; dibujo_con_destino: [destino] y el dibujo de DE (p10:9140) y vuelca los nombres
	jp L_90FC		;91ad
jefe_2_vencido:		; pone el bit 6 de 0xEB7D
	ld hl,0eb7dh		;91b0   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	set 6,(hl)		;91b3
	ret			;91b5

; ----------------------------------------------------------------------
; DATOS resto_91B6: lo apuntan con el banco puesto p10:9100 (0x91B6), p10:9129
;   (0x9244), p10:9106 (0x924E), p10:91A7 (0x9354); el tamano es lo que hay
;   hasta lo siguiente, no sale de recorrerlo; lo leen p10:9100, p10:9129,
;   p10:9106, p10:91A7 (488 bytes)
;   0x91b6..0x939e  (488 bytes)
DATA_resto_91B6:
	defb 000h,0edh,020h,047h,054h,04ch,04eh,047h,054h,04ch,04eh,047h,054h,04ch,04eh,047h	; 91b6  .. GTLNGTLNGTLNG
	defb 054h,04ch,04eh,047h,054h,04ch,04eh,047h,054h,04ch,04eh,051h,040h,04fh,041h,025h	; 91c6  TLNGTLNGTLNQ@OA%
	defb 055h,025h,055h,019h,007h,03dh,048h,050h,056h,042h,056h,042h,01ah,006h,039h,046h	; 91d6  U%U..=HPVBVB..9F
	defb 04fh,041h,04fh,041h,01eh,002h,048h,050h,01eh,002h,025h,055h,01eh,002h,056h,042h	; 91e6  OAOA..HP..%U..VB
	defb 01eh,002h,04fh,041h,01eh,002h,048h,050h,01eh,002h,037h,05eh,01eh,002h,05dh,04dh	; 91f6  ..OA..HP..7^..]M
	defb 01eh,002h,060h,04eh,01eh,002h,04bh,05fh,017h,001h,017h,006h,002h,037h,05eh,015h	; 9206  ..`N..K_.....7^.
	defb 02bh,01dh,01ch,035h,02fh,036h,064h,038h,030h,065h,05dh,04dh,06fh,06eh,061h,062h	; 9216  +..5/6d80e]Monab
	defb 06fh,06eh,061h,062h,06fh,06eh,061h,062h,06fh,06eh,061h,062h,06fh,06eh,061h,062h	; 9226  onabonabonabonab
	defb 05ah,04ch,05bh,063h,059h,05ch,059h,05ch,059h,05ch,059h,05ch,000h,0ffh,04eh,092h	; 9236  ZL[cY\Y\Y\Y\..N.
	defb 087h,092h,0c4h,092h,00ah,093h,054h,093h,07bh,0edh,003h,03fh,048h,050h,01dh,003h	; 9246  ......T.{..?HP..
	defb 03eh,02ch,02eh,01dh,003h,030h,033h,026h,01dh,003h,031h,01eh,045h,01dh,003h,053h	; 9256  >,...03&..1.E..S
	defb 01dh,043h,01dh,003h,06ah,01eh,01fh,01dh,003h,032h,067h,053h,01dh,003h,033h,074h	; 9266  .C..j....2gS..3t
	defb 054h,01ch,004h,03fh,06ch,066h,055h,01ah,006h,034h,03ah,06bh,069h,058h,015h,000h	; 9276  T..?lfU..4:kiX..
	defb 0ffh,07bh,0edh,003h,03fh,048h,050h,01dh,003h,036h,04ah,02eh,01dh,003h,021h,034h	; 9286  .{..?HP..6J...!4
	defb 026h,01ch,004h,01bh,01ch,01eh,045h,01ch,004h,04bh,022h,01dh,043h,01ch,004h,03ch	; 9296  &.....E..K".C..<
	defb 03dh,01eh,01fh,01ch,004h,031h,068h,067h,053h,01dh,003h,03eh,074h,054h,01ch,004h	; 92a6  =....1hgS..>tT..
	defb 03fh,06ch,066h,055h,01ah,006h,034h,03ah,06bh,069h,058h,015h,000h,0ffh,07bh,0edh	; 92b6  ?lfU..4:kiX...{.
	defb 003h,03ch,048h,050h,01ch,004h,017h,02dh,02ah,052h,01ch,004h,015h,01ah,044h,026h	; 92c6  .<HP...-*R....D&
	defb 01bh,005h,016h,035h,018h,01eh,045h,01bh,005h,04dh,038h,03ah,01dh,043h,01bh,005h	; 92d6  ...5..E..M8:.C..
	defb 072h,071h,052h,01eh,01fh,01bh,005h,049h,04fh,070h,067h,053h,01ch,004h,019h,040h	; 92e6  rqR....IOpgS...@
	defb 046h,03bh,01ah,006h,01ah,028h,042h,041h,039h,075h,01ah,006h,027h,04ah,06bh,069h	; 92f6  F....(BA9u..'Jki
	defb 06dh,015h,000h,0ffh,07bh,0edh,003h,03ch,048h,050h,01ch,004h,020h,027h,02ah,052h	; 9306  m...{..<HP.. '*R
	defb 01ch,004h,029h,023h,024h,026h,01bh,005h,02bh,02fh,019h,01eh,045h,01ah,006h,032h	; 9316  ..)#$&..+/..E..2
	defb 03bh,028h,037h,01dh,043h,01ah,006h,073h,050h,051h,043h,044h,045h,01ah,006h,02eh	; 9326  .(7.C..sPQCDE...
	defb 047h,048h,02ch,02dh,02bh,01bh,005h,01bh,016h,056h,000h,02ah,01ah,006h,018h,018h	; 9336  GH,-+....V.*....
	defb 000h,057h,025h,029h,01ah,006h,020h,021h,022h,023h,024h,026h,000h,0ffh,07bh,0edh	; 9346  .W%).. !"#$&..{.
	defb 003h,03ch,048h,050h,01ch,004h,03eh,027h,02ah,052h,01ch,004h,03fh,01ah,044h,026h	; 9356  .<HP..>'*R..?.D&
	defb 01bh,005h,016h,035h,018h,018h,045h,01ah,006h,032h,038h,038h,01dh,01dh,043h,01ah	; 9366  ...5..E..288..C.
	defb 006h,031h,050h,071h,01eh,052h,01fh,01ah,006h,000h,02dh,048h,02dh,031h,053h,01bh	; 9376  .1Pq.R....-H-1S.
	defb 005h,000h,000h,056h,000h,06ah,01ah,006h,000h,000h,000h,057h,000h,01ch,01ah,006h	; 9386  ...V.j.....W....
	defb 027h,021h,01ch,017h,05eh,015h,000h,0ffh	; 9396  '!..^...

; ======================================================================
; CODIGO 0x939e..0x93a4  (6 bytes)
; ======================================================================


objeto_03:		; la clase 3 de los objetos de 0xEA00 (p10:8CCD): un paso (ix+1) de la tabla p10:93A4
	ld a,(ix+001h)		;939e   ; lee el paso del objeto
	call 040abh		;93a1   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_93A4: tabla de 4 palabras del despachador (call 0x408D en
;   0x93A1); lo leen L_40AB (8 bytes)
;   0x93a4..0x93ac  (8 bytes)
DATA_saltos_93A4:
	defb 0b0h,093h	; 93a4
	defb 0f0h,093h	; 93a6
	defb 008h,094h	; 93a8
	defb 020h,094h	; 93aa

; ======================================================================
; CODIGO 0x93ac..0x94d1  (293 bytes)
; ======================================================================


L_93AC:
	inc (ix+001h)		;93ac   ; sube el paso del objeto
	ret			;93af
objeto_03_0:		; la clase 3, paso 0
	ld c,0ffh		;93b0
	ld de,094d1h		;93b2
	call dibujo_con_mascara		;93b5   ; dibujo_con_mascara: [destino] y el dibujo de DE, cada byte AND C
	ld de,09587h		;93b8
	call dibujo_con_mascara		;93bb   ; dibujo_con_mascara: [destino] y el dibujo de DE, cada byte AND C
	ld de,09626h		;93be
	call dibujo_con_mascara		;93c1   ; dibujo_con_mascara: [destino] y el dibujo de DE, cada byte AND C
	ld hl,0eea0h		;93c4
	ld de,0eea1h		;93c7
	ld bc,0005fh		;93ca
	ld (hl),010h		;93cd
	ldir		;93cf
	ld a,001h		;93d1
	ld (ix+01eh),a		;93d3   ; guarda la posicion del dibujo del objeto (bajo)
	ld (ix+01fh),a		;93d6   ; guarda la posicion del dibujo del objeto (alto)
	inc a			;93d9
	ld (ix+00dh),a		;93da   ; guarda los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles)
	ld a,005h		;93dd
	ld (ix+01ch),a		;93df   ; guarda la segunda cuenta del objeto
	ld (ix+01dh),a		;93e2   ; guarda la accion del objeto
	ld hl,0e3a6h		;93e5
	dec a			;93e8
	ld (hl),a			;93e9
	call 05e51h		;93ea   ; vuelca_nombres: 0x300 de 0xED00 a 0x3800
	jp L_93AC		;93ed
objeto_03_1:		; la clase 3, paso 1
	call L_9496		;93f0
	call L_94A4		;93f3
	call L_9440		;93f6
	call L_9461		;93f9
	call L_949A		;93fc
	call L_94A8		;93ff
	call 0a99bh		;9402   ; lanza_objetos: si el personaje no esta tocado, lo que lanza la escena (p11:A9A8)
	jp 05e51h		;9405   ; vuelca_nombres: 0x300 de 0xED00 a 0x3800
objeto_03_2:		; la clase 3, paso 2
	ld hl,0e004h		;9408   ; apunta a la espera del estado, en cuadros
	dec (hl)			;940b
	ld a,(hl)			;940c
	and a			;940d
	jp z,L_93AC		;940e
	and 001h		;9411
	ret nz			;9413
	ld a,(hl)			;9414
	and 002h		;9415
	ld b,00fh		;9417
	jr z,L_941D		;9419
	ld b,000h		;941b
L_941D:
	jp 058a7h		;941d   ; color_de_borde: VDP R#7 = B
jefe_3_vencido:		; pone el bit 5 de 0xEB7D y salta a la sala 0x159
	ld hl,0eb7dh		;9420   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	set 5,(hl)		;9423
	xor a			;9425
	ld (0e368h),a		;9426   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;9429
	ld (0e360h),a		;942a   ; guarda el modo dentro de la sala (tabla p00:5A83)
	inc a			;942d
	ld (0e337h),a		;942e   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00159h		;9431
	ld (0e36ah),hl		;9434   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
	ld hl,08030h		;9437
	ld (0e3c1h),hl		;943a   ; guarda la Y del personaje y el byte siguiente (16 bits)
	jp 058eah		;943d   ; borra_nombres_sin_ventana: borra 0x1E0 de 0xED00 y los vuelca
L_9440:
	ld a,(ix+013h)		;9440
	and a			;9443
	ret nz			;9444
	dec (ix+01ch)		;9445   ; baja la segunda cuenta del objeto
	ret nz			;9448
	ld (ix+01ch),005h		;9449   ; la segunda cuenta del objeto = 0x05
	call al_azar_0_2		;944d   ; al_azar_0_2: A = 0-2 al azar
	ld b,a			;9450
	ld a,(ix+01eh)		;9451   ; lee la posicion del dibujo del objeto (bajo)
	cp 001h		;9454
	jr z,L_945D		;9456
	cp b			;9458
	jr z,L_945D		;9459
	ld b,001h		;945b
L_945D:
	ld (ix+01eh),b		;945d   ; guarda la posicion del dibujo del objeto (bajo)
	ret			;9460
L_9461:
	ld a,(ix+014h)		;9461
	and a			;9464
	ret nz			;9465
	dec (ix+01dh)		;9466   ; baja la accion del objeto
	ret nz			;9469
	ld (ix+01dh),005h		;946a   ; la accion del objeto = 0x05
	call al_azar_0_2		;946e   ; al_azar_0_2: A = 0-2 al azar
	ld b,a			;9471
	ld a,(ix+01fh)		;9472   ; lee la posicion del dibujo del objeto (alto)
	cp 001h		;9475
	jr z,L_947E		;9477
	cp b			;9479
	jr z,L_947E		;947a
	ld b,001h		;947c
L_947E:
	ld (ix+01fh),b		;947e   ; guarda la posicion del dibujo del objeto (alto)
	ret			;9481
al_azar_0_2:		; A = 0-2 al azar
	ld a,r		;9482
	rra			;9484
	and 003h		;9485
	cp 003h		;9487
	ret nz			;9489
	ld a,(0e003h)		;948a   ; lee la cuenta de cuadros
	and 00ch		;948d
	rra			;948f
	rra			;9490
	cp 003h		;9491
	ret nz			;9493
	dec a			;9494
	ret			;9495
L_9496:
	ld c,000h		;9496
	jr L_949C		;9498
L_949A:
	ld c,0ffh		;949a
L_949C:
	ld a,(ix+01eh)		;949c   ; lee la posicion del dibujo del objeto (bajo)
	ld de,0954eh		;949f
	jr L_94B0		;94a2
L_94A4:
	ld c,000h		;94a4
	jr L_94AA		;94a6
L_94A8:
	ld c,0ffh		;94a8
L_94AA:
	ld a,(ix+01fh)		;94aa   ; lee la posicion del dibujo del objeto (alto)
	ld de,095edh		;94ad
L_94B0:
	call 043a4h		;94b0   ; palabra_de_tabla: DE = la palabra A de la tabla DE
dibujo_con_mascara:		; [destino] y el dibujo de DE, cada byte AND C
	ld a,(de)			;94b3
	ld l,a			;94b4
	inc de			;94b5
	ld a,(de)			;94b6
	ld h,a			;94b7
	inc de			;94b8
L_94B9:
	ld a,(de)			;94b9
	inc de			;94ba
	inc a			;94bb
	ret z			;94bc
	dec a			;94bd
	ld b,a			;94be
L_94BF:
	ld a,(de)			;94bf
	and c			;94c0
	ld (hl),a			;94c1
	inc de			;94c2
	inc hl			;94c3
	djnz L_94BF		;94c4
	ld a,(de)			;94c6
	ld b,c			;94c7
	ld c,a			;94c8
	ld a,b			;94c9
	ld b,000h		;94ca
	inc de			;94cc
	add hl,bc			;94cd
	ld c,a			;94ce
	jr L_94B9		;94cf

; ----------------------------------------------------------------------
; DATOS resto_94D1: lo apuntan con el banco puesto p10:93B2 (0x94D1), p10:949F
;   (0x954E), p10:93B8 (0x9587), p10:94AD (0x95ED), p10:93BE (0x9626); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p10:93B2, p10:949F, p10:93B8, p10:94AD, p10:93BE (443 bytes)
;   0x94d1..0x968c  (443 bytes)
DATA_resto_94D1:
	defb 02fh,0edh,002h,06fh,0cfh,01eh,002h,05ah,0bah,01dh,004h,023h,05bh,0bbh,083h,01ch	; 94d1  /..o...Z...#[...
	defb 004h,05eh,05ch,0bch,0beh,01ch,004h,055h,05dh,0bdh,0b5h,01ch,004h,03dh,03ch,09ch	; 94e1  .^\....U]....=<.
	defb 09dh,01ch,004h,05fh,02eh,08eh,0bfh,01bh,006h,04bh,04ch,04dh,08bh,08ah,089h,019h	; 94f1  ..._.....KLM....
	defb 008h,039h,03ah,03bh,03ch,07ah,079h,078h,077h,016h,00ch,033h,034h,035h,036h,037h	; 9501  .9:.<zyxw..34567
	defb 038h,076h,075h,074h,073h,072h,071h,012h,010h,02bh,02ch,02dh,02eh,02fh,030h,031h	; 9511  8vutsrq..+,-./01
	defb 032h,070h,06fh,06eh,06dh,06ch,06bh,06ah,069h,008h,020h,01fh,01eh,01fh,01eh,01fh	; 9521  2ponmlkji. .....
	defb 020h,021h,022h,023h,024h,025h,026h,027h,028h,029h,02ah,068h,067h,066h,065h,064h	; 9531   !"#$%&'()*hgfed
	defb 063h,062h,061h,060h,05fh,05eh,05dh,05ch,05dh,05ch,05dh,000h,0ffh,054h,095h,087h	; 9541  cba`_^]\]\]..T..
	defb 095h,0bch,095h,006h,0edh,003h,02fh,030h,025h,01dh,003h,060h,062h,040h,01dh,005h	; 9551  ....../0%..`b@..
	defb 061h,063h,064h,041h,042h,01ch,007h,021h,014h,044h,045h,065h,066h,026h,01ah,006h	; 9561  acdAB..!.DEef&..
	defb 013h,043h,049h,048h,011h,012h,01ch,004h,010h,047h,039h,03ah,01eh,002h,046h,031h	; 9571  .CIH.....G9:..F1
	defb 01eh,002h,015h,067h,000h,0ffh,06ch,0edh,002h,027h,024h,018h,008h,029h,000h,000h	; 9581  ...g..l..'$..)..
	defb 000h,028h,03bh,06ch,03eh,016h,00ah,068h,069h,016h,06ah,06bh,04ah,058h,059h,06dh	; 9591  .(.l>..hi.jkJXYm
	defb 03fh,016h,00ah,022h,057h,056h,06eh,038h,04ch,017h,018h,04bh,031h,016h,00ah,02ah	; 95a1  ?.."WVn8L..K1..*
	defb 019h,01ah,01bh,01ch,01dh,01eh,01fh,015h,067h,000h,0ffh,08bh,0edh,003h,02bh,04eh	; 95b1  ........g.....+N
	defb 04fh,01dh,003h,032h,050h,033h,01bh,005h,02ch,034h,051h,035h,036h,019h,007h,037h	; 95c1  O..2P3..,4Q56..7
	defb 02dh,052h,053h,054h,020h,04dh,017h,007h,042h,04ah,03dh,048h,045h,046h,03eh,01ah	; 95d1  -RST M..BJ=HEF>.
	defb 005h,044h,043h,03fh,040h,041h,01bh,002h,047h,049h,000h,0ffh,0f3h,095h,026h,096h	; 95e1  .DC?@A..GI....&.
	defb 05bh,096h,017h,0edh,003h,085h,090h,08fh,01dh,003h,0a0h,0c2h,0c0h,01bh,005h,0a2h	; 95f1  [...............
	defb 0a1h,0c4h,0c3h,0c1h,018h,007h,086h,0c6h,0c5h,0a5h,0a4h,074h,081h,019h,006h,072h	; 9601  ...........t...r
	defb 071h,0a8h,0a9h,0a3h,073h,01ah,004h,09ah,099h,0a7h,070h,01ch,002h,091h,0a6h,01eh	; 9611  q...s.....p.....
	defb 002h,0c7h,075h,000h,0ffh,072h,0edh,002h,084h,087h,01eh,008h,09eh,0cch,09bh,088h	; 9621  ..u..r..........
	defb 000h,000h,000h,089h,018h,00ah,09fh,0cdh,0b9h,0b8h,0aah,0cbh,0cah,076h,0c9h,0c8h	; 9631  .............v..
	defb 016h,00ah,091h,0abh,078h,077h,0ach,098h,0ceh,0b6h,0b7h,082h,016h,00ah,0c7h,075h	; 9641  ....xw.........u
	defb 07fh,07eh,07dh,07ch,07bh,07ah,079h,08ah,000h,0ffh,092h,0edh,003h,0afh,0aeh,08bh	; 9651  .~}|{zy.........
	defb 01dh,003h,093h,0b0h,092h,01dh,005h,096h,095h,0b1h,094h,08ch,01bh,007h,0adh,080h	; 9661  ................
	defb 0b4h,0b3h,0b2h,08dh,097h,01bh,007h,07ch,084h,083h,086h,07bh,088h,080h,01ah,005h	; 9671  .......|...{....
	defb 07fh,07eh,07dh,081h,082h,01eh,002h,087h,085h,000h,0ffh	; 9681  .~}........

; ======================================================================
; CODIGO 0x968c..0x9692  (6 bytes)
; ======================================================================


objeto_04:		; la clase 4 de los objetos de 0xEA00 (p10:8CCD): un paso (ix+1) de la tabla p10:9692
	ld a,(ix+001h)		;968c   ; lee el paso del objeto
	call 040abh		;968f   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_9692: tabla de 6 palabras del despachador (call 0x408D en
;   0x968F); lo leen L_40AB (12 bytes)
;   0x9692..0x969e  (12 bytes)
DATA_saltos_9692:
	defb 0a2h,096h	; 9692
	defb 008h,097h	; 9694
	defb 010h,097h	; 9696
	defb 04eh,097h	; 9698
	defb 052h,097h	; 969a
	defb 06ah,097h	; 969c

; ======================================================================
; CODIGO 0x969e..0x978a  (236 bytes)
; ======================================================================


L_969E:
	inc (ix+001h)		;969e   ; sube el paso del objeto
	ret			;96a1
objeto_04_0:		; la clase 4, paso 0
	ld a,040h		;96a2
	ld (0e004h),a		;96a4   ; guarda la espera del estado, en cuadros
	ld (ix+01bh),000h		;96a7   ; la cuenta del objeto = 0x00
	ld hl,0ed24h		;96ab
	ld bc,00c01h		;96ae
	call bloques_de_fichas		;96b1   ; bloques_de_fichas: B x C bloques de 2 x 2 con las fichas 0x10-0x13
	ld hl,0ed64h		;96b4
	ld bc,00105h		;96b7
	call bloques_de_fichas		;96ba   ; bloques_de_fichas: B x C bloques de 2 x 2 con las fichas 0x10-0x13
	ld hl,0ed7ah		;96bd
	ld bc,00105h		;96c0
	call bloques_de_fichas		;96c3   ; bloques_de_fichas: B x C bloques de 2 x 2 con las fichas 0x10-0x13
	ld hl,0eea4h		;96c6
	ld bc,00c01h		;96c9
	call bloques_de_fichas		;96cc   ; bloques_de_fichas: B x C bloques de 2 x 2 con las fichas 0x10-0x13
	ld hl,0ed66h		;96cf
	ld de,0000ch		;96d2
	ld c,00ah		;96d5
L_96D7:
	ld b,014h		;96d7
L_96D9:
	ld (hl),018h		;96d9
	inc hl			;96db
	djnz L_96D9		;96dc
	add hl,de			;96de
	dec c			;96df
	jr nz,L_96D7		;96e0
	call 05e45h		;96e2   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
	jr L_969E		;96e5
bloques_de_fichas:		; B x C bloques de 2 x 2 con las fichas 0x10-0x13
	ld de,00020h		;96e7
L_96EA:
	push bc			;96ea
	push hl			;96eb
L_96EC:
	ld a,010h		;96ec
	push hl			;96ee
	push hl			;96ef
	ld (hl),a			;96f0
	inc a			;96f1
	inc hl			;96f2
	ld (hl),a			;96f3
	inc a			;96f4
	pop hl			;96f5
	add hl,de			;96f6
	ld (hl),a			;96f7
	inc a			;96f8
	inc hl			;96f9
	ld (hl),a			;96fa
	pop hl			;96fb
	inc hl			;96fc
	inc hl			;96fd
	djnz L_96EC		;96fe
	pop hl			;9700
	add hl,de			;9701
	add hl,de			;9702
	pop bc			;9703
	dec c			;9704
	jr nz,L_96EA		;9705
	ret			;9707
objeto_04_1:		; la clase 4, paso 1
	ld hl,0e004h		;9708   ; apunta a la espera del estado, en cuadros
	dec (hl)			;970b
	ret nz			;970c
	jp L_969E		;970d
objeto_04_2:		; la clase 4, paso 2
	ld a,(0e003h)		;9710   ; lee la cuenta de cuadros
	and 00fh		;9713
	ret nz			;9715
	ld a,(ix+01bh)		;9716   ; lee la cuenta del objeto
	ld de,0978ah		;9719
	call 043a4h		;971c   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	inc (ix+01bh)		;971f   ; sube la cuenta del objeto
	ld a,(ix+01bh)		;9722   ; lee la cuenta del objeto
	cp 005h		;9725
	jp z,L_9747		;9727
	ld a,(de)			;972a
	ld l,a			;972b
	inc de			;972c
	ld a,(de)			;972d
	ld h,a			;972e
	inc de			;972f
L_9730:
	ld a,(de)			;9730
	inc de			;9731
	inc a			;9732
	jr z,L_9744		;9733
	dec a			;9735
	ld b,a			;9736
L_9737:
	ld a,(de)			;9737
	ld (hl),a			;9738
	inc de			;9739
	inc hl			;973a
	djnz L_9737		;973b
	ld a,(de)			;973d
	inc de			;973e
	call 040a1h		;973f   ; hl_mas_a: HL = HL + A
	jr L_9730		;9742
L_9744:
	jp 05e45h		;9744   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
L_9747:
	ld (ix+00dh),002h		;9747   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x02
	jp L_969E		;974b
objeto_04_3:		; la clase 4, paso 3
	call 0a99bh		;974e   ; lanza_objetos: si el personaje no esta tocado, lo que lanza la escena (p11:A9A8)
	ret			;9751
objeto_04_4:		; la clase 4, paso 4
	ld hl,0e004h		;9752   ; apunta a la espera del estado, en cuadros
	dec (hl)			;9755
	ld a,(hl)			;9756
	and a			;9757
	jp z,L_969E		;9758
	and 001h		;975b
	ret nz			;975d
	ld a,(hl)			;975e
	and 002h		;975f
	ld b,00fh		;9761
	jr z,L_9767		;9763
	ld b,000h		;9765
L_9767:
	jp 058a7h		;9767   ; color_de_borde: VDP R#7 = B
jefe_4_vencido:		; pone el bit 4 de 0xEB7D y salta a la sala 0x1EB
	ld hl,0eb7dh		;976a   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	set 4,(hl)		;976d
	xor a			;976f
	ld (0e368h),a		;9770   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;9773
	ld (0e360h),a		;9774   ; guarda el modo dentro de la sala (tabla p00:5A83)
	inc a			;9777
	ld (0e337h),a		;9778   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,001ebh		;977b
	ld (0e36ah),hl		;977e   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
	ld hl,03030h		;9781
	ld (0e3c1h),hl		;9784   ; guarda la Y del personaje y el byte siguiente (16 bits)
	jp 058eah		;9787   ; borra_nombres_sin_ventana: borra 0x1E0 de 0xED00 y los vuelca

; ----------------------------------------------------------------------
; DATOS resto_978A: lo apuntan con el banco puesto p10:9719 (0x978A); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p10:9719 (346 bytes)
;   0x978a..0x98e4  (346 bytes)
DATA_resto_978A:
	defb 092h,097h,0adh,097h,0d8h,097h,033h,098h,0ceh,0edh,004h,039h,03ah,083h,082h,01ch	; 978a  ......3....9:...
	defb 004h,03ch,048h,091h,085h,01ch,004h,03bh,026h,068h,07dh,01ch,004h,03ch,03dh,07fh	; 979a  .<H.....&h}..<=.
	defb 07eh,000h,0ffh,0adh,0edh,006h,038h,037h,028h,071h,080h,081h,01ah,006h,025h,040h	; 97aa  ~.....87(q....%@
	defb 042h,08bh,089h,06eh,01ah,006h,019h,053h,057h,0a0h,09ch,062h,01ah,006h,023h,047h	; 97ba  B..n...SW..b..#G
	defb 04eh,090h,089h,065h,01ah,006h,03eh,024h,027h,069h,066h,080h,000h,0ffh,06dh,0edh	; 97ca  N..e..>$'if...m.
	defb 006h,03dh,03bh,036h,07fh,084h,086h,019h,008h,03eh,024h,041h,043h,08ch,08ah,06dh	; 97da  .=.6.....>$AC..m
	defb 087h,017h,00ah,03fh,022h,045h,052h,056h,09fh,09bh,08eh,06bh,088h,016h,00ah,01ch	; 97ea  ...?"ERV...k....
	defb 046h,04ch,054h,057h,0a0h,09dh,095h,08fh,065h,016h,00ah,01bh,049h,047h,04dh,058h	; 97fa  FLTW....e...IGMX
	defb 0a1h,096h,090h,092h,064h,016h,00ah,019h,048h,042h,04ah,050h,092h,08ch,084h,08ah	; 980a  ....d...HBJP....
	defb 05bh,016h,00ah,039h,01ah,046h,049h,022h,064h,08bh,088h,05ch,07bh,017h,008h,03ah	; 981a  [..9.FI"d..\{..:
	defb 029h,02ah,02bh,06dh,06ch,06bh,07ch,000h,0ffh,069h,0edh,00eh,02dh,032h,033h,027h	; 982a  )*+mlk|..i..-23'
	defb 023h,01dh,01dh,066h,066h,06ch,070h,07ch,07bh,076h,011h,010h,029h,02eh,034h,026h	; 983a  #..fflp|{v..).4&
	defb 021h,044h,051h,055h,09eh,09ah,08dh,06ah,06fh,07dh,077h,072h,010h,010h,02ah,02fh	; 984a  !DQU...jo}wr..*/
	defb 035h,021h,04eh,04bh,052h,056h,09fh,09bh,094h,097h,06ah,07eh,078h,073h,010h,010h	; 985a  5!NKRV....j~xs..
	defb 02bh,030h,01fh,020h,04fh,050h,054h,057h,0a0h,09dh,099h,098h,069h,068h,079h,074h	; 986a  +0. OPTW....ihyt
	defb 010h,010h,02ch,031h,01eh,01ah,04ah,047h,04dh,058h,0a1h,096h,090h,093h,063h,067h	; 987a  ..,1..JGMX....cg
	defb 07ah,075h,010h,010h,02eh,02fh,01bh,01dh,04dh,042h,04ah,050h,092h,08ch,084h,08fh	; 988a  zu.../..MBJP....
	defb 05fh,05dh,071h,070h,010h,010h,030h,031h,01ch,01eh,051h,04bh,041h,03fh,081h,083h	; 989a  _]qp..01..QKA?..
	defb 08dh,093h,060h,05eh,073h,072h,011h,00eh,032h,033h,01fh,043h,04fh,028h,040h,082h	; 98aa  ..`^sr..23.CO(@.
	defb 06ah,091h,085h,061h,075h,074h,011h,010h,030h,034h,035h,02ch,020h,045h,044h,04ch	; 98ba  j..aut..045, EDL
	defb 08eh,086h,087h,062h,06eh,077h,076h,072h,011h,00eh,036h,037h,038h,02dh,025h,021h	; 98ca  ...bnwvr..678-%!
	defb 021h,063h,063h,067h,06fh,07ah,079h,078h,000h,0ffh	; 98da  !ccgozyx..

; ======================================================================
; CODIGO 0x98e4..0x98ea  (6 bytes)
; ======================================================================


objeto_05:		; la clase 5 de los objetos de 0xEA00 (p10:8CCD): un paso (ix+1) de la tabla p10:98EA
	ld a,(ix+001h)		;98e4   ; lee el paso del objeto
	call 040abh		;98e7   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_98EA: tabla de 3 palabras del despachador (call 0x408D en
;   0x98E7); lo leen L_40AB (6 bytes)
;   0x98ea..0x98f0  (6 bytes)
DATA_saltos_98EA:
	defb 0f4h,098h	; 98ea
	defb 055h,099h	; 98ec
	defb 087h,099h	; 98ee

; ======================================================================
; CODIGO 0x98f0..0x99aa  (186 bytes)
; ======================================================================


L_98F0:
	inc (ix+001h)		;98f0   ; sube el paso del objeto
	ret			;98f3
objeto_05_0:		; la clase 5, paso 0
	ld (ix+01bh),000h		;98f4   ; la cuenta del objeto = 0x00
	ld hl,0ed04h		;98f8
	ld de,0ed05h		;98fb
	ld bc,00017h		;98fe
	ld (hl),010h		;9901
	ldir		;9903
	ld hl,0ed24h		;9905
	ld de,00020h		;9908
	ld b,017h		;990b
L_990D:
	ld (hl),010h		;990d
	add hl,de			;990f
	djnz L_990D		;9910
	ld hl,0ed3bh		;9912
	ld de,00020h		;9915
	ld b,017h		;9918
L_991A:
	ld (hl),010h		;991a
	add hl,de			;991c
	djnz L_991A		;991d
	ld hl,0ed25h		;991f
	ld de,0000ah		;9922
	ld c,017h		;9925
L_9927:
	ld b,016h		;9927
L_9929:
	ld (hl),011h		;9929
	inc hl			;992b
	djnz L_9929		;992c
	add hl,de			;992e
	dec c			;992f
	jr nz,L_9927		;9930
	ld hl,0ed4bh		;9932
	ld de,099aah		;9935
	call dibujo_a_ram_b		;9938   ; dibujo_a_ram_b: [n] n bytes [salto] hasta 0xFF y vuelca los nombres
	jp L_98F0		;993b
dibujo_a_ram_b:		; [n] n bytes [salto] hasta 0xFF y vuelca los nombres
	ld a,(de)			;993e
	inc de			;993f
	inc a			;9940
	jr z,L_9952		;9941
	dec a			;9943
	ld b,a			;9944
L_9945:
	ld a,(de)			;9945
	ld (hl),a			;9946
	inc de			;9947
	inc hl			;9948
	djnz L_9945		;9949
	ld a,(de)			;994b
	inc de			;994c
	call 040a1h		;994d   ; hl_mas_a: HL = HL + A
	jr dibujo_a_ram_b		;9950
L_9952:
	jp 05e51h		;9952   ; vuelca_nombres: 0x300 de 0xED00 a 0x3800
objeto_05_1:		; la clase 5, paso 1
	call 0a99bh		;9955   ; lanza_objetos: si el personaje no esta tocado, lo que lanza la escena (p11:A9A8)
	ld a,(0e400h)		;9958   ; lee los 8 actores de la sala (0x80 bytes cada uno)
	and a			;995b
	ret nz			;995c
	dec (ix+01bh)		;995d   ; baja la cuenta del objeto
	ld a,(ix+01bh)		;9960   ; lee la cuenta del objeto
	cp 021h		;9963
	ret nc			;9965
	cp 020h		;9966
	jr z,L_9972		;9968
	cp 010h		;996a
	jr z,L_997B		;996c
	and a			;996e
	jr z,L_997E		;996f
	ret			;9971
L_9972:
	ld hl,0edcdh		;9972
	ld de,09ad3h		;9975
	jp dibujo_a_ram_b		;9978   ; dibujo_a_ram_b: [n] n bytes [salto] hasta 0xFF y vuelca los nombres
L_997B:
	jp 0aad7h		;997b
L_997E:
	ld hl,0edcdh		;997e
	ld de,09af0h		;9981
	jp dibujo_a_ram_b		;9984   ; dibujo_a_ram_b: [n] n bytes [salto] hasta 0xFF y vuelca los nombres
jefe_5_vencido:		; pone el bit 3 de 0xEB7D y salta a la sala 0x83
	ld hl,0eb7dh		;9987   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	set 3,(hl)		;998a
	xor a			;998c
	ld (0e368h),a		;998d   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;9990
	ld (0e360h),a		;9991   ; guarda el modo dentro de la sala (tabla p00:5A83)
	inc a			;9994
	ld (0e337h),a		;9995   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00083h		;9998
	ld (0e36ah),hl		;999b   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
	ld hl,08030h		;999e
	ld (0e3c1h),hl		;99a1   ; guarda la Y del personaje y el byte siguiente (16 bits)
	call 058bfh		;99a4   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	jp 04335h		;99a7   ; a_fuente_y_9_10_11: con 4-5-6, p04:648C (la fuente en 0x2808 y 0x3000 y su color); vuelve con 1-2-3; vuelve con 9-10-11

; ----------------------------------------------------------------------
; DATOS resto_99AA: lo apuntan con el banco puesto p10:9935 (0x99AA), p10:9975
;   (0x9AD3), p10:9981 (0x9AF0); el tamano es lo que hay hasta lo siguiente,
;   no sale de recorrerlo; lo leen p10:9935, p10:9975, p10:9981 (355 bytes)
;   0x99aa..0x9b0d  (355 bytes)
DATA_resto_99AA:
	defb 00ah,029h,011h,02ah,02bh,02ch,063h,062h,061h,011h,060h,016h,00ah,02dh,02eh,02fh	; 99aa  .).*+,cba.`..-./
	defb 030h,031h,068h,067h,066h,065h,064h,012h,012h,014h,016h,017h,022h,032h,033h,028h	; 99ba  01hgfed....."23(
	defb 034h,035h,06ch,06bh,05fh,06ah,069h,059h,04eh,04dh,04bh,00dh,014h,012h,019h,01dh	; 99ca  45lk_jiYNMK.....
	defb 021h,023h,036h,037h,038h,039h,03ah,071h,070h,06fh,06eh,06dh,05ah,058h,054h,050h	; 99da  !#6789:qponmZXTP
	defb 049h,00ch,014h,015h,01bh,01ah,020h,024h,03bh,03ch,03dh,03fh,040h,077h,076h,074h	; 99ea  I..... $.<=?@wvt
	defb 073h,072h,05bh,057h,051h,052h,04ch,00bh,016h,013h,018h,01fh,01ch,01eh,025h,026h	; 99fa  sr[WQRL.......%&
	defb 027h,03eh,041h,042h,079h,078h,075h,05eh,05dh,05ch,055h,053h,056h,04fh,04ah,00ah	; 9a0a  '>AByxu^]\USVOJ.
	defb 016h,04ah,026h,027h,038h,063h,052h,060h,061h,062h,025h,023h,078h,07ah,0b7h,0b6h	; 9a1a  .J&'8cR`ab%#xz..
	defb 0b5h,0a7h,0b8h,08dh,07ch,07bh,09fh,00ah,016h,049h,024h,01fh,020h,053h,054h,056h	; 9a2a  ....|{...I$. STV
	defb 057h,058h,059h,05ah,0afh,0aeh,0adh,0ach,0abh,0a9h,0a8h,075h,074h,079h,09eh,00ah	; 9a3a  WXYZ.......uty..
	defb 016h,04bh,039h,02ah,02bh,064h,03ah,05bh,05ch,05dh,05eh,05fh,0b4h,0b3h,0b2h,0b1h	; 9a4a  .K9*+d:[\]^_....
	defb 0b0h,08fh,0b9h,080h,07fh,08eh,0a0h,00ah,016h,04ch,04fh,02ch,02dh,037h,03ch,03dh	; 9a5a  .........LO,-7<=
	defb 03eh,03fh,040h,041h,096h,095h,094h,093h,092h,091h,08ch,082h,081h,0a4h,0a1h,00ah	; 9a6a  >?@A............
	defb 016h,04dh,02eh,029h,021h,028h,042h,048h,047h,046h,043h,045h,09ah,098h,09bh,09ch	; 9a7a  .M.)!(BHGFCE....
	defb 09dh,097h,07dh,076h,07eh,083h,0a2h,00ah,016h,04eh,01dh,01ch,017h,035h,031h,032h	; 9a8a  ..}v~....N...512
	defb 03bh,044h,033h,011h,011h,088h,099h,090h,087h,086h,08ah,06ch,071h,072h,0a3h,00ah	; 9a9a  .D3........lqr..
	defb 016h,055h,050h,051h,016h,018h,019h,01ah,01bh,01eh,034h,011h,011h,089h,073h,070h	; 9aaa  .UPQ......4...sp
	defb 06fh,06eh,06dh,06bh,0a6h,0a5h,0aah,00eh,00eh,012h,013h,014h,015h,011h,011h,011h	; 9aba  onmk............
	defb 011h,011h,011h,06ah,069h,068h,067h,000h,0ffh,006h,043h,03fh,040h,077h,076h,07ah	; 9aca  ...jihg...C?@wvz
	defb 01ah,006h,044h,045h,046h,07dh,07ch,07bh,01bh,004h,022h,02fh,084h,077h,01ch,004h	; 9ada  ..DEF}|{.."/.w..
	defb 036h,030h,085h,08bh,000h,0ffh,006h,03dh,03fh,040h,077h,076h,074h,01ah,006h,03eh	; 9aea  60.....=?@wvt..>
	defb 041h,042h,079h,078h,075h,01bh,004h,025h,023h,078h,07ah,01ch,004h,059h,05ah,0afh	; 9afa  AByxu..%#xz..YZ.
	defb 0aeh,000h,0ffh	; 9b0a

; ======================================================================
; CODIGO 0x9b0d..0x9b13  (6 bytes)
; ======================================================================


objeto_06:		; la clase 6 de los objetos de 0xEA00 (p10:8CCD): un paso (ix+1) de la tabla p10:9B13
	ld a,(ix+001h)		;9b0d   ; lee el paso del objeto
	call 040abh		;9b10   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_9B13: tabla de 4 palabras del despachador (call 0x408D en
;   0x9B10); lo leen L_40AB (8 bytes)
;   0x9b13..0x9b1b  (8 bytes)
DATA_saltos_9B13:
	defb 01fh,09bh	; 9b13
	defb 04ah,09bh	; 9b15
	defb 059h,09bh	; 9b17
	defb 071h,09bh	; 9b19

; ======================================================================
; CODIGO 0x9b1b..0x9bc6  (171 bytes)
; ======================================================================


L_9B1B:
	inc (ix+001h)		;9b1b   ; sube el paso del objeto
	ret			;9b1e
objeto_06_0:		; la clase 6, paso 0
	ld (ix+01bh),003h		;9b1f   ; la cuenta del objeto = 0x03
	call 0a165h		;9b23   ; objeto_parado: el objeto con fotograma 1, choques 2 y velocidad X -8
	ld de,09cc1h		;9b26
	ld hl,0ed05h		;9b29
	call dibujo_a_ram_c		;9b2c   ; dibujo_a_ram_c: [n] n bytes [salto] hasta 0xFF
	call pinta_dibujo_del_objeto		;9b2f   ; pinta_dibujo_del_objeto: las 6 x 10 fichas del objeto (p10:9D9B[ix+0x0A]) en su posicion
	call 05e51h		;9b32   ; vuelca_nombres: 0x300 de 0xED00 a 0x3800
	jr L_9B1B		;9b35
dibujo_a_ram_c:		; [n] n bytes [salto] hasta 0xFF
	ld a,(de)			;9b37
	inc de			;9b38
	inc a			;9b39
	ret z			;9b3a
	dec a			;9b3b
	ld b,a			;9b3c
L_9B3D:
	ld a,(de)			;9b3d
	ld (hl),a			;9b3e
	inc de			;9b3f
	inc hl			;9b40
	djnz L_9B3D		;9b41
	ld a,(de)			;9b43
	inc de			;9b44
	call 040a1h		;9b45   ; hl_mas_a: HL = HL + A
	jr dibujo_a_ram_c		;9b48
objeto_06_1:		; la clase 6, paso 1
	call borra_dibujo_del_objeto		;9b4a   ; borra_dibujo_del_objeto: borra las fichas del objeto de donde estaba (ix+0x1E)
	call L_9B94		;9b4d
	call pinta_dibujo_del_objeto		;9b50   ; pinta_dibujo_del_objeto: las 6 x 10 fichas del objeto (p10:9D9B[ix+0x0A]) en su posicion
	call 0a99bh		;9b53   ; lanza_objetos: si el personaje no esta tocado, lo que lanza la escena (p11:A9A8)
	jp 05e51h		;9b56   ; vuelca_nombres: 0x300 de 0xED00 a 0x3800
objeto_06_2:		; la clase 6, paso 2
	ld hl,0e004h		;9b59   ; apunta a la espera del estado, en cuadros
	dec (hl)			;9b5c
	ld a,(hl)			;9b5d
	and a			;9b5e
	jp z,L_9B1B		;9b5f
	and 001h		;9b62
	ret nz			;9b64
	ld a,(hl)			;9b65
	and 002h		;9b66
	ld b,00fh		;9b68
	jr z,L_9B6E		;9b6a
	ld b,000h		;9b6c
L_9B6E:
	jp 058a7h		;9b6e   ; color_de_borde: VDP R#7 = B
jefe_6_vencido:		; pone el bit 2 de 0xEB7D y salta a la sala 0x185
	ld hl,0eb7dh		;9b71   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	set 2,(hl)		;9b74
	xor a			;9b76
	ld (0e368h),a		;9b77   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;9b7a
	ld (0e360h),a		;9b7b   ; guarda el modo dentro de la sala (tabla p00:5A83)
	inc a			;9b7e
	ld (0e337h),a		;9b7f   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00185h		;9b82
	ld (0e36ah),hl		;9b85   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
	ld hl,04040h		;9b88
	ld (0e3c1h),hl		;9b8b   ; guarda la Y del personaje y el byte siguiente (16 bits)
	call 058bfh		;9b8e   ; borra_nombres: borra los nombres 0xED00 (0x300) y los vuelca
	jp 04335h		;9b91   ; a_fuente_y_9_10_11: con 4-5-6, p04:648C (la fuente en 0x2808 y 0x3000 y su color); vuelve con 1-2-3; vuelve con 9-10-11
L_9B94:
	ld c,003h		;9b94
	ld a,(ix+01dh)		;9b96   ; lee la accion del objeto
	cp 002h		;9b99
	jr c,L_9BA3		;9b9b
	cp 005h		;9b9d
	jr nc,L_9BA3		;9b9f
	ld c,001h		;9ba1
L_9BA3:
	ld a,(0e003h)		;9ba3   ; lee la cuenta de cuadros
	and c			;9ba6
	ret nz			;9ba7
	dec (ix+01bh)		;9ba8   ; baja la cuenta del objeto
	jr z,$+88		;9bab
	call objeto_avanza		;9bad   ; objeto_avanza: Y (ix+6/7) += (ix+2/3) y X (ix+8/9) += (ix+4/5)
	ld a,h			;9bb0
	cp 060h		;9bb1
	ld l,060h		;9bb3
	jr c,L_9BBD		;9bb5
	cp 0c0h		;9bb7
	ld l,0c0h		;9bb9
	jr c,L_9BC0		;9bbb
L_9BBD:
	ld (ix+009h),l		;9bbd   ; guarda la X del objeto
L_9BC0:
	ld a,(ix+01dh)		;9bc0   ; lee la accion del objeto
	call 040abh		;9bc3   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_9BC6: tabla de 6 palabras del despachador (call 0x408D en
;   0x9BC3); lo leen L_40AB (12 bytes)
;   0x9bc6..0x9bd2  (12 bytes)
DATA_saltos_9BC6:
	defb 0d2h,09bh	; 9bc6
	defb 0d2h,09bh	; 9bc8
	defb 0dfh,09bh	; 9bca
	defb 0edh,09bh	; 9bcc
	defb 0feh,09bh	; 9bce
	defb 0feh,09bh	; 9bd0

; ======================================================================
; CODIGO 0x9bd2..0x9c49  (119 bytes)
; ======================================================================


L_9BD2:
	ld a,(ix+00ah)		;9bd2   ; lee el fotograma del objeto
	dec a			;9bd5
	ld a,002h		;9bd6
	jr z,L_9BDB		;9bd8
	dec a			;9bda
L_9BDB:
	ld (ix+00ah),a		;9bdb   ; guarda el fotograma del objeto
	ret			;9bde
L_9BDF:
	ld a,(ix+01bh)		;9bdf   ; lee la cuenta del objeto
	cp 008h		;9be2
	jr nc,L_9BED		;9be4
	inc (ix+01dh)		;9be6   ; sube la accion del objeto
	ld (ix+003h),008h		;9be9   ; la velocidad Y del objeto (alta) = 0x08
L_9BED:
	ld a,(ix+00ah)		;9bed   ; lee el fotograma del objeto
	dec a			;9bf0
	ld a,003h		;9bf1
	jr z,L_9BF7		;9bf3
	sub 002h		;9bf5
L_9BF7:
	ld (ix+00ah),a		;9bf7   ; guarda el fotograma del objeto
	call 06023h		;9bfa   ; sonido_10: pide el sonido 0x10
	ret			;9bfd
L_9BFE:
	ld (ix+00ah),004h		;9bfe   ; el fotograma del objeto = 0x04
	ret			;9c02
L_9C03:
	ld a,(ix+01dh)		;9c03   ; lee la accion del objeto
	cp 003h		;9c06
	jr nz,L_9C0D		;9c08
	call 06028h		;9c0a   ; sonido_11: pide el sonido 0x11
L_9C0D:
	ld a,r		;9c0d
	rra			;9c0f
	and 003h		;9c10
	cp 003h		;9c12
	jr nz,L_9C22		;9c14
	ld a,(0e003h)		;9c16   ; lee la cuenta de cuadros
	and 00ch		;9c19
	rra			;9c1b
	rra			;9c1c
	cp 003h		;9c1d
	jr nz,L_9C22		;9c1f
	dec a			;9c21
L_9C22:
	ld (ix+01dh),a		;9c22   ; guarda la accion del objeto
	add a,a			;9c25
	add a,a			;9c26
	add a,(ix+01dh)		;9c27   ; le suma la accion del objeto
	ld hl,09c49h		;9c2a
	call 040a1h		;9c2d   ; hl_mas_a: HL = HL + A
	ld e,(hl)			;9c30
	inc hl			;9c31
	ld d,(hl)			;9c32
	inc hl			;9c33
	ld c,(hl)			;9c34
	inc hl			;9c35
	ld b,(hl)			;9c36
	inc hl			;9c37
	ld a,(hl)			;9c38
	ld (ix+002h),e		;9c39   ; guarda la velocidad Y del objeto
	ld (ix+003h),d		;9c3c   ; guarda la velocidad Y del objeto (alta)
	ld (ix+004h),c		;9c3f   ; guarda la velocidad X del objeto
	ld (ix+005h),b		;9c42   ; guarda la velocidad X del objeto (alta)
	ld (ix+01bh),a		;9c45   ; guarda la cuenta del objeto
	ret			;9c48

; ----------------------------------------------------------------------
; DATOS resto_9C49: lo apuntan con el banco puesto p10:9C2A (0x9C49); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p10:9C2A (15 bytes)
;   0x9c49..0x9c58  (15 bytes)
DATA_resto_9C49:
	defb 000h,000h,000h,008h,004h,000h,000h,000h,0f8h,006h,000h,0f8h,000h,000h,00dh	; 9c49  ...............

; ======================================================================
; CODIGO 0x9c58..0x9cc1  (105 bytes)
; ======================================================================


objeto_avanza:		; Y (ix+6/7) += (ix+2/3) y X (ix+8/9) += (ix+4/5)
	ld l,(ix+006h)		;9c58   ; lee la Y del objeto (fraccion)
	ld h,(ix+007h)		;9c5b   ; lee la Y del objeto
	ld e,(ix+002h)		;9c5e   ; lee la velocidad Y del objeto
	ld d,(ix+003h)		;9c61   ; lee la velocidad Y del objeto (alta)
	add hl,de			;9c64
	ld (ix+006h),l		;9c65   ; guarda la Y del objeto (fraccion)
	ld (ix+007h),h		;9c68   ; guarda la Y del objeto
	ld l,(ix+008h)		;9c6b   ; lee la X del objeto (fraccion)
	ld h,(ix+009h)		;9c6e   ; lee la X del objeto
	ld e,(ix+004h)		;9c71   ; lee la velocidad X del objeto
	ld d,(ix+005h)		;9c74   ; lee la velocidad X del objeto (alta)
	add hl,de			;9c77
	ld (ix+008h),l		;9c78   ; guarda la X del objeto (fraccion)
	ld (ix+009h),h		;9c7b   ; guarda la X del objeto
	ret			;9c7e
borra_dibujo_del_objeto:		; borra las fichas del objeto de donde estaba (ix+0x1E)
	ld l,(ix+01eh)		;9c7f   ; lee la posicion del dibujo del objeto (bajo)
	ld h,(ix+01fh)		;9c82   ; lee la posicion del dibujo del objeto (alto)
	ld b,000h		;9c85
	jr L_9C9D		;9c87
pinta_dibujo_del_objeto:		; las 6 x 10 fichas del objeto (p10:9D9B[ix+0x0A]) en su posicion
	ld l,(ix+007h)		;9c89   ; lee la Y del objeto
	ld a,(ix+009h)		;9c8c   ; lee la X del objeto
	sub 030h		;9c8f
	ld h,a			;9c91
	call 04509h		;9c92   ; mapa_de_bloques: HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
	ld (ix+01eh),l		;9c95   ; guarda la posicion del dibujo del objeto (bajo)
	ld (ix+01fh),h		;9c98   ; guarda la posicion del dibujo del objeto (alto)
	ld b,0ffh		;9c9b
L_9C9D:
	push hl			;9c9d
	ld a,(ix+00ah)		;9c9e   ; lee el fotograma del objeto
	dec a			;9ca1
	ld de,09d9bh		;9ca2
	call 043a4h		;9ca5   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	pop hl			;9ca8
	ld c,006h		;9ca9
L_9CAB:
	exx			;9cab
	ld b,00ah		;9cac
L_9CAE:
	exx			;9cae
	ld a,(de)			;9caf
	and b			;9cb0
	ld (hl),a			;9cb1
	inc de			;9cb2
	inc hl			;9cb3
	exx			;9cb4
	djnz L_9CAE		;9cb5
	exx			;9cb7
	ld a,016h		;9cb8
	call 040a1h		;9cba   ; hl_mas_a: HL = HL + A
	dec c			;9cbd
	jr nz,L_9CAB		;9cbe
	ret			;9cc0

; ----------------------------------------------------------------------
; DATOS resto_9CC1: lo apuntan con el banco puesto p10:9B26 (0x9CC1), p10:9CA2
;   (0x9D9B); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p10:9B26, p10:9CA2 (466 bytes)
;   0x9cc1..0x9e93  (466 bytes)
DATA_resto_9CC1:
	defb 001h,028h,016h,003h,029h,02fh,030h,006h,001h,018h,016h,003h,02ah,02eh,02eh,006h	; 9cc1  .(..)/0.....*...
	defb 004h,048h,01bh,049h,04ah,013h,003h,02ch,02dh,031h,006h,008h,04bh,020h,01fh,01ah	; 9cd1  .H.IJ..,-1..K ..
	defb 021h,022h,023h,024h,00fh,003h,010h,000h,029h,006h,009h,01dh,025h,017h,039h,03ah	; 9ce1  !"#$....)...%.9:
	defb 03bh,03ch,03dh,03eh,00eh,003h,010h,000h,02ah,006h,007h,01eh,01ch,035h,036h,037h	; 9cf1  .<=>....*....567
	defb 038h,011h,010h,003h,010h,000h,029h,006h,004h,019h,012h,034h,013h,015h,001h,02ah	; 9d01  8.....)....4...*
	defb 006h,003h,014h,015h,016h,016h,001h,029h,006h,001h,028h,018h,001h,02ah,006h,001h	; 9d11  .......)..(..*..
	defb 018h,018h,001h,029h,006h,001h,028h,018h,001h,02ah,006h,001h,018h,018h,001h,029h	; 9d21  ...)..(..*.....)
	defb 006h,001h,028h,018h,001h,02ah,006h,001h,018h,018h,001h,029h,006h,001h,028h,018h	; 9d31  ..(..*.....)..(.
	defb 001h,02ah,006h,001h,018h,018h,001h,029h,006h,001h,028h,018h,001h,02ah,006h,001h	; 9d41  .*.....)..(..*..
	defb 018h,018h,001h,029h,006h,001h,028h,016h,003h,02bh,03fh,040h,006h,001h,018h,016h	; 9d51  ...)..(..+?@....
	defb 003h,029h,041h,042h,006h,001h,028h,016h,003h,029h,043h,02fh,006h,001h,018h,016h	; 9d61  .)AB..(..)C/....
	defb 003h,02ah,044h,045h,006h,001h,028h,016h,003h,029h,046h,047h,006h,01ah,027h,027h	; 9d71  .*DE..(..)FG..''
	defb 026h,027h,026h,027h,026h,027h,026h,027h,026h,027h,026h,027h,026h,027h,026h,027h	; 9d81  &'&'&'&'&'&'&'&'
	defb 026h,027h,026h,027h,026h,027h,032h,033h,000h,0ffh,0a3h,09dh,0dfh,09dh,01bh,09eh	; 9d91  &'&'&'23........
	defb 057h,09eh,000h,000h,000h,0aeh,0afh,0b0h,0beh,0b8h,06fh,000h,066h,071h,072h,073h	; 9da1  W.........o.fqrs
	defb 08ch,08dh,070h,08bh,0b9h,000h,065h,04fh,050h,078h,077h,076h,04dh,04ch,0bah,000h	; 9db1  ..p...eOPxwvML..
	defb 07eh,07fh,08eh,08fh,067h,090h,091h,052h,053h,000h,054h,055h,056h,080h,092h,093h	; 9dc1  ~...g..RS.TUV...
	defb 081h,05ah,082h,000h,059h,083h,058h,057h,094h,0adh,095h,096h,097h,000h,000h,000h	; 9dd1  .Z..Y.XW........
	defb 000h,0aeh,0afh,0b0h,0beh,0b8h,06fh,000h,066h,071h,072h,073h,074h,075h,06eh,08bh	; 9de1  ......o.fqrstun.
	defb 0b9h,000h,07dh,051h,07ch,07bh,07ah,079h,04eh,04ch,0bah,000h,084h,085h,098h,06ch	; 9df1  ..}Q|{zyNL.....l
	defb 099h,05bh,09ah,06bh,000h,000h,06ah,09bh,09ch,069h,05ch,05dh,09dh,09eh,09fh,068h	; 9e01  .[.k..j..i\]...h
	defb 0a0h,0abh,0a1h,0a2h,060h,05fh,05eh,086h,087h,0a3h,0b3h,0b4h,0b5h,0b6h,0b7h,0b1h	; 9e11  ....`_^.........
	defb 0beh,0b8h,06fh,000h,0a4h,0a5h,0a6h,0a7h,0a8h,0a9h,070h,08bh,0b9h,000h,06dh,061h	; 9e21  ..o.......p...ma
	defb 062h,088h,089h,076h,04dh,04ch,0bah,000h,07eh,07fh,08eh,08fh,067h,090h,091h,052h	; 9e31  b..vML..~...g..R
	defb 053h,000h,054h,055h,056h,080h,092h,093h,081h,05ah,082h,000h,059h,083h,058h,057h	; 9e41  S.TUV....Z..Y.XW
	defb 094h,0adh,095h,096h,097h,000h,000h,000h,000h,0aeh,0afh,0b0h,0c1h,0c2h,0bdh,000h	; 9e51  ................
	defb 066h,071h,072h,073h,08ch,08dh,0c0h,0ach,0aah,0bfh,065h,04fh,050h,078h,077h,076h	; 9e61  fqrs......eOPxwv
	defb 063h,0bbh,0bch,08ah,07eh,07fh,08eh,08fh,067h,090h,091h,052h,053h,000h,054h,055h	; 9e71  c...~...g..RS.TU
	defb 056h,080h,092h,093h,081h,05ah,082h,000h,059h,083h,058h,057h,094h,0adh,095h,096h	; 9e81  V....Z..Y.XW....
	defb 097h,000h	; 9e91

; ======================================================================
; CODIGO 0x9e93..0x9e99  (6 bytes)
; ======================================================================


objeto_07:		; la clase 7 de los objetos de 0xEA00 (p10:8CCD): un paso (ix+1) de la tabla p10:9E99
	ld a,(ix+001h)		;9e93   ; lee el paso del objeto
	call 040abh		;9e96   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_9E99: tabla de 4 palabras del despachador (call 0x408D en
;   0x9E96); lo leen L_40AB (8 bytes)
;   0x9e99..0x9ea1  (8 bytes)
DATA_saltos_9E99:
	defb 0a5h,09eh	; 9e99
	defb 0cch,09eh	; 9e9b
	defb 0dbh,09eh	; 9e9d
	defb 0f3h,09eh	; 9e9f

; ======================================================================
; CODIGO 0x9ea1..0x9f4a  (169 bytes)
; ======================================================================


L_9EA1:
	inc (ix+001h)		;9ea1   ; sube el paso del objeto
	ret			;9ea4
objeto_07_0:		; la clase 7, paso 0
	call 0a165h		;9ea5   ; objeto_parado: el objeto con fotograma 1, choques 2 y velocidad X -8
	ld (ix+00dh),003h		;9ea8   ; los choques del objeto (bit 0 con el personaje, bit 1 con los proyectiles) = 0x03
	ld (ix+01bh),003h		;9eac   ; la cuenta del objeto = 0x03
	ld hl,0000bh		;9eb0
	ld (0e3e0h),hl		;9eb3   ; guarda la escena de la escena de accion (tabla p01:77E1) y el byte siguiente (16 bits)
	ld b,00eh		;9eb6
	ld hl,0eec4h		;9eb8
L_9EBB:
	ld (hl),027h		;9ebb
	inc hl			;9ebd
	ld (hl),026h		;9ebe
	inc hl			;9ec0
	djnz L_9EBB		;9ec1
	call L_9FDD		;9ec3
	call 05e45h		;9ec6   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
	jp L_9EA1		;9ec9
objeto_07_1:		; la clase 7, paso 1
	call L_9FD3		;9ecc
	call L_9F16		;9ecf
	call L_9FDD		;9ed2
	call 0a99bh		;9ed5   ; lanza_objetos: si el personaje no esta tocado, lo que lanza la escena (p11:A9A8)
	jp 05e45h		;9ed8   ; vuelca_nombres_sin_ventana: 0x1E0 de 0xED00 a 0x3800
objeto_07_2:		; la clase 7, paso 2
	ld hl,0e004h		;9edb   ; apunta a la espera del estado, en cuadros
	dec (hl)			;9ede
	ld a,(hl)			;9edf
	and a			;9ee0
	jp z,L_9EA1		;9ee1
	and 001h		;9ee4
	ret nz			;9ee6
	ld a,(hl)			;9ee7
	and 002h		;9ee8
	ld b,00fh		;9eea
	jr z,L_9EF0		;9eec
	ld b,000h		;9eee
L_9EF0:
	jp 058a7h		;9ef0   ; color_de_borde: VDP R#7 = B
jefe_7_vencido:		; pone el bit 1 de 0xEB7D y salta a la sala 0x109
	ld hl,0eb7dh		;9ef3   ; apunta a las banderas de la historia, byte 0x3D (se graban con la partida)
	set 1,(hl)		;9ef6
	xor a			;9ef8
	ld (0e368h),a		;9ef9   ; guarda el dibujo de p12:733E que se ve (0: ninguno)
	inc a			;9efc
	ld (0e360h),a		;9efd   ; guarda el modo dentro de la sala (tabla p00:5A83)
	inc a			;9f00
	ld (0e337h),a		;9f01   ; guarda que pasa al salir del modo 0 (1 cambia de sala, 2 salta a 0xE36A, 3 escena de accion)
	ld hl,00109h		;9f04
	ld (0e36ah),hl		;9f07   ; guarda la sala a la que se salta y el byte siguiente (16 bits)
	ld hl,05030h		;9f0a
	ld (0e3c1h),hl		;9f0d   ; guarda la Y del personaje y el byte siguiente (16 bits)
	call 058eah		;9f10   ; borra_nombres_sin_ventana: borra 0x1E0 de 0xED00 y los vuelca
	jp 058ffh		;9f13   ; esconde_sprites: Y = 0xE0 en los 32 sprites de 0xF000 y los vuelca
L_9F16:
	ld c,003h		;9f16
	ld a,(ix+01dh)		;9f18   ; lee la accion del objeto
	cp 002h		;9f1b
	jr c,L_9F25		;9f1d
	cp 005h		;9f1f
	jr nc,L_9F25		;9f21
	ld c,001h		;9f23
L_9F25:
	ld a,(0e003h)		;9f25   ; lee la cuenta de cuadros
	and c			;9f28
	ret nz			;9f29
	dec (ix+01bh)		;9f2a   ; baja la cuenta del objeto
	jr z,$+81		;9f2d
	call objeto_avanza		;9f2f   ; objeto_avanza: Y (ix+6/7) += (ix+2/3) y X (ix+8/9) += (ix+4/5)
	ld a,h			;9f32
	cp 040h		;9f33
	ld l,040h		;9f35
	jr c,L_9F3F		;9f37
	cp 0a0h		;9f39
	ld l,0a0h		;9f3b
	jr c,L_9F42		;9f3d
L_9F3F:
	ld (ix+009h),l		;9f3f   ; guarda la X del objeto
L_9F42:
	ld a,(ix+01dh)		;9f42   ; lee la accion del objeto
	and 003h		;9f45
	call 040abh		;9f47   ; despacha: salta a la palabra A de la tabla pegada detras del `call`

; ----------------------------------------------------------------------
; DATOS saltos_9F4A: tabla de 4 palabras del despachador (call 0x408D en
;   0x9F47); lo leen L_40AB (8 bytes)
;   0x9f4a..0x9f52  (8 bytes)
DATA_saltos_9F4A:
	defb 052h,09fh	; 9f4a
	defb 052h,09fh	; 9f4c
	defb 05fh,09fh	; 9f4e
	defb 06dh,09fh	; 9f50

; ======================================================================
; CODIGO 0x9f52..0x9fc4  (114 bytes)
; ======================================================================


L_9F52:
	ld a,(ix+00ah)		;9f52   ; lee el fotograma del objeto
	dec a			;9f55
	ld a,002h		;9f56
	jr z,L_9F5B		;9f58
	dec a			;9f5a
L_9F5B:
	ld (ix+00ah),a		;9f5b   ; guarda el fotograma del objeto
	ret			;9f5e
L_9F5F:
	ld a,(ix+01bh)		;9f5f   ; lee la cuenta del objeto
	cp 008h		;9f62
	jr nc,L_9F6D		;9f64
	inc (ix+01dh)		;9f66   ; sube la accion del objeto
	ld (ix+003h),008h		;9f69   ; la velocidad Y del objeto (alta) = 0x08
L_9F6D:
	ld a,(ix+00ah)		;9f6d   ; lee el fotograma del objeto
	dec a			;9f70
	ld a,003h		;9f71
	jr z,L_9F77		;9f73
	sub 002h		;9f75
L_9F77:
	ld (ix+00ah),a		;9f77   ; guarda el fotograma del objeto
	call 06023h		;9f7a   ; sonido_10: pide el sonido 0x10
	ret			;9f7d
L_9F7E:
	ld a,(ix+01dh)		;9f7e   ; lee la accion del objeto
	cp 003h		;9f81
	jr nz,L_9F88		;9f83
	call 06028h		;9f85   ; sonido_11: pide el sonido 0x11
L_9F88:
	ld a,r		;9f88
	rra			;9f8a
	and 003h		;9f8b
	cp 003h		;9f8d
	jr nz,L_9F9D		;9f8f
	ld a,(0e003h)		;9f91   ; lee la cuenta de cuadros
	and 00ch		;9f94
	rra			;9f96
	rra			;9f97
	cp 003h		;9f98
	jr nz,L_9F9D		;9f9a
	dec a			;9f9c
L_9F9D:
	ld (ix+01dh),a		;9f9d   ; guarda la accion del objeto
	add a,a			;9fa0
	add a,a			;9fa1
	add a,(ix+01dh)		;9fa2   ; le suma la accion del objeto
	ld hl,09fc4h		;9fa5
	call 040a1h		;9fa8   ; hl_mas_a: HL = HL + A
	ld e,(hl)			;9fab
	inc hl			;9fac
	ld d,(hl)			;9fad
	inc hl			;9fae
	ld c,(hl)			;9faf
	inc hl			;9fb0
	ld b,(hl)			;9fb1
	inc hl			;9fb2
	ld a,(hl)			;9fb3
	ld (ix+002h),e		;9fb4   ; guarda la velocidad Y del objeto
	ld (ix+003h),d		;9fb7   ; guarda la velocidad Y del objeto (alta)
	ld (ix+004h),c		;9fba   ; guarda la velocidad X del objeto
	ld (ix+005h),b		;9fbd   ; guarda la velocidad X del objeto (alta)
	ld (ix+01bh),a		;9fc0   ; guarda la cuenta del objeto
	ret			;9fc3

; ----------------------------------------------------------------------
; DATOS resto_9FC4: lo apuntan con el banco puesto p10:9FA5 (0x9FC4); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p10:9FA5 (15 bytes)
;   0x9fc4..0x9fd3  (15 bytes)
DATA_resto_9FC4:
	defb 000h,000h,000h,008h,006h,000h,000h,000h,0f8h,004h,000h,0f8h,000h,000h,00dh	; 9fc4  ...............

; ======================================================================
; CODIGO 0x9fd3..0xa000  (45 bytes)
; ======================================================================


L_9FD3:
	ld l,(ix+01eh)		;9fd3   ; lee la posicion del dibujo del objeto (bajo)
	ld h,(ix+01fh)		;9fd6   ; lee la posicion del dibujo del objeto (alto)
	ld b,000h		;9fd9
	jr L_9FEE		;9fdb
L_9FDD:
	ld l,(ix+007h)		;9fdd   ; lee la Y del objeto
	ld h,(ix+009h)		;9fe0   ; lee la X del objeto
	call 04509h		;9fe3   ; mapa_de_bloques: HL = la direccion de 0xED00-0xEFFF del bloque de la posicion HL
	ld (ix+01eh),l		;9fe6   ; guarda la posicion del dibujo del objeto (bajo)
	ld (ix+01fh),h		;9fe9   ; guarda la posicion del dibujo del objeto (alto)
	ld b,0ffh		;9fec
L_9FEE:
	push hl			;9fee
	ld a,(ix+00ah)		;9fef   ; lee el fotograma del objeto
	dec a			;9ff2
	ld de,0a012h		;9ff3
	call 043a4h		;9ff6   ; palabra_de_tabla: DE = la palabra A de la tabla DE
	pop hl			;9ff9
	ld c,006h		;9ffa
L_9FFC:
	exx			;9ffc
	ld b,00ah		;9ffd
L_9FFF:
	exx			;9fff
