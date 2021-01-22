; Super Mario Bros. - The Lost Levels.

CODE_0F8000:
JSL CODE_0E8F35         ; $0F:8000: 22 35 8F 0E
STZ $0EDC               ; $0F:8004: 9C DC 0E
PHB                     ; $0F:8007: 8B
LDA #$7E                ; $0F:8008: A9 7E
PHA                     ; $0F:800A: 48
PLB                     ; $0F:800B: AB
LDA $DB                 ; $0F:800C: A5 DB
STA $0F35               ; $0F:800E: 8D 35 0F
CMP #$23                ; $0F:8011: C9 23
BNE CODE_0F801F         ; $0F:8013: D0 0A
LDX $43                 ; $0F:8015: A6 43
CPX #$0C                ; $0F:8017: E0 0C
BNE CODE_0F801F         ; $0F:8019: D0 04
LDX #$47                ; $0F:801B: A2 47
STX $DB                 ; $0F:801D: 86 DB

CODE_0F801F:
REP #$30                ; $0F:801F: C2 30
LDX #$0000              ; $0F:8021: A2 00 00
LDA #$0000              ; $0F:8024: A9 00 00

CODE_0F8027:
STA $D000,x             ; $0F:8027: 9D 00 D0
STA $D100,x             ; $0F:802A: 9D 00 D1
STA $D200,x             ; $0F:802D: 9D 00 D2
STA $D300,x             ; $0F:8030: 9D 00 D3
STA $D400,x             ; $0F:8033: 9D 00 D4
STA $D500,x             ; $0F:8036: 9D 00 D5
STA $D600,x             ; $0F:8039: 9D 00 D6
STA $D700,x             ; $0F:803C: 9D 00 D7
STA $D800,x             ; $0F:803F: 9D 00 D8
STA $D900,x             ; $0F:8042: 9D 00 D9
STA $DA00,x             ; $0F:8045: 9D 00 DA
STA $DB00,x             ; $0F:8048: 9D 00 DB
STA $DC00,x             ; $0F:804B: 9D 00 DC
STA $DD00,x             ; $0F:804E: 9D 00 DD
STA $DE00,x             ; $0F:8051: 9D 00 DE
STA $DF00,x             ; $0F:8054: 9D 00 DF
STA $E000,x             ; $0F:8057: 9D 00 E0
STA $E100,x             ; $0F:805A: 9D 00 E1
STA $E200,x             ; $0F:805D: 9D 00 E2
INX                     ; $0F:8060: E8
INX                     ; $0F:8061: E8
CPX #$0100              ; $0F:8062: E0 00 01
BNE CODE_0F8027         ; $0F:8065: D0 C0
PLB                     ; $0F:8067: AB
PHB                     ; $0F:8068: 8B
PHK                     ; $0F:8069: 4B
PLB                     ; $0F:806A: AB
STZ $0EC0               ; $0F:806B: 9C C0 0E
LDA $0E65               ; $0F:806E: AD 65 0E
AND #$00FF              ; $0F:8071: 29 FF 00
BEQ CODE_0F8078         ; $0F:8074: F0 02
STA $DB                 ; $0F:8076: 85 DB

CODE_0F8078:
LDA $DB                 ; $0F:8078: A5 DB
AND #$00FF              ; $0F:807A: 29 FF 00
ASL A                   ; $0F:807D: 0A
TAX                     ; $0F:807E: AA
LDA DATA_0FAE02,x       ; $0F:807F: BD 02 AE
STA $02                 ; $0F:8082: 85 02

CODE_0F8084:
REP #$30                ; $0F:8084: C2 30
LDX $02                 ; $0F:8086: A6 02
LDA DATA_0FB6A1,x       ; $0F:8088: BD A1 B6
STA $04                 ; $0F:808B: 85 04
INC $02                 ; $0F:808D: E6 02
INC $02                 ; $0F:808F: E6 02
AND #$03F0              ; $0F:8091: 29 F0 03
LSR A                   ; $0F:8094: 4A
LSR A                   ; $0F:8095: 4A
LSR A                   ; $0F:8096: 4A
LSR A                   ; $0F:8097: 4A
STA $EF                 ; $0F:8098: 85 EF
LDA $04                 ; $0F:809A: A5 04
AND #$000F              ; $0F:809C: 29 0F 00
STA $F1                 ; $0F:809F: 85 F1
LDA $04                 ; $0F:80A1: A5 04
AND #$E000              ; $0F:80A3: 29 00 E0
STA $ED                 ; $0F:80A6: 85 ED
LDA $04                 ; $0F:80A8: A5 04
LSR A                   ; $0F:80AA: 4A
AND #$0E00              ; $0F:80AB: 29 00 0E
ORA $ED                 ; $0F:80AE: 05 ED
XBA                     ; $0F:80B0: EB
STA $ED                 ; $0F:80B1: 85 ED
AND #$00F0              ; $0F:80B3: 29 F0 00
CMP #$00E0              ; $0F:80B6: C9 E0 00
BNE CODE_0F80DC         ; $0F:80B9: D0 21
LDA $EF                 ; $0F:80BB: A5 EF
CMP #$003F              ; $0F:80BD: C9 3F 00
BNE CODE_0F80D7         ; $0F:80C0: D0 15
INC $0EC0               ; $0F:80C2: EE C0 0E
INC $0EC0               ; $0F:80C5: EE C0 0E
LDA $0EC0               ; $0F:80C8: AD C0 0E
XBA                     ; $0F:80CB: EB
TAX                     ; $0F:80CC: AA
LDA #$FFFF              ; $0F:80CD: A9 FF FF
STA $7ED000,x           ; $0F:80D0: 9F 00 D0 7E
JMP CODE_0F91CF         ; $0F:80D4: 4C CF 91

CODE_0F80D7:
JSR CODE_0F8FB5         ; $0F:80D7: 20 B5 8F
BRA CODE_0F8084         ; $0F:80DA: 80 A8

CODE_0F80DC:
LDA $0EC0               ; $0F:80DC: AD C0 0E
XBA                     ; $0F:80DF: EB
CLC                     ; $0F:80E0: 18
ADC $ED                 ; $0F:80E1: 65 ED
STA $EB                 ; $0F:80E3: 85 EB
LDA $EF                 ; $0F:80E5: A5 EF
CMP #$0010              ; $0F:80E7: C9 10 00
BCC CODE_0F80F2         ; $0F:80EA: 90 06
JSR CODE_0F8F1D         ; $0F:80EC: 20 1D 8F
JMP CODE_0F8084         ; $0F:80EF: 4C 84 80

CODE_0F80F2:
ASL A                   ; $0F:80F2: 0A
TAX                     ; $0F:80F3: AA
LDA $DB                 ; $0F:80F4: A5 DB
ASL A                   ; $0F:80F6: 0A
TAY                     ; $0F:80F7: A8
LDA PNTR_0F810A,y       ; $0F:80F8: B9 0A 81
STA $04                 ; $0F:80FB: 85 04
LDA.w #PNTR_0F810A>>16  ; $0F:80FD: A9 0F 00
STA $06                 ; $0F:8100: 85 06
TXY                     ; $0F:8102: 9B
LDA [$04],y             ; $0F:8103: B7 04
STA $00                 ; $0F:8105: 85 00

; Load a ptr which points to a routine using a ptr.
;
;
;
;
;
;
; And jump to it.
JMP ($0000)             ; $0F:8107: 6C 00 00

; TODO

; $00 ;these pointers point to the next pointer table

PNTR_0F810A:
dw $8204

; $01
dw $8204

; $02
dw $8204

; $03
dw $8204

; $04
dw $8204

; $05
dw $8204

; $06
dw $8204

; $07
dw $81E4

; $08
dw $81BE

; $09
dw $81BE

; $0A
dw $8204

; $0B
dw $8204

; $0C
dw $8204

; $0D
dw $81E4

; $0E
dw $81BE

; $0F
dw $8254

; $10
dw $81BE

; $11
dw $81BE

; $12
dw $81BE

; $13
dw $821C

; $14
dw $8254

; $15
dw $81BE

; $16
dw $81BE

; $17
dw $81BE

; $18
dw $8254

; $19
dw $821C

; $1A
dw $8254

; $1B
dw $821C

; $1B
dw $819A

; $1C
dw $81BE

; $1D
dw $81BE

; $1E
dw $81BE

; $1F
dw $821C

; $20
dw $81BE

; $21
dw $8254

; $22
dw $821C

; $23
dw $823C

; $24
dw $81BE

; $25
dw $81BE

; $26
dw $81BE

; $27
dw $81BE

; $28
dw $81BE

; $29
dw $81BE

; $2A
dw $81BE

; $2B
dw $819A

; $2C
dw $81BE

; $2D
dw $8254

; $2E
dw $81BE

; $2F
dw $81BE

; $30
dw $81BE

; $31
dw $821C

; $32
dw $821C

; $33
dw $81A2

; $34
dw $81BE

; $35
dw $81BE

; $36
dw $81DE

; $37
dw $81DE

; $38
dw $81BE

; $39
dw $81DE

; $3A
dw $81BE

; $3B
dw $81DE

; $3C
dw $81BE

; $3D
dw $81B6

; $3E
dw $81B6

; $3F
dw $81B6

; $40
dw $81A0

; $41
dw $81B6

; $42
dw $81B6

; $43
dw $81B6

; $44
dw $81B6

; $45
dw $81B6

; $46
dw $81BE
dw $82B4
dw $82B9
dw $826A
dw $8357
dw $90A0
dw $86C3
dw $86C1
dw $86B8
dw $86AE
dw $86C3
dw $86C3
dw $86AE
dw $86C1
dw $86C3
dw $8799
dw $879B
dw $87D3
dw $87D5
dw $8A0A
dw $875E
dw $875E
dw $875E
dw $88BA
dw $88B8
dw $88AF
dw $88AD
dw $885F
dw $8869
dw $8875
dw $8881
dw $888D
dw $8899
dw $88A1
dw $8502
dw $8A78
dw $8A95
dw $8AC6
dw $8663
dw $8661
dw $8663
dw $8661
dw $8663
dw $8661
dw $8663
dw $8661
dw $8663
dw $8661
dw $8663
dw $8661
dw $8663
dw $8661
dw $8663
dw $8661
dw $8BE9
dw $8BE9
dw $8C27
dw $8CFE
dw $8D78
dw $8E22
dw $8BBA
dw $8B00
dw $8B6D
dw $8E6B
dw $8E69
dw $8E5D
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $870E
dw $84BA
dw $84B8
dw $84AE
dw $84AC
dw $84A7
dw $84A5
dw $849B
dw $8499
dw $845E
dw $845C
dw $8452
dw $8450
dw $837C

DATA_0F8256:
db $07,$0A,$0B,$12,$19,$29,$2A,$33
db $34,$30,$00,$07,$0A,$1D,$19,$00
db $29,$2A,$2D,$30
LDY $F1                 ; $0F:826A: A4 F1
LDX $EB                 ; $0F:826C: A6 EB
SEP #$20                ; $0F:826E: E2 20
LDA DATA_0F8256,y       ; $0F:8270: B9 56 82
STA $7ED000,x           ; $0F:8273: 9F 00 D0 7E
LDA DATA_0F8256+1,y     ; $0F:8277: B9 57 82
STA $7ED010,x           ; $0F:827A: 9F 10 D0 7E
LDA DATA_0F8256+2,y     ; $0F:827E: B9 58 82
STA $7ED020,x           ; $0F:8281: 9F 20 D0 7E
LDA DATA_0F8256+3,y     ; $0F:8285: B9 59 82
STA $7ED030,x           ; $0F:8288: 9F 30 D0 7E
LDA DATA_0F8256+4,y     ; $0F:828C: B9 5A 82
STA $7ED040,x           ; $0F:828F: 9F 40 D0 7E
REP #$20                ; $0F:8293: C2 20
JMP CODE_0F8084         ; $0F:8295: 4C 84 80

DATA_0F8298:
db $01,$02,$03,$04,$08,$09,$05,$06
db $10,$11,$17,$18,$1B,$1C,$1F,$20
db $21,$22,$25,$26,$23,$24,$2B,$2C
db $2E,$2F,$31,$32
LDY #$000E              ; $0F:82B4: A0 0E 00
BRA CODE_0F82BC         ; $0F:82B7: 80 03
LDY #$0000              ; $0F:82B9: A0 00 00

CODE_0F82BC:
LDX $EB                 ; $0F:82BC: A6 EB
INX                     ; $0F:82BE: E8
SEP #$20                ; $0F:82BF: E2 20
LDA DATA_0F8298,y       ; $0F:82C1: B9 98 82
STA $7ED000,x           ; $0F:82C4: 9F 00 D0 7E
LDA DATA_0F8298+1,y     ; $0F:82C8: B9 99 82
STA $7ED001,x           ; $0F:82CB: 9F 01 D0 7E
LDA DATA_0F8298+2,y     ; $0F:82CF: B9 9A 82
STA $7ED010,x           ; $0F:82D2: 9F 10 D0 7E
LDA DATA_0F8298+3,y     ; $0F:82D6: B9 9B 82
STA $7ED011,x           ; $0F:82D9: 9F 11 D0 7E
LDA DATA_0F8298+6,y     ; $0F:82DD: B9 9E 82
STA $7ED020,x           ; $0F:82E0: 9F 20 D0 7E
LDA DATA_0F8298+7,y     ; $0F:82E4: B9 9F 82
STA $7ED021,x           ; $0F:82E7: 9F 21 D0 7E
LDA #$30                ; $0F:82EB: A9 30
STA $E4                 ; $0F:82ED: 85 E4
STZ $E5                 ; $0F:82EF: 64 E5

CODE_0F82F1:
REP #$20                ; $0F:82F1: C2 20
TXA                     ; $0F:82F3: 8A
CLC                     ; $0F:82F4: 18
ADC $E4                 ; $0F:82F5: 65 E4
TAX                     ; $0F:82F7: AA
SEP #$20                ; $0F:82F8: E2 20
CMP #$D0                ; $0F:82FA: C9 D0
BCS CODE_0F8322         ; $0F:82FC: B0 24
LDA DATA_0F8298+4,y     ; $0F:82FE: B9 9C 82
STA $7ED000,x           ; $0F:8301: 9F 00 D0 7E
LDA DATA_0F8298+5,y     ; $0F:8305: B9 9D 82
STA $7ED001,x           ; $0F:8308: 9F 01 D0 7E
LDA DATA_0F8298+6,y     ; $0F:830C: B9 9E 82
STA $7ED010,x           ; $0F:830F: 9F 10 D0 7E
LDA DATA_0F8298+7,y     ; $0F:8313: B9 9F 82
STA $7ED011,x           ; $0F:8316: 9F 11 D0 7E
LDA #$20                ; $0F:831A: A9 20
STA $E4                 ; $0F:831C: 85 E4
STZ $E5                 ; $0F:831E: 64 E5
BRA CODE_0F82F1         ; $0F:8320: 80 CF

CODE_0F8322:
LDA DATA_0F8298+8,y     ; $0F:8322: B9 A0 82
STA $7ED000,x           ; $0F:8325: 9F 00 D0 7E
LDA DATA_0F8298+9,y     ; $0F:8329: B9 A1 82
STA $7ED001,x           ; $0F:832C: 9F 01 D0 7E
LDA DATA_0F8298+10,y    ; $0F:8330: B9 A2 82
STA $7ED010,x           ; $0F:8333: 9F 10 D0 7E
LDA DATA_0F8298+11,y    ; $0F:8337: B9 A3 82
STA $7ED011,x           ; $0F:833A: 9F 11 D0 7E
LDA DATA_0F8298+12,y    ; $0F:833E: B9 A4 82
STA $7ED020,x           ; $0F:8341: 9F 20 D0 7E
LDA DATA_0F8298+13,y    ; $0F:8345: B9 A5 82
STA $7ED021,x           ; $0F:8348: 9F 21 D0 7E
REP #$20                ; $0F:834C: C2 20
JMP CODE_0F8084         ; $0F:834E: 4C 84 80

DATA_0F8351:
db $00,$00,$41,$00,$82,$00
LDA $F1                 ; $0F:8357: A5 F1
ASL A                   ; $0F:8359: 0A
TAY                     ; $0F:835A: A8
LDA DATA_0F8351,y       ; $0F:835B: B9 51 83
TAY                     ; $0F:835E: A8
LDA $EB                 ; $0F:835F: A5 EB
CLC                     ; $0F:8361: 18
ADC #$0010              ; $0F:8362: 69 10 00
TAX                     ; $0F:8365: AA
SEP #$20                ; $0F:8366: E2 20

CODE_0F8368:
LDA DATA_0FB5DE,y       ; $0F:8368: B9 DE B5
CMP #$FF                ; $0F:836B: C9 FF
BEQ CODE_0F8377         ; $0F:836D: F0 08
STA $7ED000,x           ; $0F:836F: 9F 00 D0 7E
INY                     ; $0F:8373: C8
INX                     ; $0F:8374: E8
BRA CODE_0F8368         ; $0F:8375: 80 F1

CODE_0F8377:
REP #$20                ; $0F:8377: C2 20
JMP CODE_0F8084         ; $0F:8379: 4C 84 80
LDX $EB                 ; $0F:837C: A6 EB
LDA $F1                 ; $0F:837E: A5 F1
STA $E6                 ; $0F:8380: 85 E6
SEP #$20                ; $0F:8382: E2 20
STZ $E8                 ; $0F:8384: 64 E8

CODE_0F8386:
LDA #$09                ; $0F:8386: A9 09
STA $7ED000,x           ; $0F:8388: 9F 00 D0 7E
LDA #$0E                ; $0F:838C: A9 0E
STA $7ED010,x           ; $0F:838E: 9F 10 D0 7E
STA $7ED030,x           ; $0F:8392: 9F 30 D0 7E
STA $7ED050,x           ; $0F:8396: 9F 50 D0 7E
LDA #$12                ; $0F:839A: A9 12
STA $7ED020,x           ; $0F:839C: 9F 20 D0 7E
STA $7ED040,x           ; $0F:83A0: 9F 40 D0 7E
INX                     ; $0F:83A4: E8
REP #$20                ; $0F:83A5: C2 20
TXA                     ; $0F:83A7: 8A
AND #$000F              ; $0F:83A8: 29 0F 00
BNE CODE_0F83B5         ; $0F:83AB: D0 08
TXA                     ; $0F:83AD: 8A
CLC                     ; $0F:83AE: 18
ADC #$00F0              ; $0F:83AF: 69 F0 00
TAX                     ; $0F:83B2: AA
INC $E8                 ; $0F:83B3: E6 E8

CODE_0F83B5:
SEP #$20                ; $0F:83B5: E2 20
DEC $E6                 ; $0F:83B7: C6 E6
LDA $E6                 ; $0F:83B9: A5 E6
BMI CODE_0F83F4         ; $0F:83BB: 30 37
LDA #$09                ; $0F:83BD: A9 09
STA $7ED000,x           ; $0F:83BF: 9F 00 D0 7E
LDA #$0F                ; $0F:83C3: A9 0F
STA $7ED010,x           ; $0F:83C5: 9F 10 D0 7E
STA $7ED030,x           ; $0F:83C9: 9F 30 D0 7E
STA $7ED050,x           ; $0F:83CD: 9F 50 D0 7E
LDA #$13                ; $0F:83D1: A9 13
STA $7ED020,x           ; $0F:83D3: 9F 20 D0 7E
STA $7ED040,x           ; $0F:83D7: 9F 40 D0 7E
INX                     ; $0F:83DB: E8
REP #$20                ; $0F:83DC: C2 20
TXA                     ; $0F:83DE: 8A
AND #$000F              ; $0F:83DF: 29 0F 00
BNE CODE_0F83EC         ; $0F:83E2: D0 08
TXA                     ; $0F:83E4: 8A
CLC                     ; $0F:83E5: 18
ADC #$00F0              ; $0F:83E6: 69 F0 00
TAX                     ; $0F:83E9: AA
INC $E8                 ; $0F:83EA: E6 E8

CODE_0F83EC:
SEP #$20                ; $0F:83EC: E2 20
DEC $E6                 ; $0F:83EE: C6 E6
LDA $E6                 ; $0F:83F0: A5 E6
BPL CODE_0F8386         ; $0F:83F2: 10 92

CODE_0F83F4:
LDX $EB                 ; $0F:83F4: A6 EB
LDA $F1                 ; $0F:83F6: A5 F1
CMP #$04                ; $0F:83F8: C9 04
BCC CODE_0F83FE         ; $0F:83FA: 90 02
LDA #$04                ; $0F:83FC: A9 04

CODE_0F83FE:
TAY                     ; $0F:83FE: A8
LDA DATA_0F8425,y       ; $0F:83FF: B9 25 84
STA $7ECFFF,x           ; $0F:8402: 9F FF CF 7E
REP #$20                ; $0F:8406: C2 20
LDA $E8                 ; $0F:8408: A5 E8
BEQ CODE_0F8412         ; $0F:840A: F0 06
TXA                     ; $0F:840C: 8A
CLC                     ; $0F:840D: 18
ADC #$00F0              ; $0F:840E: 69 F0 00
TAX                     ; $0F:8411: AA

CODE_0F8412:
TXA                     ; $0F:8412: 8A
CLC                     ; $0F:8413: 18
ADC $F1                 ; $0F:8414: 65 F1
TAX                     ; $0F:8416: AA
SEP #$20                ; $0F:8417: E2 20
LDA DATA_0F842A,y       ; $0F:8419: B9 2A 84
STA $7ED001,x           ; $0F:841C: 9F 01 D0 7E
REP #$20                ; $0F:8420: C2 20
JMP CODE_0F8084         ; $0F:8422: 4C 84 80

DATA_0F8425:
db $08,$08,$04,$04,$08

DATA_0F842A:
db $0A,$06,$0A,$06,$0A

DATA_0F842F:
db $01,$02,$03,$02,$04,$01,$02,$02
db $03,$02,$02,$04,$07,$08,$09,$07
db $0E,$08,$0E,$09,$01,$03,$04

DATA_0F8446:
db $04,$06,$02,$04,$02

DATA_0F844B:
db $00,$05,$0C,$0F,$14
INC $EB                 ; $0F:8450: E6 EB
LDA $EB                 ; $0F:8452: A5 EB
CLC                     ; $0F:8454: 18
ADC #$0010              ; $0F:8455: 69 10 00
STA $EB                 ; $0F:8458: 85 EB
BRA CODE_0F845E         ; $0F:845A: 80 02
INC $EB                 ; $0F:845C: E6 EB

CODE_0F845E:
LDX $EB                 ; $0F:845E: A6 EB
LDA $F1                 ; $0F:8460: A5 F1
TAY                     ; $0F:8462: A8
LDA DATA_0F8446,y       ; $0F:8463: B9 46 84
AND #$00FF              ; $0F:8466: 29 FF 00
STA $F1                 ; $0F:8469: 85 F1
LDA DATA_0F844B,y       ; $0F:846B: B9 4B 84
AND #$00FF              ; $0F:846E: 29 FF 00
TAY                     ; $0F:8471: A8
SEP #$20                ; $0F:8472: E2 20

CODE_0F8474:
LDA DATA_0F842F,y       ; $0F:8474: B9 2F 84
STA $7ED000,x           ; $0F:8477: 9F 00 D0 7E
INX                     ; $0F:847B: E8
INY                     ; $0F:847C: C8
TXA                     ; $0F:847D: 8A
AND #$0F                ; $0F:847E: 29 0F
BNE CODE_0F848C         ; $0F:8480: D0 0A
REP #$20                ; $0F:8482: C2 20
TXA                     ; $0F:8484: 8A
CLC                     ; $0F:8485: 18
ADC #$00F0              ; $0F:8486: 69 F0 00
TAX                     ; $0F:8489: AA
SEP #$20                ; $0F:848A: E2 20

CODE_0F848C:
DEC $F1                 ; $0F:848C: C6 F1
BPL CODE_0F8474         ; $0F:848E: 10 E4
REP #$20                ; $0F:8490: C2 20
JMP CODE_0F8084         ; $0F:8492: 4C 84 80

DATA_0F8495:
db $05,$0A

DATA_0F8497:
db $06,$0C
INC $EB                 ; $0F:8499: E6 EB
LDA $EB                 ; $0F:849B: A5 EB
CLC                     ; $0F:849D: 18
ADC #$0010              ; $0F:849E: 69 10 00
STA $EB                 ; $0F:84A1: 85 EB
BRA CODE_0F84A7         ; $0F:84A3: 80 02
INC $EB                 ; $0F:84A5: E6 EB

CODE_0F84A7:
LDY #$0001              ; $0F:84A7: A0 01 00
BRA CODE_0F84BD         ; $0F:84AA: 80 11
INC $EB                 ; $0F:84AC: E6 EB
LDA $EB                 ; $0F:84AE: A5 EB
CLC                     ; $0F:84B0: 18
ADC #$0010              ; $0F:84B1: 69 10 00
STA $EB                 ; $0F:84B4: 85 EB
BRA CODE_0F84BA         ; $0F:84B6: 80 02
INC $EB                 ; $0F:84B8: E6 EB

CODE_0F84BA:
LDY #$0000              ; $0F:84BA: A0 00 00

CODE_0F84BD:
LDX $EB                 ; $0F:84BD: A6 EB
SEP #$20                ; $0F:84BF: E2 20
LDA DATA_0F8495,y       ; $0F:84C1: B9 95 84
STA $7ED000,x           ; $0F:84C4: 9F 00 D0 7E
REP #$20                ; $0F:84C8: C2 20
TXA                     ; $0F:84CA: 8A
CLC                     ; $0F:84CB: 18
ADC #$0010              ; $0F:84CC: 69 10 00
TAX                     ; $0F:84CF: AA
SEP #$20                ; $0F:84D0: E2 20
DEC $F1                 ; $0F:84D2: C6 F1

CODE_0F84D4:
LDA $7ED000,x           ; $0F:84D4: BF 00 D0 7E
CMP #$0E                ; $0F:84D8: C9 0E
BNE CODE_0F84E0         ; $0F:84DA: D0 04
LDA #$0D                ; $0F:84DC: A9 0D
BRA CODE_0F84EB         ; $0F:84DE: 80 0B

CODE_0F84E0:
CMP #$02                ; $0F:84E0: C9 02
BNE CODE_0F84E8         ; $0F:84E2: D0 04
LDA #$0B                ; $0F:84E4: A9 0B
BRA CODE_0F84EB         ; $0F:84E6: 80 03

CODE_0F84E8:
LDA DATA_0F8497,y       ; $0F:84E8: B9 97 84

CODE_0F84EB:
STA $7ED000,x           ; $0F:84EB: 9F 00 D0 7E
REP #$20                ; $0F:84EF: C2 20
TXA                     ; $0F:84F1: 8A
CLC                     ; $0F:84F2: 18
ADC #$0010              ; $0F:84F3: 69 10 00
TAX                     ; $0F:84F6: AA
SEP #$20                ; $0F:84F7: E2 20
DEC $F1                 ; $0F:84F9: C6 F1
BPL CODE_0F84D4         ; $0F:84FB: 10 D7
REP #$20                ; $0F:84FD: C2 20
JMP CODE_0F8084         ; $0F:84FF: 4C 84 80
LDA $EB                 ; $0F:8502: A5 EB
CLC                     ; $0F:8504: 18
ADC #$0010              ; $0F:8505: 69 10 00
TAX                     ; $0F:8508: AA
SEP #$20                ; $0F:8509: E2 20
LDA #$4E                ; $0F:850B: A9 4E
STA $7ED030,x           ; $0F:850D: 9F 30 D0 7E
LDA $7ED000,x           ; $0F:8511: BF 00 D0 7E
BEQ CODE_0F851B         ; $0F:8515: F0 04
LDA #$38                ; $0F:8517: A9 38
BRA CODE_0F851D         ; $0F:8519: 80 02

CODE_0F851B:
LDA #$34                ; $0F:851B: A9 34

CODE_0F851D:
STA $7ED000,x           ; $0F:851D: 9F 00 D0 7E
LDA $7ED010,x           ; $0F:8521: BF 10 D0 7E
BEQ CODE_0F852F         ; $0F:8525: F0 08
CMP #$12                ; $0F:8527: C9 12
BEQ CODE_0F852F         ; $0F:8529: F0 04
LDA #$44                ; $0F:852B: A9 44
BRA CODE_0F8531         ; $0F:852D: 80 02

CODE_0F852F:
LDA #$40                ; $0F:852F: A9 40

CODE_0F8531:
STA $7ED010,x           ; $0F:8531: 9F 10 D0 7E
LDA $7ED020,x           ; $0F:8535: BF 20 D0 7E
BEQ CODE_0F8543         ; $0F:8539: F0 08
CMP #$12                ; $0F:853B: C9 12
BEQ CODE_0F8543         ; $0F:853D: F0 04
LDA #$4D                ; $0F:853F: A9 4D
BRA CODE_0F8545         ; $0F:8541: 80 02

CODE_0F8543:
LDA #$4C                ; $0F:8543: A9 4C

CODE_0F8545:
STA $7ED020,x           ; $0F:8545: 9F 20 D0 7E
INX                     ; $0F:8549: E8
LDA $7ED000,x           ; $0F:854A: BF 00 D0 7E
BEQ CODE_0F856C         ; $0F:854E: F0 1C
CMP #$12                ; $0F:8550: C9 12
BEQ CODE_0F856C         ; $0F:8552: F0 18
CMP #$18                ; $0F:8554: C9 18
BEQ CODE_0F8568         ; $0F:8556: F0 10
CMP #$07                ; $0F:8558: C9 07
BEQ CODE_0F8568         ; $0F:855A: F0 0C
CMP #$17                ; $0F:855C: C9 17
BEQ CODE_0F8564         ; $0F:855E: F0 04
LDA #$39                ; $0F:8560: A9 39
BRA CODE_0F856E         ; $0F:8562: 80 0A

CODE_0F8564:
LDA #$3D                ; $0F:8564: A9 3D
BRA CODE_0F856E         ; $0F:8566: 80 06

CODE_0F8568:
LDA #$36                ; $0F:8568: A9 36
BRA CODE_0F856E         ; $0F:856A: 80 02

CODE_0F856C:
LDA #$35                ; $0F:856C: A9 35

CODE_0F856E:
STA $7ED000,x           ; $0F:856E: 9F 00 D0 7E
LDA #$41                ; $0F:8572: A9 41
STA $7ED010,x           ; $0F:8574: 9F 10 D0 7E
LDA #$48                ; $0F:8578: A9 48
STA $7ED020,x           ; $0F:857A: 9F 20 D0 7E
LDA #$4E                ; $0F:857E: A9 4E
STA $7ED030,x           ; $0F:8580: 9F 30 D0 7E
INX                     ; $0F:8584: E8

CODE_0F8585:
DEC $F1                 ; $0F:8585: C6 F1
LDA $F1                 ; $0F:8587: A5 F1
BNE CODE_0F858E         ; $0F:8589: D0 03
JMP CODE_0F860E         ; $0F:858B: 4C 0E 86

CODE_0F858E:
LDA $7ED000,x           ; $0F:858E: BF 00 D0 7E
BNE CODE_0F85AE         ; $0F:8592: D0 1A
LDA #$36                ; $0F:8594: A9 36
STA $7ED000,x           ; $0F:8596: 9F 00 D0 7E
LDA #$35                ; $0F:859A: A9 35
STA $7ED001,x           ; $0F:859C: 9F 01 D0 7E
LDA #$42                ; $0F:85A0: A9 42
STA $7ED010,x           ; $0F:85A2: 9F 10 D0 7E
LDA #$41                ; $0F:85A6: A9 41
STA $7ED011,x           ; $0F:85A8: 9F 11 D0 7E
BRA CODE_0F85E4         ; $0F:85AC: 80 36

CODE_0F85AE:
CMP #$18                ; $0F:85AE: C9 18
BEQ CODE_0F85CC         ; $0F:85B0: F0 1A
LDA #$3A                ; $0F:85B2: A9 3A
STA $7ED000,x           ; $0F:85B4: 9F 00 D0 7E
LDA #$39                ; $0F:85B8: A9 39
STA $7ED001,x           ; $0F:85BA: 9F 01 D0 7E
LDA #$42                ; $0F:85BE: A9 42
STA $7ED010,x           ; $0F:85C0: 9F 10 D0 7E
LDA #$41                ; $0F:85C4: A9 41
STA $7ED011,x           ; $0F:85C6: 9F 11 D0 7E
BRA CODE_0F85E4         ; $0F:85CA: 80 18

CODE_0F85CC:
LDA #$36                ; $0F:85CC: A9 36
STA $7ED000,x           ; $0F:85CE: 9F 00 D0 7E
LDA #$35                ; $0F:85D2: A9 35
STA $7ED001,x           ; $0F:85D4: 9F 01 D0 7E
LDA #$42                ; $0F:85D8: A9 42
STA $7ED010,x           ; $0F:85DA: 9F 10 D0 7E
LDA #$41                ; $0F:85DE: A9 41
STA $7ED011,x           ; $0F:85E0: 9F 11 D0 7E

CODE_0F85E4:
LDA #$47                ; $0F:85E4: A9 47
STA $7ED020,x           ; $0F:85E6: 9F 20 D0 7E
LDA #$48                ; $0F:85EA: A9 48
STA $7ED021,x           ; $0F:85EC: 9F 21 D0 7E
LDA #$4E                ; $0F:85F0: A9 4E
STA $7ED030,x           ; $0F:85F2: 9F 30 D0 7E
STA $7ED031,x           ; $0F:85F6: 9F 31 D0 7E
INX                     ; $0F:85FA: E8
INX                     ; $0F:85FB: E8
TXA                     ; $0F:85FC: 8A
AND #$0F                ; $0F:85FD: 29 0F
BNE CODE_0F8585         ; $0F:85FF: D0 84
REP #$20                ; $0F:8601: C2 20
TXA                     ; $0F:8603: 8A
CLC                     ; $0F:8604: 18
ADC #$00F0              ; $0F:8605: 69 F0 00
TAX                     ; $0F:8608: AA
SEP #$20                ; $0F:8609: E2 20
JMP CODE_0F8585         ; $0F:860B: 4C 85 85

CODE_0F860E:
LDA #$42                ; $0F:860E: A9 42
STA $7ED010,x           ; $0F:8610: 9F 10 D0 7E
LDA #$47                ; $0F:8614: A9 47
STA $7ED020,x           ; $0F:8616: 9F 20 D0 7E
LDA #$4E                ; $0F:861A: A9 4E
STA $7ED030,x           ; $0F:861C: 9F 30 D0 7E
STA $7ED031,x           ; $0F:8620: 9F 31 D0 7E
LDA $7ED000,x           ; $0F:8624: BF 00 D0 7E
BNE CODE_0F8644         ; $0F:8628: D0 1A
LDA #$36                ; $0F:862A: A9 36
STA $7ED000,x           ; $0F:862C: 9F 00 D0 7E
LDA #$37                ; $0F:8630: A9 37
STA $7ED001,x           ; $0F:8632: 9F 01 D0 7E
LDA #$43                ; $0F:8636: A9 43
STA $7ED011,x           ; $0F:8638: 9F 11 D0 7E
LDA #$49                ; $0F:863C: A9 49
STA $7ED021,x           ; $0F:863E: 9F 21 D0 7E
BRA CODE_0F865C         ; $0F:8642: 80 18

CODE_0F8644:
LDA #$3A                ; $0F:8644: A9 3A
STA $7ED000,x           ; $0F:8646: 9F 00 D0 7E
LDA #$3B                ; $0F:864A: A9 3B
STA $7ED001,x           ; $0F:864C: 9F 01 D0 7E
LDA #$45                ; $0F:8650: A9 45
STA $7ED011,x           ; $0F:8652: 9F 11 D0 7E
LDA #$4A                ; $0F:8656: A9 4A
STA $7ED021,x           ; $0F:8658: 9F 21 D0 7E

CODE_0F865C:
REP #$20                ; $0F:865C: C2 20
JMP CODE_0F8084         ; $0F:865E: 4C 84 80
INC $EB                 ; $0F:8661: E6 EB
LDX $EB                 ; $0F:8663: A6 EB
STX $E2                 ; $0F:8665: 86 E2
LDA $EF                 ; $0F:8667: A5 EF
ASL A                   ; $0F:8669: 0A
TAY                     ; $0F:866A: A8
LDA DATA_0F87FF,y       ; $0F:866B: B9 FF 87
TAY                     ; $0F:866E: A8
SEP #$20                ; $0F:866F: E2 20

CODE_0F8671:
LDA DATA_0FB46D,y       ; $0F:8671: B9 6D B4
BEQ CODE_0F8685         ; $0F:8674: F0 0F
CMP #$FF                ; $0F:8676: C9 FF
BEQ CODE_0F86A9         ; $0F:8678: F0 2F
CMP #$FE                ; $0F:867A: C9 FE
BEQ CODE_0F8699         ; $0F:867C: F0 1B
LDA DATA_0FB46D,y       ; $0F:867E: B9 6D B4
STA $7ED000,x           ; $0F:8681: 9F 00 D0 7E

CODE_0F8685:
INY                     ; $0F:8685: C8
INX                     ; $0F:8686: E8
REP #$20                ; $0F:8687: C2 20
TXA                     ; $0F:8689: 8A
AND #$000F              ; $0F:868A: 29 0F 00
BNE CODE_0F8695         ; $0F:868D: D0 06
TXA                     ; $0F:868F: 8A
CLC                     ; $0F:8690: 18
ADC #$00F0              ; $0F:8691: 69 F0 00
TAX                     ; $0F:8694: AA

CODE_0F8695:
SEP #$20                ; $0F:8695: E2 20
BRA CODE_0F8671         ; $0F:8697: 80 D8

CODE_0F8699:
REP #$20                ; $0F:8699: C2 20
LDA $E2                 ; $0F:869B: A5 E2
CLC                     ; $0F:869D: 18
ADC #$0010              ; $0F:869E: 69 10 00
STA $E2                 ; $0F:86A1: 85 E2
TAX                     ; $0F:86A3: AA
SEP #$20                ; $0F:86A4: E2 20
INY                     ; $0F:86A6: C8
BRA CODE_0F8671         ; $0F:86A7: 80 C8

CODE_0F86A9:
REP #$20                ; $0F:86A9: C2 20
JMP CODE_0F8084         ; $0F:86AB: 4C 84 80
LDA $EB                 ; $0F:86AE: A5 EB
CLC                     ; $0F:86B0: 18
ADC #$0010              ; $0F:86B1: 69 10 00
TAX                     ; $0F:86B4: AA
INX                     ; $0F:86B5: E8
BRA CODE_0F86C5         ; $0F:86B6: 80 0D
LDA $EB                 ; $0F:86B8: A5 EB
CLC                     ; $0F:86BA: 18
ADC #$0010              ; $0F:86BB: 69 10 00
TAX                     ; $0F:86BE: AA
BRA CODE_0F86C5         ; $0F:86BF: 80 04
INC $EB                 ; $0F:86C1: E6 EB
LDX $EB                 ; $0F:86C3: A6 EB

CODE_0F86C5:
STX $E2                 ; $0F:86C5: 86 E2
LDA $EF                 ; $0F:86C7: A5 EF
ASL A                   ; $0F:86C9: 0A
TAY                     ; $0F:86CA: A8
LDA DATA_0F881F,y       ; $0F:86CB: B9 1F 88
TAY                     ; $0F:86CE: A8
SEP #$20                ; $0F:86CF: E2 20

CODE_0F86D1:
LDA DATA_0FB52C,y       ; $0F:86D1: B9 2C B5
BEQ CODE_0F86E5         ; $0F:86D4: F0 0F
CMP #$FF                ; $0F:86D6: C9 FF
BEQ CODE_0F8709         ; $0F:86D8: F0 2F
CMP #$FE                ; $0F:86DA: C9 FE
BEQ CODE_0F86F9         ; $0F:86DC: F0 1B
LDA DATA_0FB52C,y       ; $0F:86DE: B9 2C B5
STA $7ED000,x           ; $0F:86E1: 9F 00 D0 7E

CODE_0F86E5:
INY                     ; $0F:86E5: C8
INX                     ; $0F:86E6: E8
REP #$20                ; $0F:86E7: C2 20
TXA                     ; $0F:86E9: 8A
AND #$000F              ; $0F:86EA: 29 0F 00
BNE CODE_0F86F5         ; $0F:86ED: D0 06
TXA                     ; $0F:86EF: 8A
CLC                     ; $0F:86F0: 18
ADC #$00F0              ; $0F:86F1: 69 F0 00
TAX                     ; $0F:86F4: AA

CODE_0F86F5:
SEP #$20                ; $0F:86F5: E2 20
BRA CODE_0F86D1         ; $0F:86F7: 80 D8

CODE_0F86F9:
REP #$20                ; $0F:86F9: C2 20
LDA $E2                 ; $0F:86FB: A5 E2
CLC                     ; $0F:86FD: 18
ADC #$0010              ; $0F:86FE: 69 10 00
STA $E2                 ; $0F:8701: 85 E2
TAX                     ; $0F:8703: AA
SEP #$20                ; $0F:8704: E2 20
INY                     ; $0F:8706: C8
BRA CODE_0F86D1         ; $0F:8707: 80 C8

CODE_0F8709:
REP #$20                ; $0F:8709: C2 20
JMP CODE_0F8084         ; $0F:870B: 4C 84 80
LDX $EB                 ; $0F:870E: A6 EB
STX $E2                 ; $0F:8710: 86 E2
LDA $EF                 ; $0F:8712: A5 EF
ASL A                   ; $0F:8714: 0A
TAY                     ; $0F:8715: A8
LDA DATA_0F8833,y       ; $0F:8716: B9 33 88
TAY                     ; $0F:8719: A8
SEP #$20                ; $0F:871A: E2 20

CODE_0F871C:
LDA DATA_0FAE92,y       ; $0F:871C: B9 92 AE
BEQ CODE_0F872D         ; $0F:871F: F0 0C
CMP #$FF                ; $0F:8721: C9 FF
BEQ CODE_0F8759         ; $0F:8723: F0 34
CMP #$FE                ; $0F:8725: C9 FE
BEQ CODE_0F8741         ; $0F:8727: F0 18
STA $7ED000,x           ; $0F:8729: 9F 00 D0 7E

CODE_0F872D:
INY                     ; $0F:872D: C8
INX                     ; $0F:872E: E8
REP #$20                ; $0F:872F: C2 20
TXA                     ; $0F:8731: 8A
AND #$000F              ; $0F:8732: 29 0F 00
BNE CODE_0F873D         ; $0F:8735: D0 06
TXA                     ; $0F:8737: 8A
CLC                     ; $0F:8738: 18
ADC #$00F0              ; $0F:8739: 69 F0 00
TAX                     ; $0F:873C: AA

CODE_0F873D:
SEP #$20                ; $0F:873D: E2 20
BRA CODE_0F871C         ; $0F:873F: 80 DB

CODE_0F8741:
REP #$20                ; $0F:8741: C2 20
LDA $E2                 ; $0F:8743: A5 E2
CLC                     ; $0F:8745: 18
ADC #$0010              ; $0F:8746: 69 10 00
STA $E2                 ; $0F:8749: 85 E2
TAX                     ; $0F:874B: AA
AND #$00F0              ; $0F:874C: 29 F0 00
CMP #$00F0              ; $0F:874F: C9 F0 00
BEQ CODE_0F8759         ; $0F:8752: F0 05
SEP #$20                ; $0F:8754: E2 20
INY                     ; $0F:8756: C8
BRA CODE_0F871C         ; $0F:8757: 80 C3

CODE_0F8759:
REP #$20                ; $0F:8759: C2 20
JMP CODE_0F8084         ; $0F:875B: 4C 84 80
DEC $EF                 ; $0F:875E: C6 EF
LDA $EF                 ; $0F:8760: A5 EF
AND #$0003              ; $0F:8762: 29 03 00
ASL A                   ; $0F:8765: 0A
ASL A                   ; $0F:8766: 0A
ASL A                   ; $0F:8767: 0A
ASL A                   ; $0F:8768: 0A
ORA $F1                 ; $0F:8769: 05 F1
ASL A                   ; $0F:876B: 0A
ASL A                   ; $0F:876C: 0A
TAY                     ; $0F:876D: A8
LDX $EB                 ; $0F:876E: A6 EB
SEP #$20                ; $0F:8770: E2 20
LDA DATA_0F92E2,y       ; $0F:8772: B9 E2 92
STA $7ED000,x           ; $0F:8775: 9F 00 D0 7E
LDA DATA_0F92E2+1,y     ; $0F:8779: B9 E3 92
STA $7ED001,x           ; $0F:877C: 9F 01 D0 7E
LDA DATA_0F92E2+2,y     ; $0F:8780: B9 E4 92
STA $7ED010,x           ; $0F:8783: 9F 10 D0 7E
LDA DATA_0F92E2+3,y     ; $0F:8787: B9 E5 92
STA $7ED011,x           ; $0F:878A: 9F 11 D0 7E
REP #$20                ; $0F:878E: C2 20
JMP CODE_0F8084         ; $0F:8790: 4C 84 80

DATA_0F8793:
db $04,$05,$0B,$0C,$0B,$0C
INC $EB                 ; $0F:8799: E6 EB
LDA $EB                 ; $0F:879B: A5 EB
CLC                     ; $0F:879D: 18
ADC #$0020              ; $0F:879E: 69 20 00
TAX                     ; $0F:87A1: AA
SEP #$20                ; $0F:87A2: E2 20
LDA DATA_0F8793         ; $0F:87A4: AD 93 87
STA $7ED000,x           ; $0F:87A7: 9F 00 D0 7E
LDA DATA_0F8793+1       ; $0F:87AB: AD 94 87
STA $7ED001,x           ; $0F:87AE: 9F 01 D0 7E
LDA DATA_0F8793+2       ; $0F:87B2: AD 95 87
STA $7ED010,x           ; $0F:87B5: 9F 10 D0 7E
LDA DATA_0F8793+3       ; $0F:87B9: AD 96 87
STA $7ED011,x           ; $0F:87BC: 9F 11 D0 7E
LDA DATA_0F8793+4       ; $0F:87C0: AD 97 87
STA $7ED020,x           ; $0F:87C3: 9F 20 D0 7E
LDA DATA_0F8793+5       ; $0F:87C7: AD 98 87
STA $7ED021,x           ; $0F:87CA: 9F 21 D0 7E
REP #$20                ; $0F:87CE: C2 20
JMP CODE_0F8084         ; $0F:87D0: 4C 84 80
INC $EB                 ; $0F:87D3: E6 EB
LDA $EB                 ; $0F:87D5: A5 EB
CLC                     ; $0F:87D7: 18
ADC #$0020              ; $0F:87D8: 69 20 00
TAX                     ; $0F:87DB: AA
SEP #$20                ; $0F:87DC: E2 20
LDA DATA_0F8793         ; $0F:87DE: AD 93 87
STA $7ED010,x           ; $0F:87E1: 9F 10 D0 7E
LDA DATA_0F8793+1       ; $0F:87E5: AD 94 87
STA $7ED011,x           ; $0F:87E8: 9F 11 D0 7E
LDA DATA_0F8793+2       ; $0F:87EC: AD 95 87
STA $7ED020,x           ; $0F:87EF: 9F 20 D0 7E
LDA DATA_0F8793+3       ; $0F:87F3: AD 96 87
STA $7ED021,x           ; $0F:87F6: 9F 21 D0 7E
REP #$20                ; $0F:87FA: C2 20
JMP CODE_0F8084         ; $0F:87FC: 4C 84 80

DATA_0F87FF:
db $00,$00,$00,$00,$1F,$00,$1F,$00
db $3D,$00,$3D,$00,$44,$00,$44,$00
db $54,$00,$54,$00,$6E,$00,$00,$00
db $B3,$00,$B3,$00,$00,$00,$00,$00

DATA_0F881F:
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$04,$00,$18,$00,$2C,$00
db $52,$00,$90,$00

DATA_0F8833:
db $00,$00,$31,$00,$3B,$00,$83,$00
db $F5,$00,$4B,$01,$52,$01,$62,$01
db $AC,$01,$06,$02,$8D,$02,$D5,$02
db $F2,$02,$79,$03,$A0,$03

DATA_0F8851:
db $9A,$00,$A7,$00,$C9,$00,$D0,$00
db $DC,$00,$06,$01,$26,$01
LDY DATA_0F8851         ; $0F:885F: AC 51 88
LDA $EB                 ; $0F:8862: A5 EB
TAX                     ; $0F:8864: AA
INX                     ; $0F:8865: E8
INX                     ; $0F:8866: E8
BRA CODE_0F88BF         ; $0F:8867: 80 56
LDY DATA_0F8851+2       ; $0F:8869: AC 53 88
LDA $EB                 ; $0F:886C: A5 EB
CLC                     ; $0F:886E: 18
ADC #$0012              ; $0F:886F: 69 12 00
TAX                     ; $0F:8872: AA
BRA CODE_0F88BF         ; $0F:8873: 80 4A
LDY DATA_0F8851+4       ; $0F:8875: AC 55 88
LDA $EB                 ; $0F:8878: A5 EB
CLC                     ; $0F:887A: 18
ADC #$0001              ; $0F:887B: 69 01 00
TAX                     ; $0F:887E: AA
BRA CODE_0F88BF         ; $0F:887F: 80 3E
LDY DATA_0F8851+6       ; $0F:8881: AC 57 88
LDA $EB                 ; $0F:8884: A5 EB
CLC                     ; $0F:8886: 18
ADC #$0011              ; $0F:8887: 69 11 00
TAX                     ; $0F:888A: AA
BRA CODE_0F88BF         ; $0F:888B: 80 32
LDY DATA_0F8851+8       ; $0F:888D: AC 59 88
LDA $EB                 ; $0F:8890: A5 EB
CLC                     ; $0F:8892: 18
ADC #$0020              ; $0F:8893: 69 20 00
TAX                     ; $0F:8896: AA
BRA CODE_0F88BF         ; $0F:8897: 80 26
LDY DATA_0F8851+10      ; $0F:8899: AC 5B 88
LDX $EB                 ; $0F:889C: A6 EB
INX                     ; $0F:889E: E8
BRA CODE_0F88BF         ; $0F:889F: 80 1E
LDY DATA_0F8851+12      ; $0F:88A1: AC 5D 88
LDA $EB                 ; $0F:88A4: A5 EB
CLC                     ; $0F:88A6: 18
ADC #$0012              ; $0F:88A7: 69 12 00
TAX                     ; $0F:88AA: AA
BRA CODE_0F88BF         ; $0F:88AB: 80 12
INC $EB                 ; $0F:88AD: E6 EB
LDA $EB                 ; $0F:88AF: A5 EB
CLC                     ; $0F:88B1: 18
ADC #$0010              ; $0F:88B2: 69 10 00
TAX                     ; $0F:88B5: AA
BRA CODE_0F88BC         ; $0F:88B6: 80 04
INC $EB                 ; $0F:88B8: E6 EB
LDX $EB                 ; $0F:88BA: A6 EB

CODE_0F88BC:
LDY #$0000              ; $0F:88BC: A0 00 00

CODE_0F88BF:
STX $E2                 ; $0F:88BF: 86 E2
SEP #$20                ; $0F:88C1: E2 20

CODE_0F88C3:
LDA DATA_0FB2EF,y       ; $0F:88C3: B9 EF B2
CMP #$FF                ; $0F:88C6: C9 FF
BEQ CODE_0F893B         ; $0F:88C8: F0 71
CMP #$FE                ; $0F:88CA: C9 FE
BEQ CODE_0F8916         ; $0F:88CC: F0 48
JSR CODE_0F88E9         ; $0F:88CE: 20 E9 88
STA $7ED000,x           ; $0F:88D1: 9F 00 D0 7E
INY                     ; $0F:88D5: C8
INX                     ; $0F:88D6: E8
REP #$20                ; $0F:88D7: C2 20
TXA                     ; $0F:88D9: 8A
AND #$000F              ; $0F:88DA: 29 0F 00
BNE CODE_0F88E5         ; $0F:88DD: D0 06
TXA                     ; $0F:88DF: 8A
CLC                     ; $0F:88E0: 18
ADC #$00F0              ; $0F:88E1: 69 F0 00
TAX                     ; $0F:88E4: AA

CODE_0F88E5:
SEP #$20                ; $0F:88E5: E2 20
BRA CODE_0F88C3         ; $0F:88E7: 80 DA

CODE_0F88E9:
STA $E4                 ; $0F:88E9: 85 E4
CMP #$12                ; $0F:88EB: C9 12
BNE CODE_0F88F2         ; $0F:88ED: D0 03
JMP CODE_0F8940         ; $0F:88EF: 4C 40 89

CODE_0F88F2:
CMP #$03                ; $0F:88F2: C9 03
BNE CODE_0F88F9         ; $0F:88F4: D0 03
JMP CODE_0F896D         ; $0F:88F6: 4C 6D 89

CODE_0F88F9:
CMP #$04                ; $0F:88F9: C9 04
BNE CODE_0F8900         ; $0F:88FB: D0 03
JMP CODE_0F897A         ; $0F:88FD: 4C 7A 89

CODE_0F8900:
CMP #$05                ; $0F:8900: C9 05
BNE CODE_0F8907         ; $0F:8902: D0 03
JMP CODE_0F898F         ; $0F:8904: 4C 8F 89

CODE_0F8907:
CMP #$18                ; $0F:8907: C9 18
BNE CODE_0F890E         ; $0F:8909: D0 03
JMP CODE_0F89A4         ; $0F:890B: 4C A4 89

CODE_0F890E:
CMP #$07                ; $0F:890E: C9 07
BNE CODE_0F8915         ; $0F:8910: D0 03
JMP CODE_0F89C1         ; $0F:8912: 4C C1 89

CODE_0F8915:
RTS                     ; $0F:8915: 60

CODE_0F8916:
INY                     ; $0F:8916: C8
REP #$20                ; $0F:8917: C2 20
LDA $E2                 ; $0F:8919: A5 E2
CLC                     ; $0F:891B: 18
ADC #$0010              ; $0F:891C: 69 10 00
TAX                     ; $0F:891F: AA
AND #$00F0              ; $0F:8920: 29 F0 00
BEQ CODE_0F893B         ; $0F:8923: F0 16
DEX                     ; $0F:8925: CA
TXA                     ; $0F:8926: 8A
AND #$000F              ; $0F:8927: 29 0F 00
CMP #$000F              ; $0F:892A: C9 0F 00
BNE CODE_0F8935         ; $0F:892D: D0 06
TXA                     ; $0F:892F: 8A
SEC                     ; $0F:8930: 38
SBC #$00F0              ; $0F:8931: E9 F0 00
TAX                     ; $0F:8934: AA

CODE_0F8935:
STX $E2                 ; $0F:8935: 86 E2
SEP #$20                ; $0F:8937: E2 20
BRA CODE_0F88C3         ; $0F:8939: 80 88

CODE_0F893B:
REP #$20                ; $0F:893B: C2 20
JMP CODE_0F8084         ; $0F:893D: 4C 84 80

CODE_0F8940:
LDA $7ED000,x           ; $0F:8940: BF 00 D0 7E
BEQ CODE_0F896A         ; $0F:8944: F0 24
CMP #$18                ; $0F:8946: C9 18
BNE CODE_0F894E         ; $0F:8948: D0 04
LDA #$02                ; $0F:894A: A9 02
BRA CODE_0F896C         ; $0F:894C: 80 1E

CODE_0F894E:
CMP #$06                ; $0F:894E: C9 06
BNE CODE_0F8956         ; $0F:8950: D0 04
LDA #$11                ; $0F:8952: A9 11
BRA CODE_0F896C         ; $0F:8954: 80 16

CODE_0F8956:
CMP #$16                ; $0F:8956: C9 16
BNE CODE_0F895E         ; $0F:8958: D0 04
LDA #$01                ; $0F:895A: A9 01
BRA CODE_0F896C         ; $0F:895C: 80 0E

CODE_0F895E:
CMP #$05                ; $0F:895E: C9 05
BNE CODE_0F8966         ; $0F:8960: D0 04
LDA #$62                ; $0F:8962: A9 62
BRA CODE_0F896C         ; $0F:8964: 80 06

CODE_0F8966:
LDA #$10                ; $0F:8966: A9 10
BRA CODE_0F896C         ; $0F:8968: 80 02

CODE_0F896A:
LDA $E4                 ; $0F:896A: A5 E4

CODE_0F896C:
RTS                     ; $0F:896C: 60

CODE_0F896D:
LDA $7ED000,x           ; $0F:896D: BF 00 D0 7E
BEQ CODE_0F8977         ; $0F:8971: F0 04
LDA #$36                ; $0F:8973: A9 36
BRA CODE_0F8979         ; $0F:8975: 80 02

CODE_0F8977:
LDA $E4                 ; $0F:8977: A5 E4

CODE_0F8979:
RTS                     ; $0F:8979: 60

CODE_0F897A:
LDA $7ED000,x           ; $0F:897A: BF 00 D0 7E
BEQ CODE_0F898C         ; $0F:897E: F0 0C
CMP #$12                ; $0F:8980: C9 12
BNE CODE_0F8988         ; $0F:8982: D0 04
LDA #$14                ; $0F:8984: A9 14
BRA CODE_0F898E         ; $0F:8986: 80 06

CODE_0F8988:
LDA #$37                ; $0F:8988: A9 37
BRA CODE_0F898E         ; $0F:898A: 80 02

CODE_0F898C:
LDA $E4                 ; $0F:898C: A5 E4

CODE_0F898E:
RTS                     ; $0F:898E: 60

CODE_0F898F:
LDA $7ED000,x           ; $0F:898F: BF 00 D0 7E
BEQ CODE_0F89A1         ; $0F:8993: F0 0C
CMP #$13                ; $0F:8995: C9 13
BNE CODE_0F899D         ; $0F:8997: D0 04
LDA #$15                ; $0F:8999: A9 15
BRA CODE_0F89A3         ; $0F:899B: 80 06

CODE_0F899D:
LDA #$38                ; $0F:899D: A9 38
BRA CODE_0F89A3         ; $0F:899F: 80 02

CODE_0F89A1:
LDA $E4                 ; $0F:89A1: A5 E4

CODE_0F89A3:
RTS                     ; $0F:89A3: 60

CODE_0F89A4:
LDA $7ED000,x           ; $0F:89A4: BF 00 D0 7E
BEQ CODE_0F89BE         ; $0F:89A8: F0 14
CMP #$16                ; $0F:89AA: C9 16
BNE CODE_0F89B2         ; $0F:89AC: D0 04
LDA #$1E                ; $0F:89AE: A9 1E
BRA CODE_0F89C0         ; $0F:89B0: 80 0E

CODE_0F89B2:
CMP #$13                ; $0F:89B2: C9 13
BNE CODE_0F89BA         ; $0F:89B4: D0 04
LDA #$1E                ; $0F:89B6: A9 1E
BRA CODE_0F89C0         ; $0F:89B8: 80 06

CODE_0F89BA:
LDA #$1D                ; $0F:89BA: A9 1D
BRA CODE_0F89C0         ; $0F:89BC: 80 02

CODE_0F89BE:
LDA $E4                 ; $0F:89BE: A5 E4

CODE_0F89C0:
RTS                     ; $0F:89C0: 60

CODE_0F89C1:
LDA $7ED000,x           ; $0F:89C1: BF 00 D0 7E
BEQ CODE_0F89E3         ; $0F:89C5: F0 1C
CMP #$16                ; $0F:89C7: C9 16
BNE CODE_0F89CF         ; $0F:89C9: D0 04
LDA #$0E                ; $0F:89CB: A9 0E
BRA CODE_0F89E5         ; $0F:89CD: 80 16

CODE_0F89CF:
CMP #$04                ; $0F:89CF: C9 04
BNE CODE_0F89D7         ; $0F:89D1: D0 04
LDA #$70                ; $0F:89D3: A9 70
BRA CODE_0F89E5         ; $0F:89D5: 80 0E

CODE_0F89D7:
CMP #$0B                ; $0F:89D7: C9 0B
BNE CODE_0F89DF         ; $0F:89D9: D0 04
LDA #$90                ; $0F:89DB: A9 90
BRA CODE_0F89E5         ; $0F:89DD: 80 06

CODE_0F89DF:
LDA #$49                ; $0F:89DF: A9 49
BRA CODE_0F89E5         ; $0F:89E1: 80 02

CODE_0F89E3:
LDA $E4                 ; $0F:89E3: A5 E4

CODE_0F89E5:
RTS                     ; $0F:89E5: 60

DATA_0F89E6:
db $00,$00,$90,$91,$92,$93,$00,$00
db $94,$95,$96,$97,$00,$00,$98,$99
db $9A,$9B,$00,$9C,$9D,$9E,$9F,$A0
db $00,$A1,$A2,$A3,$A4,$A5,$00,$A6
db $A7,$A8,$A9,$AA
SEP #$20                ; $0F:8A0A: E2 20
LDX $EB                 ; $0F:8A0C: A6 EB
LDY #$0000              ; $0F:8A0E: A0 00 00

CODE_0F8A11:
PHX                     ; $0F:8A11: DA
LDA DATA_0F89E6,y       ; $0F:8A12: B9 E6 89
STA $7ED020,x           ; $0F:8A15: 9F 20 D0 7E
JSR CODE_0F8A66         ; $0F:8A19: 20 66 8A
LDA DATA_0F89E6+1,y     ; $0F:8A1C: B9 E7 89
STA $7ED020,x           ; $0F:8A1F: 9F 20 D0 7E
JSR CODE_0F8A66         ; $0F:8A23: 20 66 8A
LDA DATA_0F89E6+2,y     ; $0F:8A26: B9 E8 89
STA $7ED020,x           ; $0F:8A29: 9F 20 D0 7E
JSR CODE_0F8A66         ; $0F:8A2D: 20 66 8A
LDA DATA_0F89E6+3,y     ; $0F:8A30: B9 E9 89
STA $7ED020,x           ; $0F:8A33: 9F 20 D0 7E
JSR CODE_0F8A66         ; $0F:8A37: 20 66 8A
LDA DATA_0F89E6+4,y     ; $0F:8A3A: B9 EA 89
STA $7ED020,x           ; $0F:8A3D: 9F 20 D0 7E
JSR CODE_0F8A66         ; $0F:8A41: 20 66 8A
LDA DATA_0F89E6+5,y     ; $0F:8A44: B9 EB 89
STA $7ED020,x           ; $0F:8A47: 9F 20 D0 7E
PLX                     ; $0F:8A4B: FA
REP #$20                ; $0F:8A4C: C2 20
TXA                     ; $0F:8A4E: 8A
CLC                     ; $0F:8A4F: 18
ADC #$0010              ; $0F:8A50: 69 10 00
TAX                     ; $0F:8A53: AA
SEP #$20                ; $0F:8A54: E2 20
INY                     ; $0F:8A56: C8
INY                     ; $0F:8A57: C8
INY                     ; $0F:8A58: C8
INY                     ; $0F:8A59: C8
INY                     ; $0F:8A5A: C8
INY                     ; $0F:8A5B: C8
CPY #$0024              ; $0F:8A5C: C0 24 00
BNE CODE_0F8A11         ; $0F:8A5F: D0 B0
REP #$20                ; $0F:8A61: C2 20
JMP CODE_0F8084         ; $0F:8A63: 4C 84 80

CODE_0F8A66:
REP #$20                ; $0F:8A66: C2 20
INX                     ; $0F:8A68: E8
TXA                     ; $0F:8A69: 8A
AND #$000F              ; $0F:8A6A: 29 0F 00
BNE CODE_0F8A75         ; $0F:8A6D: D0 06
TXA                     ; $0F:8A6F: 8A
CLC                     ; $0F:8A70: 18
ADC #$00F0              ; $0F:8A71: 69 F0 00
TAX                     ; $0F:8A74: AA

CODE_0F8A75:
SEP #$20                ; $0F:8A75: E2 20
RTS                     ; $0F:8A77: 60
LDX $EB                 ; $0F:8A78: A6 EB
SEP #$20                ; $0F:8A7A: E2 20

CODE_0F8A7C:
LDA #$09                ; $0F:8A7C: A9 09
STA $7ED020,x           ; $0F:8A7E: 9F 20 D0 7E
LDA #$0B                ; $0F:8A82: A9 0B
STA $7ED021,x           ; $0F:8A84: 9F 21 D0 7E
INX                     ; $0F:8A88: E8
INX                     ; $0F:8A89: E8
DEC $F1                 ; $0F:8A8A: C6 F1
LDA $F1                 ; $0F:8A8C: A5 F1
BPL CODE_0F8A7C         ; $0F:8A8E: 10 EC
REP #$20                ; $0F:8A90: C2 20
JMP CODE_0F8084         ; $0F:8A92: 4C 84 80
LDX $EB                 ; $0F:8A95: A6 EB
SEP #$20                ; $0F:8A97: E2 20

CODE_0F8A99:
LDA $7ED020,x           ; $0F:8A99: BF 20 D0 7E
CMP #$09                ; $0F:8A9D: C9 09
BNE CODE_0F8AA5         ; $0F:8A9F: D0 04
LDA #$0A                ; $0F:8AA1: A9 0A
BRA CODE_0F8AA7         ; $0F:8AA3: 80 02

CODE_0F8AA5:
LDA #$04                ; $0F:8AA5: A9 04

CODE_0F8AA7:
STA $7ED020,x           ; $0F:8AA7: 9F 20 D0 7E
LDA #$01                ; $0F:8AAB: A9 01
STA $7ED030,x           ; $0F:8AAD: 9F 30 D0 7E
REP #$20                ; $0F:8AB1: C2 20
TXA                     ; $0F:8AB3: 8A
CLC                     ; $0F:8AB4: 18
ADC #$0020              ; $0F:8AB5: 69 20 00
TAX                     ; $0F:8AB8: AA
SEP #$20                ; $0F:8AB9: E2 20
DEC $F1                 ; $0F:8ABB: C6 F1
LDA $F1                 ; $0F:8ABD: A5 F1
BPL CODE_0F8A99         ; $0F:8ABF: 10 D8
REP #$20                ; $0F:8AC1: C2 20
JMP CODE_0F8084         ; $0F:8AC3: 4C 84 80
LDX $EB                 ; $0F:8AC6: A6 EB
SEP #$20                ; $0F:8AC8: E2 20

CODE_0F8ACA:
LDA $7ED021,x           ; $0F:8ACA: BF 21 D0 7E
CMP #$0B                ; $0F:8ACE: C9 0B
BNE CODE_0F8AD6         ; $0F:8AD0: D0 04
LDA #$0A                ; $0F:8AD2: A9 0A
BRA CODE_0F8AD8         ; $0F:8AD4: 80 02

CODE_0F8AD6:
LDA #$04                ; $0F:8AD6: A9 04

CODE_0F8AD8:
STA $7ED021,x           ; $0F:8AD8: 9F 21 D0 7E
LDA #$01                ; $0F:8ADC: A9 01
STA $7ED031,x           ; $0F:8ADE: 9F 31 D0 7E
REP #$20                ; $0F:8AE2: C2 20
TXA                     ; $0F:8AE4: 8A
CLC                     ; $0F:8AE5: 18
ADC #$0020              ; $0F:8AE6: 69 20 00
TAX                     ; $0F:8AE9: AA
SEP #$20                ; $0F:8AEA: E2 20
DEC $F1                 ; $0F:8AEC: C6 F1
LDA $F1                 ; $0F:8AEE: A5 F1
BPL CODE_0F8ACA         ; $0F:8AF0: 10 D8
REP #$20                ; $0F:8AF2: C2 20
JMP CODE_0F8084         ; $0F:8AF4: 4C 84 80

DATA_0F8AF7:
db $7A,$7B,$61,$62,$8C,$8D,$90,$91
db $92
LDX $EB                 ; $0F:8B00: A6 EB
LDA #$0006              ; $0F:8B02: A9 06 00
STA $F1                 ; $0F:8B05: 85 F1
SEP #$20                ; $0F:8B07: E2 20
LDA DATA_0F8AF7         ; $0F:8B09: AD F7 8A
STA $7ED020,x           ; $0F:8B0C: 9F 20 D0 7E
LDA DATA_0F8AF7+1       ; $0F:8B10: AD F8 8A
STA $7ED021,x           ; $0F:8B13: 9F 21 D0 7E

CODE_0F8B17:
LDA DATA_0F8AF7+2       ; $0F:8B17: AD F9 8A
STA $7ED030,x           ; $0F:8B1A: 9F 30 D0 7E
LDA DATA_0F8AF7+3       ; $0F:8B1E: AD FA 8A
STA $7ED031,x           ; $0F:8B21: 9F 31 D0 7E
REP #$20                ; $0F:8B25: C2 20
TXA                     ; $0F:8B27: 8A
CLC                     ; $0F:8B28: 18
ADC #$0010              ; $0F:8B29: 69 10 00
TAX                     ; $0F:8B2C: AA
SEP #$20                ; $0F:8B2D: E2 20
DEC $F1                 ; $0F:8B2F: C6 F1
LDA $F1                 ; $0F:8B31: A5 F1
BNE CODE_0F8B17         ; $0F:8B33: D0 E2
LDA DATA_0F8AF7+4       ; $0F:8B35: AD FB 8A
STA $7ED030,x           ; $0F:8B38: 9F 30 D0 7E
LDA DATA_0F8AF7+5       ; $0F:8B3C: AD FC 8A
STA $7ED031,x           ; $0F:8B3F: 9F 31 D0 7E
LDA DATA_0F8AF7+6       ; $0F:8B43: AD FD 8A
STA $7ED040,x           ; $0F:8B46: 9F 40 D0 7E
LDA DATA_0F8AF7+7       ; $0F:8B4A: AD FE 8A
STA $7ED041,x           ; $0F:8B4D: 9F 41 D0 7E
LDA DATA_0F8AF7+8       ; $0F:8B51: AD FF 8A
STA $7ED042,x           ; $0F:8B54: 9F 42 D0 7E
REP #$20                ; $0F:8B58: C2 20
JMP CODE_0F8084         ; $0F:8B5A: 4C 84 80

DATA_0F8B5D:
db $70,$71,$72,$73,$74,$75,$76,$77
db $78,$79,$7A,$7B,$00,$7C,$7D,$00
LDX $EB                 ; $0F:8B6D: A6 EB
INX                     ; $0F:8B6F: E8
SEP #$20                ; $0F:8B70: E2 20
STZ $E5                 ; $0F:8B72: 64 E5
LDY #$0000              ; $0F:8B74: A0 00 00

CODE_0F8B77:
LDA DATA_0F8B5D,y       ; $0F:8B77: B9 5D 8B
STA $7ED000,x           ; $0F:8B7A: 9F 00 D0 7E
LDA DATA_0F8B5D+1,y     ; $0F:8B7E: B9 5E 8B
STA $7ED001,x           ; $0F:8B81: 9F 01 D0 7E
LDA DATA_0F8B5D+2,y     ; $0F:8B85: B9 5F 8B
STA $7ED002,x           ; $0F:8B88: 9F 02 D0 7E
LDA DATA_0F8B5D+3,y     ; $0F:8B8C: B9 60 8B
STA $7ED003,x           ; $0F:8B8F: 9F 03 D0 7E
INY                     ; $0F:8B93: C8
INY                     ; $0F:8B94: C8
INY                     ; $0F:8B95: C8
INY                     ; $0F:8B96: C8
INX                     ; $0F:8B97: E8
INX                     ; $0F:8B98: E8
INX                     ; $0F:8B99: E8
INX                     ; $0F:8B9A: E8
REP #$20                ; $0F:8B9B: C2 20
TXA                     ; $0F:8B9D: 8A
CLC                     ; $0F:8B9E: 18
ADC #$000C              ; $0F:8B9F: 69 0C 00
TAX                     ; $0F:8BA2: AA
SEP #$20                ; $0F:8BA3: E2 20
INC $E5                 ; $0F:8BA5: E6 E5
LDA $E5                 ; $0F:8BA7: A5 E5
CMP #$04                ; $0F:8BA9: C9 04
BNE CODE_0F8B77         ; $0F:8BAB: D0 CA
REP #$20                ; $0F:8BAD: C2 20
JMP CODE_0F8084         ; $0F:8BAF: 4C 84 80

DATA_0F8BB2:
db $2F,$30,$31,$32,$35,$36,$3A,$3B
SEP #$20                ; $0F:8BBA: E2 20
LDY #$0000              ; $0F:8BBC: A0 00 00
LDX $EB                 ; $0F:8BBF: A6 EB

CODE_0F8BC1:
LDA DATA_0F8BB2,y       ; $0F:8BC1: B9 B2 8B
STA $7ED020,x           ; $0F:8BC4: 9F 20 D0 7E
LDA DATA_0F8BB2+1,y     ; $0F:8BC8: B9 B3 8B
STA $7ED021,x           ; $0F:8BCB: 9F 21 D0 7E
REP #$20                ; $0F:8BCF: C2 20
TXA                     ; $0F:8BD1: 8A
CLC                     ; $0F:8BD2: 18
ADC #$0010              ; $0F:8BD3: 69 10 00
TAX                     ; $0F:8BD6: AA
SEP #$20                ; $0F:8BD7: E2 20
INY                     ; $0F:8BD9: C8
INY                     ; $0F:8BDA: C8
CPY #$0008              ; $0F:8BDB: C0 08 00
BNE CODE_0F8BC1         ; $0F:8BDE: D0 E1
REP #$20                ; $0F:8BE0: C2 20
JMP CODE_0F8084         ; $0F:8BE2: 4C 84 80

DATA_0F8BE5:
db $01,$1F

DATA_0F8BE7:
db $02,$20

CODE_0F8BE9:
SEP #$20                ; $0F:8BE9: E2 20
LDX $EB                 ; $0F:8BEB: A6 EB
LDY $EF                 ; $0F:8BED: A4 EF

CODE_0F8BEF:
LDA DATA_0F8BE5,y       ; $0F:8BEF: B9 E5 8B
STA $7ED020,x           ; $0F:8BF2: 9F 20 D0 7E
LDA DATA_0F8BE7,y       ; $0F:8BF6: B9 E7 8B
STA $7ED021,x           ; $0F:8BF9: 9F 21 D0 7E
REP #$20                ; $0F:8BFD: C2 20
TXA                     ; $0F:8BFF: 8A
CLC                     ; $0F:8C00: 18
ADC #$0010              ; $0F:8C01: 69 10 00
TAX                     ; $0F:8C04: AA
SEP #$20                ; $0F:8C05: E2 20
DEC $F1                 ; $0F:8C07: C6 F1
LDA $F1                 ; $0F:8C09: A5 F1
BPL CODE_0F8BEF         ; $0F:8C0B: 10 E2
REP #$20                ; $0F:8C0D: C2 20
JMP CODE_0F8084         ; $0F:8C0F: 4C 84 80

DATA_0F8C12:
db $08,$09,$05,$06,$07,$05,$03,$04
db $05,$0F,$10,$11,$16,$17,$12,$1D
db $09,$1E,$06,$07,$05
SEP #$20                ; $0F:8C27: E2 20
LDX $EB                 ; $0F:8C29: A6 EB

CODE_0F8C2B:
TXA                     ; $0F:8C2B: 8A
AND #$F0                ; $0F:8C2C: 29 F0
BEQ CODE_0F8C4F         ; $0F:8C2E: F0 1F
LDA $7ED020,x           ; $0F:8C30: BF 20 D0 7E
CMP #$0C                ; $0F:8C34: C9 0C
BEQ CODE_0F8C7B         ; $0F:8C36: F0 43
LDA DATA_0F8C12         ; $0F:8C38: AD 12 8C
STA $7ED020,x           ; $0F:8C3B: 9F 20 D0 7E
LDA DATA_0F8C12+1       ; $0F:8C3F: AD 13 8C
STA $7ED021,x           ; $0F:8C42: 9F 21 D0 7E
LDA DATA_0F8C12+2       ; $0F:8C46: AD 14 8C
STA $7ED022,x           ; $0F:8C49: 9F 22 D0 7E
BRA CODE_0F8C64         ; $0F:8C4D: 80 15

CODE_0F8C4F:
LDA DATA_0F8C12+6       ; $0F:8C4F: AD 18 8C
STA $7ED020,x           ; $0F:8C52: 9F 20 D0 7E
LDA DATA_0F8C12+7       ; $0F:8C56: AD 19 8C
STA $7ED021,x           ; $0F:8C59: 9F 21 D0 7E
LDA DATA_0F8C12+8       ; $0F:8C5D: AD 1A 8C
STA $7ED022,x           ; $0F:8C60: 9F 22 D0 7E

CODE_0F8C64:
LDA DATA_0F8C12+3       ; $0F:8C64: AD 15 8C
STA $7ED030,x           ; $0F:8C67: 9F 30 D0 7E
LDA DATA_0F8C12+4       ; $0F:8C6B: AD 16 8C
STA $7ED031,x           ; $0F:8C6E: 9F 31 D0 7E
LDA DATA_0F8C12+5       ; $0F:8C72: AD 17 8C
STA $7ED032,x           ; $0F:8C75: 9F 32 D0 7E
BRA CODE_0F8CDB         ; $0F:8C79: 80 60

CODE_0F8C7B:
LDA DATA_0F8C12+9       ; $0F:8C7B: AD 1B 8C
STA $7ED020,x           ; $0F:8C7E: 9F 20 D0 7E
LDA DATA_0F8C12+10      ; $0F:8C82: AD 1C 8C
STA $7ED021,x           ; $0F:8C85: 9F 21 D0 7E
LDA DATA_0F8C12+11      ; $0F:8C89: AD 1D 8C
STA $7ED022,x           ; $0F:8C8C: 9F 22 D0 7E
LDA DATA_0F8C12+12      ; $0F:8C90: AD 1E 8C
STA $7ED030,x           ; $0F:8C93: 9F 30 D0 7E
LDA DATA_0F8C12+13      ; $0F:8C97: AD 1F 8C
STA $7ED031,x           ; $0F:8C9A: 9F 31 D0 7E
LDA DATA_0F8C12+14      ; $0F:8C9E: AD 20 8C
STA $7ED032,x           ; $0F:8CA1: 9F 32 D0 7E
LDA DATA_0F8C12+15      ; $0F:8CA5: AD 21 8C
STA $7ED040,x           ; $0F:8CA8: 9F 40 D0 7E
LDA DATA_0F8C12+16      ; $0F:8CAC: AD 22 8C
STA $7ED041,x           ; $0F:8CAF: 9F 41 D0 7E
LDA DATA_0F8C12+17      ; $0F:8CB3: AD 23 8C
STA $7ED042,x           ; $0F:8CB6: 9F 42 D0 7E
LDA DATA_0F8C12+18      ; $0F:8CBA: AD 24 8C
STA $7ED050,x           ; $0F:8CBD: 9F 50 D0 7E
LDA DATA_0F8C12+19      ; $0F:8CC1: AD 25 8C
STA $7ED051,x           ; $0F:8CC4: 9F 51 D0 7E
LDA DATA_0F8C12+20      ; $0F:8CC8: AD 26 8C
STA $7ED052,x           ; $0F:8CCB: 9F 52 D0 7E
REP #$20                ; $0F:8CCF: C2 20
TXA                     ; $0F:8CD1: 8A
CLC                     ; $0F:8CD2: 18
ADC #$0020              ; $0F:8CD3: 69 20 00
TAX                     ; $0F:8CD6: AA
SEP #$20                ; $0F:8CD7: E2 20
DEC $F1                 ; $0F:8CD9: C6 F1

CODE_0F8CDB:
REP #$20                ; $0F:8CDB: C2 20
TXA                     ; $0F:8CDD: 8A
CLC                     ; $0F:8CDE: 18
ADC #$0020              ; $0F:8CDF: 69 20 00
TAX                     ; $0F:8CE2: AA
SEP #$20                ; $0F:8CE3: E2 20
DEC $F1                 ; $0F:8CE5: C6 F1
LDA $F1                 ; $0F:8CE7: A5 F1
BMI CODE_0F8CEE         ; $0F:8CE9: 30 03
JMP CODE_0F8C2B         ; $0F:8CEB: 4C 2B 8C

CODE_0F8CEE:
REP #$20                ; $0F:8CEE: C2 20
JMP CODE_0F8084         ; $0F:8CF0: 4C 84 80

DATA_0F8CF3:
db $0C,$18,$19,$0A,$0B,$0D,$0E,$13
db $14,$1A,$1B
SEP #$20                ; $0F:8CFE: E2 20
LDX $EB                 ; $0F:8D00: A6 EB

CODE_0F8D02:
LDA $7ED020,x           ; $0F:8D02: BF 20 D0 7E
CMP #$1F                ; $0F:8D06: C9 1F
BNE CODE_0F8D47         ; $0F:8D08: D0 3D
LDA DATA_0F8CF3+3       ; $0F:8D0A: AD F6 8C
STA $7ED010,x           ; $0F:8D0D: 9F 10 D0 7E
LDA DATA_0F8CF3+4       ; $0F:8D11: AD F7 8C
STA $7ED011,x           ; $0F:8D14: 9F 11 D0 7E
LDA DATA_0F8CF3+5       ; $0F:8D18: AD F8 8C
STA $7ED020,x           ; $0F:8D1B: 9F 20 D0 7E
LDA DATA_0F8CF3+6       ; $0F:8D1F: AD F9 8C
STA $7ED021,x           ; $0F:8D22: 9F 21 D0 7E
LDA DATA_0F8CF3+7       ; $0F:8D26: AD FA 8C
STA $7ED030,x           ; $0F:8D29: 9F 30 D0 7E
LDA DATA_0F8CF3+8       ; $0F:8D2D: AD FB 8C
STA $7ED031,x           ; $0F:8D30: 9F 31 D0 7E
LDA DATA_0F8CF3+9       ; $0F:8D34: AD FC 8C
STA $7ED040,x           ; $0F:8D37: 9F 40 D0 7E
LDA DATA_0F8CF3+10      ; $0F:8D3B: AD FD 8C
STA $7ED041,x           ; $0F:8D3E: 9F 41 D0 7E
INX                     ; $0F:8D42: E8
DEC $F1                 ; $0F:8D43: C6 F1
BRA CODE_0F8D5C         ; $0F:8D45: 80 15

CODE_0F8D47:
LDA DATA_0F8CF3         ; $0F:8D47: AD F3 8C
STA $7ED020,x           ; $0F:8D4A: 9F 20 D0 7E
LDA DATA_0F8CF3+1       ; $0F:8D4E: AD F4 8C
STA $7ED030,x           ; $0F:8D51: 9F 30 D0 7E
LDA DATA_0F8CF3+2       ; $0F:8D55: AD F5 8C
STA $7ED040,x           ; $0F:8D58: 9F 40 D0 7E

CODE_0F8D5C:
INX                     ; $0F:8D5C: E8
DEC $F1                 ; $0F:8D5D: C6 F1
LDA $F1                 ; $0F:8D5F: A5 F1
BPL CODE_0F8D02         ; $0F:8D61: 10 9F
REP #$20                ; $0F:8D63: C2 20
JMP CODE_0F8084         ; $0F:8D65: 4C 84 80

DATA_0F8D68:
db $33,$34,$0D,$37,$13,$3C,$1A,$1B
db $33,$34,$38,$39,$3D,$3E,$40,$1B
LDX $EB                 ; $0F:8D78: A6 EB
SEP #$20                ; $0F:8D7A: E2 20
LDA $7ED020,x           ; $0F:8D7C: BF 20 D0 7E
CMP #$0C                ; $0F:8D80: C9 0C
BEQ CODE_0F8DBE         ; $0F:8D82: F0 3A
LDA DATA_0F8D68+8       ; $0F:8D84: AD 70 8D
STA $7ED010,x           ; $0F:8D87: 9F 10 D0 7E
LDA DATA_0F8D68+9       ; $0F:8D8B: AD 71 8D
STA $7ED011,x           ; $0F:8D8E: 9F 11 D0 7E
LDA DATA_0F8D68+10      ; $0F:8D92: AD 72 8D
STA $7ED020,x           ; $0F:8D95: 9F 20 D0 7E
LDA DATA_0F8D68+11      ; $0F:8D99: AD 73 8D
STA $7ED021,x           ; $0F:8D9C: 9F 21 D0 7E
LDA DATA_0F8D68+12      ; $0F:8DA0: AD 74 8D
STA $7ED030,x           ; $0F:8DA3: 9F 30 D0 7E
LDA DATA_0F8D68+13      ; $0F:8DA7: AD 75 8D
STA $7ED031,x           ; $0F:8DAA: 9F 31 D0 7E
LDA DATA_0F8D68+14      ; $0F:8DAE: AD 76 8D
STA $7ED040,x           ; $0F:8DB1: 9F 40 D0 7E
LDA DATA_0F8D68+15      ; $0F:8DB5: AD 77 8D
STA $7ED041,x           ; $0F:8DB8: 9F 41 D0 7E
BRA CODE_0F8DF6         ; $0F:8DBC: 80 38

CODE_0F8DBE:
LDA DATA_0F8D68         ; $0F:8DBE: AD 68 8D
STA $7ED010,x           ; $0F:8DC1: 9F 10 D0 7E
LDA DATA_0F8D68+1       ; $0F:8DC5: AD 69 8D
STA $7ED011,x           ; $0F:8DC8: 9F 11 D0 7E
LDA DATA_0F8D68+2       ; $0F:8DCC: AD 6A 8D
STA $7ED020,x           ; $0F:8DCF: 9F 20 D0 7E
LDA DATA_0F8D68+3       ; $0F:8DD3: AD 6B 8D
STA $7ED021,x           ; $0F:8DD6: 9F 21 D0 7E
LDA DATA_0F8D68+4       ; $0F:8DDA: AD 6C 8D
STA $7ED030,x           ; $0F:8DDD: 9F 30 D0 7E
LDA DATA_0F8D68+5       ; $0F:8DE1: AD 6D 8D
STA $7ED031,x           ; $0F:8DE4: 9F 31 D0 7E
LDA DATA_0F8D68+6       ; $0F:8DE8: AD 6E 8D
STA $7ED040,x           ; $0F:8DEB: 9F 40 D0 7E
LDA DATA_0F8D68+7       ; $0F:8DEF: AD 6F 8D
STA $7ED041,x           ; $0F:8DF2: 9F 41 D0 7E

CODE_0F8DF6:
REP #$20                ; $0F:8DF6: C2 20
DEC $F1                 ; $0F:8DF8: C6 F1
DEC $F1                 ; $0F:8DFA: C6 F1
DEC $F1                 ; $0F:8DFC: C6 F1
LDA $EB                 ; $0F:8DFE: A5 EB
CLC                     ; $0F:8E00: 18
ADC #$0030              ; $0F:8E01: 69 30 00
STA $EB                 ; $0F:8E04: 85 EB
LDA #$0001              ; $0F:8E06: A9 01 00
STA $EF                 ; $0F:8E09: 85 EF
JMP CODE_0F8BE9         ; $0F:8E0B: 4C E9 8B

DATA_0F8E0E:
db $41,$42,$43,$44,$45,$46,$47,$48
db $49,$4A,$4B,$4C,$4D,$4E,$4F,$50
db $51,$52,$53,$54
SEP #$20                ; $0F:8E22: E2 20
LDX $EB                 ; $0F:8E24: A6 EB
LDY #$0000              ; $0F:8E26: A0 00 00

CODE_0F8E29:
LDA DATA_0F8E0E,y       ; $0F:8E29: B9 0E 8E
STA $7ED020,x           ; $0F:8E2C: 9F 20 D0 7E
LDA DATA_0F8E0E+1,y     ; $0F:8E30: B9 0F 8E
STA $7ED021,x           ; $0F:8E33: 9F 21 D0 7E
LDA DATA_0F8E0E+2,y     ; $0F:8E37: B9 10 8E
STA $7ED022,x           ; $0F:8E3A: 9F 22 D0 7E
LDA DATA_0F8E0E+3,y     ; $0F:8E3E: B9 11 8E
STA $7ED023,x           ; $0F:8E41: 9F 23 D0 7E
REP #$20                ; $0F:8E45: C2 20
TXA                     ; $0F:8E47: 8A
CLC                     ; $0F:8E48: 18
ADC #$0010              ; $0F:8E49: 69 10 00
TAX                     ; $0F:8E4C: AA
SEP #$20                ; $0F:8E4D: E2 20
INY                     ; $0F:8E4F: C8
INY                     ; $0F:8E50: C8
INY                     ; $0F:8E51: C8
INY                     ; $0F:8E52: C8
CPY #$0014              ; $0F:8E53: C0 14 00
BNE CODE_0F8E29         ; $0F:8E56: D0 D1
REP #$20                ; $0F:8E58: C2 20
JMP CODE_0F8084         ; $0F:8E5A: 4C 84 80
LDX $EB                 ; $0F:8E5D: A6 EB
LDA #$1B1A              ; $0F:8E5F: A9 1A 1B
STA $7ED000,x           ; $0F:8E62: 9F 00 D0 7E
JMP CODE_0F8084         ; $0F:8E66: 4C 84 80
INC $EB                 ; $0F:8E69: E6 EB
LDA $EB                 ; $0F:8E6B: A5 EB
CLC                     ; $0F:8E6D: 18
ADC #$0010              ; $0F:8E6E: 69 10 00
TAX                     ; $0F:8E71: AA
SEP #$20                ; $0F:8E72: E2 20
LDA #$67                ; $0F:8E74: A9 67
STA $7ED000,x           ; $0F:8E76: 9F 00 D0 7E
LDA #$69                ; $0F:8E7A: A9 69
STA $7ED001,x           ; $0F:8E7C: 9F 01 D0 7E
LDA #$68                ; $0F:8E80: A9 68
STA $7ED010,x           ; $0F:8E82: 9F 10 D0 7E
LDA #$6A                ; $0F:8E86: A9 6A
STA $7ED011,x           ; $0F:8E88: 9F 11 D0 7E
REP #$20                ; $0F:8E8C: C2 20
JMP CODE_0F8084         ; $0F:8E8E: 4C 84 80

PNTR_0F8E91:
dw DATA_0F8E99
dw DATA_0F8EE1
dw DATA_0F8EED
dw DATA_0F8F1D

DATA_0F8E99:
db $08,$09,$0D,$0E,$08,$23,$0D,$25
db $24,$23,$26,$25,$24,$09,$26,$0E
db $00,$08,$00,$0D,$23,$24,$25,$26
db $0F,$10,$32,$33,$11,$12,$32,$33
db $13,$00,$3C,$3B,$30,$31,$32,$33
db $30,$10,$32,$33,$00,$36,$38,$37
db $0F,$31,$32,$33,$35,$10,$39,$33
db $0F,$10,$32,$33,$35,$12,$32,$33
db $23,$24,$25,$26,$11,$12,$32,$33

DATA_0F8EE1:
db $21,$22,$25,$26,$23,$24,$27,$28
db $00,$00,$26,$00

DATA_0F8EED:
db $06,$05,$07,$02,$0E,$05,$11,$12
db $0E,$05,$07,$08,$06,$05,$07,$08
db $03,$05,$0C,$0D,$0F,$10,$1D,$02
db $03,$05,$1D,$15,$03,$18,$1B,$1B
db $03,$05,$16,$15,$19,$18,$1B,$1B
db $03,$05,$16,$17,$19,$1A,$1B,$1B

DATA_0F8F1D:

CODE_0F8F1D:
LDA $5C                 ; $0F:8F1D: A5 5C
AND #$00FF              ; $0F:8F1F: 29 FF 00
ASL A                   ; $0F:8F22: 0A
TAX                     ; $0F:8F23: AA

; TODO: label: LDA.w #$0000|$0F
LDA #$0F00              ; $0F:8F24: A9 00 0F
STA $D9                 ; $0F:8F27: 85 D9
LDA PNTR_0F8E91,x       ; $0F:8F29: BD 91 8E
STA $D8                 ; $0F:8F2C: 85 D8
LDA $5C                 ; $0F:8F2E: A5 5C
AND #$00FF              ; $0F:8F30: 29 FF 00
CMP #$0002              ; $0F:8F33: C9 02 00
BCS CODE_0F8F41         ; $0F:8F36: B0 09
LDA $EB                 ; $0F:8F38: A5 EB
CLC                     ; $0F:8F3A: 18
ADC #$0010              ; $0F:8F3B: 69 10 00
TAX                     ; $0F:8F3E: AA
BRA CODE_0F8F43         ; $0F:8F3F: 80 02

CODE_0F8F41:
LDX $EB                 ; $0F:8F41: A6 EB

CODE_0F8F43:
LDA $EF                 ; $0F:8F43: A5 EF
SEC                     ; $0F:8F45: 38
SBC #$0010              ; $0F:8F46: E9 10 00
ASL A                   ; $0F:8F49: 0A
ASL A                   ; $0F:8F4A: 0A
TAY                     ; $0F:8F4B: A8
SEP #$20                ; $0F:8F4C: E2 20
LDA [$D8],y             ; $0F:8F4E: B7 D8
STA $7ED020,x           ; $0F:8F50: 9F 20 D0 7E
INY                     ; $0F:8F54: C8
LDA [$D8],y             ; $0F:8F55: B7 D8
STA $7ED021,x           ; $0F:8F57: 9F 21 D0 7E
INY                     ; $0F:8F5B: C8
LDA [$D8],y             ; $0F:8F5C: B7 D8
STA $7ED030,x           ; $0F:8F5E: 9F 30 D0 7E
INY                     ; $0F:8F62: C8
LDA [$D8],y             ; $0F:8F63: B7 D8
STA $7ED031,x           ; $0F:8F65: 9F 31 D0 7E
REP #$20                ; $0F:8F69: C2 20
INX                     ; $0F:8F6B: E8
INX                     ; $0F:8F6C: E8
DEC $F1                 ; $0F:8F6D: C6 F1
LDA $F1                 ; $0F:8F6F: A5 F1
BPL CODE_0F8F43         ; $0F:8F71: 10 D0
RTS                     ; $0F:8F73: 60

CODE_0F8F74:
STA $7ED000,x           ; $0F:8F74: 9F 00 D0 7E
STA $7ED100,x           ; $0F:8F78: 9F 00 D1 7E
STA $7ED200,x           ; $0F:8F7C: 9F 00 D2 7E
STA $7ED300,x           ; $0F:8F80: 9F 00 D3 7E
STA $7ED400,x           ; $0F:8F84: 9F 00 D4 7E
STA $7ED500,x           ; $0F:8F88: 9F 00 D5 7E
STA $7ED600,x           ; $0F:8F8C: 9F 00 D6 7E
STA $7ED700,x           ; $0F:8F90: 9F 00 D7 7E
STA $7ED800,x           ; $0F:8F94: 9F 00 D8 7E
STA $7ED900,x           ; $0F:8F98: 9F 00 D9 7E
STA $7EDA00,x           ; $0F:8F9C: 9F 00 DA 7E
STA $7EDB00,x           ; $0F:8FA0: 9F 00 DB 7E
STA $7EDC00,x           ; $0F:8FA4: 9F 00 DC 7E
STA $7EDD00,x           ; $0F:8FA8: 9F 00 DD 7E
STA $7EDE00,x           ; $0F:8FAC: 9F 00 DE 7E
STA $7EDF00,x           ; $0F:8FB0: 9F 00 DF 7E
RTS                     ; $0F:8FB4: 60

CODE_0F8FB5:
LDA $EF                 ; $0F:8FB5: A5 EF
ASL A                   ; $0F:8FB7: 0A
TAX                     ; $0F:8FB8: AA
LDA PNTR_0F8FC1,x       ; $0F:8FB9: BD C1 8F
STA $00                 ; $0F:8FBC: 85 00
JMP ($0000)             ; $0F:8FBE: 6C 00 00

PNTR_0F8FC1:
dw CODE_0F9152
dw CODE_0F9156
dw CODE_0F917F
dw CODE_0F9196
dw CODE_0F91BA
dw CODE_0F9135
dw CODE_0F90FB
dw CODE_0F90D9
dw CODE_0F90A0
dw CODE_0F9096
dw CODE_0F9033
dw CODE_0F91C3
dw CODE_0F900B

DATA_0F8FDB:
db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F
db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F
db $13,$14,$15,$16,$13,$14,$15,$16
db $13,$14,$15,$16,$13,$14,$15,$16
db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A
db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A

CODE_0F900B:
LDX #$00D0              ; $0F:900B: A2 D0 00
LDY #$0000              ; $0F:900E: A0 00 00
SEP #$20                ; $0F:9011: E2 20

CODE_0F9013:
LDA DATA_0F8FDB,y       ; $0F:9013: B9 DB 8F
JSR CODE_0F8F74         ; $0F:9016: 20 74 8F
INX                     ; $0F:9019: E8
INY                     ; $0F:901A: C8
CPY #$0030              ; $0F:901B: C0 30 00
BNE CODE_0F9013         ; $0F:901E: D0 F3
REP #$20                ; $0F:9020: C2 20
RTS                     ; $0F:9022: 60

DATA_0F9023:
db $01,$02,$03,$07,$01,$02,$03,$07
db $01,$02,$03,$07,$01,$02,$03,$07

CODE_0F9033:
STZ $E4                 ; $0F:9033: 64 E4

CODE_0F9035:
LDA $E4                 ; $0F:9035: A5 E4
AND #$00FF              ; $0F:9037: 29 FF 00
XBA                     ; $0F:903A: EB
CLC                     ; $0F:903B: 18
ADC #$00A0              ; $0F:903C: 69 A0 00
TAX                     ; $0F:903F: AA
LDY #$0000              ; $0F:9040: A0 00 00
SEP #$20                ; $0F:9043: E2 20

CODE_0F9045:
LDA DATA_0F9023,y       ; $0F:9045: B9 23 90
STA $7ED000,x           ; $0F:9048: 9F 00 D0 7E
TXA                     ; $0F:904C: 8A
AND #$01                ; $0F:904D: 29 01
BNE CODE_0F906B         ; $0F:904F: D0 1A
LDA #$0C                ; $0F:9051: A9 0C
STA $7ED010,x           ; $0F:9053: 9F 10 D0 7E
STA $7ED030,x           ; $0F:9057: 9F 30 D0 7E
STA $7ED050,x           ; $0F:905B: 9F 50 D0 7E
LDA #$10                ; $0F:905F: A9 10
STA $7ED020,x           ; $0F:9061: 9F 20 D0 7E
STA $7ED040,x           ; $0F:9065: 9F 40 D0 7E
BRA CODE_0F9083         ; $0F:9069: 80 18

CODE_0F906B:
LDA #$0D                ; $0F:906B: A9 0D
STA $7ED010,x           ; $0F:906D: 9F 10 D0 7E
STA $7ED030,x           ; $0F:9071: 9F 30 D0 7E
STA $7ED050,x           ; $0F:9075: 9F 50 D0 7E
LDA #$11                ; $0F:9079: A9 11
STA $7ED020,x           ; $0F:907B: 9F 20 D0 7E
STA $7ED040,x           ; $0F:907F: 9F 40 D0 7E

CODE_0F9083:
INX                     ; $0F:9083: E8
INY                     ; $0F:9084: C8
TYA                     ; $0F:9085: 98
AND #$0F                ; $0F:9086: 29 0F
BNE CODE_0F9045         ; $0F:9088: D0 BB
REP #$20                ; $0F:908A: C2 20
INC $E4                 ; $0F:908C: E6 E4
LDA $E4                 ; $0F:908E: A5 E4
CMP #$0008              ; $0F:9090: C9 08 00
BNE CODE_0F9035         ; $0F:9093: D0 A0
RTS                     ; $0F:9095: 60

CODE_0F9096:
SEP #$20                ; $0F:9096: E2 20
LDA $F1                 ; $0F:9098: A5 F1
STA $0EDC               ; $0F:909A: 8D DC 0E
REP #$20                ; $0F:909D: C2 20
RTS                     ; $0F:909F: 60

CODE_0F90A0:
LDX #$0080              ; $0F:90A0: A2 80 00

CODE_0F90A3:
LDA #$0403              ; $0F:90A3: A9 03 04
STA $7ED000,x           ; $0F:90A6: 9F 00 D0 7E
LDA #$0909              ; $0F:90AA: A9 09 09
STA $7ED010,x           ; $0F:90AD: 9F 10 D0 7E
STA $7ED020,x           ; $0F:90B1: 9F 20 D0 7E
STA $7ED030,x           ; $0F:90B5: 9F 30 D0 7E
STA $7ED040,x           ; $0F:90B9: 9F 40 D0 7E
STA $7ED050,x           ; $0F:90BD: 9F 50 D0 7E
STA $7ED060,x           ; $0F:90C1: 9F 60 D0 7E
INX                     ; $0F:90C5: E8
INX                     ; $0F:90C6: E8
TXA                     ; $0F:90C7: 8A
AND #$000F              ; $0F:90C8: 29 0F 00
BNE CODE_0F90A3         ; $0F:90CB: D0 D6
TXA                     ; $0F:90CD: 8A
CLC                     ; $0F:90CE: 18
ADC #$00F0              ; $0F:90CF: 69 F0 00
TAX                     ; $0F:90D2: AA
CPX #$1000              ; $0F:90D3: E0 00 10
BCC CODE_0F90A3         ; $0F:90D6: 90 CB
RTS                     ; $0F:90D8: 60

CODE_0F90D9:
LDX #$0000              ; $0F:90D9: A2 00 00
LDA #$0202              ; $0F:90DC: A9 02 02

CODE_0F90DF:
JSR CODE_0F8F74         ; $0F:90DF: 20 74 8F
INX                     ; $0F:90E2: E8
INX                     ; $0F:90E3: E8
CPX #$0020              ; $0F:90E4: E0 20 00
BNE CODE_0F90DF         ; $0F:90E7: D0 F6
LDA #$0101              ; $0F:90E9: A9 01 01

CODE_0F90EC:
JSR CODE_0F8F74         ; $0F:90EC: 20 74 8F
INX                     ; $0F:90EF: E8
INX                     ; $0F:90F0: E8
CPX #$0030              ; $0F:90F1: E0 30 00
BNE CODE_0F90EC         ; $0F:90F4: D0 F6
RTS                     ; $0F:90F6: 60

DATA_0F90F7:
db $03,$05,$1D,$02

CODE_0F90FB:
LDX #$0000              ; $0F:90FB: A2 00 00
SEP #$20                ; $0F:90FE: E2 20

CODE_0F9100:
LDA DATA_0F90F7         ; $0F:9100: AD F7 90
STA $7ED000,x           ; $0F:9103: 9F 00 D0 7E
LDA DATA_0F90F7+1       ; $0F:9107: AD F8 90
STA $7ED001,x           ; $0F:910A: 9F 01 D0 7E
LDA DATA_0F90F7+2       ; $0F:910E: AD F9 90
STA $7ED010,x           ; $0F:9111: 9F 10 D0 7E
LDA DATA_0F90F7+3       ; $0F:9115: AD FA 90
STA $7ED011,x           ; $0F:9118: 9F 11 D0 7E
INX                     ; $0F:911C: E8
INX                     ; $0F:911D: E8
TXA                     ; $0F:911E: 8A
AND #$0F                ; $0F:911F: 29 0F
BNE CODE_0F9100         ; $0F:9121: D0 DD
REP #$20                ; $0F:9123: C2 20
TXA                     ; $0F:9125: 8A
CLC                     ; $0F:9126: 18
ADC #$0010              ; $0F:9127: 69 10 00
TAX                     ; $0F:912A: AA
SEP #$20                ; $0F:912B: E2 20
CPX #$0800              ; $0F:912D: E0 00 08
BNE CODE_0F9100         ; $0F:9130: D0 CE
REP #$20                ; $0F:9132: C2 20
RTS                     ; $0F:9134: 60

CODE_0F9135:
SEP #$20                ; $0F:9135: E2 20
LDA $5C                 ; $0F:9137: A5 5C
CMP #$02                ; $0F:9139: C9 02
BEQ CODE_0F9141         ; $0F:913B: F0 04
LDA #$5F                ; $0F:913D: A9 5F
BRA CODE_0F9143         ; $0F:913F: 80 02

CODE_0F9141:
LDA #$00                ; $0F:9141: A9 00

CODE_0F9143:
LDX #$0000              ; $0F:9143: A2 00 00

CODE_0F9146:
JSR CODE_0F8F74         ; $0F:9146: 20 74 8F
INX                     ; $0F:9149: E8
CPX #$0020              ; $0F:914A: E0 20 00
BNE CODE_0F9146         ; $0F:914D: D0 F7
REP #$20                ; $0F:914F: C2 20
RTS                     ; $0F:9151: 60

CODE_0F9152:
INC $0EC0               ; $0F:9152: EE C0 0E
RTS                     ; $0F:9155: 60

CODE_0F9156:
SEP #$30                ; $0F:9156: E2 30
LDA $075F               ; $0F:9158: AD 5F 07
CMP #$01                ; $0F:915B: C9 01

; If current world is not world 2
;
; branch
BNE CODE_0F9169         ; $0F:915D: D0 0A
LDA $5C                 ; $0F:915F: A5 5C
CMP #$02                ; $0F:9161: C9 02

; If current world is world 2, and map type is underground
; branch
BEQ CODE_0F9169         ; $0F:9163: F0 04
LDA #$01                ; $0F:9165: A9 01
BRA CODE_0F9171         ; $0F:9167: 80 08

CODE_0F9169:
LDA $F1                 ; $0F:9169: A5 F1
CMP #$02                ; $0F:916B: C9 02
BNE CODE_0F9171         ; $0F:916D: D0 02
LDA #$FF                ; $0F:916F: A9 FF

CODE_0F9171:
CMP #$01                ; $0F:9171: C9 01
BNE CODE_0F9178         ; $0F:9173: D0 03
STA $0ED1               ; $0F:9175: 8D D1 0E

CODE_0F9178:
JSL CODE_04825E         ; $0F:9178: 22 5E 82 04
REP #$30                ; $0F:917C: C2 30
RTS                     ; $0F:917E: 60

CODE_0F917F:
SEP #$30                ; $0F:917F: E2 30
LDA #$02                ; $0F:9181: A9 02
JSL CODE_04825E         ; $0F:9183: 22 5E 82 04
REP #$30                ; $0F:9187: C2 30
RTS                     ; $0F:9189: 60

DATA_0F918A:
db $0F,$20,$1B,$37,$58,$C9

DATA_0F9190:
db $1F,$29,$1C,$38,$57,$CA

CODE_0F9196:
LDX #$00D0              ; $0F:9196: A2 D0 00
LDY $F1                 ; $0F:9199: A4 F1
LDA DATA_0F918A,y       ; $0F:919B: B9 8A 91

CODE_0F919E:
JSR CODE_0F8F74         ; $0F:919E: 20 74 8F
INX                     ; $0F:91A1: E8
CPX #$00E0              ; $0F:91A2: E0 E0 00
BNE CODE_0F919E         ; $0F:91A5: D0 F7
LDA DATA_0F9190,y       ; $0F:91A7: B9 90 91

CODE_0F91AA:
JSR CODE_0F8F74         ; $0F:91AA: 20 74 8F
INX                     ; $0F:91AD: E8
CPX #$00F0              ; $0F:91AE: E0 F0 00
BNE CODE_0F91AA         ; $0F:91B1: D0 F7
LDA #$0050              ; $0F:91B3: A9 50 00
JSR CODE_0F8F74         ; $0F:91B6: 20 74 8F
RTS                     ; $0F:91B9: 60

CODE_0F91BA:
LDA $F1                 ; $0F:91BA: A5 F1
STA $99                 ; $0F:91BC: 85 99
JSL CODE_0FF027         ; $0F:91BE: 22 27 F0 0F
RTS                     ; $0F:91C2: 60

CODE_0F91C3:
LDA $F1                 ; $0F:91C3: A5 F1
ORA #$0010              ; $0F:91C5: 09 10 00
STA $99                 ; $0F:91C8: 85 99
JSL CODE_0FF027         ; $0F:91CA: 22 27 F0 0F
RTS                     ; $0F:91CE: 60

CODE_0F91CF:
LDA $DB                 ; $0F:91CF: A5 DB
ASL A                   ; $0F:91D1: 0A
TAX                     ; $0F:91D2: AA
LDA DATA_0F923C,x       ; $0F:91D3: BD 3C 92
ASL A                   ; $0F:91D6: 0A
TAX                     ; $0F:91D7: AA
LDA DATA_0F92CC,x       ; $0F:91D8: BD CC 92
STA $00                 ; $0F:91DB: 85 00
LDA #$000F              ; $0F:91DD: A9 0F 00
STA $02                 ; $0F:91E0: 85 02
LDX #$0000              ; $0F:91E2: A2 00 00
LDY #$0000              ; $0F:91E5: A0 00 00

CODE_0F91E8:
STX $E4                 ; $0F:91E8: 86 E4
TYX                     ; $0F:91EA: BB
LDA $7ED000,x           ; $0F:91EB: BF 00 D0 7E
CMP #$FFFF              ; $0F:91EF: C9 FF FF
BEQ CODE_0F9233         ; $0F:91F2: F0 3F
PHY                     ; $0F:91F4: 5A
LDX $E4                 ; $0F:91F5: A6 E4
AND #$00FF              ; $0F:91F7: 29 FF 00
ASL A                   ; $0F:91FA: 0A
ASL A                   ; $0F:91FB: 0A
ASL A                   ; $0F:91FC: 0A
TAY                     ; $0F:91FD: A8
LDA [$00],y             ; $0F:91FE: B7 00
STA $7E2000,x           ; $0F:9200: 9F 00 20 7E
INY                     ; $0F:9204: C8
INY                     ; $0F:9205: C8
LDA [$00],y             ; $0F:9206: B7 00
STA $7E2002,x           ; $0F:9208: 9F 02 20 7E
INY                     ; $0F:920C: C8
INY                     ; $0F:920D: C8
LDA [$00],y             ; $0F:920E: B7 00
STA $7E2040,x           ; $0F:9210: 9F 40 20 7E
INY                     ; $0F:9214: C8
INY                     ; $0F:9215: C8
LDA [$00],y             ; $0F:9216: B7 00
STA $7E2042,x           ; $0F:9218: 9F 42 20 7E
PLY                     ; $0F:921C: 7A
INY                     ; $0F:921D: C8
TYA                     ; $0F:921E: 98
AND #$000F              ; $0F:921F: 29 0F 00
BNE CODE_0F922A         ; $0F:9222: D0 06
TXA                     ; $0F:9224: 8A
CLC                     ; $0F:9225: 18
ADC #$0040              ; $0F:9226: 69 40 00
TAX                     ; $0F:9229: AA

CODE_0F922A:
INX                     ; $0F:922A: E8
INX                     ; $0F:922B: E8
INX                     ; $0F:922C: E8
INX                     ; $0F:922D: E8
CPY #$1200              ; $0F:922E: C0 00 12
BNE CODE_0F91E8         ; $0F:9231: D0 B5

CODE_0F9233:
SEP #$30                ; $0F:9233: E2 30
PLB                     ; $0F:9235: AB
LDA $0F35               ; $0F:9236: AD 35 0F
STA $DB                 ; $0F:9239: 85 DB
RTL                     ; $0F:923B: 6B

DATA_0F923C:
db $03,$00,$03,$00,$03,$00,$03,$00
db $03,$00,$03,$00,$03,$00,$05,$00
db $01,$00,$01,$00,$03,$00,$03,$00
db $03,$00,$05,$00,$01,$00,$08,$00
db $04,$00,$04,$00,$04,$00,$01,$00
db $08,$00,$01,$00,$01,$00,$01,$00
db $08,$00,$01,$00,$08,$00,$01,$00
db $0A,$00,$04,$00,$04,$00,$04,$00
db $01,$00,$01,$00,$08,$00,$01,$00
db $07,$00,$01,$00,$01,$00,$01,$00
db $01,$00,$01,$00,$01,$00,$01,$00
db $0A,$00,$01,$00,$08,$00,$04,$00
db $04,$00,$04,$00,$01,$00,$01,$00
db $06,$00,$01,$00,$01,$00,$02,$00
db $02,$00,$01,$00,$02,$00,$01,$00
db $02,$00,$01,$00,$00,$00,$00,$00
db $00,$00,$09,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$01,$00

DATA_0F92CC:
db $2A,$9B,$2A,$9D,$12,$AD,$12,$A7
db $62,$A4,$2A,$98,$62,$96,$EA,$95
db $4A,$95,$C2,$A5,$A2,$93

DATA_0F92E2:
db $00,$00,$00,$11,$00,$00,$00,$1F
db $00,$00,$00,$0C,$00,$12,$00,$00
db $08,$00,$00,$00,$00,$00,$04,$00
db $10,$00,$00,$00,$0D,$00,$00,$00
db $00,$00,$0A,$00,$1E,$00,$00,$00
db $00,$00,$1F,$00,$17,$00,$00,$00
db $00,$00,$00,$19,$12,$0C,$00,$00
db $1B,$00,$00,$00,$00,$12,$00,$00
db $00,$00,$00,$09,$00,$2A,$00,$00
db $00,$00,$16,$00,$00,$00,$1B,$00
db $00,$00,$00,$16,$08,$00,$00,$00
db $00,$17,$00,$00,$00,$19,$00,$00
db $00,$00,$0F,$00,$00,$14,$00,$00
db $00,$1B,$00,$00,$11,$00,$00,$00
db $00,$06,$00,$00,$0D,$00,$00,$00
db $00,$07,$00,$00,$00,$00,$00,$12
db $00,$08,$00,$00,$00,$00,$12,$00
db $00,$0C,$00,$00,$16,$00,$00,$00
db $00,$12,$00,$00,$00,$00,$00,$04
db $00,$13,$00,$00,$19,$00,$00,$00
db $00,$17,$00,$00,$00,$00,$1B,$00
db $00,$00,$00,$16,$1C,$00,$00,$00
db $00,$00,$1E,$00,$00,$15,$00,$00
db $00,$00,$02,$00,$01,$00,$00,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$E0,$1D,$24,$00,$F0,$1D
db $E1,$1D,$24,$00,$F0,$5D,$24,$00
db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D
db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D
db $24,$00,$E3,$1D,$24,$00,$F3,$1D
db $E4,$1D,$24,$00,$F4,$1D,$24,$00
db $CA,$1D,$CB,$1D,$F1,$1D,$F1,$5D
db $C0,$1D,$C1,$1D,$24,$00,$E2,$1D
db $D0,$1D,$D1,$1D,$F2,$1D,$24,$00
db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D
db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D
db $EB,$1D,$EC,$1D,$FB,$1D,$FC,$1D
db $ED,$1D,$24,$00,$FD,$1D,$FE,$1D
db $24,$00,$24,$00,$FF,$1D,$F8,$1D
db $24,$00,$EA,$1D,$F9,$1D,$FA,$1D
db $C8,$1D,$C1,$1D,$FD,$1D,$E2,$1D
db $D0,$1D,$D1,$1D,$F2,$1D,$F8,$1D
db $E5,$1D,$F5,$1D,$D9,$1D,$DA,$1D
db $CE,$1D,$CF,$1D,$EF,$1D,$EF,$1D
db $DC,$1D,$DD,$1D,$EF,$1D,$EF,$1D
db $DE,$1D,$DF,$1D,$EF,$1D,$EF,$1D
db $CC,$1D,$CD,$1D,$EF,$1D,$EF,$1D
db $DC,$1D,$E3,$1D,$EF,$1D,$F3,$1D
db $E4,$1D,$DF,$1D,$F4,$1D,$EF,$1D
db $E8,$1D,$E9,$1D,$DB,$1D,$EE,$1D
db $EF,$1D,$EF,$1D,$EF,$1D,$EF,$1D
db $C9,$1D,$C1,$1D,$EF,$1D,$E2,$1D
db $D0,$1D,$D8,$1D,$F2,$1D,$EF,$1D
db $E6,$1D,$E7,$1D,$D9,$1D,$DA,$1D
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$E0,$15,$24,$00,$F0,$15
db $E1,$15,$24,$00,$F0,$55,$24,$00
db $C2,$15,$C3,$15,$D2,$15,$D3,$15
db $C4,$15,$C5,$15,$D4,$15,$D5,$15
db $24,$00,$E3,$15,$24,$00,$F3,$15
db $E4,$15,$24,$00,$F4,$15,$24,$00
db $C0,$15,$C1,$15,$24,$00,$E2,$15
db $D0,$15,$D1,$15,$F2,$15,$24,$00
db $C2,$15,$C3,$15,$24,$00,$D3,$15
db $C4,$15,$C5,$15,$D4,$15,$24,$00
db $CA,$15,$CB,$15,$F1,$15,$F1,$55
db $C6,$15,$C7,$15,$D6,$15,$D7,$15
db $C8,$15,$C1,$15,$FD,$15,$E2,$15
db $D0,$15,$D1,$15,$F2,$15,$F8,$15
db $E6,$15,$E7,$15,$D9,$15,$DA,$15
db $DC,$15,$E3,$15,$EF,$15,$F3,$15
db $E4,$15,$DF,$15,$F4,$15,$EF,$15
db $E8,$15,$E9,$15,$DB,$15,$EE,$15
db $C9,$15,$C1,$15,$EF,$15,$E2,$15
db $D0,$15,$D8,$15,$F2,$15,$EF,$15
db $E6,$15,$E7,$15,$F6,$15,$F7,$15
db $E5,$15,$F5,$15,$D9,$15,$DA,$15
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$D0,$1D,$D1,$1D
db $24,$00,$24,$00,$D2,$1D,$D3,$1D
db $24,$00,$C5,$1D,$D4,$1D,$D5,$1D
db $24,$00,$24,$00,$C1,$1D,$C2,$1D
db $24,$00,$24,$00,$FE,$1D,$FF,$1D
db $24,$00,$24,$00,$C0,$1D,$D1,$1D
db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D
db $24,$00,$24,$00,$D2,$1D,$C3,$1D
db $24,$00,$24,$00,$CA,$1C,$CB,$1C
db $C6,$1D,$C7,$1D,$C4,$1D,$D7,$1D
db $24,$00,$24,$00,$FF,$1D,$FE,$1D
db $E8,$1D,$E9,$1D,$F8,$1D,$F9,$1D
db $EA,$1D,$EB,$1D,$FA,$1D,$FB,$1D
db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D
db $E4,$1D,$E5,$1D,$F4,$1D,$F5,$1D
db $C8,$1D,$C9,$1D,$D8,$1D,$D9,$1D
db $CA,$1D,$CB,$1D,$DA,$1D,$DB,$1D
db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D
db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D
db $24,$00,$24,$00,$24,$00,$24,$00
db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D
db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D
db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D
db $C8,$1D,$C9,$1D,$D8,$1D,$D9,$1D
db $D2,$1D,$D3,$1D,$C2,$1D,$C3,$1D
db $C2,$1D,$C3,$1D,$C2,$1D,$C3,$1D
db $CA,$1D,$CB,$1D,$DA,$1D,$DB,$1D
db $CC,$1D,$CD,$1D,$DC,$1D,$DD,$1D
db $CE,$1D,$CF,$1D,$DE,$1D,$DF,$1D
db $F2,$1D,$F3,$1D,$E2,$1D,$E3,$1D
db $E4,$1D,$E5,$1D,$F4,$1D,$F5,$1D
db $E2,$1D,$E3,$1D,$E2,$1D,$E3,$1D
db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D
db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D
db $24,$00,$24,$00,$24,$00,$24,$00
db $C0,$1D,$C1,$1D,$CA,$1D,$D1,$1D
db $C2,$1D,$C3,$1D,$D2,$1D,$CB,$1D
db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D
db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D
db $DA,$1D,$E1,$1D,$D0,$1D,$D1,$1D
db $E2,$1D,$DB,$1D,$D2,$1D,$D3,$1D
db $DA,$1D,$E1,$1D,$CA,$1D,$D1,$1D
db $E2,$1D,$E1,$1D,$E4,$1D,$E5,$1D
db $E2,$1D,$E1,$1D,$D2,$1D,$D1,$1D
db $E2,$1D,$DB,$1D,$D2,$1D,$CB,$1D
db $DA,$1D,$E1,$1D,$EA,$1D,$D1,$1D
db $F4,$1D,$F5,$1D,$D8,$1D,$E8,$1D
db $E2,$1D,$DB,$1D,$D2,$1D,$EB,$1D
db $C0,$1D,$C1,$1D,$92,$1D,$D1,$1D
db $E2,$1D,$E3,$1D,$D2,$1D,$D1,$1D
db $24,$00,$24,$00,$24,$00,$24,$00
db $FA,$1D,$E1,$1D,$CC,$1D,$D1,$1D
db $E2,$1D,$FB,$1D,$D2,$1D,$CD,$1D
db $A2,$1D,$E1,$1D,$B2,$1D,$D1,$1D
db $E2,$1D,$E1,$1D,$D2,$1D,$C6,$1D
db $C4,$1D,$C5,$1D,$C7,$1D,$E7,$1D
db $D4,$1D,$D5,$1D,$E7,$1D,$C8,$1D
db $E2,$1D,$E3,$1D,$C9,$1D,$D1,$1D
db $E2,$1D,$E1,$1D,$D2,$1D,$82,$1D
db $E2,$1D,$E1,$1D,$83,$1D,$84,$1D
db $E2,$1D,$E1,$1D,$85,$1D,$80,$1D
db $E2,$1D,$E1,$1D,$81,$1D,$D1,$1D
db $E2,$1D,$E1,$1D,$C9,$1D,$D1,$1D
db $E2,$1D,$D6,$1D,$D2,$1D,$E6,$1D
db $D7,$1D,$E7,$1D,$D7,$1D,$E7,$1D
db $E7,$1D,$D7,$5D,$E7,$1D,$D7,$5D
db $D9,$1D,$E3,$1D,$E9,$1D,$D1,$1D
db $E2,$1D,$DC,$1D,$D2,$1D,$EC,$1D
db $DD,$1D,$DE,$1D,$ED,$1D,$EE,$1D
db $DF,$1D,$90,$1D,$EF,$1D,$A0,$1D
db $91,$1D,$E1,$1D,$A1,$1D,$D1,$1D
db $A2,$1D,$E3,$1D,$B2,$1D,$D1,$1D
db $D9,$1D,$E1,$1D,$E9,$1D,$D1,$1D
db $E2,$1D,$E1,$1D,$F0,$1D,$F1,$1D
db $E2,$1D,$E1,$1D,$F2,$1D,$F3,$1D
db $E2,$1D,$F6,$1D,$F0,$1D,$F1,$1D
db $F7,$1D,$CE,$1D,$F2,$1D,$F3,$1D
db $CF,$1D,$F8,$1D,$F0,$1D,$F1,$1D
db $F9,$1D,$E1,$1D,$F2,$1D,$F3,$1D
db $E2,$1D,$E3,$1D,$F0,$1D,$F1,$1D
db $FA,$1D,$E1,$1D,$F2,$1D,$F3,$1D
db $E2,$1D,$FC,$1D,$F0,$1D,$F1,$1D
db $FD,$1D,$FE,$1D,$F2,$1D,$F3,$1D
db $FF,$1D,$B0,$1D,$F0,$1D,$F1,$1D
db $B1,$1D,$E1,$1D,$F2,$1D,$F3,$1D
db $E2,$1D,$FB,$1D,$F0,$1D,$F1,$1D
db $A2,$1D,$E1,$1D,$F2,$1D,$F3,$1D
db $E2,$1D,$CB,$1D,$D2,$1D,$D3,$1D
db $CA,$1D,$E1,$1D,$D0,$1D,$D1,$1D
db $86,$15,$86,$15,$87,$15,$87,$15
db $88,$15,$88,$15,$88,$15,$88,$15
db $34,$15,$34,$15,$34,$15,$34,$15
db $34,$15,$36,$15,$34,$15,$36,$15
db $37,$15,$38,$15,$37,$15,$28,$15
db $34,$15,$09,$1D,$34,$15,$34,$15
db $09,$1D,$0A,$1D,$19,$1D,$1A,$1D
db $0B,$1D,$0C,$1D,$1B,$1D,$1C,$1D
db $0C,$5D,$0B,$5D,$1C,$5D,$1B,$5D
db $0A,$5D,$09,$5D,$1A,$5D,$19,$5D
db $09,$15,$0A,$15,$19,$15,$1A,$15
db $0B,$15,$0C,$15,$1B,$15,$1C,$15
db $0C,$55,$0B,$55,$1C,$55,$1B,$55
db $0A,$55,$09,$55,$1A,$55,$19,$55
db $00,$15,$01,$15,$10,$15,$11,$15
db $BB,$1D,$BC,$1D,$34,$1D,$88,$1D
db $BD,$1D,$BC,$1D,$89,$1D,$8C,$1D
db $BD,$1D,$BC,$1D,$8D,$1D,$89,$5D
db $BD,$1D,$BE,$1D,$88,$1D,$34,$1D
db $B0,$1D,$B1,$1D,$B2,$1D,$E8,$1C
db $20,$15,$21,$15,$30,$15,$31,$15
db $02,$15,$03,$15,$12,$15,$13,$15
db $B1,$5D,$B0,$5D,$E9,$1C,$B2,$5D
db $34,$15,$34,$1D,$34,$15,$34,$1D
db $34,$1D,$98,$1D,$34,$1D,$A8,$1D
db $89,$1D,$8A,$1D,$99,$1D,$9A,$1D
db $8B,$1D,$89,$5D,$9B,$1D,$99,$5D
db $9C,$1D,$34,$1D,$AC,$1D,$34,$1D
db $24,$15,$16,$15,$34,$15,$26,$15
db $17,$15,$18,$15,$27,$15,$28,$15
db $B3,$1D,$EA,$1C,$34,$1D,$8E,$1D
db $EB,$1C,$B3,$5D,$8F,$1D,$34,$1D
db $34,$1D,$A8,$1D,$34,$1D,$A8,$1D
db $A9,$1D,$8A,$1D,$B9,$1D,$B9,$1D
db $8B,$1D,$A9,$5D,$B9,$1D,$BA,$1D
db $AC,$1D,$34,$1D,$AC,$1D,$34,$1D
db $34,$15,$34,$15,$0D,$1D,$0E,$1D
db $34,$15,$34,$15,$0F,$1D,$34,$15
db $1D,$1D,$1E,$1D,$2D,$1D,$2E,$1D
db $1F,$1D,$29,$1D,$2F,$1D,$39,$1D
db $37,$15,$38,$15,$37,$15,$38,$15
db $34,$1D,$A8,$1D,$34,$1D,$B8,$1D
db $8B,$1D,$A9,$5D,$B9,$1D,$B9,$1D
db $AC,$1D,$34,$1D,$BA,$1D,$34,$1D
db $3D,$1D,$3E,$1D,$34,$15,$15,$1D
db $3F,$1D,$2A,$1D,$25,$1D,$3A,$1D
db $34,$15,$26,$95,$24,$95,$16,$95
db $27,$95,$38,$15,$17,$95,$18,$95
db $80,$1D,$81,$1D,$90,$1D,$91,$1D
db $82,$1D,$83,$1D,$92,$1D,$93,$1D
db $32,$15,$22,$15,$10,$15,$11,$15
db $22,$15,$23,$15,$10,$15,$11,$15
db $33,$15,$00,$15,$10,$15,$11,$15
db $A0,$1D,$A1,$1D,$10,$15,$11,$15
db $A2,$1D,$A3,$1D,$10,$15,$11,$15
db $33,$15,$34,$15,$10,$15,$11,$15
db $85,$15,$87,$15,$95,$15,$97,$15
db $84,$15,$86,$15,$94,$15,$96,$15
db $85,$15,$86,$15,$95,$15,$96,$15
db $84,$15,$87,$15,$94,$15,$97,$15
db $84,$15,$85,$15,$94,$15,$95,$15
db $86,$15,$85,$15,$96,$15,$95,$15
db $A6,$15,$A7,$15,$B6,$15,$B7,$15
db $94,$15,$A6,$15,$B4,$15,$B6,$15
db $A6,$15,$A6,$15,$B6,$15,$B6,$15
db $94,$15,$A7,$15,$B4,$15,$B7,$15
db $99,$15,$16,$15,$34,$15,$26,$15
db $4C,$15,$4D,$15,$5C,$15,$40,$15
db $4D,$15,$4D,$15,$41,$15,$42,$15
db $4D,$15,$4D,$15,$43,$15,$44,$15
db $4D,$15,$4E,$15,$45,$15,$5D,$15
db $5C,$15,$50,$15,$5C,$15,$60,$15
db $51,$15,$52,$15,$61,$15,$62,$15
db $53,$15,$54,$15,$63,$15,$64,$15
db $55,$15,$5D,$15,$65,$15,$5D,$15
db $5C,$15,$70,$15,$5C,$15,$46,$15
db $71,$15,$72,$15,$47,$15,$48,$15
db $73,$15,$74,$15,$49,$15,$4A,$15
db $75,$15,$5D,$15,$4B,$15,$5D,$15
db $5C,$15,$56,$15,$5C,$15,$66,$15
db $57,$15,$58,$15,$67,$15,$68,$15
db $59,$15,$5A,$15,$69,$15,$6A,$15
db $5B,$15,$5D,$15,$6B,$15,$5D,$15
db $5C,$15,$76,$15,$5E,$15,$6C,$15
db $77,$15,$78,$15,$6C,$15,$6C,$15
db $79,$15,$7A,$15,$6C,$15,$6C,$15
db $7B,$15,$5D,$15,$6C,$15,$6D,$15
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $A4,$10,$A4,$10,$24,$00,$24,$00
db $A4,$10,$A4,$10,$A4,$10,$A4,$10
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $24,$00,$24,$00,$24,$00,$F0,$1C
db $24,$00,$24,$00,$F1,$1C,$24,$00
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $40,$15,$41,$15,$50,$15,$51,$15
db $46,$15,$47,$15,$56,$15,$57,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $24,$00,$F2,$1C,$24,$00,$F4,$1C
db $F3,$1C,$24,$00,$F5,$1C,$24,$00
db $60,$15,$61,$15,$70,$15,$71,$15
db $66,$15,$67,$15,$76,$15,$77,$15
db $0A,$15,$0B,$15,$1A,$15,$1B,$15
db $0C,$15,$0D,$15,$1C,$15,$1D,$15
db $28,$15,$29,$15,$1A,$15,$1B,$15
db $38,$15,$39,$15,$1C,$15,$1D,$15
db $0E,$15,$24,$00,$1E,$15,$1F,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $20,$15,$21,$15,$30,$15,$31,$15
db $2A,$15,$2B,$15,$3A,$15,$3B,$15
db $2C,$15,$2D,$15,$3C,$15,$3D,$15
db $2E,$15,$2F,$15,$3E,$15,$3F,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $22,$15,$23,$15,$32,$15,$33,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $0C,$15,$0D,$15,$1C,$15,$1D,$15
db $28,$15,$29,$15,$1A,$15,$1B,$15
db $38,$15,$39,$15,$1C,$15,$1D,$15
db $42,$15,$43,$15,$52,$15,$53,$15
db $44,$15,$45,$15,$54,$15,$55,$15
db $62,$15,$63,$15,$72,$15,$73,$15
db $64,$15,$65,$15,$74,$15,$75,$15
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $34,$15,$35,$15,$1A,$15,$1B,$15
db $36,$15,$37,$15,$1C,$15,$1D,$15
db $2A,$15,$2B,$15,$24,$15,$25,$15
db $2C,$15,$2D,$15,$26,$15,$27,$15
db $A4,$15,$A5,$15,$B4,$15,$B5,$15
db $05,$15,$0B,$15,$15,$15,$03,$15
db $24,$00,$04,$15,$24,$00,$14,$15
db $10,$15,$11,$15,$13,$15,$27,$15
db $24,$00,$24,$00,$24,$00,$12,$15
db $06,$15,$2B,$15,$09,$15,$07,$15
db $2E,$15,$2F,$15,$3E,$15,$07,$15
db $24,$00,$24,$00,$08,$15,$24,$00
db $2E,$15,$2F,$15,$09,$15,$07,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $22,$15,$23,$15,$32,$15,$33,$15
db $72,$15,$71,$15,$5E,$15,$5F,$15
db $24,$10,$24,$10,$24,$10,$24,$10
db $0A,$15,$4A,$15,$4A,$15,$16,$15
db $07,$15,$06,$15,$5A,$15,$16,$15
db $24,$10,$01,$15,$10,$15,$11,$15
db $02,$15,$03,$15,$0A,$15,$0A,$15
db $04,$15,$24,$10,$14,$15,$15,$15
db $0A,$15,$0D,$15,$0A,$15,$1D,$15
db $07,$15,$24,$10,$0E,$15,$07,$15
db $0A,$15,$1D,$15,$0A,$15,$0A,$15
db $1F,$15,$17,$15,$1E,$15,$55,$15
db $1E,$15,$55,$15,$0A,$15,$0F,$15
db $55,$15,$17,$15,$55,$15,$55,$15
db $55,$15,$55,$15,$1F,$15,$55,$15
db $07,$15,$06,$15,$0E,$15,$5B,$15
db $18,$15,$0A,$15,$0E,$15,$18,$15
db $5E,$15,$5E,$15,$4F,$15,$4F,$15
db $0A,$15,$4B,$15,$4A,$15,$16,$15
db $55,$15,$5A,$15,$5A,$15,$16,$15
db $24,$10,$06,$15,$06,$15,$16,$15
db $16,$15,$0A,$15,$0A,$15,$0A,$15
db $02,$15,$08,$15,$0A,$15,$0A,$15
db $09,$15,$0A,$15,$14,$15,$1A,$15
db $0A,$55,$0A,$15,$0A,$15,$0A,$15
db $1E,$15,$17,$15,$0A,$15,$0F,$15
db $07,$15,$24,$10,$17,$15,$07,$15
db $0A,$15,$0F,$15,$0A,$15,$1D,$15
db $55,$15,$17,$15,$1F,$15,$55,$15
db $1F,$15,$55,$15,$1E,$15,$55,$15
db $55,$15,$55,$15,$55,$15,$55,$15
db $07,$15,$06,$15,$17,$15,$5B,$15
db $18,$15,$0A,$15,$17,$15,$18,$15
db $5F,$15,$5F,$15,$5F,$15,$5F,$15
db $45,$15,$0A,$15,$0A,$15,$0A,$15
db $0A,$15,$0A,$15,$0A,$15,$19,$15
db $0A,$15,$12,$15,$0A,$15,$12,$95
db $13,$15,$0A,$15,$13,$95,$0A,$15
db $19,$15,$0A,$55,$0A,$55,$45,$D5
db $47,$15,$47,$55,$47,$95,$47,$D5
db $57,$15,$57,$55,$57,$95,$57,$D5
db $12,$15,$0A,$15,$12,$95,$19,$15
db $0A,$15,$0A,$15,$47,$15,$47,$55
db $47,$95,$54,$15,$0A,$15,$57,$95
db $57,$55,$0A,$15,$57,$D5,$0A,$15
db $0B,$15,$0C,$15,$1B,$15,$1C,$15
db $0A,$15,$0A,$15,$0A,$15,$0B,$15
db $0A,$15,$0A,$15,$0C,$15,$0A,$15
db $0B,$15,$1B,$15,$1B,$15,$0A,$15
db $1C,$15,$0C,$15,$0A,$15,$1C,$15
db $55,$55,$56,$55,$55,$55,$56,$D5
db $55,$55,$46,$55,$55,$55,$46,$D5
db $5C,$15,$17,$15,$55,$55,$55,$55
db $55,$55,$17,$15,$55,$55,$4C,$15
db $26,$15,$21,$15,$36,$15,$31,$15
db $22,$15,$23,$15,$32,$15,$33,$15
db $20,$15,$21,$15,$30,$15,$31,$15
db $22,$15,$24,$15,$32,$15,$34,$15
db $27,$15,$51,$15,$37,$15,$31,$15
db $52,$15,$53,$15,$32,$15,$33,$15
db $50,$15,$51,$15,$30,$15,$31,$15
db $52,$15,$48,$15,$32,$15,$58,$15
db $27,$15,$41,$15,$37,$15,$31,$15
db $42,$15,$43,$15,$32,$15,$33,$15
db $40,$15,$41,$15,$30,$15,$31,$15
db $42,$15,$44,$15,$32,$15,$35,$15
db $2E,$15,$29,$15,$3E,$15,$39,$15
db $2A,$15,$2B,$15,$3A,$15,$3B,$15
db $28,$15,$29,$15,$38,$15,$39,$15
db $2A,$15,$2C,$15,$3A,$15,$3C,$15
db $2F,$15,$29,$15,$3F,$15,$39,$15
db $2A,$15,$49,$15,$3A,$15,$59,$15
db $2A,$15,$2D,$15,$3A,$15,$3D,$15
db $60,$15,$61,$15,$5E,$15,$5F,$15
db $62,$15,$63,$15,$67,$15,$68,$15
db $62,$15,$4D,$15,$67,$15,$5D,$15
db $62,$15,$4E,$15,$67,$15,$5D,$15
db $62,$15,$4F,$15,$67,$15,$5D,$15
db $64,$15,$61,$15,$69,$15,$5F,$15
db $65,$15,$61,$15,$6A,$15,$5F,$15
db $66,$15,$66,$15,$66,$15,$66,$15
db $86,$15,$86,$15,$87,$15,$87,$15
db $88,$15,$88,$15,$88,$15,$88,$15
db $12,$15,$1F,$15,$12,$15,$1F,$15
db $07,$15,$06,$15,$B0,$15,$16,$15
db $45,$15,$71,$15,$0E,$15,$A2,$15
db $89,$15,$8C,$15,$9B,$15,$9C,$15
db $9D,$15,$9F,$15,$9F,$15,$12,$15
db $89,$15,$8C,$15,$9B,$15,$9C,$15
db $FF,$15,$FF,$15,$FF,$15,$FF,$15
db $EE,$15,$EE,$15,$FE,$15,$FE,$15
db $27,$00,$27,$00,$27,$00,$27,$00
db $27,$00,$27,$00,$27,$00,$27,$00
db $27,$00,$27,$00,$27,$00,$27,$00
db $27,$00,$27,$00,$27,$00,$27,$00
db $27,$00,$27,$00,$27,$00,$27,$00
db $27,$00,$27,$00,$27,$00,$27,$00
db $27,$00,$27,$00,$27,$00,$27,$00
db $2E,$14,$96,$15,$67,$15,$91,$15
db $97,$15,$03,$15,$12,$15,$13,$15
db $4E,$15,$06,$15,$54,$15,$16,$15
db $A0,$15,$A1,$15,$B0,$15,$16,$15
db $17,$15,$B0,$15,$B0,$15,$16,$15
db $55,$15,$17,$15,$55,$15,$17,$95
db $55,$15,$55,$15,$55,$15,$17,$95
db $45,$15,$71,$15,$17,$15,$A2,$15
db $57,$15,$81,$15,$90,$15,$91,$15
db $82,$15,$83,$15,$92,$15,$93,$15
db $84,$15,$57,$15,$94,$15,$95,$15
db $12,$15,$0D,$15,$12,$15,$1D,$15
db $07,$15,$24,$14,$0E,$15,$07,$15
db $1E,$15,$17,$15,$12,$15,$0F,$15
db $12,$15,$1D,$15,$12,$15,$12,$15
db $1F,$15,$17,$15,$1E,$15,$55,$15
db $07,$15,$4B,$15,$0E,$15,$45,$15
db $18,$15,$19,$15,$0E,$15,$18,$15
db $12,$15,$0F,$15,$12,$15,$1D,$15
db $55,$15,$17,$15,$1F,$15,$55,$15
db $1E,$15,$55,$15,$12,$15,$0F,$15
db $1F,$15,$55,$15,$1E,$15,$55,$15
db $55,$15,$55,$15,$1F,$15,$55,$15
db $45,$15,$2E,$14,$0E,$15,$45,$15
db $12,$15,$12,$15,$12,$15,$89,$15
db $12,$15,$12,$15,$8C,$15,$12,$15
db $89,$15,$8A,$15,$99,$15,$9A,$15
db $8B,$15,$8C,$15,$9B,$15,$9C,$15
db $8D,$15,$8E,$15,$12,$15,$8F,$15
db $9D,$15,$9E,$15,$9F,$15,$12,$15
db $89,$15,$8C,$15,$99,$15,$9A,$15
db $89,$15,$8C,$15,$9B,$15,$9C,$15
db $B3,$15,$B2,$15,$B2,$15,$16,$15
db $B3,$15,$A3,$15,$B2,$15,$16,$15
db $12,$15,$99,$15,$12,$15,$8F,$15
db $9D,$15,$8E,$15,$9F,$15,$8F,$15
db $9C,$15,$12,$15,$9F,$15,$12,$15
db $12,$15,$12,$15,$8C,$15,$89,$15
db $89,$15,$8C,$15,$9B,$15,$9A,$15
db $12,$15,$12,$15,$89,$15,$8C,$15
db $99,$15,$9C,$15,$8F,$15,$9F,$15
db $12,$15,$99,$15,$8C,$15,$8F,$15
db $16,$15,$12,$15,$89,$15,$8C,$15
db $16,$15,$12,$15,$12,$15,$89,$15
db $16,$15,$12,$15,$89,$15,$8C,$15
db $99,$15,$9C,$15,$8D,$15,$B1,$15
db $12,$15,$1D,$15,$8C,$15,$12,$15
db $12,$15,$1D,$15,$8C,$15,$12,$15
db $62,$15,$63,$15,$72,$15,$73,$15
db $64,$15,$65,$15,$74,$15,$75,$15
db $66,$15,$67,$15,$76,$15,$77,$15
db $68,$15,$69,$15,$78,$15,$79,$15
db $24,$00,$24,$00,$00,$1D,$01,$1D
db $24,$00,$24,$00,$02,$1D,$03,$1D
db $24,$00,$24,$00,$04,$1D,$05,$1D
db $24,$00,$24,$00,$06,$1D,$07,$1D
db $10,$1D,$11,$1D,$20,$1D,$21,$1D
db $12,$1D,$13,$1D,$22,$1D,$23,$1D
db $14,$1D,$15,$1D,$24,$1D,$25,$1D
db $16,$1D,$17,$1D,$26,$1D,$27,$1D
db $24,$00,$24,$00,$40,$1D,$41,$1D
db $30,$1D,$31,$1D,$08,$1D,$09,$1D
db $32,$1D,$33,$1D,$0A,$1D,$0B,$1D
db $34,$1D,$35,$1D,$0C,$1D,$0D,$1D
db $36,$1D,$37,$1D,$0E,$1D,$0F,$1D
db $50,$1D,$51,$1D,$60,$1D,$61,$1D
db $18,$1D,$19,$1D,$28,$1D,$29,$1D
db $1A,$1D,$1B,$1D,$2A,$1D,$2B,$1D
db $1C,$1D,$1D,$1D,$2C,$1D,$2D,$1D
db $1E,$1D,$1F,$1D,$2E,$1D,$2F,$1D
db $70,$1D,$71,$1D,$24,$00,$24,$00
db $38,$1D,$39,$1D,$24,$00,$24,$00
db $3A,$1D,$3B,$1D,$24,$00,$24,$00
db $3C,$1D,$3D,$1D,$24,$00,$24,$00
db $3E,$1D,$3F,$1D,$24,$00,$24,$00
db $3E,$1D,$3F,$1D,$24,$00,$24,$00
db $3E,$1D,$3F,$1D,$24,$00,$24,$00
db $3E,$1D,$3F,$1D,$24,$00,$24,$00
db $3E,$1D,$3F,$1D,$24,$00,$24,$00
db $3E,$1D,$3F,$1D,$24,$00,$24,$00
db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D
db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D
db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D
db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D
db $C8,$1D,$C9,$1D,$D8,$1D,$D9,$1D
db $CA,$1D,$24,$00,$DA,$1D,$DB,$1D
db $E8,$1D,$24,$00,$F8,$1D,$24,$00
db $E8,$1D,$E9,$1D,$F8,$1D,$F9,$1D
db $EA,$1D,$EB,$1D,$FA,$1D,$FB,$1D
db $24,$00,$E9,$1D,$24,$00,$F9,$1D
db $DF,$1D,$C3,$1D,$DC,$1D,$D3,$1D
db $E8,$1D,$E9,$1D,$F8,$1D,$F9,$1D
db $CC,$1D,$CD,$1D,$D0,$1D,$D1,$1D
db $CE,$1D,$CF,$1D,$D2,$1D,$D3,$1D
db $24,$00,$E5,$1D,$24,$00,$F5,$1D
db $24,$00,$DD,$1D,$24,$00,$DE,$1D
db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D
db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D
db $E4,$1D,$E5,$1D,$F4,$1D,$F5,$1D
db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D
db $E2,$1D,$F8,$1D,$F2,$1D,$F3,$1D
db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D
db $E4,$1D,$24,$00,$F4,$1D,$24,$00
db $24,$00,$24,$00,$EC,$1D,$ED,$1D
db $E2,$1D,$F8,$1D,$F2,$1D,$F3,$1D
db $EE,$15,$EE,$15,$FE,$15,$FE,$15
db $FF,$15,$FF,$15,$FF,$15,$FF,$15
db $16,$1D,$12,$1D,$12,$1D,$89,$1D
db $16,$1D,$12,$1D,$89,$1D,$8C,$1D
db $99,$1D,$9C,$1D,$8D,$1D,$B1,$1D
db $12,$1D,$1D,$1D,$8C,$1D,$12,$1D
db $12,$1D,$1D,$1D,$8C,$1D,$12,$1D
db $62,$15,$63,$15,$72,$15,$73,$15
db $64,$15,$65,$15,$74,$15,$75,$15
db $66,$15,$67,$15,$76,$15,$77,$15
db $68,$15,$69,$15,$78,$15,$79,$15
db $07,$15,$06,$15,$B0,$15,$16,$15
db $20,$15,$21,$15,$30,$15,$31,$15
db $22,$15,$23,$15,$32,$15,$33,$15
db $28,$15,$29,$15,$38,$15,$39,$15
db $2A,$15,$2B,$15,$3A,$15,$3B,$15
db $26,$15,$21,$15,$36,$15,$31,$15
db $22,$15,$24,$15,$32,$15,$34,$15
db $2E,$15,$29,$15,$3E,$15,$39,$15
db $2A,$15,$2C,$15,$3A,$15,$3C,$15
db $40,$15,$41,$15,$30,$15,$31,$15
db $42,$15,$43,$15,$32,$15,$33,$15
db $27,$15,$41,$15,$37,$15,$31,$15
db $22,$15,$24,$15,$32,$15,$34,$15
db $2F,$15,$29,$15,$3F,$15,$39,$15
db $2A,$15,$2D,$15,$3A,$15,$3D,$15
db $50,$15,$51,$15,$30,$15,$31,$15
db $52,$15,$53,$15,$32,$15,$33,$15
db $52,$15,$48,$15,$32,$15,$58,$15
db $2A,$15,$49,$15,$3A,$15,$59,$15
db $24,$00,$24,$00,$24,$00,$24,$00
db $C1,$1C,$24,$00,$24,$00,$24,$00
db $C2,$1C,$24,$00,$24,$00,$24,$00
db $C3,$1C,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$C0,$1C,$24,$00
db $24,$00,$24,$00,$C1,$1C,$24,$00
db $24,$00,$24,$00,$C2,$1C,$24,$00
db $24,$00,$24,$00,$C3,$1C,$24,$00
db $C4,$1C,$24,$00,$24,$00,$24,$00
db $C5,$1C,$24,$00,$24,$00,$24,$00
db $C6,$1C,$24,$00,$24,$00,$24,$00
db $C7,$1C,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$C4,$1C,$24,$00
db $24,$00,$24,$00,$C5,$1C,$24,$00
db $24,$00,$24,$00,$C6,$1C,$24,$00
db $24,$00,$24,$00,$C7,$1C,$24,$00
db $24,$00,$C0,$1C,$24,$00,$24,$00
db $24,$00,$C1,$1C,$24,$00,$24,$00
db $24,$00,$C2,$1C,$24,$00,$24,$00
db $24,$00,$C3,$1C,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$C0,$1C
db $24,$00,$24,$00,$24,$00,$C1,$1C
db $24,$00,$24,$00,$24,$00,$C2,$1C
db $24,$00,$24,$00,$24,$00,$C3,$1C
db $24,$00,$C4,$1C,$24,$00,$24,$00
db $24,$00,$C5,$1C,$24,$00,$24,$00
db $24,$00,$C6,$1C,$24,$00,$24,$00
db $24,$00,$C7,$1C,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$C4,$1C
db $24,$00,$24,$00,$24,$00,$C5,$1C
db $24,$00,$24,$00,$24,$00,$C6,$1C
db $24,$00,$24,$00,$24,$00,$C7,$1C
db $E0,$15,$E0,$15,$E1,$15,$E1,$15
db $C6,$15,$C7,$15,$D6,$15,$D7,$15
db $C8,$15,$C9,$15,$D8,$15,$D9,$15
db $CA,$15,$CB,$15,$DA,$15,$DB,$15
db $CC,$15,$CD,$15,$DC,$15,$DD,$15
db $E6,$15,$E7,$15,$F6,$15,$F7,$15
db $E8,$15,$E9,$15,$F8,$15,$F9,$15
db $EA,$15,$EB,$15,$FA,$15,$FB,$15
db $EC,$15,$ED,$15,$FC,$15,$FD,$15
db $E2,$15,$E2,$15,$E2,$15,$E2,$15
db $C0,$1C,$24,$00,$24,$00,$24,$00
db $C0,$1C,$24,$00,$24,$00,$24,$00
db $24,$00,$24,$00,$24,$00,$24,$00
db $04,$15,$05,$15,$16,$15,$17,$15
db $06,$15,$07,$15,$20,$15,$21,$15
db $04,$15,$05,$15,$22,$15,$23,$15
db $06,$15,$07,$15,$14,$15,$15,$15
db $0C,$15,$0D,$15,$1C,$15,$1D,$15
db $24,$00,$24,$00,$1E,$15,$24,$00
db $24,$00,$2C,$15,$24,$00,$3C,$15
db $0C,$15,$2A,$15,$16,$15,$3A,$15
db $2B,$15,$07,$15,$3B,$15,$21,$15
db $26,$15,$27,$15,$36,$15,$37,$15
db $30,$15,$31,$15,$08,$15,$24,$00
db $32,$15,$33,$15,$24,$00,$0B,$15
db $24,$15,$25,$15,$34,$15,$35,$15
db $26,$15,$1B,$15,$36,$15,$37,$15
db $0F,$15,$24,$00,$08,$15,$24,$00
db $24,$00,$24,$00,$24,$00,$3E,$15
db $2E,$15,$2F,$15,$3F,$15,$35,$15
db $18,$15,$24,$00,$4A,$15,$4B,$15
db $24,$00,$19,$15,$5A,$15,$5B,$15
db $24,$00,$19,$15,$5C,$15,$48,$15
db $24,$15,$25,$15,$44,$15,$45,$15
db $26,$15,$27,$15,$46,$15,$47,$15
db $24,$00,$24,$00,$5C,$15,$51,$15
db $24,$00,$24,$00,$52,$15,$53,$15
db $24,$00,$19,$15,$50,$15,$48,$15
db $00,$15,$01,$15,$11,$15,$00,$15
db $68,$15,$69,$15,$78,$15,$79,$15
db $6A,$15,$6B,$15,$7A,$15,$7B,$15
db $10,$15,$11,$15,$01,$15,$10,$15
db $6C,$15,$61,$15,$7C,$15,$71,$15
db $54,$15,$55,$15,$72,$15,$73,$15
db $56,$15,$57,$15,$74,$15,$75,$15
db $4C,$15,$4D,$15,$76,$15,$77,$15
db $62,$15,$63,$15,$72,$15,$73,$15
db $64,$15,$65,$15,$74,$15,$75,$15
db $66,$15,$67,$15,$76,$15,$77,$15
db $60,$15,$61,$15,$7C,$15,$71,$15
db $54,$15,$58,$15,$72,$15,$59,$15
db $16,$15,$17,$15,$18,$15,$19,$15
db $19,$15,$18,$15,$18,$15,$19,$15
db $06,$15,$06,$15,$14,$15,$15,$15
db $34,$15,$34,$15,$34,$15,$34,$15
db $34,$15,$04,$15,$34,$15,$04,$15
db $05,$15,$06,$15,$05,$15,$06,$15
db $29,$15,$2A,$15,$19,$15,$1A,$15
db $2B,$15,$2C,$15,$1B,$15,$1C,$15
db $38,$15,$34,$15,$38,$15,$34,$15
db $19,$15,$1A,$15,$19,$15,$1A,$15
db $1B,$15,$1C,$15,$1B,$15,$1C,$15
db $09,$15,$0A,$15,$19,$15,$1A,$15
db $0B,$15,$0C,$15,$1B,$15,$1C,$15
db $34,$15,$04,$15,$34,$15,$14,$15
db $05,$15,$06,$15,$15,$15,$06,$15
db $00,$15,$01,$15,$10,$15,$11,$15
db $00,$15,$02,$15,$10,$15,$12,$15
db $03,$15,$01,$15,$13,$15,$11,$15
db $0D,$15,$0A,$15,$1D,$15,$1A,$15
db $0B,$15,$0E,$15,$1B,$15,$1E,$15
db $0F,$15,$01,$15,$1F,$15,$11,$15
db $20,$15,$21,$15,$30,$15,$31,$15
db $20,$15,$22,$15,$30,$15,$32,$15
db $23,$15,$21,$15,$33,$15,$31,$15
db $20,$15,$21,$15,$30,$15,$30,$15
db $2D,$15,$1A,$15,$3D,$15,$1A,$15
db $1B,$15,$2E,$15,$1B,$15,$3E,$15
db $2F,$15,$21,$15,$3F,$15,$31,$15
db $35,$15,$35,$15,$34,$15,$34,$15
db $24,$15,$16,$15,$34,$15,$26,$15
db $17,$15,$18,$15,$27,$15,$28,$15
db $25,$15,$35,$15,$34,$15,$34,$15
db $39,$15,$0A,$15,$19,$15,$1A,$15
db $3A,$15,$35,$15,$38,$15,$34,$15
db $34,$15,$36,$15,$34,$15,$36,$15
db $37,$15,$28,$15,$37,$15,$28,$15
db $02,$15,$03,$15,$12,$15,$05,$15
db $04,$15,$24,$15,$14,$15,$15,$15
db $24,$15,$06,$15,$06,$15,$16,$15
db $12,$15,$12,$15,$12,$15,$12,$15
db $0E,$15,$17,$15,$0F,$15,$55,$15
db $07,$15,$24,$15,$17,$15,$07,$15
db $16,$15,$1B,$15,$0B,$15,$1B,$15
db $0C,$15,$12,$15,$1C,$15,$0C,$15
db $1D,$15,$55,$15,$1E,$15,$55,$15
db $55,$15,$17,$15,$55,$15,$55,$15
db $16,$15,$0B,$15,$12,$15,$12,$15
db $1B,$15,$12,$15,$12,$15,$12,$15
db $1E,$15,$55,$15,$12,$15,$55,$15
db $55,$15,$55,$15,$55,$15,$55,$15
db $80,$1D,$81,$1D,$90,$1D,$91,$1D
db $81,$5D,$80,$5D,$92,$1D,$90,$5D
db $A0,$1D,$A1,$1D,$B0,$1D,$82,$1D
db $A2,$1D,$B1,$1D,$82,$5D,$B2,$1D
db $34,$15,$7C,$15,$34,$15,$7D,$15
db $87,$15,$88,$15,$97,$15,$98,$15
db $83,$1D,$84,$1D,$93,$1D,$94,$1D
db $85,$1D,$86,$1D,$95,$1D,$96,$1D
db $A7,$15,$A8,$15,$B7,$15,$B8,$15
db $34,$15,$8A,$15,$34,$15,$9A,$15
db $89,$15,$8B,$15,$13,$15,$9B,$15
db $A3,$1D,$A4,$1D,$30,$15,$30,$15
db $A5,$1D,$A6,$1D,$30,$15,$30,$15
db $B3,$15,$B4,$15,$B5,$15,$B6,$15
db $A9,$15,$AA,$15,$B9,$15,$32,$15
db $23,$15,$AB,$15,$33,$15,$31,$15
db $35,$15,$16,$15,$34,$15,$26,$15
db $99,$15,$16,$15,$34,$15,$26,$15
db $4C,$15,$4D,$15,$5C,$15,$40,$15
db $4D,$15,$4D,$15,$41,$15,$42,$15
db $4D,$15,$4D,$15,$43,$15,$44,$15
db $4D,$15,$4E,$15,$45,$15,$5D,$15
db $5C,$15,$50,$15,$5C,$15,$60,$15
db $51,$15,$52,$15,$61,$15,$62,$15
db $53,$15,$54,$15,$63,$15,$64,$15
db $55,$15,$5D,$15,$65,$15,$5D,$15
db $5C,$15,$70,$15,$5C,$15,$46,$15
db $71,$15,$72,$15,$47,$15,$48,$15
db $73,$15,$74,$15,$49,$15,$4A,$15
db $75,$15,$5D,$15,$4B,$15,$5D,$15
db $5C,$15,$56,$15,$5C,$15,$66,$15
db $57,$15,$58,$15,$67,$15,$68,$15
db $59,$15,$5A,$15,$69,$15,$6A,$15
db $5B,$15,$5D,$15,$6B,$15,$5D,$15
db $5C,$15,$76,$15,$5E,$15,$6C,$15
db $77,$15,$78,$15,$6C,$15,$6C,$15
db $79,$15,$7A,$15,$6C,$15,$6C,$15
db $7B,$15,$5D,$15,$6C,$15,$6D,$15
db $04,$15,$05,$15,$04,$15,$05,$15
db $06,$15,$34,$15,$06,$15,$34,$15
db $34,$15,$29,$15,$34,$15,$19,$15
db $2A,$15,$2B,$15,$1A,$15,$1B,$15
db $2C,$15,$38,$15,$1C,$15,$38,$15
db $34,$15,$19,$15,$34,$15,$19,$15
db $1A,$15,$1B,$15,$1A,$15,$1B,$15
db $1C,$15,$38,$15,$1C,$15,$38,$15
db $34,$15,$09,$15,$34,$15,$19,$15
db $0A,$15,$0B,$15,$1A,$15,$1B,$15
db $24,$00,$24,$00,$24,$00,$24,$00
db $34,$15,$34,$15,$34,$15,$34,$15
db $34,$15,$36,$15,$34,$15,$36,$15
db $37,$15,$38,$15,$37,$15,$28,$15
db $34,$15,$09,$1D,$34,$15,$34,$15
db $09,$1D,$0A,$1D,$19,$1D,$1A,$1D
db $0B,$1D,$0C,$1D,$1B,$1D,$1C,$1D
db $0C,$5D,$0B,$5D,$1C,$5D,$1B,$5D
db $34,$15,$8D,$1D,$9C,$1D,$9D,$1D
db $AC,$1D,$AD,$1D,$BC,$1D,$BD,$1D
db $8C,$1D,$8E,$1D,$BB,$1D,$9E,$1D
db $AD,$5D,$AC,$5D,$BD,$5D,$BC,$5D
db $0A,$55,$09,$55,$1A,$55,$19,$55
db $00,$15,$01,$15,$10,$15,$11,$15
db $BB,$1D,$BC,$1D,$34,$1D,$88,$1D
db $BD,$1D,$BC,$1D,$89,$1D,$8C,$1D
db $BD,$1D,$BC,$1D,$8D,$1D,$89,$5D
db $34,$15,$34,$15,$34,$15,$CE,$15
db $EC,$15,$ED,$15,$FC,$15,$FD,$15
db $EE,$15,$EF,$15,$FE,$15,$FF,$15
db $34,$15,$34,$15,$CF,$15,$34,$15
db $CE,$15,$CF,$15,$34,$15,$DE,$15
db $D8,$15,$D9,$15,$C9,$15,$FD,$15
db $C1,$15,$C2,$15,$FE,$15,$DF,$15
db $CE,$15,$CF,$15,$DE,$15,$34,$15
db $CE,$15,$CF,$15,$34,$15,$DE,$15
db $D8,$15,$D9,$15,$6E,$15,$FD,$15
db $C1,$15,$C2,$15,$FE,$15,$6F,$15
db $CE,$15,$CF,$15,$DE,$15,$34,$15
db $CE,$15,$CF,$15,$34,$15,$34,$15
db $CE,$15,$CF,$15,$34,$15,$34,$15
db $34,$1D,$A8,$1D,$34,$1D,$A8,$1D
db $A9,$1D,$8A,$1D,$B9,$1D,$B9,$1D
db $34,$15,$DE,$15,$CE,$15,$CF,$15
db $C9,$15,$FD,$15,$D8,$15,$D9,$15
db $FE,$15,$DF,$15,$C1,$15,$C2,$15
db $DE,$15,$34,$15,$CE,$15,$CF,$15
db $1D,$1D,$1E,$1D,$2D,$1D,$2E,$1D
db $1F,$1D,$29,$1D,$2F,$1D,$39,$1D
db $37,$15,$38,$15,$37,$15,$38,$15
db $34,$15,$DE,$15,$34,$15,$34,$15
db $6E,$15,$FD,$15,$34,$15,$34,$15
db $FE,$15,$6F,$15,$34,$15,$34,$15
db $DE,$15,$34,$15,$34,$15,$34,$15
db $3F,$1D,$2A,$1D,$25,$1D,$3A,$1D
db $34,$15,$26,$95,$24,$95,$16,$95
db $27,$95,$38,$15,$17,$95,$18,$95
db $80,$1D,$81,$1D,$90,$1D,$91,$1D
db $82,$1D,$83,$1D,$92,$1D,$93,$1D
db $BD,$1D,$BE,$1D,$88,$1D,$34,$1D
db $B0,$1D,$B1,$1D,$B2,$1D,$2B,$1D
db $20,$15,$21,$15,$30,$15,$31,$15
db $02,$15,$03,$15,$12,$15,$13,$15
db $B1,$5D,$B0,$5D,$2C,$1D,$B2,$5D
db $34,$15,$34,$1D,$34,$15,$34,$1D
db $34,$1D,$98,$1D,$34,$1D,$A8,$1D
db $89,$1D,$8A,$1D,$99,$1D,$9A,$1D
db $8B,$1D,$89,$5D,$9B,$1D,$99,$5D
db $9C,$1D,$34,$1D,$AC,$1D,$34,$1D
db $24,$15,$16,$15,$34,$15,$26,$15
db $17,$15,$18,$15,$27,$15,$28,$15
db $B3,$1D,$3B,$1D,$34,$1D,$8E,$1D
db $3C,$1D,$B3,$5D,$8F,$1D,$34,$1D
db $34,$1D,$A8,$1D,$34,$1D,$A8,$1D
db $A9,$1D,$8A,$1D,$B9,$1D,$B9,$1D
db $8B,$1D,$A9,$5D,$B9,$1D,$BA,$1D
db $AC,$1D,$34,$1D,$AC,$1D,$34,$1D
db $34,$15,$34,$15,$0D,$1D,$0E,$1D
db $34,$15,$34,$15,$0F,$1D,$34,$15
db $1D,$1D,$1E,$1D,$2D,$1D,$2E,$1D
db $1F,$1D,$29,$1D,$2F,$1D,$39,$1D
db $37,$15,$38,$15,$37,$15,$38,$15
db $34,$1D,$A8,$1D,$34,$1D,$B8,$1D
db $8B,$1D,$A9,$5D,$B9,$1D,$B9,$1D
db $AC,$1D,$34,$1D,$BA,$1D,$34,$1D
db $3D,$1D,$3E,$1D,$34,$15,$15,$1D
db $3F,$1D,$2A,$1D,$25,$1D,$3A,$1D
db $34,$15,$26,$95,$24,$95,$16,$95
db $27,$95,$38,$15,$17,$95,$18,$95
db $80,$1D,$81,$1D,$90,$1D,$91,$1D
db $82,$1D,$83,$1D,$92,$1D,$93,$1D
db $32,$15,$22,$15,$10,$15,$11,$15
db $22,$15,$23,$15,$10,$15,$11,$15
db $33,$15,$00,$15,$10,$15,$11,$15
db $A0,$1D,$A1,$1D,$10,$15,$11,$15
db $A2,$1D,$A3,$1D,$10,$15,$11,$15
db $33,$15,$34,$15,$10,$15,$11,$15
db $85,$15,$87,$15,$95,$15,$97,$15
db $84,$15,$86,$15,$94,$15,$96,$15
db $85,$15,$86,$15,$95,$15,$96,$15
db $84,$15,$87,$15,$94,$15,$97,$15
db $84,$15,$85,$15,$94,$15,$95,$15
db $86,$15,$85,$15,$96,$15,$95,$15
db $A6,$15,$A7,$15,$B6,$15,$B7,$15
db $94,$15,$A6,$15,$B4,$15,$B6,$15
db $A6,$15,$A6,$15,$B6,$15,$B6,$15
db $94,$15,$A7,$15,$B4,$15,$B7,$15
db $24,$10,$24,$10,$24,$10,$24,$10
db $0E,$15,$0F,$15,$1E,$15,$1F,$15
db $02,$1D,$03,$1D,$12,$1D,$13,$1D
db $20,$1D,$21,$1D,$30,$1D,$31,$1D
db $2E,$15,$2F,$15,$3E,$15,$3F,$15
db $22,$1D,$23,$1D,$32,$1D,$33,$1D
db $20,$1D,$21,$1D,$1C,$15,$1D,$15
db $28,$15,$29,$15,$10,$1D,$11,$1D
db $2A,$15,$2B,$15,$12,$1D,$13,$1D
db $6C,$15,$6D,$15,$7C,$15,$7D,$15
db $4E,$15,$4F,$15,$5E,$15,$5F,$15
db $6E,$15,$6F,$15,$7E,$15,$7F,$15
db $48,$1D,$49,$1D,$58,$1D,$59,$1D
db $4A,$1D,$4B,$1D,$5A,$1D,$5B,$1D
db $0C,$15,$0D,$15,$1C,$15,$1D,$15
db $68,$1D,$69,$1D,$78,$1D,$79,$1D
db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D
db $28,$15,$29,$15,$38,$15,$39,$15
db $2A,$15,$2B,$15,$3A,$15,$3B,$15
db $08,$15,$09,$15,$18,$15,$19,$15
db $0A,$15,$0B,$15,$1A,$15,$1B,$15
db $06,$1D,$07,$1D,$16,$1D,$17,$15
db $04,$15,$05,$1D,$14,$1D,$15,$1D
db $06,$1D,$03,$1D,$16,$1D,$13,$1D
db $26,$1D,$27,$1D,$36,$1D,$37,$1D
db $24,$1D,$25,$1D,$34,$1D,$35,$1D
db $26,$1D,$23,$1D,$36,$1D,$33,$1D
db $2C,$15,$2D,$15,$3C,$15,$3D,$15
db $3D,$15,$3C,$15,$3C,$15,$3D,$15
db $00,$1D,$01,$1D,$10,$1D,$11,$1D

DATA_0FAE02:
db $48,$01,$48,$01,$22,$07,$2E,$08
db $26,$0A,$B2,$0B,$3A,$11,$80,$12
db $30,$14,$76,$15,$3A,$11,$3A,$11
db $3A,$11,$80,$12,$00,$00,$22,$01
db $AC,$01,$AC,$01,$04,$05,$2C,$06
db $F8,$06,$94,$07,$CE,$07,$3E,$15
db $08,$08,$A0,$08,$00,$0A,$A8,$0A
db $76,$0B,$22,$0C,$FA,$0D,$A4,$0F
db $BC,$11,$58,$15,$22,$01,$EA,$11
db $AA,$15,$DA,$15,$3E,$15,$DA,$15
db $DA,$15,$4A,$15,$58,$15,$00,$00
db $76,$0B,$94,$07,$F8,$06,$AC,$01
db $04,$05,$A4,$0F,$BC,$11,$EA,$11
db $0E,$12,$94,$07,$68,$15,$32,$00
db $32,$00,$F4,$14,$10,$09,$28,$15
db $32,$00,$0E,$15,$68,$06,$68,$06
db $68,$06,$C8,$15,$68,$06,$A0,$13
db $36,$13,$68,$06,$68,$06,$84,$15

DATA_0FAE92:
db $FE,$00,$B9,$B8,$B6,$FE,$00,$BE
db $C3,$C6,$FE,$B4,$B1,$BC,$BD,$B0
db $B5,$FE,$C0,$C1,$C0,$C1,$C0,$C4
db $FE,$B2,$B3,$B2,$B3,$B2,$B3,$B6
db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6
db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6
db $FF,$FE,$B9,$B8,$FE,$BE,$C3,$FE
db $BE,$C3,$FF,$FE,$00,$00,$BA,$B0
db $B5,$FE,$00,$BF,$C1,$C0,$C4,$FE
db $00,$B9,$B3,$B2,$B3,$B6,$FE,$00
db $BE,$C3,$C2,$C3,$C6,$FE,$00,$BA
db $BC,$BD,$BC,$BD,$B0,$B5,$FE,$BF
db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE
db $B9,$B3,$B2,$B3,$B2,$B3,$B2,$B3
db $FE,$BE,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$FE,$BE,$C3,$C2,$C3,$C2,$C3
db $C2,$C3,$FF,$FE,$00,$00,$00,$00
db $C7,$FE,$00,$00,$00,$BF,$C4,$FE
db $00,$00,$00,$B9,$B3,$B6,$00,$B9
db $B8,$BB,$B8,$B6,$FE,$00,$00,$00
db $BE,$C3,$C6,$00,$BE,$C3,$C2,$C3
db $C6,$FE,$00,$00,$B4,$B1,$BC,$BD
db $B0,$B1,$BC,$BD,$BC,$BD,$B0,$B5
db $FE,$00,$00,$C0,$C1,$C0,$C1,$C0
db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE
db $B9,$B8,$B2,$B3,$B2,$B3,$B2,$B3
db $B2,$B3,$B2,$B3,$B2,$B3,$FE,$BE
db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C2,$C3,$FE,$BE,$C3
db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
db $C2,$C3,$C2,$C3,$FF,$FE,$00,$00
db $00,$00,$C7,$FE,$00,$00,$00,$BF
db $C4,$FE,$00,$B9,$B8,$BB,$B3,$BB
db $B8,$B6,$FE,$00,$BE,$C3,$C2,$C3
db $C2,$C3,$C6,$FE,$B4,$B1,$BC,$BD
db $BC,$BD,$BC,$BD,$B0,$B5,$FE,$C0
db $C1,$C0,$C1,$C0,$C1,$C0,$C1,$C0
db $C4,$FE,$B2,$B3,$B2,$B3,$B2,$B3
db $B2,$B3,$B2,$B3,$FE,$C2,$C3,$C2
db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$FE
db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
db $C2,$C3,$FF,$FE,$B6,$FE,$C6,$FE
db $C6,$FF,$FE,$B4,$B1,$FE,$C0,$C1
db $FE,$B2,$B3,$FE,$C2,$C3,$FE,$C2
db $C3,$FF,$FE,$00,$00,$00,$00,$00
db $B9,$B8,$B6,$FE,$00,$00,$00,$00
db $00,$BE,$C3,$C6,$FE,$00,$00,$00
db $00,$B4,$B1,$BC,$BD,$B0,$B5,$FE
db $00,$00,$00,$00,$C0,$C1,$C0,$C1
db $C0,$C4,$FE,$B9,$B8,$BB,$B8,$B2
db $B3,$B2,$B3,$B2,$B3,$FE,$BE,$C3
db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
db $FE,$BE,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$FF,$FE,$00,$00,$00
db $00,$C7,$00,$C7,$FE,$00,$00,$00
db $BF,$C4,$BF,$C4,$FE,$00,$B9,$B8
db $BB,$B3,$BB,$B3,$B6,$FE,$00,$BE
db $C3,$C2,$C3,$C2,$C3,$C6,$FE,$B4
db $B1,$BC,$BD,$BC,$BD,$BC,$BD,$B0
db $B5,$FE,$C0,$C1,$C0,$C1,$C0,$C1
db $C0,$C1,$C0,$C4,$FE,$B2,$B3,$B2
db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$FE
db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
db $C2,$C3,$FE,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C2,$C3,$FF,$FE,$00
db $00,$BA,$B0,$B5,$00,$00,$00,$C7
db $FE,$00,$BF,$C1,$C0,$C4,$00,$00
db $BF,$C4,$FE,$00,$B9,$B3,$B2,$B3
db $B6,$00,$B9,$B3,$BB,$B8,$B6,$FE
db $00,$BE,$C3,$C2,$C3,$C6,$00,$BE
db $C3,$C2,$C3,$C6,$FE,$B4,$B1,$BC
db $BD,$BC,$BD,$B0,$B1,$BC,$BD,$BC
db $BD,$B0,$B1,$B0,$B5,$FE,$C0,$C1
db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1
db $C0,$C1,$C0,$C1,$C0,$C4,$FE,$B2
db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B2
db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B6
db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C6,$FE,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C6,$FF,$FE,$00,$00
db $00,$00,$C7,$FE,$00,$00,$00,$BF
db $C4,$FE,$00,$B9,$B8,$BB,$B3,$B6
db $FE,$00,$BE,$C3,$C2,$C3,$C6,$FE
db $B4,$B1,$BC,$BD,$BC,$BD,$B0,$B5
db $FE,$C0,$C1,$C0,$C1,$C0,$C1,$C0
db $C4,$FE,$B2,$B3,$B2,$B3,$B2,$B3
db $B2,$B3,$FE,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$FE,$C2,$C3,$C2,$C3
db $C2,$C3,$C2,$C3,$FF,$FE,$B4,$B1
db $B0,$B5,$FE,$C0,$C1,$C0,$C8,$FE
db $B2,$B3,$B2,$B3,$B6,$FE,$C2,$C3
db $C2,$C3,$C6,$FE,$C2,$C3,$C2,$C3
db $C6,$FF,$FE,$00,$00,$00,$00,$00
db $B4,$B5,$00,$C7,$B4,$B5,$FE,$00
db $00,$00,$00,$00,$C0,$C8,$BF,$C8
db $C0,$C8,$FE,$00,$00,$00,$B9,$B8
db $B2,$B3,$BB,$B3,$B2,$B3,$B6,$FE
db $00,$00,$00,$BE,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C6,$FE,$00,$BA,$B0
db $B1,$BC,$BD,$BC,$BD,$BC,$BD,$BC
db $BD,$B0,$B5,$FE,$BF,$C1,$C0,$C1
db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1
db $C0,$C4,$FE,$B9,$B3,$B2,$B3,$B2
db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B2
db $B3,$BB,$B8,$B6,$FE,$BE,$C3,$C2
db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C2,$C3,$C6,$FE,$BE
db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C6
db $FF,$FE,$00,$00,$B4,$B1,$B0,$B5
db $FE,$00,$00,$C0,$C1,$C0,$C4,$FE
db $BB,$B8,$B2,$B3,$B2,$B3,$B6,$FE
db $C2,$C3,$C2,$C3,$C2,$C3,$C6,$FE
db $C2,$C3,$C2,$C3,$C2,$C3,$C6,$FF
db $FE,$00,$00,$00,$00,$00,$00,$00
db $C7,$FE,$00,$00,$00,$00,$00,$00
db $BF,$C4,$FE,$00,$00,$B9,$B8,$B6
db $00,$B9,$B3,$BB,$B8,$B6,$FE,$00
db $00,$BE,$C3,$C6,$00,$BE,$C3,$C2
db $C3,$C6,$FE,$00,$00,$BA,$BC,$BD
db $B0,$B1,$BC,$BD,$BC,$BD,$B0,$B5
db $FE,$00,$BF,$C1,$C0,$C1,$C0,$C1
db $C0,$C1,$C0,$C1,$C0,$C4,$FE,$00
db $B9,$B3,$B2,$B3,$B2,$B3,$B2,$B3
db $B2,$B3,$B2,$B3,$B6,$FE,$00,$BE
db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C6,$FE,$B4,$B1,$BC
db $BD,$BC,$BD,$BC,$BD,$BC,$BD,$BC
db $BD,$BC,$BD,$B0,$B5,$FE,$C0,$C1
db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1
db $C0,$C1,$C0,$C1,$C0,$C4,$FE,$B2
db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B2
db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B6
db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C6,$FE,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
db $C3,$C2,$C3,$C6,$FF

DATA_0FB2EF:
db $03,$04,$05,$FE,$12,$13,$16,$06
db $07,$FE,$12,$13,$16,$16,$16,$17
db $18,$FE,$12,$13,$16,$16,$16,$16
db $08,$09,$18,$FE,$12,$13,$16,$16
db $16,$16,$16,$16,$19,$1A,$18,$FE
db $12,$13,$16,$16,$16,$16,$16,$16
db $16,$16,$0A,$1C,$18,$FE,$12,$13
db $16,$16,$16,$16,$16,$16,$16,$16
db $16,$08,$1B,$1C,$18,$FE,$12,$13
db $16,$16,$16,$16,$16,$16,$16,$16
db $16,$16,$16,$19,$0C,$0B,$18,$FE
db $12,$13,$16,$16,$16,$16,$16,$16
db $16,$16,$16,$16,$16,$16,$16,$0A
db $1C,$0B,$18,$FE,$12,$13,$16,$16
db $16,$16,$16,$16,$16,$16,$16,$16
db $16,$16,$16,$16,$08,$1B,$1C,$0B
db $18,$FE,$12,$13,$16,$16,$16,$16
db $16,$16,$16,$16,$16,$16,$16,$16
db $16,$16,$16,$16,$19,$1C,$1C,$0B
db $18,$FF,$FE,$13,$24,$FE,$FE,$13
db $23,$16,$16,$16,$16,$32,$FF,$FE
db $13,$27,$FE,$13,$2C,$2D,$26,$FE
db $13,$20,$2E,$2F,$FE,$13,$16,$16
db $16,$16,$16,$24,$FE,$13,$16,$16
db $16,$16,$16,$16,$16,$16,$0A,$32
db $FF,$FE,$13,$23,$FE,$13,$20,$FF
db $FE,$13,$24,$FE,$FE,$13,$27,$16
db $16,$26,$FE,$FF,$FE,$FE,$13,$24
db $FE,$13,$16,$16,$16,$2B,$FE,$FE
db $13,$16,$16,$16,$25,$16,$16,$16
db $26,$FE,$13,$16,$23,$16,$24,$16
db $16,$16,$24,$FE,$13,$16,$20,$16
db $16,$16,$16,$16,$27,$FF,$FE,$13
db $24,$FE,$13,$16,$16,$25,$FE,$13
db $26,$FE,$13,$16,$16,$16,$24,$16
db $27,$FE,$13,$16,$16,$16,$16,$16
db $2C,$2D,$16,$0A,$32,$FF,$FE,$FE
db $13,$16,$16,$25,$FE,$13,$16,$16
db $27,$FE,$13,$16,$16,$16,$16,$2C
db $2D,$FE,$13,$24,$23,$16,$16,$16
db $2E,$2F,$16,$0A,$32,$FE,$13,$16
db $16,$16,$16,$16,$16,$16,$16,$16
db $08,$1B,$33,$FE,$13,$16,$16,$16
db $16,$28,$20,$22,$FE,$13,$16,$16
db $16,$16,$16,$29,$2A,$16,$16,$16
db $16,$26,$21,$0A,$30,$FE,$13,$16
db $16,$16,$16,$16,$16,$16,$16,$16
db $16,$16,$16,$16,$20,$FF

DATA_0FB46D:
db $1A,$1B,$FE,$01,$02,$FE,$01,$02
db $FE,$01,$02,$FE,$01,$02,$FE,$01
db $02,$FE,$01,$02,$FE,$01,$26,$FE
db $2C,$2D,$FE,$30,$31,$32,$FF,$04
db $05,$06,$07,$FE,$0D,$0E,$0F,$10
db $FE,$16,$17,$18,$19,$FE,$1E,$1F
db $20,$21,$FE,$1E,$17,$18,$21,$FE
db $27,$1F,$28,$29,$FF,$FE,$11,$14
db $FE,$1C,$1D,$FF,$FE,$22,$23,$FE
db $24,$25,$FE,$2A,$2B,$FE,$2E,$2F
db $FE,$33,$34,$FF,$FE,$41,$42,$43
db $44,$FE,$45,$46,$47,$48,$FE,$49
db $4A,$4B,$4C,$FE,$4D,$4E,$4F,$50
db $FE,$51,$52,$53,$54,$FF,$FE,$0C
db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$FE
db $12,$13,$12,$13,$12,$13,$12,$13
db $12,$13,$12,$13,$12,$13,$12,$13
db $FE,$36,$37,$38,$36,$39,$3A,$3B
db $3B,$36,$3A,$3B,$3B,$3B,$36,$3A
db $38,$FE,$3C,$3D,$3E,$3C,$3F,$3D
db $3E,$3E,$3C,$3D,$3E,$3E,$3E,$3C
db $3D,$3E,$FF,$22,$23,$FE,$24,$25
db $FE,$2A,$2B,$FE,$33,$34,$FF

DATA_0FB52C:
db $08,$FE,$0C,$FF,$14,$15,$16,$17
db $FE,$1D,$1E,$1F,$20,$FE,$1D,$1E
db $1F,$20,$FE,$1D,$2A,$2B,$20,$FF
db $18,$19,$1A,$1B,$FE,$21,$22,$23
db $24,$FE,$21,$22,$23,$24,$FE,$21
db $22,$23,$24,$FF,$00,$00,$00,$00
db $01,$02,$FE,$00,$00,$01,$03,$05
db $06,$04,$02,$FE,$01,$03,$05,$09
db $09,$09,$09,$06,$04,$02,$FE,$05
db $09,$09,$09,$09,$09,$09,$09,$09
db $06,$FF,$01,$03,$04,$03,$04,$02
db $FE,$07,$08,$09,$09,$08,$0A,$FE
db $0B,$0C,$09,$09,$0C,$0D,$0E,$FE
db $11,$09,$09,$09,$09,$12,$13,$FE
db $11,$18,$19,$1A,$1B,$12,$13,$FE
db $11,$21,$22,$23,$24,$12,$13,$FE
db $11,$21,$22,$23,$24,$12,$13,$FE
db $11,$21,$22,$23,$24,$12,$13,$FF
db $02,$10,$10,$10,$10,$10,$10,$10
db $10,$10,$10,$10,$10,$10,$10,$01
db $FE,$35,$04,$03,$04,$03,$04,$03
db $04,$03,$04,$03,$04,$03,$04,$03
db $36,$FF

DATA_0FB5DE:
db $00,$00,$00,$00,$00,$00,$00,$07
db $01,$02,$03,$04,$01,$02,$03,$04
db $00,$00,$00,$00,$00,$00,$10,$11
db $0A,$0B,$0C,$0D,$0A,$0B,$0C,$0D
db $00,$00,$17,$18,$00,$00,$19,$15
db $16,$12,$14,$15,$16,$12,$14,$15
db $23,$24,$25,$22,$23,$24,$25,$1F
db $20,$21,$1E,$1F,$20,$21,$1E,$1F
db $FF,$08,$09,$03,$04,$05,$06,$00
db $00,$00,$00,$00,$07,$08,$09,$03
db $04,$0A,$0B,$0C,$0D,$0E,$0F,$00
db $00,$00,$00,$10,$11,$0A,$0B,$0C
db $0D,$16,$12,$14,$15,$16,$12,$17
db $18,$00,$00,$19,$15,$16,$12,$14
db $15,$20,$21,$1E,$1F,$20,$21,$1E
db $22,$23,$24,$25,$1F,$20,$21,$1E
db $26,$FF,$01,$02,$03,$04,$08,$09
db $03,$04,$08,$09,$03,$04,$05,$06
db $00,$00,$0A,$0B,$0C,$0D,$0A,$0B
db $0C,$0D,$0A,$0B,$0C,$0D,$0E,$0F
db $00,$00,$0A,$12,$13,$0D,$0A,$12
db $13,$0D,$0A,$12,$14,$15,$16,$12
db $17,$18,$1A,$1B,$1C,$1D,$1A,$1B
db $1C,$1D,$1A,$1B,$1E,$1F,$20,$21
db $1E,$22,$FF

DATA_0FB6A1:
db $91,$E0,$42,$E0,$10,$E0,$50,$A8
db $80,$A8,$00,$E0,$60,$8C,$B0,$8C
db $00,$E0,$50,$A8,$80,$A8,$00,$E0
db $70,$70,$90,$70,$50,$A8,$B0,$A8
db $70,$9C,$00,$E0,$00,$E0,$40,$A8
db $A0,$A8,$00,$E0,$70,$24,$E0,$24
db $F0,$E3,$12,$E0,$60,$E0,$50,$E0
db $43,$E0,$10,$45,$10,$6D,$00,$61
db $30,$15,$20,$55,$00,$29,$60,$A9
db $70,$C9,$82,$AD,$92,$CD,$A0,$B9
db $B0,$D9,$40,$2D,$50,$4D,$07,$20
db $25,$00,$15,$1C,$00,$E0,$10,$45
db $10,$6D,$30,$15,$20,$55,$00,$29
db $40,$2D,$50,$4D,$07,$20,$25,$00
db $15,$1C,$00,$E0,$10,$45,$10,$6D
db $00,$61,$30,$15,$20,$55,$00,$29
db $60,$A9,$70,$C9,$82,$AD,$92,$CD
db $A0,$B9,$B0,$D9,$40,$2D,$50,$4D
db $07,$20,$25,$00,$15,$1C,$00,$E0
db $10,$45,$10,$6D,$30,$15,$20,$55
db $00,$29,$40,$2D,$50,$4D,$07,$20
db $25,$00,$15,$1C,$00,$E0,$10,$45
db $10,$6D,$00,$61,$30,$15,$20,$55
db $00,$29,$60,$A9,$70,$C9,$82,$AD
db $92,$CD,$A0,$B9,$B0,$D9,$40,$2D
db $50,$4D,$07,$20,$25,$00,$15,$1C
db $00,$E0,$10,$45,$10,$6D,$30,$15
db $20,$55,$00,$29,$40,$2D,$50,$4D
db $07,$20,$25,$00,$15,$1C,$00,$E0
db $10,$45,$10,$6D,$00,$61,$30,$15
db $20,$55,$00,$29,$60,$A9,$70,$C9
db $82,$AD,$92,$CD,$A0,$B9,$B0,$D9
db $40,$2D,$50,$4D,$07,$20,$25,$00
db $15,$1C,$00,$E0,$10,$45,$10,$6D
db $30,$15,$20,$55,$00,$29,$40,$2D
db $50,$4D,$07,$20,$25,$00,$15,$1C
db $F0,$E3,$91,$E0,$4E,$E0,$10,$E0
db $A0,$E0,$03,$A8,$00,$BC,$00,$E0
db $02,$A8,$00,$E0,$00,$A4,$01,$AC
db $00,$E0,$03,$A8,$00,$E0,$01,$A4
db $01,$AC,$08,$BC,$00,$E0,$F0,$E3
db $46,$E0,$50,$E0,$03,$00,$03,$10
db $19,$40,$19,$50,$3F,$40,$26,$08
db $26,$18,$00,$E0,$03,$0C,$19,$4C
db $03,$1C,$19,$5C,$3F,$40,$26,$04
db $26,$14,$00,$E0,$03,$08,$19,$48
db $3A,$40,$26,$00,$49,$54,$45,$9C
db $60,$30,$00,$E0,$07,$0C,$13,$8C
db $07,$18,$13,$98,$3F,$80,$26,$04
db $50,$30,$60,$60,$00,$E0,$50,$28
db $07,$00,$13,$80,$07,$10,$13,$90
db $3F,$80,$80,$54,$00,$E0,$07,$00
db $13,$80,$07,$14,$13,$94,$3F,$80
db $80,$44,$F0,$E3,$11,$E0,$4B,$E0
db $31,$E0,$10,$00,$11,$0C,$12,$10
db $13,$1C,$14,$24,$15,$28,$16,$30
db $16,$4C,$17,$54,$18,$5C,$19,$60
db $1A,$64,$1B,$68,$1C,$6C,$16,$78
db $1D,$80,$1E,$90,$07,$81,$10,$85
db $11,$99,$00,$E0,$1F,$18,$20,$20
db $21,$24,$22,$2C,$23,$30,$20,$38
db $24,$40,$25,$50,$26,$58,$27,$5C
db $28,$64,$29,$6C,$2A,$74,$2B,$78
db $2C,$88,$2D,$90,$2F,$98,$07,$81
db $10,$85,$10,$99,$00,$E0,$10,$00
db $11,$0C,$12,$10,$13,$1C,$14,$24
db $15,$28,$16,$30,$16,$4C,$17,$54
db $18,$5C,$19,$60,$1A,$64,$1B,$68
db $1C,$6C,$16,$78,$1D,$80,$1E,$90
db $07,$81,$10,$85,$11,$99,$00,$E0
db $1F,$18,$20,$20,$21,$24,$22,$2C
db $23,$30,$20,$38,$24,$40,$25,$50
db $26,$58,$27,$5C,$28,$64,$29,$6C
db $2A,$74,$2B,$78,$2C,$88,$2D,$90
db $2F,$98,$07,$81,$10,$85,$10,$99
db $00,$E0,$30,$00,$31,$18,$20,$20
db $32,$24,$1B,$2C,$23,$30,$33,$38
db $34,$40,$35,$48,$36,$54,$37,$58
db $38,$5C,$39,$64,$3A,$68,$3B,$6C
db $3C,$70,$3D,$74,$3E,$78,$3F,$94
db $07,$81,$11,$89,$10,$99,$00,$E0
db $1F,$18,$20,$20,$21,$24,$22,$2C
db $23,$30,$20,$38,$24,$40,$25,$50
db $26,$58,$27,$5C,$28,$64,$29,$6C
db $2A,$74,$2B,$78,$2C,$88,$2D,$90
db $2F,$98,$07,$81,$10,$85,$10,$99
db $00,$E0,$10,$00,$11,$0C,$12,$10
db $13,$1C,$14,$24,$15,$28,$16,$30
db $16,$4C,$17,$54,$18,$5C,$19,$60
db $1A,$64,$1B,$68,$1C,$6C,$16,$78
db $1D,$80,$1E,$90,$07,$81,$10,$85
db $11,$99,$00,$E0,$1F,$18,$20,$20
db $21,$24,$22,$2C,$23,$30,$20,$38
db $24,$40,$25,$50,$26,$58,$27,$5C
db $28,$64,$29,$6C,$2A,$74,$2B,$78
db $2C,$88,$2D,$90,$2F,$98,$07,$81
db $10,$85,$10,$99,$00,$E0,$10,$00
db $11,$0C,$12,$10,$13,$1C,$14,$24
db $15,$28,$16,$30,$16,$4C,$17,$54
db $18,$5C,$19,$60,$1A,$64,$1B,$68
db $1C,$6C,$16,$78,$1D,$80,$1E,$90
db $07,$81,$10,$85,$11,$99,$00,$E0
db $1F,$18,$20,$20,$21,$24,$22,$2C
db $23,$30,$20,$38,$24,$40,$25,$50
db $26,$58,$27,$5C,$28,$64,$29,$6C
db $2A,$74,$2B,$78,$2C,$88,$2D,$90
db $2F,$98,$07,$81,$10,$85,$10,$99
db $F0,$E3,$11,$E0,$4B,$E0,$31,$E0
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$07,$81,$10,$85,$11,$99
db $00,$E0,$1F,$18,$20,$20,$21,$24
db $22,$2C,$23,$30,$20,$38,$24,$40
db $25,$50,$26,$58,$27,$5C,$28,$64
db $29,$6C,$2A,$74,$2B,$78,$2C,$88
db $2D,$90,$2F,$98,$07,$81,$10,$85
db $10,$99,$00,$E0,$10,$00,$11,$0C
db $12,$10,$13,$1C,$14,$24,$15,$28
db $16,$30,$16,$4C,$17,$54,$18,$5C
db $19,$60,$1A,$64,$1B,$68,$1C,$6C
db $16,$78,$1D,$80,$1E,$90,$07,$81
db $10,$85,$11,$99,$00,$E0,$1F,$18
db $20,$20,$21,$24,$22,$2C,$23,$30
db $20,$38,$24,$40,$25,$50,$26,$58
db $27,$5C,$28,$64,$29,$6C,$2A,$74
db $2B,$78,$2C,$88,$2D,$90,$2F,$98
db $07,$81,$10,$85,$10,$99,$00,$E0
db $30,$00,$31,$18,$20,$20,$32,$24
db $1B,$2C,$23,$30,$33,$38,$34,$40
db $35,$48,$36,$54,$37,$58,$38,$5C
db $39,$64,$3A,$68,$3B,$6C,$3C,$70
db $3D,$74,$3E,$78,$3F,$94,$07,$81
db $11,$89,$10,$99,$00,$E0,$1F,$18
db $20,$20,$21,$24,$22,$2C,$23,$30
db $20,$38,$24,$40,$25,$50,$26,$58
db $27,$5C,$28,$64,$29,$6C,$2A,$74
db $2B,$78,$2C,$88,$2D,$90,$2F,$98
db $07,$81,$10,$85,$10,$99,$10,$00
db $11,$0C,$12,$10,$13,$1C,$14,$24
db $15,$28,$16,$30,$16,$4C,$17,$54
db $18,$5C,$19,$60,$1A,$64,$1B,$68
db $1C,$6C,$16,$78,$1D,$80,$1E,$90
db $07,$81,$10,$85,$11,$99,$00,$E0
db $1F,$18,$20,$20,$21,$24,$22,$2C
db $23,$30,$20,$38,$24,$40,$25,$50
db $26,$58,$27,$5C,$28,$64,$29,$6C
db $2A,$74,$2B,$78,$2C,$88,$2D,$90
db $2F,$98,$07,$81,$10,$85,$10,$99
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$07,$81,$10,$85,$11,$99
db $00,$E0,$1F,$18,$20,$20,$21,$24
db $22,$2C,$23,$30,$20,$38,$24,$40
db $25,$50,$26,$58,$27,$5C,$28,$64
db $29,$6C,$2A,$74,$2B,$78,$2C,$88
db $2D,$90,$2F,$98,$07,$81,$10,$85
db $10,$99,$F0,$E3,$4B,$E0,$11,$E0
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$00,$E0,$1F,$18,$20,$20
db $21,$24,$22,$2C,$23,$30,$20,$38
db $24,$40,$25,$50,$26,$58,$27,$5C
db $28,$64,$29,$6C,$2A,$74,$2B,$78
db $2C,$88,$2D,$90,$2F,$98,$00,$E0
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$00,$E0,$30,$00,$31,$18
db $20,$20,$32,$24,$1B,$2C,$23,$30
db $33,$38,$34,$40,$35,$48,$36,$54
db $37,$58,$38,$5C,$39,$64,$3A,$68
db $3B,$6C,$3C,$70,$3D,$74,$3E,$78
db $3F,$94,$00,$E0,$1F,$18,$20,$20
db $21,$24,$22,$2C,$23,$30,$20,$38
db $24,$40,$25,$50,$26,$58,$27,$5C
db $28,$64,$29,$6C,$2A,$74,$2B,$78
db $2C,$88,$2D,$90,$2F,$98,$00,$E0
db $1F,$18,$20,$20,$21,$24,$22,$2C
db $23,$30,$20,$38,$24,$40,$25,$50
db $26,$58,$27,$5C,$28,$64,$29,$6C
db $2A,$74,$2B,$78,$2C,$88,$2D,$90
db $2F,$98,$00,$E0,$1F,$18,$20,$20
db $21,$24,$22,$2C,$23,$30,$20,$38
db $24,$40,$25,$50,$26,$58,$27,$5C
db $28,$64,$29,$6C,$2A,$74,$2B,$78
db $2C,$88,$2D,$90,$2F,$98,$00,$E0
db $1F,$18,$20,$20,$21,$24,$22,$2C
db $23,$30,$20,$38,$24,$40,$25,$50
db $26,$58,$27,$5C,$28,$64,$29,$6C
db $2A,$74,$2B,$78,$2C,$88,$2D,$90
db $2F,$98,$F0,$E3,$91,$E0,$45,$E0
db $10,$E0,$20,$88,$10,$B8,$00,$7C
db $00,$E0,$90,$58,$A0,$48,$00,$E0
db $B0,$98,$00,$E0,$10,$A4,$00,$68
db $C0,$5C,$00,$E0,$00,$E0,$10,$A0
db $00,$64,$D0,$90,$00,$E0,$10,$A4
db $00,$68,$C0,$5C,$00,$E0,$00,$E0
db $10,$A0,$00,$64,$D0,$90,$F0,$E3
db $91,$E0,$70,$E0,$48,$E0,$20,$E0
db $00,$69,$63,$81,$70,$89,$80,$91
db $10,$95,$20,$99,$30,$9D,$93,$A1
db $A0,$B1,$72,$B5,$00,$E0,$B0,$81
db $D0,$85,$62,$89,$80,$95,$C0,$A1
db $93,$A5,$A0,$B5,$61,$B9,$30,$68
db $10,$70,$30,$98,$00,$E0,$10,$69
db $21,$6D,$30,$75,$B0,$79,$D0,$7D
db $B0,$81,$D0,$85,$73,$89,$C0,$99
db $90,$9D,$C0,$A1,$96,$A5,$30,$5C
db $00,$E0,$60,$61,$80,$65,$10,$69
db $22,$6D,$30,$79,$90,$81,$A0,$85
db $74,$89,$60,$9D,$97,$A1,$10,$40
db $00,$E0,$60,$81,$80,$85,$40,$99
db $50,$9D,$90,$A1,$A0,$A5,$80,$A9
db $B0,$B5,$F0,$B9,$70,$BD,$10,$60
db $10,$AC,$00,$E0,$07,$82,$77,$A1
db $00,$E0,$07,$82,$77,$A1,$F0,$E3
db $91,$E0,$4E,$E0,$10,$E0,$A0,$E0
db $03,$A8,$00,$BC,$00,$E0,$02,$A8
db $00,$E0,$00,$A4,$01,$AC,$00,$E0
db $03,$A8,$00,$E0,$01,$A4,$00,$E0
db $01,$A4,$01,$AC,$08,$BC,$00,$E0
db $F0,$E3,$46,$E0,$50,$E0,$07,$00
db $07,$10,$17,$60,$17,$70,$3F,$60
db $26,$08,$90,$B8,$00,$E0,$05,$00
db $05,$10,$17,$60,$17,$70,$3F,$60
db $26,$08,$A0,$B4,$00,$E0,$05,$00
db $17,$60,$39,$60,$47,$70,$60,$48
db $90,$A8,$50,$38,$00,$E0,$05,$10
db $17,$70,$3B,$68,$47,$64,$60,$58
db $00,$E0,$05,$00,$17,$60,$05,$10
db $17,$70,$3F,$60,$26,$08,$60,$58
db $90,$B8,$00,$E0,$05,$00,$17,$60
db $05,$10,$17,$70,$3F,$60,$26,$08
db $80,$54,$00,$E0,$3F,$60,$80,$44
db $80,$50,$00,$E0,$3F,$60,$80,$44
db $80,$50,$F0,$E3,$91,$E0,$42,$E0
db $10,$E0,$50,$B0,$80,$B0,$00,$E0
db $70,$6C,$90,$6C,$F3,$A4,$00,$E0
db $60,$74,$B0,$74,$40,$AC,$A0,$AC
db $00,$E0,$60,$80,$B0,$80,$F9,$A4
db $00,$E0,$00,$E0,$60,$90,$60,$40
db $C0,$40,$F2,$B4,$00,$E0,$70,$38
db $E0,$38,$F4,$A4,$F0,$E3,$91,$E0
db $42,$E0,$10,$E0,$50,$B0,$80,$B0
db $00,$E0,$70,$6C,$90,$6C,$F3,$A4
db $00,$E0,$60,$74,$B0,$74,$40,$AC
db $A0,$AC,$00,$E0,$60,$80,$B0,$80
db $F9,$A4,$00,$E0,$00,$E0,$60,$90
db $60,$40,$C0,$40,$F2,$B4,$00,$E0
db $70,$38,$E0,$38,$F4,$A4,$F0,$E3
db $91,$E0,$4E,$E0,$10,$E0,$A0,$E0
db $03,$A8,$00,$BC,$00,$E0,$02,$A8
db $00,$E0,$00,$A4,$01,$AC,$00,$E0
db $03,$A8,$00,$E0,$01,$A4,$01,$AC
db $08,$BC,$00,$E0,$F0,$E3,$46,$E0
db $50,$E0,$07,$00,$07,$10,$17,$60
db $17,$70,$3F,$60,$26,$08,$90,$B8
db $00,$E0,$05,$00,$05,$10,$17,$60
db $17,$70,$3F,$60,$26,$08,$A0,$B4
db $00,$E0,$05,$00,$17,$60,$39,$60
db $47,$70,$60,$48,$90,$A8,$50,$38
db $00,$E0,$05,$10,$17,$70,$3B,$68
db $47,$64,$60,$58,$00,$E0,$05,$00
db $17,$60,$05,$10,$17,$70,$3F,$60
db $26,$08,$60,$58,$90,$B8,$00,$E0
db $05,$00,$17,$60,$05,$10,$17,$70
db $3F,$60,$26,$08,$80,$54,$00,$E0
db $3F,$60,$80,$44,$80,$50,$00,$E0
db $3F,$60,$80,$44,$80,$50,$F0,$E3
db $91,$E0,$45,$E0,$10,$E0,$20,$88
db $10,$B8,$00,$7C,$00,$E0,$90,$58
db $A0,$48,$00,$E0,$B0,$98,$00,$E0
db $10,$A4,$00,$68,$C0,$5C,$00,$E0
db $00,$E0,$10,$A0,$00,$64,$D0,$90
db $00,$E0,$20,$88,$10,$B8,$00,$7C
db $00,$E0,$90,$58,$A0,$48,$00,$E0
db $B0,$98,$00,$E0,$10,$A4,$00,$68
db $C0,$5C,$00,$E0,$00,$E0,$10,$A0
db $00,$64,$D0,$90,$00,$E0,$10,$A0
db $00,$64,$D0,$90,$00,$E0,$20,$88
db $10,$B8,$00,$7C,$00,$E0,$90,$58
db $A0,$48,$00,$E0,$B0,$98,$00,$E0
db $10,$A4,$00,$68,$C0,$5C,$F0,$E3
db $12,$E0,$60,$E0,$50,$E0,$43,$E0
db $10,$45,$10,$6D,$00,$61,$30,$15
db $20,$55,$00,$29,$60,$A9,$70,$C9
db $82,$AD,$92,$CD,$A0,$B9,$B0,$D9
db $40,$2D,$50,$4D,$07,$20,$25,$00
db $15,$1C,$00,$E0,$10,$45,$10,$6D
db $30,$15,$20,$55,$00,$29,$40,$2D
db $50,$4D,$07,$20,$25,$00,$15,$1C
db $00,$E0,$10,$45,$10,$6D,$00,$61
db $30,$15,$20,$55,$00,$29,$60,$A9
db $70,$C9,$82,$AD,$92,$CD,$A0,$B9
db $B0,$D9,$40,$2D,$50,$4D,$07,$20
db $25,$00,$15,$1C,$00,$E0,$10,$45
db $10,$6D,$30,$15,$20,$55,$00,$29
db $40,$2D,$50,$4D,$07,$20,$25,$00
db $15,$1C,$00,$E0,$10,$45,$10,$6D
db $00,$61,$30,$15,$20,$55,$00,$29
db $60,$A9,$70,$C9,$82,$AD,$92,$CD
db $A0,$B9,$B0,$D9,$40,$2D,$50,$4D
db $07,$20,$25,$00,$15,$1C,$00,$E0
db $10,$45,$10,$6D,$30,$15,$20,$55
db $00,$29,$40,$2D,$50,$4D,$07,$20
db $25,$00,$15,$1C,$00,$E0,$10,$45
db $10,$6D,$00,$61,$30,$15,$20,$55
db $00,$29,$60,$A9,$70,$C9,$82,$AD
db $92,$CD,$A0,$B9,$B0,$D9,$40,$2D
db $50,$4D,$07,$20,$25,$00,$15,$1C
db $00,$E0,$10,$45,$10,$6D,$30,$15
db $20,$55,$00,$29,$40,$2D,$50,$4D
db $07,$20,$25,$00,$15,$1C,$F0,$E3
db $90,$E0,$4E,$E0,$10,$E0,$A0,$E0
db $03,$A8,$00,$BC,$00,$E0,$02,$A8
db $00,$E0,$00,$A4,$01,$AC,$00,$E0
db $03,$A8,$00,$E0,$01,$A4,$01,$AC
db $08,$BC,$00,$E0,$F0,$E3,$46,$E0
db $50,$E0,$03,$00,$03,$10,$19,$40
db $19,$50,$3F,$40,$26,$08,$26,$18
db $00,$E0,$03,$00,$03,$10,$19,$40
db $19,$50,$3F,$40,$26,$08,$26,$18
db $00,$E0,$03,$0C,$19,$4C,$03,$1C
db $19,$5C,$3F,$40,$26,$04,$26,$14
db $00,$E0,$03,$08,$19,$48,$3A,$40
db $26,$00,$49,$54,$45,$9C,$60,$30
db $00,$E0,$07,$0C,$13,$8C,$07,$18
db $13,$98,$3F,$80,$26,$04,$50,$30
db $60,$60,$00,$E0,$50,$28,$07,$00
db $13,$80,$07,$10,$13,$90,$3F,$80
db $80,$54,$00,$E0,$07,$00,$13,$80
db $07,$14,$13,$94,$3F,$80,$80,$44
db $00,$E0,$07,$00,$13,$80,$07,$14
db $13,$94,$3F,$80,$80,$44,$F0,$E3
db $91,$E0,$10,$E0,$45,$E0,$10,$A4
db $00,$68,$20,$5C,$00,$E0,$00,$6C
db $00,$E0,$30,$40,$40,$5C,$00,$E0
db $20,$50,$60,$90,$00,$E0,$50,$A0
db $20,$84,$70,$78,$00,$E0,$80,$4C
db $00,$E0,$90,$40,$00,$E0,$50,$A0
db $20,$84,$70,$78,$00,$E0,$80,$4C
db $00,$E0,$90,$40,$F0,$E3,$91,$E0
db $70,$E0,$48,$E0,$20,$E0,$00,$69
db $63,$81,$70,$89,$80,$91,$10,$95
db $20,$99,$30,$9D,$93,$A1,$A0,$B1
db $72,$B5,$00,$E0,$B0,$81,$D0,$85
db $62,$89,$80,$95,$C0,$A1,$93,$A5
db $A0,$B5,$61,$B9,$30,$68,$10,$70
db $30,$98,$00,$E0,$10,$69,$21,$6D
db $30,$75,$B0,$79,$D0,$7D,$B0,$81
db $D0,$85,$73,$89,$C0,$99,$90,$9D
db $C0,$A1,$96,$A5,$30,$5C,$00,$E0
db $60,$61,$80,$65,$10,$69,$22,$6D
db $30,$79,$90,$81,$A0,$85,$74,$89
db $60,$9D,$97,$A1,$10,$40,$00,$E0
db $60,$81,$80,$85,$40,$99,$50,$9D
db $90,$A1,$A0,$A5,$80,$A9,$B0,$B5
db $F0,$B9,$70,$BD,$10,$60,$10,$AC
db $00,$E0,$07,$82,$77,$A1,$00,$E0
db $07,$82,$77,$A1,$F0,$E3,$91,$E0
db $10,$E0,$B0,$E0,$C0,$E0,$10,$90
db $00,$E0,$00,$88,$10,$B0,$25,$A4
db $00,$E0,$10,$68,$20,$B4,$2F,$BC
db $00,$E0,$10,$88,$00,$B8,$00,$E0
db $00,$A8,$10,$98,$20,$A4,$00,$E0
db $00,$68,$20,$A4,$20,$B4,$2F,$BC
db $00,$E0,$10,$68,$20,$BC,$00,$E0
db $F0,$E3,$46,$E0,$50,$E0,$07,$00
db $07,$10,$17,$60,$17,$70,$3F,$60
db $26,$08,$90,$B8,$00,$E0,$05,$00
db $05,$10,$17,$60,$17,$70,$3F,$60
db $26,$08,$90,$B4,$00,$E0,$05,$00
db $17,$60,$39,$60,$47,$70,$60,$48
db $90,$A8,$50,$38,$00,$E0,$05,$10
db $17,$70,$3B,$68,$47,$64,$60,$58
db $00,$E0,$05,$00,$17,$60,$05,$10
db $17,$70,$3F,$60,$26,$08,$60,$58
db $90,$B8,$00,$E0,$05,$00,$17,$60
db $05,$10,$17,$70,$3F,$60,$26,$08
db $00,$E0,$3F,$60,$80,$44,$80,$50
db $00,$E0,$3F,$60,$80,$44,$80,$50
db $F0,$E3,$11,$E0,$4B,$E0,$31,$E0
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$07,$81,$10,$85,$11,$99
db $00,$E0,$1F,$18,$20,$20,$21,$24
db $22,$2C,$23,$30,$20,$38,$24,$40
db $25,$50,$26,$58,$27,$5C,$28,$64
db $29,$6C,$2A,$74,$2B,$78,$2C,$88
db $2D,$90,$2F,$98,$07,$81,$10,$85
db $10,$99,$00,$E0,$10,$00,$11,$0C
db $12,$10,$13,$1C,$14,$24,$15,$28
db $16,$30,$16,$4C,$17,$54,$18,$5C
db $19,$60,$1A,$64,$1B,$68,$1C,$6C
db $16,$78,$1D,$80,$1E,$90,$07,$81
db $10,$85,$11,$99,$00,$E0,$1F,$18
db $20,$20,$21,$24,$22,$2C,$23,$30
db $20,$38,$24,$40,$25,$50,$26,$58
db $27,$5C,$28,$64,$29,$6C,$2A,$74
db $2B,$78,$2C,$88,$2D,$90,$2F,$98
db $07,$81,$10,$85,$10,$99,$00,$E0
db $30,$00,$31,$18,$20,$20,$32,$24
db $1B,$2C,$23,$30,$33,$38,$34,$40
db $35,$48,$36,$54,$37,$58,$38,$5C
db $39,$64,$3A,$68,$3B,$6C,$3C,$70
db $3D,$74,$3E,$78,$3F,$94,$07,$81
db $11,$89,$10,$99,$00,$E0,$1F,$18
db $20,$20,$21,$24,$22,$2C,$23,$30
db $20,$38,$24,$40,$25,$50,$26,$58
db $27,$5C,$28,$64,$29,$6C,$2A,$74
db $2B,$78,$2C,$88,$2D,$90,$2F,$98
db $07,$81,$10,$85,$10,$99,$00,$E0
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$07,$81,$10,$85,$11,$99
db $00,$E0,$1F,$18,$20,$20,$21,$24
db $22,$2C,$23,$30,$20,$38,$24,$40
db $25,$50,$26,$58,$27,$5C,$28,$64
db $29,$6C,$2A,$74,$2B,$78,$2C,$88
db $2D,$90,$2F,$98,$07,$81,$10,$85
db $10,$99,$00,$E0,$10,$00,$11,$0C
db $12,$10,$13,$1C,$14,$24,$15,$28
db $16,$30,$16,$4C,$17,$54,$18,$5C
db $19,$60,$1A,$64,$1B,$68,$1C,$6C
db $16,$78,$1D,$80,$1E,$90,$07,$81
db $10,$85,$11,$99,$00,$E0,$1F,$18
db $20,$20,$21,$24,$22,$2C,$23,$30
db $20,$38,$24,$40,$25,$50,$26,$58
db $27,$5C,$28,$64,$29,$6C,$2A,$74
db $2B,$78,$2C,$88,$2D,$90,$2F,$98
db $07,$81,$10,$85,$10,$99,$00,$E0
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$07,$81,$10,$85,$11,$99
db $F0,$E3,$11,$E0,$4B,$E0,$31,$E0
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$07,$81,$10,$85,$11,$99
db $00,$E0,$1F,$18,$20,$20,$21,$24
db $22,$2C,$23,$30,$20,$38,$24,$40
db $25,$50,$26,$58,$27,$5C,$28,$64
db $29,$6C,$2A,$74,$2B,$78,$2C,$88
db $2D,$90,$2F,$98,$07,$81,$10,$85
db $10,$99,$00,$E0,$10,$00,$11,$0C
db $12,$10,$13,$1C,$14,$24,$15,$28
db $16,$30,$16,$4C,$17,$54,$18,$5C
db $19,$60,$1A,$64,$1B,$68,$1C,$6C
db $16,$78,$1D,$80,$1E,$90,$07,$81
db $10,$85,$11,$99,$00,$E0,$1F,$18
db $20,$20,$21,$24,$22,$2C,$23,$30
db $20,$38,$24,$40,$25,$50,$26,$58
db $27,$5C,$28,$64,$29,$6C,$2A,$74
db $2B,$78,$2C,$88,$2D,$90,$2F,$98
db $07,$81,$10,$85,$10,$99,$00,$E0
db $30,$00,$31,$18,$20,$20,$32,$24
db $1B,$2C,$23,$30,$33,$38,$34,$40
db $35,$48,$36,$54,$37,$58,$38,$5C
db $39,$64,$3A,$68,$3B,$6C,$3C,$70
db $3D,$74,$3E,$78,$3F,$94,$07,$81
db $11,$89,$10,$99,$00,$E0,$1F,$18
db $20,$20,$21,$24,$22,$2C,$23,$30
db $20,$38,$24,$40,$25,$50,$26,$58
db $27,$5C,$28,$64,$29,$6C,$2A,$74
db $2B,$78,$2C,$88,$2D,$90,$2F,$98
db $07,$81,$10,$85,$10,$99,$10,$00
db $11,$0C,$12,$10,$13,$1C,$14,$24
db $15,$28,$16,$30,$16,$4C,$17,$54
db $18,$5C,$19,$60,$1A,$64,$1B,$68
db $1C,$6C,$16,$78,$1D,$80,$1E,$90
db $07,$81,$10,$85,$11,$99,$00,$E0
db $1F,$18,$20,$20,$21,$24,$22,$2C
db $23,$30,$20,$38,$24,$40,$25,$50
db $26,$58,$27,$5C,$28,$64,$29,$6C
db $2A,$74,$2B,$78,$2C,$88,$2D,$90
db $2F,$98,$07,$81,$10,$85,$10,$99
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$07,$81,$10,$85,$11,$99
db $00,$E0,$1F,$18,$20,$20,$21,$24
db $22,$2C,$23,$30,$20,$38,$24,$40
db $25,$50,$26,$58,$27,$5C,$28,$64
db $29,$6C,$2A,$74,$2B,$78,$2C,$88
db $2D,$90,$2F,$98,$07,$81,$10,$85
db $10,$99,$F0,$E3,$4B,$E0,$11,$E0
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$00,$E0,$1F,$18,$20,$20
db $21,$24,$22,$2C,$23,$30,$20,$38
db $24,$40,$25,$50,$26,$58,$27,$5C
db $28,$64,$29,$6C,$2A,$74,$2B,$78
db $2C,$88,$2D,$90,$2F,$98,$00,$E0
db $10,$00,$11,$0C,$12,$10,$13,$1C
db $14,$24,$15,$28,$16,$30,$16,$4C
db $17,$54,$18,$5C,$19,$60,$1A,$64
db $1B,$68,$1C,$6C,$16,$78,$1D,$80
db $1E,$90,$00,$E0,$30,$00,$31,$18
db $20,$20,$32,$24,$1B,$2C,$23,$30
db $33,$38,$34,$40,$35,$48,$36,$54
db $37,$58,$38,$5C,$39,$64,$3A,$68
db $3B,$6C,$3C,$70,$3D,$74,$3E,$78
db $3F,$94,$00,$E0,$1F,$18,$20,$20
db $21,$24,$22,$2C,$23,$30,$20,$38
db $24,$40,$25,$50,$26,$58,$27,$5C
db $28,$64,$29,$6C,$2A,$74,$2B,$78
db $2C,$88,$2D,$90,$2F,$98,$00,$E0
db $1F,$18,$20,$20,$21,$24,$22,$2C
db $23,$30,$20,$38,$24,$40,$25,$50
db $26,$58,$27,$5C,$28,$64,$29,$6C
db $2A,$74,$2B,$78,$2C,$88,$2D,$90
db $2F,$98,$00,$E0,$30,$00,$31,$18
db $20,$20,$32,$24,$1B,$2C,$23,$30
db $33,$38,$34,$40,$35,$48,$36,$54
db $37,$58,$38,$5C,$39,$64,$3A,$68
db $3B,$6C,$3C,$70,$3D,$74,$3E,$78
db $3F,$94,$00,$E0,$1F,$18,$20,$20
db $21,$24,$22,$2C,$23,$30,$20,$38
db $24,$40,$25,$50,$26,$58,$27,$5C
db $28,$64,$29,$6C,$2A,$74,$2B,$78
db $2C,$88,$2D,$90,$2F,$98,$00,$E0
db $1F,$18,$20,$20,$21,$24,$22,$2C
db $23,$30,$20,$38,$24,$40,$25,$50
db $26,$58,$27,$5C,$28,$64,$29,$6C
db $2A,$74,$2B,$78,$2C,$88,$2D,$90
db $2F,$98,$10,$00,$11,$0C,$12,$10
db $13,$1C,$14,$24,$15,$28,$16,$30
db $16,$4C,$17,$54,$18,$5C,$19,$60
db $1A,$64,$1B,$68,$1C,$6C,$16,$78
db $1D,$80,$1E,$90,$00,$E0,$1F,$18
db $20,$20,$21,$24,$22,$2C,$23,$30
db $20,$38,$24,$40,$25,$50,$26,$58
db $27,$5C,$28,$64,$29,$6C,$2A,$74
db $2B,$78,$2C,$88,$2D,$90,$2F,$98
db $F0,$E3,$50,$E0,$46,$E0,$05,$00
db $05,$14,$17,$60,$17,$74,$3F,$60
db $26,$08,$60,$5C,$00,$E0,$05,$00
db $05,$14,$17,$60,$17,$74,$3F,$60
db $26,$08,$60,$5C,$00,$E0,$07,$08
db $07,$1C,$17,$68,$17,$7C,$3F,$60
db $26,$10,$00,$E0,$07,$10,$17,$70
db $3F,$60,$47,$7C,$26,$04,$00,$E0
db $26,$04,$35,$74,$47,$70,$60,$58
db $90,$B8,$00,$E0,$07,$0C,$07,$1C
db $17,$6C,$17,$7C,$3F,$60,$26,$04
db $80,$50,$90,$B4,$00,$E0,$3F,$60
db $47,$7C,$26,$04,$80,$4C,$00,$E0
db $35,$74,$47,$70,$50,$24,$80,$54
db $00,$E0,$17,$70,$17,$80,$3F,$60
db $90,$40,$90,$50,$80,$44,$80,$54
db $B0,$A0,$F0,$E3,$91,$E0,$10,$E0
db $45,$E0,$10,$A4,$00,$68,$20,$5C
db $00,$E0,$00,$6C,$00,$E0,$30,$40
db $40,$5C,$00,$E0,$20,$50,$60,$90
db $00,$E0,$50,$A0,$20,$84,$70,$78
db $00,$E0,$80,$4C,$00,$E0,$90,$40
db $F0,$E3,$91,$E0,$10,$E0,$45,$E0
db $20,$84,$70,$74,$00,$E0,$80,$48
db $90,$5C,$00,$E0,$00,$E0,$C0,$40
db $00,$E0,$90,$40,$00,$E0,$30,$48
db $00,$E0,$E0,$04,$F0,$E3,$91,$E0
db $10,$E0,$4C,$E0,$80,$E0,$10,$A0
db $20,$A4,$10,$B0,$20,$B4,$10,$BC
db $50,$A8,$00,$E0,$20,$A0,$10,$A8
db $20,$AC,$10,$B8,$20,$BC,$50,$B0
db $70,$48,$00,$E0,$20,$A0,$10,$A8
db $20,$AC,$10,$B4,$20,$B8,$80,$7C
db $00,$E0,$10,$AC,$20,$B0,$10,$B8
db $20,$BC,$00,$E0,$10,$A4,$20,$A8
db $10,$B0,$20,$B4,$50,$BC,$90,$90
db $00,$E0,$10,$A8,$20,$AC,$10,$B4
db $20,$B8,$00,$E0,$10,$A0,$20,$A4
db $10,$B0,$20,$B4,$10,$BC,$60,$A8
db $00,$E0,$20,$A0,$10,$AC,$20,$B0
db $10,$B8,$20,$BC,$60,$A4,$F0,$E3
db $12,$E0,$50,$E0,$44,$E0,$A0,$A0
db $10,$20,$00,$28,$30,$4C,$30,$58
db $A0,$A0,$10,$20,$00,$28,$30,$4C
db $30,$58,$00,$E0,$A0,$A0,$30,$44
db $10,$30,$00,$38,$30,$5C,$00,$E0
db $A0,$A0,$30,$48,$30,$54,$00,$E0
db $A0,$A0,$10,$20,$00,$28,$20,$50
db $50,$58,$00,$E0,$A0,$A0,$20,$48
db $50,$50,$20,$58,$00,$E0,$A0,$A0
db $50,$44,$00,$2C,$D0,$94,$00,$E0
db $A0,$A0,$00,$20,$40,$48,$40,$54
db $00,$3C,$00,$E0,$A0,$A0,$10,$20
db $30,$48,$70,$74,$20,$5C,$00,$E0
db $A0,$A0,$10,$24,$C0,$8C,$10,$30
db $20,$58,$00,$E0,$A0,$A0,$50,$40
db $50,$50,$80,$48,$20,$58,$00,$E0
db $A0,$A0,$00,$24,$20,$4C,$20,$58
db $00,$E0,$A0,$A0,$50,$40,$50,$50
db $80,$48,$20,$58,$00,$E0,$A0,$A0
db $00,$24,$20,$4C,$20,$58,$00,$E0
db $A0,$A0,$50,$44,$00,$2C,$D0,$94
db $00,$E0,$A0,$A0,$00,$20,$40,$48
db $40,$54,$00,$3C,$F0,$E3,$91,$E0
db $70,$E0,$48,$E0,$20,$E0,$00,$69
db $63,$81,$70,$89,$80,$91,$10,$95
db $20,$99,$30,$9D,$93,$A1,$A0,$B1
db $72,$B5,$00,$E0,$B0,$81,$D0,$85
db $62,$89,$80,$95,$C0,$A1,$93,$A5
db $A0,$B5,$61,$B9,$30,$98,$00,$E0
db $B0,$81,$D0,$85,$65,$89,$C0,$A1
db $96,$A5,$00,$E0,$67,$81,$97,$A1
db $00,$E0,$60,$81,$80,$85,$40,$99
db $50,$9D,$90,$A1,$A0,$A5,$80,$A9
db $B0,$B5,$F0,$B9,$70,$BD,$10,$60
db $10,$AC,$00,$E0,$07,$82,$77,$A1
db $00,$E0,$07,$82,$77,$A1,$F0,$E3
db $91,$E0,$70,$E0,$48,$E0,$20,$E0
db $00,$61,$62,$85,$70,$81,$80,$91
db $10,$95,$20,$99,$30,$9D,$93,$A1
db $A0,$B1,$72,$B5,$00,$E0,$B0,$81
db $D0,$85,$62,$89,$80,$95,$C0,$A1
db $93,$A5,$A0,$B5,$61,$B9,$30,$64
db $30,$98,$00,$E0,$10,$6D,$20,$71
db $30,$75,$B0,$79,$D0,$7D,$B0,$85
db $D0,$89,$72,$8D,$C0,$99,$90,$9D
db $60,$A1,$C0,$A5,$95,$A9,$30,$5C
db $00,$E0,$60,$61,$80,$65,$10,$69
db $22,$6D,$30,$79,$90,$81,$A0,$85
db $74,$89,$60,$9D,$97,$A1,$10,$40
db $00,$E0,$60,$81,$80,$85,$40,$99
db $50,$9D,$90,$A1,$A0,$A5,$80,$A9
db $B0,$B5,$F0,$B9,$70,$BD,$10,$60
db $10,$AC,$00,$E0,$07,$82,$77,$A1
db $00,$E0,$07,$82,$77,$A1,$F0,$E3
db $91,$E0,$46,$E0,$10,$E0,$00,$E0
db $00,$E0,$00,$E0,$00,$E0,$00,$E0
db $00,$E0,$F0,$E3,$91,$E0,$70,$E0
db $48,$E0,$20,$E0,$00,$69,$63,$81
db $70,$89,$80,$91,$10,$95,$20,$99
db $30,$9D,$93,$A1,$A0,$B1,$72,$B5
db $00,$E0,$B0,$81,$D0,$85,$62,$89
db $80,$95,$C0,$A1,$93,$A5,$A0,$B5
db $61,$B9,$30,$68,$10,$70,$30,$98
db $00,$E0,$10,$69,$21,$6D,$30,$75
db $B0,$79,$D0,$7D,$B0,$81,$D0,$85
db $73,$89,$C0,$99,$90,$9D,$C0,$A1
db $96,$A5,$30,$5C,$00,$E0,$60,$61
db $80,$65,$10,$69,$22,$6D,$30,$79
db $90,$81,$A0,$85,$74,$89,$60,$9D
db $97,$A1,$10,$40,$00,$E0,$60,$81
db $80,$85,$40,$99,$50,$9D,$90,$A1
db $A0,$A5,$80,$A9,$B0,$B5,$F0,$B9
db $70,$BD,$10,$60,$10,$AC,$00,$E0
db $07,$82,$77,$A1,$00,$E0,$07,$82
db $77,$A1,$F0,$E3,$F0,$E3,$F0,$E3
db $F0,$E3,$F0,$E3,$F0,$E3,$F0,$E3
db $F0,$E3,$F0,$E3,$F0,$E3,$F0,$E3
db $F0,$E3,$F0,$E3,$F0,$E3,$F0,$E3
db $F0,$E3,$F0,$E3,$41,$E0,$12,$E0
db $00,$28,$00,$E0,$00,$30,$00,$E0
db $00,$38,$00,$E0,$00,$E0,$00,$28
db $00,$E0,$00,$28,$F0,$E3,$41,$E0
db $12,$E0,$00,$28,$00,$E0,$00,$28
db $00,$E0,$00,$38,$00,$E0,$00,$E0
db $00,$28,$00,$E0,$00,$28,$F0,$E3
db $41,$E0,$12,$E0,$00,$38,$00,$E0
db $00,$38,$00,$E0,$00,$E0,$00,$28
db $00,$E0,$00,$E0,$F0,$E3,$91,$E0
db $42,$E0,$10,$E0,$70,$24,$E0,$24
db $F0,$E3,$91,$E0,$42,$E0,$10,$E0
db $00,$E0,$70,$24,$E0,$24,$F0,$E3
db $10,$E0,$41,$E0,$00,$28,$00,$E0
db $00,$E0,$00,$E0,$00,$2C,$F0,$E3
db $10,$E0,$41,$E0,$00,$28,$00,$E0
db $00,$E0,$00,$2C,$F0,$E3,$10,$E0
db $41,$E0,$00,$28,$00,$E0,$00,$E0
db $00,$2C,$F0,$E3,$91,$E0,$10,$E0
db $41,$E0,$00,$E0,$00,$E0,$00,$E0
db $00,$E0,$00,$E0,$00,$E0,$00,$E0
db $00,$E0,$00,$E0,$00,$E0,$00,$E0
db $00,$E0,$00,$E0,$00,$E0,$00,$E0
db $F0,$E3,$91,$E0,$42,$E0,$13,$E0
db $4D,$E0,$00,$E0,$00,$E0,$00,$E0
db $00,$E0,$00,$E0,$00,$E0,$00,$E0
db $00,$E0,$00,$E0,$00,$E0,$F0,$E3
db $91,$E0,$4F,$E0,$20,$E0,$00,$80
db $00,$E0,$02,$80,$00,$E0,$02,$80
db $F0,$E3,$F0,$E3,$FF

ORG $0FD000

CODE_0FD000:
PHB                     ; $0F:D000: 8B
PHK                     ; $0F:D001: 4B
PLB                     ; $0F:D002: AB
LDA $700006             ; $0F:D003: AF 06 00 70
BNE CODE_0FD01B         ; $0F:D007: D0 12
LDA $0FF8               ; $0F:D009: AD F8 0F
AND #$C0                ; $0F:D00C: 29 C0
TSB $0FF4               ; $0F:D00E: 0C F4 0F
LDA $0FFA               ; $0F:D011: AD FA 0F
AND #$C0                ; $0F:D014: 29 C0
TSB $0FF6               ; $0F:D016: 0C F6 0F
BRA CODE_0FD04F         ; $0F:D019: 80 34

CODE_0FD01B:
LDA $0FF4               ; $0F:D01B: AD F4 0F
AND #$80                ; $0F:D01E: 29 80
LSR A                   ; $0F:D020: 4A
TSB $0FF4               ; $0F:D021: 0C F4 0F
LDA $0FF8               ; $0F:D024: AD F8 0F
AND #$C0                ; $0F:D027: 29 C0
STA $00                 ; $0F:D029: 85 00
LDA $0FF4               ; $0F:D02B: AD F4 0F
AND #$7F                ; $0F:D02E: 29 7F
ORA $00                 ; $0F:D030: 05 00
STA $0FF4               ; $0F:D032: 8D F4 0F
LDA $0FF6               ; $0F:D035: AD F6 0F
AND #$80                ; $0F:D038: 29 80
LSR A                   ; $0F:D03A: 4A
TSB $0FF6               ; $0F:D03B: 0C F6 0F
LDA $0FFA               ; $0F:D03E: AD FA 0F
AND #$C0                ; $0F:D041: 29 C0
STA $00                 ; $0F:D043: 85 00
LDA $0FF6               ; $0F:D045: AD F6 0F
AND #$7F                ; $0F:D048: 29 7F
ORA $00                 ; $0F:D04A: 05 00
STA $0FF6               ; $0F:D04C: 8D F6 0F

CODE_0FD04F:
PLB                     ; $0F:D04F: AB
RTL                     ; $0F:D050: 6B

CODE_0FD051:
LDA $0F03               ; $0F:D051: AD 03 0F
BNE CODE_0FD096         ; $0F:D054: D0 40
LDA $7FFB00             ; $0F:D056: AF 00 FB 7F
STA $075F               ; $0F:D05A: 8D 5F 07
STA $0766               ; $0F:D05D: 8D 66 07
LDA $7FFB01             ; $0F:D060: AF 01 FB 7F
STA $075C               ; $0F:D064: 8D 5C 07
STA $0763               ; $0F:D067: 8D 63 07
LDA $7FFB02             ; $0F:D06A: AF 02 FB 7F
BPL CODE_0FD071         ; $0F:D06E: 10 01
INC A                   ; $0F:D070: 1A

CODE_0FD071:
STA $0760               ; $0F:D071: 8D 60 07
STA $0767               ; $0F:D074: 8D 67 07
LDA $7FFB03             ; $0F:D077: AF 03 FB 7F
STA $075A               ; $0F:D07B: 8D 5A 07
LDA $7FFB04             ; $0F:D07E: AF 04 FB 7F
STA $0F2B               ; $0F:D082: 8D 2B 0F

CODE_0FD085:
PHX                     ; $0F:D085: DA
LDX #$00                ; $0F:D086: A2 00

CODE_0FD088:
LDA $701FE8,x           ; $0F:D088: BF E8 1F 70
STA $07C8,x             ; $0F:D08C: 9D C8 07
INX                     ; $0F:D08F: E8
CPX #$06                ; $0F:D090: E0 06
BNE CODE_0FD088         ; $0F:D092: D0 F4
PLX                     ; $0F:D094: FA
RTL                     ; $0F:D095: 6B

CODE_0FD096:
LDA $700009             ; $0F:D096: AF 09 00 70
STA $0760               ; $0F:D09A: 8D 60 07
LDA $0E24               ; $0F:D09D: AD 24 0E
STA $075C               ; $0F:D0A0: 8D 5C 07
LDA #$02                ; $0F:D0A3: A9 02
STA $075A               ; $0F:D0A5: 8D 5A 07
STZ $075E               ; $0F:D0A8: 9C 5E 07
STZ $0F2B               ; $0F:D0AB: 9C 2B 0F
PHX                     ; $0F:D0AE: DA
LDX #$00                ; $0F:D0AF: A2 00

CODE_0FD0B1:
STZ $07CE,x             ; $0F:D0B1: 9E CE 07
INX                     ; $0F:D0B4: E8
CPX #$06                ; $0F:D0B5: E0 06
BNE CODE_0FD0B1         ; $0F:D0B7: D0 F8
PLX                     ; $0F:D0B9: FA
RTL                     ; $0F:D0BA: 6B

CODE_0FD0BB:
PHX                     ; $0F:D0BB: DA
PHY                     ; $0F:D0BC: 5A
LDA $0369               ; $0F:D0BD: AD 69 03
BEQ CODE_0FD0FB         ; $0F:D0C0: F0 39
LDY $0B46,x             ; $0F:D0C2: BC 46 0B
LDX #$00                ; $0F:D0C5: A2 00

CODE_0FD0C7:
LDA $0900,y             ; $0F:D0C7: B9 00 09
STA $0800,x             ; $0F:D0CA: 9D 00 08
TYA                     ; $0F:D0CD: 98
AND #$03                ; $0F:D0CE: 29 03
CMP #$01                ; $0F:D0D0: C9 01
BNE CODE_0FD0E5         ; $0F:D0D2: D0 11
LDA $0800,x             ; $0F:D0D4: BD 00 08
CMP #$F0                ; $0F:D0D7: C9 F0
BCC CODE_0FD0E5         ; $0F:D0D9: 90 0A
LDA #$F0                ; $0F:D0DB: A9 F0
STA $0800,x             ; $0F:D0DD: 9D 00 08
LDA #$00                ; $0F:D0E0: A9 00
STA $0D00,y             ; $0F:D0E2: 99 00 0D

CODE_0FD0E5:
LDA $0D00,y             ; $0F:D0E5: B9 00 0D
STA $0C00,x             ; $0F:D0E8: 9D 00 0C
LDA #$00                ; $0F:D0EB: A9 00
STA $0D00,y             ; $0F:D0ED: 99 00 0D
LDA #$F0                ; $0F:D0F0: A9 F0
STA $0900,y             ; $0F:D0F2: 99 00 09
INY                     ; $0F:D0F5: C8
INX                     ; $0F:D0F6: E8
CPX #$20                ; $0F:D0F7: E0 20
BNE CODE_0FD0C7         ; $0F:D0F9: D0 CC

CODE_0FD0FB:
LDX #$00                ; $0F:D0FB: A2 00
STZ $E7                 ; $0F:D0FD: 64 E7

CODE_0FD0FF:
LDA $0300,x             ; $0F:D0FF: BD 00 03
BEQ CODE_0FD10E         ; $0F:D102: F0 0A
JSR CODE_0FD116         ; $0F:D104: 20 16 D1
LDA $E7                 ; $0F:D107: A5 E7
CLC                     ; $0F:D109: 18
ADC #$20                ; $0F:D10A: 69 20
STA $E7                 ; $0F:D10C: 85 E7

CODE_0FD10E:
INX                     ; $0F:D10E: E8
CPX #$0D                ; $0F:D10F: E0 0D
BCC CODE_0FD0FF         ; $0F:D111: 90 EC
PLY                     ; $0F:D113: 7A
PLX                     ; $0F:D114: FA
RTS                     ; $0F:D115: 60

CODE_0FD116:
LDA $9E                 ; $0F:D116: A5 9E
INC A                   ; $0F:D118: 1A
STA $02FC               ; $0F:D119: 8D FC 02
PHX                     ; $0F:D11C: DA
LDY $030D,x             ; $0F:D11D: BC 0D 03
STY $E6                 ; $0F:D120: 84 E6
LDA DATA_0FD215,y       ; $0F:D122: B9 15 D2
CLC                     ; $0F:D125: 18
ADC #$A0                ; $0F:D126: 69 A0
STA $E4                 ; $0F:D128: 85 E4
LDA DATA_0FD215+1,y     ; $0F:D12A: B9 16 D2
CLC                     ; $0F:D12D: 18
ADC #$A0                ; $0F:D12E: 69 A0
STA $E5                 ; $0F:D130: 85 E5
LDY $E7                 ; $0F:D132: A4 E7
LDA $031A,x             ; $0F:D134: BD 1A 03
JSR CODE_0FD1BB         ; $0F:D137: 20 BB D1
LDA $031A,x             ; $0F:D13A: BD 1A 03
CLC                     ; $0F:D13D: 18
ADC #$08                ; $0F:D13E: 69 08
JSR CODE_0FD1BB         ; $0F:D140: 20 BB D1
LDY $E7                 ; $0F:D143: A4 E7
LDA $E4                 ; $0F:D145: A5 E4
JSR CODE_0FD1A5         ; $0F:D147: 20 A5 D1
TYA                     ; $0F:D14A: 98
CLC                     ; $0F:D14B: 18
ADC #$10                ; $0F:D14C: 69 10
TAY                     ; $0F:D14E: A8
LDA $E5                 ; $0F:D14F: A5 E5
JSR CODE_0FD1A5         ; $0F:D151: 20 A5 D1
LDX $E6                 ; $0F:D154: A6 E6
CPX #$04                ; $0F:D156: E0 04
BCS CODE_0FD15E         ; $0F:D158: B0 04
LDA #$22                ; $0F:D15A: A9 22
BRA CODE_0FD160         ; $0F:D15C: 80 02

CODE_0FD15E:
LDA #$23                ; $0F:D15E: A9 23

CODE_0FD160:
LDY $E7                 ; $0F:D160: A4 E7
INY                     ; $0F:D162: C8
INY                     ; $0F:D163: C8
INY                     ; $0F:D164: C8
PHA                     ; $0F:D165: 48
JSR CODE_0FD1BB         ; $0F:D166: 20 BB D1
PLA                     ; $0F:D169: 68
JSR CODE_0FD1BB         ; $0F:D16A: 20 BB D1
LDY $E7                 ; $0F:D16D: A4 E7
TXA                     ; $0F:D16F: 8A
ASL A                   ; $0F:D170: 0A
ASL A                   ; $0F:D171: 0A
ASL A                   ; $0F:D172: 0A
TAX                     ; $0F:D173: AA
LDA #$08                ; $0F:D174: A9 08
STA $E8                 ; $0F:D176: 85 E8

CODE_0FD178:
LDA DATA_0FD1CD,x       ; $0F:D178: BD CD D1
STA $0902,y             ; $0F:D17B: 99 02 09
INY                     ; $0F:D17E: C8
INY                     ; $0F:D17F: C8
INY                     ; $0F:D180: C8
INY                     ; $0F:D181: C8
INX                     ; $0F:D182: E8
DEC $E8                 ; $0F:D183: C6 E8
BNE CODE_0FD178         ; $0F:D185: D0 F1
PLX                     ; $0F:D187: FA
DEC $0327,x             ; $0F:D188: DE 27 03
LDA $0327,x             ; $0F:D18B: BD 27 03
BNE CODE_0FD1A4         ; $0F:D18E: D0 14
LDA #$03                ; $0F:D190: A9 03
STA $0327,x             ; $0F:D192: 9D 27 03
INC $030D,x             ; $0F:D195: FE 0D 03
LDA $030D,x             ; $0F:D198: BD 0D 03
AND #$0F                ; $0F:D19B: 29 0F
CMP #$09                ; $0F:D19D: C9 09
BNE CODE_0FD1A4         ; $0F:D19F: D0 03
STZ $0300,x             ; $0F:D1A1: 9E 00 03

CODE_0FD1A4:
RTS                     ; $0F:D1A4: 60

CODE_0FD1A5:
STA $0901,y             ; $0F:D1A5: 99 01 09
CLC                     ; $0F:D1A8: 18
ADC #$08                ; $0F:D1A9: 69 08
STA $0905,y             ; $0F:D1AB: 99 05 09
CLC                     ; $0F:D1AE: 18
ADC #$08                ; $0F:D1AF: 69 08
STA $0909,y             ; $0F:D1B1: 99 09 09
CLC                     ; $0F:D1B4: 18
ADC #$08                ; $0F:D1B5: 69 08
STA $090D,y             ; $0F:D1B7: 99 0D 09
RTS                     ; $0F:D1BA: 60

CODE_0FD1BB:
STA $0900,y             ; $0F:D1BB: 99 00 09
STA $0904,y             ; $0F:D1BE: 99 04 09
STA $0908,y             ; $0F:D1C1: 99 08 09
STA $090C,y             ; $0F:D1C4: 99 0C 09
TYA                     ; $0F:D1C7: 98
CLC                     ; $0F:D1C8: 18
ADC #$10                ; $0F:D1C9: 69 10
TAY                     ; $0F:D1CB: A8
RTS                     ; $0F:D1CC: 60

DATA_0FD1CD:
db $10,$20,$FC,$FC,$11,$21,$FC,$FC
db $10,$20,$FC,$FC,$11,$21,$FC,$FC
db $12,$22,$FC,$FC,$13,$23,$FC,$FC
db $14,$24,$16,$FC,$15,$25,$17,$FC
db $4C,$5C,$4E,$5E,$4D,$5D,$4F,$5F
db $8C,$9C,$8E,$9E,$8D,$9D,$8F,$9F
db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF
db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF
db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF

DATA_0FD215:
db $00,$00,$01,$03,$06,$0A,$0F,$14
db $1C,$24,$3C

DATA_0FD220:
db $0E,$0E,$0E,$66,$66,$64,$64,$64
db $66,$66

CODE_0FD22A:
PHB                     ; $0F:D22A: 8B
PHK                     ; $0F:D22B: 4B
PLB                     ; $0F:D22C: AB
PHY                     ; $0F:D22D: 5A
LDA $0B46,x             ; $0F:D22E: BD 46 0B
CLC                     ; $0F:D231: 18
ADC #$04                ; $0F:D232: 69 04
TAY                     ; $0F:D234: A8
LDA $47,x               ; $0F:D235: B5 47
CMP #$02                ; $0F:D237: C9 02
BNE CODE_0FD23D         ; $0F:D239: D0 02
LDA #$41                ; $0F:D23B: A9 41

CODE_0FD23D:
EOR #$2B                ; $0F:D23D: 49 2B
STA $0903,y             ; $0F:D23F: 99 03 09
LDA $1C,x               ; $0F:D242: B5 1C
CMP #$08                ; $0F:D244: C9 08
BEQ CODE_0FD257         ; $0F:D246: F0 0F
LDA $0EA2,x             ; $0F:D248: BD A2 0E
CMP #$0A                ; $0F:D24B: C9 0A
BCS CODE_0FD257         ; $0F:D24D: B0 08
LDA $0903,y             ; $0F:D24F: B9 03 09
EOR #$20                ; $0F:D252: 49 20
STA $0903,y             ; $0F:D254: 99 03 09

CODE_0FD257:
LDA $0F4F,x             ; $0F:D257: BD 4F 0F
LSR A                   ; $0F:D25A: 4A
LSR A                   ; $0F:D25B: 4A
AND #$0F                ; $0F:D25C: 29 0F
STA $E4                 ; $0F:D25E: 85 E4
LDA $29,x               ; $0F:D260: B5 29
AND #$20                ; $0F:D262: 29 20
BNE CODE_0FD26C         ; $0F:D264: D0 06
LDA $E4                 ; $0F:D266: A5 E4
CMP #$09                ; $0F:D268: C9 09
BCC CODE_0FD26F         ; $0F:D26A: 90 03

CODE_0FD26C:
STZ $0F4F,x             ; $0F:D26C: 9E 4F 0F

CODE_0FD26F:
LDA $0F                 ; $0F:D26F: A5 0F
CMP #$09                ; $0F:D271: C9 09
BCS CODE_0FD27D         ; $0F:D273: B0 08
LDA $0E67               ; $0F:D275: AD 67 0E
BNE CODE_0FD27D         ; $0F:D278: D0 03
INC $0F4F,x             ; $0F:D27A: FE 4F 0F

CODE_0FD27D:
LDX $E4                 ; $0F:D27D: A6 E4
LDA $03AE               ; $0F:D27F: AD AE 03
STA $0900,y             ; $0F:D282: 99 00 09
LDA $03B9               ; $0F:D285: AD B9 03
CLC                     ; $0F:D288: 18
ADC #$08                ; $0F:D289: 69 08
STA $0901,y             ; $0F:D28B: 99 01 09
LDA DATA_0FD220,x       ; $0F:D28E: BD 20 D2
STA $0902,y             ; $0F:D291: 99 02 09
LDA #$02                ; $0F:D294: A9 02
STA $0D00,y             ; $0F:D296: 99 00 0D
LDX $9E                 ; $0F:D299: A6 9E
LDA $021A,x             ; $0F:D29B: BD 1A 02
STA $E4                 ; $0F:D29E: 85 E4
LDA $79,x               ; $0F:D2A0: B5 79
STA $E5                 ; $0F:D2A2: 85 E5
REP #$20                ; $0F:D2A4: C2 20
LDA $E4                 ; $0F:D2A6: A5 E4
SEC                     ; $0F:D2A8: 38
SBC $42                 ; $0F:D2A9: E5 42
STA $E4                 ; $0F:D2AB: 85 E4
SEP #$20                ; $0F:D2AD: E2 20
LDA $E5                 ; $0F:D2AF: A5 E5
BEQ CODE_0FD2B8         ; $0F:D2B1: F0 05
LDA #$03                ; $0F:D2B3: A9 03
STA $0D00,y             ; $0F:D2B5: 99 00 0D

CODE_0FD2B8:
LDA $03B9               ; $0F:D2B8: AD B9 03
CMP #$E0                ; $0F:D2BB: C9 E0
BCS CODE_0FD2C5         ; $0F:D2BD: B0 06
LDA $BC,x               ; $0F:D2BF: B5 BC
CMP #$01                ; $0F:D2C1: C9 01
BEQ CODE_0FD2CA         ; $0F:D2C3: F0 05

CODE_0FD2C5:
LDA #$F0                ; $0F:D2C5: A9 F0
STA $0901,y             ; $0F:D2C7: 99 01 09

CODE_0FD2CA:
PLY                     ; $0F:D2CA: 7A
PLB                     ; $0F:D2CB: AB
RTL                     ; $0F:D2CC: 6B

CODE_0FD2CD:
LDA $03FA               ; $0F:D2CD: AD FA 03
BEQ CODE_0FD2FE         ; $0F:D2D0: F0 2C
LDA $0219               ; $0F:D2D2: AD 19 02
STA $E4                 ; $0F:D2D5: 85 E4
LDA $0078               ; $0F:D2D7: AD 78 00
STA $E5                 ; $0F:D2DA: 85 E5
STZ $02FE               ; $0F:D2DC: 9C FE 02
REP #$20                ; $0F:D2DF: C2 20
LDA $02FD               ; $0F:D2E1: AD FD 02
CLC                     ; $0F:D2E4: 18
ADC $03CC               ; $0F:D2E5: 6D CC 03
CMP $E4                 ; $0F:D2E8: C5 E4
BCC CODE_0FD2F1         ; $0F:D2EA: 90 05
SEP #$20                ; $0F:D2EC: E2 20
LDA #$01                ; $0F:D2EE: A9 01
RTL                     ; $0F:D2F0: 6B

CODE_0FD2F1:
SEP #$20                ; $0F:D2F1: E2 20
STZ $03FA               ; $0F:D2F3: 9C FA 03
LDA #$34                ; $0F:D2F6: A9 34
STA $02F7               ; $0F:D2F8: 8D F7 02
STA $03CF               ; $0F:D2FB: 8D CF 03

CODE_0FD2FE:
LDA $03CF               ; $0F:D2FE: AD CF 03
BEQ CODE_0FD32E         ; $0F:D301: F0 2B
CMP #$28                ; $0F:D303: C9 28
BCC CODE_0FD30B         ; $0F:D305: 90 04
LDA #$F8                ; $0F:D307: A9 F8
BRA CODE_0FD30D         ; $0F:D309: 80 02

CODE_0FD30B:
LDA #$F0                ; $0F:D30B: A9 F0

CODE_0FD30D:
STA $03CE               ; $0F:D30D: 8D CE 03
LDA $0754               ; $0F:D310: AD 54 07
BEQ CODE_0FD31E         ; $0F:D313: F0 09
LDA $03CE               ; $0F:D315: AD CE 03
SEC                     ; $0F:D318: 38
SBC #$10                ; $0F:D319: E9 10
STA $03CE               ; $0F:D31B: 8D CE 03

CODE_0FD31E:
DEC $03CF               ; $0F:D31E: CE CF 03
LDA $03CF               ; $0F:D321: AD CF 03
BNE CODE_0FD326         ; $0F:D324: D0 00

CODE_0FD326:
STZ $5D                 ; $0F:D326: 64 5D
STZ $0705               ; $0F:D328: 9C 05 07
LDA #$00                ; $0F:D32B: A9 00
RTL                     ; $0F:D32D: 6B

CODE_0FD32E:
LDA #$01                ; $0F:D32E: A9 01
STA $0723               ; $0F:D330: 8D 23 07
STA $0254               ; $0F:D333: 8D 54 02
JSR CODE_0FD354         ; $0F:D336: 20 54 D3
STZ $03CE               ; $0F:D339: 9C CE 03
LDA $03FB               ; $0F:D33C: AD FB 03
BEQ CODE_0FD347         ; $0F:D33F: F0 06
DEC $03FB               ; $0F:D341: CE FB 03
LDA #$01                ; $0F:D344: A9 01
RTL                     ; $0F:D346: 6B

CODE_0FD347:
LDA $0746               ; $0F:D347: AD 46 07
CMP #$01                ; $0F:D34A: C9 01
BCS CODE_0FD351         ; $0F:D34C: B0 03
INC $0746               ; $0F:D34E: EE 46 07

CODE_0FD351:
LDA #$00                ; $0F:D351: A9 00
RTL                     ; $0F:D353: 6B

CODE_0FD354:
LDX #$00                ; $0F:D354: A2 00
REP #$20                ; $0F:D356: C2 20

CODE_0FD358:
LDA $11E0,x             ; $0F:D358: BD E0 11
STA $E4                 ; $0F:D35B: 85 E4
AND #$7C00              ; $0F:D35D: 29 00 7C
BEQ CODE_0FD36A         ; $0F:D360: F0 08
LDA $E4                 ; $0F:D362: A5 E4
SEC                     ; $0F:D364: 38
SBC #$0400              ; $0F:D365: E9 00 04
STA $E4                 ; $0F:D368: 85 E4

CODE_0FD36A:
LDA $E4                 ; $0F:D36A: A5 E4
AND #$03E0              ; $0F:D36C: 29 E0 03
BEQ CODE_0FD379         ; $0F:D36F: F0 08
LDA $E4                 ; $0F:D371: A5 E4
SEC                     ; $0F:D373: 38
SBC #$0020              ; $0F:D374: E9 20 00
STA $E4                 ; $0F:D377: 85 E4

CODE_0FD379:
LDA $E4                 ; $0F:D379: A5 E4
AND #$001F              ; $0F:D37B: 29 1F 00
BEQ CODE_0FD382         ; $0F:D37E: F0 02
DEC $E4                 ; $0F:D380: C6 E4

CODE_0FD382:
LDA $E4                 ; $0F:D382: A5 E4
STA $11E0,x             ; $0F:D384: 9D E0 11
INX                     ; $0F:D387: E8
INX                     ; $0F:D388: E8
CPX #$20                ; $0F:D389: E0 20
BNE CODE_0FD358         ; $0F:D38B: D0 CB
SEP #$20                ; $0F:D38D: E2 20
INC $1200               ; $0F:D38F: EE 00 12
RTS                     ; $0F:D392: 60

DATA_0FD393:
db $90,$80,$70,$90

DATA_0FD397:
db $FF,$01

CODE_0FD399:
PHX                     ; $0F:D399: DA
PHY                     ; $0F:D39A: 5A
LDY $0368               ; $0F:D39B: AC 68 03
LDX $0F4E               ; $0F:D39E: AE 4E 0F
LDA $021A,y             ; $0F:D3A1: B9 1A 02
SEC                     ; $0F:D3A4: 38
SBC #$0E                ; $0F:D3A5: E9 0E
STA $021A,x             ; $0F:D3A7: 9D 1A 02
LDA $0079,y             ; $0F:D3AA: B9 79 00
STA $79,x               ; $0F:D3AD: 95 79
LDA $0238,y             ; $0F:D3AF: B9 38 02
CLC                     ; $0F:D3B2: 18
ADC #$08                ; $0F:D3B3: 69 08
STA $0238,x             ; $0F:D3B5: 9D 38 02
LDA $07B7,x             ; $0F:D3B8: BD B7 07
AND #$03                ; $0F:D3BB: 29 03
STA $041D,x             ; $0F:D3BD: 9D 1D 04
TAY                     ; $0F:D3C0: A8
LDA DATA_0FD393,y       ; $0F:D3C1: B9 93 D3
LDY #$00                ; $0F:D3C4: A0 00
CMP $0238,x             ; $0F:D3C6: DD 38 02
BCC CODE_0FD3CC         ; $0F:D3C9: 90 01
INY                     ; $0F:D3CB: C8

CODE_0FD3CC:
LDA DATA_0FD397,y       ; $0F:D3CC: B9 97 D3
STA $043D,x             ; $0F:D3CF: 9D 3D 04
STZ $06CB               ; $0F:D3D2: 9C CB 06
LDA #$08                ; $0F:D3D5: A9 08
STA $0490,x             ; $0F:D3D7: 9D 90 04
LDA #$01                ; $0F:D3DA: A9 01
STA $BC,x               ; $0F:D3DC: 95 BC
STA $10,x               ; $0F:D3DE: 95 10
LSR A                   ; $0F:D3E0: 4A
STA $0402,x             ; $0F:D3E1: 9D 02 04
STA $29,x               ; $0F:D3E4: 95 29
PLY                     ; $0F:D3E6: 7A
PLX                     ; $0F:D3E7: FA
RTS                     ; $0F:D3E8: 60

CODE_0FD3E9:
PHB                     ; $0F:D3E9: 8B
PHK                     ; $0F:D3EA: 4B
PLB                     ; $0F:D3EB: AB
LDY $0B46,x             ; $0F:D3EC: BC 46 0B
LDA $03AE               ; $0F:D3EF: AD AE 03
STA $0900,y             ; $0F:D3F2: 99 00 09
CLC                     ; $0F:D3F5: 18
ADC #$08                ; $0F:D3F6: 69 08
STA $0904,y             ; $0F:D3F8: 99 04 09
LDA $03B9               ; $0F:D3FB: AD B9 03
STA $0901,y             ; $0F:D3FE: 99 01 09
STA $0905,y             ; $0F:D401: 99 05 09
LDA #$21                ; $0F:D404: A9 21
STA $0903,y             ; $0F:D406: 99 03 09
STA $0907,y             ; $0F:D409: 99 07 09
LDA $0F58,x             ; $0F:D40C: BD 58 0F
LSR A                   ; $0F:D40F: 4A
LSR A                   ; $0F:D410: 4A
LSR A                   ; $0F:D411: 4A
CMP #$03                ; $0F:D412: C9 03
BNE CODE_0FD439         ; $0F:D414: D0 23
STZ $0F36,x             ; $0F:D416: 9E 36 0F
LDA #$01                ; $0F:D419: A9 01
STA $0F36,x             ; $0F:D41B: 9D 36 0F
LDA $021A,x             ; $0F:D41E: BD 1A 02
CLC                     ; $0F:D421: 18
ADC #$10                ; $0F:D422: 69 10
STA $0F62,x             ; $0F:D424: 9D 62 0F
LDA $79,x               ; $0F:D427: B5 79
ADC #$00                ; $0F:D429: 69 00
STA $0F6B,x             ; $0F:D42B: 9D 6B 0F
LDA $03B9               ; $0F:D42E: AD B9 03
STA $0F74,x             ; $0F:D431: 9D 74 0F
LDA #$00                ; $0F:D434: A9 00
STA $0F58,x             ; $0F:D436: 9D 58 0F

CODE_0FD439:
TAX                     ; $0F:D439: AA
LDA DATA_0FD4CA,x       ; $0F:D43A: BD CA D4
STA $0902,y             ; $0F:D43D: 99 02 09
INC A                   ; $0F:D440: 1A
STA $0906,y             ; $0F:D441: 99 06 09
STX $E4                 ; $0F:D444: 86 E4
LDX $9E                 ; $0F:D446: A6 9E
LDA $021A,x             ; $0F:D448: BD 1A 02
STA $E5                 ; $0F:D44B: 85 E5
LDA $79,x               ; $0F:D44D: B5 79
STA $E6                 ; $0F:D44F: 85 E6
REP #$20                ; $0F:D451: C2 20
LDA $E5                 ; $0F:D453: A5 E5
SEC                     ; $0F:D455: 38
SBC $42                 ; $0F:D456: E5 42
STA $E5                 ; $0F:D458: 85 E5
CLC                     ; $0F:D45A: 18
ADC #$0008              ; $0F:D45B: 69 08 00
STA $E7                 ; $0F:D45E: 85 E7
SEP #$20                ; $0F:D460: E2 20
LDA #$02                ; $0F:D462: A9 02
STA $E9                 ; $0F:D464: 85 E9
LDA $E6                 ; $0F:D466: A5 E6
BEQ CODE_0FD46C         ; $0F:D468: F0 02
LDA #$01                ; $0F:D46A: A9 01

CODE_0FD46C:
ORA $E9                 ; $0F:D46C: 05 E9
STA $0D00,y             ; $0F:D46E: 99 00 0D
LDA $E8                 ; $0F:D471: A5 E8
BEQ CODE_0FD477         ; $0F:D473: F0 02
LDA #$01                ; $0F:D475: A9 01

CODE_0FD477:
ORA $E9                 ; $0F:D477: 05 E9
STA $0D04,y             ; $0F:D479: 99 04 0D
LDA $0F36,x             ; $0F:D47C: BD 36 0F
BEQ CODE_0FD4C3         ; $0F:D47F: F0 42
LDA $0F62,x             ; $0F:D481: BD 62 0F
STA $E5                 ; $0F:D484: 85 E5
LDA $0F6B,x             ; $0F:D486: BD 6B 0F
STA $E6                 ; $0F:D489: 85 E6
REP #$20                ; $0F:D48B: C2 20
LDA $E5                 ; $0F:D48D: A5 E5
SEC                     ; $0F:D48F: 38
SBC $42                 ; $0F:D490: E5 42
STA $E5                 ; $0F:D492: 85 E5
SEP #$20                ; $0F:D494: E2 20
LDA $E5                 ; $0F:D496: A5 E5
STA $0908,y             ; $0F:D498: 99 08 09
LDA $0F58,x             ; $0F:D49B: BD 58 0F
LSR A                   ; $0F:D49E: 4A
CLC                     ; $0F:D49F: 18
ADC #$04                ; $0F:D4A0: 69 04
CLC                     ; $0F:D4A2: 18
ADC $0F74,x             ; $0F:D4A3: 7D 74 0F
STA $0909,y             ; $0F:D4A6: 99 09 09
LDX $E4                 ; $0F:D4A9: A6 E4
LDA DATA_0FD4CD,x       ; $0F:D4AB: BD CD D4
STA $090A,y             ; $0F:D4AE: 99 0A 09
LDA #$28                ; $0F:D4B1: A9 28
STA $090B,y             ; $0F:D4B3: 99 0B 09
STZ $E9                 ; $0F:D4B6: 64 E9
LDA $E6                 ; $0F:D4B8: A5 E6
BEQ CODE_0FD4BE         ; $0F:D4BA: F0 02
LDA #$01                ; $0F:D4BC: A9 01

CODE_0FD4BE:
ORA $E9                 ; $0F:D4BE: 05 E9
STA $0D08,y             ; $0F:D4C0: 99 08 0D

CODE_0FD4C3:
LDX $9E                 ; $0F:D4C3: A6 9E
INC $0F58,x             ; $0F:D4C5: FE 58 0F
PLB                     ; $0F:D4C8: AB
RTL                     ; $0F:D4C9: 6B

DATA_0FD4CA:
db $86,$A6,$89

DATA_0FD4CD:
db $30,$31,$32,$06,$0A,$0E

CODE_0FD4D3:
PHB                     ; $0F:D4D3: 8B
PHK                     ; $0F:D4D4: 4B
PLB                     ; $0F:D4D5: AB
LDY #$04                ; $0F:D4D6: A0 04
STY $02FF               ; $0F:D4D8: 8C FF 02
LDA $03AE               ; $0F:D4DB: AD AE 03
SEC                     ; $0F:D4DE: 38
SBC #$08                ; $0F:D4DF: E9 08
STA $E4                 ; $0F:D4E1: 85 E4
LDX #$00                ; $0F:D4E3: A2 00

CODE_0FD4E5:
LDA DATA_0FD603,x       ; $0F:D4E5: BD 03 D6
CLC                     ; $0F:D4E8: 18
ADC $E4                 ; $0F:D4E9: 65 E4
STA $0800,y             ; $0F:D4EB: 99 00 08
LDA $03B9               ; $0F:D4EE: AD B9 03
SEC                     ; $0F:D4F1: 38
SBC #$04                ; $0F:D4F2: E9 04
STA $0801,y             ; $0F:D4F4: 99 01 08
PHX                     ; $0F:D4F7: DA
LDA $09                 ; $0F:D4F8: A5 09
AND #$18                ; $0F:D4FA: 29 18
STX $E5                 ; $0F:D4FC: 86 E5
CLC                     ; $0F:D4FE: 18
ADC $E5                 ; $0F:D4FF: 65 E5
TAX                     ; $0F:D501: AA
LDA DATA_0FD5E3,x       ; $0F:D502: BD E3 D5
STA $0803,y             ; $0F:D505: 99 03 08
LDA DATA_0FD5C3,x       ; $0F:D508: BD C3 D5
STA $0802,y             ; $0F:D50B: 99 02 08
PLX                     ; $0F:D50E: FA
INY                     ; $0F:D50F: C8
INY                     ; $0F:D510: C8
INY                     ; $0F:D511: C8
INY                     ; $0F:D512: C8
INX                     ; $0F:D513: E8
CPX #$05                ; $0F:D514: E0 05
BNE CODE_0FD4E5         ; $0F:D516: D0 CD
LDX $9E                 ; $0F:D518: A6 9E
LDA $021A,x             ; $0F:D51A: BD 1A 02
STA $E5                 ; $0F:D51D: 85 E5
LDA $79,x               ; $0F:D51F: B5 79
STA $E6                 ; $0F:D521: 85 E6
REP #$20                ; $0F:D523: C2 20
LDA $E5                 ; $0F:D525: A5 E5
SEC                     ; $0F:D527: 38
SBC #$0008              ; $0F:D528: E9 08 00
SEC                     ; $0F:D52B: 38
SBC $42                 ; $0F:D52C: E5 42
STA $E9                 ; $0F:D52E: 85 E9
CLC                     ; $0F:D530: 18
ADC #$0010              ; $0F:D531: 69 10 00
STA $E8                 ; $0F:D534: 85 E8
CLC                     ; $0F:D536: 18
ADC #$0004              ; $0F:D537: 69 04 00
STA $DF                 ; $0F:D53A: 85 DF
CLC                     ; $0F:D53C: 18
ADC #$0008              ; $0F:D53D: 69 08 00
STA $DD                 ; $0F:D540: 85 DD
CLC                     ; $0F:D542: 18
ADC #$0004              ; $0F:D543: 69 04 00
STA $E7                 ; $0F:D546: 85 E7
CLC                     ; $0F:D548: 18
ADC #$0010              ; $0F:D549: 69 10 00
STA $E6                 ; $0F:D54C: 85 E6
SEC                     ; $0F:D54E: 38
SBC #$0010              ; $0F:D54F: E9 10 00
STA $E5                 ; $0F:D552: 85 E5
SEP #$20                ; $0F:D554: E2 20
LDA #$02                ; $0F:D556: A9 02
STA $E4                 ; $0F:D558: 85 E4
LDY #$04                ; $0F:D55A: A0 04
LDX #$05                ; $0F:D55C: A2 05

CODE_0FD55E:
LDA $E5,x               ; $0F:D55E: B5 E5
BEQ CODE_0FD564         ; $0F:D560: F0 02
LDA #$01                ; $0F:D562: A9 01

CODE_0FD564:
ORA $E4                 ; $0F:D564: 05 E4
STA $0C00,y             ; $0F:D566: 99 00 0C
INY                     ; $0F:D569: C8
INY                     ; $0F:D56A: C8
INY                     ; $0F:D56B: C8
INY                     ; $0F:D56C: C8
DEX                     ; $0F:D56D: CA
BNE CODE_0FD55E         ; $0F:D56E: D0 EE
STZ $E4                 ; $0F:D570: 64 E4
LDA $06CC               ; $0F:D572: AD CC 06
BNE CODE_0FD58E         ; $0F:D575: D0 17
LDA #$F0                ; $0F:D577: A9 F0
STA $0815               ; $0F:D579: 8D 15 08
LDA $DE                 ; $0F:D57C: A5 DE
BEQ CODE_0FD582         ; $0F:D57E: F0 02
LDA #$01                ; $0F:D580: A9 01

CODE_0FD582:
ORA $E4                 ; $0F:D582: 05 E4
STA $0C00               ; $0F:D584: 8D 00 0C
LDA $DD                 ; $0F:D587: A5 DD
STA $0800               ; $0F:D589: 8D 00 08
BRA CODE_0FD5A6         ; $0F:D58C: 80 18

CODE_0FD58E:
LDA #$F0                ; $0F:D58E: A9 F0
STA $080D               ; $0F:D590: 8D 0D 08
STA $0811               ; $0F:D593: 8D 11 08
LDA $E0                 ; $0F:D596: A5 E0
BEQ CODE_0FD59C         ; $0F:D598: F0 02
LDA #$01                ; $0F:D59A: A9 01

CODE_0FD59C:
ORA $E4                 ; $0F:D59C: 05 E4
STA $0C00               ; $0F:D59E: 8D 00 0C
LDA $DF                 ; $0F:D5A1: A5 DF
STA $0800               ; $0F:D5A3: 8D 00 08

CODE_0FD5A6:
LDA $09                 ; $0F:D5A6: A5 09
AND #$10                ; $0F:D5A8: 29 10
LSR A                   ; $0F:D5AA: 4A
LSR A                   ; $0F:D5AB: 4A
LSR A                   ; $0F:D5AC: 4A
LSR A                   ; $0F:D5AD: 4A
CLC                     ; $0F:D5AE: 18
ADC $03B9               ; $0F:D5AF: 6D B9 03
STA $0801               ; $0F:D5B2: 8D 01 08
LDA #$E7                ; $0F:D5B5: A9 E7
STA $0802               ; $0F:D5B7: 8D 02 08
LDA #$2C                ; $0F:D5BA: A9 2C
STA $0803               ; $0F:D5BC: 8D 03 08
LDX $9E                 ; $0F:D5BF: A6 9E
PLB                     ; $0F:D5C1: AB
RTL                     ; $0F:D5C2: 6B

DATA_0FD5C3:
db $40,$41,$41,$42,$42,$00,$00,$00
db $60,$61,$61,$62,$62,$00,$00,$00
db $42,$41,$41,$40,$40,$00,$00,$00
db $62,$61,$61,$60,$60,$00,$00,$00

DATA_0FD5E3:
db $2A,$6A,$6A,$2A,$2A,$00,$00,$00
db $2A,$6A,$6A,$2A,$2A,$00,$00,$00
db $6A,$2A,$2A,$6A,$6A,$00,$00,$00
db $6A,$2A,$2A,$6A,$6A,$00,$00,$00

DATA_0FD603:
db $00,$10,$20,$30,$20

DATA_0FD608:
db $C0,$E0,$C4,$C2,$E2,$C5,$C6,$E6
db $D4,$C8,$E8,$D5,$CA,$EA,$E4,$C8
db $EC,$E5,$CC,$E0,$F4,$CE,$E2,$F5
db $C0,$E0,$C4,$EE,$E2,$C5,$CC,$E0
db $94,$A4,$E2,$95,$80,$A0,$84,$82
db $A2,$85,$C2,$E2,$C5,$C0,$E0,$C4
db $C8,$E8,$D5,$C6,$E6,$D4,$C8,$EC
db $E5,$CA,$EA,$E4,$CE,$E2,$F5,$CC
db $E0,$F4,$EE,$E2,$C5,$C0,$E0,$C4
db $A4,$E2,$95,$CC,$E0,$94,$82,$A2
db $85,$80,$A0,$84

DATA_0FD65C:
db $00,$01,$01,$00,$02,$02,$03,$04
db $05,$06

DATA_0FD666:
db $08,$09

DATA_0FD668:
db $EE,$EE,$EE,$00,$F6,$F6,$F6,$00
db $EC,$EC,$EC,$00,$00

DATA_0FD675:
db $00,$00,$E8,$E8,$E8,$00,$F2,$F2
db $F2,$00,$FA,$FA,$FA

DATA_0FD682:
db $EA,$EA,$EA,$00,$E5,$E5,$E5,$00
db $E4,$E4,$E4,$00,$00

DATA_0FD68F:
db $00,$00,$E8,$E8,$E8,$00,$ED,$ED
db $ED,$00,$E5,$E5,$E5

DATA_0FD69C:
db $A9,$B9,$E8,$00,$A9,$B9,$E8,$00
db $A9,$B9,$E8,$00,$00

DATA_0FD6A9:
db $00,$00,$A9,$B9,$E8,$00,$A9,$B9
db $E8,$00,$A9,$B9,$E8

DATA_0FD6B6:
db $27,$27,$26,$27,$27,$27,$26,$27
db $27,$27,$26,$27,$27

DATA_0FD6C3:
db $27,$27,$27,$27,$26,$27,$27,$27
db $26,$27,$27,$27,$26

CODE_0FD6D0:
PHX                     ; $0F:D6D0: DA
INC $03CA               ; $0F:D6D1: EE CA 03
LDA $03CA               ; $0F:D6D4: AD CA 03
CMP #$34                ; $0F:D6D7: C9 34
BCS CODE_0FD738         ; $0F:D6D9: B0 5D
LSR A                   ; $0F:D6DB: 4A
LSR A                   ; $0F:D6DC: 4A
TAX                     ; $0F:D6DD: AA
LDA DATA_0FD668,x       ; $0F:D6DE: BD 68 D6
CLC                     ; $0F:D6E1: 18
ADC $03AE               ; $0F:D6E2: 6D AE 03
CLC                     ; $0F:D6E5: 18
ADC #$18                ; $0F:D6E6: 69 18
STA $08F8               ; $0F:D6E8: 8D F8 08
LDA DATA_0FD675,x       ; $0F:D6EB: BD 75 D6
CLC                     ; $0F:D6EE: 18
ADC $03AE               ; $0F:D6EF: 6D AE 03
CLC                     ; $0F:D6F2: 18
ADC #$18                ; $0F:D6F3: 69 18
STA $08FC               ; $0F:D6F5: 8D FC 08
LDA DATA_0FD682,x       ; $0F:D6F8: BD 82 D6
BNE CODE_0FD701         ; $0F:D6FB: D0 04
LDA #$F0                ; $0F:D6FD: A9 F0
BRA CODE_0FD708         ; $0F:D6FF: 80 07

CODE_0FD701:
CLC                     ; $0F:D701: 18
ADC $03B9               ; $0F:D702: 6D B9 03
CLC                     ; $0F:D705: 18
ADC #$10                ; $0F:D706: 69 10

CODE_0FD708:
STA $08F9               ; $0F:D708: 8D F9 08
LDA DATA_0FD68F,x       ; $0F:D70B: BD 8F D6
BNE CODE_0FD714         ; $0F:D70E: D0 04
LDA #$F0                ; $0F:D710: A9 F0
BRA CODE_0FD71B         ; $0F:D712: 80 07

CODE_0FD714:
CLC                     ; $0F:D714: 18
ADC #$10                ; $0F:D715: 69 10
CLC                     ; $0F:D717: 18
ADC $03B9               ; $0F:D718: 6D B9 03

CODE_0FD71B:
STA $08FD               ; $0F:D71B: 8D FD 08
LDA DATA_0FD69C,x       ; $0F:D71E: BD 9C D6
STA $08FA               ; $0F:D721: 8D FA 08
LDA DATA_0FD6A9,x       ; $0F:D724: BD A9 D6
STA $08FE               ; $0F:D727: 8D FE 08
LDA DATA_0FD6B6,x       ; $0F:D72A: BD B6 D6
STA $08FB               ; $0F:D72D: 8D FB 08
LDA DATA_0FD6C3,x       ; $0F:D730: BD C3 D6
STA $08FF               ; $0F:D733: 8D FF 08
BRA CODE_0FD73B         ; $0F:D736: 80 03

CODE_0FD738:
STZ $03CB               ; $0F:D738: 9C CB 03

CODE_0FD73B:
PLX                     ; $0F:D73B: FA
RTS                     ; $0F:D73C: 60

CODE_0FD73D:
PHB                     ; $0F:D73D: 8B
PHK                     ; $0F:D73E: 4B
PLB                     ; $0F:D73F: AB
LDA $03CB               ; $0F:D740: AD CB 03
BEQ CODE_0FD748         ; $0F:D743: F0 03
JSR CODE_0FD6D0         ; $0F:D745: 20 D0 D6

CODE_0FD748:
LDA $0F4C               ; $0F:D748: AD 4C 0F
BEQ CODE_0FD762         ; $0F:D74B: F0 15
LDY $014B               ; $0F:D74D: AC 4B 01
CPY #$08                ; $0F:D750: C0 08
BNE CODE_0FD771         ; $0F:D752: D0 1D
LDA $0F4C               ; $0F:D754: AD 4C 0F
LSR A                   ; $0F:D757: 4A
LSR A                   ; $0F:D758: 4A
AND #$01                ; $0F:D759: 29 01
TAY                     ; $0F:D75B: A8
LDA DATA_0FD666,y       ; $0F:D75C: B9 66 D6
TAY                     ; $0F:D75F: A8
BRA CODE_0FD771         ; $0F:D760: 80 0F

CODE_0FD762:
LDA $0792,x             ; $0F:D762: BD 92 07
BNE CODE_0FD76A         ; $0F:D765: D0 03
STZ $014B               ; $0F:D767: 9C 4B 01

CODE_0FD76A:
LDA $014B               ; $0F:D76A: AD 4B 01
LSR A                   ; $0F:D76D: 4A
LSR A                   ; $0F:D76E: 4A
LSR A                   ; $0F:D76F: 4A
TAY                     ; $0F:D770: A8

CODE_0FD771:
LDA DATA_0FD65C,y       ; $0F:D771: B9 5C D6
STA $014C               ; $0F:D774: 8D 4C 01
LDA $0B46,x             ; $0F:D777: BD 46 0B
TAY                     ; $0F:D77A: A8
LDA $03AE               ; $0F:D77B: AD AE 03
STA $0900,y             ; $0F:D77E: 99 00 09
STA $0904,y             ; $0F:D781: 99 04 09
CLC                     ; $0F:D784: 18
ADC #$08                ; $0F:D785: 69 08
STA $0908,y             ; $0F:D787: 99 08 09
CLC                     ; $0F:D78A: 18
ADC #$08                ; $0F:D78B: 69 08
STA $090C,y             ; $0F:D78D: 99 0C 09
STA $0910,y             ; $0F:D790: 99 10 09
STA $0914,y             ; $0F:D793: 99 14 09
LDA $03B9               ; $0F:D796: AD B9 03
STA $0901,y             ; $0F:D799: 99 01 09
STA $090D,y             ; $0F:D79C: 99 0D 09
CLC                     ; $0F:D79F: 18
ADC #$10                ; $0F:D7A0: 69 10
STA $0905,y             ; $0F:D7A2: 99 05 09
STA $0911,y             ; $0F:D7A5: 99 11 09
SEC                     ; $0F:D7A8: 38
SBC #$18                ; $0F:D7A9: E9 18
STA $0909,y             ; $0F:D7AB: 99 09 09
STA $0915,y             ; $0F:D7AE: 99 15 09
LDA $47,x               ; $0F:D7B1: B5 47
STA $DE                 ; $0F:D7B3: 85 DE
CMP #$01                ; $0F:D7B5: C9 01
BEQ CODE_0FD7BD         ; $0F:D7B7: F0 04
LDA #$61                ; $0F:D7B9: A9 61
BRA CODE_0FD7BF         ; $0F:D7BB: 80 02

CODE_0FD7BD:
LDA #$21                ; $0F:D7BD: A9 21

CODE_0FD7BF:
STA $0903,y             ; $0F:D7BF: 99 03 09
STA $0907,y             ; $0F:D7C2: 99 07 09
STA $090B,y             ; $0F:D7C5: 99 0B 09
STA $090F,y             ; $0F:D7C8: 99 0F 09
STA $0913,y             ; $0F:D7CB: 99 13 09
STA $0917,y             ; $0F:D7CE: 99 17 09
STX $9E                 ; $0F:D7D1: 86 9E
LDA $014C               ; $0F:D7D3: AD 4C 01
ASL A                   ; $0F:D7D6: 0A
STA $DD                 ; $0F:D7D7: 85 DD
ASL A                   ; $0F:D7D9: 0A
CLC                     ; $0F:D7DA: 18
ADC $DD                 ; $0F:D7DB: 65 DD
TAX                     ; $0F:D7DD: AA
CLC                     ; $0F:D7DE: 18
ADC #$06                ; $0F:D7DF: 69 06
STA $DD                 ; $0F:D7E1: 85 DD
LDA $DE                 ; $0F:D7E3: A5 DE
CMP #$01                ; $0F:D7E5: C9 01
BEQ CODE_0FD7F4         ; $0F:D7E7: F0 0B
LDA $DD                 ; $0F:D7E9: A5 DD
CLC                     ; $0F:D7EB: 18
ADC #$2A                ; $0F:D7EC: 69 2A
STA $DD                 ; $0F:D7EE: 85 DD
SEC                     ; $0F:D7F0: 38
SBC #$06                ; $0F:D7F1: E9 06
TAX                     ; $0F:D7F3: AA

CODE_0FD7F4:
LDA DATA_0FD608,x       ; $0F:D7F4: BD 08 D6
STA $0902,y             ; $0F:D7F7: 99 02 09
LDA #$02                ; $0F:D7FA: A9 02
STA $0D00,y             ; $0F:D7FC: 99 00 0D
INY                     ; $0F:D7FF: C8
INY                     ; $0F:D800: C8
INY                     ; $0F:D801: C8
INY                     ; $0F:D802: C8
INX                     ; $0F:D803: E8
CPX $DD                 ; $0F:D804: E4 DD
BNE CODE_0FD7F4         ; $0F:D806: D0 EC
LDA #$00                ; $0F:D808: A9 00
STA $0CFC,y             ; $0F:D80A: 99 FC 0C
STA $0CF0,y             ; $0F:D80D: 99 F0 0C
LDX $9E                 ; $0F:D810: A6 9E
LDA $021A,x             ; $0F:D812: BD 1A 02
STA $E4                 ; $0F:D815: 85 E4
LDA $79,x               ; $0F:D817: B5 79
STA $E5                 ; $0F:D819: 85 E5
REP #$20                ; $0F:D81B: C2 20
LDA $E4                 ; $0F:D81D: A5 E4
SEC                     ; $0F:D81F: 38
SBC $42                 ; $0F:D820: E5 42
STA $E4                 ; $0F:D822: 85 E4
CLC                     ; $0F:D824: 18
ADC #$0008              ; $0F:D825: 69 08 00
STA $E6                 ; $0F:D828: 85 E6
CLC                     ; $0F:D82A: 18
ADC #$0008              ; $0F:D82B: 69 08 00
STA $E8                 ; $0F:D82E: 85 E8
CLC                     ; $0F:D830: 18
ADC #$0030              ; $0F:D831: 69 30 00
STA $E2                 ; $0F:D834: 85 E2
SEP #$20                ; $0F:D836: E2 20
LDA $0B46,x             ; $0F:D838: BD 46 0B
TAY                     ; $0F:D83B: A8
LDA $E3                 ; $0F:D83C: A5 E3
CMP #$FF                ; $0F:D83E: C9 FF
BNE CODE_0FD848         ; $0F:D840: D0 06
STZ $10,x               ; $0F:D842: 74 10
STZ $29,x               ; $0F:D844: 74 29
STZ $1C,x               ; $0F:D846: 74 1C

CODE_0FD848:
LDA $E5                 ; $0F:D848: A5 E5
BEQ CODE_0FD854         ; $0F:D84A: F0 08
LDA #$03                ; $0F:D84C: A9 03
STA $0D00,y             ; $0F:D84E: 99 00 0D
STA $0D04,y             ; $0F:D851: 99 04 0D

CODE_0FD854:
LDA $E7                 ; $0F:D854: A5 E7
BEQ CODE_0FD85D         ; $0F:D856: F0 05
LDA #$01                ; $0F:D858: A9 01
STA $0D08,y             ; $0F:D85A: 99 08 0D

CODE_0FD85D:
LDA $E9                 ; $0F:D85D: A5 E9
BEQ CODE_0FD86C         ; $0F:D85F: F0 0B
LDA #$01                ; $0F:D861: A9 01
STA $0D0C,y             ; $0F:D863: 99 0C 0D
STA $0D10,y             ; $0F:D866: 99 10 0D
STA $0D14,y             ; $0F:D869: 99 14 0D

CODE_0FD86C:
LDA $0F4C               ; $0F:D86C: AD 4C 0F
BNE CODE_0FD883         ; $0F:D86F: D0 12
STZ $0F4C               ; $0F:D871: 9C 4C 0F
INC $014B               ; $0F:D874: EE 4B 01
LDA $014B               ; $0F:D877: AD 4B 01
CMP #$30                ; $0F:D87A: C9 30
BCC CODE_0FD8A7         ; $0F:D87C: 90 29
STZ $014B               ; $0F:D87E: 9C 4B 01
BRA CODE_0FD8A7         ; $0F:D881: 80 24

CODE_0FD883:
DEC $0F4C               ; $0F:D883: CE 4C 0F
LDA $0F4C               ; $0F:D886: AD 4C 0F
BNE CODE_0FD8A7         ; $0F:D889: D0 1C
LDA $014B               ; $0F:D88B: AD 4B 01
CMP #$06                ; $0F:D88E: C9 06
BNE CODE_0FD8A4         ; $0F:D890: D0 12
INC $014B               ; $0F:D892: EE 4B 01
LDA #$28                ; $0F:D895: A9 28
STA $0F4C               ; $0F:D897: 8D 4C 0F
LDA #$3A                ; $0F:D89A: A9 3A
STA $1600               ; $0F:D89C: 8D 00 16
JSR CODE_0FD399         ; $0F:D89F: 20 99 D3
BRA CODE_0FD8A7         ; $0F:D8A2: 80 03

CODE_0FD8A4:
STZ $014B               ; $0F:D8A4: 9C 4B 01

CODE_0FD8A7:
LDA $0283               ; $0F:D8A7: AD 83 02
BNE CODE_0FD8EB         ; $0F:D8AA: D0 3F
LDX $9E                 ; $0F:D8AC: A6 9E
LDY $0B46,x             ; $0F:D8AE: BC 46 0B
LDX #$06                ; $0F:D8B1: A2 06

CODE_0FD8B3:
LDA $0903,y             ; $0F:D8B3: B9 03 09
ORA #$80                ; $0F:D8B6: 09 80
STA $0903,y             ; $0F:D8B8: 99 03 09
INY                     ; $0F:D8BB: C8
INY                     ; $0F:D8BC: C8
INY                     ; $0F:D8BD: C8
INY                     ; $0F:D8BE: C8
DEX                     ; $0F:D8BF: CA
BNE CODE_0FD8B3         ; $0F:D8C0: D0 F1
LDX $9E                 ; $0F:D8C2: A6 9E
LDY $0B46,x             ; $0F:D8C4: BC 46 0B
LDA $0901,y             ; $0F:D8C7: B9 01 09
CLC                     ; $0F:D8CA: 18
ADC #$08                ; $0F:D8CB: 69 08
STA $0901,y             ; $0F:D8CD: 99 01 09
STA $090D,y             ; $0F:D8D0: 99 0D 09
LDA $0905,y             ; $0F:D8D3: B9 05 09
SEC                     ; $0F:D8D6: 38
SBC #$18                ; $0F:D8D7: E9 18
STA $0905,y             ; $0F:D8D9: 99 05 09
STA $0911,y             ; $0F:D8DC: 99 11 09
LDA $0909,y             ; $0F:D8DF: B9 09 09
CLC                     ; $0F:D8E2: 18
ADC #$20                ; $0F:D8E3: 69 20
STA $0909,y             ; $0F:D8E5: 99 09 09
STA $0915,y             ; $0F:D8E8: 99 15 09

CODE_0FD8EB:
JSR CODE_0FD0BB         ; $0F:D8EB: 20 BB D0
PLB                     ; $0F:D8EE: AB
RTL                     ; $0F:D8EF: 6B

DATA_0FD8F0:
db $03,$02,$06,$08,$01,$13

CODE_0FD8F6:
PHB                     ; $0F:D8F6: 8B
PHK                     ; $0F:D8F7: 4B
PLB                     ; $0F:D8F8: AB
PHX                     ; $0F:D8F9: DA
LDA $0770               ; $0F:D8FA: AD 70 07
BEQ CODE_0FD94C         ; $0F:D8FD: F0 4D
LDA $0752               ; $0F:D8FF: AD 52 07
CMP #$02                ; $0F:D902: C9 02
BEQ CODE_0FD913         ; $0F:D904: F0 0D
LDY #$05                ; $0F:D906: A0 05
LDA $0710               ; $0F:D908: AD 10 07
CMP #$06                ; $0F:D90B: C9 06
BEQ CODE_0FD91C         ; $0F:D90D: F0 0D
CMP #$07                ; $0F:D90F: C9 07
BEQ CODE_0FD91C         ; $0F:D911: F0 09

CODE_0FD913:
LDY $BA                 ; $0F:D913: A4 BA
LDA $0743               ; $0F:D915: AD 43 07
BEQ CODE_0FD91C         ; $0F:D918: F0 02
LDY #$04                ; $0F:D91A: A0 04

CODE_0FD91C:
LDA $0F                 ; $0F:D91C: A5 0F
CMP #$04                ; $0F:D91E: C9 04
BEQ CODE_0FD943         ; $0F:D920: F0 21
CMP #$05                ; $0F:D922: C9 05
BEQ CODE_0FD943         ; $0F:D924: F0 1D
LDA $DB                 ; $0F:D926: A5 DB
CMP #$39                ; $0F:D928: C9 39
BEQ CODE_0FD939         ; $0F:D92A: F0 0D
CMP #$3B                ; $0F:D92C: C9 3B
BEQ CODE_0FD939         ; $0F:D92E: F0 09
CMP #$3D                ; $0F:D930: C9 3D
BEQ CODE_0FD939         ; $0F:D932: F0 05
LDA DATA_0FD8F0,y       ; $0F:D934: B9 F0 D8
BRA CODE_0FD93B         ; $0F:D937: 80 02

CODE_0FD939:
LDA #$01                ; $0F:D939: A9 01

CODE_0FD93B:
LDX $0EDF               ; $0F:D93B: AE DF 0E
BNE CODE_0FD943         ; $0F:D93E: D0 03
STA $1602               ; $0F:D940: 8D 02 16

CODE_0FD943:
LDX $DB                 ; $0F:D943: A6 DB
CPX #$07                ; $0F:D945: E0 07
BNE CODE_0FD94C         ; $0F:D947: D0 03
STA $0EDF               ; $0F:D949: 8D DF 0E

CODE_0FD94C:
PLX                     ; $0F:D94C: FA
PLB                     ; $0F:D94D: AB
RTL                     ; $0F:D94E: 6B

CODE_0FD94F:
PHB                     ; $0F:D94F: 8B
PHK                     ; $0F:D950: 4B
PLB                     ; $0F:D951: AB
LDA $0770               ; $0F:D952: AD 70 07
CMP #$02                ; $0F:D955: C9 02
BEQ CODE_0FD978         ; $0F:D957: F0 1F
CMP #$01                ; $0F:D959: C9 01
BNE CODE_0FD9B9         ; $0F:D95B: D0 5C
LDA $0772               ; $0F:D95D: AD 72 07
CMP #$03                ; $0F:D960: C9 03
BNE CODE_0FD9B9         ; $0F:D962: D0 55
LDA $0E67               ; $0F:D964: AD 67 0E
BNE CODE_0FD9B9         ; $0F:D967: D0 50
LDA $1201               ; $0F:D969: AD 01 12
CMP #$0F                ; $0F:D96C: C9 0F
BNE CODE_0FD9B9         ; $0F:D96E: D0 49
LDA $0777               ; $0F:D970: AD 77 07
BEQ CODE_0FD97A         ; $0F:D973: F0 05
DEC $0777               ; $0F:D975: CE 77 07

CODE_0FD978:
PLB                     ; $0F:D978: AB
RTL                     ; $0F:D979: 6B

CODE_0FD97A:
LDA $0F                 ; $0F:D97A: A5 0F
CMP #$02                ; $0F:D97C: C9 02
BEQ CODE_0FD9B9         ; $0F:D97E: F0 39
CMP #$03                ; $0F:D980: C9 03
BEQ CODE_0FD9B9         ; $0F:D982: F0 35
LDA $0B7A               ; $0F:D984: AD 7A 0B
BNE CODE_0FD9B9         ; $0F:D987: D0 30
LDA $0B75               ; $0F:D989: AD 75 0B
CMP #$02                ; $0F:D98C: C9 02
BCS CODE_0FD9B9         ; $0F:D98E: B0 29
LDA $0F8A               ; $0F:D990: AD 8A 0F
BEQ CODE_0FD99A         ; $0F:D993: F0 05
DEC $0F8A               ; $0F:D995: CE 8A 0F
BRA CODE_0FD9B9         ; $0F:D998: 80 1F

CODE_0FD99A:
LDA $0B75               ; $0F:D99A: AD 75 0B
BNE CODE_0FD9B9         ; $0F:D99D: D0 1A
LDA $0FF6               ; $0F:D99F: AD F6 0F
AND #$10                ; $0F:D9A2: 29 10
BEQ CODE_0FD9B9         ; $0F:D9A4: F0 13
LDA #$11                ; $0F:D9A6: A9 11
STA $0777               ; $0F:D9A8: 8D 77 07
LDA #$F1                ; $0F:D9AB: A9 F1
STA $1602               ; $0F:D9AD: 8D 02 16
LDA #$43                ; $0F:D9B0: A9 43
STA $1600               ; $0F:D9B2: 8D 00 16
JSL CODE_0FDA18         ; $0F:D9B5: 22 18 DA 0F

CODE_0FD9B9:
PLB                     ; $0F:D9B9: AB
RTL                     ; $0F:D9BA: 6B

CODE_0FD9BB:
INC $0B76               ; $0F:D9BB: EE 76 0B
LDA #$38                ; $0F:D9BE: A9 38
STA $0287               ; $0F:D9C0: 8D 87 02
REP #$20                ; $0F:D9C3: C2 20
LDA #$B000              ; $0F:D9C5: A9 00 B0
STA $0285               ; $0F:D9C8: 8D 85 02
LDA #$0800              ; $0F:D9CB: A9 00 08
STA $0288               ; $0F:D9CE: 8D 88 02
LDA #$7C00              ; $0F:D9D1: A9 00 7C
STA $028A               ; $0F:D9D4: 8D 8A 02
SEP #$20                ; $0F:D9D7: E2 20
RTS                     ; $0F:D9D9: 60

CODE_0FD9DA:
INC $0B76               ; $0F:D9DA: EE 76 0B
LDA #$07                ; $0F:D9DD: A9 07
STA $0287               ; $0F:D9DF: 8D 87 02
REP #$20                ; $0F:D9E2: C2 20
LDA #$B800              ; $0F:D9E4: A9 00 B8
STA $0285               ; $0F:D9E7: 8D 85 02
LDA #$0800              ; $0F:D9EA: A9 00 08
STA $0288               ; $0F:D9ED: 8D 88 02
LDA #$7C00              ; $0F:D9F0: A9 00 7C
STA $028A               ; $0F:D9F3: 8D 8A 02
SEP #$20                ; $0F:D9F6: E2 20
RTS                     ; $0F:D9F8: 60

CODE_0FD9F9:
PHX                     ; $0F:D9F9: DA
PHY                     ; $0F:D9FA: 5A
JSR CODE_0FDE85         ; $0F:D9FB: 20 85 DE
JSR CODE_0FDE22         ; $0F:D9FE: 20 22 DE
LDA #$22                ; $0F:DA01: A9 22
STA $1204               ; $0F:DA03: 8D 04 12
LDA #$02                ; $0F:DA06: A9 02
STA $1205               ; $0F:DA08: 8D 05 12
LDA #$15                ; $0F:DA0B: A9 15
STA $1207               ; $0F:DA0D: 8D 07 12
LDA #$02                ; $0F:DA10: A9 02
STA $1208               ; $0F:DA12: 8D 08 12
PLY                     ; $0F:DA15: 7A
PLX                     ; $0F:DA16: FA
RTL                     ; $0F:DA17: 6B

CODE_0FDA18:
JSR CODE_0FDE85         ; $0F:DA18: 20 85 DE
JSR CODE_0FDE22         ; $0F:DA1B: 20 22 DE
JSR CODE_0FDA4C         ; $0F:DA1E: 20 4C DA
JSR CODE_0FD9BB         ; $0F:DA21: 20 BB D9
LDA #$01                ; $0F:DA24: A9 01
STA $0776               ; $0F:DA26: 8D 76 07
STZ $0B77               ; $0F:DA29: 9C 77 0B
STZ $0B78               ; $0F:DA2C: 9C 78 0B
STZ $0F8A               ; $0F:DA2F: 9C 8A 0F
RTL                     ; $0F:DA32: 6B

CODE_0FDA33:
PHB                     ; $0F:DA33: 8B
PHK                     ; $0F:DA34: 4B
PLB                     ; $0F:DA35: AB
PHX                     ; $0F:DA36: DA
PHY                     ; $0F:DA37: 5A
LDA $0B75               ; $0F:DA38: AD 75 0B
ASL A                   ; $0F:DA3B: 0A
TAX                     ; $0F:DA3C: AA
JSR (PNTR_0FDA44,x)     ; $0F:DA3D: FC 44 DA
PLY                     ; $0F:DA40: 7A
PLX                     ; $0F:DA41: FA
PLB                     ; $0F:DA42: AB
RTL                     ; $0F:DA43: 6B

PNTR_0FDA44:
dw CODE_0FDD00
dw CODE_0FDA6F
dw CODE_0FDDFC
dw CODE_0FDD6A

CODE_0FDA4C:
REP #$20                ; $0F:DA4C: C2 20
LDA #$0010              ; $0F:DA4E: A9 10 00
STA $0B6B               ; $0F:DA51: 8D 6B 0B
LDA #$0064              ; $0F:DA54: A9 64 00
STA $0B6D               ; $0F:DA57: 8D 6D 0B
LDA #$00A4              ; $0F:DA5A: A9 A4 00
STA $0B6F               ; $0F:DA5D: 8D 6F 0B
LDA #$00C4              ; $0F:DA60: A9 C4 00
STA $0B71               ; $0F:DA63: 8D 71 0B
LDA #$00D0              ; $0F:DA66: A9 D0 00
STA $0B73               ; $0F:DA69: 8D 73 0B
SEP #$20                ; $0F:DA6C: E2 20
RTS                     ; $0F:DA6E: 60

CODE_0FDA6F:
JSR CODE_0FDC34         ; $0F:DA6F: 20 34 DC
LDA $0FF6               ; $0F:DA72: AD F6 0F
STA $F2                 ; $0F:DA75: 85 F2
AND #$2C                ; $0F:DA77: 29 2C
BEQ CODE_0FDAF3         ; $0F:DA79: F0 78
LDA $1680               ; $0F:DA7B: AD 80 16
BEQ CODE_0FDAA2         ; $0F:DA7E: F0 22
AND #$10                ; $0F:DA80: 29 10
CMP #$10                ; $0F:DA82: C9 10
BEQ CODE_0FDAA2         ; $0F:DA84: F0 1C
LDA $F2                 ; $0F:DA86: A5 F2
AND #$20                ; $0F:DA88: 29 20
BEQ CODE_0FDA96         ; $0F:DA8A: F0 0A
LDA $0B77               ; $0F:DA8C: AD 77 0B
EOR #$02                ; $0F:DA8F: 49 02

CODE_0FDA91:
STA $0B77               ; $0F:DA91: 8D 77 0B
BRA CODE_0FDABD         ; $0F:DA94: 80 27

CODE_0FDA96:
LDA $F2                 ; $0F:DA96: A5 F2
AND #$04                ; $0F:DA98: 29 04
LSR A                   ; $0F:DA9A: 4A
CMP $0B77               ; $0F:DA9B: CD 77 0B
BNE CODE_0FDA91         ; $0F:DA9E: D0 F1
BRA CODE_0FDAF3         ; $0F:DAA0: 80 51

CODE_0FDAA2:
LDA $F2                 ; $0F:DAA2: A5 F2
AND #$20                ; $0F:DAA4: 29 20
BNE CODE_0FDADE         ; $0F:DAA6: D0 36
LDA $F2                 ; $0F:DAA8: A5 F2
AND #$08                ; $0F:DAAA: 29 08
BNE CODE_0FDAC7         ; $0F:DAAC: D0 19
INC $0B77               ; $0F:DAAE: EE 77 0B
LDA $0B77               ; $0F:DAB1: AD 77 0B
CMP #$03                ; $0F:DAB4: C9 03
BCC CODE_0FDABD         ; $0F:DAB6: 90 05
DEC $0B77               ; $0F:DAB8: CE 77 0B
BRA CODE_0FDAF3         ; $0F:DABB: 80 36

CODE_0FDABD:
LDA #$01                ; $0F:DABD: A9 01
STA $1603               ; $0F:DABF: 8D 03 16
STZ $0B78               ; $0F:DAC2: 9C 78 0B
BRA CODE_0FDAF3         ; $0F:DAC5: 80 2C

CODE_0FDAC7:
DEC $0B77               ; $0F:DAC7: CE 77 0B
LDA $0B77               ; $0F:DACA: AD 77 0B
BPL CODE_0FDAD4         ; $0F:DACD: 10 05
INC $0B77               ; $0F:DACF: EE 77 0B
BRA CODE_0FDAF3         ; $0F:DAD2: 80 1F

CODE_0FDAD4:
LDA #$01                ; $0F:DAD4: A9 01
STA $1603               ; $0F:DAD6: 8D 03 16
STZ $0B78               ; $0F:DAD9: 9C 78 0B
BRA CODE_0FDAF3         ; $0F:DADC: 80 15

CODE_0FDADE:
INC $0B77               ; $0F:DADE: EE 77 0B
LDA $0B77               ; $0F:DAE1: AD 77 0B
CMP #$03                ; $0F:DAE4: C9 03
BCC CODE_0FDAEB         ; $0F:DAE6: 90 03
STZ $0B77               ; $0F:DAE8: 9C 77 0B

CODE_0FDAEB:
LDA #$01                ; $0F:DAEB: A9 01
STA $1603               ; $0F:DAED: 8D 03 16
STZ $0B78               ; $0F:DAF0: 9C 78 0B

CODE_0FDAF3:
LDA #$4C                ; $0F:DAF3: A9 4C
STA $0800               ; $0F:DAF5: 8D 00 08
LDX $0B77               ; $0F:DAF8: AE 77 0B
LDA DATA_0FDB91,x       ; $0F:DAFB: BD 91 DB
STA $0801               ; $0F:DAFE: 8D 01 08
LDA $0B78               ; $0F:DB01: AD 78 0B
AND #$10                ; $0F:DB04: 29 10
LSR A                   ; $0F:DB06: 4A
LSR A                   ; $0F:DB07: 4A
LSR A                   ; $0F:DB08: 4A
LSR A                   ; $0F:DB09: 4A
TAX                     ; $0F:DB0A: AA
LDA DATA_0FDB94,x       ; $0F:DB0B: BD 94 DB
STA $0802               ; $0F:DB0E: 8D 02 08
LDA #$21                ; $0F:DB11: A9 21
STA $0803               ; $0F:DB13: 8D 03 08
LDA #$00                ; $0F:DB16: A9 00
STA $0C00               ; $0F:DB18: 8D 00 0C
INC $0B78               ; $0F:DB1B: EE 78 0B
LDA $F2                 ; $0F:DB1E: A5 F2
AND #$10                ; $0F:DB20: 29 10
BEQ CODE_0FDB90         ; $0F:DB22: F0 6C
LDA #$F2                ; $0F:DB24: A9 F2
STA $1602               ; $0F:DB26: 8D 02 16
STZ $0B78               ; $0F:DB29: 9C 78 0B
LDA $0B77               ; $0F:DB2C: AD 77 0B
BEQ CODE_0FDB4E         ; $0F:DB2F: F0 1D
LDA #$30                ; $0F:DB31: A9 30
STA $0F8A               ; $0F:DB33: 8D 8A 0F
LDA #$02                ; $0F:DB36: A9 02
STA $0B75               ; $0F:DB38: 8D 75 0B
LDA #$3B                ; $0F:DB3B: A9 3B
STA $1600               ; $0F:DB3D: 8D 00 16
LDA $0B77               ; $0F:DB40: AD 77 0B
CMP #$02                ; $0F:DB43: C9 02
BNE CODE_0FDB62         ; $0F:DB45: D0 1B
LDA #$F3                ; $0F:DB47: A9 F3
STA $1602               ; $0F:DB49: 8D 02 16
BRA CODE_0FDB62         ; $0F:DB4C: 80 14

CODE_0FDB4E:
LDA #$10                ; $0F:DB4E: A9 10
STA $0F8A               ; $0F:DB50: 8D 8A 0F
LDA #$10                ; $0F:DB53: A9 10
STA $0B6B               ; $0F:DB55: 8D 6B 0B
LDA #$02                ; $0F:DB58: A9 02
STA $0B75               ; $0F:DB5A: 8D 75 0B
LDA #$43                ; $0F:DB5D: A9 43
STA $1600               ; $0F:DB5F: 8D 00 16

CODE_0FDB62:
LDA $1680               ; $0F:DB62: AD 80 16
CMP #$10                ; $0F:DB65: C9 10
BNE CODE_0FDB82         ; $0F:DB67: D0 19
LDA $0B77               ; $0F:DB69: AD 77 0B
CMP #$02                ; $0F:DB6C: C9 02
BEQ CODE_0FDB82         ; $0F:DB6E: F0 12
STZ $0776               ; $0F:DB70: 9C 76 07
LDA #$0E                ; $0F:DB73: A9 0E
STA $0772               ; $0F:DB75: 8D 72 07
LDX $0B77               ; $0F:DB78: AE 77 0B
BEQ CODE_0FDB81         ; $0F:DB7B: F0 04
JSL CODE_0090AC         ; $0F:DB7D: 22 AC 90 00

CODE_0FDB81:
RTS                     ; $0F:DB81: 60

CODE_0FDB82:
LDA #$20                ; $0F:DB82: A9 20
STA $0F8A               ; $0F:DB84: 8D 8A 0F
LDA $0B77               ; $0F:DB87: AD 77 0B
BEQ CODE_0FDB90         ; $0F:DB8A: F0 04
JSL CODE_0090AC         ; $0F:DB8C: 22 AC 90 00

CODE_0FDB90:
RTS                     ; $0F:DB90: 60

DATA_0FDB91:
db $50,$60,$70

DATA_0FDB94:
db $D0,$DE

DATA_0FDB96:
db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
db $AA,$AA,$AA,$AA,$AA,$14,$15,$16
db $17,$18,$19,$1A,$1B,$AA,$AA,$AA
db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$28
db $29,$2A,$2B,$1C,$14,$15,$16,$17
db $18,$19,$1A,$1B,$AA,$AA,$AA,$AA
db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
db $AA,$28,$29,$2A,$2B,$1C,$24,$25
db $26,$27,$AA,$AA,$AA,$AA,$FF

DATA_0FDBE5:
db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
db $AA,$AA,$AA,$AA,$AA,$24,$25,$26
db $27,$AA,$AA,$AA,$AA,$AA,$AA,$AA
db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
db $AA,$28,$29,$2A,$2B,$1C,$24,$25
db $26,$27,$AA,$AA,$AA,$AA,$FF

CODE_0FDC34:
REP #$10                ; $0F:DC34: C2 10
LDY #$0010              ; $0F:DC36: A0 10 00
LDX #$0000              ; $0F:DC39: A2 00 00
LDA #$48                ; $0F:DC3C: A9 48
STA $01                 ; $0F:DC3E: 85 01

CODE_0FDC40:
LDA #$58                ; $0F:DC40: A9 58
STA $00                 ; $0F:DC42: 85 00

CODE_0FDC44:
LDA $1680               ; $0F:DC44: AD 80 16
BEQ CODE_0FDC5A         ; $0F:DC47: F0 11
AND #$10                ; $0F:DC49: 29 10
CMP #$10                ; $0F:DC4B: C9 10
BEQ CODE_0FDC5A         ; $0F:DC4D: F0 0B
LDA DATA_0FDBE5,x       ; $0F:DC4F: BD E5 DB
BPL CODE_0FDC77         ; $0F:DC52: 10 23
INX                     ; $0F:DC54: E8
INC A                   ; $0F:DC55: 1A
BEQ CODE_0FDC98         ; $0F:DC56: F0 40
BRA CODE_0FDC63         ; $0F:DC58: 80 09

CODE_0FDC5A:
LDA DATA_0FDB96,x       ; $0F:DC5A: BD 96 DB
BPL CODE_0FDC77         ; $0F:DC5D: 10 18
INX                     ; $0F:DC5F: E8
INC A                   ; $0F:DC60: 1A
BEQ CODE_0FDC98         ; $0F:DC61: F0 35

CODE_0FDC63:
LDA $00                 ; $0F:DC63: A5 00
CLC                     ; $0F:DC65: 18
ADC #$08                ; $0F:DC66: 69 08
STA $00                 ; $0F:DC68: 85 00
CMP #$C0                ; $0F:DC6A: C9 C0
BCC CODE_0FDC44         ; $0F:DC6C: 90 D6
LDA $01                 ; $0F:DC6E: A5 01
CLC                     ; $0F:DC70: 18
ADC #$08                ; $0F:DC71: 69 08
STA $01                 ; $0F:DC73: 85 01
BRA CODE_0FDC40         ; $0F:DC75: 80 C9

CODE_0FDC77:
CLC                     ; $0F:DC77: 18
ADC #$C0                ; $0F:DC78: 69 C0
STA $0802,y             ; $0F:DC7A: 99 02 08
LDA $00                 ; $0F:DC7D: A5 00
STA $0800,y             ; $0F:DC7F: 99 00 08
LDA $01                 ; $0F:DC82: A5 01
STA $0801,y             ; $0F:DC84: 99 01 08
LDA #$21                ; $0F:DC87: A9 21
STA $0803,y             ; $0F:DC89: 99 03 08
LDA #$00                ; $0F:DC8C: A9 00
STA $0C00,y             ; $0F:DC8E: 99 00 0C
INX                     ; $0F:DC91: E8
INY                     ; $0F:DC92: C8
INY                     ; $0F:DC93: C8
INY                     ; $0F:DC94: C8
INY                     ; $0F:DC95: C8
BRA CODE_0FDC63         ; $0F:DC96: 80 CB

CODE_0FDC98:
LDA #$40                ; $0F:DC98: A9 40
STA $01                 ; $0F:DC9A: 85 01

CODE_0FDC9C:
LDA #$40                ; $0F:DC9C: A9 40
STA $00                 ; $0F:DC9E: 85 00

CODE_0FDCA0:
LDA $00                 ; $0F:DCA0: A5 00
STA $0800,y             ; $0F:DCA2: 99 00 08
CLC                     ; $0F:DCA5: 18
ADC #$10                ; $0F:DCA6: 69 10
STA $00                 ; $0F:DCA8: 85 00
LDA $01                 ; $0F:DCAA: A5 01
STA $0801,y             ; $0F:DCAC: 99 01 08
LDA #$CD                ; $0F:DCAF: A9 CD
STA $0802,y             ; $0F:DCB1: 99 02 08
LDA #$21                ; $0F:DCB4: A9 21
STA $0803,y             ; $0F:DCB6: 99 03 08
LDA #$02                ; $0F:DCB9: A9 02
STA $0C00,y             ; $0F:DCBB: 99 00 0C
INY                     ; $0F:DCBE: C8
INY                     ; $0F:DCBF: C8
INY                     ; $0F:DCC0: C8
INY                     ; $0F:DCC1: C8
LDA $00                 ; $0F:DCC2: A5 00
CMP #$C0                ; $0F:DCC4: C9 C0
BCC CODE_0FDCA0         ; $0F:DCC6: 90 D8
LDA $01                 ; $0F:DCC8: A5 01
CMP #$80                ; $0F:DCCA: C9 80
BCS CODE_0FDCD5         ; $0F:DCCC: B0 07
CLC                     ; $0F:DCCE: 18
ADC #$10                ; $0F:DCCF: 69 10
STA $01                 ; $0F:DCD1: 85 01
BRA CODE_0FDC9C         ; $0F:DCD3: 80 C7

CODE_0FDCD5:
SEP #$10                ; $0F:DCD5: E2 10
LDA #$4C                ; $0F:DCD7: A9 4C
STA $0800               ; $0F:DCD9: 8D 00 08
LDX $0B77               ; $0F:DCDC: AE 77 0B
LDA DATA_0FDB91,x       ; $0F:DCDF: BD 91 DB
STA $0801               ; $0F:DCE2: 8D 01 08
LDA $0B78               ; $0F:DCE5: AD 78 0B
AND #$10                ; $0F:DCE8: 29 10
LSR A                   ; $0F:DCEA: 4A
LSR A                   ; $0F:DCEB: 4A
LSR A                   ; $0F:DCEC: 4A
LSR A                   ; $0F:DCED: 4A
TAX                     ; $0F:DCEE: AA
LDA DATA_0FDB94,x       ; $0F:DCEF: BD 94 DB
STA $0802               ; $0F:DCF2: 8D 02 08
LDA #$21                ; $0F:DCF5: A9 21
STA $0803               ; $0F:DCF7: 8D 03 08
LDA #$00                ; $0F:DCFA: A9 00
STA $0C00               ; $0F:DCFC: 8D 00 0C
RTS                     ; $0F:DCFF: 60

CODE_0FDD00:
LDA $0B6B               ; $0F:DD00: AD 6B 0B
BEQ CODE_0FDD63         ; $0F:DD03: F0 5E
BMI CODE_0FDD63         ; $0F:DD05: 30 5C
REP #$30                ; $0F:DD07: C2 30
DEC $0B6B               ; $0F:DD09: CE 6B 0B
DEC $0B6D               ; $0F:DD0C: CE 6D 0B
DEC $0B6D               ; $0F:DD0F: CE 6D 0B
INC $0B6F               ; $0F:DD12: EE 6F 0B
INC $0B6F               ; $0F:DD15: EE 6F 0B
DEC $0B71               ; $0F:DD18: CE 71 0B
DEC $0B71               ; $0F:DD1B: CE 71 0B
DEC $0B71               ; $0F:DD1E: CE 71 0B
DEC $0B71               ; $0F:DD21: CE 71 0B
INC $0B73               ; $0F:DD24: EE 73 0B
INC $0B73               ; $0F:DD27: EE 73 0B
INC $0B73               ; $0F:DD2A: EE 73 0B
INC $0B73               ; $0F:DD2D: EE 73 0B
LDX #$007E              ; $0F:DD30: A2 7E 00
LDA #$00FF              ; $0F:DD33: A9 FF 00

CODE_0FDD36:
STA $7FF000,x           ; $0F:DD36: 9F 00 F0 7F
STA $7FF080,x           ; $0F:DD3A: 9F 80 F0 7F
STA $7FF100,x           ; $0F:DD3E: 9F 00 F1 7F
STA $7FF180,x           ; $0F:DD42: 9F 80 F1 7F
DEX                     ; $0F:DD46: CA
DEX                     ; $0F:DD47: CA
BPL CODE_0FDD36         ; $0F:DD48: 10 EC
LDA $0B6F               ; $0F:DD4A: AD 6F 0B
XBA                     ; $0F:DD4D: EB
ORA $0B6D               ; $0F:DD4E: 0D 6D 0B
LDX $0B71               ; $0F:DD51: AE 71 0B

CODE_0FDD54:
STA $7FF000,x           ; $0F:DD54: 9F 00 F0 7F
INX                     ; $0F:DD58: E8
INX                     ; $0F:DD59: E8
CPX $0B73               ; $0F:DD5A: EC 73 0B
BNE CODE_0FDD54         ; $0F:DD5D: D0 F5
SEP #$30                ; $0F:DD5F: E2 30
BRA CODE_0FDD66         ; $0F:DD61: 80 03

CODE_0FDD63:
INC $0B75               ; $0F:DD63: EE 75 0B

CODE_0FDD66:
JSR CODE_0FDC34         ; $0F:DD66: 20 34 DC
RTS                     ; $0F:DD69: 60

CODE_0FDD6A:
LDA $0B6B               ; $0F:DD6A: AD 6B 0B
BEQ CODE_0FDDCD         ; $0F:DD6D: F0 5E
BMI CODE_0FDDCD         ; $0F:DD6F: 30 5C
REP #$30                ; $0F:DD71: C2 30
INC $0B6D               ; $0F:DD73: EE 6D 0B
INC $0B6D               ; $0F:DD76: EE 6D 0B
DEC $0B6F               ; $0F:DD79: CE 6F 0B
DEC $0B6F               ; $0F:DD7C: CE 6F 0B
INC $0B71               ; $0F:DD7F: EE 71 0B
INC $0B71               ; $0F:DD82: EE 71 0B
INC $0B71               ; $0F:DD85: EE 71 0B
INC $0B71               ; $0F:DD88: EE 71 0B
DEC $0B73               ; $0F:DD8B: CE 73 0B
DEC $0B73               ; $0F:DD8E: CE 73 0B
DEC $0B73               ; $0F:DD91: CE 73 0B
DEC $0B73               ; $0F:DD94: CE 73 0B
DEC $0B6B               ; $0F:DD97: CE 6B 0B
LDX #$007E              ; $0F:DD9A: A2 7E 00
LDA #$00FF              ; $0F:DD9D: A9 FF 00

CODE_0FDDA0:
STA $7FF000,x           ; $0F:DDA0: 9F 00 F0 7F
STA $7FF080,x           ; $0F:DDA4: 9F 80 F0 7F
STA $7FF100,x           ; $0F:DDA8: 9F 00 F1 7F
STA $7FF180,x           ; $0F:DDAC: 9F 80 F1 7F
DEX                     ; $0F:DDB0: CA
DEX                     ; $0F:DDB1: CA
BPL CODE_0FDDA0         ; $0F:DDB2: 10 EC
LDA $0B6F               ; $0F:DDB4: AD 6F 0B
XBA                     ; $0F:DDB7: EB
ORA $0B6D               ; $0F:DDB8: 0D 6D 0B
LDX $0B71               ; $0F:DDBB: AE 71 0B

CODE_0FDDBE:
STA $7FF000,x           ; $0F:DDBE: 9F 00 F0 7F
INX                     ; $0F:DDC2: E8
INX                     ; $0F:DDC3: E8
CPX $0B73               ; $0F:DDC4: EC 73 0B
BNE CODE_0FDDBE         ; $0F:DDC7: D0 F5
SEP #$30                ; $0F:DDC9: E2 30
BRA CODE_0FDDF8         ; $0F:DDCB: 80 2B

CODE_0FDDCD:
STZ $0B75               ; $0F:DDCD: 9C 75 0B
LDA #$0F                ; $0F:DDD0: A9 0F
STA $1201               ; $0F:DDD2: 8D 01 12
STZ $0776               ; $0F:DDD5: 9C 76 07
LDA $1206               ; $0F:DDD8: AD 06 12
EOR #$03                ; $0F:DDDB: 49 03
STA $1206               ; $0F:DDDD: 8D 06 12
LDA $1207               ; $0F:DDE0: AD 07 12
EOR #$10                ; $0F:DDE3: 49 10
STA $1207               ; $0F:DDE5: 8D 07 12
JSR CODE_0FD9DA         ; $0F:DDE8: 20 DA D9
JSL CODE_0D83E8         ; $0F:DDEB: 22 E8 83 0D
LDA $1203               ; $0F:DDEF: AD 03 12
AND #$F7                ; $0F:DDF2: 29 F7
STA $1203               ; $0F:DDF4: 8D 03 12
RTS                     ; $0F:DDF7: 60

CODE_0FDDF8:
JSR CODE_0FDC34         ; $0F:DDF8: 20 34 DC
RTS                     ; $0F:DDFB: 60

CODE_0FDDFC:
DEC $0F8A               ; $0F:DDFC: CE 8A 0F
BNE CODE_0FDE1E         ; $0F:DDFF: D0 1D
INC $0B75               ; $0F:DE01: EE 75 0B
LDA #$10                ; $0F:DE04: A9 10
STA $0B6B               ; $0F:DE06: 8D 6B 0B
STA $0F8A               ; $0F:DE09: 8D 8A 0F
LDA $1680               ; $0F:DE0C: AD 80 16
CMP #$01                ; $0F:DE0F: C9 01
BEQ CODE_0FDE1A         ; $0F:DE11: F0 07
LDA $0B77               ; $0F:DE13: AD 77 0B
CMP #$02                ; $0F:DE16: C9 02
BNE CODE_0FDE1E         ; $0F:DE18: D0 04

CODE_0FDE1A:
JML CODE_0080DE         ; $0F:DE1A: 5C DE 80 00

CODE_0FDE1E:
JSR CODE_0FDC34         ; $0F:DE1E: 20 34 DC
RTS                     ; $0F:DE21: 60

CODE_0FDE22:
PHB                     ; $0F:DE22: 8B
LDA #$7F                ; $0F:DE23: A9 7F
PHA                     ; $0F:DE25: 48
PLB                     ; $0F:DE26: AB
REP #$30                ; $0F:DE27: C2 30
LDX #$007E              ; $0F:DE29: A2 7E 00
LDA #$0000              ; $0F:DE2C: A9 00 00

CODE_0FDE2F:
STA $F000,x             ; $0F:DE2F: 9D 00 F0
STA $F080,x             ; $0F:DE32: 9D 80 F0
STA $F100,x             ; $0F:DE35: 9D 00 F1
STA $F180,x             ; $0F:DE38: 9D 80 F1
DEX                     ; $0F:DE3B: CA
DEX                     ; $0F:DE3C: CA
BPL CODE_0FDE2F         ; $0F:DE3D: 10 F0
PLB                     ; $0F:DE3F: AB
SEP #$20                ; $0F:DE40: E2 20
LDX #$2641              ; $0F:DE42: A2 41 26
STX $4330               ; $0F:DE45: 8E 30 43
LDX.w #DATA_0FDE7E      ; $0F:DE48: A2 7E DE
STX $4332               ; $0F:DE4B: 8E 32 43
LDA.b #DATA_0FDE7E>>16  ; $0F:DE4E: A9 0F
STA $4334               ; $0F:DE50: 8D 34 43
LDA #$7F                ; $0F:DE53: A9 7F
STA $4337               ; $0F:DE55: 8D 37 43
LDA #$00                ; $0F:DE58: A9 00
STA $1204               ; $0F:DE5A: 8D 04 12
STZ $1205               ; $0F:DE5D: 9C 05 12
LDA $1206               ; $0F:DE60: AD 06 12
ORA #$03                ; $0F:DE63: 09 03
STA $1206               ; $0F:DE65: 8D 06 12
LDA $1207               ; $0F:DE68: AD 07 12
ORA #$10                ; $0F:DE6B: 09 10
STA $1207               ; $0F:DE6D: 8D 07 12
STZ $1208               ; $0F:DE70: 9C 08 12
SEP #$10                ; $0F:DE73: E2 10
LDA $1203               ; $0F:DE75: AD 03 12
ORA #$08                ; $0F:DE78: 09 08
STA $1203               ; $0F:DE7A: 8D 03 12
RTS                     ; $0F:DE7D: 60

DATA_0FDE7E:
db $F8,$00,$F0,$F8,$F0,$F0,$00

CODE_0FDE85:
PHB                     ; $0F:DE85: 8B
LDA #$7F                ; $0F:DE86: A9 7F
PHA                     ; $0F:DE88: 48
PLB                     ; $0F:DE89: AB
REP #$30                ; $0F:DE8A: C2 30
LDX #$01A0              ; $0F:DE8C: A2 A0 01

CODE_0FDE8F:
LDA #$00FF              ; $0F:DE8F: A9 FF 00
STA $F000,x             ; $0F:DE92: 9D 00 F0
STA $F002,x             ; $0F:DE95: 9D 02 F0
STA $F004,x             ; $0F:DE98: 9D 04 F0
STA $F006,x             ; $0F:DE9B: 9D 06 F0
STA $F008,x             ; $0F:DE9E: 9D 08 F0
STA $F00A,x             ; $0F:DEA1: 9D 0A F0
STA $F00C,x             ; $0F:DEA4: 9D 0C F0
STA $F00E,x             ; $0F:DEA7: 9D 0E F0
STA $F010,x             ; $0F:DEAA: 9D 10 F0
STA $F012,x             ; $0F:DEAD: 9D 12 F0
STA $F014,x             ; $0F:DEB0: 9D 14 F0
STA $F016,x             ; $0F:DEB3: 9D 16 F0
STA $F018,x             ; $0F:DEB6: 9D 18 F0
STA $F01A,x             ; $0F:DEB9: 9D 1A F0
STA $F01C,x             ; $0F:DEBC: 9D 1C F0
STA $F01E,x             ; $0F:DEBF: 9D 1E F0
STA $F200,x             ; $0F:DEC2: 9D 00 F2
STA $F202,x             ; $0F:DEC5: 9D 02 F2
STA $F204,x             ; $0F:DEC8: 9D 04 F2
STA $F206,x             ; $0F:DECB: 9D 06 F2
STA $F208,x             ; $0F:DECE: 9D 08 F2
STA $F20A,x             ; $0F:DED1: 9D 0A F2
STA $F20C,x             ; $0F:DED4: 9D 0C F2
STA $F20E,x             ; $0F:DED7: 9D 0E F2
STA $F210,x             ; $0F:DEDA: 9D 10 F2
STA $F212,x             ; $0F:DEDD: 9D 12 F2
STA $F214,x             ; $0F:DEE0: 9D 14 F2
STA $F216,x             ; $0F:DEE3: 9D 16 F2
STA $F218,x             ; $0F:DEE6: 9D 18 F2
STA $F21A,x             ; $0F:DEE9: 9D 1A F2
STA $F21C,x             ; $0F:DEEC: 9D 1C F2
STA $F21E,x             ; $0F:DEEF: 9D 1E F2
TXA                     ; $0F:DEF2: 8A
SEC                     ; $0F:DEF3: 38
SBC #$0020              ; $0F:DEF4: E9 20 00
TAX                     ; $0F:DEF7: AA
BPL CODE_0FDE8F         ; $0F:DEF8: 10 95
SEP #$30                ; $0F:DEFA: E2 30
PLB                     ; $0F:DEFC: AB
RTS                     ; $0F:DEFD: 60

CODE_0FDEFE:
PHB                     ; $0F:DEFE: 8B
PHK                     ; $0F:DEFF: 4B
PLB                     ; $0F:DF00: AB
PHX                     ; $0F:DF01: DA
LDX $0EC3               ; $0F:DF02: AE C3 0E
LDA $0FFA,x             ; $0F:DF05: BD FA 0F
PLX                     ; $0F:DF08: FA
AND #$C0                ; $0F:DF09: 29 C0
BEQ CODE_0FDF23         ; $0F:DF0B: F0 16
AND #$80                ; $0F:DF0D: 29 80
BEQ CODE_0FDF1B         ; $0F:DF0F: F0 0A
STZ $0754               ; $0F:DF11: 9C 54 07
LDA #$01                ; $0F:DF14: A9 01
STA $0756               ; $0F:DF16: 8D 56 07
BRA CODE_0FDF23         ; $0F:DF19: 80 08

CODE_0FDF1B:
STZ $0754               ; $0F:DF1B: 9C 54 07
LDA #$02                ; $0F:DF1E: A9 02
STA $0756               ; $0F:DF20: 8D 56 07

CODE_0FDF23:
LDA $0FF6               ; $0F:DF23: AD F6 0F
AND #$20                ; $0F:DF26: 29 20
BEQ CODE_0FDF38         ; $0F:DF28: F0 0E
EOR $0E73               ; $0F:DF2A: 4D 73 0E
STA $0E73               ; $0F:DF2D: 8D 73 0E
LSR A                   ; $0F:DF30: 4A
LSR A                   ; $0F:DF31: 4A
LSR A                   ; $0F:DF32: 4A
LSR A                   ; $0F:DF33: 4A
LSR A                   ; $0F:DF34: 4A
STA $0716               ; $0F:DF35: 8D 16 07

CODE_0FDF38:
LDA $0E73               ; $0F:DF38: AD 73 0E
BNE CODE_0FDF40         ; $0F:DF3B: D0 03
JMP CODE_0FDFE7         ; $0F:DF3D: 4C E7 DF

CODE_0FDF40:
LDA #$10                ; $0F:DF40: A9 10
STA $07AF               ; $0F:DF42: 8D AF 07
LDA $0FF8               ; $0F:DF45: AD F8 0F
AND #$10                ; $0F:DF48: 29 10
BEQ CODE_0FDF8B         ; $0F:DF4A: F0 3F
LDA $09                 ; $0F:DF4C: A5 09
AND #$07                ; $0F:DF4E: 29 07
BNE CODE_0FDF8B         ; $0F:DF50: D0 39
LDA $0FF4               ; $0F:DF52: AD F4 0F
LSR A                   ; $0F:DF55: 4A
BCS CODE_0FDF64         ; $0F:DF56: B0 0C
LSR A                   ; $0F:DF58: 4A
BCS CODE_0FDF72         ; $0F:DF59: B0 17
LSR A                   ; $0F:DF5B: 4A
BCS CODE_0FDF88         ; $0F:DF5C: B0 2A
LSR A                   ; $0F:DF5E: 4A
BCS CODE_0FDF81         ; $0F:DF5F: B0 20
JMP CODE_0FDFEA         ; $0F:DF61: 4C EA DF

CODE_0FDF64:
LDA #$09                ; $0F:DF64: A9 09
STA $07EA               ; $0F:DF66: 8D EA 07
STA $07EB               ; $0F:DF69: 8D EB 07
STA $07E9               ; $0F:DF6C: 8D E9 07
JMP CODE_0FDFEA         ; $0F:DF6F: 4C EA DF

CODE_0FDF72:
STZ $07EA               ; $0F:DF72: 9C EA 07
STZ $07EB               ; $0F:DF75: 9C EB 07
STZ $07E9               ; $0F:DF78: 9C E9 07
STZ $0E73               ; $0F:DF7B: 9C 73 0E
JMP CODE_0FDFEA         ; $0F:DF7E: 4C EA DF

; Increase lives by one

CODE_0FDF81:
JSL CODE_048596         ; $0F:DF81: 22 96 85 04
JMP CODE_0FDFEA         ; $0F:DF85: 4C EA DF

CODE_0FDF88:
JMP CODE_0FDFEA         ; $0F:DF88: 4C EA DF

CODE_0FDF8B:
LDA $09                 ; $0F:DF8B: A5 09
AND #$07                ; $0F:DF8D: 29 07
BNE CODE_0FDFAC         ; $0F:DF8F: D0 1B
LDA $0FF6               ; $0F:DF91: AD F6 0F
AND #$80                ; $0F:DF94: 29 80
BEQ CODE_0FDFAC         ; $0F:DF96: F0 14
LDA $0754               ; $0F:DF98: AD 54 07
EOR #$01                ; $0F:DF9B: 49 01
STA $0754               ; $0F:DF9D: 8D 54 07
LDA $0756               ; $0F:DFA0: AD 56 07
EOR #$02                ; $0F:DFA3: 49 02
STA $0756               ; $0F:DFA5: 8D 56 07
JSL CODE_0E98C3         ; $0F:DFA8: 22 C3 98 0E

CODE_0FDFAC:
LDA $0FF4               ; $0F:DFAC: AD F4 0F
AND #$03                ; $0F:DFAF: 29 03
BEQ CODE_0FDFCA         ; $0F:DFB1: F0 17
TAY                     ; $0F:DFB3: A8
LDA $0C                 ; $0F:DFB4: A5 0C
STA $0202               ; $0F:DFB6: 8D 02 02
LDA $0219               ; $0F:DFB9: AD 19 02
CLC                     ; $0F:DFBC: 18
ADC DATA_0FDFED-1,y     ; $0F:DFBD: 79 EC DF
STA $0219               ; $0F:DFC0: 8D 19 02
LDA $78                 ; $0F:DFC3: A5 78
ADC DATA_0FDFED+1,y     ; $0F:DFC5: 79 EE DF
STA $78                 ; $0F:DFC8: 85 78

CODE_0FDFCA:
LDA $0FF4               ; $0F:DFCA: AD F4 0F
AND #$0C                ; $0F:DFCD: 29 0C
BEQ CODE_0FDFEA         ; $0F:DFCF: F0 19
LSR A                   ; $0F:DFD1: 4A
LSR A                   ; $0F:DFD2: 4A
TAY                     ; $0F:DFD3: A8
LDA $0237               ; $0F:DFD4: AD 37 02
CLC                     ; $0F:DFD7: 18
ADC DATA_0FDFED-1,y     ; $0F:DFD8: 79 EC DF
STA $0237               ; $0F:DFDB: 8D 37 02
LDA $BB                 ; $0F:DFDE: A5 BB
ADC DATA_0FDFED+1,y     ; $0F:DFE0: 79 EE DF
STA $BB                 ; $0F:DFE3: 85 BB
BRA CODE_0FDFEA         ; $0F:DFE5: 80 03

CODE_0FDFE7:
SEC                     ; $0F:DFE7: 38
PLB                     ; $0F:DFE8: AB
RTL                     ; $0F:DFE9: 6B

CODE_0FDFEA:
CLC                     ; $0F:DFEA: 18
PLB                     ; $0F:DFEB: AB
RTL                     ; $0F:DFEC: 6B

DATA_0FDFED:
db $03,$FD,$00,$FF
PHA                     ; $0F:DFF1: 48
PHB                     ; $0F:DFF2: 8B
PHK                     ; $0F:DFF3: 4B
PLB                     ; $0F:DFF4: AB
LDA $07B2               ; $0F:DFF5: AD B2 07
BEQ CODE_0FE06A         ; $0F:DFF8: F0 70
LDA $0FF4               ; $0F:DFFA: AD F4 0F
STA $E4                 ; $0F:DFFD: 85 E4
AND #$C0                ; $0F:DFFF: 29 C0
BEQ CODE_0FE06A         ; $0F:E001: F0 67
LDA $09                 ; $0F:E003: A5 09
AND #$07                ; $0F:E005: 29 07
BNE CODE_0FE06A         ; $0F:E007: D0 61
LDA $E4                 ; $0F:E009: A5 E4
CMP #$40                ; $0F:E00B: C9 40
BNE CODE_0FE021         ; $0F:E00D: D0 12
LDA #$17                ; $0F:E00F: A9 17
STA $07B2               ; $0F:E011: 8D B2 07
INC $075F               ; $0F:E014: EE 5F 07
LDA $075F               ; $0F:E017: AD 5F 07
CMP #$0D                ; $0F:E01A: C9 0D
BCC CODE_0FE021         ; $0F:E01C: 90 03
STZ $075F               ; $0F:E01E: 9C 5F 07

CODE_0FE021:
LDA $E4                 ; $0F:E021: A5 E4
CMP #$80                ; $0F:E023: C9 80
BNE CODE_0FE039         ; $0F:E025: D0 12
LDA #$17                ; $0F:E027: A9 17
STA $07B2               ; $0F:E029: 8D B2 07
INC $075C               ; $0F:E02C: EE 5C 07
LDA $075C               ; $0F:E02F: AD 5C 07
CMP #$04                ; $0F:E032: C9 04
BCC CODE_0FE039         ; $0F:E034: 90 03
STZ $075C               ; $0F:E036: 9C 5C 07

CODE_0FE039:
LDX #$00                ; $0F:E039: A2 00

CODE_0FE03B:
LDA DATA_0FE0A1,x       ; $0F:E03B: BD A1 E0
STA $001702,x           ; $0F:E03E: 9F 02 17 00
INX                     ; $0F:E042: E8
CPX #$0B                ; $0F:E043: E0 0B
BCC CODE_0FE03B         ; $0F:E045: 90 F4
LDA $075F               ; $0F:E047: AD 5F 07
CLC                     ; $0F:E04A: 18
ADC #$01                ; $0F:E04B: 69 01
STA $001706             ; $0F:E04D: 8F 06 17 00
LDA $075C               ; $0F:E051: AD 5C 07
CLC                     ; $0F:E054: 18
ADC #$01                ; $0F:E055: 69 01
STA $00170A             ; $0F:E057: 8F 0A 17 00
LDA $075F               ; $0F:E05B: AD 5F 07
ASL A                   ; $0F:E05E: 0A
ASL A                   ; $0F:E05F: 0A
ORA $075C               ; $0F:E060: 0D 5C 07
TAX                     ; $0F:E063: AA
LDA DATA_0FE06D,x       ; $0F:E064: BD 6D E0
STA $0760               ; $0F:E067: 8D 60 07

CODE_0FE06A:
PLB                     ; $0F:E06A: AB
PLA                     ; $0F:E06B: 68
RTL                     ; $0F:E06C: 6B

DATA_0FE06D:
db $00,$02,$03,$04,$00,$01,$02,$03
db $00,$02,$03,$04,$00,$01,$02,$03
db $00,$02,$03,$04,$00,$02,$03,$04
db $00,$01,$02,$03,$00,$01,$02,$03
db $00,$01,$02,$03,$00,$02,$03,$04
db $00,$02,$03,$04,$00,$01,$02,$03
db $00,$01,$02,$03

DATA_0FE0A1:
db $58,$73,$00,$05,$24,$20,$24,$20
db $24,$20,$FF

CODE_0FE0AC:
PHY                     ; $0F:E0AC: 5A
LDY #$00                ; $0F:E0AD: A0 00

CODE_0FE0AF:
LDA $0B25,y             ; $0F:E0AF: B9 25 0B
BEQ CODE_0FE0BB         ; $0F:E0B2: F0 07
INY                     ; $0F:E0B4: C8
CPY #$05                ; $0F:E0B5: C0 05
BNE CODE_0FE0AF         ; $0F:E0B7: D0 F6
LDY #$00                ; $0F:E0B9: A0 00

CODE_0FE0BB:
LDA #$01                ; $0F:E0BB: A9 01
STA $0B25,y             ; $0F:E0BD: 99 25 0B
LDA $5E,x               ; $0F:E0C0: B5 5E
BPL CODE_0FE0DB         ; $0F:E0C2: 10 17
LDA $79,x               ; $0F:E0C4: B5 79
XBA                     ; $0F:E0C6: EB
LDA $021A,x             ; $0F:E0C7: BD 1A 02
REP #$20                ; $0F:E0CA: C2 20
SEC                     ; $0F:E0CC: 38
SBC #$0008              ; $0F:E0CD: E9 08 00
SEP #$20                ; $0F:E0D0: E2 20
STA $0B2F,y             ; $0F:E0D2: 99 2F 0B
XBA                     ; $0F:E0D5: EB
STA $0B2A,y             ; $0F:E0D6: 99 2A 0B
BRA CODE_0FE0F0         ; $0F:E0D9: 80 15

CODE_0FE0DB:
LDA $79,x               ; $0F:E0DB: B5 79
XBA                     ; $0F:E0DD: EB
LDA $021A,x             ; $0F:E0DE: BD 1A 02
REP #$20                ; $0F:E0E1: C2 20
CLC                     ; $0F:E0E3: 18
ADC #$0008              ; $0F:E0E4: 69 08 00
SEP #$20                ; $0F:E0E7: E2 20
STA $0B2F,y             ; $0F:E0E9: 99 2F 0B
XBA                     ; $0F:E0EC: EB
STA $0B2A,y             ; $0F:E0ED: 99 2A 0B

CODE_0FE0F0:
LDA $03B9               ; $0F:E0F0: AD B9 03
CLC                     ; $0F:E0F3: 18
ADC #$0C                ; $0F:E0F4: 69 0C
STA $0B34,y             ; $0F:E0F6: 99 34 0B
PLY                     ; $0F:E0F9: 7A
RTL                     ; $0F:E0FA: 6B

CODE_0FE0FB:
PHB                     ; $0F:E0FB: 8B
PHK                     ; $0F:E0FC: 4B
PLB                     ; $0F:E0FD: AB
PHX                     ; $0F:E0FE: DA
PHY                     ; $0F:E0FF: 5A
LDX #$00                ; $0F:E100: A2 00

CODE_0FE102:
LDA DATA_0FE268,x       ; $0F:E102: BD 68 E2
TAY                     ; $0F:E105: A8
LDA $0B25,x             ; $0F:E106: BD 25 0B
BEQ CODE_0FE12B         ; $0F:E109: F0 20
AND #$0C                ; $0F:E10B: 29 0C
STA $E4                 ; $0F:E10D: 85 E4
BNE CODE_0FE116         ; $0F:E10F: D0 05
JSR CODE_0FE134         ; $0F:E111: 20 34 E1
BRA CODE_0FE12B         ; $0F:E114: 80 15

CODE_0FE116:
CMP #$04                ; $0F:E116: C9 04
BNE CODE_0FE11F         ; $0F:E118: D0 05
JSR CODE_0FE16F         ; $0F:E11A: 20 6F E1
BRA CODE_0FE12B         ; $0F:E11D: 80 0C

CODE_0FE11F:
CMP #$08                ; $0F:E11F: C9 08
BNE CODE_0FE128         ; $0F:E121: D0 05
JSR CODE_0FE1AF         ; $0F:E123: 20 AF E1
BRA CODE_0FE12B         ; $0F:E126: 80 03

CODE_0FE128:
STZ $0B25,x             ; $0F:E128: 9E 25 0B

CODE_0FE12B:
INX                     ; $0F:E12B: E8
CPX #$05                ; $0F:E12C: E0 05
BNE CODE_0FE102         ; $0F:E12E: D0 D2
PLY                     ; $0F:E130: 7A
PLX                     ; $0F:E131: FA
PLB                     ; $0F:E132: AB
RTL                     ; $0F:E133: 6B

CODE_0FE134:
JSR CODE_0FE253         ; $0F:E134: 20 53 E2
LDA $0B3B               ; $0F:E137: AD 3B 0B
CLC                     ; $0F:E13A: 18
ADC #$04                ; $0F:E13B: 69 04
STA $0801,y             ; $0F:E13D: 99 01 08
LDA #$26                ; $0F:E140: A9 26
STA $0802,y             ; $0F:E142: 99 02 08
LDA #$25                ; $0F:E145: A9 25
STA $0803,y             ; $0F:E147: 99 03 08
REP #$20                ; $0F:E14A: C2 20
LDA $0B39               ; $0F:E14C: AD 39 0B
CLC                     ; $0F:E14F: 18
ADC #$0004              ; $0F:E150: 69 04 00
SEC                     ; $0F:E153: 38
SBC $42                 ; $0F:E154: E5 42
STA $0B39               ; $0F:E156: 8D 39 0B
SEP #$20                ; $0F:E159: E2 20
LDA $0B39               ; $0F:E15B: AD 39 0B
STA $0800,y             ; $0F:E15E: 99 00 08
LDA $0B3A               ; $0F:E161: AD 3A 0B
BEQ CODE_0FE168         ; $0F:E164: F0 02
LDA #$01                ; $0F:E166: A9 01

CODE_0FE168:
STA $0C00,y             ; $0F:E168: 99 00 0C
INC $0B25,x             ; $0F:E16B: FE 25 0B
RTS                     ; $0F:E16E: 60

CODE_0FE16F:
JSR CODE_0FE253         ; $0F:E16F: 20 53 E2
LDA $0B3B               ; $0F:E172: AD 3B 0B
STA $0801,y             ; $0F:E175: 99 01 08
LDA #$60                ; $0F:E178: A9 60
STA $0802,y             ; $0F:E17A: 99 02 08
LDA #$25                ; $0F:E17D: A9 25
STA $0803,y             ; $0F:E17F: 99 03 08
REP #$20                ; $0F:E182: C2 20
LDA $0B39               ; $0F:E184: AD 39 0B
SEC                     ; $0F:E187: 38
SBC $42                 ; $0F:E188: E5 42
STA $0B39               ; $0F:E18A: 8D 39 0B
SEP #$20                ; $0F:E18D: E2 20
LDA $0B39               ; $0F:E18F: AD 39 0B
STA $0800,y             ; $0F:E192: 99 00 08
LDA $0B3A               ; $0F:E195: AD 3A 0B
BEQ CODE_0FE19E         ; $0F:E198: F0 04
LDA #$03                ; $0F:E19A: A9 03
BRA CODE_0FE1A0         ; $0F:E19C: 80 02

CODE_0FE19E:
LDA #$02                ; $0F:E19E: A9 02

CODE_0FE1A0:
STA $0C00,y             ; $0F:E1A0: 99 00 0C
INC $0B25,x             ; $0F:E1A3: FE 25 0B
RTS                     ; $0F:E1A6: 60

DATA_0FE1A7:
db $FF,$FE,$FC,$F9

DATA_0FE1AB:
db $01,$02,$04,$07

CODE_0FE1AF:
STX $F1                 ; $0F:E1AF: 86 F1
JSR CODE_0FE253         ; $0F:E1B1: 20 53 E2
LDA $0B25,x             ; $0F:E1B4: BD 25 0B
AND #$03                ; $0F:E1B7: 29 03
TAX                     ; $0F:E1B9: AA
LDA $0B3B               ; $0F:E1BA: AD 3B 0B
CLC                     ; $0F:E1BD: 18
ADC DATA_0FE1A7,x       ; $0F:E1BE: 7D A7 E1
STA $0801,y             ; $0F:E1C1: 99 01 08
STA $0805,y             ; $0F:E1C4: 99 05 08
LDA $0B3B               ; $0F:E1C7: AD 3B 0B
CLC                     ; $0F:E1CA: 18
ADC DATA_0FE1AB,x       ; $0F:E1CB: 7D AB E1
CLC                     ; $0F:E1CE: 18
ADC #$08                ; $0F:E1CF: 69 08
STA $0809,y             ; $0F:E1D1: 99 09 08
STA $080D,y             ; $0F:E1D4: 99 0D 08
LDA #$39                ; $0F:E1D7: A9 39
STA $0802,y             ; $0F:E1D9: 99 02 08
STA $0806,y             ; $0F:E1DC: 99 06 08
STA $080A,y             ; $0F:E1DF: 99 0A 08
STA $080E,y             ; $0F:E1E2: 99 0E 08
LDA #$25                ; $0F:E1E5: A9 25
STA $0803,y             ; $0F:E1E7: 99 03 08
STA $0807,y             ; $0F:E1EA: 99 07 08
STA $080B,y             ; $0F:E1ED: 99 0B 08
STA $080F,y             ; $0F:E1F0: 99 0F 08
LDA DATA_0FE1A7,x       ; $0F:E1F3: BD A7 E1
STA $EF                 ; $0F:E1F6: 85 EF
LDA #$FF                ; $0F:E1F8: A9 FF
STA $F0                 ; $0F:E1FA: 85 F0
REP #$20                ; $0F:E1FC: C2 20
LDA $0B39               ; $0F:E1FE: AD 39 0B
SEC                     ; $0F:E201: 38
SBC $42                 ; $0F:E202: E5 42
CLC                     ; $0F:E204: 18
ADC $EF                 ; $0F:E205: 65 EF
STA $ED                 ; $0F:E207: 85 ED
SEP #$20                ; $0F:E209: E2 20
LDA $ED                 ; $0F:E20B: A5 ED
STA $0800,y             ; $0F:E20D: 99 00 08
STA $0808,y             ; $0F:E210: 99 08 08
LDA $EE                 ; $0F:E213: A5 EE
BEQ CODE_0FE219         ; $0F:E215: F0 02
LDA #$01                ; $0F:E217: A9 01

CODE_0FE219:
STA $0C00,y             ; $0F:E219: 99 00 0C
STA $0C08,y             ; $0F:E21C: 99 08 0C
LDA DATA_0FE1AB,x       ; $0F:E21F: BD AB E1
STA $EF                 ; $0F:E222: 85 EF
STZ $F0                 ; $0F:E224: 64 F0
REP #$20                ; $0F:E226: C2 20
LDA $0B39               ; $0F:E228: AD 39 0B
CLC                     ; $0F:E22B: 18
ADC #$0008              ; $0F:E22C: 69 08 00
SEC                     ; $0F:E22F: 38
SBC $42                 ; $0F:E230: E5 42
CLC                     ; $0F:E232: 18
ADC $EF                 ; $0F:E233: 65 EF
STA $ED                 ; $0F:E235: 85 ED
SEP #$20                ; $0F:E237: E2 20
LDA $ED                 ; $0F:E239: A5 ED
STA $0804,y             ; $0F:E23B: 99 04 08
STA $080C,y             ; $0F:E23E: 99 0C 08
LDA $EE                 ; $0F:E241: A5 EE
BEQ CODE_0FE247         ; $0F:E243: F0 02
LDA #$01                ; $0F:E245: A9 01

CODE_0FE247:
STA $0C04,y             ; $0F:E247: 99 04 0C
STA $0C0C,y             ; $0F:E24A: 99 0C 0C
LDX $F1                 ; $0F:E24D: A6 F1
INC $0B25,x             ; $0F:E24F: FE 25 0B
RTS                     ; $0F:E252: 60

CODE_0FE253:
LDA $0B34,x             ; $0F:E253: BD 34 0B
STA $0B3B               ; $0F:E256: 8D 3B 0B
LDA $0B2A,x             ; $0F:E259: BD 2A 0B
XBA                     ; $0F:E25C: EB
LDA $0B2F,x             ; $0F:E25D: BD 2F 0B
REP #$20                ; $0F:E260: C2 20
STA $0B39               ; $0F:E262: 8D 39 0B
SEP #$20                ; $0F:E265: E2 20
RTS                     ; $0F:E267: 60

DATA_0FE268:
db $00,$10,$20,$40,$50

CODE_0FE26D:
PHB                     ; $0F:E26D: 8B
PHK                     ; $0F:E26E: 4B
PLB                     ; $0F:E26F: AB
LDA $0201               ; $0F:E270: AD 01 02
CMP #$01                ; $0F:E273: C9 01
BEQ CODE_0FE2E9         ; $0F:E275: F0 72
LDA $075F               ; $0F:E277: AD 5F 07
CMP #$08                ; $0F:E27A: C9 08
BEQ CODE_0FE2E9         ; $0F:E27C: F0 6B
LDA $BA                 ; $0F:E27E: A5 BA
CMP #$03                ; $0F:E280: C9 03
BNE CODE_0FE2E9         ; $0F:E282: D0 65
LDA $96                 ; $0F:E284: A5 96
BNE CODE_0FE2E6         ; $0F:E286: D0 5E
LDA $02FC               ; $0F:E288: AD FC 02
BEQ CODE_0FE2E9         ; $0F:E28B: F0 5C
LDX #$08                ; $0F:E28D: A2 08

CODE_0FE28F:
LDA $1C,x               ; $0F:E28F: B5 1C
CMP #$2D                ; $0F:E291: C9 2D
BEQ CODE_0FE29A         ; $0F:E293: F0 05

CODE_0FE295:
DEX                     ; $0F:E295: CA
BPL CODE_0FE28F         ; $0F:E296: 10 F7
BRA CODE_0FE2BD         ; $0F:E298: 80 23

CODE_0FE29A:
LDA $0238,x             ; $0F:E29A: BD 38 02
CMP #$B8                ; $0F:E29D: C9 B8
BCC CODE_0FE2E9         ; $0F:E29F: 90 48
LDA $10,x               ; $0F:E2A1: B5 10
AND #$80                ; $0F:E2A3: 29 80
BNE CODE_0FE295         ; $0F:E2A5: D0 EE
LDA $021A,x             ; $0F:E2A7: BD 1A 02
CLC                     ; $0F:E2AA: 18
ADC #$10                ; $0F:E2AB: 69 10
STA $02FA               ; $0F:E2AD: 8D FA 02
LDA $79,x               ; $0F:E2B0: B5 79
ADC #$00                ; $0F:E2B2: 69 00
STA $02FB               ; $0F:E2B4: 8D FB 02
LDA #$08                ; $0F:E2B7: A9 08
STA $96                 ; $0F:E2B9: 85 96
BRA CODE_0FE2DC         ; $0F:E2BB: 80 1F

CODE_0FE2BD:
LDX $02FC               ; $0F:E2BD: AE FC 02
DEX                     ; $0F:E2C0: CA
LDA $0238,x             ; $0F:E2C1: BD 38 02
CMP #$B8                ; $0F:E2C4: C9 B8
BCC CODE_0FE2E9         ; $0F:E2C6: 90 21
LDA $021A,x             ; $0F:E2C8: BD 1A 02
CLC                     ; $0F:E2CB: 18
ADC #$04                ; $0F:E2CC: 69 04
STA $02FA               ; $0F:E2CE: 8D FA 02
LDA $79,x               ; $0F:E2D1: B5 79
ADC #$00                ; $0F:E2D3: 69 00
STA $02FB               ; $0F:E2D5: 8D FB 02
LDA #$04                ; $0F:E2D8: A9 04
STA $96                 ; $0F:E2DA: 85 96

CODE_0FE2DC:
LDA #$25                ; $0F:E2DC: A9 25
STA $1600               ; $0F:E2DE: 8D 00 16
LDA #$20                ; $0F:E2E1: A9 20
STA $1603               ; $0F:E2E3: 8D 03 16

CODE_0FE2E6:
JSR CODE_0FE2ED         ; $0F:E2E6: 20 ED E2

CODE_0FE2E9:
JMP CODE_0FED35         ; $0F:E2E9: 4C 35 ED
RTL                     ; $0F:E2EC: 6B

CODE_0FE2ED:
LDA $96                 ; $0F:E2ED: A5 96
STA $E4                 ; $0F:E2EF: 85 E4
INC $02F9               ; $0F:E2F1: EE F9 02
LDA $02F9               ; $0F:E2F4: AD F9 02
LSR A                   ; $0F:E2F7: 4A
LSR A                   ; $0F:E2F8: 4A
CMP #$06                ; $0F:E2F9: C9 06
BCS CODE_0FE358         ; $0F:E2FB: B0 5B
STA $DD                 ; $0F:E2FD: 85 DD
ASL A                   ; $0F:E2FF: 0A
ASL A                   ; $0F:E300: 0A
ASL A                   ; $0F:E301: 0A
TAX                     ; $0F:E302: AA
LDY #$20                ; $0F:E303: A0 20
STZ $E9                 ; $0F:E305: 64 E9

CODE_0FE307:
TXA                     ; $0F:E307: 8A
AND #$01                ; $0F:E308: 29 01
CLC                     ; $0F:E30A: 18
ADC #$FF                ; $0F:E30B: 69 FF
STA $E8                 ; $0F:E30D: 85 E8
LDA DATA_0FE35E,x       ; $0F:E30F: BD 5E E3
STA $E7                 ; $0F:E312: 85 E7
REP #$20                ; $0F:E314: C2 20
LDA $E7                 ; $0F:E316: A5 E7
CLC                     ; $0F:E318: 18
ADC $02FA               ; $0F:E319: 6D FA 02
SEC                     ; $0F:E31C: 38
SBC $42                 ; $0F:E31D: E5 42
STA $E7                 ; $0F:E31F: 85 E7
SEP #$20                ; $0F:E321: E2 20
LDA $E7                 ; $0F:E323: A5 E7
STA $0800,y             ; $0F:E325: 99 00 08
LDA $E8                 ; $0F:E328: A5 E8
BEQ CODE_0FE32E         ; $0F:E32A: F0 02
LDA #$00                ; $0F:E32C: A9 00

CODE_0FE32E:
ORA $E9                 ; $0F:E32E: 05 E9
STA $0C00,y             ; $0F:E330: 99 00 0C
LDA DATA_0FE386,x       ; $0F:E333: BD 86 E3
CLC                     ; $0F:E336: 18
ADC #$D8                ; $0F:E337: 69 D8
STA $0801,y             ; $0F:E339: 99 01 08
PHX                     ; $0F:E33C: DA
LDX $DD                 ; $0F:E33D: A6 DD
LDA DATA_0FE3B7,x       ; $0F:E33F: BD B7 E3
STA $0802,y             ; $0F:E342: 99 02 08
LDX $E4                 ; $0F:E345: A6 E4
LDA DATA_0FE3AE,x       ; $0F:E347: BD AE E3
STA $0803,y             ; $0F:E34A: 99 03 08
PLX                     ; $0F:E34D: FA
INY                     ; $0F:E34E: C8
INY                     ; $0F:E34F: C8
INY                     ; $0F:E350: C8
INY                     ; $0F:E351: C8
INX                     ; $0F:E352: E8
DEC $E4                 ; $0F:E353: C6 E4
BNE CODE_0FE307         ; $0F:E355: D0 B0
RTS                     ; $0F:E357: 60

CODE_0FE358:
STZ $02FC               ; $0F:E358: 9C FC 02
STZ $96                 ; $0F:E35B: 64 96
RTS                     ; $0F:E35D: 60

DATA_0FE35E:
db $F6,$02,$F1,$07,$F2,$06,$ED,$0B
db $F3,$05,$EE,$0A,$EF,$09,$EA,$0E
db $F1,$07,$EC,$0C,$ED,$0B,$E8,$10
db $F0,$08,$EB,$0D,$EC,$0C,$E7,$11
db $EF,$09,$EA,$0E,$EB,$0D,$E6,$12

DATA_0FE386:
db $F5,$F5,$F8,$F8,$F1,$F1,$F4,$F4
db $F4,$F4,$F7,$F7,$F0,$F0,$F3,$F3
db $F2,$F2,$F5,$F5,$EE,$EE,$F1,$F1
db $F1,$F1,$F4,$F4,$ED,$ED,$F0,$F0
db $F0,$F0,$F3,$F3,$EC,$EC,$EF,$EF

DATA_0FE3AE:
db $28,$68,$28,$68,$28,$68,$28,$68
db $28

DATA_0FE3B7:
db $33,$33,$34,$35,$36,$37

DATA_0FE3BD:
db $F1,$FF,$F6,$FF,$02,$00,$07,$00
db $EE,$FF,$F3,$FF,$05,$00,$0A,$00
db $EC,$FF,$F1,$FF,$07,$00,$0C,$00
db $EB,$FF,$F0,$FF,$08,$00,$0D,$00
db $EA,$FF,$EF,$FF,$09,$00,$0E,$00
db $EA,$FF,$EF,$FF,$09,$00,$0E,$00

DATA_0FE3ED:
db $F8,$F5,$F5,$F8,$F7,$F4,$F4,$F7
db $F5,$F2,$F2,$F5,$F4,$F1,$F1,$F4
db $F3,$F0,$F0,$F3,$F3,$F0,$F0,$F3

DATA_0FE405:
db $33,$33,$34,$35,$36,$37

DATA_0FE40B:
db $28,$28,$68,$68

CODE_0FE40F:
PHB                     ; $0F:E40F: 8B
PHK                     ; $0F:E410: 4B
PLB                     ; $0F:E411: AB
PHX                     ; $0F:E412: DA
PHY                     ; $0F:E413: 5A
LDA $0B00,x             ; $0F:E414: BD 00 0B
CMP #$02                ; $0F:E417: C9 02
BEQ CODE_0FE452         ; $0F:E419: F0 37
LSR A                   ; $0F:E41B: 4A
BCC CODE_0FE467         ; $0F:E41C: 90 49
LDA $0B09,x             ; $0F:E41E: BD 09 0B
LSR A                   ; $0F:E421: 4A
LSR A                   ; $0F:E422: 4A
CMP #$06                ; $0F:E423: C9 06
BEQ CODE_0FE454         ; $0F:E425: F0 2D
TAY                     ; $0F:E427: A8
LDA DATA_0FE405,y       ; $0F:E428: B9 05 E4
STA $ED                 ; $0F:E42B: 85 ED
LDA $021A,x             ; $0F:E42D: BD 1A 02
STA $00                 ; $0F:E430: 85 00
LDA $79,x               ; $0F:E432: B5 79
STA $01                 ; $0F:E434: 85 01
REP #$20                ; $0F:E436: C2 20
LDA $00                 ; $0F:E438: A5 00
CLC                     ; $0F:E43A: 18
ADC #$0008              ; $0F:E43B: 69 08 00
SEC                     ; $0F:E43E: 38
SBC $42                 ; $0F:E43F: E5 42
STA $00                 ; $0F:E441: 85 00
SEP #$20                ; $0F:E443: E2 20
LDA $0B46,x             ; $0F:E445: BD 46 0B
CLC                     ; $0F:E448: 18
ADC #$04                ; $0F:E449: 69 04
STA $F2                 ; $0F:E44B: 85 F2
JSR CODE_0FE537         ; $0F:E44D: 20 37 E5
BRA CODE_0FE467         ; $0F:E450: 80 15

CODE_0FE452:
BRA CODE_0FE498         ; $0F:E452: 80 44

CODE_0FE454:
INC $0B00,x             ; $0F:E454: FE 00 0B
STZ $0B09,x             ; $0F:E457: 9E 09 0B
LDA $0B00,x             ; $0F:E45A: BD 00 0B
CMP #$02                ; $0F:E45D: C9 02
BNE CODE_0FE467         ; $0F:E45F: D0 06
LDA $0238,x             ; $0F:E461: BD 38 02
STA $0B12,x             ; $0F:E464: 9D 12 0B

CODE_0FE467:
PLY                     ; $0F:E467: 7A
PLX                     ; $0F:E468: FA
PLB                     ; $0F:E469: AB
RTL                     ; $0F:E46A: 6B

DATA_0FE46B:
db $FF,$FF,$FA,$FF,$FA,$FF,$FA,$FF
db $FF,$FF

DATA_0FE475:
db $00,$00,$00,$00,$00,$00,$FE,$FF
db $FE,$FF

DATA_0FE47F:
db $FF,$00,$00,$00,$FF

DATA_0FE484:
db $12,$12,$12,$10,$10

DATA_0FE489:
db $FC,$30,$31,$32,$FC

DATA_0FE48E:
db $30,$31,$32,$FC,$FC

DATA_0FE493:
db $FF,$FF,$FF,$00,$00

CODE_0FE498:
LDA $0B09,x             ; $0F:E498: BD 09 0B
LSR A                   ; $0F:E49B: 4A
LSR A                   ; $0F:E49C: 4A
LSR A                   ; $0F:E49D: 4A
CMP #$05                ; $0F:E49E: C9 05
BCC CODE_0FE4AA         ; $0F:E4A0: 90 08
LDA #$30                ; $0F:E4A2: A9 30
STA $0B09,x             ; $0F:E4A4: 9D 09 0B
JMP CODE_0FE534         ; $0F:E4A7: 4C 34 E5

CODE_0FE4AA:
STA $EB                 ; $0F:E4AA: 85 EB
ASL A                   ; $0F:E4AC: 0A
TAY                     ; $0F:E4AD: A8
LDA $021A,x             ; $0F:E4AE: BD 1A 02
STA $00                 ; $0F:E4B1: 85 00
LDA $79,x               ; $0F:E4B3: B5 79
STA $01                 ; $0F:E4B5: 85 01
REP #$20                ; $0F:E4B7: C2 20
LDA $00                 ; $0F:E4B9: A5 00
CLC                     ; $0F:E4BB: 18
ADC #$0008              ; $0F:E4BC: 69 08 00
SEC                     ; $0F:E4BF: 38
SBC $42                 ; $0F:E4C0: E5 42
PHA                     ; $0F:E4C2: 48
CLC                     ; $0F:E4C3: 18
ADC DATA_0FE46B,y       ; $0F:E4C4: 79 6B E4
STA $00                 ; $0F:E4C7: 85 00
PLA                     ; $0F:E4C9: 68
CLC                     ; $0F:E4CA: 18
ADC DATA_0FE475,y       ; $0F:E4CB: 79 75 E4
STA $02                 ; $0F:E4CE: 85 02
SEP #$20                ; $0F:E4D0: E2 20
LDY $EB                 ; $0F:E4D2: A4 EB
LDA DATA_0FE493,y       ; $0F:E4D4: B9 93 E4
CLC                     ; $0F:E4D7: 18
ADC $0B12,x             ; $0F:E4D8: 7D 12 0B
STA $0B12,x             ; $0F:E4DB: 9D 12 0B
LDA DATA_0FE47F,y       ; $0F:E4DE: B9 7F E4
CLC                     ; $0F:E4E1: 18
ADC $0B12,x             ; $0F:E4E2: 7D 12 0B
STA $04                 ; $0F:E4E5: 85 04
LDA DATA_0FE484,y       ; $0F:E4E7: B9 84 E4
CLC                     ; $0F:E4EA: 18
ADC $0B12,x             ; $0F:E4EB: 7D 12 0B
STA $ED                 ; $0F:E4EE: 85 ED
LDA $0B46,x             ; $0F:E4F0: BD 46 0B
TAY                     ; $0F:E4F3: A8
INY                     ; $0F:E4F4: C8
INY                     ; $0F:E4F5: C8
INY                     ; $0F:E4F6: C8
INY                     ; $0F:E4F7: C8
LDX $EB                 ; $0F:E4F8: A6 EB
LDA $00                 ; $0F:E4FA: A5 00
STA $0900,y             ; $0F:E4FC: 99 00 09
LDA $02                 ; $0F:E4FF: A5 02
STA $0904,y             ; $0F:E501: 99 04 09
LDA $04                 ; $0F:E504: A5 04
STA $0901,y             ; $0F:E506: 99 01 09
LDA $ED                 ; $0F:E509: A5 ED
STA $0905,y             ; $0F:E50B: 99 05 09
LDA DATA_0FE489,x       ; $0F:E50E: BD 89 E4
STA $0902,y             ; $0F:E511: 99 02 09
LDA DATA_0FE48E,x       ; $0F:E514: BD 8E E4
STA $0906,y             ; $0F:E517: 99 06 09
LDA #$28                ; $0F:E51A: A9 28
STA $0903,y             ; $0F:E51C: 99 03 09
STA $0907,y             ; $0F:E51F: 99 07 09
LDA $01                 ; $0F:E522: A5 01
BEQ CODE_0FE52B         ; $0F:E524: F0 05
LDA #$01                ; $0F:E526: A9 01
STA $0D00,y             ; $0F:E528: 99 00 0D

CODE_0FE52B:
LDA $03                 ; $0F:E52B: A5 03
BEQ CODE_0FE534         ; $0F:E52D: F0 05
LDA #$01                ; $0F:E52F: A9 01
STA $0D04,y             ; $0F:E531: 99 04 0D

CODE_0FE534:
JMP CODE_0FE467         ; $0F:E534: 4C 67 E4

CODE_0FE537:
STY $EC                 ; $0F:E537: 84 EC
LDX #$00                ; $0F:E539: A2 00

CODE_0FE53B:
LDA $EC                 ; $0F:E53B: A5 EC
ASL A                   ; $0F:E53D: 0A
ASL A                   ; $0F:E53E: 0A
STA $EB                 ; $0F:E53F: 85 EB
TXA                     ; $0F:E541: 8A
CLC                     ; $0F:E542: 18
ADC $EB                 ; $0F:E543: 65 EB
TAY                     ; $0F:E545: A8
LDA #$D8                ; $0F:E546: A9 D8
CLC                     ; $0F:E548: 18
ADC DATA_0FE3ED,y       ; $0F:E549: 79 ED E3
STA $EE                 ; $0F:E54C: 85 EE
LDA $5C                 ; $0F:E54E: A5 5C
BNE CODE_0FE556         ; $0F:E550: D0 04
LDA #$F0                ; $0F:E552: A9 F0
STA $EE                 ; $0F:E554: 85 EE

CODE_0FE556:
LDA DATA_0FE40B,x       ; $0F:E556: BD 0B E4
STA $EF                 ; $0F:E559: 85 EF
TYA                     ; $0F:E55B: 98
ASL A                   ; $0F:E55C: 0A
TAY                     ; $0F:E55D: A8
REP #$20                ; $0F:E55E: C2 20
LDA DATA_0FE3BD,y       ; $0F:E560: B9 BD E3
CLC                     ; $0F:E563: 18
ADC $00                 ; $0F:E564: 65 00
STA $F0                 ; $0F:E566: 85 F0
SEP #$20                ; $0F:E568: E2 20
TXA                     ; $0F:E56A: 8A
ASL A                   ; $0F:E56B: 0A
ASL A                   ; $0F:E56C: 0A
CLC                     ; $0F:E56D: 18
ADC $F2                 ; $0F:E56E: 65 F2
TAY                     ; $0F:E570: A8
LDA $F0                 ; $0F:E571: A5 F0
STA $0900,y             ; $0F:E573: 99 00 09
LDA $EE                 ; $0F:E576: A5 EE
STA $0901,y             ; $0F:E578: 99 01 09
LDA $ED                 ; $0F:E57B: A5 ED
STA $0902,y             ; $0F:E57D: 99 02 09
LDA $EF                 ; $0F:E580: A5 EF
STA $0903,y             ; $0F:E582: 99 03 09
LDA $F1                 ; $0F:E585: A5 F1
BEQ CODE_0FE58E         ; $0F:E587: F0 05
LDA #$01                ; $0F:E589: A9 01
STA $0D00,y             ; $0F:E58B: 99 00 0D

CODE_0FE58E:
INX                     ; $0F:E58E: E8
CPX #$04                ; $0F:E58F: E0 04
BNE CODE_0FE53B         ; $0F:E591: D0 A8
RTS                     ; $0F:E593: 60
db $1C,$0E,$06,$08

DATA_0FE598:
db $18,$16,$1A,$14

DATA_0FE59C:
db $D0,$E0,$E1,$FC

DATA_0FE5A0:
db $00,$FC,$F8,$F4

CODE_0FE5A4:
PHB                     ; $0F:E5A4: 8B
PHK                     ; $0F:E5A5: 4B
PLB                     ; $0F:E5A6: AB
PHX                     ; $0F:E5A7: DA
PHY                     ; $0F:E5A8: 5A
LDA $0E40               ; $0F:E5A9: AD 40 0E
BNE CODE_0FE5B1         ; $0F:E5AC: D0 03
JSR CODE_0FE5C5         ; $0F:E5AE: 20 C5 E5

CODE_0FE5B1:
JSR CODE_0FE5D4         ; $0F:E5B1: 20 D4 E5
LDA $0E42               ; $0F:E5B4: AD 42 0E
AND #$20                ; $0F:E5B7: 29 20
BEQ CODE_0FE5C1         ; $0F:E5B9: F0 06
STZ $0E40               ; $0F:E5BB: 9C 40 0E
STZ $0E41               ; $0F:E5BE: 9C 41 0E

CODE_0FE5C1:
PLY                     ; $0F:E5C1: 7A
PLX                     ; $0F:E5C2: FA
PLB                     ; $0F:E5C3: AB
RTL                     ; $0F:E5C4: 6B

CODE_0FE5C5:
LDX #$03                ; $0F:E5C5: A2 03

CODE_0FE5C7:
LDA DATA_0FE5A0,x       ; $0F:E5C7: BD A0 E5
STA $0E42,x             ; $0F:E5CA: 9D 42 0E
DEX                     ; $0F:E5CD: CA
BPL CODE_0FE5C7         ; $0F:E5CE: 10 F7
INC $0E40               ; $0F:E5D0: EE 40 0E
RTS                     ; $0F:E5D3: 60

CODE_0FE5D4:
LDX #$03                ; $0F:E5D4: A2 03
LDY #$30                ; $0F:E5D6: A0 30

CODE_0FE5D8:
LDA $0E42,x             ; $0F:E5D8: BD 42 0E
BMI CODE_0FE608         ; $0F:E5DB: 30 2B
BNE CODE_0FE5E2         ; $0F:E5DD: D0 03
JSR CODE_0FE618         ; $0F:E5DF: 20 18 E6

CODE_0FE5E2:
LSR A                   ; $0F:E5E2: 4A
LSR A                   ; $0F:E5E3: 4A
CMP #$03                ; $0F:E5E4: C9 03
BCS CODE_0FE608         ; $0F:E5E6: B0 20
PHX                     ; $0F:E5E8: DA
TAX                     ; $0F:E5E9: AA
LDA DATA_0FE59C,x       ; $0F:E5EA: BD 9C E5
STA $0802,y             ; $0F:E5ED: 99 02 08
LDA #$38                ; $0F:E5F0: A9 38
STA $0803,y             ; $0F:E5F2: 99 03 08
PLX                     ; $0F:E5F5: FA
LDA $0E46,x             ; $0F:E5F6: BD 46 0E
SEC                     ; $0F:E5F9: 38
SBC $071C               ; $0F:E5FA: ED 1C 07
STA $0800,y             ; $0F:E5FD: 99 00 08
LDA $0E4A,x             ; $0F:E600: BD 4A 0E
STA $0801,y             ; $0F:E603: 99 01 08
BRA CODE_0FE60D         ; $0F:E606: 80 05

CODE_0FE608:
LDA #$F8                ; $0F:E608: A9 F8
STA $0801,y             ; $0F:E60A: 99 01 08

CODE_0FE60D:
INY                     ; $0F:E60D: C8
INY                     ; $0F:E60E: C8
INY                     ; $0F:E60F: C8
INY                     ; $0F:E610: C8
INC $0E42,x             ; $0F:E611: FE 42 0E
DEX                     ; $0F:E614: CA
BPL CODE_0FE5D8         ; $0F:E615: 10 C1
RTS                     ; $0F:E617: 60

CODE_0FE618:
LDA $0202               ; $0F:E618: AD 02 02
LSR A                   ; $0F:E61B: 4A
BCC CODE_0FE626         ; $0F:E61C: 90 08
LDA $0219               ; $0F:E61E: AD 19 02
CLC                     ; $0F:E621: 18
ADC #$06                ; $0F:E622: 69 06
BRA CODE_0FE62C         ; $0F:E624: 80 06

CODE_0FE626:
LDA $0219               ; $0F:E626: AD 19 02
CLC                     ; $0F:E629: 18
ADC #$02                ; $0F:E62A: 69 02

CODE_0FE62C:
STA $0E46,x             ; $0F:E62C: 9D 46 0E
LDA $06D5               ; $0F:E62F: AD D5 06
CMP #$18                ; $0F:E632: C9 18
BEQ CODE_0FE63A         ; $0F:E634: F0 04
CMP #$78                ; $0F:E636: C9 78
BNE CODE_0FE64D         ; $0F:E638: D0 13

CODE_0FE63A:
LDA $07B8               ; $0F:E63A: AD B8 07
AND #$04                ; $0F:E63D: 29 04
SEC                     ; $0F:E63F: 38
SBC #$02                ; $0F:E640: E9 02
CLC                     ; $0F:E642: 18
ADC $03B8               ; $0F:E643: 6D B8 03
ADC DATA_0FE598         ; $0F:E646: 6D 98 E5
STA $0E4A,x             ; $0F:E649: 9D 4A 0E
RTS                     ; $0F:E64C: 60

CODE_0FE64D:
LDA #$F8                ; $0F:E64D: A9 F8
STA $0E4A,x             ; $0F:E64F: 9D 4A 0E
RTS                     ; $0F:E652: 60

DATA_0FE653:
db $00,$A5,$40,$2A,$82,$39,$00,$D0
db $40,$14,$84,$39,$00,$F0,$40,$14
db $84,$39,$01,$10,$40,$14,$84,$39
db $00,$C4,$C0,$10,$83,$39,$00,$C5
db $C0,$10,$84,$39,$00,$C6,$00,$13
db $85,$39,$86,$39,$87,$39,$87,$39
db $88,$39,$89,$39,$8A,$39,$8B,$39
db $88,$39,$89,$39,$00,$E6,$00,$13
db $8C,$39,$8D,$39,$8E,$39,$8F,$39
db $90,$39,$91,$39,$92,$39,$93,$39
db $90,$39,$94,$39,$01,$06,$00,$13
db $95,$39,$96,$39,$95,$39,$96,$39
db $97,$39,$84,$39,$95,$39,$98,$39
db $97,$39,$99,$39,$01,$26,$00,$29
db $8A,$39,$9A,$39,$8A,$79,$8A,$39
db $8A,$79,$88,$39,$8A,$79,$9B,$39
db $8A,$39,$8A,$79,$84,$39,$88,$39
db $8A,$79,$88,$39,$8A,$79,$8A,$39
db $8A,$79,$8A,$39,$8A,$79,$84,$39
db $84,$39,$01,$46,$00,$29,$9C,$39
db $9D,$39,$9D,$39,$9C,$39,$9D,$39
db $9C,$39,$9E,$39,$9C,$39,$9C,$39
db $9D,$39,$84,$39,$9C,$39,$C7,$39
db $9C,$39,$C7,$39,$9C,$39,$9D,$39
db $C8,$39,$C9,$39,$84,$39,$84,$39
db $01,$66,$00,$29,$9F,$39,$9F,$39
db $9F,$39,$A0,$39,$A1,$39,$9F,$39
db $A2,$39,$9F,$39,$9F,$39,$9F,$39
db $84,$39,$9F,$39,$A2,$39,$9F,$39
db $A2,$39,$9F,$39,$9F,$39,$CA,$39
db $CB,$39,$84,$39,$84,$39,$01,$19
db $00,$03,$E4,$39,$E5,$39,$01,$86
db $00,$29,$A3,$39,$A3,$39,$A3,$39
db $A4,$39,$A5,$39,$A3,$39,$A3,$39
db $A3,$39,$A6,$39,$A7,$39,$84,$39
db $A3,$39,$CC,$39,$A3,$39,$A3,$39
db $A6,$39,$A7,$39,$A6,$39,$A7,$39
db $CD,$39,$84,$39,$01,$A6,$00,$29
db $A8,$39,$A9,$39,$AA,$39,$AB,$39
db $AC,$39,$AD,$39,$AE,$39,$AF,$39
db $B0,$39,$B1,$39,$CE,$39,$AC,$39
db $CF,$39,$AD,$39,$D0,$39,$D1,$39
db $D2,$39,$D3,$39,$D4,$39,$D5,$39
db $84,$39,$01,$C6,$00,$29,$B2,$39
db $B3,$39,$B4,$39,$B5,$39,$84,$39
db $B6,$39,$B7,$39,$B8,$39,$B9,$39
db $BA,$39,$D6,$39,$84,$39,$D7,$39
db $D8,$39,$D9,$39,$DA,$39,$DB,$39
db $DC,$39,$DD,$39,$DE,$39,$84,$39
db $00,$DB,$C0,$10,$C6,$39,$01,$E4
db $00,$2F,$BB,$39,$BC,$39,$BD,$39
db $BE,$39,$BF,$39,$C0,$39,$BC,$39
db $C1,$39,$C2,$39,$C3,$39,$C4,$39
db $C4,$79,$BF,$39,$BC,$39,$DF,$39
db $E0,$39,$C2,$39,$BF,$79,$E1,$39
db $E1,$79,$E2,$39,$E3,$39,$BC,$39
db $80,$39,$00,$A4,$00,$01,$81,$39
db $00,$BB,$00,$01,$C5,$39,$02,$0A
db $00,$25,$2F,$06,$01,$04,$09,$04
db $08,$04,$06,$04,$24,$04,$01,$04
db $09,$04,$09,$04,$03,$04,$24,$04
db $17,$04,$12,$04,$17,$04,$1D,$04
db $0E,$04,$17,$04,$0D,$04,$18,$04
db $02,$4E,$00,$15,$16,$08,$0A,$08
db $1B,$08,$12,$08,$18,$08,$24,$08
db $10,$08,$0A,$08,$16,$08,$0E,$08
db $24,$08,$02,$8E,$00,$15,$15,$08
db $1E,$08,$12,$08,$10,$08,$12,$08
db $24,$08,$10,$08,$0A,$08,$16,$08
db $0E,$08,$24,$08,$02,$EB,$00,$07
db $1D,$08,$18,$08,$19,$08,$28,$08
db $02,$F5,$00,$01,$00,$08,$FF,$FF

CODE_0FE893:
PHB                     ; $0F:E893: 8B
PHK                     ; $0F:E894: 4B
PLB                     ; $0F:E895: AB
LDA #$01                ; $0F:E896: A9 01
STA $0EC8               ; $0F:E898: 8D C8 0E
REP #$30                ; $0F:E89B: C2 30
LDX $1700               ; $0F:E89D: AE 00 17
LDY #$0000              ; $0F:E8A0: A0 00 00

CODE_0FE8A3:
LDA DATA_0FE653,y       ; $0F:E8A3: B9 53 E6
STA $1702,x             ; $0F:E8A6: 9D 02 17
INC A                   ; $0F:E8A9: 1A
BEQ CODE_0FE8B2         ; $0F:E8AA: F0 06
INX                     ; $0F:E8AC: E8
INX                     ; $0F:E8AD: E8
INY                     ; $0F:E8AE: C8
INY                     ; $0F:E8AF: C8
BRA CODE_0FE8A3         ; $0F:E8B0: 80 F1

CODE_0FE8B2:
STX $1700               ; $0F:E8B2: 8E 00 17
SEP #$30                ; $0F:E8B5: E2 30
STZ $0F2B               ; $0F:E8B7: 9C 2B 0F
PLB                     ; $0F:E8BA: AB
RTL                     ; $0F:E8BB: 6B
db $00,$30

CODE_0FE8BE:
PHB                     ; $0F:E8BE: 8B
PHK                     ; $0F:E8BF: 4B
PLB                     ; $0F:E8C0: AB
STY $00                 ; $0F:E8C1: 84 00
LDA $03B9               ; $0F:E8C3: AD B9 03
LDX $039A,y             ; $0F:E8C6: BE 9A 03
LDY $0B46,x             ; $0F:E8C9: BC 46 0B
STY $02                 ; $0F:E8CC: 84 02
DEC A                   ; $0F:E8CE: 3A
JSR CODE_0FE94B         ; $0F:E8CF: 20 4B E9
LDA $03AE               ; $0F:E8D2: AD AE 03
STA $0900,y             ; $0F:E8D5: 99 00 09
STA $0908,y             ; $0F:E8D8: 99 08 09
STA $0910,y             ; $0F:E8DB: 99 10 09
STA $0904,y             ; $0F:E8DE: 99 04 09
STA $090C,y             ; $0F:E8E1: 99 0C 09
STA $0914,y             ; $0F:E8E4: 99 14 09
STA $0918,y             ; $0F:E8E7: 99 18 09
STA $091C,y             ; $0F:E8EA: 99 1C 09
STA $0920,y             ; $0F:E8ED: 99 20 09
LDA #$1B                ; $0F:E8F0: A9 1B
STA $0903,y             ; $0F:E8F2: 99 03 09
STA $090B,y             ; $0F:E8F5: 99 0B 09
STA $0913,y             ; $0F:E8F8: 99 13 09
STA $0907,y             ; $0F:E8FB: 99 07 09
STA $090F,y             ; $0F:E8FE: 99 0F 09
STA $0917,y             ; $0F:E901: 99 17 09
STA $091B,y             ; $0F:E904: 99 1B 09
STA $091F,y             ; $0F:E907: 99 1F 09
STA $0923,y             ; $0F:E90A: 99 23 09
LDX #$08                ; $0F:E90D: A2 08

CODE_0FE90F:
LDA #$2C                ; $0F:E90F: A9 2C
STA $0902,y             ; $0F:E911: 99 02 09
INY                     ; $0F:E914: C8
INY                     ; $0F:E915: C8
INY                     ; $0F:E916: C8
INY                     ; $0F:E917: C8
DEX                     ; $0F:E918: CA
BPL CODE_0FE90F         ; $0F:E919: 10 F4
LDY $02                 ; $0F:E91B: A4 02
LDA $0000               ; $0F:E91D: AD 00 00
BNE CODE_0FE927         ; $0F:E920: D0 05
LDA #$2A                ; $0F:E922: A9 2A
STA $0902,y             ; $0F:E924: 99 02 09

CODE_0FE927:
LDA $0399               ; $0F:E927: AD 99 03
LSR A                   ; $0F:E92A: 4A
LSR A                   ; $0F:E92B: 4A
LSR A                   ; $0F:E92C: 4A
LSR A                   ; $0F:E92D: 4A
INC A                   ; $0F:E92E: 1A
TAX                     ; $0F:E92F: AA
ASL A                   ; $0F:E930: 0A
ASL A                   ; $0F:E931: 0A
CLC                     ; $0F:E932: 18
ADC $02                 ; $0F:E933: 65 02
TAY                     ; $0F:E935: A8

CODE_0FE936:
CPX #$09                ; $0F:E936: E0 09
BCS CODE_0FE946         ; $0F:E938: B0 0C
LDA #$F0                ; $0F:E93A: A9 F0
STA $0901,y             ; $0F:E93C: 99 01 09
INY                     ; $0F:E93F: C8
INY                     ; $0F:E940: C8
INY                     ; $0F:E941: C8
INY                     ; $0F:E942: C8
INX                     ; $0F:E943: E8
BRA CODE_0FE936         ; $0F:E944: 80 F0

CODE_0FE946:
LDY $0000               ; $0F:E946: AC 00 00
PLB                     ; $0F:E949: AB
RTL                     ; $0F:E94A: 6B

CODE_0FE94B:
LDX #$09                ; $0F:E94B: A2 09

CODE_0FE94D:
STA $0901,y             ; $0F:E94D: 99 01 09
PHA                     ; $0F:E950: 48
LDA $0223               ; $0F:E951: AD 23 02
STA $E4                 ; $0F:E954: 85 E4
LDA $82                 ; $0F:E956: A5 82
STA $E5                 ; $0F:E958: 85 E5
REP #$20                ; $0F:E95A: C2 20
LDA $E4                 ; $0F:E95C: A5 E4
SEC                     ; $0F:E95E: 38
SBC $42                 ; $0F:E95F: E5 42
STA $E4                 ; $0F:E961: 85 E4
SEP #$20                ; $0F:E963: E2 20
LDA #$02                ; $0F:E965: A9 02
STA $DD                 ; $0F:E967: 85 DD
LDA $E5                 ; $0F:E969: A5 E5
BEQ CODE_0FE96F         ; $0F:E96B: F0 02
LDA #$01                ; $0F:E96D: A9 01

CODE_0FE96F:
ORA $DD                 ; $0F:E96F: 05 DD
STA $0D00,y             ; $0F:E971: 99 00 0D
LDA $0236               ; $0F:E974: AD 36 02
BNE CODE_0FE987         ; $0F:E977: D0 0E
LDA $0901,y             ; $0F:E979: B9 01 09
BPL CODE_0FE987         ; $0F:E97C: 10 09
CMP #$F0                ; $0F:E97E: C9 F0
BCS CODE_0FE987         ; $0F:E980: B0 05
LDA #$F0                ; $0F:E982: A9 F0
STA $0901,y             ; $0F:E984: 99 01 09

CODE_0FE987:
PLA                     ; $0F:E987: 68
CLC                     ; $0F:E988: 18
ADC #$10                ; $0F:E989: 69 10
INY                     ; $0F:E98B: C8
INY                     ; $0F:E98C: C8
INY                     ; $0F:E98D: C8
INY                     ; $0F:E98E: C8
DEX                     ; $0F:E98F: CA
BNE CODE_0FE94D         ; $0F:E990: D0 BB
LDY $02                 ; $0F:E992: A4 02
RTS                     ; $0F:E994: 60

CODE_0FE995:
LDY $0B53               ; $0F:E995: AC 53 0B
REP #$20                ; $0F:E998: C2 20
LDA $0E70               ; $0F:E99A: AD 70 0E
SEC                     ; $0F:E99D: 38
SBC $42                 ; $0F:E99E: E5 42
STA $0E6B               ; $0F:E9A0: 8D 6B 0E
SEP #$20                ; $0F:E9A3: E2 20
LDA $0E6F               ; $0F:E9A5: AD 6F 0E
BNE CODE_0FE9D5         ; $0F:E9A8: D0 2B
LDA $0E6D               ; $0F:E9AA: AD 6D 0E
STA $0801,y             ; $0F:E9AD: 99 01 08
LDA $0E6B               ; $0F:E9B0: AD 6B 0E
JSR CODE_0FEABB         ; $0F:E9B3: 20 BB EA
STA $0800,y             ; $0F:E9B6: 99 00 08
LDA #$26                ; $0F:E9B9: A9 26
STA $0802,y             ; $0F:E9BB: 99 02 08
LDA #$29                ; $0F:E9BE: A9 29
STA $0803,y             ; $0F:E9C0: 99 03 08
DEC $0E6E               ; $0F:E9C3: CE 6E 0E
BEQ CODE_0FE9CB         ; $0F:E9C6: F0 03
JMP CODE_0FEA4F         ; $0F:E9C8: 4C 4F EA

CODE_0FE9CB:
LDA #$06                ; $0F:E9CB: A9 06
STA $0E6E               ; $0F:E9CD: 8D 6E 0E
INC $0E6F               ; $0F:E9D0: EE 6F 0E
BRA CODE_0FEA4F         ; $0F:E9D3: 80 7A

CODE_0FE9D5:
LDA $0E6F               ; $0F:E9D5: AD 6F 0E
CMP #$06                ; $0F:E9D8: C9 06
BCS CODE_0FEA4F         ; $0F:E9DA: B0 73
PHX                     ; $0F:E9DC: DA
LDX $0E6F               ; $0F:E9DD: AE 6F 0E
LDA DATA_0FEA81,x       ; $0F:E9E0: BD 81 EA
CLC                     ; $0F:E9E3: 18
ADC $0E6B               ; $0F:E9E4: 6D 6B 0E
STA $0800,y             ; $0F:E9E7: 99 00 08
STA $0804,y             ; $0F:E9EA: 99 04 08
JSR CODE_0FEABB         ; $0F:E9ED: 20 BB EA
LDA DATA_0FEA8D,x       ; $0F:E9F0: BD 8D EA
CLC                     ; $0F:E9F3: 18
ADC $0E6D               ; $0F:E9F4: 6D 6D 0E
STA $0801,y             ; $0F:E9F7: 99 01 08
CLC                     ; $0F:E9FA: 18
ADC #$08                ; $0F:E9FB: 69 08
STA $0805,y             ; $0F:E9FD: 99 05 08
LDA DATA_0FEA87,x       ; $0F:EA00: BD 87 EA
CLC                     ; $0F:EA03: 18
ADC $0E6B               ; $0F:EA04: 6D 6B 0E
STA $0808,y             ; $0F:EA07: 99 08 08
STA $080C,y             ; $0F:EA0A: 99 0C 08
JSR CODE_0FEABB         ; $0F:EA0D: 20 BB EA
LDA DATA_0FEA8D,x       ; $0F:EA10: BD 8D EA
CLC                     ; $0F:EA13: 18
ADC $0E6D               ; $0F:EA14: 6D 6D 0E
STA $0809,y             ; $0F:EA17: 99 09 08
CLC                     ; $0F:EA1A: 18
ADC #$08                ; $0F:EA1B: 69 08
STA $080D,y             ; $0F:EA1D: 99 0D 08
LDX $0E6F               ; $0F:EA20: AE 6F 0E
DEX                     ; $0F:EA23: CA
TXA                     ; $0F:EA24: 8A
ASL A                   ; $0F:EA25: 0A
ASL A                   ; $0F:EA26: 0A
TAX                     ; $0F:EA27: AA
LDA #$03                ; $0F:EA28: A9 03
STA $04                 ; $0F:EA2A: 85 04

CODE_0FEA2C:
LDA DATA_0FEA93,x       ; $0F:EA2C: BD 93 EA
STA $0802,y             ; $0F:EA2F: 99 02 08
LDA DATA_0FEAA7,x       ; $0F:EA32: BD A7 EA
STA $0803,y             ; $0F:EA35: 99 03 08
INY                     ; $0F:EA38: C8
INY                     ; $0F:EA39: C8
INY                     ; $0F:EA3A: C8
INY                     ; $0F:EA3B: C8
INX                     ; $0F:EA3C: E8
DEC $04                 ; $0F:EA3D: C6 04
BPL CODE_0FEA2C         ; $0F:EA3F: 10 EB
DEC $0E6E               ; $0F:EA41: CE 6E 0E
BNE CODE_0FEA4E         ; $0F:EA44: D0 08
LDA #$06                ; $0F:EA46: A9 06
STA $0E6E               ; $0F:EA48: 8D 6E 0E
INC $0E6F               ; $0F:EA4B: EE 6F 0E

CODE_0FEA4E:
PLX                     ; $0F:EA4E: FA

CODE_0FEA4F:
JMP CODE_0FEB35         ; $0F:EA4F: 4C 35 EB

CODE_0FEA52:
LDA $09                 ; $0F:EA52: A5 09
LSR A                   ; $0F:EA54: 4A
BCS CODE_0FEA5A         ; $0F:EA55: B0 03
DEC $0248,x             ; $0F:EA57: DE 48 02

CODE_0FEA5A:
LDA $0248,x             ; $0F:EA5A: BD 48 02
STA $0801,y             ; $0F:EA5D: 99 01 08
LDA $03B3               ; $0F:EA60: AD B3 03
STA $0800,y             ; $0F:EA63: 99 00 08
LDA #$02                ; $0F:EA66: A9 02
STA $0C00,y             ; $0F:EA68: 99 00 0C
CMP #$F8                ; $0F:EA6B: C9 F8
BCC CODE_0FEA74         ; $0F:EA6D: 90 05
LDA #$03                ; $0F:EA6F: A9 03
STA $0C00,y             ; $0F:EA71: 99 00 0C

CODE_0FEA74:
LDA #$23                ; $0F:EA74: A9 23
STA $0803,y             ; $0F:EA76: 99 03 08
LDA #$2E                ; $0F:EA79: A9 2E
STA $0802,y             ; $0F:EA7B: 99 02 08
JMP CODE_0FE995         ; $0F:EA7E: 4C 95 E9

DATA_0FEA81:
db $00,$FC,$FB,$FA,$FA,$FA

DATA_0FEA87:
db $00,$04,$05,$06,$06,$06

DATA_0FEA8D:
db $00,$FC,$FC,$FE,$FE,$FF

DATA_0FEA93:
db $27,$27,$28,$28,$36,$37,$36,$37
db $36,$37,$36,$37,$38,$29,$38,$29
db $38,$29,$38,$29

DATA_0FEAA7:
db $29,$A9,$29,$A9,$29,$29,$69,$69
db $29,$29,$69,$69,$29,$29,$69,$69
db $29,$29,$69,$69

CODE_0FEABB:
PHA                     ; $0F:EABB: 48
CMP #$F8                ; $0F:EABC: C9 F8
BCC CODE_0FEAC8         ; $0F:EABE: 90 08
LDA #$01                ; $0F:EAC0: A9 01
STA $0C00,y             ; $0F:EAC2: 99 00 0C
STA $0C04,y             ; $0F:EAC5: 99 04 0C

CODE_0FEAC8:
PLA                     ; $0F:EAC8: 68
RTS                     ; $0F:EAC9: 60

CODE_0FEACA:
LDA $0248,x             ; $0F:EACA: BD 48 02
CLC                     ; $0F:EACD: 18
ADC #$04                ; $0F:EACE: 69 04
STA $0E6D               ; $0F:EAD0: 8D 6D 0E
LDA $022A,x             ; $0F:EAD3: BD 2A 02
STA $0E70               ; $0F:EAD6: 8D 70 0E
LDA $0089,x             ; $0F:EAD9: BD 89 00
STA $0E71               ; $0F:EADC: 8D 71 0E
LDA #$06                ; $0F:EADF: A9 06
STA $0E6E               ; $0F:EAE1: 8D 6E 0E
STZ $0E6F               ; $0F:EAE4: 9C 6F 0E
RTL                     ; $0F:EAE7: 6B

DATA_0FEAE8:
db $28,$2A,$2C,$2E

CODE_0FEAEC:
PHB                     ; $0F:EAEC: 8B
PHK                     ; $0F:EAED: 4B
PLB                     ; $0F:EAEE: AB
LDY $0B62,x             ; $0F:EAEF: BC 62 0B
LDA $39,x               ; $0F:EAF2: B5 39
CMP #$02                ; $0F:EAF4: C9 02
BCC CODE_0FEAFB         ; $0F:EAF6: 90 03
JMP CODE_0FEA52         ; $0F:EAF8: 4C 52 EA

CODE_0FEAFB:
LDA $B1,x               ; $0F:EAFB: B5 B1
BMI CODE_0FEB02         ; $0F:EAFD: 30 03
JMP CODE_0FE995         ; $0F:EAFF: 4C 95 E9

CODE_0FEB02:
LDA $0248,x             ; $0F:EB02: BD 48 02
STA $0801,y             ; $0F:EB05: 99 01 08
LDA $03B3               ; $0F:EB08: AD B3 03
SEC                     ; $0F:EB0B: 38
SBC #$04                ; $0F:EB0C: E9 04
STA $E4                 ; $0F:EB0E: 85 E4
CMP #$F0                ; $0F:EB10: C9 F0
BCS CODE_0FEB18         ; $0F:EB12: B0 04
LDA #$02                ; $0F:EB14: A9 02
BRA CODE_0FEB1A         ; $0F:EB16: 80 02

CODE_0FEB18:
LDA #$03                ; $0F:EB18: A9 03

CODE_0FEB1A:
STA $0C00,y             ; $0F:EB1A: 99 00 0C
LDA $E4                 ; $0F:EB1D: A5 E4
STA $0800,y             ; $0F:EB1F: 99 00 08
LDA $09                 ; $0F:EB22: A5 09
LSR A                   ; $0F:EB24: 4A
AND #$03                ; $0F:EB25: 29 03
TAX                     ; $0F:EB27: AA
LDA DATA_0FEAE8,x       ; $0F:EB28: BD E8 EA
STA $0802,y             ; $0F:EB2B: 99 02 08
LDA #$28                ; $0F:EB2E: A9 28
STA $0803,y             ; $0F:EB30: 99 03 08
LDX $9E                 ; $0F:EB33: A6 9E

CODE_0FEB35:
PLB                     ; $0F:EB35: AB
RTL                     ; $0F:EB36: 6B

DATA_0FEB37:
db $04,$00,$04,$00

DATA_0FEB3B:
db $00,$04,$00,$04,$00,$08,$00,$08
db $08,$00,$08,$00

DATA_0FEB47:
db $44,$46,$44,$46,$81,$83,$80,$82

DATA_0FEB4F:
db $2A,$2A,$AA,$6A

CODE_0FEB53:
PHB                     ; $0F:EB53: 8B
PHK                     ; $0F:EB54: 4B
PLB                     ; $0F:EB55: AB
LDY $0B62,x             ; $0F:EB56: BC 62 0B
LDA $0747               ; $0F:EB59: AD 47 07
BNE CODE_0FEB66         ; $0F:EB5C: D0 08
LDA $39,x               ; $0F:EB5E: B5 39
AND #$7F                ; $0F:EB60: 29 7F
CMP #$01                ; $0F:EB62: C9 01
BEQ CODE_0FEB6A         ; $0F:EB64: F0 04

CODE_0FEB66:
LDX #$00                ; $0F:EB66: A2 00
BEQ CODE_0FEB71         ; $0F:EB68: F0 07

CODE_0FEB6A:
LDA $09                 ; $0F:EB6A: A5 09
LSR A                   ; $0F:EB6C: 4A
LSR A                   ; $0F:EB6D: 4A
AND #$03                ; $0F:EB6E: 29 03
TAX                     ; $0F:EB70: AA

CODE_0FEB71:
LDA $03BE               ; $0F:EB71: AD BE 03
CLC                     ; $0F:EB74: 18
ADC DATA_0FEB3B,x       ; $0F:EB75: 7D 3B EB
STA $0801,y             ; $0F:EB78: 99 01 08
REP #$20                ; $0F:EB7B: C2 20
LDA DATA_0FEB37,x       ; $0F:EB7D: BD 37 EB
AND #$00FF              ; $0F:EB80: 29 FF 00
CLC                     ; $0F:EB83: 18
ADC $0E93               ; $0F:EB84: 6D 93 0E
SEC                     ; $0F:EB87: 38
SBC #$0008              ; $0F:EB88: E9 08 00
STA $E4                 ; $0F:EB8B: 85 E4
SEP #$20                ; $0F:EB8D: E2 20
LDA $E4                 ; $0F:EB8F: A5 E4
STA $0800,y             ; $0F:EB91: 99 00 08
LDA #$02                ; $0F:EB94: A9 02
STA $0C00,y             ; $0F:EB96: 99 00 0C
LDA $E5                 ; $0F:EB99: A5 E5
BEQ CODE_0FEBA2         ; $0F:EB9B: F0 05
LDA #$03                ; $0F:EB9D: A9 03
STA $0C00,y             ; $0F:EB9F: 99 00 0C

CODE_0FEBA2:
LDA DATA_0FEB47,x       ; $0F:EBA2: BD 47 EB
STA $0802,y             ; $0F:EBA5: 99 02 08
LDA DATA_0FEB4F,x       ; $0F:EBA8: BD 4F EB
STA $0803,y             ; $0F:EBAB: 99 03 08
LDA $03D6               ; $0F:EBAE: AD D6 03
AND #$0F                ; $0F:EBB1: 29 0F
CMP #$0F                ; $0F:EBB3: C9 0F
BEQ CODE_0FEBBE         ; $0F:EBB5: F0 07
LDA $03D6               ; $0F:EBB7: AD D6 03
AND #$F0                ; $0F:EBBA: 29 F0
BEQ CODE_0FEBC2         ; $0F:EBBC: F0 04

CODE_0FEBBE:
LDX $9E                 ; $0F:EBBE: A6 9E
STZ $39,x               ; $0F:EBC0: 74 39

CODE_0FEBC2:
LDX $9E                 ; $0F:EBC2: A6 9E
PLB                     ; $0F:EBC4: AB
RTL                     ; $0F:EBC5: 6B

CODE_0FEBC6:
PHD                     ; $0F:EBC6: 0B
LDA #$0C                ; $0F:EBC7: A9 0C
XBA                     ; $0F:EBC9: EB
LDA #$00                ; $0F:EBCA: A9 00
TCD                     ; $0F:EBCC: 5B
REP #$10                ; $0F:EBCD: C2 10
LDX #$0000              ; $0F:EBCF: A2 00 00
TXY                     ; $0F:EBD2: 9B

CODE_0FEBD3:
LDA $0C,x               ; $0F:EBD3: B5 0C
LSR A                   ; $0F:EBD5: 4A
ROR A                   ; $0F:EBD6: 6A
ROR A                   ; $0F:EBD7: 6A
STA $01                 ; $0F:EBD8: 85 01
LDA $08,x               ; $0F:EBDA: B5 08
ASL A                   ; $0F:EBDC: 0A
ASL A                   ; $0F:EBDD: 0A
ASL A                   ; $0F:EBDE: 0A
ASL A                   ; $0F:EBDF: 0A
TSB $01                 ; $0F:EBE0: 04 01
LDA $04,x               ; $0F:EBE2: B5 04
ASL A                   ; $0F:EBE4: 0A
ASL A                   ; $0F:EBE5: 0A
TSB $01                 ; $0F:EBE6: 04 01
LDA $00,x               ; $0F:EBE8: B5 00
ORA $01                 ; $0F:EBEA: 05 01
STA $0A00,y             ; $0F:EBEC: 99 00 0A
INY                     ; $0F:EBEF: C8
LDA $1C,x               ; $0F:EBF0: B5 1C
LSR A                   ; $0F:EBF2: 4A
ROR A                   ; $0F:EBF3: 6A
ROR A                   ; $0F:EBF4: 6A
STA $01                 ; $0F:EBF5: 85 01
LDA $18,x               ; $0F:EBF7: B5 18
ASL A                   ; $0F:EBF9: 0A
ASL A                   ; $0F:EBFA: 0A
ASL A                   ; $0F:EBFB: 0A
ASL A                   ; $0F:EBFC: 0A
TSB $01                 ; $0F:EBFD: 04 01
LDA $14,x               ; $0F:EBFF: B5 14
ASL A                   ; $0F:EC01: 0A
ASL A                   ; $0F:EC02: 0A
TSB $01                 ; $0F:EC03: 04 01
LDA $10,x               ; $0F:EC05: B5 10
ORA $01                 ; $0F:EC07: 05 01
STA $0A00,y             ; $0F:EC09: 99 00 0A
INY                     ; $0F:EC0C: C8
REP #$20                ; $0F:EC0D: C2 20
TXA                     ; $0F:EC0F: 8A
CLC                     ; $0F:EC10: 18
ADC #$0020              ; $0F:EC11: 69 20 00
TAX                     ; $0F:EC14: AA
SEP #$20                ; $0F:EC15: E2 20
CPX #$0200              ; $0F:EC17: E0 00 02
BCC CODE_0FEBD3         ; $0F:EC1A: 90 B7
SEP #$10                ; $0F:EC1C: E2 10
PLD                     ; $0F:EC1E: 2B
RTL                     ; $0F:EC1F: 6B

CODE_0FEC20:
LDA $02F7               ; $0F:EC20: AD F7 02
BNE CODE_0FEC54         ; $0F:EC23: D0 2F
LDY $BB                 ; $0F:EC25: A4 BB
DEY                     ; $0F:EC27: 88
BNE CODE_0FEC54         ; $0F:EC28: D0 2A
LDA $03D3               ; $0F:EC2A: AD D3 03
AND #$08                ; $0F:EC2D: 29 08
BNE CODE_0FEC54         ; $0F:EC2F: D0 23
LDY $0B53,x             ; $0F:EC31: BC 53 0B
LDA $03B0               ; $0F:EC34: AD B0 03
STA $0800,y             ; $0F:EC37: 99 00 08
LDA $03BB               ; $0F:EC3A: AD BB 03
STA $0801,y             ; $0F:EC3D: 99 01 08
LDA #$9F                ; $0F:EC40: A9 9F
STA $0802,y             ; $0F:EC42: 99 02 08
LDA $0F                 ; $0F:EC45: A5 0F
CMP #$07                ; $0F:EC47: C9 07
BNE CODE_0FEC4F         ; $0F:EC49: D0 04
LDA #$0A                ; $0F:EC4B: A9 0A
BRA CODE_0FEC51         ; $0F:EC4D: 80 02

CODE_0FEC4F:
LDA #$2A                ; $0F:EC4F: A9 2A

CODE_0FEC51:
STA $0803,y             ; $0F:EC51: 99 03 08

CODE_0FEC54:
RTL                     ; $0F:EC54: 6B

DATA_0FEC55:
db $DF,$1B

DATA_0FEC57:
db $7F,$02

DATA_0FEC59:
db $39,$01,$00,$00,$FF,$4B,$5F,$1F
db $9C,$0D,$00,$00,$FF,$7F,$FF,$4B
db $FF,$19,$00,$00

DATA_0FEC6D:
db $DA,$1A

DATA_0FEC6F:
db $F3,$0D

DATA_0FEC71:
db $0D,$05,$00,$00,$5E,$2B,$77,$1E
db $70,$11,$00,$00,$DF,$3B,$FB,$2E
db $D3,$1D,$00,$00

DATA_0FEC85:
db $7F,$47,$98,$32,$B1,$15,$00,$00
db $1B,$67,$34,$4A,$4D,$2D,$00,$00
db $97,$7E,$B0,$6D,$EA,$54,$00,$00

DATA_0FEC9D:
db $5F,$03

DATA_0FEC9F:
db $59,$02

DATA_0FECA1:
db $00,$38,$00,$00,$FF,$03,$BC,$02
db $16,$00,$00,$00,$FF,$7F,$FF,$47
db $DF,$00,$00,$00

DATA_0FECB5:
db $C5,$2C,$89,$3D,$CD,$3D,$51,$4E
db $F8,$2E,$74,$1E,$41,$1C,$A3,$28
db $A4,$28,$48,$35,$8B,$3D,$0F,$4A
db $D6,$32,$31,$1E,$41,$1C,$A3,$28
db $62,$20,$C6,$2C,$27,$39,$8B,$41
db $50,$32,$AB,$21,$41,$1C,$A3,$28
db $83,$24,$07,$31,$49,$39,$CD,$45
db $93,$32,$EE,$1D,$41,$1C,$A3,$28
db $62,$20,$C6,$2C,$27,$39,$8B,$41
db $50,$32,$AB,$21,$41,$1C,$A3,$28
db $83,$24,$07,$31,$49,$39,$CD,$45
db $93,$32,$EE,$1D,$41,$1C,$A3,$28
db $A4,$28,$48,$35,$8B,$3D,$0F,$4A
db $D6,$32,$31,$1E,$41,$1C,$A3,$28
db $C5,$2C,$89,$3D,$CD,$3D,$51,$4E
db $F8,$2E,$74,$1E,$41,$1C,$A3,$28

CODE_0FED35:
LDA $0200               ; $0F:ED35: AD 00 02
BEQ CODE_0FED3C         ; $0F:ED38: F0 02
PLB                     ; $0F:ED3A: AB
RTL                     ; $0F:ED3B: 6B

CODE_0FED3C:
INC $0E74               ; $0F:ED3C: EE 74 0E
LDA $0E74               ; $0F:ED3F: AD 74 0E
AND #$07                ; $0F:ED42: 29 07
BEQ CODE_0FED49         ; $0F:ED44: F0 03
JMP CODE_0FEDBC         ; $0F:ED46: 4C BC ED

CODE_0FED49:
INC $0E75               ; $0F:ED49: EE 75 0E
LDA $0E75               ; $0F:ED4C: AD 75 0E
CMP #$03                ; $0F:ED4F: C9 03
BNE CODE_0FED58         ; $0F:ED51: D0 05
STZ $0E75               ; $0F:ED53: 9C 75 0E
LDA #$00                ; $0F:ED56: A9 00

CODE_0FED58:
ASL A                   ; $0F:ED58: 0A
ASL A                   ; $0F:ED59: 0A
ASL A                   ; $0F:ED5A: 0A
TAX                     ; $0F:ED5B: AA
REP #$20                ; $0F:ED5C: C2 20
LDA DATA_0FEC55,x       ; $0F:ED5E: BD 55 EC
STA $1026               ; $0F:ED61: 8D 26 10
LDA DATA_0FEC9D,x       ; $0F:ED64: BD 9D EC
STA $100A               ; $0F:ED67: 8D 0A 10
LDA DATA_0FEC6D,x       ; $0F:ED6A: BD 6D EC
STA $102C               ; $0F:ED6D: 8D 2C 10
LDA DATA_0FEC57,x       ; $0F:ED70: BD 57 EC
STA $1028               ; $0F:ED73: 8D 28 10
LDA DATA_0FEC9F,x       ; $0F:ED76: BD 9F EC
STA $100C               ; $0F:ED79: 8D 0C 10
LDA DATA_0FEC6F,x       ; $0F:ED7C: BD 6F EC
STA $102E               ; $0F:ED7F: 8D 2E 10
LDA DATA_0FEC59,x       ; $0F:ED82: BD 59 EC
STA $102A               ; $0F:ED85: 8D 2A 10
LDA DATA_0FECA1,x       ; $0F:ED88: BD A1 EC
STA $100E               ; $0F:ED8B: 8D 0E 10
LDA DATA_0FEC71,x       ; $0F:ED8E: BD 71 EC
STA $1030               ; $0F:ED91: 8D 30 10
SEP #$20                ; $0F:ED94: E2 20
LDA $0F26               ; $0F:ED96: AD 26 0F
BEQ CODE_0FEDB7         ; $0F:ED99: F0 1C
DEC A                   ; $0F:ED9B: 3A
ASL A                   ; $0F:ED9C: 0A
TAX                     ; $0F:ED9D: AA
LDA PNTR_0FEDAF,x       ; $0F:ED9E: BD AF ED
STA $E4                 ; $0F:EDA1: 85 E4
LDA PNTR_0FEDAF+1,x     ; $0F:EDA3: BD B0 ED
STA $E5                 ; $0F:EDA6: 85 E5
LDA #$05                ; $0F:EDA8: A9 05
STA $E6                 ; $0F:EDAA: 85 E6
JMP ($00E4)             ; $0F:EDAC: 6C E4 00

PNTR_0FEDAF:
dw CODE_0FEDF3
dw CODE_0FEDB7
dw CODE_0FEE20
dw CODE_0FEF02

CODE_0FEDB7:
LDA #$01                ; $0F:EDB7: A9 01
STA $1200               ; $0F:EDB9: 8D 00 12

CODE_0FEDBC:
LDA $0E74               ; $0F:EDBC: AD 74 0E
AND #$03                ; $0F:EDBF: 29 03
BNE CODE_0FEDF1         ; $0F:EDC1: D0 2E
INC $0E76               ; $0F:EDC3: EE 76 0E
LDA $0E76               ; $0F:EDC6: AD 76 0E
CMP #$03                ; $0F:EDC9: C9 03
BNE CODE_0FEDD2         ; $0F:EDCB: D0 05
STZ $0E76               ; $0F:EDCD: 9C 76 0E
LDA #$00                ; $0F:EDD0: A9 00

CODE_0FEDD2:
ASL A                   ; $0F:EDD2: 0A
ASL A                   ; $0F:EDD3: 0A
ASL A                   ; $0F:EDD4: 0A
TAX                     ; $0F:EDD5: AA
REP #$20                ; $0F:EDD6: C2 20
LDA DATA_0FEC85,x       ; $0F:EDD8: BD 85 EC
STA $1032               ; $0F:EDDB: 8D 32 10
LDA DATA_0FEC85+2,x     ; $0F:EDDE: BD 87 EC
STA $1034               ; $0F:EDE1: 8D 34 10
LDA DATA_0FEC85+4,x     ; $0F:EDE4: BD 89 EC
STA $1036               ; $0F:EDE7: 8D 36 10
SEP #$20                ; $0F:EDEA: E2 20
LDA #$01                ; $0F:EDEC: A9 01
STA $1200               ; $0F:EDEE: 8D 00 12

CODE_0FEDF1:
PLB                     ; $0F:EDF1: AB
RTL                     ; $0F:EDF2: 6B

CODE_0FEDF3:
LDA $0E74               ; $0F:EDF3: AD 74 0E
AND #$38                ; $0F:EDF6: 29 38
LSR A                   ; $0F:EDF8: 4A
LSR A                   ; $0F:EDF9: 4A
TAX                     ; $0F:EDFA: AA
REP #$20                ; $0F:EDFB: C2 20
LDA DATA_0FEE52,x       ; $0F:EDFD: BD 52 EE
STA $10E6               ; $0F:EE00: 8D E6 10
LDA DATA_0FEE62,x       ; $0F:EE03: BD 62 EE
STA $10E8               ; $0F:EE06: 8D E8 10
LDA DATA_0FEE72,x       ; $0F:EE09: BD 72 EE
STA $10FA               ; $0F:EE0C: 8D FA 10
LDA DATA_0FEE82,x       ; $0F:EE0F: BD 82 EE
STA $10FC               ; $0F:EE12: 8D FC 10
LDA DATA_0FEE92,x       ; $0F:EE15: BD 92 EE
STA $10FE               ; $0F:EE18: 8D FE 10
SEP #$20                ; $0F:EE1B: E2 20
JMP CODE_0FEDB7         ; $0F:EE1D: 4C B7 ED

CODE_0FEE20:
LDA $0E74               ; $0F:EE20: AD 74 0E
AND #$38                ; $0F:EE23: 29 38
ASL A                   ; $0F:EE25: 0A
TAX                     ; $0F:EE26: AA
REP #$20                ; $0F:EE27: C2 20
LDA DATA_0FECB5,x       ; $0F:EE29: BD B5 EC
STA $10E6               ; $0F:EE2C: 8D E6 10
LDA DATA_0FECB5+2,x     ; $0F:EE2F: BD B7 EC
STA $10E8               ; $0F:EE32: 8D E8 10
LDA DATA_0FECB5+4,x     ; $0F:EE35: BD B9 EC
STA $10EA               ; $0F:EE38: 8D EA 10
LDA DATA_0FECB5+6,x     ; $0F:EE3B: BD BB EC
STA $10EC               ; $0F:EE3E: 8D EC 10
LDA DATA_0FECB5+8,x     ; $0F:EE41: BD BD EC
STA $10EE               ; $0F:EE44: 8D EE 10
LDA DATA_0FECB5+10,x    ; $0F:EE47: BD BF EC
STA $10F0               ; $0F:EE4A: 8D F0 10
SEP #$20                ; $0F:EE4D: E2 20
JMP CODE_0FEDB7         ; $0F:EE4F: 4C B7 ED

DATA_0FEE52:
db $BF,$7F,$38,$7F,$B4,$76,$30,$72
db $BF,$7F,$38,$7F,$B4,$76,$30,$72

DATA_0FEE62:
db $38,$7F,$B4,$76,$30,$72,$BF,$7F
db $38,$7F,$B4,$76,$30,$72,$BF,$7F

DATA_0FEE72:
db $B4,$76,$30,$72,$BF,$7F,$38,$7F
db $B4,$76,$30,$72,$BF,$7F,$38,$7F

DATA_0FEE82:
db $C9,$69,$87,$61,$45,$59,$03,$51
db $C9,$69,$C9,$69,$C9,$69,$46,$59

DATA_0FEE92:
db $30,$72,$BF,$7F,$38,$7F,$B4,$76
db $30,$72,$BF,$7F,$38,$7F,$B4,$76

DATA_0FEEA2:
db $63,$0C,$E5,$1C,$27,$29,$06,$25
db $63,$0C,$07,$1D,$2A,$25,$09,$21
db $63,$0C,$29,$19,$2C,$21,$2B,$1D
db $63,$0C,$07,$1D,$2A,$25,$09,$21
db $63,$0C,$E5,$1C,$27,$29,$06,$25
db $63,$0C,$07,$1D,$2A,$25,$09,$21
db $63,$0C,$29,$19,$2C,$21,$2B,$1D
db $63,$0C,$07,$1D,$2A,$25,$09,$21

DATA_0FEEE2:
db $77,$00,$7A,$01,$98,$00,$9B,$01
db $B9,$00,$BC,$01,$FB,$00,$FE,$01
db $DA,$00,$DD,$01,$B9,$00,$BC,$01
db $98,$00,$9B,$01,$77,$00,$7A,$01

CODE_0FEF02:
LDA $0E74               ; $0F:EF02: AD 74 0E
AND #$38                ; $0F:EF05: 29 38
TAX                     ; $0F:EF07: AA
LSR A                   ; $0F:EF08: 4A
TAY                     ; $0F:EF09: A8
REP #$20                ; $0F:EF0A: C2 20
LDA DATA_0FEEA2,x       ; $0F:EF0C: BD A2 EE
STA $10E2               ; $0F:EF0F: 8D E2 10
LDA DATA_0FEEA2+2,x     ; $0F:EF12: BD A4 EE
STA $10E4               ; $0F:EF15: 8D E4 10
LDA DATA_0FEEA2+4,x     ; $0F:EF18: BD A6 EE
STA $10E6               ; $0F:EF1B: 8D E6 10
LDA DATA_0FEEA2+6,x     ; $0F:EF1E: BD A8 EE
STA $10E8               ; $0F:EF21: 8D E8 10
LDA DATA_0FEEE2,y       ; $0F:EF24: B9 E2 EE
STA $10FC               ; $0F:EF27: 8D FC 10
LDA DATA_0FEEE2+2,y     ; $0F:EF2A: B9 E4 EE
STA $10FE               ; $0F:EF2D: 8D FE 10
SEP #$20                ; $0F:EF30: E2 20
LDA $1C                 ; $0F:EF32: A5 1C
CMP #$35                ; $0F:EF34: C9 35
BEQ CODE_0FEFAC         ; $0F:EF36: F0 74
LDA $0EB7               ; $0F:EF38: AD B7 0E
BNE CODE_0FEF61         ; $0F:EF3B: D0 24
LDA $07B8               ; $0F:EF3D: AD B8 07
AND #$0F                ; $0F:EF40: 29 0F
BNE CODE_0FEFAC         ; $0F:EF42: D0 68
LDA $0F                 ; $0F:EF44: A5 0F
CMP #$08                ; $0F:EF46: C9 08
BNE CODE_0FEF4F         ; $0F:EF48: D0 05
LDA #$18                ; $0F:EF4A: A9 18
STA $1603               ; $0F:EF4C: 8D 03 16

CODE_0FEF4F:
LDA #$11                ; $0F:EF4F: A9 11
STA $0EB8               ; $0F:EF51: 8D B8 0E
LDA #$1F                ; $0F:EF54: A9 1F
STA $0EB9               ; $0F:EF56: 8D B9 0E
STA $0EBA               ; $0F:EF59: 8D BA 0E
INC $0EB7               ; $0F:EF5C: EE B7 0E
BRA CODE_0FEF89         ; $0F:EF5F: 80 28

CODE_0FEF61:
DEC $0EB8               ; $0F:EF61: CE B8 0E
DEC $0EB9               ; $0F:EF64: CE B9 0E
DEC $0EB9               ; $0F:EF67: CE B9 0E
DEC $0EBA               ; $0F:EF6A: CE BA 0E
DEC $0EBA               ; $0F:EF6D: CE BA 0E
DEC $0EB8               ; $0F:EF70: CE B8 0E
DEC $0EB9               ; $0F:EF73: CE B9 0E
DEC $0EB9               ; $0F:EF76: CE B9 0E
DEC $0EBA               ; $0F:EF79: CE BA 0E
DEC $0EBA               ; $0F:EF7C: CE BA 0E
LDA $0EB8               ; $0F:EF7F: AD B8 0E
CMP #$03                ; $0F:EF82: C9 03
BNE CODE_0FEF89         ; $0F:EF84: D0 03
STZ $0EB7               ; $0F:EF86: 9C B7 0E

CODE_0FEF89:
REP #$20                ; $0F:EF89: C2 20
LDA $0EB8               ; $0F:EF8B: AD B8 0E
AND #$00FF              ; $0F:EF8E: 29 FF 00
XBA                     ; $0F:EF91: EB
ASL A                   ; $0F:EF92: 0A
ASL A                   ; $0F:EF93: 0A
STA $E4                 ; $0F:EF94: 85 E4
LDA $0EB9               ; $0F:EF96: AD B9 0E
AND #$00FF              ; $0F:EF99: 29 FF 00
XBA                     ; $0F:EF9C: EB
LSR A                   ; $0F:EF9D: 4A
LSR A                   ; $0F:EF9E: 4A
LSR A                   ; $0F:EF9F: 4A
ORA $E4                 ; $0F:EFA0: 05 E4
ORA $0EBA               ; $0F:EFA2: 0D BA 0E
STA $E4                 ; $0F:EFA5: 85 E4
STA $10E2               ; $0F:EFA7: 8D E2 10
SEP #$20                ; $0F:EFAA: E2 20

CODE_0FEFAC:
JMP CODE_0FEDB7         ; $0F:EFAC: 4C B7 ED

CODE_0FEFAF:
STZ $028D               ; $0F:EFAF: 9C 8D 02
LDA $09                 ; $0F:EFB2: A5 09
AND #$07                ; $0F:EFB4: 29 07
BNE CODE_0FEFF0         ; $0F:EFB6: D0 38
LDA $09                 ; $0F:EFB8: A5 09
AND #$38                ; $0F:EFBA: 29 38
LSR A                   ; $0F:EFBC: 4A
LSR A                   ; $0F:EFBD: 4A
LSR A                   ; $0F:EFBE: 4A
STA $04                 ; $0F:EFBF: 85 04
LDA #$10                ; $0F:EFC1: A9 10
STA $0287               ; $0F:EFC3: 8D 87 02
REP #$20                ; $0F:EFC6: C2 20
LDA #$8000              ; $0F:EFC8: A9 00 80
LDY $04                 ; $0F:EFCB: A4 04

CODE_0FEFCD:
DEY                     ; $0F:EFCD: 88
BMI CODE_0FEFD6         ; $0F:EFCE: 30 06
CLC                     ; $0F:EFD0: 18
ADC #$0800              ; $0F:EFD1: 69 00 08
BRA CODE_0FEFCD         ; $0F:EFD4: 80 F7

CODE_0FEFD6:
CLC                     ; $0F:EFD6: 18
ADC #$4000              ; $0F:EFD7: 69 00 40
STA $0285               ; $0F:EFDA: 8D 85 02
LDA #$1C00              ; $0F:EFDD: A9 00 1C
STA $028A               ; $0F:EFE0: 8D 8A 02
LDA #$0600              ; $0F:EFE3: A9 00 06
STA $0288               ; $0F:EFE6: 8D 88 02
SEP #$20                ; $0F:EFE9: E2 20
INC $028D               ; $0F:EFEB: EE 8D 02
BRA CODE_0FF024         ; $0F:EFEE: 80 34

CODE_0FEFF0:
LDA $09                 ; $0F:EFF0: A5 09
CLC                     ; $0F:EFF2: 18
ADC #$04                ; $0F:EFF3: 69 04
STA $0285               ; $0F:EFF5: 8D 85 02
AND #$07                ; $0F:EFF8: 29 07
BNE CODE_0FF024         ; $0F:EFFA: D0 28
LDA #$0C                ; $0F:EFFC: A9 0C
STA $0287               ; $0F:EFFE: 8D 87 02
REP #$20                ; $0F:F001: C2 20
LDA $0285               ; $0F:F003: AD 85 02
AND #$0038              ; $0F:F006: 29 38 00
ASL A                   ; $0F:F009: 0A
ASL A                   ; $0F:F00A: 0A
ASL A                   ; $0F:F00B: 0A
CLC                     ; $0F:F00C: 18
ADC #$FB00              ; $0F:F00D: 69 00 FB
STA $0285               ; $0F:F010: 8D 85 02
LDA #$5160              ; $0F:F013: A9 60 51
STA $028A               ; $0F:F016: 8D 8A 02
LDA #$0040              ; $0F:F019: A9 40 00
STA $0288               ; $0F:F01C: 8D 88 02
SEP #$20                ; $0F:F01F: E2 20
INC $028D               ; $0F:F021: EE 8D 02

CODE_0FF024:
RTL                     ; $0F:F024: 6B

DATA_0FF025:
db $01,$18

CODE_0FF027:
SEP #$30                ; $0F:F027: E2 30
PHB                     ; $0F:F029: 8B
PHK                     ; $0F:F02A: 4B
PLB                     ; $0F:F02B: AB
LDA $99                 ; $0F:F02C: A5 99
CMP #$01                ; $0F:F02E: C9 01
BNE CODE_0FF03D         ; $0F:F030: D0 0B
STA $02F8               ; $0F:F032: 8D F8 02
LDX $0753               ; $0F:F035: AE 53 07
LDA DATA_0FF025,x       ; $0F:F038: BD 25 F0
STA $99                 ; $0F:F03B: 85 99

CODE_0FF03D:
JSR CODE_0FF1AF         ; $0F:F03D: 20 AF F1
LDA $99                 ; $0F:F040: A5 99
ASL A                   ; $0F:F042: 0A
TAX                     ; $0F:F043: AA
LDA PNTR_0FF051,x       ; $0F:F044: BD 51 F0
STA $00                 ; $0F:F047: 85 00
LDA PNTR_0FF051+1,x     ; $0F:F049: BD 52 F0
STA $01                 ; $0F:F04C: 85 01
JMP ($0000)             ; $0F:F04E: 6C 00 00

PNTR_0FF051:
dw CODE_0FF0A0
dw CODE_0FF0C1
dw CODE_0FF0AC
dw CODE_0FF0C1
dw CODE_0FF0D4
dw CODE_0FF0AC
dw CODE_0FF0A0
dw CODE_0FF0C8
dw CODE_0FF091
dw CODE_0FF0C8
dw CODE_0FF0E0
dw CODE_0FF0AC
dw CODE_0FF0AC
dw CODE_0FF0A0
dw CODE_0FF0AC
dw CODE_0FF0A0
dw CODE_0FF0AC
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0C1
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0A0
dw CODE_0FF0A0

CODE_0FF091:
LDA $075F               ; $0F:F091: AD 5F 07
CMP #$08                ; $0F:F094: C9 08
BNE CODE_0FF0A0         ; $0F:F096: D0 08
LDA #$11                ; $0F:F098: A9 11
STA $0099               ; $0F:F09A: 8D 99 00
JSR CODE_0FF1AF         ; $0F:F09D: 20 AF F1

CODE_0FF0A0:
STZ $99                 ; $0F:F0A0: 64 99
PLB                     ; $0F:F0A2: AB
STZ $028D               ; $0F:F0A3: 9C 8D 02
LDA #$01                ; $0F:F0A6: A9 01
STA $028C               ; $0F:F0A8: 8D 8C 02
RTL                     ; $0F:F0AB: 6B

CODE_0FF0AC:
LDA $DB                 ; $0F:F0AC: A5 DB
CMP #$13                ; $0F:F0AE: C9 13
BEQ CODE_0FF0CD         ; $0F:F0B0: F0 1B
CMP #$19                ; $0F:F0B2: C9 19
BEQ CODE_0FF0CD         ; $0F:F0B4: F0 17
CMP #$2F                ; $0F:F0B6: C9 2F
BEQ CODE_0FF0CD         ; $0F:F0B8: F0 13
LDA #$17                ; $0F:F0BA: A9 17
JSR CODE_0FF1AF         ; $0F:F0BC: 20 AF F1
BRA CODE_0FF0A0         ; $0F:F0BF: 80 DF

CODE_0FF0C1:
LDA #$11                ; $0F:F0C1: A9 11
JSR CODE_0FF1AF         ; $0F:F0C3: 20 AF F1
BRA CODE_0FF0A0         ; $0F:F0C6: 80 D8

CODE_0FF0C8:
LDA #$16                ; $0F:F0C8: A9 16
JSR CODE_0FF1AF         ; $0F:F0CA: 20 AF F1

CODE_0FF0CD:
LDA #$12                ; $0F:F0CD: A9 12
JSR CODE_0FF1AF         ; $0F:F0CF: 20 AF F1
BRA CODE_0FF0A0         ; $0F:F0D2: 80 CC

CODE_0FF0D4:
LDA #$13                ; $0F:F0D4: A9 13
JSR CODE_0FF1AF         ; $0F:F0D6: 20 AF F1
LDA #$14                ; $0F:F0D9: A9 14
JSR CODE_0FF1AF         ; $0F:F0DB: 20 AF F1
BRA CODE_0FF0A0         ; $0F:F0DE: 80 C0

CODE_0FF0E0:
LDA #$15                ; $0F:F0E0: A9 15
JSR CODE_0FF1AF         ; $0F:F0E2: 20 AF F1
BRA CODE_0FF0A0         ; $0F:F0E5: 80 B9

DATA_0FF0E7:
db $00,$00,$08,$00,$10,$00,$09,$00
db $09,$00,$08,$00,$09,$00,$10,$00
db $08,$00,$10,$00,$08,$00,$09,$00
db $08,$00,$08,$00,$08,$00,$09,$00
db $08,$00,$09,$00,$08,$00,$09,$00
db $09,$00,$09,$00,$09,$00,$09,$00
db $08,$00

DATA_0FF119:
db $00,$00,$00,$E0,$00,$A0,$00,$80
db $00,$A0,$00,$98,$00,$A0,$00,$A0
db $00,$80,$00,$A0,$00,$D0,$00,$E0
db $00,$A0,$00,$90,$00,$B0,$00,$90
db $00,$B8,$00,$D0,$00,$C0,$00,$E8
db $00,$F0,$00,$F8,$00,$E0,$00,$C0
db $00,$F0

DATA_0FF14B:
db $00,$00,$00,$20,$00,$20,$00,$20
db $00,$20,$00,$2C,$00,$20,$00,$20
db $00,$20,$00,$20,$00,$34,$00,$2C
db $00,$28,$00,$2C,$00,$2C,$00,$20
db $00,$2C,$00,$30,$00,$30,$00,$20
db $00,$28,$00,$2C,$00,$2C,$00,$30
db $00,$20

DATA_0FF17D:
db $00,$10,$00,$10,$00,$20,$00,$10
db $00,$20,$00,$08,$00,$20,$00,$10
db $00,$10,$00,$20,$00,$20,$00,$08
db $00,$10,$00,$08,$00,$08,$00,$10
db $00,$10,$00,$10,$00,$10,$00,$08
db $00,$08,$00,$08,$00,$08,$00,$10
db $00,$10

CODE_0FF1AF:
ASL A                   ; $0F:F1AF: 0A
TAX                     ; $0F:F1B0: AA
LDA DATA_0FF0E7,x       ; $0F:F1B1: BD E7 F0
STA $0287               ; $0F:F1B4: 8D 87 02
REP #$20                ; $0F:F1B7: C2 20
LDA DATA_0FF119,x       ; $0F:F1B9: BD 19 F1
STA $0285               ; $0F:F1BC: 8D 85 02
LDA DATA_0FF14B,x       ; $0F:F1BF: BD 4B F1
STA $028A               ; $0F:F1C2: 8D 8A 02
LDA DATA_0FF17D,x       ; $0F:F1C5: BD 7D F1
STA $0288               ; $0F:F1C8: 8D 88 02
SEP #$20                ; $0F:F1CB: E2 20
JSR CODE_0FF1D1         ; $0F:F1CD: 20 D1 F1
RTS                     ; $0F:F1D0: 60

CODE_0FF1D1:
LDA #$80                ; $0F:F1D1: A9 80
STA $2115               ; $0F:F1D3: 8D 15 21
REP #$20                ; $0F:F1D6: C2 20
LDA $028A               ; $0F:F1D8: AD 8A 02
STA $2116               ; $0F:F1DB: 8D 16 21
LDA #$1801              ; $0F:F1DE: A9 01 18
STA $4300               ; $0F:F1E1: 8D 00 43
LDA $0285               ; $0F:F1E4: AD 85 02
STA $4302               ; $0F:F1E7: 8D 02 43
LDX $0287               ; $0F:F1EA: AE 87 02
STX $4304               ; $0F:F1ED: 8E 04 43
LDA $0288               ; $0F:F1F0: AD 88 02
STA $4305               ; $0F:F1F3: 8D 05 43
LDX #$01                ; $0F:F1F6: A2 01
STX $420B               ; $0F:F1F8: 8E 0B 42
SEP #$20                ; $0F:F1FB: E2 20
RTS                     ; $0F:F1FD: 60

CODE_0FF1FE:
LDA $0F04               ; $0F:F1FE: AD 04 0F
BEQ CODE_0FF232         ; $0F:F201: F0 2F
LDA $5C                 ; $0F:F203: A5 5C
CMP #$01                ; $0F:F205: C9 01
BNE CODE_0FF232         ; $0F:F207: D0 29
LDY #$01                ; $0F:F209: A0 01
LDA $0009               ; $0F:F20B: AD 09 00
ASL A                   ; $0F:F20E: 0A
BCS CODE_0FF213         ; $0F:F20F: B0 02
LDY #$03                ; $0F:F211: A0 03

CODE_0FF213:
STY $0000               ; $0F:F213: 8C 00 00
LDA $0009               ; $0F:F216: AD 09 00
AND $0000               ; $0F:F219: 2D 00 00
BNE CODE_0FF232         ; $0F:F21C: D0 14
LDA $0219               ; $0F:F21E: AD 19 02
CLC                     ; $0F:F221: 18
ADC #$01                ; $0F:F222: 69 01
STA $0219               ; $0F:F224: 8D 19 02
LDA $0078               ; $0F:F227: AD 78 00
ADC #$00                ; $0F:F22A: 69 00
STA $0078               ; $0F:F22C: 8D 78 00
INC $06FF               ; $0F:F22F: EE FF 06

CODE_0FF232:
RTL                     ; $0F:F232: 6B

DATA_0FF233:
db $30,$70,$B8,$50,$98,$30,$70,$B8
db $50,$98,$30,$70

DATA_0FF23F:
db $30,$30,$30,$60,$60,$A0,$A0,$A0
db $D0,$D0,$D0,$60

DATA_0FF24B:
db $91,$91,$91,$91,$92,$92,$91,$91
db $91,$92,$91,$92

CODE_0FF257:
PHB                     ; $0F:F257: 8B
PHK                     ; $0F:F258: 4B
PLB                     ; $0F:F259: AB
LDA $0E67               ; $0F:F25A: AD 67 0E
BNE CODE_0FF2A2         ; $0F:F25D: D0 43
LDA $0F04               ; $0F:F25F: AD 04 0F
BEQ CODE_0FF2A2         ; $0F:F262: F0 3E
JSR CODE_0FF2BC         ; $0F:F264: 20 BC F2
LDX #$00                ; $0F:F267: A2 00
LDY #$00                ; $0F:F269: A0 00

CODE_0FF26B:
LDA $0901,y             ; $0F:F26B: B9 01 09
CMP #$F0                ; $0F:F26E: C9 F0
BEQ CODE_0FF27D         ; $0F:F270: F0 0B
INY                     ; $0F:F272: C8
INY                     ; $0F:F273: C8
INY                     ; $0F:F274: C8
INY                     ; $0F:F275: C8
TYA                     ; $0F:F276: 98
AND #$FF                ; $0F:F277: 29 FF
BEQ CODE_0FF2A2         ; $0F:F279: F0 27
BRA CODE_0FF26B         ; $0F:F27B: 80 EE

CODE_0FF27D:
LDA $0F18,x             ; $0F:F27D: BD 18 0F
STA $0901,y             ; $0F:F280: 99 01 09
LDA DATA_0FF24B,x       ; $0F:F283: BD 4B F2
STA $0902,y             ; $0F:F286: 99 02 09
LDA #$2A                ; $0F:F289: A9 2A
STA $0903,y             ; $0F:F28B: 99 03 09
LDA $0F0C,x             ; $0F:F28E: BD 0C 0F
STA $0900,y             ; $0F:F291: 99 00 09
LDA #$00                ; $0F:F294: A9 00
STA $0D00,y             ; $0F:F296: 99 00 0D
INY                     ; $0F:F299: C8
INY                     ; $0F:F29A: C8
INY                     ; $0F:F29B: C8
INY                     ; $0F:F29C: C8
INX                     ; $0F:F29D: E8
CPX #$0C                ; $0F:F29E: E0 0C
BNE CODE_0FF26B         ; $0F:F2A0: D0 C9

CODE_0FF2A2:
PLB                     ; $0F:F2A2: AB
RTL                     ; $0F:F2A3: 6B

DATA_0FF2A4:
db $57,$57,$56,$56,$58,$58,$56,$56
db $57,$58,$57,$58,$59,$59,$58,$58
db $5A,$5A,$58,$58,$59,$5A,$59,$5A

CODE_0FF2BC:
LDX #$0B                ; $0F:F2BC: A2 0B

CODE_0FF2BE:
LDA $0F0C,x             ; $0F:F2BE: BD 0C 0F
CLC                     ; $0F:F2C1: 18
ADC DATA_0FF2A4,x       ; $0F:F2C2: 7D A4 F2
ADC DATA_0FF2A4,x       ; $0F:F2C5: 7D A4 F2
STA $0F0C,x             ; $0F:F2C8: 9D 0C 0F
LDA $0F18,x             ; $0F:F2CB: BD 18 0F
CLC                     ; $0F:F2CE: 18
ADC DATA_0FF2A4,x       ; $0F:F2CF: 7D A4 F2
STA $0F18,x             ; $0F:F2D2: 9D 18 0F
DEX                     ; $0F:F2D5: CA
BPL CODE_0FF2BE         ; $0F:F2D6: 10 E6
RTS                     ; $0F:F2D8: 60

CODE_0FF2D9:
PHB                     ; $0F:F2D9: 8B
PHK                     ; $0F:F2DA: 4B
PLB                     ; $0F:F2DB: AB
PHX                     ; $0F:F2DC: DA
LDX #$0B                ; $0F:F2DD: A2 0B

CODE_0FF2DF:
LDA DATA_0FF23F,x       ; $0F:F2DF: BD 3F F2
STA $0F0C,x             ; $0F:F2E2: 9D 0C 0F
LDA DATA_0FF233,x       ; $0F:F2E5: BD 33 F2
STA $0F18,x             ; $0F:F2E8: 9D 18 0F
DEX                     ; $0F:F2EB: CA
BPL CODE_0FF2DF         ; $0F:F2EC: 10 F1
PLX                     ; $0F:F2EE: FA
PLB                     ; $0F:F2EF: AB
LDA #$10                ; $0F:F2F0: A9 10
STA $0F4B               ; $0F:F2F2: 8D 4B 0F
TSB $1601               ; $0F:F2F5: 0C 01 16
LDA #$01                ; $0F:F2F8: A9 01
BNE CODE_0FF306         ; $0F:F2FA: D0 0A

CODE_0FF2FC:
STZ $0F4B               ; $0F:F2FC: 9C 4B 0F
LDA #$20                ; $0F:F2FF: A9 20
TSB $1601               ; $0F:F301: 0C 01 16
LDA #$00                ; $0F:F304: A9 00

CODE_0FF306:
STA $0F04               ; $0F:F306: 8D 04 0F
RTL                     ; $0F:F309: 6B

DATA_0FF30A:
db $0C,$00,$02,$4C,$80,$05,$2E,$12
db $24,$10,$24,$10,$FF

CODE_0FF317:
PHB                     ; $0F:F317: 8B
PHK                     ; $0F:F318: 4B
PLB                     ; $0F:F319: AB
LDY #$0C                ; $0F:F31A: A0 0C

CODE_0FF31C:
LDA DATA_0FF30A,y       ; $0F:F31C: B9 0A F3
STA $1700,y             ; $0F:F31F: 99 00 17
DEY                     ; $0F:F322: 88
BPL CODE_0FF31C         ; $0F:F323: 10 F7
LDA $077A               ; $0F:F325: AD 7A 07
BEQ CODE_0FF33E         ; $0F:F328: F0 14
LDA #$24                ; $0F:F32A: A9 24
STA $1706               ; $0F:F32C: 8D 06 17
LDA #$10                ; $0F:F32F: A9 10
STA $1707               ; $0F:F331: 8D 07 17
LDA #$2E                ; $0F:F334: A9 2E
STA $170A               ; $0F:F336: 8D 0A 17
LDA #$12                ; $0F:F339: A9 12
STA $170B               ; $0F:F33B: 8D 0B 17

CODE_0FF33E:
PLB                     ; $0F:F33E: AB
RTL                     ; $0F:F33F: 6B

DATA_0FF340:
db $02,$4E,$4E,$4E,$4E,$02,$02,$02
db $4E,$4E,$4E,$4E,$4F,$99,$84,$85
db $86,$D0,$F1,$1A,$64,$83,$AE,$DB
db $00,$2F,$2F,$3C,$0A,$3C,$BB,$74
db $AB,$3F

DATA_0FF362:
db $17,$F6,$F6,$F6,$F6,$17,$1A,$1A
db $F6,$F6,$F6,$F6,$F6,$F6,$F3,$F3
db $F3,$F3,$F3,$F4,$F4,$F4,$F4,$F4
db $F5,$F5,$F5,$F5,$F3,$F5,$F5,$F6
db $F3,$F4,$FF,$FF,$04,$E8,$00,$1F
db $1D,$08,$11,$08,$0A,$08,$17,$08
db $14,$08,$24,$08,$22,$08,$18,$08
db $1E,$08,$24,$08,$16,$08,$0A,$08
db $1B,$08,$12,$08,$18,$08,$2B,$08
db $FF,$04,$E8,$00,$1F,$1D,$08,$11
db $08,$0A,$08,$17,$08,$14,$08,$24
db $08,$22,$08,$18,$08,$1E,$08,$24
db $08,$15,$08,$1E,$08,$12,$08,$10
db $08,$12,$08,$2B,$08,$FF,$05,$09
db $00,$1B,$19,$08,$0E,$08,$0A,$08
db $0C,$08,$0E,$08,$24,$08,$12,$08
db $1C,$08,$24,$08,$19,$08,$0A,$08
db $1F,$08,$0E,$08,$0D,$08,$FF,$05
db $47,$00,$23,$20,$08,$12,$08,$1D
db $08,$11,$08,$24,$08,$14,$08,$12
db $08,$17,$08,$10,$08,$0D,$08,$18
db $08,$16,$08,$24,$08,$1C,$08,$0A
db $08,$1F,$08,$0E,$08,$0D,$08,$FF
db $05,$89,$00,$1F,$11,$08,$1E,$08
db $1B,$08,$1B,$08,$0A,$08,$11,$08
db $24,$08,$1D,$08,$18,$08,$24,$08
db $24,$08,$16,$08,$0A,$08,$1B,$08
db $12,$08,$18,$08,$FF,$05,$89,$00
db $1F,$11,$08,$1E,$08,$1B,$08,$1B
db $08,$0A,$08,$11,$08,$24,$08,$1D
db $08,$18,$08,$24,$08,$24,$08,$15
db $08,$1E,$08,$12,$08,$10,$08,$12
db $08,$FF,$05,$CA,$00,$19,$18,$08
db $1E,$08,$1B,$08,$24,$08,$18,$08
db $17,$08,$15,$08,$22,$08,$24,$08
db $11,$08,$0E,$08,$1B,$08,$18,$08
db $FF,$06,$07,$00,$25,$1D,$08,$11
db $08,$12,$08,$1C,$08,$24,$08,$0E
db $08,$17,$08,$0D,$08,$1C,$08,$24
db $08,$22,$08,$18,$08,$1E,$08,$1B
db $08,$24,$08,$1D,$08,$1B,$08,$12
db $08,$19,$08,$FF,$06,$46,$00,$27
db $18,$08,$0F,$08,$24,$08,$0A,$08
db $24,$08,$15,$08,$18,$08,$17,$08
db $10,$08,$24,$08,$0F,$08,$1B,$08
db $12,$08,$0E,$08,$17,$08,$0D,$08
db $1C,$08,$11,$08,$12,$08,$19,$08
db $FF,$06,$88,$00,$1F,$01,$04,$00
db $04,$00,$04,$00,$04,$00,$04,$00
db $04,$24,$04,$19,$04,$1D,$04,$1C
db $04,$AF,$04,$0A,$04,$0D,$04,$0D
db $04,$0E,$04,$0D,$04,$FF,$06,$A6
db $00,$29,$0F,$04,$18,$04,$1B,$04
db $24,$04,$0E,$04,$0A,$04,$0C,$04
db $11,$04,$24,$04,$19,$04,$15,$04
db $0A,$04,$22,$04,$0E,$04,$1B,$04
db $24,$04,$15,$04,$0E,$04,$0F,$04
db $1D,$04,$AF,$04,$FF,$3F,$00,$00
db $07,$0F,$08,$30,$08,$30,$08,$0F
db $08,$FF,$06,$24,$00,$2F,$20,$08
db $0E,$08,$24,$08,$19,$08,$1B,$08
db $0E,$08,$1C,$08,$0E,$08,$17,$08
db $1D,$08,$24,$08,$0F,$08,$0A,$08
db $17,$08,$1D,$08,$0A,$08,$1C,$08
db $22,$08,$24,$08,$20,$08,$18,$08
db $1B,$08,$15,$08,$0D,$08,$06,$66
db $00,$25,$15,$08,$0E,$08,$1D,$08
db $F2,$08,$1C,$08,$24,$08,$1D,$08
db $1B,$08,$22,$08,$24,$08,$76,$08
db $09,$08,$24,$08,$20,$08,$18,$08
db $1B,$08,$15,$08,$0D,$08,$75,$08
db $06,$A9,$00,$1B,$20,$08,$12,$08
db $1D,$08,$11,$08,$24,$08,$18,$08
db $17,$08,$0E,$08,$24,$08,$10,$08
db $0A,$08,$16,$08,$0E,$08,$AF,$08
db $FF,$06,$25,$00,$2B,$22,$08,$18
db $08,$1E,$08,$F2,$08,$1B,$08,$0E
db $08,$24,$08,$0A,$08,$24,$08,$1C
db $08,$1E,$08,$19,$08,$0E,$08,$1B
db $08,$24,$08,$19,$08,$15,$08,$0A
db $08,$22,$08,$0E,$08,$1B,$08,$2B
db $08,$06,$69,$00,$19,$20,$08,$0E
db $08,$24,$08,$11,$08,$18,$08,$19
db $08,$0E,$08,$24,$08,$20,$08,$0E
db $08,$F2,$08,$15,$08,$15,$08,$06
db $A9,$00,$1B,$1C,$08,$0E,$08,$0E
db $08,$24,$08,$22,$08,$18,$08,$1E
db $08,$24,$08,$0A,$08,$10,$08,$0A
db $08,$12,$08,$87,$10,$AF,$08,$06
db $E8,$00,$1F,$16,$08,$0A,$08,$1B
db $08,$12,$08,$18,$08,$24,$08,$0A
db $08,$17,$08,$0D,$08,$24,$08,$1C
db $08,$1D,$08,$0A,$08,$0F,$08,$0F
db $08,$AF,$08,$FF,$FF,$05,$48,$00
db $1F,$1D,$08,$11,$08,$0A,$08,$17
db $08,$14,$08,$24,$00,$22,$08,$18
db $08,$1E,$08,$24,$00,$16,$08,$0A
db $08,$1B,$08,$12,$08,$18,$08,$2B
db $08,$FF,$05,$48,$00,$1F,$1D,$08
db $11,$08,$0A,$08,$17,$08,$14,$08
db $24,$00,$22,$08,$18,$08,$1E,$08
db $24,$00,$15,$08,$1E,$08,$12,$08
db $10,$08,$12,$08,$2B,$08,$FF,$05
db $C5,$00,$2B,$0B,$08,$1E,$08,$1D
db $08,$24,$00,$18,$08,$1E,$08,$1B
db $08,$24,$00,$19,$08,$1B,$08,$12
db $08,$17,$08,$0C,$08,$0E,$08,$1C
db $08,$1C,$08,$24,$00,$12,$08,$1C
db $08,$24,$00,$12,$08,$17,$08,$06
db $05,$00,$1D,$0A,$08,$17,$08,$18
db $08,$1D,$08,$11,$08,$0E,$08,$1B
db $08,$24,$00,$0C,$08,$0A,$08,$1C
db $08,$1D,$08,$15,$08,$0E,$08,$2B
db $08

DATA_0FF6EB:
db $FF,$01,$81,$01,$81,$01,$81,$02
db $01,$81,$00,$81,$00,$80,$01,$81
db $01

DATA_0FF6FC:
db $00,$B0,$10,$10,$10,$28,$10,$28
db $06,$10,$10,$0C,$80,$10,$28,$08
db $90,$FF,$00

CODE_0FF70F:
PHB                     ; $0F:F70F: 8B
PHK                     ; $0F:F710: 4B
PLB                     ; $0F:F711: AB
LDX $0717               ; $0F:F712: AE 17 07
LDA $0718               ; $0F:F715: AD 18 07
BNE CODE_0FF727         ; $0F:F718: D0 0D
INX                     ; $0F:F71A: E8
INC $0717               ; $0F:F71B: EE 17 07
SEC                     ; $0F:F71E: 38
LDA DATA_0FF6FC,x       ; $0F:F71F: BD FC F6
STA $0718               ; $0F:F722: 8D 18 07
BEQ CODE_0FF731         ; $0F:F725: F0 0A

CODE_0FF727:
LDA DATA_0FF6EB,x       ; $0F:F727: BD EB F6
STA $0FF4               ; $0F:F72A: 8D F4 0F
DEC $0718               ; $0F:F72D: CE 18 07
CLC                     ; $0F:F730: 18

CODE_0FF731:
PLB                     ; $0F:F731: AB
RTL                     ; $0F:F732: 6B

CODE_0FF733:
LDX #$07                ; $0F:F733: A2 07
LDA #$00                ; $0F:F735: A9 00
STA $06                 ; $0F:F737: 85 06

CODE_0FF739:
STX $07                 ; $0F:F739: 86 07

CODE_0FF73B:
CPX #$01                ; $0F:F73B: E0 01
BNE CODE_0FF743         ; $0F:F73D: D0 04
CPY #$50                ; $0F:F73F: C0 50
BCS CODE_0FF745         ; $0F:F741: B0 02

CODE_0FF743:
STA ($06),y             ; $0F:F743: 91 06

CODE_0FF745:
DEY                     ; $0F:F745: 88
CPY #$FF                ; $0F:F746: C0 FF
BNE CODE_0FF73B         ; $0F:F748: D0 F1
DEX                     ; $0F:F74A: CA
BPL CODE_0FF739         ; $0F:F74B: 10 EC
LDA #$FF                ; $0F:F74D: A9 FF
STA $1702               ; $0F:F74F: 8D 02 17
INC A                   ; $0F:F752: 1A
STZ $0B25               ; $0F:F753: 9C 25 0B
STZ $0B26               ; $0F:F756: 9C 26 0B
STZ $0B27               ; $0F:F759: 9C 27 0B
STZ $0B28               ; $0F:F75C: 9C 28 0B
STZ $0B29               ; $0F:F75F: 9C 29 0B
LDX #$40                ; $0F:F762: A2 40

CODE_0FF764:
STZ $0F00,x             ; $0F:F764: 9E 00 0F
INX                     ; $0F:F767: E8
BNE CODE_0FF764         ; $0F:F768: D0 FA
LDA $0F0B               ; $0F:F76A: AD 0B 0F
BEQ CODE_0FF779         ; $0F:F76D: F0 0A
DEC A                   ; $0F:F76F: 3A
STA $0F0B               ; $0F:F770: 8D 0B 0F
BNE CODE_0FF779         ; $0F:F773: D0 04
JSL CODE_0FD085         ; $0F:F775: 22 85 D0 0F

CODE_0FF779:
RTL                     ; $0F:F779: 6B

DATA_0FF77A:
db $93,$00,$00,$11,$12,$12,$13,$00
db $00,$51,$52,$53,$00,$00,$00,$00
db $00,$00,$01,$02,$02,$03,$00,$00
db $00,$00,$00,$00,$91,$92,$93,$00
db $00,$00,$00,$51,$52,$53,$41,$42
db $43,$00,$00,$00,$00,$00,$91,$92
db $97,$87,$88,$89,$99,$00,$00,$00
db $11,$12,$13,$A4,$A5,$A5,$A5,$A6
db $97,$98,$99,$01,$02,$03,$00,$A4
db $A5,$A6,$00,$11,$12,$12,$12,$13
db $00,$00,$00,$00,$01,$02,$02,$03
db $00,$A4,$A5,$A5,$A6,$00,$00,$00
db $11,$12,$12,$13,$00,$00,$00,$00
db $00,$00,$00,$9C,$00,$8B,$AA,$AA
db $AA,$AA,$11,$12,$13,$8B,$00,$9C
db $9C,$00,$00,$01,$02,$03,$11,$12
db $12,$13,$00,$00,$00,$00,$AA,$AA
db $9C,$AA,$00,$8B,$00,$01,$02,$03

DATA_0FF80A:
db $FF,$FF,$FF,$FF,$FF,$06,$00,$FF
db $01,$0E,$06,$00,$FF,$02,$0E,$FF
db $01,$07,$0F,$FF,$FF,$FF,$FF,$FF
db $16,$FF,$06,$FF,$0E,$FF,$06,$00
db $FF,$0E,$01,$00,$0E,$14,$0F,$01
db $FF,$FF,$FF,$FF,$16,$01,$0F,$05
db $0E,$00,$0A,$0B,$07,$00,$01,$00
db $0E,$FF,$0F,$01,$FF,$FF,$FF,$FF
db $16,$FF,$06,$FF,$12,$FF,$00,$08
db $12,$05,$01,$FF,$03,$08,$0F,$FF
db $FF,$FF,$FF,$FF,$16,$06,$08,$00
db $0F,$02,$FF,$02,$01,$06,$FF,$FF
db $0E,$07,$0F,$08,$FF,$FF,$FF,$FF
db $16,$02,$0E,$05,$08,$06,$01,$0A
db $07,$0B,$0E,$01,$0E,$14,$0F,$FF
db $FF,$FF,$FF,$FF,$16,$02,$0E,$14
db $08,$05,$01,$0E,$12,$0F,$FF,$FF
db $0E,$FF,$0F,$FF,$FF,$FF,$FF,$FF
db $16,$00,$02,$0F,$05,$06,$02,$05
db $0F,$00,$FF,$01,$0E,$12,$0F,$05
db $FF,$FF,$FF,$FF,$16

DATA_0FF8AF:
db $02,$07,$12,$0E,$05,$FF,$FF,$12
db $FF,$FF,$FF,$FF,$FF,$FF,$16,$02
db $06,$0E,$07,$05,$00,$0E,$FF,$0F
db $01,$FF,$05,$FF,$08,$FF,$07,$0E
db $0F,$14,$FF,$FF,$FF,$FF,$FF,$16
db $FF,$00,$0E,$02,$FF,$0A,$00,$07
db $0E,$0B,$01,$0E,$08,$0F,$FF,$FF
db $FF,$FF,$FF,$16,$02,$0E,$05,$0F
db $FF,$01,$0E,$14,$08,$07,$FF,$0E
db $12,$0F,$FF,$FF,$FF,$FF,$FF,$16
db $00,$05,$0F,$08,$02,$01,$0E,$02
db $0F,$00,$01,$0E,$05,$08,$00,$FF
db $FF,$FF,$FF,$16

CODE_0FF913:
LDA $0B46,x             ; $0F:F913: BD 46 0B
TAY                     ; $0F:F916: A8
LDA $03AE               ; $0F:F917: AD AE 03
STA $0900,y             ; $0F:F91A: 99 00 09
LDA $BC,x               ; $0F:F91D: B5 BC
CMP #$02                ; $0F:F91F: C9 02
BCS CODE_0FF92A         ; $0F:F921: B0 07
LDA $03B9               ; $0F:F923: AD B9 03
CMP #$E8                ; $0F:F926: C9 E8
BCC CODE_0FF92C         ; $0F:F928: 90 02

CODE_0FF92A:
LDA #$F0                ; $0F:F92A: A9 F0

CODE_0FF92C:
STA $0901,y             ; $0F:F92C: 99 01 09
LDA $A1,x               ; $0F:F92F: B5 A1
BMI CODE_0FF937         ; $0F:F931: 30 04
LDA #$A9                ; $0F:F933: A9 A9
BRA CODE_0FF939         ; $0F:F935: 80 02

CODE_0FF937:
LDA #$29                ; $0F:F937: A9 29

CODE_0FF939:
STA $0903,y             ; $0F:F939: 99 03 09
LDA $0E68               ; $0F:F93C: AD 68 0E
AND #$18                ; $0F:F93F: 29 18
LSR A                   ; $0F:F941: 4A
LSR A                   ; $0F:F942: 4A
CLC                     ; $0F:F943: 18
ADC #$62                ; $0F:F944: 69 62
STA $0902,y             ; $0F:F946: 99 02 09
LDA $021A,x             ; $0F:F949: BD 1A 02
STA $E4                 ; $0F:F94C: 85 E4
LDA $79,x               ; $0F:F94E: B5 79
STA $E5                 ; $0F:F950: 85 E5
REP #$20                ; $0F:F952: C2 20
LDA $E4                 ; $0F:F954: A5 E4
SEC                     ; $0F:F956: 38
SBC $42                 ; $0F:F957: E5 42
STA $E6                 ; $0F:F959: 85 E6
SEP #$20                ; $0F:F95B: E2 20
LDA #$02                ; $0F:F95D: A9 02
STA $0D00,y             ; $0F:F95F: 99 00 0D
LDA $E7                 ; $0F:F962: A5 E7
BEQ CODE_0FF96B         ; $0F:F964: F0 05
LDA #$03                ; $0F:F966: A9 03
STA $0D00,y             ; $0F:F968: 99 00 0D

CODE_0FF96B:
RTL                     ; $0F:F96B: 6B

CODE_0FF96C:
PHB                     ; $0F:F96C: 8B
PHK                     ; $0F:F96D: 4B
PLB                     ; $0F:F96E: AB
STZ $0F49               ; $0F:F96F: 9C 49 0F
PHX                     ; $0F:F972: DA
LDX $9E                 ; $0F:F973: A6 9E
LDA $1C,x               ; $0F:F975: B5 1C
CMP #$04                ; $0F:F977: C9 04
BCS CODE_0FF983         ; $0F:F979: B0 08
LDA $29,x               ; $0F:F97B: B5 29
BMI CODE_0FF987         ; $0F:F97D: 30 08
AND #$06                ; $0F:F97F: 29 06
BEQ CODE_0FF987         ; $0F:F981: F0 04

CODE_0FF983:
PLX                     ; $0F:F983: FA
PLB                     ; $0F:F984: AB
CLC                     ; $0F:F985: 18
RTL                     ; $0F:F986: 6B

CODE_0FF987:
LDA $0029,x             ; $0F:F987: BD 29 00
STA $E0                 ; $0F:F98A: 85 E0
CMP #$02                ; $0F:F98C: C9 02
BEQ CODE_0FF998         ; $0F:F98E: F0 08
CMP #$03                ; $0F:F990: C9 03
BEQ CODE_0FF998         ; $0F:F992: F0 04
CMP #$04                ; $0F:F994: C9 04
BNE CODE_0FF99D         ; $0F:F996: D0 05

CODE_0FF998:
STZ $0F40,x             ; $0F:F998: 9E 40 0F
BRA CODE_0FF9AA         ; $0F:F99B: 80 0D

CODE_0FF99D:
AND #$80                ; $0F:F99D: 29 80
BEQ CODE_0FF983         ; $0F:F99F: F0 E2
LDA $0F                 ; $0F:F9A1: A5 0F
CMP #$0A                ; $0F:F9A3: C9 0A
BCS CODE_0FF9AA         ; $0F:F9A5: B0 03
INC $0F40,x             ; $0F:F9A7: FE 40 0F

CODE_0FF9AA:
LDA $0F40,x             ; $0F:F9AA: BD 40 0F
AND #$0C                ; $0F:F9AD: 29 0C
STA $E4                 ; $0F:F9AF: 85 E4
LDA $1C,x               ; $0F:F9B1: B5 1C
LDX $E4                 ; $0F:F9B3: A6 E4
CMP #$02                ; $0F:F9B5: C9 02
BNE CODE_0FF9BE         ; $0F:F9B7: D0 05
TXA                     ; $0F:F9B9: 8A
CLC                     ; $0F:F9BA: 18
ADC #$10                ; $0F:F9BB: 69 10
TAX                     ; $0F:F9BD: AA

CODE_0FF9BE:
LDA $E0                 ; $0F:F9BE: A5 E0
AND #$0F                ; $0F:F9C0: 29 0F
CMP #$04                ; $0F:F9C2: C9 04
BNE CODE_0FF9CF         ; $0F:F9C4: D0 09
TXA                     ; $0F:F9C6: 8A
CLC                     ; $0F:F9C7: 18
ADC #$20                ; $0F:F9C8: 69 20
TAX                     ; $0F:F9CA: AA
LDA #$80                ; $0F:F9CB: A9 80
TSB $04                 ; $0F:F9CD: 04 04

CODE_0FF9CF:
TYA                     ; $0F:F9CF: 98
CLC                     ; $0F:F9D0: 18
ADC #$08                ; $0F:F9D1: 69 08
TAY                     ; $0F:F9D3: A8
LDA $03B9               ; $0F:F9D4: AD B9 03
CLC                     ; $0F:F9D7: 18
ADC #$08                ; $0F:F9D8: 69 08
CMP #$F0                ; $0F:F9DA: C9 F0
BCC CODE_0FF9E0         ; $0F:F9DC: 90 02
LDA #$F0                ; $0F:F9DE: A9 F0

CODE_0FF9E0:
PHA                     ; $0F:F9E0: 48
LDA $04                 ; $0F:F9E1: A5 04
BPL CODE_0FF9EB         ; $0F:F9E3: 10 06
PLA                     ; $0F:F9E5: 68
CLC                     ; $0F:F9E6: 18
ADC #$02                ; $0F:F9E7: 69 02
BRA CODE_0FF9EC         ; $0F:F9E9: 80 01

CODE_0FF9EB:
PLA                     ; $0F:F9EB: 68

CODE_0FF9EC:
JSR CODE_0FFAB0         ; $0F:F9EC: 20 B0 FA
LDA $04                 ; $0F:F9EF: A5 04
BPL CODE_0FF9FB         ; $0F:F9F1: 10 08
LDA $03B9               ; $0F:F9F3: AD B9 03
CLC                     ; $0F:F9F6: 18
ADC #$12                ; $0F:F9F7: 69 12
BRA CODE_0FFA01         ; $0F:F9F9: 80 06

CODE_0FF9FB:
LDA $03B9               ; $0F:F9FB: AD B9 03
CLC                     ; $0F:F9FE: 18
ADC #$10                ; $0F:F9FF: 69 10

CODE_0FFA01:
JSR CODE_0FFAB0         ; $0F:FA01: 20 B0 FA
LDX $E4                 ; $0F:FA04: A6 E4
LDA DATA_0FFB19,x       ; $0F:FA06: BD 19 FB
ORA $04                 ; $0F:FA09: 05 04
STA $08F3,y             ; $0F:FA0B: 99 F3 08
LDA DATA_0FFB19+1,x     ; $0F:FA0E: BD 1A FB
ORA $04                 ; $0F:FA11: 05 04
STA $08F7,y             ; $0F:FA13: 99 F7 08
LDA DATA_0FFB19+2,x     ; $0F:FA16: BD 1B FB
ORA $04                 ; $0F:FA19: 05 04
STA $08FB,y             ; $0F:FA1B: 99 FB 08
LDA DATA_0FFB19+3,x     ; $0F:FA1E: BD 1C FB
ORA $04                 ; $0F:FA21: 05 04
STA $08FF,y             ; $0F:FA23: 99 FF 08
INC $0F49               ; $0F:FA26: EE 49 0F
PLX                     ; $0F:FA29: FA
PLB                     ; $0F:FA2A: AB
SEC                     ; $0F:FA2B: 38
RTL                     ; $0F:FA2C: 6B

DATA_0FFA2D:
db $00,$FC,$F9,$F7,$F5,$F4,$F3,$F2
db $F2,$F2,$F3,$F4,$F5,$F7,$F9,$FC
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00

CODE_0FFA4D:
PHB                     ; $0F:FA4D: 8B
PHK                     ; $0F:FA4E: 4B
PLB                     ; $0F:FA4F: AB
PHX                     ; $0F:FA50: DA
LDX $9E                 ; $0F:FA51: A6 9E
LDA $1C,x               ; $0F:FA53: B5 1C
CMP #$35                ; $0F:FA55: C9 35
BNE CODE_0FFA9F         ; $0F:FA57: D0 46
LDA $0EC4               ; $0F:FA59: AD C4 0E
BNE CODE_0FFA9F         ; $0F:FA5C: D0 41
LDA $0F4A               ; $0F:FA5E: AD 4A 0F
AND #$1F                ; $0F:FA61: 29 1F
LDY $0B46,x             ; $0F:FA63: BC 46 0B
PHY                     ; $0F:FA66: 5A
TAX                     ; $0F:FA67: AA
LDA DATA_0FFA2D,x       ; $0F:FA68: BD 2D FA
STA $DD                 ; $0F:FA6B: 85 DD
JSR CODE_0FFAA2         ; $0F:FA6D: 20 A2 FA
JSR CODE_0FFAA2         ; $0F:FA70: 20 A2 FA
JSR CODE_0FFAA2         ; $0F:FA73: 20 A2 FA
JSR CODE_0FFAA2         ; $0F:FA76: 20 A2 FA
JSR CODE_0FFAA2         ; $0F:FA79: 20 A2 FA
JSR CODE_0FFAA2         ; $0F:FA7C: 20 A2 FA
PLY                     ; $0F:FA7F: 7A
CPX #$10                ; $0F:FA80: E0 10
BCS CODE_0FFA9C         ; $0F:FA82: B0 18
LDA #$FF                ; $0F:FA84: A9 FF
STA $0902,y             ; $0F:FA86: 99 02 09
STA $0906,y             ; $0F:FA89: 99 06 09
LDA #$D7                ; $0F:FA8C: A9 D7
STA $090A,y             ; $0F:FA8E: 99 0A 09
STA $090E,y             ; $0F:FA91: 99 0E 09
LDA #$EE                ; $0F:FA94: A9 EE
STA $0912,y             ; $0F:FA96: 99 12 09
STA $0916,y             ; $0F:FA99: 99 16 09

CODE_0FFA9C:
INC $0F4A               ; $0F:FA9C: EE 4A 0F

CODE_0FFA9F:
PLX                     ; $0F:FA9F: FA
PLB                     ; $0F:FAA0: AB
RTL                     ; $0F:FAA1: 6B

CODE_0FFAA2:
LDA $0901,y             ; $0F:FAA2: B9 01 09
CLC                     ; $0F:FAA5: 18
ADC $DD                 ; $0F:FAA6: 65 DD
STA $0901,y             ; $0F:FAA8: 99 01 09
INY                     ; $0F:FAAB: C8
INY                     ; $0F:FAAC: C8
INY                     ; $0F:FAAD: C8
INY                     ; $0F:FAAE: C8
RTS                     ; $0F:FAAF: 60

CODE_0FFAB0:
STA $0901,y             ; $0F:FAB0: 99 01 09
STA $0905,y             ; $0F:FAB3: 99 05 09
LDA $03AE               ; $0F:FAB6: AD AE 03
STA $0900,y             ; $0F:FAB9: 99 00 09
CLC                     ; $0F:FABC: 18
ADC #$08                ; $0F:FABD: 69 08
STA $0904,y             ; $0F:FABF: 99 04 09
LDA DATA_0FFAD9,x       ; $0F:FAC2: BD D9 FA
STA $0902,y             ; $0F:FAC5: 99 02 09
LDA DATA_0FFAD9+1,x     ; $0F:FAC8: BD DA FA
STA $0906,y             ; $0F:FACB: 99 06 09
INY                     ; $0F:FACE: C8
INY                     ; $0F:FACF: C8
INY                     ; $0F:FAD0: C8
INY                     ; $0F:FAD1: C8
INY                     ; $0F:FAD2: C8
INY                     ; $0F:FAD3: C8
INY                     ; $0F:FAD4: C8
INY                     ; $0F:FAD5: C8
INX                     ; $0F:FAD6: E8
INX                     ; $0F:FAD7: E8
RTS                     ; $0F:FAD8: 60

DATA_0FFAD9:
db $6E,$6E,$6F,$6F,$C2,$C4,$C3,$C5
db $C0,$C0,$C1,$C1,$C4,$C2,$C5,$C3
db $F5,$F5,$F4,$F4,$80,$82,$81,$83
db $68,$68,$90,$90,$82,$80,$83,$81
db $6F,$6F,$6E,$6E,$C3,$C5,$C2,$C4
db $C1,$C1,$C0,$C0,$C5,$C3,$C4,$C2
db $F4,$F4,$F5,$F5,$81,$83,$80,$82
db $90,$90,$68,$68,$83,$81,$82,$80

DATA_0FFB19:
db $00,$40,$00,$40,$00,$00,$00,$00
db $00,$40,$00,$40,$40,$40,$40,$40

DATA_0FFB29:
db $BF,$27,$FF,$7F,$1F,$3F,$5F,$4A

DATA_0FFB31:
db $3E,$03,$FF,$77,$7F,$2A,$5F,$31

DATA_0FFB39:
db $9E,$02,$BF,$6F,$DF,$15,$1D,$00

DATA_0FFB41:
db $FF,$53,$7F,$67,$9F,$4F,$7F,$67

CODE_0FFB49:
PHB                     ; $0F:FB49: 8B
PHK                     ; $0F:FB4A: 4B
PLB                     ; $0F:FB4B: AB
LDA $09                 ; $0F:FB4C: A5 09
AND #$18                ; $0F:FB4E: 29 18
LSR A                   ; $0F:FB50: 4A
LSR A                   ; $0F:FB51: 4A
TAX                     ; $0F:FB52: AA
REP #$20                ; $0F:FB53: C2 20
LDA DATA_0FFB29,x       ; $0F:FB55: BD 29 FB
STA $10CC               ; $0F:FB58: 8D CC 10
LDA DATA_0FFB31,x       ; $0F:FB5B: BD 31 FB
STA $10CE               ; $0F:FB5E: 8D CE 10
LDA DATA_0FFB39,x       ; $0F:FB61: BD 39 FB
STA $10D0               ; $0F:FB64: 8D D0 10
LDA DATA_0FFB41,x       ; $0F:FB67: BD 41 FB
STA $10DA               ; $0F:FB6A: 8D DA 10
SEP #$20                ; $0F:FB6D: E2 20
INC $1200               ; $0F:FB6F: EE 00 12
PLB                     ; $0F:FB72: AB
RTL                     ; $0F:FB73: 6B

CODE_0FFB74:
REP #$30                ; $0F:FB74: C2 30
LDX #$0000              ; $0F:FB76: A2 00 00
STZ $E6                 ; $0F:FB79: 64 E6

CODE_0FFB7B:
LDA $1000,x             ; $0F:FB7B: BD 00 10
STA $E4                 ; $0F:FB7E: 85 E4
AND #$7C00              ; $0F:FB80: 29 00 7C
BEQ CODE_0FFB8D         ; $0F:FB83: F0 08
LDA $E4                 ; $0F:FB85: A5 E4
SEC                     ; $0F:FB87: 38
SBC #$0400              ; $0F:FB88: E9 00 04
STA $E4                 ; $0F:FB8B: 85 E4

CODE_0FFB8D:
LDA $E4                 ; $0F:FB8D: A5 E4
AND #$03E0              ; $0F:FB8F: 29 E0 03
BEQ CODE_0FFB9C         ; $0F:FB92: F0 08
LDA $E4                 ; $0F:FB94: A5 E4
SEC                     ; $0F:FB96: 38
SBC #$0020              ; $0F:FB97: E9 20 00
STA $E4                 ; $0F:FB9A: 85 E4

CODE_0FFB9C:
LDA $E4                 ; $0F:FB9C: A5 E4
AND #$001F              ; $0F:FB9E: 29 1F 00
BEQ CODE_0FFBA5         ; $0F:FBA1: F0 02
DEC $E4                 ; $0F:FBA3: C6 E4

CODE_0FFBA5:
LDA $E4                 ; $0F:FBA5: A5 E4
STA $1000,x             ; $0F:FBA7: 9D 00 10
ORA $E6                 ; $0F:FBAA: 05 E6
STA $E6                 ; $0F:FBAC: 85 E6
INX                     ; $0F:FBAE: E8
INX                     ; $0F:FBAF: E8
CPX #$0200              ; $0F:FBB0: E0 00 02
BCC CODE_0FFB7B         ; $0F:FBB3: 90 C6
LDA $E6                 ; $0F:FBB5: A5 E6
BEQ CODE_0FFBC8         ; $0F:FBB7: F0 0F
SEP #$30                ; $0F:FBB9: E2 30
STA $0EB8               ; $0F:FBBB: 8D B8 0E
STA $0200               ; $0F:FBBE: 8D 00 02
LDA #$01                ; $0F:FBC1: A9 01
STA $1200               ; $0F:FBC3: 8D 00 12
CLC                     ; $0F:FBC6: 18
RTL                     ; $0F:FBC7: 6B

CODE_0FFBC8:
SEP #$30                ; $0F:FBC8: E2 30
STZ $0EB8               ; $0F:FBCA: 9C B8 0E
STZ $0200               ; $0F:FBCD: 9C 00 02
SEC                     ; $0F:FBD0: 38
RTL                     ; $0F:FBD1: 6B
LDA $5E,x               ; $0F:FBD2: B5 5E
BMI CODE_0FFBDF         ; $0F:FBD4: 30 09
LDA $00                 ; $0F:FBD6: A5 00
SEC                     ; $0F:FBD8: 38
SBC #$18                ; $0F:FBD9: E9 18
STA $E4                 ; $0F:FBDB: 85 E4
BRA CODE_0FFBE3         ; $0F:FBDD: 80 04

CODE_0FFBDF:
LDA $00                 ; $0F:FBDF: A5 00
STA $E4                 ; $0F:FBE1: 85 E4

CODE_0FFBE3:
LDA $0238,x             ; $0F:FBE3: BD 38 02
SEC                     ; $0F:FBE6: 38
SBC $E4                 ; $0F:FBE7: E5 E4
STA $E4                 ; $0F:FBE9: 85 E4
PHY                     ; $0F:FBEB: 5A
LDY $0B46,x             ; $0F:FBEC: BC 46 0B
CMP #$18                ; $0F:FBEF: C9 18
BCC CODE_0FFC03         ; $0F:FBF1: 90 10
LDA $0913,y             ; $0F:FBF3: B9 13 09
ORA #$20                ; $0F:FBF6: 09 20
STA $0913,y             ; $0F:FBF8: 99 13 09
LDA $0917,y             ; $0F:FBFB: B9 17 09
ORA #$20                ; $0F:FBFE: 09 20
STA $0917,y             ; $0F:FC00: 99 17 09

CODE_0FFC03:
LDA $E4                 ; $0F:FC03: A5 E4
CMP #$10                ; $0F:FC05: C9 10
BCC CODE_0FFC19         ; $0F:FC07: 90 10
LDA $090B,y             ; $0F:FC09: B9 0B 09
ORA #$20                ; $0F:FC0C: 09 20
STA $090B,y             ; $0F:FC0E: 99 0B 09
LDA $090F,y             ; $0F:FC11: B9 0F 09
ORA #$20                ; $0F:FC14: 09 20
STA $090F,y             ; $0F:FC16: 99 0F 09

CODE_0FFC19:
LDA $E4                 ; $0F:FC19: A5 E4
CMP #$08                ; $0F:FC1B: C9 08
BCC CODE_0FFC2F         ; $0F:FC1D: 90 10
LDA $0903,y             ; $0F:FC1F: B9 03 09
ORA #$20                ; $0F:FC22: 09 20
STA $0903,y             ; $0F:FC24: 99 03 09
LDA $0907,y             ; $0F:FC27: B9 07 09
ORA #$20                ; $0F:FC2A: 09 20
STA $0907,y             ; $0F:FC2C: 99 07 09

CODE_0FFC2F:
PLY                     ; $0F:FC2F: 7A
RTL                     ; $0F:FC30: 6B

DATA_0FFC31:
db $F9,$0E,$F7,$0E,$FA,$FB,$F8,$FB
db $F6,$FB,$FD,$FE

DATA_0FFC3D:
db $20,$22,$24

CODE_0FFC40:
PHB                     ; $0F:FC40: 8B
PHK                     ; $0F:FC41: 4B
PLB                     ; $0F:FC42: AB
LDY #$F0                ; $0F:FC43: A0 F0
LDA $021A,x             ; $0F:FC45: BD 1A 02
STA $E4                 ; $0F:FC48: 85 E4
LDA $79,x               ; $0F:FC4A: B5 79
STA $E5                 ; $0F:FC4C: 85 E5
REP #$20                ; $0F:FC4E: C2 20
LDA $E4                 ; $0F:FC50: A5 E4
SEC                     ; $0F:FC52: 38
SBC $42                 ; $0F:FC53: E5 42
STA $E4                 ; $0F:FC55: 85 E4
CLC                     ; $0F:FC57: 18
ADC #$0004              ; $0F:FC58: 69 04 00
STA $E6                 ; $0F:FC5B: 85 E6
CLC                     ; $0F:FC5D: 18
ADC #$0008              ; $0F:FC5E: 69 08 00
STA $E8                 ; $0F:FC61: 85 E8
BPL CODE_0FFC6E         ; $0F:FC63: 10 09
CMP #$FF80              ; $0F:FC65: C9 80 FF
BCS CODE_0FFC6E         ; $0F:FC68: B0 04
SEP #$30                ; $0F:FC6A: E2 30
PLB                     ; $0F:FC6C: AB
RTL                     ; $0F:FC6D: 6B

CODE_0FFC6E:
SEP #$20                ; $0F:FC6E: E2 20
LDA $E4                 ; $0F:FC70: A5 E4
STA $0800,y             ; $0F:FC72: 99 00 08
LDA $0238,x             ; $0F:FC75: BD 38 02
STA $0801,y             ; $0F:FC78: 99 01 08
LDA #$2B                ; $0F:FC7B: A9 2B
STA $0803,y             ; $0F:FC7D: 99 03 08
LDA $09                 ; $0F:FC80: A5 09
AND #$18                ; $0F:FC82: 29 18
LSR A                   ; $0F:FC84: 4A
LSR A                   ; $0F:FC85: 4A
LSR A                   ; $0F:FC86: 4A
PHX                     ; $0F:FC87: DA
TAX                     ; $0F:FC88: AA
CPX #$03                ; $0F:FC89: E0 03
BNE CODE_0FFC8F         ; $0F:FC8B: D0 02
LDX #$01                ; $0F:FC8D: A2 01

CODE_0FFC8F:
LDA DATA_0FFC3D,x       ; $0F:FC8F: BD 3D FC
STA $0802,y             ; $0F:FC92: 99 02 08
PLX                     ; $0F:FC95: FA
LDA $070F               ; $0F:FC96: AD 0F 07
BEQ CODE_0FFCD0         ; $0F:FC99: F0 35
LDA $010F               ; $0F:FC9B: AD 0F 01
ASL A                   ; $0F:FC9E: 0A
TAX                     ; $0F:FC9F: AA
LDA $E6                 ; $0F:FCA0: A5 E6
STA $0804,y             ; $0F:FCA2: 99 04 08
LDA $E8                 ; $0F:FCA5: A5 E8
STA $0808,y             ; $0F:FCA7: 99 08 08
LDA $010D               ; $0F:FCAA: AD 0D 01
STA $0805,y             ; $0F:FCAD: 99 05 08
STA $0809,y             ; $0F:FCB0: 99 09 08
LDA DATA_0FFC31,x       ; $0F:FCB3: BD 31 FC
STA $0806,y             ; $0F:FCB6: 99 06 08
LDA DATA_0FFC31+1,x     ; $0F:FCB9: BD 32 FC
STA $080A,y             ; $0F:FCBC: 99 0A 08
LDA #$22                ; $0F:FCBF: A9 22
STA $0807,y             ; $0F:FCC1: 99 07 08
STA $080B,y             ; $0F:FCC4: 99 0B 08
CPX #$04                ; $0F:FCC7: E0 04
BCS CODE_0FFCD0         ; $0F:FCC9: B0 05
LDA #$23                ; $0F:FCCB: A9 23
STA $080B,y             ; $0F:FCCD: 99 0B 08

CODE_0FFCD0:
LDA #$02                ; $0F:FCD0: A9 02
STA $DD                 ; $0F:FCD2: 85 DD
LDA $E5                 ; $0F:FCD4: A5 E5
BEQ CODE_0FFCDA         ; $0F:FCD6: F0 02
LDA #$01                ; $0F:FCD8: A9 01

CODE_0FFCDA:
ORA $DD                 ; $0F:FCDA: 05 DD
STA $0C00,y             ; $0F:FCDC: 99 00 0C
STZ $DD                 ; $0F:FCDF: 64 DD
LDA $E7                 ; $0F:FCE1: A5 E7
BEQ CODE_0FFCE7         ; $0F:FCE3: F0 02
LDA #$01                ; $0F:FCE5: A9 01

CODE_0FFCE7:
ORA $DD                 ; $0F:FCE7: 05 DD
STA $0C04,y             ; $0F:FCE9: 99 04 0C
CPX #$04                ; $0F:FCEC: E0 04
BCS CODE_0FFCF4         ; $0F:FCEE: B0 04
LDA #$02                ; $0F:FCF0: A9 02
STA $DD                 ; $0F:FCF2: 85 DD

CODE_0FFCF4:
LDA $E9                 ; $0F:FCF4: A5 E9
BEQ CODE_0FFCFA         ; $0F:FCF6: F0 02
LDA #$01                ; $0F:FCF8: A9 01

CODE_0FFCFA:
ORA $DD                 ; $0F:FCFA: 05 DD
STA $0C08,y             ; $0F:FCFC: 99 08 0C
PLB                     ; $0F:FCFF: AB
RTL                     ; $0F:FD00: 6B

