# The cartridge

A 256 KB MegaROM with Konami's mapper without SCC (Konami4): bank 0 is fixed at
`0x4000`, and `0x6000`, `0x8000` and `0xA000` choose the bank of their window.
There are 32 banks of 8 KB. The cartridge never writes to
`0x5000/0x7000/0x9000/0xB000`, the SCC ones.

## Start-up

INIT at `0x41A3` sets the H.STKE hook, which jumps to `0x41B5`. The interrupt
(H.KEYI) goes to `0x404C`: it sets banks 29-30-31 and runs the music
(`p29:6449`) and, unless it is already inside, the game frame.

## The bank sets

The routines at `p00:40F9-414F` set the banks three at a time: 1-2-3, 4-5-6,
7-8 (at `0x8000` and `0xA000`), 9-10-11, 12-13-14, 15-16-17, 18-19-20, 21-22-23,
24-25-26 and 27-28; the sound uses 29-30-31.

## What each bank holds

| Banks | What |
|---|---|
| 0 | the core: mapper, screen, texts, rooms, sound |
| 1-3 | game states, the character, events and answers, saving |
| 4-6 | logo, title, story, opening scene, the font, menus |
| 7-8 | the characters in the rooms |
| 9-11 | room drawings, the action scenes and their bosses |
| 12-14 | room tiles, status panel, password |
| 15-17 | the map of rooms 0x000-0x1FF |
| 18-20 | sprites, rooms 0x200 onwards, scene graphics |
| 21-28 | the texts and the graphics of scenes 1-4 |
| 29-31 | the sound engine and the music |

## The states

`p01:64DF`: 0 logo, 1 title, 2 demo (script `p11:BD12`), 3 and 4 the game
(names, loading, opening scene), 5 playing, 6 an ending, 7 return, 8 the game's
ending (`p09:6C23`).

## The controls

`0xE008`: bits 0-3 the cursors, 4 fire or space, 5 button 2 or M (menu), 6
RETURN, 7 F5 (mutes the letter sound, `0xF0FA`).

## Saving

Password (bank 14), tape (BIOS `00E1-00F0`), disk (BDOS `0x0F`, `0x16`, `0x10`,
`0x1A`, `0x26`, `0x27`, `p03:BCC4`) and another cartridge with "YZ" at `0x4010`
(`p01:60CB`, it talks to it through `0x8000`).
