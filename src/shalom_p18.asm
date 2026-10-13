; ==========================================================================
; SHALOM - KNIGHTMARE III - Konami (1987) - MSX1 - MegaROM RC-754 de 256 KB (Konami4) - banco 18 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; DATOS sprites_6000: 9 palabras: graficos de sprites que p00:43E9 pone en la
;   VRAM 0x1800 (o 0x1860) segun 0xE3C3; el tamano, hasta el primero; lo leen
;   p00:43E9 (18 bytes)
;   0x6000..0x6012  (18 bytes)
DATA_sprites_6000:
	defb 012h,060h	; 6000
	defb 04fh,060h	; 6002
	defb 08ch,060h	; 6004
	defb 0c9h,060h	; 6006
	defb 009h,061h	; 6008
	defb 048h,061h	; 600a
	defb 087h,061h	; 600c
	defb 0c7h,061h	; 600e
	defb 006h,062h	; 6010

; ----------------------------------------------------------------------
; DATOS graficos_6012: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 0 de
;   0x6000; lo leen p00:43E9 (61 bytes)
;   0x6012..0x604f  (61 bytes)
DATA_graficos_6012:
	defb 00ch,000h,084h,001h,003h,003h,001h,00bh,000h,0a9h,090h,0f8h,0fch,0fch,008h,001h	; 6012  ................
	defb 003h,007h,007h,006h,00ch,004h,006h,009h,00eh,00dh,004h,003h,005h,00fh,007h,0f8h	; 6022  ................
	defb 0fch,0feh,06eh,006h,003h,002h,0f6h,009h,007h,00ah,0f2h,0fch,0dah,0ffh,0feh,006h	; 6032  ..n.............
	defb 001h,002h,003h,00ch,000h,084h,0f6h,0f8h,0f4h,00ch,00ch,000h,000h	; 6042  .............

; ----------------------------------------------------------------------
; DATOS graficos_604F: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 1 de
;   0x6000; lo leen p00:43E9 (61 bytes)
;   0x604f..0x608c  (61 bytes)
DATA_graficos_604F:
	defb 00bh,000h,085h,009h,01fh,03fh,03fh,01ch,00ch,000h,0a8h,080h,0c2h,0c4h,008h,001h	; 604f  .....??.........
	defb 003h,00fh,016h,020h,040h,040h,023h,012h,024h,01ch,009h,007h,005h,00fh,007h,0f8h	; 605f  ... @@#.$.......
	defb 0fch,0feh,0feh,07eh,03dh,03ah,0f4h,012h,00dh,005h,0f3h,0feh,0bah,0ffh,0feh,00dh	; 606f  ...~=:..........
	defb 01bh,003h,006h,00ch,000h,084h,0ech,0f2h,0fah,00ch,00ch,000h,000h	; 607f  .............

; ----------------------------------------------------------------------
; DATOS graficos_608C: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 2 de
;   0x6000; lo leen p00:43E9 (61 bytes)
;   0x608c..0x60c9  (61 bytes)
DATA_graficos_608C:
	defb 00ah,000h,086h,002h,01bh,036h,076h,03fh,01fh,00ch,000h,0a8h,0c0h,0e0h,0c0h,080h	; 608c  .....6v?........
	defb 01fh,03fh,07dh,064h,049h,089h,040h,020h,056h,05ah,04dh,027h,03fh,05bh,0ffh,07fh	; 609c  .?}dI.@ VZM'?[..
	defb 080h,0c0h,0e0h,0e0h,020h,010h,020h,040h,0a0h,090h,0d0h,0e0h,0c0h,0a0h,0f0h,0e0h	; 60ac  .... . @........
	defb 029h,025h,032h,018h,00ch,000h,083h,040h,060h,020h,00dh,000h,000h	; 60bc  )%2....@` ...

; ----------------------------------------------------------------------
; DATOS graficos_60C9: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 3 de
;   0x6000; lo leen p00:43E9 (64 bytes)
;   0x60c9..0x6109  (64 bytes)
DATA_graficos_60C9:
	defb 00ah,000h,086h,002h,01bh,036h,076h,03fh,01fh,00ah,000h,0aah,010h,00ah,0ceh,0eah	; 60c9  .....6v?........
	defb 0cah,09ch,01fh,03fh,07dh,064h,049h,089h,040h,020h,056h,095h,0bbh,07eh,03fh,05dh	; 60d9  ...?}dI.@ V..~?]
	defb 0ffh,07fh,080h,0d0h,0eah,0f5h,031h,015h,035h,062h,0bch,0a4h,048h,070h,0c0h,0a0h	; 60e9  ......1.5b..Hp..
	defb 0f0h,0e0h,029h,06ah,044h,001h,00ch,000h,084h,040h,058h,0b0h,080h,00ch,000h,000h	; 60f9  ..)jD....@X.....

; ----------------------------------------------------------------------
; DATOS graficos_6109: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 4 de
;   0x6000; lo leen p00:43E9 (63 bytes)
;   0x6109..0x6148  (63 bytes)
DATA_graficos_6109:
	defb 00bh,000h,085h,020h,050h,056h,0f7h,079h,00bh,000h,0aah,0d0h,0c8h,0f8h,0f8h,0f0h	; 6109  ... PV.y........
	defb 000h,03fh,07fh,0dfh,0afh,0a9h,008h,086h,06fh,0c6h,00fh,0ffh,03eh,07fh,0ffh,07fh	; 6119  .?......o...>...
	defb 000h,000h,0f0h,028h,034h,004h,004h,008h,0f8h,024h,0c2h,0a4h,018h,0feh,0ffh,0feh	; 6129  ...(4....$......
	defb 010h,039h,0f0h,000h,001h,00ch,000h,084h,0d8h,03ch,058h,0e0h,00bh,000h,000h	; 6139  .9.......<X....

; ----------------------------------------------------------------------
; DATOS graficos_6148: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 5 de
;   0x6000; lo leen p00:43E9 (63 bytes)
;   0x6148..0x6187  (63 bytes)
DATA_graficos_6148:
	defb 00ah,000h,085h,020h,050h,051h,0f5h,07ch,00bh,000h,0aah,034h,032h,0beh,0feh,07ch	; 6148  ... PQ.|...42..|
	defb 000h,03fh,07fh,0dfh,0afh,0aeh,00ah,083h,07fh,02ah,059h,071h,03eh,03fh,05fh,0ffh	; 6158  .?.......*Yq>?_.
	defb 07fh,000h,0bch,0cah,0cdh,041h,001h,083h,0feh,024h,0c2h,0a4h,018h,0f8h,0feh,0ffh	; 6168  .....A...$......
	defb 0feh,015h,026h,00eh,001h,00ch,000h,084h,0d8h,03ch,058h,0e0h,00ch,000h,000h	; 6178  ..&......<X....

; ----------------------------------------------------------------------
; DATOS graficos_6187: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 6 de
;   0x6000; lo leen p00:43E9 (64 bytes)
;   0x6187..0x61c7  (64 bytes)
DATA_graficos_6187:
	defb 00bh,000h,085h,00bh,013h,01fh,01fh,00fh,00bh,000h,0aah,004h,00ah,06ah,0efh,09eh	; 6187  .............j..
	defb 000h,000h,00fh,014h,02ch,020h,020h,010h,01fh,024h,043h,025h,018h,07fh,0ffh,07fh	; 6197  ....,  ..$C%....
	defb 000h,0fch,0feh,0fbh,0f5h,095h,010h,061h,0f6h,063h,0f0h,0ffh,07ch,0feh,0ffh,0feh	; 61a7  .......a.c..|...
	defb 000h,01bh,03ch,01ah,007h,00bh,000h,085h,008h,09ch,00fh,000h,080h,00bh,000h,000h	; 61b7  ..<.............

; ----------------------------------------------------------------------
; DATOS graficos_61C7: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 7 de
;   0x6000; lo leen p00:43E9 (63 bytes)
;   0x61c7..0x6206  (63 bytes)
DATA_graficos_61C7:
	defb 00ah,000h,085h,02ch,04ch,07dh,07fh,03eh,00bh,000h,0aah,004h,00ah,08ah,0afh,03eh	; 61c7  ...,L}.>.......>
	defb 000h,000h,03dh,053h,0b3h,082h,080h,0c1h,07fh,024h,043h,025h,018h,01fh,07fh,0ffh	; 61d7  ..=S.....$C%....
	defb 07fh,0fch,0feh,0fbh,0f5h,075h,050h,0c1h,0feh,054h,09ah,08eh,07ch,0fch,0fah,0ffh	; 61e7  .....uP..T..|...
	defb 0feh,01bh,03ch,01ah,007h,00ch,000h,084h,0a8h,064h,070h,080h,00ch,000h,000h	; 61f7  ..<......dp....

; ----------------------------------------------------------------------
; DATOS graficos_6206: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 8 de
;   0x6000; se solapan 2 bloques: (sprites_627C 627C-6290); lo leen p00:43E9,
;   p00:43DB (138 bytes)
;   0x6206..0x6290  (138 bytes)
DATA_graficos_6206:
	defb 00eh,000h,082h,003h,001h,00bh,000h,085h,020h,050h,050h,078h,0f0h,00dh,000h,083h	; 6206  ........ PPx....
	defb 001h,003h,003h,00dh,000h,085h,040h,020h,080h,007h,00fh,004h,01fh,083h,00fh,007h	; 6216  ......@ ........
	defb 003h,004h,007h,085h,03fh,07fh,03fh,0e0h,0f0h,003h,0f8h,090h,0fch,0f8h,0f0h,0e0h	; 6226  ....?.?.........
	defb 0f0h,0f0h,0e0h,0e0h,0fch,0feh,0fch,001h,001h,00dh,00fh,003h,003h,000h,081h,001h	; 6236  ................
	defb 007h,000h,08ah,0a0h,090h,0f0h,0f0h,0e0h,000h,068h,020h,0c0h,080h,006h,000h,083h	; 6246  .........h .....
	defb 003h,007h,007h,00dh,000h,083h,0e0h,090h,0d0h,00dh,000h,08bh,001h,003h,00fh,01fh	; 6256  ................
	defb 01fh,00fh,007h,00fh,00fh,007h,01fh,005h,000h,082h,0e0h,0f0h,003h,0f8h,086h,0f0h	; 6266  ................
	defb 0f8h,0fch,0f8h,0f0h,0fch,005h,000h,000h,055h,064h,090h,062h,090h,062h,090h,062h	; 6276  ........Ud.b.b.b
	defb 090h,062h,055h,064h,090h,062h,090h,062h,090h,062h	; 6286  .bUd.b.b.b

; ----------------------------------------------------------------------
; DATOS graficos_6290: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 2 de
;   0x627C; lo leen p00:43DB (453 bytes)
;   0x6290..0x6455  (453 bytes)
DATA_graficos_6290:
	defb 083h,007h,00dh,01bh,003h,01fh,08ch,00fh,01fh,026h,027h,017h,007h,00ch,00eh,004h	; 6290  .........&'.....
	defb 000h,0e0h,0f0h,004h,0f8h,084h,0f0h,0f8h,074h,0e8h,004h,0f0h,082h,090h,060h,009h	; 62a0  ........t.....`.
	defb 000h,082h,002h,004h,015h,000h,083h,019h,018h,008h,00dh,000h,081h,088h,00fh,000h	; 62b0  ................
	defb 083h,007h,00dh,01bh,003h,01fh,084h,00fh,01fh,02eh,017h,004h,00fh,084h,009h,006h	; 62c0  ................
	defb 0e0h,0f0h,004h,0f8h,089h,0f0h,0f8h,064h,0e4h,0e8h,0e0h,030h,070h,020h,00ah,000h	; 62d0  .......d...0p ..
	defb 082h,002h,004h,015h,000h,081h,011h,00fh,000h,083h,098h,018h,010h,00dh,000h,09bh	; 62e0  ................
	defb 005h,00bh,01fh,019h,012h,022h,010h,008h,016h,00eh,013h,013h,00fh,00eh,004h,000h	; 62f0  ....."..........
	defb 0e0h,0f0h,078h,018h,048h,044h,008h,018h,074h,074h,0e8h,003h,0f0h,082h,090h,060h	; 6300  ..x.HD..tt.....`
	defb 008h,000h,088h,002h,004h,000h,006h,00dh,01dh,00fh,007h,00ah,000h,08ah,080h,0e0h	; 6310  ................
	defb 0b0h,0b8h,0f0h,0e0h,009h,011h,00ch,00ch,00ch,000h,002h,088h,00eh,000h,08bh,005h	; 6320  ................
	defb 00bh,01fh,019h,012h,022h,010h,018h,02eh,02eh,017h,003h,00fh,091h,009h,006h,0e0h	; 6330  ...."...........
	defb 0f0h,078h,018h,048h,044h,008h,010h,068h,070h,0c8h,0c8h,0f0h,070h,020h,009h,000h	; 6340  .x.HD..hp...p ..
	defb 088h,002h,004h,000h,006h,00dh,01dh,00fh,007h,00ah,000h,088h,080h,0e0h,0b0h,0b8h	; 6350  ................
	defb 0f0h,0e0h,011h,011h,00eh,000h,084h,090h,088h,030h,030h,00ch,000h,092h,007h,00fh	; 6360  .........00.....
	defb 01bh,015h,015h,021h,010h,00fh,009h,00bh,00fh,006h,007h,007h,003h,00fh,0e0h,0f0h	; 6370  ...!............
	defb 003h,0f8h,08bh,038h,070h,0c0h,0a0h,010h,090h,020h,0c0h,080h,0c0h,0c0h,00ah,000h	; 6380  ...8p.... ......
	defb 085h,004h,00ah,00ah,01eh,00fh,00eh,000h,087h,0c0h,080h,000h,006h,004h,000h,001h	; 6390  ................
	defb 00ch,000h,084h,040h,0e0h,060h,0c0h,00dh,000h,092h,007h,00fh,01bh,015h,015h,021h	; 63a0  ...@.`.........!
	defb 010h,00fh,019h,008h,011h,00fh,00eh,03ch,01ch,000h,0e0h,0f0h,003h,0f8h,08ah,038h	; 63b0  .......<.......8
	defb 070h,0c0h,0e0h,0c0h,0e0h,0e0h,0f0h,078h,0f0h,00bh,000h,085h,004h,00ah,00ah,01eh	; 63c0  p......x........
	defb 00fh,00eh,000h,086h,0c0h,080h,000h,006h,017h,00eh,00eh,000h,081h,020h,00dh,000h	; 63d0  ............. ..
	defb 082h,007h,00fh,003h,01fh,09bh,01ch,00eh,003h,005h,008h,009h,004h,003h,001h,003h	; 63e0  ................
	defb 003h,0e0h,0f0h,0d8h,0a8h,0a8h,084h,008h,0f0h,090h,0d0h,0f0h,060h,0e0h,0e0h,0c0h	; 63f0  ............`...
	defb 0f0h,00dh,000h,082h,003h,001h,00bh,000h,08ah,020h,050h,050h,078h,0f0h,000h,002h	; 6400  ......... PPx...
	defb 007h,006h,003h,00ch,000h,084h,060h,020h,000h,080h,00dh,000h,082h,007h,00fh,003h	; 6410  ......` ........
	defb 01fh,09ah,01ch,00eh,003h,007h,003h,007h,007h,00fh,01eh,00fh,000h,0e0h,0f0h,0d8h	; 6420  ................
	defb 0a8h,0a8h,084h,008h,0f0h,098h,010h,088h,0f0h,070h,03ch,038h,00eh,000h,082h,003h	; 6430  .........p<8....
	defb 001h,00bh,000h,088h,020h,050h,050h,078h,0f0h,000h,000h,004h,00eh,000h,083h,060h	; 6440  .... PPx.......`
	defb 0e8h,070h,00ch,000h,000h	; 6450

; ----------------------------------------------------------------------
; DATOS graficos_6455: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 1 de
;   0x627C; lo leen p00:43DB (391 bytes)
;   0x6455..0x65dc  (391 bytes)
DATA_graficos_6455:
	defb 0a0h,007h,00dh,01ah,010h,013h,067h,0b8h,09fh,046h,026h,01fh,00fh,07fh,05eh,04ch	; 6455  ......g..F&...^L
	defb 028h,0e0h,030h,058h,008h,0c8h,0e6h,01dh,0f9h,062h,0e4h,0f8h,0f0h,0feh,07ah,032h	; 6465  (.0X.....b....z2
	defb 014h,009h,000h,087h,002h,005h,00fh,00ch,018h,047h,060h,009h,000h,089h,0c0h,0a0h	; 6475  .........G`.....
	defb 0f0h,030h,018h,0e2h,006h,039h,019h,003h,000h,083h,020h,030h,010h,008h,000h,082h	; 6485  .0...9.... 0....
	defb 09ch,018h,003h,000h,083h,004h,00ch,008h,008h,000h,0a0h,028h,05ch,07eh,07fh,00fh	; 6495  ...........(\~..
	defb 01fh,027h,046h,09fh,0b8h,067h,013h,010h,01ah,00ch,007h,014h,03ah,07eh,0feh,0f0h	; 64a5  .'F..g......:~..
	defb 0f8h,064h,062h,0f9h,01dh,0e6h,0c8h,008h,058h,0b0h,0e0h,008h,000h,082h,010h,020h	; 64b5  .db.....X......
	defb 004h,000h,082h,018h,039h,008h,000h,082h,008h,004h,004h,000h,089h,098h,09ch,060h	; 64c5  ....9..........`
	defb 047h,018h,00ch,00fh,005h,003h,009h,000h,087h,006h,0e2h,018h,030h,0f0h,0a0h,040h	; 64d5  G...........0..@
	defb 009h,000h,09fh,003h,004h,006h,03bh,063h,0c5h,0adh,0cdh,08dh,0adh,0c5h,063h,03bh	; 64e5  .......c......c.
	defb 006h,004h,003h,000h,08eh,049h,02ch,03fh,0feh,0fch,038h,078h,0fch,0feh,03fh,02ch	; 64f5  .....I,?..8x..?,
	defb 049h,08eh,012h,000h,08eh,003h,001h,004h,01ch,03ah,052h,032h,072h,052h,03ah,01ch	; 6505  I........:R2rR:.
	defb 004h,001h,003h,003h,000h,08ch,086h,0c3h,0c0h,000h,000h,0c0h,080h,000h,000h,0c0h	; 6515  ................
	defb 0c3h,086h,013h,000h,09fh,071h,092h,034h,0fch,07fh,03fh,01ch,01eh,03fh,07fh,0fch	; 6525  .....q.4..?..?..
	defb 034h,092h,071h,000h,0c0h,020h,060h,0dch,0c6h,0a3h,0b5h,0b3h,0b1h,0b5h,0a3h,0c7h	; 6535  4.q.. `.........
	defb 0deh,060h,020h,0c0h,012h,000h,08ch,061h,0c3h,003h,000h,000h,003h,001h,000h,000h	; 6545  .` ....a........
	defb 003h,0c3h,061h,003h,000h,08eh,0c0h,080h,020h,038h,05ch,04ah,04ch,04eh,04ah,05ch	; 6555  ..a..... 8\JLNJ\
	defb 038h,020h,080h,0c0h,011h,000h,083h,007h,00dh,01bh,003h,01fh,08ch,00fh,01fh,026h	; 6565  8 .............&
	defb 027h,017h,007h,00ch,00eh,004h,000h,0e0h,0f0h,004h,0f8h,084h,0f0h,0f8h,074h,0e8h	; 6575  '.............t.
	defb 004h,0f0h,082h,090h,060h,009h,000h,082h,002h,004h,015h,000h,083h,019h,018h,008h	; 6585  ....`...........
	defb 00dh,000h,081h,088h,010h,000h,092h,007h,00fh,01bh,015h,015h,021h,050h,0bfh,0bfh	; 6595  ............!P..
	defb 080h,080h,092h,080h,040h,03fh,000h,0e0h,0f0h,003h,0f8h,08ah,038h,072h,09dh,0fdh	; 65a5  ....@?......8r..
	defb 001h,001h,049h,001h,002h,0fch,00bh,000h,085h,004h,00ah,00ah,01eh,00fh,00eh,000h	; 65b5  ..I.............
	defb 089h,0c0h,080h,040h,040h,07fh,07fh,06dh,07fh,03fh,009h,000h,087h,062h,002h,0feh	; 65c5  ...@@..m.?...b..
	defb 0feh,0b6h,0feh,0fch,009h,000h,000h	; 65d5

; ----------------------------------------------------------------------
; DATOS sprites_65DC: 8 palabras: graficos de sprites que p00:4AF9 pone en la
;   VRAM 0x1800 (o 0x1860) segun 0xE3C3 o (0xEB74 & 7) x 2 - 2; el tamano,
;   hasta el primero; lo leen p00:4AF9 (16 bytes)
;   0x65dc..0x65ec  (16 bytes)
DATA_sprites_65DC:
	defb 0ech,065h	; 65dc
	defb 02eh,066h	; 65de
	defb 070h,066h	; 65e0
	defb 0b1h,066h	; 65e2
	defb 0f1h,066h	; 65e4
	defb 031h,067h	; 65e6
	defb 071h,067h	; 65e8
	defb 0b1h,067h	; 65ea

; ----------------------------------------------------------------------
; DATOS graficos_65EC: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 0 de
;   0x65DC; lo leen p00:4AF9, p00:4AA0 (66 bytes)
;   0x65ec..0x662e  (66 bytes)
DATA_graficos_65EC:
	defb 0c0h,001h,002h,005h,00fh,015h,015h,025h,055h,0b7h,065h,055h,0bah,076h,038h,03ch	; 65ec  .......%U.eU.v8<
	defb 00fh,080h,040h,0a0h,0f0h,0a8h,0a8h,0a4h,0aah,0edh,0a6h,0aah,05dh,06ah,018h,038h	; 65fc  ..@.........]j.8
	defb 0f0h,000h,001h,002h,000h,00ah,00ah,01ah,02ah,048h,01ah,02ah,045h,009h,007h,003h	; 660c  ........*H.*E...
	defb 000h,000h,080h,040h,000h,050h,050h,058h,054h,012h,058h,054h,0a2h,090h,0e0h,0c0h	; 661c  ...@.PPXT.XT....
	defb 000h,000h	; 662c

; ----------------------------------------------------------------------
; DATOS graficos_662E: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 1 de
;   0x65DC; lo leen p00:4AF9, p00:4AA0 (66 bytes)
;   0x662e..0x6670  (66 bytes)
DATA_graficos_662E:
	defb 0c0h,001h,002h,005h,04fh,0b5h,055h,065h,0b5h,057h,065h,075h,07ah,076h,038h,03ch	; 662e  ....O.Ue.Weuzv8<
	defb 00fh,080h,040h,0a0h,0f2h,0adh,0aah,0a6h,0adh,0eah,0a4h,0a8h,058h,068h,018h,038h	; 663e  ..@.........Xh.8
	defb 0f0h,000h,001h,002h,000h,04ah,02ah,01ah,04ah,028h,01ah,00ah,005h,009h,007h,003h	; 664e  .....J*.J(......
	defb 000h,000h,080h,040h,000h,052h,054h,058h,052h,014h,058h,050h,0a0h,090h,0e0h,0c0h	; 665e  ...@.RTXR.XP....
	defb 000h,000h	; 666e

; ----------------------------------------------------------------------
; DATOS graficos_6670: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 2 de
;   0x65DC; lo leen p00:4AF9 (65 bytes)
;   0x6670..0x66b1  (65 bytes)
DATA_graficos_6670:
	defb 0aeh,001h,007h,004h,00ch,054h,0b4h,054h,064h,0bfh,055h,06ah,071h,039h,01dh,00fh	; 6670  .....T.Td.Ujq9..
	defb 007h,080h,0e0h,020h,030h,02ah,02dh,02ah,026h,0fdh,0aah,054h,088h,010h,030h,060h	; 6680  ... 0*-*&..T..0`
	defb 0c0h,000h,000h,003h,003h,00bh,04bh,02bh,01bh,040h,02ah,015h,00eh,006h,002h,004h	; 6690  ......K+.@*.....
	defb 000h,002h,0c0h,08ch,0d0h,0d2h,0d4h,0d8h,002h,054h,0a8h,070h,0e0h,0c0h,080h,000h	; 66a0  .........T.p....
	defb 000h	; 66b0

; ----------------------------------------------------------------------
; DATOS graficos_66B1: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 3 de
;   0x65DC; lo leen p00:4AF9 (64 bytes)
;   0x66b1..0x66f1  (64 bytes)
DATA_graficos_66B1:
	defb 084h,001h,007h,004h,00ch,003h,014h,08dh,024h,05fh,0b5h,06ah,051h,0b9h,05dh,00fh	; 66b1  ........$_.jQ.].
	defb 007h,080h,0e0h,020h,030h,003h,028h,08dh,024h,0fah,0adh,056h,08ah,015h,032h,060h	; 66c1  ... 0.(.$..V..2`
	defb 0c0h,000h,000h,003h,003h,003h,00bh,087h,01bh,020h,04ah,015h,02eh,046h,002h,004h	; 66d1  ......... J..F..
	defb 000h,002h,0c0h,003h,0d0h,089h,0d8h,004h,052h,0a8h,074h,0e2h,0c0h,080h,000h,000h	; 66e1  ........R.t.....

; ----------------------------------------------------------------------
; DATOS graficos_66F1: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 4 de
;   0x65DC; lo leen p00:4AF9 (64 bytes)
;   0x66f1..0x6731  (64 bytes)
DATA_graficos_66F1:
	defb 002h,000h,082h,003h,004h,004h,008h,08dh,004h,0ffh,09fh,060h,034h,070h,0feh,07fh	; 66f1  ...........`4p..
	defb 050h,04ch,0c2h,03ch,050h,003h,0d0h,088h,056h,03dh,0f9h,002h,096h,005h,0efh,076h	; 6701  PL.<P...V=.....v
	defb 003h,000h,081h,003h,004h,007h,08dh,003h,000h,060h,01fh,00bh,00fh,001h,000h,020h	; 6711  .........`.....
	defb 030h,03ch,0c0h,0a0h,003h,020h,088h,0a0h,0c2h,006h,0fch,068h,0f8h,010h,088h,000h	; 6721  0<... .....h....

; ----------------------------------------------------------------------
; DATOS graficos_6731: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 5 de
;   0x65DC; lo leen p00:4AF9 (64 bytes)
;   0x6731..0x6771  (64 bytes)
DATA_graficos_6731:
	defb 002h,000h,082h,003h,004h,004h,008h,08dh,004h,0ffh,09fh,060h,034h,070h,0fbh,077h	; 6731  ...........`4p.w
	defb 050h,04ch,0c2h,03ch,050h,003h,0d0h,088h,056h,03dh,0f9h,002h,096h,005h,0bfh,07eh	; 6741  PL.<P...V=.....~
	defb 003h,000h,081h,003h,004h,007h,08dh,003h,000h,060h,01fh,00bh,00fh,004h,008h,020h	; 6751  .........`.....
	defb 030h,03ch,0c0h,0a0h,003h,020h,088h,0a0h,0c2h,006h,0fch,068h,0f8h,040h,080h,000h	; 6761  0<... .....h.@..

; ----------------------------------------------------------------------
; DATOS graficos_6771: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 6 de
;   0x65DC; lo leen p00:4AF9 (64 bytes)
;   0x6771..0x67b1  (64 bytes)
DATA_graficos_6771:
	defb 085h,00ah,032h,043h,03ch,00ah,003h,00bh,08ch,06ah,0bch,09fh,040h,069h,0a0h,0f7h	; 6771  ..2C<....j..@i..
	defb 06eh,000h,000h,0c0h,020h,004h,010h,08dh,020h,0ffh,0f9h,006h,02ch,00eh,07fh,0feh	; 6781  n... ... ...,...
	defb 004h,00ch,03ch,003h,005h,003h,004h,088h,005h,043h,060h,03fh,016h,01fh,008h,011h	; 6791  ..<......C`?....
	defb 003h,000h,081h,0c0h,004h,0e0h,088h,0c0h,000h,006h,0f8h,0d0h,0f0h,080h,000h,000h	; 67a1  ................

; ----------------------------------------------------------------------
; DATOS graficos_67B1: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprites, entrada 7 de
;   0x65DC; lo leen p00:4AF9 (64 bytes)
;   0x67b1..0x67f1  (64 bytes)
DATA_graficos_67B1:
	defb 085h,00ah,032h,043h,03ch,00ah,003h,00bh,08ch,06ah,0bch,09fh,040h,069h,0a0h,0fdh	; 67b1  ..2C<....j..@i..
	defb 07eh,000h,000h,0c0h,020h,004h,010h,08dh,020h,0ffh,0f9h,006h,02ch,00eh,0dfh,0eeh	; 67c1  ~... ... ...,...
	defb 004h,00ch,03ch,003h,005h,003h,004h,088h,005h,043h,060h,03fh,016h,01fh,002h,001h	; 67d1  ..<......C`?....
	defb 003h,000h,081h,0c0h,004h,0e0h,088h,0c0h,000h,006h,0f8h,0d0h,0f0h,020h,010h,000h	; 67e1  ............. ..

; ----------------------------------------------------------------------
; DATOS sprites_de_cada_sala: un byte por sala (0x67F1 + 0xEB40): la lista de
;   0x6A28 (0-20); lo leen p00:4AA0 (567 bytes)
;   0x67f1..0x6a28  (567 bytes)
DATA_sprites_de_cada_sala:
	defb 000h,000h,000h,000h,000h,000h,011h,000h,000h,000h,000h,001h,000h,000h,000h,000h	; 67f1  ................
	defb 004h,000h,001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6801  ................
	defb 000h,000h,000h,00ah,00ah,000h,005h,011h,000h,000h,000h,00ah,002h,008h,000h,000h	; 6811  ................
	defb 00ah,000h,000h,000h,000h,001h,000h,000h,000h,000h,000h,009h,000h,000h,00dh,000h	; 6821  ................
	defb 000h,000h,001h,000h,002h,000h,000h,001h,000h,000h,000h,009h,000h,000h,000h,000h	; 6831  ................
	defb 00ah,000h,00ah,000h,000h,000h,000h,000h,000h,000h,000h,000h,00ah,000h,00ah,000h	; 6841  ................
	defb 000h,000h,013h,010h,000h,000h,000h,000h,000h,000h,001h,004h,00ah,005h,000h,000h	; 6851  ................
	defb 000h,000h,000h,000h,000h,009h,000h,000h,000h,002h,000h,002h,00ah,000h,000h,000h	; 6861  ................
	defb 000h,000h,008h,001h,000h,000h,000h,007h,000h,002h,002h,000h,000h,000h,000h,000h	; 6871  ................
	defb 00ah,000h,000h,000h,000h,005h,00ah,000h,00ah,012h,000h,004h,000h,000h,000h,000h	; 6881  ................
	defb 000h,000h,00ah,000h,000h,000h,000h,007h,000h,000h,000h,000h,000h,006h,00ah,000h	; 6891  ................
	defb 00fh,001h,000h,00ah,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 68a1  ................
	defb 000h,000h,000h,000h,000h,00ah,000h,007h,001h,002h,00ah,000h,003h,00ah,004h,010h	; 68b1  ................
	defb 000h,002h,00ah,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 68c1  ................
	defb 000h,000h,002h,000h,009h,000h,000h,007h,000h,000h,000h,000h,003h,001h,003h,00ah	; 68d1  ................
	defb 000h,00ah,000h,004h,000h,000h,002h,005h,000h,009h,000h,000h,00ah,000h,009h,000h	; 68e1  ................
	defb 000h,000h,000h,000h,000h,000h,000h,007h,000h,003h,000h,00ah,000h,004h,003h,009h	; 68f1  ................
	defb 000h,005h,000h,003h,000h,000h,00ah,00ah,000h,005h,000h,000h,000h,000h,000h,000h	; 6901  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,002h,000h,00ch,008h,00bh,00ah	; 6911  ................
	defb 00ah,000h,000h,000h,000h,000h,005h,005h,005h,000h,000h,000h,000h,000h,000h,000h	; 6921  ................
	defb 000h,000h,007h,000h,000h,000h,00ah,000h,005h,00ah,000h,004h,000h,005h,000h,000h	; 6931  ................
	defb 000h,000h,009h,009h,000h,000h,009h,00ah,00ah,012h,000h,000h,000h,000h,000h,000h	; 6941  ................
	defb 000h,000h,000h,00ah,00ah,006h,004h,000h,000h,000h,000h,000h,000h,000h,001h,000h	; 6951  ................
	defb 004h,000h,000h,000h,000h,000h,005h,000h,000h,000h,000h,004h,001h,000h,00ah,000h	; 6961  ................
	defb 000h,000h,000h,009h,000h,006h,003h,000h,000h,000h,000h,004h,000h,000h,000h,000h	; 6971  ................
	defb 000h,000h,000h,013h,002h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6981  ................
	defb 000h,000h,004h,000h,004h,000h,000h,000h,000h,004h,00ah,001h,009h,00ah,002h,001h	; 6991  ................
	defb 00ah,00ah,000h,000h,000h,002h,000h,000h,001h,00ah,004h,000h,009h,000h,000h,000h	; 69a1  ................
	defb 000h,000h,000h,000h,00ah,00ah,000h,000h,000h,001h,00ah,00ah,000h,00ah,000h,004h	; 69b1  ................
	defb 011h,00ah,004h,000h,002h,000h,000h,002h,004h,00ah,004h,000h,000h,000h,000h,000h	; 69c1  ................
	defb 000h,000h,000h,001h,000h,000h,000h,000h,000h,000h,000h,00ah,00ah,00ah,00ah,00ah	; 69d1  ................
	defb 00ah,00ah,000h,000h,000h,001h,000h,000h,000h,004h,004h,000h,000h,000h,000h,005h	; 69e1  ................
	defb 000h,002h,000h,000h,000h,000h,000h,000h,002h,000h,000h,000h,011h,010h,006h,002h	; 69f1  ................
	defb 009h,000h,009h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,003h,000h	; 6a01  ................
	defb 000h,000h,000h,000h,000h,000h,000h,011h,000h,000h,000h,014h,000h,002h,000h,011h	; 6a11  ................
	defb 000h,00fh,001h,00eh,00bh,000h,000h	; 6a21

; ----------------------------------------------------------------------
; DATOS listas_de_sprites: 21 palabras: 21 listas de registros de 4 bytes
;   (p00:4AB1); lo leen p00:4AA0 (42 bytes)
;   0x6a28..0x6a52  (42 bytes)
DATA_listas_de_sprites:
	defb 052h,06ah	; 6a28
	defb 07bh,06ah	; 6a2a
	defb 0b4h,06ah	; 6a2c
	defb 0e5h,06ah	; 6a2e
	defb 02eh,06bh	; 6a30
	defb 047h,06bh	; 6a32
	defb 064h,06bh	; 6a34
	defb 089h,06bh	; 6a36
	defb 0ceh,06bh	; 6a38
	defb 0ffh,06bh	; 6a3a
	defb 01ch,06ch	; 6a3c
	defb 04dh,06ch	; 6a3e
	defb 082h,06ch	; 6a40
	defb 09fh,06ch	; 6a42
	defb 0c4h,06ch	; 6a44
	defb 0f9h,06ch	; 6a46
	defb 022h,06dh	; 6a48
	defb 043h,06dh	; 6a4a
	defb 064h,06dh	; 6a4c
	defb 089h,06dh	; 6a4e
	defb 0aah,06dh	; 6a50

; ----------------------------------------------------------------------
; DATOS lista_sprites_0: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (41 bytes)
;   0x6a52..0x6a7b  (41 bytes)
DATA_lista_sprites_0:
	defb 000h,018h,06dh,070h	; 6a52
	defb 000h,038h,063h,071h	; 6a56
	defb 001h,038h,048h,004h	; 6a5a
	defb 000h,058h,00ch,073h	; 6a5e
	defb 000h,078h,0edh,073h	; 6a62
	defb 001h,078h,088h,004h	; 6a66
	defb 000h,098h,0b3h,081h	; 6a6a
	defb 000h,0d8h,02dh,078h	; 6a6e
	defb 000h,0e8h,0b0h,078h	; 6a72
	defb 001h,0e8h,0f0h,002h	; 6a76
	defb 0ffh	; 6a7a

; ----------------------------------------------------------------------
; DATOS lista_sprites_1: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (57 bytes)
;   0x6a7b..0x6ab4  (57 bytes)
DATA_lista_sprites_1:
	defb 000h,018h,03ah,080h	; 6a7b
	defb 001h,038h,048h,004h	; 6a7f
	defb 000h,058h,06dh,070h	; 6a83
	defb 000h,078h,063h,071h	; 6a87
	defb 001h,078h,088h,004h	; 6a8b
	defb 000h,098h,009h,076h	; 6a8f
	defb 001h,098h,0a0h,002h	; 6a93
	defb 000h,0a8h,035h,076h	; 6a97
	defb 000h,0b8h,0a9h,076h	; 6a9b
	defb 001h,0b8h,0c8h,004h	; 6a9f
	defb 000h,0d8h,0e8h,07bh	; 6aa3
	defb 001h,0d8h,0e0h,002h	; 6aa7
	defb 000h,0e8h,02ah,07ch	; 6aab
	defb 001h,0e8h,0f0h,002h	; 6aaf
	defb 0ffh	; 6ab3

; ----------------------------------------------------------------------
; DATOS lista_sprites_2: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (49 bytes)
;   0x6ab4..0x6ae5  (49 bytes)
DATA_lista_sprites_2:
	defb 000h,018h,0bfh,06dh	; 6ab4
	defb 000h,028h,031h,06eh	; 6ab8
	defb 001h,028h,030h,002h	; 6abc
	defb 000h,038h,073h,06eh	; 6ac0
	defb 001h,038h,048h,004h	; 6ac4
	defb 000h,058h,03ah,080h	; 6ac8
	defb 001h,078h,088h,004h	; 6acc
	defb 000h,098h,02ah,07fh	; 6ad0
	defb 000h,0ach,0bfh,07fh	; 6ad4
	defb 000h,0d8h,0f2h,078h	; 6ad8
	defb 000h,0e8h,075h,079h	; 6adc
	defb 001h,0e8h,0f0h,002h	; 6ae0
	defb 0ffh	; 6ae4

; ----------------------------------------------------------------------
; DATOS lista_sprites_3: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (73 bytes)
;   0x6ae5..0x6b2e  (73 bytes)
DATA_lista_sprites_3:
	defb 000h,018h,0bfh,06dh	; 6ae5
	defb 000h,028h,031h,06eh	; 6ae9
	defb 001h,028h,030h,002h	; 6aed
	defb 000h,038h,073h,06eh	; 6af1
	defb 001h,038h,048h,004h	; 6af5
	defb 000h,058h,0d9h,071h	; 6af9
	defb 000h,068h,04fh,072h	; 6afd
	defb 001h,068h,070h,002h	; 6b01
	defb 000h,078h,08eh,072h	; 6b05
	defb 001h,078h,088h,004h	; 6b09
	defb 000h,098h,009h,076h	; 6b0d
	defb 001h,098h,0a0h,002h	; 6b11
	defb 000h,0a8h,035h,076h	; 6b15
	defb 000h,0b8h,0a9h,076h	; 6b19
	defb 001h,0b8h,0c8h,004h	; 6b1d
	defb 000h,0d8h,067h,07ch	; 6b21
	defb 000h,0e8h,0e6h,07ch	; 6b25
	defb 001h,0e8h,0f0h,002h	; 6b29
	defb 0ffh	; 6b2d

; ----------------------------------------------------------------------
; DATOS lista_sprites_4: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (25 bytes)
;   0x6b2e..0x6b47  (25 bytes)
DATA_lista_sprites_4:
	defb 000h,018h,0a3h,083h	; 6b2e
	defb 001h,038h,048h,004h	; 6b32
	defb 000h,058h,022h,085h	; 6b36
	defb 001h,078h,088h,004h	; 6b3a
	defb 000h,098h,0b3h,081h	; 6b3e
	defb 000h,0d8h,02ah,07fh	; 6b42
	defb 0ffh	; 6b46

; ----------------------------------------------------------------------
; DATOS lista_sprites_5: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (29 bytes)
;   0x6b47..0x6b64  (29 bytes)
DATA_lista_sprites_5:
	defb 000h,018h,06dh,070h	; 6b47
	defb 000h,038h,063h,071h	; 6b4b
	defb 001h,038h,048h,004h	; 6b4f
	defb 000h,058h,062h,074h	; 6b53
	defb 000h,098h,0b4h,079h	; 6b57
	defb 000h,0b8h,0ach,07ah	; 6b5b
	defb 001h,0b8h,0c8h,004h	; 6b5f
	defb 0ffh	; 6b63

; ----------------------------------------------------------------------
; DATOS lista_sprites_6: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (37 bytes)
;   0x6b64..0x6b89  (37 bytes)
DATA_lista_sprites_6:
	defb 000h,018h,062h,074h	; 6b64
	defb 000h,058h,0a3h,083h	; 6b68
	defb 001h,078h,088h,004h	; 6b6c
	defb 000h,098h,009h,076h	; 6b70
	defb 001h,098h,0a0h,002h	; 6b74
	defb 000h,0a8h,035h,076h	; 6b78
	defb 000h,0b8h,0a9h,076h	; 6b7c
	defb 001h,0b8h,0c8h,004h	; 6b80
	defb 000h,0d8h,0f4h,07eh	; 6b84
	defb 0ffh	; 6b88

; ----------------------------------------------------------------------
; DATOS lista_sprites_7: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (69 bytes)
;   0x6b89..0x6bce  (69 bytes)
DATA_lista_sprites_7:
	defb 000h,018h,0bfh,06dh	; 6b89
	defb 000h,028h,031h,06eh	; 6b8d
	defb 001h,028h,030h,002h	; 6b91
	defb 000h,038h,073h,06eh	; 6b95
	defb 001h,038h,048h,004h	; 6b99
	defb 000h,058h,009h,076h	; 6b9d
	defb 001h,058h,060h,002h	; 6ba1
	defb 000h,068h,035h,076h	; 6ba5
	defb 000h,078h,0a9h,076h	; 6ba9
	defb 001h,078h,088h,004h	; 6bad
	defb 000h,098h,0b4h,079h	; 6bb1
	defb 000h,0b8h,0ach,07ah	; 6bb5
	defb 001h,0b8h,0c8h,004h	; 6bb9
	defb 000h,0d8h,027h,07dh	; 6bbd
	defb 000h,0e8h,0a4h,07dh	; 6bc1
	defb 001h,0e8h,0f0h,002h	; 6bc5
	defb 000h,0f8h,023h,088h	; 6bc9
	defb 0ffh	; 6bcd

; ----------------------------------------------------------------------
; DATOS lista_sprites_8: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (49 bytes)
;   0x6bce..0x6bff  (49 bytes)
DATA_lista_sprites_8:
	defb 000h,018h,062h,074h	; 6bce
	defb 000h,058h,018h,077h	; 6bd2
	defb 000h,078h,0b9h,077h	; 6bd6
	defb 001h,078h,088h,004h	; 6bda
	defb 000h,098h,009h,076h	; 6bde
	defb 001h,098h,0a0h,002h	; 6be2
	defb 000h,0a8h,035h,076h	; 6be6
	defb 000h,0b8h,0a9h,076h	; 6bea
	defb 001h,0b8h,0c8h,004h	; 6bee
	defb 000h,0d8h,02dh,078h	; 6bf2
	defb 000h,0e8h,0b0h,078h	; 6bf6
	defb 001h,0e8h,0f0h,002h	; 6bfa
	defb 0ffh	; 6bfe

; ----------------------------------------------------------------------
; DATOS lista_sprites_9: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (29 bytes)
;   0x6bff..0x6c1c  (29 bytes)
DATA_lista_sprites_9:
	defb 000h,018h,0bah,08bh	; 6bff
	defb 000h,020h,0fch,08bh	; 6c03
	defb 000h,058h,0b5h,07eh	; 6c07
	defb 000h,098h,02ah,07fh	; 6c0b
	defb 000h,0d8h,025h,07bh	; 6c0f
	defb 000h,0e8h,0a7h,07bh	; 6c13
	defb 001h,0e8h,0f0h,002h	; 6c17
	defb 0ffh	; 6c1b

; ----------------------------------------------------------------------
; DATOS lista_sprites_10: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (49 bytes)
;   0x6c1c..0x6c4d  (49 bytes)
DATA_lista_sprites_10:
	defb 000h,018h,0b4h,079h	; 6c1c
	defb 000h,038h,0ach,07ah	; 6c20
	defb 001h,038h,048h,004h	; 6c24
	defb 000h,058h,0aeh,089h	; 6c28
	defb 001h,078h,088h,004h	; 6c2c
	defb 000h,098h,02ah,07fh	; 6c30
	defb 000h,0b0h,0fah,07fh	; 6c34
	defb 000h,0b8h,075h,090h	; 6c38
	defb 000h,0cch,078h,07eh	; 6c3c
	defb 000h,0d8h,0e3h,07dh	; 6c40
	defb 000h,0e8h,04ah,07eh	; 6c44
	defb 001h,0e8h,0f0h,002h	; 6c48
	defb 0ffh	; 6c4c

; ----------------------------------------------------------------------
; DATOS lista_sprites_11: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (53 bytes)
;   0x6c4d..0x6c82  (53 bytes)
DATA_lista_sprites_11:
	defb 000h,018h,06dh,070h	; 6c4d
	defb 000h,038h,063h,071h	; 6c51
	defb 001h,038h,048h,004h	; 6c55
	defb 000h,058h,0d9h,071h	; 6c59
	defb 000h,068h,04fh,072h	; 6c5d
	defb 001h,068h,070h,002h	; 6c61
	defb 000h,078h,08eh,072h	; 6c65
	defb 001h,078h,088h,004h	; 6c69
	defb 000h,098h,009h,076h	; 6c6d
	defb 001h,098h,0a0h,002h	; 6c71
	defb 000h,0a8h,035h,076h	; 6c75
	defb 000h,0b8h,0a9h,076h	; 6c79
	defb 001h,0b8h,0c8h,004h	; 6c7d
	defb 0ffh	; 6c81

; ----------------------------------------------------------------------
; DATOS lista_sprites_12: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (29 bytes)
;   0x6c82..0x6c9f  (29 bytes)
DATA_lista_sprites_12:
	defb 000h,018h,06dh,070h	; 6c82
	defb 000h,038h,063h,071h	; 6c86
	defb 001h,038h,048h,004h	; 6c8a
	defb 000h,058h,0a3h,083h	; 6c8e
	defb 001h,078h,088h,004h	; 6c92
	defb 000h,098h,03ah,080h	; 6c96
	defb 001h,0b8h,0c8h,004h	; 6c9a
	defb 0ffh	; 6c9e

; ----------------------------------------------------------------------
; DATOS lista_sprites_13: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (37 bytes)
;   0x6c9f..0x6cc4  (37 bytes)
DATA_lista_sprites_13:
	defb 000h,018h,0bfh,06dh	; 6c9f
	defb 000h,028h,031h,06eh	; 6ca3
	defb 001h,028h,030h,002h	; 6ca7
	defb 000h,038h,073h,06eh	; 6cab
	defb 001h,038h,048h,004h	; 6caf
	defb 000h,058h,062h,074h	; 6cb3
	defb 000h,098h,0b4h,079h	; 6cb7
	defb 000h,0b8h,0ach,07ah	; 6cbb
	defb 001h,0b8h,0c8h,004h	; 6cbf
	defb 0ffh	; 6cc3

; ----------------------------------------------------------------------
; DATOS lista_sprites_14: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (53 bytes)
;   0x6cc4..0x6cf9  (53 bytes)
DATA_lista_sprites_14:
	defb 000h,018h,0bfh,06dh	; 6cc4
	defb 000h,028h,031h,06eh	; 6cc8
	defb 001h,028h,030h,002h	; 6ccc
	defb 000h,038h,073h,06eh	; 6cd0
	defb 001h,038h,048h,004h	; 6cd4
	defb 000h,058h,06dh,070h	; 6cd8
	defb 000h,078h,063h,071h	; 6cdc
	defb 001h,078h,088h,004h	; 6ce0
	defb 000h,098h,009h,076h	; 6ce4
	defb 001h,098h,0a0h,002h	; 6ce8
	defb 000h,0a8h,035h,076h	; 6cec
	defb 000h,0b8h,0a9h,076h	; 6cf0
	defb 001h,0b8h,0c8h,004h	; 6cf4
	defb 0ffh	; 6cf8

; ----------------------------------------------------------------------
; DATOS lista_sprites_15: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (41 bytes)
;   0x6cf9..0x6d22  (41 bytes)
DATA_lista_sprites_15:
	defb 000h,018h,0fdh,08eh	; 6cf9
	defb 001h,038h,048h,004h	; 6cfd
	defb 000h,058h,0f1h,06eh	; 6d01
	defb 000h,078h,0ebh,06fh	; 6d05
	defb 001h,078h,088h,004h	; 6d09
	defb 000h,098h,05ch,08dh	; 6d0d
	defb 000h,0b8h,075h,090h	; 6d11
	defb 000h,0d8h,02dh,078h	; 6d15
	defb 000h,0e8h,0b0h,078h	; 6d19
	defb 001h,0e8h,0f0h,002h	; 6d1d
	defb 0ffh	; 6d21

; ----------------------------------------------------------------------
; DATOS lista_sprites_16: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (33 bytes)
;   0x6d22..0x6d43  (33 bytes)
DATA_lista_sprites_16:
	defb 000h,018h,03ah,080h	; 6d22
	defb 001h,038h,048h,004h	; 6d26
	defb 000h,058h,09eh,086h	; 6d2a
	defb 001h,078h,088h,004h	; 6d2e
	defb 000h,098h,002h,08bh	; 6d32
	defb 001h,0a8h,0b0h,002h	; 6d36
	defb 000h,0b8h,0b5h,090h	; 6d3a
	defb 000h,0d8h,03eh,08ch	; 6d3e
	defb 0ffh	; 6d42

; ----------------------------------------------------------------------
; DATOS lista_sprites_17: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (33 bytes)
;   0x6d43..0x6d64  (33 bytes)
DATA_lista_sprites_17:
	defb 000h,018h,0fdh,08eh	; 6d43
	defb 001h,038h,048h,004h	; 6d47
	defb 000h,058h,064h,088h	; 6d4b
	defb 001h,078h,088h,004h	; 6d4f
	defb 000h,098h,03eh,08ch	; 6d53
	defb 000h,0c0h,0b5h,090h	; 6d57
	defb 000h,0d8h,05eh,08eh	; 6d5b
	defb 001h,0e8h,0f0h,002h	; 6d5f
	defb 0ffh	; 6d63

; ----------------------------------------------------------------------
; DATOS lista_sprites_18: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (37 bytes)
;   0x6d64..0x6d89  (37 bytes)
DATA_lista_sprites_18:
	defb 000h,018h,0d9h,071h	; 6d64
	defb 000h,028h,04fh,072h	; 6d68
	defb 001h,028h,030h,002h	; 6d6c
	defb 000h,038h,08eh,072h	; 6d70
	defb 001h,038h,048h,004h	; 6d74
	defb 000h,058h,09eh,086h	; 6d78
	defb 001h,078h,088h,004h	; 6d7c
	defb 000h,098h,03eh,08ch	; 6d80
	defb 000h,0d8h,05ch,08dh	; 6d84
	defb 0ffh	; 6d88

; ----------------------------------------------------------------------
; DATOS lista_sprites_19: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (33 bytes)
;   0x6d89..0x6daa  (33 bytes)
DATA_lista_sprites_19:
	defb 000h,018h,0aeh,089h	; 6d89
	defb 001h,038h,048h,004h	; 6d8d
	defb 000h,058h,0ech,065h	; 6d91
	defb 000h,060h,02eh,066h	; 6d95
	defb 000h,0a8h,017h,091h	; 6d99
	defb 001h,0a8h,0b0h,002h	; 6d9d
	defb 000h,0b8h,059h,091h	; 6da1
	defb 001h,0b8h,0c8h,004h	; 6da5
	defb 0ffh	; 6da9

; ----------------------------------------------------------------------
; DATOS lista_sprites_20: registros [c][n][dir lo][dir hi] hasta 0xFF: c bit 0
;   = 0, graficos de dir al patron de sprite n (VRAM 0x1800 + 8n, L_5A2A); c
;   bit 0 = 1, copia de patrones de sprite girados (p00:4AD7, L_5A36); lo leen
;   p00:4AA0 (21 bytes)
;   0x6daa..0x6dbf  (21 bytes)
DATA_lista_sprites_20:
	defb 000h,018h,009h,076h	; 6daa
	defb 001h,018h,020h,002h	; 6dae
	defb 000h,028h,035h,076h	; 6db2
	defb 000h,038h,0a9h,076h	; 6db6
	defb 001h,038h,048h,004h	; 6dba
	defb 0ffh	; 6dbe

; ----------------------------------------------------------------------
; DATOS graficos_6DBF: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 2;
;   lo leen p00:4AA0 (114 bytes)
;   0x6dbf..0x6e31  (114 bytes)
DATA_graficos_6DBF:
	defb 092h,003h,007h,00fh,00fh,00dh,01fh,01bh,01bh,03bh,05fh,09fh,077h,023h,060h,0f0h	; 6dbf  .........._.w#`.
	defb 07ch,0c0h,0e0h,003h,0f0h,003h,0f8h,088h,0fch,0f2h,0fch,0ech,0c4h,006h,00fh,01eh	; 6dcf  |...............
	defb 004h,000h,082h,002h,000h,003h,004h,087h,020h,060h,008h,01ch,01fh,00fh,003h,009h	; 6ddf  ........ `......
	defb 000h,099h,00ch,000h,010h,038h,0f8h,0f0h,0e0h,003h,007h,00fh,00fh,00dh,01fh,01bh	; 6def  .....8..........
	defb 01bh,03bh,04fh,03fh,037h,023h,060h,0f0h,078h,0c0h,0e0h,003h,0f0h,003h,0f8h,088h	; 6dff  ..O?7#`.x.......
	defb 0fch,0fah,0f9h,0eeh,0c4h,006h,00fh,03eh,004h,000h,082h,002h,000h,003h,004h,087h	; 6e0f  .......>........
	defb 030h,000h,008h,01ch,01fh,00fh,007h,009h,000h,087h,004h,006h,010h,038h,0f8h,0f0h	; 6e1f  0............8..
	defb 0c0h,000h	; 6e2f

; ----------------------------------------------------------------------
; DATOS graficos_6E31: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 2;
;   lo leen p00:4AA0 (66 bytes)
;   0x6e31..0x6e73  (66 bytes)
DATA_graficos_6E31:
	defb 0abh,006h,009h,00bh,00fh,01ah,01ah,03ch,033h,068h,044h,09bh,060h,020h,060h,0f1h	; 6e31  .......<3hD.` `.
	defb 07eh,060h,090h,0d0h,0f0h,058h,058h,03ch,0cch,012h,031h,0ceh,084h,084h,086h,08fh	; 6e41  ~`...XX<..1.....
	defb 07eh,001h,006h,004h,000h,005h,005h,003h,00ch,017h,03bh,064h,003h,01fh,08dh,00eh	; 6e51  ~..........d....
	defb 001h,080h,060h,020h,000h,0a0h,0a0h,0c0h,030h,0ech,0ceh,030h,003h,078h,082h,070h	; 6e61  ..` ....0..0.x.p
	defb 080h,000h	; 6e71

; ----------------------------------------------------------------------
; DATOS graficos_6E73: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 2;
;   lo leen p00:4AA0 (126 bytes)
;   0x6e73..0x6ef1  (126 bytes)
DATA_graficos_6E73:
	defb 0afh,003h,00ch,00eh,007h,00ah,008h,005h,007h,009h,006h,00ch,017h,028h,068h,078h	; 6e73  .............(hx
	defb 03fh,0e0h,0f0h,0f8h,0f8h,0ech,0feh,0fah,0fah,0feh,07ch,0f8h,004h,002h,003h,007h	; 6e83  ?.........|.....
	defb 0feh,004h,003h,001h,000h,005h,007h,002h,000h,006h,001h,003h,008h,017h,017h,007h	; 6e93  ................
	defb 005h,000h,0bbh,010h,000h,004h,004h,000h,080h,000h,0f8h,0fch,0fch,0f8h,000h,003h	; 6ea3  ................
	defb 00ch,00eh,007h,00ah,008h,005h,007h,009h,005h,00fh,014h,028h,068h,078h,03fh,0e0h	; 6eb3  ...........(hx?.
	defb 0f0h,0f8h,0f8h,0ech,0feh,0fah,0fah,0feh,03ch,098h,064h,002h,003h,007h,0feh,004h	; 6ec3  ........<.d.....
	defb 003h,001h,000h,005h,007h,002h,000h,006h,002h,000h,00bh,017h,017h,007h,005h,000h	; 6ed3  ................
	defb 08ch,010h,000h,004h,004h,000h,0c0h,060h,098h,0fch,0fch,0f8h,000h,000h	; 6ee3  .......`......

; ----------------------------------------------------------------------
; DATOS graficos_6EF1: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista
;   15; lo leen p00:4AA0 (250 bytes)
;   0x6ef1..0x6feb  (250 bytes)
DATA_graficos_6EF1:
	defb 083h,004h,00bh,00fh,003h,01fh,086h,00eh,007h,00fh,00fh,01ch,013h,003h,03fh,084h	; 6ef1  ..............?.
	defb 01fh,020h,0d0h,0f0h,003h,0f8h,08ch,070h,0e0h,0f0h,0f0h,018h,0fch,0fch,0feh,0feh	; 6f01  . .....p........
	defb 08ch,003h,004h,004h,000h,081h,001h,003h,000h,082h,003h,00ch,004h,000h,082h,0c0h	; 6f11  ................
	defb 020h,004h,000h,081h,080h,003h,000h,081h,0e0h,004h,000h,085h,070h,003h,004h,00bh	; 6f21   ...........p...
	defb 00fh,003h,01fh,085h,00eh,007h,00fh,018h,03fh,003h,07fh,085h,031h,0c0h,020h,0d0h	; 6f31  ........?...1. .
	defb 0f0h,003h,0f8h,085h,070h,0e0h,0f0h,030h,0c8h,003h,0fch,084h,0f8h,000h,003h,004h	; 6f41  ....p..0........
	defb 004h,000h,084h,001h,000h,000h,007h,004h,000h,084h,00eh,000h,0c0h,020h,004h,000h	; 6f51  ............. ..
	defb 085h,080h,000h,000h,0c0h,030h,004h,000h,0e0h,003h,007h,00ch,01bh,03fh,03ah,03ah	; 6f61  .....0.......?::
	defb 014h,00fh,01fh,019h,024h,023h,032h,03eh,018h,0c0h,0e0h,030h,0d8h,0fch,05ch,05ch	; 6f71  ....$#2>...0..\\
	defb 028h,0f0h,0f8h,0d8h,094h,024h,0cch,0fch,038h,000h,000h,003h,004h,000h,005h,005h	; 6f81  (....$..8.......
	defb 003h,000h,000h,006h,01bh,01ch,00dh,001h,007h,000h,000h,0c0h,020h,000h,0a0h,0a0h	; 6f91  ............ ...
	defb 0c0h,000h,000h,020h,068h,0d8h,030h,000h,0c0h,000h,003h,007h,00ch,01bh,03fh,03ah	; 6fa1  ... h.0.......?:
	defb 03ah,014h,00fh,01fh,039h,025h,032h,03eh,010h,000h,0c0h,0e0h,030h,0d8h,0fch,05ch	; 6fb1  :...9%2>....0..\
	defb 05ch,028h,0f0h,0f8h,0bch,024h,04ch,0fch,018h,003h,000h,08dh,003h,004h,000h,005h	; 6fc1  \(...$L.........
	defb 005h,003h,000h,000h,006h,01ah,00dh,001h,00fh,003h,000h,08dh,0c0h,020h,000h,0a0h	; 6fd1  ............. ..
	defb 0a0h,0c0h,000h,000h,040h,0d8h,0b0h,000h,0e0h,000h	; 6fe1  ....@.....

; ----------------------------------------------------------------------
; DATOS graficos_6FEB: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista
;   15; lo leen p00:4AA0 (130 bytes)
;   0x6feb..0x706d  (130 bytes)
DATA_graficos_6FEB:
	defb 002h,002h,002h,00fh,08fh,007h,00ah,008h,004h,007h,00fh,016h,008h,057h,02ch,05fh	; 6feb  .............W,_
	defb 02fh,0e0h,070h,07ch,003h,0feh,08ch,07eh,0fch,0f8h,0f4h,04eh,0ceh,08fh,01fh,0feh	; 6ffb  /.p|...~...N....
	defb 0fch,001h,001h,003h,000h,08eh,005h,007h,003h,000h,000h,009h,007h,008h,053h,020h	; 700b  ..............S
	defb 010h,000h,080h,080h,003h,000h,088h,080h,000h,000h,008h,0b0h,030h,070h,0e0h,003h	; 701b  ............0p..
	defb 000h,002h,002h,002h,00fh,08fh,007h,00ah,008h,004h,00fh,00fh,013h,0a6h,05ch,0bfh	; 702b  ..............\.
	defb 05fh,000h,0e0h,070h,07ch,003h,0feh,08ch,07eh,0fch,0f8h,0e4h,09ch,01eh,03fh,0ffh	; 703b  _..p|...~.....?.
	defb 0feh,000h,001h,001h,003h,000h,08eh,005h,007h,003h,000h,000h,00ch,019h,0a3h,040h	; 704b  ...............@
	defb 020h,008h,002h,080h,081h,003h,000h,089h,080h,000h,000h,018h,060h,0e0h,0c0h,000h	; 705b   ...........`...
	defb 000h,000h	; 706b

; ----------------------------------------------------------------------
; DATOS graficos_706D: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 0;
;   lo leen p00:4AA0 (246 bytes)
;   0x706d..0x7163  (246 bytes)
DATA_graficos_706D:
	defb 0a3h,007h,00fh,00bh,01fh,01fh,00fh,017h,020h,040h,034h,04fh,038h,030h,079h,07fh	; 706d  ........ @4O80y.
	defb 03fh,0e0h,0f0h,0f0h,0f8h,0f8h,0f0h,0e8h,004h,004h,014h,0f8h,008h,084h,00eh,0feh	; 707d  ?...............
	defb 01ch,000h,000h,004h,003h,000h,088h,008h,01fh,03fh,00bh,030h,007h,00fh,006h,008h	; 708d  .........?.0....
	defb 000h,0adh,010h,0f8h,0f8h,0e8h,000h,0f0h,078h,0f0h,000h,0e0h,007h,00fh,00bh,01fh	; 709d  ........x.......
	defb 01fh,00fh,017h,020h,020h,028h,01fh,010h,021h,070h,07fh,038h,0e0h,0f0h,0f0h,0f8h	; 70ad  ...  (..!p.8....
	defb 0f8h,0f0h,0e8h,004h,002h,02ch,0f2h,01ch,00ch,09eh,0feh,0fch,000h,000h,004h,003h	; 70bd  .....,..........
	defb 000h,08ah,008h,01fh,01fh,017h,000h,00fh,01eh,00fh,000h,007h,006h,000h,0aah,010h	; 70cd  ................
	defb 0f8h,0fch,0d0h,00ch,0e0h,0f0h,060h,000h,000h,007h,00fh,00fh,01fh,01ah,00ah,014h	; 70dd  ......`.........
	defb 023h,041h,035h,04fh,038h,030h,079h,07fh,03fh,0e0h,0f0h,0f0h,078h,058h,050h,028h	; 70ed  #A5O80y.?...xXP(
	defb 0c4h,084h,094h,0f8h,008h,084h,00eh,0feh,01ch,004h,000h,002h,005h,088h,00bh,01ch	; 70fd  ................
	defb 03eh,00ah,030h,007h,00fh,006h,005h,000h,0adh,080h,0a0h,0a0h,0d0h,038h,078h,068h	; 710d  >.0..........8xh
	defb 000h,0f0h,078h,0f0h,000h,0e0h,007h,00fh,00fh,01fh,01ah,00ah,014h,023h,021h,029h	; 711d  ..x..........#!)
	defb 01fh,010h,021h,070h,07fh,038h,0e0h,0f0h,0f0h,078h,058h,050h,028h,0c4h,082h,0ach	; 712d  ..!p.8...xXP(...
	defb 0f2h,01ch,00ch,09eh,0feh,0fch,004h,000h,002h,005h,08ah,00bh,01ch,01eh,016h,000h	; 713d  ................
	defb 00fh,01eh,00fh,000h,007h,003h,000h,08dh,080h,0a0h,0a0h,0d0h,038h,07ch,050h,00ch	; 714d  ............8|P.
	defb 0e0h,0f0h,060h,000h,000h,000h	; 715d

; ----------------------------------------------------------------------
; DATOS graficos_7163: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 0;
;   lo leen p00:4AA0 (118 bytes)
;   0x7163..0x71d9  (118 bytes)
DATA_graficos_7163:
	defb 094h,007h,01fh,01fh,00fh,015h,010h,009h,007h,008h,015h,00eh,009h,039h,07ch,07fh	; 7163  .............9|.
	defb 03ch,0c0h,0e0h,0f0h,0f0h,003h,0f8h,089h,0f0h,060h,040h,080h,040h,03ch,03eh,0feh	; 7173  <........`@.@<>.
	defb 07ch,004h,000h,08ch,00ah,00fh,006h,000h,007h,00ah,001h,006h,006h,003h,000h,003h	; 7183  |...............
	defb 008h,000h,002h,080h,09ah,000h,080h,0c0h,0c0h,000h,080h,007h,01fh,01fh,00fh,015h	; 7193  ................
	defb 010h,009h,017h,014h,01dh,02fh,018h,030h,070h,07dh,023h,0c0h,0e0h,0f0h,0f0h,003h	; 71a3  ...../.0p}#.....
	defb 0f8h,089h,0f0h,020h,010h,0b0h,048h,06ch,0deh,08eh,0fch,004h,000h,08ch,00ah,00fh	; 71b3  ... ..Hl........
	defb 006h,008h,00bh,002h,010h,007h,00fh,00fh,002h,01ch,008h,000h,088h,0c0h,0e0h,040h	; 71c3  ...............@
	defb 0b0h,090h,020h,070h,000h,000h	; 71d3

; ----------------------------------------------------------------------
; DATOS graficos_71D9: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 3;
;   lo leen p00:4AA0 (118 bytes)
;   0x71d9..0x724f  (118 bytes)
DATA_graficos_71D9:
	defb 092h,007h,01fh,03bh,02fh,02fh,01fh,02fh,05ch,09fh,0b7h,0b8h,05ah,01dh,03bh,07fh	; 71d9  ....//./\...Z...
	defb 03fh,0c0h,0f0h,003h,0f8h,099h,0f0h,0e8h,074h,0f4h,0d8h,030h,0b0h,070h,0b8h,0fch	; 71e9  ?.......t..0.p..
	defb 0f8h,000h,000h,004h,010h,010h,000h,000h,023h,060h,048h,047h,005h,002h,004h,009h	; 71f9  ........#`HG....
	defb 000h,09bh,088h,008h,020h,0c0h,040h,080h,040h,000h,000h,007h,01fh,03bh,02fh,02fh	; 7209  .... .@.@.....//
	defb 01fh,02fh,05ch,05fh,037h,018h,01ah,01dh,03bh,07fh,03fh,0c0h,0f0h,003h,0f8h,099h	; 7219  ./\_7.....?.....
	defb 0f0h,0e8h,074h,0f2h,0dah,03ah,0b4h,070h,0b8h,0fch,0f8h,000h,000h,004h,010h,010h	; 7229  ..t..:.p........
	defb 000h,000h,023h,020h,008h,007h,005h,002h,004h,009h,000h,089h,088h,00ch,024h,0c4h	; 7239  ..# ..........$.
	defb 040h,080h,040h,000h,000h,000h	; 7249

; ----------------------------------------------------------------------
; DATOS graficos_724F: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 3;
;   lo leen p00:4AA0 (63 bytes)
;   0x724f..0x728e  (63 bytes)
DATA_graficos_724F:
	defb 09ah,007h,01fh,03eh,03ch,03ah,012h,028h,05fh,09eh,0b7h,0b8h,058h,018h,038h,07ch	; 724f  ...><:.(_...X.8|
	defb 03fh,0c0h,0f0h,0f8h,078h,0b8h,090h,028h,0f4h,0f4h,0d8h,003h,030h,08eh,038h,03ch	; 725f  ?...x..(....0.8<
	defb 0f8h,000h,000h,001h,003h,005h,00dh,007h,020h,061h,048h,047h,003h,007h,081h,003h	; 726f  ........ aHG....
	defb 004h,000h,087h,080h,040h,060h,0c0h,008h,008h,020h,005h,0c0h,081h,000h,000h	; 727f  ....@`... .....

; ----------------------------------------------------------------------
; DATOS graficos_728E: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 3;
;   lo leen p00:4AA0 (126 bytes)
;   0x728e..0x730c  (126 bytes)
DATA_graficos_728E:
	defb 0afh,003h,007h,005h,005h,009h,008h,004h,003h,005h,007h,008h,009h,011h,013h,01bh	; 728e  ................
	defb 00fh,0e0h,0f8h,0fch,07ch,07ch,03ch,038h,0e0h,0d0h,090h,090h,0b8h,078h,0f8h,0f8h	; 729e  ....||<8.....x..
	defb 0f0h,000h,000h,002h,002h,006h,007h,003h,000h,002h,000h,007h,006h,00eh,00ch,004h	; 72ae  ................
	defb 004h,000h,002h,080h,002h,0c0h,086h,000h,020h,060h,060h,040h,080h,004h,000h,09fh	; 72be  ........ ``@....
	defb 003h,007h,005h,005h,009h,008h,004h,003h,005h,01fh,028h,019h,011h,013h,00bh,000h	; 72ce  ..........(.....
	defb 0e0h,0f8h,0fch,07ch,07ch,03ch,038h,0e0h,0d0h,088h,064h,0f4h,0fch,0fch,0f8h,003h	; 72de  ...||<8...d.....
	defb 000h,002h,002h,08bh,006h,007h,003h,000h,002h,000h,017h,006h,00eh,00ch,004h,004h	; 72ee  ................
	defb 000h,002h,080h,002h,0c0h,085h,000h,020h,070h,098h,008h,003h,000h,000h	; 72fe  ....... p.....

; ----------------------------------------------------------------------
; DATOS graficos_730C: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 0;
;   lo leen p00:4AA0 (225 bytes)
;   0x730c..0x73ed  (225 bytes)
DATA_graficos_730C:
	defb 092h,000h,03eh,07fh,05fh,0ffh,0ffh,0bfh,0bfh,0ffh,0ffh,07fh,07ch,080h,000h,081h	; 730c  ..>._.......|...
	defb 07fh,03ch,0feh,004h,0ffh,08ah,07eh,0e7h,0feh,0feh,0ffh,0ffh,0feh,0eeh,0e4h,040h	; 731c  .<....~........@
	defb 003h,000h,08ch,020h,000h,000h,040h,040h,000h,000h,080h,083h,07fh,0ffh,07eh,008h	; 732c  ... ..@@......~.
	defb 000h,083h,018h,001h,001h,007h,000h,091h,03eh,07fh,05fh,0ffh,0ffh,0bfh,0bfh,0ffh	; 733c  ........>._.....
	defb 07fh,07fh,0bch,080h,000h,0c0h,07fh,03ch,0feh,004h,0ffh,084h,07eh,0e6h,07fh,07fh	; 734c  .......<....~...
	defb 003h,0ffh,083h,0f7h,0a7h,002h,003h,000h,085h,020h,000h,000h,040h,040h,003h,000h	; 735c  ......... ..@@..
	defb 084h,043h,07fh,0ffh,03fh,008h,000h,083h,018h,080h,080h,006h,000h,0a0h,03ch,07fh	; 736c  .C..?.........<.
	defb 0ffh,0ffh,0d7h,0d5h,094h,041h,0feh,0beh,0cfh,07fh,07fh,077h,027h,002h,000h,07ch	; 737c  .....A.....w'..|
	defb 0feh,0feh,0efh,0abh,0abh,0c7h,0bah,0c5h,0bbh,005h,000h,020h,0c3h,0feh,004h,000h	; 738c  ........... ....
	defb 087h,028h,02ah,06bh,03eh,001h,041h,030h,009h,000h,0ach,010h,054h,054h,038h,044h	; 739c  .(*k>.A0....TT8D
	defb 03ah,044h,0fah,0ffh,0dfh,03ch,000h,03ch,07fh,0ffh,0ffh,0d7h,0d5h,094h,0c1h,07fh	; 73ac  :D...<.<........
	defb 07eh,0f9h,07fh,07fh,077h,072h,020h,000h,07ch,0feh,0feh,0efh,0abh,0abh,0c7h,0bah	; 73bc  ~...wr .|.......
	defb 0c5h,0bdh,002h,000h,088h,0c5h,0feh,004h,000h,087h,028h,02ah,06bh,03eh,080h,081h	; 73cc  ..........(*k>..
	defb 006h,009h,000h,08ch,010h,054h,054h,038h,044h,03ah,042h,0fdh,0ffh,077h,03ah,000h	; 73dc  .....TT8D:B..w:.
	defb 000h	; 73ec

; ----------------------------------------------------------------------
; DATOS graficos_73ED: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 0;
;   lo leen p00:4AA0 (117 bytes)
;   0x73ed..0x7462  (117 bytes)
DATA_graficos_73ED:
	defb 081h,00fh,003h,03fh,09ch,017h,025h,021h,011h,00fh,01eh,01dh,019h,00fh,00fh,007h	; 73ed  ...?..%!........
	defb 01fh,080h,0fch,0feh,0feh,0ffh,05fh,05fh,09fh,0ffh,097h,026h,0d8h,024h,002h,003h	; 73fd  ......__...&.$..
	defb 0feh,004h,000h,088h,008h,01ah,01eh,00eh,000h,001h,002h,006h,009h,000h,002h,0a0h	; 740d  ................
	defb 08bh,060h,000h,068h,0d8h,020h,0d8h,0fch,0fch,000h,000h,00fh,003h,03fh,09bh,017h	; 741d  .`.h. .......?..
	defb 025h,021h,011h,00fh,03eh,05fh,03fh,03fh,0f2h,023h,000h,080h,0fch,0feh,0feh,0ffh	; 742d  %!..>_??.#......
	defb 05fh,05fh,09fh,0ffh,097h,026h,0dch,022h,001h,0feh,005h,000h,08ah,008h,01ah,01eh	; 743d  __...&."........
	defb 00eh,000h,001h,020h,000h,000h,001h,007h,000h,002h,0a0h,088h,060h,000h,068h,0d8h	; 744d  ... ........`.h.
	defb 020h,0dch,0feh,000h,000h	; 745d

; ----------------------------------------------------------------------
; DATOS graficos_7462: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 5;
;   lo leen p00:4AA0 (423 bytes)
;   0x7462..0x7609  (423 bytes)
DATA_graficos_7462:
	defb 094h,007h,01fh,03fh,03fh,01fh,00fh,00fh,007h,00eh,016h,01fh,03fh,03fh,07fh,07fh	; 7462  ...??.......??..
	defb 01fh,0e8h,0fch,0fah,0fch,003h,0feh,089h,0e6h,076h,06bh,0f8h,0fch,0fch,0feh,0feh	; 7472  .........vk.....
	defb 0f8h,008h,000h,082h,001h,009h,006h,000h,083h,010h,000h,004h,005h,000h,082h,080h	; 7482  ................
	defb 090h,006h,000h,093h,007h,01fh,03fh,03fh,01fh,00fh,00fh,007h,00eh,016h,01fh,03fh	; 7492  ......??.......?
	defb 03fh,07fh,07fh,01fh,0e8h,0fch,0fah,005h,0fch,088h,078h,070h,0f8h,0fch,0fch,0feh	; 74a2  ?.........xp....
	defb 0feh,0f8h,008h,000h,082h,001h,009h,006h,000h,083h,010h,000h,004h,005h,000h,002h	; 74b2  ................
	defb 080h,006h,000h,0abh,017h,033h,04fh,02bh,07ah,07ah,07ch,067h,06ah,0c9h,01eh,03fh	; 74c2  .....3O+zz|gj..?
	defb 03fh,07fh,07fh,01fh,0e0h,0f8h,0fch,0fch,078h,050h,030h,0e0h,050h,0d0h,078h,0fch	; 74d2  ?.......xP0.P.x.
	defb 0fch,0feh,0feh,0f8h,008h,00ch,030h,014h,005h,005h,003h,000h,005h,006h,001h,009h	; 74e2  ......0.........
	defb 000h,087h,080h,0a0h,0c0h,000h,0a0h,020h,080h,005h,000h,0abh,017h,033h,04fh,02bh	; 74f2  ....... .....3O+
	defb 03ah,03ah,03ch,03fh,01ah,00bh,01eh,03fh,03fh,07fh,07fh,01fh,0e0h,0f8h,0fch,0fch	; 7502  ::<?...??.......
	defb 078h,050h,030h,0e0h,050h,090h,078h,0fch,0fch,0feh,0feh,0f8h,008h,00ch,030h,014h	; 7512  xP0.P.x.......0.
	defb 005h,005h,003h,000h,005h,004h,001h,009h,000h,087h,080h,0a0h,0c0h,000h,0a0h,060h	; 7522  ...............`
	defb 080h,005h,000h,081h,00fh,003h,03fh,08eh,01fh,012h,008h,006h,009h,017h,01ch,03fh	; 7532  ......?........?
	defb 03fh,07fh,07fh,01fh,0c0h,0f0h,003h,0f8h,087h,0f0h,060h,040h,0c0h,070h,0fch,0fch	; 7542  ?.........`@.p..
	defb 003h,0feh,081h,0f8h,005h,000h,086h,00dh,007h,001h,006h,008h,003h,00bh,000h,002h	; 7552  ................
	defb 080h,082h,000h,080h,006h,000h,081h,00fh,003h,03fh,08eh,01fh,012h,008h,006h,009h	; 7562  .........?......
	defb 00eh,019h,03fh,03fh,07fh,07fh,01fh,0c0h,0f0h,003h,0f8h,087h,0f0h,078h,058h,0c8h	; 7572  ..??.........xX.
	defb 0f0h,0fch,0fch,003h,0feh,081h,0f8h,005h,000h,086h,00dh,007h,001h,006h,001h,006h	; 7582  ................
	defb 00bh,000h,002h,080h,008h,000h,08ch,003h,00eh,01eh,019h,01dh,02fh,03eh,03ah,013h	; 7592  ............/>:.
	defb 00eh,03fh,03fh,003h,07fh,09bh,01fh,0f0h,0fch,07ch,0fch,0ach,028h,010h,060h,090h	; 75a2  .??......|..(.`.
	defb 0e8h,038h,0fch,0fch,0feh,0feh,0f8h,000h,001h,001h,006h,002h,000h,001h,001h,000h	; 75b2  .8..............
	defb 001h,008h,000h,089h,080h,000h,050h,0d0h,0e0h,080h,060h,010h,0c0h,005h,000h,08ch	; 75c2  ......P...`.....
	defb 003h,00eh,01eh,019h,01dh,01fh,01eh,00ah,003h,00fh,03fh,03fh,003h,07fh,099h,01fh	; 75d2  ..........??....
	defb 0f0h,0fch,07ch,0fch,0ach,028h,010h,060h,090h,070h,098h,0fch,0fch,0feh,0feh,0f8h	; 75e2  ..|..(.`.p......
	defb 000h,001h,001h,006h,002h,000h,001h,001h,00ah,000h,089h,080h,000h,050h,0d0h,0e0h	; 75f2  .............P..
	defb 080h,060h,080h,060h,005h,000h,000h	; 7602

; ----------------------------------------------------------------------
; DATOS graficos_7609: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 1;
;   lo leen p00:4AA0 (44 bytes)
;   0x7609..0x7635  (44 bytes)
DATA_graficos_7609:
	defb 082h,007h,00fh,004h,01fh,084h,03fh,04fh,05eh,03fh,003h,00fh,002h,00eh,083h,004h	; 7609  ......?O^?......
	defb 0e0h,0f0h,005h,0f8h,088h,0f4h,07ah,0fah,0fah,0f6h,0f0h,070h,020h,008h,000h,082h	; 7619  ......z....p ...
	defb 030h,021h,00eh,000h,084h,008h,084h,004h,004h,005h,000h,000h	; 7629  0!..........

; ----------------------------------------------------------------------
; DATOS graficos_7635: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 1;
;   lo leen p00:4AA0 (116 bytes)
;   0x7635..0x76a9  (116 bytes)
DATA_graficos_7635:
	defb 0a0h,007h,00fh,01fh,01fh,01eh,012h,008h,01ch,02fh,04eh,027h,01eh,00fh,00eh,004h	; 7635  ........./N'....
	defb 000h,0e0h,0f0h,0f8h,0b8h,058h,048h,018h,034h,0f4h,074h,0f8h,070h,0f0h,070h,070h	; 7645  .....XH.4.t.p.pp
	defb 020h,004h,000h,088h,001h,00dh,007h,003h,010h,031h,018h,001h,007h,000h,089h,040h	; 7655   ........1.....@
	defb 0a0h,0b0h,0e0h,0c8h,008h,088h,000h,080h,004h,000h,09fh,007h,00fh,01fh,01fh,01eh	; 7665  ................
	defb 012h,018h,02ch,02fh,02eh,01fh,00eh,00fh,00eh,00eh,004h,0e0h,0f0h,0f8h,0b8h,058h	; 7675  ..,/...........X
	defb 048h,010h,038h,0f4h,072h,0e4h,078h,0f0h,070h,020h,005h,000h,088h,001h,00dh,007h	; 7685  H.8.r.x.p ......
	defb 013h,010h,011h,000h,001h,007h,000h,089h,040h,0a0h,0b0h,0e0h,0c0h,008h,08ch,018h	; 7695  ........@.......
	defb 080h,004h,000h,000h	; 76a5

; ----------------------------------------------------------------------
; DATOS graficos_76A9: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 1;
;   lo leen p00:4AA0 (111 bytes)
;   0x76a9..0x7718  (111 bytes)
DATA_graficos_76A9:
	defb 092h,007h,00fh,01fh,01bh,00ah,012h,010h,008h,007h,00bh,00fh,00fh,007h,003h,003h	; 76a9  ................
	defb 00fh,0e0h,0f0h,003h,0f8h,088h,0b8h,038h,070h,0e0h,020h,010h,090h,020h,003h,0c0h	; 76b9  .......8p. .. ..
	defb 003h,000h,087h,004h,005h,00dh,00fh,007h,000h,004h,00bh,000h,088h,040h,0c0h,080h	; 76c9  .............@..
	defb 000h,0c0h,0e0h,060h,0c0h,004h,000h,092h,007h,00fh,01fh,01bh,00ah,012h,010h,008h	; 76d9  ...`............
	defb 007h,00ah,008h,00ch,05fh,03ch,018h,000h,0e0h,0f0h,003h,0f8h,08ah,0b8h,038h,070h	; 76e9  ...._<........8p
	defb 0e0h,040h,060h,0f0h,0f8h,070h,0e0h,004h,000h,089h,004h,005h,00dh,00fh,007h,000h	; 76f9  .@`..p..........
	defb 005h,007h,003h,009h,000h,086h,040h,0c0h,080h,000h,080h,080h,004h,000h,000h	; 7709  ......@........

; ----------------------------------------------------------------------
; DATOS graficos_7718: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 8;
;   lo leen p00:4AA0 (101 bytes)
;   0x7718..0x777d  (101 bytes)
DATA_graficos_7718:
	defb 092h,003h,007h,00fh,00fh,00dh,01fh,01bh,01bh,03bh,05fh,09fh,077h,003h,010h,007h	; 7718  .........._.w...
	defb 000h,0c0h,0e0h,003h,0f0h,003h,0f8h,087h,0fch,0f2h,0fch,0e8h,0c4h,000h,0d0h,005h	; 7728  ................
	defb 000h,082h,002h,000h,003h,004h,083h,020h,060h,008h,00dh,000h,083h,00ch,000h,010h	; 7738  ....... `.......
	defb 004h,000h,092h,003h,007h,00fh,00fh,00dh,01fh,01bh,01bh,03bh,04fh,03fh,017h,023h	; 7748  ............O?.#
	defb 000h,00bh,000h,0c0h,0e0h,003h,0f0h,003h,0f8h,087h,0fch,0fah,0f9h,0eeh,0c0h,008h	; 7758  ................
	defb 0e0h,005h,000h,082h,002h,000h,003h,004h,083h,030h,000h,008h,00dh,000h,083h,004h	; 7768  .........0......
	defb 006h,010h,004h,000h,000h	; 7778

; ----------------------------------------------------------------------
; DATOS resto_777D: SIN LECTOR A LA VISTA: ninguna instruccion lo apunta con
;   su banco puesto; lo leen nadie (60 bytes)
;   0x777d..0x77b9  (60 bytes)
DATA_resto_777D:
	defb 0abh,007h,00ch,00bh,00fh,01ah,01ah,03ch,03bh,020h,048h,0b4h,04fh,007h,010h,007h	; 777d  .......<. H.O...
	defb 000h,0e0h,030h,0d0h,0f0h,058h,058h,03ch,0dch,006h,019h,026h,0f0h,0e4h,000h,0d0h	; 778d  ..0..XX<...&....
	defb 000h,000h,003h,004h,000h,005h,005h,003h,004h,01fh,037h,043h,006h,000h,08ah,0c0h	; 779d  ..........7C....
	defb 020h,000h,0a0h,0a0h,0c0h,020h,0f8h,0e6h,0c0h,005h,000h,000h	; 77ad   .... ......

; ----------------------------------------------------------------------
; DATOS graficos_77B9: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 8;
;   lo leen p00:4AA0 (116 bytes)
;   0x77b9..0x782d  (116 bytes)
DATA_graficos_77B9:
	defb 0ach,007h,019h,01dh,00fh,015h,011h,00bh,00fh,013h,00ch,009h,026h,04fh,000h,019h	; 77b9  ............&O..
	defb 000h,0c0h,0e0h,0f0h,0f0h,0d8h,0fch,0f4h,0f4h,0fch,0f8h,0f0h,030h,0e0h,008h,0b0h	; 77c9  ............0...
	defb 000h,008h,006h,002h,000h,00ah,00eh,004h,000h,00ch,003h,006h,001h,008h,000h,084h	; 77d9  ................
	defb 020h,000h,008h,008h,003h,000h,081h,0c0h,004h,000h,0ach,007h,019h,01dh,00fh,015h	; 77e9   ...............
	defb 011h,00bh,00fh,013h,00ah,029h,005h,00fh,040h,032h,000h,0c0h,0e0h,0f0h,0f0h,0d8h	; 77f9  .....)..@2......
	defb 0fch,0f4h,0f4h,0fch,078h,030h,0f0h,0e0h,004h,060h,000h,008h,006h,002h,000h,00ah	; 7809  ....x0...`......
	defb 00eh,004h,000h,00ch,005h,006h,002h,008h,000h,087h,020h,000h,008h,008h,000h,080h	; 7819  .......... .....
	defb 0c0h,005h,000h,000h	; 7829

; ----------------------------------------------------------------------
; DATOS graficos_782D: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 0;
;   lo leen p00:4AA0 (131 bytes)
;   0x782d..0x78b0  (131 bytes)
DATA_graficos_782D:
	defb 0ffh,0b8h,064h,004h,08ch,078h,028h,078h,0a8h,027h,021h,0f1h,0bfh,072h,07ah,0f5h	; 782d  ..d..x(x.'!..rz.
	defb 071h,01dh,026h,020h,031h,01fh,01ah,01ah,015h,0e4h,084h,08ah,0f9h,04eh,05ah,0abh	; 783d  q.& 1........NZ.
	defb 08eh,047h,09bh,0fbh,073h,007h,017h,007h,057h,0d8h,0deh,00eh,040h,00dh,005h,00ah	; 784d  .G..s...W...@...
	defb 00eh,0e2h,0d9h,0dfh,0ceh,0e0h,0e4h,0e4h,0eah,01bh,07bh,075h,006h,0b0h,0a4h,054h	; 785d  ..........{u...T
	defb 070h,0b8h,050h,05dh,08ah,08ah,058h,05ch,0d7h,050h,028h,04bh,094h,072h,055h,0d9h	; 786d  p.P]..X\.P(K.rU.
	defb 053h,01dh,006h,0b0h,059h,056h,014h,03eh,0e5h,008h,014h,0c7h,028h,045h,0aeh,097h	; 787d  S...YV.>....(E..
	defb 0c6h,047h,0afh,0a2h,075h,075h,027h,023h,028h,0afh,0d7h,0b4h,06bh,00dh,02ah,026h	; 788d  .G..uu'#(...k.*&
	defb 02ch,0e2h,0f9h,04fh,0a6h,0a8h,0e8h,0c0h,01ah,0f7h,0ebh,038h,0d7h,0bah,050h,068h	; 789d  ,..O.......8..Ph
	defb 081h,038h,000h	; 78ad

; ----------------------------------------------------------------------
; DATOS graficos_78B0: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 0;
;   lo leen p00:4AA0 (66 bytes)
;   0x78b0..0x78f2  (66 bytes)
DATA_graficos_78B0:
	defb 0c0h,02ah,02ch,044h,047h,02dh,02ch,03eh,04bh,04bh,03dh,02eh,02dh,02eh,02fh,07fh	; 78b0  .*,DG-,>KK=.-./.
	defb 03eh,004h,062h,092h,0b2h,0d2h,06ah,00ah,0fah,044h,024h,028h,054h,084h,0deh,0afh	; 78c0  >.b...j..D$(T...
	defb 00eh,011h,013h,03bh,038h,012h,013h,001h,034h,034h,002h,011h,012h,011h,010h,000h	; 78d0  ....8...44......
	defb 001h,0f8h,09ch,06ch,04ch,02ch,094h,0f4h,004h,0b8h,0d8h,0d0h,0a8h,078h,020h,050h	; 78e0  ...lL,.......x P
	defb 0f0h,000h	; 78f0

; ----------------------------------------------------------------------
; DATOS graficos_78F2: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 2;
;   lo leen p00:4AA0 (131 bytes)
;   0x78f2..0x7975  (131 bytes)
DATA_graficos_78F2:
	defb 0ffh,001h,006h,008h,008h,010h,010h,01ch,028h,047h,080h,0a0h,0a0h,060h,040h,0e0h	; 78f2  ........(G...`@.
	defb 07fh,080h,060h,010h,010h,008h,008h,038h,004h,002h,001h,005h,005h,006h,002h,007h	; 7902  ..`....8........
	defb 0feh,000h,001h,007h,007h,00fh,00fh,003h,017h,038h,07fh,05fh,05fh,01fh,03fh,01fh	; 7912  .........8.__.?.
	defb 000h,000h,080h,0e0h,0e0h,0f0h,0f0h,0c0h,0f8h,0fch,0feh,0fah,0fah,0f8h,0fch,0f8h	; 7922  ................
	defb 000h,001h,006h,008h,008h,014h,012h,070h,0a8h,0c8h,084h,084h,042h,021h,040h,0e0h	; 7932  .......p....B!@.
	defb 07fh,080h,060h,010h,010h,028h,048h,00eh,015h,013h,001h,001h,002h,004h,002h,007h	; 7942  ..`..(H.........
	defb 0feh,000h,001h,007h,007h,00bh,00dh,00fh,057h,037h,07bh,07bh,03dh,01eh,03fh,01fh	; 7952  ........W7{{=.?.
	defb 000h,000h,080h,0e0h,0e0h,0d0h,0b0h,0f0h,0eah,0ech,0feh,0feh,0fch,0f8h,0fch,0f8h	; 7962  ................
	defb 081h,000h,000h	; 7972

; ----------------------------------------------------------------------
; DATOS graficos_7975: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 2;
;   lo leen p00:4AA0 (63 bytes)
;   0x7975..0x79b4  (63 bytes)
DATA_graficos_7975:
	defb 099h,003h,004h,008h,010h,014h,028h,021h,026h,028h,030h,050h,078h,058h,048h,0e0h	; 7975  ......(!&(0PxXH.
	defb 07fh,000h,080h,080h,040h,040h,020h,010h,008h,008h,004h,004h,092h,002h,007h,0feh	; 7985  ....@@ .........
	defb 000h,003h,007h,00fh,00bh,017h,01eh,019h,017h,00fh,02fh,007h,027h,037h,01fh,004h	; 7995  ........../.'7..
	defb 000h,002h,080h,084h,0c0h,0e0h,0f0h,0f0h,004h,0f8h,083h,0fch,0f8h,000h,000h	; 79a5  ...............

; ----------------------------------------------------------------------
; DATOS graficos_79B4: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 5;
;   lo leen p00:4AA0 (248 bytes)
;   0x79b4..0x7aac  (248 bytes)
DATA_graficos_79B4:
	defb 093h,007h,00dh,01fh,03bh,03bh,03fh,02fh,04fh,087h,087h,0d3h,0a3h,061h,040h,0f0h	; 79b4  ......?/O....a@.
	defb 07fh,0e0h,0f0h,0f8h,003h,0fch,002h,0f4h,002h,0e2h,095h,0c2h,0c4h,084h,006h,01fh	; 79c4  ................
	defb 0feh,000h,002h,000h,004h,004h,000h,010h,030h,078h,078h,02ch,05ch,01eh,03fh,00fh	; 79d4  ........0xx,\.?.
	defb 007h,000h,002h,008h,002h,01ch,099h,03ch,038h,078h,0f8h,0e0h,000h,007h,00dh,01fh	; 79e4  .......<8x......
	defb 03bh,03bh,03fh,02fh,02fh,047h,047h,043h,023h,021h,060h,0f8h,07fh,0e0h,0f0h,0f8h	; 79f4  ..?//GGC#!`.....
	defb 003h,0fch,099h,0f4h,0f2h,0e1h,0e1h,0cbh,0c5h,086h,002h,00fh,0feh,000h,002h,000h	; 7a04  ................
	defb 004h,004h,000h,010h,010h,038h,038h,03ch,01ch,01eh,01fh,007h,007h,000h,0b9h,008h	; 7a14  .....88<........
	defb 00ch,01eh,01eh,034h,03ah,078h,0fch,0f0h,000h,007h,00fh,01eh,03ah,03ah,03ch,02fh	; 7a24  ...4:x......::</
	defb 04fh,087h,089h,0dch,0abh,064h,042h,0f0h,07fh,0e0h,0f0h,0f8h,05ch,05ch,03ch,0f4h	; 7a34  O....dB.....\\<.
	defb 0f4h,0e2h,082h,00ah,004h,0e4h,006h,01fh,0feh,000h,000h,001h,005h,005h,003h,010h	; 7a44  ................
	defb 030h,078h,076h,023h,054h,01bh,03dh,00fh,004h,000h,002h,0a0h,0bah,0c0h,008h,008h	; 7a54  0xv#T.=.........
	defb 01ch,07ch,0f4h,0f8h,018h,0f8h,0e0h,000h,007h,00fh,01eh,03ah,03ah,03ch,02fh,02fh	; 7a64  .|.........::<//
	defb 047h,041h,050h,020h,027h,060h,0f8h,07fh,0e0h,0f0h,0f8h,05ch,05ch,03ch,0f4h,0f2h	; 7a74  GAP '`.....\\<..
	defb 0e1h,091h,03bh,0d5h,026h,042h,00fh,0feh,000h,000h,001h,005h,005h,003h,010h,010h	; 7a84  ....&B..........
	defb 038h,03eh,02fh,01fh,018h,01fh,007h,004h,000h,002h,0a0h,08bh,0c0h,008h,00ch,01eh	; 7a94  8>/.............
	defb 06eh,0c4h,02ah,0d8h,0bch,0f0h,000h,000h	; 7aa4  n.*.....

; ----------------------------------------------------------------------
; DATOS graficos_7AAC: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 5;
;   lo leen p00:4AA0 (121 bytes)
;   0x7aac..0x7b25  (121 bytes)
DATA_graficos_7AAC:
	defb 0afh,01fh,03fh,02fh,02bh,043h,027h,03eh,03ch,038h,012h,014h,02bh,027h,040h,0f0h	; 7aac  ..?/+C'><8..+'@.
	defb 07fh,0c0h,0e0h,0f0h,0f8h,0f8h,0fch,03ch,01ch,01ch,00ch,008h,004h,0c4h,022h,00fh	; 7abc  .......<......".
	defb 0feh,000h,000h,010h,014h,03ch,018h,001h,003h,007h,00dh,00bh,014h,018h,03fh,00fh	; 7acc  .....<........?.
	defb 007h,000h,0aah,0c0h,0e0h,0e0h,0f0h,0f0h,0f8h,038h,0dch,0f0h,000h,000h,01fh,03fh	; 7adc  .........8.....?
	defb 02fh,02bh,043h,027h,03eh,03ch,03ah,012h,023h,021h,040h,0f0h,07fh,000h,0c0h,0e0h	; 7aec  /+C'><:.#!@.....
	defb 0f0h,0f8h,0f8h,0fch,03ch,01ch,01ch,00ch,0cch,044h,082h,00fh,0feh,003h,000h,08ch	; 7afc  ....<....D......
	defb 010h,014h,03ch,018h,001h,003h,005h,00dh,01ch,01eh,03fh,00fh,008h,000h,089h,0c0h	; 7b0c  ..<.......?.....
	defb 0e0h,0e0h,0f0h,030h,0b8h,07ch,0f0h,000h,000h	; 7b1c  ...0.|...

; ----------------------------------------------------------------------
; DATOS graficos_7B25: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 9;
;   lo leen p00:4AA0 (130 bytes)
;   0x7b25..0x7ba7  (130 bytes)
DATA_graficos_7B25:
	defb 084h,000h,007h,008h,00fh,003h,034h,08dh,044h,03ah,02ah,034h,00ah,071h,080h,0e0h	; 7b25  ......4.D:*4.q..
	defb 07fh,000h,0e0h,010h,0f0h,003h,02ch,0e9h,022h,05ch,054h,02ch,050h,08eh,001h,007h	; 7b35  ......,."\T,P...
	defb 0feh,007h,008h,067h,090h,08bh,08bh,04bh,03bh,045h,095h,08bh,075h,00eh,07fh,01fh	; 7b45  ...g...K.E..u...
	defb 000h,0e0h,010h,0e6h,009h,0d1h,0d1h,0d2h,0dch,0a2h,0a9h,0d1h,0aeh,070h,0feh,0f8h	; 7b55  .............p..
	defb 000h,000h,007h,008h,010h,023h,02eh,052h,038h,024h,027h,024h,042h,042h,081h,0e0h	; 7b65  .....#.R8$'$BB..
	defb 07fh,000h,0e0h,010h,0c8h,024h,054h,04ah,01ch,024h,0c4h,004h,002h,002h,081h,007h	; 7b75  .....$TJ.$......
	defb 0feh,00fh,060h,097h,08fh,09ch,051h,02dh,047h,09bh,098h,05bh,03dh,03dh,07eh,01fh	; 7b85  ..`...Q-G..[==~.
	defb 000h,0f0h,006h,0e9h,031h,0d9h,0aah,0b4h,0e2h,0d9h,039h,0fah,0fch,0fch,07eh,0f8h	; 7b95  ....1.....9...~.
	defb 000h,000h	; 7ba5

; ----------------------------------------------------------------------
; DATOS graficos_7BA7: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 9;
;   lo leen p00:4AA0 (65 bytes)
;   0x7ba7..0x7be8  (65 bytes)
DATA_graficos_7BA7:
	defb 093h,000h,00fh,010h,020h,038h,02fh,028h,020h,011h,00eh,014h,028h,028h,044h,0e0h	; 7ba7  .... 8/( ...((D.
	defb 07fh,000h,0c0h,028h,003h,010h,003h,088h,09ah,048h,050h,028h,008h,006h,00fh,0feh	; 7bb7  ...(.....HP(....
	defb 00fh,000h,00fh,01fh,007h,010h,017h,01fh,00eh,001h,00bh,017h,017h,03bh,01fh,000h	; 7bc7  ................
	defb 0e0h,008h,0d4h,003h,0eah,08ah,072h,074h,070h,0b4h,0a2h,0d2h,0f4h,0f8h,0f0h,000h	; 7bd7  ......rtp.......
	defb 000h	; 7be7

; ----------------------------------------------------------------------
; DATOS graficos_7BE8: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 1;
;   lo leen p00:4AA0 (66 bytes)
;   0x7be8..0x7c2a  (66 bytes)
DATA_graficos_7BE8:
	defb 0c0h,006h,00dh,010h,01fh,03ah,078h,073h,09eh,09fh,0e7h,099h,0b7h,062h,07fh,0f7h	; 7be8  .....:xs.....b..
	defb 07fh,060h,0b0h,008h,0f8h,05ch,01eh,0ceh,07ah,0fah,0e6h,09ah,0ech,044h,0feh,0c7h	; 7bf8  .`...\..z....D..
	defb 0eeh,001h,002h,00fh,000h,005h,007h,00ch,061h,060h,018h,066h,048h,01dh,000h,008h	; 7c08  ........a`.fH...
	defb 000h,080h,040h,0f0h,000h,0a0h,0e0h,030h,084h,004h,018h,064h,010h,0b8h,000h,038h	; 7c18  ..@....0...d...8
	defb 010h,000h	; 7c28

; ----------------------------------------------------------------------
; DATOS graficos_7C2A: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 1;
;   lo leen p00:4AA0 (61 bytes)
;   0x7c2a..0x7c67  (61 bytes)
DATA_graficos_7C2A:
	defb 0afh,027h,037h,021h,03fh,02bh,041h,078h,04fh,07fh,07dh,020h,01fh,012h,07fh,0f8h	; 7c2a  .'7!?+AxO.} ....
	defb 07fh,0c0h,0e0h,0f0h,0f0h,0f8h,0fch,0fch,09ch,00ch,068h,090h,0b0h,0e8h,0beh,03fh	; 7c3a  ..........h....?
	defb 0feh,018h,008h,01eh,000h,014h,03eh,007h,030h,000h,002h,01fh,000h,00dh,000h,007h	; 7c4a  ......>.0.......
	defb 008h,000h,089h,060h,0f0h,090h,060h,040h,010h,040h,0c0h,000h,000h	; 7c5a  ...`..`@.@...

; ----------------------------------------------------------------------
; DATOS graficos_7C67: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 3;
;   lo leen p00:4AA0 (127 bytes)
;   0x7c67..0x7ce6  (127 bytes)
DATA_graficos_7C67:
	defb 002h,000h,0a4h,070h,038h,0c4h,030h,000h,000h,0a0h,000h,080h,000h,040h,000h,010h	; 7c67  ...p8.0......@..
	defb 002h,000h,00ch,03bh,066h,018h,000h,000h,002h,000h,000h,004h,006h,012h,022h,042h	; 7c77  ....f........."B
	defb 041h,003h,00fh,00fh,007h,01bh,00fh,003h,01fh,002h,00fh,082h,007h,003h,003h,000h	; 7c87  A...............
	defb 086h,080h,0e0h,0c0h,090h,0e0h,0f8h,004h,0fch,002h,0f8h,081h,0e0h,004h,000h,0ach	; 7c97  ................
	defb 031h,0d9h,063h,001h,007h,01bh,063h,007h,00dh,01bh,017h,02ch,030h,034h,061h,000h	; 7ca7  1.c...c....,04a.
	defb 000h,00eh,084h,003h,0c6h,0e0h,030h,08dh,080h,081h,000h,002h,000h,008h,040h,001h	; 7cb7  ......0.......@.
	defb 006h,004h,01ch,01eh,018h,024h,01ch,038h,030h,000h,000h,003h,003h,000h,088h,0c0h	; 7cc7  .....$.80.......
	defb 0f0h,070h,078h,0f8h,038h,018h,0c8h,003h,070h,082h,0e0h,0c0h,003h,000h,000h	; 7cd7  .px.8...p......

; ----------------------------------------------------------------------
; DATOS graficos_7CE6: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 3;
;   lo leen p00:4AA0 (65 bytes)
;   0x7ce6..0x7d27  (65 bytes)
DATA_graficos_7CE6:
	defb 002h,000h,0abh,004h,006h,002h,007h,00fh,007h,03bh,05fh,07fh,050h,048h,044h,084h	; 7ce6  .........._.PHD.
	defb 004h,000h,000h,006h,008h,007h,006h,000h,087h,084h,060h,002h,000h,004h,000h,010h	; 7cf6  ..........`.....
	defb 080h,00fh,007h,00bh,009h,00dh,018h,010h,018h,004h,000h,000h,007h,003h,003h,000h	; 7d06  ................
	defb 084h,080h,0e0h,0f0h,0f0h,003h,0f8h,002h,078h,084h,098h,0f8h,0f0h,0c0h,003h,000h	; 7d16  ........x.......
	defb 000h	; 7d26

; ----------------------------------------------------------------------
; DATOS graficos_7D27: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 7;
;   lo leen p00:4AA0 (125 bytes)
;   0x7d27..0x7da4  (125 bytes)
DATA_graficos_7D27:
	defb 088h,005h,01dh,020h,01bh,007h,00ch,018h,010h,003h,012h,08ch,01ah,03ah,07ah,07eh	; 7d27  ... .........:z~
	defb 03fh,0a0h,0b8h,004h,0d8h,0e0h,030h,018h,003h,008h,08eh,018h,098h,0bch,0beh,0beh	; 7d37  ?.....0.........
	defb 0fch,002h,002h,01fh,004h,000h,003h,007h,00fh,003h,00dh,003h,005h,089h,001h,000h	; 7d47  ................
	defb 040h,040h,0f8h,020h,000h,0c0h,0e0h,003h,0f0h,082h,0e0h,060h,003h,040h,002h,000h	; 7d57  @@. .......`.@..
	defb 087h,009h,016h,00bh,01dh,000h,010h,015h,005h,010h,09bh,00ah,00bh,005h,070h,088h	; 7d67  ..............p.
	defb 084h,042h,072h,00eh,076h,036h,036h,034h,05ch,0dch,0d8h,0f0h,040h,080h,000h,000h	; 7d77  .Br.v664\...@...
	defb 009h,004h,002h,01fh,00fh,00ah,005h,00fh,08ah,005h,004h,002h,000h,070h,078h,0bch	; 7d87  .............px.
	defb 08ch,0f0h,088h,003h,0c8h,086h,0a0h,020h,020h,000h,080h,000h,000h	; 7d97  .......  ....

; ----------------------------------------------------------------------
; DATOS graficos_7DA4: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 7;
;   lo leen p00:4AA0 (63 bytes)
;   0x7da4..0x7de3  (63 bytes)
DATA_graficos_7DA4:
	defb 090h,000h,048h,0b4h,05ah,0ebh,000h,083h,0a9h,081h,081h,083h,084h,086h,056h,05bh	; 7da4  ..H.Z.........V[
	defb 02fh,004h,000h,09ch,080h,040h,0feh,083h,081h,085h,005h,066h,0d4h,0f4h,0fch,0f0h	; 7db4  /....@.....f....
	defb 000h,000h,048h,024h,014h,0ffh,07ch,056h,07eh,07eh,07ch,07bh,079h,029h,024h,010h	; 7dc4  ..H$..|V~~|{y)$.
	defb 005h,000h,08bh,080h,000h,07ch,07eh,07ah,0fah,098h,028h,008h,000h,000h,000h	; 7dd4  .....|~z..(....

; ----------------------------------------------------------------------
; DATOS graficos_7DE3: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista
;   10; lo leen p00:4AA0 (103 bytes)
;   0x7de3..0x7e4a  (103 bytes)
DATA_graficos_7DE3:
	defb 08eh,000h,003h,00fh,00bh,01fh,01fh,03fh,07fh,0bfh,09fh,0afh,05fh,033h,040h,003h	; 7de3  .......?...._3@.
	defb 000h,08eh,0c0h,0f0h,0f0h,0f8h,0f8h,0fch,0feh,0fdh,0f9h,0f5h,0fah,0cch,022h,010h	; 7df3  ..............".
	defb 009h,000h,083h,040h,060h,050h,00dh,000h,083h,002h,006h,00ah,007h,000h,09eh,003h	; 7e03  ...@`P..........
	defb 00fh,00fh,01fh,01bh,03bh,03fh,07eh,0dfh,00fh,08bh,02ch,0d0h,020h,000h,000h,0c0h	; 7e13  .....?~...,. ...
	defb 0f0h,0f0h,0f8h,0d8h,0dch,0fch,07eh,0fah,0f0h,0d1h,034h,00bh,004h,006h,000h,002h	; 7e23  ......~...4.....
	defb 004h,087h,000h,001h,020h,0f0h,070h,0d0h,020h,007h,000h,002h,020h,088h,000h,080h	; 7e33  .... .p. ... ...
	defb 004h,00fh,00eh,00bh,004h,000h,000h	; 7e43

; ----------------------------------------------------------------------
; DATOS graficos_7E4A: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista
;   10; lo leen p00:4AA0 (46 bytes)
;   0x7e4a..0x7e78  (46 bytes)
DATA_graficos_7E4A:
	defb 002h,000h,08dh,007h,01fh,03fh,02fh,06fh,0ffh,03fh,0ffh,038h,020h,041h,055h,02bh	; 7e4a  .....?/o.?.8 AU+
	defb 003h,000h,085h,0c0h,0f0h,0f8h,0fch,0fch,003h,0feh,084h,0fch,0fah,0d0h,008h,007h	; 7e5a  ................
	defb 000h,002h,010h,087h,000h,0c0h,000h,007h,01fh,03eh,02ah,012h,000h,000h	; 7e6a  .........>*...

; ----------------------------------------------------------------------
; DATOS graficos_7E78: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista
;   10; lo leen p00:4AA0 (61 bytes)
;   0x7e78..0x7eb5  (61 bytes)
DATA_graficos_7E78:
	defb 005h,000h,08ah,003h,00fh,06fh,01fh,01bh,0bbh,05fh,00eh,033h,044h,006h,000h,08ah	; 7e78  .....o..._.3D...
	defb 0c0h,0f0h,0f0h,0f8h,0dbh,0dch,0fch,070h,08ch,002h,00ah,000h,002h,004h,082h,000h	; 7e88  .......p........
	defb 001h,00ch,000h,002h,020h,082h,000h,080h,00bh,000h,087h,001h,00dh,002h,03bh,047h	; 7e98  .... ..........G
	defb 009h,012h,00ah,000h,087h,030h,040h,0d8h,0e0h,018h,004h,000h,000h	; 7ea8  .....0@......

; ----------------------------------------------------------------------
; DATOS graficos_7EB5: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 9;
;   lo leen p00:4AA0 (63 bytes)
;   0x7eb5..0x7ef4  (63 bytes)
DATA_graficos_7EB5:
	defb 0a0h,007h,00fh,01fh,07fh,01ah,012h,008h,024h,043h,040h,070h,07fh,028h,053h,0e7h	; 7eb5  ........$C@p.(S.
	defb 07fh,0e0h,0f0h,0f8h,0f8h,058h,048h,010h,024h,0c2h,002h,00eh,0feh,014h,0cah,0e7h	; 7ec5  .....XH.$.......
	defb 0feh,004h,000h,08bh,005h,00dh,007h,01bh,03ch,03fh,00fh,000h,017h,02ch,018h,005h	; 7ed5  ........<?...,..
	defb 000h,08ch,0a0h,0b0h,0e0h,0d8h,03ch,0fch,0f0h,000h,0e8h,034h,018h,000h,000h	; 7ee5  ......<....4...

; ----------------------------------------------------------------------
; DATOS graficos_7EF4: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 6;
;   lo leen p00:4AA0 (54 bytes)
;   0x7ef4..0x7f2a  (54 bytes)
DATA_graficos_7EF4:
	defb 0a0h,01ch,03eh,06fh,00fh,03bh,07dh,0f7h,0f6h,0fbh,0dch,0cfh,05fh,01ch,07fh,0ffh	; 7ef4  ..>o..}....._...
	defb 07fh,038h,07ch,0f6h,0f0h,0dch,0beh,0efh,06fh,0dfh,03bh,0f3h,0fah,038h,0feh,0ffh	; 7f04  .8|.....o....8..
	defb 0feh,004h,000h,086h,004h,002h,008h,009h,004h,003h,00ah,000h,086h,020h,040h,010h	; 7f14  ............. @.
	defb 090h,020h,0c0h,006h,000h,000h	; 7f24

; ----------------------------------------------------------------------
; DATOS graficos_7F2A: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 2;
;   lo leen p00:4AA0 (149 bytes)
;   0x7f2a..0x7fbf  (149 bytes)
DATA_graficos_7F2A:
	defb 005h,000h,089h,060h,054h,0a3h,0a7h,0cfh,0eah,0fch,07fh,01fh,007h,000h,088h,019h	; 7f2a  ...`T...........
	defb 02ah,0dfh,02dh,077h,04fh,0fch,0e0h,004h,000h,08bh,00fh,03fh,07fh,0ffh,09fh,0abh	; 7f3a  *.-wO......?....
	defb 05ch,058h,030h,015h,003h,005h,000h,08ah,060h,0f8h,0fch,0ffh,0e6h,0d5h,020h,0d2h	; 7f4a  \X0.....`..... .
	defb 088h,0b0h,006h,000h,084h,01eh,02fh,07fh,05fh,003h,0bfh,0a3h,07fh,0bfh,0b7h,0f7h	; 7f5a  ....../._.......
	defb 0dah,05fh,067h,01eh,000h,0f8h,0e6h,0fah,0ffh,0fbh,0fdh,0fdh,0fah,0ffh,0fdh,0dfh	; 7f6a  ._g.............
	defb 03bh,0f9h,086h,0dch,001h,003h,0e3h,0dfh,0efh,0f8h,07ch,07bh,034h,033h,010h,003h	; 7f7a  ..........|{43..
	defb 038h,0b2h,070h,07fh,0c0h,0a0h,0e0h,0b0h,028h,034h,052h,092h,025h,0c5h,009h,011h	; 7f8a  8.p.....(4R.%...
	defb 03fh,01fh,0fch,0e0h,000h,00ah,017h,05fh,09fh,0bfh,03fh,07fh,0bfh,0bfh,01fh,02fh	; 7f9a  ?......_..?..../
	defb 063h,046h,008h,008h,000h,090h,0f4h,0fah,0fch,0feh,0fch,0feh,0fdh,0fch,0fah,0f2h	; 7faa  cF..............
	defb 058h,024h,010h,000h,000h	; 7fba

; ----------------------------------------------------------------------
; DATOS graficos_7FBF: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 2;
;   lo leen p00:4AA0 (59 bytes)
;   0x7fbf..0x7ffa  (59 bytes)
DATA_graficos_7FBF:
	defb 089h,01fh,03fh,07dh,064h,049h,089h,040h,020h,03fh,007h,000h,089h,080h,0c0h,0e0h	; 7fbf  ..?}dI.@ ?......
	defb 0e0h,020h,010h,020h,040h,0c0h,009h,000h,086h,002h,01bh,036h,076h,03fh,01fh,00ch	; 7fcf  . . @......6v?..
	defb 000h,084h,0c0h,0e0h,0c0h,080h,00ah,000h,087h,034h,05ah,042h,0a5h,0a5h,042h,07eh	; 7fdf  .........4ZB..B~
	defb 01ah,000h,085h,024h,03ch,05ah,05ah,03ch,018h,000h,000h	; 7fef  ...$<ZZ<...

; ----------------------------------------------------------------------
; DATOS graficos_7FFA: graficos (L_5A2A): [n] n < 0x80 repite el siguiente, n
;   > 0x80 copia n & 0x7F, 0x80 otra direccion, 0 acaba: sprite de la lista 10
;   (sigue en el banco 19, en 0x8000); lo leen p00:4AA0 (6 bytes)
;   0x7ffa..0x8000  (6 bytes)
DATA_graficos_7FFA:
	defb 0abh,001h,002h,0ffh,080h,0ffh	; 7ffa
