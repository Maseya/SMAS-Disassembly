; void ParseAreaData()
;   Parses area object data and stores it into a column tile buffer
;
;   The area parser operates one column at a time. The entire level data is scanned,
;   and tiles that would be written to the current column are processed. Because
;   multiple objects can occupy the same column, a buffer is given to enqueue up to
;   five objects to be written to the same column.
;
;   Essentially calls LoadBufferData() until IsObjectBehindRenderer is false.
;
;   X - CurrentBufferIndex: Can be any value from 0-4. Specifies which buffer we
;       are storing tile data to.
;   Y - AreaDataIndex: Specifies index into AreaObjectData that we are currently
;       reading from.
;   $9E - Stores CurrentBufferIndex when X is used for something else.
;   $FA - AreaObjectData: Long pointer to byte data describing object tile layout.
;   $010B - IsThreeByteObject: If set, the object uses three bytes from the area object
;       data; otherwise, only two bytes are used.
;   $0725 - CurrentRenderPage: The page the renderer is currently on.
;   $0726 - CurrentRenderX: The tile X-coordinate the renderer is on.
;   $0728 - IsRendererBackloading: Used if player enters level from other than
;       beginning.
;   $0729 - IsObjectBehindRenderer: If set, the X-coordinate current object being parsed
;       is behind the X-coordinate of the parser.
;   $072A - CurrentObjectPage: Represents the page the area object data is now at.
;   $072B - IsPageJumpSet: Determines whether a page jump has already been applied to
;       this rendering pass, either by page flag or page skip.
;   $072C - StoredAreaDataIndex: Saves the renderer area data index in case an object
;       previously changed it for whatever reason.
;   $0745 - LoopCommand: If set, then area data will be infinitely repeating unless
;       player crosses at the correct Y position (see W4-4 and W7-4).
;   $1300[5] - ObjectBufferFlag/ObjectBufferWidth: Flag/Width buffer indexed by
;       CurrentBufferIndex. Is -1 if nothing is assigned to buffer. Otherwise, specifies
;       the width of the object assigned to this buffer.
;   $1305[5] - BufferAreaDataIndex: A 16-bit area data index buffer indexed by
;       CurrentBufferIndex. Specifies the index to AreaObjectData for the given buffer
;       object.

; void LoadBufferData()
;   Parse area data for each buffer.
CODE_03A5CC:
REP #$10                ; $03:A5CC: C2 10

; Reset CurrentBufferIndex to front of queue. This effectively puts us back to the first
; buffer.
LDX #$0004              ; $03:A5CE: A2 04 00

; void DecodeBufferData()
;   Parses area object data in current buffer.
CODE_03A5D1:

; IsThreeByteObject = false
STZ $010B               ; $03:A5D1: 9C 0B 01

; Store CurrentBufferIndex in case we clobber X later.
STX $9E                 ; $03:A5D4: 86 9E

; IsObjectBehindRenderer = false
STZ $0729               ; $03:A5D6: 9C 29 07

; Reset AreaDataIndex in case a buffer changed it.
LDY $072C               ; $03:A5D9: AC 2C 07

; bool IsRenderableObject()
;   Determines whether we can decode the current object.
;
;   Jumps to DecodeAreaData() if there is an object in the buffer that can be rendered
;   or if there is no more area data to parse; otherwise, jumps to
;   IncrementAreaDataIndex().
LDA [$FA],y             ; $03:A5DC: B7 FA
CMP #$FD                ; $03:A5DE: C9 FD

; Jump to DecodeAreaData() if EndOfArea was reached.
BEQ CODE_03A645         ; $03:A5E0: F0 63

; IsThreeByteObject = (A & 0x0F) == 0x0F
AND #$0F                ; $03:A5E2: 29 0F
CMP #$0F                ; $03:A5E4: C9 0F
BNE CODE_03A5EB         ; $03:A5E6: D0 03
INC $010B               ; $03:A5E8: EE 0B 01
CODE_03A5EB:

; Jump to DecodeAreaData() if current buffer is enabled.
LDA $1300,x             ; $03:A5EB: BD 00 13
BPL CODE_03A645         ; $03:A5EE: 10 55

; Get page flag of this object.
LDA $010B               ; $03:A5F0: AD 0B 01
BEQ CODE_03A5F6         ; $03:A5F3: F0 01
INY                     ; $03:A5F5: C8
CODE_03A5F6:
INY                     ; $03:A5F6: C8
LDA [$FA],y             ; $03:A5F7: B7 FA
ASL A                   ; $03:A5F9: 0A

; Do not update page number if we didn't get a page flag.
BCC CODE_03A607         ; $03:A5FA: 90 0B

; Similarly, don't update page number if it has already been updated.
LDA $072B               ; $03:A5FC: AD 2B 07
BNE CODE_03A607         ; $03:A5FF: D0 06

; IsPageJumpSet = true
INC $072B               ; $03:A601: EE 2B 07

; CurrentObjectPage++
INC $072A               ; $03:A604: EE 2A 07

; Determine whether this could be a page skip command.
CODE_03A607:
LDY $072C               ; $03:A607: AC 2C 07
LDA [$FA],y             ; $03:A60A: B7 FA
AND #$0F                ; $03:A60C: 29 0F
CMP #$0D                ; $03:A60E: C9 0D

; Page skip commands are encoded with the object's Y coordinate set to 0x0D, so this is
; definitely not a page skip command.
BNE CODE_03A634         ; $03:A610: D0 22

; Determine for sure whether this object is a page skip command.
INY                     ; $03:A612: C8
LDA [$FA],y             ; $03:A613: B7 FA
LDY $072C               ; $03:A615: AC 2C 07
AND #$40                ; $03:A618: 29 40
BNE CODE_03A63D         ; $03:A61A: D0 21

; Also don't update page number if we did so earlier.
LDA $072B               ; $03:A61C: AD 2B 07
BNE CODE_03A63D         ; $03:A61F: D0 1C

; Set current page to whatever the page skip command tells us to.
LDA $010B               ; $03:A621: AD 0B 01
BEQ CODE_03A627         ; $03:A624: F0 01
INY                     ; $03:A626: C8
CODE_03A627:
INY                     ; $03:A627: C8
LDA [$FA],y             ; $03:A628: B7 FA
AND #$1F                ; $03:A62A: 29 1F
STA $072A               ; $03:A62C: 8D 2A 07

; IsPageJumpSet = true
INC $072B               ; $03:A62F: EE 2B 07

; Jump to IncrementAreaDataIndex()
BRA CODE_03A64F         ; $03:A632: 80 1B

; Determine whether this is a scenery change command and if the renderer is
; currently back-loading.
CODE_03A634:
CMP #$0E                ; $03:A634: C9 0E
BNE CODE_03A63D         ; $03:A636: D0 05
LDA $0728               ; $03:A638: AD 28 07
BNE CODE_03A645         ; $03:A63B: D0 08

; Determine whether the page of the current object is behind the page of the renderer.
CODE_03A63D:
LDA $072A               ; $03:A63D: AD 2A 07
CMP $0725               ; $03:A640: CD 25 07
BCC CODE_03A64C         ; $03:A643: 90 07

; Jump to DecodeAreaData() subroutine.
CODE_03A645:
JSR CODE_03A693         ; $03:A645: 20 93 A6

; Jump to MoveToNextBuffer()
REP #$10                ; $03:A648: C2 10
BRA CODE_03A652         ; $03:A64A: 80 06

; Set IsObjectBehindRenderer.
CODE_03A64C:
INC $0729               ; $03:A64C: EE 29 07
; end IsRenderableObject()

; Jump to IncrementAreaDataIndex() subroutine.
CODE_03A64F:
JSR CODE_03A675         ; $03:A64F: 20 75 A6

; void MoveToNextBuffer()
;   Moves to next buffer index and updates the length of the current buffer if it is
;   enabled.
;
;   Jumps back to DecodeBufferData() if there is another buffer to read; otherwise
CODE_03A652:

; Determine whether the current buffer is enabled.
LDX $9E                 ; $03:A652: A6 9E
LDA $1300,x             ; $03:A654: BD 00 13
BMI CODE_03A65C         ; $03:A657: 30 03

; If it is, then decrement the width as we advance one tile farther.
DEC $1300,x             ; $03:A659: DE 00 13

; Determine whether we have any more buffers to read.
CODE_03A65C:
DEX                     ; $03:A65C: CA

; return false.
BMI CODE_03A662         ; $03:A65D: 30 03

; Jump to DecodeBufferData()
JMP CODE_03A5D1         ; $03:A65F: 4C D1 A5
; end MoveToNextBuffer()

; bool AreRendererAndObjectSynced()
;   Determines whether the render and object are on the same page.
;
;   Jumps back to LoadBufferData() if IsObjectBehindRenderer or IsRendererBackloading
;   are true; otherwise, ends ParseAreaData().
CODE_03A662:
LDA $0729               ; $03:A662: AD 29 07
BEQ CODE_03A66A         ; $03:A665: F0 03
JMP CODE_03A5CC         ; $03:A667: 4C CC A5
CODE_03A66A:
LDA $0728               ; $03:A66A: AD 28 07
BEQ CODE_03A672         ; $03:A66D: F0 03
JMP CODE_03A5CC         ; $03:A66F: 4C CC A5
; end AreRendererAndObjectSynced()

CODE_03A672:
SEP #$10                ; $03:A672: E2 10
RTS                     ; $03:A674: 60
; end LoadBufferData()
; end ParseAreaData()

; void IncrementAreaDataIndex()
;   Update AreaDataIndex to next object and reset IsPageJumpSet and IsThreeByteObject.
CODE_03A675:
REP #$20                ; $03:A675: C2 20
INC $072C               ; $03:A677: EE 2C 07
INC $072C               ; $03:A67A: EE 2C 07
LDA $010B               ; $03:A67D: AD 0B 01
AND #$00FF              ; $03:A680: 29 FF 00
BEQ CODE_03A688         ; $03:A683: F0 03
INC $072C               ; $03:A685: EE 2C 07
CODE_03A688:
SEP #$20                ; $03:A688: E2 20
LDA #$00                ; $03:A68A: A9 00
STA $072B               ; $03:A68C: 8D 2B 07
STA $010B               ; $03:A68F: 8D 0B 01
RTS                     ; $03:A692: 60
; end IncrementAreaDataIndex()

; void DecodeAreaData()
;   Reads an area object and writes the appropriate tiles to the column buffer.
;
;   $00 - RenderIndex1: Added to RenderIndex2 to index into the render tile function
;       table.
;   $04 - 16-bit indirect jump pointer.
;   $07 - RenderIndex2: See RenderIndex1.
;   $F6 - IsThreeByteObject
;   $F7 - AreaDataIndex
CODE_03A693:
REP #$30                ; $03:A693: C2 30
TXA                     ; $03:A695: 8A
AND #$00FF              ; $03:A696: 29 FF 00
TAX                     ; $03:A699: AA
SEP #$20                ; $03:A69A: E2 20

; If the current buffer is enabled, then set AreaDataIndex=BufferAreaDataIndex.
LDA $1300,x             ; $03:A69C: BD 00 13
BMI CODE_03A6AB         ; $03:A69F: 30 0A
REP #$20                ; $03:A6A1: C2 20
TXA                     ; $03:A6A3: 8A
ASL A                   ; $03:A6A4: 0A
TAX                     ; $03:A6A5: AA
LDY $1305,x             ; $03:A6A6: BC 05 13
SEP #$20                ; $03:A6A9: E2 20

; TODO(nrg): Render castle objects?
CODE_03A6AB:
LDA $0F82               ; $03:A6AB: AD 82 0F
BEQ CODE_03A6B8         ; $03:A6AE: F0 08
JSL CODE_048817         ; $03:A6B0: 22 17 88 04
STZ $0F82               ; $03:A6B4: 9C 82 0F
RTS                     ; $03:A6B7: 60

CODE_03A6B8:
STY $F7                 ; $03:A6B8: 84 F7
STZ $F6                 ; $03:A6BA: 64 F6
STZ $010B               ; $03:A6BC: 9C 0B 01

; Intended for RenderIndex but is never actually used.
LDX #$0010              ; $03:A6BF: A2 10 00

; If EndOfArea, then exit DecodeAreaData().
LDA [$FA],y             ; $03:A6C2: B7 FA
CMP #$FD                ; $03:A6C4: C9 FD
BEQ CODE_03A672         ; $03:A6C6: F0 AA

; Set IsThreeByteObject.
AND #$0F                ; $03:A6C8: 29 0F
CMP #$0F                ; $03:A6CA: C9 0F
BNE CODE_03A6D2         ; $03:A6CC: D0 04
INC $F6                 ; $03:A6CE: E6 F6
BRA CODE_03A6DC         ; $03:A6D0: 80 0A

; Set RenderIndex1/2 based on object properties. The code is rather messy as its goal is
; to convert the SMB1 object data into a pointer to decide how to render the specific
; tiles. There isn't much value in documentation here. Just read the SMB1 level data
; format documentation.
CODE_03A6D2:
LDX #$0008              ; $03:A6D2: A2 08 00
CMP #$0C                ; $03:A6D5: C9 0C
BEQ CODE_03A6DC         ; $03:A6D7: F0 03
LDX #$0000              ; $03:A6D9: A2 00 00
CODE_03A6DC:
STX $07                 ; $03:A6DC: 86 07
LDX $9E                 ; $03:A6DE: A6 9E
CMP #$0E                ; $03:A6E0: C9 0E
BNE CODE_03A6EA         ; $03:A6E2: D0 06
STZ $07                 ; $03:A6E4: 64 07
LDA #$2E                ; $03:A6E6: A9 2E
BNE CODE_03A747         ; $03:A6E8: D0 5D
CODE_03A6EA:
CMP #$0D                ; $03:A6EA: C9 0D
BNE CODE_03A70D         ; $03:A6EC: D0 1F
LDA #$22                ; $03:A6EE: A9 22
STA $07                 ; $03:A6F0: 85 07

; If this object is a page skip command, then exit DecodeAreaData().
LDA $F6                 ; $03:A6F2: A5 F6
BEQ CODE_03A6F7         ; $03:A6F4: F0 01
INY                     ; $03:A6F6: C8
CODE_03A6F7:
INY                     ; $03:A6F7: C8
LDA [$FA],y             ; $03:A6F8: B7 FA
AND #$40                ; $03:A6FA: 29 40
BEQ CODE_03A766         ; $03:A6FC: F0 68

; Determine whether this is a loop command.
LDA [$FA],y             ; $03:A6FE: B7 FA
AND #$7F                ; $03:A700: 29 7F
CMP #$4B                ; $03:A702: C9 4B
BNE CODE_03A709         ; $03:A704: D0 03
INC $0745               ; $03:A706: EE 45 07
CODE_03A709:
AND #$3F                ; $03:A709: 29 3F
BRA CODE_03A747         ; $03:A70B: 80 3A

CODE_03A70D:
CMP #$0C                ; $03:A70D: C9 0C
BCS CODE_03A739         ; $03:A70F: B0 28
LDA $F6                 ; $03:A711: A5 F6
BEQ CODE_03A716         ; $03:A713: F0 01
INY                     ; $03:A715: C8
CODE_03A716:
INY                     ; $03:A716: C8
LDA [$FA],y             ; $03:A717: B7 FA
AND #$70                ; $03:A719: 29 70
BNE CODE_03A727         ; $03:A71B: D0 0A
LDA #$16                ; $03:A71D: A9 16
STA $07                 ; $03:A71F: 85 07
LDA [$FA],y             ; $03:A721: B7 FA
AND #$0F                ; $03:A723: 29 0F
BRA CODE_03A747         ; $03:A725: 80 20

CODE_03A727:
STA $00                 ; $03:A727: 85 00
CMP #$70                ; $03:A729: C9 70
BNE CODE_03A735         ; $03:A72B: D0 08
LDA [$FA],y             ; $03:A72D: B7 FA
AND #$08                ; $03:A72F: 29 08
BEQ CODE_03A735         ; $03:A731: F0 02
STZ $00                 ; $03:A733: 64 00
CODE_03A735:
LDA $00                 ; $03:A735: A5 00
BRA CODE_03A743         ; $03:A737: 80 0A

CODE_03A739:
LDA $F6                 ; $03:A739: A5 F6
BEQ CODE_03A73E         ; $03:A73B: F0 01
INY                     ; $03:A73D: C8
CODE_03A73E:
INY                     ; $03:A73E: C8
LDA [$FA],y             ; $03:A73F: B7 FA
AND #$70                ; $03:A741: 29 70
CODE_03A743:
LSR A                   ; $03:A743: 4A
LSR A                   ; $03:A744: 4A
LSR A                   ; $03:A745: 4A
LSR A                   ; $03:A746: 4A
CODE_03A747:
STA $00                 ; $03:A747: 85 00

; If we have an object in the render buffer, then we definitely need to render it.
LDA $1300,x             ; $03:A749: BD 00 13
BPL CODE_03A7A6         ; $03:A74C: 10 58

; If we want to render a non-buffered object, then we need to check if the page and X
; coordinate match between the renderer and the object.
LDA $072A               ; $03:A74E: AD 2A 07
CMP $0725               ; $03:A751: CD 25 07
BEQ CODE_03A769         ; $03:A754: F0 13

; If the pages don't match, then we shouldn't render this object unless the renderer is
; back-loading and we need to process a scenery change.
LDY $072C               ; $03:A756: AC 2C 07
LDA [$FA],y             ; $03:A759: B7 FA
AND #$0F                ; $03:A75B: 29 0F
CMP #$0E                ; $03:A75D: C9 0E
BNE CODE_03A766         ; $03:A75F: D0 05

; Go ahead and render scenery change so the player sees the right stuff when they enter
; the level.
LDA $0728               ; $03:A761: AD 28 07
BNE CODE_03A78D         ; $03:A764: D0 27

; Otherwise, there's nothing to render since we're not even on the right page.
CODE_03A766:
SEP #$10                ; $03:A766: E2 10
RTS                     ; $03:A768: 60

CODE_03A769:

; If the pages are equal, then we need to see if we've been back-loading the renderer.
; If so, then we clear the backloading flag and finish decoding for now.
LDA $0728               ; $03:A769: AD 28 07
BEQ CODE_03A77D         ; $03:A76C: F0 0F
LDA #$00                ; $03:A76E: A9 00
STA $0728               ; $03:A770: 8D 28 07
STA $0729               ; $03:A773: 8D 29 07
STA $9E                 ; $03:A776: 85 9E
STA $9F                 ; $03:A778: 85 9F
CODE_03A77A:
SEP #$10                ; $03:A77A: E2 10
RTS                     ; $03:A77C: 60

; If we're not back-loading, then we need one more check to make sure the X-coordinates
; match between the object and the renderer.
CODE_03A77D:
LDY $072C               ; $03:A77D: AC 2C 07
LDA [$FA],y             ; $03:A780: B7 FA
AND #$F0                ; $03:A782: 29 F0
LSR A                   ; $03:A784: 4A
LSR A                   ; $03:A785: 4A
LSR A                   ; $03:A786: 4A
LSR A                   ; $03:A787: 4A

; Don't render if the object is not on the renderer's X-coordinate.
CMP $0726               ; $03:A788: CD 26 07
BNE CODE_03A766         ; $03:A78B: D0 D9

CODE_03A78D:
; BufferAreaDataIndex[X] = AreaDataIndex
PHX                     ; $03:A78D: DA
REP #$20                ; $03:A78E: C2 20
TXA                     ; $03:A790: 8A
ASL A                   ; $03:A791: 0A
TAX                     ; $03:A792: AA
LDA $072C               ; $03:A793: AD 2C 07
STA $1305,x             ; $03:A796: 9D 05 13
SEP #$20                ; $03:A799: E2 20
PLX                     ; $03:A79B: FA

; Synchronize IsThreeByteObject flags.
LDA $F6                 ; $03:A79C: A5 F6
BEQ CODE_03A7A3         ; $03:A79E: F0 03
INC $010B               ; $03:A7A0: EE 0B 01

CODE_03A7A3:
; Call IncrementAreaDataIndex() subroutine to prepare the renderer for the next object.
JSR CODE_03A675         ; $03:A7A3: 20 75 A6

CODE_03A7A6:
; Determine whether this is a two- or three-byte object.
LDA $F6                 ; $03:A7A6: A5 F6
BEQ CODE_03A7B3         ; $03:A7A8: F0 09

; Render three-byte objects.
LDY $F7                 ; $03:A7AA: A4 F7
JSL CODE_048E15         ; $03:A7AC: 22 15 8E 04
SEP #$10                ; $03:A7B0: E2 10
RTS                     ; $03:A7B2: 60

; Render two-byte objects.
CODE_03A7B3:
SEP #$10                ; $03:A7B3: E2 10
LDA $00                 ; $03:A7B5: A5 00
CLC                     ; $03:A7B7: 18
ADC $07                 ; $03:A7B8: 65 07
ASL A                   ; $03:A7BA: 0A
TAY                     ; $03:A7BB: A8
LDA PNTR_03A7C9,y       ; $03:A7BC: B9 C9 A7
STA $04                 ; $03:A7BF: 85 04
LDA PNTR_03A7C9+1,y     ; $03:A7C1: B9 CA A7
STA $05                 ; $03:A7C4: 85 05

; Jump to object rendering routine.
JMP ($0004)             ; $03:A7C6: 6C 04 00

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SMB1 OBJECT DATA - Vertically Extendable Objects
;;
;; Each "Object" is composed out of (multiple) map16 tiles. These objects are defined in the level
;; data, then are generated programmatically in the level from there. For example, the springboard
;; consists of a combination of a map16 tile and a sprite, but these are defined as a single object.
;;
PNTR_03A7C9:

; $00 - Open pipe
dw CODE_03A9F7

; $01 - $0733-dependent object. 00 = normal, green platform. 01 = mushroom, 02 = bullet bill cannons
dw CODE_03A8AF

; $02 - Row of bricks
dw CODE_03AB63

; $03 - Row of stones
dw CODE_03AB72

; $04 - Row of coins
dw CODE_03AB2A

; $05 - Column of bricks
dw CODE_03AB83

; $06 - Column of stones
dw CODE_03AB8A

; $07 - Closed pipe
dw CODE_03A9F7

; $08 - Hole object
dw CODE_03AC3F

; $09 - Pulley rope
dw CODE_03A978

; $0A - Bridge (Y=7/high)
dw CODE_03AAB0

; $0B - Bridge (Y=8/mid)
dw CODE_03AAB4

; $0C - Bridge (Y=10/low)
dw CODE_03AAB8

; $0D - Hole with water/lava
dw CODE_03AA7E

; $0E - Row of Coin Question blocks (Y=3/high)
dw CODE_03AA9E

; $0F - Row of Coin Question blocks (Y=7/low)
dw CODE_03AAA2

; $10 - Nothing (Vertical rope lift in SMB1)
dw CODE_03A827

; $11 - Nothing (Vertical pulley rope lift in SMB1)
dw CODE_03A827

; $12 - Nothing (End-of-level castle in SMB1)
dw CODE_03A827

; $13 - Nothing (Open J pipe in SMB1)
dw CODE_03A827

; $14 - Nothing (vertical balls in SMB1)
dw CODE_03A827

; $15 - Nothing (Nothing in SMB1)
dw CODE_03A827

; $16 - Question block with powerup
dw CODE_03AC0F

; $17 - Question block with coin
dw CODE_03AC0F

; $18 - Hidden coin block
dw CODE_03AC0F

; $19 - Hidden 1UP block
dw CODE_03AC05

; $1A - Brick with powerup
dw CODE_03AC18

; $1B - Brick with vine
dw CODE_03AC18

; $1C - Brick with star
dw CODE_03AC18

; $1D - Brick with 10 coins
dw CODE_03AC15

; $1E - Brick with 1UP
dw CODE_03AC18

; $1F - Underwater horizontal pipe
dw CODE_03A98D

; $20 - Fire bar block
dw CODE_03AB4E

; $21 - Springboard (and spring sprite)
dw CODE_03ABD5

; $22 - J Pipe
dw CODE_03A9A0

; $23 - Flag Pole (and flag sprite)
dw CODE_03AAE4

; $24 - Bowser axe
dw CODE_03AB3F

; $25 - Rope for axe.
dw CODE_03AB44

; $26 - Bowser bridge
dw CODE_03AB38

; $27 - Scroll stop (warp zone)
dw CODE_03A862

; $28 - Scroll stop
dw CODE_03A87C

; $29 - Scroll stop
dw CODE_03A87C

; $2A - Flying cheep-cheep generator
dw CODE_03A89A

; $2B - Bullet bill/Swimming cheep-cheep generator
dw CODE_03A89A

; $2C - Stop generator
dw CODE_03A89A

; $2D - Area loop command
dw CODE_03A77A

; $2E - Scenery modifier
dw CODE_03A828

CODE_03A827:
RTS                     ; $03:A827: 60

CODE_03A828:
PHX                     ; $03:A828: DA
REP #$30                ; $03:A829: C2 30
TXA                     ; $03:A82B: 8A
ASL A                   ; $03:A82C: 0A
TAX                     ; $03:A82D: AA
LDY $1305,x             ; $03:A82E: BC 05 13
SEP #$20                ; $03:A831: E2 20
INY                     ; $03:A833: C8
LDA [$FA],y             ; $03:A834: B7 FA
SEP #$10                ; $03:A836: E2 10
PLX                     ; $03:A838: FA
PHA                     ; $03:A839: 48
AND #$40                ; $03:A83A: 29 40
BNE CODE_03A850         ; $03:A83C: D0 12
PLA                     ; $03:A83E: 68
PHA                     ; $03:A83F: 48
AND #$0F                ; $03:A840: 29 0F
STA $0727               ; $03:A842: 8D 27 07
PLA                     ; $03:A845: 68
AND #$30                ; $03:A846: 29 30
LSR A                   ; $03:A848: 4A
LSR A                   ; $03:A849: 4A
LSR A                   ; $03:A84A: 4A
LSR A                   ; $03:A84B: 4A
STA $0742               ; $03:A84C: 8D 42 07
RTS                     ; $03:A84F: 60

CODE_03A850:
PLA                     ; $03:A850: 68
AND #$07                ; $03:A851: 29 07
CMP #$04                ; $03:A853: C9 04
BCC CODE_03A85E         ; $03:A855: 90 07
AND #$04                ; $03:A857: 29 04
STA $0744               ; $03:A859: 8D 44 07
LDA #$00                ; $03:A85C: A9 00

CODE_03A85E:
STA $0741               ; $03:A85E: 8D 41 07
RTS                     ; $03:A861: 60

; "warpzone scroll stop code" ~ SWR | Warpzone setup

CODE_03A862:
LDX #$04                ; $03:A862: A2 04
LDA $075F               ; $03:A864: AD 5F 07

; If world 1-x
; Set warp zone config to world 1's warps
BEQ CODE_03A870         ; $03:A867: F0 07

; adjust config for next checks
INX                     ; $03:A869: E8
LDY $5C                 ; $03:A86A: A4 5C
DEY                     ; $03:A86C: 88

; If map type is not "ground" and world is not 1-x
; Set warp zone config to world 4's single warp
BNE CODE_03A870         ; $03:A86D: D0 01

; Else set warp zone config to world 4's outside warps
INX                     ; $03:A86F: E8

CODE_03A870:
TXA                     ; $03:A870: 8A

; Store warpzone config
STA $06D6               ; $03:A871: 8D D6 06

; Routine to write the "Welcome to warpzone" message
JSR CODE_0390FC         ; $03:A874: 20 FC 90
LDA #$0D                ; $03:A877: A9 0D

; Destroy all piranha plants
JSR CODE_03A885         ; $03:A879: 20 85 A8

CODE_03A87C:
LDA $0723               ; $03:A87C: AD 23 07
EOR #$01                ; $03:A87F: 49 01

; Flip scroll enabled flag on or off
STA $0723               ; $03:A881: 8D 23 07

; Return
RTS                     ; $03:A884: 60

CODE_03A885:
STA $00                 ; $03:A885: 85 00
LDA #$00                ; $03:A887: A9 00
LDX #$08                ; $03:A889: A2 08

CODE_03A88B:
LDY $1C,x               ; $03:A88B: B4 1C
CPY $00                 ; $03:A88D: C4 00
BNE CODE_03A893         ; $03:A88F: D0 02
STA $10,x               ; $03:A891: 95 10

CODE_03A893:
DEX                     ; $03:A893: CA
BPL CODE_03A88B         ; $03:A894: 10 F5

; Destroy all sprites with sprite number specified in A by setting them
; off-screen.
RTS                     ; $03:A896: 60

; Generators: Bullet Bill, Flying Cheep-Cheep, Stop Generators

DATA_03A897:
db $14,$17,$18

CODE_03A89A:
LDX $00                 ; $03:A89A: A6 00
LDA DATA_03A897-8,x     ; $03:A89C: BD 8F A8
LDY #$09                ; $03:A89F: A0 09

CODE_03A8A1:
DEY                     ; $03:A8A1: 88
BMI CODE_03A8AB         ; $03:A8A2: 30 07
CMP $001C,y             ; $03:A8A4: D9 1C 00
BNE CODE_03A8A1         ; $03:A8A7: D0 F8
LDA #$00                ; $03:A8A9: A9 00

; Set enemy to generate: nothing

CODE_03A8AB:
STA $06CD               ; $03:A8AB: 8D CD 06
RTS                     ; $03:A8AE: 60

CODE_03A8AF:
LDA $0733               ; $03:A8AF: AD 33 07
ASL A                   ; $03:A8B2: 0A
TAY                     ; $03:A8B3: A8
LDA PNTR_03A8C1,y       ; $03:A8B4: B9 C1 A8
STA $04                 ; $03:A8B7: 85 04
LDA PNTR_03A8C1+1,y     ; $03:A8B9: B9 C2 A8
STA $05                 ; $03:A8BC: 85 05

; Execute routines according to area object styles
JMP ($0004)             ; $03:A8BE: 6C 04 00

; Code for object $01: $0733-dependant object

; Regular

PNTR_03A8C1:
dw CODE_03A8C7

; Mushroom platforms
dw CODE_03A937

; Bullet bill cannons
dw CODE_03AB99

; Get object attributes from level object pointer

CODE_03A8C7:
JSR CODE_03ACC2         ; $03:A8C7: 20 C2 AC
STX $0ECA               ; $03:A8CA: 8E CA 0E
LDA $1300,x             ; $03:A8CD: BD 00 13
BEQ CODE_03A932         ; $03:A8D0: F0 60
BPL CODE_03A8E5         ; $03:A8D2: 10 11
TYA                     ; $03:A8D4: 98
STA $1300,x             ; $03:A8D5: 9D 00 13
LDA $0725               ; $03:A8D8: AD 25 07
ORA $0726               ; $03:A8DB: 0D 26 07
BEQ CODE_03A8E5         ; $03:A8DE: F0 05
LDA #$1A                ; $03:A8E0: A9 1A
JMP CODE_03A96E         ; $03:A8E2: 4C 6E A9

CODE_03A8E5:
STA $0ECB               ; $03:A8E5: 8D CB 0E
LDX $07                 ; $03:A8E8: A6 07
LDA #$1B                ; $03:A8EA: A9 1B
STA $06A1,x             ; $03:A8EC: 9D A1 06
TXY                     ; $03:A8EF: 9B
INY                     ; $03:A8F0: C8
LDX $0ECA               ; $03:A8F1: AE CA 0E
DEC $0ECB               ; $03:A8F4: CE CB 0E
BEQ CODE_03A913         ; $03:A8F7: F0 1A
LDA $130F,x             ; $03:A8F9: BD 0F 13
BNE CODE_03A90A         ; $03:A8FC: D0 0C
INC $130F,x             ; $03:A8FE: FE 0F 13
LDA #$45                ; $03:A901: A9 45
STA $06A1,y             ; $03:A903: 99 A1 06
LDA #$49                ; $03:A906: A9 49
BRA CODE_03A92E         ; $03:A908: 80 24

CODE_03A90A:
LDA #$46                ; $03:A90A: A9 46
STA $06A1,y             ; $03:A90C: 99 A1 06
LDA #$4A                ; $03:A90F: A9 4A
BRA CODE_03A92E         ; $03:A911: 80 1B

CODE_03A913:
LDA $130F,x             ; $03:A913: BD 0F 13
BEQ CODE_03A924         ; $03:A916: F0 0C
STZ $130F,x             ; $03:A918: 9E 0F 13
LDA #$47                ; $03:A91B: A9 47
STA $06A1,y             ; $03:A91D: 99 A1 06
LDA #$4B                ; $03:A920: A9 4B
BRA CODE_03A92E         ; $03:A922: 80 0A

CODE_03A924:
STZ $130F,x             ; $03:A924: 9E 0F 13
LDA #$48                ; $03:A927: A9 48
STA $06A1,y             ; $03:A929: 99 A1 06
LDA #$4C                ; $03:A92C: A9 4C

CODE_03A92E:
TYX                     ; $03:A92E: BB
JMP CODE_03A968         ; $03:A92F: 4C 68 A9

CODE_03A932:
LDA #$1C                ; $03:A932: A9 1C
JMP CODE_03A96E         ; $03:A934: 4C 6E A9

CODE_03A937:
JSR CODE_03ACB3         ; $03:A937: 20 B3 AC
STY $06                 ; $03:A93A: 84 06
BCC CODE_03A949         ; $03:A93C: 90 0B
LDA $1300,x             ; $03:A93E: BD 00 13
LSR A                   ; $03:A941: 4A
STA $1314,x             ; $03:A942: 9D 14 13
LDA #$1D                ; $03:A945: A9 1D
BRA CODE_03A96E         ; $03:A947: 80 25

CODE_03A949:
LDA #$1F                ; $03:A949: A9 1F
LDY $1300,x             ; $03:A94B: BC 00 13
BEQ CODE_03A96E         ; $03:A94E: F0 1E
LDA $1314,x             ; $03:A950: BD 14 13
STA $06                 ; $03:A953: 85 06
LDX $07                 ; $03:A955: A6 07
LDA #$1E                ; $03:A957: A9 1E
STA $06A1,x             ; $03:A959: 9D A1 06
CPY $06                 ; $03:A95C: C4 06
BNE CODE_03A98C         ; $03:A95E: D0 2C
INX                     ; $03:A960: E8
LDA #$4F                ; $03:A961: A9 4F
STA $06A1,x             ; $03:A963: 9D A1 06
LDA #$50                ; $03:A966: A9 50

CODE_03A968:
INX                     ; $03:A968: E8
LDY #$0F                ; $03:A969: A0 0F

; Place tile in Accumulator into level.
JMP CODE_03AC78         ; $03:A96B: 4C 78 AC

CODE_03A96E:
LDX $07                 ; $03:A96E: A6 07
LDY #$00                ; $03:A970: A0 00

; Place tile in Accumulator into level.
JMP CODE_03AC78         ; $03:A972: 4C 78 AC

; Pulley rope map16 tiles: left corner, middle, right corner

DATA_03A975:
db $42,$41,$43

; Pulley rope

; Get length of pulley rope object

CODE_03A978:
JSR CODE_03ACB3         ; $03:A978: 20 B3 AC

; Initialize tile buffer index
LDY #$00                ; $03:A97B: A0 00

; If starting, render left corner
BCS CODE_03A986         ; $03:A97D: B0 07
INY                     ; $03:A97F: C8
LDA $1300,x             ; $03:A980: BD 00 13

; If not at the end, render rope
BNE CODE_03A986         ; $03:A983: D0 01

; Otherwise render right corner
INY                     ; $03:A985: C8

CODE_03A986:
LDA DATA_03A975,y       ; $03:A986: B9 75 A9

; render
STA $06A1               ; $03:A989: 8D A1 06

CODE_03A98C:
RTS                     ; $03:A98C: 60

; Underwater horizontal pipe

; Get object attributes from level object pointer

CODE_03A98D:
JSR CODE_03ACC2         ; $03:A98D: 20 C2 AC
LDY $1300,x             ; $03:A990: BC 00 13
LDX $07                 ; $03:A993: A6 07

; Pipe top tile
LDA #$75                ; $03:A995: A9 75
STA $06A1,x             ; $03:A997: 9D A1 06

; Pipe bottom tile
LDA #$76                ; $03:A99A: A9 76
STA $06A2,x             ; $03:A99C: 9D A2 06
RTS                     ; $03:A99F: 60

CODE_03A9A0:
LDY #$03                ; $03:A9A0: A0 03
JSR CODE_03ACB6         ; $03:A9A2: 20 B6 AC
LDY #$0A                ; $03:A9A5: A0 0A
DEY                     ; $03:A9A7: 88
DEY                     ; $03:A9A8: 88
STY $05                 ; $03:A9A9: 84 05
LDY $1300,x             ; $03:A9AB: BC 00 13
STY $06                 ; $03:A9AE: 84 06
LDX $05                 ; $03:A9B0: A6 05
INX                     ; $03:A9B2: E8
LDA DATA_03A9E3,y       ; $03:A9B3: B9 E3 A9
CMP #$00                ; $03:A9B6: C9 00
BEQ CODE_03A9C2         ; $03:A9B8: F0 08
LDX #$00                ; $03:A9BA: A2 00
LDY $05                 ; $03:A9BC: A4 05

; Place tile in Accumulator into level.
JSR CODE_03AC78         ; $03:A9BE: 20 78 AC
CLC                     ; $03:A9C1: 18

CODE_03A9C2:
LDY $06                 ; $03:A9C2: A4 06
LDA DATA_03A9E7,y       ; $03:A9C4: B9 E7 A9
STA $06A1,x             ; $03:A9C7: 9D A1 06
LDA DATA_03A9EB,y       ; $03:A9CA: B9 EB A9
STA $06A2,x             ; $03:A9CD: 9D A2 06
BCS CODE_03A9E2         ; $03:A9D0: B0 10
LDX #$06                ; $03:A9D2: A2 06

CODE_03A9D4:
LDA #$00                ; $03:A9D4: A9 00
STA $06A1,x             ; $03:A9D6: 9D A1 06
DEX                     ; $03:A9D9: CA
BPL CODE_03A9D4         ; $03:A9DA: 10 F8
LDA DATA_03A9EF,y       ; $03:A9DC: B9 EF A9
STA $06A8               ; $03:A9DF: 8D A8 06

CODE_03A9E2:
RTS                     ; $03:A9E2: 60

DATA_03A9E3:
db $19,$18,$00,$00

DATA_03A9E7:
db $19,$22,$21,$20

DATA_03A9EB:
db $19,$25,$24,$23

; Pipe tiles

DATA_03A9EF:
db $15,$14,$19,$18,$17,$16,$19,$18

; Generate pipe

; Get pipe height

CODE_03A9F7:
JSR CODE_03AA4D         ; $03:A9F7: 20 4D AA
LDA $00                 ; $03:A9FA: A5 00

; Branch if warp pipe
BEQ CODE_03AA02         ; $03:A9FC: F0 04
INY                     ; $03:A9FE: C8
INY                     ; $03:A9FF: C8
INY                     ; $03:AA00: C8
INY                     ; $03:AA01: C8

CODE_03AA02:
TYA                     ; $03:AA02: 98

; Preserve A
PHA                     ; $03:AA03: 48
LDA $0760               ; $03:AA04: AD 60 07
ORA $075F               ; $03:AA07: 0D 5F 07

; If 1-1, piranha plants do not appear
BEQ CODE_03AA39         ; $03:AA0A: F0 2D
LDY $1300,x             ; $03:AA0C: BC 00 13
BEQ CODE_03AA39         ; $03:AA0F: F0 28
JSR CODE_03AA6B         ; $03:AA11: 20 6B AA

; Get free sprite slot for the piranha plant
; If none, skip
BCS CODE_03AA39         ; $03:AA14: B0 23
JSR CODE_03ACE0         ; $03:AA16: 20 E0 AC
CLC                     ; $03:AA19: 18
ADC #$08                ; $03:AA1A: 69 08
STA $021A,x             ; $03:AA1C: 9D 1A 02
LDA $0725               ; $03:AA1F: AD 25 07
ADC #$00                ; $03:AA22: 69 00

; Get Xpos of screen ((AND #$F0>>4)<<4)
;
; Add 8 pixels to it
; Store into Sprite X-Position
;
; Handle page boundary accordingly
STA $79,x               ; $03:AA24: 95 79
LDA #$01                ; $03:AA26: A9 01
STA $BC,x               ; $03:AA28: 95 BC

; Sprite is onscreen in a normal way
STA $10,x               ; $03:AA2A: 95 10
JSR CODE_03ACE8         ; $03:AA2C: 20 E8 AC

; (A << 4) + $20
; Store ypos
STA $0238,x             ; $03:AA2F: 9D 38 02
LDA #$0D                ; $03:AA32: A9 0D

; Sprite to generate: Piranha plant
STA $1C,x               ; $03:AA34: 95 1C

; Run piranha plant code?
JSR CODE_03CB99         ; $03:AA36: 20 99 CB

; Recover A

CODE_03AA39:
PLA                     ; $03:AA39: 68
TAY                     ; $03:AA3A: A8
LDX $07                 ; $03:AA3B: A6 07
LDA DATA_03A9EF,y       ; $03:AA3D: B9 EF A9
STA $06A1,x             ; $03:AA40: 9D A1 06
INX                     ; $03:AA43: E8
LDA DATA_03A9EF+2,y     ; $03:AA44: B9 F1 A9
LDY $06                 ; $03:AA47: A4 06
DEY                     ; $03:AA49: 88

; Place tile in Accumulator into level.
JMP CODE_03AC78         ; $03:AA4A: 4C 78 AC

CODE_03AA4D:
LDY #$01                ; $03:AA4D: A0 01
JSR CODE_03ACB6         ; $03:AA4F: 20 B6 AC

; Get object attributes from level object pointer
JSR CODE_03ACC2         ; $03:AA52: 20 C2 AC
TYA                     ; $03:AA55: 98
AND #$07                ; $03:AA56: 29 07
STA $06                 ; $03:AA58: 85 06
LDY $1300,x             ; $03:AA5A: BC 00 13
RTS                     ; $03:AA5D: 60

CODE_03AA5E:
LDX #$00                ; $03:AA5E: A2 00

CODE_03AA60:
CLC                     ; $03:AA60: 18
LDA $10,x               ; $03:AA61: B5 10
BEQ CODE_03AA6A         ; $03:AA63: F0 05
INX                     ; $03:AA65: E8
CPX #$08                ; $03:AA66: E0 08
BNE CODE_03AA60         ; $03:AA68: D0 F6

; Get free sprite slot (begin-end)

CODE_03AA6A:
RTS                     ; $03:AA6A: 60

CODE_03AA6B:
LDX #$08                ; $03:AA6B: A2 08

CODE_03AA6D:
CLC                     ; $03:AA6D: 18
LDA $10,x               ; $03:AA6E: B5 10
BEQ CODE_03AA77         ; $03:AA70: F0 05
DEX                     ; $03:AA72: CA
CPX #$FF                ; $03:AA73: E0 FF
BNE CODE_03AA6D         ; $03:AA75: D0 F6

; Routine only used by piranha plant
;
;
; Get free sprite slot (end-begin)
; Index = $FF if none

CODE_03AA77:
RTS                     ; $03:AA77: 60

; Water/lava pit top tiles: Underwater, normal, cave, castle

DATA_03AA78:
db $86,$87,$00,$88

; Water/lava pit tiles

DATA_03AA7C:
db $8A,$8B

; Water/lava pit

; Get length of object

CODE_03AA7E:
JSR CODE_03ACB3         ; $03:AA7E: 20 B3 AC

; Set row to 10
LDX #$0A                ; $03:AA81: A2 0A
LDA $5C                 ; $03:AA83: A5 5C
CMP #$03                ; $03:AA85: C9 03
BNE CODE_03AA8A         ; $03:AA87: D0 01

; Set row to 11 if castle level
INX                     ; $03:AA89: E8

CODE_03AA8A:
LDY $5C                 ; $03:AA8A: A4 5C
LDA DATA_03AA78,y       ; $03:AA8C: B9 78 AA
STA $06A1,x             ; $03:AA8F: 9D A1 06
INX                     ; $03:AA92: E8
TYA                     ; $03:AA93: 98
LSR A                   ; $03:AA94: 4A
TAY                     ; $03:AA95: A8

; Render tile depending on level type
LDA DATA_03AA7C,y       ; $03:AA96: B9 7C AA

; Height 2
LDY #$01                ; $03:AA99: A0 01

; Place tile in Accumulator into level.
JMP CODE_03AC78         ; $03:AA9B: 4C 78 AC

; Row of Coin Question blocks (high)

; Set row

CODE_03AA9E:
LDA #$03                ; $03:AA9E: A9 03
BRA CODE_03AAA4         ; $03:AAA0: 80 02

; Row of Coin Question blocks (low)

; Set row

CODE_03AAA2:
LDA #$07                ; $03:AAA2: A9 07

CODE_03AAA4:
PHA                     ; $03:AAA4: 48

; Get length of object
JSR CODE_03ACB3         ; $03:AAA5: 20 B3 AC
PLA                     ; $03:AAA8: 68
TAX                     ; $03:AAA9: AA

; Coin question block map16
LDA #$E7                ; $03:AAAA: A9 E7
STA $06A1,x             ; $03:AAAC: 9D A1 06
RTS                     ; $03:AAAF: 60

; Bridge (high)

; set row

CODE_03AAB0:
LDA #$06                ; $03:AAB0: A9 06
BRA CODE_03AABA         ; $03:AAB2: 80 06

; Bridge (mid)

; set row

CODE_03AAB4:
LDA #$07                ; $03:AAB4: A9 07
BRA CODE_03AABA         ; $03:AAB6: 80 02

; Bridge (low)

; set row

CODE_03AAB8:
LDA #$09                ; $03:AAB8: A9 09

CODE_03AABA:
PHA                     ; $03:AABA: 48

; Get bridge length
JSR CODE_03ACB3         ; $03:AABB: 20 B3 AC
LDA $1300,x             ; $03:AABE: BD 00 13
BEQ CODE_03AAD3         ; $03:AAC1: F0 10
LDA $130F,x             ; $03:AAC3: BD 0F 13
BNE CODE_03AACF         ; $03:AAC6: D0 07
INC $130F,x             ; $03:AAC8: FE 0F 13

; Bridge begin railing tile
LDA #$0E                ; $03:AACB: A9 0E
BRA CODE_03AAD8         ; $03:AACD: 80 09

; Bridge middle railing tile

CODE_03AACF:
LDA #$0D                ; $03:AACF: A9 0D
BRA CODE_03AAD8         ; $03:AAD1: 80 05

CODE_03AAD3:
STZ $130F,x             ; $03:AAD3: 9E 0F 13

; Bridge end railing tile
LDA #$0F                ; $03:AAD6: A9 0F

CODE_03AAD8:
PLX                     ; $03:AAD8: FA

; render tile
STA $06A1,x             ; $03:AAD9: 9D A1 06

; go down once
INX                     ; $03:AADC: E8
LDY #$00                ; $03:AADD: A0 00
LDA #$6B                ; $03:AADF: A9 6B

; bridge height is 1
; Bridge tile
; Place tile in Accumulator into level.
JMP CODE_03AC78         ; $03:AAE1: 4C 78 AC

CODE_03AAE4:
LDA #$28                ; $03:AAE4: A9 28
STA $06A1               ; $03:AAE6: 8D A1 06
LDX #$01                ; $03:AAE9: A2 01
LDY #$08                ; $03:AAEB: A0 08
LDA #$29                ; $03:AAED: A9 29
JSR CODE_03AC78         ; $03:AAEF: 20 78 AC
LDA #$64                ; $03:AAF2: A9 64
STA $06AB               ; $03:AAF4: 8D AB 06

; Turn current screen x-coordinate (16x16) to pixel coordinate
JSR CODE_03ACE0         ; $03:AAF7: 20 E0 AC
SEC                     ; $03:AAFA: 38
SBC #$08                ; $03:AAFB: E9 08
STA $021F               ; $03:AAFD: 8D 1F 02
LDA $0725               ; $03:AB00: AD 25 07
SBC #$00                ; $03:AB03: E9 00
STA $7E                 ; $03:AB05: 85 7E
LDA #$30                ; $03:AB07: A9 30
STA $023D               ; $03:AB09: 8D 3D 02
LDA #$B0                ; $03:AB0C: A9 B0
STA $010D               ; $03:AB0E: 8D 0D 01
LDA #$30                ; $03:AB11: A9 30
STA $21                 ; $03:AB13: 85 21
INC $15                 ; $03:AB15: E6 15
LDA #$FF                ; $03:AB17: A9 FF
STA $0FB4               ; $03:AB19: 8D B4 0F
STA $0FB5               ; $03:AB1C: 8D B5 0F
STA $0FB6               ; $03:AB1F: 8D B6 0F
STA $0FB7               ; $03:AB22: 8D B7 0F
RTS                     ; $03:AB25: 60

DATA_03AB26:
db $EA,$E9,$E9,$E9

; Coin map16, depending on $7E005C
; Underwater coin, regular coin, underground coin, castle coin

; Row of coins object

CODE_03AB2A:
LDY $5C                 ; $03:AB2A: A4 5C

; Load coin map16 tile number
LDA DATA_03AB26,y       ; $03:AB2C: B9 26 AB

; Render
JMP CODE_03AB77         ; $03:AB2F: 4C 77 AB

DATA_03AB32:
db $06,$07,$08

; Bowser bridge map16 tiles: Axe, Bridge Chain, Bridge

DATA_03AB35:
db $FD,$10,$8D

CODE_03AB38:
LDY #$0C                ; $03:AB38: A0 0C
JSR CODE_03ACB6         ; $03:AB3A: 20 B6 AC
BRA CODE_03AB44         ; $03:AB3D: 80 05

; Bowser Axe

CODE_03AB3F:
LDA #$08                ; $03:AB3F: A9 08
STA $0773               ; $03:AB41: 8D 73 07

; Rope for Bowser Axe

CODE_03AB44:
LDY $00                 ; $03:AB44: A4 00
LDX DATA_03AB32-2,y     ; $03:AB46: BE 30 AB
LDA DATA_03AB35-2,y     ; $03:AB49: B9 33 AB
BRA CODE_03AB55         ; $03:AB4C: 80 07

; Empty Block object

; Get object attributes from level object pointer

CODE_03AB4E:
JSR CODE_03ACC2         ; $03:AB4E: 20 C2 AC
LDX $07                 ; $03:AB51: A6 07

; Empty block map16 tile
LDA #$FC                ; $03:AB53: A9 FC

CODE_03AB55:
LDY #$00                ; $03:AB55: A0 00

; Place tile in Accumulator into level.
JMP CODE_03AC78         ; $03:AB57: 4C 78 AC

DATA_03AB5A:
db $71,$64,$64,$6A

; Stone map16, depending on $5C
; Coral stone, normal stone, underground stone, castle dark brick

DATA_03AB5E:
db $26,$51,$52,$52,$8C

; Brick map16, depending on $5C.
; Coral, normal bricks, underground bricks, castle bricks, cloud tiles

; Row of bricks

CODE_03AB63:
LDY $5C                 ; $03:AB63: A4 5C
LDA $0743               ; $03:AB65: AD 43 07
BEQ CODE_03AB6C         ; $03:AB68: F0 02
LDY #$04                ; $03:AB6A: A0 04

; If cloud level, set index to $04
; Get brick map16 tile number

CODE_03AB6C:
LDA DATA_03AB5E,y       ; $03:AB6C: B9 5E AB

; Render
JMP CODE_03AB77         ; $03:AB6F: 4C 77 AB

; Row of stones object

CODE_03AB72:
LDY $5C                 ; $03:AB72: A4 5C

; Get stone map16 tile number and render
LDA DATA_03AB5A,y       ; $03:AB74: B9 5A AB

; map16 tile on stack

CODE_03AB77:
PHA                     ; $03:AB77: 48

; check object length
JSR CODE_03ACB3         ; $03:AB78: 20 B3 AC
LDX $07                 ; $03:AB7B: A6 07

; Set vertical height of 1 block high
LDY #$00                ; $03:AB7D: A0 00
PLA                     ; $03:AB7F: 68

; Place tile in Accumulator into level.
JMP CODE_03AC78         ; $03:AB80: 4C 78 AC

; Column of bricks object

CODE_03AB83:
LDY $5C                 ; $03:AB83: A4 5C
LDA DATA_03AB5E,y       ; $03:AB85: B9 5E AB

; Get brick map16 tile depending on area type and render
; Note that in this column code, there's no cloud area override.
BRA CODE_03AB8F         ; $03:AB88: 80 05

; Column of stones object

CODE_03AB8A:
LDY $5C                 ; $03:AB8A: A4 5C

; Get stone map16 tile number and render
LDA DATA_03AB5A,y       ; $03:AB8C: B9 5A AB

CODE_03AB8F:
PHA                     ; $03:AB8F: 48

; Get object attributes from level object pointer
JSR CODE_03ACC2         ; $03:AB90: 20 C2 AC
PLA                     ; $03:AB93: 68
LDX $07                 ; $03:AB94: A6 07

; Place tile in Accumulator into level.
JMP CODE_03AC78         ; $03:AB96: 4C 78 AC

; Get object attributes from level object pointer

CODE_03AB99:
JSR CODE_03ACC2         ; $03:AB99: 20 C2 AC
LDX $07                 ; $03:AB9C: A6 07
LDA #$6C                ; $03:AB9E: A9 6C
STA $06A1,x             ; $03:ABA0: 9D A1 06
INX                     ; $03:ABA3: E8
DEY                     ; $03:ABA4: 88
BMI CODE_03ABB5         ; $03:ABA5: 30 0E
LDA #$6D                ; $03:ABA7: A9 6D
STA $06A1,x             ; $03:ABA9: 9D A1 06
INX                     ; $03:ABAC: E8
DEY                     ; $03:ABAD: 88
BMI CODE_03ABB5         ; $03:ABAE: 30 05
LDA #$6E                ; $03:ABB0: A9 6E

; Place tile in Accumulator into level.
JSR CODE_03AC78         ; $03:ABB2: 20 78 AC

CODE_03ABB5:
LDX $026A               ; $03:ABB5: AE 6A 02

; (A << 4) + $20
JSR CODE_03ACE8         ; $03:ABB8: 20 E8 AC
STA $0277,x             ; $03:ABBB: 9D 77 02
LDA $0725               ; $03:ABBE: AD 25 07
STA $026B,x             ; $03:ABC1: 9D 6B 02

; Turn current screen x-coordinate (16x16) to pixel coordinate
JSR CODE_03ACE0         ; $03:ABC4: 20 E0 AC
STA $0271,x             ; $03:ABC7: 9D 71 02
INX                     ; $03:ABCA: E8
CPX #$06                ; $03:ABCB: E0 06
BCC CODE_03ABD1         ; $03:ABCD: 90 02
LDX #$00                ; $03:ABCF: A2 00

CODE_03ABD1:
STX $026A               ; $03:ABD1: 8E 6A 02
RTS                     ; $03:ABD4: 60

; Springboard object

; Get object attributes from level object pointer

CODE_03ABD5:
JSR CODE_03ACC2         ; $03:ABD5: 20 C2 AC

; Get free sprite slot (begin-end)
JSR CODE_03AA5E         ; $03:ABD8: 20 5E AA
JSR CODE_03ACE0         ; $03:ABDB: 20 E0 AC

; Turn current screen x-coordinate (16x16) to pixel coordinate
; Store into sprite X-pos, low byte
STA $021A,x             ; $03:ABDE: 9D 1A 02
LDA $0725               ; $03:ABE1: AD 25 07

; Store screen number number into sprite X-pos, high byte
STA $79,x               ; $03:ABE4: 95 79

; (A << 4) + $20
JSR CODE_03ACE8         ; $03:ABE6: 20 E8 AC
STA $0238,x             ; $03:ABE9: 9D 38 02
STA $5E,x               ; $03:ABEC: 95 5E
LDA #$32                ; $03:ABEE: A9 32

; Sprite to generate: springboard
STA $1C,x               ; $03:ABF0: 95 1C
LDY #$01                ; $03:ABF2: A0 01
STY $BC,x               ; $03:ABF4: 94 BC
INC $10,x               ; $03:ABF6: F6 10
LDX $07                 ; $03:ABF8: A6 07
LDA #$6F                ; $03:ABFA: A9 6F
STA $06A1,x             ; $03:ABFC: 9D A1 06
LDA #$70                ; $03:ABFF: A9 70
STA $06A2,x             ; $03:AC01: 9D A2 06
RTS                     ; $03:AC04: 60

CODE_03AC05:
LDA $075D               ; $03:AC05: AD 5D 07
BEQ CODE_03AC3E         ; $03:AC08: F0 34
STZ $075D               ; $03:AC0A: 9C 5D 07
BRA CODE_03AC18         ; $03:AC0D: 80 09

CODE_03AC0F:
JSR CODE_03AC38         ; $03:AC0F: 20 38 AC
JMP CODE_03AC2A         ; $03:AC12: 4C 2A AC

CODE_03AC15:
STZ $06BC               ; $03:AC15: 9C BC 06

CODE_03AC18:
JSR CODE_03AC38         ; $03:AC18: 20 38 AC
STY $07                 ; $03:AC1B: 84 07
LDA #$00                ; $03:AC1D: A9 00
LDY $5C                 ; $03:AC1F: A4 5C
DEY                     ; $03:AC21: 88
BEQ CODE_03AC26         ; $03:AC22: F0 02
LDA #$05                ; $03:AC24: A9 05

CODE_03AC26:
CLC                     ; $03:AC26: 18
ADC $07                 ; $03:AC27: 65 07
TAY                     ; $03:AC29: A8

CODE_03AC2A:
LDA DATA_03BF87,y       ; $03:AC2A: B9 87 BF
PHA                     ; $03:AC2D: 48

; Get object attributes from level object pointer
JSR CODE_03ACC2         ; $03:AC2E: 20 C2 AC
LDX $07                 ; $03:AC31: A6 07
PLA                     ; $03:AC33: 68
STA $06A1,x             ; $03:AC34: 9D A1 06
RTS                     ; $03:AC37: 60

CODE_03AC38:
LDA $00                 ; $03:AC38: A5 00
SEC                     ; $03:AC3A: 38
SBC #$00                ; $03:AC3B: E9 00
TAY                     ; $03:AC3D: A8

CODE_03AC3E:
RTS                     ; $03:AC3E: 60

; Hole object

CODE_03AC3F:
JSR CODE_03ACB3         ; $03:AC3F: 20 B3 AC

; Skip if length already defined
BCC CODE_03AC70         ; $03:AC42: 90 2C
LDA $5C                 ; $03:AC44: A5 5C

; Branch if not water level.
BNE CODE_03AC70         ; $03:AC46: D0 28

; Whirlpool spawning code. Get whirlpool index
LDX $026A               ; $03:AC48: AE 6A 02
JSR CODE_03ACE0         ; $03:AC4B: 20 E0 AC
SEC                     ; $03:AC4E: 38
SBC #$10                ; $03:AC4F: E9 10

; Turn current screen x-coordinate (16x16) to pixel coordinate
;
; subtract 10 pixels
; store as left extent of whirlpool
STA $0271,x             ; $03:AC51: 9D 71 02
LDA $0725               ; $03:AC54: AD 25 07
SBC #$00                ; $03:AC57: E9 00

; Get page location
; subtract with carry, store into page of whirlpool
STA $026B,x             ; $03:AC59: 9D 6B 02
INY                     ; $03:AC5C: C8

; Increment length by 2
INY                     ; $03:AC5D: C8
TYA                     ; $03:AC5E: 98
ASL A                   ; $03:AC5F: 0A
ASL A                   ; $03:AC60: 0A
ASL A                   ; $03:AC61: 0A
ASL A                   ; $03:AC62: 0A

; Multiply by 16 to get size of whirlpool
;
; Store into size
STA $0277,x             ; $03:AC63: 9D 77 02

; Increment whirlpool index
INX                     ; $03:AC66: E8
CPX #$05                ; $03:AC67: E0 05

; If we didn't reach 5th whirlpool yet, branch
BCC CODE_03AC6D         ; $03:AC69: 90 02

; Otherwise, back at index 0
LDX #$00                ; $03:AC6B: A2 00

; Store whirlpool index

CODE_03AC6D:
STX $026A               ; $03:AC6D: 8E 6A 02

; Get map type in x, but it's lost again later?

CODE_03AC70:
LDX $5C                 ; $03:AC70: A6 5C

; Map16 tile: hole
LDA #$00                ; $03:AC72: A9 00

; Row number: 9 (bottom)
LDX #$08                ; $03:AC74: A2 08

; Vertical height of object
LDY #$0F                ; $03:AC76: A0 0F

; Place map16 tile into level
; Input:
; A: Map16 tile
; X: Row number (TODO: verify?)
; Y: Height of the object

; Store vertical height of object

CODE_03AC78:
STY $0735               ; $03:AC78: 8C 35 07
LDY $06A1,x             ; $03:AC7B: BC A1 06

; Get map16 tile of current spot in question of being rendered
; If empty, proceed
BEQ CODE_03ACA4         ; $03:AC7E: F0 24
CPY #$1B                ; $03:AC80: C0 1B

; If middle of green platform, wait until next row
BEQ CODE_03ACA7         ; $03:AC82: F0 23
CPY #$1E                ; $03:AC84: C0 1E

; If middle of mushroom platform, wait until next row
BEQ CODE_03ACA7         ; $03:AC86: F0 1F
CPY #$E7                ; $03:AC88: C0 E7

; If coin block
; overwrite
BEQ CODE_03ACA4         ; $03:AC8A: F0 18
CPY #$46                ; $03:AC8C: C0 46

; If middle part of green platform's brown base w/ shadow, wait until next row
BEQ CODE_03ACA7         ; $03:AC8E: F0 17
CPY #$4A                ; $03:AC90: C0 4A

; If middle part of green platform's brown base, wait until next row
BEQ CODE_03ACA7         ; $03:AC92: F0 13
CPY #$E7                ; $03:AC94: C0 E7

; If map16 tile $E8-$FF, wait until next row
; ($E7 is not included because it's already checked for earlier)
BCS CODE_03ACA7         ; $03:AC96: B0 0F
CPY #$57                ; $03:AC98: C0 57
BEQ CODE_03ACA0         ; $03:AC9A: F0 04
CPY #$56                ; $03:AC9C: C0 56

; If ground tile base, skip ground tile top check
; If ground tile top, overwrite
BNE CODE_03ACA4         ; $03:AC9E: D0 04

CODE_03ACA0:
CMP #$50                ; $03:ACA0: C9 50

; If mushroom platform stem, wait until next row
BEQ CODE_03ACA7         ; $03:ACA2: F0 03

; Otherwise, write the map16 tile

CODE_03ACA4:
STA $06A1,x             ; $03:ACA4: 9D A1 06

; Next row

CODE_03ACA7:
INX                     ; $03:ACA7: E8
CPX #$0D                ; $03:ACA8: E0 0D

; Stop rendering if at bottom of screen
BCS CODE_03ACB2         ; $03:ACAA: B0 06
LDY $0735               ; $03:ACAC: AC 35 07
DEY                     ; $03:ACAF: 88

; Decrement object height and stop if we're done rendering all height.
BPL CODE_03AC78         ; $03:ACB0: 10 C6

CODE_03ACB2:
RTS                     ; $03:ACB2: 60

; TrySetBufferObjectLength()
;
; Calls GetObjectColumnProperties() and then calls TrySetBufferObjectLength(Y)
; where `Y` is object's width according to area object data.

CODE_03ACB3:
JSR CODE_03ACC2         ; $03:ACB3: 20 C2 AC

; TrySetBufferObjectLength(Y: width)
;
; Carry bit:
;   Set if current buffer ($1300,x) is already set. Clear otherwise.
;
; If current buffer is not set, it's set to the value in the Y register.
;
; `A` returns current buffer object's width ($1300,x).

CODE_03ACB6:
LDA $1300,x             ; $03:ACB6: BD 00 13
CLC                     ; $03:ACB9: 18
BPL CODE_03ACC1         ; $03:ACBA: 10 05
TYA                     ; $03:ACBC: 98
STA $1300,x             ; $03:ACBD: 9D 00 13
SEC                     ; $03:ACC0: 38

CODE_03ACC1:
RTS                     ; $03:ACC1: 60

; GetObjectColumnProperties()
;
; Sets $07 to Y-coordinate of current buffer object.
;
; `Y` register is set to object parameter which usually specifies object height
; or width.

CODE_03ACC2:
PHX                     ; $03:ACC2: DA
REP #$30                ; $03:ACC3: C2 30
TXA                     ; $03:ACC5: 8A
AND #$00FF              ; $03:ACC6: 29 FF 00
ASL A                   ; $03:ACC9: 0A
TAX                     ; $03:ACCA: AA
LDY $1305,x             ; $03:ACCB: BC 05 13
SEP #$20                ; $03:ACCE: E2 20
LDA [$FA],y             ; $03:ACD0: B7 FA
AND #$0F                ; $03:ACD2: 29 0F

; Get first byte of level object
; get Y coordinates
; Save as row location
STA $07                 ; $03:ACD4: 85 07
INY                     ; $03:ACD6: C8
LDA [$FA],y             ; $03:ACD7: B7 FA
AND #$0F                ; $03:ACD9: 29 0F
SEP #$10                ; $03:ACDB: E2 10
TAY                     ; $03:ACDD: A8

; Get next byte of level object
;
; (object number?)
PLX                     ; $03:ACDE: FA
RTS                     ; $03:ACDF: 60
