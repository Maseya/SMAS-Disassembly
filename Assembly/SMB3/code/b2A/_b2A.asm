; Super Mario Bros. 3

CODE_2A8000:
LDA $100B               ; $2A:8000: AD 0B 10
CMP #$04                ; $2A:8003: C9 04
BCC CODE_2A8018         ; $2A:8005: 90 11
PHB                     ; $2A:8007: 8B
PHK                     ; $2A:8008: 4B
PLB                     ; $2A:8009: AB
PHX                     ; $2A:800A: DA
INC $034A               ; $2A:800B: EE 4A 03
LDA $034B               ; $2A:800E: AD 4B 03
ASL A                   ; $2A:8011: 0A
TAX                     ; $2A:8012: AA
JSR (PNTR_2A8019,x)     ; $2A:8013: FC 19 80
PLX                     ; $2A:8016: FA
PLB                     ; $2A:8017: AB

CODE_2A8018:
RTL                     ; $2A:8018: 6B

PNTR_2A8019:
dw CODE_2A801D
dw CODE_2A8083

CODE_2A801D:
LDA $034A               ; $2A:801D: AD 4A 03
AND #$07                ; $2A:8020: 29 07
BNE CODE_2A804E         ; $2A:8022: D0 2A
REP #$20                ; $2A:8024: C2 20
LDA $034A               ; $2A:8026: AD 4A 03
AND #$0018              ; $2A:8029: 29 18 00
ASL A                   ; $2A:802C: 0A
STA $00                 ; $2A:802D: 85 00
LDA $1006               ; $2A:802F: AD 06 10
AND #$000F              ; $2A:8032: 29 0F 00
ASL A                   ; $2A:8035: 0A
ORA $00                 ; $2A:8036: 05 00
TAX                     ; $2A:8038: AA
LDA.w DATA_2A80C5,x     ; $2A:8039: BD C5 80
STA $00                 ; $2A:803C: 85 00
INC A                   ; $2A:803E: 1A
STA $04                 ; $2A:803F: 85 04
LDA.w DATA_2A80CD,x     ; $2A:8041: BD CD 80
STA $02                 ; $2A:8044: 85 02
INC A                   ; $2A:8046: 1A
STA $06                 ; $2A:8047: 85 06
JSR CODE_2A817E         ; $2A:8049: 20 7E 81
SEP #$20                ; $2A:804C: E2 20

CODE_2A804E:
LDA $034A               ; $2A:804E: AD 4A 03
CMP #$18                ; $2A:8051: C9 18
BNE CODE_2A8082         ; $2A:8053: D0 2D
REP #$20                ; $2A:8055: C2 20
LDA $1006               ; $2A:8057: AD 06 10
AND #$000F              ; $2A:805A: 29 0F 00
ASL A                   ; $2A:805D: 0A
TAX                     ; $2A:805E: AA
LDA.w DATA_2A82B2,x     ; $2A:805F: BD B2 82
STA $0A                 ; $2A:8062: 85 0A
LDA #$00FC              ; $2A:8064: A9 FC 00
STA $00                 ; $2A:8067: 85 00
STA $04                 ; $2A:8069: 85 04
LDA #$00FC              ; $2A:806B: A9 FC 00
STA $02                 ; $2A:806E: 85 02
STA $06                 ; $2A:8070: 85 06
LDA.w DATA_2A8105,x     ; $2A:8072: BD 05 81
STA $08                 ; $2A:8075: 85 08
JSR CODE_2A8287         ; $2A:8077: 20 87 82
SEP #$20                ; $2A:807A: E2 20
STZ $034A               ; $2A:807C: 9C 4A 03
INC $034B               ; $2A:807F: EE 4B 03

CODE_2A8082:
RTS                     ; $2A:8082: 60

CODE_2A8083:
LDA $034A               ; $2A:8083: AD 4A 03
AND #$07                ; $2A:8086: 29 07
BNE CODE_2A80C4         ; $2A:8088: D0 3A
LDA $034A               ; $2A:808A: AD 4A 03
AND #$18                ; $2A:808D: 29 18
ASL A                   ; $2A:808F: 0A
STA $00                 ; $2A:8090: 85 00
LDA $1006               ; $2A:8092: AD 06 10
ASL A                   ; $2A:8095: 0A
ADC $00                 ; $2A:8096: 65 00
TAY                     ; $2A:8098: A8
LDA $034A               ; $2A:8099: AD 4A 03
AND #$60                ; $2A:809C: 29 60
LSR A                   ; $2A:809E: 4A
LSR A                   ; $2A:809F: 4A
LSR A                   ; $2A:80A0: 4A
LSR A                   ; $2A:80A1: 4A
TAX                     ; $2A:80A2: AA
REP #$20                ; $2A:80A3: C2 20
LDA.w DATA_2A82B2,x     ; $2A:80A5: BD B2 82
STA $0A                 ; $2A:80A8: 85 0A
LDA DATA_2A80C5,y       ; $2A:80AA: B9 C5 80
STA $00                 ; $2A:80AD: 85 00
INC A                   ; $2A:80AF: 1A
STA $04                 ; $2A:80B0: 85 04
LDA DATA_2A80CD,y       ; $2A:80B2: B9 CD 80
STA $02                 ; $2A:80B5: 85 02
INC A                   ; $2A:80B7: 1A
STA $06                 ; $2A:80B8: 85 06
LDA.w DATA_2A8105,x     ; $2A:80BA: BD 05 81
STA $08                 ; $2A:80BD: 85 08
JSR CODE_2A8287         ; $2A:80BF: 20 87 82
SEP #$20                ; $2A:80C2: E2 20

CODE_2A80C4:
RTS                     ; $2A:80C4: 60

DATA_2A80C5:
dw $00FC
dw $00FC
dw $00FC
dw $00FC

DATA_2A80CD:
dw $00FC
dw $00FC
dw $00FC
dw $00FC
dw $0997
dw $0599
dw $0997
dw $09A3
dw $4997
dw $4599
dw $4997
dw $49A3
dw $099A
dw $059C
dw $099A
dw $099E
dw $499A
dw $459C
dw $499A
dw $499E
dw $09A5
dw $05A7
dw $09A5
dw $09A9
dw $49A5
dw $45A7
dw $49A5
dw $49A9

DATA_2A8105:
dw $0006
dw $0005
dw $0006
dw $0007

CODE_2A810D:
PHB                     ; $2A:810D: 8B
PHK                     ; $2A:810E: 4B
PLB                     ; $2A:810F: AB
PHX                     ; $2A:8110: DA
PHY                     ; $2A:8111: 5A
REP #$20                ; $2A:8112: C2 20
LDX #$80                ; $2A:8114: A2 80
STX $2115               ; $2A:8116: 8E 15 21
LDA #$00FC              ; $2A:8119: A9 FC 00
STA $00                 ; $2A:811C: 85 00
STA $04                 ; $2A:811E: 85 04
LDA #$00FC              ; $2A:8120: A9 FC 00
STA $02                 ; $2A:8123: 85 02
STA $06                 ; $2A:8125: 85 06
JSR CODE_2A817E         ; $2A:8127: 20 7E 81
LDA $1006               ; $2A:812A: AD 06 10
AND #$000F              ; $2A:812D: 29 0F 00
ASL A                   ; $2A:8130: 0A
TAX                     ; $2A:8131: AA
LDA.w DATA_2A8156,x     ; $2A:8132: BD 56 81
STA $00                 ; $2A:8135: 85 00
LDY #$00                ; $2A:8137: A0 00

CODE_2A8139:
LDA DATA_2A82BA,y       ; $2A:8139: B9 BA 82
STA $2116               ; $2A:813C: 8D 16 21
LDA $00                 ; $2A:813F: A5 00
STA $2118               ; $2A:8141: 8D 18 21
INY                     ; $2A:8144: C8
INY                     ; $2A:8145: C8
CPY #$30                ; $2A:8146: C0 30
BNE CODE_2A8139         ; $2A:8148: D0 EF
SEP #$20                ; $2A:814A: E2 20
PLY                     ; $2A:814C: 7A
PLX                     ; $2A:814D: FA
PLB                     ; $2A:814E: AB
STZ $034A               ; $2A:814F: 9C 4A 03
STZ $034B               ; $2A:8152: 9C 4B 03
RTL                     ; $2A:8155: 6B

DATA_2A8156:
dw $09AB,$09AC,$09AB,$09AD

DATA_2A815E:
dw $BBF2,$BBFC,$BBE6,$BBFC
dw $BBF2,$BBFC,$BBE6,$BBF2

DATA_2A816E:
dw $0005,$0006,$0005,$0006

DATA_2A8176:
dw $0007,$0007,$0007,$0005

CODE_2A817E:
LDA $1006               ; $2A:817E: AD 06 10
AND #$000F              ; $2A:8181: 29 0F 00
ASL A                   ; $2A:8184: 0A
TAY                     ; $2A:8185: A8
ASL A                   ; $2A:8186: 0A
TAX                     ; $2A:8187: AA
LDA.w DATA_2A815E,x     ; $2A:8188: BD 5E 81
STA $0A                 ; $2A:818B: 85 0A
LDA DATA_2A816E,y       ; $2A:818D: B9 6E 81
STA $08                 ; $2A:8190: 85 08
PHY                     ; $2A:8192: 5A
JSR CODE_2A8287         ; $2A:8193: 20 87 82
PLY                     ; $2A:8196: 7A
LDA.w DATA_2A815E+2,x   ; $2A:8197: BD 60 81
STA $0A                 ; $2A:819A: 85 0A
LDA DATA_2A8176,y       ; $2A:819C: B9 76 81
STA $08                 ; $2A:819F: 85 08
JSR CODE_2A8287         ; $2A:81A1: 20 87 82
RTS                     ; $2A:81A4: 60

CODE_2A81A5:
PHB                     ; $2A:81A5: 8B
PHK                     ; $2A:81A6: 4B
PLB                     ; $2A:81A7: AB
STZ $2115               ; $2A:81A8: 9C 15 21
REP #$20                ; $2A:81AB: C2 20
LDA #$00FC              ; $2A:81AD: A9 FC 00
STA $00                 ; $2A:81B0: 85 00
LDA #$1000              ; $2A:81B2: A9 00 10
STA $2116               ; $2A:81B5: 8D 16 21
LDA #$1808              ; $2A:81B8: A9 08 18
STA $4300               ; $2A:81BB: 8D 00 43
LDA #$0000              ; $2A:81BE: A9 00 00
STA $4302               ; $2A:81C1: 8D 02 43
STZ $4304               ; $2A:81C4: 9C 04 43
LDA #$1000              ; $2A:81C7: A9 00 10
STA $4305               ; $2A:81CA: 8D 05 43
LDY #$01                ; $2A:81CD: A0 01
STY $420B               ; $2A:81CF: 8C 0B 42
LDX #$80                ; $2A:81D2: A2 80
STX $2115               ; $2A:81D4: 8E 15 21
STA $4305               ; $2A:81D7: 8D 05 43
LDA #$1000              ; $2A:81DA: A9 00 10
STA $2116               ; $2A:81DD: 8D 16 21
LDA #$1908              ; $2A:81E0: A9 08 19
STA $4300               ; $2A:81E3: 8D 00 43
LDA #$0001              ; $2A:81E6: A9 01 00
STA $4302               ; $2A:81E9: 8D 02 43
STY $420B               ; $2A:81EC: 8C 0B 42
LDA.w DATA_2A82B2       ; $2A:81EF: AD B2 82
STA $0A                 ; $2A:81F2: 85 0A
LDA #$09A5              ; $2A:81F4: A9 A5 09
STA $00                 ; $2A:81F7: 85 00
INC A                   ; $2A:81F9: 1A
STA $04                 ; $2A:81FA: 85 04
LDA #$49A5              ; $2A:81FC: A9 A5 49
STA $02                 ; $2A:81FF: 85 02
INC A                   ; $2A:8201: 1A
STA $06                 ; $2A:8202: 85 06
LDA #$0006              ; $2A:8204: A9 06 00
STA $08                 ; $2A:8207: 85 08
JSR CODE_2A8287         ; $2A:8209: 20 87 82
LDA.w DATA_2A82B4       ; $2A:820C: AD B4 82
STA $0A                 ; $2A:820F: 85 0A
LDA #$05A7              ; $2A:8211: A9 A7 05
STA $00                 ; $2A:8214: 85 00
INC A                   ; $2A:8216: 1A
STA $04                 ; $2A:8217: 85 04
LDA #$45A7              ; $2A:8219: A9 A7 45
STA $02                 ; $2A:821C: 85 02
INC A                   ; $2A:821E: 1A
STA $06                 ; $2A:821F: 85 06
LDA #$0005              ; $2A:8221: A9 05 00
STA $08                 ; $2A:8224: 85 08
JSR CODE_2A8287         ; $2A:8226: 20 87 82
LDA.w DATA_2A82B8       ; $2A:8229: AD B8 82
STA $0A                 ; $2A:822C: 85 0A
LDA #$09A9              ; $2A:822E: A9 A9 09
STA $00                 ; $2A:8231: 85 00
INC A                   ; $2A:8233: 1A
STA $04                 ; $2A:8234: 85 04
LDA #$49A9              ; $2A:8236: A9 A9 49
STA $02                 ; $2A:8239: 85 02
INC A                   ; $2A:823B: 1A
STA $06                 ; $2A:823C: 85 06
LDA #$0007              ; $2A:823E: A9 07 00
STA $08                 ; $2A:8241: 85 08
JSR CODE_2A8287         ; $2A:8243: 20 87 82
LDA #$09AE              ; $2A:8246: A9 AE 09
STA $02                 ; $2A:8249: 85 02
LDA #$09AF              ; $2A:824B: A9 AF 09
STA $04                 ; $2A:824E: 85 04
LDY #$00                ; $2A:8250: A0 00

CODE_2A8252:
LDA #$09AB              ; $2A:8252: A9 AB 09
STA $00                 ; $2A:8255: 85 00

CODE_2A8257:
LDA DATA_2A82BA,y       ; $2A:8257: B9 BA 82
STA $2116               ; $2A:825A: 8D 16 21
LDA $00                 ; $2A:825D: A5 00
STA $2118               ; $2A:825F: 8D 18 21
LDA $02                 ; $2A:8262: A5 02
STA $2118               ; $2A:8264: 8D 18 21
LDA $04                 ; $2A:8267: A5 04
STA $2118               ; $2A:8269: 8D 18 21
INY                     ; $2A:826C: C8
INY                     ; $2A:826D: C8
CPY #$30                ; $2A:826E: C0 30
BEQ CODE_2A8283         ; $2A:8270: F0 11
TYA                     ; $2A:8272: 98
AND #$0002              ; $2A:8273: 29 02 00
BNE CODE_2A8257         ; $2A:8276: D0 DF
INC $00                 ; $2A:8278: E6 00
LDA $00                 ; $2A:827A: A5 00
CMP #$09AE              ; $2A:827C: C9 AE 09
BNE CODE_2A8257         ; $2A:827F: D0 D6
BRA CODE_2A8252         ; $2A:8281: 80 CF

CODE_2A8283:
SEP #$20                ; $2A:8283: E2 20
PLB                     ; $2A:8285: AB
RTL                     ; $2A:8286: 6B

CODE_2A8287:
LDY #$00                ; $2A:8287: A0 00

CODE_2A8289:
LDA ($0A),y             ; $2A:8289: B1 0A
STA $2116               ; $2A:828B: 8D 16 21
LDA $00                 ; $2A:828E: A5 00
STA $2118               ; $2A:8290: 8D 18 21
LDA $02                 ; $2A:8293: A5 02
STA $2118               ; $2A:8295: 8D 18 21
LDA ($0A),y             ; $2A:8298: B1 0A
CLC                     ; $2A:829A: 18
ADC #$0020              ; $2A:829B: 69 20
STA $2116               ; $2A:829E: 8D 16 21
LDA $04                 ; $2A:82A1: A5 04
STA $2118               ; $2A:82A3: 8D 18 21
LDA $06                 ; $2A:82A6: A5 06
STA $2118               ; $2A:82A8: 8D 18 21
INY                     ; $2A:82AB: C8
INY                     ; $2A:82AC: C8
DEC $08                 ; $2A:82AD: C6 08
BNE CODE_2A8289         ; $2A:82AF: D0 D8
RTS                     ; $2A:82B1: 60

DATA_2A82B2:
dw $BBE6

DATA_2A82B4:
dw $BBF2,$BBE6

DATA_2A82B8:
dw $BBFC

DATA_2A82BA:
dw $1076,$1283,$122B,$1294
dw $1146,$1177,$1476,$1683
dw $162B,$1694,$1546,$1577
dw $1876,$1A83,$1A2B,$1A94
dw $1946,$1977,$1C76,$1E83
dw $1E2B,$1E94,$1D46,$1D77

CODE_2A82EA:
LDA #$80                ; $2A:82EA: A9 80
STA $2115               ; $2A:82EC: 8D 15 21
REP #$20                ; $2A:82EF: C2 20
LDA #$6800              ; $2A:82F1: A9 00 68
STA $2116               ; $2A:82F4: 8D 16 21
LDA #$1801              ; $2A:82F7: A9 01 18
STA $4300               ; $2A:82FA: 8D 00 43
LDA.w #DATA_37F000      ; $2A:82FD: A9 00 F0
STA $4302               ; $2A:8300: 8D 02 43
LDX.b #DATA_37F000>>16  ; $2A:8303: A2 37
STX $4304               ; $2A:8305: 8E 04 43
LDA #$1000              ; $2A:8308: A9 00 10
STA $4305               ; $2A:830B: 8D 05 43
LDX #$01                ; $2A:830E: A2 01
STX $420B               ; $2A:8310: 8E 0B 42
SEP #$20                ; $2A:8313: E2 20
LDA #$0F                ; $2A:8315: A9 0F
STA $16                 ; $2A:8317: 85 16
LDA $0726               ; $2A:8319: AD 26 07
STA $1A80               ; $2A:831C: 8D 80 1A
LDA $001D               ; $2A:831F: AD 1D 00
AND #$02                ; $2A:8322: 29 02
BEQ CODE_2A832F         ; $2A:8324: F0 09
LDX $B3                 ; $2A:8326: A6 B3
CPX #$BC                ; $2A:8328: E0 BC
BEQ CODE_2A832F         ; $2A:832A: F0 03
STA $1A80               ; $2A:832C: 8D 80 1A

CODE_2A832F:
JSL CODE_22E0A9         ; $2A:832F: 22 A9 E0 22
JSL CODE_27E173         ; $2A:8333: 22 73 E1 27
RTL                     ; $2A:8337: 6B

CODE_2A8338:
LDA $0706               ; $2A:8338: AD 06 07
AND #$0F                ; $2A:833B: 29 0F
STA $02                 ; $2A:833D: 85 02

CODE_2A833F:
LDY $0700               ; $2A:833F: AC 00 07
LDA #$BA                ; $2A:8342: A9 BA
STA [$2E],y             ; $2A:8344: 97 2E
JSL CODE_2AB73A         ; $2A:8346: 22 3A B7 2A
INY                     ; $2A:834A: C8
LDA #$BB                ; $2A:834B: A9 BB
STA [$2E],y             ; $2A:834D: 97 2E
JSL CODE_2AB73A         ; $2A:834F: 22 3A B7 2A
LDA $0700               ; $2A:8353: AD 00 07
CLC                     ; $2A:8356: 18
ADC #$10                ; $2A:8357: 69 10
STA $0700               ; $2A:8359: 8D 00 07
LDA $2F                 ; $2A:835C: A5 2F
ADC #$00                ; $2A:835E: 69 00
STA $2F                 ; $2A:8360: 85 2F
DEC $02                 ; $2A:8362: C6 02
BNE CODE_2A833F         ; $2A:8364: D0 D9
REP #$20                ; $2A:8366: C2 20
LDA $2E                 ; $2A:8368: A5 2E
STA $D8                 ; $2A:836A: 85 D8
SEP #$20                ; $2A:836C: E2 20
LDA $30                 ; $2A:836E: A5 30
STA $DA                 ; $2A:8370: 85 DA
LDY $0700               ; $2A:8372: AC 00 07
LDA #$02                ; $2A:8375: A9 02
STA [$D8],y             ; $2A:8377: 97 D8
JSR CODE_2A8AD2         ; $2A:8379: 20 D2 8A
INY                     ; $2A:837C: C8
LDA $D9                 ; $2A:837D: A5 D9
SEC                     ; $2A:837F: 38
SBC #$20                ; $2A:8380: E9 20
STA $D9                 ; $2A:8382: 85 D9
LDA #$03                ; $2A:8384: A9 03
STA [$D8],y             ; $2A:8386: 97 D8
JSR CODE_2A8AD2         ; $2A:8388: 20 D2 8A
RTL                     ; $2A:838B: 6B

CODE_2A838C:
LDY $0700               ; $2A:838C: AC 00 07
LDA #$E2                ; $2A:838F: A9 E2
STA [$2E],y             ; $2A:8391: 97 2E
RTL                     ; $2A:8393: 6B

CODE_2A8394:
PHB                     ; $2A:8394: 8B
PHK                     ; $2A:8395: 4B
PLB                     ; $2A:8396: AB
LDA $30                 ; $2A:8397: A5 30
STA $DA                 ; $2A:8399: 85 DA
REP #$20                ; $2A:839B: C2 20
LDA $2E                 ; $2A:839D: A5 2E
CLC                     ; $2A:839F: 18
ADC #$2000              ; $2A:83A0: 69 00 20
STA $D8                 ; $2A:83A3: 85 D8
SEP #$20                ; $2A:83A5: E2 20
LDA $0700               ; $2A:83A7: AD 00 07
STA $03                 ; $2A:83AA: 85 03
LDX #$00                ; $2A:83AC: A2 00

CODE_2A83AE:
LDY $03                 ; $2A:83AE: A4 03
LDA.w DATA_2A83DB,x     ; $2A:83B0: BD DB 83
CMP #$80                ; $2A:83B3: C9 80
BEQ CODE_2A83C5         ; $2A:83B5: F0 0E
CMP #$FF                ; $2A:83B7: C9 FF
BEQ CODE_2A83D9         ; $2A:83B9: F0 1E
STA [$2E],y             ; $2A:83BB: 97 2E
AND #$F0                ; $2A:83BD: 29 F0
BNE CODE_2A83C5         ; $2A:83BF: D0 04
LDA #$01                ; $2A:83C1: A9 01
STA [$D8],y             ; $2A:83C3: 97 D8

CODE_2A83C5:
INX                     ; $2A:83C5: E8
INC $03                 ; $2A:83C6: E6 03
LDA $03                 ; $2A:83C8: A5 03
AND #$07                ; $2A:83CA: 29 07
BNE CODE_2A83AE         ; $2A:83CC: D0 E0
LDA $03                 ; $2A:83CE: A5 03
AND #$F0                ; $2A:83D0: 29 F0
CLC                     ; $2A:83D2: 18
ADC #$10                ; $2A:83D3: 69 10
STA $03                 ; $2A:83D5: 85 03
BRA CODE_2A83AE         ; $2A:83D7: 80 D5

CODE_2A83D9:
PLB                     ; $2A:83D9: AB
RTL                     ; $2A:83DA: 6B

DATA_2A83DB:
db $80,$80,$80,$90,$91,$80,$80,$80
db $80,$80,$80,$94,$92,$91,$80,$80
db $80,$80,$80,$94,$03,$95,$80,$80
db $80,$80,$90,$93,$03,$95,$80,$80
db $80,$90,$93,$98,$03,$95,$80,$80
db $90,$93,$98,$92,$93,$92,$91,$80
db $94,$92,$02,$03,$98,$03,$92,$91
db $94,$03,$98,$03,$92,$93,$03,$95
db $FF

CODE_2A841C:
RTL                     ; $2A:841C: 6B
PHB                     ; $2A:841D: 8B
LDA #$7F                ; $2A:841E: A9 7F
PHA                     ; $2A:8420: 48
PLB                     ; $2A:8421: AB
LDA $000249             ; $2A:8422: AF 49 02 00
AND #$FE                ; $2A:8426: 29 FE
TAX                     ; $2A:8428: AA
LDY #$00                ; $2A:8429: A0 00
REP #$20                ; $2A:842B: C2 20
LDA #$001F              ; $2A:842D: A9 1F 00
STA $00                 ; $2A:8430: 85 00
LDA $000212             ; $2A:8432: AF 12 02 00
STA $02                 ; $2A:8436: 85 02

CODE_2A8438:
LDA.l DATA_2ABC0A,x     ; $2A:8438: BF 0A BC 2A
CLC                     ; $2A:843C: 18
ADC $02                 ; $2A:843D: 65 02
STA $9200,y             ; $2A:843F: 99 00 92
STA $9240,y             ; $2A:8442: 99 40 92
STA $9280,y             ; $2A:8445: 99 80 92
STA $92C0,y             ; $2A:8448: 99 C0 92
STA $9300,y             ; $2A:844B: 99 00 93
STA $9340,y             ; $2A:844E: 99 40 93
STA $9380,y             ; $2A:8451: 99 80 93
STA $93C0,y             ; $2A:8454: 99 C0 93
INX                     ; $2A:8457: E8
INX                     ; $2A:8458: E8
INY                     ; $2A:8459: C8
INY                     ; $2A:845A: C8
DEC $00                 ; $2A:845B: C6 00
BPL CODE_2A8438         ; $2A:845D: 10 D9
SEP #$20                ; $2A:845F: E2 20
PLB                     ; $2A:8461: AB
LDA $15                 ; $2A:8462: A5 15
AND #$03                ; $2A:8464: 29 03
BNE CODE_2A846E         ; $2A:8466: D0 06
INC $0249               ; $2A:8468: EE 49 02
INC $0249               ; $2A:846B: EE 49 02

CODE_2A846E:
LDA $0293               ; $2A:846E: AD 93 02
ORA #$80                ; $2A:8471: 09 80
STA $0293               ; $2A:8473: 8D 93 02
RTL                     ; $2A:8476: 6B

DATA_2A8477:
db $55,$56,$56,$56,$56,$57

DATA_2A847D:
db $5B,$5C,$5C,$5C,$5C,$5D

CODE_2A8483:
PHB                     ; $2A:8483: 8B
PHK                     ; $2A:8484: 4B
PLB                     ; $2A:8485: AB
LDX #$00                ; $2A:8486: A2 00
LDY $0700               ; $2A:8488: AC 00 07
LDA $30                 ; $2A:848B: A5 30
STA $DA                 ; $2A:848D: 85 DA

CODE_2A848F:
REP #$20                ; $2A:848F: C2 20
LDA $2E                 ; $2A:8491: A5 2E
CLC                     ; $2A:8493: 18
ADC #$0010              ; $2A:8494: 69 10 00
STA $D8                 ; $2A:8497: 85 D8
SEP #$20                ; $2A:8499: E2 20
LDA.w DATA_2A8477,x     ; $2A:849B: BD 77 84
STA [$2E],y             ; $2A:849E: 97 2E
LDA.w DATA_2A847D,x     ; $2A:84A0: BD 7D 84
STA [$D8],y             ; $2A:84A3: 97 D8
JSL CODE_23BEBB         ; $2A:84A5: 22 BB BE 23
INX                     ; $2A:84A9: E8
CPX #$06                ; $2A:84AA: E0 06
BNE CODE_2A848F         ; $2A:84AC: D0 E1
PLB                     ; $2A:84AE: AB
RTL                     ; $2A:84AF: 6B

CODE_2A84B0:
LDA $0350               ; $2A:84B0: AD 50 03
BEQ CODE_2A84EA         ; $2A:84B3: F0 35
STZ $0249               ; $2A:84B5: 9C 49 02
LDA #$B0                ; $2A:84B8: A9 B0
STA $024B               ; $2A:84BA: 8D 4B 02
LDA #$1A                ; $2A:84BD: A9 1A
STA $0612               ; $2A:84BF: 8D 12 06
STZ $D8                 ; $2A:84C2: 64 D8
STZ $D9                 ; $2A:84C4: 64 D9

CODE_2A84C6:
JSR CODE_2A8518         ; $2A:84C6: 20 18 85
INC $0249               ; $2A:84C9: EE 49 02
LDA $0249               ; $2A:84CC: AD 49 02
AND #$01                ; $2A:84CF: 29 01
BNE CODE_2A84E3         ; $2A:84D1: D0 10
LDA $024B               ; $2A:84D3: AD 4B 02
CLC                     ; $2A:84D6: 18
ADC #$10                ; $2A:84D7: 69 10
STA $024B               ; $2A:84D9: 8D 4B 02
AND #$F0                ; $2A:84DC: 29 F0
BNE CODE_2A84E3         ; $2A:84DE: D0 03
INC $024B               ; $2A:84E0: EE 4B 02

CODE_2A84E3:
DEC $0612               ; $2A:84E3: CE 12 06
BNE CODE_2A84C6         ; $2A:84E6: D0 DE
BRA CODE_2A8513         ; $2A:84E8: 80 29

CODE_2A84EA:
REP #$20                ; $2A:84EA: C2 20
LDX #$00                ; $2A:84EC: A2 00
LDA #$00FF              ; $2A:84EE: A9 FF 00

CODE_2A84F1:
STA $7F2000,x           ; $2A:84F1: 9F 00 20 7F
STA $7F2100,x           ; $2A:84F5: 9F 00 21 7F
STA $7F2200,x           ; $2A:84F9: 9F 00 22 7F
STA $7F2300,x           ; $2A:84FD: 9F 00 23 7F
STA $7F2400,x           ; $2A:8501: 9F 00 24 7F
STA $7F2500,x           ; $2A:8505: 9F 00 25 7F
STA $7F2600,x           ; $2A:8509: 9F 00 26 7F
DEX                     ; $2A:850D: CA
DEX                     ; $2A:850E: CA
BNE CODE_2A84F1         ; $2A:850F: D0 E0
SEP #$20                ; $2A:8511: E2 20

CODE_2A8513:
STZ $D8                 ; $2A:8513: 64 D8
STZ $D9                 ; $2A:8515: 64 D9
RTL                     ; $2A:8517: 6B

CODE_2A8518:
PHB                     ; $2A:8518: 8B
PHK                     ; $2A:8519: 4B
PLB                     ; $2A:851A: AB
LDA $0249               ; $2A:851B: AD 49 02
AND #$01                ; $2A:851E: 29 01
STA $C2                 ; $2A:8520: 85 C2
LDA $0350               ; $2A:8522: AD 50 03
ASL A                   ; $2A:8525: 0A
CLC                     ; $2A:8526: 18
ADC $0350               ; $2A:8527: 6D 50 03
TAY                     ; $2A:852A: A8
LDA.w DATA_2AB546-1,y   ; $2A:852B: B9 45 B5
STA $08                 ; $2A:852E: 85 08
REP #$20                ; $2A:8530: C2 20
LDA.w DATA_2AB546-3,y   ; $2A:8532: B9 43 B5
STA $06                 ; $2A:8535: 85 06
SEP #$20                ; $2A:8537: E2 20
LDA #$7F                ; $2A:8539: A9 7F
STA $0F                 ; $2A:853B: 85 0F
REP #$20                ; $2A:853D: C2 20
STZ $0D                 ; $2A:853F: 64 0D
LDA #$0010              ; $2A:8541: A9 10 00
STA $00                 ; $2A:8544: 85 00
LDA $024B               ; $2A:8546: AD 4B 02
AND #$00F0              ; $2A:8549: 29 F0 00
STA $09                 ; $2A:854C: 85 09
REP #$10                ; $2A:854E: C2 10
LDA $024B               ; $2A:8550: AD 4B 02
AND #$0001              ; $2A:8553: 29 01 00
BEQ CODE_2A8560         ; $2A:8556: F0 08
LDA $0D                 ; $2A:8558: A5 0D
CLC                     ; $2A:855A: 18
ADC #$0100              ; $2A:855B: 69 00 01
STA $0D                 ; $2A:855E: 85 0D

CODE_2A8560:
LDX $D8                 ; $2A:8560: A6 D8
LDY $09                 ; $2A:8562: A4 09
LDA [$0D],y             ; $2A:8564: B7 0D
AND #$00FF              ; $2A:8566: 29 FF 00
ASL A                   ; $2A:8569: 0A
ASL A                   ; $2A:856A: 0A
ASL A                   ; $2A:856B: 0A
TAY                     ; $2A:856C: A8
LDA $C2                 ; $2A:856D: A5 C2
AND #$00FF              ; $2A:856F: 29 FF 00
BEQ CODE_2A8576         ; $2A:8572: F0 02
INY                     ; $2A:8574: C8
INY                     ; $2A:8575: C8

CODE_2A8576:
LDA [$06],y             ; $2A:8576: B7 06
STA $7F2000,x           ; $2A:8578: 9F 00 20 7F
INY                     ; $2A:857C: C8
INY                     ; $2A:857D: C8
INY                     ; $2A:857E: C8
INY                     ; $2A:857F: C8
LDA [$06],y             ; $2A:8580: B7 06
STA $7F2002,x           ; $2A:8582: 9F 02 20 7F
INC $09                 ; $2A:8586: E6 09
INC $D8                 ; $2A:8588: E6 D8
INC $D8                 ; $2A:858A: E6 D8
INC $D8                 ; $2A:858C: E6 D8
INC $D8                 ; $2A:858E: E6 D8
DEC $00                 ; $2A:8590: C6 00
BNE CODE_2A8560         ; $2A:8592: D0 CC
SEP #$30                ; $2A:8594: E2 30
PLB                     ; $2A:8596: AB
RTS                     ; $2A:8597: 60

CODE_2A8598:
PHB                     ; $2A:8598: 8B
PHK                     ; $2A:8599: 4B
PLB                     ; $2A:859A: AB
REP #$20                ; $2A:859B: C2 20
LDA $2E                 ; $2A:859D: A5 2E
STA $D8                 ; $2A:859F: 85 D8
LDA #$0010              ; $2A:85A1: A9 10 00
STA $DB                 ; $2A:85A4: 85 DB
SEP #$20                ; $2A:85A6: E2 20
LDA $30                 ; $2A:85A8: A5 30
STA $DA                 ; $2A:85AA: 85 DA
LDA $0706               ; $2A:85AC: AD 06 07
AND #$0F                ; $2A:85AF: 29 0F
TAX                     ; $2A:85B1: AA
LDY $0700               ; $2A:85B2: AC 00 07
LDA.w DATA_2A85CB,x     ; $2A:85B5: BD CB 85
STA [$D8],y             ; $2A:85B8: 97 D8
JSR CODE_2A8AD2         ; $2A:85BA: 20 D2 8A
JSR CODE_2A86F5         ; $2A:85BD: 20 F5 86
INX                     ; $2A:85C0: E8
LDA.w DATA_2A85CB,x     ; $2A:85C1: BD CB 85
STA [$D8],y             ; $2A:85C4: 97 D8
JSR CODE_2A8AD2         ; $2A:85C6: 20 D2 8A
PLB                     ; $2A:85C9: AB
RTL                     ; $2A:85CA: 6B

DATA_2A85CB:
db $02,$03,$04,$05

CODE_2A85CF:
PHB                     ; $2A:85CF: 8B
PHK                     ; $2A:85D0: 4B
PLB                     ; $2A:85D1: AB
LDA [$2B]               ; $2A:85D2: A7 2B
TAX                     ; $2A:85D4: AA
REP #$20                ; $2A:85D5: C2 20
INC $2B                 ; $2A:85D7: E6 2B
LDA $2E                 ; $2A:85D9: A5 2E
STA $D8                 ; $2A:85DB: 85 D8
LDA #$0001              ; $2A:85DD: A9 01 00
STA $DB                 ; $2A:85E0: 85 DB
SEP #$20                ; $2A:85E2: E2 20
LDA $30                 ; $2A:85E4: A5 30
STA $DA                 ; $2A:85E6: 85 DA
LDA $0706               ; $2A:85E8: AD 06 07
AND #$0F                ; $2A:85EB: 29 0F
STA $03                 ; $2A:85ED: 85 03
LDY $0700               ; $2A:85EF: AC 00 07
TXA                     ; $2A:85F2: 8A
BEQ CODE_2A8648         ; $2A:85F3: F0 53
CPX #$04                ; $2A:85F5: E0 04
BNE CODE_2A8615         ; $2A:85F7: D0 1C
REP #$20                ; $2A:85F9: C2 20
DEC $D8                 ; $2A:85FB: C6 D8
DEC $D8                 ; $2A:85FD: C6 D8
SEP #$20                ; $2A:85FF: E2 20
LDA #$48                ; $2A:8601: A9 48
STA [$D8],y             ; $2A:8603: 97 D8
REP #$20                ; $2A:8605: C2 20
INC $D8                 ; $2A:8607: E6 D8
SEP #$20                ; $2A:8609: E2 20
LDA #$48                ; $2A:860B: A9 48
STA [$D8],y             ; $2A:860D: 97 D8
REP #$20                ; $2A:860F: C2 20
INC $D8                 ; $2A:8611: E6 D8
SEP #$20                ; $2A:8613: E2 20

CODE_2A8615:
LDA.w DATA_2A8668-1,x   ; $2A:8615: BD 67 86
STA [$D8],y             ; $2A:8618: 97 D8
JSR CODE_2A8AD2         ; $2A:861A: 20 D2 8A
JSR CODE_2A86F5         ; $2A:861D: 20 F5 86
DEC $03                 ; $2A:8620: C6 03
LDA #$02                ; $2A:8622: A9 02
STA $02                 ; $2A:8624: 85 02
JSR CODE_2A8655         ; $2A:8626: 20 55 86
LDA.w DATA_2A866D,x     ; $2A:8629: BD 6D 86
STA [$D8],y             ; $2A:862C: 97 D8
JSR CODE_2A8AD2         ; $2A:862E: 20 D2 8A
JSR CODE_2A86F5         ; $2A:8631: 20 F5 86
CPX #$04                ; $2A:8634: E0 04
BNE CODE_2A8653         ; $2A:8636: D0 1B
LDA #$48                ; $2A:8638: A9 48
STA [$D8],y             ; $2A:863A: 97 D8
REP #$20                ; $2A:863C: C2 20
INC $D8                 ; $2A:863E: E6 D8
SEP #$20                ; $2A:8640: E2 20
LDA #$48                ; $2A:8642: A9 48
STA [$D8],y             ; $2A:8644: 97 D8
BRA CODE_2A8653         ; $2A:8646: 80 0B

CODE_2A8648:
LDA #$10                ; $2A:8648: A9 10
STA $DB                 ; $2A:864A: 85 DB
LDA #$07                ; $2A:864C: A9 07
STA $02                 ; $2A:864E: 85 02
JSR CODE_2A8655         ; $2A:8650: 20 55 86

CODE_2A8653:
PLB                     ; $2A:8653: AB
RTL                     ; $2A:8654: 6B

CODE_2A8655:
LDA $03                 ; $2A:8655: A5 03
BEQ CODE_2A8667         ; $2A:8657: F0 0E
LDA $02                 ; $2A:8659: A5 02
STA [$D8],y             ; $2A:865B: 97 D8
JSR CODE_2A8AD2         ; $2A:865D: 20 D2 8A
JSR CODE_2A86F5         ; $2A:8660: 20 F5 86
DEC $03                 ; $2A:8663: C6 03
BRA CODE_2A8655         ; $2A:8665: 80 EE

CODE_2A8667:
RTS                     ; $2A:8667: 60

DATA_2A8668:
db $03,$03,$06,$08,$0B

DATA_2A866D:
db $08,$04,$05,$04,$09,$09,$0A

CODE_2A8674:
PHB                     ; $2A:8674: 8B
PHK                     ; $2A:8675: 4B
PLB                     ; $2A:8676: AB
LDA [$2B]               ; $2A:8677: A7 2B
STA $03                 ; $2A:8679: 85 03
STA $DD                 ; $2A:867B: 85 DD
REP #$20                ; $2A:867D: C2 20
INC $2B                 ; $2A:867F: E6 2B
LDA $2E                 ; $2A:8681: A5 2E
STA $D8                 ; $2A:8683: 85 D8
SEP #$20                ; $2A:8685: E2 20
LDA $30                 ; $2A:8687: A5 30
STA $DA                 ; $2A:8689: 85 DA
LDA $0706               ; $2A:868B: AD 06 07
AND #$0F                ; $2A:868E: 29 0F
TAX                     ; $2A:8690: AA
LDA.w DATA_2A86D5,x     ; $2A:8691: BD D5 86
STA $DB                 ; $2A:8694: 85 DB
STZ $DC                 ; $2A:8696: 64 DC
STZ $02                 ; $2A:8698: 64 02
TXA                     ; $2A:869A: 8A
BNE CODE_2A86A7         ; $2A:869B: D0 0A
LDA [$2B]               ; $2A:869D: A7 2B
STA $02                 ; $2A:869F: 85 02
REP #$20                ; $2A:86A1: C2 20
INC $2B                 ; $2A:86A3: E6 2B
SEP #$20                ; $2A:86A5: E2 20

CODE_2A86A7:
LDY $0700               ; $2A:86A7: AC 00 07

CODE_2A86AA:
LDA.w DATA_2A86E5,x     ; $2A:86AA: BD E5 86
STA [$D8],y             ; $2A:86AD: 97 D8
JSR CODE_2A8AD2         ; $2A:86AF: 20 D2 8A
JSR CODE_2A86F5         ; $2A:86B2: 20 F5 86
DEC $03                 ; $2A:86B5: C6 03
BNE CODE_2A86AA         ; $2A:86B7: D0 F1
LDA $02                 ; $2A:86B9: A5 02
BEQ CODE_2A86D3         ; $2A:86BB: F0 16
DEC $02                 ; $2A:86BD: C6 02
REP #$20                ; $2A:86BF: C2 20
LDA $2E                 ; $2A:86C1: A5 2E
CLC                     ; $2A:86C3: 18
ADC #$0010              ; $2A:86C4: 69 10 00
STA $2E                 ; $2A:86C7: 85 2E
STA $D8                 ; $2A:86C9: 85 D8
SEP #$20                ; $2A:86CB: E2 20
LDA $DD                 ; $2A:86CD: A5 DD
STA $03                 ; $2A:86CF: 85 03
BRA CODE_2A86AA         ; $2A:86D1: 80 D7

CODE_2A86D3:
PLB                     ; $2A:86D3: AB
RTL                     ; $2A:86D4: 6B

DATA_2A86D5:
db $01,$0F,$01,$11,$10,$10,$11,$01
db $0F,$0F,$11,$11,$0F,$01,$01,$01

DATA_2A86E5:
db $13,$14,$15,$16,$17,$18,$19,$1A
db $1B,$1C,$1D,$1E,$1F,$20,$21,$22

CODE_2A86F5:
REP #$20                ; $2A:86F5: C2 20
LDA $D8                 ; $2A:86F7: A5 D8
SEC                     ; $2A:86F9: 38
SBC #$2000              ; $2A:86FA: E9 00 20
CLC                     ; $2A:86FD: 18
ADC $DB                 ; $2A:86FE: 65 DB
STA $D8                 ; $2A:8700: 85 D8
SEP #$20                ; $2A:8702: E2 20
RTS                     ; $2A:8704: 60

CODE_2A8705:
PHB                     ; $2A:8705: 8B
PHK                     ; $2A:8706: 4B
PLB                     ; $2A:8707: AB
LDA $00                 ; $2A:8708: A5 00
PHA                     ; $2A:870A: 48
LDA $01                 ; $2A:870B: A5 01
PHA                     ; $2A:870D: 48
PHX                     ; $2A:870E: DA
LDA $30                 ; $2A:870F: A5 30
STA $DA                 ; $2A:8711: 85 DA
STA $DD                 ; $2A:8713: 85 DD
REP #$20                ; $2A:8715: C2 20
LDA $2E                 ; $2A:8717: A5 2E
STA $D8                 ; $2A:8719: 85 D8
CLC                     ; $2A:871B: 18
ADC #$2000              ; $2A:871C: 69 00 20
STA $DB                 ; $2A:871F: 85 DB
SEP #$20                ; $2A:8721: E2 20
LDX #$00                ; $2A:8723: A2 00

CODE_2A8725:
JSR CODE_2A8761         ; $2A:8725: 20 61 87
LDA [$D8],y             ; $2A:8728: B7 D8
CMP #$9C                ; $2A:872A: C9 9C
BEQ CODE_2A8755         ; $2A:872C: F0 27
CMP #$E4                ; $2A:872E: C9 E4
BEQ CODE_2A8755         ; $2A:8730: F0 23
LDA.w DATA_2A875E,x     ; $2A:8732: BD 5E 87
STA [$D8],y             ; $2A:8735: 97 D8
CPX #$02                ; $2A:8737: E0 02
BEQ CODE_2A873E         ; $2A:8739: F0 03
INX                     ; $2A:873B: E8
BRA CODE_2A8725         ; $2A:873C: 80 E7

CODE_2A873E:
JSR CODE_2A8761         ; $2A:873E: 20 61 87
LDA [$D8],y             ; $2A:8741: B7 D8
CMP #$9C                ; $2A:8743: C9 9C
BEQ CODE_2A8755         ; $2A:8745: F0 0E
CMP #$E4                ; $2A:8747: C9 E4
BEQ CODE_2A8755         ; $2A:8749: F0 0A
LDA #$04                ; $2A:874B: A9 04
STA [$D8],y             ; $2A:874D: 97 D8
LDA #$01                ; $2A:874F: A9 01
STA [$DB],y             ; $2A:8751: 97 DB
BRA CODE_2A873E         ; $2A:8753: 80 E9

CODE_2A8755:
PLX                     ; $2A:8755: FA
PLA                     ; $2A:8756: 68
STA $01                 ; $2A:8757: 85 01
PLA                     ; $2A:8759: 68
STA $00                 ; $2A:875A: 85 00
PLB                     ; $2A:875C: AB
RTL                     ; $2A:875D: 6B

DATA_2A875E:
db $06,$07
PHP                     ; $2A:8760: 08

CODE_2A8761:
REP #$20                ; $2A:8761: C2 20
LDA $D8                 ; $2A:8763: A5 D8
SEC                     ; $2A:8765: 38
SBC #$0010              ; $2A:8766: E9 10 00
STA $D8                 ; $2A:8769: 85 D8
LDA $DB                 ; $2A:876B: A5 DB
SEC                     ; $2A:876D: 38
SBC #$0010              ; $2A:876E: E9 10 00
STA $DB                 ; $2A:8771: 85 DB
SEP #$20                ; $2A:8773: E2 20
RTS                     ; $2A:8775: 60

CODE_2A8776:
REP #$20                ; $2A:8776: C2 20
LDA $2E                 ; $2A:8778: A5 2E
SEC                     ; $2A:877A: 38
SBC #$0010              ; $2A:877B: E9 10 00
STA $D8                 ; $2A:877E: 85 D8
SEP #$20                ; $2A:8780: E2 20
LDA $30                 ; $2A:8782: A5 30
STA $DA                 ; $2A:8784: 85 DA
LDA [$D8],y             ; $2A:8786: B7 D8
CMP #$AB                ; $2A:8788: C9 AB
BNE CODE_2A8793         ; $2A:878A: D0 07
LDA #$0B                ; $2A:878C: A9 0B
STA [$D8],y             ; $2A:878E: 97 D8
JSR CODE_2A8AD2         ; $2A:8790: 20 D2 8A

CODE_2A8793:
RTL                     ; $2A:8793: 6B

CODE_2A8794:
REP #$20                ; $2A:8794: C2 20
LDA $2E                 ; $2A:8796: A5 2E
CLC                     ; $2A:8798: 18
ADC #$0010              ; $2A:8799: 69 10 00
STA $D8                 ; $2A:879C: 85 D8
SEP #$20                ; $2A:879E: E2 20
LDA $30                 ; $2A:87A0: A5 30
STA $DA                 ; $2A:87A2: 85 DA
LDA [$D8],y             ; $2A:87A4: B7 D8
CMP #$9A                ; $2A:87A6: C9 9A
BNE CODE_2A87B1         ; $2A:87A8: D0 07
LDA #$0D                ; $2A:87AA: A9 0D
STA [$D8],y             ; $2A:87AC: 97 D8
JSR CODE_2A8AD2         ; $2A:87AE: 20 D2 8A

CODE_2A87B1:
RTL                     ; $2A:87B1: 6B

CODE_2A87B2:
PHY                     ; $2A:87B2: 5A
LDA $30                 ; $2A:87B3: A5 30
STA $DA                 ; $2A:87B5: 85 DA
REP #$20                ; $2A:87B7: C2 20
LDA $2E                 ; $2A:87B9: A5 2E
CLC                     ; $2A:87BB: 18
ADC #$000F              ; $2A:87BC: 69 0F 00
STA $D8                 ; $2A:87BF: 85 D8
TYA                     ; $2A:87C1: 98
AND #$00FF              ; $2A:87C2: 29 FF 00
BNE CODE_2A87CF         ; $2A:87C5: D0 08
LDA $D8                 ; $2A:87C7: A5 D8
SEC                     ; $2A:87C9: 38
SBC #$01A0              ; $2A:87CA: E9 A0 01
STA $D8                 ; $2A:87CD: 85 D8

CODE_2A87CF:
SEP #$20                ; $2A:87CF: E2 20
LDA [$D8],y             ; $2A:87D1: B7 D8
CMP #$AA                ; $2A:87D3: C9 AA
BNE CODE_2A87E5         ; $2A:87D5: D0 0E
LDA $D8                 ; $2A:87D7: A5 D8
SEC                     ; $2A:87D9: 38
SBC #$10                ; $2A:87DA: E9 10
STA $D8                 ; $2A:87DC: 85 D8
LDA #$06                ; $2A:87DE: A9 06
STA [$D8],y             ; $2A:87E0: 97 D8
JSR CODE_2A8AD2         ; $2A:87E2: 20 D2 8A

CODE_2A87E5:
REP #$20                ; $2A:87E5: C2 20
LDA $2E                 ; $2A:87E7: A5 2E
SEC                     ; $2A:87E9: 38
SBC #$0010              ; $2A:87EA: E9 10 00
STA $D8                 ; $2A:87ED: 85 D8
SEP #$20                ; $2A:87EF: E2 20
INY                     ; $2A:87F1: C8
TYA                     ; $2A:87F2: 98
AND #$0F                ; $2A:87F3: 29 0F
BNE CODE_2A8803         ; $2A:87F5: D0 0C
REP #$20                ; $2A:87F7: C2 20
LDA $D8                 ; $2A:87F9: A5 D8
CLC                     ; $2A:87FB: 18
ADC #$01A0              ; $2A:87FC: 69 A0 01
STA $D8                 ; $2A:87FF: 85 D8
SEP #$20                ; $2A:8801: E2 20

CODE_2A8803:
LDA [$D8],y             ; $2A:8803: B7 D8
CMP #$A8                ; $2A:8805: C9 A8
BNE CODE_2A881C         ; $2A:8807: D0 13
REP #$20                ; $2A:8809: C2 20
LDA $D8                 ; $2A:880B: A5 D8
CLC                     ; $2A:880D: 18
ADC #$0010              ; $2A:880E: 69 10 00
STA $D8                 ; $2A:8811: 85 D8
SEP #$20                ; $2A:8813: E2 20
LDA #$02                ; $2A:8815: A9 02
STA [$D8],y             ; $2A:8817: 97 D8
JSR CODE_2A8AD2         ; $2A:8819: 20 D2 8A

CODE_2A881C:
PLY                     ; $2A:881C: 7A
RTL                     ; $2A:881D: 6B

CODE_2A881E:
PHY                     ; $2A:881E: 5A
REP #$20                ; $2A:881F: C2 20
LDA $2E                 ; $2A:8821: A5 2E
SEC                     ; $2A:8823: 38
SBC #$0010              ; $2A:8824: E9 10 00
STA $D8                 ; $2A:8827: 85 D8
SEP #$20                ; $2A:8829: E2 20
LDA $30                 ; $2A:882B: A5 30
STA $DA                 ; $2A:882D: 85 DA
LDA [$D8],y             ; $2A:882F: B7 D8
CMP #$A8                ; $2A:8831: C9 A8
BEQ CODE_2A8840         ; $2A:8833: F0 0B
CMP #$34                ; $2A:8835: C9 34
BEQ CODE_2A8840         ; $2A:8837: F0 07
LDA #$05                ; $2A:8839: A9 05
STA [$D8],y             ; $2A:883B: 97 D8
JSR CODE_2A8AD2         ; $2A:883D: 20 D2 8A

CODE_2A8840:
PLY                     ; $2A:8840: 7A
RTL                     ; $2A:8841: 6B

DATA_2A8842:
db $06,$0C

CODE_2A8844:
PHB                     ; $2A:8844: 8B
PHK                     ; $2A:8845: 4B
PLB                     ; $2A:8846: AB
PHX                     ; $2A:8847: DA
PHY                     ; $2A:8848: 5A
LDA $30                 ; $2A:8849: A5 30
STA $DA                 ; $2A:884B: 85 DA
REP #$20                ; $2A:884D: C2 20
LDA $2E                 ; $2A:884F: A5 2E
SEC                     ; $2A:8851: 38
SBC #$0010              ; $2A:8852: E9 10 00
STA $D8                 ; $2A:8855: 85 D8
SEP #$20                ; $2A:8857: E2 20
LDA [$D8],y             ; $2A:8859: B7 D8
CMP #$AA                ; $2A:885B: C9 AA
BEQ CODE_2A886B         ; $2A:885D: F0 0C
CMP #$A9                ; $2A:885F: C9 A9
BEQ CODE_2A886B         ; $2A:8861: F0 08
LDA.w DATA_2A8842,x     ; $2A:8863: BD 42 88
STA [$D8],y             ; $2A:8866: 97 D8
JSR CODE_2A8AD2         ; $2A:8868: 20 D2 8A

CODE_2A886B:
PLY                     ; $2A:886B: 7A
PLX                     ; $2A:886C: FA
PLB                     ; $2A:886D: AB
RTL                     ; $2A:886E: 6B

CODE_2A886F:
PHX                     ; $2A:886F: DA
PHY                     ; $2A:8870: 5A
LDA [$2E],y             ; $2A:8871: B7 2E
CMP #$A6                ; $2A:8873: C9 A6
BNE CODE_2A88C0         ; $2A:8875: D0 49
LDA $30                 ; $2A:8877: A5 30
STA $DA                 ; $2A:8879: 85 DA
REP #$20                ; $2A:887B: C2 20
LDA $2E                 ; $2A:887D: A5 2E
PHA                     ; $2A:887F: 48
CLC                     ; $2A:8880: 18
ADC #$0011              ; $2A:8881: 69 11 00
STA $D8                 ; $2A:8884: 85 D8
PLA                     ; $2A:8886: 68
CLC                     ; $2A:8887: 18
ADC #$000F              ; $2A:8888: 69 0F 00
STA $DB                 ; $2A:888B: 85 DB
TYA                     ; $2A:888D: 98
AND #$000F              ; $2A:888E: 29 0F 00
BNE CODE_2A88A3         ; $2A:8891: D0 10
LDA $D8                 ; $2A:8893: A5 D8
CLC                     ; $2A:8895: 18
ADC #$01A0              ; $2A:8896: 69 A0 01
STA $D8                 ; $2A:8899: 85 D8
LDA $DB                 ; $2A:889B: A5 DB
CLC                     ; $2A:889D: 18
ADC #$01A0              ; $2A:889E: 69 A0 01
STA $DB                 ; $2A:88A1: 85 DB

CODE_2A88A3:
SEP #$20                ; $2A:88A3: E2 20
LDA [$D8],y             ; $2A:88A5: B7 D8
CMP #$A8                ; $2A:88A7: C9 A8
BNE CODE_2A88C0         ; $2A:88A9: D0 15
REP #$20                ; $2A:88AB: C2 20
LDA $D8                 ; $2A:88AD: A5 D8
SEC                     ; $2A:88AF: 38
SBC #$0010              ; $2A:88B0: E9 10 00
STA $D8                 ; $2A:88B3: 85 D8
SEP #$20                ; $2A:88B5: E2 20
LDA #$05                ; $2A:88B7: A9 05
STA [$D8],y             ; $2A:88B9: 97 D8
JSR CODE_2A8AD2         ; $2A:88BB: 20 D2 8A
BRA CODE_2A88E5         ; $2A:88BE: 80 25

CODE_2A88C0:
REP #$20                ; $2A:88C0: C2 20
LDA $DB                 ; $2A:88C2: A5 DB
STA $D8                 ; $2A:88C4: 85 D8
SEP #$20                ; $2A:88C6: E2 20
LDA [$D8],y             ; $2A:88C8: B7 D8
CMP #$AA                ; $2A:88CA: C9 AA
BEQ CODE_2A88D2         ; $2A:88CC: F0 04
CMP #$BF                ; $2A:88CE: C9 BF
BNE CODE_2A88E5         ; $2A:88D0: D0 13

CODE_2A88D2:
REP #$20                ; $2A:88D2: C2 20
LDA $D8                 ; $2A:88D4: A5 D8
SEC                     ; $2A:88D6: 38
SBC #$0010              ; $2A:88D7: E9 10 00
STA $D8                 ; $2A:88DA: 85 D8
SEP #$20                ; $2A:88DC: E2 20
LDA #$06                ; $2A:88DE: A9 06
STA [$D8],y             ; $2A:88E0: 97 D8
JSR CODE_2A8AD2         ; $2A:88E2: 20 D2 8A

CODE_2A88E5:
PLY                     ; $2A:88E5: 7A
PLX                     ; $2A:88E6: FA
RTL                     ; $2A:88E7: 6B

CODE_2A88E8:
PHY                     ; $2A:88E8: 5A
LDA $30                 ; $2A:88E9: A5 30
STA $DA                 ; $2A:88EB: 85 DA
REP #$20                ; $2A:88ED: C2 20
LDA $2E                 ; $2A:88EF: A5 2E
STA $D8                 ; $2A:88F1: 85 D8
SEP #$20                ; $2A:88F3: E2 20
TYA                     ; $2A:88F5: 98
CLC                     ; $2A:88F6: 18
ADC #$0F                ; $2A:88F7: 69 0F
TAY                     ; $2A:88F9: A8
AND #$F0                ; $2A:88FA: 29 F0
BNE CODE_2A8900         ; $2A:88FC: D0 02
INC $D9                 ; $2A:88FE: E6 D9

CODE_2A8900:
LDA [$D8],y             ; $2A:8900: B7 D8
CMP #$9A                ; $2A:8902: C9 9A
BEQ CODE_2A890E         ; $2A:8904: F0 08
CMP #$99                ; $2A:8906: C9 99
BEQ CODE_2A890E         ; $2A:8908: F0 04
CMP #$E3                ; $2A:890A: C9 E3
BNE CODE_2A8927         ; $2A:890C: D0 19

CODE_2A890E:
INY                     ; $2A:890E: C8
TYA                     ; $2A:890F: 98
AND #$0F                ; $2A:8910: 29 0F
BNE CODE_2A8920         ; $2A:8912: D0 0C
REP #$20                ; $2A:8914: C2 20
LDA $D8                 ; $2A:8916: A5 D8
CLC                     ; $2A:8918: 18
ADC #$01A0              ; $2A:8919: 69 A0 01
STA $D8                 ; $2A:891C: 85 D8
SEP #$20                ; $2A:891E: E2 20

CODE_2A8920:
LDA #$02                ; $2A:8920: A9 02
STA [$D8],y             ; $2A:8922: 97 D8
JSR CODE_2A8AD2         ; $2A:8924: 20 D2 8A

CODE_2A8927:
PLY                     ; $2A:8927: 7A
RTL                     ; $2A:8928: 6B

DATA_2A8929:
db $0A,$04,$08

CODE_2A892C:
PHB                     ; $2A:892C: 8B
PHK                     ; $2A:892D: 4B
PLB                     ; $2A:892E: AB
PHY                     ; $2A:892F: 5A
PHX                     ; $2A:8930: DA
LDA $30                 ; $2A:8931: A5 30
STA $DA                 ; $2A:8933: 85 DA
STA $DD                 ; $2A:8935: 85 DD
REP #$20                ; $2A:8937: C2 20
LDA $2E                 ; $2A:8939: A5 2E
STA $D8                 ; $2A:893B: 85 D8
SEC                     ; $2A:893D: 38
SBC #$000F              ; $2A:893E: E9 0F 00
STA $DB                 ; $2A:8941: 85 DB
TYA                     ; $2A:8943: 98
AND #$000F              ; $2A:8944: 29 0F 00
BNE CODE_2A8951         ; $2A:8947: D0 08
LDA $D8                 ; $2A:8949: A5 D8
SEC                     ; $2A:894B: 38
SBC #$01A0              ; $2A:894C: E9 A0 01
STA $D8                 ; $2A:894F: 85 D8

CODE_2A8951:
LDA $D8                 ; $2A:8951: A5 D8
SEC                     ; $2A:8953: 38
SBC #$0011              ; $2A:8954: E9 11 00
STA $D8                 ; $2A:8957: 85 D8
SEP #$20                ; $2A:8959: E2 20
LDX #$00                ; $2A:895B: A2 00
LDA [$D8],y             ; $2A:895D: B7 D8
CMP #$9F                ; $2A:895F: C9 9F
BEQ CODE_2A8981         ; $2A:8961: F0 1E
CMP #$27                ; $2A:8963: C9 27
BEQ CODE_2A8983         ; $2A:8965: F0 1C
CMP #$35                ; $2A:8967: C9 35
BEQ CODE_2A8983         ; $2A:8969: F0 18
CMP #$36                ; $2A:896B: C9 36
BEQ CODE_2A8983         ; $2A:896D: F0 14
CMP #$E4                ; $2A:896F: C9 E4
BEQ CODE_2A8982         ; $2A:8971: F0 0F
CMP #$F8                ; $2A:8973: C9 F8
BEQ CODE_2A8982         ; $2A:8975: F0 0B
CMP #$9B                ; $2A:8977: C9 9B
BEQ CODE_2A8982         ; $2A:8979: F0 07
CMP #$AA                ; $2A:897B: C9 AA
BEQ CODE_2A8982         ; $2A:897D: F0 03
BRA CODE_2A8997         ; $2A:897F: 80 16

CODE_2A8981:
INX                     ; $2A:8981: E8

CODE_2A8982:
INX                     ; $2A:8982: E8

CODE_2A8983:
REP #$20                ; $2A:8983: C2 20
LDA $D8                 ; $2A:8985: A5 D8
CLC                     ; $2A:8987: 18
ADC #$0010              ; $2A:8988: 69 10 00
STA $D8                 ; $2A:898B: 85 D8
SEP #$20                ; $2A:898D: E2 20
LDA.w DATA_2A8929,x     ; $2A:898F: BD 29 89
STA [$D8],y             ; $2A:8992: 97 D8
JSR CODE_2A8AD2         ; $2A:8994: 20 D2 8A

CODE_2A8997:
LDA [$DB],y             ; $2A:8997: B7 DB
CMP #$A8                ; $2A:8999: C9 A8
BEQ CODE_2A89A1         ; $2A:899B: F0 04
CMP #$F6                ; $2A:899D: C9 F6
BNE CODE_2A89BC         ; $2A:899F: D0 1B

CODE_2A89A1:
REP #$20                ; $2A:89A1: C2 20
LDA $DB                 ; $2A:89A3: A5 DB
CLC                     ; $2A:89A5: 18
ADC #$0010              ; $2A:89A6: 69 10 00
STA $DB                 ; $2A:89A9: 85 DB
SEP #$20                ; $2A:89AB: E2 20
LDA #$02                ; $2A:89AD: A9 02
STA [$DB],y             ; $2A:89AF: 97 DB
LDA $DC                 ; $2A:89B1: A5 DC
CLC                     ; $2A:89B3: 18
ADC #$20                ; $2A:89B4: 69 20
STA $DC                 ; $2A:89B6: 85 DC
LDA #$01                ; $2A:89B8: A9 01
STA [$DB],y             ; $2A:89BA: 97 DB

CODE_2A89BC:
TYA                     ; $2A:89BC: 98
CLC                     ; $2A:89BD: 18
ADC #$10                ; $2A:89BE: 69 10
TAY                     ; $2A:89C0: A8
LDA [$2E],y             ; $2A:89C1: B7 2E
CMP #$02                ; $2A:89C3: C9 02
BEQ CODE_2A89CB         ; $2A:89C5: F0 04
CMP #$04                ; $2A:89C7: C9 04
BNE CODE_2A89D3         ; $2A:89C9: D0 08

CODE_2A89CB:
JSL CODE_2AB73A         ; $2A:89CB: 22 3A B7 2A
LDA #$AB                ; $2A:89CF: A9 AB
STA [$2E],y             ; $2A:89D1: 97 2E

CODE_2A89D3:
PLX                     ; $2A:89D3: FA
PLY                     ; $2A:89D4: 7A
PLB                     ; $2A:89D5: AB
RTL                     ; $2A:89D6: 6B

DATA_2A89D7:
db $0A,$04,$04

DATA_2A89DA:
db $08,$0A

CODE_2A89DC:
PHB                     ; $2A:89DC: 8B
PHK                     ; $2A:89DD: 4B
PLB                     ; $2A:89DE: AB
PHX                     ; $2A:89DF: DA
PHY                     ; $2A:89E0: 5A
REP #$20                ; $2A:89E1: C2 20
LDA $2E                 ; $2A:89E3: A5 2E
STA $D8                 ; $2A:89E5: 85 D8
SEP #$20                ; $2A:89E7: E2 20
LDA $30                 ; $2A:89E9: A5 30
STA $DA                 ; $2A:89EB: 85 DA
REP #$20                ; $2A:89ED: C2 20
INY                     ; $2A:89EF: C8
TYA                     ; $2A:89F0: 98
AND #$000F              ; $2A:89F1: 29 0F 00
BNE CODE_2A89FE         ; $2A:89F4: D0 08
LDA $D8                 ; $2A:89F6: A5 D8
CLC                     ; $2A:89F8: 18
ADC #$01A0              ; $2A:89F9: 69 A0 01
STA $D8                 ; $2A:89FC: 85 D8

CODE_2A89FE:
SEP #$20                ; $2A:89FE: E2 20
LDA [$D8],y             ; $2A:8A00: B7 D8
CMP #$C2                ; $2A:8A02: C9 C2
BNE CODE_2A8A0E         ; $2A:8A04: D0 08
DEY                     ; $2A:8A06: 88
LDA #$03                ; $2A:8A07: A9 03
STA [$D8],y             ; $2A:8A09: 97 D8
JSR CODE_2A8AD2         ; $2A:8A0B: 20 D2 8A

CODE_2A8A0E:
PLY                     ; $2A:8A0E: 7A
PLX                     ; $2A:8A0F: FA
PHX                     ; $2A:8A10: DA
PHY                     ; $2A:8A11: 5A
LDA [$2E],y             ; $2A:8A12: B7 2E
CMP #$9F                ; $2A:8A14: C9 9F
BEQ CODE_2A8A50         ; $2A:8A16: F0 38
REP #$20                ; $2A:8A18: C2 20
LDA $2E                 ; $2A:8A1A: A5 2E
STA $D8                 ; $2A:8A1C: 85 D8
SEP #$20                ; $2A:8A1E: E2 20
TYA                     ; $2A:8A20: 98
AND #$0F                ; $2A:8A21: 29 0F
BNE CODE_2A8A31         ; $2A:8A23: D0 0C
REP #$20                ; $2A:8A25: C2 20
LDA $D8                 ; $2A:8A27: A5 D8
SEC                     ; $2A:8A29: 38
SBC #$01A0              ; $2A:8A2A: E9 A0 01
STA $D8                 ; $2A:8A2D: 85 D8
SEP #$20                ; $2A:8A2F: E2 20

CODE_2A8A31:
DEY                     ; $2A:8A31: 88
LDA [$D8],y             ; $2A:8A32: B7 D8
CMP #$26                ; $2A:8A34: C9 26
BEQ CODE_2A8A50         ; $2A:8A36: F0 18
CMP #$33                ; $2A:8A38: C9 33
BEQ CODE_2A8A50         ; $2A:8A3A: F0 14
CMP #$9A                ; $2A:8A3C: C9 9A
BEQ CODE_2A8A50         ; $2A:8A3E: F0 10
CMP #$E3                ; $2A:8A40: C9 E3
BEQ CODE_2A8A50         ; $2A:8A42: F0 0C
CMP #$0D                ; $2A:8A44: C9 0D
BEQ CODE_2A8A50         ; $2A:8A46: F0 08
LDA.w DATA_2A89D7,x     ; $2A:8A48: BD D7 89
STA [$D8],y             ; $2A:8A4B: 97 D8
JSR CODE_2A8AD2         ; $2A:8A4D: 20 D2 8A

CODE_2A8A50:
PLY                     ; $2A:8A50: 7A
PHY                     ; $2A:8A51: 5A
LDA [$2E],y             ; $2A:8A52: B7 2E
CMP #$9B                ; $2A:8A54: C9 9B
BEQ CODE_2A8A5E         ; $2A:8A56: F0 06
CMP #$E4                ; $2A:8A58: C9 E4
BEQ CODE_2A8A5E         ; $2A:8A5A: F0 02
CMP #$9F                ; $2A:8A5C: C9 9F

CODE_2A8A5E:
BNE CODE_2A8AA8         ; $2A:8A5E: D0 48
REP #$20                ; $2A:8A60: C2 20
LDA $2E                 ; $2A:8A62: A5 2E
CLC                     ; $2A:8A64: 18
ADC #$0010              ; $2A:8A65: 69 10 00
STA $D8                 ; $2A:8A68: 85 D8
SEP #$20                ; $2A:8A6A: E2 20
INY                     ; $2A:8A6C: C8
TYA                     ; $2A:8A6D: 98
AND #$0F                ; $2A:8A6E: 29 0F
BNE CODE_2A8A7E         ; $2A:8A70: D0 0C
REP #$20                ; $2A:8A72: C2 20
LDA $D8                 ; $2A:8A74: A5 D8
CLC                     ; $2A:8A76: 18
ADC #$01A0              ; $2A:8A77: 69 A0 01
STA $D8                 ; $2A:8A7A: 85 D8
SEP #$20                ; $2A:8A7C: E2 20

CODE_2A8A7E:
LDX #$03                ; $2A:8A7E: A2 03
LDA [$D8],y             ; $2A:8A80: B7 D8
CMP #$E3                ; $2A:8A82: C9 E3
BEQ CODE_2A8A9D         ; $2A:8A84: F0 17
CMP #$9A                ; $2A:8A86: C9 9A
BNE CODE_2A8AA8         ; $2A:8A88: D0 1E
TYA                     ; $2A:8A8A: 98
AND #$0F                ; $2A:8A8B: 29 0F
BNE CODE_2A8A9B         ; $2A:8A8D: D0 0C
REP #$20                ; $2A:8A8F: C2 20
LDA $D8                 ; $2A:8A91: A5 D8
SEC                     ; $2A:8A93: 38
SBC #$01A0              ; $2A:8A94: E9 A0 01
STA $D8                 ; $2A:8A97: 85 D8
SEP #$20                ; $2A:8A99: E2 20

CODE_2A8A9B:
BRA CODE_2A8A9F         ; $2A:8A9B: 80 02

CODE_2A8A9D:
LDX #$02                ; $2A:8A9D: A2 02

CODE_2A8A9F:
DEY                     ; $2A:8A9F: 88
LDA.w DATA_2A89D7,x     ; $2A:8AA0: BD D7 89
STA [$D8],y             ; $2A:8AA3: 97 D8
JSR CODE_2A8AD2         ; $2A:8AA5: 20 D2 8A

CODE_2A8AA8:
TYA                     ; $2A:8AA8: 98
AND #$0F                ; $2A:8AA9: 29 0F
BNE CODE_2A8AB9         ; $2A:8AAB: D0 0C
REP #$20                ; $2A:8AAD: C2 20
LDA $D8                 ; $2A:8AAF: A5 D8
SEC                     ; $2A:8AB1: 38
SBC #$01A0              ; $2A:8AB2: E9 A0 01
STA $D8                 ; $2A:8AB5: 85 D8
SEP #$20                ; $2A:8AB7: E2 20

CODE_2A8AB9:
DEY                     ; $2A:8AB9: 88
LDA [$2E],y             ; $2A:8ABA: B7 2E
CMP #$9F                ; $2A:8ABC: C9 9F
BNE CODE_2A8ACE         ; $2A:8ABE: D0 0E
LDA [$D8],y             ; $2A:8AC0: B7 D8
CMP #$86                ; $2A:8AC2: C9 86
BNE CODE_2A8ACE         ; $2A:8AC4: D0 08
LDA.w DATA_2A89DA       ; $2A:8AC6: AD DA 89
STA [$D8],y             ; $2A:8AC9: 97 D8
JSR CODE_2A8AD2         ; $2A:8ACB: 20 D2 8A

CODE_2A8ACE:
PLY                     ; $2A:8ACE: 7A
PLX                     ; $2A:8ACF: FA
PLB                     ; $2A:8AD0: AB
RTL                     ; $2A:8AD1: 6B

CODE_2A8AD2:
LDA $D9                 ; $2A:8AD2: A5 D9
CLC                     ; $2A:8AD4: 18
ADC #$20                ; $2A:8AD5: 69 20
STA $D9                 ; $2A:8AD7: 85 D9
LDA #$01                ; $2A:8AD9: A9 01
STA [$D8],y             ; $2A:8ADB: 97 D8
RTS                     ; $2A:8ADD: 60

DATA_2A8ADE:
db $09,$02,$02,$07

CODE_2A8AE2:
PHB                     ; $2A:8AE2: 8B
PHK                     ; $2A:8AE3: 4B
PLB                     ; $2A:8AE4: AB
PHX                     ; $2A:8AE5: DA
PHY                     ; $2A:8AE6: 5A
REP #$20                ; $2A:8AE7: C2 20
LDA $2E                 ; $2A:8AE9: A5 2E
STA $D8                 ; $2A:8AEB: 85 D8
STA $DB                 ; $2A:8AED: 85 DB
SEP #$20                ; $2A:8AEF: E2 20
LDA $30                 ; $2A:8AF1: A5 30
STA $DA                 ; $2A:8AF3: 85 DA
STA $DD                 ; $2A:8AF5: 85 DD
TYA                     ; $2A:8AF7: 98
CLC                     ; $2A:8AF8: 18
ADC #$10                ; $2A:8AF9: 69 10
TAY                     ; $2A:8AFB: A8
AND #$F0                ; $2A:8AFC: 29 F0
BNE CODE_2A8B02         ; $2A:8AFE: D0 02
INC $D9                 ; $2A:8B00: E6 D9

CODE_2A8B02:
LDA [$D8],y             ; $2A:8B02: B7 D8
CMP #$9A                ; $2A:8B04: C9 9A
BEQ CODE_2A8B18         ; $2A:8B06: F0 10
CMP #$A8                ; $2A:8B08: C9 A8
BEQ CODE_2A8B18         ; $2A:8B0A: F0 0C
CMP #$F6                ; $2A:8B0C: C9 F6
BEQ CODE_2A8B18         ; $2A:8B0E: F0 08
LDA.w DATA_2A8ADE,x     ; $2A:8B10: BD DE 8A
STA [$D8],y             ; $2A:8B13: 97 D8
JSR CODE_2A8AD2         ; $2A:8B15: 20 D2 8A

CODE_2A8B18:
PLY                     ; $2A:8B18: 7A
PHY                     ; $2A:8B19: 5A
TYA                     ; $2A:8B1A: 98
AND #$0F                ; $2A:8B1B: 29 0F
BNE CODE_2A8B2B         ; $2A:8B1D: D0 0C
REP #$20                ; $2A:8B1F: C2 20
LDA $DB                 ; $2A:8B21: A5 DB
SEC                     ; $2A:8B23: 38
SBC #$01A0              ; $2A:8B24: E9 A0 01
STA $DB                 ; $2A:8B27: 85 DB
SEP #$20                ; $2A:8B29: E2 20

CODE_2A8B2B:
DEY                     ; $2A:8B2B: 88
LDA [$DB],y             ; $2A:8B2C: B7 DB
CMP #$C2                ; $2A:8B2E: C9 C2
BNE CODE_2A8B47         ; $2A:8B30: D0 15
PLY                     ; $2A:8B32: 7A
PHY                     ; $2A:8B33: 5A
LDA #$12                ; $2A:8B34: A9 12
STA [$2E],y             ; $2A:8B36: 97 2E
REP #$30                ; $2A:8B38: C2 30
TYA                     ; $2A:8B3A: 98
ORA #$2000              ; $2A:8B3B: 09 00 20
TAY                     ; $2A:8B3E: A8
SEP #$20                ; $2A:8B3F: E2 20
LDA #$01                ; $2A:8B41: A9 01
STA [$2E],y             ; $2A:8B43: 97 2E
SEP #$10                ; $2A:8B45: E2 10

CODE_2A8B47:
PLY                     ; $2A:8B47: 7A
PLX                     ; $2A:8B48: FA
PLB                     ; $2A:8B49: AB
RTL                     ; $2A:8B4A: 6B

CODE_2A8B4B:
REP #$20                ; $2A:8B4B: C2 20
LDA #$1000              ; $2A:8B4D: A9 00 10
XBA                     ; $2A:8B50: EB
STA $1602               ; $2A:8B51: 8D 02 16
LDA #$40BE              ; $2A:8B54: A9 BE 40
XBA                     ; $2A:8B57: EB
STA $1604               ; $2A:8B58: 8D 04 16
LDA #$30FB              ; $2A:8B5B: A9 FB 30
STA $1606               ; $2A:8B5E: 8D 06 16
LDA #$FFFF              ; $2A:8B61: A9 FF FF
STA $1608               ; $2A:8B64: 8D 08 16
SEP #$20                ; $2A:8B67: E2 20
JSR CODE_2A8C9A         ; $2A:8B69: 20 9A 8C
REP #$20                ; $2A:8B6C: C2 20
LDA #$1300              ; $2A:8B6E: A9 00 13
XBA                     ; $2A:8B71: EB
STA $1602               ; $2A:8B72: 8D 02 16
LDA #$403E              ; $2A:8B75: A9 3E 40
XBA                     ; $2A:8B78: EB
STA $1604               ; $2A:8B79: 8D 04 16
SEP #$20                ; $2A:8B7C: E2 20
JSR CODE_2A8C9A         ; $2A:8B7E: 20 9A 8C
REP #$20                ; $2A:8B81: C2 20
LDA #$1060              ; $2A:8B83: A9 60 10
XBA                     ; $2A:8B86: EB
STA $1602               ; $2A:8B87: 8D 02 16
LDA #$003F              ; $2A:8B8A: A9 3F 00
XBA                     ; $2A:8B8D: EB
STA $1604               ; $2A:8B8E: 8D 04 16
LDX #$40                ; $2A:8B91: A2 40
LDA #$04D9              ; $2A:8B93: A9 D9 04

CODE_2A8B96:
STA $1606,x             ; $2A:8B96: 9D 06 16
DEX                     ; $2A:8B99: CA
DEX                     ; $2A:8B9A: CA
BPL CODE_2A8B96         ; $2A:8B9B: 10 F9
LDA #$04E7              ; $2A:8B9D: A9 E7 04
STA $1624               ; $2A:8BA0: 8D 24 16
LDA #$04E8              ; $2A:8BA3: A9 E8 04
STA $1626               ; $2A:8BA6: 8D 26 16
LDA #$FFFF              ; $2A:8BA9: A9 FF FF
STA $1646               ; $2A:8BAC: 8D 46 16
SEP #$20                ; $2A:8BAF: E2 20
JSR CODE_2A8C9A         ; $2A:8BB1: 20 9A 8C
REP #$20                ; $2A:8BB4: C2 20
LDA #$12E0              ; $2A:8BB6: A9 E0 12
XBA                     ; $2A:8BB9: EB
STA $1602               ; $2A:8BBA: 8D 02 16
LDX #$40                ; $2A:8BBD: A2 40
LDA #$04E5              ; $2A:8BBF: A9 E5 04

CODE_2A8BC2:
STA $1606,x             ; $2A:8BC2: 9D 06 16
DEX                     ; $2A:8BC5: CA
DEX                     ; $2A:8BC6: CA
BPL CODE_2A8BC2         ; $2A:8BC7: 10 F9
LDA #$04E9              ; $2A:8BC9: A9 E9 04
STA $1624               ; $2A:8BCC: 8D 24 16
LDA #$04EA              ; $2A:8BCF: A9 EA 04
STA $1626               ; $2A:8BD2: 8D 26 16
LDA #$FFFF              ; $2A:8BD5: A9 FF FF
STA $1646               ; $2A:8BD8: 8D 46 16
SEP #$20                ; $2A:8BDB: E2 20
JSR CODE_2A8C9A         ; $2A:8BDD: 20 9A 8C
REP #$20                ; $2A:8BE0: C2 20
LDA #$1000              ; $2A:8BE2: A9 00 10
XBA                     ; $2A:8BE5: EB
STA $1602               ; $2A:8BE6: 8D 02 16
LDA #$C02E              ; $2A:8BE9: A9 2E C0
XBA                     ; $2A:8BEC: EB
STA $1604               ; $2A:8BED: 8D 04 16
LDA #$30FB              ; $2A:8BF0: A9 FB 30
STA $1606               ; $2A:8BF3: 8D 06 16
LDA #$FFFF              ; $2A:8BF6: A9 FF FF
STA $1608               ; $2A:8BF9: 8D 08 16
SEP #$20                ; $2A:8BFC: E2 20
JSR CODE_2A8C9A         ; $2A:8BFE: 20 9A 8C
LDA #$10                ; $2A:8C01: A9 10
STA $1602               ; $2A:8C03: 8D 02 16
LDA #$1F                ; $2A:8C06: A9 1F
STA $1603               ; $2A:8C08: 8D 03 16
JSR CODE_2A8C9A         ; $2A:8C0B: 20 9A 8C
REP #$20                ; $2A:8C0E: C2 20
LDA #$1061              ; $2A:8C10: A9 61 10
XBA                     ; $2A:8C13: EB
STA $1602               ; $2A:8C14: 8D 02 16
LDA #$8029              ; $2A:8C17: A9 29 80
XBA                     ; $2A:8C1A: EB
STA $1604               ; $2A:8C1B: 8D 04 16
LDA #$24D8              ; $2A:8C1E: A9 D8 24
STA $1606               ; $2A:8C21: 8D 06 16
LDA #$24DB              ; $2A:8C24: A9 DB 24
LDX #$24                ; $2A:8C27: A2 24

CODE_2A8C29:
STA $1608,x             ; $2A:8C29: 9D 08 16
DEX                     ; $2A:8C2C: CA
DEX                     ; $2A:8C2D: CA
BPL CODE_2A8C29         ; $2A:8C2E: 10 F9
LDA #$24EB              ; $2A:8C30: A9 EB 24
STA $1618               ; $2A:8C33: 8D 18 16
LDA #$24EC              ; $2A:8C36: A9 EC 24
STA $161A               ; $2A:8C39: 8D 1A 16
LDA #$24ED              ; $2A:8C3C: A9 ED 24
STA $161C               ; $2A:8C3F: 8D 1C 16
LDA #$24E4              ; $2A:8C42: A9 E4 24
STA $162E               ; $2A:8C45: 8D 2E 16
LDA #$FFFF              ; $2A:8C48: A9 FF FF
STA $1630               ; $2A:8C4B: 8D 30 16
SEP #$20                ; $2A:8C4E: E2 20
JSR CODE_2A8C9A         ; $2A:8C50: 20 9A 8C
REP #$20                ; $2A:8C53: C2 20
LDA #$107E              ; $2A:8C55: A9 7E 10
XBA                     ; $2A:8C58: EB
STA $1602               ; $2A:8C59: 8D 02 16
LDA #$24DA              ; $2A:8C5C: A9 DA 24
STA $1606               ; $2A:8C5F: 8D 06 16
LDA #$24E3              ; $2A:8C62: A9 E3 24
LDX #$24                ; $2A:8C65: A2 24

CODE_2A8C67:
STA $1608,x             ; $2A:8C67: 9D 08 16
DEX                     ; $2A:8C6A: CA
DEX                     ; $2A:8C6B: CA
BPL CODE_2A8C67         ; $2A:8C6C: 10 F9
LDA #$24EE              ; $2A:8C6E: A9 EE 24
STA $1618               ; $2A:8C71: 8D 18 16
LDA #$24F0              ; $2A:8C74: A9 F0 24
STA $161A               ; $2A:8C77: 8D 1A 16
LDA #$24F1              ; $2A:8C7A: A9 F1 24
STA $161C               ; $2A:8C7D: 8D 1C 16
LDA #$24E6              ; $2A:8C80: A9 E6 24
STA $162E               ; $2A:8C83: 8D 2E 16
SEP #$20                ; $2A:8C86: E2 20
JSR CODE_2A8C9A         ; $2A:8C88: 20 9A 8C
STZ $1600               ; $2A:8C8B: 9C 00 16
STZ $1601               ; $2A:8C8E: 9C 01 16
LDA #$FF                ; $2A:8C91: A9 FF
STA $1602               ; $2A:8C93: 8D 02 16
STA $1603               ; $2A:8C96: 8D 03 16
RTL                     ; $2A:8C99: 6B

CODE_2A8C9A:
REP #$20                ; $2A:8C9A: C2 20
LDA #$1602              ; $2A:8C9C: A9 02 16
STA $36                 ; $2A:8C9F: 85 36
LDX #$00                ; $2A:8CA1: A2 00
STX $38                 ; $2A:8CA3: 86 38
SEP #$20                ; $2A:8CA5: E2 20
JSL CODE_29E8AB         ; $2A:8CA7: 22 AB E8 29
RTS                     ; $2A:8CAB: 60

CODE_2A8CAC:
PHB                     ; $2A:8CAC: 8B
LDA #$7F                ; $2A:8CAD: A9 7F
PHA                     ; $2A:8CAF: 48
PLB                     ; $2A:8CB0: AB
REP #$30                ; $2A:8CB1: C2 30
LDX #$01AE              ; $2A:8CB3: A2 AE 01

CODE_2A8CB6:
STZ $0000,x             ; $2A:8CB6: 9E 00 00
STZ $01B0,x             ; $2A:8CB9: 9E B0 01
STZ $0360,x             ; $2A:8CBC: 9E 60 03
STZ $0510,x             ; $2A:8CBF: 9E 10 05
STZ $06C0,x             ; $2A:8CC2: 9E C0 06
STZ $0870,x             ; $2A:8CC5: 9E 70 08
STZ $0A20,x             ; $2A:8CC8: 9E 20 0A
STZ $0BD0,x             ; $2A:8CCB: 9E D0 0B
STZ $0D80,x             ; $2A:8CCE: 9E 80 0D
DEX                     ; $2A:8CD1: CA
DEX                     ; $2A:8CD2: CA
BPL CODE_2A8CB6         ; $2A:8CD3: 10 E1
SEP #$30                ; $2A:8CD5: E2 30
PLB                     ; $2A:8CD7: AB
RTS                     ; $2A:8CD8: 60

CODE_2A8CD9:
STA $7F0000,x           ; $2A:8CD9: 9F 00 00 7F
STA $7F0360,x           ; $2A:8CDD: 9F 60 03 7F
STA $7F06C0,x           ; $2A:8CE1: 9F C0 06 7F
STA $7F0A20,x           ; $2A:8CE5: 9F 20 0A 7F
STA $7F0D80,x           ; $2A:8CE9: 9F 80 0D 7F
RTS                     ; $2A:8CED: 60

CODE_2A8CEE:
STA $7F0010,x           ; $2A:8CEE: 9F 10 00 7F
STA $7F0370,x           ; $2A:8CF2: 9F 70 03 7F
STA $7F06D0,x           ; $2A:8CF6: 9F D0 06 7F
STA $7F0A30,x           ; $2A:8CFA: 9F 30 0A 7F
STA $7F0D90,x           ; $2A:8CFE: 9F 90 0D 7F
RTS                     ; $2A:8D02: 60

CODE_2A8D03:
PHB                     ; $2A:8D03: 8B
LDY #$7F                ; $2A:8D04: A0 7F
PHY                     ; $2A:8D06: 5A
PLB                     ; $2A:8D07: AB
STA $0000,x             ; $2A:8D08: 9D 00 00
STA $01B0,x             ; $2A:8D0B: 9D B0 01
STA $0360,x             ; $2A:8D0E: 9D 60 03
STA $0510,x             ; $2A:8D11: 9D 10 05
STA $06C0,x             ; $2A:8D14: 9D C0 06
STA $0870,x             ; $2A:8D17: 9D 70 08
STA $0A20,x             ; $2A:8D1A: 9D 20 0A
STA $0BD0,x             ; $2A:8D1D: 9D D0 0B
STA $0D80,x             ; $2A:8D20: 9D 80 0D
PLB                     ; $2A:8D23: AB
RTS                     ; $2A:8D24: 60

CODE_2A8D25:
PHB                     ; $2A:8D25: 8B
LDY #$7F                ; $2A:8D26: A0 7F
PHY                     ; $2A:8D28: 5A
PLB                     ; $2A:8D29: AB
STA $0100,x             ; $2A:8D2A: 9D 00 01
STA $02B0,x             ; $2A:8D2D: 9D B0 02
STA $0460,x             ; $2A:8D30: 9D 60 04
STA $0610,x             ; $2A:8D33: 9D 10 06
STA $07C0,x             ; $2A:8D36: 9D C0 07
STA $0970,x             ; $2A:8D39: 9D 70 09
STA $0B20,x             ; $2A:8D3C: 9D 20 0B
STA $0CD0,x             ; $2A:8D3F: 9D D0 0C
STA $0E80,x             ; $2A:8D42: 9D 80 0E
PLB                     ; $2A:8D45: AB
RTS                     ; $2A:8D46: 60

PNTR_2A8D47:
dl DATA_2ADC80
dl DATA_2ADCE6
dl DATA_2ADCFB
dl DATA_2ADD3A
dl DATA_2ADD43
dl DATA_2ADD59
dl DATA_2ADD89
dl DATA_2ADD9E
dl DATA_2ADDB9
dl DATA_2ADE3C
dl DATA_2ADE70
dl DATA_2ADECF
dl DATA_2ADEDE
dl DATA_2ADEFF
dl DATA_2ADF36
dl DATA_2ADF96
dl DATA_2AE059
dl DATA_2AE07D
dl DATA_2AE080
dl DATA_2AE083
dl DATA_2ADE70
dl DATA_2AE086
dl DATA_2AE092
dl DATA_2ADF36
dl DATA_2ADEFF
dl DATA_2ADD43
dl DATA_2AE0A4
dl DATA_2AE0C7
dl DATA_2AE13C
dl DATA_2AE086
dl DATA_2AE1D8
dl DATA_2AE23E
dl DATA_2ADCB0
dl DATA_2AE241
dl DATA_2ADCE6
dl DATA_2ADCFB
dl DATA_2ADCD4

; Is this the level loading routine?

CODE_2A8DB6:
PHB                     ; $2A:8DB6: 8B
PHK                     ; $2A:8DB7: 4B
PLB                     ; $2A:8DB8: AB
LDA $0350               ; $2A:8DB9: AD 50 03
CMP #$17                ; $2A:8DBC: C9 17
BEQ CODE_2A8DC0         ; $2A:8DBE: F0 00

CODE_2A8DC0:
JSR CODE_2A8CAC         ; $2A:8DC0: 20 AC 8C
STZ $0293               ; $2A:8DC3: 9C 93 02
STZ $420C               ; $2A:8DC6: 9C 0C 42
LDA $0350               ; $2A:8DC9: AD 50 03
ASL A                   ; $2A:8DCC: 0A
CLC                     ; $2A:8DCD: 18
ADC $0350               ; $2A:8DCE: 6D 50 03
TAX                     ; $2A:8DD1: AA
LDA.w PNTR_2A8D47-1,x   ; $2A:8DD2: BD 46 8D
STA $2D                 ; $2A:8DD5: 85 2D
REP #$20                ; $2A:8DD7: C2 20
LDA.w PNTR_2A8D47-3,x   ; $2A:8DD9: BD 44 8D
STA $2B                 ; $2A:8DDC: 85 2B
SEP #$20                ; $2A:8DDE: E2 20
LDY #$00                ; $2A:8DE0: A0 00
LDA [$2B],y             ; $2A:8DE2: B7 2B
STA $02C5               ; $2A:8DE4: 8D C5 02
INY                     ; $2A:8DE7: C8
LDA [$2B],y             ; $2A:8DE8: B7 2B
STA $034F               ; $2A:8DEA: 8D 4F 03
REP #$30                ; $2A:8DED: C2 30
LDA $2B                 ; $2A:8DEF: A5 2B
CLC                     ; $2A:8DF1: 18
ADC #$0002              ; $2A:8DF2: 69 02 00
STA $2B                 ; $2A:8DF5: 85 2B
LDA $0350               ; $2A:8DF7: AD 50 03
AND #$00FF              ; $2A:8DFA: 29 FF 00
ASL A                   ; $2A:8DFD: 0A
TAX                     ; $2A:8DFE: AA
SEP #$20                ; $2A:8DFF: E2 20
JMP (PNTR_2A8E08,x)     ; $2A:8E01: 7C 08 8E

CODE_2A8E04:
SEP #$10                ; $2A:8E04: E2 10
PLB                     ; $2A:8E06: AB
RTL                     ; $2A:8E07: 6B

PNTR_2A8E08:
dw CODE_2A8E04
dw CODE_2A8EBA
dw CODE_2A9144
dw CODE_2A9342
dw CODE_2A948E
dw CODE_2A95FA
dw CODE_2A98B5
dw CODE_2A9AB4
dw CODE_2A9BC5
dw CODE_2A9C9D
dw CODE_2A9F2D
dw CODE_2AA0A7
dw CODE_2AA181
dw CODE_2AA339
dw CODE_2AA44A
dw CODE_2AA69A
dw CODE_2AA948
dw CODE_2AAA8F
dw CODE_2A8E04
dw CODE_2AAC05
dw CODE_2AAC05
dw CODE_2AA0A7
dw CODE_2AACA9
dw CODE_2AAE8C
dw CODE_2AA69A
dw CODE_2AA44A
dw CODE_2A95FA
dw CODE_2AAF58
dw CODE_2AB13F
dw CODE_2AA69A
dw CODE_2AACA9
dw CODE_2AB2B3
dw CODE_2AB3A1
dw CODE_2A8EBA
dw CODE_2AB3FE
dw CODE_2A9144
dw CODE_2A9342
dw CODE_2A8EBA

CODE_2A8E54:
PHA                     ; $2A:8E54: 48
ROL A                   ; $2A:8E55: 2A
ROL A                   ; $2A:8E56: 2A
ROL A                   ; $2A:8E57: 2A
ROL A                   ; $2A:8E58: 2A
AND #$07                ; $2A:8E59: 29 07
STA $04                 ; $2A:8E5B: 85 04
PLA                     ; $2A:8E5D: 68
AND #$1F                ; $2A:8E5E: 29 1F
XBA                     ; $2A:8E60: EB
INY                     ; $2A:8E61: C8
LDA [$2B],y             ; $2A:8E62: B7 2B
REP #$20                ; $2A:8E64: C2 20
LSR A                   ; $2A:8E66: 4A
LSR A                   ; $2A:8E67: 4A
LSR A                   ; $2A:8E68: 4A
LSR A                   ; $2A:8E69: 4A
STA $00                 ; $2A:8E6A: 85 00
SEP #$20                ; $2A:8E6C: E2 20
LDA [$2B],y             ; $2A:8E6E: B7 2B
AND #$0F                ; $2A:8E70: 29 0F
BEQ CODE_2A8E88         ; $2A:8E72: F0 14
STA $02                 ; $2A:8E74: 85 02
STZ $03                 ; $2A:8E76: 64 03
REP #$20                ; $2A:8E78: C2 20

CODE_2A8E7A:
LDA $00                 ; $2A:8E7A: A5 00
CLC                     ; $2A:8E7C: 18
ADC #$01B0              ; $2A:8E7D: 69 B0 01
STA $00                 ; $2A:8E80: 85 00
DEC $02                 ; $2A:8E82: C6 02
BNE CODE_2A8E7A         ; $2A:8E84: D0 F4
SEP #$20                ; $2A:8E86: E2 20

CODE_2A8E88:
INY                     ; $2A:8E88: C8
LDA [$2B],y             ; $2A:8E89: B7 2B
AND #$0F                ; $2A:8E8B: 29 0F
STA $D8                 ; $2A:8E8D: 85 D8
STZ $D9                 ; $2A:8E8F: 64 D9
LDA [$2B],y             ; $2A:8E91: B7 2B
AND #$F0                ; $2A:8E93: 29 F0
LSR A                   ; $2A:8E95: 4A
LSR A                   ; $2A:8E96: 4A
LSR A                   ; $2A:8E97: 4A
TAX                     ; $2A:8E98: AA
STZ $DA                 ; $2A:8E99: 64 DA
STZ $DB                 ; $2A:8E9B: 64 DB
LDA $04                 ; $2A:8E9D: A5 04
BEQ CODE_2A8EA6         ; $2A:8E9F: F0 05
INY                     ; $2A:8EA1: C8
LDA [$2B],y             ; $2A:8EA2: B7 2B
STA $DA                 ; $2A:8EA4: 85 DA

CODE_2A8EA6:
REP #$20                ; $2A:8EA6: C2 20
LDA $04                 ; $2A:8EA8: A5 04
AND #$00FF              ; $2A:8EAA: 29 FF 00
BEQ CODE_2A8EB1         ; $2A:8EAD: F0 02
INC $2B                 ; $2A:8EAF: E6 2B

CODE_2A8EB1:
INC $2B                 ; $2A:8EB1: E6 2B
INC $2B                 ; $2A:8EB3: E6 2B
INC $2B                 ; $2A:8EB5: E6 2B
SEP #$20                ; $2A:8EB7: E2 20
RTS                     ; $2A:8EB9: 60

CODE_2A8EBA:
SEP #$10                ; $2A:8EBA: E2 10
LDY #$00                ; $2A:8EBC: A0 00
LDX #$70                ; $2A:8EBE: A2 70

CODE_2A8EC0:
LDA #$15                ; $2A:8EC0: A9 15
JSR CODE_2A8D25         ; $2A:8EC2: 20 25 8D
INX                     ; $2A:8EC5: E8
TXA                     ; $2A:8EC6: 8A
AND #$0F                ; $2A:8EC7: 29 0F
BNE CODE_2A8EC0         ; $2A:8EC9: D0 F5

CODE_2A8ECB:
LDA #$15                ; $2A:8ECB: A9 15
JSR CODE_2A8D25         ; $2A:8ECD: 20 25 8D
INX                     ; $2A:8ED0: E8
TXA                     ; $2A:8ED1: 8A
AND #$0F                ; $2A:8ED2: 29 0F
BNE CODE_2A8ECB         ; $2A:8ED4: D0 F5
REP #$10                ; $2A:8ED6: C2 10
LDX #$0170              ; $2A:8ED8: A2 70 01
LDA #$20                ; $2A:8EDB: A9 20
JSR CODE_2A8CD9         ; $2A:8EDD: 20 D9 8C
INX                     ; $2A:8EE0: E8
LDA #$23                ; $2A:8EE1: A9 23
JSR CODE_2A8CD9         ; $2A:8EE3: 20 D9 8C
INX                     ; $2A:8EE6: E8
JSR CODE_2A8CD9         ; $2A:8EE7: 20 D9 8C
INX                     ; $2A:8EEA: E8
JSR CODE_2A8CD9         ; $2A:8EEB: 20 D9 8C
INX                     ; $2A:8EEE: E8
JSR CODE_2A8CD9         ; $2A:8EEF: 20 D9 8C
INX                     ; $2A:8EF2: E8
LDA #$21                ; $2A:8EF3: A9 21
JSR CODE_2A8CD9         ; $2A:8EF5: 20 D9 8C
INX                     ; $2A:8EF8: E8
LDA #$0F                ; $2A:8EF9: A9 0F
JSR CODE_2A8CD9         ; $2A:8EFB: 20 D9 8C
LDX #$0324              ; $2A:8EFE: A2 24 03
JSR CODE_2A8CD9         ; $2A:8F01: 20 D9 8C
SEP #$10                ; $2A:8F04: E2 10

CODE_2A8F06:
LDY #$00                ; $2A:8F06: A0 00
LDA [$2B],y             ; $2A:8F08: B7 2B
CMP #$FF                ; $2A:8F0A: C9 FF
BEQ CODE_2A8F16         ; $2A:8F0C: F0 08
JSR CODE_2A8E54         ; $2A:8F0E: 20 54 8E
JSR (PNTR_2A8F18,x)     ; $2A:8F11: FC 18 8F
BRA CODE_2A8F06         ; $2A:8F14: 80 F0

CODE_2A8F16:
PLB                     ; $2A:8F16: AB
RTL                     ; $2A:8F17: 6B

PNTR_2A8F18:
dw CODE_2A8F1E
dw CODE_2A8F58
dw CODE_2A8F78

CODE_2A8F1E:
REP #$10                ; $2A:8F1E: C2 10
LDX $00                 ; $2A:8F20: A6 00
LDA #$11                ; $2A:8F22: A9 11
JSR CODE_2A8CD9         ; $2A:8F24: 20 D9 8C
LDA #$16                ; $2A:8F27: A9 16
JSR CODE_2A8CEE         ; $2A:8F29: 20 EE 8C
LDA $D8                 ; $2A:8F2C: A5 D8
BEQ CODE_2A8F4A         ; $2A:8F2E: F0 1A

CODE_2A8F30:
INX                     ; $2A:8F30: E8
LDA #$19                ; $2A:8F31: A9 19
JSR CODE_2A8CD9         ; $2A:8F33: 20 D9 8C
LDA #$1C                ; $2A:8F36: A9 1C
JSR CODE_2A8CEE         ; $2A:8F38: 20 EE 8C
INX                     ; $2A:8F3B: E8
LDA #$1A                ; $2A:8F3C: A9 1A
JSR CODE_2A8CD9         ; $2A:8F3E: 20 D9 8C
LDA #$1D                ; $2A:8F41: A9 1D
JSR CODE_2A8CEE         ; $2A:8F43: 20 EE 8C
DEC $D8                 ; $2A:8F46: C6 D8
BNE CODE_2A8F30         ; $2A:8F48: D0 E6

CODE_2A8F4A:
INX                     ; $2A:8F4A: E8
LDA #$12                ; $2A:8F4B: A9 12
JSR CODE_2A8CD9         ; $2A:8F4D: 20 D9 8C
LDA #$17                ; $2A:8F50: A9 17
JSR CODE_2A8CEE         ; $2A:8F52: 20 EE 8C
SEP #$10                ; $2A:8F55: E2 10
RTS                     ; $2A:8F57: 60

CODE_2A8F58:
REP #$10                ; $2A:8F58: C2 10
LDX $00                 ; $2A:8F5A: A6 00
LDA #$25                ; $2A:8F5C: A9 25
JSR CODE_2A8CD9         ; $2A:8F5E: 20 D9 8C
LDA $D8                 ; $2A:8F61: A5 D8
BEQ CODE_2A8F6F         ; $2A:8F63: F0 0A

CODE_2A8F65:
INX                     ; $2A:8F65: E8
LDA #$26                ; $2A:8F66: A9 26
JSR CODE_2A8CD9         ; $2A:8F68: 20 D9 8C
DEC $D8                 ; $2A:8F6B: C6 D8
BNE CODE_2A8F65         ; $2A:8F6D: D0 F6

CODE_2A8F6F:
INX                     ; $2A:8F6F: E8
LDA #$27                ; $2A:8F70: A9 27
JSR CODE_2A8CD9         ; $2A:8F72: 20 D9 8C
SEP #$10                ; $2A:8F75: E2 10
RTS                     ; $2A:8F77: 60

CODE_2A8F78:
LDA #$2A                ; $2A:8F78: A9 2A
STA $08                 ; $2A:8F7A: 85 08
STA $0B                 ; $2A:8F7C: 85 0B
STA $0E                 ; $2A:8F7E: 85 0E
REP #$30                ; $2A:8F80: C2 30
LDX $D8                 ; $2A:8F82: A6 D8
LDA.w PNTR_2A8FF3,x     ; $2A:8F84: BD F3 8F
STA $06                 ; $2A:8F87: 85 06
LDA.w PNTR_2A9001,x     ; $2A:8F89: BD 01 90
STA $09                 ; $2A:8F8C: 85 09
LDA.w PNTR_2A900F,x     ; $2A:8F8E: BD 0F 90
STA $0C                 ; $2A:8F91: 85 0C
SEP #$20                ; $2A:8F93: E2 20
LDA.w DATA_2A8FE5,x     ; $2A:8F95: BD E5 8F
STA $0F                 ; $2A:8F98: 85 0F
LDX $00                 ; $2A:8F9A: A6 00
LDY #$0000              ; $2A:8F9C: A0 00 00
LDA [$0C]               ; $2A:8F9F: A7 0C
STA $02                 ; $2A:8FA1: 85 02
STZ $04                 ; $2A:8FA3: 64 04
STZ $05                 ; $2A:8FA5: 64 05

CODE_2A8FA7:
LDA [$06],y             ; $2A:8FA7: B7 06
JSR CODE_2A8CD9         ; $2A:8FA9: 20 D9 8C
INY                     ; $2A:8FAC: C8
INX                     ; $2A:8FAD: E8
TXA                     ; $2A:8FAE: 8A
AND #$0F                ; $2A:8FAF: 29 0F
BNE CODE_2A8FBD         ; $2A:8FB1: D0 0A
REP #$20                ; $2A:8FB3: C2 20
TXA                     ; $2A:8FB5: 8A
CLC                     ; $2A:8FB6: 18
ADC #$01A0              ; $2A:8FB7: 69 A0 01
TAX                     ; $2A:8FBA: AA
SEP #$20                ; $2A:8FBB: E2 20

CODE_2A8FBD:
DEC $02                 ; $2A:8FBD: C6 02
BNE CODE_2A8FA7         ; $2A:8FBF: D0 E6
DEC $0F                 ; $2A:8FC1: C6 0F
BEQ CODE_2A8FE2         ; $2A:8FC3: F0 1D
PHY                     ; $2A:8FC5: 5A
REP #$20                ; $2A:8FC6: C2 20
LDA $04                 ; $2A:8FC8: A5 04
ASL A                   ; $2A:8FCA: 0A
TAY                     ; $2A:8FCB: A8
LDA $00                 ; $2A:8FCC: A5 00
CLC                     ; $2A:8FCE: 18
ADC [$09],y             ; $2A:8FCF: 77 09
STA $00                 ; $2A:8FD1: 85 00
SEP #$20                ; $2A:8FD3: E2 20
INC $04                 ; $2A:8FD5: E6 04
LDY $04                 ; $2A:8FD7: A4 04
LDA [$0C],y             ; $2A:8FD9: B7 0C
STA $02                 ; $2A:8FDB: 85 02
LDX $00                 ; $2A:8FDD: A6 00
PLY                     ; $2A:8FDF: 7A
BRA CODE_2A8FA7         ; $2A:8FE0: 80 C5

CODE_2A8FE2:
SEP #$10                ; $2A:8FE2: E2 10
RTS                     ; $2A:8FE4: 60

DATA_2A8FE5:
dw $0005,$0004,$0002,$0002
dw $0005,$0005,$0006

PNTR_2A8FF3:
dw $901D,$9047,$9064,$906A
dw $9072,$909D,$90CB

PNTR_2A9001:
dw $90FB,$9103,$9109,$910B
dw $910D,$9115,$911D

PNTR_2A900F:
dw $9127,$912C,$9130,$9132
dw $9134,$9139,$913E
db $0E,$0F,$0F,$10,$13,$14,$15,$15
db $0F,$10,$0E,$15,$15,$15,$15,$15
db $14,$10,$0E,$20,$21,$15,$15,$15
db $15,$15,$15,$15,$1B,$0E,$15,$15
db $15,$15,$15,$15,$15,$15,$15,$15
db $15,$10
db $0E,$0F,$10,$0E,$15,$15,$18,$22
db $23,$23,$23,$23,$21,$15,$15,$15
db $14,$10,$13,$15,$15,$15,$15,$15
db $15,$15,$15,$15,$18
db $01,$02,$03,$0D,$07,$0A
db $01,$02,$02,$03,$0D,$07,$06,$0A
db $00,$00,$01,$03,$01,$02,$04,$04
db $03,$01,$28,$28,$03,$01,$02,$02
db $04,$04,$04,$09,$07,$06,$07,$06
db $08,$03,$0D,$07,$08,$09,$07,$06
db $06,$0B,$00,$00,$0C,$07,$0A,$0C
db $07,$06,$0B
db $01,$02,$03,$01,$02,$04,$04
db $04,$02,$28,$03,$03,$00,$01,$04
db $04,$04,$04,$04,$04,$04,$04,$02
db $03,$04,$05,$06,$07,$07,$06,$08
db $09,$07,$07,$06,$07,$0A,$06,$06
db $0B,$00,$00,$0C,$07,$06,$0B
db $01
db $02,$28,$02,$03,$01,$02,$04,$04
db $04,$04,$04,$02,$01,$02,$02,$04
db $04,$04,$04,$04,$04,$04,$04,$01
db $04,$04,$04,$04,$04,$04,$04,$07
db $07,$06,$07,$0D,$06,$07,$24,$07
db $06,$07,$06,$0B,$0C,$06,$0B
db $10
db $00,$0F,$00,$0D,$00,$0F,$00
db $0F
db $00,$0A,$00,$10,$00
db $10,$00
db $10,$00
db $10,$00,$0D,$00,$10,$00,$11
db $00
db $0E,$00,$0D,$00,$10,$00,$10
db $00
db $0E,$00,$0D,$00,$0F,$00,$10
db $00,$12,$00
db $04,$06,$08,$0B,$0D
db $03,$04,$0B,$0B
db $03,$03
db $04,$04
db $04,$09,$0D,$0D,$04
db $03,$08,$0D,$0D,$09
db $05,$08,$0B,$0C,$09,$03

CODE_2A9144:
SEP #$10                ; $2A:9144: E2 10
STZ $02D9               ; $2A:9146: 9C D9 02
LDA $0350               ; $2A:9149: AD 50 03
CMP #$23                ; $2A:914C: C9 23
BNE CODE_2A9155         ; $2A:914E: D0 05
LDA #$01                ; $2A:9150: A9 01
STA $02D9               ; $2A:9152: 8D D9 02

CODE_2A9155:
LDX #$A0                ; $2A:9155: A2 A0
LDA #$40                ; $2A:9157: A9 40
STA $00                 ; $2A:9159: 85 00
LDA #$06                ; $2A:915B: A9 06

CODE_2A915D:
JSR CODE_2A8D03         ; $2A:915D: 20 03 8D
INX                     ; $2A:9160: E8
DEC $00                 ; $2A:9161: C6 00
BNE CODE_2A915D         ; $2A:9163: D0 F8
LDA #$0C                ; $2A:9165: A9 0C
STA $02                 ; $2A:9167: 85 02
LDA #$0D                ; $2A:9169: A9 0D
STA $03                 ; $2A:916B: 85 03
LDA #$02                ; $2A:916D: A9 02
STA $01                 ; $2A:916F: 85 01

CODE_2A9171:
LDA #$08                ; $2A:9171: A9 08
STA $00                 ; $2A:9173: 85 00

CODE_2A9175:
LDA $02                 ; $2A:9175: A5 02
JSR CODE_2A8D03         ; $2A:9177: 20 03 8D
INX                     ; $2A:917A: E8
LDA $03                 ; $2A:917B: A5 03
JSR CODE_2A8D03         ; $2A:917D: 20 03 8D
INX                     ; $2A:9180: E8
DEC $00                 ; $2A:9181: C6 00
BNE CODE_2A9175         ; $2A:9183: D0 F0
INC $02                 ; $2A:9185: E6 02
INC $02                 ; $2A:9187: E6 02
INC $03                 ; $2A:9189: E6 03
INC $03                 ; $2A:918B: E6 03
DEC $01                 ; $2A:918D: C6 01
BNE CODE_2A9171         ; $2A:918F: D0 E0
LDA #$04                ; $2A:9191: A9 04
STA $01                 ; $2A:9193: 85 01

CODE_2A9195:
LDA #$08                ; $2A:9195: A9 08
STA $00                 ; $2A:9197: 85 00

CODE_2A9199:
LDA #$10                ; $2A:9199: A9 10
JSR CODE_2A8D25         ; $2A:919B: 20 25 8D
INX                     ; $2A:919E: E8
LDA #$10                ; $2A:919F: A9 10
JSR CODE_2A8D25         ; $2A:91A1: 20 25 8D
INX                     ; $2A:91A4: E8
DEC $00                 ; $2A:91A5: C6 00
BNE CODE_2A9199         ; $2A:91A7: D0 F0
DEC $01                 ; $2A:91A9: C6 01
BNE CODE_2A9195         ; $2A:91AB: D0 E8

CODE_2A91AD:
LDY #$00                ; $2A:91AD: A0 00
LDA [$2B],y             ; $2A:91AF: B7 2B
CMP #$FF                ; $2A:91B1: C9 FF
BEQ CODE_2A91BD         ; $2A:91B3: F0 08
JSR CODE_2A8E54         ; $2A:91B5: 20 54 8E
JSR (PNTR_2A91BF,x)     ; $2A:91B8: FC BF 91
BRA CODE_2A91AD         ; $2A:91BB: 80 F0

CODE_2A91BD:
PLB                     ; $2A:91BD: AB
RTL                     ; $2A:91BE: 6B

PNTR_2A91BF:
dw CODE_2A91C3
dw CODE_2A9221

CODE_2A91C3:
LDA $0350               ; $2A:91C3: AD 50 03
CMP #$23                ; $2A:91C6: C9 23
BEQ CODE_2A9216         ; $2A:91C8: F0 4C
REP #$10                ; $2A:91CA: C2 10
LDX $00                 ; $2A:91CC: A6 00
LDA #$08                ; $2A:91CE: A9 08
STA $02                 ; $2A:91D0: 85 02
STZ $03                 ; $2A:91D2: 64 03
LDA #$11                ; $2A:91D4: A9 11
STA $04                 ; $2A:91D6: 85 04

CODE_2A91D8:
LDY $D8                 ; $2A:91D8: A4 D8

CODE_2A91DA:
LDA $04                 ; $2A:91DA: A5 04
JSR CODE_2A8CD9         ; $2A:91DC: 20 D9 8C
INC $04                 ; $2A:91DF: E6 04
INX                     ; $2A:91E1: E8
TXA                     ; $2A:91E2: 8A
AND #$0F                ; $2A:91E3: 29 0F
BNE CODE_2A91F1         ; $2A:91E5: D0 0A
REP #$20                ; $2A:91E7: C2 20
TXA                     ; $2A:91E9: 8A
CLC                     ; $2A:91EA: 18
ADC #$01A0              ; $2A:91EB: 69 A0 01
TAX                     ; $2A:91EE: AA
SEP #$20                ; $2A:91EF: E2 20

CODE_2A91F1:
DEY                     ; $2A:91F1: 88
BNE CODE_2A91DA         ; $2A:91F2: D0 E6
LDY $02                 ; $2A:91F4: A4 02
REP #$20                ; $2A:91F6: C2 20
LDA $00                 ; $2A:91F8: A5 00
CLC                     ; $2A:91FA: 18
ADC DATA_2A9217,y       ; $2A:91FB: 79 17 92
STA $00                 ; $2A:91FE: 85 00
TAX                     ; $2A:9200: AA
SEP #$20                ; $2A:9201: E2 20
DEC $02                 ; $2A:9203: C6 02
DEC $02                 ; $2A:9205: C6 02
BPL CODE_2A91D8         ; $2A:9207: 10 CF
LDA #$17                ; $2A:9209: A9 17
JSR CODE_2A8CD9         ; $2A:920B: 20 D9 8C
LDA #$18                ; $2A:920E: A9 18
INX                     ; $2A:9210: E8
JSR CODE_2A8CD9         ; $2A:9211: 20 D9 8C
SEP #$10                ; $2A:9214: E2 10

CODE_2A9216:
RTS                     ; $2A:9216: 60

DATA_2A9217:
dw $0010,$000F,$0010,$0010
dw $0010

CODE_2A9221:
LDA #$2A                ; $2A:9221: A9 2A
STA $08                 ; $2A:9223: 85 08
STA $0B                 ; $2A:9225: 85 0B
STA $0E                 ; $2A:9227: 85 0E
REP #$30                ; $2A:9229: C2 30
LDX $D8                 ; $2A:922B: A6 D8
LDA.w PNTR_2A925C,x     ; $2A:922D: BD 5C 92
STA $06                 ; $2A:9230: 85 06
LDA.w PNTR_2A9266,x     ; $2A:9232: BD 66 92
STA $09                 ; $2A:9235: 85 09
LDA.w PNTR_2A9270,x     ; $2A:9237: BD 70 92
STA $0C                 ; $2A:923A: 85 0C
STZ $04                 ; $2A:923C: 64 04
SEP #$20                ; $2A:923E: E2 20
LDA.w DATA_2A9252,x     ; $2A:9240: BD 52 92
STA $0F                 ; $2A:9243: 85 0F
LDX $00                 ; $2A:9245: A6 00
LDY #$0000              ; $2A:9247: A0 00 00
LDA [$0C]               ; $2A:924A: A7 0C
STA $02                 ; $2A:924C: 85 02
JSR CODE_2A8FA7         ; $2A:924E: 20 A7 8F
RTS                     ; $2A:9251: 60

DATA_2A9252:
db $05,$00,$06,$00,$05,$00,$06,$00
db $04,$00

PNTR_2A925C:
dw DATA_2A927A
dw DATA_2A929A
dw DATA_2A92B9
dw DATA_2A92DC
dw DATA_2A92EB

PNTR_2A9266:
dw DATA_2A92FE
dw DATA_2A9306
dw DATA_2A9310
dw DATA_2A9318
dw DATA_2A9322

PNTR_2A9270:
dw DATA_2A9328
dw DATA_2A932D
dw DATA_2A9333
dw DATA_2A9338
dw DATA_2A933E

DATA_2A927A:
db $01,$02,$01,$03,$04,$05,$03,$02
db $01,$04,$06,$06,$06,$06,$07,$02
db $08,$09,$06,$07,$09,$07,$04,$05
db $06,$05,$08,$04,$05,$04,$06,$06

DATA_2A929A:
db $03,$03,$02,$06,$06,$05,$02,$01
db $02,$07,$08,$09,$07,$04,$05,$02
db $00,$07,$08,$04,$06,$05,$04,$06
db $06,$05,$03,$07,$04,$05,$04

DATA_2A92B9:
db $01,$03,$02,$01,$02,$00,$01,$04
db $06,$05,$03,$02,$01,$0A,$05,$03
db $04,$06,$06,$06,$06,$06,$09,$06
db $0B,$06,$06,$06,$06,$06,$06,$06
db $05,$08,$04

DATA_2A92DC:
db $01,$02,$01,$03,$04,$05,$01,$03
db $04,$09,$05,$08,$09,$05,$04

DATA_2A92EB:
db $07,$09,$07,$08,$09,$06,$07,$08
db $04,$05,$04,$07,$04,$06,$05,$08
db $04,$05,$04

DATA_2A92FE:
db $0E,$00,$0F,$00,$10,$00,$10,$00

DATA_2A9306:
db $10,$00,$10,$00,$0E,$00,$0F,$00
db $0F,$00

DATA_2A9310:
db $0C,$00,$0F,$00,$10,$00,$10,$00

DATA_2A9318:
db $0E,$00,$0E,$00,$10,$00,$10,$00
db $12,$00

DATA_2A9322:
db $0A,$00,$0F,$00,$0F,$00

DATA_2A9328:
db $02,$06,$08,$08,$08

DATA_2A932D:
db $03,$06,$08,$0A,$02,$02

DATA_2A9333:
db $03,$09,$0A,$0A,$03

DATA_2A9338:
db $02,$04,$03,$01,$03,$02

DATA_2A933E:
db $02,$09,$06,$02

CODE_2A9342:
SEP #$10                ; $2A:9342: E2 10
LDX #$00                ; $2A:9344: A2 00

CODE_2A9346:
LDA #$02                ; $2A:9346: A9 02
STA $7F0000,x           ; $2A:9348: 9F 00 00 7F
INX                     ; $2A:934C: E8
CPX #$30                ; $2A:934D: E0 30
BNE CODE_2A9346         ; $2A:934F: D0 F5

CODE_2A9351:
LDA #$04                ; $2A:9351: A9 04
STA $7F0000,x           ; $2A:9353: 9F 00 00 7F
INX                     ; $2A:9357: E8
LDA #$07                ; $2A:9358: A9 07
STA $7F0000,x           ; $2A:935A: 9F 00 00 7F
INX                     ; $2A:935E: E8
CPX #$40                ; $2A:935F: E0 40
BNE CODE_2A9351         ; $2A:9361: D0 EE
LDX #$50                ; $2A:9363: A2 50
LDA #$90                ; $2A:9365: A9 90
STA $00                 ; $2A:9367: 85 00
LDA #$10                ; $2A:9369: A9 10

CODE_2A936B:
STA $7F0000,x           ; $2A:936B: 9F 00 00 7F
INX                     ; $2A:936F: E8
DEC $00                 ; $2A:9370: C6 00
BNE CODE_2A936B         ; $2A:9372: D0 F7

CODE_2A9374:
LDY #$00                ; $2A:9374: A0 00
LDA [$2B],y             ; $2A:9376: B7 2B
CMP #$FF                ; $2A:9378: C9 FF
BEQ CODE_2A9384         ; $2A:937A: F0 08
JSR CODE_2A8E54         ; $2A:937C: 20 54 8E
JSR (PNTR_2A9386,x)     ; $2A:937F: FC 86 93
BRA CODE_2A9374         ; $2A:9382: 80 F0

CODE_2A9384:
PLB                     ; $2A:9384: AB
RTL                     ; $2A:9385: 6B

PNTR_2A9386:
dw CODE_2A9392
dw CODE_2A93D7
dw CODE_2A93FD
dw CODE_2A9453
dw CODE_2A9465
dw CODE_2A9480

CODE_2A9392:
REP #$10                ; $2A:9392: C2 10
LDX $00                 ; $2A:9394: A6 00

CODE_2A9396:
LDA #$01                ; $2A:9396: A9 01
STA $7F0000,x           ; $2A:9398: 9F 00 00 7F
REP #$20                ; $2A:939C: C2 20
TXA                     ; $2A:939E: 8A
CLC                     ; $2A:939F: 18
ADC #$0010              ; $2A:93A0: 69 10 00
TAX                     ; $2A:93A3: AA
SEP #$20                ; $2A:93A4: E2 20
LDA $7F0000,x           ; $2A:93A6: BF 00 00 7F
CMP #$07                ; $2A:93AA: C9 07
BEQ CODE_2A93C6         ; $2A:93AC: F0 18
LDA #$03                ; $2A:93AE: A9 03
STA $7F0000,x           ; $2A:93B0: 9F 00 00 7F

CODE_2A93B4:
REP #$20                ; $2A:93B4: C2 20
TXA                     ; $2A:93B6: 8A
CLC                     ; $2A:93B7: 18
ADC #$0010              ; $2A:93B8: 69 10 00
TAX                     ; $2A:93BB: AA
SEP #$20                ; $2A:93BC: E2 20
DEC $D8                 ; $2A:93BE: C6 D8
DEC $D8                 ; $2A:93C0: C6 D8
BPL CODE_2A9396         ; $2A:93C2: 10 D2
BRA CODE_2A93D4         ; $2A:93C4: 80 0E

CODE_2A93C6:
LDA #$05                ; $2A:93C6: A9 05
STA $7F0000,x           ; $2A:93C8: 9F 00 00 7F
LDA #$06                ; $2A:93CC: A9 06
STA $7F0001,x           ; $2A:93CE: 9F 01 00 7F
BRA CODE_2A93B4         ; $2A:93D2: 80 E0

CODE_2A93D4:
SEP #$10                ; $2A:93D4: E2 10
RTS                     ; $2A:93D6: 60

CODE_2A93D7:
LDY #$00                ; $2A:93D7: A0 00
LDX $00                 ; $2A:93D9: A6 00

CODE_2A93DB:
LDA $7F0000,x           ; $2A:93DB: BF 00 00 7F
BNE CODE_2A93E9         ; $2A:93DF: D0 08
LDA.w DATA_2A93EF,y     ; $2A:93E1: B9 EF 93
STA $7F0000,x           ; $2A:93E4: 9F 00 00 7F
INY                     ; $2A:93E8: C8

CODE_2A93E9:
INX                     ; $2A:93E9: E8
DEC $D8                 ; $2A:93EA: C6 D8
BPL CODE_2A93DB         ; $2A:93EC: 10 ED
RTS                     ; $2A:93EE: 60

DATA_2A93EF:
db $08,$09,$0A,$0A,$0A,$0B,$0C,$08
db $08,$08,$0D,$0E,$0F,$08

CODE_2A93FD:
LDY #$00                ; $2A:93FD: A0 00
LDX $00                 ; $2A:93FF: A6 00
LDA $1EBF               ; $2A:9401: AD BF 1E
CMP #$24                ; $2A:9404: C9 24
BEQ CODE_2A9425         ; $2A:9406: F0 1D

CODE_2A9408:
LDA.w DATA_2A9441,y     ; $2A:9408: B9 41 94
STA $7F0000,x           ; $2A:940B: 9F 00 00 7F
LDA.w DATA_2A9444,y     ; $2A:940F: B9 44 94
STA $7F0010,x           ; $2A:9412: 9F 10 00 7F
LDA.w DATA_2A9447,y     ; $2A:9416: B9 47 94
STA $7F0020,x           ; $2A:9419: 9F 20 00 7F
INX                     ; $2A:941D: E8
INY                     ; $2A:941E: C8
DEC $D8                 ; $2A:941F: C6 D8
BPL CODE_2A9408         ; $2A:9421: 10 E5
BRA CODE_2A9440         ; $2A:9423: 80 1B

CODE_2A9425:
LDA.w DATA_2A944A,y     ; $2A:9425: B9 4A 94
STA $7F0000,x           ; $2A:9428: 9F 00 00 7F
LDA.w DATA_2A944D,y     ; $2A:942C: B9 4D 94
STA $7F0010,x           ; $2A:942F: 9F 10 00 7F
LDA.w DATA_2A9450,y     ; $2A:9433: B9 50 94
STA $7F0020,x           ; $2A:9436: 9F 20 00 7F
INX                     ; $2A:943A: E8
INY                     ; $2A:943B: C8
DEC $D8                 ; $2A:943C: C6 D8
BPL CODE_2A9425         ; $2A:943E: 10 E5

CODE_2A9440:
RTS                     ; $2A:9440: 60

DATA_2A9441:
db $12,$13,$14

DATA_2A9444:
db $16,$17,$14

DATA_2A9447:
db $18,$19,$1A

DATA_2A944A:
db $21,$22,$14

DATA_2A944D:
db $23,$24,$14

DATA_2A9450:
db $18,$19,$1A

CODE_2A9453:
LDX $00                 ; $2A:9453: A6 00

CODE_2A9455:
LDA #$11                ; $2A:9455: A9 11
STA $7F0000,X           ; $2A:9457: 9F 00 00 7F
TXA                     ; $2A:945B: 8A
CLC                     ; $2A:945C: 18
ADC #$10                ; $2A:945D: 69 10
TAX                     ; $2A:945F: AA
DEC $D8                 ; $2A:9460: C6 D8
BPL CODE_2A9455         ; $2A:9462: 10 F1
RTS                     ; $2A:9464: 60

CODE_2A9465:
LDX $00                 ; $2A:9465: A6 00
LDA $7F0000,x           ; $2A:9467: BF 00 00 7F
CMP #$11                ; $2A:946B: C9 11
BEQ CODE_2A9473         ; $2A:946D: F0 04
LDA #$1B                ; $2A:946F: A9 1B
BRA CODE_2A9475         ; $2A:9471: 80 02

CODE_2A9473:
LDA #$1D                ; $2A:9473: A9 1D

CODE_2A9475:
STA $7F0000,x           ; $2A:9475: 9F 00 00 7F
LDA #$1C                ; $2A:9479: A9 1C
STA $7F0001,x           ; $2A:947B: 9F 01 00 7F
RTS                     ; $2A:947F: 60

CODE_2A9480:
LDX $00                 ; $2A:9480: A6 00
LDY $D8                 ; $2A:9482: A4 D8
LDA.w DATA_2A948C,y     ; $2A:9484: B9 8C 94
STA $7F0000,x           ; $2A:9487: 9F 00 00 7F
RTS                     ; $2A:948B: 60

DATA_2A948C:
db $15,$1E

CODE_2A948E:
SEP #$10                ; $2A:948E: E2 10
LDX #$60                ; $2A:9490: A2 60
LDA #$3D                ; $2A:9492: A9 3D

CODE_2A9494:
JSR CODE_2A8D03         ; $2A:9494: 20 03 8D
INX                     ; $2A:9497: E8
CPX #$70                ; $2A:9498: E0 70
BNE CODE_2A9494         ; $2A:949A: D0 F8
LDA #$01                ; $2A:949C: A9 01

CODE_2A949E:
JSR CODE_2A8D03         ; $2A:949E: 20 03 8D
INX                     ; $2A:94A1: E8
CPX #$80                ; $2A:94A2: E0 80
BNE CODE_2A949E         ; $2A:94A4: D0 F8
LDA #$02                ; $2A:94A6: A9 02
STA $00                 ; $2A:94A8: 85 00
LDA #$03                ; $2A:94AA: A9 03
STA $01                 ; $2A:94AC: 85 01
LDA #$08                ; $2A:94AE: A9 08
STA $02                 ; $2A:94B0: 85 02
LDA #$04                ; $2A:94B2: A9 04
STA $03                 ; $2A:94B4: 85 03

CODE_2A94B6:
LDA $00                 ; $2A:94B6: A5 00
JSR CODE_2A8D03         ; $2A:94B8: 20 03 8D
INX                     ; $2A:94BB: E8
LDA $01                 ; $2A:94BC: A5 01
JSR CODE_2A8D03         ; $2A:94BE: 20 03 8D
INX                     ; $2A:94C1: E8
DEC $02                 ; $2A:94C2: C6 02
BNE CODE_2A94B6         ; $2A:94C4: D0 F0
LDA #$08                ; $2A:94C6: A9 08
STA $02                 ; $2A:94C8: 85 02
INC $00                 ; $2A:94CA: E6 00
INC $00                 ; $2A:94CC: E6 00
INC $01                 ; $2A:94CE: E6 01
INC $01                 ; $2A:94D0: E6 01
DEC $03                 ; $2A:94D2: C6 03
BNE CODE_2A94B6         ; $2A:94D4: D0 E0
LDA #$10                ; $2A:94D6: A9 10
STA $02                 ; $2A:94D8: 85 02
LDA #$0A                ; $2A:94DA: A9 0A

CODE_2A94DC:
JSR CODE_2A8D03         ; $2A:94DC: 20 03 8D
INX                     ; $2A:94DF: E8
DEC $02                 ; $2A:94E0: C6 02
BNE CODE_2A94DC         ; $2A:94E2: D0 F8
LDA #$04                ; $2A:94E4: A9 04
STA $04                 ; $2A:94E6: 85 04
LDA #$0B                ; $2A:94E8: A9 0B
STA $00                 ; $2A:94EA: 85 00
INC A                   ; $2A:94EC: 1A
STA $01                 ; $2A:94ED: 85 01
INC A                   ; $2A:94EF: 1A
STA $02                 ; $2A:94F0: 85 02
INC A                   ; $2A:94F2: 1A
STA $03                 ; $2A:94F3: 85 03
JSR CODE_2A95B9         ; $2A:94F5: 20 B9 95
LDA #$04                ; $2A:94F8: A9 04
STA $04                 ; $2A:94FA: 85 04
LDA #$0F                ; $2A:94FC: A9 0F
STA $00                 ; $2A:94FE: 85 00
INC A                   ; $2A:9500: 1A
STA $01                 ; $2A:9501: 85 01
INC A                   ; $2A:9503: 1A
STA $02                 ; $2A:9504: 85 02
INC A                   ; $2A:9506: 1A
STA $03                 ; $2A:9507: 85 03
JSR CODE_2A95B9         ; $2A:9509: 20 B9 95
LDA #$04                ; $2A:950C: A9 04
STA $04                 ; $2A:950E: 85 04
LDA #$13                ; $2A:9510: A9 13
STA $00                 ; $2A:9512: 85 00
LDA #$14                ; $2A:9514: A9 14
STA $01                 ; $2A:9516: 85 01
LDA #$19                ; $2A:9518: A9 19
STA $02                 ; $2A:951A: 85 02
LDA #$1A                ; $2A:951C: A9 1A
STA $03                 ; $2A:951E: 85 03
JSR CODE_2A95B9         ; $2A:9520: 20 B9 95
LDX #$70                ; $2A:9523: A2 70
LDA #$04                ; $2A:9525: A9 04
STA $04                 ; $2A:9527: 85 04
LDA #$2D                ; $2A:9529: A9 2D
STA $00                 ; $2A:952B: 85 00
LDA #$2E                ; $2A:952D: A9 2E
STA $01                 ; $2A:952F: 85 01
LDA #$33                ; $2A:9531: A9 33
STA $02                 ; $2A:9533: 85 02
LDA #$34                ; $2A:9535: A9 34
STA $03                 ; $2A:9537: 85 03
JSR CODE_2A975C         ; $2A:9539: 20 5C 97
LDA #$04                ; $2A:953C: A9 04
STA $04                 ; $2A:953E: 85 04
LDA #$35                ; $2A:9540: A9 35
STA $00                 ; $2A:9542: 85 00
INC A                   ; $2A:9544: 1A
STA $01                 ; $2A:9545: 85 01
INC A                   ; $2A:9547: 1A
STA $02                 ; $2A:9548: 85 02
INC A                   ; $2A:954A: 1A
STA $03                 ; $2A:954B: 85 03
JSR CODE_2A975C         ; $2A:954D: 20 5C 97
LDA #$04                ; $2A:9550: A9 04
STA $04                 ; $2A:9552: 85 04
LDA #$39                ; $2A:9554: A9 39
STA $00                 ; $2A:9556: 85 00
INC A                   ; $2A:9558: 1A
STA $01                 ; $2A:9559: 85 01
INC A                   ; $2A:955B: 1A
STA $02                 ; $2A:955C: 85 02
INC A                   ; $2A:955E: 1A
STA $03                 ; $2A:955F: 85 03
JSR CODE_2A975C         ; $2A:9561: 20 5C 97

CODE_2A9564:
LDA #$0A                ; $2A:9564: A9 0A
JSR CODE_2A8D25         ; $2A:9566: 20 25 8D
INX                     ; $2A:9569: E8
CPX #$B0                ; $2A:956A: E0 B0
BNE CODE_2A9564         ; $2A:956C: D0 F6

CODE_2A956E:
LDY #$00                ; $2A:956E: A0 00
LDA [$2B],y             ; $2A:9570: B7 2B
CMP #$FF                ; $2A:9572: C9 FF
BEQ CODE_2A95B7         ; $2A:9574: F0 41
JSR CODE_2A8E54         ; $2A:9576: 20 54 8E

CODE_2A9579:
STZ $02                 ; $2A:9579: 64 02

CODE_2A957B:
REP #$20                ; $2A:957B: C2 20
LDA $00                 ; $2A:957D: A5 00
STA $04                 ; $2A:957F: 85 04
SEP #$20                ; $2A:9581: E2 20
LDA #$09                ; $2A:9583: A9 09
STA $03                 ; $2A:9585: 85 03

CODE_2A9587:
LDX $02                 ; $2A:9587: A6 02
LDA.w DATA_2A95D6,x     ; $2A:9589: BD D6 95
REP #$10                ; $2A:958C: C2 10
LDX $04                 ; $2A:958E: A6 04
JSR CODE_2A8CD9         ; $2A:9590: 20 D9 8C
REP #$20                ; $2A:9593: C2 20
LDA $04                 ; $2A:9595: A5 04
CLC                     ; $2A:9597: 18
ADC #$0010              ; $2A:9598: 69 10 00
STA $04                 ; $2A:959B: 85 04
SEP #$30                ; $2A:959D: E2 30
INC $02                 ; $2A:959F: E6 02
DEC $03                 ; $2A:95A1: C6 03
BNE CODE_2A9587         ; $2A:95A3: D0 E2
INC $00                 ; $2A:95A5: E6 00
LDA $02                 ; $2A:95A7: A5 02
CMP #$24                ; $2A:95A9: C9 24
BNE CODE_2A957B         ; $2A:95AB: D0 CE
LDA $D8                 ; $2A:95AD: A5 D8
BEQ CODE_2A95B5         ; $2A:95AF: F0 04
DEC $D8                 ; $2A:95B1: C6 D8
BRA CODE_2A9579         ; $2A:95B3: 80 C4

CODE_2A95B5:
BRA CODE_2A956E         ; $2A:95B5: 80 B7

CODE_2A95B7:
PLB                     ; $2A:95B7: AB
RTL                     ; $2A:95B8: 6B

CODE_2A95B9:
LDA $00                 ; $2A:95B9: A5 00
JSR CODE_2A8D03         ; $2A:95BB: 20 03 8D
INX                     ; $2A:95BE: E8
LDA $01                 ; $2A:95BF: A5 01
JSR CODE_2A8D03         ; $2A:95C1: 20 03 8D
INX                     ; $2A:95C4: E8
LDA $02                 ; $2A:95C5: A5 02
JSR CODE_2A8D03         ; $2A:95C7: 20 03 8D
INX                     ; $2A:95CA: E8
LDA $03                 ; $2A:95CB: A5 03
JSR CODE_2A8D03         ; $2A:95CD: 20 03 8D
INX                     ; $2A:95D0: E8
DEC $04                 ; $2A:95D1: C6 04
BNE CODE_2A95B9         ; $2A:95D3: D0 E4
RTS                     ; $2A:95D5: 60

DATA_2A95D6:
db $15,$1B,$00,$00,$00,$00,$00,$29
db $2F,$16,$1C,$1F,$21,$23,$25,$27
db $2A,$30,$17,$1D,$20,$22,$24,$26
db $28,$2B,$31,$18,$1E,$00,$00,$00
db $00,$00,$2C,$32

CODE_2A95FA:
SEP #$10                ; $2A:95FA: E2 10
LDA #$3A                ; $2A:95FC: A9 3A
STA $00                 ; $2A:95FE: 85 00
LDA #$01                ; $2A:9600: A9 01
STA $01                 ; $2A:9602: 85 01
LDA #$08                ; $2A:9604: A9 08
STA $04                 ; $2A:9606: 85 04
LDX #$E0                ; $2A:9608: A2 E0
JSR CODE_2A973A         ; $2A:960A: 20 3A 97
LDA #$02                ; $2A:960D: A9 02
STA $00                 ; $2A:960F: 85 00
LDA #$03                ; $2A:9611: A9 03
STA $01                 ; $2A:9613: 85 01
LDA #$08                ; $2A:9615: A9 08
STA $04                 ; $2A:9617: 85 04
JSR CODE_2A973A         ; $2A:9619: 20 3A 97
LDA #$04                ; $2A:961C: A9 04
STA $00                 ; $2A:961E: 85 00
LDA #$05                ; $2A:9620: A9 05
STA $01                 ; $2A:9622: 85 01
LDA #$08                ; $2A:9624: A9 08
STA $04                 ; $2A:9626: 85 04
JSR CODE_2A974B         ; $2A:9628: 20 4B 97
LDA #$0B                ; $2A:962B: A9 0B
STA $00                 ; $2A:962D: 85 00
LDA #$0C                ; $2A:962F: A9 0C
STA $01                 ; $2A:9631: 85 01
LDA #$08                ; $2A:9633: A9 08
STA $04                 ; $2A:9635: 85 04
JSR CODE_2A974B         ; $2A:9637: 20 4B 97
LDA #$20                ; $2A:963A: A9 20
STA $04                 ; $2A:963C: 85 04

CODE_2A963E:
LDA #$13                ; $2A:963E: A9 13
JSR CODE_2A8D25         ; $2A:9640: 20 25 8D
INX                     ; $2A:9643: E8
DEC $04                 ; $2A:9644: C6 04
BNE CODE_2A963E         ; $2A:9646: D0 F6
LDX #$30                ; $2A:9648: A2 30
LDA #$10                ; $2A:964A: A9 10
STA $04                 ; $2A:964C: 85 04
LDA #$13                ; $2A:964E: A9 13

CODE_2A9650:
JSR CODE_2A8D25         ; $2A:9650: 20 25 8D
INX                     ; $2A:9653: E8
DEC $04                 ; $2A:9654: C6 04
BNE CODE_2A9650         ; $2A:9656: D0 F8
JSR CODE_2A96ED         ; $2A:9658: 20 ED 96
JSR CODE_2A96AD         ; $2A:965B: 20 AD 96
LDA $0350               ; $2A:965E: AD 50 03
CMP #$1A                ; $2A:9661: C9 1A
BNE CODE_2A96AB         ; $2A:9663: D0 46
LDA #$00                ; $2A:9665: A9 00
XBA                     ; $2A:9667: EB
INC $034F               ; $2A:9668: EE 4F 03
REP #$10                ; $2A:966B: C2 10
LDY #$0510              ; $2A:966D: A0 10 05
LDX #$05C0              ; $2A:9670: A2 C0 05
LDA #$CF                ; $2A:9673: A9 CF
MVN $7F,$7F             ; $2A:9675: 54 7F 7F
LDA #$00                ; $2A:9678: A9 00
XBA                     ; $2A:967A: EB
LDY #$06C0              ; $2A:967B: A0 C0 06
LDX #$0770              ; $2A:967E: A2 70 07
LDA #$CF                ; $2A:9681: A9 CF
MVN $7F,$7F             ; $2A:9683: 54 7F 7F
SEP #$10                ; $2A:9686: E2 10
LDX #$E0                ; $2A:9688: A2 E0
LDA #$13                ; $2A:968A: A9 13

CODE_2A968C:
STA $7F05E0,x           ; $2A:968C: 9F E0 05 7F
STA $7F0790,x           ; $2A:9690: 9F 90 07 7F
DEX                     ; $2A:9694: CA
BNE CODE_2A968C         ; $2A:9695: D0 F5
LDX #$70                ; $2A:9697: A2 70
JSR CODE_2A96ED         ; $2A:9699: 20 ED 96
PHB                     ; $2A:969C: 8B
LDA #$2A                ; $2A:969D: A9 2A
PHA                     ; $2A:969F: 48
PLB                     ; $2A:96A0: AB
REP #$20                ; $2A:96A1: C2 20
INC $2B                 ; $2A:96A3: E6 2B
SEP #$20                ; $2A:96A5: E2 20
JSR CODE_2A96AD         ; $2A:96A7: 20 AD 96
PLB                     ; $2A:96AA: AB

CODE_2A96AB:
PLB                     ; $2A:96AB: AB
RTL                     ; $2A:96AC: 6B

CODE_2A96AD:
LDY #$00                ; $2A:96AD: A0 00
LDA [$2B],y             ; $2A:96AF: B7 2B
CMP #$FF                ; $2A:96B1: C9 FF
BEQ CODE_2A96EC         ; $2A:96B3: F0 37
JSR CODE_2A8E54         ; $2A:96B5: 20 54 8E
LDA #$2A                ; $2A:96B8: A9 2A
STA $08                 ; $2A:96BA: 85 08
STA $0B                 ; $2A:96BC: 85 0B
STA $0E                 ; $2A:96BE: 85 0E
REP #$30                ; $2A:96C0: C2 30
LDX $D8                 ; $2A:96C2: A6 D8
LDA.w DATA_2A9796,x     ; $2A:96C4: BD 96 97
STA $06                 ; $2A:96C7: 85 06
LDA.w DATA_2A97A2,x     ; $2A:96C9: BD A2 97
STA $09                 ; $2A:96CC: 85 09
LDA.w DATA_2A97AE,x     ; $2A:96CE: BD AE 97
STA $0C                 ; $2A:96D1: 85 0C
STZ $04                 ; $2A:96D3: 64 04
SEP #$20                ; $2A:96D5: E2 20
LDA.w DATA_2A978A,x     ; $2A:96D7: BD 8A 97
STA $0F                 ; $2A:96DA: 85 0F
LDX $00                 ; $2A:96DC: A6 00
LDY #$0000              ; $2A:96DE: A0 00 00
LDA [$0C]               ; $2A:96E1: A7 0C
STA $02                 ; $2A:96E3: 85 02
JSR CODE_2A8FA7         ; $2A:96E5: 20 A7 8F
SEP #$10                ; $2A:96E8: E2 10
BRA CODE_2A96AD         ; $2A:96EA: 80 C1

CODE_2A96EC:
RTS                     ; $2A:96EC: 60

CODE_2A96ED:
LDA #$18                ; $2A:96ED: A9 18
STA $00                 ; $2A:96EF: 85 00
LDA #$19                ; $2A:96F1: A9 19
STA $01                 ; $2A:96F3: 85 01
LDA #$1E                ; $2A:96F5: A9 1E
STA $02                 ; $2A:96F7: 85 02
LDA #$1B                ; $2A:96F9: A9 1B
STA $03                 ; $2A:96FB: 85 03
LDA #$04                ; $2A:96FD: A9 04
STA $04                 ; $2A:96FF: 85 04
JSR CODE_2A975C         ; $2A:9701: 20 5C 97
LDA #$21                ; $2A:9704: A9 21
STA $00                 ; $2A:9706: 85 00
LDA #$22                ; $2A:9708: A9 22
STA $01                 ; $2A:970A: 85 01
LDA #$26                ; $2A:970C: A9 26
STA $02                 ; $2A:970E: 85 02
LDA #$24                ; $2A:9710: A9 24
STA $03                 ; $2A:9712: 85 03
LDA #$04                ; $2A:9714: A9 04
STA $04                 ; $2A:9716: 85 04
JSR CODE_2A975C         ; $2A:9718: 20 5C 97
LDA #$28                ; $2A:971B: A9 28
STA $00                 ; $2A:971D: 85 00
LDA #$29                ; $2A:971F: A9 29
STA $01                 ; $2A:9721: 85 01
LDA #$08                ; $2A:9723: A9 08
STA $04                 ; $2A:9725: 85 04
JSR CODE_2A9779         ; $2A:9727: 20 79 97
LDA #$38                ; $2A:972A: A9 38
STA $00                 ; $2A:972C: 85 00
LDA #$39                ; $2A:972E: A9 39
STA $01                 ; $2A:9730: 85 01
LDA #$08                ; $2A:9732: A9 08
STA $04                 ; $2A:9734: 85 04
JSR CODE_2A9779         ; $2A:9736: 20 79 97
RTS                     ; $2A:9739: 60

CODE_2A973A:
LDA $00                 ; $2A:973A: A5 00
JSR CODE_2A8D03         ; $2A:973C: 20 03 8D
INX                     ; $2A:973F: E8
LDA $01                 ; $2A:9740: A5 01
JSR CODE_2A8D03         ; $2A:9742: 20 03 8D
INX                     ; $2A:9745: E8
DEC $04                 ; $2A:9746: C6 04
BNE CODE_2A973A         ; $2A:9748: D0 F0
RTS                     ; $2A:974A: 60

CODE_2A974B:
LDA $00                 ; $2A:974B: A5 00
JSR CODE_2A8D25         ; $2A:974D: 20 25 8D
INX                     ; $2A:9750: E8
LDA $01                 ; $2A:9751: A5 01
JSR CODE_2A8D25         ; $2A:9753: 20 25 8D
INX                     ; $2A:9756: E8
DEC $04                 ; $2A:9757: C6 04
BNE CODE_2A974B         ; $2A:9759: D0 F0
RTS                     ; $2A:975B: 60

CODE_2A975C:
LDA $00                 ; $2A:975C: A5 00
JSR CODE_2A8D25         ; $2A:975E: 20 25 8D
INX                     ; $2A:9761: E8
LDA $01                 ; $2A:9762: A5 01
JSR CODE_2A8D25         ; $2A:9764: 20 25 8D
INX                     ; $2A:9767: E8
LDA $02                 ; $2A:9768: A5 02
JSR CODE_2A8D25         ; $2A:976A: 20 25 8D
INX                     ; $2A:976D: E8
LDA $03                 ; $2A:976E: A5 03
JSR CODE_2A8D25         ; $2A:9770: 20 25 8D
INX                     ; $2A:9773: E8
DEC $04                 ; $2A:9774: C6 04
BNE CODE_2A975C         ; $2A:9776: D0 E4
RTS                     ; $2A:9778: 60

CODE_2A9779:
LDA $00                 ; $2A:9779: A5 00
JSR CODE_2A8D25         ; $2A:977B: 20 25 8D
INX                     ; $2A:977E: E8
LDA $01                 ; $2A:977F: A5 01
JSR CODE_2A8D25         ; $2A:9781: 20 25 8D
INX                     ; $2A:9784: E8
DEC $04                 ; $2A:9785: C6 04
BNE CODE_2A9779         ; $2A:9787: D0 F0
RTS                     ; $2A:9789: 60

DATA_2A978A:
db $06,$00,$04,$00,$06,$00,$06,$00
db $09,$00,$06,$00

DATA_2A9796:
db $BA,$97,$D4,$97,$E6,$97,$FF,$97
db $1D,$98,$33,$98

DATA_2A97A2:
db $52,$98,$5C,$98,$62,$98,$6C,$98
db $76,$98,$86,$98

DATA_2A97AE:
db $90,$98,$96,$98,$9A,$98,$A0,$98
db $A6,$98,$AF,$98,$06,$07,$08,$0D
db $0E,$0F,$10,$0D,$0E,$14,$15,$09
db $16,$16,$1A,$15,$11,$1C,$1C,$23
db $15,$2A,$2B,$2C,$2D,$2E,$09,$16
db $0A,$11,$1C,$12,$1D,$10,$11,$1C
db $12,$25,$15,$2F,$2C,$30,$31,$32
db $09,$16,$0A,$11,$1C,$12,$11,$1C
db $12,$17,$06,$07,$1F,$12,$20,$0D
db $0E,$27,$12,$20,$33,$34,$35,$36
db $37,$09,$16,$0A,$11,$1C,$12,$06
db $07,$07,$1F,$12,$17,$0D,$0E,$0E
db $27,$12,$20,$0D,$0E,$0E,$27,$12
db $20,$33,$34,$34,$35,$36,$37,$09
db $16,$16,$11,$1C,$1C,$11,$1C,$1C
db $2A,$2B,$2C,$0F,$10,$1A,$15,$23
db $15,$23,$15,$2D,$2E,$09,$16,$0A
db $11,$1C,$12,$11,$1C,$12,$17,$06
db $07,$07,$07,$1F,$12,$20,$0D,$0E
db $0E,$0E,$27,$12,$20,$33,$34,$34
db $34,$35,$36,$37,$10,$00,$10,$00
db $0F,$00,$10,$00,$10,$00,$10,$00
db $10,$00,$10,$00,$10,$00,$10,$00
db $0F,$00,$10,$00,$10,$00,$10,$00
db $0E,$00,$10,$00,$10,$00,$10,$00
db $10,$00,$10,$00,$10,$00,$63,$01
db $10,$00,$10,$00,$10,$00,$10,$00
db $10,$00,$10,$00,$0D,$00,$10,$00
db $10,$00,$03,$04,$04,$05,$05,$05
db $03,$05,$05,$05,$03,$03,$04,$05
db $05,$05,$03,$03,$06,$06,$06,$06
db $03,$03,$03,$03,$02,$02,$02,$02
db $02,$03,$03,$04,$07,$07,$07

CODE_2A98B5:
SEP #$10                ; $2A:98B5: E2 10
LDX #$10                ; $2A:98B7: A2 10
LDA #$01                ; $2A:98B9: A9 01
STA $00                 ; $2A:98BB: 85 00
JSR CODE_2A9924         ; $2A:98BD: 20 24 99
LDX #$A0                ; $2A:98C0: A2 A0
LDA #$14                ; $2A:98C2: A9 14
STA $00                 ; $2A:98C4: 85 00
JSR CODE_2A9924         ; $2A:98C6: 20 24 99

CODE_2A98C9:
INX                     ; $2A:98C9: E8
LDA #$18                ; $2A:98CA: A9 18
JSR CODE_2A8D03         ; $2A:98CC: 20 03 8D
INX                     ; $2A:98CF: E8
TXA                     ; $2A:98D0: 8A
AND #$0F                ; $2A:98D1: 29 0F
BNE CODE_2A98C9         ; $2A:98D3: D0 F4

CODE_2A98D5:
LDA #$1C                ; $2A:98D5: A9 1C
JSR CODE_2A8D03         ; $2A:98D7: 20 03 8D
INX                     ; $2A:98DA: E8
LDA #$1D                ; $2A:98DB: A9 1D
JSR CODE_2A8D03         ; $2A:98DD: 20 03 8D
INX                     ; $2A:98E0: E8
TXA                     ; $2A:98E1: 8A
AND #$0F                ; $2A:98E2: 29 0F
BNE CODE_2A98D5         ; $2A:98E4: D0 EF
LDA #$21                ; $2A:98E6: A9 21
STA $00                 ; $2A:98E8: 85 00
JSR CODE_2A9924         ; $2A:98EA: 20 24 99
LDA #$22                ; $2A:98ED: A9 22
STA $00                 ; $2A:98EF: 85 00
JSR CODE_2A9924         ; $2A:98F1: 20 24 99
LDA #$29                ; $2A:98F4: A9 29
STA $00                 ; $2A:98F6: 85 00
JSR CODE_2A9924         ; $2A:98F8: 20 24 99
LDA #$2A                ; $2A:98FB: A9 2A
STA $00                 ; $2A:98FD: 85 00

CODE_2A98FF:
JSR CODE_2A9930         ; $2A:98FF: 20 30 99
CPX #$B0                ; $2A:9902: E0 B0
BNE CODE_2A98FF         ; $2A:9904: D0 F9

CODE_2A9906:
LDY #$00                ; $2A:9906: A0 00
LDA [$2B],y             ; $2A:9908: B7 2B
CMP #$FF                ; $2A:990A: C9 FF
BEQ CODE_2A9916         ; $2A:990C: F0 08
JSR CODE_2A8E54         ; $2A:990E: 20 54 8E
JSR (PNTR_2A9918,x)     ; $2A:9911: FC 18 99
BRA CODE_2A9906         ; $2A:9914: 80 F0

CODE_2A9916:
PLB                     ; $2A:9916: AB
RTL                     ; $2A:9917: 6B

PNTR_2A9918:
dw CODE_2A994C
dw CODE_2A9988
dw CODE_2A99BB
dw CODE_2A99F7
dw CODE_2A9A23
dw CODE_2A9A3E

CODE_2A9924:
LDA $00                 ; $2A:9924: A5 00
JSR CODE_2A8D03         ; $2A:9926: 20 03 8D
INX                     ; $2A:9929: E8
TXA                     ; $2A:992A: 8A
AND #$0F                ; $2A:992B: 29 0F
BNE CODE_2A9924         ; $2A:992D: D0 F5
RTS                     ; $2A:992F: 60

CODE_2A9930:
LDA $00                 ; $2A:9930: A5 00
JSR CODE_2A8D25         ; $2A:9932: 20 25 8D
INX                     ; $2A:9935: E8
TXA                     ; $2A:9936: 8A
AND #$0F                ; $2A:9937: 29 0F
BNE CODE_2A9930         ; $2A:9939: D0 F5
RTS                     ; $2A:993B: 60
db $34,$35,$34,$36,$34,$36,$34,$35
db $34,$36,$37,$34,$38,$35,$37,$37

CODE_2A994C:
REP #$10                ; $2A:994C: C2 10

CODE_2A994E:
LDX $00                 ; $2A:994E: A6 00
LDA $7F0000,x           ; $2A:9950: BF 00 00 7F
CMP #$14                ; $2A:9954: C9 14
BEQ CODE_2A996B         ; $2A:9956: F0 13
LDA #$02                ; $2A:9958: A9 02
JSR CODE_2A8CD9         ; $2A:995A: 20 D9 8C
REP #$20                ; $2A:995D: C2 20
LDA $00                 ; $2A:995F: A5 00
CLC                     ; $2A:9961: 18
ADC #$0010              ; $2A:9962: 69 10 00
STA $00                 ; $2A:9965: 85 00
SEP #$20                ; $2A:9967: E2 20
BRA CODE_2A994E         ; $2A:9969: 80 E3

CODE_2A996B:
LDA #$17                ; $2A:996B: A9 17
JSR CODE_2A8CD9         ; $2A:996D: 20 D9 8C
REP #$20                ; $2A:9970: C2 20
LDA $00                 ; $2A:9972: A5 00
CLC                     ; $2A:9974: 18
ADC #$0010              ; $2A:9975: 69 10 00
TAX                     ; $2A:9978: AA
SEP #$20                ; $2A:9979: E2 20
LDA #$1B                ; $2A:997B: A9 1B
JSR CODE_2A8CD9         ; $2A:997D: 20 D9 8C
LDA #$20                ; $2A:9980: A9 20
JSR CODE_2A8CEE         ; $2A:9982: 20 EE 8C
SEP #$10                ; $2A:9985: E2 10
RTS                     ; $2A:9987: 60

CODE_2A9988:
REP #$10                ; $2A:9988: C2 10
LDY #$0000              ; $2A:998A: A0 00 00

CODE_2A998D:
LDX $00                 ; $2A:998D: A6 00

CODE_2A998F:
LDA.w DATA_2A99B1,y     ; $2A:998F: B9 B1 99
JSR CODE_2A8CD9         ; $2A:9992: 20 D9 8C
INY                     ; $2A:9995: C8
REP #$20                ; $2A:9996: C2 20
TXA                     ; $2A:9998: 8A
CLC                     ; $2A:9999: 18
ADC #$0010              ; $2A:999A: 69 10 00
TAX                     ; $2A:999D: AA
SEP #$20                ; $2A:999E: E2 20
CPY #$000A              ; $2A:99A0: C0 0A 00
BEQ CODE_2A99AE         ; $2A:99A3: F0 09
CPY #$0005              ; $2A:99A5: C0 05 00
BNE CODE_2A998F         ; $2A:99A8: D0 E5
INC $00                 ; $2A:99AA: E6 00
BRA CODE_2A998D         ; $2A:99AC: 80 DF

CODE_2A99AE:
SEP #$10                ; $2A:99AE: E2 10
RTS                     ; $2A:99B0: 60

DATA_2A99B1:
db $03,$08,$0D,$10,$12,$04,$09,$0E
db $11,$13

CODE_2A99BB:
REP #$10                ; $2A:99BB: C2 10
LDX $00                 ; $2A:99BD: A6 00
LDA #$05                ; $2A:99BF: A9 05
JSR CODE_2A99E9         ; $2A:99C1: 20 E9 99
REP #$20                ; $2A:99C4: C2 20
LDA $00                 ; $2A:99C6: A5 00
CLC                     ; $2A:99C8: 18
ADC #$0010              ; $2A:99C9: 69 10 00
STA $00                 ; $2A:99CC: 85 00
TAX                     ; $2A:99CE: AA
SEP #$20                ; $2A:99CF: E2 20
LDA #$0A                ; $2A:99D1: A9 0A
JSR CODE_2A99E9         ; $2A:99D3: 20 E9 99
REP #$20                ; $2A:99D6: C2 20
LDA $00                 ; $2A:99D8: A5 00
CLC                     ; $2A:99DA: 18
ADC #$0011              ; $2A:99DB: 69 11 00
TAX                     ; $2A:99DE: AA
SEP #$20                ; $2A:99DF: E2 20
LDA #$0F                ; $2A:99E1: A9 0F
JSR CODE_2A8CD9         ; $2A:99E3: 20 D9 8C
SEP #$10                ; $2A:99E6: E2 10
RTS                     ; $2A:99E8: 60

CODE_2A99E9:
JSR CODE_2A8CD9         ; $2A:99E9: 20 D9 8C
INX                     ; $2A:99EC: E8
INC A                   ; $2A:99ED: 1A
JSR CODE_2A8CD9         ; $2A:99EE: 20 D9 8C
INX                     ; $2A:99F1: E8
INC A                   ; $2A:99F2: 1A
JSR CODE_2A8CD9         ; $2A:99F3: 20 D9 8C
RTS                     ; $2A:99F6: 60

CODE_2A99F7:
REP #$10                ; $2A:99F7: C2 10
LDX $00                 ; $2A:99F9: A6 00
LDA #$15                ; $2A:99FB: A9 15
JSR CODE_2A9A0D         ; $2A:99FD: 20 0D 9A
LDA #$19                ; $2A:9A00: A9 19
JSR CODE_2A9A0D         ; $2A:9A02: 20 0D 9A
LDA #$1E                ; $2A:9A05: A9 1E
JSR CODE_2A9A0D         ; $2A:9A07: 20 0D 9A
SEP #$10                ; $2A:9A0A: E2 10
RTS                     ; $2A:9A0C: 60

CODE_2A9A0D:
JSR CODE_2A8CD9         ; $2A:9A0D: 20 D9 8C
INX                     ; $2A:9A10: E8
INC A                   ; $2A:9A11: 1A
JSR CODE_2A8CD9         ; $2A:9A12: 20 D9 8C
REP #$20                ; $2A:9A15: C2 20
LDA $00                 ; $2A:9A17: A5 00
CLC                     ; $2A:9A19: 18
ADC #$0010              ; $2A:9A1A: 69 10 00
STA $00                 ; $2A:9A1D: 85 00
TAX                     ; $2A:9A1F: AA
SEP #$20                ; $2A:9A20: E2 20
RTS                     ; $2A:9A22: 60

CODE_2A9A23:
REP #$10                ; $2A:9A23: C2 10
LDX $00                 ; $2A:9A25: A6 00
LDY #$0000              ; $2A:9A27: A0 00 00

CODE_2A9A2A:
LDA.w DATA_2A9A39,y     ; $2A:9A2A: B9 39 9A
JSR CODE_2A8CD9         ; $2A:9A2D: 20 D9 8C
INX                     ; $2A:9A30: E8
INY                     ; $2A:9A31: C8
CPY #$0005              ; $2A:9A32: C0 05 00
BNE CODE_2A9A2A         ; $2A:9A35: D0 F3
BRA CODE_2A9A4D         ; $2A:9A37: 80 14

DATA_2A9A39:
db $23,$24,$28,$26,$27

CODE_2A9A3E:
REP #$10                ; $2A:9A3E: C2 10
LDX $00                 ; $2A:9A40: A6 00
LDA #$23                ; $2A:9A42: A9 23

CODE_2A9A44:
JSR CODE_2A8CD9         ; $2A:9A44: 20 D9 8C
INX                     ; $2A:9A47: E8
INC A                   ; $2A:9A48: 1A
CMP #$28                ; $2A:9A49: C9 28
BNE CODE_2A9A44         ; $2A:9A4B: D0 F7

CODE_2A9A4D:
LDY #$0000              ; $2A:9A4D: A0 00 00
REP #$20                ; $2A:9A50: C2 20
LDA $00                 ; $2A:9A52: A5 00
CLC                     ; $2A:9A54: 18
ADC #$0011              ; $2A:9A55: 69 11 00
TAX                     ; $2A:9A58: AA
SEP #$20                ; $2A:9A59: E2 20

CODE_2A9A5B:
LDA.w DATA_2A9AAE,y     ; $2A:9A5B: B9 AE 9A
JSR CODE_2A8CD9         ; $2A:9A5E: 20 D9 8C
LDA.w DATA_2A9AB1,y     ; $2A:9A61: B9 B1 9A
JSR CODE_2A8CEE         ; $2A:9A64: 20 EE 8C
INX                     ; $2A:9A67: E8
INY                     ; $2A:9A68: C8
CPY #$0003              ; $2A:9A69: C0 03 00
BNE CODE_2A9A5B         ; $2A:9A6C: D0 ED
REP #$20                ; $2A:9A6E: C2 20
LDA $00                 ; $2A:9A70: A5 00
CLC                     ; $2A:9A72: 18
ADC #$0032              ; $2A:9A73: 69 32 00
TAX                     ; $2A:9A76: AA
SEP #$20                ; $2A:9A77: E2 20

CODE_2A9A79:
LDA $7F0000,x           ; $2A:9A79: BF 00 00 7F
CMP #$2A                ; $2A:9A7D: C9 2A
BNE CODE_2A9A92         ; $2A:9A7F: D0 11
LDA #$30                ; $2A:9A81: A9 30
JSR CODE_2A8CD9         ; $2A:9A83: 20 D9 8C
REP #$20                ; $2A:9A86: C2 20
TXA                     ; $2A:9A88: 8A
CLC                     ; $2A:9A89: 18
ADC #$0010              ; $2A:9A8A: 69 10 00
TAX                     ; $2A:9A8D: AA
SEP #$20                ; $2A:9A8E: E2 20
BRA CODE_2A9A79         ; $2A:9A90: 80 E7

CODE_2A9A92:
REP #$20                ; $2A:9A92: C2 20
TXA                     ; $2A:9A94: 8A
SEC                     ; $2A:9A95: 38
SBC #$0011              ; $2A:9A96: E9 11 00
TAX                     ; $2A:9A99: AA
SEP #$20                ; $2A:9A9A: E2 20
LDA #$31                ; $2A:9A9C: A9 31
JSR CODE_2A8CD9         ; $2A:9A9E: 20 D9 8C
INC A                   ; $2A:9AA1: 1A
INX                     ; $2A:9AA2: E8
JSR CODE_2A8CD9         ; $2A:9AA3: 20 D9 8C
INC A                   ; $2A:9AA6: 1A
INX                     ; $2A:9AA7: E8
JSR CODE_2A8CD9         ; $2A:9AA8: 20 D9 8C
SEP #$10                ; $2A:9AAB: E2 10
RTS                     ; $2A:9AAD: 60

DATA_2A9AAE:
db $2B,$28,$2C

DATA_2A9AB1:
db $2D,$2E,$2F

CODE_2A9AB4:
SEP #$10                ; $2A:9AB4: E2 10
LDA $0727               ; $2A:9AB6: AD 27 07
CMP #$07                ; $2A:9AB9: C9 07
BEQ CODE_2A9AC2         ; $2A:9ABB: F0 05
LDA #$01                ; $2A:9ABD: A9 01
STA $02D9               ; $2A:9ABF: 8D D9 02

CODE_2A9AC2:
LDX #$10                ; $2A:9AC2: A2 10
LDA #$01                ; $2A:9AC4: A9 01
STA $00                 ; $2A:9AC6: 85 00
JSR CODE_2A9930         ; $2A:9AC8: 20 30 99
LDA #$05                ; $2A:9ACB: A9 05
STA $00                 ; $2A:9ACD: 85 00
JSR CODE_2A9930         ; $2A:9ACF: 20 30 99
LDA #$09                ; $2A:9AD2: A9 09
STA $00                 ; $2A:9AD4: 85 00
JSR CODE_2A9930         ; $2A:9AD6: 20 30 99
JSR CODE_2A9930         ; $2A:9AD9: 20 30 99
JSR CODE_2A9930         ; $2A:9ADC: 20 30 99
LDA #$11                ; $2A:9ADF: A9 11
STA $00                 ; $2A:9AE1: 85 00
JSR CODE_2A9930         ; $2A:9AE3: 20 30 99
LDA #$19                ; $2A:9AE6: A9 19
STA $00                 ; $2A:9AE8: 85 00
JSR CODE_2A9930         ; $2A:9AEA: 20 30 99
LDA #$22                ; $2A:9AED: A9 22
STA $00                 ; $2A:9AEF: 85 00
JSR CODE_2A9930         ; $2A:9AF1: 20 30 99

CODE_2A9AF4:
LDY #$00                ; $2A:9AF4: A0 00
LDA [$2B],y             ; $2A:9AF6: B7 2B
CMP #$FF                ; $2A:9AF8: C9 FF
BEQ CODE_2A9B04         ; $2A:9AFA: F0 08
JSR CODE_2A8E54         ; $2A:9AFC: 20 54 8E
JSR (PNTR_2A9B06,x)     ; $2A:9AFF: FC 06 9B
BRA CODE_2A9AF4         ; $2A:9B02: 80 F0

CODE_2A9B04:
PLB                     ; $2A:9B04: AB
RTL                     ; $2A:9B05: 6B

PNTR_2A9B06:
dw CODE_2A9B0C
dw CODE_2A9B6A
dw CODE_2A9B86

CODE_2A9B0C:
LDX $00                 ; $2A:9B0C: A6 00
STX $01                 ; $2A:9B0E: 86 01
LDA #$03                ; $2A:9B10: A9 03
STA $D8                 ; $2A:9B12: 85 D8
LDA #$02                ; $2A:9B14: A9 02
JSR CODE_2A9B58         ; $2A:9B16: 20 58 9B
LDA #$03                ; $2A:9B19: A9 03
STA $D8                 ; $2A:9B1B: 85 D8
LDA #$06                ; $2A:9B1D: A9 06
JSR CODE_2A9B58         ; $2A:9B1F: 20 58 9B
LDA #$03                ; $2A:9B22: A9 03
STA $D8                 ; $2A:9B24: 85 D8
LDA #$0A                ; $2A:9B26: A9 0A
JSR CODE_2A9B58         ; $2A:9B28: 20 58 9B
STZ $D8                 ; $2A:9B2B: 64 D8

CODE_2A9B2D:
LDA #$0D                ; $2A:9B2D: A9 0D
JSR CODE_2A8D25         ; $2A:9B2F: 20 25 8D
INX                     ; $2A:9B32: E8
LDA #$0B                ; $2A:9B33: A9 0B
JSR CODE_2A8D25         ; $2A:9B35: 20 25 8D
INX                     ; $2A:9B38: E8
LDA #$0E                ; $2A:9B39: A9 0E
JSR CODE_2A8D25         ; $2A:9B3B: 20 25 8D
LDA $00                 ; $2A:9B3E: A5 00
CLC                     ; $2A:9B40: 18
ADC #$10                ; $2A:9B41: 69 10
STA $00                 ; $2A:9B43: 85 00
TAX                     ; $2A:9B45: AA
LDA $D8                 ; $2A:9B46: A5 D8
BNE CODE_2A9B4E         ; $2A:9B48: D0 04
INC $D8                 ; $2A:9B4A: E6 D8
BRA CODE_2A9B2D         ; $2A:9B4C: 80 DF

CODE_2A9B4E:
LDA #$03                ; $2A:9B4E: A9 03
STA $D8                 ; $2A:9B50: 85 D8
LDA #$12                ; $2A:9B52: A9 12
JSR CODE_2A9B58         ; $2A:9B54: 20 58 9B
RTS                     ; $2A:9B57: 60

CODE_2A9B58:
JSR CODE_2A8D25         ; $2A:9B58: 20 25 8D
INC A                   ; $2A:9B5B: 1A
INX                     ; $2A:9B5C: E8
DEC $D8                 ; $2A:9B5D: C6 D8
BNE CODE_2A9B58         ; $2A:9B5F: D0 F7
LDA $00                 ; $2A:9B61: A5 00
CLC                     ; $2A:9B63: 18
ADC #$10                ; $2A:9B64: 69 10
STA $00                 ; $2A:9B66: 85 00
TAX                     ; $2A:9B68: AA
RTS                     ; $2A:9B69: 60

CODE_2A9B6A:
REP #$10                ; $2A:9B6A: C2 10
LDX $00                 ; $2A:9B6C: A6 00
LDA #$18                ; $2A:9B6E: A9 18
JSR CODE_2A8CD9         ; $2A:9B70: 20 D9 8C
LDA #$21                ; $2A:9B73: A9 21
JSR CODE_2A8CEE         ; $2A:9B75: 20 EE 8C
INX                     ; $2A:9B78: E8
LDA #$18                ; $2A:9B79: A9 18
JSR CODE_2A8CD9         ; $2A:9B7B: 20 D9 8C
LDA #$21                ; $2A:9B7E: A9 21
JSR CODE_2A8CEE         ; $2A:9B80: 20 EE 8C
SEP #$10                ; $2A:9B83: E2 10
RTS                     ; $2A:9B85: 60

CODE_2A9B86:
REP #$10                ; $2A:9B86: C2 10
LDY #$0000              ; $2A:9B88: A0 00 00

CODE_2A9B8B:
LDX $00                 ; $2A:9B8B: A6 00

CODE_2A9B8D:
LDA.w DATA_2A9BAA,y     ; $2A:9B8D: B9 AA 9B
JSR CODE_2A8CD9         ; $2A:9B90: 20 D9 8C
INY                     ; $2A:9B93: C8
INX                     ; $2A:9B94: E8
TXA                     ; $2A:9B95: 8A
AND #$0F                ; $2A:9B96: 29 0F
CMP #$09                ; $2A:9B98: C9 09
BNE CODE_2A9B8D         ; $2A:9B9A: D0 F1
LDA $00                 ; $2A:9B9C: A5 00
CLC                     ; $2A:9B9E: 18
ADC #$10                ; $2A:9B9F: 69 10
STA $00                 ; $2A:9BA1: 85 00
CMP #$40                ; $2A:9BA3: C9 40
BNE CODE_2A9B8B         ; $2A:9BA5: D0 E4
SEP #$10                ; $2A:9BA7: E2 10
RTS                     ; $2A:9BA9: 60

DATA_2A9BAA:
db $0F,$09,$09,$09,$0D,$0B,$0E,$09
db $10,$15,$16,$16,$09,$0D,$0B,$0E
db $09,$17,$1A,$1B,$1B,$1C,$1D,$1E
db $1F,$1C,$20

CODE_2A9BC5:
SEP #$10                ; $2A:9BC5: E2 10
LDX #$C0                ; $2A:9BC7: A2 C0
LDA #$30                ; $2A:9BC9: A9 30
STA $00                 ; $2A:9BCB: 85 00
JSR CODE_2A9924         ; $2A:9BCD: 20 24 99
LDA #$01                ; $2A:9BD0: A9 01
STA $00                 ; $2A:9BD2: 85 00

CODE_2A9BD4:
JSR CODE_2A9924         ; $2A:9BD4: 20 24 99
INC $00                 ; $2A:9BD7: E6 00
LDA $00                 ; $2A:9BD9: A5 00
AND #$03                ; $2A:9BDB: 29 03
BNE CODE_2A9BD4         ; $2A:9BDD: D0 F5
JSR CODE_2A9930         ; $2A:9BDF: 20 30 99
JSR CODE_2A9930         ; $2A:9BE2: 20 30 99
LDX #$70                ; $2A:9BE5: A2 70
LDA #$2F                ; $2A:9BE7: A9 2F
STA $00                 ; $2A:9BE9: 85 00
JSR CODE_2A9930         ; $2A:9BEB: 20 30 99

CODE_2A9BEE:
LDY #$00                ; $2A:9BEE: A0 00
LDA [$2B],y             ; $2A:9BF0: B7 2B
CMP #$FF                ; $2A:9BF2: C9 FF
BEQ CODE_2A9BFE         ; $2A:9BF4: F0 08
JSR CODE_2A8E54         ; $2A:9BF6: 20 54 8E
JSR (PNTR_2A9C00,x)     ; $2A:9BF9: FC 00 9C
BRA CODE_2A9BEE         ; $2A:9BFC: 80 F0

CODE_2A9BFE:
PLB                     ; $2A:9BFE: AB
RTL                     ; $2A:9BFF: 6B

PNTR_2A9C00:
dw CODE_2A9C06
dw CODE_2A9C14
dw CODE_2A9C22

CODE_2A9C06:
REP #$30                ; $2A:9C06: C2 30
LDA #$9C59              ; $2A:9C08: A9 59 9C
STA $02                 ; $2A:9C0B: 85 02
LDA #$0007              ; $2A:9C0D: A9 07 00
STA $05                 ; $2A:9C10: 85 05
BRA CODE_2A9C2E         ; $2A:9C12: 80 1A

CODE_2A9C14:
REP #$30                ; $2A:9C14: C2 30
LDA #$9C75              ; $2A:9C16: A9 75 9C
STA $02                 ; $2A:9C19: 85 02
LDA #$0005              ; $2A:9C1B: A9 05 00
STA $05                 ; $2A:9C1E: 85 05
BRA CODE_2A9C2E         ; $2A:9C20: 80 0C

CODE_2A9C22:
REP #$30                ; $2A:9C22: C2 30
LDA #$9C89              ; $2A:9C24: A9 89 9C
STA $02                 ; $2A:9C27: 85 02
LDA #$0005              ; $2A:9C29: A9 05 00
STA $05                 ; $2A:9C2C: 85 05

CODE_2A9C2E:
SEP #$20                ; $2A:9C2E: E2 20

CODE_2A9C30:
LDA #$04                ; $2A:9C30: A9 04
STA $04                 ; $2A:9C32: 85 04
LDX $00                 ; $2A:9C34: A6 00

CODE_2A9C36:
LDA ($02)               ; $2A:9C36: B2 02
JSR CODE_2A8CD9         ; $2A:9C38: 20 D9 8C
INX                     ; $2A:9C3B: E8
REP #$20                ; $2A:9C3C: C2 20
INC $02                 ; $2A:9C3E: E6 02
SEP #$20                ; $2A:9C40: E2 20
DEC $04                 ; $2A:9C42: C6 04
BNE CODE_2A9C36         ; $2A:9C44: D0 F0
REP #$20                ; $2A:9C46: C2 20
LDA $00                 ; $2A:9C48: A5 00
CLC                     ; $2A:9C4A: 18
ADC #$0010              ; $2A:9C4B: 69 10 00
STA $00                 ; $2A:9C4E: 85 00
SEP #$20                ; $2A:9C50: E2 20
DEC $05                 ; $2A:9C52: C6 05
BNE CODE_2A9C30         ; $2A:9C54: D0 DA
SEP #$10                ; $2A:9C56: E2 10
RTS                     ; $2A:9C58: 60
db $04,$05,$06,$04,$07,$08,$09,$0A
db $0B,$0C,$0D,$0E,$13,$14,$15,$16
db $1B,$1C,$1D,$1E,$23,$24,$25,$26
db $29,$2A,$2B,$2C,$0F,$12,$0F,$12
db $17,$1A,$17,$1A,$1F,$22,$1F,$22
db $23,$26,$23,$26,$29,$2C,$29,$2C
db $0F,$10,$11,$12,$17,$18,$19,$1A
db $1F,$20,$21,$22,$23,$27,$28,$26
db $29,$2D,$2E,$2C

CODE_2A9C9D:
SEP #$10                ; $2A:9C9D: E2 10

CODE_2A9C9F:
LDY #$00                ; $2A:9C9F: A0 00
LDA [$2B],y             ; $2A:9CA1: B7 2B
CMP #$FF                ; $2A:9CA3: C9 FF
BEQ CODE_2A9CAF         ; $2A:9CA5: F0 08
JSR CODE_2A8E54         ; $2A:9CA7: 20 54 8E
JSR (PNTR_2A9CC3,x)     ; $2A:9CAA: FC C3 9C
BRA CODE_2A9C9F         ; $2A:9CAD: 80 F0

CODE_2A9CAF:
LDA #$00                ; $2A:9CAF: A9 00
XBA                     ; $2A:9CB1: EB
REP #$10                ; $2A:9CB2: C2 10
LDY #$0100              ; $2A:9CB4: A0 00 01
LDX #$01B0              ; $2A:9CB7: A2 B0 01
LDA #$AF                ; $2A:9CBA: A9 AF
MVN $7F,$7F             ; $2A:9CBC: 54 7F 7F
SEP #$10                ; $2A:9CBF: E2 10
PLB                     ; $2A:9CC1: AB
RTL                     ; $2A:9CC2: 6B

PNTR_2A9CC3:
dw CODE_2A9CCF
dw CODE_2A9D61
dw CODE_2A9DC0
dw CODE_2A9E6B
dw CODE_2A9ED2
dw CODE_2A9EE8

CODE_2A9CCF:
REP #$30                ; $2A:9CCF: C2 30
LDA $DA                 ; $2A:9CD1: A5 DA
ASL A                   ; $2A:9CD3: 0A
TAY                     ; $2A:9CD4: A8
LDA.w DATA_2A9CE0,y     ; $2A:9CD5: B9 E0 9C
STA $02                 ; $2A:9CD8: 85 02
SEP #$20                ; $2A:9CDA: E2 20
JSR CODE_2A9D3A         ; $2A:9CDC: 20 3A 9D
RTS                     ; $2A:9CDF: 60

DATA_2A9CE0:
db $EA,$9C,$FA,$9C,$0A,$9D,$1A,$9D
db $2A,$9D,$02,$06,$1F,$02,$06,$06
db $1F,$03,$03,$02,$03,$03,$10,$17
db $03,$03,$03,$06,$1F,$02,$06,$09
db $1F,$03,$03,$02,$03,$03,$10,$17
db $03,$03,$02,$03,$10,$17,$1D,$1F
db $10,$17,$02,$06,$1F,$02,$31,$1F
db $10,$17,$02,$09,$10,$17,$1E,$1F
db $10,$17,$02,$1E,$1F,$02,$09,$1F
db $10,$17,$00,$00,$00,$00,$00,$06
db $1F,$03,$03,$02,$03,$03,$10,$17
db $03,$03

CODE_2A9D3A:
LDX $00                 ; $2A:9D3A: A6 00
LDY #$0000              ; $2A:9D3C: A0 00 00

CODE_2A9D3F:
LDA ($02),y             ; $2A:9D3F: B1 02
JSR CODE_2A8CD9         ; $2A:9D41: 20 D9 8C
REP #$20                ; $2A:9D44: C2 20
TXA                     ; $2A:9D46: 8A
CLC                     ; $2A:9D47: 18
ADC #$0010              ; $2A:9D48: 69 10 00
TAX                     ; $2A:9D4B: AA
SEP #$20                ; $2A:9D4C: E2 20
INY                     ; $2A:9D4E: C8
CPY #$0010              ; $2A:9D4F: C0 10 00
BNE CODE_2A9D3F         ; $2A:9D52: D0 EB
LDA $D8                 ; $2A:9D54: A5 D8
BEQ CODE_2A9D5E         ; $2A:9D56: F0 06
DEC $D8                 ; $2A:9D58: C6 D8
INC $00                 ; $2A:9D5A: E6 00
BRA CODE_2A9D3A         ; $2A:9D5C: 80 DC

CODE_2A9D5E:
SEP #$10                ; $2A:9D5E: E2 10
RTS                     ; $2A:9D60: 60

CODE_2A9D61:
REP #$30                ; $2A:9D61: C2 30
LDA $DA                 ; $2A:9D63: A5 DA
ASL A                   ; $2A:9D65: 0A
TAX                     ; $2A:9D66: AA
LDA.w DATA_2A9D74,x     ; $2A:9D67: BD 74 9D
STA $02                 ; $2A:9D6A: 85 02
SEP #$20                ; $2A:9D6C: E2 20
LDX $00                 ; $2A:9D6E: A6 00
JSR CODE_2A9DA6         ; $2A:9D70: 20 A6 9D
RTS                     ; $2A:9D73: 60

DATA_2A9D74:
db $80,$9D
db $88,$9D,$8D,$9D,$95,$9D,$9D,$9D
db $A2,$9D,$07,$08,$07,$08,$1A,$07
db $08,$1A,$1A,$08,$1A,$07,$00,$1A
db $1A,$08,$1A,$1A,$1B,$1C,$07,$08
db $1A,$08,$08,$1A,$2C,$08,$1A,$1A
db $08,$06,$1A,$00,$07,$08,$06,$00

CODE_2A9DA6:
LDA $7F0000,x           ; $2A:9DA6: BF 00 00 7F
BNE CODE_2A9DB7         ; $2A:9DAA: D0 0B
LDA ($02)               ; $2A:9DAC: B2 02
JSR CODE_2A8CD9         ; $2A:9DAE: 20 D9 8C
REP #$20                ; $2A:9DB1: C2 20
INC $02                 ; $2A:9DB3: E6 02
SEP #$20                ; $2A:9DB5: E2 20

CODE_2A9DB7:
INX                     ; $2A:9DB7: E8
TXA                     ; $2A:9DB8: 8A
AND #$0F                ; $2A:9DB9: 29 0F
BNE CODE_2A9DA6         ; $2A:9DBB: D0 E9
SEP #$10                ; $2A:9DBD: E2 10
RTS                     ; $2A:9DBF: 60

CODE_2A9DC0:
REP #$30                ; $2A:9DC0: C2 30
LDA $DA                 ; $2A:9DC2: A5 DA
ASL A                   ; $2A:9DC4: 0A
TAX                     ; $2A:9DC5: AA
LDA.w DATA_2A9DE3,x     ; $2A:9DC6: BD E3 9D
STA $02                 ; $2A:9DC9: 85 02
SEP #$20                ; $2A:9DCB: E2 20
JSR CODE_2A9D3A         ; $2A:9DCD: 20 3A 9D
REP #$30                ; $2A:9DD0: C2 30
TYA                     ; $2A:9DD2: 98
AND #$00FF              ; $2A:9DD3: 29 FF 00
CLC                     ; $2A:9DD6: 18
ADC $02                 ; $2A:9DD7: 65 02
STA $02                 ; $2A:9DD9: 85 02
INC $00                 ; $2A:9DDB: E6 00
SEP #$20                ; $2A:9DDD: E2 20
JSR CODE_2A9D3A         ; $2A:9DDF: 20 3A 9D
RTS                     ; $2A:9DE2: 60

DATA_2A9DE3:
db $EB,$9D,$0B,$9E,$2B,$9E,$4B,$9E
db $04,$1B,$20,$33,$1B,$20,$35,$04
db $20,$20,$35,$04,$2E,$30,$35,$04
db $05,$1C,$21,$34,$1C,$21,$01,$05
db $2D,$2F,$01,$05,$2D,$2F,$01,$05
db $04,$1B,$20,$33,$1B,$1B,$35,$04
db $2E,$30,$20,$35,$22,$27,$04,$20
db $05,$1C,$21,$34,$1C,$1C,$01,$05
db $21,$21,$21,$01,$23,$28,$05,$21
db $35,$04,$0B,$12,$1B,$35,$22,$27
db $04,$1B,$20,$20,$20,$35,$22,$27
db $01,$05,$0C,$13,$1C,$01,$23,$28
db $05,$1C,$21,$2D,$2F,$01,$23,$28
db $35,$04,$0B,$12,$1B,$35,$22,$27
db $04,$1B,$20,$2E,$30,$35,$22,$27
db $01,$05,$0C,$13,$1C,$01,$23,$28
db $05,$1C,$21,$21,$21,$01,$23,$28

CODE_2A9E6B:
REP #$30                ; $2A:9E6B: C2 30
LDA $DA                 ; $2A:9E6D: A5 DA
ASL A                   ; $2A:9E6F: 0A
TAX                     ; $2A:9E70: AA
LDA.w DATA_2A9E8C,x     ; $2A:9E71: BD 8C 9E
STA $02                 ; $2A:9E74: 85 02
SEP #$20                ; $2A:9E76: E2 20
LDX $00                 ; $2A:9E78: A6 00
JSR CODE_2A9DA6         ; $2A:9E7A: 20 A6 9D
REP #$30                ; $2A:9E7D: C2 30
LDA $00                 ; $2A:9E7F: A5 00
CLC                     ; $2A:9E81: 18
ADC #$0010              ; $2A:9E82: 69 10 00
TAX                     ; $2A:9E85: AA
SEP #$20                ; $2A:9E86: E2 20
JSR CODE_2A9DA6         ; $2A:9E88: 20 A6 9D
RTS                     ; $2A:9E8B: 60

DATA_2A9E8C:
db $94,$9E,$A2,$9E,$B2,$9E,$C2,$9E
db $0A,$0A,$0D,$0E,$0D,$0E,$0A,$11
db $2A,$14,$15,$14,$15,$11,$0A,$0D
db $0E,$0F,$0F,$0A,$0A,$0F,$11,$14
db $15,$16,$16,$18,$19,$16,$0D,$0E
db $0D,$0E,$0F,$24,$25,$0F,$26,$29
db $26,$15,$16,$11,$2A,$16,$0D,$0E
db $0D,$0E,$0F,$10,$0A,$0F,$26,$29
db $26,$15,$16,$17,$11,$16

CODE_2A9ED2:
REP #$10                ; $2A:9ED2: C2 10
LDX $00                 ; $2A:9ED4: A6 00
LDY $DA                 ; $2A:9ED6: A4 DA
LDA.w DATA_2A9EE1,y     ; $2A:9ED8: B9 E1 9E
JSR CODE_2A8CD9         ; $2A:9EDB: 20 D9 8C
SEP #$10                ; $2A:9EDE: E2 10
RTS                     ; $2A:9EE0: 60

DATA_2A9EE1:
db $02,$32,$03,$06,$1F,$20,$21

CODE_2A9EE8:
REP #$30                ; $2A:9EE8: C2 30
LDA $DA                 ; $2A:9EEA: A5 DA
ASL A                   ; $2A:9EEC: 0A
TAX                     ; $2A:9EED: AA
LDA.w DATA_2A9F1B,x     ; $2A:9EEE: BD 1B 9F
STA $02                 ; $2A:9EF1: 85 02
SEP #$20                ; $2A:9EF3: E2 20
LDY #$0002              ; $2A:9EF5: A0 02 00
LDA ($02)               ; $2A:9EF8: B2 02
LDX $00                 ; $2A:9EFA: A6 00
JSR CODE_2A8CD9         ; $2A:9EFC: 20 D9 8C
LDA ($02),y             ; $2A:9EFF: B1 02
JSR CODE_2A8CEE         ; $2A:9F01: 20 EE 8C
REP #$20                ; $2A:9F04: C2 20
INC $02                 ; $2A:9F06: E6 02
INC $00                 ; $2A:9F08: E6 00
SEP #$20                ; $2A:9F0A: E2 20
LDA ($02)               ; $2A:9F0C: B2 02
LDX $00                 ; $2A:9F0E: A6 00
JSR CODE_2A8CD9         ; $2A:9F10: 20 D9 8C
LDA ($02),y             ; $2A:9F13: B1 02
JSR CODE_2A8CEE         ; $2A:9F15: 20 EE 8C
SEP #$10                ; $2A:9F18: E2 10
RTS                     ; $2A:9F1A: 60

DATA_2A9F1B:
db $21,$9F,$25,$9F,$29,$9F,$0D,$0E
db $14,$15,$0A,$0D,$2A,$14,$0A,$0A
db $11,$11

CODE_2A9F2D:
SEP #$10                ; $2A:9F2D: E2 10
LDA $0727               ; $2A:9F2F: AD 27 07
CMP #$01                ; $2A:9F32: C9 01
BNE CODE_2A9F3B         ; $2A:9F34: D0 05
LDA #$18                ; $2A:9F36: A9 18
STA $02C5               ; $2A:9F38: 8D C5 02

CODE_2A9F3B:
LDX #$D0                ; $2A:9F3B: A2 D0
LDA #$23                ; $2A:9F3D: A9 23
STA $00                 ; $2A:9F3F: 85 00
JSR CODE_2A9924         ; $2A:9F41: 20 24 99
LDA #$24                ; $2A:9F44: A9 24
STA $00                 ; $2A:9F46: 85 00
JSR CODE_2A9924         ; $2A:9F48: 20 24 99
LDA #$01                ; $2A:9F4B: A9 01
STA $00                 ; $2A:9F4D: 85 00
JSR CODE_2A9924         ; $2A:9F4F: 20 24 99
JSR CODE_2A9930         ; $2A:9F52: 20 30 99
JSR CODE_2A9930         ; $2A:9F55: 20 30 99
JSR CODE_2A9930         ; $2A:9F58: 20 30 99

CODE_2A9F5B:
LDY #$00                ; $2A:9F5B: A0 00
LDA [$2B],y             ; $2A:9F5D: B7 2B
CMP #$FF                ; $2A:9F5F: C9 FF
BEQ CODE_2A9F6B         ; $2A:9F61: F0 08
JSR CODE_2A8E54         ; $2A:9F63: 20 54 8E
JSR (PNTR_2A9F6D,x)     ; $2A:9F66: FC 6D 9F
BRA CODE_2A9F5B         ; $2A:9F69: 80 F0

CODE_2A9F6B:
PLB                     ; $2A:9F6B: AB
RTL                     ; $2A:9F6C: 6B

PNTR_2A9F6D:
dw CODE_2A9F7D
dw CODE_2A9F84
dw CODE_2A9F8B
dw CODE_2A9F92
dw CODE_2A9F99
dw CODE_2A9FA0
dw CODE_2A9FA7
dw CODE_2AA066

CODE_2A9F7D:
REP #$10                ; $2A:9F7D: C2 10
LDY #$0000              ; $2A:9F7F: A0 00 00
BRA CODE_2A9FAC         ; $2A:9F82: 80 28

CODE_2A9F84:
REP #$10                ; $2A:9F84: C2 10
LDY #$0008              ; $2A:9F86: A0 08 00
BRA CODE_2A9FAC         ; $2A:9F89: 80 21

CODE_2A9F8B:
REP #$10                ; $2A:9F8B: C2 10
LDY #$0010              ; $2A:9F8D: A0 10 00
BRA CODE_2A9FAC         ; $2A:9F90: 80 1A

CODE_2A9F92:
REP #$10                ; $2A:9F92: C2 10
LDY #$0018              ; $2A:9F94: A0 18 00
BRA CODE_2A9FAC         ; $2A:9F97: 80 13

CODE_2A9F99:
REP #$10                ; $2A:9F99: C2 10
LDY #$0020              ; $2A:9F9B: A0 20 00
BRA CODE_2A9FAC         ; $2A:9F9E: 80 0C

CODE_2A9FA0:
REP #$10                ; $2A:9FA0: C2 10
LDY #$0028              ; $2A:9FA2: A0 28 00
BRA CODE_2A9FAC         ; $2A:9FA5: 80 05

CODE_2A9FA7:
REP #$10                ; $2A:9FA7: C2 10
LDY #$0030              ; $2A:9FA9: A0 30 00

CODE_2A9FAC:
LDA #$01                ; $2A:9FAC: A9 01
STA $02                 ; $2A:9FAE: 85 02

CODE_2A9FB0:
LDX $00                 ; $2A:9FB0: A6 00
LDA #$04                ; $2A:9FB2: A9 04
STA $04                 ; $2A:9FB4: 85 04

CODE_2A9FB6:
LDA.w DATA_2AA026,y     ; $2A:9FB6: B9 26 A0
JSR CODE_2A8CD9         ; $2A:9FB9: 20 D9 8C
INX                     ; $2A:9FBC: E8
JSR CODE_2AA009         ; $2A:9FBD: 20 09 A0
INY                     ; $2A:9FC0: C8
DEC $04                 ; $2A:9FC1: C6 04
BNE CODE_2A9FB6         ; $2A:9FC3: D0 F1
REP #$20                ; $2A:9FC5: C2 20
LDA $00                 ; $2A:9FC7: A5 00
CLC                     ; $2A:9FC9: 18
ADC #$0010              ; $2A:9FCA: 69 10 00
STA $00                 ; $2A:9FCD: 85 00
SEP #$20                ; $2A:9FCF: E2 20
DEC $02                 ; $2A:9FD1: C6 02
BEQ CODE_2A9FB0         ; $2A:9FD3: F0 DB
LDY #$0000              ; $2A:9FD5: A0 00 00

CODE_2A9FD8:
LDA #$04                ; $2A:9FD8: A9 04
STA $04                 ; $2A:9FDA: 85 04
LDX $00                 ; $2A:9FDC: A6 00

CODE_2A9FDE:
LDA.w DATA_2AA05E,y     ; $2A:9FDE: B9 5E A0
JSR CODE_2A8CD9         ; $2A:9FE1: 20 D9 8C
INX                     ; $2A:9FE4: E8
JSR CODE_2AA009         ; $2A:9FE5: 20 09 A0
INY                     ; $2A:9FE8: C8
REP #$20                ; $2A:9FE9: C2 20
TYA                     ; $2A:9FEB: 98
AND #$0007              ; $2A:9FEC: 29 07 00
TAY                     ; $2A:9FEF: A8
SEP #$20                ; $2A:9FF0: E2 20
DEC $04                 ; $2A:9FF2: C6 04
BNE CODE_2A9FDE         ; $2A:9FF4: D0 E8
REP #$20                ; $2A:9FF6: C2 20
LDA $00                 ; $2A:9FF8: A5 00
CLC                     ; $2A:9FFA: 18
ADC #$0010              ; $2A:9FFB: 69 10 00
STA $00                 ; $2A:9FFE: 85 00
SEP #$20                ; $2A:A000: E2 20
DEC $D8                 ; $2A:A002: C6 D8
BNE CODE_2A9FD8         ; $2A:A004: D0 D2
SEP #$10                ; $2A:A006: E2 10
RTS                     ; $2A:A008: 60

CODE_2AA009:
REP #$20                ; $2A:A009: C2 20
TXA                     ; $2A:A00B: 8A
AND #$000F              ; $2A:A00C: 29 0F 00
BNE CODE_2AA023         ; $2A:A00F: D0 12
LDA $DA                 ; $2A:A011: A5 DA
BNE CODE_2AA01D         ; $2A:A013: D0 08
TXA                     ; $2A:A015: 8A
CLC                     ; $2A:A016: 18
ADC #$01A0              ; $2A:A017: 69 A0 01
TAX                     ; $2A:A01A: AA
BRA CODE_2AA023         ; $2A:A01B: 80 06

CODE_2AA01D:
TXA                     ; $2A:A01D: 8A
SEC                     ; $2A:A01E: 38
SBC #$01C0              ; $2A:A01F: E9 C0 01
TAX                     ; $2A:A022: AA

CODE_2AA023:
SEP #$20                ; $2A:A023: E2 20
RTS                     ; $2A:A025: 60

DATA_2AA026:
db $1D,$1E,$1F,$20,$21,$08,$09,$22
db $29,$04,$0B,$0C,$07,$08,$09,$0F
db $14,$15,$05,$2A,$1A,$08,$09,$0A
db $33,$17,$16,$32,$1C,$08,$09,$1B
db $14,$15,$0B,$0C,$1A,$08,$09,$0F
db $14,$15,$16,$32,$1A,$08,$09,$1B
db $29,$04,$05,$2A,$07,$08,$09,$0A

DATA_2AA05E:
db $12,$13,$0D,$0E,$18,$19,$10,$11

CODE_2AA066:
REP #$10                ; $2A:A066: C2 10
LDY #$0000              ; $2A:A068: A0 00 00

CODE_2AA06B:
LDX $00                 ; $2A:A06B: A6 00
LDA #$04                ; $2A:A06D: A9 04
STA $02                 ; $2A:A06F: 85 02

CODE_2AA071:
LDA $7F0000,x           ; $2A:A071: BF 00 00 7F
CMP #$01                ; $2A:A075: C9 01
BNE CODE_2AA07F         ; $2A:A077: D0 06
LDA.w DATA_2AA09B,y     ; $2A:A079: B9 9B A0
JSR CODE_2A8CD9         ; $2A:A07C: 20 D9 8C

CODE_2AA07F:
INX                     ; $2A:A07F: E8
INY                     ; $2A:A080: C8
CPY #$000C              ; $2A:A081: C0 0C 00
BCS CODE_2AA098         ; $2A:A084: B0 12
DEC $02                 ; $2A:A086: C6 02
BNE CODE_2AA071         ; $2A:A088: D0 E7
REP #$20                ; $2A:A08A: C2 20
LDA $00                 ; $2A:A08C: A5 00
CLC                     ; $2A:A08E: 18
ADC #$0010              ; $2A:A08F: 69 10 00
STA $00                 ; $2A:A092: 85 00
SEP #$20                ; $2A:A094: E2 20
BRA CODE_2AA06B         ; $2A:A096: 80 D3

CODE_2AA098:
SEP #$10                ; $2A:A098: E2 10
RTS                     ; $2A:A09A: 60

DATA_2AA09B:
db $25,$26,$27,$28,$2B,$2C,$2D,$2E
db $2F,$2F,$30,$31

CODE_2AA0A7:
SEP #$10                ; $2A:A0A7: E2 10
LDX #$00                ; $2A:A0A9: A2 00
LDA #$02                ; $2A:A0AB: A9 02
STA $00                 ; $2A:A0AD: 85 00
LDA #$03                ; $2A:A0AF: A9 03
STA $01                 ; $2A:A0B1: 85 01
STZ $02                 ; $2A:A0B3: 64 02
LDA #$01                ; $2A:A0B5: A9 01
STA $03                 ; $2A:A0B7: 85 03

CODE_2AA0B9:
LDA $00                 ; $2A:A0B9: A5 00
JSR CODE_2A8D03         ; $2A:A0BB: 20 03 8D
INX                     ; $2A:A0BE: E8
LDA $01                 ; $2A:A0BF: A5 01
JSR CODE_2A8D03         ; $2A:A0C1: 20 03 8D
INX                     ; $2A:A0C4: E8
TXA                     ; $2A:A0C5: 8A
AND #$0F                ; $2A:A0C6: 29 0F
BNE CODE_2AA0B9         ; $2A:A0C8: D0 EF

CODE_2AA0CA:
LDA $02                 ; $2A:A0CA: A5 02
JSR CODE_2A8D03         ; $2A:A0CC: 20 03 8D
INX                     ; $2A:A0CF: E8
LDA $03                 ; $2A:A0D0: A5 03
JSR CODE_2A8D03         ; $2A:A0D2: 20 03 8D
INX                     ; $2A:A0D5: E8
TXA                     ; $2A:A0D6: 8A
AND #$0F                ; $2A:A0D7: 29 0F
BNE CODE_2AA0CA         ; $2A:A0D9: D0 EF
TXA                     ; $2A:A0DB: 8A
BNE CODE_2AA0B9         ; $2A:A0DC: D0 DB

CODE_2AA0DE:
LDA $00                 ; $2A:A0DE: A5 00
JSR CODE_2A8D25         ; $2A:A0E0: 20 25 8D
INX                     ; $2A:A0E3: E8
LDA $01                 ; $2A:A0E4: A5 01
JSR CODE_2A8D25         ; $2A:A0E6: 20 25 8D
INX                     ; $2A:A0E9: E8
TXA                     ; $2A:A0EA: 8A
AND #$0F                ; $2A:A0EB: 29 0F
BNE CODE_2AA0DE         ; $2A:A0ED: D0 EF
CPX #$B0                ; $2A:A0EF: E0 B0
BCS CODE_2AA106         ; $2A:A0F1: B0 13

CODE_2AA0F3:
LDA $02                 ; $2A:A0F3: A5 02
JSR CODE_2A8D25         ; $2A:A0F5: 20 25 8D
INX                     ; $2A:A0F8: E8
LDA $03                 ; $2A:A0F9: A5 03
JSR CODE_2A8D25         ; $2A:A0FB: 20 25 8D
INX                     ; $2A:A0FE: E8
TXA                     ; $2A:A0FF: 8A
AND #$0F                ; $2A:A100: 29 0F
BNE CODE_2AA0F3         ; $2A:A102: D0 EF
BRA CODE_2AA0DE         ; $2A:A104: 80 D8

CODE_2AA106:
LDY #$00                ; $2A:A106: A0 00
LDA [$2B],y             ; $2A:A108: B7 2B
CMP #$FF                ; $2A:A10A: C9 FF
BEQ CODE_2AA116         ; $2A:A10C: F0 08
JSR CODE_2A8E54         ; $2A:A10E: 20 54 8E
JSR (PNTR_2AA118,x)     ; $2A:A111: FC 18 A1
BRA CODE_2AA106         ; $2A:A114: 80 F0

CODE_2AA116:
PLB                     ; $2A:A116: AB
RTL                     ; $2A:A117: 6B

PNTR_2AA118:
dw CODE_2AA120
dw CODE_2AA143
dw CODE_2AA153
dw CODE_2AA15F

CODE_2AA120:
JSR CODE_2AA143         ; $2A:A120: 20 43 A1
REP #$10                ; $2A:A123: C2 10
LDA $DA                 ; $2A:A125: A5 DA
BEQ CODE_2AA12B         ; $2A:A127: F0 02
STA $D8                 ; $2A:A129: 85 D8

CODE_2AA12B:
JSR CODE_2AA136         ; $2A:A12B: 20 36 A1
LDA #$04                ; $2A:A12E: A9 04
JSR CODE_2A8CD9         ; $2A:A130: 20 D9 8C
SEP #$10                ; $2A:A133: E2 10
RTS                     ; $2A:A135: 60

CODE_2AA136:
REP #$20                ; $2A:A136: C2 20
LDA $00                 ; $2A:A138: A5 00
CLC                     ; $2A:A13A: 18
ADC $D8                 ; $2A:A13B: 65 D8
STA $00                 ; $2A:A13D: 85 00
TAX                     ; $2A:A13F: AA
SEP #$20                ; $2A:A140: E2 20
RTS                     ; $2A:A142: 60

CODE_2AA143:
JSR CODE_2AA153         ; $2A:A143: 20 53 A1
REP #$10                ; $2A:A146: C2 10
JSR CODE_2AA136         ; $2A:A148: 20 36 A1
LDA #$04                ; $2A:A14B: A9 04
JSR CODE_2A8CD9         ; $2A:A14D: 20 D9 8C
SEP #$10                ; $2A:A150: E2 10
RTS                     ; $2A:A152: 60

CODE_2AA153:
REP #$10                ; $2A:A153: C2 10
LDX $00                 ; $2A:A155: A6 00
LDA #$04                ; $2A:A157: A9 04
JSR CODE_2A8CD9         ; $2A:A159: 20 D9 8C
SEP #$10                ; $2A:A15C: E2 10
RTS                     ; $2A:A15E: 60

CODE_2AA15F:
REP #$10                ; $2A:A15F: C2 10
JSR CODE_2AA153         ; $2A:A161: 20 53 A1
JSR CODE_2AA136         ; $2A:A164: 20 36 A1
JSR CODE_2AA153         ; $2A:A167: 20 53 A1
JSR CODE_2AA136         ; $2A:A16A: 20 36 A1
JSR CODE_2AA153         ; $2A:A16D: 20 53 A1
LDA $DA                 ; $2A:A170: A5 DA
BEQ CODE_2AA176         ; $2A:A172: F0 02
STA $D8                 ; $2A:A174: 85 D8

CODE_2AA176:
JSR CODE_2AA136         ; $2A:A176: 20 36 A1
LDA #$04                ; $2A:A179: A9 04
JSR CODE_2A8CD9         ; $2A:A17B: 20 D9 8C
SEP #$10                ; $2A:A17E: E2 10
RTS                     ; $2A:A180: 60

CODE_2AA181:
SEP #$10                ; $2A:A181: E2 10
LDX #$40                ; $2A:A183: A2 40
LDA #$3C                ; $2A:A185: A9 3C
STA $00                 ; $2A:A187: 85 00
LDA #$40                ; $2A:A189: A9 40
STA $01                 ; $2A:A18B: 85 01
LDA #$08                ; $2A:A18D: A9 08
STA $04                 ; $2A:A18F: 85 04
JSR CODE_2A974B         ; $2A:A191: 20 4B 97
LDA #$41                ; $2A:A194: A9 41
STA $00                 ; $2A:A196: 85 00
LDA #$42                ; $2A:A198: A9 42
STA $01                 ; $2A:A19A: 85 01
LDA #$08                ; $2A:A19C: A9 08
STA $04                 ; $2A:A19E: 85 04
JSR CODE_2A974B         ; $2A:A1A0: 20 4B 97
LDA #$43                ; $2A:A1A3: A9 43
STA $00                 ; $2A:A1A5: 85 00
JSR CODE_2A9930         ; $2A:A1A7: 20 30 99
INC $00                 ; $2A:A1AA: E6 00
JSR CODE_2A9930         ; $2A:A1AC: 20 30 99
JSR CODE_2A9930         ; $2A:A1AF: 20 30 99

CODE_2AA1B2:
LDY #$00                ; $2A:A1B2: A0 00
LDA [$2B],y             ; $2A:A1B4: B7 2B
CMP #$FF                ; $2A:A1B6: C9 FF
BEQ CODE_2AA1C2         ; $2A:A1B8: F0 08
JSR CODE_2A8E54         ; $2A:A1BA: 20 54 8E
JSR (PNTR_2AA219,x)     ; $2A:A1BD: FC 19 A2
BRA CODE_2AA1B2         ; $2A:A1C0: 80 F0

CODE_2AA1C2:
LDA $1EBF               ; $2A:A1C2: AD BF 1E
CMP #$0B                ; $2A:A1C5: C9 0B
BEQ CODE_2AA1CD         ; $2A:A1C7: F0 04
CMP #$2F                ; $2A:A1C9: C9 2F
BNE CODE_2AA217         ; $2A:A1CB: D0 4A

CODE_2AA1CD:
LDA #$00                ; $2A:A1CD: A9 00
XBA                     ; $2A:A1CF: EB
REP #$10                ; $2A:A1D0: C2 10
LDY #$00C0              ; $2A:A1D2: A0 C0 00
LDX #$00D0              ; $2A:A1D5: A2 D0 00
LDA #$AF                ; $2A:A1D8: A9 AF
MVN $7F,$7F             ; $2A:A1DA: 54 7F 7F
LDA #$00                ; $2A:A1DD: A9 00
XBA                     ; $2A:A1DF: EB
LDY #$0270              ; $2A:A1E0: A0 70 02
LDX #$0280              ; $2A:A1E3: A2 80 02
LDA #$AF                ; $2A:A1E6: A9 AF
MVN $7F,$7F             ; $2A:A1E8: 54 7F 7F
LDA #$00                ; $2A:A1EB: A9 00
XBA                     ; $2A:A1ED: EB
LDY #$0420              ; $2A:A1EE: A0 20 04
LDX #$0430              ; $2A:A1F1: A2 30 04
LDA #$AF                ; $2A:A1F4: A9 AF
MVN $7F,$7F             ; $2A:A1F6: 54 7F 7F
LDA #$00                ; $2A:A1F9: A9 00
XBA                     ; $2A:A1FB: EB
LDY #$05D0              ; $2A:A1FC: A0 D0 05
LDX #$05E0              ; $2A:A1FF: A2 E0 05
LDA #$AF                ; $2A:A202: A9 AF
MVN $7F,$7F             ; $2A:A204: 54 7F 7F
LDA #$00                ; $2A:A207: A9 00
XBA                     ; $2A:A209: EB
LDY #$0780              ; $2A:A20A: A0 80 07
LDX #$0790              ; $2A:A20D: A2 90 07
LDA #$AF                ; $2A:A210: A9 AF
MVN $7F,$7F             ; $2A:A212: 54 7F 7F
SEP #$10                ; $2A:A215: E2 10

CODE_2AA217:
PLB                     ; $2A:A217: AB
RTL                     ; $2A:A218: 6B

PNTR_2AA219:
dw CODE_2AA221
dw CODE_2AA225
dw CODE_2AA229
dw CODE_2AA22D

CODE_2AA221:
LDY #$00                ; $2A:A221: A0 00
BRA CODE_2AA22F         ; $2A:A223: 80 0A

CODE_2AA225:
LDY #$02                ; $2A:A225: A0 02
BRA CODE_2AA22F         ; $2A:A227: 80 06

CODE_2AA229:
LDY #$04                ; $2A:A229: A0 04
BRA CODE_2AA22F         ; $2A:A22B: 80 02

CODE_2AA22D:
LDY #$06                ; $2A:A22D: A0 06

CODE_2AA22F:
LDA #$2A                ; $2A:A22F: A9 2A
STA $08                 ; $2A:A231: 85 08
STA $0B                 ; $2A:A233: 85 0B
STA $0E                 ; $2A:A235: 85 0E
REP #$30                ; $2A:A237: C2 30
LDA.w DATA_2AA268,y     ; $2A:A239: B9 68 A2
STA $06                 ; $2A:A23C: 85 06
LDA.w DATA_2AA270,y     ; $2A:A23E: B9 70 A2
STA $09                 ; $2A:A241: 85 09
LDA.w DATA_2AA278,y     ; $2A:A243: B9 78 A2
STA $0C                 ; $2A:A246: 85 0C
STZ $04                 ; $2A:A248: 64 04
SEP #$20                ; $2A:A24A: E2 20
LDA.w DATA_2AA260,y     ; $2A:A24C: B9 60 A2
STA $0F                 ; $2A:A24F: 85 0F
LDX $00                 ; $2A:A251: A6 00
LDY #$0000              ; $2A:A253: A0 00 00
LDA [$0C]               ; $2A:A256: A7 0C
STA $02                 ; $2A:A258: 85 02
JSR CODE_2A8FA7         ; $2A:A25A: 20 A7 8F
SEP #$10                ; $2A:A25D: E2 10
RTS                     ; $2A:A25F: 60

DATA_2AA260:
db $07,$00,$06,$00,$04,$00,$05,$00

DATA_2AA268:
db $80,$A2,$BD,$A2,$CE,$A2,$E4,$A2

DATA_2AA270:
db $FF,$A2,$0B,$A3,$15,$A3,$1B,$A3

DATA_2AA278:
db $23,$A3,$2A,$A3,$30,$A3,$34,$A3
db $45,$01,$02,$03,$04,$05,$06,$07
db $03,$0A,$0B,$0C,$0D,$0E,$0F,$03
db $0A,$16,$17,$18,$16,$19,$1A,$1B
db $03,$0A,$20,$21,$16,$16,$16,$22
db $23,$24,$1B,$03,$29,$2A,$16,$16
db $16,$16,$2B,$2C,$2D,$2E,$2F,$1B
db $35,$36,$35,$36,$35,$36,$35,$36
db $35,$36,$37,$38,$37,$08,$09,$10
db $11,$12,$1C,$1D,$12,$25,$26,$12
db $30,$26,$12,$39,$3A,$3B,$45,$01
db $02,$03,$04,$05,$06,$0F,$03,$31
db $0B,$0C,$32,$33,$1B,$36,$35,$36
db $35,$36,$37,$38,$13,$14,$15,$1E
db $10,$1C,$1F,$12,$10,$1C,$1C,$27
db $28,$12,$1C,$1C,$1C,$34,$26,$12
db $3D,$3E,$3D,$3E,$3A,$3B,$3F,$0F
db $00,$0F,$00,$0F,$00,$0F,$00,$0F
db $00,$10,$00,$10,$00,$11,$00,$11
db $00,$11,$00,$10,$00,$0F,$00,$0F
db $00,$10,$00,$0F,$00,$10,$00,$11
db $00,$10,$00,$03,$05,$07,$09,$0B
db $0D,$0D,$02,$03,$03,$03,$03,$03
db $03,$05,$07,$07,$03,$05,$06,$06
db $07

CODE_2AA339:
SEP #$10                ; $2A:A339: E2 10
JSR CODE_2AA38B         ; $2A:A33B: 20 8B A3
LDX #$40                ; $2A:A33E: A2 40
LDA #$05                ; $2A:A340: A9 05
STA $00                 ; $2A:A342: 85 00

CODE_2AA344:
LDA $00                 ; $2A:A344: A5 00
JSR CODE_2A8D25         ; $2A:A346: 20 25 8D

CODE_2AA349:
INC A                   ; $2A:A349: 1A
INX                     ; $2A:A34A: E8
JSR CODE_2A8D25         ; $2A:A34B: 20 25 8D
CMP #$0C                ; $2A:A34E: C9 0C
BNE CODE_2AA349         ; $2A:A350: D0 F7
INX                     ; $2A:A352: E8
TXA                     ; $2A:A353: 8A
AND #$0F                ; $2A:A354: 29 0F
BNE CODE_2AA344         ; $2A:A356: D0 EC
REP #$10                ; $2A:A358: C2 10
LDX #$0146              ; $2A:A35A: A2 46 01
LDA #$07                ; $2A:A35D: A9 07
STA $00                 ; $2A:A35F: 85 00
JSR CODE_2A8CD9         ; $2A:A361: 20 D9 8C
INC A                   ; $2A:A364: 1A
INX                     ; $2A:A365: E8
JSR CODE_2A8CD9         ; $2A:A366: 20 D9 8C
INC A                   ; $2A:A369: 1A
INX                     ; $2A:A36A: E8
JSR CODE_2A8CD9         ; $2A:A36B: 20 D9 8C
INC A                   ; $2A:A36E: 1A
INX                     ; $2A:A36F: E8
JSR CODE_2A8CD9         ; $2A:A370: 20 D9 8C
SEP #$10                ; $2A:A373: E2 10

CODE_2AA375:
LDY #$00                ; $2A:A375: A0 00
LDA [$2B],y             ; $2A:A377: B7 2B
CMP #$FF                ; $2A:A379: C9 FF
BEQ CODE_2AA385         ; $2A:A37B: F0 08
JSR CODE_2A8E54         ; $2A:A37D: 20 54 8E
JSR (PNTR_2AA387,x)     ; $2A:A380: FC 87 A3
BRA CODE_2AA375         ; $2A:A383: 80 F0

CODE_2AA385:
PLB                     ; $2A:A385: AB
RTL                     ; $2A:A386: 6B

PNTR_2AA387:
dw CODE_2AA3E1
dw CODE_2AA40E

CODE_2AA38B:
LDX #$B0                ; $2A:A38B: A2 B0
LDA #$41                ; $2A:A38D: A9 41
STA $00                 ; $2A:A38F: 85 00
JSR CODE_2A9924         ; $2A:A391: 20 24 99
LDA #$01                ; $2A:A394: A9 01
STA $00                 ; $2A:A396: 85 00
JSR CODE_2A9924         ; $2A:A398: 20 24 99
INC $00                 ; $2A:A39B: E6 00
JSR CODE_2A9924         ; $2A:A39D: 20 24 99
INC $00                 ; $2A:A3A0: E6 00
JSR CODE_2A9924         ; $2A:A3A2: 20 24 99
INC $00                 ; $2A:A3A5: E6 00
JSR CODE_2A9924         ; $2A:A3A7: 20 24 99

CODE_2AA3AA:
JSR CODE_2A9930         ; $2A:A3AA: 20 30 99
CPX #$50                ; $2A:A3AD: E0 50
BNE CODE_2AA3AA         ; $2A:A3AF: D0 F9
LDX #$50                ; $2A:A3B1: A2 50
LDA #$0D                ; $2A:A3B3: A9 0D
STA $00                 ; $2A:A3B5: 85 00
LDA #$0E                ; $2A:A3B7: A9 0E
STA $01                 ; $2A:A3B9: 85 01
LDA #$0F                ; $2A:A3BB: A9 0F
STA $02                 ; $2A:A3BD: 85 02
LDA #$10                ; $2A:A3BF: A9 10
STA $03                 ; $2A:A3C1: 85 03
LDA #$04                ; $2A:A3C3: A9 04
STA $04                 ; $2A:A3C5: 85 04
JSR CODE_2A975C         ; $2A:A3C7: 20 5C 97
LDA #$11                ; $2A:A3CA: A9 11
STA $00                 ; $2A:A3CC: 85 00
LDA #$12                ; $2A:A3CE: A9 12
STA $01                 ; $2A:A3D0: 85 01
LDA #$08                ; $2A:A3D2: A9 08
STA $04                 ; $2A:A3D4: 85 04
JSR CODE_2A974B         ; $2A:A3D6: 20 4B 97
LDA #$14                ; $2A:A3D9: A9 14
STA $00                 ; $2A:A3DB: 85 00
JSR CODE_2A9930         ; $2A:A3DD: 20 30 99
RTS                     ; $2A:A3E0: 60

CODE_2AA3E1:
REP #$10                ; $2A:A3E1: C2 10
LDX $00                 ; $2A:A3E3: A6 00
LDA #$3B                ; $2A:A3E5: A9 3B
JSR CODE_2A8CD9         ; $2A:A3E7: 20 D9 8C
LDA #$3E                ; $2A:A3EA: A9 3E
JSR CODE_2A8CEE         ; $2A:A3EC: 20 EE 8C

CODE_2AA3EF:
DEC $D8                 ; $2A:A3EF: C6 D8
BEQ CODE_2AA400         ; $2A:A3F1: F0 0D
INX                     ; $2A:A3F3: E8
LDA #$3C                ; $2A:A3F4: A9 3C
JSR CODE_2A8CD9         ; $2A:A3F6: 20 D9 8C
LDA #$3F                ; $2A:A3F9: A9 3F
JSR CODE_2A8CEE         ; $2A:A3FB: 20 EE 8C
BRA CODE_2AA3EF         ; $2A:A3FE: 80 EF

CODE_2AA400:
INX                     ; $2A:A400: E8
LDA #$3D                ; $2A:A401: A9 3D
JSR CODE_2A8CD9         ; $2A:A403: 20 D9 8C
LDA #$40                ; $2A:A406: A9 40
JSR CODE_2A8CEE         ; $2A:A408: 20 EE 8C
SEP #$10                ; $2A:A40B: E2 10
RTS                     ; $2A:A40D: 60

CODE_2AA40E:
REP #$10                ; $2A:A40E: C2 10
LDX $00                 ; $2A:A410: A6 00
LDA #$35                ; $2A:A412: A9 35
JSR CODE_2A8CD9         ; $2A:A414: 20 D9 8C
LDA #$38                ; $2A:A417: A9 38
JSR CODE_2A8CEE         ; $2A:A419: 20 EE 8C

CODE_2AA41C:
DEC $D8                 ; $2A:A41C: C6 D8
BEQ CODE_2AA43C         ; $2A:A41E: F0 1C
INX                     ; $2A:A420: E8
TXA                     ; $2A:A421: 8A
AND #$0F                ; $2A:A422: 29 0F
BNE CODE_2AA430         ; $2A:A424: D0 0A
REP #$20                ; $2A:A426: C2 20
TXA                     ; $2A:A428: 8A
CLC                     ; $2A:A429: 18
ADC #$01A0              ; $2A:A42A: 69 A0 01
TAX                     ; $2A:A42D: AA
SEP #$20                ; $2A:A42E: E2 20

CODE_2AA430:
LDA #$36                ; $2A:A430: A9 36
JSR CODE_2A8CD9         ; $2A:A432: 20 D9 8C
LDA #$39                ; $2A:A435: A9 39
JSR CODE_2A8CEE         ; $2A:A437: 20 EE 8C
BRA CODE_2AA41C         ; $2A:A43A: 80 E0

CODE_2AA43C:
INX                     ; $2A:A43C: E8
LDA #$37                ; $2A:A43D: A9 37
JSR CODE_2A8CD9         ; $2A:A43F: 20 D9 8C
LDA #$3A                ; $2A:A442: A9 3A
JSR CODE_2A8CEE         ; $2A:A444: 20 EE 8C
SEP #$10                ; $2A:A447: E2 10
RTS                     ; $2A:A449: 60

CODE_2AA44A:
SEP #$10                ; $2A:A44A: E2 10
JSR CODE_2AA38B         ; $2A:A44C: 20 8B A3
LDX #$50                ; $2A:A44F: A2 50
LDA #$0F                ; $2A:A451: A9 0F
STA $00                 ; $2A:A453: 85 00
LDA #$10                ; $2A:A455: A9 10
STA $01                 ; $2A:A457: 85 01
LDA #$0D                ; $2A:A459: A9 0D
STA $02                 ; $2A:A45B: 85 02
LDA #$0E                ; $2A:A45D: A9 0E
STA $03                 ; $2A:A45F: 85 03
LDA #$04                ; $2A:A461: A9 04
STA $04                 ; $2A:A463: 85 04
JSR CODE_2A975C         ; $2A:A465: 20 5C 97

CODE_2AA468:
LDY #$00                ; $2A:A468: A0 00
LDA [$2B],y             ; $2A:A46A: B7 2B
CMP #$FF                ; $2A:A46C: C9 FF
BEQ CODE_2AA478         ; $2A:A46E: F0 08
JSR CODE_2A8E54         ; $2A:A470: 20 54 8E
JSR (PNTR_2AA4F9,x)     ; $2A:A473: FC F9 A4
BRA CODE_2AA468         ; $2A:A476: 80 F0

CODE_2AA478:
LDA $0350               ; $2A:A478: AD 50 03
CMP #$19                ; $2A:A47B: C9 19
BNE CODE_2AA4F7         ; $2A:A47D: D0 78
LDA #$00                ; $2A:A47F: A9 00
XBA                     ; $2A:A481: EB
INC $034F               ; $2A:A482: EE 4F 03
REP #$10                ; $2A:A485: C2 10
LDY #$0000              ; $2A:A487: A0 00 00
LDX #$00B0              ; $2A:A48A: A2 B0 00
LDA #$CF                ; $2A:A48D: A9 CF
MVN $7F,$7F             ; $2A:A48F: 54 7F 7F
LDA #$00                ; $2A:A492: A9 00
XBA                     ; $2A:A494: EB
LDY #$01B0              ; $2A:A495: A0 B0 01
LDX #$0260              ; $2A:A498: A2 60 02
LDA #$CF                ; $2A:A49B: A9 CF
MVN $7F,$7F             ; $2A:A49D: 54 7F 7F
SEP #$10                ; $2A:A4A0: E2 10
LDA #$42                ; $2A:A4A2: A9 42
STA $00                 ; $2A:A4A4: 85 00
LDA #$43                ; $2A:A4A6: A9 43
STA $01                 ; $2A:A4A8: 85 01
REP #$20                ; $2A:A4AA: C2 20
PHB                     ; $2A:A4AC: 8B
LDY #$7F                ; $2A:A4AD: A0 7F
PHY                     ; $2A:A4AF: 5A
PLB                     ; $2A:A4B0: AB
LDY #$00                ; $2A:A4B1: A0 00
LDX #$00                ; $2A:A4B3: A2 00

CODE_2AA4B5:
LDA $00                 ; $2A:A4B5: A5 00
STA $00D0,x             ; $2A:A4B7: 9D D0 00
STA $00F0,x             ; $2A:A4BA: 9D F0 00
STA $0110,x             ; $2A:A4BD: 9D 10 01
STA $0130,x             ; $2A:A4C0: 9D 30 01
STA $0150,x             ; $2A:A4C3: 9D 50 01
STA $0170,x             ; $2A:A4C6: 9D 70 01
STA $0190,x             ; $2A:A4C9: 9D 90 01
STA $0280,x             ; $2A:A4CC: 9D 80 02
STA $02A0,x             ; $2A:A4CF: 9D A0 02
STA $02C0,x             ; $2A:A4D2: 9D C0 02
STA $02E0,x             ; $2A:A4D5: 9D E0 02
STA $0300,x             ; $2A:A4D8: 9D 00 03
STA $0320,x             ; $2A:A4DB: 9D 20 03
STA $0340,x             ; $2A:A4DE: 9D 40 03
INX                     ; $2A:A4E1: E8
INX                     ; $2A:A4E2: E8
TXA                     ; $2A:A4E3: 8A
AND #$000F              ; $2A:A4E4: 29 0F 00
BNE CODE_2AA4B5         ; $2A:A4E7: D0 CC
TYA                     ; $2A:A4E9: 98
BNE CODE_2AA4F4         ; $2A:A4EA: D0 08
INY                     ; $2A:A4EC: C8
LDA $00                 ; $2A:A4ED: A5 00
XBA                     ; $2A:A4EF: EB
STA $00                 ; $2A:A4F0: 85 00
BRA CODE_2AA4B5         ; $2A:A4F2: 80 C1

CODE_2AA4F4:
PLB                     ; $2A:A4F4: AB
SEP #$20                ; $2A:A4F5: E2 20

CODE_2AA4F7:
PLB                     ; $2A:A4F7: AB
RTL                     ; $2A:A4F8: 6B

PNTR_2AA4F9:
dw CODE_2AA3E1
dw CODE_2AA40E
dw CODE_2AA505
dw CODE_2AA5AB
dw CODE_2AA600
dw CODE_2AA65A

CODE_2AA505:
REP #$10                ; $2A:A505: C2 10
STZ $02                 ; $2A:A507: 64 02

CODE_2AA509:
LDX $00                 ; $2A:A509: A6 00
LDA $7F0000,x           ; $2A:A50B: BF 00 00 7F
CMP #$04                ; $2A:A50F: C9 04
BNE CODE_2AA562         ; $2A:A511: D0 4F
LDA $02                 ; $2A:A513: A5 02
STA $03                 ; $2A:A515: 85 03
LDA #$16                ; $2A:A517: A9 16
JSR CODE_2A8CD9         ; $2A:A519: 20 D9 8C
LDA $03                 ; $2A:A51C: A5 03
BEQ CODE_2AA532         ; $2A:A51E: F0 12
INX                     ; $2A:A520: E8
LDA #$18                ; $2A:A521: A9 18
JSR CODE_2A8CD9         ; $2A:A523: 20 D9 8C

CODE_2AA526:
DEC $03                 ; $2A:A526: C6 03
BEQ CODE_2AA532         ; $2A:A528: F0 08
INX                     ; $2A:A52A: E8
LDA #$1A                ; $2A:A52B: A9 1A
JSR CODE_2A8CD9         ; $2A:A52D: 20 D9 8C
BRA CODE_2AA526         ; $2A:A530: 80 F4

CODE_2AA532:
LDA $02                 ; $2A:A532: A5 02
STA $03                 ; $2A:A534: 85 03

CODE_2AA536:
LDA $03                 ; $2A:A536: A5 03
BEQ CODE_2AA54C         ; $2A:A538: F0 12
DEC $03                 ; $2A:A53A: C6 03
BEQ CODE_2AA546         ; $2A:A53C: F0 08
INX                     ; $2A:A53E: E8
LDA #$1B                ; $2A:A53F: A9 1B
JSR CODE_2A8CD9         ; $2A:A541: 20 D9 8C
BRA CODE_2AA536         ; $2A:A544: 80 F0

CODE_2AA546:
INX                     ; $2A:A546: E8
LDA #$19                ; $2A:A547: A9 19
JSR CODE_2A8CD9         ; $2A:A549: 20 D9 8C

CODE_2AA54C:
INX                     ; $2A:A54C: E8
LDA #$17                ; $2A:A54D: A9 17
JSR CODE_2A8CD9         ; $2A:A54F: 20 D9 8C
INC $02                 ; $2A:A552: E6 02
REP #$20                ; $2A:A554: C2 20
LDA $00                 ; $2A:A556: A5 00
CLC                     ; $2A:A558: 18
ADC #$000F              ; $2A:A559: 69 0F 00
STA $00                 ; $2A:A55C: 85 00
SEP #$20                ; $2A:A55E: E2 20
BRA CODE_2AA509         ; $2A:A560: 80 A7

CODE_2AA562:
INX                     ; $2A:A562: E8

CODE_2AA563:
LDA #$2D                ; $2A:A563: A9 2D
STA $02                 ; $2A:A565: 85 02

CODE_2AA567:
LDA $7EFFF0,x           ; $2A:A567: BF F0 FF 7E
CMP #$1B                ; $2A:A56B: C9 1B
BEQ CODE_2AA57F         ; $2A:A56D: F0 10
LDA $02                 ; $2A:A56F: A5 02
JSR CODE_2A8CD9         ; $2A:A571: 20 D9 8C
INX                     ; $2A:A574: E8
INC $02                 ; $2A:A575: E6 02
LDA $02                 ; $2A:A577: A5 02
CMP #$31                ; $2A:A579: C9 31
BEQ CODE_2AA563         ; $2A:A57B: F0 E6
BRA CODE_2AA567         ; $2A:A57D: 80 E8

CODE_2AA57F:
LDA $02                 ; $2A:A57F: A5 02
CLC                     ; $2A:A581: 18
ADC #$06                ; $2A:A582: 69 06
CMP #$35                ; $2A:A584: C9 35
BNE CODE_2AA58A         ; $2A:A586: D0 02
LDA #$31                ; $2A:A588: A9 31

CODE_2AA58A:
STA $02                 ; $2A:A58A: 85 02

CODE_2AA58C:
LDA $7EFFF0,x           ; $2A:A58C: BF F0 FF 7E
CMP #$04                ; $2A:A590: C9 04
BEQ CODE_2AA5A8         ; $2A:A592: F0 14
LDA $02                 ; $2A:A594: A5 02
JSR CODE_2A8CD9         ; $2A:A596: 20 D9 8C
INX                     ; $2A:A599: E8
INC $02                 ; $2A:A59A: E6 02
LDA $02                 ; $2A:A59C: A5 02
CMP #$35                ; $2A:A59E: C9 35
BNE CODE_2AA58C         ; $2A:A5A0: D0 EA
LDA #$31                ; $2A:A5A2: A9 31
STA $02                 ; $2A:A5A4: 85 02
BRA CODE_2AA58C         ; $2A:A5A6: 80 E4

CODE_2AA5A8:
SEP #$10                ; $2A:A5A8: E2 10
RTS                     ; $2A:A5AA: 60

CODE_2AA5AB:
REP #$10                ; $2A:A5AB: C2 10
REP #$20                ; $2A:A5AD: C2 20
LDA $DA                 ; $2A:A5AF: A5 DA
ASL A                   ; $2A:A5B1: 0A
TAY                     ; $2A:A5B2: A8
LDA.w DATA_2AA5EE,y     ; $2A:A5B3: B9 EE A5
STA $02                 ; $2A:A5B6: 85 02
SEP #$20                ; $2A:A5B8: E2 20
LDX $00                 ; $2A:A5BA: A6 00

CODE_2AA5BC:
LDA ($02)               ; $2A:A5BC: B2 02
BMI CODE_2AA5EB         ; $2A:A5BE: 30 2B
JSR CODE_2A8CD9         ; $2A:A5C0: 20 D9 8C
REP #$20                ; $2A:A5C3: C2 20
INC $02                 ; $2A:A5C5: E6 02
SEP #$20                ; $2A:A5C7: E2 20
INX                     ; $2A:A5C9: E8
TXA                     ; $2A:A5CA: 8A
AND #$0F                ; $2A:A5CB: 29 0F
BNE CODE_2AA5BC         ; $2A:A5CD: D0 ED
LDA $DA                 ; $2A:A5CF: A5 DA
BNE CODE_2AA5DF         ; $2A:A5D1: D0 0C
REP #$20                ; $2A:A5D3: C2 20
TXA                     ; $2A:A5D5: 8A
CLC                     ; $2A:A5D6: 18
ADC #$01A0              ; $2A:A5D7: 69 A0 01
TAX                     ; $2A:A5DA: AA
SEP #$20                ; $2A:A5DB: E2 20
BRA CODE_2AA5BC         ; $2A:A5DD: 80 DD

CODE_2AA5DF:
REP #$20                ; $2A:A5DF: C2 20
TXA                     ; $2A:A5E1: 8A
SEC                     ; $2A:A5E2: 38
SBC #$01C0              ; $2A:A5E3: E9 C0 01
TAX                     ; $2A:A5E6: AA
SEP #$20                ; $2A:A5E7: E2 20
BRA CODE_2AA5BC         ; $2A:A5E9: 80 D1

CODE_2AA5EB:
SEP #$10                ; $2A:A5EB: E2 10
RTS                     ; $2A:A5ED: 60

DATA_2AA5EE:
db $F2,$A5,$FB,$A5,$26,$27,$2B,$2C
db $09,$0A,$0B,$0C,$FF,$26,$27,$28
db $29,$FF

CODE_2AA600:
REP #$10                ; $2A:A600: C2 10
LDX $00                 ; $2A:A602: A6 00
LDA #$1C                ; $2A:A604: A9 1C
JSR CODE_2A8CD9         ; $2A:A606: 20 D9 8C

CODE_2AA609:
REP #$20                ; $2A:A609: C2 20
LDA $00                 ; $2A:A60B: A5 00
CLC                     ; $2A:A60D: 18
ADC #$000F              ; $2A:A60E: 69 0F 00
STA $00                 ; $2A:A611: 85 00
TAX                     ; $2A:A613: AA
SEP #$20                ; $2A:A614: E2 20
LDA $7F0000,x           ; $2A:A616: BF 00 00 7F
CMP #$19                ; $2A:A61A: C9 19
BEQ CODE_2AA651         ; $2A:A61C: F0 33
LDA #$1D                ; $2A:A61E: A9 1D
JSR CODE_2A8CD9         ; $2A:A620: 20 D9 8C

CODE_2AA623:
INX                     ; $2A:A623: E8
TXA                     ; $2A:A624: 8A
AND #$0F                ; $2A:A625: 29 0F
BNE CODE_2AA633         ; $2A:A627: D0 0A
REP #$20                ; $2A:A629: C2 20
TXA                     ; $2A:A62B: 8A
SEC                     ; $2A:A62C: 38
SBC #$01C0              ; $2A:A62D: E9 C0 01
TAX                     ; $2A:A630: AA
SEP #$20                ; $2A:A631: E2 20

CODE_2AA633:
LDA $7EFFF0,x           ; $2A:A633: BF F0 FF 7E
CMP #$04                ; $2A:A637: C9 04
BEQ CODE_2AA642         ; $2A:A639: F0 07
LDA #$1E                ; $2A:A63B: A9 1E
JSR CODE_2A8CD9         ; $2A:A63D: 20 D9 8C
BRA CODE_2AA623         ; $2A:A640: 80 E1

CODE_2AA642:
LDA $7F0000,x           ; $2A:A642: BF 00 00 7F
CMP #$04                ; $2A:A646: C9 04
BNE CODE_2AA609         ; $2A:A648: D0 BF
LDA #$1F                ; $2A:A64A: A9 1F
JSR CODE_2A8CD9         ; $2A:A64C: 20 D9 8C
BRA CODE_2AA609         ; $2A:A64F: 80 B8

CODE_2AA651:
INX                     ; $2A:A651: E8
LDA #$25                ; $2A:A652: A9 25
JSR CODE_2A8CD9         ; $2A:A654: 20 D9 8C
SEP #$10                ; $2A:A657: E2 10
RTS                     ; $2A:A659: 60

CODE_2AA65A:
REP #$10                ; $2A:A65A: C2 10
LDX $00                 ; $2A:A65C: A6 00
LDA #$20                ; $2A:A65E: A9 20
JSR CODE_2A8CD9         ; $2A:A660: 20 D9 8C
INX                     ; $2A:A663: E8
LDA #$21                ; $2A:A664: A9 21
JSR CODE_2A8CD9         ; $2A:A666: 20 D9 8C
REP #$20                ; $2A:A669: C2 20
LDA $00                 ; $2A:A66B: A5 00
CLC                     ; $2A:A66D: 18
ADC #$000F              ; $2A:A66E: 69 0F 00
STA $00                 ; $2A:A671: 85 00
TAX                     ; $2A:A673: AA
SEP #$20                ; $2A:A674: E2 20
LDA #$22                ; $2A:A676: A9 22
JSR CODE_2A8CD9         ; $2A:A678: 20 D9 8C
INX                     ; $2A:A67B: E8
LDA #$23                ; $2A:A67C: A9 23
JSR CODE_2A8CD9         ; $2A:A67E: 20 D9 8C
INX                     ; $2A:A681: E8
LDA #$24                ; $2A:A682: A9 24
JSR CODE_2A8CD9         ; $2A:A684: 20 D9 8C
REP #$20                ; $2A:A687: C2 20
LDA $00                 ; $2A:A689: A5 00
CLC                     ; $2A:A68B: 18
ADC #$0011              ; $2A:A68C: 69 11 00
TAX                     ; $2A:A68F: AA
SEP #$20                ; $2A:A690: E2 20
LDA #$2A                ; $2A:A692: A9 2A
JSR CODE_2A8CD9         ; $2A:A694: 20 D9 8C
SEP #$10                ; $2A:A697: E2 10
RTS                     ; $2A:A699: 60

CODE_2AA69A:
SEP #$10                ; $2A:A69A: E2 10
LDA $0727               ; $2A:A69C: AD 27 07
CMP #$05                ; $2A:A69F: C9 05
BNE CODE_2AA6A8         ; $2A:A6A1: D0 05
LDA #$12                ; $2A:A6A3: A9 12
STA $02C5               ; $2A:A6A5: 8D C5 02

CODE_2AA6A8:
LDX #$40                ; $2A:A6A8: A2 40
LDA #$28                ; $2A:A6AA: A9 28
STA $00                 ; $2A:A6AC: 85 00

CODE_2AA6AE:
JSR CODE_2A9930         ; $2A:A6AE: 20 30 99
CPX #$80                ; $2A:A6B1: E0 80
BNE CODE_2AA6AE         ; $2A:A6B3: D0 F9

CODE_2AA6B5:
LDY #$00                ; $2A:A6B5: A0 00
LDA [$2B],y             ; $2A:A6B7: B7 2B
CMP #$FF                ; $2A:A6B9: C9 FF
BEQ CODE_2AA6C5         ; $2A:A6BB: F0 08
JSR CODE_2A8E54         ; $2A:A6BD: 20 54 8E
JSR (PNTR_2AA6C7,x)     ; $2A:A6C0: FC C7 A6
BRA CODE_2AA6B5         ; $2A:A6C3: 80 F0

CODE_2AA6C5:
PLB                     ; $2A:A6C5: AB
RTL                     ; $2A:A6C6: 6B

PNTR_2AA6C7:
dw CODE_2AA6D7
dw CODE_2AA755
dw CODE_2AA8A5
dw CODE_2AA8D5
dw CODE_2AA926
dw CODE_2AA92C
dw CODE_2AA932
dw CODE_2AA938

CODE_2AA6D7:
REP #$10                ; $2A:A6D7: C2 10
LDX $00                 ; $2A:A6D9: A6 00
LDA $7F0000,x           ; $2A:A6DB: BF 00 00 7F
BNE CODE_2AA6E5         ; $2A:A6DF: D0 04
LDA #$05                ; $2A:A6E1: A9 05
BRA CODE_2AA6E7         ; $2A:A6E3: 80 02

CODE_2AA6E5:
LDA #$0C                ; $2A:A6E5: A9 0C

CODE_2AA6E7:
JSR CODE_2A8CD9         ; $2A:A6E7: 20 D9 8C
INX                     ; $2A:A6EA: E8
TXA                     ; $2A:A6EB: 8A
AND #$0F                ; $2A:A6EC: 29 0F
BNE CODE_2AA6FA         ; $2A:A6EE: D0 0A
REP #$20                ; $2A:A6F0: C2 20
TXA                     ; $2A:A6F2: 8A
CLC                     ; $2A:A6F3: 18
ADC #$01A0              ; $2A:A6F4: 69 A0 01
TAX                     ; $2A:A6F7: AA
SEP #$20                ; $2A:A6F8: E2 20

CODE_2AA6FA:
LDA $7F0000,x           ; $2A:A6FA: BF 00 00 7F
BNE CODE_2AA704         ; $2A:A6FE: D0 04
LDA #$2E                ; $2A:A700: A9 2E
BRA CODE_2AA706         ; $2A:A702: 80 02

CODE_2AA704:
LDA #$0B                ; $2A:A704: A9 0B

CODE_2AA706:
JSR CODE_2A8CD9         ; $2A:A706: 20 D9 8C

CODE_2AA709:
REP #$20                ; $2A:A709: C2 20
LDA $00                 ; $2A:A70B: A5 00
CLC                     ; $2A:A70D: 18
ADC #$0010              ; $2A:A70E: 69 10 00
STA $00                 ; $2A:A711: 85 00
TAX                     ; $2A:A713: AA
SEP #$20                ; $2A:A714: E2 20
DEC $D8                 ; $2A:A716: C6 D8
BEQ CODE_2AA736         ; $2A:A718: F0 1C
LDA #$19                ; $2A:A71A: A9 19
JSR CODE_2A8CD9         ; $2A:A71C: 20 D9 8C
INX                     ; $2A:A71F: E8
TXA                     ; $2A:A720: 8A
AND #$0F                ; $2A:A721: 29 0F
BNE CODE_2AA72F         ; $2A:A723: D0 0A
REP #$20                ; $2A:A725: C2 20
TXA                     ; $2A:A727: 8A
CLC                     ; $2A:A728: 18
ADC #$01A0              ; $2A:A729: 69 A0 01
TAX                     ; $2A:A72C: AA
SEP #$20                ; $2A:A72D: E2 20

CODE_2AA72F:
LDA #$06                ; $2A:A72F: A9 06
JSR CODE_2A8CD9         ; $2A:A731: 20 D9 8C
BRA CODE_2AA709         ; $2A:A734: 80 D3

CODE_2AA736:
LDA $DA                 ; $2A:A736: A5 DA
BEQ CODE_2AA747         ; $2A:A738: F0 0D
LDA #$1E                ; $2A:A73A: A9 1E
JSR CODE_2A8CD9         ; $2A:A73C: 20 D9 8C
INX                     ; $2A:A73F: E8
LDA #$1F                ; $2A:A740: A9 1F
JSR CODE_2A8CD9         ; $2A:A742: 20 D9 8C
BRA CODE_2AA752         ; $2A:A745: 80 0B

CODE_2AA747:
LDA #$26                ; $2A:A747: A9 26
JSR CODE_2A8CD9         ; $2A:A749: 20 D9 8C
INX                     ; $2A:A74C: E8
LDA #$27                ; $2A:A74D: A9 27
JSR CODE_2A8CD9         ; $2A:A74F: 20 D9 8C

CODE_2AA752:
SEP #$10                ; $2A:A752: E2 10
RTS                     ; $2A:A754: 60

CODE_2AA755:
REP #$10                ; $2A:A755: C2 10
LDA $D8                 ; $2A:A757: A5 D8
STA $DA                 ; $2A:A759: 85 DA
LDX $00                 ; $2A:A75B: A6 00
LDY #$0001              ; $2A:A75D: A0 01 00
LDA #$19                ; $2A:A760: A9 19
STA $02                 ; $2A:A762: 85 02
JSR CODE_2AA879         ; $2A:A764: 20 79 A8
JSR CODE_2A8CD9         ; $2A:A767: 20 D9 8C
DEC $DA                 ; $2A:A76A: C6 DA
JSR CODE_2AA86E         ; $2A:A76C: 20 6E A8
LDY #$0007              ; $2A:A76F: A0 07 00
JSR CODE_2AA88F         ; $2A:A772: 20 8F A8
JSR CODE_2A8CD9         ; $2A:A775: 20 D9 8C
DEC $DA                 ; $2A:A778: C6 DA
LDA #$13                ; $2A:A77A: A9 13
STA $02                 ; $2A:A77C: 85 02
JSR CODE_2AA861         ; $2A:A77E: 20 61 A8
JSR CODE_2AA86E         ; $2A:A781: 20 6E A8
LDA #$22                ; $2A:A784: A9 22
JSR CODE_2A8CD9         ; $2A:A786: 20 D9 8C
LDA $D8                 ; $2A:A789: A5 D8
STA $DA                 ; $2A:A78B: 85 DA
REP #$20                ; $2A:A78D: C2 20
INC $00                 ; $2A:A78F: E6 00
SEP #$20                ; $2A:A791: E2 20
LDA $00                 ; $2A:A793: A5 00
AND #$0F                ; $2A:A795: 29 0F
BNE CODE_2AA7AA         ; $2A:A797: D0 11
REP #$20                ; $2A:A799: C2 20
LDA $00                 ; $2A:A79B: A5 00
SEC                     ; $2A:A79D: 38
SBC #$01C0              ; $2A:A79E: E9 C0 01
STA $00                 ; $2A:A7A1: 85 00
TAX                     ; $2A:A7A3: AA
SEP #$20                ; $2A:A7A4: E2 20
LDA #$0E                ; $2A:A7A6: A9 0E
BRA CODE_2AA7B6         ; $2A:A7A8: 80 0C

CODE_2AA7AA:
LDX $00                 ; $2A:A7AA: A6 00
LDA #$06                ; $2A:A7AC: A9 06
STA $02                 ; $2A:A7AE: 85 02
LDY #$0002              ; $2A:A7B0: A0 02 00
JSR CODE_2AA879         ; $2A:A7B3: 20 79 A8

CODE_2AA7B6:
JSR CODE_2A8CD9         ; $2A:A7B6: 20 D9 8C
DEC $DA                 ; $2A:A7B9: C6 DA
JSR CODE_2AA86E         ; $2A:A7BB: 20 6E A8
LDA #$08                ; $2A:A7BE: A9 08
JSR CODE_2A8CD9         ; $2A:A7C0: 20 D9 8C
DEC $DA                 ; $2A:A7C3: C6 DA
LDA #$14                ; $2A:A7C5: A9 14
STA $02                 ; $2A:A7C7: 85 02
JSR CODE_2AA861         ; $2A:A7C9: 20 61 A8
JSR CODE_2AA86E         ; $2A:A7CC: 20 6E A8
LDA #$23                ; $2A:A7CF: A9 23
JSR CODE_2A8CD9         ; $2A:A7D1: 20 D9 8C
REP #$20                ; $2A:A7D4: C2 20
INC $00                 ; $2A:A7D6: E6 00
SEP #$20                ; $2A:A7D8: E2 20
LDX $00                 ; $2A:A7DA: A6 00
LDA $D8                 ; $2A:A7DC: A5 D8
STA $DA                 ; $2A:A7DE: 85 DA
LDA #$13                ; $2A:A7E0: A9 13
STA $02                 ; $2A:A7E2: 85 02
LDY #$0003              ; $2A:A7E4: A0 03 00
JSR CODE_2AA879         ; $2A:A7E7: 20 79 A8
JSR CODE_2A8CD9         ; $2A:A7EA: 20 D9 8C
DEC $DA                 ; $2A:A7ED: C6 DA
JSR CODE_2AA86E         ; $2A:A7EF: 20 6E A8
LDA #$09                ; $2A:A7F2: A9 09
JSR CODE_2A8CD9         ; $2A:A7F4: 20 D9 8C
DEC $DA                 ; $2A:A7F7: C6 DA
LDA #$11                ; $2A:A7F9: A9 11
STA $02                 ; $2A:A7FB: 85 02
JSR CODE_2AA861         ; $2A:A7FD: 20 61 A8
JSR CODE_2AA86E         ; $2A:A800: 20 6E A8
LDA #$24                ; $2A:A803: A9 24
JSR CODE_2A8CD9         ; $2A:A805: 20 D9 8C
REP #$20                ; $2A:A808: C2 20
INC $00                 ; $2A:A80A: E6 00
SEP #$20                ; $2A:A80C: E2 20
LDX $00                 ; $2A:A80E: A6 00
LDA $D8                 ; $2A:A810: A5 D8
STA $DA                 ; $2A:A812: 85 DA
LDA #$14                ; $2A:A814: A9 14
STA $02                 ; $2A:A816: 85 02
LDY #$0004              ; $2A:A818: A0 04 00
JSR CODE_2AA879         ; $2A:A81B: 20 79 A8
JSR CODE_2A8CD9         ; $2A:A81E: 20 D9 8C
DEC $DA                 ; $2A:A821: C6 DA
JSR CODE_2AA86E         ; $2A:A823: 20 6E A8
LDA #$06                ; $2A:A826: A9 06
STA $02                 ; $2A:A828: 85 02
LDY #$000A              ; $2A:A82A: A0 0A 00
JSR CODE_2AA88F         ; $2A:A82D: 20 8F A8
LDA $7F0000,x           ; $2A:A830: BF 00 00 7F
CMP #$14                ; $2A:A834: C9 14
BNE CODE_2AA83B         ; $2A:A836: D0 03
LDY #$001B              ; $2A:A838: A0 1B 00

CODE_2AA83B:
TYA                     ; $2A:A83B: 98
JSR CODE_2A8CD9         ; $2A:A83C: 20 D9 8C
DEC $DA                 ; $2A:A83F: C6 DA
LDA #$12                ; $2A:A841: A9 12
STA $02                 ; $2A:A843: 85 02
JSR CODE_2AA861         ; $2A:A845: 20 61 A8
JSR CODE_2AA86E         ; $2A:A848: 20 6E A8
LDA #$25                ; $2A:A84B: A9 25
JSR CODE_2A8CD9         ; $2A:A84D: 20 D9 8C
INX                     ; $2A:A850: E8
LDA $7F0000,x           ; $2A:A851: BF 00 00 7F
CMP #$2A                ; $2A:A855: C9 2A
BNE CODE_2AA85E         ; $2A:A857: D0 05
LDA #$2C                ; $2A:A859: A9 2C
JSR CODE_2A8CD9         ; $2A:A85B: 20 D9 8C

CODE_2AA85E:
SEP #$10                ; $2A:A85E: E2 10
RTS                     ; $2A:A860: 60

CODE_2AA861:
JSR CODE_2AA86E         ; $2A:A861: 20 6E A8
LDA $02                 ; $2A:A864: A5 02
JSR CODE_2A8CD9         ; $2A:A866: 20 D9 8C
DEC $DA                 ; $2A:A869: C6 DA
BNE CODE_2AA861         ; $2A:A86B: D0 F4
RTS                     ; $2A:A86D: 60

CODE_2AA86E:
REP #$20                ; $2A:A86E: C2 20
TXA                     ; $2A:A870: 8A
CLC                     ; $2A:A871: 18
ADC #$0010              ; $2A:A872: 69 10 00
TAX                     ; $2A:A875: AA
SEP #$20                ; $2A:A876: E2 20
RTS                     ; $2A:A878: 60

CODE_2AA879:
LDA $7F0000,x           ; $2A:A879: BF 00 00 7F
BEQ CODE_2AA88D         ; $2A:A87D: F0 0E
CMP $02                 ; $2A:A87F: C5 02
BEQ CODE_2AA888         ; $2A:A881: F0 05
TYA                     ; $2A:A883: 98
CLC                     ; $2A:A884: 18
ADC #$08                ; $2A:A885: 69 08
TAY                     ; $2A:A887: A8

CODE_2AA888:
TYA                     ; $2A:A888: 98
CLC                     ; $2A:A889: 18
ADC #$0C                ; $2A:A88A: 69 0C
TAY                     ; $2A:A88C: A8

CODE_2AA88D:
TYA                     ; $2A:A88D: 98
RTS                     ; $2A:A88E: 60

CODE_2AA88F:
LDA $7F0000,x           ; $2A:A88F: BF 00 00 7F
BEQ CODE_2AA8A3         ; $2A:A893: F0 0E
CMP $02                 ; $2A:A895: C5 02
BEQ CODE_2AA89E         ; $2A:A897: F0 05
TYA                     ; $2A:A899: 98
CLC                     ; $2A:A89A: 18
ADC #$02                ; $2A:A89B: 69 02
TAY                     ; $2A:A89D: A8

CODE_2AA89E:
TYA                     ; $2A:A89E: 98
CLC                     ; $2A:A89F: 18
ADC #$13                ; $2A:A8A0: 69 13
TAY                     ; $2A:A8A2: A8

CODE_2AA8A3:
TYA                     ; $2A:A8A3: 98
RTS                     ; $2A:A8A4: 60

CODE_2AA8A5:
REP #$10                ; $2A:A8A5: C2 10
LDX $00                 ; $2A:A8A7: A6 00
LDA $7EFFFF,x           ; $2A:A8A9: BF FF FF 7E
CMP #$25                ; $2A:A8AD: C9 25
BEQ CODE_2AA8B5         ; $2A:A8AF: F0 04
LDA #$2A                ; $2A:A8B1: A9 2A
BRA CODE_2AA8B7         ; $2A:A8B3: 80 02

CODE_2AA8B5:
LDA #$2C                ; $2A:A8B5: A9 2C

CODE_2AA8B7:
JSR CODE_2A8CD9         ; $2A:A8B7: 20 D9 8C
INX                     ; $2A:A8BA: E8
LDA #$2A                ; $2A:A8BB: A9 2A
JSR CODE_2A8CD9         ; $2A:A8BD: 20 D9 8C
INX                     ; $2A:A8C0: E8
LDA $7F0001,x           ; $2A:A8C1: BF 01 00 7F
CMP #$22                ; $2A:A8C5: C9 22
BEQ CODE_2AA8CD         ; $2A:A8C7: F0 04
LDA #$2A                ; $2A:A8C9: A9 2A
BRA CODE_2AA8CF         ; $2A:A8CB: 80 02

CODE_2AA8CD:
LDA #$2B                ; $2A:A8CD: A9 2B

CODE_2AA8CF:
JSR CODE_2A8CD9         ; $2A:A8CF: 20 D9 8C
SEP #$10                ; $2A:A8D2: E2 10
RTS                     ; $2A:A8D4: 60

CODE_2AA8D5:
REP #$10                ; $2A:A8D5: C2 10
LDX $00                 ; $2A:A8D7: A6 00
LDA $7F0000,x           ; $2A:A8D9: BF 00 00 7F
CMP #$27                ; $2A:A8DD: C9 27
BEQ CODE_2AA8E9         ; $2A:A8DF: F0 08
CMP #$28                ; $2A:A8E1: C9 28
BNE CODE_2AA8EE         ; $2A:A8E3: D0 09
LDA #$21                ; $2A:A8E5: A9 21
BRA CODE_2AA8EB         ; $2A:A8E7: 80 02

CODE_2AA8E9:
LDA #$29                ; $2A:A8E9: A9 29

CODE_2AA8EB:
JSR CODE_2A8CD9         ; $2A:A8EB: 20 D9 8C

CODE_2AA8EE:
INX                     ; $2A:A8EE: E8
TXA                     ; $2A:A8EF: 8A
AND #$0F                ; $2A:A8F0: 29 0F
BNE CODE_2AA8FE         ; $2A:A8F2: D0 0A
REP #$20                ; $2A:A8F4: C2 20
TXA                     ; $2A:A8F6: 8A
CLC                     ; $2A:A8F7: 18
ADC #$01A0              ; $2A:A8F8: 69 A0 01
TAX                     ; $2A:A8FB: AA
SEP #$20                ; $2A:A8FC: E2 20

CODE_2AA8FE:
LDA $D8                 ; $2A:A8FE: A5 D8
BEQ CODE_2AA916         ; $2A:A900: F0 14
DEC $D8                 ; $2A:A902: C6 D8

CODE_2AA904:
LDA $7F0000,x           ; $2A:A904: BF 00 00 7F
CMP #$28                ; $2A:A908: C9 28
BNE CODE_2AA911         ; $2A:A90A: D0 05
LDA #$2D                ; $2A:A90C: A9 2D
JSR CODE_2A8CD9         ; $2A:A90E: 20 D9 8C

CODE_2AA911:
INX                     ; $2A:A911: E8
DEC $D8                 ; $2A:A912: C6 D8
BNE CODE_2AA904         ; $2A:A914: D0 EE

CODE_2AA916:
LDA $7F0000,x           ; $2A:A916: BF 00 00 7F
CMP #$28                ; $2A:A91A: C9 28
BNE CODE_2AA923         ; $2A:A91C: D0 05
LDA #$20                ; $2A:A91E: A9 20
JSR CODE_2A8CD9         ; $2A:A920: 20 D9 8C

CODE_2AA923:
SEP #$10                ; $2A:A923: E2 10
RTS                     ; $2A:A925: 60

CODE_2AA926:
LDA #$2F                ; $2A:A926: A9 2F
STA $02                 ; $2A:A928: 85 02
BRA CODE_2AA93C         ; $2A:A92A: 80 10

CODE_2AA92C:
LDA #$30                ; $2A:A92C: A9 30
STA $02                 ; $2A:A92E: 85 02
BRA CODE_2AA93C         ; $2A:A930: 80 0A

CODE_2AA932:
LDA #$31                ; $2A:A932: A9 31
STA $02                 ; $2A:A934: 85 02
BRA CODE_2AA93C         ; $2A:A936: 80 04

CODE_2AA938:
LDA #$32                ; $2A:A938: A9 32
STA $02                 ; $2A:A93A: 85 02

CODE_2AA93C:
REP #$10                ; $2A:A93C: C2 10
LDX $00                 ; $2A:A93E: A6 00
LDA $02                 ; $2A:A940: A5 02
JSR CODE_2A8CD9         ; $2A:A942: 20 D9 8C
SEP #$10                ; $2A:A945: E2 10
RTS                     ; $2A:A947: 60

CODE_2AA948:
SEP #$10                ; $2A:A948: E2 10

CODE_2AA94A:
LDY #$00                ; $2A:A94A: A0 00
LDA [$2B],y             ; $2A:A94C: B7 2B
CMP #$FF                ; $2A:A94E: C9 FF
BEQ CODE_2AA95A         ; $2A:A950: F0 08
JSR CODE_2A8E54         ; $2A:A952: 20 54 8E
JSR (PNTR_2AA95C,x)     ; $2A:A955: FC 5C A9
BRA CODE_2AA94A         ; $2A:A958: 80 F0

CODE_2AA95A:
PLB                     ; $2A:A95A: AB
RTL                     ; $2A:A95B: 6B

PNTR_2AA95C:
dw CODE_2AA966
dw CODE_2AA9B7
dw CODE_2AA9F6
dw CODE_2AAA12
dw CODE_2AAA57

CODE_2AA966:
REP #$30                ; $2A:A966: C2 30
LDA #$A9AF              ; $2A:A968: A9 AF A9
STA $02                 ; $2A:A96B: 85 02
LDA #$A9B3              ; $2A:A96D: A9 B3 A9
STA $04                 ; $2A:A970: 85 04
SEP #$20                ; $2A:A972: E2 20
JSR CODE_2AA97A         ; $2A:A974: 20 7A A9
SEP #$10                ; $2A:A977: E2 10
RTS                     ; $2A:A979: 60

CODE_2AA97A:
LDX $00                 ; $2A:A97A: A6 00

CODE_2AA97C:
LDY #$0000              ; $2A:A97C: A0 00 00

CODE_2AA97F:
LDA ($02),y             ; $2A:A97F: B1 02
JSR CODE_2A8CD9         ; $2A:A981: 20 D9 8C
LDA ($04),y             ; $2A:A984: B1 04
JSR CODE_2A8CEE         ; $2A:A986: 20 EE 8C
INX                     ; $2A:A989: E8
TXA                     ; $2A:A98A: 8A
AND #$0F                ; $2A:A98B: 29 0F
BNE CODE_2AA9A4         ; $2A:A98D: D0 15
REP #$20                ; $2A:A98F: C2 20
TXA                     ; $2A:A991: 8A
CMP #$01B0              ; $2A:A992: C9 B0 01
BCS CODE_2AA99D         ; $2A:A995: B0 06
CLC                     ; $2A:A997: 18
ADC #$01A0              ; $2A:A998: 69 A0 01
BRA CODE_2AA9A1         ; $2A:A99B: 80 04

CODE_2AA99D:
SEC                     ; $2A:A99D: 38
SBC #$01C0              ; $2A:A99E: E9 C0 01

CODE_2AA9A1:
TAX                     ; $2A:A9A1: AA
SEP #$20                ; $2A:A9A2: E2 20

CODE_2AA9A4:
INY                     ; $2A:A9A4: C8
TYA                     ; $2A:A9A5: 98
AND #$03                ; $2A:A9A6: 29 03
BNE CODE_2AA97F         ; $2A:A9A8: D0 D5
DEC $D8                 ; $2A:A9AA: C6 D8
BNE CODE_2AA97C         ; $2A:A9AC: D0 CE
RTS                     ; $2A:A9AE: 60
db $04,$05,$06,$07
db $02,$03,$00,$01

CODE_2AA9B7:
REP #$30                ; $2A:A9B7: C2 30
LDA #$A9EE              ; $2A:A9B9: A9 EE A9
STA $02                 ; $2A:A9BC: 85 02
LDA #$A9F2              ; $2A:A9BE: A9 F2 A9
STA $04                 ; $2A:A9C1: 85 04
SEP #$20                ; $2A:A9C3: E2 20
JSR CODE_2AA9CB         ; $2A:A9C5: 20 CB A9
SEP #$10                ; $2A:A9C8: E2 10
RTS                     ; $2A:A9CA: 60

CODE_2AA9CB:
LDY #$0000              ; $2A:A9CB: A0 00 00

CODE_2AA9CE:
LDX $00                 ; $2A:A9CE: A6 00
LDA ($02),y             ; $2A:A9D0: B1 02
JSR CODE_2A8CD9         ; $2A:A9D2: 20 D9 8C
INX                     ; $2A:A9D5: E8
LDA ($04),y             ; $2A:A9D6: B1 04
JSR CODE_2A8CD9         ; $2A:A9D8: 20 D9 8C
REP #$20                ; $2A:A9DB: C2 20
LDA $00                 ; $2A:A9DD: A5 00
CLC                     ; $2A:A9DF: 18
ADC #$0010              ; $2A:A9E0: 69 10 00
STA $00                 ; $2A:A9E3: 85 00
SEP #$20                ; $2A:A9E5: E2 20
INY                     ; $2A:A9E7: C8
TYA                     ; $2A:A9E8: 98
AND #$03                ; $2A:A9E9: 29 03
BNE CODE_2AA9CE         ; $2A:A9EB: D0 E1
RTS                     ; $2A:A9ED: 60
db $04,$08,$08,$02
db $07,$09,$09,$01

CODE_2AA9F6:
REP #$10                ; $2A:A9F6: C2 10
LDX $00                 ; $2A:A9F8: A6 00
LDA #$04                ; $2A:A9FA: A9 04
JSR CODE_2A8CD9         ; $2A:A9FC: 20 D9 8C
LDA #$02                ; $2A:A9FF: A9 02
JSR CODE_2A8CEE         ; $2A:AA01: 20 EE 8C
INX                     ; $2A:AA04: E8
LDA #$07                ; $2A:AA05: A9 07
JSR CODE_2A8CD9         ; $2A:AA07: 20 D9 8C
LDA #$01                ; $2A:AA0A: A9 01
JSR CODE_2A8CEE         ; $2A:AA0C: 20 EE 8C
SEP #$10                ; $2A:AA0F: E2 10
RTS                     ; $2A:AA11: 60

CODE_2AAA12:
REP #$30                ; $2A:AA12: C2 30
LDA $D8                 ; $2A:AA14: A5 D8
STA $DA                 ; $2A:AA16: 85 DA
LDA #$AA47              ; $2A:AA18: A9 47 AA
STA $02                 ; $2A:AA1B: 85 02
LDA #$AA4B              ; $2A:AA1D: A9 4B AA
STA $04                 ; $2A:AA20: 85 04
SEP #$20                ; $2A:AA22: E2 20
JSR CODE_2AA97A         ; $2A:AA24: 20 7A A9
REP #$20                ; $2A:AA27: C2 20
LDA $DA                 ; $2A:AA29: A5 DA
STA $D8                 ; $2A:AA2B: 85 D8
LDA $00                 ; $2A:AA2D: A5 00
CLC                     ; $2A:AA2F: 18
ADC #$0020              ; $2A:AA30: 69 20 00
STA $00                 ; $2A:AA33: 85 00
LDA #$AA4F              ; $2A:AA35: A9 4F AA
STA $02                 ; $2A:AA38: 85 02
LDA #$AA53              ; $2A:AA3A: A9 53 AA
STA $04                 ; $2A:AA3D: 85 04
SEP #$20                ; $2A:AA3F: E2 20
JSR CODE_2AA97A         ; $2A:AA41: 20 7A A9
SEP #$10                ; $2A:AA44: E2 10
RTS                     ; $2A:AA46: 60
db $04,$05,$06,$07
db $0E,$0F,$10,$11
db $0E,$0F,$10,$11
db $02,$03,$00,$01

CODE_2AAA57:
REP #$30                ; $2A:AA57: C2 30
LDA #$AA87              ; $2A:AA59: A9 87 AA
STA $02                 ; $2A:AA5C: 85 02
LDA #$AA8B              ; $2A:AA5E: A9 8B AA
STA $04                 ; $2A:AA61: 85 04
LDA $00                 ; $2A:AA63: A5 00
PHA                     ; $2A:AA65: 48
SEP #$20                ; $2A:AA66: E2 20
JSR CODE_2AA9CB         ; $2A:AA68: 20 CB A9
REP #$20                ; $2A:AA6B: C2 20
PLA                     ; $2A:AA6D: 68
INC A                   ; $2A:AA6E: 1A
INC A                   ; $2A:AA6F: 1A
STA $00                 ; $2A:AA70: 85 00
AND #$000F              ; $2A:AA72: 29 0F 00
BNE CODE_2AAA7F         ; $2A:AA75: D0 08
LDA $00                 ; $2A:AA77: A5 00
CLC                     ; $2A:AA79: 18
ADC #$01A0              ; $2A:AA7A: 69 A0 01
STA $00                 ; $2A:AA7D: 85 00

CODE_2AAA7F:
SEP #$20                ; $2A:AA7F: E2 20
JSR CODE_2AA9CB         ; $2A:AA81: 20 CB A9
SEP #$10                ; $2A:AA84: E2 10
RTS                     ; $2A:AA86: 60
db $0A,$0C,$0D,$0A
db $0B,$0C,$0D,$0B

CODE_2AAA8F:
SEP #$10                ; $2A:AA8F: E2 10
LDX #$10                ; $2A:AA91: A2 10
LDA #$1B                ; $2A:AA93: A9 1B
STA $00                 ; $2A:AA95: 85 00
JSR CODE_2A9930         ; $2A:AA97: 20 30 99
LDA #$1E                ; $2A:AA9A: A9 1E
STA $00                 ; $2A:AA9C: 85 00
JSR CODE_2A9930         ; $2A:AA9E: 20 30 99
LDX #$50                ; $2A:AAA1: A2 50
LDA #$3B                ; $2A:AAA3: A9 3B
STA $00                 ; $2A:AAA5: 85 00
JSR CODE_2A9930         ; $2A:AAA7: 20 30 99
JSR CODE_2A9930         ; $2A:AAAA: 20 30 99
JSR CODE_2A9930         ; $2A:AAAD: 20 30 99
JSR CODE_2A9930         ; $2A:AAB0: 20 30 99
JSR CODE_2A9930         ; $2A:AAB3: 20 30 99

CODE_2AAAB6:
LDY #$00                ; $2A:AAB6: A0 00
LDA [$2B],y             ; $2A:AAB8: B7 2B
CMP #$FF                ; $2A:AABA: C9 FF
BEQ CODE_2AAAC6         ; $2A:AABC: F0 08
JSR CODE_2A8E54         ; $2A:AABE: 20 54 8E
JSR (PNTR_2AAAC8,x)     ; $2A:AAC1: FC C8 AA
BRA CODE_2AAAB6         ; $2A:AAC4: 80 F0

CODE_2AAAC6:
PLB                     ; $2A:AAC6: AB
RTL                     ; $2A:AAC7: 6B

PNTR_2AAAC8:
dw CODE_2AAACE
dw CODE_2AAB8D
dw CODE_2AABB1

CODE_2AAACE:
LDA #$2A                ; $2A:AACE: A9 2A
STA $08                 ; $2A:AAD0: 85 08
STA $0B                 ; $2A:AAD2: 85 0B
STA $0E                 ; $2A:AAD4: 85 0E
REP #$30                ; $2A:AAD6: C2 30
LDX $D8                 ; $2A:AAD8: A6 D8
LDA.w DATA_2AAB0D,x     ; $2A:AADA: BD 0D AB
STA $06                 ; $2A:AADD: 85 06
LDA.w DATA_2AAB19,x     ; $2A:AADF: BD 19 AB
STA $09                 ; $2A:AAE2: 85 09
LDA.w DATA_2AAB25,x     ; $2A:AAE4: BD 25 AB
STA $0C                 ; $2A:AAE7: 85 0C
STZ $04                 ; $2A:AAE9: 64 04
SEP #$20                ; $2A:AAEB: E2 20
LDA.w DATA_2AAB01,x     ; $2A:AAED: BD 01 AB
STA $0F                 ; $2A:AAF0: 85 0F
LDX $00                 ; $2A:AAF2: A6 00
LDY #$0000              ; $2A:AAF4: A0 00 00
LDA [$0C]               ; $2A:AAF7: A7 0C
STA $02                 ; $2A:AAF9: 85 02
JSR CODE_2A8FA7         ; $2A:AAFB: 20 A7 8F
SEP #$10                ; $2A:AAFE: E2 10
RTS                     ; $2A:AB00: 60

DATA_2AAB01:
db $04,$00,$02,$00,$02,$00,$02,$00
db $02,$00,$03,$00

DATA_2AAB0D:
db $31,$AB,$3E,$AB,$46,$AB,$52,$AB
db $56,$AB,$63,$AB

DATA_2AAB19:
db $72,$AB,$78,$AB,$78,$AB,$78,$AB
db $78,$AB,$7A,$AB

DATA_2AAB25:
db $7E,$AB,$82,$AB,$84,$AB,$86,$AB
db $88,$AB,$8A,$AB,$03,$04,$0C,$0D
db $0E,$0C,$12,$16,$10,$11,$17,$1C
db $1A,$0F,$03,$04,$06,$18,$0C,$12
db $13,$16,$06,$19,$03,$04,$06,$1C
db $1D,$1A,$1B,$1C,$1D,$10,$11,$05
db $1A,$02,$05,$03,$04,$06,$07,$0B
db $0C,$0C,$12,$13,$14,$15,$01,$00
db $02,$02,$05,$08,$09,$0A,$0B,$0B
db $0C,$0C,$0C,$0C,$0C,$10,$00,$10
db $00,$12,$00,$10,$00,$0D,$00,$10
db $00,$02,$03,$06,$02,$04,$04,$06
db $06,$03,$01,$06,$07,$03,$06,$06

CODE_2AAB8D:
REP #$10                ; $2A:AB8D: C2 10
LDX $00                 ; $2A:AB8F: A6 00
LDA #$2B                ; $2A:AB91: A9 2B
STA $02                 ; $2A:AB93: 85 02
LDA #$37                ; $2A:AB95: A9 37
STA $03                 ; $2A:AB97: 85 03

CODE_2AAB99:
LDA $02                 ; $2A:AB99: A5 02
JSR CODE_2A8CD9         ; $2A:AB9B: 20 D9 8C
LDA $03                 ; $2A:AB9E: A5 03
JSR CODE_2A8CEE         ; $2A:ABA0: 20 EE 8C
CMP #$3A                ; $2A:ABA3: C9 3A
BEQ CODE_2AABAE         ; $2A:ABA5: F0 07
INX                     ; $2A:ABA7: E8
INC $02                 ; $2A:ABA8: E6 02
INC $03                 ; $2A:ABAA: E6 03
BRA CODE_2AAB99         ; $2A:ABAC: 80 EB

CODE_2AABAE:
SEP #$10                ; $2A:ABAE: E2 10
RTS                     ; $2A:ABB0: 60

CODE_2AABB1:
REP #$10                ; $2A:ABB1: C2 10
LDX $00                 ; $2A:ABB3: A6 00
LDY #$0004              ; $2A:ABB5: A0 04 00
LDA #$1F                ; $2A:ABB8: A9 1F
STA $02                 ; $2A:ABBA: 85 02
JSR CODE_2AABEA         ; $2A:ABBC: 20 EA AB
LDY #$0008              ; $2A:ABBF: A0 08 00
REP #$20                ; $2A:ABC2: C2 20
LDA $00                 ; $2A:ABC4: A5 00
CLC                     ; $2A:ABC6: 18
ADC #$000E              ; $2A:ABC7: 69 0E 00
STA $00                 ; $2A:ABCA: 85 00
TAX                     ; $2A:ABCC: AA
SEP #$20                ; $2A:ABCD: E2 20
JSR CODE_2AABEA         ; $2A:ABCF: 20 EA AB
LDY #$0008              ; $2A:ABD2: A0 08 00
LDA #$2F                ; $2A:ABD5: A9 2F
STA $02                 ; $2A:ABD7: 85 02
REP #$20                ; $2A:ABD9: C2 20
LDA $00                 ; $2A:ABDB: A5 00
CLC                     ; $2A:ABDD: 18
ADC #$0010              ; $2A:ABDE: 69 10 00
TAX                     ; $2A:ABE1: AA
SEP #$20                ; $2A:ABE2: E2 20
JSR CODE_2AABEA         ; $2A:ABE4: 20 EA AB
SEP #$10                ; $2A:ABE7: E2 10
RTS                     ; $2A:ABE9: 60

CODE_2AABEA:
LDA $02                 ; $2A:ABEA: A5 02
JSR CODE_2A8CD9         ; $2A:ABEC: 20 D9 8C
INC $02                 ; $2A:ABEF: E6 02
INX                     ; $2A:ABF1: E8
TXA                     ; $2A:ABF2: 8A
AND #$0F                ; $2A:ABF3: 29 0F
BNE CODE_2AAC01         ; $2A:ABF5: D0 0A
REP #$20                ; $2A:ABF7: C2 20
TXA                     ; $2A:ABF9: 8A
SEC                     ; $2A:ABFA: 38
SBC #$01C0              ; $2A:ABFB: E9 C0 01
TAX                     ; $2A:ABFE: AA
SEP #$20                ; $2A:ABFF: E2 20

CODE_2AAC01:
DEY                     ; $2A:AC01: 88
BNE CODE_2AABEA         ; $2A:AC02: D0 E6
RTS                     ; $2A:AC04: 60

CODE_2AAC05:
SEP #$10                ; $2A:AC05: E2 10
LDA #$00                ; $2A:AC07: A9 00
STA $00                 ; $2A:AC09: 85 00
INC A                   ; $2A:AC0B: 1A
STA $01                 ; $2A:AC0C: 85 01
INC A                   ; $2A:AC0E: 1A
STA $02                 ; $2A:AC0F: 85 02
INC A                   ; $2A:AC11: 1A
STA $03                 ; $2A:AC12: 85 03
LDX #$00                ; $2A:AC14: A2 00
JSR CODE_2AAC59         ; $2A:AC16: 20 59 AC
LDA #$04                ; $2A:AC19: A9 04
STA $00                 ; $2A:AC1B: 85 00
INC A                   ; $2A:AC1D: 1A
STA $01                 ; $2A:AC1E: 85 01
INC A                   ; $2A:AC20: 1A
STA $02                 ; $2A:AC21: 85 02
INC A                   ; $2A:AC23: 1A
STA $03                 ; $2A:AC24: 85 03
LDX #$10                ; $2A:AC26: A2 10
JSR CODE_2AAC59         ; $2A:AC28: 20 59 AC
LDA #$08                ; $2A:AC2B: A9 08
STA $00                 ; $2A:AC2D: 85 00
INC A                   ; $2A:AC2F: 1A
STA $01                 ; $2A:AC30: 85 01
INC A                   ; $2A:AC32: 1A
STA $02                 ; $2A:AC33: 85 02
INC A                   ; $2A:AC35: 1A
STA $03                 ; $2A:AC36: 85 03
LDX #$20                ; $2A:AC38: A2 20
JSR CODE_2AAC59         ; $2A:AC3A: 20 59 AC
LDA #$0C                ; $2A:AC3D: A9 0C
STA $00                 ; $2A:AC3F: 85 00
INC A                   ; $2A:AC41: 1A
STA $01                 ; $2A:AC42: 85 01
INC A                   ; $2A:AC44: 1A
STA $02                 ; $2A:AC45: 85 02
INC A                   ; $2A:AC47: 1A
STA $03                 ; $2A:AC48: 85 03
LDX #$30                ; $2A:AC4A: A2 30
JSR CODE_2AAC59         ; $2A:AC4C: 20 59 AC
TXA                     ; $2A:AC4F: 8A
CLC                     ; $2A:AC50: 18
ADC #$30                ; $2A:AC51: 69 30
TAX                     ; $2A:AC53: AA
JSR CODE_2AAC8B         ; $2A:AC54: 20 8B AC
PLB                     ; $2A:AC57: AB
RTL                     ; $2A:AC58: 6B

CODE_2AAC59:
LDA $00                 ; $2A:AC59: A5 00
JSR CODE_2A8D03         ; $2A:AC5B: 20 03 8D
JSR CODE_2A8D25         ; $2A:AC5E: 20 25 8D
INX                     ; $2A:AC61: E8
LDA $01                 ; $2A:AC62: A5 01
JSR CODE_2A8D03         ; $2A:AC64: 20 03 8D
JSR CODE_2A8D25         ; $2A:AC67: 20 25 8D
INX                     ; $2A:AC6A: E8
LDA $02                 ; $2A:AC6B: A5 02
JSR CODE_2A8D03         ; $2A:AC6D: 20 03 8D
JSR CODE_2A8D25         ; $2A:AC70: 20 25 8D
INX                     ; $2A:AC73: E8
LDA $03                 ; $2A:AC74: A5 03
JSR CODE_2A8D03         ; $2A:AC76: 20 03 8D
JSR CODE_2A8D25         ; $2A:AC79: 20 25 8D
INX                     ; $2A:AC7C: E8
TXA                     ; $2A:AC7D: 8A
AND #$0F                ; $2A:AC7E: 29 0F
BNE CODE_2AAC59         ; $2A:AC80: D0 D7
TXA                     ; $2A:AC82: 8A
CLC                     ; $2A:AC83: 18
ADC #$30                ; $2A:AC84: 69 30
TAX                     ; $2A:AC86: AA
CPX #$B0                ; $2A:AC87: E0 B0
BCC CODE_2AAC59         ; $2A:AC89: 90 CE

CODE_2AAC8B:
LDA $00                 ; $2A:AC8B: A5 00
JSR CODE_2A8D03         ; $2A:AC8D: 20 03 8D
INX                     ; $2A:AC90: E8
LDA $01                 ; $2A:AC91: A5 01
JSR CODE_2A8D03         ; $2A:AC93: 20 03 8D
INX                     ; $2A:AC96: E8
LDA $02                 ; $2A:AC97: A5 02
JSR CODE_2A8D03         ; $2A:AC99: 20 03 8D
INX                     ; $2A:AC9C: E8
LDA $03                 ; $2A:AC9D: A5 03
JSR CODE_2A8D03         ; $2A:AC9F: 20 03 8D
INX                     ; $2A:ACA2: E8
TXA                     ; $2A:ACA3: 8A
AND #$0F                ; $2A:ACA4: 29 0F
BNE CODE_2AAC8B         ; $2A:ACA6: D0 E3
RTS                     ; $2A:ACA8: 60

CODE_2AACA9:
SEP #$10                ; $2A:ACA9: E2 10
LDX #$D0                ; $2A:ACAB: A2 D0
LDA #$1B                ; $2A:ACAD: A9 1B
STA $00                 ; $2A:ACAF: 85 00
JSR CODE_2A9924         ; $2A:ACB1: 20 24 99
JSR CODE_2A9924         ; $2A:ACB4: 20 24 99
JSR CODE_2A9924         ; $2A:ACB7: 20 24 99
JSR CODE_2A9930         ; $2A:ACBA: 20 30 99
JSR CODE_2A9930         ; $2A:ACBD: 20 30 99
JSR CODE_2A9930         ; $2A:ACC0: 20 30 99
REP #$10                ; $2A:ACC3: C2 10
LDY #$0000              ; $2A:ACC5: A0 00 00
LDX #$00B0              ; $2A:ACC8: A2 B0 00
REP #$20                ; $2A:ACCB: C2 20
LDA #$ADA3              ; $2A:ACCD: A9 A3 AD
STA $00                 ; $2A:ACD0: 85 00
SEP #$20                ; $2A:ACD2: E2 20
JSR CODE_2AAD96         ; $2A:ACD4: 20 96 AD
LDX #$00E1              ; $2A:ACD7: A2 E1 00
LDA #$19                ; $2A:ACDA: A9 19
JSR CODE_2A8CD9         ; $2A:ACDC: 20 D9 8C
LDX #$00F8              ; $2A:ACDF: A2 F8 00
JSR CODE_2A8CD9         ; $2A:ACE2: 20 D9 8C
INX                     ; $2A:ACE5: E8
JSR CODE_2A8CD9         ; $2A:ACE6: 20 D9 8C
LDX #$0296              ; $2A:ACE9: A2 96 02
JSR CODE_2A8CD9         ; $2A:ACEC: 20 D9 8C
LDX #$029A              ; $2A:ACEF: A2 9A 02
JSR CODE_2A8CD9         ; $2A:ACF2: 20 D9 8C
INX                     ; $2A:ACF5: E8
JSR CODE_2A8CD9         ; $2A:ACF6: 20 D9 8C
LDX #$02A2              ; $2A:ACF9: A2 A2 02
JSR CODE_2A8CD9         ; $2A:ACFC: 20 D9 8C
LDY #$0000              ; $2A:ACFF: A0 00 00
LDX #$00E5              ; $2A:AD02: A2 E5 00

CODE_2AAD05:
LDA.w DATA_2AADD3,y     ; $2A:AD05: B9 D3 AD
JSR CODE_2A8CD9         ; $2A:AD08: 20 D9 8C
INX                     ; $2A:AD0B: E8
INY                     ; $2A:AD0C: C8
CPY #$0008              ; $2A:AD0D: C0 08 00
BNE CODE_2AAD05         ; $2A:AD10: D0 F3
LDY #$0000              ; $2A:AD12: A0 00 00
LDX #$0260              ; $2A:AD15: A2 60 02
REP #$20                ; $2A:AD18: C2 20
LDA #$ADDB              ; $2A:AD1A: A9 DB AD
STA $00                 ; $2A:AD1D: 85 00
SEP #$20                ; $2A:AD1F: E2 20
JSR CODE_2AAD96         ; $2A:AD21: 20 96 AD
LDY #$0000              ; $2A:AD24: A0 00 00
LDX #$0291              ; $2A:AD27: A2 91 02

CODE_2AAD2A:
LDA.w DATA_2AAE0B,y     ; $2A:AD2A: B9 0B AE
JSR CODE_2A8CD9         ; $2A:AD2D: 20 D9 8C
INX                     ; $2A:AD30: E8
INY                     ; $2A:AD31: C8
CPY #$0004              ; $2A:AD32: C0 04 00
BNE CODE_2AAD2A         ; $2A:AD35: D0 F3
SEP #$10                ; $2A:AD37: E2 10
LDX #$30                ; $2A:AD39: A2 30
LDA #$24                ; $2A:AD3B: A9 24
STA $00                 ; $2A:AD3D: 85 00
JSR CODE_2A9930         ; $2A:AD3F: 20 30 99
JSR CODE_2A9930         ; $2A:AD42: 20 30 99
JSR CODE_2A9930         ; $2A:AD45: 20 30 99
LDA #$2E                ; $2A:AD48: A9 2E
STA $00                 ; $2A:AD4A: 85 00
JSR CODE_2A9930         ; $2A:AD4C: 20 30 99
LDA #$29                ; $2A:AD4F: A9 29
STA $00                 ; $2A:AD51: 85 00
JSR CODE_2A9930         ; $2A:AD53: 20 30 99
LDA #$26                ; $2A:AD56: A9 26
STA $00                 ; $2A:AD58: 85 00
JSR CODE_2A9930         ; $2A:AD5A: 20 30 99

CODE_2AAD5D:
LDY #$00                ; $2A:AD5D: A0 00
LDA [$2B],y             ; $2A:AD5F: B7 2B
CMP #$FF                ; $2A:AD61: C9 FF
BEQ CODE_2AAD6D         ; $2A:AD63: F0 08
JSR CODE_2A8E54         ; $2A:AD65: 20 54 8E
JSR CODE_2AAE0F         ; $2A:AD68: 20 0F AE
BRA CODE_2AAD5D         ; $2A:AD6B: 80 F0

CODE_2AAD6D:
LDA $0350               ; $2A:AD6D: AD 50 03
CMP #$1E                ; $2A:AD70: C9 1E
BNE CODE_2AAD94         ; $2A:AD72: D0 20
LDA #$00                ; $2A:AD74: A9 00
XBA                     ; $2A:AD76: EB
REP #$10                ; $2A:AD77: C2 10
LDY #$0110              ; $2A:AD79: A0 10 01
LDX #$0120              ; $2A:AD7C: A2 20 01
LDA #$EF                ; $2A:AD7F: A9 EF
MVN $7F,$7F             ; $2A:AD81: 54 7F 7F
LDA #$00                ; $2A:AD84: A9 00
XBA                     ; $2A:AD86: EB
LDY #$02C0              ; $2A:AD87: A0 C0 02
LDX #$02D0              ; $2A:AD8A: A2 D0 02
LDA #$EF                ; $2A:AD8D: A9 EF
MVN $7F,$7F             ; $2A:AD8F: 54 7F 7F
SEP #$10                ; $2A:AD92: E2 10

CODE_2AAD94:
PLB                     ; $2A:AD94: AB
RTL                     ; $2A:AD95: 6B

CODE_2AAD96:
LDA ($00),y             ; $2A:AD96: B1 00
JSR CODE_2A8CD9         ; $2A:AD98: 20 D9 8C
INX                     ; $2A:AD9B: E8
INY                     ; $2A:AD9C: C8
CPY #$0030              ; $2A:AD9D: C0 30 00
BNE CODE_2AAD96         ; $2A:ADA0: D0 F4
RTS                     ; $2A:ADA2: 60
db $08,$08,$09,$00,$04,$09,$00,$00
db $00,$00,$04,$08,$09,$00,$04,$08
db $0F,$10,$11,$01,$0B,$11,$12,$08
db $03,$01,$0B,$10,$11,$01,$0B,$10
db $17,$0E,$15,$1A,$13,$0E,$0D,$10
db $06,$06,$06,$06,$0C,$15,$1A,$1A

DATA_2AADD3:
db $19,$1D,$13,$0E,$0E,$15,$1A,$16
db $03,$01,$02,$00,$04,$03,$01,$05
db $06,$06,$06,$06,$06,$06,$06,$07
db $06,$06,$0A,$01,$0B,$06,$06,$06
db $06,$06,$06,$06,$06,$06,$0C,$0E
db $13,$0D,$06,$06,$14,$13,$0E,$15
db $16,$17,$0E,$0E,$15,$13,$18,$19

DATA_2AAE0B:
db $17,$0E,$15,$1C

CODE_2AAE0F:
REP #$10                ; $2A:AE0F: C2 10
INC $00                 ; $2A:AE11: E6 00
LDX $00                 ; $2A:AE13: A6 00
LDY #$0000              ; $2A:AE15: A0 00 00

CODE_2AAE18:
LDA.w DATA_2AAE71,y     ; $2A:AE18: B9 71 AE
JSR CODE_2A8CD9         ; $2A:AE1B: 20 D9 8C
JSR CODE_2AAE80         ; $2A:AE1E: 20 80 AE
CPY #$0005              ; $2A:AE21: C0 05 00
BNE CODE_2AAE18         ; $2A:AE24: D0 F2
INC $00                 ; $2A:AE26: E6 00
LDX $00                 ; $2A:AE28: A6 00
DEC $D8                 ; $2A:AE2A: C6 D8

CODE_2AAE2C:
LDY #$0000              ; $2A:AE2C: A0 00 00

CODE_2AAE2F:
LDA.w DATA_2AAE76,y     ; $2A:AE2F: B9 76 AE
JSR CODE_2A8CD9         ; $2A:AE32: 20 D9 8C
JSR CODE_2AAE80         ; $2A:AE35: 20 80 AE
CPY #$0005              ; $2A:AE38: C0 05 00
BNE CODE_2AAE2F         ; $2A:AE3B: D0 F2
INC $00                 ; $2A:AE3D: E6 00
LDA $00                 ; $2A:AE3F: A5 00
AND #$0F                ; $2A:AE41: 29 0F
BNE CODE_2AAE51         ; $2A:AE43: D0 0C
REP #$20                ; $2A:AE45: C2 20
LDA $00                 ; $2A:AE47: A5 00
SEC                     ; $2A:AE49: 38
SBC #$01C0              ; $2A:AE4A: E9 C0 01
STA $00                 ; $2A:AE4D: 85 00
SEP #$20                ; $2A:AE4F: E2 20

CODE_2AAE51:
SEP #$20                ; $2A:AE51: E2 20
LDX $00                 ; $2A:AE53: A6 00
DEC $D8                 ; $2A:AE55: C6 D8
BNE CODE_2AAE2C         ; $2A:AE57: D0 D3
LDY #$0000              ; $2A:AE59: A0 00 00

CODE_2AAE5C:
LDA.w DATA_2AAE7B,y     ; $2A:AE5C: B9 7B AE
JSR CODE_2A8CD9         ; $2A:AE5F: 20 D9 8C
JSR CODE_2AAE80         ; $2A:AE62: 20 80 AE
CPY #$0005              ; $2A:AE65: C0 05 00
BNE CODE_2AAE5C         ; $2A:AE68: D0 F2
INC $00                 ; $2A:AE6A: E6 00
LDX $00                 ; $2A:AE6C: A6 00
SEP #$10                ; $2A:AE6E: E2 10
RTS                     ; $2A:AE70: 60

DATA_2AAE71:
db $1E,$21,$25,$28,$2C

DATA_2AAE76:
db $1E,$22,$26,$29,$26

DATA_2AAE7B:
db $1E,$23,$27,$2A,$2D

CODE_2AAE80:
REP #$20                ; $2A:AE80: C2 20
TXA                     ; $2A:AE82: 8A
CLC                     ; $2A:AE83: 18
ADC #$0010              ; $2A:AE84: 69 10
TAX                     ; $2A:AE87: AA
SEP #$20                ; $2A:AE88: E2 20
INY                     ; $2A:AE8A: C8
RTS                     ; $2A:AE8B: 60

CODE_2AAE8C:
SEP #$10                ; $2A:AE8C: E2 10
LDA #$01                ; $2A:AE8E: A9 01
STA $02D9               ; $2A:AE90: 8D D9 02
LDX #$00                ; $2A:AE93: A2 00
LDA #$13                ; $2A:AE95: A9 13
STA $00                 ; $2A:AE97: 85 00
LDA #$14                ; $2A:AE99: A9 14
STA $01                 ; $2A:AE9B: 85 01
LDA #$15                ; $2A:AE9D: A9 15
STA $02                 ; $2A:AE9F: 85 02
LDA #$16                ; $2A:AEA1: A9 16
STA $03                 ; $2A:AEA3: 85 03
LDA #$04                ; $2A:AEA5: A9 04
STA $04                 ; $2A:AEA7: 85 04
JSR CODE_2A975C         ; $2A:AEA9: 20 5C 97
LDX #$10                ; $2A:AEAC: A2 10
LDA #$17                ; $2A:AEAE: A9 17
STA $00                 ; $2A:AEB0: 85 00
LDA #$18                ; $2A:AEB2: A9 18
STA $01                 ; $2A:AEB4: 85 01

CODE_2AAEB6:
LDA #$08                ; $2A:AEB6: A9 08
STA $04                 ; $2A:AEB8: 85 04
JSR CODE_2A9779         ; $2A:AEBA: 20 79 97
TXA                     ; $2A:AEBD: 8A
CLC                     ; $2A:AEBE: 18
ADC #$10                ; $2A:AEBF: 69 10
TAX                     ; $2A:AEC1: AA
CPX #$B0                ; $2A:AEC2: E0 B0
BNE CODE_2AAEB6         ; $2A:AEC4: D0 F0
LDX #$20                ; $2A:AEC6: A2 20
LDA #$13                ; $2A:AEC8: A9 13
STA $00                 ; $2A:AECA: 85 00
LDA #$16                ; $2A:AECC: A9 16
STA $01                 ; $2A:AECE: 85 01

CODE_2AAED0:
LDA #$08                ; $2A:AED0: A9 08
STA $04                 ; $2A:AED2: 85 04
JSR CODE_2A9779         ; $2A:AED4: 20 79 97
TXA                     ; $2A:AED7: 8A
CLC                     ; $2A:AED8: 18
ADC #$10                ; $2A:AED9: 69 10
TAX                     ; $2A:AEDB: AA
CPX #$A0                ; $2A:AEDC: E0 A0
BNE CODE_2AAED0         ; $2A:AEDE: D0 F0

CODE_2AAEE0:
LDY #$00                ; $2A:AEE0: A0 00
LDA [$2B],y             ; $2A:AEE2: B7 2B
CMP #$FF                ; $2A:AEE4: C9 FF
BEQ CODE_2AAEF0         ; $2A:AEE6: F0 08
JSR CODE_2A8E54         ; $2A:AEE8: 20 54 8E
JSR (PNTR_2AAEF2,x)     ; $2A:AEEB: FC F2 AE
BRA CODE_2AAEE0         ; $2A:AEEE: 80 F0

CODE_2AAEF0:
PLB                     ; $2A:AEF0: AB
RTL                     ; $2A:AEF1: 6B

PNTR_2AAEF2:
dw CODE_2AAEF6
dw CODE_2AAF39

CODE_2AAEF6:
LDX $00                 ; $2A:AEF6: A6 00
LDA #$01                ; $2A:AEF8: A9 01
JSR CODE_2A8D03         ; $2A:AEFA: 20 03 8D
INX                     ; $2A:AEFD: E8
LDA #$02                ; $2A:AEFE: A9 02
JSR CODE_2A8D03         ; $2A:AF00: 20 03 8D
LDA $00                 ; $2A:AF03: A5 00
CLC                     ; $2A:AF05: 18
ADC #$0F                ; $2A:AF06: 69 0F
TAX                     ; $2A:AF08: AA
STA $00                 ; $2A:AF09: 85 00
STZ $01                 ; $2A:AF0B: 64 01

CODE_2AAF0D:
LDA #$04                ; $2A:AF0D: A9 04
STA $02                 ; $2A:AF0F: 85 02

CODE_2AAF11:
LDY $01                 ; $2A:AF11: A4 01
LDA.w DATA_2AAF2D,y     ; $2A:AF13: B9 2D AF
JSR CODE_2A8D03         ; $2A:AF16: 20 03 8D
INX                     ; $2A:AF19: E8
INC $01                 ; $2A:AF1A: E6 01
DEC $02                 ; $2A:AF1C: C6 02
BNE CODE_2AAF11         ; $2A:AF1E: D0 F1
LDA $00                 ; $2A:AF20: A5 00
CLC                     ; $2A:AF22: 18
ADC #$10                ; $2A:AF23: 69 10
TAX                     ; $2A:AF25: AA
STA $00                 ; $2A:AF26: 85 00
DEC $D8                 ; $2A:AF28: C6 D8
BNE CODE_2AAF0D         ; $2A:AF2A: D0 E1
RTS                     ; $2A:AF2C: 60

DATA_2AAF2D:
db $05,$06,$07,$08,$0B,$0C,$0D,$0E
db $0F,$10,$11,$12

CODE_2AAF39:
LDX $00                 ; $2A:AF39: A6 00
LDA #$03                ; $2A:AF3B: A9 03
JSR CODE_2A8D03         ; $2A:AF3D: 20 03 8D
INX                     ; $2A:AF40: E8
LDA #$04                ; $2A:AF41: A9 04
JSR CODE_2A8D03         ; $2A:AF43: 20 03 8D
LDA $00                 ; $2A:AF46: A5 00
CLC                     ; $2A:AF48: 18
ADC #$10                ; $2A:AF49: 69 10
TAX                     ; $2A:AF4B: AA
LDA #$09                ; $2A:AF4C: A9 09
JSR CODE_2A8D03         ; $2A:AF4E: 20 03 8D
INX                     ; $2A:AF51: E8
LDA #$0A                ; $2A:AF52: A9 0A
JSR CODE_2A8D03         ; $2A:AF54: 20 03 8D
RTS                     ; $2A:AF57: 60

CODE_2AAF58:
SEP #$10                ; $2A:AF58: E2 10
LDX #$07                ; $2A:AF5A: A2 07

CODE_2AAF5C:
LDA #$06                ; $2A:AF5C: A9 06
JSR CODE_2A8D03         ; $2A:AF5E: 20 03 8D
TXA                     ; $2A:AF61: 8A
CLC                     ; $2A:AF62: 18
ADC #$10                ; $2A:AF63: 69 10
TAX                     ; $2A:AF65: AA
CPX #$E0                ; $2A:AF66: E0 E0
BCC CODE_2AAF5C         ; $2A:AF68: 90 F2
LDX #$0F                ; $2A:AF6A: A2 0F

CODE_2AAF6C:
LDA #$06                ; $2A:AF6C: A9 06
JSR CODE_2A8D03         ; $2A:AF6E: 20 03 8D
TXA                     ; $2A:AF71: 8A
CLC                     ; $2A:AF72: 18
ADC #$10                ; $2A:AF73: 69 10
TAX                     ; $2A:AF75: AA
CPX #$E0                ; $2A:AF76: E0 E0
BCC CODE_2AAF6C         ; $2A:AF78: 90 F2
LDX #$51                ; $2A:AF7A: A2 51
LDA #$11                ; $2A:AF7C: A9 11
STA $01                 ; $2A:AF7E: 85 01
JSR CODE_2AAFF4         ; $2A:AF80: 20 F4 AF
LDX #$59                ; $2A:AF83: A2 59
LDA #$11                ; $2A:AF85: A9 11
STA $01                 ; $2A:AF87: 85 01
JSR CODE_2AAFF4         ; $2A:AF89: 20 F4 AF
LDX #$D1                ; $2A:AF8C: A2 D1
LDA #$03                ; $2A:AF8E: A9 03
STA $01                 ; $2A:AF90: 85 01
JSR CODE_2AAFF4         ; $2A:AF92: 20 F4 AF
LDX #$D9                ; $2A:AF95: A2 D9
LDA #$03                ; $2A:AF97: A9 03
STA $01                 ; $2A:AF99: 85 01
JSR CODE_2AAFF4         ; $2A:AF9B: 20 F4 AF
LDX #$E0                ; $2A:AF9E: A2 E0
LDA #$11                ; $2A:AFA0: A9 11
STA $00                 ; $2A:AFA2: 85 00
JSR CODE_2A9924         ; $2A:AFA4: 20 24 99
LDA #$29                ; $2A:AFA7: A9 29
STA $00                 ; $2A:AFA9: 85 00
JSR CODE_2A9924         ; $2A:AFAB: 20 24 99
LDX #$00                ; $2A:AFAE: A2 00
LDA #$2A                ; $2A:AFB0: A9 2A
STA $00                 ; $2A:AFB2: 85 00
JSR CODE_2AB003         ; $2A:AFB4: 20 03 B0
LDA #$2A                ; $2A:AFB7: A9 2A
STA $00                 ; $2A:AFB9: 85 00
JSR CODE_2AB003         ; $2A:AFBB: 20 03 B0
LDX #$10                ; $2A:AFBE: A2 10
LDA #$32                ; $2A:AFC0: A9 32
STA $00                 ; $2A:AFC2: 85 00
JSR CODE_2AB003         ; $2A:AFC4: 20 03 B0
LDA #$32                ; $2A:AFC7: A9 32
STA $00                 ; $2A:AFC9: 85 00
JSR CODE_2AB003         ; $2A:AFCB: 20 03 B0
LDX #$90                ; $2A:AFCE: A2 90
LDA #$11                ; $2A:AFD0: A9 11
STA $00                 ; $2A:AFD2: 85 00
JSR CODE_2A9930         ; $2A:AFD4: 20 30 99
JSR CODE_2A9930         ; $2A:AFD7: 20 30 99

CODE_2AAFDA:
LDY #$00                ; $2A:AFDA: A0 00
LDA [$2B],y             ; $2A:AFDC: B7 2B
CMP #$FF                ; $2A:AFDE: C9 FF
BEQ CODE_2AAFEA         ; $2A:AFE0: F0 08
JSR CODE_2A8E54         ; $2A:AFE2: 20 54 8E
JSR (PNTR_2AAFEC,x)     ; $2A:AFE5: FC EC AF
BRA CODE_2AAFDA         ; $2A:AFE8: 80 F0

CODE_2AAFEA:
PLB                     ; $2A:AFEA: AB
RTL                     ; $2A:AFEB: 6B

PNTR_2AAFEC:
dw CODE_2AB011
dw CODE_2AB064
dw CODE_2AB08B
dw CODE_2AB0DD

CODE_2AAFF4:
LDA #$06                ; $2A:AFF4: A9 06
STA $00                 ; $2A:AFF6: 85 00
LDA $01                 ; $2A:AFF8: A5 01

CODE_2AAFFA:
JSR CODE_2A8D03         ; $2A:AFFA: 20 03 8D
INX                     ; $2A:AFFD: E8
DEC $00                 ; $2A:AFFE: C6 00
BNE CODE_2AAFFA         ; $2A:B000: D0 F8
RTS                     ; $2A:B002: 60

CODE_2AB003:
LDA $00                 ; $2A:B003: A5 00
JSR CODE_2A8D25         ; $2A:B005: 20 25 8D
INC $00                 ; $2A:B008: E6 00
INX                     ; $2A:B00A: E8
TXA                     ; $2A:B00B: 8A
AND #$07                ; $2A:B00C: 29 07
BNE CODE_2AB003         ; $2A:B00E: D0 F3
RTS                     ; $2A:B010: 60

CODE_2AB011:
LDX $00                 ; $2A:B011: A6 00
LDA $D8                 ; $2A:B013: A5 D8
STA $02                 ; $2A:B015: 85 02

CODE_2AB017:
LDY $DA                 ; $2A:B017: A4 DA
LDA.w DATA_2AB039,y     ; $2A:B019: B9 39 B0
CMP #$FF                ; $2A:B01C: C9 FF
BEQ CODE_2AB038         ; $2A:B01E: F0 18
JSR CODE_2A8D03         ; $2A:B020: 20 03 8D
INC $DA                 ; $2A:B023: E6 DA
INX                     ; $2A:B025: E8
DEC $02                 ; $2A:B026: C6 02
BNE CODE_2AB017         ; $2A:B028: D0 ED
REP #$20                ; $2A:B02A: C2 20
LDA $00                 ; $2A:B02C: A5 00
CLC                     ; $2A:B02E: 18
ADC #$0010              ; $2A:B02F: 69 10 00
STA $00                 ; $2A:B032: 85 00
SEP #$20                ; $2A:B034: E2 20
BRA CODE_2AB011         ; $2A:B036: 80 D9

CODE_2AB038:
RTS                     ; $2A:B038: 60

DATA_2AB039:
db $03,$03,$03,$03,$12,$03,$0D,$13
db $08,$05,$02,$14,$07,$05,$04,$07
db $02,$01,$08,$09,$0A,$0B,$0C,$08
db $0D,$04,$04,$0B,$0E,$01,$07,$0B
db $0D,$04,$05,$04,$03,$0F,$02,$01
db $10,$01,$FF

CODE_2AB064:
LDA #$15                ; $2A:B064: A9 15
STA $02                 ; $2A:B066: 85 02

CODE_2AB068:
LDA $D8                 ; $2A:B068: A5 D8
STA $D9                 ; $2A:B06A: 85 D9
LDX $00                 ; $2A:B06C: A6 00

CODE_2AB06E:
LDA $02                 ; $2A:B06E: A5 02
JSR CODE_2A8D03         ; $2A:B070: 20 03 8D
INC $02                 ; $2A:B073: E6 02
INX                     ; $2A:B075: E8
DEC $D9                 ; $2A:B076: C6 D9
BNE CODE_2AB06E         ; $2A:B078: D0 F4
REP #$20                ; $2A:B07A: C2 20
LDA $00                 ; $2A:B07C: A5 00
CLC                     ; $2A:B07E: 18
ADC #$0010              ; $2A:B07F: 69 10 00
STA $00                 ; $2A:B082: 85 00
SEP #$20                ; $2A:B084: E2 20
DEC $DA                 ; $2A:B086: C6 DA
BNE CODE_2AB068         ; $2A:B088: D0 DE
RTS                     ; $2A:B08A: 60

CODE_2AB08B:
LDX $00                 ; $2A:B08B: A6 00
LDA #$3A                ; $2A:B08D: A9 3A
JSR CODE_2A8D25         ; $2A:B08F: 20 25 8D
INX                     ; $2A:B092: E8
INC A                   ; $2A:B093: 1A
JSR CODE_2A8D25         ; $2A:B094: 20 25 8D
INX                     ; $2A:B097: E8
INC A                   ; $2A:B098: 1A
JSR CODE_2A8D25         ; $2A:B099: 20 25 8D
INX                     ; $2A:B09C: E8
LDA #$54                ; $2A:B09D: A9 54
JSR CODE_2A8D25         ; $2A:B09F: 20 25 8D
LDA $00                 ; $2A:B0A2: A5 00
CLC                     ; $2A:B0A4: 18
ADC #$10                ; $2A:B0A5: 69 10
STA $00                 ; $2A:B0A7: 85 00
TAX                     ; $2A:B0A9: AA
LDA $D8                 ; $2A:B0AA: A5 D8
STA $D9                 ; $2A:B0AC: 85 D9
LDA #$40                ; $2A:B0AE: A9 40
STA $02                 ; $2A:B0B0: 85 02
JSR CODE_2AB12F         ; $2A:B0B2: 20 2F B1
INC $00                 ; $2A:B0B5: E6 00
LDX $00                 ; $2A:B0B7: A6 00
LDA $D8                 ; $2A:B0B9: A5 D8
STA $D9                 ; $2A:B0BB: 85 D9
INC $02                 ; $2A:B0BD: E6 02
JSR CODE_2AB12F         ; $2A:B0BF: 20 2F B1
INC $00                 ; $2A:B0C2: E6 00
LDX $00                 ; $2A:B0C4: A6 00
LDA $D8                 ; $2A:B0C6: A5 D8
STA $D9                 ; $2A:B0C8: 85 D9
LDA #$54                ; $2A:B0CA: A9 54
STA $02                 ; $2A:B0CC: 85 02
JSR CODE_2AB12F         ; $2A:B0CE: 20 2F B1
INC $00                 ; $2A:B0D1: E6 00
LDX $00                 ; $2A:B0D3: A6 00
LDA $D8                 ; $2A:B0D5: A5 D8
STA $D9                 ; $2A:B0D7: 85 D9
JSR CODE_2AB12F         ; $2A:B0D9: 20 2F B1
RTS                     ; $2A:B0DC: 60

CODE_2AB0DD:
LDX $00                 ; $2A:B0DD: A6 00
LDA #$54                ; $2A:B0DF: A9 54
JSR CODE_2A8D25         ; $2A:B0E1: 20 25 8D
INX                     ; $2A:B0E4: E8
LDA #$3D                ; $2A:B0E5: A9 3D
JSR CODE_2A8D25         ; $2A:B0E7: 20 25 8D
INX                     ; $2A:B0EA: E8
INC A                   ; $2A:B0EB: 1A
JSR CODE_2A8D25         ; $2A:B0EC: 20 25 8D
INX                     ; $2A:B0EF: E8
INC A                   ; $2A:B0F0: 1A
JSR CODE_2A8D25         ; $2A:B0F1: 20 25 8D
LDA $00                 ; $2A:B0F4: A5 00
CLC                     ; $2A:B0F6: 18
ADC #$10                ; $2A:B0F7: 69 10
STA $00                 ; $2A:B0F9: 85 00
TAX                     ; $2A:B0FB: AA
LDA $D8                 ; $2A:B0FC: A5 D8
STA $D9                 ; $2A:B0FE: 85 D9
LDA #$54                ; $2A:B100: A9 54
STA $02                 ; $2A:B102: 85 02
JSR CODE_2AB12F         ; $2A:B104: 20 2F B1
INC $00                 ; $2A:B107: E6 00
LDX $00                 ; $2A:B109: A6 00
LDA $D8                 ; $2A:B10B: A5 D8
STA $D9                 ; $2A:B10D: 85 D9
JSR CODE_2AB12F         ; $2A:B10F: 20 2F B1
INC $00                 ; $2A:B112: E6 00
LDX $00                 ; $2A:B114: A6 00
LDA $D8                 ; $2A:B116: A5 D8
STA $D9                 ; $2A:B118: 85 D9
LDA #$42                ; $2A:B11A: A9 42
STA $02                 ; $2A:B11C: 85 02
JSR CODE_2AB12F         ; $2A:B11E: 20 2F B1
INC $00                 ; $2A:B121: E6 00
LDX $00                 ; $2A:B123: A6 00
LDA $D8                 ; $2A:B125: A5 D8
STA $D9                 ; $2A:B127: 85 D9
INC $02                 ; $2A:B129: E6 02
JSR CODE_2AB12F         ; $2A:B12B: 20 2F B1
RTS                     ; $2A:B12E: 60

CODE_2AB12F:
LDA $0002               ; $2A:B12F: AD 02 00
JSR CODE_2A8D25         ; $2A:B132: 20 25 8D
TXA                     ; $2A:B135: 8A
CLC                     ; $2A:B136: 18
ADC #$10                ; $2A:B137: 69 10
TAX                     ; $2A:B139: AA
DEC $D9                 ; $2A:B13A: C6 D9
BNE CODE_2AB12F         ; $2A:B13C: D0 F1
RTS                     ; $2A:B13E: 60

CODE_2AB13F:
SEP #$10                ; $2A:B13F: E2 10
LDX #$90                ; $2A:B141: A2 90
LDA #$03                ; $2A:B143: A9 03
STA $00                 ; $2A:B145: 85 00
JSR CODE_2AB1BD         ; $2A:B147: 20 BD B1
LDA #$07                ; $2A:B14A: A9 07
STA $00                 ; $2A:B14C: 85 00
JSR CODE_2AB1BD         ; $2A:B14E: 20 BD B1
LDA #$0B                ; $2A:B151: A9 0B
STA $00                 ; $2A:B153: 85 00
JSR CODE_2AB1BD         ; $2A:B155: 20 BD B1

CODE_2AB158:
LDA #$09                ; $2A:B158: A9 09
JSR CODE_2A8D03         ; $2A:B15A: 20 03 8D
INX                     ; $2A:B15D: E8
LDA #$0A                ; $2A:B15E: A9 0A
JSR CODE_2A8D03         ; $2A:B160: 20 03 8D
INX                     ; $2A:B163: E8
LDA #$07                ; $2A:B164: A9 07
JSR CODE_2A8D03         ; $2A:B166: 20 03 8D
INX                     ; $2A:B169: E8
LDA #$08                ; $2A:B16A: A9 08
JSR CODE_2A8D03         ; $2A:B16C: 20 03 8D
INX                     ; $2A:B16F: E8
TXA                     ; $2A:B170: 8A
AND #$0F                ; $2A:B171: 29 0F
BNE CODE_2AB158         ; $2A:B173: D0 E3
LDA #$0F                ; $2A:B175: A9 0F
STA $00                 ; $2A:B177: 85 00
JSR CODE_2A9924         ; $2A:B179: 20 24 99
JSR CODE_2A9924         ; $2A:B17C: 20 24 99
JSR CODE_2A9924         ; $2A:B17F: 20 24 99
JSR CODE_2A9930         ; $2A:B182: 20 30 99
JSR CODE_2A9930         ; $2A:B185: 20 30 99
LDA #$18                ; $2A:B188: A9 18
STA $00                 ; $2A:B18A: 85 00
JSR CODE_2AB1D8         ; $2A:B18C: 20 D8 B1
LDA #$1C                ; $2A:B18F: A9 1C
STA $00                 ; $2A:B191: 85 00
JSR CODE_2AB1D8         ; $2A:B193: 20 D8 B1
LDA #$20                ; $2A:B196: A9 20
STA $00                 ; $2A:B198: 85 00
JSR CODE_2AB1D8         ; $2A:B19A: 20 D8 B1
LDA #$24                ; $2A:B19D: A9 24
STA $00                 ; $2A:B19F: 85 00
JSR CODE_2AB1D8         ; $2A:B1A1: 20 D8 B1
LDA #$28                ; $2A:B1A4: A9 28
STA $00                 ; $2A:B1A6: 85 00
JSR CODE_2AB1D8         ; $2A:B1A8: 20 D8 B1

CODE_2AB1AB:
LDY #$00                ; $2A:B1AB: A0 00
LDA [$2B],y             ; $2A:B1AD: B7 2B
CMP #$FF                ; $2A:B1AF: C9 FF
BEQ CODE_2AB1BB         ; $2A:B1B1: F0 08
JSR CODE_2A8E54         ; $2A:B1B3: 20 54 8E
JSR (PNTR_2AB1F3,x)     ; $2A:B1B6: FC F3 B1
BRA CODE_2AB1AB         ; $2A:B1B9: 80 F0

CODE_2AB1BB:
PLB                     ; $2A:B1BB: AB
RTL                     ; $2A:B1BC: 6B

CODE_2AB1BD:
LDA $00                 ; $2A:B1BD: A5 00
JSR CODE_2A8D03         ; $2A:B1BF: 20 03 8D
INC A                   ; $2A:B1C2: 1A
INX                     ; $2A:B1C3: E8
JSR CODE_2A8D03         ; $2A:B1C4: 20 03 8D
INC A                   ; $2A:B1C7: 1A
INX                     ; $2A:B1C8: E8
JSR CODE_2A8D03         ; $2A:B1C9: 20 03 8D
INC A                   ; $2A:B1CC: 1A
INX                     ; $2A:B1CD: E8
JSR CODE_2A8D03         ; $2A:B1CE: 20 03 8D
INX                     ; $2A:B1D1: E8
TXA                     ; $2A:B1D2: 8A
AND #$0F                ; $2A:B1D3: 29 0F
BNE CODE_2AB1BD         ; $2A:B1D5: D0 E6
RTS                     ; $2A:B1D7: 60

CODE_2AB1D8:
LDA $00                 ; $2A:B1D8: A5 00
JSR CODE_2A8D25         ; $2A:B1DA: 20 25 8D
INC A                   ; $2A:B1DD: 1A
INX                     ; $2A:B1DE: E8
JSR CODE_2A8D25         ; $2A:B1DF: 20 25 8D
INC A                   ; $2A:B1E2: 1A
INX                     ; $2A:B1E3: E8
JSR CODE_2A8D25         ; $2A:B1E4: 20 25 8D
INC A                   ; $2A:B1E7: 1A
INX                     ; $2A:B1E8: E8
JSR CODE_2A8D25         ; $2A:B1E9: 20 25 8D
INX                     ; $2A:B1EC: E8
TXA                     ; $2A:B1ED: 8A
AND #$0F                ; $2A:B1EE: 29 0F
BNE CODE_2AB1D8         ; $2A:B1F0: D0 E6
RTS                     ; $2A:B1F2: 60

PNTR_2AB1F3:
dw CODE_2AB1FF
dw CODE_2AB205
dw CODE_2AB241
dw CODE_2AB252
dw CODE_2AB20B
dw CODE_2AB211

CODE_2AB1FF:
LDA #$01                ; $2A:B1FF: A9 01
STA $03                 ; $2A:B201: 85 03
BRA CODE_2AB215         ; $2A:B203: 80 10

CODE_2AB205:
LDA #$02                ; $2A:B205: A9 02
STA $03                 ; $2A:B207: 85 03
BRA CODE_2AB215         ; $2A:B209: 80 0A

CODE_2AB20B:
LDA #$2C                ; $2A:B20B: A9 2C
STA $03                 ; $2A:B20D: 85 03
BRA CODE_2AB215         ; $2A:B20F: 80 04

CODE_2AB211:
LDA #$2D                ; $2A:B211: A9 2D
STA $03                 ; $2A:B213: 85 03

CODE_2AB215:
REP #$10                ; $2A:B215: C2 10
LDX $00                 ; $2A:B217: A6 00
LDA $03                 ; $2A:B219: A5 03
JSR CODE_2A8CD9         ; $2A:B21B: 20 D9 8C
LDA $D8                 ; $2A:B21E: A5 D8
BEQ CODE_2AB23E         ; $2A:B220: F0 1C
CLC                     ; $2A:B222: 18
ADC $00                 ; $2A:B223: 65 00
STA $00                 ; $2A:B225: 85 00
LDX $00                 ; $2A:B227: A6 00
LDA $03                 ; $2A:B229: A5 03
JSR CODE_2A8CD9         ; $2A:B22B: 20 D9 8C
LDA $DA                 ; $2A:B22E: A5 DA
BEQ CODE_2AB23E         ; $2A:B230: F0 0C
CLC                     ; $2A:B232: 18
ADC $00                 ; $2A:B233: 65 00
STA $00                 ; $2A:B235: 85 00
LDX $00                 ; $2A:B237: A6 00
LDA $03                 ; $2A:B239: A5 03
JSR CODE_2A8CD9         ; $2A:B23B: 20 D9 8C

CODE_2AB23E:
SEP #$10                ; $2A:B23E: E2 10
RTS                     ; $2A:B240: 60

CODE_2AB241:
REP #$20                ; $2A:B241: C2 20
LDA #$B2A3              ; $2A:B243: A9 A3 B2
STA $03                 ; $2A:B246: 85 03
INC A                   ; $2A:B248: 1A
INC A                   ; $2A:B249: 1A
INC A                   ; $2A:B24A: 1A
INC A                   ; $2A:B24B: 1A
STA $05                 ; $2A:B24C: 85 05
SEP #$20                ; $2A:B24E: E2 20
BRA CODE_2AB261         ; $2A:B250: 80 0F

CODE_2AB252:
REP #$20                ; $2A:B252: C2 20
LDA #$B2AB              ; $2A:B254: A9 AB B2
STA $03                 ; $2A:B257: 85 03
INC A                   ; $2A:B259: 1A
INC A                   ; $2A:B25A: 1A
INC A                   ; $2A:B25B: 1A
INC A                   ; $2A:B25C: 1A
STA $05                 ; $2A:B25D: 85 05
SEP #$20                ; $2A:B25F: E2 20

CODE_2AB261:
REP #$10                ; $2A:B261: C2 10
LDY #$0000              ; $2A:B263: A0 00 00

CODE_2AB266:
LDX $00                 ; $2A:B266: A6 00
LDA ($03),y             ; $2A:B268: B1 03
JSR CODE_2A8CD9         ; $2A:B26A: 20 D9 8C
LDA ($05),y             ; $2A:B26D: B1 05
JSR CODE_2A8CEE         ; $2A:B26F: 20 EE 8C
INY                     ; $2A:B272: C8
CPY #$0004              ; $2A:B273: C0 04 00
BEQ CODE_2AB2A0         ; $2A:B276: F0 28
INC $00                 ; $2A:B278: E6 00
LDA $00                 ; $2A:B27A: A5 00
AND #$0F                ; $2A:B27C: 29 0F
BNE CODE_2AB266         ; $2A:B27E: D0 E6
LDA $D8                 ; $2A:B280: A5 D8
BNE CODE_2AB292         ; $2A:B282: D0 0E
REP #$20                ; $2A:B284: C2 20
LDA $00                 ; $2A:B286: A5 00
CLC                     ; $2A:B288: 18
ADC #$01A0              ; $2A:B289: 69 A0 01
STA $00                 ; $2A:B28C: 85 00
SEP #$20                ; $2A:B28E: E2 20
BRA CODE_2AB266         ; $2A:B290: 80 D4

CODE_2AB292:
REP #$20                ; $2A:B292: C2 20
LDA $00                 ; $2A:B294: A5 00
SEC                     ; $2A:B296: 38
SBC #$01C0              ; $2A:B297: E9 C0 01
STA $00                 ; $2A:B29A: 85 00
SEP #$20                ; $2A:B29C: E2 20
BRA CODE_2AB266         ; $2A:B29E: 80 C6

CODE_2AB2A0:
SEP #$10                ; $2A:B2A0: E2 10
RTS                     ; $2A:B2A2: 60
db $10,$11,$12,$13,$14,$15,$16,$17
db $0D,$0E,$0B,$0C,$07,$08,$09,$0A

CODE_2AB2B3:
SEP #$10                ; $2A:B2B3: E2 10
LDX #$F0                ; $2A:B2B5: A2 F0

CODE_2AB2B7:
LDA #$12                ; $2A:B2B7: A9 12
JSR CODE_2A8D03         ; $2A:B2B9: 20 03 8D
INX                     ; $2A:B2BC: E8
LDA #$13                ; $2A:B2BD: A9 13
JSR CODE_2A8D03         ; $2A:B2BF: 20 03 8D
INX                     ; $2A:B2C2: E8
LDA #$14                ; $2A:B2C3: A9 14
JSR CODE_2A8D03         ; $2A:B2C5: 20 03 8D
INX                     ; $2A:B2C8: E8
LDA #$15                ; $2A:B2C9: A9 15
JSR CODE_2A8D03         ; $2A:B2CB: 20 03 8D
INX                     ; $2A:B2CE: E8
TXA                     ; $2A:B2CF: 8A
AND #$0F                ; $2A:B2D0: 29 0F
BNE CODE_2AB2B7         ; $2A:B2D2: D0 E3
LDX #$00                ; $2A:B2D4: A2 00

CODE_2AB2D6:
LDA #$16                ; $2A:B2D6: A9 16
JSR CODE_2A8D25         ; $2A:B2D8: 20 25 8D
INX                     ; $2A:B2DB: E8
LDA #$17                ; $2A:B2DC: A9 17
JSR CODE_2A8D25         ; $2A:B2DE: 20 25 8D
INX                     ; $2A:B2E1: E8
LDA #$18                ; $2A:B2E2: A9 18
JSR CODE_2A8D25         ; $2A:B2E4: 20 25 8D
INX                     ; $2A:B2E7: E8
LDA #$19                ; $2A:B2E8: A9 19
JSR CODE_2A8D25         ; $2A:B2EA: 20 25 8D
INX                     ; $2A:B2ED: E8
TXA                     ; $2A:B2EE: 8A
AND #$0F                ; $2A:B2EF: 29 0F
BNE CODE_2AB2D6         ; $2A:B2F1: D0 E3

CODE_2AB2F3:
LDY #$00                ; $2A:B2F3: A0 00
LDA [$2B],y             ; $2A:B2F5: B7 2B
CMP #$FF                ; $2A:B2F7: C9 FF
BEQ CODE_2AB303         ; $2A:B2F9: F0 08
JSR CODE_2A8E54         ; $2A:B2FB: 20 54 8E
JSR (PNTR_2AB305,x)     ; $2A:B2FE: FC 05 B3
BRA CODE_2AB2F3         ; $2A:B301: 80 F0

CODE_2AB303:
PLB                     ; $2A:B303: AB
RTL                     ; $2A:B304: 6B

PNTR_2AB305:
dw CODE_2AA966
dw CODE_2AA9F6
dw CODE_2AAA12
dw CODE_2AAA57
dw CODE_2AB315
dw CODE_2AB331
dw CODE_2AB34D
dw CODE_2AB369

CODE_2AB315:
REP #$30                ; $2A:B315: C2 30
LDA #$B329              ; $2A:B317: A9 29 B3
STA $02                 ; $2A:B31A: 85 02
LDA #$B32D              ; $2A:B31C: A9 2D B3
STA $04                 ; $2A:B31F: 85 04
SEP #$20                ; $2A:B321: E2 20
JSR CODE_2AA97A         ; $2A:B323: 20 7A A9
SEP #$10                ; $2A:B326: E2 10
RTS                     ; $2A:B328: 60
db $1A,$1B,$1C,$1D
db $1E,$1F,$20,$21

CODE_2AB331:
REP #$30                ; $2A:B331: C2 30
LDA #$B345              ; $2A:B333: A9 45 B3
STA $02                 ; $2A:B336: 85 02
LDA #$B349              ; $2A:B338: A9 49 B3
STA $04                 ; $2A:B33B: 85 04
SEP #$20                ; $2A:B33D: E2 20
JSR CODE_2AA9CB         ; $2A:B33F: 20 CB A9
SEP #$10                ; $2A:B342: E2 10
RTS                     ; $2A:B344: 60
db $1A,$22,$22,$1E
db $1D,$23,$23,$21

CODE_2AB34D:
REP #$10                ; $2A:B34D: C2 10
LDX $00                 ; $2A:B34F: A6 00
LDA #$1A                ; $2A:B351: A9 1A
JSR CODE_2A8CD9         ; $2A:B353: 20 D9 8C
LDA #$1E                ; $2A:B356: A9 1E
JSR CODE_2A8CEE         ; $2A:B358: 20 EE 8C
INX                     ; $2A:B35B: E8
LDA #$1D                ; $2A:B35C: A9 1D
JSR CODE_2A8CD9         ; $2A:B35E: 20 D9 8C
LDA #$21                ; $2A:B361: A9 21
JSR CODE_2A8CEE         ; $2A:B363: 20 EE 8C
SEP #$10                ; $2A:B366: E2 10
RTS                     ; $2A:B368: 60

CODE_2AB369:
REP #$30                ; $2A:B369: C2 30
LDA #$B399              ; $2A:B36B: A9 99 B3
STA $02                 ; $2A:B36E: 85 02
LDA #$B39D              ; $2A:B370: A9 9D B3
STA $04                 ; $2A:B373: 85 04
LDA $00                 ; $2A:B375: A5 00
PHA                     ; $2A:B377: 48
SEP #$20                ; $2A:B378: E2 20
JSR CODE_2AA9CB         ; $2A:B37A: 20 CB A9
REP #$20                ; $2A:B37D: C2 20
PLA                     ; $2A:B37F: 68
INC A                   ; $2A:B380: 1A
INC A                   ; $2A:B381: 1A
STA $00                 ; $2A:B382: 85 00
AND #$000F              ; $2A:B384: 29 0F 00
BNE CODE_2AB391         ; $2A:B387: D0 08
LDA $00                 ; $2A:B389: A5 00
CLC                     ; $2A:B38B: 18
ADC #$01A0              ; $2A:B38C: 69 A0 01
STA $00                 ; $2A:B38F: 85 00

CODE_2AB391:
SEP #$20                ; $2A:B391: E2 20
JSR CODE_2AA9CB         ; $2A:B393: 20 CB A9
SEP #$10                ; $2A:B396: E2 10
RTS                     ; $2A:B398: 60
db $24,$26,$27,$24
db $25,$26,$27,$25

CODE_2AB3A1:
LDA $0213               ; $2A:B3A1: AD 13 02
BEQ CODE_2AB3B1         ; $2A:B3A4: F0 0B
LDA #$05                ; $2A:B3A6: A9 05
STA $0350               ; $2A:B3A8: 8D 50 03
SEP #$10                ; $2A:B3AB: E2 10
PLB                     ; $2A:B3AD: AB
JMP CODE_2A8DB6         ; $2A:B3AE: 4C B6 8D

CODE_2AB3B1:
REP #$10                ; $2A:B3B1: C2 10
LDA #$10                ; $2A:B3B3: A9 10
STA $00                 ; $2A:B3B5: 85 00
STZ $01                 ; $2A:B3B7: 64 01
LDA #$08                ; $2A:B3B9: A9 08
STA $02                 ; $2A:B3BB: 85 02
JSR CODE_2AB3DF         ; $2A:B3BD: 20 DF B3
LDA #$01                ; $2A:B3C0: A9 01
STA $00                 ; $2A:B3C2: 85 00
STZ $01                 ; $2A:B3C4: 64 01
LDA #$08                ; $2A:B3C6: A9 08
STA $02                 ; $2A:B3C8: 85 02
JSR CODE_2AB3DF         ; $2A:B3CA: 20 DF B3
LDY #$01B0              ; $2A:B3CD: A0 B0 01
LDX #$0000              ; $2A:B3D0: A2 00 00
LDA #$01                ; $2A:B3D3: A9 01
XBA                     ; $2A:B3D5: EB
LDA #$AF                ; $2A:B3D6: A9 AF
MVN $7F,$7F             ; $2A:B3D8: 54 7F 7F
SEP #$10                ; $2A:B3DB: E2 10
PLB                     ; $2A:B3DD: AB
RTL                     ; $2A:B3DE: 6B

CODE_2AB3DF:
LDX $00                 ; $2A:B3DF: A6 00

CODE_2AB3E1:
LDA #$01                ; $2A:B3E1: A9 01
JSR CODE_2A8CD9         ; $2A:B3E3: 20 D9 8C
REP #$20                ; $2A:B3E6: C2 20
TXA                     ; $2A:B3E8: 8A
CLC                     ; $2A:B3E9: 18
ADC #$0020              ; $2A:B3EA: 69 20 00
TAX                     ; $2A:B3ED: AA
SEP #$20                ; $2A:B3EE: E2 20
CPX #$01B0              ; $2A:B3F0: E0 B0 01
BCC CODE_2AB3E1         ; $2A:B3F3: 90 EC
INC $00                 ; $2A:B3F5: E6 00
INC $00                 ; $2A:B3F7: E6 00
DEC $02                 ; $2A:B3F9: C6 02
BNE CODE_2AB3DF         ; $2A:B3FB: D0 E2
RTS                     ; $2A:B3FD: 60

CODE_2AB3FE:
SEP #$10                ; $2A:B3FE: E2 10
LDX #$F0                ; $2A:B400: A2 F0
LDA #$29                ; $2A:B402: A9 29
STA $00                 ; $2A:B404: 85 00
JSR CODE_2A9924         ; $2A:B406: 20 24 99
LDX #$00                ; $2A:B409: A2 00
LDA #$2A                ; $2A:B40B: A9 2A
STA $00                 ; $2A:B40D: 85 00
JSR CODE_2AB003         ; $2A:B40F: 20 03 B0
LDA #$2A                ; $2A:B412: A9 2A
STA $00                 ; $2A:B414: 85 00
JSR CODE_2AB003         ; $2A:B416: 20 03 B0
LDX #$10                ; $2A:B419: A2 10
LDA #$32                ; $2A:B41B: A9 32
STA $00                 ; $2A:B41D: 85 00
JSR CODE_2AB003         ; $2A:B41F: 20 03 B0
LDA #$32                ; $2A:B422: A9 32
STA $00                 ; $2A:B424: 85 00
JSR CODE_2AB003         ; $2A:B426: 20 03 B0

CODE_2AB429:
LDY #$00                ; $2A:B429: A0 00
LDA [$2B],y             ; $2A:B42B: B7 2B
CMP #$FF                ; $2A:B42D: C9 FF
BEQ CODE_2AB439         ; $2A:B42F: F0 08
JSR CODE_2A8E54         ; $2A:B431: 20 54 8E
JSR (PNTR_2AB43B,x)     ; $2A:B434: FC 3B B4
BRA CODE_2AB429         ; $2A:B437: 80 F0

CODE_2AB439:
PLB                     ; $2A:B439: AB
RTL                     ; $2A:B43A: 6B

PNTR_2AB43B:
dw CODE_2AB08B
dw CODE_2AB0DD
dw CODE_2AB441

CODE_2AB441:
LDX $00                 ; $2A:B441: A6 00
LDY $DA                 ; $2A:B443: A4 DA
LDA DATA_2AB472,y       ; $2A:B445: B9 72 B4
JSR CODE_2A8D03         ; $2A:B448: 20 03 8D
INX                     ; $2A:B44B: E8

CODE_2AB44C:
LDY $DB                 ; $2A:B44C: A4 DB
LDA DATA_2AB476,y       ; $2A:B44E: B9 76 B4
CMP #$FF                ; $2A:B451: C9 FF
BEQ CODE_2AB45D         ; $2A:B453: F0 08
JSR CODE_2A8D03         ; $2A:B455: 20 03 8D
INX                     ; $2A:B458: E8
INC $DB                 ; $2A:B459: E6 DB
BRA CODE_2AB44C         ; $2A:B45B: 80 EF

CODE_2AB45D:
LDA #$06                ; $2A:B45D: A9 06
JSR CODE_2A8D03         ; $2A:B45F: 20 03 8D
LDA $00                 ; $2A:B462: A5 00
CLC                     ; $2A:B464: 18
ADC #$10                ; $2A:B465: 69 10
STA $00                 ; $2A:B467: 85 00
INC $DA                 ; $2A:B469: E6 DA
INC $DB                 ; $2A:B46B: E6 DB
DEC $D8                 ; $2A:B46D: C6 D8
BNE CODE_2AB441         ; $2A:B46F: D0 D0
RTS                     ; $2A:B471: 60

; TODO: indices for next table, split next table

DATA_2AB472:
db $01,$07,$08,$0D

DATA_2AB476:
db $44,$45,$46,$47,$05,$FF,$48,$49
db $4A,$4B,$01,$FF,$4C,$4D,$4E,$4F
db $08,$FF,$50,$51,$52,$53,$01,$FF

CODE_2AB48E:
LDA $0350               ; $2A:B48E: AD 50 03
BEQ CODE_2AB4FD         ; $2A:B491: F0 6A
CMP #$12                ; $2A:B493: C9 12
BNE CODE_2AB49E         ; $2A:B495: D0 07
JSL CODE_22E576         ; $2A:B497: 22 76 E5 22
JMP CODE_2AB4FD         ; $2A:B49B: 4C FD B4

CODE_2AB49E:
LDA $0425               ; $2A:B49E: AD 25 04
BNE CODE_2AB4FE         ; $2A:B4A1: D0 5B
LDA $0212               ; $2A:B4A3: AD 12 02
STA $0249               ; $2A:B4A6: 8D 49 02
LDA $0213               ; $2A:B4A9: AD 13 02
ASL A                   ; $2A:B4AC: 0A
ASL A                   ; $2A:B4AD: 0A
ASL A                   ; $2A:B4AE: 0A
ASL A                   ; $2A:B4AF: 0A
STA $024B               ; $2A:B4B0: 8D 4B 02

CODE_2AB4B3:
JSL CODE_2AB5B5         ; $2A:B4B3: 22 B5 B5 2A
LDA $0350               ; $2A:B4B7: AD 50 03
CMP #$02                ; $2A:B4BA: C9 02
BEQ CODE_2AB4C8         ; $2A:B4BC: F0 0A
CMP #$23                ; $2A:B4BE: C9 23
BEQ CODE_2AB4C8         ; $2A:B4C0: F0 06
JSL CODE_29E9A3         ; $2A:B4C2: 22 A3 E9 29
BRA CODE_2AB4CC         ; $2A:B4C6: 80 04

CODE_2AB4C8:
JSL CODE_22E2FE         ; $2A:B4C8: 22 FE E2 22

CODE_2AB4CC:
LDA $0249               ; $2A:B4CC: AD 49 02
CLC                     ; $2A:B4CF: 18
ADC.w DATA_2ACE95       ; $2A:B4D0: 6D 95 CE
STA $0249               ; $2A:B4D3: 8D 49 02
LDA $0249               ; $2A:B4D6: AD 49 02
AND #$08                ; $2A:B4D9: 29 08
CMP.w DATA_2ACE97       ; $2A:B4DB: CD 97 CE
BNE CODE_2AB4E3         ; $2A:B4DE: D0 03
INC $024B               ; $2A:B4E0: EE 4B 02

CODE_2AB4E3:
DEC $0612               ; $2A:B4E3: CE 12 06
BNE CODE_2AB4B3         ; $2A:B4E6: D0 CB
LDA #$FF                ; $2A:B4E8: A9 FF
STA $0249               ; $2A:B4EA: 8D 49 02
LDA $0350               ; $2A:B4ED: AD 50 03
CMP #$02                ; $2A:B4F0: C9 02
BEQ CODE_2AB4F8         ; $2A:B4F2: F0 04
CMP #$23                ; $2A:B4F4: C9 23
BNE CODE_2AB4FD         ; $2A:B4F6: D0 05

CODE_2AB4F8:
LDA #$51                ; $2A:B4F8: A9 51
STA $2109               ; $2A:B4FA: 8D 09 21

CODE_2AB4FD:
RTL                     ; $2A:B4FD: 6B

CODE_2AB4FE:
STZ $25                 ; $2A:B4FE: 64 25
LDA #$70                ; $2A:B500: A9 70
STA $0218               ; $2A:B502: 8D 18 02
CLC                     ; $2A:B505: 18
ADC #$08                ; $2A:B506: 69 08
STA $0249               ; $2A:B508: 8D 49 02
STZ $024B               ; $2A:B50B: 9C 4B 02

CODE_2AB50E:
JSR CODE_2AB67D         ; $2A:B50E: 20 7D B6
JSL CODE_29E9F8         ; $2A:B511: 22 F8 E9 29
LDA $0218               ; $2A:B515: AD 18 02
CLC                     ; $2A:B518: 18
ADC #$08                ; $2A:B519: 69 08
STA $0218               ; $2A:B51B: 8D 18 02
AND #$08                ; $2A:B51E: 29 08
BNE CODE_2AB53A         ; $2A:B520: D0 18
LDA $024B               ; $2A:B522: AD 4B 02
CLC                     ; $2A:B525: 18
ADC #$10                ; $2A:B526: 69 10
STA $024B               ; $2A:B528: 8D 4B 02
AND #$F0                ; $2A:B52B: 29 F0
BNE CODE_2AB53A         ; $2A:B52D: D0 0B
INC $024B               ; $2A:B52F: EE 4B 02
LDA #$0F                ; $2A:B532: A9 0F
AND $024B               ; $2A:B534: 2D 4B 02
STA $024B               ; $2A:B537: 8D 4B 02

CODE_2AB53A:
DEC $0612               ; $2A:B53A: CE 12 06
BNE CODE_2AB50E         ; $2A:B53D: D0 CF
STZ $0218               ; $2A:B53F: 9C 18 02
STZ $0249               ; $2A:B542: 9C 49 02
RTL                     ; $2A:B545: 6B

DATA_2AB546:
db $10,$BD,$2A,$58,$BE,$2A,$30,$BF
db $2A,$30,$C2,$2A,$58,$C0,$2A,$20
db $C4,$2A,$E8,$C5,$2A,$00,$C7,$2A
db $88,$C8,$2A,$38,$CA,$2A,$D8,$CB
db $2A,$08,$CC,$2A,$38,$CE,$2A,$38
db $CE,$2A,$58,$D0,$2A,$F0,$D1,$2A
db $30,$D3,$2A,$10,$D5,$2A,$10,$D5
db $2A,$90,$D5,$2A,$D8,$CB,$2A,$10
db $D6,$2A,$88,$D7,$2A,$58,$D0,$2A
db $38,$CE,$2A,$58,$C0,$2A,$50,$D8
db $2A,$F8,$DA,$2A,$58,$D0,$2A,$10
db $D6,$2A,$F0,$D1,$2A,$68,$DC,$2A
db $10,$BD,$2A,$50,$D8,$2A,$58,$BE
db $2A,$30,$BF,$2A,$10,$BD,$2A

CODE_2AB5B5:
PHB                     ; $2A:B5B5: 8B
PHK                     ; $2A:B5B6: 4B
PLB                     ; $2A:B5B7: AB
LDA $0249               ; $2A:B5B8: AD 49 02
AND #$08                ; $2A:B5BB: 29 08
LSR A                   ; $2A:B5BD: 4A
LSR A                   ; $2A:B5BE: 4A
LSR A                   ; $2A:B5BF: 4A
STA $C2                 ; $2A:B5C0: 85 C2
LDA $0350               ; $2A:B5C2: AD 50 03
ASL A                   ; $2A:B5C5: 0A
CLC                     ; $2A:B5C6: 18
ADC $0350               ; $2A:B5C7: 6D 50 03
TAY                     ; $2A:B5CA: A8
LDA.w DATA_2AB546-1,y   ; $2A:B5CB: B9 45 B5
STA $08                 ; $2A:B5CE: 85 08
REP #$20                ; $2A:B5D0: C2 20
LDA.w DATA_2AB546-3,y   ; $2A:B5D2: B9 43 B5
STA $06                 ; $2A:B5D5: 85 06
SEP #$20                ; $2A:B5D7: E2 20
LDX $25                 ; $2A:B5D9: A6 25
LDA $024B               ; $2A:B5DB: AD 4B 02
LSR A                   ; $2A:B5DE: 4A
LSR A                   ; $2A:B5DF: 4A
LSR A                   ; $2A:B5E0: 4A
LSR A                   ; $2A:B5E1: 4A
INC A                   ; $2A:B5E2: 1A
AND #$0F                ; $2A:B5E3: 29 0F
TAY                     ; $2A:B5E5: A8
LDA #$7F                ; $2A:B5E6: A9 7F
STA $0F                 ; $2A:B5E8: 85 0F
REP #$20                ; $2A:B5EA: C2 20
STZ $0D                 ; $2A:B5EC: 64 0D

CODE_2AB5EE:
DEY                     ; $2A:B5EE: 88
BEQ CODE_2AB5FB         ; $2A:B5EF: F0 0A
LDA $0D                 ; $2A:B5F1: A5 0D
CLC                     ; $2A:B5F3: 18
ADC #$01B0              ; $2A:B5F4: 69 B0 01
STA $0D                 ; $2A:B5F7: 85 0D
BRA CODE_2AB5EE         ; $2A:B5F9: 80 F3

CODE_2AB5FB:
LDA #$001A              ; $2A:B5FB: A9 1A 00
STA $00                 ; $2A:B5FE: 85 00
LDA $024B               ; $2A:B600: AD 4B 02
AND #$000F              ; $2A:B603: 29 0F 00
STA $09                 ; $2A:B606: 85 09
REP #$10                ; $2A:B608: C2 10
LDX #$0000              ; $2A:B60A: A2 00 00

CODE_2AB60D:
LDY $09                 ; $2A:B60D: A4 09
LDA [$0D],y             ; $2A:B60F: B7 0D
AND #$00FF              ; $2A:B611: 29 FF 00
ASL A                   ; $2A:B614: 0A
ASL A                   ; $2A:B615: 0A
ASL A                   ; $2A:B616: 0A
TAY                     ; $2A:B617: A8
LDA $C2                 ; $2A:B618: A5 C2
AND #$00FF              ; $2A:B61A: 29 FF 00
BEQ CODE_2AB623         ; $2A:B61D: F0 04
INY                     ; $2A:B61F: C8
INY                     ; $2A:B620: C8
INY                     ; $2A:B621: C8
INY                     ; $2A:B622: C8

CODE_2AB623:
LDA [$06],y             ; $2A:B623: B7 06
STA $7F2002,x           ; $2A:B625: 9F 02 20 7F
INY                     ; $2A:B629: C8
INY                     ; $2A:B62A: C8
LDA [$06],y             ; $2A:B62B: B7 06
STA $7F2004,x           ; $2A:B62D: 9F 04 20 7F
LDA $09                 ; $2A:B631: A5 09
CLC                     ; $2A:B633: 18
ADC #$0010              ; $2A:B634: 69 10 00
STA $09                 ; $2A:B637: 85 09
INX                     ; $2A:B639: E8
INX                     ; $2A:B63A: E8
INX                     ; $2A:B63B: E8
INX                     ; $2A:B63C: E8
DEC $00                 ; $2A:B63D: C6 00
BPL CODE_2AB60D         ; $2A:B63F: 10 CC
SEP #$30                ; $2A:B641: E2 30
LDX $25                 ; $2A:B643: A6 25
LDA $024B               ; $2A:B645: AD 4B 02
AND #$0F                ; $2A:B648: 29 0F
ASL A                   ; $2A:B64A: 0A
ORA $C2                 ; $2A:B64B: 05 C2
STA $7F2001             ; $2A:B64D: 8F 01 20 7F
LDA $024B               ; $2A:B651: AD 4B 02
AND #$10                ; $2A:B654: 29 10
BEQ CODE_2AB65A         ; $2A:B656: F0 02
LDA #$04                ; $2A:B658: A9 04

CODE_2AB65A:
ORA #$10                ; $2A:B65A: 09 10
STA $7F2000             ; $2A:B65C: 8F 00 20 7F
LDA $0350               ; $2A:B660: AD 50 03
CMP #$02                ; $2A:B663: C9 02
BEQ CODE_2AB66B         ; $2A:B665: F0 04
CMP #$23                ; $2A:B667: C9 23
BNE CODE_2AB67B         ; $2A:B669: D0 10

CODE_2AB66B:
REP #$20                ; $2A:B66B: C2 20
LDA $7F2000             ; $2A:B66D: AF 00 20 7F
CLC                     ; $2A:B671: 18
ADC #$0040              ; $2A:B672: 69 40 00
STA $7F2000             ; $2A:B675: 8F 00 20 7F
SEP #$20                ; $2A:B679: E2 20

CODE_2AB67B:
PLB                     ; $2A:B67B: AB
RTL                     ; $2A:B67C: 6B

CODE_2AB67D:
REP #$20                ; $2A:B67D: C2 20
LDA $024B               ; $2A:B67F: AD 4B 02
AND #$00F0              ; $2A:B682: 29 F0 00
ASL A                   ; $2A:B685: 0A
ASL A                   ; $2A:B686: 0A
CLC                     ; $2A:B687: 18
ADC #$1000              ; $2A:B688: 69 00 10
STA $7F2000             ; $2A:B68B: 8F 00 20 7F
XBA                     ; $2A:B68F: EB
STA $7F2000             ; $2A:B690: 8F 00 20 7F
SEP #$20                ; $2A:B694: E2 20
LDA $024B               ; $2A:B696: AD 4B 02
AND #$01                ; $2A:B699: 29 01
BEQ CODE_2AB6A7         ; $2A:B69B: F0 0A
LDA $7F2000             ; $2A:B69D: AF 00 20 7F
EOR #$08                ; $2A:B6A1: 49 08
STA $7F2000             ; $2A:B6A3: 8F 00 20 7F

CODE_2AB6A7:
LDA $0218               ; $2A:B6A7: AD 18 02
AND #$08                ; $2A:B6AA: 29 08
BEQ CODE_2AB6B9         ; $2A:B6AC: F0 0B
LDA $7F2001             ; $2A:B6AE: AF 01 20 7F
CLC                     ; $2A:B6B2: 18
ADC #$20                ; $2A:B6B3: 69 20
STA $7F2001             ; $2A:B6B5: 8F 01 20 7F

CODE_2AB6B9:
PHB                     ; $2A:B6B9: 8B
PHK                     ; $2A:B6BA: 4B
PLB                     ; $2A:B6BB: AB
LDA $0350               ; $2A:B6BC: AD 50 03
ASL A                   ; $2A:B6BF: 0A
CLC                     ; $2A:B6C0: 18
ADC $0350               ; $2A:B6C1: 6D 50 03
TAY                     ; $2A:B6C4: A8
LDA.w DATA_2AB546-1,y   ; $2A:B6C5: B9 45 B5
STA $0E                 ; $2A:B6C8: 85 0E
REP #$20                ; $2A:B6CA: C2 20
LDA.w DATA_2AB546-3,y   ; $2A:B6CC: B9 43 B5
STA $0C                 ; $2A:B6CF: 85 0C
STZ $D8                 ; $2A:B6D1: 64 D8
SEP #$20                ; $2A:B6D3: E2 20
LDA #$7F                ; $2A:B6D5: A9 7F
STA $DA                 ; $2A:B6D7: 85 DA
LDA $024B               ; $2A:B6D9: AD 4B 02
AND #$0F                ; $2A:B6DC: 29 0F
TAY                     ; $2A:B6DE: A8
BEQ CODE_2AB6F0         ; $2A:B6DF: F0 0F

CODE_2AB6E1:
REP #$20                ; $2A:B6E1: C2 20
LDA $D8                 ; $2A:B6E3: A5 D8
CLC                     ; $2A:B6E5: 18
ADC #$01B0              ; $2A:B6E6: 69 B0 01
STA $D8                 ; $2A:B6E9: 85 D8
SEP #$20                ; $2A:B6EB: E2 20
DEY                     ; $2A:B6ED: 88
BNE CODE_2AB6E1         ; $2A:B6EE: D0 F1

CODE_2AB6F0:
REP #$20                ; $2A:B6F0: C2 20
LDA $024B               ; $2A:B6F2: AD 4B 02
AND #$00F0              ; $2A:B6F5: 29 F0 00
STA $06                 ; $2A:B6F8: 85 06
STZ $08                 ; $2A:B6FA: 64 08
REP #$10                ; $2A:B6FC: C2 10

CODE_2AB6FE:
LDY $06                 ; $2A:B6FE: A4 06
LDA [$D8],y             ; $2A:B700: B7 D8
STA $0A                 ; $2A:B702: 85 0A
INC $06                 ; $2A:B704: E6 06
LDA $0A                 ; $2A:B706: A5 0A
AND #$00FF              ; $2A:B708: 29 FF 00
ASL A                   ; $2A:B70B: 0A
ASL A                   ; $2A:B70C: 0A
ASL A                   ; $2A:B70D: 0A
TAY                     ; $2A:B70E: A8
LDX $08                 ; $2A:B70F: A6 08
LDA $0218               ; $2A:B711: AD 18 02
AND #$0008              ; $2A:B714: 29 08 00
BEQ CODE_2AB71B         ; $2A:B717: F0 02
INY                     ; $2A:B719: C8
INY                     ; $2A:B71A: C8

CODE_2AB71B:
LDA [$0C],y             ; $2A:B71B: B7 0C
STA $7F2002,x           ; $2A:B71D: 9F 02 20 7F
INY                     ; $2A:B721: C8
INY                     ; $2A:B722: C8
INY                     ; $2A:B723: C8
INY                     ; $2A:B724: C8
LDA [$0C],y             ; $2A:B725: B7 0C
STA $7F2004,x           ; $2A:B727: 9F 04 20 7F
INX                     ; $2A:B72B: E8
INX                     ; $2A:B72C: E8
INX                     ; $2A:B72D: E8
INX                     ; $2A:B72E: E8
STX $08                 ; $2A:B72F: 86 08
CPX #$0040              ; $2A:B731: E0 40 00
BCC CODE_2AB6FE         ; $2A:B734: 90 C8
SEP #$30                ; $2A:B736: E2 30
PLB                     ; $2A:B738: AB
RTS                     ; $2A:B739: 60

CODE_2AB73A:
PHA                     ; $2A:B73A: 48
PHX                     ; $2A:B73B: DA
PHY                     ; $2A:B73C: 5A
REP #$30                ; $2A:B73D: C2 30
TYA                     ; $2A:B73F: 98
AND #$00FF              ; $2A:B740: 29 FF 00
ORA #$2000              ; $2A:B743: 09 00 20
TAY                     ; $2A:B746: A8
SEP #$20                ; $2A:B747: E2 20
LDA #$00                ; $2A:B749: A9 00
STA [$2E],y             ; $2A:B74B: 97 2E
SEP #$10                ; $2A:B74D: E2 10
PLY                     ; $2A:B74F: 7A
PLX                     ; $2A:B750: FA
PLA                     ; $2A:B751: 68
RTL                     ; $2A:B752: 6B

CODE_2AB753:
PHX                     ; $2A:B753: DA
LDA $30                 ; $2A:B754: A5 30
STA $DA                 ; $2A:B756: 85 DA
REP #$20                ; $2A:B758: C2 20
LDA $2E                 ; $2A:B75A: A5 2E
STA $D8                 ; $2A:B75C: 85 D8
SEP #$20                ; $2A:B75E: E2 20
LDA $0706               ; $2A:B760: AD 06 07
AND #$0F                ; $2A:B763: 29 0F
TAX                     ; $2A:B765: AA
LDA.l DATA_2AB778,x     ; $2A:B766: BF 78 B7 2A
STA $02                 ; $2A:B76A: 85 02
LDY $0700               ; $2A:B76C: AC 00 07
LDA $02                 ; $2A:B76F: A5 02
STA [$D8],y             ; $2A:B771: 97 D8
JSR CODE_2A8AD2         ; $2A:B773: 20 D2 8A
PLX                     ; $2A:B776: FA
RTL                     ; $2A:B777: 6B

DATA_2AB778:
db $20,$21,$24,$25

CODE_2AB77C:
LDY $0700               ; $2A:B77C: AC 00 07
LDA #$23                ; $2A:B77F: A9 23
STA [$2E],y             ; $2A:B781: 97 2E
INY                     ; $2A:B783: C8
STA [$2E],y             ; $2A:B784: 97 2E
RTL                     ; $2A:B786: 6B

CODE_2AB787:
PHB                     ; $2A:B787: 8B
PHK                     ; $2A:B788: 4B
PLB                     ; $2A:B789: AB
LDA [$2B]               ; $2A:B78A: A7 2B
STA $02                 ; $2A:B78C: 85 02
REP #$20                ; $2A:B78E: C2 20
STZ $DB                 ; $2A:B790: 64 DB
INC $002B               ; $2A:B792: EE 2B 00
LDA $2E                 ; $2A:B795: A5 2E
STA $D8                 ; $2A:B797: 85 D8
SEP #$20                ; $2A:B799: E2 20
LDA $30                 ; $2A:B79B: A5 30
STA $DA                 ; $2A:B79D: 85 DA
LDA $0706               ; $2A:B79F: AD 06 07
AND #$0F                ; $2A:B7A2: 29 0F
TAX                     ; $2A:B7A4: AA
CPX #$08                ; $2A:B7A5: E0 08
BEQ CODE_2AB7C6         ; $2A:B7A7: F0 1D
LDA.w DATA_2AB7EF,x     ; $2A:B7A9: BD EF B7
STA $03                 ; $2A:B7AC: 85 03
LDA.w DATA_2AB7F9,x     ; $2A:B7AE: BD F9 B7
STA $DB                 ; $2A:B7B1: 85 DB
LDY $0700               ; $2A:B7B3: AC 00 07

CODE_2AB7B6:
LDA $03                 ; $2A:B7B6: A5 03
STA [$D8],y             ; $2A:B7B8: 97 D8
JSR CODE_2A8AD2         ; $2A:B7BA: 20 D2 8A
DEC $02                 ; $2A:B7BD: C6 02
BMI CODE_2AB7ED         ; $2A:B7BF: 30 2C
JSR CODE_2A86F5         ; $2A:B7C1: 20 F5 86
BRA CODE_2AB7B6         ; $2A:B7C4: 80 F0

CODE_2AB7C6:
LDY $0700               ; $2A:B7C6: AC 00 07
LDA #$22                ; $2A:B7C9: A9 22
STA [$2E],y             ; $2A:B7CB: 97 2E
JSR CODE_2A8AD2         ; $2A:B7CD: 20 D2 8A

CODE_2AB7D0:
JSL CODE_23BEBB         ; $2A:B7D0: 22 BB BE 23
LDA [$2E],y             ; $2A:B7D4: B7 2E
CMP #$C2                ; $2A:B7D6: C9 C2
BEQ CODE_2AB7D0         ; $2A:B7D8: F0 F6
CMP #$F5                ; $2A:B7DA: C9 F5
BNE CODE_2AB7ED         ; $2A:B7DC: D0 0F
REP #$20                ; $2A:B7DE: C2 20
LDA $2E                 ; $2A:B7E0: A5 2E
STA $D8                 ; $2A:B7E2: 85 D8
SEP #$20                ; $2A:B7E4: E2 20
LDA #$23                ; $2A:B7E6: A9 23
STA [$2E],y             ; $2A:B7E8: 97 2E
JSR CODE_2A8AD2         ; $2A:B7EA: 20 D2 8A

CODE_2AB7ED:
PLB                     ; $2A:B7ED: AB
RTL                     ; $2A:B7EE: 6B

DATA_2AB7EF:
db $02,$04,$05,$06,$07,$08,$0B,$0C
db $00,$0D

DATA_2AB7F9:
db $0F,$11,$11,$0F,$0E,$12,$12,$0E
db $00,$01,$00,$00,$13,$14,$00,$00
db $00,$17,$18,$19,$00,$00,$00,$00
db $00,$00,$00,$00,$15,$16,$00,$00
db $00,$1A,$00,$1B,$00,$00,$00,$00
db $00,$00,$00,$00,$15,$0E,$14,$00
db $00,$1C,$1D,$1E,$00,$00,$00,$00
db $00,$00,$00,$00,$15,$0F,$16,$00
db $00,$00,$00,$00,$00,$00,$00,$13
db $14,$00,$00,$00,$15,$10,$0E,$14
db $00,$00,$00,$00,$00,$00,$00,$15
db $16,$00,$00,$13,$11,$10,$0F,$16
db $00,$00,$00,$00,$00,$00,$13,$11
db $16,$00,$00,$11,$12,$12,$13,$00
db $00,$17,$18,$19,$00,$00,$00,$00
db $00,$00,$00,$14,$15,$15,$16,$00
db $00,$1A,$00,$1B,$00,$00,$00,$11
db $12,$13,$00,$14,$15,$15,$16,$00
db $00,$1C,$1D,$1E,$00,$00,$00,$14
db $15,$16,$00,$14,$15,$15,$16,$00
db $00,$00,$00,$00,$00,$11,$12,$02
db $15,$16,$00,$14,$15,$03,$12,$12
db $13,$00,$00,$00,$00,$14,$15,$16
db $15,$16,$00,$14,$15,$14,$15,$15
db $16,$00,$00,$00,$00,$14,$15,$16
db $15,$16,$00,$00,$00,$00,$00,$00
db $00,$17,$18,$19,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$1A,$00,$1B,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$1C,$1D,$1E,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$14,$15
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$14,$01,$02
db $04,$14,$15,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$14,$01,$01,$02
db $03,$01,$02,$04,$00,$00,$14,$15
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$17,$18,$19,$00,$00,$00,$15
db $16,$00,$00,$00,$15,$16,$00,$00
db $00,$1A,$00,$1B,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$1C,$1D,$1E,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$15,$16,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$04,$05,$05,$06,$00
db $00,$17,$18,$19,$00,$00,$00,$00
db $00,$00,$00,$07,$08,$08,$09,$00
db $00,$1A,$00,$1B,$00,$00,$00,$04
db $05,$06,$00,$07,$08,$08,$09,$00
db $00,$1C,$1D,$1E,$00,$00,$00,$07
db $08,$09,$00,$07,$08,$08,$09,$00
db $00,$00,$00,$00,$00,$04,$05,$0A
db $08,$09,$00,$07,$08,$0B,$05,$05
db $06,$00,$00,$00,$00,$07,$08,$09
db $08,$09,$00,$07,$08,$07,$08,$08
db $09,$00,$00,$00,$00,$07,$08,$09
db $08,$09

DATA_2AB9E3:
db $03,$B8,$63,$B8,$C3,$B8,$23,$B9
db $83,$B9,$03,$B8,$03,$B8

DATA_2AB9F1:
db $01,$04,$09,$0D,$0C,$03,$0E,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$01,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$01,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$01,$01,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$01,$01,$01,$00,$00,$00,$00
db $00,$00,$00,$00,$01,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$01,$00,$00,$00
db $00,$00,$01,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$01,$01,$01,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$01,$01,$01,$01,$01,$01
db $01,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $01,$01,$01,$01,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $01,$01,$01,$01,$00,$00,$00,$00
db $00,$00,$00,$00,$01,$01,$01,$00
db $01,$01,$01,$01,$00,$00,$00,$00
db $00,$00,$00,$00,$01,$01,$01,$00
db $01,$01,$01,$01,$00,$00,$00,$00
db $00,$00,$01,$01,$01,$01,$01,$00
db $01,$01,$01,$01,$01,$01,$00,$00
db $00,$00,$01,$01,$01,$01,$01,$00
db $01,$01,$01,$01,$01,$01,$00,$00
db $00,$00,$01,$01,$01,$01,$01

DATA_2ABBD8:
db $F8,$B9,$58,$BA,$B8,$BA,$18,$BB
db $78,$BB,$F8,$B9,$F8,$B9,$83,$10
db $E0,$10,$0F,$11,$E5,$11,$FD,$11
db $6F,$12,$C7,$10,$D5,$10,$B2,$11
db $21,$12,$9A,$12,$8B,$10,$9A,$10
db $3D,$11,$63,$11,$8B,$11,$37,$12
db $68,$12

DATA_2ABC0A:
db $08,$00,$07,$00,$07,$00,$06,$00
db $06,$00,$06,$00,$06,$00,$06,$00
db $06,$00,$06,$00,$06,$00,$06,$00
db $06,$00,$06,$00,$07,$00,$07,$00
db $08,$00,$08,$00,$08,$00,$09,$00
db $09,$00,$09,$00,$09,$00,$09,$00
db $09,$00,$09,$00,$09,$00,$09,$00
db $09,$00,$09,$00,$08,$00,$08,$00
db $08,$00,$07,$00,$07,$00,$06,$00
db $06,$00,$06,$00,$06,$00,$06,$00
db $06,$00,$06,$00,$06,$00,$06,$00
db $06,$00,$06,$00,$07,$00,$07,$00
db $08,$00,$08,$00,$08,$00,$09,$00
db $09,$00,$09,$00,$09,$00,$09,$00
db $09,$00,$09,$00,$09,$00,$09,$00
db $09,$00,$09,$00,$08,$00,$08,$00
db $08,$00,$07,$00,$07,$00,$06,$00
db $06,$00,$06,$00,$06,$00,$06,$00
db $06,$00,$06,$00,$06,$00,$06,$00
db $06,$00,$06,$00,$07,$00,$07,$00
db $08,$00,$08,$00,$08,$00,$09,$00
db $09,$00,$09,$00,$09,$00,$09,$00
db $09,$00,$09,$00,$09,$00,$09,$00
db $09,$00,$09,$00,$08,$00,$08,$00
db $08,$00,$07,$00,$07,$00,$06,$00
db $06,$00,$06,$00,$06,$00,$06,$00
db $06,$00,$06,$00,$06,$00,$06,$00
db $06,$00,$06,$00,$07,$00,$07,$00
db $08,$00,$08,$00,$08,$00,$09,$00
db $09,$00,$09,$00,$09,$00,$09,$00
db $09,$00,$09,$00,$09,$00,$09,$00
db $09,$00,$09,$00,$08,$00,$08,$00
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$FF,$00
db $76,$09,$67,$09,$77,$09,$56,$09
db $5C,$09,$57,$09,$5D,$09,$48,$09
db $58,$09,$49,$09,$59,$09,$4C,$09
db $5C,$09,$4D,$09,$5D,$09,$56,$09
db $5C,$09,$57,$09,$4E,$09,$80,$09
db $90,$09,$81,$09,$91,$09,$6A,$09
db $7A,$09,$6B,$09,$7B,$09,$4C,$09
db $66,$09,$4D,$09,$5D,$09,$4C,$09
db $5C,$09,$4D,$09,$4E,$09,$80,$09
db $90,$09,$A0,$09,$FF,$00,$4B,$09
db $5B,$09,$FF,$00,$FF,$00,$FF,$00
db $FF,$00,$4A,$09,$5A,$09,$A1,$09
db $FF,$00,$81,$09,$91,$09,$FF,$00
db $76,$05,$67,$05,$77,$05,$56,$05
db $7C,$05,$57,$05,$7D,$05,$48,$05
db $58,$05,$49,$05,$59,$05,$FF,$00
db $50,$05,$41,$05,$51,$05,$42,$05
db $52,$05,$43,$05,$53,$05,$68,$05
db $78,$05,$6D,$05,$7D,$05,$6C,$05
db $7C,$05,$4F,$05,$7D,$05,$6C,$05
db $7C,$05,$6D,$05,$7D,$05,$60,$05
db $70,$05,$61,$05,$71,$05,$62,$05
db $72,$05,$63,$05,$73,$05,$6C,$05
db $7C,$05,$46,$05,$47,$05,$42,$05
db $52,$05,$44,$05,$54,$05,$45,$05
db $55,$05,$41,$05,$51,$05,$6D,$05
db $7D,$05,$46,$05,$47,$05,$62,$05
db $72,$05,$64,$05,$74,$05,$65,$05
db $75,$05,$61,$05,$71,$05,$5E,$09
db $6E,$09,$5F,$09,$6F,$09,$7E,$09
db $6E,$09,$7F,$09,$6F,$09,$56,$05
db $7C,$05,$B1,$05,$7D,$05,$B0,$05
db $7C,$05,$57,$05,$7D,$05,$FF,$00
db $76,$05,$40,$05,$77,$05,$B0,$05
db $7C,$05,$B1,$05,$7D,$05,$4C,$09
db $66,$09,$4D,$09,$4E,$09,$FF,$00
db $FF,$00,$82,$09,$92,$09,$83,$09
db $93,$09,$84,$09,$94,$09,$85,$09
db $95,$09,$FF,$00,$FF,$00,$A2,$09
db $5C,$09,$A3,$09,$5D,$09,$1C,$05
db $1C,$05,$1C,$05,$1C,$05,$00,$09
db $10,$09,$01,$09,$11,$09,$04,$09
db $13,$49,$05,$09,$15,$09,$02,$09
db $11,$09,$03,$09,$11,$09,$13,$09
db $11,$09,$11,$09,$11,$09,$11,$09
db $11,$09,$13,$49,$11,$09,$11,$09
db $11,$09,$11,$09,$11,$09,$20,$09
db $30,$09,$21,$09,$11,$09,$22,$09
db $11,$09,$23,$09,$11,$09,$24,$09
db $13,$49,$25,$09,$35,$09,$26,$09
db $36,$09,$11,$09,$37,$09,$06,$09
db $16,$09,$11,$09,$11,$09,$08,$0D
db $18,$0D,$09,$0D,$19,$0D,$0A,$0D
db $1A,$0D,$0B,$0D,$1B,$0D,$28,$0D
db $38,$0D,$29,$0D,$39,$0D,$2A,$0D
db $3A,$0D,$2B,$0D,$3B,$0D,$FF,$01
db $FF,$01,$FF,$01,$FF,$01,$0F,$49
db $1F,$49,$1C,$45,$1E,$49,$1C,$45
db $1D,$45,$1C,$45,$1C,$45,$2F,$49
db $3F,$49,$2E,$49,$3E,$49,$2D,$49
db $3D,$49,$1C,$45,$1C,$45,$1C,$45
db $1D,$09,$1C,$45,$1E,$09,$0F,$49
db $1F,$09,$1C,$45,$1C,$45,$2D,$09
db $3D,$09,$2E,$09,$3E,$09,$2F,$09
db $3F,$09,$1C,$45,$1C,$45,$1C,$05
db $1D,$09,$1C,$05,$1E,$09,$0F,$09
db $1F,$09,$1C,$05,$1C,$05,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$60,$09
db $70,$09,$61,$09,$71,$09,$45,$09
db $45,$09,$45,$09,$45,$09,$62,$09
db $72,$09,$63,$09,$73,$09,$40,$09
db $50,$09,$41,$09,$51,$09,$49,$09
db $59,$09,$4A,$09,$5A,$09,$44,$09
db $54,$09,$41,$09,$51,$09,$42,$09
db $52,$09,$43,$09,$53,$09,$57,$09
db $78,$09,$48,$09,$79,$09,$55,$09
db $56,$09,$57,$09,$79,$09,$48,$09
db $78,$09,$57,$09,$79,$09,$57,$09
db $79,$09,$58,$09,$7A,$09,$47,$09
db $77,$09,$48,$09,$78,$09,$57,$09
db $78,$09,$4D,$09,$5D,$09,$4E,$09
db $5E,$09,$4F,$09,$5F,$09,$55,$09
db $56,$09,$48,$09,$79,$09,$68,$09
db $78,$09,$69,$09,$79,$09,$46,$09
db $56,$09,$69,$09,$79,$09,$75,$09
db $64,$09,$66,$09,$4B,$09,$66,$09
db $4B,$09,$76,$09,$64,$09,$6D,$09
db $7D,$09,$69,$09,$79,$09,$6E,$09
db $78,$09,$6F,$09,$79,$09,$74,$09
db $65,$09,$4B,$09,$4B,$09,$4B,$09
db $4B,$09,$74,$09,$65,$09,$75,$09
db $7E,$09,$76,$09,$7F,$09,$66,$09
db $7E,$09,$76,$09,$7F,$09,$6D,$09
db $78,$09,$69,$09,$79,$09,$69,$09
db $79,$09,$6A,$09,$7A,$09,$67,$09
db $77,$09,$68,$09,$78,$09,$46,$09
db $56,$09,$6A,$09,$7A,$09,$46,$09
db $56,$09,$68,$09,$78,$09,$68,$09
db $78,$09,$6A,$09,$7A,$09,$60,$09
db $70,$09,$63,$09,$73,$09,$75,$09
db $64,$09,$66,$09,$FF,$00,$66,$09
db $FF,$00,$76,$09,$64,$09,$74,$09
db $65,$09,$FF,$00,$FF,$00,$FF,$00
db $FF,$00,$74,$09,$65,$09,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$5A,$45
db $6A,$45,$59,$45,$69,$45,$4D,$05
db $49,$05,$4E,$05,$4A,$45,$4E,$45
db $49,$45,$4D,$45,$4A,$05,$4B,$05
db $5B,$05,$4C,$05,$5C,$05,$4C,$45
db $5C,$45,$4B,$45,$5B,$45,$40,$05
db $50,$05,$41,$05,$77,$06,$41,$05
db $77,$06,$41,$05,$77,$06,$41,$05
db $77,$06,$42,$05,$52,$05,$44,$05
db $54,$05,$45,$05,$7C,$06,$45,$05
db $7C,$06,$46,$05,$56,$05,$5D,$05
db $7F,$06,$5E,$05,$7F,$06,$5E,$45
db $7F,$06,$5D,$45,$7F,$06,$50,$05
db $50,$05,$77,$06,$77,$06,$77,$06
db $77,$06,$77,$06,$77,$06,$44,$09
db $54,$09,$45,$09,$7C,$0A,$45,$09
db $7C,$0A,$46,$09,$56,$09,$54,$05
db $54,$05,$7C,$06,$7C,$06,$7C,$06
db $7C,$06,$56,$05,$56,$05,$7F,$06
db $7F,$06,$7F,$06,$7F,$06,$54,$09
db $54,$09,$7C,$0A,$7C,$0A,$7C,$0A
db $7C,$0A,$56,$09,$56,$09,$45,$05
db $7C,$06,$45,$05,$7C,$06,$47,$09
db $58,$09,$46,$09,$56,$09,$6F,$09
db $76,$09,$70,$09,$77,$09,$71,$09
db $78,$09,$7F,$06,$73,$09,$46,$05
db $56,$05,$57,$09,$58,$09,$74,$09
db $7A,$09,$75,$09,$7B,$09,$7C,$06
db $7C,$06,$7C,$06,$7C,$06,$47,$09
db $58,$09,$45,$09,$7C,$0A,$72,$09
db $7F,$0A,$73,$09,$79,$09,$42,$05
db $52,$05,$57,$05,$58,$05,$58,$09
db $58,$09,$56,$09,$56,$09,$7C,$09
db $63,$09,$68,$09,$68,$09,$63,$09
db $63,$09,$7D,$09,$68,$09,$56,$05
db $56,$05,$58,$09,$58,$09,$63,$09
db $63,$09,$7F,$09,$68,$09,$58,$09
db $58,$09,$7C,$0A,$7C,$0A,$7E,$09
db $63,$09,$68,$09,$68,$09,$52,$05
db $52,$05,$58,$05,$58,$05,$63,$09
db $51,$09,$68,$09,$55,$09,$63,$09
db $4F,$09,$68,$09,$5F,$09,$64,$05
db $51,$09,$65,$05,$55,$09,$65,$05
db $4F,$09,$65,$05,$5F,$09,$65,$05
db $51,$09,$65,$05,$55,$09,$66,$05
db $4F,$09,$67,$09,$5F,$09,$65,$09
db $51,$09,$66,$09,$55,$09,$64,$05
db $4F,$09,$65,$05,$5F,$09,$65,$05
db $4F,$09,$66,$05,$5F,$09,$67,$09
db $51,$09,$65,$09,$55,$09,$65,$09
db $4F,$09,$66,$09,$5F,$09,$60,$05
db $4F,$09,$61,$05,$5F,$09,$61,$05
db $51,$09,$61,$05,$55,$09,$62,$05
db $4F,$09,$67,$05,$5F,$09,$65,$05
db $51,$09,$66,$05,$55,$09,$67,$09
db $4F,$09,$66,$09,$5F,$09,$6B,$09
db $6D,$09,$6C,$09,$6E,$09,$6D,$09
db $6B,$09,$6E,$09,$6C,$09,$59,$05
db $69,$05,$5A,$05,$6A,$05,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$A1,$09
db $A2,$49,$A1,$49,$A2,$09,$A4,$49
db $7E,$0A,$A3,$49,$7E,$0A,$A3,$09
db $7E,$0A,$A4,$09,$7E,$0A,$A5,$09
db $9E,$09,$A6,$09,$9F,$09,$A6,$49
db $9F,$49,$A5,$49,$9E,$49,$7A,$0A
db $70,$09,$7A,$0A,$71,$09,$7A,$0A
db $72,$09,$7A,$0A,$73,$09,$7C,$09
db $9A,$09,$7D,$09,$9D,$09,$7E,$09
db $8E,$09,$7F,$09,$8F,$09,$77,$06
db $77,$06,$77,$06,$77,$06,$40,$05
db $50,$05,$41,$05,$51,$05,$42,$05
db $52,$05,$43,$05,$53,$05,$44,$05
db $54,$05,$45,$05,$55,$05,$46,$05
db $56,$05,$47,$05,$57,$05,$48,$05
db $58,$05,$49,$05,$59,$05,$4A,$05
db $5A,$05,$4B,$05,$5B,$05,$4C,$05
db $5C,$05,$4D,$05,$5D,$05,$4E,$05
db $5E,$05,$4F,$05,$5F,$05,$60,$05
db $FF,$00,$61,$05,$FF,$00,$62,$05
db $FF,$00,$63,$05,$FF,$00,$64,$05
db $74,$05,$65,$05,$75,$05,$66,$05
db $76,$05,$67,$05,$77,$05,$68,$05
db $78,$05,$69,$05,$79,$05,$6A,$05
db $7A,$05,$6B,$05,$7B,$05,$6C,$05
db $FF,$00,$6D,$05,$FF,$00,$6E,$05
db $FF,$00,$6F,$05,$FF,$00,$FF,$00
db $FF,$00,$80,$05,$FF,$00,$81,$05
db $91,$05,$82,$05,$92,$05,$83,$05
db $93,$05,$84,$05,$94,$05,$85,$05
db $FF,$00,$FF,$00,$FF,$00,$86,$05
db $96,$05,$87,$05,$97,$05,$88,$05
db $98,$05,$89,$05,$99,$05,$8A,$05
db $FF,$00,$8B,$05,$9B,$05,$8C,$05
db $9C,$05,$8D,$05,$FF,$00,$FF,$00
db $FF,$00,$90,$05,$90,$85,$95,$05
db $95,$85,$FF,$00,$FF,$00,$FF,$00
db $8A,$85,$9B,$85,$8B,$85,$9C,$85
db $8C,$85,$FF,$00,$8D,$85,$96,$85
db $86,$85,$97,$85,$87,$85,$98,$85
db $88,$85,$99,$85,$89,$85,$FF,$00
db $FF,$00,$FF,$00,$80,$85,$91,$85
db $81,$85,$92,$85,$82,$85,$93,$85
db $83,$85,$94,$85,$84,$85,$FF,$00
db $85,$85,$FF,$00,$FF,$00,$FF,$00
db $60,$85,$FF,$00,$61,$85,$FF,$00
db $62,$85,$FF,$00,$63,$85,$74,$85
db $64,$85,$75,$85,$65,$85,$76,$85
db $66,$85,$77,$85,$67,$85,$78,$85
db $68,$85,$79,$85,$69,$85,$7A,$85
db $6A,$85,$7B,$85,$6B,$85,$FF,$00
db $6C,$85,$FF,$00,$6D,$85,$FF,$00
db $6E,$85,$FF,$00,$6F,$85,$58,$85
db $48,$85,$59,$85,$49,$85,$5A,$85
db $4A,$85,$5B,$85,$4B,$85,$5C,$85
db $4C,$85,$5D,$85,$4D,$85,$5E,$85
db $4E,$85,$5F,$85,$4F,$85,$50,$85
db $40,$85,$51,$85,$41,$85,$52,$85
db $42,$85,$53,$85,$43,$85,$54,$85
db $44,$85,$55,$85,$45,$85,$56,$85
db $46,$85,$57,$85,$47,$85,$FF,$00
db $A0,$09,$FF,$00,$A0,$09,$40,$05
db $40,$05,$40,$05,$40,$05,$40,$05
db $A1,$05,$40,$05,$A1,$05,$A2,$05
db $A2,$05,$A3,$05,$A3,$05,$84,$05
db $94,$05,$85,$05,$95,$05,$86,$05
db $96,$05,$87,$05,$97,$05,$40,$05
db $40,$05,$40,$05,$9C,$05,$40,$05
db $9F,$05,$40,$05,$9F,$45,$40,$05
db $9C,$45,$40,$05,$40,$05,$A4,$05
db $88,$05,$A5,$05,$89,$05,$A6,$05
db $8A,$05,$A7,$05,$8B,$05,$40,$05
db $40,$05,$AC,$05,$BC,$05,$9D,$05
db $AD,$05,$9E,$05,$AE,$05,$AC,$45
db $BC,$45,$40,$05,$40,$05,$98,$05
db $A8,$05,$99,$05,$A9,$05,$9A,$05
db $AA,$05,$9B,$05,$AB,$05,$BD,$05
db $40,$05,$BE,$05,$40,$05,$B8,$05
db $B4,$05,$B9,$05,$B5,$05,$BA,$05
db $B6,$05,$BB,$05,$B7,$05,$82,$05
db $8C,$05,$83,$05,$8D,$05,$B0,$05
db $8E,$05,$B1,$05,$8F,$05,$40,$05
db $45,$05,$40,$05,$46,$05,$40,$05
db $45,$05,$41,$05,$51,$05,$42,$05
db $52,$05,$63,$05,$55,$05,$A2,$05
db $45,$05,$A3,$05,$46,$05,$47,$05
db $57,$05,$48,$05,$58,$05,$40,$05
db $40,$05,$61,$05,$71,$05,$62,$05
db $72,$05,$64,$05,$74,$05,$92,$05
db $A2,$05,$93,$05,$A3,$05,$40,$05
db $76,$05,$40,$05,$76,$05,$67,$05
db $77,$05,$68,$05,$75,$05,$40,$05
db $76,$05,$43,$05,$53,$05,$44,$05
db $54,$05,$56,$05,$75,$05,$A2,$05
db $B2,$05,$A3,$05,$B3,$05,$50,$05
db $60,$05,$50,$05,$60,$05,$66,$05
db $65,$05,$66,$05,$65,$05,$65,$05
db $49,$05,$65,$05,$4A,$05,$65,$05
db $4B,$05,$65,$05,$65,$05,$59,$05
db $69,$05,$5A,$05,$6A,$05,$65,$05
db $65,$05,$65,$05,$4D,$05,$65,$05
db $4E,$05,$65,$05,$4F,$05,$65,$05
db $65,$05,$65,$05,$65,$05,$65,$05
db $5F,$05,$65,$05,$5F,$05,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$5B,$05
db $FF,$00,$5C,$05,$6C,$05,$5D,$05
db $6D,$05,$5E,$05,$FF,$00,$FF,$00
db $FF,$00,$7C,$05,$FF,$00,$4C,$05
db $79,$05,$4C,$05,$7A,$05,$7D,$05
db $FF,$00,$FF,$00,$FF,$00,$6B,$05
db $6B,$05,$7B,$05,$7B,$05,$FF,$00
db $FF,$00,$FF,$00,$6E,$05,$6B,$05
db $6F,$05,$7B,$05,$7E,$05,$FF,$00
db $7F,$05,$FF,$00,$FF,$00,$81,$05
db $65,$05,$81,$05,$A0,$05,$80,$05
db $91,$05,$80,$05,$90,$05,$80,$05
db $90,$05,$81,$05,$65,$05,$81,$05
db $65,$05,$81,$05,$65,$05,$80,$05
db $91,$05,$80,$05,$91,$05,$FD,$08
db $FD,$08,$FD,$08,$FD,$08,$FD,$08
db $B0,$09,$FD,$08,$B1,$09,$FD,$08
db $B8,$09,$FD,$08,$B9,$09,$FD,$08
db $B0,$09,$FD,$08,$BB,$09,$FD,$08
db $BC,$09,$FD,$08,$BD,$09,$40,$09
db $50,$09,$41,$09,$51,$09,$48,$09
db $42,$09,$49,$09,$43,$09,$4A,$09
db $44,$09,$4B,$09,$45,$09,$4C,$09
db $46,$09,$4D,$09,$47,$09,$51,$09
db $50,$09,$50,$09,$51,$09,$B2,$09
db $42,$09,$B3,$09,$43,$09,$54,$09
db $44,$09,$51,$09,$45,$09,$B3,$49
db $46,$09,$B7,$09,$47,$09,$52,$09
db $42,$09,$53,$09,$43,$09,$56,$09
db $46,$09,$57,$09,$47,$09,$51,$09
db $AA,$09,$50,$09,$67,$09,$51,$09
db $66,$09,$50,$09,$AB,$09,$51,$09
db $AA,$09,$50,$09,$AB,$09,$52,$09
db $58,$09,$53,$09,$59,$09,$54,$09
db $5A,$09,$51,$09,$5B,$09,$56,$09
db $5C,$09,$57,$09,$5D,$09,$AC,$09
db $AE,$09,$77,$09,$AF,$09,$51,$09
db $BE,$09,$50,$09,$BF,$09,$76,$09
db $AE,$09,$AD,$09,$AF,$09,$AC,$09
db $B6,$09,$AD,$09,$A9,$09,$AC,$09
db $AE,$09,$AD,$09,$AF,$09,$6C,$09
db $7C,$09,$68,$09,$78,$09,$4E,$09
db $5E,$09,$4F,$09,$5F,$09,$63,$09
db $6A,$09,$6A,$09,$63,$09,$60,$09
db $70,$09,$61,$09,$71,$09,$62,$09
db $72,$09,$63,$09,$73,$09,$64,$09
db $74,$09,$65,$09,$75,$09,$6B,$09
db $7B,$09,$6D,$09,$7D,$09,$6E,$09
db $7E,$09,$6F,$09,$7F,$09,$6C,$09
db $7C,$09,$6D,$09,$7D,$09,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$59,$09
db $62,$09,$59,$09,$62,$09,$6B,$09
db $74,$09,$6B,$09,$74,$09,$7F,$09
db $8B,$09,$7F,$09,$8B,$09,$FE,$04
db $FE,$04,$FE,$04,$FE,$04,$FE,$04
db $41,$05,$FE,$04,$42,$05,$FE,$04
db $43,$05,$FE,$04,$44,$05,$FE,$04
db $FE,$04,$FE,$04,$4A,$05,$45,$05
db $4B,$05,$46,$05,$4C,$05,$47,$05
db $4D,$05,$48,$05,$4E,$05,$FE,$04
db $4F,$05,$FE,$04,$FE,$04,$51,$05
db $5A,$05,$52,$05,$5B,$05,$53,$05
db $5C,$05,$54,$05,$5D,$05,$55,$05
db $5E,$05,$56,$05,$5F,$05,$57,$05
db $60,$05,$58,$05,$61,$05,$51,$05
db $5A,$05,$FE,$04,$7E,$05,$FE,$04
db $7E,$49,$FE,$04,$7D,$49,$FE,$04
db $7D,$09,$FE,$04,$7E,$09,$FE,$04
db $8A,$05,$58,$05,$61,$05,$63,$05
db $6C,$05,$64,$05,$6D,$05,$65,$05
db $6E,$05,$66,$05,$6F,$05,$67,$05
db $70,$05,$68,$05,$71,$05,$69,$05
db $72,$05,$6A,$05,$73,$05,$94,$05
db $9A,$05,$95,$05,$9B,$05,$89,$49
db $7A,$0A,$88,$49,$91,$49,$88,$09
db $91,$09,$89,$09,$7A,$0A,$92,$05
db $98,$05,$93,$05,$99,$05,$75,$05
db $80,$05,$76,$05,$81,$05,$77,$05
db $82,$05,$78,$05,$83,$05,$79,$05
db $84,$05,$7A,$05,$85,$05,$7B,$05
db $86,$05,$7C,$05,$87,$05,$A0,$05
db $80,$05,$A1,$05,$81,$05,$7A,$0A
db $9D,$49,$97,$49,$9C,$49,$97,$09
db $9C,$09,$7A,$0A,$9D,$09,$9E,$05
db $86,$05,$9F,$05,$87,$05,$8C,$05
db $8C,$05,$A3,$05,$40,$45,$A5,$05
db $40,$05,$8D,$05,$8D,$05,$8E,$05
db $8E,$05,$A3,$05,$40,$45,$A5,$05
db $40,$05,$90,$05,$8C,$45,$A3,$45
db $40,$05,$A2,$49,$A4,$49,$A2,$09
db $A4,$09,$A3,$09,$40,$45,$8C,$05
db $96,$09,$40,$45,$96,$49,$40,$05
db $96,$09,$8F,$05,$96,$49,$8E,$05
db $96,$09,$40,$45,$96,$49,$40,$05
db $96,$09,$8C,$45,$96,$49,$40,$05
db $96,$09,$A4,$49,$96,$49,$A4,$09
db $96,$09,$40,$45,$96,$49,$7F,$0A
db $7F,$0A,$7F,$0A,$7F,$0A,$FF,$00
db $50,$09,$FF,$00,$50,$09,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$42,$05
db $52,$05,$43,$05,$53,$05,$70,$05
db $80,$05,$71,$05,$81,$05,$70,$05
db $70,$05,$71,$05,$71,$05,$60,$05
db $40,$05,$61,$05,$41,$05,$62,$05
db $42,$05,$63,$05,$43,$05,$4D,$05
db $5D,$05,$4E,$05,$5E,$05,$73,$05
db $83,$05,$73,$05,$83,$05,$73,$05
db $83,$05,$72,$05,$82,$05,$6F,$05
db $7F,$05,$71,$05,$71,$05,$44,$05
db $54,$05,$44,$05,$54,$05,$4B,$05
db $5B,$05,$41,$05,$41,$05,$42,$05
db $42,$05,$4C,$05,$5C,$05,$44,$05
db $54,$05,$45,$05,$55,$05,$46,$05
db $56,$05,$44,$05,$54,$05,$45,$05
db $55,$05,$46,$05,$56,$05,$6D,$05
db $54,$05,$6E,$05,$54,$05,$64,$05
db $74,$05,$64,$05,$74,$05,$6B,$05
db $7B,$05,$41,$05,$41,$05,$42,$05
db $42,$05,$6C,$05,$7C,$05,$64,$05
db $74,$05,$65,$05,$75,$05,$66,$05
db $76,$05,$64,$05,$74,$05,$65,$05
db $75,$05,$66,$05,$76,$05,$64,$05
db $7D,$05,$64,$05,$7E,$05,$88,$05
db $90,$05,$89,$05,$41,$05,$8A,$05
db $42,$05,$64,$05,$91,$05,$72,$05
db $82,$05,$73,$05,$83,$05,$69,$05
db $79,$05,$41,$05,$41,$05,$42,$05
db $42,$05,$6A,$05,$7A,$05,$67,$05
db $77,$05,$68,$05,$78,$05,$86,$05
db $84,$05,$87,$05,$85,$05,$80,$05
db $70,$05,$81,$05,$71,$05,$40,$05
db $40,$05,$41,$05,$41,$05,$42,$05
db $42,$05,$43,$05,$43,$05,$8C,$05
db $9C,$05,$8D,$05,$9D,$05,$8D,$45
db $9D,$45,$8F,$05,$9F,$05,$A0,$05
db $98,$05,$41,$05,$99,$05,$42,$05
db $9A,$05,$A1,$05,$9B,$05,$64,$05
db $74,$05,$65,$05,$75,$05,$A2,$05
db $94,$05,$A3,$05,$8E,$05,$A3,$45
db $8E,$45,$9E,$05,$8B,$05,$66,$05
db $76,$05,$64,$05,$74,$05,$A8,$05
db $EC,$04,$64,$05,$74,$05,$ED,$04
db $EE,$04,$FF,$00,$FF,$00,$73,$05
db $84,$05,$73,$05,$85,$05,$92,$05
db $96,$05,$93,$05,$54,$05,$A0,$05
db $54,$05,$95,$05,$97,$05,$A6,$05
db $42,$05,$64,$05,$91,$05,$64,$05
db $A4,$05,$A7,$05,$A5,$05,$6F,$05
db $7F,$05,$4F,$05,$5F,$05,$86,$05
db $83,$05,$87,$05,$83,$05,$50,$05
db $60,$05,$51,$05,$61,$05,$52,$05
db $62,$05,$53,$05,$63,$05,$40,$05
db $50,$05,$41,$05,$51,$05,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$B8,$09
db $B8,$09,$B8,$09,$B8,$09,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$FF,$00
db $86,$05,$80,$05,$87,$05,$81,$05
db $52,$05,$82,$05,$53,$05,$83,$05
db $54,$05,$84,$05,$55,$05,$85,$05
db $88,$05,$FF,$00,$89,$05,$8A,$05
db $8C,$05,$61,$05,$71,$05,$62,$05
db $72,$05,$63,$05,$73,$05,$64,$05
db $74,$05,$65,$05,$75,$05,$66,$05
db $76,$05,$8B,$05,$8D,$05,$44,$05
db $54,$05,$45,$05,$55,$05,$46,$05
db $56,$05,$47,$05,$57,$05,$40,$05
db $5C,$05,$4D,$05,$5D,$05,$4E,$05
db $5E,$05,$4F,$05,$5F,$05,$66,$05
db $76,$05,$67,$05,$77,$05,$5C,$85
db $40,$85,$5D,$85,$4D,$85,$5E,$85
db $4E,$85,$5F,$85,$4F,$85,$48,$05
db $58,$05,$49,$05,$59,$05,$4A,$05
db $5A,$05,$47,$05,$5B,$05,$40,$05
db $50,$05,$41,$05,$51,$05,$42,$05
db $52,$05,$43,$05,$53,$05,$9D,$05
db $54,$05,$9E,$05,$55,$05,$9B,$05
db $52,$05,$9C,$05,$53,$05,$58,$85
db $48,$85,$59,$85,$49,$85,$5A,$85
db $4A,$85,$5B,$85,$47,$85,$60,$05
db $70,$05,$61,$05,$71,$05,$66,$05
db $76,$05,$AD,$05,$BD,$05,$AC,$05
db $BC,$05,$61,$05,$71,$05,$FF,$00
db $6E,$05,$68,$05,$6F,$05,$69,$05
db $52,$05,$6A,$05,$53,$05,$6B,$05
db $54,$05,$6C,$05,$55,$05,$6D,$05
db $78,$05,$FF,$00,$79,$05,$7A,$05
db $7B,$05,$61,$05,$71,$05,$66,$05
db $76,$05,$7C,$05,$7D,$05,$90,$09
db $97,$09,$90,$09,$97,$09,$98,$09
db $99,$09,$98,$09,$99,$09,$B8,$09
db $A0,$09,$91,$09,$A1,$09,$92,$09
db $A2,$09,$93,$09,$A3,$09,$94,$09
db $A4,$09,$95,$09,$A5,$09,$96,$09
db $A6,$09,$B8,$09,$A7,$09,$B8,$09
db $86,$05,$80,$05,$87,$05,$85,$05
db $88,$05,$B8,$09,$89,$05,$B0,$09
db $B9,$09,$B1,$09,$FD,$08,$B2,$09
db $FD,$08,$B3,$09,$8F,$09,$B3,$49
db $8F,$49,$B5,$09,$AE,$09,$B6,$09
db $AF,$09,$B7,$09,$B4,$09,$FD,$08
db $FD,$08,$FD,$08,$FD,$08,$FD,$08
db $FD,$08,$AE,$09,$AE,$09,$7E,$09
db $7E,$09,$7F,$09,$7F,$09,$9F,$05
db $AA,$05,$FD,$08,$AB,$05,$FD,$08
db $A8,$05,$9A,$05,$A9,$05,$70,$05
db $74,$05,$71,$05,$75,$05,$72,$05
db $76,$05,$73,$05,$77,$05,$78,$05
db $7C,$05,$79,$05,$7D,$05,$7A,$05
db $7E,$05,$7B,$05,$7F,$05,$67,$05
db $69,$05,$68,$05,$6A,$05,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$41,$05
db $7C,$06,$42,$05,$44,$05,$43,$05
db $45,$05,$FF,$00,$4B,$05,$FF,$00
db $49,$05,$49,$05,$4A,$05,$4A,$05
db $7C,$06,$7C,$06,$58,$05,$7C,$06
db $51,$05,$7C,$06,$7C,$06,$47,$05
db $7C,$06,$48,$05,$46,$05,$4B,$05
db $48,$05,$FF,$00,$4B,$05,$FF,$00
db $40,$09,$FF,$00,$41,$09,$FF,$00
db $42,$09,$FF,$00,$43,$09,$4A,$05
db $7C,$06,$7C,$06,$7C,$06,$7C,$06
db $57,$05,$7C,$06,$7C,$06,$57,$05
db $7C,$06,$7C,$06,$7C,$06,$7C,$06
db $52,$05,$47,$05,$7C,$06,$55,$05
db $46,$05,$48,$05,$7B,$06,$4B,$05
db $48,$05,$49,$09,$4C,$05,$4A,$09
db $7C,$0A,$7C,$0A,$7C,$0A,$44,$09
db $7C,$0A,$45,$09,$47,$09,$4B,$09
db $48,$09,$FF,$00,$4B,$09,$FF,$00
db $49,$09,$40,$09,$4A,$09,$41,$09
db $7C,$0A,$42,$09,$44,$09,$43,$09
db $45,$09,$FF,$00,$4B,$09,$7C,$06
db $7C,$06,$7C,$06,$7C,$06,$58,$05
db $7C,$06,$7C,$06,$7C,$06,$7C,$06
db $7C,$06,$7C,$06,$50,$05,$47,$05
db $7C,$06,$7B,$06,$46,$05,$54,$05
db $7B,$06,$48,$05,$7B,$06,$4D,$05
db $48,$05,$7C,$0A,$4D,$05,$7C,$0A
db $7C,$0A,$7C,$0A,$7C,$0A,$46,$09
db $47,$09,$48,$09,$7B,$0A,$FF,$00
db $49,$09,$49,$09,$4A,$09,$47,$09
db $7C,$0A,$48,$09,$46,$09,$7C,$06
db $7C,$06,$50,$05,$7C,$06,$7C,$06
db $7C,$06,$7C,$06,$51,$05,$51,$05
db $7C,$06,$47,$05,$7C,$06,$7B,$06
db $46,$05,$7B,$06,$7B,$06,$7B,$06
db $53,$05,$48,$05,$7B,$06,$7C,$0A
db $7C,$0A,$46,$09,$47,$09,$7B,$0A
db $7B,$0A,$48,$09,$7B,$0A,$7C,$0A
db $7C,$0A,$47,$09,$7C,$0A,$7B,$0A
db $46,$09,$48,$09,$7B,$0A,$4A,$05
db $7C,$06,$7C,$06,$50,$05,$7C,$06
db $7C,$06,$57,$05,$7C,$06,$7C,$06
db $7C,$06,$56,$05,$7C,$06,$7C,$06
db $7C,$06,$7C,$06,$52,$05,$47,$05
db $7C,$06,$55,$05,$46,$05,$7B,$06
db $7B,$06,$7B,$06,$7B,$06,$7B,$06
db $7B,$06,$48,$05,$53,$05,$46,$09
db $47,$09,$7B,$0A,$7B,$0A,$4A,$05
db $7C,$06,$52,$05,$7C,$06,$7C,$06
db $50,$05,$47,$05,$7C,$06,$7B,$06
db $46,$05,$48,$05,$54,$05,$47,$09
db $7C,$0A,$7B,$0A,$46,$09,$59,$05
db $66,$09,$5A,$05,$67,$09,$5B,$05
db $68,$09,$5C,$05,$69,$09,$5D,$05
db $66,$09,$5E,$05,$67,$09,$60,$05
db $68,$09,$61,$05,$69,$09,$5B,$09
db $68,$09,$61,$09,$69,$09,$5D,$09
db $66,$09,$5E,$09,$67,$09,$60,$09
db $68,$09,$61,$09,$69,$09,$62,$05
db $66,$09,$63,$05,$67,$09,$59,$09
db $66,$09,$5A,$09,$67,$09,$5B,$09
db $68,$09,$5C,$09,$69,$09,$62,$09
db $66,$09,$63,$09,$67,$09,$64,$09
db $68,$09,$65,$09,$69,$09,$6A,$09
db $6E,$09,$6B,$09,$6F,$09,$6C,$09
db $6E,$09,$6D,$09,$6F,$09,$70,$09
db $4E,$05,$71,$09,$4F,$05,$5F,$05
db $5F,$05,$5F,$05,$5F,$05,$FF,$00
db $49,$05,$40,$05,$4A,$05,$FF,$00
db $FF,$00,$FF,$00,$FF,$00,$8D,$09
db $8E,$09,$8D,$09,$8E,$09,$8F,$09
db $98,$09,$8F,$09,$98,$09,$99,$09
db $9A,$09,$99,$09,$9A,$09,$FC,$08
db $FC,$08,$FC,$08,$FC,$08,$FC,$08
db $50,$09,$FC,$08,$51,$09,$FC,$08
db $52,$09,$40,$09,$53,$09,$41,$09
db $54,$09,$42,$09,$55,$09,$43,$09
db $56,$09,$44,$09,$57,$09,$45,$09
db $58,$09,$46,$09,$59,$09,$47,$09
db $5A,$09,$48,$09,$5B,$09,$49,$09
db $5C,$09,$FC

DATA_2ACE95:
db $08,$5D

DATA_2ACE97:
db $09,$FC,$08,$5E,$09,$FC,$08,$5F
db $09,$60,$09,$70,$09,$61,$09,$71
db $09,$62,$09,$72,$09,$63,$09,$73
db $09,$64,$09,$74,$09,$65,$09,$75
db $09,$66,$09,$76,$09,$67,$09,$77
db $09,$4A,$09,$8A,$05,$4B,$09,$8B
db $05,$4C,$09,$88,$05,$4D,$09,$89
db $05,$4C,$09,$8A,$05,$4D,$09,$8B
db $05,$68,$05,$78,$05,$69,$05,$79
db $05,$79,$C5,$78,$C5,$78,$C5,$79
db $C5,$FC,$08,$4E,$05,$4E,$05,$6A
db $05,$4F,$05,$6B,$05,$FC,$08,$4F
db $05,$6A,$05,$7A,$05,$7A,$05,$7A
db $05,$7B,$05,$7B,$05,$6B,$05,$7B
db $05,$7A,$05,$7A,$05,$7A,$05,$7A
db $05,$7B,$05,$7B,$05,$7B,$05,$7B
db $05,$FC,$08,$6F,$05,$FC,$08,$6F
db $45,$FC,$08,$6F,$05,$6F,$05,$FC
db $04,$FC,$04,$FC,$04,$FC,$04,$FC
db $04,$6F,$45,$FC,$04,$FC,$08,$6F
db $45,$FC,$08,$6E,$45,$6E,$45,$7E
db $06,$6E,$05,$7E,$06,$FC,$08,$6E
db $05,$6F,$45,$FC,$04,$6E,$45,$7D
db $45,$7E,$06,$7E,$06,$7E,$06,$7E
db $06,$7E,$06,$6C,$05,$6C,$05,$7E
db $05,$6D,$05,$6B,$05,$FC,$04,$6D
db $05,$FC,$04,$50,$05,$FC,$04,$51
db $05,$FC,$04,$52,$05,$40,$05,$53
db $05,$49,$05,$5C,$05,$FC,$04,$5D
db $05,$FC,$04,$5E,$05,$FC,$04,$5F
db $05,$7D,$45,$7C,$05,$6C,$05,$6A
db $05,$41,$05,$54,$09,$42,$05,$55
db $09,$43,$05,$56,$09,$44,$05,$57
db $09,$90,$05,$70,$09,$91,$05,$71
db $09,$92,$05,$72,$09,$93,$05,$73
db $09,$94,$05,$74,$09,$95,$05,$75
db $09,$96,$05,$76,$09,$67,$05,$77
db $09,$84,$05,$74,$09,$85,$05,$75
db $09,$86,$05,$76,$09,$67,$05,$77
db $09,$80,$05,$70,$09,$81,$05,$71
db $09,$82,$05,$72,$09,$83,$05,$73
db $09,$FF,$00,$9C,$09,$9B,$09,$9D
db $09,$9B,$49,$9D,$49,$9B,$09,$9D
db $09,$9B,$49,$9D,$49,$FF,$00,$9C
db $49,$9E,$09,$FF,$00,$9F,$09,$A0
db $09,$9F,$49,$A0,$49,$9F,$09,$A0
db $09,$9F,$49,$A0,$49,$9E,$49,$FF
db $00,$FF,$00,$A2,$09,$A1,$09,$A3
db $09,$A1,$49,$A3,$49,$A1,$09,$A3
db $09,$A1,$49,$A3,$49,$FF,$00,$A2
db $49,$A4,$09,$FF,$00,$A5,$09,$FF
db $00,$A5,$49,$FF,$00,$A5,$09,$FF
db $00,$A5,$49,$FF,$00,$A4,$49,$FF
db $00,$FF,$00,$8C,$09,$FF,$00,$8C
db $09,$A6,$05,$AA,$05,$A7,$05,$AB
db $05,$A8,$05,$AC,$05,$A9,$05,$AD
db $05,$FF,$00,$FF,$00,$FF,$00,$FF
db $00,$FF,$00,$50,$05,$41,$05,$51
db $05,$42,$05,$52,$05,$43,$05,$53
db $05,$44,$05,$54,$05,$45,$05,$55
db $05,$46,$05,$56,$05,$FF,$00,$57
db $05,$88,$05,$8C,$05,$89,$05,$8D
db $05,$92,$05,$92,$05,$93,$05,$93
db $05,$48,$05,$58,$05,$49,$05,$59
db $05,$4A,$05,$5A,$05,$4B,$05,$5B
db $05,$4C,$05,$5C,$05,$4D,$05,$5D
db $05,$4E,$05,$5E,$05,$4F,$05,$5F
db $05,$84,$05,$8E,$05,$85,$05,$87
db $05,$82,$05,$86,$05,$83,$05,$8D
db $05,$90,$05,$7A,$05,$74,$05,$7B
db $05,$75,$05,$52,$05,$76,$05,$53
db $05,$63,$05,$54,$05,$64,$05,$55
db $05,$65,$05,$70,$05,$6B,$05,$71
db $05,$6C,$05,$6C,$85,$6D,$05,$6D
db $85,$6E,$05,$6E,$85,$6F,$05,$6F
db $85,$68,$05,$68,$85,$69,$05,$69
db $85,$6A,$05,$6A,$85,$6B,$05,$6B
db $85,$6C,$05,$66,$05,$60,$05,$67
db $05,$61,$05,$52,$05,$62,$05,$53
db $05,$77,$05,$54,$05,$78,$05,$55
db $05,$79,$05,$7C,$05,$93,$05,$7D
db $05,$90,$05,$90,$05,$91,$05,$91
db $05,$7E,$05,$7F,$05,$49,$05,$59
db $05,$4E,$05,$5E,$05,$40,$05,$47
db $05,$72,$05,$73,$05,$49,$05,$59
db $05,$4E,$05,$5E,$05,$80,$05,$81
db $05,$90,$05,$9C,$05,$91,$05,$9D
db $05,$92,$05,$9E,$05,$93,$05,$9F
db $05,$FC,$04,$A0,$05,$FC,$04,$FC
db $04,$FC,$04,$FC,$04,$FC,$04,$A0
db $45,$68,$05,$94,$05,$69,$05,$95
db $05,$6A,$05,$96,$05,$6B,$05,$97
db $05,$6C,$05,$98,$05,$6D,$05,$99
db $05,$6E,$05,$9A,$05,$6F,$05,$9B
db $05,$9C,$05,$FC,$04,$9D,$05,$FC
db $04,$9E,$05,$FC,$04,$9F,$05,$FC
db $04,$FC,$04,$FC,$04,$FC,$04,$FC
db $04,$9E,$05,$FC,$04,$9F,$05,$A0
db $45,$A0,$45,$FC,$04,$A0,$05,$FC
db $04,$A0,$45,$FC,$04,$A0,$05,$A0
db $45,$A0,$45,$A0,$05,$A0,$05,$FC
db $04,$FC,$04,$A0,$05,$FC,$04,$A0
db $45,$8A,$05,$8E,$05,$8B,$05,$8F
db $05,$A2,$09,$FF,$00,$FF,$00,$FF
db $00,$FF,$00,$FF,$00,$A2,$09,$FF
db $00,$FF,$00,$A3,$09,$FF,$00,$FF
db $00,$FF,$00,$FF,$00,$FF,$00,$A4
db $09,$4C,$09,$5C,$09,$4D,$09,$5D
db $09,$4E,$09,$5E,$09,$4F,$09,$5F
db $09,$48,$09,$58,$09,$49,$09,$59
db $09,$4A,$09,$5A,$09,$4B,$09,$5B
db $09,$40,$09,$50,$09,$41,$09,$51
db $09,$42,$09,$52,$09,$43,$09,$53
db $09,$44,$09,$54,$09,$45,$09,$55
db $09,$46,$09,$56,$09,$47,$09,$57
db $09,$50,$09,$48,$09,$51,$09,$49
db $09,$56,$09,$4E,$09,$57,$09,$4F
db $09,$40,$09,$58,$09,$41,$09,$59
db $09,$46,$09,$5E,$09,$47,$09,$5F
db $09,$60,$09,$61,$09,$60,$09,$61
db $09,$61,$89,$60,$89,$61,$89,$60
db $89,$48,$09,$50,$09,$49,$09,$51
db $09,$4A,$09,$52,$09,$4B,$09,$53
db $09,$4C,$09,$54,$09,$4D,$09,$55
db $09,$4E,$09,$56,$09,$4F,$09,$57
db $09,$40,$09,$62,$09,$41,$09,$63
db $09,$42,$09,$64,$09,$43,$09,$65
db $09,$44,$09,$66,$09,$45,$09,$67
db $09,$46,$09,$68,$09,$47,$09,$69
db $09,$6A,$09,$58,$05,$6B,$09,$59
db $05,$6C,$09,$5A,$05,$6D,$09,$5B
db $05,$6E,$09,$5C,$05,$6F,$09,$5D
db $05,$70,$09,$5E,$05,$71,$09,$5F
db $05,$40,$05,$50,$05,$41,$05,$51
db $05,$42,$05,$52,$05,$43,$05,$53
db $05,$44,$05,$54,$05,$45,$05,$55
db $05,$46,$05,$56,$05,$47,$05,$57
db $05,$48,$05,$58,$05,$49,$05,$59
db $05,$4A,$05,$5A,$05,$4B,$05,$5B
db $05,$4C,$05,$5C,$05,$4D,$05,$5D
db $05,$4E,$05,$5E,$05,$4F,$05,$5F
db $05,$50,$05,$48,$05,$51,$05,$49
db $05,$56,$05,$4E,$05,$57,$05,$4F
db $05,$40,$05,$58,$05,$41,$05,$59
db $05,$46,$05,$5E,$05,$47,$05,$5F
db $05,$60,$05,$61,$05,$60,$05,$61
db $05,$61,$85,$60,$85,$61,$85,$60
db $85,$FF,$00,$FF,$00,$FF,$00,$FF
db $00,$FF,$00,$4B,$45,$FF,$00,$45
db $45,$FF,$00,$43,$45,$FF,$00,$42
db $45,$45,$05,$4C,$05,$4B,$05,$4D
db $05,$FF,$00,$4E,$05,$FF,$00,$4F
db $05,$61,$05,$41,$45,$62,$05,$41
db $05,$FF,$00,$61,$05,$FF,$00,$62
db $05,$FF,$00,$45,$05,$FF,$00,$4B
db $05,$4F,$45,$41,$45,$4E,$45,$7E
db $06,$4D,$45,$7E,$06,$4C,$45,$7E
db $06,$51,$05,$7E,$06,$52,$05,$41
db $05,$44,$45,$41,$45,$7E,$06,$7E
db $06,$7E,$06,$7E,$06,$7E,$06,$7E
db $06,$7E,$06,$7E,$06,$41,$05,$41
db $85,$53,$45,$5C,$45,$FF,$00,$FF
db $00,$FF,$00,$52,$45,$FF,$00,$51
db $45,$FF,$00,$4F,$45,$FF,$00,$4E
db $45,$4B,$45,$4D,$45,$45,$45,$4C
db $45,$7E,$06,$7E,$06,$41,$05,$7E
db $06,$41,$45,$7E,$06,$41,$05,$7E
db $06,$4C,$05,$7E,$06,$4D,$05,$7E
db $06,$4E,$05,$7E,$06,$4F,$05,$41
db $05,$42,$05,$7E,$06,$43,$05,$44
db $05,$52,$45,$41,$45,$51,$45,$7E
db $06,$41,$45,$7E,$06,$7E,$06,$7E
db $06,$FF,$00,$52,$45,$FF,$00,$51
db $45,$41,$45,$A7,$05,$7E,$06,$A7
db $05,$7E,$06,$A7,$05,$7E,$06,$A7
db $05,$7E,$06,$A7,$05,$41,$05,$A7
db $05,$41,$45,$A7,$05,$41,$05,$A7
db $05,$40,$05,$50,$05,$40,$05,$50
db $05,$40,$05,$54,$05,$40,$05,$55
db $05,$46,$05,$56,$05,$47,$05,$57
db $05,$48,$05,$58,$05,$49,$05,$59
db $05,$4A,$05,$5A,$05,$40,$05,$5B
db $05,$60,$05,$70,$05,$60,$05,$71
db $05,$60,$05,$72,$05,$63,$05,$73
db $05,$64,$05,$74,$05,$65,$05,$75
db $05,$66,$05,$76,$05,$67,$05,$77
db $05,$68,$05,$78,$05,$69,$05,$79
db $05,$6A,$05,$7A,$05,$6B,$05,$7B
db $05,$6C,$05,$7C,$05,$60,$05,$7D
db $05,$60,$05,$7E,$05,$60,$05,$7F
db $05,$60,$05,$5D,$05,$60,$05,$5E
db $05,$60,$05,$5F,$05,$60,$05,$98
db $05,$60,$05,$99,$05,$60,$05,$9B
db $05,$60,$05,$A0,$05,$60,$05,$A1
db $05,$80,$05,$90,$05,$81,$05,$91
db $05,$82,$05,$92,$05,$83,$05,$93
db $05,$84,$05,$94,$05,$85,$05,$95
db $05,$86,$05,$96,$05,$87,$05,$97
db $05,$88,$05,$FC,$04,$89,$05,$FC
db $04,$8A,$05,$9A,$05,$8B,$05,$FC
db $04,$8C,$05,$9C,$05,$8D,$05,$9D
db $05,$8E,$05,$9E,$05,$8F,$05,$9F
db $05,$6D,$05,$90,$05,$6E,$05,$91
db $05,$6F,$05,$92,$05,$A2,$05,$93
db $05,$A3,$05,$94,$05,$A4,$05,$95
db $05,$A5,$05,$95,$05,$A6,$05,$95
db $05,$FC,$04,$FC,$04,$FC,$04,$FC
db $04,$64,$09,$6C,$09,$65,$09,$6D
db $09,$4A,$49,$7C,$0A,$68,$09,$43
db $49,$69,$09,$42,$49,$4D,$49,$7D
db $0A,$66,$09,$6E,$09,$67,$09,$6F
db $09,$5B,$49,$6A,$09,$7C,$0A,$6B
db $09,$4E,$09,$5E,$09,$4F,$09,$5F
db $09,$60,$09,$70,$09,$61,$09,$71
db $09,$7D,$0A,$62,$09,$46,$49,$63
db $09,$4C,$09,$46,$09,$4D,$09,$7D
db $0A,$5C,$09,$47,$09,$48,$09,$58
db $09,$49,$09,$59,$09,$5D,$09,$5A
db $09,$4A,$09,$7C,$0A,$4B,$09,$5B
db $09,$40,$09,$50,$09,$41,$09,$51
db $09,$7D,$0A,$52,$09,$42,$09,$53
db $09,$43,$09,$54,$09,$7C,$0A,$55
db $09,$44,$09,$56,$09,$45,$09,$57
db $09,$40,$09,$50,$09,$41,$09,$51
db $09,$42,$09,$52,$09,$43,$09,$53
db $09,$44,$09,$54,$09,$45,$09,$55
db $09,$46,$09,$56,$09,$47,$09,$57
db $09,$60,$09,$70,$09,$61,$09,$71
db $09,$62,$09,$72,$09,$63,$09,$73
db $09,$64,$09,$74,$09,$65,$09,$75
db $09,$66,$09,$76,$09,$67,$09,$77
db $09,$48,$09,$58,$09,$49,$09,$59
db $09,$4A,$09,$5A,$09,$4B,$09,$5B
db $09,$4C,$09,$5C,$09,$4D,$09,$5D
db $09,$4E,$09,$5E,$09,$4F,$09,$5F
db $09,$68,$09,$78,$09,$69,$09,$79
db $09,$6A,$09,$7A,$09,$6B,$09,$7B
db $09,$6C,$09,$7C,$09,$6D,$09,$7D
db $09,$6E,$09,$7E,$09,$6F,$09,$7F
db $09,$FD,$08,$FD,$08,$FD,$08,$FD
db $08,$62,$49,$64,$09,$62,$09,$64
db $49,$62,$49,$6C,$09,$FD,$08,$FD
db $08,$FD,$08,$67,$49,$62,$09,$66
db $49,$FD,$08,$FD,$08,$FD,$08,$62
db $09,$6E,$49,$FE,$08,$6D,$49,$FE
db $08,$FE,$08,$FE,$08,$FE,$08,$FE
db $08,$6C,$09,$6D,$09,$FD,$08,$6E
db $09,$FD,$08,$62,$49,$FD,$08,$62
db $09,$FD,$08,$62,$49,$FD,$08,$FD
db $08,$ED,$09,$FE,$08,$6E,$09,$FE
db $08,$67,$49,$FE,$08,$66,$49,$FE
db $08,$FE,$08,$FE,$08,$FE,$08,$63
db $09,$FE,$08,$63,$49,$FE,$08,$FE
db $08,$FE,$08,$63,$49,$FE,$08,$63
db $09,$64,$09,$63,$49,$64,$49,$FE
db $08,$64,$09,$FE,$08,$64,$49,$FE
db $08,$66,$09,$FE,$08,$67,$09,$FE
db $08,$62,$49,$66,$09,$FD,$08,$67
db $09,$63,$49,$6A,$09,$FE,$08,$6B
db $09,$FE,$08,$FE,$08,$63,$09,$6F
db $49,$FE,$08,$6B,$49,$63,$09,$6A
db $49,$6B,$49,$FF,$00,$6A,$49,$FF
db $00,$6F,$09,$72,$09,$FE,$08,$73
db $09,$FE,$08,$73,$49,$6F,$49,$72
db $49,$68,$09,$FF,$00,$68,$49,$FF
db $00,$63,$49,$68,$09,$63,$09,$68
db $49,$FF,$00,$FF,$00,$FF,$00,$FF
db $00,$73,$49,$FF,$00,$72,$49,$FF
db $00,$6A,$09,$FF,$00,$6B,$09,$FF
db $00,$FF,$00,$40,$05,$FF,$00,$41
db $05,$FF,$00,$74,$45,$FF,$00,$FF
db $00,$FF,$00,$FF,$00,$FF,$00,$74
db $05,$44,$05,$54,$05,$45,$05,$55
db $05,$50,$05,$43,$05,$51,$05,$42
db $05,$46,$05,$56,$05,$47,$05,$57
db $05,$5D,$05,$5C,$05,$5C,$05,$5D
db $05,$48,$05,$58,$05,$75,$05,$76
db $05,$53,$05,$42,$05,$52,$05,$43
db $05,$49,$45,$59,$45,$5A,$05,$5B
db $05,$4A,$05,$54,$05,$4B,$05,$55
db $05,$52,$05,$43,$05,$53,$05,$42
db $05,$4C,$05,$56,$05,$4D,$05,$57
db $05,$5D,$05,$CC,$04,$5C,$05,$CD
db $04,$C2,$04,$C3,$04,$75,$05,$43
db $05,$49,$45,$42,$05,$C0,$04,$C1
db $04,$CC,$04,$CE,$04,$CD,$04,$CF
db $04,$4C,$09,$4C,$09,$4C,$09,$4C
db $09,$4C,$09,$4C,$09,$4C,$09,$5B
db $09,$4C,$09,$5B,$49,$4C,$09,$4C
db $09,$4C,$09,$4C,$09,$5B,$09,$4D
db $09,$5B,$49,$4D,$49,$4C,$09,$4C
db $09,$4C,$09,$40,$09,$4C,$09,$41
db $09,$4C,$09,$42,$09,$4D,$09,$43
db $09,$4D,$49,$43,$49,$4C,$09,$42
db $49,$4C,$09,$41,$49,$4C,$09,$40
db $49,$4C,$09,$41,$49,$5C,$09,$40
db $49,$5C,$49,$40,$09,$4C,$09,$41
db $09,$50,$09,$44,$09,$51,$09,$45
db $09,$52,$09,$46,$09,$53,$09,$47
db $09,$53,$49,$47,$49,$52,$49,$46
db $49,$51,$49,$45,$49,$50,$49,$44
db $49,$54,$09,$48,$09,$55,$09,$49
db $09,$56,$09,$4A,$09,$57,$09,$4B
db $09,$57,$49,$4B,$49,$56,$49,$4A
db $49,$55,$49,$49,$49,$54,$49,$48
db $49,$5E,$09,$60,$09,$5F,$09,$5E
db $09,$58,$09,$5E,$49,$59,$09,$60
db $49,$59,$49,$60,$09,$58,$49,$5E
db $09,$5F,$49,$5E,$49,$5E,$49,$60
db $49,$5D,$09,$4E,$09,$4E,$09,$4F
db $09,$4E,$49,$4F,$49,$5D,$49,$4E
db $49,$76,$45,$86,$45,$75,$45,$85
db $45,$B4,$05,$B7,$05,$B5,$05,$B4
db $05,$B4,$05,$B5,$05,$B5,$05,$B6
db $05,$B6,$05,$B7,$05,$B7,$05,$B6
db $05,$B4,$05,$B5,$05,$B5,$05,$B4
db $05,$B6,$05,$B5,$05,$B7,$05,$B4
db $05,$75,$05,$85,$05,$76,$05,$86
db $05,$40,$05,$B5,$05,$41,$05,$B4
db $05,$B4,$05,$41,$05,$B5,$05,$B4
db $05,$B6,$05,$B5,$05,$B7,$05,$40
db $05,$40,$05,$41,$05,$41,$05,$B4
db $05,$B4,$05,$B5,$05,$B5,$05,$40
db $05,$B4,$05,$41,$05,$B5,$05,$40
db $05,$B6,$05,$41,$05,$B7,$05,$B4
db $05,$B4,$05,$41,$05,$B5,$05,$B6
db $05,$40,$05,$B7,$05,$41,$05,$B4
db $05,$B6,$05,$B5,$05,$B7,$05,$B6
db $05,$95,$05,$A5,$05,$96,$05,$A6
db $05,$40,$05,$B7,$05,$41,$05,$B6
db $05,$40,$05,$B5,$05,$41,$05,$40
db $05,$B6,$05,$B7,$05,$B7,$05,$B4
db $05,$48,$09,$58,$09,$49,$09,$59
db $09,$4A,$09,$5A,$09,$4B,$09,$5B
db $09,$4C,$09,$5C,$09,$4D,$09,$5D
db $09,$49,$09,$5E,$09,$4F,$09,$5F
db $09,$68,$09,$78,$09,$69,$09,$79
db $09,$6A,$09,$7A,$09,$6B,$09,$7B
db $09,$6C,$09,$7C,$09,$6D,$09,$7D
db $09,$6E,$09,$7E,$09,$6F,$09,$7F
db $09,$88,$09,$98,$09,$89,$09,$99
db $09,$8A,$09,$9A,$09,$8B,$09,$9B
db $09,$8C,$09,$9C,$09,$8D,$09,$9D
db $09,$8E,$09,$9E,$09,$8F,$09,$9F
db $09,$A8,$09,$B8,$09,$A9,$09,$B9
db $09,$AA,$09,$BA,$09,$AB,$09,$BB
db $09,$AC,$09,$BC,$09,$AD,$09,$BD
db $09,$AE,$09,$BE,$09,$AF,$09,$BF
db $09,$94,$09,$B7,$05,$A4,$09,$B4
db $05,$67,$09,$B5,$05,$77,$09,$B6
db $05,$87,$09,$B7,$05,$97,$09,$B4
db $05,$A7,$09,$B5,$05,$4E,$09,$B6
db $05,$96,$05,$A6,$05,$95,$05,$A5
db $05,$40,$05,$50,$05,$41,$05,$51
db $05,$42,$05,$52,$05,$43,$05,$53
db $05,$44,$05,$54,$05,$45,$05,$55
db $05,$46,$05,$56,$05,$47,$05,$57
db $05,$47,$45,$57,$45,$46,$45,$56
db $45,$45,$45,$55,$45,$44,$45,$54
db $45,$43,$45,$53,$45,$42,$45,$52
db $45,$41,$45,$51,$45,$40,$45,$50
db $45,$60,$05,$70,$05,$61,$05,$71
db $05,$62,$05,$72,$05,$63,$05,$73
db $05,$64,$05,$74,$05,$65,$05,$FF
db $00,$66,$05,$FF,$00,$FF,$00,$FF
db $00,$FF,$00,$FF,$00,$66,$45,$FF
db $00,$65,$45,$FF,$00,$64,$45,$74
db $45,$63,$45,$73,$45,$62,$45,$72
db $45,$61,$45,$71,$45,$60,$45,$70
db $45,$80,$05,$90,$05,$81,$05,$91
db $05,$82,$05,$92,$05,$83,$05,$93
db $05,$84,$05,$FF,$00,$FF,$00,$FF
db $00,$FF,$00,$FF,$00,$84,$45,$FF
db $00,$83,$45,$93,$45,$82,$45,$92
db $45,$81,$45,$91,$45,$80,$45,$90
db $45,$A0,$05,$B0,$05,$A1,$05,$B1
db $05,$A2,$05,$B2,$05,$A3,$05,$B3
db $05,$A3,$45,$B3,$45,$A2,$45,$B2
db $45,$A1,$45,$B1,$45,$A0,$45,$B0
db $45,$48,$05,$58,$05,$49,$05,$59
db $05,$4A,$05,$5A,$05,$4B,$05,$5B
db $05,$4C,$05,$5C,$05,$4D,$05,$5D
db $05,$4E,$05,$5E,$05,$4F,$05,$5F
db $05,$68,$05,$78,$05,$69,$05,$79
db $05,$6A,$05,$7A,$05,$6B,$05,$7B
db $05,$6B,$45,$7B,$45,$6A,$45,$7A
db $45,$69,$45,$79,$45,$68,$45,$78
db $45,$78,$05,$68,$05,$79,$05,$69
db $05,$7A,$05,$6A,$05,$7B,$05,$6B
db $05,$7B,$45,$6B,$45,$7A,$45,$6A
db $45,$79,$45,$69,$45,$78,$45,$68
db $45,$78,$05,$88,$05,$79,$05,$89
db $05,$7A,$05,$8A,$05,$7B,$05,$8B
db $05,$7B,$45,$8B,$45,$7A,$45,$8A
db $45,$79,$45,$89,$45,$78,$45,$88
db $45,$FF,$00,$FF,$00,$FF,$00,$FF
db $00,$FF,$00,$FF,$00,$FF,$00,$FF
db $00,$A6,$09,$FF,$00,$FF,$00,$FF
db $00,$FF,$00,$FF,$00,$A7,$09,$FF
db $00,$FF,$00,$5F,$05,$6D,$05,$59
db $05,$6E,$05,$5A,$05,$6F,$05,$5B
db $05,$6F,$45,$5B,$45,$6E,$45,$5A
db $45,$6D,$45,$59,$45,$FF,$00,$5F
db $45,$68,$05,$78,$05,$69,$05,$79
db $05,$6A,$05,$7A,$05,$6B,$05,$7B
db $05,$6B,$45,$7B,$45,$6A,$45,$7A
db $45,$69,$45,$79,$45,$68,$45,$78
db $45,$5E,$45,$5B,$45,$5D,$45,$5A
db $45,$5C,$45,$59,$45,$88,$45,$58
db $45,$88,$05,$58,$05,$5C,$05,$59
db $05,$5D,$05,$5A,$05,$5E,$05,$5B
db $05,$88,$05,$88,$05,$88,$05,$88
db $05,$88,$05,$88,$05,$88,$05,$7D
db $05,$89,$05,$7E,$05,$8A,$05,$7F
db $05,$8A,$45,$7F,$45,$89,$45,$7E
db $45,$88,$45,$7D,$45,$88,$45,$88
db $45,$88,$05,$88,$05,$8B,$05,$88
db $05,$8C,$05,$88,$05,$8D,$05,$7C
db $05,$8D,$45,$7C,$45,$8C,$45,$88
db $45,$8B,$45,$88,$45,$88,$45,$88
db $45,$88,$05,$40,$05,$88,$05,$41
db $05,$88,$05,$42,$05,$88,$05,$43
db $05,$88,$05,$44,$05,$88,$05,$45
db $05,$88,$05,$46,$05,$88,$05,$47
db $05,$50,$05,$60,$05,$51,$05,$61
db $05,$52,$05,$62,$05,$53,$05,$63
db $05,$54,$05,$64,$05,$55,$05,$65
db $05,$56,$05,$66,$05,$57,$05,$67
db $05,$70,$05,$80,$05,$71,$05,$81
db $05,$72,$05,$82,$05,$73,$05,$83
db $05,$74,$05,$84,$05,$75,$05,$85
db $05,$76,$05,$86,$05,$77,$05,$87
db $05,$90,$05,$A0,$05,$91,$05,$A1
db $05,$92,$05,$A2,$05,$93,$05,$A3
db $05,$94,$05,$A4,$05,$95,$05,$A5
db $05,$96,$05,$8E,$05,$97,$05,$8F
db $05,$98,$05,$48,$05,$99,$05,$49
db $05,$9A,$05,$4A,$05,$9B,$05,$4B
db $05,$9C,$05,$4C,$05,$9D,$05,$4D
db $05,$9E,$05,$4E,$05,$9F,$05,$4F
db $05,$FF,$00,$FF,$00,$A8,$09,$FF
db $00,$FF,$00,$FF,$00,$FF,$00,$A9
db $09,$97,$09,$89,$09,$98,$09,$86
db $09,$99,$09,$87,$09,$96,$09,$88
db $09,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF

DATA_2ADC80:
db $06,$00,$07,$F0,$28,$08,$00,$24
db $0B,$50,$2A,$0B,$80,$11,$0C,$B0
db $10,$12,$C0,$20,$13,$90,$00,$15
db $00,$02,$07,$41,$12,$07,$D1,$24
db $0B,$B1,$11,$0C,$A1,$2C,$11,$31
db $26,$13,$C1,$22,$13,$51,$02,$FF

DATA_2ADCB0:
db $06,$00,$0B,$50,$2A,$0B,$80,$11
db $0C,$B0,$10,$12,$C0,$20,$13,$90
db $00,$15,$00,$02,$0B,$B1,$11,$0C
db $A1,$2C,$11,$31,$26,$13,$C1,$22
db $13,$51,$02,$FF

DATA_2ADCD4:
db $06,$00,$12,$C0,$20,$13,$90,$00
db $15,$00,$02,$13,$C1,$22,$13,$51
db $02,$FF

DATA_2ADCE6:
db $07,$00,$05,$30,$10,$08,$80,$12
db $03,$F0,$02,$06,$B1,$14,$08,$41
db $16,$0A,$D1,$18,$FF

DATA_2ADCFB:
db $07,$00,$00,$10,$0D,$00,$D0,$0D
db $04,$00,$1F,$05,$C0,$50,$05,$20
db $38,$05,$40,$22,$05,$90,$22,$05
db $E0,$38,$07,$70,$40,$08,$30,$40
db $08,$B0,$40,$09,$50,$40,$0A,$20
db $40,$0A,$80,$40,$0B,$30,$40,$0B
db $B0,$40,$0C,$50,$40,$0C,$20,$51
db $0D,$20,$40,$0D,$70,$40,$FF

DATA_2ADD3A:
db $01,$01,$0F,$20,$02,$0F,$21,$01
db $FF

DATA_2ADD43:
db $00,$00,$11,$30,$00,$13,$90,$02
db $11,$81,$04,$FF,$14,$40,$06,$16
db $D0,$08,$14,$A1,$0A,$FF

DATA_2ADD59:
db $05,$01,$02,$A0,$00,$04,$10,$10
db $04,$40,$20,$04,$E0,$10,$0A,$60
db $30,$0F,$00,$50,$0F,$50,$40,$0F
db $B0,$40,$02,$81,$00,$04,$31,$10
db $04,$D1,$20,$0A,$41,$30,$0F,$01
db $50,$0F,$51,$40,$0F,$B1,$40,$FF

DATA_2ADD89:
db $11,$01,$17,$10,$10,$11,$40,$00
db $17,$90,$10,$11,$C0,$00,$16,$01
db $20,$17,$91,$10,$FF

DATA_2ADD9E:
db $08,$00,$10,$00,$00,$10,$40,$00
db $12,$80,$20,$10,$C0,$00,$10,$01
db $00,$12,$41,$20,$12,$81,$10,$10
db $C1,$00,$FF

DATA_2ADDB9:
db $10,$00,$20,$10,$20,$00,$20,$50
db $20,$01,$20,$80,$02,$00,$20,$C0
db $40,$00,$20,$D0,$00,$04,$20,$E0
db $00,$01,$21,$00,$10,$00,$21,$C0
db $40,$01,$24,$00,$10,$00,$25,$40
db $10,$01,$28,$30,$50,$00,$2C,$00
db $30,$00,$2C,$30,$50,$01,$20,$11
db $20,$02,$20,$51,$20,$03,$20,$81
db $02,$02,$20,$D1,$40,$02,$20,$E1
db $00,$03,$21,$B1,$10,$05,$21,$A1
db $40,$03,$22,$01,$30,$01,$24,$01
db $10,$02,$25,$C1,$40,$05,$25,$D1
db $40,$06,$26,$01,$30,$02,$29,$01
db $10,$03,$2A,$C1,$40,$04,$2B,$C1
db $40,$00,$2B,$31,$50,$02,$2D,$C1
db $40,$04,$2C,$71,$10,$04,$2E,$01
db $30,$03,$FF

DATA_2ADE3C:
db $0E,$00,$0B,$C0,$02,$0F,$A0,$18
db $0F,$E0,$24,$12,$20,$36,$12,$60
db $36,$13,$C0,$44,$0F,$40,$70,$10
db $00,$70,$0B,$81,$0C,$0F,$C1,$64
db $11,$01,$56,$11,$41,$36,$13,$21
db $44,$13,$A1,$44,$33,$E1,$54,$01
db $0F,$21,$70,$FF

DATA_2ADE70:
db $01,$00,$00,$20,$1A,$22,$00,$34
db $06,$04,$20,$20,$26,$00,$06,$04
db $08,$20,$06,$0A,$40,$18,$0C,$20
db $06,$0E,$40,$18,$10,$00,$18,$12
db $20,$1A,$34,$00,$34,$06,$16,$20
db $20,$38,$00,$06,$04,$1A,$20,$06
db $00,$01,$18,$02,$21,$1A,$24,$01
db $34,$06,$06,$21,$20,$28,$01,$06
db $04,$0A,$21,$06,$0C,$41,$18,$0E
db $01,$18,$10,$21,$1A,$32,$01,$34
db $06,$14,$21,$20,$36,$01,$06,$04
db $18,$21,$06,$1A,$41,$18,$FF

DATA_2ADECF:
db $0A,$00,$0E,$50,$00,$0F,$A0,$10
db $11,$31,$20,$10,$81,$30,$FF

DATA_2ADEDE:
db $03,$00,$00,$20,$07,$01,$A0,$14
db $04,$50,$08,$06,$E0,$14,$07,$70
db $14,$00,$20,$07,$01,$71,$18,$03
db $11,$08,$05,$31,$13,$07,$91,$14
db $FF

DATA_2ADEFF:
db $03,$00,$00,$20,$07,$01,$A0,$14
db $04,$50,$08,$06,$E0,$14,$07,$70
db $14,$00,$20,$07,$11,$50,$20,$14
db $A0,$30,$12,$20,$50,$11,$B0,$40
db $01,$71,$18,$03,$11,$08,$05,$31
db $13,$07,$91,$14,$0F,$71,$20,$34
db $E1,$30,$01,$11,$F1,$40,$FF

DATA_2ADF36:
db $02,$00,$0F,$60,$03,$0E,$F0,$03
db $0F,$E0,$03,$10,$00,$03,$30,$20
db $03,$01,$11,$10,$03,$11,$40,$03
db $0E,$A0,$16,$10,$60,$14,$10,$C0
db $14,$12,$80,$13,$14,$50,$30,$14
db $F0,$30,$15,$30,$20,$15,$60,$36
db $30,$01,$03,$01,$0F,$21,$03,$10
db $81,$04,$11,$B1,$03,$12,$A1,$02
db $12,$D1,$02,$33,$C1,$01,$01,$0E
db $41,$16,$10,$21,$14,$12,$61,$13
db $12,$F1,$13,$14,$11,$30,$15,$31
db $20,$15,$A1,$20,$15,$E1,$30,$FF

DATA_2ADF96:
db $05,$01,$00,$00,$02,$00,$80,$20
db $00,$A0,$10,$00,$C0,$05,$02,$20
db $02,$02,$C0,$40,$04,$00,$20,$04
db $20,$10,$04,$80,$10,$04,$A0,$20
db $04,$40,$40,$06,$A0,$02,$08,$00
db $31,$08,$40,$02,$08,$C0,$20,$08
db $E0,$40,$0A,$40,$20,$0A,$60,$02
db $0C,$00,$02,$0C,$80,$20,$0C,$A0
db $10,$0C,$C0,$05,$0E,$20,$02,$0E
db $C0,$40,$10,$00,$20,$10,$20,$10
db $10,$80,$10,$10,$40,$40,$10,$A0
db $20,$12,$A0,$02,$14,$00,$31,$14
db $40,$02,$14,$C0,$20,$14,$E0,$40
db $16,$40,$20,$16,$60,$02,$18,$00
db $04,$02,$01,$10,$02,$21,$04,$04
db $21,$10,$04,$41,$40,$04,$81,$10
db $04,$A1,$20,$04,$C1,$01,$06,$A1
db $02,$08,$21,$31,$08,$61,$20,$08
db $81,$02,$0A,$61,$02,$0A,$E1,$20
db $0E,$01,$10,$0E,$21,$04,$10,$21
db $10,$10,$41,$40,$10,$81,$10,$10
db $A1,$20,$10,$C1,$01,$12,$A1,$02
db $14,$21,$31,$14,$61,$20,$14,$81
db $02,$16,$61,$02,$16,$E1,$20,$18
db $01,$04,$FF

DATA_2AE059:
db $13,$00,$0E,$00,$00,$0F,$60,$02
db $10,$A0,$04,$13,$C0,$10,$12,$60
db $20,$10,$01,$06,$0F,$31,$08,$0E
db $D1,$0A,$13,$81,$10,$12,$21,$20
db $12,$E1,$20,$FF

DATA_2AE07D:
db $11,$00,$FF

DATA_2AE080:
db $10,$00,$FF

DATA_2AE083:
db $12,$00,$FF

DATA_2AE086:
db $14,$00,$12,$A0,$03,$12,$11,$02
db $12,$61,$0B,$FF

DATA_2AE092:
db $02,$00,$0C,$10,$03,$0C,$50,$03
db $0C,$90,$03,$0C,$D0,$03,$0C,$70
db $10,$FF

DATA_2AE0A4:
db $17,$01,$20,$10,$06,$0C,$20,$90
db $06,$0C,$26,$10,$06,$00,$26,$90
db $06,$00,$28,$20,$14,$05,$12,$00
db $26,$12,$40,$36,$12,$80,$26,$12
db $C0,$36,$FF

DATA_2AE0C7:
db $15,$00,$00,$70,$03,$00,$E0,$40
db $01,$50,$50,$02,$00,$40,$02,$C0
db $00,$04,$10,$00,$04,$80,$40,$05
db $60,$50,$05,$B0,$10,$05,$F0,$40
db $06,$40,$10,$06,$90,$50,$07,$00
db $10,$07,$70,$40,$07,$A0,$10,$0D
db $80,$30,$0D,$D0,$20,$0E,$40,$20
db $0F,$B0,$20,$10,$60,$20,$00,$31
db $50,$00,$A1,$00,$01,$01,$00,$01
db $E1,$50,$02,$61,$40,$03,$C1,$00
db $04,$21,$0D,$05,$91,$00,$05,$D1
db $50,$06,$41,$52,$06,$B1,$10,$07
db $11,$10,$07,$71,$40,$0D,$71,$30
db $0E,$11,$20,$0F,$E1,$21,$10,$21
db $20,$10,$91,$30,$FF

DATA_2AE13C:
db $0F,$00,$00,$F0,$50,$02,$10,$70
db $02,$60,$50,$03,$20,$50,$03,$A0
db $60,$03,$D0,$40,$04,$90,$40,$05
db $50,$50,$06,$10,$70,$07,$E0,$70
db $08,$40,$50,$08,$80,$40,$09,$B0
db $60,$0B,$70,$50,$0C,$50,$40,$2B
db $20,$08,$01,$0D,$10,$04,$0E,$F0
db $03,$0F,$40,$05,$0F,$E0,$03,$0C
db $A0,$18,$0E,$60,$16,$10,$C0,$14
db $12,$80,$13,$00,$51,$50,$02,$11
db $40,$02,$A1,$40,$02,$D1,$60,$03
db $61,$50,$04,$21,$70,$05,$81,$40
db $06,$51,$50,$07,$01,$50,$09,$D1
db $40,$0A,$21,$50,$0A,$A1,$50,$0A
db $F1,$70,$0B,$01,$40,$0C,$C1,$70
db $0D,$D1,$60,$0E,$B1,$06,$0F,$81
db $04,$30,$01,$03,$01,$10,$D1,$04
db $11,$A1,$03,$32,$C1,$02,$01,$0A
db $41,$19,$0D,$21,$17,$0F,$F1,$16
db $11,$61,$14,$FF

DATA_2AE1D8:
db $16,$00,$0B,$00,$21,$0B,$40,$02
db $0B,$C0,$10,$0B,$E0,$30,$0D,$40
db $10,$0D,$60,$02,$11,$20,$48,$13
db $00,$42,$13,$80,$60,$13,$A0,$50
db $13,$C0,$45,$15,$20,$42,$15,$C0
db $70,$17,$00,$60,$17,$20,$50,$17
db $40,$70,$17,$80,$50,$17,$A0,$60
db $19,$A0,$42,$0B,$01,$30,$0B,$21
db $21,$0B,$61,$10,$0B,$81,$02,$0D
db $61,$02,$0D,$E1,$10,$15,$01,$50
db $15,$21,$44,$17,$21,$50,$17,$41
db $70,$17,$81,$50,$17,$A1,$60,$17
db $C1,$41,$19,$A1,$42,$FF

DATA_2AE23E:
db $0C,$00,$FF

DATA_2AE241:
db $0B,$00,$0B,$10,$24,$0B,$90,$24
db $02,$00,$06,$02,$40,$16,$02,$80
db $06,$02,$C0,$16,$FF

DATA_2AE256:
db $68,$E2,$F9,$E2,$1A,$E4,$CB,$E5
db $EC,$E6,$0D,$E8,$BE,$E9,$DF,$EA
db $20,$ED,$02,$B4,$B4,$B4,$03,$45
db $47,$45,$04,$45,$05,$45,$47,$B4
db $B4,$02,$02,$B4,$B4,$B4,$46,$B4
db $B4,$B4,$46,$B4,$B4,$B4,$46,$B4
db $B4,$02,$02,$49,$E5,$45,$4A,$B4
db $B4,$B4,$48,$45,$06,$45,$50,$B4
db $B4,$02,$02,$B4,$B4,$B4,$54,$B4
db $B4,$B4,$46,$B4,$B4,$B4,$B4,$B4
db $B4,$02,$02,$B4,$B4,$B4,$48,$45
db $67,$45,$E8,$B4,$B4,$99,$A2,$9A
db $B4,$02,$02,$B4,$42,$42,$46,$42
db $B4,$B4,$B4,$99,$A2,$A7,$C8,$9D
db $B4,$02,$02,$42,$42,$53,$48,$53
db $50,$45,$47,$B3,$47,$45,$C9,$9D
db $B4,$02,$02,$42,$53,$53,$46,$53
db $53,$42,$46,$9D,$42,$42,$42,$9D
db $B4,$02,$02,$42,$53,$53,$07,$45
db $47,$45,$08,$A6,$A2,$A2,$A2,$A7
db $B4,$02,$FF,$43,$43,$BB,$BB,$E8
db $45,$47,$45,$04,$96,$44,$45,$47
db $42,$50,$45,$43,$BB,$BF,$BB,$BB
db $43,$46,$BF,$46,$43,$46,$43,$46
db $BB,$42,$BF,$43,$42,$BB,$BB,$44
db $45,$4A,$43,$48,$43,$48,$42,$05
db $45,$47,$45,$43,$43,$43,$43,$46
db $69,$43,$69,$46,$69,$46,$43,$46
db $43,$43,$43,$43,$43,$43,$53,$03
db $43,$69,$43,$67,$45,$4A,$45,$4A
db $45,$BC,$43,$43,$53,$43,$43,$46
db $43,$43,$69,$43,$43,$BB,$BB,$46
db $43,$43,$43,$43,$43,$43,$53,$48
db $43,$50,$45,$BC,$43,$53,$BB,$48
db $51,$47,$42,$43,$43,$43,$BB,$46
db $BB,$BF,$42,$54,$53,$53,$BB,$BB
db $BB,$46,$43,$43,$49,$E5,$45,$4A
db $45,$47,$45,$4A,$43,$53,$53,$43
db $BB,$E8,$45,$47,$45,$06,$45,$47
db $51,$BB,$45,$50,$42,$A1,$83,$83
db $83,$A3,$43,$46,$53,$53,$53,$46
db $53,$53,$53,$46,$BB,$43,$9D,$9D
db $9D,$43,$43,$68,$43,$43,$53,$48
db $BB,$53,$43,$48,$BB,$43,$9D,$9D
db $9D,$43,$43,$46,$43,$C8,$43,$46
db $BB,$53,$53,$46,$BB,$A1,$82,$82
db $82,$A3,$43,$48,$43,$C9,$43,$48
db $43,$53,$53,$48,$45,$47,$53,$BB
db $43,$43,$43,$46,$69,$46,$69,$46
db $43,$43,$53,$53,$BB,$46,$BB,$53
db $BB,$43,$43,$07,$43,$48,$45,$69
db $43,$43,$43,$53,$BB,$48,$BF,$53
db $BB,$43,$43,$46,$BB,$43,$43,$46
db $43,$43,$43,$53,$43,$BB,$BB,$43
db $53,$43,$43,$4A,$45,$47,$45,$4A
db $43,$43,$43,$43,$53,$53,$53,$53
db $43,$43,$43,$FF,$8D,$8E,$50,$45
db $47,$B7,$AE,$B8,$05,$8B,$50,$B2
db $47,$B2,$47,$45,$8D,$8F,$85,$86
db $46,$8C,$8D,$8F,$AA,$91,$85,$A5
db $46,$9D,$46,$99,$8D,$8D,$8D,$8F
db $04,$90,$87,$88,$B5,$8D,$8D,$8E
db $06,$B9,$4A,$9D,$8D,$8D,$8D,$8D
db $B0,$87,$96,$97,$AB,$95,$95,$9F
db $AA,$A5,$46,$8A,$8D,$95,$88,$8D
db $B5,$8E,$E8,$B9,$67,$45,$47,$B7
db $AF,$8E,$48,$9D,$8D,$B4,$8C,$8D
db $B0,$8F,$85,$A5,$46,$A1,$A2,$93
db $B0,$8E,$46,$A6,$8D,$B4,$94,$88
db $03,$8D,$87,$96,$48,$56,$BC,$8C
db $07,$B8,$4A,$51,$8D,$B4,$42,$94
db $AB,$95,$96,$B4,$46,$A1,$A2,$93
db $8D,$8F,$85,$85,$8D,$49,$E5,$45
db $BC,$51,$E8,$51,$4A,$45,$BC,$94
db $95,$95,$95,$95,$08,$B3,$47,$45
db $09,$45,$47,$8C,$8D,$8D,$8F,$85
db $86,$42,$8C,$8D,$B1,$A0,$A2,$A2
db $A2,$A2,$BA,$93,$8D,$8D,$8D,$8D
db $8F,$85,$90,$8D,$0A,$B3,$47,$45
db $E8,$45,$67,$8C,$8D,$87,$95,$95
db $95,$88,$8D,$8D,$BA,$A0,$A2,$9C
db $85,$86,$54,$8C,$87,$96,$E8,$45
db $50,$94,$88,$8D,$48,$B3,$0B,$B7
db $BC,$8E,$BC,$8C,$8E,$BF,$46,$42
db $BF,$42,$8C,$8D,$A2,$82,$A2,$A9
db $88,$8F,$85,$90,$4B,$45,$50,$45
db $E8,$BF,$8C,$8D,$47,$45,$47,$45
db $4B,$8D,$8D,$8D,$8F,$9B,$A2,$A2
db $A2,$9C,$90,$8D,$85,$85,$85,$85
db $90,$8D,$8D,$8D,$8D,$8E,$42,$B4
db $42,$8C,$8D,$8D,$95,$95,$95,$95
db $95,$95,$95,$95,$95,$A8,$A2,$A2
db $A2,$A9,$95,$95,$4B,$45,$50,$BB
db $BB,$8C,$8D,$8D,$8D,$8D,$87,$95
db $95,$88,$8D,$02,$8E,$BB,$42,$84
db $85,$90,$8D,$8D,$8D,$8D,$8E,$B4
db $B4,$8C,$8D,$02,$8F,$85,$85,$90
db $8D,$8D,$8D,$8D,$8D,$8D,$8E,$42
db $B4,$8C,$8D,$02,$8D,$8D,$8D,$8D
db $8D,$8D,$8D,$8D,$8D,$8D,$92,$A2
db $9C,$90,$8D,$02,$8D,$8D,$8D,$8D
db $8D,$87,$95,$95,$95,$95,$96,$B4
db $8C,$8D,$8D,$02,$8D,$8D,$8D,$87
db $95,$98,$42,$B4,$B4,$C8,$B4,$B4
db $8C,$8D,$8D,$02,$8D,$8D,$8D,$8E
db $B4,$8A,$A2,$B1,$9A,$C9,$45,$47
db $B7,$BC,$8D,$02,$8D,$8D,$8D,$8E
db $B4,$9D,$B4,$42,$A4,$85,$85,$85
db $90,$8D,$8D,$02,$95,$95,$95,$A8
db $A2,$82,$A2,$A2,$A9,$95,$95,$95
db $95,$95,$95,$02,$FF,$8D,$8D,$8D
db $8D,$8D,$8D,$8D,$8D,$8D,$8D,$8D
db $87,$95,$95,$95,$95,$95,$95,$95
db $89,$95,$88,$8D,$8D,$8D,$87,$95
db $96,$BD,$42,$BD,$42,$42,$49,$E5
db $B3,$BC,$8C,$8D,$87,$95,$96,$E0
db $45,$08,$45,$47,$45,$8D,$85,$AA
db $91,$85,$90,$87,$96,$C8,$42,$BD
db $99,$BA,$83,$A2,$9A,$8D,$8D,$B5
db $8D,$AD,$8D,$8E,$42,$C9,$45,$47
db $9D,$4A,$B3,$67,$9D,$8D,$87,$AB
db $88,$8D,$8D,$8F,$86,$42,$BD,$BD
db $A6,$BA,$82,$A2,$A7,$8D,$8E,$BC
db $8C,$8D,$AD,$8D,$92,$A2,$A3,$E8
db $45,$07,$45,$47,$45,$8D,$96,$BB
db $94,$88,$8D,$8D,$8E,$BD,$42,$BD
db $84,$85,$85,$85,$86,$42,$42,$BB
db $BB,$94,$95,$95,$A8,$A2,$A2,$A2
db $A9,$95,$95,$95,$A8,$95,$95,$88
db $8D,$8D,$87,$95,$95,$95,$95,$95
db $95,$88,$8D,$8D,$8D,$BD,$42,$94
db $95,$95,$96,$BD,$53,$53,$53,$53
db $BD,$8C,$8D,$8D,$8D,$47,$42,$BC
db $56,$67,$45,$47,$45,$05,$45,$47
db $45,$04,$95,$88,$8D,$46,$BD,$42
db $42,$46,$BD,$52,$53,$53,$BF,$46
db $BF,$46,$42,$8C,$8D,$48,$45,$47
db $BD,$48,$45,$E8,$BD,$53,$42,$50
db $42,$48,$BD,$8C,$8D,$46,$BD,$46
db $84,$AA,$86,$42,$BD,$53,$42,$42
db $42,$46,$42,$8C,$8D,$4A,$42,$48
db $B7,$06,$8E,$BD,$42,$E0,$51,$BC
db $45,$03,$42,$8C,$8D,$42,$42,$84
db $9E,$AB,$9F,$85,$86,$BD,$BD,$A1
db $A2,$A2,$9C,$90,$8D,$A2,$A2,$A9
db $96,$50,$94,$95,$A8,$A2,$A2,$A2
db $A2,$A2,$A9,$95,$8D,$FF,$42,$42
db $44,$45,$04,$45,$50,$9D,$05,$45
db $47,$B4,$42,$8C,$8D,$8D,$42,$B4
db $46,$B4,$46,$99,$A2,$A7,$46,$B4
db $46,$B4,$B4,$8C,$8D,$8D,$42,$42
db $03,$B4,$BC,$9D,$BC,$45,$4A,$B4
db $48,$45,$5F,$8C,$8D,$8D,$42,$42
db $46,$99,$A2,$A7,$46,$B4,$42,$B4
db $46,$B4,$84,$90,$8D,$8D,$42,$B4
db $48,$9D,$67,$45,$4A,$42,$44,$45
db $4A,$B4,$8C,$8D,$8D,$8D,$42,$42
db $46,$9D,$46,$B4,$A1,$A3,$46,$B4
db $B4,$B4,$8C,$C2,$C3,$C4,$42,$49
db $E5,$9D,$48,$45,$E8,$45,$4A,$B4
db $B4,$B4,$8C,$CE,$D7,$D7,$85,$85
db $85,$91,$85,$85,$85,$85,$85,$85
db $85,$85,$90,$D2,$D7,$D7,$C4,$C3
db $C4,$C3,$C4,$C3,$C4,$C3,$C4,$C3
db $C4,$C3,$C4,$D0,$D7,$D7,$42,$57
db $58,$59,$5A,$84,$90,$8D,$8D,$8D
db $8D,$D2,$D7,$D7,$E0,$D7,$42,$5B
db $5C,$5D,$5D,$8C,$8D,$8D,$8D,$8D
db $8D,$CE,$D7,$E9,$DB,$D7,$85,$85
db $85,$85,$85,$90,$8D,$C2,$BC,$C4
db $C4,$D0,$D9,$DA,$07,$D7,$C3,$C4
db $C5,$8D,$8D,$C2,$C3,$D0,$DB,$D7
db $D7,$E9,$DB,$D7,$DB,$D7,$D6,$D3
db $D4,$C2,$C3,$D0,$D9,$E4,$DE,$DA
db $06,$DA,$DE,$D7,$E8,$D7,$C2,$C3
db $C4,$D0,$D7,$D7,$DB,$D7,$D7,$D7
db $D7,$D7,$D7,$E9,$DB,$D7,$D7,$D7
db $E9,$D7,$E8,$DA,$DE,$DA,$EB,$DA
db $DC,$DA,$09,$DA,$DE,$D7,$D7,$D7
db $C8,$D7,$D7,$E9,$D7,$D7,$DB,$D7
db $DB,$E9,$D7,$D7,$DB,$D7,$D7,$D7
db $C9,$DA,$DC,$DA,$0B,$DA,$0A,$D7
db $DD,$DA,$E0,$DA,$08,$D7,$FF,$8D
db $88,$8D,$8D,$8F,$90,$87,$95,$95
db $95,$98,$EA,$E0,$EA,$94,$88,$8D
db $94,$88,$AD,$8D,$8D,$8E,$EA,$EA
db $EA,$9D,$42,$46,$EA,$EA,$94,$42
db $42,$94,$95,$95,$95,$96,$EA,$44
db $45,$04,$45,$4A,$51,$BC,$EA,$EA
db $EA,$42,$99,$A2,$9A,$B4,$EA,$46
db $99,$82,$9A,$46,$EA,$EA,$99,$42
db $49,$E5,$B9,$47,$B9,$03,$45,$E8
db $9D,$67,$B3,$4A,$56,$47,$B9,$EA
db $EA,$42,$A6,$BA,$8B,$B4,$EA,$46
db $8A,$A2,$A7,$46,$EA,$46,$A6,$42
db $42,$42,$B4,$BC,$9D,$B4,$EA,$48
db $B3,$47,$45,$05,$EA,$E8,$45,$42
db $42,$42,$42,$B4,$A6,$9A,$EA,$EA
db $9D,$42,$42,$42,$EA,$EA,$EA,$42
db $42,$42,$42,$42,$B4,$A6,$A2,$A2
db $A7,$EA,$EA,$EA,$EA,$42,$42,$8D
db $8D,$8D,$8D,$8D,$8E,$BC,$45,$47
db $9D,$47,$EA,$EA,$EA,$EA,$EA,$88
db $8D,$8D,$87,$95,$A8,$A2,$A2,$A2
db $A7,$46,$42,$EA,$EA,$EA,$84,$94
db $95,$95,$96,$42,$B4,$42,$42,$44
db $45,$4A,$45,$47,$EA,$EA,$94,$A2
db $9A,$EA,$B4,$EA,$42,$42,$99,$BA
db $9A,$EA,$EA,$46,$B4,$EA,$EA,$BC
db $9D,$44,$45,$08,$45,$47,$9D,$67
db $B3,$47,$EA,$0A,$45,$47,$45,$A2
db $A7,$46,$42,$42,$42,$46,$A6,$A2
db $A7,$46,$99,$A2,$9A,$EA,$EA,$06
db $45,$4A,$42,$E0,$42,$48,$45,$47
db $51,$4A,$B9,$09,$9D,$B4,$EA,$EA
db $42,$46,$42,$46,$42,$46,$42,$46
db $42,$42,$A6,$BA,$A7,$B4,$B4,$B4
db $B4,$48,$45,$07,$45,$4A,$45,$4A
db $45,$E8,$45,$4A,$42,$42,$B4,$EA
db $42,$94,$95,$95,$88,$8D,$87,$95
db $88,$8D,$8F,$85,$85,$86,$42,$86
db $42,$42,$42,$42,$94,$88,$8E,$EA
db $8C,$AD,$8D,$8D,$8D,$8E,$42,$0B
db $45,$47,$45,$47,$42,$8C,$8F,$85
db $90,$87,$95,$95,$88,$8E,$42,$46
db $99,$A2,$9A,$46,$42,$94,$89,$95
db $89,$96,$B4,$C8,$8C,$8E,$42,$4A
db $9D,$67,$B3,$4A,$56,$47,$B3,$47
db $B3,$47,$45,$C9,$8C,$8E,$42,$46
db $A6,$A2,$A7,$46,$BF,$84,$91,$85
db $91,$86,$B4,$42,$8C,$8E,$42,$48
db $45,$47,$45,$0C,$EA,$94,$88,$8D
db $8D,$8F,$85,$85,$90,$8E,$42,$EA
db $EA,$EA,$EA,$EA,$EA,$EA,$94,$88
db $8D,$8D,$8D,$8D,$8D,$8E,$42,$B4
db $EA,$EA,$EA,$EA,$EA,$EA,$EA,$94
db $95,$95,$95,$95,$95,$96,$42,$FF
db $8D,$87,$95,$95,$95,$95,$95,$95
db $89,$95,$88,$87,$95,$95,$95,$95
db $8D,$8E,$E5,$45,$47,$45,$47,$BE
db $9D,$BC,$8C,$8E,$BE,$BC,$BE,$67
db $8D,$8E,$46,$BE,$BE,$BE,$46,$BE
db $9D,$46,$8C,$8E,$BE,$54,$BE,$46
db $8D,$8E,$03,$45,$BC,$BE,$BC,$BE
db $9D,$50,$8C,$BC,$45,$4A,$45,$4A
db $8D,$8F,$9B,$A2,$A2,$A2,$A2,$83
db $82,$9C,$90,$8F,$9B,$A2,$A2,$A2
db $8D,$8D,$8E,$BC,$45,$BC,$BE,$9D
db $44,$B7,$06,$AC,$E8,$45,$47,$45
db $8D,$8D,$8E,$46,$BE,$BE,$BE,$9D
db $46,$8C,$8D,$8D,$8E,$BE,$46,$BE
db $8D,$8D,$8E,$04,$45,$BC,$BE,$9D
db $BC,$8C,$8D,$8D,$8E,$BE,$05,$45
db $95,$95,$A8,$A2,$A2,$A2,$A2,$82
db $A2,$A9,$95,$95,$A8,$A2,$A2,$A2
db $95,$95,$89,$95,$88,$87,$95,$95
db $95,$95,$95,$95,$89,$95,$88,$8D
db $45,$E8,$B9,$08,$8C,$8E,$09,$45
db $47,$45,$BC,$BE,$9D,$BE,$8C,$8D
db $BE,$BE,$9D,$46,$8C,$8E,$46,$BE
db $BE,$BE,$46,$BE,$9D,$BC,$8C,$8D
db $45,$BC,$9D,$BC,$8C,$8E,$E8,$45
db $47,$45,$0A,$45,$50,$BE,$8C,$8D
db $A2,$83,$82,$9C,$90,$8F,$9B,$A2
db $BA,$A2,$A2,$83,$82,$9C,$90,$8D
db $07,$B9,$BC,$8C,$8D,$8D,$BC,$56
db $0B,$45,$47,$B9,$67,$8C,$8D,$8D
db $BE,$9D,$46,$8C,$8D,$8D,$8E,$BD
db $C8,$BD,$42,$9D,$46,$8C,$8D,$8D
db $BC,$9D,$50,$8C,$8D,$8D,$8E,$42
db $C9,$45,$47,$B3,$4A,$8C,$8D,$8D
db $A2,$82,$A2,$A9,$95,$95,$A8,$A2
db $A2,$A2,$A2,$82,$A2,$A9,$95,$8D
db $FF,$D8,$42,$42,$42,$42,$42,$42
db $42,$D1,$D1,$D1,$D1,$D1,$D1,$D1
db $D8,$D8,$42,$D1,$D1,$42,$42,$42
db $D1,$BC,$F0,$F1,$F1,$F1,$F2,$D1
db $D8,$42,$D1,$D1,$D1,$D1,$D1,$D1
db $D1,$54,$F9,$F7,$F3,$F7,$FA,$D1
db $D1,$D1,$D1,$E5,$D1,$D1,$D1,$BC
db $D1,$48,$9D,$42,$9D,$42,$9D,$D1
db $D1,$D1,$D1,$46,$D1,$D1,$D1,$46
db $F0,$00,$FC,$42,$9D,$42,$9D,$D1
db $D1,$D1,$D1,$48,$45,$47,$45,$4A
db $02,$01,$F4,$F1,$F5,$FB,$A7,$D1
db $D1,$D1,$D1,$D1,$D1,$D1,$D1,$D1
db $F6,$F7,$F7,$F7,$F7,$F8,$D1,$D1
db $D1,$D8,$42,$D1,$D1,$42,$42,$42
db $D1,$D1,$D1,$BF,$BF,$BF,$D1,$D1
db $D1,$D8,$42,$42,$42,$42,$42,$42
db $42,$D1,$D1,$D1,$D1,$D1,$D1,$42
db $D8,$D8,$42,$42,$E2,$E2,$42,$42
db $42,$42,$E2,$E2,$E2,$42,$42,$42
db $D8,$D8,$42,$E2,$E2,$E2,$E2,$42
db $42,$42,$E2,$BC,$E2,$42,$42,$42
db $D8,$D8,$E2,$E2,$42,$42,$E2,$E2
db $42,$E2,$E2,$46,$E2,$E2,$42,$42
db $D8,$D8,$E2,$BC,$45,$47,$42,$E2
db $E2,$BC,$56,$4A,$42,$E2,$E2,$42
db $D8,$D8,$E2,$42,$42,$46,$42,$D1
db $D1,$D1,$D1,$D1,$42,$42,$E2,$42
db $D8,$D8,$E2,$E2,$42,$48,$45,$E6
db $E6,$E6,$E6,$E6,$45,$BC,$E2,$42
db $D8,$D8,$42,$E2,$42,$42,$42,$D1
db $D1,$D1,$D1,$D1,$42,$E2,$E2,$42
db $D8,$D8,$42,$42,$E2,$E2,$E2,$42
db $42,$42,$42,$E2,$E2,$E2,$42,$42
db $D8,$D8,$42,$42,$42,$42,$E2,$E2
db $E2,$E2,$E2,$E2,$42,$42,$42,$42
db $D8,$E2,$E2,$E2,$E2,$E2,$E2,$E2
db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2
db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2
db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2
db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2
db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2
db $E2,$E2,$E2,$BC,$45,$47,$E2,$BC
db $45,$47,$45,$47,$45,$47,$E2,$E2
db $E2,$E2,$E2,$E2,$E2,$46,$E2,$E2
db $E2,$E2,$E2,$46,$E2,$54,$E2,$E2
db $E2,$E2,$E2,$44,$45,$03,$E2,$E2
db $E2,$67,$45,$4A,$E2,$BC,$E2,$E2
db $E2,$E2,$E2,$46,$E2,$E2,$E2,$E2
db $E2,$46,$E2,$E2,$E2,$E2,$E2,$E2
db $E2,$E2,$E2,$04,$45,$BC,$45,$47
db $45,$4A,$45,$47,$45,$BC,$E2,$E2
db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2
db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2
db $E2,$42,$42,$42,$42,$42,$42,$42
db $42,$42,$42,$42,$42,$42,$42,$42
db $42,$42,$42,$42,$42,$42,$42,$42
db $42,$42,$42,$42,$42,$42,$42,$42
db $42,$D8,$61,$63,$63,$63,$61,$63
db $63,$63,$63,$61,$63,$63,$63,$61
db $D8,$D8,$64,$62,$62,$62,$62,$62
db $62,$62,$62,$62,$62,$62,$62,$64
db $D8,$D8,$64,$42,$E1,$42,$E1,$42
db $E1,$42,$E1,$42,$42,$CA,$CB,$64
db $D8,$D8,$64,$BC,$45,$47,$56,$47
db $45,$47,$45,$47,$45,$CC,$CD,$64
db $D8,$D8,$61,$63,$63,$63,$61,$63
db $63,$63,$63,$61,$63,$63,$63,$61
db $D8,$62,$62,$62,$62,$62,$62,$62
db $62,$62,$62,$62,$62,$62,$62,$62
db $D8,$42,$42,$42,$42,$42,$42,$42
db $42,$42,$42,$42,$42,$42,$42,$42
db $42,$FF,$02,$8D,$8D,$8D,$8D,$8D
db $8D,$8D,$8D,$8D,$8D,$8D,$8D,$8D
db $8D,$02,$02,$8D,$8D,$8D,$8D,$8D
db $8D,$8D,$8D,$8D,$8D,$8D,$8D,$8D
db $8D,$02,$02,$8D,$8D,$87,$95,$95
db $95,$95,$95,$95,$95,$95,$95,$95
db $88,$02,$02,$88,$8D,$8E,$44,$45
db $BC,$45,$BC,$45,$BC,$42,$42,$42
db $8C,$02,$02,$90,$8D,$8E,$42,$42
db $42,$42,$42,$42,$42,$42,$42,$84
db $90,$02,$02,$8D,$87,$96,$44,$45
db $BC,$45,$BC,$45,$BC,$42,$A1,$93
db $8D,$02,$02,$8D,$8E,$42,$42,$42
db $42,$42,$42,$42,$42,$42,$42,$8C
db $8D,$02,$02,$8D,$8E,$42,$42,$84
db $85,$86,$44,$45,$BC,$42,$84,$90
db $8D,$02,$02,$8D,$8F,$85,$85,$90
db $8D,$8F,$85,$85,$85,$85,$90,$8D
db $8D,$02,$FF,$BC,$45,$00,$00,$00
db $00,$04,$00,$07,$00,$0A,$00,$0E
db $00,$42,$08,$83,$0C,$C4,$10,$05
db $15,$04,$00,$67,$0C,$CA,$18,$00
db $00,$00,$00,$BC,$45,$21,$04,$00
db $00,$05,$00,$08,$00,$0B,$00,$0F
db $00,$42,$08,$83,$0C,$C4,$10,$26
db $19,$04,$00,$67,$0C,$EB,$1C,$62
db $04,$84,$10,$BC,$45,$C6,$18,$00
db $00,$06,$00,$09,$00,$0C,$00,$10
db $00,$42,$08,$83,$0C,$E5,$14,$47
db $1D,$04,$00,$67,$0C,$0C,$21,$E5
db $18,$08,$21,$BC,$45,$6B,$2D,$00
db $00,$07,$00,$0A,$00,$0D,$00,$11
db $00,$42,$08,$A4,$10,$06,$19,$68
db $21,$04,$00,$67,$0C,$2D,$25,$68
db $2D,$8C,$31,$BC,$45,$10,$42,$00
db $00,$08,$00,$0B,$00,$0E,$00,$12
db $00,$63,$0C,$C5,$14,$27,$1D,$89
db $25,$04,$00,$67,$0C,$4E,$29,$EB
db $41,$11,$42,$BC,$45,$B5,$56,$21
db $04,$09,$00,$0C,$00,$0F,$00,$13
db $00,$84,$10,$E6,$18,$48,$21,$AA
db $29,$04,$00,$67,$0C,$6F,$2D,$6E
db $56,$94,$56,$BC,$45,$5A,$6B,$42
db $08,$0A,$00,$0D,$00,$10,$00,$14
db $00,$A5,$14,$07,$1D,$69,$25,$CB
db $2D,$04,$00,$67,$0C,$90,$31,$F1
db $6A,$17,$6B,$BC,$45,$FF,$7F,$63
db $0C,$0B,$00,$0E,$00,$11,$00,$15
db $00,$C6,$18,$28,$21,$8A,$29,$EC
db $31,$04,$00,$67,$0C,$B1,$35,$74
db $7F,$9A,$7F

DATA_2AEEB1:
db $1D,$63,$1D,$63,$1D,$63,$1D,$63
db $1C,$64,$1C,$64,$1C,$64,$1C,$64
db $1B,$65,$1B,$65,$1B,$65,$1B,$65
db $1A,$66,$1A,$66,$1A,$66,$1A,$66
db $19,$67,$19,$67,$19,$67,$19,$67
db $18,$68,$18,$68,$18,$68,$18,$68
db $17,$69,$17,$69,$17,$69,$17,$69
db $16,$6A,$16,$6A,$16,$6A,$16,$6A
db $15,$6B,$15,$6B,$15,$6B,$15,$6B
db $14,$6C,$14,$6C,$14,$6C,$14,$6C
db $13,$6D,$13,$6D,$13,$6D,$13,$6D
db $12,$6E,$12,$6E,$12,$6E,$12,$6E
db $11,$6F,$11,$6F,$11,$6F,$11,$6F
db $10,$70,$10,$70,$10,$70,$10,$70
db $0F,$71,$0F,$71,$0F,$71,$0F,$71
db $0E,$72,$0E,$72,$0E,$72,$0E,$72
db $0D,$73,$0D,$73,$0D,$73,$0D,$73
db $0C,$74,$0C,$74,$0C,$74,$0C,$74
db $0B,$75,$0B,$75,$0B,$75,$0B,$75
db $0A,$76,$0A,$76,$0A,$76,$0A,$76
db $09,$77,$09,$77,$09,$77,$09,$77
db $08,$78,$08,$78,$08,$78,$08,$78
db $07,$79,$07,$79,$07,$79,$07,$79
db $06,$7A,$06,$7A,$06,$7A,$06,$7A
db $05,$7B,$05,$7B,$05,$7B,$05,$7B
db $04,$7C,$04,$7C,$04,$7C,$04,$7C
db $03,$7D,$03,$7D,$03,$7D,$03,$7D
db $02,$7E,$02,$7E,$02,$7E,$02,$7E
db $01,$7F,$01,$7F,$01,$7F,$01,$7F
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80
db $00,$80,$00,$80,$00,$80,$00,$80

DATA_2AF031:
db $9D,$E3,$9D,$E3,$9D,$E3,$9D,$E3
db $9C,$E4,$9C,$E4,$9C,$E4,$9C,$E4
db $9B,$E5,$9B,$E5,$9B,$E5,$9B,$E5
db $9A,$E6,$9A,$E6,$9A,$E6,$9A,$E6
db $99,$E7,$99,$E7,$99,$E7,$99,$E7
db $98,$E8,$98,$E8,$98,$E8,$98,$E8
db $97,$E9,$97,$E9,$97,$E9,$97,$E9
db $96,$EA,$96,$EA,$96,$EA,$96,$EA
db $95,$EB,$95,$EB,$95,$EB,$95,$EB
db $94,$EC,$94,$EC,$94,$EC,$94,$EC
db $93,$ED,$93,$ED,$93,$ED,$93,$ED
db $92,$EE,$92,$EE,$92,$EE,$92,$EE
db $91,$EF,$91,$EF,$91,$EF,$91,$EF
db $90,$F0,$90,$F0,$90,$F0,$90,$F0
db $8F,$F1,$8F,$F1,$8F,$F1,$8F,$F1
db $8E,$F2,$8E,$F2,$8E,$F2,$8E,$F2
db $8D,$F3,$8D,$F3,$8D,$F3,$8D,$F3
db $8C,$F4,$8C,$F4,$8C,$F4,$8C,$F4
db $8B,$F5,$8B,$F5,$8B,$F5,$8B,$F5
db $8A,$F6,$8A,$F6,$8A,$F6,$8A,$F6
db $89,$F7,$89,$F7,$89,$F7,$89,$F7
db $88,$F8,$88,$F8,$88,$F8,$88,$F8
db $87,$F9,$87,$F9,$87,$F9,$87,$F9
db $86,$FA,$86,$FA,$86,$FA,$86,$FA
db $85,$FB,$85,$FB,$85,$FB,$85,$FB
db $84,$FC,$84,$FC,$84,$FC,$84,$FC
db $83,$FD,$83,$FD,$83,$FD,$83,$FD
db $82,$FE,$82,$FE,$82,$FE,$82,$FE
db $81,$FF,$81,$FF,$81,$FF,$81,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $80,$FF,$80,$FF,$80,$FF,$80,$FF
db $00,$00,$05,$FF,$F4,$01,$F5,$01
db $F5,$41,$F4,$41,$F4,$01,$F5,$01
db $F5,$41,$F4,$41,$F4,$01,$F5,$01
db $F5,$41,$F4,$41,$F4,$01,$F5,$01
db $F5,$41,$F4,$41,$F4,$01,$F5,$01
db $F5,$41,$F4,$41,$F4,$01,$F5,$01
db $F5,$41,$F4,$41,$F4,$01,$F5,$01
db $F5,$41,$F4,$41,$F4,$01,$F5,$01
db $F5,$41,$F4,$41,$F6,$01,$F7,$01
db $F7,$41,$F6,$41,$F6,$01,$F7,$01
db $F7,$41,$F6,$41,$F6,$01,$F7,$01
db $F7,$41,$F6,$41,$F6,$01,$F7,$01
db $F7,$41,$F6,$41,$F6,$01,$F7,$01
db $F7,$41,$F6,$41,$F6,$01,$F7,$01
db $F7,$41,$F6,$41,$F6,$01,$F7,$01
db $F7,$41,$F6,$41,$F6,$01,$F7,$01
db $F7,$41,$F6,$41,$F8,$01,$F9,$01
db $F9,$41,$F8,$41,$F8,$01,$F9,$01
db $F9,$41,$F8,$41,$F8,$01,$F9,$01
db $F9,$41,$F8,$41,$F8,$01,$F9,$01
db $F9,$41,$F8,$41,$F8,$01,$F9,$01
db $F9,$41,$F8,$41,$F8,$01,$F9,$01
db $F9,$41,$F8,$41,$F8,$01,$F9,$01
db $F9,$41,$F8,$41,$F8,$01,$F9,$01
db $F9,$41,$F8,$41,$5C,$00,$FA,$01
db $FA,$41,$5C,$00,$5C,$00,$FA,$01
db $FA,$41,$5C,$00,$5C,$00,$FA,$01
db $FA,$41,$5C,$00,$5C,$00,$FA,$01
db $FA,$41,$5C,$00,$5C,$00,$FA,$01
db $FA,$41,$5C,$00,$5C,$00,$FA,$01
db $FA,$41,$5C,$00,$5C,$00,$FA,$01
db $FA,$41,$5C,$00,$5C,$00,$FA,$01
db $FA,$41,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $45,$09,$30,$08,$31,$08,$32,$08
db $33,$08,$34,$08,$35,$08,$36,$08
db $37,$08,$38,$08,$39,$08,$3A,$08
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $3B,$1C,$3C,$1C,$3D,$1C,$3E,$1C
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $46,$09,$40,$08,$41,$08,$42,$08
db $43,$08,$44,$08,$45,$08,$46,$08
db $47,$08,$48,$08,$49,$08,$4A,$08
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $4B,$1C,$4C,$1C,$4D,$1C,$4E,$1C
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $3B,$1C,$3C,$1C,$3D,$1C,$3E,$1C
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $47,$09,$50,$08,$51,$08,$52,$08
db $53,$08,$54,$08,$55,$08,$56,$08
db $57,$08,$58,$08,$59,$08,$5A,$08
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $4B,$1C,$4C,$1C,$4D,$1C,$4E,$1C
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $48,$09,$60,$08,$61,$08,$62,$08
db $63,$08,$64,$08,$5C,$00,$66,$08
db $67,$08,$68,$08,$69,$08,$6A,$08
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$40,$09,$70,$08
db $71,$08,$72,$08,$73,$08,$74,$08
db $75,$08,$76,$08,$77,$08,$78,$08
db $79,$08,$5C,$00,$5C,$00,$5C,$00
db $7D,$08,$7E,$08,$7F,$08,$C0,$08
db $C1,$08,$C2,$08,$5C,$00,$C4,$08
db $C5,$08,$CE,$08,$CF,$08,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$41,$09,$80,$08
db $81,$08,$82,$08,$83,$08,$84,$08
db $85,$08,$86,$08,$87,$08,$88,$08
db $89,$08,$8A,$08,$8B,$08,$8C,$08
db $8D,$08,$8E,$08,$8F,$08,$D0,$08
db $D1,$08,$D2,$08,$D3,$08,$D4,$08
db $D5,$08,$49,$09,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$42,$09,$90,$08
db $91,$08,$92,$08,$93,$08,$94,$08
db $95,$08,$96,$08,$97,$08,$98,$08
db $99,$08,$9A,$08,$9B,$08,$9C,$08
db $9D,$08,$9E,$08,$9F,$08,$E0,$08
db $E1,$08,$E2,$08,$E3,$08,$E4,$08
db $E5,$08,$4A,$09,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$43,$09,$A0,$08
db $A1,$08,$A2,$08,$A3,$08,$A4,$08
db $A5,$08,$A6,$08,$A7,$08,$A8,$08
db $A9,$08,$AA,$08,$AB,$08,$AC,$08
db $AD,$08,$AE,$08,$AF,$08,$F0,$08
db $F1,$08,$F2,$08,$F3,$08,$F4,$08
db $F5,$08,$4B,$09,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5B,$1C,$6B,$1C
db $5C,$00,$5C,$00,$44,$09,$B0,$08
db $B1,$08,$B2,$08,$B3,$08,$B4,$08
db $B5,$08,$B6,$08,$B7,$08,$B8,$08
db $B9,$08,$BA,$08,$BB,$08,$BC,$08
db $BD,$08,$BE,$08,$BF,$08,$C6,$08
db $C7,$08,$C8,$08,$D6,$08,$D7,$08
db $D8,$08,$E8,$08,$04,$1C,$05,$1C
db $06,$1C,$07,$1C,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $C9,$04,$CA,$04,$CB,$04,$CC,$04
db $CD,$04,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$14,$1C,$3B,$1D
db $3C,$1D,$17,$1C,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $D9,$04,$DA,$04,$DB,$04,$DC,$04
db $DD,$04,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$3F,$1D,$21,$1C
db $3D,$1D,$12,$1C,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $E9,$04,$EA,$04,$EB,$04,$EC,$04
db $ED,$04,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$3F,$1D,$21,$1C
db $3D,$1D,$12,$1C,$04,$1C,$05,$1C
db $06,$1C,$07,$1C,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $F9,$04,$FA,$04,$FB,$04,$FF,$04
db $FD,$04,$FE,$04,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $04,$1C,$05,$1C,$02,$1C,$03,$1C
db $3D,$1D,$12,$1C,$14,$1C,$3B,$1D
db $3C,$1D,$17,$1C,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $6C,$04,$6D,$04,$6E,$04,$6F,$04
db $DE,$04,$DF,$04,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $14,$1C,$3B,$1D,$3C,$1D,$13,$1C
db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C
db $3D,$1D,$12,$1C,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $3F,$1D,$21,$1C,$3D,$1D,$23,$1C
db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C
db $3D,$1D,$12,$1C,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $3F,$1D,$21,$1C,$3D,$1D,$23,$1C
db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C
db $00,$1C,$01,$1C,$06,$1C,$07,$1C
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $3F,$1D,$21,$1C,$3D,$1D,$23,$1C
db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C
db $10,$1C,$3B,$1D,$3C,$1D,$17,$1C
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $3F,$1D,$21,$1C,$3D,$1D,$23,$1C
db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C
db $20,$1C,$21,$1C,$3D,$1D,$12,$1C
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$04,$1C,$05,$1C
db $02,$1C,$03,$1C,$3D,$1D,$23,$1C
db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C
db $20,$1C,$21,$1C,$3D,$1D,$12,$1C
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$5C,$00,$5C,$00
db $5C,$00,$5C,$00,$14,$1C,$3B,$1D
db $3C,$1D,$13,$1C,$3D,$1D,$23,$1C
db $3D,$1D,$12,$1C

ORG $2AF800

CODE_2AF800:
PHB                     ; $2A:F800: 8B
PHK                     ; $2A:F801: 4B
PLB                     ; $2A:F802: AB
STZ $0202               ; $2A:F803: 9C 02 02
LDX #$03                ; $2A:F806: A2 03
LDY #$22                ; $2A:F808: A0 22
LDA $0598               ; $2A:F80A: AD 98 05
BEQ CODE_2AF818         ; $2A:F80D: F0 09
LDY #$23                ; $2A:F80F: A0 23
LDX #$03                ; $2A:F811: A2 03
LDA #$33                ; $2A:F813: A9 33
STA $0202               ; $2A:F815: 8D 02 02

CODE_2AF818:
STY $0200               ; $2A:F818: 8C 00 02
STX $0201               ; $2A:F81B: 8E 01 02
LDA #$1C                ; $2A:F81E: A9 1C
STA $0281               ; $2A:F820: 8D 81 02
STZ $0282               ; $2A:F823: 9C 82 02
STZ $0283               ; $2A:F826: 9C 83 02
STZ $0285               ; $2A:F829: 9C 85 02
LDA #$3C                ; $2A:F82C: A9 3C
STA $0287               ; $2A:F82E: 8D 87 02
STZ $0288               ; $2A:F831: 9C 88 02
LDA #$17                ; $2A:F834: A9 17
STA $0208               ; $2A:F836: 8D 08 02
STA $020A               ; $2A:F839: 8D 0A 02
STZ $0209               ; $2A:F83C: 9C 09 02
STZ $020B               ; $2A:F83F: 9C 0B 02
LDA $0598               ; $2A:F842: AD 98 05
BEQ CODE_2AF856         ; $2A:F845: F0 0F
DEC $0208               ; $2A:F847: CE 08 02
DEC $020A               ; $2A:F84A: CE 0A 02
INC $0209               ; $2A:F84D: EE 09 02
INC $020B               ; $2A:F850: EE 0B 02
JMP CODE_2AFA1F         ; $2A:F853: 4C 1F FA

CODE_2AF856:
BRL CODE_2AFA19         ; $2A:F856: 82 C0 01

DATA_2AF859:
db $F0,$00,$90,$F0,$E0,$90,$00

DATA_2AF860:
db $F0,$00,$92,$F0,$E0,$92,$00

CODE_2AF867:
PHB                     ; $2A:F867: 8B
PHK                     ; $2A:F868: 4B
PLB                     ; $2A:F869: AB
LDA #$02                ; $2A:F86A: A9 02
STA $92                 ; $2A:F86C: 85 92
REP #$30                ; $2A:F86E: C2 30
STZ $04                 ; $2A:F870: 64 04
STZ $0283               ; $2A:F872: 9C 83 02
LDA #$0060              ; $2A:F875: A9 60 00
STA $0E                 ; $2A:F878: 85 0E
SEC                     ; $2A:F87A: 38
SBC $0281               ; $2A:F87B: ED 81 02
STA $0289               ; $2A:F87E: 8D 89 02
CLC                     ; $2A:F881: 18
ADC $0281               ; $2A:F882: 6D 81 02
CLC                     ; $2A:F885: 18
ADC $0281               ; $2A:F886: 6D 81 02
STA $028B               ; $2A:F889: 8D 8B 02
LDA #$0080              ; $2A:F88C: A9 80 00
STA $028D               ; $2A:F88F: 8D 8D 02

CODE_2AF892:
LDA #$0100              ; $2A:F892: A9 00 01
STA $00                 ; $2A:F895: 85 00
STA $02                 ; $2A:F897: 85 02
LDA $0289               ; $2A:F899: AD 89 02
BPL CODE_2AF8AD         ; $2A:F89C: 10 0F
LDA $0283               ; $2A:F89E: AD 83 02
CMP $0289               ; $2A:F8A1: CD 89 02
BCS CODE_2AF8CD         ; $2A:F8A4: B0 27
CMP $028B               ; $2A:F8A6: CD 8B 02
BCS CODE_2AF8CD         ; $2A:F8A9: B0 22
BRA CODE_2AF8BA         ; $2A:F8AB: 80 0D

CODE_2AF8AD:
LDA $0283               ; $2A:F8AD: AD 83 02
CMP $0289               ; $2A:F8B0: CD 89 02
BCC CODE_2AF8CD         ; $2A:F8B3: 90 18
CMP $028B               ; $2A:F8B5: CD 8B 02
BCS CODE_2AF8CD         ; $2A:F8B8: B0 13

CODE_2AF8BA:
LDA $0287               ; $2A:F8BA: AD 87 02
CLC                     ; $2A:F8BD: 18
ADC $028D               ; $2A:F8BE: 6D 8D 02
DEC A                   ; $2A:F8C1: 3A
STA $02                 ; $2A:F8C2: 85 02
LDA $028D               ; $2A:F8C4: AD 8D 02
SEC                     ; $2A:F8C7: 38
SBC $0287               ; $2A:F8C8: ED 87 02
STA $00                 ; $2A:F8CB: 85 00

CODE_2AF8CD:
LDA $0283               ; $2A:F8CD: AD 83 02
DEC A                   ; $2A:F8D0: 3A
ASL A                   ; $2A:F8D1: 0A
CMP #$01C0              ; $2A:F8D2: C9 C0 01
BCS CODE_2AF91D         ; $2A:F8D5: B0 46
TAX                     ; $2A:F8D7: AA
LDA $00                 ; $2A:F8D8: A5 00
TAY                     ; $2A:F8DA: A8
BMI CODE_2AF8EC         ; $2A:F8DB: 30 0F
AND #$FF00              ; $2A:F8DD: 29 00 FF
BEQ CODE_2AF8EF         ; $2A:F8E0: F0 0D
CMP #$0100              ; $2A:F8E2: C9 00 01
BNE CODE_2AF8EC         ; $2A:F8E5: D0 05
LDY #$00FF              ; $2A:F8E7: A0 FF 00
BRA CODE_2AF8EF         ; $2A:F8EA: 80 03

CODE_2AF8EC:
LDY #$0000              ; $2A:F8EC: A0 00 00

CODE_2AF8EF:
TYA                     ; $2A:F8EF: 98
AND #$00FF              ; $2A:F8F0: 29 FF 00
STA $06                 ; $2A:F8F3: 85 06
LDA $02                 ; $2A:F8F5: A5 02
TAY                     ; $2A:F8F7: A8
AND #$FF00              ; $2A:F8F8: 29 00 FF
BEQ CODE_2AF908         ; $2A:F8FB: F0 0B
LDY #$0000              ; $2A:F8FD: A0 00 00
CMP #$0100              ; $2A:F900: C9 00 01
BCC CODE_2AF908         ; $2A:F903: 90 03
LDY #$00FF              ; $2A:F905: A0 FF 00

CODE_2AF908:
TYA                     ; $2A:F908: 98
AND #$00FF              ; $2A:F909: 29 FF 00
XBA                     ; $2A:F90C: EB
ORA $06                 ; $2A:F90D: 05 06
STA $06                 ; $2A:F90F: 85 06
CMP #$FFFF              ; $2A:F911: C9 FF FF
BNE CODE_2AF919         ; $2A:F914: D0 03
LDA #$00FF              ; $2A:F916: A9 FF 00

CODE_2AF919:
STA $7F9200,x           ; $2A:F919: 9F 00 92 7F

CODE_2AF91D:
INC $0283               ; $2A:F91D: EE 83 02
LDA $0283               ; $2A:F920: AD 83 02
CMP #$00E1              ; $2A:F923: C9 E1 00
BCS CODE_2AF92B         ; $2A:F926: B0 03
BRL CODE_2AF892         ; $2A:F928: 82 67 FF

CODE_2AF92B:
SEP #$30                ; $2A:F92B: E2 30
LDA $0285               ; $2A:F92D: AD 85 02
BEQ CODE_2AF989         ; $2A:F930: F0 57
LDA #$F8                ; $2A:F932: A9 F8
CLC                     ; $2A:F934: 18
ADC $0287               ; $2A:F935: 6D 87 02
STA $0287               ; $2A:F938: 8D 87 02
BPL CODE_2AF940         ; $2A:F93B: 10 03
STZ $0287               ; $2A:F93D: 9C 87 02

CODE_2AF940:
LDA #$F8                ; $2A:F940: A9 F8
CLC                     ; $2A:F942: 18
ADC $0281               ; $2A:F943: 6D 81 02
STA $0281               ; $2A:F946: 8D 81 02
BPL CODE_2AF94E         ; $2A:F949: 10 03
STZ $0281               ; $2A:F94B: 9C 81 02

CODE_2AF94E:
LDA $0287               ; $2A:F94E: AD 87 02
ORA $0281               ; $2A:F951: 0D 81 02
BNE CODE_2AF989         ; $2A:F954: D0 33
INC $0728               ; $2A:F956: EE 28 07
STZ $0285               ; $2A:F959: 9C 85 02
STZ $0291               ; $2A:F95C: 9C 91 02
LDA $0598               ; $2A:F95F: AD 98 05
BNE CODE_2AF97F         ; $2A:F962: D0 1B
LDA #$13                ; $2A:F964: A9 13
STA $0208               ; $2A:F966: 8D 08 02
STZ $020A               ; $2A:F969: 9C 0A 02
LDA $0293               ; $2A:F96C: AD 93 02
AND #$BF                ; $2A:F96F: 29 BF
STA $0293               ; $2A:F971: 8D 93 02
STZ $0200               ; $2A:F974: 9C 00 02
STZ $0201               ; $2A:F977: 9C 01 02
STZ $0202               ; $2A:F97A: 9C 02 02
BRA CODE_2AF9A2         ; $2A:F97D: 80 23

CODE_2AF97F:
LDA $0598               ; $2A:F97F: AD 98 05
BEQ CODE_2AF989         ; $2A:F982: F0 05
LDA #$32                ; $2A:F984: A9 32
STA $0202               ; $2A:F986: 8D 02 02

CODE_2AF989:
LDA $0598               ; $2A:F989: AD 98 05
BEQ CODE_2AF992         ; $2A:F98C: F0 04
LDA #$16                ; $2A:F98E: A9 16
BRA CODE_2AF994         ; $2A:F990: 80 02

CODE_2AF992:
LDA #$17                ; $2A:F992: A9 17

CODE_2AF994:
STA $0208               ; $2A:F994: 8D 08 02
STA $020A               ; $2A:F997: 8D 0A 02
LDA $0293               ; $2A:F99A: AD 93 02
ORA #$40                ; $2A:F99D: 09 40
STA $0293               ; $2A:F99F: 8D 93 02

CODE_2AF9A2:
PLB                     ; $2A:F9A2: AB
RTL                     ; $2A:F9A3: 6B

DATA_2AF9A4:
db $FF,$00,$00,$20,$00

CODE_2AF9A9:
PHB                     ; $2A:F9A9: 8B
PHK                     ; $2A:F9AA: 4B
PLB                     ; $2A:F9AB: AB
LDA #$30                ; $2A:F9AC: A9 30
STA $0202               ; $2A:F9AE: 8D 02 02
LDY #$23                ; $2A:F9B1: A0 23
LDX $0291               ; $2A:F9B3: AE 91 02
CPX #$03                ; $2A:F9B6: E0 03
BEQ CODE_2AF9C1         ; $2A:F9B8: F0 07
LDA #$33                ; $2A:F9BA: A9 33
STA $0202               ; $2A:F9BC: 8D 02 02
LDY #$33                ; $2A:F9BF: A0 33

CODE_2AF9C1:
STY $0200               ; $2A:F9C1: 8C 00 02
LDA #$03                ; $2A:F9C4: A9 03
STA $0201               ; $2A:F9C6: 8D 01 02
LDX $0291               ; $2A:F9C9: AE 91 02
LDA.l DATA_2AF9A4-1,x   ; $2A:F9CC: BF A3 F9 2A
STA $0281               ; $2A:F9D0: 8D 81 02
STZ $0282               ; $2A:F9D3: 9C 82 02
STZ $0287               ; $2A:F9D6: 9C 87 02
STZ $0288               ; $2A:F9D9: 9C 88 02
STZ $0283               ; $2A:F9DC: 9C 83 02
STZ $0285               ; $2A:F9DF: 9C 85 02
STZ $028B               ; $2A:F9E2: 9C 8B 02
LDA #$80                ; $2A:F9E5: A9 80
STA $0294               ; $2A:F9E7: 8D 94 02
LDA #$80                ; $2A:F9EA: A9 80
STA $0295               ; $2A:F9EC: 8D 95 02
STZ $0296               ; $2A:F9EF: 9C 96 02
CPX #$01                ; $2A:F9F2: E0 01
BEQ CODE_2AF9FA         ; $2A:F9F4: F0 04
CPX #$04                ; $2A:F9F6: E0 04
BCC CODE_2AFA19         ; $2A:F9F8: 90 1F

CODE_2AF9FA:
LDA #$03                ; $2A:F9FA: A9 03
STA $0201               ; $2A:F9FC: 8D 01 02
LDX $0726               ; $2A:F9FF: AE 26 07
LDA $43,x               ; $2A:FA02: B5 43
CLC                     ; $2A:FA04: 18
ADC #$08                ; $2A:FA05: 69 08
STA $0294               ; $2A:FA07: 8D 94 02
LDA $47,x               ; $2A:FA0A: B5 47
CLC                     ; $2A:FA0C: 18
ADC #$08                ; $2A:FA0D: 69 08
STA $0295               ; $2A:FA0F: 8D 95 02
LDA $45,x               ; $2A:FA12: B5 45
ADC #$00                ; $2A:FA14: 69 00
STA $0296               ; $2A:FA16: 8D 96 02

CODE_2AFA19:
STZ $020B               ; $2A:FA19: 9C 0B 02
STZ $0209               ; $2A:FA1C: 9C 09 02

CODE_2AFA1F:
STZ $0203               ; $2A:FA1F: 9C 03 02
STZ $0204               ; $2A:FA22: 9C 04 02
LDA #$41                ; $2A:FA25: A9 41
STA $4370               ; $2A:FA27: 8D 70 43
LDA #$26                ; $2A:FA2A: A9 26
STA $4371               ; $2A:FA2C: 8D 71 43
LDA.b #DATA_2AF859      ; $2A:FA2F: A9 59
STA $4372               ; $2A:FA31: 8D 72 43
LDA.b #DATA_2AF859>>8   ; $2A:FA34: A9 F8
STA $4373               ; $2A:FA36: 8D 73 43
LDA.b #DATA_2AF859>>16  ; $2A:FA39: A9 2A
STA $4374               ; $2A:FA3B: 8D 74 43
LDA #$7F                ; $2A:FA3E: A9 7F
STA $4377               ; $2A:FA40: 8D 77 43
LDA #$41                ; $2A:FA43: A9 41
STA $4360               ; $2A:FA45: 8D 60 43
LDA #$26                ; $2A:FA48: A9 26
STA $4361               ; $2A:FA4A: 8D 61 43
LDA.b #DATA_2AF860      ; $2A:FA4D: A9 60
STA $4362               ; $2A:FA4F: 8D 62 43
LDA.b #DATA_2AF860>>8   ; $2A:FA52: A9 F8
STA $4363               ; $2A:FA54: 8D 63 43
LDA.b #DATA_2AF860>>16  ; $2A:FA57: A9 2A
STA $4364               ; $2A:FA59: 8D 64 43
LDA #$7F                ; $2A:FA5C: A9 7F
STA $4367               ; $2A:FA5E: 8D 67 43
PLB                     ; $2A:FA61: AB
RTL                     ; $2A:FA62: 6B

; Windowing HDMA routine (TODO: For what?)

CODE_2AFA63:
PHB                     ; $2A:FA63: 8B
PHK                     ; $2A:FA64: 4B
PLB                     ; $2A:FA65: AB
PHD                     ; $2A:FA66: 0B
LDA #$22                ; $2A:FA67: A9 22

; Color Addition Select
; Add Subscreen, prevent color math inside window
STA $0203               ; $2A:FA69: 8D 03 02
REP #$30                ; $2A:FA6C: C2 30
LDA #$0200              ; $2A:FA6E: A9 00 02

; Direct page becomes $0200
TCD                     ; $2A:FA71: 5B
LDA #$9000              ; $2A:FA72: A9 00 90

; Pointer to windowing HDMA table, low and high byte
; ($9000)
STA $AB                 ; $2A:FA75: 85 AB
LDA #$007F              ; $2A:FA77: A9 7F 00
AND #$00FF              ; $2A:FA7A: 29 FF 00

; Pointer to windowing HDMA table, bank byte
; ($7F)
TSB $AD                 ; $2A:FA7D: 04 AD
LDA $8B                 ; $2A:FA7F: A5 8B
AND #$0001              ; $2A:FA81: 29 01 00
BEQ CODE_2AFA93         ; $2A:FA84: F0 0D
LDA #$9200              ; $2A:FA86: A9 00 92

; Pointer to windowing HDMA table, low and high byte
; ($9200)
STA $AB                 ; $2A:FA89: 85 AB
LDA #$007F              ; $2A:FA8B: A9 7F 00
AND #$00FF              ; $2A:FA8E: 29 FF 00

; Pointer to windowing HDMA table, bank byte
; ($7F)
TSB $AD                 ; $2A:FA91: 04 AD

CODE_2AFA93:
STZ $9D                 ; $2A:FA93: 64 9D
STZ $A7                 ; $2A:FA95: 64 A7
STZ $83                 ; $2A:FA97: 64 83
STZ $97                 ; $2A:FA99: 64 97
LDA $81                 ; $2A:FA9B: A5 81
AND #$00FF              ; $2A:FA9D: 29 FF 00
ASL A                   ; $2A:FAA0: 0A
TAX                     ; $2A:FAA1: AA
LDA.l DATA_009780,x     ; $2A:FAA2: BF 80 97 00
STA $A9                 ; $2A:FAA6: 85 A9
LDA $94                 ; $2A:FAA8: A5 94
AND #$00FF              ; $2A:FAAA: 29 FF 00
STA $89                 ; $2A:FAAD: 85 89
LDA $96                 ; $2A:FAAF: A5 96
AND #$00FF              ; $2A:FAB1: 29 FF 00
XBA                     ; $2A:FAB4: EB
STA $99                 ; $2A:FAB5: 85 99
LDA $95                 ; $2A:FAB7: A5 95
AND #$00FF              ; $2A:FAB9: 29 FF 00
ORA $99                 ; $2A:FABC: 05 99
STA $8D                 ; $2A:FABE: 85 8D
LDA $91                 ; $2A:FAC0: A5 91
AND #$00FF              ; $2A:FAC2: 29 FF 00
CMP #$0002              ; $2A:FAC5: C9 02 00
BEQ CODE_2AFAD1         ; $2A:FAC8: F0 07
LDA $8D                 ; $2A:FACA: A5 8D
SEC                     ; $2A:FACC: 38
SBC $10                 ; $2A:FACD: E5 10
STA $8D                 ; $2A:FACF: 85 8D

CODE_2AFAD1:
LDA #$0100              ; $2A:FAD1: A9 00 01
STA $99                 ; $2A:FAD4: 85 99
STA $9B                 ; $2A:FAD6: 85 9B
LDA $83                 ; $2A:FAD8: A5 83
INC A                   ; $2A:FADA: 1A
CMP $81                 ; $2A:FADB: C5 81
BCS CODE_2AFB15         ; $2A:FADD: B0 36
LDA $97                 ; $2A:FADF: A5 97
CLC                     ; $2A:FAE1: 18
ADC $A9                 ; $2A:FAE2: 65 A9
STA $97                 ; $2A:FAE4: 85 97
XBA                     ; $2A:FAE6: EB
AND #$00FF              ; $2A:FAE7: 29 FF 00
LSR A                   ; $2A:FAEA: 4A
SEP #$30                ; $2A:FAEB: E2 30
TAX                     ; $2A:FAED: AA
LDA.l DATA_0096FF,x     ; $2A:FAEE: BF FF 96 00
STA $4202               ; $2A:FAF2: 8D 02 42
LDA $81                 ; $2A:FAF5: A5 81
STA $4203               ; $2A:FAF7: 8D 03 42
NOP                     ; $2A:FAFA: EA
NOP                     ; $2A:FAFB: EA
NOP                     ; $2A:FAFC: EA
NOP                     ; $2A:FAFD: EA
LDA $4217               ; $2A:FAFE: AD 17 42
STA $A1                 ; $2A:FB01: 85 A1
STZ $A2                 ; $2A:FB03: 64 A2
REP #$30                ; $2A:FB05: C2 30
LDA $A1                 ; $2A:FB07: A5 A1
CLC                     ; $2A:FB09: 18
ADC $8D                 ; $2A:FB0A: 65 8D
STA $9B                 ; $2A:FB0C: 85 9B
LDA $8D                 ; $2A:FB0E: A5 8D
SEC                     ; $2A:FB10: 38
SBC $A1                 ; $2A:FB11: E5 A1
STA $99                 ; $2A:FB13: 85 99

CODE_2AFB15:
LDA $89                 ; $2A:FB15: A5 89
SEC                     ; $2A:FB17: 38
SBC $83                 ; $2A:FB18: E5 83
DEC A                   ; $2A:FB1A: 3A
ASL A                   ; $2A:FB1B: 0A
STA $9D                 ; $2A:FB1C: 85 9D
TAX                     ; $2A:FB1E: AA
LDA $99                 ; $2A:FB1F: A5 99
TAY                     ; $2A:FB21: A8
BMI CODE_2AFB33         ; $2A:FB22: 30 0F
AND #$FF00              ; $2A:FB24: 29 00 FF
BEQ CODE_2AFB36         ; $2A:FB27: F0 0D
CMP #$0100              ; $2A:FB29: C9 00 01
BNE CODE_2AFB33         ; $2A:FB2C: D0 05
LDY #$00FF              ; $2A:FB2E: A0 FF 00
BRA CODE_2AFB36         ; $2A:FB31: 80 03

CODE_2AFB33:
LDY #$0000              ; $2A:FB33: A0 00 00

CODE_2AFB36:
TYA                     ; $2A:FB36: 98
AND #$00FF              ; $2A:FB37: 29 FF 00
STA $9F                 ; $2A:FB3A: 85 9F
LDA $9B                 ; $2A:FB3C: A5 9B
TAY                     ; $2A:FB3E: A8
AND #$FF00              ; $2A:FB3F: 29 00 FF
BEQ CODE_2AFB47         ; $2A:FB42: F0 03
LDY #$00FF              ; $2A:FB44: A0 FF 00

CODE_2AFB47:
TYA                     ; $2A:FB47: 98
AND #$00FF              ; $2A:FB48: 29 FF 00
XBA                     ; $2A:FB4B: EB
ORA $9F                 ; $2A:FB4C: 05 9F
STA $9F                 ; $2A:FB4E: 85 9F
CPX #$01C0              ; $2A:FB50: E0 C0 01
BCS CODE_2AFB60         ; $2A:FB53: B0 0B
CMP #$FFFF              ; $2A:FB55: C9 FF FF
BNE CODE_2AFB5D         ; $2A:FB58: D0 03
LDA #$00FF              ; $2A:FB5A: A9 FF 00

CODE_2AFB5D:
TXY                     ; $2A:FB5D: 9B
STA [$AB],y             ; $2A:FB5E: 97 AB

CODE_2AFB60:
LDA $89                 ; $2A:FB60: A5 89
CLC                     ; $2A:FB62: 18
ADC $83                 ; $2A:FB63: 65 83
DEC A                   ; $2A:FB65: 3A
ASL A                   ; $2A:FB66: 0A
STA $A7                 ; $2A:FB67: 85 A7
CMP #$01C0              ; $2A:FB69: C9 C0 01
BCS CODE_2AFB7C         ; $2A:FB6C: B0 0E
TAX                     ; $2A:FB6E: AA
LDA $9F                 ; $2A:FB6F: A5 9F
CMP #$FFFF              ; $2A:FB71: C9 FF FF
BNE CODE_2AFB79         ; $2A:FB74: D0 03
LDA #$00FF              ; $2A:FB76: A9 FF 00

CODE_2AFB79:
TXY                     ; $2A:FB79: 9B
STA [$AB],y             ; $2A:FB7A: 97 AB

CODE_2AFB7C:
INC $83                 ; $2A:FB7C: E6 83
LDA $9D                 ; $2A:FB7E: A5 9D
CMP #$01C0              ; $2A:FB80: C9 C0 01
BCC CODE_2AFB8C         ; $2A:FB83: 90 07
LDA $A7                 ; $2A:FB85: A5 A7
CMP #$01C0              ; $2A:FB87: C9 C0 01
BCS CODE_2AFB8F         ; $2A:FB8A: B0 03

CODE_2AFB8C:
BRL CODE_2AFAD1         ; $2A:FB8C: 82 42 FF

CODE_2AFB8F:
SEP #$30                ; $2A:FB8F: E2 30
LDA $91                 ; $2A:FB91: A5 91
DEC A                   ; $2A:FB93: 3A
BEQ CODE_2AFC04         ; $2A:FB94: F0 6E
CMP #$03                ; $2A:FB96: C9 03
BEQ CODE_2AFC04         ; $2A:FB98: F0 6A
CMP #$04                ; $2A:FB9A: C9 04
BEQ CODE_2AFC14         ; $2A:FB9C: F0 76
LDA $81                 ; $2A:FB9E: A5 81
CLC                     ; $2A:FBA0: 18
ADC #$08                ; $2A:FBA1: 69 08
STA $81                 ; $2A:FBA3: 85 81
BCS CODE_2AFBAA         ; $2A:FBA5: B0 03
JMP CODE_2AFC28         ; $2A:FBA7: 4C 28 FC

CODE_2AFBAA:
LDA #$38                ; $2A:FBAA: A9 38
STA $1050               ; $2A:FBAC: 8D 50 10
STZ $85                 ; $2A:FBAF: 64 85
STZ $91                 ; $2A:FBB1: 64 91
STZ $93                 ; $2A:FBB3: 64 93
STZ $00                 ; $2A:FBB5: 64 00
STZ $01                 ; $2A:FBB7: 64 01
STZ $02                 ; $2A:FBB9: 64 02
LDA #$02                ; $2A:FBBB: A9 02
STA $0203               ; $2A:FBBD: 8D 03 02
LDA #$11                ; $2A:FBC0: A9 11
LDX $02BF               ; $2A:FBC2: AE BF 02
CPX #$01                ; $2A:FBC5: E0 01
BEQ CODE_2AFBEF         ; $2A:FBC7: F0 26
CPX #$05                ; $2A:FBC9: E0 05
BEQ CODE_2AFBEF         ; $2A:FBCB: F0 22
CPX #$06                ; $2A:FBCD: E0 06
BEQ CODE_2AFBEF         ; $2A:FBCF: F0 1E
CPX #$09                ; $2A:FBD1: E0 09
BEQ CODE_2AFBF3         ; $2A:FBD3: F0 1E
CPX #$0A                ; $2A:FBD5: E0 0A
BEQ CODE_2AFBF3         ; $2A:FBD7: F0 1A
CPX #$0B                ; $2A:FBD9: E0 0B
BEQ CODE_2AFBF3         ; $2A:FBDB: F0 16
CPX #$0C                ; $2A:FBDD: E0 0C
BEQ CODE_2AFBF3         ; $2A:FBDF: F0 12
CPX #$0F                ; $2A:FBE1: E0 0F
BEQ CODE_2AFBF3         ; $2A:FBE3: F0 0E
CPX #$03                ; $2A:FBE5: E0 03
BEQ CODE_2AFBFC         ; $2A:FBE7: F0 13
CPX #$04                ; $2A:FBE9: E0 04
BEQ CODE_2AFBFC         ; $2A:FBEB: F0 0F
BRA CODE_2AFBF1         ; $2A:FBED: 80 02

CODE_2AFBEF:
ORA #$02                ; $2A:FBEF: 09 02

CODE_2AFBF1:
ORA #$04                ; $2A:FBF1: 09 04

CODE_2AFBF3:
STA $08                 ; $2A:FBF3: 85 08
STZ $0A                 ; $2A:FBF5: 64 0A
STZ $028C               ; $2A:FBF7: 9C 8C 02
BRA CODE_2AFC71         ; $2A:FBFA: 80 75

CODE_2AFBFC:
LDA #$13                ; $2A:FBFC: A9 13
STA $08                 ; $2A:FBFE: 85 08
STZ $0A                 ; $2A:FC00: 64 0A
BRA CODE_2AFC71         ; $2A:FC02: 80 6D

CODE_2AFC04:
LDA $81                 ; $2A:FC04: A5 81
SEC                     ; $2A:FC06: 38
SBC #$06                ; $2A:FC07: E9 06
STA $81                 ; $2A:FC09: 85 81
BCS CODE_2AFC28         ; $2A:FC0B: B0 1B
LDA #$FF                ; $2A:FC0D: A9 FF
STA $1050               ; $2A:FC0F: 8D 50 10
BRA CODE_2AFC28         ; $2A:FC12: 80 14

CODE_2AFC14:
LDA $81                 ; $2A:FC14: A5 81
CLC                     ; $2A:FC16: 18
ADC #$0A                ; $2A:FC17: 69 0A
STA $81                 ; $2A:FC19: 85 81
CMP #$20                ; $2A:FC1B: C9 20
BCC CODE_2AFC28         ; $2A:FC1D: 90 09
LDA #$20                ; $2A:FC1F: A9 20
STA $81                 ; $2A:FC21: 85 81
LDA #$FF                ; $2A:FC23: A9 FF
STA $1050               ; $2A:FC25: 8D 50 10

CODE_2AFC28:
LDX #$17                ; $2A:FC28: A2 17
LDA $02BF               ; $2A:FC2A: AD BF 02
CMP #$01                ; $2A:FC2D: C9 01
BNE CODE_2AFC3B         ; $2A:FC2F: D0 0A
BRA CODE_2AFC35         ; $2A:FC31: 80 02

CODE_2AFC33:
LDX #$15                ; $2A:FC33: A2 15

CODE_2AFC35:
LDY #$13                ; $2A:FC35: A0 13
STY $09                 ; $2A:FC37: 84 09
BRA CODE_2AFC5B         ; $2A:FC39: 80 20

CODE_2AFC3B:
CMP #$02                ; $2A:FC3B: C9 02
BEQ CODE_2AFC33         ; $2A:FC3D: F0 F4
CMP #$07                ; $2A:FC3F: C9 07
BEQ CODE_2AFC35         ; $2A:FC41: F0 F2
CMP #$09                ; $2A:FC43: C9 09
BEQ CODE_2AFC55         ; $2A:FC45: F0 0E
CMP #$0A                ; $2A:FC47: C9 0A
BEQ CODE_2AFC55         ; $2A:FC49: F0 0A
CMP #$0B                ; $2A:FC4B: C9 0B
BEQ CODE_2AFC55         ; $2A:FC4D: F0 06
CMP #$0C                ; $2A:FC4F: C9 0C
BEQ CODE_2AFC55         ; $2A:FC51: F0 02
BRA CODE_2AFC5B         ; $2A:FC53: 80 06

CODE_2AFC55:
LDX #$11                ; $2A:FC55: A2 11
LDY #$06                ; $2A:FC57: A0 06
STY $09                 ; $2A:FC59: 84 09

CODE_2AFC5B:
STX $08                 ; $2A:FC5B: 86 08
STX $0A                 ; $2A:FC5D: 86 0A
LDY #$17                ; $2A:FC5F: A0 17
STY $0B                 ; $2A:FC61: 84 0B
LDY #$80                ; $2A:FC63: A0 80
LDA $8B                 ; $2A:FC65: A5 8B
AND #$01                ; $2A:FC67: 29 01
BEQ CODE_2AFC6D         ; $2A:FC69: F0 02
LDY #$40                ; $2A:FC6B: A0 40

CODE_2AFC6D:
STY $93                 ; $2A:FC6D: 84 93
INC $8B                 ; $2A:FC6F: E6 8B

CODE_2AFC71:
PLD                     ; $2A:FC71: 2B
PLB                     ; $2A:FC72: AB
RTL                     ; $2A:FC73: 6B

DATA_2AFC74:
db $F9,$07,$F6,$0A,$F4,$0C,$F2,$0E
db $F1,$0F,$EF,$11,$EE,$12,$ED,$13
db $EC,$14,$EB,$15,$EA,$16,$EA,$16
db $E9,$17,$E8,$18,$E8,$18,$E7,$19
db $E7,$19,$E6,$1A,$E6,$1A,$E6,$1A
db $E5,$1B,$E5,$1B,$E5,$1B,$E5,$1B
db $E5,$1B,$E5,$1B,$E5,$1B

CODE_2AFCAA:
PHB                     ; $2A:FCAA: 8B
PHK                     ; $2A:FCAB: 4B
PLB                     ; $2A:FCAC: AB
REP #$30                ; $2A:FCAD: C2 30
LDA #$0001              ; $2A:FCAF: A9 01 00
STA $0283               ; $2A:FCB2: 8D 83 02
STZ $04                 ; $2A:FCB5: 64 04
LDA $0726               ; $2A:FCB7: AD 26 07
AND #$00FF              ; $2A:FCBA: 29 FF 00
TAX                     ; $2A:FCBD: AA
LDA $43,x               ; $2A:FCBE: B5 43
AND #$00FF              ; $2A:FCC0: 29 FF 00
STA $028B               ; $2A:FCC3: 8D 8B 02
SEC                     ; $2A:FCC6: 38
SBC #$0010              ; $2A:FCC7: E9 10 00
STA $0289               ; $2A:FCCA: 8D 89 02
LDA $45,x               ; $2A:FCCD: B5 45
AND #$00FF              ; $2A:FCCF: 29 FF 00
XBA                     ; $2A:FCD2: EB
STA $D8                 ; $2A:FCD3: 85 D8
LDA $47,x               ; $2A:FCD5: B5 47
AND #$00FF              ; $2A:FCD7: 29 FF 00
ORA $D8                 ; $2A:FCDA: 05 D8
CLC                     ; $2A:FCDC: 18
ADC #$0008              ; $2A:FCDD: 69 08 00
SEC                     ; $2A:FCE0: 38
SBC $0210               ; $2A:FCE1: ED 10 02
STA $028D               ; $2A:FCE4: 8D 8D 02

CODE_2AFCE7:
LDA #$0100              ; $2A:FCE7: A9 00 01
STA $00                 ; $2A:FCEA: 85 00
STA $02                 ; $2A:FCEC: 85 02
LDA $04                 ; $2A:FCEE: A5 04
CMP #$0034              ; $2A:FCF0: C9 34 00
BCS CODE_2AFCFD         ; $2A:FCF3: B0 08
LDA $0283               ; $2A:FCF5: AD 83 02
CMP $0289               ; $2A:FCF8: CD 89 02
BCS CODE_2AFD0D         ; $2A:FCFB: B0 10

CODE_2AFCFD:
LDA $0283               ; $2A:FCFD: AD 83 02
DEC A                   ; $2A:FD00: 3A
ASL A                   ; $2A:FD01: 0A
TAX                     ; $2A:FD02: AA
LDA #$00FF              ; $2A:FD03: A9 FF 00
STA $7F9000,x           ; $2A:FD06: 9F 00 90 7F
BRL CODE_2AFD75         ; $2A:FD0A: 82 68 00

CODE_2AFD0D:
LDX $04                 ; $2A:FD0D: A6 04
LDA.l DATA_2AFC74,x     ; $2A:FD0F: BF 74 FC 2A
AND #$00FF              ; $2A:FD13: 29 FF 00
STA $D8                 ; $2A:FD16: 85 D8
LDA.l DATA_2AFC74+1,x   ; $2A:FD18: BF 75 FC 2A
AND #$FF00              ; $2A:FD1C: 29 00 FF
XBA                     ; $2A:FD1F: EB
CLC                     ; $2A:FD20: 18
ADC $028D               ; $2A:FD21: 6D 8D 02
AND #$00FF              ; $2A:FD24: 29 FF 00
STA $00                 ; $2A:FD27: 85 00
LDA $028D               ; $2A:FD29: AD 8D 02
SEC                     ; $2A:FD2C: 38
SBC $D8                 ; $2A:FD2D: E5 D8
AND #$00FF              ; $2A:FD2F: 29 FF 00
STA $02                 ; $2A:FD32: 85 02
LDA $04                 ; $2A:FD34: A5 04
LSR A                   ; $2A:FD36: 4A
STA $D8                 ; $2A:FD37: 85 D8
INC $04                 ; $2A:FD39: E6 04
INC $04                 ; $2A:FD3B: E6 04
LDA $0283               ; $2A:FD3D: AD 83 02
DEC A                   ; $2A:FD40: 3A
ASL A                   ; $2A:FD41: 0A
TAX                     ; $2A:FD42: AA
LDA $02                 ; $2A:FD43: A5 02
AND #$00FF              ; $2A:FD45: 29 FF 00
XBA                     ; $2A:FD48: EB
ORA $00                 ; $2A:FD49: 05 00
STA $7F9000,x           ; $2A:FD4B: 9F 00 90 7F
STA $DA                 ; $2A:FD4F: 85 DA
LDA $028B               ; $2A:FD51: AD 8B 02
CLC                     ; $2A:FD54: 18
ADC #$0020              ; $2A:FD55: 69 20 00
SEC                     ; $2A:FD58: 38
SBC $D8                 ; $2A:FD59: E5 D8
DEC A                   ; $2A:FD5B: 3A
ASL A                   ; $2A:FD5C: 0A
TAX                     ; $2A:FD5D: AA
LDA $DA                 ; $2A:FD5E: A5 DA
STA $7F9000,x           ; $2A:FD60: 9F 00 90 7F
LDA $04                 ; $2A:FD64: A5 04
CMP #$0034              ; $2A:FD66: C9 34 00
BCC CODE_2AFD75         ; $2A:FD69: 90 0A
LDA $028B               ; $2A:FD6B: AD 8B 02
CLC                     ; $2A:FD6E: 18
ADC #$0020              ; $2A:FD6F: 69 20 00
STA $0283               ; $2A:FD72: 8D 83 02

CODE_2AFD75:
INC $0283               ; $2A:FD75: EE 83 02
LDA $0283               ; $2A:FD78: AD 83 02
CMP #$00E1              ; $2A:FD7B: C9 E1 00
BCS CODE_2AFD83         ; $2A:FD7E: B0 03
BRL CODE_2AFCE7         ; $2A:FD80: 82 64 FF

CODE_2AFD83:
SEP #$30                ; $2A:FD83: E2 30
LDA #$13                ; $2A:FD85: A9 13
STA $0208               ; $2A:FD87: 8D 08 02
STA $020A               ; $2A:FD8A: 8D 0A 02
LDA #$80                ; $2A:FD8D: A9 80
STA $0293               ; $2A:FD8F: 8D 93 02
PLB                     ; $2A:FD92: AB
RTL                     ; $2A:FD93: 6B
REP #$30                ; $2A:FD94: C2 30
LDX #$0000              ; $2A:FD96: A2 00 00
LDA #$00FF              ; $2A:FD99: A9 FF 00

CODE_2AFD9C:
STA $7F9000,x           ; $2A:FD9C: 9F 00 90 7F
STA $7F9002,x           ; $2A:FDA0: 9F 02 90 7F
STA $7F9004,x           ; $2A:FDA4: 9F 04 90 7F
STA $7F9006,x           ; $2A:FDA8: 9F 06 90 7F
STA $7F9008,x           ; $2A:FDAC: 9F 08 90 7F
STA $7F900A,x           ; $2A:FDB0: 9F 0A 90 7F
STA $7F900C,x           ; $2A:FDB4: 9F 0C 90 7F
STA $7F900E,x           ; $2A:FDB8: 9F 0E 90 7F
STA $7F9010,x           ; $2A:FDBC: 9F 10 90 7F
STA $7F9012,x           ; $2A:FDC0: 9F 12 90 7F
STA $7F9014,x           ; $2A:FDC4: 9F 14 90 7F
STA $7F9016,x           ; $2A:FDC8: 9F 16 90 7F
STA $7F9018,x           ; $2A:FDCC: 9F 18 90 7F
STA $7F901A,x           ; $2A:FDD0: 9F 1A 90 7F
STA $7F901C,x           ; $2A:FDD4: 9F 1C 90 7F
STA $7F901E,x           ; $2A:FDD8: 9F 1E 90 7F
TXA                     ; $2A:FDDC: 8A
CLC                     ; $2A:FDDD: 18
ADC #$0020              ; $2A:FDDE: 69 20 00
TAX                     ; $2A:FDE1: AA
CPX #$01C0              ; $2A:FDE2: E0 C0 01
BNE CODE_2AFD9C         ; $2A:FDE5: D0 B5
SEP #$30                ; $2A:FDE7: E2 30
RTL                     ; $2A:FDE9: 6B

DATA_2AFDEA:
db $FC,$0C,$FC,$0C,$FC,$0C,$A9,$0C
db $A9,$0C,$FC,$0C,$A9,$0C,$A9,$0C

CODE_2AFDFA:
REP #$30                ; $2A:FDFA: C2 30
LDX #$0000              ; $2A:FDFC: A2 00 00
TXY                     ; $2A:FDFF: 9B

CODE_2AFE00:
LDA [$D8],y             ; $2A:FE00: B7 D8
STA $DB                 ; $2A:FE02: 85 DB

CODE_2AFE04:
PHX                     ; $2A:FE04: DA
LDA $DB                 ; $2A:FE05: A5 DB
AND #$C000              ; $2A:FE07: 29 00 C0
ASL A                   ; $2A:FE0A: 0A
ROL A                   ; $2A:FE0B: 2A
ROL A                   ; $2A:FE0C: 2A
ROL A                   ; $2A:FE0D: 2A
ROL A                   ; $2A:FE0E: 2A
TAX                     ; $2A:FE0F: AA
LDA.l DATA_2AFDEA,x     ; $2A:FE10: BF EA FD 2A
STA $00                 ; $2A:FE14: 85 00
LDA.l DATA_2AFDEA+2,x   ; $2A:FE16: BF EC FD 2A
PLX                     ; $2A:FE1A: FA
STA $7FA002,x           ; $2A:FE1B: 9F 02 A0 7F
LDA $00                 ; $2A:FE1F: A5 00
STA $7FA000,x           ; $2A:FE21: 9F 00 A0 7F
ASL $DB                 ; $2A:FE25: 06 DB
ASL $DB                 ; $2A:FE27: 06 DB
INX                     ; $2A:FE29: E8
INX                     ; $2A:FE2A: E8
INX                     ; $2A:FE2B: E8
INX                     ; $2A:FE2C: E8
TXA                     ; $2A:FE2D: 8A
LSR A                   ; $2A:FE2E: 4A
AND #$000F              ; $2A:FE2F: 29 0F 00
BNE CODE_2AFE04         ; $2A:FE32: D0 D0
INY                     ; $2A:FE34: C8
INY                     ; $2A:FE35: C8
TYA                     ; $2A:FE36: 98
CMP #$0040              ; $2A:FE37: C9 40 00
BNE CODE_2AFE00         ; $2A:FE3A: D0 C4
SEP #$30                ; $2A:FE3C: E2 30
RTL                     ; $2A:FE3E: 6B

DATA_2AFE3F:
db $58,$A0,$F4,$32,$60,$A0,$F5,$32
db $68,$A0,$F6,$32,$70,$A0,$F7,$32
db $80,$A0,$F6,$32,$88,$A0,$F8,$32
db $90,$A0,$F9,$32,$98,$A0,$FA,$32
db $A0,$A0,$F8,$32

CODE_2AFE63:
LDX #$23                ; $2A:FE63: A2 23

CODE_2AFE65:
LDA.l DATA_2AFE3F,x     ; $2A:FE65: BF 3F FE 2A
STA $0900,x             ; $2A:FE69: 9D 00 09
DEX                     ; $2A:FE6C: CA
BPL CODE_2AFE65         ; $2A:FE6D: 10 F6
STZ $0A60               ; $2A:FE6F: 9C 60 0A
STZ $0A61               ; $2A:FE72: 9C 61 0A
STZ $0A62               ; $2A:FE75: 9C 62 0A
STZ $0A63               ; $2A:FE78: 9C 63 0A
STZ $0A64               ; $2A:FE7B: 9C 64 0A
STZ $0A65               ; $2A:FE7E: 9C 65 0A
STZ $0A66               ; $2A:FE81: 9C 66 0A
STZ $0A67               ; $2A:FE84: 9C 67 0A
STZ $0A68               ; $2A:FE87: 9C 68 0A
RTL                     ; $2A:FE8A: 6B

