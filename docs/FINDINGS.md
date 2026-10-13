# Findings

All read in the code.

## A cloak that stops half the hits

In the action scenes each hit takes one point of life and you start with 20
(`p11:A7C5`). Carrying item 11, the cloak (マント), only one hit in two counts
(`p11:A7B8`, counter `0xE3B4`).

## The password is the whole game

The 62 bytes of the game (from `0xEB40`) plus a CRC-16 (polynomial `0xA001`,
`p14:BBAD`), all mixed with a key: 130 letters (`p14:BAAC`). If the CRC does not
match, it is not loaded (`p14:BCEA`).

## It saves to another cartridge

Besides tape and disk, it looks in the slots for a cartridge with "YZ" at
`0x4010` and talks to it through `0x8000` (`p01:60CB`).

## In the story, the hero is you

The story sets "あなた" ("you") as the first name before introducing the
characters (`p04:6E5D`).

## The bosses are drawn with tiles

None of the nine is a sprite: they are painted into the name table as they
appear. The one in scene 1 comes down row by row to its place (`p10:8E0D`).
