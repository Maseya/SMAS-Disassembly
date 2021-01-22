; Super Mario Bros. 3

CODE_278000:
LDA $0425               ; $27:8000: AD 25 04
BEQ CODE_278037         ; $27:8003: F0 32
LDA $052B               ; $27:8005: AD 2B 05
LDY $052A               ; $27:8008: AC 2A 05
JSL CODE_209FC1         ; $27:800B: 22 C1 9F 20
STA $052B               ; $27:800F: 8D 2B 05
STY $052A               ; $27:8012: 8C 2A 05
LDA.w DATA_21823C,y     ; $27:8015: B9 3C 82
STA $2E                 ; $27:8018: 85 2E
LDA.w DATA_21824C,y     ; $27:801A: B9 4C 82
STA $2F                 ; $27:801D: 85 2F
LDA $052B               ; $27:801F: AD 2B 05
AND #$F0                ; $27:8022: 29 F0
STA $05                 ; $27:8024: 85 05
LDA $0529               ; $27:8026: AD 29 05
LSR A                   ; $27:8029: 4A
LSR A                   ; $27:802A: 4A
LSR A                   ; $27:802B: 4A
LSR A                   ; $27:802C: 4A
ORA $05                 ; $27:802D: 05 05
STA $04                 ; $27:802F: 85 04
LDA #$00                ; $27:8031: A9 00
STA $06                 ; $27:8033: 85 06
BEQ CODE_278073         ; $27:8035: F0 3C

CODE_278037:
LDA $0528               ; $27:8037: AD 28 05
ASL A                   ; $27:803A: 0A
TAX                     ; $27:803B: AA
LDA.w DATA_218200,x     ; $27:803C: BD 00 82
STA $2E                 ; $27:803F: 85 2E
LDA.w DATA_218200+1,x   ; $27:8041: BD 01 82
STA $2F                 ; $27:8044: 85 2F
STZ $06                 ; $27:8046: 64 06
LDA $052A               ; $27:8048: AD 2A 05
BEQ CODE_27804F         ; $27:804B: F0 02
INC $2F                 ; $27:804D: E6 2F

CODE_27804F:
LDA $052B               ; $27:804F: AD 2B 05
AND #$F0                ; $27:8052: 29 F0
STA $05                 ; $27:8054: 85 05
LDA $0529               ; $27:8056: AD 29 05
LSR A                   ; $27:8059: 4A
LSR A                   ; $27:805A: 4A
LSR A                   ; $27:805B: 4A
LSR A                   ; $27:805C: 4A
ORA $05                 ; $27:805D: 05 05
STA $04                 ; $27:805F: 85 04
LDA $052A               ; $27:8061: AD 2A 05
BNE CODE_27806F         ; $27:8064: D0 09
LDA $052B               ; $27:8066: AD 2B 05
AND #$F0                ; $27:8069: 29 F0
CMP #$F0                ; $27:806B: C9 F0
BNE CODE_278073         ; $27:806D: D0 04

CODE_27806F:
LDA #$01                ; $27:806F: A9 01
STA $06                 ; $27:8071: 85 06

CODE_278073:
LDA $0564               ; $27:8073: AD 64 05
BNE CODE_278079         ; $27:8076: D0 01
RTL                     ; $27:8078: 6B

CODE_278079:
JSR CODE_27807D         ; $27:8079: 20 7D 80
RTL                     ; $27:807C: 6B

; ExecutePtrShort

CODE_27807D:
JSL CODE_20FB1F         ; $27:807D: 22 1F FB 20
dw CODE_278144
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_2780B3
dw CODE_278145
dw CODE_2781B5
dw CODE_278216
dw CODE_278216
dw CODE_278216
dw CODE_278216

CODE_2780B3:
LDX $0564               ; $27:80B3: AE 64 05
DEX                     ; $27:80B6: CA
LDY $04                 ; $27:80B7: A4 04
LDA.w DATA_2184E6,x     ; $27:80B9: BD E6 84
STA [$2E],y             ; $27:80BC: 97 2E
TXA                     ; $27:80BE: 8A
ASL A                   ; $27:80BF: 0A
ASL A                   ; $27:80C0: 0A
ASL A                   ; $27:80C1: 0A
TAX                     ; $27:80C2: AA
LDY #$00                ; $27:80C3: A0 00

CODE_2780C5:
LDA.w DATA_2184F8,x     ; $27:80C5: BD F8 84
STA $036E,y             ; $27:80C8: 99 6E 03
INX                     ; $27:80CB: E8
INY                     ; $27:80CC: C8
CPY #$08                ; $27:80CD: C0 08
BNE CODE_2780C5         ; $27:80CF: D0 F4
LDA $05                 ; $27:80D1: A5 05
ASL A                   ; $27:80D3: 0A
ADC #$00                ; $27:80D4: 69 00
ASL A                   ; $27:80D6: 0A
ADC #$00                ; $27:80D7: 69 00
PHA                     ; $27:80D9: 48
AND #$0F                ; $27:80DA: 29 0F
LDY $06                 ; $27:80DC: A4 06
BEQ CODE_2780E7         ; $27:80DE: F0 07
LDY $052A               ; $27:80E0: AC 2A 05
BEQ CODE_2780E7         ; $27:80E3: F0 02
ORA #$08                ; $27:80E5: 09 08

CODE_2780E7:
STA $036C               ; $27:80E7: 8D 6C 03
LDA $0528               ; $27:80EA: AD 28 05
LSR A                   ; $27:80ED: 4A
BCC CODE_2780F8         ; $27:80EE: 90 08
LDA $036C               ; $27:80F0: AD 6C 03
ORA #$04                ; $27:80F3: 09 04
STA $036C               ; $27:80F5: 8D 6C 03

CODE_2780F8:
PLA                     ; $27:80F8: 68
AND #$F0                ; $27:80F9: 29 F0
STA $01                 ; $27:80FB: 85 01
LDA $0529               ; $27:80FD: AD 29 05
LSR A                   ; $27:8100: 4A
LSR A                   ; $27:8101: 4A
LSR A                   ; $27:8102: 4A
ORA $01                 ; $27:8103: 05 01
STA $036D               ; $27:8105: 8D 6D 03
LDA #$00                ; $27:8108: A9 00
STA $0564               ; $27:810A: 8D 64 05
LDA $0425               ; $27:810D: AD 25 04
BEQ CODE_278144         ; $27:8110: F0 32
REP #$20                ; $27:8112: C2 20
LDA $06                 ; $27:8114: A5 06
PHA                     ; $27:8116: 48
LDA $052A               ; $27:8117: AD 2A 05
XBA                     ; $27:811A: EB
AND #$FF00              ; $27:811B: 29 00 FF
LSR A                   ; $27:811E: 4A
LSR A                   ; $27:811F: 4A
STA $06                 ; $27:8120: 85 06
LDA $036C               ; $27:8122: AD 6C 03
XBA                     ; $27:8125: EB
SEC                     ; $27:8126: 38
SBC $06                 ; $27:8127: E5 06
AND #$0BFF              ; $27:8129: 29 FF 0B
XBA                     ; $27:812C: EB
STA $036C               ; $27:812D: 8D 6C 03
PLA                     ; $27:8130: 68
STA $06                 ; $27:8131: 85 06
SEP #$20                ; $27:8133: E2 20
LDA $052A               ; $27:8135: AD 2A 05
AND #$01                ; $27:8138: 29 01
BEQ CODE_278144         ; $27:813A: F0 08
LDA $036C               ; $27:813C: AD 6C 03
EOR #$08                ; $27:813F: 49 08
STA $036C               ; $27:8141: 8D 6C 03

CODE_278144:
RTS                     ; $27:8144: 60

CODE_278145:
LDA #$00                ; $27:8145: A9 00
STA $0564               ; $27:8147: 8D 64 05
LDY $04                 ; $27:814A: A4 04
LDA #$42                ; $27:814C: A9 42
STA [$2E],y             ; $27:814E: 97 2E
TYA                     ; $27:8150: 98
CLC                     ; $27:8151: 18
ADC #$10                ; $27:8152: 69 10
TAY                     ; $27:8154: A8
BCC CODE_278159         ; $27:8155: 90 02
INC $2F                 ; $27:8157: E6 2F

CODE_278159:
LDA #$42                ; $27:8159: A9 42
STA [$2E],y             ; $27:815B: 97 2E
REP #$10                ; $27:815D: C2 10
LDY #$0000              ; $27:815F: A0 00 00
LDX $1600               ; $27:8162: AE 00 16

CODE_278165:
LDA.w DATA_218588,y     ; $27:8165: B9 88 85
STA $1602,x             ; $27:8168: 9D 02 16
INX                     ; $27:816B: E8
INY                     ; $27:816C: C8
CPY #$000D              ; $27:816D: C0 0D 00
BNE CODE_278165         ; $27:8170: D0 F3
SEP #$10                ; $27:8172: E2 10
LDA $05                 ; $27:8174: A5 05
ASL A                   ; $27:8176: 0A
ADC #$00                ; $27:8177: 69 00
ASL A                   ; $27:8179: 0A
ADC #$00                ; $27:817A: 69 00
PHA                     ; $27:817C: 48
AND #$0F                ; $27:817D: 29 0F
LDY $06                 ; $27:817F: A4 06
BEQ CODE_278185         ; $27:8181: F0 02
ORA #$08                ; $27:8183: 09 08

CODE_278185:
REP #$10                ; $27:8185: C2 10
LDX $1600               ; $27:8187: AE 00 16
STA $1602,x             ; $27:818A: 9D 02 16
STA $1608,x             ; $27:818D: 9D 08 16
PLA                     ; $27:8190: 68
AND #$F0                ; $27:8191: 29 F0
STA $01                 ; $27:8193: 85 01
LDA $0529               ; $27:8195: AD 29 05
LSR A                   ; $27:8198: 4A
LSR A                   ; $27:8199: 4A
LSR A                   ; $27:819A: 4A
ORA $01                 ; $27:819B: 05 01
STA $1603,x             ; $27:819D: 9D 03 16
CLC                     ; $27:81A0: 18
ADC #$01                ; $27:81A1: 69 01
STA $1609,x             ; $27:81A3: 9D 09 16
REP #$20                ; $27:81A6: C2 20
LDA $1600               ; $27:81A8: AD 00 16
CLC                     ; $27:81AB: 18
ADC #$000C              ; $27:81AC: 69 0C 00
STA $1600               ; $27:81AF: 8D 00 16
SEP #$30                ; $27:81B2: E2 30
RTS                     ; $27:81B4: 60

CODE_2781B5:
LDA #$00                ; $27:81B5: A9 00
STA $0564               ; $27:81B7: 8D 64 05
LDY $04                 ; $27:81BA: A4 04
LDA #$86                ; $27:81BC: A9 86
STA [$2E],y             ; $27:81BE: 97 2E
INY                     ; $27:81C0: C8
LDA #$87                ; $27:81C1: A9 87
STA [$2E],y             ; $27:81C3: 97 2E
LDX #$00                ; $27:81C5: A2 00
LDY $1600               ; $27:81C7: AC 00 16
REP #$20                ; $27:81CA: C2 20

CODE_2781CC:
LDA.w DATA_218595,x     ; $27:81CC: BD 95 85
STA $1602,y             ; $27:81CF: 99 02 16
INX                     ; $27:81D2: E8
INX                     ; $27:81D3: E8
INY                     ; $27:81D4: C8
INY                     ; $27:81D5: C8
CPX #$1A                ; $27:81D6: E0 1A
BNE CODE_2781CC         ; $27:81D8: D0 F2
SEP #$20                ; $27:81DA: E2 20
LDX $1600               ; $27:81DC: AE 00 16
LDA $05                 ; $27:81DF: A5 05
ASL A                   ; $27:81E1: 0A
ADC #$00                ; $27:81E2: 69 00
ASL A                   ; $27:81E4: 0A
ADC #$00                ; $27:81E5: 69 00
PHA                     ; $27:81E7: 48
AND #$0F                ; $27:81E8: 29 0F
LDY $06                 ; $27:81EA: A4 06
BEQ CODE_2781F0         ; $27:81EC: F0 02
ORA #$08                ; $27:81EE: 09 08

CODE_2781F0:
STA $1602,x             ; $27:81F0: 9D 02 16
STA $160E,x             ; $27:81F3: 9D 0E 16
PLA                     ; $27:81F6: 68
AND #$F0                ; $27:81F7: 29 F0
STA $01                 ; $27:81F9: 85 01
LDA $0529               ; $27:81FB: AD 29 05
LSR A                   ; $27:81FE: 4A
LSR A                   ; $27:81FF: 4A
LSR A                   ; $27:8200: 4A
ORA $01                 ; $27:8201: 05 01
STA $1603,x             ; $27:8203: 9D 03 16
CLC                     ; $27:8206: 18
ADC #$20                ; $27:8207: 69 20
STA $160F,x             ; $27:8209: 9D 0F 16
LDA $1600               ; $27:820C: AD 00 16
CLC                     ; $27:820F: 18
ADC #$1A                ; $27:8210: 69 1A
STA $1600               ; $27:8212: 8D 00 16
RTS                     ; $27:8215: 60

CODE_278216:
LDX #$00                ; $27:8216: A2 00
LDA $0564               ; $27:8218: AD 64 05
CMP #$15                ; $27:821B: C9 15
BNE CODE_278229         ; $27:821D: D0 0A
LDY $04                 ; $27:821F: A4 04
LDA [$2E],y             ; $27:8221: B7 2E
CMP #$96                ; $27:8223: C9 96
BEQ CODE_27822F         ; $27:8225: F0 08
BNE CODE_27822E         ; $27:8227: D0 05

CODE_278229:
SEC                     ; $27:8229: 38
SBC #$16                ; $27:822A: E9 16
TAX                     ; $27:822C: AA
INX                     ; $27:822D: E8

CODE_27822E:
INX                     ; $27:822E: E8

CODE_27822F:
LDY.w DATA_2185AF,x     ; $27:822F: BC AF 85
STX $0A                 ; $27:8232: 86 0A
REP #$30                ; $27:8234: C2 30
TYA                     ; $27:8236: 98
AND #$00FF              ; $27:8237: 29 FF 00
TAY                     ; $27:823A: A8
SEP #$20                ; $27:823B: E2 20
LDX $1600               ; $27:823D: AE 00 16
LDA #$31                ; $27:8240: A9 31
STA $00                 ; $27:8242: 85 00

CODE_278244:
LDA.w DATA_2185B4,y     ; $27:8244: B9 B4 85
STA $1602,x             ; $27:8247: 9D 02 16
INX                     ; $27:824A: E8
INY                     ; $27:824B: C8
DEC $00                 ; $27:824C: C6 00
BNE CODE_278244         ; $27:824E: D0 F4
SEP #$10                ; $27:8250: E2 10
LDA $0A                 ; $27:8252: A5 0A
ASL A                   ; $27:8254: 0A
ASL A                   ; $27:8255: 0A
STA $0A                 ; $27:8256: 85 0A
LDA #$00                ; $27:8258: A9 00
STA $02                 ; $27:825A: 85 02

CODE_27825C:
LDA $04                 ; $27:825C: A5 04
AND #$F0                ; $27:825E: 29 F0
LDY $06                 ; $27:8260: A4 06
BEQ CODE_278267         ; $27:8262: F0 03
CLC                     ; $27:8264: 18
ADC #$10                ; $27:8265: 69 10

CODE_278267:
STA $05                 ; $27:8267: 85 05
LDA $04                 ; $27:8269: A5 04
AND #$0F                ; $27:826B: 29 0F
ASL A                   ; $27:826D: 0A
STA $07                 ; $27:826E: 85 07
LDA $05                 ; $27:8270: A5 05
ASL A                   ; $27:8272: 0A
ADC #$00                ; $27:8273: 69 00
ASL A                   ; $27:8275: 0A
ADC #$00                ; $27:8276: 69 00
PHA                     ; $27:8278: 48
AND #$03                ; $27:8279: 29 03
LDY $06                 ; $27:827B: A4 06
BEQ CODE_278281         ; $27:827D: F0 02
ORA #$08                ; $27:827F: 09 08

CODE_278281:
STA $08                 ; $27:8281: 85 08
LDA $0528               ; $27:8283: AD 28 05
LSR A                   ; $27:8286: 4A
BCC CODE_27828F         ; $27:8287: 90 06
LDA $08                 ; $27:8289: A5 08
ORA #$04                ; $27:828B: 09 04
STA $08                 ; $27:828D: 85 08

CODE_27828F:
LDX #$00                ; $27:828F: A2 00
LDA $02                 ; $27:8291: A5 02
BEQ CODE_278297         ; $27:8293: F0 02
LDX #$18                ; $27:8295: A2 18

CODE_278297:
REP #$30                ; $27:8297: C2 30
TXA                     ; $27:8299: 8A
AND #$00FF              ; $27:829A: 29 FF 00
CLC                     ; $27:829D: 18
ADC $1600               ; $27:829E: 6D 00 16
TAX                     ; $27:82A1: AA
SEP #$20                ; $27:82A2: E2 20
PLA                     ; $27:82A4: 68
AND #$F0                ; $27:82A5: 29 F0
ORA $07                 ; $27:82A7: 05 07
PHA                     ; $27:82A9: 48
LDA $08                 ; $27:82AA: A5 08
AND #$08                ; $27:82AC: 29 08
BEQ CODE_2782CA         ; $27:82AE: F0 1A
PLA                     ; $27:82B0: 68
CMP #$40                ; $27:82B1: C9 40
BCS CODE_2782C5         ; $27:82B3: B0 10
PHA                     ; $27:82B5: 48
DEC $08                 ; $27:82B6: C6 08
LDA $08                 ; $27:82B8: A5 08
AND #$08                ; $27:82BA: 29 08
BNE CODE_2782C4         ; $27:82BC: D0 06
LDA $08                 ; $27:82BE: A5 08
AND #$03                ; $27:82C0: 29 03
STA $08                 ; $27:82C2: 85 08

CODE_2782C4:
PLA                     ; $27:82C4: 68

CODE_2782C5:
SEC                     ; $27:82C5: 38
SBC #$40                ; $27:82C6: E9 40
BRA CODE_2782CB         ; $27:82C8: 80 01

CODE_2782CA:
PLA                     ; $27:82CA: 68

CODE_2782CB:
STA $03                 ; $27:82CB: 85 03
STA $1603,x             ; $27:82CD: 9D 03 16
CLC                     ; $27:82D0: 18
ADC #$20                ; $27:82D1: 69 20
STA $160F,x             ; $27:82D3: 9D 0F 16
LDA $08                 ; $27:82D6: A5 08
STA $1602,x             ; $27:82D8: 9D 02 16
STA $160E,x             ; $27:82DB: 9D 0E 16
SEP #$10                ; $27:82DE: E2 10
LDY $04                 ; $27:82E0: A4 04
LDX $0A                 ; $27:82E2: A6 0A
LDA.w DATA_2186AB,x     ; $27:82E4: BD AB 86
STA [$2E],y             ; $27:82E7: 97 2E
INY                     ; $27:82E9: C8
LDA.w DATA_2186AB+1,x   ; $27:82EA: BD AC 86
STA [$2E],y             ; $27:82ED: 97 2E
LDA $04                 ; $27:82EF: A5 04
CLC                     ; $27:82F1: 18
ADC #$10                ; $27:82F2: 69 10
STA $04                 ; $27:82F4: 85 04
LDA $2F                 ; $27:82F6: A5 2F
ADC #$00                ; $27:82F8: 69 00
STA $2F                 ; $27:82FA: 85 2F
INC $0A                 ; $27:82FC: E6 0A
INC $0A                 ; $27:82FE: E6 0A
INC $02                 ; $27:8300: E6 02
LDA $02                 ; $27:8302: A5 02
CMP #$02                ; $27:8304: C9 02
BEQ CODE_27830B         ; $27:8306: F0 03
JMP CODE_27825C         ; $27:8308: 4C 5C 82

CODE_27830B:
REP #$20                ; $27:830B: C2 20
LDA $1600               ; $27:830D: AD 00 16
CLC                     ; $27:8310: 18
ADC #$0030              ; $27:8311: 69 30 00
STA $1600               ; $27:8314: 8D 00 16
SEP #$20                ; $27:8317: E2 20
STZ $0564               ; $27:8319: 9C 64 05
INC $037B               ; $27:831C: EE 7B 03
RTS                     ; $27:831F: 60
LDA $15                 ; $27:8320: A5 15
AND #$07                ; $27:8322: 29 07
BNE CODE_278357         ; $27:8324: D0 31
LDA $15                 ; $27:8326: A5 15
AND #$18                ; $27:8328: 29 18
LSR A                   ; $27:832A: 4A
TAX                     ; $27:832B: AA
LDY $1600               ; $27:832C: AC 00 16
LDA #$3F                ; $27:832F: A9 3F
STA $1601,y             ; $27:8331: 99 01 16
LDA #$04                ; $27:8334: A9 04
STA $1602,y             ; $27:8336: 99 02 16
STA $1603,y             ; $27:8339: 99 03 16

CODE_27833C:
LDA.w DATA_2186BF,x     ; $27:833C: BD BF 86
STA $1604,y             ; $27:833F: 99 04 16
INY                     ; $27:8342: C8
INX                     ; $27:8343: E8
TXA                     ; $27:8344: 8A
AND #$03                ; $27:8345: 29 03
BNE CODE_27833C         ; $27:8347: D0 F3
LDA #$00                ; $27:8349: A9 00
STA $1604,y             ; $27:834B: 99 04 16
LDA $1600               ; $27:834E: AD 00 16
CLC                     ; $27:8351: 18
ADC #$07                ; $27:8352: 69 07
STA $1600               ; $27:8354: 8D 00 16

CODE_278357:
RTS                     ; $27:8357: 60

ORG $278500

CODE_278500:
LDA $0554               ; $27:8500: AD 54 05

; Player growing/shrinking animation timer
ORA $0551               ; $27:8503: 0D 51 05
ORA $9C                 ; $27:8506: 05 9C
BEQ CODE_278517         ; $27:8508: F0 0D
LDA $1A02               ; $27:850A: AD 02 1A
CMP #$13                ; $27:850D: C9 13
BCC CODE_278516         ; $27:850F: 90 05
LDA #$80                ; $27:8511: A9 80
STA $05F3               ; $27:8513: 8D F3 05

CODE_278516:
RTL                     ; $27:8516: 6B

CODE_278517:
STA $05F3               ; $27:8517: 8D F3 05
LDA $1A09               ; $27:851A: AD 09 1A
BEQ CODE_278522         ; $27:851D: F0 03
DEC $1A09               ; $27:851F: CE 09 1A

CODE_278522:
JSR CODE_278526         ; $27:8522: 20 26 85
RTL                     ; $27:8525: 6B

CODE_278526:
LDA $1A01               ; $27:8526: AD 01 1A

; ExecutePtrShort
JSL CODE_20FB1F         ; $27:8529: 22 1F FB 20
dw CODE_27855A
dw CODE_27855A
dw CODE_27888F
dw CODE_27876F
dw CODE_278723
dw CODE_27882D

CODE_278539:
DEC $1A67               ; $27:8539: CE 67 1A
BPL CODE_278559         ; $27:853C: 10 1B
LDA #$05                ; $27:853E: A9 05
STA $1A67               ; $27:8540: 8D 67 1A
INC $1A66               ; $27:8543: EE 66 1A
LDA $1A66               ; $27:8546: AD 66 1A
CMP #$06                ; $27:8549: C9 06
BCC CODE_278552         ; $27:854B: 90 05
LDA #$00                ; $27:854D: A9 00
STA $1A66               ; $27:854F: 8D 66 1A

CODE_278552:
TAY                     ; $27:8552: A8
LDA.w DATA_2184BE,y     ; $27:8553: B9 BE 84
STA $07C9               ; $27:8556: 8D C9 07

CODE_278559:
RTS                     ; $27:8559: 60

CODE_27855A:
LDX #$00                ; $27:855A: A2 00
JSR CODE_278922         ; $27:855C: 20 22 89
LDA $1A02               ; $27:855F: AD 02 1A
CMP #$11                ; $27:8562: C9 11
BNE CODE_27856B         ; $27:8564: D0 05
PHA                     ; $27:8566: 48
JSR CODE_278539         ; $27:8567: 20 39 85
PLA                     ; $27:856A: 68

CODE_27856B:
CMP #$0E                ; $27:856B: C9 0E
BNE CODE_278572         ; $27:856D: D0 03
JSR CODE_27886A         ; $27:856F: 20 6A 88

CODE_278572:
JSR CODE_278697         ; $27:8572: 20 97 86
LDA $1A09               ; $27:8575: AD 09 1A
LSR A                   ; $27:8578: 4A
BCS CODE_2785B9         ; $27:8579: B0 3E
PHA                     ; $27:857B: 48
JSR CODE_278920         ; $27:857C: 20 20 89
PLA                     ; $27:857F: 68
BNE CODE_2785B9         ; $27:8580: D0 37
LDA $1A08               ; $27:8582: AD 08 1A
BEQ CODE_27858A         ; $27:8585: F0 03
JMP CODE_278614         ; $27:8587: 4C 14 86

CODE_27858A:
LDA $1A05               ; $27:858A: AD 05 1A
BNE CODE_2785E8         ; $27:858D: D0 59

CODE_27858F:
STX $DA                 ; $27:858F: 86 DA
LDX $1A02               ; $27:8591: AE 02 1A
LDA $1A03               ; $27:8594: AD 03 1A
CMP.l DATA_27AA5E+1,x   ; $27:8597: DF 5F AA 27
PHP                     ; $27:859B: 08
TXY                     ; $27:859C: 9B
LDX $DA                 ; $27:859D: A6 DA
PLP                     ; $27:859F: 28
BNE CODE_2785C4         ; $27:85A0: D0 22
CPY #$13                ; $27:85A2: C0 13
BCC CODE_2785A9         ; $27:85A4: 90 03
ROR $05F3               ; $27:85A6: 6E F3 05

CODE_2785A9:
LDA #$00                ; $27:85A9: A9 00
STA $1A0E               ; $27:85AB: 8D 0E 1A
LDA.w DATA_21825C,y     ; $27:85AE: B9 5C 82
BNE CODE_2785BA         ; $27:85B1: D0 07
STA $1A0F               ; $27:85B3: 8D 0F 1A
STA $1A10               ; $27:85B6: 8D 10 1A

CODE_2785B9:
RTS                     ; $27:85B9: 60

CODE_2785BA:
STA $1A04               ; $27:85BA: 8D 04 1A
LDA #$FF                ; $27:85BD: A9 FF
STA $1A05               ; $27:85BF: 8D 05 1A
BNE CODE_2785DF         ; $27:85C2: D0 1B

CODE_2785C4:
INC $1A03               ; $27:85C4: EE 03 1A
LDY $1A03               ; $27:85C7: AC 03 1A
LDA.w DATA_218271,y     ; $27:85CA: B9 71 82
LSR A                   ; $27:85CD: 4A
LSR A                   ; $27:85CE: 4A
LSR A                   ; $27:85CF: 4A
LSR A                   ; $27:85D0: 4A
BEQ CODE_27860E         ; $27:85D1: F0 3B
STA $1A04               ; $27:85D3: 8D 04 1A
LDY $1A03               ; $27:85D6: AC 03 1A
LDA.w DATA_21835F,y     ; $27:85D9: B9 5F 83
STA $1A05               ; $27:85DC: 8D 05 1A

CODE_2785DF:
LDY $1A04               ; $27:85DF: AC 04 1A
LDA.w DATA_218458,y     ; $27:85E2: B9 58 84
STA $1A06               ; $27:85E5: 8D 06 1A

CODE_2785E8:
LDY $1A04               ; $27:85E8: AC 04 1A
LDA $1A06               ; $27:85EB: AD 06 1A
CMP.w DATA_218458+1,y   ; $27:85EE: D9 59 84
BNE CODE_278603         ; $27:85F1: D0 10
LDA.w DATA_218458,y     ; $27:85F3: B9 58 84
STA $1A06               ; $27:85F6: 8D 06 1A
LDA $1A05               ; $27:85F9: AD 05 1A
BMI CODE_278603         ; $27:85FC: 30 05
DEC $1A05               ; $27:85FE: CE 05 1A
BEQ CODE_27858F         ; $27:8601: F0 8C

CODE_278603:
INC $1A06               ; $27:8603: EE 06 1A
LDY $1A06               ; $27:8606: AC 06 1A
LDA.w DATA_218490,y     ; $27:8609: B9 90 84
BNE CODE_278611         ; $27:860C: D0 03

CODE_27860E:
LDA.w DATA_21835F,y     ; $27:860E: B9 5F 83

CODE_278611:
STA $1A08               ; $27:8611: 8D 08 1A

CODE_278614:
DEC $1A08               ; $27:8614: CE 08 1A
LDA $1A05               ; $27:8617: AD 05 1A
BEQ CODE_278624         ; $27:861A: F0 08
LDY $1A06               ; $27:861C: AC 06 1A
LDA.w DATA_218462,y     ; $27:861F: B9 62 84
BPL CODE_27862A         ; $27:8622: 10 06

CODE_278624:
LDY $1A03               ; $27:8624: AC 03 1A
LDA.w DATA_218271,y     ; $27:8627: B9 71 82

CODE_27862A:
PHA                     ; $27:862A: 48
LSR A                   ; $27:862B: 4A
LSR A                   ; $27:862C: 4A
AND #$03                ; $27:862D: 29 03
TAY                     ; $27:862F: A8
LDA.w DATA_21844D,y     ; $27:8630: B9 4D 84
CLC                     ; $27:8633: 18
ADC $1A0E               ; $27:8634: 6D 0E 1A
STA $1A0E               ; $27:8637: 8D 0E 1A
PLA                     ; $27:863A: 68
AND #$03                ; $27:863B: 29 03
TAY                     ; $27:863D: A8
LDA.w DATA_21844D,y     ; $27:863E: B9 4D 84
CLC                     ; $27:8641: 18
ADC $1A0F               ; $27:8642: 6D 0F 1A
STA $1A0F               ; $27:8645: 8D 0F 1A
LDA #$04                ; $27:8648: A9 04
STA $1A09               ; $27:864A: 8D 09 1A
LDA $02BF               ; $27:864D: AD BF 02
CMP #$03                ; $27:8650: C9 03
BNE CODE_278659         ; $27:8652: D0 05
LDX $0727               ; $27:8654: AE 27 07
BRA CODE_278660         ; $27:8657: 80 07

CODE_278659:
LDX #$08                ; $27:8659: A2 08
CMP #$04                ; $27:865B: C9 04
BEQ CODE_278660         ; $27:865D: F0 01
RTS                     ; $27:865F: 60

CODE_278660:
LDA $0351               ; $27:8660: AD 51 03
INC A                   ; $27:8663: 1A
INC A                   ; $27:8664: 1A
CMP.w DATA_218450,x     ; $27:8665: DD 50 84
BCC CODE_27866D         ; $27:8668: 90 03
AND.w DATA_218450,x     ; $27:866A: 3D 50 84

CODE_27866D:
STA $0351               ; $27:866D: 8D 51 03
LDA $0350               ; $27:8670: AD 50 03
CMP #$23                ; $27:8673: C9 23
BEQ CODE_27867B         ; $27:8675: F0 04
JSL CODE_29D356         ; $27:8677: 22 56 D3 29

CODE_27867B:
REP #$20                ; $27:867B: C2 20
LDA $0212               ; $27:867D: AD 12 02
STA $035D               ; $27:8680: 8D 5D 03
LSR A                   ; $27:8683: 4A
STA $035B               ; $27:8684: 8D 5B 03
LSR A                   ; $27:8687: 4A
STA $0359               ; $27:8688: 8D 59 03
LSR A                   ; $27:868B: 4A
STA $0357               ; $27:868C: 8D 57 03
SEP #$20                ; $27:868F: E2 20
LDA #$07                ; $27:8691: A9 07
STA $0427               ; $27:8693: 8D 27 04
RTS                     ; $27:8696: 60

CODE_278697:
LDA #$01                ; $27:8697: A9 01
STA $05FC               ; $27:8699: 8D FC 05
LDY $A6                 ; $27:869C: A4 A6
BNE CODE_2786BC         ; $27:869E: D0 1C
LDA $1A02               ; $27:86A0: AD 02 1A
CMP #$13                ; $27:86A3: C9 13
BCC CODE_2786B8         ; $27:86A5: 90 11
LDA #$04                ; $27:86A7: A9 04
STA $0427               ; $27:86A9: 8D 27 04
LDA $55                 ; $27:86AC: A5 55
CMP #$01                ; $27:86AE: C9 01
BNE CODE_2786B8         ; $27:86B0: D0 06
LDA $70                 ; $27:86B2: A5 70
CMP #$70                ; $27:86B4: C9 70
BCS CODE_2786B9         ; $27:86B6: B0 01

CODE_2786B8:
INY                     ; $27:86B8: C8

CODE_2786B9:
STY $1A14               ; $27:86B9: 8C 14 1A

CODE_2786BC:
LDA #$0F                ; $27:86BC: A9 0F
SEC                     ; $27:86BE: 38
SBC $79                 ; $27:86BF: E5 79
BCS CODE_2786CA         ; $27:86C1: B0 07
LDA $79                 ; $27:86C3: A5 79
SEC                     ; $27:86C5: 38
SBC #$E0                ; $27:86C6: E9 E0
BCC CODE_2786E5         ; $27:86C8: 90 1B

CODE_2786CA:
LDA $1A0E               ; $27:86CA: AD 0E 1A
EOR $8B                 ; $27:86CD: 45 8B
BMI CODE_2786D4         ; $27:86CF: 30 03
STZ $074E               ; $27:86D1: 9C 4E 07

CODE_2786D4:
LDA $1A0E               ; $27:86D4: AD 0E 1A
CLC                     ; $27:86D7: 18
SBC $8B                 ; $27:86D8: E5 8B
EOR $79                 ; $27:86DA: 45 79
BMI CODE_2786F6         ; $27:86DC: 30 18
LDA $1A0E               ; $27:86DE: AD 0E 1A
STA $8B                 ; $27:86E1: 85 8B
BRA CODE_2786F6         ; $27:86E3: 80 11

CODE_2786E5:
LDA $1A14               ; $27:86E5: AD 14 1A
BNE CODE_2786F6         ; $27:86E8: D0 0C
LDA $5E                 ; $27:86EA: A5 5E
CLC                     ; $27:86EC: 18
ADC $1A12               ; $27:86ED: 6D 12 1A
STA $5E                 ; $27:86F0: 85 5E
BCC CODE_2786F6         ; $27:86F2: 90 02
INC $43                 ; $27:86F4: E6 43

CODE_2786F6:
LDA $1A0E               ; $27:86F6: AD 0E 1A
ASL A                   ; $27:86F9: 0A
ROL A                   ; $27:86FA: 2A
AND #$01                ; $27:86FB: 29 01
STA $1A07               ; $27:86FD: 8D 07 1A
LDA $8B                 ; $27:8700: A5 8B
BEQ CODE_278722         ; $27:8702: F0 1E
EOR $1A0E               ; $27:8704: 4D 0E 1A
BMI CODE_278722         ; $27:8707: 30 19
LDY #$00                ; $27:8709: A0 00
LDA $1A12               ; $27:870B: AD 12 1A
BEQ CODE_278722         ; $27:870E: F0 12
BPL CODE_278713         ; $27:8710: 10 01
DEY                     ; $27:8712: 88

CODE_278713:
CLC                     ; $27:8713: 18
ADC $5E                 ; $27:8714: 65 5E
STA $5E                 ; $27:8716: 85 5E
TYA                     ; $27:8718: 98
ADC $43                 ; $27:8719: 65 43
STA $43                 ; $27:871B: 85 43
LDA #$00                ; $27:871D: A9 00
STA $074E               ; $27:871F: 8D 4E 07

CODE_278722:
RTS                     ; $27:8722: 60

CODE_278723:
LDA $1A04               ; $27:8723: AD 04 1A
BNE CODE_27873C         ; $27:8726: D0 14
LDA $0216               ; $27:8728: AD 16 02
CMP #$EF                ; $27:872B: C9 EF
BNE CODE_278722         ; $27:872D: D0 F3
LDA $0216               ; $27:872F: AD 16 02
STA $1A0D               ; $27:8732: 8D 0D 1A
INC $1A04               ; $27:8735: EE 04 1A
LDA #$20                ; $27:8738: A9 20
BNE CODE_278756         ; $27:873A: D0 1A

CODE_27873C:
LDA $1A09               ; $27:873C: AD 09 1A
BEQ CODE_278744         ; $27:873F: F0 03
JMP CODE_2787B8         ; $27:8741: 4C B8 87

CODE_278744:
LDA $1A0D               ; $27:8744: AD 0D 1A
CMP #$0D                ; $27:8747: C9 0D
BEQ CODE_27876C         ; $27:8749: F0 21
CMP #$0F                ; $27:874B: C9 0F
BNE CODE_278759         ; $27:874D: D0 0A
LDA #$09                ; $27:874F: A9 09
STA $1203               ; $27:8751: 8D 03 12
LDA #$20                ; $27:8754: A9 20

CODE_278756:
STA $1A09               ; $27:8756: 8D 09 1A

CODE_278759:
JSR CODE_278920         ; $27:8759: 20 20 89
LDA $15                 ; $27:875C: A5 15
AND #$07                ; $27:875E: 29 07
BNE CODE_27876C         ; $27:8760: D0 0A
LDA $1A0F               ; $27:8762: AD 0F 1A
CMP #$F8                ; $27:8765: C9 F8
BEQ CODE_27876C         ; $27:8767: F0 03
DEC $1A0F               ; $27:8769: CE 0F 1A

CODE_27876C:
JMP CODE_2787C0         ; $27:876C: 4C C0 87

CODE_27876F:
LDA $1A09               ; $27:876F: AD 09 1A
BNE CODE_2787B8         ; $27:8772: D0 44
JSR CODE_278920         ; $27:8774: 20 20 89
LDA $15                 ; $27:8777: A5 15
AND #$07                ; $27:8779: 29 07
BNE CODE_27878F         ; $27:877B: D0 12
LDY $1A03               ; $27:877D: AC 03 1A
LDA $1A0F               ; $27:8780: AD 0F 1A
CMP.w DATA_2184C8,y     ; $27:8783: D9 C8 84
BEQ CODE_27878F         ; $27:8786: F0 07
CLC                     ; $27:8788: 18
ADC.w DATA_2184C6,y     ; $27:8789: 79 C6 84
STA $1A0F               ; $27:878C: 8D 0F 1A

CODE_27878F:
LDA $1A02               ; $27:878F: AD 02 1A
ASL A                   ; $27:8792: 0A
ORA $1A03               ; $27:8793: 0D 03 1A
TAY                     ; $27:8796: A8
LDA $1A0D               ; $27:8797: AD 0D 1A
CMP.w DATA_2184CA,y     ; $27:879A: D9 CA 84
BNE CODE_2787C0         ; $27:879D: D0 21
LDA #$00                ; $27:879F: A9 00
STA $1A0F               ; $27:87A1: 8D 0F 1A
LDA $1A03               ; $27:87A4: AD 03 1A
EOR #$01                ; $27:87A7: 49 01
STA $1A03               ; $27:87A9: 8D 03 1A
BEQ CODE_2787B3         ; $27:87AC: F0 05
LDA #$09                ; $27:87AE: A9 09
STA $1203               ; $27:87B0: 8D 03 12

CODE_2787B3:
LDA #$20                ; $27:87B3: A9 20
STA $1A09               ; $27:87B5: 8D 09 1A

CODE_2787B8:
AND #$01                ; $27:87B8: 29 01
EOR $1A0D               ; $27:87BA: 4D 0D 1A
STA $1A0D               ; $27:87BD: 8D 0D 1A

CODE_2787C0:
LDA #$01                ; $27:87C0: A9 01
STA $058B               ; $27:87C2: 8D 8B 05
LDA #$81                ; $27:87C5: A9 81

CODE_2787C7:
STA $0427               ; $27:87C7: 8D 27 04
LDA #$06                ; $27:87CA: A9 06
LDY $BB                 ; $27:87CC: A4 BB
BNE CODE_2787D2         ; $27:87CE: D0 02
LDA #$12                ; $27:87D0: A9 12

CODE_2787D2:
ADC $70                 ; $27:87D2: 65 70
AND #$F0                ; $27:87D4: 29 F0
STA $08                 ; $27:87D6: 85 08
LDA $55                 ; $27:87D8: A5 55
ADC #$00                ; $27:87DA: 69 00
AND #$01                ; $27:87DC: 29 01
STA $02                 ; $27:87DE: 85 02
LDA $5E                 ; $27:87E0: A5 5E
CLC                     ; $27:87E2: 18
ADC #$08                ; $27:87E3: 69 08
STA $09                 ; $27:87E5: 85 09
LDA $43                 ; $27:87E7: A5 43
ADC #$00                ; $27:87E9: 69 00
ASL A                   ; $27:87EB: 0A
TAY                     ; $27:87EC: A8
LDA.w DATA_218200,y     ; $27:87ED: B9 00 82
STA $00                 ; $27:87F0: 85 00
LDA.w DATA_218200+1,y   ; $27:87F2: B9 01 82
CLC                     ; $27:87F5: 18
ADC $02                 ; $27:87F6: 65 02
STA $01                 ; $27:87F8: 85 01
LDA $09                 ; $27:87FA: A5 09
LSR A                   ; $27:87FC: 4A
LSR A                   ; $27:87FD: 4A
LSR A                   ; $27:87FE: 4A
LSR A                   ; $27:87FF: 4A
ORA $08                 ; $27:8800: 05 08
TAY                     ; $27:8802: A8
LDA #$7E                ; $27:8803: A9 7E
STA $02                 ; $27:8805: 85 02
LDA [$00],y             ; $27:8807: B7 00
STA $00                 ; $27:8809: 85 00
LDY $0560               ; $27:880B: AC 60 05
LDA.w DATA_21AF56,y     ; $27:880E: B9 56 AF
CMP $00                 ; $27:8811: C5 00
BEQ CODE_278823         ; $27:8813: F0 0E
LDA.w DATA_21AF3A,y     ; $27:8815: B9 3A AF
CMP #$FF                ; $27:8818: C9 FF
BEQ CODE_278827         ; $27:881A: F0 0B
SEC                     ; $27:881C: 38
SBC $00                 ; $27:881D: E5 00
CMP #$02                ; $27:881F: C9 02
BCS CODE_278827         ; $27:8821: B0 04

CODE_278823:
JSL CODE_27A4C6         ; $27:8823: 22 C6 A4 27

CODE_278827:
LDA #$81                ; $27:8827: A9 81
STA $05FC               ; $27:8829: 8D FC 05
RTS                     ; $27:882C: 60

CODE_27882D:
JSR CODE_278920         ; $27:882D: 20 20 89
LDA $15                 ; $27:8830: A5 15
AND #$07                ; $27:8832: 29 07
BNE CODE_278848         ; $27:8834: D0 12
LDY $1A03               ; $27:8836: AC 03 1A
LDA $1A0F               ; $27:8839: AD 0F 1A
CMP.w DATA_2184CE,y     ; $27:883C: D9 CE 84
BEQ CODE_278848         ; $27:883F: F0 07
CLC                     ; $27:8841: 18
ADC.w DATA_2184C6,y     ; $27:8842: 79 C6 84
STA $1A0F               ; $27:8845: 8D 0F 1A

CODE_278848:
LDA $1A02               ; $27:8848: AD 02 1A
ASL A                   ; $27:884B: 0A
ORA $1A03               ; $27:884C: 0D 03 1A
TAY                     ; $27:884F: A8
LDA $1A0D               ; $27:8850: AD 0D 1A
CMP.w DATA_2184D0,y     ; $27:8853: D9 D0 84
BNE CODE_278860         ; $27:8856: D0 08
LDA $1A03               ; $27:8858: AD 03 1A
EOR #$01                ; $27:885B: 49 01
STA $1A03               ; $27:885D: 8D 03 1A

CODE_278860:
LDA $1A02               ; $27:8860: AD 02 1A
CMP #$04                ; $27:8863: C9 04
BCC CODE_27886A         ; $27:8865: 90 03
JMP CODE_2787C0         ; $27:8867: 4C C0 87

CODE_27886A:
LDY #$00                ; $27:886A: A0 00
LDA #$00                ; $27:886C: A9 00
JSR CODE_2787C7         ; $27:886E: 20 C7 87
LDA $0544               ; $27:8871: AD 44 05
BNE CODE_27888E         ; $27:8874: D0 18
TAY                     ; $27:8876: A8
LDA $056F               ; $27:8877: AD 6F 05
BNE CODE_278881         ; $27:887A: D0 05
LDA $BB                 ; $27:887C: A5 BB
BEQ CODE_278881         ; $27:887E: F0 01
INY                     ; $27:8880: C8

CODE_278881:
LDA $82                 ; $27:8881: A5 82
CMP.w DATA_2184C4,y     ; $27:8883: D9 C4 84
TAY                     ; $27:8886: A8
ROR A                   ; $27:8887: 6A
CPY #$80                ; $27:8888: C0 80
ROR A                   ; $27:888A: 6A
STA $0584               ; $27:888B: 8D 84 05

CODE_27888E:
RTS                     ; $27:888E: 60

CODE_27888F:
INC $1A13               ; $27:888F: EE 13 1A
LDA #$00                ; $27:8892: A9 00
STA $1A0E               ; $27:8894: 8D 0E 1A
STA $1A12               ; $27:8897: 8D 12 1A
LDA $1A04               ; $27:889A: AD 04 1A
CMP #$05                ; $27:889D: C9 05
BCS CODE_278918         ; $27:889F: B0 77
REP #$20                ; $27:88A1: C2 20
LDA $0565               ; $27:88A3: AD 65 05
AND #$0003              ; $27:88A6: 29 03 00
BNE CODE_2788AE         ; $27:88A9: D0 03
INC $02CE               ; $27:88AB: EE CE 02

CODE_2788AE:
LDA $0565               ; $27:88AE: AD 65 05
AND #$0003              ; $27:88B1: 29 03 00
BNE CODE_2788B9         ; $27:88B4: D0 03
DEC $02CC               ; $27:88B6: CE CC 02

CODE_2788B9:
SEP #$20                ; $27:88B9: E2 20
LDA #$08                ; $27:88BB: A9 08
STA $1A0E               ; $27:88BD: 8D 0E 1A
LDA #$F8                ; $27:88C0: A9 F8
STA $1A0F               ; $27:88C2: 8D 0F 1A
LDA $1A13               ; $27:88C5: AD 13 1A
LSR A                   ; $27:88C8: 4A
BCC CODE_2788CE         ; $27:88C9: 90 03
INC $1A12               ; $27:88CB: EE 12 1A

CODE_2788CE:
LDA $05FF               ; $27:88CE: AD FF 05
BNE CODE_2788EC         ; $27:88D1: D0 19
BCC CODE_27891D         ; $27:88D3: 90 48
INC $1A0C               ; $27:88D5: EE 0C 1A
BNE CODE_2788DD         ; $27:88D8: D0 03
INC $1A0A               ; $27:88DA: EE 0A 1A

CODE_2788DD:
LDA $1A0D               ; $27:88DD: AD 0D 1A
BNE CODE_2788E7         ; $27:88E0: D0 05
INC $1A04               ; $27:88E2: EE 04 1A
BNE CODE_278910         ; $27:88E5: D0 29

CODE_2788E7:
DEC $1A0D               ; $27:88E7: CE 0D 1A
BCS CODE_27891D         ; $27:88EA: B0 31

CODE_2788EC:
LSR A                   ; $27:88EC: 4A
LSR A                   ; $27:88ED: 4A
LDA $1A04               ; $27:88EE: AD 04 1A
ROL A                   ; $27:88F1: 2A
TAY                     ; $27:88F2: A8
LDA $1A0C               ; $27:88F3: AD 0C 1A
CLC                     ; $27:88F6: 18
ADC #$04                ; $27:88F7: 69 04
STA $1A0C               ; $27:88F9: 8D 0C 1A
BCC CODE_278901         ; $27:88FC: 90 03
INC $1A0A               ; $27:88FE: EE 0A 1A

CODE_278901:
AND #$F0                ; $27:8901: 29 F0
CMP.w DATA_2184DC,y     ; $27:8903: D9 DC 84
BNE CODE_27891D         ; $27:8906: D0 15
STA $1A0C               ; $27:8908: 8D 0C 1A
LDA #$EF                ; $27:890B: A9 EF
STA $1A0D               ; $27:890D: 8D 0D 1A

CODE_278910:
LDY $05FF               ; $27:8910: AC FF 05
INY                     ; $27:8913: C8
CPY #$04                ; $27:8914: C0 04
BCC CODE_27891A         ; $27:8916: 90 02

CODE_278918:
LDY #$00                ; $27:8918: A0 00

CODE_27891A:
STY $05FF               ; $27:891A: 8C FF 05

CODE_27891D:
JMP CODE_278697         ; $27:891D: 4C 97 86

CODE_278920:
LDX #$01                ; $27:8920: A2 01

CODE_278922:
LDA $1A0E,x             ; $27:8922: BD 0E 1A
ASL A                   ; $27:8925: 0A
ASL A                   ; $27:8926: 0A
ASL A                   ; $27:8927: 0A
ASL A                   ; $27:8928: 0A
CLC                     ; $27:8929: 18
ADC $1A10,x             ; $27:892A: 7D 10 1A
STA $1A10,x             ; $27:892D: 9D 10 1A
PHP                     ; $27:8930: 08
PHP                     ; $27:8931: 08
LDY #$00                ; $27:8932: A0 00
LDA $1A0E,x             ; $27:8934: BD 0E 1A
LSR A                   ; $27:8937: 4A
LSR A                   ; $27:8938: 4A
LSR A                   ; $27:8939: 4A
LSR A                   ; $27:893A: 4A
CMP #$08                ; $27:893B: C9 08
BCC CODE_278942         ; $27:893D: 90 03
ORA #$F0                ; $27:893F: 09 F0
DEY                     ; $27:8941: 88

CODE_278942:
PLP                     ; $27:8942: 28
PHA                     ; $27:8943: 48
ADC $1A0C,x             ; $27:8944: 7D 0C 1A
STA $1A0C,x             ; $27:8947: 9D 0C 1A
TYA                     ; $27:894A: 98
ADC $1A0A,x             ; $27:894B: 7D 0A 1A
STA $1A0A,x             ; $27:894E: 9D 0A 1A
PLA                     ; $27:8951: 68
PLP                     ; $27:8952: 28
ADC #$00                ; $27:8953: 69 00
STA $1A12               ; $27:8955: 8D 12 1A
RTS                     ; $27:8958: 60

ORG $278A00
LDA $17                 ; $27:8A00: A5 17
AND #$03                ; $27:8A02: 29 03
TAY                     ; $27:8A04: A8
LDA.w DATA_21AF6B,y     ; $27:8A05: B9 6B AF
STA $8B                 ; $27:8A08: 85 8B
LDA $17                 ; $27:8A0A: A5 17
LSR A                   ; $27:8A0C: 4A
LSR A                   ; $27:8A0D: 4A
AND #$03                ; $27:8A0E: 29 03
TAY                     ; $27:8A10: A8
LDA.w DATA_21AF6B,y     ; $27:8A11: B9 6B AF
STA $9D                 ; $27:8A14: 85 9D
RTS                     ; $27:8A16: 60

CODE_278A17:
REP #$20                ; $27:8A17: C2 20
LDA $02E3               ; $27:8A19: AD E3 02
BEQ CODE_278A61         ; $27:8A1C: F0 43
CMP #$0010              ; $27:8A1E: C9 10 00
BEQ CODE_278A28         ; $27:8A21: F0 05
DEC $02E3               ; $27:8A23: CE E3 02
BRA CODE_278A61         ; $27:8A26: 80 39

CODE_278A28:
SEP #$20                ; $27:8A28: E2 20
LDY #$01                ; $27:8A2A: A0 01
LDA $05EE               ; $27:8A2C: AD EE 05
ORA $05EF               ; $27:8A2F: 0D EF 05
BNE CODE_278A35         ; $27:8A32: D0 01
INY                     ; $27:8A34: C8

CODE_278A35:
ORA $05F0               ; $27:8A35: 0D F0 05
BEQ CODE_278A64         ; $27:8A38: F0 2A
TYA                     ; $27:8A3A: 98
TAX                     ; $27:8A3B: AA
LDA.w DATA_21AF8B,x     ; $27:8A3C: BD 8B AF
STA $069C               ; $27:8A3F: 8D 9C 06

CODE_278A42:
DEC $05EE,x             ; $27:8A42: DE EE 05
BPL CODE_278A4F         ; $27:8A45: 10 08
LDA #$09                ; $27:8A47: A9 09
STA $05EE,x             ; $27:8A49: 9D EE 05
DEX                     ; $27:8A4C: CA
BPL CODE_278A42         ; $27:8A4D: 10 F3

CODE_278A4F:
LDX $9B                 ; $27:8A4F: A6 9B
LDA $2143               ; $27:8A51: AD 43 21
AND #$7F                ; $27:8A54: 29 7F
CMP #$4B                ; $27:8A56: C9 4B
BEQ CODE_278A5F         ; $27:8A58: F0 05
LDA #$4B                ; $27:8A5A: A9 4B
STA $1203               ; $27:8A5C: 8D 03 12

CODE_278A5F:
LDA #$01                ; $27:8A5F: A9 01

CODE_278A61:
SEP #$20                ; $27:8A61: E2 20
RTL                     ; $27:8A63: 6B

CODE_278A64:
LDA #$4C                ; $27:8A64: A9 4C
STA $1203               ; $27:8A66: 8D 03 12
LDA #$00                ; $27:8A69: A9 00
STA $02E3               ; $27:8A6B: 8D E3 02
STA $02E4               ; $27:8A6E: 8D E4 02
RTL                     ; $27:8A71: 6B

CODE_278A72:
LDY #$05                ; $27:8A72: A0 05

CODE_278A74:
LDA $1FC8,y             ; $27:8A74: B9 C8 1F
BEQ CODE_278A7E         ; $27:8A77: F0 05
DEY                     ; $27:8A79: 88
BPL CODE_278A74         ; $27:8A7A: 10 F8

CODE_278A7C:
SEC                     ; $27:8A7C: 38
RTL                     ; $27:8A7D: 6B

CODE_278A7E:
JSL CODE_27A85F         ; $27:8A7E: 22 5F A8 27
BNE CODE_278A7C         ; $27:8A82: D0 F8
CLC                     ; $27:8A84: 18
RTL                     ; $27:8A85: 6B

CODE_278A86:
PHA                     ; $27:8A86: 48
TYA                     ; $27:8A87: 98
TAX                     ; $27:8A88: AA
PLA                     ; $27:8A89: 68

CODE_278A8A:
CLC                     ; $27:8A8A: 18
ADC #$05                ; $27:8A8B: 69 05
JSL CODE_278A94         ; $27:8A8D: 22 94 8A 27
LDX $9B                 ; $27:8A91: A6 9B
RTL                     ; $27:8A93: 6B

CODE_278A94:
PHA                     ; $27:8A94: 48
STY $0E                 ; $27:8A95: 84 0E
JSR CODE_278ADB         ; $27:8A97: 20 DB 8A
PLA                     ; $27:8A9A: 68
STA $079F,y             ; $27:8A9B: 99 9F 07
LDA $56,x               ; $27:8A9E: B5 56
XBA                     ; $27:8AA0: EB
LDA $71,x               ; $27:8AA1: B5 71
REP #$20                ; $27:8AA3: C2 20
SEC                     ; $27:8AA5: 38
SBC $0216               ; $27:8AA6: ED 16 02
SEC                     ; $27:8AA9: 38
SBC #$0010              ; $27:8AAA: E9 10 00
BPL CODE_278AB2         ; $27:8AAD: 10 03
LDA #$0005              ; $27:8AAF: A9 05 00

CODE_278AB2:
CMP #$00C0              ; $27:8AB2: C9 C0 00
BCC CODE_278ABA         ; $27:8AB5: 90 03
LDA #$00C0              ; $27:8AB7: A9 C0 00

CODE_278ABA:
SEP #$20                ; $27:8ABA: E2 20
STA $07A9,y             ; $27:8ABC: 99 A9 07
LDA $44,x               ; $27:8ABF: B5 44
XBA                     ; $27:8AC1: EB
LDA $5F,x               ; $27:8AC2: B5 5F
REP #$20                ; $27:8AC4: C2 20
SEC                     ; $27:8AC6: 38
SBC $0210               ; $27:8AC7: ED 10 02
SEP #$20                ; $27:8ACA: E2 20
STA $07AE,y             ; $27:8ACC: 99 AE 07
XBA                     ; $27:8ACF: EB
STA $0251,y             ; $27:8AD0: 99 51 02
LDA #$30                ; $27:8AD3: A9 30
STA $07A4,y             ; $27:8AD5: 99 A4 07
LDY $0E                 ; $27:8AD8: A4 0E
RTL                     ; $27:8ADA: 6B

CODE_278ADB:
LDY #$04                ; $27:8ADB: A0 04

CODE_278ADD:
LDA $079F,y             ; $27:8ADD: B9 9F 07
BEQ CODE_278AE7         ; $27:8AE0: F0 05
DEY                     ; $27:8AE2: 88
BPL CODE_278ADD         ; $27:8AE3: 10 F8
LDY #$04                ; $27:8AE5: A0 04

CODE_278AE7:
RTS                     ; $27:8AE7: 60

CODE_278AE8:
LDY #$03                ; $27:8AE8: A0 03

CODE_278AEA:
LDA $1FB4,y             ; $27:8AEA: B9 B4 1F
BEQ CODE_278AF4         ; $27:8AED: F0 05
DEY                     ; $27:8AEF: 88
BPL CODE_278AEA         ; $27:8AF0: 10 F8
LDY #$03                ; $27:8AF2: A0 03

CODE_278AF4:
LDA #$01                ; $27:8AF4: A9 01
STA $1203               ; $27:8AF6: 8D 03 12
LDA #$01                ; $27:8AF9: A9 01
STA $1FB4,y             ; $27:8AFB: 99 B4 1F
LDA $00                 ; $27:8AFE: A5 00
SEC                     ; $27:8B00: 38
SBC $0543               ; $27:8B01: ED 43 05
SBC #$18                ; $27:8B04: E9 18
STA $1FB8,y             ; $27:8B06: 99 B8 1F
LDA $0E                 ; $27:8B09: A5 0E
XBA                     ; $27:8B0B: EB
LDA $01                 ; $27:8B0C: A5 01
REP #$20                ; $27:8B0E: C2 20
SEC                     ; $27:8B10: 38
SBC $0210               ; $27:8B11: ED 10 02
SEP #$20                ; $27:8B14: E2 20
STA $1FBC,y             ; $27:8B16: 99 BC 1F
XBA                     ; $27:8B19: EB
STA $024C,y             ; $27:8B1A: 99 4C 02
LDA #$FB                ; $27:8B1D: A9 FB
STA $1FC0,y             ; $27:8B1F: 99 C0 1F
LDA #$01                ; $27:8B22: A9 01
STA $1FC4,y             ; $27:8B24: 99 C4 1F
RTL                     ; $27:8B27: 6B

CODE_278B28:
LDA $A7,x               ; $27:8B28: B5 A7
AND #$03                ; $27:8B2A: 29 03
BNE CODE_278B47         ; $27:8B2C: D0 19
LDA $1F76               ; $27:8B2E: AD 76 1F
SEC                     ; $27:8B31: 38
SBC #$34                ; $27:8B32: E9 34
CMP #$02                ; $27:8B34: C9 02
BCS CODE_278B47         ; $27:8B36: B0 0F
TAY                     ; $27:8B38: A8
LDA $5F,x               ; $27:8B39: B5 5F
ADC.w DATA_21AF8E,y     ; $27:8B3B: 79 8E AF
STA $5F,x               ; $27:8B3E: 95 5F
LDA $44,x               ; $27:8B40: B5 44
ADC.w DATA_21AF90,y     ; $27:8B42: 79 90 AF
STA $44,x               ; $27:8B45: 95 44

CODE_278B47:
RTL                     ; $27:8B47: 6B

CODE_278B48:
LDA $0567               ; $27:8B48: AD 67 05
BNE CODE_278B47         ; $27:8B4B: D0 FA
LDA $1F76               ; $27:8B4D: AD 76 1F
SEC                     ; $27:8B50: 38
SBC #$34                ; $27:8B51: E9 34
CMP #$02                ; $27:8B53: C9 02
BCS CODE_278B47         ; $27:8B55: B0 F0
TAY                     ; $27:8B57: A8
LDA.w DATA_21AF8E,y     ; $27:8B58: B9 8E AF
LDY #$FF                ; $27:8B5B: A0 FF
EOR $8C,x               ; $27:8B5D: 55 8C
BMI CODE_278B63         ; $27:8B5F: 30 02
LDY #$01                ; $27:8B61: A0 01

CODE_278B63:
STY $07B5               ; $27:8B63: 8C B5 07
RTL                     ; $27:8B66: 6B

CODE_278B67:
LDA $A7,x               ; $27:8B67: B5 A7
BPL CODE_278B84         ; $27:8B69: 10 19
LDA $71,x               ; $27:8B6B: B5 71
SEC                     ; $27:8B6D: 38
SBC $0543               ; $27:8B6E: ED 43 05
AND #$F0                ; $27:8B71: 29 F0
CLC                     ; $27:8B73: 18
ADC #$01                ; $27:8B74: 69 01
CLC                     ; $27:8B76: 18
ADC $0543               ; $27:8B77: 6D 43 05
STA $71,x               ; $27:8B7A: 95 71
LDA #$00                ; $27:8B7C: A9 00
ADC #$00                ; $27:8B7E: 69 00
STA $56,x               ; $27:8B80: 95 56
BRA CODE_278B8E         ; $27:8B82: 80 0A

CODE_278B84:
LDA $71,x               ; $27:8B84: B5 71
AND #$F0                ; $27:8B86: 29 F0
CLC                     ; $27:8B88: 18
ADC $06B3               ; $27:8B89: 6D B3 06
STA $71,x               ; $27:8B8C: 95 71

CODE_278B8E:
LDA #$00                ; $27:8B8E: A9 00
STA $9E,x               ; $27:8B90: 95 9E
RTL                     ; $27:8B92: 6B

CODE_278B93:
LDA #$FF                ; $27:8B93: A9 FF
BNE CODE_278B9D         ; $27:8B95: D0 06
LDA #$08                ; $27:8B97: A9 08
BNE CODE_278B9D         ; $27:8B99: D0 02

CODE_278B9B:
LDA #$04                ; $27:8B9B: A9 04

CODE_278B9D:
PHA                     ; $27:8B9D: 48
CPX #$05                ; $27:8B9E: E0 05
BNE CODE_278BAA         ; $27:8BA0: D0 08
LDA $1A4F,x             ; $27:8BA2: BD 4F 1A
BEQ CODE_278BAA         ; $27:8BA5: F0 03
DEC $1A4F,x             ; $27:8BA7: DE 4F 1A

CODE_278BAA:
LDA $A7,x               ; $27:8BAA: B5 A7
STA $1CEF               ; $27:8BAC: 8D EF 1C
LDA #$00                ; $27:8BAF: A9 00
STA $A7,x               ; $27:8BB1: 95 A7
STA $06B3               ; $27:8BB3: 8D B3 06
STA $07B5               ; $27:8BB6: 8D B5 07
JSL CODE_278CF3         ; $27:8BB9: 22 F3 8C 27
PLA                     ; $27:8BBD: 68
STA $00                 ; $27:8BBE: 85 00
LDY $064F               ; $27:8BC0: AC 4F 06
LDA $064C               ; $27:8BC3: AD 4C 06
CMP $1E9A,y             ; $27:8BC6: D9 9A 1E
BCC CODE_278BD6         ; $27:8BC9: 90 0B
LDA #$01                ; $27:8BCB: A9 01
LDY $8C,x               ; $27:8BCD: B4 8C
BPL CODE_278BD2         ; $27:8BCF: 10 01
ASL A                   ; $27:8BD1: 0A

CODE_278BD2:
ORA $A7,x               ; $27:8BD2: 15 A7
STA $A7,x               ; $27:8BD4: 95 A7

CODE_278BD6:
LDY $064E               ; $27:8BD6: AC 4E 06
LDA $9E,x               ; $27:8BD9: B5 9E
BPL CODE_278BFB         ; $27:8BDB: 10 1E
LDA $0563               ; $27:8BDD: AD 63 05
BEQ CODE_278BEC         ; $27:8BE0: F0 0A
LDA $064B               ; $27:8BE2: AD 4B 06
CMP $1E96,y             ; $27:8BE5: D9 96 1E
BCC CODE_278BFA         ; $27:8BE8: 90 10
BCS CODE_278BF4         ; $27:8BEA: B0 08

CODE_278BEC:
LDA $064B               ; $27:8BEC: AD 4B 06
CMP $1E9A,y             ; $27:8BEF: D9 9A 1E
BCC CODE_278BFA         ; $27:8BF2: 90 06

CODE_278BF4:
LDA $A7,x               ; $27:8BF4: B5 A7
ORA #$08                ; $27:8BF6: 09 08
STA $A7,x               ; $27:8BF8: 95 A7

CODE_278BFA:
RTL                     ; $27:8BFA: 6B

CODE_278BFB:
LDA $064B               ; $27:8BFB: AD 4B 06
CMP $1E96,y             ; $27:8BFE: D9 96 1E
BCS CODE_278C06         ; $27:8C01: B0 03
JMP CODE_278CB1         ; $27:8C03: 4C B1 8C

CODE_278C06:
LDY $0563               ; $27:8C06: AC 63 05
BNE CODE_278C0E         ; $27:8C09: D0 03
JMP CODE_278C9D         ; $27:8C0B: 4C 9D 8C

CODE_278C0E:
CMP #$A8                ; $27:8C0E: C9 A8
BEQ CODE_278C22         ; $27:8C10: F0 10
CMP #$AA                ; $27:8C12: C9 AA
BEQ CODE_278C22         ; $27:8C14: F0 0C
CMP #$37                ; $27:8C16: C9 37
BEQ CODE_278C22         ; $27:8C18: F0 08
CMP #$AB                ; $27:8C1A: C9 AB
BEQ CODE_278C22         ; $27:8C1C: F0 04
CMP #$F9                ; $27:8C1E: C9 F9
BNE CODE_278C25         ; $27:8C20: D0 03

CODE_278C22:
JMP CODE_278CD4         ; $27:8C22: 4C D4 8C

CODE_278C25:
LDA $71,x               ; $27:8C25: B5 71
AND #$0F                ; $27:8C27: 29 0F
STA $00                 ; $27:8C29: 85 00
LDA $0F                 ; $27:8C2B: A5 0F
AND #$0F                ; $27:8C2D: 29 0F
STA $0F                 ; $27:8C2F: 85 0F
LDY $060D               ; $27:8C31: AC 0D 06
LDA.w DATA_21AD70,y     ; $27:8C34: B9 70 AD
CMP #$80                ; $27:8C37: C9 80
BNE CODE_278C3E         ; $27:8C39: D0 03
JMP CODE_278CB1         ; $27:8C3B: 4C B1 8C

CODE_278C3E:
TYA                     ; $27:8C3E: 98
ASL A                   ; $27:8C3F: 0A
ASL A                   ; $27:8C40: 0A
ASL A                   ; $27:8C41: 0A
ASL A                   ; $27:8C42: 0A
CLC                     ; $27:8C43: 18
ADC $0F                 ; $27:8C44: 65 0F
TAY                     ; $27:8C46: A8
LDA.w DATA_21AC0B,y     ; $27:8C47: B9 0B AC
AND #$0F                ; $27:8C4A: 29 0F
STA $01                 ; $27:8C4C: 85 01
LDA $00                 ; $27:8C4E: A5 00
CMP #$0C                ; $27:8C50: C9 0C
BCS CODE_278C58         ; $27:8C52: B0 04
CMP $01                 ; $27:8C54: C5 01
BCC CODE_278CB1         ; $27:8C56: 90 59

CODE_278C58:
LDA $01                 ; $27:8C58: A5 01
STA $06B3               ; $27:8C5A: 8D B3 06
LDA $A7,x               ; $27:8C5D: B5 A7
ORA #$04                ; $27:8C5F: 09 04
STA $A7,x               ; $27:8C61: 95 A7
LDY $060D               ; $27:8C63: AC 0D 06
LDA $8C,x               ; $27:8C66: B5 8C
LSR A                   ; $27:8C68: 4A
LSR A                   ; $27:8C69: 4A
LSR A                   ; $27:8C6A: 4A
LSR A                   ; $27:8C6B: 4A
BNE CODE_278C70         ; $27:8C6C: D0 02
LDA #$01                ; $27:8C6E: A9 01

CODE_278C70:
CMP #$08                ; $27:8C70: C9 08
BCC CODE_278C76         ; $27:8C72: 90 02
ORA #$F0                ; $27:8C74: 09 F0

CODE_278C76:
LDX.w DATA_21AD70,y     ; $27:8C76: BE 70 AD
CPX #$00                ; $27:8C79: E0 00
BNE CODE_278C80         ; $27:8C7B: D0 03
LDX #$00                ; $27:8C7D: A2 00
TXA                     ; $27:8C7F: 8A

CODE_278C80:
CPX #$00                ; $27:8C80: E0 00
BPL CODE_278C88         ; $27:8C82: 10 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:8C84: 22 59 A8 27

CODE_278C88:
STX $00                 ; $27:8C88: 86 00
LDX $9B                 ; $27:8C8A: A6 9B
STA $07B6,x             ; $27:8C8C: 9D B6 07
LDA $00                 ; $27:8C8F: A5 00
LDY $8C,x               ; $27:8C91: B4 8C
BPL CODE_278C99         ; $27:8C93: 10 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:8C95: 22 59 A8 27

CODE_278C99:
STA $07B5               ; $27:8C99: 8D B5 07
RTL                     ; $27:8C9C: 6B

CODE_278C9D:
LDA $058B               ; $27:8C9D: AD 8B 05
BNE CODE_278CAA         ; $27:8CA0: D0 08
LDA $71,x               ; $27:8CA2: B5 71
AND #$0F                ; $27:8CA4: 29 0F
CMP $00                 ; $27:8CA6: C5 00
BCS CODE_278CB0         ; $27:8CA8: B0 06

CODE_278CAA:
LDA $A7,x               ; $27:8CAA: B5 A7
ORA #$04                ; $27:8CAC: 09 04
STA $A7,x               ; $27:8CAE: 95 A7

CODE_278CB0:
RTL                     ; $27:8CB0: 6B

CODE_278CB1:
LDA $0563               ; $27:8CB1: AD 63 05
BEQ CODE_278CD3         ; $27:8CB4: F0 1D
LDY #$00                ; $27:8CB6: A0 00
LDA $07B6,x             ; $27:8CB8: BD B6 07
BEQ CODE_278CD3         ; $27:8CBB: F0 16
BPL CODE_278CC0         ; $27:8CBD: 10 01
DEY                     ; $27:8CBF: 88

CODE_278CC0:
CLC                     ; $27:8CC0: 18
ADC $71,x               ; $27:8CC1: 75 71
STA $71,x               ; $27:8CC3: 95 71
TYA                     ; $27:8CC5: 98
ADC $56,x               ; $27:8CC6: 75 56
STA $56,x               ; $27:8CC8: 95 56
LDA #$00                ; $27:8CCA: A9 00
STA $07B6,x             ; $27:8CCC: 9D B6 07
JSL CODE_278B93         ; $27:8CCF: 22 93 8B 27

CODE_278CD3:
RTL                     ; $27:8CD3: 6B

CODE_278CD4:
LDA $0661,x             ; $27:8CD4: BD 61 06
CMP #$06                ; $27:8CD7: C9 06
BEQ CODE_278CF2         ; $27:8CD9: F0 17
CMP #$04                ; $27:8CDB: C9 04
BEQ CODE_278CF2         ; $27:8CDD: F0 13
LDA $71,x               ; $27:8CDF: B5 71
AND #$F0                ; $27:8CE1: 29 F0
SEC                     ; $27:8CE3: 38
SBC #$01                ; $27:8CE4: E9 01
STA $71,x               ; $27:8CE6: 95 71
LDA $56,x               ; $27:8CE8: B5 56
SBC #$00                ; $27:8CEA: E9 00
STA $56,x               ; $27:8CEC: 95 56
JSL CODE_278B93         ; $27:8CEE: 22 93 8B 27

CODE_278CF2:
RTL                     ; $27:8CF2: 6B

CODE_278CF3:
LDY #$6C                ; $27:8CF3: A0 6C
JSL CODE_278E13         ; $27:8CF5: 22 13 8E 27
ASL A                   ; $27:8CF9: 0A
ROL A                   ; $27:8CFA: 2A
ROL A                   ; $27:8CFB: 2A
AND #$03                ; $27:8CFC: 29 03
STA $00                 ; $27:8CFE: 85 00
TAY                     ; $27:8D00: A8
LDA $0671,x             ; $27:8D01: BD 71 06
CMP #$64                ; $27:8D04: C9 64
BNE CODE_278D12         ; $27:8D06: D0 0A
LDA $B3                 ; $27:8D08: A5 B3
CMP #$F0                ; $27:8D0A: C9 F0
BNE CODE_278D12         ; $27:8D0C: D0 04
LDA #$80                ; $27:8D0E: A9 80
STA $B3                 ; $27:8D10: 85 B3

CODE_278D12:
LDA $B3                 ; $27:8D12: A5 B3
CMP $1E96,y             ; $27:8D14: D9 96 1E
BCS CODE_278D66         ; $27:8D17: B0 4D
LDX #$00                ; $27:8D19: A2 00
CMP #$D7                ; $27:8D1B: C9 D7
BEQ CODE_278D38         ; $27:8D1D: F0 19
CMP #$E0                ; $27:8D1F: C9 E0
BEQ CODE_278D38         ; $27:8D21: F0 15
CMP #$E1                ; $27:8D23: C9 E1
BEQ CODE_278D38         ; $27:8D25: F0 11
LDA $0560               ; $27:8D27: AD 60 05
ASL A                   ; $27:8D2A: 0A
ASL A                   ; $27:8D2B: 0A
CLC                     ; $27:8D2C: 18
ADC $00                 ; $27:8D2D: 65 00
TAY                     ; $27:8D2F: A8
LDA.w DATA_21AD84,y     ; $27:8D30: B9 84 AD
CMP $B3                 ; $27:8D33: C5 B3
BCS CODE_278D38         ; $27:8D35: B0 01
INX                     ; $27:8D37: E8

CODE_278D38:
TXA                     ; $27:8D38: 8A
LDX $9B                 ; $27:8D39: A6 9B
CMP $06B7,x             ; $27:8D3B: DD B7 06
BEQ CODE_278D63         ; $27:8D3E: F0 23
PHA                     ; $27:8D40: 48
LDA $B3                 ; $27:8D41: A5 B3
LDY $00                 ; $27:8D43: A4 00
CMP $1E96,y             ; $27:8D45: D9 96 1E
PLA                     ; $27:8D48: 68
BCS CODE_278D63         ; $27:8D49: B0 18
PHA                     ; $27:8D4B: 48
LDA $1FE1,x             ; $27:8D4C: BD E1 1F
PHA                     ; $27:8D4F: 48
ASL A                   ; $27:8D50: 0A
ROL A                   ; $27:8D51: 2A
ROL A                   ; $27:8D52: 2A
AND #$03                ; $27:8D53: 29 03
TAY                     ; $27:8D55: A8
PLA                     ; $27:8D56: 68
CMP $1E96,y             ; $27:8D57: D9 96 1E
PLA                     ; $27:8D5A: 68
BCS CODE_278D63         ; $27:8D5B: B0 06
PHA                     ; $27:8D5D: 48
JSL CODE_278F34         ; $27:8D5E: 22 34 8F 27
PLA                     ; $27:8D62: 68

CODE_278D63:
STA $06B7,x             ; $27:8D63: 9D B7 06

CODE_278D66:
LDA $B3                 ; $27:8D66: A5 B3
STA $1FE1,x             ; $27:8D68: 9D E1 1F
LDY $0671,x             ; $27:8D6B: BC 71 06
LDA.w DATA_21B0FB,y     ; $27:8D6E: B9 FB B0
AND #$F0                ; $27:8D71: 29 F0
LSR A                   ; $27:8D73: 4A
PHA                     ; $27:8D74: 48
TAY                     ; $27:8D75: A8
LDA $9E,x               ; $27:8D76: B5 9E
BPL CODE_278D7C         ; $27:8D78: 10 02
INY                     ; $27:8D7A: C8
INY                     ; $27:8D7B: C8

CODE_278D7C:
JSL CODE_278E13         ; $27:8D7C: 22 13 8E 27
STA $1F76               ; $27:8D80: 8D 76 1F
STA $064B               ; $27:8D83: 8D 4B 06
PHA                     ; $27:8D86: 48
LDA $0560               ; $27:8D87: AD 60 05
CMP #$02                ; $27:8D8A: C9 02
BNE CODE_278DA0         ; $27:8D8C: D0 12
LDA $B3                 ; $27:8D8E: A5 B3
CMP #$49                ; $27:8D90: C9 49
BEQ CODE_278D98         ; $27:8D92: F0 04
CMP #$4A                ; $27:8D94: C9 4A
BNE CODE_278DA0         ; $27:8D96: D0 08

CODE_278D98:
INC $06EB,x             ; $27:8D98: FE EB 06
LDA #$06                ; $27:8D9B: A9 06
STA $0661,x             ; $27:8D9D: 9D 61 06

CODE_278DA0:
PLA                     ; $27:8DA0: 68
ASL A                   ; $27:8DA1: 0A
ROL A                   ; $27:8DA2: 2A
ROL A                   ; $27:8DA3: 2A
AND #$03                ; $27:8DA4: 29 03
STA $064E               ; $27:8DA6: 8D 4E 06
TAY                     ; $27:8DA9: A8
LDA $1F7B               ; $27:8DAA: AD 7B 1F
STA $0F                 ; $27:8DAD: 85 0F
LDA $0563               ; $27:8DAF: AD 63 05
BEQ CODE_278DD6         ; $27:8DB2: F0 22
LDA $B3                 ; $27:8DB4: A5 B3
CMP $1E96,y             ; $27:8DB6: D9 96 1E
BCC CODE_278DD6         ; $27:8DB9: 90 1B
PHA                     ; $27:8DBB: 48
TYA                     ; $27:8DBC: 98
ASL A                   ; $27:8DBD: 0A
TAX                     ; $27:8DBE: AA
LDA.w DATA_21AAD0,x     ; $27:8DBF: BD D0 AA
STA $02                 ; $27:8DC2: 85 02
LDA.w DATA_21AAD0+1,x   ; $27:8DC4: BD D1 AA
STA $03                 ; $27:8DC7: 85 03
PLA                     ; $27:8DC9: 68
SEC                     ; $27:8DCA: 38
SBC $1E96,y             ; $27:8DCB: F9 96 1E
TAY                     ; $27:8DCE: A8
LDA ($02),y             ; $27:8DCF: B1 02
STA $060D               ; $27:8DD1: 8D 0D 06
LDX $9B                 ; $27:8DD4: A6 9B

CODE_278DD6:
LDA #$00                ; $27:8DD6: A9 00
STA $1F77               ; $27:8DD8: 8D 77 1F
PLA                     ; $27:8DDB: 68
CMP #$08                ; $27:8DDC: C9 08
BNE CODE_278DF5         ; $27:8DDE: D0 15
LDY $0563               ; $27:8DE0: AC 63 05
BEQ CODE_278DF5         ; $27:8DE3: F0 10
PHA                     ; $27:8DE5: 48
LDA $1CEF               ; $27:8DE6: AD EF 1C
AND #$04                ; $27:8DE9: 29 04
TAY                     ; $27:8DEB: A8
PLA                     ; $27:8DEC: 68
CPY #$00                ; $27:8DED: C0 00
BEQ CODE_278DF5         ; $27:8DEF: F0 04
LDY #$68                ; $27:8DF1: A0 68
BRA CODE_278DFA         ; $27:8DF3: 80 05

CODE_278DF5:
TAY                     ; $27:8DF5: A8
INY                     ; $27:8DF6: C8
INY                     ; $27:8DF7: C8
INY                     ; $27:8DF8: C8
INY                     ; $27:8DF9: C8

CODE_278DFA:
LDA $8C,x               ; $27:8DFA: B5 8C
BMI CODE_278E00         ; $27:8DFC: 30 02
INY                     ; $27:8DFE: C8
INY                     ; $27:8DFF: C8

CODE_278E00:
JSL CODE_278E13         ; $27:8E00: 22 13 8E 27
STA $1F77               ; $27:8E04: 8D 77 1F
STA $064C               ; $27:8E07: 8D 4C 06
ASL A                   ; $27:8E0A: 0A
ROL A                   ; $27:8E0B: 2A
ROL A                   ; $27:8E0C: 2A
AND #$03                ; $27:8E0D: 29 03
STA $064F               ; $27:8E0F: 8D 4F 06
RTL                     ; $27:8E12: 6B

CODE_278E13:
LDA $0425               ; $27:8E13: AD 25 04
BEQ CODE_278E1B         ; $27:8E16: F0 03
JMP CODE_278EEB         ; $27:8E18: 4C EB 8E

CODE_278E1B:
LDA $058B               ; $27:8E1B: AD 8B 05
BEQ CODE_278E42         ; $27:8E1E: F0 22
LDA $71,x               ; $27:8E20: B5 71
CLC                     ; $27:8E22: 18
ADC.w DATA_21ADCA,y     ; $27:8E23: 79 CA AD
SEC                     ; $27:8E26: 38
SBC $0543               ; $27:8E27: ED 43 05
CMP #$A0                ; $27:8E2A: C9 A0
BCC CODE_278E42         ; $27:8E2C: 90 14
SBC #$10                ; $27:8E2E: E9 10
AND #$F0                ; $27:8E30: 29 F0
STA $1F79               ; $27:8E32: 8D 79 1F
LDA $A7,x               ; $27:8E35: B5 A7
ORA #$80                ; $27:8E37: 09 80
STA $A7,x               ; $27:8E39: 95 A7
LDA #$01                ; $27:8E3B: A9 01
STA $1F78               ; $27:8E3D: 8D 78 1F
BRA CODE_278E5A         ; $27:8E40: 80 18

CODE_278E42:
LDA $71,x               ; $27:8E42: B5 71
CLC                     ; $27:8E44: 18
ADC.w DATA_21ADCA,y     ; $27:8E45: 79 CA AD
AND #$F0                ; $27:8E48: 29 F0
STA $1F79               ; $27:8E4A: 8D 79 1F
LDA $56,x               ; $27:8E4D: B5 56
ADC #$00                ; $27:8E4F: 69 00
STA $1F78               ; $27:8E51: 8D 78 1F
BEQ CODE_278E63         ; $27:8E54: F0 0D
CMP #$02                ; $27:8E56: C9 02
BCS CODE_278ECD         ; $27:8E58: B0 73

CODE_278E5A:
PHA                     ; $27:8E5A: 48
LDA $1F79               ; $27:8E5B: AD 79 1F
CMP #$B0                ; $27:8E5E: C9 B0
PLA                     ; $27:8E60: 68
BCS CODE_278ECD         ; $27:8E61: B0 6A

CODE_278E63:
AND #$01                ; $27:8E63: 29 01
STA $02                 ; $27:8E65: 85 02
LDA $5F,x               ; $27:8E67: B5 5F
ADC.w DATA_21ADCA+1,y   ; $27:8E69: 79 CB AD
STA $1F7B               ; $27:8E6C: 8D 7B 1F
LDA $44,x               ; $27:8E6F: B5 44
ADC #$00                ; $27:8E71: 69 00
STA $1F7A               ; $27:8E73: 8D 7A 1F
CMP #$10                ; $27:8E76: C9 10
BCS CODE_278ECD         ; $27:8E78: B0 53
PHX                     ; $27:8E7A: DA
ASL A                   ; $27:8E7B: 0A
TAX                     ; $27:8E7C: AA
LDA.l DATA_218200,x     ; $27:8E7D: BF 00 82 21
STA $00                 ; $27:8E81: 85 00
LDA.l DATA_218200+1,x   ; $27:8E83: BF 01 82 21
ADC $02                 ; $27:8E87: 65 02
STA $01                 ; $27:8E89: 85 01
LDA.w DATA_21821E,x     ; $27:8E8B: BD 1E 82
STA $D8                 ; $27:8E8E: 85 D8
LDA.w DATA_21821E+1,x   ; $27:8E90: BD 1F 82
ADC $02                 ; $27:8E93: 65 02
STA $D9                 ; $27:8E95: 85 D9
LDA #$7E                ; $27:8E97: A9 7E
STA $02                 ; $27:8E99: 85 02
STA $DA                 ; $27:8E9B: 85 DA
PLX                     ; $27:8E9D: FA
LDA $1F7B               ; $27:8E9E: AD 7B 1F
LSR A                   ; $27:8EA1: 4A
LSR A                   ; $27:8EA2: 4A
LSR A                   ; $27:8EA3: 4A
LSR A                   ; $27:8EA4: 4A
ORA $1F79               ; $27:8EA5: 0D 79 1F
TAY                     ; $27:8EA8: A8

CODE_278EA9:
LDA [$D8],y             ; $27:8EA9: B7 D8
BEQ CODE_278EC5         ; $27:8EAB: F0 18
PHX                     ; $27:8EAD: DA
LDA $070A               ; $27:8EAE: AD 0A 07
ASL A                   ; $27:8EB1: 0A
TAX                     ; $27:8EB2: AA
LDA.w DATA_21AB57,x     ; $27:8EB3: BD 57 AB
STA $DB                 ; $27:8EB6: 85 DB
LDA.w DATA_21AB57+1,x   ; $27:8EB8: BD 58 AB
STA $DC                 ; $27:8EBB: 85 DC
LDA [$00],y             ; $27:8EBD: B7 00
TAY                     ; $27:8EBF: A8
LDA ($DB),y             ; $27:8EC0: B1 DB
PLX                     ; $27:8EC2: FA
BRA CODE_278EC7         ; $27:8EC3: 80 02

CODE_278EC5:
LDA [$00],y             ; $27:8EC5: B7 00

CODE_278EC7:
JSL CODE_278ED2         ; $27:8EC7: 22 D2 8E 27
BRA CODE_278ECF         ; $27:8ECB: 80 02

CODE_278ECD:
LDA #$00                ; $27:8ECD: A9 00

CODE_278ECF:
STA $B3                 ; $27:8ECF: 85 B3
RTL                     ; $27:8ED1: 6B

CODE_278ED2:
LDY $0567               ; $27:8ED2: AC 67 05
BEQ CODE_278EEA         ; $27:8ED5: F0 13
LDY #$03                ; $27:8ED7: A0 03

CODE_278ED9:
CMP.w DATA_21AF92,y     ; $27:8ED9: D9 92 AF
BNE CODE_278EE7         ; $27:8EDC: D0 09
LDA.w DATA_21AF9A,y     ; $27:8EDE: B9 9A AF
STA $B4                 ; $27:8EE1: 85 B4
LDA.w DATA_21AF96,y     ; $27:8EE3: B9 96 AF
RTL                     ; $27:8EE6: 6B

CODE_278EE7:
DEY                     ; $27:8EE7: 88
BPL CODE_278ED9         ; $27:8EE8: 10 EF

CODE_278EEA:
RTL                     ; $27:8EEA: 6B

CODE_278EEB:
LDA $71,x               ; $27:8EEB: B5 71
CLC                     ; $27:8EED: 18
ADC.w DATA_21ADCA,y     ; $27:8EEE: 79 CA AD
AND #$F0                ; $27:8EF1: 29 F0
STA $1F79               ; $27:8EF3: 8D 79 1F
STA $02                 ; $27:8EF6: 85 02
LDA $56,x               ; $27:8EF8: B5 56
ADC #$00                ; $27:8EFA: 69 00
STA $1F78               ; $27:8EFC: 8D 78 1F
CMP #$10                ; $27:8EFF: C9 10
BCS CODE_278ECD         ; $27:8F01: B0 CA
ADC #$20                ; $27:8F03: 69 20
STA $01                 ; $27:8F05: 85 01
LDA $44,x               ; $27:8F07: B5 44
STA $1F7A               ; $27:8F09: 8D 7A 1F
LDA $5F,x               ; $27:8F0C: B5 5F
CLC                     ; $27:8F0E: 18
ADC.w DATA_21ADCA+1,y   ; $27:8F0F: 79 CB AD
STA $1F7B               ; $27:8F12: 8D 7B 1F
LSR A                   ; $27:8F15: 4A
LSR A                   ; $27:8F16: 4A
LSR A                   ; $27:8F17: 4A
LSR A                   ; $27:8F18: 4A
ORA $02                 ; $27:8F19: 05 02
STA $00                 ; $27:8F1B: 85 00
REP #$20                ; $27:8F1D: C2 20
LDA $00                 ; $27:8F1F: A5 00
CLC                     ; $27:8F21: 18
ADC #$2000              ; $27:8F22: 69 00 20
STA $D8                 ; $27:8F25: 85 D8
SEP #$20                ; $27:8F27: E2 20
LDA #$7E                ; $27:8F29: A9 7E
STA $02                 ; $27:8F2B: 85 02
STA $DA                 ; $27:8F2D: 85 DA
LDY #$00                ; $27:8F2F: A0 00
JMP CODE_278EA9         ; $27:8F31: 4C A9 8E

CODE_278F34:
LDA #$02                ; $27:8F34: A9 02
STA $00                 ; $27:8F36: 85 00
LDA $1A4F,x             ; $27:8F38: BD 4F 1A
BNE CODE_278EEA         ; $27:8F3B: D0 AD
LDA $0671,x             ; $27:8F3D: BD 71 06
CMP #$1F                ; $27:8F40: C9 1F
BEQ CODE_278FC0         ; $27:8F42: F0 7C
LDA $9E,x               ; $27:8F44: B5 9E
BMI CODE_278F5B         ; $27:8F46: 30 13
LDA $0671,x             ; $27:8F48: BD 71 06
CMP #$62                ; $27:8F4B: C9 62
BEQ CODE_278FC0         ; $27:8F4D: F0 71
CMP #$6A                ; $27:8F4F: C9 6A
BEQ CODE_278FC0         ; $27:8F51: F0 6D
CMP #$61                ; $27:8F53: C9 61
BEQ CODE_278FC0         ; $27:8F55: F0 69
LDA #$00                ; $27:8F57: A9 00
STA $9E,x               ; $27:8F59: 95 9E

CODE_278F5B:
LDY #$02                ; $27:8F5B: A0 02
INC $1A72               ; $27:8F5D: EE 72 1A
LDA $1A72               ; $27:8F60: AD 72 1A
AND #$01                ; $27:8F63: 29 01
TAY                     ; $27:8F65: A8
INY                     ; $27:8F66: C8
LDA #$01                ; $27:8F67: A9 01
STA $1F90,y             ; $27:8F69: 99 90 1F
LSR A                   ; $27:8F6C: 4A
STA $1F99,y             ; $27:8F6D: 99 99 1F
STZ $01                 ; $27:8F70: 64 01
LDA $56,x               ; $27:8F72: B5 56
XBA                     ; $27:8F74: EB
LDA $71,x               ; $27:8F75: B5 71
REP #$20                ; $27:8F77: C2 20
SEC                     ; $27:8F79: 38
SBC #$0004              ; $27:8F7A: E9 04 00
AND #$FFF0              ; $27:8F7D: 29 F0 FF
CLC                     ; $27:8F80: 18
ADC $00                 ; $27:8F81: 65 00
SEP #$20                ; $27:8F83: E2 20
STA $1F93,y             ; $27:8F85: 99 93 1F
XBA                     ; $27:8F88: EB
STA $058E,y             ; $27:8F89: 99 8E 05
LDA $5F,x               ; $27:8F8C: B5 5F
STA $1F96,y             ; $27:8F8E: 99 96 1F
LDA $44,x               ; $27:8F91: B5 44
STA $00EF,y             ; $27:8F93: 99 EF 00
LDA $9E,x               ; $27:8F96: B5 9E
BMI CODE_278FC0         ; $27:8F98: 30 26
LDA $1F7F               ; $27:8F9A: AD 7F 1F
BNE CODE_278FC0         ; $27:8F9D: D0 21
LDA #$80                ; $27:8F9F: A9 80
STA $1F7F               ; $27:8FA1: 8D 7F 1F
LDA $71,x               ; $27:8FA4: B5 71
ADC #$06                ; $27:8FA6: 69 06
STA $1F87               ; $27:8FA8: 8D 87 1F
LDA $56,x               ; $27:8FAB: B5 56
ADC #$00                ; $27:8FAD: 69 00
STA $1F83               ; $27:8FAF: 8D 83 1F
LDA $5F,x               ; $27:8FB2: B5 5F
ADC #$04                ; $27:8FB4: 69 04
STA $1F8F               ; $27:8FB6: 8D 8F 1F
LDA $44,x               ; $27:8FB9: B5 44
ADC #$00                ; $27:8FBB: 69 00
STA $1F8B               ; $27:8FBD: 8D 8B 1F

CODE_278FC0:
RTL                     ; $27:8FC0: 6B

CODE_278FC1:
JMP CODE_278FD3         ; $27:8FC1: 4C D3 8F
db $35
BEQ CODE_278FD3         ; $27:8FC5: F0 0C
LDA $18                 ; $27:8FC7: A5 18
AND #$20                ; $27:8FC9: 29 20
BEQ CODE_278FD3         ; $27:8FCB: F0 06
EOR $1CFF               ; $27:8FCD: 4D FF 1C
STA $1CFF               ; $27:8FD0: 8D FF 1C

CODE_278FD3:
LDA $1A45               ; $27:8FD3: AD 45 1A
BEQ CODE_278FDB         ; $27:8FD6: F0 03
DEC $1A45               ; $27:8FD8: CE 45 1A

CODE_278FDB:
LDA $BB                 ; $27:8FDB: A5 BB
CMP #$06                ; $27:8FDD: C9 06
BNE CODE_278FE6         ; $27:8FDF: D0 05
LDA #$4F                ; $27:8FE1: A9 4F
STA $071E               ; $27:8FE3: 8D 1E 07

CODE_278FE6:
LDA $BF                 ; $27:8FE6: A5 BF
CMP #$03                ; $27:8FE8: C9 03
BNE CODE_278FF4         ; $27:8FEA: D0 08
LDA $071B               ; $27:8FEC: AD 1B 07
CMP #$52                ; $27:8FEF: C9 52
BNE CODE_278FF4         ; $27:8FF1: D0 01
RTL                     ; $27:8FF3: 6B

CODE_278FF4:
LDA $06A4               ; $27:8FF4: AD A4 06
STA $06A5               ; $27:8FF7: 8D A5 06
STZ $06A4               ; $27:8FFA: 9C A4 06
STZ $07BD               ; $27:8FFD: 9C BD 07
LDA #$FF                ; $27:9000: A9 FF
STA $07B3               ; $27:9002: 8D B3 07
JSL CODE_299E7B         ; $27:9005: 22 7B 9E 29
JSL CODE_299A9A         ; $27:9009: 22 9A 9A 29
DEC $055D               ; $27:900D: CE 5D 05
BPL CODE_279017         ; $27:9010: 10 05
LDA #$07                ; $27:9012: A9 07
STA $055D               ; $27:9014: 8D 5D 05

CODE_279017:
LDX #$07                ; $27:9017: A2 07

CODE_279019:
STX $9B                 ; $27:9019: 86 9B
LDA $9C                 ; $27:901B: A5 9C
BNE CODE_27905A         ; $27:901D: D0 3B
LDA $0518,x             ; $27:901F: BD 18 05
BEQ CODE_279027         ; $27:9022: F0 03
DEC $0518,x             ; $27:9024: DE 18 05

CODE_279027:
LDA $0520,x             ; $27:9027: BD 20 05
BEQ CODE_27902F         ; $27:902A: F0 03
DEC $0520,x             ; $27:902C: DE 20 05

CODE_27902F:
CPX #$05                ; $27:902F: E0 05
BCS CODE_27905A         ; $27:9031: B0 27
LDA $06AB,x             ; $27:9033: BD AB 06
BEQ CODE_27903B         ; $27:9036: F0 03
DEC $06AB,x             ; $27:9038: DE AB 06

CODE_27903B:
LDA $06A6,x             ; $27:903B: BD A6 06
BEQ CODE_27905A         ; $27:903E: F0 1A
CMP #$60                ; $27:9040: C9 60
BCC CODE_279057         ; $27:9042: 90 13
LDA #$01                ; $27:9044: A9 01
LDY $0661,x             ; $27:9046: BC 61 06
CPY #$02                ; $27:9049: C0 02
BEQ CODE_279057         ; $27:904B: F0 0A
CPY #$04                ; $27:904D: C0 04
BNE CODE_279053         ; $27:904F: D0 02
LDA #$03                ; $27:9051: A9 03

CODE_279053:
AND $15                 ; $27:9053: 25 15
BNE CODE_27905A         ; $27:9055: D0 03

CODE_279057:
DEC $06A6,x             ; $27:9057: DE A6 06

CODE_27905A:
TXA                     ; $27:905A: 8A
CLC                     ; $27:905B: 18
ADC $055D               ; $27:905C: 6D 5D 05
ASL A                   ; $27:905F: 0A
TAY                     ; $27:9060: A8
REP #$20                ; $27:9061: C2 20
LDA.w DATA_21AF6E,y     ; $27:9063: B9 6E AF
STA $C6,x               ; $27:9066: 95 C6
SEP #$20                ; $27:9068: E2 20
JSR CODE_2790EC         ; $27:906A: 20 EC 90
JSR CODE_27A5BB         ; $27:906D: 20 BB A5
LDA $0661,x             ; $27:9070: BD 61 06
BNE CODE_27907A         ; $27:9073: D0 05
LDA #$FF                ; $27:9075: A9 FF
STA $0659,x             ; $27:9077: 9D 59 06

CODE_27907A:
DEX                     ; $27:907A: CA
BPL CODE_279019         ; $27:907B: 10 9C
LDA $05FD               ; $27:907D: AD FD 05
BEQ CODE_279086         ; $27:9080: F0 04
JSL CODE_22F000         ; $27:9082: 22 00 F0 22

CODE_279086:
LDA $0350               ; $27:9086: AD 50 03
CMP #$03                ; $27:9089: C9 03
BNE CODE_279091         ; $27:908B: D0 04
JSL CODE_29D3C1         ; $27:908D: 22 C1 D3 29

CODE_279091:
LDA $054F               ; $27:9091: AD 4F 05
BEQ CODE_2790A7         ; $27:9094: F0 11
LDA $0575               ; $27:9096: AD 75 05
ORA $058A               ; $27:9099: 0D 8A 05
BNE CODE_2790A2         ; $27:909C: D0 04
LDA $A6                 ; $27:909E: A5 A6
BNE CODE_2790A7         ; $27:90A0: D0 05

CODE_2790A2:
LDA #$00                ; $27:90A2: A9 00
STA $054F               ; $27:90A4: 8D 4F 05

CODE_2790A7:
LDA $0564               ; $27:90A7: AD 64 05
BNE CODE_2790DF         ; $27:90AA: D0 33
LDY #$00                ; $27:90AC: A0 00
LDA $052E,y             ; $27:90AE: B9 2E 05
BNE CODE_2790BF         ; $27:90B1: D0 0C
INY                     ; $27:90B3: C8
LDA $052E,y             ; $27:90B4: B9 2E 05
BNE CODE_2790BF         ; $27:90B7: D0 06
INY                     ; $27:90B9: C8
LDA $052E,y             ; $27:90BA: B9 2E 05
BEQ CODE_2790DF         ; $27:90BD: F0 20

CODE_2790BF:
STA $0564               ; $27:90BF: 8D 64 05
LDA $0531,y             ; $27:90C2: B9 31 05
STA $0528               ; $27:90C5: 8D 28 05
LDA $0534,y             ; $27:90C8: B9 34 05
STA $0529               ; $27:90CB: 8D 29 05
LDA $0537,y             ; $27:90CE: B9 37 05
STA $052A               ; $27:90D1: 8D 2A 05
LDA $053A,y             ; $27:90D4: B9 3A 05
STA $052B               ; $27:90D7: 8D 2B 05
LDA #$00                ; $27:90DA: A9 00
STA $052E,y             ; $27:90DC: 99 2E 05

CODE_2790DF:
LDA $0414               ; $27:90DF: AD 14 04
BEQ CODE_2790EA         ; $27:90E2: F0 06
STA $055F               ; $27:90E4: 8D 5F 05
STZ $07BE               ; $27:90E7: 9C BE 07

CODE_2790EA:
RTL                     ; $27:90EA: 6B

CODE_2790EB:
RTS                     ; $27:90EB: 60

CODE_2790EC:
LDA $0661,x             ; $27:90EC: BD 61 06
BEQ CODE_2790EB         ; $27:90EF: F0 FA
CMP #$08                ; $27:90F1: C9 08
BEQ CODE_27910D         ; $27:90F3: F0 18
LDY #$04                ; $27:90F5: A0 04

CODE_2790F7:
LDA $0671,x             ; $27:90F7: BD 71 06
CMP.w DATA_21AFA1+1,y   ; $27:90FA: D9 A2 AF
BCS CODE_279102         ; $27:90FD: B0 03
DEY                     ; $27:90FF: 88
BNE CODE_2790F7         ; $27:9100: D0 F5

CODE_279102:
STY $DE                 ; $27:9102: 84 DE
INY                     ; $27:9104: C8
SEC                     ; $27:9105: 38
SBC.w DATA_21AFA1,y     ; $27:9106: F9 A1 AF
STA $0418               ; $27:9109: 8D 18 04
TAY                     ; $27:910C: A8

CODE_27910D:
JSL CODE_27A994         ; $27:910D: 22 94 A9 27
JSL CODE_27A2C8         ; $27:9111: 22 C8 A2 27
JSL CODE_27A27C         ; $27:9115: 22 7C A2 27
LDA $0661,x             ; $27:9119: BD 61 06

; ExecutePtrShort
JSL CODE_20FB1F         ; $27:911C: 22 1F FB 20
dw CODE_279B7B
dw CODE_279B7D
dw CODE_279D14
dw CODE_2791E8
dw CODE_2795A1
dw CODE_2793E1
dw CODE_27974A
dw CODE_27980F
dw CODE_279132

CODE_279132:
LDA $0518,x             ; $27:9132: BD 18 05
BNE CODE_27913A         ; $27:9135: D0 03
JMP CODE_27980C         ; $27:9137: 4C 0C 98

CODE_27913A:
JSL CODE_27A85F         ; $27:913A: 22 5F A8 27
BEQ CODE_279143         ; $27:913E: F0 03
BRL CODE_2791E7         ; $27:9140: 82 A4 00

CODE_279143:
JSL CODE_279DC2         ; $27:9143: 22 C2 9D 27
REP #$10                ; $27:9147: C2 10
LDY $C6,x               ; $27:9149: B4 C6
LDA $7A,x               ; $27:914B: B5 7A
STA $0800,y             ; $27:914D: 99 00 08
STA $0808,y             ; $27:9150: 99 08 08
CLC                     ; $27:9153: 18
ADC #$08                ; $27:9154: 69 08
STA $0804,y             ; $27:9156: 99 04 08
STA $080C,y             ; $27:9159: 99 0C 08
LDA $83,x               ; $27:915C: B5 83
STA $0801,y             ; $27:915E: 99 01 08
STA $0805,y             ; $27:9161: 99 05 08
CLC                     ; $27:9164: 18
ADC #$08                ; $27:9165: 69 08
STA $0809,y             ; $27:9167: 99 09 08
STA $080D,y             ; $27:916A: 99 0D 08
REP #$20                ; $27:916D: C2 20
LDA $0518,x             ; $27:916F: BD 18 05
AND #$00FF              ; $27:9172: 29 FF 00
LSR A                   ; $27:9175: 4A
LSR A                   ; $27:9176: 4A
LSR A                   ; $27:9177: 4A
TAX                     ; $27:9178: AA
SEP #$20                ; $27:9179: E2 20
LDA.w DATA_21AFA7,x     ; $27:917B: BD A7 AF
STA $0802,y             ; $27:917E: 99 02 08
STA $0806,y             ; $27:9181: 99 06 08
INC A                   ; $27:9184: 1A
STA $080A,y             ; $27:9185: 99 0A 08
STA $080E,y             ; $27:9188: 99 0E 08
LDA $0565               ; $27:918B: AD 65 05
LSR A                   ; $27:918E: 4A
LSR A                   ; $27:918F: 4A
ROR A                   ; $27:9190: 6A
AND #$80                ; $27:9191: 29 80
ORA #$22                ; $27:9193: 09 22
STA $0803,y             ; $27:9195: 99 03 08
STA $080B,y             ; $27:9198: 99 0B 08
EOR #$C0                ; $27:919B: 49 C0
STA $0807,y             ; $27:919D: 99 07 08
STA $080F,y             ; $27:91A0: 99 0F 08
LDA $0803,y             ; $27:91A3: B9 03 08
AND #$80                ; $27:91A6: 29 80
BEQ CODE_2791B8         ; $27:91A8: F0 0E
LDA $0802,y             ; $27:91AA: B9 02 08
PHA                     ; $27:91AD: 48
LDA $080A,y             ; $27:91AE: B9 0A 08
STA $0802,y             ; $27:91B1: 99 02 08
PLA                     ; $27:91B4: 68
STA $080A,y             ; $27:91B5: 99 0A 08

CODE_2791B8:
LDA $0807,y             ; $27:91B8: B9 07 08
AND #$80                ; $27:91BB: 29 80
BEQ CODE_2791CD         ; $27:91BD: F0 0E
LDA $0806,y             ; $27:91BF: B9 06 08
PHA                     ; $27:91C2: 48
LDA $080E,y             ; $27:91C3: B9 0E 08
STA $0806,y             ; $27:91C6: 99 06 08
PLA                     ; $27:91C9: 68
STA $080E,y             ; $27:91CA: 99 0E 08

CODE_2791CD:
REP #$20                ; $27:91CD: C2 20
TYA                     ; $27:91CF: 98
LSR A                   ; $27:91D0: 4A
LSR A                   ; $27:91D1: 4A
TAY                     ; $27:91D2: A8
SEP #$20                ; $27:91D3: E2 20
LDA #$00                ; $27:91D5: A9 00
STA $0A20,y             ; $27:91D7: 99 20 0A
STA $0A21,y             ; $27:91DA: 99 21 0A
STA $0A22,y             ; $27:91DD: 99 22 0A
STA $0A23,y             ; $27:91E0: 99 23 0A
SEP #$30                ; $27:91E3: E2 30
LDX $9B                 ; $27:91E5: A6 9B

CODE_2791E7:
RTS                     ; $27:91E7: 60

CODE_2791E8:
LDY $0671,x             ; $27:91E8: BC 71 06
LDA.w DATA_21B1AF,y     ; $27:91EB: B9 AF B1
AND #$10                ; $27:91EE: 29 10
BEQ CODE_2791FD         ; $27:91F0: F0 0B
LDA #$10                ; $27:91F2: A9 10
STA $06A6,x             ; $27:91F4: 9D A6 06
LDA #$07                ; $27:91F7: A9 07
STA $0661,x             ; $27:91F9: 9D 61 06
RTS                     ; $27:91FC: 60

CODE_2791FD:
LDA $9C                 ; $27:91FD: A5 9C
BNE CODE_27924E         ; $27:91FF: D0 4D
JSR CODE_279886         ; $27:9201: 20 86 98
JSL CODE_27983B         ; $27:9204: 22 3B 98 27
LDA $A7,x               ; $27:9208: B5 A7
AND #$04                ; $27:920A: 29 04
BEQ CODE_279237         ; $27:920C: F0 29
LDA $9E,x               ; $27:920E: B5 9E
BMI CODE_279237         ; $27:9210: 30 25
PHA                     ; $27:9212: 48
JSL CODE_278B67         ; $27:9213: 22 67 8B 27
LDA $8C,x               ; $27:9217: B5 8C
PHP                     ; $27:9219: 08
BPL CODE_279220         ; $27:921A: 10 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:921C: 22 59 A8 27

CODE_279220:
LSR A                   ; $27:9220: 4A
PLP                     ; $27:9221: 28
BPL CODE_279228         ; $27:9222: 10 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:9224: 22 59 A8 27

CODE_279228:
STA $8C,x               ; $27:9228: 95 8C
PLA                     ; $27:922A: 68
LSR A                   ; $27:922B: 4A
LSR A                   ; $27:922C: 4A

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:922D: 22 59 A8 27
CMP #$FE                ; $27:9231: C9 FE
BCS CODE_279237         ; $27:9233: B0 02
STA $9E,x               ; $27:9235: 95 9E

CODE_279237:
LDA $A7,x               ; $27:9237: B5 A7
AND #$08                ; $27:9239: 29 08
BEQ CODE_279241         ; $27:923B: F0 04
LDA #$10                ; $27:923D: A9 10
STA $9E,x               ; $27:923F: 95 9E

CODE_279241:
LDA $A7,x               ; $27:9241: B5 A7
AND #$03                ; $27:9243: 29 03
BEQ CODE_27924B         ; $27:9245: F0 04
JSL CODE_279905         ; $27:9247: 22 05 99 27

CODE_27924B:
JSR CODE_279916         ; $27:924B: 20 16 99

CODE_27924E:
JSR CODE_279394         ; $27:924E: 20 94 93

CODE_279251:
JSR CODE_279BDF         ; $27:9251: 20 DF 9B

CODE_279254:
LDA #$02                ; $27:9254: A9 02
STA $0669,x             ; $27:9256: 9D 69 06
LDA $1FF9,x             ; $27:9259: BD F9 1F
BEQ CODE_27926F         ; $27:925C: F0 11
JSL CODE_22C964         ; $27:925E: 22 64 C9 22

CODE_279262:
LDA $06A6,x             ; $27:9262: BD A6 06
CMP #$60                ; $27:9265: C9 60
BCS CODE_27926E         ; $27:9267: B0 05
AND #$07                ; $27:9269: 29 07
STA $06AB,x             ; $27:926B: 9D AB 06

CODE_27926E:
RTS                     ; $27:926E: 60

CODE_27926F:
LDA $0671,x             ; $27:926F: BD 71 06
CMP #$50                ; $27:9272: C9 50
BEQ CODE_27927A         ; $27:9274: F0 04
CMP #$55                ; $27:9276: C9 55
BNE CODE_279282         ; $27:9278: D0 08

CODE_27927A:
LDA $BD                 ; $27:927A: A5 BD
STA $0679,x             ; $27:927C: 9D 79 06
JMP CODE_279EA0         ; $27:927F: 4C A0 9E

CODE_279282:
JSR CODE_279EBF         ; $27:9282: 20 BF 9E
JSR CODE_27A9BF         ; $27:9285: 20 BF A9
LDY $0671,x             ; $27:9288: BC 71 06
CPY #$5C                ; $27:928B: C0 5C
BNE CODE_2792B3         ; $27:928D: D0 24
REP #$10                ; $27:928F: C2 10
LDY $C6,x               ; $27:9291: B4 C6
LDA #$74                ; $27:9293: A9 74
STA $0802,y             ; $27:9295: 99 02 08
INC A                   ; $27:9298: 1A
STA $080A,y             ; $27:9299: 99 0A 08
LDA #$76                ; $27:929C: A9 76
STA $0806,y             ; $27:929E: 99 06 08
INC A                   ; $27:92A1: 1A
STA $080E,y             ; $27:92A2: 99 0E 08
LDA $0807,y             ; $27:92A5: B9 07 08
AND #$BF                ; $27:92A8: 29 BF
STA $0807,y             ; $27:92AA: 99 07 08
STA $080F,y             ; $27:92AD: 99 0F 08
SEP #$10                ; $27:92B0: E2 10
RTS                     ; $27:92B2: 60

CODE_2792B3:
JSR CODE_279262         ; $27:92B3: 20 62 92
CPY #$70                ; $27:92B6: C0 70
BNE CODE_2792DB         ; $27:92B8: D0 21
LDY $0679,x             ; $27:92BA: BC 79 06
BMI CODE_2792DA         ; $27:92BD: 30 1B
REP #$10                ; $27:92BF: C2 10
LDY $C6,x               ; $27:92C1: B4 C6
LDA $0801,y             ; $27:92C3: B9 01 08
CLC                     ; $27:92C6: 18
ADC #$01                ; $27:92C7: 69 01
STA $0801,y             ; $27:92C9: 99 01 08
STA $0805,y             ; $27:92CC: 99 05 08
CLC                     ; $27:92CF: 18
ADC #$08                ; $27:92D0: 69 08
STA $0809,y             ; $27:92D2: 99 09 08
STA $080D,y             ; $27:92D5: 99 0D 08
SEP #$10                ; $27:92D8: E2 10

CODE_2792DA:
RTS                     ; $27:92DA: 60

CODE_2792DB:
CPY #$71                ; $27:92DB: C0 71
BEQ CODE_2792DA         ; $27:92DD: F0 FB
LDA $06A6,x             ; $27:92DF: BD A6 06
CMP #$50                ; $27:92E2: C9 50
BCS CODE_2792DA         ; $27:92E4: B0 F4
LSR A                   ; $27:92E6: 4A
LSR A                   ; $27:92E7: 4A
LSR A                   ; $27:92E8: 4A
LSR A                   ; $27:92E9: 4A
TAY                     ; $27:92EA: A8
LDA $06A6,x             ; $27:92EB: BD A6 06
AND.w DATA_21AFAB,y     ; $27:92EE: 39 AB AF
BEQ CODE_2792DA         ; $27:92F1: F0 E7
LDA #$01                ; $27:92F3: A9 01
LDY $0679,x             ; $27:92F5: BC 79 06
BMI CODE_2792FB         ; $27:92F8: 30 01
LSR A                   ; $27:92FA: 4A

CODE_2792FB:
REP #$30                ; $27:92FB: C2 30
LDY $C6,x               ; $27:92FD: B4 C6
AND #$00FF              ; $27:92FF: 29 FF 00
TAX                     ; $27:9302: AA
SEP #$20                ; $27:9303: E2 20
LDA $0801,y             ; $27:9305: B9 01 08
CMP #$F0                ; $27:9308: C9 F0
BEQ CODE_27931D         ; $27:930A: F0 11
CLC                     ; $27:930C: 18
ADC.w DATA_21AFB1,x     ; $27:930D: 7D B1 AF
CMP #$C5                ; $27:9310: C9 C5
BCS CODE_279331         ; $27:9312: B0 1D
STA $0811,y             ; $27:9314: 99 11 08
CLC                     ; $27:9317: 18
ADC #$08                ; $27:9318: 69 08
STA $0819,y             ; $27:931A: 99 19 08

CODE_27931D:
LDA $0805,y             ; $27:931D: B9 05 08
CMP #$F0                ; $27:9320: C9 F0
BEQ CODE_279331         ; $27:9322: F0 0D
CLC                     ; $27:9324: 18
ADC.w DATA_21AFB1,x     ; $27:9325: 7D B1 AF
STA $0815,y             ; $27:9328: 99 15 08
CLC                     ; $27:932B: 18
ADC #$08                ; $27:932C: 69 08
STA $081D,y             ; $27:932E: 99 1D 08

CODE_279331:
LDA $0800,y             ; $27:9331: B9 00 08
SEC                     ; $27:9334: 38
SBC #$03                ; $27:9335: E9 03
STA $0810,y             ; $27:9337: 99 10 08
STA $0818,y             ; $27:933A: 99 18 08
LDA $0804,y             ; $27:933D: B9 04 08
CLC                     ; $27:9340: 18
ADC #$03                ; $27:9341: 69 03
STA $0814,y             ; $27:9343: 99 14 08
STA $081C,y             ; $27:9346: 99 1C 08
LDA $0802,y             ; $27:9349: B9 02 08
AND #$80                ; $27:934C: 29 80
ORA #$26                ; $27:934E: 09 26
STA $0813,y             ; $27:9350: 99 13 08
STA $081B,y             ; $27:9353: 99 1B 08
ORA #$40                ; $27:9356: 09 40
STA $0817,y             ; $27:9358: 99 17 08
STA $081F,y             ; $27:935B: 99 1F 08
LDA #$F8                ; $27:935E: A9 F8
STA $0812,y             ; $27:9360: 99 12 08
STA $0816,y             ; $27:9363: 99 16 08
INC A                   ; $27:9366: 1A
STA $081A,y             ; $27:9367: 99 1A 08
STA $081E,y             ; $27:936A: 99 1E 08
REP #$20                ; $27:936D: C2 20
PHY                     ; $27:936F: 5A
TYA                     ; $27:9370: 98
LSR A                   ; $27:9371: 4A
LSR A                   ; $27:9372: 4A
TAY                     ; $27:9373: A8
SEP #$20                ; $27:9374: E2 20
LDA $0A20,y             ; $27:9376: B9 20 0A
STA $0A24,y             ; $27:9379: 99 24 0A
LDA $0A21,y             ; $27:937C: B9 21 0A
STA $0A25,y             ; $27:937F: 99 25 0A
LDA $0A22,y             ; $27:9382: B9 22 0A
STA $0A26,y             ; $27:9385: 99 26 0A
LDA $0A23,y             ; $27:9388: B9 23 0A
STA $0A27,y             ; $27:938B: 99 27 0A
PLY                     ; $27:938E: 7A
SEP #$30                ; $27:938F: E2 30
LDX $9B                 ; $27:9391: A6 9B
RTS                     ; $27:9393: 60

CODE_279394:
TXA                     ; $27:9394: 8A
CLC                     ; $27:9395: 18
ADC $15                 ; $27:9396: 65 15
LSR A                   ; $27:9398: 4A
BCS CODE_2793E0         ; $27:9399: B0 45
JSL CODE_27A85F         ; $27:939B: 22 5F A8 27
BNE CODE_2793E0         ; $27:939F: D0 3F
JSL CODE_27A439         ; $27:93A1: 22 39 A4 27
TXA                     ; $27:93A5: 8A
BEQ CODE_2793E0         ; $27:93A6: F0 38
DEX                     ; $27:93A8: CA

CODE_2793A9:
LDY $0671,x             ; $27:93A9: BC 71 06
LDA.w DATA_21AE78,y     ; $27:93AC: B9 78 AE
AND #$10                ; $27:93AF: 29 10
BEQ CODE_2793DB         ; $27:93B1: F0 28
LDA $0661,x             ; $27:93B3: BD 61 06
CMP #$02                ; $27:93B6: C9 02
BNE CODE_2793DB         ; $27:93B8: D0 21
JSL CODE_27A85F         ; $27:93BA: 22 5F A8 27
BNE CODE_2793DB         ; $27:93BE: D0 1B
JSL CODE_27A413         ; $27:93C0: 22 13 A4 27
JSL CODE_27A45F         ; $27:93C4: 22 5F A4 27
BCC CODE_2793DB         ; $27:93C8: 90 11
LDY $9B                 ; $27:93CA: A4 9B
LDA $7A,x               ; $27:93CC: B5 7A
CMP $007A,y             ; $27:93CE: D9 7A 00
LDY #$00                ; $27:93D1: A0 00
BCC CODE_2793D7         ; $27:93D3: 90 02
LDY #$40                ; $27:93D5: A0 40

CODE_2793D7:
TYA                     ; $27:93D7: 98
STA $0679,x             ; $27:93D8: 9D 79 06

CODE_2793DB:
DEX                     ; $27:93DB: CA
BPL CODE_2793A9         ; $27:93DC: 10 CB
LDX $9B                 ; $27:93DE: A6 9B

CODE_2793E0:
RTS                     ; $27:93E0: 60

CODE_2793E1:
LDA $9C                 ; $27:93E1: A5 9C
BEQ CODE_2793E8         ; $27:93E3: F0 03
JMP CODE_2794B6         ; $27:93E5: 4C B6 94

CODE_2793E8:
JSL CODE_27983B         ; $27:93E8: 22 3B 98 27
JSL CODE_27A27C         ; $27:93EC: 22 7C A2 27
LDA $A7,x               ; $27:93F0: B5 A7
AND #$04                ; $27:93F2: 29 04
BEQ CODE_27940B         ; $27:93F4: F0 15
LDA $8C,x               ; $27:93F6: B5 8C
BNE CODE_279403         ; $27:93F8: D0 09

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:93FA: 22 37 A8 27
LDA.w DATA_21AFB3,y     ; $27:93FE: B9 B3 AF
STA $8C,x               ; $27:9401: 95 8C

CODE_279403:
JSL CODE_278B67         ; $27:9403: 22 67 8B 27
LDA #$0C                ; $27:9407: A9 0C
STA $9E,x               ; $27:9409: 95 9E

CODE_27940B:
LDA $A7,x               ; $27:940B: B5 A7
AND #$03                ; $27:940D: 29 03
BNE CODE_279414         ; $27:940F: D0 03
JMP CODE_27945B         ; $27:9411: 4C 5B 94

CODE_279414:
LDA $007A,x             ; $27:9414: BD 7A 00
LDY $8C,x               ; $27:9417: B4 8C
BPL CODE_279421         ; $27:9419: 10 06
CMP #$06                ; $27:941B: C9 06
BCC CODE_279448         ; $27:941D: 90 29
BCS CODE_279425         ; $27:941F: B0 04

CODE_279421:
CMP #$E4                ; $27:9421: C9 E4
BCS CODE_279448         ; $27:9423: B0 23

CODE_279425:
JSL CODE_27A85F         ; $27:9425: 22 5F A8 27
BNE CODE_279448         ; $27:9429: D0 1D
LDA $1F78               ; $27:942B: AD 78 1F
STA $0C                 ; $27:942E: 85 0C
LDA $1F79               ; $27:9430: AD 79 1F
STA $0D                 ; $27:9433: 85 0D
LDA $1F7A               ; $27:9435: AD 7A 1F
STA $0E                 ; $27:9438: 85 0E
LDA $1F7B               ; $27:943A: AD 7B 1F
STA $0F                 ; $27:943D: 85 0F
LDA $1F77               ; $27:943F: AD 77 1F
JSL CODE_23D83B         ; $27:9442: 22 3B D8 23
LDX $9B                 ; $27:9446: A6 9B

CODE_279448:
LDA #$01                ; $27:9448: A9 01
STA $1200               ; $27:944A: 8D 00 12
LDA $0671,x             ; $27:944D: BD 71 06
CMP #$5C                ; $27:9450: C9 5C
BNE CODE_279457         ; $27:9452: D0 03
JMP CODE_279A55         ; $27:9454: 4C 55 9A

CODE_279457:
JSL CODE_279905         ; $27:9457: 22 05 99 27

CODE_27945B:
JSR CODE_279916         ; $27:945B: 20 16 99
TXA                     ; $27:945E: 8A
CLC                     ; $27:945F: 18
ADC $15                 ; $27:9460: 65 15
LSR A                   ; $27:9462: 4A
BCC CODE_2794B6         ; $27:9463: 90 51
JSR CODE_27A6EF         ; $27:9465: 20 EF A6
BCC CODE_2794B6         ; $27:9468: 90 4C
LDA #$13                ; $27:946A: A9 13
ORA $05F5,y             ; $27:946C: 19 F5 05
CMP #$19                ; $27:946F: C9 19
BCC CODE_279479         ; $27:9471: 90 06
CMP #$1B                ; $27:9473: C9 1B
BCS CODE_27947C         ; $27:9475: B0 05
LDA #$19                ; $27:9477: A9 19

CODE_279479:
STA $1200               ; $27:9479: 8D 00 12

CODE_27947C:
LDA $8C,x               ; $27:947C: B5 8C
ASL A                   ; $27:947E: 0A
LDA #$10                ; $27:947F: A9 10
BCC CODE_279485         ; $27:9481: 90 02
LDA #$F0                ; $27:9483: A9 F0

CODE_279485:
STA $008C,y             ; $27:9485: 99 8C 00
LDA $0661,y             ; $27:9488: B9 61 06
CMP #$05                ; $27:948B: C9 05
BNE CODE_2794A5         ; $27:948D: D0 16
LDA $05F5,y             ; $27:948F: B9 F5 05
JSL CODE_278A8A         ; $27:9492: 22 8A 8A 27
JSR CODE_279526         ; $27:9496: 20 26 95
LDA $008C,y             ; $27:9499: B9 8C 00
ASL A                   ; $27:949C: 0A
LDA #$10                ; $27:949D: A9 10
BCS CODE_2794A3         ; $27:949F: B0 02
LDA #$F0                ; $27:94A1: A9 F0

CODE_2794A3:
STA $8C,x               ; $27:94A3: 95 8C

CODE_2794A5:
TYA                     ; $27:94A5: 98
TAX                     ; $27:94A6: AA
JSR CODE_279526         ; $27:94A7: 20 26 95
LDX $9B                 ; $27:94AA: A6 9B
LDA $05F5,x             ; $27:94AC: BD F5 05
INC $05F5,x             ; $27:94AF: FE F5 05
JSL CODE_278A86         ; $27:94B2: 22 86 8A 27

CODE_2794B6:
JSR CODE_279BDF         ; $27:94B6: 20 DF 9B
LDA $0671,x             ; $27:94B9: BD 71 06
CMP #$5C                ; $27:94BC: C9 5C
BEQ CODE_2794ED         ; $27:94BE: F0 2D
CMP #$7A                ; $27:94C0: C9 7A
BCS CODE_279521         ; $27:94C2: B0 5D
LDA $0565               ; $27:94C4: AD 65 05
LSR A                   ; $27:94C7: 4A
AND #$03                ; $27:94C8: 29 03
TAY                     ; $27:94CA: A8
LDA $0679,x             ; $27:94CB: BD 79 06
AND #$BF                ; $27:94CE: 29 BF
ORA.w DATA_21AFB5,y     ; $27:94D0: 19 B5 AF
STA $0679,x             ; $27:94D3: 9D 79 06
LDA.w DATA_21AFB9,y     ; $27:94D6: B9 B9 AF
STA $0669,x             ; $27:94D9: 9D 69 06
TYA                     ; $27:94DC: 98
AND #$01                ; $27:94DD: 29 01
BNE CODE_2794E6         ; $27:94DF: D0 05
JSR CODE_279EBF         ; $27:94E1: 20 BF 9E
BRA CODE_2794E9         ; $27:94E4: 80 03

CODE_2794E6:
JSR CODE_279EA0         ; $27:94E6: 20 A0 9E

CODE_2794E9:
JSR CODE_27A9BF         ; $27:94E9: 20 BF A9
RTS                     ; $27:94EC: 60

CODE_2794ED:
LDA $15                 ; $27:94ED: A5 15
LSR A                   ; $27:94EF: 4A
STA $0769,x             ; $27:94F0: 9D 69 07
JSR CODE_279EBF         ; $27:94F3: 20 BF 9E
LDY $0671,x             ; $27:94F6: BC 71 06
CPY #$5C                ; $27:94F9: C0 5C
BNE CODE_279520         ; $27:94FB: D0 23
REP #$10                ; $27:94FD: C2 10
LDY $C6,x               ; $27:94FF: B4 C6
LDA #$74                ; $27:9501: A9 74
STA $0802,y             ; $27:9503: 99 02 08
INC A                   ; $27:9506: 1A
STA $080A,y             ; $27:9507: 99 0A 08
LDA #$76                ; $27:950A: A9 76
STA $0806,y             ; $27:950C: 99 06 08
INC A                   ; $27:950F: 1A
STA $080E,y             ; $27:9510: 99 0E 08
LDA $0807,y             ; $27:9513: B9 07 08
AND #$BF                ; $27:9516: 29 BF
STA $0807,y             ; $27:9518: 99 07 08
STA $080F,y             ; $27:951B: 99 0F 08
SEP #$10                ; $27:951E: E2 10

CODE_279520:
RTS                     ; $27:9520: 60

CODE_279521:
JSL CODE_22C964         ; $27:9521: 22 64 C9 22
RTS                     ; $27:9525: 60

CODE_279526:
LDA #$06                ; $27:9526: A9 06
STA $0661,x             ; $27:9528: 9D 61 06
LDA #$D0                ; $27:952B: A9 D0
STA $9E,x               ; $27:952D: 95 9E
LDA $71,x               ; $27:952F: B5 71
STA $1A47               ; $27:9531: 8D 47 1A
LDA $5F,x               ; $27:9534: B5 5F
STA $1A48               ; $27:9536: 8D 48 1A
LDA $44,x               ; $27:9539: B5 44
STA $027E               ; $27:953B: 8D 7E 02
LDA #$0A                ; $27:953E: A9 0A
STA $1A46               ; $27:9540: 8D 46 1A
RTS                     ; $27:9543: 60

CODE_279544:
LDA $1F9C               ; $27:9544: AD 9C 1F
STA $1F9D               ; $27:9547: 8D 9D 1F
LDA $1F9F               ; $27:954A: AD 9F 1F
STA $1FA0               ; $27:954D: 8D A0 1F
LDA $1FAB               ; $27:9550: AD AB 1F
STA $1FAC               ; $27:9553: 8D AC 1F
LDA $1FA2               ; $27:9556: AD A2 1F
STA $1FA3               ; $27:9559: 8D A3 1F
LDA $1FA5               ; $27:955C: AD A5 1F
STA $1FA6               ; $27:955F: 8D A6 1F
LDA $1FA8               ; $27:9562: AD A8 1F
STA $1FA9               ; $27:9565: 8D A9 1F
LDA $1FAE               ; $27:9568: AD AE 1F
STA $1FAF               ; $27:956B: 8D AF 1F
LDA $1FB1               ; $27:956E: AD B1 1F
STA $1FB2               ; $27:9571: 8D B2 1F
LDA $DF                 ; $27:9574: A5 DF
STA $E0                 ; $27:9576: 85 E0
LDA $02AE               ; $27:9578: AD AE 02
STA $02AF               ; $27:957B: 8D AF 02
RTL                     ; $27:957E: 6B
LDA $1F77               ; $27:957F: AD 77 1F

CODE_279582:
STA $07                 ; $27:9582: 85 07
LDA $1F78               ; $27:9584: AD 78 1F
STA $0C                 ; $27:9587: 85 0C
LDA $1F79               ; $27:9589: AD 79 1F
STA $0D                 ; $27:958C: 85 0D
LDA $1F7A               ; $27:958E: AD 7A 1F
STA $0E                 ; $27:9591: 85 0E
LDA $1F7B               ; $27:9593: AD 7B 1F
STA $0F                 ; $27:9596: 85 0F
LDA $07                 ; $27:9598: A5 07
JSL CODE_23D83B         ; $27:959A: 22 3B D8 23
LDX $9B                 ; $27:959E: A6 9B
RTL                     ; $27:95A0: 6B

CODE_2795A1:
LDA $BF                 ; $27:95A1: A5 BF
BEQ CODE_2795A8         ; $27:95A3: F0 03
JMP CODE_27971E         ; $27:95A5: 4C 1E 97

CODE_2795A8:
JSR CODE_279886         ; $27:95A8: 20 86 98
BIT $17                 ; $27:95AB: 24 17
BVC CODE_2795B2         ; $27:95AD: 50 03

CODE_2795AF:
JMP CODE_279670         ; $27:95AF: 4C 70 96

CODE_2795B2:
LDA $0571               ; $27:95B2: AD 71 05
BNE CODE_2795AF         ; $27:95B5: D0 F8
LDA #$03                ; $27:95B7: A9 03
STA $1200               ; $27:95B9: 8D 00 12
LDA #$0C                ; $27:95BC: A9 0C
STA $0557               ; $27:95BE: 8D 57 05
LDA #$10                ; $27:95C1: A9 10
STA $0520,x             ; $27:95C3: 9D 20 05
LDA $0671,x             ; $27:95C6: BD 71 06
CMP #$50                ; $27:95C9: C9 50
BEQ CODE_2795D1         ; $27:95CB: F0 04
CMP #$55                ; $27:95CD: C9 55
BNE CODE_2795F7         ; $27:95CF: D0 26

CODE_2795D1:
LDA #$02                ; $27:95D1: A9 02
STA $0661,x             ; $27:95D3: 9D 61 06
LDA #$E0                ; $27:95D6: A9 E0
STA $9E,x               ; $27:95D8: 95 9E

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:95DA: 22 37 A8 27
LDA.w DATA_21AFC1,y     ; $27:95DE: B9 C1 AF
STA $8C,x               ; $27:95E1: 95 8C
EOR $8B                 ; $27:95E3: 45 8B
BMI CODE_2795F4         ; $27:95E5: 30 0D
LDA $8B                 ; $27:95E7: A5 8B
STA $00                 ; $27:95E9: 85 00
ASL $00                 ; $27:95EB: 06 00
ROR A                   ; $27:95ED: 6A
CLC                     ; $27:95EE: 18
ADC.w DATA_21AFBD,y     ; $27:95EF: 79 BD AF
STA $8C,x               ; $27:95F2: 95 8C

CODE_2795F4:
JMP CODE_279EA0         ; $27:95F4: 4C A0 9E

CODE_2795F7:
LDA #$00                ; $27:95F7: A9 00
STA $05F5,x             ; $27:95F9: 9D F5 05
LDA $0661,x             ; $27:95FC: BD 61 06
CMP #$04                ; $27:95FF: C9 04
BNE CODE_27963E         ; $27:9601: D0 3B
LDA $0671,x             ; $27:9603: BD 71 06
CMP #$5C                ; $27:9606: C9 5C
BEQ CODE_279634         ; $27:9608: F0 2A
LDY #$01                ; $27:960A: A0 01
LDA $BD                 ; $27:960C: A5 BD
BNE CODE_279612         ; $27:960E: D0 02
LDY #$FF                ; $27:9610: A0 FF

CODE_279612:
STY $8C,x               ; $27:9612: 94 8C
JSL CODE_278B93         ; $27:9614: 22 93 8B 27
LDA $A7,x               ; $27:9618: B5 A7
AND #$03                ; $27:961A: 29 03
BEQ CODE_279634         ; $27:961C: F0 16
LDA #$05                ; $27:961E: A9 05
JSL CODE_278A94         ; $27:9620: 22 94 8A 27
LDA #$06                ; $27:9624: A9 06
STA $0661,x             ; $27:9626: 9D 61 06
LDA #$C0                ; $27:9629: A9 C0
STA $9E,x               ; $27:962B: 95 9E
LDA #$00                ; $27:962D: A9 00
STA $8C,x               ; $27:962F: 95 8C
JMP CODE_27971E         ; $27:9631: 4C 1E 97

CODE_279634:
LDY #$00                ; $27:9634: A0 00
LDA $BD                 ; $27:9636: A5 BD
BEQ CODE_27963B         ; $27:9638: F0 01
INY                     ; $27:963A: C8

CODE_27963B:
JMP CODE_279647         ; $27:963B: 4C 47 96

; Subroutine: Player X Position relative to sprite

CODE_27963E:
JSL CODE_27A837         ; $27:963E: 22 37 A8 27
LDA.w DATA_21AFBF,y     ; $27:9642: B9 BF AF
STA $BD                 ; $27:9645: 85 BD

CODE_279647:
LDA.w DATA_21AFBD,y     ; $27:9647: B9 BD AF
STA $8C,x               ; $27:964A: 95 8C
EOR $8B                 ; $27:964C: 45 8B
BMI CODE_27965D         ; $27:964E: 30 0D
LDA $8B                 ; $27:9650: A5 8B
STA $00                 ; $27:9652: 85 00
ASL $00                 ; $27:9654: 06 00
ROR A                   ; $27:9656: 6A
CLC                     ; $27:9657: 18
ADC.w DATA_21AFBD,y     ; $27:9658: 79 BD AF
STA $8C,x               ; $27:965B: 95 8C

CODE_27965D:
LDA $0661,x             ; $27:965D: BD 61 06
CMP #$06                ; $27:9660: C9 06
BEQ CODE_279669         ; $27:9662: F0 05
LDA #$05                ; $27:9664: A9 05
STA $0661,x             ; $27:9666: 9D 61 06

CODE_279669:
LDA #$00                ; $27:9669: A9 00
STA $9E,x               ; $27:966B: 95 9E
JMP CODE_27971E         ; $27:966D: 4C 1E 97

CODE_279670:
LDA #$01                ; $27:9670: A9 01
STA $06A4               ; $27:9672: 8D A4 06
LDA $0571               ; $27:9675: AD 71 05
BEQ CODE_27967E         ; $27:9678: F0 04
LDY #$0A                ; $27:967A: A0 0A
BNE CODE_27969B         ; $27:967C: D0 1D

CODE_27967E:
LDY #$00                ; $27:967E: A0 00
LDA $BD                 ; $27:9680: A5 BD
BNE CODE_279685         ; $27:9682: D0 01
INY                     ; $27:9684: C8

CODE_279685:
LDA $1FF9,x             ; $27:9685: BD F9 1F
BEQ CODE_27968F         ; $27:9688: F0 05
INY                     ; $27:968A: C8
INY                     ; $27:968B: C8
INY                     ; $27:968C: C8
INY                     ; $27:968D: C8
INY                     ; $27:968E: C8

CODE_27968F:
LDA $0558               ; $27:968F: AD 58 05
BEQ CODE_2796A4         ; $27:9692: F0 10
INY                     ; $27:9694: C8
INY                     ; $27:9695: C8
CMP #$05                ; $27:9696: C9 05
BCC CODE_27969B         ; $27:9698: 90 01
INY                     ; $27:969A: C8

CODE_27969B:
REP #$20                ; $27:969B: C2 20
LDA #$0020              ; $27:969D: A9 20 00
STA $C6,x               ; $27:96A0: 95 C6
SEP #$20                ; $27:96A2: E2 20

CODE_2796A4:
LDA $5E                 ; $27:96A4: A5 5E
CLC                     ; $27:96A6: 18
ADC.w DATA_21AFC3,y     ; $27:96A7: 79 C3 AF
STA $5F,x               ; $27:96AA: 95 5F
LDA $43                 ; $27:96AC: A5 43
ADC.w DATA_21AFCE,y     ; $27:96AE: 79 CE AF
STA $44,x               ; $27:96B1: 95 44
LDA #$FE                ; $27:96B3: A9 FE
LDY $1FF9,x             ; $27:96B5: BC F9 1F
BNE CODE_2796C2         ; $27:96B8: D0 08
LDA #$0D                ; $27:96BA: A9 0D
LDY $BB                 ; $27:96BC: A4 BB
BNE CODE_2796C2         ; $27:96BE: D0 02
LDA #$0F                ; $27:96C0: A9 0F

CODE_2796C2:
PHA                     ; $27:96C2: 48
CLC                     ; $27:96C3: 18
ADC $70                 ; $27:96C4: 65 70
STA $71,x               ; $27:96C6: 95 71
LDY #$00                ; $27:96C8: A0 00
PLA                     ; $27:96CA: 68
BPL CODE_2796CE         ; $27:96CB: 10 01
DEY                     ; $27:96CD: 88

CODE_2796CE:
TYA                     ; $27:96CE: 98
ADC $55                 ; $27:96CF: 65 55
STA $56,x               ; $27:96D1: 95 56
LDA $8B                 ; $27:96D3: A5 8B
STA $8C,x               ; $27:96D5: 95 8C
LDA $9D                 ; $27:96D7: A5 9D
STA $9E,x               ; $27:96D9: 95 9E
JSL CODE_278B93         ; $27:96DB: 22 93 8B 27
JSL CODE_279DC2         ; $27:96DF: 22 C2 9D 27
JSR CODE_27A6EF         ; $27:96E3: 20 EF A6
BCC CODE_27971E         ; $27:96E6: 90 36
LDA $0520,x             ; $27:96E8: BD 20 05
ORA $0571               ; $27:96EB: 0D 71 05
BNE CODE_27971E         ; $27:96EE: D0 2E
LDA #$03                ; $27:96F0: A9 03
STA $1200               ; $27:96F2: 8D 00 12
LDA #$06                ; $27:96F5: A9 06
STA $0661,x             ; $27:96F7: 9D 61 06
LDA #$D0                ; $27:96FA: A9 D0
STA $9E,x               ; $27:96FC: 95 9E
LDA #$06                ; $27:96FE: A9 06
STA $0661,y             ; $27:9700: 99 61 06
LDA #$D0                ; $27:9703: A9 D0
STA $009E,y             ; $27:9705: 99 9E 00
LDA #$00                ; $27:9708: A9 00
JSL CODE_278A8A         ; $27:970A: 22 8A 8A 27
LDA #$10                ; $27:970E: A9 10
STA $0520,x             ; $27:9710: 9D 20 05
TYA                     ; $27:9713: 98
TAX                     ; $27:9714: AA

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:9715: 22 37 A8 27
LDA.w DATA_21AFD9,y     ; $27:9719: B9 D9 AF
STA $8C,x               ; $27:971C: 95 8C

CODE_27971E:
LDX $9B                 ; $27:971E: A6 9B
LDA $BF                 ; $27:9720: A5 BF
BNE CODE_27972B         ; $27:9722: D0 07
LDA $0851               ; $27:9724: AD 51 08
CMP #$F0                ; $27:9727: C9 F0
BEQ CODE_279749         ; $27:9729: F0 1E

CODE_27972B:
LDA $0679,x             ; $27:972B: BD 79 06
ORA #$20                ; $27:972E: 09 20
STA $D8                 ; $27:9730: 85 D8
LDA $0571               ; $27:9732: AD 71 05
AND #$80                ; $27:9735: 29 80
BEQ CODE_279741         ; $27:9737: F0 08
LDA $D8                 ; $27:9739: A5 D8
AND #$CF                ; $27:973B: 29 CF
ORA #$10                ; $27:973D: 09 10
STA $D8                 ; $27:973F: 85 D8

CODE_279741:
LDA $D8                 ; $27:9741: A5 D8
STA $0679,x             ; $27:9743: 9D 79 06
JSR CODE_279254         ; $27:9746: 20 54 92

CODE_279749:
RTS                     ; $27:9749: 60

CODE_27974A:
JSR CODE_2797F9         ; $27:974A: 20 F9 97
LDY $0671,x             ; $27:974D: BC 71 06
LDA.w DATA_21B317,y     ; $27:9750: B9 17 B3
AND #$0F                ; $27:9753: 29 0F
BEQ CODE_279762         ; $27:9755: F0 0B
CPX #$05                ; $27:9757: E0 05
BCS CODE_279762         ; $27:9759: B0 07
PHA                     ; $27:975B: 48
LDA #$02                ; $27:975C: A9 02
STA $0669,x             ; $27:975E: 9D 69 06
PLA                     ; $27:9761: 68

; ExecutePtrShort

CODE_279762:
JSL CODE_20FB1F         ; $27:9762: 22 1F FB 20
dw CODE_27977A
dw CODE_2797B8
dw CODE_2797B2
dw CODE_2797AC
dw CODE_2797A5
dw CODE_279781
dw CODE_27978D
dw CODE_279794
dw CODE_27979F
dw CODE_279788

CODE_27977A:
JSL CODE_279D6E         ; $27:977A: 22 6E 9D 27
JMP CODE_2797BB         ; $27:977E: 4C BB 97

CODE_279781:
JSL CODE_279D44         ; $27:9781: 22 44 9D 27
JMP CODE_2797BB         ; $27:9785: 4C BB 97

CODE_279788:
JSL CODE_279D44         ; $27:9788: 22 44 9D 27
RTS                     ; $27:978C: 60

CODE_27978D:
JSL CODE_22C964         ; $27:978D: 22 64 C9 22
JMP CODE_2797BB         ; $27:9791: 4C BB 97

CODE_279794:
LDA #$08                ; $27:9794: A9 08
STA $0661,x             ; $27:9796: 9D 61 06
LDA #$1F                ; $27:9799: A9 1F
STA $0518,x             ; $27:979B: 9D 18 05
RTS                     ; $27:979E: 60

CODE_27979F:
JSR CODE_279EA0         ; $27:979F: 20 A0 9E
JMP CODE_2797F0         ; $27:97A2: 4C F0 97

CODE_2797A5:
JSL CODE_279EE1         ; $27:97A5: 22 E1 9E 27
JMP CODE_2797BB         ; $27:97A9: 4C BB 97

CODE_2797AC:
JSR CODE_279F11         ; $27:97AC: 20 11 9F
JMP CODE_2797BB         ; $27:97AF: 4C BB 97

CODE_2797B2:
JSR CODE_279EBF         ; $27:97B2: 20 BF 9E
JMP CODE_2797BB         ; $27:97B5: 4C BB 97

CODE_2797B8:
JSR CODE_279EA0         ; $27:97B8: 20 A0 9E

CODE_2797BB:
LDA $9C                 ; $27:97BB: A5 9C
BNE CODE_2797F8         ; $27:97BD: D0 39
LDA $06EB,x             ; $27:97BF: BD EB 06
BEQ CODE_2797E8         ; $27:97C2: F0 24
INC $06EB,x             ; $27:97C4: FE EB 06
CMP #$90                ; $27:97C7: C9 90
BNE CODE_2797CE         ; $27:97C9: D0 03
JMP CODE_279C33         ; $27:97CB: 4C 33 9C

CODE_2797CE:
LDA #$04                ; $27:97CE: A9 04
STA $9E,x               ; $27:97D0: 95 9E
JSL CODE_27A7E4         ; $27:97D2: 22 E4 A7 27
LDA $0679,x             ; $27:97D6: BD 79 06
AND #$CF                ; $27:97D9: 29 CF
ORA #$10                ; $27:97DB: 09 10
STA $0679,x             ; $27:97DD: 9D 79 06
CPX #$05                ; $27:97E0: E0 05
BCC CODE_2797E7         ; $27:97E2: 90 03
JMP CODE_27A31F         ; $27:97E4: 4C 1F A3

CODE_2797E7:
RTS                     ; $27:97E7: 60

CODE_2797E8:
LDA $0679,x             ; $27:97E8: BD 79 06
ORA #$80                ; $27:97EB: 09 80
STA $0679,x             ; $27:97ED: 9D 79 06

CODE_2797F0:
LDA $9C                 ; $27:97F0: A5 9C
BNE CODE_2797F8         ; $27:97F2: D0 04
JSL CODE_27983B         ; $27:97F4: 22 3B 98 27

CODE_2797F8:
RTS                     ; $27:97F8: 60

CODE_2797F9:
LDA $0425               ; $27:97F9: AD 25 04
BEQ CODE_279804         ; $27:97FC: F0 06
LDA $83,x               ; $27:97FE: B5 83
CMP #$C8                ; $27:9800: C9 C8
BCC CODE_2797F8         ; $27:9802: 90 F4

CODE_279804:
LDA $56,x               ; $27:9804: B5 56
CMP #$02                ; $27:9806: C9 02
BMI CODE_2797F8         ; $27:9808: 30 EE
PLA                     ; $27:980A: 68
PLA                     ; $27:980B: 68

CODE_27980C:
JMP CODE_279C5F         ; $27:980C: 4C 5F 9C

CODE_27980F:
LDA $06A6,x             ; $27:980F: BD A6 06
BEQ CODE_279838         ; $27:9812: F0 24
JSL CODE_27983B         ; $27:9814: 22 3B 98 27
LDA $A7,x               ; $27:9818: B5 A7
AND #$04                ; $27:981A: 29 04
BEQ CODE_279824         ; $27:981C: F0 06
JSL CODE_278B67         ; $27:981E: 22 67 8B 27
STA $8C,x               ; $27:9822: 95 8C

CODE_279824:
LDA #$03                ; $27:9824: A9 03
STA $0669,x             ; $27:9826: 9D 69 06
LDA $0671,x             ; $27:9829: BD 71 06
CMP #$72                ; $27:982C: C9 72
BNE CODE_279833         ; $27:982E: D0 03
JMP CODE_279EBF         ; $27:9830: 4C BF 9E

CODE_279833:
JSL CODE_22C964         ; $27:9833: 22 64 C9 22
RTS                     ; $27:9837: 60

CODE_279838:
JMP CODE_279C5F         ; $27:9838: 4C 5F 9C

CODE_27983B:
LDA $8C,x               ; $27:983B: B5 8C
PHA                     ; $27:983D: 48
LDY $06B7,x             ; $27:983E: BC B7 06
BEQ CODE_27984D         ; $27:9841: F0 0A
LDY $0661,x             ; $27:9843: BC 61 06
CPY #$02                ; $27:9846: C0 02
BEQ CODE_27984D         ; $27:9848: F0 03
ASL A                   ; $27:984A: 0A
ROR $8C,x               ; $27:984B: 76 8C

CODE_27984D:
JSL CODE_27A7EF         ; $27:984D: 22 EF A7 27
PLA                     ; $27:9851: 68
STA $8C,x               ; $27:9852: 95 8C
JSL CODE_27A7E4         ; $27:9854: 22 E4 A7 27
JSL CODE_278B9B         ; $27:9858: 22 9B 8B 27
LDY $06B7,x             ; $27:985C: BC B7 06
LDA $9E,x               ; $27:985F: B5 9E
BPL CODE_279871         ; $27:9861: 10 0E
CPY #$00                ; $27:9863: C0 00
BEQ CODE_279871         ; $27:9865: F0 0A
CMP #$E8                ; $27:9867: C9 E8
BCS CODE_279871         ; $27:9869: B0 06
LDA #$E8                ; $27:986B: A9 E8
STA $9E,x               ; $27:986D: 95 9E
BNE CODE_279871         ; $27:986F: D0 00

CODE_279871:
LDA $9E,x               ; $27:9871: B5 9E
CLC                     ; $27:9873: 18
ADC.w DATA_21AFDD,y     ; $27:9874: 79 DD AF
STA $9E,x               ; $27:9877: 95 9E
BMI CODE_279885         ; $27:9879: 30 0A
CMP.w DATA_21AFDB,y     ; $27:987B: D9 DB AF
BCC CODE_279885         ; $27:987E: 90 05
LDA.w DATA_21AFDB,y     ; $27:9880: B9 DB AF
STA $9E,x               ; $27:9883: 95 9E

CODE_279885:
RTL                     ; $27:9885: 6B

CODE_279886:
LDA $0671,x             ; $27:9886: BD 71 06
CMP #$50                ; $27:9889: C9 50
BEQ CODE_279891         ; $27:988B: F0 04
CMP #$55                ; $27:988D: C9 55
BNE CODE_2798A8         ; $27:988F: D0 17

CODE_279891:
LDA $0518,x             ; $27:9891: BD 18 05
BNE CODE_2798A0         ; $27:9894: D0 0A
LDA #$02                ; $27:9896: A9 02
STA $0661,x             ; $27:9898: 9D 61 06
JSL CODE_28D485         ; $27:989B: 22 85 D4 28
RTS                     ; $27:989F: 60

CODE_2798A0:
CMP #$40                ; $27:98A0: C9 40
BCS CODE_2798A7         ; $27:98A2: B0 03
STA $0769,x             ; $27:98A4: 9D 69 07

CODE_2798A7:
RTS                     ; $27:98A7: 60

CODE_2798A8:
CMP #$5C                ; $27:98A8: C9 5C
BNE CODE_2798C7         ; $27:98AA: D0 1B
LDA $06A6,x             ; $27:98AC: BD A6 06
BNE CODE_2798B4         ; $27:98AF: D0 03
JMP CODE_279794         ; $27:98B1: 4C 94 97

CODE_2798B4:
CMP #$60                ; $27:98B4: C9 60
BCS CODE_2798C3         ; $27:98B6: B0 0B
CMP #$30                ; $27:98B8: C9 30
BCS CODE_2798C2         ; $27:98BA: B0 06
CMP #$10                ; $27:98BC: C9 10
BCS CODE_2798C1         ; $27:98BE: B0 01
LSR A                   ; $27:98C0: 4A

CODE_2798C1:
LSR A                   ; $27:98C1: 4A

CODE_2798C2:
LSR A                   ; $27:98C2: 4A

CODE_2798C3:
STA $0769,x             ; $27:98C3: 9D 69 07
RTS                     ; $27:98C6: 60

CODE_2798C7:
LDA $06A6,x             ; $27:98C7: BD A6 06
BNE CODE_279904         ; $27:98CA: D0 38
LDA $0661,x             ; $27:98CC: BD 61 06
CMP #$04                ; $27:98CF: C9 04
BNE CODE_2798F0         ; $27:98D1: D0 1D
JSL CODE_278B93         ; $27:98D3: 22 93 8B 27
LDA $A7,x               ; $27:98D7: B5 A7
BEQ CODE_2798F0         ; $27:98D9: F0 15
LDA #$05                ; $27:98DB: A9 05
JSL CODE_278A94         ; $27:98DD: 22 94 8A 27
LDA #$06                ; $27:98E1: A9 06
STA $0661,x             ; $27:98E3: 9D 61 06
LDA #$C0                ; $27:98E6: A9 C0
STA $9E,x               ; $27:98E8: 95 9E
LDA #$00                ; $27:98EA: A9 00
STA $8C,x               ; $27:98EC: 95 8C
BEQ CODE_2798FF         ; $27:98EE: F0 0F

CODE_2798F0:
LDA #$02                ; $27:98F0: A9 02
STA $0661,x             ; $27:98F2: 9D 61 06

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:98F5: 22 37 A8 27
LDA.w DATA_21AFDF,y     ; $27:98F9: B9 DF AF
STA $0679,x             ; $27:98FC: 9D 79 06

CODE_2798FF:
PLA                     ; $27:98FF: 68
PLA                     ; $27:9900: 68
JMP CODE_279251         ; $27:9901: 4C 51 92

CODE_279904:
RTS                     ; $27:9904: 60

CODE_279905:
LDA $8C,x               ; $27:9905: B5 8C

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:9907: 22 59 A8 27
STA $8C,x               ; $27:990B: 95 8C

CODE_27990D:
LDA $0679,x             ; $27:990D: BD 79 06
EOR #$40                ; $27:9910: 49 40
STA $0679,x             ; $27:9912: 9D 79 06
RTL                     ; $27:9915: 6B

CODE_279916:
JSL CODE_27A85F         ; $27:9916: 22 5F A8 27
BNE CODE_279984         ; $27:991A: D0 68
LDA $1F76               ; $27:991C: AD 76 1F
CMP #$F3                ; $27:991F: C9 F3
BNE CODE_27997A         ; $27:9921: D0 57
LDA #$D0                ; $27:9923: A9 D0
STA $9E,x               ; $27:9925: 95 9E

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:9927: 22 37 A8 27
LDA.w DATA_21AFE1,y     ; $27:992B: B9 E1 AF
STA $8C,x               ; $27:992E: 95 8C
LDA #$80                ; $27:9930: A9 80
STA $0679,x             ; $27:9932: 9D 79 06
LDY $0671,x             ; $27:9935: BC 71 06
LDA.w DATA_21B1AF,y     ; $27:9938: B9 AF B1
AND #$40                ; $27:993B: 29 40
BNE CODE_27994B         ; $27:993D: D0 0C
LDA #$06                ; $27:993F: A9 06
STA $0661,x             ; $27:9941: 9D 61 06
LDA #$00                ; $27:9944: A9 00
JSL CODE_278A8A         ; $27:9946: 22 8A 8A 27
RTS                     ; $27:994A: 60

CODE_27994B:
PHX                     ; $27:994B: DA
REP #$30                ; $27:994C: C2 30
LDA $0671,x             ; $27:994E: BD 71 06
AND #$00FF              ; $27:9951: 29 FF 00
STA $D8                 ; $27:9954: 85 D8
ASL A                   ; $27:9956: 0A
CLC                     ; $27:9957: 18
ADC $D8                 ; $27:9958: 65 D8
TAX                     ; $27:995A: AA
LDA.l PNTR_288438,x     ; $27:995B: BF 38 84 28
STA $D8                 ; $27:995F: 85 D8
SEP #$30                ; $27:9961: E2 30
PLX                     ; $27:9963: FA
LDA $D9                 ; $27:9964: A5 D9
AND #$F8                ; $27:9966: 29 F8
CMP #$08                ; $27:9968: C9 08
BNE CODE_279977         ; $27:996A: D0 0B
LDA $D8                 ; $27:996C: A5 D8
STA $0671,x             ; $27:996E: 9D 71 06
LDA #$00                ; $27:9971: A9 00
JSL CODE_278A8A         ; $27:9973: 22 8A 8A 27

CODE_279977:
JMP CODE_279AEE         ; $27:9977: 4C EE 9A

CODE_27997A:
JSR CODE_27A31B         ; $27:997A: 20 1B A3
LDA #$00                ; $27:997D: A9 00
STA $0797,x             ; $27:997F: 9D 97 07
BCS CODE_279985         ; $27:9982: B0 01

CODE_279984:
RTS                     ; $27:9984: 60

CODE_279985:
LDA $0520,x             ; $27:9985: BD 20 05
BNE CODE_279984         ; $27:9988: D0 FA
LDA $0545               ; $27:998A: AD 45 05
BNE CODE_27999B         ; $27:998D: D0 0C
LDY $0671,x             ; $27:998F: BC 71 06
LDA.w DATA_21B0FB,y     ; $27:9992: B9 FB B0
AND #$02                ; $27:9995: 29 02
BEQ CODE_2799D8         ; $27:9997: F0 3F
BNE CODE_2799C5         ; $27:9999: D0 2A

CODE_27999B:
JSR CODE_2799D8         ; $27:999B: 20 D8 99
LDA $0661,x             ; $27:999E: BD 61 06
CMP #$02                ; $27:99A1: C9 02
BEQ CODE_2799C4         ; $27:99A3: F0 1F
STA $03                 ; $27:99A5: 85 03
JSR CODE_27A679         ; $27:99A7: 20 79 A6
LDA $0783,x             ; $27:99AA: BD 83 07
AND #$1F                ; $27:99AD: 29 1F
ADC #$B4                ; $27:99AF: 69 B4
STA $9E,x               ; $27:99B1: 95 9E
LDA #$06                ; $27:99B3: A9 06
STA $0661,x             ; $27:99B5: 9D 61 06
LDA $8B                 ; $27:99B8: A5 8B
STA $00                 ; $27:99BA: 85 00
ASL $00                 ; $27:99BC: 06 00
ROR A                   ; $27:99BE: 6A
CLC                     ; $27:99BF: 18
ADC $8C,x               ; $27:99C0: 75 8C
STA $8C,x               ; $27:99C2: 95 8C

CODE_2799C4:
RTS                     ; $27:99C4: 60

CODE_2799C5:
LDA $A6                 ; $27:99C5: A5 A6
BNE CODE_2799D8         ; $27:99C7: D0 0F
LDA $9E,x               ; $27:99C9: B5 9E
CMP #$0A                ; $27:99CB: C9 0A
BMI CODE_2799D2         ; $27:99CD: 30 03

CODE_2799CF:
JMP CODE_279AF9         ; $27:99CF: 4C F9 9A

CODE_2799D2:
LDA $A7,x               ; $27:99D2: B5 A7
AND #$04                ; $27:99D4: 29 04
BNE CODE_2799CF         ; $27:99D6: D0 F7

CODE_2799D8:
LDY #$11                ; $27:99D8: A0 11
LDA $0671,x             ; $27:99DA: BD 71 06
CMP #$6B                ; $27:99DD: C9 6B
BEQ CODE_2799EE         ; $27:99DF: F0 0D
CMP #$64                ; $27:99E1: C9 64
BEQ CODE_2799EE         ; $27:99E3: F0 09
LDY #$13                ; $27:99E5: A0 13
LDA $1FF9,x             ; $27:99E7: BD F9 1F
BEQ CODE_2799EE         ; $27:99EA: F0 02
LDY #$08                ; $27:99EC: A0 08

CODE_2799EE:
STY $01                 ; $27:99EE: 84 01
LDA $71,x               ; $27:99F0: B5 71
SEC                     ; $27:99F2: 38
SBC $01                 ; $27:99F3: E5 01
ROL $00                 ; $27:99F5: 26 00
CMP $70                 ; $27:99F7: C5 70
PHP                     ; $27:99F9: 08
LSR $00                 ; $27:99FA: 46 00
LDA $56,x               ; $27:99FC: B5 56
SBC #$00                ; $27:99FE: E9 00
PLP                     ; $27:9A00: 28
SBC $55                 ; $27:9A01: E5 55
BMI CODE_2799CF         ; $27:9A03: 30 CA
LDA $9D                 ; $27:9A05: A5 9D
BPL CODE_279A13         ; $27:9A07: 10 0A
LDA $056E               ; $27:9A09: AD 6E 05
BNE CODE_279A13         ; $27:9A0C: D0 05
LDA $05F4               ; $27:9A0E: AD F4 05
BEQ CODE_2799CF         ; $27:9A11: F0 BC

CODE_279A13:
LDA #$01                ; $27:9A13: A9 01
STA $0797,x             ; $27:9A15: 9D 97 07
LDA $0575               ; $27:9A18: AD 75 05
BNE CODE_279A27         ; $27:9A1B: D0 0A
LDY $0671,x             ; $27:9A1D: BC 71 06
LDA.w DATA_21B1AF,y     ; $27:9A20: B9 AF B1
AND #$20                ; $27:9A23: 29 20
BEQ CODE_279A32         ; $27:9A25: F0 0B

CODE_279A27:
LDA $0577               ; $27:9A27: AD 77 05
ORA $057A               ; $27:9A2A: 0D 7A 05
BNE CODE_279A32         ; $27:9A2D: D0 03
JMP CODE_279B1D         ; $27:9A2F: 4C 1D 9B

CODE_279A32:
LDY $0671,x             ; $27:9A32: BC 71 06
LDA.w DATA_21B0FB,y     ; $27:9A35: B9 FB B0
AND #$04                ; $27:9A38: 29 04
BNE CODE_279A74         ; $27:9A3A: D0 38
LDA $057A               ; $27:9A3C: AD 7A 05
ORA $0577               ; $27:9A3F: 0D 77 05
BEQ CODE_279A5B         ; $27:9A42: F0 17
JSR CODE_279A75         ; $27:9A44: 20 75 9A
LDY $0671,x             ; $27:9A47: BC 71 06
LDA.w DATA_21B1AF,y     ; $27:9A4A: B9 AF B1
AND #$10                ; $27:9A4D: 29 10
BEQ CODE_279A55         ; $27:9A4F: F0 04
LDA #$03                ; $27:9A51: A9 03
BNE CODE_279A57         ; $27:9A53: D0 02

CODE_279A55:
LDA #$06                ; $27:9A55: A9 06

CODE_279A57:
STA $0661,x             ; $27:9A57: 9D 61 06
RTS                     ; $27:9A5A: 60

CODE_279A5B:
LDA $0661,x             ; $27:9A5B: BD 61 06
CMP #$03                ; $27:9A5E: C9 03
BNE CODE_279A75         ; $27:9A60: D0 13

CODE_279A62:
LDA $05F4               ; $27:9A62: AD F4 05
INC $05F4               ; $27:9A65: EE F4 05
JSL CODE_278A8A         ; $27:9A68: 22 8A 8A 27
JSR CODE_2795B2         ; $27:9A6C: 20 B2 95
LDA #$00                ; $27:9A6F: A9 00
STA $0557               ; $27:9A71: 8D 57 05

CODE_279A74:
RTS                     ; $27:9A74: 60

CODE_279A75:
LDA #$08                ; $27:9A75: A9 08
STA $0520,x             ; $27:9A77: 9D 20 05
LDA #$C0                ; $27:9A7A: A9 C0
STA $9D                 ; $27:9A7C: 85 9D
LDA #$02                ; $27:9A7E: A9 02
STA $1200               ; $27:9A80: 8D 00 12
DEC $1CF6,x             ; $27:9A83: DE F6 1C
BPL CODE_279A74         ; $27:9A86: 10 EC
PHX                     ; $27:9A88: DA
REP #$30                ; $27:9A89: C2 30
LDA $0671,x             ; $27:9A8B: BD 71 06
AND #$00FF              ; $27:9A8E: 29 FF 00
STA $D8                 ; $27:9A91: 85 D8
ASL A                   ; $27:9A93: 0A
CLC                     ; $27:9A94: 18
ADC $D8                 ; $27:9A95: 65 D8
TAX                     ; $27:9A97: AA
LDA.l PNTR_288438,x     ; $27:9A98: BF 38 84 28
STA $D8                 ; $27:9A9C: 85 D8
SEP #$30                ; $27:9A9E: E2 30
PLX                     ; $27:9AA0: FA
LDA $D9                 ; $27:9AA1: A5 D9
AND #$F4                ; $27:9AA3: 29 F4
CMP #$04                ; $27:9AA5: C9 04
BNE CODE_279AB1         ; $27:9AA7: D0 08
LDA $05F4               ; $27:9AA9: AD F4 05
CLC                     ; $27:9AAC: 18
ADC #$04                ; $27:9AAD: 69 04
BNE CODE_279AB4         ; $27:9AAF: D0 03

CODE_279AB1:
LDA $05F4               ; $27:9AB1: AD F4 05

CODE_279AB4:
INC $05F4               ; $27:9AB4: EE F4 05
JSL CODE_278A8A         ; $27:9AB7: 22 8A 8A 27
LDA $D9                 ; $27:9ABB: A5 D9
AND #$F8                ; $27:9ABD: 29 F8
CMP #$08                ; $27:9ABF: C9 08
BNE CODE_279ACE         ; $27:9AC1: D0 0B
LDA $D8                 ; $27:9AC3: A5 D8
STA $0671,x             ; $27:9AC5: 9D 71 06
INC $1CF6,x             ; $27:9AC8: FE F6 1C
JMP CODE_279AE6         ; $27:9ACB: 4C E6 9A

CODE_279ACE:
LDY $0671,x             ; $27:9ACE: BC 71 06
LDA.w DATA_21B0FB,y     ; $27:9AD1: B9 FB B0
AND #$01                ; $27:9AD4: 29 01
BEQ CODE_279AEB         ; $27:9AD6: F0 13
LDA #$03                ; $27:9AD8: A9 03
STA $1200               ; $27:9ADA: 8D 00 12
LDA #$06                ; $27:9ADD: A9 06
STA $0661,x             ; $27:9ADF: 9D 61 06
LDA #$00                ; $27:9AE2: A9 00
STA $8C,x               ; $27:9AE4: 95 8C

CODE_279AE6:
LDA #$00                ; $27:9AE6: A9 00
STA $9E,x               ; $27:9AE8: 95 9E
RTS                     ; $27:9AEA: 60

CODE_279AEB:
INC $1CF6,x             ; $27:9AEB: FE F6 1C

CODE_279AEE:
LDA #$03                ; $27:9AEE: A9 03
STA $0661,x             ; $27:9AF0: 9D 61 06
LDA #$FF                ; $27:9AF3: A9 FF
STA $06A6,x             ; $27:9AF5: 9D A6 06
RTS                     ; $27:9AF8: 60

CODE_279AF9:
LDA $0661,x             ; $27:9AF9: BD 61 06
CMP #$03                ; $27:9AFC: C9 03
BNE CODE_279B1D         ; $27:9AFE: D0 1D
LDA $0577               ; $27:9B00: AD 77 05
ORA $057A               ; $27:9B03: 0D 7A 05
BEQ CODE_279B0B         ; $27:9B06: F0 03
JMP CODE_279A62         ; $27:9B08: 4C 62 9A

CODE_279B0B:
LDA $06A5               ; $27:9B0B: AD A5 06
BNE CODE_279B6A         ; $27:9B0E: D0 5A
BIT $17                 ; $27:9B10: 24 17
BVS CODE_279B17         ; $27:9B12: 70 03
JMP CODE_2795B2         ; $27:9B14: 4C B2 95

CODE_279B17:
LDA #$04                ; $27:9B17: A9 04
STA $0661,x             ; $27:9B19: 9D 61 06
RTS                     ; $27:9B1C: 60

CODE_279B1D:
LDA $0552               ; $27:9B1D: AD 52 05
ORA $057A               ; $27:9B20: 0D 7A 05
ORA $0520,x             ; $27:9B23: 1D 20 05
ORA $0553               ; $27:9B26: 0D 53 05
BNE CODE_279B6A         ; $27:9B29: D0 3F
LDA $0661,x             ; $27:9B2B: BD 61 06
CMP #$05                ; $27:9B2E: C9 05
BNE CODE_279B4B         ; $27:9B30: D0 19
LDY #$00                ; $27:9B32: A0 00
LDA $8B                 ; $27:9B34: A5 8B
BEQ CODE_279B4B         ; $27:9B36: F0 13
BPL CODE_279B3B         ; $27:9B38: 10 01
INY                     ; $27:9B3A: C8

CODE_279B3B:
STY $00                 ; $27:9B3B: 84 00
EOR $8C,x               ; $27:9B3D: 55 8C
BMI CODE_279B4B         ; $27:9B3F: 30 0A

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:9B41: 22 37 A8 27
CPY $00                 ; $27:9B45: C4 00
BNE CODE_279B6A         ; $27:9B47: D0 21
BEQ CODE_279B66         ; $27:9B49: F0 1B

CODE_279B4B:
LDY $0671,x             ; $27:9B4B: BC 71 06
LDA.w DATA_21AE78,y     ; $27:9B4E: B9 78 AE
AND #$10                ; $27:9B51: 29 10
BEQ CODE_279B66         ; $27:9B53: F0 11

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:9B55: 22 37 A8 27
LDA $0679,x             ; $27:9B59: BD 79 06
AND #$BF                ; $27:9B5C: 29 BF
DEY                     ; $27:9B5E: 88
BEQ CODE_279B63         ; $27:9B5F: F0 02
ORA #$40                ; $27:9B61: 09 40

CODE_279B63:
STA $0679,x             ; $27:9B63: 9D 79 06

CODE_279B66:
JSL CODE_27A4C6         ; $27:9B66: 22 C6 A4 27

CODE_279B6A:
RTS                     ; $27:9B6A: 60

CODE_279B6B:
JSR CODE_279916         ; $27:9B6B: 20 16 99
RTL                     ; $27:9B6E: 6B

CODE_279B6F:
JSR CODE_27997A         ; $27:9B6F: 20 7A 99
RTL                     ; $27:9B72: 6B

CODE_279B73:
JSR CODE_279A75         ; $27:9B73: 20 75 9A
RTL                     ; $27:9B76: 6B

CODE_279B77:
JSR CODE_279AEE         ; $27:9B77: 20 EE 9A
RTL                     ; $27:9B7A: 6B

CODE_279B7B:
RTS                     ; $27:9B7B: 60

CODE_279B7C:
RTL                     ; $27:9B7C: 6B

CODE_279B7D:
JSL CODE_279B82         ; $27:9B7D: 22 82 9B 27
RTS                     ; $27:9B81: 60

; Sprite INIT Routines

CODE_279B82:
JSL CODE_279C96         ; $27:9B82: 22 96 9C 27
INC $0661,x             ; $27:9B86: FE 61 06
JSL CODE_279BB7         ; $27:9B89: 22 B7 9B 27
PHX                     ; $27:9B8D: DA
REP #$30                ; $27:9B8E: C2 30
LDA $0671,x             ; $27:9B90: BD 71 06
AND #$00FF              ; $27:9B93: 29 FF 00
STA $00                 ; $27:9B96: 85 00
ASL A                   ; $27:9B98: 0A
CLC                     ; $27:9B99: 18
ADC $00                 ; $27:9B9A: 65 00
TAX                     ; $27:9B9C: AA
SEP #$20                ; $27:9B9D: E2 20
LDA.l PNTR_288000,x     ; $27:9B9F: BF 00 80 28
STA $00                 ; $27:9BA3: 85 00
LDA.l PNTR_288000+1,x   ; $27:9BA5: BF 01 80 28
STA $01                 ; $27:9BA9: 85 01
LDA.l PNTR_288000+2,x   ; $27:9BAB: BF 02 80 28
STA $02                 ; $27:9BAF: 85 02
SEP #$10                ; $27:9BB1: E2 10
PLX                     ; $27:9BB3: FA

; Sprite # to 24-bit pointer index
; then jump to pointer code.
JML [$0000]             ; $27:9BB4: DC 00 00

CODE_279BB7:
LDY $0671,x             ; $27:9BB7: BC 71 06
LDA.w DATA_21B263,y     ; $27:9BBA: B9 63 B2
AND #$07                ; $27:9BBD: 29 07
STA $1FE9,x             ; $27:9BBF: 9D E9 1F


RTL                     ; $27:9BC2: 6B

; Subroutine: Remove if offScreen

CODE_279BC3:
JSR CODE_279BDF         ; $27:9BC3: 20 DF 9B
RTL                     ; $27:9BC6: 6B

CODE_279BC7:
JSR CODE_279BDB         ; $27:9BC7: 20 DB 9B
RTL                     ; $27:9BCA: 6B

CODE_279BCB:
JSR CODE_279BD7         ; $27:9BCB: 20 D7 9B
RTL                     ; $27:9BCE: 6B

CODE_279BCF:
JSR CODE_279C33         ; $27:9BCF: 20 33 9C
RTL                     ; $27:9BD2: 6B

CODE_279BD3:
JSR CODE_279C52         ; $27:9BD3: 20 52 9C
RTL                     ; $27:9BD6: 6B

CODE_279BD7:
LDA #$04                ; $27:9BD7: A9 04
BNE CODE_279BEE         ; $27:9BD9: D0 13

CODE_279BDB:
LDA #$02                ; $27:9BDB: A9 02
BNE CODE_279BEE         ; $27:9BDD: D0 0F

CODE_279BDF:
LDA $1FF1,x             ; $27:9BDF: BD F1 1F
BEQ CODE_279BEC         ; $27:9BE2: F0 08
LDA $0651,x             ; $27:9BE4: BD 51 06
BNE CODE_279BDB         ; $27:9BE7: D0 F2
STA $1FF1,x             ; $27:9BE9: 9D F1 1F

CODE_279BEC:
LDA #$00                ; $27:9BEC: A9 00

CODE_279BEE:
STA $00                 ; $27:9BEE: 85 00
JSL CODE_27A85F         ; $27:9BF0: 22 5F A8 27
BEQ CODE_279C64         ; $27:9BF4: F0 6E

; If vertical level
LDA $0425               ; $27:9BF6: AD 25 04
BNE CODE_279C65         ; $27:9BF9: D0 6A
LDA $56,x               ; $27:9BFB: B5 56
CMP #$02                ; $27:9BFD: C9 02
BPL CODE_279C33         ; $27:9BFF: 10 32
TXA                     ; $27:9C01: 8A
CLC                     ; $27:9C02: 18
ADC $15                 ; $27:9C03: 65 15
LSR A                   ; $27:9C05: 4A
BCS CODE_279C64         ; $27:9C06: B0 5C
AND #$01                ; $27:9C08: 29 01
STA $01                 ; $27:9C0A: 85 01
ADC $00                 ; $27:9C0C: 65 00
TAY                     ; $27:9C0E: A8
LDA $0210               ; $27:9C0F: AD 10 02
CLC                     ; $27:9C12: 18
ADC.w DATA_21AFE7,y     ; $27:9C13: 79 E7 AF
ROL $00                 ; $27:9C16: 26 00
CMP $5F,x               ; $27:9C18: D5 5F
PHP                     ; $27:9C1A: 08
LDA $12                 ; $27:9C1B: A5 12
LSR $00                 ; $27:9C1D: 46 00
ADC.w DATA_21AFED,y     ; $27:9C1F: 79 ED AF
PLP                     ; $27:9C22: 28
SBC $44,x               ; $27:9C23: F5 44
STA $00                 ; $27:9C25: 85 00
LDY $01                 ; $27:9C27: A4 01
BEQ CODE_279C2F         ; $27:9C29: F0 04
EOR #$80                ; $27:9C2B: 49 80
STA $00                 ; $27:9C2D: 85 00

CODE_279C2F:
LDA $00                 ; $27:9C2F: A5 00
BPL CODE_279C64         ; $27:9C31: 10 31

CODE_279C33:
LDA $0671,x             ; $27:9C33: BD 71 06
CMP #$58                ; $27:9C36: C9 58
BEQ CODE_279C4A         ; $27:9C38: F0 10
CMP #$4F                ; $27:9C3A: C9 4F
BEQ CODE_279C4A         ; $27:9C3C: F0 0C
CMP #$6A                ; $27:9C3E: C9 6A
BEQ CODE_279C4A         ; $27:9C40: F0 08
CMP #$61                ; $27:9C42: C9 61
BEQ CODE_279C4A         ; $27:9C44: F0 04
CMP #$59                ; $27:9C46: C9 59
BNE CODE_279C52         ; $27:9C48: D0 08

CODE_279C4A:
LDY $0771,x             ; $27:9C4A: BC 71 07
LDA #$00                ; $27:9C4D: A9 00
STA $06B4,y             ; $27:9C4F: 99 B4 06

CODE_279C52:
LDY $0659,x             ; $27:9C52: BC 59 06
BMI CODE_279C5F         ; $27:9C55: 30 08
LDA $1B10,y             ; $27:9C57: B9 10 1B
AND #$7F                ; $27:9C5A: 29 7F
STA $1B10,y             ; $27:9C5C: 99 10 1B

CODE_279C5F:
LDA #$00                ; $27:9C5F: A9 00
STA $0661,x             ; $27:9C61: 9D 61 06

CODE_279C64:
RTS                     ; $27:9C64: 60

CODE_279C65:
LDA $15                 ; $27:9C65: A5 15
LSR A                   ; $27:9C67: 4A
BCS CODE_279C64         ; $27:9C68: B0 FA
AND #$01                ; $27:9C6A: 29 01
STA $01                 ; $27:9C6C: 85 01
TAY                     ; $27:9C6E: A8
LDA $0543               ; $27:9C6F: AD 43 05
CLC                     ; $27:9C72: 18
ADC.w DATA_21AFE3,y     ; $27:9C73: 79 E3 AF
ROL $00                 ; $27:9C76: 26 00
CMP $71,x               ; $27:9C78: D5 71
PHP                     ; $27:9C7A: 08
LDA $0542               ; $27:9C7B: AD 42 05
LSR $00                 ; $27:9C7E: 46 00
ADC.w DATA_21AFE5,y     ; $27:9C80: 79 E5 AF
PLP                     ; $27:9C83: 28
SBC $56,x               ; $27:9C84: F5 56
STA $00                 ; $27:9C86: 85 00
LDY $01                 ; $27:9C88: A4 01
BEQ CODE_279C90         ; $27:9C8A: F0 04
EOR #$80                ; $27:9C8C: 49 80
STA $00                 ; $27:9C8E: 85 00

CODE_279C90:
LDA $00                 ; $27:9C90: A5 00
BPL CODE_279C64         ; $27:9C92: 10 D0
BMI CODE_279C33         ; $27:9C94: 30 9D

CODE_279C96:
STZ $0691,x             ; $27:9C96: 9E 91 06
LDA $0671,x             ; $27:9C99: BD 71 06
CMP #$7F                ; $27:9C9C: C9 7F
BEQ CODE_279CA4         ; $27:9C9E: F0 04
CMP #$7D                ; $27:9CA0: C9 7D
BNE CODE_279CA9         ; $27:9CA2: D0 05

CODE_279CA4:
LDA $71,x               ; $27:9CA4: B5 71
STA $0691,x             ; $27:9CA6: 9D 91 06

CODE_279CA9:
LDA #$00                ; $27:9CA9: A9 00
STA $0689,x             ; $27:9CAB: 9D 89 06
STA $7A,x               ; $27:9CAE: 95 7A
STA $0518,x             ; $27:9CB0: 9D 18 05
STA $0520,x             ; $27:9CB3: 9D 20 05
STA $8C,x               ; $27:9CB6: 95 8C
STA $9E,x               ; $27:9CB8: 95 9E
STA $0679,x             ; $27:9CBA: 9D 79 06
STA $0669,x             ; $27:9CBD: 9D 69 06
STA $0769,x             ; $27:9CC0: 9D 69 07
STA $A7,x               ; $27:9CC3: 95 A7
CPX #$06                ; $27:9CC5: E0 06
BCS CODE_279CD5         ; $27:9CC7: B0 0C
STA $1A49,x             ; $27:9CC9: 9D 49 1A
STA $1A4F,x             ; $27:9CCC: 9D 4F 1A
STA $06EB,x             ; $27:9CCF: 9D EB 06
STA $06B7,x             ; $27:9CD2: 9D B7 06

CODE_279CD5:
CPX #$05                ; $27:9CD5: E0 05
BCS CODE_279D13         ; $27:9CD7: B0 3A
STA $0797,x             ; $27:9CD9: 9D 97 07
STA $06AB,x             ; $27:9CDC: 9D AB 06
STA $06A6,x             ; $27:9CDF: 9D A6 06
STA $07B6,x             ; $27:9CE2: 9D B6 07
STA $1021,x             ; $27:9CE5: 9D 21 10
STA $68,x               ; $27:9CE8: 95 68
STA $4D,x               ; $27:9CEA: 95 4D
STA $1FD2,x             ; $27:9CEC: 9D D2 1F
STA $0771,x             ; $27:9CEF: 9D 71 07
STA $0776,x             ; $27:9CF2: 9D 76 07
STA $077B,x             ; $27:9CF5: 9D 7B 07
STA $1FF9,x             ; $27:9CF8: 9D F9 1F
STA $1FF1,x             ; $27:9CFB: 9D F1 1F
STA $1CF6,x             ; $27:9CFE: 9D F6 1C
STA $1A49,x             ; $27:9D01: 9D 49 1A
STA $1CC8,x             ; $27:9D04: 9D C8 1C
STA $1CCD,x             ; $27:9D07: 9D CD 1C
STA $1CD2,x             ; $27:9D0A: 9D D2 1C
STA $1CD7,x             ; $27:9D0D: 9D D7 1C
STA $1CDC,x             ; $27:9D10: 9D DC 1C

CODE_279D13:
RTL                     ; $27:9D13: 6B

CODE_279D14:
LDA $9C                 ; $27:9D14: A5 9C
BEQ CODE_279D3F         ; $27:9D16: F0 27
LDA $0671,x             ; $27:9D18: BD 71 06
CMP #$2E                ; $27:9D1B: C9 2E
BNE CODE_279D23         ; $27:9D1D: D0 04
LDA $68,x               ; $27:9D1F: B5 68
BEQ CODE_279D2B         ; $27:9D21: F0 08

CODE_279D23:
CMP #$2F                ; $27:9D23: C9 2F
BEQ CODE_279D2B         ; $27:9D25: F0 04
JSL CODE_279D6E         ; $27:9D27: 22 6E 9D 27

CODE_279D2B:
LDY $0671,x             ; $27:9D2B: BC 71 06
LDA.w DATA_21B1AF,y     ; $27:9D2E: B9 AF B1
AND #$0F                ; $27:9D31: 29 0F
CMP #$05                ; $27:9D33: C9 05
BEQ CODE_279D3F         ; $27:9D35: F0 08
LDA $0661,x             ; $27:9D37: BD 61 06
CMP #$02                ; $27:9D3A: C9 02
BEQ CODE_279D3F         ; $27:9D3C: F0 01
RTS                     ; $27:9D3E: 60

CODE_279D3F:
JSL CODE_279D44         ; $27:9D3F: 22 44 9D 27
RTS                     ; $27:9D43: 60

; Sprite MAIN Routines

CODE_279D44:
PHX                     ; $27:9D44: DA
REP #$30                ; $27:9D45: C2 30
LDA $0671,x             ; $27:9D47: BD 71 06
AND #$00FF              ; $27:9D4A: 29 FF 00
STA $00                 ; $27:9D4D: 85 00
ASL A                   ; $27:9D4F: 0A
CLC                     ; $27:9D50: 18
ADC $00                 ; $27:9D51: 65 00
TAX                     ; $27:9D53: AA
SEP #$20                ; $27:9D54: E2 20
LDA.l PNTR_28821C,x     ; $27:9D56: BF 1C 82 28
STA $00                 ; $27:9D5A: 85 00
LDA.l PNTR_28821C+1,x   ; $27:9D5C: BF 1D 82 28
STA $01                 ; $27:9D60: 85 01
LDA.l PNTR_28821C+2,x   ; $27:9D62: BF 1E 82 28
STA $02                 ; $27:9D66: 85 02
SEP #$10                ; $27:9D68: E2 10
PLX                     ; $27:9D6A: FA
JML [$0000]             ; $27:9D6B: DC 00 00

CODE_279D6E:
PHX                     ; $27:9D6E: DA
LDY $0671,x             ; $27:9D6F: BC 71 06
LDA.w DATA_21B1AF,y     ; $27:9D72: B9 AF B1
AND #$0F                ; $27:9D75: 29 0F
STA $00                 ; $27:9D77: 85 00
ASL A                   ; $27:9D79: 0A
CLC                     ; $27:9D7A: 18
ADC $00                 ; $27:9D7B: 65 00
TAX                     ; $27:9D7D: AA
LDA.l PNTR_279D94,x     ; $27:9D7E: BF 94 9D 27
STA $00                 ; $27:9D82: 85 00
LDA.l PNTR_279D94+1,x   ; $27:9D84: BF 95 9D 27
STA $01                 ; $27:9D88: 85 01
LDA.l PNTR_279D94+2,x   ; $27:9D8A: BF 96 9D 27
STA $02                 ; $27:9D8E: 85 02
PLX                     ; $27:9D90: FA
JML [$0000]             ; $27:9D91: DC 00 00

PNTR_279D94:
dl CODE_28B625
dl CODE_279EBB
dl CODE_279F51
dl CODE_28BB64
dl CODE_279B7C
dl CODE_279DC1
dl CODE_279F6B
dl CODE_279B7C
dl CODE_28BFD9
dl CODE_279B7C
dl CODE_279EDD
dl CODE_28CE71
dl CODE_279B7C
dl CODE_28B3A6
dl CODE_28BD52

CODE_279DC1:
RTL                     ; $27:9DC1: 6B

CODE_279DC2:
LDA $71,x               ; $27:9DC2: B5 71
SEC                     ; $27:9DC4: 38
SBC $0543               ; $27:9DC5: ED 43 05
STA $83,x               ; $27:9DC8: 95 83
LDA $5F,x               ; $27:9DCA: B5 5F
SEC                     ; $27:9DCC: 38
SBC $0210               ; $27:9DCD: ED 10 02
STA $7A,x               ; $27:9DD0: 95 7A
RTL                     ; $27:9DD2: 6B

CODE_279DD3:
LDA $A7,x               ; $27:9DD3: B5 A7
AND #$04                ; $27:9DD5: 29 04
BNE CODE_279DF7         ; $27:9DD7: D0 1E

CODE_279DD9:
LDA $05FC               ; $27:9DD9: AD FC 05
BEQ CODE_279DF7         ; $27:9DDC: F0 19
LDA $0424               ; $27:9DDE: AD 24 04
CMP #$01                ; $27:9DE1: C9 01
BEQ CODE_279DF7         ; $27:9DE3: F0 12
LDY #$00                ; $27:9DE5: A0 00
LDA $0780               ; $27:9DE7: AD 80 07
BPL CODE_279DED         ; $27:9DEA: 10 01
DEY                     ; $27:9DEC: 88

CODE_279DED:
CLC                     ; $27:9DED: 18
ADC $71,x               ; $27:9DEE: 75 71
STA $71,x               ; $27:9DF0: 95 71
TYA                     ; $27:9DF2: 98
ADC $56,x               ; $27:9DF3: 75 56
STA $56,x               ; $27:9DF5: 95 56

CODE_279DF7:
RTL                     ; $27:9DF7: 6B

CODE_279DF8:
LDA $71,x               ; $27:9DF8: B5 71
SEC                     ; $27:9DFA: 38
SBC $0543               ; $27:9DFB: ED 43 05
STA $83,x               ; $27:9DFE: 95 83
STA $00                 ; $27:9E00: 85 00
SEC                     ; $27:9E02: 38
LDA $06AB,x             ; $27:9E03: BD AB 06
BEQ CODE_279E0F         ; $27:9E06: F0 07
CMP #$40                ; $27:9E08: C9 40
BCC CODE_279E0E         ; $27:9E0A: 90 02
LSR A                   ; $27:9E0C: 4A
LSR A                   ; $27:9E0D: 4A

CODE_279E0E:
LSR A                   ; $27:9E0E: 4A

CODE_279E0F:
LDA $5F,x               ; $27:9E0F: B5 5F
SBC $0210               ; $27:9E11: ED 10 02
STA $7A,x               ; $27:9E14: 95 7A
STA $01                 ; $27:9E16: 85 01
LDA $0679,x             ; $27:9E18: BD 79 06
STA $02                 ; $27:9E1B: 85 02
AND #$30                ; $27:9E1D: 29 30
CMP #$10                ; $27:9E1F: C9 10
BEQ CODE_279E27         ; $27:9E21: F0 04
LDA #$20                ; $27:9E23: A9 20
TSB $02                 ; $27:9E25: 04 02

CODE_279E27:
LDY $0671,x             ; $27:9E27: BC 71 06
LDA.w DATA_21B3CB,y     ; $27:9E2A: B9 CB B3
AND #$01                ; $27:9E2D: 29 01
TSB $02                 ; $27:9E2F: 04 02
LDY $0418               ; $27:9E31: AC 18 04
LDA $0769,x             ; $27:9E34: BD 69 07
BEQ CODE_279E57         ; $27:9E37: F0 1E
DEC $0769,x             ; $27:9E39: DE 69 07
LDA $0671,x             ; $27:9E3C: BD 71 06
CMP #$19                ; $27:9E3F: C9 19
BEQ CODE_279E57         ; $27:9E41: F0 14
CMP #$4B                ; $27:9E43: C9 4B
BEQ CODE_279E51         ; $27:9E45: F0 0A
CMP #$4C                ; $27:9E47: C9 4C
BEQ CODE_279E51         ; $27:9E49: F0 06
JSL CODE_27AA8D         ; $27:9E4B: 22 8D AA 27
BRA CODE_279E55         ; $27:9E4F: 80 04

CODE_279E51:
JSL CODE_27AA74         ; $27:9E51: 22 74 AA 27

CODE_279E55:
BPL CODE_279E5A         ; $27:9E55: 10 03

CODE_279E57:
LDA $1FE9,x             ; $27:9E57: BD E9 1F

CODE_279E5A:
ASL A                   ; $27:9E5A: 0A
STA $03                 ; $27:9E5B: 85 03
LDA $0671,x             ; $27:9E5D: BD 71 06
CMP #$55                ; $27:9E60: C9 55
BNE CODE_279E66         ; $27:9E62: D0 02
INC $03                 ; $27:9E64: E6 03

CODE_279E66:
LDA $0681,x             ; $27:9E66: BD 81 06
STA $04                 ; $27:9E69: 85 04
LDA $0651,x             ; $27:9E6B: BD 51 06
STA $07                 ; $27:9E6E: 85 07
LDA $0669,x             ; $27:9E70: BD 69 06
ASL A                   ; $27:9E73: 0A
STA $05                 ; $27:9E74: 85 05
LDA $DE                 ; $27:9E76: A5 DE
ASL A                   ; $27:9E78: 0A
CLC                     ; $27:9E79: 18
ADC $DE                 ; $27:9E7A: 65 DE
TAX                     ; $27:9E7C: AA
LDA.l DATA_21B47F,x     ; $27:9E7D: BF 7F B4 21
STA $D8                 ; $27:9E81: 85 D8
LDA.l DATA_21B47F+1,x   ; $27:9E83: BF 80 B4 21
STA $D9                 ; $27:9E87: 85 D9
LDA.l DATA_21B47F+2,x   ; $27:9E89: BF 81 B4 21
STA $DA                 ; $27:9E8D: 85 DA
LDA [$D8],y             ; $27:9E8F: B7 D8
CLC                     ; $27:9E91: 18
ADC $05                 ; $27:9E92: 65 05
STA $05                 ; $27:9E94: 85 05
TAX                     ; $27:9E96: AA
LDY $9B                 ; $27:9E97: A4 9B
LDA $00C6,y             ; $27:9E99: B9 C6 00
STA $06                 ; $27:9E9C: 85 06
TAY                     ; $27:9E9E: A8
RTL                     ; $27:9E9F: 6B

CODE_279EA0:
JSL CODE_279DF8         ; $27:9EA0: 22 F8 9D 27
JSL CODE_279F90         ; $27:9EA4: 22 90 9F 27
LDX $9B                 ; $27:9EA8: A6 9B
LDA $0671,x             ; $27:9EAA: BD 71 06
CMP #$2F                ; $27:9EAD: C9 2F
BNE CODE_279EBA         ; $27:9EAF: D0 09
LDA $0661,x             ; $27:9EB1: BD 61 06
CMP #$06                ; $27:9EB4: C9 06
JSL CODE_29A412         ; $27:9EB6: 22 12 A4 29

CODE_279EBA:
RTS                     ; $27:9EBA: 60

CODE_279EBB:
JSR CODE_279EA0         ; $27:9EBB: 20 A0 9E
RTL                     ; $27:9EBE: 6B

CODE_279EBF:
JSR CODE_279EA0         ; $27:9EBF: 20 A0 9E
REP #$10                ; $27:9EC2: C2 10
LDY $00C6,x             ; $27:9EC4: BC C6 00
LDA $0803,y             ; $27:9EC7: B9 03 08
AND #$BF                ; $27:9ECA: 29 BF
STA $0803,y             ; $27:9ECC: 99 03 08
STA $080B,y             ; $27:9ECF: 99 0B 08
ORA #$40                ; $27:9ED2: 09 40
STA $0807,y             ; $27:9ED4: 99 07 08
STA $080F,y             ; $27:9ED7: 99 0F 08
SEP #$10                ; $27:9EDA: E2 10
RTS                     ; $27:9EDC: 60

CODE_279EDD:
JSR CODE_279EBF         ; $27:9EDD: 20 BF 9E
RTL                     ; $27:9EE0: 6B

CODE_279EE1:
JSR CODE_279F11         ; $27:9EE1: 20 11 9F
REP #$10                ; $27:9EE4: C2 10
LDY $C6,x               ; $27:9EE6: B4 C6
LDA $07F3,y             ; $27:9EE8: B9 F3 07
AND #$BF                ; $27:9EEB: 29 BF
STA $07F3,y             ; $27:9EED: 99 F3 07
STA $07FB,y             ; $27:9EF0: 99 FB 07
ORA #$40                ; $27:9EF3: 09 40
STA $07F7,y             ; $27:9EF5: 99 F7 07
STA $07FF,y             ; $27:9EF8: 99 FF 07
LDA $0803,y             ; $27:9EFB: B9 03 08
AND #$BF                ; $27:9EFE: 29 BF
STA $0803,y             ; $27:9F00: 99 03 08
STA $080B,y             ; $27:9F03: 99 0B 08
ORA #$40                ; $27:9F06: 09 40
STA $0807,y             ; $27:9F08: 99 07 08
STA $080F,y             ; $27:9F0B: 99 0F 08
SEP #$10                ; $27:9F0E: E2 10
RTL                     ; $27:9F10: 6B

CODE_279F11:
JSL CODE_279DF8         ; $27:9F11: 22 F8 9D 27
LDX $9B                 ; $27:9F15: A6 9B
LDA $0669,x             ; $27:9F17: BD 69 06
ASL A                   ; $27:9F1A: 0A
CLC                     ; $27:9F1B: 18
ADC $05                 ; $27:9F1C: 65 05
STA $05                 ; $27:9F1E: 85 05
TAX                     ; $27:9F20: AA
LDA $02                 ; $27:9F21: A5 02
BPL CODE_279F27         ; $27:9F23: 10 02
INX                     ; $27:9F25: E8
INX                     ; $27:9F26: E8

CODE_279F27:
JSL CODE_279F90         ; $27:9F27: 22 90 9F 27
REP #$20                ; $27:9F2B: C2 20
LDX $9B                 ; $27:9F2D: A6 9B
LDA $C6,x               ; $27:9F2F: B5 C6
CLC                     ; $27:9F31: 18
ADC #$0010              ; $27:9F32: 69 10 00
STA $C6,x               ; $27:9F35: 95 C6
SEP #$20                ; $27:9F37: E2 20
LSR $04                 ; $27:9F39: 46 04
LDX $05                 ; $27:9F3B: A6 05
LDA $02                 ; $27:9F3D: A5 02
BMI CODE_279F43         ; $27:9F3F: 30 02
INX                     ; $27:9F41: E8
INX                     ; $27:9F42: E8

CODE_279F43:
LDA #$10                ; $27:9F43: A9 10
CLC                     ; $27:9F45: 18
ADC $00                 ; $27:9F46: 65 00
STA $00                 ; $27:9F48: 85 00
JSL CODE_279F90         ; $27:9F4A: 22 90 9F 27
LDX $9B                 ; $27:9F4E: A6 9B
RTS                     ; $27:9F50: 60

CODE_279F51:
JSR CODE_279F11         ; $27:9F51: 20 11 9F
RTL                     ; $27:9F54: 6B

CODE_279F55:
JSL CODE_279DF8         ; $27:9F55: 22 F8 9D 27
LDX $9B                 ; $27:9F59: A6 9B
LDA $0669,x             ; $27:9F5B: BD 69 06
CLC                     ; $27:9F5E: 18
ADC $05                 ; $27:9F5F: 65 05
STA $05                 ; $27:9F61: 85 05
TAX                     ; $27:9F63: AA
JSL CODE_27A079         ; $27:9F64: 22 79 A0 27
LDX $9B                 ; $27:9F68: A6 9B
RTS                     ; $27:9F6A: 60

CODE_279F6B:
JSR CODE_279F55         ; $27:9F6B: 20 55 9F
RTL                     ; $27:9F6E: 6B

CODE_279F6F:
LDA $8C,x               ; $27:9F6F: B5 8C
BNE CODE_279F74         ; $27:9F71: D0 01
RTL                     ; $27:9F73: 6B

CODE_279F74:
BPL CODE_279F7A         ; $27:9F74: 10 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:9F76: 22 59 A8 27

CODE_279F7A:
AND #$F0                ; $27:9F7A: 29 F0
LSR A                   ; $27:9F7C: 4A
LSR A                   ; $27:9F7D: 4A
LSR A                   ; $27:9F7E: 4A
LSR A                   ; $27:9F7F: 4A
TAY                     ; $27:9F80: A8
LDA.w DATA_21AFF7,y     ; $27:9F81: B9 F7 AF
LDY #$00                ; $27:9F84: A0 00
AND $15                 ; $27:9F86: 25 15
BEQ CODE_279F8B         ; $27:9F88: F0 01
INY                     ; $27:9F8A: C8

CODE_279F8B:
TYA                     ; $27:9F8B: 98
STA $0669,x             ; $27:9F8C: 9D 69 06
RTL                     ; $27:9F8F: 6B

CODE_279F90:
LDY $9B                 ; $27:9F90: A4 9B
REP #$30                ; $27:9F92: C2 30
LDA $00C6,y             ; $27:9F94: B9 C6 00
TAY                     ; $27:9F97: A8
SEP #$20                ; $27:9F98: E2 20
LDA $04                 ; $27:9F9A: A5 04
LSR A                   ; $27:9F9C: 4A
BCC CODE_279FA2         ; $27:9F9D: 90 03
BRL CODE_27A076         ; $27:9F9F: 82 D4 00

CODE_279FA2:
LDA $00                 ; $27:9FA2: A5 00
STA $0801,y             ; $27:9FA4: 99 01 08
STA $0805,y             ; $27:9FA7: 99 05 08
CLC                     ; $27:9FAA: 18
ADC #$08                ; $27:9FAB: 69 08
STA $0809,y             ; $27:9FAD: 99 09 08
STA $080D,y             ; $27:9FB0: 99 0D 08
LDA $01                 ; $27:9FB3: A5 01
STA $0800,y             ; $27:9FB5: 99 00 08
STA $0808,y             ; $27:9FB8: 99 08 08
CLC                     ; $27:9FBB: 18
ADC #$08                ; $27:9FBC: 69 08
STA $0804,y             ; $27:9FBE: 99 04 08
STA $080C,y             ; $27:9FC1: 99 0C 08
PHY                     ; $27:9FC4: 5A
PHX                     ; $27:9FC5: DA
TXY                     ; $27:9FC6: 9B
REP #$20                ; $27:9FC7: C2 20
LDA $DE                 ; $27:9FC9: A5 DE
AND #$00FF              ; $27:9FCB: 29 FF 00
STA $D8                 ; $27:9FCE: 85 D8
ASL A                   ; $27:9FD0: 0A
CLC                     ; $27:9FD1: 18
ADC $D8                 ; $27:9FD2: 65 D8
TAX                     ; $27:9FD4: AA
SEP #$20                ; $27:9FD5: E2 20
LDA.w DATA_21B48E,x     ; $27:9FD7: BD 8E B4
STA $D8                 ; $27:9FDA: 85 D8
LDA.w DATA_21B48E+1,x   ; $27:9FDC: BD 8F B4
STA $D9                 ; $27:9FDF: 85 D9
LDA.w DATA_21B48E+2,x   ; $27:9FE1: BD 90 B4
STA $DA                 ; $27:9FE4: 85 DA
LDA [$D8],y             ; $27:9FE6: B7 D8
PHA                     ; $27:9FE8: 48
INY                     ; $27:9FE9: C8
LDA [$D8],y             ; $27:9FEA: B7 D8
STA $D9                 ; $27:9FEC: 85 D9
PLA                     ; $27:9FEE: 68
STA $D8                 ; $27:9FEF: 85 D8
PLX                     ; $27:9FF1: FA
PLY                     ; $27:9FF2: 7A
LDA $D8                 ; $27:9FF3: A5 D8
STA $0802,y             ; $27:9FF5: 99 02 08
INC A                   ; $27:9FF8: 1A
STA $080A,y             ; $27:9FF9: 99 0A 08
LDA $D9                 ; $27:9FFC: A5 D9
STA $0806,y             ; $27:9FFE: 99 06 08
INC A                   ; $27:A001: 1A
STA $080E,y             ; $27:A002: 99 0E 08
LDA $02                 ; $27:A005: A5 02
ORA $03                 ; $27:A007: 05 03
STA $0803,y             ; $27:A009: 99 03 08
STA $080B,y             ; $27:A00C: 99 0B 08
STA $0807,y             ; $27:A00F: 99 07 08
STA $080F,y             ; $27:A012: 99 0F 08
BIT $02                 ; $27:A015: 24 02
BVC CODE_27A035         ; $27:A017: 50 1C
LDA $0802,y             ; $27:A019: B9 02 08
PHA                     ; $27:A01C: 48
LDA $0806,y             ; $27:A01D: B9 06 08
STA $0802,y             ; $27:A020: 99 02 08
PLA                     ; $27:A023: 68
STA $0806,y             ; $27:A024: 99 06 08
LDA $080A,y             ; $27:A027: B9 0A 08
PHA                     ; $27:A02A: 48
LDA $080E,y             ; $27:A02B: B9 0E 08
STA $080A,y             ; $27:A02E: 99 0A 08
PLA                     ; $27:A031: 68
STA $080E,y             ; $27:A032: 99 0E 08

CODE_27A035:
BIT $02                 ; $27:A035: 24 02
BPL CODE_27A055         ; $27:A037: 10 1C
LDA $0802,y             ; $27:A039: B9 02 08
PHA                     ; $27:A03C: 48
LDA $080A,y             ; $27:A03D: B9 0A 08
STA $0802,y             ; $27:A040: 99 02 08
PLA                     ; $27:A043: 68
STA $080A,y             ; $27:A044: 99 0A 08
LDA $0806,y             ; $27:A047: B9 06 08
PHA                     ; $27:A04A: 48
LDA $080E,y             ; $27:A04B: B9 0E 08
STA $0806,y             ; $27:A04E: 99 06 08
PLA                     ; $27:A051: 68
STA $080E,y             ; $27:A052: 99 0E 08

CODE_27A055:
REP #$20                ; $27:A055: C2 20
PHY                     ; $27:A057: 5A
TYA                     ; $27:A058: 98
LSR A                   ; $27:A059: 4A
LSR A                   ; $27:A05A: 4A
TAY                     ; $27:A05B: A8
SEP #$20                ; $27:A05C: E2 20
LDA $07                 ; $27:A05E: A5 07
ROL A                   ; $27:A060: 2A
ROL A                   ; $27:A061: 2A
PHP                     ; $27:A062: 08
AND #$01                ; $27:A063: 29 01
STA $0A20,y             ; $27:A065: 99 20 0A
STA $0A22,y             ; $27:A068: 99 22 0A
PLP                     ; $27:A06B: 28
ROL A                   ; $27:A06C: 2A
AND #$01                ; $27:A06D: 29 01
STA $0A21,y             ; $27:A06F: 99 21 0A
STA $0A23,y             ; $27:A072: 99 23 0A
PLY                     ; $27:A075: 7A

CODE_27A076:
SEP #$30                ; $27:A076: E2 30
RTL                     ; $27:A078: 6B

CODE_27A079:
LDY $9B                 ; $27:A079: A4 9B
REP #$30                ; $27:A07B: C2 30
LDA $00C6,y             ; $27:A07D: B9 C6 00
TAY                     ; $27:A080: A8
SEP #$20                ; $27:A081: E2 20
LDA $04                 ; $27:A083: A5 04
LSR A                   ; $27:A085: 4A
BCS CODE_27A076         ; $27:A086: B0 EE
LDA $00                 ; $27:A088: A5 00
STA $0801,y             ; $27:A08A: 99 01 08
STA $0805,y             ; $27:A08D: 99 05 08
STA $0809,y             ; $27:A090: 99 09 08
CLC                     ; $27:A093: 18
ADC #$08                ; $27:A094: 69 08
STA $080D,y             ; $27:A096: 99 0D 08
STA $0811,y             ; $27:A099: 99 11 08
STA $0815,y             ; $27:A09C: 99 15 08
LDA $01                 ; $27:A09F: A5 01
STA $0800,y             ; $27:A0A1: 99 00 08
STA $080C,y             ; $27:A0A4: 99 0C 08
CLC                     ; $27:A0A7: 18
ADC #$08                ; $27:A0A8: 69 08
STA $0804,y             ; $27:A0AA: 99 04 08
STA $0810,y             ; $27:A0AD: 99 10 08
CLC                     ; $27:A0B0: 18
ADC #$08                ; $27:A0B1: 69 08
STA $0808,y             ; $27:A0B3: 99 08 08
STA $0814,y             ; $27:A0B6: 99 14 08
PHY                     ; $27:A0B9: 5A
PHX                     ; $27:A0BA: DA
TXY                     ; $27:A0BB: 9B
REP #$20                ; $27:A0BC: C2 20
LDA $DE                 ; $27:A0BE: A5 DE
AND #$00FF              ; $27:A0C0: 29 FF 00
STA $D8                 ; $27:A0C3: 85 D8
ASL A                   ; $27:A0C5: 0A
CLC                     ; $27:A0C6: 18
ADC $D8                 ; $27:A0C7: 65 D8
TAX                     ; $27:A0C9: AA
SEP #$20                ; $27:A0CA: E2 20
LDA.w DATA_21B48E,x     ; $27:A0CC: BD 8E B4
STA $D8                 ; $27:A0CF: 85 D8
LDA.w DATA_21B48E+1,x   ; $27:A0D1: BD 8F B4
STA $D9                 ; $27:A0D4: 85 D9
LDA.w DATA_21B48E+2,x   ; $27:A0D6: BD 90 B4
STA $DA                 ; $27:A0D9: 85 DA
LDA [$D8],y             ; $27:A0DB: B7 D8
STA $DB                 ; $27:A0DD: 85 DB
INY                     ; $27:A0DF: C8
LDA [$D8],y             ; $27:A0E0: B7 D8
STA $DC                 ; $27:A0E2: 85 DC
INY                     ; $27:A0E4: C8
LDA [$D8],y             ; $27:A0E5: B7 D8
STA $DD                 ; $27:A0E7: 85 DD
PLX                     ; $27:A0E9: FA
PLY                     ; $27:A0EA: 7A
LDA $DB                 ; $27:A0EB: A5 DB
STA $0802,y             ; $27:A0ED: 99 02 08
INC A                   ; $27:A0F0: 1A
STA $080E,y             ; $27:A0F1: 99 0E 08
LDA $DC                 ; $27:A0F4: A5 DC
STA $0806,y             ; $27:A0F6: 99 06 08
INC A                   ; $27:A0F9: 1A
STA $0812,y             ; $27:A0FA: 99 12 08
LDA $DD                 ; $27:A0FD: A5 DD
STA $080A,y             ; $27:A0FF: 99 0A 08
INC A                   ; $27:A102: 1A
STA $0816,y             ; $27:A103: 99 16 08
LDA $02                 ; $27:A106: A5 02
ORA $03                 ; $27:A108: 05 03
STA $0803,y             ; $27:A10A: 99 03 08
STA $080F,y             ; $27:A10D: 99 0F 08
STA $0807,y             ; $27:A110: 99 07 08
STA $0813,y             ; $27:A113: 99 13 08
STA $080B,y             ; $27:A116: 99 0B 08
STA $0817,y             ; $27:A119: 99 17 08
BIT $02                 ; $27:A11C: 24 02
BPL CODE_27A14A         ; $27:A11E: 10 2A
LDA $0802,y             ; $27:A120: B9 02 08
PHA                     ; $27:A123: 48
LDA $080E,y             ; $27:A124: B9 0E 08
STA $0802,y             ; $27:A127: 99 02 08
PLA                     ; $27:A12A: 68
STA $080E,y             ; $27:A12B: 99 0E 08
LDA $0806,y             ; $27:A12E: B9 06 08
PHA                     ; $27:A131: 48
LDA $0812,y             ; $27:A132: B9 12 08
STA $0806,y             ; $27:A135: 99 06 08
PLA                     ; $27:A138: 68
STA $0812,y             ; $27:A139: 99 12 08
LDA $080A,y             ; $27:A13C: B9 0A 08
PHA                     ; $27:A13F: 48
LDA $0816,y             ; $27:A140: B9 16 08
STA $080A,y             ; $27:A143: 99 0A 08
PLA                     ; $27:A146: 68
STA $0816,y             ; $27:A147: 99 16 08

CODE_27A14A:
BIT $02                 ; $27:A14A: 24 02
BVC CODE_27A16A         ; $27:A14C: 50 1C
LDA $0802,y             ; $27:A14E: B9 02 08
PHA                     ; $27:A151: 48
LDA $080A,y             ; $27:A152: B9 0A 08
STA $0802,y             ; $27:A155: 99 02 08
PLA                     ; $27:A158: 68
STA $080A,y             ; $27:A159: 99 0A 08
LDA $080E,y             ; $27:A15C: B9 0E 08
PHA                     ; $27:A15F: 48
LDA $0816,y             ; $27:A160: B9 16 08
STA $080E,y             ; $27:A163: 99 0E 08
PLA                     ; $27:A166: 68
STA $0816,y             ; $27:A167: 99 16 08

CODE_27A16A:
REP #$20                ; $27:A16A: C2 20
PHY                     ; $27:A16C: 5A
TYA                     ; $27:A16D: 98
LSR A                   ; $27:A16E: 4A
LSR A                   ; $27:A16F: 4A
TAY                     ; $27:A170: A8
SEP #$20                ; $27:A171: E2 20
LDA $07                 ; $27:A173: A5 07
ROL A                   ; $27:A175: 2A
ROL A                   ; $27:A176: 2A
STA $09                 ; $27:A177: 85 09
PHP                     ; $27:A179: 08
AND #$01                ; $27:A17A: 29 01
STA $0A20,y             ; $27:A17C: 99 20 0A
STA $0A23,y             ; $27:A17F: 99 23 0A
LDA $09                 ; $27:A182: A5 09
PLP                     ; $27:A184: 28
ROL A                   ; $27:A185: 2A
PHP                     ; $27:A186: 08
AND #$01                ; $27:A187: 29 01
STA $0A21,y             ; $27:A189: 99 21 0A
STA $0A24,y             ; $27:A18C: 99 24 0A
PLP                     ; $27:A18F: 28
ROL A                   ; $27:A190: 2A
AND #$01                ; $27:A191: 29 01
STA $0A22,y             ; $27:A193: 99 22 0A
STA $0A25,y             ; $27:A196: 99 25 0A
PLY                     ; $27:A199: 7A
SEP #$30                ; $27:A19A: E2 30
RTL                     ; $27:A19C: 6B

CODE_27A19D:
PHX                     ; $27:A19D: DA
LDY #$07                ; $27:A19E: A0 07

CODE_27A1A0:
STY $06                 ; $27:A1A0: 84 06
LDX $9B                 ; $27:A1A2: A6 9B
LDA $0783,x             ; $27:A1A4: BD 83 07
AND #$07                ; $27:A1A7: 29 07
CLC                     ; $27:A1A9: 18
ADC $06                 ; $27:A1AA: 65 06
TAY                     ; $27:A1AC: A8
LDA.w DATA_21AFFB,y     ; $27:A1AD: B9 FB AF
TAY                     ; $27:A1B0: A8
STY $08                 ; $27:A1B1: 84 08
LDA $0661,y             ; $27:A1B3: B9 61 06
BEQ CODE_27A1D1         ; $27:A1B6: F0 19

CODE_27A1B8:
LDY $06                 ; $27:A1B8: A4 06
DEY                     ; $27:A1BA: 88
BPL CODE_27A1A0         ; $27:A1BB: 10 E3
JSR CODE_27A202         ; $27:A1BD: 20 02 A2
BCS CODE_27A1F1         ; $27:A1C0: B0 2F
LDX #$20                ; $27:A1C2: A2 20
LDA $0783               ; $27:A1C4: AD 83 07
BPL CODE_27A1CB         ; $27:A1C7: 10 02
LDX #$30                ; $27:A1C9: A2 30

CODE_27A1CB:
STX $D8                 ; $27:A1CB: 86 D8
STZ $D9                 ; $27:A1CD: 64 D9
BRA CODE_27A1F1         ; $27:A1CF: 80 20

CODE_27A1D1:
TYA                     ; $27:A1D1: 98
CLC                     ; $27:A1D2: 18
ADC $055D               ; $27:A1D3: 6D 5D 05
ASL A                   ; $27:A1D6: 0A
TAY                     ; $27:A1D7: A8
REP #$20                ; $27:A1D8: C2 20
LDA.w DATA_21AF6E,y     ; $27:A1DA: B9 6E AF
STA $D8                 ; $27:A1DD: 85 D8
SEP #$20                ; $27:A1DF: E2 20
REP #$10                ; $27:A1E1: C2 10
LDX $D8                 ; $27:A1E3: A6 D8
LDA $0801,x             ; $27:A1E5: BD 01 08
CMP #$F0                ; $27:A1E8: C9 F0
BEQ CODE_27A1F1         ; $27:A1EA: F0 05
SEP #$10                ; $27:A1EC: E2 10
BRL CODE_27A1B8         ; $27:A1EE: 82 C7 FF

CODE_27A1F1:
SEP #$10                ; $27:A1F1: E2 10
LDX $D8                 ; $27:A1F3: A6 D8
STX $06                 ; $27:A1F5: 86 06
TXY                     ; $27:A1F7: 9B
PLX                     ; $27:A1F8: FA
LDA $D8                 ; $27:A1F9: A5 D8
STA $C6,x               ; $27:A1FB: 95 C6
LDA $D9                 ; $27:A1FD: A5 D9
STA $C7,x               ; $27:A1FF: 95 C7
RTL                     ; $27:A201: 6B

CODE_27A202:
PHX                     ; $27:A202: DA
REP #$30                ; $27:A203: C2 30
LDY #$000E              ; $27:A205: A0 0E 00

CODE_27A208:
LDA.w DATA_21AF6E,y     ; $27:A208: B9 6E AF
STA $D8                 ; $27:A20B: 85 D8
TAX                     ; $27:A20D: AA
LDA $0801,x             ; $27:A20E: BD 01 08
AND #$00FF              ; $27:A211: 29 FF 00
CMP #$00F0              ; $27:A214: C9 F0 00
BEQ CODE_27A222         ; $27:A217: F0 09
DEY                     ; $27:A219: 88
DEY                     ; $27:A21A: 88
BPL CODE_27A208         ; $27:A21B: 10 EB
SEP #$30                ; $27:A21D: E2 30
PLX                     ; $27:A21F: FA
CLC                     ; $27:A220: 18
RTS                     ; $27:A221: 60

CODE_27A222:
SEP #$30                ; $27:A222: E2 30
PLX                     ; $27:A224: FA
SEC                     ; $27:A225: 38
RTS                     ; $27:A226: 60

CODE_27A227:
PHX                     ; $27:A227: DA
LDA $C6,x               ; $27:A228: B5 C6
STA $DA                 ; $27:A22A: 85 DA
LDA $C7,x               ; $27:A22C: B5 C7
STA $DB                 ; $27:A22E: 85 DB
LDY #$07                ; $27:A230: A0 07

CODE_27A232:
STY $06                 ; $27:A232: 84 06
LDA $0661,y             ; $27:A234: B9 61 06
BNE CODE_27A257         ; $27:A237: D0 1E
TYA                     ; $27:A239: 98
CLC                     ; $27:A23A: 18
ADC $055D               ; $27:A23B: 6D 5D 05
ASL A                   ; $27:A23E: 0A
TAY                     ; $27:A23F: A8
REP #$30                ; $27:A240: C2 30
LDA.w DATA_21AF6E,y     ; $27:A242: B9 6E AF
CMP $DA                 ; $27:A245: C5 DA
BEQ CODE_27A257         ; $27:A247: F0 0E
STA $D8                 ; $27:A249: 85 D8
TAY                     ; $27:A24B: A8
LDA $0801,y             ; $27:A24C: B9 01 08
AND #$00FF              ; $27:A24F: 29 FF 00
CMP #$00F0              ; $27:A252: C9 F0 00
BEQ CODE_27A26B         ; $27:A255: F0 14

CODE_27A257:
SEP #$30                ; $27:A257: E2 30
LDY $06                 ; $27:A259: A4 06
DEY                     ; $27:A25B: 88
BPL CODE_27A232         ; $27:A25C: 10 D4
LDX #$20                ; $27:A25E: A2 20
LDA $0783               ; $27:A260: AD 83 07
BPL CODE_27A267         ; $27:A263: 10 02
LDX #$30                ; $27:A265: A2 30

CODE_27A267:
STX $D8                 ; $27:A267: 86 D8
STZ $D9                 ; $27:A269: 64 D9

CODE_27A26B:
SEP #$30                ; $27:A26B: E2 30
LDX $D8                 ; $27:A26D: A6 D8
STX $06                 ; $27:A26F: 86 06
TXY                     ; $27:A271: 9B
PLX                     ; $27:A272: FA
LDA $D8                 ; $27:A273: A5 D8
STA $C6,x               ; $27:A275: 95 C6
LDA $D9                 ; $27:A277: A5 D9
STA $C7,x               ; $27:A279: 95 C7
RTL                     ; $27:A27B: 6B

CODE_27A27C:
LDY $0671,x             ; $27:A27C: BC 71 06
LDA.w DATA_21B047,y     ; $27:A27F: B9 47 B0
AND #$70                ; $27:A282: 29 70
LSR A                   ; $27:A284: 4A
LSR A                   ; $27:A285: 4A
LSR A                   ; $27:A286: 4A
LSR A                   ; $27:A287: 4A
TAY                     ; $27:A288: A8

CODE_27A289:
LDA $0661,x             ; $27:A289: BD 61 06
CMP #$02                ; $27:A28C: C9 02
BPL CODE_27A296         ; $27:A28E: 10 06
LDA #$FC                ; $27:A290: A9 FC
STA $0651,x             ; $27:A292: 9D 51 06
RTL                     ; $27:A295: 6B

CODE_27A296:
LDA #$00                ; $27:A296: A9 00
STA $0651,x             ; $27:A298: 9D 51 06

CODE_27A29B:
LDA $5F,x               ; $27:A29B: B5 5F
STA $0E                 ; $27:A29D: 85 0E
LDA $44,x               ; $27:A29F: B5 44
STA $0F                 ; $27:A2A1: 85 0F
REP #$20                ; $27:A2A3: C2 20
LDA.w DATA_21B00A,y     ; $27:A2A5: B9 0A B0
AND #$00FF              ; $27:A2A8: 29 FF 00
CLC                     ; $27:A2AB: 18
ADC $0E                 ; $27:A2AC: 65 0E
SEC                     ; $27:A2AE: 38
SBC $0210               ; $27:A2AF: ED 10 02
CMP #$0100              ; $27:A2B2: C9 00 01
BCC CODE_27A2C2         ; $27:A2B5: 90 0B
SEP #$20                ; $27:A2B7: E2 20
LDA $0651,x             ; $27:A2B9: BD 51 06
ORA.w DATA_21B010,y     ; $27:A2BC: 19 10 B0
STA $0651,x             ; $27:A2BF: 9D 51 06

CODE_27A2C2:
SEP #$20                ; $27:A2C2: E2 20
DEY                     ; $27:A2C4: 88
BPL CODE_27A29B         ; $27:A2C5: 10 D4
RTL                     ; $27:A2C7: 6B

CODE_27A2C8:
LDY $0671,x             ; $27:A2C8: BC 71 06
LDA.w DATA_21B047,y     ; $27:A2CB: B9 47 B0
AND #$0C                ; $27:A2CE: 29 0C
LSR A                   ; $27:A2D0: 4A
LSR A                   ; $27:A2D1: 4A
TAY                     ; $27:A2D2: A8

CODE_27A2D3:
LDA #$01                ; $27:A2D3: A9 01
STA $02                 ; $27:A2D5: 85 02
LDA #$00                ; $27:A2D7: A9 00
STA $0681,x             ; $27:A2D9: 9D 81 06
LDA $56,x               ; $27:A2DC: B5 56
STA $00                 ; $27:A2DE: 85 00
LDA $71,x               ; $27:A2E0: B5 71
STA $01                 ; $27:A2E2: 85 01

CODE_27A2E4:
LDA $01                 ; $27:A2E4: A5 01
CLC                     ; $27:A2E6: 18
ADC #$10                ; $27:A2E7: 69 10
STA $01                 ; $27:A2E9: 85 01
BCC CODE_27A2EF         ; $27:A2EB: 90 02
INC $00                 ; $27:A2ED: E6 00

CODE_27A2EF:
LDA $01                 ; $27:A2EF: A5 01
SEC                     ; $27:A2F1: 38
SBC $0543               ; $27:A2F2: ED 43 05
STA $03                 ; $27:A2F5: 85 03
LDA $00                 ; $27:A2F7: A5 00
SBC $0542               ; $27:A2F9: ED 42 05
BNE CODE_27A304         ; $27:A2FC: D0 06
LDA $03                 ; $27:A2FE: A5 03
CMP #$F0                ; $27:A300: C9 F0
BCC CODE_27A30C         ; $27:A302: 90 08

CODE_27A304:
LDA $02                 ; $27:A304: A5 02
ORA $0681,x             ; $27:A306: 1D 81 06
STA $0681,x             ; $27:A309: 9D 81 06

CODE_27A30C:
ASL $02                 ; $27:A30C: 06 02
DEY                     ; $27:A30E: 88
BPL CODE_27A2E4         ; $27:A30F: 10 D3
RTL                     ; $27:A311: 6B

CODE_27A312:
JSR CODE_27A31B         ; $27:A312: 20 1B A3
RTL                     ; $27:A315: 6B

CODE_27A316:
JSR CODE_27A31F         ; $27:A316: 20 1F A3
RTL                     ; $27:A319: 6B

CODE_27A31A:
RTS                     ; $27:A31A: 60

CODE_27A31B:
LDA #$01                ; $27:A31B: A9 01
BRA CODE_27A321         ; $27:A31D: 80 02

CODE_27A31F:
LDA #$00                ; $27:A31F: A9 00

CODE_27A321:
STA $0F                 ; $27:A321: 85 0F
LDA $0797,x             ; $27:A323: BD 97 07
AND #$FC                ; $27:A326: 29 FC
STA $0797,x             ; $27:A328: 9D 97 07
CLC                     ; $27:A32B: 18
LDA $BF                 ; $27:A32C: A5 BF
ORA $0583               ; $27:A32E: 0D 83 05
ORA $0587               ; $27:A331: 0D 87 05
BNE CODE_27A31A         ; $27:A334: D0 E4
JSL CODE_27A413         ; $27:A336: 22 13 A4 27
LDA $BB                 ; $27:A33A: A5 BB
BEQ CODE_27A347         ; $27:A33C: F0 09
LDA #$00                ; $27:A33E: A9 00
LDY $056F               ; $27:A340: AC 6F 05
BNE CODE_27A347         ; $27:A343: D0 02
LDA #$01                ; $27:A345: A9 01

CODE_27A347:
ASL A                   ; $27:A347: 0A
ASL A                   ; $27:A348: 0A
TAY                     ; $27:A349: A8
LDA $79                 ; $27:A34A: A5 79
CLC                     ; $27:A34C: 18
ADC.w DATA_21B016,y     ; $27:A34D: 79 16 B0
STA $02                 ; $27:A350: 85 02
LDA $82                 ; $27:A352: A5 82
CLC                     ; $27:A354: 18
ADC.w DATA_21B016+2,y   ; $27:A355: 79 18 B0
STA $06                 ; $27:A358: 85 06
LDA.w DATA_21B016+1,y   ; $27:A35A: B9 17 B0
STA $03                 ; $27:A35D: 85 03
LDA.w DATA_21B016+3,y   ; $27:A35F: B9 19 B0
STA $07                 ; $27:A362: 85 07
JSL CODE_27A45F         ; $27:A364: 22 5F A4 27
BCC CODE_27A31A         ; $27:A368: 90 B0
STA $00                 ; $27:A36A: 85 00
LDA $0425               ; $27:A36C: AD 25 04
BNE CODE_27A398         ; $27:A36F: D0 27
LDA $5E                 ; $27:A371: A5 5E
SEC                     ; $27:A373: 38
SBC $5F,x               ; $27:A374: F5 5F
STA $0E                 ; $27:A376: 85 0E
LDA $43                 ; $27:A378: A5 43
SBC $44,x               ; $27:A37A: F5 44
STA $0D                 ; $27:A37C: 85 0D
BPL CODE_27A390         ; $27:A37E: 10 10
LDA $0E                 ; $27:A380: A5 0E

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:A382: 22 59 A8 27
STA $0E                 ; $27:A386: 85 0E
LDA $0D                 ; $27:A388: A5 0D
EOR #$FF                ; $27:A38A: 49 FF
ADC #$00                ; $27:A38C: 69 00
STA $0D                 ; $27:A38E: 85 0D

CODE_27A390:
LDA $0D                 ; $27:A390: A5 0D
BNE CODE_27A407         ; $27:A392: D0 73
LDA $0E                 ; $27:A394: A5 0E
BMI CODE_27A407         ; $27:A396: 30 6F

CODE_27A398:
LDA $70                 ; $27:A398: A5 70
SEC                     ; $27:A39A: 38
SBC $71,x               ; $27:A39B: F5 71
STA $0E                 ; $27:A39D: 85 0E
LDA $55                 ; $27:A39F: A5 55
SBC $56,x               ; $27:A3A1: F5 56
STA $0D                 ; $27:A3A3: 85 0D
BPL CODE_27A3B7         ; $27:A3A5: 10 10
LDA $0E                 ; $27:A3A7: A5 0E

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:A3A9: 22 59 A8 27
STA $0E                 ; $27:A3AD: 85 0E
LDA $0D                 ; $27:A3AF: A5 0D
EOR #$FF                ; $27:A3B1: 49 FF
ADC #$00                ; $27:A3B3: 69 00
STA $0D                 ; $27:A3B5: 85 0D

CODE_27A3B7:
LDA $0D                 ; $27:A3B7: A5 0D
BNE CODE_27A407         ; $27:A3B9: D0 4C
LDA $0E                 ; $27:A3BB: A5 0E
BMI CODE_27A407         ; $27:A3BD: 30 48
LDA $0B                 ; $27:A3BF: A5 0B
LSR A                   ; $27:A3C1: 4A
BCC CODE_27A3D3         ; $27:A3C2: 90 0F
LDA $00                 ; $27:A3C4: A5 00
SEC                     ; $27:A3C6: 38
SBC $0A                 ; $27:A3C7: E5 0A
CMP #$08                ; $27:A3C9: C9 08
BMI CODE_27A3D3         ; $27:A3CB: 30 06
LDA $0B                 ; $27:A3CD: A5 0B
EOR #$01                ; $27:A3CF: 49 01
STA $0B                 ; $27:A3D1: 85 0B

CODE_27A3D3:
LDA $0B                 ; $27:A3D3: A5 0B
ORA $0797,x             ; $27:A3D5: 1D 97 07
STA $0797,x             ; $27:A3D8: 9D 97 07
LDA $0553               ; $27:A3DB: AD 53 05
BEQ CODE_27A409         ; $27:A3DE: F0 29
LDY $0671,x             ; $27:A3E0: BC 71 06
LDA.w DATA_21AE78,y     ; $27:A3E3: B9 78 AE
AND #$80                ; $27:A3E6: 29 80
BNE CODE_27A409         ; $27:A3E8: D0 1F
LDA #$06                ; $27:A3EA: A9 06
STA $0661,x             ; $27:A3EC: 9D 61 06
LDA #$C8                ; $27:A3EF: A9 C8
STA $9E,x               ; $27:A3F1: 95 9E
LDA #$03                ; $27:A3F3: A9 03
STA $1200               ; $27:A3F5: 8D 00 12
LDA #$05                ; $27:A3F8: A9 05
JSL CODE_278A94         ; $27:A3FA: 22 94 8A 27

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:A3FE: 22 37 A8 27
LDA.w DATA_21B01E,y     ; $27:A402: B9 1E B0
STA $8C,x               ; $27:A405: 95 8C

CODE_27A407:
CLC                     ; $27:A407: 18
RTS                     ; $27:A408: 60

CODE_27A409:
LDA $0F                 ; $27:A409: A5 0F
BNE CODE_27A411         ; $27:A40B: D0 04
JSL CODE_27A49C         ; $27:A40D: 22 9C A4 27

CODE_27A411:
SEC                     ; $27:A411: 38
RTS                     ; $27:A412: 60

CODE_27A413:
LDY $0671,x             ; $27:A413: BC 71 06
LDA.w DATA_21AE78,y     ; $27:A416: B9 78 AE
AND #$0F                ; $27:A419: 29 0F
ASL A                   ; $27:A41B: 0A
ASL A                   ; $27:A41C: 0A
TAY                     ; $27:A41D: A8
LDA $7A,x               ; $27:A41E: B5 7A
CLC                     ; $27:A420: 18
ADC.w DATA_21AE38,y     ; $27:A421: 79 38 AE
STA $00                 ; $27:A424: 85 00
LDA $83,x               ; $27:A426: B5 83
CLC                     ; $27:A428: 18
ADC.w DATA_21AE38+2,y   ; $27:A429: 79 3A AE
STA $04                 ; $27:A42C: 85 04
LDA.w DATA_21AE38+1,y   ; $27:A42E: B9 39 AE
STA $01                 ; $27:A431: 85 01
LDA.w DATA_21AE38+3,y   ; $27:A433: B9 3B AE
STA $05                 ; $27:A436: 85 05
RTL                     ; $27:A438: 6B

CODE_27A439:
LDY $0671,x             ; $27:A439: BC 71 06
LDA.w DATA_21AE78,y     ; $27:A43C: B9 78 AE
AND #$0F                ; $27:A43F: 29 0F
ASL A                   ; $27:A441: 0A
ASL A                   ; $27:A442: 0A
TAY                     ; $27:A443: A8
LDA $7A,x               ; $27:A444: B5 7A
CLC                     ; $27:A446: 18
ADC.w DATA_21AE38,y     ; $27:A447: 79 38 AE
STA $02                 ; $27:A44A: 85 02
LDA $83,x               ; $27:A44C: B5 83
CLC                     ; $27:A44E: 18
ADC.w DATA_21AE38+2,y   ; $27:A44F: 79 3A AE
STA $06                 ; $27:A452: 85 06
LDA.w DATA_21AE38+1,y   ; $27:A454: B9 39 AE
STA $03                 ; $27:A457: 85 03
LDA.w DATA_21AE38+3,y   ; $27:A459: B9 3B AE
STA $07                 ; $27:A45C: 85 07
RTL                     ; $27:A45E: 6B

CODE_27A45F:
LDY #$00                ; $27:A45F: A0 00
STY $0B                 ; $27:A461: 84 0B
LDA $02                 ; $27:A463: A5 02
SEC                     ; $27:A465: 38
SBC $00                 ; $27:A466: E5 00
STA $0A                 ; $27:A468: 85 0A
ASL A                   ; $27:A46A: 0A
LDA $01                 ; $27:A46B: A5 01
BCC CODE_27A47B         ; $27:A46D: 90 0C
LDA $0A                 ; $27:A46F: A5 0A
EOR #$FF                ; $27:A471: 49 FF
STA $0A                 ; $27:A473: 85 0A
INC $0A                 ; $27:A475: E6 0A
INC $0B                 ; $27:A477: E6 0B
LDA $03                 ; $27:A479: A5 03

CODE_27A47B:
CMP $0A                 ; $27:A47B: C5 0A
BCC CODE_27A49B         ; $27:A47D: 90 1C
ASL $0B                 ; $27:A47F: 06 0B
LDA $06                 ; $27:A481: A5 06
SEC                     ; $27:A483: 38
SBC $04                 ; $27:A484: E5 04
STA $0A                 ; $27:A486: 85 0A
ASL A                   ; $27:A488: 0A
LDA $05                 ; $27:A489: A5 05
BCC CODE_27A499         ; $27:A48B: 90 0C
LDA $0A                 ; $27:A48D: A5 0A
EOR #$FF                ; $27:A48F: 49 FF
STA $0A                 ; $27:A491: 85 0A
INC $0A                 ; $27:A493: E6 0A
INC $0B                 ; $27:A495: E6 0B
LDA $07                 ; $27:A497: A5 07

CODE_27A499:
CMP $0A                 ; $27:A499: C5 0A

CODE_27A49B:
RTL                     ; $27:A49B: 6B

CODE_27A49C:
REP #$30                ; $27:A49C: C2 30
LDA $0671,x             ; $27:A49E: BD 71 06
AND #$00FF              ; $27:A4A1: 29 FF 00
STA $00                 ; $27:A4A4: 85 00
ASL A                   ; $27:A4A6: 0A
CLC                     ; $27:A4A7: 18
ADC $00                 ; $27:A4A8: 65 00
TAX                     ; $27:A4AA: AA
SEP #$20                ; $27:A4AB: E2 20
LDA.l PNTR_288438,x     ; $27:A4AD: BF 38 84 28
STA $00                 ; $27:A4B1: 85 00
LDA.l PNTR_288438+1,x   ; $27:A4B3: BF 39 84 28
STA $01                 ; $27:A4B7: 85 01
LDA.l PNTR_288438+2,x   ; $27:A4B9: BF 3A 84 28
STA $02                 ; $27:A4BD: 85 02
SEP #$10                ; $27:A4BF: E2 10
LDX $9B                 ; $27:A4C1: A6 9B
JML [$0000]             ; $27:A4C3: DC 00 00

CODE_27A4C6:
LDA $0552               ; $27:A4C6: AD 52 05
ORA $057A               ; $27:A4C9: 0D 7A 05
ORA $0553               ; $27:A4CC: 0D 53 05
ORA $0554               ; $27:A4CF: 0D 54 05
ORA $9C                 ; $27:A4D2: 05 9C
ORA $0556               ; $27:A4D4: 0D 56 05
ORA $1CFF               ; $27:A4D7: 0D FF 1C
BEQ CODE_27A4DF         ; $27:A4DA: F0 03
JMP CODE_27A543         ; $27:A4DC: 4C 43 A5

CODE_27A4DF:
LDA $0577               ; $27:A4DF: AD 77 05
BNE CODE_27A4EA         ; $27:A4E2: D0 06
LDA $BB                 ; $27:A4E4: A5 BB
CMP #$04                ; $27:A4E6: C9 04
BMI CODE_27A515         ; $27:A4E8: 30 2B

CODE_27A4EA:
LDA #$0F                ; $27:A4EA: A9 0F
STA $1200               ; $27:A4EC: 8D 00 12
LDA $0577               ; $27:A4EF: AD 77 05
BEQ CODE_27A4F8         ; $27:A4F2: F0 04
LDA #$00                ; $27:A4F4: A9 00
BRA CODE_27A4FD         ; $27:A4F6: 80 05

CODE_27A4F8:
LDY $BB                 ; $27:A4F8: A4 BB
LDA.w DATA_21B024,y     ; $27:A4FA: B9 24 B0

CODE_27A4FD:
STA $00                 ; $27:A4FD: 85 00
JSR CODE_27A57F         ; $27:A4FF: 20 7F A5
LDA $0577               ; $27:A502: AD 77 05
BEQ CODE_27A50E         ; $27:A505: F0 07
LDA #$00                ; $27:A507: A9 00
STA $0577               ; $27:A509: 8D 77 05
BRA CODE_27A537         ; $27:A50C: 80 29

CODE_27A50E:
LDA #$02                ; $27:A50E: A9 02
STA $0578               ; $27:A510: 8D 78 05
BRA CODE_27A537         ; $27:A513: 80 22

CODE_27A515:
LDA $BB                 ; $27:A515: A5 BB
BEQ CODE_27A544         ; $27:A517: F0 2B
LDA #$02                ; $27:A519: A9 02
STA $0578               ; $27:A51B: 8D 78 05
LDA $BB                 ; $27:A51E: A5 BB
CMP #$04                ; $27:A520: C9 04
BPL CODE_27A52B         ; $27:A522: 10 07
LDA #$04                ; $27:A524: A9 04
STA $1200               ; $27:A526: 8D 00 12
LDA $BB                 ; $27:A529: A5 BB

CODE_27A52B:
CMP #$02                ; $27:A52B: C9 02
BCS CODE_27A537         ; $27:A52D: B0 08
LDA #$2F                ; $27:A52F: A9 2F

; Player growing/shrinking animation timer
STA $0551               ; $27:A531: 8D 51 05
DEC $0578               ; $27:A534: CE 78 05

CODE_27A537:
LDA #$71                ; $27:A537: A9 71
STA $0552               ; $27:A539: 8D 52 05
LDA #$00                ; $27:A53C: A9 00
STA $054F               ; $27:A53E: 8D 4F 05
BEQ CODE_27A578         ; $27:A541: F0 35

CODE_27A543:
RTL                     ; $27:A543: 6B

CODE_27A544:
LDX $9B                 ; $27:A544: A6 9B

CODE_27A546:
LDA #$09                ; $27:A546: A9 09
STA $1202               ; $27:A548: 8D 02 12
LDA #$01                ; $27:A54B: A9 01
STA $02D9               ; $27:A54D: 8D D9 02
STZ $8B                 ; $27:A550: 64 8B
STZ $C1                 ; $27:A552: 64 C1
STZ $054F               ; $27:A554: 9C 4F 05
STZ $0552               ; $27:A557: 9C 52 05
STZ $0577               ; $27:A55A: 9C 77 05
STZ $0553               ; $27:A55D: 9C 53 05
STZ $0567               ; $27:A560: 9C 67 05
STZ $057A               ; $27:A563: 9C 7A 05
LDA #$01                ; $27:A566: A9 01
STA $0578               ; $27:A568: 8D 78 05
LDA #$C0                ; $27:A56B: A9 C0
STA $9D                 ; $27:A56D: 85 9D
LDA #$30                ; $27:A56F: A9 30
STA $0510               ; $27:A571: 8D 10 05
LDA #$01                ; $27:A574: A9 01
STA $BF                 ; $27:A576: 85 BF

CODE_27A578:
LDA $BD                 ; $27:A578: A5 BD
AND #$7F                ; $27:A57A: 29 7F
STA $BD                 ; $27:A57C: 85 BD
RTL                     ; $27:A57E: 6B

CODE_27A57F:
LDY #$05                ; $27:A57F: A0 05

CODE_27A581:
LDA $1FC8,y             ; $27:A581: B9 C8 1F
BEQ CODE_27A58A         ; $27:A584: F0 04
DEY                     ; $27:A586: 88
BPL CODE_27A581         ; $27:A587: 10 F8
RTS                     ; $27:A589: 60

CODE_27A58A:
LDA #$09                ; $27:A58A: A9 09
STA $1FC8,y             ; $27:A58C: 99 C8 1F
LDA $70                 ; $27:A58F: A5 70
STA $05BF,y             ; $27:A591: 99 BF 05
LDA $55                 ; $27:A594: A5 55
STA $1FD7,y             ; $27:A596: 99 D7 1F
LDA $5E                 ; $27:A599: A5 5E
STA $05C9,y             ; $27:A59B: 99 C9 05
LDA $43                 ; $27:A59E: A5 43
STA $00E2,y             ; $27:A5A0: 99 E2 00
LDA #$D0                ; $27:A5A3: A9 D0
STA $05D3,y             ; $27:A5A5: 99 D3 05
LDA #$00                ; $27:A5A8: A9 00
CMP $BD                 ; $27:A5AA: C5 BD
LDA #$10                ; $27:A5AC: A9 10
BCS CODE_27A5B2         ; $27:A5AE: B0 02
LDA #$F0                ; $27:A5B0: A9 F0

CODE_27A5B2:
STA $05DD,y             ; $27:A5B2: 99 DD 05
LDA $00                 ; $27:A5B5: A5 00
STA $06C7,y             ; $27:A5B7: 99 C7 06
RTS                     ; $27:A5BA: 60

CODE_27A5BB:
LDA $0797,x             ; $27:A5BB: BD 97 07
AND #$F7                ; $27:A5BE: 29 F7
STA $0797,x             ; $27:A5C0: 9D 97 07
JSR CODE_27A5E0         ; $27:A5C3: 20 E0 A5
LDA $07B3               ; $27:A5C6: AD B3 07
CMP #$FF                ; $27:A5C9: C9 FF
BEQ CODE_27A5DF         ; $27:A5CB: F0 12
STA $06                 ; $27:A5CD: 85 06
LDA #$0F                ; $27:A5CF: A9 0F
STA $07                 ; $27:A5D1: 85 07
LDA $07B4               ; $27:A5D3: AD B4 07
STA $02                 ; $27:A5D6: 85 02
LDA #$0F                ; $27:A5D8: A9 0F
STA $03                 ; $27:A5DA: 85 03
JSR CODE_27A614         ; $27:A5DC: 20 14 A6

CODE_27A5DF:
RTS                     ; $27:A5DF: 60

CODE_27A5E0:
LDA $0517               ; $27:A5E0: AD 17 05
BEQ CODE_27A5DF         ; $27:A5E3: F0 FA
CMP #$0C                ; $27:A5E5: C9 0C
BEQ CODE_27A5ED         ; $27:A5E7: F0 04
CMP #$09                ; $27:A5E9: C9 09
BNE CODE_27A5DF         ; $27:A5EB: D0 F2

CODE_27A5ED:
LDA $BD                 ; $27:A5ED: A5 BD
AND #$40                ; $27:A5EF: 29 40
TAY                     ; $27:A5F1: A8
BEQ CODE_27A5F6         ; $27:A5F2: F0 02
LDY #$01                ; $27:A5F4: A0 01

CODE_27A5F6:
LDA.w DATA_21B02D,y     ; $27:A5F6: B9 2D B0
CLC                     ; $27:A5F9: 18
ADC $79                 ; $27:A5FA: 65 79
STA $02                 ; $27:A5FC: 85 02
LDA #$0A                ; $27:A5FE: A9 0A
STA $03                 ; $27:A600: 85 03
LDA $82                 ; $27:A602: A5 82
CLC                     ; $27:A604: 18
ADC #$10                ; $27:A605: 69 10
STA $06                 ; $27:A607: 85 06
LDA #$0F                ; $27:A609: A9 0F
STA $07                 ; $27:A60B: 85 07
LDA $0544               ; $27:A60D: AD 44 05
CMP #$FE                ; $27:A610: C9 FE
BEQ CODE_27A5DF         ; $27:A612: F0 CB

CODE_27A614:
LDY $0661,x             ; $27:A614: BC 61 06
LDA.w DATA_21B033,y     ; $27:A617: B9 33 B0
BNE CODE_27A5DF         ; $27:A61A: D0 C3
JSL CODE_27A85F         ; $27:A61C: 22 5F A8 27
BNE CODE_27A5DF         ; $27:A620: D0 BD
JSL CODE_27A413         ; $27:A622: 22 13 A4 27
JSL CODE_27A45F         ; $27:A626: 22 5F A4 27
BCC CODE_27A5DF         ; $27:A62A: 90 B3
LDA $0797,x             ; $27:A62C: BD 97 07
ORA #$08                ; $27:A62F: 09 08
STA $0797,x             ; $27:A631: 9D 97 07
LDY $0671,x             ; $27:A634: BC 71 06
LDA.w DATA_21B1AF,y     ; $27:A637: B9 AF B1
AND #$80                ; $27:A63A: 29 80
BNE CODE_27A5DF         ; $27:A63C: D0 A1
LDA $03                 ; $27:A63E: A5 03
CMP #$0F                ; $27:A640: C9 0F
BEQ CODE_27A679         ; $27:A642: F0 35
LDY #$00                ; $27:A644: A0 00
LDA $BD                 ; $27:A646: A5 BD
BEQ CODE_27A64B         ; $27:A648: F0 01
INY                     ; $27:A64A: C8

CODE_27A64B:
LDA $5E                 ; $27:A64B: A5 5E
STA $D8                 ; $27:A64D: 85 D8
LDA $43                 ; $27:A64F: A5 43
STA $D9                 ; $27:A651: 85 D9
SEP #$20                ; $27:A653: E2 20
LDA.w DATA_21B031,y     ; $27:A655: B9 31 B0
AND #$FF                ; $27:A658: 29 FF
CMP #$80                ; $27:A65A: C9 80
BCC CODE_27A660         ; $27:A65C: 90 02
ORA #$00                ; $27:A65E: 09 00

CODE_27A660:
CLC                     ; $27:A660: 18
ADC $D8                 ; $27:A661: 65 D8
SEP #$20                ; $27:A663: E2 20
STA $1A48               ; $27:A665: 8D 48 1A
XBA                     ; $27:A668: EB
STA $027E               ; $27:A669: 8D 7E 02
LDA $70                 ; $27:A66C: A5 70
CLC                     ; $27:A66E: 18
ADC #$10                ; $27:A66F: 69 10
STA $1A47               ; $27:A671: 8D 47 1A
LDA #$0A                ; $27:A674: A9 0A
STA $1A46               ; $27:A676: 8D 46 1A

CODE_27A679:
LDA #$0C                ; $27:A679: A9 0C
STA $0520,x             ; $27:A67B: 9D 20 05
LDA #$03                ; $27:A67E: A9 03
STA $1200               ; $27:A680: 8D 00 12
LDY $0671,x             ; $27:A683: BC 71 06
LDA.w DATA_21B1AF,y     ; $27:A686: B9 AF B1
AND #$40                ; $27:A689: 29 40
BNE CODE_27A69D         ; $27:A68B: D0 10
LDA $0545               ; $27:A68D: AD 45 05
BNE CODE_27A699         ; $27:A690: D0 07
LDA $05F4               ; $27:A692: AD F4 05
JSL CODE_278A8A         ; $27:A695: 22 8A 8A 27

CODE_27A699:
LDA #$06                ; $27:A699: A9 06
BNE CODE_27A6CA         ; $27:A69B: D0 2D

CODE_27A69D:
PHX                     ; $27:A69D: DA
REP #$30                ; $27:A69E: C2 30
LDA $0671,x             ; $27:A6A0: BD 71 06
AND #$00FF              ; $27:A6A3: 29 FF 00
STA $D8                 ; $27:A6A6: 85 D8
ASL A                   ; $27:A6A8: 0A
CLC                     ; $27:A6A9: 18
ADC $D8                 ; $27:A6AA: 65 D8
TAX                     ; $27:A6AC: AA
LDA.l PNTR_288438,x     ; $27:A6AD: BF 38 84 28
STA $D8                 ; $27:A6B1: 85 D8
SEP #$30                ; $27:A6B3: E2 30
PLX                     ; $27:A6B5: FA
LDA $D9                 ; $27:A6B6: A5 D9
AND #$F8                ; $27:A6B8: 29 F8
CMP #$08                ; $27:A6BA: C9 08
BNE CODE_27A6C3         ; $27:A6BC: D0 05
LDA $D8                 ; $27:A6BE: A5 D8
STA $0671,x             ; $27:A6C0: 9D 71 06

CODE_27A6C3:
LDA #$FF                ; $27:A6C3: A9 FF
STA $06A6,x             ; $27:A6C5: 9D A6 06
LDA #$03                ; $27:A6C8: A9 03

CODE_27A6CA:
STA $0661,x             ; $27:A6CA: 9D 61 06
LDA #$D0                ; $27:A6CD: A9 D0
LDY $03                 ; $27:A6CF: A4 03
CPY #$0F                ; $27:A6D1: C0 0F
BEQ CODE_27A6D7         ; $27:A6D3: F0 02
LDA #$B0                ; $27:A6D5: A9 B0

CODE_27A6D7:
STA $9E,x               ; $27:A6D7: 95 9E

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:A6D9: 22 37 A8 27
LDA.w DATA_21B02B,y     ; $27:A6DD: B9 2B B0
STA $8C,x               ; $27:A6E0: 95 8C
LDA $0679,x             ; $27:A6E2: BD 79 06
ORA #$80                ; $27:A6E5: 09 80
STA $0679,x             ; $27:A6E7: 9D 79 06
RTS                     ; $27:A6EA: 60

CODE_27A6EB:
JSR CODE_27A6EF         ; $27:A6EB: 20 EF A6
RTL                     ; $27:A6EE: 6B

CODE_27A6EF:
LDA $0681,x             ; $27:A6EF: BD 81 06
BNE CODE_27A74E         ; $27:A6F2: D0 5A
LDA $0651,x             ; $27:A6F4: BD 51 06
AND #$C0                ; $27:A6F7: 29 C0
CMP #$C0                ; $27:A6F9: C9 C0
BEQ CODE_27A74E         ; $27:A6FB: F0 51
JSL CODE_27A439         ; $27:A6FD: 22 39 A4 27

CODE_27A701:
LDX #$04                ; $27:A701: A2 04

CODE_27A703:
CPX $9B                 ; $27:A703: E4 9B
BEQ CODE_27A74B         ; $27:A705: F0 44
LDY $0661,x             ; $27:A707: BC 61 06
LDA.w DATA_21B033,y     ; $27:A70A: B9 33 B0
BNE CODE_27A74B         ; $27:A70D: D0 3C
LDA $0681,x             ; $27:A70F: BD 81 06
BNE CODE_27A74B         ; $27:A712: D0 37
LDA $0651,x             ; $27:A714: BD 51 06
AND #$C0                ; $27:A717: 29 C0
CMP #$C0                ; $27:A719: C9 C0
BEQ CODE_27A74B         ; $27:A71B: F0 2E
JSL CODE_27A413         ; $27:A71D: 22 13 A4 27
JSL CODE_27A45F         ; $27:A721: 22 5F A4 27
BCC CODE_27A74B         ; $27:A725: 90 24
LDY $9B                 ; $27:A727: A4 9B
LDA $5F,x               ; $27:A729: B5 5F
SEC                     ; $27:A72B: 38
SBC $005F,y             ; $27:A72C: F9 5F 00
PHA                     ; $27:A72F: 48
LDA $44,x               ; $27:A730: B5 44
SBC $0044,y             ; $27:A732: F9 44 00
STA $00                 ; $27:A735: 85 00
PLA                     ; $27:A737: 68
ADC #$80                ; $27:A738: 69 80
LDA $00                 ; $27:A73A: A5 00
ADC #$00                ; $27:A73C: 69 00
BNE CODE_27A74B         ; $27:A73E: D0 0B
SEC                     ; $27:A740: 38
LDY $0671,x             ; $27:A741: BC 71 06
LDA.w DATA_21AE78,y     ; $27:A744: B9 78 AE
AND #$80                ; $27:A747: 29 80
BEQ CODE_27A751         ; $27:A749: F0 06

CODE_27A74B:
DEX                     ; $27:A74B: CA
BPL CODE_27A703         ; $27:A74C: 10 B5

CODE_27A74E:
CLC                     ; $27:A74E: 18
BCC CODE_27A756         ; $27:A74F: 90 05

CODE_27A751:
TXA                     ; $27:A751: 8A
TAY                     ; $27:A752: A8
LDA $0671,y             ; $27:A753: B9 71 06

CODE_27A756:
LDX $9B                 ; $27:A756: A6 9B
RTS                     ; $27:A758: 60

CODE_27A759:
JSR CODE_27A701         ; $27:A759: 20 01 A7
RTL                     ; $27:A75C: 6B

CODE_27A75D:
PHA                     ; $27:A75D: 48
LDA $0425               ; $27:A75E: AD 25 04
BEQ CODE_27A77E         ; $27:A761: F0 1B
LDY $0C                 ; $27:A763: A4 0C
LDA $0D                 ; $27:A765: A5 0D
JSL CODE_209FC1         ; $27:A767: 22 C1 9F 20
PHA                     ; $27:A76B: 48
PHX                     ; $27:A76C: DA
TYX                     ; $27:A76D: BB
LDA.l DATA_21823C,x     ; $27:A76E: BF 3C 82 21
STA $00                 ; $27:A772: 85 00
LDA.l DATA_21824C,x     ; $27:A774: BF 4C 82 21
STA $01                 ; $27:A778: 85 01
PLX                     ; $27:A77A: FA
PLA                     ; $27:A77B: 68
BRA CODE_27A798         ; $27:A77C: 80 1A

CODE_27A77E:
PHX                     ; $27:A77E: DA
LDA $0E                 ; $27:A77F: A5 0E
ASL A                   ; $27:A781: 0A
TAX                     ; $27:A782: AA
LDA.l DATA_218200,x     ; $27:A783: BF 00 82 21
STA $00                 ; $27:A787: 85 00
LDA.l DATA_218200+1,x   ; $27:A789: BF 01 82 21
STA $01                 ; $27:A78D: 85 01
PLX                     ; $27:A78F: FA
LDA $0C                 ; $27:A790: A5 0C
BEQ CODE_27A796         ; $27:A792: F0 02
INC $01                 ; $27:A794: E6 01

CODE_27A796:
LDA $0D                 ; $27:A796: A5 0D

CODE_27A798:
AND #$F0                ; $27:A798: 29 F0
STA $02                 ; $27:A79A: 85 02
LDA $0F                 ; $27:A79C: A5 0F
LSR A                   ; $27:A79E: 4A
LSR A                   ; $27:A79F: 4A
LSR A                   ; $27:A7A0: 4A
LSR A                   ; $27:A7A1: 4A
ORA $02                 ; $27:A7A2: 05 02
TAY                     ; $27:A7A4: A8
LDA #$7E                ; $27:A7A5: A9 7E
STA $02                 ; $27:A7A7: 85 02
PLA                     ; $27:A7A9: 68
STA [$00],y             ; $27:A7AA: 97 00
RTL                     ; $27:A7AC: 6B

CODE_27A7AD:
LDA $5F,x               ; $27:A7AD: B5 5F
SEC                     ; $27:A7AF: 38
SBC $5E                 ; $27:A7B0: E5 5E
STA $0E                 ; $27:A7B2: 85 0E
LDA $44,x               ; $27:A7B4: B5 44
SBC $43                 ; $27:A7B6: E5 43
LSR A                   ; $27:A7B8: 4A
ROR $0E                 ; $27:A7B9: 66 0E
LSR A                   ; $27:A7BB: 4A
ROR $0E                 ; $27:A7BC: 66 0E
ASL A                   ; $27:A7BE: 0A
AND #$40                ; $27:A7BF: 29 40
STA $0F                 ; $27:A7C1: 85 0F
RTL                     ; $27:A7C3: 6B

CODE_27A7C4:
LDA $71,x               ; $27:A7C4: B5 71
SEC                     ; $27:A7C6: 38
SBC $70                 ; $27:A7C7: E5 70
STA $0E                 ; $27:A7C9: 85 0E
LDA $56,x               ; $27:A7CB: B5 56
SBC $55                 ; $27:A7CD: E5 55
STA $0F                 ; $27:A7CF: 85 0F
LSR A                   ; $27:A7D1: 4A
ROR $0E                 ; $27:A7D2: 66 0E
LSR A                   ; $27:A7D4: 4A
ROR $0E                 ; $27:A7D5: 66 0E
RTL                     ; $27:A7D7: 6B

CODE_27A7D8:
LDA $9E,x               ; $27:A7D8: B5 9E
BMI CODE_27A7E4         ; $27:A7DA: 30 08
CMP #$40                ; $27:A7DC: C9 40
BMI CODE_27A7E4         ; $27:A7DE: 30 04
LDA #$40                ; $27:A7E0: A9 40
STA $9E,x               ; $27:A7E2: 95 9E

CODE_27A7E4:
TXA                     ; $27:A7E4: 8A
CLC                     ; $27:A7E5: 18
ADC #$12                ; $27:A7E6: 69 12
TAX                     ; $27:A7E8: AA
JSR CODE_27A806         ; $27:A7E9: 20 06 A8
LDX $9B                 ; $27:A7EC: A6 9B
RTL                     ; $27:A7EE: 6B

CODE_27A7EF:
JSR CODE_27A806         ; $27:A7EF: 20 06 A8
LDY $0425               ; $27:A7F2: AC 25 04
BEQ CODE_27A805         ; $27:A7F5: F0 0E
PHA                     ; $27:A7F7: 48
LDY $0671               ; $27:A7F8: AC 71 06
LDA.w DATA_21B0FB,x     ; $27:A7FB: BD FB B0
AND #$08                ; $27:A7FE: 29 08
BNE CODE_27A804         ; $27:A800: D0 02
STA $44,x               ; $27:A802: 95 44

CODE_27A804:
PLA                     ; $27:A804: 68

CODE_27A805:
RTL                     ; $27:A805: 6B

CODE_27A806:
LDA $8C,x               ; $27:A806: B5 8C
ASL A                   ; $27:A808: 0A
ASL A                   ; $27:A809: 0A
ASL A                   ; $27:A80A: 0A
ASL A                   ; $27:A80B: 0A
CLC                     ; $27:A80C: 18
ADC $074F,x             ; $27:A80D: 7D 4F 07
STA $074F,x             ; $27:A810: 9D 4F 07
PHP                     ; $27:A813: 08
PHP                     ; $27:A814: 08
LDY #$00                ; $27:A815: A0 00
LDA $8C,x               ; $27:A817: B5 8C
LSR A                   ; $27:A819: 4A
LSR A                   ; $27:A81A: 4A
LSR A                   ; $27:A81B: 4A
LSR A                   ; $27:A81C: 4A
CMP #$08                ; $27:A81D: C9 08
BCC CODE_27A824         ; $27:A81F: 90 03
ORA #$F0                ; $27:A821: 09 F0
DEY                     ; $27:A823: 88

CODE_27A824:
PLP                     ; $27:A824: 28
PHA                     ; $27:A825: 48
ADC $5F,x               ; $27:A826: 75 5F
STA $5F,x               ; $27:A828: 95 5F
TYA                     ; $27:A82A: 98
ADC $44,x               ; $27:A82B: 75 44
STA $44,x               ; $27:A82D: 95 44
PLA                     ; $27:A82F: 68
PLP                     ; $27:A830: 28
ADC #$00                ; $27:A831: 69 00
STA $074D               ; $27:A833: 8D 4D 07
RTS                     ; $27:A836: 60

; Subroutine: Player X Position relative to sprite
; Y = 0 = Player is to the right of the sprite
; Y = 1 = Player is to the left of the sprite
; $0F = The distance between the player and the sprite

; Player X pos low

CODE_27A837:
LDA $5E                 ; $27:A837: A5 5E
SEC                     ; $27:A839: 38

; Subtract with Sprite X pos low
SBC $5F,x               ; $27:A83A: F5 5F

; Store into $0F
STA $0F                 ; $27:A83C: 85 0F
LDY #$00                ; $27:A83E: A0 00

; Player X pos high
LDA $43                 ; $27:A840: A5 43

; Subtract with carry Sprite X pos high
SBC $44,x               ; $27:A842: F5 44
BPL CODE_27A847         ; $27:A844: 10 01
INY                     ; $27:A846: C8

CODE_27A847:
RTL                     ; $27:A847: 6B

CODE_27A848:
LDA $70                 ; $27:A848: A5 70
SEC                     ; $27:A84A: 38
SBC $71,x               ; $27:A84B: F5 71
STA $0F                 ; $27:A84D: 85 0F
LDY #$00                ; $27:A84F: A0 00
LDA $55                 ; $27:A851: A5 55
SBC $56,x               ; $27:A853: F5 56
BPL CODE_27A858         ; $27:A855: 10 01
INY                     ; $27:A857: C8

CODE_27A858:
RTL                     ; $27:A858: 6B

CODE_27A859:
EOR #$FF                ; $27:A859: 49 FF
CLC                     ; $27:A85B: 18
ADC #$01                ; $27:A85C: 69 01

; Invert accumulator (8-bit)
;
; Something tells me SMW's version (InvertAccum) is better
; (Because it uses INC A instead)
RTL                     ; $27:A85E: 6B

CODE_27A85F:
LDA $0651,x             ; $27:A85F: BD 51 06
ORA $0681,x             ; $27:A862: 1D 81 06
RTL                     ; $27:A865: 6B
LDY #$04                ; $27:A866: A0 04

CODE_27A868:
LDA $0661,y             ; $27:A868: B9 61 06
BEQ CODE_27A870         ; $27:A86B: F0 03
DEY                     ; $27:A86D: 88
BPL CODE_27A868         ; $27:A86E: 10 F8

CODE_27A870:
RTS                     ; $27:A870: 60
LDA $55                 ; $27:A871: A5 55
STA $0C                 ; $27:A873: 85 0C
LDA $09                 ; $27:A875: A5 09
CLC                     ; $27:A877: 18
ADC $70                 ; $27:A878: 65 70
STA $0D                 ; $27:A87A: 85 0D
BCC CODE_27A880         ; $27:A87C: 90 02
INC $0C                 ; $27:A87E: E6 0C

CODE_27A880:
LDA $0C                 ; $27:A880: A5 0C
BNE CODE_27A88F         ; $27:A882: D0 0B
LDA $0D                 ; $27:A884: A5 0D
SEC                     ; $27:A886: 38
SBC #$10                ; $27:A887: E9 10
STA $0D                 ; $27:A889: 85 0D
BCS CODE_27A88F         ; $27:A88B: B0 02
DEC $0C                 ; $27:A88D: C6 0C

CODE_27A88F:
LDA $43                 ; $27:A88F: A5 43
STA $0E                 ; $27:A891: 85 0E
LDA $0A                 ; $27:A893: A5 0A
BPL CODE_27A899         ; $27:A895: 10 02
DEC $0E                 ; $27:A897: C6 0E

CODE_27A899:
LDA $5E                 ; $27:A899: A5 5E
CLC                     ; $27:A89B: 18
ADC $0A                 ; $27:A89C: 65 0A
STA $0F                 ; $27:A89E: 85 0F
BCC CODE_27A8A4         ; $27:A8A0: 90 02
INC $0E                 ; $27:A8A2: E6 0E

CODE_27A8A4:
STY $09                 ; $27:A8A4: 84 09
STX $0A                 ; $27:A8A6: 86 0A
JSL CODE_209FE0         ; $27:A8A8: 22 E0 9F 20
LDY $09                 ; $27:A8AC: A4 09
LDX $0A                 ; $27:A8AE: A6 0A
RTS                     ; $27:A8B0: 60

CODE_27A8B1:
LDY #$00                ; $27:A8B1: A0 00
LDA $052E,y             ; $27:A8B3: B9 2E 05
BEQ CODE_27A8BE         ; $27:A8B6: F0 06
INY                     ; $27:A8B8: C8
LDA $052E,y             ; $27:A8B9: B9 2E 05
BNE CODE_27A8D7         ; $27:A8BC: D0 19

CODE_27A8BE:
LDA $0B                 ; $27:A8BE: A5 0B
STA $052E,y             ; $27:A8C0: 99 2E 05
LDA $0E                 ; $27:A8C3: A5 0E
STA $0531,y             ; $27:A8C5: 99 31 05
LDA $0F                 ; $27:A8C8: A5 0F
STA $0534,y             ; $27:A8CA: 99 34 05
LDA $0C                 ; $27:A8CD: A5 0C
STA $0537,y             ; $27:A8CF: 99 37 05
LDA $0D                 ; $27:A8D2: A5 0D
STA $053A,y             ; $27:A8D4: 99 3A 05

CODE_27A8D7:
RTL                     ; $27:A8D7: 6B

CODE_27A8D8:
STX $0669               ; $27:A8D8: 8E 69 06
STA $5F                 ; $27:A8DB: 85 5F
LSR A                   ; $27:A8DD: 4A
LSR A                   ; $27:A8DE: 4A
STA $00                 ; $27:A8DF: 85 00
LDY $0726               ; $27:A8E1: AC 26 07
BEQ CODE_27A8E8         ; $27:A8E4: F0 02
LDY #$23                ; $27:A8E6: A0 23

CODE_27A8E8:
LDX #$00                ; $27:A8E8: A2 00

CODE_27A8EA:
LDA $1D80,y             ; $27:A8EA: B9 80 1D
BEQ CODE_27A8F5         ; $27:A8ED: F0 06
INY                     ; $27:A8EF: C8
INX                     ; $27:A8F0: E8
CPX #$1B                ; $27:A8F1: E0 1B
BCC CODE_27A8EA         ; $27:A8F3: 90 F5

CODE_27A8F5:
STY $0689               ; $27:A8F5: 8C 89 06
TXA                     ; $27:A8F8: 8A
LDY #$03                ; $27:A8F9: A0 03

CODE_27A8FB:
CMP #$07                ; $27:A8FB: C9 07
BCC CODE_27A904         ; $27:A8FD: 90 05
SBC #$07                ; $27:A8FF: E9 07
DEY                     ; $27:A901: 88
BNE CODE_27A8FB         ; $27:A902: D0 F7

CODE_27A904:
TAX                     ; $27:A904: AA
LDA.w DATA_21B03C,y     ; $27:A905: B9 3C B0
STA $0691               ; $27:A908: 8D 91 06
LDA #$02                ; $27:A90B: A9 02
STA $0661               ; $27:A90D: 8D 61 06
LDA #$35                ; $27:A910: A9 35
STA $0671               ; $27:A912: 8D 71 06
LDA #$90                ; $27:A915: A9 90
STA $71                 ; $27:A917: 85 71
LDA.w DATA_21B040,x     ; $27:A919: BD 40 B0
LSR A                   ; $27:A91C: 4A
LSR A                   ; $27:A91D: 4A
SEC                     ; $27:A91E: 38
SBC $00                 ; $27:A91F: E5 00
STA $8C                 ; $27:A921: 85 8C
LDA #$D0                ; $27:A923: A9 D0
STA $9E                 ; $27:A925: 85 9E
LDA #$00                ; $27:A927: A9 00
STA $074F               ; $27:A929: 8D 4F 07
STA $0758               ; $27:A92C: 8D 58 07
LDA #$FF                ; $27:A92F: A9 FF
STA $0518               ; $27:A931: 8D 18 05
STA $4D                 ; $27:A934: 85 4D
LDA #$3E                ; $27:A936: A9 3E
STA $1203               ; $27:A938: 8D 03 12
RTL                     ; $27:A93B: 6B

CODE_27A93C:
LDA $05FF               ; $27:A93C: AD FF 05
STA $05FE               ; $27:A93F: 8D FE 05
JSR CODE_27A9B2         ; $27:A942: 20 B2 A9
LDY #$00                ; $27:A945: A0 00
LDA $1A13               ; $27:A947: AD 13 1A
LSR A                   ; $27:A94A: 4A
BCC CODE_27A951         ; $27:A94B: 90 04
INY                     ; $27:A94D: C8
DEC $0781               ; $27:A94E: CE 81 07

CODE_27A951:
LDA $0781               ; $27:A951: AD 81 07
STA $7E3952             ; $27:A954: 8F 52 39 7E
STY $0781               ; $27:A958: 8C 81 07
CLC                     ; $27:A95B: 18
ADC $5E                 ; $27:A95C: 65 5E
STA $5E                 ; $27:A95E: 85 5E
BCC CODE_27A964         ; $27:A960: 90 02
INC $43                 ; $27:A962: E6 43

CODE_27A964:
LDY #$00                ; $27:A964: A0 00
LDA $1A13               ; $27:A966: AD 13 1A
LSR A                   ; $27:A969: 4A
BCC CODE_27A970         ; $27:A96A: 90 04
DEY                     ; $27:A96C: 88
INC $0780               ; $27:A96D: EE 80 07

CODE_27A970:
LDA $0780               ; $27:A970: AD 80 07
STA $7E3953             ; $27:A973: 8F 53 39 7E
STY $0780               ; $27:A977: 8C 80 07
LDY $A6                 ; $27:A97A: A4 A6
BEQ CODE_27A989         ; $27:A97C: F0 0B
LDY #$00                ; $27:A97E: A0 00
CLC                     ; $27:A980: 18
ADC $0780               ; $27:A981: 6D 80 07
CMP #$FF                ; $27:A984: C9 FF
BNE CODE_27A989         ; $27:A986: D0 01
DEY                     ; $27:A988: 88

CODE_27A989:
CLC                     ; $27:A989: 18
ADC $70                 ; $27:A98A: 65 70
STA $70                 ; $27:A98C: 85 70
TYA                     ; $27:A98E: 98
ADC $55                 ; $27:A98F: 65 55
STA $55                 ; $27:A991: 85 55
RTL                     ; $27:A993: 6B

CODE_27A994:
JSR CODE_27A9B2         ; $27:A994: 20 B2 A9
LDA $5F,x               ; $27:A997: B5 5F
CLC                     ; $27:A999: 18
ADC $7E3952             ; $27:A99A: 6F 52 39 7E
STA $5F,x               ; $27:A99E: 95 5F
BCC CODE_27A9A4         ; $27:A9A0: 90 02
INC $44,x               ; $27:A9A2: F6 44

CODE_27A9A4:
LDA $71,x               ; $27:A9A4: B5 71
CLC                     ; $27:A9A6: 18
ADC $7E3953             ; $27:A9A7: 6F 53 39 7E
STA $71,x               ; $27:A9AB: 95 71
BCC CODE_27A9B1         ; $27:A9AD: 90 02
INC $56,x               ; $27:A9AF: F6 56

CODE_27A9B1:
RTL                     ; $27:A9B1: 6B

CODE_27A9B2:
LDA $05FE               ; $27:A9B2: AD FE 05
BEQ CODE_27A9BB         ; $27:A9B5: F0 04
LDA $9C                 ; $27:A9B7: A5 9C
BEQ CODE_27A9BE         ; $27:A9B9: F0 03

CODE_27A9BB:
PLA                     ; $27:A9BB: 68
PLA                     ; $27:A9BC: 68
RTL                     ; $27:A9BD: 6B

CODE_27A9BE:
RTS                     ; $27:A9BE: 60

CODE_27A9BF:
LDA $0425               ; $27:A9BF: AD 25 04
BEQ CODE_27A9FD         ; $27:A9C2: F0 39
LDA $C6,x               ; $27:A9C4: B5 C6
STA $DA                 ; $27:A9C6: 85 DA
LDA $C7,x               ; $27:A9C8: B5 C7
STA $DB                 ; $27:A9CA: 85 DB
JSL CODE_27A19D         ; $27:A9CC: 22 9D A1 27
REP #$30                ; $27:A9D0: C2 30
LDA $DA                 ; $27:A9D2: A5 DA
LSR A                   ; $27:A9D4: 4A
LSR A                   ; $27:A9D5: 4A
TAY                     ; $27:A9D6: A8
SEP #$20                ; $27:A9D7: E2 20
LDA #$00                ; $27:A9D9: A9 00
STA $0A20,y             ; $27:A9DB: 99 20 0A
STA $0A21,y             ; $27:A9DE: 99 21 0A
STA $0A22,y             ; $27:A9E1: 99 22 0A
STA $0A23,y             ; $27:A9E4: 99 23 0A
LDY $DA                 ; $27:A9E7: A4 DA
LDX #$0000              ; $27:A9E9: A2 00 00
LDA $0800,y             ; $27:A9EC: B9 00 08
CMP #$F8                ; $27:A9EF: C9 F8
BCS CODE_27AA00         ; $27:A9F1: B0 0D
LDX #$0004              ; $27:A9F3: A2 04 00
LDA $0804,y             ; $27:A9F6: B9 04 08
CMP #$F8                ; $27:A9F9: C9 F8
BCS CODE_27AA00         ; $27:A9FB: B0 03

CODE_27A9FD:
BRL CODE_27AA59         ; $27:A9FD: 82 59 00

CODE_27AA00:
STX $DC                 ; $27:AA00: 86 DC
REP #$20                ; $27:AA02: C2 20
TYA                     ; $27:AA04: 98
CLC                     ; $27:AA05: 18
ADC $DC                 ; $27:AA06: 65 DC
TAY                     ; $27:AA08: A8
LDA $D8                 ; $27:AA09: A5 D8
CLC                     ; $27:AA0B: 18
ADC $DC                 ; $27:AA0C: 65 DC
TAX                     ; $27:AA0E: AA
SEP #$20                ; $27:AA0F: E2 20
LDA $0800,y             ; $27:AA11: B9 00 08
STA $0800,x             ; $27:AA14: 9D 00 08
STA $0808,x             ; $27:AA17: 9D 08 08
LDA $0801,y             ; $27:AA1A: B9 01 08
STA $0801,x             ; $27:AA1D: 9D 01 08
LDA $0809,y             ; $27:AA20: B9 09 08
STA $0809,x             ; $27:AA23: 9D 09 08
LDA $0802,y             ; $27:AA26: B9 02 08
STA $0802,x             ; $27:AA29: 9D 02 08
LDA $080A,y             ; $27:AA2C: B9 0A 08
STA $080A,x             ; $27:AA2F: 9D 0A 08
LDA $0803,y             ; $27:AA32: B9 03 08
STA $0803,x             ; $27:AA35: 9D 03 08
LDA $080B,y             ; $27:AA38: B9 0B 08
STA $080B,x             ; $27:AA3B: 9D 0B 08
REP #$20                ; $27:AA3E: C2 20
TXA                     ; $27:AA40: 8A
LSR A                   ; $27:AA41: 4A
LSR A                   ; $27:AA42: 4A
TAX                     ; $27:AA43: AA
TYA                     ; $27:AA44: 98
LSR A                   ; $27:AA45: 4A
LSR A                   ; $27:AA46: 4A
TAY                     ; $27:AA47: A8
SEP #$20                ; $27:AA48: E2 20
LDA #$00                ; $27:AA4A: A9 00
STA $0A20,x             ; $27:AA4C: 9D 20 0A
STA $0A22,x             ; $27:AA4F: 9D 22 0A
INC A                   ; $27:AA52: 1A
STA $0A20,y             ; $27:AA53: 99 20 0A
STA $0A22,y             ; $27:AA56: 99 22 0A

CODE_27AA59:
SEP #$10                ; $27:AA59: E2 10
LDX $9B                 ; $27:AA5B: A6 9B
RTS                     ; $27:AA5D: 60

DATA_27AA5E:
db $FF,$02,$13,$14,$26,$32,$4D,$60
db $62,$71,$85,$90,$A5,$C6,$C9,$CF
db $E4,$E5,$E6,$E8,$EB,$ED

CODE_27AA74:
PHB                     ; $27:AA74: 8B
PHK                     ; $27:AA75: 4B
PLB                     ; $27:AA76: AB
PHX                     ; $27:AA77: DA
LDA $15                 ; $27:AA78: A5 15
LSR A                   ; $27:AA7A: 4A
LSR A                   ; $27:AA7B: 4A
AND #$07                ; $27:AA7C: 29 07
TAX                     ; $27:AA7E: AA
LDA.w DATA_21AA85,x     ; $27:AA7F: BD 85 AA
PLX                     ; $27:AA82: FA
PLB                     ; $27:AA83: AB
RTL                     ; $27:AA84: 6B
db $02,$04,$03,$04,$00,$04,$01,$04

CODE_27AA8D:
PHB                     ; $27:AA8D: 8B
PHK                     ; $27:AA8E: 4B
PLB                     ; $27:AA8F: AB
PHX                     ; $27:AA90: DA
LDA $15                 ; $27:AA91: A5 15
LSR A                   ; $27:AA93: 4A
AND #$03                ; $27:AA94: 29 03
TAX                     ; $27:AA96: AA
LDA.w DATA_27AA9D,x     ; $27:AA97: BD 9D AA
PLX                     ; $27:AA9A: FA
PLB                     ; $27:AA9B: AB
RTL                     ; $27:AA9C: 6B

DATA_27AA9D:
db $00,$01,$02,$01

ORG $27B000

CODE_27B000:
LDA $BF                 ; $27:B000: A5 BF
BNE CODE_27B07F         ; $27:B002: D0 7B
LDA $0425               ; $27:B004: AD 25 04
BEQ CODE_27B00C         ; $27:B007: F0 03
JMP CODE_27B0EE         ; $27:B009: 4C EE B0

CODE_27B00C:
LDA $70                 ; $27:B00C: A5 70
CLC                     ; $27:B00E: 18
ADC #$20                ; $27:B00F: 69 20
AND #$F0                ; $27:B011: 29 F0
STA $04                 ; $27:B013: 85 04
LDA $55                 ; $27:B015: A5 55
ADC #$00                ; $27:B017: 69 00
AND #$01                ; $27:B019: 29 01
STA $02                 ; $27:B01B: 85 02
LDA $5E                 ; $27:B01D: A5 5E
CLC                     ; $27:B01F: 18
ADC #$08                ; $27:B020: 69 08
AND #$F0                ; $27:B022: 29 F0
STA $03                 ; $27:B024: 85 03
LDA $43                 ; $27:B026: A5 43
ADC #$00                ; $27:B028: 69 00
STA $05                 ; $27:B02A: 85 05
CMP #$10                ; $27:B02C: C9 10
BCS CODE_27B07F         ; $27:B02E: B0 4F
PHX                     ; $27:B030: DA
ASL A                   ; $27:B031: 0A
TAX                     ; $27:B032: AA
LDA.l DATA_218200,x     ; $27:B033: BF 00 82 21
STA $2E                 ; $27:B037: 85 2E
STA $D8                 ; $27:B039: 85 D8
LDA.l DATA_218200+1,x   ; $27:B03B: BF 01 82 21
CLC                     ; $27:B03F: 18
ADC $02                 ; $27:B040: 65 02
STA $2F                 ; $27:B042: 85 2F
CLC                     ; $27:B044: 18
ADC #$20                ; $27:B045: 69 20
STA $D9                 ; $27:B047: 85 D9
LDA #$7E                ; $27:B049: A9 7E
STA $30                 ; $27:B04B: 85 30
STA $DA                 ; $27:B04D: 85 DA
PLX                     ; $27:B04F: FA
LDA $03                 ; $27:B050: A5 03
LSR A                   ; $27:B052: 4A
LSR A                   ; $27:B053: 4A
LSR A                   ; $27:B054: 4A
LSR A                   ; $27:B055: 4A
ORA $04                 ; $27:B056: 05 04
TAY                     ; $27:B058: A8
LDA [$D8],y             ; $27:B059: B7 D8
BEQ CODE_27B075         ; $27:B05B: F0 18
PHX                     ; $27:B05D: DA
LDA $070A               ; $27:B05E: AD 0A 07
ASL A                   ; $27:B061: 0A
TAX                     ; $27:B062: AA
LDA.w DATA_21AB57,x     ; $27:B063: BD 57 AB
STA $DB                 ; $27:B066: 85 DB
LDA.w DATA_21AB57+1,x   ; $27:B068: BD 58 AB
STA $DC                 ; $27:B06B: 85 DC
LDA [$2E],y             ; $27:B06D: B7 2E
TAY                     ; $27:B06F: A8
LDA ($DB),y             ; $27:B070: B1 DB
PLX                     ; $27:B072: FA
BRA CODE_27B077         ; $27:B073: 80 02

CODE_27B075:
LDA [$2E],y             ; $27:B075: B7 2E

CODE_27B077:
CMP #$F3                ; $27:B077: C9 F3
BNE CODE_27B080         ; $27:B079: D0 05
LDA #$D0                ; $27:B07B: A9 D0
STA $9D                 ; $27:B07D: 85 9D

CODE_27B07F:
RTS                     ; $27:B07F: 60

CODE_27B080:
CMP #$94                ; $27:B080: C9 94
BNE CODE_27B092         ; $27:B082: D0 0E
LDY $070A               ; $27:B084: AC 0A 07
CPY #$0B                ; $27:B087: C0 0B
BEQ CODE_27B08F         ; $27:B089: F0 04
CPY #$02                ; $27:B08B: C0 02
BNE CODE_27B092         ; $27:B08D: D0 03

CODE_27B08F:
JMP CODE_27B1BE         ; $27:B08F: 4C BE B1

CODE_27B092:
CMP #$5B                ; $27:B092: C9 5B
BNE CODE_27B0ED         ; $27:B094: D0 57

CODE_27B096:
LDY $070A               ; $27:B096: AC 0A 07
CPY #$04                ; $27:B099: C0 04
BEQ CODE_27B0A9         ; $27:B09B: F0 0C
CPY #$08                ; $27:B09D: C0 08
BEQ CODE_27B0A9         ; $27:B09F: F0 08
CPY #$0C                ; $27:B0A1: C0 0C
BEQ CODE_27B0A9         ; $27:B0A3: F0 04
CPY #$02                ; $27:B0A5: C0 02
BNE CODE_27B07F         ; $27:B0A7: D0 D6

CODE_27B0A9:
LDA $0564               ; $27:B0A9: AD 64 05
BNE CODE_27B07F         ; $27:B0AC: D0 D1
JSR CODE_27DC85         ; $27:B0AE: 20 85 DC
LDA #$54                ; $27:B0B1: A9 54
STA $0671,x             ; $27:B0B3: 9D 71 06
LDA $04                 ; $27:B0B6: A5 04
SEC                     ; $27:B0B8: 38
SBC #$01                ; $27:B0B9: E9 01
STA $71,x               ; $27:B0BB: 95 71
LDA $02                 ; $27:B0BD: A5 02
SBC #$00                ; $27:B0BF: E9 00
STA $56,x               ; $27:B0C1: 95 56
LDA $03                 ; $27:B0C3: A5 03
STA $5F,x               ; $27:B0C5: 95 5F
LDA $05                 ; $27:B0C7: A5 05
STA $44,x               ; $27:B0C9: 95 44
LDA #$20                ; $27:B0CB: A9 20
STA $68,x               ; $27:B0CD: 95 68
LDA #$03                ; $27:B0CF: A9 03
STA $1FE9,x             ; $27:B0D1: 9D E9 1F
LDA #$02                ; $27:B0D4: A9 02
STA $0564               ; $27:B0D6: 8D 64 05
LDA $02                 ; $27:B0D9: A5 02
STA $052A               ; $27:B0DB: 8D 2A 05
LDA $04                 ; $27:B0DE: A5 04
STA $052B               ; $27:B0E0: 8D 2B 05
LDA $03                 ; $27:B0E3: A5 03
STA $0529               ; $27:B0E5: 8D 29 05
LDA $05                 ; $27:B0E8: A5 05
STA $0528               ; $27:B0EA: 8D 28 05

CODE_27B0ED:
RTS                     ; $27:B0ED: 60

CODE_27B0EE:
LDA $70                 ; $27:B0EE: A5 70
CLC                     ; $27:B0F0: 18
ADC #$21                ; $27:B0F1: 69 21
AND #$F0                ; $27:B0F3: 29 F0
STA $00                 ; $27:B0F5: 85 00
STA $04                 ; $27:B0F7: 85 04
LDA $55                 ; $27:B0F9: A5 55
ADC #$00                ; $27:B0FB: 69 00
STA $02                 ; $27:B0FD: 85 02
ORA #$20                ; $27:B0FF: 09 20
STA $01                 ; $27:B101: 85 01
STA $D9                 ; $27:B103: 85 D9
CLC                     ; $27:B105: 18
ADC #$20                ; $27:B106: 69 20
STA $DC                 ; $27:B108: 85 DC
LDA $5E                 ; $27:B10A: A5 5E
CLC                     ; $27:B10C: 18
ADC #$08                ; $27:B10D: 69 08
AND #$F0                ; $27:B10F: 29 F0
STA $03                 ; $27:B111: 85 03
LSR A                   ; $27:B113: 4A
LSR A                   ; $27:B114: 4A
LSR A                   ; $27:B115: 4A
LSR A                   ; $27:B116: 4A
ORA $00                 ; $27:B117: 05 00
STA $00                 ; $27:B119: 85 00
STA $D8                 ; $27:B11B: 85 D8
STA $DB                 ; $27:B11D: 85 DB
LDY #$00                ; $27:B11F: A0 00
STY $05                 ; $27:B121: 84 05
LDA #$7E                ; $27:B123: A9 7E
STA $DA                 ; $27:B125: 85 DA
STA $DD                 ; $27:B127: 85 DD
LDA [$DB],y             ; $27:B129: B7 DB
BEQ CODE_27B145         ; $27:B12B: F0 18
PHX                     ; $27:B12D: DA
LDA $070A               ; $27:B12E: AD 0A 07
ASL A                   ; $27:B131: 0A
TAX                     ; $27:B132: AA
LDA.w DATA_21AB57,x     ; $27:B133: BD 57 AB
STA $DB                 ; $27:B136: 85 DB
LDA.w DATA_21AB57+1,x   ; $27:B138: BD 58 AB
STA $DC                 ; $27:B13B: 85 DC
LDA [$D8],y             ; $27:B13D: B7 D8
TAY                     ; $27:B13F: A8
LDA ($DB),y             ; $27:B140: B1 DB
PLX                     ; $27:B142: FA
BRA CODE_27B147         ; $27:B143: 80 02

CODE_27B145:
LDA [$D8],y             ; $27:B145: B7 D8

CODE_27B147:
CMP #$5B                ; $27:B147: C9 5B
BNE CODE_27B14E         ; $27:B149: D0 03
JMP CODE_27B096         ; $27:B14B: 4C 96 B0

CODE_27B14E:
LDY $A6                 ; $27:B14E: A4 A6
BNE CODE_27B0ED         ; $27:B150: D0 9B
LDY $07BD               ; $27:B152: AC BD 07
BNE CODE_27B0ED         ; $27:B155: D0 96
CMP #$54                ; $27:B157: C9 54
BCC CODE_27B0ED         ; $27:B159: 90 92
CMP #$5D                ; $27:B15B: C9 5D
BCS CODE_27B0ED         ; $27:B15D: B0 8E
SEC                     ; $27:B15F: 38
SBC #$54                ; $27:B160: E9 54
TAY                     ; $27:B162: A8
LDA #$FF                ; $27:B163: A9 FF
STA $02                 ; $27:B165: 85 02
LDX #$04                ; $27:B167: A2 04

CODE_27B169:
LDA $0661,x             ; $27:B169: BD 61 06
BEQ CODE_27B17F         ; $27:B16C: F0 11
LDA $0671,x             ; $27:B16E: BD 71 06
CMP #$A8                ; $27:B171: C9 A8
BCC CODE_27B181         ; $27:B173: 90 0C
CMP #$AA                ; $27:B175: C9 AA
BCS CODE_27B181         ; $27:B177: B0 08
JSR CODE_279C5F         ; $27:B179: 20 5F 9C
JMP CODE_27B17F         ; $27:B17C: 4C 7F B1

CODE_27B17F:
STX $02                 ; $27:B17F: 86 02

CODE_27B181:
DEX                     ; $27:B181: CA
BPL CODE_27B169         ; $27:B182: 10 E5
LDX $02                 ; $27:B184: A6 02
BMI CODE_27B1BD         ; $27:B186: 30 35
LDA #$02                ; $27:B188: A9 02
STA $0661,x             ; $27:B18A: 9D 61 06
LDA.w DATA_21C6C9,y     ; $27:B18D: B9 C9 C6
STA $0671,x             ; $27:B190: 9D 71 06
LDA.w DATA_21C6D2,y     ; $27:B193: B9 D2 C6
STA $4D,x               ; $27:B196: 95 4D
LDA $00                 ; $27:B198: A5 00
AND #$F0                ; $27:B19A: 29 F0
SEC                     ; $27:B19C: 38
SBC #$01                ; $27:B19D: E9 01
STA $71,x               ; $27:B19F: 95 71
LDA $01                 ; $27:B1A1: A5 01
SBC #$00                ; $27:B1A3: E9 00
AND #$0F                ; $27:B1A5: 29 0F
STA $56,x               ; $27:B1A7: 95 56
LDA $00                 ; $27:B1A9: A5 00
ASL A                   ; $27:B1AB: 0A
ASL A                   ; $27:B1AC: 0A
ASL A                   ; $27:B1AD: 0A
ASL A                   ; $27:B1AE: 0A
CLC                     ; $27:B1AF: 18
ADC.w DATA_21C6DB,y     ; $27:B1B0: 79 DB C6
STA $5F,x               ; $27:B1B3: 95 5F
LDA #$00                ; $27:B1B5: A9 00
STA $44,x               ; $27:B1B7: 95 44
LDA #$FF                ; $27:B1B9: A9 FF
STA $68,x               ; $27:B1BB: 95 68

CODE_27B1BD:
RTS                     ; $27:B1BD: 60

CODE_27B1BE:
LDA #$01                ; $27:B1BE: A9 01
STA $0578               ; $27:B1C0: 8D 78 05
JSL CODE_27A546         ; $27:B1C3: 22 46 A5 27
RTS                     ; $27:B1C7: 60

CODE_27B1C8:
LDX $1600               ; $27:B1C8: AE 00 16
LDA $1CFB               ; $27:B1CB: AD FB 1C
BEQ CODE_27B1FC         ; $27:B1CE: F0 2C
PHA                     ; $27:B1D0: 48
AND #$03                ; $27:B1D1: 29 03
TAY                     ; $27:B1D3: A8
DEC $1CFB               ; $27:B1D4: CE FB 1C
PLA                     ; $27:B1D7: 68
BPL CODE_27B1FD         ; $27:B1D8: 10 23
AND #$7F                ; $27:B1DA: 29 7F
BNE CODE_27B1E1         ; $27:B1DC: D0 03
STA $1CFB               ; $27:B1DE: 8D FB 1C

CODE_27B1E1:
TYA                     ; $27:B1E1: 98
ASL A                   ; $27:B1E2: 0A
TAY                     ; $27:B1E3: A8
REP #$20                ; $27:B1E4: C2 20
LDA.w DATA_21C6E4,y     ; $27:B1E6: B9 E4 C6
STA $13A2               ; $27:B1E9: 8D A2 13
STA $13A4               ; $27:B1EC: 8D A4 13
STA $13A6               ; $27:B1EF: 8D A6 13
STA $13C2               ; $27:B1F2: 8D C2 13
SEP #$20                ; $27:B1F5: E2 20
LDA #$01                ; $27:B1F7: A9 01
STA $1500               ; $27:B1F9: 8D 00 15

CODE_27B1FC:
RTS                     ; $27:B1FC: 60

CODE_27B1FD:
REP #$20                ; $27:B1FD: C2 20
LDA $1CFB               ; $27:B1FF: AD FB 1C
AND #$00FF              ; $27:B202: 29 FF 00
BEQ CODE_27B218         ; $27:B205: F0 11
LDA $15                 ; $27:B207: A5 15
AND #$0003              ; $27:B209: 29 03 00
PHX                     ; $27:B20C: DA
TAX                     ; $27:B20D: AA
LDA.l DATA_27B223,x     ; $27:B20E: BF 23 B2 27
STA $1300               ; $27:B212: 8D 00 13
PLX                     ; $27:B215: FA
BRA CODE_27B21B         ; $27:B216: 80 03

CODE_27B218:
STZ $1300               ; $27:B218: 9C 00 13

CODE_27B21B:
SEP #$20                ; $27:B21B: E2 20
LDA #$01                ; $27:B21D: A9 01
STA $1500               ; $27:B21F: 8D 00 15
RTS                     ; $27:B222: 60

DATA_27B223:
db $08,$77,$FF

; INVALID: this points to graphics data???
ADC.l DATA_08F000+$18,x ; $27:B226: 7F 18 F0 08
TYA                     ; $27:B22A: 98
ASL A                   ; $27:B22B: 0A
TAY                     ; $27:B22C: A8
LDA.w DATA_21C6E4,y     ; $27:B22D: B9 E4 C6
BRA CODE_27B235         ; $27:B230: 80 03
LDA $02B9               ; $27:B232: AD B9 02

CODE_27B235:
STA $DC                 ; $27:B235: 85 DC
AND #$1F                ; $27:B237: 29 1F
ORA #$20                ; $27:B239: 09 20
STA $D8                 ; $27:B23B: 85 D8
LDA $DC                 ; $27:B23D: A5 DC
LSR A                   ; $27:B23F: 4A
LSR A                   ; $27:B240: 4A
LSR A                   ; $27:B241: 4A
LSR A                   ; $27:B242: 4A
LSR A                   ; $27:B243: 4A
AND #$1F                ; $27:B244: 29 1F
ORA #$40                ; $27:B246: 09 40
STA $DA                 ; $27:B248: 85 DA
LDA $DC                 ; $27:B24A: A5 DC
XBA                     ; $27:B24C: EB
LSR A                   ; $27:B24D: 4A
LSR A                   ; $27:B24E: 4A
AND #$1F                ; $27:B24F: 29 1F
ORA #$80                ; $27:B251: 09 80
STA $DC                 ; $27:B253: 85 DC
SEP #$20                ; $27:B255: E2 20
LDA $D8                 ; $27:B257: A5 D8
STA $0205               ; $27:B259: 8D 05 02
LDA $DA                 ; $27:B25C: A5 DA
STA $0206               ; $27:B25E: 8D 06 02
LDA $DC                 ; $27:B261: A5 DC
STA $0207               ; $27:B263: 8D 07 02
LDA #$01                ; $27:B266: A9 01
STA $1500               ; $27:B268: 8D 00 15
RTS                     ; $27:B26B: 60
REP #$20                ; $27:B26C: C2 20
LDA $1CFB               ; $27:B26E: AD FB 1C
AND #$00FF              ; $27:B271: 29 FF 00
BEQ CODE_27B27E         ; $27:B274: F0 08
TYA                     ; $27:B276: 98
ASL A                   ; $27:B277: 0A
TAY                     ; $27:B278: A8
LDA.w DATA_21C6E4,y     ; $27:B279: B9 E4 C6
BRA CODE_27B281         ; $27:B27C: 80 03

CODE_27B27E:
LDA $02B9               ; $27:B27E: AD B9 02

CODE_27B281:
STA $1300               ; $27:B281: 8D 00 13
SEP #$20                ; $27:B284: E2 20
LDA #$20                ; $27:B286: A9 20
STA $0205               ; $27:B288: 8D 05 02
ASL A                   ; $27:B28B: 0A
STA $0206               ; $27:B28C: 8D 06 02
ASL A                   ; $27:B28F: 0A
STA $0207               ; $27:B290: 8D 07 02
LDA #$01                ; $27:B293: A9 01
STA $1500               ; $27:B295: 8D 00 15
RTS                     ; $27:B298: 60

CODE_27B299:
JSR CODE_27B1C8         ; $27:B299: 20 C8 B1
JSR CODE_27B000         ; $27:B29C: 20 00 B0
JSR CODE_27BFDB         ; $27:B29F: 20 DB BF
JSR CODE_27BA22         ; $27:B2A2: 20 22 BA
JSR CODE_27BB5E         ; $27:B2A5: 20 5E BB
JSR CODE_27BCD7         ; $27:B2A8: 20 D7 BC
JSR CODE_27C294         ; $27:B2AB: 20 94 C2
JSR CODE_27C536         ; $27:B2AE: 20 36 C5
JSR CODE_27D83D         ; $27:B2B1: 20 3D D8
JSR CODE_27B42C         ; $27:B2B4: 20 2C B4
JSL CODE_29D713         ; $27:B2B7: 22 13 D7 29
LDA $BB                 ; $27:B2BB: A5 BB
CMP #$06                ; $27:B2BD: C9 06
BEQ CODE_27B2C5         ; $27:B2BF: F0 04
CMP #$02                ; $27:B2C1: C9 02
BNE CODE_27B2DC         ; $27:B2C3: D0 17

CODE_27B2C5:
LDA $0556               ; $27:B2C5: AD 56 05
ORA $056F               ; $27:B2C8: 0D 6F 05
ORA $0557               ; $27:B2CB: 0D 57 05
ORA $058C               ; $27:B2CE: 0D 8C 05
ORA $9C                 ; $27:B2D1: 05 9C
BNE CODE_27B2DC         ; $27:B2D3: D0 07
BIT $18                 ; $27:B2D5: 24 18
BVC CODE_27B2DC         ; $27:B2D7: 50 03
JSR CODE_27B3A3         ; $27:B2D9: 20 A3 B3

CODE_27B2DC:
LDA $1A46               ; $27:B2DC: AD 46 1A
BNE CODE_27B2E4         ; $27:B2DF: D0 03
BRL CODE_27B39A         ; $27:B2E1: 82 B6 00

CODE_27B2E4:
DEC $1A46               ; $27:B2E4: CE 46 1A
LDY #$00                ; $27:B2E7: A0 00
LDA $1A47               ; $27:B2E9: AD 47 1A
SEC                     ; $27:B2EC: 38
SBC $0543               ; $27:B2ED: ED 43 05
STA $0801,y             ; $27:B2F0: 99 01 08
STA $0805,y             ; $27:B2F3: 99 05 08
CLC                     ; $27:B2F6: 18
ADC #$08                ; $27:B2F7: 69 08
STA $0809,y             ; $27:B2F9: 99 09 08
STA $080D,y             ; $27:B2FC: 99 0D 08
LDA $027E               ; $27:B2FF: AD 7E 02
XBA                     ; $27:B302: EB
LDA $1A48               ; $27:B303: AD 48 1A
REP #$20                ; $27:B306: C2 20
SEC                     ; $27:B308: 38
SBC $0210               ; $27:B309: ED 10 02
STA $D8                 ; $27:B30C: 85 D8
CLC                     ; $27:B30E: 18
ADC #$0008              ; $27:B30F: 69 08 00
STA $DA                 ; $27:B312: 85 DA
SEP #$20                ; $27:B314: E2 20
LDA $D8                 ; $27:B316: A5 D8
STA $0800,y             ; $27:B318: 99 00 08
STA $0808,y             ; $27:B31B: 99 08 08
LDA $DA                 ; $27:B31E: A5 DA
STA $0804,y             ; $27:B320: 99 04 08
STA $080C,y             ; $27:B323: 99 0C 08
LDA #$56                ; $27:B326: A9 56
STA $0802,y             ; $27:B328: 99 02 08
STA $0806,y             ; $27:B32B: 99 06 08
INC A                   ; $27:B32E: 1A
STA $080A,y             ; $27:B32F: 99 0A 08
STA $080E,y             ; $27:B332: 99 0E 08
LDA $15                 ; $27:B335: A5 15
LSR A                   ; $27:B337: 4A
LSR A                   ; $27:B338: 4A
LSR A                   ; $27:B339: 4A
ROR A                   ; $27:B33A: 6A
AND #$80                ; $27:B33B: 29 80
STA $00                 ; $27:B33D: 85 00
LDA $15                 ; $27:B33F: A5 15
AND #$03                ; $27:B341: 29 03
ASL A                   ; $27:B343: 0A
ORA #$20                ; $27:B344: 09 20
ORA $00                 ; $27:B346: 05 00
STA $0803,y             ; $27:B348: 99 03 08
STA $080B,y             ; $27:B34B: 99 0B 08
EOR #$C0                ; $27:B34E: 49 C0
STA $0807,y             ; $27:B350: 99 07 08
STA $080F,y             ; $27:B353: 99 0F 08
LDA $0803,y             ; $27:B356: B9 03 08
AND #$80                ; $27:B359: 29 80
BEQ CODE_27B36B         ; $27:B35B: F0 0E
LDA $0802,y             ; $27:B35D: B9 02 08
PHA                     ; $27:B360: 48
LDA $080A,y             ; $27:B361: B9 0A 08
STA $0802,y             ; $27:B364: 99 02 08
PLA                     ; $27:B367: 68
STA $080A,y             ; $27:B368: 99 0A 08

CODE_27B36B:
LDA $0807,y             ; $27:B36B: B9 07 08
AND #$80                ; $27:B36E: 29 80
BEQ CODE_27B380         ; $27:B370: F0 0E
LDA $0806,y             ; $27:B372: B9 06 08
PHA                     ; $27:B375: 48
LDA $080E,y             ; $27:B376: B9 0E 08
STA $0806,y             ; $27:B379: 99 06 08
PLA                     ; $27:B37C: 68
STA $080E,y             ; $27:B37D: 99 0E 08

CODE_27B380:
PHY                     ; $27:B380: 5A
TYA                     ; $27:B381: 98
LSR A                   ; $27:B382: 4A
LSR A                   ; $27:B383: 4A
TAY                     ; $27:B384: A8
LDA $D9                 ; $27:B385: A5 D9
AND #$01                ; $27:B387: 29 01
STA $0A20,y             ; $27:B389: 99 20 0A
STA $0A22,y             ; $27:B38C: 99 22 0A
LDA $DB                 ; $27:B38F: A5 DB
AND #$01                ; $27:B391: 29 01
STA $0A21,y             ; $27:B393: 99 21 0A
STA $0A23,y             ; $27:B396: 99 23 0A
PLY                     ; $27:B399: 7A

CODE_27B39A:
LDA $0556               ; $27:B39A: AD 56 05
BNE CODE_27B3A2         ; $27:B39D: D0 03
JSR CODE_27DDC8         ; $27:B39F: 20 C8 DD

CODE_27B3A2:
RTL                     ; $27:B3A2: 6B

CODE_27B3A3:
LDX #$01                ; $27:B3A3: A2 01

CODE_27B3A5:
LDA $1CE1,x             ; $27:B3A5: BD E1 1C
BEQ CODE_27B3AE         ; $27:B3A8: F0 04
DEX                     ; $27:B3AA: CA
BPL CODE_27B3A5         ; $27:B3AB: 10 F8
RTS                     ; $27:B3AD: 60

CODE_27B3AE:
LDA #$06                ; $27:B3AE: A9 06
STA $1203               ; $27:B3B0: 8D 03 12
LDA #$0B                ; $27:B3B3: A9 0B
STA $0513               ; $27:B3B5: 8D 13 05
LDA $5E                 ; $27:B3B8: A5 5E
CLC                     ; $27:B3BA: 18
ADC #$04                ; $27:B3BB: 69 04
STA $1CE5,x             ; $27:B3BD: 9D E5 1C
LDA $43                 ; $27:B3C0: A5 43
ADC #$00                ; $27:B3C2: 69 00
STA $0247,x             ; $27:B3C4: 9D 47 02
LDA $0425               ; $27:B3C7: AD 25 04
BEQ CODE_27B3E1         ; $27:B3CA: F0 15
LDA $BD                 ; $27:B3CC: A5 BD
AND #$40                ; $27:B3CE: 29 40
BEQ CODE_27B3E1         ; $27:B3D0: F0 0F
LDA $1CE5,x             ; $27:B3D2: BD E5 1C
CMP #$F8                ; $27:B3D5: C9 F8
BCC CODE_27B3E1         ; $27:B3D7: 90 08
LDA #$00                ; $27:B3D9: A9 00
STA $1CE5,x             ; $27:B3DB: 9D E5 1C
STA $0247,x             ; $27:B3DE: 9D 47 02

CODE_27B3E1:
LDA $70                 ; $27:B3E1: A5 70
STA $1CE3,x             ; $27:B3E3: 9D E3 1C
LDA $55                 ; $27:B3E6: A5 55
STA $05FA,x             ; $27:B3E8: 9D FA 05
LDA #$01                ; $27:B3EB: A9 01
LDY $BB                 ; $27:B3ED: A4 BB
CPY #$06                ; $27:B3EF: C0 06
SEC                     ; $27:B3F1: 38
BNE CODE_27B3F5         ; $27:B3F2: D0 01
ASL A                   ; $27:B3F4: 0A

CODE_27B3F5:
STA $1CE1,x             ; $27:B3F5: 9D E1 1C
LDA #$03                ; $27:B3F8: A9 03
BCS CODE_27B3FE         ; $27:B3FA: B0 02
LDA #$FD                ; $27:B3FC: A9 FD

CODE_27B3FE:
STA $1CE7,x             ; $27:B3FE: 9D E7 1C
LDA #$00                ; $27:B401: A9 00
STA $00                 ; $27:B403: 85 00
LDA #$03                ; $27:B405: A9 03
BCS CODE_27B416         ; $27:B407: B0 0D
LDA $BD                 ; $27:B409: A5 BD
ASL A                   ; $27:B40B: 0A
EOR $8B                 ; $27:B40C: 45 8B
BPL CODE_27B414         ; $27:B40E: 10 04
LDA $8B                 ; $27:B410: A5 8B
STA $00                 ; $27:B412: 85 00

CODE_27B414:
LDA #$10                ; $27:B414: A9 10

CODE_27B416:
LDY $BD                 ; $27:B416: A4 BD
BNE CODE_27B41E         ; $27:B418: D0 04

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:B41A: 22 59 A8 27

CODE_27B41E:
CLC                     ; $27:B41E: 18
ADC $00                 ; $27:B41F: 65 00
STA $1CE9,x             ; $27:B421: 9D E9 1C
STZ $1CED,x             ; $27:B424: 9E ED 1C
STZ $1CEB,x             ; $27:B427: 9E EB 1C
RTS                     ; $27:B42A: 60

CODE_27B42B:
RTS                     ; $27:B42B: 60

CODE_27B42C:
LDX #$01                ; $27:B42C: A2 01
STX $9B                 ; $27:B42E: 86 9B
JSR CODE_27B436         ; $27:B430: 20 36 B4
DEC $9B                 ; $27:B433: C6 9B
DEX                     ; $27:B435: CA

CODE_27B436:
LDA $1CE1,x             ; $27:B436: BD E1 1C
BEQ CODE_27B42B         ; $27:B439: F0 F0
CMP #$03                ; $27:B43B: C9 03
BCC CODE_27B442         ; $27:B43D: 90 03
JMP CODE_27B95E         ; $27:B43F: 4C 5E B9

CODE_27B442:
LDA $05FE               ; $27:B442: AD FE 05
BEQ CODE_27B466         ; $27:B445: F0 1F
LDA $9C                 ; $27:B447: A5 9C
BNE CODE_27B466         ; $27:B449: D0 1B
LDA $1CE5,x             ; $27:B44B: BD E5 1C
CLC                     ; $27:B44E: 18
ADC $7E3952             ; $27:B44F: 6F 52 39 7E
STA $1CE5,x             ; $27:B453: 9D E5 1C
LDA $1CE3,x             ; $27:B456: BD E3 1C
CLC                     ; $27:B459: 18
ADC $7E3953             ; $27:B45A: 6F 53 39 7E
STA $1CE3,x             ; $27:B45E: 9D E3 1C
BCC CODE_27B466         ; $27:B461: 90 03
INC $05FA,x             ; $27:B463: FE FA 05

CODE_27B466:
LDY $9C                 ; $27:B466: A4 9C
BNE CODE_27B4CC         ; $27:B468: D0 62
LDA $1CE7,x             ; $27:B46A: BD E7 1C
LDY $05FC               ; $27:B46D: AC FC 05
BEQ CODE_27B476         ; $27:B470: F0 04
CLC                     ; $27:B472: 18
ADC $0780               ; $27:B473: 6D 80 07

CODE_27B476:
PHA                     ; $27:B476: 48
LDY #$00                ; $27:B477: A0 00
PLA                     ; $27:B479: 68
BPL CODE_27B47D         ; $27:B47A: 10 01
DEY                     ; $27:B47C: 88

CODE_27B47D:
CLC                     ; $27:B47D: 18
ADC $1CE3,x             ; $27:B47E: 7D E3 1C
STA $1CE3,x             ; $27:B481: 9D E3 1C
TYA                     ; $27:B484: 98
ADC $05FA,x             ; $27:B485: 7D FA 05
STA $05FA,x             ; $27:B488: 9D FA 05
INC $1CED,x             ; $27:B48B: FE ED 1C
LDA $1CE1,x             ; $27:B48E: BD E1 1C
CMP #$02                ; $27:B491: C9 02
BNE CODE_27B4CF         ; $27:B493: D0 3A
LDA $1CE9,x             ; $27:B495: BD E9 1C
ASL A                   ; $27:B498: 0A
ASL A                   ; $27:B499: 0A
ASL A                   ; $27:B49A: 0A
ASL A                   ; $27:B49B: 0A
CLC                     ; $27:B49C: 18
ADC $1A55,x             ; $27:B49D: 7D 55 1A
STA $1A55,x             ; $27:B4A0: 9D 55 1A
PHP                     ; $27:B4A3: 08
LDA $1CE9,x             ; $27:B4A4: BD E9 1C
LSR A                   ; $27:B4A7: 4A
LSR A                   ; $27:B4A8: 4A
LSR A                   ; $27:B4A9: 4A
LSR A                   ; $27:B4AA: 4A
CMP #$08                ; $27:B4AB: C9 08
LDY #$00                ; $27:B4AD: A0 00
BCC CODE_27B4B4         ; $27:B4AF: 90 03
ORA #$F0                ; $27:B4B1: 09 F0
DEY                     ; $27:B4B3: 88

CODE_27B4B4:
PLP                     ; $27:B4B4: 28
ADC $1CE5,x             ; $27:B4B5: 7D E5 1C
STA $1CE5,x             ; $27:B4B8: 9D E5 1C
TYA                     ; $27:B4BB: 98
ADC $0247,x             ; $27:B4BC: 7D 47 02
STA $0247,x             ; $27:B4BF: 9D 47 02
LDA $1CED,x             ; $27:B4C2: BD ED 1C
AND #$07                ; $27:B4C5: 29 07
BNE CODE_27B4CC         ; $27:B4C7: D0 03
INC $1CE7,x             ; $27:B4C9: FE E7 1C

CODE_27B4CC:
JMP CODE_27B505         ; $27:B4CC: 4C 05 B5

CODE_27B4CF:
LDA $0247,x             ; $27:B4CF: BD 47 02
XBA                     ; $27:B4D2: EB
LDA $1CE5,x             ; $27:B4D3: BD E5 1C
REP #$20                ; $27:B4D6: C2 20
STA $D8                 ; $27:B4D8: 85 D8
LDA $1CE9,x             ; $27:B4DA: BD E9 1C
AND #$00FF              ; $27:B4DD: 29 FF 00
CMP #$0080              ; $27:B4E0: C9 80 00
BCC CODE_27B4E8         ; $27:B4E3: 90 03
ORA #$FF00              ; $27:B4E5: 09 00 FF

CODE_27B4E8:
CLC                     ; $27:B4E8: 18
ADC $D8                 ; $27:B4E9: 65 D8
SEP #$20                ; $27:B4EB: E2 20
STA $1CE5,x             ; $27:B4ED: 9D E5 1C
XBA                     ; $27:B4F0: EB
STA $0247,x             ; $27:B4F1: 9D 47 02
LDA $1CE7,x             ; $27:B4F4: BD E7 1C
CMP #$04                ; $27:B4F7: C9 04
BEQ CODE_27B505         ; $27:B4F9: F0 0A
LDA $1CED,x             ; $27:B4FB: BD ED 1C
AND #$03                ; $27:B4FE: 29 03
BNE CODE_27B505         ; $27:B500: D0 03
INC $1CE7,x             ; $27:B502: FE E7 1C

CODE_27B505:
LDA $0247,x             ; $27:B505: BD 47 02
XBA                     ; $27:B508: EB
LDA $1CE5,x             ; $27:B509: BD E5 1C
REP #$20                ; $27:B50C: C2 20
SEC                     ; $27:B50E: 38
SBC $0210               ; $27:B50F: ED 10 02
STA $DC                 ; $27:B512: 85 DC
CMP #$0100              ; $27:B514: C9 00 01
BCC CODE_27B51E         ; $27:B517: 90 05
CMP #$FFF8              ; $27:B519: C9 F8 FF
BCC CODE_27B526         ; $27:B51C: 90 08

CODE_27B51E:
STA $0D                 ; $27:B51E: 85 0D
SEP #$20                ; $27:B520: E2 20
STA $01                 ; $27:B522: 85 01
BRA CODE_27B52E         ; $27:B524: 80 08

CODE_27B526:
SEP #$30                ; $27:B526: E2 30
LDA #$00                ; $27:B528: A9 00
STA $1CE1,x             ; $27:B52A: 9D E1 1C
RTS                     ; $27:B52D: 60

CODE_27B52E:
ADC #$08                ; $27:B52E: 69 08
STA $0D                 ; $27:B530: 85 0D
LDA $05FA,x             ; $27:B532: BD FA 05
XBA                     ; $27:B535: EB
LDA $1CE3,x             ; $27:B536: BD E3 1C
REP #$20                ; $27:B539: C2 20
SEC                     ; $27:B53B: 38
SBC $0216               ; $27:B53C: ED 16 02
STA $D8                 ; $27:B53F: 85 D8
CMP #$00C0              ; $27:B541: C9 C0 00
BCC CODE_27B55E         ; $27:B544: 90 18
CMP #$FFE0              ; $27:B546: C9 E0 FF
BCS CODE_27B55E         ; $27:B549: B0 13
SEP #$20                ; $27:B54B: E2 20
LDA $1CE1,x             ; $27:B54D: BD E1 1C
CMP #$02                ; $27:B550: C9 02
BNE CODE_27B55B         ; $27:B552: D0 07
LDA $D9                 ; $27:B554: A5 D9
BPL CODE_27B55B         ; $27:B556: 10 03
BRL CODE_27B693         ; $27:B558: 82 38 01

CODE_27B55B:
BRL CODE_27B526         ; $27:B55B: 82 C8 FF

CODE_27B55E:
SEP #$20                ; $27:B55E: E2 20
JSR CODE_27D728         ; $27:B560: 20 28 D7
REP #$10                ; $27:B563: C2 10
LDY $C6,x               ; $27:B565: B4 C6
LDA $01                 ; $27:B567: A5 01
STA $0800,y             ; $27:B569: 99 00 08
STA $0804,y             ; $27:B56C: 99 04 08
LDA $1CE3,x             ; $27:B56F: BD E3 1C
SEC                     ; $27:B572: 38
SBC $0543               ; $27:B573: ED 43 05
STA $0801,y             ; $27:B576: 99 01 08
PHA                     ; $27:B579: 48
ADC #$0E                ; $27:B57A: 69 0E
STA $0C                 ; $27:B57C: 85 0C
PLA                     ; $27:B57E: 68
CLC                     ; $27:B57F: 18
ADC #$08                ; $27:B580: 69 08
STA $0805,y             ; $27:B582: 99 05 08
REP #$20                ; $27:B585: C2 20
TYA                     ; $27:B587: 98
LSR A                   ; $27:B588: 4A
LSR A                   ; $27:B589: 4A
TAY                     ; $27:B58A: A8
SEP #$20                ; $27:B58B: E2 20
LDA $DD                 ; $27:B58D: A5 DD
AND #$01                ; $27:B58F: 29 01
STA $0A20,y             ; $27:B591: 99 20 0A
STA $0A21,y             ; $27:B594: 99 21 0A
SEP #$10                ; $27:B597: E2 10
LDA $1CE9,x             ; $27:B599: BD E9 1C
LSR A                   ; $27:B59C: 4A
AND #$40                ; $27:B59D: 29 40
STA $02                 ; $27:B59F: 85 02
LDA $1CE1,x             ; $27:B5A1: BD E1 1C
CMP #$02                ; $27:B5A4: C9 02
BEQ CODE_27B5AB         ; $27:B5A6: F0 03
BRL CODE_27B64B         ; $27:B5A8: 82 A0 00

CODE_27B5AB:
LDA $BB                 ; $27:B5AB: A5 BB
CMP #$06                ; $27:B5AD: C9 06
BEQ CODE_27B5B4         ; $27:B5AF: F0 03
BRL CODE_27B6A8         ; $27:B5B1: 82 F4 00

CODE_27B5B4:
REP #$30                ; $27:B5B4: C2 30
LDY $C6,x               ; $27:B5B6: B4 C6
LDA $1CED,x             ; $27:B5B8: BD ED 1C
LSR A                   ; $27:B5BB: 4A
LSR A                   ; $27:B5BC: 4A
AND #$0003              ; $27:B5BD: 29 03 00
TAX                     ; $27:B5C0: AA
LDA $0588               ; $27:B5C1: AD 88 05
AND #$00FF              ; $27:B5C4: 29 FF 00
STA $D8                 ; $27:B5C7: 85 D8
SEP #$20                ; $27:B5C9: E2 20
LDA.w DATA_21C6F8+1,x   ; $27:B5CB: BD F9 C6
BIT $02                 ; $27:B5CE: 24 02
BVC CODE_27B5D4         ; $27:B5D0: 50 02
EOR #$06                ; $27:B5D2: 49 06

CODE_27B5D4:
STA $DA                 ; $27:B5D4: 85 DA
STZ $DB                 ; $27:B5D6: 64 DB
CLC                     ; $27:B5D8: 18
ADC $01                 ; $27:B5D9: 65 01
STA $0800,y             ; $27:B5DB: 99 00 08
STA $0804,y             ; $27:B5DE: 99 04 08
LDA.w DATA_21C6F8,x     ; $27:B5E1: BD F8 C6
CLC                     ; $27:B5E4: 18
ADC $0801,y             ; $27:B5E5: 79 01 08
STA $0801,y             ; $27:B5E8: 99 01 08
CLC                     ; $27:B5EB: 18
ADC #$08                ; $27:B5EC: 69 08
STA $0805,y             ; $27:B5EE: 99 05 08
LDA #$EE                ; $27:B5F1: A9 EE
STA $0802,y             ; $27:B5F3: 99 02 08
INC A                   ; $27:B5F6: 1A
STA $0806,y             ; $27:B5F7: 99 06 08
LDA $02                 ; $27:B5FA: A5 02
EOR.w DATA_21C6F4,x     ; $27:B5FC: 5D F4 C6
SEC                     ; $27:B5FF: 38
ORA #$21                ; $27:B600: 09 21
LDX $D8                 ; $27:B602: A6 D8
BEQ CODE_27B60A         ; $27:B604: F0 04
AND #$CF                ; $27:B606: 29 CF
ORA #$10                ; $27:B608: 09 10

CODE_27B60A:
STA $0803,y             ; $27:B60A: 99 03 08
STA $0807,y             ; $27:B60D: 99 07 08
AND #$80                ; $27:B610: 29 80
BEQ CODE_27B622         ; $27:B612: F0 0E
LDA $0802,y             ; $27:B614: B9 02 08
PHA                     ; $27:B617: 48
LDA $0806,y             ; $27:B618: B9 06 08
STA $0802,y             ; $27:B61B: 99 02 08
PLA                     ; $27:B61E: 68
STA $0806,y             ; $27:B61F: 99 06 08

CODE_27B622:
PHY                     ; $27:B622: 5A
LDX $9B                 ; $27:B623: A6 9B
LDA $0247,x             ; $27:B625: BD 47 02
XBA                     ; $27:B628: EB
LDA $1CE5,x             ; $27:B629: BD E5 1C
REP #$20                ; $27:B62C: C2 20
SEC                     ; $27:B62E: 38
SBC $0210               ; $27:B62F: ED 10 02
CLC                     ; $27:B632: 18
ADC $DA                 ; $27:B633: 65 DA
STA $DC                 ; $27:B635: 85 DC
TYA                     ; $27:B637: 98
LSR A                   ; $27:B638: 4A
LSR A                   ; $27:B639: 4A
TAY                     ; $27:B63A: A8
SEP #$20                ; $27:B63B: E2 20
LDA $DD                 ; $27:B63D: A5 DD
AND #$01                ; $27:B63F: 29 01
STA $0A20,y             ; $27:B641: 99 20 0A
STA $0A21,y             ; $27:B644: 99 21 0A
PLY                     ; $27:B647: 7A
BRL CODE_27B693         ; $27:B648: 82 48 00

CODE_27B64B:
LDA $0588               ; $27:B64B: AD 88 05
STA $D8                 ; $27:B64E: 85 D8
STZ $D9                 ; $27:B650: 64 D9
REP #$30                ; $27:B652: C2 30
LDY $C6,x               ; $27:B654: B4 C6
LDA $0565               ; $27:B656: AD 65 05
LSR A                   ; $27:B659: 4A
LSR A                   ; $27:B65A: 4A
AND #$0003              ; $27:B65B: 29 03 00
TAX                     ; $27:B65E: AA
SEP #$20                ; $27:B65F: E2 20
LDA.w DATA_21C6EC,x     ; $27:B661: BD EC C6
STA $0802,y             ; $27:B664: 99 02 08
INC A                   ; $27:B667: 1A
STA $0806,y             ; $27:B668: 99 06 08
LDA $02                 ; $27:B66B: A5 02
EOR.w DATA_21C6F0,x     ; $27:B66D: 5D F0 C6
CLC                     ; $27:B670: 18
ORA #$20                ; $27:B671: 09 20
LDX $D8                 ; $27:B673: A6 D8
BEQ CODE_27B67B         ; $27:B675: F0 04
AND #$CF                ; $27:B677: 29 CF
ORA #$10                ; $27:B679: 09 10

CODE_27B67B:
STA $0803,y             ; $27:B67B: 99 03 08
STA $0807,y             ; $27:B67E: 99 07 08
AND #$80                ; $27:B681: 29 80
BEQ CODE_27B693         ; $27:B683: F0 0E
LDA $0802,y             ; $27:B685: B9 02 08
PHA                     ; $27:B688: 48
LDA $0806,y             ; $27:B689: B9 06 08
STA $0802,y             ; $27:B68C: 99 02 08
PLA                     ; $27:B68F: 68
STA $0806,y             ; $27:B690: 99 06 08

CODE_27B693:
SEP #$10                ; $27:B693: E2 10
LDX $9B                 ; $27:B695: A6 9B
LDA $9C                 ; $27:B697: A5 9C
BNE CODE_27B6AD         ; $27:B699: D0 12
LDA $1CE1,x             ; $27:B69B: BD E1 1C
CMP #$02                ; $27:B69E: C9 02
BEQ CODE_27B6A5         ; $27:B6A0: F0 03
JSR CODE_27B6AE         ; $27:B6A2: 20 AE B6

CODE_27B6A5:
JMP CODE_27B890         ; $27:B6A5: 4C 90 B8

CODE_27B6A8:
LDA #$03                ; $27:B6A8: A9 03
STA $1CE1,x             ; $27:B6AA: 9D E1 1C

CODE_27B6AD:
RTS                     ; $27:B6AD: 60

CODE_27B6AE:
LDA $0425               ; $27:B6AE: AD 25 04
BEQ CODE_27B6EB         ; $27:B6B1: F0 38
LDA $0C                 ; $27:B6B3: A5 0C
CLC                     ; $27:B6B5: 18
ADC $0543               ; $27:B6B6: 6D 43 05
STA $05                 ; $27:B6B9: 85 05
AND #$F0                ; $27:B6BB: 29 F0
STA $02                 ; $27:B6BD: 85 02
LDA $0542               ; $27:B6BF: AD 42 05
ADC #$20                ; $27:B6C2: 69 20
STA $01                 ; $27:B6C4: 85 01
STA $D9                 ; $27:B6C6: 85 D9
CLC                     ; $27:B6C8: 18
ADC #$20                ; $27:B6C9: 69 20
STA $DC                 ; $27:B6CB: 85 DC
LDA $1CE5,x             ; $27:B6CD: BD E5 1C
ADC #$04                ; $27:B6D0: 69 04
STA $0D                 ; $27:B6D2: 85 0D
LSR A                   ; $27:B6D4: 4A
LSR A                   ; $27:B6D5: 4A
LSR A                   ; $27:B6D6: 4A
LSR A                   ; $27:B6D7: 4A
ORA $02                 ; $27:B6D8: 05 02
STA $00                 ; $27:B6DA: 85 00
STA $D8                 ; $27:B6DC: 85 D8
STA $DB                 ; $27:B6DE: 85 DB
LDA #$7E                ; $27:B6E0: A9 7E
STA $DA                 ; $27:B6E2: 85 DA
STA $DD                 ; $27:B6E4: 85 DD
LDY #$00                ; $27:B6E6: A0 00
JMP CODE_27B759         ; $27:B6E8: 4C 59 B7

CODE_27B6EB:
LDA $058B               ; $27:B6EB: AD 8B 05
BEQ CODE_27B702         ; $27:B6EE: F0 12
LDA $0C                 ; $27:B6F0: A5 0C
CMP #$A0                ; $27:B6F2: C9 A0
BCC CODE_27B704         ; $27:B6F4: 90 0E
SBC #$10                ; $27:B6F6: E9 10
STA $05                 ; $27:B6F8: 85 05
AND #$F0                ; $27:B6FA: 29 F0
STA $02                 ; $27:B6FC: 85 02
LDA #$01                ; $27:B6FE: A9 01
BRA CODE_27B713         ; $27:B700: 80 11

CODE_27B702:
LDA $0C                 ; $27:B702: A5 0C

CODE_27B704:
CLC                     ; $27:B704: 18
ADC $0543               ; $27:B705: 6D 43 05
STA $05                 ; $27:B708: 85 05
AND #$F0                ; $27:B70A: 29 F0
STA $02                 ; $27:B70C: 85 02
LDA $0542               ; $27:B70E: AD 42 05
ADC #$00                ; $27:B711: 69 00

CODE_27B713:
STA $03                 ; $27:B713: 85 03
BEQ CODE_27B724         ; $27:B715: F0 0D
CMP #$02                ; $27:B717: C9 02
BCS CODE_27B721         ; $27:B719: B0 06
LDA $02                 ; $27:B71B: A5 02
CMP #$B0                ; $27:B71D: C9 B0
BCC CODE_27B724         ; $27:B71F: 90 03

CODE_27B721:
BRL CODE_27B7A0         ; $27:B721: 82 7C 00

CODE_27B724:
LDA $1CE5,x             ; $27:B724: BD E5 1C
STA $04                 ; $27:B727: 85 04
PHX                     ; $27:B729: DA
LDA $0247,x             ; $27:B72A: BD 47 02
STA $06                 ; $27:B72D: 85 06
ASL A                   ; $27:B72F: 0A
TAX                     ; $27:B730: AA
LDA.l DATA_218200,x     ; $27:B731: BF 00 82 21
STA $D8                 ; $27:B735: 85 D8
STA $DB                 ; $27:B737: 85 DB
LDA $03                 ; $27:B739: A5 03
AND #$01                ; $27:B73B: 29 01
CLC                     ; $27:B73D: 18
ADC.l DATA_218200+1,x   ; $27:B73E: 7F 01 82 21
STA $D9                 ; $27:B742: 85 D9
CLC                     ; $27:B744: 18
ADC #$20                ; $27:B745: 69 20
STA $DC                 ; $27:B747: 85 DC
PLX                     ; $27:B749: FA
LDA $04                 ; $27:B74A: A5 04
LSR A                   ; $27:B74C: 4A
LSR A                   ; $27:B74D: 4A
LSR A                   ; $27:B74E: 4A
LSR A                   ; $27:B74F: 4A
ORA $02                 ; $27:B750: 05 02
TAY                     ; $27:B752: A8
LDA #$7E                ; $27:B753: A9 7E
STA $DA                 ; $27:B755: 85 DA
STA $DD                 ; $27:B757: 85 DD

CODE_27B759:
LDA [$DB],y             ; $27:B759: B7 DB
BEQ CODE_27B775         ; $27:B75B: F0 18
LDA [$D8],y             ; $27:B75D: B7 D8
TAY                     ; $27:B75F: A8
PHX                     ; $27:B760: DA
LDA $070A               ; $27:B761: AD 0A 07
ASL A                   ; $27:B764: 0A
TAX                     ; $27:B765: AA
LDA.w DATA_21AB57,x     ; $27:B766: BD 57 AB
STA $DB                 ; $27:B769: 85 DB
LDA.w DATA_21AB57+1,x   ; $27:B76B: BD 58 AB
STA $DC                 ; $27:B76E: 85 DC
LDA ($DB),y             ; $27:B770: B1 DB
PLX                     ; $27:B772: FA
BRA CODE_27B777         ; $27:B773: 80 02

CODE_27B775:
LDA [$D8],y             ; $27:B775: B7 D8

CODE_27B777:
JSL CODE_278ED2         ; $27:B777: 22 D2 8E 27
PHA                     ; $27:B77B: 48
ASL A                   ; $27:B77C: 0A
ROL A                   ; $27:B77D: 2A
ROL A                   ; $27:B77E: 2A
AND #$03                ; $27:B77F: 29 03
TAY                     ; $27:B781: A8
STY $01                 ; $27:B782: 84 01
PLA                     ; $27:B784: 68
STA $00                 ; $27:B785: 85 00
CMP $1E96,y             ; $27:B787: D9 96 1E
BCC CODE_27B7A0         ; $27:B78A: 90 14
CMP $1E9A,y             ; $27:B78C: D9 9A 1E
BCC CODE_27B7E8         ; $27:B78F: 90 57
LDY $0560               ; $27:B791: AC 60 05
CPY #$0B                ; $27:B794: C0 0B
BNE CODE_27B7AF         ; $27:B796: D0 17
CMP #$56                ; $27:B798: C9 56
BNE CODE_27B7A6         ; $27:B79A: D0 0A
LDA #$10                ; $27:B79C: A9 10
BNE CODE_27B7AC         ; $27:B79E: D0 0C

CODE_27B7A0:
LDA #$00                ; $27:B7A0: A9 00
STA $1CEB,x             ; $27:B7A2: 9D EB 1C
RTS                     ; $27:B7A5: 60

CODE_27B7A6:
CMP #$55                ; $27:B7A6: C9 55
BNE CODE_27B7AF         ; $27:B7A8: D0 05
LDA #$11                ; $27:B7AA: A9 11

CODE_27B7AC:
JSR CODE_27B7F6         ; $27:B7AC: 20 F6 B7

CODE_27B7AF:
LDA $00                 ; $27:B7AF: A5 00
LDY $0563               ; $27:B7B1: AC 63 05
BEQ CODE_27B7C2         ; $27:B7B4: F0 0C
CMP #$37                ; $27:B7B6: C9 37
BEQ CODE_27B7DD         ; $27:B7B8: F0 23
CMP #$AB                ; $27:B7BA: C9 AB
BEQ CODE_27B7DD         ; $27:B7BC: F0 1F
CMP #$F9                ; $27:B7BE: C9 F9
BEQ CODE_27B7DD         ; $27:B7C0: F0 1B

CODE_27B7C2:
INC $1CEB,x             ; $27:B7C2: FE EB 1C
LDA $1CEB,x             ; $27:B7C5: BD EB 1C
CMP #$02                ; $27:B7C8: C9 02
BNE CODE_27B7CF         ; $27:B7CA: D0 03
JMP CODE_27B884         ; $27:B7CC: 4C 84 B8

CODE_27B7CF:
LDA $1CE3,x             ; $27:B7CF: BD E3 1C
SEC                     ; $27:B7D2: 38
SBC #$02                ; $27:B7D3: E9 02
STA $1CE3,x             ; $27:B7D5: 9D E3 1C
BCS CODE_27B7DD         ; $27:B7D8: B0 03
DEC $05FA,x             ; $27:B7DA: DE FA 05

CODE_27B7DD:
LDA #$FD                ; $27:B7DD: A9 FD

CODE_27B7DF:
STA $1CE7,x             ; $27:B7DF: 9D E7 1C
LDA #$03                ; $27:B7E2: A9 03
STA $1CED,x             ; $27:B7E4: 9D ED 1C
RTS                     ; $27:B7E7: 60

CODE_27B7E8:
LDA $0563               ; $27:B7E8: AD 63 05
BNE CODE_27B827         ; $27:B7EB: D0 3A
LDA $05                 ; $27:B7ED: A5 05
AND #$0F                ; $27:B7EF: 29 0F
CMP #$05                ; $27:B7F1: C9 05
BCC CODE_27B7DD         ; $27:B7F3: 90 E8
RTS                     ; $27:B7F5: 60

CODE_27B7F6:
STA $0564               ; $27:B7F6: 8D 64 05
JSL CODE_279544         ; $27:B7F9: 22 44 95 27
LDA #$01                ; $27:B7FD: A9 01
STA $1F9C               ; $27:B7FF: 8D 9C 1F
LDA $02                 ; $27:B802: A5 02
STA $052B               ; $27:B804: 8D 2B 05
SBC $0543               ; $27:B807: ED 43 05
STA $1F9F               ; $27:B80A: 8D 9F 1F
LDA $03                 ; $27:B80D: A5 03
STA $052A               ; $27:B80F: 8D 2A 05
LDA $04                 ; $27:B812: A5 04
AND #$F0                ; $27:B814: 29 F0
STA $0529               ; $27:B816: 8D 29 05
SBC $0210               ; $27:B819: ED 10 02
STA $1FA2               ; $27:B81C: 8D A2 1F
LDA $06                 ; $27:B81F: A5 06
STA $0528               ; $27:B821: 8D 28 05
JMP CODE_27B6A8         ; $27:B824: 4C A8 B6

CODE_27B827:
LDA $05                 ; $27:B827: A5 05
AND #$0F                ; $27:B829: 29 0F
STA $05                 ; $27:B82B: 85 05
LDA $04                 ; $27:B82D: A5 04
AND #$0F                ; $27:B82F: 29 0F
STA $04                 ; $27:B831: 85 04
LDY $01                 ; $27:B833: A4 01
TYA                     ; $27:B835: 98
ASL A                   ; $27:B836: 0A
TAX                     ; $27:B837: AA
LDA.w DATA_21AAD0,x     ; $27:B838: BD D0 AA
STA $02                 ; $27:B83B: 85 02
LDA.w DATA_21AAD0+1,x   ; $27:B83D: BD D1 AA
STA $03                 ; $27:B840: 85 03
LDY $01                 ; $27:B842: A4 01
LDX $9B                 ; $27:B844: A6 9B
LDA $00                 ; $27:B846: A5 00
SEC                     ; $27:B848: 38
SBC $1E96,y             ; $27:B849: F9 96 1E
TAY                     ; $27:B84C: A8
LDA ($02),y             ; $27:B84D: B1 02
TAY                     ; $27:B84F: A8
LDA.w DATA_21AD70,y     ; $27:B850: B9 70 AD
CMP #$80                ; $27:B853: C9 80
BEQ CODE_27B884         ; $27:B855: F0 2D
STA $06                 ; $27:B857: 85 06
TYA                     ; $27:B859: 98
ASL A                   ; $27:B85A: 0A
ASL A                   ; $27:B85B: 0A
ASL A                   ; $27:B85C: 0A
ASL A                   ; $27:B85D: 0A
CLC                     ; $27:B85E: 18
ADC $04                 ; $27:B85F: 65 04
TAY                     ; $27:B861: A8
LDA.w DATA_21AC0B,y     ; $27:B862: B9 0B AC
AND #$0F                ; $27:B865: 29 0F
STA $01                 ; $27:B867: 85 01
LDA $05                 ; $27:B869: A5 05
CMP #$0C                ; $27:B86B: C9 0C
BCS CODE_27B873         ; $27:B86D: B0 04
CMP $01                 ; $27:B86F: C5 01
BCC CODE_27B88F         ; $27:B871: 90 1C

CODE_27B873:
LDA $06                 ; $27:B873: A5 06
BEQ CODE_27B88C         ; $27:B875: F0 15
LDY #$FB                ; $27:B877: A0 FB
EOR $1CE9,x             ; $27:B879: 5D E9 1C
BMI CODE_27B880         ; $27:B87C: 30 02
LDY #$FE                ; $27:B87E: A0 FE

CODE_27B880:
TYA                     ; $27:B880: 98
JMP CODE_27B7DF         ; $27:B881: 4C DF B7

CODE_27B884:
LDA #$01                ; $27:B884: A9 01
STA $1200               ; $27:B886: 8D 00 12
JMP CODE_27B6A8         ; $27:B889: 4C A8 B6

CODE_27B88C:
JMP CODE_27B7DD         ; $27:B88C: 4C DD B7

CODE_27B88F:
RTS                     ; $27:B88F: 60

CODE_27B890:
LDY #$04                ; $27:B890: A0 04

CODE_27B892:
LDA $0651,y             ; $27:B892: B9 51 06
ORA $0681,y             ; $27:B895: 19 81 06
BNE CODE_27B8B1         ; $27:B898: D0 17
LDX $0661,y             ; $27:B89A: BE 61 06
LDA.w DATA_21B033,x     ; $27:B89D: BD 33 B0
BNE CODE_27B8B1         ; $27:B8A0: D0 0F
LDX $0671,y             ; $27:B8A2: BE 71 06
LDA.w DATA_21AE78,x     ; $27:B8A5: BD 78 AE
STA $00                 ; $27:B8A8: 85 00
AND #$20                ; $27:B8AA: 29 20
BNE CODE_27B8B1         ; $27:B8AC: D0 03
JSR CODE_27B8B9         ; $27:B8AE: 20 B9 B8

CODE_27B8B1:
DEY                     ; $27:B8B1: 88
BPL CODE_27B892         ; $27:B8B2: 10 DE
LDX $9B                 ; $27:B8B4: A6 9B

CODE_27B8B6:
SEP #$20                ; $27:B8B6: E2 20
RTS                     ; $27:B8B8: 60

CODE_27B8B9:
LDA $00                 ; $27:B8B9: A5 00
AND #$0F                ; $27:B8BB: 29 0F
TAX                     ; $27:B8BD: AA
STX $01                 ; $27:B8BE: 86 01
LDA.w DATA_21C6FD,x     ; $27:B8C0: BD FD C6
STA $DA                 ; $27:B8C3: 85 DA
STZ $DB                 ; $27:B8C5: 64 DB
LDA.w DATA_21C70D,x     ; $27:B8C7: BD 0D C7
STA $DC                 ; $27:B8CA: 85 DC
STZ $DD                 ; $27:B8CC: 64 DD
LDX $9B                 ; $27:B8CE: A6 9B
LDA $0071,y             ; $27:B8D0: B9 71 00
STA $D8                 ; $27:B8D3: 85 D8
LDA $0056,y             ; $27:B8D5: B9 56 00
STA $D9                 ; $27:B8D8: 85 D9
LDA $05FA,x             ; $27:B8DA: BD FA 05
XBA                     ; $27:B8DD: EB
LDA $1CE3,x             ; $27:B8DE: BD E3 1C
REP #$20                ; $27:B8E1: C2 20
CLC                     ; $27:B8E3: 18
ADC #$000E              ; $27:B8E4: 69 0E 00
SEC                     ; $27:B8E7: 38
SBC $D8                 ; $27:B8E8: E5 D8
CMP $DA                 ; $27:B8EA: C5 DA
BCS CODE_27B8B6         ; $27:B8EC: B0 C8
SEP #$20                ; $27:B8EE: E2 20
LDA $005F,y             ; $27:B8F0: B9 5F 00
STA $D8                 ; $27:B8F3: 85 D8
LDA $0044,y             ; $27:B8F5: B9 44 00
STA $D9                 ; $27:B8F8: 85 D9
LDA $0247,x             ; $27:B8FA: BD 47 02
XBA                     ; $27:B8FD: EB
LDA $1CE5,x             ; $27:B8FE: BD E5 1C
REP #$20                ; $27:B901: C2 20
CLC                     ; $27:B903: 18
ADC #$0008              ; $27:B904: 69 08 00
SEC                     ; $27:B907: 38
SBC $D8                 ; $27:B908: E5 D8
CMP $DC                 ; $27:B90A: C5 DC
BCS CODE_27B8B6         ; $27:B90C: B0 A8
SEP #$20                ; $27:B90E: E2 20
LDA $1CE1,x             ; $27:B910: BD E1 1C
CMP #$02                ; $27:B913: C9 02
BEQ CODE_27B91C         ; $27:B915: F0 05
JSR CODE_27B6A8         ; $27:B917: 20 A8 B6
BRA CODE_27B922         ; $27:B91A: 80 06

CODE_27B91C:
LDA $00                 ; $27:B91C: A5 00
BMI CODE_27B95A         ; $27:B91E: 30 3A
BPL CODE_27B928         ; $27:B920: 10 06

CODE_27B922:
LDA $00                 ; $27:B922: A5 00
AND #$40                ; $27:B924: 29 40
BNE CODE_27B95B         ; $27:B926: D0 33

CODE_27B928:
LDA #$03                ; $27:B928: A9 03
STA $1200               ; $27:B92A: 8D 00 12
LDA $1CF6,y             ; $27:B92D: B9 F6 1C
BEQ CODE_27B939         ; $27:B930: F0 07
SEC                     ; $27:B932: 38
SBC #$01                ; $27:B933: E9 01
STA $1CF6,y             ; $27:B935: 99 F6 1C
RTS                     ; $27:B938: 60

CODE_27B939:
LDA #$CC                ; $27:B939: A9 CC
STA $009E,y             ; $27:B93B: 99 9E 00
LDA $1CE9,x             ; $27:B93E: BD E9 1C
ASL A                   ; $27:B941: 0A
LDA #$0C                ; $27:B942: A9 0C
BCC CODE_27B948         ; $27:B944: 90 02
LDA #$F4                ; $27:B946: A9 F4

CODE_27B948:
STA $008C,y             ; $27:B948: 99 8C 00
TYA                     ; $27:B94B: 98
TAX                     ; $27:B94C: AA
LDA #$05                ; $27:B94D: A9 05
JSL CODE_278A94         ; $27:B94F: 22 94 8A 27
LDX $9B                 ; $27:B953: A6 9B
LDA #$06                ; $27:B955: A9 06
STA $0661,y             ; $27:B957: 99 61 06

CODE_27B95A:
RTS                     ; $27:B95A: 60

CODE_27B95B:
JMP CODE_27B884         ; $27:B95B: 4C 84 B8

CODE_27B95E:
LDY $9C                 ; $27:B95E: A4 9C
BNE CODE_27B974         ; $27:B960: D0 12
INC $1CE1,x             ; $27:B962: FE E1 1C
LDA $1CE1,x             ; $27:B965: BD E1 1C
CMP #$10                ; $27:B968: C9 10
BNE CODE_27B974         ; $27:B96A: D0 08

CODE_27B96C:
SEP #$30                ; $27:B96C: E2 30
LDA #$00                ; $27:B96E: A9 00
STA $1CE1,x             ; $27:B970: 9D E1 1C
RTS                     ; $27:B973: 60

CODE_27B974:
JSL CODE_27A19D         ; $27:B974: 22 9D A1 27
LDA $0247,x             ; $27:B978: BD 47 02
XBA                     ; $27:B97B: EB
LDA $1CE5,x             ; $27:B97C: BD E5 1C
REP #$30                ; $27:B97F: C2 30
SBC #$0004              ; $27:B981: E9 04 00
SEC                     ; $27:B984: 38
SBC $0210               ; $27:B985: ED 10 02
STA $D8                 ; $27:B988: 85 D8
CLC                     ; $27:B98A: 18
ADC #$0008              ; $27:B98B: 69 08 00
STA $DA                 ; $27:B98E: 85 DA
SEP #$20                ; $27:B990: E2 20
LDY $C6,x               ; $27:B992: B4 C6
LDA $D8                 ; $27:B994: A5 D8
STA $0800,y             ; $27:B996: 99 00 08
STA $0808,y             ; $27:B999: 99 08 08
LDA $DA                 ; $27:B99C: A5 DA
STA $0804,y             ; $27:B99E: 99 04 08
STA $080C,y             ; $27:B9A1: 99 0C 08
LDA $05FA,x             ; $27:B9A4: BD FA 05
XBA                     ; $27:B9A7: EB
LDA $1CE3,x             ; $27:B9A8: BD E3 1C
REP #$20                ; $27:B9AB: C2 20
SEC                     ; $27:B9AD: 38
SBC $0216               ; $27:B9AE: ED 16 02
CMP #$00D0              ; $27:B9B1: C9 D0 00
BCS CODE_27B96C         ; $27:B9B4: B0 B6
SEP #$20                ; $27:B9B6: E2 20
STA $0801,y             ; $27:B9B8: 99 01 08
STA $0805,y             ; $27:B9BB: 99 05 08
CLC                     ; $27:B9BE: 18
ADC #$08                ; $27:B9BF: 69 08
STA $0809,y             ; $27:B9C1: 99 09 08
STA $080D,y             ; $27:B9C4: 99 0D 08
REP #$20                ; $27:B9C7: C2 20
LDA $1CE1,x             ; $27:B9C9: BD E1 1C
AND #$00FF              ; $27:B9CC: 29 FF 00
LSR A                   ; $27:B9CF: 4A
LSR A                   ; $27:B9D0: 4A
TAX                     ; $27:B9D1: AA
SEP #$20                ; $27:B9D2: E2 20
LDA.w DATA_21C71D,x     ; $27:B9D4: BD 1D C7
STA $0802,y             ; $27:B9D7: 99 02 08
STA $080E,y             ; $27:B9DA: 99 0E 08
INC A                   ; $27:B9DD: 1A
STA $080A,y             ; $27:B9DE: 99 0A 08
STA $0806,y             ; $27:B9E1: 99 06 08
LDA #$22                ; $27:B9E4: A9 22
STA $DC                 ; $27:B9E6: 85 DC
LDA $0588               ; $27:B9E8: AD 88 05
BEQ CODE_27B9F1         ; $27:B9EB: F0 04
LDA #$12                ; $27:B9ED: A9 12
STA $DC                 ; $27:B9EF: 85 DC

CODE_27B9F1:
LDA $DC                 ; $27:B9F1: A5 DC
STA $0803,y             ; $27:B9F3: 99 03 08
STA $080B,y             ; $27:B9F6: 99 0B 08
ORA #$C0                ; $27:B9F9: 09 C0
STA $0807,y             ; $27:B9FB: 99 07 08
STA $080F,y             ; $27:B9FE: 99 0F 08
REP #$20                ; $27:BA01: C2 20
TYA                     ; $27:BA03: 98
LSR A                   ; $27:BA04: 4A
LSR A                   ; $27:BA05: 4A
TAY                     ; $27:BA06: A8
SEP #$20                ; $27:BA07: E2 20
LDA $D9                 ; $27:BA09: A5 D9
AND #$01                ; $27:BA0B: 29 01
STA $0A20,y             ; $27:BA0D: 99 20 0A
STA $0A22,y             ; $27:BA10: 99 22 0A
LDA $DB                 ; $27:BA13: A5 DB
AND #$01                ; $27:BA15: 29 01
STA $0A21,y             ; $27:BA17: 99 21 0A
STA $0A23,y             ; $27:BA1A: 99 23 0A
SEP #$10                ; $27:BA1D: E2 10
LDX $9B                 ; $27:BA1F: A6 9B

CODE_27BA21:
RTS                     ; $27:BA21: 60

CODE_27BA22:
LDY $056E               ; $27:BA22: AC 6E 05
INY                     ; $27:BA25: C8
BNE CODE_27BA2B         ; $27:BA26: D0 03
STY $05F4               ; $27:BA28: 8C F4 05

CODE_27BA2B:
LDY $9C                 ; $27:BA2B: A4 9C
BNE CODE_27BA21         ; $27:BA2D: D0 F2
LDA $0575               ; $27:BA2F: AD 75 05
BEQ CODE_27BA21         ; $27:BA32: F0 ED
STY $05F4               ; $27:BA34: 8C F4 05
CMP #$01                ; $27:BA37: C9 01
BNE CODE_27BA3E         ; $27:BA39: D0 03
BRL CODE_27BAE7         ; $27:BA3B: 82 A9 00

CODE_27BA3E:
LDA $9D                 ; $27:BA3E: A5 9D
CMP #$3C                ; $27:BA40: C9 3C
BPL CODE_27BA4D         ; $27:BA42: 10 09
INC $9D                 ; $27:BA44: E6 9D
LDA $15                 ; $27:BA46: A5 15
LSR A                   ; $27:BA48: 4A
BCC CODE_27BA4D         ; $27:BA49: 90 02
INC $9D                 ; $27:BA4B: E6 9D

CODE_27BA4D:
LDX #$00                ; $27:BA4D: A2 00
JSL CODE_27A19D         ; $27:BA4F: 22 9D A1 27
BEQ CODE_27BA21         ; $27:BA53: F0 CC
LDA $0583               ; $27:BA55: AD 83 05
BNE CODE_27BA21         ; $27:BA58: D0 C7
REP #$10                ; $27:BA5A: C2 10
LDY $C6,x               ; $27:BA5C: B4 C6
LDA #$46                ; $27:BA5E: A9 46
STA $0802,y             ; $27:BA60: 99 02 08
STA $0806,y             ; $27:BA63: 99 06 08
INC A                   ; $27:BA66: 1A
STA $080A,y             ; $27:BA67: 99 0A 08
STA $080E,y             ; $27:BA6A: 99 0E 08
SEP #$10                ; $27:BA6D: E2 10
LDA $15                 ; $27:BA6F: A5 15
LSR A                   ; $27:BA71: 4A
AND #$03                ; $27:BA72: 29 03
CLC                     ; $27:BA74: 18
ADC #$05                ; $27:BA75: 69 05
LDX $056F               ; $27:BA77: AE 6F 05
BNE CODE_27BA81         ; $27:BA7A: D0 05
LDX $00BB               ; $27:BA7C: AE BB 00
BNE CODE_27BA84         ; $27:BA7F: D0 03

CODE_27BA81:
CLC                     ; $27:BA81: 18
ADC #$0A                ; $27:BA82: 69 0A

CODE_27BA84:
STA $00                 ; $27:BA84: 85 00
LDX $9B                 ; $27:BA86: A6 9B
REP #$10                ; $27:BA88: C2 10
LDY $C6,x               ; $27:BA8A: B4 C6
LDA $82                 ; $27:BA8C: A5 82
CLC                     ; $27:BA8E: 18
ADC $00                 ; $27:BA8F: 65 00
SEC                     ; $27:BA91: 38
SBC #$0A                ; $27:BA92: E9 0A
STA $0801,y             ; $27:BA94: 99 01 08
STA $0805,y             ; $27:BA97: 99 05 08
CLC                     ; $27:BA9A: 18
ADC #$08                ; $27:BA9B: 69 08
STA $0809,y             ; $27:BA9D: 99 09 08
STA $080D,y             ; $27:BAA0: 99 0D 08
LDA $79                 ; $27:BAA3: A5 79
STA $0800,y             ; $27:BAA5: 99 00 08
STA $0804,y             ; $27:BAA8: 99 04 08
CLC                     ; $27:BAAB: 18
ADC #$08                ; $27:BAAC: 69 08
STA $0808,y             ; $27:BAAE: 99 08 08
STA $080C,y             ; $27:BAB1: 99 0C 08
REP #$20                ; $27:BAB4: C2 20
TYA                     ; $27:BAB6: 98
LSR A                   ; $27:BAB7: 4A
LSR A                   ; $27:BAB8: 4A
TAY                     ; $27:BAB9: A8
SEP #$20                ; $27:BABA: E2 20
LDA #$00                ; $27:BABC: A9 00
STA $0A20,y             ; $27:BABE: 99 20 0A
STA $0A21,y             ; $27:BAC1: 99 21 0A
STA $0A22,y             ; $27:BAC4: 99 22 0A
STA $0A23,y             ; $27:BAC7: 99 23 0A
SEP #$10                ; $27:BACA: E2 10
LDA #$80                ; $27:BACC: A9 80
STA $DC                 ; $27:BACE: 85 DC
LDA $79                 ; $27:BAD0: A5 79
STA $D8                 ; $27:BAD2: 85 D8
STZ $D9                 ; $27:BAD4: 64 D9
LDA $79                 ; $27:BAD6: A5 79
STA $DA                 ; $27:BAD8: 85 DA
STZ $DB                 ; $27:BADA: 64 DB
LDA $15                 ; $27:BADC: A5 15
AND #$03                ; $27:BADE: 29 03
SEC                     ; $27:BAE0: 38
SBC #$02                ; $27:BAE1: E9 02
JSR CODE_27BE00         ; $27:BAE3: 20 00 BE
RTS                     ; $27:BAE6: 60

CODE_27BAE7:
LDY #$7F                ; $27:BAE7: A0 7F
LDA $17                 ; $27:BAE9: A5 17
AND #$83                ; $27:BAEB: 29 83
BEQ CODE_27BAF1         ; $27:BAED: F0 02
LDY #$3F                ; $27:BAEF: A0 3F

CODE_27BAF1:
TYA                     ; $27:BAF1: 98
AND $15                 ; $27:BAF2: 25 15
BNE CODE_27BB02         ; $27:BAF4: D0 0C
LDX #$02                ; $27:BAF6: A2 02

CODE_27BAF8:
STX $9B                 ; $27:BAF8: 86 9B
LDA $1F7C,x             ; $27:BAFA: BD 7C 1F
BEQ CODE_27BB03         ; $27:BAFD: F0 04
DEX                     ; $27:BAFF: CA
BPL CODE_27BAF8         ; $27:BB00: 10 F6

CODE_27BB02:
RTS                     ; $27:BB02: 60

CODE_27BB03:
LDA $0783               ; $27:BB03: AD 83 07
ORA #$10                ; $27:BB06: 09 10
STA $1F7C,x             ; $27:BB08: 9D 7C 1F
LDY #$00                ; $27:BB0B: A0 00
LDA $BC                 ; $27:BB0D: A5 BC
CMP #$12                ; $27:BB0F: C9 12
BCC CODE_27BB2B         ; $27:BB11: 90 18
LDY #$03                ; $27:BB13: A0 03
CMP #$15                ; $27:BB15: C9 15
BCC CODE_27BB2B         ; $27:BB17: 90 12
LDY #$00                ; $27:BB19: A0 00
CMP #$1F                ; $27:BB1B: C9 1F
BCC CODE_27BB2B         ; $27:BB1D: 90 0C
INY                     ; $27:BB1F: C8
CMP #$23                ; $27:BB20: C9 23
BCC CODE_27BB2B         ; $27:BB22: 90 07
INY                     ; $27:BB24: C8
CMP #$27                ; $27:BB25: C9 27
BCC CODE_27BB2B         ; $27:BB27: 90 02
LDY #$00                ; $27:BB29: A0 00

CODE_27BB2B:
TYA                     ; $27:BB2B: 98
ASL A                   ; $27:BB2C: 0A
TAY                     ; $27:BB2D: A8
BIT $BD                 ; $27:BB2E: 24 BD
BVC CODE_27BB33         ; $27:BB30: 50 01
INY                     ; $27:BB32: C8

CODE_27BB33:
LDA #$00                ; $27:BB33: A9 00
LDX $BB                 ; $27:BB35: A6 BB
BNE CODE_27BB3B         ; $27:BB37: D0 02
LDA #$08                ; $27:BB39: A9 08

CODE_27BB3B:
LDX $9B                 ; $27:BB3B: A6 9B
CLC                     ; $27:BB3D: 18
ADC $70                 ; $27:BB3E: 65 70
ADC.w DATA_21C721,y     ; $27:BB40: 79 21 C7
STA $1F84,x             ; $27:BB43: 9D 84 1F
LDA $55                 ; $27:BB46: A5 55
ADC #$00                ; $27:BB48: 69 00
STA $1F80,x             ; $27:BB4A: 9D 80 1F
LDA $5E                 ; $27:BB4D: A5 5E
CLC                     ; $27:BB4F: 18
ADC.w DATA_21C729,y     ; $27:BB50: 79 29 C7
STA $1F8C,x             ; $27:BB53: 9D 8C 1F
LDA $43                 ; $27:BB56: A5 43
ADC #$00                ; $27:BB58: 69 00
STA $1F88,x             ; $27:BB5A: 9D 88 1F
RTS                     ; $27:BB5D: 60

CODE_27BB5E:
LDX #$03                ; $27:BB5E: A2 03

CODE_27BB60:
STX $9B                 ; $27:BB60: 86 9B
LDA $1F7C,x             ; $27:BB62: BD 7C 1F
BEQ CODE_27BB6A         ; $27:BB65: F0 03
JSR CODE_27BB6E         ; $27:BB67: 20 6E BB

CODE_27BB6A:
DEX                     ; $27:BB6A: CA
BPL CODE_27BB60         ; $27:BB6B: 10 F3
RTS                     ; $27:BB6D: 60

CODE_27BB6E:
LDA $9C                 ; $27:BB6E: A5 9C
BEQ CODE_27BB75         ; $27:BB70: F0 03
JMP CODE_27BB90         ; $27:BB72: 4C 90 BB

CODE_27BB75:
INC $1F7C,x             ; $27:BB75: FE 7C 1F
LDA $1F7C,x             ; $27:BB78: BD 7C 1F
ORA #$80                ; $27:BB7B: 09 80
STA $1F7C,x             ; $27:BB7D: 9D 7C 1F
AND #$30                ; $27:BB80: 29 30
BEQ CODE_27BB90         ; $27:BB82: F0 0C
DEC $1F84,x             ; $27:BB84: DE 84 1F
LDY $1F84,x             ; $27:BB87: BC 84 1F
INY                     ; $27:BB8A: C8
BNE CODE_27BB90         ; $27:BB8B: D0 03
DEC $1F80,x             ; $27:BB8D: DE 80 1F

CODE_27BB90:
LDA $0425               ; $27:BB90: AD 25 04
BEQ CODE_27BBB5         ; $27:BB93: F0 20
LDA $1F84,x             ; $27:BB95: BD 84 1F
CLC                     ; $27:BB98: 18
ADC #$0A                ; $27:BB99: 69 0A
AND #$F0                ; $27:BB9B: 29 F0
STA $02                 ; $27:BB9D: 85 02
LDA $1F80,x             ; $27:BB9F: BD 80 1F
ADC #$60                ; $27:BBA2: 69 60
STA $01                 ; $27:BBA4: 85 01
LDA $1F8C,x             ; $27:BBA6: BD 8C 1F
LSR A                   ; $27:BBA9: 4A
LSR A                   ; $27:BBAA: 4A
LSR A                   ; $27:BBAB: 4A
LSR A                   ; $27:BBAC: 4A
ORA $02                 ; $27:BBAD: 05 02
STA $00                 ; $27:BBAF: 85 00
LDY #$00                ; $27:BBB1: A0 00
BEQ CODE_27BBF5         ; $27:BBB3: F0 40

CODE_27BBB5:
LDA $1F84,x             ; $27:BBB5: BD 84 1F
CLC                     ; $27:BBB8: 18
ADC #$02                ; $27:BBB9: 69 02
AND #$F0                ; $27:BBBB: 29 F0
STA $02                 ; $27:BBBD: 85 02
LDA $1F80,x             ; $27:BBBF: BD 80 1F
ADC #$00                ; $27:BBC2: 69 00
PHA                     ; $27:BBC4: 48
LDA $1F8C,x             ; $27:BBC5: BD 8C 1F
STA $04                 ; $27:BBC8: 85 04
PLA                     ; $27:BBCA: 68
STA $01                 ; $27:BBCB: 85 01
PHX                     ; $27:BBCD: DA
LDA $1F88,x             ; $27:BBCE: BD 88 1F
ASL A                   ; $27:BBD1: 0A
TAX                     ; $27:BBD2: AA
LDA.l DATA_218200,x     ; $27:BBD3: BF 00 82 21
STA $00                 ; $27:BBD7: 85 00
STA $D8                 ; $27:BBD9: 85 D8
LDA $01                 ; $27:BBDB: A5 01
AND #$01                ; $27:BBDD: 29 01
CLC                     ; $27:BBDF: 18
ADC.l DATA_218200+1,x   ; $27:BBE0: 7F 01 82 21
STA $01                 ; $27:BBE4: 85 01
CLC                     ; $27:BBE6: 18
ADC #$20                ; $27:BBE7: 69 20
STA $D9                 ; $27:BBE9: 85 D9
PLX                     ; $27:BBEB: FA
LDA $04                 ; $27:BBEC: A5 04
LSR A                   ; $27:BBEE: 4A
LSR A                   ; $27:BBEF: 4A
LSR A                   ; $27:BBF0: 4A
LSR A                   ; $27:BBF1: 4A
ORA $02                 ; $27:BBF2: 05 02
TAY                     ; $27:BBF4: A8

CODE_27BBF5:
LDA #$7E                ; $27:BBF5: A9 7E
STA $02                 ; $27:BBF7: 85 02
STA $DA                 ; $27:BBF9: 85 DA
LDA [$D8],y             ; $27:BBFB: B7 D8
BEQ CODE_27BC17         ; $27:BBFD: F0 18
PHX                     ; $27:BBFF: DA
LDA $070A               ; $27:BC00: AD 0A 07
ASL A                   ; $27:BC03: 0A
TAX                     ; $27:BC04: AA
LDA.w DATA_21AB57,x     ; $27:BC05: BD 57 AB
STA $D8                 ; $27:BC08: 85 D8
LDA.w DATA_21AB57+1,x   ; $27:BC0A: BD 58 AB
STA $D9                 ; $27:BC0D: 85 D9
LDA [$00],y             ; $27:BC0F: B7 00
TAY                     ; $27:BC11: A8
LDA ($D8),y             ; $27:BC12: B1 D8
PLX                     ; $27:BC14: FA
BRA CODE_27BC19         ; $27:BC15: 80 02

CODE_27BC17:
LDA [$00],y             ; $27:BC17: B7 00

CODE_27BC19:
PHA                     ; $27:BC19: 48
ASL A                   ; $27:BC1A: 0A
ROL A                   ; $27:BC1B: 2A
ROL A                   ; $27:BC1C: 2A
AND #$03                ; $27:BC1D: 29 03
STA $00                 ; $27:BC1F: 85 00
PLA                     ; $27:BC21: 68
STA $01                 ; $27:BC22: 85 01
LDY $00                 ; $27:BC24: A4 00
CMP $1E96,y             ; $27:BC26: D9 96 1E
BCS CODE_27BC45         ; $27:BC29: B0 1A
LDA $0560               ; $27:BC2B: AD 60 05
ASL A                   ; $27:BC2E: 0A
ASL A                   ; $27:BC2F: 0A
CLC                     ; $27:BC30: 18
ADC $00                 ; $27:BC31: 65 00
TAY                     ; $27:BC33: A8
LDA $01                 ; $27:BC34: A5 01
CMP #$E0                ; $27:BC36: C9 E0
BEQ CODE_27BC45         ; $27:BC38: F0 0B
CMP #$E1                ; $27:BC3A: C9 E1
BEQ CODE_27BC45         ; $27:BC3C: F0 07
LDA.w DATA_21AD84,y     ; $27:BC3E: B9 84 AD
CMP $01                 ; $27:BC41: C5 01
BCC CODE_27BC4D         ; $27:BC43: 90 08

CODE_27BC45:
SEP #$20                ; $27:BC45: E2 20
LDA #$00                ; $27:BC47: A9 00
STA $1F7C,x             ; $27:BC49: 9D 7C 1F
RTS                     ; $27:BC4C: 60

CODE_27BC4D:
STZ $01                 ; $27:BC4D: 64 01
LDA $0565               ; $27:BC4F: AD 65 05
AND #$0C                ; $27:BC52: 29 0C
LSR A                   ; $27:BC54: 4A
LSR A                   ; $27:BC55: 4A
TAY                     ; $27:BC56: A8
LDA.w DATA_21C731,y     ; $27:BC57: B9 31 C7
STA $00                 ; $27:BC5A: 85 00
CMP #$80                ; $27:BC5C: C9 80
BCC CODE_27BC62         ; $27:BC5E: 90 02
DEC $01                 ; $27:BC60: C6 01

CODE_27BC62:
LDA $15                 ; $27:BC62: A5 15
AND #$03                ; $27:BC64: 29 03
ADC $9B                 ; $27:BC66: 65 9B
TAY                     ; $27:BC68: A8
LDA.w DATA_21C735,y     ; $27:BC69: B9 35 C7
BMI CODE_27BCD6         ; $27:BC6C: 30 68
TAY                     ; $27:BC6E: A8
LDA $0801,y             ; $27:BC6F: B9 01 08
CMP #$F0                ; $27:BC72: C9 F0
BNE CODE_27BCD6         ; $27:BC74: D0 60
LDA $0543               ; $27:BC76: AD 43 05
STA $D8                 ; $27:BC79: 85 D8
LDA $0542               ; $27:BC7B: AD 42 05
STA $D9                 ; $27:BC7E: 85 D9
LDA $1F80,x             ; $27:BC80: BD 80 1F
XBA                     ; $27:BC83: EB
LDA $1F84,x             ; $27:BC84: BD 84 1F
REP #$20                ; $27:BC87: C2 20
SEC                     ; $27:BC89: 38
SBC $D8                 ; $27:BC8A: E5 D8
CMP #$00C8              ; $27:BC8C: C9 C8 00
BCS CODE_27BC45         ; $27:BC8F: B0 B4
SEP #$20                ; $27:BC91: E2 20
STA $0801,y             ; $27:BC93: 99 01 08
STA $0805,y             ; $27:BC96: 99 05 08
LDA $1F88,x             ; $27:BC99: BD 88 1F
XBA                     ; $27:BC9C: EB
LDA $1F8C,x             ; $27:BC9D: BD 8C 1F
REP #$20                ; $27:BCA0: C2 20
CLC                     ; $27:BCA2: 18
ADC $00                 ; $27:BCA3: 65 00
SEC                     ; $27:BCA5: 38
SBC $0210               ; $27:BCA6: ED 10 02
STA $D8                 ; $27:BCA9: 85 D8
SEP #$20                ; $27:BCAB: E2 20
CMP #$F8                ; $27:BCAD: C9 F8
BCS CODE_27BC45         ; $27:BCAF: B0 94
STA $0800,y             ; $27:BCB1: 99 00 08
STA $0804,y             ; $27:BCB4: 99 04 08
LDA #$C6                ; $27:BCB7: A9 C6
STA $0802,y             ; $27:BCB9: 99 02 08
INC A                   ; $27:BCBC: 1A
STA $0806,y             ; $27:BCBD: 99 06 08
LDA #$23                ; $27:BCC0: A9 23
STA $0803,y             ; $27:BCC2: 99 03 08
STA $0807,y             ; $27:BCC5: 99 07 08
TYA                     ; $27:BCC8: 98
LSR A                   ; $27:BCC9: 4A
LSR A                   ; $27:BCCA: 4A
TAY                     ; $27:BCCB: A8
LDA $D9                 ; $27:BCCC: A5 D9
AND #$01                ; $27:BCCE: 29 01
STA $0A20,y             ; $27:BCD0: 99 20 0A
STA $0A21,y             ; $27:BCD3: 99 21 0A

CODE_27BCD6:
RTS                     ; $27:BCD6: 60

CODE_27BCD7:
LDX #$02                ; $27:BCD7: A2 02

CODE_27BCD9:
STX $9B                 ; $27:BCD9: 86 9B
LDA $1F90,x             ; $27:BCDB: BD 90 1F
BEQ CODE_27BCFE         ; $27:BCDE: F0 1E
LDA $9C                 ; $27:BCE0: A5 9C
BNE CODE_27BCFB         ; $27:BCE2: D0 17
INC $1F90,x             ; $27:BCE4: FE 90 1F
LDA $15                 ; $27:BCE7: A5 15
LSR A                   ; $27:BCE9: 4A
BCC CODE_27BCEF         ; $27:BCEA: 90 03
INC $1F90,x             ; $27:BCEC: FE 90 1F

CODE_27BCEF:
LDA $1F90,x             ; $27:BCEF: BD 90 1F
CMP #$30                ; $27:BCF2: C9 30
BCC CODE_27BCFB         ; $27:BCF4: 90 05
JSR CODE_27BD02         ; $27:BCF6: 20 02 BD
BEQ CODE_27BCFE         ; $27:BCF9: F0 03

CODE_27BCFB:
JSR CODE_27BD0A         ; $27:BCFB: 20 0A BD

CODE_27BCFE:
DEX                     ; $27:BCFE: CA
BPL CODE_27BCD9         ; $27:BCFF: 10 D8
RTS                     ; $27:BD01: 60

CODE_27BD02:
SEP #$30                ; $27:BD02: E2 30
LDA #$00                ; $27:BD04: A9 00
STA $1F90,x             ; $27:BD06: 9D 90 1F

CODE_27BD09:
RTS                     ; $27:BD09: 60

CODE_27BD0A:
LDA $0216               ; $27:BD0A: AD 16 02
STA $02A7               ; $27:BD0D: 8D A7 02
LDA $0217               ; $27:BD10: AD 17 02
STA $02A8               ; $27:BD13: 8D A8 02
LDY #$01                ; $27:BD16: A0 01
JSL CODE_27DEF1         ; $27:BD18: 22 F1 DE 27
BCS CODE_27BD26         ; $27:BD1C: B0 08
LDA #$EF                ; $27:BD1E: A9 EF
STA $02A7               ; $27:BD20: 8D A7 02
STZ $02A8               ; $27:BD23: 9C A8 02

CODE_27BD26:
JSL CODE_27A19D         ; $27:BD26: 22 9D A1 27
BEQ CODE_27BD09         ; $27:BD2A: F0 DD
LDA $EF,x               ; $27:BD2C: B5 EF
XBA                     ; $27:BD2E: EB
LDA $1F96,x             ; $27:BD2F: BD 96 1F
REP #$30                ; $27:BD32: C2 30
SEC                     ; $27:BD34: 38
SBC $0210               ; $27:BD35: ED 10 02
CMP #$FFF0              ; $27:BD38: C9 F0 FF
BCS CODE_27BD42         ; $27:BD3B: B0 05
CMP #$0100              ; $27:BD3D: C9 00 01
BCS CODE_27BD02         ; $27:BD40: B0 C0

CODE_27BD42:
STA $D8                 ; $27:BD42: 85 D8
PHA                     ; $27:BD44: 48
PHP                     ; $27:BD45: 08
ADC #$0008              ; $27:BD46: 69 08 00
STA $DA                 ; $27:BD49: 85 DA
PLP                     ; $27:BD4B: 28
PLA                     ; $27:BD4C: 68
SEP #$20                ; $27:BD4D: E2 20
LDY $C6,x               ; $27:BD4F: B4 C6
STA $0800,y             ; $27:BD51: 99 00 08
STA $0804,y             ; $27:BD54: 99 04 08
ADC #$08                ; $27:BD57: 69 08
STA $0808,y             ; $27:BD59: 99 08 08
STA $080C,y             ; $27:BD5C: 99 0C 08
LDA $058E,x             ; $27:BD5F: BD 8E 05
XBA                     ; $27:BD62: EB
LDA $1F93,x             ; $27:BD63: BD 93 1F
REP #$20                ; $27:BD66: C2 20
STA $DC                 ; $27:BD68: 85 DC
LDA $1F99,x             ; $27:BD6A: BD 99 1F
AND #$00FF              ; $27:BD6D: 29 FF 00
PHP                     ; $27:BD70: 08
LDA $DC                 ; $27:BD71: A5 DC
PLP                     ; $27:BD73: 28
BNE CODE_27BD7A         ; $27:BD74: D0 04
SEC                     ; $27:BD76: 38
SBC $02A7               ; $27:BD77: ED A7 02

CODE_27BD7A:
CMP #$00AE              ; $27:BD7A: C9 AE 00
BCS CODE_27BD02         ; $27:BD7D: B0 83
SEP #$20                ; $27:BD7F: E2 20
STA $0801,y             ; $27:BD81: 99 01 08
STA $0809,y             ; $27:BD84: 99 09 08
CLC                     ; $27:BD87: 18
ADC #$08                ; $27:BD88: 69 08
STA $0805,y             ; $27:BD8A: 99 05 08
STA $080D,y             ; $27:BD8D: 99 0D 08
REP #$20                ; $27:BD90: C2 20
LDA $1F90,x             ; $27:BD92: BD 90 1F
AND #$00FF              ; $27:BD95: 29 FF 00
LSR A                   ; $27:BD98: 4A
LSR A                   ; $27:BD99: 4A
LSR A                   ; $27:BD9A: 4A
TAX                     ; $27:BD9B: AA
SEP #$20                ; $27:BD9C: E2 20
STA $00                 ; $27:BD9E: 85 00
LDA.w DATA_21C73C,x     ; $27:BDA0: BD 3C C7
STA $0802,y             ; $27:BDA3: 99 02 08
STA $080A,y             ; $27:BDA6: 99 0A 08
INC A                   ; $27:BDA9: 1A
STA $0806,y             ; $27:BDAA: 99 06 08
STA $080E,y             ; $27:BDAD: 99 0E 08
LDX #$0000              ; $27:BDB0: A2 00 00
AND #$C0                ; $27:BDB3: 29 C0
CMP #$C0                ; $27:BDB5: C9 C0
BNE CODE_27BDBC         ; $27:BDB7: D0 03
LDX #$0001              ; $27:BDB9: A2 01 00

CODE_27BDBC:
TXA                     ; $27:BDBC: 8A
STA $DC                 ; $27:BDBD: 85 DC
ORA #$22                ; $27:BDBF: 09 22
STA $0803,y             ; $27:BDC1: 99 03 08
STA $0807,y             ; $27:BDC4: 99 07 08
ORA #$62                ; $27:BDC7: 09 62
STA $080B,y             ; $27:BDC9: 99 0B 08
STA $080F,y             ; $27:BDCC: 99 0F 08
SEP #$10                ; $27:BDCF: E2 10
LDX $9B                 ; $27:BDD1: A6 9B
LDA $00                 ; $27:BDD3: A5 00
CMP #$03                ; $27:BDD5: C9 03
BCS CODE_27BDDC         ; $27:BDD7: B0 03
BRL CODE_27BE5E         ; $27:BDD9: 82 82 00

CODE_27BDDC:
LDA $15                 ; $27:BDDC: A5 15
AND #$01                ; $27:BDDE: 29 01
ORA $9C                 ; $27:BDE0: 05 9C
BNE CODE_27BDF5         ; $27:BDE2: D0 11
LDA $1F93,x             ; $27:BDE4: BD 93 1F
CLC                     ; $27:BDE7: 18
ADC #$01                ; $27:BDE8: 69 01
STA $1F93,x             ; $27:BDEA: 9D 93 1F
LDA $058E,x             ; $27:BDED: BD 8E 05
ADC #$00                ; $27:BDF0: 69 00
STA $058E,x             ; $27:BDF2: 9D 8E 05

CODE_27BDF5:
LDA $1F90,x             ; $27:BDF5: BD 90 1F
SEC                     ; $27:BDF8: 38
SBC #$18                ; $27:BDF9: E9 18
LSR A                   ; $27:BDFB: 4A
LSR A                   ; $27:BDFC: 4A
LSR A                   ; $27:BDFD: 4A
AND #$03                ; $27:BDFE: 29 03

CODE_27BE00:
STA $00                 ; $27:BE00: 85 00
STZ $01                 ; $27:BE02: 64 01
REP #$30                ; $27:BE04: C2 30
LDA $D8                 ; $27:BE06: A5 D8
SEC                     ; $27:BE08: 38
SBC $00                 ; $27:BE09: E5 00
STA $D8                 ; $27:BE0B: 85 D8
LDA $DA                 ; $27:BE0D: A5 DA
CLC                     ; $27:BE0F: 18
ADC $00                 ; $27:BE10: 65 00
STA $DA                 ; $27:BE12: 85 DA
SEP #$20                ; $27:BE14: E2 20
LDY $C6,x               ; $27:BE16: B4 C6
LDA $0800,y             ; $27:BE18: B9 00 08
SEC                     ; $27:BE1B: 38
SBC $00                 ; $27:BE1C: E5 00
STA $0800,y             ; $27:BE1E: 99 00 08
STA $0804,y             ; $27:BE21: 99 04 08
LDA $0808,y             ; $27:BE24: B9 08 08
CLC                     ; $27:BE27: 18
ADC $00                 ; $27:BE28: 65 00
STA $0808,y             ; $27:BE2A: 99 08 08
STA $080C,y             ; $27:BE2D: 99 0C 08
LDA $DC                 ; $27:BE30: A5 DC
ORA #$22                ; $27:BE32: 09 22
STA $080B,y             ; $27:BE34: 99 0B 08
STA $080F,y             ; $27:BE37: 99 0F 08
ORA #$40                ; $27:BE3A: 09 40
STA $0803,y             ; $27:BE3C: 99 03 08
STA $0807,y             ; $27:BE3F: 99 07 08
LDA $0565               ; $27:BE42: AD 65 05
AND #$02                ; $27:BE45: 29 02
BNE CODE_27BE5E         ; $27:BE47: D0 15
LDA $00                 ; $27:BE49: A5 00
ASL A                   ; $27:BE4B: 0A
ORA $DC                 ; $27:BE4C: 05 DC
ORA #$A0                ; $27:BE4E: 09 A0
STA $0803,y             ; $27:BE50: 99 03 08
STA $0807,y             ; $27:BE53: 99 07 08
ORA #$40                ; $27:BE56: 09 40
STA $080B,y             ; $27:BE58: 99 0B 08
STA $080F,y             ; $27:BE5B: 99 0F 08

CODE_27BE5E:
REP #$30                ; $27:BE5E: C2 30
LDA $C6,x               ; $27:BE60: B5 C6
LSR A                   ; $27:BE62: 4A
LSR A                   ; $27:BE63: 4A
TAY                     ; $27:BE64: A8
SEP #$20                ; $27:BE65: E2 20
LDA $D9                 ; $27:BE67: A5 D9
AND #$01                ; $27:BE69: 29 01
STA $0A20,y             ; $27:BE6B: 99 20 0A
STA $0A21,y             ; $27:BE6E: 99 21 0A
LDA $DB                 ; $27:BE71: A5 DB
AND #$01                ; $27:BE73: 29 01
STA $0A22,y             ; $27:BE75: 99 22 0A
STA $0A23,y             ; $27:BE78: 99 23 0A
SEP #$10                ; $27:BE7B: E2 10
RTS                     ; $27:BE7D: 60

CODE_27BE7E:
LDA $05F4               ; $27:BE7E: AD F4 05
CMP #$08                ; $27:BE81: C9 08
BCC CODE_27BE8A         ; $27:BE83: 90 05
LDA #$08                ; $27:BE85: A9 08
STA $05F4               ; $27:BE87: 8D F4 05

CODE_27BE8A:
LDX #$04                ; $27:BE8A: A2 04

CODE_27BE8C:
STX $9B                 ; $27:BE8C: 86 9B
LDA $079F,x             ; $27:BE8E: BD 9F 07
AND #$7F                ; $27:BE91: 29 7F
BEQ CODE_27BEAA         ; $27:BE93: F0 15
CMP #$0D                ; $27:BE95: C9 0D
BCC CODE_27BEA5         ; $27:BE97: 90 0C
LDA $079F,x             ; $27:BE99: BD 9F 07
AND #$80                ; $27:BE9C: 29 80
ORA #$0D                ; $27:BE9E: 09 0D
STA $079F,x             ; $27:BEA0: 9D 9F 07
AND #$7F                ; $27:BEA3: 29 7F

CODE_27BEA5:
STA $00                 ; $27:BEA5: 85 00
JSR CODE_27BEAE         ; $27:BEA7: 20 AE BE

CODE_27BEAA:
DEX                     ; $27:BEAA: CA
BPL CODE_27BE8C         ; $27:BEAB: 10 DF
RTL                     ; $27:BEAD: 6B

; Player growing/shrinking animation timer

CODE_27BEAE:
LDA $0551               ; $27:BEAE: AD 51 05
ORA $0555               ; $27:BEB1: 0D 55 05
ORA $0554               ; $27:BEB4: 0D 54 05
BNE CODE_27BEBD         ; $27:BEB7: D0 04
LDA $9C                 ; $27:BEB9: A5 9C
BNE CODE_27BF13         ; $27:BEBB: D0 56

CODE_27BEBD:
LDA $07A4,x             ; $27:BEBD: BD A4 07
BNE CODE_27BEC8         ; $27:BEC0: D0 06

CODE_27BEC2:
LDA #$00                ; $27:BEC2: A9 00
STA $079F,x             ; $27:BEC4: 9D 9F 07
RTS                     ; $27:BEC7: 60

CODE_27BEC8:
DEC $07A4,x             ; $27:BEC8: DE A4 07
CMP #$2A                ; $27:BECB: C9 2A
BNE CODE_27BEFA         ; $27:BECD: D0 2B
LDY $00                 ; $27:BECF: A4 00
LDA $069C               ; $27:BED1: AD 9C 06
CLC                     ; $27:BED4: 18
ADC.w DATA_21C75B,y     ; $27:BED5: 79 5B C7
STA $069C               ; $27:BED8: 8D 9C 06
LDA $069D               ; $27:BEDB: AD 9D 06
ADC.w DATA_21C768,y     ; $27:BEDE: 79 68 C7
STA $069D               ; $27:BEE1: 8D 9D 06
CPY #$0D                ; $27:BEE4: C0 0D
BNE CODE_27BEF8         ; $27:BEE6: D0 10
LDA #$05                ; $27:BEE8: A9 05
STA $1203               ; $27:BEEA: 8D 03 12
LDX $0726               ; $27:BEED: AE 26 07
LDA $0736,x             ; $27:BEF0: BD 36 07
BMI CODE_27BEF8         ; $27:BEF3: 30 03
INC $0736,x             ; $27:BEF5: FE 36 07

CODE_27BEF8:
LDX $9B                 ; $27:BEF8: A6 9B

CODE_27BEFA:
LDA $07A4,x             ; $27:BEFA: BD A4 07
LSR A                   ; $27:BEFD: 4A
LSR A                   ; $27:BEFE: 4A
LSR A                   ; $27:BEFF: 4A
LSR A                   ; $27:BF00: 4A
TAY                     ; $27:BF01: A8
LDA $15                 ; $27:BF02: A5 15
AND.w DATA_21C776,y     ; $27:BF04: 39 76 C7
BNE CODE_27BF13         ; $27:BF07: D0 0A
LDA $07A9,x             ; $27:BF09: BD A9 07
CMP #$04                ; $27:BF0C: C9 04
BCC CODE_27BF13         ; $27:BF0E: 90 03
DEC $07A9,x             ; $27:BF10: DE A9 07

CODE_27BF13:
STZ $D9                 ; $27:BF13: 64 D9
LDA $0781               ; $27:BF15: AD 81 07
STA $D8                 ; $27:BF18: 85 D8
CMP #$80                ; $27:BF1A: C9 80
BCC CODE_27BF20         ; $27:BF1C: 90 02
DEC $D9                 ; $27:BF1E: C6 D9

CODE_27BF20:
LDA $0251,x             ; $27:BF20: BD 51 02
XBA                     ; $27:BF23: EB
LDA $07AE,x             ; $27:BF24: BD AE 07
REP #$20                ; $27:BF27: C2 20
SEC                     ; $27:BF29: 38
SBC $D8                 ; $27:BF2A: E5 D8
SEP #$20                ; $27:BF2C: E2 20
STA $07AE,x             ; $27:BF2E: 9D AE 07
XBA                     ; $27:BF31: EB
STA $0251,x             ; $27:BF32: 9D 51 02
LDA $07AE,x             ; $27:BF35: BD AE 07
CMP #$F8                ; $27:BF38: C9 F8
BCS CODE_27BEC2         ; $27:BF3A: B0 86
LDA $07A9,x             ; $27:BF3C: BD A9 07
SEC                     ; $27:BF3F: 38
SBC $0780               ; $27:BF40: ED 80 07
STA $07A9,x             ; $27:BF43: 9D A9 07
CMP #$F8                ; $27:BF46: C9 F8
BCC CODE_27BF4D         ; $27:BF48: 90 03
BRL CODE_27BEC2         ; $27:BF4A: 82 75 FF

CODE_27BF4D:
JSL CODE_27A19D         ; $27:BF4D: 22 9D A1 27
STZ $01                 ; $27:BF51: 64 01
LDX $00                 ; $27:BF53: A6 00
LDA.w DATA_21C741,x     ; $27:BF55: BD 41 C7
LDX $9B                 ; $27:BF58: A6 9B
CMP #$FF                ; $27:BF5A: C9 FF
BEQ CODE_27BF99         ; $27:BF5C: F0 3B
REP #$10                ; $27:BF5E: C2 10
LDY $C6,x               ; $27:BF60: B4 C6
STA $0802,y             ; $27:BF62: 99 02 08
CMP.w DATA_21C74E       ; $27:BF65: CD 4E C7
BNE CODE_27BF6E         ; $27:BF68: D0 04
LDA #$22                ; $27:BF6A: A9 22
BRA CODE_27BF70         ; $27:BF6C: 80 02

CODE_27BF6E:
LDA #$20                ; $27:BF6E: A9 20

CODE_27BF70:
STA $0803,y             ; $27:BF70: 99 03 08
LDA $07A9,x             ; $27:BF73: BD A9 07
STA $0801,y             ; $27:BF76: 99 01 08
LDA $07AE,x             ; $27:BF79: BD AE 07
STA $0800,y             ; $27:BF7C: 99 00 08
REP #$20                ; $27:BF7F: C2 20
LDA $C6,x               ; $27:BF81: B5 C6
CLC                     ; $27:BF83: 18
ADC #$0004              ; $27:BF84: 69 04 00
STA $C6,x               ; $27:BF87: 95 C6
TYA                     ; $27:BF89: 98
LSR A                   ; $27:BF8A: 4A
LSR A                   ; $27:BF8B: 4A
TAY                     ; $27:BF8C: A8
SEP #$20                ; $27:BF8D: E2 20
LDA $0251,x             ; $27:BF8F: BD 51 02
AND #$01                ; $27:BF92: 29 01
STA $0A20,y             ; $27:BF94: 99 20 0A
SEP #$10                ; $27:BF97: E2 10

CODE_27BF99:
REP #$10                ; $27:BF99: C2 10
LDY $C6,x               ; $27:BF9B: B4 C6
LDA $07A9,x             ; $27:BF9D: BD A9 07
STA $0801,y             ; $27:BFA0: 99 01 08
LDA $07AE,x             ; $27:BFA3: BD AE 07
CLC                     ; $27:BFA6: 18
ADC #$08                ; $27:BFA7: 69 08
STA $0800,y             ; $27:BFA9: 99 00 08
LDA $0251,x             ; $27:BFAC: BD 51 02
ADC #$00                ; $27:BFAF: 69 00
STA $D8                 ; $27:BFB1: 85 D8
LDX $00                 ; $27:BFB3: A6 00
LDA.w DATA_21C74E,x     ; $27:BFB5: BD 4E C7
STA $0802,y             ; $27:BFB8: 99 02 08
LDA #$20                ; $27:BFBB: A9 20
CPX #$000D              ; $27:BFBD: E0 0D 00
BNE CODE_27BFC4         ; $27:BFC0: D0 02
ORA #$02                ; $27:BFC2: 09 02

CODE_27BFC4:
STA $0803,y             ; $27:BFC4: 99 03 08
REP #$20                ; $27:BFC7: C2 20
TYA                     ; $27:BFC9: 98
LSR A                   ; $27:BFCA: 4A
LSR A                   ; $27:BFCB: 4A
TAY                     ; $27:BFCC: A8
SEP #$20                ; $27:BFCD: E2 20
LDA $D8                 ; $27:BFCF: A5 D8
AND #$01                ; $27:BFD1: 29 01
STA $0A20,y             ; $27:BFD3: 99 20 0A
SEP #$10                ; $27:BFD6: E2 10
LDX $9B                 ; $27:BFD8: A6 9B
RTS                     ; $27:BFDA: 60

CODE_27BFDB:
LDX #$01                ; $27:BFDB: A2 01

CODE_27BFDD:
STX $9B                 ; $27:BFDD: 86 9B
JSR CODE_27BFE6         ; $27:BFDF: 20 E6 BF
DEX                     ; $27:BFE2: CA
BPL CODE_27BFDD         ; $27:BFE3: 10 F8

CODE_27BFE5:
RTS                     ; $27:BFE5: 60

CODE_27BFE6:
LDA $1F9C,x             ; $27:BFE6: BD 9C 1F
BEQ CODE_27BFE5         ; $27:BFE9: F0 FA
CMP #$02                ; $27:BFEB: C9 02
BEQ CODE_27BFF2         ; $27:BFED: F0 03
JMP CODE_27C1CC         ; $27:BFEF: 4C CC C1

CODE_27BFF2:
LDA $9C                 ; $27:BFF2: A5 9C
BNE CODE_27BFFF         ; $27:BFF4: D0 09
LDA $15                 ; $27:BFF6: A5 15
AND #$03                ; $27:BFF8: 29 03
BNE CODE_27BFFF         ; $27:BFFA: D0 03
INC $1FA5,x             ; $27:BFFC: FE A5 1F

CODE_27BFFF:
LDA $1FB1,x             ; $27:BFFF: BD B1 1F
STA $01                 ; $27:C002: 85 01
LDA $1F9F,x             ; $27:C004: BD 9F 1F
STA $00                 ; $27:C007: 85 00
REP #$20                ; $27:C009: C2 20
LDA $0780               ; $27:C00B: AD 80 07
AND #$00FF              ; $27:C00E: 29 FF 00
CMP #$0080              ; $27:C011: C9 80 00
BCC CODE_27C019         ; $27:C014: 90 03
ORA #$FF00              ; $27:C016: 09 00 FF

CODE_27C019:
STA $02                 ; $27:C019: 85 02
LDA $1FA5,x             ; $27:C01B: BD A5 1F
AND #$00FF              ; $27:C01E: 29 FF 00
CMP #$0080              ; $27:C021: C9 80 00
BCC CODE_27C029         ; $27:C024: 90 03
ORA #$FF00              ; $27:C026: 09 00 FF

CODE_27C029:
STA $D8                 ; $27:C029: 85 D8
LDA $9C                 ; $27:C02B: A5 9C
AND #$00FF              ; $27:C02D: 29 FF 00
BEQ CODE_27C037         ; $27:C030: F0 05
LDA #$0000              ; $27:C032: A9 00 00
BRA CODE_27C039         ; $27:C035: 80 02

CODE_27C037:
LDA $D8                 ; $27:C037: A5 D8

CODE_27C039:
CLC                     ; $27:C039: 18
ADC $00                 ; $27:C03A: 65 00
SEC                     ; $27:C03C: 38
SBC $02                 ; $27:C03D: E5 02
STA $00                 ; $27:C03F: 85 00
CLC                     ; $27:C041: 18
ADC #$0010              ; $27:C042: 69 10 00
STA $04                 ; $27:C045: 85 04
SEP #$20                ; $27:C047: E2 20
LDA $00                 ; $27:C049: A5 00
STA $1F9F,x             ; $27:C04B: 9D 9F 1F
LDA $01                 ; $27:C04E: A5 01
STA $1FB1,x             ; $27:C050: 9D B1 1F
LDA $05                 ; $27:C053: A5 05
BEQ CODE_27C060         ; $27:C055: F0 09
LDA $1FAE,x             ; $27:C057: BD AE 1F
AND #$08                ; $27:C05A: 29 08
BNE CODE_27C06F         ; $27:C05C: D0 11
BRA CODE_27C067         ; $27:C05E: 80 07

CODE_27C060:
LDA $1FAE,x             ; $27:C060: BD AE 1F
AND #$08                ; $27:C063: 29 08
BEQ CODE_27C06F         ; $27:C065: F0 08

CODE_27C067:
LDA $1FAE,x             ; $27:C067: BD AE 1F
EOR #$08                ; $27:C06A: 49 08
STA $1FAE,x             ; $27:C06C: 9D AE 1F

CODE_27C06F:
LDA $9C                 ; $27:C06F: A5 9C
BNE CODE_27C076         ; $27:C071: D0 03
INC $1FA8,x             ; $27:C073: FE A8 1F

CODE_27C076:
LDA $1FAB,x             ; $27:C076: BD AB 1F
STA $00                 ; $27:C079: 85 00
LDA $DF,x               ; $27:C07B: B5 DF
STA $01                 ; $27:C07D: 85 01
REP #$20                ; $27:C07F: C2 20
LDA $9C                 ; $27:C081: A5 9C
AND #$00FF              ; $27:C083: 29 FF 00
BEQ CODE_27C08D         ; $27:C086: F0 05
LDA #$0000              ; $27:C088: A9 00 00
BRA CODE_27C093         ; $27:C08B: 80 06

CODE_27C08D:
LDA $D8                 ; $27:C08D: A5 D8
CLC                     ; $27:C08F: 18
ADC #$0002              ; $27:C090: 69 02 00

CODE_27C093:
CLC                     ; $27:C093: 18
ADC $00                 ; $27:C094: 65 00
SEC                     ; $27:C096: 38
SBC $02                 ; $27:C097: E5 02
STA $00                 ; $27:C099: 85 00
CLC                     ; $27:C09B: 18
ADC #$0010              ; $27:C09C: 69 10 00
STA $04                 ; $27:C09F: 85 04
SEP #$20                ; $27:C0A1: E2 20
LDA $00                 ; $27:C0A3: A5 00
STA $1FAB,x             ; $27:C0A5: 9D AB 1F
LDA $01                 ; $27:C0A8: A5 01
STA $DF,x               ; $27:C0AA: 95 DF
LDA $05                 ; $27:C0AC: A5 05
BEQ CODE_27C0B9         ; $27:C0AE: F0 09
LDA $1FAE,x             ; $27:C0B0: BD AE 1F
AND #$04                ; $27:C0B3: 29 04
BNE CODE_27C0C8         ; $27:C0B5: D0 11
BRA CODE_27C0C0         ; $27:C0B7: 80 07

CODE_27C0B9:
LDA $1FAE,x             ; $27:C0B9: BD AE 1F
AND #$04                ; $27:C0BC: 29 04
BEQ CODE_27C0C8         ; $27:C0BE: F0 08

CODE_27C0C0:
LDA $1FAE,x             ; $27:C0C0: BD AE 1F
EOR #$04                ; $27:C0C3: 49 04
STA $1FAE,x             ; $27:C0C5: 9D AE 1F

CODE_27C0C8:
STZ $DD                 ; $27:C0C8: 64 DD
LDA $0781               ; $27:C0CA: AD 81 07
STA $DC                 ; $27:C0CD: 85 DC
BPL CODE_27C0D3         ; $27:C0CF: 10 02
DEC $DD                 ; $27:C0D1: C6 DD

CODE_27C0D3:
LDA $02AE,x             ; $27:C0D3: BD AE 02
XBA                     ; $27:C0D6: EB
LDA $1FA2,x             ; $27:C0D7: BD A2 1F
REP #$20                ; $27:C0DA: C2 20
SEC                     ; $27:C0DC: 38
SBC $DC                 ; $27:C0DD: E5 DC
SEP #$20                ; $27:C0DF: E2 20
STA $1FA2,x             ; $27:C0E1: 9D A2 1F
XBA                     ; $27:C0E4: EB
STA $02AE,x             ; $27:C0E5: 9D AE 02
JSR CODE_27D788         ; $27:C0E8: 20 88 D7
BCC CODE_27C0EE         ; $27:C0EB: 90 01
RTS                     ; $27:C0ED: 60

CODE_27C0EE:
LDA $1FAE,x             ; $27:C0EE: BD AE 1F
STA $03                 ; $27:C0F1: 85 03
CMP #$0C                ; $27:C0F3: C9 0C
BCC CODE_27C101         ; $27:C0F5: 90 0A
LDA $1FB1,x             ; $27:C0F7: BD B1 1F
CMP #$01                ; $27:C0FA: C9 01
BNE CODE_27C101         ; $27:C0FC: D0 03
JMP CODE_27C1C6         ; $27:C0FE: 4C C6 C1

CODE_27C101:
LDA $03                 ; $27:C101: A5 03
AND #$08                ; $27:C103: 29 08
BNE CODE_27C110         ; $27:C105: D0 09
LDA $1F9F,x             ; $27:C107: BD 9F 1F
STA $0801,y             ; $27:C10A: 99 01 08
STA $0805,y             ; $27:C10D: 99 05 08

CODE_27C110:
LDA $03                 ; $27:C110: A5 03
AND #$04                ; $27:C112: 29 04
BNE CODE_27C11F         ; $27:C114: D0 09
LDA $1FAB,x             ; $27:C116: BD AB 1F
STA $0809,y             ; $27:C119: 99 09 08
STA $080D,y             ; $27:C11C: 99 0D 08

CODE_27C11F:
LSR $03                 ; $27:C11F: 46 03
BCC CODE_27C12B         ; $27:C121: 90 08
LDA #$F0                ; $27:C123: A9 F0
STA $0801,y             ; $27:C125: 99 01 08
STA $0809,y             ; $27:C128: 99 09 08

CODE_27C12B:
LSR $03                 ; $27:C12B: 46 03
BCC CODE_27C137         ; $27:C12D: 90 08
LDA #$F0                ; $27:C12F: A9 F0
STA $0805,y             ; $27:C131: 99 05 08
STA $080D,y             ; $27:C134: 99 0D 08

CODE_27C137:
STZ $DD                 ; $27:C137: 64 DD
LDA $1FA8,x             ; $27:C139: BD A8 1F
STA $DC                 ; $27:C13C: 85 DC
LDA $02AE,x             ; $27:C13E: BD AE 02
XBA                     ; $27:C141: EB
LDA $1FA2,x             ; $27:C142: BD A2 1F
REP #$20                ; $27:C145: C2 20
CLC                     ; $27:C147: 18
ADC $DC                 ; $27:C148: 65 DC
CLC                     ; $27:C14A: 18
ADC #$0008              ; $27:C14B: 69 08 00
STA $DA                 ; $27:C14E: 85 DA
SEP #$20                ; $27:C150: E2 20
STA $0800,y             ; $27:C152: 99 00 08
STA $0808,y             ; $27:C155: 99 08 08
LDA $DB                 ; $27:C158: A5 DB
BEQ CODE_27C164         ; $27:C15A: F0 08
LDA $1FAE,x             ; $27:C15C: BD AE 1F
ORA #$01                ; $27:C15F: 09 01
STA $1FAE,x             ; $27:C161: 9D AE 1F

CODE_27C164:
LDA $02AE,x             ; $27:C164: BD AE 02
XBA                     ; $27:C167: EB
LDA $1FA2,x             ; $27:C168: BD A2 1F
REP #$20                ; $27:C16B: C2 20
SEC                     ; $27:C16D: 38
SBC $DC                 ; $27:C16E: E5 DC
STA $DC                 ; $27:C170: 85 DC
SEP #$20                ; $27:C172: E2 20
STA $0804,y             ; $27:C174: 99 04 08
STA $080C,y             ; $27:C177: 99 0C 08
LDA $DD                 ; $27:C17A: A5 DD
BEQ CODE_27C186         ; $27:C17C: F0 08
LDA $1FAE,x             ; $27:C17E: BD AE 1F
ORA #$02                ; $27:C181: 09 02
STA $1FAE,x             ; $27:C183: 9D AE 1F

CODE_27C186:
LDA $0565               ; $27:C186: AD 65 05
AND #$06                ; $27:C189: 29 06
LSR A                   ; $27:C18B: 4A
LSR A                   ; $27:C18C: 4A
ROR A                   ; $27:C18D: 6A
ROR A                   ; $27:C18E: 6A
ORA #$20                ; $27:C18F: 09 20
STA $0803,y             ; $27:C191: 99 03 08
STA $0807,y             ; $27:C194: 99 07 08
STA $080B,y             ; $27:C197: 99 0B 08
STA $080F,y             ; $27:C19A: 99 0F 08
LDA #$4A                ; $27:C19D: A9 4A
STA $0802,y             ; $27:C19F: 99 02 08
STA $0806,y             ; $27:C1A2: 99 06 08
STA $080A,y             ; $27:C1A5: 99 0A 08
STA $080E,y             ; $27:C1A8: 99 0E 08
PHY                     ; $27:C1AB: 5A
TYA                     ; $27:C1AC: 98
LSR A                   ; $27:C1AD: 4A
LSR A                   ; $27:C1AE: 4A
TAY                     ; $27:C1AF: A8
LDA $DB                 ; $27:C1B0: A5 DB
AND #$01                ; $27:C1B2: 29 01
STA $0A20,y             ; $27:C1B4: 99 20 0A
STA $0A22,y             ; $27:C1B7: 99 22 0A
LDA $DD                 ; $27:C1BA: A5 DD
AND #$01                ; $27:C1BC: 29 01
STA $0A21,y             ; $27:C1BE: 99 21 0A
STA $0A23,y             ; $27:C1C1: 99 23 0A
PLY                     ; $27:C1C4: 7A

CODE_27C1C5:
RTS                     ; $27:C1C5: 60

CODE_27C1C6:
LDA #$00                ; $27:C1C6: A9 00
STA $1F9C,x             ; $27:C1C8: 9D 9C 1F
RTS                     ; $27:C1CB: 60

CODE_27C1CC:
LDA $1FAE,x             ; $27:C1CC: BD AE 1F
BEQ CODE_27C1C6         ; $27:C1CF: F0 F5
LDA $9C                 ; $27:C1D1: A5 9C
BNE CODE_27C1D8         ; $27:C1D3: D0 03
DEC $1FAE,x             ; $27:C1D5: DE AE 1F

CODE_27C1D8:
LDA $1F9F,x             ; $27:C1D8: BD 9F 1F
LDY $05FC               ; $27:C1DB: AC FC 05
BNE CODE_27C1E7         ; $27:C1DE: D0 07
SEC                     ; $27:C1E0: 38
SBC $0780               ; $27:C1E1: ED 80 07
STA $1F9F,x             ; $27:C1E4: 9D 9F 1F

CODE_27C1E7:
CMP #$D0                ; $27:C1E7: C9 D0
BCS CODE_27C1C6         ; $27:C1E9: B0 DB
CPY #$00                ; $27:C1EB: C0 00
BNE CODE_27C1F9         ; $27:C1ED: D0 0A
LDA $1FA2,x             ; $27:C1EF: BD A2 1F
SEC                     ; $27:C1F2: 38
SBC $0781               ; $27:C1F3: ED 81 07
STA $1FA2,x             ; $27:C1F6: 9D A2 1F

CODE_27C1F9:
CMP #$F0                ; $27:C1F9: C9 F0
BCS CODE_27C1C6         ; $27:C1FB: B0 C9
TXA                     ; $27:C1FD: 8A
EOR $15                 ; $27:C1FE: 45 15
AND #$01                ; $27:C200: 29 01
TAY                     ; $27:C202: A8
LDA.w DATA_21C77C,y     ; $27:C203: B9 7C C7
TAY                     ; $27:C206: A8
LDA $0801,y             ; $27:C207: B9 01 08
CMP #$F0                ; $27:C20A: C9 F0
BNE CODE_27C1C5         ; $27:C20C: D0 B7
LDA $1FA2,x             ; $27:C20E: BD A2 1F
STA $0800,y             ; $27:C211: 99 00 08
STA $0808,y             ; $27:C214: 99 08 08
CLC                     ; $27:C217: 18
ADC #$08                ; $27:C218: 69 08
STA $0804,y             ; $27:C21A: 99 04 08
STA $080C,y             ; $27:C21D: 99 0C 08
LDA $1F9F,x             ; $27:C220: BD 9F 1F
STA $0801,y             ; $27:C223: 99 01 08
STA $0805,y             ; $27:C226: 99 05 08
CLC                     ; $27:C229: 18
ADC #$08                ; $27:C22A: 69 08
STA $0809,y             ; $27:C22C: 99 09 08
STA $080D,y             ; $27:C22F: 99 0D 08
LDA $0565               ; $27:C232: AD 65 05
LSR A                   ; $27:C235: 4A
LSR A                   ; $27:C236: 4A
LSR A                   ; $27:C237: 4A
ROR A                   ; $27:C238: 6A
AND #$80                ; $27:C239: 29 80
STA $00                 ; $27:C23B: 85 00
LDA #$22                ; $27:C23D: A9 22
ORA $00                 ; $27:C23F: 05 00
STA $0803,y             ; $27:C241: 99 03 08
STA $080B,y             ; $27:C244: 99 0B 08
EOR #$C0                ; $27:C247: 49 C0
STA $0807,y             ; $27:C249: 99 07 08
STA $080F,y             ; $27:C24C: 99 0F 08
LDA $1FAE,x             ; $27:C24F: BD AE 1F
LSR A                   ; $27:C252: 4A
LSR A                   ; $27:C253: 4A
LSR A                   ; $27:C254: 4A
TAX                     ; $27:C255: AA
LDA.w DATA_21C836,x     ; $27:C256: BD 36 C8
STA $D8                 ; $27:C259: 85 D8
INC A                   ; $27:C25B: 1A
STA $D9                 ; $27:C25C: 85 D9
LDA $0803,y             ; $27:C25E: B9 03 08
AND #$80                ; $27:C261: 29 80
BEQ CODE_27C26F         ; $27:C263: F0 0A
LDA $D8                 ; $27:C265: A5 D8
PHA                     ; $27:C267: 48
LDA $D9                 ; $27:C268: A5 D9
STA $D8                 ; $27:C26A: 85 D8
PLA                     ; $27:C26C: 68
STA $D9                 ; $27:C26D: 85 D9

CODE_27C26F:
LDA $D8                 ; $27:C26F: A5 D8
STA $0802,y             ; $27:C271: 99 02 08
STA $080E,y             ; $27:C274: 99 0E 08
LDA $D9                 ; $27:C277: A5 D9
STA $080A,y             ; $27:C279: 99 0A 08
STA $0806,y             ; $27:C27C: 99 06 08
TYA                     ; $27:C27F: 98
LSR A                   ; $27:C280: 4A
LSR A                   ; $27:C281: 4A
TAY                     ; $27:C282: A8
LDA #$00                ; $27:C283: A9 00
STA $0A20,y             ; $27:C285: 99 20 0A
STA $0A21,y             ; $27:C288: 99 21 0A
STA $0A22,y             ; $27:C28B: 99 22 0A
STA $0A23,y             ; $27:C28E: 99 23 0A
LDX $9B                 ; $27:C291: A6 9B
RTS                     ; $27:C293: 60

CODE_27C294:
LDX #$03                ; $27:C294: A2 03

CODE_27C296:
STX $9B                 ; $27:C296: 86 9B
LDA $1FB4,x             ; $27:C298: BD B4 1F
BEQ CODE_27C2A0         ; $27:C29B: F0 03
JSR CODE_27C2A4         ; $27:C29D: 20 A4 C2

CODE_27C2A0:
DEX                     ; $27:C2A0: CA
BPL CODE_27C296         ; $27:C2A1: 10 F3
RTS                     ; $27:C2A3: 60

CODE_27C2A4:
LDA $9C                 ; $27:C2A4: A5 9C
BNE CODE_27C30B         ; $27:C2A6: D0 63
LDA $1FC0,x             ; $27:C2A8: BD C0 1F
CMP #$05                ; $27:C2AB: C9 05
BEQ CODE_27C2E2         ; $27:C2AD: F0 33
INC $1FC4,x             ; $27:C2AF: FE C4 1F
LDA $1FB8,x             ; $27:C2B2: BD B8 1F
CLC                     ; $27:C2B5: 18
ADC $1FC0,x             ; $27:C2B6: 7D C0 1F
STA $1FB8,x             ; $27:C2B9: 9D B8 1F
LDA $1FC4,x             ; $27:C2BC: BD C4 1F
AND #$03                ; $27:C2BF: 29 03
BNE CODE_27C2E2         ; $27:C2C1: D0 1F
INC $1FC0,x             ; $27:C2C3: FE C0 1F
LDA $1FC0,x             ; $27:C2C6: BD C0 1F
CMP #$05                ; $27:C2C9: C9 05
BNE CODE_27C2E2         ; $27:C2CB: D0 15
LDA $1FB8,x             ; $27:C2CD: BD B8 1F
STA $7FC52E,x           ; $27:C2D0: 9F 2E C5 7F
STZ $1FC4,x             ; $27:C2D4: 9E C4 1F
LDA $1FB4,x             ; $27:C2D7: BD B4 1F
PHA                     ; $27:C2DA: 48
JSR CODE_27C412         ; $27:C2DB: 20 12 C4
PLA                     ; $27:C2DE: 68
STA $1FB4,x             ; $27:C2DF: 9D B4 1F

CODE_27C2E2:
LDA $0781               ; $27:C2E2: AD 81 07
STA $D8                 ; $27:C2E5: 85 D8
STZ $D9                 ; $27:C2E7: 64 D9
CMP #$80                ; $27:C2E9: C9 80
BCC CODE_27C2EF         ; $27:C2EB: 90 02
DEC $D9                 ; $27:C2ED: C6 D9

CODE_27C2EF:
LDA $024C,x             ; $27:C2EF: BD 4C 02
XBA                     ; $27:C2F2: EB
LDA $1FBC,x             ; $27:C2F3: BD BC 1F
REP #$20                ; $27:C2F6: C2 20
SEC                     ; $27:C2F8: 38
SBC $D8                 ; $27:C2F9: E5 D8
SEP #$20                ; $27:C2FB: E2 20
STA $1FBC,x             ; $27:C2FD: 9D BC 1F
XBA                     ; $27:C300: EB
STA $024C,x             ; $27:C301: 9D 4C 02
LDA $1FBC,x             ; $27:C304: BD BC 1F
CMP #$F8                ; $27:C307: C9 F8
BCS CODE_27C327         ; $27:C309: B0 1C

CODE_27C30B:
LDA $1FC0,x             ; $27:C30B: BD C0 1F
CMP #$05                ; $27:C30E: C9 05
BNE CODE_27C315         ; $27:C310: D0 03
BRL CODE_27C39B         ; $27:C312: 82 86 00

CODE_27C315:
LDA $9C                 ; $27:C315: A5 9C
BEQ CODE_27C32A         ; $27:C317: F0 11
LDA $1FB8,x             ; $27:C319: BD B8 1F
SEC                     ; $27:C31C: 38
SBC $0780               ; $27:C31D: ED 80 07
STA $1FB8,x             ; $27:C320: 9D B8 1F
CMP #$C5                ; $27:C323: C9 C5
BCC CODE_27C32A         ; $27:C325: 90 03

CODE_27C327:
BRL CODE_27C43C         ; $27:C327: 82 12 01

CODE_27C32A:
JSL CODE_27A19D         ; $27:C32A: 22 9D A1 27
REP #$10                ; $27:C32E: C2 10
LDY $C6,x               ; $27:C330: B4 C6
LDA $1FB8,x             ; $27:C332: BD B8 1F
CMP #$A8                ; $27:C335: C9 A8
BCC CODE_27C33B         ; $27:C337: 90 02
LDA #$F0                ; $27:C339: A9 F0

CODE_27C33B:
STA $0801,y             ; $27:C33B: 99 01 08
CLC                     ; $27:C33E: 18
ADC #$08                ; $27:C33F: 69 08
STA $0805,y             ; $27:C341: 99 05 08
LDA $1FBC,x             ; $27:C344: BD BC 1F
STA $0800,y             ; $27:C347: 99 00 08
STA $0804,y             ; $27:C34A: 99 04 08
LDA $024C,x             ; $27:C34D: BD 4C 02
STA $D8                 ; $27:C350: 85 D8
REP #$20                ; $27:C352: C2 20
LDA $1FC4,x             ; $27:C354: BD C4 1F
LSR A                   ; $27:C357: 4A
LSR A                   ; $27:C358: 4A
AND #$0003              ; $27:C359: 29 03 00
TAX                     ; $27:C35C: AA
SEP #$20                ; $27:C35D: E2 20
LDA.w DATA_21C77E,x     ; $27:C35F: BD 7E C7
STA $0802,y             ; $27:C362: 99 02 08
INC A                   ; $27:C365: 1A
STA $0806,y             ; $27:C366: 99 06 08
LDA.w DATA_21C782,x     ; $27:C369: BD 82 C7
STA $0803,y             ; $27:C36C: 99 03 08
STA $0807,y             ; $27:C36F: 99 07 08
PHY                     ; $27:C372: 5A
REP #$20                ; $27:C373: C2 20
TYA                     ; $27:C375: 98
LSR A                   ; $27:C376: 4A
LSR A                   ; $27:C377: 4A
TAY                     ; $27:C378: A8
SEP #$20                ; $27:C379: E2 20
LDA $D8                 ; $27:C37B: A5 D8
AND #$01                ; $27:C37D: 29 01
STA $0A20,y             ; $27:C37F: 99 20 0A
STA $0A21,y             ; $27:C382: 99 21 0A
PLY                     ; $27:C385: 7A
SEP #$10                ; $27:C386: E2 10
LDX $9B                 ; $27:C388: A6 9B
RTS                     ; $27:C38A: 60

DATA_27C38B:
db $E0,$E0,$E0,$E0,$E2,$E2,$E2,$E2
db $E4,$E4,$E4,$E4,$E4,$E4,$E4,$E4

CODE_27C39B:
LDA $9C                 ; $27:C39B: A5 9C
BEQ CODE_27C3B2         ; $27:C39D: F0 13
LDA $7FC52E,x           ; $27:C39F: BF 2E C5 7F
SEC                     ; $27:C3A3: 38
SBC $0780               ; $27:C3A4: ED 80 07
STA $7FC52E,x           ; $27:C3A7: 9F 2E C5 7F
CMP #$C5                ; $27:C3AB: C9 C5
BCC CODE_27C3B2         ; $27:C3AD: 90 03
BRL CODE_27C43C         ; $27:C3AF: 82 8A 00

CODE_27C3B2:
JSL CODE_27A19D         ; $27:C3B2: 22 9D A1 27
REP #$10                ; $27:C3B6: C2 10
LDY $C6,x               ; $27:C3B8: B4 C6
LDA $7FC52E,x           ; $27:C3BA: BF 2E C5 7F
STA $0801,y             ; $27:C3BE: 99 01 08
LDA $024C,x             ; $27:C3C1: BD 4C 02
XBA                     ; $27:C3C4: EB
LDA $1FBC,x             ; $27:C3C5: BD BC 1F
REP #$20                ; $27:C3C8: C2 20
CLC                     ; $27:C3CA: 18
ADC #$FFFC              ; $27:C3CB: 69 FC FF
SEP #$20                ; $27:C3CE: E2 20
STA $0800,y             ; $27:C3D0: 99 00 08
STA $0804,y             ; $27:C3D3: 99 04 08
XBA                     ; $27:C3D6: EB
STA $D8                 ; $27:C3D7: 85 D8
REP #$20                ; $27:C3D9: C2 20
LDA $1FC4,x             ; $27:C3DB: BD C4 1F
AND #$000F              ; $27:C3DE: 29 0F 00
TAX                     ; $27:C3E1: AA
SEP #$20                ; $27:C3E2: E2 20
LDA.l DATA_27C38B,x     ; $27:C3E4: BF 8B C3 27
STA $0802,y             ; $27:C3E8: 99 02 08
LDA #$21                ; $27:C3EB: A9 21
STA $0803,y             ; $27:C3ED: 99 03 08
PHY                     ; $27:C3F0: 5A
REP #$20                ; $27:C3F1: C2 20
TYA                     ; $27:C3F3: 98
LSR A                   ; $27:C3F4: 4A
LSR A                   ; $27:C3F5: 4A
TAY                     ; $27:C3F6: A8
SEP #$20                ; $27:C3F7: E2 20
LDA $D8                 ; $27:C3F9: A5 D8
AND #$01                ; $27:C3FB: 29 01
ORA #$02                ; $27:C3FD: 09 02
STA $0A20,y             ; $27:C3FF: 99 20 0A
PLY                     ; $27:C402: 7A
SEP #$10                ; $27:C403: E2 10
LDX $9B                 ; $27:C405: A6 9B
INC $1FC4,x             ; $27:C407: FE C4 1F
LDA $1FC4,x             ; $27:C40A: BD C4 1F
AND #$0F                ; $27:C40D: 29 0F
BEQ CODE_27C43C         ; $27:C40F: F0 2B
RTS                     ; $27:C411: 60

CODE_27C412:
JSR CODE_278ADB         ; $27:C412: 20 DB 8A
LDA #$85                ; $27:C415: A9 85
STA $079F,y             ; $27:C417: 99 9F 07
LDA #$30                ; $27:C41A: A9 30
STA $07A4,y             ; $27:C41C: 99 A4 07
LDA $1FB8,x             ; $27:C41F: BD B8 1F
CMP #$C0                ; $27:C422: C9 C0
BCC CODE_27C428         ; $27:C424: 90 02
LDA #$05                ; $27:C426: A9 05

CODE_27C428:
STA $07A9,y             ; $27:C428: 99 A9 07
LDA $1FBC,x             ; $27:C42B: BD BC 1F
SEC                     ; $27:C42E: 38
SBC #$04                ; $27:C42F: E9 04
STA $07AE,y             ; $27:C431: 99 AE 07
LDA $024C,x             ; $27:C434: BD 4C 02
SBC #$00                ; $27:C437: E9 00
STA $0251,y             ; $27:C439: 99 51 02

CODE_27C43C:
LDA #$00                ; $27:C43C: A9 00
STA $1FB4,x             ; $27:C43E: 9D B4 1F
RTS                     ; $27:C441: 60

CODE_27C442:
LDA #$01                ; $27:C442: A9 01
STA $1A68,x             ; $27:C444: 9D 68 1A
LDA $05BF,x             ; $27:C447: BD BF 05
CLC                     ; $27:C44A: 18
ADC #$0C                ; $27:C44B: 69 0C
STA $05                 ; $27:C44D: 85 05
AND #$F0                ; $27:C44F: 29 F0
STA $02                 ; $27:C451: 85 02
LDA $1FD7,x             ; $27:C453: BD D7 1F
ADC #$00                ; $27:C456: 69 00
PHA                     ; $27:C458: 48
LDA $05C9,x             ; $27:C459: BD C9 05
CLC                     ; $27:C45C: 18
ADC #$04                ; $27:C45D: 69 04
SEC                     ; $27:C45F: 38
SBC $0210               ; $27:C460: ED 10 02
CLC                     ; $27:C463: 18
ADC $0210               ; $27:C464: 6D 10 02
STA $04                 ; $27:C467: 85 04
PLA                     ; $27:C469: 68
STA $01                 ; $27:C46A: 85 01
PHX                     ; $27:C46C: DA
LDA $12                 ; $27:C46D: A5 12
ADC #$00                ; $27:C46F: 69 00
ASL A                   ; $27:C471: 0A
TAX                     ; $27:C472: AA
LDA.l DATA_218200,x     ; $27:C473: BF 00 82 21
STA $00                 ; $27:C477: 85 00
STA $DB                 ; $27:C479: 85 DB
LDA $01                 ; $27:C47B: A5 01
AND #$01                ; $27:C47D: 29 01
CLC                     ; $27:C47F: 18
ADC.l DATA_218200+1,x   ; $27:C480: 7F 01 82 21
STA $01                 ; $27:C484: 85 01
CLC                     ; $27:C486: 18
ADC #$20                ; $27:C487: 69 20
STA $DC                 ; $27:C489: 85 DC
PLX                     ; $27:C48B: FA
LDA $04                 ; $27:C48C: A5 04
LSR A                   ; $27:C48E: 4A
LSR A                   ; $27:C48F: 4A
LSR A                   ; $27:C490: 4A
LSR A                   ; $27:C491: 4A
ORA $02                 ; $27:C492: 05 02
TAY                     ; $27:C494: A8
LDA #$7E                ; $27:C495: A9 7E
STA $02                 ; $27:C497: 85 02
STA $DD                 ; $27:C499: 85 DD
LDA [$DB],y             ; $27:C49B: B7 DB
BEQ CODE_27C4B7         ; $27:C49D: F0 18
PHX                     ; $27:C49F: DA
LDA $070A               ; $27:C4A0: AD 0A 07
ASL A                   ; $27:C4A3: 0A
TAX                     ; $27:C4A4: AA
LDA.w DATA_21AB57,x     ; $27:C4A5: BD 57 AB
STA $DB                 ; $27:C4A8: 85 DB
LDA.w DATA_21AB57+1,x   ; $27:C4AA: BD 58 AB
STA $DC                 ; $27:C4AD: 85 DC
LDA [$00],y             ; $27:C4AF: B7 00
TAY                     ; $27:C4B1: A8
LDA ($DB),y             ; $27:C4B2: B1 DB
PLX                     ; $27:C4B4: FA
BRA CODE_27C4B9         ; $27:C4B5: 80 02

CODE_27C4B7:
LDA [$00],y             ; $27:C4B7: B7 00

CODE_27C4B9:
PHA                     ; $27:C4B9: 48
ASL A                   ; $27:C4BA: 0A
ROL A                   ; $27:C4BB: 2A
ROL A                   ; $27:C4BC: 2A
AND #$03                ; $27:C4BD: 29 03
TAY                     ; $27:C4BF: A8
STY $01                 ; $27:C4C0: 84 01
PLA                     ; $27:C4C2: 68
STA $00                 ; $27:C4C3: 85 00
CMP $1E96,y             ; $27:C4C5: D9 96 1E
BCC CODE_27C505         ; $27:C4C8: 90 3B
CMP $1E9A,y             ; $27:C4CA: D9 9A 1E
BCC CODE_27C4F4         ; $27:C4CD: 90 25
LDA $1FC8,x             ; $27:C4CF: BD C8 1F
CMP #$0C                ; $27:C4D2: C9 0C
BEQ CODE_27C4D8         ; $27:C4D4: F0 02
SEC                     ; $27:C4D6: 38
RTS                     ; $27:C4D7: 60

CODE_27C4D8:
INC $06C7,x             ; $27:C4D8: FE C7 06
LDA $06C7,x             ; $27:C4DB: BD C7 06
CMP #$02                ; $27:C4DE: C9 02
BNE CODE_27C4E5         ; $27:C4E0: D0 03
JMP CODE_27C527         ; $27:C4E2: 4C 27 C5

CODE_27C4E5:
DEC $05BF,x             ; $27:C4E5: DE BF 05
DEC $05BF,x             ; $27:C4E8: DE BF 05
DEC $05BF,x             ; $27:C4EB: DE BF 05

CODE_27C4EE:
LDA #$D4                ; $27:C4EE: A9 D4
STA $05D3,x             ; $27:C4F0: 9D D3 05

CODE_27C4F3:
RTS                     ; $27:C4F3: 60

CODE_27C4F4:
LDA $1FC8,x             ; $27:C4F4: BD C8 1F
CMP #$0C                ; $27:C4F7: C9 0C
CLC                     ; $27:C4F9: 18
BNE CODE_27C4F3         ; $27:C4FA: D0 F7
LDA $05                 ; $27:C4FC: A5 05
AND #$0F                ; $27:C4FE: 29 0F
CMP #$05                ; $27:C500: C9 05
BCC CODE_27C4EE         ; $27:C502: 90 EA
RTS                     ; $27:C504: 60

CODE_27C505:
LDA $1FC8,x             ; $27:C505: BD C8 1F
CMP #$14                ; $27:C508: C9 14
CLC                     ; $27:C50A: 18
BNE CODE_27C521         ; $27:C50B: D0 14
LDA $0560               ; $27:C50D: AD 60 05
ASL A                   ; $27:C510: 0A
ASL A                   ; $27:C511: 0A
CLC                     ; $27:C512: 18
ADC $01                 ; $27:C513: 65 01
TAY                     ; $27:C515: A8
LDA.w DATA_21AD84,y     ; $27:C516: B9 84 AD
CMP $00                 ; $27:C519: C5 00
BCC CODE_27C520         ; $27:C51B: 90 03
DEC $1A68,x             ; $27:C51D: DE 68 1A

CODE_27C520:
RTS                     ; $27:C520: 60

CODE_27C521:
LDA #$00                ; $27:C521: A9 00
STA $06C7,x             ; $27:C523: 9D C7 06
RTS                     ; $27:C526: 60

CODE_27C527:
LDA #$01                ; $27:C527: A9 01
STA $1200               ; $27:C529: 8D 00 12
NOP                     ; $27:C52C: EA
NOP                     ; $27:C52D: EA
NOP                     ; $27:C52E: EA
NOP                     ; $27:C52F: EA
NOP                     ; $27:C530: EA
NOP                     ; $27:C531: EA
NOP                     ; $27:C532: EA
JMP CODE_27D38A         ; $27:C533: 4C 8A D3

CODE_27C536:
LDA #$00                ; $27:C536: A9 00
STA $06B6               ; $27:C538: 8D B6 06
LDX #$09                ; $27:C53B: A2 09

CODE_27C53D:
STX $9B                 ; $27:C53D: 86 9B
JSR CODE_27C546         ; $27:C53F: 20 46 C5
DEX                     ; $27:C542: CA
BPL CODE_27C53D         ; $27:C543: 10 F8

CODE_27C545:
RTS                     ; $27:C545: 60

CODE_27C546:
LDA $1FC8,x             ; $27:C546: BD C8 1F
BEQ CODE_27C545         ; $27:C549: F0 FA
LDA $05FE               ; $27:C54B: AD FE 05
BEQ CODE_27C56F         ; $27:C54E: F0 1F
LDA $9C                 ; $27:C550: A5 9C
BNE CODE_27C56F         ; $27:C552: D0 1B
LDA $05C9,x             ; $27:C554: BD C9 05
CLC                     ; $27:C557: 18
ADC $7E3952             ; $27:C558: 6F 52 39 7E
STA $05C9,x             ; $27:C55C: 9D C9 05
LDA $05BF,x             ; $27:C55F: BD BF 05
CLC                     ; $27:C562: 18
ADC $7E3953             ; $27:C563: 6F 53 39 7E
STA $05BF,x             ; $27:C567: 9D BF 05
BCC CODE_27C56F         ; $27:C56A: 90 03
INC $1FD7,x             ; $27:C56C: FE D7 1F

CODE_27C56F:
LDY $9C                 ; $27:C56F: A4 9C
BNE CODE_27C57B         ; $27:C571: D0 08
LDY $06D1,x             ; $27:C573: BC D1 06
BEQ CODE_27C57B         ; $27:C576: F0 03
DEC $06D1,x             ; $27:C578: DE D1 06

CODE_27C57B:
LDA $E2,x               ; $27:C57B: B5 E2
XBA                     ; $27:C57D: EB
LDA $05C9,x             ; $27:C57E: BD C9 05
REP #$20                ; $27:C581: C2 20
SEC                     ; $27:C583: 38
SBC $0210               ; $27:C584: ED 10 02
CMP #$00F8              ; $27:C587: C9 F8 00
BCC CODE_27C595         ; $27:C58A: 90 09
CMP #$FFF8              ; $27:C58C: C9 F8 FF
BCS CODE_27C595         ; $27:C58F: B0 04
SEP #$20                ; $27:C591: E2 20
BRA CODE_27C5D1         ; $27:C593: 80 3C

CODE_27C595:
SEP #$20                ; $27:C595: E2 20
LDA $05BF,x             ; $27:C597: BD BF 05
CLC                     ; $27:C59A: 18
ADC #$14                ; $27:C59B: 69 14
PHA                     ; $27:C59D: 48
LDA $1FD7,x             ; $27:C59E: BD D7 1F
ADC #$00                ; $27:C5A1: 69 00
STA $00                 ; $27:C5A3: 85 00
PLA                     ; $27:C5A5: 68
CMP $0543               ; $27:C5A6: CD 43 05
LDA $00                 ; $27:C5A9: A5 00
SBC $0542               ; $27:C5AB: ED 42 05
STA $0D                 ; $27:C5AE: 85 0D
BEQ CODE_27C5D6         ; $27:C5B0: F0 24
LDA $1FC8,x             ; $27:C5B2: BD C8 1F
CMP #$0E                ; $27:C5B5: C9 0E
BEQ CODE_27C5CD         ; $27:C5B7: F0 14
CMP #$06                ; $27:C5B9: C9 06
BEQ CODE_27C5CD         ; $27:C5BB: F0 10
CMP #$10                ; $27:C5BD: C9 10
BEQ CODE_27C5CD         ; $27:C5BF: F0 0C
CMP #$13                ; $27:C5C1: C9 13
BEQ CODE_27C5CD         ; $27:C5C3: F0 08
CMP #$07                ; $27:C5C5: C9 07
BEQ CODE_27C5CD         ; $27:C5C7: F0 04
CMP #$01                ; $27:C5C9: C9 01
BNE CODE_27C5D1         ; $27:C5CB: D0 04

CODE_27C5CD:
LDA $0D                 ; $27:C5CD: A5 0D
BMI CODE_27C5D6         ; $27:C5CF: 30 05

CODE_27C5D1:
SEP #$20                ; $27:C5D1: E2 20
JMP CODE_27D37F         ; $27:C5D3: 4C 7F D3

; Extended sprites

CODE_27C5D6:
LDA $1FC8,x             ; $27:C5D6: BD C8 1F

; ExecutePtrShort
JSL CODE_20FB1F         ; $27:C5D9: 22 1F FB 20

; $00 - None
dw CODE_27C545

; $01 - Hammer
dw CODE_27D175

; $02 - Boomerang
dw CODE_27D442

; $03 - Boomerang??
dw CODE_27D508

; $04 - Nipper Plant fireball
dw CODE_27D576

; $05 - Venus Fire Trap fireball
dw CODE_27D576

; $06 - Baby Goomba
dw CODE_27D013

; $07 - Ptooie spiked ball (uninteractable)
dw CODE_27CF6B

; $08 -
dw CODE_27CE2B

; $09 -
dw CODE_27CEC9

; $0A - Wrench
dw CODE_27CD7B

; $0B - Cannonball
dw CODE_27CC31

; $0C - Fire Bros. fireball
dw CODE_27D576

; $0D -
dw CODE_27C91B

; $0E -
dw CODE_27CB74

; $0F -
dw CODE_27CAAE

; $10 - Magic Wand
dw CODE_27C995

; $11 - Enemy morphed into coin (at level end when there are enemies present)
dw CODE_27C7A7

; $12 -
dw CODE_27D576

; $13 - Brick shatter
dw CODE_27C7A7

; $14 -
dw CODE_27C6D6

; $15 - Bowser statue laser
dw CODE_27C60F

; $16 - Puff of smoke
dw CODE_27D672

; $17 - Podoboo fire trail
dw CODE_27DFF2

; $18 - Podoboo lava splash
dw CODE_27E05B

; Draw GFX for laser sprite

CODE_27C60F:
JSR CODE_27C67F         ; $27:C60F: 20 7F C6
LDA $9C                 ; $27:C612: A5 9C


BNE CODE_27C65A         ; $27:C614: D0 44
LDA $05BF,x             ; $27:C616: BD BF 05
CLC                     ; $27:C619: 18
ADC #$08                ; $27:C61A: 69 08

; Y position decreases by 8 every frame
STA $05BF,x             ; $27:C61C: 9D BF 05
LDA $E2,x               ; $27:C61F: B5 E2
XBA                     ; $27:C621: EB
LDA $05C9,x             ; $27:C622: BD C9 05
REP #$20                ; $27:C625: C2 20
SEC                     ; $27:C627: 38
SBC #$0008              ; $27:C628: E9 08 00
SEP #$20                ; $27:C62B: E2 20
STA $05C9,x             ; $27:C62D: 9D C9 05
XBA                     ; $27:C630: EB

; X position decreases by 8 every frame
STA $E2,x               ; $27:C631: 95 E2
JSR CODE_27C442         ; $27:C633: 20 42 C4

; Related to detecting solid tile for laser to
; interact with? Return if none found
BCC CODE_27C65A         ; $27:C636: 90 22
LDA $05BF,x             ; $27:C638: BD BF 05
AND #$F0                ; $27:C63B: 29 F0
CLC                     ; $27:C63D: 18
ADC #$05                ; $27:C63E: 69 05

; Prepare smoke image position by altering own position
; (Extended sprite Y position &= 0xF0) + 0x05
STA $05BF,x             ; $27:C640: 9D BF 05
LDA $05C9,x             ; $27:C643: BD C9 05
AND #$F0                ; $27:C646: 29 F0
ADC #$0B                ; $27:C648: 69 0B

; (Extended sprite X position &= 0xF0) + 0x0B
STA $05C9,x             ; $27:C64A: 9D C9 05

; Remove self (store 00 to extended sprite number)
JSR CODE_27D37F         ; $27:C64D: 20 7F D3
LDY #$01                ; $27:C650: A0 01

CODE_27C652:
LDA $1F9C,y             ; $27:C652: B9 9C 1F
BEQ CODE_27C65B         ; $27:C655: F0 04
DEY                     ; $27:C657: 88
BPL CODE_27C652         ; $27:C658: 10 F8

; Search for free slot for smoke image

CODE_27C65A:
RTS                     ; $27:C65A: 60

CODE_27C65B:
LDA #$01                ; $27:C65B: A9 01

; Smoke image = smoke
STA $1F9C,y             ; $27:C65D: 99 9C 1F
LDA $05C9,x             ; $27:C660: BD C9 05
SEC                     ; $27:C663: 38
SBC #$08                ; $27:C664: E9 08
SEC                     ; $27:C666: 38
SBC $0210               ; $27:C667: ED 10 02

; Setup smoke image x position
STA $1FA2,y             ; $27:C66A: 99 A2 1F
LDA $05BF,x             ; $27:C66D: BD BF 05
CLC                     ; $27:C670: 18
ADC #$04                ; $27:C671: 69 04
SBC $0543               ; $27:C673: ED 43 05

; Setu smoke image Y position
STA $1F9F,y             ; $27:C676: 99 9F 1F
LDA #$17                ; $27:C679: A9 17

; How long does the smoke image last.
STA $1FAE,y             ; $27:C67B: 99 AE 1F
RTS                     ; $27:C67E: 60

CODE_27C67F:
JSR CODE_27D728         ; $27:C67F: 20 28 D7
LDA $E2,x               ; $27:C682: B5 E2
XBA                     ; $27:C684: EB
LDA $05C9,x             ; $27:C685: BD C9 05
REP #$30                ; $27:C688: C2 30
SEC                     ; $27:C68A: 38
SBC $0210               ; $27:C68B: ED 10 02
STA $D8                 ; $27:C68E: 85 D8
SEP #$20                ; $27:C690: E2 20
LDY $C6,x               ; $27:C692: B4 C6
JSR CODE_27CE16         ; $27:C694: 20 16 CE
LDA $0800,y             ; $27:C697: B9 00 08
STA $0804,y             ; $27:C69A: 99 04 08
LDA $0801,y             ; $27:C69D: B9 01 08
CLC                     ; $27:C6A0: 18
ADC #$08                ; $27:C6A1: 69 08
STA $0805,y             ; $27:C6A3: 99 05 08
LDA #$4A                ; $27:C6A6: A9 4A
STA $0802,y             ; $27:C6A8: 99 02 08
INC A                   ; $27:C6AB: 1A
STA $0806,y             ; $27:C6AC: 99 06 08
LDA $15                 ; $27:C6AF: A5 15
LSR A                   ; $27:C6B1: 4A
LSR A                   ; $27:C6B2: 4A
AND #$03                ; $27:C6B3: 29 03
ASL A                   ; $27:C6B5: 0A
ORA #$21                ; $27:C6B6: 09 21
STA $0803,y             ; $27:C6B8: 99 03 08
STA $0807,y             ; $27:C6BB: 99 07 08
REP #$20                ; $27:C6BE: C2 20
TYA                     ; $27:C6C0: 98
LSR A                   ; $27:C6C1: 4A
LSR A                   ; $27:C6C2: 4A
TAY                     ; $27:C6C3: A8
SEP #$20                ; $27:C6C4: E2 20
LDA $D9                 ; $27:C6C6: A5 D9
AND #$01                ; $27:C6C8: 29 01
STA $0A20,y             ; $27:C6CA: 99 20 0A
STA $0A21,y             ; $27:C6CD: 99 21 0A
SEP #$10                ; $27:C6D0: E2 10
JMP CODE_27D302         ; $27:C6D2: 4C 02 D3
RTS                     ; $27:C6D5: 60

CODE_27C6D6:
LDA $9C                 ; $27:C6D6: A5 9C
BNE CODE_27C723         ; $27:C6D8: D0 49
LDA $15                 ; $27:C6DA: A5 15
AND #$07                ; $27:C6DC: 29 07
BNE CODE_27C710         ; $27:C6DE: D0 30
LDA $06C7,x             ; $27:C6E0: BD C7 06
AND #$01                ; $27:C6E3: 29 01
TAY                     ; $27:C6E5: A8
LDA $05D3,x             ; $27:C6E6: BD D3 05
CLC                     ; $27:C6E9: 18
ADC.w DATA_21C78E,y     ; $27:C6EA: 79 8E C7
STA $05D3,x             ; $27:C6ED: 9D D3 05
CMP.w DATA_21C790,y     ; $27:C6F0: D9 90 C7
BNE CODE_27C6F8         ; $27:C6F3: D0 03
INC $06C7,x             ; $27:C6F5: FE C7 06

CODE_27C6F8:
LDA $06BD,x             ; $27:C6F8: BD BD 06
AND #$01                ; $27:C6FB: 29 01
TAY                     ; $27:C6FD: A8
LDA $05DD,x             ; $27:C6FE: BD DD 05
CLC                     ; $27:C701: 18
ADC.w DATA_21C78E,y     ; $27:C702: 79 8E C7
STA $05DD,x             ; $27:C705: 9D DD 05
CMP.w DATA_21C790,y     ; $27:C708: D9 90 C7
BNE CODE_27C710         ; $27:C70B: D0 03
INC $06BD,x             ; $27:C70D: FE BD 06

CODE_27C710:
JSR CODE_27D7E3         ; $27:C710: 20 E3 D7
LDA $05D3,x             ; $27:C713: BD D3 05
BPL CODE_27C720         ; $27:C716: 10 08
JSR CODE_27C442         ; $27:C718: 20 42 C4
LDA $1A68,x             ; $27:C71B: BD 68 1A
BEQ CODE_27C723         ; $27:C71E: F0 03

CODE_27C720:
JSR CODE_27D80F         ; $27:C720: 20 0F D8

CODE_27C723:
LDA $06D1,x             ; $27:C723: BD D1 06
BEQ CODE_27C7A4         ; $27:C726: F0 7C
CMP #$30                ; $27:C728: C9 30
BCS CODE_27C730         ; $27:C72A: B0 04
AND #$02                ; $27:C72C: 29 02
BNE CODE_27C7A1         ; $27:C72E: D0 71

CODE_27C730:
JSR CODE_27D728         ; $27:C730: 20 28 D7
LDA $E2,x               ; $27:C733: B5 E2
XBA                     ; $27:C735: EB
LDA $05C9,x             ; $27:C736: BD C9 05
REP #$20                ; $27:C739: C2 20
SEC                     ; $27:C73B: 38
SBC $0210               ; $27:C73C: ED 10 02
STA $D8                 ; $27:C73F: 85 D8
SEP #$20                ; $27:C741: E2 20
REP #$10                ; $27:C743: C2 10
LDY $C6,x               ; $27:C745: B4 C6
JSR CODE_27CE16         ; $27:C747: 20 16 CE
LDA $0800,y             ; $27:C74A: B9 00 08
STA $0804,y             ; $27:C74D: 99 04 08
REP #$20                ; $27:C750: C2 20
LDA $0565               ; $27:C752: AD 65 05
LSR A                   ; $27:C755: 4A
AND #$000F              ; $27:C756: 29 0F 00
TAX                     ; $27:C759: AA
SEP #$20                ; $27:C75A: E2 20
LDA $0801,y             ; $27:C75C: B9 01 08
CLC                     ; $27:C75F: 18
ADC.w DATA_21C792,x     ; $27:C760: 7D 92 C7
STA $0801,y             ; $27:C763: 99 01 08
CLC                     ; $27:C766: 18
ADC #$08                ; $27:C767: 69 08
STA $0805,y             ; $27:C769: 99 05 08
TXA                     ; $27:C76C: 8A
CMP #$08                ; $27:C76D: C9 08
LDA #$B4                ; $27:C76F: A9 B4
BCC CODE_27C775         ; $27:C771: 90 02
LDA #$B6                ; $27:C773: A9 B6

CODE_27C775:
STA $0802,y             ; $27:C775: 99 02 08
INC A                   ; $27:C778: 1A
STA $0806,y             ; $27:C779: 99 06 08
LDA #$2A                ; $27:C77C: A9 2A
STA $0803,y             ; $27:C77E: 99 03 08
STA $0807,y             ; $27:C781: 99 07 08
REP #$20                ; $27:C784: C2 20
TYA                     ; $27:C786: 98
LSR A                   ; $27:C787: 4A
LSR A                   ; $27:C788: 4A
TAY                     ; $27:C789: A8
SEP #$20                ; $27:C78A: E2 20
LDA $D9                 ; $27:C78C: A5 D9
AND #$01                ; $27:C78E: 29 01
STA $0A20,y             ; $27:C790: 99 20 0A
STA $0A21,y             ; $27:C793: 99 21 0A
SEP #$10                ; $27:C796: E2 10
LDX $9B                 ; $27:C798: A6 9B
AND #$01                ; $27:C79A: 29 01
BNE CODE_27C7A1         ; $27:C79C: D0 03
JMP CODE_27D302         ; $27:C79E: 4C 02 D3

CODE_27C7A1:
SEP #$20                ; $27:C7A1: E2 20
RTS                     ; $27:C7A3: 60

CODE_27C7A4:
JMP CODE_27D37F         ; $27:C7A4: 4C 7F D3

CODE_27C7A7:
LDA $9C                 ; $27:C7A7: A5 9C
BNE CODE_27C7CC         ; $27:C7A9: D0 21
INC $06BD,x             ; $27:C7AB: FE BD 06
JSR CODE_27CC1B         ; $27:C7AE: 20 1B CC
LDA $1FC8,x             ; $27:C7B1: BD C8 1F
CMP #$13                ; $27:C7B4: C9 13
BNE CODE_27C7CC         ; $27:C7B6: D0 14
LDA $05D3,x             ; $27:C7B8: BD D3 05
BMI CODE_27C7C1         ; $27:C7BB: 30 04
CMP #$70                ; $27:C7BD: C9 70
BCS CODE_27C7CC         ; $27:C7BF: B0 0B

CODE_27C7C1:
LDA $06C7,x             ; $27:C7C1: BD C7 06
BNE CODE_27C7C9         ; $27:C7C4: D0 03
INC $05D3,x             ; $27:C7C6: FE D3 05

CODE_27C7C9:
INC $05D3,x             ; $27:C7C9: FE D3 05

CODE_27C7CC:
JSR CODE_27D728         ; $27:C7CC: 20 28 D7
LDA $1FD7,x             ; $27:C7CF: BD D7 1F
XBA                     ; $27:C7D2: EB
LDA $05BF,x             ; $27:C7D3: BD BF 05
REP #$20                ; $27:C7D6: C2 20
SEC                     ; $27:C7D8: 38
SBC $0216               ; $27:C7D9: ED 16 02
CMP #$0100              ; $27:C7DC: C9 00 01
BCC CODE_27C7E6         ; $27:C7DF: 90 05
CMP #$FFF0              ; $27:C7E1: C9 F0 FF
BCC CODE_27C7A1         ; $27:C7E4: 90 BB

CODE_27C7E6:
SEP #$20                ; $27:C7E6: E2 20
LDA $1FC8,x             ; $27:C7E8: BD C8 1F
CMP #$13                ; $27:C7EB: C9 13
BEQ CODE_27C7F2         ; $27:C7ED: F0 03
BRL CODE_27C8A1         ; $27:C7EF: 82 AF 00

CODE_27C7F2:
LDA $06C7,x             ; $27:C7F2: BD C7 06
BEQ CODE_27C848         ; $27:C7F5: F0 51
LDA $E2,x               ; $27:C7F7: B5 E2
XBA                     ; $27:C7F9: EB
LDA $05C9,x             ; $27:C7FA: BD C9 05
REP #$30                ; $27:C7FD: C2 30
SEC                     ; $27:C7FF: 38
SBC $0210               ; $27:C800: ED 10 02
STA $D8                 ; $27:C803: 85 D8
SEP #$20                ; $27:C805: E2 20
LDY $C6,x               ; $27:C807: B4 C6
JSR CODE_27CE16         ; $27:C809: 20 16 CE
LDA #$4A                ; $27:C80C: A9 4A
STA $0802,y             ; $27:C80E: 99 02 08
LDA #$06                ; $27:C811: A9 06
STA $00                 ; $27:C813: 85 00
LDA $06D1,x             ; $27:C815: BD D1 06
BEQ CODE_27C826         ; $27:C818: F0 0C
JSL CODE_27AA74         ; $27:C81A: 22 74 AA 27
ASL A                   ; $27:C81E: 0A
STA $00                 ; $27:C81F: 85 00
LDA #$4B                ; $27:C821: A9 4B
STA $0802,y             ; $27:C823: 99 02 08

CODE_27C826:
LDA $0565               ; $27:C826: AD 65 05
ASL A                   ; $27:C829: 0A
ASL A                   ; $27:C82A: 0A
ASL A                   ; $27:C82B: 0A
ASL A                   ; $27:C82C: 0A
AND #$C0                ; $27:C82D: 29 C0
ORA #$20                ; $27:C82F: 09 20
ORA $00                 ; $27:C831: 05 00
STA $0803,y             ; $27:C833: 99 03 08
REP #$20                ; $27:C836: C2 20
TYA                     ; $27:C838: 98
LSR A                   ; $27:C839: 4A
LSR A                   ; $27:C83A: 4A
TAY                     ; $27:C83B: A8
SEP #$20                ; $27:C83C: E2 20
LDA $D9                 ; $27:C83E: A5 D9
AND #$01                ; $27:C840: 29 01
STA $0A20,y             ; $27:C842: 99 20 0A
SEP #$10                ; $27:C845: E2 10
RTS                     ; $27:C847: 60

CODE_27C848:
LDA $E2,x               ; $27:C848: B5 E2
XBA                     ; $27:C84A: EB
LDA $05C9,x             ; $27:C84B: BD C9 05
REP #$30                ; $27:C84E: C2 30
SEC                     ; $27:C850: 38
SBC $0210               ; $27:C851: ED 10 02
STA $D8                 ; $27:C854: 85 D8
CLC                     ; $27:C856: 18
ADC #$0008              ; $27:C857: 69 08 00
STA $DA                 ; $27:C85A: 85 DA
SEP #$20                ; $27:C85C: E2 20
LDY $C6,x               ; $27:C85E: B4 C6
JSR CODE_27CF49         ; $27:C860: 20 49 CF
LDA #$0C                ; $27:C863: A9 0C
STA $0802,y             ; $27:C865: 99 02 08
INC A                   ; $27:C868: 1A
STA $0806,y             ; $27:C869: 99 06 08
INC A                   ; $27:C86C: 1A
STA $080A,y             ; $27:C86D: 99 0A 08
INC A                   ; $27:C870: 1A
STA $080E,y             ; $27:C871: 99 0E 08
LDA #$20                ; $27:C874: A9 20
STA $0803,y             ; $27:C876: 99 03 08
STA $0807,y             ; $27:C879: 99 07 08
STA $080B,y             ; $27:C87C: 99 0B 08
STA $080F,y             ; $27:C87F: 99 0F 08
REP #$20                ; $27:C882: C2 20
TYA                     ; $27:C884: 98
LSR A                   ; $27:C885: 4A
LSR A                   ; $27:C886: 4A
TAY                     ; $27:C887: A8
SEP #$20                ; $27:C888: E2 20
LDA $D9                 ; $27:C88A: A5 D9
AND #$01                ; $27:C88C: 29 01
STA $0A20,y             ; $27:C88E: 99 20 0A
STA $0A21,y             ; $27:C891: 99 21 0A
LDA $DB                 ; $27:C894: A5 DB
AND #$01                ; $27:C896: 29 01
STA $0A22,y             ; $27:C898: 99 22 0A
STA $0A23,y             ; $27:C89B: 99 23 0A
SEP #$10                ; $27:C89E: E2 10
RTS                     ; $27:C8A0: 60

CODE_27C8A1:
LDA $05D3,x             ; $27:C8A1: BD D3 05
CMP #$20                ; $27:C8A4: C9 20
BMI CODE_27C8B6         ; $27:C8A6: 30 0E
JSR CODE_27D37F         ; $27:C8A8: 20 7F D3
INC $0422               ; $27:C8AB: EE 22 04
JSR CODE_278ADB         ; $27:C8AE: 20 DB 8A
LDA #$89                ; $27:C8B1: A9 89
JMP CODE_27CD2B         ; $27:C8B3: 4C 2B CD

CODE_27C8B6:
LDA $E2,x               ; $27:C8B6: B5 E2
XBA                     ; $27:C8B8: EB
LDA $05C9,x             ; $27:C8B9: BD C9 05
REP #$30                ; $27:C8BC: C2 30
SEC                     ; $27:C8BE: 38
SBC $0210               ; $27:C8BF: ED 10 02
CLC                     ; $27:C8C2: 18
ADC #$0004              ; $27:C8C3: 69 04 00
STA $D8                 ; $27:C8C6: 85 D8
SEP #$20                ; $27:C8C8: E2 20
LDY $C6,x               ; $27:C8CA: B4 C6
JSR CODE_27CE16         ; $27:C8CC: 20 16 CE
LDA $0800,y             ; $27:C8CF: B9 00 08
CLC                     ; $27:C8D2: 18
ADC #$04                ; $27:C8D3: 69 04
STA $0800,y             ; $27:C8D5: 99 00 08
STA $0804,y             ; $27:C8D8: 99 04 08
LDA $0801,y             ; $27:C8DB: B9 01 08
CLC                     ; $27:C8DE: 18
ADC #$08                ; $27:C8DF: 69 08
STA $0805,y             ; $27:C8E1: 99 05 08
REP #$20                ; $27:C8E4: C2 20
LDA $06BD,x             ; $27:C8E6: BD BD 06
LSR A                   ; $27:C8E9: 4A
LSR A                   ; $27:C8EA: 4A
AND #$0003              ; $27:C8EB: 29 03 00
TAX                     ; $27:C8EE: AA
SEP #$20                ; $27:C8EF: E2 20
LDA.w DATA_21C786,x     ; $27:C8F1: BD 86 C7
STA $0802,y             ; $27:C8F4: 99 02 08
INC A                   ; $27:C8F7: 1A
STA $0806,y             ; $27:C8F8: 99 06 08
LDA.w DATA_21C78A,x     ; $27:C8FB: BD 8A C7
STA $0803,y             ; $27:C8FE: 99 03 08
STA $0807,y             ; $27:C901: 99 07 08
REP #$20                ; $27:C904: C2 20
TYA                     ; $27:C906: 98
LSR A                   ; $27:C907: 4A
LSR A                   ; $27:C908: 4A
TAY                     ; $27:C909: A8
SEP #$20                ; $27:C90A: E2 20
LDA $D9                 ; $27:C90C: A5 D9
AND #$01                ; $27:C90E: 29 01
STA $0A20,y             ; $27:C910: 99 20 0A
STA $0A21,y             ; $27:C913: 99 21 0A
SEP #$10                ; $27:C916: E2 10
LDX $9B                 ; $27:C918: A6 9B
RTS                     ; $27:C91A: 60

CODE_27C91B:
LDA $06C7,x             ; $27:C91B: BD C7 06
BNE CODE_27C991         ; $27:C91E: D0 71
LDA $06D1,x             ; $27:C920: BD D1 06
BEQ CODE_27C992         ; $27:C923: F0 6D
LSR A                   ; $27:C925: 4A
LSR A                   ; $27:C926: 4A
LSR A                   ; $27:C927: 4A
LSR A                   ; $27:C928: 4A
AND #$03                ; $27:C929: 29 03
TAY                     ; $27:C92B: A8
LDA $15                 ; $27:C92C: A5 15
AND.w DATA_21C7A2,y     ; $27:C92E: 39 A2 C7
BNE CODE_27C939         ; $27:C931: D0 06
JSR CODE_27D7E3         ; $27:C933: 20 E3 D7
JSR CODE_27D80F         ; $27:C936: 20 0F D8

CODE_27C939:
JSR CODE_27D728         ; $27:C939: 20 28 D7
LDA $E2,x               ; $27:C93C: B5 E2
XBA                     ; $27:C93E: EB
LDA $05C9,x             ; $27:C93F: BD C9 05
REP #$30                ; $27:C942: C2 30
SEC                     ; $27:C944: 38
SBC $0210               ; $27:C945: ED 10 02
STA $D8                 ; $27:C948: 85 D8
SEP #$20                ; $27:C94A: E2 20
LDY $C6,x               ; $27:C94C: B4 C6
JSR CODE_27CE16         ; $27:C94E: 20 16 CE
LDA $0800,y             ; $27:C951: B9 00 08
STA $0804,y             ; $27:C954: 99 04 08
LDA $0801,y             ; $27:C957: B9 01 08
CLC                     ; $27:C95A: 18
ADC #$08                ; $27:C95B: 69 08
STA $0805,y             ; $27:C95D: 99 05 08
LDA #$3A                ; $27:C960: A9 3A
STA $0802,y             ; $27:C962: 99 02 08
INC A                   ; $27:C965: 1A
STA $0806,y             ; $27:C966: 99 06 08
LDA $0565               ; $27:C969: AD 65 05
LSR A                   ; $27:C96C: 4A
LSR A                   ; $27:C96D: 4A
CLC                     ; $27:C96E: 18
ADC $9B                 ; $27:C96F: 65 9B
AND #$03                ; $27:C971: 29 03
ASL A                   ; $27:C973: 0A
ORA #$21                ; $27:C974: 09 21
STA $0803,y             ; $27:C976: 99 03 08
STA $0807,y             ; $27:C979: 99 07 08
REP #$20                ; $27:C97C: C2 20
TYA                     ; $27:C97E: 98
LSR A                   ; $27:C97F: 4A
LSR A                   ; $27:C980: 4A
TAY                     ; $27:C981: A8
SEP #$20                ; $27:C982: E2 20
LDA $D9                 ; $27:C984: A5 D9
AND #$01                ; $27:C986: 29 01
STA $0A20,y             ; $27:C988: 99 20 0A
STA $0A21,y             ; $27:C98B: 99 21 0A
SEP #$10                ; $27:C98E: E2 10
RTS                     ; $27:C990: 60

CODE_27C991:
RTS                     ; $27:C991: 60

CODE_27C992:
JMP CODE_27D37F         ; $27:C992: 4C 7F D3

CODE_27C995:
LDA $9C                 ; $27:C995: A5 9C
BNE CODE_27C9F6         ; $27:C997: D0 5D
JSR CODE_27CC1B         ; $27:C999: 20 1B CC
DEC $05D3,x             ; $27:C99C: DE D3 05
LDA $1CFC               ; $27:C99F: AD FC 1C
CLC                     ; $27:C9A2: 18
ADC $06BD,x             ; $27:C9A3: 7D BD 06
STA $1CFC               ; $27:C9A6: 8D FC 1C
BCC CODE_27C9AE         ; $27:C9A9: 90 03
INC $1CFD               ; $27:C9AB: EE FD 1C

CODE_27C9AE:
JSR CODE_27C442         ; $27:C9AE: 20 42 C4
BCC CODE_27C9F6         ; $27:C9B1: 90 43
LDA $05D3,x             ; $27:C9B3: BD D3 05
BMI CODE_27C9F6         ; $27:C9B6: 30 3E
CMP #$20                ; $27:C9B8: C9 20
BCC CODE_27C9E3         ; $27:C9BA: 90 27
LSR A                   ; $27:C9BC: 4A

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:C9BD: 22 59 A8 27
STA $05D3,x             ; $27:C9C1: 9D D3 05
DEC $05BF,x             ; $27:C9C4: DE BF 05
DEC $05BF,x             ; $27:C9C7: DE BF 05
LDA $1CFE               ; $27:C9CA: AD FE 1C
BNE CODE_27C9D4         ; $27:C9CD: D0 05
LDA #$38                ; $27:C9CF: A9 38
STA $1200               ; $27:C9D1: 8D 00 12

CODE_27C9D4:
INC $1CFE               ; $27:C9D4: EE FE 1C
LDA $06BD,x             ; $27:C9D7: BD BD 06
CLC                     ; $27:C9DA: 18
ADC #$80                ; $27:C9DB: 69 80
STA $06BD,x             ; $27:C9DD: 9D BD 06
JMP CODE_27C9F6         ; $27:C9E0: 4C F6 C9

CODE_27C9E3:
LDA #$00                ; $27:C9E3: A9 00
STA $05D3,x             ; $27:C9E5: 9D D3 05
STA $1CFD               ; $27:C9E8: 8D FD 1C
LDA $05BF,x             ; $27:C9EB: BD BF 05
AND #$F0                ; $27:C9EE: 29 F0
CLC                     ; $27:C9F0: 18
ADC #$05                ; $27:C9F1: 69 05
STA $05BF,x             ; $27:C9F3: 9D BF 05

CODE_27C9F6:
JSR CODE_27D728         ; $27:C9F6: 20 28 D7
BEQ CODE_27C9FC         ; $27:C9F9: F0 01
RTS                     ; $27:C9FB: 60

CODE_27C9FC:
LDA $E2,x               ; $27:C9FC: B5 E2
XBA                     ; $27:C9FE: EB
LDA $05C9,y             ; $27:C9FF: B9 C9 05
REP #$30                ; $27:CA02: C2 30
SEC                     ; $27:CA04: 38
SBC $0210               ; $27:CA05: ED 10 02
STA $D8                 ; $27:CA08: 85 D8
CLC                     ; $27:CA0A: 18
ADC #$0008              ; $27:CA0B: 69 08 00
STA $DA                 ; $27:CA0E: 85 DA
SEP #$20                ; $27:CA10: E2 20
LDY $C6,x               ; $27:CA12: B4 C6
JSR CODE_27CF49         ; $27:CA14: 20 49 CF
LDA $0801,y             ; $27:CA17: B9 01 08
SBC #$04                ; $27:CA1A: E9 04
STA $0801,y             ; $27:CA1C: 99 01 08
STA $0809,y             ; $27:CA1F: 99 09 08
CLC                     ; $27:CA22: 18
ADC #$08                ; $27:CA23: 69 08
STA $0805,y             ; $27:CA25: 99 05 08
STA $080D,y             ; $27:CA28: 99 0D 08
REP #$20                ; $27:CA2B: C2 20
LDA $1CFE               ; $27:CA2D: AD FE 1C
AND #$00FF              ; $27:CA30: 29 FF 00
LSR A                   ; $27:CA33: 4A
LDA $1CFD               ; $27:CA34: AD FD 1C
AND #$0007              ; $27:CA37: 29 07 00
BCC CODE_27CA3F         ; $27:CA3A: 90 03
EOR #$0007              ; $27:CA3C: 49 07 00

CODE_27CA3F:
AND #$00FF              ; $27:CA3F: 29 FF 00
TAX                     ; $27:CA42: AA
SEP #$20                ; $27:CA43: E2 20
LDA.w DATA_21C7A6,x     ; $27:CA45: BD A6 C7
STA $0802,y             ; $27:CA48: 99 02 08
INC A                   ; $27:CA4B: 1A
STA $0806,y             ; $27:CA4C: 99 06 08
LDA.w DATA_21C7AE,x     ; $27:CA4F: BD AE C7
STA $080A,y             ; $27:CA52: 99 0A 08
INC A                   ; $27:CA55: 1A
STA $080E,y             ; $27:CA56: 99 0E 08
LDA.w DATA_21C7B6,x     ; $27:CA59: BD B6 C7
STA $0803,y             ; $27:CA5C: 99 03 08
STA $0807,y             ; $27:CA5F: 99 07 08
ORA #$40                ; $27:CA62: 09 40
STA $080B,y             ; $27:CA64: 99 0B 08
STA $080F,y             ; $27:CA67: 99 0F 08
AND #$80                ; $27:CA6A: 29 80
BEQ CODE_27CA8A         ; $27:CA6C: F0 1C
LDA $0802,y             ; $27:CA6E: B9 02 08
INC A                   ; $27:CA71: 1A
STA $0802,y             ; $27:CA72: 99 02 08
LDA $0806,y             ; $27:CA75: B9 06 08
DEC A                   ; $27:CA78: 3A
STA $0806,y             ; $27:CA79: 99 06 08
LDA $080A,y             ; $27:CA7C: B9 0A 08
INC A                   ; $27:CA7F: 1A
STA $080A,y             ; $27:CA80: 99 0A 08
LDA $080E,y             ; $27:CA83: B9 0E 08
DEC A                   ; $27:CA86: 3A
STA $080E,y             ; $27:CA87: 99 0E 08

CODE_27CA8A:
REP #$20                ; $27:CA8A: C2 20
TYA                     ; $27:CA8C: 98
LSR A                   ; $27:CA8D: 4A
LSR A                   ; $27:CA8E: 4A
TAY                     ; $27:CA8F: A8
SEP #$20                ; $27:CA90: E2 20
LDA $D9                 ; $27:CA92: A5 D9
AND #$01                ; $27:CA94: 29 01
STA $0A20,y             ; $27:CA96: 99 20 0A
STA $0A21,y             ; $27:CA99: 99 21 0A
LDA $DB                 ; $27:CA9C: A5 DB
AND #$01                ; $27:CA9E: 29 01
STA $0A22,y             ; $27:CAA0: 99 22 0A
STA $0A23,y             ; $27:CAA3: 99 23 0A
SEP #$10                ; $27:CAA6: E2 10
LDX $9B                 ; $27:CAA8: A6 9B
JMP CODE_27D302         ; $27:CAAA: 4C 02 D3
RTS                     ; $27:CAAD: 60

CODE_27CAAE:
LDA $9C                 ; $27:CAAE: A5 9C
BNE CODE_27CB05         ; $27:CAB0: D0 53
LDA $0597,x             ; $27:CAB2: BD 97 05
BEQ CODE_27CABF         ; $27:CAB5: F0 08
LDA $15                 ; $27:CAB7: A5 15
LSR A                   ; $27:CAB9: 4A
BCC CODE_27CABF         ; $27:CABA: 90 03
DEC $0597,x             ; $27:CABC: DE 97 05

CODE_27CABF:
LDA $06C7,x             ; $27:CABF: BD C7 06
BEQ CODE_27CAF9         ; $27:CAC2: F0 35
LDY $06BD,x             ; $27:CAC4: BC BD 06
LDA $0661,y             ; $27:CAC7: B9 61 06
CMP #$02                ; $27:CACA: C9 02
BNE CODE_27CAEF         ; $27:CACC: D0 21
LDA $0671,y             ; $27:CACE: B9 71 06
CMP #$67                ; $27:CAD1: C9 67
BNE CODE_27CAEF         ; $27:CAD3: D0 1A
LDA $0068,y             ; $27:CAD5: B9 68 00
CMP #$4F                ; $27:CAD8: C9 4F
BCC CODE_27CAEF         ; $27:CADA: 90 13
LDA $0565               ; $27:CADC: AD 65 05
INC $05C9,x             ; $27:CADF: FE C9 05
AND #$02                ; $27:CAE2: 29 02
BNE CODE_27CAEC         ; $27:CAE4: D0 06
DEC $05C9,x             ; $27:CAE6: DE C9 05
DEC $05C9,x             ; $27:CAE9: DE C9 05

CODE_27CAEC:
JMP CODE_27CB05         ; $27:CAEC: 4C 05 CB

CODE_27CAEF:
LDA #$00                ; $27:CAEF: A9 00
STA $06C7,x             ; $27:CAF1: 9D C7 06
LDA #$C0                ; $27:CAF4: A9 C0
STA $0597,x             ; $27:CAF6: 9D 97 05

CODE_27CAF9:
LDA $15                 ; $27:CAF9: A5 15
AND #$03                ; $27:CAFB: 29 03
BNE CODE_27CB05         ; $27:CAFD: D0 06
JSR CODE_27D7E3         ; $27:CAFF: 20 E3 D7
JSR CODE_27D80F         ; $27:CB02: 20 0F D8

CODE_27CB05:
LDA $0597,x             ; $27:CB05: BD 97 05
BNE CODE_27CB0D         ; $27:CB08: D0 03
JMP CODE_27D37F         ; $27:CB0A: 4C 7F D3

CODE_27CB0D:
CMP #$30                ; $27:CB0D: C9 30
BCS CODE_27CB1A         ; $27:CB0F: B0 09
TXA                     ; $27:CB11: 8A
ASL A                   ; $27:CB12: 0A
ADC $0597,x             ; $27:CB13: 7D 97 05
AND #$02                ; $27:CB16: 29 02
BNE CODE_27CB73         ; $27:CB18: D0 59

CODE_27CB1A:
JSR CODE_27D728         ; $27:CB1A: 20 28 D7
LDA $E2,x               ; $27:CB1D: B5 E2
XBA                     ; $27:CB1F: EB
LDA $05C9,x             ; $27:CB20: BD C9 05
REP #$30                ; $27:CB23: C2 30
SEC                     ; $27:CB25: 38
SBC $0210               ; $27:CB26: ED 10 02
STA $D8                 ; $27:CB29: 85 D8
SEP #$20                ; $27:CB2B: E2 20
LDY $C6,x               ; $27:CB2D: B4 C6
JSR CODE_27CE16         ; $27:CB2F: 20 16 CE
LDA $0800,y             ; $27:CB32: B9 00 08
STA $0804,y             ; $27:CB35: 99 04 08
LDA $0801,y             ; $27:CB38: B9 01 08
CLC                     ; $27:CB3B: 18
ADC #$08                ; $27:CB3C: 69 08
STA $0805,y             ; $27:CB3E: 99 05 08
LDA $0565               ; $27:CB41: AD 65 05
LSR A                   ; $27:CB44: 4A
LSR A                   ; $27:CB45: 4A
LSR A                   ; $27:CB46: 4A
LDA #$18                ; $27:CB47: A9 18
BCC CODE_27CB4D         ; $27:CB49: 90 02
LDA #$1A                ; $27:CB4B: A9 1A

CODE_27CB4D:
STA $0802,y             ; $27:CB4D: 99 02 08
INC A                   ; $27:CB50: 1A
STA $0806,y             ; $27:CB51: 99 06 08
LDA #$23                ; $27:CB54: A9 23
STA $0803,y             ; $27:CB56: 99 03 08
STA $0807,y             ; $27:CB59: 99 07 08
REP #$20                ; $27:CB5C: C2 20
TYA                     ; $27:CB5E: 98
LSR A                   ; $27:CB5F: 4A
LSR A                   ; $27:CB60: 4A
TAY                     ; $27:CB61: A8
SEP #$20                ; $27:CB62: E2 20
LDA $D9                 ; $27:CB64: A5 D9
AND #$01                ; $27:CB66: 29 01
STA $0A20,y             ; $27:CB68: 99 20 0A
STA $0A21,y             ; $27:CB6B: 99 21 0A
SEP #$10                ; $27:CB6E: E2 10
JMP CODE_27D302         ; $27:CB70: 4C 02 D3

CODE_27CB73:
RTS                     ; $27:CB73: 60

CODE_27CB74:
LDA $9C                 ; $27:CB74: A5 9C
BNE CODE_27CBB7         ; $27:CB76: D0 3F
LDA $06D1,x             ; $27:CB78: BD D1 06
BNE CODE_27CB80         ; $27:CB7B: D0 03
JMP CODE_27D37F         ; $27:CB7D: 4C 7F D3

CODE_27CB80:
LDA $06C7,x             ; $27:CB80: BD C7 06
BNE CODE_27CBA5         ; $27:CB83: D0 20
JSR CODE_27D80F         ; $27:CB85: 20 0F D8
LDA $05D3,x             ; $27:CB88: BD D3 05
BMI CODE_27CB97         ; $27:CB8B: 30 0A
SEC                     ; $27:CB8D: 38
SBC #$07                ; $27:CB8E: E9 07
STA $05D3,x             ; $27:CB90: 9D D3 05
BPL CODE_27CBA2         ; $27:CB93: 10 0D
BMI CODE_27CB9F         ; $27:CB95: 30 08

CODE_27CB97:
CLC                     ; $27:CB97: 18
ADC #$07                ; $27:CB98: 69 07
STA $05D3,x             ; $27:CB9A: 9D D3 05
BMI CODE_27CBA2         ; $27:CB9D: 30 03

CODE_27CB9F:
INC $06C7,x             ; $27:CB9F: FE C7 06

CODE_27CBA2:
JMP CODE_27CBB7         ; $27:CBA2: 4C B7 CB

CODE_27CBA5:
INC $06BD,x             ; $27:CBA5: FE BD 06
LDA $06BD,x             ; $27:CBA8: BD BD 06
AND #$30                ; $27:CBAB: 29 30
BEQ CODE_27CBB7         ; $27:CBAD: F0 08
DEC $05BF,x             ; $27:CBAF: DE BF 05
BNE CODE_27CBB7         ; $27:CBB2: D0 03
DEC $1FD7,x             ; $27:CBB4: DE D7 1F

CODE_27CBB7:
LDA $0565               ; $27:CBB7: AD 65 05
AND #$0C                ; $27:CBBA: 29 0C
LSR A                   ; $27:CBBC: 4A
LSR A                   ; $27:CBBD: 4A
TAY                     ; $27:CBBE: A8
LDA.w DATA_21C731,y     ; $27:CBBF: B9 31 C7
STA $00                 ; $27:CBC2: 85 00
JSR CODE_27D728         ; $27:CBC4: 20 28 D7
LDA $E2,x               ; $27:CBC7: B5 E2
XBA                     ; $27:CBC9: EB
LDA $05C9,x             ; $27:CBCA: BD C9 05
REP #$30                ; $27:CBCD: C2 30
SEC                     ; $27:CBCF: 38
SBC $0210               ; $27:CBD0: ED 10 02
STA $D8                 ; $27:CBD3: 85 D8
SEP #$20                ; $27:CBD5: E2 20
LDY $C6,x               ; $27:CBD7: B4 C6
JSR CODE_27CE16         ; $27:CBD9: 20 16 CE
LDA $0801,y             ; $27:CBDC: B9 01 08
CLC                     ; $27:CBDF: 18
ADC #$08                ; $27:CBE0: 69 08
STA $0805,y             ; $27:CBE2: 99 05 08
LDA $05C9,x             ; $27:CBE5: BD C9 05
CLC                     ; $27:CBE8: 18
ADC $00                 ; $27:CBE9: 65 00
SEC                     ; $27:CBEB: 38
SBC $0210               ; $27:CBEC: ED 10 02
STA $0800,y             ; $27:CBEF: 99 00 08
STA $0804,y             ; $27:CBF2: 99 04 08
LDA #$C6                ; $27:CBF5: A9 C6
STA $0802,y             ; $27:CBF7: 99 02 08
INC A                   ; $27:CBFA: 1A
STA $0806,y             ; $27:CBFB: 99 06 08
LDA #$23                ; $27:CBFE: A9 23
STA $0803,y             ; $27:CC00: 99 03 08
STA $0807,y             ; $27:CC03: 99 07 08
REP #$20                ; $27:CC06: C2 20
TYA                     ; $27:CC08: 98
LSR A                   ; $27:CC09: 4A
LSR A                   ; $27:CC0A: 4A
TAY                     ; $27:CC0B: A8
SEP #$20                ; $27:CC0C: E2 20
LDA $D9                 ; $27:CC0E: A5 D9
AND #$01                ; $27:CC10: 29 01
STA $0A20,y             ; $27:CC12: 99 20 0A
STA $0A21,y             ; $27:CC15: 99 21 0A
SEP #$10                ; $27:CC18: E2 10
RTS                     ; $27:CC1A: 60

CODE_27CC1B:
JSR CODE_27D7E3         ; $27:CC1B: 20 E3 D7
JSR CODE_27D80F         ; $27:CC1E: 20 0F D8
LDA $05D3,x             ; $27:CC21: BD D3 05
BMI CODE_27CC2A         ; $27:CC24: 30 04
CMP #$6E                ; $27:CC26: C9 6E
BCS CODE_27CC30         ; $27:CC28: B0 06

CODE_27CC2A:
INC $05D3,x             ; $27:CC2A: FE D3 05
INC $05D3,x             ; $27:CC2D: FE D3 05

CODE_27CC30:
RTS                     ; $27:CC30: 60

CODE_27CC31:
LDA $9C                 ; $27:CC31: A5 9C
BNE CODE_27CC46         ; $27:CC33: D0 11
JSR CODE_27CC1B         ; $27:CC35: 20 1B CC
JSR CODE_27CD5F         ; $27:CC38: 20 5F CD
LDA $06C7,x             ; $27:CC3B: BD C7 06
BNE CODE_27CC46         ; $27:CC3E: D0 06
DEC $05D3,x             ; $27:CC40: DE D3 05
DEC $05D3,x             ; $27:CC43: DE D3 05

CODE_27CC46:
JSR CODE_27D728         ; $27:CC46: 20 28 D7
BNE CODE_27CC30         ; $27:CC49: D0 E5
LDA $E2,x               ; $27:CC4B: B5 E2
XBA                     ; $27:CC4D: EB
LDA $05C9,x             ; $27:CC4E: BD C9 05
REP #$30                ; $27:CC51: C2 30
SEC                     ; $27:CC53: 38
SBC $0210               ; $27:CC54: ED 10 02
STA $D8                 ; $27:CC57: 85 D8
CLC                     ; $27:CC59: 18
ADC #$0008              ; $27:CC5A: 69 08 00
STA $DA                 ; $27:CC5D: 85 DA
SEP #$20                ; $27:CC5F: E2 20
LDY $C6,x               ; $27:CC61: B4 C6
JSR CODE_27CF49         ; $27:CC63: 20 49 CF
LDA #$2A                ; $27:CC66: A9 2A
STA $0803,y             ; $27:CC68: 99 03 08
STA $0807,y             ; $27:CC6B: 99 07 08
STA $080B,y             ; $27:CC6E: 99 0B 08
STA $080F,y             ; $27:CC71: 99 0F 08
LDA #$CE                ; $27:CC74: A9 CE
STA $080A,y             ; $27:CC76: 99 0A 08
INC A                   ; $27:CC79: 1A
STA $080E,y             ; $27:CC7A: 99 0E 08
LDA #$CC                ; $27:CC7D: A9 CC
STA $0802,y             ; $27:CC7F: 99 02 08
INC A                   ; $27:CC82: 1A
STA $0806,y             ; $27:CC83: 99 06 08
REP #$20                ; $27:CC86: C2 20
TYA                     ; $27:CC88: 98
LSR A                   ; $27:CC89: 4A
LSR A                   ; $27:CC8A: 4A
TAY                     ; $27:CC8B: A8
SEP #$20                ; $27:CC8C: E2 20
LDA $D9                 ; $27:CC8E: A5 D9
AND #$01                ; $27:CC90: 29 01
STA $0A20,y             ; $27:CC92: 99 20 0A
STA $0A21,y             ; $27:CC95: 99 21 0A
LDA $DB                 ; $27:CC98: A5 DB
AND #$01                ; $27:CC9A: 29 01
STA $0A22,y             ; $27:CC9C: 99 22 0A
STA $0A23,y             ; $27:CC9F: 99 23 0A
SEP #$10                ; $27:CCA2: E2 10
LDA $06C7,x             ; $27:CCA4: BD C7 06
ORA $00BF               ; $27:CCA7: 0D BF 00
ORA $0583               ; $27:CCAA: 0D 83 05
BNE CODE_27CD25         ; $27:CCAD: D0 76
LDY #$00                ; $27:CCAF: A0 00
LDA $BB                 ; $27:CCB1: A5 BB
BEQ CODE_27CCBB         ; $27:CCB3: F0 06
LDA $056F               ; $27:CCB5: AD 6F 05
BNE CODE_27CCBB         ; $27:CCB8: D0 01
INY                     ; $27:CCBA: C8

CODE_27CCBB:
LDA $05BF,x             ; $27:CCBB: BD BF 05
SEC                     ; $27:CCBE: 38
SBC $70                 ; $27:CCBF: E5 70
SEC                     ; $27:CCC1: 38
SBC.w DATA_21C7BE,y     ; $27:CCC2: F9 BE C7
CMP.w DATA_21C7C0,y     ; $27:CCC5: D9 C0 C7
BCS CODE_27CD25         ; $27:CCC8: B0 5B
LDA $05C9,x             ; $27:CCCA: BD C9 05
CLC                     ; $27:CCCD: 18
ADC #$08                ; $27:CCCE: 69 08
SEC                     ; $27:CCD0: 38
SBC $5E                 ; $27:CCD1: E5 5E
CMP #$14                ; $27:CCD3: C9 14
BCS CODE_27CD25         ; $27:CCD5: B0 4E
LDA $0553               ; $27:CCD7: AD 53 05
BNE CODE_27CD09         ; $27:CCDA: D0 2D
LDA $9D                 ; $27:CCDC: A5 9D
BMI CODE_27CD22         ; $27:CCDE: 30 42
LDA $1FD7,x             ; $27:CCE0: BD D7 1F
XBA                     ; $27:CCE3: EB
LDA $05BF,x             ; $27:CCE4: BD BF 05
REP #$20                ; $27:CCE7: C2 20
SEC                     ; $27:CCE9: 38
SBC $0216               ; $27:CCEA: ED 16 02
SEC                     ; $27:CCED: 38
SBC #$0013              ; $27:CCEE: E9 13 00
STA $D8                 ; $27:CCF1: 85 D8
SEP #$20                ; $27:CCF3: E2 20
CMP $82                 ; $27:CCF5: C5 82
PHP                     ; $27:CCF7: 08
LDY $0544               ; $27:CCF8: AC 44 05
BPL CODE_27CD06         ; $27:CCFB: 10 09
LDY $D9                 ; $27:CCFD: A4 D9
BMI CODE_27CD06         ; $27:CCFF: 30 05
PLP                     ; $27:CD01: 28
BCS CODE_27CD22         ; $27:CD02: B0 1E
BRA CODE_27CD09         ; $27:CD04: 80 03

CODE_27CD06:
PLP                     ; $27:CD06: 28
BCC CODE_27CD22         ; $27:CD07: 90 19

CODE_27CD09:
LDA #$01                ; $27:CD09: A9 01
STA $06C7,x             ; $27:CD0B: 9D C7 06
LDA #$00                ; $27:CD0E: A9 00
STA $05DD,x             ; $27:CD10: 9D DD 05
STA $05D3,x             ; $27:CD13: 9D D3 05
LDA #$D0                ; $27:CD16: A9 D0
STA $9D                 ; $27:CD18: 85 9D
LDA #$02                ; $27:CD1A: A9 02
STA $1200               ; $27:CD1C: 8D 00 12
JMP CODE_27CD26         ; $27:CD1F: 4C 26 CD

CODE_27CD22:
JMP CODE_27D336         ; $27:CD22: 4C 36 D3

CODE_27CD25:
RTS                     ; $27:CD25: 60

CODE_27CD26:
JSR CODE_278ADB         ; $27:CD26: 20 DB 8A
LDA #$85                ; $27:CD29: A9 85

CODE_27CD2B:
CLC                     ; $27:CD2B: 18
ADC $05F4               ; $27:CD2C: 6D F4 05
STA $079F,y             ; $27:CD2F: 99 9F 07
INC $05F4               ; $27:CD32: EE F4 05
LDA #$30                ; $27:CD35: A9 30
STA $07A4,y             ; $27:CD37: 99 A4 07
LDA $05BF,x             ; $27:CD3A: BD BF 05
SEC                     ; $27:CD3D: 38
SBC $0543               ; $27:CD3E: ED 43 05
SBC #$06                ; $27:CD41: E9 06
CMP #$C0                ; $27:CD43: C9 C0
BCC CODE_27CD49         ; $27:CD45: 90 02
LDA #$05                ; $27:CD47: A9 05

CODE_27CD49:
STA $07A9,y             ; $27:CD49: 99 A9 07
LDA $05C9,x             ; $27:CD4C: BD C9 05
SEC                     ; $27:CD4F: 38
SBC $0210               ; $27:CD50: ED 10 02
STA $07AE,y             ; $27:CD53: 99 AE 07
LDA $E2,x               ; $27:CD56: B5 E2
SBC $0211               ; $27:CD58: ED 11 02
STA $0251,y             ; $27:CD5B: 99 51 02
RTS                     ; $27:CD5E: 60

CODE_27CD5F:
LDA $05FC               ; $27:CD5F: AD FC 05
BEQ CODE_27CD7A         ; $27:CD62: F0 16
LDY #$00                ; $27:CD64: A0 00
LDA $0780               ; $27:CD66: AD 80 07
BPL CODE_27CD6C         ; $27:CD69: 10 01
DEY                     ; $27:CD6B: 88

CODE_27CD6C:
CLC                     ; $27:CD6C: 18
ADC $05BF,x             ; $27:CD6D: 7D BF 05
STA $05BF,x             ; $27:CD70: 9D BF 05
TYA                     ; $27:CD73: 98
ADC $1FD7,x             ; $27:CD74: 7D D7 1F
STA $1FD7,x             ; $27:CD77: 9D D7 1F

CODE_27CD7A:
RTS                     ; $27:CD7A: 60

CODE_27CD7B:
LDA $9C                 ; $27:CD7B: A5 9C
BNE CODE_27CD90         ; $27:CD7D: D0 11
JSR CODE_27CD5F         ; $27:CD7F: 20 5F CD
JSR CODE_27D7E3         ; $27:CD82: 20 E3 D7
LDA $05D3,x             ; $27:CD85: BD D3 05
BEQ CODE_27CD8D         ; $27:CD88: F0 03
INC $05D3,x             ; $27:CD8A: FE D3 05

CODE_27CD8D:
JSR CODE_27D80F         ; $27:CD8D: 20 0F D8

CODE_27CD90:
JSR CODE_27D302         ; $27:CD90: 20 02 D3
JSR CODE_27D728         ; $27:CD93: 20 28 D7
BNE CODE_27CE15         ; $27:CD96: D0 7D
LDA $05DD,x             ; $27:CD98: BD DD 05
AND #$80                ; $27:CD9B: 29 80
STA $00                 ; $27:CD9D: 85 00
LDA $E2,x               ; $27:CD9F: B5 E2
XBA                     ; $27:CDA1: EB
LDA $05C9,x             ; $27:CDA2: BD C9 05
REP #$30                ; $27:CDA5: C2 30
SEC                     ; $27:CDA7: 38
SBC $0210               ; $27:CDA8: ED 10 02
STA $D8                 ; $27:CDAB: 85 D8
LDY $C6,x               ; $27:CDAD: B4 C6
LDA $0565               ; $27:CDAF: AD 65 05
LSR A                   ; $27:CDB2: 4A
CLC                     ; $27:CDB3: 18
ADC $9B                 ; $27:CDB4: 65 9B
AND #$0003              ; $27:CDB6: 29 03 00
TAX                     ; $27:CDB9: AA
SEP #$20                ; $27:CDBA: E2 20
LDA.w DATA_21C7C2,x     ; $27:CDBC: BD C2 C7
STA $0802,y             ; $27:CDBF: 99 02 08
INC A                   ; $27:CDC2: 1A
STA $0806,y             ; $27:CDC3: 99 06 08
LDA.w DATA_21C7C6,x     ; $27:CDC6: BD C6 C7
EOR $00                 ; $27:CDC9: 45 00
ORA #$20                ; $27:CDCB: 09 20
STA $0803,y             ; $27:CDCD: 99 03 08
STA $0807,y             ; $27:CDD0: 99 07 08
AND #$80                ; $27:CDD3: 29 80
BEQ CODE_27CDE5         ; $27:CDD5: F0 0E
LDA $0802,y             ; $27:CDD7: B9 02 08
PHA                     ; $27:CDDA: 48
LDA $0806,y             ; $27:CDDB: B9 06 08
STA $0802,y             ; $27:CDDE: 99 02 08
PLA                     ; $27:CDE1: 68
STA $0806,y             ; $27:CDE2: 99 06 08

CODE_27CDE5:
REP #$20                ; $27:CDE5: C2 20
LDA $9B                 ; $27:CDE7: A5 9B
AND #$00FF              ; $27:CDE9: 29 FF 00
TAX                     ; $27:CDEC: AA
SEP #$20                ; $27:CDED: E2 20
JSR CODE_27CE16         ; $27:CDEF: 20 16 CE
LDA $0800,y             ; $27:CDF2: B9 00 08
STA $0804,y             ; $27:CDF5: 99 04 08
LDA $0801,y             ; $27:CDF8: B9 01 08
CLC                     ; $27:CDFB: 18
ADC #$08                ; $27:CDFC: 69 08
STA $0805,y             ; $27:CDFE: 99 05 08
REP #$20                ; $27:CE01: C2 20
TYA                     ; $27:CE03: 98
LSR A                   ; $27:CE04: 4A
LSR A                   ; $27:CE05: 4A
TAY                     ; $27:CE06: A8
SEP #$20                ; $27:CE07: E2 20
LDA $D9                 ; $27:CE09: A5 D9
AND #$01                ; $27:CE0B: 29 01
STA $0A20,y             ; $27:CE0D: 99 20 0A
STA $0A21,y             ; $27:CE10: 99 21 0A
SEP #$10                ; $27:CE13: E2 10

CODE_27CE15:
RTS                     ; $27:CE15: 60

CODE_27CE16:
LDA $05BF,x             ; $27:CE16: BD BF 05
SEC                     ; $27:CE19: 38
SBC $0543               ; $27:CE1A: ED 43 05
STA $0801,y             ; $27:CE1D: 99 01 08
LDA $05C9,x             ; $27:CE20: BD C9 05
SEC                     ; $27:CE23: 38
SBC $0210               ; $27:CE24: ED 10 02
STA $0800,y             ; $27:CE27: 99 00 08
RTS                     ; $27:CE2A: 60

CODE_27CE2B:
LDA $9C                 ; $27:CE2B: A5 9C
BNE CODE_27CE35         ; $27:CE2D: D0 06
JSR CODE_27D7E3         ; $27:CE2F: 20 E3 D7
JSR CODE_27D80F         ; $27:CE32: 20 0F D8

CODE_27CE35:
JSR CODE_27D728         ; $27:CE35: 20 28 D7
LDA $E2,x               ; $27:CE38: B5 E2
XBA                     ; $27:CE3A: EB
LDA $05C9,x             ; $27:CE3B: BD C9 05
REP #$30                ; $27:CE3E: C2 30
SEC                     ; $27:CE40: 38
SBC $0210               ; $27:CE41: ED 10 02
STA $D8                 ; $27:CE44: 85 D8
LDY $C6,x               ; $27:CE46: B4 C6
LDA $06D1,x             ; $27:CE48: BD D1 06
AND #$00FF              ; $27:CE4B: 29 FF 00
TAX                     ; $27:CE4E: AA
SEP #$20                ; $27:CE4F: E2 20
LDA #$BE                ; $27:CE51: A9 BE
CPX #$00E0              ; $27:CE53: E0 E0 00
BCS CODE_27CE61         ; $27:CE56: B0 09
LDA #$BA                ; $27:CE58: A9 BA
CPX #$00C0              ; $27:CE5A: E0 C0 00
BCS CODE_27CE61         ; $27:CE5D: B0 02
LDA #$BC                ; $27:CE5F: A9 BC

CODE_27CE61:
STA $0802,y             ; $27:CE61: 99 02 08
INC A                   ; $27:CE64: 1A
STA $0806,y             ; $27:CE65: 99 06 08
REP #$20                ; $27:CE68: C2 20
LDA $9B                 ; $27:CE6A: A5 9B
AND #$00FF              ; $27:CE6C: 29 FF 00
TAX                     ; $27:CE6F: AA
SEP #$20                ; $27:CE70: E2 20
JSR CODE_27CE16         ; $27:CE72: 20 16 CE
LDA $0801,y             ; $27:CE75: B9 01 08
CLC                     ; $27:CE78: 18
ADC #$08                ; $27:CE79: 69 08
STA $0805,y             ; $27:CE7B: 99 05 08
LDA $0800,y             ; $27:CE7E: B9 00 08
STA $0804,y             ; $27:CE81: 99 04 08
TXA                     ; $27:CE84: 8A
LSR A                   ; $27:CE85: 4A
ROR A                   ; $27:CE86: 6A
AND #$80                ; $27:CE87: 29 80
STA $00                 ; $27:CE89: 85 00
LDA $15                 ; $27:CE8B: A5 15
LSR A                   ; $27:CE8D: 4A
LSR A                   ; $27:CE8E: 4A
LSR A                   ; $27:CE8F: 4A
ROR A                   ; $27:CE90: 6A
AND #$80                ; $27:CE91: 29 80
ORA #$22                ; $27:CE93: 09 22
EOR $00                 ; $27:CE95: 45 00
STA $0803,y             ; $27:CE97: 99 03 08
STA $0807,y             ; $27:CE9A: 99 07 08
AND #$80                ; $27:CE9D: 29 80
BEQ CODE_27CEAF         ; $27:CE9F: F0 0E
LDA $0802,y             ; $27:CEA1: B9 02 08
PHA                     ; $27:CEA4: 48
LDA $0806,y             ; $27:CEA5: B9 06 08
STA $0802,y             ; $27:CEA8: 99 02 08
PLA                     ; $27:CEAB: 68
STA $0806,y             ; $27:CEAC: 99 06 08

CODE_27CEAF:
PHY                     ; $27:CEAF: 5A
REP #$20                ; $27:CEB0: C2 20
TYA                     ; $27:CEB2: 98
LSR A                   ; $27:CEB3: 4A
LSR A                   ; $27:CEB4: 4A
TAY                     ; $27:CEB5: A8
SEP #$20                ; $27:CEB6: E2 20
LDA $D9                 ; $27:CEB8: A5 D9
AND #$01                ; $27:CEBA: 29 01
STA $0A20,y             ; $27:CEBC: 99 20 0A
STA $0A21,y             ; $27:CEBF: 99 21 0A
PLY                     ; $27:CEC2: 7A
SEP #$10                ; $27:CEC3: E2 10
JMP CODE_27D302         ; $27:CEC5: 4C 02 D3
RTS                     ; $27:CEC8: 60

CODE_27CEC9:
LDA $9C                 ; $27:CEC9: A5 9C
BNE CODE_27CED0         ; $27:CECB: D0 03
JSR CODE_27CC1B         ; $27:CECD: 20 1B CC

CODE_27CED0:
JSR CODE_27D728         ; $27:CED0: 20 28 D7
LDA $E2,x               ; $27:CED3: B5 E2
XBA                     ; $27:CED5: EB
LDA $05C9,x             ; $27:CED6: BD C9 05
REP #$30                ; $27:CED9: C2 30
SEC                     ; $27:CEDB: 38
SBC $0210               ; $27:CEDC: ED 10 02
STA $D8                 ; $27:CEDF: 85 D8
CLC                     ; $27:CEE1: 18
ADC #$0008              ; $27:CEE2: 69 08 00
STA $DA                 ; $27:CEE5: 85 DA
LDY $C6,x               ; $27:CEE7: B4 C6
LDA $06C7,x             ; $27:CEE9: BD C7 06
AND #$00FF              ; $27:CEEC: 29 FF 00
TAX                     ; $27:CEEF: AA
SEP #$20                ; $27:CEF0: E2 20
LDA.w DATA_21C7D2,x     ; $27:CEF2: BD D2 C7
STA $0803,y             ; $27:CEF5: 99 03 08
STA $0807,y             ; $27:CEF8: 99 07 08
CPX #$0000              ; $27:CEFB: E0 00 00
BEQ CODE_27CF02         ; $27:CEFE: F0 02
ORA #$40                ; $27:CF00: 09 40

CODE_27CF02:
STA $080B,y             ; $27:CF02: 99 0B 08
STA $080F,y             ; $27:CF05: 99 0F 08
TXA                     ; $27:CF08: 8A
ASL A                   ; $27:CF09: 0A
TAX                     ; $27:CF0A: AA
LDA.w DATA_21C7CA,x     ; $27:CF0B: BD CA C7
STA $0802,y             ; $27:CF0E: 99 02 08
INC A                   ; $27:CF11: 1A
STA $0806,y             ; $27:CF12: 99 06 08
LDA.w DATA_21C7CA+1,x   ; $27:CF15: BD CB C7
STA $080A,y             ; $27:CF18: 99 0A 08
INC A                   ; $27:CF1B: 1A
STA $080E,y             ; $27:CF1C: 99 0E 08
PHY                     ; $27:CF1F: 5A
REP #$20                ; $27:CF20: C2 20
LDA $9B                 ; $27:CF22: A5 9B
AND #$00FF              ; $27:CF24: 29 FF 00
TAX                     ; $27:CF27: AA
TYA                     ; $27:CF28: 98
LSR A                   ; $27:CF29: 4A
LSR A                   ; $27:CF2A: 4A
TAY                     ; $27:CF2B: A8
SEP #$20                ; $27:CF2C: E2 20
LDA $D9                 ; $27:CF2E: A5 D9
AND #$01                ; $27:CF30: 29 01
STA $0A20,y             ; $27:CF32: 99 20 0A
STA $0A21,y             ; $27:CF35: 99 21 0A
LDA $DB                 ; $27:CF38: A5 DB
AND #$01                ; $27:CF3A: 29 01
STA $0A22,y             ; $27:CF3C: 99 22 0A
STA $0A23,y             ; $27:CF3F: 99 23 0A
PLY                     ; $27:CF42: 7A
JSR CODE_27CF49         ; $27:CF43: 20 49 CF
SEP #$10                ; $27:CF46: E2 10
RTS                     ; $27:CF48: 60

CODE_27CF49:
JSR CODE_27CE16         ; $27:CF49: 20 16 CE
LDA $0801,y             ; $27:CF4C: B9 01 08
STA $0809,y             ; $27:CF4F: 99 09 08
CLC                     ; $27:CF52: 18
ADC #$08                ; $27:CF53: 69 08
STA $0805,y             ; $27:CF55: 99 05 08
STA $080D,y             ; $27:CF58: 99 0D 08
LDA $0800,y             ; $27:CF5B: B9 00 08
STA $0804,y             ; $27:CF5E: 99 04 08
CLC                     ; $27:CF61: 18
ADC #$08                ; $27:CF62: 69 08
STA $0808,y             ; $27:CF64: 99 08 08
STA $080C,y             ; $27:CF67: 99 0C 08
RTS                     ; $27:CF6A: 60

CODE_27CF6B:
LDA $9C                 ; $27:CF6B: A5 9C
BNE CODE_27CF7D         ; $27:CF6D: D0 0E
LDA $06C7,x             ; $27:CF6F: BD C7 06
BEQ CODE_27CF7A         ; $27:CF72: F0 06
JSR CODE_27CC1B         ; $27:CF74: 20 1B CC
JMP CODE_27CF7D         ; $27:CF77: 4C 7D CF

CODE_27CF7A:
JSR CODE_27D7E3         ; $27:CF7A: 20 E3 D7

CODE_27CF7D:
JSR CODE_27D728         ; $27:CF7D: 20 28 D7
LDA $E2,x               ; $27:CF80: B5 E2
XBA                     ; $27:CF82: EB
LDA $05C9,x             ; $27:CF83: BD C9 05
REP #$20                ; $27:CF86: C2 20
SEC                     ; $27:CF88: 38
SBC $0210               ; $27:CF89: ED 10 02
STA $D8                 ; $27:CF8C: 85 D8
CLC                     ; $27:CF8E: 18
ADC #$0008              ; $27:CF8F: 69 08 00
STA $DA                 ; $27:CF92: 85 DA
SEP #$20                ; $27:CF94: E2 20
REP #$10                ; $27:CF96: C2 10
LDY $C6,x               ; $27:CF98: B4 C6
LDA #$94                ; $27:CF9A: A9 94
STA $0802,y             ; $27:CF9C: 99 02 08
STA $080A,y             ; $27:CF9F: 99 0A 08
INC A                   ; $27:CFA2: 1A
STA $0806,y             ; $27:CFA3: 99 06 08
STA $080E,y             ; $27:CFA6: 99 0E 08
JSR CODE_27CF49         ; $27:CFA9: 20 49 CF
LDA $0565               ; $27:CFAC: AD 65 05
LSR A                   ; $27:CFAF: 4A
LSR A                   ; $27:CFB0: 4A
LSR A                   ; $27:CFB1: 4A
ROR A                   ; $27:CFB2: 6A
AND #$80                ; $27:CFB3: 29 80
ORA #$2A                ; $27:CFB5: 09 2A
STA $0803,y             ; $27:CFB7: 99 03 08
STA $0807,y             ; $27:CFBA: 99 07 08
EOR #$C0                ; $27:CFBD: 49 C0
STA $080B,y             ; $27:CFBF: 99 0B 08
STA $080F,y             ; $27:CFC2: 99 0F 08
AND #$80                ; $27:CFC5: 29 80
BEQ CODE_27CFD7         ; $27:CFC7: F0 0E
LDA $080A,y             ; $27:CFC9: B9 0A 08
PHA                     ; $27:CFCC: 48
LDA $080E,y             ; $27:CFCD: B9 0E 08
STA $080A,y             ; $27:CFD0: 99 0A 08
PLA                     ; $27:CFD3: 68
STA $080E,y             ; $27:CFD4: 99 0E 08

CODE_27CFD7:
LDA $0803,y             ; $27:CFD7: B9 03 08
AND #$80                ; $27:CFDA: 29 80
BEQ CODE_27CFEC         ; $27:CFDC: F0 0E
LDA $0802,y             ; $27:CFDE: B9 02 08
PHA                     ; $27:CFE1: 48
LDA $0806,y             ; $27:CFE2: B9 06 08
STA $0802,y             ; $27:CFE5: 99 02 08
PLA                     ; $27:CFE8: 68
STA $0806,y             ; $27:CFE9: 99 06 08

CODE_27CFEC:
REP #$20                ; $27:CFEC: C2 20
TYA                     ; $27:CFEE: 98
LSR A                   ; $27:CFEF: 4A
LSR A                   ; $27:CFF0: 4A
TAY                     ; $27:CFF1: A8
SEP #$20                ; $27:CFF2: E2 20
LDA $D9                 ; $27:CFF4: A5 D9
AND #$01                ; $27:CFF6: 29 01
STA $0A20,y             ; $27:CFF8: 99 20 0A
STA $0A21,y             ; $27:CFFB: 99 21 0A
LDA $DB                 ; $27:CFFE: A5 DB
AND #$01                ; $27:D000: 29 01
STA $0A22,y             ; $27:D002: 99 22 0A
STA $0A23,y             ; $27:D005: 99 23 0A
SEP #$10                ; $27:D008: E2 10
LDA $06C7,x             ; $27:D00A: BD C7 06
BNE CODE_27D012         ; $27:D00D: D0 03
JMP CODE_27D302         ; $27:D00F: 4C 02 D3

CODE_27D012:
RTS                     ; $27:D012: 60

CODE_27D013:
LDA $9C                 ; $27:D013: A5 9C
BEQ CODE_27D01A         ; $27:D015: F0 03
JMP CODE_27D0DC         ; $27:D017: 4C DC D0

CODE_27D01A:
LDA $06C7,x             ; $27:D01A: BD C7 06
BNE CODE_27D022         ; $27:D01D: D0 03
JMP CODE_27D0AE         ; $27:D01F: 4C AE D0

CODE_27D022:
BPL CODE_27D02A         ; $27:D022: 10 06
JSR CODE_27CC1B         ; $27:D024: 20 1B CC
JMP CODE_27D0DC         ; $27:D027: 4C DC D0

CODE_27D02A:
LDY $0553               ; $27:D02A: AC 53 05
BNE CODE_27D04F         ; $27:D02D: D0 20
LDY $0575               ; $27:D02F: AC 75 05
BNE CODE_27D04F         ; $27:D032: D0 1B
INC $06B6               ; $27:D034: EE B6 06
CMP #$05                ; $27:D037: C9 05
BCS CODE_27D044         ; $27:D039: B0 09
LDA $15                 ; $27:D03B: A5 15
AND #$0F                ; $27:D03D: 29 0F
BNE CODE_27D044         ; $27:D03F: D0 03
INC $06C7,x             ; $27:D041: FE C7 06

CODE_27D044:
LDA $18                 ; $27:D044: A5 18
AND #$FF                ; $27:D046: 29 FF
BEQ CODE_27D065         ; $27:D048: F0 1B
DEC $06C7,x             ; $27:D04A: DE C7 06
BNE CODE_27D065         ; $27:D04D: D0 16

CODE_27D04F:
LDA #$FF                ; $27:D04F: A9 FF
STA $06C7,x             ; $27:D051: 9D C7 06
LDA #$E0                ; $27:D054: A9 E0
STA $05D3,x             ; $27:D056: 9D D3 05
LDA #$08                ; $27:D059: A9 08
LDY $0783,x             ; $27:D05B: BC 83 07
BPL CODE_27D062         ; $27:D05E: 10 02
LDA #$F8                ; $27:D060: A9 F8

CODE_27D062:
STA $05DD,x             ; $27:D062: 9D DD 05

CODE_27D065:
INC $06BD,x             ; $27:D065: FE BD 06
LDA $06BD,x             ; $27:D068: BD BD 06
LSR A                   ; $27:D06B: 4A
LSR A                   ; $27:D06C: 4A
AND #$1F                ; $27:D06D: 29 1F
CMP #$10                ; $27:D06F: C9 10
AND #$0F                ; $27:D071: 29 0F
BCC CODE_27D079         ; $27:D073: 90 04
EOR #$0F                ; $27:D075: 49 0F
ADC #$00                ; $27:D077: 69 00

CODE_27D079:
CLC                     ; $27:D079: 18
LDY $056F               ; $27:D07A: AC 6F 05
BNE CODE_27D083         ; $27:D07D: D0 04
LDY $BB                 ; $27:D07F: A4 BB
BNE CODE_27D087         ; $27:D081: D0 04

CODE_27D083:
LSR A                   ; $27:D083: 4A
CLC                     ; $27:D084: 18
ADC #$08                ; $27:D085: 69 08

CODE_27D087:
ADC $70                 ; $27:D087: 65 70
STA $05BF,x             ; $27:D089: 9D BF 05
LDA $55                 ; $27:D08C: A5 55
ADC #$00                ; $27:D08E: 69 00
STA $1FD7,x             ; $27:D090: 9D D7 1F
LDA $06BD,x             ; $27:D093: BD BD 06
AND #$1F                ; $27:D096: 29 1F
CMP #$10                ; $27:D098: C9 10
AND #$0F                ; $27:D09A: 29 0F
BCC CODE_27D0A2         ; $27:D09C: 90 04
EOR #$0F                ; $27:D09E: 49 0F
ADC #$00                ; $27:D0A0: 69 00

CODE_27D0A2:
SEC                     ; $27:D0A2: 38
SBC #$03                ; $27:D0A3: E9 03
CLC                     ; $27:D0A5: 18
ADC $5E                 ; $27:D0A6: 65 5E
STA $05C9,x             ; $27:D0A8: 9D C9 05
JMP CODE_27D0DC         ; $27:D0AB: 4C DC D0

CODE_27D0AE:
JSR CODE_27D7E3         ; $27:D0AE: 20 E3 D7
JSR CODE_27D80F         ; $27:D0B1: 20 0F D8
LDA $05D3,x             ; $27:D0B4: BD D3 05
CMP #$10                ; $27:D0B7: C9 10
BPL CODE_27D0BE         ; $27:D0B9: 10 03
INC $05D3,x             ; $27:D0BB: FE D3 05

CODE_27D0BE:
LDA $15                 ; $27:D0BE: A5 15
AND #$00                ; $27:D0C0: 29 00
BNE CODE_27D0DC         ; $27:D0C2: D0 18
LDA $06BD,x             ; $27:D0C4: BD BD 06
AND #$01                ; $27:D0C7: 29 01
TAY                     ; $27:D0C9: A8
LDA $05DD,x             ; $27:D0CA: BD DD 05
CLC                     ; $27:D0CD: 18
ADC.w DATA_21C7D6,y     ; $27:D0CE: 79 D6 C7
STA $05DD,x             ; $27:D0D1: 9D DD 05
CMP.w DATA_21C7D8,y     ; $27:D0D4: D9 D8 C7
BNE CODE_27D0DC         ; $27:D0D7: D0 03
INC $06BD,x             ; $27:D0D9: FE BD 06

CODE_27D0DC:
JSR CODE_27D728         ; $27:D0DC: 20 28 D7
BEQ CODE_27D0E4         ; $27:D0DF: F0 03
BRL CODE_27D16D         ; $27:D0E1: 82 89 00

CODE_27D0E4:
LDA $E2,x               ; $27:D0E4: B5 E2
XBA                     ; $27:D0E6: EB
LDA $05C9,x             ; $27:D0E7: BD C9 05
REP #$30                ; $27:D0EA: C2 30
SEC                     ; $27:D0EC: 38
SBC $0210               ; $27:D0ED: ED 10 02
STA $D8                 ; $27:D0F0: 85 D8
SEP #$20                ; $27:D0F2: E2 20
LDY $C6,x               ; $27:D0F4: B4 C6
LDA $06C7,x             ; $27:D0F6: BD C7 06
BEQ CODE_27D115         ; $27:D0F9: F0 1A
BMI CODE_27D115         ; $27:D0FB: 30 18
TXA                     ; $27:D0FD: 8A
ASL A                   ; $27:D0FE: 0A
ASL A                   ; $27:D0FF: 0A
ASL A                   ; $27:D100: 0A
ASL A                   ; $27:D101: 0A
EOR $06BD,x             ; $27:D102: 5D BD 06
AND #$10                ; $27:D105: 29 10
BEQ CODE_27D115         ; $27:D107: F0 0C
PHX                     ; $27:D109: DA
REP #$20                ; $27:D10A: C2 20
TXA                     ; $27:D10C: 8A
ASL A                   ; $27:D10D: 0A
TAX                     ; $27:D10E: AA
SEP #$20                ; $27:D10F: E2 20
LDY.w DATA_21C7DA,x     ; $27:D111: BC DA C7
PLX                     ; $27:D114: FA

CODE_27D115:
JSR CODE_27CE16         ; $27:D115: 20 16 CE
LDA $0800,y             ; $27:D118: B9 00 08
STA $0804,y             ; $27:D11B: 99 04 08
LDA $0801,y             ; $27:D11E: B9 01 08
STA $0805,y             ; $27:D121: 99 05 08
LDA #$FE                ; $27:D124: A9 FE
STA $0802,y             ; $27:D126: 99 02 08
INC A                   ; $27:D129: 1A
STA $0806,y             ; $27:D12A: 99 06 08
LDX #$0002              ; $27:D12D: A2 02 00
LDA $0565               ; $27:D130: AD 65 05
AND #$08                ; $27:D133: 29 08
BEQ CODE_27D13A         ; $27:D135: F0 03
LDX #$0042              ; $27:D137: A2 42 00

CODE_27D13A:
TXA                     ; $27:D13A: 8A
ORA #$20                ; $27:D13B: 09 20
STA $0803,y             ; $27:D13D: 99 03 08
STA $0807,y             ; $27:D140: 99 07 08
PHY                     ; $27:D143: 5A
REP #$20                ; $27:D144: C2 20
TYA                     ; $27:D146: 98
LSR A                   ; $27:D147: 4A
LSR A                   ; $27:D148: 4A
TAY                     ; $27:D149: A8
SEP #$20                ; $27:D14A: E2 20
LDA $D9                 ; $27:D14C: A5 D9
AND #$01                ; $27:D14E: 29 01
STA $0A20,y             ; $27:D150: 99 20 0A
STA $0A21,y             ; $27:D153: 99 21 0A
PLY                     ; $27:D156: 7A
REP #$20                ; $27:D157: C2 20
LDA $9B                 ; $27:D159: A5 9B
TAX                     ; $27:D15B: AA
SEP #$20                ; $27:D15C: E2 20
LDA $06C7,x             ; $27:D15E: BD C7 06
BEQ CODE_27D170         ; $27:D161: F0 0D
BPL CODE_27D16D         ; $27:D163: 10 08
LDA #$A6                ; $27:D165: A9 A6
STA $0803,y             ; $27:D167: 99 03 08
STA $0807,y             ; $27:D16A: 99 07 08

CODE_27D16D:
SEP #$10                ; $27:D16D: E2 10
RTS                     ; $27:D16F: 60

CODE_27D170:
SEP #$10                ; $27:D170: E2 10
JMP CODE_27D302         ; $27:D172: 4C 02 D3

CODE_27D175:
LDA $9C                 ; $27:D175: A5 9C
BEQ CODE_27D17C         ; $27:D177: F0 03
JMP CODE_27D231         ; $27:D179: 4C 31 D2

CODE_27D17C:
LDA $06C7,x             ; $27:D17C: BD C7 06
AND #$0F                ; $27:D17F: 29 0F
BNE CODE_27D186         ; $27:D181: D0 03
BRL CODE_27D22B         ; $27:D183: 82 A5 00

CODE_27D186:
DEC $06C7,x             ; $27:D186: DE C7 06
LDA $1FC8,x             ; $27:D189: BD C8 1F
CMP #$01                ; $27:D18C: C9 01
BNE CODE_27D19C         ; $27:D18E: D0 0C
LDA $06C7,x             ; $27:D190: BD C7 06
AND #$0F                ; $27:D193: 29 0F
BNE CODE_27D19C         ; $27:D195: D0 05
LDA #$37                ; $27:D197: A9 37
STA $1200               ; $27:D199: 8D 00 12

CODE_27D19C:
LDA $06C7,x             ; $27:D19C: BD C7 06
LSR A                   ; $27:D19F: 4A
LSR A                   ; $27:D1A0: 4A
LSR A                   ; $27:D1A1: 4A
LSR A                   ; $27:D1A2: 4A
TAY                     ; $27:D1A3: A8
STY $01                 ; $27:D1A4: 84 01
LDA $0661,y             ; $27:D1A6: B9 61 06
CMP #$02                ; $27:D1A9: C9 02
BNE CODE_27D1B4         ; $27:D1AB: D0 07
LDA $0651,y             ; $27:D1AD: B9 51 06
AND #$C0                ; $27:D1B0: 29 C0
BEQ CODE_27D1B7         ; $27:D1B2: F0 03

CODE_27D1B4:
JMP CODE_27D37F         ; $27:D1B4: 4C 7F D3

CODE_27D1B7:
LDA $0679,y             ; $27:D1B7: B9 79 06
AND #$40                ; $27:D1BA: 29 40
STA $02                 ; $27:D1BC: 85 02
ASL A                   ; $27:D1BE: 0A
ASL A                   ; $27:D1BF: 0A
ROL A                   ; $27:D1C0: 2A
AND #$01                ; $27:D1C1: 29 01
STA $00                 ; $27:D1C3: 85 00
LDA $1FC8,x             ; $27:D1C5: BD C8 1F
CMP #$01                ; $27:D1C8: C9 01
BEQ CODE_27D1D0         ; $27:D1CA: F0 04
INC $00                 ; $27:D1CC: E6 00
INC $00                 ; $27:D1CE: E6 00

CODE_27D1D0:
LDA $0671,y             ; $27:D1D0: B9 71 06
CMP #$86                ; $27:D1D3: C9 86
BNE CODE_27D1DE         ; $27:D1D5: D0 07
LDA $00                 ; $27:D1D7: A5 00
CLC                     ; $27:D1D9: 18
ADC #$04                ; $27:D1DA: 69 04
STA $00                 ; $27:D1DC: 85 00

CODE_27D1DE:
LDA $005F,y             ; $27:D1DE: B9 5F 00
LDY $00                 ; $27:D1E1: A4 00
CLC                     ; $27:D1E3: 18
ADC.w DATA_21C7EE,y     ; $27:D1E4: 79 EE C7
STA $05C9,x             ; $27:D1E7: 9D C9 05
LDY $00                 ; $27:D1EA: A4 00
STZ $DD                 ; $27:D1EC: 64 DD
LDA.w DATA_21C7F4,y     ; $27:D1EE: B9 F4 C7
STA $DC                 ; $27:D1F1: 85 DC
BPL CODE_27D1F7         ; $27:D1F3: 10 02
DEC $DD                 ; $27:D1F5: C6 DD

CODE_27D1F7:
LDY $01                 ; $27:D1F7: A4 01
LDA $0056,y             ; $27:D1F9: B9 56 00
XBA                     ; $27:D1FC: EB
LDA $0071,y             ; $27:D1FD: B9 71 00
REP #$20                ; $27:D200: C2 20
CLC                     ; $27:D202: 18
ADC $DC                 ; $27:D203: 65 DC
SEP #$20                ; $27:D205: E2 20
STA $05BF,x             ; $27:D207: 9D BF 05
XBA                     ; $27:D20A: EB
STA $1FD7,x             ; $27:D20B: 9D D7 1F
LDA #$00                ; $27:D20E: A9 00
LDY $05DD,x             ; $27:D210: BC DD 05
BMI CODE_27D217         ; $27:D213: 30 02
LDA #$40                ; $27:D215: A9 40

CODE_27D217:
CMP $02                 ; $27:D217: C5 02
BEQ CODE_27D228         ; $27:D219: F0 0D
LDA $05DD,x             ; $27:D21B: BD DD 05

; Invert Accumulator (8-bit)
JSL CODE_27A859         ; $27:D21E: 22 59 A8 27
STA $05DD,x             ; $27:D222: 9D DD 05
INC $0597,x             ; $27:D225: FE 97 05

CODE_27D228:
JMP CODE_27D231         ; $27:D228: 4C 31 D2

CODE_27D22B:
INC $06BD,x             ; $27:D22B: FE BD 06
JSR CODE_27CC1B         ; $27:D22E: 20 1B CC

CODE_27D231:
JSR CODE_27D728         ; $27:D231: 20 28 D7
BEQ CODE_27D237         ; $27:D234: F0 01
RTS                     ; $27:D236: 60

CODE_27D237:
STY $01                 ; $27:D237: 84 01
LDA $05DD,x             ; $27:D239: BD DD 05
LDY $1FC8,x             ; $27:D23C: BC C8 1F
CPY #$01                ; $27:D23F: C0 01
BEQ CODE_27D245         ; $27:D241: F0 02
EOR #$80                ; $27:D243: 49 80

CODE_27D245:
LSR A                   ; $27:D245: 4A
AND #$40                ; $27:D246: 29 40
STA $00                 ; $27:D248: 85 00
CPY #$01                ; $27:D24A: C0 01
BNE CODE_27D256         ; $27:D24C: D0 08
LDY $01                 ; $27:D24E: A4 01
JSR CODE_27D395         ; $27:D250: 20 95 D3
JMP CODE_27D2F0         ; $27:D253: 4C F0 D2

CODE_27D256:
LDA $E2,x               ; $27:D256: B5 E2
XBA                     ; $27:D258: EB
LDA $05C9,x             ; $27:D259: BD C9 05
REP #$30                ; $27:D25C: C2 30
SEC                     ; $27:D25E: 38
SBC $0210               ; $27:D25F: ED 10 02
STA $D8                 ; $27:D262: 85 D8
CLC                     ; $27:D264: 18
ADC #$0008              ; $27:D265: 69 08 00
STA $DA                 ; $27:D268: 85 DA
LDY $C6,x               ; $27:D26A: B4 C6
LDA $06BD,x             ; $27:D26C: BD BD 06
AND #$000C              ; $27:D26F: 29 0C 00
LSR A                   ; $27:D272: 4A
LSR A                   ; $27:D273: 4A
TAX                     ; $27:D274: AA
SEP #$20                ; $27:D275: E2 20
LDA $00                 ; $27:D277: A5 00
EOR.w DATA_21C81C,x     ; $27:D279: 5D 1C C8
ORA #$23                ; $27:D27C: 09 23
STA $0803,y             ; $27:D27E: 99 03 08
STA $0807,y             ; $27:D281: 99 07 08
STA $080B,y             ; $27:D284: 99 0B 08
STA $080F,y             ; $27:D287: 99 0F 08
LDA $00                 ; $27:D28A: A5 00
BEQ CODE_27D290         ; $27:D28C: F0 02
INX                     ; $27:D28E: E8
INX                     ; $27:D28F: E8

CODE_27D290:
REP #$20                ; $27:D290: C2 20
TXA                     ; $27:D292: 8A
AND #$0003              ; $27:D293: 29 03 00
TAX                     ; $27:D296: AA
SEP #$20                ; $27:D297: E2 20
LDA.w DATA_21C820,x     ; $27:D299: BD 20 C8
STA $0802,y             ; $27:D29C: 99 02 08
INC A                   ; $27:D29F: 1A
STA $0806,y             ; $27:D2A0: 99 06 08
LDA.w DATA_21C822,x     ; $27:D2A3: BD 22 C8
STA $080A,y             ; $27:D2A6: 99 0A 08
INC A                   ; $27:D2A9: 1A
STA $080E,y             ; $27:D2AA: 99 0E 08
LDA $0803,y             ; $27:D2AD: B9 03 08
AND #$80                ; $27:D2B0: 29 80
BEQ CODE_27D2D0         ; $27:D2B2: F0 1C
LDA $0802,y             ; $27:D2B4: B9 02 08
PHA                     ; $27:D2B7: 48
LDA $0806,y             ; $27:D2B8: B9 06 08
STA $0802,y             ; $27:D2BB: 99 02 08
PLA                     ; $27:D2BE: 68
STA $0806,y             ; $27:D2BF: 99 06 08
LDA $080A,y             ; $27:D2C2: B9 0A 08
PHA                     ; $27:D2C5: 48
LDA $080E,y             ; $27:D2C6: B9 0E 08
STA $080A,y             ; $27:D2C9: 99 0A 08
PLA                     ; $27:D2CC: 68
STA $080E,y             ; $27:D2CD: 99 0E 08

CODE_27D2D0:
PHY                     ; $27:D2D0: 5A
REP #$20                ; $27:D2D1: C2 20
TYA                     ; $27:D2D3: 98
LSR A                   ; $27:D2D4: 4A
LSR A                   ; $27:D2D5: 4A
TAY                     ; $27:D2D6: A8
SEP #$20                ; $27:D2D7: E2 20
LDA $D9                 ; $27:D2D9: A5 D9
AND #$01                ; $27:D2DB: 29 01
STA $0A20,y             ; $27:D2DD: 99 20 0A
STA $0A21,y             ; $27:D2E0: 99 21 0A
LDA $DB                 ; $27:D2E3: A5 DB
AND #$01                ; $27:D2E5: 29 01
STA $0A22,y             ; $27:D2E7: 99 22 0A
STA $0A23,y             ; $27:D2EA: 99 23 0A
PLY                     ; $27:D2ED: 7A
SEP #$10                ; $27:D2EE: E2 10

CODE_27D2F0:
LDX $9B                 ; $27:D2F0: A6 9B
REP #$10                ; $27:D2F2: C2 10
LDY $C6,x               ; $27:D2F4: B4 C6
JSR CODE_27CF49         ; $27:D2F6: 20 49 CF
SEP #$10                ; $27:D2F9: E2 10
LDA $06C7,x             ; $27:D2FB: BD C7 06
AND #$0F                ; $27:D2FE: 29 0F
BNE CODE_27D357         ; $27:D300: D0 55

CODE_27D302:
TXA                     ; $27:D302: 8A
CLC                     ; $27:D303: 18
ADC $15                 ; $27:D304: 65 15
LSR A                   ; $27:D306: 4A
BCC CODE_27D357         ; $27:D307: 90 4E
LDY #$00                ; $27:D309: A0 00
LDA $BB                 ; $27:D30B: A5 BB
BEQ CODE_27D315         ; $27:D30D: F0 06
LDA $056F               ; $27:D30F: AD 6F 05
BNE CODE_27D315         ; $27:D312: D0 01
INY                     ; $27:D314: C8

CODE_27D315:
LDA $05BF,x             ; $27:D315: BD BF 05
CLC                     ; $27:D318: 18
ADC #$08                ; $27:D319: 69 08
SEC                     ; $27:D31B: 38
SBC $70                 ; $27:D31C: E5 70
SEC                     ; $27:D31E: 38
SBC.w DATA_21C7FA,y     ; $27:D31F: F9 FA C7
CMP.w DATA_21C7FC,y     ; $27:D322: D9 FC C7
BCS CODE_27D384         ; $27:D325: B0 5D
LDA $05C9,x             ; $27:D327: BD C9 05
CLC                     ; $27:D32A: 18
ADC #$06                ; $27:D32B: 69 06
SEC                     ; $27:D32D: 38
SBC $5E                 ; $27:D32E: E5 5E
SBC #$00                ; $27:D330: E9 00
CMP #$10                ; $27:D332: C9 10
BCS CODE_27D384         ; $27:D334: B0 4E

CODE_27D336:
LDA $0552               ; $27:D336: AD 52 05
ORA $057A               ; $27:D339: 0D 7A 05
ORA $9C                 ; $27:D33C: 05 9C
ORA $00BF               ; $27:D33E: 0D BF 00
ORA $0583               ; $27:D341: 0D 83 05
ORA $0587               ; $27:D344: 0D 87 05
ORA $0D                 ; $27:D347: 05 0D
BNE CODE_27D384         ; $27:D349: D0 39
LDA $1FC8,x             ; $27:D34B: BD C8 1F
CMP #$06                ; $27:D34E: C9 06
BNE CODE_27D358         ; $27:D350: D0 06
LDA #$05                ; $27:D352: A9 05
STA $06C7,x             ; $27:D354: 9D C7 06

CODE_27D357:
RTS                     ; $27:D357: 60

CODE_27D358:
CMP #$10                ; $27:D358: C9 10
BNE CODE_27D375         ; $27:D35A: D0 19
INC $07BE               ; $27:D35C: EE BE 07
LDA #$01                ; $27:D35F: A9 01
STA $02D9               ; $27:D361: 8D D9 02
LDA #$0B                ; $27:D364: A9 0B

; Doomship wand obtained music
STA $1202               ; $27:D366: 8D 02 12
LDA #$60                ; $27:D369: A9 60
STA $02E3               ; $27:D36B: 8D E3 02
LDA #$01                ; $27:D36E: A9 01
STA $02E4               ; $27:D370: 8D E4 02
BRA CODE_27D37F         ; $27:D373: 80 0A

CODE_27D375:
LDA $0553               ; $27:D375: AD 53 05
BNE CODE_27D385         ; $27:D378: D0 0B
JSL CODE_27A4C6         ; $27:D37A: 22 C6 A4 27
RTS                     ; $27:D37E: 60

CODE_27D37F:
LDA #$00                ; $27:D37F: A9 00
STA $1FC8,x             ; $27:D381: 9D C8 1F

CODE_27D384:
RTS                     ; $27:D384: 60

CODE_27D385:
LDA #$03                ; $27:D385: A9 03
STA $1200               ; $27:D387: 8D 00 12

CODE_27D38A:
LDA #$16                ; $27:D38A: A9 16
STA $1FC8,x             ; $27:D38C: 9D C8 1F
LDA #$1F                ; $27:D38F: A9 1F
STA $06C7,x             ; $27:D391: 9D C7 06
RTS                     ; $27:D394: 60

CODE_27D395:
LDA $E2,x               ; $27:D395: B5 E2
XBA                     ; $27:D397: EB
LDA $05C9,x             ; $27:D398: BD C9 05
REP #$30                ; $27:D39B: C2 30
SEC                     ; $27:D39D: 38
SBC $0210               ; $27:D39E: ED 10 02
STA $D8                 ; $27:D3A1: 85 D8
CLC                     ; $27:D3A3: 18
ADC #$0008              ; $27:D3A4: 69 08 00
STA $DA                 ; $27:D3A7: 85 DA
LDY $C6,x               ; $27:D3A9: B4 C6
LDA $06BD,x             ; $27:D3AB: BD BD 06
AND #$001C              ; $27:D3AE: 29 1C 00
LSR A                   ; $27:D3B1: 4A
LSR A                   ; $27:D3B2: 4A
TAX                     ; $27:D3B3: AA
SEP #$20                ; $27:D3B4: E2 20
LDA $D9                 ; $27:D3B6: A5 D9
STA $DC                 ; $27:D3B8: 85 DC
LDA $DB                 ; $27:D3BA: A5 DB
STA $DD                 ; $27:D3BC: 85 DD
LDA $00                 ; $27:D3BE: A5 00
EOR.w DATA_21C800,x     ; $27:D3C0: 5D 00 C8
ORA #$21                ; $27:D3C3: 09 21
STA $0803,y             ; $27:D3C5: 99 03 08
STA $0807,y             ; $27:D3C8: 99 07 08
STA $080B,y             ; $27:D3CB: 99 0B 08
STA $080F,y             ; $27:D3CE: 99 0F 08
LDA $00                 ; $27:D3D1: A5 00
BEQ CODE_27D3D9         ; $27:D3D3: F0 04
INX                     ; $27:D3D5: E8
INX                     ; $27:D3D6: E8
INX                     ; $27:D3D7: E8
INX                     ; $27:D3D8: E8

CODE_27D3D9:
REP #$20                ; $27:D3D9: C2 20
TXA                     ; $27:D3DB: 8A
AND #$0007              ; $27:D3DC: 29 07 00
TAX                     ; $27:D3DF: AA
SEP #$20                ; $27:D3E0: E2 20
LDA.w DATA_21C808,x     ; $27:D3E2: BD 08 C8
STA $D8                 ; $27:D3E5: 85 D8
INC A                   ; $27:D3E7: 1A
STA $D9                 ; $27:D3E8: 85 D9
LDA.w DATA_21C80C,x     ; $27:D3EA: BD 0C C8
STA $DA                 ; $27:D3ED: 85 DA
INC A                   ; $27:D3EF: 1A
STA $DB                 ; $27:D3F0: 85 DB
LDA $0803,y             ; $27:D3F2: B9 03 08
AND #$80                ; $27:D3F5: 29 80
BEQ CODE_27D40D         ; $27:D3F7: F0 14
LDA $D8                 ; $27:D3F9: A5 D8
PHA                     ; $27:D3FB: 48
LDA $D9                 ; $27:D3FC: A5 D9
STA $D8                 ; $27:D3FE: 85 D8
PLA                     ; $27:D400: 68
STA $D9                 ; $27:D401: 85 D9
LDA $DA                 ; $27:D403: A5 DA
PHA                     ; $27:D405: 48
LDA $DB                 ; $27:D406: A5 DB
STA $DA                 ; $27:D408: 85 DA
PLA                     ; $27:D40A: 68
STA $DB                 ; $27:D40B: 85 DB

CODE_27D40D:
LDA $D8                 ; $27:D40D: A5 D8
STA $0802,y             ; $27:D40F: 99 02 08
LDA $D9                 ; $27:D412: A5 D9
STA $0806,y             ; $27:D414: 99 06 08
LDA $DA                 ; $27:D417: A5 DA
STA $080A,y             ; $27:D419: 99 0A 08
LDA $DB                 ; $27:D41C: A5 DB
STA $080E,y             ; $27:D41E: 99 0E 08
PHY                     ; $27:D421: 5A
REP #$20                ; $27:D422: C2 20
TYA                     ; $27:D424: 98
LSR A                   ; $27:D425: 4A
LSR A                   ; $27:D426: 4A
TAY                     ; $27:D427: A8
SEP #$20                ; $27:D428: E2 20
LDA $DC                 ; $27:D42A: A5 DC
AND #$01                ; $27:D42C: 29 01
STA $0A20,y             ; $27:D42E: 99 20 0A
STA $0A21,y             ; $27:D431: 99 21 0A
LDA $DD                 ; $27:D434: A5 DD
AND #$01                ; $27:D436: 29 01
STA $0A22,y             ; $27:D438: 99 22 0A
STA $0A23,y             ; $27:D43B: 99 23 0A
PLY                     ; $27:D43E: 7A
SEP #$10                ; $27:D43F: E2 10
RTS                     ; $27:D441: 60

CODE_27D442:
LDA $9C                 ; $27:D442: A5 9C
BEQ CODE_27D449         ; $27:D444: F0 03
JMP CODE_27D231         ; $27:D446: 4C 31 D2

CODE_27D449:
LDA $06C7,x             ; $27:D449: BD C7 06
AND #$0F                ; $27:D44C: 29 0F
BEQ CODE_27D453         ; $27:D44E: F0 03
JMP CODE_27D186         ; $27:D450: 4C 86 D1

CODE_27D453:
INC $06BD,x             ; $27:D453: FE BD 06
LDA $15                 ; $27:D456: A5 15
AND #$0A                ; $27:D458: 29 0A
BNE CODE_27D461         ; $27:D45A: D0 05
LDA #$48                ; $27:D45C: A9 48
STA $1203               ; $27:D45E: 8D 03 12

CODE_27D461:
LDA $0597,x             ; $27:D461: BD 97 05
BMI CODE_27D492         ; $27:D464: 30 2C
LDA $06D1,x             ; $27:D466: BD D1 06
BNE CODE_27D492         ; $27:D469: D0 27
LDA $0597,x             ; $27:D46B: BD 97 05
AND #$01                ; $27:D46E: 29 01
TAY                     ; $27:D470: A8
LDA $05DD,x             ; $27:D471: BD DD 05
CLC                     ; $27:D474: 18
ADC.w DATA_21C814,y     ; $27:D475: 79 14 C8
STA $05DD,x             ; $27:D478: 9D DD 05
CMP.w DATA_21C816,y     ; $27:D47B: D9 16 C8
BNE CODE_27D492         ; $27:D47E: D0 12
LDA #$30                ; $27:D480: A9 30
STA $06D1,x             ; $27:D482: 9D D1 06
INC $0597,x             ; $27:D485: FE 97 05
LDA $05B5,x             ; $27:D488: BD B5 05
BEQ CODE_27D492         ; $27:D48B: F0 05
LDA #$FF                ; $27:D48D: A9 FF
STA $0597,x             ; $27:D48F: 9D 97 05

CODE_27D492:
LDA $15                 ; $27:D492: A5 15
LSR A                   ; $27:D494: 4A
BCS CODE_27D4B8         ; $27:D495: B0 21
LDA $05B5,x             ; $27:D497: BD B5 05
CMP #$01                ; $27:D49A: C9 01
BCC CODE_27D4A3         ; $27:D49C: 90 05
LDY $05D3,x             ; $27:D49E: BC D3 05
BEQ CODE_27D4B8         ; $27:D4A1: F0 15

CODE_27D4A3:
AND #$01                ; $27:D4A3: 29 01
TAY                     ; $27:D4A5: A8
LDA $05D3,x             ; $27:D4A6: BD D3 05
CLC                     ; $27:D4A9: 18
ADC.w DATA_21C818,y     ; $27:D4AA: 79 18 C8
STA $05D3,x             ; $27:D4AD: 9D D3 05
CMP.w DATA_21C81A,y     ; $27:D4B0: D9 1A C8
BNE CODE_27D4B8         ; $27:D4B3: D0 03
INC $05B5,x             ; $27:D4B5: FE B5 05

CODE_27D4B8:
JSR CODE_27D7E3         ; $27:D4B8: 20 E3 D7
JSR CODE_27D80F         ; $27:D4BB: 20 0F D8
JSR CODE_27D231         ; $27:D4BE: 20 31 D2
LDA $0597,x             ; $27:D4C1: BD 97 05
BPL CODE_27D507         ; $27:D4C4: 10 41
TXA                     ; $27:D4C6: 8A
CLC                     ; $27:D4C7: 18
ADC $15                 ; $27:D4C8: 65 15
LSR A                   ; $27:D4CA: 4A
BCS CODE_27D507         ; $27:D4CB: B0 3A
LDA $06C7,x             ; $27:D4CD: BD C7 06
LSR A                   ; $27:D4D0: 4A
LSR A                   ; $27:D4D1: 4A
LSR A                   ; $27:D4D2: 4A
LSR A                   ; $27:D4D3: 4A
TAY                     ; $27:D4D4: A8
LDA $0661,y             ; $27:D4D5: B9 61 06
CMP #$02                ; $27:D4D8: C9 02
BNE CODE_27D507         ; $27:D4DA: D0 2B
LDA $0671,y             ; $27:D4DC: B9 71 06
CMP #$82                ; $27:D4DF: C9 82
BNE CODE_27D507         ; $27:D4E1: D0 24
LDA $05BF,x             ; $27:D4E3: BD BF 05
CLC                     ; $27:D4E6: 18
ADC #$08                ; $27:D4E7: 69 08
SEC                     ; $27:D4E9: 38
SBC $0071,y             ; $27:D4EA: F9 71 00
SEC                     ; $27:D4ED: 38
SBC #$08                ; $27:D4EE: E9 08
CMP #$10                ; $27:D4F0: C9 10
BCS CODE_27D507         ; $27:D4F2: B0 13
LDA $05C9,x             ; $27:D4F4: BD C9 05
CLC                     ; $27:D4F7: 18
ADC #$08                ; $27:D4F8: 69 08
SEC                     ; $27:D4FA: 38
SBC $005F,y             ; $27:D4FB: F9 5F 00
SBC #$00                ; $27:D4FE: E9 00
CMP #$10                ; $27:D500: C9 10
BCS CODE_27D507         ; $27:D502: B0 03
JMP CODE_27D37F         ; $27:D504: 4C 7F D3

CODE_27D507:
RTS                     ; $27:D507: 60

CODE_27D508:
LDA $9C                 ; $27:D508: A5 9C
BEQ CODE_27D50F         ; $27:D50A: F0 03
JMP CODE_27D231         ; $27:D50C: 4C 31 D2

CODE_27D50F:
LDA $06C7,x             ; $27:D50F: BD C7 06
AND #$0F                ; $27:D512: 29 0F
BEQ CODE_27D519         ; $27:D514: F0 03
JMP CODE_27D186         ; $27:D516: 4C 86 D1

CODE_27D519:
DEC $06BD,x             ; $27:D519: DE BD 06
LDY $06D1,x             ; $27:D51C: BC D1 06
BEQ CODE_27D527         ; $27:D51F: F0 06
DEY                     ; $27:D521: 88
BNE CODE_27D54A         ; $27:D522: D0 26
INC $05B5,x             ; $27:D524: FE B5 05

CODE_27D527:
LDA $15                 ; $27:D527: A5 15
AND #$00                ; $27:D529: 29 00
BNE CODE_27D54A         ; $27:D52B: D0 1D
LDA $0597,x             ; $27:D52D: BD 97 05
AND #$01                ; $27:D530: 29 01
TAY                     ; $27:D532: A8
LDA $05DD,x             ; $27:D533: BD DD 05
CLC                     ; $27:D536: 18
ADC.w DATA_21C826,y     ; $27:D537: 79 26 C8
STA $05DD,x             ; $27:D53A: 9D DD 05
CMP.w DATA_21C828,y     ; $27:D53D: D9 28 C8
BNE CODE_27D54A         ; $27:D540: D0 08
LDA #$50                ; $27:D542: A9 50
STA $06D1,x             ; $27:D544: 9D D1 06
INC $0597,x             ; $27:D547: FE 97 05

CODE_27D54A:
LDA $15                 ; $27:D54A: A5 15
AND #$03                ; $27:D54C: 29 03
BNE CODE_27D573         ; $27:D54E: D0 23
LDA $05B5,x             ; $27:D550: BD B5 05
BEQ CODE_27D573         ; $27:D553: F0 1E
CMP #$03                ; $27:D555: C9 03
BCC CODE_27D55E         ; $27:D557: 90 05
LDY $05D3,x             ; $27:D559: BC D3 05
BEQ CODE_27D573         ; $27:D55C: F0 15

CODE_27D55E:
AND #$01                ; $27:D55E: 29 01
TAY                     ; $27:D560: A8
LDA $05D3,x             ; $27:D561: BD D3 05
CLC                     ; $27:D564: 18
ADC.w DATA_21C82A,y     ; $27:D565: 79 2A C8
STA $05D3,x             ; $27:D568: 9D D3 05
CMP.w DATA_21C82C,y     ; $27:D56B: D9 2C C8
BNE CODE_27D573         ; $27:D56E: D0 03
INC $05B5,x             ; $27:D570: FE B5 05

CODE_27D573:
JMP CODE_27D4B8         ; $27:D573: 4C B8 D4

CODE_27D576:
LDA $9C                 ; $27:D576: A5 9C
BNE CODE_27D5B1         ; $27:D578: D0 37
INC $06BD,x             ; $27:D57A: FE BD 06
LDA $1FC8,x             ; $27:D57D: BD C8 1F
CMP #$05                ; $27:D580: C9 05
BEQ CODE_27D5AB         ; $27:D582: F0 27
CMP #$12                ; $27:D584: C9 12
BEQ CODE_27D5AB         ; $27:D586: F0 23
JSR CODE_27CC1B         ; $27:D588: 20 1B CC
LDA $05D3,x             ; $27:D58B: BD D3 05
CMP #$30                ; $27:D58E: C9 30
BPL CODE_27D598         ; $27:D590: 10 06
INC $05D3,x             ; $27:D592: FE D3 05
INC $05D3,x             ; $27:D595: FE D3 05

CODE_27D598:
LDA $1FC8,x             ; $27:D598: BD C8 1F
CMP #$0C                ; $27:D59B: C9 0C
BNE CODE_27D5A2         ; $27:D59D: D0 03
JSR CODE_27C442         ; $27:D59F: 20 42 C4

CODE_27D5A2:
JMP CODE_27D5B1         ; $27:D5A2: 4C B1 D5
JSR CODE_27CC1B         ; $27:D5A5: 20 1B CC
JMP CODE_27D5B1         ; $27:D5A8: 4C B1 D5

CODE_27D5AB:
JSR CODE_27D7E3         ; $27:D5AB: 20 E3 D7
JSR CODE_27D80F         ; $27:D5AE: 20 0F D8

CODE_27D5B1:
JSR CODE_27D728         ; $27:D5B1: 20 28 D7
BEQ CODE_27D5B9         ; $27:D5B4: F0 03
BRL CODE_27D671         ; $27:D5B6: 82 B8 00

CODE_27D5B9:
LDA $E2,x               ; $27:D5B9: B5 E2
XBA                     ; $27:D5BB: EB
LDA $05C9,x             ; $27:D5BC: BD C9 05
REP #$30                ; $27:D5BF: C2 30
SEC                     ; $27:D5C1: 38
SBC $0210               ; $27:D5C2: ED 10 02
STA $D8                 ; $27:D5C5: 85 D8
SEP #$20                ; $27:D5C7: E2 20
LDY $C6,x               ; $27:D5C9: B4 C6
JSR CODE_27CE16         ; $27:D5CB: 20 16 CE
LDA $0801,y             ; $27:D5CE: B9 01 08
CLC                     ; $27:D5D1: 18
ADC #$08                ; $27:D5D2: 69 08
STA $0805,y             ; $27:D5D4: 99 05 08
LDA $0800,y             ; $27:D5D7: B9 00 08
STA $0804,y             ; $27:D5DA: 99 04 08
LDA $1FC8,x             ; $27:D5DD: BD C8 1F
CMP #$12                ; $27:D5E0: C9 12
BNE CODE_27D5FA         ; $27:D5E2: D0 16
LDA $0565               ; $27:D5E4: AD 65 05
LSR A                   ; $27:D5E7: 4A
LSR A                   ; $27:D5E8: 4A
LDA #$88                ; $27:D5E9: A9 88
BCC CODE_27D5EF         ; $27:D5EB: 90 02
LDA #$8A                ; $27:D5ED: A9 8A

CODE_27D5EF:
STA $0802,y             ; $27:D5EF: 99 02 08
INC A                   ; $27:D5F2: 1A
STA $0806,y             ; $27:D5F3: 99 06 08
LDA #$2A                ; $27:D5F6: A9 2A
BRA CODE_27D634         ; $27:D5F8: 80 3A

CODE_27D5FA:
LDA $05DD,x             ; $27:D5FA: BD DD 05
LSR A                   ; $27:D5FD: 4A
AND #$40                ; $27:D5FE: 29 40
PHA                     ; $27:D600: 48
REP #$20                ; $27:D601: C2 20
LDA $06BD,x             ; $27:D603: BD BD 06
AND #$00FF              ; $27:D606: 29 FF 00
LSR A                   ; $27:D609: 4A
LSR A                   ; $27:D60A: 4A
AND #$0003              ; $27:D60B: 29 03 00
TAX                     ; $27:D60E: AA
SEP #$20                ; $27:D60F: E2 20
LDA.w DATA_21C82E,x     ; $27:D611: BD 2E C8
CPX #$0002              ; $27:D614: E0 02 00
BEQ CODE_27D627         ; $27:D617: F0 0E
CPX #$0003              ; $27:D619: E0 03 00
BEQ CODE_27D627         ; $27:D61C: F0 09
STA $0802,y             ; $27:D61E: 99 02 08
INC A                   ; $27:D621: 1A
STA $0806,y             ; $27:D622: 99 06 08
BRA CODE_27D62E         ; $27:D625: 80 07

CODE_27D627:
STA $0806,y             ; $27:D627: 99 06 08
INC A                   ; $27:D62A: 1A
STA $0802,y             ; $27:D62B: 99 02 08

CODE_27D62E:
PLA                     ; $27:D62E: 68
EOR.w DATA_21C832,x     ; $27:D62F: 5D 32 C8
ORA #$20                ; $27:D632: 09 20

CODE_27D634:
STA $0803,y             ; $27:D634: 99 03 08
STA $0807,y             ; $27:D637: 99 07 08
PHY                     ; $27:D63A: 5A
REP #$20                ; $27:D63B: C2 20
TYA                     ; $27:D63D: 98
LSR A                   ; $27:D63E: 4A
LSR A                   ; $27:D63F: 4A
TAY                     ; $27:D640: A8
SEP #$20                ; $27:D641: E2 20
LDA $D9                 ; $27:D643: A5 D9
AND #$01                ; $27:D645: 29 01
STA $0A20,y             ; $27:D647: 99 20 0A
STA $0A21,y             ; $27:D64A: 99 21 0A
PLY                     ; $27:D64D: 7A
SEP #$10                ; $27:D64E: E2 10
LDX $9B                 ; $27:D650: A6 9B
LDA $BB                 ; $27:D652: A5 BB
CMP #$06                ; $27:D654: C9 06
BNE CODE_27D66E         ; $27:D656: D0 16
LDA $056F               ; $27:D658: AD 6F 05
BEQ CODE_27D66E         ; $27:D65B: F0 11
LDA $0553               ; $27:D65D: AD 53 05
PHA                     ; $27:D660: 48
LDA #$10                ; $27:D661: A9 10
STA $0553               ; $27:D663: 8D 53 05
JSR CODE_27D302         ; $27:D666: 20 02 D3
PLA                     ; $27:D669: 68
STA $0553               ; $27:D66A: 8D 53 05
RTS                     ; $27:D66D: 60

CODE_27D66E:
JMP CODE_27D302         ; $27:D66E: 4C 02 D3

CODE_27D671:
RTS                     ; $27:D671: 60

CODE_27D672:
LDA $06C7,x             ; $27:D672: BD C7 06
BNE CODE_27D67A         ; $27:D675: D0 03
JMP CODE_27D37F         ; $27:D677: 4C 7F D3

CODE_27D67A:
CMP #$18                ; $27:D67A: C9 18
BCC CODE_27D683         ; $27:D67C: 90 05
LDA #$17                ; $27:D67E: A9 17
STA $06C7,x             ; $27:D680: 9D C7 06

CODE_27D683:
LDA $9C                 ; $27:D683: A5 9C
BNE CODE_27D68A         ; $27:D685: D0 03
DEC $06C7,x             ; $27:D687: DE C7 06

CODE_27D68A:
JSR CODE_27D728         ; $27:D68A: 20 28 D7
BNE CODE_27D671         ; $27:D68D: D0 E2
LDA $00E2,x             ; $27:D68F: BD E2 00
XBA                     ; $27:D692: EB
LDA $05C9,x             ; $27:D693: BD C9 05
REP #$30                ; $27:D696: C2 30
SEC                     ; $27:D698: 38
SBC $0210               ; $27:D699: ED 10 02
STA $00                 ; $27:D69C: 85 00
CLC                     ; $27:D69E: 18
ADC #$0008              ; $27:D69F: 69 08 00
STA $02                 ; $27:D6A2: 85 02
SEP #$20                ; $27:D6A4: E2 20
LDY $C6,x               ; $27:D6A6: B4 C6
JSR CODE_27CF49         ; $27:D6A8: 20 49 CF
LDA $0565               ; $27:D6AB: AD 65 05
LSR A                   ; $27:D6AE: 4A
LSR A                   ; $27:D6AF: 4A
LSR A                   ; $27:D6B0: 4A
ROR A                   ; $27:D6B1: 6A
AND #$80                ; $27:D6B2: 29 80
ORA #$22                ; $27:D6B4: 09 22
STA $0803,y             ; $27:D6B6: 99 03 08
STA $0807,y             ; $27:D6B9: 99 07 08
EOR #$40                ; $27:D6BC: 49 40
STA $080B,y             ; $27:D6BE: 99 0B 08
STA $080F,y             ; $27:D6C1: 99 0F 08
REP #$20                ; $27:D6C4: C2 20
LDA $06C7,x             ; $27:D6C6: BD C7 06
AND #$00FF              ; $27:D6C9: 29 FF 00
LSR A                   ; $27:D6CC: 4A
LSR A                   ; $27:D6CD: 4A
LSR A                   ; $27:D6CE: 4A
TAX                     ; $27:D6CF: AA
SEP #$20                ; $27:D6D0: E2 20
LDA.w DATA_21C836,x     ; $27:D6D2: BD 36 C8
STA $0802,y             ; $27:D6D5: 99 02 08
STA $080A,y             ; $27:D6D8: 99 0A 08
INC A                   ; $27:D6DB: 1A
STA $0806,y             ; $27:D6DC: 99 06 08
STA $080E,y             ; $27:D6DF: 99 0E 08
LDA $0803,y             ; $27:D6E2: B9 03 08
AND #$80                ; $27:D6E5: 29 80
BEQ CODE_27D705         ; $27:D6E7: F0 1C
LDA $0802,y             ; $27:D6E9: B9 02 08
PHA                     ; $27:D6EC: 48
LDA $0806,y             ; $27:D6ED: B9 06 08
STA $0802,y             ; $27:D6F0: 99 02 08
PLA                     ; $27:D6F3: 68
STA $0806,y             ; $27:D6F4: 99 06 08
LDA $080A,y             ; $27:D6F7: B9 0A 08
PHA                     ; $27:D6FA: 48
LDA $080E,y             ; $27:D6FB: B9 0E 08
STA $080A,y             ; $27:D6FE: 99 0A 08
PLA                     ; $27:D701: 68
STA $080E,y             ; $27:D702: 99 0E 08

CODE_27D705:
PHY                     ; $27:D705: 5A
REP #$20                ; $27:D706: C2 20
TYA                     ; $27:D708: 98
LSR A                   ; $27:D709: 4A
LSR A                   ; $27:D70A: 4A
TAY                     ; $27:D70B: A8
SEP #$20                ; $27:D70C: E2 20
LDA $01                 ; $27:D70E: A5 01
AND #$01                ; $27:D710: 29 01
STA $0A20,y             ; $27:D712: 99 20 0A
STA $0A21,y             ; $27:D715: 99 21 0A
LDA $03                 ; $27:D718: A5 03
AND #$01                ; $27:D71A: 29 01
STA $0A22,y             ; $27:D71C: 99 22 0A
STA $0A23,y             ; $27:D71F: 99 23 0A
PLY                     ; $27:D722: 7A
SEP #$10                ; $27:D723: E2 10
LDX $9B                 ; $27:D725: A6 9B
RTS                     ; $27:D727: 60

CODE_27D728:
REP #$10                ; $27:D728: C2 10
LDA #$07                ; $27:D72A: A9 07
STA $DA                 ; $27:D72C: 85 DA
STX $D8                 ; $27:D72E: 86 D8
STZ $D9                 ; $27:D730: 64 D9

CODE_27D732:
LDA #$00                ; $27:D732: A9 00
XBA                     ; $27:D734: EB
REP #$20                ; $27:D735: C2 20
LDA $D8                 ; $27:D737: A5 D8
AND #$00FF              ; $27:D739: 29 FF 00
ASL A                   ; $27:D73C: 0A
TAY                     ; $27:D73D: A8
LDA.w DATA_21AF6E,y     ; $27:D73E: B9 6E AF
STA $C6,x               ; $27:D741: 95 C6
TAY                     ; $27:D743: A8
SEP #$20                ; $27:D744: E2 20
LDA $D8                 ; $27:D746: A5 D8
INC A                   ; $27:D748: 1A
AND #$07                ; $27:D749: 29 07
STA $D8                 ; $27:D74B: 85 D8
LDA $0801,y             ; $27:D74D: B9 01 08
CMP $0809,y             ; $27:D750: D9 09 08
BNE CODE_27D759         ; $27:D753: D0 04
CMP #$F0                ; $27:D755: C9 F0
BEQ CODE_27D783         ; $27:D757: F0 2A

CODE_27D759:
DEC $DA                 ; $27:D759: C6 DA
BPL CODE_27D732         ; $27:D75B: 10 D5
LDY #$0080              ; $27:D75D: A0 80 00

CODE_27D760:
STY $C6,x               ; $27:D760: 94 C6
LDA $0801,y             ; $27:D762: B9 01 08
CMP $0805,y             ; $27:D765: D9 05 08
BNE CODE_27D76E         ; $27:D768: D0 04
CMP #$F0                ; $27:D76A: C9 F0
BEQ CODE_27D783         ; $27:D76C: F0 15

CODE_27D76E:
REP #$20                ; $27:D76E: C2 20
TYA                     ; $27:D770: 98
CLC                     ; $27:D771: 18
ADC #$0008              ; $27:D772: 69 08 00
TAY                     ; $27:D775: A8
SEP #$20                ; $27:D776: E2 20
CPY #$0200              ; $27:D778: C0 00 02
BNE CODE_27D760         ; $27:D77B: D0 E3
LDA #$00                ; $27:D77D: A9 00
STA $C6,x               ; $27:D77F: 95 C6
STA $C7,x               ; $27:D781: 95 C7

CODE_27D783:
SEP #$10                ; $27:D783: E2 10
LDA $0D                 ; $27:D785: A5 0D
RTS                     ; $27:D787: 60

CODE_27D788:
TXA                     ; $27:D788: 8A
EOR $15                 ; $27:D789: 45 15
AND #$01                ; $27:D78B: 29 01
TAY                     ; $27:D78D: A8
LDA.w DATA_21C77A,y     ; $27:D78E: B9 7A C7
TAY                     ; $27:D791: A8
LDA $0801,y             ; $27:D792: B9 01 08
CMP $0805,y             ; $27:D795: D9 05 08
BNE CODE_27D7A8         ; $27:D798: D0 0E
CMP $0809,y             ; $27:D79A: D9 09 08
BNE CODE_27D7A8         ; $27:D79D: D0 09
CMP $080D,y             ; $27:D79F: D9 0D 08
BNE CODE_27D7A8         ; $27:D7A2: D0 04
CMP #$F0                ; $27:D7A4: C9 F0
BEQ CODE_27D7CB         ; $27:D7A6: F0 23

CODE_27D7A8:
LDY #$00                ; $27:D7A8: A0 00

CODE_27D7AA:
LDA $0801,y             ; $27:D7AA: B9 01 08
CMP $0805,y             ; $27:D7AD: D9 05 08
BNE CODE_27D7C0         ; $27:D7B0: D0 0E
CMP $0809,y             ; $27:D7B2: D9 09 08
BNE CODE_27D7C0         ; $27:D7B5: D0 09
CMP $080D,y             ; $27:D7B7: D9 0D 08
BNE CODE_27D7C0         ; $27:D7BA: D0 04
CMP #$F0                ; $27:D7BC: C9 F0
BEQ CODE_27D7CB         ; $27:D7BE: F0 0B

CODE_27D7C0:
TYA                     ; $27:D7C0: 98
CLC                     ; $27:D7C1: 18
ADC #$10                ; $27:D7C2: 69 10
TAY                     ; $27:D7C4: A8
CPY #$40                ; $27:D7C5: C0 40
BNE CODE_27D7AA         ; $27:D7C7: D0 E1
SEC                     ; $27:D7C9: 38
RTS                     ; $27:D7CA: 60

CODE_27D7CB:
CLC                     ; $27:D7CB: 18
RTS                     ; $27:D7CC: 60

CODE_27D7CD:
LDY #$00                ; $27:D7CD: A0 00

CODE_27D7CF:
LDA $0801,y             ; $27:D7CF: B9 01 08
CMP #$F0                ; $27:D7D2: C9 F0
BEQ CODE_27D7E1         ; $27:D7D4: F0 0B
TYA                     ; $27:D7D6: 98
CLC                     ; $27:D7D7: 18
ADC #$04                ; $27:D7D8: 69 04
TAY                     ; $27:D7DA: A8
CPY #$40                ; $27:D7DB: C0 40
BNE CODE_27D7CF         ; $27:D7DD: D0 F0
SEC                     ; $27:D7DF: 38
RTS                     ; $27:D7E0: 60

CODE_27D7E1:
CLC                     ; $27:D7E1: 18
RTS                     ; $27:D7E2: 60

CODE_27D7E3:
LDA $05DD,x             ; $27:D7E3: BD DD 05
ASL A                   ; $27:D7E6: 0A
ASL A                   ; $27:D7E7: 0A
ASL A                   ; $27:D7E8: 0A
ASL A                   ; $27:D7E9: 0A
CLC                     ; $27:D7EA: 18
ADC $05AB,x             ; $27:D7EB: 7D AB 05
STA $05AB,x             ; $27:D7EE: 9D AB 05
PHP                     ; $27:D7F1: 08
LDA $05DD,x             ; $27:D7F2: BD DD 05
LSR A                   ; $27:D7F5: 4A
LSR A                   ; $27:D7F6: 4A
LSR A                   ; $27:D7F7: 4A
LSR A                   ; $27:D7F8: 4A
CMP #$08                ; $27:D7F9: C9 08
LDY #$00                ; $27:D7FB: A0 00
BCC CODE_27D802         ; $27:D7FD: 90 03
ORA #$F0                ; $27:D7FF: 09 F0
DEY                     ; $27:D801: 88

CODE_27D802:
PLP                     ; $27:D802: 28
ADC $05C9,x             ; $27:D803: 7D C9 05
STA $05C9,x             ; $27:D806: 9D C9 05
TYA                     ; $27:D809: 98
ADC $E2,x               ; $27:D80A: 75 E2
STA $E2,x               ; $27:D80C: 95 E2
RTS                     ; $27:D80E: 60

CODE_27D80F:
LDA $05D3,x             ; $27:D80F: BD D3 05
ASL A                   ; $27:D812: 0A
ASL A                   ; $27:D813: 0A
ASL A                   ; $27:D814: 0A
ASL A                   ; $27:D815: 0A
CLC                     ; $27:D816: 18
ADC $05A1,x             ; $27:D817: 7D A1 05
STA $05A1,x             ; $27:D81A: 9D A1 05
PHP                     ; $27:D81D: 08
LDA $05D3,x             ; $27:D81E: BD D3 05
LSR A                   ; $27:D821: 4A
LSR A                   ; $27:D822: 4A
LSR A                   ; $27:D823: 4A
LSR A                   ; $27:D824: 4A
CMP #$08                ; $27:D825: C9 08
LDY #$00                ; $27:D827: A0 00
BCC CODE_27D82E         ; $27:D829: 90 03
ORA #$F0                ; $27:D82B: 09 F0
DEY                     ; $27:D82D: 88

CODE_27D82E:
PLP                     ; $27:D82E: 28
ADC $05BF,x             ; $27:D82F: 7D BF 05
STA $05BF,x             ; $27:D832: 9D BF 05
TYA                     ; $27:D835: 98
ADC $1FD7,x             ; $27:D836: 7D D7 1F
STA $1FD7,x             ; $27:D839: 9D D7 1F
RTS                     ; $27:D83C: 60

CODE_27D83D:
LDA $9C                 ; $27:D83D: A5 9C
ORA $7E3973             ; $27:D83F: 0F 73 39 7E
BNE CODE_27D84F         ; $27:D843: D0 0A
LDX #$07                ; $27:D845: A2 07

CODE_27D847:
STX $9B                 ; $27:D847: 86 9B
JSR CODE_27D850         ; $27:D849: 20 50 D8
DEX                     ; $27:D84C: CA
BPL CODE_27D847         ; $27:D84D: 10 F8

CODE_27D84F:
RTS                     ; $27:D84F: 60

CODE_27D850:
LDA $1A15,x             ; $27:D850: BD 15 1A
BEQ CODE_27D84F         ; $27:D853: F0 FA
PHA                     ; $27:D855: 48
LDA $06E3,x             ; $27:D856: BD E3 06
BEQ CODE_27D85E         ; $27:D859: F0 03
DEC $06E3,x             ; $27:D85B: DE E3 06

CODE_27D85E:
LDA $1A57,x             ; $27:D85E: BD 57 1A
BEQ CODE_27D866         ; $27:D861: F0 03
DEC $1A57,x             ; $27:D863: DE 57 1A

CODE_27D866:
PLA                     ; $27:D866: 68

; ExecutePtrShort
JSL CODE_20FB1F         ; $27:D867: 22 1F FB 20
dw CODE_27D84F
dw CODE_27DBE4
dw CODE_27DBE4
dw CODE_27DB84
dw CODE_27DA57
dw CODE_27D9E9
dw CODE_27D9E9
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D8ED
dw CODE_27D897

CODE_27D897:
LDA $1A35,x             ; $27:D897: BD 35 1A
CMP $0210               ; $27:D89A: CD 10 02
LDA $1A2D,x             ; $27:D89D: BD 2D 1A


SBC $12                 ; $27:D8A0: E5 12
BNE CODE_27D8BC         ; $27:D8A2: D0 18
LDA $1A35,x             ; $27:D8A4: BD 35 1A
SEC                     ; $27:D8A7: 38
SBC $5E                 ; $27:D8A8: E5 5E
CMP #$38                ; $27:D8AA: C9 38
BCC CODE_27D8BC         ; $27:D8AC: 90 0E
CMP #$4C                ; $27:D8AE: C9 4C

; If mario is not between $38 and $4C pixels
; close to the sprite (20 pixels area), branch
BCS CODE_27D8BC         ; $27:D8B0: B0 0A
LDY #$07                ; $27:D8B2: A0 07

CODE_27D8B4:
LDA $1FC8,y             ; $27:D8B4: B9 C8 1F
BEQ CODE_27D8BD         ; $27:D8B7: F0 04
DEY                     ; $27:D8B9: 88

; Search free slot for laser sprite
; (Not regular sprite index. rather it's some other type)
; (Extended sprites maybe?)
BPL CODE_27D8B4         ; $27:D8BA: 10 F8

; return

CODE_27D8BC:
RTS                     ; $27:D8BC: 60

CODE_27D8BD:
LDA #$01                ; $27:D8BD: A9 01

; Sound effect the bowser statue laser plays
STA $1200               ; $27:D8BF: 8D 00 12
LDA #$15                ; $27:D8C2: A9 15

; Sprite: Laser sprite
STA $1FC8,y             ; $27:D8C4: 99 C8 1F
LDA $1A2D,x             ; $27:D8C7: BD 2D 1A
XBA                     ; $27:D8CA: EB
LDA $1A35,x             ; $27:D8CB: BD 35 1A
REP #$20                ; $27:D8CE: C2 20
SEC                     ; $27:D8D0: 38
SBC #$0008              ; $27:D8D1: E9 08 00
SEP #$20                ; $27:D8D4: E2 20
STA $05C9,y             ; $27:D8D6: 99 C9 05
XBA                     ; $27:D8D9: EB

; Set extended sprite X pos
STA $00E2,y             ; $27:D8DA: 99 E2 00
LDA $1A25,x             ; $27:D8DD: BD 25 1A
CLC                     ; $27:D8E0: 18
ADC #$08                ; $27:D8E1: 69 08

; Set extended sprite Y pos
STA $05BF,y             ; $27:D8E3: 99 BF 05
LDA $1A1D,x             ; $27:D8E6: BD 1D 1A
STA $1FD7,y             ; $27:D8E9: 99 D7 1F
RTS                     ; $27:D8EC: 60

CODE_27D8ED:
LDA $06E3,x             ; $27:D8ED: BD E3 06
BNE CODE_27D92C         ; $27:D8F0: D0 3A
LDA $1A35,x             ; $27:D8F2: BD 35 1A
CMP $0210               ; $27:D8F5: CD 10 02
LDA $1A2D,x             ; $27:D8F8: BD 2D 1A
SBC $12                 ; $27:D8FB: E5 12
BNE CODE_27D92C         ; $27:D8FD: D0 2D
LDA $1A35,x             ; $27:D8FF: BD 35 1A
SEC                     ; $27:D902: 38
SBC $0210               ; $27:D903: ED 10 02
CMP #$F0                ; $27:D906: C9 F0
BCS CODE_27D92C         ; $27:D908: B0 22
LDA #$87                ; $27:D90A: A9 87
STA $06E3,x             ; $27:D90C: 9D E3 06
LDA $1A15,x             ; $27:D90F: BD 15 1A
STA $00                 ; $27:D912: 85 00
CMP #$12                ; $27:D914: C9 12
BEQ CODE_27D91C         ; $27:D916: F0 04
CMP #$08                ; $27:D918: C9 08
BNE CODE_27D91F         ; $27:D91A: D0 03

CODE_27D91C:
JMP CODE_27D92D         ; $27:D91C: 4C 2D D9

CODE_27D91F:
CMP #$13                ; $27:D91F: C9 13
BCC CODE_27D926         ; $27:D921: 90 03
JMP CODE_27D98A         ; $27:D923: 4C 8A D9

CODE_27D926:
CLC                     ; $27:D926: 18
ADC #$01                ; $27:D927: 69 01
JMP CODE_27DADB         ; $27:D929: 4C DB DA

CODE_27D92C:
RTS                     ; $27:D92C: 60

CODE_27D92D:
JSR CODE_27DC85         ; $27:D92D: 20 85 DC
LDA #$B0                ; $27:D930: A9 B0
STA $0671,x             ; $27:D932: 9D 71 06
INC $1FF9,x             ; $27:D935: FE F9 1F
LDY $9B                 ; $27:D938: A4 9B
LDA $1A25,y             ; $27:D93A: B9 25 1A
STA $71,x               ; $27:D93D: 95 71
LDA $1A1D,y             ; $27:D93F: B9 1D 1A
STA $56,x               ; $27:D942: 95 56
LDA $00                 ; $27:D944: A5 00
CMP #$11                ; $27:D946: C9 11
LDA #$30                ; $27:D948: A9 30
LDY #$12                ; $27:D94A: A0 12
BCS CODE_27D952         ; $27:D94C: B0 04
LDY #$09                ; $27:D94E: A0 09
LDA #$D0                ; $27:D950: A9 D0

CODE_27D952:
STY $00                 ; $27:D952: 84 00
STA $8C,x               ; $27:D954: 95 8C
EOR #$80                ; $27:D956: 49 80
LDY $9B                 ; $27:D958: A4 9B
ASL A                   ; $27:D95A: 0A
LDA $1A35,y             ; $27:D95B: B9 35 1A
BCS CODE_27D963         ; $27:D95E: B0 03
SEC                     ; $27:D960: 38
SBC #$10                ; $27:D961: E9 10

CODE_27D963:
STA $5F,x               ; $27:D963: 95 5F
LDA $1A2D,y             ; $27:D965: B9 2D 1A
SBC #$00                ; $27:D968: E9 00
STA $44,x               ; $27:D96A: 95 44
LDA #$05                ; $27:D96C: A9 05
STA $1FE9,x             ; $27:D96E: 9D E9 1F
JSR CODE_27D9E4         ; $27:D971: 20 E4 D9
JSR CODE_27DB4E         ; $27:D974: 20 4E DB
LDA $1A25,x             ; $27:D977: BD 25 1A
SEC                     ; $27:D97A: 38
SBC $0543               ; $27:D97B: ED 43 05
CLC                     ; $27:D97E: 18
ADC #$04                ; $27:D97F: 69 04
STA $1F9F               ; $27:D981: 8D 9F 1F
ADC #$08                ; $27:D984: 69 08
STA $1FA0               ; $27:D986: 8D A0 1F
RTS                     ; $27:D989: 60

CODE_27D98A:
JSR CODE_27DC85         ; $27:D98A: 20 85 DC
LDA #$50                ; $27:D98D: A9 50
STA $0671,x             ; $27:D98F: 9D 71 06
LDA #$80                ; $27:D992: A9 80
STA $06A6,x             ; $27:D994: 9D A6 06
INC $1021,x             ; $27:D997: FE 21 10
INC $0689,x             ; $27:D99A: FE 89 06
LDY $9B                 ; $27:D99D: A4 9B
LDA $1A25,y             ; $27:D99F: B9 25 1A
SEC                     ; $27:D9A2: 38
SBC #$08                ; $27:D9A3: E9 08
STA $71,x               ; $27:D9A5: 95 71
LDA $1A1D,y             ; $27:D9A7: B9 1D 1A
SBC #$00                ; $27:D9AA: E9 00
STA $56,x               ; $27:D9AC: 95 56
LDA #$D0                ; $27:D9AE: A9 D0
STA $9E,x               ; $27:D9B0: 95 9E
LDA $00                 ; $27:D9B2: A5 00
CMP #$14                ; $27:D9B4: C9 14
LDA #$10                ; $27:D9B6: A9 10
LDY #$0B                ; $27:D9B8: A0 0B
BCS CODE_27D9BF         ; $27:D9BA: B0 03
DEY                     ; $27:D9BC: 88
LDA #$F0                ; $27:D9BD: A9 F0

CODE_27D9BF:
STY $00                 ; $27:D9BF: 84 00
STA $8C,x               ; $27:D9C1: 95 8C
ASL A                   ; $27:D9C3: 0A
LDA #$00                ; $27:D9C4: A9 00
STA $01                 ; $27:D9C6: 85 01
LDY $9B                 ; $27:D9C8: A4 9B
LDA #$08                ; $27:D9CA: A9 08
BCC CODE_27D9D2         ; $27:D9CC: 90 04
LDA #$F8                ; $27:D9CE: A9 F8
DEC $01                 ; $27:D9D0: C6 01

CODE_27D9D2:
CLC                     ; $27:D9D2: 18
ADC $1A35,y             ; $27:D9D3: 79 35 1A
STA $5F,x               ; $27:D9D6: 95 5F
LDA $1A2D,y             ; $27:D9D8: B9 2D 1A
ADC $01                 ; $27:D9DB: 65 01
STA $44,x               ; $27:D9DD: 95 44
LDA #$05                ; $27:D9DF: A9 05
STA $1FE9,x             ; $27:D9E1: 9D E9 1F

CODE_27D9E4:
LDX $9B                 ; $27:D9E4: A6 9B
JMP CODE_27DB4E         ; $27:D9E6: 4C 4E DB

CODE_27D9E9:
LDA $06E3,x             ; $27:D9E9: BD E3 06
BNE CODE_27DA4F         ; $27:D9EC: D0 61
TXA                     ; $27:D9EE: 8A
TAY                     ; $27:D9EF: A8
LDA #$70                ; $27:D9F0: A9 70
STA $06E3,y             ; $27:D9F2: 99 E3 06
INC $06DB,x             ; $27:D9F5: FE DB 06
LDA $06DB,x             ; $27:D9F8: BD DB 06
AND #$03                ; $27:D9FB: 29 03
BEQ CODE_27DA4F         ; $27:D9FD: F0 50
JSR CODE_27DC85         ; $27:D9FF: 20 85 DC
LDA $1A35,y             ; $27:DA02: B9 35 1A
STA $5F,x               ; $27:DA05: 95 5F
LDA $1A2D,y             ; $27:DA07: B9 2D 1A
STA $44,x               ; $27:DA0A: 95 44

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:DA0C: 22 37 A8 27
STY $01                 ; $27:DA10: 84 01
LDY $9B                 ; $27:DA12: A4 9B
LDA $1A15,y             ; $27:DA14: B9 15 1A
LDY #$00                ; $27:DA17: A0 00
CMP #$05                ; $27:DA19: C9 05
BNE CODE_27DA1E         ; $27:DA1B: D0 01
INY                     ; $27:DA1D: C8

CODE_27DA1E:
CPY $01                 ; $27:DA1E: C4 01
BNE CODE_27DA50         ; $27:DA20: D0 2E
LDA.w DATA_21C843,y     ; $27:DA22: B9 43 C8
STA $0679,x             ; $27:DA25: 9D 79 06
LDY $9B                 ; $27:DA28: A4 9B
LDA $1A25,y             ; $27:DA2A: B9 25 1A
SEC                     ; $27:DA2D: 38
SBC #$03                ; $27:DA2E: E9 03
STA $71,x               ; $27:DA30: 95 71
LDA $1A1D,y             ; $27:DA32: B9 1D 1A
SBC #$00                ; $27:DA35: E9 00
STA $56,x               ; $27:DA37: 95 56
LDA #$72                ; $27:DA39: A9 72
STA $0671,x             ; $27:DA3B: 9D 71 06
LDA #$01                ; $27:DA3E: A9 01
STA $1FE9,x             ; $27:DA40: 9D E9 1F
LDA #$28                ; $27:DA43: A9 28
STA $0689,x             ; $27:DA45: 9D 89 06
LDA #$FF                ; $27:DA48: A9 FF
STA $0651,x             ; $27:DA4A: 9D 51 06

CODE_27DA4D:
LDX $9B                 ; $27:DA4D: A6 9B

CODE_27DA4F:
RTS                     ; $27:DA4F: 60

CODE_27DA50:
LDA #$00                ; $27:DA50: A9 00
STA $0661,x             ; $27:DA52: 9D 61 06
BEQ CODE_27DA4D         ; $27:DA55: F0 F6

CODE_27DA57:
LDA $1A57,x             ; $27:DA57: BD 57 1A
BNE CODE_27DA92         ; $27:DA5A: D0 36
LDA #$3D                ; $27:DA5C: A9 3D
STA $1A57,x             ; $27:DA5E: 9D 57 1A
LDA $1A25,x             ; $27:DA61: BD 25 1A
CMP $0543               ; $27:DA64: CD 43 05
LDA $1A1D,x             ; $27:DA67: BD 1D 1A
SBC $0542               ; $27:DA6A: ED 42 05
BNE CODE_27DAC4         ; $27:DA6D: D0 55
LDA $1A35,x             ; $27:DA6F: BD 35 1A
CMP $0210               ; $27:DA72: CD 10 02
LDA $1A2D,x             ; $27:DA75: BD 2D 1A
SBC $12                 ; $27:DA78: E5 12
BNE CODE_27DAC4         ; $27:DA7A: D0 48
LDA $1A35,x             ; $27:DA7C: BD 35 1A
SEC                     ; $27:DA7F: 38
SBC $0210               ; $27:DA80: ED 10 02
CLC                     ; $27:DA83: 18
ADC #$20                ; $27:DA84: 69 20
CMP #$28                ; $27:DA86: C9 28
BCC CODE_27DAC4         ; $27:DA88: 90 3A
LDA #$20                ; $27:DA8A: A9 20
STA $06E3,x             ; $27:DA8C: 9D E3 06
INC $06DB,x             ; $27:DA8F: FE DB 06

CODE_27DA92:
LDA $06E3,x             ; $27:DA92: BD E3 06
BEQ CODE_27DAC4         ; $27:DA95: F0 2D
CMP #$1D                ; $27:DA97: C9 1D
BNE CODE_27DAC5         ; $27:DA99: D0 2A
LDA $0564               ; $27:DA9B: AD 64 05
BEQ CODE_27DAA7         ; $27:DA9E: F0 07
LDA #$1E                ; $27:DAA0: A9 1E
STA $06E3,x             ; $27:DAA2: 9D E3 06
BRA CODE_27DAC4         ; $27:DAA5: 80 1D

CODE_27DAA7:
LDA #$15                ; $27:DAA7: A9 15
STA $0564               ; $27:DAA9: 8D 64 05
LDA $1A25,x             ; $27:DAAC: BD 25 1A
STA $052B               ; $27:DAAF: 8D 2B 05
LDA $1A1D,x             ; $27:DAB2: BD 1D 1A
STA $052A               ; $27:DAB5: 8D 2A 05
LDA $1A35,x             ; $27:DAB8: BD 35 1A
STA $0529               ; $27:DABB: 8D 29 05
LDA $1A2D,x             ; $27:DABE: BD 2D 1A
STA $0528               ; $27:DAC1: 8D 28 05

CODE_27DAC4:
RTS                     ; $27:DAC4: 60

CODE_27DAC5:
CMP #$01                ; $27:DAC5: C9 01
BNE CODE_27DAEA         ; $27:DAC7: D0 21
LDA $06DB,x             ; $27:DAC9: BD DB 06
AND #$07                ; $27:DACC: 29 07
STA $00                 ; $27:DACE: 85 00
JSR CODE_27DAE0         ; $27:DAD0: 20 E0 DA
LDA $06DB,x             ; $27:DAD3: BD DB 06
CLC                     ; $27:DAD6: 18
ADC #$04                ; $27:DAD7: 69 04
AND #$07                ; $27:DAD9: 29 07

CODE_27DADB:
STA $00                 ; $27:DADB: 85 00
JMP CODE_27DAE0         ; $27:DADD: 4C E0 DA

CODE_27DAE0:
LDY #$05                ; $27:DAE0: A0 05

CODE_27DAE2:
LDA $1FC8,y             ; $27:DAE2: B9 C8 1F
BEQ CODE_27DAEB         ; $27:DAE5: F0 04
DEY                     ; $27:DAE7: 88
BPL CODE_27DAE2         ; $27:DAE8: 10 F8

CODE_27DAEA:
RTS                     ; $27:DAEA: 60

CODE_27DAEB:
LDA #$0B                ; $27:DAEB: A9 0B
STA $1FC8,y             ; $27:DAED: 99 C8 1F
LDA $1A2D,x             ; $27:DAF0: BD 2D 1A
STA $D9                 ; $27:DAF3: 85 D9
LDA $1A35,x             ; $27:DAF5: BD 35 1A
STA $D8                 ; $27:DAF8: 85 D8
LDX $00                 ; $27:DAFA: A6 00
REP #$20                ; $27:DAFC: C2 20
LDA.w DATA_21C875,x     ; $27:DAFE: BD 75 C8
AND #$00FF              ; $27:DB01: 29 FF 00
CMP #$0080              ; $27:DB04: C9 80 00
BCC CODE_27DB0C         ; $27:DB07: 90 03
ORA #$FF00              ; $27:DB09: 09 00 FF

CODE_27DB0C:
CLC                     ; $27:DB0C: 18
ADC $D8                 ; $27:DB0D: 65 D8
STA $D8                 ; $27:DB0F: 85 D8
SEP #$20                ; $27:DB11: E2 20
LDA $D8                 ; $27:DB13: A5 D8
STA $05C9,y             ; $27:DB15: 99 C9 05
LDA $D9                 ; $27:DB18: A5 D9
STA $00E2,y             ; $27:DB1A: 99 E2 00
LDA.w DATA_21C861,x     ; $27:DB1D: BD 61 C8
STA $05D3,y             ; $27:DB20: 99 D3 05
LDA.w DATA_21C84D,x     ; $27:DB23: BD 4D C8
STA $05DD,y             ; $27:DB26: 99 DD 05
LDA #$00                ; $27:DB29: A9 00
STA $02                 ; $27:DB2B: 85 02
LDA.w DATA_21C88B,x     ; $27:DB2D: BD 8B C8
BPL CODE_27DB34         ; $27:DB30: 10 02
DEC $02                 ; $27:DB32: C6 02

CODE_27DB34:
CLC                     ; $27:DB34: 18
LDX $9B                 ; $27:DB35: A6 9B
ADC $1A25,x             ; $27:DB37: 7D 25 1A
STA $05BF,y             ; $27:DB3A: 99 BF 05
LDA $1A1D,x             ; $27:DB3D: BD 1D 1A
ADC $02                 ; $27:DB40: 65 02
STA $1FD7,y             ; $27:DB42: 99 D7 1F
LDA #$00                ; $27:DB45: A9 00
STA $06C7,y             ; $27:DB47: 99 C7 06
JMP CODE_27DB4E         ; $27:DB4A: 4C 4E DB
RTS                     ; $27:DB4D: 60

CODE_27DB4E:
LDA #$4A                ; $27:DB4E: A9 4A
STA $1203               ; $27:DB50: 8D 03 12
JSL CODE_279544         ; $27:DB53: 22 44 95 27
LDA #$01                ; $27:DB57: A9 01
STA $1F9C               ; $27:DB59: 8D 9C 1F
LDA $1A35,x             ; $27:DB5C: BD 35 1A
CLC                     ; $27:DB5F: 18
LDX $00                 ; $27:DB60: A6 00
ADC.w DATA_21C875,x     ; $27:DB62: 7D 75 C8
SEC                     ; $27:DB65: 38
SBC $0210               ; $27:DB66: ED 10 02
STA $1FA2               ; $27:DB69: 8D A2 1F
LDA.w DATA_21C88B,x     ; $27:DB6C: BD 8B C8
LDX $9B                 ; $27:DB6F: A6 9B
CLC                     ; $27:DB71: 18
ADC $1A25,x             ; $27:DB72: 7D 25 1A
SEC                     ; $27:DB75: 38
SBC $0543               ; $27:DB76: ED 43 05
STA $1F9F               ; $27:DB79: 8D 9F 1F
LDA #$1F                ; $27:DB7C: A9 1F
STA $1FAE               ; $27:DB7E: 8D AE 1F
RTS                     ; $27:DB81: 60
db $60,$20

CODE_27DB84:
LDA $06E3,x             ; $27:DB84: BD E3 06
BNE CODE_27DBE3         ; $27:DB87: D0 5A
LDA $1A35,x             ; $27:DB89: BD 35 1A
CMP $0210               ; $27:DB8C: CD 10 02
LDA $1A2D,x             ; $27:DB8F: BD 2D 1A
SBC $12                 ; $27:DB92: E5 12
BNE CODE_27DBE3         ; $27:DB94: D0 4D
LDA $1A35,x             ; $27:DB96: BD 35 1A
SEC                     ; $27:DB99: 38
SBC $0210               ; $27:DB9A: ED 10 02
CMP #$F0                ; $27:DB9D: C9 F0
BCS CODE_27DBE3         ; $27:DB9F: B0 42
LDA #$C0                ; $27:DBA1: A9 C0
STA $06E3,x             ; $27:DBA3: 9D E3 06
JSR CODE_27DC85         ; $27:DBA6: 20 85 DC
LDY $9B                 ; $27:DBA9: A4 9B
LDA #$AD                ; $27:DBAB: A9 AD
STA $0671,x             ; $27:DBAD: 9D 71 06
LDA $1A25,y             ; $27:DBB0: B9 25 1A
SEC                     ; $27:DBB3: 38
SBC #$06                ; $27:DBB4: E9 06
STA $71,x               ; $27:DBB6: 95 71
LDA $1A1D,y             ; $27:DBB8: B9 1D 1A
SBC #$00                ; $27:DBBB: E9 00
STA $56,x               ; $27:DBBD: 95 56
LDA $1A2D,y             ; $27:DBBF: B9 2D 1A
STA $44,x               ; $27:DBC2: 95 44
LDA $1A35,y             ; $27:DBC4: B9 35 1A
STA $5F,x               ; $27:DBC7: 95 5F
LDA #$00                ; $27:DBC9: A9 00
STA $68,x               ; $27:DBCB: 95 68
LDA #$28                ; $27:DBCD: A9 28
STA $0518,x             ; $27:DBCF: 9D 18 05
LDA #$05                ; $27:DBD2: A9 05
STA $1FE9,x             ; $27:DBD4: 9D E9 1F

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:DBD7: 22 37 A8 27
LDA.w DATA_21DB82,y     ; $27:DBDB: B9 82 DB
STA $0679,x             ; $27:DBDE: 9D 79 06
LDX $9B                 ; $27:DBE1: A6 9B

CODE_27DBE3:
RTS                     ; $27:DBE3: 60

CODE_27DBE4:
LDA $06E3,x             ; $27:DBE4: BD E3 06
BNE CODE_27DBE3         ; $27:DBE7: D0 FA
LDA $1A25,x             ; $27:DBE9: BD 25 1A
CMP $0543               ; $27:DBEC: CD 43 05
LDA $1A1D,x             ; $27:DBEF: BD 1D 1A
SBC $0542               ; $27:DBF2: ED 42 05
BNE CODE_27DBE3         ; $27:DBF5: D0 EC
LDA $1A35,x             ; $27:DBF7: BD 35 1A
CMP $0210               ; $27:DBFA: CD 10 02
LDA $1A2D,x             ; $27:DBFD: BD 2D 1A
SBC $12                 ; $27:DC00: E5 12
BNE CODE_27DBE3         ; $27:DC02: D0 DF
LDA $0783,x             ; $27:DC04: BD 83 07
AND #$1F                ; $27:DC07: 29 1F
ORA #$80                ; $27:DC09: 09 80
STA $06E3,x             ; $27:DC0B: 9D E3 06
LDA $1A35,x             ; $27:DC0E: BD 35 1A
SEC                     ; $27:DC11: 38
SBC $0210               ; $27:DC12: ED 10 02
CLC                     ; $27:DC15: 18
ADC #$10                ; $27:DC16: 69 10
CMP #$20                ; $27:DC18: C9 20
BCC CODE_27DBE3         ; $27:DC1A: 90 C7
LDA $5E                 ; $27:DC1C: A5 5E
SBC $1A35,x             ; $27:DC1E: FD 35 1A
CLC                     ; $27:DC21: 18
ADC #$11                ; $27:DC22: 69 11
CMP #$22                ; $27:DC24: C9 22
BCC CODE_27DBE3         ; $27:DC26: 90 BB
JSR CODE_27DC85         ; $27:DC28: 20 85 DC
LDY $9B                 ; $27:DC2B: A4 9B
LDA $1A15,y             ; $27:DC2D: B9 15 1A
LSR A                   ; $27:DC30: 4A
LDA #$78                ; $27:DC31: A9 78
BCS CODE_27DC37         ; $27:DC33: B0 02
LDA #$79                ; $27:DC35: A9 79

CODE_27DC37:
STA $0671,x             ; $27:DC37: 9D 71 06
LDA #$00                ; $27:DC3A: A9 00
STA $1FE9,x             ; $27:DC3C: 9D E9 1F
LDA $1A25,y             ; $27:DC3F: B9 25 1A
SEC                     ; $27:DC42: 38
SBC #$01                ; $27:DC43: E9 01
STA $71,x               ; $27:DC45: 95 71
LDA $1A1D,y             ; $27:DC47: B9 1D 1A
SBC #$00                ; $27:DC4A: E9 00
STA $56,x               ; $27:DC4C: 95 56
LDA $1A2D,y             ; $27:DC4E: B9 2D 1A
STA $44,x               ; $27:DC51: 95 44
LDA $1A35,y             ; $27:DC53: B9 35 1A
STA $5F,x               ; $27:DC56: 95 5F
STA $1CD7,x             ; $27:DC58: 9D D7 1C
LDA #$0C                ; $27:DC5B: A9 0C
STA $0518,x             ; $27:DC5D: 9D 18 05
LDA #$20                ; $27:DC60: A9 20
STA $1FD2,x             ; $27:DC62: 9D D2 1F

; Subroutine: Player X Position relative to sprite
JSL CODE_27A837         ; $27:DC65: 22 37 A8 27
LDA.w DATA_21C8A1,y     ; $27:DC69: B9 A1 C8
STA $8C,x               ; $27:DC6C: 95 8C
LDA.w DATA_21C8A3,y     ; $27:DC6E: B9 A3 C8
STA $0679,x             ; $27:DC71: 9D 79 06
LDA.w DATA_21C8A5,y     ; $27:DC74: B9 A5 C8
STA $4D,x               ; $27:DC77: 95 4D
LDX $9B                 ; $27:DC79: A6 9B
TYA                     ; $27:DC7B: 98
CLC                     ; $27:DC7C: 18
ADC #$14                ; $27:DC7D: 69 14
STA $00                 ; $27:DC7F: 85 00
JSR CODE_27DB4E         ; $27:DC81: 20 4E DB
RTS                     ; $27:DC84: 60

CODE_27DC85:
LDX #$04                ; $27:DC85: A2 04

CODE_27DC87:
LDA $0661,x             ; $27:DC87: BD 61 06
BEQ CODE_27DC94         ; $27:DC8A: F0 08
DEX                     ; $27:DC8C: CA
BPL CODE_27DC87         ; $27:DC8D: 10 F8
PLA                     ; $27:DC8F: 68
PLA                     ; $27:DC90: 68
LDX $9B                 ; $27:DC91: A6 9B
RTS                     ; $27:DC93: 60

CODE_27DC94:
JSL CODE_279C96         ; $27:DC94: 22 96 9C 27
LDA #$02                ; $27:DC98: A9 02
STA $0661,x             ; $27:DC9A: 9D 61 06
RTS                     ; $27:DC9D: 60

CODE_27DC9E:
LDA $034E               ; $27:DC9E: AD 4E 03
BNE CODE_27DCA4         ; $27:DCA1: D0 01
RTL                     ; $27:DCA3: 6B

CODE_27DCA4:
INC $034E               ; $27:DCA4: EE 4E 03
CMP #$10                ; $27:DCA7: C9 10
BNE CODE_27DCB2         ; $27:DCA9: D0 07
PHP                     ; $27:DCAB: 08
LDX #$10                ; $27:DCAC: A2 10
STX $1203               ; $27:DCAE: 8E 03 12
PLP                     ; $27:DCB1: 28

CODE_27DCB2:
BCS CODE_27DD0E         ; $27:DCB2: B0 5A
JSR CODE_27DD64         ; $27:DCB4: 20 64 DD
LDX #$00                ; $27:DCB7: A2 00
JSR CODE_27D728         ; $27:DCB9: 20 28 D7
REP #$10                ; $27:DCBC: C2 10
LDY $C6                 ; $27:DCBE: A4 C6
LDX #$0000              ; $27:DCC0: A2 00 00

CODE_27DCC3:
LDA $0A                 ; $27:DCC3: A5 0A
STA $0800,y             ; $27:DCC5: 99 00 08
CLC                     ; $27:DCC8: 18
ADC #$08                ; $27:DCC9: 69 08
STA $0804,y             ; $27:DCCB: 99 04 08
LDA $0B                 ; $27:DCCE: A5 0B
STA $0801,y             ; $27:DCD0: 99 01 08
STA $0805,y             ; $27:DCD3: 99 05 08
CLC                     ; $27:DCD6: 18
ADC #$08                ; $27:DCD7: 69 08
STA $0B                 ; $27:DCD9: 85 0B
LDA $0C                 ; $27:DCDB: A5 0C
INC $0C                 ; $27:DCDD: E6 0C
INC $0C                 ; $27:DCDF: E6 0C
STA $0802,y             ; $27:DCE1: 99 02 08
INC A                   ; $27:DCE4: 1A
STA $0806,y             ; $27:DCE5: 99 06 08
LDA #$20                ; $27:DCE8: A9 20
STA $0803,y             ; $27:DCEA: 99 03 08
STA $0807,y             ; $27:DCED: 99 07 08
REP #$20                ; $27:DCF0: C2 20
TYA                     ; $27:DCF2: 98
LSR A                   ; $27:DCF3: 4A
LSR A                   ; $27:DCF4: 4A
PHX                     ; $27:DCF5: DA
TAX                     ; $27:DCF6: AA
SEP #$20                ; $27:DCF7: E2 20
STZ $0A20,x             ; $27:DCF9: 9E 20 0A
STZ $0A21,x             ; $27:DCFC: 9E 21 0A
PLX                     ; $27:DCFF: FA
TYA                     ; $27:DD00: 98
CLC                     ; $27:DD01: 18
ADC #$08                ; $27:DD02: 69 08
TAY                     ; $27:DD04: A8
INX                     ; $27:DD05: E8
CPX #$0004              ; $27:DD06: E0 04 00
BNE CODE_27DCC3         ; $27:DD09: D0 B8
SEP #$10                ; $27:DD0B: E2 10
RTL                     ; $27:DD0D: 6B

CODE_27DD0E:
CMP #$20                ; $27:DD0E: C9 20
BCS CODE_27DD63         ; $27:DD10: B0 51
EOR #$1F                ; $27:DD12: 49 1F
JSR CODE_27DD64         ; $27:DD14: 20 64 DD
LDA #$04                ; $27:DD17: A9 04
STA $0D                 ; $27:DD19: 85 0D

CODE_27DD1B:
JSR CODE_27D7CD         ; $27:DD1B: 20 CD D7
LDA $0A                 ; $27:DD1E: A5 0A
STA $0800,y             ; $27:DD20: 99 00 08
TYA                     ; $27:DD23: 98
LSR A                   ; $27:DD24: 4A
LSR A                   ; $27:DD25: 4A
TAX                     ; $27:DD26: AA
STZ $0A20,x             ; $27:DD27: 9E 20 0A
STZ $0A21,x             ; $27:DD2A: 9E 21 0A
LDA $0B                 ; $27:DD2D: A5 0B
STA $0801,y             ; $27:DD2F: 99 01 08
LDA $0C                 ; $27:DD32: A5 0C
STA $0802,y             ; $27:DD34: 99 02 08
LDA #$20                ; $27:DD37: A9 20
STA $0803,y             ; $27:DD39: 99 03 08
INC $0C                 ; $27:DD3C: E6 0C
JSR CODE_27D7CD         ; $27:DD3E: 20 CD D7
LDA $0A                 ; $27:DD41: A5 0A
CLC                     ; $27:DD43: 18
ADC #$08                ; $27:DD44: 69 08
STA $0800,y             ; $27:DD46: 99 00 08
LDA $0B                 ; $27:DD49: A5 0B
STA $0801,y             ; $27:DD4B: 99 01 08
CLC                     ; $27:DD4E: 18
ADC #$08                ; $27:DD4F: 69 08
STA $0B                 ; $27:DD51: 85 0B
LDA $0C                 ; $27:DD53: A5 0C
STA $0802,y             ; $27:DD55: 99 02 08
LDA #$20                ; $27:DD58: A9 20
STA $0803,y             ; $27:DD5A: 99 03 08
INC $0C                 ; $27:DD5D: E6 0C
DEC $0D                 ; $27:DD5F: C6 0D
BNE CODE_27DD1B         ; $27:DD61: D0 B8

CODE_27DD63:
RTL                     ; $27:DD63: 6B

CODE_27DD64:
REP #$20                ; $27:DD64: C2 20
AND #$00FC              ; $27:DD66: 29 FC 00
LSR A                   ; $27:DD69: 4A
LSR A                   ; $27:DD6A: 4A
XBA                     ; $27:DD6B: EB
CLC                     ; $27:DD6C: 18
ADC #$D000              ; $27:DD6D: 69 00 D0
STA $022C               ; $27:DD70: 8D 2C 02
CLC                     ; $27:DD73: 18
ADC #$0040              ; $27:DD74: 69 40 00
STA $022E               ; $27:DD77: 8D 2E 02
CLC                     ; $27:DD7A: 18
ADC #$0040              ; $27:DD7B: 69 40 00
STA $0230               ; $27:DD7E: 8D 30 02
CLC                     ; $27:DD81: 18
ADC #$0040              ; $27:DD82: 69 40 00
STA $0232               ; $27:DD85: 8D 32 02
SEP #$20                ; $27:DD88: E2 20
LDA #$32                ; $27:DD8A: A9 32
STA $0239               ; $27:DD8C: 8D 39 02
LDA $70                 ; $27:DD8F: A5 70
STA $D8                 ; $27:DD91: 85 D8
LDA $55                 ; $27:DD93: A5 55
STA $D9                 ; $27:DD95: 85 D9
LDA $43                 ; $27:DD97: A5 43
XBA                     ; $27:DD99: EB
LDA $5E                 ; $27:DD9A: A5 5E
REP #$20                ; $27:DD9C: C2 20
SEC                     ; $27:DD9E: 38
SBC $0210               ; $27:DD9F: ED 10 02
STA $0A                 ; $27:DDA2: 85 0A
LDA $D8                 ; $27:DDA4: A5 D8
SEC                     ; $27:DDA6: 38
SBC $0216               ; $27:DDA7: ED 16 02
DEC A                   ; $27:DDAA: 3A
STA $0B                 ; $27:DDAB: 85 0B
SEP #$20                ; $27:DDAD: E2 20
LDA #$10                ; $27:DDAF: A9 10
STA $0C                 ; $27:DDB1: 85 0C

CODE_27DDB3:
RTS                     ; $27:DDB3: 60

DATA_27DDB4:
dw $FFFF
dw $0002
dw $0005
dw $0008
dw $0008
dw $0005
dw $0002
dw $FFFF

DATA_27DDC4:
db $FA,$FB,$FC,$FD

CODE_27DDC8:
STZ $D8                 ; $27:DDC8: 64 D8
LDA $BC                 ; $27:DDCA: A5 BC
CMP.w DATA_21E984       ; $27:DDCC: CD 84 E9
BEQ CODE_27DDE2         ; $27:DDCF: F0 11
CMP.w DATA_21E984+1     ; $27:DDD1: CD 85 E9
BEQ CODE_27DDE2         ; $27:DDD4: F0 0C
LDA $7FC522             ; $27:DDD6: AF 22 C5 7F
ORA $7FC523             ; $27:DDDA: 0F 23 C5 7F
BEQ CODE_27DDB3         ; $27:DDDE: F0 D3
INC $D8                 ; $27:DDE0: E6 D8

CODE_27DDE2:
LDA $1201               ; $27:DDE2: AD 01 12
BNE CODE_27DDF2         ; $27:DDE5: D0 0B
LDA $15                 ; $27:DDE7: A5 15
AND #$07                ; $27:DDE9: 29 07
BNE CODE_27DDF2         ; $27:DDEB: D0 05
LDA #$04                ; $27:DDED: A9 04
STA $1201               ; $27:DDEF: 8D 01 12

CODE_27DDF2:
LDX #$01                ; $27:DDF2: A2 01

CODE_27DDF4:
LDA $7FC522,x           ; $27:DDF4: BF 22 C5 7F
BEQ CODE_27DE4A         ; $27:DDF8: F0 50
INC A                   ; $27:DDFA: 1A
STA $7FC522,x           ; $27:DDFB: 9F 22 C5 7F
AND #$0F                ; $27:DDFF: 29 0F
CMP #$04                ; $27:DE01: C9 04
BNE CODE_27DE40         ; $27:DE03: D0 3B
LDY $D8                 ; $27:DE05: A4 D8
BNE CODE_27DE40         ; $27:DE07: D0 37
PHX                     ; $27:DE09: DA
TXA                     ; $27:DE0A: 8A
EOR #$01                ; $27:DE0B: 49 01
TAX                     ; $27:DE0D: AA
LDA $7FC522,x           ; $27:DE0E: BF 22 C5 7F
AND #$F0                ; $27:DE12: 29 F0
CMP #$40                ; $27:DE14: C9 40
BEQ CODE_27DE1B         ; $27:DE16: F0 03
CLC                     ; $27:DE18: 18
ADC #$10                ; $27:DE19: 69 10

CODE_27DE1B:
STA $7FC522,x           ; $27:DE1B: 9F 22 C5 7F
LDA $5E                 ; $27:DE1F: A5 5E
STA $7FC524,x           ; $27:DE21: 9F 24 C5 7F
LDA $43                 ; $27:DE25: A5 43
STA $7FC526,x           ; $27:DE27: 9F 26 C5 7F
LDA $70                 ; $27:DE2B: A5 70
STA $7FC528,x           ; $27:DE2D: 9F 28 C5 7F
LDA $55                 ; $27:DE31: A5 55
STA $7FC52A,x           ; $27:DE33: 9F 2A C5 7F
LDA $BD                 ; $27:DE37: A5 BD
STA $7FC52C,x           ; $27:DE39: 9F 2C C5 7F
PLX                     ; $27:DE3D: FA
BRA CODE_27DE4A         ; $27:DE3E: 80 0A

CODE_27DE40:
CMP #$08                ; $27:DE40: C9 08
BNE CODE_27DE4A         ; $27:DE42: D0 06
LDA #$00                ; $27:DE44: A9 00
STA $7FC522,x           ; $27:DE46: 9F 22 C5 7F

CODE_27DE4A:
DEX                     ; $27:DE4A: CA
BPL CODE_27DDF4         ; $27:DE4B: 10 A7
LDX #$01                ; $27:DE4D: A2 01

CODE_27DE4F:
LDA $7FC522,x           ; $27:DE4F: BF 22 C5 7F
BNE CODE_27DE58         ; $27:DE53: D0 03
BRL CODE_27DEEA         ; $27:DE55: 82 92 00

CODE_27DE58:
JSR CODE_27D7CD         ; $27:DE58: 20 CD D7
PHX                     ; $27:DE5B: DA
LDA $7FC52C,x           ; $27:DE5C: BF 2C C5 7F
AND #$40                ; $27:DE60: 29 40
LSR A                   ; $27:DE62: 4A
LSR A                   ; $27:DE63: 4A
LSR A                   ; $27:DE64: 4A
STA $D8                 ; $27:DE65: 85 D8
LDA $7FC522,x           ; $27:DE67: BF 22 C5 7F
STA $DC                 ; $27:DE6B: 85 DC
AND #$F0                ; $27:DE6D: 29 F0
SEC                     ; $27:DE6F: 38
SBC #$10                ; $27:DE70: E9 10
LSR A                   ; $27:DE72: 4A
LSR A                   ; $27:DE73: 4A
LSR A                   ; $27:DE74: 4A
CLC                     ; $27:DE75: 18
ADC $D8                 ; $27:DE76: 65 D8
TAX                     ; $27:DE78: AA
REP #$20                ; $27:DE79: C2 20
LDA.l DATA_27DDB4,x     ; $27:DE7B: BF B4 DD 27
STA $DA                 ; $27:DE7F: 85 DA
SEP #$20                ; $27:DE81: E2 20
LDA $DC                 ; $27:DE83: A5 DC
AND #$0F                ; $27:DE85: 29 0F
LSR A                   ; $27:DE87: 4A
TAX                     ; $27:DE88: AA
LDA.l DATA_27DDC4,x     ; $27:DE89: BF C4 DD 27
STA $DC                 ; $27:DE8D: 85 DC
PLX                     ; $27:DE8F: FA
LDA $7FC528,x           ; $27:DE90: BF 28 C5 7F
STA $D8                 ; $27:DE94: 85 D8
LDA $7FC52A,x           ; $27:DE96: BF 2A C5 7F
STA $D9                 ; $27:DE9A: 85 D9
LDA $7FC526,x           ; $27:DE9C: BF 26 C5 7F
XBA                     ; $27:DEA0: EB
LDA $7FC524,x           ; $27:DEA1: BF 24 C5 7F
REP #$20                ; $27:DEA5: C2 20
SEC                     ; $27:DEA7: 38
SBC $0210               ; $27:DEA8: ED 10 02
CLC                     ; $27:DEAB: 18
ADC $DA                 ; $27:DEAC: 65 DA
STA $0A                 ; $27:DEAE: 85 0A
LDA $D8                 ; $27:DEB0: A5 D8
SEC                     ; $27:DEB2: 38
SBC $0216               ; $27:DEB3: ED 16 02
CLC                     ; $27:DEB6: 18
ADC #$001A              ; $27:DEB7: 69 1A 00
STA $D8                 ; $27:DEBA: 85 D8
SEP #$20                ; $27:DEBC: E2 20
LDA $D9                 ; $27:DEBE: A5 D9
BNE CODE_27DEEA         ; $27:DEC0: D0 28
LDA $0A                 ; $27:DEC2: A5 0A
STA $0800,y             ; $27:DEC4: 99 00 08
LDA $D8                 ; $27:DEC7: A5 D8
STA $0801,y             ; $27:DEC9: 99 01 08
LDA $DC                 ; $27:DECC: A5 DC
STA $0802,y             ; $27:DECE: 99 02 08
PHX                     ; $27:DED1: DA
LDA #$21                ; $27:DED2: A9 21
LDX $0588               ; $27:DED4: AE 88 05
BEQ CODE_27DEDB         ; $27:DED7: F0 02
LDA #$11                ; $27:DED9: A9 11

CODE_27DEDB:
STA $0803,y             ; $27:DEDB: 99 03 08
PLX                     ; $27:DEDE: FA
TYA                     ; $27:DEDF: 98
LSR A                   ; $27:DEE0: 4A
LSR A                   ; $27:DEE1: 4A
TAY                     ; $27:DEE2: A8
LDA $0B                 ; $27:DEE3: A5 0B
AND #$01                ; $27:DEE5: 29 01
STA $0A20,y             ; $27:DEE7: 99 20 0A

CODE_27DEEA:
DEX                     ; $27:DEEA: CA
BMI CODE_27DEF0         ; $27:DEEB: 30 03
BRL CODE_27DE4F         ; $27:DEED: 82 5F FF

CODE_27DEF0:
RTS                     ; $27:DEF0: 60

CODE_27DEF1:
LDA $0580               ; $27:DEF1: AD 80 05
BEQ CODE_27DF24         ; $27:DEF4: F0 2E
LDA $02C1               ; $27:DEF6: AD C1 02
CMP #$34                ; $27:DEF9: C9 34
BNE CODE_27DF24         ; $27:DEFB: D0 27
CPY #$01                ; $27:DEFD: C0 01
BEQ CODE_27DF22         ; $27:DEFF: F0 21
LDA $71,x               ; $27:DF01: B5 71
SEC                     ; $27:DF03: 38
SBC $0543               ; $27:DF04: ED 43 05
CMP #$9E                ; $27:DF07: C9 9E
BCC CODE_27DF22         ; $27:DF09: 90 17
CMP #$A4                ; $27:DF0B: C9 A4
BCS CODE_27DF22         ; $27:DF0D: B0 13
LDA $0520,x             ; $27:DF0F: BD 20 05
BNE CODE_27DF22         ; $27:DF12: D0 0E
LDA #$10                ; $27:DF14: A9 10
STA $0520,x             ; $27:DF16: 9D 20 05
JSL CODE_278F34         ; $27:DF19: 22 34 8F 27
LDA #$82                ; $27:DF1D: A9 82
STA $1F93,y             ; $27:DF1F: 99 93 1F

CODE_27DF22:
CLC                     ; $27:DF22: 18
RTL                     ; $27:DF23: 6B

CODE_27DF24:
SEC                     ; $27:DF24: 38
RTL                     ; $27:DF25: 6B

CODE_27DF26:
PHB                     ; $27:DF26: 8B
PHK                     ; $27:DF27: 4B
PLB                     ; $27:DF28: AB
STA $08                 ; $27:DF29: 85 08
LDA $0671,x             ; $27:DF2B: BD 71 06
CMP #$18                ; $27:DF2E: C9 18
BNE CODE_27DF40         ; $27:DF30: D0 0E
LDA #$22                ; $27:DF32: A9 22
STA $0C                 ; $27:DF34: 85 0C
STZ $0D                 ; $27:DF36: 64 0D
LDA #$28                ; $27:DF38: A9 28
STA $0E                 ; $27:DF3A: 85 0E
STZ $0F                 ; $27:DF3C: 64 0F
BRA CODE_27DF4C         ; $27:DF3E: 80 0C

CODE_27DF40:
LDA #$1A                ; $27:DF40: A9 1A
STA $0C                 ; $27:DF42: 85 0C
STZ $0D                 ; $27:DF44: 64 0D
LDA #$18                ; $27:DF46: A9 18
STA $0E                 ; $27:DF48: 85 0E
STZ $0F                 ; $27:DF4A: 64 0F

CODE_27DF4C:
LDA $5F,x               ; $27:DF4C: B5 5F
STA $0A                 ; $27:DF4E: 85 0A
LDA $44,x               ; $27:DF50: B5 44
STA $0B                 ; $27:DF52: 85 0B
REP #$20                ; $27:DF54: C2 20
LDA $0A                 ; $27:DF56: A5 0A
SEC                     ; $27:DF58: 38
SBC $0210               ; $27:DF59: ED 10 02
SEC                     ; $27:DF5C: 38
SBC #$0009              ; $27:DF5D: E9 09 00
STA $0A                 ; $27:DF60: 85 0A
CLC                     ; $27:DF62: 18
ADC $0C                 ; $27:DF63: 65 0C
STA $0C                 ; $27:DF65: 85 0C
SEP #$20                ; $27:DF67: E2 20
JSR CODE_27D7CD         ; $27:DF69: 20 CD D7
LDA $0A                 ; $27:DF6C: A5 0A
PHX                     ; $27:DF6E: DA
JSR CODE_27DFB1         ; $27:DF6F: 20 B1 DF
LDA.w DATA_21DFE6,x     ; $27:DF72: BD E6 DF
STA $0803,y             ; $27:DF75: 99 03 08
REP #$20                ; $27:DF78: C2 20
TYA                     ; $27:DF7A: 98
LSR A                   ; $27:DF7B: 4A
LSR A                   ; $27:DF7C: 4A
TAY                     ; $27:DF7D: A8
SEP #$20                ; $27:DF7E: E2 20
LDA #$02                ; $27:DF80: A9 02
LDX $0B                 ; $27:DF82: A6 0B
BEQ CODE_27DF88         ; $27:DF84: F0 02
ORA #$01                ; $27:DF86: 09 01

CODE_27DF88:
STA $0A20,y             ; $27:DF88: 99 20 0A
PLX                     ; $27:DF8B: FA
JSR CODE_27D7CD         ; $27:DF8C: 20 CD D7
LDA $0C                 ; $27:DF8F: A5 0C
PHX                     ; $27:DF91: DA
JSR CODE_27DFB1         ; $27:DF92: 20 B1 DF
LDA.w DATA_21DFE9,x     ; $27:DF95: BD E9 DF
STA $0803,y             ; $27:DF98: 99 03 08
REP #$20                ; $27:DF9B: C2 20
TYA                     ; $27:DF9D: 98
LSR A                   ; $27:DF9E: 4A
LSR A                   ; $27:DF9F: 4A
TAY                     ; $27:DFA0: A8
SEP #$20                ; $27:DFA1: E2 20
LDA #$02                ; $27:DFA3: A9 02
LDX $0D                 ; $27:DFA5: A6 0D
BEQ CODE_27DFAB         ; $27:DFA7: F0 02
ORA #$01                ; $27:DFA9: 09 01

CODE_27DFAB:
STA $0A20,y             ; $27:DFAB: 99 20 0A
PLX                     ; $27:DFAE: FA
PLB                     ; $27:DFAF: AB
RTL                     ; $27:DFB0: 6B

CODE_27DFB1:
STA $0800,y             ; $27:DFB1: 99 00 08
LDA $56,x               ; $27:DFB4: B5 56
XBA                     ; $27:DFB6: EB
LDA $71,x               ; $27:DFB7: B5 71
REP #$20                ; $27:DFB9: C2 20
SEC                     ; $27:DFBB: 38
SBC $0216               ; $27:DFBC: ED 16 02
CLC                     ; $27:DFBF: 18
ADC $0E                 ; $27:DFC0: 65 0E
SEP #$20                ; $27:DFC2: E2 20
XBA                     ; $27:DFC4: EB
AND #$FF                ; $27:DFC5: 29 FF
BNE CODE_27DFCC         ; $27:DFC7: D0 03
XBA                     ; $27:DFC9: EB
BRA CODE_27DFCE         ; $27:DFCA: 80 02

CODE_27DFCC:
LDA #$F0                ; $27:DFCC: A9 F0

CODE_27DFCE:
STA $0801,y             ; $27:DFCE: 99 01 08
LDA $08                 ; $27:DFD1: A5 08
CMP #$0B                ; $27:DFD3: C9 0B
BCC CODE_27DFD9         ; $27:DFD5: 90 02
LDA #$0B                ; $27:DFD7: A9 0B

CODE_27DFD9:
LSR A                   ; $27:DFD9: 4A
LSR A                   ; $27:DFDA: 4A
TAX                     ; $27:DFDB: AA
LDA.w DATA_21DFE3,x     ; $27:DFDC: BD E3 DF
STA $0802,y             ; $27:DFDF: 99 02 08
RTS                     ; $27:DFE2: 60
db $20,$E6,$E8,$60
db $61,$21,$20,$21,$21

DATA_27DFEC:
db $CC,$CD,$FD

DATA_27DFEF:
db $23,$23,$21

CODE_27DFF2:
LDA $9C                 ; $27:DFF2: A5 9C
BNE CODE_27E00F         ; $27:DFF4: D0 19
LDA $06D1,x             ; $27:DFF6: BD D1 06
BNE CODE_27E00F         ; $27:DFF9: D0 14
LDA #$04                ; $27:DFFB: A9 04
STA $06D1,x             ; $27:DFFD: 9D D1 06
INC $06BD,x             ; $27:E000: FE BD 06
LDA $06BD,x             ; $27:E003: BD BD 06
CMP #$03                ; $27:E006: C9 03
BCC CODE_27E00F         ; $27:E008: 90 05
STZ $1FC8,x             ; $27:E00A: 9E C8 1F
BRA CODE_27E05A         ; $27:E00D: 80 4B

CODE_27E00F:
JSR CODE_27D728         ; $27:E00F: 20 28 D7
BNE CODE_27E05A         ; $27:E012: D0 46
LDA $06BD,x             ; $27:E014: BD BD 06
CMP #$03                ; $27:E017: C9 03
BCS CODE_27E05A         ; $27:E019: B0 3F
PHX                     ; $27:E01B: DA
TAX                     ; $27:E01C: AA
LDA.l DATA_27DFEC,x     ; $27:E01D: BF EC DF 27
STA $DA                 ; $27:E021: 85 DA
LDA.l DATA_27DFEF,x     ; $27:E023: BF EF DF 27
STA $DB                 ; $27:E027: 85 DB
PLX                     ; $27:E029: FA
LDA $E2,x               ; $27:E02A: B5 E2
XBA                     ; $27:E02C: EB
LDA $05C9,x             ; $27:E02D: BD C9 05
REP #$30                ; $27:E030: C2 30
SEC                     ; $27:E032: 38
SBC $0210               ; $27:E033: ED 10 02
STA $D8                 ; $27:E036: 85 D8
SEP #$20                ; $27:E038: E2 20
LDY $C6,x               ; $27:E03A: B4 C6
JSR CODE_27CE16         ; $27:E03C: 20 16 CE
LDA $DA                 ; $27:E03F: A5 DA
STA $0802,y             ; $27:E041: 99 02 08
LDA $DB                 ; $27:E044: A5 DB
STA $0803,y             ; $27:E046: 99 03 08
REP #$20                ; $27:E049: C2 20
TYA                     ; $27:E04B: 98
LSR A                   ; $27:E04C: 4A
LSR A                   ; $27:E04D: 4A
TAY                     ; $27:E04E: A8
SEP #$20                ; $27:E04F: E2 20
LDA $D9                 ; $27:E051: A5 D9
AND #$01                ; $27:E053: 29 01
STA $0A20,y             ; $27:E055: 99 20 0A
SEP #$10                ; $27:E058: E2 10

CODE_27E05A:
RTS                     ; $27:E05A: 60

CODE_27E05B:
LDA $06D1,x             ; $27:E05B: BD D1 06
BNE CODE_27E064         ; $27:E05E: D0 04
STZ $1FC8,x             ; $27:E060: 9E C8 1F
RTS                     ; $27:E063: 60

CODE_27E064:
PHB                     ; $27:E064: 8B
PHK                     ; $27:E065: 4B
PLB                     ; $27:E066: AB
LDA $06D1,x             ; $27:E067: BD D1 06
AND #$FC                ; $27:E06A: 29 FC
LSR A                   ; $27:E06C: 4A
TAY                     ; $27:E06D: A8
LDA $05C9,x             ; $27:E06E: BD C9 05
STA $0E                 ; $27:E071: 85 0E
LDA $00E2,x             ; $27:E073: BD E2 00
STA $0F                 ; $27:E076: 85 0F
REP #$30                ; $27:E078: C2 30
LDA $0E                 ; $27:E07A: A5 0E
CLC                     ; $27:E07C: 18
ADC #$0004              ; $27:E07D: 69 04 00
SEC                     ; $27:E080: 38
SBC $0210               ; $27:E081: ED 10 02
STA $0E                 ; $27:E084: 85 0E
SEC                     ; $27:E086: 38
SBC DATA_27E143,y       ; $27:E087: F9 43 E1
STA $00                 ; $27:E08A: 85 00
LDA $0E                 ; $27:E08C: A5 0E
SEC                     ; $27:E08E: 38
SBC DATA_27E14F,y       ; $27:E08F: F9 4F E1
STA $02                 ; $27:E092: 85 02
LDA $0E                 ; $27:E094: A5 0E
CLC                     ; $27:E096: 18
ADC DATA_27E143,y       ; $27:E097: 79 43 E1
STA $04                 ; $27:E09A: 85 04
LDA $0E                 ; $27:E09C: A5 0E
CLC                     ; $27:E09E: 18
ADC DATA_27E14F,y       ; $27:E09F: 79 4F E1
STA $06                 ; $27:E0A2: 85 06
TYA                     ; $27:E0A4: 98
LSR A                   ; $27:E0A5: 4A
TAY                     ; $27:E0A6: A8
SEP #$20                ; $27:E0A7: E2 20
LDA $05BF,x             ; $27:E0A9: BD BF 05
SEC                     ; $27:E0AC: 38
SBC $0216               ; $27:E0AD: ED 16 02
STA $08                 ; $27:E0B0: 85 08
CLC                     ; $27:E0B2: 18
ADC DATA_27E161,y       ; $27:E0B3: 79 61 E1
STA $09                 ; $27:E0B6: 85 09
LDA $08                 ; $27:E0B8: A5 08
CLC                     ; $27:E0BA: 18
ADC DATA_27E15B,y       ; $27:E0BB: 79 5B E1
STA $08                 ; $27:E0BE: 85 08
LDA DATA_27E167,y       ; $27:E0C0: B9 67 E1
STA $0A                 ; $27:E0C3: 85 0A
LDA DATA_27E16D,y       ; $27:E0C5: B9 6D E1
STA $0B                 ; $27:E0C8: 85 0B
JSR CODE_27D728         ; $27:E0CA: 20 28 D7
REP #$10                ; $27:E0CD: C2 10
LDY $C6,x               ; $27:E0CF: B4 C6
LDA $00                 ; $27:E0D1: A5 00
STA $0800,y             ; $27:E0D3: 99 00 08
LDA $02                 ; $27:E0D6: A5 02
STA $0804,y             ; $27:E0D8: 99 04 08
LDA $04                 ; $27:E0DB: A5 04
STA $0808,y             ; $27:E0DD: 99 08 08
LDA $06                 ; $27:E0E0: A5 06
STA $080C,y             ; $27:E0E2: 99 0C 08
LDA $08                 ; $27:E0E5: A5 08
STA $0801,y             ; $27:E0E7: 99 01 08
STA $080D,y             ; $27:E0EA: 99 0D 08
LDA $09                 ; $27:E0ED: A5 09
STA $0805,y             ; $27:E0EF: 99 05 08
STA $0809,y             ; $27:E0F2: 99 09 08
LDA $0A                 ; $27:E0F5: A5 0A
STA $0802,y             ; $27:E0F7: 99 02 08
STA $0806,y             ; $27:E0FA: 99 06 08
STA $080A,y             ; $27:E0FD: 99 0A 08
STA $080E,y             ; $27:E100: 99 0E 08
LDA $0B                 ; $27:E103: A5 0B
STA $0803,y             ; $27:E105: 99 03 08
STA $0807,y             ; $27:E108: 99 07 08
ORA #$40                ; $27:E10B: 09 40
STA $080B,y             ; $27:E10D: 99 0B 08
STA $080F,y             ; $27:E110: 99 0F 08
REP #$20                ; $27:E113: C2 20
TYA                     ; $27:E115: 98
LSR A                   ; $27:E116: 4A
LSR A                   ; $27:E117: 4A
TAY                     ; $27:E118: A8
SEP #$20                ; $27:E119: E2 20
LDA $01                 ; $27:E11B: A5 01
BEQ CODE_27E121         ; $27:E11D: F0 02
LDA #$01                ; $27:E11F: A9 01

CODE_27E121:
STA $0A20,y             ; $27:E121: 99 20 0A
LDA $03                 ; $27:E124: A5 03
BEQ CODE_27E12A         ; $27:E126: F0 02
LDA #$01                ; $27:E128: A9 01

CODE_27E12A:
STA $0A21,y             ; $27:E12A: 99 21 0A
LDA $05                 ; $27:E12D: A5 05
BEQ CODE_27E133         ; $27:E12F: F0 02
LDA #$01                ; $27:E131: A9 01

CODE_27E133:
STA $0A22,y             ; $27:E133: 99 22 0A
LDA $07                 ; $27:E136: A5 07
BEQ CODE_27E13C         ; $27:E138: F0 02
LDA #$01                ; $27:E13A: A9 01

CODE_27E13C:
STA $0A23,y             ; $27:E13C: 99 23 0A
SEP #$10                ; $27:E13F: E2 10
PLB                     ; $27:E141: AB
RTS                     ; $27:E142: 60

DATA_27E143:
db $0F,$00,$0E,$00,$0D,$00,$0C,$00
db $0B,$00,$0A,$00

DATA_27E14F:
db $12,$00,$10,$00,$0E,$00,$0C,$00
db $0A,$00,$08,$00

DATA_27E15B:
db $0A,$09,$09,$0A,$0B,$0C

DATA_27E161:
db $06,$05,$04,$06,$08,$0A

DATA_27E167:
db $1D,$1D,$D1,$D1,$D0,$D0

DATA_27E16D:
db $22,$22,$23,$23,$23,$23

CODE_27E173:
PHB                     ; $27:E173: 8B
LDA #$27                ; $27:E174: A9 27
PHA                     ; $27:E176: 48
PLB                     ; $27:E177: AB
PHX                     ; $27:E178: DA
PHY                     ; $27:E179: 5A
LDA $1A80               ; $27:E17A: AD 80 1A
ASL A                   ; $27:E17D: 0A
CLC                     ; $27:E17E: 18
ADC $1A80               ; $27:E17F: 6D 80 1A
TAX                     ; $27:E182: AA
LDY #$00                ; $27:E183: A0 00

CODE_27E185:
LDA.w DATA_27E1DF,x     ; $27:E185: BD DF E1
STA $0800,y             ; $27:E188: 99 00 08
LDA #$60                ; $27:E18B: A9 60
STA $0801,y             ; $27:E18D: 99 01 08
LDA.w DATA_27E1E8,x     ; $27:E190: BD E8 E1
STA $0802,y             ; $27:E193: 99 02 08
LDA #$22                ; $27:E196: A9 22
STA $0803,y             ; $27:E198: 99 03 08
PHY                     ; $27:E19B: 5A
TYA                     ; $27:E19C: 98
LSR A                   ; $27:E19D: 4A
LSR A                   ; $27:E19E: 4A
TAY                     ; $27:E19F: A8
LDA #$02                ; $27:E1A0: A9 02
STA $0A20,y             ; $27:E1A2: 99 20 0A
PLY                     ; $27:E1A5: 7A
INY                     ; $27:E1A6: C8
INY                     ; $27:E1A7: C8
INY                     ; $27:E1A8: C8
INY                     ; $27:E1A9: C8
INX                     ; $27:E1AA: E8
CPY #$0C                ; $27:E1AB: C0 0C
BCC CODE_27E185         ; $27:E1AD: 90 D6
LDX #$00                ; $27:E1AF: A2 00

CODE_27E1B1:
LDA.w DATA_27E1F1,x     ; $27:E1B1: BD F1 E1
STA $0800,y             ; $27:E1B4: 99 00 08
LDA #$60                ; $27:E1B7: A9 60
STA $0801,y             ; $27:E1B9: 99 01 08
LDA.w DATA_27E1F4,x     ; $27:E1BC: BD F4 E1
STA $0802,y             ; $27:E1BF: 99 02 08
LDA #$22                ; $27:E1C2: A9 22
STA $0803,y             ; $27:E1C4: 99 03 08
PHY                     ; $27:E1C7: 5A
TYA                     ; $27:E1C8: 98
LSR A                   ; $27:E1C9: 4A
LSR A                   ; $27:E1CA: 4A
TAY                     ; $27:E1CB: A8
LDA #$02                ; $27:E1CC: A9 02
STA $0A20,y             ; $27:E1CE: 99 20 0A
PLY                     ; $27:E1D1: 7A
INX                     ; $27:E1D2: E8
INY                     ; $27:E1D3: C8
INY                     ; $27:E1D4: C8
INY                     ; $27:E1D5: C8
INY                     ; $27:E1D6: C8
CPX #$03                ; $27:E1D7: E0 03
BCC CODE_27E1B1         ; $27:E1D9: 90 D6
PLY                     ; $27:E1DB: 7A
PLX                     ; $27:E1DC: FA
PLB                     ; $27:E1DD: AB
RTL                     ; $27:E1DE: 6B

DATA_27E1DF:
db $58,$68,$68,$58,$68,$68,$50,$60
db $70

DATA_27E1E8:
db $A0,$A2,$A2,$A4,$A6,$A6,$A8,$AA
db $AC

DATA_27E1F1:
db $80,$90,$98

DATA_27E1F4:
db $AE,$8C,$8D
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$00,$FF,$00,$FF,$02,$FF,$00
db $FF,$02,$FF,$01,$FF,$00,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$FF,$00
db $FF,$00,$FF,$01,$FF,$00,$FF,$00
db $FF,$00,$0E,$25,$06,$FF,$01,$5B
db $0D,$14,$5A,$13,$14,$5B,$26,$16
db $5A,$29,$16,$FF

DATA_27E5E3:
db $01,$34,$0D,$14,$FF,$01,$34,$0D
db $04,$FF,$01,$70,$0A,$17,$2A,$10
db $16,$A0,$2C,$12,$73,$3E,$10,$74
db $40,$10,$73,$42,$10,$74,$44,$10
db $73,$46,$10,$74,$50,$10,$73,$55
db $16,$74,$5C,$16,$73,$5D,$16,$74
db $5E,$16,$73,$5F,$16,$74,$60,$16
db $41,$68,$15,$FF,$01,$6C,$14,$0F
db $BC,$5E,$0F,$D3,$61,$00,$FF,$01
db $FF,$01,$FF,$01,$FF,$01,$FF,$01
db $FF,$01,$D3,$00,$30,$5F,$11,$14
db $60,$14,$14,$6C,$34,$18,$6C,$36
db $18,$6C,$38,$18,$FF,$01,$3C,$08
db $15,$3C,$38,$11,$FF,$01,$58,$0D
db $04,$58,$11,$11,$6C,$1B,$18,$61
db $1C,$16,$6C,$1D,$18,$72,$21,$17
db $6C,$29,$18,$6F,$2A,$06,$6D,$2B
db $13,$6C,$2D,$18,$6D,$3B,$13,$6D
db $3C,$13,$6D,$48,$14,$6D,$4B,$14
db $72,$4B,$18,$70,$4D,$14,$70,$4F
db $14,$72,$57,$14,$72,$59,$14,$6C
db $59,$18,$58,$5E,$08,$6F,$65,$11
db $6C,$6E,$18,$6C,$70,$18,$81,$79
db $13,$81,$7B,$13,$41,$88,$15,$FF
db $01,$25,$02,$0C,$FF,$01,$25,$02
db $0D,$FF,$01,$25,$02,$0E,$FF,$01
db $25,$02,$0F,$FF,$01,$25,$02,$10
db $FF,$01,$25,$02,$11,$FF,$01,$25
db $02,$05,$FF,$01,$25,$02,$04,$FF
db $01,$25,$02,$07,$FF,$01,$25,$02
db $08,$FF,$01,$25,$02,$06,$FF,$01
db $25,$02,$0B,$FF,$01,$25,$02,$09
db $FF,$01,$25,$02,$0A,$FF,$01,$25
db $02,$02,$FF,$01,$25,$02,$03,$FF
db $01,$25,$02,$01,$FF,$01,$25,$02
db $12,$FF,$01,$25,$02,$13,$FF,$01
db $25,$02,$14,$FF,$01,$25,$02,$15
db $FF,$01,$25,$02,$16,$FF,$01,$25
db $02,$17,$FF,$01,$6D,$12,$19,$83
db $56,$12,$41,$68,$15,$FF,$01,$6E
db $0C,$19,$6E,$12,$19,$6D,$19,$06
db $6D,$1C,$03,$55,$25,$19,$55,$27
db $19,$55,$29,$19,$6C,$38,$19,$6C
db $3A,$19,$6D,$4C,$06,$6E,$4E,$19
db $6E,$51,$19,$6E,$54,$19,$6D,$56
db $06,$55,$5D,$0A,$6C,$63,$07,$71
db $64,$19,$FF,$01,$41,$18,$15,$FF
db $01,$71,$0C,$19,$71,$10,$19,$71
db $12,$19,$2B,$1C,$09,$2B,$23,$18
db $71,$2F,$19,$71,$32,$19,$71,$35
db $19,$71,$38,$19,$71,$4F,$19,$71
db $51,$19,$71,$53,$19,$71,$55,$19
db $2B,$5F,$18,$71,$6C,$19,$FF,$01
db $6E,$11,$16,$6C,$19,$19,$6C,$18
db $15,$A0,$26,$16,$6C,$2E,$14,$72
db $32,$19,$72,$33,$19,$6E,$42,$19
db $6C,$4C,$19,$72,$4B,$15,$A0,$56
db $17,$A0,$5E,$16,$72,$54,$19,$6C
db $5D,$19,$6D,$6D,$15,$6D,$6A,$19
db $6E,$78,$16,$A0,$78,$17,$6C,$82
db $13,$6D,$81,$16,$6E,$8D,$13,$6E
db $9E,$19,$41,$A8,$15,$FF,$01,$77
db $0B,$12,$77,$0F,$13,$61,$0B,$15
db $A0,$14,$06,$A0,$1A,$17,$A0,$22
db $05,$A2,$29,$06,$6C,$20,$09,$77
db $2D,$12,$61,$26,$15,$77,$21,$16
db $6C,$32,$09,$6C,$34,$09,$77,$30
db $16,$FF,$01,$41,$38,$15,$FF,$01
db $41,$38,$15,$FF,$01,$7A,$18,$14
db $7A,$16,$18,$7E,$11,$18,$7D,$26
db $16,$7A,$2D,$13,$7C,$30,$18,$7C
db $32,$18,$7E,$42,$18,$7A,$4B,$18
db $7C,$4A,$14,$7C,$54,$18,$7A,$5C
db $18,$7D,$56,$17,$7D,$5E,$16,$7B
db $69,$18,$7B,$6D,$14,$7E,$78,$15
db $7D,$78,$17,$7B,$80,$15,$7A,$81
db $12,$7E,$8C,$12,$7E,$9E,$18,$41
db $A8,$15,$FF,$01,$A2,$0C,$16,$2B
db $08,$18,$A2,$0D,$09,$A6,$12,$08
db $A2,$17,$09,$71,$1C,$18,$71,$1E
db $18,$71,$20,$18,$A2,$22,$16,$71
db $26,$0A,$71,$28,$0A,$71,$2A,$0A
db $55,$32,$09,$A2,$36,$15,$55,$3C
db $17,$2B,$3D,$0A,$A6,$42,$14,$A0
db $4A,$16,$71,$4D,$0A,$71,$51,$0A
db $71,$55,$0A,$A2,$59,$17,$2B,$5C
db $0A,$71,$64,$18,$A6,$66,$07,$71
db $6A,$0A,$FF,$01,$6C,$0D,$19,$82
db $15,$18,$6D,$27,$14,$6C,$32,$18
db $72,$3A,$19,$73,$42,$19,$73,$4A
db $19,$82,$57,$17,$72,$65,$19,$72
db $67,$19,$6D,$68,$13,$74,$79,$19
db $6C,$78,$18,$07,$96,$18,$41,$98
db $15,$FF,$01,$3E,$08,$17,$41,$28
db $15,$FF,$01,$98,$0A,$13,$41,$48
db $15,$FF,$01,$A0,$11,$18,$A4,$15
db $14,$A6,$17,$14,$A0,$1E,$15,$A0
db $26,$17,$A3,$29,$11,$A0,$2C,$18
db $A3,$2F,$11,$A0,$32,$17,$A6,$3C
db $13,$A0,$45,$18,$A2,$47,$16,$A4
db $49,$14,$39,$4C,$14,$A3,$58,$15
db $2A,$5C,$18,$A2,$5D,$16,$2A,$6A
db $16,$A6,$6C,$17,$39,$6F,$19,$A7
db $78,$11,$A0,$78,$15,$33,$80,$19
db $33,$82,$19,$33,$88,$19,$A2,$8B
db $16,$46,$98,$16,$2A,$A0,$18,$A6
db $A3,$15,$33,$AD,$19,$3D,$AF,$16
db $41,$C8,$15,$FF,$01,$6E,$12,$07
db $A1,$16,$08,$BC,$20,$09,$74,$22
db $04,$55,$2D,$0A,$55,$33,$0A,$77
db $36,$18,$BC,$3A,$0A,$55,$3D,$0A
db $55,$46,$06,$BC,$46,$0A,$55,$4E
db $04,$55,$56,$0A,$55,$5A,$0A,$77
db $5B,$15,$55,$69,$0A,$77,$6D,$14
db $6C,$6F,$0A,$6E,$7A,$0A,$6E,$7E
db $05,$77,$83,$18,$77,$8A,$14,$FF
db $01,$41,$18,$15,$FF,$01,$41,$48
db $15,$FF,$01,$41,$48,$15,$FF,$01
db $40,$0B,$18,$89,$14,$19,$89,$1A
db $15,$89,$27,$14,$33,$30,$0C,$33
db $34,$0A,$33,$3A,$07,$40,$3C,$06
db $89,$44,$08,$89,$54,$09,$39,$63
db $19,$39,$68,$19,$74,$6B,$0D,$39
db $6D,$19,$41,$88,$15,$33,$88,$19
db $FF,$01,$D6,$32,$0D,$52,$33,$0F
db $BA,$34,$0F,$FF,$01,$41,$18,$15
db $FF,$01,$A4,$16,$13,$A0,$1C,$16
db $A4,$20,$13,$A0,$24,$12,$6E,$33
db $19,$BC,$37,$16,$BC,$37,$18,$BC
db $3C,$14,$BC,$3C,$19,$BC,$4F,$18
db $BC,$50,$13,$2F,$51,$12,$6D,$59
db $16,$A4,$5F,$14,$6E,$6A,$17,$BC
db $6B,$18,$6F,$6E,$14,$BC,$72,$13
db $BC,$72,$16,$BC,$7A,$15,$BC,$7A
db $18,$6C,$7F,$19,$A2,$91,$15,$41
db $A8,$15,$FF,$01,$29,$0F,$16,$29
db $12,$11,$29,$1E,$10,$29,$20,$16
db $29,$31,$14,$29,$33,$16,$29,$3E
db $19,$6C,$41,$18,$29,$51,$19,$6C
db $53,$18,$29,$55,$19,$29,$59,$15
db $A6,$60,$17,$29,$6A,$19,$A6,$6C
db $16,$29,$75,$17,$29,$79,$15,$29
db $7D,$13,$6E,$7E,$11,$41,$98,$15
db $29,$98,$19,$FF,$01,$41,$18,$15
db $FF,$01,$D3,$08,$50,$6C,$22,$15
db $6C,$24,$15,$6F,$2C,$11,$6C,$3A
db $10,$72,$3B,$14,$72,$3C,$14,$28
db $46,$0C,$6D,$4E,$08,$6C,$52,$0D
db $58,$57,$09,$6D,$5F,$09,$6C,$62
db $09,$6C,$63,$09,$72,$6C,$0D,$72
db $6D,$0D,$58,$77,$06,$41,$88,$15
db $FF,$01,$6C,$11,$18,$73,$15,$18
db $6D,$20,$14,$6C,$23,$18,$A0,$25
db $15,$A2,$2B,$16,$A4,$32,$16,$6D
db $3F,$18,$73,$44,$18,$70,$4E,$18
db $A6,$52,$14,$6D,$5E,$12,$70,$66
db $18,$A2,$69,$16,$6F,$74,$16,$6D
db $7D,$18,$6D,$7F,$18,$6E,$8B,$11
db $41,$A8,$15,$FF,$01,$72,$0E,$19
db $A6,$16,$17,$72,$21,$19,$6D,$24
db $16,$72,$34,$18,$72,$37,$18,$73
db $3B,$18,$6E,$53,$13,$6E,$56,$13
db $6E,$59,$13,$6C,$5C,$19,$A0,$70
db $18,$A4,$74,$17,$6D,$83,$17,$41
db $A8,$15,$FF,$01,$41,$38,$15,$FF
db $01,$41,$28,$15,$FF,$01,$41,$18
db $15,$FF,$01,$72,$1A,$12,$6C,$18
db $19,$C0,$10,$19,$C1,$13,$19,$6D
db $2D,$13,$C0,$34,$12,$C1,$37,$12
db $41,$58,$15,$FF,$01,$41,$58,$15
db $FF,$01,$82,$02,$18,$41,$18,$15
db $FF,$01,$FF,$01,$D3,$00,$50,$2D
db $00,$19,$64,$10,$19,$64,$1C,$19
db $43,$22,$19,$6C,$2F,$13,$43,$52
db $19,$92,$52,$15,$6D,$63,$15,$43
db $6C,$19,$43,$86,$19,$43,$96,$19
db $92,$9E,$11,$FF,$01,$41,$28,$15
db $FF,$01,$70,$10,$0F,$70,$13,$12
db $70,$23,$0F,$70,$25,$19,$A2,$31
db $13,$70,$32,$0A,$70,$34,$19,$70
db $3B,$14,$70,$40,$0F,$70,$4B,$13
db $70,$4E,$16,$68,$63,$0C,$70,$67
db $0F,$68,$6E,$0C,$A0,$72,$0F,$FF
db $01,$40,$0C,$18,$40,$0F,$18,$40
db $1E,$18,$40,$26,$18,$40,$37,$14
db $40,$3B,$14,$6C,$4A,$18,$40,$50
db $18,$33,$50,$08,$33,$51,$08,$A6
db $65,$18,$FF,$01,$77,$0D,$16,$6A
db $17,$14,$66,$1C,$14,$A1,$23,$04
db $63,$24,$16,$65,$28,$17,$66,$31
db $16,$A3,$33,$08,$77,$44,$14,$6A
db $4E,$14,$65,$57,$18,$77,$58,$14
db $A0,$65,$09,$66,$65,$16,$A4,$6C
db $08,$63,$6C,$13,$FF,$01,$81,$0C
db $14,$81,$09,$18,$BA,$0D,$14,$FF
db $01,$43,$10,$18,$43,$17,$18,$A3
db $18,$14,$29,$18,$0E,$42,$22,$0B
db $29,$23,$17,$A4,$2C,$18,$29,$2F
db $09,$A7,$34,$0E,$77,$4D,$0F,$77
db $47,$15,$77,$53,$11,$77,$51,$15
db $77,$5E,$0F,$77,$63,$0D,$77,$6B
db $12,$77,$70,$14,$77,$76,$0F,$77
db $78,$16,$77,$7E,$12,$77,$8D,$0F
db $A3,$80,$10,$A2,$84,$11,$A3,$88
db $10,$A2,$8C,$12,$29,$A0,$0F,$29
db $A6,$0F,$29,$A4,$0F,$A4,$A8,$10
db $42,$AD,$0F,$29,$BC,$09,$FF,$01
db $C1,$19,$13,$72,$20,$18,$C1,$2B
db $13,$73,$39,$15,$A4,$4A,$11,$72
db $53,$17,$72,$55,$10,$73,$61,$14
db $72,$6B,$16,$72,$6C,$17,$A4,$6E
db $16,$72,$7E,$18,$A4,$81,$17,$C1
db $8B,$14,$74,$9D,$19,$41,$A8,$15
db $FF,$01,$2B,$10,$15,$83,$3F,$12
db $B6,$63,$12,$6B,$75,$16,$83,$91
db $11,$B6,$B7,$11,$41,$C8,$15,$FF
db $01,$6C,$13,$13,$6C,$17,$15,$6C
db $1A,$16,$6C,$1E,$19,$6C,$33,$13
db $6C,$37,$15,$6E,$3C,$17,$6E,$3F
db $18,$71,$51,$14,$71,$57,$17,$71
db $59,$18,$A6,$60,$19,$83,$65,$12
db $C0,$92,$18,$C1,$94,$18,$6E,$B3
db $17,$6E,$B7,$17,$41,$C8,$15,$FF
db $01,$81,$0C,$18,$BA,$0D,$14,$FF
db $01,$D3,$00,$51,$70,$18,$09,$70
db $1B,$09,$A2,$20,$0C,$A2,$25,$10
db $A6,$29,$12,$A2,$2E,$12,$43,$58
db $11,$43,$65,$0E,$70,$77,$0C,$70
db $79,$0D,$D3,$7C,$51,$FF,$01,$70
db $0B,$12,$70,$0D,$12,$41,$18,$15
db $FF,$01,$6C,$38,$06,$A3,$3C,$08
db $A3,$40,$06,$A3,$46,$04,$A3,$4A
db $05,$A3,$4C,$06,$A3,$4E,$07,$41
db $88,$15,$FF,$01,$6C,$1B,$16,$6C
db $1F,$0A,$6C,$1F,$10,$6C,$21,$10
db $6C,$28,$0C,$6C,$2A,$0C,$6C,$5C
db $0B,$6C,$5E,$0B,$6C,$5D,$13,$6C
db $69,$11,$6C,$64,$16,$6C,$66,$17
db $6C,$70,$18,$FF,$01,$70,$12,$13
db $70,$15,$10,$70,$19,$10,$A4,$1F
db $16,$A3,$25,$0F,$A3,$2C,$0C,$70
db $2B,$0F,$70,$32,$12,$70,$34,$14
db $A4,$37,$18,$6C,$4C,$09,$6C,$50
db $0B,$6C,$56,$09,$6C,$65,$0B,$A4
db $64,$14,$A2,$66,$16,$A2,$6C,$17
db $70,$6A,$18,$A2,$71,$15,$70,$76
db $18,$A0,$78,$17,$A1,$78,$13,$FF
db $01,$C0,$17,$14,$C1,$19,$14,$C0
db $2C,$17,$6C,$33,$17,$6C,$3B,$18
db $6C,$41,$17,$C1,$47,$17,$A0,$6B
db $16,$A0,$70,$17,$41,$88,$15,$FF
db $01,$70,$12,$0D,$70,$16,$0D,$A0
db $19,$11,$A1,$26,$09,$A1,$2B,$05
db $A0,$2B,$0B,$70,$28,$0C,$70,$2A
db $0C,$70,$27,$09,$70,$2D,$05,$A0
db $41,$07,$70,$50,$0C,$A1,$54,$09
db $70,$68,$10,$A1,$6A,$0E,$70,$6F
db $10,$A0,$70,$0F,$A1,$72,$0C,$FF
db $01,$AF,$02,$11,$A4,$1A,$1A,$6F
db $1B,$12,$A4,$29,$19,$A4,$2C,$19
db $6C,$37,$19,$5D,$51,$12,$6E,$7E
db $16,$6E,$9E,$16,$41,$D8,$15,$FF
db $01,$70,$12,$16,$70,$17,$18,$68
db $15,$13,$70,$22,$15,$80,$25,$14
db $68,$33,$10,$69,$48,$10,$70,$4B
db $16,$6F,$50,$13,$6F,$65,$13,$69
db $61,$11,$70,$71,$18,$70,$71,$18
db $69,$7E,$14,$69,$86,$17,$70,$88
db $15,$FF,$01,$D4,$00,$1E,$72,$0F
db $15,$A4,$13,$19,$A6,$26,$19,$77
db $38,$17,$26,$33,$14,$80,$39,$13
db $77,$48,$18,$77,$55,$17,$77,$5F
db $18,$77,$67,$17,$80,$60,$13,$80
db $69,$12,$FF,$01,$72,$2E,$13,$72
db $30,$15,$72,$31,$16,$72,$42,$16
db $72,$43,$17,$6E,$60,$16,$77,$84
db $18,$40,$95,$14,$A1,$99,$12,$A1
db $9D,$12,$A5,$A8,$16,$A3,$AE,$16
db $40,$AA,$19,$A6,$B4,$17,$40,$C4
db $15,$40,$CF,$14,$40,$D2,$19,$A3
db $D7,$15,$A3,$E0,$15,$40,$E0,$18
db $40,$EA,$18,$FF,$01,$AF,$02,$11
db $74,$2E,$05,$A6,$3A,$0A,$A6,$40
db $0A,$A6,$46,$0A,$A6,$50,$0B,$A6
db $56,$0F,$A6,$5C,$13,$A6,$8D,$13
db $BB,$92,$01,$A6,$93,$0F,$A6,$99
db $0B,$80,$C1,$19,$41,$E8,$15,$FF
db $01,$70,$0E,$0F,$70,$11,$12,$70
db $13,$14,$70,$15,$16,$A3,$27,$10
db $70,$2C,$12,$A0,$2D,$16,$6C,$48
db $09,$6C,$4A,$0A,$6C,$54,$09,$6C
db $6C,$0A,$A6,$75,$15,$A3,$7D,$14
db $FF,$01,$D3,$00,$51,$D4,$01,$2C
db $2D,$06,$19,$6C,$12,$15,$6C,$38
db $16,$3E,$54,$18,$FF,$01,$3F,$08
db $0A,$3F,$14,$0F,$2F,$1D,$0A,$3F
db $23,$0F,$FF,$01,$FF,$01,$94,$18
db $05,$FF,$01,$98,$16,$14,$94,$48
db $09,$99,$58,$09,$FF,$01,$94,$27
db $14,$99,$37,$14,$FF,$01,$94,$37
db $10,$98,$77,$14,$FF,$01,$94,$35
db $14,$98,$57,$14,$9A,$65,$06,$FF
db $01,$9A,$44,$09,$98,$67,$14,$FF
db $01,$98,$18,$05,$94,$48,$05,$FF
db $01,$72,$0F,$17,$72,$11,$18,$A2
db $14,$17,$A6,$22,$17,$72,$34,$15
db $72,$36,$16,$72,$38,$17,$77,$41
db $19,$6C,$52,$14,$6C,$54,$15,$6C
db $56,$16,$74,$65,$18,$A5,$66,$11
db $73,$6B,$18,$83,$92,$12,$41,$C8
db $15,$FF,$01,$46,$10,$15,$6C,$1A
db $17,$33,$21,$17,$33,$23,$17,$33
db $27,$16,$39,$2A,$15,$39,$2F,$16
db $29,$37,$15,$29,$3D,$14,$29,$43
db $13,$40,$4A,$18,$40,$54,$18,$40
db $5D,$18,$33,$65,$12,$33,$68,$12
db $33,$6B,$12,$40,$74,$18,$40,$7A
db $19,$40,$7F,$19,$41,$A8,$15,$FF
db $01,$D3,$00,$60,$3B,$00,$19,$3C
db $0B,$11,$3C,$0F,$17,$44,$1B,$15
db $6F,$2F,$13,$64,$37,$19,$64,$3C
db $19,$64,$4A,$19,$64,$4E,$19,$64
db $5C,$19,$64,$5F,$19,$44,$52,$15
db $6F,$6B,$10,$64,$6A,$19,$64,$6F
db $19,$A4,$7B,$13,$FF,$01,$3C,$0B
db $08,$64,$12,$1A,$41,$28,$15,$FF
db $01,$D3,$00,$00,$93,$1D,$14,$6D
db $29,$12,$6D,$3B,$12,$6D,$3C,$18
db $6F,$44,$14,$6D,$54,$14,$6E,$6E
db $14,$6F,$76,$12,$93,$7A,$13,$D3
db $00,$00,$FF,$01,$80,$10,$16,$41
db $28,$15,$FF,$01,$27,$12,$18,$6D
db $13,$13,$6D,$2B,$17,$6D,$35,$18
db $27,$5A,$19,$27,$6A,$18,$6F,$6D
db $15,$6F,$71,$13,$41,$88,$15,$FF
db $01,$2F,$0E,$10,$8B,$15,$15,$8C
db $1C,$11,$8B,$2F,$15,$8C,$34,$11
db $60,$48,$17,$8C,$4B,$11,$60,$57
db $13,$2F,$57,$16,$8C,$61,$15,$8B
db $77,$18,$FF,$01,$4B,$1D,$24,$FF
db $01,$41,$58,$15,$FF,$01,$6D,$12
db $10,$6D,$1C,$15,$6F,$29,$13,$6D
db $38,$18,$73,$43,$12,$73,$44,$12
db $6D,$4B,$16,$27,$5B,$15,$27,$62
db $13,$72,$6F,$10,$72,$71,$10,$6D
db $79,$10,$6D,$79,$18,$74,$8B,$14
db $74,$8D,$14,$41,$A8,$15,$FF,$01
db $D4,$00,$1C,$6E,$12,$15,$6E,$17
db $15,$74,$14,$17,$6E,$2D,$16,$A7
db $30,$11,$A6,$37,$17,$74,$4E,$17
db $58,$52,$13,$A2,$54,$17,$A7,$69
db $10,$6E,$70,$15,$74,$78,$17,$41
db $98,$15,$FF,$01,$6D,$1D,$15,$6F
db $29,$16,$6D,$37,$13,$6D,$38,$18
db $FF,$01,$6D,$1D,$16,$6F,$29,$17
db $6D,$37,$14,$6D,$38,$19,$FF,$01
db $D3,$00,$02,$2C,$0F,$18,$2C,$14
db $15,$2C,$1C,$13,$2C,$2A,$11,$24
db $2C,$14,$2C,$3A,$19,$6D,$30,$16
db $2C,$49,$15,$2C,$4E,$0C,$2C,$4D
db $12,$24,$50,$10,$2C,$53,$0D,$6D
db $5C,$07,$2C,$67,$0A,$2C,$69,$07
db $2C,$79,$11,$2C,$78,$15,$2C,$88
db $16,$FF,$01,$3C,$09,$0E,$6D,$1E
db $06,$3C,$11,$08,$3C,$14,$10,$3C
db $27,$06,$3C,$27,$13,$27,$3E,$08
db $3C,$31,$03,$28,$4A,$11,$6D,$52
db $0E,$3C,$57,$0A,$3C,$56,$18,$3C
db $5F,$14,$27,$7B,$11,$3C,$78,$09
db $3C,$74,$18,$41,$88,$15,$FF,$01
db $46,$14,$16,$2A,$24,$18,$A2,$2A
db $17,$A4,$3A,$16,$2A,$46,$18,$2A
db $4A,$18,$2A,$5C,$18,$73,$63,$19
db $2A,$65,$18,$46,$6C,$16,$41,$88
db $15,$FF,$01,$D3,$00,$53,$64,$11
db $19,$64,$19,$19,$64,$23,$19,$58
db $40,$13,$6F,$4B,$12,$59,$57,$10
db $44,$5D,$15,$58,$6B,$11,$64,$6B
db $19,$43,$76,$19,$FF,$01,$41,$28
db $15,$FF,$01,$6D,$13,$12,$6D,$1A
db $18,$3C,$21,$13,$6F,$30,$11,$6C
db $36,$18,$44,$4D,$18,$6F,$5C,$0D
db $37,$74,$14,$44,$78,$12,$6F,$82
db $15,$41,$98,$15,$6C,$98,$18,$FF
db $01,$D3,$00,$00,$D4,$01,$2C,$36
db $17,$14,$36,$23,$16,$36,$25,$13
db $36,$27,$19,$36,$2F,$15,$6D,$43
db $15,$36,$44,$18,$36,$4B,$14,$36
db $56,$16,$36,$58,$15,$36,$61,$13
db $36,$6D,$18,$36,$6F,$15,$36,$70
db $1A,$6F,$75,$13,$6D,$7C,$16,$FF
db $01,$92,$12,$16,$92,$19,$18,$72
db $1E,$12,$72,$23,$12,$72,$24,$12
db $44,$2E,$13,$37,$3F,$19,$3C,$46
db $18,$3C,$4D,$16,$91,$62,$15,$91
db $6B,$16,$58,$77,$10,$91,$75,$16
db $91,$7E,$15,$91,$87,$15,$91,$90
db $16,$41,$A8,$15,$FF,$01,$D3,$00
db $09,$77,$12,$10,$66,$18,$16,$77
db $1D,$17,$61,$1F,$11,$77,$2D,$15
db $D2,$34,$11,$61,$3B,$11,$D2,$3C
db $0C,$6D,$44,$09,$6F,$51,$03,$6D
db $56,$07,$6C,$58,$07,$6D,$61,$09
db $66,$6C,$11,$66,$72,$11,$77,$77
db $15,$FF,$01,$82,$03,$18,$82,$0E
db $18,$41,$18,$15,$FF,$01,$29,$2B
db $19,$41,$38,$15,$FF,$01,$6D,$0B
db $13,$6D,$12,$14,$6D,$24,$14,$6D
db $26,$14,$40,$33,$19,$40,$3C,$18
db $73,$45,$19,$6F,$52,$17,$40,$5E
db $17,$40,$65,$17,$40,$6B,$17,$40
db $74,$17,$92,$81,$15,$6D,$84,$15
db $41,$A8,$15,$FF,$01,$D3,$00,$0A
db $D4,$01,$4E,$58,$26,$0C,$58,$6F
db $02,$FF,$01,$6E,$06,$17,$41,$28
db $15,$FF,$01,$6D,$26,$0D,$41,$58
db $15,$FF,$01,$A0,$0A,$16,$A0,$12
db $17,$A0,$22,$18,$A0,$34,$18,$A0
db $48,$18,$A0,$4C,$18,$A0,$5C,$18
db $A0,$6E,$18,$A0,$96,$18,$A0,$B8
db $18,$FF,$01,$D3,$00,$54,$77,$11
db $16,$77,$17,$14,$66,$1A,$0E,$77
db $1C,$17,$63,$22,$15,$6A,$29,$10
db $77,$2A,$14,$77,$32,$16,$66,$41
db $0E,$66,$43,$0F,$77,$48,$16,$77
db $4C,$14,$77,$50,$17,$D2,$57,$15
db $77,$60,$16,$66,$65,$0E,$66,$69
db $0E,$D2,$72,$15,$6A,$78,$12,$FF
db $01,$6F,$09,$07,$6C,$02,$10,$6C
db $04,$10,$A2,$0E,$27,$57,$07,$2C
db $56,$0E,$2F,$56,$0A,$33,$6D,$01
db $36,$6F,$04,$43,$6D,$0C,$48,$6D
db $07,$57,$A2,$08,$5E,$57,$02,$60
db $56,$08,$60,$6D,$03,$6D,$FF,$01
db $D3,$00,$0F,$B5,$0F,$0F,$67,$14
db $18,$63,$2E,$13,$6A,$36,$13,$BB
db $3F,$0F,$63,$56,$0D,$6A,$63,$0C
db $6A,$69,$10,$B5,$6F,$0F,$67,$7E
db $18,$63,$8A,$13,$67,$97,$15,$FF
db $01,$77,$0D,$12,$63,$16,$15,$65
db $1E,$17,$62,$24,$11,$77,$2F,$14
db $77,$31,$0C,$66,$36,$0D,$65,$48
db $18,$77,$49,$0D,$77,$5D,$0D,$66
db $5E,$12,$61,$6C,$10,$63,$75,$15
db $77,$79,$0F,$FF,$01,$56,$08,$0D
db $A2,$09,$2E,$A2,$09,$37,$56,$06
db $2F,$FF,$01,$65,$14,$09,$62,$1D
db $06,$65,$24,$09,$62,$30,$11,$66
db $33,$0C,$67,$3A,$18,$67,$4E,$18
db $66,$4E,$0C,$61,$67,$0A,$67,$70
db $18,$62,$7B,$05,$65,$7D,$12,$FF
db $01,$6C,$0F,$10,$6C,$07,$10,$6C
db $0E,$20,$FF,$01,$57,$0B,$0D,$56
db $05,$0F,$A0,$04,$42,$6D,$05,$52
db $56,$0B,$5B,$A0,$04,$61,$6C,$0D
db $67,$6C,$0F,$67,$FF,$01,$83,$2A
db $12,$6D,$55,$18,$6D,$60,$18,$6F
db $69,$14,$6F,$75,$10,$FF,$01,$83
db $0F,$12,$41,$18,$15,$FF,$01,$D3
db $00,$12,$D6,$2B,$07,$52,$2C,$16
db $BA,$2D,$16,$FF,$01,$7F,$0C,$16
db $7C,$10,$17,$7B,$18,$15,$A6,$26
db $07,$7E,$30,$17,$7C,$42,$0F,$7E
db $46,$11,$7B,$58,$13,$7B,$5F,$15
db $7B,$64,$13,$A6,$72,$15,$7A,$7A
db $17,$FF,$01,$D3,$00,$55,$BB,$0A
db $00,$6C,$1B,$18,$6D,$20,$10,$B7
db $21,$00,$B7,$3A,$00,$BB,$50,$00
db $58,$5E,$14,$58,$6D,$11,$58,$79
db $16,$FF

DATA_27F48D:
db $01,$6C,$0B,$18,$6B,$22,$16,$6B
db $2E,$13,$6B,$30,$13,$6B,$32,$13
db $A4,$36,$18,$6B,$3D,$13,$6B,$41
db $13,$83,$4F,$12,$6B,$55,$13,$BC
db $60,$18,$6B,$64,$18,$BC,$66,$17
db $6B,$6A,$18,$41,$88,$15,$FF,$01
db $86,$11,$17,$86,$25,$17,$FF,$01
db $D3,$00,$52,$D4,$01,$18,$7B,$10
db $14,$3B,$12,$19,$7B,$16,$15,$7F
db $1B,$16,$A6,$2E,$16,$A6,$3C,$14
db $BB,$48,$19,$7F,$50,$14,$B4,$5C
db $19,$7F,$63,$16,$B4,$65,$19,$BB
db $7C,$19,$FF,$01,$D3,$00,$07,$9F
db $16,$16,$9F,$18,$14,$9F,$1B,$13
db $9F,$1D,$16,$9F,$20,$17,$9F,$23
db $18,$9F,$26,$16,$9F,$29,$18,$9F
db $2C,$17,$9F,$2E,$16,$9F,$30,$15
db $9F,$33,$15,$9F,$36,$16,$6F,$37
db $14,$9F,$39,$18,$9F,$3C,$18,$9F
db $3F,$18,$58,$5D,$17,$FF,$01,$D3
db $00,$20,$6F,$0A,$10,$28,$10,$11
db $28,$14,$0D,$38,$18,$08,$28,$1C
db $06,$28,$2C,$11,$28,$33,$0C,$28
db $37,$0A,$27,$4C,$13,$28,$4E,$0F
db $58,$56,$14,$27,$58,$07,$38,$5D
db $05,$28,$74,$11,$28,$7A,$0A,$58
db $7E,$14,$27,$90,$12,$37,$95,$0E
db $38,$96,$0B,$FF,$01,$65,$06,$17
db $83,$0F,$03,$B6,$16,$03,$B6,$27
db $0B,$83,$30,$0B,$65,$44,$17,$FF
db $01,$D3,$00,$10,$FF,$01,$D3,$00
db $10,$FF,$01,$25,$00,$80,$FF,$01
db $6D,$24,$17,$25,$20,$80,$FF,$01
db $6B,$10,$15,$6B,$18,$14,$FF,$01
db $7A,$10,$13,$7E,$15,$0F,$7E,$1E
db $17,$7F,$22,$15,$BC,$2C,$17,$BD
db $33,$16,$BC,$3A,$15,$BD,$42,$17
db $7F,$47,$18,$BC,$55,$17,$BC,$56
db $16,$BC,$5D,$18,$BD,$5C,$13,$A2
db $51,$16,$7F,$60,$15,$BD,$66,$14
db $BD,$6A,$17,$7F,$73,$15,$BC,$79
db $14,$FF,$01,$D3,$00,$12,$FF,$01
db $D3,$00,$10,$FF,$01,$63,$0F,$13
db $63,$17,$17,$FF,$01,$91,$06,$12
db $91,$12,$15,$91,$1C,$17,$90,$28
db $13,$92,$2F,$15,$91,$2F,$19,$90
db $37,$17,$91,$44,$17,$91,$45,$05
db $90,$5D,$13,$6F,$61,$11,$93,$65
db $15,$90,$6C,$17,$93,$73,$19,$6E
db $7C,$16,$FF,$01,$A2,$0C,$13,$A6
db $15,$14,$A5,$1C,$10,$A1,$20,$15
db $A6,$25,$15,$6F,$34,$11,$FF,$01
db $A4,$0A,$14,$A4,$12,$14,$A0,$1E
db $15,$A5,$2C,$12,$A2,$31,$15,$A4
db $33,$13,$A4,$3A,$14,$FF,$01,$9E
db $0E,$0D,$9E,$12,$0F,$9E,$19,$10
db $9E,$17,$0D,$9E,$1E,$11,$9E,$23
db $10,$9E,$2B,$0F,$9E,$25,$0B,$9E
db $33,$0F,$FF,$01,$87,$0D,$14,$81
db $1B,$18,$81,$1D,$14,$82,$2D,$13
db $86,$37,$13,$FF,$01,$BB,$04,$19
db $B4,$17,$19,$B4,$5C,$19,$BB,$70
db $19,$FF,$01,$D6,$0C,$03,$52,$0D
db $15,$BA,$0E,$15,$FF,$01,$52,$0B
db $13,$BA,$0C,$13,$FF,$01,$52,$0B
db $13,$BA,$0C,$13,$FF,$01,$81,$0A
db $17,$BA,$0D,$14,$FF,$01,$D3,$00
db $12,$FF

DATA_27F6A7:
db $00,$82,$69,$18,$41,$78,$15,$FF
db $01,$41,$18,$15,$FF,$00,$D4,$00
db $2E,$39,$0E,$0A,$33,$1D,$08,$33
db $23,$06,$A6,$24,$05,$66,$2E,$13
db $39,$36,$02,$A6,$3C,$07,$6E,$49
db $08,$39,$55,$18,$39,$58,$18,$A6
db $5A,$03,$A6,$60,$09,$A6,$64,$04
db $A1,$66,$11,$A6,$6A,$08,$A2,$6E
db $07,$39,$71,$04,$A6,$72,$04,$A6
db $78,$07,$FF,$01,$81,$0B,$16,$81
db $07,$18,$BA,$0D,$14,$FF,$01,$81
db $0B,$16,$BA,$0D,$14,$FF,$00,$41
db $48,$15,$FF,$00,$6E,$0A,$14,$72
db $11,$05,$72,$1B,$05,$73,$1F,$09
db $72,$25,$05,$72,$29,$11,$72,$2D
db $11,$73,$3A,$16,$73,$3D,$16,$6E
db $55,$11,$72,$61,$05,$72,$6B,$05
db $72,$75,$05,$72,$7F,$05,$41,$B8
db $15,$FF,$00,$6B,$12,$17,$6B,$19
db $15,$6B,$1F,$16,$6B,$24,$18,$6B
db $29,$17,$6B,$2E,$16,$6D,$34,$19
db $6B,$40,$18,$59,$47,$19,$72,$56
db $11,$59,$5D,$19,$72,$64,$11,$59
db $83,$14,$A0,$9E,$17,$6B,$A1,$18
db $A0,$A4,$18,$6B,$B8,$19,$41,$B8
db $15,$FF,$00,$89,$09,$19,$89,$19
db $19,$6D,$22,$17,$89,$34,$19,$72
db $34,$13,$72,$35,$19,$72,$43,$11
db $72,$43,$17,$6D,$52,$11,$6D,$52
db $13,$6D,$64,$13,$6D,$69,$15,$6D
db $6F,$17,$41,$98,$15,$89,$9A,$19
db $FF,$00,$59,$0F,$13,$6D,$12,$17
db $59,$29,$13,$59,$29,$19,$59,$47
db $12,$6C,$42,$17,$6C,$48,$17,$6B
db $63,$13,$6C,$62,$13,$6C,$6F,$14
db $6B,$6C,$13,$6B,$6C,$18,$6B,$7D
db $14,$6B,$80,$17,$6C,$8B,$13,$6C
db $8D,$13,$FF,$00,$3F,$11,$19,$3F
db $1A,$19,$3F,$1C,$19,$8A,$1F,$11
db $3F,$28,$19,$3F,$2E,$16,$8A,$3D
db $11,$2F,$42,$12,$3F,$4C,$16,$8A
db $60,$01,$2F,$6D,$01,$8A,$76,$01
db $8A,$7A,$02,$8A,$7E,$03,$8A,$86
db $03,$4B,$AD,$18,$FF,$00,$D3,$04
db $31,$2F,$0C,$11,$2F,$1E,$11,$FF
db $00,$73,$11,$17,$6D,$14,$16,$77
db $16,$0A,$6D,$1A,$16,$6D,$23,$17
db $82,$30,$18,$6E,$3A,$19,$6D,$44
db $17,$82,$4E,$15,$6F,$55,$04,$6F
db $58,$04,$A4,$5E,$15,$82,$6B,$15
db $82,$95,$18,$41,$98,$15,$FF,$00
db $81,$18,$09,$6B,$18,$11,$6B,$18
db $15,$6B,$25,$18,$6B,$29,$18,$6C
db $2D,$08,$6C,$31,$0A,$FF,$00,$41
db $18,$15,$FF,$00,$41,$18,$15,$FF
db $00,$D5,$0A,$16,$FF,$00,$4C,$4C
db $27,$FF,$00,$9E,$06,$17,$9E,$0B
db $15,$9E,$0D,$11,$53,$12,$0F,$53
db $18,$0F,$9E,$1E,$12,$9E,$24,$16
db $9E,$2C,$15,$9E,$2E,$11,$3F,$28
db $17,$9E,$32,$11,$9E,$36,$12,$53
db $3A,$0F,$2F,$47,$17,$9E,$4B,$14
db $9E,$4E,$17,$9E,$51,$14,$53,$56
db $0F,$53,$5E,$0F,$9E,$63,$11,$2F
db $6F,$15,$9E,$6A,$10,$9E,$71,$12
db $9E,$78,$13,$53,$79,$0F,$3F,$7E
db $17,$FF,$00,$8A,$09,$04,$5B,$14
db $15,$5A,$1C,$15,$5B,$23,$15,$8A
db $24,$04,$5A,$28,$15,$4B,$4D,$17
db $FF,$00,$8A,$3E,$12,$5A,$45,$15
db $8A,$4B,$12,$FF,$00,$9E,$12,$12
db $9E,$18,$12,$9E,$1F,$12,$9E,$27
db $11,$5B,$38,$15,$5A,$47,$16,$9E
db $51,$11,$9E,$53,$14,$9E,$5E,$11
db $5A,$5B,$17,$3F,$6B,$18,$4B,$9D
db $17,$FF,$00,$D3,$01,$30,$D3,$1C
db $30,$D6,$44,$0C,$BA,$45,$11,$52
db $4A,$18,$FF,$00,$32,$2A,$17,$32
db $2D,$13,$31,$2D,$15,$31,$30,$11
db $32,$3A,$15,$31,$3D,$13,$32,$42
db $18,$32,$43,$13,$31,$45,$16,$FF
db $00,$5A,$11,$14,$77,$17,$13,$77
db $1F,$17,$5A,$25,$14,$77,$29,$13
db $4C,$5C,$28,$FF,$00,$5A,$10,$14
db $5B,$19,$15,$3F,$14,$18,$8A,$2B
db $11,$2F,$3F,$14,$3F,$36,$18,$8A
db $48,$11,$2F,$4F,$14,$3F,$5C,$18
db $3F,$55,$18,$8A,$6B,$11,$3F,$68
db $18,$3F,$72,$18,$3F,$74,$18,$3F
db $7D,$18,$4C,$AD,$17,$FF,$00,$77
db $21,$17,$77,$3A,$17,$77,$4C,$17
db $FF,$00,$9E,$0D,$13,$8A,$16,$12
db $5B,$11,$14,$5A,$23,$14,$5B,$2A
db $0F,$8A,$32,$0D,$5A,$3B,$0F,$5A
db $3B,$14,$2F,$49,$11,$8A,$4D,$0F
db $5B,$4C,$15,$8A,$5B,$0F,$5B,$5C
db $17,$8A,$70,$0F,$FF,$00,$4B,$3C
db $17,$FF,$00,$98,$06,$14,$98,$17
db $11,$98,$2A,$0A,$98,$37,$14,$98
db $47,$14,$98,$56,$11,$98,$6A,$14
db $98,$73,$0A,$FF,$00,$A2,$0C,$14
db $A2,$13,$17,$2F,$14,$10,$5B,$18
db $15,$A2,$1D,$15,$A6,$25,$16,$A2
db $2A,$13,$A2,$31,$18,$8A,$35,$0F
db $A2,$39,$14,$2F,$46,$16,$A2,$48
db $18,$A2,$4C,$18,$A0,$58,$15,$A3
db $58,$11,$A6,$60,$14,$A2,$66,$16
db $8A,$72,$0F,$2F,$7F,$10,$2F,$83
db $14,$A2,$87,$19,$FF,$00,$5A,$10
db $15,$3F,$11,$18,$3F,$13,$18,$5A
db $19,$15,$8A,$1A,$0F,$4B,$3C,$27
db $FF,$00,$60,$13,$15,$51,$1F,$15
db $2F,$26,$12,$2F,$2D,$12,$31,$38
db $17,$31,$3E,$15,$32,$3E,$17,$2F
db $44,$16,$31,$4D,$15,$5A,$54,$15
db $8A,$5A,$10,$5B,$64,$14,$5F,$7C
db $16,$31,$7A,$15,$31,$81,$15,$4B
db $AC,$37,$FF,$00,$D3,$08,$40,$2F
db $04,$14,$2F,$0C,$14,$2F,$0D,$17
db $FF,$00,$9E,$0C,$15,$3A,$09,$16
db $9E,$10,$13,$9E,$15,$0F,$9E,$1A
db $09,$9E,$1D,$06,$30,$46,$02,$5B
db $48,$08,$5B,$48,$12,$5A,$41,$0D
db $4C,$7C,$17,$FF,$00,$51,$08,$16
db $5B,$17,$14,$5B,$1E,$15,$5F,$25
db $0A,$5B,$30,$12,$FF,$00,$08,$0C
db $0B,$4C,$6C,$17,$FF,$00,$8A,$0C
db $04,$5B,$14,$15,$5A,$1C,$15,$5B
db $23,$15,$8A,$24,$04,$5A,$28,$15
db $FF,$00,$8A,$0A,$11,$5B,$10,$14
db $FF,$00,$3F,$2A,$16,$3F,$39,$16
db $3F,$49,$16,$3F,$54,$19,$3F,$5B
db $19,$3F,$62,$12,$3F,$63,$12,$3F
db $6C,$15,$5B,$6E,$14,$4B,$8D,$27
db $FF,$00,$30,$10,$10,$30,$18,$10
db $30,$27,$14,$8B,$22,$14,$8B,$30
db $15,$30,$32,$10,$30,$3A,$11,$8C
db $41,$10,$30,$4C,$14,$8A,$52,$13
db $30,$53,$14,$8C,$5C,$15,$4B,$8C
db $17,$FF,$00,$5A,$11,$16,$5F,$1C
db $16,$60,$28,$16,$3F,$31,$18,$5A
db $35,$17,$8F,$4C,$10,$8B,$50,$18
db $8A,$52,$10,$8F,$5C,$10,$2F,$83
db $17,$3F,$87,$13,$8A,$9A,$10,$5F
db $A0,$15,$3F,$A8,$13,$08,$AA,$13
db $5B,$B4,$17,$3F,$B9,$14,$4B,$EC
db $38,$FF,$00,$9E,$14,$13,$9E,$1E
db $11,$8A,$2E,$10,$9E,$32,$12,$9E
db $38,$13,$08,$3B,$15,$9E,$3C,$12
db $9E,$49,$13,$9E,$4E,$12,$8A,$52
db $10,$9E,$57,$13,$9E,$5C,$10,$9E
db $5E,$13,$9E,$69,$12,$08,$74,$16
db $5E,$A2,$14,$08,$AA,$13,$2F,$B2
db $12,$60,$B7,$16,$08,$C4,$13,$8B
db $CD,$18,$08,$CE,$13,$FF,$00,$D0
db $18,$14,$D0,$1D,$14,$D0,$22,$14
db $2E,$31,$10,$30,$4E,$15,$5A,$55
db $13,$5A,$58,$0D,$5A,$5B,$07,$9E
db $6A,$09,$9E,$6E,$09,$9E,$74,$09
db $9E,$7A,$09,$51,$89,$12,$8B,$9A
db $0F,$9E,$A1,$13,$5A,$A8,$18,$9E
db $AA,$13,$9E,$AF,$13,$18,$CC,$0B
db $18,$EC,$0B,$FF,$00,$3F,$04,$18
db $3F,$0A,$18,$8C,$16,$10,$D0,$40
db $15,$75,$62,$16,$75,$6C,$16,$75
db $73,$17,$75,$7E,$15,$D0,$A3,$16
db $75,$D1,$17,$75,$D6,$16,$75,$D9
db $16,$75,$E1,$14,$75,$E5,$17,$FF
db $00,$B8,$03,$03,$AE,$0E,$09,$BE
db $09,$09,$BE,$0D,$0C,$BE,$15,$0C
db $BE,$1D,$08,$AB,$16,$02,$AC,$21
db $0A,$BF,$29,$0A,$BE,$26,$07,$BE
db $29,$07,$AA,$28,$0D,$AB,$2E,$03
db $BE,$34,$0C,$BE,$38,$06,$BE,$3C
db $09,$AE,$4F,$0A,$BE,$43,$0D,$BE
db $46,$0D,$AB,$4C,$04,$AE,$5E,$08
db $BE,$5A,$0F,$AB,$58,$03,$AE,$64
db $08,$AE,$69,$08,$BE,$60,$0C,$AA
db $64,$0F,$AE,$72,$08,$AE,$77,$08
db $AB,$7B,$03,$BF,$80,$06,$AB,$86
db $04,$AB,$96,$02,$FF,$00,$09,$16
db $14,$FF,$00,$0E,$0D,$08,$FF,$00
db $D3,$00,$03,$C4,$17,$0F,$AC,$18
db $0D,$C8,$24,$15,$C8,$27,$15,$BC
db $2D,$0C,$CA,$38,$07,$CB,$3C,$08
db $C8,$44,$0F,$BF,$49,$0A,$CA,$4E
db $0D,$CA,$5D,$0A,$C9,$5F,$10,$BC
db $5A,$0E,$CA,$61,$0A,$C9,$62,$10
db $CB,$66,$0A,$C8,$65,$10,$CB,$6A
db $0A,$C8,$68,$10,$BC,$70,$0C,$FF
db $00,$D3,$00,$0B,$C4,$13,$0D,$AA
db $16,$13,$C4,$18,$0D,$BC,$1E,$0C
db $C4,$24,$10,$C6,$28,$09,$AA,$29
db $14,$BC,$2C,$0D,$C6,$2D,$09,$BF
db $38,$0A,$AA,$3D,$14,$C5,$47,$12
db $BC,$4D,$10,$C5,$4F,$12,$FF,$00
db $D3,$00,$04,$BC,$15,$0D,$BC,$18
db $0B,$C9,$21,$0A,$BC,$29,$0B,$BC
db $2F,$0D,$BC,$33,$0A,$BC,$36,$0F
db $BC,$42,$11,$BC,$42,$13,$BC,$42
db $15,$BC,$53,$10,$BC,$53,$12,$BE
db $63,$0F,$BE,$65,$0F,$BE,$67,$0F
db $BC,$6E,$0C,$BC,$71,$0B,$FF,$00
db $D3,$00,$01,$BE,$19,$11,$BE,$1B
db $11,$BE,$1D,$11,$BC,$1F,$0E,$C8
db $29,$0F,$CB,$2D,$10,$CB,$30,$10
db $BC,$37,$0E,$CA,$3B,$0A,$CA,$3F
db $0A,$C8,$3C,$10,$C8,$40,$10,$AE
db $4B,$0C,$B1,$4D,$11,$AC,$54,$10
db $BE,$66,$0C,$BE,$68,$0C,$BE,$6A
db $0C,$AC,$6B,$11,$FF,$00,$D3,$00
db $05,$B1,$14,$0B,$AA,$15,$0F,$AA
db $14,$11,$B1,$1B,$0D,$AE,$26,$0A
db $9D,$29,$0D,$9D,$2C,$0D,$9D,$2F
db $0D,$B1,$39,$11,$AC,$3F,$11,$B2
db $3D,$0E,$BE,$3A,$0B,$B2,$4A,$0E
db $B1,$49,$0A,$B2,$55,$0C,$AC,$57
db $0E,$B1,$52,$11,$9D,$58,$11,$B1
db $6B,$0B,$AC,$6A,$0D,$B1,$68,$10
db $9D,$62,$11,$AA,$77,$13,$FF,$00
db $D3,$00,$06,$AA,$13,$0F,$AA,$11
db $11,$AE,$18,$0F,$AE,$2E,$0D,$AE
db $34,$0F,$AB,$3B,$0A,$B1,$42,$12
db $9D,$49,$14,$9D,$53,$15,$B2,$55
db $15,$9D,$57,$15,$AC,$5D,$12,$B1
db $6A,$06,$FF,$00,$D3,$00,$0C,$9D
db $17,$07,$9D,$1E,$07,$AE,$14,$08
db $AA,$15,$0A,$AE,$2E,$08,$AA,$30
db $0D,$9D,$33,$08,$AA,$3F,$0E,$9D
db $43,$0B,$BE,$55,$0D,$BE,$5B,$0D
db $AE,$5A,$0A,$BE,$69,$0A,$AE,$75
db $0B,$BE,$85,$0D,$BE,$8B,$09,$AA
db $8A,$0D,$AA,$90,$09,$AE,$96,$0A
db $AE,$A0,$08,$AE,$AA,$0B,$AE,$BD
db $0D,$AE,$C1,$0A,$AE,$C4,$07,$AA
db $DB,$0D,$FF,$01,$D3,$00,$0D,$B1
db $0B,$15,$AD,$0E,$17,$B1,$11,$16
db $AD,$14,$19,$B1,$18,$18,$AD,$22
db $17,$B1,$26,$16,$AD,$2E,$17,$B1
db $31,$16,$B1,$3A,$13,$AD,$43,$14
db $B1,$45,$15,$B1,$4C,$16,$AD,$51
db $16,$B1,$53,$17,$B1,$64,$16,$B1
db $64,$17,$AD,$68,$11,$B1,$6A,$12
db $B1,$74,$18,$AD,$7C,$17,$B1,$7F
db $16,$AD,$84,$12,$B1,$87,$11,$AD
db $8F,$19,$B1,$92,$18,$AD,$96,$14
db $B1,$99,$13,$AD,$A3,$16,$B1,$A6
db $15,$AA,$BE,$17,$FF,$01,$D3,$00
db $0E,$BE,$0D,$13,$C2,$08,$14,$C6
db $15,$12,$C6,$19,$12,$C2,$1C,$14
db $BE,$20,$13,$CF,$22,$12,$BE,$2A
db $12,$CD,$2F,$12,$C2,$42,$15,$C2
db $47,$13,$BE,$4C,$12,$BE,$52,$11
db $BE,$57,$13,$BE,$5C,$12,$CD,$5F
db $12,$C3,$73,$13,$BE,$78,$12,$CE
db $7F,$15,$C2,$80,$14,$C2,$81,$13
db $C2,$82,$12,$CD,$8F,$12,$50,$95
db $13,$50,$97,$11,$FF,$01,$D3,$00
db $14,$C2,$0D,$16,$C6,$15,$10,$C4
db $1A,$16,$C4,$1B,$16,$C4,$1C,$16
db $C7,$21,$11,$CF,$23,$16,$C2,$2B
db $16,$C2,$2C,$15,$C7,$34,$10,$AD
db $35,$17,$AD,$3D,$17,$AD,$41,$17
db $AD,$49,$17,$AD,$4D,$17,$C7,$53
db $11,$C6,$58,$11,$C7,$5A,$11,$C4
db $61,$16,$C4,$67,$16,$C5,$68,$16
db $CF,$6D,$16,$C4,$73,$16,$C2,$76
db $15,$C2,$79,$13,$AD,$7D,$13,$FF
db $01,$D3,$00,$13,$C2,$15,$16,$C4
db $17,$15,$CF,$1A,$16,$C2,$20,$16
db $CE,$23,$15,$C4,$26,$16,$C2,$2A
db $16,$C4,$2D,$15,$AC,$34,$17,$AD
db $39,$17,$CF,$3B,$16,$C2,$41,$16
db $AD,$44,$15,$C2,$4E,$16,$AD,$51
db $15,$C2,$59,$18,$C2,$5B,$16,$AD
db $5E,$15,$CF,$60,$16,$C2,$66,$16
db $AD,$6B,$15,$C2,$76,$16,$AD,$7B
db $15,$C5,$7F,$16,$CF,$80,$16,$C2
db $86,$16,$AD,$8B,$15,$CF,$8F,$16
db $CE,$96,$16,$AD,$98,$15,$C5,$9A
db $14,$CF,$9B,$16,$C2,$A9,$18,$C3
db $B1,$14,$AD,$B5,$13,$C4,$B7,$12
db $C5,$B8,$12,$C5,$B9,$15,$FF,$01
db $0E,$0D,$08,$FF,$01,$0E,$0D,$06
db $FF,$01,$0E,$0D,$08,$FF,$01,$0E
db $0D,$08,$FF,$01,$0E,$0D,$07,$FF
db $01,$0E,$0D,$07,$FF,$01,$D3,$00
db $11,$B8,$01,$03,$AA,$3E,$0B,$FF
db $01,$82,$03,$17,$82,$0C,$17,$BA
db $0F,$11,$FF,$01,$4C,$0C,$47,$FF
db $01,$4B,$0C,$17,$FF,$01,$4C,$0C
db $27,$FF,$01,$82,$0C,$17,$D6,$0D
db $09,$BA,$0E,$17,$FF,$01,$D3,$00
db $50,$2D,$04,$19,$6D,$19,$10,$6D
db $1D,$10,$3E,$10,$18,$6C,$39,$11
db $3E,$31,$18,$74,$43,$11,$74,$45
db $11,$3E,$4C,$18,$92,$55,$11,$92
db $59,$12,$6D,$63,$10,$27,$72,$13
db $FF,$01,$41,$38,$15,$FF,$FF,$FF
db $FF

