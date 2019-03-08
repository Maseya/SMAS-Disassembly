; Super Mario All-Stars   (U) disassembly
; Disassembled by Roy and Ersanio and imamelia and wiiqwertyuiop

DATA_028000:
	; GFX for intro logo (Mario coin)
	incbin "DATA_028000-1000.bin"

DATA_029000:
	; Triangle fading GFX. []The last 0x400 bytes are never used or loaded.
	incbin "DATA_029000-1000.bin"

DATA_02A000:
	; "Super Mario All-Stars" text in Hall Screen
	incbin "DATA_02A000-2000.bin"

DATA_02C000:
	; [?]BG2 Tilemap for Hall Screen and game select screen
	incbin "DATA_02C000-0800.bin"

DATA_02C800:
	; Palette data during Hall Screen (blackout)
	incbin "DATA_02C800-0200.bin"

DATA_02CA00:
	; Palette data during Hall Screen (lit up)
	incbin "DATA_02CA00-0200.bin"

ORG $02F000
DATA_02F000:
	; "GAME SELECT" menu tilemap
	incbin "DATA_02F000-1000.bin"
