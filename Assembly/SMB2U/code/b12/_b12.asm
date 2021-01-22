; Super Mario Bros. 2

CODE_128000:
STZ $F6                 ; $12:8000: 64 F6
STZ $FA                 ; $12:8002: 64 FA
STZ $F8                 ; $12:8004: 64 F8
STZ $FC                 ; $12:8006: 64 FC

CODE_128008:
LDA $50                 ; $12:8008: A5 50
CMP #$02                ; $12:800A: C9 02

; If player not in normal state...
; ...nor climbing (not forced)...
; ..don't branch.
BCS CODE_128033         ; $12:800C: B0 25
LDA #$00                ; $12:800E: A9 00
LDY #$10                ; $12:8010: A0 10
CPY $04C3               ; $12:8012: CC C3 04
ROL A                   ; $12:8015: 2A
EOR $06C2               ; $12:8016: 4D C2 06
BEQ CODE_128033         ; $12:8019: F0 18
LDA $0628               ; $12:801B: AD 28 06
CMP #$02                ; $12:801E: C9 02
BEQ CODE_12802B         ; $12:8020: F0 09
LDY $06C2               ; $12:8022: AC C2 06
LDA.w DATA_119B3F,y     ; $12:8025: B9 3F 9B

; Player changing size.
; Y = 0 = shrinking, Y = 1 = growing.
; Store sound effect appropiate to the change.
STA $1DE0               ; $12:8028: 8D E0 1D

CODE_12802B:
LDA #$1E                ; $12:802B: A9 1E

; Amount of time to flash = #$1E.
STA $82                 ; $12:802D: 85 82
LDA #$08                ; $12:802F: A9 08

; Getting into changing size animation.
STA $50                 ; $12:8031: 85 50

; Execute player state.

CODE_128033:
JSR CODE_128037         ; $12:8033: 20 37 80
RTL                     ; $12:8036: 6B

CODE_128037:
STZ $64                 ; $12:8037: 64 64
LDA $50                 ; $12:8039: A5 50

; Execute pointer depending on player status.
JSL CODE_118776         ; $12:803B: 22 76 87 11

; 00 - Walk normal.
dw CODE_128071

; 01 - Climbing, normal.
dw CODE_12813B

; 02 - Picking something up.
dw CODE_128109

; 03 - Climbing, entering new room.
dw CODE_1281F1

; 04 - Moving inside a jar.
dw CODE_1281A7

; 05 - Moving out of a jar.
dw CODE_1281D5

; 06 - Player walking into Hawkmouth.
dw CODE_12822C

; 07 - Dying.
dw CODE_1280DE

; 08 - Hurt / growing.
dw CODE_12824D

DATA_128051:
db $00,$00,$00,$00,$40,$40,$40,$00
db $C0,$C0,$C0,$00,$00,$00,$00,$00

DATA_128061:
db $00,$40,$C0,$00,$00,$40,$C0,$00
db $00,$40,$C0,$00,$00,$00,$00,$00

CODE_128071:
JSL CODE_14DE60         ; $12:8071: 22 60 DE 14
LDA $700007             ; $12:8075: AF 07 00 70
BEQ CODE_1280C3         ; $12:8079: F0 48
LDA $FC                 ; $12:807B: A5 FC
AND #$80                ; $12:807D: 29 80
BEQ CODE_12808B         ; $12:807F: F0 0A
LDA $0214               ; $12:8081: AD 14 02
AND #$01                ; $12:8084: 29 01
EOR #$01                ; $12:8086: 49 01
STA $0214               ; $12:8088: 8D 14 02

CODE_12808B:
LDA $FC                 ; $12:808B: A5 FC
AND #$40                ; $12:808D: 29 40
BEQ CODE_1280A5         ; $12:808F: F0 14
LDA #$30                ; $12:8091: A9 30

; Flashing timer = #$30.
STA $04E1               ; $12:8093: 8D E1 04
LDA #$02                ; $12:8096: A9 02
STA $04C4               ; $12:8098: 8D C4 04
LDA #$3F                ; $12:809B: A9 3F

; Invincibility timer = #$3F.
STA $04C3               ; $12:809D: 8D C3 04
LDA #$0D                ; $12:80A0: A9 0D

; Star music.
STA $1DE2               ; $12:80A2: 8D E2 1D

CODE_1280A5:
LDA $0214               ; $12:80A5: AD 14 02
BEQ CODE_1280C3         ; $12:80A8: F0 19
LDA $F6                 ; $12:80AA: A5 F6
AND #$0F                ; $12:80AC: 29 0F
TAX                     ; $12:80AE: AA
PHX                     ; $12:80AF: DA
LDA.l DATA_128051,x     ; $12:80B0: BF 51 80 12
STA $46                 ; $12:80B4: 85 46
JSR CODE_128523         ; $12:80B6: 20 23 85
PLX                     ; $12:80B9: FA
LDA.l DATA_128061,x     ; $12:80BA: BF 61 80 12
STA $3C                 ; $12:80BE: 85 3C
BRL CODE_1280D2         ; $12:80C0: 82 0F 00

CODE_1280C3:
JSR CODE_12834B         ; $12:80C3: 20 4B 83
JSR CODE_128272         ; $12:80C6: 20 72 82
JSR CODE_128565         ; $12:80C9: 20 65 85
JSR CODE_128BBB         ; $12:80CC: 20 BB 8B
JSR CODE_128523         ; $12:80CF: 20 23 85

CODE_1280D2:
LDX #$00                ; $12:80D2: A2 00
JSR CODE_128525         ; $12:80D4: 20 25 85
LDA $EB                 ; $12:80D7: A5 EB
BNE CODE_1280DD         ; $12:80D9: D0 02
STA $14                 ; $12:80DB: 85 14

CODE_1280DD:
RTS                     ; $12:80DD: 60

CODE_1280DE:
LDA $82                 ; $12:80DE: A5 82
BNE CODE_128108         ; $12:80E0: D0 26
LDA $042A               ; $12:80E2: AD 2A 04
CMP #$02                ; $12:80E5: C9 02
BEQ CODE_1280F9         ; $12:80E7: F0 10
JSR CODE_128523         ; $12:80E9: 20 23 85
LDA $46                 ; $12:80EC: A5 46
BMI CODE_1280F4         ; $12:80EE: 30 04
CMP #$39                ; $12:80F0: C9 39
BCS CODE_128108         ; $12:80F2: B0 14

CODE_1280F4:
INC $46                 ; $12:80F4: E6 46
INC $46                 ; $12:80F6: E6 46
RTS                     ; $12:80F8: 60

CODE_1280F9:
LDA #$02                ; $12:80F9: A9 02
STA $C7                 ; $12:80FB: 85 C7
LDY #$01                ; $12:80FD: A0 01
DEC $04EE               ; $12:80FF: CE EE 04
BNE CODE_128105         ; $12:8102: D0 01
INY                     ; $12:8104: C8

; Return to player select screen.
; If lives are 0...
; ...
; ... then return to game over screen.
; <--

CODE_128105:
STY $04ED               ; $12:8105: 8C ED 04

; Return.

CODE_128108:
RTS                     ; $12:8108: 60

CODE_128109:
LDA $82                 ; $12:8109: A5 82
BNE CODE_12813A         ; $12:810B: D0 2D
LDX $042D               ; $12:810D: AE 2D 04
LDY $A8,x               ; $12:8110: B4 A8
CPY #$02                ; $12:8112: C0 02
BCC CODE_128134         ; $12:8114: 90 1E
DEC $A8,x               ; $12:8116: D6 A8
LDA.w DATA_119B45,y     ; $12:8118: B9 45 9B
STA $C7                 ; $12:811B: 85 C7
LDA $51,x               ; $12:811D: B5 51
CMP #$06                ; $12:811F: C9 06
BEQ CODE_128129         ; $12:8121: F0 06
LDA $90,x               ; $12:8123: B5 90
CMP #$32                ; $12:8125: C9 32
BNE CODE_12812E         ; $12:8127: D0 05

CODE_128129:
LDA.w DATA_119B3F,y     ; $12:8129: B9 3F 9B
BPL CODE_128131         ; $12:812C: 10 03

CODE_12812E:
LDA $0546,y             ; $12:812E: B9 46 05

CODE_128131:
STA $82                 ; $12:8131: 85 82
RTS                     ; $12:8133: 60

CODE_128134:
STA $50                 ; $12:8134: 85 50
INC $99                 ; $12:8136: E6 99
INC $9A                 ; $12:8138: E6 9A

CODE_12813A:
RTS                     ; $12:813A: 60

CODE_12813B:
LDA $F6                 ; $12:813B: A5 F6
AND #$0C                ; $12:813D: 29 0C
LSR A                   ; $12:813F: 4A
LSR A                   ; $12:8140: 4A
TAY                     ; $12:8141: A8
CPY #$02                ; $12:8142: C0 02
BNE CODE_128149         ; $12:8144: D0 03
JSR CODE_128183         ; $12:8146: 20 83 81

CODE_128149:
LDA.w DATA_11CBF1,y     ; $12:8149: B9 F1 CB

; Check only if Up and Down are pressed.
; LSR twice for a result from 00-03
;
;
; That into Y for index being used later.
; If going upwards, go to an extra subroutine.
; (Don't branch.)
; Flip direction every 8 frames.
; Get appropiate Y speed in for climbing.
STA $46                 ; $12:814C: 85 46
LDA $F6                 ; $12:814E: A5 F6
AND #$03                ; $12:8150: 29 03
TAY                     ; $12:8152: A8
LDA.w DATA_119B4D,y     ; $12:8153: B9 4D 9B

; Now do the same horizontally...
; (left-right)
; Into Y index to get the value for the X speeds.
; <- here
STA $3C                 ; $12:8156: 85 3C
LDA $28                 ; $12:8158: A5 28
CLC                     ; $12:815A: 18
ADC #$04                ; $12:815B: 69 04
AND #$0F                ; $12:815D: 29 0F
CMP #$08                ; $12:815F: C9 08
BCS CODE_12817E         ; $12:8161: B0 1B
LDY.w DATA_11CB08       ; $12:8163: AC 08 CB
LDA $46                 ; $12:8166: A5 46
BMI CODE_12816B         ; $12:8168: 30 01
INY                     ; $12:816A: C8

CODE_12816B:
LDX #$00                ; $12:816B: A2 00
JSR CODE_128195         ; $12:816D: 20 95 81
BCS CODE_128178         ; $12:8170: B0 06
LDA $46                 ; $12:8172: A5 46
BPL CODE_12817E         ; $12:8174: 10 08
STX $46                 ; $12:8176: 86 46

CODE_128178:
JSR CODE_1280D2         ; $12:8178: 20 D2 80
JMP CODE_128523         ; $12:817B: 4C 23 85

CODE_12817E:
LDA #$00                ; $12:817E: A9 00
STA $50                 ; $12:8180: 85 50
RTS                     ; $12:8182: 60

CODE_128183:
LDA $10                 ; $12:8183: A5 10
AND #$07                ; $12:8185: 29 07

; Run code every 8 frames.
BNE CODE_128194         ; $12:8187: D0 0B
LDA $9D                 ; $12:8189: A5 9D
EOR #$01                ; $12:818B: 49 01

; Flip direction.
STA $9D                 ; $12:818D: 85 9D
LDA #$30                ; $12:818F: A9 30

; Climbing sound effect.
STA $1DE0               ; $12:8191: 8D E0 1D

; Return.

CODE_128194:
RTS                     ; $12:8194: 60

; Prepare Map16 tile being touched by player.

CODE_128195:
JSL CODE_13F900         ; $12:8195: 22 00 F9 13
LDA $00                 ; $12:8199: A5 00
LDY #$0B                ; $12:819B: A0 0B

CODE_12819D:
CMP.w DATA_119B50,y     ; $12:819D: D9 50 9B
BEQ CODE_1281A6         ; $12:81A0: F0 04
DEY                     ; $12:81A2: 88
BPL CODE_12819D         ; $12:81A3: 10 F8
CLC                     ; $12:81A5: 18

; Check if the tile that is being touched is a 'climbing tile'...
; vines, ladders...
;
; If so, return.
; Otherwise, loop.
; When through index, and no match has been found...
; Clear carry.
; Return.

CODE_1281A6:
RTS                     ; $12:81A6: 60

CODE_1281A7:
LDA #$20                ; $12:81A7: A9 20
STA $64                 ; $12:81A9: 85 64

; Move down.
INC $32                 ; $12:81AB: E6 32
LDA $32                 ; $12:81AD: A5 32
AND #$0F                ; $12:81AF: 29 0F

; Skip code if not completely inside the jar.
BNE CODE_1281A6         ; $12:81B1: D0 F3
PLA                     ; $12:81B3: 68

; Pull return address.
PLA                     ; $12:81B4: 68
JSL CODE_13FA42         ; $12:81B5: 22 42 FA 13
LDA #$02                ; $12:81B9: A9 02

; Generate player on top of screen.
STA $0536               ; $12:81BB: 8D 36 05
LDA $04EF               ; $12:81BE: AD EF 04
BNE CODE_1281C9         ; $12:81C1: D0 06
LDA #$04                ; $12:81C3: A9 04

; Act like a warp jar.
STA $04ED               ; $12:81C5: 8D ED 04

; Return.
RTL                     ; $12:81C8: 6B

CODE_1281C9:
CMP #$01                ; $12:81C9: C9 01
BEQ CODE_1281D1         ; $12:81CB: F0 04
STA $0627               ; $12:81CD: 8D 27 06
RTL                     ; $12:81D0: 6B

CODE_1281D1:
STA $0628               ; $12:81D1: 8D 28 06
RTL                     ; $12:81D4: 6B

CODE_1281D5:
LDA #$20                ; $12:81D5: A9 20
STA $64                 ; $12:81D7: 85 64

; Move up.
DEC $32                 ; $12:81D9: C6 32
LDA $32                 ; $12:81DB: A5 32
AND #$0F                ; $12:81DD: 29 0F
CMP #$0F                ; $12:81DF: C9 0F

; Generate sound effect on the first frame the player is inside the jar.
BNE CODE_1281E8         ; $12:81E1: D0 05
LDA #$4E                ; $12:81E3: A9 4E

; Going out of jar sound effect.
STA $1DE3               ; $12:81E5: 8D E3 1D

CODE_1281E8:
LDA $32                 ; $12:81E8: A5 32
AND #$0F                ; $12:81EA: 29 0F
BNE CODE_1281F0         ; $12:81EC: D0 02

; If still in jar...
;
; Return.
; Otherwise, go into normal walking mode.
STA $50                 ; $12:81EE: 85 50

; Return.

CODE_1281F0:
RTS                     ; $12:81F0: 60

CODE_1281F1:
LDA $46                 ; $12:81F1: A5 46
ASL A                   ; $12:81F3: 0A
ROL A                   ; $12:81F4: 2A
AND #$01                ; $12:81F5: 29 01

; Y speed.
; Result: 80-FF = 01.
; Result: 00-7F = 00.
;
; Into Y.
TAY                     ; $12:81F7: A8
LDA $042A               ; $12:81F8: AD 2A 04
CMP.w DATA_119B5C,y     ; $12:81FB: D9 5C 9B
BNE CODE_128211         ; $12:81FE: D0 11
LDA $042B               ; $12:8200: AD 2B 04
CMP.w DATA_119B5E,y     ; $12:8203: D9 5E 9B
BNE CODE_128211         ; $12:8206: D0 09
INC $0627               ; $12:8208: EE 27 06
LDA #$03                ; $12:820B: A9 03
STA $0536               ; $12:820D: 8D 36 05
RTS                     ; $12:8210: 60

CODE_128211:
LDA $042A               ; $12:8211: AD 2A 04
BNE CODE_12821E         ; $12:8214: D0 08
LDA $042B               ; $12:8216: AD 2B 04
CMP.w DATA_119B60,y     ; $12:8219: D9 60 9B
BEQ CODE_128227         ; $12:821C: F0 09

CODE_12821E:
TYA                     ; $12:821E: 98
BEQ CODE_128224         ; $12:821F: F0 03
JSR CODE_128183         ; $12:8221: 20 83 81

CODE_128224:
JMP CODE_128523         ; $12:8224: 4C 23 85

CODE_128227:
LDA #$01                ; $12:8227: A9 01
STA $50                 ; $12:8229: 85 50
RTS                     ; $12:822B: 60

CODE_12822C:
LDA $82                 ; $12:822C: A5 82

; Return into normal walking mode if $82 == #$00.
BEQ CODE_12824A         ; $12:822E: F0 1A
JSR CODE_128523         ; $12:8230: 20 23 85
LDA $005A               ; $12:8233: AD 5A 00
BEQ CODE_12824C         ; $12:8236: F0 14
LDA #$20                ; $12:8238: A9 20
STA $64                 ; $12:823A: 85 64
LDA #$04                ; $12:823C: A9 04

; Enter Hawkmouth, X-speed.
STA $3C                 ; $12:823E: 85 3C
LDA #$01                ; $12:8240: A9 01

; Face right.
STA $9D                 ; $12:8242: 85 9D
JSR CODE_1280D2         ; $12:8244: 20 D2 80
JMP CODE_1283D1         ; $12:8247: 4C D1 83

; <-- $50 - #$00 = normal player state.

CODE_12824A:
STA $50                 ; $12:824A: 85 50

; Return.

CODE_12824C:
RTS                     ; $12:824C: 60

CODE_12824D:
LDA $82                 ; $12:824D: A5 82
BEQ CODE_128267         ; $12:824F: F0 16
INC $85                 ; $12:8251: E6 85
LDY #$04                ; $12:8253: A0 04

CODE_128255:
CMP.w DATA_119B62,y     ; $12:8255: D9 62 9B
BNE CODE_128263         ; $12:8258: D0 09
LDA $06C2               ; $12:825A: AD C2 06
EOR #$01                ; $12:825D: 49 01
STA $06C2               ; $12:825F: 8D C2 06
RTS                     ; $12:8262: 60

CODE_128263:
DEY                     ; $12:8263: 88
BPL CODE_128255         ; $12:8264: 10 EF
RTS                     ; $12:8266: 60

CODE_128267:
LDY $C7                 ; $12:8267: A4 C7
CPY #$0A                ; $12:8269: C0 0A
BNE CODE_12826F         ; $12:826B: D0 02
LDA #$01                ; $12:826D: A9 01

CODE_12826F:
STA $50                 ; $12:826F: 85 50
RTS                     ; $12:8271: 60

CODE_128272:
JSR CODE_1283D1         ; $12:8272: 20 D1 83
LDA $99                 ; $12:8275: A5 99
BNE CODE_1282D5         ; $12:8277: D0 5C
LDA $9A                 ; $12:8279: A5 9A
BEQ CODE_128286         ; $12:827B: F0 09
LDA $82                 ; $12:827D: A5 82
BEQ CODE_128284         ; $12:827F: F0 03
JMP CODE_128304         ; $12:8281: 4C 04 83

CODE_128284:
DEC $9A                 ; $12:8284: C6 9A

CODE_128286:
LDA $FA                 ; $12:8286: A5 FA
BPL CODE_12829B         ; $12:8288: 10 11
INC $99                 ; $12:828A: E6 99
LDA #$06                ; $12:828C: A9 06
STA $C7                 ; $12:828E: 85 C7
JSR CODE_12830B         ; $12:8290: 20 0B 83
LDA #$01                ; $12:8293: A9 01
STA $1DE1               ; $12:8295: 8D E1 1D
STZ $078C               ; $12:8298: 9C 8C 07

CODE_12829B:
LDA $04B2               ; $12:829B: AD B2 04
BNE CODE_128304         ; $12:829E: D0 64
LDA $04E0               ; $12:82A0: AD E0 04
BNE CODE_1282D5         ; $12:82A3: D0 30
LDA $F6                 ; $12:82A5: A5 F6
AND #$04                ; $12:82A7: 29 04
BEQ CODE_1282D5         ; $12:82A9: F0 2A
LDA $0778               ; $12:82AB: AD 78 07
BNE CODE_1282D5         ; $12:82AE: D0 25
INC $9A                 ; $12:82B0: E6 9A
STZ $078C               ; $12:82B2: 9C 8C 07
LDA #$04                ; $12:82B5: A9 04
STA $C7                 ; $12:82B7: 85 C7
LDA $99                 ; $12:82B9: A5 99
BNE CODE_1282D5         ; $12:82BB: D0 18
LDA $04CB               ; $12:82BD: AD CB 04
CMP #$3C                ; $12:82C0: C9 3C
BCS CODE_128304         ; $12:82C2: B0 40
INC $04CB               ; $12:82C4: EE CB 04
LDA $04CB               ; $12:82C7: AD CB 04
CMP #$3C                ; $12:82CA: C9 3C
BNE CODE_128304         ; $12:82CC: D0 36
LDA #$2D                ; $12:82CE: A9 2D
STA $1DE3               ; $12:82D0: 8D E3 1D
BNE CODE_128304         ; $12:82D3: D0 2F

CODE_1282D5:
LDA $04CB               ; $12:82D5: AD CB 04
CMP #$3C                ; $12:82D8: C9 3C
BCS CODE_1282E1         ; $12:82DA: B0 05
LDA #$00                ; $12:82DC: A9 00
STA $04CB               ; $12:82DE: 8D CB 04

CODE_1282E1:
LDA $F6                 ; $12:82E1: A5 F6
AND #$03                ; $12:82E3: 29 03
BEQ CODE_128304         ; $12:82E5: F0 1D
AND #$01                ; $12:82E7: 29 01
STA $9D                 ; $12:82E9: 85 9D
TAY                     ; $12:82EB: A8
LDA $0624               ; $12:82EC: AD 24 06
LSR A                   ; $12:82EF: 4A
LSR A                   ; $12:82F0: 4A
AND $10                 ; $12:82F1: 25 10
BNE CODE_1282FD         ; $12:82F3: D0 08
LDA $3C                 ; $12:82F5: A5 3C
CLC                     ; $12:82F7: 18
ADC.w DATA_119B67,y     ; $12:82F8: 79 67 9B
STA $3C                 ; $12:82FB: 85 3C

CODE_1282FD:
LDA #$00                ; $12:82FD: A9 00
STA $04CB               ; $12:82FF: 8D CB 04
BEQ CODE_128307         ; $12:8302: F0 03

CODE_128304:
JSR CODE_128398         ; $12:8304: 20 98 83

CODE_128307:
JSR CODE_128423         ; $12:8307: 20 23 84
RTS                     ; $12:830A: 60

CODE_12830B:
LDA $04E0               ; $12:830B: AD E0 04
CMP #$02                ; $12:830E: C9 02
BCC CODE_128319         ; $12:8310: 90 07
LDA $0554               ; $12:8312: AD 54 05
STA $46                 ; $12:8315: 85 46
BNE CODE_128345         ; $12:8317: D0 2C

CODE_128319:
LDA $3C                 ; $12:8319: A5 3C
BPL CODE_128322         ; $12:831B: 10 05
EOR #$FF                ; $12:831D: 49 FF
CLC                     ; $12:831F: 18
ADC #$01                ; $12:8320: 69 01

CODE_128322:
CMP #$08                ; $12:8322: C9 08
LDA #$00                ; $12:8324: A9 00
STA $0411               ; $12:8326: 8D 11 04
ROL A                   ; $12:8329: 2A
LDY $04CB               ; $12:832A: AC CB 04
CPY #$3C                ; $12:832D: C0 3C
BCC CODE_128335         ; $12:832F: 90 04
LDA #$00                ; $12:8331: A9 00
STA $F6                 ; $12:8333: 85 F6

CODE_128335:
ROL A                   ; $12:8335: 2A
ASL A                   ; $12:8336: 0A
ORA $9C                 ; $12:8337: 05 9C
TAY                     ; $12:8339: A8
LDA $054E,y             ; $12:833A: B9 4E 05
STA $46                 ; $12:833D: 85 46
LDA $0555               ; $12:833F: AD 55 05
STA $04CA               ; $12:8342: 8D CA 04

CODE_128345:
LDA #$00                ; $12:8345: A9 00
STA $04CB               ; $12:8347: 8D CB 04
RTS                     ; $12:834A: 60

CODE_12834B:
LDA $04E0               ; $12:834B: AD E0 04
CMP #$02                ; $12:834E: C9 02
BCC CODE_128357         ; $12:8350: 90 05
LDA $0558               ; $12:8352: AD 58 05
BNE CODE_128385         ; $12:8355: D0 2E

CODE_128357:
LDA $0556               ; $12:8357: AD 56 05
LDY $F6                 ; $12:835A: A4 F6
BPL CODE_12837D         ; $12:835C: 10 1F
LDA $0557               ; $12:835E: AD 57 05
LDY $46                 ; $12:8361: A4 46
CPY #$FC                ; $12:8363: C0 FC
BMI CODE_12837D         ; $12:8365: 30 16
LDY $04CA               ; $12:8367: AC CA 04
BEQ CODE_12837D         ; $12:836A: F0 11
DEC $04CA               ; $12:836C: CE CA 04
LDA $10                 ; $12:836F: A5 10
LSR A                   ; $12:8371: 4A
LSR A                   ; $12:8372: 4A
LSR A                   ; $12:8373: 4A
AND #$03                ; $12:8374: 29 03
TAY                     ; $12:8376: A8
LDA.w DATA_119B69,y     ; $12:8377: B9 69 9B
STA $46                 ; $12:837A: 85 46
RTS                     ; $12:837C: 60

CODE_12837D:
LDY $46                 ; $12:837D: A4 46
BMI CODE_128385         ; $12:837F: 30 04
CPY #$39                ; $12:8381: C0 39
BCS CODE_12838A         ; $12:8383: B0 05

CODE_128385:
CLC                     ; $12:8385: 18
ADC $46                 ; $12:8386: 65 46
STA $46                 ; $12:8388: 85 46

CODE_12838A:
LDA $04CA               ; $12:838A: AD CA 04
CMP $0555               ; $12:838D: CD 55 05
BEQ CODE_128397         ; $12:8390: F0 05
LDA #$00                ; $12:8392: A9 00
STA $04CA               ; $12:8394: 8D CA 04

CODE_128397:
RTS                     ; $12:8397: 60

CODE_128398:
LDA $99                 ; $12:8398: A5 99
BNE CODE_1283D0         ; $12:839A: D0 34
LDA $10                 ; $12:839C: A5 10
AND $0624               ; $12:839E: 2D 24 06
BNE CODE_1283B9         ; $12:83A1: D0 16
LDA $3C                 ; $12:83A3: A5 3C
AND #$80                ; $12:83A5: 29 80
ASL A                   ; $12:83A7: 0A
ROL A                   ; $12:83A8: 2A
TAY                     ; $12:83A9: A8
LDA $3C                 ; $12:83AA: A5 3C
ADC.w DATA_119B6D,y     ; $12:83AC: 79 6D 9B
TAX                     ; $12:83AF: AA
EOR.w DATA_119B67,y     ; $12:83B0: 59 67 9B
BMI CODE_1283B7         ; $12:83B3: 30 02
LDX #$00                ; $12:83B5: A2 00

CODE_1283B7:
STX $3C                 ; $12:83B7: 86 3C

CODE_1283B9:
LDA $9A                 ; $12:83B9: A5 9A
BNE CODE_1283D0         ; $12:83BB: D0 13
LDA $C7                 ; $12:83BD: A5 C7
CMP #$09                ; $12:83BF: C9 09
BEQ CODE_1283D0         ; $12:83C1: F0 0D
LDA #$02                ; $12:83C3: A9 02
STA $C7                 ; $12:83C5: 85 C7
LDA #$00                ; $12:83C7: A9 00
STA $84                 ; $12:83C9: 85 84
STA $9B                 ; $12:83CB: 85 9B
STA $078B               ; $12:83CD: 8D 8B 07

CODE_1283D0:
RTS                     ; $12:83D0: 60

CODE_1283D1:
LDA $9A                 ; $12:83D1: A5 9A
BNE CODE_128422         ; $12:83D3: D0 4D
LDA $99                 ; $12:83D5: A5 99
BEQ CODE_1283E7         ; $12:83D7: F0 0E
LDA $8F                 ; $12:83D9: A5 8F
CMP #$03                ; $12:83DB: C9 03
BNE CODE_128422         ; $12:83DD: D0 43
LDA $84                 ; $12:83DF: A5 84
BNE CODE_12841B         ; $12:83E1: D0 38
LDA #$02                ; $12:83E3: A9 02
BNE CODE_128402         ; $12:83E5: D0 1B

CODE_1283E7:
LDA $84                 ; $12:83E7: A5 84
BNE CODE_12841B         ; $12:83E9: D0 30
LDA #$05                ; $12:83EB: A9 05
LDY $0624               ; $12:83ED: AC 24 06
BNE CODE_128402         ; $12:83F0: D0 10
LDA $3C                 ; $12:83F2: A5 3C
BPL CODE_1283FB         ; $12:83F4: 10 05
EOR #$FF                ; $12:83F6: 49 FF
CLC                     ; $12:83F8: 18
ADC #$01                ; $12:83F9: 69 01

CODE_1283FB:
LSR A                   ; $12:83FB: 4A
LSR A                   ; $12:83FC: 4A
LSR A                   ; $12:83FD: 4A
TAY                     ; $12:83FE: A8
LDA.w DATA_119B6F,y     ; $12:83FF: B9 6F 9B

CODE_128402:
STA $84                 ; $12:8402: 85 84
LDA #$02                ; $12:8404: A9 02
STA $078C               ; $12:8406: 8D 8C 07
DEC $078B               ; $12:8409: CE 8B 07
BPL CODE_128413         ; $12:840C: 10 05
LDA #$02                ; $12:840E: A9 02
STA $078B               ; $12:8410: 8D 8B 07

CODE_128413:
DEC $9B                 ; $12:8413: C6 9B
BPL CODE_12841B         ; $12:8415: 10 04
LDA #$01                ; $12:8417: A9 01
STA $9B                 ; $12:8419: 85 9B

CODE_12841B:
LDY $9B                 ; $12:841B: A4 9B
LDA.w DATA_119B79,y     ; $12:841D: B9 79 9B
STA $C7                 ; $12:8420: 85 C7

CODE_128422:
RTS                     ; $12:8422: 60

CODE_128423:
LDY #$02                ; $12:8423: A0 02
LDA $04E0               ; $12:8425: AD E0 04
CMP #$02                ; $12:8428: C9 02
BCS CODE_128443         ; $12:842A: B0 17
DEY                     ; $12:842C: 88
LDA $9C                 ; $12:842D: A5 9C
BEQ CODE_128442         ; $12:842F: F0 11
LDX $042D               ; $12:8431: AE 2D 04
LDA $90,x               ; $12:8434: B5 90
CMP #$32                ; $12:8436: C9 32
BCC CODE_128443         ; $12:8438: 90 09
CMP #$39                ; $12:843A: C9 39
BCC CODE_128442         ; $12:843C: 90 04
CMP #$3B                ; $12:843E: C9 3B
BCC CODE_128443         ; $12:8440: 90 01

CODE_128442:
DEY                     ; $12:8442: 88

CODE_128443:
LDA $0559,y             ; $12:8443: B9 59 05
BIT $F6                 ; $12:8446: 24 F6
BVC CODE_12844F         ; $12:8448: 50 05
LSR A                   ; $12:844A: 4A
CLC                     ; $12:844B: 18
ADC $0559,y             ; $12:844C: 79 59 05

CODE_12844F:
CMP $3C                 ; $12:844F: C5 3C
BPL CODE_128455         ; $12:8451: 10 02
STA $3C                 ; $12:8453: 85 3C

CODE_128455:
LDA $055C,y             ; $12:8455: B9 5C 05
BIT $F6                 ; $12:8458: 24 F6
BVC CODE_128462         ; $12:845A: 50 06
SEC                     ; $12:845C: 38
ROR A                   ; $12:845D: 6A
CLC                     ; $12:845E: 18
ADC $055C,y             ; $12:845F: 79 5C 05

CODE_128462:
CMP $3C                 ; $12:8462: C5 3C
BMI CODE_128468         ; $12:8464: 30 02
STA $3C                 ; $12:8466: 85 3C

CODE_128468:
BIT $FA                 ; $12:8468: 24 FA
BVC CODE_1284BD         ; $12:846A: 50 51
LDA $9C                 ; $12:846C: A5 9C
BEQ CODE_1284BD         ; $12:846E: F0 4D
LDY #$00                ; $12:8470: A0 00
LDX $042D               ; $12:8472: AE 2D 04
LDA $51,x               ; $12:8475: B5 51
CMP #$06                ; $12:8477: C9 06
BEQ CODE_1284BD         ; $12:8479: F0 42
LDA $90,x               ; $12:847B: B5 90
CMP #$39                ; $12:847D: C9 39
BCC CODE_128485         ; $12:847F: 90 04
CMP #$3A                ; $12:8481: C9 3A
BCC CODE_12848B         ; $12:8483: 90 06

CODE_128485:
CMP #$37                ; $12:8485: C9 37
BCC CODE_1284BE         ; $12:8487: 90 35
LDY #$02                ; $12:8489: A0 02

CODE_12848B:
STY $07                 ; $12:848B: 84 07
LDA $9D                 ; $12:848D: A5 9D
ASL A                   ; $12:848F: 0A
ORA $9A                 ; $12:8490: 05 9A
TAX                     ; $12:8492: AA
LDY.w DATA_11CB03,x     ; $12:8493: BC 03 CB
LDX $042D               ; $12:8496: AE 2D 04
LDA #$36                ; $12:8499: A9 36
CMP $90,x               ; $12:849B: D5 90
BCS CODE_1284AC         ; $12:849D: B0 0D
LDA $3C                 ; $12:849F: A5 3C
BPL CODE_1284A8         ; $12:84A1: 10 05
EOR #$FF                ; $12:84A3: 49 FF
CLC                     ; $12:84A5: 18
ADC #$01                ; $12:84A6: 69 01

CODE_1284A8:
CMP #$08                ; $12:84A8: C9 08
BCC CODE_1284AD         ; $12:84AA: 90 01

CODE_1284AC:
INY                     ; $12:84AC: C8

CODE_1284AD:
LDX #$00                ; $12:84AD: A2 00
JSL CODE_13F900         ; $12:84AF: 22 00 F9 13
LDA $00                 ; $12:84B3: A5 00
LDY $07                 ; $12:84B5: A4 07
JSL CODE_13F99C         ; $12:84B7: 22 9C F9 13
BCC CODE_1284BE         ; $12:84BB: 90 01

CODE_1284BD:
RTS                     ; $12:84BD: 60

CODE_1284BE:
LDA #$09                ; $12:84BE: A9 09
STA $C7                 ; $12:84C0: 85 C7
LDA #$02                ; $12:84C2: A9 02
STA $9B                 ; $12:84C4: 85 9B
LDA #$0A                ; $12:84C6: A9 0A
STA $84                 ; $12:84C8: 85 84
DEC $9C                 ; $12:84CA: C6 9C
LDA #$31                ; $12:84CC: A9 31
STA $1DE0               ; $12:84CE: 8D E0 1D
STZ $04AF               ; $12:84D1: 9C AF 04
STZ $9A                 ; $12:84D4: 64 9A
STZ $FA                 ; $12:84D6: 64 FA
STZ $01                 ; $12:84D8: 64 01
LDX $042D               ; $12:84DA: AE 2D 04
LDA #$36                ; $12:84DD: A9 36
CMP $90,x               ; $12:84DF: D5 90
ROL $01                 ; $12:84E1: 26 01
LDA $3C                 ; $12:84E3: A5 3C
BPL CODE_1284EC         ; $12:84E5: 10 05
EOR #$FF                ; $12:84E7: 49 FF
CLC                     ; $12:84E9: 18
ADC #$01                ; $12:84EA: 69 01

CODE_1284EC:
CMP #$08                ; $12:84EC: C9 08
ROL $01                 ; $12:84EE: 26 01
BNE CODE_128506         ; $12:84F0: D0 14
LDY $9D                 ; $12:84F2: A4 9D
LDA.w DATA_119B88,y     ; $12:84F4: B9 88 9B
CLC                     ; $12:84F7: 18
ADC $29,x               ; $12:84F8: 75 29
STA $29,x               ; $12:84FA: 95 29
LDA $EB                 ; $12:84FC: A5 EB
BEQ CODE_128506         ; $12:84FE: F0 06
DEY                     ; $12:8500: 88
TYA                     ; $12:8501: 98
ADC $15,x               ; $12:8502: 75 15
STA $15,x               ; $12:8504: 95 15

CODE_128506:
LDY $01                 ; $12:8506: A4 01
LDA.w DATA_119B84,y     ; $12:8508: B9 84 9B
STA $47,x               ; $12:850B: 95 47
LDA $01                 ; $12:850D: A5 01
ASL A                   ; $12:850F: 0A
ORA $9D                 ; $12:8510: 05 9D
TAY                     ; $12:8512: A8
LDA.w DATA_119B7C,y     ; $12:8513: B9 7C 9B
STA $3D,x               ; $12:8516: 95 3D
LDA #$01                ; $12:8518: A9 01
STA $042F,x             ; $12:851A: 9D 2F 04
LSR A                   ; $12:851D: 4A
STA $A8,x               ; $12:851E: 95 A8
STZ $5B,x               ; $12:8520: 74 5B
RTS                     ; $12:8522: 60

CODE_128523:
LDX #$0A                ; $12:8523: A2 0A

CODE_128525:
LDA $3C,x               ; $12:8525: B5 3C
CLC                     ; $12:8527: 18
ADC $04CC,x             ; $12:8528: 7D CC 04
PHP                     ; $12:852B: 08
BPL CODE_128533         ; $12:852C: 10 05
EOR #$FF                ; $12:852E: 49 FF
CLC                     ; $12:8530: 18
ADC #$01                ; $12:8531: 69 01

CODE_128533:
PHA                     ; $12:8533: 48
LSR A                   ; $12:8534: 4A
LSR A                   ; $12:8535: 4A
LSR A                   ; $12:8536: 4A
LSR A                   ; $12:8537: 4A
TAY                     ; $12:8538: A8
PLA                     ; $12:8539: 68
ASL A                   ; $12:853A: 0A
ASL A                   ; $12:853B: 0A
ASL A                   ; $12:853C: 0A
ASL A                   ; $12:853D: 0A
CLC                     ; $12:853E: 18
ADC $0407,x             ; $12:853F: 7D 07 04
STA $0407,x             ; $12:8542: 9D 07 04
TYA                     ; $12:8545: 98
ADC #$00                ; $12:8546: 69 00
PLP                     ; $12:8548: 28
BPL CODE_128550         ; $12:8549: 10 05
EOR #$FF                ; $12:854B: 49 FF
CLC                     ; $12:854D: 18
ADC #$01                ; $12:854E: 69 01

CODE_128550:
LDY #$00                ; $12:8550: A0 00
CMP #$00                ; $12:8552: C9 00
BPL CODE_128557         ; $12:8554: 10 01
DEY                     ; $12:8556: 88

CODE_128557:
CLC                     ; $12:8557: 18
ADC $28,x               ; $12:8558: 75 28
STA $28,x               ; $12:855A: 95 28
TYA                     ; $12:855C: 98
ADC $14,x               ; $12:855D: 75 14
STA $14,x               ; $12:855F: 95 14
STZ $04CC,x             ; $12:8561: 9E CC 04
RTS                     ; $12:8564: 60

CODE_128565:
LDA #$00                ; $12:8565: A9 00
STA $5A                 ; $12:8567: 85 5A
STA $0624               ; $12:8569: 8D 24 06
STA $07                 ; $12:856C: 85 07
STA $0A                 ; $12:856E: 85 0A
STA $0E                 ; $12:8570: 85 0E
STA $0C                 ; $12:8572: 85 0C
JSR CODE_12866A         ; $12:8574: 20 6A 86
LDA $9A                 ; $12:8577: A5 9A
ASL A                   ; $12:8579: 0A
ORA $9C                 ; $12:857A: 05 9C
TAX                     ; $12:857C: AA
LDA.w DATA_11CAFD,x     ; $12:857D: BD FD CA
STA $08                 ; $12:8580: 85 08
LDA $46                 ; $12:8582: A5 46
CLC                     ; $12:8584: 18
ADC $04D6               ; $12:8585: 6D D6 04
BPL CODE_128596         ; $12:8588: 10 0C
JSR CODE_12861D         ; $12:858A: 20 1D 86
JSR CODE_128662         ; $12:858D: 20 62 86
LDA $5A                 ; $12:8590: A5 5A
BNE CODE_1285E5         ; $12:8592: D0 51
BEQ CODE_128600         ; $12:8594: F0 6A

CODE_128596:
JSR CODE_128662         ; $12:8596: 20 62 86
JSR CODE_12861D         ; $12:8599: 20 1D 86
LDA $5A                 ; $12:859C: A5 5A
BNE CODE_1285BA         ; $12:859E: D0 1A
LDA #$00                ; $12:85A0: A9 00
LDX #$01                ; $12:85A2: A2 01
LDY $0635               ; $12:85A4: AC 35 06
CPY #$01                ; $12:85A7: C0 01
BEQ CODE_1285AF         ; $12:85A9: F0 04
CPY #$05                ; $12:85AB: C0 05
BNE CODE_1285B2         ; $12:85AD: D0 03

CODE_1285AF:
JSR CODE_129A0E         ; $12:85AF: 20 0E 9A

CODE_1285B2:
STA $04E0               ; $12:85B2: 8D E0 04
STX $99                 ; $12:85B5: 86 99
JMP CODE_128600         ; $12:85B7: 4C 00 86

CODE_1285BA:
LDA #$00                ; $12:85BA: A9 00
STA $04E0               ; $12:85BC: 8D E0 04
LDA $32                 ; $12:85BF: A5 32
AND #$0C                ; $12:85C1: 29 0C
BNE CODE_128600         ; $12:85C3: D0 3B
STA $99                 ; $12:85C5: 85 99
LDA $32                 ; $12:85C7: A5 32
AND #$F0                ; $12:85C9: 29 F0
STA $32                 ; $12:85CB: 85 32
LSR $0A                 ; $12:85CD: 46 0A
BCC CODE_1285D9         ; $12:85CF: 90 08
LDX $0A                 ; $12:85D1: A6 0A
LDA.w DATA_119B9A,x     ; $12:85D3: BD 9A 9B
STA $04CC               ; $12:85D6: 8D CC 04

CODE_1285D9:
LSR $0C                 ; $12:85D9: 46 0C
BCC CODE_1285E2         ; $12:85DB: 90 05
LDA #$0F                ; $12:85DD: A9 0F
STA $0624               ; $12:85DF: 8D 24 06

CODE_1285E2:
JSR CODE_12877B         ; $12:85E2: 20 7B 87

CODE_1285E5:
LDA #$00                ; $12:85E5: A9 00
STA $46                 ; $12:85E7: 85 46
STA $04D6               ; $12:85E9: 8D D6 04
LDA $04E1               ; $12:85EC: AD E1 04
BNE CODE_128600         ; $12:85EF: D0 0F
LSR $0E                 ; $12:85F1: 46 0E
BCC CODE_128600         ; $12:85F3: 90 0B
LDA $0428               ; $12:85F5: AD 28 04
STA $0429               ; $12:85F8: 8D 29 04
ROR $12                 ; $12:85FB: 66 12
JSR CODE_129A52         ; $12:85FD: 20 52 9A

CODE_128600:
LDY #$02                ; $12:8600: A0 02
LDA $3C                 ; $12:8602: A5 3C
CLC                     ; $12:8604: 18
ADC $04CC               ; $12:8605: 6D CC 04
BMI CODE_12860E         ; $12:8608: 30 04
DEY                     ; $12:860A: 88
JSR CODE_128662         ; $12:860B: 20 62 86

CODE_12860E:
STY $6E                 ; $12:860E: 84 6E
JSR CODE_12861D         ; $12:8610: 20 1D 86
LDA $5A                 ; $12:8613: A5 5A
AND #$03                ; $12:8615: 29 03
BEQ CODE_12861C         ; $12:8617: F0 03
JSR CODE_128BD8         ; $12:8619: 20 D8 8B

CODE_12861C:
RTS                     ; $12:861C: 60

CODE_12861D:
JSR CODE_128620         ; $12:861D: 20 20 86

CODE_128620:
LDX #$00                ; $12:8620: A2 00
LDY $08                 ; $12:8622: A4 08
JSL CODE_13F900         ; $12:8624: 22 00 F9 13
LDX $07                 ; $12:8628: A6 07
LDY.w DATA_119B8A,x     ; $12:862A: BC 8A 9B
LDA $00                 ; $12:862D: A5 00
JSL CODE_13F99C         ; $12:862F: 22 9C F9 13
BCC CODE_12865F         ; $12:8633: 90 2A
CMP #$2E                ; $12:8635: C9 2E
BNE CODE_128640         ; $12:8637: D0 07
LDA.w DATA_119B8A,x     ; $12:8639: BD 8A 9B
STA $0E                 ; $12:863C: 85 0E
BNE CODE_128658         ; $12:863E: D0 18

CODE_128640:
CMP #$26                ; $12:8640: C9 26
BNE CODE_12864B         ; $12:8642: D0 07
LDA.w DATA_119B8A,x     ; $12:8644: BD 8A 9B
STA $0C                 ; $12:8647: 85 0C
BNE CODE_128658         ; $12:8649: D0 0D

CODE_12864B:
SEC                     ; $12:864B: 38
SBC #$60                ; $12:864C: E9 60
CMP #$02                ; $12:864E: C9 02
BCS CODE_128658         ; $12:8650: B0 06
ASL A                   ; $12:8652: 0A
ORA.w DATA_119B8A,x     ; $12:8653: 1D 8A 9B
STA $0A                 ; $12:8656: 85 0A

CODE_128658:
LDA.w DATA_119B92,x     ; $12:8658: BD 92 9B
ORA $5A                 ; $12:865B: 05 5A
STA $5A                 ; $12:865D: 85 5A

CODE_12865F:
JMP CODE_128665         ; $12:865F: 4C 65 86

CODE_128662:
JSR CODE_128665         ; $12:8662: 20 65 86

CODE_128665:
INC $07                 ; $12:8665: E6 07
INC $08                 ; $12:8667: E6 08
RTS                     ; $12:8669: 60

CODE_12866A:
LDY.w DATA_11CB07       ; $12:866A: AC 07 CB
LDA $10                 ; $12:866D: A5 10
LSR A                   ; $12:866F: 4A
BCS CODE_128673         ; $12:8670: B0 01
INY                     ; $12:8672: C8

CODE_128673:
LDX #$00                ; $12:8673: A2 00
JSR CODE_128195         ; $12:8675: 20 95 81

; Prepare tile being touched by player.
; Check if touching any of the climbing tiles.
; If so, branch.
BCS CODE_1286A6         ; $12:8678: B0 2C
LDA $00                 ; $12:867A: A5 00
CMP #$4E                ; $12:867C: C9 4E

; If not cherry tile...
;
; branch.
BNE CODE_1286CE         ; $12:867E: D0 4E

; Increment cherry counter.
INC $062A               ; $12:8680: EE 2A 06
LDA $062A               ; $12:8683: AD 2A 06
SBC #$05                ; $12:8686: E9 05
BNE CODE_128690         ; $12:8688: D0 06

; If collected 5 times exactly...
;
; don't branch...
; And reset cherry counter.
STA $062A               ; $12:868A: 8D 2A 06

; Generate star man.
JSR CODE_129945         ; $12:868D: 20 45 99

CODE_128690:
LDA #$3B                ; $12:8690: A9 3B

; Collect cherry sound.
STA $1DE3               ; $12:8692: 8D E3 1D
LDA $06                 ; $12:8695: A5 06
CLC                     ; $12:8697: 18
ADC #$08                ; $12:8698: 69 08
AND #$F0                ; $12:869A: 29 F0
STA $0212               ; $12:869C: 8D 12 02
LDA #$40                ; $12:869F: A9 40

; Clear tile.
JSL CODE_128BF4         ; $12:86A1: 22 F4 8B 12
RTS                     ; $12:86A5: 60

CODE_1286A6:
LDA $F6                 ; $12:86A6: A5 F6
AND #$0C                ; $12:86A8: 29 0C

; If not pressing Up/Down...
;
; Branch.
BEQ CODE_1286CE         ; $12:86AA: F0 22
LDY $9C                 ; $12:86AC: A4 9C

; If player holding item...
; branch.
BNE CODE_1286CE         ; $12:86AE: D0 1E
LDA $28                 ; $12:86B0: A5 28
CLC                     ; $12:86B2: 18
ADC #$04                ; $12:86B3: 69 04
AND #$0F                ; $12:86B5: 29 0F
CMP #$08                ; $12:86B7: C9 08

; If not lining up completely with the vine...
; (horizontally)
;
;
;
; return.
BCS CODE_1286CE         ; $12:86B9: B0 13
LDA #$01                ; $12:86BB: A9 01

; Player = climbing.
STA $50                 ; $12:86BD: 85 50
STZ $078C               ; $12:86BF: 9C 8C 07
STY $99                 ; $12:86C2: 84 99
STY $9A                 ; $12:86C4: 84 9A
LDA #$0A                ; $12:86C6: A9 0A

; Climbing pose.
STA $C7                 ; $12:86C8: 85 C7
PLA                     ; $12:86CA: 68
PLA                     ; $12:86CB: 68
PLA                     ; $12:86CC: 68
PLA                     ; $12:86CD: 68

CODE_1286CE:
RTS                     ; $12:86CE: 60

CODE_1286CF:
LDX #$06                ; $12:86CF: A2 06

CODE_1286D1:
LDA $51,x               ; $12:86D1: B5 51
BEQ CODE_1286DB         ; $12:86D3: F0 06
INX                     ; $12:86D5: E8
CPX #$09                ; $12:86D6: E0 09
BCC CODE_1286D1         ; $12:86D8: 90 F7

; Check if there's a free sprite slot.
; If so ($51,x = #$00), branch.
; (Break out of loop.)
; Otherwise loop until...
; maximum is reached.
; If maximum, not reached, loop, otherwise...
; ...end it.
RTS                     ; $12:86DA: 60

CODE_1286DB:
LDA $00                 ; $12:86DB: A5 00
STA $79,x               ; $12:86DD: 95 79
LDA $03                 ; $12:86DF: A5 03
STA $15,x               ; $12:86E1: 95 15
LDA $04                 ; $12:86E3: A5 04
STA $1F,x               ; $12:86E5: 95 1F
LDA $05                 ; $12:86E7: A5 05
STA $29,x               ; $12:86E9: 95 29
LDA $06                 ; $12:86EB: A5 06
STA $33,x               ; $12:86ED: 95 33
LDA #$00                ; $12:86EF: A9 00
STA $042F,x             ; $12:86F1: 9D 2F 04
STA $9F,x               ; $12:86F4: 95 9F
STA $B1,x               ; $12:86F6: 95 B1
STA $0D00,x             ; $12:86F8: 9D 00 0D
JSR CODE_1299D5         ; $12:86FB: 20 D5 99

; Sprite that is spawned will run main routine.
LDA #$01                ; $12:86FE: A9 01
LDY $09                 ; $12:8700: A4 09
CPY #$0E                ; $12:8702: C0 0E

; If tile is not a sand tile...
;
; branch.
BNE CODE_12870C         ; $12:8704: D0 06
LDA #$20                ; $12:8706: A9 20

; How long it takes for the sand digging animation to be done (the actual sprite tile)
STA $86,x               ; $12:8708: 95 86
LDA #$06                ; $12:870A: A9 06

; Actually dig up the darn sand. Sprite number from table will be #$39 (mushroom block)

CODE_12870C:
STA $51,x               ; $12:870C: 95 51
LDA.w DATA_119B9F,y     ; $12:870E: B9 9F 9B

; Get sprite to spawn from table.
STA $90,x               ; $12:8711: 95 90
CMP #$36                ; $12:8713: C9 36
BNE CODE_12871A         ; $12:8715: D0 03
STZ $079E               ; $12:8717: 9C 9E 07

CODE_12871A:
LDY #$FF                ; $12:871A: A0 FF
CMP #$37                ; $12:871C: C9 37
BEQ CODE_128726         ; $12:871E: F0 06
CMP #$09                ; $12:8720: C9 09
BNE CODE_12872B         ; $12:8722: D0 07
LDY #$50                ; $12:8724: A0 50

CODE_128726:
TYA                     ; $12:8726: 98
STA $86,x               ; $12:8727: 95 86
BNE CODE_128750         ; $12:8729: D0 25

CODE_12872B:
CMP #$40                ; $12:872B: C9 40
BNE CODE_12873B         ; $12:872D: D0 0C
LDA $0620               ; $12:872F: AD 20 06
BEQ CODE_128750         ; $12:8732: F0 1C
LDA #$32                ; $12:8734: A9 32

; If 1-Up has already been collected...
;
; Pick up small vegetable instead.
STA $90,x               ; $12:8736: 95 90
JMP CODE_128750         ; $12:8738: 4C 50 87

CODE_12873B:
CMP #$33                ; $12:873B: C9 33
BNE CODE_128750         ; $12:873D: D0 11
LDY $062C               ; $12:873F: AC 2C 06
INY                     ; $12:8742: C8
CPY #$05                ; $12:8743: C0 05
BCC CODE_12874D         ; $12:8745: 90 06
LDA #$46                ; $12:8747: A9 46
STA $90,x               ; $12:8749: 95 90
LDY #$00                ; $12:874B: A0 00

CODE_12874D:
STY $062C               ; $12:874D: 8C 2C 06

CODE_128750:
JSR CODE_129978         ; $12:8750: 20 78 99
LDA #$04                ; $12:8753: A9 04
STA $5B,x               ; $12:8755: 95 5B
LDA #$40                ; $12:8757: A9 40

; Tile to spawn when object is picked up = #$40.
; (Empty tile.)
JSL CODE_13FA0D         ; $12:8759: 22 0D FA 13
LDA #$07                ; $12:875D: A9 07
STA $A8,x               ; $12:875F: 95 A8
STX $042D               ; $12:8761: 8E 2D 04
LDA #$02                ; $12:8764: A9 02
STA $50                 ; $12:8766: 85 50
LDA #$06                ; $12:8768: A9 06
STA $82                 ; $12:876A: 85 82
LDA #$08                ; $12:876C: A9 08
STA $C7                 ; $12:876E: 85 C7
INC $9C                 ; $12:8770: E6 9C
STZ $078C               ; $12:8772: 9C 8C 07
LDA #$2B                ; $12:8775: A9 2B
STA $1DE0               ; $12:8777: 8D E0 1D
RTS                     ; $12:877A: 60

CODE_12877B:
LDY $9C                 ; $12:877B: A4 9C

; If holding item...
; branch.
BNE CODE_1287F5         ; $12:877D: D0 76
LDA $9A                 ; $12:877F: A5 9A
BEQ CODE_1287CE         ; $12:8781: F0 4B

; Get Map16 tile index.
LDA $00                 ; $12:8783: A5 00
LDX $0628               ; $12:8785: AE 28 06
CPX #$02                ; $12:8788: E0 02

; If not in potion room...
;
; branch.
BNE CODE_128792         ; $12:878A: D0 06
CMP #$6F                ; $12:878C: C9 6F

; If on warp jar, run 'entering jar' code.
BEQ CODE_12879C         ; $12:878E: F0 0C

; Otherwise, branch.
BNE CODE_1287F5         ; $12:8790: D0 63

CODE_128792:
INY                     ; $12:8792: C8
CMP #$6E                ; $12:8793: C9 6E
BEQ CODE_12879C         ; $12:8795: F0 05
CMP #$6A                ; $12:8797: C9 6A
BNE CODE_1287F5         ; $12:8799: D0 5A

; Y = #$01. (So you're not warping to another world, see $04EF.)
; If tile 6E, Y stays #$01...
;
; If tile 6A, Y becomes #$02
; If neither, just return.
; Y = #$02.
INY                     ; $12:879B: C8

CODE_12879C:
LDA $28                 ; $12:879C: A5 28
CLC                     ; $12:879E: 18
ADC #$04                ; $12:879F: 69 04
AND #$0F                ; $12:87A1: 29 0F
CMP #$08                ; $12:87A3: C9 08

; If not...
; lining up exactly...
; with the middle of the jar...
;
;
; Return.
BCS CODE_1287F5         ; $12:87A5: B0 4E
LDA #$4D                ; $12:87A7: A9 4D

; Sound effect = going down jar.
STA $1DE3               ; $12:87A9: 8D E3 1D
LDA #$00                ; $12:87AC: A9 00

; X speed = #$00
STA $3C                 ; $12:87AE: 85 3C
LDA #$04                ; $12:87B0: A9 04

; Animation = #$04 (going down jar)
STA $50                 ; $12:87B2: 85 50

; Store result from Y into $04EF.
STY $04EF               ; $12:87B4: 8C EF 04
JSL CODE_1287BC         ; $12:87B7: 22 BC 87 12
RTS                     ; $12:87BB: 60

CODE_1287BC:
LDA $28                 ; $12:87BC: A5 28
CLC                     ; $12:87BE: 18
ADC #$08                ; $12:87BF: 69 08
AND #$F0                ; $12:87C1: 29 F0
STA $28                 ; $12:87C3: 85 28
BCC CODE_1287CD         ; $12:87C5: 90 06
LDA $EB                 ; $12:87C7: A5 EB
BEQ CODE_1287CD         ; $12:87C9: F0 02
INC $14                 ; $12:87CB: E6 14

CODE_1287CD:
RTL                     ; $12:87CD: 6B

CODE_1287CE:
BIT $FA                 ; $12:87CE: 24 FA
BVC CODE_1287F5         ; $12:87D0: 50 23
LDA $28                 ; $12:87D2: A5 28
CLC                     ; $12:87D4: 18
ADC #$06                ; $12:87D5: 69 06
AND #$0F                ; $12:87D7: 29 0F
CMP #$0C                ; $12:87D9: C9 0C
BCS CODE_1287F5         ; $12:87DB: B0 18
LDA $00                 ; $12:87DD: A5 00
CMP #$9D                ; $12:87DF: C9 9D
BNE CODE_1287E7         ; $12:87E1: D0 04
LDA #$0E                ; $12:87E3: A9 0E
BNE CODE_1287F0         ; $12:87E5: D0 09

CODE_1287E7:
CMP #$68                ; $12:87E7: C9 68
BCS CODE_1287F5         ; $12:87E9: B0 0A
SEC                     ; $12:87EB: 38
SBC #$64                ; $12:87EC: E9 64
BCC CODE_1287F5         ; $12:87EE: 90 05

CODE_1287F0:
STA $09                 ; $12:87F0: 85 09
JMP CODE_1286CF         ; $12:87F2: 4C CF 86

CODE_1287F5:
LDA $9A                 ; $12:87F5: A5 9A
BNE CODE_128874         ; $12:87F7: D0 7B
LDA $06                 ; $12:87F9: A5 06
SEC                     ; $12:87FB: 38
SBC #$10                ; $12:87FC: E9 10
STA $06                 ; $12:87FE: 85 06
STA $E6                 ; $12:8800: 85 E6
LDA $04                 ; $12:8802: A5 04
SBC #$00                ; $12:8804: E9 00
STA $04                 ; $12:8806: 85 04
STA $01                 ; $12:8808: 85 01
LDA $03                 ; $12:880A: A5 03
STA $02                 ; $12:880C: 85 02
JSR CODE_128B6D         ; $12:880E: 20 6D 8B
BCS CODE_128874         ; $12:8811: B0 61
LDX $03                 ; $12:8813: A6 03
PHX                     ; $12:8815: DA
JSR CODE_1299DB         ; $12:8816: 20 DB 99
REP #$20                ; $12:8819: C2 20
LDA $01                 ; $12:881B: A5 01
CLC                     ; $12:881D: 18
ADC #$7000              ; $12:881E: 69 00 70
STA $C4                 ; $12:8821: 85 C4
SEP #$20                ; $12:8823: E2 20
LDA $03                 ; $12:8825: A5 03
STA $C6                 ; $12:8827: 85 C6
LDY $E7                 ; $12:8829: A4 E7
LDA [$C4],y             ; $12:882B: B7 C4
BEQ CODE_128840         ; $12:882D: F0 11
LDA [$01],y             ; $12:882F: B7 01
CMP #$2B                ; $12:8831: C9 2B
BEQ CODE_128840         ; $12:8833: F0 0B
CMP #$2A                ; $12:8835: C9 2A
BEQ CODE_128840         ; $12:8837: F0 07
TAX                     ; $12:8839: AA
LDA.l DATA_14CCBD,x     ; $12:883A: BF BD CC 14
BRA CODE_128842         ; $12:883E: 80 02

CODE_128840:
LDA [$01],y             ; $12:8840: B7 01

CODE_128842:
PLX                     ; $12:8842: FA
STX $03                 ; $12:8843: 86 03
STA $00                 ; $12:8845: 85 00
LDX $9C                 ; $12:8847: A6 9C
BEQ CODE_128854         ; $12:8849: F0 09
LDX $042D               ; $12:884B: AE 2D 04
LDY $90,x               ; $12:884E: B4 90
CPY #$3D                ; $12:8850: C0 3D
BNE CODE_128874         ; $12:8852: D0 20

CODE_128854:
LDX $0628               ; $12:8854: AE 28 06
CPX #$02                ; $12:8857: E0 02
BEQ CODE_128865         ; $12:8859: F0 0A
LDY #$07                ; $12:885B: A0 07

CODE_12885D:
CMP.w DATA_119BAE,y     ; $12:885D: D9 AE 9B
BEQ CODE_128896         ; $12:8860: F0 34
DEY                     ; $12:8862: 88
BPL CODE_12885D         ; $12:8863: 10 F8

CODE_128865:
BIT $FA                 ; $12:8865: 24 FA
BVC CODE_128874         ; $12:8867: 50 0B
STA $00                 ; $12:8869: 85 00
CMP #$4D                ; $12:886B: C9 4D
BCS CODE_128874         ; $12:886D: B0 05
SEC                     ; $12:886F: 38
SBC #$43                ; $12:8870: E9 43
BCS CODE_128875         ; $12:8872: B0 01

CODE_128874:
RTS                     ; $12:8874: 60

CODE_128875:
LDX $0628               ; $12:8875: AE 28 06
CPX #$02                ; $12:8878: E0 02
BNE CODE_128889         ; $12:887A: D0 0D
LDA $0621               ; $12:887C: AD 21 06
CMP #$02                ; $12:887F: C9 02
BCS CODE_128888         ; $12:8881: B0 05
INC $0622               ; $12:8883: EE 22 06
LDX #$00                ; $12:8886: A2 00

CODE_128888:
TXA                     ; $12:8888: 8A

CODE_128889:
CLC                     ; $12:8889: 18
ADC #$04                ; $12:888A: 69 04
STA $09                 ; $12:888C: 85 09
LDA $04AE               ; $12:888E: AD AE 04
BEQ CODE_128896         ; $12:8891: F0 03
JMP CODE_1286CF         ; $12:8893: 4C CF 86

CODE_128896:
LDA $0778               ; $12:8896: AD 78 07
INC A                   ; $12:8899: 1A
BEQ CODE_128900         ; $12:889A: F0 64
LDA $FA                 ; $12:889C: A5 FA
AND #$08                ; $12:889E: 29 08
BEQ CODE_128874         ; $12:88A0: F0 D2
JSL CODE_15D1C5         ; $12:88A2: 22 C5 D1 15
BCS CODE_1288EE         ; $12:88A6: B0 46
LDA $00                 ; $12:88A8: A5 00
CMP.w DATA_119BAF       ; $12:88AA: CD AF 9B
BNE CODE_1288BC         ; $12:88AD: D0 0D
LDX $9C                 ; $12:88AF: A6 9C
BEQ CODE_128874         ; $12:88B1: F0 C1
LDX $042D               ; $12:88B3: AE 2D 04
LDA $90,x               ; $12:88B6: B5 90
CMP #$3D                ; $12:88B8: C9 3D
BNE CODE_128874         ; $12:88BA: D0 B8

CODE_1288BC:
LDA $28                 ; $12:88BC: A5 28
CLC                     ; $12:88BE: 18
ADC #$05                ; $12:88BF: 69 05
AND #$0F                ; $12:88C1: 29 0F
CMP #$0A                ; $12:88C3: C9 0A
BCS CODE_128874         ; $12:88C5: B0 AD
LDA $0500               ; $12:88C7: AD 00 05
STA $079D               ; $12:88CA: 8D 9D 07
LDA #$80                ; $12:88CD: A9 80
STA $0500               ; $12:88CF: 8D 00 05
STA $079C               ; $12:88D2: 8D 9C 07
LDA $28                 ; $12:88D5: A5 28
AND #$08                ; $12:88D7: 29 08
BEQ CODE_1288E8         ; $12:88D9: F0 0D
LDA $28                 ; $12:88DB: A5 28
CLC                     ; $12:88DD: 18
ADC #$08                ; $12:88DE: 69 08
STA $28                 ; $12:88E0: 85 28
LDA $14                 ; $12:88E2: A5 14
ADC #$00                ; $12:88E4: 69 00
STA $14                 ; $12:88E6: 85 14

CODE_1288E8:
LDA $28                 ; $12:88E8: A5 28
AND #$F0                ; $12:88EA: 29 F0
STA $28                 ; $12:88EC: 85 28

CODE_1288EE:
LDA #$01                ; $12:88EE: A9 01
STA $04B3               ; $12:88F0: 8D B3 04
STA $85                 ; $12:88F3: 85 85
STZ $3C                 ; $12:88F5: 64 3C
STY $0778               ; $12:88F7: 8C 78 07
STZ $0779               ; $12:88FA: 9C 79 07
STZ $04BE               ; $12:88FD: 9C BE 04

CODE_128900:
CPY #$04                ; $12:8900: C0 04
BNE CODE_128909         ; $12:8902: D0 05
DEY                     ; $12:8904: 88
STY $04ED               ; $12:8905: 8C ED 04
RTS                     ; $12:8908: 60

CODE_128909:
LDA $0778               ; $12:8909: AD 78 07
BMI CODE_128918         ; $12:890C: 30 0A
CMP #$05                ; $12:890E: C9 05
BCC CODE_128918         ; $12:8910: 90 06
LDA #$0F                ; $12:8912: A9 0F
STA $1DE3               ; $12:8914: 8D E3 1D
RTS                     ; $12:8917: 60

CODE_128918:
LDA #$01                ; $12:8918: A9 01
STA $0536               ; $12:891A: 8D 36 05
TYA                     ; $12:891D: 98
JSL CODE_118776         ; $12:891E: 22 76 87 11
dw CODE_128B1D
dw CODE_128B30
dw CODE_128B4F
dw CODE_128B4F
dw CODE_128B4F
dw CODE_128B4F
dw CODE_128B4F
dw CODE_128B4F

CODE_128932:
LDA $0778               ; $12:8932: AD 78 07
CMP #$05                ; $12:8935: C9 05
BEQ CODE_12893E         ; $12:8937: F0 05
JSL CODE_15D03A         ; $12:8939: 22 3A D0 15
RTL                     ; $12:893D: 6B

CODE_12893E:
JSR CODE_128942         ; $12:893E: 20 42 89
RTL                     ; $12:8941: 6B

CODE_128942:
LDA #$01                ; $12:8942: A9 01
STA $85                 ; $12:8944: 85 85
STY $071E               ; $12:8946: 8C 1E 07
LDA $0779               ; $12:8949: AD 79 07
JSL CODE_118776         ; $12:894C: 22 76 87 11
dw CODE_128958
dw CODE_12896E
dw CODE_128AA2
dw CODE_128995

CODE_128958:
STZ $077A               ; $12:8958: 9C 7A 07
INC $0779               ; $12:895B: EE 79 07
LDA $04E1               ; $12:895E: AD E1 04
STA $077B               ; $12:8961: 8D 7B 07
STZ $04E1               ; $12:8964: 9C E1 04
STZ $04CB               ; $12:8967: 9C CB 04
INC $041B               ; $12:896A: EE 1B 04
RTS                     ; $12:896D: 60

CODE_12896E:
LDA #$C0                ; $12:896E: A9 C0
STA $071C               ; $12:8970: 8D 1C 07
LDA #$01                ; $12:8973: A9 01
STA $071D               ; $12:8975: 8D 1D 07
STA $071F               ; $12:8978: 8D 1F 07
LDA #$E0                ; $12:897B: A9 E0
STA $071E               ; $12:897D: 8D 1E 07
JSR CODE_1289DD         ; $12:8980: 20 DD 89
INC $077A               ; $12:8983: EE 7A 07
LDA $077A               ; $12:8986: AD 7A 07
CMP #$10                ; $12:8989: C9 10
BCS CODE_12898E         ; $12:898B: B0 01
RTS                     ; $12:898D: 60

CODE_12898E:
INC $0779               ; $12:898E: EE 79 07
STZ $077A               ; $12:8991: 9C 7A 07
RTS                     ; $12:8994: 60

CODE_128995:
LDA #$20                ; $12:8995: A9 20
STA $071C               ; $12:8997: 8D 1C 07
LDA #$00                ; $12:899A: A9 00
STA $071D               ; $12:899C: 8D 1D 07
STA $071F               ; $12:899F: 8D 1F 07
LDA #$40                ; $12:89A2: A9 40
STA $071E               ; $12:89A4: 8D 1E 07
JSR CODE_1289DD         ; $12:89A7: 20 DD 89
DEC $077A               ; $12:89AA: CE 7A 07
LDA $077A               ; $12:89AD: AD 7A 07
BMI CODE_1289B3         ; $12:89B0: 30 01
RTS                     ; $12:89B2: 60

CODE_1289B3:
LDA #$FF                ; $12:89B3: A9 FF
STA $0778               ; $12:89B5: 8D 78 07
LDA $077B               ; $12:89B8: AD 7B 07
STA $04E1               ; $12:89BB: 8D E1 04
STZ $041B               ; $12:89BE: 9C 1B 04
LDA #$10                ; $12:89C1: A9 10
STA $1DE3               ; $12:89C3: 8D E3 1D
LDA $04CC               ; $12:89C6: AD CC 04
BEQ CODE_1289CC         ; $12:89C9: F0 01
NOP                     ; $12:89CB: EA

CODE_1289CC:
RTS                     ; $12:89CC: 60

DATA_1289CD:
db $48,$58,$49,$59,$4A,$5A,$4B,$5B
db $4C,$5C,$4D,$5D,$4E,$5E,$4F,$5F

CODE_1289DD:
PHY                     ; $12:89DD: 5A
PHX                     ; $12:89DE: DA
LDA $077A               ; $12:89DF: AD 7A 07
AND #$0C                ; $12:89E2: 29 0C
XBA                     ; $12:89E4: EB
LDA #$00                ; $12:89E5: A9 00
XBA                     ; $12:89E7: EB
REP #$10                ; $12:89E8: C2 10
TAX                     ; $12:89EA: AA
LDY $071C               ; $12:89EB: AC 1C 07
LDA #$22                ; $12:89EE: A9 22
JSR CODE_128A45         ; $12:89F0: 20 45 8A
LDA.l DATA_1289CD,x     ; $12:89F3: BF CD 89 12
STA $0802,y             ; $12:89F7: 99 02 08
STA $0812,y             ; $12:89FA: 99 12 08
INX                     ; $12:89FD: E8
LDA.l DATA_1289CD,x     ; $12:89FE: BF CD 89 12
STA $0806,y             ; $12:8A02: 99 06 08
STA $0816,y             ; $12:8A05: 99 16 08
INX                     ; $12:8A08: E8
LDA.l DATA_1289CD,x     ; $12:8A09: BF CD 89 12
STA $080A,y             ; $12:8A0D: 99 0A 08
STA $081A,y             ; $12:8A10: 99 1A 08
INX                     ; $12:8A13: E8
LDA.l DATA_1289CD,x     ; $12:8A14: BF CD 89 12
STA $080E,y             ; $12:8A18: 99 0E 08
STA $081E,y             ; $12:8A1B: 99 1E 08
LDY $071E               ; $12:8A1E: AC 1E 07
LDA #$20                ; $12:8A21: A9 20
JSR CODE_128A45         ; $12:8A23: 20 45 8A
LDA #$E4                ; $12:8A26: A9 E4
STA $0802,y             ; $12:8A28: 99 02 08
STA $0812,y             ; $12:8A2B: 99 12 08
STA $0806,y             ; $12:8A2E: 99 06 08
STA $0816,y             ; $12:8A31: 99 16 08
STA $080A,y             ; $12:8A34: 99 0A 08
STA $081A,y             ; $12:8A37: 99 1A 08
STA $080E,y             ; $12:8A3A: 99 0E 08
STA $081E,y             ; $12:8A3D: 99 1E 08
SEP #$10                ; $12:8A40: E2 10
PLX                     ; $12:8A42: FA
PLY                     ; $12:8A43: 7A
RTS                     ; $12:8A44: 60

CODE_128A45:
STA $0803,y             ; $12:8A45: 99 03 08
STA $0807,y             ; $12:8A48: 99 07 08
STA $080B,y             ; $12:8A4B: 99 0B 08
STA $080F,y             ; $12:8A4E: 99 0F 08
ORA #$40                ; $12:8A51: 09 40
STA $0813,y             ; $12:8A53: 99 13 08
STA $0817,y             ; $12:8A56: 99 17 08
STA $081B,y             ; $12:8A59: 99 1B 08
STA $081F,y             ; $12:8A5C: 99 1F 08
LDA $0428               ; $12:8A5F: AD 28 04
STA $0800,y             ; $12:8A62: 99 00 08
STA $0804,y             ; $12:8A65: 99 04 08
STA $0808,y             ; $12:8A68: 99 08 08
STA $080C,y             ; $12:8A6B: 99 0C 08
CLC                     ; $12:8A6E: 18
ADC #$08                ; $12:8A6F: 69 08
STA $0810,y             ; $12:8A71: 99 10 08
STA $0814,y             ; $12:8A74: 99 14 08
STA $0818,y             ; $12:8A77: 99 18 08
STA $081C,y             ; $12:8A7A: 99 1C 08
LDA $042B               ; $12:8A7D: AD 2B 04
STA $0801,y             ; $12:8A80: 99 01 08
STA $0811,y             ; $12:8A83: 99 11 08
CLC                     ; $12:8A86: 18
ADC #$08                ; $12:8A87: 69 08
STA $0805,y             ; $12:8A89: 99 05 08
STA $0815,y             ; $12:8A8C: 99 15 08
CLC                     ; $12:8A8F: 18
ADC #$08                ; $12:8A90: 69 08
STA $0809,y             ; $12:8A92: 99 09 08
STA $0819,y             ; $12:8A95: 99 19 08
CLC                     ; $12:8A98: 18
ADC #$08                ; $12:8A99: 69 08
STA $080D,y             ; $12:8A9B: 99 0D 08
STA $081D,y             ; $12:8A9E: 99 1D 08
RTS                     ; $12:8AA1: 60

CODE_128AA2:
REP #$30                ; $12:8AA2: C2 30
STZ $0720               ; $12:8AA4: 9C 20 07
LDX #$0100              ; $12:8AA7: A2 00 01

CODE_128AAA:
LDA $0B00,x             ; $12:8AAA: BD 00 0B
STA $071C               ; $12:8AAD: 8D 1C 07
AND #$7C00              ; $12:8AB0: 29 00 7C
BEQ CODE_128ABF         ; $12:8AB3: F0 0A
LDA $071C               ; $12:8AB5: AD 1C 07
SEC                     ; $12:8AB8: 38
SBC #$0400              ; $12:8AB9: E9 00 04
STA $071C               ; $12:8ABC: 8D 1C 07

CODE_128ABF:
LDA $071C               ; $12:8ABF: AD 1C 07
AND #$03E0              ; $12:8AC2: 29 E0 03
BEQ CODE_128AD1         ; $12:8AC5: F0 0A
LDA $071C               ; $12:8AC7: AD 1C 07
SEC                     ; $12:8ACA: 38
SBC #$0020              ; $12:8ACB: E9 20 00
STA $071C               ; $12:8ACE: 8D 1C 07

CODE_128AD1:
LDA $071C               ; $12:8AD1: AD 1C 07
AND #$001F              ; $12:8AD4: 29 1F 00
BEQ CODE_128ADC         ; $12:8AD7: F0 03
DEC $071C               ; $12:8AD9: CE 1C 07

CODE_128ADC:
LDA $071C               ; $12:8ADC: AD 1C 07
STA $0B00,x             ; $12:8ADF: 9D 00 0B
TSB $0720               ; $12:8AE2: 0C 20 07
INX                     ; $12:8AE5: E8
INX                     ; $12:8AE6: E8
CPX #$0120              ; $12:8AE7: E0 20 01
BNE CODE_128AAA         ; $12:8AEA: D0 BE
SEP #$30                ; $12:8AEC: E2 30
INC $02A9               ; $12:8AEE: EE A9 02
LDA #$0F                ; $12:8AF1: A9 0F
STA $077A               ; $12:8AF3: 8D 7A 07
LDA #$20                ; $12:8AF6: A9 20
STA $071C               ; $12:8AF8: 8D 1C 07
LDA #$01                ; $12:8AFB: A9 01
STZ $071D               ; $12:8AFD: 9C 1D 07
STA $071F               ; $12:8B00: 8D 1F 07
LDA #$E0                ; $12:8B03: A9 E0
STA $071E               ; $12:8B05: 8D 1E 07
JSR CODE_1289DD         ; $12:8B08: 20 DD 89
LDA $0720               ; $12:8B0B: AD 20 07
ORA $0721               ; $12:8B0E: 0D 21 07
BEQ CODE_128B14         ; $12:8B11: F0 01
RTS                     ; $12:8B13: 60

CODE_128B14:
INC $0779               ; $12:8B14: EE 79 07
LDA #$0F                ; $12:8B17: A9 0F
STA $077A               ; $12:8B19: 8D 7A 07
RTS                     ; $12:8B1C: 60

CODE_128B1D:
JSR CODE_1298DD         ; $12:8B1D: 20 DD 98

CODE_128B20:
INC $04BE               ; $12:8B20: EE BE 04
INC $041B               ; $12:8B23: EE 1B 04
JSL CODE_1287BC         ; $12:8B26: 22 BC 87 12
LDA #$0F                ; $12:8B2A: A9 0F
STA $1DE3               ; $12:8B2C: 8D E3 1D

CODE_128B2F:
RTS                     ; $12:8B2F: 60

CODE_128B30:
STZ $0778               ; $12:8B30: 9C 78 07
LDA $9C                 ; $12:8B33: A5 9C
BEQ CODE_128B2F         ; $12:8B35: F0 F8
LDY $042D               ; $12:8B37: AC 2D 04
LDA $0090,y             ; $12:8B3A: B9 90 00
CMP #$3D                ; $12:8B3D: C9 3D
BNE CODE_128B2F         ; $12:8B3F: D0 EE
INC $04B0               ; $12:8B41: EE B0 04
TYA                     ; $12:8B44: 98
TAX                     ; $12:8B45: AA
JSR CODE_1299C0         ; $12:8B46: 20 C0 99
JSR CODE_1298D9         ; $12:8B49: 20 D9 98
JMP CODE_128B20         ; $12:8B4C: 4C 20 8B

CODE_128B4F:
STZ $0778               ; $12:8B4F: 9C 78 07
INC $0627               ; $12:8B52: EE 27 06
RTS                     ; $12:8B55: 60

CODE_128B56:
STA $0F                 ; $12:8B56: 85 0F
TYA                     ; $12:8B58: 98
BMI CODE_128B6C         ; $12:8B59: 30 11
ASL A                   ; $12:8B5B: 0A
ASL A                   ; $12:8B5C: 0A
ASL A                   ; $12:8B5D: 0A
ASL A                   ; $12:8B5E: 0A
CLC                     ; $12:8B5F: 18
ADC $0F                 ; $12:8B60: 65 0F
BCS CODE_128B68         ; $12:8B62: B0 04
CMP #$F0                ; $12:8B64: C9 F0
BCC CODE_128B6C         ; $12:8B66: 90 04

CODE_128B68:
CLC                     ; $12:8B68: 18
ADC #$10                ; $12:8B69: 69 10
INY                     ; $12:8B6B: C8

CODE_128B6C:
RTS                     ; $12:8B6C: 60

CODE_128B6D:
LDY $01                 ; $12:8B6D: A4 01
LDA $E6                 ; $12:8B6F: A5 E6
JSR CODE_128B56         ; $12:8B71: 20 56 8B
STY $01                 ; $12:8B74: 84 01
STA $E6                 ; $12:8B76: 85 E6
LDY $EB                 ; $12:8B78: A4 EB
LDA $0001,y             ; $12:8B7A: B9 01 00
STA $E9                 ; $12:8B7D: 85 E9
LDA $02                 ; $12:8B7F: A5 02
CMP.w DATA_119BB7,y     ; $12:8B81: D9 B7 9B
BCS CODE_128B8B         ; $12:8B84: B0 05
LDA $01                 ; $12:8B86: A5 01
CMP.w DATA_119BB6,y     ; $12:8B88: D9 B6 9B

CODE_128B8B:
RTS                     ; $12:8B8B: 60
LDX $D8                 ; $12:8B8C: A6 D8
BNE CODE_128BBA         ; $12:8B8E: D0 2A
LDA $50                 ; $12:8B90: A5 50
CMP #$02                ; $12:8B92: C9 02
BCS CODE_128BBA         ; $12:8B94: B0 24
LDA $042B               ; $12:8B96: AD 2B 04
LDY $042A               ; $12:8B99: AC 2A 04
BMI CODE_128BA8         ; $12:8B9C: 30 0A
BNE CODE_128BAE         ; $12:8B9E: D0 0E
CMP #$B4                ; $12:8BA0: C9 B4
BCS CODE_128BAE         ; $12:8BA2: B0 0A
CMP #$21                ; $12:8BA4: C9 21
BCS CODE_128BB0         ; $12:8BA6: B0 08

CODE_128BA8:
LDY $99                 ; $12:8BA8: A4 99
BNE CODE_128BB0         ; $12:8BAA: D0 04
BEQ CODE_128BAF         ; $12:8BAC: F0 01

CODE_128BAE:
INX                     ; $12:8BAE: E8

CODE_128BAF:
INX                     ; $12:8BAF: E8

CODE_128BB0:
LDA $0425               ; $12:8BB0: AD 25 04
STX $0425               ; $12:8BB3: 8E 25 04
BNE CODE_128BBA         ; $12:8BB6: D0 02
STX $D8                 ; $12:8BB8: 86 D8

CODE_128BBA:
RTS                     ; $12:8BBA: 60

CODE_128BBB:
LDA $EB                 ; $12:8BBB: A5 EB
BEQ CODE_128BCC         ; $12:8BBD: F0 0D
LDA $0428               ; $12:8BBF: AD 28 04
LDY $6E                 ; $12:8BC2: A4 6E
CPY #$01                ; $12:8BC4: C0 01
BEQ CODE_128BCD         ; $12:8BC6: F0 05
CMP #$08                ; $12:8BC8: C9 08
BCC CODE_128BD1         ; $12:8BCA: 90 05

CODE_128BCC:
RTS                     ; $12:8BCC: 60

CODE_128BCD:
CMP #$E8                ; $12:8BCD: C9 E8
BCC CODE_128BCC         ; $12:8BCF: 90 FB

CODE_128BD1:
LDA $5A                 ; $12:8BD1: A5 5A
ORA.w DATA_119BB8,y     ; $12:8BD3: 19 B8 9B
STA $5A                 ; $12:8BD6: 85 5A

CODE_128BD8:
LDX #$00                ; $12:8BD8: A2 00
LDY $6E                 ; $12:8BDA: A4 6E
LDA $3C                 ; $12:8BDC: A5 3C
EOR.w DATA_119BBA,y     ; $12:8BDE: 59 BA 9B
BPL CODE_128BE5         ; $12:8BE1: 10 02
STX $3C                 ; $12:8BE3: 86 3C

CODE_128BE5:
LDA $04CC               ; $12:8BE5: AD CC 04
EOR.w DATA_119BBA,y     ; $12:8BE8: 59 BA 9B
BPL CODE_128BF0         ; $12:8BEB: 10 03
STX $04CC               ; $12:8BED: 8E CC 04

CODE_128BF0:
STX $0407               ; $12:8BF0: 8E 07 04
RTS                     ; $12:8BF3: 60

CODE_128BF4:
STX $0210               ; $12:8BF4: 8E 10 02
PHA                     ; $12:8BF7: 48
JSR CODE_1299DB         ; $12:8BF8: 20 DB 99
PLA                     ; $12:8BFB: 68
LDY $E7                 ; $12:8BFC: A4 E7
STA [$01],y             ; $12:8BFE: 97 01
PHA                     ; $12:8C00: 48
LDX $0300               ; $12:8C01: AE 00 03
LDA #$00                ; $12:8C04: A9 00
STA $0302,x             ; $12:8C06: 9D 02 03
LDA $EB                 ; $12:8C09: A5 EB
BNE CODE_128C14         ; $12:8C0B: D0 07
LDA $0212               ; $12:8C0D: AD 12 02
CLC                     ; $12:8C10: 18
ADC $E5                 ; $12:8C11: 65 E5
TAY                     ; $12:8C13: A8

CODE_128C14:
TYA                     ; $12:8C14: 98
AND #$F0                ; $12:8C15: 29 F0
ASL A                   ; $12:8C17: 0A
ROL $0302,x             ; $12:8C18: 3E 02 03
ASL A                   ; $12:8C1B: 0A
ROL $0302,x             ; $12:8C1C: 3E 02 03
STA $0303,x             ; $12:8C1F: 9D 03 03
TYA                     ; $12:8C22: 98
AND #$0F                ; $12:8C23: 29 0F
ASL A                   ; $12:8C25: 0A
ADC $0303,x             ; $12:8C26: 7D 03 03
STA $0303,x             ; $12:8C29: 9D 03 03
CLC                     ; $12:8C2C: 18
ADC #$20                ; $12:8C2D: 69 20
STA $030B,x             ; $12:8C2F: 9D 0B 03
PHX                     ; $12:8C32: DA
JSR CODE_128CAE         ; $12:8C33: 20 AE 8C
JSR CODE_128CFE         ; $12:8C36: 20 FE 8C
PLX                     ; $12:8C39: FA
LDA $0228               ; $12:8C3A: AD 28 02
BEQ CODE_128C4A         ; $12:8C3D: F0 0B
CPY #$00                ; $12:8C3F: C0 00
BEQ CODE_128C48         ; $12:8C41: F0 05
LDA $0302,x             ; $12:8C43: BD 02 03
BRA CODE_128C56         ; $12:8C46: 80 0E

CODE_128C48:
LDY #$01                ; $12:8C48: A0 01

CODE_128C4A:
LDA.w DATA_119BBD,y     ; $12:8C4A: B9 BD 9B
CLC                     ; $12:8C4D: 18
ADC $0302,x             ; $12:8C4E: 7D 02 03
AND #$0F                ; $12:8C51: 29 0F
STA $0302,x             ; $12:8C53: 9D 02 03

CODE_128C56:
STA $030A,x             ; $12:8C56: 9D 0A 03
REP #$20                ; $12:8C59: C2 20
LDA #$0300              ; $12:8C5B: A9 00 03
STA $0304,x             ; $12:8C5E: 9D 04 03
STA $030C,x             ; $12:8C61: 9D 0C 03
SEP #$20                ; $12:8C64: E2 20
PLA                     ; $12:8C66: 68
PHA                     ; $12:8C67: 48
AND #$C0                ; $12:8C68: 29 C0
ASL A                   ; $12:8C6A: 0A
ROL A                   ; $12:8C6B: 2A
ROL A                   ; $12:8C6C: 2A
TAY                     ; $12:8C6D: A8
LDA.w DATA_11AD64,y     ; $12:8C6E: B9 64 AD
STA $00                 ; $12:8C71: 85 00
LDA.w DATA_11AD68,y     ; $12:8C73: B9 68 AD

; Prepare pointer for the Layer 1 tilemap, page 0.
STA $01                 ; $12:8C76: 85 01
PLA                     ; $12:8C78: 68
REP #$30                ; $12:8C79: C2 30
AND #$003F              ; $12:8C7B: 29 3F 00
ASL A                   ; $12:8C7E: 0A
ASL A                   ; $12:8C7F: 0A
ASL A                   ; $12:8C80: 0A
TAY                     ; $12:8C81: A8
LDA ($00),y             ; $12:8C82: B1 00
STA $0306,x             ; $12:8C84: 9D 06 03
INY                     ; $12:8C87: C8
INY                     ; $12:8C88: C8
LDA ($00),y             ; $12:8C89: B1 00
STA $0308,x             ; $12:8C8B: 9D 08 03
INY                     ; $12:8C8E: C8
INY                     ; $12:8C8F: C8
LDA ($00),y             ; $12:8C90: B1 00
STA $030E,x             ; $12:8C92: 9D 0E 03
INY                     ; $12:8C95: C8
INY                     ; $12:8C96: C8
LDA ($00),y             ; $12:8C97: B1 00
STA $0310,x             ; $12:8C99: 9D 10 03
SEP #$30                ; $12:8C9C: E2 30
LDA #$FF                ; $12:8C9E: A9 FF
STA $0312,x             ; $12:8CA0: 9D 12 03
TXA                     ; $12:8CA3: 8A
CLC                     ; $12:8CA4: 18
ADC #$10                ; $12:8CA5: 69 10
STA $0300               ; $12:8CA7: 8D 00 03
LDX $0210               ; $12:8CAA: AE 10 02
RTL                     ; $12:8CAD: 6B

CODE_128CAE:
STZ $0228               ; $12:8CAE: 9C 28 02
LDA $EB                 ; $12:8CB1: A5 EB
BNE CODE_128CFD         ; $12:8CB3: D0 48
LDA $0535               ; $12:8CB5: AD 35 05
BEQ CODE_128CFD         ; $12:8CB8: F0 43
LSR A                   ; $12:8CBA: 4A
LSR A                   ; $12:8CBB: 4A
TAY                     ; $12:8CBC: A8
LDA $0303,x             ; $12:8CBD: BD 03 03
CLC                     ; $12:8CC0: 18
ADC.w DATA_119C14,y     ; $12:8CC1: 79 14 9C
STA $0303,x             ; $12:8CC4: 9D 03 03
BCC CODE_128CCC         ; $12:8CC7: 90 03
INC $0302,x             ; $12:8CC9: FE 02 03

CODE_128CCC:
CLC                     ; $12:8CCC: 18
ADC #$20                ; $12:8CCD: 69 20
STA $030B,x             ; $12:8CCF: 9D 0B 03
LDA $0302,x             ; $12:8CD2: BD 02 03
CLC                     ; $12:8CD5: 18
ADC.w DATA_119C11,y     ; $12:8CD6: 79 11 9C
CMP #$04                ; $12:8CD9: C9 04
BMI CODE_128CFA         ; $12:8CDB: 30 1D
CMP #$08                ; $12:8CDD: C9 08
BMI CODE_128CE7         ; $12:8CDF: 30 06
CMP #$0C                ; $12:8CE1: C9 0C
BPL CODE_128CF7         ; $12:8CE3: 10 12
BRA CODE_128CFA         ; $12:8CE5: 80 13

CODE_128CE7:
CLC                     ; $12:8CE7: 18
ADC #$04                ; $12:8CE8: 69 04
CMP #$0C                ; $12:8CEA: C9 0C
BPL CODE_128CFA         ; $12:8CEC: 10 0C
PHX                     ; $12:8CEE: DA
LDX #$01                ; $12:8CEF: A2 01
STX $0228               ; $12:8CF1: 8E 28 02
PLX                     ; $12:8CF4: FA
BRA CODE_128CFA         ; $12:8CF5: 80 03

CODE_128CF7:
SEC                     ; $12:8CF7: 38
SBC #$0C                ; $12:8CF8: E9 0C

CODE_128CFA:
STA $0302,x             ; $12:8CFA: 9D 02 03

CODE_128CFD:
RTS                     ; $12:8CFD: 60

CODE_128CFE:
LDA $EB                 ; $12:8CFE: A5 EB
ASL A                   ; $12:8D00: 0A
TAY                     ; $12:8D01: A8
BEQ CODE_128D0D         ; $12:8D02: F0 09
LDA $01                 ; $12:8D04: A5 01
AND #$10                ; $12:8D06: 29 10
BNE CODE_128D70         ; $12:8D08: D0 66
INY                     ; $12:8D0A: C8
BRA CODE_128D70         ; $12:8D0B: 80 63

CODE_128D0D:
JSR CODE_128F33         ; $12:8D0D: 20 33 8F
LDY #$00                ; $12:8D10: A0 00
REP #$20                ; $12:8D12: C2 20
LDA $00E7               ; $12:8D14: AD E7 00
AND #$00FF              ; $12:8D17: 29 FF 00
CLC                     ; $12:8D1A: 18
ADC $01                 ; $12:8D1B: 65 01
AND #$0FF0              ; $12:8D1D: 29 F0 0F
STA $0226               ; $12:8D20: 8D 26 02
LDA $0535               ; $12:8D23: AD 35 05
AND #$00FF              ; $12:8D26: 29 FF 00
BEQ CODE_128D2F         ; $12:8D29: F0 04
LSR A                   ; $12:8D2B: 4A
LSR A                   ; $12:8D2C: 4A
INC A                   ; $12:8D2D: 1A
ASL A                   ; $12:8D2E: 0A

CODE_128D2F:
TAX                     ; $12:8D2F: AA
LDA $0226               ; $12:8D30: AD 26 02
CMP.w DATA_119C09,x     ; $12:8D33: DD 09 9C
BCS CODE_128D41         ; $12:8D36: B0 09
CLC                     ; $12:8D38: 18
ADC #$0200              ; $12:8D39: 69 00 02
STA $0226               ; $12:8D3C: 8D 26 02
BRA CODE_128D4F         ; $12:8D3F: 80 0E

CODE_128D41:
CMP.w DATA_119C01,x     ; $12:8D41: DD 01 9C
BMI CODE_128D4F         ; $12:8D44: 30 09
SEC                     ; $12:8D46: 38
SBC #$0200              ; $12:8D47: E9 00 02
STA $0226               ; $12:8D4A: 8D 26 02
BRA CODE_128D41         ; $12:8D4D: 80 F2

CODE_128D4F:
TXA                     ; $12:8D4F: 8A
AND #$00FF              ; $12:8D50: 29 FF 00
ASL A                   ; $12:8D53: 0A
ASL A                   ; $12:8D54: 0A
ASL A                   ; $12:8D55: 0A
TAX                     ; $12:8D56: AA
LDA $0226               ; $12:8D57: AD 26 02

CODE_128D5A:
CMP.w DATA_119BC1,x     ; $12:8D5A: DD C1 9B
BMI CODE_128D64         ; $12:8D5D: 30 05
INX                     ; $12:8D5F: E8
INX                     ; $12:8D60: E8
INY                     ; $12:8D61: C8
BRA CODE_128D5A         ; $12:8D62: 80 F6

CODE_128D64:
TYA                     ; $12:8D64: 98
AND #$00FF              ; $12:8D65: 29 FF 00
LSR A                   ; $12:8D68: 4A
LSR A                   ; $12:8D69: 4A
EOR #$0001              ; $12:8D6A: 49 01 00
TAY                     ; $12:8D6D: A8
SEP #$20                ; $12:8D6E: E2 20

CODE_128D70:
RTS                     ; $12:8D70: 60

CODE_128D71:
LDA $0511               ; $12:8D71: AD 11 05
STA $14                 ; $12:8D74: 85 14
LDA $0513               ; $12:8D76: AD 13 05
STA $28                 ; $12:8D79: 85 28
LDA $0512               ; $12:8D7B: AD 12 05
STA $1E                 ; $12:8D7E: 85 1E
LDA $0514               ; $12:8D80: AD 14 05
STA $32                 ; $12:8D83: 85 32
LDA $28                 ; $12:8D85: A5 28
SEC                     ; $12:8D87: 38
SBC $04C1               ; $12:8D88: ED C1 04
STA $0428               ; $12:8D8B: 8D 28 04
LDA $32                 ; $12:8D8E: A5 32
SEC                     ; $12:8D90: 38
SBC $CB                 ; $12:8D91: E5 CB
STA $042B               ; $12:8D93: 8D 2B 04
LDA $1E                 ; $12:8D96: A5 1E
SBC $CA                 ; $12:8D98: E5 CA
STA $042A               ; $12:8D9A: 8D 2A 04
LDA $0536               ; $12:8D9D: AD 36 05
SEC                     ; $12:8DA0: 38
SBC #$04                ; $12:8DA1: E9 04
BNE CODE_128DB5         ; $12:8DA3: D0 10
STA $50                 ; $12:8DA5: 85 50
STA $041B               ; $12:8DA7: 8D 1B 04
STA $04B7               ; $12:8DAA: 8D B7 04
JSR CODE_1298DD         ; $12:8DAD: 20 DD 98
LDA #$0A                ; $12:8DB0: A9 0A
STA $04B3               ; $12:8DB2: 8D B3 04

CODE_128DB5:
RTL                     ; $12:8DB5: 6B

CODE_128DB6:
LDA $0536               ; $12:8DB6: AD 36 05
CMP #$02                ; $12:8DB9: C9 02
BNE CODE_128DC9         ; $12:8DBB: D0 0C
LDA $04EF               ; $12:8DBD: AD EF 04
BNE CODE_128DC9         ; $12:8DC0: D0 07
JSL CODE_128D71         ; $12:8DC2: 22 71 8D 12
JMP CODE_128E0D         ; $12:8DC6: 4C 0D 8E

CODE_128DC9:
LDA $0535               ; $12:8DC9: AD 35 05
LDY #$00                ; $12:8DCC: A0 00
LDX $EB                 ; $12:8DCE: A6 EB
BNE CODE_128DD8         ; $12:8DD0: D0 06
STY $14                 ; $12:8DD2: 84 14
STA $1E                 ; $12:8DD4: 85 1E
BEQ CODE_128DDC         ; $12:8DD6: F0 04

CODE_128DD8:
STA $14                 ; $12:8DD8: 85 14
STY $1E                 ; $12:8DDA: 84 1E

CODE_128DDC:
JSR CODE_128E15         ; $12:8DDC: 20 15 8E
LDY $1E                 ; $12:8DDF: A4 1E
LDA $32                 ; $12:8DE1: A5 32
JSL CODE_128F1F         ; $12:8DE3: 22 1F 8F 12
STY $1E                 ; $12:8DE7: 84 1E
STA $32                 ; $12:8DE9: 85 32
LDA $28                 ; $12:8DEB: A5 28
SEC                     ; $12:8DED: 38
SBC $04C1               ; $12:8DEE: ED C1 04
STA $0428               ; $12:8DF1: 8D 28 04
LDA $32                 ; $12:8DF4: A5 32
SEC                     ; $12:8DF6: 38
SBC $CB                 ; $12:8DF7: E5 CB
STA $042B               ; $12:8DF9: 8D 2B 04
LDA $1E                 ; $12:8DFC: A5 1E
SBC $CA                 ; $12:8DFE: E5 CA
STA $042A               ; $12:8E00: 8D 2A 04
LDA $0536               ; $12:8E03: AD 36 05
CMP #$04                ; $12:8E06: C9 04
BNE CODE_128E0D         ; $12:8E08: D0 03
JSR CODE_1298DD         ; $12:8E0A: 20 DD 98

CODE_128E0D:
LDA $28                 ; $12:8E0D: A5 28
SEC                     ; $12:8E0F: 38
SBC #$78                ; $12:8E10: E9 78
STA $BA                 ; $12:8E12: 85 BA
RTL                     ; $12:8E14: 6B

CODE_128E15:
LDA $0536               ; $12:8E15: AD 36 05
JSL CODE_118776         ; $12:8E18: 22 76 87 11
dw CODE_128E28
dw CODE_128E60
dw CODE_128ECD
dw CODE_128EDA
dw CODE_128EFC
dw CODE_128F17

CODE_128E28:
LDA #$01                ; $12:8E28: A9 01
STA $9D                 ; $12:8E2A: 85 9D
JSR CODE_128ED1         ; $12:8E2C: 20 D1 8E
LSR A                   ; $12:8E2F: 4A
LSR A                   ; $12:8E30: 4A
LSR A                   ; $12:8E31: 4A
LSR A                   ; $12:8E32: 4A
STA $E5                 ; $12:8E33: 85 E5
LDA #$D0                ; $12:8E35: A9 D0

; Player Y position = #$D0.
STA $32                 ; $12:8E37: 85 32
STA $E6                 ; $12:8E39: 85 E6
LDA $0535               ; $12:8E3B: AD 35 05
STA $E9                 ; $12:8E3E: 85 E9
LDA #$0C                ; $12:8E40: A9 0C
STA $04                 ; $12:8E42: 85 04

CODE_128E44:
JSR CODE_1299DB         ; $12:8E44: 20 DB 99
LDY $E7                 ; $12:8E47: A4 E7
LDA [$01],y             ; $12:8E49: B7 01
CMP #$40                ; $12:8E4B: C9 40

; If tile is...
; a blank tile...
; Skip, don't JSR.
BEQ CODE_128E58         ; $12:8E4D: F0 09
JSR CODE_128E58         ; $12:8E4F: 20 58 8E
STA $E6                 ; $12:8E52: 85 E6
DEC $04                 ; $12:8E54: C6 04
BNE CODE_128E44         ; $12:8E56: D0 EC

CODE_128E58:
LDA $32                 ; $12:8E58: A5 32
SEC                     ; $12:8E5A: 38
SBC #$10                ; $12:8E5B: E9 10
STA $32                 ; $12:8E5D: 85 32
RTS                     ; $12:8E5F: 60

CODE_128E60:
LDA $28                 ; $12:8E60: A5 28
CLC                     ; $12:8E62: 18
ADC #$08                ; $12:8E63: 69 08
AND #$F0                ; $12:8E65: 29 F0
EOR #$F0                ; $12:8E67: 49 F0
STA $28                 ; $12:8E69: 85 28
LSR A                   ; $12:8E6B: 4A
LSR A                   ; $12:8E6C: 4A
LSR A                   ; $12:8E6D: 4A
LSR A                   ; $12:8E6E: 4A
STA $E5                 ; $12:8E6F: 85 E5
LDA #$E0                ; $12:8E71: A9 E0
STA $32                 ; $12:8E73: 85 32
STA $E6                 ; $12:8E75: 85 E6
LDA $0535               ; $12:8E77: AD 35 05
STA $E9                 ; $12:8E7A: 85 E9
LDA #$0D                ; $12:8E7C: A9 0D
STA $0715               ; $12:8E7E: 8D 15 07

CODE_128E81:
JSR CODE_1299DB         ; $12:8E81: 20 DB 99
REP #$20                ; $12:8E84: C2 20
LDA $01                 ; $12:8E86: A5 01
CLC                     ; $12:8E88: 18
ADC #$7000              ; $12:8E89: 69 00 70
STA $C4                 ; $12:8E8C: 85 C4
SEP #$20                ; $12:8E8E: E2 20
LDA $03                 ; $12:8E90: A5 03
STA $C6                 ; $12:8E92: 85 C6
LDY $E7                 ; $12:8E94: A4 E7
LDA [$C4],y             ; $12:8E96: B7 C4
STA $0712               ; $12:8E98: 8D 12 07
LDA [$01],y             ; $12:8E9B: B7 01
LDY #$08                ; $12:8E9D: A0 08

CODE_128E9F:
CMP.w DATA_119BAD,y     ; $12:8E9F: D9 AD 9B
BNE CODE_128EB1         ; $12:8EA2: D0 0D
CMP #$2A                ; $12:8EA4: C9 2A
BEQ CODE_128EAC         ; $12:8EA6: F0 04
CMP #$2B                ; $12:8EA8: C9 2B
BNE CODE_128EC4         ; $12:8EAA: D0 18

CODE_128EAC:
LDA $0712               ; $12:8EAC: AD 12 07
BNE CODE_128EC4         ; $12:8EAF: D0 13

CODE_128EB1:
DEY                     ; $12:8EB1: 88
BNE CODE_128E9F         ; $12:8EB2: D0 EB
DEC $0715               ; $12:8EB4: CE 15 07
BEQ CODE_128EC1         ; $12:8EB7: F0 08
JSR CODE_128E58         ; $12:8EB9: 20 58 8E
STA $E6                 ; $12:8EBC: 85 E6
JMP CODE_128E81         ; $12:8EBE: 4C 81 8E

CODE_128EC1:
JSR CODE_128ED1         ; $12:8EC1: 20 D1 8E

CODE_128EC4:
JSR CODE_128E58         ; $12:8EC4: 20 58 8E
LDA #$00                ; $12:8EC7: A9 00
STA $041B               ; $12:8EC9: 8D 1B 04
RTS                     ; $12:8ECC: 60

CODE_128ECD:
LDA #$00                ; $12:8ECD: A9 00
STA $32                 ; $12:8ECF: 85 32

CODE_128ED1:
LDA #$01                ; $12:8ED1: A9 01
STA $99                 ; $12:8ED3: 85 99
LDA #$78                ; $12:8ED5: A9 78
STA $28                 ; $12:8ED7: 85 28
RTS                     ; $12:8ED9: 60

CODE_128EDA:
LDA $28                 ; $12:8EDA: A5 28
CLC                     ; $12:8EDC: 18
ADC #$08                ; $12:8EDD: 69 08
AND #$F0                ; $12:8EDF: 29 F0
EOR #$F0                ; $12:8EE1: 49 F0
STA $28                 ; $12:8EE3: 85 28
LDA $042B               ; $12:8EE5: AD 2B 04
CLC                     ; $12:8EE8: 18
ADC #$08                ; $12:8EE9: 69 08
AND #$F0                ; $12:8EEB: 29 F0
EOR #$10                ; $12:8EED: 49 10
STA $32                 ; $12:8EEF: 85 32
CMP #$F0                ; $12:8EF1: C9 F0
BEQ CODE_128EF7         ; $12:8EF3: F0 02
DEC $1E                 ; $12:8EF5: C6 1E

CODE_128EF7:
LDA #$0A                ; $12:8EF7: A9 0A
STA $C7                 ; $12:8EF9: 85 C7
RTS                     ; $12:8EFB: 60

CODE_128EFC:
LDA $0428               ; $12:8EFC: AD 28 04
SEC                     ; $12:8EFF: 38
SBC $BA                 ; $12:8F00: E5 BA
EOR #$FF                ; $12:8F02: 49 FF
CLC                     ; $12:8F04: 18
ADC #$F1                ; $12:8F05: 69 F1
STA $28                 ; $12:8F07: 85 28
LDA $042B               ; $12:8F09: AD 2B 04
STA $32                 ; $12:8F0C: 85 32
DEC $041B               ; $12:8F0E: CE 1B 04
LDA #$60                ; $12:8F11: A9 60

; How long the potion room lasts.
STA $04B7               ; $12:8F13: 8D B7 04
RTS                     ; $12:8F16: 60

CODE_128F17:
JSR CODE_128ED1         ; $12:8F17: 20 D1 8E
LDA #$60                ; $12:8F1A: A9 60
STA $32                 ; $12:8F1C: 85 32
RTS                     ; $12:8F1E: 60

CODE_128F1F:
CPY #$00                ; $12:8F1F: C0 00
BMI CODE_128F32         ; $12:8F21: 30 0F
PHA                     ; $12:8F23: 48
TYA                     ; $12:8F24: 98
ASL A                   ; $12:8F25: 0A
ASL A                   ; $12:8F26: 0A
ASL A                   ; $12:8F27: 0A
ASL A                   ; $12:8F28: 0A
STA $0F                 ; $12:8F29: 85 0F
PLA                     ; $12:8F2B: 68
SEC                     ; $12:8F2C: 38
SBC $0F                 ; $12:8F2D: E5 0F
BCS CODE_128F32         ; $12:8F2F: B0 01
DEY                     ; $12:8F31: 88

CODE_128F32:
RTL                     ; $12:8F32: 6B

CODE_128F33:
LDX $E9                 ; $12:8F33: A6 E9
LDA $0534               ; $12:8F35: AD 34 05
ASL A                   ; $12:8F38: 0A
ASL A                   ; $12:8F39: 0A
ASL A                   ; $12:8F3A: 0A
ASL A                   ; $12:8F3B: 0A
CLC                     ; $12:8F3C: 18
ADC.w DATA_11AAFB,x     ; $12:8F3D: 7D FB AA
STA $02                 ; $12:8F40: 85 02
LDA.w DATA_11AAF0,x     ; $12:8F42: BD F0 AA
STA $01                 ; $12:8F45: 85 01
RTS                     ; $12:8F47: 60

CODE_128F48:
JSL CODE_1387D8         ; $12:8F48: 22 D8 87 13
JSL CODE_138846         ; $12:8F4C: 22 46 88 13

CODE_128F50:
LDA #$FF                ; $12:8F50: A9 FF
STA $0302               ; $12:8F52: 8D 02 03
STA $7F0002             ; $12:8F55: 8F 02 00 7F
LDA #$13                ; $12:8F59: A9 13
STA $0243               ; $12:8F5B: 8D 43 02
LDA #$03                ; $12:8F5E: A9 03
STA $024C               ; $12:8F60: 8D 4C 02
LDA #$02                ; $12:8F63: A9 02
STA $0775               ; $12:8F65: 8D 75 07
JSL CODE_14F953         ; $12:8F68: 22 53 F9 14
JSL CODE_13DC5E         ; $12:8F6C: 22 5E DC 13
LDA #$40                ; $12:8F70: A9 40
STA $0100               ; $12:8F72: 8D 00 01
LDA #$80                ; $12:8F75: A9 80
STA $FF                 ; $12:8F77: 85 FF
STA $FE                 ; $12:8F79: 85 FE
LDA #$81                ; $12:8F7B: A9 81
STA $4200               ; $12:8F7D: 8D 00 42
JSL CODE_14F908         ; $12:8F80: 22 08 F9 14
LDA #$01                ; $12:8F84: A9 01
STA $11                 ; $12:8F86: 85 11

; Load border of the 'Super Mario Bros 2.' intro screen.
JSL CODE_14F908         ; $12:8F88: 22 08 F9 14
LDA #$02                ; $12:8F8C: A9 02
STA $11                 ; $12:8F8E: 85 11

; Load 'Super Mario Bros. 2' and '�1988-1992 Nintendo.'
JSL CODE_14F908         ; $12:8F90: 22 08 F9 14
JSL CODE_14D84E         ; $12:8F94: 22 4E D8 14
LDA #$11                ; $12:8F98: A9 11

; Story music.
STA $1DE2               ; $12:8F9A: 8D E2 1D
JSL CODE_1195D1         ; $12:8F9D: 22 D1 95 11
LDA #$03                ; $12:8FA1: A9 03
STA $10                 ; $12:8FA3: 85 10
LDA #$25                ; $12:8FA5: A9 25
STA $0210               ; $12:8FA7: 8D 10 02
LDA #$0C                ; $12:8FAA: A9 0C
STA $14                 ; $12:8FAC: 85 14
LDA #$A7                ; $12:8FAE: A9 A7
STA $15                 ; $12:8FB0: 85 15
LDA #$62                ; $12:8FB2: A9 62
STA $16                 ; $12:8FB4: 85 16
STZ $19                 ; $12:8FB6: 64 19
STZ $17                 ; $12:8FB8: 64 17
STZ $18                 ; $12:8FBA: 64 18
STZ $1A                 ; $12:8FBC: 64 1A

CODE_128FBE:
JSL CODE_14F908         ; $12:8FBE: 22 08 F9 14
LDA $17                 ; $12:8FC2: A5 17
BNE CODE_12900E         ; $12:8FC4: D0 48

CODE_128FC6:
INC $10                 ; $12:8FC6: E6 10
LDA $10                 ; $12:8FC8: A5 10
AND #$0F                ; $12:8FCA: 29 0F
BEQ CODE_128FD1         ; $12:8FCC: F0 03

CODE_128FCE:
BRL CODE_129069         ; $12:8FCE: 82 98 00

CODE_128FD1:
DEC $0210               ; $12:8FD1: CE 10 02
LDA $0210               ; $12:8FD4: AD 10 02
CMP #$06                ; $12:8FD7: C9 06
BNE CODE_128FCE         ; $12:8FD9: D0 F3
INC $17                 ; $12:8FDB: E6 17
LDA $14                 ; $12:8FDD: A5 14
STA $0302               ; $12:8FDF: 8D 02 03
LDA $15                 ; $12:8FE2: A5 15
STA $0303               ; $12:8FE4: 8D 03 03
LDA $16                 ; $12:8FE7: A5 16
AND #$C0                ; $12:8FE9: 29 C0
STA $0304               ; $12:8FEB: 8D 04 03
LDA $16                 ; $12:8FEE: A5 16
AND #$3F                ; $12:8FF0: 29 3F
STA $0305               ; $12:8FF2: 8D 05 03
LDA #$C6                ; $12:8FF5: A9 C6
STA $15                 ; $12:8FF7: 85 15
LDA #$66                ; $12:8FF9: A9 66
STA $16                 ; $12:8FFB: 85 16
LDA #$BD                ; $12:8FFD: A9 BD
STA $0306               ; $12:8FFF: 8D 06 03
LDA #$09                ; $12:9002: A9 09
STA $0307               ; $12:9004: 8D 07 03
LDA #$FF                ; $12:9007: A9 FF
STA $0308               ; $12:9009: 8D 08 03
BRA CODE_129069         ; $12:900C: 80 5B

CODE_12900E:
LDA $14                 ; $12:900E: A5 14
STA $0302               ; $12:9010: 8D 02 03
LDA $15                 ; $12:9013: A5 15
STA $0303               ; $12:9015: 8D 03 03
LDA $16                 ; $12:9018: A5 16
AND #$C0                ; $12:901A: 29 C0
STA $0304               ; $12:901C: 8D 04 03
LDA $16                 ; $12:901F: A5 16
AND #$3F                ; $12:9021: 29 3F
STA $0305               ; $12:9023: 8D 05 03
LDA #$BD                ; $12:9026: A9 BD
STA $0306               ; $12:9028: 8D 06 03
LDA #$09                ; $12:902B: A9 09
STA $0307               ; $12:902D: 8D 07 03
LDA #$FF                ; $12:9030: A9 FF
STA $0308               ; $12:9032: 8D 08 03
LDA $14                 ; $12:9035: A5 14
CMP #$0D                ; $12:9037: C9 0D
BNE CODE_129046         ; $12:9039: D0 0B
LDA $15                 ; $12:903B: A5 15
CMP #$E0                ; $12:903D: C9 E0
BCS CODE_129046         ; $12:903F: B0 05
LDA #$28                ; $12:9041: A9 28
STA $0305               ; $12:9043: 8D 05 03

CODE_129046:
LDA $15                 ; $12:9046: A5 15
CLC                     ; $12:9048: 18
ADC #$20                ; $12:9049: 69 20
STA $15                 ; $12:904B: 85 15
LDA $14                 ; $12:904D: A5 14
ADC #$00                ; $12:904F: 69 00
STA $14                 ; $12:9051: 85 14
CMP #$0E                ; $12:9053: C9 0E
BNE CODE_129069         ; $12:9055: D0 12
LDA $15                 ; $12:9057: A5 15
AND #$F0                ; $12:9059: 29 F0
CMP #$E0                ; $12:905B: C9 E0
BNE CODE_129069         ; $12:905D: D0 0A
LDA #$20                ; $12:905F: A9 20
STA $10                 ; $12:9061: 85 10
JSL CODE_14F908         ; $12:9063: 22 08 F9 14
BRA CODE_12908D         ; $12:9067: 80 24

CODE_129069:
LDA $FA                 ; $12:9069: A5 FA
AND #$10                ; $12:906B: 29 10
BEQ CODE_129072         ; $12:906D: F0 03
BRL CODE_12916C         ; $12:906F: 82 FA 00

CODE_129072:
LDA $FC                 ; $12:9072: A5 FC
AND #$40                ; $12:9074: 29 40
STA $0712               ; $12:9076: 8D 12 07
LDA $FA                 ; $12:9079: A5 FA
AND #$40                ; $12:907B: 29 40
ORA $0712               ; $12:907D: 0D 12 07
BEQ CODE_12908A         ; $12:9080: F0 08
JSL CODE_1195C0         ; $12:9082: 22 C0 95 11
JML CODE_0080DE         ; $12:9086: 5C DE 80 00

CODE_12908A:
BRL CODE_128FBE         ; $12:908A: 82 31 FF

CODE_12908D:
JSL CODE_14F908         ; $12:908D: 22 08 F9 14
LDA $19                 ; $12:9091: A5 19
BEQ CODE_129098         ; $12:9093: F0 03
BRL CODE_129166         ; $12:9095: 82 CE 00

CODE_129098:
LDA $18                 ; $12:9098: A5 18
CMP #$09                ; $12:909A: C9 09
BEQ CODE_1290D1         ; $12:909C: F0 33
LDA $18                 ; $12:909E: A5 18
BNE CODE_1290E2         ; $12:90A0: D0 40
DEC $10                 ; $12:90A2: C6 10
BMI CODE_1290A9         ; $12:90A4: 30 03
BRL CODE_129166         ; $12:90A6: 82 BD 00

CODE_1290A9:
LDA #$0C                ; $12:90A9: A9 0C
STA $0302               ; $12:90AB: 8D 02 03
LDA #$8E                ; $12:90AE: A9 8E
STA $0303               ; $12:90B0: 8D 03 03
STZ $0304               ; $12:90B3: 9C 04 03
LDA #$09                ; $12:90B6: A9 09
STA $0305               ; $12:90B8: 8D 05 03
LDX #$08                ; $12:90BB: A2 08

CODE_1290BD:
REP #$20                ; $12:90BD: C2 20
LDA.l DATA_15E835,x     ; $12:90BF: BF 35 E8 15
STA $0306,x             ; $12:90C3: 9D 06 03
SEP #$20                ; $12:90C6: E2 20
DEX                     ; $12:90C8: CA
DEX                     ; $12:90C9: CA
BPL CODE_1290BD         ; $12:90CA: 10 F1
LDA #$FF                ; $12:90CC: A9 FF
STA $0310               ; $12:90CE: 8D 10 03

CODE_1290D1:
INC $18                 ; $12:90D1: E6 18
LDA #$0C                ; $12:90D3: A9 0C
STA $14                 ; $12:90D5: 85 14
LDA #$E6                ; $12:90D7: A9 E6
STA $15                 ; $12:90D9: 85 15
LDA #$40                ; $12:90DB: A9 40
STA $1A                 ; $12:90DD: 85 1A

CODE_1290DF:
BRL CODE_129166         ; $12:90DF: 82 84 00

CODE_1290E2:
DEC $1A                 ; $12:90E2: C6 1A

; If timer is not positive (00-7F)...
; Load next line.
BPL CODE_1290DF         ; $12:90E4: 10 F9
LDA #$40                ; $12:90E6: A9 40

; Amount of frames to wait for next line = #$40
STA $1A                 ; $12:90E8: 85 1A
LDA $14                 ; $12:90EA: A5 14
STA $0302               ; $12:90EC: 8D 02 03
LDA $15                 ; $12:90EF: A5 15
STA $0303               ; $12:90F1: 8D 03 03
STZ $0304               ; $12:90F4: 9C 04 03
LDA #$27                ; $12:90F7: A9 27
STA $0305               ; $12:90F9: 8D 05 03
LDX $18                 ; $12:90FC: A6 18
DEX                     ; $12:90FE: CA
LDA #$15                ; $12:90FF: A9 15
STA $05                 ; $12:9101: 85 05
LDA.l PNTR_15E83F,x     ; $12:9103: BF 3F E8 15
STA $04                 ; $12:9107: 85 04
LDA.l PNTR_15E850,x     ; $12:9109: BF 50 E8 15

; Bank num = $15.
;
; Get address of tables...
; ...which contain the 'Story' data...
; into [$03]
STA $03                 ; $12:910D: 85 03
LDY #$00                ; $12:910F: A0 00
LDX #$13                ; $12:9111: A2 13

CODE_129113:
REP #$20                ; $12:9113: C2 20
LDA [$03],y             ; $12:9115: B7 03
STA $0306,y             ; $12:9117: 99 06 03
SEP #$20                ; $12:911A: E2 20
INY                     ; $12:911C: C8
INY                     ; $12:911D: C8
DEX                     ; $12:911E: CA
BPL CODE_129113         ; $12:911F: 10 F2
LDA #$FF                ; $12:9121: A9 FF
STA $0306,y             ; $12:9123: 99 06 03
INC $18                 ; $12:9126: E6 18
LDA $15                 ; $12:9128: A5 15
CLC                     ; $12:912A: 18
ADC #$40                ; $12:912B: 69 40
STA $15                 ; $12:912D: 85 15
LDA $14                 ; $12:912F: A5 14
ADC #$00                ; $12:9131: 69 00
STA $14                 ; $12:9133: 85 14
LDA $18                 ; $12:9135: A5 18
CMP #$09                ; $12:9137: C9 09
BCC CODE_129166         ; $12:9139: 90 2B
BNE CODE_129157         ; $12:913B: D0 1A
LDA #$09                ; $12:913D: A9 09
STA $0210               ; $12:913F: 8D 10 02
LDA #$03                ; $12:9142: A9 03
STA $10                 ; $12:9144: 85 10
LDA #$0C                ; $12:9146: A9 0C
STA $14                 ; $12:9148: 85 14
LDA #$A7                ; $12:914A: A9 A7
STA $15                 ; $12:914C: 85 15
LDA #$62                ; $12:914E: A9 62
STA $16                 ; $12:9150: 85 16
STZ $17                 ; $12:9152: 64 17
BRL CODE_128FC6         ; $12:9154: 82 6F FE

CODE_129157:
CMP #$12                ; $12:9157: C9 12
BCC CODE_129166         ; $12:9159: 90 0B
INC $19                 ; $12:915B: E6 19
LDA #$25                ; $12:915D: A9 25
STA $0210               ; $12:915F: 8D 10 02
LDA #$03                ; $12:9162: A9 03
STA $10                 ; $12:9164: 85 10

CODE_129166:
LDA $FA                 ; $12:9166: A5 FA
AND #$10                ; $12:9168: 29 10
BEQ CODE_129192         ; $12:916A: F0 26

CODE_12916C:
LDA #$80                ; $12:916C: A9 80
STA $1DE2               ; $12:916E: 8D E2 1D
JSL CODE_14F908         ; $12:9171: 22 08 F9 14
LDA $701FF2             ; $12:9175: AF F2 1F 70
BEQ CODE_12917D         ; $12:9179: F0 02
BRA CODE_1291A2         ; $12:917B: 80 25

CODE_12917D:
LDA #$29                ; $12:917D: A9 29
STA $1DE3               ; $12:917F: 8D E3 1D
LDA #$00                ; $12:9182: A9 00
TAY                     ; $12:9184: A8

CODE_129185:
STA $0000,y             ; $12:9185: 99 00 00
INY                     ; $12:9188: C8
CPY #$F0                ; $12:9189: C0 F0
BCC CODE_129185         ; $12:918B: 90 F8

; Clear all OAM.
JSL CODE_14F9F0         ; $12:918D: 22 F0 F9 14
RTL                     ; $12:9191: 6B

CODE_129192:
LDA $FC                 ; $12:9192: A5 FC
AND #$40                ; $12:9194: 29 40
STA $0712               ; $12:9196: 8D 12 07
LDA $FA                 ; $12:9199: A5 FA
AND #$40                ; $12:919B: 29 40
ORA $0712               ; $12:919D: 0D 12 07
BEQ CODE_1291AA         ; $12:91A0: F0 08

CODE_1291A2:
JSL CODE_1195C0         ; $12:91A2: 22 C0 95 11
JML CODE_0080DE         ; $12:91A6: 5C DE 80 00

CODE_1291AA:
LDA $19                 ; $12:91AA: A5 19
BEQ CODE_1291C2         ; $12:91AC: F0 14
INC $10                 ; $12:91AE: E6 10
LDA $10                 ; $12:91B0: A5 10
AND #$0F                ; $12:91B2: 29 0F
BNE CODE_1291C2         ; $12:91B4: D0 0C
DEC $0210               ; $12:91B6: CE 10 02
LDA $0210               ; $12:91B9: AD 10 02
CMP #$14                ; $12:91BC: C9 14
BNE CODE_1291C2         ; $12:91BE: D0 02
BEQ CODE_1291C5         ; $12:91C0: F0 03

CODE_1291C2:
BRL CODE_12908D         ; $12:91C2: 82 C8 FE

CODE_1291C5:
JSL CODE_1195C0         ; $12:91C5: 22 C0 95 11
JSL CODE_14F900         ; $12:91C9: 22 00 F9 14
STZ $4200               ; $12:91CD: 9C 00 42
LDA $701FF2             ; $12:91D0: AF F2 1F 70
BEQ CODE_1291DA         ; $12:91D4: F0 04
JML CODE_008139         ; $12:91D6: 5C 39 81 00

CODE_1291DA:
BRL CODE_128F50         ; $12:91DA: 82 73 FD

; Empty data.
db $FF,$FF,$FF,$FF,$FF,$FF,$FF

; Force blank.

CODE_1291E4:
LDA #$80                ; $12:91E4: A9 80
BRA CODE_1291EA         ; $12:91E6: 80 02
LDA #$0F                ; $12:91E8: A9 0F

; Full brightness.

CODE_1291EA:
STA $FE                 ; $12:91EA: 85 FE

CODE_1291EC:
LDA $11                 ; $12:91EC: A5 11
ASL A                   ; $12:91EE: 0A
TAX                     ; $12:91EF: AA
LDA.w PNTR_119C17,x     ; $12:91F0: BD 17 9C
STA $F0                 ; $12:91F3: 85 F0
LDA.w PNTR_119C17+1,x   ; $12:91F5: BD 18 9C
STA $F1                 ; $12:91F8: 85 F1
LDA #$11                ; $12:91FA: A9 11
STA $F2                 ; $12:91FC: 85 F2
STZ $0154               ; $12:91FE: 9C 54 01

CODE_129201:
LDA $0154               ; $12:9201: AD 54 01
BPL CODE_129201         ; $12:9204: 10 FB
JSL CODE_14FA99         ; $12:9206: 22 99 FA 14
CLI                     ; $12:920A: 58
RTS                     ; $12:920B: 60

CODE_12920C:
STZ $E6                 ; $12:920C: 64 E6

CODE_12920E:
JSR CODE_1291EC         ; $12:920E: 20 EC 91
JSR CODE_129510         ; $12:9211: 20 10 95
LDA $E6                 ; $12:9214: A5 E6
BEQ CODE_12920E         ; $12:9216: F0 F6
JSL CODE_14F92E         ; $12:9218: 22 2E F9 14
JSL CODE_14F953         ; $12:921C: 22 53 F9 14
JSL CODE_138887         ; $12:9220: 22 87 88 13
JSL CODE_13E25B         ; $12:9224: 22 5B E2 13
JSL CODE_14D9CD         ; $12:9228: 22 CD D9 14
LDA #$40                ; $12:922C: A9 40
STA $0100               ; $12:922E: 8D 00 01
LDA #$B0                ; $12:9231: A9 B0
STA $FF                 ; $12:9233: 85 FF
JSR CODE_1291EC         ; $12:9235: 20 EC 91
LDA #$01                ; $12:9238: A9 01
STA $11                 ; $12:923A: 85 11
JSR CODE_1291EC         ; $12:923C: 20 EC 91
LDA #$01                ; $12:923F: A9 01
STA $E5                 ; $12:9241: 85 E5
LDA #$60                ; $12:9243: A9 60

; Amount of frames the 'pulling fairies out of jar' cutscene is going to take.
STA $83                 ; $12:9245: 85 83
LDA #$01                ; $12:9247: A9 01

; Player direction to face.
STA $9D                 ; $12:9249: 85 9D
STA $078D               ; $12:924B: 8D 8D 07
STZ $50                 ; $12:924E: 64 50
STZ $8E                 ; $12:9250: 64 8E
STZ $04CB               ; $12:9252: 9C CB 04
STZ $E6                 ; $12:9255: 64 E6
STZ $0400               ; $12:9257: 9C 00 04
LDX #$09                ; $12:925A: A2 09

CODE_12925C:
LDA.w DATA_11A3EC,x     ; $12:925C: BD EC A3
STA $28,x               ; $12:925F: 95 28
LDA.w DATA_11A3F6,x     ; $12:9261: BD F6 A3
STA $32,x               ; $12:9264: 95 32
LDA.w DATA_11A400,x     ; $12:9266: BD 00 A4
STA $3C,x               ; $12:9269: 95 3C
LDA.w DATA_11A40A,x     ; $12:926B: BD 0A A4
STA $46,x               ; $12:926E: 95 46
LDA.w DATA_11A414,x     ; $12:9270: BD 14 A4
STA $85,x               ; $12:9273: 95 85
LDA.w DATA_11A41E,x     ; $12:9275: BD 1E A4
STA $64,x               ; $12:9278: 95 64
DEX                     ; $12:927A: CA
BPL CODE_12925C         ; $12:927B: 10 DF
STZ $FE                 ; $12:927D: 64 FE

CODE_12927F:
JSR CODE_1291EC         ; $12:927F: 20 EC 91

; Clear all OAM.
JSL CODE_14F9F0         ; $12:9282: 22 F0 F9 14
JSR CODE_1292C5         ; $12:9286: 20 C5 92
JSR CODE_1293D8         ; $12:9289: 20 D8 93
JSR CODE_129526         ; $12:928C: 20 26 95
LDA $E6                 ; $12:928F: A5 E6
BEQ CODE_12927F         ; $12:9291: F0 EC
STZ $E6                 ; $12:9293: 64 E6

CODE_129295:
JSR CODE_1291EC         ; $12:9295: 20 EC 91
INC $10                 ; $12:9298: E6 10

; Clear all OAM.
JSL CODE_14F9F0         ; $12:929A: 22 F0 F9 14
JSR CODE_1292C5         ; $12:929E: 20 C5 92
JSR CODE_1293D8         ; $12:92A1: 20 D8 93
LDA $83                 ; $12:92A4: A5 83
BEQ CODE_1292BD         ; $12:92A6: F0 15
LDA $10                 ; $12:92A8: A5 10
AND #$07                ; $12:92AA: 29 07
BNE CODE_129295         ; $12:92AC: D0 E7
DEC $83                 ; $12:92AE: C6 83
LDA $83                 ; $12:92B0: A5 83
CMP #$25                ; $12:92B2: C9 25
BNE CODE_129295         ; $12:92B4: D0 DF
LDY #$0E                ; $12:92B6: A0 0E

; Credits song.
STY $1DE2               ; $12:92B8: 8C E2 1D
BNE CODE_129295         ; $12:92BB: D0 D8

CODE_1292BD:
JSR CODE_129510         ; $12:92BD: 20 10 95
LDA $E6                 ; $12:92C0: A5 E6
BEQ CODE_129295         ; $12:92C2: F0 D1
RTL                     ; $12:92C4: 6B

CODE_1292C5:
LDA $84                 ; $12:92C5: A5 84
BEQ CODE_1292CB         ; $12:92C7: F0 02
DEC $84                 ; $12:92C9: C6 84

CODE_1292CB:
LDA $82                 ; $12:92CB: A5 82
BEQ CODE_1292D1         ; $12:92CD: F0 02
DEC $82                 ; $12:92CF: C6 82

CODE_1292D1:
LDA $28                 ; $12:92D1: A5 28
STA $0428               ; $12:92D3: 8D 28 04
LDA $32                 ; $12:92D6: A5 32
STA $042B               ; $12:92D8: 8D 2B 04
JSL CODE_14E14A         ; $12:92DB: 22 4A E1 14
LDA $50                 ; $12:92DF: A5 50
JSL CODE_118776         ; $12:92E1: 22 76 87 11
dw CODE_1292EF
dw CODE_12930B
dw CODE_129337
dw CODE_129354
dw CODE_129376

CODE_1292EF:
JSR CODE_1283D1         ; $12:92EF: 20 D1 83
JSR CODE_1280D2         ; $12:92F2: 20 D2 80
LDA $28                 ; $12:92F5: A5 28
CMP #$3E                ; $12:92F7: C9 3E
BCC CODE_129336         ; $12:92F9: 90 3B
INC $50                 ; $12:92FB: E6 50
INC $99                 ; $12:92FD: E6 99
LDA #$06                ; $12:92FF: A9 06
STA $C7                 ; $12:9301: 85 C7

CODE_129303:
LDA #$01                ; $12:9303: A9 01
STA $1DE1               ; $12:9305: 8D E1 1D
JMP CODE_12830B         ; $12:9308: 4C 0B 83

CODE_12930B:
JSR CODE_1283D1         ; $12:930B: 20 D1 83
JSR CODE_1280D2         ; $12:930E: 20 D2 80
JSR CODE_129390         ; $12:9311: 20 90 93
JSR CODE_128523         ; $12:9314: 20 23 85
LDA $46                 ; $12:9317: A5 46
BMI CODE_129336         ; $12:9319: 30 1B
LDA $32                 ; $12:931B: A5 32
CMP #$A0                ; $12:931D: C9 A0
BCC CODE_129328         ; $12:931F: 90 07
LDA #$0C                ; $12:9321: A9 0C
STA $3C                 ; $12:9323: 85 3C
JMP CODE_129303         ; $12:9325: 4C 03 93

CODE_129328:
CMP #$75                ; $12:9328: C9 75
BCC CODE_129336         ; $12:932A: 90 0A
LDA $28                 ; $12:932C: A5 28
CMP #$70                ; $12:932E: C9 70
BCC CODE_129336         ; $12:9330: 90 04
INC $50                 ; $12:9332: E6 50
DEC $99                 ; $12:9334: C6 99

CODE_129336:
RTS                     ; $12:9336: 60

CODE_129337:
JSR CODE_1283D1         ; $12:9337: 20 D1 83
JSR CODE_1280D2         ; $12:933A: 20 D2 80
LDA $28                 ; $12:933D: A5 28
CMP #$80                ; $12:933F: C9 80
BCC CODE_129336         ; $12:9341: 90 F3
INC $50                 ; $12:9343: E6 50
INC $9C                 ; $12:9345: E6 9C
LDA #$08                ; $12:9347: A9 08
STA $C7                 ; $12:9349: 85 C7
LDA #$05                ; $12:934B: A9 05
STA $8E                 ; $12:934D: 85 8E
LDA #$28                ; $12:934F: A9 28
STA $82                 ; $12:9351: 85 82
RTS                     ; $12:9353: 60

CODE_129354:
LDA $82                 ; $12:9354: A5 82
BNE CODE_129375         ; $12:9356: D0 1D
DEC $8E                 ; $12:9358: C6 8E
BNE CODE_12936E         ; $12:935A: D0 12
INC $50                 ; $12:935C: E6 50
INC $99                 ; $12:935E: E6 99
LDA #$06                ; $12:9360: A9 06
STA $C7                 ; $12:9362: 85 C7
LDA #$2B                ; $12:9364: A9 2B
STA $1DE0               ; $12:9366: 8D E0 1D
LDA #$A0                ; $12:9369: A9 A0
STA $4F                 ; $12:936B: 85 4F
RTS                     ; $12:936D: 60

CODE_12936E:
LDY $8E                 ; $12:936E: A4 8E
LDA.w DATA_11A427,y     ; $12:9370: B9 27 A4
STA $82                 ; $12:9373: 85 82

CODE_129375:
RTS                     ; $12:9375: 60

CODE_129376:
JSR CODE_12939B         ; $12:9376: 20 9B 93
JSR CODE_129390         ; $12:9379: 20 90 93
JSR CODE_1283D1         ; $12:937C: 20 D1 83
JSR CODE_128523         ; $12:937F: 20 23 85
LDA $46                 ; $12:9382: A5 46
BMI CODE_12938F         ; $12:9384: 30 09
LDA $32                 ; $12:9386: A5 32
CMP #$80                ; $12:9388: C9 80
BCC CODE_12938F         ; $12:938A: 90 03
JMP CODE_12830B         ; $12:938C: 4C 0B 83

CODE_12938F:
RTS                     ; $12:938F: 60

CODE_129390:
LDY $8F                 ; $12:9390: A4 8F
LDA.w DATA_11A431,y     ; $12:9392: B9 31 A4
CLC                     ; $12:9395: 18
ADC $46                 ; $12:9396: 65 46
STA $46                 ; $12:9398: 85 46
RTS                     ; $12:939A: 60

CODE_12939B:
LDX #$07                ; $12:939B: A2 07

CODE_12939D:
STX $12                 ; $12:939D: 86 12
LDA $86,x               ; $12:939F: B5 86
BEQ CODE_1293AE         ; $12:93A1: F0 0B
CMP #$01                ; $12:93A3: C9 01
BNE CODE_1293D2         ; $12:93A5: D0 2B
LDA #$31                ; $12:93A7: A9 31
STA $1DE0               ; $12:93A9: 8D E0 1D
BNE CODE_1293D2         ; $12:93AC: D0 24

CODE_1293AE:
JSR CODE_1298C1         ; $12:93AE: 20 C1 98
LDA $47,x               ; $12:93B1: B5 47
CMP #$08                ; $12:93B3: C9 08
BMI CODE_1293C6         ; $12:93B5: 30 0F
LDA #$00                ; $12:93B7: A9 00
STA $3D,x               ; $12:93B9: 95 3D
LDA #$F9                ; $12:93BB: A9 F9
STA $47,x               ; $12:93BD: 95 47
LDA.w DATA_11A41F,x     ; $12:93BF: BD 1F A4
EOR #$40                ; $12:93C2: 49 40
STA $65,x               ; $12:93C4: 95 65

CODE_1293C6:
LDA $10                 ; $12:93C6: A5 10
ASL A                   ; $12:93C8: 0A
AND #$02                ; $12:93C9: 29 02
STA $0F                 ; $12:93CB: 85 0F
JSR CODE_1293FD         ; $12:93CD: 20 FD 93
INC $86,x               ; $12:93D0: F6 86

CODE_1293D2:
DEC $86,x               ; $12:93D2: D6 86
DEX                     ; $12:93D4: CA
BPL CODE_12939D         ; $12:93D5: 10 C6
RTS                     ; $12:93D7: 60

CODE_1293D8:
LDA #$04                ; $12:93D8: A9 04
STA $0F                 ; $12:93DA: 85 0F
LDX #$08                ; $12:93DC: A2 08
STX $12                 ; $12:93DE: 86 12
JSR CODE_1293FD         ; $12:93E0: 20 FD 93
LDY $8E                 ; $12:93E3: A4 8E
BNE CODE_1293F4         ; $12:93E5: D0 0D
LDA $3B                 ; $12:93E7: A5 3B
CMP #$A0                ; $12:93E9: C9 A0
BCC CODE_1293F1         ; $12:93EB: 90 04
CMP #$E0                ; $12:93ED: C9 E0
BCC CODE_1293FC         ; $12:93EF: 90 0B

CODE_1293F1:
JMP CODE_129880         ; $12:93F1: 4C 80 98

CODE_1293F4:
LDA.w DATA_11A42B,y     ; $12:93F4: B9 2B A4
CLC                     ; $12:93F7: 18
ADC $32                 ; $12:93F8: 65 32
STA $3B                 ; $12:93FA: 85 3B

CODE_1293FC:
RTS                     ; $12:93FC: 60

CODE_1293FD:
LDY.w DATA_11A43B,x     ; $12:93FD: BC 3B A4
LDA $33,x               ; $12:9400: B5 33
STA $0801,y             ; $12:9402: 99 01 08
LDA $29,x               ; $12:9405: B5 29
STA $0800,y             ; $12:9407: 99 00 08
LDA $65,x               ; $12:940A: B5 65
AND #$C0                ; $12:940C: 29 C0
ORA #$17                ; $12:940E: 09 17
STA $0803,y             ; $12:9410: 99 03 08
LDX $0F                 ; $12:9413: A6 0F
AND #$40                ; $12:9415: 29 40
BNE CODE_12941E         ; $12:9417: D0 05
LDA.w DATA_11A435,x     ; $12:9419: BD 35 A4
BRA CODE_129421         ; $12:941C: 80 03

CODE_12941E:
LDA.w DATA_11A436,x     ; $12:941E: BD 36 A4

CODE_129421:
STA $0802,y             ; $12:9421: 99 02 08
PHY                     ; $12:9424: 5A
TYA                     ; $12:9425: 98
LSR A                   ; $12:9426: 4A
LSR A                   ; $12:9427: 4A
TAY                     ; $12:9428: A8
LDA #$02                ; $12:9429: A9 02
STA $0A20,y             ; $12:942B: 99 20 0A
PLY                     ; $12:942E: 7A
LDX $12                 ; $12:942F: A6 12
RTS                     ; $12:9431: 60

CODE_129432:
JSR CODE_1291E4         ; $12:9432: 20 E4 91
JSL CODE_14D194         ; $12:9435: 22 94 D1 14
JSL CODE_14F953         ; $12:9439: 22 53 F9 14
LDA #$40                ; $12:943D: A9 40
STA $0100               ; $12:943F: 8D 00 01
JSR CODE_12953D         ; $12:9442: 20 3D 95
JSR CODE_1291EC         ; $12:9445: 20 EC 91
LDA #$02                ; $12:9448: A9 02
STA $11                 ; $12:944A: 85 11
JSR CODE_1291EC         ; $12:944C: 20 EC 91
LDA #$03                ; $12:944F: A9 03
STA $11                 ; $12:9451: 85 11
JSR CODE_1291EC         ; $12:9453: 20 EC 91
JSL CODE_13DD8E         ; $12:9456: 22 8E DD 13
JSR CODE_1296BA         ; $12:945A: 20 BA 96
JSR CODE_1291EC         ; $12:945D: 20 EC 91
LDA #$00                ; $12:9460: A9 00
STA $F4                 ; $12:9462: 85 F4
STA $E6                 ; $12:9464: 85 E6
JSR CODE_129694         ; $12:9466: 20 94 96
LDA #$FF                ; $12:9469: A9 FF
STA $14                 ; $12:946B: 85 14
LDA #$A0                ; $12:946D: A9 A0
STA $28                 ; $12:946F: 85 28
LDA #$08                ; $12:9471: A9 08
STA $3C                 ; $12:9473: 85 3C
LDA #$01                ; $12:9475: A9 01
STA $EB                 ; $12:9477: 85 EB
LDA #$BE                ; $12:9479: A9 BE
STA $024B               ; $12:947B: 8D 4B 02
STZ $024F               ; $12:947E: 9C 4F 02
STZ $024C               ; $12:9481: 9C 4C 02
STZ $FE                 ; $12:9484: 64 FE

CODE_129486:
JSR CODE_1291EC         ; $12:9486: 20 EC 91
CLI                     ; $12:9489: 58
INC $F4                 ; $12:948A: E6 F4
INC $10                 ; $12:948C: E6 10
JSR CODE_1297FE         ; $12:948E: 20 FE 97
JSR CODE_129546         ; $12:9491: 20 46 95
LDA $E6                 ; $12:9494: A5 E6
CMP #$03                ; $12:9496: C9 03
BCS CODE_1294AE         ; $12:9498: B0 14
LDA $F4                 ; $12:949A: A5 F4
CMP #$0A                ; $12:949C: C9 0A
BCC CODE_1294AB         ; $12:949E: 90 0B
LDA #$00                ; $12:94A0: A9 00
STA $F4                 ; $12:94A2: 85 F4
LDA $F3                 ; $12:94A4: A5 F3
SEC                     ; $12:94A6: 38
SBC #$30                ; $12:94A7: E9 30
STA $F3                 ; $12:94A9: 85 F3

CODE_1294AB:
BRL CODE_129486         ; $12:94AB: 82 D8 FF

CODE_1294AE:
LDA #$03                ; $12:94AE: A9 03
STA $024C               ; $12:94B0: 8D 4C 02
STZ $F3                 ; $12:94B3: 64 F3
STZ $F4                 ; $12:94B5: 64 F4
STZ $0242               ; $12:94B7: 9C 42 02
LDA #$04                ; $12:94BA: A9 04
STA $11                 ; $12:94BC: 85 11

CODE_1294BE:
JSR CODE_1291EC         ; $12:94BE: 20 EC 91
JSR CODE_12953D         ; $12:94C1: 20 3D 95
INC $F4                 ; $12:94C4: E6 F4
JSR CODE_1297FE         ; $12:94C6: 20 FE 97
JSR CODE_12965D         ; $12:94C9: 20 5D 96
LDX #$02                ; $12:94CC: A2 02

CODE_1294CE:
LDY #$00                ; $12:94CE: A0 00

CODE_1294D0:
LDA $00                 ; $12:94D0: A5 00
LDA $00                 ; $12:94D2: A5 00
DEY                     ; $12:94D4: 88
BNE CODE_1294D0         ; $12:94D5: D0 F9
DEX                     ; $12:94D7: CA
BNE CODE_1294CE         ; $12:94D8: D0 F4
LDA #$B0                ; $12:94DA: A9 B0
ORA $F3                 ; $12:94DC: 05 F3
STA $FF                 ; $12:94DE: 85 FF
LDA $F4                 ; $12:94E0: A5 F4
CMP #$14                ; $12:94E2: C9 14
BCC CODE_1294F5         ; $12:94E4: 90 0F
LDA #$00                ; $12:94E6: A9 00
STA $F4                 ; $12:94E8: 85 F4
INC $0242               ; $12:94EA: EE 42 02
LDA $024F               ; $12:94ED: AD 4F 02
EOR #$01                ; $12:94F0: 49 01
STA $024F               ; $12:94F2: 8D 4F 02

CODE_1294F5:
LDA $0242               ; $12:94F5: AD 42 02
CMP #$2C                ; $12:94F8: C9 2C
BCC CODE_1294BE         ; $12:94FA: 90 C2
JSR CODE_129510         ; $12:94FC: 20 10 95
LDA $E6                 ; $12:94FF: A5 E6
CMP #$04                ; $12:9501: C9 04
BCC CODE_1294BE         ; $12:9503: 90 B9
LDA #$FF                ; $12:9505: A9 FF
STA $024B               ; $12:9507: 8D 4B 02
LDA #$01                ; $12:950A: A9 01
STA $024F               ; $12:950C: 8D 4F 02
RTL                     ; $12:950F: 6B

CODE_129510:
DEC $E5                 ; $12:9510: C6 E5
BPL CODE_129525         ; $12:9512: 10 11
LDA #$01                ; $12:9514: A9 01
STA $E5                 ; $12:9516: 85 E5
LDA $FE                 ; $12:9518: A5 FE
AND #$0F                ; $12:951A: 29 0F
DEC A                   ; $12:951C: 3A
BMI CODE_129523         ; $12:951D: 30 04
STA $FE                 ; $12:951F: 85 FE
BRA CODE_129525         ; $12:9521: 80 02

CODE_129523:
INC $E6                 ; $12:9523: E6 E6

CODE_129525:
RTS                     ; $12:9525: 60

CODE_129526:
DEC $E5                 ; $12:9526: C6 E5
BPL CODE_129525         ; $12:9528: 10 FB
LDA #$01                ; $12:952A: A9 01
STA $E5                 ; $12:952C: 85 E5
LDA $FE                 ; $12:952E: A5 FE
INC A                   ; $12:9530: 1A
CMP #$10                ; $12:9531: C9 10
BEQ CODE_129523         ; $12:9533: F0 EE
STA $00FE               ; $12:9535: 8D FE 00
RTS                     ; $12:9538: 60

CODE_129539:
JSR CODE_129526         ; $12:9539: 20 26 95
RTL                     ; $12:953C: 6B

CODE_12953D:
LDA #$B0                ; $12:953D: A9 B0
BRA CODE_129543         ; $12:953F: 80 02
LDA #$30                ; $12:9541: A9 30

CODE_129543:
STA $FF                 ; $12:9543: 85 FF
RTS                     ; $12:9545: 60

; Clear all OAM.

CODE_129546:
JSL CODE_14F9F0         ; $12:9546: 22 F0 F9 14
JSR CODE_12965D         ; $12:954A: 20 5D 96
LDA $E6                 ; $12:954D: A5 E6
JSL CODE_118776         ; $12:954F: 22 76 87 11
dw CODE_129526
dw CODE_129559
dw CODE_1295D8

CODE_129559:
JSR CODE_1280D2         ; $12:9559: 20 D2 80
LDA $14                 ; $12:955C: A5 14
CMP #$01                ; $12:955E: C9 01
BNE CODE_129586         ; $12:9560: D0 24
LDA $28                 ; $12:9562: A5 28
CMP #$20                ; $12:9564: C9 20
BCC CODE_129586         ; $12:9566: 90 1E
INC $00E6               ; $12:9568: EE E6 00
LDA #$A0                ; $12:956B: A9 A0
STA $10                 ; $12:956D: 85 10
LDX #$05                ; $12:956F: A2 05

CODE_129571:
LDA #$20                ; $12:9571: A9 20
STA $29,x               ; $12:9573: 95 29
LDA #$A8                ; $12:9575: A9 A8
STA $33,x               ; $12:9577: 95 33
LDA.w DATA_11AA5E,x     ; $12:9579: BD 5E AA
STA $3D,x               ; $12:957C: 95 3D
LDA.w DATA_11AA64,x     ; $12:957E: BD 64 AA
STA $47,x               ; $12:9581: 95 47
DEX                     ; $12:9583: CA
BPL CODE_129571         ; $12:9584: 10 EB

CODE_129586:
LDY #$A0                ; $12:9586: A0 A0
LDA $10                 ; $12:9588: A5 10
AND #$38                ; $12:958A: 29 38
BNE CODE_12958F         ; $12:958C: D0 01
DEY                     ; $12:958E: 88

CODE_12958F:
AND #$08                ; $12:958F: 29 08
BNE CODE_129594         ; $12:9591: D0 01
DEY                     ; $12:9593: 88

CODE_129594:
STY $32                 ; $12:9594: 84 32
LDX #$05                ; $12:9596: A2 05
LDY #$70                ; $12:9598: A0 70

CODE_12959A:
STZ $00                 ; $12:959A: 64 00
LDA $32                 ; $12:959C: A5 32
CLC                     ; $12:959E: 18
ADC.w DATA_11AA76,x     ; $12:959F: 7D 76 AA
STA $0801,y             ; $12:95A2: 99 01 08
LDA.w DATA_11AA6A,x     ; $12:95A5: BD 6A AA
STA $0802,y             ; $12:95A8: 99 02 08
LDA #$2B                ; $12:95AB: A9 2B
STA $0803,y             ; $12:95AD: 99 03 08
LDA $28                 ; $12:95B0: A5 28
CLC                     ; $12:95B2: 18
ADC.w DATA_11AA70,x     ; $12:95B3: 7D 70 AA
STA $0800,y             ; $12:95B6: 99 00 08
LDA $14                 ; $12:95B9: A5 14
ADC #$00                ; $12:95BB: 69 00
BEQ CODE_1295C3         ; $12:95BD: F0 04
LDA #$01                ; $12:95BF: A9 01
STA $00                 ; $12:95C1: 85 00

CODE_1295C3:
PHY                     ; $12:95C3: 5A
TYA                     ; $12:95C4: 98
LSR A                   ; $12:95C5: 4A
LSR A                   ; $12:95C6: 4A
TAY                     ; $12:95C7: A8
LDA #$02                ; $12:95C8: A9 02
ORA $00                 ; $12:95CA: 05 00
STA $0A20,y             ; $12:95CC: 99 20 0A
PLY                     ; $12:95CF: 7A
INY                     ; $12:95D0: C8
INY                     ; $12:95D1: C8
INY                     ; $12:95D2: C8
INY                     ; $12:95D3: C8
DEX                     ; $12:95D4: CA
BPL CODE_12959A         ; $12:95D5: 10 C3
RTS                     ; $12:95D7: 60

CODE_1295D8:
LDA $10                 ; $12:95D8: A5 10
BNE CODE_1295F5         ; $12:95DA: D0 19
STA $040E               ; $12:95DC: 8D 0E 04
STA $0418               ; $12:95DF: 8D 18 04
STA $2F                 ; $12:95E2: 85 2F
STA $10                 ; $12:95E4: 85 10
LDA #$6F                ; $12:95E6: A9 6F
STA $39                 ; $12:95E8: 85 39
LDA #$E6                ; $12:95EA: A9 E6
STA $43                 ; $12:95EC: 85 43
LDA #$DA                ; $12:95EE: A9 DA
STA $4D                 ; $12:95F0: 85 4D
INC $00E6               ; $12:95F2: EE E6 00

CODE_1295F5:
LDX #$05                ; $12:95F5: A2 05

CODE_1295F7:
STX $12                 ; $12:95F7: 86 12
JSR CODE_129885         ; $12:95F9: 20 85 98
JSR CODE_129880         ; $12:95FC: 20 80 98
LDY #$F0                ; $12:95FF: A0 F0
LDA $10                 ; $12:9601: A5 10
BEQ CODE_129612         ; $12:9603: F0 0D
AND #$0F                ; $12:9605: 29 0F
CMP.w DATA_11AA82,x     ; $12:9607: DD 82 AA
BNE CODE_129614         ; $12:960A: D0 08
LDA #$20                ; $12:960C: A9 20
STA $29,x               ; $12:960E: 95 29
LDY #$A8                ; $12:9610: A0 A8

CODE_129612:
STY $33,x               ; $12:9612: 94 33

CODE_129614:
TXA                     ; $12:9614: 8A
ASL A                   ; $12:9615: 0A
ASL A                   ; $12:9616: 0A
ASL A                   ; $12:9617: 0A
TAY                     ; $12:9618: A8
LDA $29,x               ; $12:9619: B5 29
CMP #$80                ; $12:961B: C9 80
BCS CODE_129623         ; $12:961D: B0 04
LDA #$F0                ; $12:961F: A9 F0
BNE CODE_12962B         ; $12:9621: D0 08

CODE_129623:
STA $0870,y             ; $12:9623: 99 70 08
STA $0874,y             ; $12:9626: 99 74 08
LDA $33,x               ; $12:9629: B5 33

CODE_12962B:
STA $0871,y             ; $12:962B: 99 71 08
CMP #$F0                ; $12:962E: C9 F0
BEQ CODE_129638         ; $12:9630: F0 06
CLC                     ; $12:9632: 18
ADC #$08                ; $12:9633: 69 08
STA $0875,y             ; $12:9635: 99 75 08

CODE_129638:
LDA.w DATA_11AA7C,x     ; $12:9638: BD 7C AA
STA $0872,y             ; $12:963B: 99 72 08
ORA #$10                ; $12:963E: 09 10
STA $0876,y             ; $12:9640: 99 76 08
LDA #$23                ; $12:9643: A9 23
STA $0873,y             ; $12:9645: 99 73 08
STA $0877,y             ; $12:9648: 99 77 08
PHY                     ; $12:964B: 5A
TYA                     ; $12:964C: 98
LSR A                   ; $12:964D: 4A
LSR A                   ; $12:964E: 4A
TAY                     ; $12:964F: A8
LDA #$00                ; $12:9650: A9 00
STA $0A3C,y             ; $12:9652: 99 3C 0A
STA $0A3D,y             ; $12:9655: 99 3D 0A
PLY                     ; $12:9658: 7A
DEX                     ; $12:9659: CA
BPL CODE_1295F7         ; $12:965A: 10 9B
RTS                     ; $12:965C: 60

CODE_12965D:
JSR CODE_129694         ; $12:965D: 20 94 96
INC $9B                 ; $12:9660: E6 9B
LDA #$03                ; $12:9662: A9 03
STA $00                 ; $12:9664: 85 00
LDA $9B                 ; $12:9666: A5 9B
STA $01                 ; $12:9668: 85 01
LDY #$1C                ; $12:966A: A0 1C

CODE_12966C:
LDX $00                 ; $12:966C: A6 00
LDA.w DATA_11AA98,x     ; $12:966E: BD 98 AA
TAX                     ; $12:9671: AA
INC $01                 ; $12:9672: E6 01
LDA $01                 ; $12:9674: A5 01
AND #$10                ; $12:9676: 29 10
BEQ CODE_12967B         ; $12:9678: F0 01
INX                     ; $12:967A: E8

CODE_12967B:
LDA #$01                ; $12:967B: A9 01
STA $02                 ; $12:967D: 85 02

CODE_12967F:
LDA.w DATA_11AA88,x     ; $12:967F: BD 88 AA
STA $0812,y             ; $12:9682: 99 12 08
DEX                     ; $12:9685: CA
DEX                     ; $12:9686: CA
DEY                     ; $12:9687: 88
DEY                     ; $12:9688: 88
DEY                     ; $12:9689: 88
DEY                     ; $12:968A: 88
DEC $02                 ; $12:968B: C6 02
BPL CODE_12967F         ; $12:968D: 10 F0
DEC $00                 ; $12:968F: C6 00
BPL CODE_12966C         ; $12:9691: 10 D9
RTS                     ; $12:9693: 60

CODE_129694:
LDY #$1F                ; $12:9694: A0 1F

CODE_129696:
LDA.w DATA_11AA3E,y     ; $12:9696: B9 3E AA
STA $0810,y             ; $12:9699: 99 10 08
DEY                     ; $12:969C: 88
BPL CODE_129696         ; $12:969D: 10 F7
LDA #$02                ; $12:969F: A9 02
STA $0A24               ; $12:96A1: 8D 24 0A
STA $0A25               ; $12:96A4: 8D 25 0A
STA $0A26               ; $12:96A7: 8D 26 0A
STA $0A27               ; $12:96AA: 8D 27 0A
STA $0A28               ; $12:96AD: 8D 28 0A
STA $0A29               ; $12:96B0: 8D 29 0A
STA $0A2A               ; $12:96B3: 8D 2A 0A
STA $0A2B               ; $12:96B6: 8D 2B 0A
RTS                     ; $12:96B9: 60

CODE_1296BA:
LDA #$00                ; $12:96BA: A9 00
STA $0631               ; $12:96BC: 8D 31 06
LDY #$03                ; $12:96BF: A0 03

CODE_1296C1:
LDA $062D,y             ; $12:96C1: B9 2D 06
CMP $0631               ; $12:96C4: CD 31 06
BCC CODE_1296CF         ; $12:96C7: 90 06
LDA $062D,y             ; $12:96C9: B9 2D 06
STA $0631               ; $12:96CC: 8D 31 06

CODE_1296CF:
DEY                     ; $12:96CF: 88
BPL CODE_1296C1         ; $12:96D0: 10 EF
LDX #$00                ; $12:96D2: A2 00
LDY #$03                ; $12:96D4: A0 03

CODE_1296D6:
LDA $062D,y             ; $12:96D6: B9 2D 06
CMP $0631               ; $12:96D9: CD 31 06
BNE CODE_1296E3         ; $12:96DC: D0 05
TYA                     ; $12:96DE: 98
STA $0597,x             ; $12:96DF: 9D 97 05
INX                     ; $12:96E2: E8

CODE_1296E3:
DEY                     ; $12:96E3: 88
BPL CODE_1296D6         ; $12:96E4: 10 F0
DEX                     ; $12:96E6: CA
STX $059B               ; $12:96E7: 8E 9B 05
LDX #$00                ; $12:96EA: A2 00
LDA #$01                ; $12:96EC: A9 01
STA $0302,x             ; $12:96EE: 9D 02 03
INX                     ; $12:96F1: E8
LDA #$29                ; $12:96F2: A9 29
STA $0302,x             ; $12:96F4: 9D 02 03
INX                     ; $12:96F7: E8
LDA #$00                ; $12:96F8: A9 00
STA $0302,x             ; $12:96FA: 9D 02 03
INX                     ; $12:96FD: E8
LDA #$1B                ; $12:96FE: A9 1B
STA $0302,x             ; $12:9700: 9D 02 03
INX                     ; $12:9703: E8
LDY #$00                ; $12:9704: A0 00
LDA $062D,y             ; $12:9706: B9 2D 06
JSR CODE_129820         ; $12:9709: 20 20 98
TYA                     ; $12:970C: 98
REP #$20                ; $12:970D: C2 20
AND #$00FF              ; $12:970F: 29 FF 00
CMP #$00BF              ; $12:9712: C9 BF 00
BEQ CODE_12971C         ; $12:9715: F0 05
ORA #$1500              ; $12:9717: 09 00 15
BRA CODE_12971F         ; $12:971A: 80 03

CODE_12971C:
LDA #$14BE              ; $12:971C: A9 BE 14

CODE_12971F:
STA $0302,x             ; $12:971F: 9D 02 03
INX                     ; $12:9722: E8
INX                     ; $12:9723: E8
LDA $01                 ; $12:9724: A5 01
AND #$00FF              ; $12:9726: 29 FF 00
ORA #$1500              ; $12:9729: 09 00 15
STA $0302,x             ; $12:972C: 9D 02 03
INX                     ; $12:972F: E8
INX                     ; $12:9730: E8
LDA #$15FF              ; $12:9731: A9 FF 15
STA $0302,x             ; $12:9734: 9D 02 03
INX                     ; $12:9737: E8
INX                     ; $12:9738: E8
LDA #$15EF              ; $12:9739: A9 EF 15
STA $0302,x             ; $12:973C: 9D 02 03
INX                     ; $12:973F: E8
INX                     ; $12:9740: E8
LDA #$14BE              ; $12:9741: A9 BE 14
STA $0302,x             ; $12:9744: 9D 02 03
SEP #$20                ; $12:9747: E2 20
LDY #$03                ; $12:9749: A0 03
LDA $062D,y             ; $12:974B: B9 2D 06
JSR CODE_129820         ; $12:974E: 20 20 98
TYA                     ; $12:9751: 98
REP #$20                ; $12:9752: C2 20
AND #$00FF              ; $12:9754: 29 FF 00
CMP #$00BF              ; $12:9757: C9 BF 00
BEQ CODE_129762         ; $12:975A: F0 06
ORA #$1500              ; $12:975C: 09 00 15
STA $0302,x             ; $12:975F: 9D 02 03

CODE_129762:
INX                     ; $12:9762: E8
INX                     ; $12:9763: E8
LDA $01                 ; $12:9764: A5 01
AND #$00FF              ; $12:9766: 29 FF 00
ORA #$1500              ; $12:9769: 09 00 15
STA $0302,x             ; $12:976C: 9D 02 03
INX                     ; $12:976F: E8
INX                     ; $12:9770: E8
LDA #$15FF              ; $12:9771: A9 FF 15
STA $0302,x             ; $12:9774: 9D 02 03
INX                     ; $12:9777: E8
INX                     ; $12:9778: E8
LDA #$15EF              ; $12:9779: A9 EF 15
STA $0302,x             ; $12:977C: 9D 02 03
INX                     ; $12:977F: E8
INX                     ; $12:9780: E8
LDA #$14BE              ; $12:9781: A9 BE 14
STA $0302,x             ; $12:9784: 9D 02 03
SEP #$20                ; $12:9787: E2 20
LDY #$02                ; $12:9789: A0 02
LDA $062D,y             ; $12:978B: B9 2D 06
JSR CODE_129820         ; $12:978E: 20 20 98
TYA                     ; $12:9791: 98
REP #$20                ; $12:9792: C2 20
AND #$00FF              ; $12:9794: 29 FF 00
CMP #$00BF              ; $12:9797: C9 BF 00
BEQ CODE_1297A2         ; $12:979A: F0 06
ORA #$1500              ; $12:979C: 09 00 15
STA $0302,x             ; $12:979F: 9D 02 03

CODE_1297A2:
INX                     ; $12:97A2: E8
INX                     ; $12:97A3: E8
LDA $01                 ; $12:97A4: A5 01
AND #$00FF              ; $12:97A6: 29 FF 00
ORA #$1500              ; $12:97A9: 09 00 15
STA $0302,x             ; $12:97AC: 9D 02 03
INX                     ; $12:97AF: E8
INX                     ; $12:97B0: E8
LDA #$15FF              ; $12:97B1: A9 FF 15
STA $0302,x             ; $12:97B4: 9D 02 03
INX                     ; $12:97B7: E8
INX                     ; $12:97B8: E8
LDA #$15EF              ; $12:97B9: A9 EF 15
STA $0302,x             ; $12:97BC: 9D 02 03
INX                     ; $12:97BF: E8
INX                     ; $12:97C0: E8
LDA #$14BE              ; $12:97C1: A9 BE 14
STA $0302,x             ; $12:97C4: 9D 02 03
SEP #$20                ; $12:97C7: E2 20
LDY #$01                ; $12:97C9: A0 01
LDA $062D,y             ; $12:97CB: B9 2D 06
JSR CODE_129820         ; $12:97CE: 20 20 98
TYA                     ; $12:97D1: 98
REP #$20                ; $12:97D2: C2 20
AND #$00FF              ; $12:97D4: 29 FF 00
CMP #$00BF              ; $12:97D7: C9 BF 00
BEQ CODE_1297E2         ; $12:97DA: F0 06
ORA #$1500              ; $12:97DC: 09 00 15
STA $0302,x             ; $12:97DF: 9D 02 03

CODE_1297E2:
INX                     ; $12:97E2: E8
INX                     ; $12:97E3: E8
LDA $01                 ; $12:97E4: A5 01
AND #$00FF              ; $12:97E6: 29 FF 00
ORA #$1500              ; $12:97E9: 09 00 15
STA $0302,x             ; $12:97EC: 9D 02 03
INX                     ; $12:97EF: E8
INX                     ; $12:97F0: E8
SEP #$20                ; $12:97F1: E2 20
LDA #$FF                ; $12:97F3: A9 FF
STA $0302,x             ; $12:97F5: 9D 02 03
LDA #$3C                ; $12:97F8: A9 3C
STA $059D               ; $12:97FA: 8D 9D 05
RTS                     ; $12:97FD: 60

CODE_1297FE:
DEC $059D               ; $12:97FE: CE 9D 05
BPL CODE_12981F         ; $12:9801: 10 1C
LDA #$3C                ; $12:9803: A9 3C
STA $059D               ; $12:9805: 8D 9D 05
LDY $059C               ; $12:9808: AC 9C 05
LDA $0597,y             ; $12:980B: B9 97 05
CLC                     ; $12:980E: 18
ADC #$06                ; $12:980F: 69 06
STA $0011               ; $12:9811: 8D 11 00
DEC $059C               ; $12:9814: CE 9C 05
BPL CODE_12981F         ; $12:9817: 10 06
LDA $059B               ; $12:9819: AD 9B 05
STA $059C               ; $12:981C: 8D 9C 05

CODE_12981F:
RTS                     ; $12:981F: 60

CODE_129820:
LDY #$C0                ; $12:9820: A0 C0

CODE_129822:
CMP #$0A                ; $12:9822: C9 0A
BCC CODE_12982B         ; $12:9824: 90 05
SBC #$0A                ; $12:9826: E9 0A
INY                     ; $12:9828: C8
BRA CODE_129822         ; $12:9829: 80 F7

CODE_12982B:
ORA #$C0                ; $12:982B: 09 C0
CPY #$C0                ; $12:982D: C0 C0
BNE CODE_129833         ; $12:982F: D0 02
LDY #$BF                ; $12:9831: A0 BF

CODE_129833:
CPY #$CA                ; $12:9833: C0 CA
BCC CODE_12983B         ; $12:9835: 90 04
LDY #$C9                ; $12:9837: A0 C9
LDA #$C9                ; $12:9839: A9 C9

CODE_12983B:
STA $01                 ; $12:983B: 85 01
RTS                     ; $12:983D: 60

ORG $129880

CODE_129880:
TXA                     ; $12:9880: 8A
CLC                     ; $12:9881: 18
ADC #$0A                ; $12:9882: 69 0A
TAX                     ; $12:9884: AA

CODE_129885:
LDA $3D,x               ; $12:9885: B5 3D
CLC                     ; $12:9887: 18
ADC $04CD,x             ; $12:9888: 7D CD 04
PHA                     ; $12:988B: 48
ASL A                   ; $12:988C: 0A
ASL A                   ; $12:988D: 0A
ASL A                   ; $12:988E: 0A
ASL A                   ; $12:988F: 0A
STA $01                 ; $12:9890: 85 01
PLA                     ; $12:9892: 68
LSR A                   ; $12:9893: 4A
LSR A                   ; $12:9894: 4A
LSR A                   ; $12:9895: 4A
LSR A                   ; $12:9896: 4A
CMP #$08                ; $12:9897: C9 08
BCC CODE_12989D         ; $12:9899: 90 02
ORA #$F0                ; $12:989B: 09 F0

CODE_12989D:
STA $00                 ; $12:989D: 85 00
LDY #$00                ; $12:989F: A0 00
ASL A                   ; $12:98A1: 0A
BCC CODE_1298A5         ; $12:98A2: 90 01
DEY                     ; $12:98A4: 88

CODE_1298A5:
STY $02                 ; $12:98A5: 84 02
LDA $0408,x             ; $12:98A7: BD 08 04
CLC                     ; $12:98AA: 18
ADC $01                 ; $12:98AB: 65 01
STA $0408,x             ; $12:98AD: 9D 08 04
LDA $29,x               ; $12:98B0: B5 29
ADC $00                 ; $12:98B2: 65 00
STA $29,x               ; $12:98B4: 95 29
LSR $01                 ; $12:98B6: 46 01
LDA $15,x               ; $12:98B8: B5 15
ADC $02                 ; $12:98BA: 65 02
STA $15,x               ; $12:98BC: 95 15
LDX $12                 ; $12:98BE: A6 12
RTS                     ; $12:98C0: 60

CODE_1298C1:
LDA $044A,x             ; $12:98C1: BD 4A 04
BNE CODE_1298C9         ; $12:98C4: D0 03
JSR CODE_129885         ; $12:98C6: 20 85 98

CODE_1298C9:
JSR CODE_129880         ; $12:98C9: 20 80 98
LDA $47,x               ; $12:98CC: B5 47
BMI CODE_1298D4         ; $12:98CE: 30 04
CMP #$3E                ; $12:98D0: C9 3E
BCS CODE_1298D8         ; $12:98D2: B0 04

CODE_1298D4:
INC $47,x               ; $12:98D4: F6 47
INC $47,x               ; $12:98D6: F6 47

CODE_1298D8:
RTS                     ; $12:98D8: 60

CODE_1298D9:
LDA #$01                ; $12:98D9: A9 01
BNE CODE_1298DF         ; $12:98DB: D0 02

CODE_1298DD:
LDA #$00                ; $12:98DD: A9 00

CODE_1298DF:
PHA                     ; $12:98DF: 48
LDY #$08                ; $12:98E0: A0 08

CODE_1298E2:
LDA $0051,y             ; $12:98E2: B9 51 00
BEQ CODE_1298F8         ; $12:98E5: F0 11
LDA $0090,y             ; $12:98E7: B9 90 00
CMP #$3C                ; $12:98EA: C9 3C
BNE CODE_1298F8         ; $12:98EC: D0 0A
LDA #$05                ; $12:98EE: A9 05
STA $0051,y             ; $12:98F0: 99 51 00
LDA #$20                ; $12:98F3: A9 20
STA $0086,y             ; $12:98F5: 99 86 00

CODE_1298F8:
DEY                     ; $12:98F8: 88
BPL CODE_1298E2         ; $12:98F9: 10 E7
JSR CODE_129AA5         ; $12:98FB: 20 A5 9A
BPL CODE_129905         ; $12:98FE: 10 05
LDY #$08                ; $12:9900: A0 08
JSR CODE_129AB4         ; $12:9902: 20 B4 9A

CODE_129905:
LDA #$00                ; $12:9905: A9 00
STA $04BE               ; $12:9907: 8D BE 04
STA $04B3               ; $12:990A: 8D B3 04
LDX $00                 ; $12:990D: A6 00
PLA                     ; $12:990F: 68
STA $0477,x             ; $12:9910: 9D 77 04
LDA #$3C                ; $12:9913: A9 3C
STA $90,x               ; $12:9915: 95 90
LDA $28                 ; $12:9917: A5 28
ADC #$08                ; $12:9919: 69 08
AND #$F0                ; $12:991B: 29 F0
STA $29,x               ; $12:991D: 95 29
LDA $14                 ; $12:991F: A5 14
ADC #$00                ; $12:9921: 69 00
STA $15,x               ; $12:9923: 95 15
LDY #$00                ; $12:9925: A0 00
LDA $0536               ; $12:9927: AD 36 05
CMP #$01                ; $12:992A: C9 01
BEQ CODE_129930         ; $12:992C: F0 02
LDY #$01                ; $12:992E: A0 01

CODE_129930:
TYA                     ; $12:9930: 98
CLC                     ; $12:9931: 18
ADC $32                 ; $12:9932: 65 32
STA $33,x               ; $12:9934: 95 33
LDA $1E                 ; $12:9936: A5 1E
ADC #$00                ; $12:9938: 69 00
STA $1F,x               ; $12:993A: 95 1F
LDA #$41                ; $12:993C: A9 41
STA $65,x               ; $12:993E: 95 65
LDX $12                 ; $12:9940: A6 12
RTS                     ; $12:9942: 60
PLA                     ; $12:9943: 68
RTS                     ; $12:9944: 60

CODE_129945:
JSR CODE_129AA9         ; $12:9945: 20 A9 9A
BMI CODE_12996F         ; $12:9948: 30 25
LDX $00                 ; $12:994A: A6 00
LDA #$45                ; $12:994C: A9 45
STA $90,x               ; $12:994E: 95 90
LDA $04C1               ; $12:9950: AD C1 04
ADC #$D0                ; $12:9953: 69 D0
STA $29,x               ; $12:9955: 95 29
LDA $04BF               ; $12:9957: AD BF 04
ADC #$00                ; $12:995A: 69 00
STA $15,x               ; $12:995C: 95 15
LDA $CB                 ; $12:995E: A5 CB
ADC #$E0                ; $12:9960: 69 E0
STA $33,x               ; $12:9962: 95 33
LDA $CA                 ; $12:9964: A5 CA
ADC #$00                ; $12:9966: 69 00
STA $1F,x               ; $12:9968: 95 1F
JSR CODE_1299A4         ; $12:996A: 20 A4 99
LDX $12                 ; $12:996D: A6 12

CODE_12996F:
RTS                     ; $12:996F: 60

CODE_129970:
LDA #$00                ; $12:9970: A9 00
STA $86,x               ; $12:9972: 95 86
LDA #$00                ; $12:9974: A9 00
STA $79,x               ; $12:9976: 95 79

CODE_129978:
LDA #$00                ; $12:9978: A9 00
STA $B1,x               ; $12:997A: 95 B1
STA $042F,x             ; $12:997C: 9D 2F 04
STA $A8,x               ; $12:997F: 95 A8
STA $9F,x               ; $12:9981: 95 9F
STA $044A,x             ; $12:9983: 9D 4A 04
STA $5B,x               ; $12:9986: 95 5B
STA $0438,x             ; $12:9988: 9D 38 04
STA $0453,x             ; $12:998B: 9D 53 04
STA $04CD,x             ; $12:998E: 9D CD 04
STA $04D7,x             ; $12:9991: 9D D7 04
STA $045C,x             ; $12:9994: 9D 5C 04
STA $0477,x             ; $12:9997: 9D 77 04
STA $0480,x             ; $12:999A: 9D 80 04
STA $0465,x             ; $12:999D: 9D 65 04
STA $47,x               ; $12:99A0: 95 47
STA $3D,x               ; $12:99A2: 95 3D

CODE_1299A4:
LDY $90,x               ; $12:99A4: B4 90
LDA.w DATA_11CC45,y     ; $12:99A6: B9 45 CC
AND #$7F                ; $12:99A9: 29 7F
STA $65,x               ; $12:99AB: 95 65
LDA.w DATA_11CC8C,y     ; $12:99AD: B9 8C CC
STA $046E,x             ; $12:99B0: 9D 6E 04
LDA.w DATA_11CD1A,y     ; $12:99B3: B9 1A CD
STA $0489,x             ; $12:99B6: 9D 89 04
LDA.w DATA_11CCD3,y     ; $12:99B9: B9 D3 CC
STA $0492,x             ; $12:99BC: 9D 92 04
RTS                     ; $12:99BF: 60

CODE_1299C0:
LDA $65,x               ; $12:99C0: B5 65
AND #$FC                ; $12:99C2: 29 FC
ORA #$01                ; $12:99C4: 09 01
STA $65,x               ; $12:99C6: 95 65
LDA #$05                ; $12:99C8: A9 05
STA $51,x               ; $12:99CA: 95 51
STA $9F,x               ; $12:99CC: 95 9F
LDA #$1F                ; $12:99CE: A9 1F
STA $86,x               ; $12:99D0: 95 86
LDX $12                 ; $12:99D2: A6 12
RTS                     ; $12:99D4: 60

CODE_1299D5:
LDA #$FF                ; $12:99D5: A9 FF
STA $0441,x             ; $12:99D7: 9D 41 04
RTS                     ; $12:99DA: 60

CODE_1299DB:
LDX $E9                 ; $12:99DB: A6 E9
JSR CODE_1299E8         ; $12:99DD: 20 E8 99
LDA $E6                 ; $12:99E0: A5 E6
CLC                     ; $12:99E2: 18
ADC $E5                 ; $12:99E3: 65 E5
STA $E7                 ; $12:99E5: 85 E7
RTS                     ; $12:99E7: 60

CODE_1299E8:
STY $02F5               ; $12:99E8: 8C F5 02
LDA $0628               ; $12:99EB: AD 28 06
BEQ CODE_1299F4         ; $12:99EE: F0 04
LDA #$00                ; $12:99F0: A9 00
BRA CODE_1299FA         ; $12:99F2: 80 06

CODE_1299F4:
LDY $0534               ; $12:99F4: AC 34 05
LDA.w DATA_11AB11,y     ; $12:99F7: B9 11 AB

CODE_1299FA:
CLC                     ; $12:99FA: 18
ADC.w DATA_11AAFB,x     ; $12:99FB: 7D FB AA
STA $02                 ; $12:99FE: 85 02
LDA.w DATA_11AAF0,x     ; $12:9A00: BD F0 AA
STA $01                 ; $12:9A03: 85 01
LDA.w DATA_11AB06,x     ; $12:9A05: BD 06 AB
STA $03                 ; $12:9A08: 85 03
LDY $02F5               ; $12:9A0A: AC F5 02
RTS                     ; $12:9A0D: 60

CODE_129A0E:
LDA #$01                ; $12:9A0E: A9 01
LDY $00                 ; $12:9A10: A4 00
CPY #$92                ; $12:9A12: C0 92
BEQ CODE_129A1F         ; $12:9A14: F0 09
CPY #$93                ; $12:9A16: C0 93
BEQ CODE_129A1D         ; $12:9A18: F0 03
LDA #$00                ; $12:9A1A: A9 00
RTS                     ; $12:9A1C: 60

CODE_129A1D:
LDA #$08                ; $12:9A1D: A9 08

CODE_129A1F:
STA $46                 ; $12:9A1F: 85 46
LDA $04E0               ; $12:9A21: AD E0 04
BNE CODE_129A2D         ; $12:9A24: D0 07
LDA $32                 ; $12:9A26: A5 32
AND #$10                ; $12:9A28: 29 10
STA $04EC               ; $12:9A2A: 8D EC 04

CODE_129A2D:
LDA $32                 ; $12:9A2D: A5 32
AND #$0F                ; $12:9A2F: 29 0F
TAY                     ; $12:9A31: A8
LDA $04EC               ; $12:9A32: AD EC 04
EOR $32                 ; $12:9A35: 45 32
AND #$10                ; $12:9A37: 29 10
BEQ CODE_129A49         ; $12:9A39: F0 0E
CPY #$0C                ; $12:9A3B: C0 0C
BCC CODE_129A47         ; $12:9A3D: 90 08
LDA #$00                ; $12:9A3F: A9 00

; Don't remain in air.
STA $82                 ; $12:9A41: 85 82

; Die.
JSL CODE_14E39F         ; $12:9A43: 22 9F E3 14

CODE_129A47:
LDY #$04                ; $12:9A47: A0 04

CODE_129A49:
CPY #$04                ; $12:9A49: C0 04
BCS CODE_129A4F         ; $12:9A4B: B0 02
LDY #$01                ; $12:9A4D: A0 01

CODE_129A4F:
TYA                     ; $12:9A4F: 98
DEX                     ; $12:9A50: CA
RTS                     ; $12:9A51: 60

CODE_129A52:
LDA $85                 ; $12:9A52: A5 85
BNE CODE_129A7F         ; $12:9A54: D0 29
LDA $04C3               ; $12:9A56: AD C3 04
SEC                     ; $12:9A59: 38
SBC #$10                ; $12:9A5A: E9 10
BCC CODE_129A80         ; $12:9A5C: 90 22
STA $04C3               ; $12:9A5E: 8D C3 04
LDA #$7F                ; $12:9A61: A9 7F
STA $85                 ; $12:9A63: 85 85
LDA $0428               ; $12:9A65: AD 28 04
SEC                     ; $12:9A68: 38
SBC $0429               ; $12:9A69: ED 29 04
ASL A                   ; $12:9A6C: 0A
ASL A                   ; $12:9A6D: 0A
STA $3C                 ; $12:9A6E: 85 3C
LDA #$C0                ; $12:9A70: A9 C0
LDY $46                 ; $12:9A72: A4 46
BPL CODE_129A78         ; $12:9A74: 10 02
LDA #$00                ; $12:9A76: A9 00

CODE_129A78:
STA $46                 ; $12:9A78: 85 46
LDA #$04                ; $12:9A7A: A9 04
STA $1DE0               ; $12:9A7C: 8D E0 1D

CODE_129A7F:
RTS                     ; $12:9A7F: 60

CODE_129A80:
LDA #$C0                ; $12:9A80: A9 C0

; Rise for a bit while dying.
STA $46                 ; $12:9A82: 85 46
LDA #$20                ; $12:9A84: A9 20

; Remain in air for a couple of frames.
STA $82                 ; $12:9A86: 85 82
LDY $12                 ; $12:9A88: A4 12
BMI CODE_129A90         ; $12:9A8A: 30 04
LSR A                   ; $12:9A8C: 4A
STA $0438,y             ; $12:9A8D: 99 38 04

; Die.

CODE_129A90:
JSL CODE_14E39F         ; $12:9A90: 22 9F E3 14
RTS                     ; $12:9A94: 60
LDY $0441,x             ; $12:9A95: BC 41 04
BMI CODE_129AA0         ; $12:9A98: 30 06
LDA ($CC),y             ; $12:9A9A: B1 CC
AND #$7F                ; $12:9A9C: 29 7F
STA ($CC),y             ; $12:9A9E: 91 CC

CODE_129AA0:
LDA #$00                ; $12:9AA0: A9 00
STA $51,x               ; $12:9AA2: 95 51
RTS                     ; $12:9AA4: 60

CODE_129AA5:
LDY #$08                ; $12:9AA5: A0 08
BNE CODE_129AAB         ; $12:9AA7: D0 02

CODE_129AA9:
LDY #$05                ; $12:9AA9: A0 05

CODE_129AAB:
LDA $0051,y             ; $12:9AAB: B9 51 00
BEQ CODE_129AB4         ; $12:9AAE: F0 04
DEY                     ; $12:9AB0: 88
BPL CODE_129AAB         ; $12:9AB1: 10 F8
RTS                     ; $12:9AB3: 60

CODE_129AB4:
LDA #$01                ; $12:9AB4: A9 01
STA $0051,y             ; $12:9AB6: 99 51 00
LSR A                   ; $12:9AB9: 4A
STA $049B,y             ; $12:9ABA: 99 9B 04
LDA #$01                ; $12:9ABD: A9 01
STA $0090,y             ; $12:9ABF: 99 90 00
LDA $29,x               ; $12:9AC2: B5 29
ADC #$05                ; $12:9AC4: 69 05
STA $0029,y             ; $12:9AC6: 99 29 00
LDA $15,x               ; $12:9AC9: B5 15
ADC #$00                ; $12:9ACB: 69 00
STA $0015,y             ; $12:9ACD: 99 15 00
LDA $33,x               ; $12:9AD0: B5 33
STA $0033,y             ; $12:9AD2: 99 33 00
LDA $1F,x               ; $12:9AD5: B5 1F
STA $001F,y             ; $12:9AD7: 99 1F 00
STY $00                 ; $12:9ADA: 84 00
TYA                     ; $12:9ADC: 98
TAX                     ; $12:9ADD: AA
JSR CODE_129970         ; $12:9ADE: 20 70 99
JSR CODE_1299D5         ; $12:9AE1: 20 D5 99
LDX $12                 ; $12:9AE4: A6 12
RTS                     ; $12:9AE6: 60

ORG $129B00

CODE_129B00:
LDA $04AE               ; $12:9B00: AD AE 04
BEQ CODE_129B09         ; $12:9B03: F0 04
JSR CODE_129C64         ; $12:9B05: 20 64 9C
RTL                     ; $12:9B08: 6B

CODE_129B09:
INC $04AE               ; $12:9B09: EE AE 04
STA $0593               ; $12:9B0C: 8D 93 05
STA $04C5               ; $12:9B0F: 8D C5 04
STA $04C7               ; $12:9B12: 8D C7 04
STA $04B5               ; $12:9B15: 8D B5 04
STA $04B4               ; $12:9B18: 8D B4 04
STA $04B9               ; $12:9B1B: 8D B9 04
STA $04B6               ; $12:9B1E: 8D B6 04
STA $04FB               ; $12:9B21: 8D FB 04
STA $0425               ; $12:9B24: 8D 25 04
STA $3C                 ; $12:9B27: 85 3C
STA $85                 ; $12:9B29: 85 85
STA $9C                 ; $12:9B2B: 85 9C
STA $82                 ; $12:9B2D: 85 82
STA $04C6               ; $12:9B2F: 8D C6 04
STA $04FE               ; $12:9B32: 8D FE 04
STA $04CB               ; $12:9B35: 8D CB 04
STA $04CA               ; $12:9B38: 8D CA 04
STA $04E0               ; $12:9B3B: 8D E0 04
STA $04B8               ; $12:9B3E: 8D B8 04
LDY #$1B                ; $12:9B41: A0 1B

CODE_129B43:
LDA.w DATA_11AB47,y     ; $12:9B43: B9 47 AB
STA $1F00,y             ; $12:9B46: 99 00 1F
DEY                     ; $12:9B49: 88
BPL CODE_129B43         ; $12:9B4A: 10 F7
LDY $8F                 ; $12:9B4C: A4 8F
LDA.w DATA_119780,y     ; $12:9B4E: B9 80 97
STA $1F00               ; $12:9B51: 8D 00 1F
LDA.w DATA_119788,y     ; $12:9B54: B9 88 97
STA $1F07               ; $12:9B57: 8D 07 1F
LDA.w DATA_119784,y     ; $12:9B5A: B9 84 97
STA $1F0E               ; $12:9B5D: 8D 0E 1F
LDA.w DATA_11978C,y     ; $12:9B60: B9 8C 97
STA $1F15               ; $12:9B63: 8D 15 1F
LDA #$B6                ; $12:9B66: A9 B6
STA $0585               ; $12:9B68: 8D 85 05
LDA $0536               ; $12:9B6B: AD 36 05
ORA $0533               ; $12:9B6E: 0D 33 05

; If the current room is the first room...
; of the first level...
; ...don't branch, otherwise do branch.
BNE CODE_129B78         ; $12:9B71: D0 05
LDA #$23                ; $12:9B73: A9 23

; Falling sound.
STA $1DE0               ; $12:9B75: 8D E0 1D

CODE_129B78:
LDA $04AF               ; $12:9B78: AD AF 04
BNE CODE_129B80         ; $12:9B7B: D0 03
JMP CODE_129BFF         ; $12:9B7D: 4C FF 9B

CODE_129B80:
PHA                     ; $12:9B80: 48
LDX #$08                ; $12:9B81: A2 08

CODE_129B83:
LDA #$00                ; $12:9B83: A9 00
STA $A8,x               ; $12:9B85: 95 A8
DEX                     ; $12:9B87: CA
BPL CODE_129B83         ; $12:9B88: 10 F9
PLA                     ; $12:9B8A: 68
LDX #$05                ; $12:9B8B: A2 05
STX $12                 ; $12:9B8D: 86 12
CMP #$3F                ; $12:9B8F: C9 3F
BEQ CODE_129BFF         ; $12:9B91: F0 6C
STA $90,x               ; $12:9B93: 95 90
LDY #$01                ; $12:9B95: A0 01
STY $56                 ; $12:9B97: 84 56
LDY #$FF                ; $12:9B99: A0 FF
STY $0446               ; $12:9B9B: 8C 46 04
CMP #$38                ; $12:9B9E: C9 38
BNE CODE_129BC0         ; $12:9BA0: D0 1E
STA $B1,x               ; $12:9BA2: 95 B1
STA $04C8,x             ; $12:9BA4: 9D C8 04
STA $0477,x             ; $12:9BA7: 9D 77 04
LDA #$00                ; $12:9BAA: A9 00
STA $15,x               ; $12:9BAC: 95 15
STA $1F,x               ; $12:9BAE: 95 1F
JSR CODE_129F7A         ; $12:9BB0: 20 7A 9F
LDA #$F0                ; $12:9BB3: A9 F0
STA $47,x               ; $12:9BB5: 95 47
ASL A                   ; $12:9BB7: 0A
STA $33,x               ; $12:9BB8: 95 33
LDA #$78                ; $12:9BBA: A9 78
STA $29,x               ; $12:9BBC: 95 29
BNE CODE_129BFF         ; $12:9BBE: D0 3F

CODE_129BC0:
PHA                     ; $12:9BC0: 48
STX $042D               ; $12:9BC1: 8E 2D 04
JSR CODE_129F96         ; $12:9BC4: 20 96 9F
LDA #$01                ; $12:9BC7: A9 01
STA $A8,x               ; $12:9BC9: 95 A8
STA $9C                 ; $12:9BCB: 85 9C
JSR CODE_12B692         ; $12:9BCD: 20 92 B6
PLA                     ; $12:9BD0: 68
CMP #$3D                ; $12:9BD1: C9 3D
BNE CODE_129BFF         ; $12:9BD3: D0 2A
INC $79,x               ; $12:9BD5: F6 79
DEX                     ; $12:9BD7: CA
STX $12                 ; $12:9BD8: 86 12
LDA #$01                ; $12:9BDA: A9 01
STA $51,x               ; $12:9BDC: 95 51
LDA #$17                ; $12:9BDE: A9 17
STA $90,x               ; $12:9BE0: 95 90
JSR CODE_129F96         ; $12:9BE2: 20 96 9F
LDA #$00                ; $12:9BE5: A9 00
STA $0595               ; $12:9BE7: 8D 95 05
LDA $CB                 ; $12:9BEA: A5 CB
STA $33,x               ; $12:9BEC: 95 33
LDA $CA                 ; $12:9BEE: A5 CA
STA $1F,x               ; $12:9BF0: 95 1F
LDA $04C1               ; $12:9BF2: AD C1 04
STA $29,x               ; $12:9BF5: 95 29
LDA $04BF               ; $12:9BF7: AD BF 04
STA $15,x               ; $12:9BFA: 95 15
JSR CODE_12A09C         ; $12:9BFC: 20 9C A0

CODE_129BFF:
STZ $CC                 ; $12:9BFF: 64 CC
LDA #$1B                ; $12:9C01: A9 1B
STA $CD                 ; $12:9C03: 85 CD
LDA $EB                 ; $12:9C05: A5 EB
BNE CODE_129C3B         ; $12:9C07: D0 32
LDA #$14                ; $12:9C09: A9 14
STA $09                 ; $12:9C0B: 85 09
LDA $CB                 ; $12:9C0D: A5 CB
SBC #$30                ; $12:9C0F: E9 30
AND #$F0                ; $12:9C11: 29 F0
STA $05                 ; $12:9C13: 85 05
LDA $CA                 ; $12:9C15: A5 CA
SBC #$00                ; $12:9C17: E9 00
STA $06                 ; $12:9C19: 85 06

CODE_129C1B:
LDA $06                 ; $12:9C1B: A5 06
CMP #$0B                ; $12:9C1D: C9 0B
BCS CODE_129C27         ; $12:9C1F: B0 06
JSR CODE_129E26         ; $12:9C21: 20 26 9E
JSR CODE_129E26         ; $12:9C24: 20 26 9E

CODE_129C27:
JSR CODE_129C2F         ; $12:9C27: 20 2F 9C
DEC $09                 ; $12:9C2A: C6 09
BPL CODE_129C1B         ; $12:9C2C: 10 ED
RTL                     ; $12:9C2E: 6B

CODE_129C2F:
LDA $05                 ; $12:9C2F: A5 05
CLC                     ; $12:9C31: 18
ADC #$10                ; $12:9C32: 69 10
STA $05                 ; $12:9C34: 85 05
BCC CODE_129C3A         ; $12:9C36: 90 02
INC $06                 ; $12:9C38: E6 06

CODE_129C3A:
RTS                     ; $12:9C3A: 60

CODE_129C3B:
LDA $04C1               ; $12:9C3B: AD C1 04
SEC                     ; $12:9C3E: 38
SBC #$30                ; $12:9C3F: E9 30
AND #$F0                ; $12:9C41: 29 F0
STA $05                 ; $12:9C43: 85 05
LDA $04BF               ; $12:9C45: AD BF 04
SBC #$00                ; $12:9C48: E9 00
STA $06                 ; $12:9C4A: 85 06
LDA #$17                ; $12:9C4C: A9 17
STA $09                 ; $12:9C4E: 85 09

CODE_129C50:
LDA $06                 ; $12:9C50: A5 06
CMP #$0B                ; $12:9C52: C9 0B
BCS CODE_129C5C         ; $12:9C54: B0 06
JSR CODE_129D92         ; $12:9C56: 20 92 9D
JSR CODE_129D92         ; $12:9C59: 20 92 9D

CODE_129C5C:
JSR CODE_129C2F         ; $12:9C5C: 20 2F 9C
DEC $09                 ; $12:9C5F: C6 09
BPL CODE_129C50         ; $12:9C61: 10 ED
RTL                     ; $12:9C63: 6B

CODE_129C64:
JSR CODE_129D6A         ; $12:9C64: 20 6A 9D
LDA $0500               ; $12:9C67: AD 00 05
BEQ CODE_129C82         ; $12:9C6A: F0 16
LDA $10                 ; $12:9C6C: A5 10
AND #$1F                ; $12:9C6E: 29 1F
BNE CODE_129C7C         ; $12:9C70: D0 0A
LDY $079C               ; $12:9C72: AC 9C 07
BNE CODE_129C7C         ; $12:9C75: D0 05
LDY #$2F                ; $12:9C77: A0 2F
STY $1DE0               ; $12:9C79: 8C E0 1D

CODE_129C7C:
LSR A                   ; $12:9C7C: 4A
BCC CODE_129C82         ; $12:9C7D: 90 03
DEC $0500               ; $12:9C7F: CE 00 05

CODE_129C82:
LDA $04C1               ; $12:9C82: AD C1 04
CLC                     ; $12:9C85: 18
ADC #$FF                ; $12:9C86: 69 FF
STA $04C2               ; $12:9C88: 8D C2 04
LDA $04BF               ; $12:9C8B: AD BF 04
ADC #$00                ; $12:9C8E: 69 00
STA $04C0               ; $12:9C90: 8D C0 04
LDX #$08                ; $12:9C93: A2 08

CODE_129C95:
STX $12                 ; $12:9C95: 86 12
TXA                     ; $12:9C97: 8A
CLC                     ; $12:9C98: 18
ADC $0400               ; $12:9C99: 6D 00 04
ASL A                   ; $12:9C9C: 0A
TAY                     ; $12:9C9D: A8
REP #$20                ; $12:9C9E: C2 20
LDA.w DATA_11CC23,y     ; $12:9CA0: B9 23 CC
LDY $A8,x               ; $12:9CA3: B4 A8
BEQ CODE_129CBB         ; $12:9CA5: F0 14
LDY $04BE               ; $12:9CA7: AC BE 04
CPY #$19                ; $12:9CAA: C0 19
BCS CODE_129CBB         ; $12:9CAC: B0 0D
LDA #$0070              ; $12:9CAE: A9 70 00
LDY $90,x               ; $12:9CB1: B4 90
CMP #$0038              ; $12:9CB3: C9 38 00
BNE CODE_129CBB         ; $12:9CB6: D0 03
LDA #$0020              ; $12:9CB8: A9 20 00

CODE_129CBB:
STA $02F6               ; $12:9CBB: 8D F6 02
SEP #$20                ; $12:9CBE: E2 20
LDA $51,x               ; $12:9CC0: B5 51
CMP #$02                ; $12:9CC2: C9 02
BCS CODE_129CD1         ; $12:9CC4: B0 0B
LDA $90,x               ; $12:9CC6: B5 90
CMP #$32                ; $12:9CC8: C9 32
BCS CODE_129CD1         ; $12:9CCA: B0 05
LDA $0500               ; $12:9CCC: AD 00 05
BNE CODE_129CDF         ; $12:9CCF: D0 0E

CODE_129CD1:
LDA $86,x               ; $12:9CD1: B5 86
BEQ CODE_129CD7         ; $12:9CD3: F0 02
DEC $86,x               ; $12:9CD5: D6 86

CODE_129CD7:
LDA $0453,x             ; $12:9CD7: BD 53 04
BEQ CODE_129CDF         ; $12:9CDA: F0 03
DEC $0453,x             ; $12:9CDC: DE 53 04

CODE_129CDF:
LDA $045C,x             ; $12:9CDF: BD 5C 04
BEQ CODE_129CE7         ; $12:9CE2: F0 03
DEC $045C,x             ; $12:9CE4: DE 5C 04

CODE_129CE7:
LDA $0438,x             ; $12:9CE7: BD 38 04
BEQ CODE_129CF4         ; $12:9CEA: F0 08
LDA $10                 ; $12:9CEC: A5 10
LSR A                   ; $12:9CEE: 4A
BCC CODE_129CF4         ; $12:9CEF: 90 03
DEC $0438,x             ; $12:9CF1: DE 38 04

CODE_129CF4:
JSR CODE_129D21         ; $12:9CF4: 20 21 9D
JSR CODE_12BB60         ; $12:9CF7: 20 60 BB
JSR CODE_129D50         ; $12:9CFA: 20 50 9D
LDX $12                 ; $12:9CFD: A6 12
DEX                     ; $12:9CFF: CA
BPL CODE_129C95         ; $12:9D00: 10 93
LDA $0628               ; $12:9D02: AD 28 06
BNE CODE_129D20         ; $12:9D05: D0 19
LDA $04B9               ; $12:9D07: AD B9 04
BEQ CODE_129D20         ; $12:9D0A: F0 14
SEC                     ; $12:9D0C: 38
SBC #$47                ; $12:9D0D: E9 47
JSL CODE_118776         ; $12:9D0F: 22 76 87 11
dw CODE_12AA48
dw CODE_12AA79
dw CODE_129D1B
dw CODE_12DAF6

CODE_129D1B:
LDA #$00                ; $12:9D1B: A9 00
STA $04B9               ; $12:9D1D: 8D B9 04

CODE_129D20:
RTS                     ; $12:9D20: 60

CODE_129D21:
LDY #$00                ; $12:9D21: A0 00
JSR CODE_129D27         ; $12:9D23: 20 27 9D
INY                     ; $12:9D26: C8

CODE_129D27:
LDA $0585               ; $12:9D27: AD 85 05
ASL A                   ; $12:9D2A: 0A
ASL A                   ; $12:9D2B: 0A
SEC                     ; $12:9D2C: 38
ADC $0585               ; $12:9D2D: 6D 85 05
STA $0585               ; $12:9D30: 8D 85 05
ASL $0586               ; $12:9D33: 0E 86 05
LDA #$20                ; $12:9D36: A9 20
BIT $0586               ; $12:9D38: 2C 86 05
BCC CODE_129D41         ; $12:9D3B: 90 04
BEQ CODE_129D46         ; $12:9D3D: F0 07
BNE CODE_129D43         ; $12:9D3F: D0 02

CODE_129D41:
BNE CODE_129D46         ; $12:9D41: D0 03

CODE_129D43:
INC $0586               ; $12:9D43: EE 86 05

CODE_129D46:
LDA $0586               ; $12:9D46: AD 86 05
EOR $0585               ; $12:9D49: 4D 85 05
STA $0587,y             ; $12:9D4C: 99 87 05
RTS                     ; $12:9D4F: 60

CODE_129D50:
LDA $51,x               ; $12:9D50: B5 51

; Load sprite status.
; Execute pointer.
JSL CODE_118776         ; $12:9D52: 22 76 87 11

; 00 - Non-existant sprite, init. (Return.)
dw CODE_129D20

; 01 - Main routine.
dw CODE_12A84C

; 02 - Sprite falling off screen.
dw CODE_12A024

; 03 - Flat
dw CODE_12A164

; 04 - Explode
dw CODE_12A2BF

; 05 - Disappear in a puff of smoke
dw CODE_12A483

; 06 - Dissolving sand
dw CODE_12A6AB

; 07 - Stop interacting
dw CODE_12A276

; 08 - Disappear in two puffs of smoke
dw CODE_12A1AC

; 09 - Disappear abruptly
dw CODE_12A0C2

CODE_129D6A:
LDA $04B8               ; $12:9D6A: AD B8 04
BNE CODE_129DC0         ; $12:9D6D: D0 51
LDA $EB                 ; $12:9D6F: A5 EB
JSL CODE_118776         ; $12:9D71: 22 76 87 11
dw CODE_129E02
dw CODE_129D79

CODE_129D79:
LDY $6E                 ; $12:9D79: A4 6E
LDA $04C1               ; $12:9D7B: AD C1
CLC                     ; $12:9D7E: 18
ADC.w DATA_11978F,y     ; $12:9D7F: 79 8F 97
AND #$F0                ; $12:9D82: 29 F0
STA $05                 ; $12:9D84: 85 05
LDA $04BF               ; $12:9D86: AD BF 04
ADC.w DATA_119791,y     ; $12:9D89: 79 91 97
STA $06                 ; $12:9D8C: 85 06
CMP #$0A                ; $12:9D8E: C9 0A
BCS CODE_129DC0         ; $12:9D90: B0 2E

CODE_129D92:
LDA $0628               ; $12:9D92: AD 28 06
CMP #$02                ; $12:9D95: C9 02
BEQ CODE_129DC0         ; $12:9D97: F0 27
LDX #$00                ; $12:9D99: A2 00
STX $00                 ; $12:9D9B: 86 00

CODE_129D9D:
CPX $06                 ; $12:9D9D: E4 06
BEQ CODE_129DAD         ; $12:9D9F: F0 0C
LDA $00                 ; $12:9DA1: A5 00
TAY                     ; $12:9DA3: A8
CLC                     ; $12:9DA4: 18
ADC ($CC),y             ; $12:9DA5: 71 CC
STA $00                 ; $12:9DA7: 85 00
INX                     ; $12:9DA9: E8
JMP CODE_129D9D         ; $12:9DAA: 4C 9D 9D

CODE_129DAD:
LDY $00                 ; $12:9DAD: A4 00
LDA ($CC),y             ; $12:9DAF: B1 CC
STA $01                 ; $12:9DB1: 85 01
LDX #$FF                ; $12:9DB3: A2 FF
DEY                     ; $12:9DB5: 88

CODE_129DB6:
INY                     ; $12:9DB6: C8
INY                     ; $12:9DB7: C8
INX                     ; $12:9DB8: E8
INX                     ; $12:9DB9: E8
CPX $01                 ; $12:9DBA: E4 01
BCC CODE_129DC1         ; $12:9DBC: 90 03
LDX $12                 ; $12:9DBE: A6 12

CODE_129DC0:
RTS                     ; $12:9DC0: 60

CODE_129DC1:
LDA ($CC),y             ; $12:9DC1: B1 CC
BMI CODE_129DB6         ; $12:9DC3: 30 F1
INY                     ; $12:9DC5: C8
LDA ($CC),y             ; $12:9DC6: B1 CC
DEY                     ; $12:9DC8: 88
AND #$F0                ; $12:9DC9: 29 F0
CMP $05                 ; $12:9DCB: C5 05
BNE CODE_129DB6         ; $12:9DCD: D0 E7
LDA ($CC),y             ; $12:9DCF: B1 CC
CMP #$5C                ; $12:9DD1: C9 5C
BCS CODE_129DDD         ; $12:9DD3: B0 08
CMP #$47                ; $12:9DD5: C9 47
BCC CODE_129DDD         ; $12:9DD7: 90 04
STA $04B9               ; $12:9DD9: 8D B9 04
RTS                     ; $12:9DDC: 60

CODE_129DDD:
LDX #$04                ; $12:9DDD: A2 04

CODE_129DDF:
LDA $51,x               ; $12:9DDF: B5 51
BEQ CODE_129DE7         ; $12:9DE1: F0 04
DEX                     ; $12:9DE3: CA
BPL CODE_129DDF         ; $12:9DE4: 10 F9
RTS                     ; $12:9DE6: 60

CODE_129DE7:
STX $12                 ; $12:9DE7: 86 12
LDA $05                 ; $12:9DE9: A5 05
STA $29,x               ; $12:9DEB: 95 29
LDA $06                 ; $12:9DED: A5 06
STA $15,x               ; $12:9DEF: 95 15
INY                     ; $12:9DF1: C8
LDA ($CC),y             ; $12:9DF2: B1 CC
DEY                     ; $12:9DF4: 88
ASL A                   ; $12:9DF5: 0A
ASL A                   ; $12:9DF6: 0A
ASL A                   ; $12:9DF7: 0A
ASL A                   ; $12:9DF8: 0A
STA $33,x               ; $12:9DF9: 95 33
LDA #$00                ; $12:9DFB: A9 00
STA $1F,x               ; $12:9DFD: 95 1F
JMP CODE_129E8C         ; $12:9DFF: 4C 8C 9E

CODE_129E02:
LDA $10                 ; $12:9E02: A5 10
AND #$01                ; $12:9E04: 29 01
TAY                     ; $12:9E06: A8
INY                     ; $12:9E07: C8
LDA $D8                 ; $12:9E08: A5 D8
BEQ CODE_129E11         ; $12:9E0A: F0 05
AND #$03                ; $12:9E0C: 29 03
EOR #$03                ; $12:9E0E: 49 03
TAY                     ; $12:9E10: A8

CODE_129E11:
LDA $CB                 ; $12:9E11: A5 CB
CLC                     ; $12:9E13: 18
ADC.w DATA_11978F,y     ; $12:9E14: 79 8F 97
AND #$F0                ; $12:9E17: 29 F0
STA $05                 ; $12:9E19: 85 05
LDA $CA                 ; $12:9E1B: A5 CA
ADC.w DATA_119791,y     ; $12:9E1D: 79 91 97
STA $06                 ; $12:9E20: 85 06
CMP #$0A                ; $12:9E22: C9 0A
BCS CODE_129DC0         ; $12:9E24: B0 9A

CODE_129E26:
LDX #$00                ; $12:9E26: A2 00
STX $00                 ; $12:9E28: 86 00

CODE_129E2A:
CPX $06                 ; $12:9E2A: E4 06
BEQ CODE_129E3A         ; $12:9E2C: F0 0C
LDA $00                 ; $12:9E2E: A5 00
TAY                     ; $12:9E30: A8
CLC                     ; $12:9E31: 18
ADC ($CC),y             ; $12:9E32: 71 CC
STA $00                 ; $12:9E34: 85 00
INX                     ; $12:9E36: E8
JMP CODE_129E2A         ; $12:9E37: 4C 2A 9E

CODE_129E3A:
LDY $00                 ; $12:9E3A: A4 00
LDA ($CC),y             ; $12:9E3C: B1 CC
STA $01                 ; $12:9E3E: 85 01
LDX #$FF                ; $12:9E40: A2 FF
DEY                     ; $12:9E42: 88

CODE_129E43:
INY                     ; $12:9E43: C8
INY                     ; $12:9E44: C8
INX                     ; $12:9E45: E8
INX                     ; $12:9E46: E8
CPX $01                 ; $12:9E47: E4 01
BCC CODE_129E4E         ; $12:9E49: 90 03
LDX $12                 ; $12:9E4B: A6 12

CODE_129E4D:
RTS                     ; $12:9E4D: 60

CODE_129E4E:
LDA ($CC),y             ; $12:9E4E: B1 CC
BMI CODE_129E43         ; $12:9E50: 30 F1
INY                     ; $12:9E52: C8
LDA ($CC),y             ; $12:9E53: B1 CC
DEY                     ; $12:9E55: 88
ASL A                   ; $12:9E56: 0A
ASL A                   ; $12:9E57: 0A
ASL A                   ; $12:9E58: 0A
ASL A                   ; $12:9E59: 0A
CMP $05                 ; $12:9E5A: C5 05
BNE CODE_129E43         ; $12:9E5C: D0 E5
LDA ($CC),y             ; $12:9E5E: B1 CC
CMP #$5C                ; $12:9E60: C9 5C
BCS CODE_129E6C         ; $12:9E62: B0 08
CMP #$47                ; $12:9E64: C9 47
BCC CODE_129E6C         ; $12:9E66: 90 04
STA $04B9               ; $12:9E68: 8D B9 04
RTS                     ; $12:9E6B: 60

CODE_129E6C:
LDX #$04                ; $12:9E6C: A2 04

CODE_129E6E:
LDA $51,x               ; $12:9E6E: B5 51
BEQ CODE_129E76         ; $12:9E70: F0 04
DEX                     ; $12:9E72: CA
BPL CODE_129E6E         ; $12:9E73: 10 F9
RTS                     ; $12:9E75: 60

CODE_129E76:
STX $12                 ; $12:9E76: 86 12
LDA $05                 ; $12:9E78: A5 05
STA $33,x               ; $12:9E7A: 95 33
LDA $06                 ; $12:9E7C: A5 06
STA $1F,x               ; $12:9E7E: 95 1F
INY                     ; $12:9E80: C8
LDA ($CC),y             ; $12:9E81: B1 CC
DEY                     ; $12:9E83: 88
AND #$F0                ; $12:9E84: 29 F0
STA $29,x               ; $12:9E86: 95 29
LDA #$00                ; $12:9E88: A9 00
STA $15,x               ; $12:9E8A: 95 15

CODE_129E8C:
STA $049B,x             ; $12:9E8C: 9D 9B 04
STY $0C                 ; $12:9E8F: 84 0C
LDA ($CC),y             ; $12:9E91: B1 CC
AND #$3F                ; $12:9E93: 29 3F
CMP #$32                ; $12:9E95: C9 32
BCS CODE_129EA8         ; $12:9E97: B0 0F
LDA $EB                 ; $12:9E99: A5 EB
BEQ CODE_129EA8         ; $12:9E9B: F0 0B
JSR CODE_12C1DA         ; $12:9E9D: 20 DA C1
LDA $0F                 ; $12:9EA0: A5 0F
ADC #$18                ; $12:9EA2: 69 18
CMP #$30                ; $12:9EA4: C9 30
BCC CODE_129E4D         ; $12:9EA6: 90 A5

CODE_129EA8:
LDY $0C                 ; $12:9EA8: A4 0C
LDA ($CC),y             ; $12:9EAA: B1 CC
ORA #$80                ; $12:9EAC: 09 80
STA ($CC),y             ; $12:9EAE: 91 CC
CMP #$DC                ; $12:9EB0: C9 DC
AND #$7F                ; $12:9EB2: 29 7F
BCC CODE_129EBB         ; $12:9EB4: 90 05
AND #$3F                ; $12:9EB6: 29 3F
STA $049B,x             ; $12:9EB8: 9D 9B 04

CODE_129EBB:
CMP #$1C                ; $12:9EBB: C9 1C
BNE CODE_129EC7         ; $12:9EBD: D0 08
LDX $04B5               ; $12:9EBF: AE B5 04
BEQ CODE_129EC7         ; $12:9EC2: F0 03
LDX $12                 ; $12:9EC4: A6 12
RTS                     ; $12:9EC6: 60

CODE_129EC7:
CMP #$17                ; $12:9EC7: C9 17
BEQ CODE_129ECF         ; $12:9EC9: F0 04
CMP #$1D                ; $12:9ECB: C9 1D
BNE CODE_129EDC         ; $12:9ECD: D0 0D

CODE_129ECF:
LDX #$05                ; $12:9ECF: A2 05

CODE_129ED1:
CMP $90,x               ; $12:9ED1: D5 90
BEQ CODE_129EDA         ; $12:9ED3: F0 05
DEX                     ; $12:9ED5: CA
BPL CODE_129ED1         ; $12:9ED6: 10 F9
BRA CODE_129EDC         ; $12:9ED8: 80 02

CODE_129EDA:
STZ $51,x               ; $12:9EDA: 74 51

CODE_129EDC:
LDX $12                 ; $12:9EDC: A6 12
STA $90,x               ; $12:9EDE: 95 90
TYA                     ; $12:9EE0: 98
STA $0441,x             ; $12:9EE1: 9D 41 04

; Sprite status = init routine.
INC $51,x               ; $12:9EE4: F6 51

; Jump to routine based on sprite number.
LDA $90,x               ; $12:9EE6: B5 90
JSL CODE_118776         ; $12:9EE8: 22 76 87 11

; 00 - Heart
dw CODE_129F96

; 01 - Shy Guy, red
dw CODE_129F96

; 02 - Tweeter
dw CODE_129F96

; 03 - Shy Guy, blue
dw CODE_129F96

; 04 - Porcupo
dw CODE_129F96

; 05 - Snifit, red
dw CODE_129F96

; 06 - Snifit, grey
dw CODE_12AC85

; 07 - Snifit, blue
dw CODE_129F96

; 08 - Ostro with red Shyguy
dw CODE_129F96

; 09 - Bob-Omb
dw CODE_12A01C

; 0A - Albatoss with Bob-Omb
dw CODE_129F96

; 0B - Albatoss, coming from left
dw CODE_12B27D

; 0C - Albatoss, coming from right
dw CODE_12B276

; 0D - Ninji, running
dw CODE_129F96

; 0E - Ninji, jumping
dw CODE_12AC85

; 0F - Beezo, gold
dw CODE_129FE3

; 10 - Beezo, red.
dw CODE_129F96

; 11 - Wart Bubble.
dw CODE_129F96

; 12 - Pidgit, carpet.
dw CODE_129F96

; 13 - Trouter.
dw CODE_12AE10

; 14 - Hoopster.
dw CODE_129F96

; 15 - Shyguy generator.
dw CODE_12A9CB

; 16 - Bob-omb Generator
dw CODE_12A9CB

; 17 - Phanto
dw CODE_12A00F

; 18 - Cobrat, jar
dw CODE_12CCBA

; 19 - Cobrat, sand
dw CODE_12CCBA

; 1A - Pokey
dw CODE_12CDE8

; 1B - Bullet
dw CODE_129F96

; 1C - Birdo
dw CODE_12AF2D

; 1D - Mouser
dw CODE_12C7F8

; 1E - Egg
dw CODE_129F96

; 1F - Triclyde
dw CODE_12CA80

; 20 - Fireball
dw CODE_129F96

; 21 - Clawglip
dw CODE_12C270

; 22 - Rock
dw CODE_129F96

; 23 - Panser, red
dw CODE_12AC85

; 24 - Panser, blue
dw CODE_129F96

; 25 - Panser, green
dw CODE_12AC85

; 26 - Autobomb with Shyguy
dw CODE_129F96

; 27 - Autobomb fire
dw CODE_129F96

; 28 - Whale spout
dw CODE_12D595

; 29 - Flurry
dw CODE_129F96

; 2A - Fryguy
dw CODE_12D2FD

; 2B - Small Fryguy.
dw CODE_12D2FD

; 2C - Wart.
dw CODE_12DB43

; 2D - Hawkmouth boss.
dw CODE_12D800

; 2E - Sparky, right, slow.
dw CODE_12A9D3

; 2F - Sparky, right, fast.
dw CODE_12A9D3

; 30 - Sparky, left, slow.
dw CODE_12A9D3

; 31 - Sparky, left, fast.
dw CODE_12A9D3

; 32 - Small vegetable.
dw CODE_129F96

; 33 - Fresh vegetable.
dw CODE_129F96

; 34 - Vegetable thrower vegetable.
dw CODE_129F96

; 35 - Shell
dw CODE_129F96

; 36 - Coin
dw CODE_129F96

; 37 - Bomb
dw CODE_129F96

; 38 - Rocket
dw CODE_129F96

; 39 - Mushroom block
dw CODE_129F96

; 3A - POW block
dw CODE_129F96

; 3B - Rolling log
dw CODE_12BA59

; 3C - Door to dark room
dw CODE_129F96

; 3D - Key
dw CODE_12ABAA

; 3E - Potion
dw CODE_129F96

; 3F - Mushroom
dw CODE_12AC85

; 40 - 1-Up
dw CODE_12AC85

; 41 - Pidgit's carpet
dw CODE_129F96

; 42 - Hawkmouth, face to the right
dw CODE_12AC78

; 43 - Hawkmouth, face to the left
dw CODE_12AC78

; 44 - Crystal ball
dw CODE_12ABCA

; 45 - Star
dw CODE_12ABCA

; 46 - Stopwatch
dw CODE_12ABCA

CODE_129F7A:
LDY $90,x               ; $12:9F7A: B4 90
LDA.w DATA_11CC45,y     ; $12:9F7C: B9 45 CC
AND #$7F                ; $12:9F7F: 29 7F
STA $65,x               ; $12:9F81: 95 65
LDA.w DATA_11CC8C,y     ; $12:9F83: B9 8C CC
STA $046E,x             ; $12:9F86: 9D 6E 04
LDA.w DATA_11CD1A,y     ; $12:9F89: B9 1A CD
STA $0489,x             ; $12:9F8C: 9D 89 04
LDA.w DATA_11CCD3,y     ; $12:9F8F: B9 D3 CC
STA $0492,x             ; $12:9F92: 9D 92 04
RTS                     ; $12:9F95: 60

CODE_129F96:
STZ $86,x               ; $12:9F96: 74 86

CODE_129F98:
STZ $79,x               ; $12:9F98: 74 79
LDA #$00                ; $12:9F9A: A9 00
STA $B1,x               ; $12:9F9C: 95 B1
STA $042F,x             ; $12:9F9E: 9D 2F 04
STA $A8,x               ; $12:9FA1: 95 A8
STA $9F,x               ; $12:9FA3: 95 9F
STA $044A,x             ; $12:9FA5: 9D 4A 04
STA $5B,x               ; $12:9FA8: 95 5B
STA $0438,x             ; $12:9FAA: 9D 38 04
STA $0453,x             ; $12:9FAD: 9D 53 04
STA $04CD,x             ; $12:9FB0: 9D CD 04
STA $04D7,x             ; $12:9FB3: 9D D7 04
STA $045C,x             ; $12:9FB6: 9D 5C 04
STA $0477,x             ; $12:9FB9: 9D 77 04
STA $0480,x             ; $12:9FBC: 9D 80 04
STA $0465,x             ; $12:9FBF: 9D 65 04
STA $0702,x             ; $12:9FC2: 9D 02 07
STA $0D00,x             ; $12:9FC5: 9D 00 0D
STA $47,x               ; $12:9FC8: 95 47

CODE_129FCA:
JSR CODE_129F7A         ; $12:9FCA: 20 7A 9F

CODE_129FCD:
JSR CODE_12C1DA         ; $12:9FCD: 20 DA C1

CODE_129FD0:
INY                     ; $12:9FD0: C8
TYA                     ; $12:9FD1: 98
STA $6F,x               ; $12:9FD2: 95 6F
LDA.w DATA_1197B0,y     ; $12:9FD4: B9 B0 97
STA $3D,x               ; $12:9FD7: 95 3D
LDA $046E,x             ; $12:9FD9: BD 6E 04
AND #$40                ; $12:9FDC: 29 40
BEQ CODE_129FE2         ; $12:9FDE: F0 02
ASL $3D,x               ; $12:9FE0: 16 3D

CODE_129FE2:
RTS                     ; $12:9FE2: 60

CODE_129FE3:
JSR CODE_129F96         ; $12:9FE3: 20 96 9F
LDY $6E                 ; $12:9FE6: A4 6E
LDA $04C1               ; $12:9FE8: AD C1 04
ADC.w DATA_119793,y     ; $12:9FEB: 79 93 97
STA $29,x               ; $12:9FEE: 95 29
LDA $04BF               ; $12:9FF0: AD BF 04
ADC #$00                ; $12:9FF3: 69 00
STA $15,x               ; $12:9FF5: 95 15

CODE_129FF7:
LDA $1E                 ; $12:9FF7: A5 1E
BPL CODE_129FFF         ; $12:9FF9: 10 04
LDY #$00                ; $12:9FFB: A0 00
BEQ CODE_12A009         ; $12:9FFD: F0 0A

CODE_129FFF:
LDA $32                 ; $12:9FFF: A5 32
SEC                     ; $12:A001: 38
SBC $CB                 ; $12:A002: E5 CB
LSR A                   ; $12:A004: 4A
LSR A                   ; $12:A005: 4A
LSR A                   ; $12:A006: 4A
LSR A                   ; $12:A007: 4A
TAY                     ; $12:A008: A8

CODE_12A009:
LDA.w DATA_119796,y     ; $12:A009: B9 96 97
STA $47,x               ; $12:A00C: 95 47
RTS                     ; $12:A00E: 60

CODE_12A00F:
JSR CODE_129F96         ; $12:A00F: 20 96 9F
LDA #$0C                ; $12:A012: A9 0C

; X speed = #$0C.
STA $3D,x               ; $12:A014: 95 3D
LDA #$A0                ; $12:A016: A9 A0

; Phanto takeoff timer
STA $0595               ; $12:A018: 8D 95 05
RTS                     ; $12:A01B: 60

CODE_12A01C:
JSR CODE_129F96         ; $12:A01C: 20 96 9F
LDA #$FF                ; $12:A01F: A9 FF
STA $86,x               ; $12:A021: 95 86
RTS                     ; $12:A023: 60

CODE_12A024:
JSR CODE_12DE6A         ; $12:A024: 20 6A DE
JSR CODE_12A745         ; $12:A027: 20 45 A7
LDA $D8                 ; $12:A02A: A5 D8
AND #$04                ; $12:A02C: 29 04
BEQ CODE_12A033         ; $12:A02E: F0 03
JMP CODE_12BD29         ; $12:A030: 4C 29 BD

CODE_12A033:
LDA $51,x               ; $12:A033: B5 51
BNE CODE_12A0A2         ; $12:A035: D0 6B
LDA $049B,x             ; $12:A037: BD 9B 04
BEQ CODE_12A06C         ; $12:A03A: F0 30

CODE_12A03C:
STA $04B8               ; $12:A03C: 8D B8 04
JSR CODE_12BAB4         ; $12:A03F: 20 B4 BA
JSR CODE_129D1B         ; $12:A042: 20 1B 9D
LDA #$0B                ; $12:A045: A9 0B

; Boss is cleared.
STA $1DE2               ; $12:A047: 8D E2 1D
LDA $04F0,x             ; $12:A04A: BD F0 04
STA $15,x               ; $12:A04D: 95 15
LDA #$80                ; $12:A04F: A9 80
STA $29,x               ; $12:A051: 95 29
ASL A                   ; $12:A053: 0A
STA $1F,x               ; $12:A054: 95 1F
LDA #$B0                ; $12:A056: A9 B0
LDY $90,x               ; $12:A058: B4 90
CPY #$21                ; $12:A05A: C0 21
BNE CODE_12A060         ; $12:A05C: D0 02
LDA #$70                ; $12:A05E: A9 70

CODE_12A060:
STA $33,x               ; $12:A060: 95 33
LDA #$41                ; $12:A062: A9 41
STA $65,x               ; $12:A064: 95 65
STA $046E,x             ; $12:A066: 9D 6E 04
JMP CODE_12B1F9         ; $12:A069: 4C F9 B1

CODE_12A06C:
LDA $90,x               ; $12:A06C: B5 90
CMP #$1B                ; $12:A06E: C9 1B
BEQ CODE_12A0A2         ; $12:A070: F0 30
INC $04AD               ; $12:A072: EE AD 04
LDY $04AD               ; $12:A075: AC AD 04
CPY #$08                ; $12:A078: C0 08
BCC CODE_12A0A2         ; $12:A07A: 90 26
LDA #$00                ; $12:A07C: A9 00
STA $04AD               ; $12:A07E: 8D AD 04
LDA #$01                ; $12:A081: A9 01
STA $51,x               ; $12:A083: 95 51
STA $65,x               ; $12:A085: 95 65
LDA #$07                ; $12:A087: A9 07
STA $046E,x             ; $12:A089: 9D 6E 04
LDA #$00                ; $12:A08C: A9 00
STA $90,x               ; $12:A08E: 95 90
LDA $33,x               ; $12:A090: B5 33
SBC #$60                ; $12:A092: E9 60
STA $33,x               ; $12:A094: 95 33
LDA $1F,x               ; $12:A096: B5 1F
SBC #$00                ; $12:A098: E9 00
STA $1F,x               ; $12:A09A: 95 1F

CODE_12A09C:
LDA #$FF                ; $12:A09C: A9 FF
STA $0441,x             ; $12:A09E: 9D 41 04
RTS                     ; $12:A0A1: 60

CODE_12A0A2:
ASL $65,x               ; $12:A0A2: 16 65
SEC                     ; $12:A0A4: 38
ROR $65,x               ; $12:A0A5: 76 65

CODE_12A0A7:
JSR CODE_12BD29         ; $12:A0A7: 20 29 BD

CODE_12A0AA:
LDA $044A,x             ; $12:A0AA: BD 4A 04
BNE CODE_12A0B2         ; $12:A0AD: D0 03
JSR CODE_12C1EF         ; $12:A0AF: 20 EF C1

CODE_12A0B2:
JSR CODE_12C1EA         ; $12:A0B2: 20 EA C1
LDA $47,x               ; $12:A0B5: B5 47

; Check if negative Y speed (rise up).
; If so, decrease rising speed.
BMI CODE_12A0BD         ; $12:A0B7: 30 04
CMP #$3E                ; $12:A0B9: C9 3E

; Check if falling at maximum speed.
; If so, return, and don't fall any faster.
BCS CODE_12A0C1         ; $12:A0BB: B0 04

CODE_12A0BD:
INC $47,x               ; $12:A0BD: F6 47

; Gravity.
INC $47,x               ; $12:A0BF: F6 47

; Return.

CODE_12A0C1:
RTS                     ; $12:A0C1: 60

CODE_12A0C2:
JSR CODE_12A745         ; $12:A0C2: 20 45 A7
LDA $86,x               ; $12:A0C5: B5 86
BNE CODE_12A0CC         ; $12:A0C7: D0 03
JMP CODE_12A5B2         ; $12:A0C9: 4C B2 A5

CODE_12A0CC:
JSR CODE_12A0DA         ; $12:A0CC: 20 DA A0
JMP CODE_12A4A1         ; $12:A0CF: 4C A1 A4

DATA_12A0D2:
db $00,$00,$EC,$EA

DATA_12A0D6:
db $00,$00,$F6,$00

CODE_12A0DA:
LDA $86,x               ; $12:A0DA: B5 86
AND #$18                ; $12:A0DC: 29 18
LSR A                   ; $12:A0DE: 4A
LSR A                   ; $12:A0DF: 4A
LSR A                   ; $12:A0E0: 4A
TAX                     ; $12:A0E1: AA
LDA.l DATA_12A0D2,x     ; $12:A0E2: BF D2 A0 12
BEQ CODE_12A15F         ; $12:A0E6: F0 77
STA $0712               ; $12:A0E8: 8D 12 07
LDA.l DATA_12A0D6,x     ; $12:A0EB: BF D6 A0 12
STA $0713               ; $12:A0EF: 8D 13 07
REP #$10                ; $12:A0F2: C2 10
LDY $02F6               ; $12:A0F4: AC F6 02
LDA $0429               ; $12:A0F7: AD 29 04
STA $0800,y             ; $12:A0FA: 99 00 08
LDA $042C               ; $12:A0FD: AD 2C 04
CLC                     ; $12:A100: 18
ADC $0713               ; $12:A101: 6D 13 07
STA $0801,y             ; $12:A104: 99 01 08
LDA $0712               ; $12:A107: AD 12 07
STA $0802,y             ; $12:A10A: 99 02 08
LDA #$2B                ; $12:A10D: A9 2B
STA $0803,y             ; $12:A10F: 99 03 08
REP #$20                ; $12:A112: C2 20
TYA                     ; $12:A114: 98
LSR A                   ; $12:A115: 4A
LSR A                   ; $12:A116: 4A
TAY                     ; $12:A117: A8
SEP #$20                ; $12:A118: E2 20
LDA #$02                ; $12:A11A: A9 02
STA $0A20,y             ; $12:A11C: 99 20 0A
LDA $0429               ; $12:A11F: AD 29 04
CMP #$F0                ; $12:A122: C9 F0
BCC CODE_12A15F         ; $12:A124: 90 39
JSL CODE_14E483         ; $12:A126: 22 83 E4 14
REP #$10                ; $12:A12A: C2 10
LDY $02F6               ; $12:A12C: AC F6 02
LDX $02F8               ; $12:A12F: AE F8 02
LDA $0800,y             ; $12:A132: B9 00 08
STA $0800,x             ; $12:A135: 9D 00 08
LDA $0801,y             ; $12:A138: B9 01 08
STA $0801,x             ; $12:A13B: 9D 01 08
LDA $0802,y             ; $12:A13E: B9 02 08
STA $0802,x             ; $12:A141: 9D 02 08
LDA $0803,y             ; $12:A144: B9 03 08
STA $0803,x             ; $12:A147: 9D 03 08
REP #$20                ; $12:A14A: C2 20
TYA                     ; $12:A14C: 98
LSR A                   ; $12:A14D: 4A
LSR A                   ; $12:A14E: 4A
TAY                     ; $12:A14F: A8
TXA                     ; $12:A150: 8A
LSR A                   ; $12:A151: 4A
LSR A                   ; $12:A152: 4A
TAX                     ; $12:A153: AA
SEP #$20                ; $12:A154: E2 20
LDA #$03                ; $12:A156: A9 03
STA $0A20,y             ; $12:A158: 99 20 0A
DEC A                   ; $12:A15B: 3A
STA $0A21,y             ; $12:A15C: 99 21 0A

CODE_12A15F:
SEP #$10                ; $12:A15F: E2 10
LDX $12                 ; $12:A161: A6 12
RTS                     ; $12:A163: 60

CODE_12A164:
JSR CODE_12A745         ; $12:A164: 20 45 A7
LDA $86,x               ; $12:A167: B5 86
BEQ CODE_12A1A0         ; $12:A169: F0 35
TAY                     ; $12:A16B: A8
LSR A                   ; $12:A16C: 4A
LSR A                   ; $12:A16D: 4A
AND #$01                ; $12:A16E: 29 01
STA $6F,x               ; $12:A170: 95 6F
LDA #$01                ; $12:A172: A9 01
STA $65,x               ; $12:A174: 95 65
STA $046E,x             ; $12:A176: 9D 6E 04
LDA #$3C                ; $12:A179: A9 3C
CPY #$0C                ; $12:A17B: C0 0C
BCC CODE_12A181         ; $12:A17D: 90 02
LDA #$3E                ; $12:A17F: A9 3E

CODE_12A181:
JSR CODE_12BDD5         ; $12:A181: 20 D5 BD
REP #$10                ; $12:A184: C2 10
LDY $02F6               ; $12:A186: AC F6 02
LDA $90,x               ; $12:A189: B5 90
CMP #$3A                ; $12:A18B: C9 3A

; If not a POW sprite, then...
; have regular properties...
BNE CODE_12A193         ; $12:A18D: D0 04

; YXPPCCCT of flat POW sprite. Highest priority bit set, palette 9, GFX page 0.
LDA #$22                ; $12:A18F: A9 22
BRA CODE_12A19A         ; $12:A191: 80 07

CODE_12A193:
LDA $0803,y             ; $12:A193: B9 03 08
AND #$F0                ; $12:A196: 29 F0
ORA #$04                ; $12:A198: 09 04

CODE_12A19A:
STA $0803,y             ; $12:A19A: 99 03 08
SEP #$10                ; $12:A19D: E2 10
RTS                     ; $12:A19F: 60

CODE_12A1A0:
LDA #$00                ; $12:A1A0: A9 00
JSL CODE_13FBC2         ; $12:A1A2: 22 C2 FB 13
JMP CODE_12A83B         ; $12:A1A6: 4C 3B A8

DATA_12A1A9:
db $40,$2E,$2C

CODE_12A1AC:
JSR CODE_12A745         ; $12:A1AC: 20 45 A7
LDA $86,x               ; $12:A1AF: B5 86
BEQ CODE_12A1A0         ; $12:A1B1: F0 ED
PHX                     ; $12:A1B3: DA
LSR A                   ; $12:A1B4: 4A
LSR A                   ; $12:A1B5: 4A
LSR A                   ; $12:A1B6: 4A
TAX                     ; $12:A1B7: AA
LDA.l DATA_12A1A9,x     ; $12:A1B8: BF A9 A1 12
STA $0711               ; $12:A1BC: 8D 11 07
TXY                     ; $12:A1BF: 9B
PLX                     ; $12:A1C0: FA
LDA #$01                ; $12:A1C1: A9 01
STA $65,x               ; $12:A1C3: 95 65
STA $046E,x             ; $12:A1C5: 9D 6E 04
STA $6F,x               ; $12:A1C8: 95 6F
LDA $02F6               ; $12:A1CA: AD F6 02
STA $02F8               ; $12:A1CD: 8D F8 02
LDA $02F7               ; $12:A1D0: AD F7 02
STA $02F9               ; $12:A1D3: 8D F9 02
CPY #$02                ; $12:A1D6: C0 02
BNE CODE_12A1E3         ; $12:A1D8: D0 09
LDA #$CA                ; $12:A1DA: A9 CA
JSR CODE_12A181         ; $12:A1DC: 20 81 A1
JSL CODE_14E483         ; $12:A1DF: 22 83 E4 14

CODE_12A1E3:
LDA $33,x               ; $12:A1E3: B5 33
STA $0716               ; $12:A1E5: 8D 16 07
LDA $1F,x               ; $12:A1E8: B5 1F
STA $0717               ; $12:A1EA: 8D 17 07
LDA $CB                 ; $12:A1ED: A5 CB
STA $070F               ; $12:A1EF: 8D 0F 07
LDA $CA                 ; $12:A1F2: A5 CA
STA $0710               ; $12:A1F4: 8D 10 07
LDA $021F               ; $12:A1F7: AD 1F 02
XBA                     ; $12:A1FA: EB
LDA $0429               ; $12:A1FB: AD 29 04
REP #$30                ; $12:A1FE: C2 30
CLC                     ; $12:A200: 18
ADC #$FFF4              ; $12:A201: 69 F4 FF
STA $0712               ; $12:A204: 8D 12 07
CLC                     ; $12:A207: 18
ADC #$0018              ; $12:A208: 69 18 00
STA $0714               ; $12:A20B: 8D 14 07
LDA $0716               ; $12:A20E: AD 16 07
SEC                     ; $12:A211: 38
SBC $070F               ; $12:A212: ED 0F 07
CLC                     ; $12:A215: 18
ADC #$FFFC              ; $12:A216: 69 FC FF
STA $0716               ; $12:A219: 8D 16 07
SEP #$20                ; $12:A21C: E2 20
LDA $0717               ; $12:A21E: AD 17 07
BNE CODE_12A26A         ; $12:A221: D0 47
LDY $02F8               ; $12:A223: AC F8 02
LDA $0712               ; $12:A226: AD 12 07
STA $0800,y             ; $12:A229: 99 00 08
LDA $0714               ; $12:A22C: AD 14 07
STA $0804,y             ; $12:A22F: 99 04 08
LDA $0716               ; $12:A232: AD 16 07
STA $0801,y             ; $12:A235: 99 01 08
STA $0805,y             ; $12:A238: 99 05 08
LDA $0711               ; $12:A23B: AD 11 07
STA $0802,y             ; $12:A23E: 99 02 08
STA $0806,y             ; $12:A241: 99 06 08
LDA #$66                ; $12:A244: A9 66
STA $0803,y             ; $12:A246: 99 03 08
AND #$BF                ; $12:A249: 29 BF
STA $0807,y             ; $12:A24B: 99 07 08
REP #$20                ; $12:A24E: C2 20
TYA                     ; $12:A250: 98
LSR A                   ; $12:A251: 4A
LSR A                   ; $12:A252: 4A
TAY                     ; $12:A253: A8
SEP #$20                ; $12:A254: E2 20
LDA $0713               ; $12:A256: AD 13 07
AND #$01                ; $12:A259: 29 01
ORA #$02                ; $12:A25B: 09 02
STA $0A20,y             ; $12:A25D: 99 20 0A
LDA $0715               ; $12:A260: AD 15 07
AND #$01                ; $12:A263: 29 01
ORA #$02                ; $12:A265: 09 02
STA $0A21,y             ; $12:A267: 99 21 0A

CODE_12A26A:
SEP #$10                ; $12:A26A: E2 10
RTS                     ; $12:A26C: 60

CODE_12A26D:
LDA #$00                ; $12:A26D: A9 00
JSL CODE_13FBC2         ; $12:A26F: 22 C2 FB 13
JMP CODE_12A83B         ; $12:A273: 4C 3B A8

CODE_12A276:
JSR CODE_12A745         ; $12:A276: 20 45 A7
JSR CODE_12BB16         ; $12:A279: 20 16 BB
LDA $042F,x             ; $12:A27C: BD 2F 04
BEQ CODE_12A284         ; $12:A27F: F0 03
STZ $042F,x             ; $12:A281: 9E 2F 04

CODE_12A284:
LDA $A8,x               ; $12:A284: B5 A8
BEQ CODE_12A28D         ; $12:A286: F0 05
LDA #$01                ; $12:A288: A9 01
STA $51,x               ; $12:A28A: 95 51
RTS                     ; $12:A28C: 60

CODE_12A28D:
LDA $86,x               ; $12:A28D: B5 86
BEQ CODE_12A26D         ; $12:A28F: F0 DC
LDA $90,x               ; $12:A291: B5 90
CMP #$32                ; $12:A293: C9 32
BCS CODE_12A2AD         ; $12:A295: B0 16
JSR CODE_12AA43         ; $12:A297: 20 43 AA
LDA $10                 ; $12:A29A: A5 10
AND #$03                ; $12:A29C: 29 03
STA $044A,x             ; $12:A29E: 9D 4A 04
LDA $10                 ; $12:A2A1: A5 10
AND #$10                ; $12:A2A3: 29 10
LSR A                   ; $12:A2A5: 4A
LSR A                   ; $12:A2A6: 4A
LSR A                   ; $12:A2A7: 4A
LSR A                   ; $12:A2A8: 4A
ADC #$01                ; $12:A2A9: 69 01
STA $6F,x               ; $12:A2AB: 95 6F

CODE_12A2AD:
JSR CODE_12B4EA         ; $12:A2AD: 20 EA B4
JMP CODE_12DE6A         ; $12:A2B0: 4C 6A DE

; Tilemap of "BOMB"

DATA_12A2B3:
db $C6,$C8,$E6,$E8

; XDisp of "BOMB"

DATA_12A2B7:
db $F8,$08,$F8,$08

; YDisp of "BOMB"

DATA_12A2BB:
db $F0,$F0,$00,$00

CODE_12A2BF:
JSR CODE_12A745         ; $12:A2BF: 20 45 A7
LDA $ED                 ; $12:A2C2: A5 ED
ORA $EE                 ; $12:A2C4: 05 EE
BNE CODE_12A26D         ; $12:A2C6: D0 A5
LDA $86,x               ; $12:A2C8: B5 86
BEQ CODE_12A26D         ; $12:A2CA: F0 A1
CMP #$1A                ; $12:A2CC: C9 1A
BCS CODE_12A2D8         ; $12:A2CE: B0 08
SBC #$11                ; $12:A2D0: E9 11
BMI CODE_12A2D8         ; $12:A2D2: 30 04
TAY                     ; $12:A2D4: A8
JSR CODE_12A32D         ; $12:A2D5: 20 2D A3

CODE_12A2D8:
LDA #$01                ; $12:A2D8: A9 01

; A != 00 so the following routine has effect.
; Background colour effect.
JSL CODE_13FBC2         ; $12:A2DA: 22 C2 FB 13
REP #$10                ; $12:A2DE: C2 10
LDX #$0000              ; $12:A2E0: A2 00 00
LDY #$0020              ; $12:A2E3: A0 20 00

CODE_12A2E6:
LDA $0429               ; $12:A2E6: AD 29 04
CLC                     ; $12:A2E9: 18
ADC.l DATA_12A2B7,x     ; $12:A2EA: 7F B7 A2 12

; Get sprite's original X pos...
; and add the XDisp to it...
; per tile.
STA $0800,y             ; $12:A2EE: 99 00 08
LDA $042C               ; $12:A2F1: AD 2C 04
CLC                     ; $12:A2F4: 18
ADC.l DATA_12A2BB,x     ; $12:A2F5: 7F BB A2 12

; Same goes for Y pos...
; but then with YDisp instead.
STA $0801,y             ; $12:A2F9: 99 01 08
LDA.l DATA_12A2B3,x     ; $12:A2FC: BF B3 A2 12

; Transfer tilemap.
STA $0802,y             ; $12:A300: 99 02 08
LDA $10                 ; $12:A303: A5 10
AND #$06                ; $12:A305: 29 06
ORA #$20                ; $12:A307: 09 20

; Palette animation and more fancy YXPPCCCT properties data...
; right here.
STA $0803,y             ; $12:A309: 99 03 08
PHY                     ; $12:A30C: 5A
REP #$20                ; $12:A30D: C2 20
TYA                     ; $12:A30F: 98
LSR A                   ; $12:A310: 4A
LSR A                   ; $12:A311: 4A
TAY                     ; $12:A312: A8
SEP #$20                ; $12:A313: E2 20
LDA #$02                ; $12:A315: A9 02

; Size of all tiles = 16x16
STA $0A20,y             ; $12:A317: 99 20 0A
PLY                     ; $12:A31A: 7A
INY                     ; $12:A31B: C8
INY                     ; $12:A31C: C8
INY                     ; $12:A31D: C8
INY                     ; $12:A31E: C8
INX                     ; $12:A31F: E8
CPX #$0004              ; $12:A320: E0 04 00
BNE CODE_12A2E6         ; $12:A323: D0 C1
SEP #$10                ; $12:A325: E2 10
LDX $12                 ; $12:A327: A6 12
JMP CODE_12DE6A         ; $12:A329: 4C 6A DE

CODE_12A32C:
RTS                     ; $12:A32C: 60

CODE_12A32D:
LDA $29,x               ; $12:A32D: B5 29
CLC                     ; $12:A32F: 18
ADC.w DATA_1197B6,y     ; $12:A330: 79 B6 97
STA $0C                 ; $12:A333: 85 0C
LDA $15,x               ; $12:A335: B5 15
ADC.w DATA_1197BF,y     ; $12:A337: 79 BF 97
STA $0D                 ; $12:A33A: 85 0D
CMP #$0B                ; $12:A33C: C9 0B
BCS CODE_12A32C         ; $12:A33E: B0 EC
LDA $33,x               ; $12:A340: B5 33
ADC.w DATA_1197C8,y     ; $12:A342: 79 C8 97
AND #$F0                ; $12:A345: 29 F0
STA $0E                 ; $12:A347: 85 0E
STA $0B                 ; $12:A349: 85 0B
LDA $1F,x               ; $12:A34B: B5 1F
ADC.w DATA_1197D1,y     ; $12:A34D: 79 D1 97
STA $0F                 ; $12:A350: 85 0F
CMP #$0A                ; $12:A352: C9 0A
BCS CODE_12A32C         ; $12:A354: B0 D6
LDY $EB                 ; $12:A356: A4 EB
BNE CODE_12A37A         ; $12:A358: D0 20
LSR A                   ; $12:A35A: 4A
ROR $0E                 ; $12:A35B: 66 0E
LSR A                   ; $12:A35D: 4A
ROR $0E                 ; $12:A35E: 66 0E
LSR A                   ; $12:A360: 4A
ROR $0E                 ; $12:A361: 66 0E
LSR A                   ; $12:A363: 4A
ROR $0E                 ; $12:A364: 66 0E
LDA $0E                 ; $12:A366: A5 0E
LDY #$FF                ; $12:A368: A0 FF

CODE_12A36A:
SEC                     ; $12:A36A: 38
SBC #$0F                ; $12:A36B: E9 0F
INY                     ; $12:A36D: C8
BCS CODE_12A36A         ; $12:A36E: B0 FA
STY $0D                 ; $12:A370: 84 0D
ADC #$0F                ; $12:A372: 69 0F
ASL A                   ; $12:A374: 0A
ASL A                   ; $12:A375: 0A
ASL A                   ; $12:A376: 0A
ASL A                   ; $12:A377: 0A
STA $0E                 ; $12:A378: 85 0E

CODE_12A37A:
LDA $0C                 ; $12:A37A: A5 0C
LSR A                   ; $12:A37C: 4A
LSR A                   ; $12:A37D: 4A
LSR A                   ; $12:A37E: 4A
LSR A                   ; $12:A37F: 4A
STA $04                 ; $12:A380: 85 04
ORA $0E                 ; $12:A382: 05 0E
STA $05                 ; $12:A384: 85 05
LDA #$7E                ; $12:A386: A9 7E
STA $09                 ; $12:A388: 85 09
LDY #$00                ; $12:A38A: A0 00
LDA $04BF               ; $12:A38C: AD BF 04
CMP #$0A                ; $12:A38F: C9 0A
BNE CODE_12A398         ; $12:A391: D0 05
STY $0D                 ; $12:A393: 84 0D
STZ $09                 ; $12:A395: 64 09
INY                     ; $12:A397: C8

CODE_12A398:
LDA #$10                ; $12:A398: A9 10
STA $07                 ; $12:A39A: 85 07
LDA.w DATA_1197DA,y     ; $12:A39C: B9 DA 97
STA $08                 ; $12:A39F: 85 08
LDY $0534               ; $12:A3A1: AC 34 05
LDA.w DATA_11AB11,y     ; $12:A3A4: B9 11 AB
CLC                     ; $12:A3A7: 18
ADC $08                 ; $12:A3A8: 65 08
STA $08                 ; $12:A3AA: 85 08
LDY $0D                 ; $12:A3AC: A4 0D

CODE_12A3AE:
LDA $07                 ; $12:A3AE: A5 07
CLC                     ; $12:A3B0: 18
ADC #$F0                ; $12:A3B1: 69 F0
STA $07                 ; $12:A3B3: 85 07
LDA $08                 ; $12:A3B5: A5 08
ADC #$00                ; $12:A3B7: 69 00
STA $08                 ; $12:A3B9: 85 08
DEY                     ; $12:A3BB: 88
BPL CODE_12A3AE         ; $12:A3BC: 10 F0
REP #$20                ; $12:A3BE: C2 20
LDA $07                 ; $12:A3C0: A5 07
CLC                     ; $12:A3C2: 18
ADC #$7000              ; $12:A3C3: 69 00 70
STA $00                 ; $12:A3C6: 85 00
SEP #$20                ; $12:A3C8: E2 20
LDA $09                 ; $12:A3CA: A5 09
STA $02                 ; $12:A3CC: 85 02
LDY $05                 ; $12:A3CE: A4 05
LDA [$00],y             ; $12:A3D0: B7 00
BNE CODE_12A3E2         ; $12:A3D2: D0 0E
LDA [$07],y             ; $12:A3D4: B7 07
CMP #$AB                ; $12:A3D6: C9 AB
BEQ CODE_12A3E3         ; $12:A3D8: F0 09
CMP #$9D                ; $12:A3DA: C9 9D
BEQ CODE_12A3E3         ; $12:A3DC: F0 05
CMP #$6D                ; $12:A3DE: C9 6D
BEQ CODE_12A3E3         ; $12:A3E0: F0 01

CODE_12A3E2:
RTS                     ; $12:A3E2: 60

CODE_12A3E3:
LDA #$40                ; $12:A3E3: A9 40
STA [$07],y             ; $12:A3E5: 97 07
LDA $0D                 ; $12:A3E7: A5 0D
AND #$01                ; $12:A3E9: 29 01
EOR #$01                ; $12:A3EB: 49 01
ASL A                   ; $12:A3ED: 0A
ASL A                   ; $12:A3EE: 0A
LDY $EB                 ; $12:A3EF: A4 EB
BNE CODE_12A3F4         ; $12:A3F1: D0 01
ASL A                   ; $12:A3F3: 0A

CODE_12A3F4:
PHA                     ; $12:A3F4: 48
LDA $0E                 ; $12:A3F5: A5 0E
STA $02                 ; $12:A3F7: 85 02
LDA $0C                 ; $12:A3F9: A5 0C
AND #$F0                ; $12:A3FB: 29 F0
STA $03                 ; $12:A3FD: 85 03
LDA #$08                ; $12:A3FF: A9 08
STA $00                 ; $12:A401: 85 00
LDA $02                 ; $12:A403: A5 02
ASL A                   ; $12:A405: 0A
ROL $00                 ; $12:A406: 26 00
ASL A                   ; $12:A408: 0A
ROL $00                 ; $12:A409: 26 00
AND #$E0                ; $12:A40B: 29 E0
STA $01                 ; $12:A40D: 85 01
LDX $0300               ; $12:A40F: AE 00 03
LDA $03                 ; $12:A412: A5 03
LSR A                   ; $12:A414: 4A
LSR A                   ; $12:A415: 4A
LSR A                   ; $12:A416: 4A
ORA $01                 ; $12:A417: 05 01
STA $0303,x             ; $12:A419: 9D 03 03
CLC                     ; $12:A41C: 18
ADC #$20                ; $12:A41D: 69 20
STA $030B,x             ; $12:A41F: 9D 0B 03
PLA                     ; $12:A422: 68
ORA $00                 ; $12:A423: 05 00
AND #$0F                ; $12:A425: 29 0F
STA $0302,x             ; $12:A427: 9D 02 03
ADC #$00                ; $12:A42A: 69 00
STA $030A,x             ; $12:A42C: 9D 0A 03
REP #$20                ; $12:A42F: C2 20
LDA #$0300              ; $12:A431: A9 00 03
STA $0304,x             ; $12:A434: 9D 04 03
STA $030C,x             ; $12:A437: 9D 0C 03
LDA #$00BF              ; $12:A43A: A9 BF 00
STA $0306,x             ; $12:A43D: 9D 06 03
STA $0308,x             ; $12:A440: 9D 08 03
STA $030E,x             ; $12:A443: 9D 0E 03
STA $0310,x             ; $12:A446: 9D 10 03
TXA                     ; $12:A449: 8A
CLC                     ; $12:A44A: 18
ADC #$0010              ; $12:A44B: 69 10 00
STA $0300               ; $12:A44E: 8D 00 03
SEP #$20                ; $12:A451: E2 20
LDA #$FF                ; $12:A453: A9 FF
STA $0312,x             ; $12:A455: 9D 12 03
LDX #$08                ; $12:A458: A2 08

CODE_12A45A:
LDA $51,x               ; $12:A45A: B5 51
BEQ CODE_12A463         ; $12:A45C: F0 05
DEX                     ; $12:A45E: CA
BPL CODE_12A45A         ; $12:A45F: 10 F9
BMI CODE_12A480         ; $12:A461: 30 1D

CODE_12A463:
LDA $0C                 ; $12:A463: A5 0C
AND #$F0                ; $12:A465: 29 F0
STA $29,x               ; $12:A467: 95 29
LDA $0D                 ; $12:A469: A5 0D
LDY $EB                 ; $12:A46B: A4 EB
BNE CODE_12A470         ; $12:A46D: D0 01
TYA                     ; $12:A46F: 98

CODE_12A470:
STA $15,x               ; $12:A470: 95 15
LDA $0B                 ; $12:A472: A5 0B
STA $33,x               ; $12:A474: 95 33
LDA $0F                 ; $12:A476: A5 0F
STA $1F,x               ; $12:A478: 95 1F
JSR CODE_129F98         ; $12:A47A: 20 98 9F
JSR CODE_12BA3D         ; $12:A47D: 20 3D BA

CODE_12A480:
LDX $12                 ; $12:A480: A6 12

CODE_12A482:
RTS                     ; $12:A482: 60

CODE_12A483:
JSR CODE_12A745         ; $12:A483: 20 45 A7
LDA $65,x               ; $12:A486: B5 65
ORA #$10                ; $12:A488: 09 10
STA $65,x               ; $12:A48A: 95 65
AND #$40                ; $12:A48C: 29 40
STA $0E                 ; $12:A48E: 85 0E
LDA $86,x               ; $12:A490: B5 86
BNE CODE_12A497         ; $12:A492: D0 03
JMP CODE_12A5B2         ; $12:A494: 4C B2 A5

CODE_12A497:
LSR A                   ; $12:A497: 4A
LSR A                   ; $12:A498: 4A
LSR A                   ; $12:A499: 4A
TAY                     ; $12:A49A: A8
LDA.w DATA_1197DC,y     ; $12:A49B: B9 DC 97
JSR CODE_12A5CC         ; $12:A49E: 20 CC A5

CODE_12A4A1:
LDA $049B,x             ; $12:A4A1: BD 9B 04
BEQ CODE_12A482         ; $12:A4A4: F0 DC
LDA $86,x               ; $12:A4A6: B5 86
CMP #$03                ; $12:A4A8: C9 03
BNE CODE_12A482         ; $12:A4AA: D0 D6
LDY #$02                ; $12:A4AC: A0 02
LDA $90,x               ; $12:A4AE: B5 90
CMP #$21                ; $12:A4B0: C9 21
BNE CODE_12A4C4         ; $12:A4B2: D0 10
DEY                     ; $12:A4B4: 88
LDA #$49                ; $12:A4B5: A9 49
STA $1486               ; $12:A4B7: 8D 86 14
STA $1490               ; $12:A4BA: 8D 90 14
INC A                   ; $12:A4BD: 1A
STA $149C               ; $12:A4BE: 8D 9C 14
STA $14AA               ; $12:A4C1: 8D AA 14

CODE_12A4C4:
STY $144E               ; $12:A4C4: 8C 4E 14
STY $145A               ; $12:A4C7: 8C 5A 14
INY                     ; $12:A4CA: C8
STY $1466               ; $12:A4CB: 8C 66 14
STY $1476               ; $12:A4CE: 8C 76 14
LDY #$03                ; $12:A4D1: A0 03

CODE_12A4D3:
LDA $04F0,x             ; $12:A4D3: BD F0 04
AND #$01                ; $12:A4D6: 29 01
ASL A                   ; $12:A4D8: 0A
ASL A                   ; $12:A4D9: 0A
EOR #$04                ; $12:A4DA: 49 04
LDX $EB                 ; $12:A4DC: A6 EB
BNE CODE_12A4E1         ; $12:A4DE: D0 01
ASL A                   ; $12:A4E0: 0A

CODE_12A4E1:
LDX.w DATA_11CE40,y     ; $12:A4E1: BE 40 CE
ORA $144E,x             ; $12:A4E4: 1D 4E 14
STA $144E,x             ; $12:A4E7: 9D 4E 14
LDX $12                 ; $12:A4EA: A6 12
DEY                     ; $12:A4EC: 88
BPL CODE_12A4D3         ; $12:A4ED: 10 E4
LDA $EB                 ; $12:A4EF: A5 EB
BNE CODE_12A504         ; $12:A4F1: D0 11
LDA #$52                ; $12:A4F3: A9 52
STA $1486               ; $12:A4F5: 8D 86 14
STA $1490               ; $12:A4F8: 8D 90 14
INC A                   ; $12:A4FB: 1A
STA $149C               ; $12:A4FC: 8D 9C 14
STA $14AA               ; $12:A4FF: 8D AA 14
BRA CODE_12A51A         ; $12:A502: 80 16

CODE_12A504:
LDA $0635               ; $12:A504: AD 35 06
CMP #$06                ; $12:A507: C9 06
BNE CODE_12A51A         ; $12:A509: D0 0F
LDA #$4E                ; $12:A50B: A9 4E
STA $1486               ; $12:A50D: 8D 86 14
STA $1490               ; $12:A510: 8D 90 14
INC A                   ; $12:A513: 1A
STA $149C               ; $12:A514: 8D 9C 14
STA $14AA               ; $12:A517: 8D AA 14

CODE_12A51A:
LDA #$14                ; $12:A51A: A9 14
STA $11                 ; $12:A51C: 85 11
LDY $04F0,x             ; $12:A51E: BC F0 04
LDA #$7E                ; $12:A521: A9 7E
STA $02                 ; $12:A523: 85 02
LDA #$1F                ; $12:A525: A9 1F
STA $01                 ; $12:A527: 85 01
PHY                     ; $12:A529: 5A
LDY $0534               ; $12:A52A: AC 34 05
LDA.w DATA_11AB11,y     ; $12:A52D: B9 11 AB
CLC                     ; $12:A530: 18
ADC $01                 ; $12:A531: 65 01
STA $01                 ; $12:A533: 85 01
PLY                     ; $12:A535: 7A
LDA #$10                ; $12:A536: A9 10
STA $00                 ; $12:A538: 85 00

CODE_12A53A:
LDA $00                 ; $12:A53A: A5 00
CLC                     ; $12:A53C: 18
ADC #$F0                ; $12:A53D: 69 F0
STA $00                 ; $12:A53F: 85 00
LDA $01                 ; $12:A541: A5 01
ADC #$00                ; $12:A543: 69 00
STA $01                 ; $12:A545: 85 01
DEY                     ; $12:A547: 88
BPL CODE_12A53A         ; $12:A548: 10 F0
LDA $90,x               ; $12:A54A: B5 90
CMP #$21                ; $12:A54C: C9 21
BNE CODE_12A55D         ; $12:A54E: D0 0D
LDA $00                 ; $12:A550: A5 00
SEC                     ; $12:A552: 38
SBC #$40                ; $12:A553: E9 40
STA $00                 ; $12:A555: 85 00
LDA $01                 ; $12:A557: A5 01
SBC #$00                ; $12:A559: E9 00
STA $01                 ; $12:A55B: 85 01

CODE_12A55D:
LDA #$7F                ; $12:A55D: A9 7F
STA $05                 ; $12:A55F: 85 05
LDA $04F0,x             ; $12:A561: BD F0 04
TAX                     ; $12:A564: AA
LDA.l DATA_11AB25,x     ; $12:A565: BF 25 AB 11
STA $04                 ; $12:A569: 85 04
LDA.l DATA_11AB1B,x     ; $12:A56B: BF 1B AB 11
STA $03                 ; $12:A56F: 85 03
LDA $0635               ; $12:A571: AD 35 06
CMP #$04                ; $12:A574: C9 04
BNE CODE_12A57F         ; $12:A576: D0 07
LDA $03                 ; $12:A578: A5 03
SEC                     ; $12:A57A: 38
SBC #$40                ; $12:A57B: E9 40
STA $03                 ; $12:A57D: 85 03

CODE_12A57F:
LDY #$B8                ; $12:A57F: A0 B8
LDA #$56                ; $12:A581: A9 56
STA [$00],y             ; $12:A583: 97 00
LDA #$00                ; $12:A585: A9 00
STA [$03],y             ; $12:A587: 97 03
LDA #$56                ; $12:A589: A9 56
LDY #$C8                ; $12:A58B: A0 C8
STA [$00],y             ; $12:A58D: 97 00
LDA #$02                ; $12:A58F: A9 02
STA [$03],y             ; $12:A591: 97 03
LDA #$40                ; $12:A593: A9 40
LDY #$B9                ; $12:A595: A0 B9
STA [$00],y             ; $12:A597: 97 00
LDA #$01                ; $12:A599: A9 01
STA [$03],y             ; $12:A59B: 97 03
LDA #$40                ; $12:A59D: A9 40
LDY #$C9                ; $12:A59F: A0 C9
STA [$00],y             ; $12:A5A1: 97 00
LDA #$03                ; $12:A5A3: A9 03
STA [$03],y             ; $12:A5A5: 97 03
LDA #$40                ; $12:A5A7: A9 40
LDY #$CA                ; $12:A5A9: A0 CA
STA [$00],y             ; $12:A5AB: 97 00
LDA #$01                ; $12:A5AD: A9 01
STA [$03],y             ; $12:A5AF: 97 03
RTS                     ; $12:A5B1: 60

CODE_12A5B2:
LDA $90,x               ; $12:A5B2: B5 90
CMP #$2B                ; $12:A5B4: C9 2B
BNE CODE_12A5C5         ; $12:A5B6: D0 0D
DEC $04F9               ; $12:A5B8: CE F9 04
BPL CODE_12A5C5         ; $12:A5BB: 10 08
INC $049B,x             ; $12:A5BD: FE 9B 04
INC $90,x               ; $12:A5C0: F6 90
JMP CODE_12A03C         ; $12:A5C2: 4C 3C A0

CODE_12A5C5:
JMP CODE_12A83B         ; $12:A5C5: 4C 3B A8

DATA_12A5C8:
db $86,$A1,$A0,$87

CODE_12A5CC:
PHX                     ; $12:A5CC: DA
PHA                     ; $12:A5CD: 48
LDA $29,x               ; $12:A5CE: B5 29
STA $08                 ; $12:A5D0: 85 08
LDA $15,x               ; $12:A5D2: B5 15
STA $09                 ; $12:A5D4: 85 09
LDA $04C1               ; $12:A5D6: AD C1 04
STA $0A                 ; $12:A5D9: 85 0A
LDA $04BF               ; $12:A5DB: AD BF 04
STA $0B                 ; $12:A5DE: 85 0B
STZ $ED                 ; $12:A5E0: 64 ED
REP #$20                ; $12:A5E2: C2 20
LDA $08                 ; $12:A5E4: A5 08
SEC                     ; $12:A5E6: 38
SBC $0A                 ; $12:A5E7: E5 0A
AND #$FF00              ; $12:A5E9: 29 00 FF
BEQ CODE_12A5F3         ; $12:A5EC: F0 05
LDA #$0001              ; $12:A5EE: A9 01 00
TSB $ED                 ; $12:A5F1: 04 ED

CODE_12A5F3:
LDA $08                 ; $12:A5F3: A5 08
CLC                     ; $12:A5F5: 18
ADC #$0008              ; $12:A5F6: 69 08 00
SEC                     ; $12:A5F9: 38
SBC $0A                 ; $12:A5FA: E5 0A
AND #$FF00              ; $12:A5FC: 29 00 FF
BEQ CODE_12A606         ; $12:A5FF: F0 05
LDA #$0002              ; $12:A601: A9 02 00
TSB $ED                 ; $12:A604: 04 ED

CODE_12A606:
SEP #$20                ; $12:A606: E2 20
PLA                     ; $12:A608: 68
STA $0F                 ; $12:A609: 85 0F
TYX                     ; $12:A60B: BB
REP #$30                ; $12:A60C: C2 30
TXA                     ; $12:A60E: 8A
AND #$00FF              ; $12:A60F: 29 FF 00
TAX                     ; $12:A612: AA
SEP #$20                ; $12:A613: E2 20
LDY $02F6               ; $12:A615: AC F6 02

CODE_12A618:
LDA $042C               ; $12:A618: AD 2C 04
STA $0713               ; $12:A61B: 8D 13 07
LDA.l DATA_12A5C8,x     ; $12:A61E: BF C8 A5 12
STA $0712               ; $12:A622: 8D 12 07
JSR CODE_12A66B         ; $12:A625: 20 6B A6
PHX                     ; $12:A628: DA
JSL CODE_14E483         ; $12:A629: 22 83 E4 14
REP #$10                ; $12:A62D: C2 10
PLX                     ; $12:A62F: FA
LDY $02F8               ; $12:A630: AC F8 02
LDA.l DATA_12A5C8,x     ; $12:A633: BF C8 A5 12
CLC                     ; $12:A637: 18
ADC #$10                ; $12:A638: 69 10
STA $0712               ; $12:A63A: 8D 12 07
LDA $042C               ; $12:A63D: AD 2C 04
CLC                     ; $12:A640: 18
ADC #$08                ; $12:A641: 69 08
STA $0713               ; $12:A643: 8D 13 07
JSR CODE_12A66B         ; $12:A646: 20 6B A6
PHX                     ; $12:A649: DA
JSL CODE_14E483         ; $12:A64A: 22 83 E4 14
REP #$10                ; $12:A64E: C2 10
LDY $02F8               ; $12:A650: AC F8 02
PLX                     ; $12:A653: FA
LDA $0E                 ; $12:A654: A5 0E
EOR #$40                ; $12:A656: 49 40
STA $0E                 ; $12:A658: 85 0E
BNE CODE_12A667         ; $12:A65A: D0 0B
LDA $042C               ; $12:A65C: AD 2C 04
CLC                     ; $12:A65F: 18
ADC #$11                ; $12:A660: 69 11
STA $042C               ; $12:A662: 8D 2C 04
BRA CODE_12A618         ; $12:A665: 80 B1

CODE_12A667:
SEP #$10                ; $12:A667: E2 10
PLX                     ; $12:A669: FA
RTS                     ; $12:A66A: 60

CODE_12A66B:
LDA $0429               ; $12:A66B: AD 29 04
STA $0800,y             ; $12:A66E: 99 00 08
CLC                     ; $12:A671: 18
ADC #$08                ; $12:A672: 69 08
STA $0804,y             ; $12:A674: 99 04 08
LDA $0713               ; $12:A677: AD 13 07
STA $0801,y             ; $12:A67A: 99 01 08
STA $0805,y             ; $12:A67D: 99 05 08
LDA $0712               ; $12:A680: AD 12 07
STA $0802,y             ; $12:A683: 99 02 08
STA $0806,y             ; $12:A686: 99 06 08
LDA #$26                ; $12:A689: A9 26
STA $0803,y             ; $12:A68B: 99 03 08
ORA #$40                ; $12:A68E: 09 40
STA $0807,y             ; $12:A690: 99 07 08
REP #$20                ; $12:A693: C2 20
TYA                     ; $12:A695: 98
LSR A                   ; $12:A696: 4A
LSR A                   ; $12:A697: 4A
TAY                     ; $12:A698: A8
SEP #$20                ; $12:A699: E2 20
LDA $ED                 ; $12:A69B: A5 ED
AND #$01                ; $12:A69D: 29 01
STA $0A20,y             ; $12:A69F: 99 20 0A
LDA $ED                 ; $12:A6A2: A5 ED
LSR A                   ; $12:A6A4: 4A
AND #$01                ; $12:A6A5: 29 01
STA $0A21,y             ; $12:A6A7: 99 21 0A
RTS                     ; $12:A6AA: 60

CODE_12A6AB:
JSR CODE_12A745         ; $12:A6AB: 20 45 A7
LDA #$12                ; $12:A6AE: A9 12
STA $65,x               ; $12:A6B0: 95 65
LDA $86,x               ; $12:A6B2: B5 86

; If timer is up...
; branch.
BEQ CODE_12A6ED         ; $12:A6B4: F0 37
LDA #$F8                ; $12:A6B6: A9 F8

; Y speed of sand = #$F8.
STA $47,x               ; $12:A6B8: 95 47
JSR CODE_12C1EA         ; $12:A6BA: 20 EA C1

; Tile number of sand tile for the first 16 frames.
LDA #$B2                ; $12:A6BD: A9 B2
LDY $86,x               ; $12:A6BF: B4 86
CPY #$10                ; $12:A6C1: C0 10

; Check if halfway...
; (16 frames done)
; If not, branch, and keep this tile.
BCS CODE_12A6D8         ; $12:A6C3: B0 13
LDA #$80                ; $12:A6C5: A9 80
STA $046E,x             ; $12:A6C7: 9D 6E 04
LDA #$01                ; $12:A6CA: A9 01
STA $65,x               ; $12:A6CC: 95 65
ASL A                   ; $12:A6CE: 0A
STA $6F,x               ; $12:A6CF: 95 6F
INC $9F,x               ; $12:A6D1: F6 9F
JSR CODE_12AA43         ; $12:A6D3: 20 43 AA

; Tile number of sand tile for the last 16 frames.
LDA #$B4                ; $12:A6D6: A9 B4

CODE_12A6D8:
JSR CODE_12BDD5         ; $12:A6D8: 20 D5 BD
REP #$10                ; $12:A6DB: C2 10
LDY $02F6               ; $12:A6DD: AC F6 02
LDA $0803,y             ; $12:A6E0: B9 03 08
AND #$F0                ; $12:A6E3: 29 F0
ORA #$02                ; $12:A6E5: 09 02
STA $0803,y             ; $12:A6E7: 99 03 08
SEP #$10                ; $12:A6EA: E2 10
RTS                     ; $12:A6EC: 60

CODE_12A6ED:
CPX $042D               ; $12:A6ED: EC 2D 04
BNE CODE_12A6F6         ; $12:A6F0: D0 04
LDA #$00                ; $12:A6F2: A9 00
STA $9C                 ; $12:A6F4: 85 9C

CODE_12A6F6:
JMP CODE_12A83B         ; $12:A6F6: 4C 3B A8

CODE_12A6F9:
LDA #$00                ; $12:A6F9: A9 00
STA $ED                 ; $12:A6FB: 85 ED
LDA $65,x               ; $12:A6FD: B5 65
LDY #$01                ; $12:A6FF: A0 01
AND #$04                ; $12:A701: 29 04
BNE CODE_12A71E         ; $12:A703: D0 19
LDA $90,x               ; $12:A705: B5 90
CMP #$1A                ; $12:A707: C9 1A
BEQ CODE_12A71E         ; $12:A709: F0 13
CMP #$08                ; $12:A70B: C9 08
BEQ CODE_12A71E         ; $12:A70D: F0 0F
CMP #$2D                ; $12:A70F: C9 2D
BEQ CODE_12A71E         ; $12:A711: F0 0B
CMP #$21                ; $12:A713: C9 21
BEQ CODE_12A71E         ; $12:A715: F0 07
LDA $046E,x             ; $12:A717: BD 6E 04
AND #$20                ; $12:A71A: 29 20
BEQ CODE_12A720         ; $12:A71C: F0 02

CODE_12A71E:
LDY #$03                ; $12:A71E: A0 03

CODE_12A720:
LDA $29,x               ; $12:A720: B5 29
CLC                     ; $12:A722: 18
ADC.w DATA_1197E4,y     ; $12:A723: 79 E4 97
STA $0E                 ; $12:A726: 85 0E
LDA $15,x               ; $12:A728: B5 15
ADC #$00                ; $12:A72A: 69 00
STA $0F                 ; $12:A72C: 85 0F
LDA $0E                 ; $12:A72E: A5 0E
CMP $04C1               ; $12:A730: CD C1 04
LDA $0F                 ; $12:A733: A5 0F
SBC $04BF               ; $12:A735: ED BF 04
BEQ CODE_12A741         ; $12:A738: F0 07
LDA $ED                 ; $12:A73A: A5 ED
ORA.w DATA_1197E0,y     ; $12:A73C: 19 E0 97
STA $ED                 ; $12:A73F: 85 ED

CODE_12A741:
DEY                     ; $12:A741: 88
BPL CODE_12A720         ; $12:A742: 10 DC

CODE_12A744:
RTS                     ; $12:A744: 60

CODE_12A745:
JSR CODE_12A6F9         ; $12:A745: 20 F9 A6
LDA #$30                ; $12:A748: A9 30
LDY $90,x               ; $12:A74A: B4 90
CPY #$2C                ; $12:A74C: C0 2C
BEQ CODE_12A78B         ; $12:A74E: F0 3B
LDA #$1E                ; $12:A750: A9 1E
CPY #$38                ; $12:A752: C0 38
BEQ CODE_12A78B         ; $12:A754: F0 35
CPY #$12                ; $12:A756: C0 12
BEQ CODE_12A78B         ; $12:A758: F0 31
CPY $0041               ; $12:A75A: CC 41 00
BEQ CODE_12A78B         ; $12:A75D: F0 2C
LDA #$22                ; $12:A75F: A9 22
CPY #$1F                ; $12:A761: C0 1F
BEQ CODE_12A78B         ; $12:A763: F0 26
CPY #$18                ; $12:A765: C0 18
BEQ CODE_12A78B         ; $12:A767: F0 22
CPY #$19                ; $12:A769: C0 19
BEQ CODE_12A78B         ; $12:A76B: F0 1E
CPY #$1C                ; $12:A76D: C0 1C
BEQ CODE_12A78B         ; $12:A76F: F0 1A
CPY #$1D                ; $12:A771: C0 1D
BEQ CODE_12A78B         ; $12:A773: F0 16
CPY #$21                ; $12:A775: C0 21
BEQ CODE_12A78B         ; $12:A777: F0 12
CPY #$08                ; $12:A779: C0 08
BEQ CODE_12A78B         ; $12:A77B: F0 0E
CPY #$26                ; $12:A77D: C0 26
BEQ CODE_12A78B         ; $12:A77F: F0 0A
CPY #$2D                ; $12:A781: C0 2D
BEQ CODE_12A78B         ; $12:A783: F0 06
CPY #$35                ; $12:A785: C0 35
BEQ CODE_12A78B         ; $12:A787: F0 02
LDA #$10                ; $12:A789: A9 10

CODE_12A78B:
ADC $33,x               ; $12:A78B: 75 33
STA $00                 ; $12:A78D: 85 00
LDA $1F,x               ; $12:A78F: B5 1F
ADC #$00                ; $12:A791: 69 00
STA $01                 ; $12:A793: 85 01
LDA $00                 ; $12:A795: A5 00
CMP $CB                 ; $12:A797: C5 CB
LDA $01                 ; $12:A799: A5 01
SBC $CA                 ; $12:A79B: E5 CA
STA $EE                 ; $12:A79D: 85 EE
CPY #$17                ; $12:A79F: C0 17
BEQ CODE_12A744         ; $12:A7A1: F0 A1
CPY #$41                ; $12:A7A3: C0 41
BEQ CODE_12A744         ; $12:A7A5: F0 9D
CPY #$43                ; $12:A7A7: C0 43
BEQ CODE_12A744         ; $12:A7A9: F0 99
CPY #$2D                ; $12:A7AB: C0 2D
BEQ CODE_12A744         ; $12:A7AD: F0 95
TXA                     ; $12:A7AF: 8A
AND #$01                ; $12:A7B0: 29 01
STA $00                 ; $12:A7B2: 85 00
LDA $10                 ; $12:A7B4: A5 10
AND #$01                ; $12:A7B6: 29 01
EOR $00                 ; $12:A7B8: 45 00
BNE CODE_12A744         ; $12:A7BA: D0 88
LDA $CB                 ; $12:A7BC: A5 CB
SBC #$30                ; $12:A7BE: E9 30
STA $01                 ; $12:A7C0: 85 01
LDA $CA                 ; $12:A7C2: A5 CA
SBC #$00                ; $12:A7C4: E9 00
STA $00                 ; $12:A7C6: 85 00
INC $00                 ; $12:A7C8: E6 00
LDA $CB                 ; $12:A7CA: A5 CB
ADC #$FF                ; $12:A7CC: 69 FF
PHP                     ; $12:A7CE: 08
ADC #$30                ; $12:A7CF: 69 30
STA $03                 ; $12:A7D1: 85 03
LDA $CA                 ; $12:A7D3: A5 CA
ADC #$00                ; $12:A7D5: 69 00
PLP                     ; $12:A7D7: 28
ADC #$00                ; $12:A7D8: 69 00
STA $02                 ; $12:A7DA: 85 02
INC $02                 ; $12:A7DC: E6 02
LDA $33,x               ; $12:A7DE: B5 33
CMP $01                 ; $12:A7E0: C5 01
LDY $1F,x               ; $12:A7E2: B4 1F
INY                     ; $12:A7E4: C8
TYA                     ; $12:A7E5: 98
SBC $00                 ; $12:A7E6: E5 00
BMI CODE_12A837         ; $12:A7E8: 30 4D
LDA $33,x               ; $12:A7EA: B5 33
CMP $03                 ; $12:A7EC: C5 03
LDY $1F,x               ; $12:A7EE: B4 1F
INY                     ; $12:A7F0: C8
TYA                     ; $12:A7F1: 98
SBC $02                 ; $12:A7F2: E5 02
BPL CODE_12A837         ; $12:A7F4: 10 41
LDA $04C1               ; $12:A7F6: AD C1 04
SBC #$30                ; $12:A7F9: E9 30
STA $01                 ; $12:A7FB: 85 01
LDA $04BF               ; $12:A7FD: AD BF 04
SBC #$00                ; $12:A800: E9 00
STA $00                 ; $12:A802: 85 00
INC $00                 ; $12:A804: E6 00
LDA $04C2               ; $12:A806: AD C2 04
ADC #$30                ; $12:A809: 69 30
STA $03                 ; $12:A80B: 85 03
LDA $04C0               ; $12:A80D: AD C0 04
ADC #$00                ; $12:A810: 69 00
STA $02                 ; $12:A812: 85 02
INC $02                 ; $12:A814: E6 02
LDA $29,x               ; $12:A816: B5 29
CMP $01                 ; $12:A818: C5 01
LDY $15,x               ; $12:A81A: B4 15
INY                     ; $12:A81C: C8
TYA                     ; $12:A81D: 98
SBC $00                 ; $12:A81E: E5 00
BMI CODE_12A82E         ; $12:A820: 30 0C
LDA $29,x               ; $12:A822: B5 29
CMP $03                 ; $12:A824: C5 03
LDY $15,x               ; $12:A826: B4 15
INY                     ; $12:A828: C8
TYA                     ; $12:A829: 98
SBC $02                 ; $12:A82A: E5 02
BMI CODE_12A84B         ; $12:A82C: 30 1D

CODE_12A82E:
LDY $90,x               ; $12:A82E: B4 90
LDA.w DATA_11CC8C,y     ; $12:A830: B9 8C CC
AND #$08                ; $12:A833: 29 08
BNE CODE_12A84B         ; $12:A835: D0 14

CODE_12A837:
LDA $A8,x               ; $12:A837: B5 A8
BNE CODE_12A84B         ; $12:A839: D0 10

CODE_12A83B:
LDY $0441,x             ; $12:A83B: BC 41 04
BMI CODE_12A846         ; $12:A83E: 30 06
LDA ($CC),y             ; $12:A840: B1 CC
AND #$7F                ; $12:A842: 29 7F
STA ($CC),y             ; $12:A844: 91 CC

CODE_12A846:
STZ $51,x               ; $12:A846: 74 51
STZ $042F,x             ; $12:A848: 9E 2F 04

CODE_12A84B:
RTS                     ; $12:A84B: 60

CODE_12A84C:
LDA #$01                ; $12:A84C: A9 01
STA $04A4,x             ; $12:A84E: 9D A4 04
LDY $042F,x             ; $12:A851: BC 2F 04
DEY                     ; $12:A854: 88
CPY #$1F                ; $12:A855: C0 1F
BCS CODE_12A85C         ; $12:A857: B0 03
INC $042F,x             ; $12:A859: FE 2F 04

CODE_12A85C:
JSR CODE_12A745         ; $12:A85C: 20 45 A7
LDA $50                 ; $12:A85F: A5 50
CMP #$08                ; $12:A861: C9 08
BEQ CODE_12A881         ; $12:A863: F0 1C
LDA $D8                 ; $12:A865: A5 D8
AND #$04                ; $12:A867: 29 04
BNE CODE_12A8B0         ; $12:A869: D0 45
LDA $0500               ; $12:A86B: AD 00 05
BEQ CODE_12A87C         ; $12:A86E: F0 0C
LDA $90,x               ; $12:A870: B5 90
CMP #$1A                ; $12:A872: C9 1A
BEQ CODE_12A8C0         ; $12:A874: F0 4A
CMP #$08                ; $12:A876: C9 08
BEQ CODE_12A8C0         ; $12:A878: F0 46
BRA CODE_12A881         ; $12:A87A: 80 05

CODE_12A87C:
LDA $0438,x             ; $12:A87C: BD 38 04
BEQ CODE_12A8C0         ; $12:A87F: F0 3F

CODE_12A881:
LDA $90,x               ; $12:A881: B5 90
CMP #$2B                ; $12:A883: C9 2B
BEQ CODE_12A8C0         ; $12:A885: F0 39
CMP #$00                ; $12:A887: C9 00
BEQ CODE_12A8C0         ; $12:A889: F0 35
CMP #$41                ; $12:A88B: C9 41
BEQ CODE_12A893         ; $12:A88D: F0 04
CMP #$32                ; $12:A88F: C9 32
BCS CODE_12A8C0         ; $12:A891: B0 2D

CODE_12A893:
JSR CODE_12BB16         ; $12:A893: 20 16 BB
LDA $042F,x             ; $12:A896: BD 2F 04
BEQ CODE_12A8A4         ; $12:A899: F0 09
LDA $50                 ; $12:A89B: A5 50
CMP #$08                ; $12:A89D: C9 08
BEQ CODE_12A8A4         ; $12:A89F: F0 03
JSR CODE_12A0AA         ; $12:A8A1: 20 AA A0

CODE_12A8A4:
LDA $A8,x               ; $12:A8A4: B5 A8
BEQ CODE_12A8AD         ; $12:A8A6: F0 05
DEC $9F,x               ; $12:A8A8: D6 9F
JMP CODE_12B692         ; $12:A8AA: 4C 92 B6

CODE_12A8AD:
JSR CODE_12DE6A         ; $12:A8AD: 20 6A DE

CODE_12A8B0:
LDA $90,x               ; $12:A8B0: B5 90
CMP #$18                ; $12:A8B2: C9 18
BNE CODE_12A8BD         ; $12:A8B4: D0 07
LDA $5B,x               ; $12:A8B6: B5 5B
AND #$08                ; $12:A8B8: 29 08
BEQ CODE_12A8BD         ; $12:A8BA: F0 01
RTS                     ; $12:A8BC: 60

CODE_12A8BD:
JMP CODE_12BD29         ; $12:A8BD: 4C 29 BD

CODE_12A8C0:
LDY #$01                ; $12:A8C0: A0 01
LDA $3D,x               ; $12:A8C2: B5 3D
BEQ CODE_12A8CC         ; $12:A8C4: F0 06
BPL CODE_12A8C9         ; $12:A8C6: 10 01
INY                     ; $12:A8C8: C8

CODE_12A8C9:
TYA                     ; $12:A8C9: 98
STA $6F,x               ; $12:A8CA: 95 6F

CODE_12A8CC:
LDY $90,x               ; $12:A8CC: B4 90
LDA.w DATA_11CC45,y     ; $12:A8CE: B9 45 CC
AND #$20                ; $12:A8D1: 29 20
BNE CODE_12A914         ; $12:A8D3: D0 3F
LDA $65,x               ; $12:A8D5: B5 65
AND #$DF                ; $12:A8D7: 29 DF
STA $65,x               ; $12:A8D9: 95 65
LDA #$06                ; $12:A8DB: A9 06
STA $0712               ; $12:A8DD: 8D 12 07
LDA $06C2               ; $12:A8E0: AD C2 06
BEQ CODE_12A8EA         ; $12:A8E3: F0 05
LDA #$04                ; $12:A8E5: A9 04
STA $0712               ; $12:A8E7: 8D 12 07

CODE_12A8EA:
LDA $A8,x               ; $12:A8EA: B5 A8
CMP $0712               ; $12:A8EC: CD 12 07
BCC CODE_12A914         ; $12:A8EF: 90 23
LDA $0D00,x             ; $12:A8F1: BD 00 0D
BNE CODE_12A914         ; $12:A8F4: D0 1E
LDA $90,x               ; $12:A8F6: B5 90
CMP #$09                ; $12:A8F8: C9 09
BNE CODE_12A902         ; $12:A8FA: D0 06
LDA $5B,x               ; $12:A8FC: B5 5B
AND #$04                ; $12:A8FE: 29 04
BNE CODE_12A907         ; $12:A900: D0 05

CODE_12A902:
LDA.w DATA_11CC45,y     ; $12:A902: B9 45 CC
BPL CODE_12A914         ; $12:A905: 10 0D

CODE_12A907:
LDA $04EF               ; $12:A907: AD EF 04
BNE CODE_12A914         ; $12:A90A: D0 08
LDA $65,x               ; $12:A90C: B5 65
ORA #$20                ; $12:A90E: 09 20
AND #$EF                ; $12:A910: 29 EF
STA $65,x               ; $12:A912: 95 65

CODE_12A914:
JSR CODE_12A937         ; $12:A914: 20 37 A9
LDA $EB                 ; $12:A917: A5 EB
BNE CODE_12A928         ; $12:A919: D0 0D
LDA $90,x               ; $12:A91B: B5 90
CMP #$0F                ; $12:A91D: C9 0F
BNE CODE_12A928         ; $12:A91F: D0 07
LDA $0429               ; $12:A921: AD 29 04
CMP #$F4                ; $12:A924: C9 F4
BCS CODE_12A933         ; $12:A926: B0 0B

CODE_12A928:
LDA $1F,x               ; $12:A928: B5 1F
BMI CODE_12A934         ; $12:A92A: 30 08
LDA $042C               ; $12:A92C: AD 2C 04
CMP #$E8                ; $12:A92F: C9 E8
BCC CODE_12A934         ; $12:A931: 90 01

CODE_12A933:
RTS                     ; $12:A933: 60

CODE_12A934:
JMP CODE_12DE6A         ; $12:A934: 4C 6A DE

CODE_12A937:
LDA $90,x               ; $12:A937: B5 90
JSL CODE_118776         ; $12:A939: 22 76 87 11

; 00 - Heart.
dw CODE_12AEC3

; 01 - Red Shyguy.
dw CODE_12B4D1

; 02 - Tweeter.
dw CODE_12B4D1

; 03 - Blue Shyguy.
dw CODE_12B4D1

; 04 - Porcupo.
dw CODE_12B4D1

; 05 - Red Snifit.
dw CODE_12B4D1

; 06 - Grey snifit.
dw CODE_12B4D1

; 07 - Blue snifit.
dw CODE_12B4D1

; 08 - Ostro with Red Shyguy.
dw CODE_12C97A

; 09 - Bob-Omb
dw CODE_12B4A3

; 0A - Albatoss with Bob-Omb
dw CODE_12B29D

; 0B - Albatoss, coming from left.
dw CODE_12B29D

; 0C - Albatoss, coming from right.
dw CODE_12B29D

; 0D - Ninji, walking.
dw CODE_12B43E

; 0E - Ninji, jumping.
dw CODE_12B41A

; 0F - Beezo, gold
dw CODE_12B46E

; 10 - Beezo, red
dw CODE_12B46E

; 11 - Wart's bubble
dw CODE_12DC1C

; 12 - Pidgit, carpet.
dw CODE_12C613

; 13 - Trouter
dw CODE_12AE26

; 14 - Hoopster
dw CODE_12AE5D

; 15 - Shyguy generator
dw CODE_12AC25

; 16 - Bob-omb generator
dw CODE_12AC25

; 17 - Phanto
dw CODE_12B373

; 18 - Cobrat, jar
dw CODE_12CD44

; 19 - Cobrat, sand
dw CODE_12CCC5

; 1A - Pokey
dw CODE_12CDF0

; 1B - Bullet
dw CODE_12B2F3

; 1C - Birdo
dw CODE_12AF56

; 1D - Mouser
dw CODE_12C808

; 1E - Egg
dw CODE_12B2F3

; 1F - Triclyde
dw CODE_12CA91

; 20 - Fireball
dw CODE_12AACE

; 21 - Clawglip
dw CODE_12C286

; 22 - Rock
dw CODE_12C469

; 23 - Panser, red
dw CODE_12AB21

; 24 - Panser, blue
dw CODE_12AB19

; 25 - Panser, green
dw CODE_12AB21

; 26 - Autobomb with Shyguy
dw CODE_12D440

; 27 - Autobomb fire
dw CODE_12B2E6

; 28 - Whale spout
dw CODE_12D59D

; 29 - Flurry
dw CODE_12D796

; 2A - Fryguy
dw CODE_12D30A

; 2B - Small Fryguy,
dw CODE_12D3C4

; 2C - Wart.
dw CODE_12DB51

; 2D - Hawkmouth boss.
dw CODE_12D809

; 2E - Sparky, right, slow.
dw CODE_12A9E3

; 2F - Sparky, right, fast.
dw CODE_12A9E3

; 30 - Sparky, left, slow.
dw CODE_12A9E3

; 31 - Sparky, left, fast.
dw CODE_12A9E3

; 32 - Small vegetable.
dw CODE_12B13D

; 33 - Fresh vegetable.
dw CODE_12B13D

; 34 - Vegetable thrower vegetable.
dw CODE_12B13D

; 35 - Shell
dw CODE_12B9E9

; 36 - Coin
dw CODE_12B027

; 37 - Bomb
dw CODE_12B0D6

; 38 - Rocket
dw CODE_12CFC3

; 39 - Mushroom block
dw CODE_12B717

; 3A - POW block
dw CODE_12B717

; 3B - Rolling log
dw CODE_12BA64

; 3C - Door to dark room
dw CODE_12B7BA

; 3D - Key
dw CODE_12B0D3

; 3E - Potion
dw CODE_12B151

; 3F - Mushroom
dw CODE_12B064

; 40 - 1-Up
dw CODE_12B038

; 41 - Pidgit's carpet
dw CODE_12C4F6

; 42 - Hawkmouth, face to the right
dw CODE_12AC8D

; 43 - Hawkmouth, face to the left
dw CODE_12AC8D

; 44 - Crystal ball
dw CODE_12B05E

; 45 - Star
dw CODE_12AC11

; 46 - Stopwatch
dw CODE_12B064

CODE_12A9CB:
JSR CODE_129F96         ; $12:A9CB: 20 96 9F
LDA #$50                ; $12:A9CE: A9 50
STA $9F,x               ; $12:A9D0: 95 9F
RTS                     ; $12:A9D2: 60

CODE_12A9D3:
JSR CODE_129F96         ; $12:A9D3: 20 96 9F
LDY $90,x               ; $12:A9D6: B4 90
LDA.w DATA_1197BA,y     ; $12:A9D8: B9 BA 97
STA $3D,x               ; $12:A9DB: 95 3D
LDA.w DATA_1197BC,y     ; $12:A9DD: B9 BC 97
STA $47,x               ; $12:A9E0: 95 47
RTS                     ; $12:A9E2: 60

CODE_12A9E3:
JSR CODE_12BB16         ; $12:A9E3: 20 16 BB
JSR CODE_12AA43         ; $12:A9E6: 20 43 AA
LDY #$0A                ; $12:A9E9: A0 0A
LDA $10                 ; $12:A9EB: A5 10
AND #$04                ; $12:A9ED: 29 04
BEQ CODE_12A9F3         ; $12:A9EF: F0 02
LDY #$06                ; $12:A9F1: A0 06

CODE_12A9F3:
STY $0248               ; $12:A9F3: 8C 48 02
JSR CODE_12BD29         ; $12:A9F6: 20 29 BD
LDA $29,x               ; $12:A9F9: B5 29
ORA $33,x               ; $12:A9FB: 15 33
AND #$0F                ; $12:A9FD: 29 0F
BNE CODE_12AA38         ; $12:A9FF: D0 37
JSR CODE_12DDA7         ; $12:AA01: 20 A7 DD
LDY $0477,x             ; $12:AA04: BC 77 04
LDA $5B,x               ; $12:AA07: B5 5B
AND.w DATA_1197EE,y     ; $12:AA09: 39 EE 97
BEQ CODE_12AA2F         ; $12:AA0C: F0 21
LDA.w DATA_1197EE,y     ; $12:AA0E: B9 EE 97
EOR #$0F                ; $12:AA11: 49 0F
AND $5B,x               ; $12:AA13: 35 5B
BEQ CODE_12AA38         ; $12:AA15: F0 21
TYA                     ; $12:AA17: 98
EOR #$01                ; $12:AA18: 49 01
STA $0477,x             ; $12:AA1A: 9D 77 04
TAY                     ; $12:AA1D: A8

CODE_12AA1E:
TXA                     ; $12:AA1E: 8A
CLC                     ; $12:AA1F: 18
ADC.w DATA_1197F0,y     ; $12:AA20: 79 F0 97
TAY                     ; $12:AA23: A8
LDA $003D,y             ; $12:AA24: B9 3D 00
EOR #$FF                ; $12:AA27: 49 FF
ADC #$01                ; $12:AA29: 69 01
STA $003D,y             ; $12:AA2B: 99 3D 00
RTS                     ; $12:AA2E: 60

CODE_12AA2F:
TYA                     ; $12:AA2F: 98
EOR #$01                ; $12:AA30: 49 01
STA $0477,x             ; $12:AA32: 9D 77 04
JSR CODE_12AA1E         ; $12:AA35: 20 1E AA

CODE_12AA38:
LDA $0477,x             ; $12:AA38: BD 77 04
BNE CODE_12AA40         ; $12:AA3B: D0 03
JMP CODE_12C1EF         ; $12:AA3D: 4C EF C1

CODE_12AA40:
JMP CODE_12C1EA         ; $12:AA40: 4C EA C1

CODE_12AA43:
INC $9F,x               ; $12:AA43: F6 9F
INC $9F,x               ; $12:AA45: F6 9F
RTS                     ; $12:AA47: 60

CODE_12AA48:
JSR CODE_12AAA7         ; $12:AA48: 20 A7 AA
ADC.w DATA_1197F2,y     ; $12:AA4B: 79 F2 97
STA $29,x               ; $12:AA4E: 95 29
LDA $04BF               ; $12:AA50: AD BF 04
ADC.w DATA_1197F4,y     ; $12:AA53: 79 F4 97
STA $15,x               ; $12:AA56: 95 15
STY $01                 ; $12:AA58: 84 01
LDA #$0A                ; $12:AA5A: A9 0A
STA $90,x               ; $12:AA5C: 95 90
JSR CODE_129F7A         ; $12:AA5E: 20 7A 9F
LDA $0587               ; $12:AA61: AD 87 05
AND #$1F                ; $12:AA64: 29 1F
ADC #$20                ; $12:AA66: 69 20
STA $33,x               ; $12:AA68: 95 33
LDA $00CA               ; $12:AA6A: AD CA 00
ADC #$00                ; $12:AA6D: 69 00
STA $1F,x               ; $12:AA6F: 95 1F
LDY $01                 ; $12:AA71: A4 01
JSR CODE_129FD0         ; $12:AA73: 20 D0 9F
ASL $3D,x               ; $12:AA76: 16 3D
RTS                     ; $12:AA78: 60

CODE_12AA79:
JSR CODE_12AAA7         ; $12:AA79: 20 A7 AA
CLC                     ; $12:AA7C: 18
ADC.w DATA_1197F6,y     ; $12:AA7D: 79 F6 97
STA $29,x               ; $12:AA80: 95 29
LDA $EB                 ; $12:AA82: A5 EB
BEQ CODE_12AA8B         ; $12:AA84: F0 05
LDA $04BF               ; $12:AA86: AD BF 04
ADC #$00                ; $12:AA89: 69 00

CODE_12AA8B:
STA $15,x               ; $12:AA8B: 95 15
LDA $CB                 ; $12:AA8D: A5 CB
STA $33,x               ; $12:AA8F: 95 33
LDA $CA                 ; $12:AA91: A5 CA
STA $1F,x               ; $12:AA93: 95 1F
STY $01                 ; $12:AA95: 84 01
LDA #$0F                ; $12:AA97: A9 0F
STA $90,x               ; $12:AA99: 95 90
JSR CODE_129F7A         ; $12:AA9B: 20 7A 9F
LDY $01                 ; $12:AA9E: A4 01
JSR CODE_129FD0         ; $12:AAA0: 20 D0 9F
JSR CODE_129FF7         ; $12:AAA3: 20 F7 9F
RTS                     ; $12:AAA6: 60

CODE_12AAA7:
LDA $0500               ; $12:AAA7: AD 00 05
BNE CODE_12AACB         ; $12:AAAA: D0 1F
LDA $0623               ; $12:AAAC: AD 23 06
CLC                     ; $12:AAAF: 18
ADC #$03                ; $12:AAB0: 69 03
STA $0623               ; $12:AAB2: 8D 23 06
BCC CODE_12AACB         ; $12:AAB5: 90 14
JSR CODE_12B335         ; $12:AAB7: 20 35 B3
BMI CODE_12AACB         ; $12:AABA: 30 0F
LDY #$00                ; $12:AABC: A0 00
LDA $10                 ; $12:AABE: A5 10
AND #$40                ; $12:AAC0: 29 40 D0
BNE CODE_12AAC5         ; $12:AAC2: D0 01
INY                     ; $12:AAC4: C8

CODE_12AAC5:
LDX $00                 ; $12:AAC5: A6 00
LDA $04C1               ; $12:AAC7: AD C1 04
RTS                     ; $12:AACA: 60

CODE_12AACB:
PLA                     ; $12:AACB: 68
PLA                     ; $12:AACC: 68
RTS                     ; $12:AACD: 60

CODE_12AACE:
JSR CODE_12DDAB         ; $12:AACE: 20 AB DD
JSR CODE_12BB16         ; $12:AAD1: 20 16 BB
LDA $0453,x             ; $12:AAD4: BD 53 04
BNE CODE_12AAE1         ; $12:AAD7: D0 08
LDA #$04                ; $12:AAD9: A9 04
STA $0453,x             ; $12:AADB: 9D 53 04
INC $0480,x             ; $12:AADE: FE 80 04

CODE_12AAE1:
LDA $0480,x             ; $12:AAE1: BD 80 04
CMP #$03                ; $12:AAE4: C9 03
BCC CODE_12AAED         ; $12:AAE6: 90 05
LDA #$00                ; $12:AAE8: A9 00
STA $0480,x             ; $12:AAEA: 9D 80 04

CODE_12AAED:
LDA $65,x               ; $12:AAED: B5 65
AND #$EF                ; $12:AAEF: 29 EF
STA $65,x               ; $12:AAF1: 95 65
LDA $0480,x             ; $12:AAF3: BD 80 04
ASL A                   ; $12:AAF6: 0A
STA $0712               ; $12:AAF7: 8D 12 07
LDY $90,x               ; $12:AAFA: B4 90
LDA.w DATA_11993B,y     ; $12:AAFC: B9 3B 99
CLC                     ; $12:AAFF: 18
ADC $0712               ; $12:AB00: 6D 12 07
JSR CODE_12BDD5         ; $12:AB03: 20 D5 BD
LDA $79,x               ; $12:AB06: B5 79
BNE CODE_12AB0D         ; $12:AB08: D0 03
JMP CODE_12A0AA         ; $12:AB0A: 4C AA A0

CODE_12AB0D:
LDA $5B,x               ; $12:AB0D: B5 5B
AND #$03                ; $12:AB0F: 29 03
BEQ CODE_12AB16         ; $12:AB11: F0 03
JSR CODE_12B1F9         ; $12:AB13: 20 F9 B1

CODE_12AB16:
JMP CODE_12B497         ; $12:AB16: 4C 97 B4

CODE_12AB19:
LDA $9F,x               ; $12:AB19: B5 9F
ASL A                   ; $12:AB1B: 0A
BNE CODE_12AB21         ; $12:AB1C: D0 03
JSR CODE_129FCD         ; $12:AB1E: 20 CD 9F

CODE_12AB21:
JSR CODE_12DDAB         ; $12:AB21: 20 AB DD
LDA $5B,x               ; $12:AB24: B5 5B
PHA                     ; $12:AB26: 48
AND #$04                ; $12:AB27: 29 04
BEQ CODE_12AB2E         ; $12:AB29: F0 03
JSR CODE_12B659         ; $12:AB2B: 20 59 B6

CODE_12AB2E:
PLA                     ; $12:AB2E: 68
AND #$03                ; $12:AB2F: 29 03
BEQ CODE_12AB36         ; $12:AB31: F0 03
JSR CODE_12C248         ; $12:AB33: 20 48 C2

CODE_12AB36:
JSR CODE_12A0AA         ; $12:AB36: 20 AA A0
LDA #$83                ; $12:AB39: A9 83
STA $046E,x             ; $12:AB3B: 9D 6E 04
LDA #$02                ; $12:AB3E: A9 02
STA $6F,x               ; $12:AB40: 95 6F
JSR CODE_12BB16         ; $12:AB42: 20 16 BB
INC $9F,x               ; $12:AB45: F6 9F
LDA $9F,x               ; $12:AB47: B5 9F
AND #$2F                ; $12:AB49: 29 2F
BNE CODE_12AB51         ; $12:AB4B: D0 04
LDA #$10                ; $12:AB4D: A9 10
STA $86,x               ; $12:AB4F: 95 86

CODE_12AB51:
LDY $86,x               ; $12:AB51: B4 86
BEQ CODE_12ABA7         ; $12:AB53: F0 52
CPY #$06                ; $12:AB55: C0 06
BNE CODE_12AB95         ; $12:AB57: D0 3C
JSR CODE_12B335         ; $12:AB59: 20 35 B3
BMI CODE_12AB95         ; $12:AB5C: 30 37
LDA $90,x               ; $12:AB5E: B5 90
PHA                     ; $12:AB60: 48
LDX $00                 ; $12:AB61: A6 00
LDA $0587               ; $12:AB63: AD 87 05
AND #$0F                ; $12:AB66: 29 0F
ORA #$BC                ; $12:AB68: 09 BC
STA $47,x               ; $12:AB6A: 95 47
JSR CODE_12C1DA         ; $12:AB6C: 20 DA C1
PLA                     ; $12:AB6F: 68
CMP #$25                ; $12:AB70: C9 25
LDA.w DATA_1197F8,y     ; $12:AB72: B9 F8 97
BCC CODE_12AB79         ; $12:AB75: 90 02
LDA #$00                ; $12:AB77: A9 00

CODE_12AB79:
STA $3D,x               ; $12:AB79: 95 3D
LDA $29,x               ; $12:AB7B: B5 29
SBC #$05                ; $12:AB7D: E9 05
STA $29,x               ; $12:AB7F: 95 29
LDA $15,x               ; $12:AB81: B5 15
SBC #$00                ; $12:AB83: E9 00
STA $15,x               ; $12:AB85: 95 15
LDA #$20                ; $12:AB87: A9 20
STA $90,x               ; $12:AB89: 95 90
LDA #$27                ; $12:AB8B: A9 27
STA $1DE3               ; $12:AB8D: 8D E3 1D
JSR CODE_129F7A         ; $12:AB90: 20 7A 9F
LDX $12                 ; $12:AB93: A6 12

CODE_12AB95:
LDA $65,x               ; $12:AB95: B5 65
ORA #$10                ; $12:AB97: 09 10
STA $65,x               ; $12:AB99: 95 65
LDA #$AE                ; $12:AB9B: A9 AE
JSR CODE_12BDD5         ; $12:AB9D: 20 D5 BD
LDA $65,x               ; $12:ABA0: B5 65
AND #$EF                ; $12:ABA2: 29 EF
STA $65,x               ; $12:ABA4: 95 65
RTS                     ; $12:ABA6: 60

CODE_12ABA7:
JMP CODE_12BD29         ; $12:ABA7: 4C 29 BD

CODE_12ABAA:
LDY #$05                ; $12:ABAA: A0 05

CODE_12ABAC:
LDA $0051,y             ; $12:ABAC: B9 51 00
BEQ CODE_12ABBC         ; $12:ABAF: F0 0B
CPY $12                 ; $12:ABB1: C4 12
BEQ CODE_12ABBC         ; $12:ABB3: F0 07
LDA $0090,y             ; $12:ABB5: B9 90 00
CMP #$3D                ; $12:ABB8: C9 3D
BEQ CODE_12ABC7         ; $12:ABBA: F0 0B

CODE_12ABBC:
DEY                     ; $12:ABBC: 88
BPL CODE_12ABAC         ; $12:ABBD: 10 ED
LDA $04B0               ; $12:ABBF: AD B0 04
BNE CODE_12ABC7         ; $12:ABC2: D0 03

CODE_12ABC4:
JMP CODE_12AC85         ; $12:ABC4: 4C 85 AC

CODE_12ABC7:
JMP CODE_12A83B         ; $12:ABC7: 4C 3B A8

CODE_12ABCA:
LDY #$05                ; $12:ABCA: A0 05

CODE_12ABCC:
LDA $0051,y             ; $12:ABCC: B9 51 00
BEQ CODE_12ABDC         ; $12:ABCF: F0 0B
CPY $12                 ; $12:ABD1: C4 12
BEQ CODE_12ABDC         ; $12:ABD3: F0 07
LDA $0090,y             ; $12:ABD5: B9 90 00
CMP #$44                ; $12:ABD8: C9 44
BEQ CODE_12ABC7         ; $12:ABDA: F0 EB

CODE_12ABDC:
DEY                     ; $12:ABDC: 88
BPL CODE_12ABCC         ; $12:ABDD: 10 ED
LDA $04B5               ; $12:ABDF: AD B5 04
BNE CODE_12ABC7         ; $12:ABE2: D0 E3
BEQ CODE_12ABC4         ; $12:ABE4: F0 DE
JSR CODE_12B335         ; $12:ABE6: 20 35 B3
BMI CODE_12AC10         ; $12:ABE9: 30 25
LDX $00                 ; $12:ABEB: A6 00
LDA #$45                ; $12:ABED: A9 45
STA $90,x               ; $12:ABEF: 95 90
LDA $04C1               ; $12:ABF1: AD C1 04
ADC #$D0                ; $12:ABF4: 69 D0
STA $29,x               ; $12:ABF6: 95 29
LDA $04BF               ; $12:ABF8: AD BF 04
ADC #$00                ; $12:ABFB: 69 00
STA $15,x               ; $12:ABFD: 95 15
LDA $CB                 ; $12:ABFF: A5 CB
ADC #$E0                ; $12:AC01: 69 E0
STA $33,x               ; $12:AC03: 95 33
LDA $CA                 ; $12:AC05: A5 CA
ADC #$00                ; $12:AC07: 69 00
STA $1F,x               ; $12:AC09: 95 1F
JSR CODE_129F7A         ; $12:AC0B: 20 7A 9F
LDX $12                 ; $12:AC0E: A6 12

CODE_12AC10:
RTS                     ; $12:AC10: 60

CODE_12AC11:
LDA #$FC                ; $12:AC11: A9 FC

; Star Y speed = #$FC.
; (Rise up slightly.)
STA $47,x               ; $12:AC13: 95 47
LDY #$F8                ; $12:AC15: A0 F8
LDA $10                 ; $12:AC17: A5 10
STA $045C,x             ; $12:AC19: 9D 5C 04
BPL CODE_12AC20         ; $12:AC1C: 10 02
LDY #$08                ; $12:AC1E: A0 08

; X speed is #$F8 or #$08.
; Switches every 128 frames.
;
;
; <--

CODE_12AC20:
STY $3D,x               ; $12:AC20: 94 3D
JMP CODE_12A0A7         ; $12:AC22: 4C A7 A0

CODE_12AC25:
JSR CODE_12DDAB         ; $12:AC25: 20 AB DD
AND #$03                ; $12:AC28: 29 03
BNE CODE_12AC2F         ; $12:AC2A: D0 03
JMP CODE_12A83B         ; $12:AC2C: 4C 3B A8

CODE_12AC2F:
INC $9F,x               ; $12:AC2F: F6 9F
LDA $9F,x               ; $12:AC31: B5 9F
ASL A                   ; $12:AC33: 0A
BNE CODE_12AC77         ; $12:AC34: D0 41
JSR CODE_12B335         ; $12:AC36: 20 35 B3
BMI CODE_12AC77         ; $12:AC39: 30 3C
LDY $00                 ; $12:AC3B: A4 00
LDA $0029,y             ; $12:AC3D: B9 29 00
SEC                     ; $12:AC40: 38
SBC #$06                ; $12:AC41: E9 06

; X position of new sprite = 6 pixels to the left from the generator.
STA $0029,y             ; $12:AC43: 99 29 00
LDA $0033,y             ; $12:AC46: B9 33 00
SBC #$04                ; $12:AC49: E9 04

; Y position of new sprite = 4 pixels upwards from the generator.
STA $0033,y             ; $12:AC4B: 99 33 00
LDA $001F,y             ; $12:AC4E: B9 1F 00
SBC #$00                ; $12:AC51: E9 00
STA $001F,y             ; $12:AC53: 99 1F 00
LDA #$1A                ; $12:AC56: A9 1A
STA $0480,y             ; $12:AC58: 99 80 04
LDA #$F8                ; $12:AC5B: A9 F8
STA $0047,y             ; $12:AC5D: 99 47 00
LDA $90,x               ; $12:AC60: B5 90
CMP #$16                ; $12:AC62: C9 16

; Check if Bob-Omb generator.
;
; If not, return.
BNE CODE_12AC77         ; $12:AC64: D0 11
LDA #$09                ; $12:AC66: A9 09

; Spawn Bob-Omb.
STA $0090,y             ; $12:AC68: 99 90 00
LDA $003D,y             ; $12:AC6B: B9 3D 00
ASL A                   ; $12:AC6E: 0A
STA $003D,y             ; $12:AC6F: 99 3D 00
LDA #$FF                ; $12:AC72: A9 FF
STA $0086,y             ; $12:AC74: 99 86 00

CODE_12AC77:
RTS                     ; $12:AC77: 60

CODE_12AC78:
DEC $33,x               ; $12:AC78: D6 33
DEC $33,x               ; $12:AC7A: D6 33
LDY #$01                ; $12:AC7C: A0 01
STY $111F               ; $12:AC7E: 8C 1F 11
INY                     ; $12:AC81: C8
STY $110B               ; $12:AC82: 8C 0B 11

CODE_12AC85:
JSR CODE_129F96         ; $12:AC85: 20 96 9F
LDA #$00                ; $12:AC88: A9 00

; No X-speed.
STA $3D,x               ; $12:AC8A: 95 3D
RTS                     ; $12:AC8C: 60

CODE_12AC8D:
LDA $ED                 ; $12:AC8D: A5 ED
BEQ CODE_12AC94         ; $12:AC8F: F0 03

CODE_12AC91:
JMP CODE_12AD30         ; $12:AC91: 4C 30 AD

CODE_12AC94:
LDA $04B6               ; $12:AC94: AD B6 04

; If time to wait before Hawkmouth opens his mouth is 0...
; Branch.
BEQ CODE_12ACA3         ; $12:AC97: F0 0A
DEC $04B6               ; $12:AC99: CE B6 04

; Decrease that timer. If not hitting 0, branch.
BNE CODE_12AC91         ; $12:AC9C: D0 F3
LDA #$2C                ; $12:AC9E: A9 2C

; Opening mouth sound effect.
STA $1DE0               ; $12:ACA0: 8D E0 1D

CODE_12ACA3:
LDA $04B4               ; $12:ACA3: AD B4 04
BEQ CODE_12ACDD         ; $12:ACA6: F0 35
DEC $04B5               ; $12:ACA8: CE B5 04
BNE CODE_12AC91         ; $12:ACAB: D0 E4
LDA #$00                ; $12:ACAD: A9 00
STA $04B4               ; $12:ACAF: 8D B4 04
LDA #$01                ; $12:ACB2: A9 01
STA $0536               ; $12:ACB4: 8D 36 05
LDA #$01                ; $12:ACB7: A9 01
JSR CODE_12AD41         ; $12:ACB9: 20 41 AD
LDA #$F0                ; $12:ACBC: A9 F0
STA $0881               ; $12:ACBE: 8D 81 08
STA $0885               ; $12:ACC1: 8D 85 08
LDY $0629               ; $12:ACC4: AC 29 06
LDA $0635               ; $12:ACC7: AD 35 06
CMP #$06                ; $12:ACCA: C9 06
BNE CODE_12ACCF         ; $12:ACCC: D0 01
INY                     ; $12:ACCE: C8

CODE_12ACCF:
CPY #$02                ; $12:ACCF: C0 02
BCC CODE_12ACD7         ; $12:ACD1: 90 04
INC $0627               ; $12:ACD3: EE 27 06
RTS                     ; $12:ACD6: 60

CODE_12ACD7:
LDA #$03                ; $12:ACD7: A9 03
STA $04ED               ; $12:ACD9: 8D ED 04
RTS                     ; $12:ACDC: 60

CODE_12ACDD:
LDA $04B5               ; $12:ACDD: AD B5 04
BEQ CODE_12AD30         ; $12:ACE0: F0 4E
CMP #$30                ; $12:ACE2: C9 30
BEQ CODE_12ACFE         ; $12:ACE4: F0 18
LDA $ED                 ; $12:ACE6: A5 ED
AND #$04                ; $12:ACE8: 29 04
BNE CODE_12AD30         ; $12:ACEA: D0 44
INC $04B5               ; $12:ACEC: EE B5 04
LDA $10                 ; $12:ACEF: A5 10
AND #$03                ; $12:ACF1: 29 03
BNE CODE_12ACFB         ; $12:ACF3: D0 06
DEC $111F               ; $12:ACF5: CE 1F 11
INC $110B               ; $12:ACF8: EE 0B 11

CODE_12ACFB:
JMP CODE_12AD30         ; $12:ACFB: 4C 30 AD

CODE_12ACFE:
LDA $5B,x               ; $12:ACFE: B5 5B
AND #$40                ; $12:AD00: 29 40
BEQ CODE_12AD30         ; $12:AD02: F0 2C
LDA $33,x               ; $12:AD04: B5 33
CMP $32                 ; $12:AD06: C5 32
BCS CODE_12AD30         ; $12:AD08: B0 26
LDA $5A                 ; $12:AD0A: A5 5A
AND #$04                ; $12:AD0C: 29 04
BEQ CODE_12AD30         ; $12:AD0E: F0 20
LDA $9C                 ; $12:AD10: A5 9C
BNE CODE_12AD30         ; $12:AD12: D0 1C
LDA #$06                ; $12:AD14: A9 06

; Enter Hawkmouth.
STA $50                 ; $12:AD16: 85 50
LDA #$30                ; $12:AD18: A9 30

; Amount of frames to keep walking.
STA $82                 ; $12:AD1A: 85 82
LDA #$FC                ; $12:AD1C: A9 FC

; Y speed of player when entering Hawkmouth.
; Rise up slightly.
STA $46                 ; $12:AD1E: 85 46
LDA #$80                ; $12:AD20: A9 80

; Fade music.
STA $1DE2               ; $12:AD22: 8D E2 1D
STA $0547               ; $12:AD25: 8D 47 05
LDA #$2D                ; $12:AD28: A9 2D

; Entering Hawkmouth sound effect.
STA $1DE0               ; $12:AD2A: 8D E0 1D
INC $04B4               ; $12:AD2D: EE B4 04

CODE_12AD30:
LDA $EE                 ; $12:AD30: A5 EE
BEQ CODE_12AD37         ; $12:AD32: F0 03
BRL CODE_12AE0D         ; $12:AD34: 82 D6 00

CODE_12AD37:
LDA $90,x               ; $12:AD37: B5 90
SEC                     ; $12:AD39: 38
SBC #$41                ; $12:AD3A: E9 41
STA $6F,x               ; $12:AD3C: 95 6F
LDA $04B5               ; $12:AD3E: AD B5 04

CODE_12AD41:
STA $07                 ; $12:AD41: 85 07
LSR A                   ; $12:AD43: 4A
LSR A                   ; $12:AD44: 4A
EOR #$FF                ; $12:AD45: 49 FF
SEC                     ; $12:AD47: 38
ADC $042C               ; $12:AD48: 6D 2C 04
STA $042C               ; $12:AD4B: 8D 2C 04
LDA $07                 ; $12:AD4E: A5 07
BNE CODE_12AD57         ; $12:AD50: D0 05
LDA $04B4               ; $12:AD52: AD B4 04
BEQ CODE_12AD65         ; $12:AD55: F0 0E

CODE_12AD57:
LDY #$60                ; $12:AD57: A0 60
STY $02F6               ; $12:AD59: 8C F6 02
STY $02F8               ; $12:AD5C: 8C F8 02
STZ $02F7               ; $12:AD5F: 9C F7 02
STZ $02F9               ; $12:AD62: 9C F9 02

CODE_12AD65:
LDA #$8C                ; $12:AD65: A9 8C
LDY $07                 ; $12:AD67: A4 07
BEQ CODE_12AD6D         ; $12:AD69: F0 02
LDA #$90                ; $12:AD6B: A9 90

CODE_12AD6D:
JSR CODE_12BDD5         ; $12:AD6D: 20 D5 BD
LDA $07                 ; $12:AD70: A5 07
TAY                     ; $12:AD72: A8
LSR A                   ; $12:AD73: 4A
CLC                     ; $12:AD74: 18
ADC $042C               ; $12:AD75: 6D 2C 04
ADC #$08                ; $12:AD78: 69 08
CPY #$00                ; $12:AD7A: C0 00
BNE CODE_12AD80         ; $12:AD7C: D0 02
ADC #$07                ; $12:AD7E: 69 07

CODE_12AD80:
STA $00                 ; $12:AD80: 85 00
JSL CODE_14E483         ; $12:AD82: 22 83 E4 14
LDX #$98                ; $12:AD86: A2 98
LDA $07                 ; $12:AD88: A5 07
BNE CODE_12AD91         ; $12:AD8A: D0 05
LDA $04B4               ; $12:AD8C: AD B4 04
BEQ CODE_12AD9B         ; $12:AD8F: F0 0A

CODE_12AD91:
LDY #$68                ; $12:AD91: A0 68
STY $02F8               ; $12:AD93: 8C F8 02
STZ $02F9               ; $12:AD96: 9C F9 02
LDX #$94                ; $12:AD99: A2 94

CODE_12AD9B:
JSR CODE_12C03B         ; $12:AD9B: 20 3B C0
JSR CODE_12C03B         ; $12:AD9E: 20 3B C0
LDX $12                 ; $12:ADA1: A6 12
LDA $90,x               ; $12:ADA3: B5 90
CMP #$2D                ; $12:ADA5: C9 2D
BEQ CODE_12AE0D         ; $12:ADA7: F0 64
LDA $6F,x               ; $12:ADA9: B5 6F
CMP #$01                ; $12:ADAB: C9 01
BEQ CODE_12AE0D         ; $12:ADAD: F0 5E
LDA $33,x               ; $12:ADAF: B5 33
STA $0714               ; $12:ADB1: 8D 14 07
LDA $1F,x               ; $12:ADB4: B5 1F
STA $0715               ; $12:ADB6: 8D 15 07
LDA $CB                 ; $12:ADB9: A5 CB
STA $0716               ; $12:ADBB: 8D 16 07
LDA $CA                 ; $12:ADBE: A5 CA
STA $0717               ; $12:ADC0: 8D 17 07
LDA $021F               ; $12:ADC3: AD 1F 02
XBA                     ; $12:ADC6: EB
LDA $0429               ; $12:ADC7: AD 29 04
REP #$20                ; $12:ADCA: C2 20
CLC                     ; $12:ADCC: 18
ADC #$0010              ; $12:ADCD: 69 10 00
STA $0712               ; $12:ADD0: 8D 12 07
LDA $0714               ; $12:ADD3: AD 14 07
SEC                     ; $12:ADD6: 38
SBC $0716               ; $12:ADD7: ED 16 07
CLC                     ; $12:ADDA: 18
ADC #$000A              ; $12:ADDB: 69 0A 00
SEP #$20                ; $12:ADDE: E2 20
STA $042C               ; $12:ADE0: 8D 2C 04
LDA $0712               ; $12:ADE3: AD 12 07
STA $0429               ; $12:ADE6: 8D 29 04
LDA $0713               ; $12:ADE9: AD 13 07
STA $021F               ; $12:ADEC: 8D 1F 02
AND #$01                ; $12:ADEF: 29 01
ASL A                   ; $12:ADF1: 0A
ASL A                   ; $12:ADF2: 0A
ASL A                   ; $12:ADF3: 0A
STA $ED                 ; $12:ADF4: 85 ED
LDA $65,x               ; $12:ADF6: B5 65
PHA                     ; $12:ADF8: 48
ORA #$20                ; $12:ADF9: 09 20
STA $65,x               ; $12:ADFB: 95 65
LDA #$38                ; $12:ADFD: A9 38
STA $02F6               ; $12:ADFF: 8D F6 02
STZ $02F7               ; $12:AE02: 9C F7 02
LDA #$78                ; $12:AE05: A9 78
JSR CODE_12BDD5         ; $12:AE07: 20 D5 BD
PLA                     ; $12:AE0A: 68
STA $65,x               ; $12:AE0B: 95 65

CODE_12AE0D:
LDX $12                 ; $12:AE0D: A6 12
RTS                     ; $12:AE0F: 60

CODE_12AE10:
JSR CODE_12AC85         ; $12:AE10: 20 85 AC
LDA $29,x               ; $12:AE13: B5 29
ADC #$08                ; $12:AE15: 69 08
STA $29,x               ; $12:AE17: 95 29
LDA $33,x               ; $12:AE19: B5 33
LSR A                   ; $12:AE1B: 4A
LSR A                   ; $12:AE1C: 4A
LSR A                   ; $12:AE1D: 4A
LSR A                   ; $12:AE1E: 4A
STA $B1,x               ; $12:AE1F: 95 B1
LDA #$80                ; $12:AE21: A9 80
STA $86,x               ; $12:AE23: 95 86

CODE_12AE25:
RTS                     ; $12:AE25: 60

CODE_12AE26:
JSR CODE_12BB16         ; $12:AE26: 20 16 BB
INC $9F,x               ; $12:AE29: F6 9F
JSR CODE_12BA4F         ; $12:AE2B: 20 4F BA
JSR CODE_12BA46         ; $12:AE2E: 20 46 BA
LDA #$09                ; $12:AE31: A9 09
LDY $47,x               ; $12:AE33: B4 47
BMI CODE_12AE39         ; $12:AE35: 30 02
LDA #$89                ; $12:AE37: A9 89

CODE_12AE39:
STA $65,x               ; $12:AE39: 95 65
LDY $EB                 ; $12:AE3B: A4 EB
LDA $33,x               ; $12:AE3D: B5 33
CMP.w DATA_119806,y     ; $12:AE3F: D9 06 98
BCC CODE_12AE55         ; $12:AE42: 90 11
LDY $86,x               ; $12:AE44: B4 86
BNE CODE_12AE25         ; $12:AE46: D0 DD
STA $33,x               ; $12:AE48: 95 33
LDY $B1,x               ; $12:AE4A: B4 B1
LDA.w DATA_1197FA,y     ; $12:AE4C: B9 FA 97
STA $47,x               ; $12:AE4F: 95 47
LDA #$C0                ; $12:AE51: A9 C0
STA $86,x               ; $12:AE53: 95 86

CODE_12AE55:
JSR CODE_12B497         ; $12:AE55: 20 97 B4
INC $47,x               ; $12:AE58: F6 47
JMP CODE_12BD29         ; $12:AE5A: 4C 29 BD

CODE_12AE5D:
LDA $0628               ; $12:AE5D: AD 28 06
CMP #$02                ; $12:AE60: C9 02
BNE CODE_12AE70         ; $12:AE62: D0 0C
LDA $0702,x             ; $12:AE64: BD 02 07
BEQ CODE_12AE6A         ; $12:AE67: F0 01
RTS                     ; $12:AE69: 60

CODE_12AE6A:
INC $0702,x             ; $12:AE6A: FE 02 07
JMP CODE_12BD29         ; $12:AE6D: 4C 29 BD

CODE_12AE70:
JSR CODE_12BB16         ; $12:AE70: 20 16 BB
INC $9F,x               ; $12:AE73: F6 9F
JSR CODE_12BA46         ; $12:AE75: 20 46 BA
JSR CODE_12BD29         ; $12:AE78: 20 29 BD
JSR CODE_12BA4F         ; $12:AE7B: 20 4F BA
LDA #$00                ; $12:AE7E: A9 00
STA $3D,x               ; $12:AE80: 95 3D
JSR CODE_12DD90         ; $12:AE82: 20 90 DD
LDY $0477,x             ; $12:AE85: BC 77 04
BCC CODE_12AE9E         ; $12:AE88: 90 14
LDA $86,x               ; $12:AE8A: B5 86
BNE CODE_12AEA9         ; $12:AE8C: D0 1B
LDA $33,x               ; $12:AE8E: B5 33
CMP $CB                 ; $12:AE90: C5 CB
LDA $1F,x               ; $12:AE92: B5 1F
SBC $CA                 ; $12:AE94: E5 CA
BEQ CODE_12AEA9         ; $12:AE96: F0 11
ASL A                   ; $12:AE98: 0A
ROL A                   ; $12:AE99: 2A
AND #$01                ; $12:AE9A: 29 01
BRA CODE_12AEA5         ; $12:AE9C: 80 07

CODE_12AE9E:
LDA #$20                ; $12:AE9E: A9 20
STA $86,x               ; $12:AEA0: 95 86
TYA                     ; $12:AEA2: 98
EOR #$01                ; $12:AEA3: 49 01

CODE_12AEA5:
STA $0477,x             ; $12:AEA5: 9D 77 04
TAY                     ; $12:AEA8: A8

CODE_12AEA9:
LDA.w DATA_119808,y     ; $12:AEA9: B9 08 98
STA $47,x               ; $12:AEAC: 95 47
LDA.w DATA_11980A,y     ; $12:AEAE: B9 0A 98
STA $65,x               ; $12:AEB1: 95 65
JSR CODE_12C1DA         ; $12:AEB3: 20 DA C1
LDA $0F                 ; $12:AEB6: A5 0F
ADC #$10                ; $12:AEB8: 69 10
CMP #$20                ; $12:AEBA: C9 20
BCS CODE_12AEC0         ; $12:AEBC: B0 02
ASL $47,x               ; $12:AEBE: 16 47

CODE_12AEC0:
JMP CODE_12C1EA         ; $12:AEC0: 4C EA C1

CODE_12AEC3:
LDA $EE                 ; $12:AEC3: A5 EE
BEQ CODE_12AECA         ; $12:AEC5: F0 03
JMP CODE_12A83B         ; $12:AEC7: 4C 3B A8

CODE_12AECA:
LDY #$FC                ; $12:AECA: A0 FC
LDA $10                 ; $12:AECC: A5 10
AND #$20                ; $12:AECE: 29 20
BEQ CODE_12AED4         ; $12:AED0: F0 02
LDY #$04                ; $12:AED2: A0 04

; X speed = #$FC...
; For $20 consecutive frames.
;
;
; The other $20 consecutive frames, X speed = #$04.

CODE_12AED4:
STY $3D,x               ; $12:AED4: 94 3D
LDA #$F8                ; $12:AED6: A9 F8

; Y speed = #$F8.
STA $47,x               ; $12:AED8: 95 47
JSR CODE_12B497         ; $12:AEDA: 20 97 B4

CODE_12AEDD:
LDA $ED                 ; $12:AEDD: A5 ED
AND #$08                ; $12:AEDF: 29 08
ORA $EE                 ; $12:AEE1: 05 EE
BNE CODE_12AF2C         ; $12:AEE3: D0 47
REP #$10                ; $12:AEE5: C2 10
LDY $02F6               ; $12:AEE7: AC F6 02
LDA $0429               ; $12:AEEA: AD 29 04
STA $0800,y             ; $12:AEED: 99 00 08
STA $0804,y             ; $12:AEF0: 99 04 08
LDA $042C               ; $12:AEF3: AD 2C 04
STA $0801,y             ; $12:AEF6: 99 01 08
CLC                     ; $12:AEF9: 18
ADC #$08                ; $12:AEFA: 69 08
STA $0805,y             ; $12:AEFC: 99 05 08
LDA #$8A                ; $12:AEFF: A9 8A

; Upper tile number of heart.
STA $0802,y             ; $12:AF01: 99 02 08
LDA #$9A                ; $12:AF04: A9 9A

; Lower tile number of heart.
STA $0806,y             ; $12:AF06: 99 06 08
LDA $10                 ; $12:AF09: A5 10
AND #$20                ; $12:AF0B: 29 20
EOR #$20                ; $12:AF0D: 49 20
ASL A                   ; $12:AF0F: 0A
ORA #$22                ; $12:AF10: 09 22
STA $0803,y             ; $12:AF12: 99 03 08

; X-Flip tile every $20 frames.
;
;
;
; Palette 9, tile page 0. Priority 2.
STA $0807,y             ; $12:AF15: 99 07 08
PHY                     ; $12:AF18: 5A
REP #$20                ; $12:AF19: C2 20
TYA                     ; $12:AF1B: 98
LSR A                   ; $12:AF1C: 4A
LSR A                   ; $12:AF1D: 4A
TAY                     ; $12:AF1E: A8
SEP #$20                ; $12:AF1F: E2 20
LDA #$00                ; $12:AF21: A9 00
STA $0A20,y             ; $12:AF23: 99 20 0A

; Tiles are 8x8.
STA $0A21,y             ; $12:AF26: 99 21 0A
PLY                     ; $12:AF29: 7A
SEP #$10                ; $12:AF2A: E2 10

CODE_12AF2C:
RTS                     ; $12:AF2C: 60

CODE_12AF2D:
JSR CODE_129F96         ; $12:AF2D: 20 96 9F
LDA #$FF                ; $12:AF30: A9 FF
STA $0702,x             ; $12:AF32: 9D 02 07
LDY #$00                ; $12:AF35: A0 00
LDA $29,x               ; $12:AF37: B5 29
CMP #$A0                ; $12:AF39: C9 A0
BEQ CODE_12AF43         ; $12:AF3B: F0 06
INY                     ; $12:AF3D: C8
CMP #$B0                ; $12:AF3E: C9 B0
BEQ CODE_12AF43         ; $12:AF40: F0 01
INY                     ; $12:AF42: C8

CODE_12AF43:
TYA                     ; $12:AF43: 98
STA $79,x               ; $12:AF44: 95 79
LDA.w DATA_11980C,y     ; $12:AF46: B9 0C 98
STA $65,x               ; $12:AF49: 95 65
LDA #$02                ; $12:AF4B: A9 02
STA $0465,x             ; $12:AF4D: 9D 65 04

CODE_12AF50:
LDA $15,x               ; $12:AF50: B5 15
STA $04F0,x             ; $12:AF52: 9D F0 04
RTS                     ; $12:AF55: 60

CODE_12AF56:
LDA $0702,x             ; $12:AF56: BD 02 07
BMI CODE_12AF86         ; $12:AF59: 30 2B
BEQ CODE_12AF6F         ; $12:AF5B: F0 12
DEC $0702,x             ; $12:AF5D: DE 02 07
LDA $0702,x             ; $12:AF60: BD 02 07
BNE CODE_12AF7D         ; $12:AF63: D0 18
LDA $5B,x               ; $12:AF65: B5 5B
ORA #$10                ; $12:AF67: 09 10
STA $5B,x               ; $12:AF69: 95 5B
JSR CODE_12BB16         ; $12:AF6B: 20 16 BB
RTS                     ; $12:AF6E: 60

CODE_12AF6F:
LDA $5B,x               ; $12:AF6F: B5 5B
AND #$10                ; $12:AF71: 29 10
BEQ CODE_12AF86         ; $12:AF73: F0 11
LDA #$11                ; $12:AF75: A9 11
STA $045C,x             ; $12:AF77: 9D 5C 04
STA $0702,x             ; $12:AF7A: 9D 02 07

CODE_12AF7D:
LDA $6F,x               ; $12:AF7D: B5 6F
EOR #$03                ; $12:AF7F: 49 03
STA $6F,x               ; $12:AF81: 95 6F
JMP CODE_12B024         ; $12:AF83: 4C 24 B0

CODE_12AF86:
JSR CODE_12BB16         ; $12:AF86: 20 16 BB
JSR CODE_12DDAB         ; $12:AF89: 20 AB DD
LDA #$00                ; $12:AF8C: A9 00
STA $3D,x               ; $12:AF8E: 95 3D
JSR CODE_12C1DA         ; $12:AF90: 20 DA C1
INY                     ; $12:AF93: C8
STY $6F,x               ; $12:AF94: 94 6F
JSR CODE_12BD29         ; $12:AF96: 20 29 BD
LDA $5B,x               ; $12:AF99: B5 5B
AND #$04                ; $12:AF9B: 29 04
BEQ CODE_12AFDB         ; $12:AF9D: F0 3C
JSR CODE_12B659         ; $12:AF9F: 20 59 B6
LDA $10                 ; $12:AFA2: A5 10
BNE CODE_12AFAC         ; $12:AFA4: D0 06
LDA #$E0                ; $12:AFA6: A9 E0
STA $47,x               ; $12:AFA8: 95 47
BNE CODE_12AFDB         ; $12:AFAA: D0 2F

CODE_12AFAC:
LDY $79,x               ; $12:AFAC: B4 79
LDA.w DATA_119811,y     ; $12:AFAE: B9 11 98
AND $10                 ; $12:AFB1: 25 10
BNE CODE_12AFBF         ; $12:AFB3: D0 0A
LDA $ED                 ; $12:AFB5: A5 ED
AND #$0C                ; $12:AFB7: 29 0C
BNE CODE_12AFBF         ; $12:AFB9: D0 04
LDA #$1C                ; $12:AFBB: A9 1C
STA $86,x               ; $12:AFBD: 95 86

CODE_12AFBF:
LDY $86,x               ; $12:AFBF: B4 86
BNE CODE_12AFDE         ; $12:AFC1: D0 1B
INC $B1,x               ; $12:AFC3: F6 B1
LDA $B1,x               ; $12:AFC5: B5 B1
AND #$40                ; $12:AFC7: 29 40
BEQ CODE_12B024         ; $12:AFC9: F0 59
JSR CODE_12AA43         ; $12:AFCB: 20 43 AA
LDA #$0A                ; $12:AFCE: A9 0A
LDY $B1,x               ; $12:AFD0: B4 B1
BMI CODE_12AFD6         ; $12:AFD2: 30 02
LDA #$F6                ; $12:AFD4: A9 F6

CODE_12AFD6:
STA $3D,x               ; $12:AFD6: 95 3D
JMP CODE_12C1EF         ; $12:AFD8: 4C EF C1

CODE_12AFDB:
JMP CODE_12A0B2         ; $12:AFDB: 4C B2 A0

CODE_12AFDE:
CPY #$08                ; $12:AFDE: C0 08
BNE CODE_12B024         ; $12:AFE0: D0 42
LDA #$20                ; $12:AFE2: A9 20
STA $1DE0               ; $12:AFE4: 8D E0 1D
JSR CODE_12B670         ; $12:AFE7: 20 70 B6
BMI CODE_12B024         ; $12:AFEA: 30 38
LDY $0465,x             ; $12:AFEC: BC 65 04
LDA $79,x               ; $12:AFEF: B5 79
LDX $00                 ; $12:AFF1: A6 00
CMP #$02                ; $12:AFF3: C9 02
BEQ CODE_12B005         ; $12:AFF5: F0 0E
CMP #$01                ; $12:AFF7: C9 01
BNE CODE_12B00B         ; $12:AFF9: D0 10
LDA $0587               ; $12:AFFB: AD 87 05
AND #$1F                ; $12:AFFE: 29 1F
CMP.w DATA_119814,y     ; $12:B000: D9 14 98
BCS CODE_12B00B         ; $12:B003: B0 06

CODE_12B005:
INC $79,x               ; $12:B005: F6 79
LDA #$20                ; $12:B007: A9 20
BNE CODE_12B00D         ; $12:B009: D0 02

CODE_12B00B:
LDA #$1E                ; $12:B00B: A9 1E

CODE_12B00D:
STA $90,x               ; $12:B00D: 95 90
LDA $33,x               ; $12:B00F: B5 33
CLC                     ; $12:B011: 18
ADC #$03                ; $12:B012: 69 03
STA $33,x               ; $12:B014: 95 33
LDY $6F,x               ; $12:B016: B4 6F
LDA $29,x               ; $12:B018: B5 29
ADC.w DATA_11980E,y     ; $12:B01A: 79 0E 98
STA $29,x               ; $12:B01D: 95 29
JSR CODE_129F7A         ; $12:B01F: 20 7A 9F
LDX $12                 ; $12:B022: A6 12

CODE_12B024:
JMP CODE_12BD29         ; $12:B024: 4C 29 BD

CODE_12B027:
JSR CODE_12AA43         ; $12:B027: 20 43 AA
LDA $47,x               ; $12:B02A: B5 47
CMP #$EA                ; $12:B02C: C9 EA
BNE CODE_12B038         ; $12:B02E: D0 08
LDA #$01                ; $12:B030: A9 01
STA $1DE3               ; $12:B032: 8D E3 1D
INC $062B               ; $12:B035: EE 2B 06

CODE_12B038:
LDA $47,x               ; $12:B038: B5 47
CMP #$10                ; $12:B03A: C9 10
BMI CODE_12B064         ; $12:B03C: 30 26
JSR CODE_12B1F9         ; $12:B03E: 20 F9 B1
LDA $90,x               ; $12:B041: B5 90
CMP #$40                ; $12:B043: C9 40

; If sprite is 1-Up...
; ...
; ...branch.
BEQ CODE_12B048         ; $12:B045: F0 01

; Return.
RTS                     ; $12:B047: 60

; 1-Up collected flag, next time 1-Up object is picked up, a vegetable is spawned.

CODE_12B048:
INC $0620               ; $12:B048: EE 20 06
LDA $04EE               ; $12:B04B: AD EE 04
INC A                   ; $12:B04E: 1A
CMP #$64                ; $12:B04F: C9 64
BCC CODE_12B055         ; $12:B051: 90 02
LDA #$63                ; $12:B053: A9 63

; Increment lives by 1 unless lives >= 99.

CODE_12B055:
STA $04EE               ; $12:B055: 8D EE 04
LDA #$05                ; $12:B058: A9 05

; 1-Up get sound effect.
STA $1DE3               ; $12:B05A: 8D E3 1D

; Return.
RTS                     ; $12:B05D: 60

CODE_12B05E:
INC $042C               ; $12:B05E: EE 2C 04
JSR CODE_12B20E         ; $12:B061: 20 0E B2

CODE_12B064:
LDA $A8,x               ; $12:B064: B5 A8

; If crystal ball is completely picked up
CMP #$01                ; $12:B066: C9 01
BNE CODE_12B06E         ; $12:B068: D0 04
LDA $9A                 ; $12:B06A: A5 9A
BEQ CODE_12B071         ; $12:B06C: F0 03

CODE_12B06E:
JMP CODE_12B0D6         ; $12:B06E: 4C D6 B0

CODE_12B071:
JSR CODE_12B692         ; $12:B071: 20 92 B6
LDA #$00                ; $12:B074: A9 00
STA $9C                 ; $12:B076: 85 9C
STA $A8,x               ; $12:B078: 95 A8
JSR CODE_12B1F9         ; $12:B07A: 20 F9 B1
LDA $90,x               ; $12:B07D: B5 90
CMP #$44                ; $12:B07F: C9 44

; If not Crystal Ball, branch.
BNE CODE_12B09B         ; $12:B081: D0 18
LDA $04B5               ; $12:B083: AD B5 04

; If Crystal ball already collected, return.
BNE CODE_12B09A         ; $12:B086: D0 12
LDA #$10                ; $12:B088: A9 10

; Bonus get music.
; (When Crystal ball is collected.)
STA $1DE2               ; $12:B08A: 8D E2 1D
LDA #$60                ; $12:B08D: A9 60

; Amount of time to wait before Hawkmouth opens his mouth.
STA $04B6               ; $12:B08F: 8D B6 04
LDA #$A4                ; $12:B092: A9 A4

; Amount of time to wait before changing music back to normal one.
STA $078A               ; $12:B094: 8D 8A 07

; Set 'Crystal ball has been collected' flag.
INC $04B5               ; $12:B097: EE B5 04

; Return.

CODE_12B09A:
RTS                     ; $12:B09A: 60

CODE_12B09B:
CMP #$40                ; $12:B09B: C9 40

; If 1-Up, branch.
BEQ CODE_12B0C0         ; $12:B09D: F0 21
CMP #$46                ; $12:B09F: C9 46

; If Stopwatch, branch.
BEQ CODE_12B0CD         ; $12:B0A1: F0 2A
CMP #$3F                ; $12:B0A3: C9 3F

; If not Mushroom, branch.
BNE CODE_12B0C4         ; $12:B0A5: D0 1D
LDX $79                 ; $12:B0A7: A6 79
INC $04FC,x             ; $12:B0A9: FE FC 04
LDX $12                 ; $12:B0AC: A6 12

; Increase maximum amount of hearts.
INC $04C4               ; $12:B0AE: EE C4 04

; Fill all hearts. (NOPing this out only increases the maximum, but won't actually make the hearts red.)
JSL CODE_14E098         ; $12:B0B1: 22 98 E0 14
LDA #$0C                ; $12:B0B5: A9 0C

; Bonus game music.
; (Mushroom collected.)
STA $1DE2               ; $12:B0B7: 8D E2 1D
LDA #$58                ; $12:B0BA: A9 58
STA $079B               ; $12:B0BC: 8D 9B 07
RTS                     ; $12:B0BF: 60

CODE_12B0C0:
LDA #$09                ; $12:B0C0: A9 09
STA $65,x               ; $12:B0C2: 95 65

CODE_12B0C4:
LDA #$E0                ; $12:B0C4: A9 E0

; Y speed of 1-Up mushroom when collected.
STA $47,x               ; $12:B0C6: 95 47
LDA #$01                ; $12:B0C8: A9 01
STA $51,x               ; $12:B0CA: 95 51
RTS                     ; $12:B0CC: 60

CODE_12B0CD:
LDA #$FF                ; $12:B0CD: A9 FF

; Set sprite freeze timer to #$FF. (For stopwatch.)
STA $0500               ; $12:B0CF: 8D 00 05

; Return.
RTS                     ; $12:B0D2: 60

CODE_12B0D3:
JSR CODE_12B20E         ; $12:B0D3: 20 0E B2

CODE_12B0D6:
JSR CODE_12DDAB         ; $12:B0D6: 20 AB DD
LDA $5B,x               ; $12:B0D9: B5 5B
PHA                     ; $12:B0DB: 48
AND $6F,x               ; $12:B0DC: 35 6F
BEQ CODE_12B0EC         ; $12:B0DE: F0 0C
JSR CODE_12C248         ; $12:B0E0: 20 48 C2
JSR CODE_12B63B         ; $12:B0E3: 20 3B B6
JSR CODE_12B63B         ; $12:B0E6: 20 3B B6
JSR CODE_12B63B         ; $12:B0E9: 20 3B B6

CODE_12B0EC:
PLA                     ; $12:B0EC: 68
AND #$04                ; $12:B0ED: 29 04
BEQ CODE_12B10E         ; $12:B0EF: F0 1D
LDA $47,x               ; $12:B0F1: B5 47
CMP #$09                ; $12:B0F3: C9 09
BCC CODE_12B105         ; $12:B0F5: 90 0E
LSR A                   ; $12:B0F7: 4A
LSR A                   ; $12:B0F8: 4A
LSR A                   ; $12:B0F9: 4A
LSR A                   ; $12:B0FA: 4A
TAY                     ; $12:B0FB: A8
LDA.w DATA_119819,y     ; $12:B0FC: B9 19 98
JSR CODE_12B635         ; $12:B0FF: 20 35 B6
JMP CODE_12B10E         ; $12:B102: 4C 0E B1

CODE_12B105:
JSR CODE_12B659         ; $12:B105: 20 59 B6
LDA $0B                 ; $12:B108: A5 0B
BNE CODE_12B10E         ; $12:B10A: D0 02
STA $3D,x               ; $12:B10C: 95 3D

CODE_12B10E:
LDA $90,x               ; $12:B10E: B5 90
CMP #$37                ; $12:B110: C9 37
BNE CODE_12B13D         ; $12:B112: D0 29
LDA $86,x               ; $12:B114: B5 86
BNE CODE_12B134         ; $12:B116: D0 1C
LDY $A8,x               ; $12:B118: B4 A8
BEQ CODE_12B120         ; $12:B11A: F0 04
STA $9C                 ; $12:B11C: 85 9C
STA $A8,x               ; $12:B11E: 95 A8

CODE_12B120:
LDA #$04                ; $12:B120: A9 04
STA $51,x               ; $12:B122: 95 51
LDA #$20                ; $12:B124: A9 20
STA $86,x               ; $12:B126: 95 86
LDA #$4A                ; $12:B128: A9 4A
STA $1DE3               ; $12:B12A: 8D E3 1D
LDA #$01                ; $12:B12D: A9 01
LSR A                   ; $12:B12F: 4A
STA $042F,x             ; $12:B130: 9D 2F 04
RTS                     ; $12:B133: 60

CODE_12B134:
CMP #$40                ; $12:B134: C9 40
BCS CODE_12B13D         ; $12:B136: B0 05
LDA $10                 ; $12:B138: A5 10
STA $045C,x             ; $12:B13A: 9D 5C 04

CODE_12B13D:
JSR CODE_12BA46         ; $12:B13D: 20 46 BA
JSR CODE_12A0AA         ; $12:B140: 20 AA A0
JSL CODE_139210         ; $12:B143: 22 10 92 13

CODE_12B147:
LDA $B1,x               ; $12:B147: B5 B1
BNE CODE_12B14E         ; $12:B149: D0 03
JMP CODE_12BDC9         ; $12:B14B: 4C C9 BD

CODE_12B14E:
JMP CODE_12BDD5         ; $12:B14E: 4C D5 BD

CODE_12B151:
JSR CODE_12BA46         ; $12:B151: 20 46 BA
JSR CODE_12DDAB         ; $12:B154: 20 AB DD
LDA $5B,x               ; $12:B157: B5 5B
PHA                     ; $12:B159: 48
AND #$03                ; $12:B15A: 29 03
BEQ CODE_12B167         ; $12:B15C: F0 09
JSR CODE_12C248         ; $12:B15E: 20 48 C2
JSR CODE_12B63B         ; $12:B161: 20 3B B6
JSR CODE_12B63B         ; $12:B164: 20 3B B6

CODE_12B167:
PLA                     ; $12:B167: 68
AND #$04                ; $12:B168: 29 04
BEQ CODE_12B13D         ; $12:B16A: F0 D1
JSR CODE_12B659         ; $12:B16C: 20 59 B6
PHX                     ; $12:B16F: DA
LDX #$08                ; $12:B170: A2 08

CODE_12B172:
LDA $51,x               ; $12:B172: B5 51
CMP #$01                ; $12:B174: C9 01
BNE CODE_12B181         ; $12:B176: D0 09
LDA $90,x               ; $12:B178: B5 90
CMP #$3C                ; $12:B17A: C9 3C
BNE CODE_12B181         ; $12:B17C: D0 03
JSR CODE_12B1F9         ; $12:B17E: 20 F9 B1

CODE_12B181:
DEX                     ; $12:B181: CA
BPL CODE_12B172         ; $12:B182: 10 EE
PLX                     ; $12:B184: FA
LDA $29,x               ; $12:B185: B5 29
ADC #$07                ; $12:B187: 69 07
AND #$F0                ; $12:B189: 29 F0
STA $29,x               ; $12:B18B: 95 29
LDA $15,x               ; $12:B18D: B5 15
ADC #$00                ; $12:B18F: 69 00
STA $15,x               ; $12:B191: 95 15
PHX                     ; $12:B193: DA
JSR CODE_12DDAB         ; $12:B194: 20 AB DD
PLX                     ; $12:B197: FA
LDA $33,x               ; $12:B198: B5 33
SEC                     ; $12:B19A: 38
SBC #$10                ; $12:B19B: E9 10
STA $33,x               ; $12:B19D: 95 33
CMP #$E0                ; $12:B19F: C9 E0
BCC CODE_12B1AB         ; $12:B1A1: 90 08
LDA $EB                 ; $12:B1A3: A5 EB
BEQ CODE_12B1AB         ; $12:B1A5: F0 04
JSR CODE_12A83B         ; $12:B1A7: 20 3B A8
RTS                     ; $12:B1AA: 60

CODE_12B1AB:
LDA #$10                ; $12:B1AB: A9 10
STA $0453,x             ; $12:B1AD: 9D 53 04
LDA #$10                ; $12:B1B0: A9 10
STA $1DE0               ; $12:B1B2: 8D E0 1D
INC $B1,x               ; $12:B1B5: F6 B1
LDA #$3C                ; $12:B1B7: A9 3C
STA $90,x               ; $12:B1B9: 95 90
PHX                     ; $12:B1BB: DA
LDX #$05                ; $12:B1BC: A2 05

CODE_12B1BE:
LDA.l DATA_119BAE,x     ; $12:B1BE: BF AE 9B 11
CMP $00                 ; $12:B1C2: C5 00
BEQ CODE_12B1CC         ; $12:B1C4: F0 06
DEX                     ; $12:B1C6: CA
BPL CODE_12B1BE         ; $12:B1C7: 10 F5
PLX                     ; $12:B1C9: FA
BRA CODE_12B1D2         ; $12:B1CA: 80 06

CODE_12B1CC:
PLX                     ; $12:B1CC: FA
LDA #$05                ; $12:B1CD: A9 05
STA $0051,x             ; $12:B1CF: 9D 51 00

CODE_12B1D2:
JSR CODE_129F7A         ; $12:B1D2: 20 7A 9F
LDA #$10                ; $12:B1D5: A9 10
STA $0594               ; $12:B1D7: 8D 94 05
LDA $EB                 ; $12:B1DA: A5 EB
BNE CODE_12B1E1         ; $12:B1DC: D0 03
JSR CODE_12A83B         ; $12:B1DE: 20 3B A8

CODE_12B1E1:
JSR CODE_12B335         ; $12:B1E1: 20 35 B3
BMI CODE_12B20D         ; $12:B1E4: 30 27
LDY $00                 ; $12:B1E6: A4 00
LDA $29,x               ; $12:B1E8: B5 29
STA $0029,y             ; $12:B1EA: 99 29 00
LDA $15,x               ; $12:B1ED: B5 15
STA $0015,y             ; $12:B1EF: 99 15 00
LDA #$41                ; $12:B1F2: A9 41
STA $0065,y             ; $12:B1F4: 99 65 00
TYA                     ; $12:B1F7: 98
TAX                     ; $12:B1F8: AA

CODE_12B1F9:
LDA $65,x               ; $12:B1F9: B5 65
AND #$FC                ; $12:B1FB: 29 FC
ORA #$01                ; $12:B1FD: 09 01
STA $65,x               ; $12:B1FF: 95 65
LDA #$05                ; $12:B201: A9 05
STA $51,x               ; $12:B203: 95 51
STA $9F,x               ; $12:B205: 95 9F
LDA #$1F                ; $12:B207: A9 1F
STA $86,x               ; $12:B209: 95 86
LDX $12                 ; $12:B20B: A6 12

CODE_12B20D:
RTS                     ; $12:B20D: 60

CODE_12B20E:
LDA $79,x               ; $12:B20E: B5 79
BNE CODE_12B21E         ; $12:B210: D0 0C
LDY #$05                ; $12:B212: A0 05

CODE_12B214:
LDA $0090,y             ; $12:B214: B9 90 00
CMP #$1C                ; $12:B217: C9 1C
BEQ CODE_12B225         ; $12:B219: F0 0A
DEY                     ; $12:B21B: 88
BPL CODE_12B214         ; $12:B21C: 10 F6

CODE_12B21E:
LDA #$01                ; $12:B21E: A9 01
STA $79,x               ; $12:B220: 95 79
JMP CODE_129F7A         ; $12:B222: 4C 7A 9F

CODE_12B225:
LDA $0015,y             ; $12:B225: B9 15 00
CMP $15,x               ; $12:B228: D5 15
BNE CODE_12B21E         ; $12:B22A: D0 F2
LDA $0702,y             ; $12:B22C: B9 02 07
BPL CODE_12B236         ; $12:B22F: 10 05
LDA #$00                ; $12:B231: A9 00
STA $0702,y             ; $12:B233: 99 02 07

CODE_12B236:
PHX                     ; $12:B236: DA
LDX #$08                ; $12:B237: A2 08
LDA $006F,y             ; $12:B239: B9 6F 00
CMP #$01                ; $12:B23C: C9 01
BEQ CODE_12B242         ; $12:B23E: F0 02
LDX #$F8                ; $12:B240: A2 F8

CODE_12B242:
TXA                     ; $12:B242: 8A
PLX                     ; $12:B243: FA
STA $3D,x               ; $12:B244: 95 3D
LDA $0051,y             ; $12:B246: B9 51 00
CMP #$02                ; $12:B249: C9 02
BNE CODE_12B256         ; $12:B24B: D0 09
LDA $0047,y             ; $12:B24D: B9 47 00
BMI CODE_12B256         ; $12:B250: 30 04
CMP #$12                ; $12:B252: C9 12
BCS CODE_12B21E         ; $12:B254: B0 C8

CODE_12B256:
LDA $0029,y             ; $12:B256: B9 29 00
STA $29,x               ; $12:B259: 95 29
LDA $0033,y             ; $12:B25B: B9 33 00
ADC #$00                ; $12:B25E: 69 00
STA $33,x               ; $12:B260: 95 33
JSR CODE_12C1DA         ; $12:B262: 20 DA C1
LDA.w DATA_11981D,y     ; $12:B265: B9 1D 98
STA $3D,x               ; $12:B268: 95 3D
LDA #$E0                ; $12:B26A: A9 E0
STA $47,x               ; $12:B26C: 95 47
PLA                     ; $12:B26E: 68
PLA                     ; $12:B26F: 68
LDA #$07                ; $12:B270: A9 07
STA $046E,x             ; $12:B272: 9D 6E 04
RTS                     ; $12:B275: 60

CODE_12B276:
JSR CODE_129F96         ; $12:B276: 20 96 9F
LDA #$F0                ; $12:B279: A9 F0

; Init X speed = #$F0 (left).
; More convenient than BRA. (Because the zero bit is clear, anyway.)
BNE CODE_12B282         ; $12:B27B: D0 05

CODE_12B27D:
JSR CODE_129F96         ; $12:B27D: 20 96 9F
LDA #$10                ; $12:B280: A9 10

; Init X speed = #$10 (right).

CODE_12B282:
STA $3D,x               ; $12:B282: 95 3D
INC $B1,x               ; $12:B284: F6 B1
LDA $90,x               ; $12:B286: B5 90
SEC                     ; $12:B288: 38
SBC #$0B                ; $12:B289: E9 0B
TAY                     ; $12:B28B: A8
LDA $04C1               ; $12:B28C: AD C1 04
ADC.w DATA_11981F,y     ; $12:B28F: 79 1F 98
STA $29,x               ; $12:B292: 95 29
LDA $04BF               ; $12:B294: AD BF 04
ADC.w DATA_119820,y     ; $12:B297: 79 20 98
STA $15,x               ; $12:B29A: 95 15
RTS                     ; $12:B29C: 60

CODE_12B29D:
LDA $10                 ; $12:B29D: A5 10
AND #$07                ; $12:B29F: 29 07
BNE CODE_12B2A5         ; $12:B2A1: D0 02
INC $9F,x               ; $12:B2A3: F6 9F

CODE_12B2A5:
LDA $9F,x               ; $12:B2A5: B5 9F
CMP #$07                ; $12:B2A7: C9 07
BCC CODE_12B2AD         ; $12:B2A9: 90 02
STZ $9F,x               ; $12:B2AB: 74 9F

CODE_12B2AD:
JSR CODE_12BCE9         ; $12:B2AD: 20 E9 BC
LDA $B1,x               ; $12:B2B0: B5 B1
BNE CODE_12B2E0         ; $12:B2B2: D0 2C
LDA $5B,x               ; $12:B2B4: B5 5B
AND #$10                ; $12:B2B6: 29 10
BNE CODE_12B2C5         ; $12:B2B8: D0 0B
JSR CODE_12C1DA         ; $12:B2BA: 20 DA C1
LDA $0F                 ; $12:B2BD: A5 0F
ADC #$30                ; $12:B2BF: 69 30
CMP #$60                ; $12:B2C1: C9 60
BCS CODE_12B2DD         ; $12:B2C3: B0 18

CODE_12B2C5:
JSR CODE_12B335         ; $12:B2C5: 20 35 B3
BMI CODE_12B2DD         ; $12:B2C8: 30 13
LDX $00                 ; $12:B2CA: A6 00
LDA #$09                ; $12:B2CC: A9 09

; Spawn Bob-Omb.
STA $90,x               ; $12:B2CE: 95 90
LDA $33,x               ; $12:B2D0: B5 33
ADC #$10                ; $12:B2D2: 69 10
STA $33,x               ; $12:B2D4: 95 33
JSR CODE_12A01C         ; $12:B2D6: 20 1C A0
LDX $12                 ; $12:B2D9: A6 12
INC $B1,x               ; $12:B2DB: F6 B1

CODE_12B2DD:
JMP CODE_12B2E3         ; $12:B2DD: 4C E3 B2

CODE_12B2E0:
JSR CODE_12BB16         ; $12:B2E0: 20 16 BB

CODE_12B2E3:
JMP CODE_12C1EF         ; $12:B2E3: 4C EF C1

CODE_12B2E6:
JSR CODE_12B2F6         ; $12:B2E6: 20 F6 B2
ASL $65,x               ; $12:B2E9: 16 65
LDA $10                 ; $12:B2EB: A5 10
LSR A                   ; $12:B2ED: 4A
LSR A                   ; $12:B2EE: 4A
LSR A                   ; $12:B2EF: 4A
ROR $65,x               ; $12:B2F0: 76 65
RTS                     ; $12:B2F2: 60

CODE_12B2F3:
JSR CODE_12DDAB         ; $12:B2F3: 20 AB DD

CODE_12B2F6:
JSR CODE_12BB16         ; $12:B2F6: 20 16 BB
JSR CODE_12BA46         ; $12:B2F9: 20 46 BA
LDA $B1,x               ; $12:B2FC: B5 B1
ORA $042F,x             ; $12:B2FE: 1D 2F 04
BEQ CODE_12B306         ; $12:B301: F0 03
JMP CODE_12A0A7         ; $12:B303: 4C A7 A0

CODE_12B306:
LDA $47,x               ; $12:B306: B5 47
BPL CODE_12B30C         ; $12:B308: 10 02
STA $B1,x               ; $12:B30A: 95 B1

CODE_12B30C:
LDA $5B,x               ; $12:B30C: B5 5B
AND #$03                ; $12:B30E: 29 03
BEQ CODE_12B32B         ; $12:B310: F0 19
STA $B1,x               ; $12:B312: 95 B1
LDA $90,x               ; $12:B314: B5 90
CMP #$1B                ; $12:B316: C9 1B
BNE CODE_12B322         ; $12:B318: D0 08
LDA #$02                ; $12:B31A: A9 02
STA $51,x               ; $12:B31C: 95 51
INC $33,x               ; $12:B31E: F6 33
INC $33,x               ; $12:B320: F6 33

CODE_12B322:
JSR CODE_12C248         ; $12:B322: 20 48 C2
JSR CODE_12B63B         ; $12:B325: 20 3B B6
JSR CODE_12B63B         ; $12:B328: 20 3B B6

CODE_12B32B:
JSR CODE_12C1EF         ; $12:B32B: 20 EF C1
JMP CODE_12BD29         ; $12:B32E: 4C 29 BD

CODE_12B331:
LDY #$08                ; $12:B331: A0 08

; Start loop, maximum index.
BNE CODE_12B337         ; $12:B333: D0 02

; Start loop with a lower index.

CODE_12B335:
LDY #$05                ; $12:B335: A0 05

CODE_12B337:
LDA $0051,y             ; $12:B337: B9 51 00
BEQ CODE_12B340         ; $12:B33A: F0 04
DEY                     ; $12:B33C: 88
BPL CODE_12B337         ; $12:B33D: 10 F8

; Check if there's a free sprite slot somewhere.
; $51,y - 00 = free slot.
; If not, get to next index.
; Loop
; If all slots full, return.
RTS                     ; $12:B33F: 60

CODE_12B340:
LDA #$01                ; $12:B340: A9 01
STA $0051,y             ; $12:B342: 99 51 00
LSR A                   ; $12:B345: 4A
STA $049B,y             ; $12:B346: 99 9B 04
LDA #$01                ; $12:B349: A9 01
STA $0090,y             ; $12:B34B: 99 90 00
LDA $29,x               ; $12:B34E: B5 29
ADC #$05                ; $12:B350: 69 05
STA $0029,y             ; $12:B352: 99 29 00
LDA $15,x               ; $12:B355: B5 15
ADC #$00                ; $12:B357: 69 00
STA $0015,y             ; $12:B359: 99 15 00
LDA $33,x               ; $12:B35C: B5 33
STA $0033,y             ; $12:B35E: 99 33 00
LDA $1F,x               ; $12:B361: B5 1F
STA $001F,y             ; $12:B363: 99 1F 00

; Use $00 as index for new sprite.
STY $00                 ; $12:B366: 84 00
TYA                     ; $12:B368: 98
TAX                     ; $12:B369: AA
JSR CODE_129F96         ; $12:B36A: 20 96 9F
JSR CODE_12A09C         ; $12:B36D: 20 9C A0
LDX $12                 ; $12:B370: A6 12
RTS                     ; $12:B372: 60

CODE_12B373:
LDA $044A,x             ; $12:B373: BD 4A 04
BEQ CODE_12B37B         ; $12:B376: F0 03

; Phanto shake animation timer (upon takeoff)
DEC $044A,x             ; $12:B378: DE 4A 04

; Draw GFX?

CODE_12B37B:
JSR CODE_12BD29         ; $12:B37B: 20 29 BD

; Y = #$01.
LDY #$01                ; $12:B37E: A0 01
LDA $9C                 ; $12:B380: A5 9C

; Check if player is holding something.
; If not, branch.
BEQ CODE_12B39E         ; $12:B382: F0 1A

; Get index of carried sprite.
LDX $042D               ; $12:B384: AE 2D 04
LDA $90,x               ; $12:B387: B5 90
LDX $12                 ; $12:B389: A6 12
CMP #$3D                ; $12:B38B: C9 3D
BCC CODE_12B39E         ; $12:B38D: 90 0F
CMP #$3E                ; $12:B38F: C9 3E

; Check if carried sprite = #$3D. (Key)
; (Get Phanto's index back again)
;
; If not, branch.
; (Why not simply use BNE?)
BCS CODE_12B39E         ; $12:B391: B0 0B
LDA $0595               ; $12:B393: AD 95 05
CMP #$A0                ; $12:B396: C9 A0
BNE CODE_12B39D         ; $12:B398: D0 03

; Decrease takeoff timer until it hits 0
DEC $0595               ; $12:B39A: CE 95 05

CODE_12B39D:
DEY                     ; $12:B39D: 88

CODE_12B39E:
LDA $1F,x               ; $12:B39E: B5 1F
CLC                     ; $12:B3A0: 18
ADC #$01                ; $12:B3A1: 69 01
STA $05                 ; $12:B3A3: 85 05
LDA $32                 ; $12:B3A5: A5 32
CMP $33,x               ; $12:B3A7: D5 33
LDX $1E                 ; $12:B3A9: A6 1E
INX                     ; $12:B3AB: E8
TXA                     ; $12:B3AC: 8A
LDX $12                 ; $12:B3AD: A6 12
SBC $05                 ; $12:B3AF: E5 05
BPL CODE_12B3B4         ; $12:B3B1: 10 01
INY                     ; $12:B3B3: C8

CODE_12B3B4:
LDA $47,x               ; $12:B3B4: B5 47

; Phanto maximum Y speed
CMP.w DATA_119829,y     ; $12:B3B6: D9 29 98
BEQ CODE_12B3C1         ; $12:B3B9: F0 06
CLC                     ; $12:B3BB: 18

; Phanto acceleration rate
ADC.w DATA_119826,y     ; $12:B3BC: 79 26 98
STA $47,x               ; $12:B3BF: 95 47

CODE_12B3C1:
LDA $0480,x             ; $12:B3C1: BD 80 04
CLC                     ; $12:B3C4: 18
ADC #$A0                ; $12:B3C5: 69 A0
STA $0480,x             ; $12:B3C7: 9D 80 04
BCC CODE_12B3E2         ; $12:B3CA: 90 16
LDA $0477,x             ; $12:B3CC: BD 77 04
AND #$01                ; $12:B3CF: 29 01
TAY                     ; $12:B3D1: A8
LDA $3D,x               ; $12:B3D2: B5 3D
CLC                     ; $12:B3D4: 18
ADC.w DATA_119822,y     ; $12:B3D5: 79 22 98
STA $3D,x               ; $12:B3D8: 95 3D
CMP.w DATA_119824,y     ; $12:B3DA: D9 24 98
BNE CODE_12B3E2         ; $12:B3DD: D0 03
INC $0477,x             ; $12:B3DF: FE 77 04

CODE_12B3E2:
LDA $EB                 ; $12:B3E2: A5 EB
BEQ CODE_12B3EB         ; $12:B3E4: F0 05
LDA $3C                 ; $12:B3E6: A5 3C
STA $04CD,x             ; $12:B3E8: 9D CD 04

CODE_12B3EB:
LDY $0595               ; $12:B3EB: AC 95 05
BEQ CODE_12B417         ; $12:B3EE: F0 27
CPY #$A0                ; $12:B3F0: C0 A0
BEQ CODE_12B40E         ; $12:B3F2: F0 1A
CPY #$80                ; $12:B3F4: C0 80
BNE CODE_12B3FD         ; $12:B3F6: D0 05
LDA #$40                ; $12:B3F8: A9 40
STA $045C,x             ; $12:B3FA: 9D 5C 04

CODE_12B3FD:
CPY #$40                ; $12:B3FD: C0 40
BNE CODE_12B40B         ; $12:B3FF: D0 0A
LDA #$40                ; $12:B401: A9 40
STA $044A,x             ; $12:B403: 9D 4A 04
LDA #$2E                ; $12:B406: A9 2E
STA $1DE0               ; $12:B408: 8D E0 1D

CODE_12B40B:
DEC $0595               ; $12:B40B: CE 95 05

CODE_12B40E:
LDA #$00                ; $12:B40E: A9 00
STA $04CD,x             ; $12:B410: 9D CD 04
STA $3D,x               ; $12:B413: 95 3D
STA $47,x               ; $12:B415: 95 47

CODE_12B417:
JMP CODE_12B497         ; $12:B417: 4C 97 B4

CODE_12B41A:
LDA $5B,x               ; $12:B41A: B5 5B
AND #$04                ; $12:B41C: 29 04
BEQ CODE_12B46B         ; $12:B41E: F0 4B
LDA $042F,x             ; $12:B420: BD 2F 04
BNE CODE_12B427         ; $12:B423: D0 02
STA $3D,x               ; $12:B425: 95 3D

CODE_12B427:
TXA                     ; $12:B427: 8A
ASL A                   ; $12:B428: 0A
ASL A                   ; $12:B429: 0A
ASL A                   ; $12:B42A: 0A
ADC $10                 ; $12:B42B: 65 10
AND #$3F                ; $12:B42D: 29 3F
BNE CODE_12B46B         ; $12:B42F: D0 3A
LDA $9F,x               ; $12:B431: B5 9F
AND #$C0                ; $12:B433: 29 C0
ASL A                   ; $12:B435: 0A
ROL A                   ; $12:B436: 2A
ROL A                   ; $12:B437: 2A
TAY                     ; $12:B438: A8
LDA.w DATA_11982C,y     ; $12:B439: B9 2C 98
BNE CODE_12B460         ; $12:B43C: D0 22

CODE_12B43E:
LDA $5B,x               ; $12:B43E: B5 5B
AND #$04                ; $12:B440: 29 04
BEQ CODE_12B46B         ; $12:B442: F0 27
LDA $32                 ; $12:B444: A5 32
CLC                     ; $12:B446: 18
ADC #$10                ; $12:B447: 69 10
CMP $33,x               ; $12:B449: D5 33
BNE CODE_12B46B         ; $12:B44B: D0 1E
JSR CODE_12C1DA         ; $12:B44D: 20 DA C1
INY                     ; $12:B450: C8
TYA                     ; $12:B451: 98
CMP $6F,x               ; $12:B452: D5 6F
BNE CODE_12B46B         ; $12:B454: D0 15
LDA $0F                 ; $12:B456: A5 0F
ADC #$28                ; $12:B458: 69 28
CMP #$50                ; $12:B45A: C9 50
BCS CODE_12B46B         ; $12:B45C: B0 0D
LDA #$D8                ; $12:B45E: A9 D8

CODE_12B460:
STA $47,x               ; $12:B460: 95 47
LDA $9F,x               ; $12:B462: B5 9F
AND #$F0                ; $12:B464: 29 F0
STA $9F,x               ; $12:B466: 95 9F
JSR CODE_12C1EA         ; $12:B468: 20 EA C1

CODE_12B46B:
JMP CODE_12B4D1         ; $12:B46B: 4C D1 B4

CODE_12B46E:
LDA $0628               ; $12:B46E: AD 28 06
CMP #$02                ; $12:B471: C9 02
BNE CODE_12B476         ; $12:B473: D0 01
RTS                     ; $12:B475: 60

CODE_12B476:
JSR CODE_12BB16         ; $12:B476: 20 16 BB
JSR CODE_12BD29         ; $12:B479: 20 29 BD
INC $9F,x               ; $12:B47C: F6 9F
JSR CODE_12BA4F         ; $12:B47E: 20 4F BA
JSR CODE_12AA43         ; $12:B481: 20 43 AA
JSR CODE_12BA46         ; $12:B484: 20 46 BA
LDA $47,x               ; $12:B487: B5 47
BEQ CODE_12B49D         ; $12:B489: F0 12
BPL CODE_12B490         ; $12:B48B: 10 03
STA $042F,x             ; $12:B48D: 9D 2F 04

CODE_12B490:
LDA $10                 ; $12:B490: A5 10
LSR A                   ; $12:B492: 4A
BCC CODE_12B497         ; $12:B493: 90 02
DEC $47,x               ; $12:B495: D6 47

CODE_12B497:
JSR CODE_12C1EF         ; $12:B497: 20 EF C1
JMP CODE_12C1EA         ; $12:B49A: 4C EA C1

CODE_12B49D:
JSR CODE_12C1EF         ; $12:B49D: 20 EF C1
JMP CODE_12B497         ; $12:B4A0: 4C 97 B4

CODE_12B4A3:
LDY $86,x               ; $12:B4A3: B4 86
CPY #$3A                ; $12:B4A5: C0 3A
BCS CODE_12B4D1         ; $12:B4A7: B0 28
LDA $5B,x               ; $12:B4A9: B5 5B
AND #$04                ; $12:B4AB: 29 04
BEQ CODE_12B4B1         ; $12:B4AD: F0 02
STZ $3D,x               ; $12:B4AF: 74 3D

CODE_12B4B1:
DEC $9F,x               ; $12:B4B1: D6 9F
TYA                     ; $12:B4B3: 98
BNE CODE_12B4C1         ; $12:B4B4: D0 0B
LDA $A8,x               ; $12:B4B6: B5 A8
BEQ CODE_12B4BE         ; $12:B4B8: F0 04
STY $9C                 ; $12:B4BA: 84 9C
STY $A8,x               ; $12:B4BC: 94 A8

CODE_12B4BE:
JMP CODE_12B120         ; $12:B4BE: 4C 20 B1

CODE_12B4C1:
CMP #$30                ; $12:B4C1: C9 30
BCS CODE_12B4D1         ; $12:B4C3: B0 0C
LSR A                   ; $12:B4C5: 4A
BCC CODE_12B4D1         ; $12:B4C6: 90 09
LDA $10                 ; $12:B4C8: A5 10
STA $045C,x             ; $12:B4CA: 9D 5C 04
LDA #$01                ; $12:B4CD: A9 01
STA $9F,x               ; $12:B4CF: 95 9F

CODE_12B4D1:
JSR CODE_12DDAB         ; $12:B4D1: 20 AB DD

CODE_12B4D4:
JSR CODE_12BB16         ; $12:B4D4: 20 16 BB
LDA $0480,x             ; $12:B4D7: BD 80 04
BEQ CODE_12B4F8         ; $12:B4DA: F0 1C
LDA $5B,x               ; $12:B4DC: B5 5B
AND #$08                ; $12:B4DE: 29 08
BEQ CODE_12B4E5         ; $12:B4E0: F0 03
JMP CODE_12A83B         ; $12:B4E2: 4C 3B A8

CODE_12B4E5:
DEC $0480,x             ; $12:B4E5: DE 80 04
INC $86,x               ; $12:B4E8: F6 86

CODE_12B4EA:
LDA $65,x               ; $12:B4EA: B5 65
AND #$EF                ; $12:B4EC: 29 EF
ORA #$20                ; $12:B4EE: 09 20
STA $65,x               ; $12:B4F0: 95 65
JSR CODE_12C1EA         ; $12:B4F2: 20 EA C1
JMP CODE_12BD29         ; $12:B4F5: 4C 29 BD

CODE_12B4F8:
LDA $5B,x               ; $12:B4F8: B5 5B
AND $6F,x               ; $12:B4FA: 35 6F
BEQ CODE_12B50C         ; $12:B4FC: F0 0E
JSR CODE_12C248         ; $12:B4FE: 20 48 C2
LDA $042F,x             ; $12:B501: BD 2F 04
BEQ CODE_12B50C         ; $12:B504: F0 06
JSR CODE_12B63B         ; $12:B506: 20 3B B6
JSR CODE_12B63B         ; $12:B509: 20 3B B6

CODE_12B50C:
INC $9F,x               ; $12:B50C: F6 9F
JSR CODE_12BA46         ; $12:B50E: 20 46 BA
JSR CODE_12BD29         ; $12:B511: 20 29 BD
LDA $90,x               ; $12:B514: B5 90
CMP #$06                ; $12:B516: C9 06
BNE CODE_12B521         ; $12:B518: D0 07
LDA $042F,x             ; $12:B51A: BD 2F 04
BNE CODE_12B521         ; $12:B51D: D0 02
STA $3D,x               ; $12:B51F: 95 3D

CODE_12B521:
JSR CODE_12A0AA         ; $12:B521: 20 AA A0
LDA $5B,x               ; $12:B524: B5 5B
LDY $47,x               ; $12:B526: B4 47
BPL CODE_12B58E         ; $12:B528: 10 64
AND #$08                ; $12:B52A: 29 08
BEQ CODE_12B533         ; $12:B52C: F0 05
LDA #$00                ; $12:B52E: A9 00
STA $47,x               ; $12:B530: 95 47
RTS                     ; $12:B532: 60

CODE_12B533:
LDA $042F,x             ; $12:B533: BD 2F 04
BNE CODE_12B571         ; $12:B536: D0 39
LDA $90,x               ; $12:B538: B5 90
CMP #$02                ; $12:B53A: C9 02
BNE CODE_12B55F         ; $12:B53C: D0 21
DEC $9F,x               ; $12:B53E: D6 9F
LDA $47,x               ; $12:B540: B5 47
BMI CODE_12B548         ; $12:B542: 30 04
STZ $9F,x               ; $12:B544: 74 9F
BRA CODE_12B573         ; $12:B546: 80 2B

CODE_12B548:
LDY #$03                ; $12:B548: A0 03
LDA $79,x               ; $12:B54A: B5 79
AND #$03                ; $12:B54C: 29 03
BNE CODE_12B552         ; $12:B54E: D0 02
LDY #$01                ; $12:B550: A0 01

CODE_12B552:
TYA                     ; $12:B552: 98
AND $10                 ; $12:B553: 25 10
BNE CODE_12B573         ; $12:B555: D0 1C
LDA $9F,x               ; $12:B557: B5 9F
EOR #$08                ; $12:B559: 49 08
STA $9F,x               ; $12:B55B: 95 9F
BRA CODE_12B573         ; $12:B55D: 80 14

CODE_12B55F:
CMP #$06                ; $12:B55F: C9 06
BNE CODE_12B571         ; $12:B561: D0 0E
LDA $47,x               ; $12:B563: B5 47
CMP #$FE                ; $12:B565: C9 FE
BNE CODE_12B571         ; $12:B567: D0 08
LDA $0587               ; $12:B569: AD 87 05
BPL CODE_12B571         ; $12:B56C: 10 03
JSR CODE_12B676         ; $12:B56E: 20 76 B6

CODE_12B571:
DEC $9F,x               ; $12:B571: D6 9F

CODE_12B573:
LDA $90,x               ; $12:B573: B5 90
CMP #$07                ; $12:B575: C9 07
BEQ CODE_12B57D         ; $12:B577: F0 04
CMP #$03                ; $12:B579: C9 03
BNE CODE_12B58D         ; $12:B57B: D0 10

CODE_12B57D:
LDA $042F,x             ; $12:B57D: BD 2F 04
BNE CODE_12B58D         ; $12:B580: D0 0B
LDA $0477,x             ; $12:B582: BD 77 04
BNE CODE_12B58D         ; $12:B585: D0 06
INC $0477,x             ; $12:B587: FE 77 04
JMP CODE_12C248         ; $12:B58A: 4C 48 C2

CODE_12B58D:
RTS                     ; $12:B58D: 60

CODE_12B58E:
AND #$04                ; $12:B58E: 29 04
BEQ CODE_12B533         ; $12:B590: F0 A1
LDA #$00                ; $12:B592: A9 00
STA $0477,x             ; $12:B594: 9D 77 04
LDY $90,x               ; $12:B597: B4 90
CPY #$02                ; $12:B599: C0 02
BNE CODE_12B5B3         ; $12:B59B: D0 16
LDA #$3F                ; $12:B59D: A9 3F
JSR CODE_12B624         ; $12:B59F: 20 24 B6
INC $79,x               ; $12:B5A2: F6 79
LDY #$F0                ; $12:B5A4: A0 F0
LDA $79,x               ; $12:B5A6: B5 79
AND #$03                ; $12:B5A8: 29 03
BNE CODE_12B5AE         ; $12:B5AA: D0 02
LDY #$E0                ; $12:B5AC: A0 E0

CODE_12B5AE:
STY $47,x               ; $12:B5AE: 94 47
JMP CODE_12C1EA         ; $12:B5B0: 4C EA C1

CODE_12B5B3:
LDA #$1F                ; $12:B5B3: A9 1F
CPY #$09                ; $12:B5B5: C0 09
BEQ CODE_12B624         ; $12:B5B7: F0 6B
CPY #$29                ; $12:B5B9: C0 29
BEQ CODE_12B624         ; $12:B5BB: F0 67
LDA #$3F                ; $12:B5BD: A9 3F
CPY #$0D                ; $12:B5BF: C0 0D
BEQ CODE_12B624         ; $12:B5C1: F0 61
LDA #$7F                ; $12:B5C3: A9 7F
CPY #$05                ; $12:B5C5: C0 05
BEQ CODE_12B5ED         ; $12:B5C7: F0 24
CPY #$05                ; $12:B5C9: C0 05
BEQ CODE_12B5ED         ; $12:B5CB: F0 20
CPY #$07                ; $12:B5CD: C0 07
BEQ CODE_12B5ED         ; $12:B5CF: F0 1C
CPY #$06                ; $12:B5D1: C0 06
BNE CODE_12B628         ; $12:B5D3: D0 53
LDA $042F,x             ; $12:B5D5: BD 2F 04
BNE CODE_12B628         ; $12:B5D8: D0 4E
JSR CODE_12C1DA         ; $12:B5DA: 20 DA C1
INY                     ; $12:B5DD: C8
STY $6F,x               ; $12:B5DE: 94 6F
LDA $9F,x               ; $12:B5E0: B5 9F
AND #$3F                ; $12:B5E2: 29 3F
BNE CODE_12B5ED         ; $12:B5E4: D0 07
LDA #$E8                ; $12:B5E6: A9 E8
STA $47,x               ; $12:B5E8: 95 47
JMP CODE_12C1EA         ; $12:B5EA: 4C EA C1

CODE_12B5ED:
LDA $044A,x             ; $12:B5ED: BD 4A 04
BEQ CODE_12B5FF         ; $12:B5F0: F0 0D
DEC $9F,x               ; $12:B5F2: D6 9F
DEC $044A,x             ; $12:B5F4: DE 4A 04
BNE CODE_12B5FF         ; $12:B5F7: D0 06
JSR CODE_12B676         ; $12:B5F9: 20 76 B6
JMP CODE_12B646         ; $12:B5FC: 4C 46 B6

CODE_12B5FF:
TXA                     ; $12:B5FF: 8A
ASL A                   ; $12:B600: 0A
ASL A                   ; $12:B601: 0A
ASL A                   ; $12:B602: 0A
ADC $10                 ; $12:B603: 65 10
ASL A                   ; $12:B605: 0A
BNE CODE_12B622         ; $12:B606: D0 1A
LDA $90,x               ; $12:B608: B5 90
CMP #$06                ; $12:B60A: C9 06
BNE CODE_12B614         ; $12:B60C: D0 06
JSR CODE_12B676         ; $12:B60E: 20 76 B6
JMP CODE_12B655         ; $12:B611: 4C 55 B6

CODE_12B614:
LDA $33,x               ; $12:B614: B5 33
SEC                     ; $12:B616: 38
SBC #$10                ; $12:B617: E9 10
CMP $32                 ; $12:B619: C5 32
BNE CODE_12B622         ; $12:B61B: D0 05
LDA #$30                ; $12:B61D: A9 30
STA $044A,x             ; $12:B61F: 9D 4A 04

CODE_12B622:
LDA #$7F                ; $12:B622: A9 7F

CODE_12B624:
AND $9F,x               ; $12:B624: 35 9F
BEQ CODE_12B643         ; $12:B626: F0 1B

CODE_12B628:
LDA $042F,x             ; $12:B628: BD 2F 04
BEQ CODE_12B646         ; $12:B62B: F0 19
LDA $47,x               ; $12:B62D: B5 47
CMP #$1A                ; $12:B62F: C9 1A
BCC CODE_12B643         ; $12:B631: 90 10
LDA #$F0                ; $12:B633: A9 F0

CODE_12B635:
JSR CODE_12B65B         ; $12:B635: 20 5B B6
JSR CODE_12C1EA         ; $12:B638: 20 EA C1

CODE_12B63B:
LDA $3D,x               ; $12:B63B: B5 3D
STA $00                 ; $12:B63D: 85 00
ASL A                   ; $12:B63F: 0A
ROR $3D,x               ; $12:B640: 76 3D
RTS                     ; $12:B642: 60

CODE_12B643:
JSR CODE_129F98         ; $12:B643: 20 98 9F

CODE_12B646:
LDA $90,x               ; $12:B646: B5 90
CMP #$01                ; $12:B648: C9 01
BNE CODE_12B655         ; $12:B64A: D0 09
LDA $47,x               ; $12:B64C: B5 47
CMP #$04                ; $12:B64E: C9 04
BCC CODE_12B655         ; $12:B650: 90 03
JSR CODE_129F98         ; $12:B652: 20 98 9F

CODE_12B655:
ASL $65,x               ; $12:B655: 16 65
LSR $65,x               ; $12:B657: 56 65

CODE_12B659:
LDA #$00                ; $12:B659: A9 00

CODE_12B65B:
STA $47,x               ; $12:B65B: 95 47
LDA $90,x               ; $12:B65D: B5 90
CMP #$32                ; $12:B65F: C9 32
LDA $33,x               ; $12:B661: B5 33
BCS CODE_12B66B         ; $12:B663: B0 06
ADC #$08                ; $12:B665: 69 08
BCC CODE_12B66B         ; $12:B667: 90 02
INC $1F,x               ; $12:B669: F6 1F

CODE_12B66B:
AND #$F0                ; $12:B66B: 29 F0
STA $33,x               ; $12:B66D: 95 33
RTS                     ; $12:B66F: 60

CODE_12B670:
JSR CODE_12B331         ; $12:B670: 20 31 B3
JMP CODE_12B679         ; $12:B673: 4C 79 B6

CODE_12B676:
JSR CODE_12B335         ; $12:B676: 20 35 B3

CODE_12B679:
BMI CODE_12B691         ; $12:B679: 30 16
LDY $6F,x               ; $12:B67B: B4 6F
LDX $00                 ; $12:B67D: A6 00
LDA.w DATA_11982F,y     ; $12:B67F: B9 2F 98

; Set X speed.
STA $3D,x               ; $12:B682: 95 3D
LDA #$00                ; $12:B684: A9 00

; No Y speed.
STA $47,x               ; $12:B686: 95 47
LDA #$1B                ; $12:B688: A9 1B

; Spawn Bullet.
STA $90,x               ; $12:B68A: 95 90
JSR CODE_129F7A         ; $12:B68C: 20 7A 9F
LDX $12                 ; $12:B68F: A6 12

CODE_12B691:
RTS                     ; $12:B691: 60

CODE_12B692:
LDA $9D                 ; $12:B692: A5 9D
EOR #$01                ; $12:B694: 49 01
TAY                     ; $12:B696: A8
INY                     ; $12:B697: C8
STY $6F,x               ; $12:B698: 94 6F
LDA $28                 ; $12:B69A: A5 28
STA $29,x               ; $12:B69C: 95 29
LDA $14                 ; $12:B69E: A5 14
STA $15,x               ; $12:B6A0: 95 15
LDA $1E                 ; $12:B6A2: A5 1E
STA $07                 ; $12:B6A4: 85 07
LDA $32                 ; $12:B6A6: A5 32
LDY $0489,x             ; $12:B6A8: BC 89 04
CPY #$03                ; $12:B6AB: C0 03
BEQ CODE_12B6B9         ; $12:B6AD: F0 0A
CPY #$02                ; $12:B6AF: C0 02
BEQ CODE_12B6B9         ; $12:B6B1: F0 06
SBC #$0E                ; $12:B6B3: E9 0E
BCS CODE_12B6B9         ; $12:B6B5: B0 02
DEC $07                 ; $12:B6B7: C6 07

CODE_12B6B9:
LDY $C7                 ; $12:B6B9: A4 C7
CPY #$04                ; $12:B6BB: C0 04
CLC                     ; $12:B6BD: 18
BNE CODE_12B6D0         ; $12:B6BE: D0 10
LDY $06C2               ; $12:B6C0: AC C2 06
CPY #$01                ; $12:B6C3: C0 01
LDY $8F                 ; $12:B6C5: A4 8F
BCC CODE_12B6CD         ; $12:B6C7: 90 04
INY                     ; $12:B6C9: C8
INY                     ; $12:B6CA: C8
INY                     ; $12:B6CB: C8
INY                     ; $12:B6CC: C8

CODE_12B6CD:
ADC.w DATA_119832,y     ; $12:B6CD: 79 32 98

CODE_12B6D0:
PHP                     ; $12:B6D0: 08
LDY $A8,x               ; $12:B6D1: B4 A8
CLC                     ; $12:B6D3: 18
LDX $06C2               ; $12:B6D4: AE C2 06
BEQ CODE_12B6E0         ; $12:B6D7: F0 07
INY                     ; $12:B6D9: C8
INY                     ; $12:B6DA: C8
INY                     ; $12:B6DB: C8
INY                     ; $12:B6DC: C8
INY                     ; $12:B6DD: C8
INY                     ; $12:B6DE: C8
INY                     ; $12:B6DF: C8

CODE_12B6E0:
ADC $1EFF,y             ; $12:B6E0: 79 FF 1E
LDX $12                 ; $12:B6E3: A6 12
STA $33,x               ; $12:B6E5: 95 33
LDA $07                 ; $12:B6E7: A5 07
ADC $1F0D,y             ; $12:B6E9: 79 0D 1F
PLP                     ; $12:B6EC: 28
ADC #$00                ; $12:B6ED: 69 00
STA $1F,x               ; $12:B6EF: 95 1F
LDY $A8,x               ; $12:B6F1: B4 A8
CPY #$05                ; $12:B6F3: C0 05
BCS CODE_12B70D         ; $12:B6F5: B0 16
LDA $90,x               ; $12:B6F7: B5 90
CMP #$22                ; $12:B6F9: C9 22
BEQ CODE_12B70D         ; $12:B6FB: F0 10
CMP #$32                ; $12:B6FD: C9 32
BCS CODE_12B70D         ; $12:B6FF: B0 0C
LDA $0438,x             ; $12:B701: BD 38 04
BNE CODE_12B708         ; $12:B704: D0 02
INC $9F,x               ; $12:B706: F6 9F

CODE_12B708:
ASL $65,x               ; $12:B708: 16 65
SEC                     ; $12:B70A: 38
ROR $65,x               ; $12:B70B: 76 65

CODE_12B70D:
JSR CODE_12BB60         ; $12:B70D: 20 60 BB
JSL CODE_139210         ; $12:B710: 22 10 92 13
JMP CODE_12BD29         ; $12:B714: 4C 29 BD

CODE_12B717:
JSR CODE_12B71B         ; $12:B717: 20 1B B7

; Wrapper.

CODE_12B71A:
RTS                     ; $12:B71A: 60

CODE_12B71B:
LDA $A8,x               ; $12:B71B: B5 A8
BEQ CODE_12B724         ; $12:B71D: F0 05
PLA                     ; $12:B71F: 68
PLA                     ; $12:B720: 68
JMP CODE_12B692         ; $12:B721: 4C 92 B6

CODE_12B724:
JSR CODE_12BD29         ; $12:B724: 20 29 BD
LDA $90,x               ; $12:B727: B5 90
CMP #$3A                ; $12:B729: C9 3A

; Check if sprite = POW
; (#$3A)
; If that is the case, branch. Otherwise it's a mushroom block.
BCS CODE_12B732         ; $12:B72B: B0 05
JSR CODE_12DDA7         ; $12:B72D: 20 A7 DD
BRA CODE_12B735         ; $12:B730: 80 03

CODE_12B732:
JSR CODE_12DDAB         ; $12:B732: 20 AB DD

CODE_12B735:
LDA $042F,x             ; $12:B735: BD 2F 04
BEQ CODE_12B71A         ; $12:B738: F0 E0
JSR CODE_12A0AA         ; $12:B73A: 20 AA A0
PLA                     ; $12:B73D: 68
PLA                     ; $12:B73E: 68
LDA $5B,x               ; $12:B73F: B5 5B
PHA                     ; $12:B741: 48
AND #$03                ; $12:B742: 29 03
BEQ CODE_12B75C         ; $12:B744: F0 16
LDA #$00                ; $12:B746: A9 00
STA $3D,x               ; $12:B748: 95 3D
LDA $29,x               ; $12:B74A: B5 29
ADC #$08                ; $12:B74C: 69 08
AND #$F0                ; $12:B74E: 29 F0
STA $29,x               ; $12:B750: 95 29
LDA $EB                 ; $12:B752: A5 EB
BEQ CODE_12B75C         ; $12:B754: F0 06
LDA $15,x               ; $12:B756: B5 15
ADC #$00                ; $12:B758: 69 00
STA $15,x               ; $12:B75A: 95 15

CODE_12B75C:
PLA                     ; $12:B75C: 68
LDY $47,x               ; $12:B75D: B4 47
BMI CODE_12B7B9         ; $12:B75F: 30 58
AND #$04                ; $12:B761: 29 04
BEQ CODE_12B7B9         ; $12:B763: F0 54
LDA $0E                 ; $12:B765: A5 0E
CMP #$26                ; $12:B767: C9 26
BNE CODE_12B774         ; $12:B769: D0 09
LDA $3D,x               ; $12:B76B: B5 3D
BEQ CODE_12B774         ; $12:B76D: F0 05
LDA #$14                ; $12:B76F: A9 14
JMP CODE_12B65B         ; $12:B771: 4C 5B B6

CODE_12B774:
LDA $90,x               ; $12:B774: B5 90
CMP #$3A                ; $12:B776: C9 3A

; Check if sprite = POW
; If that is the case, kill sprites and make a sound effect.
; Otherwise it's a mushroom block.
BNE CODE_12B789         ; $12:B778: D0 0F
LDA #$20                ; $12:B77A: A9 20

; Shake screen and kill all enemies on-screen for #$20 frames.
STA $04C5               ; $12:B77C: 8D C5 04
LDA #$09                ; $12:B77F: A9 09

; POW SFX.
STA $1DE3               ; $12:B781: 8D E3 1D
LDA #$08                ; $12:B784: A9 08

; Disappear in two puffs of smoke.
JMP CODE_12BA3F         ; $12:B786: 4C 3F BA

CODE_12B789:
LDA $47,x               ; $12:B789: B5 47
CMP #$16                ; $12:B78B: C9 16

; If Y speed of mushroom block is too great (=> #$16)...
;
; branch. Don't lock block in place yet.
BCS CODE_12B7A5         ; $12:B78D: B0 16
LDA $3D,x               ; $12:B78F: B5 3D
BPL CODE_12B796         ; $12:B791: 10 03
EOR #$FF                ; $12:B793: 49 FF
INC A                   ; $12:B795: 1A

CODE_12B796:
CMP #$30                ; $12:B796: C9 30
BCC CODE_12B7AD         ; $12:B798: 90 13
LDA #$2F                ; $12:B79A: A9 2F
BIT $3D,x               ; $12:B79C: 34 3D
BPL CODE_12B7A2         ; $12:B79E: 10 02
LDA #$D1                ; $12:B7A0: A9 D1

; Check if X speed of mushroom blocks is too great (=> #$30 on either sides...
;
;
;
;
; If that is not the case, branch.
; If it is, set the speed value to a value lower than #$30.
; So #$2F or #$D1, depending on the direction.

CODE_12B7A2:
STA $3D,x               ; $12:B7A2: 95 3D

; Return.
RTS                     ; $12:B7A4: 60

CODE_12B7A5:
JSR CODE_12B659         ; $12:B7A5: 20 59 B6

; New Y speed (bouncing off ground).
LDA #$F5                ; $12:B7A8: A9 F5
JMP CODE_12B635         ; $12:B7AA: 4C 35 B6

CODE_12B7AD:
JSR CODE_12B659         ; $12:B7AD: 20 59 B6
LDA $79,x               ; $12:B7B0: B5 79

; Change into the tile $79,x is holding.
; (Should be #$64.)
JSL CODE_13FA0D         ; $12:B7B2: 22 0D FA 13

; Terminate mushroom block sprite.
JMP CODE_12A83B         ; $12:B7B6: 4C 3B A8

; Return.

CODE_12B7B9:
RTS                     ; $12:B7B9: 60

CODE_12B7BA:
LDA #$04                ; $12:B7BA: A9 04
STA $0489,x             ; $12:B7BC: 9D 89 04
LDA #$02                ; $12:B7BF: A9 02
STA $6F,x               ; $12:B7C1: 95 6F
LDY $04B7               ; $12:B7C3: AC B7 04
BEQ CODE_12B7E8         ; $12:B7C6: F0 20
LDA $10                 ; $12:B7C8: A5 10
AND #$03                ; $12:B7CA: 29 03
BNE CODE_12B7E8         ; $12:B7CC: D0 1A
LDY $50                 ; $12:B7CE: A4 50
CPY #$07                ; $12:B7D0: C0 07
BEQ CODE_12B7E8         ; $12:B7D2: F0 14
LDA $04BE               ; $12:B7D4: AD BE 04
BNE CODE_12B7E8         ; $12:B7D7: D0 0F

; Decrease amount of time you stay in the dark potion room.
DEC $04B7               ; $12:B7D9: CE B7 04
BNE CODE_12B7E8         ; $12:B7DC: D0 0A
STA $0628               ; $12:B7DE: 8D 28 06
JSL CODE_14E35A         ; $12:B7E1: 22 5A E3 14
JMP CODE_12B8D9         ; $12:B7E5: 4C D9 B8

CODE_12B7E8:
LDA $0453,x             ; $12:B7E8: BD 53 04
BNE CODE_12B7B9         ; $12:B7EB: D0 CC
LDA $04B3               ; $12:B7ED: AD B3 04
BEQ CODE_12B7FA         ; $12:B7F0: F0 08
DEC $04B3               ; $12:B7F2: CE B3 04
BNE CODE_12B7FA         ; $12:B7F5: D0 03
JMP CODE_12B1F9         ; $12:B7F7: 4C F9 B1

CODE_12B7FA:
LDA $65,x               ; $12:B7FA: B5 65
ORA #$40                ; $12:B7FC: 09 40
STA $65,x               ; $12:B7FE: 95 65
LDY $04BE               ; $12:B800: AC BE 04
LDA.w DATA_11983C,y     ; $12:B803: B9 3C 98
LDY #$00                ; $12:B806: A0 00
ASL A                   ; $12:B808: 0A
BCC CODE_12B80E         ; $12:B809: 90 03
INY                     ; $12:B80B: C8
STY $6F,x               ; $12:B80C: 94 6F

CODE_12B80E:
LDA $04BE               ; $12:B80E: AD BE 04
BEQ CODE_12B844         ; $12:B811: F0 31
LDY #$F8                ; $12:B813: A0 F8
LDA $04BE               ; $12:B815: AD BE 04
CMP #$09                ; $12:B818: C9 09
BCC CODE_12B81E         ; $12:B81A: 90 02
LDY #$D8                ; $12:B81C: A0 D8

CODE_12B81E:
STY $02F6               ; $12:B81E: 8C F6 02
LDY #$01                ; $12:B821: A0 01
STY $02F7               ; $12:B823: 8C F7 02
LDA $02F6               ; $12:B826: AD F6 02
STA $02F8               ; $12:B829: 8D F8 02
LDA $02F7               ; $12:B82C: AD F7 02
STA $02F9               ; $12:B82F: 8D F9 02
LDA #$78                ; $12:B832: A9 78
JSR CODE_12BDD5         ; $12:B834: 20 D5 BD
REP #$10                ; $12:B837: C2 10
LDY $02F6               ; $12:B839: AC F6 02
LDA $0800,y             ; $12:B83C: B9 00 08
STA $0804,y             ; $12:B83F: 99 04 08
SEP #$10                ; $12:B842: E2 10

CODE_12B844:
LDY #$E0                ; $12:B844: A0 E0
LDA $02F6               ; $12:B846: AD F6 02
CMP #$D8                ; $12:B849: C9 D8
BEQ CODE_12B84F         ; $12:B84B: F0 02
LDY #$D8                ; $12:B84D: A0 D8

CODE_12B84F:
STY $02F6               ; $12:B84F: 8C F6 02
LDY #$01                ; $12:B852: A0 01
STY $02F7               ; $12:B854: 8C F7 02
LDA $04BE               ; $12:B857: AD BE 04
CMP #$19                ; $12:B85A: C9 19
BCC CODE_12B86F         ; $12:B85C: 90 11
CMP #$30                ; $12:B85E: C9 30
BNE CODE_12B867         ; $12:B860: D0 05
LDA #$10                ; $12:B862: A9 10
STA $1DE3               ; $12:B864: 8D E3 1D

CODE_12B867:
LDY #$40                ; $12:B867: A0 40
STY $02F6               ; $12:B869: 8C F6 02
STZ $02F7               ; $12:B86C: 9C F7 02

CODE_12B86F:
LDA #$74                ; $12:B86F: A9 74
LDY $0477,x             ; $12:B871: BC 77 04
BEQ CODE_12B878         ; $12:B874: F0 02
LDA #$7C                ; $12:B876: A9 7C

CODE_12B878:
JSR CODE_12B904         ; $12:B878: 20 04 B9
LDX $04BE               ; $12:B87B: AE BE 04
BEQ CODE_12B8D9         ; $12:B87E: F0 59
INC $04BE               ; $12:B880: EE BE 04
LDY $02F6               ; $12:B883: AC F6 02
LDA.w DATA_11983C,x     ; $12:B886: BD 3C 98
BMI CODE_12B8D9         ; $12:B889: 30 4E
REP #$10                ; $12:B88B: C2 10
LDY $02F6               ; $12:B88D: AC F6 02
CLC                     ; $12:B890: 18
ADC $0800,y             ; $12:B891: 79 00 08
STA $0800,y             ; $12:B894: 99 00 08
STA $0804,y             ; $12:B897: 99 04 08
STA $0808,y             ; $12:B89A: 99 08 08
STA $080C,y             ; $12:B89D: 99 0C 08
SEP #$10                ; $12:B8A0: E2 10
CPX #$30                ; $12:B8A2: E0 30
BNE CODE_12B8D9         ; $12:B8A4: D0 33
STZ $04BE               ; $12:B8A6: 9C BE 04
LDX #$08                ; $12:B8A9: A2 08

CODE_12B8AB:
LDA $90,x               ; $12:B8AB: B5 90
CMP #$3C                ; $12:B8AD: C9 3C
BNE CODE_12B8C0         ; $12:B8AF: D0 0F
STZ $90,x               ; $12:B8B1: 74 90
STZ $51,x               ; $12:B8B3: 74 51
LDY $0441,x             ; $12:B8B5: BC 41 04
BMI CODE_12B8C0         ; $12:B8B8: 30 06
LDA ($CC),y             ; $12:B8BA: B1 CC
AND #$7F                ; $12:B8BC: 29 7F
STA ($CC),y             ; $12:B8BE: 91 CC

CODE_12B8C0:
DEX                     ; $12:B8C0: CA
BPL CODE_12B8AB         ; $12:B8C1: 10 E8
LDX $12                 ; $12:B8C3: A6 12
LDA $0536               ; $12:B8C5: AD 36 05
CMP #$01                ; $12:B8C8: C9 01
BNE CODE_12B8D1         ; $12:B8CA: D0 05
INC $0627               ; $12:B8CC: EE 27 06
BNE CODE_12B8D9         ; $12:B8CF: D0 08

CODE_12B8D1:
LDA $0628               ; $12:B8D1: AD 28 06
EOR #$02                ; $12:B8D4: 49 02
STA $0628               ; $12:B8D6: 8D 28 06

CODE_12B8D9:
LDX $12                 ; $12:B8D9: A6 12
RTS                     ; $12:B8DB: 60

DATA_12B8DC:
db $A2,$B2,$A4,$B4,$A3,$B3,$A5,$B5

DATA_12B8E4:
db $A2,$B2,$8B,$9B,$A3,$B3,$A5,$B5

DATA_12B8EC:
db $00,$00,$00,$00,$08,$08,$08,$08

DATA_12B8F4:
db $00,$08,$10,$18,$00,$08,$10,$18

DATA_12B8FC:
db $22,$22,$26,$26,$22,$22,$22,$22

CODE_12B904:
AND #$08                ; $12:B904: 29 08
STA $00                 ; $12:B906: 85 00
REP #$10                ; $12:B908: C2 10
LDX #$0000              ; $12:B90A: A2 00 00
LDY $02F6               ; $12:B90D: AC F6 02
LDA #$07                ; $12:B910: A9 07
STA $02                 ; $12:B912: 85 02

CODE_12B914:
LDA $0429               ; $12:B914: AD 29 04
STA $04                 ; $12:B917: 85 04
LDA $021F               ; $12:B919: AD 1F 02
STA $05                 ; $12:B91C: 85 05
REP #$20                ; $12:B91E: C2 20
LDA.l DATA_12B8EC,x     ; $12:B920: BF EC B8 12
AND #$00FF              ; $12:B924: 29 FF 00
CLC                     ; $12:B927: 18
ADC $04                 ; $12:B928: 65 04
STZ $04                 ; $12:B92A: 64 04
AND #$FF00              ; $12:B92C: 29 00 FF
BEQ CODE_12B936         ; $12:B92F: F0 05
LDA #$0100              ; $12:B931: A9 00 01
STA $04                 ; $12:B934: 85 04

CODE_12B936:
SEP #$20                ; $12:B936: E2 20
LDA.l DATA_12B8EC,x     ; $12:B938: BF EC B8 12
CLC                     ; $12:B93C: 18
ADC $0429               ; $12:B93D: 6D 29 04
STA $0800,y             ; $12:B940: 99 00 08
LDA.l DATA_12B8F4,x     ; $12:B943: BF F4 B8 12
CLC                     ; $12:B947: 18
ADC $042C               ; $12:B948: 6D 2C 04
STA $0801,y             ; $12:B94B: 99 01 08
LDA $00                 ; $12:B94E: A5 00
BNE CODE_12B95B         ; $12:B950: D0 09
LDA.l DATA_12B8DC,x     ; $12:B952: BF DC B8 12
PHA                     ; $12:B956: 48
LDA #$22                ; $12:B957: A9 22
BRA CODE_12B964         ; $12:B959: 80 09

CODE_12B95B:
LDA.l DATA_12B8E4,x     ; $12:B95B: BF E4 B8 12
PHA                     ; $12:B95F: 48
LDA.l DATA_12B8FC,x     ; $12:B960: BF FC B8 12

CODE_12B964:
STA $0803,y             ; $12:B964: 99 03 08
PLA                     ; $12:B967: 68
STA $0802,y             ; $12:B968: 99 02 08
PHY                     ; $12:B96B: 5A
REP #$20                ; $12:B96C: C2 20
TYA                     ; $12:B96E: 98
LSR A                   ; $12:B96F: 4A
LSR A                   ; $12:B970: 4A
TAY                     ; $12:B971: A8
SEP #$20                ; $12:B972: E2 20
LDA $05                 ; $12:B974: A5 05
STA $0A20,y             ; $12:B976: 99 20 0A
PLY                     ; $12:B979: 7A
INX                     ; $12:B97A: E8
INY                     ; $12:B97B: C8
INY                     ; $12:B97C: C8
INY                     ; $12:B97D: C8
INY                     ; $12:B97E: C8
DEC $02                 ; $12:B97F: C6 02
BPL CODE_12B914         ; $12:B981: 10 91
SEP #$10                ; $12:B983: E2 10
RTS                     ; $12:B985: 60
LDA #$02                ; $12:B986: A9 02
BNE CODE_12B990         ; $12:B988: D0 06
LDA #$01                ; $12:B98A: A9 01
BNE CODE_12B990         ; $12:B98C: D0 02
LDA #$00                ; $12:B98E: A9 00

CODE_12B990:
PHA                     ; $12:B990: 48
LDY #$08                ; $12:B991: A0 08

CODE_12B993:
LDA $0051,y             ; $12:B993: B9 51 00
BEQ CODE_12B9A9         ; $12:B996: F0 11
LDA $0090,y             ; $12:B998: B9 90 00
CMP #$3C                ; $12:B99B: C9 3C
BNE CODE_12B9A9         ; $12:B99D: D0 0A
LDA #$05                ; $12:B99F: A9 05
STA $0051,y             ; $12:B9A1: 99 51 00
LDA #$20                ; $12:B9A4: A9 20
STA $0086,y             ; $12:B9A6: 99 86 00

CODE_12B9A9:
DEY                     ; $12:B9A9: 88
BPL CODE_12B993         ; $12:B9AA: 10 E7
JSR CODE_12B331         ; $12:B9AC: 20 31 B3
BMI CODE_12B9E3         ; $12:B9AF: 30 32
LDA #$00                ; $12:B9B1: A9 00
STA $04BE               ; $12:B9B3: 8D BE 04
STA $04B3               ; $12:B9B6: 8D B3 04
LDX $00                 ; $12:B9B9: A6 00
PLA                     ; $12:B9BB: 68
STA $0477,x             ; $12:B9BC: 9D 77 04
LDA #$3C                ; $12:B9BF: A9 3C
STA $90,x               ; $12:B9C1: 95 90
JSR CODE_129F7A         ; $12:B9C3: 20 7A 9F
LDA $28                 ; $12:B9C6: A5 28
ADC #$08                ; $12:B9C8: 69 08
AND #$F0                ; $12:B9CA: 29 F0
STA $29,x               ; $12:B9CC: 95 29
LDA $14                 ; $12:B9CE: A5 14
ADC #$00                ; $12:B9D0: 69 00
STA $15,x               ; $12:B9D2: 95 15
LDA $32                 ; $12:B9D4: A5 32
STA $33,x               ; $12:B9D6: 95 33
LDA $1E                 ; $12:B9D8: A5 1E
STA $1F,x               ; $12:B9DA: 95 1F
LDA #$41                ; $12:B9DC: A9 41
STA $65,x               ; $12:B9DE: 95 65
LDX $12                 ; $12:B9E0: A6 12
RTS                     ; $12:B9E2: 60

CODE_12B9E3:
PLA                     ; $12:B9E3: 68
RTS                     ; $12:B9E4: 60

DATA_12B9E5:
db $2E,$C6,$C8,$C6

CODE_12B9E9:
JSR CODE_12DDAB         ; $12:B9E9: 20 AB DD
JSR CODE_12BA46         ; $12:B9EC: 20 46 BA
LDA #$01                ; $12:B9EF: A9 01
STA $0D00,x             ; $12:B9F1: 9D 00 0D
LDA $5B,x               ; $12:B9F4: B5 5B
AND #$03                ; $12:B9F6: 29 03
BEQ CODE_12BA02         ; $12:B9F8: F0 08

CODE_12B9FA:
LDA #$0F                ; $12:B9FA: A9 0F
STA $1DE0               ; $12:B9FC: 8D E0 1D
JMP CODE_12B1F9         ; $12:B9FF: 4C F9 B1

CODE_12BA02:
LDA $5B,x               ; $12:BA02: B5 5B
AND #$04                ; $12:BA04: 29 04
BEQ CODE_12BA0B         ; $12:BA06: F0 03
JSR CODE_12B659         ; $12:BA08: 20 59 B6

CODE_12BA0B:
LDA $6F,x               ; $12:BA0B: B5 6F
PHA                     ; $12:BA0D: 48
PHX                     ; $12:BA0E: DA
LDA #$02                ; $12:BA0F: A9 02
STA $6F,x               ; $12:BA11: 95 6F
LDA $10                 ; $12:BA13: A5 10
AND #$0C                ; $12:BA15: 29 0C
LSR A                   ; $12:BA17: 4A
LSR A                   ; $12:BA18: 4A
TAX                     ; $12:BA19: AA
CPX #$03                ; $12:BA1A: E0 03
BNE CODE_12BA28         ; $12:BA1C: D0 0A
PHX                     ; $12:BA1E: DA
LDX $12                 ; $12:BA1F: A6 12
LDA $6F,x               ; $12:BA21: B5 6F
EOR #$03                ; $12:BA23: 49 03
STA $6F,x               ; $12:BA25: 95 6F
PLX                     ; $12:BA27: FA

CODE_12BA28:
LDA.l DATA_12B9E5,x     ; $12:BA28: BF E5 B9 12
PLX                     ; $12:BA2C: FA
JSR CODE_12BDD5         ; $12:BA2D: 20 D5 BD
PLA                     ; $12:BA30: 68
STA $6F,x               ; $12:BA31: 95 6F
LDY $6F,x               ; $12:BA33: B4 6F
LDA.w DATA_11986C,y     ; $12:BA35: B9 6C 98
STA $3D,x               ; $12:BA38: 95 3D
JMP CODE_12A0AA         ; $12:BA3A: 4C AA A0

CODE_12BA3D:
LDA #$03                ; $12:BA3D: A9 03

CODE_12BA3F:
STA $51,x               ; $12:BA3F: 95 51
LDA #$18                ; $12:BA41: A9 18
STA $86,x               ; $12:BA43: 95 86

CODE_12BA45:
RTS                     ; $12:BA45: 60

CODE_12BA46:
LDA $A8,x               ; $12:BA46: B5 A8
BEQ CODE_12BA45         ; $12:BA48: F0 FB
PLA                     ; $12:BA4A: 68
PLA                     ; $12:BA4B: 68
JMP CODE_12B692         ; $12:BA4C: 4C 92 B6

CODE_12BA4F:
LDA $042F,x             ; $12:BA4F: BD 2F 04
BEQ CODE_12BA63         ; $12:BA52: F0 0F
PLA                     ; $12:BA54: 68
PLA                     ; $12:BA55: 68
JMP CODE_12A0A7         ; $12:BA56: 4C A7 A0

CODE_12BA59:
JSR CODE_12AC85         ; $12:BA59: 20 85 AC
STA $0438,x             ; $12:BA5C: 9D 38 04
LDA $33,x               ; $12:BA5F: B5 33
STA $79,x               ; $12:BA61: 95 79

CODE_12BA63:
RTS                     ; $12:BA63: 60

CODE_12BA64:
ASL $65,x               ; $12:BA64: 16 65
LDA $10                 ; $12:BA66: A5 10
ASL A                   ; $12:BA68: 0A
ASL A                   ; $12:BA69: 0A
ASL A                   ; $12:BA6A: 0A
ASL A                   ; $12:BA6B: 0A
ROR $65,x               ; $12:BA6C: 76 65
LDY $B1,x               ; $12:BA6E: B4 B1
BNE CODE_12BA92         ; $12:BA70: D0 20
LDA $65,x               ; $12:BA72: B5 65
ORA #$20                ; $12:BA74: 09 20
STA $65,x               ; $12:BA76: 95 65
LDA $79,x               ; $12:BA78: B5 79
SEC                     ; $12:BA7A: 38
SBC #$0C                ; $12:BA7B: E9 0C
CMP $33,x               ; $12:BA7D: D5 33
LDA #$FE                ; $12:BA7F: A9 FE
BCC CODE_12BA8D         ; $12:BA81: 90 0A
LDA $65,x               ; $12:BA83: B5 65
AND #$DF                ; $12:BA85: 29 DF
STA $65,x               ; $12:BA87: 95 65
INC $B1,x               ; $12:BA89: F6 B1
LDA #$04                ; $12:BA8B: A9 04

CODE_12BA8D:
STA $47,x               ; $12:BA8D: 95 47
JMP CODE_12BA9A         ; $12:BA8F: 4C 9A BA

CODE_12BA92:
LDA $10                 ; $12:BA92: A5 10
AND #$07                ; $12:BA94: 29 07
BNE CODE_12BA9A         ; $12:BA96: D0 02
INC $47,x               ; $12:BA98: F6 47

CODE_12BA9A:
JSR CODE_12C1EA         ; $12:BA9A: 20 EA C1
LDA $33,x               ; $12:BA9D: B5 33
CMP #$F0                ; $12:BA9F: C9 F0
BCC CODE_12BAAB         ; $12:BAA1: 90 08
LDA #$00                ; $12:BAA3: A9 00
STA $B1,x               ; $12:BAA5: 95 B1
LDA $79,x               ; $12:BAA7: B5 79
STA $33,x               ; $12:BAA9: 95 33

CODE_12BAAB:
JMP CODE_12BD29         ; $12:BAAB: 4C 29 BD

CODE_12BAAE:
LDA #$00                ; $12:BAAE: A9 00
JSR CODE_12BAB4         ; $12:BAB0: 20 B4 BA
RTL                     ; $12:BAB3: 6B

CODE_12BAB4:
STA $00                 ; $12:BAB4: 85 00
LDX #$08                ; $12:BAB6: A2 08

CODE_12BAB8:
LDA $51,x               ; $12:BAB8: B5 51
CMP #$01                ; $12:BABA: C9 01
BNE CODE_12BB10         ; $12:BABC: D0 52
LDA $00                 ; $12:BABE: A5 00
BEQ CODE_12BB02         ; $12:BAC0: F0 40
LDA $90,x               ; $12:BAC2: B5 90
CMP #$39                ; $12:BAC4: C9 39
BEQ CODE_12BAD0         ; $12:BAC6: F0 08
CMP #$37                ; $12:BAC8: C9 37
BEQ CODE_12BAD0         ; $12:BACA: F0 04
CMP #$32                ; $12:BACC: C9 32
BCS CODE_12BB10         ; $12:BACE: B0 40

CODE_12BAD0:
LDA $9C                 ; $12:BAD0: A5 9C
BEQ CODE_12BADD         ; $12:BAD2: F0 09
CPX $042D               ; $12:BAD4: EC 2D 04
BNE CODE_12BADD         ; $12:BAD7: D0 04
LDA #$00                ; $12:BAD9: A9 00
STA $9C                 ; $12:BADB: 85 9C

CODE_12BADD:
STX $0E                 ; $12:BADD: 86 0E
JSR CODE_12B1F9         ; $12:BADF: 20 F9 B1
LDX $0E                 ; $12:BAE2: A6 0E
LDA $33,x               ; $12:BAE4: B5 33
SEC                     ; $12:BAE6: 38
SBC $CB                 ; $12:BAE7: E5 CB
STA $0797               ; $12:BAE9: 8D 97 07
LDA $1F,x               ; $12:BAEC: B5 1F
SBC $CA                 ; $12:BAEE: E5 CA
STA $0798               ; $12:BAF0: 8D 98 07
BNE CODE_12BAFC         ; $12:BAF3: D0 07
LDA $0797               ; $12:BAF5: AD 97 07
CMP #$F0                ; $12:BAF8: C9 F0
BCC CODE_12BAFF         ; $12:BAFA: 90 03

CODE_12BAFC:
STZ $0051,x             ; $12:BAFC: 9E 51 00

CODE_12BAFF:
JMP CODE_12BB10         ; $12:BAFF: 4C 10 BB

CODE_12BB02:
LDA $5B,x               ; $12:BB02: B5 5B
BEQ CODE_12BB10         ; $12:BB04: F0 0A
LDA #$D8                ; $12:BB06: A9 D8
STA $47,x               ; $12:BB08: 95 47
LDA $5B,x               ; $12:BB0A: B5 5B
ORA #$10                ; $12:BB0C: 09 10
STA $5B,x               ; $12:BB0E: 95 5B

CODE_12BB10:
DEX                     ; $12:BB10: CA
BPL CODE_12BAB8         ; $12:BB11: 10 A5
LDX $12                 ; $12:BB13: A6 12
RTS                     ; $12:BB15: 60

CODE_12BB16:
LDA $5B,x               ; $12:BB16: B5 5B
AND #$10                ; $12:BB18: 29 10
BEQ CODE_12BB5F         ; $12:BB1A: F0 43
LDA $A8,x               ; $12:BB1C: B5 A8
BEQ CODE_12BB24         ; $12:BB1E: F0 04
LDA #$00                ; $12:BB20: A9 00

; Player is not holding anything.
STA $9C                 ; $12:BB22: 85 9C

CODE_12BB24:
LDY $90,x               ; $12:BB24: B4 90
LDA.w DATA_11CC8C,y     ; $12:BB26: B9 8C CC
AND #$08                ; $12:BB29: 29 08
ASL A                   ; $12:BB2B: 0A
BNE CODE_12BB3A         ; $12:BB2C: D0 0C
LDA $1DE1               ; $12:BB2E: AD E1 1D
BNE CODE_12BB3D         ; $12:BB31: D0 0A
LDA #$34                ; $12:BB33: A9 34
STA $1DE0               ; $12:BB35: 8D E0 1D
BNE CODE_12BB3D         ; $12:BB38: D0 03

CODE_12BB3A:
STA $1DE0               ; $12:BB3A: 8D E0 1D

CODE_12BB3D:
CPY #$12                ; $12:BB3D: C0 12
BNE CODE_12BB49         ; $12:BB3F: D0 08
LDA $042F,x             ; $12:BB41: BD 2F 04
BNE CODE_12BB49         ; $12:BB44: D0 03

; Generate another sprite when picked up.
; (If not the correct value, don't generate that sprite)
; Pidgit's carpet.
JSR CODE_12C5D8         ; $12:BB46: 20 D8 C5

CODE_12BB49:
LDA #$02                ; $12:BB49: A9 02

; Fall down.
STA $51,x               ; $12:BB4B: 95 51
STZ $00A8,x             ; $12:BB4D: 9E A8 00
LDA $65,x               ; $12:BB50: B5 65
AND #$DF                ; $12:BB52: 29 DF
STA $65,x               ; $12:BB54: 95 65
PHX                     ; $12:BB56: DA
PHY                     ; $12:BB57: 5A
JSR CODE_12BD29         ; $12:BB58: 20 29 BD
PLY                     ; $12:BB5B: 7A
PLX                     ; $12:BB5C: FA
PLA                     ; $12:BB5D: 68
PLA                     ; $12:BB5E: 68

CODE_12BB5F:
RTS                     ; $12:BB5F: 60

CODE_12BB60:
LDA $33,x               ; $12:BB60: B5 33
CLC                     ; $12:BB62: 18
SBC $CB                 ; $12:BB63: E5 CB
LDY $A8,x               ; $12:BB65: B4 A8
BEQ CODE_12BB75         ; $12:BB67: F0 0C
LDY $C7                 ; $12:BB69: A4 C7
BNE CODE_12BB75         ; $12:BB6B: D0 08
LDY $8F                 ; $12:BB6D: A4 8F
DEY                     ; $12:BB6F: 88
BEQ CODE_12BB75         ; $12:BB70: F0 03
SEC                     ; $12:BB72: 38
SBC #$01                ; $12:BB73: E9 01

CODE_12BB75:
STA $042C               ; $12:BB75: 8D 2C 04
LDA $04C1               ; $12:BB78: AD C1 04
STA $0E                 ; $12:BB7B: 85 0E
LDA $04BF               ; $12:BB7D: AD BF 04
STA $0F                 ; $12:BB80: 85 0F
LDA $15,x               ; $12:BB82: B5 15
XBA                     ; $12:BB84: EB
LDA $29,x               ; $12:BB85: B5 29
REP #$20                ; $12:BB87: C2 20
SEC                     ; $12:BB89: 38
SBC $0E                 ; $12:BB8A: E5 0E
SEP #$20                ; $12:BB8C: E2 20
STA $0429               ; $12:BB8E: 8D 29 04
XBA                     ; $12:BB91: EB
STA $021F               ; $12:BB92: 8D 1F 02
STZ $0248               ; $12:BB95: 9C 48 02
STZ $0249               ; $12:BB98: 9C 49 02
RTS                     ; $12:BB9B: 60

DATA_12BB9C:
db $68,$BA,$BE,$C2

CODE_12BBA0:
LDA $51,x               ; $12:BBA0: B5 51
CMP #$01                ; $12:BBA2: C9 01
BNE CODE_12BBAF         ; $12:BBA4: D0 09
LDA $045C,x             ; $12:BBA6: BD 5C 04
BEQ CODE_12BC02         ; $12:BBA9: F0 57
LDA #$68                ; $12:BBAB: A9 68
BRA CODE_12BC08         ; $12:BBAD: 80 59

CODE_12BBAF:
LDY #$02                ; $12:BBAF: A0 02
LDA $3D,x               ; $12:BBB1: B5 3D
BPL CODE_12BBB6         ; $12:BBB3: 10 01
DEY                     ; $12:BBB5: 88

CODE_12BBB6:
STY $6F,x               ; $12:BBB6: 94 6F
LDA $47,x               ; $12:BBB8: B5 47
BPL CODE_12BBC6         ; $12:BBBA: 10 0A

CODE_12BBBC:
LDA $65,x               ; $12:BBBC: B5 65
AND #$3F                ; $12:BBBE: 29 3F
ORA #$40                ; $12:BBC0: 09 40
STA $65,x               ; $12:BBC2: 95 65
BRA CODE_12BBD6         ; $12:BBC4: 80 10

CODE_12BBC6:
CMP #$18                ; $12:BBC6: C9 18
BCC CODE_12BBBC         ; $12:BBC8: 90 F2
LDA $6F,x               ; $12:BBCA: B5 6F
EOR #$03                ; $12:BBCC: 49 03
STA $6F,x               ; $12:BBCE: 95 6F
LDA $65,x               ; $12:BBD0: B5 65
ORA #$80                ; $12:BBD2: 09 80
STA $65,x               ; $12:BBD4: 95 65

CODE_12BBD6:
LDY #$00                ; $12:BBD6: A0 00
LDA $0702,x             ; $12:BBD8: BD 02 07
BMI CODE_12BBF7         ; $12:BBDB: 30 1A
LDA $47,x               ; $12:BBDD: B5 47
BPL CODE_12BBE8         ; $12:BBDF: 10 07
CMP #$F8                ; $12:BBE1: C9 F8
BCC CODE_12BBF7         ; $12:BBE3: 90 12
INY                     ; $12:BBE5: C8
BRA CODE_12BBF7         ; $12:BBE6: 80 0F

CODE_12BBE8:
CMP #$18                ; $12:BBE8: C9 18
BCS CODE_12BBF7         ; $12:BBEA: B0 0B
INY                     ; $12:BBEC: C8
CMP #$08                ; $12:BBED: C9 08
BCC CODE_12BBF7         ; $12:BBEF: 90 06
INY                     ; $12:BBF1: C8
CMP #$10                ; $12:BBF2: C9 10
BCC CODE_12BBF7         ; $12:BBF4: 90 01
INY                     ; $12:BBF6: C8

CODE_12BBF7:
PHX                     ; $12:BBF7: DA
TYX                     ; $12:BBF8: BB
LDA.l DATA_12BB9C,x     ; $12:BBF9: BF 9C BB 12
PLX                     ; $12:BBFD: FA
STZ $9F,x               ; $12:BBFE: 74 9F
BRA CODE_12BC08         ; $12:BC00: 80 06

CODE_12BC02:
LDA $86,x               ; $12:BC02: B5 86
BEQ CODE_12BC0F         ; $12:BC04: F0 09
LDA #$60                ; $12:BC06: A9 60

CODE_12BC08:
PHA                     ; $12:BC08: 48
JSR CODE_12BDD5         ; $12:BC09: 20 D5 BD
PLA                     ; $12:BC0C: 68
BRA CODE_12BC25         ; $12:BC0D: 80 16

CODE_12BC0F:
JSR CODE_12BDC9         ; $12:BC0F: 20 C9 BD
LDA #$00                ; $12:BC12: A9 00
BRA CODE_12BC25         ; $12:BC14: 80 0F

DATA_12BC16:
db $26,$26,$28

DATA_12BC19:
db $F8,$F8,$FB,$18,$18,$15

DATA_12BC1F:
db $02,$03,$06,$FE,$FD,$FA

CODE_12BC25:
LDY #$00                ; $12:BC25: A0 00
CMP #$00                ; $12:BC27: C9 00
BEQ CODE_12BC31         ; $12:BC29: F0 06
INY                     ; $12:BC2B: C8
CMP #$60                ; $12:BC2C: C9 60
BEQ CODE_12BC31         ; $12:BC2E: F0 01
INY                     ; $12:BC30: C8

CODE_12BC31:
PHY                     ; $12:BC31: 5A
LDA $6F,x               ; $12:BC32: B5 6F
AND #$01                ; $12:BC34: 29 01
LSR A                   ; $12:BC36: 4A
ROR A                   ; $12:BC37: 6A
ROR A                   ; $12:BC38: 6A
STA $0712               ; $12:BC39: 8D 12 07
LDA $65,x               ; $12:BC3C: B5 65
AND #$80                ; $12:BC3E: 29 80
STA $0713               ; $12:BC40: 8D 13 07
JSL CODE_13FC5B         ; $12:BC43: 22 5B FC 13
PLY                     ; $12:BC47: 7A
LDA $EE                 ; $12:BC48: A5 EE
BEQ CODE_12BC4D         ; $12:BC4A: F0 01
RTS                     ; $12:BC4C: 60

CODE_12BC4D:
TYX                     ; $12:BC4D: BB
PHX                     ; $12:BC4E: DA
LDA $0713               ; $12:BC4F: AD 13 07
BEQ CODE_12BC59         ; $12:BC52: F0 05
TXA                     ; $12:BC54: 8A
CLC                     ; $12:BC55: 18
ADC #$03                ; $12:BC56: 69 03
TAX                     ; $12:BC58: AA

CODE_12BC59:
LDA.l DATA_12BC19,x     ; $12:BC59: BF 19 BC 12
CLC                     ; $12:BC5D: 18
ADC $042C               ; $12:BC5E: 6D 2C 04
STA $00                 ; $12:BC61: 85 00
PLX                     ; $12:BC63: FA
PHX                     ; $12:BC64: DA
LDA $0712               ; $12:BC65: AD 12 07
BEQ CODE_12BC6F         ; $12:BC68: F0 05
TXA                     ; $12:BC6A: 8A
CLC                     ; $12:BC6B: 18
ADC #$03                ; $12:BC6C: 69 03
TAX                     ; $12:BC6E: AA

CODE_12BC6F:
REP #$20                ; $12:BC6F: C2 20
LDA.l DATA_12BC1F,x     ; $12:BC71: BF 1F BC 12
AND #$00FF              ; $12:BC75: 29 FF 00
CMP #$0080              ; $12:BC78: C9 80 00
BCC CODE_12BC80         ; $12:BC7B: 90 03
ORA #$FF00              ; $12:BC7D: 09 00 FF

CODE_12BC80:
STA $0716               ; $12:BC80: 8D 16 07
SEP #$20                ; $12:BC83: E2 20
LDA $021F               ; $12:BC85: AD 1F 02
XBA                     ; $12:BC88: EB
LDA $0429               ; $12:BC89: AD 29 04
REP #$20                ; $12:BC8C: C2 20
CLC                     ; $12:BC8E: 18
ADC $0716               ; $12:BC8F: 6D 16 07
CMP #$0180              ; $12:BC92: C9 80 01
BCC CODE_12BC9F         ; $12:BC95: 90 08
CMP #$FF80              ; $12:BC97: C9 80 FF
BCS CODE_12BC9F         ; $12:BC9A: B0 03
PLX                     ; $12:BC9C: FA
BRA CODE_12BCE4         ; $12:BC9D: 80 45

CODE_12BC9F:
SEP #$20                ; $12:BC9F: E2 20
STA $01                 ; $12:BCA1: 85 01
XBA                     ; $12:BCA3: EB
STA $02                 ; $12:BCA4: 85 02
PLX                     ; $12:BCA6: FA
LDA.l DATA_12BC16,x     ; $12:BCA7: BF 16 BC 12
STA $0714               ; $12:BCAB: 8D 14 07
REP #$10                ; $12:BCAE: C2 10
LDY $02F8               ; $12:BCB0: AC F8 02
LDA $01                 ; $12:BCB3: A5 01
STA $0800,y             ; $12:BCB5: 99 00 08
LDA $00                 ; $12:BCB8: A5 00
STA $0801,y             ; $12:BCBA: 99 01 08
LDA $0714               ; $12:BCBD: AD 14 07
STA $0802,y             ; $12:BCC0: 99 02 08
LDA $0713               ; $12:BCC3: AD 13 07
ORA $0712               ; $12:BCC6: 0D 12 07
ORA #$2A                ; $12:BCC9: 09 2A
STA $0803,y             ; $12:BCCB: 99 03 08
REP #$20                ; $12:BCCE: C2 20
TYA                     ; $12:BCD0: 98
LSR A                   ; $12:BCD1: 4A
LSR A                   ; $12:BCD2: 4A
TAY                     ; $12:BCD3: A8
SEP #$20                ; $12:BCD4: E2 20
LDX #$0000              ; $12:BCD6: A2 00 00
LDA $02                 ; $12:BCD9: A5 02
BEQ CODE_12BCDE         ; $12:BCDB: F0 01
INX                     ; $12:BCDD: E8

CODE_12BCDE:
TXA                     ; $12:BCDE: 8A
ORA #$02                ; $12:BCDF: 09 02
STA $0A20,y             ; $12:BCE1: 99 20 0A

CODE_12BCE4:
SEP #$30                ; $12:BCE4: E2 30
LDX $12                 ; $12:BCE6: A6 12
RTS                     ; $12:BCE8: 60

CODE_12BCE9:
LDA $ED                 ; $12:BCE9: A5 ED
PHA                     ; $12:BCEB: 48
JSL CODE_139110         ; $12:BCEC: 22 10 91 13
PLA                     ; $12:BCF0: 68
ASL A                   ; $12:BCF1: 0A
STA $ED                 ; $12:BCF2: 85 ED
LDA $B1,x               ; $12:BCF4: B5 B1
ORA $EE                 ; $12:BCF6: 05 EE
BNE CODE_12BD4E         ; $12:BCF8: D0 54
LDA $042C               ; $12:BCFA: AD 2C 04
CLC                     ; $12:BCFD: 18
ADC #$10                ; $12:BCFE: 69 10
STA $00                 ; $12:BD00: 85 00
LDA $0429               ; $12:BD02: AD 29 04
CLC                     ; $12:BD05: 18
ADC #$08                ; $12:BD06: 69 08
STA $01                 ; $12:BD08: 85 01
LDA $6F,x               ; $12:BD0A: B5 6F
STA $02                 ; $12:BD0C: 85 02
LDA #$03                ; $12:BD0E: A9 03
STA $03                 ; $12:BD10: 85 03
STA $05                 ; $12:BD12: 85 05
LDA $0213               ; $12:BD14: AD 13 02
AND #$71                ; $12:BD17: 29 71
ORA #$01                ; $12:BD19: 09 01
STA $0213               ; $12:BD1B: 8D 13 02
JSL CODE_14E483         ; $12:BD1E: 22 83 E4 14
STZ $0B                 ; $12:BD22: 64 0B
LDX #$14                ; $12:BD24: A2 14
JMP CODE_12BEF7         ; $12:BD26: 4C F7 BE

CODE_12BD29:
LDY $90,x               ; $12:BD29: B4 90
LDA.w DATA_11993B,y     ; $12:BD2B: B9 3B 99
CMP #$FF                ; $12:BD2E: C9 FF
BEQ CODE_12BD4E         ; $12:BD30: F0 1C
CPY #$1D                ; $12:BD32: C0 1D
BNE CODE_12BD39         ; $12:BD34: D0 03
JMP CODE_12C885         ; $12:BD36: 4C 85 C8

CODE_12BD39:
CPY #$21                ; $12:BD39: C0 21
BNE CODE_12BD40         ; $12:BD3B: D0 03
JMP CODE_12C331         ; $12:BD3D: 4C 31 C3

CODE_12BD40:
CPY #$22                ; $12:BD40: C0 22
BNE CODE_12BD47         ; $12:BD42: D0 03
JMP CODE_12C4A2         ; $12:BD44: 4C A2 C4

CODE_12BD47:
CPY #$2D                ; $12:BD47: C0 2D
BNE CODE_12BD4F         ; $12:BD49: D0 04
JMP CODE_12D8FE         ; $12:BD4B: 4C FE D8

CODE_12BD4E:
RTS                     ; $12:BD4E: 60

CODE_12BD4F:
CPY #$12                ; $12:BD4F: C0 12
BNE CODE_12BD56         ; $12:BD51: D0 03
JMP CODE_12C68E         ; $12:BD53: 4C 8E C6

CODE_12BD56:
CPY #$04                ; $12:BD56: C0 04
BNE CODE_12BD5D         ; $12:BD58: D0 03
JMP CODE_12C1A1         ; $12:BD5A: 4C A1 C1

CODE_12BD5D:
CPY #$33                ; $12:BD5D: C0 33
BNE CODE_12BD64         ; $12:BD5F: D0 03
JMP CODE_12B147         ; $12:BD61: 4C 47 B1

CODE_12BD64:
CPY #$26                ; $12:BD64: C0 26
BNE CODE_12BD6B         ; $12:BD66: D0 03
JMP CODE_12D50D         ; $12:BD68: 4C 0D D5

CODE_12BD6B:
CPY #$2A                ; $12:BD6B: C0 2A
BNE CODE_12BD72         ; $12:BD6D: D0 03
JMP CODE_12D209         ; $12:BD6F: 4C 09 D2

CODE_12BD72:
CPY #$43                ; $12:BD72: C0 43
BNE CODE_12BD79         ; $12:BD74: D0 03
JMP CODE_12AD30         ; $12:BD76: 4C 30 AD

CODE_12BD79:
CPY #$2C                ; $12:BD79: C0 2C
BNE CODE_12BD80         ; $12:BD7B: D0 03
JMP CODE_12DC2A         ; $12:BD7D: 4C 2A DC

CODE_12BD80:
CPY #$28                ; $12:BD80: C0 28
BNE CODE_12BD87         ; $12:BD82: D0 03
JMP CODE_12D5D6         ; $12:BD84: 4C D6 D5

CODE_12BD87:
CPY #$1A                ; $12:BD87: C0 1A
BNE CODE_12BD8E         ; $12:BD89: D0 03
JMP CODE_12CED0         ; $12:BD8B: 4C D0 CE

CODE_12BD8E:
CPY #$00                ; $12:BD8E: C0 00
BNE CODE_12BD95         ; $12:BD90: D0 03
JMP CODE_12AEDD         ; $12:BD92: 4C DD AE

CODE_12BD95:
CPY #$08                ; $12:BD95: C0 08
BNE CODE_12BD9C         ; $12:BD97: D0 03
JMP CODE_12C8FD         ; $12:BD99: 4C FD C8

CODE_12BD9C:
CPY #$1F                ; $12:BD9C: C0 1F
BNE CODE_12BDA3         ; $12:BD9E: D0 03
JMP CODE_12CAB7         ; $12:BDA0: 4C B7 CA

CODE_12BDA3:
CPY #$1C                ; $12:BDA3: C0 1C
BNE CODE_12BDAA         ; $12:BDA5: D0 03
JMP CODE_12BBA0         ; $12:BDA7: 4C A0 BB

CODE_12BDAA:
CPY #$0A                ; $12:BDAA: C0 0A
BCC CODE_12BDB5         ; $12:BDAC: 90 07
CPY #$0D                ; $12:BDAE: C0 0D
BCS CODE_12BDB5         ; $12:BDB0: B0 03
JMP CODE_12BCE9         ; $12:BDB2: 4C E9 BC

CODE_12BDB5:
CPY #$41                ; $12:BDB5: C0 41
BNE CODE_12BDC9         ; $12:BDB7: D0 10
LDA $02F6               ; $12:BDB9: AD F6 02
STA $02F8               ; $12:BDBC: 8D F8 02
LDA $02F7               ; $12:BDBF: AD F7 02
STA $02F9               ; $12:BDC2: 8D F9 02
JMP CODE_12C6E5         ; $12:BDC5: 4C E5 C6

CODE_12BDC8:
RTS                     ; $12:BDC8: 60

CODE_12BDC9:
LDY $90,x               ; $12:BDC9: B4 90
CPY #$38                ; $12:BDCB: C0 38
BNE CODE_12BDD2         ; $12:BDCD: D0 03
JMP CODE_12D1A8         ; $12:BDCF: 4C A8 D1

CODE_12BDD2:
LDA.w DATA_11993B,y     ; $12:BDD2: B9 3B 99

CODE_12BDD5:
STA $0F                 ; $12:BDD5: 85 0F
LDA $EE                 ; $12:BDD7: A5 EE
BNE CODE_12BDC8         ; $12:BDD9: D0 ED
LDA $046E,x             ; $12:BDDB: BD 6E 04
AND #$10                ; $12:BDDE: 29 10
STA $0B                 ; $12:BDE0: 85 0B
LDY $6F,x               ; $12:BDE2: B4 6F
LDA $65,x               ; $12:BDE4: B5 65
AND #$18                ; $12:BDE6: 29 18
BEQ CODE_12BDFA         ; $12:BDE8: F0 10
LDY #$02                ; $12:BDEA: A0 02
LDA $0628               ; $12:BDEC: AD 28 06
CMP #$02                ; $12:BDEF: C9 02
BNE CODE_12BDFA         ; $12:BDF1: D0 07
LDA $90,x               ; $12:BDF3: B5 90
CMP #$3D                ; $12:BDF5: C9 3D
BEQ CODE_12BDFA         ; $12:BDF7: F0 01
DEY                     ; $12:BDF9: 88

CODE_12BDFA:
STY $02                 ; $12:BDFA: 84 02
LDA $65,x               ; $12:BDFC: B5 65
AND #$44                ; $12:BDFE: 29 44
STA $05                 ; $12:BE00: 85 05
LDA $042C               ; $12:BE02: AD 2C 04
STA $00                 ; $12:BE05: 85 00
STZ $0700               ; $12:BE07: 9C 00 07
STZ $0701               ; $12:BE0A: 9C 01 07
LDA $044A,x             ; $12:BE0D: BD 4A 04
AND #$02                ; $12:BE10: 29 02
LSR A                   ; $12:BE12: 4A
LDY $ED                 ; $12:BE13: A4 ED
BEQ CODE_12BE19         ; $12:BE15: F0 02
LDA #$00                ; $12:BE17: A9 00

CODE_12BE19:
ADC $0429               ; $12:BE19: 6D 29 04
STA $01                 ; $12:BE1C: 85 01
PHX                     ; $12:BE1E: DA
LDA $90,x               ; $12:BE1F: B5 90
TAX                     ; $12:BE21: AA
LDA.l DATA_15EBA5,x     ; $12:BE22: BF A5 EB 15
PHA                     ; $12:BE26: 48
AND #$0F                ; $12:BE27: 29 0F
ORA $0249               ; $12:BE29: 0D 49 02
CPX #$17                ; $12:BE2C: E0 17
BNE CODE_12BE32         ; $12:BE2E: D0 02
ORA #$10                ; $12:BE30: 09 10

CODE_12BE32:
STA $0213               ; $12:BE32: 8D 13 02
STZ $0218               ; $12:BE35: 9C 18 02
PLA                     ; $12:BE38: 68
PHA                     ; $12:BE39: 48
AND #$40                ; $12:BE3A: 29 40
BEQ CODE_12BE49         ; $12:BE3C: F0 0B
LDA $0213               ; $12:BE3E: AD 13 02
AND #$F1                ; $12:BE41: 29 F1
ORA $0248               ; $12:BE43: 0D 48 02
STA $0213               ; $12:BE46: 8D 13 02

CODE_12BE49:
PLA                     ; $12:BE49: 68
ASL A                   ; $12:BE4A: 0A
ROL $0218               ; $12:BE4B: 2E 18 02
ASL $0218               ; $12:BE4E: 0E 18 02
LDA.l DATA_15EBEC,x     ; $12:BE51: BF EC EB 15
CLC                     ; $12:BE55: 18
ADC $00                 ; $12:BE56: 65 00
STA $00                 ; $12:BE58: 85 00
PLX                     ; $12:BE5A: FA
LDA $65,x               ; $12:BE5B: B5 65
AND #$A0                ; $12:BE5D: 29 A0
LDY $045C,x             ; $12:BE5F: BC 5C 04
BEQ CODE_12BE7A         ; $12:BE62: F0 16
STA $08                 ; $12:BE64: 85 08
JSL CODE_1391DC         ; $12:BE66: 22 DC 91 13
BCS CODE_12BE7A         ; $12:BE6A: B0 0E
LDA $0213               ; $12:BE6C: AD 13 02
AND #$F1                ; $12:BE6F: 29 F1
STA $0213               ; $12:BE71: 8D 13 02
TYA                     ; $12:BE74: 98
LSR A                   ; $12:BE75: 4A
AND #$03                ; $12:BE76: 29 03
ORA $08                 ; $12:BE78: 05 08

CODE_12BE7A:
STA $03                 ; $12:BE7A: 85 03
LDA $046E,x             ; $12:BE7C: BD 6E 04
STA $0C                 ; $12:BE7F: 85 0C
ASL A                   ; $12:BE81: 0A
LDA $9F,x               ; $12:BE82: B5 9F
LDX $0F                 ; $12:BE84: A6 0F
AND #$08                ; $12:BE86: 29 08
BEQ CODE_12BEA4         ; $12:BE88: F0 1A
BCC CODE_12BE92         ; $12:BE8A: 90 06
LDA #$01                ; $12:BE8C: A9 01
STA $02                 ; $12:BE8E: 85 02
BNE CODE_12BEA4         ; $12:BE90: D0 12

CODE_12BE92:
INX                     ; $12:BE92: E8
INX                     ; $12:BE93: E8
LDA $05                 ; $12:BE94: A5 05
AND #$40                ; $12:BE96: 29 40
BEQ CODE_12BEA4         ; $12:BE98: F0 0A
INX                     ; $12:BE9A: E8
INX                     ; $12:BE9B: E8
LDA $0C                 ; $12:BE9C: A5 0C
AND #$20                ; $12:BE9E: 29 20
BEQ CODE_12BEA4         ; $12:BEA0: F0 02
INX                     ; $12:BEA2: E8
INX                     ; $12:BEA3: E8

CODE_12BEA4:
LDA $02F6               ; $12:BEA4: AD F6 02
STA $02F8               ; $12:BEA7: 8D F8 02
LDA $02F7               ; $12:BEAA: AD F7 02
STA $02F9               ; $12:BEAD: 8D F9 02
LDA $05                 ; $12:BEB0: A5 05
AND #$40                ; $12:BEB2: 29 40
BEQ CODE_12BEF7         ; $12:BEB4: F0 41
LDA $05                 ; $12:BEB6: A5 05
AND #$04                ; $12:BEB8: 29 04
BEQ CODE_12BED0         ; $12:BEBA: F0 14
LDA $ED                 ; $12:BEBC: A5 ED
STA $08                 ; $12:BEBE: 85 08
LDA $02                 ; $12:BEC0: A5 02
CMP #$01                ; $12:BEC2: C9 01
BNE CODE_12BED0         ; $12:BEC4: D0 0A
LDA $01                 ; $12:BEC6: A5 01
ADC #$0F                ; $12:BEC8: 69 0F
STA $01                 ; $12:BECA: 85 01
ASL $ED                 ; $12:BECC: 06 ED
ASL $ED                 ; $12:BECE: 06 ED

CODE_12BED0:
JSR CODE_12C03B         ; $12:BED0: 20 3B C0
LDA $05                 ; $12:BED3: A5 05
AND #$04                ; $12:BED5: 29 04
BEQ CODE_12BEF7         ; $12:BED7: F0 1E
LDA $042C               ; $12:BED9: AD 2C 04
STA $00                 ; $12:BEDC: 85 00
LDA $0429               ; $12:BEDE: AD 29 04
STA $01                 ; $12:BEE1: 85 01
LDA $08                 ; $12:BEE3: A5 08
STA $ED                 ; $12:BEE5: 85 ED
LDA $02                 ; $12:BEE7: A5 02
CMP #$01                ; $12:BEE9: C9 01
BEQ CODE_12BEF7         ; $12:BEEB: F0 0A
LDA $01                 ; $12:BEED: A5 01
ADC #$0F                ; $12:BEEF: 69 0F
STA $01                 ; $12:BEF1: 85 01
ASL $ED                 ; $12:BEF3: 06 ED
ASL $ED                 ; $12:BEF5: 06 ED

CODE_12BEF7:
JSR CODE_12C03B         ; $12:BEF7: 20 3B C0
LDA $05                 ; $12:BEFA: A5 05
CMP #$40                ; $12:BEFC: C9 40
BNE CODE_12BF47         ; $12:BEFE: D0 47
LDA $03                 ; $12:BF00: A5 03
BPL CODE_12BF47         ; $12:BF02: 10 43
LDA $0C                 ; $12:BF04: A5 0C
AND #$20                ; $12:BF06: 29 20
BEQ CODE_12BF32         ; $12:BF08: F0 28
REP #$10                ; $12:BF0A: C2 10
LDY $02F6               ; $12:BF0C: AC F6 02
LDX $0700               ; $12:BF0F: AE 00 07
LDA $0801,x             ; $12:BF12: BD 01 08
PHA                     ; $12:BF15: 48
LDA $0801,y             ; $12:BF16: B9 01 08
STA $0801,x             ; $12:BF19: 9D 01 08
PLA                     ; $12:BF1C: 68
STA $0801,y             ; $12:BF1D: 99 01 08
LDA $0805,x             ; $12:BF20: BD 05 08
PHA                     ; $12:BF23: 48
LDA $0805,y             ; $12:BF24: B9 05 08
STA $0805,x             ; $12:BF27: 9D 05 08
PLA                     ; $12:BF2A: 68
STA $0805,y             ; $12:BF2B: 99 05 08
SEP #$10                ; $12:BF2E: E2 10
BCS CODE_12BF47         ; $12:BF30: B0 15

CODE_12BF32:
REP #$10                ; $12:BF32: C2 10
LDY $02F6               ; $12:BF34: AC F6 02
LDA $0801,y             ; $12:BF37: B9 01 08
PHA                     ; $12:BF3A: 48
LDA $0805,y             ; $12:BF3B: B9 05 08
STA $0801,y             ; $12:BF3E: 99 01 08
PLA                     ; $12:BF41: 68
STA $0805,y             ; $12:BF42: 99 05 08
SEP #$10                ; $12:BF45: E2 10

CODE_12BF47:
LDX $12                 ; $12:BF47: A6 12
LDA $65,x               ; $12:BF49: B5 65
AND #$10                ; $12:BF4B: 29 10
BEQ CODE_12BF68         ; $12:BF4D: F0 19
REP #$10                ; $12:BF4F: C2 10
LDY $02F6               ; $12:BF51: AC F6 02
LDA $03                 ; $12:BF54: A5 03
ASL A                   ; $12:BF56: 0A
ORA $0213               ; $12:BF57: 0D 13 02
AND #$3F                ; $12:BF5A: 29 3F
ORA #$20                ; $12:BF5C: 09 20
STA $0803,y             ; $12:BF5E: 99 03 08
ORA #$40                ; $12:BF61: 09 40
STA $0807,y             ; $12:BF63: 99 07 08
SEP #$10                ; $12:BF66: E2 10

CODE_12BF68:
REP #$10                ; $12:BF68: C2 10
LDA $EB                 ; $12:BF6A: A5 EB
BNE CODE_12BF98         ; $12:BF6C: D0 2A
REP #$20                ; $12:BF6E: C2 20
LDA $02F8               ; $12:BF70: AD F8 02
SEC                     ; $12:BF73: 38
SBC #$0004              ; $12:BF74: E9 04 00
STA $0700               ; $12:BF77: 8D 00 07
SEP #$20                ; $12:BF7A: E2 20
LDA $90,x               ; $12:BF7C: B5 90
CMP #$0F                ; $12:BF7E: C9 0F
BEQ CODE_12BF98         ; $12:BF80: F0 16
CMP #$10                ; $12:BF82: C9 10
BEQ CODE_12BF98         ; $12:BF84: F0 12
CMP #$1B                ; $12:BF86: C9 1B
BEQ CODE_12BF98         ; $12:BF88: F0 0E
CMP #$20                ; $12:BF8A: C9 20
BEQ CODE_12BF98         ; $12:BF8C: F0 0A
LDY $02F6               ; $12:BF8E: AC F6 02
LDA $0800,y             ; $12:BF91: B9 00 08
CMP #$F0                ; $12:BF94: C9 F0
BCS CODE_12BF9B         ; $12:BF96: B0 03

CODE_12BF98:
BRL CODE_12C036         ; $12:BF98: 82 9B 00

CODE_12BF9B:
LDA $90,x               ; $12:BF9B: B5 90
CMP #$2A                ; $12:BF9D: C9 2A
BNE CODE_12BFAD         ; $12:BF9F: D0 0C
LDA $02F7               ; $12:BFA1: AD F7 02
BNE CODE_12BFAD         ; $12:BFA4: D0 07
LDA $02F6               ; $12:BFA6: AD F6 02
CMP #$20                ; $12:BFA9: C9 20
BEQ CODE_12BFBC         ; $12:BFAB: F0 0F

CODE_12BFAD:
LDA $A8,x               ; $12:BFAD: B5 A8
BEQ CODE_12BFB8         ; $12:BFAF: F0 07
LDA $04BE               ; $12:BFB1: AD BE 04
CMP #$19                ; $12:BFB4: C9 19
BCC CODE_12BFBC         ; $12:BFB6: 90 04

CODE_12BFB8:
JSL CODE_14E483         ; $12:BFB8: 22 83 E4 14

CODE_12BFBC:
REP #$10                ; $12:BFBC: C2 10
LDY $02F6               ; $12:BFBE: AC F6 02
LDX $02F8               ; $12:BFC1: AE F8 02
LDA $0800,y             ; $12:BFC4: B9 00 08
STA $0800,x             ; $12:BFC7: 9D 00 08
LDA $0801,y             ; $12:BFCA: B9 01 08
STA $0801,x             ; $12:BFCD: 9D 01 08
LDA $0802,y             ; $12:BFD0: B9 02 08
STA $0802,x             ; $12:BFD3: 9D 02 08
LDA $0803,y             ; $12:BFD6: B9 03 08
STA $0803,x             ; $12:BFD9: 9D 03 08
REP #$20                ; $12:BFDC: C2 20
TYA                     ; $12:BFDE: 98
LSR A                   ; $12:BFDF: 4A
LSR A                   ; $12:BFE0: 4A
TAY                     ; $12:BFE1: A8
TXA                     ; $12:BFE2: 8A
LSR A                   ; $12:BFE3: 4A
LSR A                   ; $12:BFE4: 4A
TAX                     ; $12:BFE5: AA
SEP #$20                ; $12:BFE6: E2 20
LDA $0218               ; $12:BFE8: AD 18 02
ORA #$01                ; $12:BFEB: 09 01
STA $0A20,y             ; $12:BFED: 99 20 0A
DEC A                   ; $12:BFF0: 3A
STA $0A20,x             ; $12:BFF1: 9D 20 0A
LDA $05                 ; $12:BFF4: A5 05
AND #$40                ; $12:BFF6: 29 40
BEQ CODE_12C036         ; $12:BFF8: F0 3C
JSL CODE_14E483         ; $12:BFFA: 22 83 E4 14
REP #$10                ; $12:BFFE: C2 10
LDY $0700               ; $12:C000: AC 00 07
LDX $02F8               ; $12:C003: AE F8 02
LDA $0800,y             ; $12:C006: B9 00 08
STA $0800,x             ; $12:C009: 9D 00 08
LDA $0801,y             ; $12:C00C: B9 01 08
STA $0801,x             ; $12:C00F: 9D 01 08
LDA $0802,y             ; $12:C012: B9 02 08
STA $0802,x             ; $12:C015: 9D 02 08
LDA $0803,y             ; $12:C018: B9 03 08
STA $0803,x             ; $12:C01B: 9D 03 08
REP #$20                ; $12:C01E: C2 20
TYA                     ; $12:C020: 98
LSR A                   ; $12:C021: 4A
LSR A                   ; $12:C022: 4A
TAY                     ; $12:C023: A8
TXA                     ; $12:C024: 8A
LSR A                   ; $12:C025: 4A
LSR A                   ; $12:C026: 4A
TAX                     ; $12:C027: AA
SEP #$20                ; $12:C028: E2 20
LDA $0218               ; $12:C02A: AD 18 02
ORA #$01                ; $12:C02D: 09 01
STA $0A20,y             ; $12:C02F: 99 20 0A
DEC A                   ; $12:C032: 3A
STA $0A20,x             ; $12:C033: 9D 20 0A

CODE_12C036:
SEP #$10                ; $12:C036: E2 10
LDX $12                 ; $12:C038: A6 12
RTS                     ; $12:C03A: 60

CODE_12C03B:
LDA $0429               ; $12:C03B: AD 29 04
STA $0712               ; $12:C03E: 8D 12 07
LDA $021F               ; $12:C041: AD 1F 02
STA $0713               ; $12:C044: 8D 13 07
REP #$20                ; $12:C047: C2 20
LDA $0712               ; $12:C049: AD 12 07
BPL CODE_12C055         ; $12:C04C: 10 07
CMP #$FF80              ; $12:C04E: C9 80 FF
BCS CODE_12C05F         ; $12:C051: B0 0C
BRA CODE_12C05A         ; $12:C053: 80 05

CODE_12C055:
CMP #$0180              ; $12:C055: C9 80 01
BCC CODE_12C05F         ; $12:C058: 90 05

CODE_12C05A:
SEP #$20                ; $12:C05A: E2 20
JMP CODE_12C0FE         ; $12:C05C: 4C FE C0

CODE_12C05F:
SEP #$20                ; $12:C05F: E2 20
LDA $0C                 ; $12:C061: A5 0C
AND #$20                ; $12:C063: 29 20
BEQ CODE_12C06A         ; $12:C065: F0 03
JMP CODE_12C0FF         ; $12:C067: 4C FF C0

CODE_12C06A:
LDA $0B                 ; $12:C06A: A5 0B
BNE CODE_12C073         ; $12:C06C: D0 05
LDA.w DATA_11986F,x     ; $12:C06E: BD 6F 98
BRA CODE_12C076         ; $12:C071: 80 03

CODE_12C073:
LDA.w DATA_119992,x     ; $12:C073: BD 92 99

CODE_12C076:
STA $0712               ; $12:C076: 8D 12 07
LDA $02                 ; $12:C079: A5 02
LSR A                   ; $12:C07B: 4A
PHP                     ; $12:C07C: 08
LDA $03                 ; $12:C07D: A5 03
AND #$C0                ; $12:C07F: 29 C0
TSB $0213               ; $12:C081: 0C 13 02
PHX                     ; $12:C084: DA
LDX $12                 ; $12:C085: A6 12
LDA $A8,x               ; $12:C087: B5 A8
BEQ CODE_12C09D         ; $12:C089: F0 12
LDA $90,x               ; $12:C08B: B5 90
CMP #$19                ; $12:C08D: C9 19
BNE CODE_12C09D         ; $12:C08F: D0 0C
LDA $65,x               ; $12:C091: B5 65
AND #$DF                ; $12:C093: 29 DF
STA $65,x               ; $12:C095: 95 65
LDA $03                 ; $12:C097: A5 03
AND #$DF                ; $12:C099: 29 DF
STA $03                 ; $12:C09B: 85 03

CODE_12C09D:
PLX                     ; $12:C09D: FA
LDA $03                 ; $12:C09E: A5 03
AND #$20                ; $12:C0A0: 29 20
EOR #$20                ; $12:C0A2: 49 20
TSB $0213               ; $12:C0A4: 0C 13 02
LDA $03                 ; $12:C0A7: A5 03
AND #$03                ; $12:C0A9: 29 03
ASL A                   ; $12:C0AB: 0A
PLP                     ; $12:C0AC: 28
BCC CODE_12C0B1         ; $12:C0AD: 90 02
ORA #$40                ; $12:C0AF: 09 40

CODE_12C0B1:
ORA $0213               ; $12:C0B1: 0D 13 02
STA $0713               ; $12:C0B4: 8D 13 07
JSL CODE_15D007         ; $12:C0B7: 22 07 D0 15
REP #$10                ; $12:C0BB: C2 10
LDY $02F8               ; $12:C0BD: AC F8 02
LDA $00                 ; $12:C0C0: A5 00
STA $0801,y             ; $12:C0C2: 99 01 08
CLC                     ; $12:C0C5: 18
ADC #$10                ; $12:C0C6: 69 10
STA $00                 ; $12:C0C8: 85 00
LDA $01                 ; $12:C0CA: A5 01
STA $0800,y             ; $12:C0CC: 99 00 08
LDA $0712               ; $12:C0CF: AD 12 07
STA $0802,y             ; $12:C0D2: 99 02 08
LDA $0713               ; $12:C0D5: AD 13 07
STA $0803,y             ; $12:C0D8: 99 03 08
REP #$20                ; $12:C0DB: C2 20
LDA $02F8               ; $12:C0DD: AD F8 02
CLC                     ; $12:C0E0: 18
ADC #$0004              ; $12:C0E1: 69 04 00
STA $02F8               ; $12:C0E4: 8D F8 02
TYA                     ; $12:C0E7: 98
LSR A                   ; $12:C0E8: 4A
LSR A                   ; $12:C0E9: 4A
TAY                     ; $12:C0EA: A8
SEP #$20                ; $12:C0EB: E2 20
LDA $ED                 ; $12:C0ED: A5 ED
AND #$08                ; $12:C0EF: 29 08
LSR A                   ; $12:C0F1: 4A
LSR A                   ; $12:C0F2: 4A
LSR A                   ; $12:C0F3: 4A
ORA $0218               ; $12:C0F4: 0D 18 02
STA $0A20,y             ; $12:C0F7: 99 20 0A
SEP #$10                ; $12:C0FA: E2 10
INX                     ; $12:C0FC: E8
INX                     ; $12:C0FD: E8

CODE_12C0FE:
RTS                     ; $12:C0FE: 60

CODE_12C0FF:
LDA $02                 ; $12:C0FF: A5 02
LSR A                   ; $12:C101: 4A
PHP                     ; $12:C102: 08
LDA $03                 ; $12:C103: A5 03
AND #$C0                ; $12:C105: 29 C0
TSB $0213               ; $12:C107: 0C 13 02
LDA $03                 ; $12:C10A: A5 03
AND #$03                ; $12:C10C: 29 03
ASL A                   ; $12:C10E: 0A
PLP                     ; $12:C10F: 28
BCC CODE_12C114         ; $12:C110: 90 02
ORA #$40                ; $12:C112: 09 40

CODE_12C114:
ORA #$20                ; $12:C114: 09 20
ORA $0213               ; $12:C116: 0D 13 02
STA $0712               ; $12:C119: 8D 12 07
AND #$40                ; $12:C11C: 29 40
BNE CODE_12C129         ; $12:C11E: D0 09
LDA.w DATA_119992,x     ; $12:C120: BD 92 99
PHA                     ; $12:C123: 48
LDA.w DATA_119992+1,x   ; $12:C124: BD 93 99
BRA CODE_12C130         ; $12:C127: 80 07

CODE_12C129:
LDA.w DATA_119992+1,x   ; $12:C129: BD 93 99
PHA                     ; $12:C12C: 48
LDA.w DATA_119992,x     ; $12:C12D: BD 92 99

CODE_12C130:
REP #$10                ; $12:C130: C2 10
LDY $02F8               ; $12:C132: AC F8 02
STA $0806,y             ; $12:C135: 99 06 08
PLA                     ; $12:C138: 68
STA $0802,y             ; $12:C139: 99 02 08
LDA $00                 ; $12:C13C: A5 00
STA $0801,y             ; $12:C13E: 99 01 08
STA $0805,y             ; $12:C141: 99 05 08
CLC                     ; $12:C144: 18
ADC #$10                ; $12:C145: 69 10
STA $00                 ; $12:C147: 85 00
LDA $01                 ; $12:C149: A5 01
STA $0800,y             ; $12:C14B: 99 00 08
ADC #$08                ; $12:C14E: 69 08
STA $0804,y             ; $12:C150: 99 04 08
LDA $0712               ; $12:C153: AD 12 07
STA $0803,y             ; $12:C156: 99 03 08
STA $0807,y             ; $12:C159: 99 07 08
REP #$20                ; $12:C15C: C2 20
TYA                     ; $12:C15E: 98
LSR A                   ; $12:C15F: 4A
LSR A                   ; $12:C160: 4A
TAY                     ; $12:C161: A8
SEP #$20                ; $12:C162: E2 20
LDA $ED                 ; $12:C164: A5 ED
AND #$08                ; $12:C166: 29 08
LSR A                   ; $12:C168: 4A
LSR A                   ; $12:C169: 4A
LSR A                   ; $12:C16A: 4A
ORA $0218               ; $12:C16B: 0D 18 02
STA $0A20,y             ; $12:C16E: 99 20 0A
LDA $ED                 ; $12:C171: A5 ED
AND #$04                ; $12:C173: 29 04
LSR A                   ; $12:C175: 4A
LSR A                   ; $12:C176: 4A
ORA $0218               ; $12:C177: 0D 18 02
STA $0A21,y             ; $12:C17A: 99 21 0A
SEP #$10                ; $12:C17D: E2 10
TXA                     ; $12:C17F: 8A
PHA                     ; $12:C180: 48
JSL CODE_14E483         ; $12:C181: 22 83 E4 14
PLA                     ; $12:C185: 68
TAX                     ; $12:C186: AA
LDA $0700               ; $12:C187: AD 00 07
BNE CODE_12C19D         ; $12:C18A: D0 11
LDA $0701               ; $12:C18C: AD 01 07
BNE CODE_12C19D         ; $12:C18F: D0 0C
LDY $02F8               ; $12:C191: AC F8 02
STY $0700               ; $12:C194: 8C 00 07
LDY $02F9               ; $12:C197: AC F9 02
STY $0701               ; $12:C19A: 8C 01 07

CODE_12C19D:
INX                     ; $12:C19D: E8
INX                     ; $12:C19E: E8
INX                     ; $12:C19F: E8
RTS                     ; $12:C1A0: 60

CODE_12C1A1:
JSR CODE_12BDC9         ; $12:C1A1: 20 C9 BD
LDA $ED                 ; $12:C1A4: A5 ED
AND #$0C                ; $12:C1A6: 29 0C
BNE CODE_12C1D9         ; $12:C1A8: D0 2F
LDA $9F,x               ; $12:C1AA: B5 9F
AND #$0C                ; $12:C1AC: 29 0C
LSR A                   ; $12:C1AE: 4A
LSR A                   ; $12:C1AF: 4A
STA $00                 ; $12:C1B0: 85 00
REP #$30                ; $12:C1B2: C2 30
LDA $6F,x               ; $12:C1B4: B5 6F
ASL A                   ; $12:C1B6: 0A
ASL A                   ; $12:C1B7: 0A
ADC $00                 ; $12:C1B8: 65 00
AND #$00FF              ; $12:C1BA: 29 FF 00
TAX                     ; $12:C1BD: AA
SEP #$20                ; $12:C1BE: E2 20
LDY $02F6               ; $12:C1C0: AC F6 02
LDA $0801,y             ; $12:C1C3: B9 01 08
ADC.w DATA_11998A-4,x   ; $12:C1C6: 7D 86 99
STA $0801,y             ; $12:C1C9: 99 01 08
LDA $0800,y             ; $12:C1CC: B9 00 08
ADC.w DATA_119982-4,x   ; $12:C1CF: 7D 7E 99
STA $0800,y             ; $12:C1D2: 99 00 08
SEP #$10                ; $12:C1D5: E2 10
LDX $12                 ; $12:C1D7: A6 12

CODE_12C1D9:
RTS                     ; $12:C1D9: 60

CODE_12C1DA:
LDA $28                 ; $12:C1DA: A5 28
SBC $29,x               ; $12:C1DC: F5 29
STA $0F                 ; $12:C1DE: 85 0F
LDA $14                 ; $12:C1E0: A5 14
LDY #$00                ; $12:C1E2: A0 00
SBC $15,x               ; $12:C1E4: F5 15
BCS CODE_12C1E9         ; $12:C1E6: B0 01
INY                     ; $12:C1E8: C8

CODE_12C1E9:
RTS                     ; $12:C1E9: 60

CODE_12C1EA:
TXA                     ; $12:C1EA: 8A
CLC                     ; $12:C1EB: 18
ADC #$0A                ; $12:C1EC: 69 0A
TAX                     ; $12:C1EE: AA

CODE_12C1EF:
LDA $3D,x               ; $12:C1EF: B5 3D
CLC                     ; $12:C1F1: 18
ADC $04CD,x             ; $12:C1F2: 7D CD 04
PHA                     ; $12:C1F5: 48
ASL A                   ; $12:C1F6: 0A
ASL A                   ; $12:C1F7: 0A
ASL A                   ; $12:C1F8: 0A
ASL A                   ; $12:C1F9: 0A
STA $01                 ; $12:C1FA: 85 01
PLA                     ; $12:C1FC: 68
LSR A                   ; $12:C1FD: 4A
LSR A                   ; $12:C1FE: 4A
LSR A                   ; $12:C1FF: 4A
LSR A                   ; $12:C200: 4A
CMP #$08                ; $12:C201: C9 08
BCC CODE_12C207         ; $12:C203: 90 02
ORA #$F0                ; $12:C205: 09 F0

CODE_12C207:
STA $00                 ; $12:C207: 85 00
LDY #$00                ; $12:C209: A0 00
ASL A                   ; $12:C20B: 0A
BCC CODE_12C20F         ; $12:C20C: 90 01
DEY                     ; $12:C20E: 88

CODE_12C20F:
STY $02                 ; $12:C20F: 84 02
LDA $0408,x             ; $12:C211: BD 08 04
CLC                     ; $12:C214: 18
ADC $01                 ; $12:C215: 65 01
STA $0408,x             ; $12:C217: 9D 08 04
LDA $29,x               ; $12:C21A: B5 29
ADC $00                 ; $12:C21C: 65 00
STA $29,x               ; $12:C21E: 95 29
ROL $01                 ; $12:C220: 26 01
CPX #$0A                ; $12:C222: E0 0A
BCS CODE_12C23D         ; $12:C224: B0 17
LDA #$00                ; $12:C226: A9 00
STA $04A4,x             ; $12:C228: 9D A4 04
LDA $90,x               ; $12:C22B: B5 90
CMP #$1B                ; $12:C22D: C9 1B
BEQ CODE_12C23D         ; $12:C22F: F0 0C
CMP #$0F                ; $12:C231: C9 0F
BEQ CODE_12C23D         ; $12:C233: F0 08
CMP #$10                ; $12:C235: C9 10
BEQ CODE_12C23D         ; $12:C237: F0 04
LDY $EB                 ; $12:C239: A4 EB
BEQ CODE_12C245         ; $12:C23B: F0 08

CODE_12C23D:
LSR $01                 ; $12:C23D: 46 01
LDA $15,x               ; $12:C23F: B5 15
ADC $02                 ; $12:C241: 65 02
STA $15,x               ; $12:C243: 95 15

CODE_12C245:
LDX $12                 ; $12:C245: A6 12
RTS                     ; $12:C247: 60

CODE_12C248:
LDA $3D,x               ; $12:C248: B5 3D
EOR #$FF                ; $12:C24A: 49 FF
CLC                     ; $12:C24C: 18
ADC #$01                ; $12:C24D: 69 01
STA $3D,x               ; $12:C24F: 95 3D
BEQ CODE_12C259         ; $12:C251: F0 06
LDA $6F,x               ; $12:C253: B5 6F
EOR #$03                ; $12:C255: 49 03
STA $6F,x               ; $12:C257: 95 6F

CODE_12C259:
JMP CODE_12C1EF         ; $12:C259: 4C EF C1
JSR CODE_12B1F9         ; $12:C25C: 20 F9 B1
RTL                     ; $12:C25F: 6B

ORG $12C270

CODE_12C270:
JSR CODE_12AF2D         ; $12:C270: 20 2D AF
LDA #$04                ; $12:C273: A9 04
STA $0465,x             ; $12:C275: 9D 65 04
LDA #$00                ; $12:C278: A9 00
STA $3D,x               ; $12:C27A: 95 3D
LDA $29,x               ; $12:C27C: B5 29
CLC                     ; $12:C27E: 18
ADC #$04                ; $12:C27F: 69 04
STA $29,x               ; $12:C281: 95 29
JMP CODE_129F7A         ; $12:C283: 4C 7A 9F

CODE_12C286:
LDA $045C,x             ; $12:C286: BD 5C 04
ORA $0438,x             ; $12:C289: 1D 38 04
BEQ CODE_12C291         ; $12:C28C: F0 03
JMP CODE_12BD29         ; $12:C28E: 4C 29 BD

CODE_12C291:
JSR CODE_12BB16         ; $12:C291: 20 16 BB
LDA $33,x               ; $12:C294: B5 33
CMP #$70                ; $12:C296: C9 70
BCC CODE_12C29D         ; $12:C298: 90 03
JSR CODE_12B659         ; $12:C29A: 20 59 B6

CODE_12C29D:
LDA $86,x               ; $12:C29D: B5 86
BNE CODE_12C2CF         ; $12:C29F: D0 2E
LDA $79,x               ; $12:C2A1: B5 79
AND #$3F                ; $12:C2A3: 29 3F
BNE CODE_12C2BE         ; $12:C2A5: D0 17
LDA $0587               ; $12:C2A7: AD 87 05
AND #$03                ; $12:C2AA: 29 03
BEQ CODE_12C2BE         ; $12:C2AC: F0 10
LDY $04C1               ; $12:C2AE: AC C1 04
DEY                     ; $12:C2B1: 88
CPY #$80                ; $12:C2B2: C0 80
BCC CODE_12C2BE         ; $12:C2B4: 90 08
LDA #$7F                ; $12:C2B6: A9 7F
STA $86,x               ; $12:C2B8: 95 86
LDY #$00                ; $12:C2BA: A0 00
BEQ CODE_12C2CA         ; $12:C2BC: F0 0C

CODE_12C2BE:
INC $79,x               ; $12:C2BE: F6 79
LDY #$F0                ; $12:C2C0: A0 F0
LDA $79,x               ; $12:C2C2: B5 79
AND #$20                ; $12:C2C4: 29 20
BEQ CODE_12C2CA         ; $12:C2C6: F0 02
LDY #$10                ; $12:C2C8: A0 10

CODE_12C2CA:
STY $3D,x               ; $12:C2CA: 94 3D
JMP CODE_12C328         ; $12:C2CC: 4C 28 C3

CODE_12C2CF:
CMP #$50                ; $12:C2CF: C9 50
BNE CODE_12C2D3         ; $12:C2D1: D0 00

CODE_12C2D3:
CMP #$20                ; $12:C2D3: C9 20
BNE CODE_12C328         ; $12:C2D5: D0 51
LDA $0587               ; $12:C2D7: AD 87 05
AND #$07                ; $12:C2DA: 29 07
TAY                     ; $12:C2DC: A8
LDA.w DATA_119A8C,y     ; $12:C2DD: B9 8C 9A
STA $47,x               ; $12:C2E0: 95 47
DEC $33,x               ; $12:C2E2: D6 33
JSR CODE_12B335         ; $12:C2E4: 20 35 B3
BMI CODE_12C328         ; $12:C2E7: 30 3F
LDY $00                 ; $12:C2E9: A4 00
LDA $33,x               ; $12:C2EB: B5 33
SEC                     ; $12:C2ED: 38
SBC #$00                ; $12:C2EE: E9 00
STA $0033,y             ; $12:C2F0: 99 33 00
LDA $1F,x               ; $12:C2F3: B5 1F
SBC #$00                ; $12:C2F5: E9 00
STA $001F,y             ; $12:C2F7: 99 1F 00
LDA $29,x               ; $12:C2FA: B5 29
CLC                     ; $12:C2FC: 18
ADC #$08                ; $12:C2FD: 69 08
STA $0029,y             ; $12:C2FF: 99 29 00
LDA $15,x               ; $12:C302: B5 15
ADC #$00                ; $12:C304: 69 00
STA $0015,y             ; $12:C306: 99 15 00
LDX $00                 ; $12:C309: A6 00
LDA #$22                ; $12:C30B: A9 22
STA $90,x               ; $12:C30D: 95 90
LDA #$37                ; $12:C30F: A9 37
STA $1DE0               ; $12:C311: 8D E0 1D
LDA $0587               ; $12:C314: AD 87 05
AND #$07                ; $12:C317: 29 07
TAY                     ; $12:C319: A8
LDA.w DATA_119A84,y     ; $12:C31A: B9 84 9A
STA $47,x               ; $12:C31D: 95 47
LDA #$D0                ; $12:C31F: A9 D0
STA $3D,x               ; $12:C321: 95 3D
JSR CODE_129F7A         ; $12:C323: 20 7A 9F
LDX $12                 ; $12:C326: A6 12

CODE_12C328:
JSR CODE_12C1EF         ; $12:C328: 20 EF C1
JSR CODE_12A0B2         ; $12:C32B: 20 B2 A0
JMP CODE_12BD29         ; $12:C32E: 4C 29 BD

CODE_12C331:
LDY $51,x               ; $12:C331: B4 51
DEY                     ; $12:C333: 88
TYA                     ; $12:C334: 98
ORA $045C,x             ; $12:C335: 1D 5C 04
BEQ CODE_12C342         ; $12:C338: F0 08
LDY #$D0                ; $12:C33A: A0 D0
LDA #$00                ; $12:C33C: A9 00
STA $86,x               ; $12:C33E: 95 86
BEQ CODE_12C364         ; $12:C340: F0 22

CODE_12C342:
LDY #$C0                ; $12:C342: A0 C0
LDA $10                 ; $12:C344: A5 10
AND #$10                ; $12:C346: 29 10
BNE CODE_12C34C         ; $12:C348: D0 02
LDY #$C4                ; $12:C34A: A0 C4

CODE_12C34C:
LDA $86,x               ; $12:C34C: B5 86
BEQ CODE_12C364         ; $12:C34E: F0 14
LDY #$C8                ; $12:C350: A0 C8
CMP #$60                ; $12:C352: C9 60
BCS CODE_12C364         ; $12:C354: B0 0E
LDY #$C0                ; $12:C356: A0 C0
CMP #$40                ; $12:C358: C9 40
BCS CODE_12C364         ; $12:C35A: B0 08
LDY #$C4                ; $12:C35C: A0 C4
CMP #$20                ; $12:C35E: C9 20
BCS CODE_12C364         ; $12:C360: B0 02
LDY #$C0                ; $12:C362: A0 C0

CODE_12C364:
LDA #$02                ; $12:C364: A9 02
STA $6F,x               ; $12:C366: 95 6F
TYA                     ; $12:C368: 98
JSR CODE_12BDD5         ; $12:C369: 20 D5 BD
LDY #$C4                ; $12:C36C: A0 C4
LDA $10                 ; $12:C36E: A5 10
AND #$10                ; $12:C370: 29 10
BNE CODE_12C376         ; $12:C372: D0 02
LDY #$C0                ; $12:C374: A0 C0

CODE_12C376:
LDA $86,x               ; $12:C376: B5 86
BEQ CODE_12C38E         ; $12:C378: F0 14
LDY #$CC                ; $12:C37A: A0 CC
CMP #$60                ; $12:C37C: C9 60
BCS CODE_12C38E         ; $12:C37E: B0 0E
LDY #$C0                ; $12:C380: A0 C0
CMP #$40                ; $12:C382: C9 40
BCS CODE_12C38E         ; $12:C384: B0 08
LDY #$C4                ; $12:C386: A0 C4
CMP #$20                ; $12:C388: C9 20
BCS CODE_12C38E         ; $12:C38A: B0 02
LDY #$C0                ; $12:C38C: A0 C0

CODE_12C38E:
LDA $045C,x             ; $12:C38E: BD 5C 04
BEQ CODE_12C395         ; $12:C391: F0 02
LDY #$D0                ; $12:C393: A0 D0

CODE_12C395:
LDA $0429               ; $12:C395: AD 29 04
CLC                     ; $12:C398: 18
ADC #$10                ; $12:C399: 69 10
STA $0429               ; $12:C39B: 8D 29 04
ASL $ED                 ; $12:C39E: 06 ED
ASL $ED                 ; $12:C3A0: 06 ED
LDA $86,x               ; $12:C3A2: B5 86
CMP #$60                ; $12:C3A4: C9 60
BCS CODE_12C3AA         ; $12:C3A6: B0 02
LSR $6F,x               ; $12:C3A8: 56 6F

CODE_12C3AA:
TYA                     ; $12:C3AA: 98
PHA                     ; $12:C3AB: 48
JSL CODE_14E483         ; $12:C3AC: 22 83 E4 14
LDA $02F8               ; $12:C3B0: AD F8 02
STA $02F6               ; $12:C3B3: 8D F6 02
LDA $02F9               ; $12:C3B6: AD F9 02
STA $02F7               ; $12:C3B9: 8D F7 02
PLA                     ; $12:C3BC: 68
JSR CODE_12BDD5         ; $12:C3BD: 20 D5 BD
LDA $045C,x             ; $12:C3C0: BD 5C 04
BEQ CODE_12C3ED         ; $12:C3C3: F0 28
LDA $6F,x               ; $12:C3C5: B5 6F
PHA                     ; $12:C3C7: 48
LDA $10                 ; $12:C3C8: A5 10
AND #$08                ; $12:C3CA: 29 08
LSR A                   ; $12:C3CC: 4A
LSR A                   ; $12:C3CD: 4A
LSR A                   ; $12:C3CE: 4A
STA $6F,x               ; $12:C3CF: 95 6F
LDA #$50                ; $12:C3D1: A9 50
STA $02F6               ; $12:C3D3: 8D F6 02
STZ $02F7               ; $12:C3D6: 9C F7 02
LSR $ED                 ; $12:C3D9: 46 ED
LDA $0429               ; $12:C3DB: AD 29 04
SEC                     ; $12:C3DE: 38
SBC #$08                ; $12:C3DF: E9 08
STA $0429               ; $12:C3E1: 8D 29 04
LDY #$D4                ; $12:C3E4: A0 D4
TYA                     ; $12:C3E6: 98
JSR CODE_12BDD5         ; $12:C3E7: 20 D5 BD
PLA                     ; $12:C3EA: 68
STA $6F,x               ; $12:C3EB: 95 6F

CODE_12C3ED:
LDA $86,x               ; $12:C3ED: B5 86
BEQ CODE_12C466         ; $12:C3EF: F0 75
LSR A                   ; $12:C3F1: 4A
LSR A                   ; $12:C3F2: 4A
LSR A                   ; $12:C3F3: 4A
LSR A                   ; $12:C3F4: 4A
LSR A                   ; $12:C3F5: 4A
BEQ CODE_12C465         ; $12:C3F6: F0 6D
TAY                     ; $12:C3F8: A8
LDA $29,x               ; $12:C3F9: B5 29
PHA                     ; $12:C3FB: 48
CLC                     ; $12:C3FC: 18
ADC.w DATA_119A93,y     ; $12:C3FD: 79 93 9A
STA $29,x               ; $12:C400: 95 29
SEC                     ; $12:C402: 38
SBC $04C1               ; $12:C403: ED C1 04
STA $0429               ; $12:C406: 8D 29 04
LDA $33,x               ; $12:C409: B5 33
CLC                     ; $12:C40B: 18
ADC.w DATA_119A96,y     ; $12:C40C: 79 96 9A
STA $042C               ; $12:C40F: 8D 2C 04
LDA $86,x               ; $12:C412: B5 86
CMP #$30                ; $12:C414: C9 30
BCC CODE_12C42A         ; $12:C416: 90 12
CMP #$40                ; $12:C418: C9 40
BCS CODE_12C42A         ; $12:C41A: B0 0E
LSR A                   ; $12:C41C: 4A
AND #$07                ; $12:C41D: 29 07
TAY                     ; $12:C41F: A8
LDA $042C               ; $12:C420: AD 2C 04
SEC                     ; $12:C423: 38
SBC.w DATA_119A9A,y     ; $12:C424: F9 9A 9A
STA $042C               ; $12:C427: 8D 2C 04

CODE_12C42A:
JSR CODE_12A6F9         ; $12:C42A: 20 F9 A6
LDY #$40                ; $12:C42D: A0 40
STY $02F6               ; $12:C42F: 8C F6 02
STZ $02F7               ; $12:C432: 9C F7 02
LDA $65,x               ; $12:C435: B5 65
PHA                     ; $12:C437: 48
LDA #$02                ; $12:C438: A9 02
STA $65,x               ; $12:C43A: 95 65
LDA $046E,x             ; $12:C43C: BD 6E 04
PHA                     ; $12:C43F: 48
LDA #$10                ; $12:C440: A9 10
STA $046E,x             ; $12:C442: 9D 6E 04
LDA #$D8                ; $12:C445: A9 D8
JSR CODE_12BDD5         ; $12:C447: 20 D5 BD
REP #$10                ; $12:C44A: C2 10
LDY $02F6               ; $12:C44C: AC F6 02
LDA $0803,y             ; $12:C44F: B9 03 08
AND #$F1                ; $12:C452: 29 F1
ORA #$06                ; $12:C454: 09 06
STA $0803,y             ; $12:C456: 99 03 08
SEP #$10                ; $12:C459: E2 10
PLA                     ; $12:C45B: 68
STA $046E,x             ; $12:C45C: 9D 6E 04
PLA                     ; $12:C45F: 68
STA $65,x               ; $12:C460: 95 65
PLA                     ; $12:C462: 68
STA $29,x               ; $12:C463: 95 29

CODE_12C465:
RTS                     ; $12:C465: 60

CODE_12C466:
LDX $12                 ; $12:C466: A6 12
RTS                     ; $12:C468: 60

CODE_12C469:
LDA #$00                ; $12:C469: A9 00
STA $045C,x             ; $12:C46B: 9D 5C 04
JSR CODE_12BB16         ; $12:C46E: 20 16 BB
JSR CODE_12BA46         ; $12:C471: 20 46 BA
JSR CODE_12C1EF         ; $12:C474: 20 EF C1
JSR CODE_12A0B2         ; $12:C477: 20 B2 A0
JSR CODE_12DDAB         ; $12:C47A: 20 AB DD
LDA $5B,x               ; $12:C47D: B5 5B
AND #$03                ; $12:C47F: 29 03
BEQ CODE_12C489         ; $12:C481: F0 06
JSR CODE_12C248         ; $12:C483: 20 48 C2
JSR CODE_12B63B         ; $12:C486: 20 3B B6

CODE_12C489:
LDA $5B,x               ; $12:C489: B5 5B
AND #$04                ; $12:C48B: 29 04
BEQ CODE_12C49F         ; $12:C48D: F0 10
LDA $33,x               ; $12:C48F: B5 33
AND #$F0                ; $12:C491: 29 F0
STA $33,x               ; $12:C493: 95 33
LDA $47,x               ; $12:C495: B5 47
LSR A                   ; $12:C497: 4A
EOR #$FF                ; $12:C498: 49 FF
CLC                     ; $12:C49A: 18
ADC #$01                ; $12:C49B: 69 01
STA $47,x               ; $12:C49D: 95 47

CODE_12C49F:
JMP CODE_12BD29         ; $12:C49F: 4C 29 BD

CODE_12C4A2:
LDA $00A8,x             ; $12:C4A2: BD A8 00
ORA $0438,x             ; $12:C4A5: 1D 38 04
BNE CODE_12C4E1         ; $12:C4A8: D0 37
LDA $10                 ; $12:C4AA: A5 10
STA $00                 ; $12:C4AC: 85 00
LDA $3D,x               ; $12:C4AE: B5 3D
BPL CODE_12C4B7         ; $12:C4B0: 10 05
EOR #$FF                ; $12:C4B2: 49 FF
CLC                     ; $12:C4B4: 18
ADC #$01                ; $12:C4B5: 69 01

CODE_12C4B7:
CMP #$20                ; $12:C4B7: C9 20
BCS CODE_12C4C3         ; $12:C4B9: B0 08
LSR $00                 ; $12:C4BB: 46 00
CMP #$08                ; $12:C4BD: C9 08
BCS CODE_12C4C3         ; $12:C4BF: B0 02
LSR $00                 ; $12:C4C1: 46 00

CODE_12C4C3:
LDA $00                 ; $12:C4C3: A5 00
CLC                     ; $12:C4C5: 18
ADC #$04                ; $12:C4C6: 69 04
AND #$08                ; $12:C4C8: 29 08
LSR A                   ; $12:C4CA: 4A
LSR A                   ; $12:C4CB: 4A
LSR A                   ; $12:C4CC: 4A
LDY $3D,x               ; $12:C4CD: B4 3D
BPL CODE_12C4D3         ; $12:C4CF: 10 02
EOR #$01                ; $12:C4D1: 49 01

CODE_12C4D3:
STA $6F,x               ; $12:C4D3: 95 6F
LDA $00                 ; $12:C4D5: A5 00
AND #$08                ; $12:C4D7: 29 08
ASL A                   ; $12:C4D9: 0A
ASL A                   ; $12:C4DA: 0A
ASL A                   ; $12:C4DB: 0A
ASL A                   ; $12:C4DC: 0A
ORA #$02                ; $12:C4DD: 09 02
STA $65,x               ; $12:C4DF: 95 65

CODE_12C4E1:
JSR CODE_12BDC9         ; $12:C4E1: 20 C9 BD
REP #$10                ; $12:C4E4: C2 10
LDY $02F6               ; $12:C4E6: AC F6 02
LDA $0803,y             ; $12:C4E9: B9 03 08
AND #$F1                ; $12:C4EC: 29 F1
ORA #$06                ; $12:C4EE: 09 06
STA $0803,y             ; $12:C4F0: 99 03 08
SEP #$10                ; $12:C4F3: E2 10
RTS                     ; $12:C4F5: 60

CODE_12C4F6:
JSR CODE_12DDAB         ; $12:C4F6: 20 AB DD
LDA $10                 ; $12:C4F9: A5 10
AND #$03                ; $12:C4FB: 29 03
BNE CODE_12C509         ; $12:C4FD: D0 0A
DEC $B1,x               ; $12:C4FF: D6 B1
BNE CODE_12C509         ; $12:C501: D0 06
STA $04B2               ; $12:C503: 8D B2 04
JMP CODE_12A83B         ; $12:C506: 4C 3B A8

CODE_12C509:
LDA $04B2               ; $12:C509: AD B2 04
BEQ CODE_12C51C         ; $12:C50C: F0 0E
LDA $46                 ; $12:C50E: A5 46
BPL CODE_12C51C         ; $12:C510: 10 0A
LDA #$00                ; $12:C512: A9 00
STA $47,x               ; $12:C514: 95 47
STA $04B2               ; $12:C516: 8D B2 04
JMP CODE_12C5C9         ; $12:C519: 4C C9 C5

CODE_12C51C:
LDA $5B,x               ; $12:C51C: B5 5B
AND #$20                ; $12:C51E: 29 20
STA $04B2               ; $12:C520: 8D B2 04
BNE CODE_12C528         ; $12:C523: D0 03
JMP CODE_12C5B6         ; $12:C525: 4C B6 C5

CODE_12C528:
LDA $3D,x               ; $12:C528: B5 3D
BEQ CODE_12C532         ; $12:C52A: F0 06
LDA $6F,x               ; $12:C52C: B5 6F
AND #$01                ; $12:C52E: 29 01
STA $9D                 ; $12:C530: 85 9D

CODE_12C532:
LDA $33,x               ; $12:C532: B5 33
SEC                     ; $12:C534: 38
SBC #$1A                ; $12:C535: E9 1A
STA $32                 ; $12:C537: 85 32
LDA $1F,x               ; $12:C539: B5 1F
SBC #$00                ; $12:C53B: E9 00
STA $1E                 ; $12:C53D: 85 1E
LDA $28                 ; $12:C53F: A5 28
SEC                     ; $12:C541: 38
SBC #$08                ; $12:C542: E9 08
STA $29,x               ; $12:C544: 95 29
LDA $14                 ; $12:C546: A5 14
SBC #$00                ; $12:C548: E9 00
STA $15,x               ; $12:C54A: 95 15
LDY #$01                ; $12:C54C: A0 01
LDA $3D,x               ; $12:C54E: B5 3D
BMI CODE_12C554         ; $12:C550: 30 02
LDY #$FF                ; $12:C552: A0 FF

CODE_12C554:
STY $1206               ; $12:C554: 8C 06 12
LDA $F6                 ; $12:C557: A5 F6
AND #$03                ; $12:C559: 29 03
TAY                     ; $12:C55B: A8
AND $5A                 ; $12:C55C: 25 5A
BNE CODE_12C572         ; $12:C55E: D0 12
LDA.w DATA_119AA2,y     ; $12:C560: B9 A2 9A
CMP $3D,x               ; $12:C563: D5 3D
BEQ CODE_12C56F         ; $12:C565: F0 08
LDA $3D,x               ; $12:C567: B5 3D
CLC                     ; $12:C569: 18
ADC $1206,y             ; $12:C56A: 79 06 12
STA $3D,x               ; $12:C56D: 95 3D

CODE_12C56F:
JMP CODE_12C576         ; $12:C56F: 4C 76 C5

CODE_12C572:
LDA #$00                ; $12:C572: A9 00
STA $3D,x               ; $12:C574: 95 3D

CODE_12C576:
LDY #$01                ; $12:C576: A0 01
LDA $47,x               ; $12:C578: B5 47
BMI CODE_12C57E         ; $12:C57A: 30 02
LDY #$FF                ; $12:C57C: A0 FF

CODE_12C57E:
STY $1206               ; $12:C57E: 8C 06 12
LDA #$20                ; $12:C581: A9 20
CMP $042C               ; $12:C583: CD 2C 04
LDA #$00                ; $12:C586: A9 00
ROL A                   ; $12:C588: 2A
ASL A                   ; $12:C589: 0A
ASL A                   ; $12:C58A: 0A
ASL A                   ; $12:C58B: 0A
AND $F6                 ; $12:C58C: 25 F6
BNE CODE_12C5A3         ; $12:C58E: D0 13
LDA $5B,x               ; $12:C590: B5 5B
LSR A                   ; $12:C592: 4A
LSR A                   ; $12:C593: 4A
AND #$03                ; $12:C594: 29 03
STA $00                 ; $12:C596: 85 00
LDA $F6                 ; $12:C598: A5 F6
LSR A                   ; $12:C59A: 4A
LSR A                   ; $12:C59B: 4A
AND #$03                ; $12:C59C: 29 03
TAY                     ; $12:C59E: A8
AND $00                 ; $12:C59F: 25 00
BEQ CODE_12C5A7         ; $12:C5A1: F0 04

CODE_12C5A3:
LDA #$00                ; $12:C5A3: A9 00
BEQ CODE_12C5B4         ; $12:C5A5: F0 0D

CODE_12C5A7:
LDA.w DATA_119AA2,y     ; $12:C5A7: B9 A2 9A
CMP $47,x               ; $12:C5AA: D5 47
BEQ CODE_12C5B6         ; $12:C5AC: F0 08
LDA $47,x               ; $12:C5AE: B5 47
CLC                     ; $12:C5B0: 18
ADC $1206,y             ; $12:C5B1: 79 06 12

CODE_12C5B4:
STA $47,x               ; $12:C5B4: 95 47

CODE_12C5B6:
JSR CODE_12C1EF         ; $12:C5B6: 20 EF C1
JSR CODE_12C1EA         ; $12:C5B9: 20 EA C1
LDA $B1,x               ; $12:C5BC: B5 B1
CMP #$20                ; $12:C5BE: C9 20
BCS CODE_12C5C9         ; $12:C5C0: B0 07
LDA $10                 ; $12:C5C2: A5 10
AND #$02                ; $12:C5C4: 29 02
BNE CODE_12C5C9         ; $12:C5C6: D0 01
RTS                     ; $12:C5C8: 60

CODE_12C5C9:
LDA $02F6               ; $12:C5C9: AD F6 02
STA $02F8               ; $12:C5CC: 8D F8 02
LDA $02F7               ; $12:C5CF: AD F7 02
STA $02F9               ; $12:C5D2: 8D F9 02
JMP CODE_12C6E5         ; $12:C5D5: 4C E5 C6

CODE_12C5D8:
JSR CODE_12B331         ; $12:C5D8: 20 31 B3

; Check if free sprite slot is available.
; If not, return.
BMI CODE_12C610         ; $12:C5DB: 30 33

; New sprite index.
LDX $00                 ; $12:C5DD: A6 00

; Old sprite index.
LDY $12                 ; $12:C5DF: A4 12
LDA #$00                ; $12:C5E1: A9 00
STA $3D,x               ; $12:C5E3: 95 3D

; Zero X speed.
; Zero Y speed.
; (Why not simply use STZ $3D,x STZ $47,x?)
STA $47,x               ; $12:C5E5: 95 47
LDA #$41                ; $12:C5E7: A9 41

; Generate carpet sprite.
STA $90,x               ; $12:C5E9: 95 90
LDA $0029,y             ; $12:C5EB: B9 29 00
SEC                     ; $12:C5EE: 38
SBC #$08                ; $12:C5EF: E9 08
STA $29,x               ; $12:C5F1: 95 29
LDA $0015,y             ; $12:C5F3: B9 15 00
SBC #$00                ; $12:C5F6: E9 00

; Generate carpet 8 pixels to the left from Pidgit.
STA $15,x               ; $12:C5F8: 95 15
LDA $0033,y             ; $12:C5FA: B9 33 00
CLC                     ; $12:C5FD: 18
ADC #$0E                ; $12:C5FE: 69 0E
STA $33,x               ; $12:C600: 95 33
LDA $001F,y             ; $12:C602: B9 1F 00
ADC #$00                ; $12:C605: 69 00

; ...and 14 pixels below Pidgit.
STA $1F,x               ; $12:C607: 95 1F
JSR CODE_129F7A         ; $12:C609: 20 7A 9F
LDA #$A0                ; $12:C60C: A9 A0

; Amount of time carpet will remain.
STA $B1,x               ; $12:C60E: 95 B1

; X = old sprite index.

CODE_12C610:
LDX $12                 ; $12:C610: A6 12

; Return.
RTS                     ; $12:C612: 60

CODE_12C613:
JSR CODE_12BB16         ; $12:C613: 20 16 BB
INC $9F,x               ; $12:C616: F6 9F
LDA $042F,x             ; $12:C618: BD 2F 04
BEQ CODE_12C629         ; $12:C61B: F0 0C
LDA $65,x               ; $12:C61D: B5 65
ORA #$80                ; $12:C61F: 09 80
STA $65,x               ; $12:C621: 95 65
JSR CODE_12C68E         ; $12:C623: 20 8E C6
JMP CODE_12A0AA         ; $12:C626: 4C AA A0

CODE_12C629:
JSR CODE_12BA46         ; $12:C629: 20 46 BA
LDA $B1,x               ; $12:C62C: B5 B1
BEQ CODE_12C647         ; $12:C62E: F0 17
DEC $47,x               ; $12:C630: D6 47
BPL CODE_12C644         ; $12:C632: 10 10
LDA $33,x               ; $12:C634: B5 33
CMP #$30                ; $12:C636: C9 30
BCS CODE_12C644         ; $12:C638: B0 0A
LDA #$00                ; $12:C63A: A9 00
STA $B1,x               ; $12:C63C: 95 B1
STA $3D,x               ; $12:C63E: 95 3D
STA $47,x               ; $12:C640: 95 47
DEC $86,x               ; $12:C642: D6 86

CODE_12C644:
JMP CODE_12C688         ; $12:C644: 4C 88 C6

CODE_12C647:
LDA $86,x               ; $12:C647: B5 86
BNE CODE_12C65C         ; $12:C649: D0 11
LDA #$30                ; $12:C64B: A9 30
STA $47,x               ; $12:C64D: 95 47
JSR CODE_12C1DA         ; $12:C64F: 20 DA C1
LDA.w DATA_119ABA,y     ; $12:C652: B9 BA 9A
STA $3D,x               ; $12:C655: 95 3D
INC $B1,x               ; $12:C657: F6 B1
JMP CODE_12C68E         ; $12:C659: 4C 8E C6

CODE_12C65C:
LDA $0480,x             ; $12:C65C: BD 80 04
AND #$01                ; $12:C65F: 29 01
TAY                     ; $12:C661: A8
LDA $47,x               ; $12:C662: B5 47
CLC                     ; $12:C664: 18
ADC.w DATA_119AB2,y     ; $12:C665: 79 B2 9A
STA $47,x               ; $12:C668: 95 47
CMP.w DATA_119AB4,y     ; $12:C66A: D9 B4 9A
BNE CODE_12C672         ; $12:C66D: D0 03
INC $0480,x             ; $12:C66F: FE 80 04

CODE_12C672:
LDA $0477,x             ; $12:C672: BD 77 04
AND #$01                ; $12:C675: 29 01
TAY                     ; $12:C677: A8
LDA $3D,x               ; $12:C678: B5 3D
CLC                     ; $12:C67A: 18
ADC.w DATA_119AB6,y     ; $12:C67B: 79 B6 9A
STA $3D,x               ; $12:C67E: 95 3D
CMP.w DATA_119AB8,y     ; $12:C680: D9 B8 9A
BNE CODE_12C688         ; $12:C683: D0 03
INC $0477,x             ; $12:C685: FE 77 04

CODE_12C688:
JSR CODE_12C1EA         ; $12:C688: 20 EA C1
JSR CODE_12C1EF         ; $12:C68B: 20 EF C1

CODE_12C68E:
JSR CODE_12BDC9         ; $12:C68E: 20 C9 BD
LDA $51,x               ; $12:C691: B5 51
SEC                     ; $12:C693: 38
SBC #$01                ; $12:C694: E9 01
ORA $042F,x             ; $12:C696: 1D 2F 04
ORA $A8,x               ; $12:C699: 15 A8
BNE CODE_12C6E2         ; $12:C69B: D0 45
JSL CODE_14E483         ; $12:C69D: 22 83 E4 14
LDA #$45                ; $12:C6A1: A9 45
STA $65,x               ; $12:C6A3: 95 65
LDA $29,x               ; $12:C6A5: B5 29
PHA                     ; $12:C6A7: 48
SEC                     ; $12:C6A8: 38
SBC #$08                ; $12:C6A9: E9 08
STA $29,x               ; $12:C6AB: 95 29
LDA $15,x               ; $12:C6AD: B5 15
PHA                     ; $12:C6AF: 48
SBC #$00                ; $12:C6B0: E9 00
STA $15,x               ; $12:C6B2: 95 15
JSR CODE_12A6F9         ; $12:C6B4: 20 F9 A6
PLA                     ; $12:C6B7: 68
STA $15,x               ; $12:C6B8: 95 15
PLA                     ; $12:C6BA: 68
STA $29,x               ; $12:C6BB: 95 29
LDA $042C               ; $12:C6BD: AD 2C 04
CLC                     ; $12:C6C0: 18
ADC #$0C                ; $12:C6C1: 69 0C
STA $042C               ; $12:C6C3: 8D 2C 04
LDA $021F               ; $12:C6C6: AD 1F 02
XBA                     ; $12:C6C9: EB
LDA $0429               ; $12:C6CA: AD 29 04
REP #$20                ; $12:C6CD: C2 20
SBC #$0007              ; $12:C6CF: E9 07 00
SEP #$20                ; $12:C6D2: E2 20
STA $0429               ; $12:C6D4: 8D 29 04
XBA                     ; $12:C6D7: EB
STA $021F               ; $12:C6D8: 8D 1F 02
JSR CODE_12C6E5         ; $12:C6DB: 20 E5 C6
LDA #$0D                ; $12:C6DE: A9 0D
STA $65,x               ; $12:C6E0: 95 65

CODE_12C6E2:
SEP #$20                ; $12:C6E2: E2 20
RTS                     ; $12:C6E4: 60

CODE_12C6E5:
JSL CODE_15D21F         ; $12:C6E5: 22 1F D2 15
BCS CODE_12C6E2         ; $12:C6E9: B0 F7
REP #$30                ; $12:C6EB: C2 30
TYA                     ; $12:C6ED: 98
LSR A                   ; $12:C6EE: 4A
LSR A                   ; $12:C6EF: 4A
TAY                     ; $12:C6F0: A8
SEP #$20                ; $12:C6F1: E2 20
LDA #$00                ; $12:C6F3: A9 00
STA $0A20,y             ; $12:C6F5: 99 20 0A
STA $0A21,y             ; $12:C6F8: 99 21 0A
STY $0712               ; $12:C6FB: 8C 12 07
LDY $070B               ; $12:C6FE: AC 0B 07
LDA $0429               ; $12:C701: AD 29 04
STA $0E                 ; $12:C704: 85 0E
LDA $021F               ; $12:C706: AD 1F 02
STA $0F                 ; $12:C709: 85 0F
REP #$20                ; $12:C70B: C2 20
TYA                     ; $12:C70D: 98
LSR A                   ; $12:C70E: 4A
LSR A                   ; $12:C70F: 4A
TAY                     ; $12:C710: A8
LDA $12                 ; $12:C711: A5 12
AND #$00FF              ; $12:C713: 29 FF 00
TAX                     ; $12:C716: AA
LDA $ED                 ; $12:C717: A5 ED
AND #$00FF              ; $12:C719: 29 FF 00
STA $0716               ; $12:C71C: 8D 16 07
SEP #$20                ; $12:C71F: E2 20
LDA $044A,x             ; $12:C721: BD 4A 04
AND #$02                ; $12:C724: 29 02
LSR A                   ; $12:C726: 4A
LDX $0716               ; $12:C727: AE 16 07
BEQ CODE_12C72E         ; $12:C72A: F0 02
LDA #$00                ; $12:C72C: A9 00

CODE_12C72E:
STA $0714               ; $12:C72E: 8D 14 07
STZ $0715               ; $12:C731: 9C 15 07
REP #$20                ; $12:C734: C2 20
LDA $0E                 ; $12:C736: A5 0E
ADC $0714               ; $12:C738: 6D 14 07
STA $04                 ; $12:C73B: 85 04
CLC                     ; $12:C73D: 18
ADC #$0008              ; $12:C73E: 69 08 00
STA $06                 ; $12:C741: 85 06
LDA $04                 ; $12:C743: A5 04
CLC                     ; $12:C745: 18
ADC #$0010              ; $12:C746: 69 10 00
STA $08                 ; $12:C749: 85 08
LDA $04                 ; $12:C74B: A5 04
CLC                     ; $12:C74D: 18
ADC #$0018              ; $12:C74E: 69 18 00
STA $0A                 ; $12:C751: 85 0A
SEP #$20                ; $12:C753: E2 20
LDA #$00                ; $12:C755: A9 00
STA $0A20,y             ; $12:C757: 99 20 0A
STA $0A21,y             ; $12:C75A: 99 21 0A
LDA $EB                 ; $12:C75D: A5 EB
BEQ CODE_12C789         ; $12:C75F: F0 28
LDX #$0001              ; $12:C761: A2 01 00
LDA $05                 ; $12:C764: A5 05
BEQ CODE_12C76C         ; $12:C766: F0 04
TXA                     ; $12:C768: 8A
STA $0A20,y             ; $12:C769: 99 20 0A

CODE_12C76C:
LDA $07                 ; $12:C76C: A5 07
BEQ CODE_12C774         ; $12:C76E: F0 04
TXA                     ; $12:C770: 8A
STA $0A21,y             ; $12:C771: 99 21 0A

CODE_12C774:
LDY $0712               ; $12:C774: AC 12 07
LDA $09                 ; $12:C777: A5 09
BEQ CODE_12C77F         ; $12:C779: F0 04
TXA                     ; $12:C77B: 8A
STA $0A20,y             ; $12:C77C: 99 20 0A

CODE_12C77F:
LDA $0B                 ; $12:C77F: A5 0B
BEQ CODE_12C787         ; $12:C781: F0 04
TXA                     ; $12:C783: 8A
STA $0A21,y             ; $12:C784: 99 21 0A

CODE_12C787:
BRA CODE_12C7B3         ; $12:C787: 80 2A

CODE_12C789:
LDX $070B               ; $12:C789: AE 0B 07
JSR CODE_12C7B8         ; $12:C78C: 20 B8 C7
LDX $070D               ; $12:C78F: AE 0D 07
JSR CODE_12C7B8         ; $12:C792: 20 B8 C7
REP #$20                ; $12:C795: C2 20
LDA $070B               ; $12:C797: AD 0B 07
CLC                     ; $12:C79A: 18
ADC #$0004              ; $12:C79B: 69 04 00
TAX                     ; $12:C79E: AA
SEP #$20                ; $12:C79F: E2 20
JSR CODE_12C7B8         ; $12:C7A1: 20 B8 C7
REP #$20                ; $12:C7A4: C2 20
LDA $070D               ; $12:C7A6: AD 0D 07
CLC                     ; $12:C7A9: 18
ADC #$0004              ; $12:C7AA: 69 04 00
TAX                     ; $12:C7AD: AA
SEP #$20                ; $12:C7AE: E2 20
JSR CODE_12C7B8         ; $12:C7B0: 20 B8 C7

CODE_12C7B3:
SEP #$30                ; $12:C7B3: E2 30
LDX $12                 ; $12:C7B5: A6 12
RTS                     ; $12:C7B7: 60

CODE_12C7B8:
LDA $0800,x             ; $12:C7B8: BD 00 08
CMP #$F8                ; $12:C7BB: C9 F8
BCC CODE_12C7F7         ; $12:C7BD: 90 38
PHX                     ; $12:C7BF: DA
JSL CODE_14E483         ; $12:C7C0: 22 83 E4 14
REP #$10                ; $12:C7C4: C2 10
PLX                     ; $12:C7C6: FA
LDY $02F8               ; $12:C7C7: AC F8 02
LDA $0800,x             ; $12:C7CA: BD 00 08
STA $0800,y             ; $12:C7CD: 99 00 08
LDA $0801,x             ; $12:C7D0: BD 01 08
STA $0801,y             ; $12:C7D3: 99 01 08
LDA $0802,x             ; $12:C7D6: BD 02 08
STA $0802,y             ; $12:C7D9: 99 02 08
LDA $0803,x             ; $12:C7DC: BD 03 08
STA $0803,y             ; $12:C7DF: 99 03 08
REP #$20                ; $12:C7E2: C2 20
TYA                     ; $12:C7E4: 98
LSR A                   ; $12:C7E5: 4A
LSR A                   ; $12:C7E6: 4A
TAY                     ; $12:C7E7: A8
TXA                     ; $12:C7E8: 8A
LSR A                   ; $12:C7E9: 4A
LSR A                   ; $12:C7EA: 4A
TAX                     ; $12:C7EB: AA
SEP #$20                ; $12:C7EC: E2 20
LDA #$01                ; $12:C7EE: A9 01
STA $0A20,x             ; $12:C7F0: 9D 20 0A
DEC A                   ; $12:C7F3: 3A
STA $0A20,y             ; $12:C7F4: 99 20 0A

CODE_12C7F7:
RTS                     ; $12:C7F7: 60

CODE_12C7F8:
JSR CODE_12AF2D         ; $12:C7F8: 20 2D AF
LDA #$02                ; $12:C7FB: A9 02
LDY $0635               ; $12:C7FD: AC 35 06
BEQ CODE_12C804         ; $12:C800: F0 02
LDA #$04                ; $12:C802: A9 04

CODE_12C804:
STA $0465,x             ; $12:C804: 9D 65 04
RTS                     ; $12:C807: 60

CODE_12C808:
JSR CODE_12BB16         ; $12:C808: 20 16 BB
LDA $045C,x             ; $12:C80B: BD 5C 04
BEQ CODE_12C813         ; $12:C80E: F0 03
JMP CODE_12BD29         ; $12:C810: 4C 29 BD

CODE_12C813:
JSR CODE_12DDAB         ; $12:C813: 20 AB DD
LDA #$02                ; $12:C816: A9 02
STA $6F,x               ; $12:C818: 95 6F
JSR CODE_12BD29         ; $12:C81A: 20 29 BD
LDA $5B,x               ; $12:C81D: B5 5B
AND #$04                ; $12:C81F: 29 04
BEQ CODE_12C882         ; $12:C821: F0 5F
JSR CODE_12B659         ; $12:C823: 20 59 B6
LDA $10                 ; $12:C826: A5 10
AND #$FF                ; $12:C828: 29 FF
BNE CODE_12C832         ; $12:C82A: D0 06
LDA #$D8                ; $12:C82C: A9 D8
STA $47,x               ; $12:C82E: 95 47
BNE CODE_12C882         ; $12:C830: D0 50

CODE_12C832:
LDA $10                 ; $12:C832: A5 10
AND #$3F                ; $12:C834: 29 3F
BNE CODE_12C83C         ; $12:C836: D0 04
LDA #$20                ; $12:C838: A9 20
STA $86,x               ; $12:C83A: 95 86

CODE_12C83C:
LDY $86,x               ; $12:C83C: B4 86
BNE CODE_12C85B         ; $12:C83E: D0 1B
INC $B1,x               ; $12:C840: F6 B1
LDA $B1,x               ; $12:C842: B5 B1
AND #$20                ; $12:C844: 29 20
BEQ CODE_12C881         ; $12:C846: F0 39
INC $9F,x               ; $12:C848: F6 9F
INC $9F,x               ; $12:C84A: F6 9F
LDY #$18                ; $12:C84C: A0 18
LDA $B1,x               ; $12:C84E: B5 B1
AND #$40                ; $12:C850: 29 40
BNE CODE_12C856         ; $12:C852: D0 02
LDY #$E8                ; $12:C854: A0 E8

CODE_12C856:
STY $3D,x               ; $12:C856: 94 3D
JMP CODE_12C1EF         ; $12:C858: 4C EF C1

CODE_12C85B:
CPY #$10                ; $12:C85B: C0 10
BNE CODE_12C881         ; $12:C85D: D0 22
JSR CODE_12B331         ; $12:C85F: 20 31 B3
BMI CODE_12C881         ; $12:C862: 30 1D
LDX $00                 ; $12:C864: A6 00
LDA #$37                ; $12:C866: A9 37
STA $90,x               ; $12:C868: 95 90
LDA $33,x               ; $12:C86A: B5 33
ADC #$03                ; $12:C86C: 69 03
STA $33,x               ; $12:C86E: 95 33
LDA #$E0                ; $12:C870: A9 E0
STA $47,x               ; $12:C872: 95 47
JSR CODE_129F7A         ; $12:C874: 20 7A 9F
LDA #$FF                ; $12:C877: A9 FF
STA $86,x               ; $12:C879: 95 86
LDA #$E0                ; $12:C87B: A9 E0
STA $3D,x               ; $12:C87D: 95 3D
LDX $12                 ; $12:C87F: A6 12

CODE_12C881:
RTS                     ; $12:C881: 60

CODE_12C882:
JMP CODE_12A0B2         ; $12:C882: 4C B2 A0

CODE_12C885:
LDA $51,x               ; $12:C885: B5 51
CMP #$01                ; $12:C887: C9 01
BNE CODE_12C896         ; $12:C889: D0 0B
LDA $045C,x             ; $12:C88B: BD 5C 04
BEQ CODE_12C89F         ; $12:C88E: F0 0F
INC $9F,x               ; $12:C890: F6 9F
LDA #$4A                ; $12:C892: A9 4A
STA $65,x               ; $12:C894: 95 65

CODE_12C896:
LDA #$B3                ; $12:C896: A9 B3
STA $046E,x             ; $12:C898: 9D 6E 04
LDA #$2C                ; $12:C89B: A9 2C
BNE CODE_12C8A8         ; $12:C89D: D0 09

CODE_12C89F:
LDY $86,x               ; $12:C89F: B4 86
DEY                     ; $12:C8A1: 88
CPY #$10                ; $12:C8A2: C0 10
BCS CODE_12C8AD         ; $12:C8A4: B0 07
LDA #$20                ; $12:C8A6: A9 20

CODE_12C8A8:
JSR CODE_12BDD5         ; $12:C8A8: 20 D5 BD
BRA CODE_12C8F3         ; $12:C8AB: 80 46

CODE_12C8AD:
JSR CODE_12BDC9         ; $12:C8AD: 20 C9 BD
LDA $86,x               ; $12:C8B0: B5 86
CMP #$10                ; $12:C8B2: C9 10
BCC CODE_12C8F3         ; $12:C8B4: 90 3D
LDA #$01                ; $12:C8B6: A9 01
STA $65,x               ; $12:C8B8: 95 65
LDA #$10                ; $12:C8BA: A9 10
STA $046E,x             ; $12:C8BC: 9D 6E 04
LDA $021F               ; $12:C8BF: AD 1F 02
XBA                     ; $12:C8C2: EB
LDA $0429               ; $12:C8C3: AD 29 04
REP #$20                ; $12:C8C6: C2 20
CLC                     ; $12:C8C8: 18
ADC #$000B              ; $12:C8C9: 69 0B 00
SEP #$20                ; $12:C8CC: E2 20
STA $0429               ; $12:C8CE: 8D 29 04
XBA                     ; $12:C8D1: EB
STA $021F               ; $12:C8D2: 8D 1F 02
AND #$01                ; $12:C8D5: 29 01
ASL A                   ; $12:C8D7: 0A
ASL A                   ; $12:C8D8: 0A
ASL A                   ; $12:C8D9: 0A
STA $ED                 ; $12:C8DA: 85 ED
LDY #$5C                ; $12:C8DC: A0 5C
STY $02F6               ; $12:C8DE: 8C F6 02
STZ $02F7               ; $12:C8E1: 9C F7 02
LDA $90,x               ; $12:C8E4: B5 90
PHA                     ; $12:C8E6: 48
LDA #$37                ; $12:C8E7: A9 37
STA $90,x               ; $12:C8E9: 95 90
LDA #$38                ; $12:C8EB: A9 38
JSR CODE_12BDD5         ; $12:C8ED: 20 D5 BD
PLA                     ; $12:C8F0: 68
STA $90,x               ; $12:C8F1: 95 90

CODE_12C8F3:
LDA #$43                ; $12:C8F3: A9 43
STA $65,x               ; $12:C8F5: 95 65
LDA #$33                ; $12:C8F7: A9 33
STA $046E,x             ; $12:C8F9: 9D 6E 04
RTS                     ; $12:C8FC: 60

CODE_12C8FD:
JSR CODE_12BDD2         ; $12:C8FD: 20 D2 BD
LDA $EE                 ; $12:C900: A5 EE
ORA $B1,x               ; $12:C902: 15 B1
BNE CODE_12C935         ; $12:C904: D0 2F
LDA $33,x               ; $12:C906: B5 33
SEC                     ; $12:C908: 38
SBC #$02                ; $12:C909: E9 02
STA $00                 ; $12:C90B: 85 00
JSR CODE_12C936         ; $12:C90D: 20 36 C9
JSL CODE_14E483         ; $12:C910: 22 83 E4 14
LDA $0213               ; $12:C914: AD 13 02
PHA                     ; $12:C917: 48
AND #$F1                ; $12:C918: 29 F1
ORA #$02                ; $12:C91A: 09 02
STA $0213               ; $12:C91C: 8D 13 02
CMP #$A3                ; $12:C91F: C9 A3
BNE CODE_12C92A         ; $12:C921: D0 07
LDA $00                 ; $12:C923: A5 00
CLC                     ; $12:C925: 18
ADC #$10                ; $12:C926: 69 10
STA $00                 ; $12:C928: 85 00

CODE_12C92A:
LDX #$78                ; $12:C92A: A2 78 20
JSR CODE_12C03B         ; $12:C92C: 20 3B C0
PLA                     ; $12:C92F: 68
STA $0213               ; $12:C930: 8D 13 02
LDX $12                 ; $12:C933: A6 12

CODE_12C935:
RTS                     ; $12:C935: 60

CODE_12C936:
LDY $6F,x               ; $12:C936: B4 6F
STZ $ED                 ; $12:C938: 64 ED
LDA $29,x               ; $12:C93A: B5 29
STA $0712               ; $12:C93C: 8D 12 07
LDA $15,x               ; $12:C93F: B5 15
STA $0713               ; $12:C941: 8D 13 07
LDA $04C1               ; $12:C944: AD C1 04
STA $0714               ; $12:C947: 8D 14 07
LDA $04BF               ; $12:C94A: AD BF 04
STA $0715               ; $12:C94D: 8D 15 07
REP #$20                ; $12:C950: C2 20
LDA.w DATA_119ABB,y     ; $12:C952: B9 BB 9A
AND #$00FF              ; $12:C955: 29 FF 00
CMP #$0080              ; $12:C958: C9 80 00
BCC CODE_12C960         ; $12:C95B: 90 03
ORA #$FF00              ; $12:C95D: 09 00 FF

CODE_12C960:
CLC                     ; $12:C960: 18
ADC $0712               ; $12:C961: 6D 12 07
SEC                     ; $12:C964: 38
SBC $0714               ; $12:C965: ED 14 07
SEP #$20                ; $12:C968: E2 20
STA $0429               ; $12:C96A: 8D 29 04
STA $01                 ; $12:C96D: 85 01
XBA                     ; $12:C96F: EB
STA $021F               ; $12:C970: 8D 1F 02
BEQ CODE_12C979         ; $12:C973: F0 04
LDA #$08                ; $12:C975: A9 08
STA $ED                 ; $12:C977: 85 ED

CODE_12C979:
RTS                     ; $12:C979: 60

CODE_12C97A:
LDA $B1,x               ; $12:C97A: B5 B1
BEQ CODE_12C981         ; $12:C97C: F0 03
BRL CODE_12CA20         ; $12:C97E: 82 9F 00

CODE_12C981:
LDA $A8,x               ; $12:C981: B5 A8
BEQ CODE_12CA03         ; $12:C983: F0 7E
LDA #$01                ; $12:C985: A9 01
STA $90,x               ; $12:C987: 95 90
JSR CODE_129F7A         ; $12:C989: 20 7A 9F
LDA $0429               ; $12:C98C: AD 29 04
STA $0716               ; $12:C98F: 8D 16 07
LDA $021F               ; $12:C992: AD 1F 02
STA $0717               ; $12:C995: 8D 17 07
LDA $ED                 ; $12:C998: A5 ED
PHA                     ; $12:C99A: 48
JSR CODE_12C936         ; $12:C99B: 20 36 C9
LDY $90,x               ; $12:C99E: B4 90
JSR CODE_12BDD2         ; $12:C9A0: 20 D2 BD
PLA                     ; $12:C9A3: 68
STA $ED                 ; $12:C9A4: 85 ED
LDA $0717               ; $12:C9A6: AD 17 07
STA $021F               ; $12:C9A9: 8D 1F 02
LDA $0716               ; $12:C9AC: AD 16 07
STA $0429               ; $12:C9AF: 8D 29 04
JSR CODE_12B331         ; $12:C9B2: 20 31 B3
BMI CODE_12CA02         ; $12:C9B5: 30 4B
LDY $00                 ; $12:C9B7: A4 00
LDA #$08                ; $12:C9B9: A9 08
STA $0090,y             ; $12:C9BB: 99 90 00
STA $00B1,y             ; $12:C9BE: 99 B1 00
LDA $9F,x               ; $12:C9C1: B5 9F
STA $009F,y             ; $12:C9C3: 99 9F 00
LDA $29,x               ; $12:C9C6: B5 29
STA $0029,y             ; $12:C9C8: 99 29 00
LDA $15,x               ; $12:C9CB: B5 15
STA $0015,y             ; $12:C9CD: 99 15 00
LDA $6F,x               ; $12:C9D0: B5 6F
STA $006F,y             ; $12:C9D2: 99 6F 00
LDA $0441,x             ; $12:C9D5: BD 41 04
STA $0441,y             ; $12:C9D8: 99 41 04
LDA #$FF                ; $12:C9DB: A9 FF
STA $0441,x             ; $12:C9DD: 9D 41 04
LDA $3D,x               ; $12:C9E0: B5 3D
STA $003D,y             ; $12:C9E2: 99 3D 00
TYX                     ; $12:C9E5: BB
JSR CODE_129F7A         ; $12:C9E6: 20 7A 9F
PHX                     ; $12:C9E9: DA
JSL CODE_14E483         ; $12:C9EA: 22 83 E4 14
PLX                     ; $12:C9EE: FA
LDY $90,x               ; $12:C9EF: B4 90
JSR CODE_12C8FD         ; $12:C9F1: 20 FD C8
LDA $02F6               ; $12:C9F4: AD F6 02
STA $02F8               ; $12:C9F7: 8D F8 02
LDA $02F7               ; $12:C9FA: AD F7 02
STA $02F9               ; $12:C9FD: 8D F9 02
LDX $12                 ; $12:CA00: A6 12

CODE_12CA02:
RTS                     ; $12:CA02: 60

CODE_12CA03:
LDA $5B,x               ; $12:CA03: B5 5B
AND #$10                ; $12:CA05: 29 10
BEQ CODE_12CA20         ; $12:CA07: F0 17
INC $B1,x               ; $12:CA09: F6 B1
STA $9F,x               ; $12:CA0B: 95 9F
JSR CODE_12B335         ; $12:CA0D: 20 35 B3
BMI CODE_12CA20         ; $12:CA10: 30 0E
LDY $00                 ; $12:CA12: A4 00
LDA $3D,x               ; $12:CA14: B5 3D
STA $003D,y             ; $12:CA16: 99 3D 00
LDA #$20                ; $12:CA19: A9 20
STA $0453,y             ; $12:CA1B: 99 53 04
BRA CODE_12CA31         ; $12:CA1E: 80 11

CODE_12CA20:
LDA $A8,x               ; $12:CA20: B5 A8
BEQ CODE_12CA2B         ; $12:CA22: F0 07
LDA $0500               ; $12:CA24: AD 00 05
BEQ CODE_12CA2B         ; $12:CA27: F0 02
DEC $9F,x               ; $12:CA29: D6 9F

CODE_12CA2B:
JSR CODE_12BA46         ; $12:CA2B: 20 46 BA
JSR CODE_12BB16         ; $12:CA2E: 20 16 BB

CODE_12CA31:
LDA $0500               ; $12:CA31: AD 00 05
BEQ CODE_12CA3D         ; $12:CA34: F0 07
LDA $042F,x             ; $12:CA36: BD 2F 04
BEQ CODE_12CA7D         ; $12:CA39: F0 42
BRA CODE_12CA40         ; $12:CA3B: 80 03

CODE_12CA3D:
JSR CODE_12DDAB         ; $12:CA3D: 20 AB DD

CODE_12CA40:
LDA $5B,x               ; $12:CA40: B5 5B
AND $6F,x               ; $12:CA42: 35 6F
BEQ CODE_12CA49         ; $12:CA44: F0 03
JSR CODE_12C248         ; $12:CA46: 20 48 C2

CODE_12CA49:
LDA $5B,x               ; $12:CA49: B5 5B
AND #$04                ; $12:CA4B: 29 04
BEQ CODE_12CA69         ; $12:CA4D: F0 1A
LDA $042F,x             ; $12:CA4F: BD 2F 04
BEQ CODE_12CA5C         ; $12:CA52: F0 08
LDA #$00                ; $12:CA54: A9 00
STA $042F,x             ; $12:CA56: 9D 2F 04
JSR CODE_129FCA         ; $12:CA59: 20 CA 9F

CODE_12CA5C:
LDA $9F,x               ; $12:CA5C: B5 9F
EOR #$08                ; $12:CA5E: 49 08
STA $9F,x               ; $12:CA60: 95 9F
JSR CODE_12B659         ; $12:CA62: 20 59 B6
LDA #$F0                ; $12:CA65: A9 F0
STA $47,x               ; $12:CA67: 95 47

CODE_12CA69:
INC $0477,x             ; $12:CA69: FE 77 04
LDA $B1,x               ; $12:CA6C: B5 B1
BNE CODE_12CA7A         ; $12:CA6E: D0 0A
LDA $0477,x             ; $12:CA70: BD 77 04
AND #$3F                ; $12:CA73: 29 3F
BNE CODE_12CA7A         ; $12:CA75: D0 03
JSR CODE_129FCD         ; $12:CA77: 20 CD 9F

CODE_12CA7A:
JSR CODE_12A0AA         ; $12:CA7A: 20 AA A0

CODE_12CA7D:
JMP CODE_12BD29         ; $12:CA7D: 4C 29 BD

CODE_12CA80:
JSR CODE_129F96         ; $12:CA80: 20 96 9F
LDA #$40                ; $12:CA83: A9 40
STA $0477,x             ; $12:CA85: 9D 77 04
LDA #$02                ; $12:CA88: A9 02
STA $0465,x             ; $12:CA8A: 9D 65 04
JMP CODE_12AF50         ; $12:CA8D: 4C 50 AF

CODE_12CA90:
RTS                     ; $12:CA90: 60

CODE_12CA91:
JSR CODE_12BB16         ; $12:CA91: 20 16 BB
LDY #$00                ; $12:CA94: A0 00
LDA $0477,x             ; $12:CA96: BD 77 04
ASL A                   ; $12:CA99: 0A
BCC CODE_12CAA3         ; $12:CA9A: 90 07
LDY #$02                ; $12:CA9C: A0 02
ASL A                   ; $12:CA9E: 0A
BCC CODE_12CAA3         ; $12:CA9F: 90 02
LDY #$FE                ; $12:CAA1: A0 FE

CODE_12CAA3:
STY $3D,x               ; $12:CAA3: 94 3D
JSR CODE_12C1EF         ; $12:CAA5: 20 EF C1
INC $0477,x             ; $12:CAA8: FE 77 04
LDA $B1,x               ; $12:CAAB: B5 B1
CLC                     ; $12:CAAD: 18
ADC #$D0                ; $12:CAAE: 69 D0
STA $B1,x               ; $12:CAB0: 95 B1
BCC CODE_12CAB7         ; $12:CAB2: 90 03
INC $0480,x             ; $12:CAB4: FE 80 04

CODE_12CAB7:
LDA $EE                 ; $12:CAB7: A5 EE
BNE CODE_12CA90         ; $12:CAB9: D0 D5
LDA #$49                ; $12:CABB: A9 49
STA $65,x               ; $12:CABD: 95 65
LDY #$44                ; $12:CABF: A0 44
LDA $51,x               ; $12:CAC1: B5 51
SEC                     ; $12:CAC3: 38
SBC #$01                ; $12:CAC4: E9 01
ORA $045C,x             ; $12:CAC6: 1D 5C 04
STA $07                 ; $12:CAC9: 85 07
BEQ CODE_12CACF         ; $12:CACB: F0 02
LDY #$48                ; $12:CACD: A0 48

CODE_12CACF:
TYA                     ; $12:CACF: 98
LDY #$60                ; $12:CAD0: A0 60
STY $02F6               ; $12:CAD2: 8C F6 02
STZ $02F7               ; $12:CAD5: 9C F7 02
JSR CODE_12BDD5         ; $12:CAD8: 20 D5 BD
LDA $1F,x               ; $12:CADB: B5 1F
XBA                     ; $12:CADD: EB
LDA $33,x               ; $12:CADE: B5 33
REP #$20                ; $12:CAE0: C2 20
CLC                     ; $12:CAE2: 18
ADC #$0020              ; $12:CAE3: 69 20 00
CMP #$00F0              ; $12:CAE6: C9 F0 00
SEP #$20                ; $12:CAE9: E2 20
BCS CODE_12CB1A         ; $12:CAEB: B0 2D
LDA #$09                ; $12:CAED: A9 09
STA $65,x               ; $12:CAEF: 95 65
LDA #$33                ; $12:CAF1: A9 33
STA $046E,x             ; $12:CAF3: 9D 6E 04
JSR CODE_12CC87         ; $12:CAF6: 20 87 CC
LDX #$4C                ; $12:CAF9: A2 4C
LDA $10                 ; $12:CAFB: A5 10
AND #$20                ; $12:CAFD: 29 20
BNE CODE_12CB09         ; $12:CAFF: D0 08
LDA #$04                ; $12:CB01: A9 04
AND $10                 ; $12:CB03: 25 10
BEQ CODE_12CB09         ; $12:CB05: F0 02
LDX #$4F                ; $12:CB07: A2 4F

CODE_12CB09:
LDA #$20                ; $12:CB09: A9 20
STA $0C                 ; $12:CB0B: 85 0C
LDY #$E0                ; $12:CB0D: A0 E0
STY $02F8               ; $12:CB0F: 8C F8 02
LDY #$01                ; $12:CB12: A0 01
STY $02F9               ; $12:CB14: 8C F9 02
JSR CODE_12C03B         ; $12:CB17: 20 3B C0

CODE_12CB1A:
LDX $12                 ; $12:CB1A: A6 12
LDA #$13                ; $12:CB1C: A9 13
STA $046E,x             ; $12:CB1E: 9D 6E 04
LDA $33,x               ; $12:CB21: B5 33
CLC                     ; $12:CB23: 18
ADC #$FF                ; $12:CB24: 69 FF
STA $00                 ; $12:CB26: 85 00
LDA $0477,x             ; $12:CB28: BD 77 04
AND #$78                ; $12:CB2B: 29 78
LSR A                   ; $12:CB2D: 4A
LSR A                   ; $12:CB2E: 4A
LSR A                   ; $12:CB2F: 4A
TAY                     ; $12:CB30: A8
LDA.w DATA_119ABE,y     ; $12:CB31: B9 BE 9A
ADC $0429               ; $12:CB34: 6D 29 04
ADC #$F0                ; $12:CB37: 69 F0
STA $01                 ; $12:CB39: 85 01
JSR CODE_12CC4C         ; $12:CB3B: 20 4C CC
LDX #$52                ; $12:CB3E: A2 52
LDA $07                 ; $12:CB40: A5 07
BNE CODE_12CB50         ; $12:CB42: D0 0C
LDX #$54                ; $12:CB44: A2 54
DEY                     ; $12:CB46: 88
DEY                     ; $12:CB47: 88
DEY                     ; $12:CB48: 88
DEY                     ; $12:CB49: 88
CPY #$07                ; $12:CB4A: C0 07
BCS CODE_12CB50         ; $12:CB4C: B0 02
LDX #$56                ; $12:CB4E: A2 56

CODE_12CB50:
LDY #$50                ; $12:CB50: A0 50
STY $02F8               ; $12:CB52: 8C F8 02
STZ $02F9               ; $12:CB55: 9C F9 02
JSR CODE_12C03B         ; $12:CB58: 20 3B C0
LDX $12                 ; $12:CB5B: A6 12
LDA $33,x               ; $12:CB5D: B5 33
CLC                     ; $12:CB5F: 18
ADC #$10                ; $12:CB60: 69 10
STA $00                 ; $12:CB62: 85 00
LDA $0480,x             ; $12:CB64: BD 80 04
AND #$78                ; $12:CB67: 29 78
LSR A                   ; $12:CB69: 4A
LSR A                   ; $12:CB6A: 4A
LSR A                   ; $12:CB6B: 4A
TAY                     ; $12:CB6C: A8
LDA.w DATA_119ABE,y     ; $12:CB6D: B9 BE 9A
ADC $0429               ; $12:CB70: 6D 29 04
ADC #$F0                ; $12:CB73: 69 F0
STA $01                 ; $12:CB75: 85 01
JSR CODE_12CC4C         ; $12:CB77: 20 4C CC
LDX #$52                ; $12:CB7A: A2 52
LDA $07                 ; $12:CB7C: A5 07
BNE CODE_12CB8C         ; $12:CB7E: D0 0C
LDX #$54                ; $12:CB80: A2 54
DEY                     ; $12:CB82: 88
DEY                     ; $12:CB83: 88
DEY                     ; $12:CB84: 88
DEY                     ; $12:CB85: 88
CPY #$07                ; $12:CB86: C0 07
BCS CODE_12CB8C         ; $12:CB88: B0 02
LDX #$56                ; $12:CB8A: A2 56

CODE_12CB8C:
LDY #$68                ; $12:CB8C: A0 68
STY $02F8               ; $12:CB8E: 8C F8 02
STZ $02F9               ; $12:CB91: 9C F9 02
JSR CODE_12C03B         ; $12:CB94: 20 3B C0
LDX $12                 ; $12:CB97: A6 12
LDA #$13                ; $12:CB99: A9 13
STA $046E,x             ; $12:CB9B: 9D 6E 04
LDA $01                 ; $12:CB9E: A5 01
CLC                     ; $12:CBA0: 18
ADC #$08                ; $12:CBA1: 69 08
STA $09C0               ; $12:CBA3: 8D C0 09
LDA $33,x               ; $12:CBA6: B5 33
CLC                     ; $12:CBA8: 18
ADC #$10                ; $12:CBA9: 69 10
STA $09C1               ; $12:CBAB: 8D C1 09
LDA #$C1                ; $12:CBAE: A9 C1
STA $09C2               ; $12:CBB0: 8D C2 09
LDA $0863               ; $12:CBB3: AD 63 08
STA $09C3               ; $12:CBB6: 8D C3 09
STA $0823               ; $12:CBB9: 8D 23 08
LDA $ED                 ; $12:CBBC: A5 ED
AND #$04                ; $12:CBBE: 29 04
LSR A                   ; $12:CBC0: 4A
LSR A                   ; $12:CBC1: 4A
ORA #$02                ; $12:CBC2: 09 02
STA $0A90               ; $12:CBC4: 8D 90 0A
LDA $33,x               ; $12:CBC7: B5 33
CLC                     ; $12:CBC9: 18
ADC #$FF                ; $12:CBCA: 69 FF
STA $0821               ; $12:CBCC: 8D 21 08
LDA $0862               ; $12:CBCF: AD 62 08
STA $0822               ; $12:CBD2: 8D 22 08
LDA $0429               ; $12:CBD5: AD 29 04
STA $0820               ; $12:CBD8: 8D 20 08
LDA #$02                ; $12:CBDB: A9 02
LDY $021F               ; $12:CBDD: AC 1F 02
BEQ CODE_12CBE4         ; $12:CBE0: F0 02
ORA #$01                ; $12:CBE2: 09 01

CODE_12CBE4:
STA $0A28               ; $12:CBE4: 8D 28 0A
STZ $05                 ; $12:CBE7: 64 05
LDA $0477,x             ; $12:CBE9: BD 77 04
JSR CODE_12CBF4         ; $12:CBEC: 20 F4 CB
INC $05                 ; $12:CBEF: E6 05
LDA $0480,x             ; $12:CBF1: BD 80 04

CODE_12CBF4:
AND #$67                ; $12:CBF4: 29 67
CMP #$40                ; $12:CBF6: C9 40
BNE CODE_12CC4B         ; $12:CBF8: D0 51
LDA $045C,x             ; $12:CBFA: BD 5C 04
BNE CODE_12CC4B         ; $12:CBFD: D0 4C
JSR CODE_12B335         ; $12:CBFF: 20 35 B3
BMI CODE_12CC4B         ; $12:CC02: 30 47
LDA #$17                ; $12:CC04: A9 17
STA $1DE3               ; $12:CC06: 8D E3 1D
LDY $00                 ; $12:CC09: A4 00
LDA #$20                ; $12:CC0B: A9 20
STA $0090,y             ; $12:CC0D: 99 90 00
STA $0079,y             ; $12:CC10: 99 79 00
STA $00B1,y             ; $12:CC13: 99 B1 00
LDA $29,x               ; $12:CC16: B5 29
SBC #$18                ; $12:CC18: E9 18
STA $0029,y             ; $12:CC1A: 99 29 00
LDA $05                 ; $12:CC1D: A5 05
BEQ CODE_12CC29         ; $12:CC1F: F0 08
LDA $33,x               ; $12:CC21: B5 33
CLC                     ; $12:CC23: 18
ADC #$10                ; $12:CC24: 69 10
STA $0033,y             ; $12:CC26: 99 33 00

CODE_12CC29:
LDA $28                 ; $12:CC29: A5 28
LSR A                   ; $12:CC2B: 4A
LSR A                   ; $12:CC2C: 4A
LSR A                   ; $12:CC2D: 4A
LSR A                   ; $12:CC2E: 4A
AND #$0F                ; $12:CC2F: 29 0F
CMP #$0B                ; $12:CC31: C9 0B
BCC CODE_12CC37         ; $12:CC33: 90 02
LDA #$0B                ; $12:CC35: A9 0B

CODE_12CC37:
TAX                     ; $12:CC37: AA
LDA.w DATA_119ACE,x     ; $12:CC38: BD CE 9A
STA $0047,y             ; $12:CC3B: 99 47 00
LDA.w DATA_119ADA,x     ; $12:CC3E: BD DA 9A
STA $003D,y             ; $12:CC41: 99 3D 00

CODE_12CC44:
TYA                     ; $12:CC44: 98
TAX                     ; $12:CC45: AA
JSR CODE_129F7A         ; $12:CC46: 20 7A 9F
LDX $12                 ; $12:CC49: A6 12

CODE_12CC4B:
RTS                     ; $12:CC4B: 60

CODE_12CC4C:
LDA $0429               ; $12:CC4C: AD 29 04
STA $08                 ; $12:CC4F: 85 08
LDA $021F               ; $12:CC51: AD 1F 02
STA $09                 ; $12:CC54: 85 09
STZ $ED                 ; $12:CC56: 64 ED
REP #$20                ; $12:CC58: C2 20
LDA.w DATA_119ABE,y     ; $12:CC5A: B9 BE 9A
AND #$00FF              ; $12:CC5D: 29 FF 00
ORA #$FF00              ; $12:CC60: 09 00 FF
ADC $08                 ; $12:CC63: 65 08
ADC #$FFF0              ; $12:CC65: 69 F0 FF
STA $08                 ; $12:CC68: 85 08
AND #$FF00              ; $12:CC6A: 29 00 FF
BEQ CODE_12CC74         ; $12:CC6D: F0 05
LDA #$0008              ; $12:CC6F: A9 08 00
TSB $ED                 ; $12:CC72: 04 ED

CODE_12CC74:
LDA $08                 ; $12:CC74: A5 08
CLC                     ; $12:CC76: 18
ADC #$0008              ; $12:CC77: 69 08 00
AND #$FF00              ; $12:CC7A: 29 00 FF
BEQ CODE_12CC84         ; $12:CC7D: F0 05
LDA #$0004              ; $12:CC7F: A9 04 00
TSB $ED                 ; $12:CC82: 04 ED

CODE_12CC84:
SEP #$20                ; $12:CC84: E2 20
RTS                     ; $12:CC86: 60

CODE_12CC87:
LDA $0429               ; $12:CC87: AD 29 04
STA $08                 ; $12:CC8A: 85 08
LDA $021F               ; $12:CC8C: AD 1F 02
STA $09                 ; $12:CC8F: 85 09
STZ $ED                 ; $12:CC91: 64 ED
REP #$20                ; $12:CC93: C2 20
LDA $08                 ; $12:CC95: A5 08
AND #$FF00              ; $12:CC97: 29 00 FF
BEQ CODE_12CCA1         ; $12:CC9A: F0 05
LDA #$0004              ; $12:CC9C: A9 04 00
TSB $ED                 ; $12:CC9F: 04 ED

CODE_12CCA1:
LDA $08                 ; $12:CCA1: A5 08
SEC                     ; $12:CCA3: 38
SBC #$0008              ; $12:CCA4: E9 08 00
STA $08                 ; $12:CCA7: 85 08
AND #$FF00              ; $12:CCA9: 29 00 FF
BEQ CODE_12CCB3         ; $12:CCAC: F0 05
LDA #$0008              ; $12:CCAE: A9 08 00
TSB $ED                 ; $12:CCB1: 04 ED

CODE_12CCB3:
SEP #$20                ; $12:CCB3: E2 20
LDA $08                 ; $12:CCB5: A5 08
STA $01                 ; $12:CCB7: 85 01
RTS                     ; $12:CCB9: 60

CODE_12CCBA:
JSR CODE_129F96         ; $12:CCBA: 20 96 9F
LDA $33,x               ; $12:CCBD: B5 33
SEC                     ; $12:CCBF: 38
SBC #$08                ; $12:CCC0: E9 08
STA $79,x               ; $12:CCC2: 95 79
RTS                     ; $12:CCC4: 60

CODE_12CCC5:
JSR CODE_12BB16         ; $12:CCC5: 20 16 BB
JSR CODE_12BA4F         ; $12:CCC8: 20 4F BA
JSR CODE_12BA46         ; $12:CCCB: 20 46 BA
JSR CODE_12DDAB         ; $12:CCCE: 20 AB DD
LDA $0480,x             ; $12:CCD1: BD 80 04

; Check if Cobrat needs to remain in sand.
; If not, branch.
BNE CODE_12CD06         ; $12:CCD4: D0 30

; X speed = #$00.
STA $3D,x               ; $12:CCD6: 95 3D
JSR CODE_12C1DA         ; $12:CCD8: 20 DA C1
LDA $0F                 ; $12:CCDB: A5 0F
ADC #$40                ; $12:CCDD: 69 40
CMP #$80                ; $12:CCDF: C9 80

; Check if player is near enough to Cobrat.
;
;
; If not, do regular routine. (Remain in sand)
BCS CODE_12CCEC         ; $12:CCE1: B0 09

; Don't retreat into sand anymore.
INC $0480,x             ; $12:CCE3: FE 80 04
LDA #$C0                ; $12:CCE6: A9 C0

; Jump up.
STA $47,x               ; $12:CCE8: 95 47

; Branch.
BNE CODE_12CD06         ; $12:CCEA: D0 1A

; Increase every frame.

CODE_12CCEC:
INC $0477,x             ; $12:CCEC: FE 77 04
LDY #$FC                ; $12:CCEF: A0 FC
LDA $0477,x             ; $12:CCF1: BD 77 04
AND #$20                ; $12:CCF4: 29 20
BEQ CODE_12CCFA         ; $12:CCF6: F0 02
LDY #$04                ; $12:CCF8: A0 04

; Y speed = #$FC for $20 frames.
;
;
;
; The other $20 frames, Y speed = #$04.

CODE_12CCFA:
STY $47,x               ; $12:CCFA: 94 47
JSR CODE_12C1EA         ; $12:CCFC: 20 EA C1
LDA #$61                ; $12:CCFF: A9 61
STA $65,x               ; $12:CD01: 95 65
JMP CODE_12BD29         ; $12:CD03: 4C 29 BD

CODE_12CD06:
LDA $47,x               ; $12:CD06: B5 47

; If Y speed is negative, branch.
BMI CODE_12CD19         ; $12:CD08: 30 0F
LDA $79,x               ; $12:CD0A: B5 79
SEC                     ; $12:CD0C: 38
SBC #$18                ; $12:CD0D: E9 18
CMP $33,x               ; $12:CD0F: D5 33
BCS CODE_12CD19         ; $12:CD11: B0 06
STA $33,x               ; $12:CD13: 95 33
LDA #$00                ; $12:CD15: A9 00
STA $47,x               ; $12:CD17: 95 47

; Gravity.

CODE_12CD19:
JSR CODE_12A0AA         ; $12:CD19: 20 AA A0
INC $9F,x               ; $12:CD1C: F6 9F
LDA $9F,x               ; $12:CD1E: B5 9F
PHA                     ; $12:CD20: 48
AND #$3F                ; $12:CD21: 29 3F
BNE CODE_12CD28         ; $12:CD23: D0 03
JSR CODE_129FCD         ; $12:CD25: 20 CD 9F

CODE_12CD28:
PLA                     ; $12:CD28: 68
BNE CODE_12CD30         ; $12:CD29: D0 05
LDA #$18                ; $12:CD2B: A9 18
STA $0453,x             ; $12:CD2D: 9D 53 04

CODE_12CD30:
LDA $5B,x               ; $12:CD30: B5 5B
AND #$03                ; $12:CD32: 29 03
BEQ CODE_12CD39         ; $12:CD34: F0 03
JSR CODE_12C248         ; $12:CD36: 20 48 C2

CODE_12CD39:
LDA #$41                ; $12:CD39: A9 41
LDY $47,x               ; $12:CD3B: B4 47
BPL CODE_12CD41         ; $12:CD3D: 10 02
LDA #$61                ; $12:CD3F: A9 61

CODE_12CD41:
JMP CODE_12CDD2         ; $12:CD41: 4C D2 CD

CODE_12CD44:
LDA $A8,x               ; $12:CD44: B5 A8
CMP #$05                ; $12:CD46: C9 05
BNE CODE_12CD50         ; $12:CD48: D0 06
LDA $65,x               ; $12:CD4A: B5 65
AND #$DF                ; $12:CD4C: 29 DF
STA $65,x               ; $12:CD4E: 95 65

CODE_12CD50:
JSR CODE_12BB16         ; $12:CD50: 20 16 BB
JSR CODE_12BA4F         ; $12:CD53: 20 4F BA
JSR CODE_12BA46         ; $12:CD56: 20 46 BA
JSR CODE_12DDAB         ; $12:CD59: 20 AB DD
LDA $5B,x               ; $12:CD5C: B5 5B
AND #$08                ; $12:CD5E: 29 08
BEQ CODE_12CD67         ; $12:CD60: F0 05
LDA $79,x               ; $12:CD62: B5 79
STA $33,x               ; $12:CD64: 95 33
RTS                     ; $12:CD66: 60

CODE_12CD67:
JSR CODE_12C1DA         ; $12:CD67: 20 DA C1
INY                     ; $12:CD6A: C8
STY $6F,x               ; $12:CD6B: 94 6F
LDA $B1,x               ; $12:CD6D: B5 B1
BNE CODE_12CD90         ; $12:CD6F: D0 1F
LDA $86,x               ; $12:CD71: B5 86
BNE CODE_12CD7E         ; $12:CD73: D0 09
LDA #$D0                ; $12:CD75: A9 D0
STA $47,x               ; $12:CD77: 95 47
INC $B1,x               ; $12:CD79: F6 B1
JMP CODE_12CDCD         ; $12:CD7B: 4C CD CD

CODE_12CD7E:
LDY #$FC                ; $12:CD7E: A0 FC
LDA $10                 ; $12:CD80: A5 10
AND #$20                ; $12:CD82: 29 20
BEQ CODE_12CD88         ; $12:CD84: F0 02
LDY #$04                ; $12:CD86: A0 04

CODE_12CD88:
STY $47,x               ; $12:CD88: 94 47
JSR CODE_12C1EA         ; $12:CD8A: 20 EA C1
JMP CODE_12CDD0         ; $12:CD8D: 4C D0 CD

CODE_12CD90:
INC $9F,x               ; $12:CD90: F6 9F
LDA $47,x               ; $12:CD92: B5 47
BMI CODE_12CDCD         ; $12:CD94: 30 37
BNE CODE_12CD9D         ; $12:CD96: D0 05
LDA #$10                ; $12:CD98: A9 10
STA $0453,x             ; $12:CD9A: 9D 53 04

CODE_12CD9D:
LDA $47,x               ; $12:CD9D: B5 47
BMI CODE_12CDBD         ; $12:CD9F: 30 1C
LDA $5B,x               ; $12:CDA1: B5 5B
AND #$04                ; $12:CDA3: 29 04
BEQ CODE_12CDBD         ; $12:CDA5: F0 16
LDA $0E                 ; $12:CDA7: A5 0E
SEC                     ; $12:CDA9: 38
SBC #$6A                ; $12:CDAA: E9 6A
CMP #$06                ; $12:CDAC: C9 06
BCC CODE_12CDBD         ; $12:CDAE: 90 0D
LDA #$02                ; $12:CDB0: A9 02
STA $51,x               ; $12:CDB2: 95 51
LDA #$E0                ; $12:CDB4: A9 E0
STA $47,x               ; $12:CDB6: 95 47
LDA #$40                ; $12:CDB8: A9 40
STA $0601               ; $12:CDBA: 8D 01 06

CODE_12CDBD:
LDA $79,x               ; $12:CDBD: B5 79
CMP $33,x               ; $12:CDBF: D5 33
BCS CODE_12CDCD         ; $12:CDC1: B0 0A
STA $33,x               ; $12:CDC3: 95 33
LDA #$00                ; $12:CDC5: A9 00
STA $B1,x               ; $12:CDC7: 95 B1
LDA #$A0                ; $12:CDC9: A9 A0
STA $86,x               ; $12:CDCB: 95 86

CODE_12CDCD:
JSR CODE_12A0B2         ; $12:CDCD: 20 B2 A0

CODE_12CDD0:
LDA #$61                ; $12:CDD0: A9 61

CODE_12CDD2:
STA $65,x               ; $12:CDD2: 95 65
LDA $0453,x             ; $12:CDD4: BD 53 04
BEQ CODE_12CDE5         ; $12:CDD7: F0 0C
CMP #$05                ; $12:CDD9: C9 05
BNE CODE_12CDE0         ; $12:CDDB: D0 03
JSR CODE_12B676         ; $12:CDDD: 20 76 B6

CODE_12CDE0:
LDA #$60                ; $12:CDE0: A9 60
JMP CODE_12BDD5         ; $12:CDE2: 4C D5 BD

CODE_12CDE5:
JMP CODE_12BD29         ; $12:CDE5: 4C 29 BD

CODE_12CDE8:
JSR CODE_129F96         ; $12:CDE8: 20 96 9F
LDA #$03                ; $12:CDEB: A9 03
STA $79,x               ; $12:CDED: 95 79
RTS                     ; $12:CDEF: 60

CODE_12CDF0:
LDA $79,x               ; $12:CDF0: B5 79
BNE CODE_12CDFD         ; $12:CDF2: D0 09
JSR CODE_12BB16         ; $12:CDF4: 20 16 BB
JSR CODE_12BA46         ; $12:CDF7: 20 46 BA
JSR CODE_12BA4F         ; $12:CDFA: 20 4F BA

CODE_12CDFD:
LDA $5B,x               ; $12:CDFD: B5 5B
AND #$10                ; $12:CDFF: 29 10
BEQ CODE_12CE0A         ; $12:CE01: F0 07
JSR CODE_12CE11         ; $12:CE03: 20 11 CE
INC $042F,x             ; $12:CE06: FE 2F 04
RTS                     ; $12:CE09: 60

CODE_12CE0A:
LDA $A8,x               ; $12:CE0A: B5 A8
BNE CODE_12CE11         ; $12:CE0C: D0 03

CODE_12CE0E:
BRL CODE_12CEBA         ; $12:CE0E: 82 A9 00

CODE_12CE11:
LDA $79,x               ; $12:CE11: B5 79
BEQ CODE_12CE0E         ; $12:CE13: F0 F9
STA $0477,x             ; $12:CE15: 9D 77 04
LDA #$00                ; $12:CE18: A9 00
STA $79,x               ; $12:CE1A: 95 79
LDA #$02                ; $12:CE1C: A9 02
STA $0489,x             ; $12:CE1E: 9D 89 04
LDA $0441,x             ; $12:CE21: BD 41 04
STA $06                 ; $12:CE24: 85 06
LDA #$FF                ; $12:CE26: A9 FF
STA $0441,x             ; $12:CE28: 9D 41 04
JSR CODE_12B331         ; $12:CE2B: 20 31 B3
BMI CODE_12CE0E         ; $12:CE2E: 30 DE
LDY $00                 ; $12:CE30: A4 00
LDA #$1A                ; $12:CE32: A9 1A
STA $0090,y             ; $12:CE34: 99 90 00
JSR CODE_12CC44         ; $12:CE37: 20 44 CC
LDY $00                 ; $12:CE3A: A4 00
LDA $06                 ; $12:CE3C: A5 06
STA $0441,y             ; $12:CE3E: 99 41 04
LDA $0477,x             ; $12:CE41: BD 77 04
SEC                     ; $12:CE44: 38
SBC #$01                ; $12:CE45: E9 01
STA $0079,y             ; $12:CE47: 99 79 00
TAY                     ; $12:CE4A: A8
LDA.w DATA_119AE6,y     ; $12:CE4B: B9 E6 9A
LDY $00                 ; $12:CE4E: A4 00
STA $0489,y             ; $12:CE50: 99 89 04
LDA $29,x               ; $12:CE53: B5 29
STA $0029,y             ; $12:CE55: 99 29 00
LDA $15,x               ; $12:CE58: B5 15
STA $0015,y             ; $12:CE5A: 99 15 00
LDA $33,x               ; $12:CE5D: B5 33
CLC                     ; $12:CE5F: 18
ADC #$10                ; $12:CE60: 69 10
STA $0033,y             ; $12:CE62: 99 33 00
LDA $1F,x               ; $12:CE65: B5 1F
ADC #$00                ; $12:CE67: 69 00
STA $001F,y             ; $12:CE69: 99 1F 00
LDA $02F6               ; $12:CE6C: AD F6 02
STA $071E               ; $12:CE6F: 8D 1E 07
LDA $02F7               ; $12:CE72: AD F7 02
STA $071F               ; $12:CE75: 8D 1F 07
PHX                     ; $12:CE78: DA
PHY                     ; $12:CE79: 5A
JSL CODE_14E483         ; $12:CE7A: 22 83 E4 14
PLY                     ; $12:CE7E: 7A
PLX                     ; $12:CE7F: FA
LDA $02F8               ; $12:CE80: AD F8 02
STA $02F6               ; $12:CE83: 8D F6 02
LDA $02F9               ; $12:CE86: AD F9 02
STA $02F7               ; $12:CE89: 8D F7 02
LDA $12                 ; $12:CE8C: A5 12
STA $0720               ; $12:CE8E: 8D 20 07
STY $12                 ; $12:CE91: 84 12
LDA $042C               ; $12:CE93: AD 2C 04
STA $0721               ; $12:CE96: 8D 21 07
CLC                     ; $12:CE99: 18
ADC #$10                ; $12:CE9A: 69 10
STA $042C               ; $12:CE9C: 8D 2C 04
TYX                     ; $12:CE9F: BB
JSR CODE_12CED0         ; $12:CEA0: 20 D0 CE
LDA $0721               ; $12:CEA3: AD 21 07
STA $042C               ; $12:CEA6: 8D 2C 04
LDX $0720               ; $12:CEA9: AE 20 07
STX $12                 ; $12:CEAC: 86 12
LDA $071E               ; $12:CEAE: AD 1E 07
STA $02F6               ; $12:CEB1: 8D F6 02
LDA $071F               ; $12:CEB4: AD 1F 07
STA $02F7               ; $12:CEB7: 8D F7 02

CODE_12CEBA:
LDA $0500               ; $12:CEBA: AD 00 05
BNE CODE_12CECD         ; $12:CEBD: D0 0E
INC $9F,x               ; $12:CEBF: F6 9F
LDA $9F,x               ; $12:CEC1: B5 9F
AND #$3F                ; $12:CEC3: 29 3F
BNE CODE_12CECA         ; $12:CEC5: D0 03
JSR CODE_129FCD         ; $12:CEC7: 20 CD 9F

CODE_12CECA:
JSR CODE_12C1EF         ; $12:CECA: 20 EF C1

CODE_12CECD:
JMP CODE_12BD29         ; $12:CECD: 4C 29 BD

CODE_12CED0:
LDY #$00                ; $12:CED0: A0 00
LDA $ED                 ; $12:CED2: A5 ED
BNE CODE_12CEDE         ; $12:CED4: D0 08
LDA $10                 ; $12:CED6: A5 10
AND #$18                ; $12:CED8: 29 18
LSR A                   ; $12:CEDA: 4A
LSR A                   ; $12:CEDB: 4A
LSR A                   ; $12:CEDC: 4A
TAY                     ; $12:CEDD: A8

CODE_12CEDE:
STY $07                 ; $12:CEDE: 84 07
STZ $0712               ; $12:CEE0: 9C 12 07
STZ $0713               ; $12:CEE3: 9C 13 07
LDA $021F               ; $12:CEE6: AD 1F 02
STA $0715               ; $12:CEE9: 8D 15 07
LDA $0429               ; $12:CEEC: AD 29 04
STA $0714               ; $12:CEEF: 8D 14 07
LDA.w DATA_119AEA,y     ; $12:CEF2: B9 EA 9A
JSR CODE_12CF55         ; $12:CEF5: 20 55 CF
JSR CODE_12BDC9         ; $12:CEF8: 20 C9 BD
LDA $79,x               ; $12:CEFB: B5 79
STA $09                 ; $12:CEFD: 85 09
BEQ CODE_12CF52         ; $12:CEFF: F0 51
LDA #$10                ; $12:CF01: A9 10
STA $0712               ; $12:CF03: 8D 12 07
STZ $0713               ; $12:CF06: 9C 13 07
LDX $07                 ; $12:CF09: A6 07
LDA.w DATA_119AEB,x     ; $12:CF0B: BD EB 9A
JSR CODE_12CF55         ; $12:CF0E: 20 55 CF
BNE CODE_12CF18         ; $12:CF11: D0 05
LDX #$6C                ; $12:CF13: A2 6C
JSR CODE_12C03B         ; $12:CF15: 20 3B C0

CODE_12CF18:
DEC $09                 ; $12:CF18: C6 09
BEQ CODE_12CF52         ; $12:CF1A: F0 36
JSL CODE_14E483         ; $12:CF1C: 22 83 E4 14
LDA #$20                ; $12:CF20: A9 20
STA $0712               ; $12:CF22: 8D 12 07
STZ $0713               ; $12:CF25: 9C 13 07
LDX $07                 ; $12:CF28: A6 07
LDA.w DATA_119AEC,x     ; $12:CF2A: BD EC 9A
JSR CODE_12CF55         ; $12:CF2D: 20 55 CF
BNE CODE_12CF37         ; $12:CF30: D0 05
LDX #$6C                ; $12:CF32: A2 6C
JSR CODE_12C03B         ; $12:CF34: 20 3B C0

CODE_12CF37:
DEC $09                 ; $12:CF37: C6 09
BEQ CODE_12CF52         ; $12:CF39: F0 17
LDA #$30                ; $12:CF3B: A9 30
STA $0712               ; $12:CF3D: 8D 12 07
STZ $0713               ; $12:CF40: 9C 13 07
LDX $07                 ; $12:CF43: A6 07
LDA.w DATA_119AED,x     ; $12:CF45: BD ED 9A
JSR CODE_12CF55         ; $12:CF48: 20 55 CF
BNE CODE_12CF52         ; $12:CF4B: D0 05
LDX #$6C                ; $12:CF4D: A2 6C
JSR CODE_12C03B         ; $12:CF4F: 20 3B C0

CODE_12CF52:
LDX $12                 ; $12:CF52: A6 12
RTS                     ; $12:CF54: 60

CODE_12CF55:
STZ $ED                 ; $12:CF55: 64 ED
REP #$20                ; $12:CF57: C2 20
AND #$00FF              ; $12:CF59: 29 FF 00
CMP #$0080              ; $12:CF5C: C9 80 00
BCC CODE_12CF64         ; $12:CF5F: 90 03
ORA #$FF00              ; $12:CF61: 09 00 FF

CODE_12CF64:
CLC                     ; $12:CF64: 18
ADC $0714               ; $12:CF65: 6D 14 07
SEP #$20                ; $12:CF68: E2 20
STA $01                 ; $12:CF6A: 85 01
STA $0429               ; $12:CF6C: 8D 29 04
XBA                     ; $12:CF6F: EB
STA $021F               ; $12:CF70: 8D 1F 02
BEQ CODE_12CF79         ; $12:CF73: F0 04
LDA #$08                ; $12:CF75: A9 08
STA $ED                 ; $12:CF77: 85 ED

CODE_12CF79:
LDX $12                 ; $12:CF79: A6 12
LDA $CB                 ; $12:CF7B: A5 CB
STA $0716               ; $12:CF7D: 8D 16 07
LDA $CA                 ; $12:CF80: A5 CA
STA $0717               ; $12:CF82: 8D 17 07
LDA $1F,x               ; $12:CF85: B5 1F
XBA                     ; $12:CF87: EB
LDA $33,x               ; $12:CF88: B5 33
REP #$20                ; $12:CF8A: C2 20
CLC                     ; $12:CF8C: 18
ADC $0712               ; $12:CF8D: 6D 12 07
SEC                     ; $12:CF90: 38
SBC $0716               ; $12:CF91: ED 16 07
XBA                     ; $12:CF94: EB
AND #$00FF              ; $12:CF95: 29 FF 00
SEP #$20                ; $12:CF98: E2 20
RTS                     ; $12:CF9A: 60

DATA_12CF9B:
db $FF

DATA_12CF9C:
db $FF

DATA_12CF9D:
db $FF

DATA_12CF9E:
db $FF,$88,$88,$88,$FF,$98,$98,$98
db $FF,$84,$94,$85,$94,$94,$85,$95
db $85,$85,$95,$84,$95,$95,$84,$94
db $84

DATA_12CFB7:
db $00,$01,$00,$01,$01,$02,$01,$02
db $03,$04,$05,$06

CODE_12CFC3:
LDA $B1,x               ; $12:CFC3: B5 B1
BNE CODE_12CFCA         ; $12:CFC5: D0 03
JMP CODE_12D191         ; $12:CFC7: 4C 91 D1

CODE_12CFCA:
LDY #$03                ; $12:CFCA: A0 03
LDA $47,x               ; $12:CFCC: B5 47
BEQ CODE_12CFD4         ; $12:CFCE: F0 04
CMP #$FD                ; $12:CFD0: C9 FD
BCC CODE_12CFE5         ; $12:CFD2: 90 11

CODE_12CFD4:
LDY #$3F                ; $12:CFD4: A0 3F
INC $0429               ; $12:CFD6: EE 29 04
LDA $10                 ; $12:CFD9: A5 10
AND #$02                ; $12:CFDB: 29 02
BNE CODE_12CFE5         ; $12:CFDD: D0 06
DEC $0429               ; $12:CFDF: CE 29 04
DEC $0429               ; $12:CFE2: CE 29 04

CODE_12CFE5:
TYA                     ; $12:CFE5: 98
AND $10                 ; $12:CFE6: 25 10
BNE CODE_12CFF7         ; $12:CFE8: D0 0D
DEC $47,x               ; $12:CFEA: D6 47
LDA $47,x               ; $12:CFEC: B5 47
CMP #$FA                ; $12:CFEE: C9 FA
BNE CODE_12CFF7         ; $12:CFF0: D0 05
LDA #$45                ; $12:CFF2: A9 45
STA $1DE3               ; $12:CFF4: 8D E3 1D

CODE_12CFF7:
JSR CODE_12C1EA         ; $12:CFF7: 20 EA C1
LDA $0477,x             ; $12:CFFA: BD 77 04
BNE CODE_12D023         ; $12:CFFD: D0 24
LDY $1F,x               ; $12:CFFF: B4 1F
BPL CODE_12D047         ; $12:D001: 10 44
LDA $33,x               ; $12:D003: B5 33
CMP #$D0                ; $12:D005: C9 D0
BCS CODE_12D047         ; $12:D007: B0 3E
JSL CODE_14E35A         ; $12:D009: 22 5A E3 14
LDA #$38                ; $12:D00D: A9 38
STA $04AF               ; $12:D00F: 8D AF 04
INC $0627               ; $12:D012: EE 27 06
INC $02B8               ; $12:D015: EE B8 02
LDA #$05                ; $12:D018: A9 05
STA $0536               ; $12:D01A: 8D 36 05
LDA #$00                ; $12:D01D: A9 00
STA $0050               ; $12:D01F: 8D 50 00
RTS                     ; $12:D022: 60

CODE_12D023:
LDA $33,x               ; $12:D023: B5 33
CMP #$30                ; $12:D025: C9 30
BCS CODE_12D047         ; $12:D027: B0 1E
LDY $04C8               ; $12:D029: AC C8 04
BNE CODE_12D035         ; $12:D02C: D0 07
CMP #$18                ; $12:D02E: C9 18
BCS CODE_12D047         ; $12:D030: B0 15
JMP CODE_12B120         ; $12:D032: 4C 20 B1

CODE_12D035:
LDA #$00                ; $12:D035: A9 00
STA $04C8               ; $12:D037: 8D C8 04
STA $9C                 ; $12:D03A: 85 9C
STA $3C                 ; $12:D03C: 85 3C
LDA $33,x               ; $12:D03E: B5 33
ADC #$20                ; $12:D040: 69 20
STA $32                 ; $12:D042: 85 32
STA $042B               ; $12:D044: 8D 2B 04

CODE_12D047:
JSR CODE_12D1A8         ; $12:D047: 20 A8 D1
LDA $33,x               ; $12:D04A: B5 33
STA $0712               ; $12:D04C: 8D 12 07
LDA $1F,x               ; $12:D04F: B5 1F
STA $0713               ; $12:D051: 8D 13 07
LDY #$00                ; $12:D054: A0 00
LDA $47,x               ; $12:D056: B5 47
CMP #$FE                ; $12:D058: C9 FE
BCS CODE_12D062         ; $12:D05A: B0 06
INY                     ; $12:D05C: C8
CMP #$FD                ; $12:D05D: C9 FD
BEQ CODE_12D062         ; $12:D05F: F0 01
INY                     ; $12:D061: C8

CODE_12D062:
STY $0714               ; $12:D062: 8C 14 07
LDA $0429               ; $12:D065: AD 29 04
CLC                     ; $12:D068: 18
ADC #$FD                ; $12:D069: 69 FD
STA $09A0               ; $12:D06B: 8D A0 09
STA $09B0               ; $12:D06E: 8D B0 09
CLC                     ; $12:D071: 18
ADC #$07                ; $12:D072: 69 07
STA $09A4               ; $12:D074: 8D A4 09
STA $09B4               ; $12:D077: 8D B4 09
STA $09AC               ; $12:D07A: 8D AC 09
CLC                     ; $12:D07D: 18
ADC #$07                ; $12:D07E: 69 07
STA $09A8               ; $12:D080: 8D A8 09
STA $09B8               ; $12:D083: 8D B8 09
LDA #$1E                ; $12:D086: A9 1E
CLC                     ; $12:D088: 18
ADC $0712               ; $12:D089: 6D 12 07
STA $09A1               ; $12:D08C: 8D A1 09
STA $09A5               ; $12:D08F: 8D A5 09
STA $09A9               ; $12:D092: 8D A9 09
CPY #$02                ; $12:D095: C0 02
BNE CODE_12D0AB         ; $12:D097: D0 12
CLC                     ; $12:D099: 18
ADC #$07                ; $12:D09A: 69 07
STA $09B1               ; $12:D09C: 8D B1 09
STA $09B5               ; $12:D09F: 8D B5 09
STA $09B9               ; $12:D0A2: 8D B9 09
CLC                     ; $12:D0A5: 18
ADC #$07                ; $12:D0A6: 69 07
STA $09AD               ; $12:D0A8: 8D AD 09

CODE_12D0AB:
REP #$20                ; $12:D0AB: C2 20
LDA $0712               ; $12:D0AD: AD 12 07
CLC                     ; $12:D0B0: 18
ADC #$0020              ; $12:D0B1: 69 20 00
CMP #$00EA              ; $12:D0B4: C9 EA 00
BCC CODE_12D0D7         ; $12:D0B7: 90 1E
CMP #$FFD0              ; $12:D0B9: C9 D0 FF
BCS CODE_12D0D7         ; $12:D0BC: B0 19
SEP #$20                ; $12:D0BE: E2 20
LDA #$F0                ; $12:D0C0: A9 F0
STA $09A1               ; $12:D0C2: 8D A1 09
STA $09A5               ; $12:D0C5: 8D A5 09
STA $09A9               ; $12:D0C8: 8D A9 09
STA $09AD               ; $12:D0CB: 8D AD 09
STA $09B1               ; $12:D0CE: 8D B1 09
STA $09B5               ; $12:D0D1: 8D B5 09
STA $09B9               ; $12:D0D4: 8D B9 09

CODE_12D0D7:
SEP #$20                ; $12:D0D7: E2 20
LDA #$22                ; $12:D0D9: A9 22
STA $09A3               ; $12:D0DB: 8D A3 09
STA $09A7               ; $12:D0DE: 8D A7 09
STA $09AB               ; $12:D0E1: 8D AB 09
STA $09AF               ; $12:D0E4: 8D AF 09
ORA #$40                ; $12:D0E7: 09 40
STA $09B3               ; $12:D0E9: 8D B3 09
STA $09B7               ; $12:D0EC: 8D B7 09
STA $09BB               ; $12:D0EF: 8D BB 09
LDA #$00                ; $12:D0F2: A9 00
STA $0A88               ; $12:D0F4: 8D 88 0A
STA $0A89               ; $12:D0F7: 8D 89 0A
STA $0A8A               ; $12:D0FA: 8D 8A 0A
STA $0A8B               ; $12:D0FD: 8D 8B 0A
STA $0A8C               ; $12:D100: 8D 8C 0A
STA $0A8D               ; $12:D103: 8D 8D 0A
STA $0A8E               ; $12:D106: 8D 8E 0A
LDX #$06                ; $12:D109: A2 06
CPY #$02                ; $12:D10B: C0 02
BEQ CODE_12D111         ; $12:D10D: F0 02
LDX #$0C                ; $12:D10F: A2 0C

CODE_12D111:
TXA                     ; $12:D111: 8A
AND $10                 ; $12:D112: 25 10
LSR A                   ; $12:D114: 4A
CPY #$02                ; $12:D115: C0 02
BEQ CODE_12D11A         ; $12:D117: F0 01
LSR A                   ; $12:D119: 4A

CODE_12D11A:
STA $00                 ; $12:D11A: 85 00
TYA                     ; $12:D11C: 98
ASL A                   ; $12:D11D: 0A
ASL A                   ; $12:D11E: 0A
CLC                     ; $12:D11F: 18
ADC $00                 ; $12:D120: 65 00
TAX                     ; $12:D122: AA
LDA.l DATA_12CFB7,x     ; $12:D123: BF B7 CF 12
ASL A                   ; $12:D127: 0A
ASL A                   ; $12:D128: 0A
TAX                     ; $12:D129: AA
LDA.l DATA_12CF9B,x     ; $12:D12A: BF 9B CF 12
CMP #$FF                ; $12:D12E: C9 FF
BNE CODE_12D13A         ; $12:D130: D0 08
LDA #$F0                ; $12:D132: A9 F0
STA $09A1               ; $12:D134: 8D A1 09
STA $09B9               ; $12:D137: 8D B9 09

CODE_12D13A:
STA $09A2               ; $12:D13A: 8D A2 09
STA $09BA               ; $12:D13D: 8D BA 09
LDA.l DATA_12CF9C,x     ; $12:D140: BF 9C CF 12
CMP #$FF                ; $12:D144: C9 FF
BNE CODE_12D150         ; $12:D146: D0 08
LDA #$F0                ; $12:D148: A9 F0
STA $09A5               ; $12:D14A: 8D A5 09
STA $09B5               ; $12:D14D: 8D B5 09

CODE_12D150:
STA $09A6               ; $12:D150: 8D A6 09
STA $09B6               ; $12:D153: 8D B6 09
LDA.l DATA_12CF9D,x     ; $12:D156: BF 9D CF 12
CMP #$FF                ; $12:D15A: C9 FF
BNE CODE_12D166         ; $12:D15C: D0 08
LDA #$F0                ; $12:D15E: A9 F0
STA $09A9               ; $12:D160: 8D A9 09
STA $09B1               ; $12:D163: 8D B1 09

CODE_12D166:
STA $09AA               ; $12:D166: 8D AA 09
STA $09B2               ; $12:D169: 8D B2 09
LDA.l DATA_12CF9E,x     ; $12:D16C: BF 9E CF 12
CMP #$FF                ; $12:D170: C9 FF
BNE CODE_12D179         ; $12:D172: D0 05
LDA #$F0                ; $12:D174: A9 F0
STA $09AD               ; $12:D176: 8D AD 09

CODE_12D179:
STA $09AE               ; $12:D179: 8D AE 09
CPY #$02                ; $12:D17C: C0 02
BEQ CODE_12D18E         ; $12:D17E: F0 0E
LDA #$F0                ; $12:D180: A9 F0
STA $09AD               ; $12:D182: 8D AD 09
STA $09B1               ; $12:D185: 8D B1 09
STA $09B5               ; $12:D188: 8D B5 09
STA $09B9               ; $12:D18B: 8D B9 09

CODE_12D18E:
LDX $12                 ; $12:D18E: A6 12
RTS                     ; $12:D190: 60

CODE_12D191:
LDA $A8,x               ; $12:D191: B5 A8
CMP #$01                ; $12:D193: C9 01
BNE CODE_12D1A5         ; $12:D195: D0 0E
STA $B1,x               ; $12:D197: 95 B1
STA $04C8               ; $12:D199: 8D C8 04
LDA #$35                ; $12:D19C: A9 35
STA $1DE3               ; $12:D19E: 8D E3 1D
LDA #$FE                ; $12:D1A1: A9 FE
STA $47,x               ; $12:D1A3: 95 47

CODE_12D1A5:
JSR CODE_12B692         ; $12:D1A5: 20 92 B6

CODE_12D1A8:
LDA $EE                 ; $12:D1A8: A5 EE
BNE CODE_12D18E         ; $12:D1AA: D0 E2
LDA $042C               ; $12:D1AC: AD 2C 04
STA $00                 ; $12:D1AF: 85 00
LDA $0429               ; $12:D1B1: AD 29 04
SEC                     ; $12:D1B4: 38
SBC #$08                ; $12:D1B5: E9 08
STA $01                 ; $12:D1B7: 85 01
LDA #$02                ; $12:D1B9: A9 02
STA $02                 ; $12:D1BB: 85 02
STA $05                 ; $12:D1BD: 85 05
STA $0C                 ; $12:D1BF: 85 0C
PHX                     ; $12:D1C1: DA
LDA $90,x               ; $12:D1C2: B5 90
TAX                     ; $12:D1C4: AA
LDA.l DATA_15EBA5,x     ; $12:D1C5: BF A5 EB 15
AND #$0F                ; $12:D1C9: 29 0F
STA $0213               ; $12:D1CB: 8D 13 02
PLX                     ; $12:D1CE: FA
LDA $65,x               ; $12:D1CF: B5 65
AND #$20                ; $12:D1D1: 29 20
STA $03                 ; $12:D1D3: 85 03
LDA #$40                ; $12:D1D5: A9 40
STA $02F8               ; $12:D1D7: 8D F8 02
STZ $02F9               ; $12:D1DA: 9C F9 02
LDX #$94                ; $12:D1DD: A2 94
JSR CODE_12BED0         ; $12:D1DF: 20 D0 BE
LDA $01                 ; $12:D1E2: A5 01
CLC                     ; $12:D1E4: 18
ADC #$10                ; $12:D1E5: 69 10
STA $01                 ; $12:D1E7: 85 01
DEC $02                 ; $12:D1E9: C6 02
LDA $042C               ; $12:D1EB: AD 2C 04
STA $00                 ; $12:D1EE: 85 00
LDA #$50                ; $12:D1F0: A9 50
STA $02F8               ; $12:D1F2: 8D F8 02
STZ $02F9               ; $12:D1F5: 9C F9 02
LDX #$94                ; $12:D1F8: A2 94
JMP CODE_12BED0         ; $12:D1FA: 4C D0 BE

DATA_12D1FD:
db $7C,$DC,$80,$E0

DATA_12D201:
db $80,$E0,$7C,$DC

DATA_12D205:
db $EC,$EE,$EC,$EE

CODE_12D209:
LDA $046E,x             ; $12:D209: BD 6E 04
STA $071E               ; $12:D20C: 8D 1E 07
STZ $ED                 ; $12:D20F: 64 ED
LDA #$10                ; $12:D211: A9 10
STA $071A               ; $12:D213: 8D 1A 07
LDA $045C,x             ; $12:D216: BD 5C 04
BEQ CODE_12D222         ; $12:D219: F0 07
INC $9F,x               ; $12:D21B: F6 9F
LDA #$08                ; $12:D21D: A9 08
STA $071A               ; $12:D21F: 8D 1A 07

CODE_12D222:
LDA $9F,x               ; $12:D222: B5 9F
AND #$08                ; $12:D224: 29 08
LSR A                   ; $12:D226: 4A
LSR A                   ; $12:D227: 4A
LSR A                   ; $12:D228: 4A
STA $07                 ; $12:D229: 85 07
LDY $07                 ; $12:D22B: A4 07
LDA $0429               ; $12:D22D: AD 29 04
STA $0720               ; $12:D230: 8D 20 07
PHA                     ; $12:D233: 48
CLC                     ; $12:D234: 18
ADC.w DATA_119AF1,y     ; $12:D235: 79 F1 9A
STA $0429               ; $12:D238: 8D 29 04
LDA $9F,x               ; $12:D23B: B5 9F
PHA                     ; $12:D23D: 48
AND #$18                ; $12:D23E: 29 18
LSR A                   ; $12:D240: 4A
LSR A                   ; $12:D241: 4A
LSR A                   ; $12:D242: 4A
STA $0718               ; $12:D243: 8D 18 07
PLA                     ; $12:D246: 68
AND #$0C                ; $12:D247: 29 0C
LSR A                   ; $12:D249: 4A
LSR A                   ; $12:D24A: 4A
STA $0719               ; $12:D24B: 8D 19 07
LDA $046E,x             ; $12:D24E: BD 6E 04
AND #$7F                ; $12:D251: 29 7F
STA $046E,x             ; $12:D253: 9D 6E 04
LDY #$00                ; $12:D256: A0 00
LDA $9F,x               ; $12:D258: B5 9F
AND $071A               ; $12:D25A: 2D 1A 07
BEQ CODE_12D261         ; $12:D25D: F0 02
LDY #$40                ; $12:D25F: A0 40

CODE_12D261:
STY $0249               ; $12:D261: 8C 49 02
LDA $0718               ; $12:D264: AD 18 07
LDY $045C,x             ; $12:D267: BC 5C 04
BEQ CODE_12D26F         ; $12:D26A: F0 03
LDA $0719               ; $12:D26C: AD 19 07

CODE_12D26F:
PHX                     ; $12:D26F: DA
TAX                     ; $12:D270: AA
LDA.l DATA_12D1FD,x     ; $12:D271: BF FD D1 12
PLX                     ; $12:D275: FA
JSR CODE_12BDD5         ; $12:D276: 20 D5 BD
JSL CODE_14E483         ; $12:D279: 22 83 E4 14
LDA $02F8               ; $12:D27D: AD F8 02
STA $02F6               ; $12:D280: 8D F6 02
LDA $02F9               ; $12:D283: AD F9 02
STA $02F7               ; $12:D286: 8D F7 02
PLA                     ; $12:D289: 68
CLC                     ; $12:D28A: 18
LDY $07                 ; $12:D28B: A4 07
ADC.w DATA_119AF2,y     ; $12:D28D: 79 F2 9A
STA $0429               ; $12:D290: 8D 29 04
LDA $0718               ; $12:D293: AD 18 07
LDY $045C,x             ; $12:D296: BC 5C 04
BEQ CODE_12D29E         ; $12:D299: F0 03
LDA $0719               ; $12:D29B: AD 19 07

CODE_12D29E:
PHX                     ; $12:D29E: DA
TAX                     ; $12:D29F: AA
LDA.l DATA_12D201,x     ; $12:D2A0: BF 01 D2 12
PLX                     ; $12:D2A4: FA
JSR CODE_12BDD5         ; $12:D2A5: 20 D5 BD
LDA $9F,x               ; $12:D2A8: B5 9F
STA $0721               ; $12:D2AA: 8D 21 07
LDA $65,x               ; $12:D2AD: B5 65
PHA                     ; $12:D2AF: 48
AND #$BF                ; $12:D2B0: 29 BF
STA $65,x               ; $12:D2B2: 95 65
STZ $9F,x               ; $12:D2B4: 74 9F
LDA $0720               ; $12:D2B6: AD 20 07
CLC                     ; $12:D2B9: 18
ADC #$F8                ; $12:D2BA: 69 F8
STA $0429               ; $12:D2BC: 8D 29 04
LDA $042C               ; $12:D2BF: AD 2C 04
CLC                     ; $12:D2C2: 18
ADC #$0E                ; $12:D2C3: 69 0E
STA $042C               ; $12:D2C5: 8D 2C 04
LDA #$20                ; $12:D2C8: A9 20
STA $02F8               ; $12:D2CA: 8D F8 02
STA $02F6               ; $12:D2CD: 8D F6 02
STZ $02F9               ; $12:D2D0: 9C F9 02
STZ $02F7               ; $12:D2D3: 9C F7 02
LDY $045C,x             ; $12:D2D6: BC 5C 04
BEQ CODE_12D2DF         ; $12:D2D9: F0 04
LDA #$F0                ; $12:D2DB: A9 F0
BRA CODE_12D2EB         ; $12:D2DD: 80 0C

CODE_12D2DF:
STZ $0249               ; $12:D2DF: 9C 49 02
PHX                     ; $12:D2E2: DA
LDX $0718               ; $12:D2E3: AE 18 07
LDA.l DATA_12D205,x     ; $12:D2E6: BF 05 D2 12
PLX                     ; $12:D2EA: FA

CODE_12D2EB:
JSR CODE_12BDD5         ; $12:D2EB: 20 D5 BD
PLA                     ; $12:D2EE: 68
STA $65,x               ; $12:D2EF: 95 65
LDA $0721               ; $12:D2F1: AD 21 07
STA $9F,x               ; $12:D2F4: 95 9F
LDA $071E               ; $12:D2F6: AD 1E 07
STA $046E,x             ; $12:D2F9: 9D 6E 04
RTS                     ; $12:D2FC: 60

CODE_12D2FD:
JSR CODE_129F96         ; $12:D2FD: 20 96 9F
LDA #$04                ; $12:D300: A9 04
STA $0465,x             ; $12:D302: 9D 65 04
LDA #$00                ; $12:D305: A9 00
STA $79,x               ; $12:D307: 95 79
RTS                     ; $12:D309: 60

CODE_12D30A:
LDA #$02                ; $12:D30A: A9 02
STA $6F,x               ; $12:D30C: 95 6F
INC $9F,x               ; $12:D30E: F6 9F
LDY $0465,x             ; $12:D310: BC 65 04
DEY                     ; $12:D313: 88
BNE CODE_12D366         ; $12:D314: D0 50
LDA #$03                ; $12:D316: A9 03
STA $09                 ; $12:D318: 85 09
STA $04F9               ; $12:D31A: 8D F9 04
JSR CODE_12A83B         ; $12:D31D: 20 3B A8

CODE_12D320:
JSR CODE_12B335         ; $12:D320: 20 35 B3
BMI CODE_12D362         ; $12:D323: 30 3D
LDY $00                 ; $12:D325: A4 00
LDA $1F,x               ; $12:D327: B5 1F
STA $04F0,y             ; $12:D329: 99 F0 04
LDA #$F0                ; $12:D32C: A9 F0
STA $0047,y             ; $12:D32E: 99 47 00
LDA #$2B                ; $12:D331: A9 2B
STA $0090,y             ; $12:D333: 99 90 00
LDA #$30                ; $12:D336: A9 30
STA $0453,y             ; $12:D338: 99 53 04
LDA $33,x               ; $12:D33B: B5 33
PHA                     ; $12:D33D: 48
LDX $09                 ; $12:D33E: A6 09
LDA.w DATA_119AF4,x     ; $12:D340: BD F4 9A
STA $003D,y             ; $12:D343: 99 3D 00
LDA $0429               ; $12:D346: AD 29 04
ADC.w DATA_119AF8,x     ; $12:D349: 7D F8 9A
STA $0029,y             ; $12:D34C: 99 29 00
PLA                     ; $12:D34F: 68
ADC.w DATA_119AFC,x     ; $12:D350: 7D FC 9A
STA $0033,y             ; $12:D353: 99 33 00
LDA #$00                ; $12:D356: A9 00
STA $0015,y             ; $12:D358: 99 15 00
TYA                     ; $12:D35B: 98
TAX                     ; $12:D35C: AA
JSR CODE_129F7A         ; $12:D35D: 20 7A 9F
LDX $12                 ; $12:D360: A6 12

CODE_12D362:
DEC $09                 ; $12:D362: C6 09
BPL CODE_12D320         ; $12:D364: 10 BA

CODE_12D366:
LDA $10                 ; $12:D366: A5 10
AND #$1F                ; $12:D368: 29 1F
BNE CODE_12D38B         ; $12:D36A: D0 1F
JSR CODE_12B335         ; $12:D36C: 20 35 B3
LDX $00                 ; $12:D36F: A6 00
LDA #$20                ; $12:D371: A9 20
STA $90,x               ; $12:D373: 95 90
LDA #$27                ; $12:D375: A9 27
STA $1DE3               ; $12:D377: 8D E3 1D
LDA $29,x               ; $12:D37A: B5 29
SBC #$08                ; $12:D37C: E9 08
STA $29,x               ; $12:D37E: 95 29
LDA $33,x               ; $12:D380: B5 33
ADC #$18                ; $12:D382: 69 18
STA $33,x               ; $12:D384: 95 33
JSR CODE_129FCA         ; $12:D386: 20 CA 9F
LDX $12                 ; $12:D389: A6 12

CODE_12D38B:
LDA $10                 ; $12:D38B: A5 10
AND #$01                ; $12:D38D: 29 01
BNE CODE_12D3BB         ; $12:D38F: D0 2A
LDA $79,x               ; $12:D391: B5 79
AND #$01                ; $12:D393: 29 01
TAY                     ; $12:D395: A8
LDA $47,x               ; $12:D396: B5 47
CLC                     ; $12:D398: 18
ADC.w DATA_119B04,y     ; $12:D399: 79 04 9B
STA $47,x               ; $12:D39C: 95 47
CMP.w DATA_119B06,y     ; $12:D39E: D9 06 9B
BNE CODE_12D3A5         ; $12:D3A1: D0 02
INC $79,x               ; $12:D3A3: F6 79

CODE_12D3A5:
LDA $0477,x             ; $12:D3A5: BD 77 04
AND #$01                ; $12:D3A8: 29 01
TAY                     ; $12:D3AA: A8
LDA $3D,x               ; $12:D3AB: B5 3D
CLC                     ; $12:D3AD: 18
ADC.w DATA_119B00,y     ; $12:D3AE: 79 00 9B
STA $3D,x               ; $12:D3B1: 95 3D
CMP.w DATA_119B02,y     ; $12:D3B3: D9 02 9B
BNE CODE_12D3BB         ; $12:D3B6: D0 03
INC $0477,x             ; $12:D3B8: FE 77 04

CODE_12D3BB:
JSR CODE_12D209         ; $12:D3BB: 20 09 D2
JSR CODE_12C1EA         ; $12:D3BE: 20 EA C1
JMP CODE_12C1EF         ; $12:D3C1: 4C EF C1

CODE_12D3C4:
LDA $5B,x               ; $12:D3C4: B5 5B
AND #$10                ; $12:D3C6: 29 10
BEQ CODE_12D3DB         ; $12:D3C8: F0 11
JSR CODE_12E352         ; $12:D3CA: 20 52 E3
STZ $046E,x             ; $12:D3CD: 9E 6E 04
STZ $9F,x               ; $12:D3D0: 74 9F
LDA #$09                ; $12:D3D2: A9 09
STA $51,x               ; $12:D3D4: 95 51
LDA #$1F                ; $12:D3D6: A9 1F
STA $86,x               ; $12:D3D8: 95 86
RTS                     ; $12:D3DA: 60

CODE_12D3DB:
LDA #$02                ; $12:D3DB: A9 02
STA $6F,x               ; $12:D3DD: 95 6F
LDA $10                 ; $12:D3DF: A5 10
STA $044A,x             ; $12:D3E1: 9D 4A 04
INC $9F,x               ; $12:D3E4: F6 9F
LDA $9F,x               ; $12:D3E6: B5 9F
AND #$10                ; $12:D3E8: 29 10
BEQ CODE_12D3EE         ; $12:D3EA: F0 02
DEC $6F,x               ; $12:D3EC: D6 6F

CODE_12D3EE:
JSR CODE_12DDAB         ; $12:D3EE: 20 AB DD
JSR CODE_12BD29         ; $12:D3F1: 20 29 BD
LDA $5B,x               ; $12:D3F4: B5 5B
PHA                     ; $12:D3F6: 48
AND #$04                ; $12:D3F7: 29 04
BEQ CODE_12D402         ; $12:D3F9: F0 07
JSR CODE_12B659         ; $12:D3FB: 20 59 B6
LDA #$00                ; $12:D3FE: A9 00
STA $3D,x               ; $12:D400: 95 3D

CODE_12D402:
PLA                     ; $12:D402: 68
AND #$03                ; $12:D403: 29 03
BEQ CODE_12D40D         ; $12:D405: F0 06
JSR CODE_12C248         ; $12:D407: 20 48 C2
JSR CODE_12B63B         ; $12:D40A: 20 3B B6

CODE_12D40D:
TXA                     ; $12:D40D: 8A
ASL A                   ; $12:D40E: 0A
ASL A                   ; $12:D40F: 0A
ASL A                   ; $12:D410: 0A
ADC $10                 ; $12:D411: 65 10
LDY $04F9               ; $12:D413: AC F9 04
AND.w DATA_119B08,y     ; $12:D416: 39 08 9B
ORA $47,x               ; $12:D419: 15 47
BNE CODE_12D433         ; $12:D41B: D0 16
LDA $0587               ; $12:D41D: AD 87 05
AND #$1F                ; $12:D420: 29 1F
ORA.w DATA_119B0C,y     ; $12:D422: 19 0C 9B
STA $47,x               ; $12:D425: 95 47
JSR CODE_129FCD         ; $12:D427: 20 CD 9F
LDA $04F9               ; $12:D42A: AD F9 04
CMP #$02                ; $12:D42D: C9 02
BCS CODE_12D433         ; $12:D42F: B0 02
ASL $3D,x               ; $12:D431: 16 3D

CODE_12D433:
LDA $50                 ; $12:D433: A5 50
CMP #$08                ; $12:D435: C9 08
BEQ CODE_12D43F         ; $12:D437: F0 06
JSR CODE_12C1EF         ; $12:D439: 20 EF C1
JMP CODE_12A0B2         ; $12:D43C: 4C B2 A0

CODE_12D43F:
RTS                     ; $12:D43F: 60

CODE_12D440:
LDA $B1,x               ; $12:D440: B5 B1
BNE CODE_12D4B6         ; $12:D442: D0 72
LDA $5B,x               ; $12:D444: B5 5B
AND #$10                ; $12:D446: 29 10
ORA $A8,x               ; $12:D448: 15 A8
BEQ CODE_12D4B6         ; $12:D44A: F0 6A
LDA #$01                ; $12:D44C: A9 01
STA $90,x               ; $12:D44E: 95 90
JSR CODE_129F7A         ; $12:D450: 20 7A 9F
LDA $0441,x             ; $12:D453: BD 41 04
STA $06                 ; $12:D456: 85 06
LDA #$FF                ; $12:D458: A9 FF
STA $0441,x             ; $12:D45A: 9D 41 04
JSR CODE_12B335         ; $12:D45D: 20 35 B3
BMI CODE_12D4B6         ; $12:D460: 30 54
LDY $00                 ; $12:D462: A4 00
LDA $06                 ; $12:D464: A5 06
STA $0441,y             ; $12:D466: 99 41 04
LDA $29,x               ; $12:D469: B5 29
STA $0029,y             ; $12:D46B: 99 29 00
LDA $15,x               ; $12:D46E: B5 15
STA $0015,y             ; $12:D470: 99 15 00
LDX $00                 ; $12:D473: A6 00
LDA #$26                ; $12:D475: A9 26
STA $90,x               ; $12:D477: 95 90
JSR CODE_129FCA         ; $12:D479: 20 CA 9F
INC $B1,x               ; $12:D47C: F6 B1
JSR CODE_129F7A         ; $12:D47E: 20 7A 9F
LDA #$04                ; $12:D481: A9 04
STA $0489,x             ; $12:D483: 9D 89 04
LDA $02F6               ; $12:D486: AD F6 02
PHA                     ; $12:D489: 48
LDA $02F7               ; $12:D48A: AD F7 02
PHA                     ; $12:D48D: 48
PHX                     ; $12:D48E: DA
JSL CODE_14E483         ; $12:D48F: 22 83 E4 14
PLX                     ; $12:D493: FA
LDA $02F8               ; $12:D494: AD F8 02
STA $02F6               ; $12:D497: 8D F6 02
LDA $02F9               ; $12:D49A: AD F9 02
STA $02F7               ; $12:D49D: 8D F7 02
JSR CODE_12D50D         ; $12:D4A0: 20 0D D5
PLA                     ; $12:D4A3: 68
STA $02F7               ; $12:D4A4: 8D F7 02
PLA                     ; $12:D4A7: 68
STA $02F6               ; $12:D4A8: 8D F6 02
LDX $12                 ; $12:D4AB: A6 12
LDA $042C               ; $12:D4AD: AD 2C 04
CLC                     ; $12:D4B0: 18
ADC #$E5                ; $12:D4B1: 69 E5
STA $042C               ; $12:D4B3: 8D 2C 04

CODE_12D4B6:
JSR CODE_12BB16         ; $12:D4B6: 20 16 BB
JSR CODE_12DDAB         ; $12:D4B9: 20 AB DD
LDA $5B,x               ; $12:D4BC: B5 5B
PHA                     ; $12:D4BE: 48
AND #$04                ; $12:D4BF: 29 04
BEQ CODE_12D4C6         ; $12:D4C1: F0 03
JSR CODE_12B659         ; $12:D4C3: 20 59 B6

CODE_12D4C6:
PLA                     ; $12:D4C6: 68
AND #$03                ; $12:D4C7: 29 03
BEQ CODE_12D4D1         ; $12:D4C9: F0 06
JSR CODE_12C248         ; $12:D4CB: 20 48 C2
JSR CODE_12C1EF         ; $12:D4CE: 20 EF C1

CODE_12D4D1:
INC $9F,x               ; $12:D4D1: F6 9F
LDA $B1,x               ; $12:D4D3: B5 B1
BNE CODE_12D507         ; $12:D4D5: D0 30
TXA                     ; $12:D4D7: 8A
ASL A                   ; $12:D4D8: 0A
ASL A                   ; $12:D4D9: 0A
ASL A                   ; $12:D4DA: 0A
ASL A                   ; $12:D4DB: 0A
ADC $10                 ; $12:D4DC: 65 10
AND #$7F                ; $12:D4DE: 29 7F
BNE CODE_12D4E5         ; $12:D4E0: D0 03
JSR CODE_129FCD         ; $12:D4E2: 20 CD 9F

CODE_12D4E5:
LDA $9F,x               ; $12:D4E5: B5 9F
AND #$7F                ; $12:D4E7: 29 7F
BNE CODE_12D507         ; $12:D4E9: D0 1C
JSR CODE_129FCD         ; $12:D4EB: 20 CD 9F
JSR CODE_12B676         ; $12:D4EE: 20 76 B6
BMI CODE_12D507         ; $12:D4F1: 30 14
LDA #$17                ; $12:D4F3: A9 17
STA $1DE3               ; $12:D4F5: 8D E3 1D
LDX $00                 ; $12:D4F8: A6 00
LDA #$27                ; $12:D4FA: A9 27
JSR CODE_12B00D         ; $12:D4FC: 20 0D B0
LDX $00                 ; $12:D4FF: A6 00
DEC $33,x               ; $12:D501: D6 33
DEC $33,x               ; $12:D503: D6 33
LDX $12                 ; $12:D505: A6 12

CODE_12D507:
JSR CODE_12A0AA         ; $12:D507: 20 AA A0
JMP CODE_12BD29         ; $12:D50A: 4C 29 BD

CODE_12D50D:
LDA $51,x               ; $12:D50D: B5 51
CMP #$01                ; $12:D50F: C9 01
BEQ CODE_12D51E         ; $12:D511: F0 0B
LDA #$C1                ; $12:D513: A9 C1
STA $65,x               ; $12:D515: 95 65
STA $9F,x               ; $12:D517: 95 9F
LDA #$72                ; $12:D519: A9 72
JMP CODE_12BDD5         ; $12:D51B: 4C D5 BD

CODE_12D51E:
LDA $B1,x               ; $12:D51E: B5 B1
BNE CODE_12D55C         ; $12:D520: D0 3A
LDA $02F6               ; $12:D522: AD F6 02
PHA                     ; $12:D525: 48
LDA $02F7               ; $12:D526: AD F7 02
PHA                     ; $12:D529: 48
LDA $042C               ; $12:D52A: AD 2C 04
CLC                     ; $12:D52D: 18
ADC #$F5                ; $12:D52E: 69 F5
STA $042C               ; $12:D530: 8D 2C 04
PHX                     ; $12:D533: DA
JSL CODE_14E483         ; $12:D534: 22 83 E4 14
PLX                     ; $12:D538: FA
LDA $02F8               ; $12:D539: AD F8 02
STA $02F6               ; $12:D53C: 8D F6 02
LDA $02F9               ; $12:D53F: AD F9 02
STA $02F7               ; $12:D542: 8D F7 02
LDA #$02                ; $12:D545: A9 02
STA $045C,x             ; $12:D547: 9D 5C 04
PHX                     ; $12:D54A: DA
LDA #$78                ; $12:D54B: A9 78
JSR CODE_12BDD5         ; $12:D54D: 20 D5 BD
PLX                     ; $12:D550: FA
STZ $045C,x             ; $12:D551: 9E 5C 04
PLA                     ; $12:D554: 68
STA $02F7               ; $12:D555: 8D F7 02
PLA                     ; $12:D558: 68
STA $02F6               ; $12:D559: 8D F6 02

CODE_12D55C:
LDA $33,x               ; $12:D55C: B5 33
STA $042C               ; $12:D55E: 8D 2C 04
PHX                     ; $12:D561: DA
JSR CODE_12BDC9         ; $12:D562: 20 C9 BD
PLX                     ; $12:D565: FA
LDA #$02                ; $12:D566: A9 02
STA $6F,x               ; $12:D568: 95 6F
REP #$20                ; $12:D56A: C2 20
LDA $02F6               ; $12:D56C: AD F6 02
CLC                     ; $12:D56F: 18
ADC #$0004              ; $12:D570: 69 04 00
STA $02F6               ; $12:D573: 8D F6 02
SEP #$20                ; $12:D576: E2 20
LDA $00                 ; $12:D578: A5 00
STA $042C               ; $12:D57A: 8D 2C 04
LDA #$D0                ; $12:D57D: A9 D0
STA $046E,x             ; $12:D57F: 9D 6E 04
PHX                     ; $12:D582: DA
LDA #$74                ; $12:D583: A9 74
JSR CODE_12BDD5         ; $12:D585: 20 D5 BD
PLX                     ; $12:D588: FA
LDA #$50                ; $12:D589: A9 50
LDY $B1,x               ; $12:D58B: B4 B1
BEQ CODE_12D591         ; $12:D58D: F0 02
LDA #$52                ; $12:D58F: A9 52

CODE_12D591:
STA $046E,x             ; $12:D591: 9D 6E 04
RTS                     ; $12:D594: 60

CODE_12D595:
JSR CODE_129F96         ; $12:D595: 20 96 9F
LDA $33,x               ; $12:D598: B5 33
STA $B1,x               ; $12:D59A: 95 B1
RTS                     ; $12:D59C: 60

CODE_12D59D:
INC $9F,x               ; $12:D59D: F6 9F
INC $9F,x               ; $12:D59F: F6 9F
INC $79,x               ; $12:D5A1: F6 79
LDA $79,x               ; $12:D5A3: B5 79
CMP #$40                ; $12:D5A5: C9 40
BCS CODE_12D5AE         ; $12:D5A7: B0 05
LDA #$E0                ; $12:D5A9: A9 E0
STA $33,x               ; $12:D5AB: 95 33

CODE_12D5AD:
RTS                     ; $12:D5AD: 60

CODE_12D5AE:
BNE CODE_12D5BD         ; $12:D5AE: D0 0D
LDA #$D0                ; $12:D5B0: A9 D0
STA $47,x               ; $12:D5B2: 95 47
LDA $B1,x               ; $12:D5B4: B5 B1
STA $33,x               ; $12:D5B6: 95 33
LDA #$49                ; $12:D5B8: A9 49
STA $1DE3               ; $12:D5BA: 8D E3 1D

CODE_12D5BD:
LDA $79,x               ; $12:D5BD: B5 79
CMP #$80                ; $12:D5BF: C9 80
BCC CODE_12D5D1         ; $12:D5C1: 90 0E
CMP #$DC                ; $12:D5C3: C9 DC
BCS CODE_12D5D1         ; $12:D5C5: B0 0A
LDY #$03                ; $12:D5C7: A0 03
AND #$10                ; $12:D5C9: 29 10
BEQ CODE_12D5CF         ; $12:D5CB: F0 02
LDY #$FB                ; $12:D5CD: A0 FB

CODE_12D5CF:
STY $47,x               ; $12:D5CF: 94 47

CODE_12D5D1:
INC $47,x               ; $12:D5D1: F6 47
JSR CODE_12C1EA         ; $12:D5D3: 20 EA C1

CODE_12D5D6:
LDA $79,x               ; $12:D5D6: B5 79
STA $07                 ; $12:D5D8: 85 07
LDA #$29                ; $12:D5DA: A9 29
STA $65,x               ; $12:D5DC: 95 65
LDY $79,x               ; $12:D5DE: B4 79
CPY #$DC                ; $12:D5E0: C0 DC
BCC CODE_12D5FC         ; $12:D5E2: 90 18
LDA #$9E                ; $12:D5E4: A9 9E
CPY #$F4                ; $12:D5E6: C0 F4
BCC CODE_12D5EC         ; $12:D5E8: 90 02
LDA #$9F                ; $12:D5EA: A9 9F

CODE_12D5EC:
STA $04                 ; $12:D5EC: 85 04
JSL CODE_14E483         ; $12:D5EE: 22 83 E4 14
JSR CODE_12D73A         ; $12:D5F2: 20 3A D7
REP #$10                ; $12:D5F5: C2 10
LDX $02F8               ; $12:D5F7: AE F8 02
BRA CODE_12D612         ; $12:D5FA: 80 16

CODE_12D5FC:
STZ $04                 ; $12:D5FC: 64 04
LDA #$90                ; $12:D5FE: A9 90
JSR CODE_12BDD5         ; $12:D600: 20 D5 BD
REP #$10                ; $12:D603: C2 10
LDX $02F6               ; $12:D605: AE F6 02
LDA $0803,x             ; $12:D608: BD 03 08
AND #$CF                ; $12:D60B: 29 CF
ORA #$20                ; $12:D60D: 09 20
STA $0803,x             ; $12:D60F: 9D 03 08

CODE_12D612:
LDA $0803,x             ; $12:D612: BD 03 08
STA $05                 ; $12:D615: 85 05
SEP #$10                ; $12:D617: E2 10
LDX $12                 ; $12:D619: A6 12
LDA $EE                 ; $12:D61B: A5 EE
BNE CODE_12D5AD         ; $12:D61D: D0 8E
STZ $ED                 ; $12:D61F: 64 ED
LDA $0429               ; $12:D621: AD 29 04
CLC                     ; $12:D624: 18
ADC #$04                ; $12:D625: 69 04
LDA $021F               ; $12:D627: AD 1F 02
ADC #$00                ; $12:D62A: 69 00
BEQ CODE_12D632         ; $12:D62C: F0 04
LDA #$04                ; $12:D62E: A9 04
STA $ED                 ; $12:D630: 85 ED

CODE_12D632:
JSL CODE_14E483         ; $12:D632: 22 83 E4 14
LDA #$E0                ; $12:D636: A9 E0
STA $02                 ; $12:D638: 85 02
LDA #$E4                ; $12:D63A: A9 E4
STA $03                 ; $12:D63C: 85 03
LDX $12                 ; $12:D63E: A6 12
LDA $33,x               ; $12:D640: B5 33
STA $0712               ; $12:D642: 8D 12 07
LDA $1F,x               ; $12:D645: B5 1F
STA $0713               ; $12:D647: 8D 13 07
REP #$20                ; $12:D64A: C2 20
LDA $0712               ; $12:D64C: AD 12 07
CLC                     ; $12:D64F: 18
ADC #$000F              ; $12:D650: 69 0F 00
STA $0712               ; $12:D653: 8D 12 07
ADC #$0008              ; $12:D656: 69 08 00
STA $0714               ; $12:D659: 8D 14 07
SEP #$20                ; $12:D65C: E2 20
PHP                     ; $12:D65E: 08
JSR CODE_12D6D6         ; $12:D65F: 20 D6 D6
JSL CODE_14E483         ; $12:D662: 22 83 E4 14
LDA #$E8                ; $12:D666: A9 E8
STA $02                 ; $12:D668: 85 02
LDA #$EC                ; $12:D66A: A9 EC
STA $03                 ; $12:D66C: 85 03
LDX $12                 ; $12:D66E: A6 12
PLP                     ; $12:D670: 28
REP #$20                ; $12:D671: C2 20
LDA $0714               ; $12:D673: AD 14 07
ADC #$0008              ; $12:D676: 69 08 00
STA $0712               ; $12:D679: 8D 12 07
ADC #$0008              ; $12:D67C: 69 08 00
STA $0714               ; $12:D67F: 8D 14 07
SEP #$20                ; $12:D682: E2 20
PHP                     ; $12:D684: 08
JSR CODE_12D6D6         ; $12:D685: 20 D6 D6
JSL CODE_14E483         ; $12:D688: 22 83 E4 14
LDA #$F0                ; $12:D68C: A9 F0
STA $02                 ; $12:D68E: 85 02
LDA #$F4                ; $12:D690: A9 F4
STA $03                 ; $12:D692: 85 03
LDX $12                 ; $12:D694: A6 12
PLP                     ; $12:D696: 28
REP #$20                ; $12:D697: C2 20
LDA $0714               ; $12:D699: AD 14 07
ADC #$0008              ; $12:D69C: 69 08 00
STA $0712               ; $12:D69F: 8D 12 07
ADC #$0008              ; $12:D6A2: 69 08 00
STA $0714               ; $12:D6A5: 8D 14 07
SEP #$20                ; $12:D6A8: E2 20
PHP                     ; $12:D6AA: 08
JSR CODE_12D6D6         ; $12:D6AB: 20 D6 D6
JSL CODE_14E483         ; $12:D6AE: 22 83 E4 14
LDA #$F8                ; $12:D6B2: A9 F8
STA $02                 ; $12:D6B4: 85 02
LDA #$FC                ; $12:D6B6: A9 FC
STA $03                 ; $12:D6B8: 85 03
LDX $12                 ; $12:D6BA: A6 12
PLP                     ; $12:D6BC: 28
REP #$20                ; $12:D6BD: C2 20
LDA $0714               ; $12:D6BF: AD 14 07
ADC #$0008              ; $12:D6C2: 69 08 00
STA $0712               ; $12:D6C5: 8D 12 07
ADC #$0008              ; $12:D6C8: 69 08 00
STA $0714               ; $12:D6CB: 8D 14 07
SEP #$20                ; $12:D6CE: E2 20
JSR CODE_12D6D6         ; $12:D6D0: 20 D6 D6
LDX $12                 ; $12:D6D3: A6 12

CODE_12D6D5:
RTS                     ; $12:D6D5: 60

CODE_12D6D6:
REP #$20                ; $12:D6D6: C2 20
LDA $0712               ; $12:D6D8: AD 12 07
CMP #$00F0              ; $12:D6DB: C9 F0 00
SEP #$20                ; $12:D6DE: E2 20
BCS CODE_12D6D5         ; $12:D6E0: B0 F3
LDA #$8E                ; $12:D6E2: A9 8E
LDX $07                 ; $12:D6E4: A6 07
CPX $02                 ; $12:D6E6: E4 02
BCC CODE_12D6EC         ; $12:D6E8: 90 02
LDA $04                 ; $12:D6EA: A5 04

CODE_12D6EC:
PHA                     ; $12:D6EC: 48
LDA #$8E                ; $12:D6ED: A9 8E
CPX $03                 ; $12:D6EF: E4 03
BCC CODE_12D6F5         ; $12:D6F1: 90 02
LDA $04                 ; $12:D6F3: A5 04

CODE_12D6F5:
PHA                     ; $12:D6F5: 48
REP #$10                ; $12:D6F6: C2 10
LDY $02F8               ; $12:D6F8: AC F8 02
PLA                     ; $12:D6FB: 68
STA $0806,y             ; $12:D6FC: 99 06 08
PLA                     ; $12:D6FF: 68
STA $0802,y             ; $12:D700: 99 02 08
LDA $05                 ; $12:D703: A5 05
STA $0803,y             ; $12:D705: 99 03 08
STA $0807,y             ; $12:D708: 99 07 08
LDA $0429               ; $12:D70B: AD 29 04
CLC                     ; $12:D70E: 18
ADC #$04                ; $12:D70F: 69 04
STA $0800,y             ; $12:D711: 99 00 08
STA $0804,y             ; $12:D714: 99 04 08
LDA $0712               ; $12:D717: AD 12 07
STA $0801,y             ; $12:D71A: 99 01 08
LDA $0714               ; $12:D71D: AD 14 07
STA $0805,y             ; $12:D720: 99 05 08
REP #$20                ; $12:D723: C2 20
TYA                     ; $12:D725: 98
LSR A                   ; $12:D726: 4A
LSR A                   ; $12:D727: 4A
TAY                     ; $12:D728: A8
SEP #$20                ; $12:D729: E2 20
LDA $ED                 ; $12:D72B: A5 ED
AND #$04                ; $12:D72D: 29 04
LSR A                   ; $12:D72F: 4A
LSR A                   ; $12:D730: 4A
STA $0A20,y             ; $12:D731: 99 20 0A
STA $0A21,y             ; $12:D734: 99 21 0A
SEP #$10                ; $12:D737: E2 10
RTS                     ; $12:D739: 60

CODE_12D73A:
JSR CODE_12D741         ; $12:D73A: 20 41 D7
JSL CODE_14E483         ; $12:D73D: 22 83 E4 14

CODE_12D741:
REP #$10                ; $12:D741: C2 10
LDY $02F8               ; $12:D743: AC F8 02
LDA $0429               ; $12:D746: AD 29 04
STA $0800,y             ; $12:D749: 99 00 08
CLC                     ; $12:D74C: 18
ADC #$08                ; $12:D74D: 69 08
STA $0804,y             ; $12:D74F: 99 04 08
LDA $042C               ; $12:D752: AD 2C 04
STA $0801,y             ; $12:D755: 99 01 08
STA $0805,y             ; $12:D758: 99 05 08
LDA $04                 ; $12:D75B: A5 04
STA $0802,y             ; $12:D75D: 99 02 08
STA $0806,y             ; $12:D760: 99 06 08
LDX #$0000              ; $12:D763: A2 00 00
LDA $10                 ; $12:D766: A5 10
AND #$04                ; $12:D768: 29 04
BEQ CODE_12D76F         ; $12:D76A: F0 03
LDX #$0040              ; $12:D76C: A2 40 00

CODE_12D76F:
TXA                     ; $12:D76F: 8A
ORA #$03                ; $12:D770: 09 03
STA $0803,y             ; $12:D772: 99 03 08
STA $0807,y             ; $12:D775: 99 07 08
REP #$20                ; $12:D778: C2 20
TYA                     ; $12:D77A: 98
LSR A                   ; $12:D77B: 4A
LSR A                   ; $12:D77C: 4A
TAY                     ; $12:D77D: A8
SEP #$20                ; $12:D77E: E2 20
LDA $ED                 ; $12:D780: A5 ED
AND #$08                ; $12:D782: 29 08
LSR A                   ; $12:D784: 4A
LSR A                   ; $12:D785: 4A
LSR A                   ; $12:D786: 4A
STA $0A20,y             ; $12:D787: 99 20 0A
LDA $ED                 ; $12:D78A: A5 ED
AND #$04                ; $12:D78C: 29 04
LSR A                   ; $12:D78E: 4A
LSR A                   ; $12:D78F: 4A
STA $0A21,y             ; $12:D790: 99 21 0A
SEP #$10                ; $12:D793: E2 10
RTS                     ; $12:D795: 60

CODE_12D796:
INC $9F,x               ; $12:D796: F6 9F
JSR CODE_12BB16         ; $12:D798: 20 16 BB
JSR CODE_12BA46         ; $12:D79B: 20 46 BA
JSR CODE_12DDAB         ; $12:D79E: 20 AB DD
LDA $5B,x               ; $12:D7A1: B5 5B
AND #$03                ; $12:D7A3: 29 03
BEQ CODE_12D7AA         ; $12:D7A5: F0 03
JSR CODE_12C248         ; $12:D7A7: 20 48 C2

CODE_12D7AA:
LDA $5B,x               ; $12:D7AA: B5 5B
AND #$04                ; $12:D7AC: 29 04
BEQ CODE_12D7D1         ; $12:D7AE: F0 21
LDA $47,x               ; $12:D7B0: B5 47
PHA                     ; $12:D7B2: 48
JSR CODE_12B659         ; $12:D7B3: 20 59 B6
PLA                     ; $12:D7B6: 68
LDY $042F,x             ; $12:D7B7: BC 2F 04
BEQ CODE_12D7D1         ; $12:D7BA: F0 15
CMP #$18                ; $12:D7BC: C9 18
BMI CODE_12D7C9         ; $12:D7BE: 30 09
JSR CODE_12B63B         ; $12:D7C0: 20 3B B6
LDA #$F0                ; $12:D7C3: A9 F0
STA $47,x               ; $12:D7C5: 95 47
BNE CODE_12D7F7         ; $12:D7C7: D0 2E

CODE_12D7C9:
LDA #$00                ; $12:D7C9: A9 00
STA $042F,x             ; $12:D7CB: 9D 2F 04
JSR CODE_129F7A         ; $12:D7CE: 20 7A 9F

CODE_12D7D1:
LDA $0E                 ; $12:D7D1: A5 0E
CMP #$26                ; $12:D7D3: C9 26
BEQ CODE_12D7DC         ; $12:D7D5: F0 05
DEC $9F,x               ; $12:D7D7: D6 9F
JMP CODE_12B4D4         ; $12:D7D9: 4C D4 B4

CODE_12D7DC:
JSR CODE_12C1DA         ; $12:D7DC: 20 DA C1
INY                     ; $12:D7DF: C8
STY $6F,x               ; $12:D7E0: 94 6F
LDA $10                 ; $12:D7E2: A5 10
AND #$01                ; $12:D7E4: 29 01
BNE CODE_12D7F7         ; $12:D7E6: D0 0F
LDA $3D,x               ; $12:D7E8: B5 3D
CMP.w DATA_119B0F,y     ; $12:D7EA: D9 0F 9B
BEQ CODE_12D7F7         ; $12:D7ED: F0 08
CLC                     ; $12:D7EF: 18
ADC.w DATA_119B11,y     ; $12:D7F0: 79 11 9B
STA $3D,x               ; $12:D7F3: 95 3D
INC $9F,x               ; $12:D7F5: F6 9F

CODE_12D7F7:
JSR CODE_12A0AA         ; $12:D7F7: 20 AA A0
INC $04A4,x             ; $12:D7FA: FE A4 04
JMP CODE_12BD29         ; $12:D7FD: 4C 29 BD

CODE_12D800:
JSR CODE_12AC78         ; $12:D800: 20 78 AC
LDA #$03                ; $12:D803: A9 03
STA $0465,x             ; $12:D805: 9D 65 04
RTS                     ; $12:D808: 60

CODE_12D809:
JSR CODE_12D8FE         ; $12:D809: 20 FE D8
LDA #$06                ; $12:D80C: A9 06
STA $046E,x             ; $12:D80E: 9D 6E 04
LDA #$02                ; $12:D811: A9 02
STA $1238               ; $12:D813: 8D 38 12
LDA $04B5               ; $12:D816: AD B5 04
BEQ CODE_12D875         ; $12:D819: F0 5A
CMP #$01                ; $12:D81B: C9 01
BNE CODE_12D831         ; $12:D81D: D0 12
STA $0480,x             ; $12:D81F: 9D 80 04
LDA #$90                ; $12:D822: A9 90
STA $86,x               ; $12:D824: 95 86
LDA #$40                ; $12:D826: A9 40
STA $0438,x             ; $12:D828: 9D 38 04
STA $045C,x             ; $12:D82B: 9D 5C 04
STA $04B5               ; $12:D82E: 8D B5 04

CODE_12D831:
LDA $0480,x             ; $12:D831: BD 80 04
CMP #$02                ; $12:D834: C9 02
BCC CODE_12D8B1         ; $12:D836: 90 79
LDA $B1,x               ; $12:D838: B5 B1
BNE CODE_12D850         ; $12:D83A: D0 14
INC $0480,x             ; $12:D83C: FE 80 04
LDA $0480,x             ; $12:D83F: BD 80 04
CMP #$31                ; $12:D842: C9 31
BNE CODE_12D876         ; $12:D844: D0 30
LDA $0453,x             ; $12:D846: BD 53 04
BNE CODE_12D850         ; $12:D849: D0 05
INC $B1,x               ; $12:D84B: F6 B1
JSR CODE_12D8AB         ; $12:D84D: 20 AB D8

CODE_12D850:
DEC $0480,x             ; $12:D850: DE 80 04
LDY $0480,x             ; $12:D853: BC 80 04
DEY                     ; $12:D856: 88
BNE CODE_12D876         ; $12:D857: D0 1D
DEC $B1,x               ; $12:D859: D6 B1
LDA $50                 ; $12:D85B: A5 50
CMP #$06                ; $12:D85D: C9 06
BNE CODE_12D876         ; $12:D85F: D0 15
LDA #$01                ; $12:D861: A9 01
STA $0536               ; $12:D863: 8D 36 05
JSL CODE_14E35A         ; $12:D866: 22 5A E3 14
LDA #$09                ; $12:D86A: A9 09
STA $14                 ; $12:D86C: 85 14
INC $0627               ; $12:D86E: EE 27 06
PLA                     ; $12:D871: 68
PLA                     ; $12:D872: 68
PLA                     ; $12:D873: 68
PLA                     ; $12:D874: 68

CODE_12D875:
RTS                     ; $12:D875: 60

CODE_12D876:
LDA $0480,x             ; $12:D876: BD 80 04
CMP #$30                ; $12:D879: C9 30
BNE CODE_12D8B0         ; $12:D87B: D0 33
LDA $5B,x               ; $12:D87D: B5 5B
AND #$40                ; $12:D87F: 29 40
BEQ CODE_12D8B0         ; $12:D881: F0 2D
LDA $9C                 ; $12:D883: A5 9C
BNE CODE_12D8B0         ; $12:D885: D0 29
STA $5A                 ; $12:D887: 85 5A
INC $B1,x               ; $12:D889: F6 B1
INC $04B4               ; $12:D88B: EE B4 04
DEC $0480,x             ; $12:D88E: DE 80 04
LDA $29,x               ; $12:D891: B5 29
STA $28                 ; $12:D893: 85 28
LDA $15,x               ; $12:D895: B5 15
STA $14                 ; $12:D897: 85 14
LDA $33,x               ; $12:D899: B5 33
ADC #$10                ; $12:D89B: 69 10
STA $32                 ; $12:D89D: 85 32
LDA #$06                ; $12:D89F: A9 06
STA $50                 ; $12:D8A1: 85 50
LDA #$60                ; $12:D8A3: A9 60
STA $82                 ; $12:D8A5: 85 82
LDA #$FC                ; $12:D8A7: A9 FC
STA $46                 ; $12:D8A9: 85 46

CODE_12D8AB:
LDA #$2D                ; $12:D8AB: A9 2D
STA $1DE0               ; $12:D8AD: 8D E0 1D

CODE_12D8B0:
RTS                     ; $12:D8B0: 60

CODE_12D8B1:
LDA #$03                ; $12:D8B1: A9 03
STA $046E,x             ; $12:D8B3: 9D 6E 04
LDA #$00                ; $12:D8B6: A9 00
STA $1238               ; $12:D8B8: 8D 38 12
LDA $0465,x             ; $12:D8BB: BD 65 04
BNE CODE_12D8D2         ; $12:D8BE: D0 12
LDA #$03                ; $12:D8C0: A9 03
STA $0465,x             ; $12:D8C2: 9D 65 04
LDA #$2C                ; $12:D8C5: A9 2C
STA $1DE0               ; $12:D8C7: 8D E0 1D
INC $0480,x             ; $12:D8CA: FE 80 04
LDA #$FF                ; $12:D8CD: A9 FF
STA $0453,x             ; $12:D8CF: 9D 53 04

CODE_12D8D2:
LDA $10                 ; $12:D8D2: A5 10
LSR A                   ; $12:D8D4: 4A
BCC CODE_12D8FB         ; $12:D8D5: 90 24
LDA $79,x               ; $12:D8D7: B5 79
AND #$01                ; $12:D8D9: 29 01
TAY                     ; $12:D8DB: A8
LDA $47,x               ; $12:D8DC: B5 47
CLC                     ; $12:D8DE: 18
ADC.w DATA_119826,y     ; $12:D8DF: 79 26 98
STA $47,x               ; $12:D8E2: 95 47
CMP.w DATA_119B16,y     ; $12:D8E4: D9 16 9B
BNE CODE_12D8EB         ; $12:D8E7: D0 02
INC $79,x               ; $12:D8E9: F6 79

CODE_12D8EB:
JSR CODE_12C1DA         ; $12:D8EB: 20 DA C1
LDA $3D,x               ; $12:D8EE: B5 3D
CMP.w DATA_119B14,y     ; $12:D8F0: D9 14 9B
BEQ CODE_12D8FB         ; $12:D8F3: F0 06
CLC                     ; $12:D8F5: 18
ADC.w DATA_119822,y     ; $12:D8F6: 79 22 98
STA $3D,x               ; $12:D8F9: 95 3D

CODE_12D8FB:
JMP CODE_12B497         ; $12:D8FB: 4C 97 B4

CODE_12D8FE:
LDA $0480,x             ; $12:D8FE: BD 80 04
JSR CODE_12AD41         ; $12:D901: 20 41 AD
LDA $04B5               ; $12:D904: AD B5 04

; If crystal ball has not been collected
BEQ CODE_12D90F         ; $12:D907: F0 06
CMP #$01                ; $12:D909: C9 01

; If collected
BEQ CODE_12D90F         ; $12:D90B: F0 02
BRA CODE_12D912         ; $12:D90D: 80 03

CODE_12D90F:
BRL CODE_12DAF1         ; $12:D90F: 82 DF 01

CODE_12D912:
LDA $02F8               ; $12:D912: AD F8 02
STA $02F6               ; $12:D915: 8D F6 02
LDA $02F9               ; $12:D918: AD F9 02
STA $02F7               ; $12:D91B: 8D F7 02
LDA $86,x               ; $12:D91E: B5 86
STA $07                 ; $12:D920: 85 07
JSL CODE_14E483         ; $12:D922: 22 83 E4 14
LDX $02                 ; $12:D926: A6 02
LDA $021F               ; $12:D928: AD 1F 02
XBA                     ; $12:D92B: EB
LDA $0429               ; $12:D92C: AD 29 04
REP #$20                ; $12:D92F: C2 20
STA $0712               ; $12:D931: 8D 12 07
LDA.w DATA_119B17,x     ; $12:D934: BD 17 9B
AND #$00FF              ; $12:D937: 29 FF 00
CMP #$0080              ; $12:D93A: C9 80 00
BCC CODE_12D942         ; $12:D93D: 90 03
ORA #$FF00              ; $12:D93F: 09 00 FF

CODE_12D942:
CLC                     ; $12:D942: 18
ADC $0712               ; $12:D943: 6D 12 07
STA $0714               ; $12:D946: 8D 14 07
SEP #$20                ; $12:D949: E2 20
PHA                     ; $12:D94B: 48
PHP                     ; $12:D94C: 08
DEX                     ; $12:D94D: CA
BEQ CODE_12D954         ; $12:D94E: F0 04
PLA                     ; $12:D950: 68
EOR #$01                ; $12:D951: 49 01
PHA                     ; $12:D953: 48

CODE_12D954:
PLP                     ; $12:D954: 28
PLA                     ; $12:D955: 68
REP #$10                ; $12:D956: C2 10
LDY $02F8               ; $12:D958: AC F8 02
STA $0800,y             ; $12:D95B: 99 00 08
STA $0804,y             ; $12:D95E: 99 04 08
STA $0712               ; $12:D961: 8D 12 07
LDX #$0060              ; $12:D964: A2 60 00
LDA $0801,x             ; $12:D967: BD 01 08
STA $0801,y             ; $12:D96A: 99 01 08
CLC                     ; $12:D96D: 18
ADC #$08                ; $12:D96E: 69 08
STA $0805,y             ; $12:D970: 99 05 08
LDA $0803,x             ; $12:D973: BD 03 08
STA $0716               ; $12:D976: 8D 16 07
LDA $07                 ; $12:D979: A5 07
BEQ CODE_12D987         ; $12:D97B: F0 0A
LDA $0716               ; $12:D97D: AD 16 07
AND #$CF                ; $12:D980: 29 CF
ORA #$10                ; $12:D982: 09 10
STA $0716               ; $12:D984: 8D 16 07

CODE_12D987:
LDA $0716               ; $12:D987: AD 16 07
ORA #$01                ; $12:D98A: 09 01
STA $0803,y             ; $12:D98C: 99 03 08
STA $0807,y             ; $12:D98F: 99 07 08
LDA #$AE                ; $12:D992: A9 AE
STA $0802,y             ; $12:D994: 99 02 08
LDA #$BE                ; $12:D997: A9 BE
STA $0806,y             ; $12:D999: 99 06 08
REP #$20                ; $12:D99C: C2 20
TYA                     ; $12:D99E: 98
LSR A                   ; $12:D99F: 4A
LSR A                   ; $12:D9A0: 4A
TAY                     ; $12:D9A1: A8
SEP #$20                ; $12:D9A2: E2 20
LDA $0715               ; $12:D9A4: AD 15 07
BEQ CODE_12D9AB         ; $12:D9A7: F0 02
LDA #$01                ; $12:D9A9: A9 01

CODE_12D9AB:
STA $0A20,y             ; $12:D9AB: 99 20 0A
STA $0A21,y             ; $12:D9AE: 99 21 0A
JSL CODE_14E483         ; $12:D9B1: 22 83 E4 14
REP #$10                ; $12:D9B5: C2 10
LDX #$0060              ; $12:D9B7: A2 60 00
LDY $02F8               ; $12:D9BA: AC F8 02
LDA $0712               ; $12:D9BD: AD 12 07
STA $0800,y             ; $12:D9C0: 99 00 08
STA $0804,y             ; $12:D9C3: 99 04 08
LDA $0801,x             ; $12:D9C6: BD 01 08
CLC                     ; $12:D9C9: 18
ADC #$10                ; $12:D9CA: 69 10
STA $0801,y             ; $12:D9CC: 99 01 08
CLC                     ; $12:D9CF: 18
ADC #$08                ; $12:D9D0: 69 08
STA $0805,y             ; $12:D9D2: 99 05 08
LDA $0716               ; $12:D9D5: AD 16 07
ORA #$01                ; $12:D9D8: 09 01
STA $0803,y             ; $12:D9DA: 99 03 08
STA $0807,y             ; $12:D9DD: 99 07 08
LDA #$AF                ; $12:D9E0: A9 AF
STA $0802,y             ; $12:D9E2: 99 02 08
LDA #$BF                ; $12:D9E5: A9 BF
STA $0806,y             ; $12:D9E7: 99 06 08
REP #$20                ; $12:D9EA: C2 20
TYA                     ; $12:D9EC: 98
LSR A                   ; $12:D9ED: 4A
LSR A                   ; $12:D9EE: 4A
TAY                     ; $12:D9EF: A8
SEP #$20                ; $12:D9F0: E2 20
LDA $0715               ; $12:D9F2: AD 15 07
BEQ CODE_12D9F9         ; $12:D9F5: F0 02
LDA #$01                ; $12:D9F7: A9 01

CODE_12D9F9:
STA $0A20,y             ; $12:D9F9: 99 20 0A
STA $0A21,y             ; $12:D9FC: 99 21 0A
JSL CODE_14E483         ; $12:D9FF: 22 83 E4 14
REP #$10                ; $12:DA03: C2 10
LDX #$0060              ; $12:DA05: A2 60 00
LDY $02F8               ; $12:DA08: AC F8 02
LDA $0712               ; $12:DA0B: AD 12 07
STA $0800,y             ; $12:DA0E: 99 00 08
LDA $0801,x             ; $12:DA11: BD 01 08
CLC                     ; $12:DA14: 18
ADC #$20                ; $12:DA15: 69 20
STA $0801,y             ; $12:DA17: 99 01 08
LDA #$BF                ; $12:DA1A: A9 BF
STA $0802,y             ; $12:DA1C: 99 02 08
LDA $0716               ; $12:DA1F: AD 16 07
ORA #$01                ; $12:DA22: 09 01
STA $0803,y             ; $12:DA24: 99 03 08
REP #$20                ; $12:DA27: C2 20
LDA $12                 ; $12:DA29: A5 12
AND #$00FF              ; $12:DA2B: 29 FF 00
TAX                     ; $12:DA2E: AA
SEP #$20                ; $12:DA2F: E2 20
LDA $0480,x             ; $12:DA31: BD 80 04
CMP #$02                ; $12:DA34: C9 02
BCS CODE_12DA3D         ; $12:DA36: B0 05
LDA #$F0                ; $12:DA38: A9 F0
STA $0801,y             ; $12:DA3A: 99 01 08

CODE_12DA3D:
REP #$20                ; $12:DA3D: C2 20
TYA                     ; $12:DA3F: 98
LSR A                   ; $12:DA40: 4A
LSR A                   ; $12:DA41: 4A
TAY                     ; $12:DA42: A8
SEP #$20                ; $12:DA43: E2 20
LDA $0715               ; $12:DA45: AD 15 07
BEQ CODE_12DA4C         ; $12:DA48: F0 02
LDA #$01                ; $12:DA4A: A9 01

CODE_12DA4C:
STA $0A20,y             ; $12:DA4C: 99 20 0A
JSL CODE_14E483         ; $12:DA4F: 22 83 E4 14
REP #$10                ; $12:DA53: C2 10
LDX #$0060              ; $12:DA55: A2 60 00
LDY $02F8               ; $12:DA58: AC F8 02
LDA $0712               ; $12:DA5B: AD 12 07
STA $0800,y             ; $12:DA5E: 99 00 08
STA $0804,y             ; $12:DA61: 99 04 08
LDA $0803,x             ; $12:DA64: BD 03 08
STA $0716               ; $12:DA67: 8D 16 07
LDA $07                 ; $12:DA6A: A5 07
BEQ CODE_12DA78         ; $12:DA6C: F0 0A
LDA $0803,x             ; $12:DA6E: BD 03 08
AND #$CF                ; $12:DA71: 29 CF
ORA #$10                ; $12:DA73: 09 10
STA $0716               ; $12:DA75: 8D 16 07

CODE_12DA78:
LDA $0716               ; $12:DA78: AD 16 07
ORA #$01                ; $12:DA7B: 09 01
STA $0803,y             ; $12:DA7D: 99 03 08
STA $0807,y             ; $12:DA80: 99 07 08
STA $0716               ; $12:DA83: 8D 16 07
LDX #$0068              ; $12:DA86: A2 68 00
LDA $0801,x             ; $12:DA89: BD 01 08
CLC                     ; $12:DA8C: 18
ADC #$08                ; $12:DA8D: 69 08
STA $0801,y             ; $12:DA8F: 99 01 08
CLC                     ; $12:DA92: 18
ADC #$08                ; $12:DA93: 69 08
STA $0805,y             ; $12:DA95: 99 05 08
LDA #$AF                ; $12:DA98: A9 AF
STA $0802,y             ; $12:DA9A: 99 02 08
LDA #$BF                ; $12:DA9D: A9 BF
STA $0806,y             ; $12:DA9F: 99 06 08
REP #$20                ; $12:DAA2: C2 20
TYA                     ; $12:DAA4: 98
LSR A                   ; $12:DAA5: 4A
LSR A                   ; $12:DAA6: 4A
TAY                     ; $12:DAA7: A8
SEP #$20                ; $12:DAA8: E2 20
LDA $0715               ; $12:DAAA: AD 15 07
BEQ CODE_12DAB1         ; $12:DAAD: F0 02
LDA #$01                ; $12:DAAF: A9 01

CODE_12DAB1:
STA $0A20,y             ; $12:DAB1: 99 20 0A
STA $0A21,y             ; $12:DAB4: 99 21 0A
JSL CODE_14E483         ; $12:DAB7: 22 83 E4 14
REP #$10                ; $12:DABB: C2 10
LDX #$0068              ; $12:DABD: A2 68 00
LDY $02F8               ; $12:DAC0: AC F8 02
LDA $0712               ; $12:DAC3: AD 12 07
STA $0800,y             ; $12:DAC6: 99 00 08
LDA $0801,x             ; $12:DAC9: BD 01 08
CLC                     ; $12:DACC: 18
ADC #$18                ; $12:DACD: 69 18
STA $0801,y             ; $12:DACF: 99 01 08
LDA #$8F                ; $12:DAD2: A9 8F
STA $0802,y             ; $12:DAD4: 99 02 08
LDA $0716               ; $12:DAD7: AD 16 07
ORA #$01                ; $12:DADA: 09 01
STA $0803,y             ; $12:DADC: 99 03 08
REP #$20                ; $12:DADF: C2 20
TYA                     ; $12:DAE1: 98
LSR A                   ; $12:DAE2: 4A
LSR A                   ; $12:DAE3: 4A
TAY                     ; $12:DAE4: A8
SEP #$20                ; $12:DAE5: E2 20
LDA $0715               ; $12:DAE7: AD 15 07
BEQ CODE_12DAEE         ; $12:DAEA: F0 02
LDA #$01                ; $12:DAEC: A9 01

CODE_12DAEE:
STA $0A20,y             ; $12:DAEE: 99 20 0A

CODE_12DAF1:
SEP #$10                ; $12:DAF1: E2 10
LDX $12                 ; $12:DAF3: A6 12
RTS                     ; $12:DAF5: 60

CODE_12DAF6:
LDA $9C                 ; $12:DAF6: A5 9C
BNE CODE_12DB42         ; $12:DAF8: D0 48
LDA $10                 ; $12:DAFA: A5 10
AND #$FF                ; $12:DAFC: 29 FF
BNE CODE_12DB42         ; $12:DAFE: D0 42
INC $04FA               ; $12:DB00: EE FA 04
JSR CODE_12B331         ; $12:DB03: 20 31 B3
BMI CODE_12DB42         ; $12:DB06: 30 3A
LDX $00                 ; $12:DB08: A6 00
LDA $04FA               ; $12:DB0A: AD FA 04
AND #$07                ; $12:DB0D: 29 07
TAY                     ; $12:DB0F: A8
LDA.w DATA_119B22,y     ; $12:DB10: B9 22 9B
STA $3D,x               ; $12:DB13: 95 3D
TYA                     ; $12:DB15: 98
AND #$03                ; $12:DB16: 29 03
TAY                     ; $12:DB18: A8
LDA #$02                ; $12:DB19: A9 02
STA $15,x               ; $12:DB1B: 95 15
LDA.w DATA_119B1A,y     ; $12:DB1D: B9 1A 9B
STA $29,x               ; $12:DB20: 95 29
LDA.w DATA_119B1E,y     ; $12:DB22: B9 1E 9B
STA $33,x               ; $12:DB25: 95 33
LDA #$00                ; $12:DB27: A9 00
STA $1F,x               ; $12:DB29: 95 1F
LDA $0587               ; $12:DB2B: AD 87 05
AND #$03                ; $12:DB2E: 29 03
CMP #$02                ; $12:DB30: C9 02
BCC CODE_12DB37         ; $12:DB32: 90 03
ASL A                   ; $12:DB34: 0A
STA $B1,x               ; $12:DB35: 95 B1

CODE_12DB37:
LDY #$33                ; $12:DB37: A0 33
STY $90,x               ; $12:DB39: 94 90
JSR CODE_129F7A         ; $12:DB3B: 20 7A 9F
LDA #$D0                ; $12:DB3E: A9 D0
STA $47,x               ; $12:DB40: 95 47

CODE_12DB42:
RTS                     ; $12:DB42: 60

CODE_12DB43:
JSR CODE_129F96         ; $12:DB43: 20 96 9F
LDA #$06                ; $12:DB46: A9 06
STA $0465,x             ; $12:DB48: 9D 65 04
LDA $15,x               ; $12:DB4B: B5 15
STA $04F0,x             ; $12:DB4D: 9D F0 04
RTS                     ; $12:DB50: 60

CODE_12DB51:
LDA $B1,x               ; $12:DB51: B5 B1
BNE CODE_12DBC8         ; $12:DB53: D0 73
LDA $0465,x             ; $12:DB55: BD 65 04
BNE CODE_12DB62         ; $12:DB58: D0 08
LDA #$80                ; $12:DB5A: A9 80
STA $86,x               ; $12:DB5C: 95 86
STA $B1,x               ; $12:DB5E: 95 B1
BNE CODE_12DBC5         ; $12:DB60: D0 63

CODE_12DB62:
INC $79,x               ; $12:DB62: F6 79
LDA $10                 ; $12:DB64: A5 10
AND #$FF                ; $12:DB66: 29 FF
BNE CODE_12DB71         ; $12:DB68: D0 07
LDA #$5F                ; $12:DB6A: A9 5F
STA $86,x               ; $12:DB6C: 95 86
INC $0480,x             ; $12:DB6E: FE 80 04

CODE_12DB71:
LDA #$00                ; $12:DB71: A9 00
STA $3D,x               ; $12:DB73: 95 3D
LDA $79,x               ; $12:DB75: B5 79
AND #$40                ; $12:DB77: 29 40
BEQ CODE_12DB88         ; $12:DB79: F0 0D
INC $0477,x             ; $12:DB7B: FE 77 04
LDA #$F8                ; $12:DB7E: A9 F8
LDY $79,x               ; $12:DB80: B4 79
BPL CODE_12DB86         ; $12:DB82: 10 02
LDA #$08                ; $12:DB84: A9 08

CODE_12DB86:
STA $3D,x               ; $12:DB86: 95 3D

CODE_12DB88:
JSR CODE_12C1EF         ; $12:DB88: 20 EF C1
LDA $045C,x             ; $12:DB8B: BD 5C 04
BNE CODE_12DBC5         ; $12:DB8E: D0 35
LDA $86,x               ; $12:DB90: B5 86
BEQ CODE_12DBC5         ; $12:DB92: F0 31
AND #$0F                ; $12:DB94: 29 0F
BNE CODE_12DBC5         ; $12:DB96: D0 2D
JSR CODE_12B335         ; $12:DB98: 20 35 B3
BMI CODE_12DBC5         ; $12:DB9B: 30 28
LDA #$46                ; $12:DB9D: A9 46
STA $1DE3               ; $12:DB9F: 8D E3 1D
LDA $0480,x             ; $12:DBA2: BD 80 04
AND #$03                ; $12:DBA5: 29 03
TAY                     ; $12:DBA7: A8
LDA $86,x               ; $12:DBA8: B5 86
LDX $00                 ; $12:DBAA: A6 00
LSR A                   ; $12:DBAC: 4A
EOR #$FF                ; $12:DBAD: 49 FF
STA $3D,x               ; $12:DBAF: 95 3D
LDA.w DATA_119B2A,y     ; $12:DBB1: B9 2A 9B
STA $47,x               ; $12:DBB4: 95 47
LDA #$11                ; $12:DBB6: A9 11
STA $90,x               ; $12:DBB8: 95 90
LDA $33,x               ; $12:DBBA: B5 33
ADC #$08                ; $12:DBBC: 69 08
STA $33,x               ; $12:DBBE: 95 33
JSR CODE_129F7A         ; $12:DBC0: 20 7A 9F
LDX $12                 ; $12:DBC3: A6 12

CODE_12DBC5:
JMP CODE_12BD29         ; $12:DBC5: 4C 29 BD

CODE_12DBC8:
LDA $86,x               ; $12:DBC8: B5 86
BEQ CODE_12DBE3         ; $12:DBCA: F0 17
STA $045C,x             ; $12:DBCC: 9D 5C 04
CMP #$01                ; $12:DBCF: C9 01
BNE CODE_12DBD7         ; $12:DBD1: D0 04
JSL CODE_13DCC2         ; $12:DBD3: 22 C2 DC 13

CODE_12DBD7:
INC $0477,x             ; $12:DBD7: FE 77 04
INC $0477,x             ; $12:DBDA: FE 77 04
LDA #$F0                ; $12:DBDD: A9 F0
STA $47,x               ; $12:DBDF: 95 47
BNE CODE_12DC19         ; $12:DBE1: D0 36

CODE_12DBE3:
LDA #$04                ; $12:DBE3: A9 04
STA $3D,x               ; $12:DBE5: 95 3D
JSR CODE_12C1EF         ; $12:DBE7: 20 EF C1
JSR CODE_12C1EA         ; $12:DBEA: 20 EA C1
LDA $10                 ; $12:DBED: A5 10
LSR A                   ; $12:DBEF: 4A
BCS CODE_12DC0F         ; $12:DBF0: B0 1D
INC $47,x               ; $12:DBF2: F6 47
BMI CODE_12DC0F         ; $12:DBF4: 30 19
LDA $10                 ; $12:DBF6: A5 10
AND #$1F                ; $12:DBF8: 29 1F
BNE CODE_12DC0F         ; $12:DBFA: D0 13
JSR CODE_12B335         ; $12:DBFC: 20 35 B3
LDX $00                 ; $12:DBFF: A6 00
LDA $33,x               ; $12:DC01: B5 33
ADC #$08                ; $12:DC03: 69 08
STA $33,x               ; $12:DC05: 95 33
JSR CODE_12B1F9         ; $12:DC07: 20 F9 B1
LDA #$20                ; $12:DC0A: A9 20
STA $1DE3               ; $12:DC0C: 8D E3 1D

CODE_12DC0F:
LDA $33,x               ; $12:DC0F: B5 33
CMP #$D0                ; $12:DC11: C9 D0
BCC CODE_12DC19         ; $12:DC13: 90 04
LDA #$02                ; $12:DC15: A9 02
STA $51,x               ; $12:DC17: 95 51

CODE_12DC19:
JMP CODE_12BD29         ; $12:DC19: 4C 29 BD

CODE_12DC1C:
INC $9F,x               ; $12:DC1C: F6 9F
JSR CODE_12C1EF         ; $12:DC1E: 20 EF C1
JSR CODE_12C1EA         ; $12:DC21: 20 EA C1
INC $47,x               ; $12:DC24: F6 47
JMP CODE_12BD29         ; $12:DC26: 4C 29 BD

CODE_12DC29:
RTS                     ; $12:DC29: 60

CODE_12DC2A:
REP #$20                ; $12:DC2A: C2 20
LDA $02F6               ; $12:DC2C: AD F6 02
STA $126C               ; $12:DC2F: 8D 6C 12
STA $1274               ; $12:DC32: 8D 74 12
SEP #$20                ; $12:DC35: E2 20
LDA $10                 ; $12:DC37: A5 10
AND #$03                ; $12:DC39: 29 03
ASL A                   ; $12:DC3B: 0A
STA $07                 ; $12:DC3C: 85 07
TAY                     ; $12:DC3E: A8
REP #$20                ; $12:DC3F: C2 20
LDA $1268,y             ; $12:DC41: B9 68 12
STA $02F6               ; $12:DC44: 8D F6 02
SEP #$20                ; $12:DC47: E2 20
LDA $EE                 ; $12:DC49: A5 EE
BNE CODE_12DC29         ; $12:DC4B: D0 DC
LDY $0465,x             ; $12:DC4D: BC 65 04
BNE CODE_12DC56         ; $12:DC50: D0 04
LDA #$4E                ; $12:DC52: A9 4E
STA $65,x               ; $12:DC54: 95 65

CODE_12DC56:
LDA $ED                 ; $12:DC56: A5 ED
PHA                     ; $12:DC58: 48
PHA                     ; $12:DC59: 48
LDY #$AC                ; $12:DC5A: A0 AC
LDA $B1,x               ; $12:DC5C: B5 B1
BNE CODE_12DC6F         ; $12:DC5E: D0 0F
LDA $045C,x             ; $12:DC60: BD 5C 04
BEQ CODE_12DC72         ; $12:DC63: F0 0D
CMP #$30                ; $12:DC65: C9 30
BCS CODE_12DC6F         ; $12:DC67: B0 06
AND #$08                ; $12:DC69: 29 08
BNE CODE_12DC6F         ; $12:DC6B: D0 02
LDY #$9C                ; $12:DC6D: A0 9C

CODE_12DC6F:
TYA                     ; $12:DC6F: 98
BNE CODE_12DC7A         ; $12:DC70: D0 08

CODE_12DC72:
LDA #$9C                ; $12:DC72: A9 9C
LDY $86,x               ; $12:DC74: B4 86
BEQ CODE_12DC7A         ; $12:DC76: F0 02
LDA #$A0                ; $12:DC78: A9 A0

CODE_12DC7A:
JSR CODE_12BDD5         ; $12:DC7A: 20 D5 BD
LDA $00                 ; $12:DC7D: A5 00
STA $042C               ; $12:DC7F: 8D 2C 04
REP #$20                ; $12:DC82: C2 20
LDY $07                 ; $12:DC84: A4 07
LDA $126A,y             ; $12:DC86: B9 6A 12
STA $02F6               ; $12:DC89: 8D F6 02
SEP #$20                ; $12:DC8C: E2 20
LDY #$A4                ; $12:DC8E: A0 A4
LDA $B1,x               ; $12:DC90: B5 B1
BNE CODE_12DCA7         ; $12:DC92: D0 13
LDA $045C,x             ; $12:DC94: BD 5C 04
BEQ CODE_12DCA3         ; $12:DC97: F0 0A
CMP #$30                ; $12:DC99: C9 30
BCS CODE_12DCA7         ; $12:DC9B: B0 0A
AND #$08                ; $12:DC9D: 29 08
BNE CODE_12DCA7         ; $12:DC9F: D0 06
BEQ CODE_12DCA9         ; $12:DCA1: F0 06

CODE_12DCA3:
LDA $86,x               ; $12:DCA3: B5 86
BEQ CODE_12DCA9         ; $12:DCA5: F0 02

CODE_12DCA7:
LDY #$A8                ; $12:DCA7: A0 A8

CODE_12DCA9:
PLA                     ; $12:DCA9: 68
STA $ED                 ; $12:DCAA: 85 ED
TYA                     ; $12:DCAC: 98
JSR CODE_12BDD5         ; $12:DCAD: 20 D5 BD
LDA $00                 ; $12:DCB0: A5 00
STA $042C               ; $12:DCB2: 8D 2C 04
REP #$20                ; $12:DCB5: C2 20
LDY $07                 ; $12:DCB7: A4 07
LDA $126C,y             ; $12:DCB9: B9 6C 12
STA $02F6               ; $12:DCBC: 8D F6 02
SEP #$20                ; $12:DCBF: E2 20
LDY #$B8                ; $12:DCC1: A0 B8
LDA $3D,x               ; $12:DCC3: B5 3D
BEQ CODE_12DCD2         ; $12:DCC5: F0 0B
LDY #$B0                ; $12:DCC7: A0 B0
LDA $0477,x             ; $12:DCC9: BD 77 04
AND #$10                ; $12:DCCC: 29 10
BEQ CODE_12DCD2         ; $12:DCCE: F0 02
LDY #$B4                ; $12:DCD0: A0 B4

CODE_12DCD2:
PLA                     ; $12:DCD2: 68
STA $ED                 ; $12:DCD3: 85 ED
TYA                     ; $12:DCD5: 98
JSR CODE_12BDD5         ; $12:DCD6: 20 D5 BD
LDA $ED                 ; $12:DCD9: A5 ED
BEQ CODE_12DCE0         ; $12:DCDB: F0 03
BRL CODE_12DD70         ; $12:DCDD: 82 90 00

CODE_12DCE0:
REP #$30                ; $12:DCE0: C2 30
LDA $07                 ; $12:DCE2: A5 07
AND #$00FF              ; $12:DCE4: 29 FF 00
TAY                     ; $12:DCE7: A8
LDX $126C,y             ; $12:DCE8: BE 6C 12
LDA $126E,y             ; $12:DCEB: B9 6E 12
TAY                     ; $12:DCEE: A8
SEP #$20                ; $12:DCEF: E2 20
LDA $0429               ; $12:DCF1: AD 29 04
CLC                     ; $12:DCF4: 18
ADC #$20                ; $12:DCF5: 69 20
BCS CODE_12DD70         ; $12:DCF7: B0 77
STA $0800,y             ; $12:DCF9: 99 00 08
STA $0804,y             ; $12:DCFC: 99 04 08
STA $0712               ; $12:DCFF: 8D 12 07
LDA $00                 ; $12:DD02: A5 00
SBC #$2F                ; $12:DD04: E9 2F
STA $0801,y             ; $12:DD06: 99 01 08
ADC #$0F                ; $12:DD09: 69 0F
STA $0805,y             ; $12:DD0B: 99 05 08
ADC #$10                ; $12:DD0E: 69 10
STA $0713               ; $12:DD10: 8D 13 07
LDA $0803,x             ; $12:DD13: BD 03 08
STA $0803,y             ; $12:DD16: 99 03 08
STA $0807,y             ; $12:DD19: 99 07 08
STA $0714               ; $12:DD1C: 8D 14 07
LDA #$C4                ; $12:DD1F: A9 C4
STA $0802,y             ; $12:DD21: 99 02 08
LDA #$CA                ; $12:DD24: A9 CA
STA $0806,y             ; $12:DD26: 99 06 08
REP #$20                ; $12:DD29: C2 20
TYA                     ; $12:DD2B: 98
LSR A                   ; $12:DD2C: 4A
LSR A                   ; $12:DD2D: 4A
TAY                     ; $12:DD2E: A8
SEP #$20                ; $12:DD2F: E2 20
LDA $ED                 ; $12:DD31: A5 ED
AND #$04                ; $12:DD33: 29 04
LSR A                   ; $12:DD35: 4A
LSR A                   ; $12:DD36: 4A
ORA #$02                ; $12:DD37: 09 02
STA $0A20,y             ; $12:DD39: 99 20 0A
STA $0A21,y             ; $12:DD3C: 99 21 0A
STA $0715               ; $12:DD3F: 8D 15 07
JSL CODE_14E483         ; $12:DD42: 22 83 E4 14
REP #$10                ; $12:DD46: C2 10
LDY $02F8               ; $12:DD48: AC F8 02
LDA $0712               ; $12:DD4B: AD 12 07
STA $0800,y             ; $12:DD4E: 99 00 08
LDA $0713               ; $12:DD51: AD 13 07
STA $0801,y             ; $12:DD54: 99 01 08
LDA #$E0                ; $12:DD57: A9 E0
STA $0802,y             ; $12:DD59: 99 02 08
LDA $0714               ; $12:DD5C: AD 14 07
STA $0803,y             ; $12:DD5F: 99 03 08
REP #$20                ; $12:DD62: C2 20
TYA                     ; $12:DD64: 98
LSR A                   ; $12:DD65: 4A
LSR A                   ; $12:DD66: 4A
TAY                     ; $12:DD67: A8
SEP #$20                ; $12:DD68: E2 20
LDA $0715               ; $12:DD6A: AD 15 07
STA $0A20,y             ; $12:DD6D: 99 20 0A

CODE_12DD70:
SEP #$10                ; $12:DD70: E2 10
LDX $12                 ; $12:DD72: A6 12
RTS                     ; $12:DD74: 60

ORG $12DD90

CODE_12DD90:
JSR CODE_12DE5A         ; $12:DD90: 20 5A DE
TAY                     ; $12:DD93: A8
LDA $46,x               ; $12:DD94: B5 46
BMI CODE_12DD99         ; $12:DD96: 30 01
INY                     ; $12:DD98: C8

CODE_12DD99:
JSR CODE_12E445         ; $12:DD99: 20 45 E4
BCS CODE_12DDA5         ; $12:DD9C: B0 07
LDA $00                 ; $12:DD9E: A5 00
CMP #$82                ; $12:DDA0: C9 82
BEQ CODE_12DDA5         ; $12:DDA2: F0 01
CLC                     ; $12:DDA4: 18

CODE_12DDA5:
DEX                     ; $12:DDA5: CA
RTS                     ; $12:DDA6: 60

CODE_12DDA7:
LDA #$04                ; $12:DDA7: A9 04
BNE CODE_12DDAD         ; $12:DDA9: D0 02

CODE_12DDAB:
LDA #$00                ; $12:DDAB: A9 00

CODE_12DDAD:
STA $07                 ; $12:DDAD: 85 07
STZ $0B                 ; $12:DDAF: 64 0B
STZ $0E                 ; $12:DDB1: 64 0E
JSR CODE_12DE5A         ; $12:DDB3: 20 5A DE
STA $08                 ; $12:DDB6: 85 08
LDA $46,x               ; $12:DDB8: B5 46
BPL CODE_12DDC5         ; $12:DDBA: 10 09
JSR CODE_12DE38         ; $12:DDBC: 20 38 DE
INC $07                 ; $12:DDBF: E6 07
INC $08                 ; $12:DDC1: E6 08
BNE CODE_12DE27         ; $12:DDC3: D0 62

CODE_12DDC5:
INC $07                 ; $12:DDC5: E6 07
INC $08                 ; $12:DDC7: E6 08
JSR CODE_12DE38         ; $12:DDC9: 20 38 DE
LDA $8F,x               ; $12:DDCC: B5 8F
CMP #$18                ; $12:DDCE: C9 18
BEQ CODE_12DDEC         ; $12:DDD0: F0 1A
CMP #$19                ; $12:DDD2: C9 19
BEQ CODE_12DDEC         ; $12:DDD4: F0 16
LDA $00                 ; $12:DDD6: A5 00
SEC                     ; $12:DDD8: 38
SBC #$92                ; $12:DDD9: E9 92
CMP #$02                ; $12:DDDB: C9 02
BCS CODE_12DDEC         ; $12:DDDD: B0 0D
ASL A                   ; $12:DDDF: 0A
ADC #$01                ; $12:DDE0: 69 01
STA $46,x               ; $12:DDE2: 95 46
LDA #$07                ; $12:DDE4: A9 07
STA $50,x               ; $12:DDE6: 95 50
LDA #$FF                ; $12:DDE8: A9 FF
STA $85,x               ; $12:DDEA: 95 85

CODE_12DDEC:
LDA $00                 ; $12:DDEC: A5 00
STA $0E                 ; $12:DDEE: 85 0E
SEC                     ; $12:DDF0: 38
SBC #$60                ; $12:DDF1: E9 60
CMP #$02                ; $12:DDF3: C9 02
BCS CODE_12DE27         ; $12:DDF5: B0 30
LDY $0437,x             ; $12:DDF7: BC 37 04
BNE CODE_12DE27         ; $12:DDFA: D0 2B
LDY $8F,x               ; $12:DDFC: B4 8F
CPY #$32                ; $12:DDFE: C0 32
BCC CODE_12DE18         ; $12:DE00: 90 16
TAY                     ; $12:DE02: A8
LDA $46,x               ; $12:DE03: B5 46
CMP #$03                ; $12:DE05: C9 03
BCS CODE_12DE27         ; $12:DE07: B0 1E
LDA $0D                 ; $12:DE09: A5 0D
AND #$03                ; $12:DE0B: 29 03
BNE CODE_12DE27         ; $12:DE0D: D0 18
LDA.w DATA_11AB2F,y     ; $12:DE0F: B9 2F AB
STA $3C,x               ; $12:DE12: 95 3C
STA $0B                 ; $12:DE14: 85 0B
BNE CODE_12DE27         ; $12:DE16: D0 0F

CODE_12DE18:
LDY $3C,x               ; $12:DE18: B4 3C
BEQ CODE_12DE25         ; $12:DE1A: F0 09
EOR $6E,x               ; $12:DE1C: 55 6E
LSR A                   ; $12:DE1E: 4A
BCS CODE_12DE25         ; $12:DE1F: B0 04
DEC $9E,x               ; $12:DE21: D6 9E
DEC $9E,x               ; $12:DE23: D6 9E

CODE_12DE25:
INC $9E,x               ; $12:DE25: F6 9E

CODE_12DE27:
LDA $3C,x               ; $12:DE27: B5 3C
CLC                     ; $12:DE29: 18
ADC $04CC,x             ; $12:DE2A: 7D CC 04
BMI CODE_12DE33         ; $12:DE2D: 30 04
INC $07                 ; $12:DE2F: E6 07
INC $08                 ; $12:DE31: E6 08

CODE_12DE33:
JSR CODE_12DE38         ; $12:DE33: 20 38 DE
DEX                     ; $12:DE36: CA
RTS                     ; $12:DE37: 60

CODE_12DE38:
LDY $08                 ; $12:DE38: A4 08
JSL CODE_13F900         ; $12:DE3A: 22 00 F9 13
LDY $07                 ; $12:DE3E: A4 07
LDA.w DATA_11AB31,y     ; $12:DE40: B9 31 AB
TAY                     ; $12:DE43: A8
LDA $00                 ; $12:DE44: A5 00
JSL CODE_13F99C         ; $12:DE46: 22 9C F9 13
BCC CODE_12DE55         ; $12:DE4A: 90 09
LDY $07                 ; $12:DE4C: A4 07
LDA.w DATA_11AB39,y     ; $12:DE4E: B9 39 AB
ORA $5A,x               ; $12:DE51: 15 5A
STA $5A,x               ; $12:DE53: 95 5A

CODE_12DE55:
INC $07                 ; $12:DE55: E6 07
INC $08                 ; $12:DE57: E6 08
RTS                     ; $12:DE59: 60

CODE_12DE5A:
INX                     ; $12:DE5A: E8
LDA $5A,x               ; $12:DE5B: B5 5A
STA $0D                 ; $12:DE5D: 85 0D
AND #$F0                ; $12:DE5F: 29 F0
STA $5A,x               ; $12:DE61: 95 5A
LDY $0491,x             ; $12:DE63: BC 91 04
LDA.w DATA_11CAFD,y     ; $12:DE66: B9 FD CA

CODE_12DE69:
RTS                     ; $12:DE69: 60

CODE_12DE6A:
LDA #$00                ; $12:DE6A: A9 00
STA $04CD,x             ; $12:DE6C: 9D CD 04
LDA $5B,x               ; $12:DE6F: B5 5B
AND #$0F                ; $12:DE71: 29 0F
STA $5B,x               ; $12:DE73: 95 5B
LDA $51,x               ; $12:DE75: B5 51
CMP #$04                ; $12:DE77: C9 04
BNE CODE_12DE7F         ; $12:DE79: D0 04
LDY #$06                ; $12:DE7B: A0 06
BNE CODE_12DE9D         ; $12:DE7D: D0 1E

CODE_12DE7F:
CMP #$07                ; $12:DE7F: C9 07
BEQ CODE_12DE96         ; $12:DE81: F0 13
LDY $90,x               ; $12:DE83: B4 90
CPY #$1E                ; $12:DE85: C0 1E
BEQ CODE_12DE92         ; $12:DE87: F0 09
CPY #$1A                ; $12:DE89: C0 1A
BEQ CODE_12DE92         ; $12:DE8B: F0 05
LDY $042F,x             ; $12:DE8D: BC 2F 04
BNE CODE_12DE96         ; $12:DE90: D0 04

CODE_12DE92:
CMP #$01                ; $12:DE92: C9 01
BNE CODE_12DE69         ; $12:DE94: D0 D3

CODE_12DE96:
LDA $A8,x               ; $12:DE96: B5 A8
BNE CODE_12DE69         ; $12:DE98: D0 CF
LDY $0489,x             ; $12:DE9A: BC 89 04

CODE_12DE9D:
LDA $1128,y             ; $12:DE9D: B9 28 11
STA $09                 ; $12:DEA0: 85 09
LDA #$00                ; $12:DEA2: A9 00
STA $00                 ; $12:DEA4: 85 00
LDA $1100,y             ; $12:DEA6: B9 00 11
BPL CODE_12DEAD         ; $12:DEA9: 10 02
DEC $00                 ; $12:DEAB: C6 00

CODE_12DEAD:
CLC                     ; $12:DEAD: 18
ADC $29,x               ; $12:DEAE: 75 29
STA $05                 ; $12:DEB0: 85 05
LDA $15,x               ; $12:DEB2: B5 15
ADC $00                 ; $12:DEB4: 65 00
STA $01                 ; $12:DEB6: 85 01
LDA $EB                 ; $12:DEB8: A5 EB
BNE CODE_12DEBE         ; $12:DEBA: D0 02
STA $01                 ; $12:DEBC: 85 01

CODE_12DEBE:
LDA $113C,y             ; $12:DEBE: B9 3C 11
STA $0B                 ; $12:DEC1: 85 0B
LDA #$00                ; $12:DEC3: A9 00
STA $00                 ; $12:DEC5: 85 00
LDA $1114,y             ; $12:DEC7: B9 14 11
BPL CODE_12DECE         ; $12:DECA: 10 02
DEC $00                 ; $12:DECC: C6 00

CODE_12DECE:
CLC                     ; $12:DECE: 18
ADC $33,x               ; $12:DECF: 75 33
STA $07                 ; $12:DED1: 85 07
LDA $1F,x               ; $12:DED3: B5 1F
ADC $00                 ; $12:DED5: 65 00
STA $03                 ; $12:DED7: 85 03

CODE_12DED9:
STX $EC                 ; $12:DED9: 86 EC
TXA                     ; $12:DEDB: 8A
BNE CODE_12DEFF         ; $12:DEDC: D0 21
LDA $04C8               ; $12:DEDE: AD C8 04
ORA $041B               ; $12:DEE1: 0D 1B 04
BNE CODE_12DEEC         ; $12:DEE4: D0 06
LDA $50,x               ; $12:DEE6: B5 50
CMP #$02                ; $12:DEE8: C9 02
BCC CODE_12DEEF         ; $12:DEEA: 90 03

CODE_12DEEC:
JMP CODE_12DF8D         ; $12:DEEC: 4C 8D DF

CODE_12DEEF:
LDY $12                 ; $12:DEEF: A4 12
LDA $042F,y             ; $12:DEF1: B9 2F 04
BEQ CODE_12DEFA         ; $12:DEF4: F0 04
CMP #$20                ; $12:DEF6: C9 20
BCC CODE_12DEEC         ; $12:DEF8: 90 F2

CODE_12DEFA:
LDY $9A                 ; $12:DEFA: A4 9A
JMP CODE_12DF44         ; $12:DEFC: 4C 44 DF

CODE_12DEFF:
LDY $12                 ; $12:DEFF: A4 12
LDA $0051,y             ; $12:DF01: B9 51 00
CMP #$04                ; $12:DF04: C9 04
BEQ CODE_12DF0F         ; $12:DF06: F0 07
LDA $046E,y             ; $12:DF08: B9 6E 04
AND #$04                ; $12:DF0B: 29 04
BNE CODE_12DF2E         ; $12:DF0D: D0 1F

CODE_12DF0F:
LDA $50,x               ; $12:DF0F: B5 50
CMP #$04                ; $12:DF11: C9 04
BNE CODE_12DF19         ; $12:DF13: D0 04
LDY #$06                ; $12:DF15: A0 06
BNE CODE_12DF44         ; $12:DF17: D0 2B

CODE_12DF19:
CMP #$07                ; $12:DF19: C9 07
BEQ CODE_12DF30         ; $12:DF1B: F0 13
LDY $8F,x               ; $12:DF1D: B4 8F
CPY #$1E                ; $12:DF1F: C0 1E
BEQ CODE_12DF2C         ; $12:DF21: F0 09
CPY #$1A                ; $12:DF23: C0 1A
BEQ CODE_12DF2C         ; $12:DF25: F0 05
LDY $042E,x             ; $12:DF27: BC 2E 04
BNE CODE_12DF30         ; $12:DF2A: D0 04

CODE_12DF2C:
CMP #$01                ; $12:DF2C: C9 01

CODE_12DF2E:
BNE CODE_12DF8D         ; $12:DF2E: D0 5D

CODE_12DF30:
LDA $A7,x               ; $12:DF30: B5 A7
BNE CODE_12DF8D         ; $12:DF32: D0 59
LDA $5A,x               ; $12:DF34: B5 5A
AND #$10                ; $12:DF36: 29 10
BNE CODE_12DF8D         ; $12:DF38: D0 53
LDA $046D,x             ; $12:DF3A: BD 6D 04
AND #$04                ; $12:DF3D: 29 04
BNE CODE_12DF8D         ; $12:DF3F: D0 4C
LDY $0488,x             ; $12:DF41: BC 88 04

CODE_12DF44:
LDA $1128,y             ; $12:DF44: B9 28 11
STA $0A                 ; $12:DF47: 85 0A
LDA #$00                ; $12:DF49: A9 00
STA $00                 ; $12:DF4B: 85 00
LDA $1100,y             ; $12:DF4D: B9 00 11
BPL CODE_12DF54         ; $12:DF50: 10 02
DEC $00                 ; $12:DF52: C6 00

CODE_12DF54:
CLC                     ; $12:DF54: 18
ADC $28,x               ; $12:DF55: 75 28
STA $06                 ; $12:DF57: 85 06
LDA $14,x               ; $12:DF59: B5 14
ADC $00                 ; $12:DF5B: 65 00
STA $02                 ; $12:DF5D: 85 02
LDA $EB                 ; $12:DF5F: A5 EB
BNE CODE_12DF65         ; $12:DF61: D0 02
STA $02                 ; $12:DF63: 85 02

CODE_12DF65:
LDA $113C,y             ; $12:DF65: B9 3C 11
STA $0C                 ; $12:DF68: 85 0C
STZ $00                 ; $12:DF6A: 64 00
LDA $1114,y             ; $12:DF6C: B9 14 11
BPL CODE_12DF73         ; $12:DF6F: 10 02
DEC $00                 ; $12:DF71: C6 00

CODE_12DF73:
CLC                     ; $12:DF73: 18
ADC $32,x               ; $12:DF74: 75 32
STA $08                 ; $12:DF76: 85 08
LDA $1E,x               ; $12:DF78: B5 1E
ADC $00                 ; $12:DF7A: 65 00
STA $04                 ; $12:DF7C: 85 04
JSL CODE_13FAE9         ; $12:DF7E: 22 E9 FA 13
BCS CODE_12DF8D         ; $12:DF82: B0 09
LDA $0B                 ; $12:DF84: A5 0B
PHA                     ; $12:DF86: 48
JSR CODE_12DF96         ; $12:DF87: 20 96 DF
PLA                     ; $12:DF8A: 68
STA $0B                 ; $12:DF8B: 85 0B

CODE_12DF8D:
DEX                     ; $12:DF8D: CA
BMI CODE_12DF93         ; $12:DF8E: 30 03
JMP CODE_12DED9         ; $12:DF90: 4C D9 DE

CODE_12DF93:
LDX $12                 ; $12:DF93: A6 12

CODE_12DF95:
RTS                     ; $12:DF95: 60

CODE_12DF96:
TXA                     ; $12:DF96: 8A
BNE CODE_12DFA4         ; $12:DF97: D0 0B
LDA $9C                 ; $12:DF99: A5 9C
BEQ CODE_12DFA4         ; $12:DF9B: F0 07
LDA $042D               ; $12:DF9D: AD 2D 04
CMP $12                 ; $12:DFA0: C5 12
BEQ CODE_12DF95         ; $12:DFA2: F0 F1

CODE_12DFA4:
LDY $12                 ; $12:DFA4: A4 12
LDA $0090,y             ; $12:DFA6: B9 90 00
TAY                     ; $12:DFA9: A8
LDA $120B,y             ; $12:DFAA: B9 0B 12
JSL CODE_118776         ; $12:DFAD: 22 76 87 11
dw CODE_12E018
dw CODE_12E22F
dw CODE_12E1A2
dw CODE_12E229
dw CODE_12DFBB

CODE_12DFBB:
TXA                     ; $12:DFBB: 8A
BNE CODE_12E017         ; $12:DFBC: D0 59
LDA $FA                 ; $12:DFBE: A5 FA
AND #$08                ; $12:DFC0: 29 08
BEQ CODE_12E017         ; $12:DFC2: F0 53
LDA $5A                 ; $12:DFC4: A5 5A
AND #$04                ; $12:DFC6: 29 04
BEQ CODE_12E017         ; $12:DFC8: F0 4D
LDA $0426               ; $12:DFCA: AD 26 04
CMP #$FA                ; $12:DFCD: C9 FA
BCS CODE_12E017         ; $12:DFCF: B0 46
LDA $04BE               ; $12:DFD1: AD BE 04
ORA $04B3               ; $12:DFD4: 0D B3 04
BNE CODE_12E017         ; $12:DFD7: D0 3E
LDA $9C                 ; $12:DFD9: A5 9C
BEQ CODE_12DFE7         ; $12:DFDB: F0 0A
LDY $042D               ; $12:DFDD: AC 2D 04
LDA $0090,y             ; $12:DFE0: B9 90 00
CMP #$3D                ; $12:DFE3: C9 3D
BNE CODE_12E017         ; $12:DFE5: D0 30

CODE_12DFE7:
LDA $0627               ; $12:DFE7: AD 27 06
BNE CODE_12E017         ; $12:DFEA: D0 2B
LDY $12                 ; $12:DFEC: A4 12
LDA $0029,y             ; $12:DFEE: B9 29 00
STA $28                 ; $12:DFF1: 85 28
LDA $0015,y             ; $12:DFF3: B9 15 00
STA $14                 ; $12:DFF6: 85 14
JSL CODE_13FA42         ; $12:DFF8: 22 42 FA 13
LDA #$04                ; $12:DFFC: A9 04
STA $0536               ; $12:DFFE: 8D 36 05
LDA $0628               ; $12:E001: AD 28 06
BNE CODE_12E014         ; $12:E004: D0 0E
LDA $0500               ; $12:E006: AD 00 05
STA $079D               ; $12:E009: 8D 9D 07
LDA #$80                ; $12:E00C: A9 80
STA $0500               ; $12:E00E: 8D 00 05
STA $079C               ; $12:E011: 8D 9C 07

CODE_12E014:
JMP CODE_128B20         ; $12:E014: 4C 20 8B

CODE_12E017:
RTS                     ; $12:E017: 60

CODE_12E018:
LDY $12                 ; $12:E018: A4 12
TXA                     ; $12:E01A: 8A
BNE CODE_12E020         ; $12:E01B: D0 03
BRL CODE_12E0A3         ; $12:E01D: 82 83 00

CODE_12E020:
LDA $045C,y             ; $12:E020: B9 5C 04
ORA $045B,x             ; $12:E023: 1D 5B 04
BNE CODE_12E017         ; $12:E026: D0 EF
LDA $042F,y             ; $12:E028: B9 2F 04
BNE CODE_12E04C         ; $12:E02B: D0 1F
LDA $0051,y             ; $12:E02D: B9 51 00
CMP #$04                ; $12:E030: C9 04
BEQ CODE_12E04C         ; $12:E032: F0 18
TXA                     ; $12:E034: 8A
TAY                     ; $12:E035: A8
DEY                     ; $12:E036: 88
LDX $12                 ; $12:E037: A6 12
INX                     ; $12:E039: E8
LDA $0051,y             ; $12:E03A: B9 51 00
CMP #$04                ; $12:E03D: C9 04
BEQ CODE_12E04C         ; $12:E03F: F0 0B
LDA $042F,y             ; $12:E041: B9 2F 04
BEQ CODE_12E0A0         ; $12:E044: F0 5A
LDA $5A,x               ; $12:E046: B5 5A
AND #$10                ; $12:E048: 29 10
BNE CODE_12E0A0         ; $12:E04A: D0 54

CODE_12E04C:
LDA $0453,y             ; $12:E04C: B9 53 04
ORA $045C,y             ; $12:E04F: 19 5C 04
BNE CODE_12E091         ; $12:E052: D0 3D
LDA $046E,y             ; $12:E054: B9 6E 04
AND #$08                ; $12:E057: 29 08
BEQ CODE_12E05E         ; $12:E059: F0 03
JSR CODE_12E352         ; $12:E05B: 20 52 E3

CODE_12E05E:
LDA $0465,y             ; $12:E05E: B9 65 04
SEC                     ; $12:E061: 38
SBC #$01                ; $12:E062: E9 01
STA $0465,y             ; $12:E064: 99 65 04
BMI CODE_12E077         ; $12:E067: 30 0E
JSR CODE_12E352         ; $12:E069: 20 52 E3
LDA #$21                ; $12:E06C: A9 21
STA $045C,y             ; $12:E06E: 99 5C 04
LSR A                   ; $12:E071: 4A
STA $0438,y             ; $12:E072: 99 38 04
BNE CODE_12E091         ; $12:E075: D0 1A

CODE_12E077:
LDA $005B,y             ; $12:E077: B9 5B 00
ORA #$10                ; $12:E07A: 09 10
STA $005B,y             ; $12:E07C: 99 5B 00
LDA #$E0                ; $12:E07F: A9 E0
STA $0047,y             ; $12:E081: 99 47 00
LDA $003D,y             ; $12:E084: B9 3D 00
STA $00                 ; $12:E087: 85 00
ASL A                   ; $12:E089: 0A
ROR $00                 ; $12:E08A: 66 00
LDA $00                 ; $12:E08C: A5 00
STA $003D,y             ; $12:E08E: 99 3D 00

CODE_12E091:
LDA $8F,x               ; $12:E091: B5 8F
CMP #$32                ; $12:E093: C9 32
BCS CODE_12E0A0         ; $12:E095: B0 09
LDA $50,x               ; $12:E097: B5 50
CMP #$02                ; $12:E099: C9 02
BEQ CODE_12E0A0         ; $12:E09B: F0 03
JSR CODE_12E332         ; $12:E09D: 20 32 E3

CODE_12E0A0:
LDX $EC                 ; $12:E0A0: A6 EC
RTS                     ; $12:E0A2: 60

CODE_12E0A3:
LDA $ED                 ; $12:E0A3: A5 ED
AND #$08                ; $12:E0A5: 29 08
BNE CODE_12E0F5         ; $12:E0A7: D0 4C
LDA $50                 ; $12:E0A9: A5 50
CMP #$04                ; $12:E0AB: C9 04
BEQ CODE_12E0F5         ; $12:E0AD: F0 46
LDA $0090,y             ; $12:E0AF: B9 90 00
BNE CODE_12E0D9         ; $12:E0B2: D0 25
STA $0051,y             ; $12:E0B4: 99 51 00
LDA $04C3               ; $12:E0B7: AD C3 04
CMP #$0F                ; $12:E0BA: C9 0F
BEQ CODE_12E0C3         ; $12:E0BC: F0 05
LDA #$3B                ; $12:E0BE: A9 3B
STA $1DE3               ; $12:E0C0: 8D E3 1D

CODE_12E0C3:
LDY $04C4               ; $12:E0C3: AC C4 04
LDA $04C3               ; $12:E0C6: AD C3 04
CLC                     ; $12:E0C9: 18
ADC #$10                ; $12:E0CA: 69 10
STA $04C3               ; $12:E0CC: 8D C3 04
CMP.w DATA_11CBEE,y     ; $12:E0CF: D9 EE CB
BCC CODE_12E0F5         ; $12:E0D2: 90 21
JSL CODE_14E098         ; $12:E0D4: 22 98 E0 14
RTS                     ; $12:E0D8: 60

CODE_12E0D9:
CMP #$17                ; $12:E0D9: C9 17
BNE CODE_12E0E2         ; $12:E0DB: D0 05
LDY $0595               ; $12:E0DD: AC 95 05
BNE CODE_12E0F5         ; $12:E0E0: D0 13

CODE_12E0E2:
CMP #$45                ; $12:E0E2: C9 45

; If in contact with star...
; Make player invincible.
BNE CODE_12E0F6         ; $12:E0E4: D0 10
LDA #$3F                ; $12:E0E6: A9 3F

; Flashing timer = #$3F.
STA $04E1               ; $12:E0E8: 8D E1 04
LDA #$0D                ; $12:E0EB: A9 0D

; Star music.
STA $1DE2               ; $12:E0ED: 8D E2 1D
LDA #$00                ; $12:E0F0: A9 00

; Remove sprite.
STA $0051,y             ; $12:E0F2: 99 51 00

; Return.

CODE_12E0F5:
RTS                     ; $12:E0F5: 60

CODE_12E0F6:
CMP #$28                ; $12:E0F6: C9 28
BNE CODE_12E111         ; $12:E0F8: D0 17
LDA $0079,y             ; $12:E0FA: B9 79 00
CMP #$DC                ; $12:E0FD: C9 DC
BCS CODE_12E110         ; $12:E0FF: B0 0F
LDA $04E1               ; $12:E101: AD E1 04
BEQ CODE_12E14A         ; $12:E104: F0 44
LDA #$DC                ; $12:E106: A9 DC
STA $0079,y             ; $12:E108: 99 79 00
LDA #$00                ; $12:E10B: A9 00
STA $0047,y             ; $12:E10D: 99 47 00

CODE_12E110:
RTS                     ; $12:E110: 60

CODE_12E111:
CMP #$2C                ; $12:E111: C9 2C
BNE CODE_12E119         ; $12:E113: D0 04
LDA $B1,x               ; $12:E115: B5 B1
BNE CODE_12E110         ; $12:E117: D0 F7

CODE_12E119:
LDY $04E1               ; $12:E119: AC E1 04
BEQ CODE_12E14A         ; $12:E11C: F0 2C
LDX $12                 ; $12:E11E: A6 12
CMP #$27                ; $12:E120: C9 27
BEQ CODE_12E128         ; $12:E122: F0 04
CMP #$20                ; $12:E124: C9 20
BNE CODE_12E133         ; $12:E126: D0 0B

CODE_12E128:
LDA #$00                ; $12:E128: A9 00
STA $046E,x             ; $12:E12A: 9D 6E 04
JSR CODE_12B9FA         ; $12:E12D: 20 FA B9
JMP CODE_12E145         ; $12:E130: 4C 45 E1

CODE_12E133:
JSR CODE_12C1DA         ; $12:E133: 20 DA C1
LDA.w DATA_11AB41,y     ; $12:E136: B9 41 AB
STA $3D,x               ; $12:E139: 95 3D
LDA #$E0                ; $12:E13B: A9 E0
STA $47,x               ; $12:E13D: 95 47
LDA $5B,x               ; $12:E13F: B5 5B
ORA #$10                ; $12:E141: 09 10
STA $5B,x               ; $12:E143: 95 5B

CODE_12E145:
LDX $EC                 ; $12:E145: A6 EC
LDY $12                 ; $12:E147: A4 12
RTS                     ; $12:E149: 60

CODE_12E14A:
LDY $12                 ; $12:E14A: A4 12
LDA $0051,y             ; $12:E14C: B9 51 00
CMP #$04                ; $12:E14F: C9 04
BEQ CODE_12E166         ; $12:E151: F0 13
LDA $046E,y             ; $12:E153: B9 6E 04
AND #$01                ; $12:E156: 29 01
BNE CODE_12E166         ; $12:E158: D0 0C
JSR CODE_12E37E         ; $12:E15A: 20 7E E3
LDA $0F                 ; $12:E15D: A5 0F
BNE CODE_12E162         ; $12:E15F: D0 01
RTS                     ; $12:E161: 60

CODE_12E162:
AND #$0B                ; $12:E162: 29 0B
BEQ CODE_12E169         ; $12:E164: F0 03

CODE_12E166:
JMP CODE_12E2CD         ; $12:E166: 4C CD E2

CODE_12E169:
LDA #$00                ; $12:E169: A9 00
STA $99                 ; $12:E16B: 85 99
LDX $12                 ; $12:E16D: A6 12
LDA $5B,x               ; $12:E16F: B5 5B
ORA #$20                ; $12:E171: 09 20
STA $5B,x               ; $12:E173: 95 5B
LDA $046E,x             ; $12:E175: BD 6E 04
AND #$02                ; $12:E178: 29 02
BNE CODE_12E19F         ; $12:E17A: D0 23
BIT $FA                 ; $12:E17C: 24 FA

; Don't pick enemy up if not pressing X nor Y.
BVC CODE_12E19F         ; $12:E17E: 50 1F
LDA $9C                 ; $12:E180: A5 9C
ORA $9A                 ; $12:E182: 05 9A
BNE CODE_12E19F         ; $12:E184: D0 19
STA $5B,x               ; $12:E186: 95 5B
STX $042D               ; $12:E188: 8E 2D 04
STA $044A,x             ; $12:E18B: 9D 4A 04
LDA #$07                ; $12:E18E: A9 07
STA $A8,x               ; $12:E190: 95 A8

; Handle player animation and sound effect.
JSL CODE_13F9D7         ; $12:E192: 22 D7 F9 13
LDA $90,x               ; $12:E196: B5 90
CMP #$12                ; $12:E198: C9 12

; Handle JSR if Pidgit.
BNE CODE_12E19F         ; $12:E19A: D0 03

; Generate carpet.
JSR CODE_12C5D8         ; $12:E19C: 20 D8 C5

CODE_12E19F:
LDX $EC                 ; $12:E19F: A6 EC
RTS                     ; $12:E1A1: 60

CODE_12E1A2:
LDY $12                 ; $12:E1A2: A4 12
TXA                     ; $12:E1A4: 8A
BEQ CODE_12E1D4         ; $12:E1A5: F0 2D
LDA $0090,y             ; $12:E1A7: B9 90 00
CMP #$3D                ; $12:E1AA: C9 3D
BNE CODE_12E1B5         ; $12:E1AC: D0 07
LDA $005B,y             ; $12:E1AE: B9 5B 00
AND #$04                ; $12:E1B1: 29 04
BNE CODE_12E1D3         ; $12:E1B3: D0 1E

CODE_12E1B5:
LDA $042F,y             ; $12:E1B5: B9 2F 04
BNE CODE_12E1D0         ; $12:E1B8: D0 16
JSR CODE_12E37E         ; $12:E1BA: 20 7E E3
LDA $0F                 ; $12:E1BD: A5 0F
AND $6E,x               ; $12:E1BF: 35 6E
BEQ CODE_12E1C9         ; $12:E1C1: F0 06
DEX                     ; $12:E1C3: CA
JSR CODE_12C248         ; $12:E1C4: 20 48 C2
LDX $EC                 ; $12:E1C7: A6 EC

CODE_12E1C9:
JSR CODE_12E42C         ; $12:E1C9: 20 2C E4
CPY #$00                ; $12:E1CC: C0 00
BEQ CODE_12E1D3         ; $12:E1CE: F0 03

CODE_12E1D0:
JMP CODE_12E2BD         ; $12:E1D0: 4C BD E2

CODE_12E1D3:
RTS                     ; $12:E1D3: 60

CODE_12E1D4:
LDA $005B,y             ; $12:E1D4: B9 5B 00
ORA #$40                ; $12:E1D7: 09 40
STA $005B,y             ; $12:E1D9: 99 5B 00
JSR CODE_12E37E         ; $12:E1DC: 20 7E E3
LDA $0F                 ; $12:E1DF: A5 0F
AND $6E                 ; $12:E1E1: 25 6E
BEQ CODE_12E1E9         ; $12:E1E3: F0 04
JSL CODE_13F9BB         ; $12:E1E5: 22 BB F9 13

CODE_12E1E9:
LDA $0F                 ; $12:E1E9: A5 0F
AND #$04                ; $12:E1EB: 29 04
BEQ CODE_12E1F2         ; $12:E1ED: F0 03
JSR CODE_12E169         ; $12:E1EF: 20 69 E1

CODE_12E1F2:
JSR CODE_12E42C         ; $12:E1F2: 20 2C E4
CPY #$01                ; $12:E1F5: C0 01
BNE CODE_12E228         ; $12:E1F7: D0 2F
LDY $12                 ; $12:E1F9: A4 12
LDA $0047,y             ; $12:E1FB: B9 47 00
BEQ CODE_12E228         ; $12:E1FE: F0 28
AND #$80                ; $12:E200: 29 80
ASL A                   ; $12:E202: 0A
ROL A                   ; $12:E203: 2A
TAY                     ; $12:E204: A8
LDA $0F                 ; $12:E205: A5 0F
AND.w DATA_11AB43,y     ; $12:E207: 39 43 AB
BEQ CODE_12E228         ; $12:E20A: F0 1C
LDY $12                 ; $12:E20C: A4 12
LDA $0047,y             ; $12:E20E: B9 47 00
EOR #$FF                ; $12:E211: 49 FF
CLC                     ; $12:E213: 18
ADC #$01                ; $12:E214: 69 01
STA $0047,y             ; $12:E216: 99 47 00
LDA #$01                ; $12:E219: A9 01
STA $9A                 ; $12:E21B: 85 9A
LDA #$04                ; $12:E21D: A9 04
STZ $078C               ; $12:E21F: 9C 8C 07
STA $C7                 ; $12:E222: 85 C7
LDA #$10                ; $12:E224: A9 10
STA $82                 ; $12:E226: 85 82

CODE_12E228:
RTS                     ; $12:E228: 60

CODE_12E229:
TXA                     ; $12:E229: 8A
BEQ CODE_12E228         ; $12:E22A: F0 FC
JMP CODE_12E2BD         ; $12:E22C: 4C BD E2

CODE_12E22F:
LDY $12                 ; $12:E22F: A4 12
TXA                     ; $12:E231: 8A
BNE CODE_12E266         ; $12:E232: D0 32
LDA $0051,y             ; $12:E234: B9 51 00
CMP #$04                ; $12:E237: C9 04
BNE CODE_12E241         ; $12:E239: D0 06
LDA $04E1               ; $12:E23B: AD E1 04
BEQ CODE_12E263         ; $12:E23E: F0 23

CODE_12E240:
RTS                     ; $12:E240: 60

CODE_12E241:
JSR CODE_12E37E         ; $12:E241: 20 7E E3
LDA $0F                 ; $12:E244: A5 0F
AND #$08                ; $12:E246: 29 08
BEQ CODE_12E25A         ; $12:E248: F0 10
LDA $9C                 ; $12:E24A: A5 9C
BNE CODE_12E240         ; $12:E24C: D0 F2
LDY $12                 ; $12:E24E: A4 12
STY $042D               ; $12:E250: 8C 2D 04
LDA #$01                ; $12:E253: A9 01
STA $00A8,y             ; $12:E255: 99 A8 00
INC $9C                 ; $12:E258: E6 9C

CODE_12E25A:
LDA $0F                 ; $12:E25A: A5 0F
AND #$04                ; $12:E25C: 29 04
BEQ CODE_12E240         ; $12:E25E: F0 E0
JMP CODE_12E169         ; $12:E260: 4C 69 E1

CODE_12E263:
JMP CODE_12E2CD         ; $12:E263: 4C CD E2

CODE_12E266:
LDA $8F,x               ; $12:E266: B5 8F
CMP #$2C                ; $12:E268: C9 2C
BNE CODE_12E28A         ; $12:E26A: D0 1E
LDA $85,x               ; $12:E26C: B5 85
BEQ CODE_12E2CC         ; $12:E26E: F0 5C
LDA #$00                ; $12:E270: A9 00
STA $0051,y             ; $12:E272: 99 51 00
JSR CODE_12E332         ; $12:E275: 20 32 E3
LDA #$60                ; $12:E278: A9 60
STA $045B,x             ; $12:E27A: 9D 5B 04
LSR A                   ; $12:E27D: 4A
STA $0437,x             ; $12:E27E: 9D 37 04
LDA $0464,x             ; $12:E281: BD 64 04
BNE CODE_12E289         ; $12:E284: D0 03
INC $04FB               ; $12:E286: EE FB 04

CODE_12E289:
RTS                     ; $12:E289: 60

CODE_12E28A:
CMP #$32                ; $12:E28A: C9 32
BCS CODE_12E289         ; $12:E28C: B0 FB
CMP #$11                ; $12:E28E: C9 11
BNE CODE_12E29D         ; $12:E290: D0 0B
LDA #$05                ; $12:E292: A9 05
STA $0051,y             ; $12:E294: 99 51 00
LDA #$1E                ; $12:E297: A9 1E
STA $0086,y             ; $12:E299: 99 86 00
RTS                     ; $12:E29C: 60

CODE_12E29D:
LDA $0051,y             ; $12:E29D: B9 51 00
CMP #$04                ; $12:E2A0: C9 04
BEQ CODE_12E2BF         ; $12:E2A2: F0 1B
LDA $0090,y             ; $12:E2A4: B9 90 00
CMP #$35                ; $12:E2A7: C9 35
BEQ CODE_12E2BD         ; $12:E2A9: F0 12
LDA #$E8                ; $12:E2AB: A9 E8
STA $0047,y             ; $12:E2AD: 99 47 00
STX $00                 ; $12:E2B0: 86 00
LDX $3D,y               ; $12:E2B2: B6 3D
BMI CODE_12E2B8         ; $12:E2B4: 30 02
LDA #$18                ; $12:E2B6: A9 18

CODE_12E2B8:
STA $003D,y             ; $12:E2B8: 99 3D 00
LDX $00                 ; $12:E2BB: A6 00

CODE_12E2BD:
LDY $12                 ; $12:E2BD: A4 12

CODE_12E2BF:
JSR CODE_12E332         ; $12:E2BF: 20 32 E3
BNE CODE_12E2CC         ; $12:E2C2: D0 08
LDA $3C,x               ; $12:E2C4: B5 3C
ASL A                   ; $12:E2C6: 0A
ROR $3C,x               ; $12:E2C7: 76 3C
ASL A                   ; $12:E2C9: 0A
ROR $3C,x               ; $12:E2CA: 76 3C

CODE_12E2CC:
RTS                     ; $12:E2CC: 60

CODE_12E2CD:
LDA $85                 ; $12:E2CD: A5 85
BNE CODE_12E304         ; $12:E2CF: D0 33
LDA $04C3               ; $12:E2D1: AD C3 04
SEC                     ; $12:E2D4: 38
SBC #$10                ; $12:E2D5: E9 10
BCC CODE_12E305         ; $12:E2D7: 90 2C
STA $04C3               ; $12:E2D9: 8D C3 04
LDY #$7F                ; $12:E2DC: A0 7F
STY $85                 ; $12:E2DE: 84 85
LDY #$00                ; $12:E2E0: A0 00
STY $46                 ; $12:E2E2: 84 46
STY $3C                 ; $12:E2E4: 84 3C
CMP #$10                ; $12:E2E6: C9 10
BCC CODE_12E2FF         ; $12:E2E8: 90 15
LDA $0428               ; $12:E2EA: AD 28 04
SEC                     ; $12:E2ED: 38
SBC $0429               ; $12:E2EE: ED 29 04
ASL A                   ; $12:E2F1: 0A
ASL A                   ; $12:E2F2: 0A
STA $3C                 ; $12:E2F3: 85 3C
LDA #$C0                ; $12:E2F5: A9 C0
LDY $46                 ; $12:E2F7: A4 46
BPL CODE_12E2FD         ; $12:E2F9: 10 02
LDA #$00                ; $12:E2FB: A9 00

CODE_12E2FD:
STA $46                 ; $12:E2FD: 85 46

CODE_12E2FF:
LDA #$33                ; $12:E2FF: A9 33
STA $1DE0               ; $12:E301: 8D E0 1D

CODE_12E304:
RTS                     ; $12:E304: 60

CODE_12E305:
TXA                     ; $12:E305: 8A
PHA                     ; $12:E306: 48
LDX $12                 ; $12:E307: A6 12
LDA $90,x               ; $12:E309: B5 90
CMP #$0F                ; $12:E30B: C9 0F
BCS CODE_12E31B         ; $12:E30D: B0 0C
JSR CODE_12C1DA         ; $12:E30F: 20 DA C1
INY                     ; $12:E312: C8
TYA                     ; $12:E313: 98
CMP $6F,x               ; $12:E314: D5 6F
BEQ CODE_12E31B         ; $12:E316: F0 03
JSR CODE_12C248         ; $12:E318: 20 48 C2

CODE_12E31B:
PLA                     ; $12:E31B: 68
TAX                     ; $12:E31C: AA
LDA #$C0                ; $12:E31D: A9 C0

; Rise in air.
STA $46                 ; $12:E31F: 85 46
LDA #$20                ; $12:E321: A9 20

; Remain mid-air for some time.
STA $82                 ; $12:E323: 85 82
LDY $12                 ; $12:E325: A4 12
BMI CODE_12E32D         ; $12:E327: 30 04
LSR A                   ; $12:E329: 4A
STA $0438,y             ; $12:E32A: 99 38 04

; Kill player.

CODE_12E32D:
JSL CODE_14E39F         ; $12:E32D: 22 9F E3 14
RTS                     ; $12:E331: 60

CODE_12E332:
LDA $0452,x             ; $12:E332: BD 52 04
ORA $045B,x             ; $12:E335: 1D 5B 04
BNE CODE_12E37D         ; $12:E338: D0 43
LDA $046D,x             ; $12:E33A: BD 6D 04
AND #$08                ; $12:E33D: 29 08
BEQ CODE_12E344         ; $12:E33F: F0 03
JSR CODE_12E352         ; $12:E341: 20 52 E3

CODE_12E344:
DEC $0464,x             ; $12:E344: DE 64 04
BMI CODE_12E36C         ; $12:E347: 30 23
LDA #$21                ; $12:E349: A9 21
STA $045B,x             ; $12:E34B: 9D 5B 04
LSR A                   ; $12:E34E: 4A
STA $0437,x             ; $12:E34F: 9D 37 04

CODE_12E352:
LDA $8F,x               ; $12:E352: B5 8F
CMP #$2C                ; $12:E354: C9 2C
BNE CODE_12E366         ; $12:E356: D0 0E
LDA $0464,x             ; $12:E358: BD 64 04
BNE CODE_12E366         ; $12:E35B: D0 09
LDA #$F0                ; $12:E35D: A9 F0
STA $1DE2               ; $12:E35F: 8D E2 1D
LDA #$47                ; $12:E362: A9 47
BRA CODE_12E368         ; $12:E364: 80 02

CODE_12E366:
LDA #$28                ; $12:E366: A9 28

CODE_12E368:
STA $1DE3               ; $12:E368: 8D E3 1D
RTS                     ; $12:E36B: 60

CODE_12E36C:
LDA $5A,x               ; $12:E36C: B5 5A
ORA #$10                ; $12:E36E: 09 10
STA $5A,x               ; $12:E370: 95 5A
LDA #$E0                ; $12:E372: A9 E0
STA $46,x               ; $12:E374: 95 46
LDA $003D,y             ; $12:E376: B9 3D 00
STA $3C,x               ; $12:E379: 95 3C
LDA #$00                ; $12:E37B: A9 00

CODE_12E37D:
RTS                     ; $12:E37D: 60

CODE_12E37E:
LDA #$00                ; $12:E37E: A9 00
STA $0F                 ; $12:E380: 85 0F
LDY $12                 ; $12:E382: A4 12
LDA $0427               ; $12:E384: AD 27 04
CMP #$F4                ; $12:E387: C9 F4
BCS CODE_12E3AB         ; $12:E389: B0 20
LDA $0029,y             ; $12:E38B: B9 29 00
LDY #$02                ; $12:E38E: A0 02
CMP $28,x               ; $12:E390: D5 28
BMI CODE_12E396         ; $12:E392: 30 02
LDY #$01                ; $12:E394: A0 01

CODE_12E396:
STY $0F                 ; $12:E396: 84 0F
TYA                     ; $12:E398: 98
AND $6E,x               ; $12:E399: 35 6E
BEQ CODE_12E3AA         ; $12:E39B: F0 0D
LDY $12                 ; $12:E39D: A4 12
LDA $04A4,y             ; $12:E39F: B9 A4 04
BNE CODE_12E3AA         ; $12:E3A2: D0 06
LDA $003D,y             ; $12:E3A4: B9 3D 00
STA $04CC,x             ; $12:E3A7: 9D CC 04

CODE_12E3AA:
RTS                     ; $12:E3AA: 60

CODE_12E3AB:
LDA $0033,y             ; $12:E3AB: B9 33 00
CPX #$01                ; $12:E3AE: E0 01
BCS CODE_12E3BA         ; $12:E3B0: B0 08
PHA                     ; $12:E3B2: 48
LDY $9A                 ; $12:E3B3: A4 9A
PLA                     ; $12:E3B5: 68
SEC                     ; $12:E3B6: 38
SBC.w DATA_11AB45,y     ; $12:E3B7: F9 45 AB

CODE_12E3BA:
CMP $32,x               ; $12:E3BA: D5 32
BMI CODE_12E3F5         ; $12:E3BC: 30 37
LDA $46,x               ; $12:E3BE: B5 46
BPL CODE_12E3CB         ; $12:E3C0: 10 09
LDY $12                 ; $12:E3C2: A4 12
LDA $0047,y             ; $12:E3C4: B9 47 00
BMI CODE_12E3D8         ; $12:E3C7: 30 0F
BRA CODE_12E42B         ; $12:E3C9: 80 60

CODE_12E3CB:
LDY $12                 ; $12:E3CB: A4 12
LDA $04A4,y             ; $12:E3CD: B9 A4 04
BNE CODE_12E3D8         ; $12:E3D0: D0 06
LDA $003D,y             ; $12:E3D2: B9 3D 00
STA $04CC,x             ; $12:E3D5: 9D CC 04

CODE_12E3D8:
LDY #$00                ; $12:E3D8: A0 00
INC $0427               ; $12:E3DA: EE 27 04
BPL CODE_12E3E0         ; $12:E3DD: 10 01
DEY                     ; $12:E3DF: 88

CODE_12E3E0:
LDA $0427               ; $12:E3E0: AD 27 04
CLC                     ; $12:E3E3: 18
ADC $32,x               ; $12:E3E4: 75 32
STA $32,x               ; $12:E3E6: 95 32
TYA                     ; $12:E3E8: 98
ADC $1E,x               ; $12:E3E9: 75 1E
STA $1E,x               ; $12:E3EB: 95 1E
LDA $46,x               ; $12:E3ED: B5 46
BMI CODE_12E42B         ; $12:E3EF: 30 3A
LDY #$04                ; $12:E3F1: A0 04
BNE CODE_12E413         ; $12:E3F3: D0 1E

CODE_12E3F5:
LDA $46,x               ; $12:E3F5: B5 46
BEQ CODE_12E404         ; $12:E3F7: F0 0B
BPL CODE_12E42B         ; $12:E3F9: 10 30
LDY $12                 ; $12:E3FB: A4 12
LDA $0090,y             ; $12:E3FD: B9 90 00
CMP #$36                ; $12:E400: C9 36
BEQ CODE_12E42B         ; $12:E402: F0 27

CODE_12E404:
LDY $12                 ; $12:E404: A4 12
LDA $0090,y             ; $12:E406: B9 90 00
CMP #$44                ; $12:E409: C9 44
BEQ CODE_12E42B         ; $12:E40B: F0 1E
CMP #$39                ; $12:E40D: C9 39
BEQ CODE_12E42B         ; $12:E40F: F0 1A
LDY #$08                ; $12:E411: A0 08

CODE_12E413:
STY $0F                 ; $12:E413: 84 0F
LDY $12                 ; $12:E415: A4 12
LDA $04A4,y             ; $12:E417: B9 A4 04
BNE CODE_12E422         ; $12:E41A: D0 06
LDA $0047,y             ; $12:E41C: B9 47 00
STA $04D6,x             ; $12:E41F: 9D D6 04

CODE_12E422:
LDA #$10                ; $12:E422: A9 10
STA $46,x               ; $12:E424: 95 46
STZ $0411,x             ; $12:E426: 9E 11 04
INC $9E,x               ; $12:E429: F6 9E

CODE_12E42B:
RTS                     ; $12:E42B: 60

CODE_12E42C:
LDY #$00                ; $12:E42C: A0 00
LDA $5A,x               ; $12:E42E: B5 5A
ORA $0F                 ; $12:E430: 05 0F
AND #$0C                ; $12:E432: 29 0C
CMP #$0C                ; $12:E434: C9 0C
BEQ CODE_12E443         ; $12:E436: F0 0B
LDA $5A,x               ; $12:E438: B5 5A
ORA $0F                 ; $12:E43A: 05 0F
AND #$03                ; $12:E43C: 29 03
CMP #$03                ; $12:E43E: C9 03
BNE CODE_12E444         ; $12:E440: D0 02
INY                     ; $12:E442: C8

CODE_12E443:
INY                     ; $12:E443: C8

CODE_12E444:
RTS                     ; $12:E444: 60

CODE_12E445:
JSL CODE_13F900         ; $12:E445: 22 00 F9 13
LDA $00                 ; $12:E449: A5 00
LDY #$09                ; $12:E44B: A0 09

CODE_12E44D:
CMP.w DATA_119B50,y     ; $12:E44D: D9 50 9B
BEQ CODE_12E456         ; $12:E450: F0 04
DEY                     ; $12:E452: 88
BPL CODE_12E44D         ; $12:E453: 10 F8
CLC                     ; $12:E455: 18

CODE_12E456:
RTS                     ; $12:E456: 60

ORG $12E460

CODE_12E460:
ASL A                   ; $12:E460: 0A
TAX                     ; $12:E461: AA
JMP (PNTR_12E465,x)     ; $12:E462: 7C 65 E4

; 30-3F - Horizontal bricks.

PNTR_12E465:
dw CODE_12E7E9

; 40-4F - Horizontal X-blocks.
dw CODE_12E7E9

; 50-5F - Horizontal multiple vegetables.
dw CODE_12E7E9

; 60-6F - Horizontal bridge.
dw CODE_12E7E9

; 70-7F - Horizontal spikes.
dw CODE_12E7E9

; 80-8F - Vertical bricks.
dw CODE_12E89A

; 90-9F - Vertical bricks.
dw CODE_12E89A

; A0-AF - Vertical ladders.
dw CODE_12E89A

; B0-BF - Horizontal whales.
dw CODE_12EDA1

; C0-CF - Horizontal green platforms.
dw CODE_12E994

; D0-DF - Horizontal logs.
dw CODE_12E958

; E0-EF - Horizontal clouds.
dw CODE_12E958

; F0-FF - Horizontal waterfalls.
dw CODE_12EC18

CODE_12E47F:
ASL A                   ; $12:E47F: 0A
TAX                     ; $12:E480: AA
JMP (PNTR_12E484,x)     ; $12:E481: 7C 84 E4

PNTR_12E484:
dw CODE_12E921
dw CODE_12E921
dw CODE_12E921
dw CODE_12E921
dw CODE_12E921
dw CODE_12E921
dw CODE_12EB07
dw CODE_12EB07
dw CODE_12EB07
dw CODE_12EF72
dw CODE_12EF72
dw CODE_12EF72
dw CODE_12EB32
dw CODE_12EB32
dw CODE_12ED1C
dw CODE_12F040

CODE_12E4A4:
LDA $050F               ; $12:E4A4: AD 0F 05
ASL A                   ; $12:E4A7: 0A
TAX                     ; $12:E4A8: AA
JMP (PNTR_12E4AC,x)     ; $12:E4A9: 7C AC E4

PNTR_12E4AC:
dw CODE_12EACF
dw CODE_12EAEF
dw CODE_12EB7F
dw CODE_12E7F7
dw CODE_12E870
dw CODE_12EA71
dw CODE_12EA71
dw CODE_12EC63
dw CODE_12EBC6
dw CODE_12EBC6
dw CODE_12F06A
dw CODE_12F091
dw CODE_12EF72
dw CODE_12EF72
dw CODE_12EF23
dw CODE_12EE90

DATA_12E4CC:
db $3D,$3C

CODE_12E4CE:
LDA $050F               ; $12:E4CE: AD 0F 05
ASL                     ; $12:E4D1: 0A
ASL A                   ; $12:E4D2: 0A

; Get object type number (0 = bricks, 1 = X-blocks, etc. C = waterfalls) * 4 into $0F.
STA $0F                 ; $12:E4D3: 85 0F
LDA $0545               ; $12:E4D5: AD 45 05
LDX $050F               ; $12:E4D8: AE 0F 05
CPX #$07                ; $12:E4DB: E0 07
BCS CODE_12E4E2         ; $12:E4DD: B0 03
LDA $0544               ; $12:E4DF: AD 44 05

CODE_12E4E2:
CLC                     ; $12:E4E2: 18
ADC $0F                 ; $12:E4E3: 65 0F
TAX                     ; $12:E4E5: AA
LDA $050F               ; $12:E4E6: AD 0F 05
CMP #$03                ; $12:E4E9: C9 03
BNE CODE_12E51A         ; $12:E4EB: D0 2D
LDA [$01],y             ; $12:E4ED: B7 01
CMP #$1C                ; $12:E4EF: C9 1C
BNE CODE_12E4F8         ; $12:E4F1: D0 05
LDA #$2A                ; $12:E4F3: A9 2A
BRL CODE_12E5A8         ; $12:E4F5: 82 B0 00

CODE_12E4F8:
CMP #$20                ; $12:E4F8: C9 20
BNE CODE_12E501         ; $12:E4FA: D0 05
LDA #$29                ; $12:E4FC: A9 29
BRL CODE_12E5A8         ; $12:E4FE: 82 A7 00

CODE_12E501:
CMP #$21                ; $12:E501: C9 21
BNE CODE_12E50A         ; $12:E503: D0 05
LDA #$2B                ; $12:E505: A9 2B
BRL CODE_12E5A8         ; $12:E507: 82 9E 00

CODE_12E50A:
LDA $0533               ; $12:E50A: AD 33 05
CMP #$02                ; $12:E50D: C9 02
BEQ CODE_12E515         ; $12:E50F: F0 04
CMP #$0B                ; $12:E511: C9 0B
BNE CODE_12E51A         ; $12:E513: D0 05

CODE_12E515:
LDA #$28                ; $12:E515: A9 28
BRL CODE_12E5A8         ; $12:E517: 82 8E 00

CODE_12E51A:
STX $07                 ; $12:E51A: 86 07
STY $08                 ; $12:E51C: 84 08
LDX $0635               ; $12:E51E: AE 35 06
LDA.w PNTR_11B564,x     ; $12:E521: BD 64 B5
STA $0C                 ; $12:E524: 85 0C
LDA.w PNTR_11B56B,x     ; $12:E526: BD 6B B5
STA $0D                 ; $12:E529: 85 0D
LDA #$11                ; $12:E52B: A9 11
STA $0E                 ; $12:E52D: 85 0E
LDY $07                 ; $12:E52F: A4 07
LDA [$0C],y             ; $12:E531: B7 0C
STZ $0762               ; $12:E533: 9C 62 07
LDX $0533               ; $12:E536: AE 33 05
CPX #$11                ; $12:E539: E0 11
BNE CODE_12E546         ; $12:E53B: D0 09
LDX $0534               ; $12:E53D: AE 34 05
CPX #$03                ; $12:E540: E0 03
BNE CODE_12E546         ; $12:E542: D0 02
BRA CODE_12E55C         ; $12:E544: 80 16

CODE_12E546:
LDX $0533               ; $12:E546: AE 33 05
CPX #$0D                ; $12:E549: E0 0D
BNE CODE_12E558         ; $12:E54B: D0 0B
LDX $0534               ; $12:E54D: AE 34 05
CPX #$02                ; $12:E550: E0 02
BEQ CODE_12E55C         ; $12:E552: F0 08
CPX #$03                ; $12:E554: E0 03
BEQ CODE_12E55C         ; $12:E556: F0 04

CODE_12E558:
LDX $EB                 ; $12:E558: A6 EB
BEQ CODE_12E564         ; $12:E55A: F0 08

CODE_12E55C:
JSR CODE_12E5B4         ; $12:E55C: 20 B4 E5
LDX $0762               ; $12:E55F: AE 62 07
BNE CODE_12E5AD         ; $12:E562: D0 49

CODE_12E564:
JSR CODE_12E7A6         ; $12:E564: 20 A6 E7
LDY $08                 ; $12:E567: A4 08
LDX $07                 ; $12:E569: A6 07
CMP #$B0                ; $12:E56B: C9 B0
BNE CODE_12E589         ; $12:E56D: D0 1A
LDX $0533               ; $12:E56F: AE 33 05
CPX #$0B                ; $12:E572: E0 0B
BNE CODE_12E589         ; $12:E574: D0 13
LDX $0534               ; $12:E576: AE 34 05
CPX #$04                ; $12:E579: E0 04
BNE CODE_12E589         ; $12:E57B: D0 0C
JSR CODE_12F1F3         ; $12:E57D: 20 F3 F1
LDX $050E               ; $12:E580: AE 0E 05
LDA.l DATA_12E4CC,x     ; $12:E583: BF CC E4 12
BRA CODE_12E5A4         ; $12:E587: 80 1B

CODE_12E589:
CMP #$B0                ; $12:E589: C9 B0
BNE CODE_12E5A4         ; $12:E58B: D0 17
LDX $0533               ; $12:E58D: AE 33 05
CPX #$02                ; $12:E590: E0 02
BNE CODE_12E59B         ; $12:E592: D0 07
LDX $0534               ; $12:E594: AE 34 05
CPX #$03                ; $12:E597: E0 03
BEQ CODE_12E5A2         ; $12:E599: F0 07

CODE_12E59B:
LDX $0533               ; $12:E59B: AE 33 05
CPX #$08                ; $12:E59E: E0 08
BNE CODE_12E5A4         ; $12:E5A0: D0 02

CODE_12E5A2:
LDA #$3E                ; $12:E5A2: A9 3E

CODE_12E5A4:
STA [$01],y             ; $12:E5A4: 97 01
BRA CODE_12E5AA         ; $12:E5A6: 80 02

CODE_12E5A8:
STA [$01],y             ; $12:E5A8: 97 01

CODE_12E5AA:
JSR CODE_12F13A         ; $12:E5AA: 20 3A F1

CODE_12E5AD:
RTS                     ; $12:E5AD: 60

DATA_12E5AE:
db $04,$10

DATA_12E5B0:
db $07,$13

DATA_12E5B2:
db $09,$18

CODE_12E5B4:
STA $0721               ; $12:E5B4: 8D 21 07
CMP #$AE                ; $12:E5B7: C9 AE
BEQ CODE_12E5BC         ; $12:E5B9: F0 01
RTS                     ; $12:E5BB: 60

CODE_12E5BC:
LDA $0768               ; $12:E5BC: AD 68 07
BNE CODE_12E5C4         ; $12:E5BF: D0 03
BRL CODE_12E690         ; $12:E5C1: 82 CC 00

CODE_12E5C4:
LDA $01                 ; $12:E5C4: A5 01
STA $0713               ; $12:E5C6: 8D 13 07
LDA $02                 ; $12:E5C9: A5 02
STA $0714               ; $12:E5CB: 8D 14 07
LDA $08                 ; $12:E5CE: A5 08
AND #$0F                ; $12:E5D0: 29 0F
BNE CODE_12E5D7         ; $12:E5D2: D0 03
BRL CODE_12E65C         ; $12:E5D4: 82 85 00

CODE_12E5D7:
LDY $08                 ; $12:E5D7: A4 08
DEY                     ; $12:E5D9: 88
LDA [$01],y             ; $12:E5DA: B7 01
CMP #$40                ; $12:E5DC: C9 40
BNE CODE_12E610         ; $12:E5DE: D0 30
INY                     ; $12:E5E0: C8
INY                     ; $12:E5E1: C8
LDA [$01],y             ; $12:E5E2: B7 01
CMP #$40                ; $12:E5E4: C9 40
BEQ CODE_12E65C         ; $12:E5E6: F0 74
JSR CODE_12E763         ; $12:E5E8: 20 63 E7
LDA $08                 ; $12:E5EB: A5 08
AND #$F0                ; $12:E5ED: 29 F0
BEQ CODE_12E601         ; $12:E5EF: F0 10
LDA $08                 ; $12:E5F1: A5 08
SEC                     ; $12:E5F3: 38
SBC #$10                ; $12:E5F4: E9 10
TAY                     ; $12:E5F6: A8
LDA [$01],y             ; $12:E5F7: B7 01
CMP #$40                ; $12:E5F9: C9 40
BNE CODE_12E601         ; $12:E5FB: D0 04
LDA #$00                ; $12:E5FD: A9 00
BRA CODE_12E67F         ; $12:E5FF: 80 7E

CODE_12E601:
LDA $08                 ; $12:E601: A5 08
AND #$10                ; $12:E603: 29 10
LSR A                   ; $12:E605: 4A
LSR A                   ; $12:E606: 4A
LSR A                   ; $12:E607: 4A
LSR A                   ; $12:E608: 4A
TAX                     ; $12:E609: AA
LDA.l DATA_12E5AE,x     ; $12:E60A: BF AE E5 12
BRA CODE_12E67F         ; $12:E60E: 80 6F

CODE_12E610:
LDA $08                 ; $12:E610: A5 08
AND #$0F                ; $12:E612: 29 0F
BEQ CODE_12E619         ; $12:E614: F0 03
JSR CODE_12E6BE         ; $12:E616: 20 BE E6

CODE_12E619:
LDA $08                 ; $12:E619: A5 08
AND #$F0                ; $12:E61B: 29 F0
BEQ CODE_12E63F         ; $12:E61D: F0 20
LDA $08                 ; $12:E61F: A5 08
SEC                     ; $12:E621: 38
SBC #$10                ; $12:E622: E9 10
TAY                     ; $12:E624: A8
LDA [$01],y             ; $12:E625: B7 01
CMP #$40                ; $12:E627: C9 40
BEQ CODE_12E63B         ; $12:E629: F0 10
REP #$20                ; $12:E62B: C2 20
LDA $01                 ; $12:E62D: A5 01
CLC                     ; $12:E62F: 18
ADC #$7000              ; $12:E630: 69 00 70
STA $01                 ; $12:E633: 85 01
SEP #$20                ; $12:E635: E2 20
LDA [$01],y             ; $12:E637: B7 01
BNE CODE_12E63F         ; $12:E639: D0 04

CODE_12E63B:
LDA #$03                ; $12:E63B: A9 03
BRA CODE_12E67F         ; $12:E63D: 80 40

CODE_12E63F:
LDA $0714               ; $12:E63F: AD 14 07
STA $02                 ; $12:E642: 85 02
LDY $08                 ; $12:E644: A4 08
DEY                     ; $12:E646: 88
LDA [$01],y             ; $12:E647: B7 01
CMP #$C2                ; $12:E649: C9 C2
BEQ CODE_12E601         ; $12:E64B: F0 B4
LDA $08                 ; $12:E64D: A5 08
AND #$10                ; $12:E64F: 29 10
LSR A                   ; $12:E651: 4A
LSR A                   ; $12:E652: 4A
LSR A                   ; $12:E653: 4A
LSR A                   ; $12:E654: 4A
TAX                     ; $12:E655: AA
LDA.l DATA_12E5B0,x     ; $12:E656: BF B0 E5 12
BRA CODE_12E67F         ; $12:E65A: 80 23

CODE_12E65C:
LDA $08                 ; $12:E65C: A5 08
AND #$F0                ; $12:E65E: 29 F0
BEQ CODE_12E672         ; $12:E660: F0 10
LDA $08                 ; $12:E662: A5 08
SEC                     ; $12:E664: 38
SBC #$10                ; $12:E665: E9 10
TAY                     ; $12:E667: A8
LDA [$01],y             ; $12:E668: B7 01
CMP #$40                ; $12:E66A: C9 40
BNE CODE_12E672         ; $12:E66C: D0 04
LDA #$08                ; $12:E66E: A9 08
BRA CODE_12E67F         ; $12:E670: 80 0D

CODE_12E672:
LDA $08                 ; $12:E672: A5 08
AND #$10                ; $12:E674: 29 10
LSR A                   ; $12:E676: 4A
LSR A                   ; $12:E677: 4A
LSR A                   ; $12:E678: 4A
LSR A                   ; $12:E679: 4A
TAX                     ; $12:E67A: AA
LDA.l DATA_12E5B2,x     ; $12:E67B: BF B2 E5 12

CODE_12E67F:
LDX $0713               ; $12:E67F: AE 13 07
STX $01                 ; $12:E682: 86 01
LDX $0714               ; $12:E684: AE 14 07
STX $02                 ; $12:E687: 86 02
LDY $08                 ; $12:E689: A4 08
STA [$01],y             ; $12:E68B: 97 01
JSR CODE_12F154         ; $12:E68D: 20 54 F1

CODE_12E690:
INC $0762               ; $12:E690: EE 62 07
LDA $0721               ; $12:E693: AD 21 07
RTS                     ; $12:E696: 60

DATA_12E697:
db $01,$02,$05,$06,$11,$12,$00,$04
db $10,$03,$07,$13

DATA_12E6A3:
db $02,$01,$06,$05,$12,$11,$01,$05
db $11,$02,$06,$12

DATA_12E6AF:
db $08,$09,$18

DATA_12E6B2:
db $00,$10,$04

DATA_12E6B5:
db $01,$06,$12

DATA_12E6B8:
db $03,$07,$13

DATA_12E6BB:
db $01,$05,$11

CODE_12E6BE:
LDY $08                 ; $12:E6BE: A4 08
DEY                     ; $12:E6C0: 88
LDA $02                 ; $12:E6C1: A5 02
STA $0714               ; $12:E6C3: 8D 14 07
CLC                     ; $12:E6C6: 18
ADC #$70                ; $12:E6C7: 69 70
STA $02                 ; $12:E6C9: 85 02
LDA [$01],y             ; $12:E6CB: B7 01
BNE CODE_12E6D2         ; $12:E6CD: D0 03
BRL CODE_12E75D         ; $12:E6CF: 82 8B 00

CODE_12E6D2:
LDA $0714               ; $12:E6D2: AD 14 07
STA $02                 ; $12:E6D5: 85 02
LDA $0533               ; $12:E6D7: AD 33 05
CMP #$0C                ; $12:E6DA: C9 0C
BNE CODE_12E6FA         ; $12:E6DC: D0 1C
LDA $0534               ; $12:E6DE: AD 34 05
CMP #$01                ; $12:E6E1: C9 01
BNE CODE_12E6FA         ; $12:E6E3: D0 15
LDX #$02                ; $12:E6E5: A2 02
LDA [$01],y             ; $12:E6E7: B7 01

CODE_12E6E9:
CMP.l DATA_12E6AF,x     ; $12:E6E9: DF AF E6 12
BEQ CODE_12E6F4         ; $12:E6ED: F0 05
DEX                     ; $12:E6EF: CA
BPL CODE_12E6E9         ; $12:E6F0: 10 F7
BRA CODE_12E713         ; $12:E6F2: 80 1F

CODE_12E6F4:
LDA.l DATA_12E6B5,x     ; $12:E6F4: BF B5 E6 12
BRA CODE_12E758         ; $12:E6F8: 80 5E

CODE_12E6FA:
LDA [$01],y             ; $12:E6FA: B7 01
BEQ CODE_12E75D         ; $12:E6FC: F0 5F
CMP #$04                ; $12:E6FE: C9 04
BEQ CODE_12E75D         ; $12:E700: F0 5B
CMP #$10                ; $12:E702: C9 10
BEQ CODE_12E75D         ; $12:E704: F0 57
LDX #$02                ; $12:E706: A2 02
LDA [$01],y             ; $12:E708: B7 01

CODE_12E70A:
CMP.l DATA_12E6AF,x     ; $12:E70A: DF AF E6 12
BEQ CODE_12E754         ; $12:E70E: F0 44
DEX                     ; $12:E710: CA
BPL CODE_12E70A         ; $12:E711: 10 F7

CODE_12E713:
DEY                     ; $12:E713: 88
LDA $02                 ; $12:E714: A5 02
CLC                     ; $12:E716: 18
ADC #$70                ; $12:E717: 69 70
STA $02                 ; $12:E719: 85 02
LDA [$01],y             ; $12:E71B: B7 01
BNE CODE_12E73A         ; $12:E71D: D0 1B
LDA $0714               ; $12:E71F: AD 14 07
STA $02                 ; $12:E722: 85 02
LDX #$02                ; $12:E724: A2 02
INY                     ; $12:E726: C8
LDA [$01],y             ; $12:E727: B7 01

CODE_12E729:
CMP.l DATA_12E6B8,x     ; $12:E729: DF B8 E6 12
BEQ CODE_12E734         ; $12:E72D: F0 05
DEX                     ; $12:E72F: CA
BPL CODE_12E729         ; $12:E730: 10 F7
BRA CODE_12E75D         ; $12:E732: 80 29

CODE_12E734:
LDA.l DATA_12E6BB,x     ; $12:E734: BF BB E6 12
BRA CODE_12E758         ; $12:E738: 80 1E

CODE_12E73A:
LDA $0714               ; $12:E73A: AD 14 07
STA $02                 ; $12:E73D: 85 02
LDX #$0B                ; $12:E73F: A2 0B
LDA [$01],y             ; $12:E741: B7 01

CODE_12E743:
CMP.l DATA_12E697,x     ; $12:E743: DF 97 E6 12
BEQ CODE_12E74E         ; $12:E747: F0 05
DEX                     ; $12:E749: CA
BPL CODE_12E743         ; $12:E74A: 10 F7
BRA CODE_12E75D         ; $12:E74C: 80 0F

CODE_12E74E:
LDA.l DATA_12E6A3,x     ; $12:E74E: BF A3 E6 12
BRA CODE_12E758         ; $12:E752: 80 04

CODE_12E754:
LDA.l DATA_12E6B2,x     ; $12:E754: BF B2 E6 12

CODE_12E758:
LDY $08                 ; $12:E758: A4 08
DEY                     ; $12:E75A: 88
STA [$01],y             ; $12:E75B: 97 01

CODE_12E75D:
LDA $0714               ; $12:E75D: AD 14 07
STA $02                 ; $12:E760: 85 02
RTS                     ; $12:E762: 60

CODE_12E763:
LDY $08                 ; $12:E763: A4 08
INY                     ; $12:E765: C8
LDA $02                 ; $12:E766: A5 02
STA $0714               ; $12:E768: 8D 14 07
CLC                     ; $12:E76B: 18
ADC #$70                ; $12:E76C: 69 70
STA $02                 ; $12:E76E: 85 02
LDA [$01],y             ; $12:E770: B7 01
BEQ CODE_12E7A0         ; $12:E772: F0 2C
LDA $0714               ; $12:E774: AD 14 07
STA $02                 ; $12:E777: 85 02
LDA [$01],y             ; $12:E779: B7 01
CMP #$03                ; $12:E77B: C9 03
BEQ CODE_12E7A0         ; $12:E77D: F0 21
CMP #$07                ; $12:E77F: C9 07
BEQ CODE_12E7A0         ; $12:E781: F0 1D
CMP #$13                ; $12:E783: C9 13
BEQ CODE_12E7A0         ; $12:E785: F0 19
LDX #$05                ; $12:E787: A2 05
INY                     ; $12:E789: C8
LDA [$01],y             ; $12:E78A: B7 01

CODE_12E78C:
CMP.l DATA_12E697,x     ; $12:E78C: DF 97 E6 12
BEQ CODE_12E797         ; $12:E790: F0 05
DEX                     ; $12:E792: CA
BPL CODE_12E78C         ; $12:E793: 10 F7
BRA CODE_12E75D         ; $12:E795: 80 C6

CODE_12E797:
LDA.l DATA_12E6A3,x     ; $12:E797: BF A3 E6 12
LDY $08                 ; $12:E79B: A4 08
INY                     ; $12:E79D: C8
STA [$01],y             ; $12:E79E: 97 01

CODE_12E7A0:
LDA $0714               ; $12:E7A0: AD 14 07
STA $02                 ; $12:E7A3: 85 02
RTS                     ; $12:E7A5: 60

CODE_12E7A6:
CMP #$07                ; $12:E7A6: C9 07
BNE CODE_12E7BC         ; $12:E7A8: D0 12
LDY $08                 ; $12:E7AA: A4 08
BMI CODE_12E7B5         ; $12:E7AC: 30 07
CPY #$10                ; $12:E7AE: C0 10
BPL CODE_12E7B5         ; $12:E7B0: 10 03
JSR CODE_12E7BD         ; $12:E7B2: 20 BD E7

CODE_12E7B5:
LDX $050E               ; $12:E7B5: AE 0E 05
BNE CODE_12E7BC         ; $12:E7B8: D0 02
LDA #$18                ; $12:E7BA: A9 18

CODE_12E7BC:
RTS                     ; $12:E7BC: 60

CODE_12E7BD:
STA $02C6               ; $12:E7BD: 8D C6 02
REP #$20                ; $12:E7C0: C2 20
LDA $01                 ; $12:E7C2: A5 01
STA $02C9               ; $12:E7C4: 8D C9 02
SEC                     ; $12:E7C7: 38
SBC #$0010              ; $12:E7C8: E9 10 00
STA $01                 ; $12:E7CB: 85 01
SEP #$20                ; $12:E7CD: E2 20
LDA [$01],y             ; $12:E7CF: B7 01
CMP #$18                ; $12:E7D1: C9 18
BNE CODE_12E7DC         ; $12:E7D3: D0 07
LDA #$07                ; $12:E7D5: A9 07
STA [$01],y             ; $12:E7D7: 97 01
JSR CODE_12F13A         ; $12:E7D9: 20 3A F1

CODE_12E7DC:
REP #$20                ; $12:E7DC: C2 20
LDA $02C9               ; $12:E7DE: AD C9 02
STA $01                 ; $12:E7E1: 85 01
SEP #$20                ; $12:E7E3: E2 20
LDA $02C6               ; $12:E7E5: AD C6 02
RTS                     ; $12:E7E8: 60

CODE_12E7E9:
LDY $E7                 ; $12:E7E9: A4 E7

CODE_12E7EB:
JSR CODE_12E4CE         ; $12:E7EB: 20 CE E4
JSR CODE_12F8D6         ; $12:E7EE: 20 D6 F8
DEC $050E               ; $12:E7F1: CE 0E 05

; If amount of Map16 blocks to transfer is negative, terminate.
BPL CODE_12E7EB         ; $12:E7F4: 10 F5

; Return.
RTS                     ; $12:E7F6: 60

CODE_12E7F7:
LDA $0635               ; $12:E7F7: AD 35 06
CMP #$05                ; $12:E7FA: C9 05
BEQ CODE_12E827         ; $12:E7FC: F0 29
LDY $E7                 ; $12:E7FE: A4 E7
LDA #$52                ; $12:E800: A9 52
STA [$01],y             ; $12:E802: 97 01
JSR CODE_12F13A         ; $12:E804: 20 3A F1
LDA $E7                 ; $12:E807: A5 E7
CLC                     ; $12:E809: 18
ADC #$10                ; $12:E80A: 69 10
TAY                     ; $12:E80C: A8
LDA #$52                ; $12:E80D: A9 52
STA [$01],y             ; $12:E80F: 97 01
JSR CODE_12F13A         ; $12:E811: 20 3A F1
LDA $0635               ; $12:E814: AD 35 06
CMP #$05                ; $12:E817: C9 05
BEQ CODE_12E822         ; $12:E819: F0 07
CMP #$06                ; $12:E81B: C9 06
BEQ CODE_12E822         ; $12:E81D: F0 03
JSR CODE_12F928         ; $12:E81F: 20 28 F9

CODE_12E822:
JSL CODE_14F7B2         ; $12:E822: 22 B2 F7 14
RTS                     ; $12:E826: 60

CODE_12E827:
LDA $0533               ; $12:E827: AD 33 05
CMP #$11                ; $12:E82A: C9 11
BNE CODE_12E835         ; $12:E82C: D0 07
LDA $0534               ; $12:E82E: AD 34 05
CMP #$02                ; $12:E831: C9 02
BEQ CODE_12E851         ; $12:E833: F0 1C

CODE_12E835:
LDY $E7                 ; $12:E835: A4 E7
LDA #$52                ; $12:E837: A9 52
STA [$01],y             ; $12:E839: 97 01
JSR CODE_12F13A         ; $12:E83B: 20 3A F1
LDA $08                 ; $12:E83E: A5 08
TYA                     ; $12:E840: 98
CLC                     ; $12:E841: 18
ADC #$10                ; $12:E842: 69 10
TAY                     ; $12:E844: A8
LDA #$52                ; $12:E845: A9 52
STA [$01],y             ; $12:E847: 97 01
JSR CODE_12F13A         ; $12:E849: 20 3A F1
JSL CODE_14F7B2         ; $12:E84C: 22 B2 F7 14
RTS                     ; $12:E850: 60

CODE_12E851:
LDY $E7                 ; $12:E851: A4 E7
DEY                     ; $12:E853: 88
LDA #$52                ; $12:E854: A9 52
STA [$01],y             ; $12:E856: 97 01
INY                     ; $12:E858: C8
LDA #$52                ; $12:E859: A9 52
STA [$01],y             ; $12:E85B: 97 01
LDX #$02                ; $12:E85D: A2 02

CODE_12E85F:
TYA                     ; $12:E85F: 98
CLC                     ; $12:E860: 18
ADC #$10                ; $12:E861: 69 10
TAY                     ; $12:E863: A8
LDA #$52                ; $12:E864: A9 52
STA [$01],y             ; $12:E866: 97 01
DEX                     ; $12:E868: CA
BPL CODE_12E85F         ; $12:E869: 10 F4
JSL CODE_14F7FC         ; $12:E86B: 22 FC F7 14
RTS                     ; $12:E86F: 60

CODE_12E870:
LDY $E7                 ; $12:E870: A4 E7
LDA #$52                ; $12:E872: A9 52
STA [$01],y             ; $12:E874: 97 01
JSR CODE_12F13A         ; $12:E876: 20 3A F1
LDY $E7                 ; $12:E879: A4 E7
TYA                     ; $12:E87B: 98
CLC                     ; $12:E87C: 18
ADC #$10                ; $12:E87D: 69 10
TAY                     ; $12:E87F: A8
LDA #$52                ; $12:E880: A9 52
STA [$01],y             ; $12:E882: 97 01
JSR CODE_12F13A         ; $12:E884: 20 3A F1
LDA $0635               ; $12:E887: AD 35 06
CMP #$05                ; $12:E88A: C9 05
BEQ CODE_12E895         ; $12:E88C: F0 07
CMP #$06                ; $12:E88E: C9 06
BEQ CODE_12E895         ; $12:E890: F0 03
JSR CODE_12F928         ; $12:E892: 20 28 F9

CODE_12E895:
JSL CODE_14F7D7         ; $12:E895: 22 D7 F7 14
RTS                     ; $12:E899: 60

CODE_12E89A:
LDA $0533               ; $12:E89A: AD 33 05
CMP #$0B                ; $12:E89D: C9 0B
BNE CODE_12E8A8         ; $12:E89F: D0 07
LDA $0534               ; $12:E8A1: AD 34 05
CMP #$01                ; $12:E8A4: C9 01
BEQ CODE_12E902         ; $12:E8A6: F0 5A

CODE_12E8A8:
LDA $0533               ; $12:E8A8: AD 33 05
CMP #$0E                ; $12:E8AB: C9 0E
BNE CODE_12E8B6         ; $12:E8AD: D0 07
LDA $0534               ; $12:E8AF: AD 34 05
CMP #$03                ; $12:E8B2: C9 03
BEQ CODE_12E8FF         ; $12:E8B4: F0 49

CODE_12E8B6:
LDY $E7                 ; $12:E8B6: A4 E7
LDA $050F               ; $12:E8B8: AD 0F 05
CMP #$06                ; $12:E8BB: C9 06
BNE CODE_12E8DD         ; $12:E8BD: D0 1E
LDA $0533               ; $12:E8BF: AD 33 05
CMP #$0E                ; $12:E8C2: C9 0E
BNE CODE_12E8DD         ; $12:E8C4: D0 17
LDA $0534               ; $12:E8C6: AD 34 05
CMP #$05                ; $12:E8C9: C9 05
BNE CODE_12E8DD         ; $12:E8CB: D0 10

CODE_12E8CD:
LDA #$36                ; $12:E8CD: A9 36
STA [$01],y             ; $12:E8CF: 97 01
JSR CODE_12F13A         ; $12:E8D1: 20 3A F1
JSR CODE_12F914         ; $12:E8D4: 20 14 F9
DEC $050E               ; $12:E8D7: CE 0E 05
BPL CODE_12E8CD         ; $12:E8DA: 10 F1
RTS                     ; $12:E8DC: 60

CODE_12E8DD:
LDA $050F               ; $12:E8DD: AD 0F 05
CMP #$06                ; $12:E8E0: C9 06
BNE CODE_12E8F4         ; $12:E8E2: D0 10
LDA #$00                ; $12:E8E4: A9 00
STA [$01],y             ; $12:E8E6: 97 01
JSR CODE_12F154         ; $12:E8E8: 20 54 F1
STY $08                 ; $12:E8EB: 84 08
JSR CODE_12E763         ; $12:E8ED: 20 63 E7
LDY $08                 ; $12:E8F0: A4 08
BRA CODE_12E8F7         ; $12:E8F2: 80 03

CODE_12E8F4:
JSR CODE_12E4CE         ; $12:E8F4: 20 CE E4

CODE_12E8F7:
JSR CODE_12F914         ; $12:E8F7: 20 14 F9
DEC $050E               ; $12:E8FA: CE 0E 05
BPL CODE_12E8F4         ; $12:E8FD: 10 F5

CODE_12E8FF:
RTS                     ; $12:E8FF: 60

DATA_12E900:
db $07,$13

CODE_12E902:
LDY $E7                 ; $12:E902: A4 E7

CODE_12E904:
TYA                     ; $12:E904: 98
AND #$10                ; $12:E905: 29 10
LSR A                   ; $12:E907: 4A
LSR A                   ; $12:E908: 4A
LSR A                   ; $12:E909: 4A
LSR A                   ; $12:E90A: 4A
TAX                     ; $12:E90B: AA
LDA.l DATA_12E900,x     ; $12:E90C: BF 00 E9 12
STA [$01],y             ; $12:E910: 97 01
JSR CODE_12F154         ; $12:E912: 20 54 F1
TYA                     ; $12:E915: 98
CLC                     ; $12:E916: 18
ADC #$10                ; $12:E917: 69 10
CMP #$B0                ; $12:E919: C9 B0
BCS CODE_12E920         ; $12:E91B: B0 03
TAY                     ; $12:E91D: A8
BRA CODE_12E904         ; $12:E91E: 80 E4

CODE_12E920:
RTS                     ; $12:E920: 60

CODE_12E921:
LDX $050F               ; $12:E921: AE 0F 05
CPX #$05                ; $12:E924: E0 05
BNE CODE_12E92E         ; $12:E926: D0 06
LDA $0545               ; $12:E928: AD 45 05
BEQ CODE_12E92E         ; $12:E92B: F0 01
INX                     ; $12:E92D: E8

CODE_12E92E:
LDA.w DATA_11B675,x     ; $12:E92E: BD 75 B6
LDY $0635               ; $12:E931: AC 35 06
CPY #$06                ; $12:E934: C0 06
BEQ CODE_12E93B         ; $12:E936: F0 03
LDA.w DATA_11B66E,x     ; $12:E938: BD 6E B6

CODE_12E93B:
LDY $00E7               ; $12:E93B: AC E7 00
PHA                     ; $12:E93E: 48
DEY                     ; $12:E93F: 88
JSR CODE_12F0BF         ; $12:E940: 20 BF F0
JSL CODE_159895         ; $12:E943: 22 95 98 15
INY                     ; $12:E947: C8
INY                     ; $12:E948: C8
JSR CODE_12F0FC         ; $12:E949: 20 FC F0
JSL CODE_1598DF         ; $12:E94C: 22 DF 98 15
DEY                     ; $12:E950: 88
PLA                     ; $12:E951: 68
STA [$01],y             ; $12:E952: 97 01
JSR CODE_12F13A         ; $12:E954: 20 3A F1
RTS                     ; $12:E957: 60

CODE_12E958:
LDA $0635               ; $12:E958: AD 35 06
CMP #$04                ; $12:E95B: C9 04
BNE CODE_12E962         ; $12:E95D: D0 03
JMP CODE_12EE3F         ; $12:E95F: 4C 3F EE

CODE_12E962:
LDY $E7                 ; $12:E962: A4 E7
LDA $050F               ; $12:E964: AD 0F 05
SEC                     ; $12:E967: 38
SBC #$0A                ; $12:E968: E9 0A
TAX                     ; $12:E96A: AA
LDA.w DATA_11B67C,x     ; $12:E96B: BD 7C B6
STA [$01],y             ; $12:E96E: 97 01
JSR CODE_12F13A         ; $12:E970: 20 3A F1
DEC $050E               ; $12:E973: CE 0E 05
BEQ CODE_12E988         ; $12:E976: F0 10

CODE_12E978:
JSR CODE_12F8D6         ; $12:E978: 20 D6 F8
LDA.w DATA_11B67E,x     ; $12:E97B: BD 7E B6
STA [$01],y             ; $12:E97E: 97 01
JSR CODE_12F13A         ; $12:E980: 20 3A F1
DEC $050E               ; $12:E983: CE 0E 05
BNE CODE_12E978         ; $12:E986: D0 F0

CODE_12E988:
JSR CODE_12F8D6         ; $12:E988: 20 D6 F8
LDA.w DATA_11B680,x     ; $12:E98B: BD 80 B6
STA [$01],y             ; $12:E98E: 97 01
JSR CODE_12F13A         ; $12:E990: 20 3A F1
RTS                     ; $12:E993: 60

CODE_12E994:
LDA $0635               ; $12:E994: AD 35 06
CMP #$06                ; $12:E997: C9 06
BNE CODE_12E99E         ; $12:E999: D0 03
JMP CODE_12EFF7         ; $12:E99B: 4C F7 EF

CODE_12E99E:
LDA $0533               ; $12:E99E: AD 33 05
BNE CODE_12E9B8         ; $12:E9A1: D0 15
LDA $0534               ; $12:E9A3: AD 34 05
CMP #$02                ; $12:E9A6: C9 02
BNE CODE_12E9B8         ; $12:E9A8: D0 0E
LDA $00E9               ; $12:E9AA: AD E9 00
CMP #$09                ; $12:E9AD: C9 09
BNE CODE_12E9B8         ; $12:E9AF: D0 07
LDA $00E7               ; $12:E9B1: AD E7 00
CMP #$0F                ; $12:E9B4: C9 0F
BEQ CODE_12E9F0         ; $12:E9B6: F0 38

CODE_12E9B8:
LDX #$00                ; $12:E9B8: A2 00

CODE_12E9BA:
STX $0B                 ; $12:E9BA: 86 0B
LDX $E9                 ; $12:E9BC: A6 E9
JSR CODE_12F8B0         ; $12:E9BE: 20 B0 F8
LDX $0B                 ; $12:E9C1: A6 0B
LDY $E7                 ; $12:E9C3: A4 E7
LDA $050E               ; $12:E9C5: AD 0E 05
STA $07                 ; $12:E9C8: 85 07
JSR CODE_12E9F1         ; $12:E9CA: 20 F1 E9
INX                     ; $12:E9CD: E8
LDA $07                 ; $12:E9CE: A5 07
BEQ CODE_12E9DA         ; $12:E9D0: F0 08

CODE_12E9D2:
JSR CODE_12F8D6         ; $12:E9D2: 20 D6 F8
JSR CODE_12E9F1         ; $12:E9D5: 20 F1 E9
BNE CODE_12E9D2         ; $12:E9D8: D0 F8

CODE_12E9DA:
JSR CODE_12F8D6         ; $12:E9DA: 20 D6 F8
INX                     ; $12:E9DD: E8
JSR CODE_12E9F1         ; $12:E9DE: 20 F1 E9
LDA $E7                 ; $12:E9E1: A5 E7
CLC                     ; $12:E9E3: 18
ADC #$10                ; $12:E9E4: 69 10
CMP #$F0                ; $12:E9E6: C9 F0
BCS CODE_12E9F0         ; $12:E9E8: B0 06
LDX #$03                ; $12:E9EA: A2 03
STA $E7                 ; $12:E9EC: 85 E7
BRA CODE_12E9BA         ; $12:E9EE: 80 CA

CODE_12E9F0:
RTS                     ; $12:E9F0: 60

CODE_12E9F1:
STX $08                 ; $12:E9F1: 86 08
LDA $02                 ; $12:E9F3: A5 02
STA $0714               ; $12:E9F5: 8D 14 07
CLC                     ; $12:E9F8: 18
ADC #$70                ; $12:E9F9: 69 70
STA $02                 ; $12:E9FB: 85 02
LDA [$01],y             ; $12:E9FD: B7 01
BEQ CODE_12EA08         ; $12:E9FF: F0 07
LDA $0714               ; $12:EA01: AD 14 07
STA $02                 ; $12:EA04: 85 02
BRA CODE_12EA6C         ; $12:EA06: 80 64

CODE_12EA08:
LDA $0714               ; $12:EA08: AD 14 07
STA $02                 ; $12:EA0B: 85 02
TXA                     ; $12:EA0D: 8A
BNE CODE_12EA2A         ; $12:EA0E: D0 1A
LDX #$02                ; $12:EA10: A2 02
LDA [$01],y             ; $12:EA12: B7 01
CMP.w DATA_11B68B,x     ; $12:EA14: DD 8B B6
BEQ CODE_12EA25         ; $12:EA17: F0 0C
DEX                     ; $12:EA19: CA
CMP.w DATA_11B68B,x     ; $12:EA1A: DD 8B B6
BEQ CODE_12EA25         ; $12:EA1D: F0 06
DEX                     ; $12:EA1F: CA
CMP.w DATA_11B68B,x     ; $12:EA20: DD 8B B6
BNE CODE_12EA48         ; $12:EA23: D0 23

CODE_12EA25:
LDA.w DATA_11B68E,x     ; $12:EA25: BD 8E B6
BNE CODE_12EA5B         ; $12:EA28: D0 31

CODE_12EA2A:
LDX $08                 ; $12:EA2A: A6 08
CPX #$02                ; $12:EA2C: E0 02
BNE CODE_12EA48         ; $12:EA2E: D0 18
LDA [$01],y             ; $12:EA30: B7 01
CMP.w DATA_11B68B,x     ; $12:EA32: DD 8B B6
BEQ CODE_12EA43         ; $12:EA35: F0 0C
DEX                     ; $12:EA37: CA
CMP.w DATA_11B68B,x     ; $12:EA38: DD 8B B6
BEQ CODE_12EA43         ; $12:EA3B: F0 06
DEX                     ; $12:EA3D: CA
CMP.w DATA_11B68B,x     ; $12:EA3E: DD 8B B6
BNE CODE_12EA48         ; $12:EA41: D0 05

CODE_12EA43:
LDA.w DATA_11B691,x     ; $12:EA43: BD 91 B6
BNE CODE_12EA5B         ; $12:EA46: D0 13

CODE_12EA48:
LDX #$08                ; $12:EA48: A2 08

CODE_12EA4A:
LDA [$01],y             ; $12:EA4A: B7 01
CMP.w DATA_11B682,x     ; $12:EA4C: DD 82 B6
BEQ CODE_12EA56         ; $12:EA4F: F0 05
DEX                     ; $12:EA51: CA
BPL CODE_12EA4A         ; $12:EA52: 10 F6
BRA CODE_12EA6C         ; $12:EA54: 80 16

CODE_12EA56:
LDX $08                 ; $12:EA56: A6 08
LDA.w DATA_11B682,x     ; $12:EA58: BD 82 B6

CODE_12EA5B:
PHA                     ; $12:EA5B: 48
DEY                     ; $12:EA5C: 88
JSR CODE_12F0BF         ; $12:EA5D: 20 BF F0
INY                     ; $12:EA60: C8
PLA                     ; $12:EA61: 68
STA [$01],y             ; $12:EA62: 97 01
JSR CODE_12F13A         ; $12:EA64: 20 3A F1
INY                     ; $12:EA67: C8
JSR CODE_12F0FC         ; $12:EA68: 20 FC F0
DEY                     ; $12:EA6B: 88

CODE_12EA6C:
LDX $08                 ; $12:EA6C: A6 08
DEC $07                 ; $12:EA6E: C6 07
RTS                     ; $12:EA70: 60

CODE_12EA71:
LDA $0635               ; $12:EA71: AD 35 06
CMP #$04                ; $12:EA74: C9 04
BEQ CODE_12EAA1         ; $12:EA76: F0 29
LDA $050F               ; $12:EA78: AD 0F 05
SEC                     ; $12:EA7B: 38
SBC #$05                ; $12:EA7C: E9 05
STA $07                 ; $12:EA7E: 85 07
TAX                     ; $12:EA80: AA
LDY $E7                 ; $12:EA81: A4 E7
LDA.w DATA_11B694,x     ; $12:EA83: BD 94 B6
STA [$01],y             ; $12:EA86: 97 01
JSR CODE_12F13A         ; $12:EA88: 20 3A F1

CODE_12EA8B:
JSR CODE_12F914         ; $12:EA8B: 20 14 F9
LDA [$01],y             ; $12:EA8E: B7 01
CMP #$40                ; $12:EA90: C9 40
BNE CODE_12EAA0         ; $12:EA92: D0 0C
LDX $07                 ; $12:EA94: A6 07
LDA.w DATA_11B696,x     ; $12:EA96: BD 96 B6
STA [$01],y             ; $12:EA99: 97 01
JSR CODE_12F13A         ; $12:EA9B: 20 3A F1
BNE CODE_12EA8B         ; $12:EA9E: D0 EB

CODE_12EAA0:
RTS                     ; $12:EAA0: 60

CODE_12EAA1:
LDX #$00                ; $12:EAA1: A2 00
LDA $050F               ; $12:EAA3: AD 0F 05
CMP #$05                ; $12:EAA6: C9 05
BEQ CODE_12EAAB         ; $12:EAA8: F0 01
INX                     ; $12:EAAA: E8

CODE_12EAAB:
STX $07                 ; $12:EAAB: 86 07
LDY $E7                 ; $12:EAAD: A4 E7
LDA.w DATA_11B698,x     ; $12:EAAF: BD 98 B6
STA [$01],y             ; $12:EAB2: 97 01
JSR CODE_12F13A         ; $12:EAB4: 20 3A F1

CODE_12EAB7:
JSR CODE_12F914         ; $12:EAB7: 20 14 F9
LDA [$01],y             ; $12:EABA: B7 01
CMP #$40                ; $12:EABC: C9 40
BNE CODE_12EACE         ; $12:EABE: D0 0E
LDX $07                 ; $12:EAC0: A6 07
LDA.w DATA_11B69A,x     ; $12:EAC2: BD 9A B6
STA [$01],y             ; $12:EAC5: 97 01
JSR CODE_12F13A         ; $12:EAC7: 20 3A F1
CPY #$E0                ; $12:EACA: C0 E0
BCC CODE_12EAB7         ; $12:EACC: 90 E9

CODE_12EACE:
RTS                     ; $12:EACE: 60

CODE_12EACF:
LDA $0533               ; $12:EACF: AD 33 05
CMP #$06                ; $12:EAD2: C9 06
BNE CODE_12EAEE         ; $12:EAD4: D0 18
LDA $0534               ; $12:EAD6: AD 34 05
CMP #$03                ; $12:EAD9: C9 03
BNE CODE_12EAEE         ; $12:EADB: D0 11
LDY $E7                 ; $12:EADD: A4 E7
LDA #$01                ; $12:EADF: A9 01
STA [$01],y             ; $12:EAE1: 97 01
JSR CODE_12F13A         ; $12:EAE3: 20 3A F1
INY                     ; $12:EAE6: C8
LDA #$02                ; $12:EAE7: A9 02
STA [$01],y             ; $12:EAE9: 97 01
JSR CODE_12F13A         ; $12:EAEB: 20 3A F1

CODE_12EAEE:
RTS                     ; $12:EAEE: 60

CODE_12EAEF:
LDA $0533               ; $12:EAEF: AD 33 05
CMP #$06                ; $12:EAF2: C9 06
BNE CODE_12EB06         ; $12:EAF4: D0 10
LDA $0534               ; $12:EAF6: AD 34 05
CMP #$03                ; $12:EAF9: C9 03
BNE CODE_12EB06         ; $12:EAFB: D0 09
LDY $E7                 ; $12:EAFD: A4 E7
LDA #$03                ; $12:EAFF: A9 03
STA [$01],y             ; $12:EB01: 97 01
JSR CODE_12F13A         ; $12:EB03: 20 3A F1

CODE_12EB06:
RTS                     ; $12:EB06: 60

CODE_12EB07:
LDY $E7                 ; $12:EB07: A4 E7
LDA $050F               ; $12:EB09: AD 0F 05
SEC                     ; $12:EB0C: 38
SBC #$06                ; $12:EB0D: E9 06
TAX                     ; $12:EB0F: AA
LDA.w DATA_11B69C,x     ; $12:EB10: BD 9C B6

CODE_12EB13:
STA [$01],y             ; $12:EB13: 97 01
JSR CODE_12F13A         ; $12:EB15: 20 3A F1
JSR CODE_12F914         ; $12:EB18: 20 14 F9
LDA [$01],y             ; $12:EB1B: B7 01
CMP #$40                ; $12:EB1D: C9 40
BNE CODE_12EB25         ; $12:EB1F: D0 04
LDA #$6B                ; $12:EB21: A9 6B
BRA CODE_12EB13         ; $12:EB23: 80 EE

CODE_12EB25:
TYA                     ; $12:EB25: 98
SEC                     ; $12:EB26: 38
SBC #$10                ; $12:EB27: E9 10
TAY                     ; $12:EB29: A8
LDA #$6C                ; $12:EB2A: A9 6C
STA [$01],y             ; $12:EB2C: 97 01
JSR CODE_12F13A         ; $12:EB2E: 20 3A F1
RTS                     ; $12:EB31: 60

CODE_12EB32:
LDY $E7                 ; $12:EB32: A4 E7
LDA $050F               ; $12:EB34: AD 0F 05
CMP #$0D                ; $12:EB37: C9 0D
BEQ CODE_12EB57         ; $12:EB39: F0 1C
DEY                     ; $12:EB3B: 88
JSR CODE_12F0BF         ; $12:EB3C: 20 BF F0
JSL CODE_159895         ; $12:EB3F: 22 95 98 15
INY                     ; $12:EB43: C8
LDA #$C1                ; $12:EB44: A9 C1
STA [$01],y             ; $12:EB46: 97 01
JSR CODE_12F13A         ; $12:EB48: 20 3A F1
INY                     ; $12:EB4B: C8
JSR CODE_12F0FC         ; $12:EB4C: 20 FC F0
JSL CODE_1598DF         ; $12:EB4F: 22 DF 98 15
DEY                     ; $12:EB53: 88

CODE_12EB54:
JSR CODE_12F914         ; $12:EB54: 20 14 F9

CODE_12EB57:
LDA [$01],y             ; $12:EB57: B7 01
CMP #$40                ; $12:EB59: C9 40
BNE CODE_12EB7E         ; $12:EB5B: D0 21
DEY                     ; $12:EB5D: 88
JSR CODE_12F0BF         ; $12:EB5E: 20 BF F0
JSL CODE_159895         ; $12:EB61: 22 95 98 15
INY                     ; $12:EB65: C8
LDA #$C2                ; $12:EB66: A9 C2
STA [$01],y             ; $12:EB68: 97 01
JSR CODE_12F13A         ; $12:EB6A: 20 3A F1
INY                     ; $12:EB6D: C8
JSR CODE_12F0FC         ; $12:EB6E: 20 FC F0
JSL CODE_1598DF         ; $12:EB71: 22 DF 98 15
DEY                     ; $12:EB75: 88
LDA $EB                 ; $12:EB76: A5 EB
BEQ CODE_12EB54         ; $12:EB78: F0 DA
CPY #$E0                ; $12:EB7A: C0 E0
BCC CODE_12EB54         ; $12:EB7C: 90 D6

CODE_12EB7E:
RTS                     ; $12:EB7E: 60

CODE_12EB7F:
LDY $E7                 ; $12:EB7F: A4 E7
DEY                     ; $12:EB81: 88
JSL CODE_159895         ; $12:EB82: 22 95 98 15
INY                     ; $12:EB86: C8
LDA #$C3                ; $12:EB87: A9 C3

CODE_12EB89:
STA [$01],y             ; $12:EB89: 97 01
JSR CODE_12F13A         ; $12:EB8B: 20 3A F1
INY                     ; $12:EB8E: C8
JSL CODE_1598DF         ; $12:EB8F: 22 DF 98 15
DEY                     ; $12:EB93: 88
TYA                     ; $12:EB94: 98
SEC                     ; $12:EB95: 38
SBC #$10                ; $12:EB96: E9 10
TAY                     ; $12:EB98: A8
CMP #$F0                ; $12:EB99: C9 F0
BCS CODE_12EBA7         ; $12:EB9B: B0 0A
LDA [$01],y             ; $12:EB9D: B7 01
CMP #$40                ; $12:EB9F: C9 40
BNE CODE_12EBA7         ; $12:EBA1: D0 04
LDA #$C2                ; $12:EBA3: A9 C2
BRA CODE_12EB89         ; $12:EBA5: 80 E2

CODE_12EBA7:
RTS                     ; $12:EBA7: 60

CODE_12EBA8:
LDX $050F               ; $12:EBA8: AE 0F 05
LDA.w DATA_11B69F,x     ; $12:EBAB: BD 9F B6
CMP #$5A                ; $12:EBAE: C9 5A
BNE CODE_12EBBC         ; $12:EBB0: D0 0A
LDA.w DATA_11B69F,x     ; $12:EBB2: BD 9F B6
LDY $0242               ; $12:EBB5: AC 42 02
BNE CODE_12EBBC         ; $12:EBB8: D0 02
LDA #$EB                ; $12:EBBA: A9 EB

CODE_12EBBC:
LDY $E7                 ; $12:EBBC: A4 E7
STA [$01],y             ; $12:EBBE: 97 01
JSR CODE_12F13A         ; $12:EBC0: 20 3A F1
RTS                     ; $12:EBC3: 60

CODE_12EBC4:
STA $E7                 ; $12:EBC4: 85 E7

CODE_12EBC6:
LDA $0533               ; $12:EBC6: AD 33 05
CMP #$02                ; $12:EBC9: C9 02
BEQ CODE_12EBD5         ; $12:EBCB: F0 08
CMP #$08                ; $12:EBCD: C9 08
BEQ CODE_12EBD5         ; $12:EBCF: F0 04
CMP #$0B                ; $12:EBD1: C9 0B
BNE CODE_12EBD8         ; $12:EBD3: D0 03

CODE_12EBD5:
BRL CODE_12F174         ; $12:EBD5: 82 9C 05

CODE_12EBD8:
LDA $050F               ; $12:EBD8: AD 0F 05
SEC                     ; $12:EBDB: 38
SBC #$08                ; $12:EBDC: E9 08
STA $08                 ; $12:EBDE: 85 08
LDX $E9                 ; $12:EBE0: A6 E9
JSR CODE_12F8B0         ; $12:EBE2: 20 B0 F8
LDY $E7                 ; $12:EBE5: A4 E7
LDA #$05                ; $12:EBE7: A9 05
STA $07                 ; $12:EBE9: 85 07
LDA [$01],y             ; $12:EBEB: B7 01
CMP #$40                ; $12:EBED: C9 40
BNE CODE_12EC17         ; $12:EBEF: D0 26

CODE_12EBF1:
LDX $08                 ; $12:EBF1: A6 08
LDA $0635               ; $12:EBF3: AD 35 06
CMP #$06                ; $12:EBF6: C9 06
BNE CODE_12EBFF         ; $12:EBF8: D0 05
JSL CODE_15A090         ; $12:EBFA: 22 90 A0 15
RTS                     ; $12:EBFE: 60

CODE_12EBFF:
LDA.w DATA_11B6AE,x     ; $12:EBFF: BD AE B6
STA [$01],y             ; $12:EC02: 97 01
JSR CODE_12F13A         ; $12:EC04: 20 3A F1
JSR CODE_12F8D6         ; $12:EC07: 20 D6 F8
DEC $07                 ; $12:EC0A: C6 07
BPL CODE_12EBF1         ; $12:EC0C: 10 E3
LDA $E7                 ; $12:EC0E: A5 E7
CLC                     ; $12:EC10: 18
ADC #$10                ; $12:EC11: 69 10
CMP #$F0                ; $12:EC13: C9 F0
BCC CODE_12EBC4         ; $12:EC15: 90 AD

CODE_12EC17:
RTS                     ; $12:EC17: 60

CODE_12EC18:
STZ $08                 ; $12:EC18: 64 08
LDA $0635               ; $12:EC1A: AD 35 06
CMP #$03                ; $12:EC1D: C9 03
BNE CODE_12EC28         ; $12:EC1F: D0 07
JSL CODE_159DCA         ; $12:EC21: 22 CA 9D 15
RTS                     ; $12:EC25: 60

CODE_12EC26:
STA $E7                 ; $12:EC26: 85 E7

CODE_12EC28:
LDX $E9                 ; $12:EC28: A6 E9
JSR CODE_12F8B0         ; $12:EC2A: 20 B0 F8
LDY $E7                 ; $12:EC2D: A4 E7
DEY                     ; $12:EC2F: 88
JSR CODE_12F0BF         ; $12:EC30: 20 BF F0
JSL CODE_159895         ; $12:EC33: 22 95 98 15
INY                     ; $12:EC37: C8
LDA $050E               ; $12:EC38: AD 0E 05
STA $07                 ; $12:EC3B: 85 07
LDX $08                 ; $12:EC3D: A6 08

CODE_12EC3F:
LDA.w DATA_11B6B2,x     ; $12:EC3F: BD B2 B6
STA [$01],y             ; $12:EC42: 97 01
JSR CODE_12F13A         ; $12:EC44: 20 3A F1
JSR CODE_12F8D6         ; $12:EC47: 20 D6 F8
DEC $07                 ; $12:EC4A: C6 07
BPL CODE_12EC3F         ; $12:EC4C: 10 F1
JSR CODE_12F0FC         ; $12:EC4E: 20 FC F0
JSL CODE_1598DF         ; $12:EC51: 22 DF 98 15
LDA #$01                ; $12:EC55: A9 01
STA $08                 ; $12:EC57: 85 08
LDA $E7                 ; $12:EC59: A5 E7
CLC                     ; $12:EC5B: 18
ADC #$10                ; $12:EC5C: 69 10
CMP #$F0                ; $12:EC5E: C9 F0
BCC CODE_12EC26         ; $12:EC60: 90 C4
RTS                     ; $12:EC62: 60

CODE_12EC63:
LDY $E7                 ; $12:EC63: A4 E7
STZ $08                 ; $12:EC65: 64 08
STZ $0242               ; $12:EC67: 9C 42 02

CODE_12EC6A:
PHY                     ; $12:EC6A: 5A
TYA                     ; $12:EC6B: 98
CLC                     ; $12:EC6C: 18
ADC #$10                ; $12:EC6D: 69 10
TAY                     ; $12:EC6F: A8
LDA [$01],y             ; $12:EC70: B7 01
CMP #$40                ; $12:EC72: C9 40
BEQ CODE_12EC79         ; $12:EC74: F0 03
INC $0242               ; $12:EC76: EE 42 02

CODE_12EC79:
PLY                     ; $12:EC79: 7A
LDA $0242               ; $12:EC7A: AD 42 02
BEQ CODE_12EC83         ; $12:EC7D: F0 04
LDA #$8A                ; $12:EC7F: A9 8A
BRA CODE_12EC85         ; $12:EC81: 80 02

CODE_12EC83:
LDA #$84                ; $12:EC83: A9 84

CODE_12EC85:
STA [$01],y             ; $12:EC85: 97 01
JSR CODE_12F13A         ; $12:EC87: 20 3A F1
LDX $08                 ; $12:EC8A: A6 08
BEQ CODE_12ECDF         ; $12:EC8C: F0 51
INY                     ; $12:EC8E: C8
LDA $0242               ; $12:EC8F: AD 42 02
BEQ CODE_12EC98         ; $12:EC92: F0 04
LDA #$8B                ; $12:EC94: A9 8B
BRA CODE_12EC9A         ; $12:EC96: 80 02

CODE_12EC98:
LDA #$88                ; $12:EC98: A9 88

CODE_12EC9A:
STA [$01],y             ; $12:EC9A: 97 01
JSR CODE_12F13A         ; $12:EC9C: 20 3A F1
DEX                     ; $12:EC9F: CA
BEQ CODE_12ECCE         ; $12:ECA0: F0 2C

CODE_12ECA2:
INY                     ; $12:ECA2: C8
LDA $0242               ; $12:ECA3: AD 42 02
BEQ CODE_12ECAC         ; $12:ECA6: F0 04
LDA #$8C                ; $12:ECA8: A9 8C
BRA CODE_12ECAE         ; $12:ECAA: 80 02

CODE_12ECAC:
LDA #$85                ; $12:ECAC: A9 85

CODE_12ECAE:
STA [$01],y             ; $12:ECAE: 97 01
JSR CODE_12F13A         ; $12:ECB0: 20 3A F1
DEX                     ; $12:ECB3: CA
BNE CODE_12ECA2         ; $12:ECB4: D0 EC
LDX $08                 ; $12:ECB6: A6 08

CODE_12ECB8:
INY                     ; $12:ECB8: C8
LDA $0242               ; $12:ECB9: AD 42 02
BEQ CODE_12ECC2         ; $12:ECBC: F0 04
LDA #$8D                ; $12:ECBE: A9 8D
BRA CODE_12ECC4         ; $12:ECC0: 80 02

CODE_12ECC2:
LDA #$86                ; $12:ECC2: A9 86

CODE_12ECC4:
STA [$01],y             ; $12:ECC4: 97 01
JSR CODE_12F13A         ; $12:ECC6: 20 3A F1
DEX                     ; $12:ECC9: CA
CPX #$01                ; $12:ECCA: E0 01
BNE CODE_12ECB8         ; $12:ECCC: D0 EA

CODE_12ECCE:
INY                     ; $12:ECCE: C8
LDA $0242               ; $12:ECCF: AD 42 02
BEQ CODE_12ECD8         ; $12:ECD2: F0 04
LDA #$8E                ; $12:ECD4: A9 8E
BRA CODE_12ECDA         ; $12:ECD6: 80 02

CODE_12ECD8:
LDA #$89                ; $12:ECD8: A9 89

CODE_12ECDA:
STA [$01],y             ; $12:ECDA: 97 01
JSR CODE_12F13A         ; $12:ECDC: 20 3A F1

CODE_12ECDF:
INY                     ; $12:ECDF: C8
LDA $0242               ; $12:ECE0: AD 42 02
BEQ CODE_12ECE9         ; $12:ECE3: F0 04
LDA #$8F                ; $12:ECE5: A9 8F
BRA CODE_12ECEB         ; $12:ECE7: 80 02

CODE_12ECE9:
LDA #$87                ; $12:ECE9: A9 87

CODE_12ECEB:
STA [$01],y             ; $12:ECEB: 97 01
JSR CODE_12F13A         ; $12:ECED: 20 3A F1
CMP #$8F                ; $12:ECF0: C9 8F
BNE CODE_12ECF5         ; $12:ECF2: D0 01
RTS                     ; $12:ECF4: 60

CODE_12ECF5:
INC $08                 ; $12:ECF5: E6 08
LDA $E7                 ; $12:ECF7: A5 E7
CLC                     ; $12:ECF9: 18
ADC #$10                ; $12:ECFA: 69 10
STA $E7                 ; $12:ECFC: 85 E7
SEC                     ; $12:ECFE: 38
SBC $08                 ; $12:ECFF: E5 08
TAY                     ; $12:ED01: A8
JMP CODE_12EC6A         ; $12:ED02: 4C 6A EC
LDY $E7                 ; $12:ED05: A4 E7
LDA #$31                ; $12:ED07: A9 31

CODE_12ED09:
STA [$01],y             ; $12:ED09: 97 01
JSR CODE_12F13A         ; $12:ED0B: 20 3A F1
JSR CODE_12F914         ; $12:ED0E: 20 14 F9
LDA [$01],y             ; $12:ED11: B7 01
CMP #$40                ; $12:ED13: C9 40
BEQ CODE_12ED18         ; $12:ED15: F0 01
RTS                     ; $12:ED17: 60

CODE_12ED18:
LDA #$32                ; $12:ED18: A9 32
BRA CODE_12ED09         ; $12:ED1A: 80 ED

CODE_12ED1C:
RTS                     ; $12:ED1C: 60

CODE_12ED1D:
LDY $E7                 ; $12:ED1D: A4 E7
LDA $050F               ; $12:ED1F: AD 0F 05
SEC                     ; $12:ED22: 38
SBC #$0C                ; $12:ED23: E9 0C
TAX                     ; $12:ED25: AA
CMP #$03                ; $12:ED26: C9 03
BEQ CODE_12ED2F         ; $12:ED28: F0 05
LDA $0246               ; $12:ED2A: AD 46 02
BEQ CODE_12ED41         ; $12:ED2D: F0 12

CODE_12ED2F:
PHX                     ; $12:ED2F: DA
TAX                     ; $12:ED30: AA
DEX                     ; $12:ED31: CA
JSR CODE_12F0A5         ; $12:ED32: 20 A5 F0
LDA.w DATA_11B6D7,x     ; $12:ED35: BD D7 B6
STA [$01],y             ; $12:ED38: 97 01
JSR CODE_12F13A         ; $12:ED3A: 20 3A F1
JSR CODE_12F8D6         ; $12:ED3D: 20 D6 F8
PLX                     ; $12:ED40: FA

CODE_12ED41:
LDA.w DATA_11B6C3,x     ; $12:ED41: BD C3 B6
STA [$01],y             ; $12:ED44: 97 01
JSR CODE_12F13A         ; $12:ED46: 20 3A F1
DEC $050E               ; $12:ED49: CE 0E 05
JSR CODE_12F8D6         ; $12:ED4C: 20 D6 F8
LDA.w DATA_11B6C7,x     ; $12:ED4F: BD C7 B6
STA [$01],y             ; $12:ED52: 97 01
JSR CODE_12F13A         ; $12:ED54: 20 3A F1
DEC $050E               ; $12:ED57: CE 0E 05

CODE_12ED5A:
JSR CODE_12F8D6         ; $12:ED5A: 20 D6 F8
LDA.w DATA_11B6CB,x     ; $12:ED5D: BD CB B6
STA [$01],y             ; $12:ED60: 97 01
JSR CODE_12F13A         ; $12:ED62: 20 3A F1
DEC $050E               ; $12:ED65: CE 0E 05
LDA $050E               ; $12:ED68: AD 0E 05
CMP #$01                ; $12:ED6B: C9 01
BNE CODE_12ED5A         ; $12:ED6D: D0 EB
JSR CODE_12F8D6         ; $12:ED6F: 20 D6 F8
LDA.w DATA_11B6CF,x     ; $12:ED72: BD CF B6
STA [$01],y             ; $12:ED75: 97 01
JSR CODE_12F13A         ; $12:ED77: 20 3A F1
DEC $050E               ; $12:ED7A: CE 0E 05
JSR CODE_12F8D6         ; $12:ED7D: 20 D6 F8
LDA.w DATA_11B6D3,x     ; $12:ED80: BD D3 B6
STA [$01],y             ; $12:ED83: 97 01
JSR CODE_12F13A         ; $12:ED85: 20 3A F1
CPX #$03                ; $12:ED88: E0 03
BEQ CODE_12ED91         ; $12:ED8A: F0 05
LDX $0246               ; $12:ED8C: AE 46 02
BEQ CODE_12EDA0         ; $12:ED8F: F0 0F

CODE_12ED91:
DEX                     ; $12:ED91: CA
JSR CODE_12F8D6         ; $12:ED92: 20 D6 F8
LDA.w DATA_11B6DA,x     ; $12:ED95: BD DA B6
STA [$01],y             ; $12:ED98: 97 01
JSR CODE_12F13A         ; $12:ED9A: 20 3A F1
JSR CODE_12F0A5         ; $12:ED9D: 20 A5 F0

CODE_12EDA0:
RTS                     ; $12:EDA0: 60

CODE_12EDA1:
STZ $0242               ; $12:EDA1: 9C 42 02
STZ $0246               ; $12:EDA4: 9C 46 02
LDA $0635               ; $12:EDA7: AD 35 06
CMP #$06                ; $12:EDAA: C9 06
BNE CODE_12EDB1         ; $12:EDAC: D0 03
JMP CODE_12F091         ; $12:EDAE: 4C 91 F0

CODE_12EDB1:
LDA $050E               ; $12:EDB1: AD 0E 05
STA $07                 ; $12:EDB4: 85 07
LDA #$0C                ; $12:EDB6: A9 0C
STA $050F               ; $12:EDB8: 8D 0F 05
JSR CODE_12ED1D         ; $12:EDBB: 20 1D ED
INC $050F               ; $12:EDBE: EE 0F 05
LDA $07                 ; $12:EDC1: A5 07
STA $050E               ; $12:EDC3: 8D 0E 05
LDA $E7                 ; $12:EDC6: A5 E7
CLC                     ; $12:EDC8: 18
ADC #$10                ; $12:EDC9: 69 10
STA $E7                 ; $12:EDCB: 85 E7
LDX $E9                 ; $12:EDCD: A6 E9
JSR CODE_12F8B0         ; $12:EDCF: 20 B0 F8
INC $0246               ; $12:EDD2: EE 46 02
JSR CODE_12ED1D         ; $12:EDD5: 20 1D ED
INC $050F               ; $12:EDD8: EE 0F 05
TYA                     ; $12:EDDB: 98
AND #$F0                ; $12:EDDC: 29 F0
CMP #$B0                ; $12:EDDE: C9 B0
BNE CODE_12EDED         ; $12:EDE0: D0 0B
LDA $07                 ; $12:EDE2: A5 07
CMP #$0D                ; $12:EDE4: C9 0D
BMI CODE_12EE15         ; $12:EDE6: 30 2D
INC $0242               ; $12:EDE8: EE 42 02
BRA CODE_12EE15         ; $12:EDEB: 80 28

CODE_12EDED:
INC $0242               ; $12:EDED: EE 42 02

CODE_12EDF0:
STZ $0247               ; $12:EDF0: 9C 47 02
LDA $07                 ; $12:EDF3: A5 07
STA $050E               ; $12:EDF5: 8D 0E 05
LDA $E7                 ; $12:EDF8: A5 E7
CLC                     ; $12:EDFA: 18
ADC #$10                ; $12:EDFB: 69 10
STA $E7                 ; $12:EDFD: 85 E7
CMP #$B0                ; $12:EDFF: C9 B0
BCC CODE_12EE03         ; $12:EE01: 90 00

CODE_12EE03:
LDX $E9                 ; $12:EE03: A6 E9
JSR CODE_12F8B0         ; $12:EE05: 20 B0 F8
INC $0246               ; $12:EE08: EE 46 02
JSR CODE_12ED1D         ; $12:EE0B: 20 1D ED
TYA                     ; $12:EE0E: 98
AND #$F0                ; $12:EE0F: 29 F0
CMP #$B0                ; $12:EE11: C9 B0
BNE CODE_12EE2A         ; $12:EE13: D0 15

CODE_12EE15:
INC $0247               ; $12:EE15: EE 47 02
JSR CODE_12F8D6         ; $12:EE18: 20 D6 F8
JSR CODE_12F8D6         ; $12:EE1B: 20 D6 F8
LDA #$E1                ; $12:EE1E: A9 E1
STA [$01],y             ; $12:EE20: 97 01
JSR CODE_12F13A         ; $12:EE22: 20 3A F1
INC $050F               ; $12:EE25: EE 0F 05
BRA CODE_12EDF0         ; $12:EE28: 80 C6

CODE_12EE2A:
LDA $050F               ; $12:EE2A: AD 0F 05
CMP #$0E                ; $12:EE2D: C9 0E
BCC CODE_12EDF0         ; $12:EE2F: 90 BF
JSR CODE_12F8D6         ; $12:EE31: 20 D6 F8
JSR CODE_12F8D6         ; $12:EE34: 20 D6 F8
LDA #$11                ; $12:EE37: A9 11
STA [$01],y             ; $12:EE39: 97 01
JSR CODE_12F13A         ; $12:EE3B: 20 3A F1
RTS                     ; $12:EE3E: 60

CODE_12EE3F:
LDY $E7                 ; $12:EE3F: A4 E7
LDA $050F               ; $12:EE41: AD 0F 05
SEC                     ; $12:EE44: 38
SBC #$0A                ; $12:EE45: E9 0A
TAX                     ; $12:EE47: AA
JSR CODE_12EE85         ; $12:EE48: 20 85 EE
LDA.w DATA_11B6DF,x     ; $12:EE4B: BD DF B6
STA [$01],y             ; $12:EE4E: 97 01
JSR CODE_12F13A         ; $12:EE50: 20 3A F1
JSL CODE_159D4B         ; $12:EE53: 22 4B 9D 15
LDX $07                 ; $12:EE57: A6 07
DEC $050E               ; $12:EE59: CE 0E 05
BEQ CODE_12EE72         ; $12:EE5C: F0 14

CODE_12EE5E:
JSR CODE_12F8D6         ; $12:EE5E: 20 D6 F8
LDA.w DATA_11B6E2,x     ; $12:EE61: BD E2 B6
STA [$01],y             ; $12:EE64: 97 01
JSR CODE_12F13A         ; $12:EE66: 20 3A F1
JSL CODE_159D4B         ; $12:EE69: 22 4B 9D 15
DEC $050E               ; $12:EE6D: CE 0E 05
BNE CODE_12EE5E         ; $12:EE70: D0 EC

CODE_12EE72:
JSR CODE_12F8D6         ; $12:EE72: 20 D6 F8
JSR CODE_12EE85         ; $12:EE75: 20 85 EE
LDA.w DATA_11B6E4,x     ; $12:EE78: BD E4 B6
STA [$01],y             ; $12:EE7B: 97 01
JSR CODE_12F13A         ; $12:EE7D: 20 3A F1
JSL CODE_159D4B         ; $12:EE80: 22 4B 9D 15
RTS                     ; $12:EE84: 60

CODE_12EE85:
STX $07                 ; $12:EE85: 86 07
LDA [$01],y             ; $12:EE87: B7 01
CMP #$40                ; $12:EE89: C9 40
BEQ CODE_12EE8F         ; $12:EE8B: F0 02
LDX #$02                ; $12:EE8D: A2 02

CODE_12EE8F:
RTS                     ; $12:EE8F: 60

CODE_12EE90:
STZ $07                 ; $12:EE90: 64 07

CODE_12EE92:
STZ $024A               ; $12:EE92: 9C 4A 02

CODE_12EE95:
LDY $E7                 ; $12:EE95: A4 E7
LDX $E9                 ; $12:EE97: A6 E9
JSR CODE_12F8B0         ; $12:EE99: 20 B0 F8
LDA [$01],y             ; $12:EE9C: B7 01
CMP #$40                ; $12:EE9E: C9 40
BNE CODE_12EED5         ; $12:EEA0: D0 33

CODE_12EEA2:
LDA $024A               ; $12:EEA2: AD 4A 02
CLC                     ; $12:EEA5: 18
ADC #$5C                ; $12:EEA6: 69 5C
STA [$01],y             ; $12:EEA8: 97 01
JSR CODE_12F154         ; $12:EEAA: 20 54 F1
INC $024A               ; $12:EEAD: EE 4A 02
LDA $024A               ; $12:EEB0: AD 4A 02
AND #$0F                ; $12:EEB3: 29 0F
CMP #$0C                ; $12:EEB5: C9 0C
BEQ CODE_12EEBE         ; $12:EEB7: F0 05
JSR CODE_12F8D6         ; $12:EEB9: 20 D6 F8
BRA CODE_12EEA2         ; $12:EEBC: 80 E4

CODE_12EEBE:
LDY $E7                 ; $12:EEBE: A4 E7
JSR CODE_12F914         ; $12:EEC0: 20 14 F9
STY $E7                 ; $12:EEC3: 84 E7
INC $07                 ; $12:EEC5: E6 07
LDA $024A               ; $12:EEC7: AD 4A 02
CMP #$1C                ; $12:EECA: C9 1C
BEQ CODE_12EE92         ; $12:EECC: F0 C4
LDA #$10                ; $12:EECE: A9 10
STA $024A               ; $12:EED0: 8D 4A 02
BRA CODE_12EE95         ; $12:EED3: 80 C0

CODE_12EED5:
LDA $07                 ; $12:EED5: A5 07
CMP #$0F                ; $12:EED7: C9 0F
BEQ CODE_12EF22         ; $12:EED9: F0 47
LDA $0533               ; $12:EEDB: AD 33 05
CMP #$0E                ; $12:EEDE: C9 0E
BNE CODE_12EEEF         ; $12:EEE0: D0 0D
LDA $0534               ; $12:EEE2: AD 34 05
CMP #$01                ; $12:EEE5: C9 01
BNE CODE_12EEEF         ; $12:EEE7: D0 06
LDA $E9                 ; $12:EEE9: A5 E9
CMP #$08                ; $12:EEEB: C9 08
BNE CODE_12EF22         ; $12:EEED: D0 33

CODE_12EEEF:
TYA                     ; $12:EEEF: 98
SEC                     ; $12:EEF0: 38
SBC #$11                ; $12:EEF1: E9 11
TAY                     ; $12:EEF3: A8
LDA #$0E                ; $12:EEF4: A9 0E
CLC                     ; $12:EEF6: 18
ADC #$5C                ; $12:EEF7: 69 5C
STA [$01],y             ; $12:EEF9: 97 01
JSR CODE_12F154         ; $12:EEFB: 20 54 F1
INY                     ; $12:EEFE: C8
LDA #$0F                ; $12:EEFF: A9 0F
CLC                     ; $12:EF01: 18
ADC #$5C                ; $12:EF02: 69 5C
STA [$01],y             ; $12:EF04: 97 01
LDX #$0A                ; $12:EF06: A2 0A

CODE_12EF08:
JSR CODE_12F8D6         ; $12:EF08: 20 D6 F8
DEX                     ; $12:EF0B: CA
BPL CODE_12EF08         ; $12:EF0C: 10 FA
LDA #$0C                ; $12:EF0E: A9 0C
CLC                     ; $12:EF10: 18
ADC #$5C                ; $12:EF11: 69 5C
STA [$01],y             ; $12:EF13: 97 01
JSR CODE_12F8D6         ; $12:EF15: 20 D6 F8
LDA #$0D                ; $12:EF18: A9 0D
CLC                     ; $12:EF1A: 18
ADC #$5C                ; $12:EF1B: 69 5C
STA [$01],y             ; $12:EF1D: 97 01
JSR CODE_12F154         ; $12:EF1F: 20 54 F1

CODE_12EF22:
RTS                     ; $12:EF22: 60

CODE_12EF23:
LDA $E7                 ; $12:EF23: A5 E7
STA $0721               ; $12:EF25: 8D 21 07
LDX #$00                ; $12:EF28: A2 00

CODE_12EF2A:
LDY $E7                 ; $12:EF2A: A4 E7
LDA.w DATA_11B6ED,x     ; $12:EF2C: BD ED B6
STA [$01],y             ; $12:EF2F: 97 01
CMP #$83                ; $12:EF31: C9 83
BEQ CODE_12EF3A         ; $12:EF33: F0 05
JSR CODE_12F154         ; $12:EF35: 20 54 F1
BRA CODE_12EF3D         ; $12:EF38: 80 03

CODE_12EF3A:
JSR CODE_12F13A         ; $12:EF3A: 20 3A F1

CODE_12EF3D:
INX                     ; $12:EF3D: E8
INY                     ; $12:EF3E: C8
LDA.w DATA_11B6ED,x     ; $12:EF3F: BD ED B6
STA [$01],y             ; $12:EF42: 97 01
CMP #$83                ; $12:EF44: C9 83
BEQ CODE_12EF4D         ; $12:EF46: F0 05
JSR CODE_12F154         ; $12:EF48: 20 54 F1
BRA CODE_12EF50         ; $12:EF4B: 80 03

CODE_12EF4D:
JSR CODE_12F13A         ; $12:EF4D: 20 3A F1

CODE_12EF50:
INX                     ; $12:EF50: E8
INY                     ; $12:EF51: C8
LDA.w DATA_11B6ED,x     ; $12:EF52: BD ED B6
STA [$01],y             ; $12:EF55: 97 01
JSR CODE_12F154         ; $12:EF57: 20 54 F1
INX                     ; $12:EF5A: E8
INY                     ; $12:EF5B: C8
LDY $E7                 ; $12:EF5C: A4 E7
TYA                     ; $12:EF5E: 98
CLC                     ; $12:EF5F: 18
ADC #$10                ; $12:EF60: 69 10
STA $E7                 ; $12:EF62: 85 E7
CPX #$1B                ; $12:EF64: E0 1B
BNE CODE_12EF2A         ; $12:EF66: D0 C2
LDA $0721               ; $12:EF68: AD 21 07
STA $E7                 ; $12:EF6B: 85 E7
JSL CODE_15A2A7         ; $12:EF6D: 22 A7 A2 15
RTS                     ; $12:EF71: 60

CODE_12EF72:
LDY $E7                 ; $12:EF72: A4 E7
LDA $050F               ; $12:EF74: AD 0F 05
CMP #$09                ; $12:EF77: C9 09
BNE CODE_12EF83         ; $12:EF79: D0 08
LDA $04B0               ; $12:EF7B: AD B0 04
BEQ CODE_12EF83         ; $12:EF7E: F0 03
INC $050F               ; $12:EF80: EE 0F 05

CODE_12EF83:
LDA $0533               ; $12:EF83: AD 33 05
CMP #$13                ; $12:EF86: C9 13
BNE CODE_12EF9C         ; $12:EF88: D0 12
LDA $0534               ; $12:EF8A: AD 34 05
CMP #$00                ; $12:EF8D: C9 00
BNE CODE_12EF9C         ; $12:EF8F: D0 0B
LDA $050F               ; $12:EF91: AD 0F 05
CMP #$0B                ; $12:EF94: C9 0B
BNE CODE_12EF9C         ; $12:EF96: D0 04
LDX #$05                ; $12:EF98: A2 05
BRA CODE_12EFA3         ; $12:EF9A: 80 07

CODE_12EF9C:
LDA $050F               ; $12:EF9C: AD 0F 05
SEC                     ; $12:EF9F: 38
SBC #$09                ; $12:EFA0: E9 09
TAX                     ; $12:EFA2: AA

CODE_12EFA3:
LDA.w DATA_11B708,x     ; $12:EFA3: BD 08 B7
STA [$01],y             ; $12:EFA6: 97 01
JSR CODE_12F13A         ; $12:EFA8: 20 3A F1
JSR CODE_12F914         ; $12:EFAB: 20 14 F9
LDA.w DATA_11B70E,x     ; $12:EFAE: BD 0E B7
STA [$01],y             ; $12:EFB1: 97 01
JSR CODE_12F13A         ; $12:EFB3: 20 3A F1
LDA $0635               ; $12:EFB6: AD 35 06
CMP #$05                ; $12:EFB9: C9 05
BEQ CODE_12EFC4         ; $12:EFBB: F0 07
CMP #$06                ; $12:EFBD: C9 06
BEQ CODE_12EFC4         ; $12:EFBF: F0 03
JSR CODE_12F928         ; $12:EFC1: 20 28 F9

CODE_12EFC4:
RTS                     ; $12:EFC4: 60

CODE_12EFC5:
LDY $E7                 ; $12:EFC5: A4 E7
LDA $050F               ; $12:EFC7: AD 0F 05
SEC                     ; $12:EFCA: 38
SBC #$0A                ; $12:EFCB: E9 0A
TAX                     ; $12:EFCD: AA
LDA.w DATA_11B714,x     ; $12:EFCE: BD 14 B7
STA [$01],y             ; $12:EFD1: 97 01
JSR CODE_12F13A         ; $12:EFD3: 20 3A F1
DEC $050E               ; $12:EFD6: CE 0E 05
BEQ CODE_12EFEB         ; $12:EFD9: F0 10

CODE_12EFDB:
JSR CODE_12F8D6         ; $12:EFDB: 20 D6 F8
LDA.w DATA_11B719,x     ; $12:EFDE: BD 19 B7
STA [$01],y             ; $12:EFE1: 97 01
JSR CODE_12F13A         ; $12:EFE3: 20 3A F1
DEC $050E               ; $12:EFE6: CE 0E 05
BNE CODE_12EFDB         ; $12:EFE9: D0 F0

CODE_12EFEB:
JSR CODE_12F8D6         ; $12:EFEB: 20 D6 F8
LDA.w DATA_11B71E,x     ; $12:EFEE: BD 1E B7
STA [$01],y             ; $12:EFF1: 97 01
JSR CODE_12F13A         ; $12:EFF3: 20 3A F1
RTS                     ; $12:EFF6: 60

CODE_12EFF7:
LDA $050E               ; $12:EFF7: AD 0E 05
STA $07                 ; $12:EFFA: 85 07
LDA #$0C                ; $12:EFFC: A9 0C
STA $050F               ; $12:EFFE: 8D 0F 05
JSR CODE_12EFC5         ; $12:F001: 20 C5 EF
LDA $E7                 ; $12:F004: A5 E7
CLC                     ; $12:F006: 18
ADC #$10                ; $12:F007: 69 10
STA $E7                 ; $12:F009: 85 E7
TAY                     ; $12:F00B: A8
LDA #$0D                ; $12:F00C: A9 0D
STA $050F               ; $12:F00E: 8D 0F 05
LDA $07                 ; $12:F011: A5 07
STA $050E               ; $12:F013: 8D 0E 05
JSR CODE_12EFC5         ; $12:F016: 20 C5 EF

CODE_12F019:
LDA $E7                 ; $12:F019: A5 E7
CLC                     ; $12:F01B: 18
ADC #$10                ; $12:F01C: 69 10
STA $E7                 ; $12:F01E: 85 E7
TAY                     ; $12:F020: A8
LDA #$0E                ; $12:F021: A9 0E
STA $050F               ; $12:F023: 8D 0F 05
LDA $07                 ; $12:F026: A5 07
STA $050E               ; $12:F028: 8D 0E 05
LDX $E9                 ; $12:F02B: A6 E9
JSR CODE_12F8B0         ; $12:F02D: 20 B0 F8
LDA [$01],y             ; $12:F030: B7 01
CMP #$40                ; $12:F032: C9 40
BNE CODE_12F03F         ; $12:F034: D0 09
JSR CODE_12EFC5         ; $12:F036: 20 C5 EF
LDA $E7                 ; $12:F039: A5 E7
CMP #$E0                ; $12:F03B: C9 E0
BCC CODE_12F019         ; $12:F03D: 90 DA

CODE_12F03F:
RTS                     ; $12:F03F: 60

CODE_12F040:
LDX $0635               ; $12:F040: AE 35 06
LDY $E7                 ; $12:F043: A4 E7
LDA.w DATA_11B723,x     ; $12:F045: BD 23 B7
STA [$01],y             ; $12:F048: 97 01
JSR CODE_12F13A         ; $12:F04A: 20 3A F1

CODE_12F04D:
JSR CODE_12F914         ; $12:F04D: 20 14 F9
LDA [$01],y             ; $12:F050: B7 01
CMP #$40                ; $12:F052: C9 40
BNE CODE_12F069         ; $12:F054: D0 13
LDX $0635               ; $12:F056: AE 35 06
LDA.w DATA_11B72A,x     ; $12:F059: BD 2A B7
STA [$01],y             ; $12:F05C: 97 01
JSR CODE_12F13A         ; $12:F05E: 20 3A F1
CPX #$04                ; $12:F061: E0 04
BNE CODE_12F04D         ; $12:F063: D0 E8
CPY #$E0                ; $12:F065: C0 E0
BCC CODE_12F04D         ; $12:F067: 90 E4

CODE_12F069:
RTS                     ; $12:F069: 60

CODE_12F06A:
DEC $E7                 ; $12:F06A: C6 E7
DEC $E7                 ; $12:F06C: C6 E7
LDX #$00                ; $12:F06E: A2 00

CODE_12F070:
LDY $E7                 ; $12:F070: A4 E7
LDA #$05                ; $12:F072: A9 05
STA $0712               ; $12:F074: 8D 12 07

CODE_12F077:
LDA.w DATA_11D04C,x     ; $12:F077: BD 4C D0
STA [$01],y             ; $12:F07A: 97 01
INX                     ; $12:F07C: E8
CPX #$18                ; $12:F07D: E0 18
BEQ CODE_12F090         ; $12:F07F: F0 0F
INY                     ; $12:F081: C8
DEC $0712               ; $12:F082: CE 12 07
BPL CODE_12F077         ; $12:F085: 10 F0
LDA $E7                 ; $12:F087: A5 E7
CLC                     ; $12:F089: 18
ADC #$10                ; $12:F08A: 69 10
STA $E7                 ; $12:F08C: 85 E7
BRA CODE_12F070         ; $12:F08E: 80 E0

CODE_12F090:
RTS                     ; $12:F090: 60

CODE_12F091:
LDY $E7                 ; $12:F091: A4 E7

CODE_12F093:
LDA #$58                ; $12:F093: A9 58
STA [$01],y             ; $12:F095: 97 01
JSR CODE_12F13A         ; $12:F097: 20 3A F1
TYA                     ; $12:F09A: 98
CLC                     ; $12:F09B: 18
ADC #$0F                ; $12:F09C: 69 0F
TAY                     ; $12:F09E: A8
DEC $050E               ; $12:F09F: CE 0E 05
BNE CODE_12F093         ; $12:F0A2: D0 EF
RTS                     ; $12:F0A4: 60

CODE_12F0A5:
DEY                     ; $12:F0A5: 88
TYA                     ; $12:F0A6: 98
AND #$0F                ; $12:F0A7: 29 0F
CMP #$0F                ; $12:F0A9: C9 0F
BNE CODE_12F0BE         ; $12:F0AB: D0 11
TYA                     ; $12:F0AD: 98
CLC                     ; $12:F0AE: 18
ADC #$10                ; $12:F0AF: 69 10
TAY                     ; $12:F0B1: A8
STX $0B                 ; $12:F0B2: 86 0B
LDX $E9                 ; $12:F0B4: A6 E9
DEX                     ; $12:F0B6: CA
STX $0D                 ; $12:F0B7: 86 0D
JSR CODE_12F8B0         ; $12:F0B9: 20 B0 F8
LDX $0B                 ; $12:F0BC: A6 0B

CODE_12F0BE:
RTS                     ; $12:F0BE: 60

CODE_12F0BF:
PHX                     ; $12:F0BF: DA
STY $02C7               ; $12:F0C0: 8C C7 02
TYA                     ; $12:F0C3: 98
AND #$0F                ; $12:F0C4: 29 0F
CMP #$0F                ; $12:F0C6: C9 0F
BEQ CODE_12F0F7         ; $12:F0C8: F0 2D
TYA                     ; $12:F0CA: 98
BMI CODE_12F0D1         ; $12:F0CB: 30 04
CMP #$10                ; $12:F0CD: C9 10
BMI CODE_12F0F7         ; $12:F0CF: 30 26

CODE_12F0D1:
SEC                     ; $12:F0D1: 38
SBC #$10                ; $12:F0D2: E9 10
TAY                     ; $12:F0D4: A8
LDX #$03                ; $12:F0D5: A2 03
LDA [$01],y             ; $12:F0D7: B7 01
CMP.w DATA_11B731,x     ; $12:F0D9: DD 31 B7
BEQ CODE_12F0F7         ; $12:F0DC: F0 19
LDX #$03                ; $12:F0DE: A2 03
LDY $02C7               ; $12:F0E0: AC C7 02
LDA [$01],y             ; $12:F0E3: B7 01

CODE_12F0E5:
CMP.w DATA_11B731,x     ; $12:F0E5: DD 31 B7
BNE CODE_12F0F4         ; $12:F0E8: D0 0A
LDA.w DATA_11B735,x     ; $12:F0EA: BD 35 B7
STA [$01],y             ; $12:F0ED: 97 01
JSR CODE_12F13A         ; $12:F0EF: 20 3A F1
BRA CODE_12F0F7         ; $12:F0F2: 80 03

CODE_12F0F4:
DEX                     ; $12:F0F4: CA
BPL CODE_12F0E5         ; $12:F0F5: 10 EE

CODE_12F0F7:
LDY $02C7               ; $12:F0F7: AC C7 02
PLX                     ; $12:F0FA: FA
RTS                     ; $12:F0FB: 60

CODE_12F0FC:
PHX                     ; $12:F0FC: DA
STY $02C7               ; $12:F0FD: 8C C7 02
TYA                     ; $12:F100: 98
AND #$0F                ; $12:F101: 29 0F
BEQ CODE_12F135         ; $12:F103: F0 30
TYA                     ; $12:F105: 98
BMI CODE_12F10C         ; $12:F106: 30 04
CMP #$10                ; $12:F108: C9 10
BMI CODE_12F135         ; $12:F10A: 30 29

CODE_12F10C:
SEC                     ; $12:F10C: 38
SBC #$10                ; $12:F10D: E9 10
TAY                     ; $12:F10F: A8
LDX #$03                ; $12:F110: A2 03
LDA [$01],y             ; $12:F112: B7 01

CODE_12F114:
CMP.w DATA_11B739,x     ; $12:F114: DD 39 B7
BEQ CODE_12F135         ; $12:F117: F0 1C
DEX                     ; $12:F119: CA
BPL CODE_12F114         ; $12:F11A: 10 F8
LDX #$03                ; $12:F11C: A2 03
LDY $02C7               ; $12:F11E: AC C7 02
LDA [$01],y             ; $12:F121: B7 01

CODE_12F123:
CMP.w DATA_11B739,x     ; $12:F123: DD 39 B7
BNE CODE_12F132         ; $12:F126: D0 0A
LDA.w DATA_11B73D,x     ; $12:F128: BD 3D B7
STA [$01],y             ; $12:F12B: 97 01
JSR CODE_12F13A         ; $12:F12D: 20 3A F1
BRA CODE_12F135         ; $12:F130: 80 03

CODE_12F132:
DEX                     ; $12:F132: CA
BPL CODE_12F123         ; $12:F133: 10 EE

CODE_12F135:
LDY $02C7               ; $12:F135: AC C7 02
PLX                     ; $12:F138: FA
RTS                     ; $12:F139: 60

CODE_12F13A:
STA $076E               ; $12:F13A: 8D 6E 07
LDA $02                 ; $12:F13D: A5 02
STA $076F               ; $12:F13F: 8D 6F 07
CLC                     ; $12:F142: 18
ADC #$70                ; $12:F143: 69 70
STA $02                 ; $12:F145: 85 02
LDA #$00                ; $12:F147: A9 00
STA [$01],y             ; $12:F149: 97 01
LDA $076F               ; $12:F14B: AD 6F 07
STA $02                 ; $12:F14E: 85 02
LDA $076E               ; $12:F150: AD 6E 07
RTS                     ; $12:F153: 60

CODE_12F154:
STA $076E               ; $12:F154: 8D 6E 07
LDA $02                 ; $12:F157: A5 02
STA $076F               ; $12:F159: 8D 6F 07
CLC                     ; $12:F15C: 18
ADC #$70                ; $12:F15D: 69 70
STA $02                 ; $12:F15F: 85 02
LDA #$01                ; $12:F161: A9 01
STA [$01],y             ; $12:F163: 97 01
LDA $076F               ; $12:F165: AD 6F 07
STA $02                 ; $12:F168: 85 02
LDA $076E               ; $12:F16A: AD 6E 07
RTS                     ; $12:F16D: 60

DATA_12F16E:
db $20,$1C,$1C,$1C,$1C,$21

CODE_12F174:
STZ $08                 ; $12:F174: 64 08
LDX $E9                 ; $12:F176: A6 E9
JSR CODE_12F8B0         ; $12:F178: 20 B0 F8
JSR CODE_12F1C5         ; $12:F17B: 20 C5 F1
LDY $E7                 ; $12:F17E: A4 E7
LDA #$05                ; $12:F180: A9 05
STA $07                 ; $12:F182: 85 07
LDA [$01],y             ; $12:F184: B7 01
CMP #$40                ; $12:F186: C9 40
BEQ CODE_12F194         ; $12:F188: F0 0A
CMP #$1B                ; $12:F18A: C9 1B
BEQ CODE_12F1AE         ; $12:F18C: F0 20
CMP #$1D                ; $12:F18E: C9 1D
BEQ CODE_12F1AE         ; $12:F190: F0 1C
BRA CODE_12F1C4         ; $12:F192: 80 30

CODE_12F194:
LDX $08                 ; $12:F194: A6 08
LDA $0719               ; $12:F196: AD 19 07
BEQ CODE_12F19F         ; $12:F199: F0 04
TAX                     ; $12:F19B: AA
STZ $0719               ; $12:F19C: 9C 19 07

CODE_12F19F:
LDA [$01],y             ; $12:F19F: B7 01
CMP #$1D                ; $12:F1A1: C9 1D
BEQ CODE_12F1AE         ; $12:F1A3: F0 09
LDA.l DATA_12F16E,x     ; $12:F1A5: BF 6E F1 12
STA [$01],y             ; $12:F1A9: 97 01
JSR CODE_12F13A         ; $12:F1AB: 20 3A F1

CODE_12F1AE:
JSR CODE_12F8D6         ; $12:F1AE: 20 D6 F8
INC $08                 ; $12:F1B1: E6 08
DEC $07                 ; $12:F1B3: C6 07
BPL CODE_12F194         ; $12:F1B5: 10 DD
LDA $E7                 ; $12:F1B7: A5 E7
CLC                     ; $12:F1B9: 18
ADC #$10                ; $12:F1BA: 69 10
CMP #$F0                ; $12:F1BC: C9 F0
BCS CODE_12F1C4         ; $12:F1BE: B0 04
STA $E7                 ; $12:F1C0: 85 E7
BRA CODE_12F174         ; $12:F1C2: 80 B0

CODE_12F1C4:
RTS                     ; $12:F1C4: 60

CODE_12F1C5:
STZ $0719               ; $12:F1C5: 9C 19 07
LDY $E7                 ; $12:F1C8: A4 E7
JSR CODE_12F0A5         ; $12:F1CA: 20 A5 F0
LDA [$01],y             ; $12:F1CD: B7 01
CMP #$21                ; $12:F1CF: C9 21
BEQ CODE_12F1DB         ; $12:F1D1: F0 08
CMP #$2B                ; $12:F1D3: C9 2B
BNE CODE_12F1E2         ; $12:F1D5: D0 0B
LDA #$2A                ; $12:F1D7: A9 2A
BRA CODE_12F1DD         ; $12:F1D9: 80 02

CODE_12F1DB:
LDA #$1C                ; $12:F1DB: A9 1C

CODE_12F1DD:
STA [$01],y             ; $12:F1DD: 97 01
INC $0719               ; $12:F1DF: EE 19 07

CODE_12F1E2:
RTS                     ; $12:F1E2: 60

DATA_12F1E3:
db $00,$02,$02,$02,$04,$00,$02,$02
db $02,$04

DATA_12F1ED:
db $1B,$1A,$1D,$1D,$1F,$1E

CODE_12F1F3:
LDA $0768               ; $12:F1F3: AD 68 07
BEQ CODE_12F22F         ; $12:F1F6: F0 37
LDA $01                 ; $12:F1F8: A5 01
STA $0715               ; $12:F1FA: 8D 15 07
LDA $02                 ; $12:F1FD: A5 02
STA $0716               ; $12:F1FF: 8D 16 07
STY $0717               ; $12:F202: 8C 17 07
JSR CODE_12F914         ; $12:F205: 20 14 F9
LDA $076A               ; $12:F208: AD 6A 07
LSR A                   ; $12:F20B: 4A
TAX                     ; $12:F20C: AA
LDA.l DATA_12F1E3,x     ; $12:F20D: BF E3 F1 12
CLC                     ; $12:F211: 18
ADC $050E               ; $12:F212: 6D 0E 05
TAX                     ; $12:F215: AA
LDA.l DATA_12F1ED,x     ; $12:F216: BF ED F1 12
STA [$01],y             ; $12:F21A: 97 01
JSR CODE_12F13A         ; $12:F21C: 20 3A F1
INC $076A               ; $12:F21F: EE 6A 07
LDA $0715               ; $12:F222: AD 15 07
STA $01                 ; $12:F225: 85 01
LDA $0716               ; $12:F227: AD 16 07
STA $02                 ; $12:F22A: 85 02
LDY $0717               ; $12:F22C: AC 17 07

CODE_12F22F:
RTS                     ; $12:F22F: 60

; Tiles with which the level is blanked out. $40 = low byte, $00 = high byte. Blank tile.

DATA_12F230:
dw $4040,$4040,$0000,$0000

; Which area of the Layer 1 tables is affected. $7E2000-$7E8FFF = low bytes, $7E9000-$7EFFFF = high bytes.

DATA_12F238:
dw $2000,$5800,$9000,$C800

CODE_12F240:
LDA $00FE               ; $12:F240: AD FE 00
EOR #$0F                ; $12:F243: 49 0F

; Use brightness as an index.
; But only values #$0F, #$0D, #$0B and #$09 are used as brightness. (And there are XORd with #$0F)
; Resulting value (#$00, #$02, #$04 or #$06) goes in X.
TAX                     ; $12:F245: AA

; A = 16-bit.
REP #$20                ; $12:F246: C2 20
LDA #$3800              ; $12:F248: A9 00 38
STA $00                 ; $12:F24B: 85 00
LDA.l DATA_12F230,x     ; $12:F24D: BF 30 F2 12
STA $02                 ; $12:F251: 85 02
LDA.l DATA_12F238,x     ; $12:F253: BF 38 F2 12
LDY #$7E                ; $12:F257: A0 7E

; Amount of bytes to clear = #$3800.
;
; Map16 Tile to use = $40 (low byte) and $00 (high byte).
;
; Which area in the Layer 1 Map16 table to affect.
; Bank num = $7E.
; DMA all data via the math registers at $211B/C.
JSL CODE_008690         ; $12:F259: 22 90 86 00

; A = 8-bit.
SEP #$20                ; $12:F25D: E2 20

; Return.
RTS                     ; $12:F25F: 60

; A = 8-bit. Unused?
SEP #$20                ; $12:F260: E2 20

; Return. Unused?
RTS                     ; $12:F262: 60

CODE_12F263:
LDA $0776               ; $12:F263: AD 76 07
BNE CODE_12F299         ; $12:F266: D0 31
STZ $0200               ; $12:F268: 9C 00 02
STZ $0206               ; $12:F26B: 9C 06 02
STZ $0202               ; $12:F26E: 9C 02 02
STZ $0208               ; $12:F271: 9C 08 02
STZ $0204               ; $12:F274: 9C 04 02
STZ $020A               ; $12:F277: 9C 0A 02
STZ $0538               ; $12:F27A: 9C 38 05
STZ $026C               ; $12:F27D: 9C 6C 02
STZ $0750               ; $12:F280: 9C 50 07
STZ $D5                 ; $12:F283: 64 D5
STZ $02C1               ; $12:F285: 9C C1 02
STZ $074F               ; $12:F288: 9C 4F 07
STZ $E6                 ; $12:F28B: 64 E6
STZ $CA                 ; $12:F28D: 64 CA
STZ $CB                 ; $12:F28F: 64 CB
STZ $04BF               ; $12:F291: 9C BF 04
STZ $04C1               ; $12:F294: 9C C1 04
STZ $D8                 ; $12:F297: 64 D8

CODE_12F299:
RTS                     ; $12:F299: 60

CODE_12F29A:
REP #$20                ; $12:F29A: C2 20
LDA #$A000              ; $12:F29C: A9 00 A0
STA $00                 ; $12:F29F: 85 00
LDA #$00FF              ; $12:F2A1: A9 FF 00
XBA                     ; $12:F2A4: EB
ORA #$00FF              ; $12:F2A5: 09 FF 00
STA $02                 ; $12:F2A8: 85 02
LDA #$2000              ; $12:F2AA: A9 00 20
LDY #$7F                ; $12:F2AD: A0 7F

; A = 16-bit.
; Amount of bytes to clear = #$A000.
;
; Value to transfer is #$FFFF.
; Why not simply LDA #$FFFF?
;
;
; Starting address of table = $7F2000 (Layer 2 Map16 table)
;
; DMA all data via the math registers at $211B/C.
JSL CODE_008690         ; $12:F2AF: 22 90 86 00

; A = 8-bit.
SEP #$20                ; $12:F2B3: E2 20

; Return.
RTS                     ; $12:F2B5: 60

CODE_12F2B6:
STY $0E                 ; $12:F2B6: 84 0E
STX $0D                 ; $12:F2B8: 86 0D
LDX $0635               ; $12:F2BA: AE 35 06
LDA.l DATA_148000,x     ; $12:F2BD: BF 00 80 14
STA $07                 ; $12:F2C1: 85 07
LDA.l DATA_14800E,x     ; $12:F2C3: BF 0E 80 14
STA $08                 ; $12:F2C7: 85 08
LDA #$14                ; $12:F2C9: A9 14

; Load index to palettes...
; per world.
; [$07] = pal pointer.
STA $09                 ; $12:F2CB: 85 09
BRA CODE_12F2E6         ; $12:F2CD: 80 17

CODE_12F2CF:
STY $0E                 ; $12:F2CF: 84 0E
STX $0D                 ; $12:F2D1: 86 0D
LDX $0635               ; $12:F2D3: AE 35 06
LDA.l DATA_148007,x     ; $12:F2D6: BF 07 80 14
STA $07                 ; $12:F2DA: 85 07
LDA.l DATA_148015,x     ; $12:F2DC: BF 15 80 14
STA $08                 ; $12:F2E0: 85 08
LDA #$14                ; $12:F2E2: A9 14

; Load index to palettes...
; per world.
; [$07] = pal pointer.
STA $09                 ; $12:F2E4: 85 09

CODE_12F2E6:
LDY $0D                 ; $12:F2E6: A4 0D
LDA [$07],y             ; $12:F2E8: B7 07
LDY $0E                 ; $12:F2EA: A4 0E
LDX $0D                 ; $12:F2EC: A6 0D
RTS                     ; $12:F2EE: 60

; Prepare ($D9) pointer to load the Layer 1 room data.

CODE_12F2EF:
JSL CODE_12F5CE         ; $12:F2EF: 22 CE F5 12

; Start off at the very start of the table.
LDY #$00                ; $12:F2F3: A0 00
LDA ($D9),y             ; $12:F2F5: B1 D9
PHA                     ; $12:F2F7: 48
JSR CODE_12F2B6         ; $12:F2F8: 20 B6 F2

; Load first byte.
; Preserve A first.
; Prepare palette pointer.
PLA                     ; $12:F2FB: 68
STA $0E                 ; $12:F2FC: 85 0E
STZ $0F                 ; $12:F2FE: 64 0F
REP #$30                ; $12:F300: C2 30
LDA $0E                 ; $12:F302: A5 0E
PHA                     ; $12:F304: 48
AND #$0038              ; $12:F305: 29 38 00
ASL A                   ; $12:F308: 0A
ASL A                   ; $12:F309: 0A
ASL A                   ; $12:F30A: 0A
ASL A                   ; $12:F30B: 0A
ASL A                   ; $12:F30C: 0A
TAY                     ; $12:F30D: A8
LDA $04EF               ; $12:F30E: AD EF 04
AND #$00FF              ; $12:F311: 29 FF 00
BEQ CODE_12F31A         ; $12:F314: F0 04
LDA [$07],y             ; $12:F316: B7 07
BRA CODE_12F31D         ; $12:F318: 80 03

CODE_12F31A:
LDA #$0000              ; $12:F31A: A9 00 00

CODE_12F31D:
STA $04BC               ; $12:F31D: 8D BC 04
LDX #$0000              ; $12:F320: A2 00 00

CODE_12F323:
LDA [$07],y             ; $12:F323: B7 07
STA $0B00,x             ; $12:F325: 9D 00 0B
INY                     ; $12:F328: C8
INY                     ; $12:F329: C8
INX                     ; $12:F32A: E8
INX                     ; $12:F32B: E8
CPX #$0100              ; $12:F32C: E0 00 01
BNE CODE_12F323         ; $12:F32F: D0 F2
SEP #$30                ; $12:F331: E2 30
LDA $0E                 ; $12:F333: A5 0E
CMP #$30                ; $12:F335: C9 30
BEQ CODE_12F33D         ; $12:F337: F0 04
JSL CODE_13DD50         ; $12:F339: 22 50 DD 13

CODE_12F33D:
JSR CODE_12F2CF         ; $12:F33D: 20 CF F2
REP #$20                ; $12:F340: C2 20
PLA                     ; $12:F342: 68
AND #$0003              ; $12:F343: 29 03 00
ASL A                   ; $12:F346: 0A
ASL A                   ; $12:F347: 0A
ASL A                   ; $12:F348: 0A
ASL A                   ; $12:F349: 0A
ASL A                   ; $12:F34A: 0A
ASL A                   ; $12:F34B: 0A
TAY                     ; $12:F34C: A8
LDX #$00                ; $12:F34D: A2 00

CODE_12F34F:
LDA [$07],y             ; $12:F34F: B7 07
STA $0CC0,x             ; $12:F351: 9D C0 0C
INY                     ; $12:F354: C8
INY                     ; $12:F355: C8
INX                     ; $12:F356: E8
INX                     ; $12:F357: E8
CPX #$40                ; $12:F358: E0 40
BNE CODE_12F34F         ; $12:F35A: D0 F3
SEP #$20                ; $12:F35C: E2 20
JSL CODE_13DC00         ; $12:F35E: 22 00 DC 13
REP #$20                ; $12:F362: C2 20
LDY #$1E                ; $12:F364: A0 1E

CODE_12F366:
LDA $12D0,y             ; $12:F366: B9 D0 12
STA $0C00,y             ; $12:F369: 99 00 0C
DEY                     ; $12:F36C: 88
DEY                     ; $12:F36D: 88
BPL CODE_12F366         ; $12:F36E: 10 F6
LDX #$7E                ; $12:F370: A2 7E

CODE_12F372:
LDA.w DATA_11BB1C,x     ; $12:F372: BD 1C BB
STA $0C20,x             ; $12:F375: 9D 20 0C
DEX                     ; $12:F378: CA
DEX                     ; $12:F379: CA
BPL CODE_12F372         ; $12:F37A: 10 F6
LDA $04BC               ; $12:F37C: AD BC 04
STA $0B00               ; $12:F37F: 8D 00 0B
STA $0B20               ; $12:F382: 8D 20 0B
SEP #$20                ; $12:F385: E2 20
JSL CODE_13E457         ; $12:F387: 22 57 E4 13
JSR CODE_12FF4F         ; $12:F38B: 20 4F FF
LDA #$01                ; $12:F38E: A9 01
STA $02A9               ; $12:F390: 8D A9 02
RTL                     ; $12:F393: 6B

CODE_12F394:
JSR CODE_12FFAC         ; $12:F394: 20 AC FF
LDA $0534               ; $12:F397: AD 34 05
STA $051B               ; $12:F39A: 8D 1B 05
LDA #$30                ; $12:F39D: A9 30
STA $0F                 ; $12:F39F: 85 0F
JSL CODE_13DEE2         ; $12:F3A1: 22 E2 DE 13
LDA $04BF               ; $12:F3A5: AD BF 04
STA $E9                 ; $12:F3A8: 85 E9
LDA $04C1               ; $12:F3AA: AD C1 04
CLC                     ; $12:F3AD: 18
ADC #$08                ; $12:F3AE: 69 08
BCC CODE_12F3B4         ; $12:F3B0: 90 02
INC $E9                 ; $12:F3B2: E6 E9

CODE_12F3B4:
AND #$F0                ; $12:F3B4: 29 F0
PHA                     ; $12:F3B6: 48
SEC                     ; $12:F3B7: 38
SBC $04C1               ; $12:F3B8: ED C1 04
STA $BA                 ; $12:F3BB: 85 BA
PLA                     ; $12:F3BD: 68
LSR A                   ; $12:F3BE: 4A
LSR A                   ; $12:F3BF: 4A
LSR A                   ; $12:F3C0: 4A
LSR A                   ; $12:F3C1: 4A
STA $E5                 ; $12:F3C2: 85 E5
LDA #$00                ; $12:F3C4: A9 00
STA $E6                 ; $12:F3C6: 85 E6
LDA $E9                 ; $12:F3C8: A5 E9
STA $0D                 ; $12:F3CA: 85 0D
JSR CODE_12FF82         ; $12:F3CC: 20 82 FF
JSR CODE_12F8A3         ; $12:F3CF: 20 A3 F8
LDY $E7                 ; $12:F3D2: A4 E7
LDX #$0F                ; $12:F3D4: A2 0F

CODE_12F3D6:
LDA [$01],y             ; $12:F3D6: B7 01
JSR CODE_12F427         ; $12:F3D8: 20 27 F4
STY $0713               ; $12:F3DB: 8C 13 07
TXY                     ; $12:F3DE: 9B
STA [$C4],y             ; $12:F3DF: 97 C4
LDA $02                 ; $12:F3E1: A5 02
STA $0714               ; $12:F3E3: 8D 14 07
CLC                     ; $12:F3E6: 18
ADC #$70                ; $12:F3E7: 69 70
STA $02                 ; $12:F3E9: 85 02
LDY $0713               ; $12:F3EB: AC 13 07
LDA [$01],y             ; $12:F3EE: B7 01
BEQ CODE_12F406         ; $12:F3F0: F0 14
LDA $C5                 ; $12:F3F2: A5 C5
STA $0715               ; $12:F3F4: 8D 15 07
CLC                     ; $12:F3F7: 18
ADC #$70                ; $12:F3F8: 69 70
STA $C5                 ; $12:F3FA: 85 C5
TXY                     ; $12:F3FC: 9B
LDA #$01                ; $12:F3FD: A9 01
STA [$C4],y             ; $12:F3FF: 97 C4
LDA $0715               ; $12:F401: AD 15 07
STA $C5                 ; $12:F404: 85 C5

CODE_12F406:
LDA $0714               ; $12:F406: AD 14 07
STA $02                 ; $12:F409: 85 02
LDY $0713               ; $12:F40B: AC 13 07
TYA                     ; $12:F40E: 98
CLC                     ; $12:F40F: 18
ADC #$10                ; $12:F410: 69 10
TAY                     ; $12:F412: A8
TXA                     ; $12:F413: 8A
CLC                     ; $12:F414: 18
ADC #$10                ; $12:F415: 69 10
TAX                     ; $12:F417: AA
AND #$F0                ; $12:F418: 29 F0
BNE CODE_12F3D6         ; $12:F41A: D0 BA
TYA                     ; $12:F41C: 98
AND #$0F                ; $12:F41D: 29 0F
TAY                     ; $12:F41F: A8
JSR CODE_12F8D6         ; $12:F420: 20 D6 F8
DEX                     ; $12:F423: CA
BPL CODE_12F3D6         ; $12:F424: 10 B0
RTL                     ; $12:F426: 6B

CODE_12F427:
STY $08                 ; $12:F427: 84 08
STX $07                 ; $12:F429: 86 07
CMP #$41                ; $12:F42B: C9 41
BEQ CODE_12F435         ; $12:F42D: F0 06
CMP #$42                ; $12:F42F: C9 42
BEQ CODE_12F435         ; $12:F431: F0 02
BRA CODE_12F44A         ; $12:F433: 80 15

CODE_12F435:
SEC                     ; $12:F435: 38
SBC #$41                ; $12:F436: E9 41
TAY                     ; $12:F438: A8
LDA $04FC,y             ; $12:F439: B9 FC 04
BNE CODE_12F443         ; $12:F43C: D0 05
LDX $07                 ; $12:F43E: A6 07
JSR CODE_12F95F         ; $12:F440: 20 5F F9

CODE_12F443:
LDA #$41                ; $12:F443: A9 41
BRA CODE_12F44A         ; $12:F445: 80 03
LDA.w DATA_11B839,x     ; $12:F447: BD 39 B8

CODE_12F44A:
LDX $07                 ; $12:F44A: A6 07
LDY $08                 ; $12:F44C: A4 08
RTS                     ; $12:F44E: 60

CODE_12F44F:
LDX #$00                ; $12:F44F: A2 00
STX $EB                 ; $12:F451: 86 EB
JSR CODE_12FFAC         ; $12:F453: 20 AC FF
JSR CODE_12FF82         ; $12:F456: 20 82 FF
LDY #$00                ; $12:F459: A0 00
LDA #$40                ; $12:F45B: A9 40

CODE_12F45D:
STA [$C4],y             ; $12:F45D: 97 C4
INY                     ; $12:F45F: C8
BNE CODE_12F45D         ; $12:F460: D0 FB
LDX $0533               ; $12:F462: AE 33 05
LDA.l DATA_11D098,x     ; $12:F465: BF 98 D0 11
CLC                     ; $12:F469: 18
ADC #$04                ; $12:F46A: 69 04
TAX                     ; $12:F46C: AA
LDA.l DATA_15A400,x     ; $12:F46D: BF 00 A4 15
DEC A                   ; $12:F471: 3A
DEC A                   ; $12:F472: 3A
STA $076B               ; $12:F473: 8D 6B 07
JSL CODE_159B05         ; $12:F476: 22 05 9B 15
LDA $0534               ; $12:F47A: AD 34 05
STA $051B               ; $12:F47D: 8D 1B 05
LDA #$04                ; $12:F480: A9 04
STA $0534               ; $12:F482: 8D 34 05
LDA #$0A                ; $12:F485: A9 0A
JSR CODE_12F5E4         ; $12:F487: 20 E4 F5
LDY #$02                ; $12:F48A: A0 02
LDA ($D9),y             ; $12:F48C: B1 D9
AND #$03                ; $12:F48E: 29 03
STA $0544               ; $12:F490: 8D 44 05
LDA ($D9),y             ; $12:F493: B1 D9
LSR A                   ; $12:F495: 4A
LSR A                   ; $12:F496: 4A
AND #$03                ; $12:F497: 29 03
STA $0545               ; $12:F499: 8D 45 05
JSR CODE_12F5E4         ; $12:F49C: 20 E4 F5
LDA #$0A                ; $12:F49F: A9 0A
STA $E9                 ; $12:F4A1: 85 E9
LDA #$00                ; $12:F4A3: A9 00
STA $E6                 ; $12:F4A5: 85 E6
STA $E5                 ; $12:F4A7: 85 E5
LDA #$03                ; $12:F4A9: A9 03
STA $04                 ; $12:F4AB: 85 04
JSR CODE_12F60C         ; $12:F4AD: 20 0C F6
LDA #$01                ; $12:F4B0: A9 01
STA $EB                 ; $12:F4B2: 85 EB
RTL                     ; $12:F4B4: 6B
LDY #$03                ; $12:F4B5: A0 03
LDA ($05),y             ; $12:F4B7: B1 05
AND #$03                ; $12:F4B9: 29 03
STA $0546               ; $12:F4BB: 8D 46 05
CMP $0547               ; $12:F4BE: CD 47 05
BEQ CODE_12F4CF         ; $12:F4C1: F0 0C
LDA $04E1               ; $12:F4C3: AD E1 04
CMP #$08                ; $12:F4C6: C9 08
BCS CODE_12F4CF         ; $12:F4C8: B0 05
LDA #$80                ; $12:F4CA: A9 80
STA $0603               ; $12:F4CC: 8D 03 06

CODE_12F4CF:
RTS                     ; $12:F4CF: 60

CODE_12F4D0:
STZ $02B7               ; $12:F4D0: 9C B7 02

CODE_12F4D3:
JSL CODE_118014         ; $12:F4D3: 22 14 80 11
LDA $FE                 ; $12:F4D7: A5 FE
CMP #$09                ; $12:F4D9: C9 09

; Don't run following routine routine if screen is too dark.
; Brightness < #$09.
BCC CODE_12F4E0         ; $12:F4DB: 90 03

; Clear Layer 1 RAM table.
JSR CODE_12F240         ; $12:F4DD: 20 40 F2

CODE_12F4E0:
JSL CODE_14D1B2         ; $12:F4E0: 22 B2 D1 14
LDA $02B7               ; $12:F4E4: AD B7 02
BEQ CODE_12F4D3         ; $12:F4E7: F0 EA
JSR CODE_12F4ED         ; $12:F4E9: 20 ED F4
RTL                     ; $12:F4EC: 6B

CODE_12F4ED:
LDA $0534               ; $12:F4ED: AD 34 05
PHA                     ; $12:F4F0: 48
LDX $0533               ; $12:F4F1: AE 33 05
LDA.l DATA_11CF30,x     ; $12:F4F4: BF 30 CF 11
STA $02E5               ; $12:F4F8: 8D E5 02
STA $0534               ; $12:F4FB: 8D 34 05

CODE_12F4FE:
LDX $0533               ; $12:F4FE: AE 33 05
LDA.l DATA_11D098,x     ; $12:F501: BF 98 D0 11
CLC                     ; $12:F505: 18
ADC $0534               ; $12:F506: 6D 34 05
TAX                     ; $12:F509: AA
LDA.l DATA_11D0AD,x     ; $12:F50A: BF AD D0 11
STA $D9                 ; $12:F50E: 85 D9
LDA.l DATA_11D17F,x     ; $12:F510: BF 7F D1 11
STA $DA                 ; $12:F514: 85 DA
JSR CODE_12F55B         ; $12:F516: 20 5B F5
JSL CODE_15A123         ; $12:F519: 22 23 A1 15
JSL CODE_159C8C         ; $12:F51D: 22 8C 9C 15
DEC $0534               ; $12:F521: CE 34 05
BPL CODE_12F4FE         ; $12:F524: 10 D8
PLA                     ; $12:F526: 68
STA $0534               ; $12:F527: 8D 34 05
JSL CODE_159C53         ; $12:F52A: 22 53 9C 15
JSL CODE_15A1A3         ; $12:F52E: 22 A3 A1 15
JSR CODE_12F536         ; $12:F532: 20 36 F5
RTS                     ; $12:F535: 60

CODE_12F536:
LDA $0533               ; $12:F536: AD 33 05
BNE CODE_12F55A         ; $12:F539: D0 1F
LDA #$7F                ; $12:F53B: A9 7F
STA $01                 ; $12:F53D: 85 01
LDA #$3E                ; $12:F53F: A9 3E
STA $02                 ; $12:F541: 85 02
LDA #$7E                ; $12:F543: A9 7E
STA $03                 ; $12:F545: 85 03
LDY #$00                ; $12:F547: A0 00
LDA #$CA                ; $12:F549: A9 CA

CODE_12F54B:
STA [$01],y             ; $12:F54B: 97 01
TYA                     ; $12:F54D: 98
CLC                     ; $12:F54E: 18
ADC #$10                ; $12:F54F: 69 10
CMP #$D0                ; $12:F551: C9 D0
BEQ CODE_12F55A         ; $12:F553: F0 05
TAY                     ; $12:F555: A8
LDA #$C7                ; $12:F556: A9 C7
BRA CODE_12F54B         ; $12:F558: 80 F1

CODE_12F55A:
RTS                     ; $12:F55A: 60

CODE_12F55B:
LDY #$03                ; $12:F55B: A0 03
LDA ($D9),y             ; $12:F55D: B1 D9
LSR A                   ; $12:F55F: 4A
AND #$1C                ; $12:F560: 29 1C
STA $0560               ; $12:F562: 8D 60 05
LDY #$00                ; $12:F565: A0 00
LDA ($D9),y             ; $12:F567: B1 D9
ASL A                   ; $12:F569: 0A
LDA #$00                ; $12:F56A: A9 00
ROL A                   ; $12:F56C: 2A

; Bit 7 of byte 1...
; ... of level header of object data...
; Goes into carry.
; All bits are clear.
; Carry into bit 0.
; Store into horizontal level flag. So that depends on bit 7 of the first header byte.
STA $EB                 ; $12:F56D: 85 EB
STZ $E9                 ; $12:F56F: 64 E9
LDY #$02                ; $12:F571: A0 02
LDA ($D9),y             ; $12:F573: B1 D9
TAX                     ; $12:F575: AA
LSR A                   ; $12:F576: 4A
LSR A                   ; $12:F577: 4A
LSR A                   ; $12:F578: 4A
LSR A                   ; $12:F579: 4A
STA $0541               ; $12:F57A: 8D 41 05
TXA                     ; $12:F57D: 8A
AND #$03                ; $12:F57E: 29 03
STA $0544               ; $12:F580: 8D 44 05
TXA                     ; $12:F583: 8A
LSR A                   ; $12:F584: 4A
LSR A                   ; $12:F585: 4A
AND #$03                ; $12:F586: 29 03
STA $0545               ; $12:F588: 8D 45 05
DEY                     ; $12:F58B: 88
LDA ($D9),y             ; $12:F58C: B1 D9
AND #$1F                ; $12:F58E: 29 1F
CMP #$1F                ; $12:F590: C9 1F
BEQ CODE_12F5BD         ; $12:F592: F0 29
STA $0543               ; $12:F594: 8D 43 05
INY                     ; $12:F597: C8
INY                     ; $12:F598: C8
INY                     ; $12:F599: C8
STZ $E5                 ; $12:F59A: 64 E5
STZ $E6                 ; $12:F59C: 64 E6
LDX $0533               ; $12:F59E: AE 33 05
LDA.l DATA_11D098,x     ; $12:F5A1: BF 98 D0 11
CLC                     ; $12:F5A5: 18
ADC $0534               ; $12:F5A6: 6D 34 05
TAX                     ; $12:F5A9: AA
LDA.l DATA_15A400,x     ; $12:F5AA: BF 00 A4 15
BEQ CODE_12F5BA         ; $12:F5AE: F0 0A
CMP #$01                ; $12:F5B0: C9 01
BNE CODE_12F5BD         ; $12:F5B2: D0 09
JSL CODE_159400         ; $12:F5B4: 22 00 94 15
BRA CODE_12F5BD         ; $12:F5B8: 80 03

CODE_12F5BA:
JSR CODE_12F71C         ; $12:F5BA: 20 1C F7

CODE_12F5BD:
STZ $E6                 ; $12:F5BD: 64 E6
LDA #$03                ; $12:F5BF: A9 03
STA $04                 ; $12:F5C1: 85 04
JSR CODE_12F60A         ; $12:F5C3: 20 0A F6
LDA #$22                ; $12:F5C6: A9 22
ORA $10                 ; $12:F5C8: 05 10
STA $0585               ; $12:F5CA: 8D 85 05
RTS                     ; $12:F5CD: 60

CODE_12F5CE:
LDY $0533               ; $12:F5CE: AC 33 05
LDA.w DATA_11D098,y     ; $12:F5D1: B9 98 D0
CLC                     ; $12:F5D4: 18
ADC $0534               ; $12:F5D5: 6D 34 05
TAY                     ; $12:F5D8: A8
LDA.w DATA_11D0AD,y     ; $12:F5D9: B9 AD D0
STA $D9                 ; $12:F5DC: 85 D9
LDA.w DATA_11D17F,y     ; $12:F5DE: B9 7F D1

; Get 16-bit address of Layer 1 room data in 16-bit pointer ($D9)
STA $DA                 ; $12:F5E1: 85 DA

; Return.
RTL                     ; $12:F5E3: 6B

CODE_12F5E4:
LDA #$1A                ; $12:F5E4: A9 1A
STA $DA                 ; $12:F5E6: 85 DA
STZ $D9                 ; $12:F5E8: 64 D9
RTS                     ; $12:F5EA: 60

CODE_12F5EB:
LDX $0533               ; $12:F5EB: AE 33 05
LDA.l DATA_139E00,x     ; $12:F5EE: BF 00 9E 13
CLC                     ; $12:F5F2: 18
ADC $0534               ; $12:F5F3: 6D 34 05
TAX                     ; $12:F5F6: AA
LDA.l DATA_139E16,x     ; $12:F5F7: BF 16 9E 13
STA $05                 ; $12:F5FB: 85 05
LDA.l DATA_139EE8,x     ; $12:F5FD: BF E8 9E 13
STA $06                 ; $12:F601: 85 06
LDA.l DATA_139E15       ; $12:F603: AF 15 9E 13
STA $07                 ; $12:F607: 85 07

CODE_12F609:
RTS                     ; $12:F609: 60

CODE_12F60A:
STZ $E9                 ; $12:F60A: 64 E9

CODE_12F60C:
LDY $04                 ; $12:F60C: A4 04

CODE_12F60E:
INY                     ; $12:F60E: C8
LDA ($D9),y             ; $12:F60F: B1 D9
CMP #$FF                ; $12:F611: C9 FF

; Check if position byte inside the object tables is $FF...
;
; If so, terminate.
BEQ CODE_12F609         ; $12:F613: F0 F4
AND #$0F                ; $12:F615: 29 0F

; Get X position of object.
STA $E5                 ; $12:F617: 85 E5
LDA ($D9),y             ; $12:F619: B1 D9
AND #$F0                ; $12:F61B: 29 F0
CMP #$F0                ; $12:F61D: C9 F0

; Get relative Y position....
;
; ... if $F0 (special object), don't branch.
BNE CODE_12F62C         ; $12:F61F: D0 0B

; Load X position of object...
LDA $E5                 ; $12:F621: A5 E5
STY $0F                 ; $12:F623: 84 0F
JSR CODE_12F68C         ; $12:F625: 20 8C F6
LDY $0F                 ; $12:F628: A4 0F
BRA CODE_12F60E         ; $12:F62A: 80 E2

CODE_12F62C:
JSR CODE_12F678         ; $12:F62C: 20 78 F6
INY                     ; $12:F62F: C8
STY $04                 ; $12:F630: 84 04
JSR CODE_12F8A3         ; $12:F632: 20 A3 F8
LDA ($D9),y             ; $12:F635: B1 D9
LSR A                   ; $12:F637: 4A
LSR A                   ; $12:F638: 4A
LSR A                   ; $12:F639: 4A
LSR A                   ; $12:F63A: 4A
STA $050F               ; $12:F63B: 8D 0F 05
CMP #$03                ; $12:F63E: C9 03
BCS CODE_12F65B         ; $12:F640: B0 19
PHA                     ; $12:F642: 48
LDA ($D9),y             ; $12:F643: B1 D9
AND #$0F                ; $12:F645: 29 0F
STA $050F               ; $12:F647: 8D 0F 05
PLA                     ; $12:F64A: 68
BEQ CODE_12F670         ; $12:F64B: F0 23
CMP #$01                ; $12:F64D: C9 01
BNE CODE_12F656         ; $12:F64F: D0 05
JSR CODE_12E4A4         ; $12:F651: 20 A4 E4
BRA CODE_12F60C         ; $12:F654: 80 B6

CODE_12F656:
JSR CODE_12EBA8         ; $12:F656: 20 A8 EB
BRA CODE_12F60C         ; $12:F659: 80 B1

CODE_12F65B:
LDA ($D9),y             ; $12:F65B: B1 D9
AND #$0F                ; $12:F65D: 29 0F
STA $050E               ; $12:F65F: 8D 0E 05
LDA $050F               ; $12:F662: AD 0F 05
SEC                     ; $12:F665: 38
SBC #$03                ; $12:F666: E9 03
STA $050F               ; $12:F668: 8D 0F 05
JSR CODE_12E460         ; $12:F66B: 20 60 E4
BRA CODE_12F60C         ; $12:F66E: 80 9C

CODE_12F670:
LDA $050F               ; $12:F670: AD 0F 05
JSR CODE_12E47F         ; $12:F673: 20 7F E4
BRA CODE_12F60C         ; $12:F676: 80 94

CODE_12F678:
CLC                     ; $12:F678: 18
ADC $E6                 ; $12:F679: 65 E6
BCC CODE_12F681         ; $12:F67B: 90 04
ADC #$0F                ; $12:F67D: 69 0F
BRA CODE_12F687         ; $12:F67F: 80 06

CODE_12F681:
CMP #$F0                ; $12:F681: C9 F0
BNE CODE_12F689         ; $12:F683: D0 04
LDA #$00                ; $12:F685: A9 00

CODE_12F687:
INC $E9                 ; $12:F687: E6 E9

CODE_12F689:
STA $E6                 ; $12:F689: 85 E6
RTS                     ; $12:F68B: 60

CODE_12F68C:
ASL A                   ; $12:F68C: 0A
TAX                     ; $12:F68D: AA

; Jump to code, dependant on...
; ... X position of special object.
JMP (PNTR_12F691,x)     ; $12:F68E: 7C 91 F6

PNTR_12F691:
dw CODE_12F6C6
dw CODE_12F6C6
dw CODE_12F6B4
dw CODE_12F6B2
dw CODE_12F704
dw CODE_12F6C9
dw CODE_12F6C6

CODE_12F69F:
ASL A                   ; $12:F69F: 0A
TAX                     ; $12:F6A0: AA
JMP (PNTR_12F6A4,x)     ; $12:F6A1: 7C A4 F6

PNTR_12F6A4:
dw CODE_12F6EA
dw CODE_12F6EF
dw CODE_12F6BC
dw CODE_12F6B9
dw CODE_12F709
dw CODE_12F70E
dw CODE_12F70F

CODE_12F6B2:
INC $E9                 ; $12:F6B2: E6 E9

CODE_12F6B4:
INC $E9                 ; $12:F6B4: E6 E9
STZ $E6                 ; $12:F6B6: 64 E6
RTS                     ; $12:F6B8: 60

CODE_12F6B9:
INC $0542               ; $12:F6B9: EE 42 05

CODE_12F6BC:
INC $0542               ; $12:F6BC: EE 42 05
STZ $0E                 ; $12:F6BF: 64 0E
STZ $09                 ; $12:F6C1: 64 09
RTL                     ; $12:F6C3: 6B
INC $0F                 ; $12:F6C4: E6 0F

CODE_12F6C6:
INC $0F                 ; $12:F6C6: E6 0F
RTS                     ; $12:F6C8: 60

CODE_12F6C9:
LDY $0F                 ; $12:F6C9: A4 0F
INY                     ; $12:F6CB: C8
LDA $E9                 ; $12:F6CC: A5 E9
ASL A                   ; $12:F6CE: 0A
TAX                     ; $12:F6CF: AA
LDA ($D9),y             ; $12:F6D0: B1 D9
STA $051F,x             ; $12:F6D2: 9D 1F 05
INY                     ; $12:F6D5: C8
INX                     ; $12:F6D6: E8
LDA ($D9),y             ; $12:F6D7: B1 D9
STA $051F,x             ; $12:F6D9: 9D 1F 05
STY $0F                 ; $12:F6DC: 84 0F
RTS                     ; $12:F6DE: 60

CODE_12F6DF:
LDY $0F                 ; $12:F6DF: A4 0F
INY                     ; $12:F6E1: C8
LDA ($D9),y             ; $12:F6E2: B1 D9
LSR A                   ; $12:F6E4: 4A
LSR A                   ; $12:F6E5: 4A
LSR A                   ; $12:F6E6: 4A
LSR A                   ; $12:F6E7: 4A
LSR A                   ; $12:F6E8: 4A
RTS                     ; $12:F6E9: 60

CODE_12F6EA:
JSR CODE_12F6DF         ; $12:F6EA: 20 DF F6
BRA CODE_12F6F5         ; $12:F6ED: 80 06

CODE_12F6EF:
JSR CODE_12F6DF         ; $12:F6EF: 20 DF F6
CLC                     ; $12:F6F2: 18
ADC #$08                ; $12:F6F3: 69 08

CODE_12F6F5:
STA $0E                 ; $12:F6F5: 85 0E
LDA $EB                 ; $12:F6F7: A5 EB
BNE CODE_12F703         ; $12:F6F9: D0 08
LDA $0E                 ; $12:F6FB: A5 0E
ASL A                   ; $12:F6FD: 0A
ASL A                   ; $12:F6FE: 0A
ASL A                   ; $12:F6FF: 0A
ASL A                   ; $12:F700: 0A
STA $0E                 ; $12:F701: 85 0E

CODE_12F703:
RTL                     ; $12:F703: 6B

CODE_12F704:
STZ $E9                 ; $12:F704: 64 E9
STZ $E6                 ; $12:F706: 64 E6
RTS                     ; $12:F708: 60

CODE_12F709:
STZ $0542               ; $12:F709: 9C 42 05
STZ $0E                 ; $12:F70C: 64 0E

CODE_12F70E:
RTL                     ; $12:F70E: 6B

CODE_12F70F:
LDY $0F                 ; $12:F70F: A4 0F
INY                     ; $12:F711: C8
LDA ($D9),y             ; $12:F712: B1 D9
AND #$0F                ; $12:F714: 29 0F
ASL A                   ; $12:F716: 0A
ASL A                   ; $12:F717: 0A
STA $0560               ; $12:F718: 8D 60 05
RTL                     ; $12:F71B: 6B

CODE_12F71C:
STZ $0542               ; $12:F71C: 9C 42 05
STZ $09                 ; $12:F71F: 64 09

CODE_12F721:
LDA ($D9),y             ; $12:F721: B1 D9
CMP #$FF                ; $12:F723: C9 FF
BNE CODE_12F733         ; $12:F725: D0 0C
LDA $0541               ; $12:F727: AD 41 05
INC A                   ; $12:F72A: 1A
INC A                   ; $12:F72B: 1A
STA $0542               ; $12:F72C: 8D 42 05
STZ $0E                 ; $12:F72F: 64 0E
BRA CODE_12F779         ; $12:F731: 80 46

CODE_12F733:
LDA ($D9),y             ; $12:F733: B1 D9
AND #$F0                ; $12:F735: 29 F0
BEQ CODE_12F75D         ; $12:F737: F0 24
CMP #$F0                ; $12:F739: C9 F0
BNE CODE_12F761         ; $12:F73B: D0 24
STZ $02C8               ; $12:F73D: 9C C8 02
LDA ($D9),y             ; $12:F740: B1 D9
AND #$0F                ; $12:F742: 29 0F
STY $0F                 ; $12:F744: 84 0F
JSL CODE_12F69F         ; $12:F746: 22 9F F6 12
LDY $0F                 ; $12:F74A: A4 0F
LDA ($D9),y             ; $12:F74C: B1 D9
AND #$0F                ; $12:F74E: 29 0F
CMP #$02                ; $12:F750: C9 02
BCC CODE_12F779         ; $12:F752: 90 25
CMP #$06                ; $12:F754: C9 06
BEQ CODE_12F75D         ; $12:F756: F0 05
CMP #$05                ; $12:F758: C9 05
BNE CODE_12F75E         ; $12:F75A: D0 02
INY                     ; $12:F75C: C8

CODE_12F75D:
INY                     ; $12:F75D: C8

CODE_12F75E:
INY                     ; $12:F75E: C8
BRA CODE_12F721         ; $12:F75F: 80 C0

CODE_12F761:
CLC                     ; $12:F761: 18
ADC $09                 ; $12:F762: 65 09
BCC CODE_12F76A         ; $12:F764: 90 04
ADC #$0F                ; $12:F766: 69 0F
BRA CODE_12F770         ; $12:F768: 80 06

CODE_12F76A:
CMP #$F0                ; $12:F76A: C9 F0
BNE CODE_12F773         ; $12:F76C: D0 05
LDA #$00                ; $12:F76E: A9 00

CODE_12F770:
INC $0542               ; $12:F770: EE 42 05

CODE_12F773:
STA $09                 ; $12:F773: 85 09
INY                     ; $12:F775: C8
INY                     ; $12:F776: C8
BRA CODE_12F721         ; $12:F777: 80 A8

CODE_12F779:
JSR CODE_12F8A3         ; $12:F779: 20 A3 F8
JSL CODE_12F7CE         ; $12:F77C: 22 CE F7 12
LDA $EB                 ; $12:F780: A5 EB
BEQ CODE_12F792         ; $12:F782: F0 0E
INC $E5                 ; $12:F784: E6 E5
LDA $E5                 ; $12:F786: A5 E5
CMP #$10                ; $12:F788: C9 10
BNE CODE_12F797         ; $12:F78A: D0 0B
INC $E9                 ; $12:F78C: E6 E9
STZ $E5                 ; $12:F78E: 64 E5
BRA CODE_12F797         ; $12:F790: 80 05

CODE_12F792:
LDA #$10                ; $12:F792: A9 10
JSR CODE_12F678         ; $12:F794: 20 78 F6

CODE_12F797:
LDA $E9                 ; $12:F797: A5 E9
CMP $0542               ; $12:F799: CD 42 05
BNE CODE_12F779         ; $12:F79C: D0 DB
LDA $EB                 ; $12:F79E: A5 EB
BEQ CODE_12F7AA         ; $12:F7A0: F0 08
LDA $E5                 ; $12:F7A2: A5 E5
CMP $0E                 ; $12:F7A4: C5 0E
BCC CODE_12F779         ; $12:F7A6: 90 D1
BCS CODE_12F7B0         ; $12:F7A8: B0 06

CODE_12F7AA:
LDA $E6                 ; $12:F7AA: A5 E6
CMP $0E                 ; $12:F7AC: C5 0E
BCC CODE_12F779         ; $12:F7AE: 90 C9

CODE_12F7B0:
LDA ($D9),y             ; $12:F7B0: B1 D9
CMP #$FF                ; $12:F7B2: C9 FF
BEQ CODE_12F7CD         ; $12:F7B4: F0 17
INY                     ; $12:F7B6: C8
LDA ($D9),y             ; $12:F7B7: B1 D9
AND #$1F                ; $12:F7B9: 29 1F
STA $0543               ; $12:F7BB: 8D 43 05
INY                     ; $12:F7BE: C8
JMP CODE_12F721         ; $12:F7BF: 4C 21 F7
LDA $EB                 ; $12:F7C2: A5 EB
BNE CODE_12F7CA         ; $12:F7C4: D0 04
LDA.w DATA_11B7BD,x     ; $12:F7C6: BD BD B7
RTS                     ; $12:F7C9: 60

CODE_12F7CA:
LDA.w DATA_11B741,x     ; $12:F7CA: BD 41 B7

CODE_12F7CD:
RTS                     ; $12:F7CD: 60

CODE_12F7CE:
STY $04                 ; $12:F7CE: 84 04
LDA $0543               ; $12:F7D0: AD 43 05
ASL A                   ; $12:F7D3: 0A
ASL A                   ; $12:F7D4: 0A
TAX                     ; $12:F7D5: AA
LDY $E7                 ; $12:F7D6: A4 E7

CODE_12F7D8:
LDA $EB                 ; $12:F7D8: A5 EB
BNE CODE_12F7E2         ; $12:F7DA: D0 06
LDA.l DATA_11B7BD,x     ; $12:F7DC: BF BD B7 11
BRA CODE_12F7E6         ; $12:F7E0: 80 04

CODE_12F7E2:
LDA.l DATA_11B741,x     ; $12:F7E2: BF 41 B7 11

CODE_12F7E6:
STA $0717               ; $12:F7E6: 8D 17 07
JSR CODE_12F811         ; $12:F7E9: 20 11 F8
LDA $0717               ; $12:F7EC: AD 17 07
JSR CODE_12F813         ; $12:F7EF: 20 13 F8
LDA $0717               ; $12:F7F2: AD 17 07
JSR CODE_12F815         ; $12:F7F5: 20 15 F8
LDA $0717               ; $12:F7F8: AD 17 07
JSR CODE_12F817         ; $12:F7FB: 20 17 F8
LDA $EB                 ; $12:F7FE: A5 EB
BEQ CODE_12F808         ; $12:F800: F0 06
INX                     ; $12:F802: E8
BCC CODE_12F7D8         ; $12:F803: 90 D3
LDY $04                 ; $12:F805: A4 04
RTL                     ; $12:F807: 6B

CODE_12F808:
INX                     ; $12:F808: E8
TYA                     ; $12:F809: 98
AND #$0F                ; $12:F80A: 29 0F
BNE CODE_12F7D8         ; $12:F80C: D0 CA
LDY $04                 ; $12:F80E: A4 04
RTL                     ; $12:F810: 6B

CODE_12F811:
LSR A                   ; $12:F811: 4A
LSR A                   ; $12:F812: 4A

CODE_12F813:
LSR A                   ; $12:F813: 4A
LSR A                   ; $12:F814: 4A

CODE_12F815:
LSR A                   ; $12:F815: 4A
LSR A                   ; $12:F816: 4A

CODE_12F817:
AND #$03                ; $12:F817: 29 03
STX $0210               ; $12:F819: 8E 10 02
BEQ CODE_12F888         ; $12:F81C: F0 6A
CLC                     ; $12:F81E: 18
ADC $0560               ; $12:F81F: 6D 60 05
TAX                     ; $12:F822: AA
STX $0C                 ; $12:F823: 86 0C
STY $0D                 ; $12:F825: 84 0D
LDX $0635               ; $12:F827: AE 35 06
LDA $EB                 ; $12:F82A: A5 EB
BNE CODE_12F83E         ; $12:F82C: D0 10
LDA.w PNTR_11AB8F,x     ; $12:F82E: BD 8F AB
STA $DC                 ; $12:F831: 85 DC
LDA.w PNTR_11AB9D,x     ; $12:F833: BD 9D AB
STA $DD                 ; $12:F836: 85 DD
LDA #$11                ; $12:F838: A9 11
STA $DE                 ; $12:F83A: 85 DE
BRA CODE_12F84C         ; $12:F83C: 80 0E

CODE_12F83E:
LDA.w PNTR_11AB88,x     ; $12:F83E: BD 88 AB
STA $DC                 ; $12:F841: 85 DC
LDA.w PNTR_11AB96,x     ; $12:F843: BD 96 AB
STA $DD                 ; $12:F846: 85 DD
LDA #$11                ; $12:F848: A9 11
STA $DE                 ; $12:F84A: 85 DE

CODE_12F84C:
LDY $0C                 ; $12:F84C: A4 0C
LDA [$DC],y             ; $12:F84E: B7 DC
PHA                     ; $12:F850: 48
LDA $E9                 ; $12:F851: A5 E9
BNE CODE_12F85E         ; $12:F853: D0 09
LDA $0D                 ; $12:F855: A5 0D
AND #$0F                ; $12:F857: 29 0F
BNE CODE_12F85E         ; $12:F859: D0 03
PLA                     ; $12:F85B: 68
BRA CODE_12F87C         ; $12:F85C: 80 1E

CODE_12F85E:
LDA $0D                 ; $12:F85E: A5 0D
AND #$F0                ; $12:F860: 29 F0
BNE CODE_12F867         ; $12:F862: D0 03
PLA                     ; $12:F864: 68
BRA CODE_12F87F         ; $12:F865: 80 18

CODE_12F867:
PLA                     ; $12:F867: 68
JSR CODE_12FEF0         ; $12:F868: 20 F0 FE
CPY #$00                ; $12:F86B: C0 00
BEQ CODE_12F87C         ; $12:F86D: F0 0D
LDX $02C8               ; $12:F86F: AE C8 02
BNE CODE_12F879         ; $12:F872: D0 05
JSR CODE_12FE30         ; $12:F874: 20 30 FE
BRA CODE_12F87C         ; $12:F877: 80 03

CODE_12F879:
JSR CODE_12FE80         ; $12:F879: 20 80 FE

CODE_12F87C:
JSR CODE_12FF2B         ; $12:F87C: 20 2B FF

CODE_12F87F:
JSR CODE_12FFC2         ; $12:F87F: 20 C2 FF
LDX $0C                 ; $12:F882: A6 0C
LDY $0D                 ; $12:F884: A4 0D
STA [$01],y             ; $12:F886: 97 01

CODE_12F888:
LDX $0210               ; $12:F888: AE 10 02
LDA $EB                 ; $12:F88B: A5 EB
BNE CODE_12F891         ; $12:F88D: D0 02
INY                     ; $12:F88F: C8
RTS                     ; $12:F890: 60

CODE_12F891:
TYA                     ; $12:F891: 98
CLC                     ; $12:F892: 18
ADC #$10                ; $12:F893: 69 10
TAY                     ; $12:F895: A8
AND #$F0                ; $12:F896: 29 F0
BNE CODE_12F8A2         ; $12:F898: D0 08
LDA $02C8               ; $12:F89A: AD C8 02
BNE CODE_12F8A2         ; $12:F89D: D0 03
INC $02C8               ; $12:F89F: EE C8 02

CODE_12F8A2:
RTS                     ; $12:F8A2: 60

CODE_12F8A3:
LDX $E9                 ; $12:F8A3: A6 E9
JSR CODE_12F8B0         ; $12:F8A5: 20 B0 F8
LDA $E6                 ; $12:F8A8: A5 E6
CLC                     ; $12:F8AA: 18
ADC $E5                 ; $12:F8AB: 65 E5
STA $E7                 ; $12:F8AD: 85 E7
RTS                     ; $12:F8AF: 60

CODE_12F8B0:
STY $02F5               ; $12:F8B0: 8C F5 02
LDA $0628               ; $12:F8B3: AD 28 06
DEC A                   ; $12:F8B6: 3A
BEQ CODE_12F8C2         ; $12:F8B7: F0 09
PHX                     ; $12:F8B9: DA
LDX $0534               ; $12:F8BA: AE 34 05
LDA.l DATA_11AB11,x     ; $12:F8BD: BF 11 AB 11
PLX                     ; $12:F8C1: FA

CODE_12F8C2:
CLC                     ; $12:F8C2: 18
ADC.w DATA_11AAFB,x     ; $12:F8C3: 7D FB AA
STA $02                 ; $12:F8C6: 85 02
LDA.w DATA_11AAF0,x     ; $12:F8C8: BD F0 AA
STA $01                 ; $12:F8CB: 85 01
LDA.w DATA_11AB06,x     ; $12:F8CD: BD 06 AB
STA $03                 ; $12:F8D0: 85 03
LDY $02F5               ; $12:F8D2: AC F5 02
RTS                     ; $12:F8D5: 60

CODE_12F8D6:
INY                     ; $12:F8D6: C8
TYA                     ; $12:F8D7: 98
AND #$0F                ; $12:F8D8: 29 0F
BNE CODE_12F913         ; $12:F8DA: D0 37
TYA                     ; $12:F8DC: 98
SEC                     ; $12:F8DD: 38
SBC #$10                ; $12:F8DE: E9 10
TAY                     ; $12:F8E0: A8
STX $0B                 ; $12:F8E1: 86 0B
LDX $E9                 ; $12:F8E3: A6 E9
CPX #$06                ; $12:F8E5: E0 06
BNE CODE_12F90B         ; $12:F8E7: D0 22
LDA $0246               ; $12:F8E9: AD 46 02
CMP #$01                ; $12:F8EC: C9 01
BEQ CODE_12F8F6         ; $12:F8EE: F0 06
CMP #$02                ; $12:F8F0: C9 02
BEQ CODE_12F8FC         ; $12:F8F2: F0 08
BRA CODE_12F90B         ; $12:F8F4: 80 15

CODE_12F8F6:
CPY #$B0                ; $12:F8F6: C0 B0
BNE CODE_12F90B         ; $12:F8F8: D0 11
BRA CODE_12F900         ; $12:F8FA: 80 04

CODE_12F8FC:
CPY #$C0                ; $12:F8FC: C0 C0
BNE CODE_12F90B         ; $12:F8FE: D0 0B

CODE_12F900:
LDA $07                 ; $12:F900: A5 07
CMP #$04                ; $12:F902: C9 04
BNE CODE_12F90B         ; $12:F904: D0 05
LDA $0247               ; $12:F906: AD 47 02
BEQ CODE_12F90C         ; $12:F909: F0 01

CODE_12F90B:
INX                     ; $12:F90B: E8

CODE_12F90C:
STX $0D                 ; $12:F90C: 86 0D
JSR CODE_12F8B0         ; $12:F90E: 20 B0 F8
LDX $0B                 ; $12:F911: A6 0B

CODE_12F913:
RTS                     ; $12:F913: 60

CODE_12F914:
TYA                     ; $12:F914: 98
CLC                     ; $12:F915: 18
ADC #$10                ; $12:F916: 69 10
TAY                     ; $12:F918: A8
CMP #$F0                ; $12:F919: C9 F0
BCC CODE_12F927         ; $12:F91B: 90 0A
LDX $E9                 ; $12:F91D: A6 E9
INX                     ; $12:F91F: E8
JSR CODE_12F8B0         ; $12:F920: 20 B0 F8
TYA                     ; $12:F923: 98
AND #$0F                ; $12:F924: 29 0F
TAY                     ; $12:F926: A8

CODE_12F927:
RTS                     ; $12:F927: 60

CODE_12F928:
LDY $04                 ; $12:F928: A4 04
INY                     ; $12:F92A: C8
LDA ($D9),y             ; $12:F92B: B1 D9
STA $07                 ; $12:F92D: 85 07
INY                     ; $12:F92F: C8
LDA ($D9),y             ; $12:F930: B1 D9
STA $08                 ; $12:F932: 85 08
STY $04                 ; $12:F934: 84 04
LDA $E9                 ; $12:F936: A5 E9
ASL A                   ; $12:F938: 0A
TAY                     ; $12:F939: A8
LDA $07                 ; $12:F93A: A5 07
STA $051F,y             ; $12:F93C: 99 1F 05
INY                     ; $12:F93F: C8
LDA $08                 ; $12:F940: A5 08
STA $051F,y             ; $12:F942: 99 1F 05
RTS                     ; $12:F945: 60
LSR A                   ; $12:F946: 4A
BCS CODE_12F954         ; $12:F947: B0 0B
LDA #$01                ; $12:F949: A9 01
STA $C9                 ; $12:F94B: 85 C9
ASL A                   ; $12:F94D: 0A
STA $C8                 ; $12:F94E: 85 C8
LDA #$00                ; $12:F950: A9 00
BRA CODE_12F95B         ; $12:F952: 80 07

CODE_12F954:
STZ $C9                 ; $12:F954: 64 C9
STZ $C8                 ; $12:F956: 64 C8
LDA.w DATA_119B3C,y     ; $12:F958: B9 3C 9B

CODE_12F95B:
STA $0507               ; $12:F95B: 8D 07 05
RTS                     ; $12:F95E: 60

CODE_12F95F:
TXA                     ; $12:F95F: 8A
PHA                     ; $12:F960: 48
AND #$F0                ; $12:F961: 29 F0
STA $33                 ; $12:F963: 85 33
TXA                     ; $12:F965: 8A
ASL A                   ; $12:F966: 0A
ASL A                   ; $12:F967: 0A
ASL A                   ; $12:F968: 0A
ASL A                   ; $12:F969: 0A
STA $29                 ; $12:F96A: 85 29
LDA #$0A                ; $12:F96C: A9 0A
STA $15                 ; $12:F96E: 85 15
LDX #$00                ; $12:F970: A2 00
STX $12                 ; $12:F972: 86 12
STX $1F                 ; $12:F974: 86 1F
LDA #$3F                ; $12:F976: A9 3F
STA $90                 ; $12:F978: 85 90
LDA #$01                ; $12:F97A: A9 01
STA $51                 ; $12:F97C: 85 51
STY $79                 ; $12:F97E: 84 79
LDA #$00                ; $12:F980: A9 00
STA $86,x               ; $12:F982: 95 86
STA $B1,x               ; $12:F984: 95 B1
STA $A8,x               ; $12:F986: 95 A8
STA $9F,x               ; $12:F988: 95 9F
STA $044A,x             ; $12:F98A: 9D 4A 04
STA $5B,x               ; $12:F98D: 95 5B
STA $0438,x             ; $12:F98F: 9D 38 04
STA $0453,x             ; $12:F992: 9D 53 04
STA $045C,x             ; $12:F995: 9D 5C 04
STA $47,x               ; $12:F998: 95 47
STA $3D,x               ; $12:F99A: 95 3D
LDY $90,x               ; $12:F99C: B4 90
LDA.w DATA_11CC45,y     ; $12:F99E: B9 45 CC
AND #$7F                ; $12:F9A1: 29 7F
STA $65,x               ; $12:F9A3: 95 65
LDA.w DATA_11CC8C,y     ; $12:F9A5: B9 8C CC
STA $046E,x             ; $12:F9A8: 9D 6E 04
LDA.w DATA_11CD1A,y     ; $12:F9AB: B9 1A CD
STA $0489,x             ; $12:F9AE: 9D 89 04
LDA.w DATA_11CCD3,y     ; $12:F9B1: B9 D3 CC
STA $0492,x             ; $12:F9B4: 9D 92 04
LDA #$FF                ; $12:F9B7: A9 FF
STA $0441,x             ; $12:F9B9: 9D 41 04
PLA                     ; $12:F9BC: 68
TAX                     ; $12:F9BD: AA
RTS                     ; $12:F9BE: 60

CODE_12F9BF:
LDA $0635               ; $12:F9BF: AD 35 06
AND #$0F                ; $12:F9C2: 29 0F
STA $0635               ; $12:F9C4: 8D 35 06
ASL A                   ; $12:F9C7: 0A
CLC                     ; $12:F9C8: 18
ADC $0635               ; $12:F9C9: 6D 35 06
TAX                     ; $12:F9CC: AA
LDA.l PNTR_15EF00,x     ; $12:F9CD: BF 00 EF 15
STA $02                 ; $12:F9D1: 85 02
LDA.l PNTR_15EF00+1,x   ; $12:F9D3: BF 01 EF 15
STA $03                 ; $12:F9D7: 85 03
LDA.l PNTR_15EF00+2,x   ; $12:F9D9: BF 02 EF 15

; Get world number * 3 into X index.
;
;
;
;
;
;
; [$02] = Pointer to the miniature level during the 'World x-x' screen.
STA $04                 ; $12:F9DD: 85 04
LDA #$80                ; $12:F9DF: A9 80

; Increase VRAM destination by 1 if written to $2119.
STA $2115               ; $12:F9E1: 8D 15 21

; Accumulator and Index = 16-bit
REP #$30                ; $12:F9E4: C2 30
LDA #$0566              ; $12:F9E6: A9 66 05

; Image on Layer 1 tilemap.
STA $00                 ; $12:F9E9: 85 00

; Start with first byte of image table.
LDY #$0000              ; $12:F9EB: A0 00 00

; Amount of bytes to write per line = #$28.

CODE_12F9EE:
LDX #$0026              ; $12:F9EE: A2 26 00
LDA $00                 ; $12:F9F1: A5 00

; $00 into VRAM destination address.
STA $2116               ; $12:F9F3: 8D 16 21

CODE_12F9F6:
LDA [$02],y             ; $12:F9F6: B7 02
STA $2118               ; $12:F9F8: 8D 18 21
INY                     ; $12:F9FB: C8
INY                     ; $12:F9FC: C8
DEX                     ; $12:F9FD: CA
DEX                     ; $12:F9FE: CA

; Transfer image over to VRAM.
;
;
;
;
;
; If line not completed, loop.
BPL CODE_12F9F6         ; $12:F9FF: 10 F5
LDA $00                 ; $12:FA01: A5 00
ADC #$0020              ; $12:FA03: 69 20 00
STA $00                 ; $12:FA06: 85 00
CMP #$06A6              ; $12:FA08: C9 A6 06

; Go to next line.
;
;
; If result does not go beyond the miniature level's position in the tile map...
; Loop and transfer next line.
BNE CODE_12F9EE         ; $12:FA0B: D0 E1

; Accumulator and Index = 8-bit.
SEP #$30                ; $12:FA0D: E2 30

; Return.
RTL                     ; $12:FA0F: 6B

CODE_12FA10:
LDA $8F                 ; $12:FA10: A5 8F
ASL A                   ; $12:FA12: 0A
ASL A                   ; $12:FA13: 0A
ASL A                   ; $12:FA14: 0A
ASL A                   ; $12:FA15: 0A
ASL A                   ; $12:FA16: 0A
REP #$30                ; $12:FA17: C2 30
AND #$00FF              ; $12:FA19: 29 FF 00
TAY                     ; $12:FA1C: A8
LDX #$0000              ; $12:FA1D: A2 00 00

CODE_12FA20:
PHX                     ; $12:FA20: DA
TYX                     ; $12:FA21: BB
LDA.l DATA_11BA9C,x     ; $12:FA22: BF 9C BA 11
PLX                     ; $12:FA26: FA
STA $12D0,x             ; $12:FA27: 9D D0 12
INY                     ; $12:FA2A: C8
INY                     ; $12:FA2B: C8
INX                     ; $12:FA2C: E8
INX                     ; $12:FA2D: E8
CPX #$0020              ; $12:FA2E: E0 20 00
BCC CODE_12FA20         ; $12:FA31: 90 ED
SEP #$30                ; $12:FA33: E2 30

CODE_12FA35:
LDX $8F                 ; $12:FA35: A6 8F
LDA.l DATA_11BA3C,x     ; $12:FA37: BF 3C BA 11
TAY                     ; $12:FA3B: A8
LDX #$00                ; $12:FA3C: A2 00

CODE_12FA3E:
PHX                     ; $12:FA3E: DA
TYX                     ; $12:FA3F: BB
LDA.l DATA_11BA40,x     ; $12:FA40: BF 40 BA 11
PLX                     ; $12:FA44: FA
STA $0548,x             ; $12:FA45: 9D 48 05
INY                     ; $12:FA48: C8
INX                     ; $12:FA49: E8
CPX #$17                ; $12:FA4A: E0 17
BCC CODE_12FA3E         ; $12:FA4C: 90 F0
PHD                     ; $12:FA4E: 0B
REP #$20                ; $12:FA4F: C2 20
LDX #$2F                ; $12:FA51: A2 2F

CODE_12FA53:
LDA.l DATA_11BCB6,x     ; $12:FA53: BF B6 BC 11
STA $0680,x             ; $12:FA57: 9D 80 06
DEX                     ; $12:FA5A: CA
DEX                     ; $12:FA5B: CA
BPL CODE_12FA53         ; $12:FA5C: 10 F5
LDA #$1100              ; $12:FA5E: A9 00 11
TCD                     ; $12:FA61: 5B
LDX #$9C                ; $12:FA62: A2 9C

CODE_12FA64:
LDA.l DATA_11BCE6,x     ; $12:FA64: BF E6 BC 11
STA $68,x               ; $12:FA68: 95 68
DEX                     ; $12:FA6A: CA
DEX                     ; $12:FA6B: CA
CPX #$FE                ; $12:FA6C: E0 FE
BNE CODE_12FA64         ; $12:FA6E: D0 F4
SEP #$20                ; $12:FA70: E2 20
LDX #$17                ; $12:FA72: A2 17

CODE_12FA74:
LDA.l DATA_11BB9C,x     ; $12:FA74: BF 9C BB 11
STA $50,x               ; $12:FA78: 95 50
DEX                     ; $12:FA7A: CA
BPL CODE_12FA74         ; $12:FA7B: 10 F7
LDX #$4F                ; $12:FA7D: A2 4F

CODE_12FA7F:
LDA.l DATA_11CB9E,x     ; $12:FA7F: BF 9E CB 11
STA $00,x               ; $12:FA83: 95 00
DEX                     ; $12:FA85: CA
BPL CODE_12FA7F         ; $12:FA86: 10 F7
LDA #$12                ; $12:FA88: A9 12
XBA                     ; $12:FA8A: EB
LDA #$00                ; $12:FA8B: A9 00
TCD                     ; $12:FA8D: 5B
LDX #$03                ; $12:FA8E: A2 03

CODE_12FA90:
LDA.l DATA_11BBB4,x     ; $12:FA90: BF B4 BB 11
STA $06,x               ; $12:FA94: 95 06
DEX                     ; $12:FA96: CA
BPL CODE_12FA90         ; $12:FA97: 10 F7
LDX #$49                ; $12:FA99: A2 49

CODE_12FA9B:
LDA.l DATA_11CD61,x     ; $12:FA9B: BF 61 CD 11
STA $0B,x               ; $12:FA9F: 95 0B
DEX                     ; $12:FAA1: CA
BPL CODE_12FA9B         ; $12:FAA2: 10 F7
REP #$20                ; $12:FAA4: C2 20
LDX #$0C                ; $12:FAA6: A2 0C

CODE_12FAA8:
LDA.l DATA_11BBB8,x     ; $12:FAA8: BF B8 BB 11
STA $68,x               ; $12:FAAC: 95 68
DEX                     ; $12:FAAE: CA
BPL CODE_12FAA8         ; $12:FAAF: 10 F7
SEP #$20                ; $12:FAB1: E2 20
PLD                     ; $12:FAB3: 2B
LDX #$6C                ; $12:FAB4: A2 6C

CODE_12FAB6:
LDA.l DATA_11CDD3,x     ; $12:FAB6: BF D3 CD 11
STA $144E,x             ; $12:FABA: 9D 4E 14
DEX                     ; $12:FABD: CA
BPL CODE_12FAB6         ; $12:FABE: 10 F6
RTL                     ; $12:FAC0: 6B

DATA_12FAC1:
db $03,$04,$05,$0D,$0F,$0F,$0F,$01

DATA_12FAC9:
db $01,$03,$03,$04,$03,$05,$06,$03

CODE_12FAD1:
JSR CODE_12F263         ; $12:FAD1: 20 63 F2
LDX $0533               ; $12:FAD4: AE 33 05
LDA.l DATA_11D098,x     ; $12:FAD7: BF 98 D0 11
CLC                     ; $12:FADB: 18
ADC $0534               ; $12:FADC: 6D 34 05
TAX                     ; $12:FADF: AA
LDA.w DATA_11D0AD,x     ; $12:FAE0: BD AD D0
STA $D9                 ; $12:FAE3: 85 D9
LDA.w DATA_11D17F,x     ; $12:FAE5: BD 7F D1

; Get index to object data...
; Per room, per level.
;
;
;
; Forms pointer ($D9).
STA $DA                 ; $12:FAE8: 85 DA
LDY #$00                ; $12:FAEA: A0 00
LDA ($D9),y             ; $12:FAEC: B1 D9
ASL A                   ; $12:FAEE: 0A
LDA #$00                ; $12:FAEF: A9 00
ROL A                   ; $12:FAF1: 2A
STA $EB                 ; $12:FAF2: 85 EB
LDY #$02                ; $12:FAF4: A0 02
LDA ($D9),y             ; $12:FAF6: B1 D9
LSR A                   ; $12:FAF8: 4A
LSR A                   ; $12:FAF9: 4A
LSR A                   ; $12:FAFA: 4A
LSR A                   ; $12:FAFB: 4A
STA $0541               ; $12:FAFC: 8D 41 05
LDA ($D9),y             ; $12:FAFF: B1 D9
AND #$03                ; $12:FB01: 29 03
STA $0544               ; $12:FB03: 8D 44 05
LDA ($D9),y             ; $12:FB06: B1 D9
LSR A                   ; $12:FB08: 4A
LSR A                   ; $12:FB09: 4A
AND #$03                ; $12:FB0A: 29 03
STA $0545               ; $12:FB0C: 8D 45 05
LDX #$08                ; $12:FB0F: A2 08

CODE_12FB11:
LDA $0533               ; $12:FB11: AD 33 05
DEX                     ; $12:FB14: CA
BMI CODE_12FB77         ; $12:FB15: 30 60
CMP.l DATA_12FAC1,x     ; $12:FB17: DF C1 FA 12
BNE CODE_12FB11         ; $12:FB1B: D0 F4
LDA $0534               ; $12:FB1D: AD 34 05
CMP.l DATA_12FAC9,x     ; $12:FB20: DF C9 FA 12
BNE CODE_12FB11         ; $12:FB24: D0 EB
LDY #$03                ; $12:FB26: A0 03
LDA ($D9),y             ; $12:FB28: B1 D9
LSR A                   ; $12:FB2A: 4A
AND #$1C                ; $12:FB2B: 29 1C
STA $0560               ; $12:FB2D: 8D 60 05
DEY                     ; $12:FB30: 88
DEY                     ; $12:FB31: 88
LDA ($D9),y             ; $12:FB32: B1 D9
AND #$1F                ; $12:FB34: 29 1F
CMP #$1F                ; $12:FB36: C9 1F
BEQ CODE_12FB77         ; $12:FB38: F0 3D
STA $0543               ; $12:FB3A: 8D 43 05
STZ $E9                 ; $12:FB3D: 64 E9
STZ $E5                 ; $12:FB3F: 64 E5
STZ $E6                 ; $12:FB41: 64 E6
INY                     ; $12:FB43: C8
INY                     ; $12:FB44: C8
INY                     ; $12:FB45: C8
LDA $EB                 ; $12:FB46: A5 EB
BNE CODE_12FB74         ; $12:FB48: D0 2A
LDX $0533               ; $12:FB4A: AE 33 05
LDA.l DATA_11D098,x     ; $12:FB4D: BF 98 D0 11
CLC                     ; $12:FB51: 18
ADC $0534               ; $12:FB52: 6D 34 05
TAX                     ; $12:FB55: AA
LDA.l DATA_15A400,x     ; $12:FB56: BF 00 A4 15
BEQ CODE_12FB74         ; $12:FB5A: F0 18
CMP #$01                ; $12:FB5C: C9 01
BNE CODE_12FB66         ; $12:FB5E: D0 06
JSL CODE_159400         ; $12:FB60: 22 00 94 15
BRA CODE_12FB77         ; $12:FB64: 80 11

CODE_12FB66:
DEC A                   ; $12:FB66: 3A
DEC A                   ; $12:FB67: 3A
STA $076B               ; $12:FB68: 8D 6B 07
JSR CODE_12FF94         ; $12:FB6B: 20 94 FF
JSL CODE_159B05         ; $12:FB6E: 22 05 9B 15
BRA CODE_12FB77         ; $12:FB72: 80 03

CODE_12FB74:
JSR CODE_12F71C         ; $12:FB74: 20 1C F7

CODE_12FB77:
JSR CODE_12FC41         ; $12:FB77: 20 41 FC
JSR CODE_12FCA1         ; $12:FB7A: 20 A1 FC
STZ $E9                 ; $12:FB7D: 64 E9
STZ $E6                 ; $12:FB7F: 64 E6
STZ $E5                 ; $12:FB81: 64 E5
STZ $04                 ; $12:FB83: 64 04
JSR CODE_12FBA4         ; $12:FB85: 20 A4 FB
RTL                     ; $12:FB88: 6B

DATA_12FB89:
db $09,$0A,$0B,$13,$14,$1C,$1D,$05
db $03,$2B,$2D,$21,$26,$27,$22,$25
db $2A,$23,$24,$28,$50,$00,$01,$29
db $04,$02,$12

CODE_12FBA4:
LDY #$03                ; $12:FBA4: A0 03
STY $04                 ; $12:FBA6: 84 04

CODE_12FBA8:
LDY $04                 ; $12:FBA8: A4 04

CODE_12FBAA:
INY                     ; $12:FBAA: C8
LDA ($D9),y             ; $12:FBAB: B1 D9
CMP #$FF                ; $12:FBAD: C9 FF
BNE CODE_12FBB2         ; $12:FBAF: D0 01
RTS                     ; $12:FBB1: 60

CODE_12FBB2:
LDA ($D9),y             ; $12:FBB2: B1 D9
AND #$0F                ; $12:FBB4: 29 0F
STA $E5                 ; $12:FBB6: 85 E5
LDA ($D9),y             ; $12:FBB8: B1 D9
AND #$F0                ; $12:FBBA: 29 F0
CMP #$F0                ; $12:FBBC: C9 F0
BNE CODE_12FBCB         ; $12:FBBE: D0 0B
LDA $E5                 ; $12:FBC0: A5 E5
STY $0F                 ; $12:FBC2: 84 0F
JSR CODE_12F68C         ; $12:FBC4: 20 8C F6
LDY $0F                 ; $12:FBC7: A4 0F
BRA CODE_12FBAA         ; $12:FBC9: 80 DF

CODE_12FBCB:
JSR CODE_12F678         ; $12:FBCB: 20 78 F6
INY                     ; $12:FBCE: C8
STY $04                 ; $12:FBCF: 84 04
LDX #$1A                ; $12:FBD1: A2 1A
LDA ($D9),y             ; $12:FBD3: B1 D9

CODE_12FBD5:
CMP.l DATA_12FB89,x     ; $12:FBD5: DF 89 FB 12
BEQ CODE_12FBF6         ; $12:FBD9: F0 1B
DEX                     ; $12:FBDB: CA
BPL CODE_12FBD5         ; $12:FBDC: 10 F7
AND #$F0                ; $12:FBDE: 29 F0
CMP #$50                ; $12:FBE0: C9 50
BEQ CODE_12FBF6         ; $12:FBE2: F0 12
CMP #$80                ; $12:FBE4: C9 80
BEQ CODE_12FBF6         ; $12:FBE6: F0 0E
CMP #$30                ; $12:FBE8: C9 30
BEQ CODE_12FBF6         ; $12:FBEA: F0 0A
CMP #$40                ; $12:FBEC: C9 40
BEQ CODE_12FBF6         ; $12:FBEE: F0 06
CMP #$A0                ; $12:FBF0: C9 A0
BEQ CODE_12FBF6         ; $12:FBF2: F0 02
BRA CODE_12FBA8         ; $12:FBF4: 80 B2

CODE_12FBF6:
STY $04                 ; $12:FBF6: 84 04
JSR CODE_12F8A3         ; $12:FBF8: 20 A3 F8
LDA ($D9),y             ; $12:FBFB: B1 D9
LSR A                   ; $12:FBFD: 4A
LSR A                   ; $12:FBFE: 4A
LSR A                   ; $12:FBFF: 4A
LSR A                   ; $12:FC00: 4A
STA $050F               ; $12:FC01: 8D 0F 05
CMP #$03                ; $12:FC04: C9 03
BCS CODE_12FC22         ; $12:FC06: B0 1A
PHA                     ; $12:FC08: 48
LDA ($D9),y             ; $12:FC09: B1 D9
AND #$0F                ; $12:FC0B: 29 0F
STA $050F               ; $12:FC0D: 8D 0F 05
PLA                     ; $12:FC10: 68
BEQ CODE_12FC38         ; $12:FC11: F0 25
CMP #$01                ; $12:FC13: C9 01
BNE CODE_12FC1C         ; $12:FC15: D0 05
JSR CODE_12E4A4         ; $12:FC17: 20 A4 E4
BRA CODE_12FBA8         ; $12:FC1A: 80 8C

CODE_12FC1C:
JSR CODE_12EBA8         ; $12:FC1C: 20 A8 EB
BRL CODE_12FBA8         ; $12:FC1F: 82 86 FF

CODE_12FC22:
LDA ($D9),y             ; $12:FC22: B1 D9
AND #$0F                ; $12:FC24: 29 0F
STA $050E               ; $12:FC26: 8D 0E 05
LDA $050F               ; $12:FC29: AD 0F 05
SEC                     ; $12:FC2C: 38
SBC #$03                ; $12:FC2D: E9 03
STA $050F               ; $12:FC2F: 8D 0F 05
JSR CODE_12E460         ; $12:FC32: 20 60 E4
BRL CODE_12FBA8         ; $12:FC35: 82 70 FF

CODE_12FC38:
LDA $050F               ; $12:FC38: AD 0F 05
JSR CODE_12E47F         ; $12:FC3B: 20 7F E4
BRL CODE_12FBA8         ; $12:FC3E: 82 67 FF

CODE_12FC41:
LDA $0776               ; $12:FC41: AD 76 07
BNE CODE_12FCA0         ; $12:FC44: D0 5A
LDX #$00                ; $12:FC46: A2 00
JSR CODE_12F8B0         ; $12:FC48: 20 B0 F8
LDY $0541               ; $12:FC4B: AC 41 05
REP #$30                ; $12:FC4E: C2 30
LDA #$00F0              ; $12:FC50: A9 F0 00

CODE_12FC53:
DEY                     ; $12:FC53: 88
BMI CODE_12FC5C         ; $12:FC54: 30 06
CLC                     ; $12:FC56: 18
ADC #$00F0              ; $12:FC57: 69 F0 00
BRA CODE_12FC53         ; $12:FC5A: 80 F7

CODE_12FC5C:
DEC A                   ; $12:FC5C: 3A
STA $02C9               ; $12:FC5D: 8D C9 02
TAY                     ; $12:FC60: A8
SEP #$20                ; $12:FC61: E2 20

CODE_12FC63:
LDA [$01],y             ; $12:FC63: B7 01
CMP #$64                ; $12:FC65: C9 64
BNE CODE_12FC9B         ; $12:FC67: D0 32
LDA $01                 ; $12:FC69: A5 01
STA $0713               ; $12:FC6B: 8D 13 07
LDA $02                 ; $12:FC6E: A5 02
STA $0714               ; $12:FC70: 8D 14 07
REP #$20                ; $12:FC73: C2 20
LDA $01                 ; $12:FC75: A5 01
CLC                     ; $12:FC77: 18
ADC #$7000              ; $12:FC78: 69 00 70
STA $01                 ; $12:FC7B: 85 01
SEP #$20                ; $12:FC7D: E2 20
LDA [$01],y             ; $12:FC7F: B7 01
BNE CODE_12FC91         ; $12:FC81: D0 0E
LDA $0713               ; $12:FC83: AD 13 07
STA $01                 ; $12:FC86: 85 01
LDA $0714               ; $12:FC88: AD 14 07
STA $02                 ; $12:FC8B: 85 02
LDA #$40                ; $12:FC8D: A9 40
STA [$01],y             ; $12:FC8F: 97 01

CODE_12FC91:
LDA $0713               ; $12:FC91: AD 13 07
STA $01                 ; $12:FC94: 85 01
LDA $0714               ; $12:FC96: AD 14 07
STA $02                 ; $12:FC99: 85 02

CODE_12FC9B:
DEY                     ; $12:FC9B: 88
BPL CODE_12FC63         ; $12:FC9C: 10 C5
SEP #$10                ; $12:FC9E: E2 10

CODE_12FCA0:
RTS                     ; $12:FCA0: 60

CODE_12FCA1:
LDX #$06                ; $12:FCA1: A2 06
LDA $0533               ; $12:FCA3: AD 33 05

CODE_12FCA6:
CMP.l DATA_11CF44,x     ; $12:FCA6: DF 44 CF 11
BEQ CODE_12FCB1         ; $12:FCAA: F0 05
DEX                     ; $12:FCAC: CA
BPL CODE_12FCA6         ; $12:FCAD: 10 F7
BRA CODE_12FCEA         ; $12:FCAF: 80 39

CODE_12FCB1:
LDA $0534               ; $12:FCB1: AD 34 05
CMP.l DATA_11CF4B,x     ; $12:FCB4: DF 4B CF 11
BNE CODE_12FCEA         ; $12:FCB8: D0 30
LDX #$00                ; $12:FCBA: A2 00
JSR CODE_12F8B0         ; $12:FCBC: 20 B0 F8
REP #$10                ; $12:FCBF: C2 10
LDY $02C9               ; $12:FCC1: AC C9 02

CODE_12FCC4:
LDA [$01],y             ; $12:FCC4: B7 01
CMP #$56                ; $12:FCC6: C9 56
BNE CODE_12FCCE         ; $12:FCC8: D0 04
LDA #$40                ; $12:FCCA: A9 40
STA [$01],y             ; $12:FCCC: 97 01

CODE_12FCCE:
DEY                     ; $12:FCCE: 88
BPL CODE_12FCC4         ; $12:FCCF: 10 F3
SEP #$10                ; $12:FCD1: E2 10
LDA $0635               ; $12:FCD3: AD 35 06
CMP #$06                ; $12:FCD6: C9 06
BNE CODE_12FCEA         ; $12:FCD8: D0 10
LDX #$59                ; $12:FCDA: A2 59
STX $02                 ; $12:FCDC: 86 02
LDX #$98                ; $12:FCDE: A2 98
STX $01                 ; $12:FCE0: 86 01
LDA #$B9                ; $12:FCE2: A9 B9
STA [$01]               ; $12:FCE4: 87 01
LDY #$10                ; $12:FCE6: A0 10
STA [$01],y             ; $12:FCE8: 97 01

CODE_12FCEA:
RTS                     ; $12:FCEA: 60

; 2-1, 5-2, 5-2, 5-2, 6-3, 6-3.

DATA_12FCEB:
db $03,$0D,$0D,$0D,$11,$11

; First room, third room, fourth room, fifth room, fourth room, fifth room.

DATA_12FCF1:
db $00,$02,$03,$04,$03,$04

CODE_12FCF7:
JSR CODE_12F5EB         ; $12:FCF7: 20 EB F5
LDY #$00                ; $12:FCFA: A0 00
LDA [$05],y             ; $12:FCFC: B7 05
AND #$01                ; $12:FCFE: 29 01
STA $02C3               ; $12:FD00: 8D C3 02
LDA [$05],y             ; $12:FD03: B7 05
AND #$02                ; $12:FD05: 29 02
STA $02C4               ; $12:FD07: 8D C4 02
LDA [$05],y             ; $12:FD0A: B7 05
AND #$04                ; $12:FD0C: 29 04
BEQ CODE_12FD15         ; $12:FD0E: F0 05
LDA #$4F                ; $12:FD10: A9 4F

; Check if bit 2 from first byte is set...
;
;
; If so, put up IRQ and the starry BG.
STA $024B               ; $12:FD12: 8D 4B 02

CODE_12FD15:
LDA [$05],y             ; $12:FD15: B7 05
AND #$10                ; $12:FD17: 29 10
LSR A                   ; $12:FD19: 4A
LSR A                   ; $12:FD1A: 4A
LSR A                   ; $12:FD1B: 4A
LSR A                   ; $12:FD1C: 4A

; Get bit 4...
; Divide by 16...
;
;
;
;
; And store result into Layer 3 transparency flag.
STA $0772               ; $12:FD1D: 8D 72 07
LDA [$05],y             ; $12:FD20: B7 05
ROL A                   ; $12:FD22: 2A
ROL A                   ; $12:FD23: 2A
ROL A                   ; $12:FD24: 2A
AND #$03                ; $12:FD25: 29 03

; Enable Layer 3 background if applicable.
STA $074E               ; $12:FD27: 8D 4E 07
LDA [$05],y             ; $12:FD2A: B7 05
AND #$08                ; $12:FD2C: 29 08
STA $077C               ; $12:FD2E: 8D 7C 07
LDA [$05],y             ; $12:FD31: B7 05
AND #$20                ; $12:FD33: 29 20
STA $077F               ; $12:FD35: 8D 7F 07
STZ $E9                 ; $12:FD38: 64 E9
STZ $E6                 ; $12:FD3A: 64 E6
STZ $04                 ; $12:FD3C: 64 04
STZ $0784               ; $12:FD3E: 9C 84 07
LDA $0533               ; $12:FD41: AD 33 05
CMP #$0A                ; $12:FD44: C9 0A
BNE CODE_12FD53         ; $12:FD46: D0 0B
LDA $0534               ; $12:FD48: AD 34 05
BEQ CODE_12FD60         ; $12:FD4B: F0 13
CMP #$04                ; $12:FD4D: C9 04
BEQ CODE_12FD60         ; $12:FD4F: F0 0F

; If not in 4-2...
;
; Branch.
; If in first room of 4-2...
; Branch.
; If in fifth room of 4-2...
; Branch.
; Otherwise, branch further.
BRA CODE_12FD63         ; $12:FD51: 80 10

CODE_12FD53:
CMP #$0B                ; $12:FD53: C9 0B
BNE CODE_12FD63         ; $12:FD55: D0 0C
LDA $0534               ; $12:FD57: AD 34 05
BEQ CODE_12FD60         ; $12:FD5A: F0 04
CMP #$06                ; $12:FD5C: C9 06

; Check if in 4-3...
; If not, branch.
; Check if in first room..
; If so, branch.
; If in second-sixth room...
; Branch further.
BCC CODE_12FD63         ; $12:FD5E: 90 03

CODE_12FD60:
INC $0784               ; $12:FD60: EE 84 07

CODE_12FD63:
STZ $0787               ; $12:FD63: 9C 87 07
LDA $0533               ; $12:FD66: AD 33 05
CMP #$06                ; $12:FD69: C9 06
BNE CODE_12FD77         ; $12:FD6B: D0 0A
LDA $0534               ; $12:FD6D: AD 34 05
CMP #$01                ; $12:FD70: C9 01

; Check if in 3-1.
;
; If not, branch.
; Check if in second room.
;
; If not, branch.
BNE CODE_12FD77         ; $12:FD72: D0 03
INC $0787               ; $12:FD74: EE 87 07

CODE_12FD77:
STZ $0791               ; $12:FD77: 9C 91 07
LDX #$05                ; $12:FD7A: A2 05

CODE_12FD7C:
LDA $0533               ; $12:FD7C: AD 33 05
CMP.l DATA_12FCEB,x     ; $12:FD7F: DF EB FC 12
BNE CODE_12FD92         ; $12:FD83: D0 0D
LDA $0534               ; $12:FD85: AD 34 05
CMP.l DATA_12FCF1,x     ; $12:FD88: DF F1 FC 12
BNE CODE_12FD92         ; $12:FD8C: D0 04
INC $0791               ; $12:FD8E: EE 91 07
RTL                     ; $12:FD91: 6B

CODE_12FD92:
DEX                     ; $12:FD92: CA
BPL CODE_12FD7C         ; $12:FD93: 10 E7
RTL                     ; $12:FD95: 6B

; Clear Layer 2 Map16 tables.

CODE_12FD96:
JSR CODE_12F29A         ; $12:FD96: 20 9A F2
LDA $0534               ; $12:FD99: AD 34 05
PHA                     ; $12:FD9C: 48
LDX $0533               ; $12:FD9D: AE 33 05
LDA.l DATA_11CF30,x     ; $12:FDA0: BF 30 CF 11
STA $0534               ; $12:FDA4: 8D 34 05

CODE_12FDA7:
LDX $0533               ; $12:FDA7: AE 33 05
LDA.l DATA_139E00,x     ; $12:FDAA: BF 00 9E 13
CLC                     ; $12:FDAE: 18
ADC $0534               ; $12:FDAF: 6D 34 05
TAX                     ; $12:FDB2: AA
LDA.l DATA_139E16,x     ; $12:FDB3: BF 16 9E 13
STA $05                 ; $12:FDB7: 85 05
LDA.l DATA_139EE8,x     ; $12:FDB9: BF E8 9E 13
STA $06                 ; $12:FDBD: 85 06
LDA.l DATA_139E15       ; $12:FDBF: AF 15 9E 13
STA $07                 ; $12:FDC3: 85 07
STZ $E9                 ; $12:FDC5: 64 E9
STZ $E6                 ; $12:FDC7: 64 E6
STZ $E5                 ; $12:FDC9: 64 E5
STZ $04                 ; $12:FDCB: 64 04
JSL CODE_139729         ; $12:FDCD: 22 29 97 13
DEC $0534               ; $12:FDD1: CE 34 05
BPL CODE_12FDA7         ; $12:FDD4: 10 D1
PLA                     ; $12:FDD6: 68
STA $0534               ; $12:FDD7: 8D 34 05
RTL                     ; $12:FDDA: 6B

CODE_12FDDB:
LDA $0D                 ; $12:FDDB: A5 0D
BMI CODE_12FDE3         ; $12:FDDD: 30 04
CMP #$10                ; $12:FDDF: C9 10
BMI CODE_12FE2F         ; $12:FDE1: 30 4C

CODE_12FDE3:
REP #$20                ; $12:FDE3: C2 20
LDA $01                 ; $12:FDE5: A5 01
STA $02C9               ; $12:FDE7: 8D C9 02
SEP #$20                ; $12:FDEA: E2 20
LDA $0D                 ; $12:FDEC: A5 0D
AND #$0F                ; $12:FDEE: 29 0F
BNE CODE_12FDFE         ; $12:FDF0: D0 0C
REP #$20                ; $12:FDF2: C2 20
LDA $01                 ; $12:FDF4: A5 01
SEC                     ; $12:FDF6: 38
SBC #$00E0              ; $12:FDF7: E9 E0 00
STA $01                 ; $12:FDFA: 85 01
SEP #$20                ; $12:FDFC: E2 20

CODE_12FDFE:
LDA $0D                 ; $12:FDFE: A5 0D
SEC                     ; $12:FE00: 38
SBC #$11                ; $12:FE01: E9 11
TAY                     ; $12:FE03: A8
LDA [$01],y             ; $12:FE04: B7 01
CMP #$A7                ; $12:FE06: C9 A7
BEQ CODE_12FE0E         ; $12:FE08: F0 04
CMP #$40                ; $12:FE0A: C9 40
BNE CODE_12FE26         ; $12:FE0C: D0 18

CODE_12FE0E:
LDY $0D                 ; $12:FE0E: A4 0D
DEY                     ; $12:FE10: 88
LDX #$03                ; $12:FE11: A2 03
LDA [$01],y             ; $12:FE13: B7 01

CODE_12FE15:
CMP.l DATA_11B735,x     ; $12:FE15: DF 35 B7 11
BEQ CODE_12FE20         ; $12:FE19: F0 05
DEX                     ; $12:FE1B: CA
BPL CODE_12FE15         ; $12:FE1C: 10 F7
BRA CODE_12FE26         ; $12:FE1E: 80 06

CODE_12FE20:
LDA.l DATA_11B731,x     ; $12:FE20: BF 31 B7 11
STA [$01],y             ; $12:FE24: 97 01

CODE_12FE26:
REP #$20                ; $12:FE26: C2 20
LDA $02C9               ; $12:FE28: AD C9 02
STA $01                 ; $12:FE2B: 85 01
SEP #$20                ; $12:FE2D: E2 20

CODE_12FE2F:
RTS                     ; $12:FE2F: 60

CODE_12FE30:
STA $02C5               ; $12:FE30: 8D C5 02
JSR CODE_12FDDB         ; $12:FE33: 20 DB FD
LDA $0D                 ; $12:FE36: A5 0D
BMI CODE_12FE3E         ; $12:FE38: 30 04
CMP #$10                ; $12:FE3A: C9 10
BMI CODE_12FE7C         ; $12:FE3C: 30 3E

CODE_12FE3E:
LDA $02C5               ; $12:FE3E: AD C5 02
CMP #$A7                ; $12:FE41: C9 A7
BEQ CODE_12FE5D         ; $12:FE43: F0 18
LDA $0D                 ; $12:FE45: A5 0D
SEC                     ; $12:FE47: 38
SBC #$10                ; $12:FE48: E9 10
TAY                     ; $12:FE4A: A8
LDX #$03                ; $12:FE4B: A2 03
LDA [$01],y             ; $12:FE4D: B7 01

CODE_12FE4F:
CMP.l DATA_11B73D,x     ; $12:FE4F: DF 3D B7 11
BEQ CODE_12FE7C         ; $12:FE53: F0 27
DEX                     ; $12:FE55: CA
BPL CODE_12FE4F         ; $12:FE56: 10 F7
CMP $02C5               ; $12:FE58: CD C5 02
BEQ CODE_12FE7C         ; $12:FE5B: F0 1F

CODE_12FE5D:
LDY $0D                 ; $12:FE5D: A4 0D
DEY                     ; $12:FE5F: 88
LDA [$01],y             ; $12:FE60: B7 01
CMP #$40                ; $12:FE62: C9 40
BNE CODE_12FE7C         ; $12:FE64: D0 16
LDX #$03                ; $12:FE66: A2 03
LDA $02C5               ; $12:FE68: AD C5 02

CODE_12FE6B:
CMP.l DATA_11B739,x     ; $12:FE6B: DF 39 B7 11
BEQ CODE_12FE76         ; $12:FE6F: F0 05
DEX                     ; $12:FE71: CA
BPL CODE_12FE6B         ; $12:FE72: 10 F7
BRA CODE_12FE7C         ; $12:FE74: 80 06

CODE_12FE76:
LDA.l DATA_11B73D,x     ; $12:FE76: BF 3D B7 11
BRA CODE_12FE7F         ; $12:FE7A: 80 03

CODE_12FE7C:
LDA $02C5               ; $12:FE7C: AD C5 02

CODE_12FE7F:
RTS                     ; $12:FE7F: 60

CODE_12FE80:
STA $02C5               ; $12:FE80: 8D C5 02
REP #$20                ; $12:FE83: C2 20
LDA $01                 ; $12:FE85: A5 01
STA $02C9               ; $12:FE87: 8D C9 02
SEP #$20                ; $12:FE8A: E2 20
LDA $0D                 ; $12:FE8C: A5 0D
AND #$0F                ; $12:FE8E: 29 0F
BNE CODE_12FE9E         ; $12:FE90: D0 0C
REP #$20                ; $12:FE92: C2 20
LDA $01                 ; $12:FE94: A5 01
SEC                     ; $12:FE96: 38
SBC #$00E0              ; $12:FE97: E9 E0 00
STA $01                 ; $12:FE9A: 85 01
SEP #$20                ; $12:FE9C: E2 20

CODE_12FE9E:
LDX #$03                ; $12:FE9E: A2 03
LDY $0D                 ; $12:FEA0: A4 0D
DEY                     ; $12:FEA2: 88
LDA [$01],y             ; $12:FEA3: B7 01

CODE_12FEA5:
CMP.l DATA_11B735,x     ; $12:FEA5: DF 35 B7 11
BEQ CODE_12FEB0         ; $12:FEA9: F0 05
DEX                     ; $12:FEAB: CA
BPL CODE_12FEA5         ; $12:FEAC: 10 F7
BRA CODE_12FEB6         ; $12:FEAE: 80 06

CODE_12FEB0:
LDA.l DATA_11B731,x     ; $12:FEB0: BF 31 B7 11
STA [$01],y             ; $12:FEB4: 97 01

CODE_12FEB6:
REP #$20                ; $12:FEB6: C2 20
LDA $02C9               ; $12:FEB8: AD C9 02
STA $01                 ; $12:FEBB: 85 01
SEP #$20                ; $12:FEBD: E2 20
LDA $02C5               ; $12:FEBF: AD C5 02
CMP #$A7                ; $12:FEC2: C9 A7
BNE CODE_12FECA         ; $12:FEC4: D0 04
LDA #$3A                ; $12:FEC6: A9 3A
BRA CODE_12FEEF         ; $12:FEC8: 80 25

CODE_12FECA:
LDA $0D                 ; $12:FECA: A5 0D
SEC                     ; $12:FECC: 38
SBC #$10                ; $12:FECD: E9 10
TAY                     ; $12:FECF: A8
LDA [$01],y             ; $12:FED0: B7 01
CMP #$40                ; $12:FED2: C9 40
BNE CODE_12FEEC         ; $12:FED4: D0 16
LDX #$03                ; $12:FED6: A2 03
LDA $02C5               ; $12:FED8: AD C5 02

CODE_12FEDB:
CMP.l DATA_11B731,x     ; $12:FEDB: DF 31 B7 11
BEQ CODE_12FEE6         ; $12:FEDF: F0 05
DEX                     ; $12:FEE1: CA
BPL CODE_12FEDB         ; $12:FEE2: 10 F7
BRA CODE_12FEEC         ; $12:FEE4: 80 06

CODE_12FEE6:
LDA.l DATA_11B735,x     ; $12:FEE6: BF 35 B7 11
BRA CODE_12FEEF         ; $12:FEEA: 80 03

CODE_12FEEC:
LDA $02C5               ; $12:FEEC: AD C5 02

CODE_12FEEF:
RTS                     ; $12:FEEF: 60

CODE_12FEF0:
STA $02C5               ; $12:FEF0: 8D C5 02
LDY #$00                ; $12:FEF3: A0 00
LDX #$07                ; $12:FEF5: A2 07

CODE_12FEF7:
LDA $02C5               ; $12:FEF7: AD C5 02
CMP.l DATA_11CF12,x     ; $12:FEFA: DF 12 CF 11
BNE CODE_12FF12         ; $12:FEFE: D0 12
LDA $0533               ; $12:FF00: AD 33 05
CMP.l DATA_11CF1A,x     ; $12:FF03: DF 1A CF 11
BNE CODE_12FF12         ; $12:FF07: D0 09
LDA $0534               ; $12:FF09: AD 34 05
CMP.l DATA_11CF22,x     ; $12:FF0C: DF 22 CF 11
BEQ CODE_12FF16         ; $12:FF10: F0 04

CODE_12FF12:
DEX                     ; $12:FF12: CA
BPL CODE_12FEF7         ; $12:FF13: 10 E2
INY                     ; $12:FF15: C8

CODE_12FF16:
LDA $02C5               ; $12:FF16: AD C5 02
RTS                     ; $12:FF19: 60

CODE_12FF1A:
JSL CODE_15A244         ; $12:FF1A: 22 44 A2 15
JSL CODE_159EB9         ; $12:FF1E: 22 B9 9E 15
JSL CODE_15993E         ; $12:FF22: 22 3E 99 15
JSL CODE_15A1F9         ; $12:FF26: 22 F9 A1 15
RTL                     ; $12:FF2A: 6B

CODE_12FF2B:
LDX $0533               ; $12:FF2B: AE 33 05
CPX #$0B                ; $12:FF2E: E0 0B
BNE CODE_12FF4A         ; $12:FF30: D0 18
LDX $0534               ; $12:FF32: AE 34 05
CPX #$01                ; $12:FF35: E0 01
BNE CODE_12FF4A         ; $12:FF37: D0 11
LDX #$02                ; $12:FF39: A2 02

CODE_12FF3B:
CMP.l DATA_11CF2A,x     ; $12:FF3B: DF 2A CF 11
BNE CODE_12FF47         ; $12:FF3F: D0 06
LDA.l DATA_11CF2D,x     ; $12:FF41: BF 2D CF 11
BRA CODE_12FF4A         ; $12:FF45: 80 03

CODE_12FF47:
DEX                     ; $12:FF47: CA
BPL CODE_12FF3B         ; $12:FF48: 10 F1

CODE_12FF4A:
RTS                     ; $12:FF4A: 60

DATA_12FF4B:
db $03,$0D

DATA_12FF4D:
db $04,$04

CODE_12FF4F:
LDX #$01                ; $12:FF4F: A2 01

CODE_12FF51:
LDA $0533               ; $12:FF51: AD 33 05
CMP.l DATA_12FF4B,x     ; $12:FF54: DF 4B FF 12
BNE CODE_12FF63         ; $12:FF58: D0 09
LDA $0534               ; $12:FF5A: AD 34 05
CMP.l DATA_12FF4D,x     ; $12:FF5D: DF 4D FF 12
BEQ CODE_12FF67         ; $12:FF61: F0 04

CODE_12FF63:
DEX                     ; $12:FF63: CA
BPL CODE_12FF51         ; $12:FF64: 10 EB
RTS                     ; $12:FF66: 60

CODE_12FF67:
REP #$20                ; $12:FF67: C2 20
LDA.l DATA_14BF80       ; $12:FF69: AF 80 BF 14
STA $04BC               ; $12:FF6D: 8D BC 04
LDX #$00                ; $12:FF70: A2 00

CODE_12FF72:
LDA.l DATA_14BF80,x     ; $12:FF72: BF 80 BF 14
STA $0B00,x             ; $12:FF76: 9D 00 0B
INX                     ; $12:FF79: E8
INX                     ; $12:FF7A: E8
CPX #$20                ; $12:FF7B: E0 20
BNE CODE_12FF72         ; $12:FF7D: D0 F3
SEP #$20                ; $12:FF7F: E2 20
RTS                     ; $12:FF81: 60

CODE_12FF82:
LDX #$0A                ; $12:FF82: A2 0A
LDA.w DATA_11AAF0,x     ; $12:FF84: BD F0 AA
STA $C4                 ; $12:FF87: 85 C4
LDA.w DATA_11AAFB,x     ; $12:FF89: BD FB AA
STA $C5                 ; $12:FF8C: 85 C5
LDA.w DATA_11AB06,x     ; $12:FF8E: BD 06 AB
STA $C6                 ; $12:FF91: 85 C6
RTS                     ; $12:FF93: 60

CODE_12FF94:
LDX $0534               ; $12:FF94: AE 34 05
LDA.l DATA_11AB11,x     ; $12:FF97: BF 11 AB 11
CLC                     ; $12:FF9B: 18
ADC.w DATA_11AAFB       ; $12:FF9C: 6D FB AA
STA $C5                 ; $12:FF9F: 85 C5
LDA.w DATA_11AAF0       ; $12:FFA1: AD F0 AA
STA $C4                 ; $12:FFA4: 85 C4
LDA.w DATA_11AB06       ; $12:FFA6: AD 06 AB
STA $C6                 ; $12:FFA9: 85 C6
RTS                     ; $12:FFAB: 60

CODE_12FFAC:
PHB                     ; $12:FFAC: 8B
LDA #$7E                ; $12:FFAD: A9 7E
PHA                     ; $12:FFAF: 48
PLB                     ; $12:FFB0: AB
REP #$20                ; $12:FFB1: C2 20
LDX #$FE                ; $12:FFB3: A2 FE

CODE_12FFB5:
STZ $9960,x             ; $12:FFB5: 9E 60 99
DEX                     ; $12:FFB8: CA
DEX                     ; $12:FFB9: CA
CPX #$FE                ; $12:FFBA: E0 FE
BNE CODE_12FFB5         ; $12:FFBC: D0 F7
SEP #$20                ; $12:FFBE: E2 20
PLB                     ; $12:FFC0: AB
RTS                     ; $12:FFC1: 60

CODE_12FFC2:
CMP #$B0                ; $12:FFC2: C9 B0
BNE CODE_12FFF1         ; $12:FFC4: D0 2B
LDX $0533               ; $12:FFC6: AE 33 05
CPX #$02                ; $12:FFC9: E0 02
BEQ CODE_12FFD9         ; $12:FFCB: F0 0C
CPX #$08                ; $12:FFCD: E0 08
BEQ CODE_12FFD9         ; $12:FFCF: F0 08
CPX #$0B                ; $12:FFD1: E0 0B
BEQ CODE_12FFD9         ; $12:FFD3: F0 04
CPX #$11                ; $12:FFD5: E0 11
BNE CODE_12FFF1         ; $12:FFD7: D0 18

CODE_12FFD9:
LDX $EB                 ; $12:FFD9: A6 EB
BNE CODE_12FFEF         ; $12:FFDB: D0 12
LDA $0D                 ; $12:FFDD: A5 0D
AND #$0F                ; $12:FFDF: 29 0F
BNE CODE_12FFE7         ; $12:FFE1: D0 04
LDA #$3F                ; $12:FFE3: A9 3F
BRA CODE_12FFF1         ; $12:FFE5: 80 0A

CODE_12FFE7:
CMP #$0F                ; $12:FFE7: C9 0F
BNE CODE_12FFEF         ; $12:FFE9: D0 04
LDA #$76                ; $12:FFEB: A9 76
BRA CODE_12FFF1         ; $12:FFED: 80 02

CODE_12FFEF:
LDA #$3E                ; $12:FFEF: A9 3E

CODE_12FFF1:
RTS                     ; $12:FFF1: 60

