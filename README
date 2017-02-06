# SMAS DISASSEMBLY
This is a project where I disassemble and document Super Mario All-Stars.

There are plans to make this disassembly assemble-able in either xkas or asar. The assemble-able version is in the "Assembly" directory, however, it is not perfect and adding/removing code may break the ROM entirely.

## TAGS
There are a few 'tags' used throughout the disassembly:
"TODO": Code which should be looked into in terms of documenting and/or correct disassembling
"INVALID": Most likely unused code which does something invalid (e.g. storing to ROM or (polymorphically) jumping to illogical addresses)

## WHAT'S LEFT TO DO (as of February 6th, 2017)
- Give absolute ROM addressing opcodes of banks 26-2A labels
- Give ROM data DMA tables labels
- Find DMA codes and label them appropriately
- Give ROM data their appropriate data size (db/dw/dl/dd)
- Give absolute and relative ROM access tables labels and their respective math
- Finalize assemble-able version and document that version instead
- Give essential labels of assemble-able more sensible names

## CODE LOCATIONS
Game codes are located in the following banks:
$008000-$02FFFF: Presents screen, hall screen, game select screen
$038000-$0CFFFF: Super Mario Bros. 1
$0D8000-$10FFFF: Super Mario Bros. The Lost Levels
$118000-$15FFFF: Super Mario Bros. 2
$208000-$2AFFFF: Super Mario Bros. 3

### NOTES TO SELF
Regex for finding 16-bit ROM access: (CMP|CP[XY]|LD[AXY]|ORA|AND|EOR|ADC|SBC|BIT|TSB|TRB|ASL|DEC|INC|JMP|JSR|LSR|ROL|ROR)( \$)([8-9A-F][0-9A-F]{3})
Regex for finding 24-bit ROM access: (AND|LD[AXY]|ORA|ADC|SBC|EOR|TSB|TRB|JSL|JML) \$([0-4][0-9A-F][8-9A-F][0-9A-F]{3})
Regex for finding 24-bit ROM addresses: \$([0-4][0-9A-F][8-9A-F][0-9A-F]{3})
