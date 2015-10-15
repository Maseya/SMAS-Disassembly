;Super Mario Bros. - The Lost Levels.

CODE_0F8000:        22 35 8F 0E   JSL CODE_0E8F35           ;
CODE_0F8004:        9C DC 0E      STZ $0EDC                 ;
CODE_0F8007:        8B            PHB                       ;
CODE_0F8008:        A9 7E         LDA #$7E                  ;
CODE_0F800A:        48            PHA                       ;
CODE_0F800B:        AB            PLB                       ;
CODE_0F800C:        A5 DB         LDA $DB                   ;
CODE_0F800E:        8D 35 0F      STA $0F35                 ;
CODE_0F8011:        C9 23         CMP #$23                  ;
CODE_0F8013:        D0 0A         BNE CODE_0F801F           ;
CODE_0F8015:        A6 43         LDX $43                   ;
CODE_0F8017:        E0 0C         CPX #$0C                  ;
CODE_0F8019:        D0 04         BNE CODE_0F801F           ;
CODE_0F801B:        A2 47         LDX #$47                  ;
CODE_0F801D:        86 DB         STX $DB                   ;
CODE_0F801F:        C2 30         REP #$30                  ;
CODE_0F8021:        A2 00 00      LDX #$0000                ;
CODE_0F8024:        A9 00 00      LDA #$0000                ;
CODE_0F8027:        9D 00 D0      STA $D000,x               ;
CODE_0F802A:        9D 00 D1      STA $D100,x               ;
CODE_0F802D:        9D 00 D2      STA $D200,x               ;
CODE_0F8030:        9D 00 D3      STA $D300,x               ;
CODE_0F8033:        9D 00 D4      STA $D400,x               ;
CODE_0F8036:        9D 00 D5      STA $D500,x               ;
CODE_0F8039:        9D 00 D6      STA $D600,x               ;
CODE_0F803C:        9D 00 D7      STA $D700,x               ;
CODE_0F803F:        9D 00 D8      STA $D800,x               ;
CODE_0F8042:        9D 00 D9      STA $D900,x               ;
CODE_0F8045:        9D 00 DA      STA $DA00,x               ;
CODE_0F8048:        9D 00 DB      STA $DB00,x               ;
CODE_0F804B:        9D 00 DC      STA $DC00,x               ;
CODE_0F804E:        9D 00 DD      STA $DD00,x               ;
CODE_0F8051:        9D 00 DE      STA $DE00,x               ;
CODE_0F8054:        9D 00 DF      STA $DF00,x               ;
CODE_0F8057:        9D 00 E0      STA $E000,x               ;
CODE_0F805A:        9D 00 E1      STA $E100,x               ;
CODE_0F805D:        9D 00 E2      STA $E200,x               ;
CODE_0F8060:        E8            INX                       ;
CODE_0F8061:        E8            INX                       ;
CODE_0F8062:        E0 00 01      CPX #$0100                ;
CODE_0F8065:        D0 C0         BNE CODE_0F8027           ;
CODE_0F8067:        AB            PLB                       ;
CODE_0F8068:        8B            PHB                       ;
CODE_0F8069:        4B            PHK                       ;
CODE_0F806A:        AB            PLB                       ;
CODE_0F806B:        9C C0 0E      STZ $0EC0                 ;
CODE_0F806E:        AD 65 0E      LDA $0E65                 ;
CODE_0F8071:        29 FF 00      AND #$00FF                ;
CODE_0F8074:        F0 02         BEQ CODE_0F8078           ;
CODE_0F8076:        85 DB         STA $DB                   ;
CODE_0F8078:        A5 DB         LDA $DB                   ;
CODE_0F807A:        29 FF 00      AND #$00FF                ;
CODE_0F807D:        0A            ASL A                     ;
CODE_0F807E:        AA            TAX                       ;
CODE_0F807F:        BD 02 AE      LDA DATA_0FAE02,x               ;
CODE_0F8082:        85 02         STA $02                   ;
CODE_0F8084:        C2 30         REP #$30                  ;
CODE_0F8086:        A6 02         LDX $02                   ;
CODE_0F8088:        BD A1 B6      LDA DATA_0FB6A1,x               ;
CODE_0F808B:        85 04         STA $04                   ;
CODE_0F808D:        E6 02         INC $02                   ;
CODE_0F808F:        E6 02         INC $02                   ;
CODE_0F8091:        29 F0 03      AND #$03F0                ;
CODE_0F8094:        4A            LSR A                     ;
CODE_0F8095:        4A            LSR A                     ;
CODE_0F8096:        4A            LSR A                     ;
CODE_0F8097:        4A            LSR A                     ;
CODE_0F8098:        85 EF         STA $EF                   ;
CODE_0F809A:        A5 04         LDA $04                   ;
CODE_0F809C:        29 0F 00      AND #$000F                ;
CODE_0F809F:        85 F1         STA $F1                   ;
CODE_0F80A1:        A5 04         LDA $04                   ;
CODE_0F80A3:        29 00 E0      AND #$E000                ;
CODE_0F80A6:        85 ED         STA $ED                   ;
CODE_0F80A8:        A5 04         LDA $04                   ;
CODE_0F80AA:        4A            LSR A                     ;
CODE_0F80AB:        29 00 0E      AND #$0E00                ;
CODE_0F80AE:        05 ED         ORA $ED                   ;
CODE_0F80B0:        EB            XBA                       ;
CODE_0F80B1:        85 ED         STA $ED                   ;
CODE_0F80B3:        29 F0 00      AND #$00F0                ;
CODE_0F80B6:        C9 E0 00      CMP #$00E0                ;
CODE_0F80B9:        D0 21         BNE CODE_0F80DC           ;
CODE_0F80BB:        A5 EF         LDA $EF                   ;
CODE_0F80BD:        C9 3F 00      CMP #$003F                ;
CODE_0F80C0:        D0 15         BNE CODE_0F80D7           ;
CODE_0F80C2:        EE C0 0E      INC $0EC0                 ;
CODE_0F80C5:        EE C0 0E      INC $0EC0                 ;
CODE_0F80C8:        AD C0 0E      LDA $0EC0                 ;
CODE_0F80CB:        EB            XBA                       ;
CODE_0F80CC:        AA            TAX                       ;
CODE_0F80CD:        A9 FF FF      LDA #$FFFF                ;
CODE_0F80D0:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F80D4:        4C CF 91      JMP CODE_0F91CF           ;

CODE_0F80D7:        20 B5 8F      JSR CODE_0F8FB5           ;
CODE_0F80DA:        80 A8         BRA CODE_0F8084           ;

CODE_0F80DC:        AD C0 0E      LDA $0EC0                 ;
CODE_0F80DF:        EB            XBA                       ;
CODE_0F80E0:        18            CLC                       ;
CODE_0F80E1:        65 ED         ADC $ED                   ;
CODE_0F80E3:        85 EB         STA $EB                   ;
CODE_0F80E5:        A5 EF         LDA $EF                   ;
CODE_0F80E7:        C9 10 00      CMP #$0010                ;
CODE_0F80EA:        90 06         BCC CODE_0F80F2           ;
CODE_0F80EC:        20 1D 8F      JSR CODE_0F8F1D           ;
CODE_0F80EF:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F80F2:        0A            ASL A                     ;
CODE_0F80F3:        AA            TAX                       ;
CODE_0F80F4:        A5 DB         LDA $DB                   ;
CODE_0F80F6:        0A            ASL A                     ;
CODE_0F80F7:        A8            TAY                       ;
CODE_0F80F8:        B9 0A 81      LDA PNTR_0F810A,y         ;\Load a ptr which points to a routine using a ptr.
CODE_0F80FB:        85 04         STA $04                   ; |
CODE_0F80FD:        A9 0F 00      LDA #$000F                ; |
CODE_0F8100:        85 06         STA $06                   ; |
CODE_0F8102:        9B            TXY                       ; |
CODE_0F8103:        B7 04         LDA [$04],y               ; |
CODE_0F8105:        85 00         STA $00                   ; |
CODE_0F8107:        6C 00 00      JMP ($0000)               ;/And jump to it.

PNTR_0F810A:        dw $8204                  ; $00 ;these pointers point to the next pointer table
                    dw $8204                  ; $01
                    dw $8204                  ; $02
                    dw $8204                  ; $03
                    dw $8204                  ; $04
                    dw $8204                  ; $05
                    dw $8204                  ; $06
                    dw $81E4                  ; $07
                    dw $81BE                  ; $08
                    dw $81BE                  ; $09
                    dw $8204                  ; $0A
                    dw $8204                  ; $0B
                    dw $8204                  ; $0C
                    dw $81E4                  ; $0D
                    dw $81BE                  ; $0E
                    dw $8254                  ; $0F
                    dw $81BE                  ; $10
                    dw $81BE                  ; $11
                    dw $81BE                  ; $12
                    dw $821C                  ; $13
                    dw $8254                  ; $14
                    dw $81BE                  ; $15
                    dw $81BE                  ; $16
                    dw $81BE                  ; $17
                    dw $8254                  ; $18
                    dw $821C                  ; $19
                    dw $8254                  ; $1A
                    dw $821C                  ; $1B
                    dw $819A                  ; $1B
                    dw $81BE                  ; $1C
                    dw $81BE                  ; $1D
                    dw $81BE                  ; $1E
                    dw $821C                  ; $1F
                    dw $81BE                  ; $20
                    dw $8254                  ; $21
                    dw $821C                  ; $22
                    dw $823C                  ; $23
                    dw $81BE                  ; $24
                    dw $81BE                  ; $25
                    dw $81BE                  ; $26
                    dw $81BE                  ; $27
                    dw $81BE                  ; $28
                    dw $81BE                  ; $29
                    dw $81BE                  ; $2A
                    dw $819A                  ; $2B
                    dw $81BE                  ; $2C
                    dw $8254                  ; $2D
                    dw $81BE                  ; $2E
                    dw $81BE                  ; $2F
                    dw $81BE                  ; $30
                    dw $821C                  ; $31
                    dw $821C                  ; $32
                    dw $81A2                  ; $33
                    dw $81BE                  ; $34
                    dw $81BE                  ; $35
                    dw $81DE                  ; $36
                    dw $81DE                  ; $37
                    dw $81BE                  ; $38
                    dw $81DE                  ; $39
                    dw $81BE                  ; $3A
                    dw $81DE                  ; $3B
                    dw $81BE                  ; $3C
                    dw $81B6                  ; $3D
                    dw $81B6                  ; $3E
                    dw $81B6                  ; $3F
                    dw $81A0                  ; $40
                    dw $81B6                  ; $41
                    dw $81B6                  ; $42
                    dw $81B6                  ; $43
                    dw $81B6                  ; $44
                    dw $81B6                  ; $45
                    dw $81BE                  ; $46

PNTR_0F819A:        dw $82B4                  ;
                    dw $82B9                  ;
                    dw $826A                  ;
                    dw $8357                  ;
                    dw $90A0                  ;
                    dw $86C3                  ;
                    dw $86C1                  ;
                    dw $86B8                  ;
                    dw $86AE                  ;
                    dw $86C3                  ;
                    dw $86C3                  ;
                    dw $86AE                  ;
                    dw $86C1                  ;
                    dw $86C3                  ;
                    dw $8799                  ;
                    dw $879B                  ;
                    dw $87D3                  ;
                    dw $87D5                  ;
                    dw $8A0A                  ;
                    dw $875E                  ;
                    dw $875E                  ;
                    dw $875E                  ;
                    dw $88BA                  ;
                    dw $88B8                  ;
                    dw $88AF                  ;
                    dw $88AD                  ;
                    dw $885F                  ;
                    dw $8869                  ;
                    dw $8875                  ;
                    dw $8881                  ;
                    dw $888D                  ;
                    dw $8899                  ;
                    dw $88A1                  ;
                    dw $8502                  ;
                    dw $8A78                  ;
                    dw $8A95                  ;
                    dw $8AC6                  ;
                    dw $8663                  ;
                    dw $8661                  ;
                    dw $8663                  ;
                    dw $8661                  ;
                    dw $8663                  ;
                    dw $8661                  ;
                    dw $8663                  ;
                    dw $8661                  ;
                    dw $8663                  ;
                    dw $8661                  ;
                    dw $8663                  ;
                    dw $8661                  ;
                    dw $8663                  ;
                    dw $8661                  ;
                    dw $8663                  ;
                    dw $8661                  ;
                    dw $8BE9                  ;
                    dw $8BE9                  ;
                    dw $8C27                  ;
                    dw $8CFE                  ;
                    dw $8D78                  ;
                    dw $8E22                  ;
                    dw $8BBA                  ;
                    dw $8B00                  ;
                    dw $8B6D                  ;
                    dw $8E6B                  ;
                    dw $8E69                  ;
                    dw $8E5D                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $870E                  ;
                    dw $84BA                  ;
                    dw $84B8                  ;
                    dw $84AE                  ;
                    dw $84AC                  ;
                    dw $84A7                  ;
                    dw $84A5                  ;
                    dw $849B                  ;
                    dw $8499                  ;
                    dw $845E                  ;
                    dw $845C                  ;
                    dw $8452                  ;
                    dw $8450                  ;
                    dw $837C                  ;

DATA_0F8256:        db $07,$0A,$0B,$12,$19,$29,$2A,$33
                    db $34,$30,$00,$07,$0A,$1D,$19,$00
                    db $29,$2A,$2D,$30

CODE_0F826A:        A4 F1         LDY $F1                   ;
CODE_0F826C:        A6 EB         LDX $EB                   ;
CODE_0F826E:        E2 20         SEP #$20                  ;
CODE_0F8270:        B9 56 82      LDA DATA_0F8256,y               ;
CODE_0F8273:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8277:        B9 57 82      LDA DATA_0F8256+1,y               ;
CODE_0F827A:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F827E:        B9 58 82      LDA DATA_0F8256+2,y               ;
CODE_0F8281:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8285:        B9 59 82      LDA DATA_0F8256+3,y               ;
CODE_0F8288:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F828C:        B9 5A 82      LDA DATA_0F8256+4,y               ;
CODE_0F828F:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F8293:        C2 20         REP #$20                  ;
CODE_0F8295:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8298:        db $01,$02,$03,$04,$08,$09,$05,$06
                    db $10,$11,$17,$18,$1B,$1C,$1F,$20
                    db $21,$22,$25,$26,$23,$24,$2B,$2C
                    db $2E,$2F,$31,$32

CODE_0F82B4:        A0 0E 00      LDY #$000E                ;
CODE_0F82B7:        80 03         BRA CODE_0F82BC           ;

CODE_0F82B9:        A0 00 00      LDY #$0000                ;
CODE_0F82BC:        A6 EB         LDX $EB                   ;
CODE_0F82BE:        E8            INX                       ;
CODE_0F82BF:        E2 20         SEP #$20                  ;
CODE_0F82C1:        B9 98 82      LDA DATA_0F8298,y               ;
CODE_0F82C4:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F82C8:        B9 99 82      LDA DATA_0F8298+1,y               ;
CODE_0F82CB:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F82CF:        B9 9A 82      LDA DATA_0F8298+2,y               ;
CODE_0F82D2:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F82D6:        B9 9B 82      LDA DATA_0F8298+3,y               ;
CODE_0F82D9:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F82DD:        B9 9E 82      LDA DATA_0F8298+6,y               ;
CODE_0F82E0:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F82E4:        B9 9F 82      LDA DATA_0F8298+7,y               ;
CODE_0F82E7:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F82EB:        A9 30         LDA #$30                  ;
CODE_0F82ED:        85 E4         STA $E4                   ;
CODE_0F82EF:        64 E5         STZ $E5                   ;
CODE_0F82F1:        C2 20         REP #$20                  ;
CODE_0F82F3:        8A            TXA                       ;
CODE_0F82F4:        18            CLC                       ;
CODE_0F82F5:        65 E4         ADC $E4                   ;
CODE_0F82F7:        AA            TAX                       ;
CODE_0F82F8:        E2 20         SEP #$20                  ;
CODE_0F82FA:        C9 D0         CMP #$D0                  ;
CODE_0F82FC:        B0 24         BCS CODE_0F8322           ;
CODE_0F82FE:        B9 9C 82      LDA DATA_0F8298+4,y               ;
CODE_0F8301:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8305:        B9 9D 82      LDA DATA_0F8298+5,y               ;
CODE_0F8308:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F830C:        B9 9E 82      LDA DATA_0F8298+6,y               ;
CODE_0F830F:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8313:        B9 9F 82      LDA DATA_0F8298+7,y               ;
CODE_0F8316:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F831A:        A9 20         LDA #$20                  ;
CODE_0F831C:        85 E4         STA $E4                   ;
CODE_0F831E:        64 E5         STZ $E5                   ;
CODE_0F8320:        80 CF         BRA CODE_0F82F1           ;

CODE_0F8322:        B9 A0 82      LDA DATA_0F8298+8,y               ;
CODE_0F8325:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8329:        B9 A1 82      LDA DATA_0F8298+9,y               ;
CODE_0F832C:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F8330:        B9 A2 82      LDA DATA_0F8298+10,y               ;
CODE_0F8333:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8337:        B9 A3 82      LDA DATA_0F8298+11,y               ;
CODE_0F833A:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F833E:        B9 A4 82      LDA DATA_0F8298+12,y               ;
CODE_0F8341:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8345:        B9 A5 82      LDA DATA_0F8298+13,y               ;
CODE_0F8348:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F834C:        C2 20         REP #$20                  ;
CODE_0F834E:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8351:        db $00,$00,$41,$00,$82,$00

CODE_0F8357:        A5 F1         LDA $F1                   ;
CODE_0F8359:        0A            ASL A                     ;
CODE_0F835A:        A8            TAY                       ;
CODE_0F835B:        B9 51 83      LDA DATA_0F8351,y               ;
CODE_0F835E:        A8            TAY                       ;
CODE_0F835F:        A5 EB         LDA $EB                   ;
CODE_0F8361:        18            CLC                       ;
CODE_0F8362:        69 10 00      ADC #$0010                ;
CODE_0F8365:        AA            TAX                       ;
CODE_0F8366:        E2 20         SEP #$20                  ;
CODE_0F8368:        B9 DE B5      LDA DATA_0FB5DE,y               ;
CODE_0F836B:        C9 FF         CMP #$FF                  ;
CODE_0F836D:        F0 08         BEQ CODE_0F8377           ;
CODE_0F836F:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8373:        C8            INY                       ;
CODE_0F8374:        E8            INX                       ;
CODE_0F8375:        80 F1         BRA CODE_0F8368           ;

CODE_0F8377:        C2 20         REP #$20                  ;
CODE_0F8379:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F837C:        A6 EB         LDX $EB                   ;
CODE_0F837E:        A5 F1         LDA $F1                   ;
CODE_0F8380:        85 E6         STA $E6                   ;
CODE_0F8382:        E2 20         SEP #$20                  ;
CODE_0F8384:        64 E8         STZ $E8                   ;
CODE_0F8386:        A9 09         LDA #$09                  ;
CODE_0F8388:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F838C:        A9 0E         LDA #$0E                  ;
CODE_0F838E:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8392:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8396:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_0F839A:        A9 12         LDA #$12                  ;
CODE_0F839C:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F83A0:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F83A4:        E8            INX                       ;
CODE_0F83A5:        C2 20         REP #$20                  ;
CODE_0F83A7:        8A            TXA                       ;
CODE_0F83A8:        29 0F 00      AND #$000F                ;
CODE_0F83AB:        D0 08         BNE CODE_0F83B5           ;
CODE_0F83AD:        8A            TXA                       ;
CODE_0F83AE:        18            CLC                       ;
CODE_0F83AF:        69 F0 00      ADC #$00F0                ;
CODE_0F83B2:        AA            TAX                       ;
CODE_0F83B3:        E6 E8         INC $E8                   ;
CODE_0F83B5:        E2 20         SEP #$20                  ;
CODE_0F83B7:        C6 E6         DEC $E6                   ;
CODE_0F83B9:        A5 E6         LDA $E6                   ;
CODE_0F83BB:        30 37         BMI CODE_0F83F4           ;
CODE_0F83BD:        A9 09         LDA #$09                  ;
CODE_0F83BF:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F83C3:        A9 0F         LDA #$0F                  ;
CODE_0F83C5:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F83C9:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F83CD:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_0F83D1:        A9 13         LDA #$13                  ;
CODE_0F83D3:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F83D7:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F83DB:        E8            INX                       ;
CODE_0F83DC:        C2 20         REP #$20                  ;
CODE_0F83DE:        8A            TXA                       ;
CODE_0F83DF:        29 0F 00      AND #$000F                ;
CODE_0F83E2:        D0 08         BNE CODE_0F83EC           ;
CODE_0F83E4:        8A            TXA                       ;
CODE_0F83E5:        18            CLC                       ;
CODE_0F83E6:        69 F0 00      ADC #$00F0                ;
CODE_0F83E9:        AA            TAX                       ;
CODE_0F83EA:        E6 E8         INC $E8                   ;
CODE_0F83EC:        E2 20         SEP #$20                  ;
CODE_0F83EE:        C6 E6         DEC $E6                   ;
CODE_0F83F0:        A5 E6         LDA $E6                   ;
CODE_0F83F2:        10 92         BPL CODE_0F8386           ;
CODE_0F83F4:        A6 EB         LDX $EB                   ;
CODE_0F83F6:        A5 F1         LDA $F1                   ;
CODE_0F83F8:        C9 04         CMP #$04                  ;
CODE_0F83FA:        90 02         BCC CODE_0F83FE           ;
CODE_0F83FC:        A9 04         LDA #$04                  ;
CODE_0F83FE:        A8            TAY                       ;
CODE_0F83FF:        B9 25 84      LDA DATA_0F8425,y               ;
CODE_0F8402:        9F FF CF 7E   STA $7ECFFF,x             ;
CODE_0F8406:        C2 20         REP #$20                  ;
CODE_0F8408:        A5 E8         LDA $E8                   ;
CODE_0F840A:        F0 06         BEQ CODE_0F8412           ;
CODE_0F840C:        8A            TXA                       ;
CODE_0F840D:        18            CLC                       ;
CODE_0F840E:        69 F0 00      ADC #$00F0                ;
CODE_0F8411:        AA            TAX                       ;
CODE_0F8412:        8A            TXA                       ;
CODE_0F8413:        18            CLC                       ;
CODE_0F8414:        65 F1         ADC $F1                   ;
CODE_0F8416:        AA            TAX                       ;
CODE_0F8417:        E2 20         SEP #$20                  ;
CODE_0F8419:        B9 2A 84      LDA DATA_0F842A,y               ;
CODE_0F841C:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F8420:        C2 20         REP #$20                  ;
CODE_0F8422:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8425:        db $08,$08,$04,$04,$08 ;

DATA_0F842A:        db $0A,$06,$0A,$06,$0A ;

DATA_0F842F:        db $01,$02,$03,$02,$04,$01,$02,$02 ;
                    db $03,$02,$02,$04,$07,$08,$09,$07 ;
                    db $0E,$08,$0E,$09,$01,$03,$04 ;

DATA_0F8446:        db $04,$06,$02,$04,$02 ;

DATA_0F844B:        db $00,$05,$0C,$0F,$14 ;

CODE_0F8450:        E6 EB         INC $EB                   ;
CODE_0F8452:        A5 EB         LDA $EB                   ;
CODE_0F8454:        18            CLC                       ;
CODE_0F8455:        69 10 00      ADC #$0010                ;
CODE_0F8458:        85 EB         STA $EB                   ;
CODE_0F845A:        80 02         BRA CODE_0F845E           ;

CODE_0F845C:        E6 EB         INC $EB                   ;
CODE_0F845E:        A6 EB         LDX $EB                   ;
CODE_0F8460:        A5 F1         LDA $F1                   ;
CODE_0F8462:        A8            TAY                       ;
CODE_0F8463:        B9 46 84      LDA DATA_0F8446,y               ;
CODE_0F8466:        29 FF 00      AND #$00FF                ;
CODE_0F8469:        85 F1         STA $F1                   ;
CODE_0F846B:        B9 4B 84      LDA DATA_0F844B,y               ;
CODE_0F846E:        29 FF 00      AND #$00FF                ;
CODE_0F8471:        A8            TAY                       ;
CODE_0F8472:        E2 20         SEP #$20                  ;
CODE_0F8474:        B9 2F 84      LDA DATA_0F842F,y               ;
CODE_0F8477:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F847B:        E8            INX                       ;
CODE_0F847C:        C8            INY                       ;
CODE_0F847D:        8A            TXA                       ;
CODE_0F847E:        29 0F         AND #$0F                  ;
CODE_0F8480:        D0 0A         BNE CODE_0F848C           ;
CODE_0F8482:        C2 20         REP #$20                  ;
CODE_0F8484:        8A            TXA                       ;
CODE_0F8485:        18            CLC                       ;
CODE_0F8486:        69 F0 00      ADC #$00F0                ;
CODE_0F8489:        AA            TAX                       ;
CODE_0F848A:        E2 20         SEP #$20                  ;
CODE_0F848C:        C6 F1         DEC $F1                   ;
CODE_0F848E:        10 E4         BPL CODE_0F8474           ;
CODE_0F8490:        C2 20         REP #$20                  ;
CODE_0F8492:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8495:        db $05,$0A

DATA_0F8497:        db $06,$0C

CODE_0F8499:        E6 EB         INC $EB                   ;
CODE_0F849B:        A5 EB         LDA $EB                   ;
CODE_0F849D:        18            CLC                       ;
CODE_0F849E:        69 10 00      ADC #$0010                ;
CODE_0F84A1:        85 EB         STA $EB                   ;
CODE_0F84A3:        80 02         BRA CODE_0F84A7           ;

CODE_0F84A5:        E6 EB         INC $EB                   ;
CODE_0F84A7:        A0 01 00      LDY #$0001                ;
CODE_0F84AA:        80 11         BRA CODE_0F84BD           ;

CODE_0F84AC:        E6 EB         INC $EB                   ;
CODE_0F84AE:        A5 EB         LDA $EB                   ;
CODE_0F84B0:        18            CLC                       ;
CODE_0F84B1:        69 10 00      ADC #$0010                ;
CODE_0F84B4:        85 EB         STA $EB                   ;
CODE_0F84B6:        80 02         BRA CODE_0F84BA           ;

CODE_0F84B8:        E6 EB         INC $EB                   ;
CODE_0F84BA:        A0 00 00      LDY #$0000                ;
CODE_0F84BD:        A6 EB         LDX $EB                   ;
CODE_0F84BF:        E2 20         SEP #$20                  ;
CODE_0F84C1:        B9 95 84      LDA DATA_0F8495,y               ;
CODE_0F84C4:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F84C8:        C2 20         REP #$20                  ;
CODE_0F84CA:        8A            TXA                       ;
CODE_0F84CB:        18            CLC                       ;
CODE_0F84CC:        69 10 00      ADC #$0010                ;
CODE_0F84CF:        AA            TAX                       ;
CODE_0F84D0:        E2 20         SEP #$20                  ;
CODE_0F84D2:        C6 F1         DEC $F1                   ;
CODE_0F84D4:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F84D8:        C9 0E         CMP #$0E                  ;
CODE_0F84DA:        D0 04         BNE CODE_0F84E0           ;
CODE_0F84DC:        A9 0D         LDA #$0D                  ;
CODE_0F84DE:        80 0B         BRA CODE_0F84EB           ;

CODE_0F84E0:        C9 02         CMP #$02                  ;
CODE_0F84E2:        D0 04         BNE CODE_0F84E8           ;
CODE_0F84E4:        A9 0B         LDA #$0B                  ;
CODE_0F84E6:        80 03         BRA CODE_0F84EB           ;

CODE_0F84E8:        B9 97 84      LDA DATA_0F8497,y               ;
CODE_0F84EB:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F84EF:        C2 20         REP #$20                  ;
CODE_0F84F1:        8A            TXA                       ;
CODE_0F84F2:        18            CLC                       ;
CODE_0F84F3:        69 10 00      ADC #$0010                ;
CODE_0F84F6:        AA            TAX                       ;
CODE_0F84F7:        E2 20         SEP #$20                  ;
CODE_0F84F9:        C6 F1         DEC $F1                   ;
CODE_0F84FB:        10 D7         BPL CODE_0F84D4           ;
CODE_0F84FD:        C2 20         REP #$20                  ;
CODE_0F84FF:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F8502:        A5 EB         LDA $EB                   ;
CODE_0F8504:        18            CLC                       ;
CODE_0F8505:        69 10 00      ADC #$0010                ;
CODE_0F8508:        AA            TAX                       ;
CODE_0F8509:        E2 20         SEP #$20                  ;
CODE_0F850B:        A9 4E         LDA #$4E                  ;
CODE_0F850D:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8511:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F8515:        F0 04         BEQ CODE_0F851B           ;
CODE_0F8517:        A9 38         LDA #$38                  ;
CODE_0F8519:        80 02         BRA CODE_0F851D           ;

CODE_0F851B:        A9 34         LDA #$34                  ;
CODE_0F851D:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8521:        BF 10 D0 7E   LDA $7ED010,x             ;
CODE_0F8525:        F0 08         BEQ CODE_0F852F           ;
CODE_0F8527:        C9 12         CMP #$12                  ;
CODE_0F8529:        F0 04         BEQ CODE_0F852F           ;
CODE_0F852B:        A9 44         LDA #$44                  ;
CODE_0F852D:        80 02         BRA CODE_0F8531           ;

CODE_0F852F:        A9 40         LDA #$40                  ;
CODE_0F8531:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8535:        BF 20 D0 7E   LDA $7ED020,x             ;
CODE_0F8539:        F0 08         BEQ CODE_0F8543           ;
CODE_0F853B:        C9 12         CMP #$12                  ;
CODE_0F853D:        F0 04         BEQ CODE_0F8543           ;
CODE_0F853F:        A9 4D         LDA #$4D                  ;
CODE_0F8541:        80 02         BRA CODE_0F8545           ;

CODE_0F8543:        A9 4C         LDA #$4C                  ;
CODE_0F8545:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8549:        E8            INX                       ;
CODE_0F854A:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F854E:        F0 1C         BEQ CODE_0F856C           ;
CODE_0F8550:        C9 12         CMP #$12                  ;
CODE_0F8552:        F0 18         BEQ CODE_0F856C           ;
CODE_0F8554:        C9 18         CMP #$18                  ;
CODE_0F8556:        F0 10         BEQ CODE_0F8568           ;
CODE_0F8558:        C9 07         CMP #$07                  ;
CODE_0F855A:        F0 0C         BEQ CODE_0F8568           ;
CODE_0F855C:        C9 17         CMP #$17                  ;
CODE_0F855E:        F0 04         BEQ CODE_0F8564           ;
CODE_0F8560:        A9 39         LDA #$39                  ;
CODE_0F8562:        80 0A         BRA CODE_0F856E           ;

CODE_0F8564:        A9 3D         LDA #$3D                  ;
CODE_0F8566:        80 06         BRA CODE_0F856E           ;

CODE_0F8568:        A9 36         LDA #$36                  ;
CODE_0F856A:        80 02         BRA CODE_0F856E           ;

CODE_0F856C:        A9 35         LDA #$35                  ;
CODE_0F856E:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8572:        A9 41         LDA #$41                  ;
CODE_0F8574:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8578:        A9 48         LDA #$48                  ;
CODE_0F857A:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F857E:        A9 4E         LDA #$4E                  ;
CODE_0F8580:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8584:        E8            INX                       ;
CODE_0F8585:        C6 F1         DEC $F1                   ;
CODE_0F8587:        A5 F1         LDA $F1                   ;
CODE_0F8589:        D0 03         BNE CODE_0F858E           ;
CODE_0F858B:        4C 0E 86      JMP CODE_0F860E           ;

CODE_0F858E:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F8592:        D0 1A         BNE CODE_0F85AE           ;
CODE_0F8594:        A9 36         LDA #$36                  ;
CODE_0F8596:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F859A:        A9 35         LDA #$35                  ;
CODE_0F859C:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F85A0:        A9 42         LDA #$42                  ;
CODE_0F85A2:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F85A6:        A9 41         LDA #$41                  ;
CODE_0F85A8:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F85AC:        80 36         BRA CODE_0F85E4           ;

CODE_0F85AE:        C9 18         CMP #$18                  ;
CODE_0F85B0:        F0 1A         BEQ CODE_0F85CC           ;
CODE_0F85B2:        A9 3A         LDA #$3A                  ;
CODE_0F85B4:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F85B8:        A9 39         LDA #$39                  ;
CODE_0F85BA:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F85BE:        A9 42         LDA #$42                  ;
CODE_0F85C0:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F85C4:        A9 41         LDA #$41                  ;
CODE_0F85C6:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F85CA:        80 18         BRA CODE_0F85E4           ;

CODE_0F85CC:        A9 36         LDA #$36                  ;
CODE_0F85CE:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F85D2:        A9 35         LDA #$35                  ;
CODE_0F85D4:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F85D8:        A9 42         LDA #$42                  ;
CODE_0F85DA:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F85DE:        A9 41         LDA #$41                  ;
CODE_0F85E0:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F85E4:        A9 47         LDA #$47                  ;
CODE_0F85E6:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F85EA:        A9 48         LDA #$48                  ;
CODE_0F85EC:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F85F0:        A9 4E         LDA #$4E                  ;
CODE_0F85F2:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F85F6:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F85FA:        E8            INX                       ;
CODE_0F85FB:        E8            INX                       ;
CODE_0F85FC:        8A            TXA                       ;
CODE_0F85FD:        29 0F         AND #$0F                  ;
CODE_0F85FF:        D0 84         BNE CODE_0F8585           ;
CODE_0F8601:        C2 20         REP #$20                  ;
CODE_0F8603:        8A            TXA                       ;
CODE_0F8604:        18            CLC                       ;
CODE_0F8605:        69 F0 00      ADC #$00F0                ;
CODE_0F8608:        AA            TAX                       ;
CODE_0F8609:        E2 20         SEP #$20                  ;
CODE_0F860B:        4C 85 85      JMP CODE_0F8585           ;

CODE_0F860E:        A9 42         LDA #$42                  ;
CODE_0F8610:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8614:        A9 47         LDA #$47                  ;
CODE_0F8616:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F861A:        A9 4E         LDA #$4E                  ;
CODE_0F861C:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8620:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F8624:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F8628:        D0 1A         BNE CODE_0F8644           ;
CODE_0F862A:        A9 36         LDA #$36                  ;
CODE_0F862C:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8630:        A9 37         LDA #$37                  ;
CODE_0F8632:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F8636:        A9 43         LDA #$43                  ;
CODE_0F8638:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F863C:        A9 49         LDA #$49                  ;
CODE_0F863E:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8642:        80 18         BRA CODE_0F865C           ;

CODE_0F8644:        A9 3A         LDA #$3A                  ;
CODE_0F8646:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F864A:        A9 3B         LDA #$3B                  ;
CODE_0F864C:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F8650:        A9 45         LDA #$45                  ;
CODE_0F8652:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F8656:        A9 4A         LDA #$4A                  ;
CODE_0F8658:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F865C:        C2 20         REP #$20                  ;
CODE_0F865E:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F8661:        E6 EB         INC $EB                   ;
CODE_0F8663:        A6 EB         LDX $EB                   ;
CODE_0F8665:        86 E2         STX $E2                   ;
CODE_0F8667:        A5 EF         LDA $EF                   ;
CODE_0F8669:        0A            ASL A                     ;
CODE_0F866A:        A8            TAY                       ;
CODE_0F866B:        B9 FF 87      LDA DATA_0F87FF,y               ;
CODE_0F866E:        A8            TAY                       ;
CODE_0F866F:        E2 20         SEP #$20                  ;
CODE_0F8671:        B9 6D B4      LDA DATA_0FB46D,y               ;
CODE_0F8674:        F0 0F         BEQ CODE_0F8685           ;
CODE_0F8676:        C9 FF         CMP #$FF                  ;
CODE_0F8678:        F0 2F         BEQ CODE_0F86A9           ;
CODE_0F867A:        C9 FE         CMP #$FE                  ;
CODE_0F867C:        F0 1B         BEQ CODE_0F8699           ;
CODE_0F867E:        B9 6D B4      LDA DATA_0FB46D,y               ;
CODE_0F8681:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8685:        C8            INY                       ;
CODE_0F8686:        E8            INX                       ;
CODE_0F8687:        C2 20         REP #$20                  ;
CODE_0F8689:        8A            TXA                       ;
CODE_0F868A:        29 0F 00      AND #$000F                ;
CODE_0F868D:        D0 06         BNE CODE_0F8695           ;
CODE_0F868F:        8A            TXA                       ;
CODE_0F8690:        18            CLC                       ;
CODE_0F8691:        69 F0 00      ADC #$00F0                ;
CODE_0F8694:        AA            TAX                       ;
CODE_0F8695:        E2 20         SEP #$20                  ;
CODE_0F8697:        80 D8         BRA CODE_0F8671           ;

CODE_0F8699:        C2 20         REP #$20                  ;
CODE_0F869B:        A5 E2         LDA $E2                   ;
CODE_0F869D:        18            CLC                       ;
CODE_0F869E:        69 10 00      ADC #$0010                ;
CODE_0F86A1:        85 E2         STA $E2                   ;
CODE_0F86A3:        AA            TAX                       ;
CODE_0F86A4:        E2 20         SEP #$20                  ;
CODE_0F86A6:        C8            INY                       ;
CODE_0F86A7:        80 C8         BRA CODE_0F8671           ;

CODE_0F86A9:        C2 20         REP #$20                  ;
CODE_0F86AB:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F86AE:        A5 EB         LDA $EB                   ;
CODE_0F86B0:        18            CLC                       ;
CODE_0F86B1:        69 10 00      ADC #$0010                ;
CODE_0F86B4:        AA            TAX                       ;
CODE_0F86B5:        E8            INX                       ;
CODE_0F86B6:        80 0D         BRA CODE_0F86C5           ;

CODE_0F86B8:        A5 EB         LDA $EB                   ;
CODE_0F86BA:        18            CLC                       ;
CODE_0F86BB:        69 10 00      ADC #$0010                ;
CODE_0F86BE:        AA            TAX                       ;
CODE_0F86BF:        80 04         BRA CODE_0F86C5           ;

CODE_0F86C1:        E6 EB         INC $EB                   ;
CODE_0F86C3:        A6 EB         LDX $EB                   ;
CODE_0F86C5:        86 E2         STX $E2                   ;
CODE_0F86C7:        A5 EF         LDA $EF                   ;
CODE_0F86C9:        0A            ASL A                     ;
CODE_0F86CA:        A8            TAY                       ;
CODE_0F86CB:        B9 1F 88      LDA DATA_0F881F,y               ;
CODE_0F86CE:        A8            TAY                       ;
CODE_0F86CF:        E2 20         SEP #$20                  ;
CODE_0F86D1:        B9 2C B5      LDA DATA_0FB52C,y               ;
CODE_0F86D4:        F0 0F         BEQ CODE_0F86E5           ;
CODE_0F86D6:        C9 FF         CMP #$FF                  ;
CODE_0F86D8:        F0 2F         BEQ CODE_0F8709           ;
CODE_0F86DA:        C9 FE         CMP #$FE                  ;
CODE_0F86DC:        F0 1B         BEQ CODE_0F86F9           ;
CODE_0F86DE:        B9 2C B5      LDA DATA_0FB52C,y               ;
CODE_0F86E1:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F86E5:        C8            INY                       ;
CODE_0F86E6:        E8            INX                       ;
CODE_0F86E7:        C2 20         REP #$20                  ;
CODE_0F86E9:        8A            TXA                       ;
CODE_0F86EA:        29 0F 00      AND #$000F                ;
CODE_0F86ED:        D0 06         BNE CODE_0F86F5           ;
CODE_0F86EF:        8A            TXA                       ;
CODE_0F86F0:        18            CLC                       ;
CODE_0F86F1:        69 F0 00      ADC #$00F0                ;
CODE_0F86F4:        AA            TAX                       ;
CODE_0F86F5:        E2 20         SEP #$20                  ;
CODE_0F86F7:        80 D8         BRA CODE_0F86D1           ;

CODE_0F86F9:        C2 20         REP #$20                  ;
CODE_0F86FB:        A5 E2         LDA $E2                   ;
CODE_0F86FD:        18            CLC                       ;
CODE_0F86FE:        69 10 00      ADC #$0010                ;
CODE_0F8701:        85 E2         STA $E2                   ;
CODE_0F8703:        AA            TAX                       ;
CODE_0F8704:        E2 20         SEP #$20                  ;
CODE_0F8706:        C8            INY                       ;
CODE_0F8707:        80 C8         BRA CODE_0F86D1           ;

CODE_0F8709:        C2 20         REP #$20                  ;
CODE_0F870B:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F870E:        A6 EB         LDX $EB                   ;
CODE_0F8710:        86 E2         STX $E2                   ;
CODE_0F8712:        A5 EF         LDA $EF                   ;
CODE_0F8714:        0A            ASL A                     ;
CODE_0F8715:        A8            TAY                       ;
CODE_0F8716:        B9 33 88      LDA DATA_0F8833,y               ;
CODE_0F8719:        A8            TAY                       ;
CODE_0F871A:        E2 20         SEP #$20                  ;
CODE_0F871C:        B9 92 AE      LDA DATA_0FAE92,y               ;
CODE_0F871F:        F0 0C         BEQ CODE_0F872D           ;
CODE_0F8721:        C9 FF         CMP #$FF                  ;
CODE_0F8723:        F0 34         BEQ CODE_0F8759           ;
CODE_0F8725:        C9 FE         CMP #$FE                  ;
CODE_0F8727:        F0 18         BEQ CODE_0F8741           ;
CODE_0F8729:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F872D:        C8            INY                       ;
CODE_0F872E:        E8            INX                       ;
CODE_0F872F:        C2 20         REP #$20                  ;
CODE_0F8731:        8A            TXA                       ;
CODE_0F8732:        29 0F 00      AND #$000F                ;
CODE_0F8735:        D0 06         BNE CODE_0F873D           ;
CODE_0F8737:        8A            TXA                       ;
CODE_0F8738:        18            CLC                       ;
CODE_0F8739:        69 F0 00      ADC #$00F0                ;
CODE_0F873C:        AA            TAX                       ;
CODE_0F873D:        E2 20         SEP #$20                  ;
CODE_0F873F:        80 DB         BRA CODE_0F871C           ;

CODE_0F8741:        C2 20         REP #$20                  ;
CODE_0F8743:        A5 E2         LDA $E2                   ;
CODE_0F8745:        18            CLC                       ;
CODE_0F8746:        69 10 00      ADC #$0010                ;
CODE_0F8749:        85 E2         STA $E2                   ;
CODE_0F874B:        AA            TAX                       ;
CODE_0F874C:        29 F0 00      AND #$00F0                ;
CODE_0F874F:        C9 F0 00      CMP #$00F0                ;
CODE_0F8752:        F0 05         BEQ CODE_0F8759           ;
CODE_0F8754:        E2 20         SEP #$20                  ;
CODE_0F8756:        C8            INY                       ;
CODE_0F8757:        80 C3         BRA CODE_0F871C           ;

CODE_0F8759:        C2 20         REP #$20                  ;
CODE_0F875B:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F875E:        C6 EF         DEC $EF                   ;
CODE_0F8760:        A5 EF         LDA $EF                   ;
CODE_0F8762:        29 03 00      AND #$0003                ;
CODE_0F8765:        0A            ASL A                     ;
CODE_0F8766:        0A            ASL A                     ;
CODE_0F8767:        0A            ASL A                     ;
CODE_0F8768:        0A            ASL A                     ;
CODE_0F8769:        05 F1         ORA $F1                   ;
CODE_0F876B:        0A            ASL A                     ;
CODE_0F876C:        0A            ASL A                     ;
CODE_0F876D:        A8            TAY                       ;
CODE_0F876E:        A6 EB         LDX $EB                   ;
CODE_0F8770:        E2 20         SEP #$20                  ;
CODE_0F8772:        B9 E2 92      LDA DATA_0F92E2,y               ;
CODE_0F8775:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8779:        B9 E3 92      LDA DATA_0F92E2+1,y               ;
CODE_0F877C:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F8780:        B9 E4 92      LDA DATA_0F92E2+2,y               ;
CODE_0F8783:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8787:        B9 E5 92      LDA DATA_0F92E2+3,y               ;
CODE_0F878A:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F878E:        C2 20         REP #$20                  ;
CODE_0F8790:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8793:        db $04,$05,$0B,$0C,$0B,$0C

CODE_0F8799:        E6 EB         INC $EB                   ;
CODE_0F879B:        A5 EB         LDA $EB                   ;
CODE_0F879D:        18            CLC                       ;
CODE_0F879E:        69 20 00      ADC #$0020                ;
CODE_0F87A1:        AA            TAX                       ;
CODE_0F87A2:        E2 20         SEP #$20                  ;
CODE_0F87A4:        AD 93 87      LDA DATA_0F8793                 ;
CODE_0F87A7:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F87AB:        AD 94 87      LDA DATA_0F8793+1                 ;
CODE_0F87AE:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F87B2:        AD 95 87      LDA DATA_0F8793+2                 ;
CODE_0F87B5:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F87B9:        AD 96 87      LDA DATA_0F8793+3                 ;
CODE_0F87BC:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F87C0:        AD 97 87      LDA DATA_0F8793+4                 ;
CODE_0F87C3:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F87C7:        AD 98 87      LDA DATA_0F8793+5                 ;
CODE_0F87CA:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F87CE:        C2 20         REP #$20                  ;
CODE_0F87D0:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F87D3:        E6 EB         INC $EB                   ;
CODE_0F87D5:        A5 EB         LDA $EB                   ;
CODE_0F87D7:        18            CLC                       ;
CODE_0F87D8:        69 20 00      ADC #$0020                ;
CODE_0F87DB:        AA            TAX                       ;
CODE_0F87DC:        E2 20         SEP #$20                  ;
CODE_0F87DE:        AD 93 87      LDA DATA_0F8793                 ;
CODE_0F87E1:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F87E5:        AD 94 87      LDA DATA_0F8793+1                 ;
CODE_0F87E8:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F87EC:        AD 95 87      LDA DATA_0F8793+2                 ;
CODE_0F87EF:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F87F3:        AD 96 87      LDA DATA_0F8793+3                 ;
CODE_0F87F6:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F87FA:        C2 20         REP #$20                  ;
CODE_0F87FC:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F87FF:        db $00,$00,$00,$00,$1F,$00,$1F,$00 ;
                    db $3D,$00,$3D,$00,$44,$00,$44,$00 ;
                    db $54,$00,$54,$00,$6E,$00,$00,$00 ;
                    db $B3,$00,$B3,$00,$00,$00,$00,$00 ;

DATA_0F881F:        db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$04,$00,$18,$00,$2C,$00 ;
                    db $52,$00,$90,$00 ;

DATA_0F8833:        db $00,$00,$31,$00,$3B,$00,$83,$00 ;
                    db $F5,$00,$4B,$01,$52,$01,$62,$01 ;
                    db $AC,$01,$06,$02,$8D,$02,$D5,$02 ;
                    db $F2,$02,$79,$03,$A0,$03 ;

DATA_0F8851:        db $9A,$00,$A7,$00,$C9,$00,$D0,$00 ;
                    db $DC,$00,$06,$01,$26,$01 ;

CODE_0F885F:        AC 51 88      LDY DATA_0F8851                 ;
CODE_0F8862:        A5 EB         LDA $EB                   ;
CODE_0F8864:        AA            TAX                       ;
CODE_0F8865:        E8            INX                       ;
CODE_0F8866:        E8            INX                       ;
CODE_0F8867:        80 56         BRA CODE_0F88BF           ;

CODE_0F8869:        AC 53 88      LDY DATA_0F8851+2                 ;
CODE_0F886C:        A5 EB         LDA $EB                   ;
CODE_0F886E:        18            CLC                       ;
CODE_0F886F:        69 12 00      ADC #$0012                ;
CODE_0F8872:        AA            TAX                       ;
CODE_0F8873:        80 4A         BRA CODE_0F88BF           ;

CODE_0F8875:        AC 55 88      LDY DATA_0F8851+4                 ;
CODE_0F8878:        A5 EB         LDA $EB                   ;
CODE_0F887A:        18            CLC                       ;
CODE_0F887B:        69 01 00      ADC #$0001                ;
CODE_0F887E:        AA            TAX                       ;
CODE_0F887F:        80 3E         BRA CODE_0F88BF           ;

CODE_0F8881:        AC 57 88      LDY DATA_0F8851+6                 ;
CODE_0F8884:        A5 EB         LDA $EB                   ;
CODE_0F8886:        18            CLC                       ;
CODE_0F8887:        69 11 00      ADC #$0011                ;
CODE_0F888A:        AA            TAX                       ;
CODE_0F888B:        80 32         BRA CODE_0F88BF           ;

CODE_0F888D:        AC 59 88      LDY DATA_0F8851+8                 ;
CODE_0F8890:        A5 EB         LDA $EB                   ;
CODE_0F8892:        18            CLC                       ;
CODE_0F8893:        69 20 00      ADC #$0020                ;
CODE_0F8896:        AA            TAX                       ;
CODE_0F8897:        80 26         BRA CODE_0F88BF           ;

CODE_0F8899:        AC 5B 88      LDY DATA_0F8851+10                 ;
CODE_0F889C:        A6 EB         LDX $EB                   ;
CODE_0F889E:        E8            INX                       ;
CODE_0F889F:        80 1E         BRA CODE_0F88BF           ;

CODE_0F88A1:        AC 5D 88      LDY DATA_0F8851+12                 ;
CODE_0F88A4:        A5 EB         LDA $EB                   ;
CODE_0F88A6:        18            CLC                       ;
CODE_0F88A7:        69 12 00      ADC #$0012                ;
CODE_0F88AA:        AA            TAX                       ;
CODE_0F88AB:        80 12         BRA CODE_0F88BF           ;

CODE_0F88AD:        E6 EB         INC $EB                   ;
CODE_0F88AF:        A5 EB         LDA $EB                   ;
CODE_0F88B1:        18            CLC                       ;
CODE_0F88B2:        69 10 00      ADC #$0010                ;
CODE_0F88B5:        AA            TAX                       ;
CODE_0F88B6:        80 04         BRA CODE_0F88BC           ;

CODE_0F88B8:        E6 EB         INC $EB                   ;
CODE_0F88BA:        A6 EB         LDX $EB                   ;
CODE_0F88BC:        A0 00 00      LDY #$0000                ;
CODE_0F88BF:        86 E2         STX $E2                   ;
CODE_0F88C1:        E2 20         SEP #$20                  ;
CODE_0F88C3:        B9 EF B2      LDA DATA_0FB2EF,y               ;
CODE_0F88C6:        C9 FF         CMP #$FF                  ;
CODE_0F88C8:        F0 71         BEQ CODE_0F893B           ;
CODE_0F88CA:        C9 FE         CMP #$FE                  ;
CODE_0F88CC:        F0 48         BEQ CODE_0F8916           ;
CODE_0F88CE:        20 E9 88      JSR CODE_0F88E9           ;
CODE_0F88D1:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F88D5:        C8            INY                       ;
CODE_0F88D6:        E8            INX                       ;
CODE_0F88D7:        C2 20         REP #$20                  ;
CODE_0F88D9:        8A            TXA                       ;
CODE_0F88DA:        29 0F 00      AND #$000F                ;
CODE_0F88DD:        D0 06         BNE CODE_0F88E5           ;
CODE_0F88DF:        8A            TXA                       ;
CODE_0F88E0:        18            CLC                       ;
CODE_0F88E1:        69 F0 00      ADC #$00F0                ;
CODE_0F88E4:        AA            TAX                       ;
CODE_0F88E5:        E2 20         SEP #$20                  ;
CODE_0F88E7:        80 DA         BRA CODE_0F88C3           ;

CODE_0F88E9:        85 E4         STA $E4                   ;
CODE_0F88EB:        C9 12         CMP #$12                  ;
CODE_0F88ED:        D0 03         BNE CODE_0F88F2           ;
CODE_0F88EF:        4C 40 89      JMP CODE_0F8940           ;

CODE_0F88F2:        C9 03         CMP #$03                  ;
CODE_0F88F4:        D0 03         BNE CODE_0F88F9           ;
CODE_0F88F6:        4C 6D 89      JMP CODE_0F896D           ;

CODE_0F88F9:        C9 04         CMP #$04                  ;
CODE_0F88FB:        D0 03         BNE CODE_0F8900           ;
CODE_0F88FD:        4C 7A 89      JMP CODE_0F897A           ;

CODE_0F8900:        C9 05         CMP #$05                  ;
CODE_0F8902:        D0 03         BNE CODE_0F8907           ;
CODE_0F8904:        4C 8F 89      JMP CODE_0F898F           ;

CODE_0F8907:        C9 18         CMP #$18                  ;
CODE_0F8909:        D0 03         BNE CODE_0F890E           ;
CODE_0F890B:        4C A4 89      JMP CODE_0F89A4           ;

CODE_0F890E:        C9 07         CMP #$07                  ;
CODE_0F8910:        D0 03         BNE CODE_0F8915           ;
CODE_0F8912:        4C C1 89      JMP CODE_0F89C1           ;

CODE_0F8915:        60            RTS                       ;

CODE_0F8916:        C8            INY                       ;
CODE_0F8917:        C2 20         REP #$20                  ;
CODE_0F8919:        A5 E2         LDA $E2                   ;
CODE_0F891B:        18            CLC                       ;
CODE_0F891C:        69 10 00      ADC #$0010                ;
CODE_0F891F:        AA            TAX                       ;
CODE_0F8920:        29 F0 00      AND #$00F0                ;
CODE_0F8923:        F0 16         BEQ CODE_0F893B           ;
CODE_0F8925:        CA            DEX                       ;
CODE_0F8926:        8A            TXA                       ;
CODE_0F8927:        29 0F 00      AND #$000F                ;
CODE_0F892A:        C9 0F 00      CMP #$000F                ;
CODE_0F892D:        D0 06         BNE CODE_0F8935           ;
CODE_0F892F:        8A            TXA                       ;
CODE_0F8930:        38            SEC                       ;
CODE_0F8931:        E9 F0 00      SBC #$00F0                ;
CODE_0F8934:        AA            TAX                       ;
CODE_0F8935:        86 E2         STX $E2                   ;
CODE_0F8937:        E2 20         SEP #$20                  ;
CODE_0F8939:        80 88         BRA CODE_0F88C3           ;

CODE_0F893B:        C2 20         REP #$20                  ;
CODE_0F893D:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F8940:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F8944:        F0 24         BEQ CODE_0F896A           ;
CODE_0F8946:        C9 18         CMP #$18                  ;
CODE_0F8948:        D0 04         BNE CODE_0F894E           ;
CODE_0F894A:        A9 02         LDA #$02                  ;
CODE_0F894C:        80 1E         BRA CODE_0F896C           ;

CODE_0F894E:        C9 06         CMP #$06                  ;
CODE_0F8950:        D0 04         BNE CODE_0F8956           ;
CODE_0F8952:        A9 11         LDA #$11                  ;
CODE_0F8954:        80 16         BRA CODE_0F896C           ;

CODE_0F8956:        C9 16         CMP #$16                  ;
CODE_0F8958:        D0 04         BNE CODE_0F895E           ;
CODE_0F895A:        A9 01         LDA #$01                  ;
CODE_0F895C:        80 0E         BRA CODE_0F896C           ;

CODE_0F895E:        C9 05         CMP #$05                  ;
CODE_0F8960:        D0 04         BNE CODE_0F8966           ;
CODE_0F8962:        A9 62         LDA #$62                  ;
CODE_0F8964:        80 06         BRA CODE_0F896C           ;

CODE_0F8966:        A9 10         LDA #$10                  ;
CODE_0F8968:        80 02         BRA CODE_0F896C           ;

CODE_0F896A:        A5 E4         LDA $E4                   ;
CODE_0F896C:        60            RTS                       ;

CODE_0F896D:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F8971:        F0 04         BEQ CODE_0F8977           ;
CODE_0F8973:        A9 36         LDA #$36                  ;
CODE_0F8975:        80 02         BRA CODE_0F8979           ;

CODE_0F8977:        A5 E4         LDA $E4                   ;
CODE_0F8979:        60            RTS                       ;

CODE_0F897A:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F897E:        F0 0C         BEQ CODE_0F898C           ;
CODE_0F8980:        C9 12         CMP #$12                  ;
CODE_0F8982:        D0 04         BNE CODE_0F8988           ;
CODE_0F8984:        A9 14         LDA #$14                  ;
CODE_0F8986:        80 06         BRA CODE_0F898E           ;

CODE_0F8988:        A9 37         LDA #$37                  ;
CODE_0F898A:        80 02         BRA CODE_0F898E           ;

CODE_0F898C:        A5 E4         LDA $E4                   ;
CODE_0F898E:        60            RTS                       ;

CODE_0F898F:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F8993:        F0 0C         BEQ CODE_0F89A1           ;
CODE_0F8995:        C9 13         CMP #$13                  ;
CODE_0F8997:        D0 04         BNE CODE_0F899D           ;
CODE_0F8999:        A9 15         LDA #$15                  ;
CODE_0F899B:        80 06         BRA CODE_0F89A3           ;

CODE_0F899D:        A9 38         LDA #$38                  ;
CODE_0F899F:        80 02         BRA CODE_0F89A3           ;

CODE_0F89A1:        A5 E4         LDA $E4                   ;
CODE_0F89A3:        60            RTS                       ;

CODE_0F89A4:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F89A8:        F0 14         BEQ CODE_0F89BE           ;
CODE_0F89AA:        C9 16         CMP #$16                  ;
CODE_0F89AC:        D0 04         BNE CODE_0F89B2           ;
CODE_0F89AE:        A9 1E         LDA #$1E                  ;
CODE_0F89B0:        80 0E         BRA CODE_0F89C0           ;

CODE_0F89B2:        C9 13         CMP #$13                  ;
CODE_0F89B4:        D0 04         BNE CODE_0F89BA           ;
CODE_0F89B6:        A9 1E         LDA #$1E                  ;
CODE_0F89B8:        80 06         BRA CODE_0F89C0           ;

CODE_0F89BA:        A9 1D         LDA #$1D                  ;
CODE_0F89BC:        80 02         BRA CODE_0F89C0           ;

CODE_0F89BE:        A5 E4         LDA $E4                   ;
CODE_0F89C0:        60            RTS                       ;

CODE_0F89C1:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F89C5:        F0 1C         BEQ CODE_0F89E3           ;
CODE_0F89C7:        C9 16         CMP #$16                  ;
CODE_0F89C9:        D0 04         BNE CODE_0F89CF           ;
CODE_0F89CB:        A9 0E         LDA #$0E                  ;
CODE_0F89CD:        80 16         BRA CODE_0F89E5           ;

CODE_0F89CF:        C9 04         CMP #$04                  ;
CODE_0F89D1:        D0 04         BNE CODE_0F89D7           ;
CODE_0F89D3:        A9 70         LDA #$70                  ;
CODE_0F89D5:        80 0E         BRA CODE_0F89E5           ;

CODE_0F89D7:        C9 0B         CMP #$0B                  ;
CODE_0F89D9:        D0 04         BNE CODE_0F89DF           ;
CODE_0F89DB:        A9 90         LDA #$90                  ;
CODE_0F89DD:        80 06         BRA CODE_0F89E5           ;

CODE_0F89DF:        A9 49         LDA #$49                  ;
CODE_0F89E1:        80 02         BRA CODE_0F89E5           ;

CODE_0F89E3:        A5 E4         LDA $E4                   ;
CODE_0F89E5:        60            RTS                       ;

DATA_0F89E6:        db $00,$00,$90,$91,$92,$93,$00,$00
                    db $94,$95,$96,$97,$00,$00,$98,$99
                    db $9A,$9B,$00,$9C,$9D,$9E,$9F,$A0
                    db $00,$A1,$A2,$A3,$A4,$A5,$00,$A6
                    db $A7,$A8,$A9,$AA

CODE_0F8A0A:        E2 20         SEP #$20                  ;
CODE_0F8A0C:        A6 EB         LDX $EB                   ;
CODE_0F8A0E:        A0 00 00      LDY #$0000                ;
CODE_0F8A11:        DA            PHX                       ;
CODE_0F8A12:        B9 E6 89      LDA DATA_0F89E6,y               ;
CODE_0F8A15:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8A19:        20 66 8A      JSR CODE_0F8A66           ;
CODE_0F8A1C:        B9 E7 89      LDA DATA_0F89E6+1,y               ;
CODE_0F8A1F:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8A23:        20 66 8A      JSR CODE_0F8A66           ;
CODE_0F8A26:        B9 E8 89      LDA DATA_0F89E6+2,y               ;
CODE_0F8A29:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8A2D:        20 66 8A      JSR CODE_0F8A66           ;
CODE_0F8A30:        B9 E9 89      LDA DATA_0F89E6+3,y               ;
CODE_0F8A33:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8A37:        20 66 8A      JSR CODE_0F8A66           ;
CODE_0F8A3A:        B9 EA 89      LDA DATA_0F89E6+4,y               ;
CODE_0F8A3D:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8A41:        20 66 8A      JSR CODE_0F8A66           ;
CODE_0F8A44:        B9 EB 89      LDA DATA_0F89E6+5,y               ;
CODE_0F8A47:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8A4B:        FA            PLX                       ;
CODE_0F8A4C:        C2 20         REP #$20                  ;
CODE_0F8A4E:        8A            TXA                       ;
CODE_0F8A4F:        18            CLC                       ;
CODE_0F8A50:        69 10 00      ADC #$0010                ;
CODE_0F8A53:        AA            TAX                       ;
CODE_0F8A54:        E2 20         SEP #$20                  ;
CODE_0F8A56:        C8            INY                       ;
CODE_0F8A57:        C8            INY                       ;
CODE_0F8A58:        C8            INY                       ;
CODE_0F8A59:        C8            INY                       ;
CODE_0F8A5A:        C8            INY                       ;
CODE_0F8A5B:        C8            INY                       ;
CODE_0F8A5C:        C0 24 00      CPY #$0024                ;
CODE_0F8A5F:        D0 B0         BNE CODE_0F8A11           ;
CODE_0F8A61:        C2 20         REP #$20                  ;
CODE_0F8A63:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F8A66:        C2 20         REP #$20                  ;
CODE_0F8A68:        E8            INX                       ;
CODE_0F8A69:        8A            TXA                       ;
CODE_0F8A6A:        29 0F 00      AND #$000F                ;
CODE_0F8A6D:        D0 06         BNE CODE_0F8A75           ;
CODE_0F8A6F:        8A            TXA                       ;
CODE_0F8A70:        18            CLC                       ;
CODE_0F8A71:        69 F0 00      ADC #$00F0                ;
CODE_0F8A74:        AA            TAX                       ;
CODE_0F8A75:        E2 20         SEP #$20                  ;
CODE_0F8A77:        60            RTS                       ;

CODE_0F8A78:        A6 EB         LDX $EB                   ;
CODE_0F8A7A:        E2 20         SEP #$20                  ;
CODE_0F8A7C:        A9 09         LDA #$09                  ;
CODE_0F8A7E:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8A82:        A9 0B         LDA #$0B                  ;
CODE_0F8A84:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8A88:        E8            INX                       ;
CODE_0F8A89:        E8            INX                       ;
CODE_0F8A8A:        C6 F1         DEC $F1                   ;
CODE_0F8A8C:        A5 F1         LDA $F1                   ;
CODE_0F8A8E:        10 EC         BPL CODE_0F8A7C           ;
CODE_0F8A90:        C2 20         REP #$20                  ;
CODE_0F8A92:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F8A95:        A6 EB         LDX $EB                   ;
CODE_0F8A97:        E2 20         SEP #$20                  ;
CODE_0F8A99:        BF 20 D0 7E   LDA $7ED020,x             ;
CODE_0F8A9D:        C9 09         CMP #$09                  ;
CODE_0F8A9F:        D0 04         BNE CODE_0F8AA5           ;
CODE_0F8AA1:        A9 0A         LDA #$0A                  ;
CODE_0F8AA3:        80 02         BRA CODE_0F8AA7           ;

CODE_0F8AA5:        A9 04         LDA #$04                  ;
CODE_0F8AA7:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8AAB:        A9 01         LDA #$01                  ;
CODE_0F8AAD:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8AB1:        C2 20         REP #$20                  ;
CODE_0F8AB3:        8A            TXA                       ;
CODE_0F8AB4:        18            CLC                       ;
CODE_0F8AB5:        69 20 00      ADC #$0020                ;
CODE_0F8AB8:        AA            TAX                       ;
CODE_0F8AB9:        E2 20         SEP #$20                  ;
CODE_0F8ABB:        C6 F1         DEC $F1                   ;
CODE_0F8ABD:        A5 F1         LDA $F1                   ;
CODE_0F8ABF:        10 D8         BPL CODE_0F8A99           ;
CODE_0F8AC1:        C2 20         REP #$20                  ;
CODE_0F8AC3:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F8AC6:        A6 EB         LDX $EB                   ;
CODE_0F8AC8:        E2 20         SEP #$20                  ;
CODE_0F8ACA:        BF 21 D0 7E   LDA $7ED021,x             ;
CODE_0F8ACE:        C9 0B         CMP #$0B                  ;
CODE_0F8AD0:        D0 04         BNE CODE_0F8AD6           ;
CODE_0F8AD2:        A9 0A         LDA #$0A                  ;
CODE_0F8AD4:        80 02         BRA CODE_0F8AD8           ;

CODE_0F8AD6:        A9 04         LDA #$04                  ;
CODE_0F8AD8:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8ADC:        A9 01         LDA #$01                  ;
CODE_0F8ADE:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F8AE2:        C2 20         REP #$20                  ;
CODE_0F8AE4:        8A            TXA                       ;
CODE_0F8AE5:        18            CLC                       ;
CODE_0F8AE6:        69 20 00      ADC #$0020                ;
CODE_0F8AE9:        AA            TAX                       ;
CODE_0F8AEA:        E2 20         SEP #$20                  ;
CODE_0F8AEC:        C6 F1         DEC $F1                   ;
CODE_0F8AEE:        A5 F1         LDA $F1                   ;
CODE_0F8AF0:        10 D8         BPL CODE_0F8ACA           ;
CODE_0F8AF2:        C2 20         REP #$20                  ;
CODE_0F8AF4:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8AF7:        db $7A,$7B,$61,$62,$8C,$8D,$90,$91
                    db $92

CODE_0F8B00:        A6 EB         LDX $EB                   ;
CODE_0F8B02:        A9 06 00      LDA #$0006                ;
CODE_0F8B05:        85 F1         STA $F1                   ;
CODE_0F8B07:        E2 20         SEP #$20                  ;
CODE_0F8B09:        AD F7 8A      LDA DATA_0F8AF7                 ;
CODE_0F8B0C:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8B10:        AD F8 8A      LDA DATA_0F8AF7+1                 ;
CODE_0F8B13:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8B17:        AD F9 8A      LDA DATA_0F8AF7+2                 ;
CODE_0F8B1A:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8B1E:        AD FA 8A      LDA DATA_0F8AF7+3                 ;
CODE_0F8B21:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F8B25:        C2 20         REP #$20                  ;
CODE_0F8B27:        8A            TXA                       ;
CODE_0F8B28:        18            CLC                       ;
CODE_0F8B29:        69 10 00      ADC #$0010                ;
CODE_0F8B2C:        AA            TAX                       ;
CODE_0F8B2D:        E2 20         SEP #$20                  ;
CODE_0F8B2F:        C6 F1         DEC $F1                   ;
CODE_0F8B31:        A5 F1         LDA $F1                   ;
CODE_0F8B33:        D0 E2         BNE CODE_0F8B17           ;
CODE_0F8B35:        AD FB 8A      LDA DATA_0F8AF7+4                 ;
CODE_0F8B38:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8B3C:        AD FC 8A      LDA DATA_0F8AF7+5                 ;
CODE_0F8B3F:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F8B43:        AD FD 8A      LDA DATA_0F8AF7+6                 ;
CODE_0F8B46:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F8B4A:        AD FE 8A      LDA DATA_0F8AF7+7                 ;
CODE_0F8B4D:        9F 41 D0 7E   STA $7ED041,x             ;
CODE_0F8B51:        AD FF 8A      LDA DATA_0F8AF7+8                 ;
CODE_0F8B54:        9F 42 D0 7E   STA $7ED042,x             ;
CODE_0F8B58:        C2 20         REP #$20                  ;
CODE_0F8B5A:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8B5D:        db $70,$71,$72,$73,$74,$75,$76,$77
                    db $78,$79,$7A,$7B,$00,$7C,$7D,$00

CODE_0F8B6D:        A6 EB         LDX $EB                   ;
CODE_0F8B6F:        E8            INX                       ;
CODE_0F8B70:        E2 20         SEP #$20                  ;
CODE_0F8B72:        64 E5         STZ $E5                   ;
CODE_0F8B74:        A0 00 00      LDY #$0000                ;
CODE_0F8B77:        B9 5D 8B      LDA DATA_0F8B5D,y               ;
CODE_0F8B7A:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8B7E:        B9 5E 8B      LDA DATA_0F8B5D+1,y               ;
CODE_0F8B81:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F8B85:        B9 5F 8B      LDA DATA_0F8B5D+2,y               ;
CODE_0F8B88:        9F 02 D0 7E   STA $7ED002,x             ;
CODE_0F8B8C:        B9 60 8B      LDA DATA_0F8B5D+3,y               ;
CODE_0F8B8F:        9F 03 D0 7E   STA $7ED003,x             ;
CODE_0F8B93:        C8            INY                       ;
CODE_0F8B94:        C8            INY                       ;
CODE_0F8B95:        C8            INY                       ;
CODE_0F8B96:        C8            INY                       ;
CODE_0F8B97:        E8            INX                       ;
CODE_0F8B98:        E8            INX                       ;
CODE_0F8B99:        E8            INX                       ;
CODE_0F8B9A:        E8            INX                       ;
CODE_0F8B9B:        C2 20         REP #$20                  ;
CODE_0F8B9D:        8A            TXA                       ;
CODE_0F8B9E:        18            CLC                       ;
CODE_0F8B9F:        69 0C 00      ADC #$000C                ;
CODE_0F8BA2:        AA            TAX                       ;
CODE_0F8BA3:        E2 20         SEP #$20                  ;
CODE_0F8BA5:        E6 E5         INC $E5                   ;
CODE_0F8BA7:        A5 E5         LDA $E5                   ;
CODE_0F8BA9:        C9 04         CMP #$04                  ;
CODE_0F8BAB:        D0 CA         BNE CODE_0F8B77           ;
CODE_0F8BAD:        C2 20         REP #$20                  ;
CODE_0F8BAF:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8BB2:        db $2F,$30,$31,$32,$35,$36,$3A,$3B

CODE_0F8BBA:        E2 20         SEP #$20                  ;
CODE_0F8BBC:        A0 00 00      LDY #$0000                ;
CODE_0F8BBF:        A6 EB         LDX $EB                   ;
CODE_0F8BC1:        B9 B2 8B      LDA DATA_0F8BB2,y               ;
CODE_0F8BC4:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8BC8:        B9 B3 8B      LDA DATA_0F8BB2+1,y               ;
CODE_0F8BCB:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8BCF:        C2 20         REP #$20                  ;
CODE_0F8BD1:        8A            TXA                       ;
CODE_0F8BD2:        18            CLC                       ;
CODE_0F8BD3:        69 10 00      ADC #$0010                ;
CODE_0F8BD6:        AA            TAX                       ;
CODE_0F8BD7:        E2 20         SEP #$20                  ;
CODE_0F8BD9:        C8            INY                       ;
CODE_0F8BDA:        C8            INY                       ;
CODE_0F8BDB:        C0 08 00      CPY #$0008                ;
CODE_0F8BDE:        D0 E1         BNE CODE_0F8BC1           ;
CODE_0F8BE0:        C2 20         REP #$20                  ;
CODE_0F8BE2:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8BE5:        db $01,$1F

DATA_0F8BE7:        db $02,$20

CODE_0F8BE9:        E2 20         SEP #$20                  ;
CODE_0F8BEB:        A6 EB         LDX $EB                   ;
CODE_0F8BED:        A4 EF         LDY $EF                   ;
CODE_0F8BEF:        B9 E5 8B      LDA DATA_0F8BE5,y               ;
CODE_0F8BF2:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8BF6:        B9 E7 8B      LDA DATA_0F8BE7,y               ;
CODE_0F8BF9:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8BFD:        C2 20         REP #$20                  ;
CODE_0F8BFF:        8A            TXA                       ;
CODE_0F8C00:        18            CLC                       ;
CODE_0F8C01:        69 10 00      ADC #$0010                ;
CODE_0F8C04:        AA            TAX                       ;
CODE_0F8C05:        E2 20         SEP #$20                  ;
CODE_0F8C07:        C6 F1         DEC $F1                   ;
CODE_0F8C09:        A5 F1         LDA $F1                   ;
CODE_0F8C0B:        10 E2         BPL CODE_0F8BEF           ;
CODE_0F8C0D:        C2 20         REP #$20                  ;
CODE_0F8C0F:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8C12:        db $08,$09,$05,$06,$07,$05,$03,$04
                    db $05,$0F,$10,$11,$16,$17,$12,$1D
                    db $09,$1E,$06,$07,$05

CODE_0F8C27:        E2 20         SEP #$20                  ;
CODE_0F8C29:        A6 EB         LDX $EB                   ;
CODE_0F8C2B:        8A            TXA                       ;
CODE_0F8C2C:        29 F0         AND #$F0                  ;
CODE_0F8C2E:        F0 1F         BEQ CODE_0F8C4F           ;
CODE_0F8C30:        BF 20 D0 7E   LDA $7ED020,x             ;
CODE_0F8C34:        C9 0C         CMP #$0C                  ;
CODE_0F8C36:        F0 43         BEQ CODE_0F8C7B           ;
CODE_0F8C38:        AD 12 8C      LDA DATA_0F8C12                 ;
CODE_0F8C3B:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8C3F:        AD 13 8C      LDA DATA_0F8C12+1                 ;
CODE_0F8C42:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8C46:        AD 14 8C      LDA DATA_0F8C12+2                 ;
CODE_0F8C49:        9F 22 D0 7E   STA $7ED022,x             ;
CODE_0F8C4D:        80 15         BRA CODE_0F8C64           ;

CODE_0F8C4F:        AD 18 8C      LDA DATA_0F8C12+6                 ;
CODE_0F8C52:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8C56:        AD 19 8C      LDA DATA_0F8C12+7                 ;
CODE_0F8C59:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8C5D:        AD 1A 8C      LDA DATA_0F8C12+8                 ;
CODE_0F8C60:        9F 22 D0 7E   STA $7ED022,x             ;
CODE_0F8C64:        AD 15 8C      LDA DATA_0F8C12+3                 ;
CODE_0F8C67:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8C6B:        AD 16 8C      LDA DATA_0F8C12+4                 ;
CODE_0F8C6E:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F8C72:        AD 17 8C      LDA DATA_0F8C12+5                 ;
CODE_0F8C75:        9F 32 D0 7E   STA $7ED032,x             ;
CODE_0F8C79:        80 60         BRA CODE_0F8CDB           ;

CODE_0F8C7B:        AD 1B 8C      LDA DATA_0F8C12+9                 ;
CODE_0F8C7E:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8C82:        AD 1C 8C      LDA DATA_0F8C12+10                 ;
CODE_0F8C85:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8C89:        AD 1D 8C      LDA DATA_0F8C12+11                 ;
CODE_0F8C8C:        9F 22 D0 7E   STA $7ED022,x             ;
CODE_0F8C90:        AD 1E 8C      LDA DATA_0F8C12+12                 ;
CODE_0F8C93:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8C97:        AD 1F 8C      LDA DATA_0F8C12+13                 ;
CODE_0F8C9A:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F8C9E:        AD 20 8C      LDA DATA_0F8C12+14                 ;
CODE_0F8CA1:        9F 32 D0 7E   STA $7ED032,x             ;
CODE_0F8CA5:        AD 21 8C      LDA DATA_0F8C12+15                 ;
CODE_0F8CA8:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F8CAC:        AD 22 8C      LDA DATA_0F8C12+16                 ;
CODE_0F8CAF:        9F 41 D0 7E   STA $7ED041,x             ;
CODE_0F8CB3:        AD 23 8C      LDA DATA_0F8C12+17                 ;
CODE_0F8CB6:        9F 42 D0 7E   STA $7ED042,x             ;
CODE_0F8CBA:        AD 24 8C      LDA DATA_0F8C12+18                 ;
CODE_0F8CBD:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_0F8CC1:        AD 25 8C      LDA DATA_0F8C12+19                 ;
CODE_0F8CC4:        9F 51 D0 7E   STA $7ED051,x             ;
CODE_0F8CC8:        AD 26 8C      LDA DATA_0F8C12+20                 ;
CODE_0F8CCB:        9F 52 D0 7E   STA $7ED052,x             ;
CODE_0F8CCF:        C2 20         REP #$20                  ;
CODE_0F8CD1:        8A            TXA                       ;
CODE_0F8CD2:        18            CLC                       ;
CODE_0F8CD3:        69 20 00      ADC #$0020                ;
CODE_0F8CD6:        AA            TAX                       ;
CODE_0F8CD7:        E2 20         SEP #$20                  ;
CODE_0F8CD9:        C6 F1         DEC $F1                   ;
CODE_0F8CDB:        C2 20         REP #$20                  ;
CODE_0F8CDD:        8A            TXA                       ;
CODE_0F8CDE:        18            CLC                       ;
CODE_0F8CDF:        69 20 00      ADC #$0020                ;
CODE_0F8CE2:        AA            TAX                       ;
CODE_0F8CE3:        E2 20         SEP #$20                  ;
CODE_0F8CE5:        C6 F1         DEC $F1                   ;
CODE_0F8CE7:        A5 F1         LDA $F1                   ;
CODE_0F8CE9:        30 03         BMI CODE_0F8CEE           ;
CODE_0F8CEB:        4C 2B 8C      JMP CODE_0F8C2B           ;

CODE_0F8CEE:        C2 20         REP #$20                  ;
CODE_0F8CF0:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8CF3:        db $0C,$18,$19,$0A,$0B,$0D,$0E,$13
                    db $14,$1A,$1B

CODE_0F8CFE:        E2 20         SEP #$20                  ;
CODE_0F8D00:        A6 EB         LDX $EB                   ;
CODE_0F8D02:        BF 20 D0 7E   LDA $7ED020,x             ;
CODE_0F8D06:        C9 1F         CMP #$1F                  ;
CODE_0F8D08:        D0 3D         BNE CODE_0F8D47           ;
CODE_0F8D0A:        AD F6 8C      LDA DATA_0F8CF3+3                 ;
CODE_0F8D0D:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8D11:        AD F7 8C      LDA DATA_0F8CF3+4                 ;
CODE_0F8D14:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F8D18:        AD F8 8C      LDA DATA_0F8CF3+5                 ;
CODE_0F8D1B:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8D1F:        AD F9 8C      LDA DATA_0F8CF3+6                 ;
CODE_0F8D22:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8D26:        AD FA 8C      LDA DATA_0F8CF3+7                 ;
CODE_0F8D29:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8D2D:        AD FB 8C      LDA DATA_0F8CF3+8                 ;
CODE_0F8D30:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F8D34:        AD FC 8C      LDA DATA_0F8CF3+9                 ;
CODE_0F8D37:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F8D3B:        AD FD 8C      LDA DATA_0F8CF3+10                 ;
CODE_0F8D3E:        9F 41 D0 7E   STA $7ED041,x             ;
CODE_0F8D42:        E8            INX                       ;
CODE_0F8D43:        C6 F1         DEC $F1                   ;
CODE_0F8D45:        80 15         BRA CODE_0F8D5C           ;

CODE_0F8D47:        AD F3 8C      LDA DATA_0F8CF3                 ;
CODE_0F8D4A:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8D4E:        AD F4 8C      LDA DATA_0F8CF3+1                 ;
CODE_0F8D51:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8D55:        AD F5 8C      LDA DATA_0F8CF3+2                 ;
CODE_0F8D58:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F8D5C:        E8            INX                       ;
CODE_0F8D5D:        C6 F1         DEC $F1                   ;
CODE_0F8D5F:        A5 F1         LDA $F1                   ;
CODE_0F8D61:        10 9F         BPL CODE_0F8D02           ;
CODE_0F8D63:        C2 20         REP #$20                  ;
CODE_0F8D65:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8D68:        db $33,$34,$0D,$37,$13,$3C,$1A,$1B
                    db $33,$34,$38,$39,$3D,$3E,$40,$1B

CODE_0F8D78:        A6 EB         LDX $EB                   ;
CODE_0F8D7A:        E2 20         SEP #$20                  ;
CODE_0F8D7C:        BF 20 D0 7E   LDA $7ED020,x             ;
CODE_0F8D80:        C9 0C         CMP #$0C                  ;
CODE_0F8D82:        F0 3A         BEQ CODE_0F8DBE           ;
CODE_0F8D84:        AD 70 8D      LDA DATA_0F8D68+8                 ;
CODE_0F8D87:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8D8B:        AD 71 8D      LDA DATA_0F8D68+9                 ;
CODE_0F8D8E:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F8D92:        AD 72 8D      LDA DATA_0F8D68+10                 ;
CODE_0F8D95:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8D99:        AD 73 8D      LDA DATA_0F8D68+11                 ;
CODE_0F8D9C:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8DA0:        AD 74 8D      LDA DATA_0F8D68+12                 ;
CODE_0F8DA3:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8DA7:        AD 75 8D      LDA DATA_0F8D68+13                 ;
CODE_0F8DAA:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F8DAE:        AD 76 8D      LDA DATA_0F8D68+14                 ;
CODE_0F8DB1:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F8DB5:        AD 77 8D      LDA DATA_0F8D68+15                 ;
CODE_0F8DB8:        9F 41 D0 7E   STA $7ED041,x             ;
CODE_0F8DBC:        80 38         BRA CODE_0F8DF6           ;

CODE_0F8DBE:        AD 68 8D      LDA DATA_0F8D68                 ;
CODE_0F8DC1:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8DC5:        AD 69 8D      LDA DATA_0F8D68+1                 ;
CODE_0F8DC8:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F8DCC:        AD 6A 8D      LDA DATA_0F8D68+2                 ;
CODE_0F8DCF:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8DD3:        AD 6B 8D      LDA DATA_0F8D68+3                 ;
CODE_0F8DD6:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8DDA:        AD 6C 8D      LDA DATA_0F8D68+4                 ;
CODE_0F8DDD:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8DE1:        AD 6D 8D      LDA DATA_0F8D68+5                 ;
CODE_0F8DE4:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F8DE8:        AD 6E 8D      LDA DATA_0F8D68+6                 ;
CODE_0F8DEB:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F8DEF:        AD 6F 8D      LDA DATA_0F8D68+7                 ;
CODE_0F8DF2:        9F 41 D0 7E   STA $7ED041,x             ;
CODE_0F8DF6:        C2 20         REP #$20                  ;
CODE_0F8DF8:        C6 F1         DEC $F1                   ;
CODE_0F8DFA:        C6 F1         DEC $F1                   ;
CODE_0F8DFC:        C6 F1         DEC $F1                   ;
CODE_0F8DFE:        A5 EB         LDA $EB                   ;
CODE_0F8E00:        18            CLC                       ;
CODE_0F8E01:        69 30 00      ADC #$0030                ;
CODE_0F8E04:        85 EB         STA $EB                   ;
CODE_0F8E06:        A9 01 00      LDA #$0001                ;
CODE_0F8E09:        85 EF         STA $EF                   ;
CODE_0F8E0B:        4C E9 8B      JMP CODE_0F8BE9           ;

DATA_0F8E0E:        db $41,$42,$43,$44,$45,$46,$47,$48
                    db $49,$4A,$4B,$4C,$4D,$4E,$4F,$50
                    db $51,$52,$53,$54

CODE_0F8E22:        E2 20         SEP #$20                  ;
CODE_0F8E24:        A6 EB         LDX $EB                   ;
CODE_0F8E26:        A0 00 00      LDY #$0000                ;
CODE_0F8E29:        B9 0E 8E      LDA DATA_0F8E0E,y               ;
CODE_0F8E2C:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8E30:        B9 0F 8E      LDA DATA_0F8E0E+1,y               ;
CODE_0F8E33:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8E37:        B9 10 8E      LDA DATA_0F8E0E+2,y               ;
CODE_0F8E3A:        9F 22 D0 7E   STA $7ED022,x             ;
CODE_0F8E3E:        B9 11 8E      LDA DATA_0F8E0E+3,y               ;
CODE_0F8E41:        9F 23 D0 7E   STA $7ED023,x             ;
CODE_0F8E45:        C2 20         REP #$20                  ;
CODE_0F8E47:        8A            TXA                       ;
CODE_0F8E48:        18            CLC                       ;
CODE_0F8E49:        69 10 00      ADC #$0010                ;
CODE_0F8E4C:        AA            TAX                       ;
CODE_0F8E4D:        E2 20         SEP #$20                  ;
CODE_0F8E4F:        C8            INY                       ;
CODE_0F8E50:        C8            INY                       ;
CODE_0F8E51:        C8            INY                       ;
CODE_0F8E52:        C8            INY                       ;
CODE_0F8E53:        C0 14 00      CPY #$0014                ;
CODE_0F8E56:        D0 D1         BNE CODE_0F8E29           ;
CODE_0F8E58:        C2 20         REP #$20                  ;
CODE_0F8E5A:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F8E5D:        A6 EB         LDX $EB                   ;
CODE_0F8E5F:        A9 1A 1B      LDA #$1B1A                ;
CODE_0F8E62:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8E66:        4C 84 80      JMP CODE_0F8084           ;

CODE_0F8E69:        E6 EB         INC $EB                   ;
CODE_0F8E6B:        A5 EB         LDA $EB                   ;
CODE_0F8E6D:        18            CLC                       ;
CODE_0F8E6E:        69 10 00      ADC #$0010                ;
CODE_0F8E71:        AA            TAX                       ;
CODE_0F8E72:        E2 20         SEP #$20                  ;
CODE_0F8E74:        A9 67         LDA #$67                  ;
CODE_0F8E76:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8E7A:        A9 69         LDA #$69                  ;
CODE_0F8E7C:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F8E80:        A9 68         LDA #$68                  ;
CODE_0F8E82:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F8E86:        A9 6A         LDA #$6A                  ;
CODE_0F8E88:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F8E8C:        C2 20         REP #$20                  ;
CODE_0F8E8E:        4C 84 80      JMP CODE_0F8084           ;

DATA_0F8E91:        dw $8E99,$8EE1,$8EED,$8F1D

DATA_0F8E99:        db $08,$09,$0D,$0E,$08,$23,$0D,$25
                    db $24,$23,$26,$25,$24,$09,$26,$0E
                    db $00,$08,$00,$0D,$23,$24,$25,$26
                    db $0F,$10,$32,$33,$11,$12,$32,$33
                    db $13,$00,$3C,$3B,$30,$31,$32,$33
                    db $30,$10,$32,$33,$00,$36,$38,$37
                    db $0F,$31,$32,$33,$35,$10,$39,$33
                    db $0F,$10,$32,$33,$35,$12,$32,$33
                    db $23,$24,$25,$26,$11,$12,$32,$33
                    db $21,$22,$25,$26,$23,$24,$27,$28
                    db $00,$00,$26,$00,$06,$05,$07,$02
                    db $0E,$05,$11,$12,$0E,$05,$07,$08
                    db $06,$05,$07,$08,$03,$05,$0C,$0D
                    db $0F,$10,$1D,$02,$03,$05,$1D,$15
                    db $03,$18,$1B,$1B,$03,$05,$16,$15
                    db $19,$18,$1B,$1B,$03,$05,$16,$17
                    db $19,$1A,$1B,$1B

CODE_0F8F1D:        A5 5C         LDA $5C                   ;
CODE_0F8F1F:        29 FF 00      AND #$00FF                ;
CODE_0F8F22:        0A            ASL A                     ;
CODE_0F8F23:        AA            TAX                       ;
CODE_0F8F24:        A9 00 0F      LDA #$0F00                ;
CODE_0F8F27:        85 D9         STA $D9                   ;
CODE_0F8F29:        BD 91 8E      LDA DATA_0F8E91,x               ;
CODE_0F8F2C:        85 D8         STA $D8                   ;
CODE_0F8F2E:        A5 5C         LDA $5C                   ;
CODE_0F8F30:        29 FF 00      AND #$00FF                ;
CODE_0F8F33:        C9 02 00      CMP #$0002                ;
CODE_0F8F36:        B0 09         BCS CODE_0F8F41           ;
CODE_0F8F38:        A5 EB         LDA $EB                   ;
CODE_0F8F3A:        18            CLC                       ;
CODE_0F8F3B:        69 10 00      ADC #$0010                ;
CODE_0F8F3E:        AA            TAX                       ;
CODE_0F8F3F:        80 02         BRA CODE_0F8F43           ;

CODE_0F8F41:        A6 EB         LDX $EB                   ;
CODE_0F8F43:        A5 EF         LDA $EF                   ;
CODE_0F8F45:        38            SEC                       ;
CODE_0F8F46:        E9 10 00      SBC #$0010                ;
CODE_0F8F49:        0A            ASL A                     ;
CODE_0F8F4A:        0A            ASL A                     ;
CODE_0F8F4B:        A8            TAY                       ;
CODE_0F8F4C:        E2 20         SEP #$20                  ;
CODE_0F8F4E:        B7 D8         LDA [$D8],y               ;
CODE_0F8F50:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F8F54:        C8            INY                       ;
CODE_0F8F55:        B7 D8         LDA [$D8],y               ;
CODE_0F8F57:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0F8F5B:        C8            INY                       ;
CODE_0F8F5C:        B7 D8         LDA [$D8],y               ;
CODE_0F8F5E:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F8F62:        C8            INY                       ;
CODE_0F8F63:        B7 D8         LDA [$D8],y               ;
CODE_0F8F65:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0F8F69:        C2 20         REP #$20                  ;
CODE_0F8F6B:        E8            INX                       ;
CODE_0F8F6C:        E8            INX                       ;
CODE_0F8F6D:        C6 F1         DEC $F1                   ;
CODE_0F8F6F:        A5 F1         LDA $F1                   ;
CODE_0F8F71:        10 D0         BPL CODE_0F8F43           ;
CODE_0F8F73:        60            RTS                       ;

CODE_0F8F74:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F8F78:        9F 00 D1 7E   STA $7ED100,x             ;
CODE_0F8F7C:        9F 00 D2 7E   STA $7ED200,x             ;
CODE_0F8F80:        9F 00 D3 7E   STA $7ED300,x             ;
CODE_0F8F84:        9F 00 D4 7E   STA $7ED400,x             ;
CODE_0F8F88:        9F 00 D5 7E   STA $7ED500,x             ;
CODE_0F8F8C:        9F 00 D6 7E   STA $7ED600,x             ;
CODE_0F8F90:        9F 00 D7 7E   STA $7ED700,x             ;
CODE_0F8F94:        9F 00 D8 7E   STA $7ED800,x             ;
CODE_0F8F98:        9F 00 D9 7E   STA $7ED900,x             ;
CODE_0F8F9C:        9F 00 DA 7E   STA $7EDA00,x             ;
CODE_0F8FA0:        9F 00 DB 7E   STA $7EDB00,x             ;
CODE_0F8FA4:        9F 00 DC 7E   STA $7EDC00,x             ;
CODE_0F8FA8:        9F 00 DD 7E   STA $7EDD00,x             ;
CODE_0F8FAC:        9F 00 DE 7E   STA $7EDE00,x             ;
CODE_0F8FB0:        9F 00 DF 7E   STA $7EDF00,x             ;
CODE_0F8FB4:        60            RTS                       ;

CODE_0F8FB5:        A5 EF         LDA $EF                   ;
CODE_0F8FB7:        0A            ASL A                     ;
CODE_0F8FB8:        AA            TAX                       ;
CODE_0F8FB9:        BD C1 8F      LDA PNTR_0F8FC1,x               ;
CODE_0F8FBC:        85 00         STA $00                   ;
CODE_0F8FBE:        6C 00 00      JMP ($0000)               ;

PNTR_0F8FC1:        dw CODE_0F9152
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

DATA_0F8FDB:        db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F
                    db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F
                    db $13,$14,$15,$16,$13,$14,$15,$16
                    db $13,$14,$15,$16,$13,$14,$15,$16
                    db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A
                    db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A

CODE_0F900B:        A2 D0 00      LDX #$00D0                ;
CODE_0F900E:        A0 00 00      LDY #$0000                ;
CODE_0F9011:        E2 20         SEP #$20                  ;
CODE_0F9013:        B9 DB 8F      LDA DATA_0F8FDB,y               ;
CODE_0F9016:        20 74 8F      JSR CODE_0F8F74           ;
CODE_0F9019:        E8            INX                       ;
CODE_0F901A:        C8            INY                       ;
CODE_0F901B:        C0 30 00      CPY #$0030                ;
CODE_0F901E:        D0 F3         BNE CODE_0F9013           ;
CODE_0F9020:        C2 20         REP #$20                  ;
CODE_0F9022:        60            RTS                       ;

DATA_0F9023:        db $01,$02,$03,$07,$01,$02,$03,$07
                    db $01,$02,$03,$07,$01,$02,$03,$07

CODE_0F9033:        64 E4         STZ $E4                   ;
CODE_0F9035:        A5 E4         LDA $E4                   ;
CODE_0F9037:        29 FF 00      AND #$00FF                ;
CODE_0F903A:        EB            XBA                       ;
CODE_0F903B:        18            CLC                       ;
CODE_0F903C:        69 A0 00      ADC #$00A0                ;
CODE_0F903F:        AA            TAX                       ;
CODE_0F9040:        A0 00 00      LDY #$0000                ;
CODE_0F9043:        E2 20         SEP #$20                  ;
CODE_0F9045:        B9 23 90      LDA DATA_0F9023,y               ;
CODE_0F9048:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F904C:        8A            TXA                       ;
CODE_0F904D:        29 01         AND #$01                  ;
CODE_0F904F:        D0 1A         BNE CODE_0F906B           ;
CODE_0F9051:        A9 0C         LDA #$0C                  ;
CODE_0F9053:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F9057:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F905B:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_0F905F:        A9 10         LDA #$10                  ;
CODE_0F9061:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F9065:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F9069:        80 18         BRA CODE_0F9083           ;

CODE_0F906B:        A9 0D         LDA #$0D                  ;
CODE_0F906D:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F9071:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F9075:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_0F9079:        A9 11         LDA #$11                  ;
CODE_0F907B:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F907F:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F9083:        E8            INX                       ;
CODE_0F9084:        C8            INY                       ;
CODE_0F9085:        98            TYA                       ;
CODE_0F9086:        29 0F         AND #$0F                  ;
CODE_0F9088:        D0 BB         BNE CODE_0F9045           ;
CODE_0F908A:        C2 20         REP #$20                  ;
CODE_0F908C:        E6 E4         INC $E4                   ;
CODE_0F908E:        A5 E4         LDA $E4                   ;
CODE_0F9090:        C9 08 00      CMP #$0008                ;
CODE_0F9093:        D0 A0         BNE CODE_0F9035           ;
CODE_0F9095:        60            RTS                       ;

CODE_0F9096:        E2 20         SEP #$20                  ;
CODE_0F9098:        A5 F1         LDA $F1                   ;
CODE_0F909A:        8D DC 0E      STA $0EDC                 ;
CODE_0F909D:        C2 20         REP #$20                  ;
CODE_0F909F:        60            RTS                       ;

CODE_0F90A0:        A2 80 00      LDX #$0080                ;
CODE_0F90A3:        A9 03 04      LDA #$0403                ;
CODE_0F90A6:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F90AA:        A9 09 09      LDA #$0909                ;
CODE_0F90AD:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F90B1:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0F90B5:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0F90B9:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_0F90BD:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_0F90C1:        9F 60 D0 7E   STA $7ED060,x             ;
CODE_0F90C5:        E8            INX                       ;
CODE_0F90C6:        E8            INX                       ;
CODE_0F90C7:        8A            TXA                       ;
CODE_0F90C8:        29 0F 00      AND #$000F                ;
CODE_0F90CB:        D0 D6         BNE CODE_0F90A3           ;
CODE_0F90CD:        8A            TXA                       ;
CODE_0F90CE:        18            CLC                       ;
CODE_0F90CF:        69 F0 00      ADC #$00F0                ;
CODE_0F90D2:        AA            TAX                       ;
CODE_0F90D3:        E0 00 10      CPX #$1000                ;
CODE_0F90D6:        90 CB         BCC CODE_0F90A3           ;
CODE_0F90D8:        60            RTS                       ;

CODE_0F90D9:        A2 00 00      LDX #$0000                ;
CODE_0F90DC:        A9 02 02      LDA #$0202                ;
CODE_0F90DF:        20 74 8F      JSR CODE_0F8F74           ;
CODE_0F90E2:        E8            INX                       ;
CODE_0F90E3:        E8            INX                       ;
CODE_0F90E4:        E0 20 00      CPX #$0020                ;
CODE_0F90E7:        D0 F6         BNE CODE_0F90DF           ;
CODE_0F90E9:        A9 01 01      LDA #$0101                ;
CODE_0F90EC:        20 74 8F      JSR CODE_0F8F74           ;
CODE_0F90EF:        E8            INX                       ;
CODE_0F90F0:        E8            INX                       ;
CODE_0F90F1:        E0 30 00      CPX #$0030                ;
CODE_0F90F4:        D0 F6         BNE CODE_0F90EC           ;
CODE_0F90F6:        60            RTS                       ;

DATA_0F90F7:        db $03,$05,$1D,$02

CODE_0F90FB:        A2 00 00      LDX #$0000                ;
CODE_0F90FE:        E2 20         SEP #$20                  ;
CODE_0F9100:        AD F7 90      LDA DATA_0F90F7                 ;
CODE_0F9103:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0F9107:        AD F8 90      LDA DATA_0F90F7+1                 ;
CODE_0F910A:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0F910E:        AD F9 90      LDA DATA_0F90F7+2                 ;
CODE_0F9111:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0F9115:        AD FA 90      LDA DATA_0F90F7+3                 ;
CODE_0F9118:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0F911C:        E8            INX                       ;
CODE_0F911D:        E8            INX                       ;
CODE_0F911E:        8A            TXA                       ;
CODE_0F911F:        29 0F         AND #$0F                  ;
CODE_0F9121:        D0 DD         BNE CODE_0F9100           ;
CODE_0F9123:        C2 20         REP #$20                  ;
CODE_0F9125:        8A            TXA                       ;
CODE_0F9126:        18            CLC                       ;
CODE_0F9127:        69 10 00      ADC #$0010                ;
CODE_0F912A:        AA            TAX                       ;
CODE_0F912B:        E2 20         SEP #$20                  ;
CODE_0F912D:        E0 00 08      CPX #$0800                ;
CODE_0F9130:        D0 CE         BNE CODE_0F9100           ;
CODE_0F9132:        C2 20         REP #$20                  ;
CODE_0F9134:        60            RTS                       ;

CODE_0F9135:        E2 20         SEP #$20                  ;
CODE_0F9137:        A5 5C         LDA $5C                   ;
CODE_0F9139:        C9 02         CMP #$02                  ;
CODE_0F913B:        F0 04         BEQ CODE_0F9141           ;
CODE_0F913D:        A9 5F         LDA #$5F                  ;
CODE_0F913F:        80 02         BRA CODE_0F9143           ;

CODE_0F9141:        A9 00         LDA #$00                  ;
CODE_0F9143:        A2 00 00      LDX #$0000                ;
CODE_0F9146:        20 74 8F      JSR CODE_0F8F74           ;
CODE_0F9149:        E8            INX                       ;
CODE_0F914A:        E0 20 00      CPX #$0020                ;
CODE_0F914D:        D0 F7         BNE CODE_0F9146           ;
CODE_0F914F:        C2 20         REP #$20                  ;
CODE_0F9151:        60            RTS                       ;

CODE_0F9152:        EE C0 0E      INC $0EC0                 ;
CODE_0F9155:        60            RTS                       ;

CODE_0F9156:        E2 30         SEP #$30                  ;
CODE_0F9158:        AD 5F 07      LDA $075F                 ;\If current world is not world 2
CODE_0F915B:        C9 01         CMP #$01                  ; |
CODE_0F915D:        D0 0A         BNE CODE_0F9169           ;/branch
CODE_0F915F:        A5 5C         LDA $5C                   ;\
CODE_0F9161:        C9 02         CMP #$02                  ; |If current world is world 2, and map type is underground
CODE_0F9163:        F0 04         BEQ CODE_0F9169           ;/branch
CODE_0F9165:        A9 01         LDA #$01                  ;
CODE_0F9167:        80 08         BRA CODE_0F9171           ;

CODE_0F9169:        A5 F1         LDA $F1                   ;
CODE_0F916B:        C9 02         CMP #$02                  ;
CODE_0F916D:        D0 02         BNE CODE_0F9171           ;
CODE_0F916F:        A9 FF         LDA #$FF                  ;
CODE_0F9171:        C9 01         CMP #$01                  ;
CODE_0F9173:        D0 03         BNE CODE_0F9178           ;
CODE_0F9175:        8D D1 0E      STA $0ED1                 ;
CODE_0F9178:        22 5E 82 04   JSL CODE_04825E           ;
CODE_0F917C:        C2 30         REP #$30                  ;
CODE_0F917E:        60            RTS                       ;

CODE_0F917F:        E2 30         SEP #$30                  ;
CODE_0F9181:        A9 02         LDA #$02                  ;
CODE_0F9183:        22 5E 82 04   JSL CODE_04825E           ;
CODE_0F9187:        C2 30         REP #$30                  ;
CODE_0F9189:        60            RTS                       ;

DATA_0F918A:        db $0F,$20,$1B,$37,$58,$C9

DATA_0F9190:        db $1F,$29,$1C,$38,$57,$CA

CODE_0F9196:        A2 D0 00      LDX #$00D0                ;
CODE_0F9199:        A4 F1         LDY $F1                   ;
CODE_0F919B:        B9 8A 91      LDA DATA_0F918A,y               ;
CODE_0F919E:        20 74 8F      JSR CODE_0F8F74           ;
CODE_0F91A1:        E8            INX                       ;
CODE_0F91A2:        E0 E0 00      CPX #$00E0                ;
CODE_0F91A5:        D0 F7         BNE CODE_0F919E           ;
CODE_0F91A7:        B9 90 91      LDA DATA_0F9190,y               ;
CODE_0F91AA:        20 74 8F      JSR CODE_0F8F74           ;
CODE_0F91AD:        E8            INX                       ;
CODE_0F91AE:        E0 F0 00      CPX #$00F0                ;
CODE_0F91B1:        D0 F7         BNE CODE_0F91AA           ;
CODE_0F91B3:        A9 50 00      LDA #$0050                ;
CODE_0F91B6:        20 74 8F      JSR CODE_0F8F74           ;
CODE_0F91B9:        60            RTS                       ;

CODE_0F91BA:        A5 F1         LDA $F1                   ;
CODE_0F91BC:        85 99         STA $99                   ;
CODE_0F91BE:        22 27 F0 0F   JSL CODE_0FF027           ;
CODE_0F91C2:        60            RTS                       ;

CODE_0F91C3:        A5 F1         LDA $F1                   ;
CODE_0F91C5:        09 10 00      ORA #$0010                ;
CODE_0F91C8:        85 99         STA $99                   ;
CODE_0F91CA:        22 27 F0 0F   JSL CODE_0FF027           ;
CODE_0F91CE:        60            RTS                       ;

CODE_0F91CF:        A5 DB         LDA $DB                   ;
CODE_0F91D1:        0A            ASL A                     ;
CODE_0F91D2:        AA            TAX                       ;
CODE_0F91D3:        BD 3C 92      LDA DATA_0F923C,x               ;
CODE_0F91D6:        0A            ASL A                     ;
CODE_0F91D7:        AA            TAX                       ;
CODE_0F91D8:        BD CC 92      LDA DATA_0F92CC,x               ;
CODE_0F91DB:        85 00         STA $00                   ;
CODE_0F91DD:        A9 0F 00      LDA #$000F                ;
CODE_0F91E0:        85 02         STA $02                   ;
CODE_0F91E2:        A2 00 00      LDX #$0000                ;
CODE_0F91E5:        A0 00 00      LDY #$0000                ;
CODE_0F91E8:        86 E4         STX $E4                   ;
CODE_0F91EA:        BB            TYX                       ;
CODE_0F91EB:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0F91EF:        C9 FF FF      CMP #$FFFF                ;
CODE_0F91F2:        F0 3F         BEQ CODE_0F9233           ;
CODE_0F91F4:        5A            PHY                       ;
CODE_0F91F5:        A6 E4         LDX $E4                   ;
CODE_0F91F7:        29 FF 00      AND #$00FF                ;
CODE_0F91FA:        0A            ASL A                     ;
CODE_0F91FB:        0A            ASL A                     ;
CODE_0F91FC:        0A            ASL A                     ;
CODE_0F91FD:        A8            TAY                       ;
CODE_0F91FE:        B7 00         LDA [$00],y               ;
CODE_0F9200:        9F 00 20 7E   STA $7E2000,x             ;
CODE_0F9204:        C8            INY                       ;
CODE_0F9205:        C8            INY                       ;
CODE_0F9206:        B7 00         LDA [$00],y               ;
CODE_0F9208:        9F 02 20 7E   STA $7E2002,x             ;
CODE_0F920C:        C8            INY                       ;
CODE_0F920D:        C8            INY                       ;
CODE_0F920E:        B7 00         LDA [$00],y               ;
CODE_0F9210:        9F 40 20 7E   STA $7E2040,x             ;
CODE_0F9214:        C8            INY                       ;
CODE_0F9215:        C8            INY                       ;
CODE_0F9216:        B7 00         LDA [$00],y               ;
CODE_0F9218:        9F 42 20 7E   STA $7E2042,x             ;
CODE_0F921C:        7A            PLY                       ;
CODE_0F921D:        C8            INY                       ;
CODE_0F921E:        98            TYA                       ;
CODE_0F921F:        29 0F 00      AND #$000F                ;
CODE_0F9222:        D0 06         BNE CODE_0F922A           ;
CODE_0F9224:        8A            TXA                       ;
CODE_0F9225:        18            CLC                       ;
CODE_0F9226:        69 40 00      ADC #$0040                ;
CODE_0F9229:        AA            TAX                       ;
CODE_0F922A:        E8            INX                       ;
CODE_0F922B:        E8            INX                       ;
CODE_0F922C:        E8            INX                       ;
CODE_0F922D:        E8            INX                       ;
CODE_0F922E:        C0 00 12      CPY #$1200                ;
CODE_0F9231:        D0 B5         BNE CODE_0F91E8           ;
CODE_0F9233:        E2 30         SEP #$30                  ;
CODE_0F9235:        AB            PLB                       ;
CODE_0F9236:        AD 35 0F      LDA $0F35                 ;
CODE_0F9239:        85 DB         STA $DB                   ;
CODE_0F923B:        6B            RTL                       ;

DATA_0F923C:        db $03,$00,$03,$00,$03,$00,$03,$00 ;
                    db $03,$00,$03,$00,$03,$00,$05,$00 ;
                    db $01,$00,$01,$00,$03,$00,$03,$00 ;
                    db $03,$00,$05,$00,$01,$00,$08,$00 ;
                    db $04,$00,$04,$00,$04,$00,$01,$00 ;
                    db $08,$00,$01,$00,$01,$00,$01,$00 ;
                    db $08,$00,$01,$00,$08,$00,$01,$00 ;
                    db $0A,$00,$04,$00,$04,$00,$04,$00 ;
                    db $01,$00,$01,$00,$08,$00,$01,$00 ;
                    db $07,$00,$01,$00,$01,$00,$01,$00 ;
                    db $01,$00,$01,$00,$01,$00,$01,$00 ;
                    db $0A,$00,$01,$00,$08,$00,$04,$00 ;
                    db $04,$00,$04,$00,$01,$00,$01,$00 ;
                    db $06,$00,$01,$00,$01,$00,$02,$00 ;
                    db $02,$00,$01,$00,$02,$00,$01,$00 ;
                    db $02,$00,$01,$00,$00,$00,$00,$00 ;
                    db $00,$00,$09,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$01,$00 ;

DATA_0F92CC:        db $2A,$9B,$2A,$9D,$12,$AD,$12,$A7 ;
                    db $62,$A4,$2A,$98,$62,$96,$EA,$95 ;
                    db $4A,$95,$C2,$A5,$A2,$93 ;

DATA_0F92E2:        db $00,$00,$00,$11,$00,$00,$00,$1F ;
                    db $00,$00,$00,$0C,$00,$12,$00,$00 ;
                    db $08,$00,$00,$00,$00,$00,$04,$00 ;
                    db $10,$00,$00,$00,$0D,$00,$00,$00 ;
                    db $00,$00,$0A,$00,$1E,$00,$00,$00 ;
                    db $00,$00,$1F,$00,$17,$00,$00,$00 ;
                    db $00,$00,$00,$19,$12,$0C,$00,$00 ;
                    db $1B,$00,$00,$00,$00,$12,$00,$00 ;
                    db $00,$00,$00,$09,$00,$2A,$00,$00 ;
                    db $00,$00,$16,$00,$00,$00,$1B,$00 ;
                    db $00,$00,$00,$16,$08,$00,$00,$00 ;
                    db $00,$17,$00,$00,$00,$19,$00,$00 ;
                    db $00,$00,$0F,$00,$00,$14,$00,$00 ;
                    db $00,$1B,$00,$00,$11,$00,$00,$00 ;
                    db $00,$06,$00,$00,$0D,$00,$00,$00 ;
                    db $00,$07,$00,$00,$00,$00,$00,$12 ;
                    db $00,$08,$00,$00,$00,$00,$12,$00 ;
                    db $00,$0C,$00,$00,$16,$00,$00,$00 ;
                    db $00,$12,$00,$00,$00,$00,$00,$04 ;
                    db $00,$13,$00,$00,$19,$00,$00,$00 ;
                    db $00,$17,$00,$00,$00,$00,$1B,$00 ;
                    db $00,$00,$00,$16,$1C,$00,$00,$00 ;
                    db $00,$00,$1E,$00,$00,$15,$00,$00 ;
                    db $00,$00,$02,$00,$01,$00,$00,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$E0,$1D,$24,$00,$F0,$1D ;
                    db $E1,$1D,$24,$00,$F0,$5D,$24,$00 ;
                    db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D ;
                    db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D ;
                    db $24,$00,$E3,$1D,$24,$00,$F3,$1D ;
                    db $E4,$1D,$24,$00,$F4,$1D,$24,$00 ;
                    db $CA,$1D,$CB,$1D,$F1,$1D,$F1,$5D ;
                    db $C0,$1D,$C1,$1D,$24,$00,$E2,$1D ;
                    db $D0,$1D,$D1,$1D,$F2,$1D,$24,$00 ;
                    db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D ;
                    db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D ;
                    db $EB,$1D,$EC,$1D,$FB,$1D,$FC,$1D ;
                    db $ED,$1D,$24,$00,$FD,$1D,$FE,$1D ;
                    db $24,$00,$24,$00,$FF,$1D,$F8,$1D ;
                    db $24,$00,$EA,$1D,$F9,$1D,$FA,$1D ;
                    db $C8,$1D,$C1,$1D,$FD,$1D,$E2,$1D ;
                    db $D0,$1D,$D1,$1D,$F2,$1D,$F8,$1D ;
                    db $E5,$1D,$F5,$1D,$D9,$1D,$DA,$1D ;
                    db $CE,$1D,$CF,$1D,$EF,$1D,$EF,$1D ;
                    db $DC,$1D,$DD,$1D,$EF,$1D,$EF,$1D ;
                    db $DE,$1D,$DF,$1D,$EF,$1D,$EF,$1D ;
                    db $CC,$1D,$CD,$1D,$EF,$1D,$EF,$1D ;
                    db $DC,$1D,$E3,$1D,$EF,$1D,$F3,$1D ;
                    db $E4,$1D,$DF,$1D,$F4,$1D,$EF,$1D ;
                    db $E8,$1D,$E9,$1D,$DB,$1D,$EE,$1D ;
                    db $EF,$1D,$EF,$1D,$EF,$1D,$EF,$1D ;
                    db $C9,$1D,$C1,$1D,$EF,$1D,$E2,$1D ;
                    db $D0,$1D,$D8,$1D,$F2,$1D,$EF,$1D ;
                    db $E6,$1D,$E7,$1D,$D9,$1D,$DA,$1D ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$E0,$15,$24,$00,$F0,$15 ;
                    db $E1,$15,$24,$00,$F0,$55,$24,$00 ;
                    db $C2,$15,$C3,$15,$D2,$15,$D3,$15 ;
                    db $C4,$15,$C5,$15,$D4,$15,$D5,$15 ;
                    db $24,$00,$E3,$15,$24,$00,$F3,$15 ;
                    db $E4,$15,$24,$00,$F4,$15,$24,$00 ;
                    db $C0,$15,$C1,$15,$24,$00,$E2,$15 ;
                    db $D0,$15,$D1,$15,$F2,$15,$24,$00 ;
                    db $C2,$15,$C3,$15,$24,$00,$D3,$15 ;
                    db $C4,$15,$C5,$15,$D4,$15,$24,$00 ;
                    db $CA,$15,$CB,$15,$F1,$15,$F1,$55 ;
                    db $C6,$15,$C7,$15,$D6,$15,$D7,$15 ;
                    db $C8,$15,$C1,$15,$FD,$15,$E2,$15 ;
                    db $D0,$15,$D1,$15,$F2,$15,$F8,$15 ;
                    db $E6,$15,$E7,$15,$D9,$15,$DA,$15 ;
                    db $DC,$15,$E3,$15,$EF,$15,$F3,$15 ;
                    db $E4,$15,$DF,$15,$F4,$15,$EF,$15 ;
                    db $E8,$15,$E9,$15,$DB,$15,$EE,$15 ;
                    db $C9,$15,$C1,$15,$EF,$15,$E2,$15 ;
                    db $D0,$15,$D8,$15,$F2,$15,$EF,$15 ;
                    db $E6,$15,$E7,$15,$F6,$15,$F7,$15 ;
                    db $E5,$15,$F5,$15,$D9,$15,$DA,$15 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$D0,$1D,$D1,$1D ;
                    db $24,$00,$24,$00,$D2,$1D,$D3,$1D ;
                    db $24,$00,$C5,$1D,$D4,$1D,$D5,$1D ;
                    db $24,$00,$24,$00,$C1,$1D,$C2,$1D ;
                    db $24,$00,$24,$00,$FE,$1D,$FF,$1D ;
                    db $24,$00,$24,$00,$C0,$1D,$D1,$1D ;
                    db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D ;
                    db $24,$00,$24,$00,$D2,$1D,$C3,$1D ;
                    db $24,$00,$24,$00,$CA,$1C,$CB,$1C ;
                    db $C6,$1D,$C7,$1D,$C4,$1D,$D7,$1D ;
                    db $24,$00,$24,$00,$FF,$1D,$FE,$1D ;
                    db $E8,$1D,$E9,$1D,$F8,$1D,$F9,$1D ;
                    db $EA,$1D,$EB,$1D,$FA,$1D,$FB,$1D ;
                    db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D ;
                    db $E4,$1D,$E5,$1D,$F4,$1D,$F5,$1D ;
                    db $C8,$1D,$C9,$1D,$D8,$1D,$D9,$1D ;
                    db $CA,$1D,$CB,$1D,$DA,$1D,$DB,$1D ;
                    db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D ;
                    db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D ;
                    db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D ;
                    db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D ;
                    db $C8,$1D,$C9,$1D,$D8,$1D,$D9,$1D ;
                    db $D2,$1D,$D3,$1D,$C2,$1D,$C3,$1D ;
                    db $C2,$1D,$C3,$1D,$C2,$1D,$C3,$1D ;
                    db $CA,$1D,$CB,$1D,$DA,$1D,$DB,$1D ;
                    db $CC,$1D,$CD,$1D,$DC,$1D,$DD,$1D ;
                    db $CE,$1D,$CF,$1D,$DE,$1D,$DF,$1D ;
                    db $F2,$1D,$F3,$1D,$E2,$1D,$E3,$1D ;
                    db $E4,$1D,$E5,$1D,$F4,$1D,$F5,$1D ;
                    db $E2,$1D,$E3,$1D,$E2,$1D,$E3,$1D ;
                    db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D ;
                    db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $C0,$1D,$C1,$1D,$CA,$1D,$D1,$1D ;
                    db $C2,$1D,$C3,$1D,$D2,$1D,$CB,$1D ;
                    db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D ;
                    db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D ;
                    db $DA,$1D,$E1,$1D,$D0,$1D,$D1,$1D ;
                    db $E2,$1D,$DB,$1D,$D2,$1D,$D3,$1D ;
                    db $DA,$1D,$E1,$1D,$CA,$1D,$D1,$1D ;
                    db $E2,$1D,$E1,$1D,$E4,$1D,$E5,$1D ;
                    db $E2,$1D,$E1,$1D,$D2,$1D,$D1,$1D ;
                    db $E2,$1D,$DB,$1D,$D2,$1D,$CB,$1D ;
                    db $DA,$1D,$E1,$1D,$EA,$1D,$D1,$1D ;
                    db $F4,$1D,$F5,$1D,$D8,$1D,$E8,$1D ;
                    db $E2,$1D,$DB,$1D,$D2,$1D,$EB,$1D ;
                    db $C0,$1D,$C1,$1D,$92,$1D,$D1,$1D ;
                    db $E2,$1D,$E3,$1D,$D2,$1D,$D1,$1D ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $FA,$1D,$E1,$1D,$CC,$1D,$D1,$1D ;
                    db $E2,$1D,$FB,$1D,$D2,$1D,$CD,$1D ;
                    db $A2,$1D,$E1,$1D,$B2,$1D,$D1,$1D ;
                    db $E2,$1D,$E1,$1D,$D2,$1D,$C6,$1D ;
                    db $C4,$1D,$C5,$1D,$C7,$1D,$E7,$1D ;
                    db $D4,$1D,$D5,$1D,$E7,$1D,$C8,$1D ;
                    db $E2,$1D,$E3,$1D,$C9,$1D,$D1,$1D ;
                    db $E2,$1D,$E1,$1D,$D2,$1D,$82,$1D ;
                    db $E2,$1D,$E1,$1D,$83,$1D,$84,$1D ;
                    db $E2,$1D,$E1,$1D,$85,$1D,$80,$1D ;
                    db $E2,$1D,$E1,$1D,$81,$1D,$D1,$1D ;
                    db $E2,$1D,$E1,$1D,$C9,$1D,$D1,$1D ;
                    db $E2,$1D,$D6,$1D,$D2,$1D,$E6,$1D ;
                    db $D7,$1D,$E7,$1D,$D7,$1D,$E7,$1D ;
                    db $E7,$1D,$D7,$5D,$E7,$1D,$D7,$5D ;
                    db $D9,$1D,$E3,$1D,$E9,$1D,$D1,$1D ;
                    db $E2,$1D,$DC,$1D,$D2,$1D,$EC,$1D ;
                    db $DD,$1D,$DE,$1D,$ED,$1D,$EE,$1D ;
                    db $DF,$1D,$90,$1D,$EF,$1D,$A0,$1D ;
                    db $91,$1D,$E1,$1D,$A1,$1D,$D1,$1D ;
                    db $A2,$1D,$E3,$1D,$B2,$1D,$D1,$1D ;
                    db $D9,$1D,$E1,$1D,$E9,$1D,$D1,$1D ;
                    db $E2,$1D,$E1,$1D,$F0,$1D,$F1,$1D ;
                    db $E2,$1D,$E1,$1D,$F2,$1D,$F3,$1D ;
                    db $E2,$1D,$F6,$1D,$F0,$1D,$F1,$1D ;
                    db $F7,$1D,$CE,$1D,$F2,$1D,$F3,$1D ;
                    db $CF,$1D,$F8,$1D,$F0,$1D,$F1,$1D ;
                    db $F9,$1D,$E1,$1D,$F2,$1D,$F3,$1D ;
                    db $E2,$1D,$E3,$1D,$F0,$1D,$F1,$1D ;
                    db $FA,$1D,$E1,$1D,$F2,$1D,$F3,$1D ;
                    db $E2,$1D,$FC,$1D,$F0,$1D,$F1,$1D ;
                    db $FD,$1D,$FE,$1D,$F2,$1D,$F3,$1D ;
                    db $FF,$1D,$B0,$1D,$F0,$1D,$F1,$1D ;
                    db $B1,$1D,$E1,$1D,$F2,$1D,$F3,$1D ;
                    db $E2,$1D,$FB,$1D,$F0,$1D,$F1,$1D ;
                    db $A2,$1D,$E1,$1D,$F2,$1D,$F3,$1D ;
                    db $E2,$1D,$CB,$1D,$D2,$1D,$D3,$1D ;
                    db $CA,$1D,$E1,$1D,$D0,$1D,$D1,$1D ;
                    db $86,$15,$86,$15,$87,$15,$87,$15 ;
                    db $88,$15,$88,$15,$88,$15,$88,$15 ;
                    db $34,$15,$34,$15,$34,$15,$34,$15 ;
                    db $34,$15,$36,$15,$34,$15,$36,$15 ;
                    db $37,$15,$38,$15,$37,$15,$28,$15 ;
                    db $34,$15,$09,$1D,$34,$15,$34,$15 ;
                    db $09,$1D,$0A,$1D,$19,$1D,$1A,$1D ;
                    db $0B,$1D,$0C,$1D,$1B,$1D,$1C,$1D ;
                    db $0C,$5D,$0B,$5D,$1C,$5D,$1B,$5D ;
                    db $0A,$5D,$09,$5D,$1A,$5D,$19,$5D ;
                    db $09,$15,$0A,$15,$19,$15,$1A,$15 ;
                    db $0B,$15,$0C,$15,$1B,$15,$1C,$15 ;
                    db $0C,$55,$0B,$55,$1C,$55,$1B,$55 ;
                    db $0A,$55,$09,$55,$1A,$55,$19,$55 ;
                    db $00,$15,$01,$15,$10,$15,$11,$15 ;
                    db $BB,$1D,$BC,$1D,$34,$1D,$88,$1D ;
                    db $BD,$1D,$BC,$1D,$89,$1D,$8C,$1D ;
                    db $BD,$1D,$BC,$1D,$8D,$1D,$89,$5D ;
                    db $BD,$1D,$BE,$1D,$88,$1D,$34,$1D ;
                    db $B0,$1D,$B1,$1D,$B2,$1D,$E8,$1C ;
                    db $20,$15,$21,$15,$30,$15,$31,$15 ;
                    db $02,$15,$03,$15,$12,$15,$13,$15 ;
                    db $B1,$5D,$B0,$5D,$E9,$1C,$B2,$5D ;
                    db $34,$15,$34,$1D,$34,$15,$34,$1D ;
                    db $34,$1D,$98,$1D,$34,$1D,$A8,$1D ;
                    db $89,$1D,$8A,$1D,$99,$1D,$9A,$1D ;
                    db $8B,$1D,$89,$5D,$9B,$1D,$99,$5D ;
                    db $9C,$1D,$34,$1D,$AC,$1D,$34,$1D ;
                    db $24,$15,$16,$15,$34,$15,$26,$15 ;
                    db $17,$15,$18,$15,$27,$15,$28,$15 ;
                    db $B3,$1D,$EA,$1C,$34,$1D,$8E,$1D ;
                    db $EB,$1C,$B3,$5D,$8F,$1D,$34,$1D ;
                    db $34,$1D,$A8,$1D,$34,$1D,$A8,$1D ;
                    db $A9,$1D,$8A,$1D,$B9,$1D,$B9,$1D ;
                    db $8B,$1D,$A9,$5D,$B9,$1D,$BA,$1D ;
                    db $AC,$1D,$34,$1D,$AC,$1D,$34,$1D ;
                    db $34,$15,$34,$15,$0D,$1D,$0E,$1D ;
                    db $34,$15,$34,$15,$0F,$1D,$34,$15 ;
                    db $1D,$1D,$1E,$1D,$2D,$1D,$2E,$1D ;
                    db $1F,$1D,$29,$1D,$2F,$1D,$39,$1D ;
                    db $37,$15,$38,$15,$37,$15,$38,$15 ;
                    db $34,$1D,$A8,$1D,$34,$1D,$B8,$1D ;
                    db $8B,$1D,$A9,$5D,$B9,$1D,$B9,$1D ;
                    db $AC,$1D,$34,$1D,$BA,$1D,$34,$1D ;
                    db $3D,$1D,$3E,$1D,$34,$15,$15,$1D ;
                    db $3F,$1D,$2A,$1D,$25,$1D,$3A,$1D ;
                    db $34,$15,$26,$95,$24,$95,$16,$95 ;
                    db $27,$95,$38,$15,$17,$95,$18,$95 ;
                    db $80,$1D,$81,$1D,$90,$1D,$91,$1D ;
                    db $82,$1D,$83,$1D,$92,$1D,$93,$1D ;
                    db $32,$15,$22,$15,$10,$15,$11,$15 ;
                    db $22,$15,$23,$15,$10,$15,$11,$15 ;
                    db $33,$15,$00,$15,$10,$15,$11,$15 ;
                    db $A0,$1D,$A1,$1D,$10,$15,$11,$15 ;
                    db $A2,$1D,$A3,$1D,$10,$15,$11,$15 ;
                    db $33,$15,$34,$15,$10,$15,$11,$15 ;
                    db $85,$15,$87,$15,$95,$15,$97,$15 ;
                    db $84,$15,$86,$15,$94,$15,$96,$15 ;
                    db $85,$15,$86,$15,$95,$15,$96,$15 ;
                    db $84,$15,$87,$15,$94,$15,$97,$15 ;
                    db $84,$15,$85,$15,$94,$15,$95,$15 ;
                    db $86,$15,$85,$15,$96,$15,$95,$15 ;
                    db $A6,$15,$A7,$15,$B6,$15,$B7,$15 ;
                    db $94,$15,$A6,$15,$B4,$15,$B6,$15 ;
                    db $A6,$15,$A6,$15,$B6,$15,$B6,$15 ;
                    db $94,$15,$A7,$15,$B4,$15,$B7,$15 ;
                    db $99,$15,$16,$15,$34,$15,$26,$15 ;
                    db $4C,$15,$4D,$15,$5C,$15,$40,$15 ;
                    db $4D,$15,$4D,$15,$41,$15,$42,$15 ;
                    db $4D,$15,$4D,$15,$43,$15,$44,$15 ;
                    db $4D,$15,$4E,$15,$45,$15,$5D,$15 ;
                    db $5C,$15,$50,$15,$5C,$15,$60,$15 ;
                    db $51,$15,$52,$15,$61,$15,$62,$15 ;
                    db $53,$15,$54,$15,$63,$15,$64,$15 ;
                    db $55,$15,$5D,$15,$65,$15,$5D,$15 ;
                    db $5C,$15,$70,$15,$5C,$15,$46,$15 ;
                    db $71,$15,$72,$15,$47,$15,$48,$15 ;
                    db $73,$15,$74,$15,$49,$15,$4A,$15 ;
                    db $75,$15,$5D,$15,$4B,$15,$5D,$15 ;
                    db $5C,$15,$56,$15,$5C,$15,$66,$15 ;
                    db $57,$15,$58,$15,$67,$15,$68,$15 ;
                    db $59,$15,$5A,$15,$69,$15,$6A,$15 ;
                    db $5B,$15,$5D,$15,$6B,$15,$5D,$15 ;
                    db $5C,$15,$76,$15,$5E,$15,$6C,$15 ;
                    db $77,$15,$78,$15,$6C,$15,$6C,$15 ;
                    db $79,$15,$7A,$15,$6C,$15,$6C,$15 ;
                    db $7B,$15,$5D,$15,$6C,$15,$6D,$15 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $A4,$10,$A4,$10,$24,$00,$24,$00 ;
                    db $A4,$10,$A4,$10,$A4,$10,$A4,$10 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $24,$00,$24,$00,$24,$00,$F0,$1C ;
                    db $24,$00,$24,$00,$F1,$1C,$24,$00 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $40,$15,$41,$15,$50,$15,$51,$15 ;
                    db $46,$15,$47,$15,$56,$15,$57,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $24,$00,$F2,$1C,$24,$00,$F4,$1C ;
                    db $F3,$1C,$24,$00,$F5,$1C,$24,$00 ;
                    db $60,$15,$61,$15,$70,$15,$71,$15 ;
                    db $66,$15,$67,$15,$76,$15,$77,$15 ;
                    db $0A,$15,$0B,$15,$1A,$15,$1B,$15 ;
                    db $0C,$15,$0D,$15,$1C,$15,$1D,$15 ;
                    db $28,$15,$29,$15,$1A,$15,$1B,$15 ;
                    db $38,$15,$39,$15,$1C,$15,$1D,$15 ;
                    db $0E,$15,$24,$00,$1E,$15,$1F,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $20,$15,$21,$15,$30,$15,$31,$15 ;
                    db $2A,$15,$2B,$15,$3A,$15,$3B,$15 ;
                    db $2C,$15,$2D,$15,$3C,$15,$3D,$15 ;
                    db $2E,$15,$2F,$15,$3E,$15,$3F,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $22,$15,$23,$15,$32,$15,$33,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $0C,$15,$0D,$15,$1C,$15,$1D,$15 ;
                    db $28,$15,$29,$15,$1A,$15,$1B,$15 ;
                    db $38,$15,$39,$15,$1C,$15,$1D,$15 ;
                    db $42,$15,$43,$15,$52,$15,$53,$15 ;
                    db $44,$15,$45,$15,$54,$15,$55,$15 ;
                    db $62,$15,$63,$15,$72,$15,$73,$15 ;
                    db $64,$15,$65,$15,$74,$15,$75,$15 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $34,$15,$35,$15,$1A,$15,$1B,$15 ;
                    db $36,$15,$37,$15,$1C,$15,$1D,$15 ;
                    db $2A,$15,$2B,$15,$24,$15,$25,$15 ;
                    db $2C,$15,$2D,$15,$26,$15,$27,$15 ;
                    db $A4,$15,$A5,$15,$B4,$15,$B5,$15 ;
                    db $05,$15,$0B,$15,$15,$15,$03,$15 ;
                    db $24,$00,$04,$15,$24,$00,$14,$15 ;
                    db $10,$15,$11,$15,$13,$15,$27,$15 ;
                    db $24,$00,$24,$00,$24,$00,$12,$15 ;
                    db $06,$15,$2B,$15,$09,$15,$07,$15 ;
                    db $2E,$15,$2F,$15,$3E,$15,$07,$15 ;
                    db $24,$00,$24,$00,$08,$15,$24,$00 ;
                    db $2E,$15,$2F,$15,$09,$15,$07,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $22,$15,$23,$15,$32,$15,$33,$15 ;
                    db $72,$15,$71,$15,$5E,$15,$5F,$15 ;
                    db $24,$10,$24,$10,$24,$10,$24,$10 ;
                    db $0A,$15,$4A,$15,$4A,$15,$16,$15 ;
                    db $07,$15,$06,$15,$5A,$15,$16,$15 ;
                    db $24,$10,$01,$15,$10,$15,$11,$15 ;
                    db $02,$15,$03,$15,$0A,$15,$0A,$15 ;
                    db $04,$15,$24,$10,$14,$15,$15,$15 ;
                    db $0A,$15,$0D,$15,$0A,$15,$1D,$15 ;
                    db $07,$15,$24,$10,$0E,$15,$07,$15 ;
                    db $0A,$15,$1D,$15,$0A,$15,$0A,$15 ;
                    db $1F,$15,$17,$15,$1E,$15,$55,$15 ;
                    db $1E,$15,$55,$15,$0A,$15,$0F,$15 ;
                    db $55,$15,$17,$15,$55,$15,$55,$15 ;
                    db $55,$15,$55,$15,$1F,$15,$55,$15 ;
                    db $07,$15,$06,$15,$0E,$15,$5B,$15 ;
                    db $18,$15,$0A,$15,$0E,$15,$18,$15 ;
                    db $5E,$15,$5E,$15,$4F,$15,$4F,$15 ;
                    db $0A,$15,$4B,$15,$4A,$15,$16,$15 ;
                    db $55,$15,$5A,$15,$5A,$15,$16,$15 ;
                    db $24,$10,$06,$15,$06,$15,$16,$15 ;
                    db $16,$15,$0A,$15,$0A,$15,$0A,$15 ;
                    db $02,$15,$08,$15,$0A,$15,$0A,$15 ;
                    db $09,$15,$0A,$15,$14,$15,$1A,$15 ;
                    db $0A,$55,$0A,$15,$0A,$15,$0A,$15 ;
                    db $1E,$15,$17,$15,$0A,$15,$0F,$15 ;
                    db $07,$15,$24,$10,$17,$15,$07,$15 ;
                    db $0A,$15,$0F,$15,$0A,$15,$1D,$15 ;
                    db $55,$15,$17,$15,$1F,$15,$55,$15 ;
                    db $1F,$15,$55,$15,$1E,$15,$55,$15 ;
                    db $55,$15,$55,$15,$55,$15,$55,$15 ;
                    db $07,$15,$06,$15,$17,$15,$5B,$15 ;
                    db $18,$15,$0A,$15,$17,$15,$18,$15 ;
                    db $5F,$15,$5F,$15,$5F,$15,$5F,$15 ;
                    db $45,$15,$0A,$15,$0A,$15,$0A,$15 ;
                    db $0A,$15,$0A,$15,$0A,$15,$19,$15 ;
                    db $0A,$15,$12,$15,$0A,$15,$12,$95 ;
                    db $13,$15,$0A,$15,$13,$95,$0A,$15 ;
                    db $19,$15,$0A,$55,$0A,$55,$45,$D5 ;
                    db $47,$15,$47,$55,$47,$95,$47,$D5 ;
                    db $57,$15,$57,$55,$57,$95,$57,$D5 ;
                    db $12,$15,$0A,$15,$12,$95,$19,$15 ;
                    db $0A,$15,$0A,$15,$47,$15,$47,$55 ;
                    db $47,$95,$54,$15,$0A,$15,$57,$95 ;
                    db $57,$55,$0A,$15,$57,$D5,$0A,$15 ;
                    db $0B,$15,$0C,$15,$1B,$15,$1C,$15 ;
                    db $0A,$15,$0A,$15,$0A,$15,$0B,$15 ;
                    db $0A,$15,$0A,$15,$0C,$15,$0A,$15 ;
                    db $0B,$15,$1B,$15,$1B,$15,$0A,$15 ;
                    db $1C,$15,$0C,$15,$0A,$15,$1C,$15 ;
                    db $55,$55,$56,$55,$55,$55,$56,$D5 ;
                    db $55,$55,$46,$55,$55,$55,$46,$D5 ;
                    db $5C,$15,$17,$15,$55,$55,$55,$55 ;
                    db $55,$55,$17,$15,$55,$55,$4C,$15 ;
                    db $26,$15,$21,$15,$36,$15,$31,$15 ;
                    db $22,$15,$23,$15,$32,$15,$33,$15 ;
                    db $20,$15,$21,$15,$30,$15,$31,$15 ;
                    db $22,$15,$24,$15,$32,$15,$34,$15 ;
                    db $27,$15,$51,$15,$37,$15,$31,$15 ;
                    db $52,$15,$53,$15,$32,$15,$33,$15 ;
                    db $50,$15,$51,$15,$30,$15,$31,$15 ;
                    db $52,$15,$48,$15,$32,$15,$58,$15 ;
                    db $27,$15,$41,$15,$37,$15,$31,$15 ;
                    db $42,$15,$43,$15,$32,$15,$33,$15 ;
                    db $40,$15,$41,$15,$30,$15,$31,$15 ;
                    db $42,$15,$44,$15,$32,$15,$35,$15 ;
                    db $2E,$15,$29,$15,$3E,$15,$39,$15 ;
                    db $2A,$15,$2B,$15,$3A,$15,$3B,$15 ;
                    db $28,$15,$29,$15,$38,$15,$39,$15 ;
                    db $2A,$15,$2C,$15,$3A,$15,$3C,$15 ;
                    db $2F,$15,$29,$15,$3F,$15,$39,$15 ;
                    db $2A,$15,$49,$15,$3A,$15,$59,$15 ;
                    db $2A,$15,$2D,$15,$3A,$15,$3D,$15 ;
                    db $60,$15,$61,$15,$5E,$15,$5F,$15 ;
                    db $62,$15,$63,$15,$67,$15,$68,$15 ;
                    db $62,$15,$4D,$15,$67,$15,$5D,$15 ;
                    db $62,$15,$4E,$15,$67,$15,$5D,$15 ;
                    db $62,$15,$4F,$15,$67,$15,$5D,$15 ;
                    db $64,$15,$61,$15,$69,$15,$5F,$15 ;
                    db $65,$15,$61,$15,$6A,$15,$5F,$15 ;
                    db $66,$15,$66,$15,$66,$15,$66,$15 ;
                    db $86,$15,$86,$15,$87,$15,$87,$15 ;
                    db $88,$15,$88,$15,$88,$15,$88,$15 ;
                    db $12,$15,$1F,$15,$12,$15,$1F,$15 ;
                    db $07,$15,$06,$15,$B0,$15,$16,$15 ;
                    db $45,$15,$71,$15,$0E,$15,$A2,$15 ;
                    db $89,$15,$8C,$15,$9B,$15,$9C,$15 ;
                    db $9D,$15,$9F,$15,$9F,$15,$12,$15 ;
                    db $89,$15,$8C,$15,$9B,$15,$9C,$15 ;
                    db $FF,$15,$FF,$15,$FF,$15,$FF,$15 ;
                    db $EE,$15,$EE,$15,$FE,$15,$FE,$15 ;
                    db $27,$00,$27,$00,$27,$00,$27,$00 ;
                    db $27,$00,$27,$00,$27,$00,$27,$00 ;
                    db $27,$00,$27,$00,$27,$00,$27,$00 ;
                    db $27,$00,$27,$00,$27,$00,$27,$00 ;
                    db $27,$00,$27,$00,$27,$00,$27,$00 ;
                    db $27,$00,$27,$00,$27,$00,$27,$00 ;
                    db $27,$00,$27,$00,$27,$00,$27,$00 ;
                    db $2E,$14,$96,$15,$67,$15,$91,$15 ;
                    db $97,$15,$03,$15,$12,$15,$13,$15 ;
                    db $4E,$15,$06,$15,$54,$15,$16,$15 ;
                    db $A0,$15,$A1,$15,$B0,$15,$16,$15 ;
                    db $17,$15,$B0,$15,$B0,$15,$16,$15 ;
                    db $55,$15,$17,$15,$55,$15,$17,$95 ;
                    db $55,$15,$55,$15,$55,$15,$17,$95 ;
                    db $45,$15,$71,$15,$17,$15,$A2,$15 ;
                    db $57,$15,$81,$15,$90,$15,$91,$15 ;
                    db $82,$15,$83,$15,$92,$15,$93,$15 ;
                    db $84,$15,$57,$15,$94,$15,$95,$15 ;
                    db $12,$15,$0D,$15,$12,$15,$1D,$15 ;
                    db $07,$15,$24,$14,$0E,$15,$07,$15 ;
                    db $1E,$15,$17,$15,$12,$15,$0F,$15 ;
                    db $12,$15,$1D,$15,$12,$15,$12,$15 ;
                    db $1F,$15,$17,$15,$1E,$15,$55,$15 ;
                    db $07,$15,$4B,$15,$0E,$15,$45,$15 ;
                    db $18,$15,$19,$15,$0E,$15,$18,$15 ;
                    db $12,$15,$0F,$15,$12,$15,$1D,$15 ;
                    db $55,$15,$17,$15,$1F,$15,$55,$15 ;
                    db $1E,$15,$55,$15,$12,$15,$0F,$15 ;
                    db $1F,$15,$55,$15,$1E,$15,$55,$15 ;
                    db $55,$15,$55,$15,$1F,$15,$55,$15 ;
                    db $45,$15,$2E,$14,$0E,$15,$45,$15 ;
                    db $12,$15,$12,$15,$12,$15,$89,$15 ;
                    db $12,$15,$12,$15,$8C,$15,$12,$15 ;
                    db $89,$15,$8A,$15,$99,$15,$9A,$15 ;
                    db $8B,$15,$8C,$15,$9B,$15,$9C,$15 ;
                    db $8D,$15,$8E,$15,$12,$15,$8F,$15 ;
                    db $9D,$15,$9E,$15,$9F,$15,$12,$15 ;
                    db $89,$15,$8C,$15,$99,$15,$9A,$15 ;
                    db $89,$15,$8C,$15,$9B,$15,$9C,$15 ;
                    db $B3,$15,$B2,$15,$B2,$15,$16,$15 ;
                    db $B3,$15,$A3,$15,$B2,$15,$16,$15 ;
                    db $12,$15,$99,$15,$12,$15,$8F,$15 ;
                    db $9D,$15,$8E,$15,$9F,$15,$8F,$15 ;
                    db $9C,$15,$12,$15,$9F,$15,$12,$15 ;
                    db $12,$15,$12,$15,$8C,$15,$89,$15 ;
                    db $89,$15,$8C,$15,$9B,$15,$9A,$15 ;
                    db $12,$15,$12,$15,$89,$15,$8C,$15 ;
                    db $99,$15,$9C,$15,$8F,$15,$9F,$15 ;
                    db $12,$15,$99,$15,$8C,$15,$8F,$15 ;
                    db $16,$15,$12,$15,$89,$15,$8C,$15 ;
                    db $16,$15,$12,$15,$12,$15,$89,$15 ;
                    db $16,$15,$12,$15,$89,$15,$8C,$15 ;
                    db $99,$15,$9C,$15,$8D,$15,$B1,$15 ;
                    db $12,$15,$1D,$15,$8C,$15,$12,$15 ;
                    db $12,$15,$1D,$15,$8C,$15,$12,$15 ;
                    db $62,$15,$63,$15,$72,$15,$73,$15 ;
                    db $64,$15,$65,$15,$74,$15,$75,$15 ;
                    db $66,$15,$67,$15,$76,$15,$77,$15 ;
                    db $68,$15,$69,$15,$78,$15,$79,$15 ;
                    db $24,$00,$24,$00,$00,$1D,$01,$1D ;
                    db $24,$00,$24,$00,$02,$1D,$03,$1D ;
                    db $24,$00,$24,$00,$04,$1D,$05,$1D ;
                    db $24,$00,$24,$00,$06,$1D,$07,$1D ;
                    db $10,$1D,$11,$1D,$20,$1D,$21,$1D ;
                    db $12,$1D,$13,$1D,$22,$1D,$23,$1D ;
                    db $14,$1D,$15,$1D,$24,$1D,$25,$1D ;
                    db $16,$1D,$17,$1D,$26,$1D,$27,$1D ;
                    db $24,$00,$24,$00,$40,$1D,$41,$1D ;
                    db $30,$1D,$31,$1D,$08,$1D,$09,$1D ;
                    db $32,$1D,$33,$1D,$0A,$1D,$0B,$1D ;
                    db $34,$1D,$35,$1D,$0C,$1D,$0D,$1D ;
                    db $36,$1D,$37,$1D,$0E,$1D,$0F,$1D ;
                    db $50,$1D,$51,$1D,$60,$1D,$61,$1D ;
                    db $18,$1D,$19,$1D,$28,$1D,$29,$1D ;
                    db $1A,$1D,$1B,$1D,$2A,$1D,$2B,$1D ;
                    db $1C,$1D,$1D,$1D,$2C,$1D,$2D,$1D ;
                    db $1E,$1D,$1F,$1D,$2E,$1D,$2F,$1D ;
                    db $70,$1D,$71,$1D,$24,$00,$24,$00 ;
                    db $38,$1D,$39,$1D,$24,$00,$24,$00 ;
                    db $3A,$1D,$3B,$1D,$24,$00,$24,$00 ;
                    db $3C,$1D,$3D,$1D,$24,$00,$24,$00 ;
                    db $3E,$1D,$3F,$1D,$24,$00,$24,$00 ;
                    db $3E,$1D,$3F,$1D,$24,$00,$24,$00 ;
                    db $3E,$1D,$3F,$1D,$24,$00,$24,$00 ;
                    db $3E,$1D,$3F,$1D,$24,$00,$24,$00 ;
                    db $3E,$1D,$3F,$1D,$24,$00,$24,$00 ;
                    db $3E,$1D,$3F,$1D,$24,$00,$24,$00 ;
                    db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D ;
                    db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D ;
                    db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D ;
                    db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D ;
                    db $C8,$1D,$C9,$1D,$D8,$1D,$D9,$1D ;
                    db $CA,$1D,$24,$00,$DA,$1D,$DB,$1D ;
                    db $E8,$1D,$24,$00,$F8,$1D,$24,$00 ;
                    db $E8,$1D,$E9,$1D,$F8,$1D,$F9,$1D ;
                    db $EA,$1D,$EB,$1D,$FA,$1D,$FB,$1D ;
                    db $24,$00,$E9,$1D,$24,$00,$F9,$1D ;
                    db $DF,$1D,$C3,$1D,$DC,$1D,$D3,$1D ;
                    db $E8,$1D,$E9,$1D,$F8,$1D,$F9,$1D ;
                    db $CC,$1D,$CD,$1D,$D0,$1D,$D1,$1D ;
                    db $CE,$1D,$CF,$1D,$D2,$1D,$D3,$1D ;
                    db $24,$00,$E5,$1D,$24,$00,$F5,$1D ;
                    db $24,$00,$DD,$1D,$24,$00,$DE,$1D ;
                    db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D ;
                    db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D ;
                    db $E4,$1D,$E5,$1D,$F4,$1D,$F5,$1D ;
                    db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D ;
                    db $E2,$1D,$F8,$1D,$F2,$1D,$F3,$1D ;
                    db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D ;
                    db $E4,$1D,$24,$00,$F4,$1D,$24,$00 ;
                    db $24,$00,$24,$00,$EC,$1D,$ED,$1D ;
                    db $E2,$1D,$F8,$1D,$F2,$1D,$F3,$1D ;
                    db $EE,$15,$EE,$15,$FE,$15,$FE,$15 ;
                    db $FF,$15,$FF,$15,$FF,$15,$FF,$15 ;
                    db $16,$1D,$12,$1D,$12,$1D,$89,$1D ;
                    db $16,$1D,$12,$1D,$89,$1D,$8C,$1D ;
                    db $99,$1D,$9C,$1D,$8D,$1D,$B1,$1D ;
                    db $12,$1D,$1D,$1D,$8C,$1D,$12,$1D ;
                    db $12,$1D,$1D,$1D,$8C,$1D,$12,$1D ;
                    db $62,$15,$63,$15,$72,$15,$73,$15 ;
                    db $64,$15,$65,$15,$74,$15,$75,$15 ;
                    db $66,$15,$67,$15,$76,$15,$77,$15 ;
                    db $68,$15,$69,$15,$78,$15,$79,$15 ;
                    db $07,$15,$06,$15,$B0,$15,$16,$15 ;
                    db $20,$15,$21,$15,$30,$15,$31,$15 ;
                    db $22,$15,$23,$15,$32,$15,$33,$15 ;
                    db $28,$15,$29,$15,$38,$15,$39,$15 ;
                    db $2A,$15,$2B,$15,$3A,$15,$3B,$15 ;
                    db $26,$15,$21,$15,$36,$15,$31,$15 ;
                    db $22,$15,$24,$15,$32,$15,$34,$15 ;
                    db $2E,$15,$29,$15,$3E,$15,$39,$15 ;
                    db $2A,$15,$2C,$15,$3A,$15,$3C,$15 ;
                    db $40,$15,$41,$15,$30,$15,$31,$15 ;
                    db $42,$15,$43,$15,$32,$15,$33,$15 ;
                    db $27,$15,$41,$15,$37,$15,$31,$15 ;
                    db $22,$15,$24,$15,$32,$15,$34,$15 ;
                    db $2F,$15,$29,$15,$3F,$15,$39,$15 ;
                    db $2A,$15,$2D,$15,$3A,$15,$3D,$15 ;
                    db $50,$15,$51,$15,$30,$15,$31,$15 ;
                    db $52,$15,$53,$15,$32,$15,$33,$15 ;
                    db $52,$15,$48,$15,$32,$15,$58,$15 ;
                    db $2A,$15,$49,$15,$3A,$15,$59,$15 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $C1,$1C,$24,$00,$24,$00,$24,$00 ;
                    db $C2,$1C,$24,$00,$24,$00,$24,$00 ;
                    db $C3,$1C,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$C0,$1C,$24,$00 ;
                    db $24,$00,$24,$00,$C1,$1C,$24,$00 ;
                    db $24,$00,$24,$00,$C2,$1C,$24,$00 ;
                    db $24,$00,$24,$00,$C3,$1C,$24,$00 ;
                    db $C4,$1C,$24,$00,$24,$00,$24,$00 ;
                    db $C5,$1C,$24,$00,$24,$00,$24,$00 ;
                    db $C6,$1C,$24,$00,$24,$00,$24,$00 ;
                    db $C7,$1C,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$C4,$1C,$24,$00 ;
                    db $24,$00,$24,$00,$C5,$1C,$24,$00 ;
                    db $24,$00,$24,$00,$C6,$1C,$24,$00 ;
                    db $24,$00,$24,$00,$C7,$1C,$24,$00 ;
                    db $24,$00,$C0,$1C,$24,$00,$24,$00 ;
                    db $24,$00,$C1,$1C,$24,$00,$24,$00 ;
                    db $24,$00,$C2,$1C,$24,$00,$24,$00 ;
                    db $24,$00,$C3,$1C,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$C0,$1C ;
                    db $24,$00,$24,$00,$24,$00,$C1,$1C ;
                    db $24,$00,$24,$00,$24,$00,$C2,$1C ;
                    db $24,$00,$24,$00,$24,$00,$C3,$1C ;
                    db $24,$00,$C4,$1C,$24,$00,$24,$00 ;
                    db $24,$00,$C5,$1C,$24,$00,$24,$00 ;
                    db $24,$00,$C6,$1C,$24,$00,$24,$00 ;
                    db $24,$00,$C7,$1C,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$C4,$1C ;
                    db $24,$00,$24,$00,$24,$00,$C5,$1C ;
                    db $24,$00,$24,$00,$24,$00,$C6,$1C ;
                    db $24,$00,$24,$00,$24,$00,$C7,$1C ;
                    db $E0,$15,$E0,$15,$E1,$15,$E1,$15 ;
                    db $C6,$15,$C7,$15,$D6,$15,$D7,$15 ;
                    db $C8,$15,$C9,$15,$D8,$15,$D9,$15 ;
                    db $CA,$15,$CB,$15,$DA,$15,$DB,$15 ;
                    db $CC,$15,$CD,$15,$DC,$15,$DD,$15 ;
                    db $E6,$15,$E7,$15,$F6,$15,$F7,$15 ;
                    db $E8,$15,$E9,$15,$F8,$15,$F9,$15 ;
                    db $EA,$15,$EB,$15,$FA,$15,$FB,$15 ;
                    db $EC,$15,$ED,$15,$FC,$15,$FD,$15 ;
                    db $E2,$15,$E2,$15,$E2,$15,$E2,$15 ;
                    db $C0,$1C,$24,$00,$24,$00,$24,$00 ;
                    db $C0,$1C,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $04,$15,$05,$15,$16,$15,$17,$15 ;
                    db $06,$15,$07,$15,$20,$15,$21,$15 ;
                    db $04,$15,$05,$15,$22,$15,$23,$15 ;
                    db $06,$15,$07,$15,$14,$15,$15,$15 ;
                    db $0C,$15,$0D,$15,$1C,$15,$1D,$15 ;
                    db $24,$00,$24,$00,$1E,$15,$24,$00 ;
                    db $24,$00,$2C,$15,$24,$00,$3C,$15 ;
                    db $0C,$15,$2A,$15,$16,$15,$3A,$15 ;
                    db $2B,$15,$07,$15,$3B,$15,$21,$15 ;
                    db $26,$15,$27,$15,$36,$15,$37,$15 ;
                    db $30,$15,$31,$15,$08,$15,$24,$00 ;
                    db $32,$15,$33,$15,$24,$00,$0B,$15 ;
                    db $24,$15,$25,$15,$34,$15,$35,$15 ;
                    db $26,$15,$1B,$15,$36,$15,$37,$15 ;
                    db $0F,$15,$24,$00,$08,$15,$24,$00 ;
                    db $24,$00,$24,$00,$24,$00,$3E,$15 ;
                    db $2E,$15,$2F,$15,$3F,$15,$35,$15 ;
                    db $18,$15,$24,$00,$4A,$15,$4B,$15 ;
                    db $24,$00,$19,$15,$5A,$15,$5B,$15 ;
                    db $24,$00,$19,$15,$5C,$15,$48,$15 ;
                    db $24,$15,$25,$15,$44,$15,$45,$15 ;
                    db $26,$15,$27,$15,$46,$15,$47,$15 ;
                    db $24,$00,$24,$00,$5C,$15,$51,$15 ;
                    db $24,$00,$24,$00,$52,$15,$53,$15 ;
                    db $24,$00,$19,$15,$50,$15,$48,$15 ;
                    db $00,$15,$01,$15,$11,$15,$00,$15 ;
                    db $68,$15,$69,$15,$78,$15,$79,$15 ;
                    db $6A,$15,$6B,$15,$7A,$15,$7B,$15 ;
                    db $10,$15,$11,$15,$01,$15,$10,$15 ;
                    db $6C,$15,$61,$15,$7C,$15,$71,$15 ;
                    db $54,$15,$55,$15,$72,$15,$73,$15 ;
                    db $56,$15,$57,$15,$74,$15,$75,$15 ;
                    db $4C,$15,$4D,$15,$76,$15,$77,$15 ;
                    db $62,$15,$63,$15,$72,$15,$73,$15 ;
                    db $64,$15,$65,$15,$74,$15,$75,$15 ;
                    db $66,$15,$67,$15,$76,$15,$77,$15 ;
                    db $60,$15,$61,$15,$7C,$15,$71,$15 ;
                    db $54,$15,$58,$15,$72,$15,$59,$15 ;
                    db $16,$15,$17,$15,$18,$15,$19,$15 ;
                    db $19,$15,$18,$15,$18,$15,$19,$15 ;
                    db $06,$15,$06,$15,$14,$15,$15,$15 ;
                    db $34,$15,$34,$15,$34,$15,$34,$15 ;
                    db $34,$15,$04,$15,$34,$15,$04,$15 ;
                    db $05,$15,$06,$15,$05,$15,$06,$15 ;
                    db $29,$15,$2A,$15,$19,$15,$1A,$15 ;
                    db $2B,$15,$2C,$15,$1B,$15,$1C,$15 ;
                    db $38,$15,$34,$15,$38,$15,$34,$15 ;
                    db $19,$15,$1A,$15,$19,$15,$1A,$15 ;
                    db $1B,$15,$1C,$15,$1B,$15,$1C,$15 ;
                    db $09,$15,$0A,$15,$19,$15,$1A,$15 ;
                    db $0B,$15,$0C,$15,$1B,$15,$1C,$15 ;
                    db $34,$15,$04,$15,$34,$15,$14,$15 ;
                    db $05,$15,$06,$15,$15,$15,$06,$15 ;
                    db $00,$15,$01,$15,$10,$15,$11,$15 ;
                    db $00,$15,$02,$15,$10,$15,$12,$15 ;
                    db $03,$15,$01,$15,$13,$15,$11,$15 ;
                    db $0D,$15,$0A,$15,$1D,$15,$1A,$15 ;
                    db $0B,$15,$0E,$15,$1B,$15,$1E,$15 ;
                    db $0F,$15,$01,$15,$1F,$15,$11,$15 ;
                    db $20,$15,$21,$15,$30,$15,$31,$15 ;
                    db $20,$15,$22,$15,$30,$15,$32,$15 ;
                    db $23,$15,$21,$15,$33,$15,$31,$15 ;
                    db $20,$15,$21,$15,$30,$15,$30,$15 ;
                    db $2D,$15,$1A,$15,$3D,$15,$1A,$15 ;
                    db $1B,$15,$2E,$15,$1B,$15,$3E,$15 ;
                    db $2F,$15,$21,$15,$3F,$15,$31,$15 ;
                    db $35,$15,$35,$15,$34,$15,$34,$15 ;
                    db $24,$15,$16,$15,$34,$15,$26,$15 ;
                    db $17,$15,$18,$15,$27,$15,$28,$15 ;
                    db $25,$15,$35,$15,$34,$15,$34,$15 ;
                    db $39,$15,$0A,$15,$19,$15,$1A,$15 ;
                    db $3A,$15,$35,$15,$38,$15,$34,$15 ;
                    db $34,$15,$36,$15,$34,$15,$36,$15 ;
                    db $37,$15,$28,$15,$37,$15,$28,$15 ;
                    db $02,$15,$03,$15,$12,$15,$05,$15 ;
                    db $04,$15,$24,$15,$14,$15,$15,$15 ;
                    db $24,$15,$06,$15,$06,$15,$16,$15 ;
                    db $12,$15,$12,$15,$12,$15,$12,$15 ;
                    db $0E,$15,$17,$15,$0F,$15,$55,$15 ;
                    db $07,$15,$24,$15,$17,$15,$07,$15 ;
                    db $16,$15,$1B,$15,$0B,$15,$1B,$15 ;
                    db $0C,$15,$12,$15,$1C,$15,$0C,$15 ;
                    db $1D,$15,$55,$15,$1E,$15,$55,$15 ;
                    db $55,$15,$17,$15,$55,$15,$55,$15 ;
                    db $16,$15,$0B,$15,$12,$15,$12,$15 ;
                    db $1B,$15,$12,$15,$12,$15,$12,$15 ;
                    db $1E,$15,$55,$15,$12,$15,$55,$15 ;
                    db $55,$15,$55,$15,$55,$15,$55,$15 ;
                    db $80,$1D,$81,$1D,$90,$1D,$91,$1D ;
                    db $81,$5D,$80,$5D,$92,$1D,$90,$5D ;
                    db $A0,$1D,$A1,$1D,$B0,$1D,$82,$1D ;
                    db $A2,$1D,$B1,$1D,$82,$5D,$B2,$1D ;
                    db $34,$15,$7C,$15,$34,$15,$7D,$15 ;
                    db $87,$15,$88,$15,$97,$15,$98,$15 ;
                    db $83,$1D,$84,$1D,$93,$1D,$94,$1D ;
                    db $85,$1D,$86,$1D,$95,$1D,$96,$1D ;
                    db $A7,$15,$A8,$15,$B7,$15,$B8,$15 ;
                    db $34,$15,$8A,$15,$34,$15,$9A,$15 ;
                    db $89,$15,$8B,$15,$13,$15,$9B,$15 ;
                    db $A3,$1D,$A4,$1D,$30,$15,$30,$15 ;
                    db $A5,$1D,$A6,$1D,$30,$15,$30,$15 ;
                    db $B3,$15,$B4,$15,$B5,$15,$B6,$15 ;
                    db $A9,$15,$AA,$15,$B9,$15,$32,$15 ;
                    db $23,$15,$AB,$15,$33,$15,$31,$15 ;
                    db $35,$15,$16,$15,$34,$15,$26,$15 ;
                    db $99,$15,$16,$15,$34,$15,$26,$15 ;
                    db $4C,$15,$4D,$15,$5C,$15,$40,$15 ;
                    db $4D,$15,$4D,$15,$41,$15,$42,$15 ;
                    db $4D,$15,$4D,$15,$43,$15,$44,$15 ;
                    db $4D,$15,$4E,$15,$45,$15,$5D,$15 ;
                    db $5C,$15,$50,$15,$5C,$15,$60,$15 ;
                    db $51,$15,$52,$15,$61,$15,$62,$15 ;
                    db $53,$15,$54,$15,$63,$15,$64,$15 ;
                    db $55,$15,$5D,$15,$65,$15,$5D,$15 ;
                    db $5C,$15,$70,$15,$5C,$15,$46,$15 ;
                    db $71,$15,$72,$15,$47,$15,$48,$15 ;
                    db $73,$15,$74,$15,$49,$15,$4A,$15 ;
                    db $75,$15,$5D,$15,$4B,$15,$5D,$15 ;
                    db $5C,$15,$56,$15,$5C,$15,$66,$15 ;
                    db $57,$15,$58,$15,$67,$15,$68,$15 ;
                    db $59,$15,$5A,$15,$69,$15,$6A,$15 ;
                    db $5B,$15,$5D,$15,$6B,$15,$5D,$15 ;
                    db $5C,$15,$76,$15,$5E,$15,$6C,$15 ;
                    db $77,$15,$78,$15,$6C,$15,$6C,$15 ;
                    db $79,$15,$7A,$15,$6C,$15,$6C,$15 ;
                    db $7B,$15,$5D,$15,$6C,$15,$6D,$15 ;
                    db $04,$15,$05,$15,$04,$15,$05,$15 ;
                    db $06,$15,$34,$15,$06,$15,$34,$15 ;
                    db $34,$15,$29,$15,$34,$15,$19,$15 ;
                    db $2A,$15,$2B,$15,$1A,$15,$1B,$15 ;
                    db $2C,$15,$38,$15,$1C,$15,$38,$15 ;
                    db $34,$15,$19,$15,$34,$15,$19,$15 ;
                    db $1A,$15,$1B,$15,$1A,$15,$1B,$15 ;
                    db $1C,$15,$38,$15,$1C,$15,$38,$15 ;
                    db $34,$15,$09,$15,$34,$15,$19,$15 ;
                    db $0A,$15,$0B,$15,$1A,$15,$1B,$15 ;
                    db $24,$00,$24,$00,$24,$00,$24,$00 ;
                    db $34,$15,$34,$15,$34,$15,$34,$15 ;
                    db $34,$15,$36,$15,$34,$15,$36,$15 ;
                    db $37,$15,$38,$15,$37,$15,$28,$15 ;
                    db $34,$15,$09,$1D,$34,$15,$34,$15 ;
                    db $09,$1D,$0A,$1D,$19,$1D,$1A,$1D ;
                    db $0B,$1D,$0C,$1D,$1B,$1D,$1C,$1D ;
                    db $0C,$5D,$0B,$5D,$1C,$5D,$1B,$5D ;
                    db $34,$15,$8D,$1D,$9C,$1D,$9D,$1D ;
                    db $AC,$1D,$AD,$1D,$BC,$1D,$BD,$1D ;
                    db $8C,$1D,$8E,$1D,$BB,$1D,$9E,$1D ;
                    db $AD,$5D,$AC,$5D,$BD,$5D,$BC,$5D ;
                    db $0A,$55,$09,$55,$1A,$55,$19,$55 ;
                    db $00,$15,$01,$15,$10,$15,$11,$15 ;
                    db $BB,$1D,$BC,$1D,$34,$1D,$88,$1D ;
                    db $BD,$1D,$BC,$1D,$89,$1D,$8C,$1D ;
                    db $BD,$1D,$BC,$1D,$8D,$1D,$89,$5D ;
                    db $34,$15,$34,$15,$34,$15,$CE,$15 ;
                    db $EC,$15,$ED,$15,$FC,$15,$FD,$15 ;
                    db $EE,$15,$EF,$15,$FE,$15,$FF,$15 ;
                    db $34,$15,$34,$15,$CF,$15,$34,$15 ;
                    db $CE,$15,$CF,$15,$34,$15,$DE,$15 ;
                    db $D8,$15,$D9,$15,$C9,$15,$FD,$15 ;
                    db $C1,$15,$C2,$15,$FE,$15,$DF,$15 ;
                    db $CE,$15,$CF,$15,$DE,$15,$34,$15 ;
                    db $CE,$15,$CF,$15,$34,$15,$DE,$15 ;
                    db $D8,$15,$D9,$15,$6E,$15,$FD,$15 ;
                    db $C1,$15,$C2,$15,$FE,$15,$6F,$15 ;
                    db $CE,$15,$CF,$15,$DE,$15,$34,$15 ;
                    db $CE,$15,$CF,$15,$34,$15,$34,$15 ;
                    db $CE,$15,$CF,$15,$34,$15,$34,$15 ;
                    db $34,$1D,$A8,$1D,$34,$1D,$A8,$1D ;
                    db $A9,$1D,$8A,$1D,$B9,$1D,$B9,$1D ;
                    db $34,$15,$DE,$15,$CE,$15,$CF,$15 ;
                    db $C9,$15,$FD,$15,$D8,$15,$D9,$15 ;
                    db $FE,$15,$DF,$15,$C1,$15,$C2,$15 ;
                    db $DE,$15,$34,$15,$CE,$15,$CF,$15 ;
                    db $1D,$1D,$1E,$1D,$2D,$1D,$2E,$1D ;
                    db $1F,$1D,$29,$1D,$2F,$1D,$39,$1D ;
                    db $37,$15,$38,$15,$37,$15,$38,$15 ;
                    db $34,$15,$DE,$15,$34,$15,$34,$15 ;
                    db $6E,$15,$FD,$15,$34,$15,$34,$15 ;
                    db $FE,$15,$6F,$15,$34,$15,$34,$15 ;
                    db $DE,$15,$34,$15,$34,$15,$34,$15 ;
                    db $3F,$1D,$2A,$1D,$25,$1D,$3A,$1D ;
                    db $34,$15,$26,$95,$24,$95,$16,$95 ;
                    db $27,$95,$38,$15,$17,$95,$18,$95 ;
                    db $80,$1D,$81,$1D,$90,$1D,$91,$1D ;
                    db $82,$1D,$83,$1D,$92,$1D,$93,$1D ;
                    db $BD,$1D,$BE,$1D,$88,$1D,$34,$1D ;
                    db $B0,$1D,$B1,$1D,$B2,$1D,$2B,$1D ;
                    db $20,$15,$21,$15,$30,$15,$31,$15 ;
                    db $02,$15,$03,$15,$12,$15,$13,$15 ;
                    db $B1,$5D,$B0,$5D,$2C,$1D,$B2,$5D ;
                    db $34,$15,$34,$1D,$34,$15,$34,$1D ;
                    db $34,$1D,$98,$1D,$34,$1D,$A8,$1D ;
                    db $89,$1D,$8A,$1D,$99,$1D,$9A,$1D ;
                    db $8B,$1D,$89,$5D,$9B,$1D,$99,$5D ;
                    db $9C,$1D,$34,$1D,$AC,$1D,$34,$1D ;
                    db $24,$15,$16,$15,$34,$15,$26,$15 ;
                    db $17,$15,$18,$15,$27,$15,$28,$15 ;
                    db $B3,$1D,$3B,$1D,$34,$1D,$8E,$1D ;
                    db $3C,$1D,$B3,$5D,$8F,$1D,$34,$1D ;
                    db $34,$1D,$A8,$1D,$34,$1D,$A8,$1D ;
                    db $A9,$1D,$8A,$1D,$B9,$1D,$B9,$1D ;
                    db $8B,$1D,$A9,$5D,$B9,$1D,$BA,$1D ;
                    db $AC,$1D,$34,$1D,$AC,$1D,$34,$1D ;
                    db $34,$15,$34,$15,$0D,$1D,$0E,$1D ;
                    db $34,$15,$34,$15,$0F,$1D,$34,$15 ;
                    db $1D,$1D,$1E,$1D,$2D,$1D,$2E,$1D ;
                    db $1F,$1D,$29,$1D,$2F,$1D,$39,$1D ;
                    db $37,$15,$38,$15,$37,$15,$38,$15 ;
                    db $34,$1D,$A8,$1D,$34,$1D,$B8,$1D ;
                    db $8B,$1D,$A9,$5D,$B9,$1D,$B9,$1D ;
                    db $AC,$1D,$34,$1D,$BA,$1D,$34,$1D ;
                    db $3D,$1D,$3E,$1D,$34,$15,$15,$1D ;
                    db $3F,$1D,$2A,$1D,$25,$1D,$3A,$1D ;
                    db $34,$15,$26,$95,$24,$95,$16,$95 ;
                    db $27,$95,$38,$15,$17,$95,$18,$95 ;
                    db $80,$1D,$81,$1D,$90,$1D,$91,$1D ;
                    db $82,$1D,$83,$1D,$92,$1D,$93,$1D ;
                    db $32,$15,$22,$15,$10,$15,$11,$15 ;
                    db $22,$15,$23,$15,$10,$15,$11,$15 ;
                    db $33,$15,$00,$15,$10,$15,$11,$15 ;
                    db $A0,$1D,$A1,$1D,$10,$15,$11,$15 ;
                    db $A2,$1D,$A3,$1D,$10,$15,$11,$15 ;
                    db $33,$15,$34,$15,$10,$15,$11,$15 ;
                    db $85,$15,$87,$15,$95,$15,$97,$15 ;
                    db $84,$15,$86,$15,$94,$15,$96,$15 ;
                    db $85,$15,$86,$15,$95,$15,$96,$15 ;
                    db $84,$15,$87,$15,$94,$15,$97,$15 ;
                    db $84,$15,$85,$15,$94,$15,$95,$15 ;
                    db $86,$15,$85,$15,$96,$15,$95,$15 ;
                    db $A6,$15,$A7,$15,$B6,$15,$B7,$15 ;
                    db $94,$15,$A6,$15,$B4,$15,$B6,$15 ;
                    db $A6,$15,$A6,$15,$B6,$15,$B6,$15 ;
                    db $94,$15,$A7,$15,$B4,$15,$B7,$15 ;
                    db $24,$10,$24,$10,$24,$10,$24,$10 ;
                    db $0E,$15,$0F,$15,$1E,$15,$1F,$15 ;
                    db $02,$1D,$03,$1D,$12,$1D,$13,$1D ;
                    db $20,$1D,$21,$1D,$30,$1D,$31,$1D ;
                    db $2E,$15,$2F,$15,$3E,$15,$3F,$15 ;
                    db $22,$1D,$23,$1D,$32,$1D,$33,$1D ;
                    db $20,$1D,$21,$1D,$1C,$15,$1D,$15 ;
                    db $28,$15,$29,$15,$10,$1D,$11,$1D ;
                    db $2A,$15,$2B,$15,$12,$1D,$13,$1D ;
                    db $6C,$15,$6D,$15,$7C,$15,$7D,$15 ;
                    db $4E,$15,$4F,$15,$5E,$15,$5F,$15 ;
                    db $6E,$15,$6F,$15,$7E,$15,$7F,$15 ;
                    db $48,$1D,$49,$1D,$58,$1D,$59,$1D ;
                    db $4A,$1D,$4B,$1D,$5A,$1D,$5B,$1D ;
                    db $0C,$15,$0D,$15,$1C,$15,$1D,$15 ;
                    db $68,$1D,$69,$1D,$78,$1D,$79,$1D ;
                    db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D ;
                    db $28,$15,$29,$15,$38,$15,$39,$15 ;
                    db $2A,$15,$2B,$15,$3A,$15,$3B,$15 ;
                    db $08,$15,$09,$15,$18,$15,$19,$15 ;
                    db $0A,$15,$0B,$15,$1A,$15,$1B,$15 ;
                    db $06,$1D,$07,$1D,$16,$1D,$17,$15 ;
                    db $04,$15,$05,$1D,$14,$1D,$15,$1D ;
                    db $06,$1D,$03,$1D,$16,$1D,$13,$1D ;
                    db $26,$1D,$27,$1D,$36,$1D,$37,$1D ;
                    db $24,$1D,$25,$1D,$34,$1D,$35,$1D ;
                    db $26,$1D,$23,$1D,$36,$1D,$33,$1D ;
                    db $2C,$15,$2D,$15,$3C,$15,$3D,$15 ;
                    db $3D,$15,$3C,$15,$3C,$15,$3D,$15 ;
                    db $00,$1D,$01,$1D,$10,$1D,$11,$1D ;

DATA_0FAE02:        db $48,$01,$48,$01,$22,$07,$2E,$08 ;
                    db $26,$0A,$B2,$0B,$3A,$11,$80,$12 ;
                    db $30,$14,$76,$15,$3A,$11,$3A,$11 ;
                    db $3A,$11,$80,$12,$00,$00,$22,$01 ;
                    db $AC,$01,$AC,$01,$04,$05,$2C,$06 ;
                    db $F8,$06,$94,$07,$CE,$07,$3E,$15 ;
                    db $08,$08,$A0,$08,$00,$0A,$A8,$0A ;
                    db $76,$0B,$22,$0C,$FA,$0D,$A4,$0F ;
                    db $BC,$11,$58,$15,$22,$01,$EA,$11 ;
                    db $AA,$15,$DA,$15,$3E,$15,$DA,$15 ;
                    db $DA,$15,$4A,$15,$58,$15,$00,$00 ;
                    db $76,$0B,$94,$07,$F8,$06,$AC,$01 ;
                    db $04,$05,$A4,$0F,$BC,$11,$EA,$11 ;
                    db $0E,$12,$94,$07,$68,$15,$32,$00 ;
                    db $32,$00,$F4,$14,$10,$09,$28,$15 ;
                    db $32,$00,$0E,$15,$68,$06,$68,$06 ;
                    db $68,$06,$C8,$15,$68,$06,$A0,$13 ;
                    db $36,$13,$68,$06,$68,$06,$84,$15 ;

DATA_0FAE92:        db $FE,$00,$B9,$B8,$B6,$FE,$00,$BE ;
                    db $C3,$C6,$FE,$B4,$B1,$BC,$BD,$B0 ;
                    db $B5,$FE,$C0,$C1,$C0,$C1,$C0,$C4 ;
                    db $FE,$B2,$B3,$B2,$B3,$B2,$B3,$B6 ;
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6 ;
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6 ;
                    db $FF,$FE,$B9,$B8,$FE,$BE,$C3,$FE ;
                    db $BE,$C3,$FF,$FE,$00,$00,$BA,$B0 ;
                    db $B5,$FE,$00,$BF,$C1,$C0,$C4,$FE ;
                    db $00,$B9,$B3,$B2,$B3,$B6,$FE,$00 ;
                    db $BE,$C3,$C2,$C3,$C6,$FE,$00,$BA ;
                    db $BC,$BD,$BC,$BD,$B0,$B5,$FE,$BF ;
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE ;
                    db $B9,$B3,$B2,$B3,$B2,$B3,$B2,$B3 ;
                    db $FE,$BE,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$FE,$BE,$C3,$C2,$C3,$C2,$C3 ;
                    db $C2,$C3,$FF,$FE,$00,$00,$00,$00 ;
                    db $C7,$FE,$00,$00,$00,$BF,$C4,$FE ;
                    db $00,$00,$00,$B9,$B3,$B6,$00,$B9 ;
                    db $B8,$BB,$B8,$B6,$FE,$00,$00,$00 ;
                    db $BE,$C3,$C6,$00,$BE,$C3,$C2,$C3 ;
                    db $C6,$FE,$00,$00,$B4,$B1,$BC,$BD ;
                    db $B0,$B1,$BC,$BD,$BC,$BD,$B0,$B5 ;
                    db $FE,$00,$00,$C0,$C1,$C0,$C1,$C0 ;
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE ;
                    db $B9,$B8,$B2,$B3,$B2,$B3,$B2,$B3 ;
                    db $B2,$B3,$B2,$B3,$B2,$B3,$FE,$BE ;
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C2,$C3,$FE,$BE,$C3 ;
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3 ;
                    db $C2,$C3,$C2,$C3,$FF,$FE,$00,$00 ;
                    db $00,$00,$C7,$FE,$00,$00,$00,$BF ;
                    db $C4,$FE,$00,$B9,$B8,$BB,$B3,$BB ;
                    db $B8,$B6,$FE,$00,$BE,$C3,$C2,$C3 ;
                    db $C2,$C3,$C6,$FE,$B4,$B1,$BC,$BD ;
                    db $BC,$BD,$BC,$BD,$B0,$B5,$FE,$C0 ;
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C1,$C0 ;
                    db $C4,$FE,$B2,$B3,$B2,$B3,$B2,$B3 ;
                    db $B2,$B3,$B2,$B3,$FE,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$FE ;
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3 ;
                    db $C2,$C3,$FF,$FE,$B6,$FE,$C6,$FE ;
                    db $C6,$FF,$FE,$B4,$B1,$FE,$C0,$C1 ;
                    db $FE,$B2,$B3,$FE,$C2,$C3,$FE,$C2 ;
                    db $C3,$FF,$FE,$00,$00,$00,$00,$00 ;
                    db $B9,$B8,$B6,$FE,$00,$00,$00,$00 ;
                    db $00,$BE,$C3,$C6,$FE,$00,$00,$00 ;
                    db $00,$B4,$B1,$BC,$BD,$B0,$B5,$FE ;
                    db $00,$00,$00,$00,$C0,$C1,$C0,$C1 ;
                    db $C0,$C4,$FE,$B9,$B8,$BB,$B8,$B2 ;
                    db $B3,$B2,$B3,$B2,$B3,$FE,$BE,$C3 ;
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3 ;
                    db $FE,$BE,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$FF,$FE,$00,$00,$00 ;
                    db $00,$C7,$00,$C7,$FE,$00,$00,$00 ;
                    db $BF,$C4,$BF,$C4,$FE,$00,$B9,$B8 ;
                    db $BB,$B3,$BB,$B3,$B6,$FE,$00,$BE ;
                    db $C3,$C2,$C3,$C2,$C3,$C6,$FE,$B4 ;
                    db $B1,$BC,$BD,$BC,$BD,$BC,$BD,$B0 ;
                    db $B5,$FE,$C0,$C1,$C0,$C1,$C0,$C1 ;
                    db $C0,$C1,$C0,$C4,$FE,$B2,$B3,$B2 ;
                    db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$FE ;
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3 ;
                    db $C2,$C3,$FE,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C2,$C3,$FF,$FE,$00 ;
                    db $00,$BA,$B0,$B5,$00,$00,$00,$C7 ;
                    db $FE,$00,$BF,$C1,$C0,$C4,$00,$00 ;
                    db $BF,$C4,$FE,$00,$B9,$B3,$B2,$B3 ;
                    db $B6,$00,$B9,$B3,$BB,$B8,$B6,$FE ;
                    db $00,$BE,$C3,$C2,$C3,$C6,$00,$BE ;
                    db $C3,$C2,$C3,$C6,$FE,$B4,$B1,$BC ;
                    db $BD,$BC,$BD,$B0,$B1,$BC,$BD,$BC ;
                    db $BD,$B0,$B1,$B0,$B5,$FE,$C0,$C1 ;
                    db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1 ;
                    db $C0,$C1,$C0,$C1,$C0,$C4,$FE,$B2 ;
                    db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B2 ;
                    db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B6 ;
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C6,$FE,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C6,$FF,$FE,$00,$00 ;
                    db $00,$00,$C7,$FE,$00,$00,$00,$BF ;
                    db $C4,$FE,$00,$B9,$B8,$BB,$B3,$B6 ;
                    db $FE,$00,$BE,$C3,$C2,$C3,$C6,$FE ;
                    db $B4,$B1,$BC,$BD,$BC,$BD,$B0,$B5 ;
                    db $FE,$C0,$C1,$C0,$C1,$C0,$C1,$C0 ;
                    db $C4,$FE,$B2,$B3,$B2,$B3,$B2,$B3 ;
                    db $B2,$B3,$FE,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$FE,$C2,$C3,$C2,$C3 ;
                    db $C2,$C3,$C2,$C3,$FF,$FE,$B4,$B1 ;
                    db $B0,$B5,$FE,$C0,$C1,$C0,$C8,$FE ;
                    db $B2,$B3,$B2,$B3,$B6,$FE,$C2,$C3 ;
                    db $C2,$C3,$C6,$FE,$C2,$C3,$C2,$C3 ;
                    db $C6,$FF,$FE,$00,$00,$00,$00,$00 ;
                    db $B4,$B5,$00,$C7,$B4,$B5,$FE,$00 ;
                    db $00,$00,$00,$00,$C0,$C8,$BF,$C8 ;
                    db $C0,$C8,$FE,$00,$00,$00,$B9,$B8 ;
                    db $B2,$B3,$BB,$B3,$B2,$B3,$B6,$FE ;
                    db $00,$00,$00,$BE,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C6,$FE,$00,$BA,$B0 ;
                    db $B1,$BC,$BD,$BC,$BD,$BC,$BD,$BC ;
                    db $BD,$B0,$B5,$FE,$BF,$C1,$C0,$C1 ;
                    db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1 ;
                    db $C0,$C4,$FE,$B9,$B3,$B2,$B3,$B2 ;
                    db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B2 ;
                    db $B3,$BB,$B8,$B6,$FE,$BE,$C3,$C2 ;
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C2,$C3,$C6,$FE,$BE ;
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C6 ;
                    db $FF,$FE,$00,$00,$B4,$B1,$B0,$B5 ;
                    db $FE,$00,$00,$C0,$C1,$C0,$C4,$FE ;
                    db $BB,$B8,$B2,$B3,$B2,$B3,$B6,$FE ;
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C6,$FE ;
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C6,$FF ;
                    db $FE,$00,$00,$00,$00,$00,$00,$00 ;
                    db $C7,$FE,$00,$00,$00,$00,$00,$00 ;
                    db $BF,$C4,$FE,$00,$00,$B9,$B8,$B6 ;
                    db $00,$B9,$B3,$BB,$B8,$B6,$FE,$00 ;
                    db $00,$BE,$C3,$C6,$00,$BE,$C3,$C2 ;
                    db $C3,$C6,$FE,$00,$00,$BA,$BC,$BD ;
                    db $B0,$B1,$BC,$BD,$BC,$BD,$B0,$B5 ;
                    db $FE,$00,$BF,$C1,$C0,$C1,$C0,$C1 ;
                    db $C0,$C1,$C0,$C1,$C0,$C4,$FE,$00 ;
                    db $B9,$B3,$B2,$B3,$B2,$B3,$B2,$B3 ;
                    db $B2,$B3,$B2,$B3,$B6,$FE,$00,$BE ;
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C6,$FE,$B4,$B1,$BC ;
                    db $BD,$BC,$BD,$BC,$BD,$BC,$BD,$BC ;
                    db $BD,$BC,$BD,$B0,$B5,$FE,$C0,$C1 ;
                    db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1 ;
                    db $C0,$C1,$C0,$C1,$C0,$C4,$FE,$B2 ;
                    db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B2 ;
                    db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B6 ;
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C6,$FE,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2 ;
                    db $C3,$C2,$C3,$C6,$FF ;

DATA_0FB2EF:        db $03,$04,$05,$FE,$12,$13,$16,$06 ;
                    db $07,$FE,$12,$13,$16,$16,$16,$17 ;
                    db $18,$FE,$12,$13,$16,$16,$16,$16 ;
                    db $08,$09,$18,$FE,$12,$13,$16,$16 ;
                    db $16,$16,$16,$16,$19,$1A,$18,$FE ;
                    db $12,$13,$16,$16,$16,$16,$16,$16 ;
                    db $16,$16,$0A,$1C,$18,$FE,$12,$13 ;
                    db $16,$16,$16,$16,$16,$16,$16,$16 ;
                    db $16,$08,$1B,$1C,$18,$FE,$12,$13 ;
                    db $16,$16,$16,$16,$16,$16,$16,$16 ;
                    db $16,$16,$16,$19,$0C,$0B,$18,$FE ;
                    db $12,$13,$16,$16,$16,$16,$16,$16 ;
                    db $16,$16,$16,$16,$16,$16,$16,$0A ;
                    db $1C,$0B,$18,$FE,$12,$13,$16,$16 ;
                    db $16,$16,$16,$16,$16,$16,$16,$16 ;
                    db $16,$16,$16,$16,$08,$1B,$1C,$0B ;
                    db $18,$FE,$12,$13,$16,$16,$16,$16 ;
                    db $16,$16,$16,$16,$16,$16,$16,$16 ;
                    db $16,$16,$16,$16,$19,$1C,$1C,$0B ;
                    db $18,$FF,$FE,$13,$24,$FE,$FE,$13 ;
                    db $23,$16,$16,$16,$16,$32,$FF,$FE ;
                    db $13,$27,$FE,$13,$2C,$2D,$26,$FE ;
                    db $13,$20,$2E,$2F,$FE,$13,$16,$16 ;
                    db $16,$16,$16,$24,$FE,$13,$16,$16 ;
                    db $16,$16,$16,$16,$16,$16,$0A,$32 ;
                    db $FF,$FE,$13,$23,$FE,$13,$20,$FF ;
                    db $FE,$13,$24,$FE,$FE,$13,$27,$16 ;
                    db $16,$26,$FE,$FF,$FE,$FE,$13,$24 ;
                    db $FE,$13,$16,$16,$16,$2B,$FE,$FE ;
                    db $13,$16,$16,$16,$25,$16,$16,$16 ;
                    db $26,$FE,$13,$16,$23,$16,$24,$16 ;
                    db $16,$16,$24,$FE,$13,$16,$20,$16 ;
                    db $16,$16,$16,$16,$27,$FF,$FE,$13 ;
                    db $24,$FE,$13,$16,$16,$25,$FE,$13 ;
                    db $26,$FE,$13,$16,$16,$16,$24,$16 ;
                    db $27,$FE,$13,$16,$16,$16,$16,$16 ;
                    db $2C,$2D,$16,$0A,$32,$FF,$FE,$FE ;
                    db $13,$16,$16,$25,$FE,$13,$16,$16 ;
                    db $27,$FE,$13,$16,$16,$16,$16,$2C ;
                    db $2D,$FE,$13,$24,$23,$16,$16,$16 ;
                    db $2E,$2F,$16,$0A,$32,$FE,$13,$16 ;
                    db $16,$16,$16,$16,$16,$16,$16,$16 ;
                    db $08,$1B,$33,$FE,$13,$16,$16,$16 ;
                    db $16,$28,$20,$22,$FE,$13,$16,$16 ;
                    db $16,$16,$16,$29,$2A,$16,$16,$16 ;
                    db $16,$26,$21,$0A,$30,$FE,$13,$16 ;
                    db $16,$16,$16,$16,$16,$16,$16,$16 ;
                    db $16,$16,$16,$16,$20,$FF ;

DATA_0FB46D:        db $1A,$1B,$FE,$01,$02,$FE,$01,$02 ;
                    db $FE,$01,$02,$FE,$01,$02,$FE,$01 ;
                    db $02,$FE,$01,$02,$FE,$01,$26,$FE ;
                    db $2C,$2D,$FE,$30,$31,$32,$FF,$04 ;
                    db $05,$06,$07,$FE,$0D,$0E,$0F,$10 ;
                    db $FE,$16,$17,$18,$19,$FE,$1E,$1F ;
                    db $20,$21,$FE,$1E,$17,$18,$21,$FE ;
                    db $27,$1F,$28,$29,$FF,$FE,$11,$14 ;
                    db $FE,$1C,$1D,$FF,$FE,$22,$23,$FE ;
                    db $24,$25,$FE,$2A,$2B,$FE,$2E,$2F ;
                    db $FE,$33,$34,$FF,$FE,$41,$42,$43 ;
                    db $44,$FE,$45,$46,$47,$48,$FE,$49 ;
                    db $4A,$4B,$4C,$FE,$4D,$4E,$4F,$50 ;
                    db $FE,$51,$52,$53,$54,$FF,$FE,$0C ;
                    db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C ;
                    db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$FE ;
                    db $12,$13,$12,$13,$12,$13,$12,$13 ;
                    db $12,$13,$12,$13,$12,$13,$12,$13 ;
                    db $FE,$36,$37,$38,$36,$39,$3A,$3B ;
                    db $3B,$36,$3A,$3B,$3B,$3B,$36,$3A ;
                    db $38,$FE,$3C,$3D,$3E,$3C,$3F,$3D ;
                    db $3E,$3E,$3C,$3D,$3E,$3E,$3E,$3C ;
                    db $3D,$3E,$FF,$22,$23,$FE,$24,$25 ;
                    db $FE,$2A,$2B,$FE,$33,$34,$FF ;

DATA_0FB52C:        db $08,$FE,$0C,$FF,$14,$15,$16,$17 ;
                    db $FE,$1D,$1E,$1F,$20,$FE,$1D,$1E ;
                    db $1F,$20,$FE,$1D,$2A,$2B,$20,$FF ;
                    db $18,$19,$1A,$1B,$FE,$21,$22,$23 ;
                    db $24,$FE,$21,$22,$23,$24,$FE,$21 ;
                    db $22,$23,$24,$FF,$00,$00,$00,$00 ;
                    db $01,$02,$FE,$00,$00,$01,$03,$05 ;
                    db $06,$04,$02,$FE,$01,$03,$05,$09 ;
                    db $09,$09,$09,$06,$04,$02,$FE,$05 ;
                    db $09,$09,$09,$09,$09,$09,$09,$09 ;
                    db $06,$FF,$01,$03,$04,$03,$04,$02 ;
                    db $FE,$07,$08,$09,$09,$08,$0A,$FE ;
                    db $0B,$0C,$09,$09,$0C,$0D,$0E,$FE ;
                    db $11,$09,$09,$09,$09,$12,$13,$FE ;
                    db $11,$18,$19,$1A,$1B,$12,$13,$FE ;
                    db $11,$21,$22,$23,$24,$12,$13,$FE ;
                    db $11,$21,$22,$23,$24,$12,$13,$FE ;
                    db $11,$21,$22,$23,$24,$12,$13,$FF ;
                    db $02,$10,$10,$10,$10,$10,$10,$10 ;
                    db $10,$10,$10,$10,$10,$10,$10,$01 ;
                    db $FE,$35,$04,$03,$04,$03,$04,$03 ;
                    db $04,$03,$04,$03,$04,$03,$04,$03 ;
                    db $36,$FF ;

DATA_0FB5DE:        db $00,$00,$00,$00,$00,$00,$00,$07 ;
                    db $01,$02,$03,$04,$01,$02,$03,$04 ;
                    db $00,$00,$00,$00,$00,$00,$10,$11 ;
                    db $0A,$0B,$0C,$0D,$0A,$0B,$0C,$0D ;
                    db $00,$00,$17,$18,$00,$00,$19,$15 ;
                    db $16,$12,$14,$15,$16,$12,$14,$15 ;
                    db $23,$24,$25,$22,$23,$24,$25,$1F ;
                    db $20,$21,$1E,$1F,$20,$21,$1E,$1F ;
                    db $FF,$08,$09,$03,$04,$05,$06,$00 ;
                    db $00,$00,$00,$00,$07,$08,$09,$03 ;
                    db $04,$0A,$0B,$0C,$0D,$0E,$0F,$00 ;
                    db $00,$00,$00,$10,$11,$0A,$0B,$0C ;
                    db $0D,$16,$12,$14,$15,$16,$12,$17 ;
                    db $18,$00,$00,$19,$15,$16,$12,$14 ;
                    db $15,$20,$21,$1E,$1F,$20,$21,$1E ;
                    db $22,$23,$24,$25,$1F,$20,$21,$1E ;
                    db $26,$FF,$01,$02,$03,$04,$08,$09 ;
                    db $03,$04,$08,$09,$03,$04,$05,$06 ;
                    db $00,$00,$0A,$0B,$0C,$0D,$0A,$0B ;
                    db $0C,$0D,$0A,$0B,$0C,$0D,$0E,$0F ;
                    db $00,$00,$0A,$12,$13,$0D,$0A,$12 ;
                    db $13,$0D,$0A,$12,$14,$15,$16,$12 ;
                    db $17,$18,$1A,$1B,$1C,$1D,$1A,$1B ;
                    db $1C,$1D,$1A,$1B,$1E,$1F,$20,$21 ;
                    db $1E,$22,$FF ;

DATA_0FB6A1:        db $91,$E0,$42,$E0,$10,$E0,$50,$A8 ;
                    db $80,$A8,$00,$E0,$60,$8C,$B0,$8C ;
                    db $00,$E0,$50,$A8,$80,$A8,$00,$E0 ;
                    db $70,$70,$90,$70,$50,$A8,$B0,$A8 ;
                    db $70,$9C,$00,$E0,$00,$E0,$40,$A8 ;
                    db $A0,$A8,$00,$E0,$70,$24,$E0,$24 ;
                    db $F0,$E3,$12,$E0,$60,$E0,$50,$E0 ;
                    db $43,$E0,$10,$45,$10,$6D,$00,$61 ;
                    db $30,$15,$20,$55,$00,$29,$60,$A9 ;
                    db $70,$C9,$82,$AD,$92,$CD,$A0,$B9 ;
                    db $B0,$D9,$40,$2D,$50,$4D,$07,$20 ;
                    db $25,$00,$15,$1C,$00,$E0,$10,$45 ;
                    db $10,$6D,$30,$15,$20,$55,$00,$29 ;
                    db $40,$2D,$50,$4D,$07,$20,$25,$00 ;
                    db $15,$1C,$00,$E0,$10,$45,$10,$6D ;
                    db $00,$61,$30,$15,$20,$55,$00,$29 ;
                    db $60,$A9,$70,$C9,$82,$AD,$92,$CD ;
                    db $A0,$B9,$B0,$D9,$40,$2D,$50,$4D ;
                    db $07,$20,$25,$00,$15,$1C,$00,$E0 ;
                    db $10,$45,$10,$6D,$30,$15,$20,$55 ;
                    db $00,$29,$40,$2D,$50,$4D,$07,$20 ;
                    db $25,$00,$15,$1C,$00,$E0,$10,$45 ;
                    db $10,$6D,$00,$61,$30,$15,$20,$55 ;
                    db $00,$29,$60,$A9,$70,$C9,$82,$AD ;
                    db $92,$CD,$A0,$B9,$B0,$D9,$40,$2D ;
                    db $50,$4D,$07,$20,$25,$00,$15,$1C ;
                    db $00,$E0,$10,$45,$10,$6D,$30,$15 ;
                    db $20,$55,$00,$29,$40,$2D,$50,$4D ;
                    db $07,$20,$25,$00,$15,$1C,$00,$E0 ;
                    db $10,$45,$10,$6D,$00,$61,$30,$15 ;
                    db $20,$55,$00,$29,$60,$A9,$70,$C9 ;
                    db $82,$AD,$92,$CD,$A0,$B9,$B0,$D9 ;
                    db $40,$2D,$50,$4D,$07,$20,$25,$00 ;
                    db $15,$1C,$00,$E0,$10,$45,$10,$6D ;
                    db $30,$15,$20,$55,$00,$29,$40,$2D ;
                    db $50,$4D,$07,$20,$25,$00,$15,$1C ;
                    db $F0,$E3,$91,$E0,$4E,$E0,$10,$E0 ;
                    db $A0,$E0,$03,$A8,$00,$BC,$00,$E0 ;
                    db $02,$A8,$00,$E0,$00,$A4,$01,$AC ;
                    db $00,$E0,$03,$A8,$00,$E0,$01,$A4 ;
                    db $01,$AC,$08,$BC,$00,$E0,$F0,$E3 ;
                    db $46,$E0,$50,$E0,$03,$00,$03,$10 ;
                    db $19,$40,$19,$50,$3F,$40,$26,$08 ;
                    db $26,$18,$00,$E0,$03,$0C,$19,$4C ;
                    db $03,$1C,$19,$5C,$3F,$40,$26,$04 ;
                    db $26,$14,$00,$E0,$03,$08,$19,$48 ;
                    db $3A,$40,$26,$00,$49,$54,$45,$9C ;
                    db $60,$30,$00,$E0,$07,$0C,$13,$8C ;
                    db $07,$18,$13,$98,$3F,$80,$26,$04 ;
                    db $50,$30,$60,$60,$00,$E0,$50,$28 ;
                    db $07,$00,$13,$80,$07,$10,$13,$90 ;
                    db $3F,$80,$80,$54,$00,$E0,$07,$00 ;
                    db $13,$80,$07,$14,$13,$94,$3F,$80 ;
                    db $80,$44,$F0,$E3,$11,$E0,$4B,$E0 ;
                    db $31,$E0,$10,$00,$11,$0C,$12,$10 ;
                    db $13,$1C,$14,$24,$15,$28,$16,$30 ;
                    db $16,$4C,$17,$54,$18,$5C,$19,$60 ;
                    db $1A,$64,$1B,$68,$1C,$6C,$16,$78 ;
                    db $1D,$80,$1E,$90,$07,$81,$10,$85 ;
                    db $11,$99,$00,$E0,$1F,$18,$20,$20 ;
                    db $21,$24,$22,$2C,$23,$30,$20,$38 ;
                    db $24,$40,$25,$50,$26,$58,$27,$5C ;
                    db $28,$64,$29,$6C,$2A,$74,$2B,$78 ;
                    db $2C,$88,$2D,$90,$2F,$98,$07,$81 ;
                    db $10,$85,$10,$99,$00,$E0,$10,$00 ;
                    db $11,$0C,$12,$10,$13,$1C,$14,$24 ;
                    db $15,$28,$16,$30,$16,$4C,$17,$54 ;
                    db $18,$5C,$19,$60,$1A,$64,$1B,$68 ;
                    db $1C,$6C,$16,$78,$1D,$80,$1E,$90 ;
                    db $07,$81,$10,$85,$11,$99,$00,$E0 ;
                    db $1F,$18,$20,$20,$21,$24,$22,$2C ;
                    db $23,$30,$20,$38,$24,$40,$25,$50 ;
                    db $26,$58,$27,$5C,$28,$64,$29,$6C ;
                    db $2A,$74,$2B,$78,$2C,$88,$2D,$90 ;
                    db $2F,$98,$07,$81,$10,$85,$10,$99 ;
                    db $00,$E0,$30,$00,$31,$18,$20,$20 ;
                    db $32,$24,$1B,$2C,$23,$30,$33,$38 ;
                    db $34,$40,$35,$48,$36,$54,$37,$58 ;
                    db $38,$5C,$39,$64,$3A,$68,$3B,$6C ;
                    db $3C,$70,$3D,$74,$3E,$78,$3F,$94 ;
                    db $07,$81,$11,$89,$10,$99,$00,$E0 ;
                    db $1F,$18,$20,$20,$21,$24,$22,$2C ;
                    db $23,$30,$20,$38,$24,$40,$25,$50 ;
                    db $26,$58,$27,$5C,$28,$64,$29,$6C ;
                    db $2A,$74,$2B,$78,$2C,$88,$2D,$90 ;
                    db $2F,$98,$07,$81,$10,$85,$10,$99 ;
                    db $00,$E0,$10,$00,$11,$0C,$12,$10 ;
                    db $13,$1C,$14,$24,$15,$28,$16,$30 ;
                    db $16,$4C,$17,$54,$18,$5C,$19,$60 ;
                    db $1A,$64,$1B,$68,$1C,$6C,$16,$78 ;
                    db $1D,$80,$1E,$90,$07,$81,$10,$85 ;
                    db $11,$99,$00,$E0,$1F,$18,$20,$20 ;
                    db $21,$24,$22,$2C,$23,$30,$20,$38 ;
                    db $24,$40,$25,$50,$26,$58,$27,$5C ;
                    db $28,$64,$29,$6C,$2A,$74,$2B,$78 ;
                    db $2C,$88,$2D,$90,$2F,$98,$07,$81 ;
                    db $10,$85,$10,$99,$00,$E0,$10,$00 ;
                    db $11,$0C,$12,$10,$13,$1C,$14,$24 ;
                    db $15,$28,$16,$30,$16,$4C,$17,$54 ;
                    db $18,$5C,$19,$60,$1A,$64,$1B,$68 ;
                    db $1C,$6C,$16,$78,$1D,$80,$1E,$90 ;
                    db $07,$81,$10,$85,$11,$99,$00,$E0 ;
                    db $1F,$18,$20,$20,$21,$24,$22,$2C ;
                    db $23,$30,$20,$38,$24,$40,$25,$50 ;
                    db $26,$58,$27,$5C,$28,$64,$29,$6C ;
                    db $2A,$74,$2B,$78,$2C,$88,$2D,$90 ;
                    db $2F,$98,$07,$81,$10,$85,$10,$99 ;
                    db $F0,$E3,$11,$E0,$4B,$E0,$31,$E0 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$07,$81,$10,$85,$11,$99 ;
                    db $00,$E0,$1F,$18,$20,$20,$21,$24 ;
                    db $22,$2C,$23,$30,$20,$38,$24,$40 ;
                    db $25,$50,$26,$58,$27,$5C,$28,$64 ;
                    db $29,$6C,$2A,$74,$2B,$78,$2C,$88 ;
                    db $2D,$90,$2F,$98,$07,$81,$10,$85 ;
                    db $10,$99,$00,$E0,$10,$00,$11,$0C ;
                    db $12,$10,$13,$1C,$14,$24,$15,$28 ;
                    db $16,$30,$16,$4C,$17,$54,$18,$5C ;
                    db $19,$60,$1A,$64,$1B,$68,$1C,$6C ;
                    db $16,$78,$1D,$80,$1E,$90,$07,$81 ;
                    db $10,$85,$11,$99,$00,$E0,$1F,$18 ;
                    db $20,$20,$21,$24,$22,$2C,$23,$30 ;
                    db $20,$38,$24,$40,$25,$50,$26,$58 ;
                    db $27,$5C,$28,$64,$29,$6C,$2A,$74 ;
                    db $2B,$78,$2C,$88,$2D,$90,$2F,$98 ;
                    db $07,$81,$10,$85,$10,$99,$00,$E0 ;
                    db $30,$00,$31,$18,$20,$20,$32,$24 ;
                    db $1B,$2C,$23,$30,$33,$38,$34,$40 ;
                    db $35,$48,$36,$54,$37,$58,$38,$5C ;
                    db $39,$64,$3A,$68,$3B,$6C,$3C,$70 ;
                    db $3D,$74,$3E,$78,$3F,$94,$07,$81 ;
                    db $11,$89,$10,$99,$00,$E0,$1F,$18 ;
                    db $20,$20,$21,$24,$22,$2C,$23,$30 ;
                    db $20,$38,$24,$40,$25,$50,$26,$58 ;
                    db $27,$5C,$28,$64,$29,$6C,$2A,$74 ;
                    db $2B,$78,$2C,$88,$2D,$90,$2F,$98 ;
                    db $07,$81,$10,$85,$10,$99,$10,$00 ;
                    db $11,$0C,$12,$10,$13,$1C,$14,$24 ;
                    db $15,$28,$16,$30,$16,$4C,$17,$54 ;
                    db $18,$5C,$19,$60,$1A,$64,$1B,$68 ;
                    db $1C,$6C,$16,$78,$1D,$80,$1E,$90 ;
                    db $07,$81,$10,$85,$11,$99,$00,$E0 ;
                    db $1F,$18,$20,$20,$21,$24,$22,$2C ;
                    db $23,$30,$20,$38,$24,$40,$25,$50 ;
                    db $26,$58,$27,$5C,$28,$64,$29,$6C ;
                    db $2A,$74,$2B,$78,$2C,$88,$2D,$90 ;
                    db $2F,$98,$07,$81,$10,$85,$10,$99 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$07,$81,$10,$85,$11,$99 ;
                    db $00,$E0,$1F,$18,$20,$20,$21,$24 ;
                    db $22,$2C,$23,$30,$20,$38,$24,$40 ;
                    db $25,$50,$26,$58,$27,$5C,$28,$64 ;
                    db $29,$6C,$2A,$74,$2B,$78,$2C,$88 ;
                    db $2D,$90,$2F,$98,$07,$81,$10,$85 ;
                    db $10,$99,$F0,$E3,$4B,$E0,$11,$E0 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$00,$E0,$1F,$18,$20,$20 ;
                    db $21,$24,$22,$2C,$23,$30,$20,$38 ;
                    db $24,$40,$25,$50,$26,$58,$27,$5C ;
                    db $28,$64,$29,$6C,$2A,$74,$2B,$78 ;
                    db $2C,$88,$2D,$90,$2F,$98,$00,$E0 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$00,$E0,$30,$00,$31,$18 ;
                    db $20,$20,$32,$24,$1B,$2C,$23,$30 ;
                    db $33,$38,$34,$40,$35,$48,$36,$54 ;
                    db $37,$58,$38,$5C,$39,$64,$3A,$68 ;
                    db $3B,$6C,$3C,$70,$3D,$74,$3E,$78 ;
                    db $3F,$94,$00,$E0,$1F,$18,$20,$20 ;
                    db $21,$24,$22,$2C,$23,$30,$20,$38 ;
                    db $24,$40,$25,$50,$26,$58,$27,$5C ;
                    db $28,$64,$29,$6C,$2A,$74,$2B,$78 ;
                    db $2C,$88,$2D,$90,$2F,$98,$00,$E0 ;
                    db $1F,$18,$20,$20,$21,$24,$22,$2C ;
                    db $23,$30,$20,$38,$24,$40,$25,$50 ;
                    db $26,$58,$27,$5C,$28,$64,$29,$6C ;
                    db $2A,$74,$2B,$78,$2C,$88,$2D,$90 ;
                    db $2F,$98,$00,$E0,$1F,$18,$20,$20 ;
                    db $21,$24,$22,$2C,$23,$30,$20,$38 ;
                    db $24,$40,$25,$50,$26,$58,$27,$5C ;
                    db $28,$64,$29,$6C,$2A,$74,$2B,$78 ;
                    db $2C,$88,$2D,$90,$2F,$98,$00,$E0 ;
                    db $1F,$18,$20,$20,$21,$24,$22,$2C ;
                    db $23,$30,$20,$38,$24,$40,$25,$50 ;
                    db $26,$58,$27,$5C,$28,$64,$29,$6C ;
                    db $2A,$74,$2B,$78,$2C,$88,$2D,$90 ;
                    db $2F,$98,$F0,$E3,$91,$E0,$45,$E0 ;
                    db $10,$E0,$20,$88,$10,$B8,$00,$7C ;
                    db $00,$E0,$90,$58,$A0,$48,$00,$E0 ;
                    db $B0,$98,$00,$E0,$10,$A4,$00,$68 ;
                    db $C0,$5C,$00,$E0,$00,$E0,$10,$A0 ;
                    db $00,$64,$D0,$90,$00,$E0,$10,$A4 ;
                    db $00,$68,$C0,$5C,$00,$E0,$00,$E0 ;
                    db $10,$A0,$00,$64,$D0,$90,$F0,$E3 ;
                    db $91,$E0,$70,$E0,$48,$E0,$20,$E0 ;
                    db $00,$69,$63,$81,$70,$89,$80,$91 ;
                    db $10,$95,$20,$99,$30,$9D,$93,$A1 ;
                    db $A0,$B1,$72,$B5,$00,$E0,$B0,$81 ;
                    db $D0,$85,$62,$89,$80,$95,$C0,$A1 ;
                    db $93,$A5,$A0,$B5,$61,$B9,$30,$68 ;
                    db $10,$70,$30,$98,$00,$E0,$10,$69 ;
                    db $21,$6D,$30,$75,$B0,$79,$D0,$7D ;
                    db $B0,$81,$D0,$85,$73,$89,$C0,$99 ;
                    db $90,$9D,$C0,$A1,$96,$A5,$30,$5C ;
                    db $00,$E0,$60,$61,$80,$65,$10,$69 ;
                    db $22,$6D,$30,$79,$90,$81,$A0,$85 ;
                    db $74,$89,$60,$9D,$97,$A1,$10,$40 ;
                    db $00,$E0,$60,$81,$80,$85,$40,$99 ;
                    db $50,$9D,$90,$A1,$A0,$A5,$80,$A9 ;
                    db $B0,$B5,$F0,$B9,$70,$BD,$10,$60 ;
                    db $10,$AC,$00,$E0,$07,$82,$77,$A1 ;
                    db $00,$E0,$07,$82,$77,$A1,$F0,$E3 ;
                    db $91,$E0,$4E,$E0,$10,$E0,$A0,$E0 ;
                    db $03,$A8,$00,$BC,$00,$E0,$02,$A8 ;
                    db $00,$E0,$00,$A4,$01,$AC,$00,$E0 ;
                    db $03,$A8,$00,$E0,$01,$A4,$00,$E0 ;
                    db $01,$A4,$01,$AC,$08,$BC,$00,$E0 ;
                    db $F0,$E3,$46,$E0,$50,$E0,$07,$00 ;
                    db $07,$10,$17,$60,$17,$70,$3F,$60 ;
                    db $26,$08,$90,$B8,$00,$E0,$05,$00 ;
                    db $05,$10,$17,$60,$17,$70,$3F,$60 ;
                    db $26,$08,$A0,$B4,$00,$E0,$05,$00 ;
                    db $17,$60,$39,$60,$47,$70,$60,$48 ;
                    db $90,$A8,$50,$38,$00,$E0,$05,$10 ;
                    db $17,$70,$3B,$68,$47,$64,$60,$58 ;
                    db $00,$E0,$05,$00,$17,$60,$05,$10 ;
                    db $17,$70,$3F,$60,$26,$08,$60,$58 ;
                    db $90,$B8,$00,$E0,$05,$00,$17,$60 ;
                    db $05,$10,$17,$70,$3F,$60,$26,$08 ;
                    db $80,$54,$00,$E0,$3F,$60,$80,$44 ;
                    db $80,$50,$00,$E0,$3F,$60,$80,$44 ;
                    db $80,$50,$F0,$E3,$91,$E0,$42,$E0 ;
                    db $10,$E0,$50,$B0,$80,$B0,$00,$E0 ;
                    db $70,$6C,$90,$6C,$F3,$A4,$00,$E0 ;
                    db $60,$74,$B0,$74,$40,$AC,$A0,$AC ;
                    db $00,$E0,$60,$80,$B0,$80,$F9,$A4 ;
                    db $00,$E0,$00,$E0,$60,$90,$60,$40 ;
                    db $C0,$40,$F2,$B4,$00,$E0,$70,$38 ;
                    db $E0,$38,$F4,$A4,$F0,$E3,$91,$E0 ;
                    db $42,$E0,$10,$E0,$50,$B0,$80,$B0 ;
                    db $00,$E0,$70,$6C,$90,$6C,$F3,$A4 ;
                    db $00,$E0,$60,$74,$B0,$74,$40,$AC ;
                    db $A0,$AC,$00,$E0,$60,$80,$B0,$80 ;
                    db $F9,$A4,$00,$E0,$00,$E0,$60,$90 ;
                    db $60,$40,$C0,$40,$F2,$B4,$00,$E0 ;
                    db $70,$38,$E0,$38,$F4,$A4,$F0,$E3 ;
                    db $91,$E0,$4E,$E0,$10,$E0,$A0,$E0 ;
                    db $03,$A8,$00,$BC,$00,$E0,$02,$A8 ;
                    db $00,$E0,$00,$A4,$01,$AC,$00,$E0 ;
                    db $03,$A8,$00,$E0,$01,$A4,$01,$AC ;
                    db $08,$BC,$00,$E0,$F0,$E3,$46,$E0 ;
                    db $50,$E0,$07,$00,$07,$10,$17,$60 ;
                    db $17,$70,$3F,$60,$26,$08,$90,$B8 ;
                    db $00,$E0,$05,$00,$05,$10,$17,$60 ;
                    db $17,$70,$3F,$60,$26,$08,$A0,$B4 ;
                    db $00,$E0,$05,$00,$17,$60,$39,$60 ;
                    db $47,$70,$60,$48,$90,$A8,$50,$38 ;
                    db $00,$E0,$05,$10,$17,$70,$3B,$68 ;
                    db $47,$64,$60,$58,$00,$E0,$05,$00 ;
                    db $17,$60,$05,$10,$17,$70,$3F,$60 ;
                    db $26,$08,$60,$58,$90,$B8,$00,$E0 ;
                    db $05,$00,$17,$60,$05,$10,$17,$70 ;
                    db $3F,$60,$26,$08,$80,$54,$00,$E0 ;
                    db $3F,$60,$80,$44,$80,$50,$00,$E0 ;
                    db $3F,$60,$80,$44,$80,$50,$F0,$E3 ;
                    db $91,$E0,$45,$E0,$10,$E0,$20,$88 ;
                    db $10,$B8,$00,$7C,$00,$E0,$90,$58 ;
                    db $A0,$48,$00,$E0,$B0,$98,$00,$E0 ;
                    db $10,$A4,$00,$68,$C0,$5C,$00,$E0 ;
                    db $00,$E0,$10,$A0,$00,$64,$D0,$90 ;
                    db $00,$E0,$20,$88,$10,$B8,$00,$7C ;
                    db $00,$E0,$90,$58,$A0,$48,$00,$E0 ;
                    db $B0,$98,$00,$E0,$10,$A4,$00,$68 ;
                    db $C0,$5C,$00,$E0,$00,$E0,$10,$A0 ;
                    db $00,$64,$D0,$90,$00,$E0,$10,$A0 ;
                    db $00,$64,$D0,$90,$00,$E0,$20,$88 ;
                    db $10,$B8,$00,$7C,$00,$E0,$90,$58 ;
                    db $A0,$48,$00,$E0,$B0,$98,$00,$E0 ;
                    db $10,$A4,$00,$68,$C0,$5C,$F0,$E3 ;
                    db $12,$E0,$60,$E0,$50,$E0,$43,$E0 ;
                    db $10,$45,$10,$6D,$00,$61,$30,$15 ;
                    db $20,$55,$00,$29,$60,$A9,$70,$C9 ;
                    db $82,$AD,$92,$CD,$A0,$B9,$B0,$D9 ;
                    db $40,$2D,$50,$4D,$07,$20,$25,$00 ;
                    db $15,$1C,$00,$E0,$10,$45,$10,$6D ;
                    db $30,$15,$20,$55,$00,$29,$40,$2D ;
                    db $50,$4D,$07,$20,$25,$00,$15,$1C ;
                    db $00,$E0,$10,$45,$10,$6D,$00,$61 ;
                    db $30,$15,$20,$55,$00,$29,$60,$A9 ;
                    db $70,$C9,$82,$AD,$92,$CD,$A0,$B9 ;
                    db $B0,$D9,$40,$2D,$50,$4D,$07,$20 ;
                    db $25,$00,$15,$1C,$00,$E0,$10,$45 ;
                    db $10,$6D,$30,$15,$20,$55,$00,$29 ;
                    db $40,$2D,$50,$4D,$07,$20,$25,$00 ;
                    db $15,$1C,$00,$E0,$10,$45,$10,$6D ;
                    db $00,$61,$30,$15,$20,$55,$00,$29 ;
                    db $60,$A9,$70,$C9,$82,$AD,$92,$CD ;
                    db $A0,$B9,$B0,$D9,$40,$2D,$50,$4D ;
                    db $07,$20,$25,$00,$15,$1C,$00,$E0 ;
                    db $10,$45,$10,$6D,$30,$15,$20,$55 ;
                    db $00,$29,$40,$2D,$50,$4D,$07,$20 ;
                    db $25,$00,$15,$1C,$00,$E0,$10,$45 ;
                    db $10,$6D,$00,$61,$30,$15,$20,$55 ;
                    db $00,$29,$60,$A9,$70,$C9,$82,$AD ;
                    db $92,$CD,$A0,$B9,$B0,$D9,$40,$2D ;
                    db $50,$4D,$07,$20,$25,$00,$15,$1C ;
                    db $00,$E0,$10,$45,$10,$6D,$30,$15 ;
                    db $20,$55,$00,$29,$40,$2D,$50,$4D ;
                    db $07,$20,$25,$00,$15,$1C,$F0,$E3 ;
                    db $90,$E0,$4E,$E0,$10,$E0,$A0,$E0 ;
                    db $03,$A8,$00,$BC,$00,$E0,$02,$A8 ;
                    db $00,$E0,$00,$A4,$01,$AC,$00,$E0 ;
                    db $03,$A8,$00,$E0,$01,$A4,$01,$AC ;
                    db $08,$BC,$00,$E0,$F0,$E3,$46,$E0 ;
                    db $50,$E0,$03,$00,$03,$10,$19,$40 ;
                    db $19,$50,$3F,$40,$26,$08,$26,$18 ;
                    db $00,$E0,$03,$00,$03,$10,$19,$40 ;
                    db $19,$50,$3F,$40,$26,$08,$26,$18 ;
                    db $00,$E0,$03,$0C,$19,$4C,$03,$1C ;
                    db $19,$5C,$3F,$40,$26,$04,$26,$14 ;
                    db $00,$E0,$03,$08,$19,$48,$3A,$40 ;
                    db $26,$00,$49,$54,$45,$9C,$60,$30 ;
                    db $00,$E0,$07,$0C,$13,$8C,$07,$18 ;
                    db $13,$98,$3F,$80,$26,$04,$50,$30 ;
                    db $60,$60,$00,$E0,$50,$28,$07,$00 ;
                    db $13,$80,$07,$10,$13,$90,$3F,$80 ;
                    db $80,$54,$00,$E0,$07,$00,$13,$80 ;
                    db $07,$14,$13,$94,$3F,$80,$80,$44 ;
                    db $00,$E0,$07,$00,$13,$80,$07,$14 ;
                    db $13,$94,$3F,$80,$80,$44,$F0,$E3 ;
                    db $91,$E0,$10,$E0,$45,$E0,$10,$A4 ;
                    db $00,$68,$20,$5C,$00,$E0,$00,$6C ;
                    db $00,$E0,$30,$40,$40,$5C,$00,$E0 ;
                    db $20,$50,$60,$90,$00,$E0,$50,$A0 ;
                    db $20,$84,$70,$78,$00,$E0,$80,$4C ;
                    db $00,$E0,$90,$40,$00,$E0,$50,$A0 ;
                    db $20,$84,$70,$78,$00,$E0,$80,$4C ;
                    db $00,$E0,$90,$40,$F0,$E3,$91,$E0 ;
                    db $70,$E0,$48,$E0,$20,$E0,$00,$69 ;
                    db $63,$81,$70,$89,$80,$91,$10,$95 ;
                    db $20,$99,$30,$9D,$93,$A1,$A0,$B1 ;
                    db $72,$B5,$00,$E0,$B0,$81,$D0,$85 ;
                    db $62,$89,$80,$95,$C0,$A1,$93,$A5 ;
                    db $A0,$B5,$61,$B9,$30,$68,$10,$70 ;
                    db $30,$98,$00,$E0,$10,$69,$21,$6D ;
                    db $30,$75,$B0,$79,$D0,$7D,$B0,$81 ;
                    db $D0,$85,$73,$89,$C0,$99,$90,$9D ;
                    db $C0,$A1,$96,$A5,$30,$5C,$00,$E0 ;
                    db $60,$61,$80,$65,$10,$69,$22,$6D ;
                    db $30,$79,$90,$81,$A0,$85,$74,$89 ;
                    db $60,$9D,$97,$A1,$10,$40,$00,$E0 ;
                    db $60,$81,$80,$85,$40,$99,$50,$9D ;
                    db $90,$A1,$A0,$A5,$80,$A9,$B0,$B5 ;
                    db $F0,$B9,$70,$BD,$10,$60,$10,$AC ;
                    db $00,$E0,$07,$82,$77,$A1,$00,$E0 ;
                    db $07,$82,$77,$A1,$F0,$E3,$91,$E0 ;
                    db $10,$E0,$B0,$E0,$C0,$E0,$10,$90 ;
                    db $00,$E0,$00,$88,$10,$B0,$25,$A4 ;
                    db $00,$E0,$10,$68,$20,$B4,$2F,$BC ;
                    db $00,$E0,$10,$88,$00,$B8,$00,$E0 ;
                    db $00,$A8,$10,$98,$20,$A4,$00,$E0 ;
                    db $00,$68,$20,$A4,$20,$B4,$2F,$BC ;
                    db $00,$E0,$10,$68,$20,$BC,$00,$E0 ;
                    db $F0,$E3,$46,$E0,$50,$E0,$07,$00 ;
                    db $07,$10,$17,$60,$17,$70,$3F,$60 ;
                    db $26,$08,$90,$B8,$00,$E0,$05,$00 ;
                    db $05,$10,$17,$60,$17,$70,$3F,$60 ;
                    db $26,$08,$90,$B4,$00,$E0,$05,$00 ;
                    db $17,$60,$39,$60,$47,$70,$60,$48 ;
                    db $90,$A8,$50,$38,$00,$E0,$05,$10 ;
                    db $17,$70,$3B,$68,$47,$64,$60,$58 ;
                    db $00,$E0,$05,$00,$17,$60,$05,$10 ;
                    db $17,$70,$3F,$60,$26,$08,$60,$58 ;
                    db $90,$B8,$00,$E0,$05,$00,$17,$60 ;
                    db $05,$10,$17,$70,$3F,$60,$26,$08 ;
                    db $00,$E0,$3F,$60,$80,$44,$80,$50 ;
                    db $00,$E0,$3F,$60,$80,$44,$80,$50 ;
                    db $F0,$E3,$11,$E0,$4B,$E0,$31,$E0 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$07,$81,$10,$85,$11,$99 ;
                    db $00,$E0,$1F,$18,$20,$20,$21,$24 ;
                    db $22,$2C,$23,$30,$20,$38,$24,$40 ;
                    db $25,$50,$26,$58,$27,$5C,$28,$64 ;
                    db $29,$6C,$2A,$74,$2B,$78,$2C,$88 ;
                    db $2D,$90,$2F,$98,$07,$81,$10,$85 ;
                    db $10,$99,$00,$E0,$10,$00,$11,$0C ;
                    db $12,$10,$13,$1C,$14,$24,$15,$28 ;
                    db $16,$30,$16,$4C,$17,$54,$18,$5C ;
                    db $19,$60,$1A,$64,$1B,$68,$1C,$6C ;
                    db $16,$78,$1D,$80,$1E,$90,$07,$81 ;
                    db $10,$85,$11,$99,$00,$E0,$1F,$18 ;
                    db $20,$20,$21,$24,$22,$2C,$23,$30 ;
                    db $20,$38,$24,$40,$25,$50,$26,$58 ;
                    db $27,$5C,$28,$64,$29,$6C,$2A,$74 ;
                    db $2B,$78,$2C,$88,$2D,$90,$2F,$98 ;
                    db $07,$81,$10,$85,$10,$99,$00,$E0 ;
                    db $30,$00,$31,$18,$20,$20,$32,$24 ;
                    db $1B,$2C,$23,$30,$33,$38,$34,$40 ;
                    db $35,$48,$36,$54,$37,$58,$38,$5C ;
                    db $39,$64,$3A,$68,$3B,$6C,$3C,$70 ;
                    db $3D,$74,$3E,$78,$3F,$94,$07,$81 ;
                    db $11,$89,$10,$99,$00,$E0,$1F,$18 ;
                    db $20,$20,$21,$24,$22,$2C,$23,$30 ;
                    db $20,$38,$24,$40,$25,$50,$26,$58 ;
                    db $27,$5C,$28,$64,$29,$6C,$2A,$74 ;
                    db $2B,$78,$2C,$88,$2D,$90,$2F,$98 ;
                    db $07,$81,$10,$85,$10,$99,$00,$E0 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$07,$81,$10,$85,$11,$99 ;
                    db $00,$E0,$1F,$18,$20,$20,$21,$24 ;
                    db $22,$2C,$23,$30,$20,$38,$24,$40 ;
                    db $25,$50,$26,$58,$27,$5C,$28,$64 ;
                    db $29,$6C,$2A,$74,$2B,$78,$2C,$88 ;
                    db $2D,$90,$2F,$98,$07,$81,$10,$85 ;
                    db $10,$99,$00,$E0,$10,$00,$11,$0C ;
                    db $12,$10,$13,$1C,$14,$24,$15,$28 ;
                    db $16,$30,$16,$4C,$17,$54,$18,$5C ;
                    db $19,$60,$1A,$64,$1B,$68,$1C,$6C ;
                    db $16,$78,$1D,$80,$1E,$90,$07,$81 ;
                    db $10,$85,$11,$99,$00,$E0,$1F,$18 ;
                    db $20,$20,$21,$24,$22,$2C,$23,$30 ;
                    db $20,$38,$24,$40,$25,$50,$26,$58 ;
                    db $27,$5C,$28,$64,$29,$6C,$2A,$74 ;
                    db $2B,$78,$2C,$88,$2D,$90,$2F,$98 ;
                    db $07,$81,$10,$85,$10,$99,$00,$E0 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$07,$81,$10,$85,$11,$99 ;
                    db $F0,$E3,$11,$E0,$4B,$E0,$31,$E0 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$07,$81,$10,$85,$11,$99 ;
                    db $00,$E0,$1F,$18,$20,$20,$21,$24 ;
                    db $22,$2C,$23,$30,$20,$38,$24,$40 ;
                    db $25,$50,$26,$58,$27,$5C,$28,$64 ;
                    db $29,$6C,$2A,$74,$2B,$78,$2C,$88 ;
                    db $2D,$90,$2F,$98,$07,$81,$10,$85 ;
                    db $10,$99,$00,$E0,$10,$00,$11,$0C ;
                    db $12,$10,$13,$1C,$14,$24,$15,$28 ;
                    db $16,$30,$16,$4C,$17,$54,$18,$5C ;
                    db $19,$60,$1A,$64,$1B,$68,$1C,$6C ;
                    db $16,$78,$1D,$80,$1E,$90,$07,$81 ;
                    db $10,$85,$11,$99,$00,$E0,$1F,$18 ;
                    db $20,$20,$21,$24,$22,$2C,$23,$30 ;
                    db $20,$38,$24,$40,$25,$50,$26,$58 ;
                    db $27,$5C,$28,$64,$29,$6C,$2A,$74 ;
                    db $2B,$78,$2C,$88,$2D,$90,$2F,$98 ;
                    db $07,$81,$10,$85,$10,$99,$00,$E0 ;
                    db $30,$00,$31,$18,$20,$20,$32,$24 ;
                    db $1B,$2C,$23,$30,$33,$38,$34,$40 ;
                    db $35,$48,$36,$54,$37,$58,$38,$5C ;
                    db $39,$64,$3A,$68,$3B,$6C,$3C,$70 ;
                    db $3D,$74,$3E,$78,$3F,$94,$07,$81 ;
                    db $11,$89,$10,$99,$00,$E0,$1F,$18 ;
                    db $20,$20,$21,$24,$22,$2C,$23,$30 ;
                    db $20,$38,$24,$40,$25,$50,$26,$58 ;
                    db $27,$5C,$28,$64,$29,$6C,$2A,$74 ;
                    db $2B,$78,$2C,$88,$2D,$90,$2F,$98 ;
                    db $07,$81,$10,$85,$10,$99,$10,$00 ;
                    db $11,$0C,$12,$10,$13,$1C,$14,$24 ;
                    db $15,$28,$16,$30,$16,$4C,$17,$54 ;
                    db $18,$5C,$19,$60,$1A,$64,$1B,$68 ;
                    db $1C,$6C,$16,$78,$1D,$80,$1E,$90 ;
                    db $07,$81,$10,$85,$11,$99,$00,$E0 ;
                    db $1F,$18,$20,$20,$21,$24,$22,$2C ;
                    db $23,$30,$20,$38,$24,$40,$25,$50 ;
                    db $26,$58,$27,$5C,$28,$64,$29,$6C ;
                    db $2A,$74,$2B,$78,$2C,$88,$2D,$90 ;
                    db $2F,$98,$07,$81,$10,$85,$10,$99 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$07,$81,$10,$85,$11,$99 ;
                    db $00,$E0,$1F,$18,$20,$20,$21,$24 ;
                    db $22,$2C,$23,$30,$20,$38,$24,$40 ;
                    db $25,$50,$26,$58,$27,$5C,$28,$64 ;
                    db $29,$6C,$2A,$74,$2B,$78,$2C,$88 ;
                    db $2D,$90,$2F,$98,$07,$81,$10,$85 ;
                    db $10,$99,$F0,$E3,$4B,$E0,$11,$E0 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$00,$E0,$1F,$18,$20,$20 ;
                    db $21,$24,$22,$2C,$23,$30,$20,$38 ;
                    db $24,$40,$25,$50,$26,$58,$27,$5C ;
                    db $28,$64,$29,$6C,$2A,$74,$2B,$78 ;
                    db $2C,$88,$2D,$90,$2F,$98,$00,$E0 ;
                    db $10,$00,$11,$0C,$12,$10,$13,$1C ;
                    db $14,$24,$15,$28,$16,$30,$16,$4C ;
                    db $17,$54,$18,$5C,$19,$60,$1A,$64 ;
                    db $1B,$68,$1C,$6C,$16,$78,$1D,$80 ;
                    db $1E,$90,$00,$E0,$30,$00,$31,$18 ;
                    db $20,$20,$32,$24,$1B,$2C,$23,$30 ;
                    db $33,$38,$34,$40,$35,$48,$36,$54 ;
                    db $37,$58,$38,$5C,$39,$64,$3A,$68 ;
                    db $3B,$6C,$3C,$70,$3D,$74,$3E,$78 ;
                    db $3F,$94,$00,$E0,$1F,$18,$20,$20 ;
                    db $21,$24,$22,$2C,$23,$30,$20,$38 ;
                    db $24,$40,$25,$50,$26,$58,$27,$5C ;
                    db $28,$64,$29,$6C,$2A,$74,$2B,$78 ;
                    db $2C,$88,$2D,$90,$2F,$98,$00,$E0 ;
                    db $1F,$18,$20,$20,$21,$24,$22,$2C ;
                    db $23,$30,$20,$38,$24,$40,$25,$50 ;
                    db $26,$58,$27,$5C,$28,$64,$29,$6C ;
                    db $2A,$74,$2B,$78,$2C,$88,$2D,$90 ;
                    db $2F,$98,$00,$E0,$30,$00,$31,$18 ;
                    db $20,$20,$32,$24,$1B,$2C,$23,$30 ;
                    db $33,$38,$34,$40,$35,$48,$36,$54 ;
                    db $37,$58,$38,$5C,$39,$64,$3A,$68 ;
                    db $3B,$6C,$3C,$70,$3D,$74,$3E,$78 ;
                    db $3F,$94,$00,$E0,$1F,$18,$20,$20 ;
                    db $21,$24,$22,$2C,$23,$30,$20,$38 ;
                    db $24,$40,$25,$50,$26,$58,$27,$5C ;
                    db $28,$64,$29,$6C,$2A,$74,$2B,$78 ;
                    db $2C,$88,$2D,$90,$2F,$98,$00,$E0 ;
                    db $1F,$18,$20,$20,$21,$24,$22,$2C ;
                    db $23,$30,$20,$38,$24,$40,$25,$50 ;
                    db $26,$58,$27,$5C,$28,$64,$29,$6C ;
                    db $2A,$74,$2B,$78,$2C,$88,$2D,$90 ;
                    db $2F,$98,$10,$00,$11,$0C,$12,$10 ;
                    db $13,$1C,$14,$24,$15,$28,$16,$30 ;
                    db $16,$4C,$17,$54,$18,$5C,$19,$60 ;
                    db $1A,$64,$1B,$68,$1C,$6C,$16,$78 ;
                    db $1D,$80,$1E,$90,$00,$E0,$1F,$18 ;
                    db $20,$20,$21,$24,$22,$2C,$23,$30 ;
                    db $20,$38,$24,$40,$25,$50,$26,$58 ;
                    db $27,$5C,$28,$64,$29,$6C,$2A,$74 ;
                    db $2B,$78,$2C,$88,$2D,$90,$2F,$98 ;
                    db $F0,$E3,$50,$E0,$46,$E0,$05,$00 ;
                    db $05,$14,$17,$60,$17,$74,$3F,$60 ;
                    db $26,$08,$60,$5C,$00,$E0,$05,$00 ;
                    db $05,$14,$17,$60,$17,$74,$3F,$60 ;
                    db $26,$08,$60,$5C,$00,$E0,$07,$08 ;
                    db $07,$1C,$17,$68,$17,$7C,$3F,$60 ;
                    db $26,$10,$00,$E0,$07,$10,$17,$70 ;
                    db $3F,$60,$47,$7C,$26,$04,$00,$E0 ;
                    db $26,$04,$35,$74,$47,$70,$60,$58 ;
                    db $90,$B8,$00,$E0,$07,$0C,$07,$1C ;
                    db $17,$6C,$17,$7C,$3F,$60,$26,$04 ;
                    db $80,$50,$90,$B4,$00,$E0,$3F,$60 ;
                    db $47,$7C,$26,$04,$80,$4C,$00,$E0 ;
                    db $35,$74,$47,$70,$50,$24,$80,$54 ;
                    db $00,$E0,$17,$70,$17,$80,$3F,$60 ;
                    db $90,$40,$90,$50,$80,$44,$80,$54 ;
                    db $B0,$A0,$F0,$E3,$91,$E0,$10,$E0 ;
                    db $45,$E0,$10,$A4,$00,$68,$20,$5C ;
                    db $00,$E0,$00,$6C,$00,$E0,$30,$40 ;
                    db $40,$5C,$00,$E0,$20,$50,$60,$90 ;
                    db $00,$E0,$50,$A0,$20,$84,$70,$78 ;
                    db $00,$E0,$80,$4C,$00,$E0,$90,$40 ;
                    db $F0,$E3,$91,$E0,$10,$E0,$45,$E0 ;
                    db $20,$84,$70,$74,$00,$E0,$80,$48 ;
                    db $90,$5C,$00,$E0,$00,$E0,$C0,$40 ;
                    db $00,$E0,$90,$40,$00,$E0,$30,$48 ;
                    db $00,$E0,$E0,$04,$F0,$E3,$91,$E0 ;
                    db $10,$E0,$4C,$E0,$80,$E0,$10,$A0 ;
                    db $20,$A4,$10,$B0,$20,$B4,$10,$BC ;
                    db $50,$A8,$00,$E0,$20,$A0,$10,$A8 ;
                    db $20,$AC,$10,$B8,$20,$BC,$50,$B0 ;
                    db $70,$48,$00,$E0,$20,$A0,$10,$A8 ;
                    db $20,$AC,$10,$B4,$20,$B8,$80,$7C ;
                    db $00,$E0,$10,$AC,$20,$B0,$10,$B8 ;
                    db $20,$BC,$00,$E0,$10,$A4,$20,$A8 ;
                    db $10,$B0,$20,$B4,$50,$BC,$90,$90 ;
                    db $00,$E0,$10,$A8,$20,$AC,$10,$B4 ;
                    db $20,$B8,$00,$E0,$10,$A0,$20,$A4 ;
                    db $10,$B0,$20,$B4,$10,$BC,$60,$A8 ;
                    db $00,$E0,$20,$A0,$10,$AC,$20,$B0 ;
                    db $10,$B8,$20,$BC,$60,$A4,$F0,$E3 ;
                    db $12,$E0,$50,$E0,$44,$E0,$A0,$A0 ;
                    db $10,$20,$00,$28,$30,$4C,$30,$58 ;
                    db $A0,$A0,$10,$20,$00,$28,$30,$4C ;
                    db $30,$58,$00,$E0,$A0,$A0,$30,$44 ;
                    db $10,$30,$00,$38,$30,$5C,$00,$E0 ;
                    db $A0,$A0,$30,$48,$30,$54,$00,$E0 ;
                    db $A0,$A0,$10,$20,$00,$28,$20,$50 ;
                    db $50,$58,$00,$E0,$A0,$A0,$20,$48 ;
                    db $50,$50,$20,$58,$00,$E0,$A0,$A0 ;
                    db $50,$44,$00,$2C,$D0,$94,$00,$E0 ;
                    db $A0,$A0,$00,$20,$40,$48,$40,$54 ;
                    db $00,$3C,$00,$E0,$A0,$A0,$10,$20 ;
                    db $30,$48,$70,$74,$20,$5C,$00,$E0 ;
                    db $A0,$A0,$10,$24,$C0,$8C,$10,$30 ;
                    db $20,$58,$00,$E0,$A0,$A0,$50,$40 ;
                    db $50,$50,$80,$48,$20,$58,$00,$E0 ;
                    db $A0,$A0,$00,$24,$20,$4C,$20,$58 ;
                    db $00,$E0,$A0,$A0,$50,$40,$50,$50 ;
                    db $80,$48,$20,$58,$00,$E0,$A0,$A0 ;
                    db $00,$24,$20,$4C,$20,$58,$00,$E0 ;
                    db $A0,$A0,$50,$44,$00,$2C,$D0,$94 ;
                    db $00,$E0,$A0,$A0,$00,$20,$40,$48 ;
                    db $40,$54,$00,$3C,$F0,$E3,$91,$E0 ;
                    db $70,$E0,$48,$E0,$20,$E0,$00,$69 ;
                    db $63,$81,$70,$89,$80,$91,$10,$95 ;
                    db $20,$99,$30,$9D,$93,$A1,$A0,$B1 ;
                    db $72,$B5,$00,$E0,$B0,$81,$D0,$85 ;
                    db $62,$89,$80,$95,$C0,$A1,$93,$A5 ;
                    db $A0,$B5,$61,$B9,$30,$98,$00,$E0 ;
                    db $B0,$81,$D0,$85,$65,$89,$C0,$A1 ;
                    db $96,$A5,$00,$E0,$67,$81,$97,$A1 ;
                    db $00,$E0,$60,$81,$80,$85,$40,$99 ;
                    db $50,$9D,$90,$A1,$A0,$A5,$80,$A9 ;
                    db $B0,$B5,$F0,$B9,$70,$BD,$10,$60 ;
                    db $10,$AC,$00,$E0,$07,$82,$77,$A1 ;
                    db $00,$E0,$07,$82,$77,$A1,$F0,$E3 ;
                    db $91,$E0,$70,$E0,$48,$E0,$20,$E0 ;
                    db $00,$61,$62,$85,$70,$81,$80,$91 ;
                    db $10,$95,$20,$99,$30,$9D,$93,$A1 ;
                    db $A0,$B1,$72,$B5,$00,$E0,$B0,$81 ;
                    db $D0,$85,$62,$89,$80,$95,$C0,$A1 ;
                    db $93,$A5,$A0,$B5,$61,$B9,$30,$64 ;
                    db $30,$98,$00,$E0,$10,$6D,$20,$71 ;
                    db $30,$75,$B0,$79,$D0,$7D,$B0,$85 ;
                    db $D0,$89,$72,$8D,$C0,$99,$90,$9D ;
                    db $60,$A1,$C0,$A5,$95,$A9,$30,$5C ;
                    db $00,$E0,$60,$61,$80,$65,$10,$69 ;
                    db $22,$6D,$30,$79,$90,$81,$A0,$85 ;
                    db $74,$89,$60,$9D,$97,$A1,$10,$40 ;
                    db $00,$E0,$60,$81,$80,$85,$40,$99 ;
                    db $50,$9D,$90,$A1,$A0,$A5,$80,$A9 ;
                    db $B0,$B5,$F0,$B9,$70,$BD,$10,$60 ;
                    db $10,$AC,$00,$E0,$07,$82,$77,$A1 ;
                    db $00,$E0,$07,$82,$77,$A1,$F0,$E3 ;
                    db $91,$E0,$46,$E0,$10,$E0,$00,$E0 ;
                    db $00,$E0,$00,$E0,$00,$E0,$00,$E0 ;
                    db $00,$E0,$F0,$E3,$91,$E0,$70,$E0 ;
                    db $48,$E0,$20,$E0,$00,$69,$63,$81 ;
                    db $70,$89,$80,$91,$10,$95,$20,$99 ;
                    db $30,$9D,$93,$A1,$A0,$B1,$72,$B5 ;
                    db $00,$E0,$B0,$81,$D0,$85,$62,$89 ;
                    db $80,$95,$C0,$A1,$93,$A5,$A0,$B5 ;
                    db $61,$B9,$30,$68,$10,$70,$30,$98 ;
                    db $00,$E0,$10,$69,$21,$6D,$30,$75 ;
                    db $B0,$79,$D0,$7D,$B0,$81,$D0,$85 ;
                    db $73,$89,$C0,$99,$90,$9D,$C0,$A1 ;
                    db $96,$A5,$30,$5C,$00,$E0,$60,$61 ;
                    db $80,$65,$10,$69,$22,$6D,$30,$79 ;
                    db $90,$81,$A0,$85,$74,$89,$60,$9D ;
                    db $97,$A1,$10,$40,$00,$E0,$60,$81 ;
                    db $80,$85,$40,$99,$50,$9D,$90,$A1 ;
                    db $A0,$A5,$80,$A9,$B0,$B5,$F0,$B9 ;
                    db $70,$BD,$10,$60,$10,$AC,$00,$E0 ;
                    db $07,$82,$77,$A1,$00,$E0,$07,$82 ;
                    db $77,$A1,$F0,$E3,$F0,$E3,$F0,$E3 ;
                    db $F0,$E3,$F0,$E3,$F0,$E3,$F0,$E3 ;
                    db $F0,$E3,$F0,$E3,$F0,$E3,$F0,$E3 ;
                    db $F0,$E3,$F0,$E3,$F0,$E3,$F0,$E3 ;
                    db $F0,$E3,$F0,$E3,$41,$E0,$12,$E0 ;
                    db $00,$28,$00,$E0,$00,$30,$00,$E0 ;
                    db $00,$38,$00,$E0,$00,$E0,$00,$28 ;
                    db $00,$E0,$00,$28,$F0,$E3,$41,$E0 ;
                    db $12,$E0,$00,$28,$00,$E0,$00,$28 ;
                    db $00,$E0,$00,$38,$00,$E0,$00,$E0 ;
                    db $00,$28,$00,$E0,$00,$28,$F0,$E3 ;
                    db $41,$E0,$12,$E0,$00,$38,$00,$E0 ;
                    db $00,$38,$00,$E0,$00,$E0,$00,$28 ;
                    db $00,$E0,$00,$E0,$F0,$E3,$91,$E0 ;
                    db $42,$E0,$10,$E0,$70,$24,$E0,$24 ;
                    db $F0,$E3,$91,$E0,$42,$E0,$10,$E0 ;
                    db $00,$E0,$70,$24,$E0,$24,$F0,$E3 ;
                    db $10,$E0,$41,$E0,$00,$28,$00,$E0 ;
                    db $00,$E0,$00,$E0,$00,$2C,$F0,$E3 ;
                    db $10,$E0,$41,$E0,$00,$28,$00,$E0 ;
                    db $00,$E0,$00,$2C,$F0,$E3,$10,$E0 ;
                    db $41,$E0,$00,$28,$00,$E0,$00,$E0 ;
                    db $00,$2C,$F0,$E3,$91,$E0,$10,$E0 ;
                    db $41,$E0,$00,$E0,$00,$E0,$00,$E0 ;
                    db $00,$E0,$00,$E0,$00,$E0,$00,$E0 ;
                    db $00,$E0,$00,$E0,$00,$E0,$00,$E0 ;
                    db $00,$E0,$00,$E0,$00,$E0,$00,$E0 ;
                    db $F0,$E3,$91,$E0,$42,$E0,$13,$E0 ;
                    db $4D,$E0,$00,$E0,$00,$E0,$00,$E0 ;
                    db $00,$E0,$00,$E0,$00,$E0,$00,$E0 ;
                    db $00,$E0,$00,$E0,$00,$E0,$F0,$E3 ;
                    db $91,$E0,$4F,$E0,$20,$E0,$00,$80 ;
                    db $00,$E0,$02,$80,$00,$E0,$02,$80 ;
                    db $F0,$E3,$F0,$E3,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF ;

CODE_0FD000:        8B            PHB                       ;
CODE_0FD001:        4B            PHK                       ;
CODE_0FD002:        AB            PLB                       ;
CODE_0FD003:        AF 06 00 70   LDA $700006               ;
CODE_0FD007:        D0 12         BNE CODE_0FD01B           ;
CODE_0FD009:        AD F8 0F      LDA $0FF8                 ;
CODE_0FD00C:        29 C0         AND #$C0                  ;
CODE_0FD00E:        0C F4 0F      TSB $0FF4                 ;
CODE_0FD011:        AD FA 0F      LDA $0FFA                 ;
CODE_0FD014:        29 C0         AND #$C0                  ;
CODE_0FD016:        0C F6 0F      TSB $0FF6                 ;
CODE_0FD019:        80 34         BRA CODE_0FD04F           ;

CODE_0FD01B:        AD F4 0F      LDA $0FF4                 ;
CODE_0FD01E:        29 80         AND #$80                  ;
CODE_0FD020:        4A            LSR A                     ;
CODE_0FD021:        0C F4 0F      TSB $0FF4                 ;
CODE_0FD024:        AD F8 0F      LDA $0FF8                 ;
CODE_0FD027:        29 C0         AND #$C0                  ;
CODE_0FD029:        85 00         STA $00                   ;
CODE_0FD02B:        AD F4 0F      LDA $0FF4                 ;
CODE_0FD02E:        29 7F         AND #$7F                  ;
CODE_0FD030:        05 00         ORA $00                   ;
CODE_0FD032:        8D F4 0F      STA $0FF4                 ;
CODE_0FD035:        AD F6 0F      LDA $0FF6                 ;
CODE_0FD038:        29 80         AND #$80                  ;
CODE_0FD03A:        4A            LSR A                     ;
CODE_0FD03B:        0C F6 0F      TSB $0FF6                 ;
CODE_0FD03E:        AD FA 0F      LDA $0FFA                 ;
CODE_0FD041:        29 C0         AND #$C0                  ;
CODE_0FD043:        85 00         STA $00                   ;
CODE_0FD045:        AD F6 0F      LDA $0FF6                 ;
CODE_0FD048:        29 7F         AND #$7F                  ;
CODE_0FD04A:        05 00         ORA $00                   ;
CODE_0FD04C:        8D F6 0F      STA $0FF6                 ;
CODE_0FD04F:        AB            PLB                       ;
CODE_0FD050:        6B            RTL                       ;

CODE_0FD051:        AD 03 0F      LDA $0F03                 ;
CODE_0FD054:        D0 40         BNE CODE_0FD096           ;
CODE_0FD056:        AF 00 FB 7F   LDA $7FFB00               ;
CODE_0FD05A:        8D 5F 07      STA $075F                 ;
CODE_0FD05D:        8D 66 07      STA $0766                 ;
CODE_0FD060:        AF 01 FB 7F   LDA $7FFB01               ;
CODE_0FD064:        8D 5C 07      STA $075C                 ;
CODE_0FD067:        8D 63 07      STA $0763                 ;
CODE_0FD06A:        AF 02 FB 7F   LDA $7FFB02               ;
CODE_0FD06E:        10 01         BPL CODE_0FD071           ;
CODE_0FD070:        1A            INC A                     ;
CODE_0FD071:        8D 60 07      STA $0760                 ;
CODE_0FD074:        8D 67 07      STA $0767                 ;
CODE_0FD077:        AF 03 FB 7F   LDA $7FFB03               ;
CODE_0FD07B:        8D 5A 07      STA $075A                 ;
CODE_0FD07E:        AF 04 FB 7F   LDA $7FFB04               ;
CODE_0FD082:        8D 2B 0F      STA $0F2B                 ;
CODE_0FD085:        DA            PHX                       ;
CODE_0FD086:        A2 00         LDX #$00                  ;
CODE_0FD088:        BF E8 1F 70   LDA $701FE8,x             ;
CODE_0FD08C:        9D C8 07      STA $07C8,x               ;
CODE_0FD08F:        E8            INX                       ;
CODE_0FD090:        E0 06         CPX #$06                  ;
CODE_0FD092:        D0 F4         BNE CODE_0FD088           ;
CODE_0FD094:        FA            PLX                       ;
CODE_0FD095:        6B            RTL                       ;

CODE_0FD096:        AF 09 00 70   LDA $700009               ;
CODE_0FD09A:        8D 60 07      STA $0760                 ;
CODE_0FD09D:        AD 24 0E      LDA $0E24                 ;
CODE_0FD0A0:        8D 5C 07      STA $075C                 ;
CODE_0FD0A3:        A9 02         LDA #$02                  ;
CODE_0FD0A5:        8D 5A 07      STA $075A                 ;
CODE_0FD0A8:        9C 5E 07      STZ $075E                 ;
CODE_0FD0AB:        9C 2B 0F      STZ $0F2B                 ;
CODE_0FD0AE:        DA            PHX                       ;
CODE_0FD0AF:        A2 00         LDX #$00                  ;
CODE_0FD0B1:        9E CE 07      STZ $07CE,x               ;
CODE_0FD0B4:        E8            INX                       ;
CODE_0FD0B5:        E0 06         CPX #$06                  ;
CODE_0FD0B7:        D0 F8         BNE CODE_0FD0B1           ;
CODE_0FD0B9:        FA            PLX                       ;
CODE_0FD0BA:        6B            RTL                       ;

CODE_0FD0BB:        DA            PHX                       ;
CODE_0FD0BC:        5A            PHY                       ;
CODE_0FD0BD:        AD 69 03      LDA $0369                 ;
CODE_0FD0C0:        F0 39         BEQ CODE_0FD0FB           ;
CODE_0FD0C2:        BC 46 0B      LDY $0B46,x               ;
CODE_0FD0C5:        A2 00         LDX #$00                  ;
CODE_0FD0C7:        B9 00 09      LDA $0900,y               ;
CODE_0FD0CA:        9D 00 08      STA $0800,x               ;
CODE_0FD0CD:        98            TYA                       ;
CODE_0FD0CE:        29 03         AND #$03                  ;
CODE_0FD0D0:        C9 01         CMP #$01                  ;
CODE_0FD0D2:        D0 11         BNE CODE_0FD0E5           ;
CODE_0FD0D4:        BD 00 08      LDA $0800,x               ;
CODE_0FD0D7:        C9 F0         CMP #$F0                  ;
CODE_0FD0D9:        90 0A         BCC CODE_0FD0E5           ;
CODE_0FD0DB:        A9 F0         LDA #$F0                  ;
CODE_0FD0DD:        9D 00 08      STA $0800,x               ;
CODE_0FD0E0:        A9 00         LDA #$00                  ;
CODE_0FD0E2:        99 00 0D      STA $0D00,y               ;
CODE_0FD0E5:        B9 00 0D      LDA $0D00,y               ;
CODE_0FD0E8:        9D 00 0C      STA $0C00,x               ;
CODE_0FD0EB:        A9 00         LDA #$00                  ;
CODE_0FD0ED:        99 00 0D      STA $0D00,y               ;
CODE_0FD0F0:        A9 F0         LDA #$F0                  ;
CODE_0FD0F2:        99 00 09      STA $0900,y               ;
CODE_0FD0F5:        C8            INY                       ;
CODE_0FD0F6:        E8            INX                       ;
CODE_0FD0F7:        E0 20         CPX #$20                  ;
CODE_0FD0F9:        D0 CC         BNE CODE_0FD0C7           ;
CODE_0FD0FB:        A2 00         LDX #$00                  ;
CODE_0FD0FD:        64 E7         STZ $E7                   ;
CODE_0FD0FF:        BD 00 03      LDA $0300,x               ;
CODE_0FD102:        F0 0A         BEQ CODE_0FD10E           ;
CODE_0FD104:        20 16 D1      JSR CODE_0FD116           ;
CODE_0FD107:        A5 E7         LDA $E7                   ;
CODE_0FD109:        18            CLC                       ;
CODE_0FD10A:        69 20         ADC #$20                  ;
CODE_0FD10C:        85 E7         STA $E7                   ;
CODE_0FD10E:        E8            INX                       ;
CODE_0FD10F:        E0 0D         CPX #$0D                  ;
CODE_0FD111:        90 EC         BCC CODE_0FD0FF           ;
CODE_0FD113:        7A            PLY                       ;
CODE_0FD114:        FA            PLX                       ;
CODE_0FD115:        60            RTS                       ;

CODE_0FD116:        A5 9E         LDA $9E                   ;
CODE_0FD118:        1A            INC A                     ;
CODE_0FD119:        8D FC 02      STA $02FC                 ;
CODE_0FD11C:        DA            PHX                       ;
CODE_0FD11D:        BC 0D 03      LDY $030D,x               ;
CODE_0FD120:        84 E6         STY $E6                   ;
CODE_0FD122:        B9 15 D2      LDA DATA_0FD215,y               ;
CODE_0FD125:        18            CLC                       ;
CODE_0FD126:        69 A0         ADC #$A0                  ;
CODE_0FD128:        85 E4         STA $E4                   ;
CODE_0FD12A:        B9 16 D2      LDA DATA_0FD215+1,y               ;
CODE_0FD12D:        18            CLC                       ;
CODE_0FD12E:        69 A0         ADC #$A0                  ;
CODE_0FD130:        85 E5         STA $E5                   ;
CODE_0FD132:        A4 E7         LDY $E7                   ;
CODE_0FD134:        BD 1A 03      LDA $031A,x               ;
CODE_0FD137:        20 BB D1      JSR CODE_0FD1BB           ;
CODE_0FD13A:        BD 1A 03      LDA $031A,x               ;
CODE_0FD13D:        18            CLC                       ;
CODE_0FD13E:        69 08         ADC #$08                  ;
CODE_0FD140:        20 BB D1      JSR CODE_0FD1BB           ;
CODE_0FD143:        A4 E7         LDY $E7                   ;
CODE_0FD145:        A5 E4         LDA $E4                   ;
CODE_0FD147:        20 A5 D1      JSR CODE_0FD1A5           ;
CODE_0FD14A:        98            TYA                       ;
CODE_0FD14B:        18            CLC                       ;
CODE_0FD14C:        69 10         ADC #$10                  ;
CODE_0FD14E:        A8            TAY                       ;
CODE_0FD14F:        A5 E5         LDA $E5                   ;
CODE_0FD151:        20 A5 D1      JSR CODE_0FD1A5           ;
CODE_0FD154:        A6 E6         LDX $E6                   ;
CODE_0FD156:        E0 04         CPX #$04                  ;
CODE_0FD158:        B0 04         BCS CODE_0FD15E           ;
CODE_0FD15A:        A9 22         LDA #$22                  ;
CODE_0FD15C:        80 02         BRA CODE_0FD160           ;

CODE_0FD15E:        A9 23         LDA #$23                  ;
CODE_0FD160:        A4 E7         LDY $E7                   ;
CODE_0FD162:        C8            INY                       ;
CODE_0FD163:        C8            INY                       ;
CODE_0FD164:        C8            INY                       ;
CODE_0FD165:        48            PHA                       ;
CODE_0FD166:        20 BB D1      JSR CODE_0FD1BB           ;
CODE_0FD169:        68            PLA                       ;
CODE_0FD16A:        20 BB D1      JSR CODE_0FD1BB           ;
CODE_0FD16D:        A4 E7         LDY $E7                   ;
CODE_0FD16F:        8A            TXA                       ;
CODE_0FD170:        0A            ASL A                     ;
CODE_0FD171:        0A            ASL A                     ;
CODE_0FD172:        0A            ASL A                     ;
CODE_0FD173:        AA            TAX                       ;
CODE_0FD174:        A9 08         LDA #$08                  ;
CODE_0FD176:        85 E8         STA $E8                   ;
CODE_0FD178:        BD CD D1      LDA DATA_0FD1CD,x               ;
CODE_0FD17B:        99 02 09      STA $0902,y               ;
CODE_0FD17E:        C8            INY                       ;
CODE_0FD17F:        C8            INY                       ;
CODE_0FD180:        C8            INY                       ;
CODE_0FD181:        C8            INY                       ;
CODE_0FD182:        E8            INX                       ;
CODE_0FD183:        C6 E8         DEC $E8                   ;
CODE_0FD185:        D0 F1         BNE CODE_0FD178           ;
CODE_0FD187:        FA            PLX                       ;
CODE_0FD188:        DE 27 03      DEC $0327,x               ;
CODE_0FD18B:        BD 27 03      LDA $0327,x               ;
CODE_0FD18E:        D0 14         BNE CODE_0FD1A4           ;
CODE_0FD190:        A9 03         LDA #$03                  ;
CODE_0FD192:        9D 27 03      STA $0327,x               ;
CODE_0FD195:        FE 0D 03      INC $030D,x               ;
CODE_0FD198:        BD 0D 03      LDA $030D,x               ;
CODE_0FD19B:        29 0F         AND #$0F                  ;
CODE_0FD19D:        C9 09         CMP #$09                  ;
CODE_0FD19F:        D0 03         BNE CODE_0FD1A4           ;
CODE_0FD1A1:        9E 00 03      STZ $0300,x               ;
CODE_0FD1A4:        60            RTS                       ;

CODE_0FD1A5:        99 01 09      STA $0901,y               ;
CODE_0FD1A8:        18            CLC                       ;
CODE_0FD1A9:        69 08         ADC #$08                  ;
CODE_0FD1AB:        99 05 09      STA $0905,y               ;
CODE_0FD1AE:        18            CLC                       ;
CODE_0FD1AF:        69 08         ADC #$08                  ;
CODE_0FD1B1:        99 09 09      STA $0909,y               ;
CODE_0FD1B4:        18            CLC                       ;
CODE_0FD1B5:        69 08         ADC #$08                  ;
CODE_0FD1B7:        99 0D 09      STA $090D,y               ;
CODE_0FD1BA:        60            RTS                       ;

CODE_0FD1BB:        99 00 09      STA $0900,y               ;
CODE_0FD1BE:        99 04 09      STA $0904,y               ;
CODE_0FD1C1:        99 08 09      STA $0908,y               ;
CODE_0FD1C4:        99 0C 09      STA $090C,y               ;
CODE_0FD1C7:        98            TYA                       ;
CODE_0FD1C8:        18            CLC                       ;
CODE_0FD1C9:        69 10         ADC #$10                  ;
CODE_0FD1CB:        A8            TAY                       ;
CODE_0FD1CC:        60            RTS                       ;

DATA_0FD1CD:        db $10,$20,$FC,$FC,$11,$21,$FC,$FC ;
                    db $10,$20,$FC,$FC,$11,$21,$FC,$FC ;
                    db $12,$22,$FC,$FC,$13,$23,$FC,$FC ;
                    db $14,$24,$16,$FC,$15,$25,$17,$FC ;
                    db $4C,$5C,$4E,$5E,$4D,$5D,$4F,$5F ;
                    db $8C,$9C,$8E,$9E,$8D,$9D,$8F,$9F ;
                    db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF ;
                    db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF ;
                    db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF ;

DATA_0FD215:        db $00,$00,$01,$03,$06,$0A,$0F,$14 ;
                    db $1C,$24,$3C ;

DATA_0FD220:        db $0E,$0E,$0E,$66,$66,$64,$64,$64 ;
                    db $66,$66 ;

CODE_0FD22A:        8B            PHB
CODE_0FD22B:        4B            PHK                       ;
CODE_0FD22C:        AB            PLB                       ;
CODE_0FD22D:        5A            PHY                       ;
CODE_0FD22E:        BD 46 0B      LDA $0B46,x               ;
CODE_0FD231:        18            CLC                       ;
CODE_0FD232:        69 04         ADC #$04                  ;
CODE_0FD234:        A8            TAY                       ;
CODE_0FD235:        B5 47         LDA $47,x                 ;
CODE_0FD237:        C9 02         CMP #$02                  ;
CODE_0FD239:        D0 02         BNE CODE_0FD23D           ;
CODE_0FD23B:        A9 41         LDA #$41                  ;
CODE_0FD23D:        49 2B         EOR #$2B                  ;
CODE_0FD23F:        99 03 09      STA $0903,y               ;
CODE_0FD242:        B5 1C         LDA $1C,x                 ;
CODE_0FD244:        C9 08         CMP #$08                  ;
CODE_0FD246:        F0 0F         BEQ CODE_0FD257           ;
CODE_0FD248:        BD A2 0E      LDA $0EA2,x               ;
CODE_0FD24B:        C9 0A         CMP #$0A                  ;
CODE_0FD24D:        B0 08         BCS CODE_0FD257           ;
CODE_0FD24F:        B9 03 09      LDA $0903,y               ;
CODE_0FD252:        49 20         EOR #$20                  ;
CODE_0FD254:        99 03 09      STA $0903,y               ;
CODE_0FD257:        BD 4F 0F      LDA $0F4F,x               ;
CODE_0FD25A:        4A            LSR A                     ;
CODE_0FD25B:        4A            LSR A                     ;
CODE_0FD25C:        29 0F         AND #$0F                  ;
CODE_0FD25E:        85 E4         STA $E4                   ;
CODE_0FD260:        B5 29         LDA $29,x                 ;
CODE_0FD262:        29 20         AND #$20                  ;
CODE_0FD264:        D0 06         BNE CODE_0FD26C           ;
CODE_0FD266:        A5 E4         LDA $E4                   ;
CODE_0FD268:        C9 09         CMP #$09                  ;
CODE_0FD26A:        90 03         BCC CODE_0FD26F           ;
CODE_0FD26C:        9E 4F 0F      STZ $0F4F,x               ;
CODE_0FD26F:        A5 0F         LDA $0F                   ;
CODE_0FD271:        C9 09         CMP #$09                  ;
CODE_0FD273:        B0 08         BCS CODE_0FD27D           ;
CODE_0FD275:        AD 67 0E      LDA $0E67                 ;
CODE_0FD278:        D0 03         BNE CODE_0FD27D           ;
CODE_0FD27A:        FE 4F 0F      INC $0F4F,x               ;
CODE_0FD27D:        A6 E4         LDX $E4                   ;
CODE_0FD27F:        AD AE 03      LDA $03AE                 ;
CODE_0FD282:        99 00 09      STA $0900,y               ;
CODE_0FD285:        AD B9 03      LDA $03B9                 ;
CODE_0FD288:        18            CLC                       ;
CODE_0FD289:        69 08         ADC #$08                  ;
CODE_0FD28B:        99 01 09      STA $0901,y               ;
CODE_0FD28E:        BD 20 D2      LDA DATA_0FD220,x               ;
CODE_0FD291:        99 02 09      STA $0902,y               ;
CODE_0FD294:        A9 02         LDA #$02                  ;
CODE_0FD296:        99 00 0D      STA $0D00,y               ;
CODE_0FD299:        A6 9E         LDX $9E                   ;
CODE_0FD29B:        BD 1A 02      LDA $021A,x               ;
CODE_0FD29E:        85 E4         STA $E4                   ;
CODE_0FD2A0:        B5 79         LDA $79,x                 ;
CODE_0FD2A2:        85 E5         STA $E5                   ;
CODE_0FD2A4:        C2 20         REP #$20                  ;
CODE_0FD2A6:        A5 E4         LDA $E4                   ;
CODE_0FD2A8:        38            SEC                       ;
CODE_0FD2A9:        E5 42         SBC $42                   ;
CODE_0FD2AB:        85 E4         STA $E4                   ;
CODE_0FD2AD:        E2 20         SEP #$20                  ;
CODE_0FD2AF:        A5 E5         LDA $E5                   ;
CODE_0FD2B1:        F0 05         BEQ CODE_0FD2B8           ;
CODE_0FD2B3:        A9 03         LDA #$03                  ;
CODE_0FD2B5:        99 00 0D      STA $0D00,y               ;
CODE_0FD2B8:        AD B9 03      LDA $03B9                 ;
CODE_0FD2BB:        C9 E0         CMP #$E0                  ;
CODE_0FD2BD:        B0 06         BCS CODE_0FD2C5           ;
CODE_0FD2BF:        B5 BC         LDA $BC,x                 ;
CODE_0FD2C1:        C9 01         CMP #$01                  ;
CODE_0FD2C3:        F0 05         BEQ CODE_0FD2CA           ;
CODE_0FD2C5:        A9 F0         LDA #$F0                  ;
CODE_0FD2C7:        99 01 09      STA $0901,y               ;
CODE_0FD2CA:        7A            PLY                       ;
CODE_0FD2CB:        AB            PLB                       ;
CODE_0FD2CC:        6B            RTL                       ;

CODE_0FD2CD:        AD FA 03      LDA $03FA                 ;
CODE_0FD2D0:        F0 2C         BEQ CODE_0FD2FE           ;
CODE_0FD2D2:        AD 19 02      LDA $0219                 ;
CODE_0FD2D5:        85 E4         STA $E4                   ;
CODE_0FD2D7:        AD 78 00      LDA $0078                 ;
CODE_0FD2DA:        85 E5         STA $E5                   ;
CODE_0FD2DC:        9C FE 02      STZ $02FE                 ;
CODE_0FD2DF:        C2 20         REP #$20                  ;
CODE_0FD2E1:        AD FD 02      LDA $02FD                 ;
CODE_0FD2E4:        18            CLC                       ;
CODE_0FD2E5:        6D CC 03      ADC $03CC                 ;
CODE_0FD2E8:        C5 E4         CMP $E4                   ;
CODE_0FD2EA:        90 05         BCC CODE_0FD2F1           ;
CODE_0FD2EC:        E2 20         SEP #$20                  ;
CODE_0FD2EE:        A9 01         LDA #$01                  ;
CODE_0FD2F0:        6B            RTL                       ;

CODE_0FD2F1:        E2 20         SEP #$20                  ;
CODE_0FD2F3:        9C FA 03      STZ $03FA                 ;
CODE_0FD2F6:        A9 34         LDA #$34                  ;
CODE_0FD2F8:        8D F7 02      STA $02F7                 ;
CODE_0FD2FB:        8D CF 03      STA $03CF                 ;
CODE_0FD2FE:        AD CF 03      LDA $03CF                 ;
CODE_0FD301:        F0 2B         BEQ CODE_0FD32E           ;
CODE_0FD303:        C9 28         CMP #$28                  ;
CODE_0FD305:        90 04         BCC CODE_0FD30B           ;
CODE_0FD307:        A9 F8         LDA #$F8                  ;
CODE_0FD309:        80 02         BRA CODE_0FD30D           ;

CODE_0FD30B:        A9 F0         LDA #$F0                  ;
CODE_0FD30D:        8D CE 03      STA $03CE                 ;
CODE_0FD310:        AD 54 07      LDA $0754                 ;
CODE_0FD313:        F0 09         BEQ CODE_0FD31E           ;
CODE_0FD315:        AD CE 03      LDA $03CE                 ;
CODE_0FD318:        38            SEC                       ;
CODE_0FD319:        E9 10         SBC #$10                  ;
CODE_0FD31B:        8D CE 03      STA $03CE                 ;
CODE_0FD31E:        CE CF 03      DEC $03CF                 ;
CODE_0FD321:        AD CF 03      LDA $03CF                 ;
CODE_0FD324:        D0 00         BNE CODE_0FD326           ;
CODE_0FD326:        64 5D         STZ $5D                   ;
CODE_0FD328:        9C 05 07      STZ $0705                 ;
CODE_0FD32B:        A9 00         LDA #$00                  ;
CODE_0FD32D:        6B            RTL                       ;

CODE_0FD32E:        A9 01         LDA #$01                  ;
CODE_0FD330:        8D 23 07      STA $0723                 ;
CODE_0FD333:        8D 54 02      STA $0254                 ;
CODE_0FD336:        20 54 D3      JSR CODE_0FD354           ;
CODE_0FD339:        9C CE 03      STZ $03CE                 ;
CODE_0FD33C:        AD FB 03      LDA $03FB                 ;
CODE_0FD33F:        F0 06         BEQ CODE_0FD347           ;
CODE_0FD341:        CE FB 03      DEC $03FB                 ;
CODE_0FD344:        A9 01         LDA #$01                  ;
CODE_0FD346:        6B            RTL                       ;

CODE_0FD347:        AD 46 07      LDA $0746                 ;
CODE_0FD34A:        C9 01         CMP #$01                  ;
CODE_0FD34C:        B0 03         BCS CODE_0FD351           ;
CODE_0FD34E:        EE 46 07      INC $0746                 ;
CODE_0FD351:        A9 00         LDA #$00                  ;
CODE_0FD353:        6B            RTL                       ;

CODE_0FD354:        A2 00         LDX #$00                  ;
CODE_0FD356:        C2 20         REP #$20                  ;
CODE_0FD358:        BD E0 11      LDA $11E0,x               ;
CODE_0FD35B:        85 E4         STA $E4                   ;
CODE_0FD35D:        29 00 7C      AND #$7C00                ;
CODE_0FD360:        F0 08         BEQ CODE_0FD36A           ;
CODE_0FD362:        A5 E4         LDA $E4                   ;
CODE_0FD364:        38            SEC                       ;
CODE_0FD365:        E9 00 04      SBC #$0400                ;
CODE_0FD368:        85 E4         STA $E4                   ;
CODE_0FD36A:        A5 E4         LDA $E4                   ;
CODE_0FD36C:        29 E0 03      AND #$03E0                ;
CODE_0FD36F:        F0 08         BEQ CODE_0FD379           ;
CODE_0FD371:        A5 E4         LDA $E4                   ;
CODE_0FD373:        38            SEC                       ;
CODE_0FD374:        E9 20 00      SBC #$0020                ;
CODE_0FD377:        85 E4         STA $E4                   ;
CODE_0FD379:        A5 E4         LDA $E4                   ;
CODE_0FD37B:        29 1F 00      AND #$001F                ;
CODE_0FD37E:        F0 02         BEQ CODE_0FD382           ;
CODE_0FD380:        C6 E4         DEC $E4                   ;
CODE_0FD382:        A5 E4         LDA $E4                   ;
CODE_0FD384:        9D E0 11      STA $11E0,x               ;
CODE_0FD387:        E8            INX                       ;
CODE_0FD388:        E8            INX                       ;
CODE_0FD389:        E0 20         CPX #$20                  ;
CODE_0FD38B:        D0 CB         BNE CODE_0FD358           ;
CODE_0FD38D:        E2 20         SEP #$20                  ;
CODE_0FD38F:        EE 00 12      INC $1200                 ;
CODE_0FD392:        60            RTS                       ;

DATA_0FD393:        db $90,$80,$70,$90

DATA_0FD397:        db $FF,$01

CODE_0FD399:        DA            PHX
CODE_0FD39A:        5A            PHY
CODE_0FD39B:        AC 68 03      LDY $0368                 ;
CODE_0FD39E:        AE 4E 0F      LDX $0F4E                 ;
CODE_0FD3A1:        B9 1A 02      LDA $021A,y               ;
CODE_0FD3A4:        38            SEC                       ;
CODE_0FD3A5:        E9 0E         SBC #$0E                  ;
CODE_0FD3A7:        9D 1A 02      STA $021A,x               ;
CODE_0FD3AA:        B9 79 00      LDA $0079,y               ;
CODE_0FD3AD:        95 79         STA $79,x                 ;
CODE_0FD3AF:        B9 38 02      LDA $0238,y               ;
CODE_0FD3B2:        18            CLC                       ;
CODE_0FD3B3:        69 08         ADC #$08                  ;
CODE_0FD3B5:        9D 38 02      STA $0238,x               ;
CODE_0FD3B8:        BD B7 07      LDA $07B7,x               ;
CODE_0FD3BB:        29 03         AND #$03                  ;
CODE_0FD3BD:        9D 1D 04      STA $041D,x               ;
CODE_0FD3C0:        A8            TAY                       ;
CODE_0FD3C1:        B9 93 D3      LDA DATA_0FD393,y               ;
CODE_0FD3C4:        A0 00         LDY #$00                  ;
CODE_0FD3C6:        DD 38 02      CMP $0238,x               ;
CODE_0FD3C9:        90 01         BCC CODE_0FD3CC           ;
CODE_0FD3CB:        C8            INY                       ;
CODE_0FD3CC:        B9 97 D3      LDA DATA_0FD397,y               ;
CODE_0FD3CF:        9D 3D 04      STA $043D,x               ;
CODE_0FD3D2:        9C CB 06      STZ $06CB                 ;
CODE_0FD3D5:        A9 08         LDA #$08                  ;
CODE_0FD3D7:        9D 90 04      STA $0490,x               ;
CODE_0FD3DA:        A9 01         LDA #$01                  ;
CODE_0FD3DC:        95 BC         STA $BC,x                 ;
CODE_0FD3DE:        95 10         STA $10,x                 ;
CODE_0FD3E0:        4A            LSR A                     ;
CODE_0FD3E1:        9D 02 04      STA $0402,x               ;
CODE_0FD3E4:        95 29         STA $29,x                 ;
CODE_0FD3E6:        7A            PLY                       ;
CODE_0FD3E7:        FA            PLX                       ;
CODE_0FD3E8:        60            RTS                       ;

CODE_0FD3E9:        8B            PHB                       ;
CODE_0FD3EA:        4B            PHK                       ;
CODE_0FD3EB:        AB            PLB                       ;
CODE_0FD3EC:        BC 46 0B      LDY $0B46,x               ;
CODE_0FD3EF:        AD AE 03      LDA $03AE                 ;
CODE_0FD3F2:        99 00 09      STA $0900,y               ;
CODE_0FD3F5:        18            CLC                       ;
CODE_0FD3F6:        69 08         ADC #$08                  ;
CODE_0FD3F8:        99 04 09      STA $0904,y               ;
CODE_0FD3FB:        AD B9 03      LDA $03B9                 ;
CODE_0FD3FE:        99 01 09      STA $0901,y               ;
CODE_0FD401:        99 05 09      STA $0905,y               ;
CODE_0FD404:        A9 21         LDA #$21                  ;
CODE_0FD406:        99 03 09      STA $0903,y               ;
CODE_0FD409:        99 07 09      STA $0907,y               ;
CODE_0FD40C:        BD 58 0F      LDA $0F58,x               ;
CODE_0FD40F:        4A            LSR A                     ;
CODE_0FD410:        4A            LSR A                     ;
CODE_0FD411:        4A            LSR A                     ;
CODE_0FD412:        C9 03         CMP #$03                  ;
CODE_0FD414:        D0 23         BNE CODE_0FD439           ;
CODE_0FD416:        9E 36 0F      STZ $0F36,x               ;
CODE_0FD419:        A9 01         LDA #$01                  ;
CODE_0FD41B:        9D 36 0F      STA $0F36,x               ;
CODE_0FD41E:        BD 1A 02      LDA $021A,x               ;
CODE_0FD421:        18            CLC                       ;
CODE_0FD422:        69 10         ADC #$10                  ;
CODE_0FD424:        9D 62 0F      STA $0F62,x               ;
CODE_0FD427:        B5 79         LDA $79,x                 ;
CODE_0FD429:        69 00         ADC #$00                  ;
CODE_0FD42B:        9D 6B 0F      STA $0F6B,x               ;
CODE_0FD42E:        AD B9 03      LDA $03B9                 ;
CODE_0FD431:        9D 74 0F      STA $0F74,x               ;
CODE_0FD434:        A9 00         LDA #$00                  ;
CODE_0FD436:        9D 58 0F      STA $0F58,x               ;
CODE_0FD439:        AA            TAX                       ;
CODE_0FD43A:        BD CA D4      LDA DATA_0FD4CA,x               ;
CODE_0FD43D:        99 02 09      STA $0902,y               ;
CODE_0FD440:        1A            INC A                     ;
CODE_0FD441:        99 06 09      STA $0906,y               ;
CODE_0FD444:        86 E4         STX $E4                   ;
CODE_0FD446:        A6 9E         LDX $9E                   ;
CODE_0FD448:        BD 1A 02      LDA $021A,x               ;
CODE_0FD44B:        85 E5         STA $E5                   ;
CODE_0FD44D:        B5 79         LDA $79,x                 ;
CODE_0FD44F:        85 E6         STA $E6                   ;
CODE_0FD451:        C2 20         REP #$20                  ;
CODE_0FD453:        A5 E5         LDA $E5                   ;
CODE_0FD455:        38            SEC                       ;
CODE_0FD456:        E5 42         SBC $42                   ;
CODE_0FD458:        85 E5         STA $E5                   ;
CODE_0FD45A:        18            CLC                       ;
CODE_0FD45B:        69 08 00      ADC #$0008                ;
CODE_0FD45E:        85 E7         STA $E7                   ;
CODE_0FD460:        E2 20         SEP #$20                  ;
CODE_0FD462:        A9 02         LDA #$02                  ;
CODE_0FD464:        85 E9         STA $E9                   ;
CODE_0FD466:        A5 E6         LDA $E6                   ;
CODE_0FD468:        F0 02         BEQ CODE_0FD46C           ;
CODE_0FD46A:        A9 01         LDA #$01                  ;
CODE_0FD46C:        05 E9         ORA $E9                   ;
CODE_0FD46E:        99 00 0D      STA $0D00,y               ;
CODE_0FD471:        A5 E8         LDA $E8                   ;
CODE_0FD473:        F0 02         BEQ CODE_0FD477           ;
CODE_0FD475:        A9 01         LDA #$01                  ;
CODE_0FD477:        05 E9         ORA $E9                   ;
CODE_0FD479:        99 04 0D      STA $0D04,y               ;
CODE_0FD47C:        BD 36 0F      LDA $0F36,x               ;
CODE_0FD47F:        F0 42         BEQ CODE_0FD4C3           ;
CODE_0FD481:        BD 62 0F      LDA $0F62,x               ;
CODE_0FD484:        85 E5         STA $E5                   ;
CODE_0FD486:        BD 6B 0F      LDA $0F6B,x               ;
CODE_0FD489:        85 E6         STA $E6                   ;
CODE_0FD48B:        C2 20         REP #$20                  ;
CODE_0FD48D:        A5 E5         LDA $E5                   ;
CODE_0FD48F:        38            SEC                       ;
CODE_0FD490:        E5 42         SBC $42                   ;
CODE_0FD492:        85 E5         STA $E5                   ;
CODE_0FD494:        E2 20         SEP #$20                  ;
CODE_0FD496:        A5 E5         LDA $E5                   ;
CODE_0FD498:        99 08 09      STA $0908,y               ;
CODE_0FD49B:        BD 58 0F      LDA $0F58,x               ;
CODE_0FD49E:        4A            LSR A                     ;
CODE_0FD49F:        18            CLC                       ;
CODE_0FD4A0:        69 04         ADC #$04                  ;
CODE_0FD4A2:        18            CLC                       ;
CODE_0FD4A3:        7D 74 0F      ADC $0F74,x               ;
CODE_0FD4A6:        99 09 09      STA $0909,y               ;
CODE_0FD4A9:        A6 E4         LDX $E4                   ;
CODE_0FD4AB:        BD CD D4      LDA DATA_0FD4CD,x               ;
CODE_0FD4AE:        99 0A 09      STA $090A,y               ;
CODE_0FD4B1:        A9 28         LDA #$28                  ;
CODE_0FD4B3:        99 0B 09      STA $090B,y               ;
CODE_0FD4B6:        64 E9         STZ $E9                   ;
CODE_0FD4B8:        A5 E6         LDA $E6                   ;
CODE_0FD4BA:        F0 02         BEQ CODE_0FD4BE           ;
CODE_0FD4BC:        A9 01         LDA #$01                  ;
CODE_0FD4BE:        05 E9         ORA $E9                   ;
CODE_0FD4C0:        99 08 0D      STA $0D08,y               ;
CODE_0FD4C3:        A6 9E         LDX $9E                   ;
CODE_0FD4C5:        FE 58 0F      INC $0F58,x               ;
CODE_0FD4C8:        AB            PLB                       ;
CODE_0FD4C9:        6B            RTL                       ;

DATA_0FD4CA:        db $86,$A6,$89

DATA_0FD4CD:        db $30,$31,$32,$06,$0A,$0E

CODE_0FD4D3:        8B            PHB                       ;
CODE_0FD4D4:        4B            PHK                       ;
CODE_0FD4D5:        AB            PLB                       ;
CODE_0FD4D6:        A0 04         LDY #$04                  ;
CODE_0FD4D8:        8C FF 02      STY $02FF                 ;
CODE_0FD4DB:        AD AE 03      LDA $03AE                 ;
CODE_0FD4DE:        38            SEC                       ;
CODE_0FD4DF:        E9 08         SBC #$08                  ;
CODE_0FD4E1:        85 E4         STA $E4                   ;
CODE_0FD4E3:        A2 00         LDX #$00                  ;
CODE_0FD4E5:        BD 03 D6      LDA DATA_0FD603,x               ;
CODE_0FD4E8:        18            CLC                       ;
CODE_0FD4E9:        65 E4         ADC $E4                   ;
CODE_0FD4EB:        99 00 08      STA $0800,y               ;
CODE_0FD4EE:        AD B9 03      LDA $03B9                 ;
CODE_0FD4F1:        38            SEC                       ;
CODE_0FD4F2:        E9 04         SBC #$04                  ;
CODE_0FD4F4:        99 01 08      STA $0801,y               ;
CODE_0FD4F7:        DA            PHX                       ;
CODE_0FD4F8:        A5 09         LDA $09                   ;
CODE_0FD4FA:        29 18         AND #$18                  ;
CODE_0FD4FC:        86 E5         STX $E5                   ;
CODE_0FD4FE:        18            CLC                       ;
CODE_0FD4FF:        65 E5         ADC $E5                   ;
CODE_0FD501:        AA            TAX                       ;
CODE_0FD502:        BD E3 D5      LDA DATA_0FD5E3,x               ;
CODE_0FD505:        99 03 08      STA $0803,y               ;
CODE_0FD508:        BD C3 D5      LDA DATA_0FD5C3,x               ;
CODE_0FD50B:        99 02 08      STA $0802,y               ;
CODE_0FD50E:        FA            PLX                       ;
CODE_0FD50F:        C8            INY                       ;
CODE_0FD510:        C8            INY                       ;
CODE_0FD511:        C8            INY                       ;
CODE_0FD512:        C8            INY                       ;
CODE_0FD513:        E8            INX                       ;
CODE_0FD514:        E0 05         CPX #$05                  ;
CODE_0FD516:        D0 CD         BNE CODE_0FD4E5           ;
CODE_0FD518:        A6 9E         LDX $9E                   ;
CODE_0FD51A:        BD 1A 02      LDA $021A,x               ;
CODE_0FD51D:        85 E5         STA $E5                   ;
CODE_0FD51F:        B5 79         LDA $79,x                 ;
CODE_0FD521:        85 E6         STA $E6                   ;
CODE_0FD523:        C2 20         REP #$20                  ;
CODE_0FD525:        A5 E5         LDA $E5                   ;
CODE_0FD527:        38            SEC                       ;
CODE_0FD528:        E9 08 00      SBC #$0008                ;
CODE_0FD52B:        38            SEC                       ;
CODE_0FD52C:        E5 42         SBC $42                   ;
CODE_0FD52E:        85 E9         STA $E9                   ;
CODE_0FD530:        18            CLC                       ;
CODE_0FD531:        69 10 00      ADC #$0010                ;
CODE_0FD534:        85 E8         STA $E8                   ;
CODE_0FD536:        18            CLC                       ;
CODE_0FD537:        69 04 00      ADC #$0004                ;
CODE_0FD53A:        85 DF         STA $DF                   ;
CODE_0FD53C:        18            CLC                       ;
CODE_0FD53D:        69 08 00      ADC #$0008                ;
CODE_0FD540:        85 DD         STA $DD                   ;
CODE_0FD542:        18            CLC                       ;
CODE_0FD543:        69 04 00      ADC #$0004                ;
CODE_0FD546:        85 E7         STA $E7                   ;
CODE_0FD548:        18            CLC                       ;
CODE_0FD549:        69 10 00      ADC #$0010                ;
CODE_0FD54C:        85 E6         STA $E6                   ;
CODE_0FD54E:        38            SEC                       ;
CODE_0FD54F:        E9 10 00      SBC #$0010                ;
CODE_0FD552:        85 E5         STA $E5                   ;
CODE_0FD554:        E2 20         SEP #$20                  ;
CODE_0FD556:        A9 02         LDA #$02                  ;
CODE_0FD558:        85 E4         STA $E4                   ;
CODE_0FD55A:        A0 04         LDY #$04                  ;
CODE_0FD55C:        A2 05         LDX #$05                  ;
CODE_0FD55E:        B5 E5         LDA $E5,x                 ;
CODE_0FD560:        F0 02         BEQ CODE_0FD564           ;
CODE_0FD562:        A9 01         LDA #$01                  ;
CODE_0FD564:        05 E4         ORA $E4                   ;
CODE_0FD566:        99 00 0C      STA $0C00,y               ;
CODE_0FD569:        C8            INY                       ;
CODE_0FD56A:        C8            INY                       ;
CODE_0FD56B:        C8            INY                       ;
CODE_0FD56C:        C8            INY                       ;
CODE_0FD56D:        CA            DEX                       ;
CODE_0FD56E:        D0 EE         BNE CODE_0FD55E           ;
CODE_0FD570:        64 E4         STZ $E4                   ;
CODE_0FD572:        AD CC 06      LDA $06CC                 ;
CODE_0FD575:        D0 17         BNE CODE_0FD58E           ;
CODE_0FD577:        A9 F0         LDA #$F0                  ;
CODE_0FD579:        8D 15 08      STA $0815                 ;
CODE_0FD57C:        A5 DE         LDA $DE                   ;
CODE_0FD57E:        F0 02         BEQ CODE_0FD582           ;
CODE_0FD580:        A9 01         LDA #$01                  ;
CODE_0FD582:        05 E4         ORA $E4                   ;
CODE_0FD584:        8D 00 0C      STA $0C00                 ;
CODE_0FD587:        A5 DD         LDA $DD                   ;
CODE_0FD589:        8D 00 08      STA $0800                 ;
CODE_0FD58C:        80 18         BRA CODE_0FD5A6           ;

CODE_0FD58E:        A9 F0         LDA #$F0                  ;
CODE_0FD590:        8D 0D 08      STA $080D                 ;
CODE_0FD593:        8D 11 08      STA $0811                 ;
CODE_0FD596:        A5 E0         LDA $E0                   ;
CODE_0FD598:        F0 02         BEQ CODE_0FD59C           ;
CODE_0FD59A:        A9 01         LDA #$01                  ;
CODE_0FD59C:        05 E4         ORA $E4                   ;
CODE_0FD59E:        8D 00 0C      STA $0C00                 ;
CODE_0FD5A1:        A5 DF         LDA $DF                   ;
CODE_0FD5A3:        8D 00 08      STA $0800                 ;
CODE_0FD5A6:        A5 09         LDA $09                   ;
CODE_0FD5A8:        29 10         AND #$10                  ;
CODE_0FD5AA:        4A            LSR A                     ;
CODE_0FD5AB:        4A            LSR A                     ;
CODE_0FD5AC:        4A            LSR A                     ;
CODE_0FD5AD:        4A            LSR A                     ;
CODE_0FD5AE:        18            CLC                       ;
CODE_0FD5AF:        6D B9 03      ADC $03B9                 ;
CODE_0FD5B2:        8D 01 08      STA $0801                 ;
CODE_0FD5B5:        A9 E7         LDA #$E7                  ;
CODE_0FD5B7:        8D 02 08      STA $0802                 ;
CODE_0FD5BA:        A9 2C         LDA #$2C                  ;
CODE_0FD5BC:        8D 03 08      STA $0803                 ;
CODE_0FD5BF:        A6 9E         LDX $9E                   ;
CODE_0FD5C1:        AB            PLB                       ;
CODE_0FD5C2:        6B            RTL                       ;

DATA_0FD5C3:        db $40,$41,$41,$42,$42,$00,$00,$00 ;
                    db $60,$61,$61,$62,$62,$00,$00,$00 ;
                    db $42,$41,$41,$40,$40,$00,$00,$00 ;
                    db $62,$61,$61,$60,$60,$00,$00,$00 ;
					
DATA_0FD5E3:        db $2A,$6A,$6A,$2A,$2A,$00,$00,$00 ;
                    db $2A,$6A,$6A,$2A,$2A,$00,$00,$00 ;
                    db $6A,$2A,$2A,$6A,$6A,$00,$00,$00 ;
                    db $6A,$2A,$2A,$6A,$6A,$00,$00,$00 ;

DATA_0FD603:        db $00,$10,$20,$30,$20 ;

DATA_0FD608:        db $C0,$E0,$C4,$C2,$E2,$C5,$C6,$E6 ;
                    db $D4,$C8,$E8,$D5,$CA,$EA,$E4,$C8 ;
                    db $EC,$E5,$CC,$E0,$F4,$CE,$E2,$F5 ;
                    db $C0,$E0,$C4,$EE,$E2,$C5,$CC,$E0 ;
                    db $94,$A4,$E2,$95,$80,$A0,$84,$82 ;
                    db $A2,$85,$C2,$E2,$C5,$C0,$E0,$C4 ;
                    db $C8,$E8,$D5,$C6,$E6,$D4,$C8,$EC ;
                    db $E5,$CA,$EA,$E4,$CE,$E2,$F5,$CC ;
                    db $E0,$F4,$EE,$E2,$C5,$C0,$E0,$C4 ;
                    db $A4,$E2,$95,$CC,$E0,$94,$82,$A2 ;
                    db $85,$80,$A0,$84 ;

DATA_0FD65C:        db $00,$01,$01,$00,$02,$02,$03,$04 ;
                    db $05,$06 ;

DATA_0FD666:        db $08,$09 ;

DATA_0FD668:        db $EE,$EE,$EE,$00,$F6,$F6,$F6,$00 ;
                    db $EC,$EC,$EC,$00,$00 ;

DATA_0FD675:        db $00,$00,$E8,$E8,$E8,$00,$F2,$F2 ;
                    db $F2,$00,$FA,$FA,$FA ;

DATA_0FD682:        db $EA,$EA,$EA,$00,$E5,$E5,$E5,$00 ;
                    db $E4,$E4,$E4,$00,$00 ;

DATA_0FD68F:        db $00,$00,$E8,$E8,$E8,$00,$ED,$ED ;
                    db $ED,$00,$E5,$E5,$E5 ;

DATA_0FD69C:        db $A9,$B9,$E8,$00,$A9,$B9,$E8,$00 ;
                    db $A9,$B9,$E8,$00,$00 ;

DATA_0FD6A9:        db $00,$00,$A9,$B9,$E8,$00,$A9,$B9 ;
                    db $E8,$00,$A9,$B9,$E8 ;

DATA_0FD6B6:        db $27,$27,$26,$27,$27,$27,$26,$27 ;
                    db $27,$27,$26,$27,$27 ;

DATA_0FD6C3:        db $27,$27,$27,$27,$26,$27,$27,$27 ;
                    db $26,$27,$27,$27,$26 ;

CODE_0FD6D0:        DA            PHX
CODE_0FD6D1:        EE CA 03      INC $03CA                 ;
CODE_0FD6D4:        AD CA 03      LDA $03CA                 ;
CODE_0FD6D7:        C9 34         CMP #$34                  ;
CODE_0FD6D9:        B0 5D         BCS CODE_0FD738           ;
CODE_0FD6DB:        4A            LSR A                     ;
CODE_0FD6DC:        4A            LSR A                     ;
CODE_0FD6DD:        AA            TAX                       ;
CODE_0FD6DE:        BD 68 D6      LDA DATA_0FD668,x               ;
CODE_0FD6E1:        18            CLC                       ;
CODE_0FD6E2:        6D AE 03      ADC $03AE                 ;
CODE_0FD6E5:        18            CLC                       ;
CODE_0FD6E6:        69 18         ADC #$18                  ;
CODE_0FD6E8:        8D F8 08      STA $08F8                 ;
CODE_0FD6EB:        BD 75 D6      LDA DATA_0FD675,x               ;
CODE_0FD6EE:        18            CLC                       ;
CODE_0FD6EF:        6D AE 03      ADC $03AE                 ;
CODE_0FD6F2:        18            CLC                       ;
CODE_0FD6F3:        69 18         ADC #$18                  ;
CODE_0FD6F5:        8D FC 08      STA $08FC                 ;
CODE_0FD6F8:        BD 82 D6      LDA DATA_0FD682,x               ;
CODE_0FD6FB:        D0 04         BNE CODE_0FD701           ;
CODE_0FD6FD:        A9 F0         LDA #$F0                  ;
CODE_0FD6FF:        80 07         BRA CODE_0FD708           ;

CODE_0FD701:        18            CLC                       ;
CODE_0FD702:        6D B9 03      ADC $03B9                 ;
CODE_0FD705:        18            CLC                       ;
CODE_0FD706:        69 10         ADC #$10                  ;
CODE_0FD708:        8D F9 08      STA $08F9                 ;
CODE_0FD70B:        BD 8F D6      LDA DATA_0FD68F,x               ;
CODE_0FD70E:        D0 04         BNE CODE_0FD714           ;
CODE_0FD710:        A9 F0         LDA #$F0                  ;
CODE_0FD712:        80 07         BRA CODE_0FD71B           ;

CODE_0FD714:        18            CLC                       ;
CODE_0FD715:        69 10         ADC #$10                  ;
CODE_0FD717:        18            CLC                       ;
CODE_0FD718:        6D B9 03      ADC $03B9                 ;
CODE_0FD71B:        8D FD 08      STA $08FD                 ;
CODE_0FD71E:        BD 9C D6      LDA DATA_0FD69C,x               ;
CODE_0FD721:        8D FA 08      STA $08FA                 ;
CODE_0FD724:        BD A9 D6      LDA DATA_0FD6A9,x               ;
CODE_0FD727:        8D FE 08      STA $08FE                 ;
CODE_0FD72A:        BD B6 D6      LDA DATA_0FD6B6,x               ;
CODE_0FD72D:        8D FB 08      STA $08FB                 ;
CODE_0FD730:        BD C3 D6      LDA DATA_0FD6C3,x               ;
CODE_0FD733:        8D FF 08      STA $08FF                 ;
CODE_0FD736:        80 03         BRA CODE_0FD73B           ;

CODE_0FD738:        9C CB 03      STZ $03CB                 ;
CODE_0FD73B:        FA            PLX                       ;
CODE_0FD73C:        60            RTS                       ;

CODE_0FD73D:        8B            PHB                       ;
CODE_0FD73E:        4B            PHK                       ;
CODE_0FD73F:        AB            PLB                       ;
CODE_0FD740:        AD CB 03      LDA $03CB                 ;
CODE_0FD743:        F0 03         BEQ CODE_0FD748           ;
CODE_0FD745:        20 D0 D6      JSR CODE_0FD6D0           ;
CODE_0FD748:        AD 4C 0F      LDA $0F4C                 ;
CODE_0FD74B:        F0 15         BEQ CODE_0FD762           ;
CODE_0FD74D:        AC 4B 01      LDY $014B                 ;
CODE_0FD750:        C0 08         CPY #$08                  ;
CODE_0FD752:        D0 1D         BNE CODE_0FD771           ;
CODE_0FD754:        AD 4C 0F      LDA $0F4C                 ;
CODE_0FD757:        4A            LSR A                     ;
CODE_0FD758:        4A            LSR A                     ;
CODE_0FD759:        29 01         AND #$01                  ;
CODE_0FD75B:        A8            TAY                       ;
CODE_0FD75C:        B9 66 D6      LDA DATA_0FD666,y               ;
CODE_0FD75F:        A8            TAY                       ;
CODE_0FD760:        80 0F         BRA CODE_0FD771           ;

CODE_0FD762:        BD 92 07      LDA $0792,x               ;
CODE_0FD765:        D0 03         BNE CODE_0FD76A           ;
CODE_0FD767:        9C 4B 01      STZ $014B                 ;
CODE_0FD76A:        AD 4B 01      LDA $014B                 ;
CODE_0FD76D:        4A            LSR A                     ;
CODE_0FD76E:        4A            LSR A                     ;
CODE_0FD76F:        4A            LSR A                     ;
CODE_0FD770:        A8            TAY                       ;
CODE_0FD771:        B9 5C D6      LDA DATA_0FD65C,y               ;
CODE_0FD774:        8D 4C 01      STA $014C                 ;
CODE_0FD777:        BD 46 0B      LDA $0B46,x               ;
CODE_0FD77A:        A8            TAY                       ;
CODE_0FD77B:        AD AE 03      LDA $03AE                 ;
CODE_0FD77E:        99 00 09      STA $0900,y               ;
CODE_0FD781:        99 04 09      STA $0904,y               ;
CODE_0FD784:        18            CLC                       ;
CODE_0FD785:        69 08         ADC #$08                  ;
CODE_0FD787:        99 08 09      STA $0908,y               ;
CODE_0FD78A:        18            CLC                       ;
CODE_0FD78B:        69 08         ADC #$08                  ;
CODE_0FD78D:        99 0C 09      STA $090C,y               ;
CODE_0FD790:        99 10 09      STA $0910,y               ;
CODE_0FD793:        99 14 09      STA $0914,y               ;
CODE_0FD796:        AD B9 03      LDA $03B9                 ;
CODE_0FD799:        99 01 09      STA $0901,y               ;
CODE_0FD79C:        99 0D 09      STA $090D,y               ;
CODE_0FD79F:        18            CLC                       ;
CODE_0FD7A0:        69 10         ADC #$10                  ;
CODE_0FD7A2:        99 05 09      STA $0905,y               ;
CODE_0FD7A5:        99 11 09      STA $0911,y               ;
CODE_0FD7A8:        38            SEC                       ;
CODE_0FD7A9:        E9 18         SBC #$18                  ;
CODE_0FD7AB:        99 09 09      STA $0909,y               ;
CODE_0FD7AE:        99 15 09      STA $0915,y               ;
CODE_0FD7B1:        B5 47         LDA $47,x                 ;
CODE_0FD7B3:        85 DE         STA $DE                   ;
CODE_0FD7B5:        C9 01         CMP #$01                  ;
CODE_0FD7B7:        F0 04         BEQ CODE_0FD7BD           ;
CODE_0FD7B9:        A9 61         LDA #$61                  ;
CODE_0FD7BB:        80 02         BRA CODE_0FD7BF           ;

CODE_0FD7BD:        A9 21         LDA #$21                  ;
CODE_0FD7BF:        99 03 09      STA $0903,y               ;
CODE_0FD7C2:        99 07 09      STA $0907,y               ;
CODE_0FD7C5:        99 0B 09      STA $090B,y               ;
CODE_0FD7C8:        99 0F 09      STA $090F,y               ;
CODE_0FD7CB:        99 13 09      STA $0913,y               ;
CODE_0FD7CE:        99 17 09      STA $0917,y               ;
CODE_0FD7D1:        86 9E         STX $9E                   ;
CODE_0FD7D3:        AD 4C 01      LDA $014C                 ;
CODE_0FD7D6:        0A            ASL A                     ;
CODE_0FD7D7:        85 DD         STA $DD                   ;
CODE_0FD7D9:        0A            ASL A                     ;
CODE_0FD7DA:        18            CLC                       ;
CODE_0FD7DB:        65 DD         ADC $DD                   ;
CODE_0FD7DD:        AA            TAX                       ;
CODE_0FD7DE:        18            CLC                       ;
CODE_0FD7DF:        69 06         ADC #$06                  ;
CODE_0FD7E1:        85 DD         STA $DD                   ;
CODE_0FD7E3:        A5 DE         LDA $DE                   ;
CODE_0FD7E5:        C9 01         CMP #$01                  ;
CODE_0FD7E7:        F0 0B         BEQ CODE_0FD7F4           ;
CODE_0FD7E9:        A5 DD         LDA $DD                   ;
CODE_0FD7EB:        18            CLC                       ;
CODE_0FD7EC:        69 2A         ADC #$2A                  ;
CODE_0FD7EE:        85 DD         STA $DD                   ;
CODE_0FD7F0:        38            SEC                       ;
CODE_0FD7F1:        E9 06         SBC #$06                  ;
CODE_0FD7F3:        AA            TAX                       ;
CODE_0FD7F4:        BD 08 D6      LDA DATA_0FD608,x               ;
CODE_0FD7F7:        99 02 09      STA $0902,y               ;
CODE_0FD7FA:        A9 02         LDA #$02                  ;
CODE_0FD7FC:        99 00 0D      STA $0D00,y               ;
CODE_0FD7FF:        C8            INY                       ;
CODE_0FD800:        C8            INY                       ;
CODE_0FD801:        C8            INY                       ;
CODE_0FD802:        C8            INY                       ;
CODE_0FD803:        E8            INX                       ;
CODE_0FD804:        E4 DD         CPX $DD                   ;
CODE_0FD806:        D0 EC         BNE CODE_0FD7F4           ;
CODE_0FD808:        A9 00         LDA #$00                  ;
CODE_0FD80A:        99 FC 0C      STA $0CFC,y               ;
CODE_0FD80D:        99 F0 0C      STA $0CF0,y               ;
CODE_0FD810:        A6 9E         LDX $9E                   ;
CODE_0FD812:        BD 1A 02      LDA $021A,x               ;
CODE_0FD815:        85 E4         STA $E4                   ;
CODE_0FD817:        B5 79         LDA $79,x                 ;
CODE_0FD819:        85 E5         STA $E5                   ;
CODE_0FD81B:        C2 20         REP #$20                  ;
CODE_0FD81D:        A5 E4         LDA $E4                   ;
CODE_0FD81F:        38            SEC                       ;
CODE_0FD820:        E5 42         SBC $42                   ;
CODE_0FD822:        85 E4         STA $E4                   ;
CODE_0FD824:        18            CLC                       ;
CODE_0FD825:        69 08 00      ADC #$0008                ;
CODE_0FD828:        85 E6         STA $E6                   ;
CODE_0FD82A:        18            CLC                       ;
CODE_0FD82B:        69 08 00      ADC #$0008                ;
CODE_0FD82E:        85 E8         STA $E8                   ;
CODE_0FD830:        18            CLC                       ;
CODE_0FD831:        69 30 00      ADC #$0030                ;
CODE_0FD834:        85 E2         STA $E2                   ;
CODE_0FD836:        E2 20         SEP #$20                  ;
CODE_0FD838:        BD 46 0B      LDA $0B46,x               ;
CODE_0FD83B:        A8            TAY                       ;
CODE_0FD83C:        A5 E3         LDA $E3                   ;
CODE_0FD83E:        C9 FF         CMP #$FF                  ;
CODE_0FD840:        D0 06         BNE CODE_0FD848           ;
CODE_0FD842:        74 10         STZ $10,x                 ;
CODE_0FD844:        74 29         STZ $29,x                 ;
CODE_0FD846:        74 1C         STZ $1C,x                 ;
CODE_0FD848:        A5 E5         LDA $E5                   ;
CODE_0FD84A:        F0 08         BEQ CODE_0FD854           ;
CODE_0FD84C:        A9 03         LDA #$03                  ;
CODE_0FD84E:        99 00 0D      STA $0D00,y               ;
CODE_0FD851:        99 04 0D      STA $0D04,y               ;
CODE_0FD854:        A5 E7         LDA $E7                   ;
CODE_0FD856:        F0 05         BEQ CODE_0FD85D           ;
CODE_0FD858:        A9 01         LDA #$01                  ;
CODE_0FD85A:        99 08 0D      STA $0D08,y               ;
CODE_0FD85D:        A5 E9         LDA $E9                   ;
CODE_0FD85F:        F0 0B         BEQ CODE_0FD86C           ;
CODE_0FD861:        A9 01         LDA #$01                  ;
CODE_0FD863:        99 0C 0D      STA $0D0C,y               ;
CODE_0FD866:        99 10 0D      STA $0D10,y               ;
CODE_0FD869:        99 14 0D      STA $0D14,y               ;
CODE_0FD86C:        AD 4C 0F      LDA $0F4C                 ;
CODE_0FD86F:        D0 12         BNE CODE_0FD883           ;
CODE_0FD871:        9C 4C 0F      STZ $0F4C                 ;
CODE_0FD874:        EE 4B 01      INC $014B                 ;
CODE_0FD877:        AD 4B 01      LDA $014B                 ;
CODE_0FD87A:        C9 30         CMP #$30                  ;
CODE_0FD87C:        90 29         BCC CODE_0FD8A7           ;
CODE_0FD87E:        9C 4B 01      STZ $014B                 ;
CODE_0FD881:        80 24         BRA CODE_0FD8A7           ;

CODE_0FD883:        CE 4C 0F      DEC $0F4C                 ;
CODE_0FD886:        AD 4C 0F      LDA $0F4C                 ;
CODE_0FD889:        D0 1C         BNE CODE_0FD8A7           ;
CODE_0FD88B:        AD 4B 01      LDA $014B                 ;
CODE_0FD88E:        C9 06         CMP #$06                  ;
CODE_0FD890:        D0 12         BNE CODE_0FD8A4           ;
CODE_0FD892:        EE 4B 01      INC $014B                 ;
CODE_0FD895:        A9 28         LDA #$28                  ;
CODE_0FD897:        8D 4C 0F      STA $0F4C                 ;
CODE_0FD89A:        A9 3A         LDA #$3A                  ;
CODE_0FD89C:        8D 00 16      STA $1600                 ;
CODE_0FD89F:        20 99 D3      JSR CODE_0FD399           ;
CODE_0FD8A2:        80 03         BRA CODE_0FD8A7           ;

CODE_0FD8A4:        9C 4B 01      STZ $014B                 ;
CODE_0FD8A7:        AD 83 02      LDA $0283                 ;
CODE_0FD8AA:        D0 3F         BNE CODE_0FD8EB           ;
CODE_0FD8AC:        A6 9E         LDX $9E                   ;
CODE_0FD8AE:        BC 46 0B      LDY $0B46,x               ;
CODE_0FD8B1:        A2 06         LDX #$06                  ;
CODE_0FD8B3:        B9 03 09      LDA $0903,y               ;
CODE_0FD8B6:        09 80         ORA #$80                  ;
CODE_0FD8B8:        99 03 09      STA $0903,y               ;
CODE_0FD8BB:        C8            INY                       ;
CODE_0FD8BC:        C8            INY                       ;
CODE_0FD8BD:        C8            INY                       ;
CODE_0FD8BE:        C8            INY                       ;
CODE_0FD8BF:        CA            DEX                       ;
CODE_0FD8C0:        D0 F1         BNE CODE_0FD8B3           ;
CODE_0FD8C2:        A6 9E         LDX $9E                   ;
CODE_0FD8C4:        BC 46 0B      LDY $0B46,x               ;
CODE_0FD8C7:        B9 01 09      LDA $0901,y               ;
CODE_0FD8CA:        18            CLC                       ;
CODE_0FD8CB:        69 08         ADC #$08                  ;
CODE_0FD8CD:        99 01 09      STA $0901,y               ;
CODE_0FD8D0:        99 0D 09      STA $090D,y               ;
CODE_0FD8D3:        B9 05 09      LDA $0905,y               ;
CODE_0FD8D6:        38            SEC                       ;
CODE_0FD8D7:        E9 18         SBC #$18                  ;
CODE_0FD8D9:        99 05 09      STA $0905,y               ;
CODE_0FD8DC:        99 11 09      STA $0911,y               ;
CODE_0FD8DF:        B9 09 09      LDA $0909,y               ;
CODE_0FD8E2:        18            CLC                       ;
CODE_0FD8E3:        69 20         ADC #$20                  ;
CODE_0FD8E5:        99 09 09      STA $0909,y               ;
CODE_0FD8E8:        99 15 09      STA $0915,y               ;
CODE_0FD8EB:        20 BB D0      JSR CODE_0FD0BB           ;
CODE_0FD8EE:        AB            PLB                       ;
CODE_0FD8EF:        6B            RTL                       ;

DATA_0FD8F0:        db $03,$02,$06,$08,$01,$13

CODE_0FD8F6:        8B            PHB                       ;
CODE_0FD8F7:        4B            PHK                       ;
CODE_0FD8F8:        AB            PLB                       ;
CODE_0FD8F9:        DA            PHX                       ;
CODE_0FD8FA:        AD 70 07      LDA $0770                 ;
CODE_0FD8FD:        F0 4D         BEQ CODE_0FD94C           ;
CODE_0FD8FF:        AD 52 07      LDA $0752                 ;
CODE_0FD902:        C9 02         CMP #$02                  ;
CODE_0FD904:        F0 0D         BEQ CODE_0FD913           ;
CODE_0FD906:        A0 05         LDY #$05                  ;
CODE_0FD908:        AD 10 07      LDA $0710                 ;
CODE_0FD90B:        C9 06         CMP #$06                  ;
CODE_0FD90D:        F0 0D         BEQ CODE_0FD91C           ;
CODE_0FD90F:        C9 07         CMP #$07                  ;
CODE_0FD911:        F0 09         BEQ CODE_0FD91C           ;
CODE_0FD913:        A4 BA         LDY $BA                   ;
CODE_0FD915:        AD 43 07      LDA $0743                 ;
CODE_0FD918:        F0 02         BEQ CODE_0FD91C           ;
CODE_0FD91A:        A0 04         LDY #$04                  ;
CODE_0FD91C:        A5 0F         LDA $0F                   ;
CODE_0FD91E:        C9 04         CMP #$04                  ;
CODE_0FD920:        F0 21         BEQ CODE_0FD943           ;
CODE_0FD922:        C9 05         CMP #$05                  ;
CODE_0FD924:        F0 1D         BEQ CODE_0FD943           ;
CODE_0FD926:        A5 DB         LDA $DB                   ;
CODE_0FD928:        C9 39         CMP #$39                  ;
CODE_0FD92A:        F0 0D         BEQ CODE_0FD939           ;
CODE_0FD92C:        C9 3B         CMP #$3B                  ;
CODE_0FD92E:        F0 09         BEQ CODE_0FD939           ;
CODE_0FD930:        C9 3D         CMP #$3D                  ;
CODE_0FD932:        F0 05         BEQ CODE_0FD939           ;
CODE_0FD934:        B9 F0 D8      LDA DATA_0FD8F0,y               ;
CODE_0FD937:        80 02         BRA CODE_0FD93B           ;

CODE_0FD939:        A9 01         LDA #$01                  ;
CODE_0FD93B:        AE DF 0E      LDX $0EDF                 ;
CODE_0FD93E:        D0 03         BNE CODE_0FD943           ;
CODE_0FD940:        8D 02 16      STA $1602                 ;
CODE_0FD943:        A6 DB         LDX $DB                   ;
CODE_0FD945:        E0 07         CPX #$07                  ;
CODE_0FD947:        D0 03         BNE CODE_0FD94C           ;
CODE_0FD949:        8D DF 0E      STA $0EDF                 ;
CODE_0FD94C:        FA            PLX                       ;
CODE_0FD94D:        AB            PLB                       ;
CODE_0FD94E:        6B            RTL                       ;

CODE_0FD94F:        8B            PHB                       ;
CODE_0FD950:        4B            PHK                       ;
CODE_0FD951:        AB            PLB                       ;
CODE_0FD952:        AD 70 07      LDA $0770                 ;
CODE_0FD955:        C9 02         CMP #$02                  ;
CODE_0FD957:        F0 1F         BEQ CODE_0FD978           ;
CODE_0FD959:        C9 01         CMP #$01                  ;
CODE_0FD95B:        D0 5C         BNE CODE_0FD9B9           ;
CODE_0FD95D:        AD 72 07      LDA $0772                 ;
CODE_0FD960:        C9 03         CMP #$03                  ;
CODE_0FD962:        D0 55         BNE CODE_0FD9B9           ;
CODE_0FD964:        AD 67 0E      LDA $0E67                 ;
CODE_0FD967:        D0 50         BNE CODE_0FD9B9           ;
CODE_0FD969:        AD 01 12      LDA $1201                 ;
CODE_0FD96C:        C9 0F         CMP #$0F                  ;
CODE_0FD96E:        D0 49         BNE CODE_0FD9B9           ;
CODE_0FD970:        AD 77 07      LDA $0777                 ;
CODE_0FD973:        F0 05         BEQ CODE_0FD97A           ;
CODE_0FD975:        CE 77 07      DEC $0777                 ;
CODE_0FD978:        AB            PLB                       ;
CODE_0FD979:        6B            RTL                       ;

CODE_0FD97A:        A5 0F         LDA $0F                   ;
CODE_0FD97C:        C9 02         CMP #$02                  ;
CODE_0FD97E:        F0 39         BEQ CODE_0FD9B9           ;
CODE_0FD980:        C9 03         CMP #$03                  ;
CODE_0FD982:        F0 35         BEQ CODE_0FD9B9           ;
CODE_0FD984:        AD 7A 0B      LDA $0B7A                 ;
CODE_0FD987:        D0 30         BNE CODE_0FD9B9           ;
CODE_0FD989:        AD 75 0B      LDA $0B75                 ;
CODE_0FD98C:        C9 02         CMP #$02                  ;
CODE_0FD98E:        B0 29         BCS CODE_0FD9B9           ;
CODE_0FD990:        AD 8A 0F      LDA $0F8A                 ;
CODE_0FD993:        F0 05         BEQ CODE_0FD99A           ;
CODE_0FD995:        CE 8A 0F      DEC $0F8A                 ;
CODE_0FD998:        80 1F         BRA CODE_0FD9B9           ;

CODE_0FD99A:        AD 75 0B      LDA $0B75                 ;
CODE_0FD99D:        D0 1A         BNE CODE_0FD9B9           ;
CODE_0FD99F:        AD F6 0F      LDA $0FF6                 ;
CODE_0FD9A2:        29 10         AND #$10                  ;
CODE_0FD9A4:        F0 13         BEQ CODE_0FD9B9           ;
CODE_0FD9A6:        A9 11         LDA #$11                  ;
CODE_0FD9A8:        8D 77 07      STA $0777                 ;
CODE_0FD9AB:        A9 F1         LDA #$F1                  ;
CODE_0FD9AD:        8D 02 16      STA $1602                 ;
CODE_0FD9B0:        A9 43         LDA #$43                  ;
CODE_0FD9B2:        8D 00 16      STA $1600                 ;
CODE_0FD9B5:        22 18 DA 0F   JSL CODE_0FDA18           ;
CODE_0FD9B9:        AB            PLB                       ;
CODE_0FD9BA:        6B            RTL                       ;

CODE_0FD9BB:        EE 76 0B      INC $0B76                 ;
CODE_0FD9BE:        A9 38         LDA #$38                  ;
CODE_0FD9C0:        8D 87 02      STA $0287                 ;
CODE_0FD9C3:        C2 20         REP #$20                  ;
CODE_0FD9C5:        A9 00 B0      LDA #$B000                ;
CODE_0FD9C8:        8D 85 02      STA $0285                 ;
CODE_0FD9CB:        A9 00 08      LDA #$0800                ;
CODE_0FD9CE:        8D 88 02      STA $0288                 ;
CODE_0FD9D1:        A9 00 7C      LDA #$7C00                ;
CODE_0FD9D4:        8D 8A 02      STA $028A                 ;
CODE_0FD9D7:        E2 20         SEP #$20                  ;
CODE_0FD9D9:        60            RTS                       ;

CODE_0FD9DA:        EE 76 0B      INC $0B76                 ;
CODE_0FD9DD:        A9 07         LDA #$07                  ;
CODE_0FD9DF:        8D 87 02      STA $0287                 ;
CODE_0FD9E2:        C2 20         REP #$20                  ;
CODE_0FD9E4:        A9 00 B8      LDA #$B800                ;
CODE_0FD9E7:        8D 85 02      STA $0285                 ;
CODE_0FD9EA:        A9 00 08      LDA #$0800                ;
CODE_0FD9ED:        8D 88 02      STA $0288                 ;
CODE_0FD9F0:        A9 00 7C      LDA #$7C00                ;
CODE_0FD9F3:        8D 8A 02      STA $028A                 ;
CODE_0FD9F6:        E2 20         SEP #$20                  ;
CODE_0FD9F8:        60            RTS                       ;

CODE_0FD9F9:        DA            PHX                       ;
CODE_0FD9FA:        5A            PHY                       ;
CODE_0FD9FB:        20 85 DE      JSR CODE_0FDE85           ;
CODE_0FD9FE:        20 22 DE      JSR CODE_0FDE22           ;
CODE_0FDA01:        A9 22         LDA #$22                  ;
CODE_0FDA03:        8D 04 12      STA $1204                 ;
CODE_0FDA06:        A9 02         LDA #$02                  ;
CODE_0FDA08:        8D 05 12      STA $1205                 ;
CODE_0FDA0B:        A9 15         LDA #$15                  ;
CODE_0FDA0D:        8D 07 12      STA $1207                 ;
CODE_0FDA10:        A9 02         LDA #$02                  ;
CODE_0FDA12:        8D 08 12      STA $1208                 ;
CODE_0FDA15:        7A            PLY                       ;
CODE_0FDA16:        FA            PLX                       ;
CODE_0FDA17:        6B            RTL                       ;

CODE_0FDA18:        20 85 DE      JSR CODE_0FDE85           ;
CODE_0FDA1B:        20 22 DE      JSR CODE_0FDE22           ;
CODE_0FDA1E:        20 4C DA      JSR CODE_0FDA4C           ;
CODE_0FDA21:        20 BB D9      JSR CODE_0FD9BB           ;
CODE_0FDA24:        A9 01         LDA #$01                  ;
CODE_0FDA26:        8D 76 07      STA $0776                 ;
CODE_0FDA29:        9C 77 0B      STZ $0B77                 ;
CODE_0FDA2C:        9C 78 0B      STZ $0B78                 ;
CODE_0FDA2F:        9C 8A 0F      STZ $0F8A                 ;
CODE_0FDA32:        6B            RTL                       ;

CODE_0FDA33:        8B            PHB                       ;
CODE_0FDA34:        4B            PHK                       ;
CODE_0FDA35:        AB            PLB                       ;
CODE_0FDA36:        DA            PHX                       ;
CODE_0FDA37:        5A            PHY                       ;
CODE_0FDA38:        AD 75 0B      LDA $0B75                 ;
CODE_0FDA3B:        0A            ASL A                     ;
CODE_0FDA3C:        AA            TAX                       ;
CODE_0FDA3D:        FC 44 DA      JSR (PNTR_0FDA44,x)       ;
CODE_0FDA40:        7A            PLY                       ;
CODE_0FDA41:        FA            PLX                       ;
CODE_0FDA42:        AB            PLB                       ;
CODE_0FDA43:        6B            RTL                       ;

PNTR_0FDA44:        dw CODE_0FDD00
                    dw CODE_0FDA6F
                    dw CODE_0FDDFC
                    dw CODE_0FDD6A

CODE_0FDA4C:        C2 20         REP #$20                  ;
CODE_0FDA4E:        A9 10 00      LDA #$0010                ;
CODE_0FDA51:        8D 6B 0B      STA $0B6B                 ;
CODE_0FDA54:        A9 64 00      LDA #$0064                ;
CODE_0FDA57:        8D 6D 0B      STA $0B6D                 ;
CODE_0FDA5A:        A9 A4 00      LDA #$00A4                ;
CODE_0FDA5D:        8D 6F 0B      STA $0B6F                 ;
CODE_0FDA60:        A9 C4 00      LDA #$00C4                ;
CODE_0FDA63:        8D 71 0B      STA $0B71                 ;
CODE_0FDA66:        A9 D0 00      LDA #$00D0                ;
CODE_0FDA69:        8D 73 0B      STA $0B73                 ;
CODE_0FDA6C:        E2 20         SEP #$20                  ;
CODE_0FDA6E:        60            RTS                       ;

CODE_0FDA6F:        20 34 DC      JSR CODE_0FDC34           ;
CODE_0FDA72:        AD F6 0F      LDA $0FF6                 ;
CODE_0FDA75:        85 F2         STA $F2                   ;
CODE_0FDA77:        29 2C         AND #$2C                  ;
CODE_0FDA79:        F0 78         BEQ CODE_0FDAF3           ;
CODE_0FDA7B:        AD 80 16      LDA $1680                 ;
CODE_0FDA7E:        F0 22         BEQ CODE_0FDAA2           ;
CODE_0FDA80:        29 10         AND #$10                  ;
CODE_0FDA82:        C9 10         CMP #$10                  ;
CODE_0FDA84:        F0 1C         BEQ CODE_0FDAA2           ;
CODE_0FDA86:        A5 F2         LDA $F2                   ;
CODE_0FDA88:        29 20         AND #$20                  ;
CODE_0FDA8A:        F0 0A         BEQ CODE_0FDA96           ;
CODE_0FDA8C:        AD 77 0B      LDA $0B77                 ;
CODE_0FDA8F:        49 02         EOR #$02                  ;
CODE_0FDA91:        8D 77 0B      STA $0B77                 ;
CODE_0FDA94:        80 27         BRA CODE_0FDABD           ;

CODE_0FDA96:        A5 F2         LDA $F2                   ;
CODE_0FDA98:        29 04         AND #$04                  ;
CODE_0FDA9A:        4A            LSR A                     ;
CODE_0FDA9B:        CD 77 0B      CMP $0B77                 ;
CODE_0FDA9E:        D0 F1         BNE CODE_0FDA91           ;
CODE_0FDAA0:        80 51         BRA CODE_0FDAF3           ;

CODE_0FDAA2:        A5 F2         LDA $F2                   ;
CODE_0FDAA4:        29 20         AND #$20                  ;
CODE_0FDAA6:        D0 36         BNE CODE_0FDADE           ;
CODE_0FDAA8:        A5 F2         LDA $F2                   ;
CODE_0FDAAA:        29 08         AND #$08                  ;
CODE_0FDAAC:        D0 19         BNE CODE_0FDAC7           ;
CODE_0FDAAE:        EE 77 0B      INC $0B77                 ;
CODE_0FDAB1:        AD 77 0B      LDA $0B77                 ;
CODE_0FDAB4:        C9 03         CMP #$03                  ;
CODE_0FDAB6:        90 05         BCC CODE_0FDABD           ;
CODE_0FDAB8:        CE 77 0B      DEC $0B77                 ;
CODE_0FDABB:        80 36         BRA CODE_0FDAF3           ;

CODE_0FDABD:        A9 01         LDA #$01                  ;
CODE_0FDABF:        8D 03 16      STA $1603                 ;
CODE_0FDAC2:        9C 78 0B      STZ $0B78                 ;
CODE_0FDAC5:        80 2C         BRA CODE_0FDAF3           ;

CODE_0FDAC7:        CE 77 0B      DEC $0B77                 ;
CODE_0FDACA:        AD 77 0B      LDA $0B77                 ;
CODE_0FDACD:        10 05         BPL CODE_0FDAD4           ;
CODE_0FDACF:        EE 77 0B      INC $0B77                 ;
CODE_0FDAD2:        80 1F         BRA CODE_0FDAF3           ;

CODE_0FDAD4:        A9 01         LDA #$01                  ;
CODE_0FDAD6:        8D 03 16      STA $1603                 ;
CODE_0FDAD9:        9C 78 0B      STZ $0B78                 ;
CODE_0FDADC:        80 15         BRA CODE_0FDAF3           ;

CODE_0FDADE:        EE 77 0B      INC $0B77                 ;
CODE_0FDAE1:        AD 77 0B      LDA $0B77                 ;
CODE_0FDAE4:        C9 03         CMP #$03                  ;
CODE_0FDAE6:        90 03         BCC CODE_0FDAEB           ;
CODE_0FDAE8:        9C 77 0B      STZ $0B77                 ;
CODE_0FDAEB:        A9 01         LDA #$01                  ;
CODE_0FDAED:        8D 03 16      STA $1603                 ;
CODE_0FDAF0:        9C 78 0B      STZ $0B78                 ;
CODE_0FDAF3:        A9 4C         LDA #$4C                  ;
CODE_0FDAF5:        8D 00 08      STA $0800                 ;
CODE_0FDAF8:        AE 77 0B      LDX $0B77                 ;
CODE_0FDAFB:        BD 91 DB      LDA DATA_0FDB91,x               ;
CODE_0FDAFE:        8D 01 08      STA $0801                 ;
CODE_0FDB01:        AD 78 0B      LDA $0B78                 ;
CODE_0FDB04:        29 10         AND #$10                  ;
CODE_0FDB06:        4A            LSR A                     ;
CODE_0FDB07:        4A            LSR A                     ;
CODE_0FDB08:        4A            LSR A                     ;
CODE_0FDB09:        4A            LSR A                     ;
CODE_0FDB0A:        AA            TAX                       ;
CODE_0FDB0B:        BD 94 DB      LDA DATA_0FDB94,x               ;
CODE_0FDB0E:        8D 02 08      STA $0802                 ;
CODE_0FDB11:        A9 21         LDA #$21                  ;
CODE_0FDB13:        8D 03 08      STA $0803                 ;
CODE_0FDB16:        A9 00         LDA #$00                  ;
CODE_0FDB18:        8D 00 0C      STA $0C00                 ;
CODE_0FDB1B:        EE 78 0B      INC $0B78                 ;
CODE_0FDB1E:        A5 F2         LDA $F2                   ;
CODE_0FDB20:        29 10         AND #$10                  ;
CODE_0FDB22:        F0 6C         BEQ CODE_0FDB90           ;
CODE_0FDB24:        A9 F2         LDA #$F2                  ;
CODE_0FDB26:        8D 02 16      STA $1602                 ;
CODE_0FDB29:        9C 78 0B      STZ $0B78                 ;
CODE_0FDB2C:        AD 77 0B      LDA $0B77                 ;
CODE_0FDB2F:        F0 1D         BEQ CODE_0FDB4E           ;
CODE_0FDB31:        A9 30         LDA #$30                  ;
CODE_0FDB33:        8D 8A 0F      STA $0F8A                 ;
CODE_0FDB36:        A9 02         LDA #$02                  ;
CODE_0FDB38:        8D 75 0B      STA $0B75                 ;
CODE_0FDB3B:        A9 3B         LDA #$3B                  ;
CODE_0FDB3D:        8D 00 16      STA $1600                 ;
CODE_0FDB40:        AD 77 0B      LDA $0B77                 ;
CODE_0FDB43:        C9 02         CMP #$02                  ;
CODE_0FDB45:        D0 1B         BNE CODE_0FDB62           ;
CODE_0FDB47:        A9 F3         LDA #$F3                  ;
CODE_0FDB49:        8D 02 16      STA $1602                 ;
CODE_0FDB4C:        80 14         BRA CODE_0FDB62           ;

CODE_0FDB4E:        A9 10         LDA #$10                  ;
CODE_0FDB50:        8D 8A 0F      STA $0F8A                 ;
CODE_0FDB53:        A9 10         LDA #$10                  ;
CODE_0FDB55:        8D 6B 0B      STA $0B6B                 ;
CODE_0FDB58:        A9 02         LDA #$02                  ;
CODE_0FDB5A:        8D 75 0B      STA $0B75                 ;
CODE_0FDB5D:        A9 43         LDA #$43                  ;
CODE_0FDB5F:        8D 00 16      STA $1600                 ;
CODE_0FDB62:        AD 80 16      LDA $1680                 ;
CODE_0FDB65:        C9 10         CMP #$10                  ;
CODE_0FDB67:        D0 19         BNE CODE_0FDB82           ;
CODE_0FDB69:        AD 77 0B      LDA $0B77                 ;
CODE_0FDB6C:        C9 02         CMP #$02                  ;
CODE_0FDB6E:        F0 12         BEQ CODE_0FDB82           ;
CODE_0FDB70:        9C 76 07      STZ $0776                 ;
CODE_0FDB73:        A9 0E         LDA #$0E                  ;
CODE_0FDB75:        8D 72 07      STA $0772                 ;
CODE_0FDB78:        AE 77 0B      LDX $0B77                 ;
CODE_0FDB7B:        F0 04         BEQ CODE_0FDB81           ;
CODE_0FDB7D:        22 AC 90 00   JSL CODE_0090AC           ;
CODE_0FDB81:        60            RTS                       ;

CODE_0FDB82:        A9 20         LDA #$20                  ;
CODE_0FDB84:        8D 8A 0F      STA $0F8A                 ;
CODE_0FDB87:        AD 77 0B      LDA $0B77                 ;
CODE_0FDB8A:        F0 04         BEQ CODE_0FDB90           ;
CODE_0FDB8C:        22 AC 90 00   JSL CODE_0090AC           ;
CODE_0FDB90:        60            RTS                       ;

DATA_0FDB91:        db $50,$60,$70 ;

DATA_0FDB94:        db $D0,$DE ;

DATA_0FDB96:        db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$14,$15,$16 ;
                    db $17,$18,$19,$1A,$1B,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$28 ;
                    db $29,$2A,$2B,$1C,$14,$15,$16,$17 ;
                    db $18,$19,$1A,$1B,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$28,$29,$2A,$2B,$1C,$24,$25 ;
                    db $26,$27,$AA,$AA,$AA,$AA,$FF ;

DATA_0FDBE5:        db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$24,$25,$26 ;
                    db $27,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$28,$29,$2A,$2B,$1C,$24,$25 ;
                    db $26,$27,$AA,$AA,$AA,$AA,$FF ;

CODE_0FDC34:        C2 10         REP #$10                  ;
CODE_0FDC36:        A0 10 00      LDY #$0010                ;
CODE_0FDC39:        A2 00 00      LDX #$0000                ;
CODE_0FDC3C:        A9 48         LDA #$48                  ;
CODE_0FDC3E:        85 01         STA $01                   ;
CODE_0FDC40:        A9 58         LDA #$58                  ;
CODE_0FDC42:        85 00         STA $00                   ;
CODE_0FDC44:        AD 80 16      LDA $1680                 ;
CODE_0FDC47:        F0 11         BEQ CODE_0FDC5A           ;
CODE_0FDC49:        29 10         AND #$10                  ;
CODE_0FDC4B:        C9 10         CMP #$10                  ;
CODE_0FDC4D:        F0 0B         BEQ CODE_0FDC5A           ;
CODE_0FDC4F:        BD E5 DB      LDA DATA_0FDBE5,x               ;
CODE_0FDC52:        10 23         BPL CODE_0FDC77           ;
CODE_0FDC54:        E8            INX                       ;
CODE_0FDC55:        1A            INC A                     ;
CODE_0FDC56:        F0 40         BEQ CODE_0FDC98           ;
CODE_0FDC58:        80 09         BRA CODE_0FDC63           ;

CODE_0FDC5A:        BD 96 DB      LDA DATA_0FDB96,x               ;
CODE_0FDC5D:        10 18         BPL CODE_0FDC77           ;
CODE_0FDC5F:        E8            INX                       ;
CODE_0FDC60:        1A            INC A                     ;
CODE_0FDC61:        F0 35         BEQ CODE_0FDC98           ;
CODE_0FDC63:        A5 00         LDA $00                   ;
CODE_0FDC65:        18            CLC                       ;
CODE_0FDC66:        69 08         ADC #$08                  ;
CODE_0FDC68:        85 00         STA $00                   ;
CODE_0FDC6A:        C9 C0         CMP #$C0                  ;
CODE_0FDC6C:        90 D6         BCC CODE_0FDC44           ;
CODE_0FDC6E:        A5 01         LDA $01                   ;
CODE_0FDC70:        18            CLC                       ;
CODE_0FDC71:        69 08         ADC #$08                  ;
CODE_0FDC73:        85 01         STA $01                   ;
CODE_0FDC75:        80 C9         BRA CODE_0FDC40           ;

CODE_0FDC77:        18            CLC                       ;
CODE_0FDC78:        69 C0         ADC #$C0                  ;
CODE_0FDC7A:        99 02 08      STA $0802,y               ;
CODE_0FDC7D:        A5 00         LDA $00                   ;
CODE_0FDC7F:        99 00 08      STA $0800,y               ;
CODE_0FDC82:        A5 01         LDA $01                   ;
CODE_0FDC84:        99 01 08      STA $0801,y               ;
CODE_0FDC87:        A9 21         LDA #$21                  ;
CODE_0FDC89:        99 03 08      STA $0803,y               ;
CODE_0FDC8C:        A9 00         LDA #$00                  ;
CODE_0FDC8E:        99 00 0C      STA $0C00,y               ;
CODE_0FDC91:        E8            INX                       ;
CODE_0FDC92:        C8            INY                       ;
CODE_0FDC93:        C8            INY                       ;
CODE_0FDC94:        C8            INY                       ;
CODE_0FDC95:        C8            INY                       ;
CODE_0FDC96:        80 CB         BRA CODE_0FDC63           ;

CODE_0FDC98:        A9 40         LDA #$40                  ;
CODE_0FDC9A:        85 01         STA $01                   ;
CODE_0FDC9C:        A9 40         LDA #$40                  ;
CODE_0FDC9E:        85 00         STA $00                   ;
CODE_0FDCA0:        A5 00         LDA $00                   ;
CODE_0FDCA2:        99 00 08      STA $0800,y               ;
CODE_0FDCA5:        18            CLC                       ;
CODE_0FDCA6:        69 10         ADC #$10                  ;
CODE_0FDCA8:        85 00         STA $00                   ;
CODE_0FDCAA:        A5 01         LDA $01                   ;
CODE_0FDCAC:        99 01 08      STA $0801,y               ;
CODE_0FDCAF:        A9 CD         LDA #$CD                  ;
CODE_0FDCB1:        99 02 08      STA $0802,y               ;
CODE_0FDCB4:        A9 21         LDA #$21                  ;
CODE_0FDCB6:        99 03 08      STA $0803,y               ;
CODE_0FDCB9:        A9 02         LDA #$02                  ;
CODE_0FDCBB:        99 00 0C      STA $0C00,y               ;
CODE_0FDCBE:        C8            INY                       ;
CODE_0FDCBF:        C8            INY                       ;
CODE_0FDCC0:        C8            INY                       ;
CODE_0FDCC1:        C8            INY                       ;
CODE_0FDCC2:        A5 00         LDA $00                   ;
CODE_0FDCC4:        C9 C0         CMP #$C0                  ;
CODE_0FDCC6:        90 D8         BCC CODE_0FDCA0           ;
CODE_0FDCC8:        A5 01         LDA $01                   ;
CODE_0FDCCA:        C9 80         CMP #$80                  ;
CODE_0FDCCC:        B0 07         BCS CODE_0FDCD5           ;
CODE_0FDCCE:        18            CLC                       ;
CODE_0FDCCF:        69 10         ADC #$10                  ;
CODE_0FDCD1:        85 01         STA $01                   ;
CODE_0FDCD3:        80 C7         BRA CODE_0FDC9C           ;

CODE_0FDCD5:        E2 10         SEP #$10                  ;
CODE_0FDCD7:        A9 4C         LDA #$4C                  ;
CODE_0FDCD9:        8D 00 08      STA $0800                 ;
CODE_0FDCDC:        AE 77 0B      LDX $0B77                 ;
CODE_0FDCDF:        BD 91 DB      LDA DATA_0FDB91,x               ;
CODE_0FDCE2:        8D 01 08      STA $0801                 ;
CODE_0FDCE5:        AD 78 0B      LDA $0B78                 ;
CODE_0FDCE8:        29 10         AND #$10                  ;
CODE_0FDCEA:        4A            LSR A                     ;
CODE_0FDCEB:        4A            LSR A                     ;
CODE_0FDCEC:        4A            LSR A                     ;
CODE_0FDCED:        4A            LSR A                     ;
CODE_0FDCEE:        AA            TAX                       ;
CODE_0FDCEF:        BD 94 DB      LDA DATA_0FDB94,x               ;
CODE_0FDCF2:        8D 02 08      STA $0802                 ;
CODE_0FDCF5:        A9 21         LDA #$21                  ;
CODE_0FDCF7:        8D 03 08      STA $0803                 ;
CODE_0FDCFA:        A9 00         LDA #$00                  ;
CODE_0FDCFC:        8D 00 0C      STA $0C00                 ;
CODE_0FDCFF:        60            RTS                       ;

CODE_0FDD00:        AD 6B 0B      LDA $0B6B                 ;
CODE_0FDD03:        F0 5E         BEQ CODE_0FDD63           ;
CODE_0FDD05:        30 5C         BMI CODE_0FDD63           ;
CODE_0FDD07:        C2 30         REP #$30                  ;
CODE_0FDD09:        CE 6B 0B      DEC $0B6B                 ;
CODE_0FDD0C:        CE 6D 0B      DEC $0B6D                 ;
CODE_0FDD0F:        CE 6D 0B      DEC $0B6D                 ;
CODE_0FDD12:        EE 6F 0B      INC $0B6F                 ;
CODE_0FDD15:        EE 6F 0B      INC $0B6F                 ;
CODE_0FDD18:        CE 71 0B      DEC $0B71                 ;
CODE_0FDD1B:        CE 71 0B      DEC $0B71                 ;
CODE_0FDD1E:        CE 71 0B      DEC $0B71                 ;
CODE_0FDD21:        CE 71 0B      DEC $0B71                 ;
CODE_0FDD24:        EE 73 0B      INC $0B73                 ;
CODE_0FDD27:        EE 73 0B      INC $0B73                 ;
CODE_0FDD2A:        EE 73 0B      INC $0B73                 ;
CODE_0FDD2D:        EE 73 0B      INC $0B73                 ;
CODE_0FDD30:        A2 7E 00      LDX #$007E                ;
CODE_0FDD33:        A9 FF 00      LDA #$00FF                ;
CODE_0FDD36:        9F 00 F0 7F   STA $7FF000,x             ;
CODE_0FDD3A:        9F 80 F0 7F   STA $7FF080,x             ;
CODE_0FDD3E:        9F 00 F1 7F   STA $7FF100,x             ;
CODE_0FDD42:        9F 80 F1 7F   STA $7FF180,x             ;
CODE_0FDD46:        CA            DEX                       ;
CODE_0FDD47:        CA            DEX                       ;
CODE_0FDD48:        10 EC         BPL CODE_0FDD36           ;
CODE_0FDD4A:        AD 6F 0B      LDA $0B6F                 ;
CODE_0FDD4D:        EB            XBA                       ;
CODE_0FDD4E:        0D 6D 0B      ORA $0B6D                 ;
CODE_0FDD51:        AE 71 0B      LDX $0B71                 ;
CODE_0FDD54:        9F 00 F0 7F   STA $7FF000,x             ;
CODE_0FDD58:        E8            INX                       ;
CODE_0FDD59:        E8            INX                       ;
CODE_0FDD5A:        EC 73 0B      CPX $0B73                 ;
CODE_0FDD5D:        D0 F5         BNE CODE_0FDD54           ;
CODE_0FDD5F:        E2 30         SEP #$30                  ;
CODE_0FDD61:        80 03         BRA CODE_0FDD66           ;

CODE_0FDD63:        EE 75 0B      INC $0B75                 ;
CODE_0FDD66:        20 34 DC      JSR CODE_0FDC34           ;
CODE_0FDD69:        60            RTS                       ;

CODE_0FDD6A:        AD 6B 0B      LDA $0B6B                 ;
CODE_0FDD6D:        F0 5E         BEQ CODE_0FDDCD           ;
CODE_0FDD6F:        30 5C         BMI CODE_0FDDCD           ;
CODE_0FDD71:        C2 30         REP #$30                  ;
CODE_0FDD73:        EE 6D 0B      INC $0B6D                 ;
CODE_0FDD76:        EE 6D 0B      INC $0B6D                 ;
CODE_0FDD79:        CE 6F 0B      DEC $0B6F                 ;
CODE_0FDD7C:        CE 6F 0B      DEC $0B6F                 ;
CODE_0FDD7F:        EE 71 0B      INC $0B71                 ;
CODE_0FDD82:        EE 71 0B      INC $0B71                 ;
CODE_0FDD85:        EE 71 0B      INC $0B71                 ;
CODE_0FDD88:        EE 71 0B      INC $0B71                 ;
CODE_0FDD8B:        CE 73 0B      DEC $0B73                 ;
CODE_0FDD8E:        CE 73 0B      DEC $0B73                 ;
CODE_0FDD91:        CE 73 0B      DEC $0B73                 ;
CODE_0FDD94:        CE 73 0B      DEC $0B73                 ;
CODE_0FDD97:        CE 6B 0B      DEC $0B6B                 ;
CODE_0FDD9A:        A2 7E 00      LDX #$007E                ;
CODE_0FDD9D:        A9 FF 00      LDA #$00FF                ;
CODE_0FDDA0:        9F 00 F0 7F   STA $7FF000,x             ;
CODE_0FDDA4:        9F 80 F0 7F   STA $7FF080,x             ;
CODE_0FDDA8:        9F 00 F1 7F   STA $7FF100,x             ;
CODE_0FDDAC:        9F 80 F1 7F   STA $7FF180,x             ;
CODE_0FDDB0:        CA            DEX                       ;
CODE_0FDDB1:        CA            DEX                       ;
CODE_0FDDB2:        10 EC         BPL CODE_0FDDA0           ;
CODE_0FDDB4:        AD 6F 0B      LDA $0B6F                 ;
CODE_0FDDB7:        EB            XBA                       ;
CODE_0FDDB8:        0D 6D 0B      ORA $0B6D                 ;
CODE_0FDDBB:        AE 71 0B      LDX $0B71                 ;
CODE_0FDDBE:        9F 00 F0 7F   STA $7FF000,x             ;
CODE_0FDDC2:        E8            INX                       ;
CODE_0FDDC3:        E8            INX                       ;
CODE_0FDDC4:        EC 73 0B      CPX $0B73                 ;
CODE_0FDDC7:        D0 F5         BNE CODE_0FDDBE           ;
CODE_0FDDC9:        E2 30         SEP #$30                  ;
CODE_0FDDCB:        80 2B         BRA CODE_0FDDF8           ;

CODE_0FDDCD:        9C 75 0B      STZ $0B75                 ;
CODE_0FDDD0:        A9 0F         LDA #$0F                  ;
CODE_0FDDD2:        8D 01 12      STA $1201                 ;
CODE_0FDDD5:        9C 76 07      STZ $0776                 ;
CODE_0FDDD8:        AD 06 12      LDA $1206                 ;
CODE_0FDDDB:        49 03         EOR #$03                  ;
CODE_0FDDDD:        8D 06 12      STA $1206                 ;
CODE_0FDDE0:        AD 07 12      LDA $1207                 ;
CODE_0FDDE3:        49 10         EOR #$10                  ;
CODE_0FDDE5:        8D 07 12      STA $1207                 ;
CODE_0FDDE8:        20 DA D9      JSR CODE_0FD9DA           ;
CODE_0FDDEB:        22 E8 83 0D   JSL CODE_0D83E8           ;
CODE_0FDDEF:        AD 03 12      LDA $1203                 ;
CODE_0FDDF2:        29 F7         AND #$F7                  ;
CODE_0FDDF4:        8D 03 12      STA $1203                 ;
CODE_0FDDF7:        60            RTS                       ;

CODE_0FDDF8:        20 34 DC      JSR CODE_0FDC34           ;
CODE_0FDDFB:        60            RTS                       ;

CODE_0FDDFC:        CE 8A 0F      DEC $0F8A                 ;
CODE_0FDDFF:        D0 1D         BNE CODE_0FDE1E           ;
CODE_0FDE01:        EE 75 0B      INC $0B75                 ;
CODE_0FDE04:        A9 10         LDA #$10                  ;
CODE_0FDE06:        8D 6B 0B      STA $0B6B                 ;
CODE_0FDE09:        8D 8A 0F      STA $0F8A                 ;
CODE_0FDE0C:        AD 80 16      LDA $1680                 ;
CODE_0FDE0F:        C9 01         CMP #$01                  ;
CODE_0FDE11:        F0 07         BEQ CODE_0FDE1A           ;
CODE_0FDE13:        AD 77 0B      LDA $0B77                 ;
CODE_0FDE16:        C9 02         CMP #$02                  ;
CODE_0FDE18:        D0 04         BNE CODE_0FDE1E           ;
CODE_0FDE1A:        5C DE 80 00   JML CODE_0080DE           ;

CODE_0FDE1E:        20 34 DC      JSR CODE_0FDC34           ;
CODE_0FDE21:        60            RTS                       ;

CODE_0FDE22:        8B            PHB                       ;
CODE_0FDE23:        A9 7F         LDA #$7F                  ;
CODE_0FDE25:        48            PHA                       ;
CODE_0FDE26:        AB            PLB                       ;
CODE_0FDE27:        C2 30         REP #$30                  ;
CODE_0FDE29:        A2 7E 00      LDX #$007E                ;
CODE_0FDE2C:        A9 00 00      LDA #$0000                ;
CODE_0FDE2F:        9D 00 F0      STA $F000,x               ;
CODE_0FDE32:        9D 80 F0      STA $F080,x               ;
CODE_0FDE35:        9D 00 F1      STA $F100,x               ;
CODE_0FDE38:        9D 80 F1      STA $F180,x               ;
CODE_0FDE3B:        CA            DEX                       ;
CODE_0FDE3C:        CA            DEX                       ;
CODE_0FDE3D:        10 F0         BPL CODE_0FDE2F           ;
CODE_0FDE3F:        AB            PLB                       ;
CODE_0FDE40:        E2 20         SEP #$20                  ;
CODE_0FDE42:        A2 41 26      LDX #$2641                ;
CODE_0FDE45:        8E 30 43      STX $4330                 ;
CODE_0FDE48:        A2 7E DE      LDX #$DE7E                ;
CODE_0FDE4B:        8E 32 43      STX $4332                 ;
CODE_0FDE4E:        A9 0F         LDA #$0F                  ;
CODE_0FDE50:        8D 34 43      STA $4334                 ;
CODE_0FDE53:        A9 7F         LDA #$7F                  ;
CODE_0FDE55:        8D 37 43      STA $4337                 ;
CODE_0FDE58:        A9 00         LDA #$00                  ;
CODE_0FDE5A:        8D 04 12      STA $1204                 ;
CODE_0FDE5D:        9C 05 12      STZ $1205                 ;
CODE_0FDE60:        AD 06 12      LDA $1206                 ;
CODE_0FDE63:        09 03         ORA #$03                  ;
CODE_0FDE65:        8D 06 12      STA $1206                 ;
CODE_0FDE68:        AD 07 12      LDA $1207                 ;
CODE_0FDE6B:        09 10         ORA #$10                  ;
CODE_0FDE6D:        8D 07 12      STA $1207                 ;
CODE_0FDE70:        9C 08 12      STZ $1208                 ;
CODE_0FDE73:        E2 10         SEP #$10                  ;
CODE_0FDE75:        AD 03 12      LDA $1203                 ;
CODE_0FDE78:        09 08         ORA #$08                  ;
CODE_0FDE7A:        8D 03 12      STA $1203                 ;
CODE_0FDE7D:        60            RTS                       ;

DATA_0FDE7E:        db $F8,$00,$F0,$F8,$F0,$F0,$00

CODE_0FDE85:        8B            PHB                       ;
CODE_0FDE86:        A9 7F         LDA #$7F                  ;
CODE_0FDE88:        48            PHA                       ;
CODE_0FDE89:        AB            PLB                       ;
CODE_0FDE8A:        C2 30         REP #$30                  ;
CODE_0FDE8C:        A2 A0 01      LDX #$01A0                ;
CODE_0FDE8F:        A9 FF 00      LDA #$00FF                ;
CODE_0FDE92:        9D 00 F0      STA $F000,x               ;
CODE_0FDE95:        9D 02 F0      STA $F002,x               ;
CODE_0FDE98:        9D 04 F0      STA $F004,x               ;
CODE_0FDE9B:        9D 06 F0      STA $F006,x               ;
CODE_0FDE9E:        9D 08 F0      STA $F008,x               ;
CODE_0FDEA1:        9D 0A F0      STA $F00A,x               ;
CODE_0FDEA4:        9D 0C F0      STA $F00C,x               ;
CODE_0FDEA7:        9D 0E F0      STA $F00E,x               ;
CODE_0FDEAA:        9D 10 F0      STA $F010,x               ;
CODE_0FDEAD:        9D 12 F0      STA $F012,x               ;
CODE_0FDEB0:        9D 14 F0      STA $F014,x               ;
CODE_0FDEB3:        9D 16 F0      STA $F016,x               ;
CODE_0FDEB6:        9D 18 F0      STA $F018,x               ;
CODE_0FDEB9:        9D 1A F0      STA $F01A,x               ;
CODE_0FDEBC:        9D 1C F0      STA $F01C,x               ;
CODE_0FDEBF:        9D 1E F0      STA $F01E,x               ;
CODE_0FDEC2:        9D 00 F2      STA $F200,x               ;
CODE_0FDEC5:        9D 02 F2      STA $F202,x               ;
CODE_0FDEC8:        9D 04 F2      STA $F204,x               ;
CODE_0FDECB:        9D 06 F2      STA $F206,x               ;
CODE_0FDECE:        9D 08 F2      STA $F208,x               ;
CODE_0FDED1:        9D 0A F2      STA $F20A,x               ;
CODE_0FDED4:        9D 0C F2      STA $F20C,x               ;
CODE_0FDED7:        9D 0E F2      STA $F20E,x               ;
CODE_0FDEDA:        9D 10 F2      STA $F210,x               ;
CODE_0FDEDD:        9D 12 F2      STA $F212,x               ;
CODE_0FDEE0:        9D 14 F2      STA $F214,x               ;
CODE_0FDEE3:        9D 16 F2      STA $F216,x               ;
CODE_0FDEE6:        9D 18 F2      STA $F218,x               ;
CODE_0FDEE9:        9D 1A F2      STA $F21A,x               ;
CODE_0FDEEC:        9D 1C F2      STA $F21C,x               ;
CODE_0FDEEF:        9D 1E F2      STA $F21E,x               ;
CODE_0FDEF2:        8A            TXA                       ;
CODE_0FDEF3:        38            SEC                       ;
CODE_0FDEF4:        E9 20 00      SBC #$0020                ;
CODE_0FDEF7:        AA            TAX                       ;
CODE_0FDEF8:        10 95         BPL CODE_0FDE8F           ;
CODE_0FDEFA:        E2 30         SEP #$30                  ;
CODE_0FDEFC:        AB            PLB                       ;
CODE_0FDEFD:        60            RTS                       ;

CODE_0FDEFE:        8B            PHB                       ;
CODE_0FDEFF:        4B            PHK                       ;
CODE_0FDF00:        AB            PLB                       ;
CODE_0FDF01:        DA            PHX                       ;
CODE_0FDF02:        AE C3 0E      LDX $0EC3                 ;
CODE_0FDF05:        BD FA 0F      LDA $0FFA,x               ;
CODE_0FDF08:        FA            PLX                       ;
CODE_0FDF09:        29 C0         AND #$C0                  ;
CODE_0FDF0B:        F0 16         BEQ CODE_0FDF23           ;
CODE_0FDF0D:        29 80         AND #$80                  ;
CODE_0FDF0F:        F0 0A         BEQ CODE_0FDF1B           ;
CODE_0FDF11:        9C 54 07      STZ $0754                 ;
CODE_0FDF14:        A9 01         LDA #$01                  ;
CODE_0FDF16:        8D 56 07      STA $0756                 ;
CODE_0FDF19:        80 08         BRA CODE_0FDF23           ;

CODE_0FDF1B:        9C 54 07      STZ $0754                 ;
CODE_0FDF1E:        A9 02         LDA #$02                  ;
CODE_0FDF20:        8D 56 07      STA $0756                 ;
CODE_0FDF23:        AD F6 0F      LDA $0FF6                 ;
CODE_0FDF26:        29 20         AND #$20                  ;
CODE_0FDF28:        F0 0E         BEQ CODE_0FDF38           ;
CODE_0FDF2A:        4D 73 0E      EOR $0E73                 ;
CODE_0FDF2D:        8D 73 0E      STA $0E73                 ;
CODE_0FDF30:        4A            LSR A                     ;
CODE_0FDF31:        4A            LSR A                     ;
CODE_0FDF32:        4A            LSR A                     ;
CODE_0FDF33:        4A            LSR A                     ;
CODE_0FDF34:        4A            LSR A                     ;
CODE_0FDF35:        8D 16 07      STA $0716                 ;
CODE_0FDF38:        AD 73 0E      LDA $0E73                 ;
CODE_0FDF3B:        D0 03         BNE CODE_0FDF40           ;
CODE_0FDF3D:        4C E7 DF      JMP CODE_0FDFE7           ;

CODE_0FDF40:        A9 10         LDA #$10                  ;
CODE_0FDF42:        8D AF 07      STA $07AF                 ;
CODE_0FDF45:        AD F8 0F      LDA $0FF8                 ;
CODE_0FDF48:        29 10         AND #$10                  ;
CODE_0FDF4A:        F0 3F         BEQ CODE_0FDF8B           ;
CODE_0FDF4C:        A5 09         LDA $09                   ;
CODE_0FDF4E:        29 07         AND #$07                  ;
CODE_0FDF50:        D0 39         BNE CODE_0FDF8B           ;
CODE_0FDF52:        AD F4 0F      LDA $0FF4                 ;
CODE_0FDF55:        4A            LSR A                     ;
CODE_0FDF56:        B0 0C         BCS CODE_0FDF64           ;
CODE_0FDF58:        4A            LSR A                     ;
CODE_0FDF59:        B0 17         BCS CODE_0FDF72           ;
CODE_0FDF5B:        4A            LSR A                     ;
CODE_0FDF5C:        B0 2A         BCS CODE_0FDF88           ;
CODE_0FDF5E:        4A            LSR A                     ;
CODE_0FDF5F:        B0 20         BCS CODE_0FDF81           ;
CODE_0FDF61:        4C EA DF      JMP CODE_0FDFEA           ;

CODE_0FDF64:        A9 09         LDA #$09                  ;
CODE_0FDF66:        8D EA 07      STA $07EA                 ;
CODE_0FDF69:        8D EB 07      STA $07EB                 ;
CODE_0FDF6C:        8D E9 07      STA $07E9                 ;
CODE_0FDF6F:        4C EA DF      JMP CODE_0FDFEA           ;

CODE_0FDF72:        9C EA 07      STZ $07EA                 ;
CODE_0FDF75:        9C EB 07      STZ $07EB                 ;
CODE_0FDF78:        9C E9 07      STZ $07E9                 ;
CODE_0FDF7B:        9C 73 0E      STZ $0E73                 ;
CODE_0FDF7E:        4C EA DF      JMP CODE_0FDFEA           ;

CODE_0FDF81:        22 96 85 04   JSL CODE_048596           ;Increase lives by one
CODE_0FDF85:        4C EA DF      JMP CODE_0FDFEA           ;

CODE_0FDF88:        4C EA DF      JMP CODE_0FDFEA           ;

CODE_0FDF8B:        A5 09         LDA $09                   ;
CODE_0FDF8D:        29 07         AND #$07                  ;
CODE_0FDF8F:        D0 1B         BNE CODE_0FDFAC           ;
CODE_0FDF91:        AD F6 0F      LDA $0FF6                 ;
CODE_0FDF94:        29 80         AND #$80                  ;
CODE_0FDF96:        F0 14         BEQ CODE_0FDFAC           ;
CODE_0FDF98:        AD 54 07      LDA $0754                 ;
CODE_0FDF9B:        49 01         EOR #$01                  ;
CODE_0FDF9D:        8D 54 07      STA $0754                 ;
CODE_0FDFA0:        AD 56 07      LDA $0756                 ;
CODE_0FDFA3:        49 02         EOR #$02                  ;
CODE_0FDFA5:        8D 56 07      STA $0756                 ;
CODE_0FDFA8:        22 C3 98 0E   JSL CODE_0E98C3           ;
CODE_0FDFAC:        AD F4 0F      LDA $0FF4                 ;
CODE_0FDFAF:        29 03         AND #$03                  ;
CODE_0FDFB1:        F0 17         BEQ CODE_0FDFCA           ;
CODE_0FDFB3:        A8            TAY                       ;
CODE_0FDFB4:        A5 0C         LDA $0C                   ;
CODE_0FDFB6:        8D 02 02      STA $0202                 ;
CODE_0FDFB9:        AD 19 02      LDA $0219                 ;
CODE_0FDFBC:        18            CLC                       ;
CODE_0FDFBD:        79 EC DF      ADC DATA_0FDFED-1,y               ;
CODE_0FDFC0:        8D 19 02      STA $0219                 ;
CODE_0FDFC3:        A5 78         LDA $78                   ;
CODE_0FDFC5:        79 EE DF      ADC DATA_0FDFED+1,y               ;
CODE_0FDFC8:        85 78         STA $78                   ;
CODE_0FDFCA:        AD F4 0F      LDA $0FF4                 ;
CODE_0FDFCD:        29 0C         AND #$0C                  ;
CODE_0FDFCF:        F0 19         BEQ CODE_0FDFEA           ;
CODE_0FDFD1:        4A            LSR A                     ;
CODE_0FDFD2:        4A            LSR A                     ;
CODE_0FDFD3:        A8            TAY                       ;
CODE_0FDFD4:        AD 37 02      LDA $0237                 ;
CODE_0FDFD7:        18            CLC                       ;
CODE_0FDFD8:        79 EC DF      ADC DATA_0FDFED-1,y               ;
CODE_0FDFDB:        8D 37 02      STA $0237                 ;
CODE_0FDFDE:        A5 BB         LDA $BB                   ;
CODE_0FDFE0:        79 EE DF      ADC DATA_0FDFED+1,y               ;
CODE_0FDFE3:        85 BB         STA $BB                   ;
CODE_0FDFE5:        80 03         BRA CODE_0FDFEA           ;

CODE_0FDFE7:        38            SEC                       ;
CODE_0FDFE8:        AB            PLB                       ;
CODE_0FDFE9:        6B            RTL                       ;

CODE_0FDFEA:        18            CLC                       ;
CODE_0FDFEB:        AB            PLB                       ;
CODE_0FDFEC:        6B            RTL                       ;

DATA_0FDFED:        db $03,$FD,$00,$FF

CODE_0FDFF1:        48            PHA                       ;
CODE_0FDFF2:        8B            PHB                       ;
CODE_0FDFF3:        4B            PHK                       ;
CODE_0FDFF4:        AB            PLB                       ;
CODE_0FDFF5:        AD B2 07      LDA $07B2                 ;
CODE_0FDFF8:        F0 70         BEQ CODE_0FE06A           ;
CODE_0FDFFA:        AD F4 0F      LDA $0FF4                 ;
CODE_0FDFFD:        85 E4         STA $E4                   ;
CODE_0FDFFF:        29 C0         AND #$C0                  ;
CODE_0FE001:        F0 67         BEQ CODE_0FE06A           ;
CODE_0FE003:        A5 09         LDA $09                   ;
CODE_0FE005:        29 07         AND #$07                  ;
CODE_0FE007:        D0 61         BNE CODE_0FE06A           ;
CODE_0FE009:        A5 E4         LDA $E4                   ;
CODE_0FE00B:        C9 40         CMP #$40                  ;
CODE_0FE00D:        D0 12         BNE CODE_0FE021           ;
CODE_0FE00F:        A9 17         LDA #$17                  ;
CODE_0FE011:        8D B2 07      STA $07B2                 ;
CODE_0FE014:        EE 5F 07      INC $075F                 ;
CODE_0FE017:        AD 5F 07      LDA $075F                 ;
CODE_0FE01A:        C9 0D         CMP #$0D                  ;
CODE_0FE01C:        90 03         BCC CODE_0FE021           ;
CODE_0FE01E:        9C 5F 07      STZ $075F                 ;
CODE_0FE021:        A5 E4         LDA $E4                   ;
CODE_0FE023:        C9 80         CMP #$80                  ;
CODE_0FE025:        D0 12         BNE CODE_0FE039           ;
CODE_0FE027:        A9 17         LDA #$17                  ;
CODE_0FE029:        8D B2 07      STA $07B2                 ;
CODE_0FE02C:        EE 5C 07      INC $075C                 ;
CODE_0FE02F:        AD 5C 07      LDA $075C                 ;
CODE_0FE032:        C9 04         CMP #$04                  ;
CODE_0FE034:        90 03         BCC CODE_0FE039           ;
CODE_0FE036:        9C 5C 07      STZ $075C                 ;
CODE_0FE039:        A2 00         LDX #$00                  ;
CODE_0FE03B:        BD A1 E0      LDA DATA_0FE0A1,x               ;
CODE_0FE03E:        9F 02 17 00   STA $001702,x             ;
CODE_0FE042:        E8            INX                       ;
CODE_0FE043:        E0 0B         CPX #$0B                  ;
CODE_0FE045:        90 F4         BCC CODE_0FE03B           ;
CODE_0FE047:        AD 5F 07      LDA $075F                 ;
CODE_0FE04A:        18            CLC                       ;
CODE_0FE04B:        69 01         ADC #$01                  ;
CODE_0FE04D:        8F 06 17 00   STA $001706               ;
CODE_0FE051:        AD 5C 07      LDA $075C                 ;
CODE_0FE054:        18            CLC                       ;
CODE_0FE055:        69 01         ADC #$01                  ;
CODE_0FE057:        8F 0A 17 00   STA $00170A               ;
CODE_0FE05B:        AD 5F 07      LDA $075F                 ;
CODE_0FE05E:        0A            ASL A                     ;
CODE_0FE05F:        0A            ASL A                     ;
CODE_0FE060:        0D 5C 07      ORA $075C                 ;
CODE_0FE063:        AA            TAX                       ;
CODE_0FE064:        BD 6D E0      LDA DATA_0FE06D,x               ;
CODE_0FE067:        8D 60 07      STA $0760                 ;
CODE_0FE06A:        AB            PLB                       ;
CODE_0FE06B:        68            PLA                       ;
CODE_0FE06C:        6B            RTL                       ;

DATA_0FE06D:        db $00,$02,$03,$04,$00,$01,$02,$03 ;
                    db $00,$02,$03,$04,$00,$01,$02,$03 ;
                    db $00,$02,$03,$04,$00,$02,$03,$04 ;
                    db $00,$01,$02,$03,$00,$01,$02,$03 ;
                    db $00,$01,$02,$03,$00,$02,$03,$04 ;
                    db $00,$02,$03,$04,$00,$01,$02,$03 ;
                    db $00,$01,$02,$03 ;

DATA_0FE0A1:        db $58,$73,$00,$05,$24,$20,$24,$20 ;
                    db $24,$20,$FF ;

CODE_0FE0AC:        5A            PHY                       ;
CODE_0FE0AD:        A0 00         LDY #$00                  ;
CODE_0FE0AF:        B9 25 0B      LDA $0B25,y               ;
CODE_0FE0B2:        F0 07         BEQ CODE_0FE0BB           ;
CODE_0FE0B4:        C8            INY                       ;
CODE_0FE0B5:        C0 05         CPY #$05                  ;
CODE_0FE0B7:        D0 F6         BNE CODE_0FE0AF           ;
CODE_0FE0B9:        A0 00         LDY #$00                  ;
CODE_0FE0BB:        A9 01         LDA #$01                  ;
CODE_0FE0BD:        99 25 0B      STA $0B25,y               ;
CODE_0FE0C0:        B5 5E         LDA $5E,x                 ;
CODE_0FE0C2:        10 17         BPL CODE_0FE0DB           ;
CODE_0FE0C4:        B5 79         LDA $79,x                 ;
CODE_0FE0C6:        EB            XBA                       ;
CODE_0FE0C7:        BD 1A 02      LDA $021A,x               ;
CODE_0FE0CA:        C2 20         REP #$20                  ;
CODE_0FE0CC:        38            SEC                       ;
CODE_0FE0CD:        E9 08 00      SBC #$0008                ;
CODE_0FE0D0:        E2 20         SEP #$20                  ;
CODE_0FE0D2:        99 2F 0B      STA $0B2F,y               ;
CODE_0FE0D5:        EB            XBA                       ;
CODE_0FE0D6:        99 2A 0B      STA $0B2A,y               ;
CODE_0FE0D9:        80 15         BRA CODE_0FE0F0           ;

CODE_0FE0DB:        B5 79         LDA $79,x                 ;
CODE_0FE0DD:        EB            XBA                       ;
CODE_0FE0DE:        BD 1A 02      LDA $021A,x               ;
CODE_0FE0E1:        C2 20         REP #$20                  ;
CODE_0FE0E3:        18            CLC                       ;
CODE_0FE0E4:        69 08 00      ADC #$0008                ;
CODE_0FE0E7:        E2 20         SEP #$20                  ;
CODE_0FE0E9:        99 2F 0B      STA $0B2F,y               ;
CODE_0FE0EC:        EB            XBA                       ;
CODE_0FE0ED:        99 2A 0B      STA $0B2A,y               ;
CODE_0FE0F0:        AD B9 03      LDA $03B9                 ;
CODE_0FE0F3:        18            CLC                       ;
CODE_0FE0F4:        69 0C         ADC #$0C                  ;
CODE_0FE0F6:        99 34 0B      STA $0B34,y               ;
CODE_0FE0F9:        7A            PLY                       ;
CODE_0FE0FA:        6B            RTL                       ;

CODE_0FE0FB:        8B            PHB                       ;
CODE_0FE0FC:        4B            PHK                       ;
CODE_0FE0FD:        AB            PLB                       ;
CODE_0FE0FE:        DA            PHX                       ;
CODE_0FE0FF:        5A            PHY                       ;
CODE_0FE100:        A2 00         LDX #$00                  ;
CODE_0FE102:        BD 68 E2      LDA DATA_0FE268,x               ;
CODE_0FE105:        A8            TAY                       ;
CODE_0FE106:        BD 25 0B      LDA $0B25,x               ;
CODE_0FE109:        F0 20         BEQ CODE_0FE12B           ;
CODE_0FE10B:        29 0C         AND #$0C                  ;
CODE_0FE10D:        85 E4         STA $E4                   ;
CODE_0FE10F:        D0 05         BNE CODE_0FE116           ;
CODE_0FE111:        20 34 E1      JSR CODE_0FE134           ;
CODE_0FE114:        80 15         BRA CODE_0FE12B           ;

CODE_0FE116:        C9 04         CMP #$04                  ;
CODE_0FE118:        D0 05         BNE CODE_0FE11F           ;
CODE_0FE11A:        20 6F E1      JSR CODE_0FE16F           ;
CODE_0FE11D:        80 0C         BRA CODE_0FE12B           ;

CODE_0FE11F:        C9 08         CMP #$08                  ;
CODE_0FE121:        D0 05         BNE CODE_0FE128           ;
CODE_0FE123:        20 AF E1      JSR CODE_0FE1AF           ;
CODE_0FE126:        80 03         BRA CODE_0FE12B           ;

CODE_0FE128:        9E 25 0B      STZ $0B25,x               ;
CODE_0FE12B:        E8            INX                       ;
CODE_0FE12C:        E0 05         CPX #$05                  ;
CODE_0FE12E:        D0 D2         BNE CODE_0FE102           ;
CODE_0FE130:        7A            PLY                       ;
CODE_0FE131:        FA            PLX                       ;
CODE_0FE132:        AB            PLB                       ;
CODE_0FE133:        6B            RTL                       ;

CODE_0FE134:        20 53 E2      JSR CODE_0FE253           ;
CODE_0FE137:        AD 3B 0B      LDA $0B3B                 ;
CODE_0FE13A:        18            CLC                       ;
CODE_0FE13B:        69 04         ADC #$04                  ;
CODE_0FE13D:        99 01 08      STA $0801,y               ;
CODE_0FE140:        A9 26         LDA #$26                  ;
CODE_0FE142:        99 02 08      STA $0802,y               ;
CODE_0FE145:        A9 25         LDA #$25                  ;
CODE_0FE147:        99 03 08      STA $0803,y               ;
CODE_0FE14A:        C2 20         REP #$20                  ;
CODE_0FE14C:        AD 39 0B      LDA $0B39                 ;
CODE_0FE14F:        18            CLC                       ;
CODE_0FE150:        69 04 00      ADC #$0004                ;
CODE_0FE153:        38            SEC                       ;
CODE_0FE154:        E5 42         SBC $42                   ;
CODE_0FE156:        8D 39 0B      STA $0B39                 ;
CODE_0FE159:        E2 20         SEP #$20                  ;
CODE_0FE15B:        AD 39 0B      LDA $0B39                 ;
CODE_0FE15E:        99 00 08      STA $0800,y               ;
CODE_0FE161:        AD 3A 0B      LDA $0B3A                 ;
CODE_0FE164:        F0 02         BEQ CODE_0FE168           ;
CODE_0FE166:        A9 01         LDA #$01                  ;
CODE_0FE168:        99 00 0C      STA $0C00,y               ;
CODE_0FE16B:        FE 25 0B      INC $0B25,x               ;
CODE_0FE16E:        60            RTS                       ;

CODE_0FE16F:        20 53 E2      JSR CODE_0FE253           ;
CODE_0FE172:        AD 3B 0B      LDA $0B3B                 ;
CODE_0FE175:        99 01 08      STA $0801,y               ;
CODE_0FE178:        A9 60         LDA #$60                  ;
CODE_0FE17A:        99 02 08      STA $0802,y               ;
CODE_0FE17D:        A9 25         LDA #$25                  ;
CODE_0FE17F:        99 03 08      STA $0803,y               ;
CODE_0FE182:        C2 20         REP #$20                  ;
CODE_0FE184:        AD 39 0B      LDA $0B39                 ;
CODE_0FE187:        38            SEC                       ;
CODE_0FE188:        E5 42         SBC $42                   ;
CODE_0FE18A:        8D 39 0B      STA $0B39                 ;
CODE_0FE18D:        E2 20         SEP #$20                  ;
CODE_0FE18F:        AD 39 0B      LDA $0B39                 ;
CODE_0FE192:        99 00 08      STA $0800,y               ;
CODE_0FE195:        AD 3A 0B      LDA $0B3A                 ;
CODE_0FE198:        F0 04         BEQ CODE_0FE19E           ;
CODE_0FE19A:        A9 03         LDA #$03                  ;
CODE_0FE19C:        80 02         BRA CODE_0FE1A0           ;

CODE_0FE19E:        A9 02         LDA #$02                  ;
CODE_0FE1A0:        99 00 0C      STA $0C00,y               ;
CODE_0FE1A3:        FE 25 0B      INC $0B25,x               ;
CODE_0FE1A6:        60            RTS                       ;

DATA_0FE1A7:        db $FF,$FE,$FC,$F9

DATA_0FE1AB:        db $01,$02,$04,$07

CODE_0FE1AF:        86 F1         STX $F1                   ;
CODE_0FE1B1:        20 53 E2      JSR CODE_0FE253           ;
CODE_0FE1B4:        BD 25 0B      LDA $0B25,x               ;
CODE_0FE1B7:        29 03         AND #$03                  ;
CODE_0FE1B9:        AA            TAX                       ;
CODE_0FE1BA:        AD 3B 0B      LDA $0B3B                 ;
CODE_0FE1BD:        18            CLC                       ;
CODE_0FE1BE:        7D A7 E1      ADC DATA_0FE1A7,x               ;
CODE_0FE1C1:        99 01 08      STA $0801,y               ;
CODE_0FE1C4:        99 05 08      STA $0805,y               ;
CODE_0FE1C7:        AD 3B 0B      LDA $0B3B                 ;
CODE_0FE1CA:        18            CLC                       ;
CODE_0FE1CB:        7D AB E1      ADC DATA_0FE1AB,x               ;
CODE_0FE1CE:        18            CLC                       ;
CODE_0FE1CF:        69 08         ADC #$08                  ;
CODE_0FE1D1:        99 09 08      STA $0809,y               ;
CODE_0FE1D4:        99 0D 08      STA $080D,y               ;
CODE_0FE1D7:        A9 39         LDA #$39                  ;
CODE_0FE1D9:        99 02 08      STA $0802,y               ;
CODE_0FE1DC:        99 06 08      STA $0806,y               ;
CODE_0FE1DF:        99 0A 08      STA $080A,y               ;
CODE_0FE1E2:        99 0E 08      STA $080E,y               ;
CODE_0FE1E5:        A9 25         LDA #$25                  ;
CODE_0FE1E7:        99 03 08      STA $0803,y               ;
CODE_0FE1EA:        99 07 08      STA $0807,y               ;
CODE_0FE1ED:        99 0B 08      STA $080B,y               ;
CODE_0FE1F0:        99 0F 08      STA $080F,y               ;
CODE_0FE1F3:        BD A7 E1      LDA DATA_0FE1A7,x               ;
CODE_0FE1F6:        85 EF         STA $EF                   ;
CODE_0FE1F8:        A9 FF         LDA #$FF                  ;
CODE_0FE1FA:        85 F0         STA $F0                   ;
CODE_0FE1FC:        C2 20         REP #$20                  ;
CODE_0FE1FE:        AD 39 0B      LDA $0B39                 ;
CODE_0FE201:        38            SEC                       ;
CODE_0FE202:        E5 42         SBC $42                   ;
CODE_0FE204:        18            CLC                       ;
CODE_0FE205:        65 EF         ADC $EF                   ;
CODE_0FE207:        85 ED         STA $ED                   ;
CODE_0FE209:        E2 20         SEP #$20                  ;
CODE_0FE20B:        A5 ED         LDA $ED                   ;
CODE_0FE20D:        99 00 08      STA $0800,y               ;
CODE_0FE210:        99 08 08      STA $0808,y               ;
CODE_0FE213:        A5 EE         LDA $EE                   ;
CODE_0FE215:        F0 02         BEQ CODE_0FE219           ;
CODE_0FE217:        A9 01         LDA #$01                  ;
CODE_0FE219:        99 00 0C      STA $0C00,y               ;
CODE_0FE21C:        99 08 0C      STA $0C08,y               ;
CODE_0FE21F:        BD AB E1      LDA DATA_0FE1AB,x               ;
CODE_0FE222:        85 EF         STA $EF                   ;
CODE_0FE224:        64 F0         STZ $F0                   ;
CODE_0FE226:        C2 20         REP #$20                  ;
CODE_0FE228:        AD 39 0B      LDA $0B39                 ;
CODE_0FE22B:        18            CLC                       ;
CODE_0FE22C:        69 08 00      ADC #$0008                ;
CODE_0FE22F:        38            SEC                       ;
CODE_0FE230:        E5 42         SBC $42                   ;
CODE_0FE232:        18            CLC                       ;
CODE_0FE233:        65 EF         ADC $EF                   ;
CODE_0FE235:        85 ED         STA $ED                   ;
CODE_0FE237:        E2 20         SEP #$20                  ;
CODE_0FE239:        A5 ED         LDA $ED                   ;
CODE_0FE23B:        99 04 08      STA $0804,y               ;
CODE_0FE23E:        99 0C 08      STA $080C,y               ;
CODE_0FE241:        A5 EE         LDA $EE                   ;
CODE_0FE243:        F0 02         BEQ CODE_0FE247           ;
CODE_0FE245:        A9 01         LDA #$01                  ;
CODE_0FE247:        99 04 0C      STA $0C04,y               ;
CODE_0FE24A:        99 0C 0C      STA $0C0C,y               ;
CODE_0FE24D:        A6 F1         LDX $F1                   ;
CODE_0FE24F:        FE 25 0B      INC $0B25,x               ;
CODE_0FE252:        60            RTS                       ;

CODE_0FE253:        BD 34 0B      LDA $0B34,x               ;
CODE_0FE256:        8D 3B 0B      STA $0B3B                 ;
CODE_0FE259:        BD 2A 0B      LDA $0B2A,x               ;
CODE_0FE25C:        EB            XBA                       ;
CODE_0FE25D:        BD 2F 0B      LDA $0B2F,x               ;
CODE_0FE260:        C2 20         REP #$20                  ;
CODE_0FE262:        8D 39 0B      STA $0B39                 ;
CODE_0FE265:        E2 20         SEP #$20                  ;
CODE_0FE267:        60            RTS                       ;

DATA_0FE268:        db $00,$10,$20,$40,$50

CODE_0FE26D:        8B            PHB                       ;
CODE_0FE26E:        4B            PHK                       ;
CODE_0FE26F:        AB            PLB                       ;
CODE_0FE270:        AD 01 02      LDA $0201                 ;
CODE_0FE273:        C9 01         CMP #$01                  ;
CODE_0FE275:        F0 72         BEQ CODE_0FE2E9           ;
CODE_0FE277:        AD 5F 07      LDA $075F                 ;
CODE_0FE27A:        C9 08         CMP #$08                  ;
CODE_0FE27C:        F0 6B         BEQ CODE_0FE2E9           ;
CODE_0FE27E:        A5 BA         LDA $BA                   ;
CODE_0FE280:        C9 03         CMP #$03                  ;
CODE_0FE282:        D0 65         BNE CODE_0FE2E9           ;
CODE_0FE284:        A5 96         LDA $96                   ;
CODE_0FE286:        D0 5E         BNE CODE_0FE2E6           ;
CODE_0FE288:        AD FC 02      LDA $02FC                 ;
CODE_0FE28B:        F0 5C         BEQ CODE_0FE2E9           ;
CODE_0FE28D:        A2 08         LDX #$08                  ;
CODE_0FE28F:        B5 1C         LDA $1C,x                 ;
CODE_0FE291:        C9 2D         CMP #$2D                  ;
CODE_0FE293:        F0 05         BEQ CODE_0FE29A           ;
CODE_0FE295:        CA            DEX                       ;
CODE_0FE296:        10 F7         BPL CODE_0FE28F           ;
CODE_0FE298:        80 23         BRA CODE_0FE2BD           ;

CODE_0FE29A:        BD 38 02      LDA $0238,x               ;
CODE_0FE29D:        C9 B8         CMP #$B8                  ;
CODE_0FE29F:        90 48         BCC CODE_0FE2E9           ;
CODE_0FE2A1:        B5 10         LDA $10,x                 ;
CODE_0FE2A3:        29 80         AND #$80                  ;
CODE_0FE2A5:        D0 EE         BNE CODE_0FE295           ;
CODE_0FE2A7:        BD 1A 02      LDA $021A,x               ;
CODE_0FE2AA:        18            CLC                       ;
CODE_0FE2AB:        69 10         ADC #$10                  ;
CODE_0FE2AD:        8D FA 02      STA $02FA                 ;
CODE_0FE2B0:        B5 79         LDA $79,x                 ;
CODE_0FE2B2:        69 00         ADC #$00                  ;
CODE_0FE2B4:        8D FB 02      STA $02FB                 ;
CODE_0FE2B7:        A9 08         LDA #$08                  ;
CODE_0FE2B9:        85 96         STA $96                   ;
CODE_0FE2BB:        80 1F         BRA CODE_0FE2DC           ;

CODE_0FE2BD:        AE FC 02      LDX $02FC                 ;
CODE_0FE2C0:        CA            DEX                       ;
CODE_0FE2C1:        BD 38 02      LDA $0238,x               ;
CODE_0FE2C4:        C9 B8         CMP #$B8                  ;
CODE_0FE2C6:        90 21         BCC CODE_0FE2E9           ;
CODE_0FE2C8:        BD 1A 02      LDA $021A,x               ;
CODE_0FE2CB:        18            CLC                       ;
CODE_0FE2CC:        69 04         ADC #$04                  ;
CODE_0FE2CE:        8D FA 02      STA $02FA                 ;
CODE_0FE2D1:        B5 79         LDA $79,x                 ;
CODE_0FE2D3:        69 00         ADC #$00                  ;
CODE_0FE2D5:        8D FB 02      STA $02FB                 ;
CODE_0FE2D8:        A9 04         LDA #$04                  ;
CODE_0FE2DA:        85 96         STA $96                   ;
CODE_0FE2DC:        A9 25         LDA #$25                  ;
CODE_0FE2DE:        8D 00 16      STA $1600                 ;
CODE_0FE2E1:        A9 20         LDA #$20                  ;
CODE_0FE2E3:        8D 03 16      STA $1603                 ;
CODE_0FE2E6:        20 ED E2      JSR CODE_0FE2ED           ;
CODE_0FE2E9:        4C 35 ED      JMP CODE_0FED35           ;

CODE_0FE2EC:        6B            RTL                       ;

CODE_0FE2ED:        A5 96         LDA $96                   ;
CODE_0FE2EF:        85 E4         STA $E4                   ;
CODE_0FE2F1:        EE F9 02      INC $02F9                 ;
CODE_0FE2F4:        AD F9 02      LDA $02F9                 ;
CODE_0FE2F7:        4A            LSR A                     ;
CODE_0FE2F8:        4A            LSR A                     ;
CODE_0FE2F9:        C9 06         CMP #$06                  ;
CODE_0FE2FB:        B0 5B         BCS CODE_0FE358           ;
CODE_0FE2FD:        85 DD         STA $DD                   ;
CODE_0FE2FF:        0A            ASL A                     ;
CODE_0FE300:        0A            ASL A                     ;
CODE_0FE301:        0A            ASL A                     ;
CODE_0FE302:        AA            TAX                       ;
CODE_0FE303:        A0 20         LDY #$20                  ;
CODE_0FE305:        64 E9         STZ $E9                   ;
CODE_0FE307:        8A            TXA                       ;
CODE_0FE308:        29 01         AND #$01                  ;
CODE_0FE30A:        18            CLC                       ;
CODE_0FE30B:        69 FF         ADC #$FF                  ;
CODE_0FE30D:        85 E8         STA $E8                   ;
CODE_0FE30F:        BD 5E E3      LDA DATA_0FE35E,x               ;
CODE_0FE312:        85 E7         STA $E7                   ;
CODE_0FE314:        C2 20         REP #$20                  ;
CODE_0FE316:        A5 E7         LDA $E7                   ;
CODE_0FE318:        18            CLC                       ;
CODE_0FE319:        6D FA 02      ADC $02FA                 ;
CODE_0FE31C:        38            SEC                       ;
CODE_0FE31D:        E5 42         SBC $42                   ;
CODE_0FE31F:        85 E7         STA $E7                   ;
CODE_0FE321:        E2 20         SEP #$20                  ;
CODE_0FE323:        A5 E7         LDA $E7                   ;
CODE_0FE325:        99 00 08      STA $0800,y               ;
CODE_0FE328:        A5 E8         LDA $E8                   ;
CODE_0FE32A:        F0 02         BEQ CODE_0FE32E           ;
CODE_0FE32C:        A9 00         LDA #$00                  ;
CODE_0FE32E:        05 E9         ORA $E9                   ;
CODE_0FE330:        99 00 0C      STA $0C00,y               ;
CODE_0FE333:        BD 86 E3      LDA DATA_0FE386,x               ;
CODE_0FE336:        18            CLC                       ;
CODE_0FE337:        69 D8         ADC #$D8                  ;
CODE_0FE339:        99 01 08      STA $0801,y               ;
CODE_0FE33C:        DA            PHX                       ;
CODE_0FE33D:        A6 DD         LDX $DD                   ;
CODE_0FE33F:        BD B7 E3      LDA DATA_0FE3B7,x               ;
CODE_0FE342:        99 02 08      STA $0802,y               ;
CODE_0FE345:        A6 E4         LDX $E4                   ;
CODE_0FE347:        BD AE E3      LDA DATA_0FE3AE,x               ;
CODE_0FE34A:        99 03 08      STA $0803,y               ;
CODE_0FE34D:        FA            PLX                       ;
CODE_0FE34E:        C8            INY                       ;
CODE_0FE34F:        C8            INY                       ;
CODE_0FE350:        C8            INY                       ;
CODE_0FE351:        C8            INY                       ;
CODE_0FE352:        E8            INX                       ;
CODE_0FE353:        C6 E4         DEC $E4                   ;
CODE_0FE355:        D0 B0         BNE CODE_0FE307           ;
CODE_0FE357:        60            RTS                       ;

CODE_0FE358:        9C FC 02      STZ $02FC                 ;
CODE_0FE35B:        64 96         STZ $96                   ;
CODE_0FE35D:        60            RTS                       ;

DATA_0FE35E:        db $F6,$02,$F1,$07,$F2,$06,$ED,$0B ;
                    db $F3,$05,$EE,$0A,$EF,$09,$EA,$0E ;
                    db $F1,$07,$EC,$0C,$ED,$0B,$E8,$10 ;
                    db $F0,$08,$EB,$0D,$EC,$0C,$E7,$11 ;
                    db $EF,$09,$EA,$0E,$EB,$0D,$E6,$12 ;

DATA_0FE386:        db $F5,$F5,$F8,$F8,$F1,$F1,$F4,$F4 ;
                    db $F4,$F4,$F7,$F7,$F0,$F0,$F3,$F3 ;
                    db $F2,$F2,$F5,$F5,$EE,$EE,$F1,$F1 ;
                    db $F1,$F1,$F4,$F4,$ED,$ED,$F0,$F0 ;
                    db $F0,$F0,$F3,$F3,$EC,$EC,$EF,$EF ;

DATA_0FE3AE:        db $28,$68,$28,$68,$28,$68,$28,$68 ;
                    db $28 ;

DATA_0FE3B7:        db $33,$33,$34,$35,$36,$37 ;

DATA_0FE3BD:        db $F1,$FF,$F6,$FF,$02,$00,$07,$00 ;
                    db $EE,$FF,$F3,$FF,$05,$00,$0A,$00 ;
                    db $EC,$FF,$F1,$FF,$07,$00,$0C,$00 ;
                    db $EB,$FF,$F0,$FF,$08,$00,$0D,$00 ;
                    db $EA,$FF,$EF,$FF,$09,$00,$0E,$00 ;
                    db $EA,$FF,$EF,$FF,$09,$00,$0E,$00 ;

DATA_0FE3ED:        db $F8,$F5,$F5,$F8,$F7,$F4,$F4,$F7 ;
                    db $F5,$F2,$F2,$F5,$F4,$F1,$F1,$F4 ;
                    db $F3,$F0,$F0,$F3,$F3,$F0,$F0,$F3 ;

DATA_0FE405:        db $33,$33,$34,$35,$36,$37 ;

DATA_0FE40B:        db $28,$28,$68,$68 ;

CODE_0FE40F:        8B            PHB                       ;
CODE_0FE410:        4B            PHK                       ;
CODE_0FE411:        AB            PLB                       ;
CODE_0FE412:        DA            PHX                       ;
CODE_0FE413:        5A            PHY                       ;
CODE_0FE414:        BD 00 0B      LDA $0B00,x               ;
CODE_0FE417:        C9 02         CMP #$02                  ;
CODE_0FE419:        F0 37         BEQ CODE_0FE452           ;
CODE_0FE41B:        4A            LSR A                     ;
CODE_0FE41C:        90 49         BCC CODE_0FE467           ;
CODE_0FE41E:        BD 09 0B      LDA $0B09,x               ;
CODE_0FE421:        4A            LSR A                     ;
CODE_0FE422:        4A            LSR A                     ;
CODE_0FE423:        C9 06         CMP #$06                  ;
CODE_0FE425:        F0 2D         BEQ CODE_0FE454           ;
CODE_0FE427:        A8            TAY                       ;
CODE_0FE428:        B9 05 E4      LDA DATA_0FE405,y               ;
CODE_0FE42B:        85 ED         STA $ED                   ;
CODE_0FE42D:        BD 1A 02      LDA $021A,x               ;
CODE_0FE430:        85 00         STA $00                   ;
CODE_0FE432:        B5 79         LDA $79,x                 ;
CODE_0FE434:        85 01         STA $01                   ;
CODE_0FE436:        C2 20         REP #$20                  ;
CODE_0FE438:        A5 00         LDA $00                   ;
CODE_0FE43A:        18            CLC                       ;
CODE_0FE43B:        69 08 00      ADC #$0008                ;
CODE_0FE43E:        38            SEC                       ;
CODE_0FE43F:        E5 42         SBC $42                   ;
CODE_0FE441:        85 00         STA $00                   ;
CODE_0FE443:        E2 20         SEP #$20                  ;
CODE_0FE445:        BD 46 0B      LDA $0B46,x               ;
CODE_0FE448:        18            CLC                       ;
CODE_0FE449:        69 04         ADC #$04                  ;
CODE_0FE44B:        85 F2         STA $F2                   ;
CODE_0FE44D:        20 37 E5      JSR CODE_0FE537           ;
CODE_0FE450:        80 15         BRA CODE_0FE467           ;

CODE_0FE452:        80 44         BRA CODE_0FE498           ;

CODE_0FE454:        FE 00 0B      INC $0B00,x               ;
CODE_0FE457:        9E 09 0B      STZ $0B09,x               ;
CODE_0FE45A:        BD 00 0B      LDA $0B00,x               ;
CODE_0FE45D:        C9 02         CMP #$02                  ;
CODE_0FE45F:        D0 06         BNE CODE_0FE467           ;
CODE_0FE461:        BD 38 02      LDA $0238,x               ;
CODE_0FE464:        9D 12 0B      STA $0B12,x               ;
CODE_0FE467:        7A            PLY                       ;
CODE_0FE468:        FA            PLX                       ;
CODE_0FE469:        AB            PLB                       ;
CODE_0FE46A:        6B            RTL                       ;

DATA_0FE46B:        db $FF,$FF,$FA,$FF,$FA,$FF,$FA,$FF ;
                    db $FF,$FF ;

DATA_0FE475:        db $00,$00,$00,$00,$00,$00,$FE,$FF ;
                    db $FE,$FF ;

DATA_0FE47F:        db $FF,$00,$00,$00,$FF ;

DATA_0FE484:        db $12,$12,$12,$10,$10 ;

DATA_0FE489:        db $FC,$30,$31,$32,$FC ;

DATA_0FE48E:        db $30,$31,$32,$FC,$FC ;

DATA_0FE493:        db $FF,$FF,$FF,$00,$00 ;

CODE_0FE498:        BD 09 0B      LDA $0B09,x               ;
CODE_0FE49B:        4A            LSR A                     ;
CODE_0FE49C:        4A            LSR A                     ;
CODE_0FE49D:        4A            LSR A                     ;
CODE_0FE49E:        C9 05         CMP #$05                  ;
CODE_0FE4A0:        90 08         BCC CODE_0FE4AA           ;
CODE_0FE4A2:        A9 30         LDA #$30                  ;
CODE_0FE4A4:        9D 09 0B      STA $0B09,x               ;
CODE_0FE4A7:        4C 34 E5      JMP CODE_0FE534           ;

CODE_0FE4AA:        85 EB         STA $EB                   ;
CODE_0FE4AC:        0A            ASL A                     ;
CODE_0FE4AD:        A8            TAY                       ;
CODE_0FE4AE:        BD 1A 02      LDA $021A,x               ;
CODE_0FE4B1:        85 00         STA $00                   ;
CODE_0FE4B3:        B5 79         LDA $79,x                 ;
CODE_0FE4B5:        85 01         STA $01                   ;
CODE_0FE4B7:        C2 20         REP #$20                  ;
CODE_0FE4B9:        A5 00         LDA $00                   ;
CODE_0FE4BB:        18            CLC                       ;
CODE_0FE4BC:        69 08 00      ADC #$0008                ;
CODE_0FE4BF:        38            SEC                       ;
CODE_0FE4C0:        E5 42         SBC $42                   ;
CODE_0FE4C2:        48            PHA                       ;
CODE_0FE4C3:        18            CLC                       ;
CODE_0FE4C4:        79 6B E4      ADC DATA_0FE46B,y               ;
CODE_0FE4C7:        85 00         STA $00                   ;
CODE_0FE4C9:        68            PLA                       ;
CODE_0FE4CA:        18            CLC                       ;
CODE_0FE4CB:        79 75 E4      ADC DATA_0FE475,y               ;
CODE_0FE4CE:        85 02         STA $02                   ;
CODE_0FE4D0:        E2 20         SEP #$20                  ;
CODE_0FE4D2:        A4 EB         LDY $EB                   ;
CODE_0FE4D4:        B9 93 E4      LDA DATA_0FE493,y               ;
CODE_0FE4D7:        18            CLC                       ;
CODE_0FE4D8:        7D 12 0B      ADC $0B12,x               ;
CODE_0FE4DB:        9D 12 0B      STA $0B12,x               ;
CODE_0FE4DE:        B9 7F E4      LDA DATA_0FE47F,y               ;
CODE_0FE4E1:        18            CLC                       ;
CODE_0FE4E2:        7D 12 0B      ADC $0B12,x               ;
CODE_0FE4E5:        85 04         STA $04                   ;
CODE_0FE4E7:        B9 84 E4      LDA DATA_0FE484,y               ;
CODE_0FE4EA:        18            CLC                       ;
CODE_0FE4EB:        7D 12 0B      ADC $0B12,x               ;
CODE_0FE4EE:        85 ED         STA $ED                   ;
CODE_0FE4F0:        BD 46 0B      LDA $0B46,x               ;
CODE_0FE4F3:        A8            TAY                       ;
CODE_0FE4F4:        C8            INY                       ;
CODE_0FE4F5:        C8            INY                       ;
CODE_0FE4F6:        C8            INY                       ;
CODE_0FE4F7:        C8            INY                       ;
CODE_0FE4F8:        A6 EB         LDX $EB                   ;
CODE_0FE4FA:        A5 00         LDA $00                   ;
CODE_0FE4FC:        99 00 09      STA $0900,y               ;
CODE_0FE4FF:        A5 02         LDA $02                   ;
CODE_0FE501:        99 04 09      STA $0904,y               ;
CODE_0FE504:        A5 04         LDA $04                   ;
CODE_0FE506:        99 01 09      STA $0901,y               ;
CODE_0FE509:        A5 ED         LDA $ED                   ;
CODE_0FE50B:        99 05 09      STA $0905,y               ;
CODE_0FE50E:        BD 89 E4      LDA DATA_0FE489,x               ;
CODE_0FE511:        99 02 09      STA $0902,y               ;
CODE_0FE514:        BD 8E E4      LDA DATA_0FE48E,x               ;
CODE_0FE517:        99 06 09      STA $0906,y               ;
CODE_0FE51A:        A9 28         LDA #$28                  ;
CODE_0FE51C:        99 03 09      STA $0903,y               ;
CODE_0FE51F:        99 07 09      STA $0907,y               ;
CODE_0FE522:        A5 01         LDA $01                   ;
CODE_0FE524:        F0 05         BEQ CODE_0FE52B           ;
CODE_0FE526:        A9 01         LDA #$01                  ;
CODE_0FE528:        99 00 0D      STA $0D00,y               ;
CODE_0FE52B:        A5 03         LDA $03                   ;
CODE_0FE52D:        F0 05         BEQ CODE_0FE534           ;
CODE_0FE52F:        A9 01         LDA #$01                  ;
CODE_0FE531:        99 04 0D      STA $0D04,y               ;
CODE_0FE534:        4C 67 E4      JMP CODE_0FE467           ;

CODE_0FE537:        84 EC         STY $EC                   ;
CODE_0FE539:        A2 00         LDX #$00                  ;
CODE_0FE53B:        A5 EC         LDA $EC                   ;
CODE_0FE53D:        0A            ASL A                     ;
CODE_0FE53E:        0A            ASL A                     ;
CODE_0FE53F:        85 EB         STA $EB                   ;
CODE_0FE541:        8A            TXA                       ;
CODE_0FE542:        18            CLC                       ;
CODE_0FE543:        65 EB         ADC $EB                   ;
CODE_0FE545:        A8            TAY                       ;
CODE_0FE546:        A9 D8         LDA #$D8                  ;
CODE_0FE548:        18            CLC                       ;
CODE_0FE549:        79 ED E3      ADC DATA_0FE3ED,y               ;
CODE_0FE54C:        85 EE         STA $EE                   ;
CODE_0FE54E:        A5 5C         LDA $5C                   ;
CODE_0FE550:        D0 04         BNE CODE_0FE556           ;
CODE_0FE552:        A9 F0         LDA #$F0                  ;
CODE_0FE554:        85 EE         STA $EE                   ;
CODE_0FE556:        BD 0B E4      LDA DATA_0FE40B,x               ;
CODE_0FE559:        85 EF         STA $EF                   ;
CODE_0FE55B:        98            TYA                       ;
CODE_0FE55C:        0A            ASL A                     ;
CODE_0FE55D:        A8            TAY                       ;
CODE_0FE55E:        C2 20         REP #$20                  ;
CODE_0FE560:        B9 BD E3      LDA DATA_0FE3BD,y               ;
CODE_0FE563:        18            CLC                       ;
CODE_0FE564:        65 00         ADC $00                   ;
CODE_0FE566:        85 F0         STA $F0                   ;
CODE_0FE568:        E2 20         SEP #$20                  ;
CODE_0FE56A:        8A            TXA                       ;
CODE_0FE56B:        0A            ASL A                     ;
CODE_0FE56C:        0A            ASL A                     ;
CODE_0FE56D:        18            CLC                       ;
CODE_0FE56E:        65 F2         ADC $F2                   ;
CODE_0FE570:        A8            TAY                       ;
CODE_0FE571:        A5 F0         LDA $F0                   ;
CODE_0FE573:        99 00 09      STA $0900,y               ;
CODE_0FE576:        A5 EE         LDA $EE                   ;
CODE_0FE578:        99 01 09      STA $0901,y               ;
CODE_0FE57B:        A5 ED         LDA $ED                   ;
CODE_0FE57D:        99 02 09      STA $0902,y               ;
CODE_0FE580:        A5 EF         LDA $EF                   ;
CODE_0FE582:        99 03 09      STA $0903,y               ;
CODE_0FE585:        A5 F1         LDA $F1                   ;
CODE_0FE587:        F0 05         BEQ CODE_0FE58E           ;
CODE_0FE589:        A9 01         LDA #$01                  ;
CODE_0FE58B:        99 00 0D      STA $0D00,y               ;
CODE_0FE58E:        E8            INX                       ;
CODE_0FE58F:        E0 04         CPX #$04                  ;
CODE_0FE591:        D0 A8         BNE CODE_0FE53B           ;
CODE_0FE593:        60            RTS                       ;

DATA_0FE594:        db $1C,$0E,$06,$08

DATA_0FE598:        db $18,$16,$1A,$14

DATA_0FE59C:        db $D0,$E0,$E1,$FC

DATA_0FE5A0:        db $00,$FC,$F8,$F4

CODE_0FE5A4:        8B            PHB                       ;
CODE_0FE5A5:        4B            PHK                       ;
CODE_0FE5A6:        AB            PLB                       ;
CODE_0FE5A7:        DA            PHX                       ;
CODE_0FE5A8:        5A            PHY                       ;
CODE_0FE5A9:        AD 40 0E      LDA $0E40                 ;
CODE_0FE5AC:        D0 03         BNE CODE_0FE5B1           ;
CODE_0FE5AE:        20 C5 E5      JSR CODE_0FE5C5           ;
CODE_0FE5B1:        20 D4 E5      JSR CODE_0FE5D4           ;
CODE_0FE5B4:        AD 42 0E      LDA $0E42                 ;
CODE_0FE5B7:        29 20         AND #$20                  ;
CODE_0FE5B9:        F0 06         BEQ CODE_0FE5C1           ;
CODE_0FE5BB:        9C 40 0E      STZ $0E40                 ;
CODE_0FE5BE:        9C 41 0E      STZ $0E41                 ;
CODE_0FE5C1:        7A            PLY                       ;
CODE_0FE5C2:        FA            PLX                       ;
CODE_0FE5C3:        AB            PLB                       ;
CODE_0FE5C4:        6B            RTL                       ;

CODE_0FE5C5:        A2 03         LDX #$03                  ;
CODE_0FE5C7:        BD A0 E5      LDA DATA_0FE5A0,x               ;
CODE_0FE5CA:        9D 42 0E      STA $0E42,x               ;
CODE_0FE5CD:        CA            DEX                       ;
CODE_0FE5CE:        10 F7         BPL CODE_0FE5C7           ;
CODE_0FE5D0:        EE 40 0E      INC $0E40                 ;
CODE_0FE5D3:        60            RTS                       ;

CODE_0FE5D4:        A2 03         LDX #$03                  ;
CODE_0FE5D6:        A0 30         LDY #$30                  ;
CODE_0FE5D8:        BD 42 0E      LDA $0E42,x               ;
CODE_0FE5DB:        30 2B         BMI CODE_0FE608           ;
CODE_0FE5DD:        D0 03         BNE CODE_0FE5E2           ;
CODE_0FE5DF:        20 18 E6      JSR CODE_0FE618           ;
CODE_0FE5E2:        4A            LSR A                     ;
CODE_0FE5E3:        4A            LSR A                     ;
CODE_0FE5E4:        C9 03         CMP #$03                  ;
CODE_0FE5E6:        B0 20         BCS CODE_0FE608           ;
CODE_0FE5E8:        DA            PHX                       ;
CODE_0FE5E9:        AA            TAX                       ;
CODE_0FE5EA:        BD 9C E5      LDA DATA_0FE59C,x               ;
CODE_0FE5ED:        99 02 08      STA $0802,y               ;
CODE_0FE5F0:        A9 38         LDA #$38                  ;
CODE_0FE5F2:        99 03 08      STA $0803,y               ;
CODE_0FE5F5:        FA            PLX                       ;
CODE_0FE5F6:        BD 46 0E      LDA $0E46,x               ;
CODE_0FE5F9:        38            SEC                       ;
CODE_0FE5FA:        ED 1C 07      SBC $071C                 ;
CODE_0FE5FD:        99 00 08      STA $0800,y               ;
CODE_0FE600:        BD 4A 0E      LDA $0E4A,x               ;
CODE_0FE603:        99 01 08      STA $0801,y               ;
CODE_0FE606:        80 05         BRA CODE_0FE60D           ;

CODE_0FE608:        A9 F8         LDA #$F8                  ;
CODE_0FE60A:        99 01 08      STA $0801,y               ;
CODE_0FE60D:        C8            INY                       ;
CODE_0FE60E:        C8            INY                       ;
CODE_0FE60F:        C8            INY                       ;
CODE_0FE610:        C8            INY                       ;
CODE_0FE611:        FE 42 0E      INC $0E42,x               ;
CODE_0FE614:        CA            DEX                       ;
CODE_0FE615:        10 C1         BPL CODE_0FE5D8           ;
CODE_0FE617:        60            RTS                       ;

CODE_0FE618:        AD 02 02      LDA $0202                 ;
CODE_0FE61B:        4A            LSR A                     ;
CODE_0FE61C:        90 08         BCC CODE_0FE626           ;
CODE_0FE61E:        AD 19 02      LDA $0219                 ;
CODE_0FE621:        18            CLC                       ;
CODE_0FE622:        69 06         ADC #$06                  ;
CODE_0FE624:        80 06         BRA CODE_0FE62C           ;

CODE_0FE626:        AD 19 02      LDA $0219                 ;
CODE_0FE629:        18            CLC                       ;
CODE_0FE62A:        69 02         ADC #$02                  ;
CODE_0FE62C:        9D 46 0E      STA $0E46,x               ;
CODE_0FE62F:        AD D5 06      LDA $06D5                 ;
CODE_0FE632:        C9 18         CMP #$18                  ;
CODE_0FE634:        F0 04         BEQ CODE_0FE63A           ;
CODE_0FE636:        C9 78         CMP #$78                  ;
CODE_0FE638:        D0 13         BNE CODE_0FE64D           ;
CODE_0FE63A:        AD B8 07      LDA $07B8                 ;
CODE_0FE63D:        29 04         AND #$04                  ;
CODE_0FE63F:        38            SEC                       ;
CODE_0FE640:        E9 02         SBC #$02                  ;
CODE_0FE642:        18            CLC                       ;
CODE_0FE643:        6D B8 03      ADC $03B8                 ;
CODE_0FE646:        6D 98 E5      ADC DATA_0FE598                 ;
CODE_0FE649:        9D 4A 0E      STA $0E4A,x               ;
CODE_0FE64C:        60            RTS                       ;

CODE_0FE64D:        A9 F8         LDA #$F8                  ;
CODE_0FE64F:        9D 4A 0E      STA $0E4A,x               ;
CODE_0FE652:        60            RTS                       ;

DATA_0FE653:        db $00,$A5,$40,$2A,$82,$39,$00,$D0
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

CODE_0FE893:        8B            PHB                       ;
CODE_0FE894:        4B            PHK                       ;
CODE_0FE895:        AB            PLB                       ;
CODE_0FE896:        A9 01         LDA #$01                  ;
CODE_0FE898:        8D C8 0E      STA $0EC8                 ;
CODE_0FE89B:        C2 30         REP #$30                  ;
CODE_0FE89D:        AE 00 17      LDX $1700                 ;
CODE_0FE8A0:        A0 00 00      LDY #$0000                ;
CODE_0FE8A3:        B9 53 E6      LDA DATA_0FE653,y               ;
CODE_0FE8A6:        9D 02 17      STA $1702,x               ;
CODE_0FE8A9:        1A            INC A                     ;
CODE_0FE8AA:        F0 06         BEQ CODE_0FE8B2           ;
CODE_0FE8AC:        E8            INX                       ;
CODE_0FE8AD:        E8            INX                       ;
CODE_0FE8AE:        C8            INY                       ;
CODE_0FE8AF:        C8            INY                       ;
CODE_0FE8B0:        80 F1         BRA CODE_0FE8A3           ;

CODE_0FE8B2:        8E 00 17      STX $1700                 ;
CODE_0FE8B5:        E2 30         SEP #$30                  ;
CODE_0FE8B7:        9C 2B 0F      STZ $0F2B                 ;
CODE_0FE8BA:        AB            PLB                       ;
CODE_0FE8BB:        6B            RTL                       ;

DATA_0FE8BC:        db $00,$30

CODE_0FE8BE:        8B            PHB                       ;
CODE_0FE8BF:        4B            PHK                       ;
CODE_0FE8C0:        AB            PLB                       ;
CODE_0FE8C1:        84 00         STY $00                   ;
CODE_0FE8C3:        AD B9 03      LDA $03B9                 ;
CODE_0FE8C6:        BE 9A 03      LDX $039A,y               ;
CODE_0FE8C9:        BC 46 0B      LDY $0B46,x               ;
CODE_0FE8CC:        84 02         STY $02                   ;
CODE_0FE8CE:        3A            DEC A                     ;
CODE_0FE8CF:        20 4B E9      JSR CODE_0FE94B           ;
CODE_0FE8D2:        AD AE 03      LDA $03AE                 ;
CODE_0FE8D5:        99 00 09      STA $0900,y               ;
CODE_0FE8D8:        99 08 09      STA $0908,y               ;
CODE_0FE8DB:        99 10 09      STA $0910,y               ;
CODE_0FE8DE:        99 04 09      STA $0904,y               ;
CODE_0FE8E1:        99 0C 09      STA $090C,y               ;
CODE_0FE8E4:        99 14 09      STA $0914,y               ;
CODE_0FE8E7:        99 18 09      STA $0918,y               ;
CODE_0FE8EA:        99 1C 09      STA $091C,y               ;
CODE_0FE8ED:        99 20 09      STA $0920,y               ;
CODE_0FE8F0:        A9 1B         LDA #$1B                  ;
CODE_0FE8F2:        99 03 09      STA $0903,y               ;
CODE_0FE8F5:        99 0B 09      STA $090B,y               ;
CODE_0FE8F8:        99 13 09      STA $0913,y               ;
CODE_0FE8FB:        99 07 09      STA $0907,y               ;
CODE_0FE8FE:        99 0F 09      STA $090F,y               ;
CODE_0FE901:        99 17 09      STA $0917,y               ;
CODE_0FE904:        99 1B 09      STA $091B,y               ;
CODE_0FE907:        99 1F 09      STA $091F,y               ;
CODE_0FE90A:        99 23 09      STA $0923,y               ;
CODE_0FE90D:        A2 08         LDX #$08                  ;
CODE_0FE90F:        A9 2C         LDA #$2C                  ;
CODE_0FE911:        99 02 09      STA $0902,y               ;
CODE_0FE914:        C8            INY                       ;
CODE_0FE915:        C8            INY                       ;
CODE_0FE916:        C8            INY                       ;
CODE_0FE917:        C8            INY                       ;
CODE_0FE918:        CA            DEX                       ;
CODE_0FE919:        10 F4         BPL CODE_0FE90F           ;
CODE_0FE91B:        A4 02         LDY $02                   ;
CODE_0FE91D:        AD 00 00      LDA $0000                 ;
CODE_0FE920:        D0 05         BNE CODE_0FE927           ;
CODE_0FE922:        A9 2A         LDA #$2A                  ;
CODE_0FE924:        99 02 09      STA $0902,y               ;
CODE_0FE927:        AD 99 03      LDA $0399                 ;
CODE_0FE92A:        4A            LSR A                     ;
CODE_0FE92B:        4A            LSR A                     ;
CODE_0FE92C:        4A            LSR A                     ;
CODE_0FE92D:        4A            LSR A                     ;
CODE_0FE92E:        1A            INC A                     ;
CODE_0FE92F:        AA            TAX                       ;
CODE_0FE930:        0A            ASL A                     ;
CODE_0FE931:        0A            ASL A                     ;
CODE_0FE932:        18            CLC                       ;
CODE_0FE933:        65 02         ADC $02                   ;
CODE_0FE935:        A8            TAY                       ;
CODE_0FE936:        E0 09         CPX #$09                  ;
CODE_0FE938:        B0 0C         BCS CODE_0FE946           ;
CODE_0FE93A:        A9 F0         LDA #$F0                  ;
CODE_0FE93C:        99 01 09      STA $0901,y               ;
CODE_0FE93F:        C8            INY                       ;
CODE_0FE940:        C8            INY                       ;
CODE_0FE941:        C8            INY                       ;
CODE_0FE942:        C8            INY                       ;
CODE_0FE943:        E8            INX                       ;
CODE_0FE944:        80 F0         BRA CODE_0FE936           ;

CODE_0FE946:        AC 00 00      LDY $0000                 ;
CODE_0FE949:        AB            PLB                       ;
CODE_0FE94A:        6B            RTL                       ;

CODE_0FE94B:        A2 09         LDX #$09                  ;
CODE_0FE94D:        99 01 09      STA $0901,y               ;
CODE_0FE950:        48            PHA                       ;
CODE_0FE951:        AD 23 02      LDA $0223                 ;
CODE_0FE954:        85 E4         STA $E4                   ;
CODE_0FE956:        A5 82         LDA $82                   ;
CODE_0FE958:        85 E5         STA $E5                   ;
CODE_0FE95A:        C2 20         REP #$20                  ;
CODE_0FE95C:        A5 E4         LDA $E4                   ;
CODE_0FE95E:        38            SEC                       ;
CODE_0FE95F:        E5 42         SBC $42                   ;
CODE_0FE961:        85 E4         STA $E4                   ;
CODE_0FE963:        E2 20         SEP #$20                  ;
CODE_0FE965:        A9 02         LDA #$02                  ;
CODE_0FE967:        85 DD         STA $DD                   ;
CODE_0FE969:        A5 E5         LDA $E5                   ;
CODE_0FE96B:        F0 02         BEQ CODE_0FE96F           ;
CODE_0FE96D:        A9 01         LDA #$01                  ;
CODE_0FE96F:        05 DD         ORA $DD                   ;
CODE_0FE971:        99 00 0D      STA $0D00,y               ;
CODE_0FE974:        AD 36 02      LDA $0236                 ;
CODE_0FE977:        D0 0E         BNE CODE_0FE987           ;
CODE_0FE979:        B9 01 09      LDA $0901,y               ;
CODE_0FE97C:        10 09         BPL CODE_0FE987           ;
CODE_0FE97E:        C9 F0         CMP #$F0                  ;
CODE_0FE980:        B0 05         BCS CODE_0FE987           ;
CODE_0FE982:        A9 F0         LDA #$F0                  ;
CODE_0FE984:        99 01 09      STA $0901,y               ;
CODE_0FE987:        68            PLA                       ;
CODE_0FE988:        18            CLC                       ;
CODE_0FE989:        69 10         ADC #$10                  ;
CODE_0FE98B:        C8            INY                       ;
CODE_0FE98C:        C8            INY                       ;
CODE_0FE98D:        C8            INY                       ;
CODE_0FE98E:        C8            INY                       ;
CODE_0FE98F:        CA            DEX                       ;
CODE_0FE990:        D0 BB         BNE CODE_0FE94D           ;
CODE_0FE992:        A4 02         LDY $02                   ;
CODE_0FE994:        60            RTS                       ;

CODE_0FE995:        AC 53 0B      LDY $0B53                 ;
CODE_0FE998:        C2 20         REP #$20                  ;
CODE_0FE99A:        AD 70 0E      LDA $0E70                 ;
CODE_0FE99D:        38            SEC                       ;
CODE_0FE99E:        E5 42         SBC $42                   ;
CODE_0FE9A0:        8D 6B 0E      STA $0E6B                 ;
CODE_0FE9A3:        E2 20         SEP #$20                  ;
CODE_0FE9A5:        AD 6F 0E      LDA $0E6F                 ;
CODE_0FE9A8:        D0 2B         BNE CODE_0FE9D5           ;
CODE_0FE9AA:        AD 6D 0E      LDA $0E6D                 ;
CODE_0FE9AD:        99 01 08      STA $0801,y               ;
CODE_0FE9B0:        AD 6B 0E      LDA $0E6B                 ;
CODE_0FE9B3:        20 BB EA      JSR CODE_0FEABB           ;
CODE_0FE9B6:        99 00 08      STA $0800,y               ;
CODE_0FE9B9:        A9 26         LDA #$26                  ;
CODE_0FE9BB:        99 02 08      STA $0802,y               ;
CODE_0FE9BE:        A9 29         LDA #$29                  ;
CODE_0FE9C0:        99 03 08      STA $0803,y               ;
CODE_0FE9C3:        CE 6E 0E      DEC $0E6E                 ;
CODE_0FE9C6:        F0 03         BEQ CODE_0FE9CB           ;
CODE_0FE9C8:        4C 4F EA      JMP CODE_0FEA4F           ;

CODE_0FE9CB:        A9 06         LDA #$06                  ;
CODE_0FE9CD:        8D 6E 0E      STA $0E6E                 ;
CODE_0FE9D0:        EE 6F 0E      INC $0E6F                 ;
CODE_0FE9D3:        80 7A         BRA CODE_0FEA4F           ;

CODE_0FE9D5:        AD 6F 0E      LDA $0E6F                 ;
CODE_0FE9D8:        C9 06         CMP #$06                  ;
CODE_0FE9DA:        B0 73         BCS CODE_0FEA4F           ;
CODE_0FE9DC:        DA            PHX                       ;
CODE_0FE9DD:        AE 6F 0E      LDX $0E6F                 ;
CODE_0FE9E0:        BD 81 EA      LDA DATA_0FEA81,x               ;
CODE_0FE9E3:        18            CLC                       ;
CODE_0FE9E4:        6D 6B 0E      ADC $0E6B                 ;
CODE_0FE9E7:        99 00 08      STA $0800,y               ;
CODE_0FE9EA:        99 04 08      STA $0804,y               ;
CODE_0FE9ED:        20 BB EA      JSR CODE_0FEABB           ;
CODE_0FE9F0:        BD 8D EA      LDA DATA_0FEA8D,x               ;
CODE_0FE9F3:        18            CLC                       ;
CODE_0FE9F4:        6D 6D 0E      ADC $0E6D                 ;
CODE_0FE9F7:        99 01 08      STA $0801,y               ;
CODE_0FE9FA:        18            CLC                       ;
CODE_0FE9FB:        69 08         ADC #$08                  ;
CODE_0FE9FD:        99 05 08      STA $0805,y               ;
CODE_0FEA00:        BD 87 EA      LDA DATA_0FEA87,x               ;
CODE_0FEA03:        18            CLC                       ;
CODE_0FEA04:        6D 6B 0E      ADC $0E6B                 ;
CODE_0FEA07:        99 08 08      STA $0808,y               ;
CODE_0FEA0A:        99 0C 08      STA $080C,y               ;
CODE_0FEA0D:        20 BB EA      JSR CODE_0FEABB           ;
CODE_0FEA10:        BD 8D EA      LDA DATA_0FEA8D,x               ;
CODE_0FEA13:        18            CLC                       ;
CODE_0FEA14:        6D 6D 0E      ADC $0E6D                 ;
CODE_0FEA17:        99 09 08      STA $0809,y               ;
CODE_0FEA1A:        18            CLC                       ;
CODE_0FEA1B:        69 08         ADC #$08                  ;
CODE_0FEA1D:        99 0D 08      STA $080D,y               ;
CODE_0FEA20:        AE 6F 0E      LDX $0E6F                 ;
CODE_0FEA23:        CA            DEX                       ;
CODE_0FEA24:        8A            TXA                       ;
CODE_0FEA25:        0A            ASL A                     ;
CODE_0FEA26:        0A            ASL A                     ;
CODE_0FEA27:        AA            TAX                       ;
CODE_0FEA28:        A9 03         LDA #$03                  ;
CODE_0FEA2A:        85 04         STA $04                   ;
CODE_0FEA2C:        BD 93 EA      LDA DATA_0FEA93,x               ;
CODE_0FEA2F:        99 02 08      STA $0802,y               ;
CODE_0FEA32:        BD A7 EA      LDA DATA_0FEAA7,x               ;
CODE_0FEA35:        99 03 08      STA $0803,y               ;
CODE_0FEA38:        C8            INY                       ;
CODE_0FEA39:        C8            INY                       ;
CODE_0FEA3A:        C8            INY                       ;
CODE_0FEA3B:        C8            INY                       ;
CODE_0FEA3C:        E8            INX                       ;
CODE_0FEA3D:        C6 04         DEC $04                   ;
CODE_0FEA3F:        10 EB         BPL CODE_0FEA2C           ;
CODE_0FEA41:        CE 6E 0E      DEC $0E6E                 ;
CODE_0FEA44:        D0 08         BNE CODE_0FEA4E           ;
CODE_0FEA46:        A9 06         LDA #$06                  ;
CODE_0FEA48:        8D 6E 0E      STA $0E6E                 ;
CODE_0FEA4B:        EE 6F 0E      INC $0E6F                 ;
CODE_0FEA4E:        FA            PLX                       ;
CODE_0FEA4F:        4C 35 EB      JMP CODE_0FEB35           ;

CODE_0FEA52:        A5 09         LDA $09                   ;
CODE_0FEA54:        4A            LSR A                     ;
CODE_0FEA55:        B0 03         BCS CODE_0FEA5A           ;
CODE_0FEA57:        DE 48 02      DEC $0248,x               ;
CODE_0FEA5A:        BD 48 02      LDA $0248,x               ;
CODE_0FEA5D:        99 01 08      STA $0801,y               ;
CODE_0FEA60:        AD B3 03      LDA $03B3                 ;
CODE_0FEA63:        99 00 08      STA $0800,y               ;
CODE_0FEA66:        A9 02         LDA #$02                  ;
CODE_0FEA68:        99 00 0C      STA $0C00,y               ;
CODE_0FEA6B:        C9 F8         CMP #$F8                  ;
CODE_0FEA6D:        90 05         BCC CODE_0FEA74           ;
CODE_0FEA6F:        A9 03         LDA #$03                  ;
CODE_0FEA71:        99 00 0C      STA $0C00,y               ;
CODE_0FEA74:        A9 23         LDA #$23                  ;
CODE_0FEA76:        99 03 08      STA $0803,y               ;
CODE_0FEA79:        A9 2E         LDA #$2E                  ;
CODE_0FEA7B:        99 02 08      STA $0802,y               ;
CODE_0FEA7E:        4C 95 E9      JMP CODE_0FE995           ;

DATA_0FEA81:        db $00,$FC,$FB,$FA,$FA,$FA ;

DATA_0FEA87:        db $00,$04,$05,$06,$06,$06 ;

DATA_0FEA8D:        db $00,$FC,$FC,$FE,$FE,$FF ;

DATA_0FEA93:        db $27,$27,$28,$28,$36,$37,$36,$37 ;
                    db $36,$37,$36,$37,$38,$29,$38,$29 ;
                    db $38,$29,$38,$29 ;

DATA_0FEAA7:        db $29,$A9,$29,$A9,$29,$29,$69,$69 ;
                    db $29,$29,$69,$69,$29,$29,$69,$69 ;
                    db $29,$29,$69,$69 ;

CODE_0FEABB:        48            PHA                       ;
CODE_0FEABC:        C9 F8         CMP #$F8                  ;
CODE_0FEABE:        90 08         BCC CODE_0FEAC8           ;
CODE_0FEAC0:        A9 01         LDA #$01                  ;
CODE_0FEAC2:        99 00 0C      STA $0C00,y               ;
CODE_0FEAC5:        99 04 0C      STA $0C04,y               ;
CODE_0FEAC8:        68            PLA                       ;
CODE_0FEAC9:        60            RTS                       ;

CODE_0FEACA:        BD 48 02      LDA $0248,x               ;
CODE_0FEACD:        18            CLC                       ;
CODE_0FEACE:        69 04         ADC #$04                  ;
CODE_0FEAD0:        8D 6D 0E      STA $0E6D                 ;
CODE_0FEAD3:        BD 2A 02      LDA $022A,x               ;
CODE_0FEAD6:        8D 70 0E      STA $0E70                 ;
CODE_0FEAD9:        BD 89 00      LDA $0089,x               ;
CODE_0FEADC:        8D 71 0E      STA $0E71                 ;
CODE_0FEADF:        A9 06         LDA #$06                  ;
CODE_0FEAE1:        8D 6E 0E      STA $0E6E                 ;
CODE_0FEAE4:        9C 6F 0E      STZ $0E6F                 ;
CODE_0FEAE7:        6B            RTL                       ;

DATA_0FEAE8:        db $28,$2A,$2C,$2E

CODE_0FEAEC:        8B            PHB                       ;
CODE_0FEAED:        4B            PHK                       ;
CODE_0FEAEE:        AB            PLB                       ;
CODE_0FEAEF:        BC 62 0B      LDY $0B62,x               ;
CODE_0FEAF2:        B5 39         LDA $39,x                 ;
CODE_0FEAF4:        C9 02         CMP #$02                  ;
CODE_0FEAF6:        90 03         BCC CODE_0FEAFB           ;
CODE_0FEAF8:        4C 52 EA      JMP CODE_0FEA52           ;

CODE_0FEAFB:        B5 B1         LDA $B1,x                 ;
CODE_0FEAFD:        30 03         BMI CODE_0FEB02           ;
CODE_0FEAFF:        4C 95 E9      JMP CODE_0FE995           ;

CODE_0FEB02:        BD 48 02      LDA $0248,x               ;
CODE_0FEB05:        99 01 08      STA $0801,y               ;
CODE_0FEB08:        AD B3 03      LDA $03B3                 ;
CODE_0FEB0B:        38            SEC                       ;
CODE_0FEB0C:        E9 04         SBC #$04                  ;
CODE_0FEB0E:        85 E4         STA $E4                   ;
CODE_0FEB10:        C9 F0         CMP #$F0                  ;
CODE_0FEB12:        B0 04         BCS CODE_0FEB18           ;
CODE_0FEB14:        A9 02         LDA #$02                  ;
CODE_0FEB16:        80 02         BRA CODE_0FEB1A           ;

CODE_0FEB18:        A9 03         LDA #$03                  ;
CODE_0FEB1A:        99 00 0C      STA $0C00,y               ;
CODE_0FEB1D:        A5 E4         LDA $E4                   ;
CODE_0FEB1F:        99 00 08      STA $0800,y               ;
CODE_0FEB22:        A5 09         LDA $09                   ;
CODE_0FEB24:        4A            LSR A                     ;
CODE_0FEB25:        29 03         AND #$03                  ;
CODE_0FEB27:        AA            TAX                       ;
CODE_0FEB28:        BD E8 EA      LDA DATA_0FEAE8,x               ;
CODE_0FEB2B:        99 02 08      STA $0802,y               ;
CODE_0FEB2E:        A9 28         LDA #$28                  ;
CODE_0FEB30:        99 03 08      STA $0803,y               ;
CODE_0FEB33:        A6 9E         LDX $9E                   ;
CODE_0FEB35:        AB            PLB                       ;
CODE_0FEB36:        6B            RTL                       ;

DATA_0FEB37:        db $04,$00,$04,$00 ;

DATA_0FEB3B:        db $00,$04,$00,$04,$00,$08,$00,$08 ;
                    db $08,$00,$08,$00

DATA_0FEB47:        db $44,$46,$44,$46,$81,$83,$80,$82

DATA_0FEB4F:        db $2A,$2A,$AA,$6A ;

CODE_0FEB53:        8B            PHB                       ;
CODE_0FEB54:        4B            PHK                       ;
CODE_0FEB55:        AB            PLB                       ;
CODE_0FEB56:        BC 62 0B      LDY $0B62,x               ;
CODE_0FEB59:        AD 47 07      LDA $0747                 ;
CODE_0FEB5C:        D0 08         BNE CODE_0FEB66           ;
CODE_0FEB5E:        B5 39         LDA $39,x                 ;
CODE_0FEB60:        29 7F         AND #$7F                  ;
CODE_0FEB62:        C9 01         CMP #$01                  ;
CODE_0FEB64:        F0 04         BEQ CODE_0FEB6A           ;
CODE_0FEB66:        A2 00         LDX #$00                  ;
CODE_0FEB68:        F0 07         BEQ CODE_0FEB71           ;
CODE_0FEB6A:        A5 09         LDA $09                   ;
CODE_0FEB6C:        4A            LSR A                     ;
CODE_0FEB6D:        4A            LSR A                     ;
CODE_0FEB6E:        29 03         AND #$03                  ;
CODE_0FEB70:        AA            TAX                       ;
CODE_0FEB71:        AD BE 03      LDA $03BE                 ;
CODE_0FEB74:        18            CLC                       ;
CODE_0FEB75:        7D 3B EB      ADC DATA_0FEB3B,x               ;
CODE_0FEB78:        99 01 08      STA $0801,y               ;
CODE_0FEB7B:        C2 20         REP #$20                  ;
CODE_0FEB7D:        BD 37 EB      LDA DATA_0FEB37,x               ;
CODE_0FEB80:        29 FF 00      AND #$00FF                ;
CODE_0FEB83:        18            CLC                       ;
CODE_0FEB84:        6D 93 0E      ADC $0E93                 ;
CODE_0FEB87:        38            SEC                       ;
CODE_0FEB88:        E9 08 00      SBC #$0008                ;
CODE_0FEB8B:        85 E4         STA $E4                   ;
CODE_0FEB8D:        E2 20         SEP #$20                  ;
CODE_0FEB8F:        A5 E4         LDA $E4                   ;
CODE_0FEB91:        99 00 08      STA $0800,y               ;
CODE_0FEB94:        A9 02         LDA #$02                  ;
CODE_0FEB96:        99 00 0C      STA $0C00,y               ;
CODE_0FEB99:        A5 E5         LDA $E5                   ;
CODE_0FEB9B:        F0 05         BEQ CODE_0FEBA2           ;
CODE_0FEB9D:        A9 03         LDA #$03                  ;
CODE_0FEB9F:        99 00 0C      STA $0C00,y               ;
CODE_0FEBA2:        BD 47 EB      LDA DATA_0FEB47,x               ;
CODE_0FEBA5:        99 02 08      STA $0802,y               ;
CODE_0FEBA8:        BD 4F EB      LDA DATA_0FEB4F,x               ;
CODE_0FEBAB:        99 03 08      STA $0803,y               ;
CODE_0FEBAE:        AD D6 03      LDA $03D6                 ;
CODE_0FEBB1:        29 0F         AND #$0F                  ;
CODE_0FEBB3:        C9 0F         CMP #$0F                  ;
CODE_0FEBB5:        F0 07         BEQ CODE_0FEBBE           ;
CODE_0FEBB7:        AD D6 03      LDA $03D6                 ;
CODE_0FEBBA:        29 F0         AND #$F0                  ;
CODE_0FEBBC:        F0 04         BEQ CODE_0FEBC2           ;
CODE_0FEBBE:        A6 9E         LDX $9E                   ;
CODE_0FEBC0:        74 39         STZ $39,x                 ;
CODE_0FEBC2:        A6 9E         LDX $9E                   ;
CODE_0FEBC4:        AB            PLB                       ;
CODE_0FEBC5:        6B            RTL                       ;

CODE_0FEBC6:        0B            PHD                       ;
CODE_0FEBC7:        A9 0C         LDA #$0C                  ;
CODE_0FEBC9:        EB            XBA                       ;
CODE_0FEBCA:        A9 00         LDA #$00                  ;
CODE_0FEBCC:        5B            TCD                       ;
CODE_0FEBCD:        C2 10         REP #$10                  ;
CODE_0FEBCF:        A2 00 00      LDX #$0000                ;
CODE_0FEBD2:        9B            TXY                       ;
CODE_0FEBD3:        B5 0C         LDA $0C,x                 ;
CODE_0FEBD5:        4A            LSR A                     ;
CODE_0FEBD6:        6A            ROR A                     ;
CODE_0FEBD7:        6A            ROR A                     ;
CODE_0FEBD8:        85 01         STA $01                   ;
CODE_0FEBDA:        B5 08         LDA $08,x                 ;
CODE_0FEBDC:        0A            ASL A                     ;
CODE_0FEBDD:        0A            ASL A                     ;
CODE_0FEBDE:        0A            ASL A                     ;
CODE_0FEBDF:        0A            ASL A                     ;
CODE_0FEBE0:        04 01         TSB $01                   ;
CODE_0FEBE2:        B5 04         LDA $04,x                 ;
CODE_0FEBE4:        0A            ASL A                     ;
CODE_0FEBE5:        0A            ASL A                     ;
CODE_0FEBE6:        04 01         TSB $01                   ;
CODE_0FEBE8:        B5 00         LDA $00,x                 ;
CODE_0FEBEA:        05 01         ORA $01                   ;
CODE_0FEBEC:        99 00 0A      STA $0A00,y               ;
CODE_0FEBEF:        C8            INY                       ;
CODE_0FEBF0:        B5 1C         LDA $1C,x                 ;
CODE_0FEBF2:        4A            LSR A                     ;
CODE_0FEBF3:        6A            ROR A                     ;
CODE_0FEBF4:        6A            ROR A                     ;
CODE_0FEBF5:        85 01         STA $01                   ;
CODE_0FEBF7:        B5 18         LDA $18,x                 ;
CODE_0FEBF9:        0A            ASL A                     ;
CODE_0FEBFA:        0A            ASL A                     ;
CODE_0FEBFB:        0A            ASL A                     ;
CODE_0FEBFC:        0A            ASL A                     ;
CODE_0FEBFD:        04 01         TSB $01                   ;
CODE_0FEBFF:        B5 14         LDA $14,x                 ;
CODE_0FEC01:        0A            ASL A                     ;
CODE_0FEC02:        0A            ASL A                     ;
CODE_0FEC03:        04 01         TSB $01                   ;
CODE_0FEC05:        B5 10         LDA $10,x                 ;
CODE_0FEC07:        05 01         ORA $01                   ;
CODE_0FEC09:        99 00 0A      STA $0A00,y               ;
CODE_0FEC0C:        C8            INY                       ;
CODE_0FEC0D:        C2 20         REP #$20                  ;
CODE_0FEC0F:        8A            TXA                       ;
CODE_0FEC10:        18            CLC                       ;
CODE_0FEC11:        69 20 00      ADC #$0020                ;
CODE_0FEC14:        AA            TAX                       ;
CODE_0FEC15:        E2 20         SEP #$20                  ;
CODE_0FEC17:        E0 00 02      CPX #$0200                ;
CODE_0FEC1A:        90 B7         BCC CODE_0FEBD3           ;
CODE_0FEC1C:        E2 10         SEP #$10                  ;
CODE_0FEC1E:        2B            PLD                       ;
CODE_0FEC1F:        6B            RTL                       ;

CODE_0FEC20:        AD F7 02      LDA $02F7                 ;
CODE_0FEC23:        D0 2F         BNE CODE_0FEC54           ;
CODE_0FEC25:        A4 BB         LDY $BB                   ;
CODE_0FEC27:        88            DEY                       ;
CODE_0FEC28:        D0 2A         BNE CODE_0FEC54           ;
CODE_0FEC2A:        AD D3 03      LDA $03D3                 ;
CODE_0FEC2D:        29 08         AND #$08                  ;
CODE_0FEC2F:        D0 23         BNE CODE_0FEC54           ;
CODE_0FEC31:        BC 53 0B      LDY $0B53,x               ;
CODE_0FEC34:        AD B0 03      LDA $03B0                 ;
CODE_0FEC37:        99 00 08      STA $0800,y               ;
CODE_0FEC3A:        AD BB 03      LDA $03BB                 ;
CODE_0FEC3D:        99 01 08      STA $0801,y               ;
CODE_0FEC40:        A9 9F         LDA #$9F                  ;
CODE_0FEC42:        99 02 08      STA $0802,y               ;
CODE_0FEC45:        A5 0F         LDA $0F                   ;
CODE_0FEC47:        C9 07         CMP #$07                  ;
CODE_0FEC49:        D0 04         BNE CODE_0FEC4F           ;
CODE_0FEC4B:        A9 0A         LDA #$0A                  ;
CODE_0FEC4D:        80 02         BRA CODE_0FEC51           ;

CODE_0FEC4F:        A9 2A         LDA #$2A                  ;
CODE_0FEC51:        99 03 08      STA $0803,y               ;
CODE_0FEC54:        6B            RTL                       ;

DATA_0FEC55:        db $DF,$1B ;

DATA_0FEC57:        db $7F,$02 ;

DATA_0FEC59:        db $39,$01,$00,$00,$FF,$4B,$5F,$1F ;
                    db $9C,$0D,$00,$00,$FF,$7F,$FF,$4B ;
                    db $FF,$19,$00,$00 ;

DATA_0FEC6D:        db $DA,$1A ;

DATA_0FEC6F:        db $F3,$0D ;

DATA_0FEC71:        db $0D,$05,$00,$00,$5E,$2B,$77,$1E ;
                    db $70,$11,$00,$00,$DF,$3B,$FB,$2E ;
                    db $D3,$1D,$00,$00 ;

DATA_0FEC85:        db $7F,$47,$98,$32,$B1,$15,$00,$00 ;
                    db $1B,$67,$34,$4A,$4D,$2D,$00,$00 ;
                    db $97,$7E,$B0,$6D,$EA,$54,$00,$00 ;

DATA_0FEC9D:        db $5F,$03 ;

DATA_0FEC9F:        db $59,$02 ;

DATA_0FECA1:        db $00,$38,$00,$00,$FF,$03,$BC,$02 ;
                    db $16,$00,$00,$00,$FF,$7F,$FF,$47 ;
                    db $DF,$00,$00,$00 ;

DATA_0FECB5:        db $C5,$2C,$89,$3D,$CD,$3D,$51,$4E ;
                    db $F8,$2E,$74,$1E,$41,$1C,$A3,$28 ;
                    db $A4,$28,$48,$35,$8B,$3D,$0F,$4A ;
                    db $D6,$32,$31,$1E,$41,$1C,$A3,$28 ;
                    db $62,$20,$C6,$2C,$27,$39,$8B,$41 ;
                    db $50,$32,$AB,$21,$41,$1C,$A3,$28 ;
                    db $83,$24,$07,$31,$49,$39,$CD,$45 ;
                    db $93,$32,$EE,$1D,$41,$1C,$A3,$28 ;
                    db $62,$20,$C6,$2C,$27,$39,$8B,$41 ;
                    db $50,$32,$AB,$21,$41,$1C,$A3,$28 ;
                    db $83,$24,$07,$31,$49,$39,$CD,$45 ;
                    db $93,$32,$EE,$1D,$41,$1C,$A3,$28 ;
                    db $A4,$28,$48,$35,$8B,$3D,$0F,$4A ;
                    db $D6,$32,$31,$1E,$41,$1C,$A3,$28 ;
                    db $C5,$2C,$89,$3D,$CD,$3D,$51,$4E ;
                    db $F8,$2E,$74,$1E,$41,$1C,$A3,$28 ;

CODE_0FED35:        AD 00 02      LDA $0200                 ;
CODE_0FED38:        F0 02         BEQ CODE_0FED3C           ;
CODE_0FED3A:        AB            PLB                       ;
CODE_0FED3B:        6B            RTL                       ;

CODE_0FED3C:        EE 74 0E      INC $0E74                 ;
CODE_0FED3F:        AD 74 0E      LDA $0E74                 ;
CODE_0FED42:        29 07         AND #$07                  ;
CODE_0FED44:        F0 03         BEQ CODE_0FED49           ;
CODE_0FED46:        4C BC ED      JMP CODE_0FEDBC           ;

CODE_0FED49:        EE 75 0E      INC $0E75                 ;
CODE_0FED4C:        AD 75 0E      LDA $0E75                 ;
CODE_0FED4F:        C9 03         CMP #$03                  ;
CODE_0FED51:        D0 05         BNE CODE_0FED58           ;
CODE_0FED53:        9C 75 0E      STZ $0E75                 ;
CODE_0FED56:        A9 00         LDA #$00                  ;
CODE_0FED58:        0A            ASL A                     ;
CODE_0FED59:        0A            ASL A                     ;
CODE_0FED5A:        0A            ASL A                     ;
CODE_0FED5B:        AA            TAX                       ;
CODE_0FED5C:        C2 20         REP #$20                  ;
CODE_0FED5E:        BD 55 EC      LDA DATA_0FEC55,x               ;
CODE_0FED61:        8D 26 10      STA $1026                 ;
CODE_0FED64:        BD 9D EC      LDA DATA_0FEC9D,x               ;
CODE_0FED67:        8D 0A 10      STA $100A                 ;
CODE_0FED6A:        BD 6D EC      LDA DATA_0FEC6D,x               ;
CODE_0FED6D:        8D 2C 10      STA $102C                 ;
CODE_0FED70:        BD 57 EC      LDA DATA_0FEC57,x               ;
CODE_0FED73:        8D 28 10      STA $1028                 ;
CODE_0FED76:        BD 9F EC      LDA DATA_0FEC9F,x               ;
CODE_0FED79:        8D 0C 10      STA $100C                 ;
CODE_0FED7C:        BD 6F EC      LDA DATA_0FEC6F,x               ;
CODE_0FED7F:        8D 2E 10      STA $102E                 ;
CODE_0FED82:        BD 59 EC      LDA DATA_0FEC59,x               ;
CODE_0FED85:        8D 2A 10      STA $102A                 ;
CODE_0FED88:        BD A1 EC      LDA DATA_0FECA1,x               ;
CODE_0FED8B:        8D 0E 10      STA $100E                 ;
CODE_0FED8E:        BD 71 EC      LDA DATA_0FEC71,x               ;
CODE_0FED91:        8D 30 10      STA $1030                 ;
CODE_0FED94:        E2 20         SEP #$20                  ;
CODE_0FED96:        AD 26 0F      LDA $0F26                 ;
CODE_0FED99:        F0 1C         BEQ CODE_0FEDB7           ;
CODE_0FED9B:        3A            DEC A                     ;
CODE_0FED9C:        0A            ASL A                     ;
CODE_0FED9D:        AA            TAX                       ;
CODE_0FED9E:        BD AF ED      LDA PNTR_0FEDAF,x               ;
CODE_0FEDA1:        85 E4         STA $E4                   ;
CODE_0FEDA3:        BD B0 ED      LDA PNTR_0FEDAF+1,x               ;
CODE_0FEDA6:        85 E5         STA $E5                   ;
CODE_0FEDA8:        A9 05         LDA #$05                  ;
CODE_0FEDAA:        85 E6         STA $E6                   ;
CODE_0FEDAC:        6C E4 00      JMP ($00E4)               ;

PNTR_0FEDAF:        dw CODE_0FEDF3
                    dw CODE_0FEDB7
                    dw CODE_0FEE20
                    dw CODE_0FEF02

CODE_0FEDB7:        A9 01         LDA #$01                  ;
CODE_0FEDB9:        8D 00 12      STA $1200                 ;
CODE_0FEDBC:        AD 74 0E      LDA $0E74                 ;
CODE_0FEDBF:        29 03         AND #$03                  ;
CODE_0FEDC1:        D0 2E         BNE CODE_0FEDF1           ;
CODE_0FEDC3:        EE 76 0E      INC $0E76                 ;
CODE_0FEDC6:        AD 76 0E      LDA $0E76                 ;
CODE_0FEDC9:        C9 03         CMP #$03                  ;
CODE_0FEDCB:        D0 05         BNE CODE_0FEDD2           ;
CODE_0FEDCD:        9C 76 0E      STZ $0E76                 ;
CODE_0FEDD0:        A9 00         LDA #$00                  ;
CODE_0FEDD2:        0A            ASL A                     ;
CODE_0FEDD3:        0A            ASL A                     ;
CODE_0FEDD4:        0A            ASL A                     ;
CODE_0FEDD5:        AA            TAX                       ;
CODE_0FEDD6:        C2 20         REP #$20                  ;
CODE_0FEDD8:        BD 85 EC      LDA DATA_0FEC85,x               ;
CODE_0FEDDB:        8D 32 10      STA $1032                 ;
CODE_0FEDDE:        BD 87 EC      LDA DATA_0FEC85+2,x               ;
CODE_0FEDE1:        8D 34 10      STA $1034                 ;
CODE_0FEDE4:        BD 89 EC      LDA DATA_0FEC85+4,x               ;
CODE_0FEDE7:        8D 36 10      STA $1036                 ;
CODE_0FEDEA:        E2 20         SEP #$20                  ;
CODE_0FEDEC:        A9 01         LDA #$01                  ;
CODE_0FEDEE:        8D 00 12      STA $1200                 ;
CODE_0FEDF1:        AB            PLB                       ;
CODE_0FEDF2:        6B            RTL                       ;

CODE_0FEDF3:        AD 74 0E      LDA $0E74                 ;
CODE_0FEDF6:        29 38         AND #$38                  ;
CODE_0FEDF8:        4A            LSR A                     ;
CODE_0FEDF9:        4A            LSR A                     ;
CODE_0FEDFA:        AA            TAX                       ;
CODE_0FEDFB:        C2 20         REP #$20                  ;
CODE_0FEDFD:        BD 52 EE      LDA DATA_0FEE52,x               ;
CODE_0FEE00:        8D E6 10      STA $10E6                 ;
CODE_0FEE03:        BD 62 EE      LDA DATA_0FEE62,x               ;
CODE_0FEE06:        8D E8 10      STA $10E8                 ;
CODE_0FEE09:        BD 72 EE      LDA DATA_0FEE72,x               ;
CODE_0FEE0C:        8D FA 10      STA $10FA                 ;
CODE_0FEE0F:        BD 82 EE      LDA DATA_0FEE82,x               ;
CODE_0FEE12:        8D FC 10      STA $10FC                 ;
CODE_0FEE15:        BD 92 EE      LDA DATA_0FEE92,x               ;
CODE_0FEE18:        8D FE 10      STA $10FE                 ;
CODE_0FEE1B:        E2 20         SEP #$20                  ;
CODE_0FEE1D:        4C B7 ED      JMP CODE_0FEDB7           ;

CODE_0FEE20:        AD 74 0E      LDA $0E74                 ;
CODE_0FEE23:        29 38         AND #$38                  ;
CODE_0FEE25:        0A            ASL A                     ;
CODE_0FEE26:        AA            TAX                       ;
CODE_0FEE27:        C2 20         REP #$20                  ;
CODE_0FEE29:        BD B5 EC      LDA DATA_0FECB5,x               ;
CODE_0FEE2C:        8D E6 10      STA $10E6                 ;
CODE_0FEE2F:        BD B7 EC      LDA DATA_0FECB5+2,x               ;
CODE_0FEE32:        8D E8 10      STA $10E8                 ;
CODE_0FEE35:        BD B9 EC      LDA DATA_0FECB5+4,x               ;
CODE_0FEE38:        8D EA 10      STA $10EA                 ;
CODE_0FEE3B:        BD BB EC      LDA DATA_0FECB5+6,x               ;
CODE_0FEE3E:        8D EC 10      STA $10EC                 ;
CODE_0FEE41:        BD BD EC      LDA DATA_0FECB5+8,x               ;
CODE_0FEE44:        8D EE 10      STA $10EE                 ;
CODE_0FEE47:        BD BF EC      LDA DATA_0FECB5+10,x               ;
CODE_0FEE4A:        8D F0 10      STA $10F0                 ;
CODE_0FEE4D:        E2 20         SEP #$20                  ;
CODE_0FEE4F:        4C B7 ED      JMP CODE_0FEDB7           ;

DATA_0FEE52:        db $BF,$7F,$38,$7F,$B4,$76,$30,$72 ;
                    db $BF,$7F,$38,$7F,$B4,$76,$30,$72 ;

DATA_0FEE62:        db $38,$7F,$B4,$76,$30,$72,$BF,$7F ;
                    db $38,$7F,$B4,$76,$30,$72,$BF,$7F ;

DATA_0FEE72:        db $B4,$76,$30,$72,$BF,$7F,$38,$7F ;
                    db $B4,$76,$30,$72,$BF,$7F,$38,$7F ;

DATA_0FEE82:        db $C9,$69,$87,$61,$45,$59,$03,$51 ;
                    db $C9,$69,$C9,$69,$C9,$69,$46,$59 ;

DATA_0FEE92:        db $30,$72,$BF,$7F,$38,$7F,$B4,$76 ;
                    db $30,$72,$BF,$7F,$38,$7F,$B4,$76 ;

DATA_0FEEA2:        db $63,$0C,$E5,$1C,$27,$29,$06,$25 ;
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21 ;
                    db $63,$0C,$29,$19,$2C,$21,$2B,$1D ;
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21 ;
                    db $63,$0C,$E5,$1C,$27,$29,$06,$25 ;
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21 ;
                    db $63,$0C,$29,$19,$2C,$21,$2B,$1D ;
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21 ;

DATA_0FEEE2:        db $77,$00,$7A,$01,$98,$00,$9B,$01 ;
                    db $B9,$00,$BC,$01,$FB,$00,$FE,$01 ;
                    db $DA,$00,$DD,$01,$B9,$00,$BC,$01 ;
                    db $98,$00,$9B,$01,$77,$00,$7A,$01 ;

CODE_0FEF02:        AD 74 0E      LDA $0E74                 ;
CODE_0FEF05:        29 38         AND #$38                  ;
CODE_0FEF07:        AA            TAX                       ;
CODE_0FEF08:        4A            LSR A                     ;
CODE_0FEF09:        A8            TAY                       ;
CODE_0FEF0A:        C2 20         REP #$20                  ;
CODE_0FEF0C:        BD A2 EE      LDA DATA_0FEEA2,x               ;
CODE_0FEF0F:        8D E2 10      STA $10E2                 ;
CODE_0FEF12:        BD A4 EE      LDA DATA_0FEEA2+2,x               ;
CODE_0FEF15:        8D E4 10      STA $10E4                 ;
CODE_0FEF18:        BD A6 EE      LDA DATA_0FEEA2+4,x               ;
CODE_0FEF1B:        8D E6 10      STA $10E6                 ;
CODE_0FEF1E:        BD A8 EE      LDA DATA_0FEEA2+6,x               ;
CODE_0FEF21:        8D E8 10      STA $10E8                 ;
CODE_0FEF24:        B9 E2 EE      LDA DATA_0FEEE2,y               ;
CODE_0FEF27:        8D FC 10      STA $10FC                 ;
CODE_0FEF2A:        B9 E4 EE      LDA DATA_0FEEE2+2,y               ;
CODE_0FEF2D:        8D FE 10      STA $10FE                 ;
CODE_0FEF30:        E2 20         SEP #$20                  ;
CODE_0FEF32:        A5 1C         LDA $1C                   ;
CODE_0FEF34:        C9 35         CMP #$35                  ;
CODE_0FEF36:        F0 74         BEQ CODE_0FEFAC           ;
CODE_0FEF38:        AD B7 0E      LDA $0EB7                 ;
CODE_0FEF3B:        D0 24         BNE CODE_0FEF61           ;
CODE_0FEF3D:        AD B8 07      LDA $07B8                 ;
CODE_0FEF40:        29 0F         AND #$0F                  ;
CODE_0FEF42:        D0 68         BNE CODE_0FEFAC           ;
CODE_0FEF44:        A5 0F         LDA $0F                   ;
CODE_0FEF46:        C9 08         CMP #$08                  ;
CODE_0FEF48:        D0 05         BNE CODE_0FEF4F           ;
CODE_0FEF4A:        A9 18         LDA #$18                  ;
CODE_0FEF4C:        8D 03 16      STA $1603                 ;
CODE_0FEF4F:        A9 11         LDA #$11                  ;
CODE_0FEF51:        8D B8 0E      STA $0EB8                 ;
CODE_0FEF54:        A9 1F         LDA #$1F                  ;
CODE_0FEF56:        8D B9 0E      STA $0EB9                 ;
CODE_0FEF59:        8D BA 0E      STA $0EBA                 ;
CODE_0FEF5C:        EE B7 0E      INC $0EB7                 ;
CODE_0FEF5F:        80 28         BRA CODE_0FEF89           ;

CODE_0FEF61:        CE B8 0E      DEC $0EB8                 ;
CODE_0FEF64:        CE B9 0E      DEC $0EB9                 ;
CODE_0FEF67:        CE B9 0E      DEC $0EB9                 ;
CODE_0FEF6A:        CE BA 0E      DEC $0EBA                 ;
CODE_0FEF6D:        CE BA 0E      DEC $0EBA                 ;
CODE_0FEF70:        CE B8 0E      DEC $0EB8                 ;
CODE_0FEF73:        CE B9 0E      DEC $0EB9                 ;
CODE_0FEF76:        CE B9 0E      DEC $0EB9                 ;
CODE_0FEF79:        CE BA 0E      DEC $0EBA                 ;
CODE_0FEF7C:        CE BA 0E      DEC $0EBA                 ;
CODE_0FEF7F:        AD B8 0E      LDA $0EB8                 ;
CODE_0FEF82:        C9 03         CMP #$03                  ;
CODE_0FEF84:        D0 03         BNE CODE_0FEF89           ;
CODE_0FEF86:        9C B7 0E      STZ $0EB7                 ;
CODE_0FEF89:        C2 20         REP #$20                  ;
CODE_0FEF8B:        AD B8 0E      LDA $0EB8                 ;
CODE_0FEF8E:        29 FF 00      AND #$00FF                ;
CODE_0FEF91:        EB            XBA                       ;
CODE_0FEF92:        0A            ASL A                     ;
CODE_0FEF93:        0A            ASL A                     ;
CODE_0FEF94:        85 E4         STA $E4                   ;
CODE_0FEF96:        AD B9 0E      LDA $0EB9                 ;
CODE_0FEF99:        29 FF 00      AND #$00FF                ;
CODE_0FEF9C:        EB            XBA                       ;
CODE_0FEF9D:        4A            LSR A                     ;
CODE_0FEF9E:        4A            LSR A                     ;
CODE_0FEF9F:        4A            LSR A                     ;
CODE_0FEFA0:        05 E4         ORA $E4                   ;
CODE_0FEFA2:        0D BA 0E      ORA $0EBA                 ;
CODE_0FEFA5:        85 E4         STA $E4                   ;
CODE_0FEFA7:        8D E2 10      STA $10E2                 ;
CODE_0FEFAA:        E2 20         SEP #$20                  ;
CODE_0FEFAC:        4C B7 ED      JMP CODE_0FEDB7           ;

CODE_0FEFAF:        9C 8D 02      STZ $028D                 ;
CODE_0FEFB2:        A5 09         LDA $09                   ;
CODE_0FEFB4:        29 07         AND #$07                  ;
CODE_0FEFB6:        D0 38         BNE CODE_0FEFF0           ;
CODE_0FEFB8:        A5 09         LDA $09                   ;
CODE_0FEFBA:        29 38         AND #$38                  ;
CODE_0FEFBC:        4A            LSR A                     ;
CODE_0FEFBD:        4A            LSR A                     ;
CODE_0FEFBE:        4A            LSR A                     ;
CODE_0FEFBF:        85 04         STA $04                   ;
CODE_0FEFC1:        A9 10         LDA #$10                  ;
CODE_0FEFC3:        8D 87 02      STA $0287                 ;
CODE_0FEFC6:        C2 20         REP #$20                  ;
CODE_0FEFC8:        A9 00 80      LDA #$8000                ;
CODE_0FEFCB:        A4 04         LDY $04                   ;
CODE_0FEFCD:        88            DEY                       ;
CODE_0FEFCE:        30 06         BMI CODE_0FEFD6           ;
CODE_0FEFD0:        18            CLC                       ;
CODE_0FEFD1:        69 00 08      ADC #$0800                ;
CODE_0FEFD4:        80 F7         BRA CODE_0FEFCD           ;

CODE_0FEFD6:        18            CLC                       ;
CODE_0FEFD7:        69 00 40      ADC #$4000                ;
CODE_0FEFDA:        8D 85 02      STA $0285                 ;
CODE_0FEFDD:        A9 00 1C      LDA #$1C00                ;
CODE_0FEFE0:        8D 8A 02      STA $028A                 ;
CODE_0FEFE3:        A9 00 06      LDA #$0600                ;
CODE_0FEFE6:        8D 88 02      STA $0288                 ;
CODE_0FEFE9:        E2 20         SEP #$20                  ;
CODE_0FEFEB:        EE 8D 02      INC $028D                 ;
CODE_0FEFEE:        80 34         BRA CODE_0FF024           ;

CODE_0FEFF0:        A5 09         LDA $09                   ;
CODE_0FEFF2:        18            CLC                       ;
CODE_0FEFF3:        69 04         ADC #$04                  ;
CODE_0FEFF5:        8D 85 02      STA $0285                 ;
CODE_0FEFF8:        29 07         AND #$07                  ;
CODE_0FEFFA:        D0 28         BNE CODE_0FF024           ;
CODE_0FEFFC:        A9 0C         LDA #$0C                  ;
CODE_0FEFFE:        8D 87 02      STA $0287                 ;
CODE_0FF001:        C2 20         REP #$20                  ;
CODE_0FF003:        AD 85 02      LDA $0285                 ;
CODE_0FF006:        29 38 00      AND #$0038                ;
CODE_0FF009:        0A            ASL A                     ;
CODE_0FF00A:        0A            ASL A                     ;
CODE_0FF00B:        0A            ASL A                     ;
CODE_0FF00C:        18            CLC                       ;
CODE_0FF00D:        69 00 FB      ADC #$FB00                ;
CODE_0FF010:        8D 85 02      STA $0285                 ;
CODE_0FF013:        A9 60 51      LDA #$5160                ;
CODE_0FF016:        8D 8A 02      STA $028A                 ;
CODE_0FF019:        A9 40 00      LDA #$0040                ;
CODE_0FF01C:        8D 88 02      STA $0288                 ;
CODE_0FF01F:        E2 20         SEP #$20                  ;
CODE_0FF021:        EE 8D 02      INC $028D                 ;
CODE_0FF024:        6B            RTL                       ;

DATA_0FF025:        db $01,$18

CODE_0FF027:        E2 30         SEP #$30                  ;
CODE_0FF029:        8B            PHB                       ;
CODE_0FF02A:        4B            PHK                       ;
CODE_0FF02B:        AB            PLB                       ;
CODE_0FF02C:        A5 99         LDA $99                   ;
CODE_0FF02E:        C9 01         CMP #$01                  ;
CODE_0FF030:        D0 0B         BNE CODE_0FF03D           ;
CODE_0FF032:        8D F8 02      STA $02F8                 ;
CODE_0FF035:        AE 53 07      LDX $0753                 ;
CODE_0FF038:        BD 25 F0      LDA DATA_0FF025,x               ;
CODE_0FF03B:        85 99         STA $99                   ;
CODE_0FF03D:        20 AF F1      JSR CODE_0FF1AF           ;
CODE_0FF040:        A5 99         LDA $99                   ;
CODE_0FF042:        0A            ASL A                     ;
CODE_0FF043:        AA            TAX                       ;
CODE_0FF044:        BD 51 F0      LDA PNTR_0FF051,x               ;
CODE_0FF047:        85 00         STA $00                   ;
CODE_0FF049:        BD 52 F0      LDA PNTR_0FF051+1,x               ;
CODE_0FF04C:        85 01         STA $01                   ;
CODE_0FF04E:        6C 00 00      JMP ($0000)               ;

PNTR_0FF051:        dw CODE_0FF0A0
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

CODE_0FF091:        AD 5F 07      LDA $075F                 ;
CODE_0FF094:        C9 08         CMP #$08                  ;
CODE_0FF096:        D0 08         BNE CODE_0FF0A0           ;
CODE_0FF098:        A9 11         LDA #$11                  ;
CODE_0FF09A:        8D 99 00      STA $0099                 ;
CODE_0FF09D:        20 AF F1      JSR CODE_0FF1AF           ;
CODE_0FF0A0:        64 99         STZ $99                   ;
CODE_0FF0A2:        AB            PLB                       ;
CODE_0FF0A3:        9C 8D 02      STZ $028D                 ;
CODE_0FF0A6:        A9 01         LDA #$01                  ;
CODE_0FF0A8:        8D 8C 02      STA $028C                 ;
CODE_0FF0AB:        6B            RTL                       ;

CODE_0FF0AC:        A5 DB         LDA $DB                   ;
CODE_0FF0AE:        C9 13         CMP #$13                  ;
CODE_0FF0B0:        F0 1B         BEQ CODE_0FF0CD           ;
CODE_0FF0B2:        C9 19         CMP #$19                  ;
CODE_0FF0B4:        F0 17         BEQ CODE_0FF0CD           ;
CODE_0FF0B6:        C9 2F         CMP #$2F                  ;
CODE_0FF0B8:        F0 13         BEQ CODE_0FF0CD           ;
CODE_0FF0BA:        A9 17         LDA #$17                  ;
CODE_0FF0BC:        20 AF F1      JSR CODE_0FF1AF           ;
CODE_0FF0BF:        80 DF         BRA CODE_0FF0A0           ;

CODE_0FF0C1:        A9 11         LDA #$11                  ;
CODE_0FF0C3:        20 AF F1      JSR CODE_0FF1AF           ;
CODE_0FF0C6:        80 D8         BRA CODE_0FF0A0           ;

CODE_0FF0C8:        A9 16         LDA #$16                  ;
CODE_0FF0CA:        20 AF F1      JSR CODE_0FF1AF           ;
CODE_0FF0CD:        A9 12         LDA #$12                  ;
CODE_0FF0CF:        20 AF F1      JSR CODE_0FF1AF           ;
CODE_0FF0D2:        80 CC         BRA CODE_0FF0A0           ;

CODE_0FF0D4:        A9 13         LDA #$13                  ;
CODE_0FF0D6:        20 AF F1      JSR CODE_0FF1AF           ;
CODE_0FF0D9:        A9 14         LDA #$14                  ;
CODE_0FF0DB:        20 AF F1      JSR CODE_0FF1AF           ;
CODE_0FF0DE:        80 C0         BRA CODE_0FF0A0           ;

CODE_0FF0E0:        A9 15         LDA #$15                  ;
CODE_0FF0E2:        20 AF F1      JSR CODE_0FF1AF           ;
CODE_0FF0E5:        80 B9         BRA CODE_0FF0A0           ;

DATA_0FF0E7:        db $00,$00,$08,$00,$10,$00,$09,$00 ;
                    db $09,$00,$08,$00,$09,$00,$10,$00 ;
                    db $08,$00,$10,$00,$08,$00,$09,$00 ;
                    db $08,$00,$08,$00,$08,$00,$09,$00 ;
                    db $08,$00,$09,$00,$08,$00,$09,$00 ;
                    db $09,$00,$09,$00,$09,$00,$09,$00 ;
                    db $08,$00 ;

DATA_0FF119:        db $00,$00,$00,$E0,$00,$A0,$00,$80 ;
                    db $00,$A0,$00,$98,$00,$A0,$00,$A0 ;
                    db $00,$80,$00,$A0,$00,$D0,$00,$E0 ;
                    db $00,$A0,$00,$90,$00,$B0,$00,$90 ;
                    db $00,$B8,$00,$D0,$00,$C0,$00,$E8 ;
                    db $00,$F0,$00,$F8,$00,$E0,$00,$C0 ;
                    db $00,$F0 ;

DATA_0FF14B:        db $00,$00,$00,$20,$00,$20,$00,$20 ;
                    db $00,$20,$00,$2C,$00,$20,$00,$20 ;
                    db $00,$20,$00,$20,$00,$34,$00,$2C ;
                    db $00,$28,$00,$2C,$00,$2C,$00,$20 ;
                    db $00,$2C,$00,$30,$00,$30,$00,$20 ;
                    db $00,$28,$00,$2C,$00,$2C,$00,$30 ;
                    db $00,$20 ;

DATA_0FF17D:        db $00,$10,$00,$10,$00,$20,$00,$10 ;
                    db $00,$20,$00,$08,$00,$20,$00,$10 ;
                    db $00,$10,$00,$20,$00,$20,$00,$08 ;
                    db $00,$10,$00,$08,$00,$08,$00,$10 ;
                    db $00,$10,$00,$10,$00,$10,$00,$08 ;
                    db $00,$08,$00,$08,$00,$08,$00,$10 ;
                    db $00,$10 ;

CODE_0FF1AF:        0A            ASL A                     ;
CODE_0FF1B0:        AA            TAX                       ;
CODE_0FF1B1:        BD E7 F0      LDA DATA_0FF0E7,x               ;
CODE_0FF1B4:        8D 87 02      STA $0287                 ;
CODE_0FF1B7:        C2 20         REP #$20                  ;
CODE_0FF1B9:        BD 19 F1      LDA DATA_0FF119,x               ;
CODE_0FF1BC:        8D 85 02      STA $0285                 ;
CODE_0FF1BF:        BD 4B F1      LDA DATA_0FF14B,x               ;
CODE_0FF1C2:        8D 8A 02      STA $028A                 ;
CODE_0FF1C5:        BD 7D F1      LDA DATA_0FF17D,x               ;
CODE_0FF1C8:        8D 88 02      STA $0288                 ;
CODE_0FF1CB:        E2 20         SEP #$20                  ;
CODE_0FF1CD:        20 D1 F1      JSR CODE_0FF1D1           ;
CODE_0FF1D0:        60            RTS                       ;

CODE_0FF1D1:        A9 80         LDA #$80                  ;
CODE_0FF1D3:        8D 15 21      STA $2115                 ;
CODE_0FF1D6:        C2 20         REP #$20                  ;
CODE_0FF1D8:        AD 8A 02      LDA $028A                 ;
CODE_0FF1DB:        8D 16 21      STA $2116                 ;
CODE_0FF1DE:        A9 01 18      LDA #$1801                ;
CODE_0FF1E1:        8D 00 43      STA $4300                 ;
CODE_0FF1E4:        AD 85 02      LDA $0285                 ;
CODE_0FF1E7:        8D 02 43      STA $4302                 ;
CODE_0FF1EA:        AE 87 02      LDX $0287                 ;
CODE_0FF1ED:        8E 04 43      STX $4304                 ;
CODE_0FF1F0:        AD 88 02      LDA $0288                 ;
CODE_0FF1F3:        8D 05 43      STA $4305                 ;
CODE_0FF1F6:        A2 01         LDX #$01                  ;
CODE_0FF1F8:        8E 0B 42      STX $420B                 ;
CODE_0FF1FB:        E2 20         SEP #$20                  ;
CODE_0FF1FD:        60            RTS                       ;

CODE_0FF1FE:        AD 04 0F      LDA $0F04                 ;
CODE_0FF201:        F0 2F         BEQ CODE_0FF232           ;
CODE_0FF203:        A5 5C         LDA $5C                   ;
CODE_0FF205:        C9 01         CMP #$01                  ;
CODE_0FF207:        D0 29         BNE CODE_0FF232           ;
CODE_0FF209:        A0 01         LDY #$01                  ;
CODE_0FF20B:        AD 09 00      LDA $0009                 ;
CODE_0FF20E:        0A            ASL A                     ;
CODE_0FF20F:        B0 02         BCS CODE_0FF213           ;
CODE_0FF211:        A0 03         LDY #$03                  ;
CODE_0FF213:        8C 00 00      STY $0000                 ;
CODE_0FF216:        AD 09 00      LDA $0009                 ;
CODE_0FF219:        2D 00 00      AND $0000                 ;
CODE_0FF21C:        D0 14         BNE CODE_0FF232           ;
CODE_0FF21E:        AD 19 02      LDA $0219                 ;
CODE_0FF221:        18            CLC                       ;
CODE_0FF222:        69 01         ADC #$01                  ;
CODE_0FF224:        8D 19 02      STA $0219                 ;
CODE_0FF227:        AD 78 00      LDA $0078                 ;
CODE_0FF22A:        69 00         ADC #$00                  ;
CODE_0FF22C:        8D 78 00      STA $0078                 ;
CODE_0FF22F:        EE FF 06      INC $06FF                 ;
CODE_0FF232:        6B            RTL                       ;

DATA_0FF233:        db $30,$70,$B8,$50,$98,$30,$70,$B8 ;
                    db $50,$98,$30,$70 ;

DATA_0FF23F:        db $30,$30,$30,$60,$60,$A0,$A0,$A0 ;
                    db $D0,$D0,$D0,$60 ;

DATA_0FF24B:        db $91,$91,$91,$91,$92,$92,$91,$91 ;
                    db $91,$92,$91,$92 ;

CODE_0FF257:        8B            PHB                       ;
CODE_0FF258:        4B            PHK                       ;
CODE_0FF259:        AB            PLB                       ;
CODE_0FF25A:        AD 67 0E      LDA $0E67                 ;
CODE_0FF25D:        D0 43         BNE CODE_0FF2A2           ;
CODE_0FF25F:        AD 04 0F      LDA $0F04                 ;
CODE_0FF262:        F0 3E         BEQ CODE_0FF2A2           ;
CODE_0FF264:        20 BC F2      JSR CODE_0FF2BC           ;
CODE_0FF267:        A2 00         LDX #$00                  ;
CODE_0FF269:        A0 00         LDY #$00                  ;
CODE_0FF26B:        B9 01 09      LDA $0901,y               ;
CODE_0FF26E:        C9 F0         CMP #$F0                  ;
CODE_0FF270:        F0 0B         BEQ CODE_0FF27D           ;
CODE_0FF272:        C8            INY                       ;
CODE_0FF273:        C8            INY                       ;
CODE_0FF274:        C8            INY                       ;
CODE_0FF275:        C8            INY                       ;
CODE_0FF276:        98            TYA                       ;
CODE_0FF277:        29 FF         AND #$FF                  ;
CODE_0FF279:        F0 27         BEQ CODE_0FF2A2           ;
CODE_0FF27B:        80 EE         BRA CODE_0FF26B           ;

CODE_0FF27D:        BD 18 0F      LDA $0F18,x               ;
CODE_0FF280:        99 01 09      STA $0901,y               ;
CODE_0FF283:        BD 4B F2      LDA DATA_0FF24B,x               ;
CODE_0FF286:        99 02 09      STA $0902,y               ;
CODE_0FF289:        A9 2A         LDA #$2A                  ;
CODE_0FF28B:        99 03 09      STA $0903,y               ;
CODE_0FF28E:        BD 0C 0F      LDA $0F0C,x               ;
CODE_0FF291:        99 00 09      STA $0900,y               ;
CODE_0FF294:        A9 00         LDA #$00                  ;
CODE_0FF296:        99 00 0D      STA $0D00,y               ;
CODE_0FF299:        C8            INY                       ;
CODE_0FF29A:        C8            INY                       ;
CODE_0FF29B:        C8            INY                       ;
CODE_0FF29C:        C8            INY                       ;
CODE_0FF29D:        E8            INX                       ;
CODE_0FF29E:        E0 0C         CPX #$0C                  ;
CODE_0FF2A0:        D0 C9         BNE CODE_0FF26B           ;
CODE_0FF2A2:        AB            PLB                       ;
CODE_0FF2A3:        6B            RTL                       ;

DATA_0FF2A4:        db $57,$57,$56,$56,$58,$58,$56,$56
                    db $57,$58,$57,$58,$59,$59,$58,$58
                    db $5A,$5A,$58,$58,$59,$5A,$59,$5A

CODE_0FF2BC:        A2 0B         LDX #$0B                  ;
CODE_0FF2BE:        BD 0C 0F      LDA $0F0C,x               ;
CODE_0FF2C1:        18            CLC                       ;
CODE_0FF2C2:        7D A4 F2      ADC DATA_0FF2A4,x               ;
CODE_0FF2C5:        7D A4 F2      ADC DATA_0FF2A4,x               ;
CODE_0FF2C8:        9D 0C 0F      STA $0F0C,x               ;
CODE_0FF2CB:        BD 18 0F      LDA $0F18,x               ;
CODE_0FF2CE:        18            CLC                       ;
CODE_0FF2CF:        7D A4 F2      ADC DATA_0FF2A4,x               ;
CODE_0FF2D2:        9D 18 0F      STA $0F18,x               ;
CODE_0FF2D5:        CA            DEX                       ;
CODE_0FF2D6:        10 E6         BPL CODE_0FF2BE           ;
CODE_0FF2D8:        60            RTS                       ;

CODE_0FF2D9:        8B            PHB                       ;
CODE_0FF2DA:        4B            PHK                       ;
CODE_0FF2DB:        AB            PLB                       ;
CODE_0FF2DC:        DA            PHX                       ;
CODE_0FF2DD:        A2 0B         LDX #$0B                  ;
CODE_0FF2DF:        BD 3F F2      LDA DATA_0FF23F,x               ;
CODE_0FF2E2:        9D 0C 0F      STA $0F0C,x               ;
CODE_0FF2E5:        BD 33 F2      LDA DATA_0FF233,x               ;
CODE_0FF2E8:        9D 18 0F      STA $0F18,x               ;
CODE_0FF2EB:        CA            DEX                       ;
CODE_0FF2EC:        10 F1         BPL CODE_0FF2DF           ;
CODE_0FF2EE:        FA            PLX                       ;
CODE_0FF2EF:        AB            PLB                       ;
CODE_0FF2F0:        A9 10         LDA #$10                  ;
CODE_0FF2F2:        8D 4B 0F      STA $0F4B                 ;
CODE_0FF2F5:        0C 01 16      TSB $1601                 ;
CODE_0FF2F8:        A9 01         LDA #$01                  ;
CODE_0FF2FA:        D0 0A         BNE CODE_0FF306           ;
CODE_0FF2FC:        9C 4B 0F      STZ $0F4B                 ;
CODE_0FF2FF:        A9 20         LDA #$20                  ;
CODE_0FF301:        0C 01 16      TSB $1601                 ;
CODE_0FF304:        A9 00         LDA #$00                  ;
CODE_0FF306:        8D 04 0F      STA $0F04                 ;
CODE_0FF309:        6B            RTL                       ;

DATA_0FF30A:        db $0C,$00,$02,$4C,$80,$05,$2E,$12
                    db $24,$10,$24,$10,$FF

CODE_0FF317:        8B            PHB                       ;
CODE_0FF318:        4B            PHK                       ;
CODE_0FF319:        AB            PLB                       ;
CODE_0FF31A:        A0 0C         LDY #$0C                  ;
CODE_0FF31C:        B9 0A F3      LDA DATA_0FF30A,y               ;
CODE_0FF31F:        99 00 17      STA $1700,y               ;
CODE_0FF322:        88            DEY                       ;
CODE_0FF323:        10 F7         BPL CODE_0FF31C           ;
CODE_0FF325:        AD 7A 07      LDA $077A                 ;
CODE_0FF328:        F0 14         BEQ CODE_0FF33E           ;
CODE_0FF32A:        A9 24         LDA #$24                  ;
CODE_0FF32C:        8D 06 17      STA $1706                 ;
CODE_0FF32F:        A9 10         LDA #$10                  ;
CODE_0FF331:        8D 07 17      STA $1707                 ;
CODE_0FF334:        A9 2E         LDA #$2E                  ;
CODE_0FF336:        8D 0A 17      STA $170A                 ;
CODE_0FF339:        A9 12         LDA #$12                  ;
CODE_0FF33B:        8D 0B 17      STA $170B                 ;
CODE_0FF33E:        AB            PLB                       ;
CODE_0FF33F:        6B            RTL                       ;

DATA_0FF340:        db $02,$4E,$4E,$4E,$4E,$02,$02,$02 ;
                    db $4E,$4E,$4E,$4E,$4F,$99,$84,$85 ;
                    db $86,$D0,$F1,$1A,$64,$83,$AE,$DB ;
                    db $00,$2F,$2F,$3C,$0A,$3C,$BB,$74 ;
                    db $AB,$3F,$17,$F6,$F6,$F6,$F6,$17 ;
                    db $1A,$1A,$F6,$F6,$F6,$F6,$F6,$F6 ;
                    db $F3,$F3,$F3,$F3,$F3,$F4,$F4,$F4 ;
                    db $F4,$F4,$F5,$F5,$F5,$F5,$F3,$F5 ;
                    db $F5,$F6,$F3,$F4,$FF,$FF,$04,$E8 ;
                    db $00,$1F,$1D,$08,$11,$08,$0A,$08 ;
                    db $17,$08,$14,$08,$24,$08,$22,$08 ;
                    db $18,$08,$1E,$08,$24,$08,$16,$08 ;
                    db $0A,$08,$1B,$08,$12,$08,$18,$08 ;
                    db $2B,$08,$FF,$04,$E8,$00,$1F,$1D ;
                    db $08,$11,$08,$0A,$08,$17,$08,$14 ;
                    db $08,$24,$08,$22,$08,$18,$08,$1E ;
                    db $08,$24,$08,$15,$08,$1E,$08,$12 ;
                    db $08,$10,$08,$12,$08,$2B,$08,$FF ;
                    db $05,$09,$00,$1B,$19,$08,$0E,$08 ;
                    db $0A,$08,$0C,$08,$0E,$08,$24,$08 ;
                    db $12,$08,$1C,$08,$24,$08,$19,$08 ;
                    db $0A,$08,$1F,$08,$0E,$08,$0D,$08 ;
                    db $FF,$05,$47,$00,$23,$20,$08,$12 ;
                    db $08,$1D,$08,$11,$08,$24,$08,$14 ;
                    db $08,$12,$08,$17,$08,$10,$08,$0D ;
                    db $08,$18,$08,$16,$08,$24,$08,$1C ;
                    db $08,$0A,$08,$1F,$08,$0E,$08,$0D ;
                    db $08,$FF,$05,$89,$00,$1F,$11,$08 ;
                    db $1E,$08,$1B,$08,$1B,$08,$0A,$08 ;
                    db $11,$08,$24,$08,$1D,$08,$18,$08 ;
                    db $24,$08,$24,$08,$16,$08,$0A,$08 ;
                    db $1B,$08,$12,$08,$18,$08,$FF,$05 ;
                    db $89,$00,$1F,$11,$08,$1E,$08,$1B ;
                    db $08,$1B,$08,$0A,$08,$11,$08,$24 ;
                    db $08,$1D,$08,$18,$08,$24,$08,$24 ;
                    db $08,$15,$08,$1E,$08,$12,$08,$10 ;
                    db $08,$12,$08,$FF,$05,$CA,$00,$19 ;
                    db $18,$08,$1E,$08,$1B,$08,$24,$08 ;
                    db $18,$08,$17,$08,$15,$08,$22,$08 ;
                    db $24,$08,$11,$08,$0E,$08,$1B,$08 ;
                    db $18,$08,$FF,$06,$07,$00,$25,$1D ;
                    db $08,$11,$08,$12,$08,$1C,$08,$24 ;
                    db $08,$0E,$08,$17,$08,$0D,$08,$1C ;
                    db $08,$24,$08,$22,$08,$18,$08,$1E ;
                    db $08,$1B,$08,$24,$08,$1D,$08,$1B ;
                    db $08,$12,$08,$19,$08,$FF,$06,$46 ;
                    db $00,$27,$18,$08,$0F,$08,$24,$08 ;
                    db $0A,$08,$24,$08,$15,$08,$18,$08 ;
                    db $17,$08,$10,$08,$24,$08,$0F,$08 ;
                    db $1B,$08,$12,$08,$0E,$08,$17,$08 ;
                    db $0D,$08,$1C,$08,$11,$08,$12,$08 ;
                    db $19,$08,$FF,$06,$88,$00,$1F,$01 ;
                    db $04,$00,$04,$00,$04,$00,$04,$00 ;
                    db $04,$00,$04,$24,$04,$19,$04,$1D ;
                    db $04,$1C,$04,$AF,$04,$0A,$04,$0D ;
                    db $04,$0D,$04,$0E,$04,$0D,$04,$FF ;
                    db $06,$A6,$00,$29,$0F,$04,$18,$04 ;
                    db $1B,$04,$24,$04,$0E,$04,$0A,$04 ;
                    db $0C,$04,$11,$04,$24,$04,$19,$04 ;
                    db $15,$04,$0A,$04,$22,$04,$0E,$04 ;
                    db $1B,$04,$24,$04,$15,$04,$0E,$04 ;
                    db $0F,$04,$1D,$04,$AF,$04,$FF,$3F ;
                    db $00,$00,$07,$0F,$08,$30,$08,$30 ;
                    db $08,$0F,$08,$FF,$06,$24,$00,$2F ;
                    db $20,$08,$0E,$08,$24,$08,$19,$08 ;
                    db $1B,$08,$0E,$08,$1C,$08,$0E,$08 ;
                    db $17,$08,$1D,$08,$24,$08,$0F,$08 ;
                    db $0A,$08,$17,$08,$1D,$08,$0A,$08 ;
                    db $1C,$08,$22,$08,$24,$08,$20,$08 ;
                    db $18,$08,$1B,$08,$15,$08,$0D,$08 ;
                    db $06,$66,$00,$25,$15,$08,$0E,$08 ;
                    db $1D,$08,$F2,$08,$1C,$08,$24,$08 ;
                    db $1D,$08,$1B,$08,$22,$08,$24,$08 ;
                    db $76,$08,$09,$08,$24,$08,$20,$08 ;
                    db $18,$08,$1B,$08,$15,$08,$0D,$08 ;
                    db $75,$08,$06,$A9,$00,$1B,$20,$08 ;
                    db $12,$08,$1D,$08,$11,$08,$24,$08 ;
                    db $18,$08,$17,$08,$0E,$08,$24,$08 ;
                    db $10,$08,$0A,$08,$16,$08,$0E,$08 ;
                    db $AF,$08,$FF,$06,$25,$00,$2B,$22 ;
                    db $08,$18,$08,$1E,$08,$F2,$08,$1B ;
                    db $08,$0E,$08,$24,$08,$0A,$08,$24 ;
                    db $08,$1C,$08,$1E,$08,$19,$08,$0E ;
                    db $08,$1B,$08,$24,$08,$19,$08,$15 ;
                    db $08,$0A,$08,$22,$08,$0E,$08,$1B ;
                    db $08,$2B,$08,$06,$69,$00,$19,$20 ;
                    db $08,$0E,$08,$24,$08,$11,$08,$18 ;
                    db $08,$19,$08,$0E,$08,$24,$08,$20 ;
                    db $08,$0E,$08,$F2,$08,$15,$08,$15 ;
                    db $08,$06,$A9,$00,$1B,$1C,$08,$0E ;
                    db $08,$0E,$08,$24,$08,$22,$08,$18 ;
                    db $08,$1E,$08,$24,$08,$0A,$08,$10 ;
                    db $08,$0A,$08,$12,$08,$87,$10,$AF ;
                    db $08,$06,$E8,$00,$1F,$16,$08,$0A ;
                    db $08,$1B,$08,$12,$08,$18,$08,$24 ;
                    db $08,$0A,$08,$17,$08,$0D,$08,$24 ;
                    db $08,$1C,$08,$1D,$08,$0A,$08,$0F ;
                    db $08,$0F,$08,$AF,$08,$FF,$FF,$05 ;
                    db $48,$00,$1F,$1D,$08,$11,$08,$0A ;
                    db $08,$17,$08,$14,$08,$24,$00,$22 ;
                    db $08,$18,$08,$1E,$08,$24,$00,$16 ;
                    db $08,$0A,$08,$1B,$08,$12,$08,$18 ;
                    db $08,$2B,$08,$FF,$05,$48,$00,$1F ;
                    db $1D,$08,$11,$08,$0A,$08,$17,$08 ;
                    db $14,$08,$24,$00,$22,$08,$18,$08 ;
                    db $1E,$08,$24,$00,$15,$08,$1E,$08 ;
                    db $12,$08,$10,$08,$12,$08,$2B,$08 ;
                    db $FF,$05,$C5,$00,$2B,$0B,$08,$1E ;
                    db $08,$1D,$08,$24,$00,$18,$08,$1E ;
                    db $08,$1B,$08,$24,$00,$19,$08,$1B ;
                    db $08,$12,$08,$17,$08,$0C,$08,$0E ;
                    db $08,$1C,$08,$1C,$08,$24,$00,$12 ;
                    db $08,$1C,$08,$24,$00,$12,$08,$17 ;
                    db $08,$06,$05,$00,$1D,$0A,$08,$17 ;
                    db $08,$18,$08,$1D,$08,$11,$08,$0E ;
                    db $08,$1B,$08,$24,$00,$0C,$08,$0A ;
                    db $08,$1C,$08,$1D,$08,$15,$08,$0E ;
                    db $08,$2B,$08 ;

DATA_0FF6EB:        db $FF,$01,$81,$01,$81,$01,$81,$02 ;
                    db $01,$81,$00,$81,$00,$80,$01,$81 ;
                    db $01 ;

DATA_0FF6FC:        db $00,$B0,$10,$10,$10,$28,$10,$28 ;
                    db $06,$10,$10,$0C,$80,$10,$28,$08 ;
                    db $90,$FF,$00 ;

CODE_0FF70F:        8B            PHB                       ;
CODE_0FF710:        4B            PHK                       ;
CODE_0FF711:        AB            PLB                       ;
CODE_0FF712:        AE 17 07      LDX $0717                 ;
CODE_0FF715:        AD 18 07      LDA $0718                 ;
CODE_0FF718:        D0 0D         BNE CODE_0FF727           ;
CODE_0FF71A:        E8            INX                       ;
CODE_0FF71B:        EE 17 07      INC $0717                 ;
CODE_0FF71E:        38            SEC                       ;
CODE_0FF71F:        BD FC F6      LDA DATA_0FF6FC,x               ;
CODE_0FF722:        8D 18 07      STA $0718                 ;
CODE_0FF725:        F0 0A         BEQ CODE_0FF731           ;
CODE_0FF727:        BD EB F6      LDA DATA_0FF6EB,x               ;
CODE_0FF72A:        8D F4 0F      STA $0FF4                 ;
CODE_0FF72D:        CE 18 07      DEC $0718                 ;
CODE_0FF730:        18            CLC                       ;
CODE_0FF731:        AB            PLB                       ;
CODE_0FF732:        6B            RTL                       ;

CODE_0FF733:        A2 07         LDX #$07                  ;
CODE_0FF735:        A9 00         LDA #$00                  ;
CODE_0FF737:        85 06         STA $06                   ;
CODE_0FF739:        86 07         STX $07                   ;
CODE_0FF73B:        E0 01         CPX #$01                  ;
CODE_0FF73D:        D0 04         BNE CODE_0FF743           ;
CODE_0FF73F:        C0 50         CPY #$50                  ;
CODE_0FF741:        B0 02         BCS CODE_0FF745           ;
CODE_0FF743:        91 06         STA ($06),y               ;
CODE_0FF745:        88            DEY                       ;
CODE_0FF746:        C0 FF         CPY #$FF                  ;
CODE_0FF748:        D0 F1         BNE CODE_0FF73B           ;
CODE_0FF74A:        CA            DEX                       ;
CODE_0FF74B:        10 EC         BPL CODE_0FF739           ;
CODE_0FF74D:        A9 FF         LDA #$FF                  ;
CODE_0FF74F:        8D 02 17      STA $1702                 ;
CODE_0FF752:        1A            INC A                     ;
CODE_0FF753:        9C 25 0B      STZ $0B25                 ;
CODE_0FF756:        9C 26 0B      STZ $0B26                 ;
CODE_0FF759:        9C 27 0B      STZ $0B27                 ;
CODE_0FF75C:        9C 28 0B      STZ $0B28                 ;
CODE_0FF75F:        9C 29 0B      STZ $0B29                 ;
CODE_0FF762:        A2 40         LDX #$40                  ;
CODE_0FF764:        9E 00 0F      STZ $0F00,x               ;
CODE_0FF767:        E8            INX                       ;
CODE_0FF768:        D0 FA         BNE CODE_0FF764           ;
CODE_0FF76A:        AD 0B 0F      LDA $0F0B                 ;
CODE_0FF76D:        F0 0A         BEQ CODE_0FF779           ;
CODE_0FF76F:        3A            DEC A                     ;
CODE_0FF770:        8D 0B 0F      STA $0F0B                 ;
CODE_0FF773:        D0 04         BNE CODE_0FF779           ;
CODE_0FF775:        22 85 D0 0F   JSL CODE_0FD085           ;
CODE_0FF779:        6B            RTL                       ;

DATA_0FF77A:        db $93,$00,$00,$11,$12,$12,$13,$00
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
                    db $FF,$FF,$FF,$FF,$16,$02,$07,$12
                    db $0E,$05,$FF,$FF,$12,$FF,$FF,$FF
                    db $FF,$FF,$FF,$16,$02,$06,$0E,$07
                    db $05,$00,$0E,$FF,$0F,$01,$FF,$05
                    db $FF,$08,$FF,$07,$0E,$0F,$14,$FF
                    db $FF,$FF,$FF,$FF,$16,$FF,$00,$0E
                    db $02,$FF,$0A,$00,$07,$0E,$0B,$01
                    db $0E,$08,$0F,$FF,$FF,$FF,$FF,$FF
                    db $16,$02,$0E,$05,$0F,$FF,$01,$0E
                    db $14,$08,$07,$FF,$0E,$12,$0F,$FF
                    db $FF,$FF,$FF,$FF,$16,$00,$05,$0F
                    db $08,$02,$01,$0E,$02,$0F,$00,$01
                    db $0E,$05,$08,$00,$FF,$FF,$FF,$FF
                    db $16

CODE_0FF913:        BD 46 0B      LDA $0B46,x               ;
CODE_0FF916:        A8            TAY                       ;
CODE_0FF917:        AD AE 03      LDA $03AE                 ;
CODE_0FF91A:        99 00 09      STA $0900,y               ;
CODE_0FF91D:        B5 BC         LDA $BC,x                 ;
CODE_0FF91F:        C9 02         CMP #$02                  ;
CODE_0FF921:        B0 07         BCS CODE_0FF92A           ;
CODE_0FF923:        AD B9 03      LDA $03B9                 ;
CODE_0FF926:        C9 E8         CMP #$E8                  ;
CODE_0FF928:        90 02         BCC CODE_0FF92C           ;
CODE_0FF92A:        A9 F0         LDA #$F0                  ;
CODE_0FF92C:        99 01 09      STA $0901,y               ;
CODE_0FF92F:        B5 A1         LDA $A1,x                 ;
CODE_0FF931:        30 04         BMI CODE_0FF937           ;
CODE_0FF933:        A9 A9         LDA #$A9                  ;
CODE_0FF935:        80 02         BRA CODE_0FF939           ;

CODE_0FF937:        A9 29         LDA #$29                  ;
CODE_0FF939:        99 03 09      STA $0903,y               ;
CODE_0FF93C:        AD 68 0E      LDA $0E68                 ;
CODE_0FF93F:        29 18         AND #$18                  ;
CODE_0FF941:        4A            LSR A                     ;
CODE_0FF942:        4A            LSR A                     ;
CODE_0FF943:        18            CLC                       ;
CODE_0FF944:        69 62         ADC #$62                  ;
CODE_0FF946:        99 02 09      STA $0902,y               ;
CODE_0FF949:        BD 1A 02      LDA $021A,x               ;
CODE_0FF94C:        85 E4         STA $E4                   ;
CODE_0FF94E:        B5 79         LDA $79,x                 ;
CODE_0FF950:        85 E5         STA $E5                   ;
CODE_0FF952:        C2 20         REP #$20                  ;
CODE_0FF954:        A5 E4         LDA $E4                   ;
CODE_0FF956:        38            SEC                       ;
CODE_0FF957:        E5 42         SBC $42                   ;
CODE_0FF959:        85 E6         STA $E6                   ;
CODE_0FF95B:        E2 20         SEP #$20                  ;
CODE_0FF95D:        A9 02         LDA #$02                  ;
CODE_0FF95F:        99 00 0D      STA $0D00,y               ;
CODE_0FF962:        A5 E7         LDA $E7                   ;
CODE_0FF964:        F0 05         BEQ CODE_0FF96B           ;
CODE_0FF966:        A9 03         LDA #$03                  ;
CODE_0FF968:        99 00 0D      STA $0D00,y               ;
CODE_0FF96B:        6B            RTL                       ;

CODE_0FF96C:        8B            PHB                       ;
CODE_0FF96D:        4B            PHK                       ;
CODE_0FF96E:        AB            PLB                       ;
CODE_0FF96F:        9C 49 0F      STZ $0F49                 ;
CODE_0FF972:        DA            PHX                       ;
CODE_0FF973:        A6 9E         LDX $9E                   ;
CODE_0FF975:        B5 1C         LDA $1C,x                 ;
CODE_0FF977:        C9 04         CMP #$04                  ;
CODE_0FF979:        B0 08         BCS CODE_0FF983           ;
CODE_0FF97B:        B5 29         LDA $29,x                 ;
CODE_0FF97D:        30 08         BMI CODE_0FF987           ;
CODE_0FF97F:        29 06         AND #$06                  ;
CODE_0FF981:        F0 04         BEQ CODE_0FF987           ;
CODE_0FF983:        FA            PLX                       ;
CODE_0FF984:        AB            PLB                       ;
CODE_0FF985:        18            CLC                       ;
CODE_0FF986:        6B            RTL                       ;

CODE_0FF987:        BD 29 00      LDA $0029,x               ;
CODE_0FF98A:        85 E0         STA $E0                   ;
CODE_0FF98C:        C9 02         CMP #$02                  ;
CODE_0FF98E:        F0 08         BEQ CODE_0FF998           ;
CODE_0FF990:        C9 03         CMP #$03                  ;
CODE_0FF992:        F0 04         BEQ CODE_0FF998           ;
CODE_0FF994:        C9 04         CMP #$04                  ;
CODE_0FF996:        D0 05         BNE CODE_0FF99D           ;
CODE_0FF998:        9E 40 0F      STZ $0F40,x               ;
CODE_0FF99B:        80 0D         BRA CODE_0FF9AA           ;

CODE_0FF99D:        29 80         AND #$80                  ;
CODE_0FF99F:        F0 E2         BEQ CODE_0FF983           ;
CODE_0FF9A1:        A5 0F         LDA $0F                   ;
CODE_0FF9A3:        C9 0A         CMP #$0A                  ;
CODE_0FF9A5:        B0 03         BCS CODE_0FF9AA           ;
CODE_0FF9A7:        FE 40 0F      INC $0F40,x               ;
CODE_0FF9AA:        BD 40 0F      LDA $0F40,x               ;
CODE_0FF9AD:        29 0C         AND #$0C                  ;
CODE_0FF9AF:        85 E4         STA $E4                   ;
CODE_0FF9B1:        B5 1C         LDA $1C,x                 ;
CODE_0FF9B3:        A6 E4         LDX $E4                   ;
CODE_0FF9B5:        C9 02         CMP #$02                  ;
CODE_0FF9B7:        D0 05         BNE CODE_0FF9BE           ;
CODE_0FF9B9:        8A            TXA                       ;
CODE_0FF9BA:        18            CLC                       ;
CODE_0FF9BB:        69 10         ADC #$10                  ;
CODE_0FF9BD:        AA            TAX                       ;
CODE_0FF9BE:        A5 E0         LDA $E0                   ;
CODE_0FF9C0:        29 0F         AND #$0F                  ;
CODE_0FF9C2:        C9 04         CMP #$04                  ;
CODE_0FF9C4:        D0 09         BNE CODE_0FF9CF           ;
CODE_0FF9C6:        8A            TXA                       ;
CODE_0FF9C7:        18            CLC                       ;
CODE_0FF9C8:        69 20         ADC #$20                  ;
CODE_0FF9CA:        AA            TAX                       ;
CODE_0FF9CB:        A9 80         LDA #$80                  ;
CODE_0FF9CD:        04 04         TSB $04                   ;
CODE_0FF9CF:        98            TYA                       ;
CODE_0FF9D0:        18            CLC                       ;
CODE_0FF9D1:        69 08         ADC #$08                  ;
CODE_0FF9D3:        A8            TAY                       ;
CODE_0FF9D4:        AD B9 03      LDA $03B9                 ;
CODE_0FF9D7:        18            CLC                       ;
CODE_0FF9D8:        69 08         ADC #$08                  ;
CODE_0FF9DA:        C9 F0         CMP #$F0                  ;
CODE_0FF9DC:        90 02         BCC CODE_0FF9E0           ;
CODE_0FF9DE:        A9 F0         LDA #$F0                  ;
CODE_0FF9E0:        48            PHA                       ;
CODE_0FF9E1:        A5 04         LDA $04                   ;
CODE_0FF9E3:        10 06         BPL CODE_0FF9EB           ;
CODE_0FF9E5:        68            PLA                       ;
CODE_0FF9E6:        18            CLC                       ;
CODE_0FF9E7:        69 02         ADC #$02                  ;
CODE_0FF9E9:        80 01         BRA CODE_0FF9EC           ;

CODE_0FF9EB:        68            PLA                       ;
CODE_0FF9EC:        20 B0 FA      JSR CODE_0FFAB0           ;
CODE_0FF9EF:        A5 04         LDA $04                   ;
CODE_0FF9F1:        10 08         BPL CODE_0FF9FB           ;
CODE_0FF9F3:        AD B9 03      LDA $03B9                 ;
CODE_0FF9F6:        18            CLC                       ;
CODE_0FF9F7:        69 12         ADC #$12                  ;
CODE_0FF9F9:        80 06         BRA CODE_0FFA01           ;

CODE_0FF9FB:        AD B9 03      LDA $03B9                 ;
CODE_0FF9FE:        18            CLC                       ;
CODE_0FF9FF:        69 10         ADC #$10                  ;
CODE_0FFA01:        20 B0 FA      JSR CODE_0FFAB0           ;
CODE_0FFA04:        A6 E4         LDX $E4                   ;
CODE_0FFA06:        BD 19 FB      LDA DATA_0FFB19,x               ;
CODE_0FFA09:        05 04         ORA $04                   ;
CODE_0FFA0B:        99 F3 08      STA $08F3,y               ;
CODE_0FFA0E:        BD 1A FB      LDA DATA_0FFB19+1,x               ;
CODE_0FFA11:        05 04         ORA $04                   ;
CODE_0FFA13:        99 F7 08      STA $08F7,y               ;
CODE_0FFA16:        BD 1B FB      LDA DATA_0FFB19+2,x               ;
CODE_0FFA19:        05 04         ORA $04                   ;
CODE_0FFA1B:        99 FB 08      STA $08FB,y               ;
CODE_0FFA1E:        BD 1C FB      LDA DATA_0FFB19+3,x               ;
CODE_0FFA21:        05 04         ORA $04                   ;
CODE_0FFA23:        99 FF 08      STA $08FF,y               ;
CODE_0FFA26:        EE 49 0F      INC $0F49                 ;
CODE_0FFA29:        FA            PLX                       ;
CODE_0FFA2A:        AB            PLB                       ;
CODE_0FFA2B:        38            SEC                       ;
CODE_0FFA2C:        6B            RTL                       ;

DATA_0FFA2D:        db $00,$FC,$F9,$F7,$F5,$F4,$F3,$F2
                    db $F2,$F2,$F3,$F4,$F5,$F7,$F9,$FC
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00

CODE_0FFA4D:        8B            PHB                       ;
CODE_0FFA4E:        4B            PHK                       ;
CODE_0FFA4F:        AB            PLB                       ;
CODE_0FFA50:        DA            PHX                       ;
CODE_0FFA51:        A6 9E         LDX $9E                   ;
CODE_0FFA53:        B5 1C         LDA $1C,x                 ;
CODE_0FFA55:        C9 35         CMP #$35                  ;
CODE_0FFA57:        D0 46         BNE CODE_0FFA9F           ;
CODE_0FFA59:        AD C4 0E      LDA $0EC4                 ;
CODE_0FFA5C:        D0 41         BNE CODE_0FFA9F           ;
CODE_0FFA5E:        AD 4A 0F      LDA $0F4A                 ;
CODE_0FFA61:        29 1F         AND #$1F                  ;
CODE_0FFA63:        BC 46 0B      LDY $0B46,x               ;
CODE_0FFA66:        5A            PHY                       ;
CODE_0FFA67:        AA            TAX                       ;
CODE_0FFA68:        BD 2D FA      LDA DATA_0FFA2D,x               ;
CODE_0FFA6B:        85 DD         STA $DD                   ;
CODE_0FFA6D:        20 A2 FA      JSR CODE_0FFAA2           ;
CODE_0FFA70:        20 A2 FA      JSR CODE_0FFAA2           ;
CODE_0FFA73:        20 A2 FA      JSR CODE_0FFAA2           ;
CODE_0FFA76:        20 A2 FA      JSR CODE_0FFAA2           ;
CODE_0FFA79:        20 A2 FA      JSR CODE_0FFAA2           ;
CODE_0FFA7C:        20 A2 FA      JSR CODE_0FFAA2           ;
CODE_0FFA7F:        7A            PLY                       ;
CODE_0FFA80:        E0 10         CPX #$10                  ;
CODE_0FFA82:        B0 18         BCS CODE_0FFA9C           ;
CODE_0FFA84:        A9 FF         LDA #$FF                  ;
CODE_0FFA86:        99 02 09      STA $0902,y               ;
CODE_0FFA89:        99 06 09      STA $0906,y               ;
CODE_0FFA8C:        A9 D7         LDA #$D7                  ;
CODE_0FFA8E:        99 0A 09      STA $090A,y               ;
CODE_0FFA91:        99 0E 09      STA $090E,y               ;
CODE_0FFA94:        A9 EE         LDA #$EE                  ;
CODE_0FFA96:        99 12 09      STA $0912,y               ;
CODE_0FFA99:        99 16 09      STA $0916,y               ;
CODE_0FFA9C:        EE 4A 0F      INC $0F4A                 ;
CODE_0FFA9F:        FA            PLX                       ;
CODE_0FFAA0:        AB            PLB                       ;
CODE_0FFAA1:        6B            RTL                       ;

CODE_0FFAA2:        B9 01 09      LDA $0901,y               ;
CODE_0FFAA5:        18            CLC                       ;
CODE_0FFAA6:        65 DD         ADC $DD                   ;
CODE_0FFAA8:        99 01 09      STA $0901,y               ;
CODE_0FFAAB:        C8            INY                       ;
CODE_0FFAAC:        C8            INY                       ;
CODE_0FFAAD:        C8            INY                       ;
CODE_0FFAAE:        C8            INY                       ;
CODE_0FFAAF:        60            RTS                       ;

CODE_0FFAB0:        99 01 09      STA $0901,y               ;
CODE_0FFAB3:        99 05 09      STA $0905,y               ;
CODE_0FFAB6:        AD AE 03      LDA $03AE                 ;
CODE_0FFAB9:        99 00 09      STA $0900,y               ;
CODE_0FFABC:        18            CLC                       ;
CODE_0FFABD:        69 08         ADC #$08                  ;
CODE_0FFABF:        99 04 09      STA $0904,y               ;
CODE_0FFAC2:        BD D9 FA      LDA DATA_0FFAD9,x               ;
CODE_0FFAC5:        99 02 09      STA $0902,y               ;
CODE_0FFAC8:        BD DA FA      LDA DATA_0FFAD9+1,x               ;
CODE_0FFACB:        99 06 09      STA $0906,y               ;
CODE_0FFACE:        C8            INY                       ;
CODE_0FFACF:        C8            INY                       ;
CODE_0FFAD0:        C8            INY                       ;
CODE_0FFAD1:        C8            INY                       ;
CODE_0FFAD2:        C8            INY                       ;
CODE_0FFAD3:        C8            INY                       ;
CODE_0FFAD4:        C8            INY                       ;
CODE_0FFAD5:        C8            INY                       ;
CODE_0FFAD6:        E8            INX                       ;
CODE_0FFAD7:        E8            INX                       ;
CODE_0FFAD8:        60            RTS                       ;

DATA_0FFAD9:        db $6E,$6E,$6F,$6F,$C2,$C4,$C3,$C5 ;
                    db $C0,$C0,$C1,$C1,$C4,$C2,$C5,$C3 ;
                    db $F5,$F5,$F4,$F4,$80,$82,$81,$83 ;
                    db $68,$68,$90,$90,$82,$80,$83,$81 ;
                    db $6F,$6F,$6E,$6E,$C3,$C5,$C2,$C4 ;
                    db $C1,$C1,$C0,$C0,$C5,$C3,$C4,$C2 ;
                    db $F4,$F4,$F5,$F5,$81,$83,$80,$82 ;
                    db $90,$90,$68,$68,$83,$81,$82,$80 ;

DATA_0FFB19:        db $00,$40,$00,$40,$00,$00,$00,$00 ;
                    db $00,$40,$00,$40,$40,$40,$40,$40 ;

DATA_0FFB29:        db $BF,$27,$FF,$7F,$1F,$3F,$5F,$4A ;

DATA_0FFB31:        db $3E,$03,$FF,$77,$7F,$2A,$5F,$31 ;

DATA_0FFB39:        db $9E,$02,$BF,$6F,$DF,$15,$1D,$00 ;

DATA_0FFB41:        db $FF,$53,$7F,$67,$9F,$4F,$7F,$67 ;

CODE_0FFB49:        8B            PHB                       ;
CODE_0FFB4A:        4B            PHK                       ;
CODE_0FFB4B:        AB            PLB                       ;
CODE_0FFB4C:        A5 09         LDA $09                   ;
CODE_0FFB4E:        29 18         AND #$18                  ;
CODE_0FFB50:        4A            LSR A                     ;
CODE_0FFB51:        4A            LSR A                     ;
CODE_0FFB52:        AA            TAX                       ;
CODE_0FFB53:        C2 20         REP #$20                  ;
CODE_0FFB55:        BD 29 FB      LDA DATA_0FFB29,x               ;
CODE_0FFB58:        8D CC 10      STA $10CC                 ;
CODE_0FFB5B:        BD 31 FB      LDA DATA_0FFB31,x               ;
CODE_0FFB5E:        8D CE 10      STA $10CE                 ;
CODE_0FFB61:        BD 39 FB      LDA DATA_0FFB39,x               ;
CODE_0FFB64:        8D D0 10      STA $10D0                 ;
CODE_0FFB67:        BD 41 FB      LDA DATA_0FFB41,x               ;
CODE_0FFB6A:        8D DA 10      STA $10DA                 ;
CODE_0FFB6D:        E2 20         SEP #$20                  ;
CODE_0FFB6F:        EE 00 12      INC $1200                 ;
CODE_0FFB72:        AB            PLB                       ;
CODE_0FFB73:        6B            RTL                       ;

CODE_0FFB74:        C2 30         REP #$30                  ;
CODE_0FFB76:        A2 00 00      LDX #$0000                ;
CODE_0FFB79:        64 E6         STZ $E6                   ;
CODE_0FFB7B:        BD 00 10      LDA $1000,x               ;
CODE_0FFB7E:        85 E4         STA $E4                   ;
CODE_0FFB80:        29 00 7C      AND #$7C00                ;
CODE_0FFB83:        F0 08         BEQ CODE_0FFB8D           ;
CODE_0FFB85:        A5 E4         LDA $E4                   ;
CODE_0FFB87:        38            SEC                       ;
CODE_0FFB88:        E9 00 04      SBC #$0400                ;
CODE_0FFB8B:        85 E4         STA $E4                   ;
CODE_0FFB8D:        A5 E4         LDA $E4                   ;
CODE_0FFB8F:        29 E0 03      AND #$03E0                ;
CODE_0FFB92:        F0 08         BEQ CODE_0FFB9C           ;
CODE_0FFB94:        A5 E4         LDA $E4                   ;
CODE_0FFB96:        38            SEC                       ;
CODE_0FFB97:        E9 20 00      SBC #$0020                ;
CODE_0FFB9A:        85 E4         STA $E4                   ;
CODE_0FFB9C:        A5 E4         LDA $E4                   ;
CODE_0FFB9E:        29 1F 00      AND #$001F                ;
CODE_0FFBA1:        F0 02         BEQ CODE_0FFBA5           ;
CODE_0FFBA3:        C6 E4         DEC $E4                   ;
CODE_0FFBA5:        A5 E4         LDA $E4                   ;
CODE_0FFBA7:        9D 00 10      STA $1000,x               ;
CODE_0FFBAA:        05 E6         ORA $E6                   ;
CODE_0FFBAC:        85 E6         STA $E6                   ;
CODE_0FFBAE:        E8            INX                       ;
CODE_0FFBAF:        E8            INX                       ;
CODE_0FFBB0:        E0 00 02      CPX #$0200                ;
CODE_0FFBB3:        90 C6         BCC CODE_0FFB7B           ;
CODE_0FFBB5:        A5 E6         LDA $E6                   ;
CODE_0FFBB7:        F0 0F         BEQ CODE_0FFBC8           ;
CODE_0FFBB9:        E2 30         SEP #$30                  ;
CODE_0FFBBB:        8D B8 0E      STA $0EB8                 ;
CODE_0FFBBE:        8D 00 02      STA $0200                 ;
CODE_0FFBC1:        A9 01         LDA #$01                  ;
CODE_0FFBC3:        8D 00 12      STA $1200                 ;
CODE_0FFBC6:        18            CLC                       ;
CODE_0FFBC7:        6B            RTL                       ;

CODE_0FFBC8:        E2 30         SEP #$30                  ;
CODE_0FFBCA:        9C B8 0E      STZ $0EB8                 ;
CODE_0FFBCD:        9C 00 02      STZ $0200                 ;
CODE_0FFBD0:        38            SEC                       ;
CODE_0FFBD1:        6B            RTL                       ;

CODE_0FFBD2:        B5 5E         LDA $5E,x                 ;
CODE_0FFBD4:        30 09         BMI CODE_0FFBDF           ;
CODE_0FFBD6:        A5 00         LDA $00                   ;
CODE_0FFBD8:        38            SEC                       ;
CODE_0FFBD9:        E9 18         SBC #$18                  ;
CODE_0FFBDB:        85 E4         STA $E4                   ;
CODE_0FFBDD:        80 04         BRA CODE_0FFBE3           ;

CODE_0FFBDF:        A5 00         LDA $00                   ;
CODE_0FFBE1:        85 E4         STA $E4                   ;
CODE_0FFBE3:        BD 38 02      LDA $0238,x               ;
CODE_0FFBE6:        38            SEC                       ;
CODE_0FFBE7:        E5 E4         SBC $E4                   ;
CODE_0FFBE9:        85 E4         STA $E4                   ;
CODE_0FFBEB:        5A            PHY                       ;
CODE_0FFBEC:        BC 46 0B      LDY $0B46,x               ;
CODE_0FFBEF:        C9 18         CMP #$18                  ;
CODE_0FFBF1:        90 10         BCC CODE_0FFC03           ;
CODE_0FFBF3:        B9 13 09      LDA $0913,y               ;
CODE_0FFBF6:        09 20         ORA #$20                  ;
CODE_0FFBF8:        99 13 09      STA $0913,y               ;
CODE_0FFBFB:        B9 17 09      LDA $0917,y               ;
CODE_0FFBFE:        09 20         ORA #$20                  ;
CODE_0FFC00:        99 17 09      STA $0917,y               ;
CODE_0FFC03:        A5 E4         LDA $E4                   ;
CODE_0FFC05:        C9 10         CMP #$10                  ;
CODE_0FFC07:        90 10         BCC CODE_0FFC19           ;
CODE_0FFC09:        B9 0B 09      LDA $090B,y               ;
CODE_0FFC0C:        09 20         ORA #$20                  ;
CODE_0FFC0E:        99 0B 09      STA $090B,y               ;
CODE_0FFC11:        B9 0F 09      LDA $090F,y               ;
CODE_0FFC14:        09 20         ORA #$20                  ;
CODE_0FFC16:        99 0F 09      STA $090F,y               ;
CODE_0FFC19:        A5 E4         LDA $E4                   ;
CODE_0FFC1B:        C9 08         CMP #$08                  ;
CODE_0FFC1D:        90 10         BCC CODE_0FFC2F           ;
CODE_0FFC1F:        B9 03 09      LDA $0903,y               ;
CODE_0FFC22:        09 20         ORA #$20                  ;
CODE_0FFC24:        99 03 09      STA $0903,y               ;
CODE_0FFC27:        B9 07 09      LDA $0907,y               ;
CODE_0FFC2A:        09 20         ORA #$20                  ;
CODE_0FFC2C:        99 07 09      STA $0907,y               ;
CODE_0FFC2F:        7A            PLY                       ;
CODE_0FFC30:        6B            RTL                       ;

DATA_0FFC31:        db $F9,$0E,$F7,$0E,$FA,$FB,$F8,$FB
                    db $F6,$FB,$FD,$FE

DATA_0FFC3D:        db $20,$22,$24

CODE_0FFC40:        8B            PHB
CODE_0FFC41:        4B            PHK                       ;
CODE_0FFC42:        AB            PLB                       ;
CODE_0FFC43:        A0 F0         LDY #$F0                  ;
CODE_0FFC45:        BD 1A 02      LDA $021A,x               ;
CODE_0FFC48:        85 E4         STA $E4                   ;
CODE_0FFC4A:        B5 79         LDA $79,x                 ;
CODE_0FFC4C:        85 E5         STA $E5                   ;
CODE_0FFC4E:        C2 20         REP #$20                  ;
CODE_0FFC50:        A5 E4         LDA $E4                   ;
CODE_0FFC52:        38            SEC                       ;
CODE_0FFC53:        E5 42         SBC $42                   ;
CODE_0FFC55:        85 E4         STA $E4                   ;
CODE_0FFC57:        18            CLC                       ;
CODE_0FFC58:        69 04 00      ADC #$0004                ;
CODE_0FFC5B:        85 E6         STA $E6                   ;
CODE_0FFC5D:        18            CLC                       ;
CODE_0FFC5E:        69 08 00      ADC #$0008                ;
CODE_0FFC61:        85 E8         STA $E8                   ;
CODE_0FFC63:        10 09         BPL CODE_0FFC6E           ;
CODE_0FFC65:        C9 80 FF      CMP #$FF80                ;
CODE_0FFC68:        B0 04         BCS CODE_0FFC6E           ;
CODE_0FFC6A:        E2 30         SEP #$30                  ;
CODE_0FFC6C:        AB            PLB                       ;
CODE_0FFC6D:        6B            RTL                       ;

CODE_0FFC6E:        E2 20         SEP #$20                  ;
CODE_0FFC70:        A5 E4         LDA $E4                   ;
CODE_0FFC72:        99 00 08      STA $0800,y               ;
CODE_0FFC75:        BD 38 02      LDA $0238,x               ;
CODE_0FFC78:        99 01 08      STA $0801,y               ;
CODE_0FFC7B:        A9 2B         LDA #$2B                  ;
CODE_0FFC7D:        99 03 08      STA $0803,y               ;
CODE_0FFC80:        A5 09         LDA $09                   ;
CODE_0FFC82:        29 18         AND #$18                  ;
CODE_0FFC84:        4A            LSR A                     ;
CODE_0FFC85:        4A            LSR A                     ;
CODE_0FFC86:        4A            LSR A                     ;
CODE_0FFC87:        DA            PHX                       ;
CODE_0FFC88:        AA            TAX                       ;
CODE_0FFC89:        E0 03         CPX #$03                  ;
CODE_0FFC8B:        D0 02         BNE CODE_0FFC8F           ;
CODE_0FFC8D:        A2 01         LDX #$01                  ;
CODE_0FFC8F:        BD 3D FC      LDA DATA_0FFC3D,x               ;
CODE_0FFC92:        99 02 08      STA $0802,y               ;
CODE_0FFC95:        FA            PLX                       ;
CODE_0FFC96:        AD 0F 07      LDA $070F                 ;
CODE_0FFC99:        F0 35         BEQ CODE_0FFCD0           ;
CODE_0FFC9B:        AD 0F 01      LDA $010F                 ;
CODE_0FFC9E:        0A            ASL A                     ;
CODE_0FFC9F:        AA            TAX                       ;
CODE_0FFCA0:        A5 E6         LDA $E6                   ;
CODE_0FFCA2:        99 04 08      STA $0804,y               ;
CODE_0FFCA5:        A5 E8         LDA $E8                   ;
CODE_0FFCA7:        99 08 08      STA $0808,y               ;
CODE_0FFCAA:        AD 0D 01      LDA $010D                 ;
CODE_0FFCAD:        99 05 08      STA $0805,y               ;
CODE_0FFCB0:        99 09 08      STA $0809,y               ;
CODE_0FFCB3:        BD 31 FC      LDA DATA_0FFC31,x               ;
CODE_0FFCB6:        99 06 08      STA $0806,y               ;
CODE_0FFCB9:        BD 32 FC      LDA DATA_0FFC31+1,x               ;
CODE_0FFCBC:        99 0A 08      STA $080A,y               ;
CODE_0FFCBF:        A9 22         LDA #$22                  ;
CODE_0FFCC1:        99 07 08      STA $0807,y               ;
CODE_0FFCC4:        99 0B 08      STA $080B,y               ;
CODE_0FFCC7:        E0 04         CPX #$04                  ;
CODE_0FFCC9:        B0 05         BCS CODE_0FFCD0           ;
CODE_0FFCCB:        A9 23         LDA #$23                  ;
CODE_0FFCCD:        99 0B 08      STA $080B,y               ;
CODE_0FFCD0:        A9 02         LDA #$02                  ;
CODE_0FFCD2:        85 DD         STA $DD                   ;
CODE_0FFCD4:        A5 E5         LDA $E5                   ;
CODE_0FFCD6:        F0 02         BEQ CODE_0FFCDA           ;
CODE_0FFCD8:        A9 01         LDA #$01                  ;
CODE_0FFCDA:        05 DD         ORA $DD                   ;
CODE_0FFCDC:        99 00 0C      STA $0C00,y               ;
CODE_0FFCDF:        64 DD         STZ $DD                   ;
CODE_0FFCE1:        A5 E7         LDA $E7                   ;
CODE_0FFCE3:        F0 02         BEQ CODE_0FFCE7           ;
CODE_0FFCE5:        A9 01         LDA #$01                  ;
CODE_0FFCE7:        05 DD         ORA $DD                   ;
CODE_0FFCE9:        99 04 0C      STA $0C04,y               ;
CODE_0FFCEC:        E0 04         CPX #$04                  ;
CODE_0FFCEE:        B0 04         BCS CODE_0FFCF4           ;
CODE_0FFCF0:        A9 02         LDA #$02                  ;
CODE_0FFCF2:        85 DD         STA $DD                   ;
CODE_0FFCF4:        A5 E9         LDA $E9                   ;
CODE_0FFCF6:        F0 02         BEQ CODE_0FFCFA           ;
CODE_0FFCF8:        A9 01         LDA #$01                  ;
CODE_0FFCFA:        05 DD         ORA $DD                   ;
CODE_0FFCFC:        99 08 0C      STA $0C08,y               ;
CODE_0FFCFF:        AB            PLB                       ;
CODE_0FFD00:        6B            RTL                       ;

DATA_0FFD01:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; Graphics.
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
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF
