# Open questions

- **The bosses of scenes 2 and 4** put no tiles: they are sprites, and they are
  not drawn.
- **The characters drawn with tiles** (bit 15 of the type in `p07:8BC2`) are not
  painted.
- **The answer tree of the opening scene**: the messages are there, but not
  which answer goes with each option.
- **Items 13-24** are all called あける in `p04:7A15`.
- **20 character types** are removed when created with the story flags at zero:
  their frame comes only from reading their routine.
- **Five tunes** (0x2C, 0x38, 0x3C, 0x3D and 0x5B) are not asked for by any
  routine in the listing, and 0x60 does not loop back within 25 minutes.
- **The action scenes** are built over the room you come from; here they start
  from an empty screen.
- **The VRAM check** against openMSX is still to be done.
