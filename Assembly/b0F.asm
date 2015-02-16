;Super Mario Bros. - The Lost Levels.

CODE_0F8000:        JSL CODE_0E8F35           ;
CODE_0F8004:        STZ $0EDC                 ;
CODE_0F8007:        PHB                       ;
CODE_0F8008:        LDA #$7E                  ;
CODE_0F800A:        PHA                       ;
CODE_0F800B:        PLB                       ;
CODE_0F800C:        LDA $DB                   ;
CODE_0F800E:        STA $0F35                 ;
CODE_0F8011:        CMP #$23                  ;
CODE_0F8013:        BNE CODE_0F801F           ;
CODE_0F8015:        LDX $43                   ;
CODE_0F8017:        CPX #$0C                  ;
CODE_0F8019:        BNE CODE_0F801F           ;
CODE_0F801B:        LDX #$47                  ;
CODE_0F801D:        STX $DB                   ;
CODE_0F801F:        REP #$30                  ;
CODE_0F8021:        LDX #$0000                ;
CODE_0F8024:        LDA #$0000                ;
CODE_0F8027:        STA $D000,x               ;
CODE_0F802A:        STA $D100,x               ;
CODE_0F802D:        STA $D200,x               ;
CODE_0F8030:        STA $D300,x               ;
CODE_0F8033:        STA $D400,x               ;
CODE_0F8036:        STA $D500,x               ;
CODE_0F8039:        STA $D600,x               ;
CODE_0F803C:        STA $D700,x               ;
CODE_0F803F:        STA $D800,x               ;
CODE_0F8042:        STA $D900,x               ;
CODE_0F8045:        STA $DA00,x               ;
CODE_0F8048:        STA $DB00,x               ;
CODE_0F804B:        STA $DC00,x               ;
CODE_0F804E:        STA $DD00,x               ;
CODE_0F8051:        STA $DE00,x               ;
CODE_0F8054:        STA $DF00,x               ;
CODE_0F8057:        STA $E000,x               ;
CODE_0F805A:        STA $E100,x               ;
CODE_0F805D:        STA $E200,x               ;
CODE_0F8060:        INX                       ;
CODE_0F8061:        INX                       ;
CODE_0F8062:        CPX #$0100                ;
CODE_0F8065:        BNE CODE_0F8027           ;
CODE_0F8067:        PLB                       ;
CODE_0F8068:        PHB                       ;
CODE_0F8069:        PHK                       ;
CODE_0F806A:        PLB                       ;
CODE_0F806B:        STZ $0EC0                 ;
CODE_0F806E:        LDA $0E65                 ;
CODE_0F8071:        AND #$00FF                ;
CODE_0F8074:        BEQ CODE_0F8078           ;
CODE_0F8076:        STA $DB                   ;
CODE_0F8078:        LDA $DB                   ;
CODE_0F807A:        AND #$00FF                ;
CODE_0F807D:        ASL A                     ;
CODE_0F807E:        TAX                       ;
CODE_0F807F:        LDA $AE02,x               ;
CODE_0F8082:        STA $02                   ;
CODE_0F8084:        REP #$30                  ;
CODE_0F8086:        LDX $02                   ;
CODE_0F8088:        LDA $B6A1,x               ;
CODE_0F808B:        STA $04                   ;
CODE_0F808D:        INC $02                   ;
CODE_0F808F:        INC $02                   ;
CODE_0F8091:        AND #$03F0                ;
CODE_0F8094:        LSR A                     ;
CODE_0F8095:        LSR A                     ;
CODE_0F8096:        LSR A                     ;
CODE_0F8097:        LSR A                     ;
CODE_0F8098:        STA $EF                   ;
CODE_0F809A:        LDA $04                   ;
CODE_0F809C:        AND #$000F                ;
CODE_0F809F:        STA $F1                   ;
CODE_0F80A1:        LDA $04                   ;
CODE_0F80A3:        AND #$E000                ;
CODE_0F80A6:        STA $ED                   ;
CODE_0F80A8:        LDA $04                   ;
CODE_0F80AA:        LSR A                     ;
CODE_0F80AB:        AND #$0E00                ;
CODE_0F80AE:        ORA $ED                   ;
CODE_0F80B0:        XBA                       ;
CODE_0F80B1:        STA $ED                   ;
CODE_0F80B3:        AND #$00F0                ;
CODE_0F80B6:        CMP #$00E0                ;
CODE_0F80B9:        BNE CODE_0F80DC           ;
CODE_0F80BB:        LDA $EF                   ;
CODE_0F80BD:        CMP #$003F                ;
CODE_0F80C0:        BNE CODE_0F80D7           ;
CODE_0F80C2:        INC $0EC0                 ;
CODE_0F80C5:        INC $0EC0                 ;
CODE_0F80C8:        LDA $0EC0                 ;
CODE_0F80CB:        XBA                       ;
CODE_0F80CC:        TAX                       ;
CODE_0F80CD:        LDA #$FFFF                ;
CODE_0F80D0:        STA $7ED000,x             ;
CODE_0F80D4:        JMP CODE_0F91CF           ;

CODE_0F80D7:        JSR CODE_0F8FB5           ;
CODE_0F80DA:        BRA CODE_0F8084           ;

CODE_0F80DC:        LDA $0EC0                 ;
CODE_0F80DF:        XBA                       ;
CODE_0F80E0:        CLC                       ;
CODE_0F80E1:        ADC $ED                   ;
CODE_0F80E3:        STA $EB                   ;
CODE_0F80E5:        LDA $EF                   ;
CODE_0F80E7:        CMP #$0010                ;
CODE_0F80EA:        BCC CODE_0F80F2           ;
CODE_0F80EC:        JSR CODE_0F8F1D           ;
CODE_0F80EF:        JMP CODE_0F8084           ;

CODE_0F80F2:        ASL A                     ;
CODE_0F80F3:        TAX                       ;
CODE_0F80F4:        LDA $DB                   ;
CODE_0F80F6:        ASL A                     ;
CODE_0F80F7:        TAY                       ;
CODE_0F80F8:        LDA $810A,y               ;\Load a ptr which points to a routine using a ptr.
CODE_0F80FB:        STA $04                   ; |
CODE_0F80FD:        LDA #$000F                ; |
CODE_0F8100:        STA $06                   ; |
CODE_0F8102:        TXY                       ; |
CODE_0F8103:        LDA [$04],y               ; |
CODE_0F8105:        STA $00                   ; |
CODE_0F8107:        JMP ($0000)               ;/And jump to it.

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

CODE_0F826A:        LDY $F1                   ;
CODE_0F826C:        LDX $EB                   ;
CODE_0F826E:        SEP #$20                  ;
CODE_0F8270:        LDA $8256,y               ;
CODE_0F8273:        STA $7ED000,x             ;
CODE_0F8277:        LDA $8257,y               ;
CODE_0F827A:        STA $7ED010,x             ;
CODE_0F827E:        LDA $8258,y               ;
CODE_0F8281:        STA $7ED020,x             ;
CODE_0F8285:        LDA $8259,y               ;
CODE_0F8288:        STA $7ED030,x             ;
CODE_0F828C:        LDA $825A,y               ;
CODE_0F828F:        STA $7ED040,x             ;
CODE_0F8293:        REP #$20                  ;
CODE_0F8295:        JMP CODE_0F8084           ;

DATA_0F8298:        db $01,$02,$03,$04,$08,$09,$05,$06
                    db $10,$11,$17,$18,$1B,$1C,$1F,$20
                    db $21,$22,$25,$26,$23,$24,$2B,$2C
                    db $2E,$2F,$31,$32

CODE_0F82B4:        LDY #$000E                ;
CODE_0F82B7:        BRA CODE_0F82BC           ;

CODE_0F82B9:        LDY #$0000                ;
CODE_0F82BC:        LDX $EB                   ;
CODE_0F82BE:        INX                       ;
CODE_0F82BF:        SEP #$20                  ;
CODE_0F82C1:        LDA $8298,y               ;
CODE_0F82C4:        STA $7ED000,x             ;
CODE_0F82C8:        LDA $8299,y               ;
CODE_0F82CB:        STA $7ED001,x             ;
CODE_0F82CF:        LDA $829A,y               ;
CODE_0F82D2:        STA $7ED010,x             ;
CODE_0F82D6:        LDA $829B,y               ;
CODE_0F82D9:        STA $7ED011,x             ;
CODE_0F82DD:        LDA $829E,y               ;
CODE_0F82E0:        STA $7ED020,x             ;
CODE_0F82E4:        LDA $829F,y               ;
CODE_0F82E7:        STA $7ED021,x             ;
CODE_0F82EB:        LDA #$30                  ;
CODE_0F82ED:        STA $E4                   ;
CODE_0F82EF:        STZ $E5                   ;
CODE_0F82F1:        REP #$20                  ;
CODE_0F82F3:        TXA                       ;
CODE_0F82F4:        CLC                       ;
CODE_0F82F5:        ADC $E4                   ;
CODE_0F82F7:        TAX                       ;
CODE_0F82F8:        SEP #$20                  ;
CODE_0F82FA:        CMP #$D0                  ;
CODE_0F82FC:        BCS CODE_0F8322           ;
CODE_0F82FE:        LDA $829C,y               ;
CODE_0F8301:        STA $7ED000,x             ;
CODE_0F8305:        LDA $829D,y               ;
CODE_0F8308:        STA $7ED001,x             ;
CODE_0F830C:        LDA $829E,y               ;
CODE_0F830F:        STA $7ED010,x             ;
CODE_0F8313:        LDA $829F,y               ;
CODE_0F8316:        STA $7ED011,x             ;
CODE_0F831A:        LDA #$20                  ;
CODE_0F831C:        STA $E4                   ;
CODE_0F831E:        STZ $E5                   ;
CODE_0F8320:        BRA CODE_0F82F1           ;

CODE_0F8322:        LDA $82A0,y               ;
CODE_0F8325:        STA $7ED000,x             ;
CODE_0F8329:        LDA $82A1,y               ;
CODE_0F832C:        STA $7ED001,x             ;
CODE_0F8330:        LDA $82A2,y               ;
CODE_0F8333:        STA $7ED010,x             ;
CODE_0F8337:        LDA $82A3,y               ;
CODE_0F833A:        STA $7ED011,x             ;
CODE_0F833E:        LDA $82A4,y               ;
CODE_0F8341:        STA $7ED020,x             ;
CODE_0F8345:        LDA $82A5,y               ;
CODE_0F8348:        STA $7ED021,x             ;
CODE_0F834C:        REP #$20                  ;
CODE_0F834E:        JMP CODE_0F8084           ;

DATA_0F8351:        db $00,$00,$41,$00,$82,$00

CODE_0F8357:        LDA $F1                   ;
CODE_0F8359:        ASL A                     ;
CODE_0F835A:        TAY                       ;
CODE_0F835B:        LDA $8351,y               ;
CODE_0F835E:        TAY                       ;
CODE_0F835F:        LDA $EB                   ;
CODE_0F8361:        CLC                       ;
CODE_0F8362:        ADC #$0010                ;
CODE_0F8365:        TAX                       ;
CODE_0F8366:        SEP #$20                  ;
CODE_0F8368:        LDA $B5DE,y               ;
CODE_0F836B:        CMP #$FF                  ;
CODE_0F836D:        BEQ CODE_0F8377           ;
CODE_0F836F:        STA $7ED000,x             ;
CODE_0F8373:        INY                       ;
CODE_0F8374:        INX                       ;
CODE_0F8375:        BRA CODE_0F8368           ;

CODE_0F8377:        REP #$20                  ;
CODE_0F8379:        JMP CODE_0F8084           ;

CODE_0F837C:        LDX $EB                   ;
CODE_0F837E:        LDA $F1                   ;
CODE_0F8380:        STA $E6                   ;
CODE_0F8382:        SEP #$20                  ;
CODE_0F8384:        STZ $E8                   ;
CODE_0F8386:        LDA #$09                  ;
CODE_0F8388:        STA $7ED000,x             ;
CODE_0F838C:        LDA #$0E                  ;
CODE_0F838E:        STA $7ED010,x             ;
CODE_0F8392:        STA $7ED030,x             ;
CODE_0F8396:        STA $7ED050,x             ;
CODE_0F839A:        LDA #$12                  ;
CODE_0F839C:        STA $7ED020,x             ;
CODE_0F83A0:        STA $7ED040,x             ;
CODE_0F83A4:        INX                       ;
CODE_0F83A5:        REP #$20                  ;
CODE_0F83A7:        TXA                       ;
CODE_0F83A8:        AND #$000F                ;
CODE_0F83AB:        BNE CODE_0F83B5           ;
CODE_0F83AD:        TXA                       ;
CODE_0F83AE:        CLC                       ;
CODE_0F83AF:        ADC #$00F0                ;
CODE_0F83B2:        TAX                       ;
CODE_0F83B3:        INC $E8                   ;
CODE_0F83B5:        SEP #$20                  ;
CODE_0F83B7:        DEC $E6                   ;
CODE_0F83B9:        LDA $E6                   ;
CODE_0F83BB:        BMI CODE_0F83F4           ;
CODE_0F83BD:        LDA #$09                  ;
CODE_0F83BF:        STA $7ED000,x             ;
CODE_0F83C3:        LDA #$0F                  ;
CODE_0F83C5:        STA $7ED010,x             ;
CODE_0F83C9:        STA $7ED030,x             ;
CODE_0F83CD:        STA $7ED050,x             ;
CODE_0F83D1:        LDA #$13                  ;
CODE_0F83D3:        STA $7ED020,x             ;
CODE_0F83D7:        STA $7ED040,x             ;
CODE_0F83DB:        INX                       ;
CODE_0F83DC:        REP #$20                  ;
CODE_0F83DE:        TXA                       ;
CODE_0F83DF:        AND #$000F                ;
CODE_0F83E2:        BNE CODE_0F83EC           ;
CODE_0F83E4:        TXA                       ;
CODE_0F83E5:        CLC                       ;
CODE_0F83E6:        ADC #$00F0                ;
CODE_0F83E9:        TAX                       ;
CODE_0F83EA:        INC $E8                   ;
CODE_0F83EC:        SEP #$20                  ;
CODE_0F83EE:        DEC $E6                   ;
CODE_0F83F0:        LDA $E6                   ;
CODE_0F83F2:        BPL CODE_0F8386           ;
CODE_0F83F4:        LDX $EB                   ;
CODE_0F83F6:        LDA $F1                   ;
CODE_0F83F8:        CMP #$04                  ;
CODE_0F83FA:        BCC CODE_0F83FE           ;
CODE_0F83FC:        LDA #$04                  ;
CODE_0F83FE:        TAY                       ;
CODE_0F83FF:        LDA $8425,y               ;
CODE_0F8402:        STA $7ECFFF,x             ;
CODE_0F8406:        REP #$20                  ;
CODE_0F8408:        LDA $E8                   ;
CODE_0F840A:        BEQ CODE_0F8412           ;
CODE_0F840C:        TXA                       ;
CODE_0F840D:        CLC                       ;
CODE_0F840E:        ADC #$00F0                ;
CODE_0F8411:        TAX                       ;
CODE_0F8412:        TXA                       ;
CODE_0F8413:        CLC                       ;
CODE_0F8414:        ADC $F1                   ;
CODE_0F8416:        TAX                       ;
CODE_0F8417:        SEP #$20                  ;
CODE_0F8419:        LDA $842A,y               ;
CODE_0F841C:        STA $7ED001,x             ;
CODE_0F8420:        REP #$20                  ;
CODE_0F8422:        JMP CODE_0F8084           ;

DATA_0F8425:        db $08,$08,$04,$04,$08,$0A,$06,$0A
                    db $06,$0A,$01,$02,$03,$02,$04,$01
                    db $02,$02,$03,$02,$02,$04,$07,$08
                    db $09,$07,$0E,$08,$0E,$09,$01,$03
                    db $04,$04,$06,$02,$04,$02,$00,$05
                    db $0C,$0F,$14

CODE_0F8450:        INC $EB                   ;
CODE_0F8452:        LDA $EB                   ;
CODE_0F8454:        CLC                       ;
CODE_0F8455:        ADC #$0010                ;
CODE_0F8458:        STA $EB                   ;
CODE_0F845A:        BRA CODE_0F845E           ;

CODE_0F845C:        INC $EB                   ;
CODE_0F845E:        LDX $EB                   ;
CODE_0F8460:        LDA $F1                   ;
CODE_0F8462:        TAY                       ;
CODE_0F8463:        LDA $8446,y               ;
CODE_0F8466:        AND #$00FF                ;
CODE_0F8469:        STA $F1                   ;
CODE_0F846B:        LDA $844B,y               ;
CODE_0F846E:        AND #$00FF                ;
CODE_0F8471:        TAY                       ;
CODE_0F8472:        SEP #$20                  ;
CODE_0F8474:        LDA $842F,y               ;
CODE_0F8477:        STA $7ED000,x             ;
CODE_0F847B:        INX                       ;
CODE_0F847C:        INY                       ;
CODE_0F847D:        TXA                       ;
CODE_0F847E:        AND #$0F                  ;
CODE_0F8480:        BNE CODE_0F848C           ;
CODE_0F8482:        REP #$20                  ;
CODE_0F8484:        TXA                       ;
CODE_0F8485:        CLC                       ;
CODE_0F8486:        ADC #$00F0                ;
CODE_0F8489:        TAX                       ;
CODE_0F848A:        SEP #$20                  ;
CODE_0F848C:        DEC $F1                   ;
CODE_0F848E:        BPL CODE_0F8474           ;
CODE_0F8490:        REP #$20                  ;
CODE_0F8492:        JMP CODE_0F8084           ;

DATA_0F8495:        db $05,$0A,$06,$0C


CODE_0F8499:        INC $EB                   ;
CODE_0F849B:        LDA $EB                   ;
CODE_0F849D:        CLC                       ;
CODE_0F849E:        ADC #$0010                ;
CODE_0F84A1:        STA $EB                   ;
CODE_0F84A3:        BRA CODE_0F84A7           ;

CODE_0F84A5:        INC $EB                   ;
CODE_0F84A7:        LDY #$0001                ;
CODE_0F84AA:        BRA CODE_0F84BD           ;

CODE_0F84AC:        INC $EB                   ;
CODE_0F84AE:        LDA $EB                   ;
CODE_0F84B0:        CLC                       ;
CODE_0F84B1:        ADC #$0010                ;
CODE_0F84B4:        STA $EB                   ;
CODE_0F84B6:        BRA CODE_0F84BA           ;

CODE_0F84B8:        INC $EB                   ;
CODE_0F84BA:        LDY #$0000                ;
CODE_0F84BD:        LDX $EB                   ;
CODE_0F84BF:        SEP #$20                  ;
CODE_0F84C1:        LDA $8495,y               ;
CODE_0F84C4:        STA $7ED000,x             ;
CODE_0F84C8:        REP #$20                  ;
CODE_0F84CA:        TXA                       ;
CODE_0F84CB:        CLC                       ;
CODE_0F84CC:        ADC #$0010                ;
CODE_0F84CF:        TAX                       ;
CODE_0F84D0:        SEP #$20                  ;
CODE_0F84D2:        DEC $F1                   ;
CODE_0F84D4:        LDA $7ED000,x             ;
CODE_0F84D8:        CMP #$0E                  ;
CODE_0F84DA:        BNE CODE_0F84E0           ;
CODE_0F84DC:        LDA #$0D                  ;
CODE_0F84DE:        BRA CODE_0F84EB           ;

CODE_0F84E0:        CMP #$02                  ;
CODE_0F84E2:        BNE CODE_0F84E8           ;
CODE_0F84E4:        LDA #$0B                  ;
CODE_0F84E6:        BRA CODE_0F84EB           ;

CODE_0F84E8:        LDA $8497,y               ;
CODE_0F84EB:        STA $7ED000,x             ;
CODE_0F84EF:        REP #$20                  ;
CODE_0F84F1:        TXA                       ;
CODE_0F84F2:        CLC                       ;
CODE_0F84F3:        ADC #$0010                ;
CODE_0F84F6:        TAX                       ;
CODE_0F84F7:        SEP #$20                  ;
CODE_0F84F9:        DEC $F1                   ;
CODE_0F84FB:        BPL CODE_0F84D4           ;
CODE_0F84FD:        REP #$20                  ;
CODE_0F84FF:        JMP CODE_0F8084           ;

CODE_0F8502:        LDA $EB                   ;
CODE_0F8504:        CLC                       ;
CODE_0F8505:        ADC #$0010                ;
CODE_0F8508:        TAX                       ;
CODE_0F8509:        SEP #$20                  ;
CODE_0F850B:        LDA #$4E                  ;
CODE_0F850D:        STA $7ED030,x             ;
CODE_0F8511:        LDA $7ED000,x             ;
CODE_0F8515:        BEQ CODE_0F851B           ;
CODE_0F8517:        LDA #$38                  ;
CODE_0F8519:        BRA CODE_0F851D           ;

CODE_0F851B:        LDA #$34                  ;
CODE_0F851D:        STA $7ED000,x             ;
CODE_0F8521:        LDA $7ED010,x             ;
CODE_0F8525:        BEQ CODE_0F852F           ;
CODE_0F8527:        CMP #$12                  ;
CODE_0F8529:        BEQ CODE_0F852F           ;
CODE_0F852B:        LDA #$44                  ;
CODE_0F852D:        BRA CODE_0F8531           ;

CODE_0F852F:        LDA #$40                  ;
CODE_0F8531:        STA $7ED010,x             ;
CODE_0F8535:        LDA $7ED020,x             ;
CODE_0F8539:        BEQ CODE_0F8543           ;
CODE_0F853B:        CMP #$12                  ;
CODE_0F853D:        BEQ CODE_0F8543           ;
CODE_0F853F:        LDA #$4D                  ;
CODE_0F8541:        BRA CODE_0F8545           ;

CODE_0F8543:        LDA #$4C                  ;
CODE_0F8545:        STA $7ED020,x             ;
CODE_0F8549:        INX                       ;
CODE_0F854A:        LDA $7ED000,x             ;
CODE_0F854E:        BEQ CODE_0F856C           ;
CODE_0F8550:        CMP #$12                  ;
CODE_0F8552:        BEQ CODE_0F856C           ;
CODE_0F8554:        CMP #$18                  ;
CODE_0F8556:        BEQ CODE_0F8568           ;
CODE_0F8558:        CMP #$07                  ;
CODE_0F855A:        BEQ CODE_0F8568           ;
CODE_0F855C:        CMP #$17                  ;
CODE_0F855E:        BEQ CODE_0F8564           ;
CODE_0F8560:        LDA #$39                  ;
CODE_0F8562:        BRA CODE_0F856E           ;

CODE_0F8564:        LDA #$3D                  ;
CODE_0F8566:        BRA CODE_0F856E           ;

CODE_0F8568:        LDA #$36                  ;
CODE_0F856A:        BRA CODE_0F856E           ;

CODE_0F856C:        LDA #$35                  ;
CODE_0F856E:        STA $7ED000,x             ;
CODE_0F8572:        LDA #$41                  ;
CODE_0F8574:        STA $7ED010,x             ;
CODE_0F8578:        LDA #$48                  ;
CODE_0F857A:        STA $7ED020,x             ;
CODE_0F857E:        LDA #$4E                  ;
CODE_0F8580:        STA $7ED030,x             ;
CODE_0F8584:        INX                       ;
CODE_0F8585:        DEC $F1                   ;
CODE_0F8587:        LDA $F1                   ;
CODE_0F8589:        BNE CODE_0F858E           ;
CODE_0F858B:        JMP CODE_0F860E           ;

CODE_0F858E:        LDA $7ED000,x             ;
CODE_0F8592:        BNE CODE_0F85AE           ;
CODE_0F8594:        LDA #$36                  ;
CODE_0F8596:        STA $7ED000,x             ;
CODE_0F859A:        LDA #$35                  ;
CODE_0F859C:        STA $7ED001,x             ;
CODE_0F85A0:        LDA #$42                  ;
CODE_0F85A2:        STA $7ED010,x             ;
CODE_0F85A6:        LDA #$41                  ;
CODE_0F85A8:        STA $7ED011,x             ;
CODE_0F85AC:        BRA CODE_0F85E4           ;

CODE_0F85AE:        CMP #$18                  ;
CODE_0F85B0:        BEQ CODE_0F85CC           ;
CODE_0F85B2:        LDA #$3A                  ;
CODE_0F85B4:        STA $7ED000,x             ;
CODE_0F85B8:        LDA #$39                  ;
CODE_0F85BA:        STA $7ED001,x             ;
CODE_0F85BE:        LDA #$42                  ;
CODE_0F85C0:        STA $7ED010,x             ;
CODE_0F85C4:        LDA #$41                  ;
CODE_0F85C6:        STA $7ED011,x             ;
CODE_0F85CA:        BRA CODE_0F85E4           ;

CODE_0F85CC:        LDA #$36                  ;
CODE_0F85CE:        STA $7ED000,x             ;
CODE_0F85D2:        LDA #$35                  ;
CODE_0F85D4:        STA $7ED001,x             ;
CODE_0F85D8:        LDA #$42                  ;
CODE_0F85DA:        STA $7ED010,x             ;
CODE_0F85DE:        LDA #$41                  ;
CODE_0F85E0:        STA $7ED011,x             ;
CODE_0F85E4:        LDA #$47                  ;
CODE_0F85E6:        STA $7ED020,x             ;
CODE_0F85EA:        LDA #$48                  ;
CODE_0F85EC:        STA $7ED021,x             ;
CODE_0F85F0:        LDA #$4E                  ;
CODE_0F85F2:        STA $7ED030,x             ;
CODE_0F85F6:        STA $7ED031,x             ;
CODE_0F85FA:        INX                       ;
CODE_0F85FB:        INX                       ;
CODE_0F85FC:        TXA                       ;
CODE_0F85FD:        AND #$0F                  ;
CODE_0F85FF:        BNE CODE_0F8585           ;
CODE_0F8601:        REP #$20                  ;
CODE_0F8603:        TXA                       ;
CODE_0F8604:        CLC                       ;
CODE_0F8605:        ADC #$00F0                ;
CODE_0F8608:        TAX                       ;
CODE_0F8609:        SEP #$20                  ;
CODE_0F860B:        JMP CODE_0F8585           ;

CODE_0F860E:        LDA #$42                  ;
CODE_0F8610:        STA $7ED010,x             ;
CODE_0F8614:        LDA #$47                  ;
CODE_0F8616:        STA $7ED020,x             ;
CODE_0F861A:        LDA #$4E                  ;
CODE_0F861C:        STA $7ED030,x             ;
CODE_0F8620:        STA $7ED031,x             ;
CODE_0F8624:        LDA $7ED000,x             ;
CODE_0F8628:        BNE CODE_0F8644           ;
CODE_0F862A:        LDA #$36                  ;
CODE_0F862C:        STA $7ED000,x             ;
CODE_0F8630:        LDA #$37                  ;
CODE_0F8632:        STA $7ED001,x             ;
CODE_0F8636:        LDA #$43                  ;
CODE_0F8638:        STA $7ED011,x             ;
CODE_0F863C:        LDA #$49                  ;
CODE_0F863E:        STA $7ED021,x             ;
CODE_0F8642:        BRA CODE_0F865C           ;

CODE_0F8644:        LDA #$3A                  ;
CODE_0F8646:        STA $7ED000,x             ;
CODE_0F864A:        LDA #$3B                  ;
CODE_0F864C:        STA $7ED001,x             ;
CODE_0F8650:        LDA #$45                  ;
CODE_0F8652:        STA $7ED011,x             ;
CODE_0F8656:        LDA #$4A                  ;
CODE_0F8658:        STA $7ED021,x             ;
CODE_0F865C:        REP #$20                  ;
CODE_0F865E:        JMP CODE_0F8084           ;

CODE_0F8661:        INC $EB                   ;
CODE_0F8663:        LDX $EB                   ;
CODE_0F8665:        STX $E2                   ;
CODE_0F8667:        LDA $EF                   ;
CODE_0F8669:        ASL A                     ;
CODE_0F866A:        TAY                       ;
CODE_0F866B:        LDA $87FF,y               ;
CODE_0F866E:        TAY                       ;
CODE_0F866F:        SEP #$20                  ;
CODE_0F8671:        LDA $B46D,y               ;
CODE_0F8674:        BEQ CODE_0F8685           ;
CODE_0F8676:        CMP #$FF                  ;
CODE_0F8678:        BEQ CODE_0F86A9           ;
CODE_0F867A:        CMP #$FE                  ;
CODE_0F867C:        BEQ CODE_0F8699           ;
CODE_0F867E:        LDA $B46D,y               ;
CODE_0F8681:        STA $7ED000,x             ;
CODE_0F8685:        INY                       ;
CODE_0F8686:        INX                       ;
CODE_0F8687:        REP #$20                  ;
CODE_0F8689:        TXA                       ;
CODE_0F868A:        AND #$000F                ;
CODE_0F868D:        BNE CODE_0F8695           ;
CODE_0F868F:        TXA                       ;
CODE_0F8690:        CLC                       ;
CODE_0F8691:        ADC #$00F0                ;
CODE_0F8694:        TAX                       ;
CODE_0F8695:        SEP #$20                  ;
CODE_0F8697:        BRA CODE_0F8671           ;

CODE_0F8699:        REP #$20                  ;
CODE_0F869B:        LDA $E2                   ;
CODE_0F869D:        CLC                       ;
CODE_0F869E:        ADC #$0010                ;
CODE_0F86A1:        STA $E2                   ;
CODE_0F86A3:        TAX                       ;
CODE_0F86A4:        SEP #$20                  ;
CODE_0F86A6:        INY                       ;
CODE_0F86A7:        BRA CODE_0F8671           ;

CODE_0F86A9:        REP #$20                  ;
CODE_0F86AB:        JMP CODE_0F8084           ;

CODE_0F86AE:        LDA $EB                   ;
CODE_0F86B0:        CLC                       ;
CODE_0F86B1:        ADC #$0010                ;
CODE_0F86B4:        TAX                       ;
CODE_0F86B5:        INX                       ;
CODE_0F86B6:        BRA CODE_0F86C5           ;

CODE_0F86B8:        LDA $EB                   ;
CODE_0F86BA:        CLC                       ;
CODE_0F86BB:        ADC #$0010                ;
CODE_0F86BE:        TAX                       ;
CODE_0F86BF:        BRA CODE_0F86C5           ;

CODE_0F86C1:        INC $EB                   ;
CODE_0F86C3:        LDX $EB                   ;
CODE_0F86C5:        STX $E2                   ;
CODE_0F86C7:        LDA $EF                   ;
CODE_0F86C9:        ASL A                     ;
CODE_0F86CA:        TAY                       ;
CODE_0F86CB:        LDA $881F,y               ;
CODE_0F86CE:        TAY                       ;
CODE_0F86CF:        SEP #$20                  ;
CODE_0F86D1:        LDA $B52C,y               ;
CODE_0F86D4:        BEQ CODE_0F86E5           ;
CODE_0F86D6:        CMP #$FF                  ;
CODE_0F86D8:        BEQ CODE_0F8709           ;
CODE_0F86DA:        CMP #$FE                  ;
CODE_0F86DC:        BEQ CODE_0F86F9           ;
CODE_0F86DE:        LDA $B52C,y               ;
CODE_0F86E1:        STA $7ED000,x             ;
CODE_0F86E5:        INY                       ;
CODE_0F86E6:        INX                       ;
CODE_0F86E7:        REP #$20                  ;
CODE_0F86E9:        TXA                       ;
CODE_0F86EA:        AND #$000F                ;
CODE_0F86ED:        BNE CODE_0F86F5           ;
CODE_0F86EF:        TXA                       ;
CODE_0F86F0:        CLC                       ;
CODE_0F86F1:        ADC #$00F0                ;
CODE_0F86F4:        TAX                       ;
CODE_0F86F5:        SEP #$20                  ;
CODE_0F86F7:        BRA CODE_0F86D1           ;

CODE_0F86F9:        REP #$20                  ;
CODE_0F86FB:        LDA $E2                   ;
CODE_0F86FD:        CLC                       ;
CODE_0F86FE:        ADC #$0010                ;
CODE_0F8701:        STA $E2                   ;
CODE_0F8703:        TAX                       ;
CODE_0F8704:        SEP #$20                  ;
CODE_0F8706:        INY                       ;
CODE_0F8707:        BRA CODE_0F86D1           ;

CODE_0F8709:        REP #$20                  ;
CODE_0F870B:        JMP CODE_0F8084           ;

CODE_0F870E:        LDX $EB                   ;
CODE_0F8710:        STX $E2                   ;
CODE_0F8712:        LDA $EF                   ;
CODE_0F8714:        ASL A                     ;
CODE_0F8715:        TAY                       ;
CODE_0F8716:        LDA $8833,y               ;
CODE_0F8719:        TAY                       ;
CODE_0F871A:        SEP #$20                  ;
CODE_0F871C:        LDA $AE92,y               ;
CODE_0F871F:        BEQ CODE_0F872D           ;
CODE_0F8721:        CMP #$FF                  ;
CODE_0F8723:        BEQ CODE_0F8759           ;
CODE_0F8725:        CMP #$FE                  ;
CODE_0F8727:        BEQ CODE_0F8741           ;
CODE_0F8729:        STA $7ED000,x             ;
CODE_0F872D:        INY                       ;
CODE_0F872E:        INX                       ;
CODE_0F872F:        REP #$20                  ;
CODE_0F8731:        TXA                       ;
CODE_0F8732:        AND #$000F                ;
CODE_0F8735:        BNE CODE_0F873D           ;
CODE_0F8737:        TXA                       ;
CODE_0F8738:        CLC                       ;
CODE_0F8739:        ADC #$00F0                ;
CODE_0F873C:        TAX                       ;
CODE_0F873D:        SEP #$20                  ;
CODE_0F873F:        BRA CODE_0F871C           ;

CODE_0F8741:        REP #$20                  ;
CODE_0F8743:        LDA $E2                   ;
CODE_0F8745:        CLC                       ;
CODE_0F8746:        ADC #$0010                ;
CODE_0F8749:        STA $E2                   ;
CODE_0F874B:        TAX                       ;
CODE_0F874C:        AND #$00F0                ;
CODE_0F874F:        CMP #$00F0                ;
CODE_0F8752:        BEQ CODE_0F8759           ;
CODE_0F8754:        SEP #$20                  ;
CODE_0F8756:        INY                       ;
CODE_0F8757:        BRA CODE_0F871C           ;

CODE_0F8759:        REP #$20                  ;
CODE_0F875B:        JMP CODE_0F8084           ;

CODE_0F875E:        DEC $EF                   ;
CODE_0F8760:        LDA $EF                   ;
CODE_0F8762:        AND #$0003                ;
CODE_0F8765:        ASL A                     ;
CODE_0F8766:        ASL A                     ;
CODE_0F8767:        ASL A                     ;
CODE_0F8768:        ASL A                     ;
CODE_0F8769:        ORA $F1                   ;
CODE_0F876B:        ASL A                     ;
CODE_0F876C:        ASL A                     ;
CODE_0F876D:        TAY                       ;
CODE_0F876E:        LDX $EB                   ;
CODE_0F8770:        SEP #$20                  ;
CODE_0F8772:        LDA $92E2,y               ;
CODE_0F8775:        STA $7ED000,x             ;
CODE_0F8779:        LDA $92E3,y               ;
CODE_0F877C:        STA $7ED001,x             ;
CODE_0F8780:        LDA $92E4,y               ;
CODE_0F8783:        STA $7ED010,x             ;
CODE_0F8787:        LDA $92E5,y               ;
CODE_0F878A:        STA $7ED011,x             ;
CODE_0F878E:        REP #$20                  ;
CODE_0F8790:        JMP CODE_0F8084           ;

DATA_0F8793:        db $04,$05,$0B,$0C,$0B,$0C

CODE_0F8799:        INC $EB                   ;
CODE_0F879B:        LDA $EB                   ;
CODE_0F879D:        CLC                       ;
CODE_0F879E:        ADC #$0020                ;
CODE_0F87A1:        TAX                       ;
CODE_0F87A2:        SEP #$20                  ;
CODE_0F87A4:        LDA $8793                 ;
CODE_0F87A7:        STA $7ED000,x             ;
CODE_0F87AB:        LDA $8794                 ;
CODE_0F87AE:        STA $7ED001,x             ;
CODE_0F87B2:        LDA $8795                 ;
CODE_0F87B5:        STA $7ED010,x             ;
CODE_0F87B9:        LDA $8796                 ;
CODE_0F87BC:        STA $7ED011,x             ;
CODE_0F87C0:        LDA $8797                 ;
CODE_0F87C3:        STA $7ED020,x             ;
CODE_0F87C7:        LDA $8798                 ;
CODE_0F87CA:        STA $7ED021,x             ;
CODE_0F87CE:        REP #$20                  ;
CODE_0F87D0:        JMP CODE_0F8084           ;

CODE_0F87D3:        INC $EB                   ;
CODE_0F87D5:        LDA $EB                   ;
CODE_0F87D7:        CLC                       ;
CODE_0F87D8:        ADC #$0020                ;
CODE_0F87DB:        TAX                       ;
CODE_0F87DC:        SEP #$20                  ;
CODE_0F87DE:        LDA $8793                 ;
CODE_0F87E1:        STA $7ED010,x             ;
CODE_0F87E5:        LDA $8794                 ;
CODE_0F87E8:        STA $7ED011,x             ;
CODE_0F87EC:        LDA $8795                 ;
CODE_0F87EF:        STA $7ED020,x             ;
CODE_0F87F3:        LDA $8796                 ;
CODE_0F87F6:        STA $7ED021,x             ;
CODE_0F87FA:        REP #$20                  ;
CODE_0F87FC:        JMP CODE_0F8084           ;

DATA_0F87FF:        db $00,$00,$00,$00,$1F,$00,$1F,$00
                    db $3D,$00,$3D,$00,$44,$00,$44,$00
                    db $54,$00,$54,$00,$6E,$00,$00,$00
                    db $B3,$00,$B3,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$04,$00,$18,$00,$2C,$00
                    db $52,$00,$90,$00,$00,$00,$31,$00
                    db $3B,$00,$83,$00,$F5,$00,$4B,$01
                    db $52,$01,$62,$01,$AC,$01,$06,$02
                    db $8D,$02,$D5,$02,$F2,$02,$79,$03
                    db $A0,$03,$9A,$00,$A7,$00,$C9,$00
                    db $D0,$00,$DC,$00,$06,$01,$26,$01

CODE_0F885F:        LDY $8851                 ;
CODE_0F8862:        LDA $EB                   ;
CODE_0F8864:        TAX                       ;
CODE_0F8865:        INX                       ;
CODE_0F8866:        INX                       ;
CODE_0F8867:        BRA CODE_0F88BF           ;

CODE_0F8869:        LDY $8853                 ;
CODE_0F886C:        LDA $EB                   ;
CODE_0F886E:        CLC                       ;
CODE_0F886F:        ADC #$0012                ;
CODE_0F8872:        TAX                       ;
CODE_0F8873:        BRA CODE_0F88BF           ;

CODE_0F8875:        LDY $8855                 ;
CODE_0F8878:        LDA $EB                   ;
CODE_0F887A:        CLC                       ;
CODE_0F887B:        ADC #$0001                ;
CODE_0F887E:        TAX                       ;
CODE_0F887F:        BRA CODE_0F88BF           ;

CODE_0F8881:        LDY $8857                 ;
CODE_0F8884:        LDA $EB                   ;
CODE_0F8886:        CLC                       ;
CODE_0F8887:        ADC #$0011                ;
CODE_0F888A:        TAX                       ;
CODE_0F888B:        BRA CODE_0F88BF           ;

CODE_0F888D:        LDY $8859                 ;
CODE_0F8890:        LDA $EB                   ;
CODE_0F8892:        CLC                       ;
CODE_0F8893:        ADC #$0020                ;
CODE_0F8896:        TAX                       ;
CODE_0F8897:        BRA CODE_0F88BF           ;

CODE_0F8899:        LDY $885B                 ;
CODE_0F889C:        LDX $EB                   ;
CODE_0F889E:        INX                       ;
CODE_0F889F:        BRA CODE_0F88BF           ;

CODE_0F88A1:        LDY $885D                 ;
CODE_0F88A4:        LDA $EB                   ;
CODE_0F88A6:        CLC                       ;
CODE_0F88A7:        ADC #$0012                ;
CODE_0F88AA:        TAX                       ;
CODE_0F88AB:        BRA CODE_0F88BF           ;

CODE_0F88AD:        INC $EB                   ;
CODE_0F88AF:        LDA $EB                   ;
CODE_0F88B1:        CLC                       ;
CODE_0F88B2:        ADC #$0010                ;
CODE_0F88B5:        TAX                       ;
CODE_0F88B6:        BRA CODE_0F88BC           ;

CODE_0F88B8:        INC $EB                   ;
CODE_0F88BA:        LDX $EB                   ;
CODE_0F88BC:        LDY #$0000                ;
CODE_0F88BF:        STX $E2                   ;
CODE_0F88C1:        SEP #$20                  ;
CODE_0F88C3:        LDA $B2EF,y               ;
CODE_0F88C6:        CMP #$FF                  ;
CODE_0F88C8:        BEQ CODE_0F893B           ;
CODE_0F88CA:        CMP #$FE                  ;
CODE_0F88CC:        BEQ CODE_0F8916           ;
CODE_0F88CE:        JSR CODE_0F88E9           ;
CODE_0F88D1:        STA $7ED000,x             ;
CODE_0F88D5:        INY                       ;
CODE_0F88D6:        INX                       ;
CODE_0F88D7:        REP #$20                  ;
CODE_0F88D9:        TXA                       ;
CODE_0F88DA:        AND #$000F                ;
CODE_0F88DD:        BNE CODE_0F88E5           ;
CODE_0F88DF:        TXA                       ;
CODE_0F88E0:        CLC                       ;
CODE_0F88E1:        ADC #$00F0                ;
CODE_0F88E4:        TAX                       ;
CODE_0F88E5:        SEP #$20                  ;
CODE_0F88E7:        BRA CODE_0F88C3           ;

CODE_0F88E9:        STA $E4                   ;
CODE_0F88EB:        CMP #$12                  ;
CODE_0F88ED:        BNE CODE_0F88F2           ;
CODE_0F88EF:        JMP CODE_0F8940           ;

CODE_0F88F2:        CMP #$03                  ;
CODE_0F88F4:        BNE CODE_0F88F9           ;
CODE_0F88F6:        JMP CODE_0F896D           ;

CODE_0F88F9:        CMP #$04                  ;
CODE_0F88FB:        BNE CODE_0F8900           ;
CODE_0F88FD:        JMP CODE_0F897A           ;

CODE_0F8900:        CMP #$05                  ;
CODE_0F8902:        BNE CODE_0F8907           ;
CODE_0F8904:        JMP CODE_0F898F           ;

CODE_0F8907:        CMP #$18                  ;
CODE_0F8909:        BNE CODE_0F890E           ;
CODE_0F890B:        JMP CODE_0F89A4           ;

CODE_0F890E:        CMP #$07                  ;
CODE_0F8910:        BNE CODE_0F8915           ;
CODE_0F8912:        JMP CODE_0F89C1           ;

CODE_0F8915:        RTS                       ;

CODE_0F8916:        INY                       ;
CODE_0F8917:        REP #$20                  ;
CODE_0F8919:        LDA $E2                   ;
CODE_0F891B:        CLC                       ;
CODE_0F891C:        ADC #$0010                ;
CODE_0F891F:        TAX                       ;
CODE_0F8920:        AND #$00F0                ;
CODE_0F8923:        BEQ CODE_0F893B           ;
CODE_0F8925:        DEX                       ;
CODE_0F8926:        TXA                       ;
CODE_0F8927:        AND #$000F                ;
CODE_0F892A:        CMP #$000F                ;
CODE_0F892D:        BNE CODE_0F8935           ;
CODE_0F892F:        TXA                       ;
CODE_0F8930:        SEC                       ;
CODE_0F8931:        SBC #$00F0                ;
CODE_0F8934:        TAX                       ;
CODE_0F8935:        STX $E2                   ;
CODE_0F8937:        SEP #$20                  ;
CODE_0F8939:        BRA CODE_0F88C3           ;

CODE_0F893B:        REP #$20                  ;
CODE_0F893D:        JMP CODE_0F8084           ;

CODE_0F8940:        LDA $7ED000,x             ;
CODE_0F8944:        BEQ CODE_0F896A           ;
CODE_0F8946:        CMP #$18                  ;
CODE_0F8948:        BNE CODE_0F894E           ;
CODE_0F894A:        LDA #$02                  ;
CODE_0F894C:        BRA CODE_0F896C           ;

CODE_0F894E:        CMP #$06                  ;
CODE_0F8950:        BNE CODE_0F8956           ;
CODE_0F8952:        LDA #$11                  ;
CODE_0F8954:        BRA CODE_0F896C           ;

CODE_0F8956:        CMP #$16                  ;
CODE_0F8958:        BNE CODE_0F895E           ;
CODE_0F895A:        LDA #$01                  ;
CODE_0F895C:        BRA CODE_0F896C           ;

CODE_0F895E:        CMP #$05                  ;
CODE_0F8960:        BNE CODE_0F8966           ;
CODE_0F8962:        LDA #$62                  ;
CODE_0F8964:        BRA CODE_0F896C           ;

CODE_0F8966:        LDA #$10                  ;
CODE_0F8968:        BRA CODE_0F896C           ;

CODE_0F896A:        LDA $E4                   ;
CODE_0F896C:        RTS                       ;

CODE_0F896D:        LDA $7ED000,x             ;
CODE_0F8971:        BEQ CODE_0F8977           ;
CODE_0F8973:        LDA #$36                  ;
CODE_0F8975:        BRA CODE_0F8979           ;

CODE_0F8977:        LDA $E4                   ;
CODE_0F8979:        RTS                       ;

CODE_0F897A:        LDA $7ED000,x             ;
CODE_0F897E:        BEQ CODE_0F898C           ;
CODE_0F8980:        CMP #$12                  ;
CODE_0F8982:        BNE CODE_0F8988           ;
CODE_0F8984:        LDA #$14                  ;
CODE_0F8986:        BRA CODE_0F898E           ;

CODE_0F8988:        LDA #$37                  ;
CODE_0F898A:        BRA CODE_0F898E           ;

CODE_0F898C:        LDA $E4                   ;
CODE_0F898E:        RTS                       ;

CODE_0F898F:        LDA $7ED000,x             ;
CODE_0F8993:        BEQ CODE_0F89A1           ;
CODE_0F8995:        CMP #$13                  ;
CODE_0F8997:        BNE CODE_0F899D           ;
CODE_0F8999:        LDA #$15                  ;
CODE_0F899B:        BRA CODE_0F89A3           ;

CODE_0F899D:        LDA #$38                  ;
CODE_0F899F:        BRA CODE_0F89A3           ;

CODE_0F89A1:        LDA $E4                   ;
CODE_0F89A3:        RTS                       ;

CODE_0F89A4:        LDA $7ED000,x             ;
CODE_0F89A8:        BEQ CODE_0F89BE           ;
CODE_0F89AA:        CMP #$16                  ;
CODE_0F89AC:        BNE CODE_0F89B2           ;
CODE_0F89AE:        LDA #$1E                  ;
CODE_0F89B0:        BRA CODE_0F89C0           ;

CODE_0F89B2:        CMP #$13                  ;
CODE_0F89B4:        BNE CODE_0F89BA           ;
CODE_0F89B6:        LDA #$1E                  ;
CODE_0F89B8:        BRA CODE_0F89C0           ;

CODE_0F89BA:        LDA #$1D                  ;
CODE_0F89BC:        BRA CODE_0F89C0           ;

CODE_0F89BE:        LDA $E4                   ;
CODE_0F89C0:        RTS                       ;

CODE_0F89C1:        LDA $7ED000,x             ;
CODE_0F89C5:        BEQ CODE_0F89E3           ;
CODE_0F89C7:        CMP #$16                  ;
CODE_0F89C9:        BNE CODE_0F89CF           ;
CODE_0F89CB:        LDA #$0E                  ;
CODE_0F89CD:        BRA CODE_0F89E5           ;

CODE_0F89CF:        CMP #$04                  ;
CODE_0F89D1:        BNE CODE_0F89D7           ;
CODE_0F89D3:        LDA #$70                  ;
CODE_0F89D5:        BRA CODE_0F89E5           ;

CODE_0F89D7:        CMP #$0B                  ;
CODE_0F89D9:        BNE CODE_0F89DF           ;
CODE_0F89DB:        LDA #$90                  ;
CODE_0F89DD:        BRA CODE_0F89E5           ;

CODE_0F89DF:        LDA #$49                  ;
CODE_0F89E1:        BRA CODE_0F89E5           ;

CODE_0F89E3:        LDA $E4                   ;
CODE_0F89E5:        RTS                       ;

DATA_0F89E6:        db $00,$00,$90,$91,$92,$93,$00,$00
                    db $94,$95,$96,$97,$00,$00,$98,$99
                    db $9A,$9B,$00,$9C,$9D,$9E,$9F,$A0
                    db $00,$A1,$A2,$A3,$A4,$A5,$00,$A6
                    db $A7,$A8,$A9,$AA

CODE_0F8A0A:        SEP #$20                  ;
CODE_0F8A0C:        LDX $EB                   ;
CODE_0F8A0E:        LDY #$0000                ;
CODE_0F8A11:        PHX                       ;
CODE_0F8A12:        LDA $89E6,y               ;
CODE_0F8A15:        STA $7ED020,x             ;
CODE_0F8A19:        JSR CODE_0F8A66           ;
CODE_0F8A1C:        LDA $89E7,y               ;
CODE_0F8A1F:        STA $7ED020,x             ;
CODE_0F8A23:        JSR CODE_0F8A66           ;
CODE_0F8A26:        LDA $89E8,y               ;
CODE_0F8A29:        STA $7ED020,x             ;
CODE_0F8A2D:        JSR CODE_0F8A66           ;
CODE_0F8A30:        LDA $89E9,y               ;
CODE_0F8A33:        STA $7ED020,x             ;
CODE_0F8A37:        JSR CODE_0F8A66           ;
CODE_0F8A3A:        LDA $89EA,y               ;
CODE_0F8A3D:        STA $7ED020,x             ;
CODE_0F8A41:        JSR CODE_0F8A66           ;
CODE_0F8A44:        LDA $89EB,y               ;
CODE_0F8A47:        STA $7ED020,x             ;
CODE_0F8A4B:        PLX                       ;
CODE_0F8A4C:        REP #$20                  ;
CODE_0F8A4E:        TXA                       ;
CODE_0F8A4F:        CLC                       ;
CODE_0F8A50:        ADC #$0010                ;
CODE_0F8A53:        TAX                       ;
CODE_0F8A54:        SEP #$20                  ;
CODE_0F8A56:        INY                       ;
CODE_0F8A57:        INY                       ;
CODE_0F8A58:        INY                       ;
CODE_0F8A59:        INY                       ;
CODE_0F8A5A:        INY                       ;
CODE_0F8A5B:        INY                       ;
CODE_0F8A5C:        CPY #$0024                ;
CODE_0F8A5F:        BNE CODE_0F8A11           ;
CODE_0F8A61:        REP #$20                  ;
CODE_0F8A63:        JMP CODE_0F8084           ;

CODE_0F8A66:        REP #$20                  ;
CODE_0F8A68:        INX                       ;
CODE_0F8A69:        TXA                       ;
CODE_0F8A6A:        AND #$000F                ;
CODE_0F8A6D:        BNE CODE_0F8A75           ;
CODE_0F8A6F:        TXA                       ;
CODE_0F8A70:        CLC                       ;
CODE_0F8A71:        ADC #$00F0                ;
CODE_0F8A74:        TAX                       ;
CODE_0F8A75:        SEP #$20                  ;
CODE_0F8A77:        RTS                       ;

CODE_0F8A78:        LDX $EB                   ;
CODE_0F8A7A:        SEP #$20                  ;
CODE_0F8A7C:        LDA #$09                  ;
CODE_0F8A7E:        STA $7ED020,x             ;
CODE_0F8A82:        LDA #$0B                  ;
CODE_0F8A84:        STA $7ED021,x             ;
CODE_0F8A88:        INX                       ;
CODE_0F8A89:        INX                       ;
CODE_0F8A8A:        DEC $F1                   ;
CODE_0F8A8C:        LDA $F1                   ;
CODE_0F8A8E:        BPL CODE_0F8A7C           ;
CODE_0F8A90:        REP #$20                  ;
CODE_0F8A92:        JMP CODE_0F8084           ;

CODE_0F8A95:        LDX $EB                   ;
CODE_0F8A97:        SEP #$20                  ;
CODE_0F8A99:        LDA $7ED020,x             ;
CODE_0F8A9D:        CMP #$09                  ;
CODE_0F8A9F:        BNE CODE_0F8AA5           ;
CODE_0F8AA1:        LDA #$0A                  ;
CODE_0F8AA3:        BRA CODE_0F8AA7           ;

CODE_0F8AA5:        LDA #$04                  ;
CODE_0F8AA7:        STA $7ED020,x             ;
CODE_0F8AAB:        LDA #$01                  ;
CODE_0F8AAD:        STA $7ED030,x             ;
CODE_0F8AB1:        REP #$20                  ;
CODE_0F8AB3:        TXA                       ;
CODE_0F8AB4:        CLC                       ;
CODE_0F8AB5:        ADC #$0020                ;
CODE_0F8AB8:        TAX                       ;
CODE_0F8AB9:        SEP #$20                  ;
CODE_0F8ABB:        DEC $F1                   ;
CODE_0F8ABD:        LDA $F1                   ;
CODE_0F8ABF:        BPL CODE_0F8A99           ;
CODE_0F8AC1:        REP #$20                  ;
CODE_0F8AC3:        JMP CODE_0F8084           ;

CODE_0F8AC6:        LDX $EB                   ;
CODE_0F8AC8:        SEP #$20                  ;
CODE_0F8ACA:        LDA $7ED021,x             ;
CODE_0F8ACE:        CMP #$0B                  ;
CODE_0F8AD0:        BNE CODE_0F8AD6           ;
CODE_0F8AD2:        LDA #$0A                  ;
CODE_0F8AD4:        BRA CODE_0F8AD8           ;

CODE_0F8AD6:        LDA #$04                  ;
CODE_0F8AD8:        STA $7ED021,x             ;
CODE_0F8ADC:        LDA #$01                  ;
CODE_0F8ADE:        STA $7ED031,x             ;
CODE_0F8AE2:        REP #$20                  ;
CODE_0F8AE4:        TXA                       ;
CODE_0F8AE5:        CLC                       ;
CODE_0F8AE6:        ADC #$0020                ;
CODE_0F8AE9:        TAX                       ;
CODE_0F8AEA:        SEP #$20                  ;
CODE_0F8AEC:        DEC $F1                   ;
CODE_0F8AEE:        LDA $F1                   ;
CODE_0F8AF0:        BPL CODE_0F8ACA           ;
CODE_0F8AF2:        REP #$20                  ;
CODE_0F8AF4:        JMP CODE_0F8084           ;

DATA_0F8AF7:        db $7A,$7B,$61,$62,$8C,$8D,$90,$91
                    db $92

CODE_0F8B00:        LDX $EB                   ;
CODE_0F8B02:        LDA #$0006                ;
CODE_0F8B05:        STA $F1                   ;
CODE_0F8B07:        SEP #$20                  ;
CODE_0F8B09:        LDA $8AF7                 ;
CODE_0F8B0C:        STA $7ED020,x             ;
CODE_0F8B10:        LDA $8AF8                 ;
CODE_0F8B13:        STA $7ED021,x             ;
CODE_0F8B17:        LDA $8AF9                 ;
CODE_0F8B1A:        STA $7ED030,x             ;
CODE_0F8B1E:        LDA $8AFA                 ;
CODE_0F8B21:        STA $7ED031,x             ;
CODE_0F8B25:        REP #$20                  ;
CODE_0F8B27:        TXA                       ;
CODE_0F8B28:        CLC                       ;
CODE_0F8B29:        ADC #$0010                ;
CODE_0F8B2C:        TAX                       ;
CODE_0F8B2D:        SEP #$20                  ;
CODE_0F8B2F:        DEC $F1                   ;
CODE_0F8B31:        LDA $F1                   ;
CODE_0F8B33:        BNE CODE_0F8B17           ;
CODE_0F8B35:        LDA $8AFB                 ;
CODE_0F8B38:        STA $7ED030,x             ;
CODE_0F8B3C:        LDA $8AFC                 ;
CODE_0F8B3F:        STA $7ED031,x             ;
CODE_0F8B43:        LDA $8AFD                 ;
CODE_0F8B46:        STA $7ED040,x             ;
CODE_0F8B4A:        LDA $8AFE                 ;
CODE_0F8B4D:        STA $7ED041,x             ;
CODE_0F8B51:        LDA $8AFF                 ;
CODE_0F8B54:        STA $7ED042,x             ;
CODE_0F8B58:        REP #$20                  ;
CODE_0F8B5A:        JMP CODE_0F8084           ;

CODE_0F8B5D:        db $70,$71,$72,$73,$74,$75,$76,$77
                    db $78,$79,$7A,$7B,$00,$7C,$7D,$00

CODE_0F8B6D:        LDX $EB                   ;
CODE_0F8B6F:        INX                       ;
CODE_0F8B70:        SEP #$20                  ;
CODE_0F8B72:        STZ $E5                   ;
CODE_0F8B74:        LDY #$0000                ;
CODE_0F8B77:        LDA $8B5D,y               ;
CODE_0F8B7A:        STA $7ED000,x             ;
CODE_0F8B7E:        LDA $8B5E,y               ;
CODE_0F8B81:        STA $7ED001,x             ;
CODE_0F8B85:        LDA $8B5F,y               ;
CODE_0F8B88:        STA $7ED002,x             ;
CODE_0F8B8C:        LDA $8B60,y               ;
CODE_0F8B8F:        STA $7ED003,x             ;
CODE_0F8B93:        INY                       ;
CODE_0F8B94:        INY                       ;
CODE_0F8B95:        INY                       ;
CODE_0F8B96:        INY                       ;
CODE_0F8B97:        INX                       ;
CODE_0F8B98:        INX                       ;
CODE_0F8B99:        INX                       ;
CODE_0F8B9A:        INX                       ;
CODE_0F8B9B:        REP #$20                  ;
CODE_0F8B9D:        TXA                       ;
CODE_0F8B9E:        CLC                       ;
CODE_0F8B9F:        ADC #$000C                ;
CODE_0F8BA2:        TAX                       ;
CODE_0F8BA3:        SEP #$20                  ;
CODE_0F8BA5:        INC $E5                   ;
CODE_0F8BA7:        LDA $E5                   ;
CODE_0F8BA9:        CMP #$04                  ;
CODE_0F8BAB:        BNE CODE_0F8B77           ;
CODE_0F8BAD:        REP #$20                  ;
CODE_0F8BAF:        JMP CODE_0F8084           ;

CODE_0F8BB2:        db $2F,$30,$31,$32,$35,$36,$3A,$3B

CODE_0F8BBA:        SEP #$20                  ;
CODE_0F8BBC:        LDY #$0000                ;
CODE_0F8BBF:        LDX $EB                   ;
CODE_0F8BC1:        LDA $8BB2,y               ;
CODE_0F8BC4:        STA $7ED020,x             ;
CODE_0F8BC8:        LDA $8BB3,y               ;
CODE_0F8BCB:        STA $7ED021,x             ;
CODE_0F8BCF:        REP #$20                  ;
CODE_0F8BD1:        TXA                       ;
CODE_0F8BD2:        CLC                       ;
CODE_0F8BD3:        ADC #$0010                ;
CODE_0F8BD6:        TAX                       ;
CODE_0F8BD7:        SEP #$20                  ;
CODE_0F8BD9:        INY                       ;
CODE_0F8BDA:        INY                       ;
CODE_0F8BDB:        CPY #$0008                ;
CODE_0F8BDE:        BNE CODE_0F8BC1           ;
CODE_0F8BE0:        REP #$20                  ;
CODE_0F8BE2:        JMP CODE_0F8084           ;

DATA_0F8BE5:        db $01,$1F,$02,$20

CODE_0F8BE9:        SEP #$20                  ;
CODE_0F8BEB:        LDX $EB                   ;
CODE_0F8BED:        LDY $EF                   ;
CODE_0F8BEF:        LDA $8BE5,y               ;
CODE_0F8BF2:        STA $7ED020,x             ;
CODE_0F8BF6:        LDA $8BE7,y               ;
CODE_0F8BF9:        STA $7ED021,x             ;
CODE_0F8BFD:        REP #$20                  ;
CODE_0F8BFF:        TXA                       ;
CODE_0F8C00:        CLC                       ;
CODE_0F8C01:        ADC #$0010                ;
CODE_0F8C04:        TAX                       ;
CODE_0F8C05:        SEP #$20                  ;
CODE_0F8C07:        DEC $F1                   ;
CODE_0F8C09:        LDA $F1                   ;
CODE_0F8C0B:        BPL CODE_0F8BEF           ;
CODE_0F8C0D:        REP #$20                  ;
CODE_0F8C0F:        JMP CODE_0F8084           ;

DATA_0F8C12:        db $08,$09,$05,$06,$07,$05,$03,$04
                    db $05,$0F,$10,$11,$16,$17,$12,$1D
                    db $09,$1E,$06,$07,$05

CODE_0F8C27:        SEP #$20                  ;
CODE_0F8C29:        LDX $EB                   ;
CODE_0F8C2B:        TXA                       ;
CODE_0F8C2C:        AND #$F0                  ;
CODE_0F8C2E:        BEQ CODE_0F8C4F           ;
CODE_0F8C30:        LDA $7ED020,x             ;
CODE_0F8C34:        CMP #$0C                  ;
CODE_0F8C36:        BEQ CODE_0F8C7B           ;
CODE_0F8C38:        LDA $8C12                 ;
CODE_0F8C3B:        STA $7ED020,x             ;
CODE_0F8C3F:        LDA $8C13                 ;
CODE_0F8C42:        STA $7ED021,x             ;
CODE_0F8C46:        LDA $8C14                 ;
CODE_0F8C49:        STA $7ED022,x             ;
CODE_0F8C4D:        BRA CODE_0F8C64           ;

CODE_0F8C4F:        LDA $8C18                 ;
CODE_0F8C52:        STA $7ED020,x             ;
CODE_0F8C56:        LDA $8C19                 ;
CODE_0F8C59:        STA $7ED021,x             ;
CODE_0F8C5D:        LDA $8C1A                 ;
CODE_0F8C60:        STA $7ED022,x             ;
CODE_0F8C64:        LDA $8C15                 ;
CODE_0F8C67:        STA $7ED030,x             ;
CODE_0F8C6B:        LDA $8C16                 ;
CODE_0F8C6E:        STA $7ED031,x             ;
CODE_0F8C72:        LDA $8C17                 ;
CODE_0F8C75:        STA $7ED032,x             ;
CODE_0F8C79:        BRA CODE_0F8CDB           ;

CODE_0F8C7B:        LDA $8C1B                 ;
CODE_0F8C7E:        STA $7ED020,x             ;
CODE_0F8C82:        LDA $8C1C                 ;
CODE_0F8C85:        STA $7ED021,x             ;
CODE_0F8C89:        LDA $8C1D                 ;
CODE_0F8C8C:        STA $7ED022,x             ;
CODE_0F8C90:        LDA $8C1E                 ;
CODE_0F8C93:        STA $7ED030,x             ;
CODE_0F8C97:        LDA $8C1F                 ;
CODE_0F8C9A:        STA $7ED031,x             ;
CODE_0F8C9E:        LDA $8C20                 ;
CODE_0F8CA1:        STA $7ED032,x             ;
CODE_0F8CA5:        LDA $8C21                 ;
CODE_0F8CA8:        STA $7ED040,x             ;
CODE_0F8CAC:        LDA $8C22                 ;
CODE_0F8CAF:        STA $7ED041,x             ;
CODE_0F8CB3:        LDA $8C23                 ;
CODE_0F8CB6:        STA $7ED042,x             ;
CODE_0F8CBA:        LDA $8C24                 ;
CODE_0F8CBD:        STA $7ED050,x             ;
CODE_0F8CC1:        LDA $8C25                 ;
CODE_0F8CC4:        STA $7ED051,x             ;
CODE_0F8CC8:        LDA $8C26                 ;
CODE_0F8CCB:        STA $7ED052,x             ;
CODE_0F8CCF:        REP #$20                  ;
CODE_0F8CD1:        TXA                       ;
CODE_0F8CD2:        CLC                       ;
CODE_0F8CD3:        ADC #$0020                ;
CODE_0F8CD6:        TAX                       ;
CODE_0F8CD7:        SEP #$20                  ;
CODE_0F8CD9:        DEC $F1                   ;
CODE_0F8CDB:        REP #$20                  ;
CODE_0F8CDD:        TXA                       ;
CODE_0F8CDE:        CLC                       ;
CODE_0F8CDF:        ADC #$0020                ;
CODE_0F8CE2:        TAX                       ;
CODE_0F8CE3:        SEP #$20                  ;
CODE_0F8CE5:        DEC $F1                   ;
CODE_0F8CE7:        LDA $F1                   ;
CODE_0F8CE9:        BMI CODE_0F8CEE           ;
CODE_0F8CEB:        JMP CODE_0F8C2B           ;

CODE_0F8CEE:        REP #$20                  ;
CODE_0F8CF0:        JMP CODE_0F8084           ;

DATA_0F8CF3:        db $0C,$18,$19,$0A,$0B,$0D,$0E,$13
                    db $14,$1A,$1B

CODE_0F8CFE:        SEP #$20                  ;
CODE_0F8D00:        LDX $EB                   ;
CODE_0F8D02:        LDA $7ED020,x             ;
CODE_0F8D06:        CMP #$1F                  ;
CODE_0F8D08:        BNE CODE_0F8D47           ;
CODE_0F8D0A:        LDA $8CF6                 ;
CODE_0F8D0D:        STA $7ED010,x             ;
CODE_0F8D11:        LDA $8CF7                 ;
CODE_0F8D14:        STA $7ED011,x             ;
CODE_0F8D18:        LDA $8CF8                 ;
CODE_0F8D1B:        STA $7ED020,x             ;
CODE_0F8D1F:        LDA $8CF9                 ;
CODE_0F8D22:        STA $7ED021,x             ;
CODE_0F8D26:        LDA $8CFA                 ;
CODE_0F8D29:        STA $7ED030,x             ;
CODE_0F8D2D:        LDA $8CFB                 ;
CODE_0F8D30:        STA $7ED031,x             ;
CODE_0F8D34:        LDA $8CFC                 ;
CODE_0F8D37:        STA $7ED040,x             ;
CODE_0F8D3B:        LDA $8CFD                 ;
CODE_0F8D3E:        STA $7ED041,x             ;
CODE_0F8D42:        INX                       ;
CODE_0F8D43:        DEC $F1                   ;
CODE_0F8D45:        BRA CODE_0F8D5C           ;

CODE_0F8D47:        LDA $8CF3                 ;
CODE_0F8D4A:        STA $7ED020,x             ;
CODE_0F8D4E:        LDA $8CF4                 ;
CODE_0F8D51:        STA $7ED030,x             ;
CODE_0F8D55:        LDA $8CF5                 ;
CODE_0F8D58:        STA $7ED040,x             ;
CODE_0F8D5C:        INX                       ;
CODE_0F8D5D:        DEC $F1                   ;
CODE_0F8D5F:        LDA $F1                   ;
CODE_0F8D61:        BPL CODE_0F8D02           ;
CODE_0F8D63:        REP #$20                  ;
CODE_0F8D65:        JMP CODE_0F8084           ;

DATA_0F8D68:        db $33,$34,$0D,$37,$13,$3C,$1A,$1B
                    db $33,$34,$38,$39,$3D,$3E,$40,$1B

CODE_0F8D78:        LDX $EB                   ;
CODE_0F8D7A:        SEP #$20                  ;
CODE_0F8D7C:        LDA $7ED020,x             ;
CODE_0F8D80:        CMP #$0C                  ;
CODE_0F8D82:        BEQ CODE_0F8DBE           ;
CODE_0F8D84:        LDA $8D70                 ;
CODE_0F8D87:        STA $7ED010,x             ;
CODE_0F8D8B:        LDA $8D71                 ;
CODE_0F8D8E:        STA $7ED011,x             ;
CODE_0F8D92:        LDA $8D72                 ;
CODE_0F8D95:        STA $7ED020,x             ;
CODE_0F8D99:        LDA $8D73                 ;
CODE_0F8D9C:        STA $7ED021,x             ;
CODE_0F8DA0:        LDA $8D74                 ;
CODE_0F8DA3:        STA $7ED030,x             ;
CODE_0F8DA7:        LDA $8D75                 ;
CODE_0F8DAA:        STA $7ED031,x             ;
CODE_0F8DAE:        LDA $8D76                 ;
CODE_0F8DB1:        STA $7ED040,x             ;
CODE_0F8DB5:        LDA $8D77                 ;
CODE_0F8DB8:        STA $7ED041,x             ;
CODE_0F8DBC:        BRA CODE_0F8DF6           ;

CODE_0F8DBE:        LDA $8D68                 ;
CODE_0F8DC1:        STA $7ED010,x             ;
CODE_0F8DC5:        LDA $8D69                 ;
CODE_0F8DC8:        STA $7ED011,x             ;
CODE_0F8DCC:        LDA $8D6A                 ;
CODE_0F8DCF:        STA $7ED020,x             ;
CODE_0F8DD3:        LDA $8D6B                 ;
CODE_0F8DD6:        STA $7ED021,x             ;
CODE_0F8DDA:        LDA $8D6C                 ;
CODE_0F8DDD:        STA $7ED030,x             ;
CODE_0F8DE1:        LDA $8D6D                 ;
CODE_0F8DE4:        STA $7ED031,x             ;
CODE_0F8DE8:        LDA $8D6E                 ;
CODE_0F8DEB:        STA $7ED040,x             ;
CODE_0F8DEF:        LDA $8D6F                 ;
CODE_0F8DF2:        STA $7ED041,x             ;
CODE_0F8DF6:        REP #$20                  ;
CODE_0F8DF8:        DEC $F1                   ;
CODE_0F8DFA:        DEC $F1                   ;
CODE_0F8DFC:        DEC $F1                   ;
CODE_0F8DFE:        LDA $EB                   ;
CODE_0F8E00:        CLC                       ;
CODE_0F8E01:        ADC #$0030                ;
CODE_0F8E04:        STA $EB                   ;
CODE_0F8E06:        LDA #$0001                ;
CODE_0F8E09:        STA $EF                   ;
CODE_0F8E0B:        JMP CODE_0F8BE9           ;

DATA_0F8E0E:        db $41,$42,$43,$44,$45,$46,$47,$48
                    db $49,$4A,$4B,$4C,$4D,$4E,$4F,$50
                    db $51,$52,$53,$54

CODE_0F8E22:        SEP #$20                  ;
CODE_0F8E24:        LDX $EB                   ;
CODE_0F8E26:        LDY #$0000                ;
CODE_0F8E29:        LDA $8E0E,y               ;
CODE_0F8E2C:        STA $7ED020,x             ;
CODE_0F8E30:        LDA $8E0F,y               ;
CODE_0F8E33:        STA $7ED021,x             ;
CODE_0F8E37:        LDA $8E10,y               ;
CODE_0F8E3A:        STA $7ED022,x             ;
CODE_0F8E3E:        LDA $8E11,y               ;
CODE_0F8E41:        STA $7ED023,x             ;
CODE_0F8E45:        REP #$20                  ;
CODE_0F8E47:        TXA                       ;
CODE_0F8E48:        CLC                       ;
CODE_0F8E49:        ADC #$0010                ;
CODE_0F8E4C:        TAX                       ;
CODE_0F8E4D:        SEP #$20                  ;
CODE_0F8E4F:        INY                       ;
CODE_0F8E50:        INY                       ;
CODE_0F8E51:        INY                       ;
CODE_0F8E52:        INY                       ;
CODE_0F8E53:        CPY #$0014                ;
CODE_0F8E56:        BNE CODE_0F8E29           ;
CODE_0F8E58:        REP #$20                  ;
CODE_0F8E5A:        JMP CODE_0F8084           ;

CODE_0F8E5D:        LDX $EB                   ;
CODE_0F8E5F:        LDA #$1B1A                ;
CODE_0F8E62:        STA $7ED000,x             ;
CODE_0F8E66:        JMP CODE_0F8084           ;

CODE_0F8E69:        INC $EB                   ;
CODE_0F8E6B:        LDA $EB                   ;
CODE_0F8E6D:        CLC                       ;
CODE_0F8E6E:        ADC #$0010                ;
CODE_0F8E71:        TAX                       ;
CODE_0F8E72:        SEP #$20                  ;
CODE_0F8E74:        LDA #$67                  ;
CODE_0F8E76:        STA $7ED000,x             ;
CODE_0F8E7A:        LDA #$69                  ;
CODE_0F8E7C:        STA $7ED001,x             ;
CODE_0F8E80:        LDA #$68                  ;
CODE_0F8E82:        STA $7ED010,x             ;
CODE_0F8E86:        LDA #$6A                  ;
CODE_0F8E88:        STA $7ED011,x             ;
CODE_0F8E8C:        REP #$20                  ;
CODE_0F8E8E:        JMP CODE_0F8084           ;

PNTR_0F8E91:        dw $8E99
                    dw $8EE1
                    dw $8EED
                    dw $8F1D

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

CODE_0F8F1D:        LDA $5C                   ;
CODE_0F8F1F:        AND #$00FF                ;
CODE_0F8F22:        ASL A                     ;
CODE_0F8F23:        TAX                       ;
CODE_0F8F24:        LDA #$0F00                ;
CODE_0F8F27:        STA $D9                   ;
CODE_0F8F29:        LDA $8E91,x               ;
CODE_0F8F2C:        STA $D8                   ;
CODE_0F8F2E:        LDA $5C                   ;
CODE_0F8F30:        AND #$00FF                ;
CODE_0F8F33:        CMP #$0002                ;
CODE_0F8F36:        BCS CODE_0F8F41           ;
CODE_0F8F38:        LDA $EB                   ;
CODE_0F8F3A:        CLC                       ;
CODE_0F8F3B:        ADC #$0010                ;
CODE_0F8F3E:        TAX                       ;
CODE_0F8F3F:        BRA CODE_0F8F43           ;

CODE_0F8F41:        LDX $EB                   ;
CODE_0F8F43:        LDA $EF                   ;
CODE_0F8F45:        SEC                       ;
CODE_0F8F46:        SBC #$0010                ;
CODE_0F8F49:        ASL A                     ;
CODE_0F8F4A:        ASL A                     ;
CODE_0F8F4B:        TAY                       ;
CODE_0F8F4C:        SEP #$20                  ;
CODE_0F8F4E:        LDA [$D8],y               ;
CODE_0F8F50:        STA $7ED020,x             ;
CODE_0F8F54:        INY                       ;
CODE_0F8F55:        LDA [$D8],y               ;
CODE_0F8F57:        STA $7ED021,x             ;
CODE_0F8F5B:        INY                       ;
CODE_0F8F5C:        LDA [$D8],y               ;
CODE_0F8F5E:        STA $7ED030,x             ;
CODE_0F8F62:        INY                       ;
CODE_0F8F63:        LDA [$D8],y               ;
CODE_0F8F65:        STA $7ED031,x             ;
CODE_0F8F69:        REP #$20                  ;
CODE_0F8F6B:        INX                       ;
CODE_0F8F6C:        INX                       ;
CODE_0F8F6D:        DEC $F1                   ;
CODE_0F8F6F:        LDA $F1                   ;
CODE_0F8F71:        BPL CODE_0F8F43           ;
CODE_0F8F73:        RTS                       ;

CODE_0F8F74:        STA $7ED000,x             ;
CODE_0F8F78:        STA $7ED100,x             ;
CODE_0F8F7C:        STA $7ED200,x             ;
CODE_0F8F80:        STA $7ED300,x             ;
CODE_0F8F84:        STA $7ED400,x             ;
CODE_0F8F88:        STA $7ED500,x             ;
CODE_0F8F8C:        STA $7ED600,x             ;
CODE_0F8F90:        STA $7ED700,x             ;
CODE_0F8F94:        STA $7ED800,x             ;
CODE_0F8F98:        STA $7ED900,x             ;
CODE_0F8F9C:        STA $7EDA00,x             ;
CODE_0F8FA0:        STA $7EDB00,x             ;
CODE_0F8FA4:        STA $7EDC00,x             ;
CODE_0F8FA8:        STA $7EDD00,x             ;
CODE_0F8FAC:        STA $7EDE00,x             ;
CODE_0F8FB0:        STA $7EDF00,x             ;
CODE_0F8FB4:        RTS                       ;

CODE_0F8FB5:        LDA $EF                   ;
CODE_0F8FB7:        ASL A                     ;
CODE_0F8FB8:        TAX                       ;
CODE_0F8FB9:        LDA $8FC1,x               ;
CODE_0F8FBC:        STA $00                   ;
CODE_0F8FBE:        JMP ($0000)               ;

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

DATA_0F900B:        db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F
                    db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F
                    db $13,$14,$15,$16,$13,$14,$15,$16
                    db $13,$14,$15,$16,$13,$14,$15,$16
                    db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A
                    db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A

CODE_0F900B:        LDX #$00D0                ;
CODE_0F900E:        LDY #$0000                ;
CODE_0F9011:        SEP #$20                  ;
CODE_0F9013:        LDA $8FDB,y               ;
CODE_0F9016:        JSR CODE_0F8F74           ;
CODE_0F9019:        INX                       ;
CODE_0F901A:        INY                       ;
CODE_0F901B:        CPY #$0030                ;
CODE_0F901E:        BNE CODE_0F9013           ;
CODE_0F9020:        REP #$20                  ;
CODE_0F9022:        RTS                       ;

DATA_0F9023:        db $01,$02,$03,$07,$01,$02,$03,$07
                    db $01,$02,$03,$07,$01,$02,$03,$07

CODE_0F9033:        STZ $E4                   ;
CODE_0F9035:        LDA $E4                   ;
CODE_0F9037:        AND #$00FF                ;
CODE_0F903A:        XBA                       ;
CODE_0F903B:        CLC                       ;
CODE_0F903C:        ADC #$00A0                ;
CODE_0F903F:        TAX                       ;
CODE_0F9040:        LDY #$0000                ;
CODE_0F9043:        SEP #$20                  ;
CODE_0F9045:        LDA $9023,y               ;
CODE_0F9048:        STA $7ED000,x             ;
CODE_0F904C:        TXA                       ;
CODE_0F904D:        AND #$01                  ;
CODE_0F904F:        BNE CODE_0F906B           ;
CODE_0F9051:        LDA #$0C                  ;
CODE_0F9053:        STA $7ED010,x             ;
CODE_0F9057:        STA $7ED030,x             ;
CODE_0F905B:        STA $7ED050,x             ;
CODE_0F905F:        LDA #$10                  ;
CODE_0F9061:        STA $7ED020,x             ;
CODE_0F9065:        STA $7ED040,x             ;
CODE_0F9069:        BRA CODE_0F9083           ;

CODE_0F906B:        LDA #$0D                  ;
CODE_0F906D:        STA $7ED010,x             ;
CODE_0F9071:        STA $7ED030,x             ;
CODE_0F9075:        STA $7ED050,x             ;
CODE_0F9079:        LDA #$11                  ;
CODE_0F907B:        STA $7ED020,x             ;
CODE_0F907F:        STA $7ED040,x             ;
CODE_0F9083:        INX                       ;
CODE_0F9084:        INY                       ;
CODE_0F9085:        TYA                       ;
CODE_0F9086:        AND #$0F                  ;
CODE_0F9088:        BNE CODE_0F9045           ;
CODE_0F908A:        REP #$20                  ;
CODE_0F908C:        INC $E4                   ;
CODE_0F908E:        LDA $E4                   ;
CODE_0F9090:        CMP #$0008                ;
CODE_0F9093:        BNE CODE_0F9035           ;
CODE_0F9095:        RTS                       ;

CODE_0F9096:        SEP #$20                  ;
CODE_0F9098:        LDA $F1                   ;
CODE_0F909A:        STA $0EDC                 ;
CODE_0F909D:        REP #$20                  ;
CODE_0F909F:        RTS                       ;

CODE_0F90A0:        LDX #$0080                ;
CODE_0F90A3:        LDA #$0403                ;
CODE_0F90A6:        STA $7ED000,x             ;
CODE_0F90AA:        LDA #$0909                ;
CODE_0F90AD:        STA $7ED010,x             ;
CODE_0F90B1:        STA $7ED020,x             ;
CODE_0F90B5:        STA $7ED030,x             ;
CODE_0F90B9:        STA $7ED040,x             ;
CODE_0F90BD:        STA $7ED050,x             ;
CODE_0F90C1:        STA $7ED060,x             ;
CODE_0F90C5:        INX                       ;
CODE_0F90C6:        INX                       ;
CODE_0F90C7:        TXA                       ;
CODE_0F90C8:        AND #$000F                ;
CODE_0F90CB:        BNE CODE_0F90A3           ;
CODE_0F90CD:        TXA                       ;
CODE_0F90CE:        CLC                       ;
CODE_0F90CF:        ADC #$00F0                ;
CODE_0F90D2:        TAX                       ;
CODE_0F90D3:        CPX #$1000                ;
CODE_0F90D6:        BCC CODE_0F90A3           ;
CODE_0F90D8:        RTS                       ;

CODE_0F90D9:        LDX #$0000                ;
CODE_0F90DC:        LDA #$0202                ;
CODE_0F90DF:        JSR CODE_0F8F74           ;
CODE_0F90E2:        INX                       ;
CODE_0F90E3:        INX                       ;
CODE_0F90E4:        CPX #$0020                ;
CODE_0F90E7:        BNE CODE_0F90DF           ;
CODE_0F90E9:        LDA #$0101                ;
CODE_0F90EC:        JSR CODE_0F8F74           ;
CODE_0F90EF:        INX                       ;
CODE_0F90F0:        INX                       ;
CODE_0F90F1:        CPX #$0030                ;
CODE_0F90F4:        BNE CODE_0F90EC           ;
CODE_0F90F6:        RTS                       ;

DATA_0F90F7:        db $03,$05,$1D,$02

CODE_0F90FB:        LDX #$0000                ;
CODE_0F90FE:        SEP #$20                  ;
CODE_0F9100:        LDA $90F7                 ;
CODE_0F9103:        STA $7ED000,x             ;
CODE_0F9107:        LDA $90F8                 ;
CODE_0F910A:        STA $7ED001,x             ;
CODE_0F910E:        LDA $90F9                 ;
CODE_0F9111:        STA $7ED010,x             ;
CODE_0F9115:        LDA $90FA                 ;
CODE_0F9118:        STA $7ED011,x             ;
CODE_0F911C:        INX                       ;
CODE_0F911D:        INX                       ;
CODE_0F911E:        TXA                       ;
CODE_0F911F:        AND #$0F                  ;
CODE_0F9121:        BNE CODE_0F9100           ;
CODE_0F9123:        REP #$20                  ;
CODE_0F9125:        TXA                       ;
CODE_0F9126:        CLC                       ;
CODE_0F9127:        ADC #$0010                ;
CODE_0F912A:        TAX                       ;
CODE_0F912B:        SEP #$20                  ;
CODE_0F912D:        CPX #$0800                ;
CODE_0F9130:        BNE CODE_0F9100           ;
CODE_0F9132:        REP #$20                  ;
CODE_0F9134:        RTS                       ;

CODE_0F9135:        SEP #$20                  ;
CODE_0F9137:        LDA $5C                   ;
CODE_0F9139:        CMP #$02                  ;
CODE_0F913B:        BEQ CODE_0F9141           ;
CODE_0F913D:        LDA #$5F                  ;
CODE_0F913F:        BRA CODE_0F9143           ;

CODE_0F9141:        LDA #$00                  ;
CODE_0F9143:        LDX #$0000                ;
CODE_0F9146:        JSR CODE_0F8F74           ;
CODE_0F9149:        INX                       ;
CODE_0F914A:        CPX #$0020                ;
CODE_0F914D:        BNE CODE_0F9146           ;
CODE_0F914F:        REP #$20                  ;
CODE_0F9151:        RTS                       ;

CODE_0F9152:        INC $0EC0                 ;
CODE_0F9155:        RTS                       ;

CODE_0F9156:        SEP #$30                  ;
CODE_0F9158:        LDA $075F                 ;\If current world is not world 2
CODE_0F915B:        CMP #$01                  ; |
CODE_0F915D:        BNE CODE_0F9169           ;/branch
CODE_0F915F:        LDA $5C                   ;\
CODE_0F9161:        CMP #$02                  ; |If current world is world 2, and map type is underground
CODE_0F9163:        BEQ CODE_0F9169           ;/branch
CODE_0F9165:        LDA #$01                  ;
CODE_0F9167:        BRA CODE_0F9171           ;

CODE_0F9169:        LDA $F1                   ;
CODE_0F916B:        CMP #$02                  ;
CODE_0F916D:        BNE CODE_0F9171           ;
CODE_0F916F:        LDA #$FF                  ;
CODE_0F9171:        CMP #$01                  ;
CODE_0F9173:        BNE CODE_0F9178           ;
CODE_0F9175:        STA $0ED1                 ;
CODE_0F9178:        JSL CODE_04825E           ;
CODE_0F917C:        REP #$30                  ;
CODE_0F917E:        RTS                       ;

CODE_0F917F:        SEP #$30                  ;
CODE_0F9181:        LDA #$02                  ;
CODE_0F9183:        JSL CODE_04825E           ;
CODE_0F9187:        REP #$30                  ;
CODE_0F9189:        RTS                       ;

DATA_0F918A:        db $0F,$20,$1B,$37,$58,$C9,$1F,$29
                    db $1C,$38,$57,$CA

CODE_0F9196:        LDX #$00D0                ;
CODE_0F9199:        LDY $F1                   ;
CODE_0F919B:        LDA $918A,y               ;
CODE_0F919E:        JSR CODE_0F8F74           ;
CODE_0F91A1:        INX                       ;
CODE_0F91A2:        CPX #$00E0                ;
CODE_0F91A5:        BNE CODE_0F919E           ;
CODE_0F91A7:        LDA $9190,y               ;
CODE_0F91AA:        JSR CODE_0F8F74           ;
CODE_0F91AD:        INX                       ;
CODE_0F91AE:        CPX #$00F0                ;
CODE_0F91B1:        BNE CODE_0F91AA           ;
CODE_0F91B3:        LDA #$0050                ;
CODE_0F91B6:        JSR CODE_0F8F74           ;
CODE_0F91B9:        RTS                       ;

CODE_0F91BA:        LDA $F1                   ;
CODE_0F91BC:        STA $99                   ;
CODE_0F91BE:        JSL CODE_0FF027           ;
CODE_0F91C2:        RTS                       ;

CODE_0F91C3:        LDA $F1                   ;
CODE_0F91C5:        ORA #$0010                ;
CODE_0F91C8:        STA $99                   ;
CODE_0F91CA:        JSL CODE_0FF027           ;
CODE_0F91CE:        RTS                       ;

CODE_0F91CF:        LDA $DB                   ;
CODE_0F91D1:        ASL A                     ;
CODE_0F91D2:        TAX                       ;
CODE_0F91D3:        LDA $923C,x               ;
CODE_0F91D6:        ASL A                     ;
CODE_0F91D7:        TAX                       ;
CODE_0F91D8:        LDA $92CC,x               ;
CODE_0F91DB:        STA $00                   ;
CODE_0F91DD:        LDA #$000F                ;
CODE_0F91E0:        STA $02                   ;
CODE_0F91E2:        LDX #$0000                ;
CODE_0F91E5:        LDY #$0000                ;
CODE_0F91E8:        STX $E4                   ;
CODE_0F91EA:        TYX                       ;
CODE_0F91EB:        LDA $7ED000,x             ;
CODE_0F91EF:        CMP #$FFFF                ;
CODE_0F91F2:        BEQ CODE_0F9233           ;
CODE_0F91F4:        PHY                       ;
CODE_0F91F5:        LDX $E4                   ;
CODE_0F91F7:        AND #$00FF                ;
CODE_0F91FA:        ASL A                     ;
CODE_0F91FB:        ASL A                     ;
CODE_0F91FC:        ASL A                     ;
CODE_0F91FD:        TAY                       ;
CODE_0F91FE:        LDA [$00],y               ;
CODE_0F9200:        STA $7E2000,x             ;
CODE_0F9204:        INY                       ;
CODE_0F9205:        INY                       ;
CODE_0F9206:        LDA [$00],y               ;
CODE_0F9208:        STA $7E2002,x             ;
CODE_0F920C:        INY                       ;
CODE_0F920D:        INY                       ;
CODE_0F920E:        LDA [$00],y               ;
CODE_0F9210:        STA $7E2040,x             ;
CODE_0F9214:        INY                       ;
CODE_0F9215:        INY                       ;
CODE_0F9216:        LDA [$00],y               ;
CODE_0F9218:        STA $7E2042,x             ;
CODE_0F921C:        PLY                       ;
CODE_0F921D:        INY                       ;
CODE_0F921E:        TYA                       ;
CODE_0F921F:        AND #$000F                ;
CODE_0F9222:        BNE CODE_0F922A           ;
CODE_0F9224:        TXA                       ;
CODE_0F9225:        CLC                       ;
CODE_0F9226:        ADC #$0040                ;
CODE_0F9229:        TAX                       ;
CODE_0F922A:        INX                       ;
CODE_0F922B:        INX                       ;
CODE_0F922C:        INX                       ;
CODE_0F922D:        INX                       ;
CODE_0F922E:        CPY #$1200                ;
CODE_0F9231:        BNE CODE_0F91E8           ;
CODE_0F9233:        SEP #$30                  ;
CODE_0F9235:        PLB                       ;
CODE_0F9236:        LDA $0F35                 ;
CODE_0F9239:        STA $DB                   ;
CODE_0F923B:        RTL                       ;

DATA_0F923C:        db $03,$00,$03,$00,$03,$00,$03,$00
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
                    db $2A,$9B,$2A,$9D,$12,$AD,$12,$A7
                    db $62,$A4,$2A,$98,$62,$96,$EA,$95
                    db $4A,$95,$C2,$A5,$A2,$93,$00,$00
                    db $00,$11,$00,$00,$00,$1F,$00,$00
                    db $00,$0C,$00,$12,$00,$00,$08,$00
                    db $00,$00,$00,$00,$04,$00,$10,$00
                    db $00,$00,$0D,$00,$00,$00,$00,$00
                    db $0A,$00,$1E,$00,$00,$00,$00,$00
                    db $1F,$00,$17,$00,$00,$00,$00,$00
                    db $00,$19,$12,$0C,$00,$00,$1B,$00
                    db $00,$00,$00,$12,$00,$00,$00,$00
                    db $00,$09,$00,$2A,$00,$00,$00,$00
                    db $16,$00,$00,$00,$1B,$00,$00,$00
                    db $00,$16,$08,$00,$00,$00,$00,$17
                    db $00,$00,$00,$19,$00,$00,$00,$00
                    db $0F,$00,$00,$14,$00,$00,$00,$1B
                    db $00,$00,$11,$00,$00,$00,$00,$06
                    db $00,$00,$0D,$00,$00,$00,$00,$07
                    db $00,$00,$00,$00,$00,$12,$00,$08
                    db $00,$00,$00,$00,$12,$00,$00,$0C
                    db $00,$00,$16,$00,$00,$00,$00,$12
                    db $00,$00,$00,$00,$00,$04,$00,$13
                    db $00,$00,$19,$00,$00,$00,$00,$17
                    db $00,$00,$00,$00,$1B,$00,$00,$00
                    db $00,$16,$1C,$00,$00,$00,$00,$00
                    db $1E,$00,$00,$15,$00,$00,$00,$00
                    db $02,$00,$01,$00,$00,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $E0,$1D,$24,$00,$F0,$1D,$E1,$1D
                    db $24,$00,$F0,$5D,$24,$00,$C2,$1D
                    db $C3,$1D,$D2,$1D,$D3,$1D,$C4,$1D
                    db $C5,$1D,$D4,$1D,$D5,$1D,$24,$00
                    db $E3,$1D,$24,$00,$F3,$1D,$E4,$1D
                    db $24,$00,$F4,$1D,$24,$00,$CA,$1D
                    db $CB,$1D,$F1,$1D,$F1,$5D,$C0,$1D
                    db $C1,$1D,$24,$00,$E2,$1D,$D0,$1D
                    db $D1,$1D,$F2,$1D,$24,$00,$C6,$1D
                    db $C7,$1D,$D6,$1D,$D7,$1D,$E6,$1D
                    db $E7,$1D,$F6,$1D,$F7,$1D,$EB,$1D
                    db $EC,$1D,$FB,$1D,$FC,$1D,$ED,$1D
                    db $24,$00,$FD,$1D,$FE,$1D,$24,$00
                    db $24,$00,$FF,$1D,$F8,$1D,$24,$00
                    db $EA,$1D,$F9,$1D,$FA,$1D,$C8,$1D
                    db $C1,$1D,$FD,$1D,$E2,$1D,$D0,$1D
                    db $D1,$1D,$F2,$1D,$F8,$1D,$E5,$1D
                    db $F5,$1D,$D9,$1D,$DA,$1D,$CE,$1D
                    db $CF,$1D,$EF,$1D,$EF,$1D,$DC,$1D
                    db $DD,$1D,$EF,$1D,$EF,$1D,$DE,$1D
                    db $DF,$1D,$EF,$1D,$EF,$1D,$CC,$1D
                    db $CD,$1D,$EF,$1D,$EF,$1D,$DC,$1D
                    db $E3,$1D,$EF,$1D,$F3,$1D,$E4,$1D
                    db $DF,$1D,$F4,$1D,$EF,$1D,$E8,$1D
                    db $E9,$1D,$DB,$1D,$EE,$1D,$EF,$1D
                    db $EF,$1D,$EF,$1D,$EF,$1D,$C9,$1D
                    db $C1,$1D,$EF,$1D,$E2,$1D,$D0,$1D
                    db $D8,$1D,$F2,$1D,$EF,$1D,$E6,$1D
                    db $E7,$1D,$D9,$1D,$DA,$1D,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $E0,$15,$24,$00,$F0,$15,$E1,$15
                    db $24,$00,$F0,$55,$24,$00,$C2,$15
                    db $C3,$15,$D2,$15,$D3,$15,$C4,$15
                    db $C5,$15,$D4,$15,$D5,$15,$24,$00
                    db $E3,$15,$24,$00,$F3,$15,$E4,$15
                    db $24,$00,$F4,$15,$24,$00,$C0,$15
                    db $C1,$15,$24,$00,$E2,$15,$D0,$15
                    db $D1,$15,$F2,$15,$24,$00,$C2,$15
                    db $C3,$15,$24,$00,$D3,$15,$C4,$15
                    db $C5,$15,$D4,$15,$24,$00,$CA,$15
                    db $CB,$15,$F1,$15,$F1,$55,$C6,$15
                    db $C7,$15,$D6,$15,$D7,$15,$C8,$15
                    db $C1,$15,$FD,$15,$E2,$15,$D0,$15
                    db $D1,$15,$F2,$15,$F8,$15,$E6,$15
                    db $E7,$15,$D9,$15,$DA,$15,$DC,$15
                    db $E3,$15,$EF,$15,$F3,$15,$E4,$15
                    db $DF,$15,$F4,$15,$EF,$15,$E8,$15
                    db $E9,$15,$DB,$15,$EE,$15,$C9,$15
                    db $C1,$15,$EF,$15,$E2,$15,$D0,$15
                    db $D8,$15,$F2,$15,$EF,$15,$E6,$15
                    db $E7,$15,$F6,$15,$F7,$15,$E5,$15
                    db $F5,$15,$D9,$15,$DA,$15,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$D0,$1D,$D1,$1D,$24,$00
                    db $24,$00,$D2,$1D,$D3,$1D,$24,$00
                    db $C5,$1D,$D4,$1D,$D5,$1D,$24,$00
                    db $24,$00,$C1,$1D,$C2,$1D,$24,$00
                    db $24,$00,$FE,$1D,$FF,$1D,$24,$00
                    db $24,$00,$C0,$1D,$D1,$1D,$C6,$1D
                    db $C7,$1D,$D6,$1D,$D7,$1D,$24,$00
                    db $24,$00,$D2,$1D,$C3,$1D,$24,$00
                    db $24,$00,$CA,$1C,$CB,$1C,$C6,$1D
                    db $C7,$1D,$C4,$1D,$D7,$1D,$24,$00
                    db $24,$00,$FF,$1D,$FE,$1D,$E8,$1D
                    db $E9,$1D,$F8,$1D,$F9,$1D,$EA,$1D
                    db $EB,$1D,$FA,$1D,$FB,$1D,$E0,$1D
                    db $E1,$1D,$F0,$1D,$F1,$1D,$E4,$1D
                    db $E5,$1D,$F4,$1D,$F5,$1D,$C8,$1D
                    db $C9,$1D,$D8,$1D,$D9,$1D,$CA,$1D
                    db $CB,$1D,$DA,$1D,$DB,$1D,$E2,$1D
                    db $E3,$1D,$F2,$1D,$F3,$1D,$E6,$1D
                    db $E7,$1D,$F6,$1D,$F7,$1D,$24,$00
                    db $24,$00,$24,$00,$24,$00,$C4,$1D
                    db $C5,$1D,$D4,$1D,$D5,$1D,$C0,$1D
                    db $C1,$1D,$D0,$1D,$D1,$1D,$C6,$1D
                    db $C7,$1D,$D6,$1D,$D7,$1D,$C8,$1D
                    db $C9,$1D,$D8,$1D,$D9,$1D,$D2,$1D
                    db $D3,$1D,$C2,$1D,$C3,$1D,$C2,$1D
                    db $C3,$1D,$C2,$1D,$C3,$1D,$CA,$1D
                    db $CB,$1D,$DA,$1D,$DB,$1D,$CC,$1D
                    db $CD,$1D,$DC,$1D,$DD,$1D,$CE,$1D
                    db $CF,$1D,$DE,$1D,$DF,$1D,$F2,$1D
                    db $F3,$1D,$E2,$1D,$E3,$1D,$E4,$1D
                    db $E5,$1D,$F4,$1D,$F5,$1D,$E2,$1D
                    db $E3,$1D,$E2,$1D,$E3,$1D,$E6,$1D
                    db $E7,$1D,$F6,$1D,$F7,$1D,$E0,$1D
                    db $E1,$1D,$F0,$1D,$F1,$1D,$24,$00
                    db $24,$00,$24,$00,$24,$00,$C0,$1D
                    db $C1,$1D,$CA,$1D,$D1,$1D,$C2,$1D
                    db $C3,$1D,$D2,$1D,$CB,$1D,$C2,$1D
                    db $C3,$1D,$D2,$1D,$D3,$1D,$C0,$1D
                    db $C1,$1D,$D0,$1D,$D1,$1D,$DA,$1D
                    db $E1,$1D,$D0,$1D,$D1,$1D,$E2,$1D
                    db $DB,$1D,$D2,$1D,$D3,$1D,$DA,$1D
                    db $E1,$1D,$CA,$1D,$D1,$1D,$E2,$1D
                    db $E1,$1D,$E4,$1D,$E5,$1D,$E2,$1D
                    db $E1,$1D,$D2,$1D,$D1,$1D,$E2,$1D
                    db $DB,$1D,$D2,$1D,$CB,$1D,$DA,$1D
                    db $E1,$1D,$EA,$1D,$D1,$1D,$F4,$1D
                    db $F5,$1D,$D8,$1D,$E8,$1D,$E2,$1D
                    db $DB,$1D,$D2,$1D,$EB,$1D,$C0,$1D
                    db $C1,$1D,$92,$1D,$D1,$1D,$E2,$1D
                    db $E3,$1D,$D2,$1D,$D1,$1D,$24,$00
                    db $24,$00,$24,$00,$24,$00,$FA,$1D
                    db $E1,$1D,$CC,$1D,$D1,$1D,$E2,$1D
                    db $FB,$1D,$D2,$1D,$CD,$1D,$A2,$1D
                    db $E1,$1D,$B2,$1D,$D1,$1D,$E2,$1D
                    db $E1,$1D,$D2,$1D,$C6,$1D,$C4,$1D
                    db $C5,$1D,$C7,$1D,$E7,$1D,$D4,$1D
                    db $D5,$1D,$E7,$1D,$C8,$1D,$E2,$1D
                    db $E3,$1D,$C9,$1D,$D1,$1D,$E2,$1D
                    db $E1,$1D,$D2,$1D,$82,$1D,$E2,$1D
                    db $E1,$1D,$83,$1D,$84,$1D,$E2,$1D
                    db $E1,$1D,$85,$1D,$80,$1D,$E2,$1D
                    db $E1,$1D,$81,$1D,$D1,$1D,$E2,$1D
                    db $E1,$1D,$C9,$1D,$D1,$1D,$E2,$1D
                    db $D6,$1D,$D2,$1D,$E6,$1D,$D7,$1D
                    db $E7,$1D,$D7,$1D,$E7,$1D,$E7,$1D
                    db $D7,$5D,$E7,$1D,$D7,$5D,$D9,$1D
                    db $E3,$1D,$E9,$1D,$D1,$1D,$E2,$1D
                    db $DC,$1D,$D2,$1D,$EC,$1D,$DD,$1D
                    db $DE,$1D,$ED,$1D,$EE,$1D,$DF,$1D
                    db $90,$1D,$EF,$1D,$A0,$1D,$91,$1D
                    db $E1,$1D,$A1,$1D,$D1,$1D,$A2,$1D
                    db $E3,$1D,$B2,$1D,$D1,$1D,$D9,$1D
                    db $E1,$1D,$E9,$1D,$D1,$1D,$E2,$1D
                    db $E1,$1D,$F0,$1D,$F1,$1D,$E2,$1D
                    db $E1,$1D,$F2,$1D,$F3,$1D,$E2,$1D
                    db $F6,$1D,$F0,$1D,$F1,$1D,$F7,$1D
                    db $CE,$1D,$F2,$1D,$F3,$1D,$CF,$1D
                    db $F8,$1D,$F0,$1D,$F1,$1D,$F9,$1D
                    db $E1,$1D,$F2,$1D,$F3,$1D,$E2,$1D
                    db $E3,$1D,$F0,$1D,$F1,$1D,$FA,$1D
                    db $E1,$1D,$F2,$1D,$F3,$1D,$E2,$1D
                    db $FC,$1D,$F0,$1D,$F1,$1D,$FD,$1D
                    db $FE,$1D,$F2,$1D,$F3,$1D,$FF,$1D
                    db $B0,$1D,$F0,$1D,$F1,$1D,$B1,$1D
                    db $E1,$1D,$F2,$1D,$F3,$1D,$E2,$1D
                    db $FB,$1D,$F0,$1D,$F1,$1D,$A2,$1D
                    db $E1,$1D,$F2,$1D,$F3,$1D,$E2,$1D
                    db $CB,$1D,$D2,$1D,$D3,$1D,$CA,$1D
                    db $E1,$1D,$D0,$1D,$D1,$1D,$86,$15
                    db $86,$15,$87,$15,$87,$15,$88,$15
                    db $88,$15,$88,$15,$88,$15,$34,$15
                    db $34,$15,$34,$15,$34,$15,$34,$15
                    db $36,$15,$34,$15,$36,$15,$37,$15
                    db $38,$15,$37,$15,$28,$15,$34,$15
                    db $09,$1D,$34,$15,$34,$15,$09,$1D
                    db $0A,$1D,$19,$1D,$1A,$1D,$0B,$1D
                    db $0C,$1D,$1B,$1D,$1C,$1D,$0C,$5D
                    db $0B,$5D,$1C,$5D,$1B,$5D,$0A,$5D
                    db $09,$5D,$1A,$5D,$19,$5D,$09,$15
                    db $0A,$15,$19,$15,$1A,$15,$0B,$15
                    db $0C,$15,$1B,$15,$1C,$15,$0C,$55
                    db $0B,$55,$1C,$55,$1B,$55,$0A,$55
                    db $09,$55,$1A,$55,$19,$55,$00,$15
                    db $01,$15,$10,$15,$11,$15,$BB,$1D
                    db $BC,$1D,$34,$1D,$88,$1D,$BD,$1D
                    db $BC,$1D,$89,$1D,$8C,$1D,$BD,$1D
                    db $BC,$1D,$8D,$1D,$89,$5D,$BD,$1D
                    db $BE,$1D,$88,$1D,$34,$1D,$B0,$1D
                    db $B1,$1D,$B2,$1D,$E8,$1C,$20,$15
                    db $21,$15,$30,$15,$31,$15,$02,$15
                    db $03,$15,$12,$15,$13,$15,$B1,$5D
                    db $B0,$5D,$E9,$1C,$B2,$5D,$34,$15
                    db $34,$1D,$34,$15,$34,$1D,$34,$1D
                    db $98,$1D,$34,$1D,$A8,$1D,$89,$1D
                    db $8A,$1D,$99,$1D,$9A,$1D,$8B,$1D
                    db $89,$5D,$9B,$1D,$99,$5D,$9C,$1D
                    db $34,$1D,$AC,$1D,$34,$1D,$24,$15
                    db $16,$15,$34,$15,$26,$15,$17,$15
                    db $18,$15,$27,$15,$28,$15,$B3,$1D
                    db $EA,$1C,$34,$1D,$8E,$1D,$EB,$1C
                    db $B3,$5D,$8F,$1D,$34,$1D,$34,$1D
                    db $A8,$1D,$34,$1D,$A8,$1D,$A9,$1D
                    db $8A,$1D,$B9,$1D,$B9,$1D,$8B,$1D
                    db $A9,$5D,$B9,$1D,$BA,$1D,$AC,$1D
                    db $34,$1D,$AC,$1D,$34,$1D,$34,$15
                    db $34,$15,$0D,$1D,$0E,$1D,$34,$15
                    db $34,$15,$0F,$1D,$34,$15,$1D,$1D
                    db $1E,$1D,$2D,$1D,$2E,$1D,$1F,$1D
                    db $29,$1D,$2F,$1D,$39,$1D,$37,$15
                    db $38,$15,$37,$15,$38,$15,$34,$1D
                    db $A8,$1D,$34,$1D,$B8,$1D,$8B,$1D
                    db $A9,$5D,$B9,$1D,$B9,$1D,$AC,$1D
                    db $34,$1D,$BA,$1D,$34,$1D,$3D,$1D
                    db $3E,$1D,$34,$15,$15,$1D,$3F,$1D
                    db $2A,$1D,$25,$1D,$3A,$1D,$34,$15
                    db $26,$95,$24,$95,$16,$95,$27,$95
                    db $38,$15,$17,$95,$18,$95,$80,$1D
                    db $81,$1D,$90,$1D,$91,$1D,$82,$1D
                    db $83,$1D,$92,$1D,$93,$1D,$32,$15
                    db $22,$15,$10,$15,$11,$15,$22,$15
                    db $23,$15,$10,$15,$11,$15,$33,$15
                    db $00,$15,$10,$15,$11,$15,$A0,$1D
                    db $A1,$1D,$10,$15,$11,$15,$A2,$1D
                    db $A3,$1D,$10,$15,$11,$15,$33,$15
                    db $34,$15,$10,$15,$11,$15,$85,$15
                    db $87,$15,$95,$15,$97,$15,$84,$15
                    db $86,$15,$94,$15,$96,$15,$85,$15
                    db $86,$15,$95,$15,$96,$15,$84,$15
                    db $87,$15,$94,$15,$97,$15,$84,$15
                    db $85,$15,$94,$15,$95,$15,$86,$15
                    db $85,$15,$96,$15,$95,$15,$A6,$15
                    db $A7,$15,$B6,$15,$B7,$15,$94,$15
                    db $A6,$15,$B4,$15,$B6,$15,$A6,$15
                    db $A6,$15,$B6,$15,$B6,$15,$94,$15
                    db $A7,$15,$B4,$15,$B7,$15,$99,$15
                    db $16,$15,$34,$15,$26,$15,$4C,$15
                    db $4D,$15,$5C,$15,$40,$15,$4D,$15
                    db $4D,$15,$41,$15,$42,$15,$4D,$15
                    db $4D,$15,$43,$15,$44,$15,$4D,$15
                    db $4E,$15,$45,$15,$5D,$15,$5C,$15
                    db $50,$15,$5C,$15,$60,$15,$51,$15
                    db $52,$15,$61,$15,$62,$15,$53,$15
                    db $54,$15,$63,$15,$64,$15,$55,$15
                    db $5D,$15,$65,$15,$5D,$15,$5C,$15
                    db $70,$15,$5C,$15,$46,$15,$71,$15
                    db $72,$15,$47,$15,$48,$15,$73,$15
                    db $74,$15,$49,$15,$4A,$15,$75,$15
                    db $5D,$15,$4B,$15,$5D,$15,$5C,$15
                    db $56,$15,$5C,$15,$66,$15,$57,$15
                    db $58,$15,$67,$15,$68,$15,$59,$15
                    db $5A,$15,$69,$15,$6A,$15,$5B,$15
                    db $5D,$15,$6B,$15,$5D,$15,$5C,$15
                    db $76,$15,$5E,$15,$6C,$15,$77,$15
                    db $78,$15,$6C,$15,$6C,$15,$79,$15
                    db $7A,$15,$6C,$15,$6C,$15,$7B,$15
                    db $5D,$15,$6C,$15,$6D,$15,$24,$00
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
                    db $24,$00,$24,$00,$24,$00,$A4,$10
                    db $A4,$10,$24,$00,$24,$00,$A4,$10
                    db $A4,$10,$A4,$10,$A4,$10,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$24,$00
                    db $24,$00,$24,$00,$F0,$1C,$24,$00
                    db $24,$00,$F1,$1C,$24,$00,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$40,$15
                    db $41,$15,$50,$15,$51,$15,$46,$15
                    db $47,$15,$56,$15,$57,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$24,$00
                    db $F2,$1C,$24,$00,$F4,$1C,$F3,$1C
                    db $24,$00,$F5,$1C,$24,$00,$60,$15
                    db $61,$15,$70,$15,$71,$15,$66,$15
                    db $67,$15,$76,$15,$77,$15,$0A,$15
                    db $0B,$15,$1A,$15,$1B,$15,$0C,$15
                    db $0D,$15,$1C,$15,$1D,$15,$28,$15
                    db $29,$15,$1A,$15,$1B,$15,$38,$15
                    db $39,$15,$1C,$15,$1D,$15,$0E,$15
                    db $24,$00,$1E,$15,$1F,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$20,$15
                    db $21,$15,$30,$15,$31,$15,$2A,$15
                    db $2B,$15,$3A,$15,$3B,$15,$2C,$15
                    db $2D,$15,$3C,$15,$3D,$15,$2E,$15
                    db $2F,$15,$3E,$15,$3F,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$22,$15
                    db $23,$15,$32,$15,$33,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$0C,$15
                    db $0D,$15,$1C,$15,$1D,$15,$28,$15
                    db $29,$15,$1A,$15,$1B,$15,$38,$15
                    db $39,$15,$1C,$15,$1D,$15,$42,$15
                    db $43,$15,$52,$15,$53,$15,$44,$15
                    db $45,$15,$54,$15,$55,$15,$62,$15
                    db $63,$15,$72,$15,$73,$15,$64,$15
                    db $65,$15,$74,$15,$75,$15,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$34,$15
                    db $35,$15,$1A,$15,$1B,$15,$36,$15
                    db $37,$15,$1C,$15,$1D,$15,$2A,$15
                    db $2B,$15,$24,$15,$25,$15,$2C,$15
                    db $2D,$15,$26,$15,$27,$15,$A4,$15
                    db $A5,$15,$B4,$15,$B5,$15,$05,$15
                    db $0B,$15,$15,$15,$03,$15,$24,$00
                    db $04,$15,$24,$00,$14,$15,$10,$15
                    db $11,$15,$13,$15,$27,$15,$24,$00
                    db $24,$00,$24,$00,$12,$15,$06,$15
                    db $2B,$15,$09,$15,$07,$15,$2E,$15
                    db $2F,$15,$3E,$15,$07,$15,$24,$00
                    db $24,$00,$08,$15,$24,$00,$2E,$15
                    db $2F,$15,$09,$15,$07,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$22,$15
                    db $23,$15,$32,$15,$33,$15,$72,$15
                    db $71,$15,$5E,$15,$5F,$15,$24,$10
                    db $24,$10,$24,$10,$24,$10,$0A,$15
                    db $4A,$15,$4A,$15,$16,$15,$07,$15
                    db $06,$15,$5A,$15,$16,$15,$24,$10
                    db $01,$15,$10,$15,$11,$15,$02,$15
                    db $03,$15,$0A,$15,$0A,$15,$04,$15
                    db $24,$10,$14,$15,$15,$15,$0A,$15
                    db $0D,$15,$0A,$15,$1D,$15,$07,$15
                    db $24,$10,$0E,$15,$07,$15,$0A,$15
                    db $1D,$15,$0A,$15,$0A,$15,$1F,$15
                    db $17,$15,$1E,$15,$55,$15,$1E,$15
                    db $55,$15,$0A,$15,$0F,$15,$55,$15
                    db $17,$15,$55,$15,$55,$15,$55,$15
                    db $55,$15,$1F,$15,$55,$15,$07,$15
                    db $06,$15,$0E,$15,$5B,$15,$18,$15
                    db $0A,$15,$0E,$15,$18,$15,$5E,$15
                    db $5E,$15,$4F,$15,$4F,$15,$0A,$15
                    db $4B,$15,$4A,$15,$16,$15,$55,$15
                    db $5A,$15,$5A,$15,$16,$15,$24,$10
                    db $06,$15,$06,$15,$16,$15,$16,$15
                    db $0A,$15,$0A,$15,$0A,$15,$02,$15
                    db $08,$15,$0A,$15,$0A,$15,$09,$15
                    db $0A,$15,$14,$15,$1A,$15,$0A,$55
                    db $0A,$15,$0A,$15,$0A,$15,$1E,$15
                    db $17,$15,$0A,$15,$0F,$15,$07,$15
                    db $24,$10,$17,$15,$07,$15,$0A,$15
                    db $0F,$15,$0A,$15,$1D,$15,$55,$15
                    db $17,$15,$1F,$15,$55,$15,$1F,$15
                    db $55,$15,$1E,$15,$55,$15,$55,$15
                    db $55,$15,$55,$15,$55,$15,$07,$15
                    db $06,$15,$17,$15,$5B,$15,$18,$15
                    db $0A,$15,$17,$15,$18,$15,$5F,$15
                    db $5F,$15,$5F,$15,$5F,$15,$45,$15
                    db $0A,$15,$0A,$15,$0A,$15,$0A,$15
                    db $0A,$15,$0A,$15,$19,$15,$0A,$15
                    db $12,$15,$0A,$15,$12,$95,$13,$15
                    db $0A,$15,$13,$95,$0A,$15,$19,$15
                    db $0A,$55,$0A,$55,$45,$D5,$47,$15
                    db $47,$55,$47,$95,$47,$D5,$57,$15
                    db $57,$55,$57,$95,$57,$D5,$12,$15
                    db $0A,$15,$12,$95,$19,$15,$0A,$15
                    db $0A,$15,$47,$15,$47,$55,$47,$95
                    db $54,$15,$0A,$15,$57,$95,$57,$55
                    db $0A,$15,$57,$D5,$0A,$15,$0B,$15
                    db $0C,$15,$1B,$15,$1C,$15,$0A,$15
                    db $0A,$15,$0A,$15,$0B,$15,$0A,$15
                    db $0A,$15,$0C,$15,$0A,$15,$0B,$15
                    db $1B,$15,$1B,$15,$0A,$15,$1C,$15
                    db $0C,$15,$0A,$15,$1C,$15,$55,$55
                    db $56,$55,$55,$55,$56,$D5,$55,$55
                    db $46,$55,$55,$55,$46,$D5,$5C,$15
                    db $17,$15,$55,$55,$55,$55,$55,$55
                    db $17,$15,$55,$55,$4C,$15,$26,$15
                    db $21,$15,$36,$15,$31,$15,$22,$15
                    db $23,$15,$32,$15,$33,$15,$20,$15
                    db $21,$15,$30,$15,$31,$15,$22,$15
                    db $24,$15,$32,$15,$34,$15,$27,$15
                    db $51,$15,$37,$15,$31,$15,$52,$15
                    db $53,$15,$32,$15,$33,$15,$50,$15
                    db $51,$15,$30,$15,$31,$15,$52,$15
                    db $48,$15,$32,$15,$58,$15,$27,$15
                    db $41,$15,$37,$15,$31,$15,$42,$15
                    db $43,$15,$32,$15,$33,$15,$40,$15
                    db $41,$15,$30,$15,$31,$15,$42,$15
                    db $44,$15,$32,$15,$35,$15,$2E,$15
                    db $29,$15,$3E,$15,$39,$15,$2A,$15
                    db $2B,$15,$3A,$15,$3B,$15,$28,$15
                    db $29,$15,$38,$15,$39,$15,$2A,$15
                    db $2C,$15,$3A,$15,$3C,$15,$2F,$15
                    db $29,$15,$3F,$15,$39,$15,$2A,$15
                    db $49,$15,$3A,$15,$59,$15,$2A,$15
                    db $2D,$15,$3A,$15,$3D,$15,$60,$15
                    db $61,$15,$5E,$15,$5F,$15,$62,$15
                    db $63,$15,$67,$15,$68,$15,$62,$15
                    db $4D,$15,$67,$15,$5D,$15,$62,$15
                    db $4E,$15,$67,$15,$5D,$15,$62,$15
                    db $4F,$15,$67,$15,$5D,$15,$64,$15
                    db $61,$15,$69,$15,$5F,$15,$65,$15
                    db $61,$15,$6A,$15,$5F,$15,$66,$15
                    db $66,$15,$66,$15,$66,$15,$86,$15
                    db $86,$15,$87,$15,$87,$15,$88,$15
                    db $88,$15,$88,$15,$88,$15,$12,$15
                    db $1F,$15,$12,$15,$1F,$15,$07,$15
                    db $06,$15,$B0,$15,$16,$15,$45,$15
                    db $71,$15,$0E,$15,$A2,$15,$89,$15
                    db $8C,$15,$9B,$15,$9C,$15,$9D,$15
                    db $9F,$15,$9F,$15,$12,$15,$89,$15
                    db $8C,$15,$9B,$15,$9C,$15,$FF,$15
                    db $FF,$15,$FF,$15,$FF,$15,$EE,$15
                    db $EE,$15,$FE,$15,$FE,$15,$27,$00
                    db $27,$00,$27,$00,$27,$00,$27,$00
                    db $27,$00,$27,$00,$27,$00,$27,$00
                    db $27,$00,$27,$00,$27,$00,$27,$00
                    db $27,$00,$27,$00,$27,$00,$27,$00
                    db $27,$00,$27,$00,$27,$00,$27,$00
                    db $27,$00,$27,$00,$27,$00,$27,$00
                    db $27,$00,$27,$00,$27,$00,$2E,$14
                    db $96,$15,$67,$15,$91,$15,$97,$15
                    db $03,$15,$12,$15,$13,$15,$4E,$15
                    db $06,$15,$54,$15,$16,$15,$A0,$15
                    db $A1,$15,$B0,$15,$16,$15,$17,$15
                    db $B0,$15,$B0,$15,$16,$15,$55,$15
                    db $17,$15,$55,$15,$17,$95,$55,$15
                    db $55,$15,$55,$15,$17,$95,$45,$15
                    db $71,$15,$17,$15,$A2,$15,$57,$15
                    db $81,$15,$90,$15,$91,$15,$82,$15
                    db $83,$15,$92,$15,$93,$15,$84,$15
                    db $57,$15,$94,$15,$95,$15,$12,$15
                    db $0D,$15,$12,$15,$1D,$15,$07,$15
                    db $24,$14,$0E,$15,$07,$15,$1E,$15
                    db $17,$15,$12,$15,$0F,$15,$12,$15
                    db $1D,$15,$12,$15,$12,$15,$1F,$15
                    db $17,$15,$1E,$15,$55,$15,$07,$15
                    db $4B,$15,$0E,$15,$45,$15,$18,$15
                    db $19,$15,$0E,$15,$18,$15,$12,$15
                    db $0F,$15,$12,$15,$1D,$15,$55,$15
                    db $17,$15,$1F,$15,$55,$15,$1E,$15
                    db $55,$15,$12,$15,$0F,$15,$1F,$15
                    db $55,$15,$1E,$15,$55,$15,$55,$15
                    db $55,$15,$1F,$15,$55,$15,$45,$15
                    db $2E,$14,$0E,$15,$45,$15,$12,$15
                    db $12,$15,$12,$15,$89,$15,$12,$15
                    db $12,$15,$8C,$15,$12,$15,$89,$15
                    db $8A,$15,$99,$15,$9A,$15,$8B,$15
                    db $8C,$15,$9B,$15,$9C,$15,$8D,$15
                    db $8E,$15,$12,$15,$8F,$15,$9D,$15
                    db $9E,$15,$9F,$15,$12,$15,$89,$15
                    db $8C,$15,$99,$15,$9A,$15,$89,$15
                    db $8C,$15,$9B,$15,$9C,$15,$B3,$15
                    db $B2,$15,$B2,$15,$16,$15,$B3,$15
                    db $A3,$15,$B2,$15,$16,$15,$12,$15
                    db $99,$15,$12,$15,$8F,$15,$9D,$15
                    db $8E,$15,$9F,$15,$8F,$15,$9C,$15
                    db $12,$15,$9F,$15,$12,$15,$12,$15
                    db $12,$15,$8C,$15,$89,$15,$89,$15
                    db $8C,$15,$9B,$15,$9A,$15,$12,$15
                    db $12,$15,$89,$15,$8C,$15,$99,$15
                    db $9C,$15,$8F,$15,$9F,$15,$12,$15
                    db $99,$15,$8C,$15,$8F,$15,$16,$15
                    db $12,$15,$89,$15,$8C,$15,$16,$15
                    db $12,$15,$12,$15,$89,$15,$16,$15
                    db $12,$15,$89,$15,$8C,$15,$99,$15
                    db $9C,$15,$8D,$15,$B1,$15,$12,$15
                    db $1D,$15,$8C,$15,$12,$15,$12,$15
                    db $1D,$15,$8C,$15,$12,$15,$62,$15
                    db $63,$15,$72,$15,$73,$15,$64,$15
                    db $65,$15,$74,$15,$75,$15,$66,$15
                    db $67,$15,$76,$15,$77,$15,$68,$15
                    db $69,$15,$78,$15,$79,$15,$24,$00
                    db $24,$00,$00,$1D,$01,$1D,$24,$00
                    db $24,$00,$02,$1D,$03,$1D,$24,$00
                    db $24,$00,$04,$1D,$05,$1D,$24,$00
                    db $24,$00,$06,$1D,$07,$1D,$10,$1D
                    db $11,$1D,$20,$1D,$21,$1D,$12,$1D
                    db $13,$1D,$22,$1D,$23,$1D,$14,$1D
                    db $15,$1D,$24,$1D,$25,$1D,$16,$1D
                    db $17,$1D,$26,$1D,$27,$1D,$24,$00
                    db $24,$00,$40,$1D,$41,$1D,$30,$1D
                    db $31,$1D,$08,$1D,$09,$1D,$32,$1D
                    db $33,$1D,$0A,$1D,$0B,$1D,$34,$1D
                    db $35,$1D,$0C,$1D,$0D,$1D,$36,$1D
                    db $37,$1D,$0E,$1D,$0F,$1D,$50,$1D
                    db $51,$1D,$60,$1D,$61,$1D,$18,$1D
                    db $19,$1D,$28,$1D,$29,$1D,$1A,$1D
                    db $1B,$1D,$2A,$1D,$2B,$1D,$1C,$1D
                    db $1D,$1D,$2C,$1D,$2D,$1D,$1E,$1D
                    db $1F,$1D,$2E,$1D,$2F,$1D,$70,$1D
                    db $71,$1D,$24,$00,$24,$00,$38,$1D
                    db $39,$1D,$24,$00,$24,$00,$3A,$1D
                    db $3B,$1D,$24,$00,$24,$00,$3C,$1D
                    db $3D,$1D,$24,$00,$24,$00,$3E,$1D
                    db $3F,$1D,$24,$00,$24,$00,$3E,$1D
                    db $3F,$1D,$24,$00,$24,$00,$3E,$1D
                    db $3F,$1D,$24,$00,$24,$00,$3E,$1D
                    db $3F,$1D,$24,$00,$24,$00,$3E,$1D
                    db $3F,$1D,$24,$00,$24,$00,$3E,$1D
                    db $3F,$1D,$24,$00,$24,$00,$C0,$1D
                    db $C1,$1D,$D0,$1D,$D1,$1D,$C2,$1D
                    db $C3,$1D,$D2,$1D,$D3,$1D,$C4,$1D
                    db $C5,$1D,$D4,$1D,$D5,$1D,$C6,$1D
                    db $C7,$1D,$D6,$1D,$D7,$1D,$C8,$1D
                    db $C9,$1D,$D8,$1D,$D9,$1D,$CA,$1D
                    db $24,$00,$DA,$1D,$DB,$1D,$E8,$1D
                    db $24,$00,$F8,$1D,$24,$00,$E8,$1D
                    db $E9,$1D,$F8,$1D,$F9,$1D,$EA,$1D
                    db $EB,$1D,$FA,$1D,$FB,$1D,$24,$00
                    db $E9,$1D,$24,$00,$F9,$1D,$DF,$1D
                    db $C3,$1D,$DC,$1D,$D3,$1D,$E8,$1D
                    db $E9,$1D,$F8,$1D,$F9,$1D,$CC,$1D
                    db $CD,$1D,$D0,$1D,$D1,$1D,$CE,$1D
                    db $CF,$1D,$D2,$1D,$D3,$1D,$24,$00
                    db $E5,$1D,$24,$00,$F5,$1D,$24,$00
                    db $DD,$1D,$24,$00,$DE,$1D,$E0,$1D
                    db $E1,$1D,$F0,$1D,$F1,$1D,$E2,$1D
                    db $E3,$1D,$F2,$1D,$F3,$1D,$E4,$1D
                    db $E5,$1D,$F4,$1D,$F5,$1D,$E6,$1D
                    db $E7,$1D,$F6,$1D,$F7,$1D,$E2,$1D
                    db $F8,$1D,$F2,$1D,$F3,$1D,$E2,$1D
                    db $E3,$1D,$F2,$1D,$F3,$1D,$E4,$1D
                    db $24,$00,$F4,$1D,$24,$00,$24,$00
                    db $24,$00,$EC,$1D,$ED,$1D,$E2,$1D
                    db $F8,$1D,$F2,$1D,$F3,$1D,$EE,$15
                    db $EE,$15,$FE,$15,$FE,$15,$FF,$15
                    db $FF,$15,$FF,$15,$FF,$15,$16,$1D
                    db $12,$1D,$12,$1D,$89,$1D,$16,$1D
                    db $12,$1D,$89,$1D,$8C,$1D,$99,$1D
                    db $9C,$1D,$8D,$1D,$B1,$1D,$12,$1D
                    db $1D,$1D,$8C,$1D,$12,$1D,$12,$1D
                    db $1D,$1D,$8C,$1D,$12,$1D,$62,$15
                    db $63,$15,$72,$15,$73,$15,$64,$15
                    db $65,$15,$74,$15,$75,$15,$66,$15
                    db $67,$15,$76,$15,$77,$15,$68,$15
                    db $69,$15,$78,$15,$79,$15,$07,$15
                    db $06,$15,$B0,$15,$16,$15,$20,$15
                    db $21,$15,$30,$15,$31,$15,$22,$15
                    db $23,$15,$32,$15,$33,$15,$28,$15
                    db $29,$15,$38,$15,$39,$15,$2A,$15
                    db $2B,$15,$3A,$15,$3B,$15,$26,$15
                    db $21,$15,$36,$15,$31,$15,$22,$15
                    db $24,$15,$32,$15,$34,$15,$2E,$15
                    db $29,$15,$3E,$15,$39,$15,$2A,$15
                    db $2C,$15,$3A,$15,$3C,$15,$40,$15
                    db $41,$15,$30,$15,$31,$15,$42,$15
                    db $43,$15,$32,$15,$33,$15,$27,$15
                    db $41,$15,$37,$15,$31,$15,$22,$15
                    db $24,$15,$32,$15,$34,$15,$2F,$15
                    db $29,$15,$3F,$15,$39,$15,$2A,$15
                    db $2D,$15,$3A,$15,$3D,$15,$50,$15
                    db $51,$15,$30,$15,$31,$15,$52,$15
                    db $53,$15,$32,$15,$33,$15,$52,$15
                    db $48,$15,$32,$15,$58,$15,$2A,$15
                    db $49,$15,$3A,$15,$59,$15,$24,$00
                    db $24,$00,$24,$00,$24,$00,$C1,$1C
                    db $24,$00,$24,$00,$24,$00,$C2,$1C
                    db $24,$00,$24,$00,$24,$00,$C3,$1C
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$C0,$1C,$24,$00,$24,$00
                    db $24,$00,$C1,$1C,$24,$00,$24,$00
                    db $24,$00,$C2,$1C,$24,$00,$24,$00
                    db $24,$00,$C3,$1C,$24,$00,$C4,$1C
                    db $24,$00,$24,$00,$24,$00,$C5,$1C
                    db $24,$00,$24,$00,$24,$00,$C6,$1C
                    db $24,$00,$24,$00,$24,$00,$C7,$1C
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$C4,$1C,$24,$00,$24,$00
                    db $24,$00,$C5,$1C,$24,$00,$24,$00
                    db $24,$00,$C6,$1C,$24,$00,$24,$00
                    db $24,$00,$C7,$1C,$24,$00,$24,$00
                    db $C0,$1C,$24,$00,$24,$00,$24,$00
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
                    db $24,$00,$24,$00,$C7,$1C,$E0,$15
                    db $E0,$15,$E1,$15,$E1,$15,$C6,$15
                    db $C7,$15,$D6,$15,$D7,$15,$C8,$15
                    db $C9,$15,$D8,$15,$D9,$15,$CA,$15
                    db $CB,$15,$DA,$15,$DB,$15,$CC,$15
                    db $CD,$15,$DC,$15,$DD,$15,$E6,$15
                    db $E7,$15,$F6,$15,$F7,$15,$E8,$15
                    db $E9,$15,$F8,$15,$F9,$15,$EA,$15
                    db $EB,$15,$FA,$15,$FB,$15,$EC,$15
                    db $ED,$15,$FC,$15,$FD,$15,$E2,$15
                    db $E2,$15,$E2,$15,$E2,$15,$C0,$1C
                    db $24,$00,$24,$00,$24,$00,$C0,$1C
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$04,$15
                    db $05,$15,$16,$15,$17,$15,$06,$15
                    db $07,$15,$20,$15,$21,$15,$04,$15
                    db $05,$15,$22,$15,$23,$15,$06,$15
                    db $07,$15,$14,$15,$15,$15,$0C,$15
                    db $0D,$15,$1C,$15,$1D,$15,$24,$00
                    db $24,$00,$1E,$15,$24,$00,$24,$00
                    db $2C,$15,$24,$00,$3C,$15,$0C,$15
                    db $2A,$15,$16,$15,$3A,$15,$2B,$15
                    db $07,$15,$3B,$15,$21,$15,$26,$15
                    db $27,$15,$36,$15,$37,$15,$30,$15
                    db $31,$15,$08,$15,$24,$00,$32,$15
                    db $33,$15,$24,$00,$0B,$15,$24,$15
                    db $25,$15,$34,$15,$35,$15,$26,$15
                    db $1B,$15,$36,$15,$37,$15,$0F,$15
                    db $24,$00,$08,$15,$24,$00,$24,$00
                    db $24,$00,$24,$00,$3E,$15,$2E,$15
                    db $2F,$15,$3F,$15,$35,$15,$18,$15
                    db $24,$00,$4A,$15,$4B,$15,$24,$00
                    db $19,$15,$5A,$15,$5B,$15,$24,$00
                    db $19,$15,$5C,$15,$48,$15,$24,$15
                    db $25,$15,$44,$15,$45,$15,$26,$15
                    db $27,$15,$46,$15,$47,$15,$24,$00
                    db $24,$00,$5C,$15,$51,$15,$24,$00
                    db $24,$00,$52,$15,$53,$15,$24,$00
                    db $19,$15,$50,$15,$48,$15,$00,$15
                    db $01,$15,$11,$15,$00,$15,$68,$15
                    db $69,$15,$78,$15,$79,$15,$6A,$15
                    db $6B,$15,$7A,$15,$7B,$15,$10,$15
                    db $11,$15,$01,$15,$10,$15,$6C,$15
                    db $61,$15,$7C,$15,$71,$15,$54,$15
                    db $55,$15,$72,$15,$73,$15,$56,$15
                    db $57,$15,$74,$15,$75,$15,$4C,$15
                    db $4D,$15,$76,$15,$77,$15,$62,$15
                    db $63,$15,$72,$15,$73,$15,$64,$15
                    db $65,$15,$74,$15,$75,$15,$66,$15
                    db $67,$15,$76,$15,$77,$15,$60,$15
                    db $61,$15,$7C,$15,$71,$15,$54,$15
                    db $58,$15,$72,$15,$59,$15,$16,$15
                    db $17,$15,$18,$15,$19,$15,$19,$15
                    db $18,$15,$18,$15,$19,$15,$06,$15
                    db $06,$15,$14,$15,$15,$15,$34,$15
                    db $34,$15,$34,$15,$34,$15,$34,$15
                    db $04,$15,$34,$15,$04,$15,$05,$15
                    db $06,$15,$05,$15,$06,$15,$29,$15
                    db $2A,$15,$19,$15,$1A,$15,$2B,$15
                    db $2C,$15,$1B,$15,$1C,$15,$38,$15
                    db $34,$15,$38,$15,$34,$15,$19,$15
                    db $1A,$15,$19,$15,$1A,$15,$1B,$15
                    db $1C,$15,$1B,$15,$1C,$15,$09,$15
                    db $0A,$15,$19,$15,$1A,$15,$0B,$15
                    db $0C,$15,$1B,$15,$1C,$15,$34,$15
                    db $04,$15,$34,$15,$14,$15,$05,$15
                    db $06,$15,$15,$15,$06,$15,$00,$15
                    db $01,$15,$10,$15,$11,$15,$00,$15
                    db $02,$15,$10,$15,$12,$15,$03,$15
                    db $01,$15,$13,$15,$11,$15,$0D,$15
                    db $0A,$15,$1D,$15,$1A,$15,$0B,$15
                    db $0E,$15,$1B,$15,$1E,$15,$0F,$15
                    db $01,$15,$1F,$15,$11,$15,$20,$15
                    db $21,$15,$30,$15,$31,$15,$20,$15
                    db $22,$15,$30,$15,$32,$15,$23,$15
                    db $21,$15,$33,$15,$31,$15,$20,$15
                    db $21,$15,$30,$15,$30,$15,$2D,$15
                    db $1A,$15,$3D,$15,$1A,$15,$1B,$15
                    db $2E,$15,$1B,$15,$3E,$15,$2F,$15
                    db $21,$15,$3F,$15,$31,$15,$35,$15
                    db $35,$15,$34,$15,$34,$15,$24,$15
                    db $16,$15,$34,$15,$26,$15,$17,$15
                    db $18,$15,$27,$15,$28,$15,$25,$15
                    db $35,$15,$34,$15,$34,$15,$39,$15
                    db $0A,$15,$19,$15,$1A,$15,$3A,$15
                    db $35,$15,$38,$15,$34,$15,$34,$15
                    db $36,$15,$34,$15,$36,$15,$37,$15
                    db $28,$15,$37,$15,$28,$15,$02,$15
                    db $03,$15,$12,$15,$05,$15,$04,$15
                    db $24,$15,$14,$15,$15,$15,$24,$15
                    db $06,$15,$06,$15,$16,$15,$12,$15
                    db $12,$15,$12,$15,$12,$15,$0E,$15
                    db $17,$15,$0F,$15,$55,$15,$07,$15
                    db $24,$15,$17,$15,$07,$15,$16,$15
                    db $1B,$15,$0B,$15,$1B,$15,$0C,$15
                    db $12,$15,$1C,$15,$0C,$15,$1D,$15
                    db $55,$15,$1E,$15,$55,$15,$55,$15
                    db $17,$15,$55,$15,$55,$15,$16,$15
                    db $0B,$15,$12,$15,$12,$15,$1B,$15
                    db $12,$15,$12,$15,$12,$15,$1E,$15
                    db $55,$15,$12,$15,$55,$15,$55,$15
                    db $55,$15,$55,$15,$55,$15,$80,$1D
                    db $81,$1D,$90,$1D,$91,$1D,$81,$5D
                    db $80,$5D,$92,$1D,$90,$5D,$A0,$1D
                    db $A1,$1D,$B0,$1D,$82,$1D,$A2,$1D
                    db $B1,$1D,$82,$5D,$B2,$1D,$34,$15
                    db $7C,$15,$34,$15,$7D,$15,$87,$15
                    db $88,$15,$97,$15,$98,$15,$83,$1D
                    db $84,$1D,$93,$1D,$94,$1D,$85,$1D
                    db $86,$1D,$95,$1D,$96,$1D,$A7,$15
                    db $A8,$15,$B7,$15,$B8,$15,$34,$15
                    db $8A,$15,$34,$15,$9A,$15,$89,$15
                    db $8B,$15,$13,$15,$9B,$15,$A3,$1D
                    db $A4,$1D,$30,$15,$30,$15,$A5,$1D
                    db $A6,$1D,$30,$15,$30,$15,$B3,$15
                    db $B4,$15,$B5,$15,$B6,$15,$A9,$15
                    db $AA,$15,$B9,$15,$32,$15,$23,$15
                    db $AB,$15,$33,$15,$31,$15,$35,$15
                    db $16,$15,$34,$15,$26,$15,$99,$15
                    db $16,$15,$34,$15,$26,$15,$4C,$15
                    db $4D,$15,$5C,$15,$40,$15,$4D,$15
                    db $4D,$15,$41,$15,$42,$15,$4D,$15
                    db $4D,$15,$43,$15,$44,$15,$4D,$15
                    db $4E,$15,$45,$15,$5D,$15,$5C,$15
                    db $50,$15,$5C,$15,$60,$15,$51,$15
                    db $52,$15,$61,$15,$62,$15,$53,$15
                    db $54,$15,$63,$15,$64,$15,$55,$15
                    db $5D,$15,$65,$15,$5D,$15,$5C,$15
                    db $70,$15,$5C,$15,$46,$15,$71,$15
                    db $72,$15,$47,$15,$48,$15,$73,$15
                    db $74,$15,$49,$15,$4A,$15,$75,$15
                    db $5D,$15,$4B,$15,$5D,$15,$5C,$15
                    db $56,$15,$5C,$15,$66,$15,$57,$15
                    db $58,$15,$67,$15,$68,$15,$59,$15
                    db $5A,$15,$69,$15,$6A,$15,$5B,$15
                    db $5D,$15,$6B,$15,$5D,$15,$5C,$15
                    db $76,$15,$5E,$15,$6C,$15,$77,$15
                    db $78,$15,$6C,$15,$6C,$15,$79,$15
                    db $7A,$15,$6C,$15,$6C,$15,$7B,$15
                    db $5D,$15,$6C,$15,$6D,$15,$04,$15
                    db $05,$15,$04,$15,$05,$15,$06,$15
                    db $34,$15,$06,$15,$34,$15,$34,$15
                    db $29,$15,$34,$15,$19,$15,$2A,$15
                    db $2B,$15,$1A,$15,$1B,$15,$2C,$15
                    db $38,$15,$1C,$15,$38,$15,$34,$15
                    db $19,$15,$34,$15,$19,$15,$1A,$15
                    db $1B,$15,$1A,$15,$1B,$15,$1C,$15
                    db $38,$15,$1C,$15,$38,$15,$34,$15
                    db $09,$15,$34,$15,$19,$15,$0A,$15
                    db $0B,$15,$1A,$15,$1B,$15,$24,$00
                    db $24,$00,$24,$00,$24,$00,$34,$15
                    db $34,$15,$34,$15,$34,$15,$34,$15
                    db $36,$15,$34,$15,$36,$15,$37,$15
                    db $38,$15,$37,$15,$28,$15,$34,$15
                    db $09,$1D,$34,$15,$34,$15,$09,$1D
                    db $0A,$1D,$19,$1D,$1A,$1D,$0B,$1D
                    db $0C,$1D,$1B,$1D,$1C,$1D,$0C,$5D
                    db $0B,$5D,$1C,$5D,$1B,$5D,$34,$15
                    db $8D,$1D,$9C,$1D,$9D,$1D,$AC,$1D
                    db $AD,$1D,$BC,$1D,$BD,$1D,$8C,$1D
                    db $8E,$1D,$BB,$1D,$9E,$1D,$AD,$5D
                    db $AC,$5D,$BD,$5D,$BC,$5D,$0A,$55
                    db $09,$55,$1A,$55,$19,$55,$00,$15
                    db $01,$15,$10,$15,$11,$15,$BB,$1D
                    db $BC,$1D,$34,$1D,$88,$1D,$BD,$1D
                    db $BC,$1D,$89,$1D,$8C,$1D,$BD,$1D
                    db $BC,$1D,$8D,$1D,$89,$5D,$34,$15
                    db $34,$15,$34,$15,$CE,$15,$EC,$15
                    db $ED,$15,$FC,$15,$FD,$15,$EE,$15
                    db $EF,$15,$FE,$15,$FF,$15,$34,$15
                    db $34,$15,$CF,$15,$34,$15,$CE,$15
                    db $CF,$15,$34,$15,$DE,$15,$D8,$15
                    db $D9,$15,$C9,$15,$FD,$15,$C1,$15
                    db $C2,$15,$FE,$15,$DF,$15,$CE,$15
                    db $CF,$15,$DE,$15,$34,$15,$CE,$15
                    db $CF,$15,$34,$15,$DE,$15,$D8,$15
                    db $D9,$15,$6E,$15,$FD,$15,$C1,$15
                    db $C2,$15,$FE,$15,$6F,$15,$CE,$15
                    db $CF,$15,$DE,$15,$34,$15,$CE,$15
                    db $CF,$15,$34,$15,$34,$15,$CE,$15
                    db $CF,$15,$34,$15,$34,$15,$34,$1D
                    db $A8,$1D,$34,$1D,$A8,$1D,$A9,$1D
                    db $8A,$1D,$B9,$1D,$B9,$1D,$34,$15
                    db $DE,$15,$CE,$15,$CF,$15,$C9,$15
                    db $FD,$15,$D8,$15,$D9,$15,$FE,$15
                    db $DF,$15,$C1,$15,$C2,$15,$DE,$15
                    db $34,$15,$CE,$15,$CF,$15,$1D,$1D
                    db $1E,$1D,$2D,$1D,$2E,$1D,$1F,$1D
                    db $29,$1D,$2F,$1D,$39,$1D,$37,$15
                    db $38,$15,$37,$15,$38,$15,$34,$15
                    db $DE,$15,$34,$15,$34,$15,$6E,$15
                    db $FD,$15,$34,$15,$34,$15,$FE,$15
                    db $6F,$15,$34,$15,$34,$15,$DE,$15
                    db $34,$15,$34,$15,$34,$15,$3F,$1D
                    db $2A,$1D,$25,$1D,$3A,$1D,$34,$15
                    db $26,$95,$24,$95,$16,$95,$27,$95
                    db $38,$15,$17,$95,$18,$95,$80,$1D
                    db $81,$1D,$90,$1D,$91,$1D,$82,$1D
                    db $83,$1D,$92,$1D,$93,$1D,$BD,$1D
                    db $BE,$1D,$88,$1D,$34,$1D,$B0,$1D
                    db $B1,$1D,$B2,$1D,$2B,$1D,$20,$15
                    db $21,$15,$30,$15,$31,$15,$02,$15
                    db $03,$15,$12,$15,$13,$15,$B1,$5D
                    db $B0,$5D,$2C,$1D,$B2,$5D,$34,$15
                    db $34,$1D,$34,$15,$34,$1D,$34,$1D
                    db $98,$1D,$34,$1D,$A8,$1D,$89,$1D
                    db $8A,$1D,$99,$1D,$9A,$1D,$8B,$1D
                    db $89,$5D,$9B,$1D,$99,$5D,$9C,$1D
                    db $34,$1D,$AC,$1D,$34,$1D,$24,$15
                    db $16,$15,$34,$15,$26,$15,$17,$15
                    db $18,$15,$27,$15,$28,$15,$B3,$1D
                    db $3B,$1D,$34,$1D,$8E,$1D,$3C,$1D
                    db $B3,$5D,$8F,$1D,$34,$1D,$34,$1D
                    db $A8,$1D,$34,$1D,$A8,$1D,$A9,$1D
                    db $8A,$1D,$B9,$1D,$B9,$1D,$8B,$1D
                    db $A9,$5D,$B9,$1D,$BA,$1D,$AC,$1D
                    db $34,$1D,$AC,$1D,$34,$1D,$34,$15
                    db $34,$15,$0D,$1D,$0E,$1D,$34,$15
                    db $34,$15,$0F,$1D,$34,$15,$1D,$1D
                    db $1E,$1D,$2D,$1D,$2E,$1D,$1F,$1D
                    db $29,$1D,$2F,$1D,$39,$1D,$37,$15
                    db $38,$15,$37,$15,$38,$15,$34,$1D
                    db $A8,$1D,$34,$1D,$B8,$1D,$8B,$1D
                    db $A9,$5D,$B9,$1D,$B9,$1D,$AC,$1D
                    db $34,$1D,$BA,$1D,$34,$1D,$3D,$1D
                    db $3E,$1D,$34,$15,$15,$1D,$3F,$1D
                    db $2A,$1D,$25,$1D,$3A,$1D,$34,$15
                    db $26,$95,$24,$95,$16,$95,$27,$95
                    db $38,$15,$17,$95,$18,$95,$80,$1D
                    db $81,$1D,$90,$1D,$91,$1D,$82,$1D
                    db $83,$1D,$92,$1D,$93,$1D,$32,$15
                    db $22,$15,$10,$15,$11,$15,$22,$15
                    db $23,$15,$10,$15,$11,$15,$33,$15
                    db $00,$15,$10,$15,$11,$15,$A0,$1D
                    db $A1,$1D,$10,$15,$11,$15,$A2,$1D
                    db $A3,$1D,$10,$15,$11,$15,$33,$15
                    db $34,$15,$10,$15,$11,$15,$85,$15
                    db $87,$15,$95,$15,$97,$15,$84,$15
                    db $86,$15,$94,$15,$96,$15,$85,$15
                    db $86,$15,$95,$15,$96,$15,$84,$15
                    db $87,$15,$94,$15,$97,$15,$84,$15
                    db $85,$15,$94,$15,$95,$15,$86,$15
                    db $85,$15,$96,$15,$95,$15,$A6,$15
                    db $A7,$15,$B6,$15,$B7,$15,$94,$15
                    db $A6,$15,$B4,$15,$B6,$15,$A6,$15
                    db $A6,$15,$B6,$15,$B6,$15,$94,$15
                    db $A7,$15,$B4,$15,$B7,$15,$24,$10
                    db $24,$10,$24,$10,$24,$10,$0E,$15
                    db $0F,$15,$1E,$15,$1F,$15,$02,$1D
                    db $03,$1D,$12,$1D,$13,$1D,$20,$1D
                    db $21,$1D,$30,$1D,$31,$1D,$2E,$15
                    db $2F,$15,$3E,$15,$3F,$15,$22,$1D
                    db $23,$1D,$32,$1D,$33,$1D,$20,$1D
                    db $21,$1D,$1C,$15,$1D,$15,$28,$15
                    db $29,$15,$10,$1D,$11,$1D,$2A,$15
                    db $2B,$15,$12,$1D,$13,$1D,$6C,$15
                    db $6D,$15,$7C,$15,$7D,$15,$4E,$15
                    db $4F,$15,$5E,$15,$5F,$15,$6E,$15
                    db $6F,$15,$7E,$15,$7F,$15,$48,$1D
                    db $49,$1D,$58,$1D,$59,$1D,$4A,$1D
                    db $4B,$1D,$5A,$1D,$5B,$1D,$0C,$15
                    db $0D,$15,$1C,$15,$1D,$15,$68,$1D
                    db $69,$1D,$78,$1D,$79,$1D,$6A,$1D
                    db $6B,$1D,$7A,$1D,$7B,$1D,$28,$15
                    db $29,$15,$38,$15,$39,$15,$2A,$15
                    db $2B,$15,$3A,$15,$3B,$15,$08,$15
                    db $09,$15,$18,$15,$19,$15,$0A,$15
                    db $0B,$15,$1A,$15,$1B,$15,$06,$1D
                    db $07,$1D,$16,$1D,$17,$15,$04,$15
                    db $05,$1D,$14,$1D,$15,$1D,$06,$1D
                    db $03,$1D,$16,$1D,$13,$1D,$26,$1D
                    db $27,$1D,$36,$1D,$37,$1D,$24,$1D
                    db $25,$1D,$34,$1D,$35,$1D,$26,$1D
                    db $23,$1D,$36,$1D,$33,$1D,$2C,$15
                    db $2D,$15,$3C,$15,$3D,$15,$3D,$15
                    db $3C,$15,$3C,$15,$3D,$15,$00,$1D
                    db $01,$1D,$10,$1D,$11,$1D,$48,$01
                    db $48,$01,$22,$07,$2E,$08,$26,$0A
                    db $B2,$0B,$3A,$11,$80,$12,$30,$14
                    db $76,$15,$3A,$11,$3A,$11,$3A,$11
                    db $80,$12,$00,$00,$22,$01,$AC,$01
                    db $AC,$01,$04,$05,$2C,$06,$F8,$06
                    db $94,$07,$CE,$07,$3E,$15,$08,$08
                    db $A0,$08,$00,$0A,$A8,$0A,$76,$0B
                    db $22,$0C,$FA,$0D,$A4,$0F,$BC,$11
                    db $58,$15,$22,$01,$EA,$11,$AA,$15
                    db $DA,$15,$3E,$15,$DA,$15,$DA,$15
                    db $4A,$15,$58,$15,$00,$00,$76,$0B
                    db $94,$07,$F8,$06,$AC,$01,$04,$05
                    db $A4,$0F,$BC,$11,$EA,$11,$0E,$12
                    db $94,$07,$68,$15,$32,$00,$32,$00
                    db $F4,$14,$10,$09,$28,$15,$32,$00
                    db $0E,$15,$68,$06,$68,$06,$68,$06
                    db $C8,$15,$68,$06,$A0,$13,$36,$13
                    db $68,$06,$68,$06,$84,$15,$FE,$00
                    db $B9,$B8,$B6,$FE,$00,$BE,$C3,$C6
                    db $FE,$B4,$B1,$BC,$BD,$B0,$B5,$FE
                    db $C0,$C1,$C0,$C1,$C0,$C4,$FE,$B2
                    db $B3,$B2,$B3,$B2,$B3,$B6,$FE,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C6,$FE,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C6,$FF,$FE
                    db $B9,$B8,$FE,$BE,$C3,$FE,$BE,$C3
                    db $FF,$FE,$00,$00,$BA,$B0,$B5,$FE
                    db $00,$BF,$C1,$C0,$C4,$FE,$00,$B9
                    db $B3,$B2,$B3,$B6,$FE,$00,$BE,$C3
                    db $C2,$C3,$C6,$FE,$00,$BA,$BC,$BD
                    db $BC,$BD,$B0,$B5,$FE,$BF,$C1,$C0
                    db $C1,$C0,$C1,$C0,$C4,$FE,$B9,$B3
                    db $B2,$B3,$B2,$B3,$B2,$B3,$FE,$BE
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$FE
                    db $BE,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $FF,$FE,$00,$00,$00,$00,$C7,$FE
                    db $00,$00,$00,$BF,$C4,$FE,$00,$00
                    db $00,$B9,$B3,$B6,$00,$B9,$B8,$BB
                    db $B8,$B6,$FE,$00,$00,$00,$BE,$C3
                    db $C6,$00,$BE,$C3,$C2,$C3,$C6,$FE
                    db $00,$00,$B4,$B1,$BC,$BD,$B0,$B1
                    db $BC,$BD,$BC,$BD,$B0,$B5,$FE,$00
                    db $00,$C0,$C1,$C0,$C1,$C0,$C1,$C0
                    db $C1,$C0,$C1,$C0,$C4,$FE,$B9,$B8
                    db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3
                    db $B2,$B3,$B2,$B3,$FE,$BE,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$FE,$BE,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$FF,$FE,$00,$00,$00,$00
                    db $C7,$FE,$00,$00,$00,$BF,$C4,$FE
                    db $00,$B9,$B8,$BB,$B3,$BB,$B8,$B6
                    db $FE,$00,$BE,$C3,$C2,$C3,$C2,$C3
                    db $C6,$FE,$B4,$B1,$BC,$BD,$BC,$BD
                    db $BC,$BD,$B0,$B5,$FE,$C0,$C1,$C0
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE
                    db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3
                    db $B2,$B3,$FE,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$FE,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $FF,$FE,$B6,$FE,$C6,$FE,$C6,$FF
                    db $FE,$B4,$B1,$FE,$C0,$C1,$FE,$B2
                    db $B3,$FE,$C2,$C3,$FE,$C2,$C3,$FF
                    db $FE,$00,$00,$00,$00,$00,$B9,$B8
                    db $B6,$FE,$00,$00,$00,$00,$00,$BE
                    db $C3,$C6,$FE,$00,$00,$00,$00,$B4
                    db $B1,$BC,$BD,$B0,$B5,$FE,$00,$00
                    db $00,$00,$C0,$C1,$C0,$C1,$C0,$C4
                    db $FE,$B9,$B8,$BB,$B8,$B2,$B3,$B2
                    db $B3,$B2,$B3,$FE,$BE,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$FE,$BE
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$FF,$FE,$00,$00,$00,$00,$C7
                    db $00,$C7,$FE,$00,$00,$00,$BF,$C4
                    db $BF,$C4,$FE,$00,$B9,$B8,$BB,$B3
                    db $BB,$B3,$B6,$FE,$00,$BE,$C3,$C2
                    db $C3,$C2,$C3,$C6,$FE,$B4,$B1,$BC
                    db $BD,$BC,$BD,$BC,$BD,$B0,$B5,$FE
                    db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1
                    db $C0,$C4,$FE,$B2,$B3,$B2,$B3,$B2
                    db $B3,$B2,$B3,$B2,$B3,$FE,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$FF,$FE,$00,$00,$BA
                    db $B0,$B5,$00,$00,$00,$C7,$FE,$00
                    db $BF,$C1,$C0,$C4,$00,$00,$BF,$C4
                    db $FE,$00,$B9,$B3,$B2,$B3,$B6,$00
                    db $B9,$B3,$BB,$B8,$B6,$FE,$00,$BE
                    db $C3,$C2,$C3,$C6,$00,$BE,$C3,$C2
                    db $C3,$C6,$FE,$B4,$B1,$BC,$BD,$BC
                    db $BD,$B0,$B1,$BC,$BD,$BC,$BD,$B0
                    db $B1,$B0,$B5,$FE,$C0,$C1,$C0,$C1
                    db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1
                    db $C0,$C1,$C0,$C4,$FE,$B2,$B3,$B2
                    db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B2
                    db $B3,$B2,$B3,$B2,$B3,$B6,$FE,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C6
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C6,$FF,$FE,$00,$00,$00,$00
                    db $C7,$FE,$00,$00,$00,$BF,$C4,$FE
                    db $00,$B9,$B8,$BB,$B3,$B6,$FE,$00
                    db $BE,$C3,$C2,$C3,$C6,$FE,$B4,$B1
                    db $BC,$BD,$BC,$BD,$B0,$B5,$FE,$C0
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE
                    db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$FE,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$FF,$FE,$B4,$B1,$B0,$B5
                    db $FE,$C0,$C1,$C0,$C8,$FE,$B2,$B3
                    db $B2,$B3,$B6,$FE,$C2,$C3,$C2,$C3
                    db $C6,$FE,$C2,$C3,$C2,$C3,$C6,$FF
                    db $FE,$00,$00,$00,$00,$00,$B4,$B5
                    db $00,$C7,$B4,$B5,$FE,$00,$00,$00
                    db $00,$00,$C0,$C8,$BF,$C8,$C0,$C8
                    db $FE,$00,$00,$00,$B9,$B8,$B2,$B3
                    db $BB,$B3,$B2,$B3,$B6,$FE,$00,$00
                    db $00,$BE,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C6,$FE,$00,$BA,$B0,$B1,$BC
                    db $BD,$BC,$BD,$BC,$BD,$BC,$BD,$B0
                    db $B5,$FE,$BF,$C1,$C0,$C1,$C0,$C1
                    db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C4
                    db $FE,$B9,$B3,$B2,$B3,$B2,$B3,$B2
                    db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$BB
                    db $B8,$B6,$FE,$BE,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$C6,$FE,$BE,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C6,$FF,$FE
                    db $00,$00,$B4,$B1,$B0,$B5,$FE,$00
                    db $00,$C0,$C1,$C0,$C4,$FE,$BB,$B8
                    db $B2,$B3,$B2,$B3,$B6,$FE,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C6,$FE,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C6,$FF,$FE,$00
                    db $00,$00,$00,$00,$00,$00,$C7,$FE
                    db $00,$00,$00,$00,$00,$00,$BF,$C4
                    db $FE,$00,$00,$B9,$B8,$B6,$00,$B9
                    db $B3,$BB,$B8,$B6,$FE,$00,$00,$BE
                    db $C3,$C6,$00,$BE,$C3,$C2,$C3,$C6
                    db $FE,$00,$00,$BA,$BC,$BD,$B0,$B1
                    db $BC,$BD,$BC,$BD,$B0,$B5,$FE,$00
                    db $BF,$C1,$C0,$C1,$C0,$C1,$C0,$C1
                    db $C0,$C1,$C0,$C4,$FE,$00,$B9,$B3
                    db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3
                    db $B2,$B3,$B6,$FE,$00,$BE,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C6,$FE,$B4,$B1,$BC,$BD,$BC
                    db $BD,$BC,$BD,$BC,$BD,$BC,$BD,$BC
                    db $BD,$B0,$B5,$FE,$C0,$C1,$C0,$C1
                    db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1
                    db $C0,$C1,$C0,$C4,$FE,$B2,$B3,$B2
                    db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$B2
                    db $B3,$B2,$B3,$B2,$B3,$B6,$FE,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C6
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C6,$FF,$03,$04,$05,$FE,$12
                    db $13,$16,$06,$07,$FE,$12,$13,$16
                    db $16,$16,$17,$18,$FE,$12,$13,$16
                    db $16,$16,$16,$08,$09,$18,$FE,$12
                    db $13,$16,$16,$16,$16,$16,$16,$19
                    db $1A,$18,$FE,$12,$13,$16,$16,$16
                    db $16,$16,$16,$16,$16,$0A,$1C,$18
                    db $FE,$12,$13,$16,$16,$16,$16,$16
                    db $16,$16,$16,$16,$08,$1B,$1C,$18
                    db $FE,$12,$13,$16,$16,$16,$16,$16
                    db $16,$16,$16,$16,$16,$16,$19,$0C
                    db $0B,$18,$FE,$12,$13,$16,$16,$16
                    db $16,$16,$16,$16,$16,$16,$16,$16
                    db $16,$16,$0A,$1C,$0B,$18,$FE,$12
                    db $13,$16,$16,$16,$16,$16,$16,$16
                    db $16,$16,$16,$16,$16,$16,$16,$08
                    db $1B,$1C,$0B,$18,$FE,$12,$13,$16
                    db $16,$16,$16,$16,$16,$16,$16,$16
                    db $16,$16,$16,$16,$16,$16,$16,$19
                    db $1C,$1C,$0B,$18,$FF,$FE,$13,$24
                    db $FE,$FE,$13,$23,$16,$16,$16,$16
                    db $32,$FF,$FE,$13,$27,$FE,$13,$2C
                    db $2D,$26,$FE,$13,$20,$2E,$2F,$FE
                    db $13,$16,$16,$16,$16,$16,$24,$FE
                    db $13,$16,$16,$16,$16,$16,$16,$16
                    db $16,$0A,$32,$FF,$FE,$13,$23,$FE
                    db $13,$20,$FF,$FE,$13,$24,$FE,$FE
                    db $13,$27,$16,$16,$26,$FE,$FF,$FE
                    db $FE,$13,$24,$FE,$13,$16,$16,$16
                    db $2B,$FE,$FE,$13,$16,$16,$16,$25
                    db $16,$16,$16,$26,$FE,$13,$16,$23
                    db $16,$24,$16,$16,$16,$24,$FE,$13
                    db $16,$20,$16,$16,$16,$16,$16,$27
                    db $FF,$FE,$13,$24,$FE,$13,$16,$16
                    db $25,$FE,$13,$26,$FE,$13,$16,$16
                    db $16,$24,$16,$27,$FE,$13,$16,$16
                    db $16,$16,$16,$2C,$2D,$16,$0A,$32
                    db $FF,$FE,$FE,$13,$16,$16,$25,$FE
                    db $13,$16,$16,$27,$FE,$13,$16,$16
                    db $16,$16,$2C,$2D,$FE,$13,$24,$23
                    db $16,$16,$16,$2E,$2F,$16,$0A,$32
                    db $FE,$13,$16,$16,$16,$16,$16,$16
                    db $16,$16,$16,$08,$1B,$33,$FE,$13
                    db $16,$16,$16,$16,$28,$20,$22,$FE
                    db $13,$16,$16,$16,$16,$16,$29,$2A
                    db $16,$16,$16,$16,$26,$21,$0A,$30
                    db $FE,$13,$16,$16,$16,$16,$16,$16
                    db $16,$16,$16,$16,$16,$16,$16,$20
                    db $FF,$1A,$1B,$FE,$01,$02,$FE,$01
                    db $02,$FE,$01,$02,$FE,$01,$02,$FE
                    db $01,$02,$FE,$01,$02,$FE,$01,$26
                    db $FE,$2C,$2D,$FE,$30,$31,$32,$FF
                    db $04,$05,$06,$07,$FE,$0D,$0E,$0F
                    db $10,$FE,$16,$17,$18,$19,$FE,$1E
                    db $1F,$20,$21,$FE,$1E,$17,$18,$21
                    db $FE,$27,$1F,$28,$29,$FF,$FE,$11
                    db $14,$FE,$1C,$1D,$FF,$FE,$22,$23
                    db $FE,$24,$25,$FE,$2A,$2B,$FE,$2E
                    db $2F,$FE,$33,$34,$FF,$FE,$41,$42
                    db $43,$44,$FE,$45,$46,$47,$48,$FE
                    db $49,$4A,$4B,$4C,$FE,$4D,$4E,$4F
                    db $50,$FE,$51,$52,$53,$54,$FF,$FE
                    db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
                    db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
                    db $FE,$12,$13,$12,$13,$12,$13,$12
                    db $13,$12,$13,$12,$13,$12,$13,$12
                    db $13,$FE,$36,$37,$38,$36,$39,$3A
                    db $3B,$3B,$36,$3A,$3B,$3B,$3B,$36
                    db $3A,$38,$FE,$3C,$3D,$3E,$3C,$3F
                    db $3D,$3E,$3E,$3C,$3D,$3E,$3E,$3E
                    db $3C,$3D,$3E,$FF,$22,$23,$FE,$24
                    db $25,$FE,$2A,$2B,$FE,$33,$34,$FF
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
                    db $36,$FF,$00,$00,$00,$00,$00,$00
                    db $00,$07,$01,$02,$03,$04,$01,$02
                    db $03,$04,$00,$00,$00,$00,$00,$00
                    db $10,$11,$0A,$0B,$0C,$0D,$0A,$0B
                    db $0C,$0D,$00,$00,$17,$18,$00,$00
                    db $19,$15,$16,$12,$14,$15,$16,$12
                    db $14,$15,$23,$24,$25,$22,$23,$24
                    db $25,$1F,$20,$21,$1E,$1F,$20,$21
                    db $1E,$1F,$FF,$08,$09,$03,$04,$05
                    db $06,$00,$00,$00,$00,$00,$07,$08
                    db $09,$03,$04,$0A,$0B,$0C,$0D,$0E
                    db $0F,$00,$00,$00,$00,$10,$11,$0A
                    db $0B,$0C,$0D,$16,$12,$14,$15,$16
                    db $12,$17,$18,$00,$00,$19,$15,$16
                    db $12,$14,$15,$20,$21,$1E,$1F,$20
                    db $21,$1E,$22,$23,$24,$25,$1F,$20
                    db $21,$1E,$26,$FF,$01,$02,$03,$04
                    db $08,$09,$03,$04,$08,$09,$03,$04
                    db $05,$06,$00,$00,$0A,$0B,$0C,$0D
                    db $0A,$0B,$0C,$0D,$0A,$0B,$0C,$0D
                    db $0E,$0F,$00,$00,$0A,$12,$13,$0D
                    db $0A,$12,$13,$0D,$0A,$12,$14,$15
                    db $16,$12,$17,$18,$1A,$1B,$1C,$1D
                    db $1A,$1B,$1C,$1D,$1A,$1B,$1E,$1F
                    db $20,$21,$1E,$22,$FF,$91,$E0,$42
                    db $E0,$10,$E0,$50,$A8,$80,$A8,$00
                    db $E0,$60,$8C,$B0,$8C,$00,$E0,$50
                    db $A8,$80,$A8,$00,$E0,$70,$70,$90
                    db $70,$50,$A8,$B0,$A8,$70,$9C,$00
                    db $E0,$00,$E0,$40,$A8,$A0,$A8,$00
                    db $E0,$70,$24,$E0,$24,$F0,$E3,$12
                    db $E0,$60,$E0,$50,$E0,$43,$E0,$10
                    db $45,$10,$6D,$00,$61,$30,$15,$20
                    db $55,$00,$29,$60,$A9,$70,$C9,$82
                    db $AD,$92,$CD,$A0,$B9,$B0,$D9,$40
                    db $2D,$50,$4D,$07,$20,$25,$00,$15
                    db $1C,$00,$E0,$10,$45,$10,$6D,$30
                    db $15,$20,$55,$00,$29,$40,$2D,$50
                    db $4D,$07,$20,$25,$00,$15,$1C,$00
                    db $E0,$10,$45,$10,$6D,$00,$61,$30
                    db $15,$20,$55,$00,$29,$60,$A9,$70
                    db $C9,$82,$AD,$92,$CD,$A0,$B9,$B0
                    db $D9,$40,$2D,$50,$4D,$07,$20,$25
                    db $00,$15,$1C,$00,$E0,$10,$45,$10
                    db $6D,$30,$15,$20,$55,$00,$29,$40
                    db $2D,$50,$4D,$07,$20,$25,$00,$15
                    db $1C,$00,$E0,$10,$45,$10,$6D,$00
                    db $61,$30,$15,$20,$55,$00,$29,$60
                    db $A9,$70,$C9,$82,$AD,$92,$CD,$A0
                    db $B9,$B0,$D9,$40,$2D,$50,$4D,$07
                    db $20,$25,$00,$15,$1C,$00,$E0,$10
                    db $45,$10,$6D,$30,$15,$20,$55,$00
                    db $29,$40,$2D,$50,$4D,$07,$20,$25
                    db $00,$15,$1C,$00,$E0,$10,$45,$10
                    db $6D,$00,$61,$30,$15,$20,$55,$00
                    db $29,$60,$A9,$70,$C9,$82,$AD,$92
                    db $CD,$A0,$B9,$B0,$D9,$40,$2D,$50
                    db $4D,$07,$20,$25,$00,$15,$1C,$00
                    db $E0,$10,$45,$10,$6D,$30,$15,$20
                    db $55,$00,$29,$40,$2D,$50,$4D,$07
                    db $20,$25,$00,$15,$1C,$F0,$E3,$91
                    db $E0,$4E,$E0,$10,$E0,$A0,$E0,$03
                    db $A8,$00,$BC,$00,$E0,$02,$A8,$00
                    db $E0,$00,$A4,$01,$AC,$00,$E0,$03
                    db $A8,$00,$E0,$01,$A4,$01,$AC,$08
                    db $BC,$00,$E0,$F0,$E3,$46,$E0,$50
                    db $E0,$03,$00,$03,$10,$19,$40,$19
                    db $50,$3F,$40,$26,$08,$26,$18,$00
                    db $E0,$03,$0C,$19,$4C,$03,$1C,$19
                    db $5C,$3F,$40,$26,$04,$26,$14,$00
                    db $E0,$03,$08,$19,$48,$3A,$40,$26
                    db $00,$49,$54,$45,$9C,$60,$30,$00
                    db $E0,$07,$0C,$13,$8C,$07,$18,$13
                    db $98,$3F,$80,$26,$04,$50,$30,$60
                    db $60,$00,$E0,$50,$28,$07,$00,$13
                    db $80,$07,$10,$13,$90,$3F,$80,$80
                    db $54,$00,$E0,$07,$00,$13,$80,$07
                    db $14,$13,$94,$3F,$80,$80,$44,$F0
                    db $E3,$11,$E0,$4B,$E0,$31,$E0,$10
                    db $00,$11,$0C,$12,$10,$13,$1C,$14
                    db $24,$15,$28,$16,$30,$16,$4C,$17
                    db $54,$18,$5C,$19,$60,$1A,$64,$1B
                    db $68,$1C,$6C,$16,$78,$1D,$80,$1E
                    db $90,$07,$81,$10,$85,$11,$99,$00
                    db $E0,$1F,$18,$20,$20,$21,$24,$22
                    db $2C,$23,$30,$20,$38,$24,$40,$25
                    db $50,$26,$58,$27,$5C,$28,$64,$29
                    db $6C,$2A,$74,$2B,$78,$2C,$88,$2D
                    db $90,$2F,$98,$07,$81,$10,$85,$10
                    db $99,$00,$E0,$10,$00,$11,$0C,$12
                    db $10,$13,$1C,$14,$24,$15,$28,$16
                    db $30,$16,$4C,$17,$54,$18,$5C,$19
                    db $60,$1A,$64,$1B,$68,$1C,$6C,$16
                    db $78,$1D,$80,$1E,$90,$07,$81,$10
                    db $85,$11,$99,$00,$E0,$1F,$18,$20
                    db $20,$21,$24,$22,$2C,$23,$30,$20
                    db $38,$24,$40,$25,$50,$26,$58,$27
                    db $5C,$28,$64,$29,$6C,$2A,$74,$2B
                    db $78,$2C,$88,$2D,$90,$2F,$98,$07
                    db $81,$10,$85,$10,$99,$00,$E0,$30
                    db $00,$31,$18,$20,$20,$32,$24,$1B
                    db $2C,$23,$30,$33,$38,$34,$40,$35
                    db $48,$36,$54,$37,$58,$38,$5C,$39
                    db $64,$3A,$68,$3B,$6C,$3C,$70,$3D
                    db $74,$3E,$78,$3F,$94,$07,$81,$11
                    db $89,$10,$99,$00,$E0,$1F,$18,$20
                    db $20,$21,$24,$22,$2C,$23,$30,$20
                    db $38,$24,$40,$25,$50,$26,$58,$27
                    db $5C,$28,$64,$29,$6C,$2A,$74,$2B
                    db $78,$2C,$88,$2D,$90,$2F,$98,$07
                    db $81,$10,$85,$10,$99,$00,$E0,$10
                    db $00,$11,$0C,$12,$10,$13,$1C,$14
                    db $24,$15,$28,$16,$30,$16,$4C,$17
                    db $54,$18,$5C,$19,$60,$1A,$64,$1B
                    db $68,$1C,$6C,$16,$78,$1D,$80,$1E
                    db $90,$07,$81,$10,$85,$11,$99,$00
                    db $E0,$1F,$18,$20,$20,$21,$24,$22
                    db $2C,$23,$30,$20,$38,$24,$40,$25
                    db $50,$26,$58,$27,$5C,$28,$64,$29
                    db $6C,$2A,$74,$2B,$78,$2C,$88,$2D
                    db $90,$2F,$98,$07,$81,$10,$85,$10
                    db $99,$00,$E0,$10,$00,$11,$0C,$12
                    db $10,$13,$1C,$14,$24,$15,$28,$16
                    db $30,$16,$4C,$17,$54,$18,$5C,$19
                    db $60,$1A,$64,$1B,$68,$1C,$6C,$16
                    db $78,$1D,$80,$1E,$90,$07,$81,$10
                    db $85,$11,$99,$00,$E0,$1F,$18,$20
                    db $20,$21,$24,$22,$2C,$23,$30,$20
                    db $38,$24,$40,$25,$50,$26,$58,$27
                    db $5C,$28,$64,$29,$6C,$2A,$74,$2B
                    db $78,$2C,$88,$2D,$90,$2F,$98,$07
                    db $81,$10,$85,$10,$99,$F0,$E3,$11
                    db $E0,$4B,$E0,$31,$E0,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$07
                    db $81,$10,$85,$11,$99,$00,$E0,$1F
                    db $18,$20,$20,$21,$24,$22,$2C,$23
                    db $30,$20,$38,$24,$40,$25,$50,$26
                    db $58,$27,$5C,$28,$64,$29,$6C,$2A
                    db $74,$2B,$78,$2C,$88,$2D,$90,$2F
                    db $98,$07,$81,$10,$85,$10,$99,$00
                    db $E0,$10,$00,$11,$0C,$12,$10,$13
                    db $1C,$14,$24,$15,$28,$16,$30,$16
                    db $4C,$17,$54,$18,$5C,$19,$60,$1A
                    db $64,$1B,$68,$1C,$6C,$16,$78,$1D
                    db $80,$1E,$90,$07,$81,$10,$85,$11
                    db $99,$00,$E0,$1F,$18,$20,$20,$21
                    db $24,$22,$2C,$23,$30,$20,$38,$24
                    db $40,$25,$50,$26,$58,$27,$5C,$28
                    db $64,$29,$6C,$2A,$74,$2B,$78,$2C
                    db $88,$2D,$90,$2F,$98,$07,$81,$10
                    db $85,$10,$99,$00,$E0,$30,$00,$31
                    db $18,$20,$20,$32,$24,$1B,$2C,$23
                    db $30,$33,$38,$34,$40,$35,$48,$36
                    db $54,$37,$58,$38,$5C,$39,$64,$3A
                    db $68,$3B,$6C,$3C,$70,$3D,$74,$3E
                    db $78,$3F,$94,$07,$81,$11,$89,$10
                    db $99,$00,$E0,$1F,$18,$20,$20,$21
                    db $24,$22,$2C,$23,$30,$20,$38,$24
                    db $40,$25,$50,$26,$58,$27,$5C,$28
                    db $64,$29,$6C,$2A,$74,$2B,$78,$2C
                    db $88,$2D,$90,$2F,$98,$07,$81,$10
                    db $85,$10,$99,$10,$00,$11,$0C,$12
                    db $10,$13,$1C,$14,$24,$15,$28,$16
                    db $30,$16,$4C,$17,$54,$18,$5C,$19
                    db $60,$1A,$64,$1B,$68,$1C,$6C,$16
                    db $78,$1D,$80,$1E,$90,$07,$81,$10
                    db $85,$11,$99,$00,$E0,$1F,$18,$20
                    db $20,$21,$24,$22,$2C,$23,$30,$20
                    db $38,$24,$40,$25,$50,$26,$58,$27
                    db $5C,$28,$64,$29,$6C,$2A,$74,$2B
                    db $78,$2C,$88,$2D,$90,$2F,$98,$07
                    db $81,$10,$85,$10,$99,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$07
                    db $81,$10,$85,$11,$99,$00,$E0,$1F
                    db $18,$20,$20,$21,$24,$22,$2C,$23
                    db $30,$20,$38,$24,$40,$25,$50,$26
                    db $58,$27,$5C,$28,$64,$29,$6C,$2A
                    db $74,$2B,$78,$2C,$88,$2D,$90,$2F
                    db $98,$07,$81,$10,$85,$10,$99,$F0
                    db $E3,$4B,$E0,$11,$E0,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$00
                    db $E0,$1F,$18,$20,$20,$21,$24,$22
                    db $2C,$23,$30,$20,$38,$24,$40,$25
                    db $50,$26,$58,$27,$5C,$28,$64,$29
                    db $6C,$2A,$74,$2B,$78,$2C,$88,$2D
                    db $90,$2F,$98,$00,$E0,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$00
                    db $E0,$30,$00,$31,$18,$20,$20,$32
                    db $24,$1B,$2C,$23,$30,$33,$38,$34
                    db $40,$35,$48,$36,$54,$37,$58,$38
                    db $5C,$39,$64,$3A,$68,$3B,$6C,$3C
                    db $70,$3D,$74,$3E,$78,$3F,$94,$00
                    db $E0,$1F,$18,$20,$20,$21,$24,$22
                    db $2C,$23,$30,$20,$38,$24,$40,$25
                    db $50,$26,$58,$27,$5C,$28,$64,$29
                    db $6C,$2A,$74,$2B,$78,$2C,$88,$2D
                    db $90,$2F,$98,$00,$E0,$1F,$18,$20
                    db $20,$21,$24,$22,$2C,$23,$30,$20
                    db $38,$24,$40,$25,$50,$26,$58,$27
                    db $5C,$28,$64,$29,$6C,$2A,$74,$2B
                    db $78,$2C,$88,$2D,$90,$2F,$98,$00
                    db $E0,$1F,$18,$20,$20,$21,$24,$22
                    db $2C,$23,$30,$20,$38,$24,$40,$25
                    db $50,$26,$58,$27,$5C,$28,$64,$29
                    db $6C,$2A,$74,$2B,$78,$2C,$88,$2D
                    db $90,$2F,$98,$00,$E0,$1F,$18,$20
                    db $20,$21,$24,$22,$2C,$23,$30,$20
                    db $38,$24,$40,$25,$50,$26,$58,$27
                    db $5C,$28,$64,$29,$6C,$2A,$74,$2B
                    db $78,$2C,$88,$2D,$90,$2F,$98,$F0
                    db $E3,$91,$E0,$45,$E0,$10,$E0,$20
                    db $88,$10,$B8,$00,$7C,$00,$E0,$90
                    db $58,$A0,$48,$00,$E0,$B0,$98,$00
                    db $E0,$10,$A4,$00,$68,$C0,$5C,$00
                    db $E0,$00,$E0,$10,$A0,$00,$64,$D0
                    db $90,$00,$E0,$10,$A4,$00,$68,$C0
                    db $5C,$00,$E0,$00,$E0,$10,$A0,$00
                    db $64,$D0,$90,$F0,$E3,$91,$E0,$70
                    db $E0,$48,$E0,$20,$E0,$00,$69,$63
                    db $81,$70,$89,$80,$91,$10,$95,$20
                    db $99,$30,$9D,$93,$A1,$A0,$B1,$72
                    db $B5,$00,$E0,$B0,$81,$D0,$85,$62
                    db $89,$80,$95,$C0,$A1,$93,$A5,$A0
                    db $B5,$61,$B9,$30,$68,$10,$70,$30
                    db $98,$00,$E0,$10,$69,$21,$6D,$30
                    db $75,$B0,$79,$D0,$7D,$B0,$81,$D0
                    db $85,$73,$89,$C0,$99,$90,$9D,$C0
                    db $A1,$96,$A5,$30,$5C,$00,$E0,$60
                    db $61,$80,$65,$10,$69,$22,$6D,$30
                    db $79,$90,$81,$A0,$85,$74,$89,$60
                    db $9D,$97,$A1,$10,$40,$00,$E0,$60
                    db $81,$80,$85,$40,$99,$50,$9D,$90
                    db $A1,$A0,$A5,$80,$A9,$B0,$B5,$F0
                    db $B9,$70,$BD,$10,$60,$10,$AC,$00
                    db $E0,$07,$82,$77,$A1,$00,$E0,$07
                    db $82,$77,$A1,$F0,$E3,$91,$E0,$4E
                    db $E0,$10,$E0,$A0,$E0,$03,$A8,$00
                    db $BC,$00,$E0,$02,$A8,$00,$E0,$00
                    db $A4,$01,$AC,$00,$E0,$03,$A8,$00
                    db $E0,$01,$A4,$00,$E0,$01,$A4,$01
                    db $AC,$08,$BC,$00,$E0,$F0,$E3,$46
                    db $E0,$50,$E0,$07,$00,$07,$10,$17
                    db $60,$17,$70,$3F,$60,$26,$08,$90
                    db $B8,$00,$E0,$05,$00,$05,$10,$17
                    db $60,$17,$70,$3F,$60,$26,$08,$A0
                    db $B4,$00,$E0,$05,$00,$17,$60,$39
                    db $60,$47,$70,$60,$48,$90,$A8,$50
                    db $38,$00,$E0,$05,$10,$17,$70,$3B
                    db $68,$47,$64,$60,$58,$00,$E0,$05
                    db $00,$17,$60,$05,$10,$17,$70,$3F
                    db $60,$26,$08,$60,$58,$90,$B8,$00
                    db $E0,$05,$00,$17,$60,$05,$10,$17
                    db $70,$3F,$60,$26,$08,$80,$54,$00
                    db $E0,$3F,$60,$80,$44,$80,$50,$00
                    db $E0,$3F,$60,$80,$44,$80,$50,$F0
                    db $E3,$91,$E0,$42,$E0,$10,$E0,$50
                    db $B0,$80,$B0,$00,$E0,$70,$6C,$90
                    db $6C,$F3,$A4,$00,$E0,$60,$74,$B0
                    db $74,$40,$AC,$A0,$AC,$00,$E0,$60
                    db $80,$B0,$80,$F9,$A4,$00,$E0,$00
                    db $E0,$60,$90,$60,$40,$C0,$40,$F2
                    db $B4,$00,$E0,$70,$38,$E0,$38,$F4
                    db $A4,$F0,$E3,$91,$E0,$42,$E0,$10
                    db $E0,$50,$B0,$80,$B0,$00,$E0,$70
                    db $6C,$90,$6C,$F3,$A4,$00,$E0,$60
                    db $74,$B0,$74,$40,$AC,$A0,$AC,$00
                    db $E0,$60,$80,$B0,$80,$F9,$A4,$00
                    db $E0,$00,$E0,$60,$90,$60,$40,$C0
                    db $40,$F2,$B4,$00,$E0,$70,$38,$E0
                    db $38,$F4,$A4,$F0,$E3,$91,$E0,$4E
                    db $E0,$10,$E0,$A0,$E0,$03,$A8,$00
                    db $BC,$00,$E0,$02,$A8,$00,$E0,$00
                    db $A4,$01,$AC,$00,$E0,$03,$A8,$00
                    db $E0,$01,$A4,$01,$AC,$08,$BC,$00
                    db $E0,$F0,$E3,$46,$E0,$50,$E0,$07
                    db $00,$07,$10,$17,$60,$17,$70,$3F
                    db $60,$26,$08,$90,$B8,$00,$E0,$05
                    db $00,$05,$10,$17,$60,$17,$70,$3F
                    db $60,$26,$08,$A0,$B4,$00,$E0,$05
                    db $00,$17,$60,$39,$60,$47,$70,$60
                    db $48,$90,$A8,$50,$38,$00,$E0,$05
                    db $10,$17,$70,$3B,$68,$47,$64,$60
                    db $58,$00,$E0,$05,$00,$17,$60,$05
                    db $10,$17,$70,$3F,$60,$26,$08,$60
                    db $58,$90,$B8,$00,$E0,$05,$00,$17
                    db $60,$05,$10,$17,$70,$3F,$60,$26
                    db $08,$80,$54,$00,$E0,$3F,$60,$80
                    db $44,$80,$50,$00,$E0,$3F,$60,$80
                    db $44,$80,$50,$F0,$E3,$91,$E0,$45
                    db $E0,$10,$E0,$20,$88,$10,$B8,$00
                    db $7C,$00,$E0,$90,$58,$A0,$48,$00
                    db $E0,$B0,$98,$00,$E0,$10,$A4,$00
                    db $68,$C0,$5C,$00,$E0,$00,$E0,$10
                    db $A0,$00,$64,$D0,$90,$00,$E0,$20
                    db $88,$10,$B8,$00,$7C,$00,$E0,$90
                    db $58,$A0,$48,$00,$E0,$B0,$98,$00
                    db $E0,$10,$A4,$00,$68,$C0,$5C,$00
                    db $E0,$00,$E0,$10,$A0,$00,$64,$D0
                    db $90,$00,$E0,$10,$A0,$00,$64,$D0
                    db $90,$00,$E0,$20,$88,$10,$B8,$00
                    db $7C,$00,$E0,$90,$58,$A0,$48,$00
                    db $E0,$B0,$98,$00,$E0,$10,$A4,$00
                    db $68,$C0,$5C,$F0,$E3,$12,$E0,$60
                    db $E0,$50,$E0,$43,$E0,$10,$45,$10
                    db $6D,$00,$61,$30,$15,$20,$55,$00
                    db $29,$60,$A9,$70,$C9,$82,$AD,$92
                    db $CD,$A0,$B9,$B0,$D9,$40,$2D,$50
                    db $4D,$07,$20,$25,$00,$15,$1C,$00
                    db $E0,$10,$45,$10,$6D,$30,$15,$20
                    db $55,$00,$29,$40,$2D,$50,$4D,$07
                    db $20,$25,$00,$15,$1C,$00,$E0,$10
                    db $45,$10,$6D,$00,$61,$30,$15,$20
                    db $55,$00,$29,$60,$A9,$70,$C9,$82
                    db $AD,$92,$CD,$A0,$B9,$B0,$D9,$40
                    db $2D,$50,$4D,$07,$20,$25,$00,$15
                    db $1C,$00,$E0,$10,$45,$10,$6D,$30
                    db $15,$20,$55,$00,$29,$40,$2D,$50
                    db $4D,$07,$20,$25,$00,$15,$1C,$00
                    db $E0,$10,$45,$10,$6D,$00,$61,$30
                    db $15,$20,$55,$00,$29,$60,$A9,$70
                    db $C9,$82,$AD,$92,$CD,$A0,$B9,$B0
                    db $D9,$40,$2D,$50,$4D,$07,$20,$25
                    db $00,$15,$1C,$00,$E0,$10,$45,$10
                    db $6D,$30,$15,$20,$55,$00,$29,$40
                    db $2D,$50,$4D,$07,$20,$25,$00,$15
                    db $1C,$00,$E0,$10,$45,$10,$6D,$00
                    db $61,$30,$15,$20,$55,$00,$29,$60
                    db $A9,$70,$C9,$82,$AD,$92,$CD,$A0
                    db $B9,$B0,$D9,$40,$2D,$50,$4D,$07
                    db $20,$25,$00,$15,$1C,$00,$E0,$10
                    db $45,$10,$6D,$30,$15,$20,$55,$00
                    db $29,$40,$2D,$50,$4D,$07,$20,$25
                    db $00,$15,$1C,$F0,$E3,$90,$E0,$4E
                    db $E0,$10,$E0,$A0,$E0,$03,$A8,$00
                    db $BC,$00,$E0,$02,$A8,$00,$E0,$00
                    db $A4,$01,$AC,$00,$E0,$03,$A8,$00
                    db $E0,$01,$A4,$01,$AC,$08,$BC,$00
                    db $E0,$F0,$E3,$46,$E0,$50,$E0,$03
                    db $00,$03,$10,$19,$40,$19,$50,$3F
                    db $40,$26,$08,$26,$18,$00,$E0,$03
                    db $00,$03,$10,$19,$40,$19,$50,$3F
                    db $40,$26,$08,$26,$18,$00,$E0,$03
                    db $0C,$19,$4C,$03,$1C,$19,$5C,$3F
                    db $40,$26,$04,$26,$14,$00,$E0,$03
                    db $08,$19,$48,$3A,$40,$26,$00,$49
                    db $54,$45,$9C,$60,$30,$00,$E0,$07
                    db $0C,$13,$8C,$07,$18,$13,$98,$3F
                    db $80,$26,$04,$50,$30,$60,$60,$00
                    db $E0,$50,$28,$07,$00,$13,$80,$07
                    db $10,$13,$90,$3F,$80,$80,$54,$00
                    db $E0,$07,$00,$13,$80,$07,$14,$13
                    db $94,$3F,$80,$80,$44,$00,$E0,$07
                    db $00,$13,$80,$07,$14,$13,$94,$3F
                    db $80,$80,$44,$F0,$E3,$91,$E0,$10
                    db $E0,$45,$E0,$10,$A4,$00,$68,$20
                    db $5C,$00,$E0,$00,$6C,$00,$E0,$30
                    db $40,$40,$5C,$00,$E0,$20,$50,$60
                    db $90,$00,$E0,$50,$A0,$20,$84,$70
                    db $78,$00,$E0,$80,$4C,$00,$E0,$90
                    db $40,$00,$E0,$50,$A0,$20,$84,$70
                    db $78,$00,$E0,$80,$4C,$00,$E0,$90
                    db $40,$F0,$E3,$91,$E0,$70,$E0,$48
                    db $E0,$20,$E0,$00,$69,$63,$81,$70
                    db $89,$80,$91,$10,$95,$20,$99,$30
                    db $9D,$93,$A1,$A0,$B1,$72,$B5,$00
                    db $E0,$B0,$81,$D0,$85,$62,$89,$80
                    db $95,$C0,$A1,$93,$A5,$A0,$B5,$61
                    db $B9,$30,$68,$10,$70,$30,$98,$00
                    db $E0,$10,$69,$21,$6D,$30,$75,$B0
                    db $79,$D0,$7D,$B0,$81,$D0,$85,$73
                    db $89,$C0,$99,$90,$9D,$C0,$A1,$96
                    db $A5,$30,$5C,$00,$E0,$60,$61,$80
                    db $65,$10,$69,$22,$6D,$30,$79,$90
                    db $81,$A0,$85,$74,$89,$60,$9D,$97
                    db $A1,$10,$40,$00,$E0,$60,$81,$80
                    db $85,$40,$99,$50,$9D,$90,$A1,$A0
                    db $A5,$80,$A9,$B0,$B5,$F0,$B9,$70
                    db $BD,$10,$60,$10,$AC,$00,$E0,$07
                    db $82,$77,$A1,$00,$E0,$07,$82,$77
                    db $A1,$F0,$E3,$91,$E0,$10,$E0,$B0
                    db $E0,$C0,$E0,$10,$90,$00,$E0,$00
                    db $88,$10,$B0,$25,$A4,$00,$E0,$10
                    db $68,$20,$B4,$2F,$BC,$00,$E0,$10
                    db $88,$00,$B8,$00,$E0,$00,$A8,$10
                    db $98,$20,$A4,$00,$E0,$00,$68,$20
                    db $A4,$20,$B4,$2F,$BC,$00,$E0,$10
                    db $68,$20,$BC,$00,$E0,$F0,$E3,$46
                    db $E0,$50,$E0,$07,$00,$07,$10,$17
                    db $60,$17,$70,$3F,$60,$26,$08,$90
                    db $B8,$00,$E0,$05,$00,$05,$10,$17
                    db $60,$17,$70,$3F,$60,$26,$08,$90
                    db $B4,$00,$E0,$05,$00,$17,$60,$39
                    db $60,$47,$70,$60,$48,$90,$A8,$50
                    db $38,$00,$E0,$05,$10,$17,$70,$3B
                    db $68,$47,$64,$60,$58,$00,$E0,$05
                    db $00,$17,$60,$05,$10,$17,$70,$3F
                    db $60,$26,$08,$60,$58,$90,$B8,$00
                    db $E0,$05,$00,$17,$60,$05,$10,$17
                    db $70,$3F,$60,$26,$08,$00,$E0,$3F
                    db $60,$80,$44,$80,$50,$00,$E0,$3F
                    db $60,$80,$44,$80,$50,$F0,$E3,$11
                    db $E0,$4B,$E0,$31,$E0,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$07
                    db $81,$10,$85,$11,$99,$00,$E0,$1F
                    db $18,$20,$20,$21,$24,$22,$2C,$23
                    db $30,$20,$38,$24,$40,$25,$50,$26
                    db $58,$27,$5C,$28,$64,$29,$6C,$2A
                    db $74,$2B,$78,$2C,$88,$2D,$90,$2F
                    db $98,$07,$81,$10,$85,$10,$99,$00
                    db $E0,$10,$00,$11,$0C,$12,$10,$13
                    db $1C,$14,$24,$15,$28,$16,$30,$16
                    db $4C,$17,$54,$18,$5C,$19,$60,$1A
                    db $64,$1B,$68,$1C,$6C,$16,$78,$1D
                    db $80,$1E,$90,$07,$81,$10,$85,$11
                    db $99,$00,$E0,$1F,$18,$20,$20,$21
                    db $24,$22,$2C,$23,$30,$20,$38,$24
                    db $40,$25,$50,$26,$58,$27,$5C,$28
                    db $64,$29,$6C,$2A,$74,$2B,$78,$2C
                    db $88,$2D,$90,$2F,$98,$07,$81,$10
                    db $85,$10,$99,$00,$E0,$30,$00,$31
                    db $18,$20,$20,$32,$24,$1B,$2C,$23
                    db $30,$33,$38,$34,$40,$35,$48,$36
                    db $54,$37,$58,$38,$5C,$39,$64,$3A
                    db $68,$3B,$6C,$3C,$70,$3D,$74,$3E
                    db $78,$3F,$94,$07,$81,$11,$89,$10
                    db $99,$00,$E0,$1F,$18,$20,$20,$21
                    db $24,$22,$2C,$23,$30,$20,$38,$24
                    db $40,$25,$50,$26,$58,$27,$5C,$28
                    db $64,$29,$6C,$2A,$74,$2B,$78,$2C
                    db $88,$2D,$90,$2F,$98,$07,$81,$10
                    db $85,$10,$99,$00,$E0,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$07
                    db $81,$10,$85,$11,$99,$00,$E0,$1F
                    db $18,$20,$20,$21,$24,$22,$2C,$23
                    db $30,$20,$38,$24,$40,$25,$50,$26
                    db $58,$27,$5C,$28,$64,$29,$6C,$2A
                    db $74,$2B,$78,$2C,$88,$2D,$90,$2F
                    db $98,$07,$81,$10,$85,$10,$99,$00
                    db $E0,$10,$00,$11,$0C,$12,$10,$13
                    db $1C,$14,$24,$15,$28,$16,$30,$16
                    db $4C,$17,$54,$18,$5C,$19,$60,$1A
                    db $64,$1B,$68,$1C,$6C,$16,$78,$1D
                    db $80,$1E,$90,$07,$81,$10,$85,$11
                    db $99,$00,$E0,$1F,$18,$20,$20,$21
                    db $24,$22,$2C,$23,$30,$20,$38,$24
                    db $40,$25,$50,$26,$58,$27,$5C,$28
                    db $64,$29,$6C,$2A,$74,$2B,$78,$2C
                    db $88,$2D,$90,$2F,$98,$07,$81,$10
                    db $85,$10,$99,$00,$E0,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$07
                    db $81,$10,$85,$11,$99,$F0,$E3,$11
                    db $E0,$4B,$E0,$31,$E0,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$07
                    db $81,$10,$85,$11,$99,$00,$E0,$1F
                    db $18,$20,$20,$21,$24,$22,$2C,$23
                    db $30,$20,$38,$24,$40,$25,$50,$26
                    db $58,$27,$5C,$28,$64,$29,$6C,$2A
                    db $74,$2B,$78,$2C,$88,$2D,$90,$2F
                    db $98,$07,$81,$10,$85,$10,$99,$00
                    db $E0,$10,$00,$11,$0C,$12,$10,$13
                    db $1C,$14,$24,$15,$28,$16,$30,$16
                    db $4C,$17,$54,$18,$5C,$19,$60,$1A
                    db $64,$1B,$68,$1C,$6C,$16,$78,$1D
                    db $80,$1E,$90,$07,$81,$10,$85,$11
                    db $99,$00,$E0,$1F,$18,$20,$20,$21
                    db $24,$22,$2C,$23,$30,$20,$38,$24
                    db $40,$25,$50,$26,$58,$27,$5C,$28
                    db $64,$29,$6C,$2A,$74,$2B,$78,$2C
                    db $88,$2D,$90,$2F,$98,$07,$81,$10
                    db $85,$10,$99,$00,$E0,$30,$00,$31
                    db $18,$20,$20,$32,$24,$1B,$2C,$23
                    db $30,$33,$38,$34,$40,$35,$48,$36
                    db $54,$37,$58,$38,$5C,$39,$64,$3A
                    db $68,$3B,$6C,$3C,$70,$3D,$74,$3E
                    db $78,$3F,$94,$07,$81,$11,$89,$10
                    db $99,$00,$E0,$1F,$18,$20,$20,$21
                    db $24,$22,$2C,$23,$30,$20,$38,$24
                    db $40,$25,$50,$26,$58,$27,$5C,$28
                    db $64,$29,$6C,$2A,$74,$2B,$78,$2C
                    db $88,$2D,$90,$2F,$98,$07,$81,$10
                    db $85,$10,$99,$10,$00,$11,$0C,$12
                    db $10,$13,$1C,$14,$24,$15,$28,$16
                    db $30,$16,$4C,$17,$54,$18,$5C,$19
                    db $60,$1A,$64,$1B,$68,$1C,$6C,$16
                    db $78,$1D,$80,$1E,$90,$07,$81,$10
                    db $85,$11,$99,$00,$E0,$1F,$18,$20
                    db $20,$21,$24,$22,$2C,$23,$30,$20
                    db $38,$24,$40,$25,$50,$26,$58,$27
                    db $5C,$28,$64,$29,$6C,$2A,$74,$2B
                    db $78,$2C,$88,$2D,$90,$2F,$98,$07
                    db $81,$10,$85,$10,$99,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$07
                    db $81,$10,$85,$11,$99,$00,$E0,$1F
                    db $18,$20,$20,$21,$24,$22,$2C,$23
                    db $30,$20,$38,$24,$40,$25,$50,$26
                    db $58,$27,$5C,$28,$64,$29,$6C,$2A
                    db $74,$2B,$78,$2C,$88,$2D,$90,$2F
                    db $98,$07,$81,$10,$85,$10,$99,$F0
                    db $E3,$4B,$E0,$11,$E0,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$00
                    db $E0,$1F,$18,$20,$20,$21,$24,$22
                    db $2C,$23,$30,$20,$38,$24,$40,$25
                    db $50,$26,$58,$27,$5C,$28,$64,$29
                    db $6C,$2A,$74,$2B,$78,$2C,$88,$2D
                    db $90,$2F,$98,$00,$E0,$10,$00,$11
                    db $0C,$12,$10,$13,$1C,$14,$24,$15
                    db $28,$16,$30,$16,$4C,$17,$54,$18
                    db $5C,$19,$60,$1A,$64,$1B,$68,$1C
                    db $6C,$16,$78,$1D,$80,$1E,$90,$00
                    db $E0,$30,$00,$31,$18,$20,$20,$32
                    db $24,$1B,$2C,$23,$30,$33,$38,$34
                    db $40,$35,$48,$36,$54,$37,$58,$38
                    db $5C,$39,$64,$3A,$68,$3B,$6C,$3C
                    db $70,$3D,$74,$3E,$78,$3F,$94,$00
                    db $E0,$1F,$18,$20,$20,$21,$24,$22
                    db $2C,$23,$30,$20,$38,$24,$40,$25
                    db $50,$26,$58,$27,$5C,$28,$64,$29
                    db $6C,$2A,$74,$2B,$78,$2C,$88,$2D
                    db $90,$2F,$98,$00,$E0,$1F,$18,$20
                    db $20,$21,$24,$22,$2C,$23,$30,$20
                    db $38,$24,$40,$25,$50,$26,$58,$27
                    db $5C,$28,$64,$29,$6C,$2A,$74,$2B
                    db $78,$2C,$88,$2D,$90,$2F,$98,$00
                    db $E0,$30,$00,$31,$18,$20,$20,$32
                    db $24,$1B,$2C,$23,$30,$33,$38,$34
                    db $40,$35,$48,$36,$54,$37,$58,$38
                    db $5C,$39,$64,$3A,$68,$3B,$6C,$3C
                    db $70,$3D,$74,$3E,$78,$3F,$94,$00
                    db $E0,$1F,$18,$20,$20,$21,$24,$22
                    db $2C,$23,$30,$20,$38,$24,$40,$25
                    db $50,$26,$58,$27,$5C,$28,$64,$29
                    db $6C,$2A,$74,$2B,$78,$2C,$88,$2D
                    db $90,$2F,$98,$00,$E0,$1F,$18,$20
                    db $20,$21,$24,$22,$2C,$23,$30,$20
                    db $38,$24,$40,$25,$50,$26,$58,$27
                    db $5C,$28,$64,$29,$6C,$2A,$74,$2B
                    db $78,$2C,$88,$2D,$90,$2F,$98,$10
                    db $00,$11,$0C,$12,$10,$13,$1C,$14
                    db $24,$15,$28,$16,$30,$16,$4C,$17
                    db $54,$18,$5C,$19,$60,$1A,$64,$1B
                    db $68,$1C,$6C,$16,$78,$1D,$80,$1E
                    db $90,$00,$E0,$1F,$18,$20,$20,$21
                    db $24,$22,$2C,$23,$30,$20,$38,$24
                    db $40,$25,$50,$26,$58,$27,$5C,$28
                    db $64,$29,$6C,$2A,$74,$2B,$78,$2C
                    db $88,$2D,$90,$2F,$98,$F0,$E3,$50
                    db $E0,$46,$E0,$05,$00,$05,$14,$17
                    db $60,$17,$74,$3F,$60,$26,$08,$60
                    db $5C,$00,$E0,$05,$00,$05,$14,$17
                    db $60,$17,$74,$3F,$60,$26,$08,$60
                    db $5C,$00,$E0,$07,$08,$07,$1C,$17
                    db $68,$17,$7C,$3F,$60,$26,$10,$00
                    db $E0,$07,$10,$17,$70,$3F,$60,$47
                    db $7C,$26,$04,$00,$E0,$26,$04,$35
                    db $74,$47,$70,$60,$58,$90,$B8,$00
                    db $E0,$07,$0C,$07,$1C,$17,$6C,$17
                    db $7C,$3F,$60,$26,$04,$80,$50,$90
                    db $B4,$00,$E0,$3F,$60,$47,$7C,$26
                    db $04,$80,$4C,$00,$E0,$35,$74,$47
                    db $70,$50,$24,$80,$54,$00,$E0,$17
                    db $70,$17,$80,$3F,$60,$90,$40,$90
                    db $50,$80,$44,$80,$54,$B0,$A0,$F0
                    db $E3,$91,$E0,$10,$E0,$45,$E0,$10
                    db $A4,$00,$68,$20,$5C,$00,$E0,$00
                    db $6C,$00,$E0,$30,$40,$40,$5C,$00
                    db $E0,$20,$50,$60,$90,$00,$E0,$50
                    db $A0,$20,$84,$70,$78,$00,$E0,$80
                    db $4C,$00,$E0,$90,$40,$F0,$E3,$91
                    db $E0,$10,$E0,$45,$E0,$20,$84,$70
                    db $74,$00,$E0,$80,$48,$90,$5C,$00
                    db $E0,$00,$E0,$C0,$40,$00,$E0,$90
                    db $40,$00,$E0,$30,$48,$00,$E0,$E0
                    db $04,$F0,$E3,$91,$E0,$10,$E0,$4C
                    db $E0,$80,$E0,$10,$A0,$20,$A4,$10
                    db $B0,$20,$B4,$10,$BC,$50,$A8,$00
                    db $E0,$20,$A0,$10,$A8,$20,$AC,$10
                    db $B8,$20,$BC,$50,$B0,$70,$48,$00
                    db $E0,$20,$A0,$10,$A8,$20,$AC,$10
                    db $B4,$20,$B8,$80,$7C,$00,$E0,$10
                    db $AC,$20,$B0,$10,$B8,$20,$BC,$00
                    db $E0,$10,$A4,$20,$A8,$10,$B0,$20
                    db $B4,$50,$BC,$90,$90,$00,$E0,$10
                    db $A8,$20,$AC,$10,$B4,$20,$B8,$00
                    db $E0,$10,$A0,$20,$A4,$10,$B0,$20
                    db $B4,$10,$BC,$60,$A8,$00,$E0,$20
                    db $A0,$10,$AC,$20,$B0,$10,$B8,$20
                    db $BC,$60,$A4,$F0,$E3,$12,$E0,$50
                    db $E0,$44,$E0,$A0,$A0,$10,$20,$00
                    db $28,$30,$4C,$30,$58,$A0,$A0,$10
                    db $20,$00,$28,$30,$4C,$30,$58,$00
                    db $E0,$A0,$A0,$30,$44,$10,$30,$00
                    db $38,$30,$5C,$00,$E0,$A0,$A0,$30
                    db $48,$30,$54,$00,$E0,$A0,$A0,$10
                    db $20,$00,$28,$20,$50,$50,$58,$00
                    db $E0,$A0,$A0,$20,$48,$50,$50,$20
                    db $58,$00,$E0,$A0,$A0,$50,$44,$00
                    db $2C,$D0,$94,$00,$E0,$A0,$A0,$00
                    db $20,$40,$48,$40,$54,$00,$3C,$00
                    db $E0,$A0,$A0,$10,$20,$30,$48,$70
                    db $74,$20,$5C,$00,$E0,$A0,$A0,$10
                    db $24,$C0,$8C,$10,$30,$20,$58,$00
                    db $E0,$A0,$A0,$50,$40,$50,$50,$80
                    db $48,$20,$58,$00,$E0,$A0,$A0,$00
                    db $24,$20,$4C,$20,$58,$00,$E0,$A0
                    db $A0,$50,$40,$50,$50,$80,$48,$20
                    db $58,$00,$E0,$A0,$A0,$00,$24,$20
                    db $4C,$20,$58,$00,$E0,$A0,$A0,$50
                    db $44,$00,$2C,$D0,$94,$00,$E0,$A0
                    db $A0,$00,$20,$40,$48,$40,$54,$00
                    db $3C,$F0,$E3,$91,$E0,$70,$E0,$48
                    db $E0,$20,$E0,$00,$69,$63,$81,$70
                    db $89,$80,$91,$10,$95,$20,$99,$30
                    db $9D,$93,$A1,$A0,$B1,$72,$B5,$00
                    db $E0,$B0,$81,$D0,$85,$62,$89,$80
                    db $95,$C0,$A1,$93,$A5,$A0,$B5,$61
                    db $B9,$30,$98,$00,$E0,$B0,$81,$D0
                    db $85,$65,$89,$C0,$A1,$96,$A5,$00
                    db $E0,$67,$81,$97,$A1,$00,$E0,$60
                    db $81,$80,$85,$40,$99,$50,$9D,$90
                    db $A1,$A0,$A5,$80,$A9,$B0,$B5,$F0
                    db $B9,$70,$BD,$10,$60,$10,$AC,$00
                    db $E0,$07,$82,$77,$A1,$00,$E0,$07
                    db $82,$77,$A1,$F0,$E3,$91,$E0,$70
                    db $E0,$48,$E0,$20,$E0,$00,$61,$62
                    db $85,$70,$81,$80,$91,$10,$95,$20
                    db $99,$30,$9D,$93,$A1,$A0,$B1,$72
                    db $B5,$00,$E0,$B0,$81,$D0,$85,$62
                    db $89,$80,$95,$C0,$A1,$93,$A5,$A0
                    db $B5,$61,$B9,$30,$64,$30,$98,$00
                    db $E0,$10,$6D,$20,$71,$30,$75,$B0
                    db $79,$D0,$7D,$B0,$85,$D0,$89,$72
                    db $8D,$C0,$99,$90,$9D,$60,$A1,$C0
                    db $A5,$95,$A9,$30,$5C,$00,$E0,$60
                    db $61,$80,$65,$10,$69,$22,$6D,$30
                    db $79,$90,$81,$A0,$85,$74,$89,$60
                    db $9D,$97,$A1,$10,$40,$00,$E0,$60
                    db $81,$80,$85,$40,$99,$50,$9D,$90
                    db $A1,$A0,$A5,$80,$A9,$B0,$B5,$F0
                    db $B9,$70,$BD,$10,$60,$10,$AC,$00
                    db $E0,$07,$82,$77,$A1,$00,$E0,$07
                    db $82,$77,$A1,$F0,$E3,$91,$E0,$46
                    db $E0,$10,$E0,$00,$E0,$00,$E0,$00
                    db $E0,$00,$E0,$00,$E0,$00,$E0,$F0
                    db $E3,$91,$E0,$70,$E0,$48,$E0,$20
                    db $E0,$00,$69,$63,$81,$70,$89,$80
                    db $91,$10,$95,$20,$99,$30,$9D,$93
                    db $A1,$A0,$B1,$72,$B5,$00,$E0,$B0
                    db $81,$D0,$85,$62,$89,$80,$95,$C0
                    db $A1,$93,$A5,$A0,$B5,$61,$B9,$30
                    db $68,$10,$70,$30,$98,$00,$E0,$10
                    db $69,$21,$6D,$30,$75,$B0,$79,$D0
                    db $7D,$B0,$81,$D0,$85,$73,$89,$C0
                    db $99,$90,$9D,$C0,$A1,$96,$A5,$30
                    db $5C,$00,$E0,$60,$61,$80,$65,$10
                    db $69,$22,$6D,$30,$79,$90,$81,$A0
                    db $85,$74,$89,$60,$9D,$97,$A1,$10
                    db $40,$00,$E0,$60,$81,$80,$85,$40
                    db $99,$50,$9D,$90,$A1,$A0,$A5,$80
                    db $A9,$B0,$B5,$F0,$B9,$70,$BD,$10
                    db $60,$10,$AC,$00,$E0,$07,$82,$77
                    db $A1,$00,$E0,$07,$82,$77,$A1,$F0
                    db $E3,$F0,$E3,$F0,$E3,$F0,$E3,$F0
                    db $E3,$F0,$E3,$F0,$E3,$F0,$E3,$F0
                    db $E3,$F0,$E3,$F0,$E3,$F0,$E3,$F0
                    db $E3,$F0,$E3,$F0,$E3,$F0,$E3,$F0
                    db $E3,$41,$E0,$12,$E0,$00,$28,$00
                    db $E0,$00,$30,$00,$E0,$00,$38,$00
                    db $E0,$00,$E0,$00,$28,$00,$E0,$00
                    db $28,$F0,$E3,$41,$E0,$12,$E0,$00
                    db $28,$00,$E0,$00,$28,$00,$E0,$00
                    db $38,$00,$E0,$00,$E0,$00,$28,$00
                    db $E0,$00,$28,$F0,$E3,$41,$E0,$12
                    db $E0,$00,$38,$00,$E0,$00,$38,$00
                    db $E0,$00,$E0,$00,$28,$00,$E0,$00
                    db $E0,$F0,$E3,$91,$E0,$42,$E0,$10
                    db $E0,$70,$24,$E0,$24,$F0,$E3,$91
                    db $E0,$42,$E0,$10,$E0,$00,$E0,$70
                    db $24,$E0,$24,$F0,$E3,$10,$E0,$41
                    db $E0,$00,$28,$00,$E0,$00,$E0,$00
                    db $E0,$00,$2C,$F0,$E3,$10,$E0,$41
                    db $E0,$00,$28,$00,$E0,$00,$E0,$00
                    db $2C,$F0,$E3,$10,$E0,$41,$E0,$00
                    db $28,$00,$E0,$00,$E0,$00,$2C,$F0
                    db $E3,$91,$E0,$10,$E0,$41,$E0,$00
                    db $E0,$00,$E0,$00,$E0,$00,$E0,$00
                    db $E0,$00,$E0,$00,$E0,$00,$E0,$00
                    db $E0,$00,$E0,$00,$E0,$00,$E0,$00
                    db $E0,$00,$E0,$00,$E0,$F0,$E3,$91
                    db $E0,$42,$E0,$13,$E0,$4D,$E0,$00
                    db $E0,$00,$E0,$00,$E0,$00,$E0,$00
                    db $E0,$00,$E0,$00,$E0,$00,$E0,$00
                    db $E0,$00,$E0,$F0,$E3,$91,$E0,$4F
                    db $E0,$20,$E0,$00,$80,$00,$E0,$02
                    db $80,$00,$E0,$02,$80,$F0,$E3,$F0
                    db $E3,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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
                    db $FF,$FF,$FF,$FF

CODE_0FD000:        PHB                       ;
CODE_0FD001:        PHK                       ;
CODE_0FD002:        PLB                       ;
CODE_0FD003:        LDA $700006               ;
CODE_0FD007:        BNE CODE_0FD01B           ;
CODE_0FD009:        LDA $0FF8                 ;
CODE_0FD00C:        AND #$C0                  ;
CODE_0FD00E:        TSB $0FF4                 ;
CODE_0FD011:        LDA $0FFA                 ;
CODE_0FD014:        AND #$C0                  ;
CODE_0FD016:        TSB $0FF6                 ;
CODE_0FD019:        BRA CODE_0FD04F           ;

CODE_0FD01B:        LDA $0FF4                 ;
CODE_0FD01E:        AND #$80                  ;
CODE_0FD020:        LSR A                     ;
CODE_0FD021:        TSB $0FF4                 ;
CODE_0FD024:        LDA $0FF8                 ;
CODE_0FD027:        AND #$C0                  ;
CODE_0FD029:        STA $00                   ;
CODE_0FD02B:        LDA $0FF4                 ;
CODE_0FD02E:        AND #$7F                  ;
CODE_0FD030:        ORA $00                   ;
CODE_0FD032:        STA $0FF4                 ;
CODE_0FD035:        LDA $0FF6                 ;
CODE_0FD038:        AND #$80                  ;
CODE_0FD03A:        LSR A                     ;
CODE_0FD03B:        TSB $0FF6                 ;
CODE_0FD03E:        LDA $0FFA                 ;
CODE_0FD041:        AND #$C0                  ;
CODE_0FD043:        STA $00                   ;
CODE_0FD045:        LDA $0FF6                 ;
CODE_0FD048:        AND #$7F                  ;
CODE_0FD04A:        ORA $00                   ;
CODE_0FD04C:        STA $0FF6                 ;
CODE_0FD04F:        PLB                       ;
CODE_0FD050:        RTL                       ;

CODE_0FD051:        LDA $0F03                 ;
CODE_0FD054:        BNE CODE_0FD096           ;
CODE_0FD056:        LDA $7FFB00               ;
CODE_0FD05A:        STA $075F                 ;
CODE_0FD05D:        STA $0766                 ;
CODE_0FD060:        LDA $7FFB01               ;
CODE_0FD064:        STA $075C                 ;
CODE_0FD067:        STA $0763                 ;
CODE_0FD06A:        LDA $7FFB02               ;
CODE_0FD06E:        BPL CODE_0FD071           ;
CODE_0FD070:        INC A                     ;
CODE_0FD071:        STA $0760                 ;
CODE_0FD074:        STA $0767                 ;
CODE_0FD077:        LDA $7FFB03               ;
CODE_0FD07B:        STA $075A                 ;
CODE_0FD07E:        LDA $7FFB04               ;
CODE_0FD082:        STA $0F2B                 ;
CODE_0FD085:        PHX                       ;
CODE_0FD086:        LDX #$00                  ;
CODE_0FD088:        LDA $701FE8,x             ;
CODE_0FD08C:        STA $07C8,x               ;
CODE_0FD08F:        INX                       ;
CODE_0FD090:        CPX #$06                  ;
CODE_0FD092:        BNE CODE_0FD088           ;
CODE_0FD094:        PLX                       ;
CODE_0FD095:        RTL                       ;

CODE_0FD096:        LDA $700009               ;
CODE_0FD09A:        STA $0760                 ;
CODE_0FD09D:        LDA $0E24                 ;
CODE_0FD0A0:        STA $075C                 ;
CODE_0FD0A3:        LDA #$02                  ;
CODE_0FD0A5:        STA $075A                 ;
CODE_0FD0A8:        STZ $075E                 ;
CODE_0FD0AB:        STZ $0F2B                 ;
CODE_0FD0AE:        PHX                       ;
CODE_0FD0AF:        LDX #$00                  ;
CODE_0FD0B1:        STZ $07CE,x               ;
CODE_0FD0B4:        INX                       ;
CODE_0FD0B5:        CPX #$06                  ;
CODE_0FD0B7:        BNE CODE_0FD0B1           ;
CODE_0FD0B9:        PLX                       ;
CODE_0FD0BA:        RTL                       ;

CODE_0FD0BB:        PHX                       ;
CODE_0FD0BC:        PHY                       ;
CODE_0FD0BD:        LDA $0369                 ;
CODE_0FD0C0:        BEQ CODE_0FD0FB           ;
CODE_0FD0C2:        LDY $0B46,x               ;
CODE_0FD0C5:        LDX #$00                  ;
CODE_0FD0C7:        LDA $0900,y               ;
CODE_0FD0CA:        STA $0800,x               ;
CODE_0FD0CD:        TYA                       ;
CODE_0FD0CE:        AND #$03                  ;
CODE_0FD0D0:        CMP #$01                  ;
CODE_0FD0D2:        BNE CODE_0FD0E5           ;
CODE_0FD0D4:        LDA $0800,x               ;
CODE_0FD0D7:        CMP #$F0                  ;
CODE_0FD0D9:        BCC CODE_0FD0E5           ;
CODE_0FD0DB:        LDA #$F0                  ;
CODE_0FD0DD:        STA $0800,x               ;
CODE_0FD0E0:        LDA #$00                  ;
CODE_0FD0E2:        STA $0D00,y               ;
CODE_0FD0E5:        LDA $0D00,y               ;
CODE_0FD0E8:        STA $0C00,x               ;
CODE_0FD0EB:        LDA #$00                  ;
CODE_0FD0ED:        STA $0D00,y               ;
CODE_0FD0F0:        LDA #$F0                  ;
CODE_0FD0F2:        STA $0900,y               ;
CODE_0FD0F5:        INY                       ;
CODE_0FD0F6:        INX                       ;
CODE_0FD0F7:        CPX #$20                  ;
CODE_0FD0F9:        BNE CODE_0FD0C7           ;
CODE_0FD0FB:        LDX #$00                  ;
CODE_0FD0FD:        STZ $E7                   ;
CODE_0FD0FF:        LDA $0300,x               ;
CODE_0FD102:        BEQ CODE_0FD10E           ;
CODE_0FD104:        JSR CODE_0FD116           ;
CODE_0FD107:        LDA $E7                   ;
CODE_0FD109:        CLC                       ;
CODE_0FD10A:        ADC #$20                  ;
CODE_0FD10C:        STA $E7                   ;
CODE_0FD10E:        INX                       ;
CODE_0FD10F:        CPX #$0D                  ;
CODE_0FD111:        BCC CODE_0FD0FF           ;
CODE_0FD113:        PLY                       ;
CODE_0FD114:        PLX                       ;
CODE_0FD115:        RTS                       ;

CODE_0FD116:        LDA $9E                   ;
CODE_0FD118:        INC A                     ;
CODE_0FD119:        STA $02FC                 ;
CODE_0FD11C:        PHX                       ;
CODE_0FD11D:        LDY $030D,x               ;
CODE_0FD120:        STY $E6                   ;
CODE_0FD122:        LDA $D215,y               ;
CODE_0FD125:        CLC                       ;
CODE_0FD126:        ADC #$A0                  ;
CODE_0FD128:        STA $E4                   ;
CODE_0FD12A:        LDA $D216,y               ;
CODE_0FD12D:        CLC                       ;
CODE_0FD12E:        ADC #$A0                  ;
CODE_0FD130:        STA $E5                   ;
CODE_0FD132:        LDY $E7                   ;
CODE_0FD134:        LDA $031A,x               ;
CODE_0FD137:        JSR CODE_0FD1BB           ;
CODE_0FD13A:        LDA $031A,x               ;
CODE_0FD13D:        CLC                       ;
CODE_0FD13E:        ADC #$08                  ;
CODE_0FD140:        JSR CODE_0FD1BB           ;
CODE_0FD143:        LDY $E7                   ;
CODE_0FD145:        LDA $E4                   ;
CODE_0FD147:        JSR CODE_0FD1A5           ;
CODE_0FD14A:        TYA                       ;
CODE_0FD14B:        CLC                       ;
CODE_0FD14C:        ADC #$10                  ;
CODE_0FD14E:        TAY                       ;
CODE_0FD14F:        LDA $E5                   ;
CODE_0FD151:        JSR CODE_0FD1A5           ;
CODE_0FD154:        LDX $E6                   ;
CODE_0FD156:        CPX #$04                  ;
CODE_0FD158:        BCS CODE_0FD15E           ;
CODE_0FD15A:        LDA #$22                  ;
CODE_0FD15C:        BRA CODE_0FD160           ;

CODE_0FD15E:        LDA #$23                  ;
CODE_0FD160:        LDY $E7                   ;
CODE_0FD162:        INY                       ;
CODE_0FD163:        INY                       ;
CODE_0FD164:        INY                       ;
CODE_0FD165:        PHA                       ;
CODE_0FD166:        JSR CODE_0FD1BB           ;
CODE_0FD169:        PLA                       ;
CODE_0FD16A:        JSR CODE_0FD1BB           ;
CODE_0FD16D:        LDY $E7                   ;
CODE_0FD16F:        TXA                       ;
CODE_0FD170:        ASL A                     ;
CODE_0FD171:        ASL A                     ;
CODE_0FD172:        ASL A                     ;
CODE_0FD173:        TAX                       ;
CODE_0FD174:        LDA #$08                  ;
CODE_0FD176:        STA $E8                   ;
CODE_0FD178:        LDA $D1CD,x               ;
CODE_0FD17B:        STA $0902,y               ;
CODE_0FD17E:        INY                       ;
CODE_0FD17F:        INY                       ;
CODE_0FD180:        INY                       ;
CODE_0FD181:        INY                       ;
CODE_0FD182:        INX                       ;
CODE_0FD183:        DEC $E8                   ;
CODE_0FD185:        BNE CODE_0FD178           ;
CODE_0FD187:        PLX                       ;
CODE_0FD188:        DEC $0327,x               ;
CODE_0FD18B:        LDA $0327,x               ;
CODE_0FD18E:        BNE CODE_0FD1A4           ;
CODE_0FD190:        LDA #$03                  ;
CODE_0FD192:        STA $0327,x               ;
CODE_0FD195:        INC $030D,x               ;
CODE_0FD198:        LDA $030D,x               ;
CODE_0FD19B:        AND #$0F                  ;
CODE_0FD19D:        CMP #$09                  ;
CODE_0FD19F:        BNE CODE_0FD1A4           ;
CODE_0FD1A1:        STZ $0300,x               ;
CODE_0FD1A4:        RTS                       ;

CODE_0FD1A5:        STA $0901,y               ;
CODE_0FD1A8:        CLC                       ;
CODE_0FD1A9:        ADC #$08                  ;
CODE_0FD1AB:        STA $0905,y               ;
CODE_0FD1AE:        CLC                       ;
CODE_0FD1AF:        ADC #$08                  ;
CODE_0FD1B1:        STA $0909,y               ;
CODE_0FD1B4:        CLC                       ;
CODE_0FD1B5:        ADC #$08                  ;
CODE_0FD1B7:        STA $090D,y               ;
CODE_0FD1BA:        RTS                       ;

CODE_0FD1BB:        STA $0900,y               ;
CODE_0FD1BE:        STA $0904,y               ;
CODE_0FD1C1:        STA $0908,y               ;
CODE_0FD1C4:        STA $090C,y               ;
CODE_0FD1C7:        TYA                       ;
CODE_0FD1C8:        CLC                       ;
CODE_0FD1C9:        ADC #$10                  ;
CODE_0FD1CB:        TAY                       ;
CODE_0FD1CC:        RTS                       ;

DATA_0FD1CD:        db $10,$20,$FC,$FC,$11,$21,$FC,$FC
                    db $10,$20,$FC,$FC,$11,$21,$FC,$FC
                    db $12,$22,$FC,$FC,$13,$23,$FC,$FC
                    db $14,$24,$16,$FC,$15,$25,$17,$FC
                    db $4C,$5C,$4E,$5E,$4D,$5D,$4F,$5F
                    db $8C,$9C,$8E,$9E,$8D,$9D,$8F,$9F
                    db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF
                    db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF
                    db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF
                    db $00,$00,$01,$03,$06,$0A,$0F,$14
                    db $1C,$24,$3C,$0E,$0E,$0E,$66,$66
                    db $64,$64,$64,$66,$66

CODE_0FD22A:        PHB
CODE_0FD22B:        PHK                       ;
CODE_0FD22C:        PLB                       ;
CODE_0FD22D:        PHY                       ;
CODE_0FD22E:        LDA $0B46,x               ;
CODE_0FD231:        CLC                       ;
CODE_0FD232:        ADC #$04                  ;
CODE_0FD234:        TAY                       ;
CODE_0FD235:        LDA $47,x                 ;
CODE_0FD237:        CMP #$02                  ;
CODE_0FD239:        BNE CODE_0FD23D           ;
CODE_0FD23B:        LDA #$41                  ;
CODE_0FD23D:        EOR #$2B                  ;
CODE_0FD23F:        STA $0903,y               ;
CODE_0FD242:        LDA $1C,x                 ;
CODE_0FD244:        CMP #$08                  ;
CODE_0FD246:        BEQ CODE_0FD257           ;
CODE_0FD248:        LDA $0EA2,x               ;
CODE_0FD24B:        CMP #$0A                  ;
CODE_0FD24D:        BCS CODE_0FD257           ;
CODE_0FD24F:        LDA $0903,y               ;
CODE_0FD252:        EOR #$20                  ;
CODE_0FD254:        STA $0903,y               ;
CODE_0FD257:        LDA $0F4F,x               ;
CODE_0FD25A:        LSR A                     ;
CODE_0FD25B:        LSR A                     ;
CODE_0FD25C:        AND #$0F                  ;
CODE_0FD25E:        STA $E4                   ;
CODE_0FD260:        LDA $29,x                 ;
CODE_0FD262:        AND #$20                  ;
CODE_0FD264:        BNE CODE_0FD26C           ;
CODE_0FD266:        LDA $E4                   ;
CODE_0FD268:        CMP #$09                  ;
CODE_0FD26A:        BCC CODE_0FD26F           ;
CODE_0FD26C:        STZ $0F4F,x               ;
CODE_0FD26F:        LDA $0F                   ;
CODE_0FD271:        CMP #$09                  ;
CODE_0FD273:        BCS CODE_0FD27D           ;
CODE_0FD275:        LDA $0E67                 ;
CODE_0FD278:        BNE CODE_0FD27D           ;
CODE_0FD27A:        INC $0F4F,x               ;
CODE_0FD27D:        LDX $E4                   ;
CODE_0FD27F:        LDA $03AE                 ;
CODE_0FD282:        STA $0900,y               ;
CODE_0FD285:        LDA $03B9                 ;
CODE_0FD288:        CLC                       ;
CODE_0FD289:        ADC #$08                  ;
CODE_0FD28B:        STA $0901,y               ;
CODE_0FD28E:        LDA $D220,x               ;
CODE_0FD291:        STA $0902,y               ;
CODE_0FD294:        LDA #$02                  ;
CODE_0FD296:        STA $0D00,y               ;
CODE_0FD299:        LDX $9E                   ;
CODE_0FD29B:        LDA $021A,x               ;
CODE_0FD29E:        STA $E4                   ;
CODE_0FD2A0:        LDA $79,x                 ;
CODE_0FD2A2:        STA $E5                   ;
CODE_0FD2A4:        REP #$20                  ;
CODE_0FD2A6:        LDA $E4                   ;
CODE_0FD2A8:        SEC                       ;
CODE_0FD2A9:        SBC $42                   ;
CODE_0FD2AB:        STA $E4                   ;
CODE_0FD2AD:        SEP #$20                  ;
CODE_0FD2AF:        LDA $E5                   ;
CODE_0FD2B1:        BEQ CODE_0FD2B8           ;
CODE_0FD2B3:        LDA #$03                  ;
CODE_0FD2B5:        STA $0D00,y               ;
CODE_0FD2B8:        LDA $03B9                 ;
CODE_0FD2BB:        CMP #$E0                  ;
CODE_0FD2BD:        BCS CODE_0FD2C5           ;
CODE_0FD2BF:        LDA $BC,x                 ;
CODE_0FD2C1:        CMP #$01                  ;
CODE_0FD2C3:        BEQ CODE_0FD2CA           ;
CODE_0FD2C5:        LDA #$F0                  ;
CODE_0FD2C7:        STA $0901,y               ;
CODE_0FD2CA:        PLY                       ;
CODE_0FD2CB:        PLB                       ;
CODE_0FD2CC:        RTL                       ;

CODE_0FD2CD:        LDA $03FA                 ;
CODE_0FD2D0:        BEQ CODE_0FD2FE           ;
CODE_0FD2D2:        LDA $0219                 ;
CODE_0FD2D5:        STA $E4                   ;
CODE_0FD2D7:        LDA $0078                 ;
CODE_0FD2DA:        STA $E5                   ;
CODE_0FD2DC:        STZ $02FE                 ;
CODE_0FD2DF:        REP #$20                  ;
CODE_0FD2E1:        LDA $02FD                 ;
CODE_0FD2E4:        CLC                       ;
CODE_0FD2E5:        ADC $03CC                 ;
CODE_0FD2E8:        CMP $E4                   ;
CODE_0FD2EA:        BCC CODE_0FD2F1           ;
CODE_0FD2EC:        SEP #$20                  ;
CODE_0FD2EE:        LDA #$01                  ;
CODE_0FD2F0:        RTL                       ;

CODE_0FD2F1:        SEP #$20                  ;
CODE_0FD2F3:        STZ $03FA                 ;
CODE_0FD2F6:        LDA #$34                  ;
CODE_0FD2F8:        STA $02F7                 ;
CODE_0FD2FB:        STA $03CF                 ;
CODE_0FD2FE:        LDA $03CF                 ;
CODE_0FD301:        BEQ CODE_0FD32E           ;
CODE_0FD303:        CMP #$28                  ;
CODE_0FD305:        BCC CODE_0FD30B           ;
CODE_0FD307:        LDA #$F8                  ;
CODE_0FD309:        BRA CODE_0FD30D           ;

CODE_0FD30B:        LDA #$F0                  ;
CODE_0FD30D:        STA $03CE                 ;
CODE_0FD310:        LDA $0754                 ;
CODE_0FD313:        BEQ CODE_0FD31E           ;
CODE_0FD315:        LDA $03CE                 ;
CODE_0FD318:        SEC                       ;
CODE_0FD319:        SBC #$10                  ;
CODE_0FD31B:        STA $03CE                 ;
CODE_0FD31E:        DEC $03CF                 ;
CODE_0FD321:        LDA $03CF                 ;
CODE_0FD324:        BNE CODE_0FD326           ;
CODE_0FD326:        STZ $5D                   ;
CODE_0FD328:        STZ $0705                 ;
CODE_0FD32B:        LDA #$00                  ;
CODE_0FD32D:        RTL                       ;

CODE_0FD32E:        LDA #$01                  ;
CODE_0FD330:        STA $0723                 ;
CODE_0FD333:        STA $0254                 ;
CODE_0FD336:        JSR CODE_0FD354           ;
CODE_0FD339:        STZ $03CE                 ;
CODE_0FD33C:        LDA $03FB                 ;
CODE_0FD33F:        BEQ CODE_0FD347           ;
CODE_0FD341:        DEC $03FB                 ;
CODE_0FD344:        LDA #$01                  ;
CODE_0FD346:        RTL                       ;

CODE_0FD347:        LDA $0746                 ;
CODE_0FD34A:        CMP #$01                  ;
CODE_0FD34C:        BCS CODE_0FD351           ;
CODE_0FD34E:        INC $0746                 ;
CODE_0FD351:        LDA #$00                  ;
CODE_0FD353:        RTL                       ;

CODE_0FD354:        LDX #$00                  ;
CODE_0FD356:        REP #$20                  ;
CODE_0FD358:        LDA $11E0,x               ;
CODE_0FD35B:        STA $E4                   ;
CODE_0FD35D:        AND #$7C00                ;
CODE_0FD360:        BEQ CODE_0FD36A           ;
CODE_0FD362:        LDA $E4                   ;
CODE_0FD364:        SEC                       ;
CODE_0FD365:        SBC #$0400                ;
CODE_0FD368:        STA $E4                   ;
CODE_0FD36A:        LDA $E4                   ;
CODE_0FD36C:        AND #$03E0                ;
CODE_0FD36F:        BEQ CODE_0FD379           ;
CODE_0FD371:        LDA $E4                   ;
CODE_0FD373:        SEC                       ;
CODE_0FD374:        SBC #$0020                ;
CODE_0FD377:        STA $E4                   ;
CODE_0FD379:        LDA $E4                   ;
CODE_0FD37B:        AND #$001F                ;
CODE_0FD37E:        BEQ CODE_0FD382           ;
CODE_0FD380:        DEC $E4                   ;
CODE_0FD382:        LDA $E4                   ;
CODE_0FD384:        STA $11E0,x               ;
CODE_0FD387:        INX                       ;
CODE_0FD388:        INX                       ;
CODE_0FD389:        CPX #$20                  ;
CODE_0FD38B:        BNE CODE_0FD358           ;
CODE_0FD38D:        SEP #$20                  ;
CODE_0FD38F:        INC $1200                 ;
CODE_0FD392:        RTS                       ;

DATA_0FD393:        db $90,$80,$70,$90

DATA_0FD397:        db $FF,$01

CODE_0FD399:        PHX
CODE_0FD39A:        PHY
CODE_0FD39B:        LDY $0368                 ;
CODE_0FD39E:        LDX $0F4E                 ;
CODE_0FD3A1:        LDA $021A,y               ;
CODE_0FD3A4:        SEC                       ;
CODE_0FD3A5:        SBC #$0E                  ;
CODE_0FD3A7:        STA $021A,x               ;
CODE_0FD3AA:        LDA $0079,y               ;
CODE_0FD3AD:        STA $79,x                 ;
CODE_0FD3AF:        LDA $0238,y               ;
CODE_0FD3B2:        CLC                       ;
CODE_0FD3B3:        ADC #$08                  ;
CODE_0FD3B5:        STA $0238,x               ;
CODE_0FD3B8:        LDA $07B7,x               ;
CODE_0FD3BB:        AND #$03                  ;
CODE_0FD3BD:        STA $041D,x               ;
CODE_0FD3C0:        TAY                       ;
CODE_0FD3C1:        LDA $D393,y               ;
CODE_0FD3C4:        LDY #$00                  ;
CODE_0FD3C6:        CMP $0238,x               ;
CODE_0FD3C9:        BCC CODE_0FD3CC           ;
CODE_0FD3CB:        INY                       ;
CODE_0FD3CC:        LDA $D397,y               ;
CODE_0FD3CF:        STA $043D,x               ;
CODE_0FD3D2:        STZ $06CB                 ;
CODE_0FD3D5:        LDA #$08                  ;
CODE_0FD3D7:        STA $0490,x               ;
CODE_0FD3DA:        LDA #$01                  ;
CODE_0FD3DC:        STA $BC,x                 ;
CODE_0FD3DE:        STA $10,x                 ;
CODE_0FD3E0:        LSR A                     ;
CODE_0FD3E1:        STA $0402,x               ;
CODE_0FD3E4:        STA $29,x                 ;
CODE_0FD3E6:        PLY                       ;
CODE_0FD3E7:        PLX                       ;
CODE_0FD3E8:        RTS                       ;

CODE_0FD3E9:        PHB                       ;
CODE_0FD3EA:        PHK                       ;
CODE_0FD3EB:        PLB                       ;
CODE_0FD3EC:        LDY $0B46,x               ;
CODE_0FD3EF:        LDA $03AE                 ;
CODE_0FD3F2:        STA $0900,y               ;
CODE_0FD3F5:        CLC                       ;
CODE_0FD3F6:        ADC #$08                  ;
CODE_0FD3F8:        STA $0904,y               ;
CODE_0FD3FB:        LDA $03B9                 ;
CODE_0FD3FE:        STA $0901,y               ;
CODE_0FD401:        STA $0905,y               ;
CODE_0FD404:        LDA #$21                  ;
CODE_0FD406:        STA $0903,y               ;
CODE_0FD409:        STA $0907,y               ;
CODE_0FD40C:        LDA $0F58,x               ;
CODE_0FD40F:        LSR A                     ;
CODE_0FD410:        LSR A                     ;
CODE_0FD411:        LSR A                     ;
CODE_0FD412:        CMP #$03                  ;
CODE_0FD414:        BNE CODE_0FD439           ;
CODE_0FD416:        STZ $0F36,x               ;
CODE_0FD419:        LDA #$01                  ;
CODE_0FD41B:        STA $0F36,x               ;
CODE_0FD41E:        LDA $021A,x               ;
CODE_0FD421:        CLC                       ;
CODE_0FD422:        ADC #$10                  ;
CODE_0FD424:        STA $0F62,x               ;
CODE_0FD427:        LDA $79,x                 ;
CODE_0FD429:        ADC #$00                  ;
CODE_0FD42B:        STA $0F6B,x               ;
CODE_0FD42E:        LDA $03B9                 ;
CODE_0FD431:        STA $0F74,x               ;
CODE_0FD434:        LDA #$00                  ;
CODE_0FD436:        STA $0F58,x               ;
CODE_0FD439:        TAX                       ;
CODE_0FD43A:        LDA $D4CA,x               ;
CODE_0FD43D:        STA $0902,y               ;
CODE_0FD440:        INC A                     ;
CODE_0FD441:        STA $0906,y               ;
CODE_0FD444:        STX $E4                   ;
CODE_0FD446:        LDX $9E                   ;
CODE_0FD448:        LDA $021A,x               ;
CODE_0FD44B:        STA $E5                   ;
CODE_0FD44D:        LDA $79,x                 ;
CODE_0FD44F:        STA $E6                   ;
CODE_0FD451:        REP #$20                  ;
CODE_0FD453:        LDA $E5                   ;
CODE_0FD455:        SEC                       ;
CODE_0FD456:        SBC $42                   ;
CODE_0FD458:        STA $E5                   ;
CODE_0FD45A:        CLC                       ;
CODE_0FD45B:        ADC #$0008                ;
CODE_0FD45E:        STA $E7                   ;
CODE_0FD460:        SEP #$20                  ;
CODE_0FD462:        LDA #$02                  ;
CODE_0FD464:        STA $E9                   ;
CODE_0FD466:        LDA $E6                   ;
CODE_0FD468:        BEQ CODE_0FD46C           ;
CODE_0FD46A:        LDA #$01                  ;
CODE_0FD46C:        ORA $E9                   ;
CODE_0FD46E:        STA $0D00,y               ;
CODE_0FD471:        LDA $E8                   ;
CODE_0FD473:        BEQ CODE_0FD477           ;
CODE_0FD475:        LDA #$01                  ;
CODE_0FD477:        ORA $E9                   ;
CODE_0FD479:        STA $0D04,y               ;
CODE_0FD47C:        LDA $0F36,x               ;
CODE_0FD47F:        BEQ CODE_0FD4C3           ;
CODE_0FD481:        LDA $0F62,x               ;
CODE_0FD484:        STA $E5                   ;
CODE_0FD486:        LDA $0F6B,x               ;
CODE_0FD489:        STA $E6                   ;
CODE_0FD48B:        REP #$20                  ;
CODE_0FD48D:        LDA $E5                   ;
CODE_0FD48F:        SEC                       ;
CODE_0FD490:        SBC $42                   ;
CODE_0FD492:        STA $E5                   ;
CODE_0FD494:        SEP #$20                  ;
CODE_0FD496:        LDA $E5                   ;
CODE_0FD498:        STA $0908,y               ;
CODE_0FD49B:        LDA $0F58,x               ;
CODE_0FD49E:        LSR A                     ;
CODE_0FD49F:        CLC                       ;
CODE_0FD4A0:        ADC #$04                  ;
CODE_0FD4A2:        CLC                       ;
CODE_0FD4A3:        ADC $0F74,x               ;
CODE_0FD4A6:        STA $0909,y               ;
CODE_0FD4A9:        LDX $E4                   ;
CODE_0FD4AB:        LDA $D4CD,x               ;
CODE_0FD4AE:        STA $090A,y               ;
CODE_0FD4B1:        LDA #$28                  ;
CODE_0FD4B3:        STA $090B,y               ;
CODE_0FD4B6:        STZ $E9                   ;
CODE_0FD4B8:        LDA $E6                   ;
CODE_0FD4BA:        BEQ CODE_0FD4BE           ;
CODE_0FD4BC:        LDA #$01                  ;
CODE_0FD4BE:        ORA $E9                   ;
CODE_0FD4C0:        STA $0D08,y               ;
CODE_0FD4C3:        LDX $9E                   ;
CODE_0FD4C5:        INC $0F58,x               ;
CODE_0FD4C8:        PLB                       ;
CODE_0FD4C9:        RTL                       ;

DATA_0FD4CA:        db $86,$A6,$89,$30,$31,$32,$06,$0A
                    db $0E

CODE_0FD4D3:        PHB                       ;
CODE_0FD4D4:        PHK                       ;
CODE_0FD4D5:        PLB                       ;
CODE_0FD4D6:        LDY #$04                  ;
CODE_0FD4D8:        STY $02FF                 ;
CODE_0FD4DB:        LDA $03AE                 ;
CODE_0FD4DE:        SEC                       ;
CODE_0FD4DF:        SBC #$08                  ;
CODE_0FD4E1:        STA $E4                   ;
CODE_0FD4E3:        LDX #$00                  ;
CODE_0FD4E5:        LDA $D603,x               ;
CODE_0FD4E8:        CLC                       ;
CODE_0FD4E9:        ADC $E4                   ;
CODE_0FD4EB:        STA $0800,y               ;
CODE_0FD4EE:        LDA $03B9                 ;
CODE_0FD4F1:        SEC                       ;
CODE_0FD4F2:        SBC #$04                  ;
CODE_0FD4F4:        STA $0801,y               ;
CODE_0FD4F7:        PHX                       ;
CODE_0FD4F8:        LDA $09                   ;
CODE_0FD4FA:        AND #$18                  ;
CODE_0FD4FC:        STX $E5                   ;
CODE_0FD4FE:        CLC                       ;
CODE_0FD4FF:        ADC $E5                   ;
CODE_0FD501:        TAX                       ;
CODE_0FD502:        LDA $D5E3,x               ;
CODE_0FD505:        STA $0803,y               ;
CODE_0FD508:        LDA $D5C3,x               ;
CODE_0FD50B:        STA $0802,y               ;
CODE_0FD50E:        PLX                       ;
CODE_0FD50F:        INY                       ;
CODE_0FD510:        INY                       ;
CODE_0FD511:        INY                       ;
CODE_0FD512:        INY                       ;
CODE_0FD513:        INX                       ;
CODE_0FD514:        CPX #$05                  ;
CODE_0FD516:        BNE CODE_0FD4E5           ;
CODE_0FD518:        LDX $9E                   ;
CODE_0FD51A:        LDA $021A,x               ;
CODE_0FD51D:        STA $E5                   ;
CODE_0FD51F:        LDA $79,x                 ;
CODE_0FD521:        STA $E6                   ;
CODE_0FD523:        REP #$20                  ;
CODE_0FD525:        LDA $E5                   ;
CODE_0FD527:        SEC                       ;
CODE_0FD528:        SBC #$0008                ;
CODE_0FD52B:        SEC                       ;
CODE_0FD52C:        SBC $42                   ;
CODE_0FD52E:        STA $E9                   ;
CODE_0FD530:        CLC                       ;
CODE_0FD531:        ADC #$0010                ;
CODE_0FD534:        STA $E8                   ;
CODE_0FD536:        CLC                       ;
CODE_0FD537:        ADC #$0004                ;
CODE_0FD53A:        STA $DF                   ;
CODE_0FD53C:        CLC                       ;
CODE_0FD53D:        ADC #$0008                ;
CODE_0FD540:        STA $DD                   ;
CODE_0FD542:        CLC                       ;
CODE_0FD543:        ADC #$0004                ;
CODE_0FD546:        STA $E7                   ;
CODE_0FD548:        CLC                       ;
CODE_0FD549:        ADC #$0010                ;
CODE_0FD54C:        STA $E6                   ;
CODE_0FD54E:        SEC                       ;
CODE_0FD54F:        SBC #$0010                ;
CODE_0FD552:        STA $E5                   ;
CODE_0FD554:        SEP #$20                  ;
CODE_0FD556:        LDA #$02                  ;
CODE_0FD558:        STA $E4                   ;
CODE_0FD55A:        LDY #$04                  ;
CODE_0FD55C:        LDX #$05                  ;
CODE_0FD55E:        LDA $E5,x                 ;
CODE_0FD560:        BEQ CODE_0FD564           ;
CODE_0FD562:        LDA #$01                  ;
CODE_0FD564:        ORA $E4                   ;
CODE_0FD566:        STA $0C00,y               ;
CODE_0FD569:        INY                       ;
CODE_0FD56A:        INY                       ;
CODE_0FD56B:        INY                       ;
CODE_0FD56C:        INY                       ;
CODE_0FD56D:        DEX                       ;
CODE_0FD56E:        BNE CODE_0FD55E           ;
CODE_0FD570:        STZ $E4                   ;
CODE_0FD572:        LDA $06CC                 ;
CODE_0FD575:        BNE CODE_0FD58E           ;
CODE_0FD577:        LDA #$F0                  ;
CODE_0FD579:        STA $0815                 ;
CODE_0FD57C:        LDA $DE                   ;
CODE_0FD57E:        BEQ CODE_0FD582           ;
CODE_0FD580:        LDA #$01                  ;
CODE_0FD582:        ORA $E4                   ;
CODE_0FD584:        STA $0C00                 ;
CODE_0FD587:        LDA $DD                   ;
CODE_0FD589:        STA $0800                 ;
CODE_0FD58C:        BRA CODE_0FD5A6           ;

CODE_0FD58E:        LDA #$F0                  ;
CODE_0FD590:        STA $080D                 ;
CODE_0FD593:        STA $0811                 ;
CODE_0FD596:        LDA $E0                   ;
CODE_0FD598:        BEQ CODE_0FD59C           ;
CODE_0FD59A:        LDA #$01                  ;
CODE_0FD59C:        ORA $E4                   ;
CODE_0FD59E:        STA $0C00                 ;
CODE_0FD5A1:        LDA $DF                   ;
CODE_0FD5A3:        STA $0800                 ;
CODE_0FD5A6:        LDA $09                   ;
CODE_0FD5A8:        AND #$10                  ;
CODE_0FD5AA:        LSR A                     ;
CODE_0FD5AB:        LSR A                     ;
CODE_0FD5AC:        LSR A                     ;
CODE_0FD5AD:        LSR A                     ;
CODE_0FD5AE:        CLC                       ;
CODE_0FD5AF:        ADC $03B9                 ;
CODE_0FD5B2:        STA $0801                 ;
CODE_0FD5B5:        LDA #$E7                  ;
CODE_0FD5B7:        STA $0802                 ;
CODE_0FD5BA:        LDA #$2C                  ;
CODE_0FD5BC:        STA $0803                 ;
CODE_0FD5BF:        LDX $9E                   ;
CODE_0FD5C1:        PLB                       ;
CODE_0FD5C2:        RTL                       ;

DATA_0FD5C3:        db $40,$41,$41,$42,$42,$00,$00,$00
                    db $60,$61,$61,$62,$62,$00,$00,$00
                    db $42,$41,$41,$40,$40,$00,$00,$00
                    db $62,$61,$61,$60,$60,$00,$00,$00
                    db $2A,$6A,$6A,$2A,$2A,$00,$00,$00
                    db $2A,$6A,$6A,$2A,$2A,$00,$00,$00
                    db $6A,$2A,$2A,$6A,$6A,$00,$00,$00
                    db $6A,$2A,$2A,$6A,$6A,$00,$00,$00
                    db $00,$10,$20,$30,$20,$C0,$E0,$C4
                    db $C2,$E2,$C5,$C6,$E6,$D4,$C8,$E8
                    db $D5,$CA,$EA,$E4,$C8,$EC,$E5,$CC
                    db $E0,$F4,$CE,$E2,$F5,$C0,$E0,$C4
                    db $EE,$E2,$C5,$CC,$E0,$94,$A4,$E2
                    db $95,$80,$A0,$84,$82,$A2,$85,$C2
                    db $E2,$C5,$C0,$E0,$C4,$C8,$E8,$D5
                    db $C6,$E6,$D4,$C8,$EC,$E5,$CA,$EA
                    db $E4,$CE,$E2,$F5,$CC,$E0,$F4,$EE
                    db $E2,$C5,$C0,$E0,$C4,$A4,$E2,$95
                    db $CC,$E0,$94,$82,$A2,$85,$80,$A0
                    db $84,$00,$01,$01,$00,$02,$02,$03
                    db $04,$05,$06,$08,$09,$EE,$EE,$EE
                    db $00,$F6,$F6,$F6,$00,$EC,$EC,$EC
                    db $00,$00,$00,$00,$E8,$E8,$E8,$00
                    db $F2,$F2,$F2,$00,$FA,$FA,$FA,$EA
                    db $EA,$EA,$00,$E5,$E5,$E5,$00,$E4
                    db $E4,$E4,$00,$00,$00,$00,$E8,$E8
                    db $E8,$00,$ED,$ED,$ED,$00,$E5,$E5
                    db $E5,$A9,$B9,$E8,$00,$A9,$B9,$E8
                    db $00,$A9,$B9,$E8,$00,$00,$00,$00
                    db $A9,$B9,$E8,$00,$A9,$B9,$E8,$00
                    db $A9,$B9,$E8,$27,$27,$26,$27,$27
                    db $27,$26,$27,$27,$27,$26,$27,$27
                    db $27,$27,$27,$27,$26,$27,$27,$27
                    db $26,$27,$27,$27,$26

CODE_0FD6D0:        PHX
CODE_0FD6D1:        INC $03CA                 ;
CODE_0FD6D4:        LDA $03CA                 ;
CODE_0FD6D7:        CMP #$34                  ;
CODE_0FD6D9:        BCS CODE_0FD738           ;
CODE_0FD6DB:        LSR A                     ;
CODE_0FD6DC:        LSR A                     ;
CODE_0FD6DD:        TAX                       ;
CODE_0FD6DE:        LDA $D668,x               ;
CODE_0FD6E1:        CLC                       ;
CODE_0FD6E2:        ADC $03AE                 ;
CODE_0FD6E5:        CLC                       ;
CODE_0FD6E6:        ADC #$18                  ;
CODE_0FD6E8:        STA $08F8                 ;
CODE_0FD6EB:        LDA $D675,x               ;
CODE_0FD6EE:        CLC                       ;
CODE_0FD6EF:        ADC $03AE                 ;
CODE_0FD6F2:        CLC                       ;
CODE_0FD6F3:        ADC #$18                  ;
CODE_0FD6F5:        STA $08FC                 ;
CODE_0FD6F8:        LDA $D682,x               ;
CODE_0FD6FB:        BNE CODE_0FD701           ;
CODE_0FD6FD:        LDA #$F0                  ;
CODE_0FD6FF:        BRA CODE_0FD708           ;

CODE_0FD701:        CLC                       ;
CODE_0FD702:        ADC $03B9                 ;
CODE_0FD705:        CLC                       ;
CODE_0FD706:        ADC #$10                  ;
CODE_0FD708:        STA $08F9                 ;
CODE_0FD70B:        LDA $D68F,x               ;
CODE_0FD70E:        BNE CODE_0FD714           ;
CODE_0FD710:        LDA #$F0                  ;
CODE_0FD712:        BRA CODE_0FD71B           ;

CODE_0FD714:        CLC                       ;
CODE_0FD715:        ADC #$10                  ;
CODE_0FD717:        CLC                       ;
CODE_0FD718:        ADC $03B9                 ;
CODE_0FD71B:        STA $08FD                 ;
CODE_0FD71E:        LDA $D69C,x               ;
CODE_0FD721:        STA $08FA                 ;
CODE_0FD724:        LDA $D6A9,x               ;
CODE_0FD727:        STA $08FE                 ;
CODE_0FD72A:        LDA $D6B6,x               ;
CODE_0FD72D:        STA $08FB                 ;
CODE_0FD730:        LDA $D6C3,x               ;
CODE_0FD733:        STA $08FF                 ;
CODE_0FD736:        BRA CODE_0FD73B           ;

CODE_0FD738:        STZ $03CB                 ;
CODE_0FD73B:        PLX                       ;
CODE_0FD73C:        RTS                       ;

CODE_0FD73D:        PHB                       ;
CODE_0FD73E:        PHK                       ;
CODE_0FD73F:        PLB                       ;
CODE_0FD740:        LDA $03CB                 ;
CODE_0FD743:        BEQ CODE_0FD748           ;
CODE_0FD745:        JSR CODE_0FD6D0           ;
CODE_0FD748:        LDA $0F4C                 ;
CODE_0FD74B:        BEQ CODE_0FD762           ;
CODE_0FD74D:        LDY $014B                 ;
CODE_0FD750:        CPY #$08                  ;
CODE_0FD752:        BNE CODE_0FD771           ;
CODE_0FD754:        LDA $0F4C                 ;
CODE_0FD757:        LSR A                     ;
CODE_0FD758:        LSR A                     ;
CODE_0FD759:        AND #$01                  ;
CODE_0FD75B:        TAY                       ;
CODE_0FD75C:        LDA $D666,y               ;
CODE_0FD75F:        TAY                       ;
CODE_0FD760:        BRA CODE_0FD771           ;

CODE_0FD762:        LDA $0792,x               ;
CODE_0FD765:        BNE CODE_0FD76A           ;
CODE_0FD767:        STZ $014B                 ;
CODE_0FD76A:        LDA $014B                 ;
CODE_0FD76D:        LSR A                     ;
CODE_0FD76E:        LSR A                     ;
CODE_0FD76F:        LSR A                     ;
CODE_0FD770:        TAY                       ;
CODE_0FD771:        LDA $D65C,y               ;
CODE_0FD774:        STA $014C                 ;
CODE_0FD777:        LDA $0B46,x               ;
CODE_0FD77A:        TAY                       ;
CODE_0FD77B:        LDA $03AE                 ;
CODE_0FD77E:        STA $0900,y               ;
CODE_0FD781:        STA $0904,y               ;
CODE_0FD784:        CLC                       ;
CODE_0FD785:        ADC #$08                  ;
CODE_0FD787:        STA $0908,y               ;
CODE_0FD78A:        CLC                       ;
CODE_0FD78B:        ADC #$08                  ;
CODE_0FD78D:        STA $090C,y               ;
CODE_0FD790:        STA $0910,y               ;
CODE_0FD793:        STA $0914,y               ;
CODE_0FD796:        LDA $03B9                 ;
CODE_0FD799:        STA $0901,y               ;
CODE_0FD79C:        STA $090D,y               ;
CODE_0FD79F:        CLC                       ;
CODE_0FD7A0:        ADC #$10                  ;
CODE_0FD7A2:        STA $0905,y               ;
CODE_0FD7A5:        STA $0911,y               ;
CODE_0FD7A8:        SEC                       ;
CODE_0FD7A9:        SBC #$18                  ;
CODE_0FD7AB:        STA $0909,y               ;
CODE_0FD7AE:        STA $0915,y               ;
CODE_0FD7B1:        LDA $47,x                 ;
CODE_0FD7B3:        STA $DE                   ;
CODE_0FD7B5:        CMP #$01                  ;
CODE_0FD7B7:        BEQ CODE_0FD7BD           ;
CODE_0FD7B9:        LDA #$61                  ;
CODE_0FD7BB:        BRA CODE_0FD7BF           ;

CODE_0FD7BD:        LDA #$21                  ;
CODE_0FD7BF:        STA $0903,y               ;
CODE_0FD7C2:        STA $0907,y               ;
CODE_0FD7C5:        STA $090B,y               ;
CODE_0FD7C8:        STA $090F,y               ;
CODE_0FD7CB:        STA $0913,y               ;
CODE_0FD7CE:        STA $0917,y               ;
CODE_0FD7D1:        STX $9E                   ;
CODE_0FD7D3:        LDA $014C                 ;
CODE_0FD7D6:        ASL A                     ;
CODE_0FD7D7:        STA $DD                   ;
CODE_0FD7D9:        ASL A                     ;
CODE_0FD7DA:        CLC                       ;
CODE_0FD7DB:        ADC $DD                   ;
CODE_0FD7DD:        TAX                       ;
CODE_0FD7DE:        CLC                       ;
CODE_0FD7DF:        ADC #$06                  ;
CODE_0FD7E1:        STA $DD                   ;
CODE_0FD7E3:        LDA $DE                   ;
CODE_0FD7E5:        CMP #$01                  ;
CODE_0FD7E7:        BEQ CODE_0FD7F4           ;
CODE_0FD7E9:        LDA $DD                   ;
CODE_0FD7EB:        CLC                       ;
CODE_0FD7EC:        ADC #$2A                  ;
CODE_0FD7EE:        STA $DD                   ;
CODE_0FD7F0:        SEC                       ;
CODE_0FD7F1:        SBC #$06                  ;
CODE_0FD7F3:        TAX                       ;
CODE_0FD7F4:        LDA $D608,x               ;
CODE_0FD7F7:        STA $0902,y               ;
CODE_0FD7FA:        LDA #$02                  ;
CODE_0FD7FC:        STA $0D00,y               ;
CODE_0FD7FF:        INY                       ;
CODE_0FD800:        INY                       ;
CODE_0FD801:        INY                       ;
CODE_0FD802:        INY                       ;
CODE_0FD803:        INX                       ;
CODE_0FD804:        CPX $DD                   ;
CODE_0FD806:        BNE CODE_0FD7F4           ;
CODE_0FD808:        LDA #$00                  ;
CODE_0FD80A:        STA $0CFC,y               ;
CODE_0FD80D:        STA $0CF0,y               ;
CODE_0FD810:        LDX $9E                   ;
CODE_0FD812:        LDA $021A,x               ;
CODE_0FD815:        STA $E4                   ;
CODE_0FD817:        LDA $79,x                 ;
CODE_0FD819:        STA $E5                   ;
CODE_0FD81B:        REP #$20                  ;
CODE_0FD81D:        LDA $E4                   ;
CODE_0FD81F:        SEC                       ;
CODE_0FD820:        SBC $42                   ;
CODE_0FD822:        STA $E4                   ;
CODE_0FD824:        CLC                       ;
CODE_0FD825:        ADC #$0008                ;
CODE_0FD828:        STA $E6                   ;
CODE_0FD82A:        CLC                       ;
CODE_0FD82B:        ADC #$0008                ;
CODE_0FD82E:        STA $E8                   ;
CODE_0FD830:        CLC                       ;
CODE_0FD831:        ADC #$0030                ;
CODE_0FD834:        STA $E2                   ;
CODE_0FD836:        SEP #$20                  ;
CODE_0FD838:        LDA $0B46,x               ;
CODE_0FD83B:        TAY                       ;
CODE_0FD83C:        LDA $E3                   ;
CODE_0FD83E:        CMP #$FF                  ;
CODE_0FD840:        BNE CODE_0FD848           ;
CODE_0FD842:        STZ $10,x                 ;
CODE_0FD844:        STZ $29,x                 ;
CODE_0FD846:        STZ $1C,x                 ;
CODE_0FD848:        LDA $E5                   ;
CODE_0FD84A:        BEQ CODE_0FD854           ;
CODE_0FD84C:        LDA #$03                  ;
CODE_0FD84E:        STA $0D00,y               ;
CODE_0FD851:        STA $0D04,y               ;
CODE_0FD854:        LDA $E7                   ;
CODE_0FD856:        BEQ CODE_0FD85D           ;
CODE_0FD858:        LDA #$01                  ;
CODE_0FD85A:        STA $0D08,y               ;
CODE_0FD85D:        LDA $E9                   ;
CODE_0FD85F:        BEQ CODE_0FD86C           ;
CODE_0FD861:        LDA #$01                  ;
CODE_0FD863:        STA $0D0C,y               ;
CODE_0FD866:        STA $0D10,y               ;
CODE_0FD869:        STA $0D14,y               ;
CODE_0FD86C:        LDA $0F4C                 ;
CODE_0FD86F:        BNE CODE_0FD883           ;
CODE_0FD871:        STZ $0F4C                 ;
CODE_0FD874:        INC $014B                 ;
CODE_0FD877:        LDA $014B                 ;
CODE_0FD87A:        CMP #$30                  ;
CODE_0FD87C:        BCC CODE_0FD8A7           ;
CODE_0FD87E:        STZ $014B                 ;
CODE_0FD881:        BRA CODE_0FD8A7           ;

CODE_0FD883:        DEC $0F4C                 ;
CODE_0FD886:        LDA $0F4C                 ;
CODE_0FD889:        BNE CODE_0FD8A7           ;
CODE_0FD88B:        LDA $014B                 ;
CODE_0FD88E:        CMP #$06                  ;
CODE_0FD890:        BNE CODE_0FD8A4           ;
CODE_0FD892:        INC $014B                 ;
CODE_0FD895:        LDA #$28                  ;
CODE_0FD897:        STA $0F4C                 ;
CODE_0FD89A:        LDA #$3A                  ;
CODE_0FD89C:        STA $1600                 ;
CODE_0FD89F:        JSR CODE_0FD399           ;
CODE_0FD8A2:        BRA CODE_0FD8A7           ;

CODE_0FD8A4:        STZ $014B                 ;
CODE_0FD8A7:        LDA $0283                 ;
CODE_0FD8AA:        BNE CODE_0FD8EB           ;
CODE_0FD8AC:        LDX $9E                   ;
CODE_0FD8AE:        LDY $0B46,x               ;
CODE_0FD8B1:        LDX #$06                  ;
CODE_0FD8B3:        LDA $0903,y               ;
CODE_0FD8B6:        ORA #$80                  ;
CODE_0FD8B8:        STA $0903,y               ;
CODE_0FD8BB:        INY                       ;
CODE_0FD8BC:        INY                       ;
CODE_0FD8BD:        INY                       ;
CODE_0FD8BE:        INY                       ;
CODE_0FD8BF:        DEX                       ;
CODE_0FD8C0:        BNE CODE_0FD8B3           ;
CODE_0FD8C2:        LDX $9E                   ;
CODE_0FD8C4:        LDY $0B46,x               ;
CODE_0FD8C7:        LDA $0901,y               ;
CODE_0FD8CA:        CLC                       ;
CODE_0FD8CB:        ADC #$08                  ;
CODE_0FD8CD:        STA $0901,y               ;
CODE_0FD8D0:        STA $090D,y               ;
CODE_0FD8D3:        LDA $0905,y               ;
CODE_0FD8D6:        SEC                       ;
CODE_0FD8D7:        SBC #$18                  ;
CODE_0FD8D9:        STA $0905,y               ;
CODE_0FD8DC:        STA $0911,y               ;
CODE_0FD8DF:        LDA $0909,y               ;
CODE_0FD8E2:        CLC                       ;
CODE_0FD8E3:        ADC #$20                  ;
CODE_0FD8E5:        STA $0909,y               ;
CODE_0FD8E8:        STA $0915,y               ;
CODE_0FD8EB:        JSR CODE_0FD0BB           ;
CODE_0FD8EE:        PLB                       ;
CODE_0FD8EF:        RTL                       ;

DATA_0FD8F0:        db $03,$02,$06,$08,$01,$13

CODE_0FD8F6:        PHB                       ;
CODE_0FD8F7:        PHK                       ;
CODE_0FD8F8:        PLB                       ;
CODE_0FD8F9:        PHX                       ;
CODE_0FD8FA:        LDA $0770                 ;
CODE_0FD8FD:        BEQ CODE_0FD94C           ;
CODE_0FD8FF:        LDA $0752                 ;
CODE_0FD902:        CMP #$02                  ;
CODE_0FD904:        BEQ CODE_0FD913           ;
CODE_0FD906:        LDY #$05                  ;
CODE_0FD908:        LDA $0710                 ;
CODE_0FD90B:        CMP #$06                  ;
CODE_0FD90D:        BEQ CODE_0FD91C           ;
CODE_0FD90F:        CMP #$07                  ;
CODE_0FD911:        BEQ CODE_0FD91C           ;
CODE_0FD913:        LDY $BA                   ;
CODE_0FD915:        LDA $0743                 ;
CODE_0FD918:        BEQ CODE_0FD91C           ;
CODE_0FD91A:        LDY #$04                  ;
CODE_0FD91C:        LDA $0F                   ;
CODE_0FD91E:        CMP #$04                  ;
CODE_0FD920:        BEQ CODE_0FD943           ;
CODE_0FD922:        CMP #$05                  ;
CODE_0FD924:        BEQ CODE_0FD943           ;
CODE_0FD926:        LDA $DB                   ;
CODE_0FD928:        CMP #$39                  ;
CODE_0FD92A:        BEQ CODE_0FD939           ;
CODE_0FD92C:        CMP #$3B                  ;
CODE_0FD92E:        BEQ CODE_0FD939           ;
CODE_0FD930:        CMP #$3D                  ;
CODE_0FD932:        BEQ CODE_0FD939           ;
CODE_0FD934:        LDA $D8F0,y               ;
CODE_0FD937:        BRA CODE_0FD93B           ;

CODE_0FD939:        LDA #$01                  ;
CODE_0FD93B:        LDX $0EDF                 ;
CODE_0FD93E:        BNE CODE_0FD943           ;
CODE_0FD940:        STA $1602                 ;
CODE_0FD943:        LDX $DB                   ;
CODE_0FD945:        CPX #$07                  ;
CODE_0FD947:        BNE CODE_0FD94C           ;
CODE_0FD949:        STA $0EDF                 ;
CODE_0FD94C:        PLX                       ;
CODE_0FD94D:        PLB                       ;
CODE_0FD94E:        RTL                       ;

CODE_0FD94F:        PHB                       ;
CODE_0FD950:        PHK                       ;
CODE_0FD951:        PLB                       ;
CODE_0FD952:        LDA $0770                 ;
CODE_0FD955:        CMP #$02                  ;
CODE_0FD957:        BEQ CODE_0FD978           ;
CODE_0FD959:        CMP #$01                  ;
CODE_0FD95B:        BNE CODE_0FD9B9           ;
CODE_0FD95D:        LDA $0772                 ;
CODE_0FD960:        CMP #$03                  ;
CODE_0FD962:        BNE CODE_0FD9B9           ;
CODE_0FD964:        LDA $0E67                 ;
CODE_0FD967:        BNE CODE_0FD9B9           ;
CODE_0FD969:        LDA $1201                 ;
CODE_0FD96C:        CMP #$0F                  ;
CODE_0FD96E:        BNE CODE_0FD9B9           ;
CODE_0FD970:        LDA $0777                 ;
CODE_0FD973:        BEQ CODE_0FD97A           ;
CODE_0FD975:        DEC $0777                 ;
CODE_0FD978:        PLB                       ;
CODE_0FD979:        RTL                       ;

CODE_0FD97A:        LDA $0F                   ;
CODE_0FD97C:        CMP #$02                  ;
CODE_0FD97E:        BEQ CODE_0FD9B9           ;
CODE_0FD980:        CMP #$03                  ;
CODE_0FD982:        BEQ CODE_0FD9B9           ;
CODE_0FD984:        LDA $0B7A                 ;
CODE_0FD987:        BNE CODE_0FD9B9           ;
CODE_0FD989:        LDA $0B75                 ;
CODE_0FD98C:        CMP #$02                  ;
CODE_0FD98E:        BCS CODE_0FD9B9           ;
CODE_0FD990:        LDA $0F8A                 ;
CODE_0FD993:        BEQ CODE_0FD99A           ;
CODE_0FD995:        DEC $0F8A                 ;
CODE_0FD998:        BRA CODE_0FD9B9           ;

CODE_0FD99A:        LDA $0B75                 ;
CODE_0FD99D:        BNE CODE_0FD9B9           ;
CODE_0FD99F:        LDA $0FF6                 ;
CODE_0FD9A2:        AND #$10                  ;
CODE_0FD9A4:        BEQ CODE_0FD9B9           ;
CODE_0FD9A6:        LDA #$11                  ;
CODE_0FD9A8:        STA $0777                 ;
CODE_0FD9AB:        LDA #$F1                  ;
CODE_0FD9AD:        STA $1602                 ;
CODE_0FD9B0:        LDA #$43                  ;
CODE_0FD9B2:        STA $1600                 ;
CODE_0FD9B5:        JSL CODE_0FDA18           ;
CODE_0FD9B9:        PLB                       ;
CODE_0FD9BA:        RTL                       ;

CODE_0FD9BB:        INC $0B76                 ;
CODE_0FD9BE:        LDA #$38                  ;
CODE_0FD9C0:        STA $0287                 ;
CODE_0FD9C3:        REP #$20                  ;
CODE_0FD9C5:        LDA #$B000                ;
CODE_0FD9C8:        STA $0285                 ;
CODE_0FD9CB:        LDA #$0800                ;
CODE_0FD9CE:        STA $0288                 ;
CODE_0FD9D1:        LDA #$7C00                ;
CODE_0FD9D4:        STA $028A                 ;
CODE_0FD9D7:        SEP #$20                  ;
CODE_0FD9D9:        RTS                       ;

CODE_0FD9DA:        INC $0B76                 ;
CODE_0FD9DD:        LDA #$07                  ;
CODE_0FD9DF:        STA $0287                 ;
CODE_0FD9E2:        REP #$20                  ;
CODE_0FD9E4:        LDA #$B800                ;
CODE_0FD9E7:        STA $0285                 ;
CODE_0FD9EA:        LDA #$0800                ;
CODE_0FD9ED:        STA $0288                 ;
CODE_0FD9F0:        LDA #$7C00                ;
CODE_0FD9F3:        STA $028A                 ;
CODE_0FD9F6:        SEP #$20                  ;
CODE_0FD9F8:        RTS                       ;

CODE_0FD9F9:        PHX                       ;
CODE_0FD9FA:        PHY                       ;
CODE_0FD9FB:        JSR CODE_0FDE85           ;
CODE_0FD9FE:        JSR CODE_0FDE22           ;
CODE_0FDA01:        LDA #$22                  ;
CODE_0FDA03:        STA $1204                 ;
CODE_0FDA06:        LDA #$02                  ;
CODE_0FDA08:        STA $1205                 ;
CODE_0FDA0B:        LDA #$15                  ;
CODE_0FDA0D:        STA $1207                 ;
CODE_0FDA10:        LDA #$02                  ;
CODE_0FDA12:        STA $1208                 ;
CODE_0FDA15:        PLY                       ;
CODE_0FDA16:        PLX                       ;
CODE_0FDA17:        RTL                       ;

CODE_0FDA18:        JSR CODE_0FDE85           ;
CODE_0FDA1B:        JSR CODE_0FDE22           ;
CODE_0FDA1E:        JSR CODE_0FDA4C           ;
CODE_0FDA21:        JSR CODE_0FD9BB           ;
CODE_0FDA24:        LDA #$01                  ;
CODE_0FDA26:        STA $0776                 ;
CODE_0FDA29:        STZ $0B77                 ;
CODE_0FDA2C:        STZ $0B78                 ;
CODE_0FDA2F:        STZ $0F8A                 ;
CODE_0FDA32:        RTL                       ;

CODE_0FDA33:        PHB                       ;
CODE_0FDA34:        PHK                       ;
CODE_0FDA35:        PLB                       ;
CODE_0FDA36:        PHX                       ;
CODE_0FDA37:        PHY                       ;
CODE_0FDA38:        LDA $0B75                 ;
CODE_0FDA3B:        ASL A                     ;
CODE_0FDA3C:        TAX                       ;
CODE_0FDA3D:        JSR (PNTR_0FDA44,x)       ;
CODE_0FDA40:        PLY                       ;
CODE_0FDA41:        PLX                       ;
CODE_0FDA42:        PLB                       ;
CODE_0FDA43:        RTL                       ;

PNTR_0FDA44:        dw CODE_0FDD00
                    dw CODE_0FDA6F
                    dw CODE_0FDDFC
                    dw CODE_0FDD6A

CODE_0FDA4C:        REP #$20                  ;
CODE_0FDA4E:        LDA #$0010                ;
CODE_0FDA51:        STA $0B6B                 ;
CODE_0FDA54:        LDA #$0064                ;
CODE_0FDA57:        STA $0B6D                 ;
CODE_0FDA5A:        LDA #$00A4                ;
CODE_0FDA5D:        STA $0B6F                 ;
CODE_0FDA60:        LDA #$00C4                ;
CODE_0FDA63:        STA $0B71                 ;
CODE_0FDA66:        LDA #$00D0                ;
CODE_0FDA69:        STA $0B73                 ;
CODE_0FDA6C:        SEP #$20                  ;
CODE_0FDA6E:        RTS                       ;

CODE_0FDA6F:        JSR CODE_0FDC34           ;
CODE_0FDA72:        LDA $0FF6                 ;
CODE_0FDA75:        STA $F2                   ;
CODE_0FDA77:        AND #$2C                  ;
CODE_0FDA79:        BEQ CODE_0FDAF3           ;
CODE_0FDA7B:        LDA $1680                 ;
CODE_0FDA7E:        BEQ CODE_0FDAA2           ;
CODE_0FDA80:        AND #$10                  ;
CODE_0FDA82:        CMP #$10                  ;
CODE_0FDA84:        BEQ CODE_0FDAA2           ;
CODE_0FDA86:        LDA $F2                   ;
CODE_0FDA88:        AND #$20                  ;
CODE_0FDA8A:        BEQ CODE_0FDA96           ;
CODE_0FDA8C:        LDA $0B77                 ;
CODE_0FDA8F:        EOR #$02                  ;
CODE_0FDA91:        STA $0B77                 ;
CODE_0FDA94:        BRA CODE_0FDABD           ;

CODE_0FDA96:        LDA $F2                   ;
CODE_0FDA98:        AND #$04                  ;
CODE_0FDA9A:        LSR A                     ;
CODE_0FDA9B:        CMP $0B77                 ;
CODE_0FDA9E:        BNE CODE_0FDA91           ;
CODE_0FDAA0:        BRA CODE_0FDAF3           ;

CODE_0FDAA2:        LDA $F2                   ;
CODE_0FDAA4:        AND #$20                  ;
CODE_0FDAA6:        BNE CODE_0FDADE           ;
CODE_0FDAA8:        LDA $F2                   ;
CODE_0FDAAA:        AND #$08                  ;
CODE_0FDAAC:        BNE CODE_0FDAC7           ;
CODE_0FDAAE:        INC $0B77                 ;
CODE_0FDAB1:        LDA $0B77                 ;
CODE_0FDAB4:        CMP #$03                  ;
CODE_0FDAB6:        BCC CODE_0FDABD           ;
CODE_0FDAB8:        DEC $0B77                 ;
CODE_0FDABB:        BRA CODE_0FDAF3           ;

CODE_0FDABD:        LDA #$01                  ;
CODE_0FDABF:        STA $1603                 ;
CODE_0FDAC2:        STZ $0B78                 ;
CODE_0FDAC5:        BRA CODE_0FDAF3           ;

CODE_0FDAC7:        DEC $0B77                 ;
CODE_0FDACA:        LDA $0B77                 ;
CODE_0FDACD:        BPL CODE_0FDAD4           ;
CODE_0FDACF:        INC $0B77                 ;
CODE_0FDAD2:        BRA CODE_0FDAF3           ;

CODE_0FDAD4:        LDA #$01                  ;
CODE_0FDAD6:        STA $1603                 ;
CODE_0FDAD9:        STZ $0B78                 ;
CODE_0FDADC:        BRA CODE_0FDAF3           ;

CODE_0FDADE:        INC $0B77                 ;
CODE_0FDAE1:        LDA $0B77                 ;
CODE_0FDAE4:        CMP #$03                  ;
CODE_0FDAE6:        BCC CODE_0FDAEB           ;
CODE_0FDAE8:        STZ $0B77                 ;
CODE_0FDAEB:        LDA #$01                  ;
CODE_0FDAED:        STA $1603                 ;
CODE_0FDAF0:        STZ $0B78                 ;
CODE_0FDAF3:        LDA #$4C                  ;
CODE_0FDAF5:        STA $0800                 ;
CODE_0FDAF8:        LDX $0B77                 ;
CODE_0FDAFB:        LDA $DB91,x               ;
CODE_0FDAFE:        STA $0801                 ;
CODE_0FDB01:        LDA $0B78                 ;
CODE_0FDB04:        AND #$10                  ;
CODE_0FDB06:        LSR A                     ;
CODE_0FDB07:        LSR A                     ;
CODE_0FDB08:        LSR A                     ;
CODE_0FDB09:        LSR A                     ;
CODE_0FDB0A:        TAX                       ;
CODE_0FDB0B:        LDA $DB94,x               ;
CODE_0FDB0E:        STA $0802                 ;
CODE_0FDB11:        LDA #$21                  ;
CODE_0FDB13:        STA $0803                 ;
CODE_0FDB16:        LDA #$00                  ;
CODE_0FDB18:        STA $0C00                 ;
CODE_0FDB1B:        INC $0B78                 ;
CODE_0FDB1E:        LDA $F2                   ;
CODE_0FDB20:        AND #$10                  ;
CODE_0FDB22:        BEQ CODE_0FDB90           ;
CODE_0FDB24:        LDA #$F2                  ;
CODE_0FDB26:        STA $1602                 ;
CODE_0FDB29:        STZ $0B78                 ;
CODE_0FDB2C:        LDA $0B77                 ;
CODE_0FDB2F:        BEQ CODE_0FDB4E           ;
CODE_0FDB31:        LDA #$30                  ;
CODE_0FDB33:        STA $0F8A                 ;
CODE_0FDB36:        LDA #$02                  ;
CODE_0FDB38:        STA $0B75                 ;
CODE_0FDB3B:        LDA #$3B                  ;
CODE_0FDB3D:        STA $1600                 ;
CODE_0FDB40:        LDA $0B77                 ;
CODE_0FDB43:        CMP #$02                  ;
CODE_0FDB45:        BNE CODE_0FDB62           ;
CODE_0FDB47:        LDA #$F3                  ;
CODE_0FDB49:        STA $1602                 ;
CODE_0FDB4C:        BRA CODE_0FDB62           ;

CODE_0FDB4E:        LDA #$10                  ;
CODE_0FDB50:        STA $0F8A                 ;
CODE_0FDB53:        LDA #$10                  ;
CODE_0FDB55:        STA $0B6B                 ;
CODE_0FDB58:        LDA #$02                  ;
CODE_0FDB5A:        STA $0B75                 ;
CODE_0FDB5D:        LDA #$43                  ;
CODE_0FDB5F:        STA $1600                 ;
CODE_0FDB62:        LDA $1680                 ;
CODE_0FDB65:        CMP #$10                  ;
CODE_0FDB67:        BNE CODE_0FDB82           ;
CODE_0FDB69:        LDA $0B77                 ;
CODE_0FDB6C:        CMP #$02                  ;
CODE_0FDB6E:        BEQ CODE_0FDB82           ;
CODE_0FDB70:        STZ $0776                 ;
CODE_0FDB73:        LDA #$0E                  ;
CODE_0FDB75:        STA $0772                 ;
CODE_0FDB78:        LDX $0B77                 ;
CODE_0FDB7B:        BEQ CODE_0FDB81           ;
CODE_0FDB7D:        JSL CODE_0090AC           ;
CODE_0FDB81:        RTS                       ;

CODE_0FDB82:        LDA #$20                  ;
CODE_0FDB84:        STA $0F8A                 ;
CODE_0FDB87:        LDA $0B77                 ;
CODE_0FDB8A:        BEQ CODE_0FDB90           ;
CODE_0FDB8C:        JSL CODE_0090AC           ;
CODE_0FDB90:        RTS                       ;

DATA_0FDB91:        db $50,$60,$70,$D0,$DE,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$14,$15,$16,$17,$18,$19
                    db $1A,$1B,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$28,$29,$2A,$2B
                    db $1C,$14,$15,$16,$17,$18,$19,$1A
                    db $1B,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$28,$29
                    db $2A,$2B,$1C,$24,$25,$26,$27,$AA
                    db $AA,$AA,$AA,$FF,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$24,$25,$26,$27,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$28,$29,$2A
                    db $2B,$1C,$24,$25,$26,$27,$AA,$AA
                    db $AA,$AA,$FF

CODE_0FDC34:        REP #$10                  ;
CODE_0FDC36:        LDY #$0010                ;
CODE_0FDC39:        LDX #$0000                ;
CODE_0FDC3C:        LDA #$48                  ;
CODE_0FDC3E:        STA $01                   ;
CODE_0FDC40:        LDA #$58                  ;
CODE_0FDC42:        STA $00                   ;
CODE_0FDC44:        LDA $1680                 ;
CODE_0FDC47:        BEQ CODE_0FDC5A           ;
CODE_0FDC49:        AND #$10                  ;
CODE_0FDC4B:        CMP #$10                  ;
CODE_0FDC4D:        BEQ CODE_0FDC5A           ;
CODE_0FDC4F:        LDA $DBE5,x               ;
CODE_0FDC52:        BPL CODE_0FDC77           ;
CODE_0FDC54:        INX                       ;
CODE_0FDC55:        INC A                     ;
CODE_0FDC56:        BEQ CODE_0FDC98           ;
CODE_0FDC58:        BRA CODE_0FDC63           ;

CODE_0FDC5A:        LDA $DB96,x               ;
CODE_0FDC5D:        BPL CODE_0FDC77           ;
CODE_0FDC5F:        INX                       ;
CODE_0FDC60:        INC A                     ;
CODE_0FDC61:        BEQ CODE_0FDC98           ;
CODE_0FDC63:        LDA $00                   ;
CODE_0FDC65:        CLC                       ;
CODE_0FDC66:        ADC #$08                  ;
CODE_0FDC68:        STA $00                   ;
CODE_0FDC6A:        CMP #$C0                  ;
CODE_0FDC6C:        BCC CODE_0FDC44           ;
CODE_0FDC6E:        LDA $01                   ;
CODE_0FDC70:        CLC                       ;
CODE_0FDC71:        ADC #$08                  ;
CODE_0FDC73:        STA $01                   ;
CODE_0FDC75:        BRA CODE_0FDC40           ;

CODE_0FDC77:        CLC                       ;
CODE_0FDC78:        ADC #$C0                  ;
CODE_0FDC7A:        STA $0802,y               ;
CODE_0FDC7D:        LDA $00                   ;
CODE_0FDC7F:        STA $0800,y               ;
CODE_0FDC82:        LDA $01                   ;
CODE_0FDC84:        STA $0801,y               ;
CODE_0FDC87:        LDA #$21                  ;
CODE_0FDC89:        STA $0803,y               ;
CODE_0FDC8C:        LDA #$00                  ;
CODE_0FDC8E:        STA $0C00,y               ;
CODE_0FDC91:        INX                       ;
CODE_0FDC92:        INY                       ;
CODE_0FDC93:        INY                       ;
CODE_0FDC94:        INY                       ;
CODE_0FDC95:        INY                       ;
CODE_0FDC96:        BRA CODE_0FDC63           ;

CODE_0FDC98:        LDA #$40                  ;
CODE_0FDC9A:        STA $01                   ;
CODE_0FDC9C:        LDA #$40                  ;
CODE_0FDC9E:        STA $00                   ;
CODE_0FDCA0:        LDA $00                   ;
CODE_0FDCA2:        STA $0800,y               ;
CODE_0FDCA5:        CLC                       ;
CODE_0FDCA6:        ADC #$10                  ;
CODE_0FDCA8:        STA $00                   ;
CODE_0FDCAA:        LDA $01                   ;
CODE_0FDCAC:        STA $0801,y               ;
CODE_0FDCAF:        LDA #$CD                  ;
CODE_0FDCB1:        STA $0802,y               ;
CODE_0FDCB4:        LDA #$21                  ;
CODE_0FDCB6:        STA $0803,y               ;
CODE_0FDCB9:        LDA #$02                  ;
CODE_0FDCBB:        STA $0C00,y               ;
CODE_0FDCBE:        INY                       ;
CODE_0FDCBF:        INY                       ;
CODE_0FDCC0:        INY                       ;
CODE_0FDCC1:        INY                       ;
CODE_0FDCC2:        LDA $00                   ;
CODE_0FDCC4:        CMP #$C0                  ;
CODE_0FDCC6:        BCC CODE_0FDCA0           ;
CODE_0FDCC8:        LDA $01                   ;
CODE_0FDCCA:        CMP #$80                  ;
CODE_0FDCCC:        BCS CODE_0FDCD5           ;
CODE_0FDCCE:        CLC                       ;
CODE_0FDCCF:        ADC #$10                  ;
CODE_0FDCD1:        STA $01                   ;
CODE_0FDCD3:        BRA CODE_0FDC9C           ;

CODE_0FDCD5:        SEP #$10                  ;
CODE_0FDCD7:        LDA #$4C                  ;
CODE_0FDCD9:        STA $0800                 ;
CODE_0FDCDC:        LDX $0B77                 ;
CODE_0FDCDF:        LDA $DB91,x               ;
CODE_0FDCE2:        STA $0801                 ;
CODE_0FDCE5:        LDA $0B78                 ;
CODE_0FDCE8:        AND #$10                  ;
CODE_0FDCEA:        LSR A                     ;
CODE_0FDCEB:        LSR A                     ;
CODE_0FDCEC:        LSR A                     ;
CODE_0FDCED:        LSR A                     ;
CODE_0FDCEE:        TAX                       ;
CODE_0FDCEF:        LDA $DB94,x               ;
CODE_0FDCF2:        STA $0802                 ;
CODE_0FDCF5:        LDA #$21                  ;
CODE_0FDCF7:        STA $0803                 ;
CODE_0FDCFA:        LDA #$00                  ;
CODE_0FDCFC:        STA $0C00                 ;
CODE_0FDCFF:        RTS                       ;

CODE_0FDD00:        LDA $0B6B                 ;
CODE_0FDD03:        BEQ CODE_0FDD63           ;
CODE_0FDD05:        BMI CODE_0FDD63           ;
CODE_0FDD07:        REP #$30                  ;
CODE_0FDD09:        DEC $0B6B                 ;
CODE_0FDD0C:        DEC $0B6D                 ;
CODE_0FDD0F:        DEC $0B6D                 ;
CODE_0FDD12:        INC $0B6F                 ;
CODE_0FDD15:        INC $0B6F                 ;
CODE_0FDD18:        DEC $0B71                 ;
CODE_0FDD1B:        DEC $0B71                 ;
CODE_0FDD1E:        DEC $0B71                 ;
CODE_0FDD21:        DEC $0B71                 ;
CODE_0FDD24:        INC $0B73                 ;
CODE_0FDD27:        INC $0B73                 ;
CODE_0FDD2A:        INC $0B73                 ;
CODE_0FDD2D:        INC $0B73                 ;
CODE_0FDD30:        LDX #$007E                ;
CODE_0FDD33:        LDA #$00FF                ;
CODE_0FDD36:        STA $7FF000,x             ;
CODE_0FDD3A:        STA $7FF080,x             ;
CODE_0FDD3E:        STA $7FF100,x             ;
CODE_0FDD42:        STA $7FF180,x             ;
CODE_0FDD46:        DEX                       ;
CODE_0FDD47:        DEX                       ;
CODE_0FDD48:        BPL CODE_0FDD36           ;
CODE_0FDD4A:        LDA $0B6F                 ;
CODE_0FDD4D:        XBA                       ;
CODE_0FDD4E:        ORA $0B6D                 ;
CODE_0FDD51:        LDX $0B71                 ;
CODE_0FDD54:        STA $7FF000,x             ;
CODE_0FDD58:        INX                       ;
CODE_0FDD59:        INX                       ;
CODE_0FDD5A:        CPX $0B73                 ;
CODE_0FDD5D:        BNE CODE_0FDD54           ;
CODE_0FDD5F:        SEP #$30                  ;
CODE_0FDD61:        BRA CODE_0FDD66           ;

CODE_0FDD63:        INC $0B75                 ;
CODE_0FDD66:        JSR CODE_0FDC34           ;
CODE_0FDD69:        RTS                       ;

CODE_0FDD6A:        LDA $0B6B                 ;
CODE_0FDD6D:        BEQ CODE_0FDDCD           ;
CODE_0FDD6F:        BMI CODE_0FDDCD           ;
CODE_0FDD71:        REP #$30                  ;
CODE_0FDD73:        INC $0B6D                 ;
CODE_0FDD76:        INC $0B6D                 ;
CODE_0FDD79:        DEC $0B6F                 ;
CODE_0FDD7C:        DEC $0B6F                 ;
CODE_0FDD7F:        INC $0B71                 ;
CODE_0FDD82:        INC $0B71                 ;
CODE_0FDD85:        INC $0B71                 ;
CODE_0FDD88:        INC $0B71                 ;
CODE_0FDD8B:        DEC $0B73                 ;
CODE_0FDD8E:        DEC $0B73                 ;
CODE_0FDD91:        DEC $0B73                 ;
CODE_0FDD94:        DEC $0B73                 ;
CODE_0FDD97:        DEC $0B6B                 ;
CODE_0FDD9A:        LDX #$007E                ;
CODE_0FDD9D:        LDA #$00FF                ;
CODE_0FDDA0:        STA $7FF000,x             ;
CODE_0FDDA4:        STA $7FF080,x             ;
CODE_0FDDA8:        STA $7FF100,x             ;
CODE_0FDDAC:        STA $7FF180,x             ;
CODE_0FDDB0:        DEX                       ;
CODE_0FDDB1:        DEX                       ;
CODE_0FDDB2:        BPL CODE_0FDDA0           ;
CODE_0FDDB4:        LDA $0B6F                 ;
CODE_0FDDB7:        XBA                       ;
CODE_0FDDB8:        ORA $0B6D                 ;
CODE_0FDDBB:        LDX $0B71                 ;
CODE_0FDDBE:        STA $7FF000,x             ;
CODE_0FDDC2:        INX                       ;
CODE_0FDDC3:        INX                       ;
CODE_0FDDC4:        CPX $0B73                 ;
CODE_0FDDC7:        BNE CODE_0FDDBE           ;
CODE_0FDDC9:        SEP #$30                  ;
CODE_0FDDCB:        BRA CODE_0FDDF8           ;

CODE_0FDDCD:        STZ $0B75                 ;
CODE_0FDDD0:        LDA #$0F                  ;
CODE_0FDDD2:        STA $1201                 ;
CODE_0FDDD5:        STZ $0776                 ;
CODE_0FDDD8:        LDA $1206                 ;
CODE_0FDDDB:        EOR #$03                  ;
CODE_0FDDDD:        STA $1206                 ;
CODE_0FDDE0:        LDA $1207                 ;
CODE_0FDDE3:        EOR #$10                  ;
CODE_0FDDE5:        STA $1207                 ;
CODE_0FDDE8:        JSR CODE_0FD9DA           ;
CODE_0FDDEB:        JSL CODE_0D83E8           ;
CODE_0FDDEF:        LDA $1203                 ;
CODE_0FDDF2:        AND #$F7                  ;
CODE_0FDDF4:        STA $1203                 ;
CODE_0FDDF7:        RTS                       ;

CODE_0FDDF8:        JSR CODE_0FDC34           ;
CODE_0FDDFB:        RTS                       ;

CODE_0FDDFC:        DEC $0F8A                 ;
CODE_0FDDFF:        BNE CODE_0FDE1E           ;
CODE_0FDE01:        INC $0B75                 ;
CODE_0FDE04:        LDA #$10                  ;
CODE_0FDE06:        STA $0B6B                 ;
CODE_0FDE09:        STA $0F8A                 ;
CODE_0FDE0C:        LDA $1680                 ;
CODE_0FDE0F:        CMP #$01                  ;
CODE_0FDE11:        BEQ CODE_0FDE1A           ;
CODE_0FDE13:        LDA $0B77                 ;
CODE_0FDE16:        CMP #$02                  ;
CODE_0FDE18:        BNE CODE_0FDE1E           ;
CODE_0FDE1A:        JML CODE_0080DE           ;

CODE_0FDE1E:        JSR CODE_0FDC34           ;
CODE_0FDE21:        RTS                       ;

CODE_0FDE22:        PHB                       ;
CODE_0FDE23:        LDA #$7F                  ;
CODE_0FDE25:        PHA                       ;
CODE_0FDE26:        PLB                       ;
CODE_0FDE27:        REP #$30                  ;
CODE_0FDE29:        LDX #$007E                ;
CODE_0FDE2C:        LDA #$0000                ;
CODE_0FDE2F:        STA $F000,x               ;
CODE_0FDE32:        STA $F080,x               ;
CODE_0FDE35:        STA $F100,x               ;
CODE_0FDE38:        STA $F180,x               ;
CODE_0FDE3B:        DEX                       ;
CODE_0FDE3C:        DEX                       ;
CODE_0FDE3D:        BPL CODE_0FDE2F           ;
CODE_0FDE3F:        PLB                       ;
CODE_0FDE40:        SEP #$20                  ;
CODE_0FDE42:        LDX #$2641                ;
CODE_0FDE45:        STX $4330                 ;
CODE_0FDE48:        LDX #$DE7E                ;
CODE_0FDE4B:        STX $4332                 ;
CODE_0FDE4E:        LDA #$0F                  ;
CODE_0FDE50:        STA $4334                 ;
CODE_0FDE53:        LDA #$7F                  ;
CODE_0FDE55:        STA $4337                 ;
CODE_0FDE58:        LDA #$00                  ;
CODE_0FDE5A:        STA $1204                 ;
CODE_0FDE5D:        STZ $1205                 ;
CODE_0FDE60:        LDA $1206                 ;
CODE_0FDE63:        ORA #$03                  ;
CODE_0FDE65:        STA $1206                 ;
CODE_0FDE68:        LDA $1207                 ;
CODE_0FDE6B:        ORA #$10                  ;
CODE_0FDE6D:        STA $1207                 ;
CODE_0FDE70:        STZ $1208                 ;
CODE_0FDE73:        SEP #$10                  ;
CODE_0FDE75:        LDA $1203                 ;
CODE_0FDE78:        ORA #$08                  ;
CODE_0FDE7A:        STA $1203                 ;
CODE_0FDE7D:        RTS                       ;

DATA_0FDE7E:        db $F8,$00,$F0,$F8,$F0,$F0,$00

CODE_0FDE85:        PHB                       ;
CODE_0FDE86:        LDA #$7F                  ;
CODE_0FDE88:        PHA                       ;
CODE_0FDE89:        PLB                       ;
CODE_0FDE8A:        REP #$30                  ;
CODE_0FDE8C:        LDX #$01A0                ;
CODE_0FDE8F:        LDA #$00FF                ;
CODE_0FDE92:        STA $F000,x               ;
CODE_0FDE95:        STA $F002,x               ;
CODE_0FDE98:        STA $F004,x               ;
CODE_0FDE9B:        STA $F006,x               ;
CODE_0FDE9E:        STA $F008,x               ;
CODE_0FDEA1:        STA $F00A,x               ;
CODE_0FDEA4:        STA $F00C,x               ;
CODE_0FDEA7:        STA $F00E,x               ;
CODE_0FDEAA:        STA $F010,x               ;
CODE_0FDEAD:        STA $F012,x               ;
CODE_0FDEB0:        STA $F014,x               ;
CODE_0FDEB3:        STA $F016,x               ;
CODE_0FDEB6:        STA $F018,x               ;
CODE_0FDEB9:        STA $F01A,x               ;
CODE_0FDEBC:        STA $F01C,x               ;
CODE_0FDEBF:        STA $F01E,x               ;
CODE_0FDEC2:        STA $F200,x               ;
CODE_0FDEC5:        STA $F202,x               ;
CODE_0FDEC8:        STA $F204,x               ;
CODE_0FDECB:        STA $F206,x               ;
CODE_0FDECE:        STA $F208,x               ;
CODE_0FDED1:        STA $F20A,x               ;
CODE_0FDED4:        STA $F20C,x               ;
CODE_0FDED7:        STA $F20E,x               ;
CODE_0FDEDA:        STA $F210,x               ;
CODE_0FDEDD:        STA $F212,x               ;
CODE_0FDEE0:        STA $F214,x               ;
CODE_0FDEE3:        STA $F216,x               ;
CODE_0FDEE6:        STA $F218,x               ;
CODE_0FDEE9:        STA $F21A,x               ;
CODE_0FDEEC:        STA $F21C,x               ;
CODE_0FDEEF:        STA $F21E,x               ;
CODE_0FDEF2:        TXA                       ;
CODE_0FDEF3:        SEC                       ;
CODE_0FDEF4:        SBC #$0020                ;
CODE_0FDEF7:        TAX                       ;
CODE_0FDEF8:        BPL CODE_0FDE8F           ;
CODE_0FDEFA:        SEP #$30                  ;
CODE_0FDEFC:        PLB                       ;
CODE_0FDEFD:        RTS                       ;

CODE_0FDEFE:        PHB                       ;
CODE_0FDEFF:        PHK                       ;
CODE_0FDF00:        PLB                       ;
CODE_0FDF01:        PHX                       ;
CODE_0FDF02:        LDX $0EC3                 ;
CODE_0FDF05:        LDA $0FFA,x               ;
CODE_0FDF08:        PLX                       ;
CODE_0FDF09:        AND #$C0                  ;
CODE_0FDF0B:        BEQ CODE_0FDF23           ;
CODE_0FDF0D:        AND #$80                  ;
CODE_0FDF0F:        BEQ CODE_0FDF1B           ;
CODE_0FDF11:        STZ $0754                 ;
CODE_0FDF14:        LDA #$01                  ;
CODE_0FDF16:        STA $0756                 ;
CODE_0FDF19:        BRA CODE_0FDF23           ;

CODE_0FDF1B:        STZ $0754                 ;
CODE_0FDF1E:        LDA #$02                  ;
CODE_0FDF20:        STA $0756                 ;
CODE_0FDF23:        LDA $0FF6                 ;
CODE_0FDF26:        AND #$20                  ;
CODE_0FDF28:        BEQ CODE_0FDF38           ;
CODE_0FDF2A:        EOR $0E73                 ;
CODE_0FDF2D:        STA $0E73                 ;
CODE_0FDF30:        LSR A                     ;
CODE_0FDF31:        LSR A                     ;
CODE_0FDF32:        LSR A                     ;
CODE_0FDF33:        LSR A                     ;
CODE_0FDF34:        LSR A                     ;
CODE_0FDF35:        STA $0716                 ;
CODE_0FDF38:        LDA $0E73                 ;
CODE_0FDF3B:        BNE CODE_0FDF40           ;
CODE_0FDF3D:        JMP CODE_0FDFE7           ;

CODE_0FDF40:        LDA #$10                  ;
CODE_0FDF42:        STA $07AF                 ;
CODE_0FDF45:        LDA $0FF8                 ;
CODE_0FDF48:        AND #$10                  ;
CODE_0FDF4A:        BEQ CODE_0FDF8B           ;
CODE_0FDF4C:        LDA $09                   ;
CODE_0FDF4E:        AND #$07                  ;
CODE_0FDF50:        BNE CODE_0FDF8B           ;
CODE_0FDF52:        LDA $0FF4                 ;
CODE_0FDF55:        LSR A                     ;
CODE_0FDF56:        BCS CODE_0FDF64           ;
CODE_0FDF58:        LSR A                     ;
CODE_0FDF59:        BCS CODE_0FDF72           ;
CODE_0FDF5B:        LSR A                     ;
CODE_0FDF5C:        BCS CODE_0FDF88           ;
CODE_0FDF5E:        LSR A                     ;
CODE_0FDF5F:        BCS CODE_0FDF81           ;
CODE_0FDF61:        JMP CODE_0FDFEA           ;

CODE_0FDF64:        LDA #$09                  ;
CODE_0FDF66:        STA $07EA                 ;
CODE_0FDF69:        STA $07EB                 ;
CODE_0FDF6C:        STA $07E9                 ;
CODE_0FDF6F:        JMP CODE_0FDFEA           ;

CODE_0FDF72:        STZ $07EA                 ;
CODE_0FDF75:        STZ $07EB                 ;
CODE_0FDF78:        STZ $07E9                 ;
CODE_0FDF7B:        STZ $0E73                 ;
CODE_0FDF7E:        JMP CODE_0FDFEA           ;

CODE_0FDF81:        JSL CODE_048596           ;Increase lives by one
CODE_0FDF85:        JMP CODE_0FDFEA           ;

CODE_0FDF88:        JMP CODE_0FDFEA           ;

CODE_0FDF8B:        LDA $09                   ;
CODE_0FDF8D:        AND #$07                  ;
CODE_0FDF8F:        BNE CODE_0FDFAC           ;
CODE_0FDF91:        LDA $0FF6                 ;
CODE_0FDF94:        AND #$80                  ;
CODE_0FDF96:        BEQ CODE_0FDFAC           ;
CODE_0FDF98:        LDA $0754                 ;
CODE_0FDF9B:        EOR #$01                  ;
CODE_0FDF9D:        STA $0754                 ;
CODE_0FDFA0:        LDA $0756                 ;
CODE_0FDFA3:        EOR #$02                  ;
CODE_0FDFA5:        STA $0756                 ;
CODE_0FDFA8:        JSL CODE_0E98C3           ;
CODE_0FDFAC:        LDA $0FF4                 ;
CODE_0FDFAF:        AND #$03                  ;
CODE_0FDFB1:        BEQ CODE_0FDFCA           ;
CODE_0FDFB3:        TAY                       ;
CODE_0FDFB4:        LDA $0C                   ;
CODE_0FDFB6:        STA $0202                 ;
CODE_0FDFB9:        LDA $0219                 ;
CODE_0FDFBC:        CLC                       ;
CODE_0FDFBD:        ADC $DFEC,y               ;
CODE_0FDFC0:        STA $0219                 ;
CODE_0FDFC3:        LDA $78                   ;
CODE_0FDFC5:        ADC $DFEE,y               ;
CODE_0FDFC8:        STA $78                   ;
CODE_0FDFCA:        LDA $0FF4                 ;
CODE_0FDFCD:        AND #$0C                  ;
CODE_0FDFCF:        BEQ CODE_0FDFEA           ;
CODE_0FDFD1:        LSR A                     ;
CODE_0FDFD2:        LSR A                     ;
CODE_0FDFD3:        TAY                       ;
CODE_0FDFD4:        LDA $0237                 ;
CODE_0FDFD7:        CLC                       ;
CODE_0FDFD8:        ADC $DFEC,y               ;
CODE_0FDFDB:        STA $0237                 ;
CODE_0FDFDE:        LDA $BB                   ;
CODE_0FDFE0:        ADC $DFEE,y               ;
CODE_0FDFE3:        STA $BB                   ;
CODE_0FDFE5:        BRA CODE_0FDFEA           ;

CODE_0FDFE7:        SEC                       ;
CODE_0FDFE8:        PLB                       ;
CODE_0FDFE9:        RTL                       ;

CODE_0FDFEA:        CLC                       ;
CODE_0FDFEB:        PLB                       ;
CODE_0FDFEC:        RTL                       ;

DATA_0FDFED:        db $03,$FD,$00,$FF

CODE_0FDFF1:        PHA                       ;
CODE_0FDFF2:        PHB                       ;
CODE_0FDFF3:        PHK                       ;
CODE_0FDFF4:        PLB                       ;
CODE_0FDFF5:        LDA $07B2                 ;
CODE_0FDFF8:        BEQ CODE_0FE06A           ;
CODE_0FDFFA:        LDA $0FF4                 ;
CODE_0FDFFD:        STA $E4                   ;
CODE_0FDFFF:        AND #$C0                  ;
CODE_0FE001:        BEQ CODE_0FE06A           ;
CODE_0FE003:        LDA $09                   ;
CODE_0FE005:        AND #$07                  ;
CODE_0FE007:        BNE CODE_0FE06A           ;
CODE_0FE009:        LDA $E4                   ;
CODE_0FE00B:        CMP #$40                  ;
CODE_0FE00D:        BNE CODE_0FE021           ;
CODE_0FE00F:        LDA #$17                  ;
CODE_0FE011:        STA $07B2                 ;
CODE_0FE014:        INC $075F                 ;
CODE_0FE017:        LDA $075F                 ;
CODE_0FE01A:        CMP #$0D                  ;
CODE_0FE01C:        BCC CODE_0FE021           ;
CODE_0FE01E:        STZ $075F                 ;
CODE_0FE021:        LDA $E4                   ;
CODE_0FE023:        CMP #$80                  ;
CODE_0FE025:        BNE CODE_0FE039           ;
CODE_0FE027:        LDA #$17                  ;
CODE_0FE029:        STA $07B2                 ;
CODE_0FE02C:        INC $075C                 ;
CODE_0FE02F:        LDA $075C                 ;
CODE_0FE032:        CMP #$04                  ;
CODE_0FE034:        BCC CODE_0FE039           ;
CODE_0FE036:        STZ $075C                 ;
CODE_0FE039:        LDX #$00                  ;
CODE_0FE03B:        LDA $E0A1,x               ;
CODE_0FE03E:        STA $001702,x             ;
CODE_0FE042:        INX                       ;
CODE_0FE043:        CPX #$0B                  ;
CODE_0FE045:        BCC CODE_0FE03B           ;
CODE_0FE047:        LDA $075F                 ;
CODE_0FE04A:        CLC                       ;
CODE_0FE04B:        ADC #$01                  ;
CODE_0FE04D:        STA $001706               ;
CODE_0FE051:        LDA $075C                 ;
CODE_0FE054:        CLC                       ;
CODE_0FE055:        ADC #$01                  ;
CODE_0FE057:        STA $00170A               ;
CODE_0FE05B:        LDA $075F                 ;
CODE_0FE05E:        ASL A                     ;
CODE_0FE05F:        ASL A                     ;
CODE_0FE060:        ORA $075C                 ;
CODE_0FE063:        TAX                       ;
CODE_0FE064:        LDA $E06D,x               ;
CODE_0FE067:        STA $0760                 ;
CODE_0FE06A:        PLB                       ;
CODE_0FE06B:        PLA                       ;
CODE_0FE06C:        RTL                       ;

DATA_0FE06D:        db $00,$02,$03,$04,$00,$01,$02,$03
                    db $00,$02,$03,$04,$00,$01,$02,$03
                    db $00,$02,$03,$04,$00,$02,$03,$04
                    db $00,$01,$02,$03,$00,$01,$02,$03
                    db $00,$01,$02,$03,$00,$02,$03,$04
                    db $00,$02,$03,$04,$00,$01,$02,$03
                    db $00,$01,$02,$03,$58,$73,$00,$05
                    db $24,$20,$24,$20,$24,$20,$FF

CODE_0FE0AC:        PHY                       ;
CODE_0FE0AD:        LDY #$00                  ;
CODE_0FE0AF:        LDA $0B25,y               ;
CODE_0FE0B2:        BEQ CODE_0FE0BB           ;
CODE_0FE0B4:        INY                       ;
CODE_0FE0B5:        CPY #$05                  ;
CODE_0FE0B7:        BNE CODE_0FE0AF           ;
CODE_0FE0B9:        LDY #$00                  ;
CODE_0FE0BB:        LDA #$01                  ;
CODE_0FE0BD:        STA $0B25,y               ;
CODE_0FE0C0:        LDA $5E,x                 ;
CODE_0FE0C2:        BPL CODE_0FE0DB           ;
CODE_0FE0C4:        LDA $79,x                 ;
CODE_0FE0C6:        XBA                       ;
CODE_0FE0C7:        LDA $021A,x               ;
CODE_0FE0CA:        REP #$20                  ;
CODE_0FE0CC:        SEC                       ;
CODE_0FE0CD:        SBC #$0008                ;
CODE_0FE0D0:        SEP #$20                  ;
CODE_0FE0D2:        STA $0B2F,y               ;
CODE_0FE0D5:        XBA                       ;
CODE_0FE0D6:        STA $0B2A,y               ;
CODE_0FE0D9:        BRA CODE_0FE0F0           ;

CODE_0FE0DB:        LDA $79,x                 ;
CODE_0FE0DD:        XBA                       ;
CODE_0FE0DE:        LDA $021A,x               ;
CODE_0FE0E1:        REP #$20                  ;
CODE_0FE0E3:        CLC                       ;
CODE_0FE0E4:        ADC #$0008                ;
CODE_0FE0E7:        SEP #$20                  ;
CODE_0FE0E9:        STA $0B2F,y               ;
CODE_0FE0EC:        XBA                       ;
CODE_0FE0ED:        STA $0B2A,y               ;
CODE_0FE0F0:        LDA $03B9                 ;
CODE_0FE0F3:        CLC                       ;
CODE_0FE0F4:        ADC #$0C                  ;
CODE_0FE0F6:        STA $0B34,y               ;
CODE_0FE0F9:        PLY                       ;
CODE_0FE0FA:        RTL                       ;

CODE_0FE0FB:        PHB                       ;
CODE_0FE0FC:        PHK                       ;
CODE_0FE0FD:        PLB                       ;
CODE_0FE0FE:        PHX                       ;
CODE_0FE0FF:        PHY                       ;
CODE_0FE100:        LDX #$00                  ;
CODE_0FE102:        LDA $E268,x               ;
CODE_0FE105:        TAY                       ;
CODE_0FE106:        LDA $0B25,x               ;
CODE_0FE109:        BEQ CODE_0FE12B           ;
CODE_0FE10B:        AND #$0C                  ;
CODE_0FE10D:        STA $E4                   ;
CODE_0FE10F:        BNE CODE_0FE116           ;
CODE_0FE111:        JSR CODE_0FE134           ;
CODE_0FE114:        BRA CODE_0FE12B           ;

CODE_0FE116:        CMP #$04                  ;
CODE_0FE118:        BNE CODE_0FE11F           ;
CODE_0FE11A:        JSR CODE_0FE16F           ;
CODE_0FE11D:        BRA CODE_0FE12B           ;

CODE_0FE11F:        CMP #$08                  ;
CODE_0FE121:        BNE CODE_0FE128           ;
CODE_0FE123:        JSR CODE_0FE1AF           ;
CODE_0FE126:        BRA CODE_0FE12B           ;

CODE_0FE128:        STZ $0B25,x               ;
CODE_0FE12B:        INX                       ;
CODE_0FE12C:        CPX #$05                  ;
CODE_0FE12E:        BNE CODE_0FE102           ;
CODE_0FE130:        PLY                       ;
CODE_0FE131:        PLX                       ;
CODE_0FE132:        PLB                       ;
CODE_0FE133:        RTL                       ;

CODE_0FE134:        JSR CODE_0FE253           ;
CODE_0FE137:        LDA $0B3B                 ;
CODE_0FE13A:        CLC                       ;
CODE_0FE13B:        ADC #$04                  ;
CODE_0FE13D:        STA $0801,y               ;
CODE_0FE140:        LDA #$26                  ;
CODE_0FE142:        STA $0802,y               ;
CODE_0FE145:        LDA #$25                  ;
CODE_0FE147:        STA $0803,y               ;
CODE_0FE14A:        REP #$20                  ;
CODE_0FE14C:        LDA $0B39                 ;
CODE_0FE14F:        CLC                       ;
CODE_0FE150:        ADC #$0004                ;
CODE_0FE153:        SEC                       ;
CODE_0FE154:        SBC $42                   ;
CODE_0FE156:        STA $0B39                 ;
CODE_0FE159:        SEP #$20                  ;
CODE_0FE15B:        LDA $0B39                 ;
CODE_0FE15E:        STA $0800,y               ;
CODE_0FE161:        LDA $0B3A                 ;
CODE_0FE164:        BEQ CODE_0FE168           ;
CODE_0FE166:        LDA #$01                  ;
CODE_0FE168:        STA $0C00,y               ;
CODE_0FE16B:        INC $0B25,x               ;
CODE_0FE16E:        RTS                       ;

CODE_0FE16F:        JSR CODE_0FE253           ;
CODE_0FE172:        LDA $0B3B                 ;
CODE_0FE175:        STA $0801,y               ;
CODE_0FE178:        LDA #$60                  ;
CODE_0FE17A:        STA $0802,y               ;
CODE_0FE17D:        LDA #$25                  ;
CODE_0FE17F:        STA $0803,y               ;
CODE_0FE182:        REP #$20                  ;
CODE_0FE184:        LDA $0B39                 ;
CODE_0FE187:        SEC                       ;
CODE_0FE188:        SBC $42                   ;
CODE_0FE18A:        STA $0B39                 ;
CODE_0FE18D:        SEP #$20                  ;
CODE_0FE18F:        LDA $0B39                 ;
CODE_0FE192:        STA $0800,y               ;
CODE_0FE195:        LDA $0B3A                 ;
CODE_0FE198:        BEQ CODE_0FE19E           ;
CODE_0FE19A:        LDA #$03                  ;
CODE_0FE19C:        BRA CODE_0FE1A0           ;

CODE_0FE19E:        LDA #$02                  ;
CODE_0FE1A0:        STA $0C00,y               ;
CODE_0FE1A3:        INC $0B25,x               ;
CODE_0FE1A6:        RTS                       ;

DATA_0FE1A7:        db $FF,$FE,$FC,$F9,$01,$02,$04,$07

CODE_0FE1AF:        STX $F1                   ;
CODE_0FE1B1:        JSR CODE_0FE253           ;
CODE_0FE1B4:        LDA $0B25,x               ;
CODE_0FE1B7:        AND #$03                  ;
CODE_0FE1B9:        TAX                       ;
CODE_0FE1BA:        LDA $0B3B                 ;
CODE_0FE1BD:        CLC                       ;
CODE_0FE1BE:        ADC $E1A7,x               ;
CODE_0FE1C1:        STA $0801,y               ;
CODE_0FE1C4:        STA $0805,y               ;
CODE_0FE1C7:        LDA $0B3B                 ;
CODE_0FE1CA:        CLC                       ;
CODE_0FE1CB:        ADC $E1AB,x               ;
CODE_0FE1CE:        CLC                       ;
CODE_0FE1CF:        ADC #$08                  ;
CODE_0FE1D1:        STA $0809,y               ;
CODE_0FE1D4:        STA $080D,y               ;
CODE_0FE1D7:        LDA #$39                  ;
CODE_0FE1D9:        STA $0802,y               ;
CODE_0FE1DC:        STA $0806,y               ;
CODE_0FE1DF:        STA $080A,y               ;
CODE_0FE1E2:        STA $080E,y               ;
CODE_0FE1E5:        LDA #$25                  ;
CODE_0FE1E7:        STA $0803,y               ;
CODE_0FE1EA:        STA $0807,y               ;
CODE_0FE1ED:        STA $080B,y               ;
CODE_0FE1F0:        STA $080F,y               ;
CODE_0FE1F3:        LDA $E1A7,x               ;
CODE_0FE1F6:        STA $EF                   ;
CODE_0FE1F8:        LDA #$FF                  ;
CODE_0FE1FA:        STA $F0                   ;
CODE_0FE1FC:        REP #$20                  ;
CODE_0FE1FE:        LDA $0B39                 ;
CODE_0FE201:        SEC                       ;
CODE_0FE202:        SBC $42                   ;
CODE_0FE204:        CLC                       ;
CODE_0FE205:        ADC $EF                   ;
CODE_0FE207:        STA $ED                   ;
CODE_0FE209:        SEP #$20                  ;
CODE_0FE20B:        LDA $ED                   ;
CODE_0FE20D:        STA $0800,y               ;
CODE_0FE210:        STA $0808,y               ;
CODE_0FE213:        LDA $EE                   ;
CODE_0FE215:        BEQ CODE_0FE219           ;
CODE_0FE217:        LDA #$01                  ;
CODE_0FE219:        STA $0C00,y               ;
CODE_0FE21C:        STA $0C08,y               ;
CODE_0FE21F:        LDA $E1AB,x               ;
CODE_0FE222:        STA $EF                   ;
CODE_0FE224:        STZ $F0                   ;
CODE_0FE226:        REP #$20                  ;
CODE_0FE228:        LDA $0B39                 ;
CODE_0FE22B:        CLC                       ;
CODE_0FE22C:        ADC #$0008                ;
CODE_0FE22F:        SEC                       ;
CODE_0FE230:        SBC $42                   ;
CODE_0FE232:        CLC                       ;
CODE_0FE233:        ADC $EF                   ;
CODE_0FE235:        STA $ED                   ;
CODE_0FE237:        SEP #$20                  ;
CODE_0FE239:        LDA $ED                   ;
CODE_0FE23B:        STA $0804,y               ;
CODE_0FE23E:        STA $080C,y               ;
CODE_0FE241:        LDA $EE                   ;
CODE_0FE243:        BEQ CODE_0FE247           ;
CODE_0FE245:        LDA #$01                  ;
CODE_0FE247:        STA $0C04,y               ;
CODE_0FE24A:        STA $0C0C,y               ;
CODE_0FE24D:        LDX $F1                   ;
CODE_0FE24F:        INC $0B25,x               ;
CODE_0FE252:        RTS                       ;

CODE_0FE253:        LDA $0B34,x               ;
CODE_0FE256:        STA $0B3B                 ;
CODE_0FE259:        LDA $0B2A,x               ;
CODE_0FE25C:        XBA                       ;
CODE_0FE25D:        LDA $0B2F,x               ;
CODE_0FE260:        REP #$20                  ;
CODE_0FE262:        STA $0B39                 ;
CODE_0FE265:        SEP #$20                  ;
CODE_0FE267:        RTS                       ;

DATA_0FE268:        db $00,$10,$20,$40,$50

CODE_0FE26D:        PHB                       ;
CODE_0FE26E:        PHK                       ;
CODE_0FE26F:        PLB                       ;
CODE_0FE270:        LDA $0201                 ;
CODE_0FE273:        CMP #$01                  ;
CODE_0FE275:        BEQ CODE_0FE2E9           ;
CODE_0FE277:        LDA $075F                 ;
CODE_0FE27A:        CMP #$08                  ;
CODE_0FE27C:        BEQ CODE_0FE2E9           ;
CODE_0FE27E:        LDA $BA                   ;
CODE_0FE280:        CMP #$03                  ;
CODE_0FE282:        BNE CODE_0FE2E9           ;
CODE_0FE284:        LDA $96                   ;
CODE_0FE286:        BNE CODE_0FE2E6           ;
CODE_0FE288:        LDA $02FC                 ;
CODE_0FE28B:        BEQ CODE_0FE2E9           ;
CODE_0FE28D:        LDX #$08                  ;
CODE_0FE28F:        LDA $1C,x                 ;
CODE_0FE291:        CMP #$2D                  ;
CODE_0FE293:        BEQ CODE_0FE29A           ;
CODE_0FE295:        DEX                       ;
CODE_0FE296:        BPL CODE_0FE28F           ;
CODE_0FE298:        BRA CODE_0FE2BD           ;

CODE_0FE29A:        LDA $0238,x               ;
CODE_0FE29D:        CMP #$B8                  ;
CODE_0FE29F:        BCC CODE_0FE2E9           ;
CODE_0FE2A1:        LDA $10,x                 ;
CODE_0FE2A3:        AND #$80                  ;
CODE_0FE2A5:        BNE CODE_0FE295           ;
CODE_0FE2A7:        LDA $021A,x               ;
CODE_0FE2AA:        CLC                       ;
CODE_0FE2AB:        ADC #$10                  ;
CODE_0FE2AD:        STA $02FA                 ;
CODE_0FE2B0:        LDA $79,x                 ;
CODE_0FE2B2:        ADC #$00                  ;
CODE_0FE2B4:        STA $02FB                 ;
CODE_0FE2B7:        LDA #$08                  ;
CODE_0FE2B9:        STA $96                   ;
CODE_0FE2BB:        BRA CODE_0FE2DC           ;

CODE_0FE2BD:        LDX $02FC                 ;
CODE_0FE2C0:        DEX                       ;
CODE_0FE2C1:        LDA $0238,x               ;
CODE_0FE2C4:        CMP #$B8                  ;
CODE_0FE2C6:        BCC CODE_0FE2E9           ;
CODE_0FE2C8:        LDA $021A,x               ;
CODE_0FE2CB:        CLC                       ;
CODE_0FE2CC:        ADC #$04                  ;
CODE_0FE2CE:        STA $02FA                 ;
CODE_0FE2D1:        LDA $79,x                 ;
CODE_0FE2D3:        ADC #$00                  ;
CODE_0FE2D5:        STA $02FB                 ;
CODE_0FE2D8:        LDA #$04                  ;
CODE_0FE2DA:        STA $96                   ;
CODE_0FE2DC:        LDA #$25                  ;
CODE_0FE2DE:        STA $1600                 ;
CODE_0FE2E1:        LDA #$20                  ;
CODE_0FE2E3:        STA $1603                 ;
CODE_0FE2E6:        JSR CODE_0FE2ED           ;
CODE_0FE2E9:        JMP CODE_0FED35           ;

CODE_0FE2EC:        RTL                       ;

CODE_0FE2ED:        LDA $96                   ;
CODE_0FE2EF:        STA $E4                   ;
CODE_0FE2F1:        INC $02F9                 ;
CODE_0FE2F4:        LDA $02F9                 ;
CODE_0FE2F7:        LSR A                     ;
CODE_0FE2F8:        LSR A                     ;
CODE_0FE2F9:        CMP #$06                  ;
CODE_0FE2FB:        BCS CODE_0FE358           ;
CODE_0FE2FD:        STA $DD                   ;
CODE_0FE2FF:        ASL A                     ;
CODE_0FE300:        ASL A                     ;
CODE_0FE301:        ASL A                     ;
CODE_0FE302:        TAX                       ;
CODE_0FE303:        LDY #$20                  ;
CODE_0FE305:        STZ $E9                   ;
CODE_0FE307:        TXA                       ;
CODE_0FE308:        AND #$01                  ;
CODE_0FE30A:        CLC                       ;
CODE_0FE30B:        ADC #$FF                  ;
CODE_0FE30D:        STA $E8                   ;
CODE_0FE30F:        LDA $E35E,x               ;
CODE_0FE312:        STA $E7                   ;
CODE_0FE314:        REP #$20                  ;
CODE_0FE316:        LDA $E7                   ;
CODE_0FE318:        CLC                       ;
CODE_0FE319:        ADC $02FA                 ;
CODE_0FE31C:        SEC                       ;
CODE_0FE31D:        SBC $42                   ;
CODE_0FE31F:        STA $E7                   ;
CODE_0FE321:        SEP #$20                  ;
CODE_0FE323:        LDA $E7                   ;
CODE_0FE325:        STA $0800,y               ;
CODE_0FE328:        LDA $E8                   ;
CODE_0FE32A:        BEQ CODE_0FE32E           ;
CODE_0FE32C:        LDA #$00                  ;
CODE_0FE32E:        ORA $E9                   ;
CODE_0FE330:        STA $0C00,y               ;
CODE_0FE333:        LDA $E386,x               ;
CODE_0FE336:        CLC                       ;
CODE_0FE337:        ADC #$D8                  ;
CODE_0FE339:        STA $0801,y               ;
CODE_0FE33C:        PHX                       ;
CODE_0FE33D:        LDX $DD                   ;
CODE_0FE33F:        LDA $E3B7,x               ;
CODE_0FE342:        STA $0802,y               ;
CODE_0FE345:        LDX $E4                   ;
CODE_0FE347:        LDA $E3AE,x               ;
CODE_0FE34A:        STA $0803,y               ;
CODE_0FE34D:        PLX                       ;
CODE_0FE34E:        INY                       ;
CODE_0FE34F:        INY                       ;
CODE_0FE350:        INY                       ;
CODE_0FE351:        INY                       ;
CODE_0FE352:        INX                       ;
CODE_0FE353:        DEC $E4                   ;
CODE_0FE355:        BNE CODE_0FE307           ;
CODE_0FE357:        RTS                       ;

CODE_0FE358:        STZ $02FC                 ;
CODE_0FE35B:        STZ $96                   ;
CODE_0FE35D:        RTS                       ;

DATA_0FE35E:        db $F6,$02,$F1,$07,$F2,$06,$ED,$0B
                    db $F3,$05,$EE,$0A,$EF,$09,$EA,$0E
                    db $F1,$07,$EC,$0C,$ED,$0B,$E8,$10
                    db $F0,$08,$EB,$0D,$EC,$0C,$E7,$11
                    db $EF,$09,$EA,$0E,$EB,$0D,$E6,$12
                    db $F5,$F5,$F8,$F8,$F1,$F1,$F4,$F4
                    db $F4,$F4,$F7,$F7,$F0,$F0,$F3,$F3
                    db $F2,$F2,$F5,$F5,$EE,$EE,$F1,$F1
                    db $F1,$F1,$F4,$F4,$ED,$ED,$F0,$F0
                    db $F0,$F0,$F3,$F3,$EC,$EC,$EF,$EF
                    db $28,$68,$28,$68,$28,$68,$28,$68
                    db $28,$33,$33,$34,$35,$36,$37,$F1
                    db $FF,$F6,$FF,$02,$00,$07,$00,$EE
                    db $FF,$F3,$FF,$05,$00,$0A,$00,$EC
                    db $FF,$F1,$FF,$07,$00,$0C,$00,$EB
                    db $FF,$F0,$FF,$08,$00,$0D,$00,$EA
                    db $FF,$EF,$FF,$09,$00,$0E,$00,$EA
                    db $FF,$EF,$FF,$09,$00,$0E,$00,$F8
                    db $F5,$F5,$F8,$F7,$F4,$F4,$F7,$F5
                    db $F2,$F2,$F5,$F4,$F1,$F1,$F4,$F3
                    db $F0,$F0,$F3,$F3,$F0,$F0,$F3,$33
                    db $33,$34,$35,$36,$37,$28,$28,$68
                    db $68

CODE_0FE40F:        PHB                       ;
CODE_0FE410:        PHK                       ;
CODE_0FE411:        PLB                       ;
CODE_0FE412:        PHX                       ;
CODE_0FE413:        PHY                       ;
CODE_0FE414:        LDA $0B00,x               ;
CODE_0FE417:        CMP #$02                  ;
CODE_0FE419:        BEQ CODE_0FE452           ;
CODE_0FE41B:        LSR A                     ;
CODE_0FE41C:        BCC CODE_0FE467           ;
CODE_0FE41E:        LDA $0B09,x               ;
CODE_0FE421:        LSR A                     ;
CODE_0FE422:        LSR A                     ;
CODE_0FE423:        CMP #$06                  ;
CODE_0FE425:        BEQ CODE_0FE454           ;
CODE_0FE427:        TAY                       ;
CODE_0FE428:        LDA $E405,y               ;
CODE_0FE42B:        STA $ED                   ;
CODE_0FE42D:        LDA $021A,x               ;
CODE_0FE430:        STA $00                   ;
CODE_0FE432:        LDA $79,x                 ;
CODE_0FE434:        STA $01                   ;
CODE_0FE436:        REP #$20                  ;
CODE_0FE438:        LDA $00                   ;
CODE_0FE43A:        CLC                       ;
CODE_0FE43B:        ADC #$0008                ;
CODE_0FE43E:        SEC                       ;
CODE_0FE43F:        SBC $42                   ;
CODE_0FE441:        STA $00                   ;
CODE_0FE443:        SEP #$20                  ;
CODE_0FE445:        LDA $0B46,x               ;
CODE_0FE448:        CLC                       ;
CODE_0FE449:        ADC #$04                  ;
CODE_0FE44B:        STA $F2                   ;
CODE_0FE44D:        JSR CODE_0FE537           ;
CODE_0FE450:        BRA CODE_0FE467           ;

CODE_0FE452:        BRA CODE_0FE498           ;

CODE_0FE454:        INC $0B00,x               ;
CODE_0FE457:        STZ $0B09,x               ;
CODE_0FE45A:        LDA $0B00,x               ;
CODE_0FE45D:        CMP #$02                  ;
CODE_0FE45F:        BNE CODE_0FE467           ;
CODE_0FE461:        LDA $0238,x               ;
CODE_0FE464:        STA $0B12,x               ;
CODE_0FE467:        PLY                       ;
CODE_0FE468:        PLX                       ;
CODE_0FE469:        PLB                       ;
CODE_0FE46A:        RTL                       ;

DATA_0FE46B:        db $FF,$FF,$FA,$FF,$FA,$FF,$FA,$FF
                    db $FF,$FF,$00,$00,$00,$00,$00,$00
                    db $FE,$FF,$FE,$FF,$FF,$00,$00,$00
                    db $FF,$12,$12,$12,$10,$10,$FC,$30
                    db $31,$32,$FC,$30,$31,$32,$FC,$FC
                    db $FF,$FF,$FF,$00,$00

CODE_0FE498:        LDA $0B09,x               ;
CODE_0FE49B:        LSR A                     ;
CODE_0FE49C:        LSR A                     ;
CODE_0FE49D:        LSR A                     ;
CODE_0FE49E:        CMP #$05                  ;
CODE_0FE4A0:        BCC CODE_0FE4AA           ;
CODE_0FE4A2:        LDA #$30                  ;
CODE_0FE4A4:        STA $0B09,x               ;
CODE_0FE4A7:        JMP CODE_0FE534           ;

CODE_0FE4AA:        STA $EB                   ;
CODE_0FE4AC:        ASL A                     ;
CODE_0FE4AD:        TAY                       ;
CODE_0FE4AE:        LDA $021A,x               ;
CODE_0FE4B1:        STA $00                   ;
CODE_0FE4B3:        LDA $79,x                 ;
CODE_0FE4B5:        STA $01                   ;
CODE_0FE4B7:        REP #$20                  ;
CODE_0FE4B9:        LDA $00                   ;
CODE_0FE4BB:        CLC                       ;
CODE_0FE4BC:        ADC #$0008                ;
CODE_0FE4BF:        SEC                       ;
CODE_0FE4C0:        SBC $42                   ;
CODE_0FE4C2:        PHA                       ;
CODE_0FE4C3:        CLC                       ;
CODE_0FE4C4:        ADC $E46B,y               ;
CODE_0FE4C7:        STA $00                   ;
CODE_0FE4C9:        PLA                       ;
CODE_0FE4CA:        CLC                       ;
CODE_0FE4CB:        ADC $E475,y               ;
CODE_0FE4CE:        STA $02                   ;
CODE_0FE4D0:        SEP #$20                  ;
CODE_0FE4D2:        LDY $EB                   ;
CODE_0FE4D4:        LDA $E493,y               ;
CODE_0FE4D7:        CLC                       ;
CODE_0FE4D8:        ADC $0B12,x               ;
CODE_0FE4DB:        STA $0B12,x               ;
CODE_0FE4DE:        LDA $E47F,y               ;
CODE_0FE4E1:        CLC                       ;
CODE_0FE4E2:        ADC $0B12,x               ;
CODE_0FE4E5:        STA $04                   ;
CODE_0FE4E7:        LDA $E484,y               ;
CODE_0FE4EA:        CLC                       ;
CODE_0FE4EB:        ADC $0B12,x               ;
CODE_0FE4EE:        STA $ED                   ;
CODE_0FE4F0:        LDA $0B46,x               ;
CODE_0FE4F3:        TAY                       ;
CODE_0FE4F4:        INY                       ;
CODE_0FE4F5:        INY                       ;
CODE_0FE4F6:        INY                       ;
CODE_0FE4F7:        INY                       ;
CODE_0FE4F8:        LDX $EB                   ;
CODE_0FE4FA:        LDA $00                   ;
CODE_0FE4FC:        STA $0900,y               ;
CODE_0FE4FF:        LDA $02                   ;
CODE_0FE501:        STA $0904,y               ;
CODE_0FE504:        LDA $04                   ;
CODE_0FE506:        STA $0901,y               ;
CODE_0FE509:        LDA $ED                   ;
CODE_0FE50B:        STA $0905,y               ;
CODE_0FE50E:        LDA $E489,x               ;
CODE_0FE511:        STA $0902,y               ;
CODE_0FE514:        LDA $E48E,x               ;
CODE_0FE517:        STA $0906,y               ;
CODE_0FE51A:        LDA #$28                  ;
CODE_0FE51C:        STA $0903,y               ;
CODE_0FE51F:        STA $0907,y               ;
CODE_0FE522:        LDA $01                   ;
CODE_0FE524:        BEQ CODE_0FE52B           ;
CODE_0FE526:        LDA #$01                  ;
CODE_0FE528:        STA $0D00,y               ;
CODE_0FE52B:        LDA $03                   ;
CODE_0FE52D:        BEQ CODE_0FE534           ;
CODE_0FE52F:        LDA #$01                  ;
CODE_0FE531:        STA $0D04,y               ;
CODE_0FE534:        JMP CODE_0FE467           ;

CODE_0FE537:        STY $EC                   ;
CODE_0FE539:        LDX #$00                  ;
CODE_0FE53B:        LDA $EC                   ;
CODE_0FE53D:        ASL A                     ;
CODE_0FE53E:        ASL A                     ;
CODE_0FE53F:        STA $EB                   ;
CODE_0FE541:        TXA                       ;
CODE_0FE542:        CLC                       ;
CODE_0FE543:        ADC $EB                   ;
CODE_0FE545:        TAY                       ;
CODE_0FE546:        LDA #$D8                  ;
CODE_0FE548:        CLC                       ;
CODE_0FE549:        ADC $E3ED,y               ;
CODE_0FE54C:        STA $EE                   ;
CODE_0FE54E:        LDA $5C                   ;
CODE_0FE550:        BNE CODE_0FE556           ;
CODE_0FE552:        LDA #$F0                  ;
CODE_0FE554:        STA $EE                   ;
CODE_0FE556:        LDA $E40B,x               ;
CODE_0FE559:        STA $EF                   ;
CODE_0FE55B:        TYA                       ;
CODE_0FE55C:        ASL A                     ;
CODE_0FE55D:        TAY                       ;
CODE_0FE55E:        REP #$20                  ;
CODE_0FE560:        LDA $E3BD,y               ;
CODE_0FE563:        CLC                       ;
CODE_0FE564:        ADC $00                   ;
CODE_0FE566:        STA $F0                   ;
CODE_0FE568:        SEP #$20                  ;
CODE_0FE56A:        TXA                       ;
CODE_0FE56B:        ASL A                     ;
CODE_0FE56C:        ASL A                     ;
CODE_0FE56D:        CLC                       ;
CODE_0FE56E:        ADC $F2                   ;
CODE_0FE570:        TAY                       ;
CODE_0FE571:        LDA $F0                   ;
CODE_0FE573:        STA $0900,y               ;
CODE_0FE576:        LDA $EE                   ;
CODE_0FE578:        STA $0901,y               ;
CODE_0FE57B:        LDA $ED                   ;
CODE_0FE57D:        STA $0902,y               ;
CODE_0FE580:        LDA $EF                   ;
CODE_0FE582:        STA $0903,y               ;
CODE_0FE585:        LDA $F1                   ;
CODE_0FE587:        BEQ CODE_0FE58E           ;
CODE_0FE589:        LDA #$01                  ;
CODE_0FE58B:        STA $0D00,y               ;
CODE_0FE58E:        INX                       ;
CODE_0FE58F:        CPX #$04                  ;
CODE_0FE591:        BNE CODE_0FE53B           ;
CODE_0FE593:        RTS                       ;

DATA_0FE594:        db $1C,$0E,$06,$08,$18,$16,$1A,$14
                    db $D0,$E0,$E1,$FC,$00,$FC,$F8,$F4

CODE_0FE5A4:        PHB                       ;
CODE_0FE5A5:        PHK                       ;
CODE_0FE5A6:        PLB                       ;
CODE_0FE5A7:        PHX                       ;
CODE_0FE5A8:        PHY                       ;
CODE_0FE5A9:        LDA $0E40                 ;
CODE_0FE5AC:        BNE CODE_0FE5B1           ;
CODE_0FE5AE:        JSR CODE_0FE5C5           ;
CODE_0FE5B1:        JSR CODE_0FE5D4           ;
CODE_0FE5B4:        LDA $0E42                 ;
CODE_0FE5B7:        AND #$20                  ;
CODE_0FE5B9:        BEQ CODE_0FE5C1           ;
CODE_0FE5BB:        STZ $0E40                 ;
CODE_0FE5BE:        STZ $0E41                 ;
CODE_0FE5C1:        PLY                       ;
CODE_0FE5C2:        PLX                       ;
CODE_0FE5C3:        PLB                       ;
CODE_0FE5C4:        RTL                       ;

CODE_0FE5C5:        LDX #$03                  ;
CODE_0FE5C7:        LDA $E5A0,x               ;
CODE_0FE5CA:        STA $0E42,x               ;
CODE_0FE5CD:        DEX                       ;
CODE_0FE5CE:        BPL CODE_0FE5C7           ;
CODE_0FE5D0:        INC $0E40                 ;
CODE_0FE5D3:        RTS                       ;

CODE_0FE5D4:        LDX #$03                  ;
CODE_0FE5D6:        LDY #$30                  ;
CODE_0FE5D8:        LDA $0E42,x               ;
CODE_0FE5DB:        BMI CODE_0FE608           ;
CODE_0FE5DD:        BNE CODE_0FE5E2           ;
CODE_0FE5DF:        JSR CODE_0FE618           ;
CODE_0FE5E2:        LSR A                     ;
CODE_0FE5E3:        LSR A                     ;
CODE_0FE5E4:        CMP #$03                  ;
CODE_0FE5E6:        BCS CODE_0FE608           ;
CODE_0FE5E8:        PHX                       ;
CODE_0FE5E9:        TAX                       ;
CODE_0FE5EA:        LDA $E59C,x               ;
CODE_0FE5ED:        STA $0802,y               ;
CODE_0FE5F0:        LDA #$38                  ;
CODE_0FE5F2:        STA $0803,y               ;
CODE_0FE5F5:        PLX                       ;
CODE_0FE5F6:        LDA $0E46,x               ;
CODE_0FE5F9:        SEC                       ;
CODE_0FE5FA:        SBC $071C                 ;
CODE_0FE5FD:        STA $0800,y               ;
CODE_0FE600:        LDA $0E4A,x               ;
CODE_0FE603:        STA $0801,y               ;
CODE_0FE606:        BRA CODE_0FE60D           ;

CODE_0FE608:        LDA #$F8                  ;
CODE_0FE60A:        STA $0801,y               ;
CODE_0FE60D:        INY                       ;
CODE_0FE60E:        INY                       ;
CODE_0FE60F:        INY                       ;
CODE_0FE610:        INY                       ;
CODE_0FE611:        INC $0E42,x               ;
CODE_0FE614:        DEX                       ;
CODE_0FE615:        BPL CODE_0FE5D8           ;
CODE_0FE617:        RTS                       ;

CODE_0FE618:        LDA $0202                 ;
CODE_0FE61B:        LSR A                     ;
CODE_0FE61C:        BCC CODE_0FE626           ;
CODE_0FE61E:        LDA $0219                 ;
CODE_0FE621:        CLC                       ;
CODE_0FE622:        ADC #$06                  ;
CODE_0FE624:        BRA CODE_0FE62C           ;

CODE_0FE626:        LDA $0219                 ;
CODE_0FE629:        CLC                       ;
CODE_0FE62A:        ADC #$02                  ;
CODE_0FE62C:        STA $0E46,x               ;
CODE_0FE62F:        LDA $06D5                 ;
CODE_0FE632:        CMP #$18                  ;
CODE_0FE634:        BEQ CODE_0FE63A           ;
CODE_0FE636:        CMP #$78                  ;
CODE_0FE638:        BNE CODE_0FE64D           ;
CODE_0FE63A:        LDA $07B8                 ;
CODE_0FE63D:        AND #$04                  ;
CODE_0FE63F:        SEC                       ;
CODE_0FE640:        SBC #$02                  ;
CODE_0FE642:        CLC                       ;
CODE_0FE643:        ADC $03B8                 ;
CODE_0FE646:        ADC $E598                 ;
CODE_0FE649:        STA $0E4A,x               ;
CODE_0FE64C:        RTS                       ;

CODE_0FE64D:        LDA #$F8                  ;
CODE_0FE64F:        STA $0E4A,x               ;
CODE_0FE652:        RTS                       ;

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

CODE_0FE893:        PHB                       ;
CODE_0FE894:        PHK                       ;
CODE_0FE895:        PLB                       ;
CODE_0FE896:        LDA #$01                  ;
CODE_0FE898:        STA $0EC8                 ;
CODE_0FE89B:        REP #$30                  ;
CODE_0FE89D:        LDX $1700                 ;
CODE_0FE8A0:        LDY #$0000                ;
CODE_0FE8A3:        LDA $E653,y               ;
CODE_0FE8A6:        STA $1702,x               ;
CODE_0FE8A9:        INC A                     ;
CODE_0FE8AA:        BEQ CODE_0FE8B2           ;
CODE_0FE8AC:        INX                       ;
CODE_0FE8AD:        INX                       ;
CODE_0FE8AE:        INY                       ;
CODE_0FE8AF:        INY                       ;
CODE_0FE8B0:        BRA CODE_0FE8A3           ;

CODE_0FE8B2:        STX $1700                 ;
CODE_0FE8B5:        SEP #$30                  ;
CODE_0FE8B7:        STZ $0F2B                 ;
CODE_0FE8BA:        PLB                       ;
CODE_0FE8BB:        RTL                       ;

DATA_0FE8BC:        db $00,$30

CODE_0FE8BE:        PHB                       ;
CODE_0FE8BF:        PHK                       ;
CODE_0FE8C0:        PLB                       ;
CODE_0FE8C1:        STY $00                   ;
CODE_0FE8C3:        LDA $03B9                 ;
CODE_0FE8C6:        LDX $039A,y               ;
CODE_0FE8C9:        LDY $0B46,x               ;
CODE_0FE8CC:        STY $02                   ;
CODE_0FE8CE:        DEC A                     ;
CODE_0FE8CF:        JSR CODE_0FE94B           ;
CODE_0FE8D2:        LDA $03AE                 ;
CODE_0FE8D5:        STA $0900,y               ;
CODE_0FE8D8:        STA $0908,y               ;
CODE_0FE8DB:        STA $0910,y               ;
CODE_0FE8DE:        STA $0904,y               ;
CODE_0FE8E1:        STA $090C,y               ;
CODE_0FE8E4:        STA $0914,y               ;
CODE_0FE8E7:        STA $0918,y               ;
CODE_0FE8EA:        STA $091C,y               ;
CODE_0FE8ED:        STA $0920,y               ;
CODE_0FE8F0:        LDA #$1B                  ;
CODE_0FE8F2:        STA $0903,y               ;
CODE_0FE8F5:        STA $090B,y               ;
CODE_0FE8F8:        STA $0913,y               ;
CODE_0FE8FB:        STA $0907,y               ;
CODE_0FE8FE:        STA $090F,y               ;
CODE_0FE901:        STA $0917,y               ;
CODE_0FE904:        STA $091B,y               ;
CODE_0FE907:        STA $091F,y               ;
CODE_0FE90A:        STA $0923,y               ;
CODE_0FE90D:        LDX #$08                  ;
CODE_0FE90F:        LDA #$2C                  ;
CODE_0FE911:        STA $0902,y               ;
CODE_0FE914:        INY                       ;
CODE_0FE915:        INY                       ;
CODE_0FE916:        INY                       ;
CODE_0FE917:        INY                       ;
CODE_0FE918:        DEX                       ;
CODE_0FE919:        BPL CODE_0FE90F           ;
CODE_0FE91B:        LDY $02                   ;
CODE_0FE91D:        LDA $0000                 ;
CODE_0FE920:        BNE CODE_0FE927           ;
CODE_0FE922:        LDA #$2A                  ;
CODE_0FE924:        STA $0902,y               ;
CODE_0FE927:        LDA $0399                 ;
CODE_0FE92A:        LSR A                     ;
CODE_0FE92B:        LSR A                     ;
CODE_0FE92C:        LSR A                     ;
CODE_0FE92D:        LSR A                     ;
CODE_0FE92E:        INC A                     ;
CODE_0FE92F:        TAX                       ;
CODE_0FE930:        ASL A                     ;
CODE_0FE931:        ASL A                     ;
CODE_0FE932:        CLC                       ;
CODE_0FE933:        ADC $02                   ;
CODE_0FE935:        TAY                       ;
CODE_0FE936:        CPX #$09                  ;
CODE_0FE938:        BCS CODE_0FE946           ;
CODE_0FE93A:        LDA #$F0                  ;
CODE_0FE93C:        STA $0901,y               ;
CODE_0FE93F:        INY                       ;
CODE_0FE940:        INY                       ;
CODE_0FE941:        INY                       ;
CODE_0FE942:        INY                       ;
CODE_0FE943:        INX                       ;
CODE_0FE944:        BRA CODE_0FE936           ;

CODE_0FE946:        LDY $0000                 ;
CODE_0FE949:        PLB                       ;
CODE_0FE94A:        RTL                       ;

CODE_0FE94B:        LDX #$09                  ;
CODE_0FE94D:        STA $0901,y               ;
CODE_0FE950:        PHA                       ;
CODE_0FE951:        LDA $0223                 ;
CODE_0FE954:        STA $E4                   ;
CODE_0FE956:        LDA $82                   ;
CODE_0FE958:        STA $E5                   ;
CODE_0FE95A:        REP #$20                  ;
CODE_0FE95C:        LDA $E4                   ;
CODE_0FE95E:        SEC                       ;
CODE_0FE95F:        SBC $42                   ;
CODE_0FE961:        STA $E4                   ;
CODE_0FE963:        SEP #$20                  ;
CODE_0FE965:        LDA #$02                  ;
CODE_0FE967:        STA $DD                   ;
CODE_0FE969:        LDA $E5                   ;
CODE_0FE96B:        BEQ CODE_0FE96F           ;
CODE_0FE96D:        LDA #$01                  ;
CODE_0FE96F:        ORA $DD                   ;
CODE_0FE971:        STA $0D00,y               ;
CODE_0FE974:        LDA $0236                 ;
CODE_0FE977:        BNE CODE_0FE987           ;
CODE_0FE979:        LDA $0901,y               ;
CODE_0FE97C:        BPL CODE_0FE987           ;
CODE_0FE97E:        CMP #$F0                  ;
CODE_0FE980:        BCS CODE_0FE987           ;
CODE_0FE982:        LDA #$F0                  ;
CODE_0FE984:        STA $0901,y               ;
CODE_0FE987:        PLA                       ;
CODE_0FE988:        CLC                       ;
CODE_0FE989:        ADC #$10                  ;
CODE_0FE98B:        INY                       ;
CODE_0FE98C:        INY                       ;
CODE_0FE98D:        INY                       ;
CODE_0FE98E:        INY                       ;
CODE_0FE98F:        DEX                       ;
CODE_0FE990:        BNE CODE_0FE94D           ;
CODE_0FE992:        LDY $02                   ;
CODE_0FE994:        RTS                       ;

CODE_0FE995:        LDY $0B53                 ;
CODE_0FE998:        REP #$20                  ;
CODE_0FE99A:        LDA $0E70                 ;
CODE_0FE99D:        SEC                       ;
CODE_0FE99E:        SBC $42                   ;
CODE_0FE9A0:        STA $0E6B                 ;
CODE_0FE9A3:        SEP #$20                  ;
CODE_0FE9A5:        LDA $0E6F                 ;
CODE_0FE9A8:        BNE CODE_0FE9D5           ;
CODE_0FE9AA:        LDA $0E6D                 ;
CODE_0FE9AD:        STA $0801,y               ;
CODE_0FE9B0:        LDA $0E6B                 ;
CODE_0FE9B3:        JSR CODE_0FEABB           ;
CODE_0FE9B6:        STA $0800,y               ;
CODE_0FE9B9:        LDA #$26                  ;
CODE_0FE9BB:        STA $0802,y               ;
CODE_0FE9BE:        LDA #$29                  ;
CODE_0FE9C0:        STA $0803,y               ;
CODE_0FE9C3:        DEC $0E6E                 ;
CODE_0FE9C6:        BEQ CODE_0FE9CB           ;
CODE_0FE9C8:        JMP CODE_0FEA4F           ;

CODE_0FE9CB:        LDA #$06                  ;
CODE_0FE9CD:        STA $0E6E                 ;
CODE_0FE9D0:        INC $0E6F                 ;
CODE_0FE9D3:        BRA CODE_0FEA4F           ;

CODE_0FE9D5:        LDA $0E6F                 ;
CODE_0FE9D8:        CMP #$06                  ;
CODE_0FE9DA:        BCS CODE_0FEA4F           ;
CODE_0FE9DC:        PHX                       ;
CODE_0FE9DD:        LDX $0E6F                 ;
CODE_0FE9E0:        LDA $EA81,x               ;
CODE_0FE9E3:        CLC                       ;
CODE_0FE9E4:        ADC $0E6B                 ;
CODE_0FE9E7:        STA $0800,y               ;
CODE_0FE9EA:        STA $0804,y               ;
CODE_0FE9ED:        JSR CODE_0FEABB           ;
CODE_0FE9F0:        LDA $EA8D,x               ;
CODE_0FE9F3:        CLC                       ;
CODE_0FE9F4:        ADC $0E6D                 ;
CODE_0FE9F7:        STA $0801,y               ;
CODE_0FE9FA:        CLC                       ;
CODE_0FE9FB:        ADC #$08                  ;
CODE_0FE9FD:        STA $0805,y               ;
CODE_0FEA00:        LDA $EA87,x               ;
CODE_0FEA03:        CLC                       ;
CODE_0FEA04:        ADC $0E6B                 ;
CODE_0FEA07:        STA $0808,y               ;
CODE_0FEA0A:        STA $080C,y               ;
CODE_0FEA0D:        JSR CODE_0FEABB           ;
CODE_0FEA10:        LDA $EA8D,x               ;
CODE_0FEA13:        CLC                       ;
CODE_0FEA14:        ADC $0E6D                 ;
CODE_0FEA17:        STA $0809,y               ;
CODE_0FEA1A:        CLC                       ;
CODE_0FEA1B:        ADC #$08                  ;
CODE_0FEA1D:        STA $080D,y               ;
CODE_0FEA20:        LDX $0E6F                 ;
CODE_0FEA23:        DEX                       ;
CODE_0FEA24:        TXA                       ;
CODE_0FEA25:        ASL A                     ;
CODE_0FEA26:        ASL A                     ;
CODE_0FEA27:        TAX                       ;
CODE_0FEA28:        LDA #$03                  ;
CODE_0FEA2A:        STA $04                   ;
CODE_0FEA2C:        LDA $EA93,x               ;
CODE_0FEA2F:        STA $0802,y               ;
CODE_0FEA32:        LDA $EAA7,x               ;
CODE_0FEA35:        STA $0803,y               ;
CODE_0FEA38:        INY                       ;
CODE_0FEA39:        INY                       ;
CODE_0FEA3A:        INY                       ;
CODE_0FEA3B:        INY                       ;
CODE_0FEA3C:        INX                       ;
CODE_0FEA3D:        DEC $04                   ;
CODE_0FEA3F:        BPL CODE_0FEA2C           ;
CODE_0FEA41:        DEC $0E6E                 ;
CODE_0FEA44:        BNE CODE_0FEA4E           ;
CODE_0FEA46:        LDA #$06                  ;
CODE_0FEA48:        STA $0E6E                 ;
CODE_0FEA4B:        INC $0E6F                 ;
CODE_0FEA4E:        PLX                       ;
CODE_0FEA4F:        JMP CODE_0FEB35           ;

CODE_0FEA52:        LDA $09                   ;
CODE_0FEA54:        LSR A                     ;
CODE_0FEA55:        BCS CODE_0FEA5A           ;
CODE_0FEA57:        DEC $0248,x               ;
CODE_0FEA5A:        LDA $0248,x               ;
CODE_0FEA5D:        STA $0801,y               ;
CODE_0FEA60:        LDA $03B3                 ;
CODE_0FEA63:        STA $0800,y               ;
CODE_0FEA66:        LDA #$02                  ;
CODE_0FEA68:        STA $0C00,y               ;
CODE_0FEA6B:        CMP #$F8                  ;
CODE_0FEA6D:        BCC CODE_0FEA74           ;
CODE_0FEA6F:        LDA #$03                  ;
CODE_0FEA71:        STA $0C00,y               ;
CODE_0FEA74:        LDA #$23                  ;
CODE_0FEA76:        STA $0803,y               ;
CODE_0FEA79:        LDA #$2E                  ;
CODE_0FEA7B:        STA $0802,y               ;
CODE_0FEA7E:        JMP CODE_0FE995           ;

DATA_0FEA81:        db $00,$FC,$FB,$FA,$FA,$FA,$00,$04
                    db $05,$06,$06,$06,$00,$FC,$FC,$FE
                    db $FE,$FF,$27,$27,$28,$28,$36,$37
                    db $36,$37,$36,$37,$36,$37,$38,$29
                    db $38,$29,$38,$29,$38,$29,$29,$A9
                    db $29,$A9,$29,$29,$69,$69,$29,$29
                    db $69,$69,$29,$29,$69,$69,$29,$29
                    db $69,$69

CODE_0FEABB:        PHA                       ;
CODE_0FEABC:        CMP #$F8                  ;
CODE_0FEABE:        BCC CODE_0FEAC8           ;
CODE_0FEAC0:        LDA #$01                  ;
CODE_0FEAC2:        STA $0C00,y               ;
CODE_0FEAC5:        STA $0C04,y               ;
CODE_0FEAC8:        PLA                       ;
CODE_0FEAC9:        RTS                       ;

CODE_0FEACA:        LDA $0248,x               ;
CODE_0FEACD:        CLC                       ;
CODE_0FEACE:        ADC #$04                  ;
CODE_0FEAD0:        STA $0E6D                 ;
CODE_0FEAD3:        LDA $022A,x               ;
CODE_0FEAD6:        STA $0E70                 ;
CODE_0FEAD9:        LDA $0089,x               ;
CODE_0FEADC:        STA $0E71                 ;
CODE_0FEADF:        LDA #$06                  ;
CODE_0FEAE1:        STA $0E6E                 ;
CODE_0FEAE4:        STZ $0E6F                 ;
CODE_0FEAE7:        RTL                       ;

DATA_0FEAE8:        db $28,$2A,$2C,$2E

CODE_0FEAEC:        PHB                       ;
CODE_0FEAED:        PHK                       ;
CODE_0FEAEE:        PLB                       ;
CODE_0FEAEF:        LDY $0B62,x               ;
CODE_0FEAF2:        LDA $39,x                 ;
CODE_0FEAF4:        CMP #$02                  ;
CODE_0FEAF6:        BCC CODE_0FEAFB           ;
CODE_0FEAF8:        JMP CODE_0FEA52           ;

CODE_0FEAFB:        LDA $B1,x                 ;
CODE_0FEAFD:        BMI CODE_0FEB02           ;
CODE_0FEAFF:        JMP CODE_0FE995           ;

CODE_0FEB02:        LDA $0248,x               ;
CODE_0FEB05:        STA $0801,y               ;
CODE_0FEB08:        LDA $03B3                 ;
CODE_0FEB0B:        SEC                       ;
CODE_0FEB0C:        SBC #$04                  ;
CODE_0FEB0E:        STA $E4                   ;
CODE_0FEB10:        CMP #$F0                  ;
CODE_0FEB12:        BCS CODE_0FEB18           ;
CODE_0FEB14:        LDA #$02                  ;
CODE_0FEB16:        BRA CODE_0FEB1A           ;

CODE_0FEB18:        LDA #$03                  ;
CODE_0FEB1A:        STA $0C00,y               ;
CODE_0FEB1D:        LDA $E4                   ;
CODE_0FEB1F:        STA $0800,y               ;
CODE_0FEB22:        LDA $09                   ;
CODE_0FEB24:        LSR A                     ;
CODE_0FEB25:        AND #$03                  ;
CODE_0FEB27:        TAX                       ;
CODE_0FEB28:        LDA $EAE8,x               ;
CODE_0FEB2B:        STA $0802,y               ;
CODE_0FEB2E:        LDA #$28                  ;
CODE_0FEB30:        STA $0803,y               ;
CODE_0FEB33:        LDX $9E                   ;
CODE_0FEB35:        PLB                       ;
CODE_0FEB36:        RTL                       ;

DATA_0FEB37:        db $04,$00,$04,$00,$00,$04,$00,$04
                    db $00,$08,$00,$08,$08,$00,$08,$00
                    db $44,$46,$44,$46,$81,$83,$80,$82
                    db $2A,$2A,$AA,$6A

CODE_0FEB53:        PHB                       ;
CODE_0FEB54:        PHK                       ;
CODE_0FEB55:        PLB                       ;
CODE_0FEB56:        LDY $0B62,x               ;
CODE_0FEB59:        LDA $0747                 ;
CODE_0FEB5C:        BNE CODE_0FEB66           ;
CODE_0FEB5E:        LDA $39,x                 ;
CODE_0FEB60:        AND #$7F                  ;
CODE_0FEB62:        CMP #$01                  ;
CODE_0FEB64:        BEQ CODE_0FEB6A           ;
CODE_0FEB66:        LDX #$00                  ;
CODE_0FEB68:        BEQ CODE_0FEB71           ;
CODE_0FEB6A:        LDA $09                   ;
CODE_0FEB6C:        LSR A                     ;
CODE_0FEB6D:        LSR A                     ;
CODE_0FEB6E:        AND #$03                  ;
CODE_0FEB70:        TAX                       ;
CODE_0FEB71:        LDA $03BE                 ;
CODE_0FEB74:        CLC                       ;
CODE_0FEB75:        ADC $EB3B,x               ;
CODE_0FEB78:        STA $0801,y               ;
CODE_0FEB7B:        REP #$20                  ;
CODE_0FEB7D:        LDA $EB37,x               ;
CODE_0FEB80:        AND #$00FF                ;
CODE_0FEB83:        CLC                       ;
CODE_0FEB84:        ADC $0E93                 ;
CODE_0FEB87:        SEC                       ;
CODE_0FEB88:        SBC #$0008                ;
CODE_0FEB8B:        STA $E4                   ;
CODE_0FEB8D:        SEP #$20                  ;
CODE_0FEB8F:        LDA $E4                   ;
CODE_0FEB91:        STA $0800,y               ;
CODE_0FEB94:        LDA #$02                  ;
CODE_0FEB96:        STA $0C00,y               ;
CODE_0FEB99:        LDA $E5                   ;
CODE_0FEB9B:        BEQ CODE_0FEBA2           ;
CODE_0FEB9D:        LDA #$03                  ;
CODE_0FEB9F:        STA $0C00,y               ;
CODE_0FEBA2:        LDA $EB47,x               ;
CODE_0FEBA5:        STA $0802,y               ;
CODE_0FEBA8:        LDA $EB4F,x               ;
CODE_0FEBAB:        STA $0803,y               ;
CODE_0FEBAE:        LDA $03D6                 ;
CODE_0FEBB1:        AND #$0F                  ;
CODE_0FEBB3:        CMP #$0F                  ;
CODE_0FEBB5:        BEQ CODE_0FEBBE           ;
CODE_0FEBB7:        LDA $03D6                 ;
CODE_0FEBBA:        AND #$F0                  ;
CODE_0FEBBC:        BEQ CODE_0FEBC2           ;
CODE_0FEBBE:        LDX $9E                   ;
CODE_0FEBC0:        STZ $39,x                 ;
CODE_0FEBC2:        LDX $9E                   ;
CODE_0FEBC4:        PLB                       ;
CODE_0FEBC5:        RTL                       ;

CODE_0FEBC6:        PHD                       ;
CODE_0FEBC7:        LDA #$0C                  ;
CODE_0FEBC9:        XBA                       ;
CODE_0FEBCA:        LDA #$00                  ;
CODE_0FEBCC:        TCD                       ;
CODE_0FEBCD:        REP #$10                  ;
CODE_0FEBCF:        LDX #$0000                ;
CODE_0FEBD2:        TXY                       ;
CODE_0FEBD3:        LDA $0C,x                 ;
CODE_0FEBD5:        LSR A                     ;
CODE_0FEBD6:        ROR A                     ;
CODE_0FEBD7:        ROR A                     ;
CODE_0FEBD8:        STA $01                   ;
CODE_0FEBDA:        LDA $08,x                 ;
CODE_0FEBDC:        ASL A                     ;
CODE_0FEBDD:        ASL A                     ;
CODE_0FEBDE:        ASL A                     ;
CODE_0FEBDF:        ASL A                     ;
CODE_0FEBE0:        TSB $01                   ;
CODE_0FEBE2:        LDA $04,x                 ;
CODE_0FEBE4:        ASL A                     ;
CODE_0FEBE5:        ASL A                     ;
CODE_0FEBE6:        TSB $01                   ;
CODE_0FEBE8:        LDA $00,x                 ;
CODE_0FEBEA:        ORA $01                   ;
CODE_0FEBEC:        STA $0A00,y               ;
CODE_0FEBEF:        INY                       ;
CODE_0FEBF0:        LDA $1C,x                 ;
CODE_0FEBF2:        LSR A                     ;
CODE_0FEBF3:        ROR A                     ;
CODE_0FEBF4:        ROR A                     ;
CODE_0FEBF5:        STA $01                   ;
CODE_0FEBF7:        LDA $18,x                 ;
CODE_0FEBF9:        ASL A                     ;
CODE_0FEBFA:        ASL A                     ;
CODE_0FEBFB:        ASL A                     ;
CODE_0FEBFC:        ASL A                     ;
CODE_0FEBFD:        TSB $01                   ;
CODE_0FEBFF:        LDA $14,x                 ;
CODE_0FEC01:        ASL A                     ;
CODE_0FEC02:        ASL A                     ;
CODE_0FEC03:        TSB $01                   ;
CODE_0FEC05:        LDA $10,x                 ;
CODE_0FEC07:        ORA $01                   ;
CODE_0FEC09:        STA $0A00,y               ;
CODE_0FEC0C:        INY                       ;
CODE_0FEC0D:        REP #$20                  ;
CODE_0FEC0F:        TXA                       ;
CODE_0FEC10:        CLC                       ;
CODE_0FEC11:        ADC #$0020                ;
CODE_0FEC14:        TAX                       ;
CODE_0FEC15:        SEP #$20                  ;
CODE_0FEC17:        CPX #$0200                ;
CODE_0FEC1A:        BCC CODE_0FEBD3           ;
CODE_0FEC1C:        SEP #$10                  ;
CODE_0FEC1E:        PLD                       ;
CODE_0FEC1F:        RTL                       ;

CODE_0FEC20:        LDA $02F7                 ;
CODE_0FEC23:        BNE CODE_0FEC54           ;
CODE_0FEC25:        LDY $BB                   ;
CODE_0FEC27:        DEY                       ;
CODE_0FEC28:        BNE CODE_0FEC54           ;
CODE_0FEC2A:        LDA $03D3                 ;
CODE_0FEC2D:        AND #$08                  ;
CODE_0FEC2F:        BNE CODE_0FEC54           ;
CODE_0FEC31:        LDY $0B53,x               ;
CODE_0FEC34:        LDA $03B0                 ;
CODE_0FEC37:        STA $0800,y               ;
CODE_0FEC3A:        LDA $03BB                 ;
CODE_0FEC3D:        STA $0801,y               ;
CODE_0FEC40:        LDA #$9F                  ;
CODE_0FEC42:        STA $0802,y               ;
CODE_0FEC45:        LDA $0F                   ;
CODE_0FEC47:        CMP #$07                  ;
CODE_0FEC49:        BNE CODE_0FEC4F           ;
CODE_0FEC4B:        LDA #$0A                  ;
CODE_0FEC4D:        BRA CODE_0FEC51           ;

CODE_0FEC4F:        LDA #$2A                  ;
CODE_0FEC51:        STA $0803,y               ;
CODE_0FEC54:        RTL                       ;

DATA_0FEC55:        db $DF,$1B,$7F,$02,$39,$01,$00,$00
                    db $FF,$4B,$5F,$1F,$9C,$0D,$00,$00
                    db $FF,$7F,$FF,$4B,$FF,$19,$00,$00
                    db $DA,$1A,$F3,$0D,$0D,$05,$00,$00
                    db $5E,$2B,$77,$1E,$70,$11,$00,$00
                    db $DF,$3B,$FB,$2E,$D3,$1D,$00,$00
                    db $7F,$47,$98,$32,$B1,$15,$00,$00
                    db $1B,$67,$34,$4A,$4D,$2D,$00,$00
                    db $97,$7E,$B0,$6D,$EA,$54,$00,$00
                    db $5F,$03,$59,$02,$00,$38,$00,$00
                    db $FF,$03,$BC,$02,$16,$00,$00,$00
                    db $FF,$7F,$FF,$47,$DF,$00,$00,$00
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

CODE_0FED35:        LDA $0200                 ;
CODE_0FED38:        BEQ CODE_0FED3C           ;
CODE_0FED3A:        PLB                       ;
CODE_0FED3B:        RTL                       ;

CODE_0FED3C:        INC $0E74                 ;
CODE_0FED3F:        LDA $0E74                 ;
CODE_0FED42:        AND #$07                  ;
CODE_0FED44:        BEQ CODE_0FED49           ;
CODE_0FED46:        JMP CODE_0FEDBC           ;

CODE_0FED49:        INC $0E75                 ;
CODE_0FED4C:        LDA $0E75                 ;
CODE_0FED4F:        CMP #$03                  ;
CODE_0FED51:        BNE CODE_0FED58           ;
CODE_0FED53:        STZ $0E75                 ;
CODE_0FED56:        LDA #$00                  ;
CODE_0FED58:        ASL A                     ;
CODE_0FED59:        ASL A                     ;
CODE_0FED5A:        ASL A                     ;
CODE_0FED5B:        TAX                       ;
CODE_0FED5C:        REP #$20                  ;
CODE_0FED5E:        LDA $EC55,x               ;
CODE_0FED61:        STA $1026                 ;
CODE_0FED64:        LDA $EC9D,x               ;
CODE_0FED67:        STA $100A                 ;
CODE_0FED6A:        LDA $EC6D,x               ;
CODE_0FED6D:        STA $102C                 ;
CODE_0FED70:        LDA $EC57,x               ;
CODE_0FED73:        STA $1028                 ;
CODE_0FED76:        LDA $EC9F,x               ;
CODE_0FED79:        STA $100C                 ;
CODE_0FED7C:        LDA $EC6F,x               ;
CODE_0FED7F:        STA $102E                 ;
CODE_0FED82:        LDA $EC59,x               ;
CODE_0FED85:        STA $102A                 ;
CODE_0FED88:        LDA $ECA1,x               ;
CODE_0FED8B:        STA $100E                 ;
CODE_0FED8E:        LDA $EC71,x               ;
CODE_0FED91:        STA $1030                 ;
CODE_0FED94:        SEP #$20                  ;
CODE_0FED96:        LDA $0F26                 ;
CODE_0FED99:        BEQ CODE_0FEDB7           ;
CODE_0FED9B:        DEC A                     ;
CODE_0FED9C:        ASL A                     ;
CODE_0FED9D:        TAX                       ;
CODE_0FED9E:        LDA $EDAF,x               ;
CODE_0FEDA1:        STA $E4                   ;
CODE_0FEDA3:        LDA $EDB0,x               ;
CODE_0FEDA6:        STA $E5                   ;
CODE_0FEDA8:        LDA #$05                  ;
CODE_0FEDAA:        STA $E6                   ;
CODE_0FEDAC:        JMP ($00E4)               ;

PNTR_0FEDAF:        dw CODE_0FEDF3
                    dw CODE_0FEDB7
                    dw CODE_0FEE20
                    dw CODE_0FEF02

CODE_0FEDB7:        LDA #$01                  ;
CODE_0FEDB9:        STA $1200                 ;
CODE_0FEDBC:        LDA $0E74                 ;
CODE_0FEDBF:        AND #$03                  ;
CODE_0FEDC1:        BNE CODE_0FEDF1           ;
CODE_0FEDC3:        INC $0E76                 ;
CODE_0FEDC6:        LDA $0E76                 ;
CODE_0FEDC9:        CMP #$03                  ;
CODE_0FEDCB:        BNE CODE_0FEDD2           ;
CODE_0FEDCD:        STZ $0E76                 ;
CODE_0FEDD0:        LDA #$00                  ;
CODE_0FEDD2:        ASL A                     ;
CODE_0FEDD3:        ASL A                     ;
CODE_0FEDD4:        ASL A                     ;
CODE_0FEDD5:        TAX                       ;
CODE_0FEDD6:        REP #$20                  ;
CODE_0FEDD8:        LDA $EC85,x               ;
CODE_0FEDDB:        STA $1032                 ;
CODE_0FEDDE:        LDA $EC87,x               ;
CODE_0FEDE1:        STA $1034                 ;
CODE_0FEDE4:        LDA $EC89,x               ;
CODE_0FEDE7:        STA $1036                 ;
CODE_0FEDEA:        SEP #$20                  ;
CODE_0FEDEC:        LDA #$01                  ;
CODE_0FEDEE:        STA $1200                 ;
CODE_0FEDF1:        PLB                       ;
CODE_0FEDF2:        RTL                       ;

CODE_0FEDF3:        LDA $0E74                 ;
CODE_0FEDF6:        AND #$38                  ;
CODE_0FEDF8:        LSR A                     ;
CODE_0FEDF9:        LSR A                     ;
CODE_0FEDFA:        TAX                       ;
CODE_0FEDFB:        REP #$20                  ;
CODE_0FEDFD:        LDA $EE52,x               ;
CODE_0FEE00:        STA $10E6                 ;
CODE_0FEE03:        LDA $EE62,x               ;
CODE_0FEE06:        STA $10E8                 ;
CODE_0FEE09:        LDA $EE72,x               ;
CODE_0FEE0C:        STA $10FA                 ;
CODE_0FEE0F:        LDA $EE82,x               ;
CODE_0FEE12:        STA $10FC                 ;
CODE_0FEE15:        LDA $EE92,x               ;
CODE_0FEE18:        STA $10FE                 ;
CODE_0FEE1B:        SEP #$20                  ;
CODE_0FEE1D:        JMP CODE_0FEDB7           ;

CODE_0FEE20:        LDA $0E74                 ;
CODE_0FEE23:        AND #$38                  ;
CODE_0FEE25:        ASL A                     ;
CODE_0FEE26:        TAX                       ;
CODE_0FEE27:        REP #$20                  ;
CODE_0FEE29:        LDA $ECB5,x               ;
CODE_0FEE2C:        STA $10E6                 ;
CODE_0FEE2F:        LDA $ECB7,x               ;
CODE_0FEE32:        STA $10E8                 ;
CODE_0FEE35:        LDA $ECB9,x               ;
CODE_0FEE38:        STA $10EA                 ;
CODE_0FEE3B:        LDA $ECBB,x               ;
CODE_0FEE3E:        STA $10EC                 ;
CODE_0FEE41:        LDA $ECBD,x               ;
CODE_0FEE44:        STA $10EE                 ;
CODE_0FEE47:        LDA $ECBF,x               ;
CODE_0FEE4A:        STA $10F0                 ;
CODE_0FEE4D:        SEP #$20                  ;
CODE_0FEE4F:        JMP CODE_0FEDB7           ;

DATA_0FEE52:        db $BF,$7F,$38,$7F,$B4,$76,$30,$72
                    db $BF,$7F,$38,$7F,$B4,$76,$30,$72
                    db $38,$7F,$B4,$76,$30,$72,$BF,$7F
                    db $38,$7F,$B4,$76,$30,$72,$BF,$7F
                    db $B4,$76,$30,$72,$BF,$7F,$38,$7F
                    db $B4,$76,$30,$72,$BF,$7F,$38,$7F
                    db $C9,$69,$87,$61,$45,$59,$03,$51
                    db $C9,$69,$C9,$69,$C9,$69,$46,$59
                    db $30,$72,$BF,$7F,$38,$7F,$B4,$76
                    db $30,$72,$BF,$7F,$38,$7F,$B4,$76
                    db $63,$0C,$E5,$1C,$27,$29,$06,$25
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21
                    db $63,$0C,$29,$19,$2C,$21,$2B,$1D
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21
                    db $63,$0C,$E5,$1C,$27,$29,$06,$25
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21
                    db $63,$0C,$29,$19,$2C,$21,$2B,$1D
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21
                    db $77,$00,$7A,$01,$98,$00,$9B,$01
                    db $B9,$00,$BC,$01,$FB,$00,$FE,$01
                    db $DA,$00,$DD,$01,$B9,$00,$BC,$01
                    db $98,$00,$9B,$01,$77,$00,$7A,$01

CODE_0FEF02:        LDA $0E74                 ;
CODE_0FEF05:        AND #$38                  ;
CODE_0FEF07:        TAX                       ;
CODE_0FEF08:        LSR A                     ;
CODE_0FEF09:        TAY                       ;
CODE_0FEF0A:        REP #$20                  ;
CODE_0FEF0C:        LDA $EEA2,x               ;
CODE_0FEF0F:        STA $10E2                 ;
CODE_0FEF12:        LDA $EEA4,x               ;
CODE_0FEF15:        STA $10E4                 ;
CODE_0FEF18:        LDA $EEA6,x               ;
CODE_0FEF1B:        STA $10E6                 ;
CODE_0FEF1E:        LDA $EEA8,x               ;
CODE_0FEF21:        STA $10E8                 ;
CODE_0FEF24:        LDA $EEE2,y               ;
CODE_0FEF27:        STA $10FC                 ;
CODE_0FEF2A:        LDA $EEE4,y               ;
CODE_0FEF2D:        STA $10FE                 ;
CODE_0FEF30:        SEP #$20                  ;
CODE_0FEF32:        LDA $1C                   ;
CODE_0FEF34:        CMP #$35                  ;
CODE_0FEF36:        BEQ CODE_0FEFAC           ;
CODE_0FEF38:        LDA $0EB7                 ;
CODE_0FEF3B:        BNE CODE_0FEF61           ;
CODE_0FEF3D:        LDA $07B8                 ;
CODE_0FEF40:        AND #$0F                  ;
CODE_0FEF42:        BNE CODE_0FEFAC           ;
CODE_0FEF44:        LDA $0F                   ;
CODE_0FEF46:        CMP #$08                  ;
CODE_0FEF48:        BNE CODE_0FEF4F           ;
CODE_0FEF4A:        LDA #$18                  ;
CODE_0FEF4C:        STA $1603                 ;
CODE_0FEF4F:        LDA #$11                  ;
CODE_0FEF51:        STA $0EB8                 ;
CODE_0FEF54:        LDA #$1F                  ;
CODE_0FEF56:        STA $0EB9                 ;
CODE_0FEF59:        STA $0EBA                 ;
CODE_0FEF5C:        INC $0EB7                 ;
CODE_0FEF5F:        BRA CODE_0FEF89           ;

CODE_0FEF61:        DEC $0EB8                 ;
CODE_0FEF64:        DEC $0EB9                 ;
CODE_0FEF67:        DEC $0EB9                 ;
CODE_0FEF6A:        DEC $0EBA                 ;
CODE_0FEF6D:        DEC $0EBA                 ;
CODE_0FEF70:        DEC $0EB8                 ;
CODE_0FEF73:        DEC $0EB9                 ;
CODE_0FEF76:        DEC $0EB9                 ;
CODE_0FEF79:        DEC $0EBA                 ;
CODE_0FEF7C:        DEC $0EBA                 ;
CODE_0FEF7F:        LDA $0EB8                 ;
CODE_0FEF82:        CMP #$03                  ;
CODE_0FEF84:        BNE CODE_0FEF89           ;
CODE_0FEF86:        STZ $0EB7                 ;
CODE_0FEF89:        REP #$20                  ;
CODE_0FEF8B:        LDA $0EB8                 ;
CODE_0FEF8E:        AND #$00FF                ;
CODE_0FEF91:        XBA                       ;
CODE_0FEF92:        ASL A                     ;
CODE_0FEF93:        ASL A                     ;
CODE_0FEF94:        STA $E4                   ;
CODE_0FEF96:        LDA $0EB9                 ;
CODE_0FEF99:        AND #$00FF                ;
CODE_0FEF9C:        XBA                       ;
CODE_0FEF9D:        LSR A                     ;
CODE_0FEF9E:        LSR A                     ;
CODE_0FEF9F:        LSR A                     ;
CODE_0FEFA0:        ORA $E4                   ;
CODE_0FEFA2:        ORA $0EBA                 ;
CODE_0FEFA5:        STA $E4                   ;
CODE_0FEFA7:        STA $10E2                 ;
CODE_0FEFAA:        SEP #$20                  ;
CODE_0FEFAC:        JMP CODE_0FEDB7           ;

CODE_0FEFAF:        STZ $028D                 ;
CODE_0FEFB2:        LDA $09                   ;
CODE_0FEFB4:        AND #$07                  ;
CODE_0FEFB6:        BNE CODE_0FEFF0           ;
CODE_0FEFB8:        LDA $09                   ;
CODE_0FEFBA:        AND #$38                  ;
CODE_0FEFBC:        LSR A                     ;
CODE_0FEFBD:        LSR A                     ;
CODE_0FEFBE:        LSR A                     ;
CODE_0FEFBF:        STA $04                   ;
CODE_0FEFC1:        LDA #$10                  ;
CODE_0FEFC3:        STA $0287                 ;
CODE_0FEFC6:        REP #$20                  ;
CODE_0FEFC8:        LDA #$8000                ;
CODE_0FEFCB:        LDY $04                   ;
CODE_0FEFCD:        DEY                       ;
CODE_0FEFCE:        BMI CODE_0FEFD6           ;
CODE_0FEFD0:        CLC                       ;
CODE_0FEFD1:        ADC #$0800                ;
CODE_0FEFD4:        BRA CODE_0FEFCD           ;

CODE_0FEFD6:        CLC                       ;
CODE_0FEFD7:        ADC #$4000                ;
CODE_0FEFDA:        STA $0285                 ;
CODE_0FEFDD:        LDA #$1C00                ;
CODE_0FEFE0:        STA $028A                 ;
CODE_0FEFE3:        LDA #$0600                ;
CODE_0FEFE6:        STA $0288                 ;
CODE_0FEFE9:        SEP #$20                  ;
CODE_0FEFEB:        INC $028D                 ;
CODE_0FEFEE:        BRA CODE_0FF024           ;

CODE_0FEFF0:        LDA $09                   ;
CODE_0FEFF2:        CLC                       ;
CODE_0FEFF3:        ADC #$04                  ;
CODE_0FEFF5:        STA $0285                 ;
CODE_0FEFF8:        AND #$07                  ;
CODE_0FEFFA:        BNE CODE_0FF024           ;
CODE_0FEFFC:        LDA #$0C                  ;
CODE_0FEFFE:        STA $0287                 ;
CODE_0FF001:        REP #$20                  ;
CODE_0FF003:        LDA $0285                 ;
CODE_0FF006:        AND #$0038                ;
CODE_0FF009:        ASL A                     ;
CODE_0FF00A:        ASL A                     ;
CODE_0FF00B:        ASL A                     ;
CODE_0FF00C:        CLC                       ;
CODE_0FF00D:        ADC #$FB00                ;
CODE_0FF010:        STA $0285                 ;
CODE_0FF013:        LDA #$5160                ;
CODE_0FF016:        STA $028A                 ;
CODE_0FF019:        LDA #$0040                ;
CODE_0FF01C:        STA $0288                 ;
CODE_0FF01F:        SEP #$20                  ;
CODE_0FF021:        INC $028D                 ;
CODE_0FF024:        RTL                       ;

DATA_0FF025:        db $01,$18

CODE_0FF027:        SEP #$30                  ;
CODE_0FF029:        PHB                       ;
CODE_0FF02A:        PHK                       ;
CODE_0FF02B:        PLB                       ;
CODE_0FF02C:        LDA $99                   ;
CODE_0FF02E:        CMP #$01                  ;
CODE_0FF030:        BNE CODE_0FF03D           ;
CODE_0FF032:        STA $02F8                 ;
CODE_0FF035:        LDX $0753                 ;
CODE_0FF038:        LDA $F025,x               ;
CODE_0FF03B:        STA $99                   ;
CODE_0FF03D:        JSR CODE_0FF1AF           ;
CODE_0FF040:        LDA $99                   ;
CODE_0FF042:        ASL A                     ;
CODE_0FF043:        TAX                       ;
CODE_0FF044:        LDA $F051,x               ;
CODE_0FF047:        STA $00                   ;
CODE_0FF049:        LDA $F052,x               ;
CODE_0FF04C:        STA $01                   ;
CODE_0FF04E:        JMP ($0000)               ;

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

CODE_0FF091:        LDA $075F                 ;
CODE_0FF094:        CMP #$08                  ;
CODE_0FF096:        BNE CODE_0FF0A0           ;
CODE_0FF098:        LDA #$11                  ;
CODE_0FF09A:        STA $0099                 ;
CODE_0FF09D:        JSR CODE_0FF1AF           ;
CODE_0FF0A0:        STZ $99                   ;
CODE_0FF0A2:        PLB                       ;
CODE_0FF0A3:        STZ $028D                 ;
CODE_0FF0A6:        LDA #$01                  ;
CODE_0FF0A8:        STA $028C                 ;
CODE_0FF0AB:        RTL                       ;

CODE_0FF0AC:        LDA $DB                   ;
CODE_0FF0AE:        CMP #$13                  ;
CODE_0FF0B0:        BEQ CODE_0FF0CD           ;
CODE_0FF0B2:        CMP #$19                  ;
CODE_0FF0B4:        BEQ CODE_0FF0CD           ;
CODE_0FF0B6:        CMP #$2F                  ;
CODE_0FF0B8:        BEQ CODE_0FF0CD           ;
CODE_0FF0BA:        LDA #$17                  ;
CODE_0FF0BC:        JSR CODE_0FF1AF           ;
CODE_0FF0BF:        BRA CODE_0FF0A0           ;

CODE_0FF0C1:        LDA #$11                  ;
CODE_0FF0C3:        JSR CODE_0FF1AF           ;
CODE_0FF0C6:        BRA CODE_0FF0A0           ;

CODE_0FF0C8:        LDA #$16                  ;
CODE_0FF0CA:        JSR CODE_0FF1AF           ;
CODE_0FF0CD:        LDA #$12                  ;
CODE_0FF0CF:        JSR CODE_0FF1AF           ;
CODE_0FF0D2:        BRA CODE_0FF0A0           ;

CODE_0FF0D4:        LDA #$13                  ;
CODE_0FF0D6:        JSR CODE_0FF1AF           ;
CODE_0FF0D9:        LDA #$14                  ;
CODE_0FF0DB:        JSR CODE_0FF1AF           ;
CODE_0FF0DE:        BRA CODE_0FF0A0           ;

CODE_0FF0E0:        LDA #$15                  ;
CODE_0FF0E2:        JSR CODE_0FF1AF           ;
CODE_0FF0E5:        BRA CODE_0FF0A0           ;

DATA_0FF0E7:        db $00,$00,$08,$00,$10,$00,$09,$00
                    db $09,$00,$08,$00,$09,$00,$10,$00
                    db $08,$00,$10,$00,$08,$00,$09,$00
                    db $08,$00,$08,$00,$08,$00,$09,$00
                    db $08,$00,$09,$00,$08,$00,$09,$00
                    db $09,$00,$09,$00,$09,$00,$09,$00
                    db $08,$00,$00,$00,$00,$E0,$00,$A0
                    db $00,$80,$00,$A0,$00,$98,$00,$A0
                    db $00,$A0,$00,$80,$00,$A0,$00,$D0
                    db $00,$E0,$00,$A0,$00,$90,$00,$B0
                    db $00,$90,$00,$B8,$00,$D0,$00,$C0
                    db $00,$E8,$00,$F0,$00,$F8,$00,$E0
                    db $00,$C0,$00,$F0,$00,$00,$00,$20
                    db $00,$20,$00,$20,$00,$20,$00,$2C
                    db $00,$20,$00,$20,$00,$20,$00,$20
                    db $00,$34,$00,$2C,$00,$28,$00,$2C
                    db $00,$2C,$00,$20,$00,$2C,$00,$30
                    db $00,$30,$00,$20,$00,$28,$00,$2C
                    db $00,$2C,$00,$30,$00,$20,$00,$10
                    db $00,$10,$00,$20,$00,$10,$00,$20
                    db $00,$08,$00,$20,$00,$10,$00,$10
                    db $00,$20,$00,$20,$00,$08,$00,$10
                    db $00,$08,$00,$08,$00,$10,$00,$10
                    db $00,$10,$00,$10,$00,$08,$00,$08
                    db $00,$08,$00,$08,$00,$10,$00,$10

CODE_0FF1AF:        ASL A                     ;
CODE_0FF1B0:        TAX                       ;
CODE_0FF1B1:        LDA $F0E7,x               ;
CODE_0FF1B4:        STA $0287                 ;
CODE_0FF1B7:        REP #$20                  ;
CODE_0FF1B9:        LDA $F119,x               ;
CODE_0FF1BC:        STA $0285                 ;
CODE_0FF1BF:        LDA $F14B,x               ;
CODE_0FF1C2:        STA $028A                 ;
CODE_0FF1C5:        LDA $F17D,x               ;
CODE_0FF1C8:        STA $0288                 ;
CODE_0FF1CB:        SEP #$20                  ;
CODE_0FF1CD:        JSR CODE_0FF1D1           ;
CODE_0FF1D0:        RTS                       ;

CODE_0FF1D1:        LDA #$80                  ;
CODE_0FF1D3:        STA $2115                 ;
CODE_0FF1D6:        REP #$20                  ;
CODE_0FF1D8:        LDA $028A                 ;
CODE_0FF1DB:        STA $2116                 ;
CODE_0FF1DE:        LDA #$1801                ;
CODE_0FF1E1:        STA $4300                 ;
CODE_0FF1E4:        LDA $0285                 ;
CODE_0FF1E7:        STA $4302                 ;
CODE_0FF1EA:        LDX $0287                 ;
CODE_0FF1ED:        STX $4304                 ;
CODE_0FF1F0:        LDA $0288                 ;
CODE_0FF1F3:        STA $4305                 ;
CODE_0FF1F6:        LDX #$01                  ;
CODE_0FF1F8:        STX $420B                 ;
CODE_0FF1FB:        SEP #$20                  ;
CODE_0FF1FD:        RTS                       ;

CODE_0FF1FE:        LDA $0F04                 ;
CODE_0FF201:        BEQ CODE_0FF232           ;
CODE_0FF203:        LDA $5C                   ;
CODE_0FF205:        CMP #$01                  ;
CODE_0FF207:        BNE CODE_0FF232           ;
CODE_0FF209:        LDY #$01                  ;
CODE_0FF20B:        LDA $0009                 ;
CODE_0FF20E:        ASL A                     ;
CODE_0FF20F:        BCS CODE_0FF213           ;
CODE_0FF211:        LDY #$03                  ;
CODE_0FF213:        STY $0000                 ;
CODE_0FF216:        LDA $0009                 ;
CODE_0FF219:        AND $0000                 ;
CODE_0FF21C:        BNE CODE_0FF232           ;
CODE_0FF21E:        LDA $0219                 ;
CODE_0FF221:        CLC                       ;
CODE_0FF222:        ADC #$01                  ;
CODE_0FF224:        STA $0219                 ;
CODE_0FF227:        LDA $0078                 ;
CODE_0FF22A:        ADC #$00                  ;
CODE_0FF22C:        STA $0078                 ;
CODE_0FF22F:        INC $06FF                 ;
CODE_0FF232:        RTL                       ;

DATA_0FF233:        db $30,$70,$B8,$50,$98,$30,$70,$B8
                    db $50,$98,$30,$70,$30,$30,$30,$60
                    db $60,$A0,$A0,$A0,$D0,$D0,$D0,$60
                    db $91,$91,$91,$91,$92,$92,$91,$91
                    db $91,$92,$91,$92

CODE_0FF257:        PHB                       ;
CODE_0FF258:        PHK                       ;
CODE_0FF259:        PLB                       ;
CODE_0FF25A:        LDA $0E67                 ;
CODE_0FF25D:        BNE CODE_0FF2A2           ;
CODE_0FF25F:        LDA $0F04                 ;
CODE_0FF262:        BEQ CODE_0FF2A2           ;
CODE_0FF264:        JSR CODE_0FF2BC           ;
CODE_0FF267:        LDX #$00                  ;
CODE_0FF269:        LDY #$00                  ;
CODE_0FF26B:        LDA $0901,y               ;
CODE_0FF26E:        CMP #$F0                  ;
CODE_0FF270:        BEQ CODE_0FF27D           ;
CODE_0FF272:        INY                       ;
CODE_0FF273:        INY                       ;
CODE_0FF274:        INY                       ;
CODE_0FF275:        INY                       ;
CODE_0FF276:        TYA                       ;
CODE_0FF277:        AND #$FF                  ;
CODE_0FF279:        BEQ CODE_0FF2A2           ;
CODE_0FF27B:        BRA CODE_0FF26B           ;

CODE_0FF27D:        LDA $0F18,x               ;
CODE_0FF280:        STA $0901,y               ;
CODE_0FF283:        LDA $F24B,x               ;
CODE_0FF286:        STA $0902,y               ;
CODE_0FF289:        LDA #$2A                  ;
CODE_0FF28B:        STA $0903,y               ;
CODE_0FF28E:        LDA $0F0C,x               ;
CODE_0FF291:        STA $0900,y               ;
CODE_0FF294:        LDA #$00                  ;
CODE_0FF296:        STA $0D00,y               ;
CODE_0FF299:        INY                       ;
CODE_0FF29A:        INY                       ;
CODE_0FF29B:        INY                       ;
CODE_0FF29C:        INY                       ;
CODE_0FF29D:        INX                       ;
CODE_0FF29E:        CPX #$0C                  ;
CODE_0FF2A0:        BNE CODE_0FF26B           ;
CODE_0FF2A2:        PLB                       ;
CODE_0FF2A3:        RTL                       ;

DATA_0FF2A4:        db $57,$57,$56,$56,$58,$58,$56,$56
                    db $57,$58,$57,$58,$59,$59,$58,$58
                    db $5A,$5A,$58,$58,$59,$5A,$59,$5A

CODE_0FF2BC:        LDX #$0B                  ;
CODE_0FF2BE:        LDA $0F0C,x               ;
CODE_0FF2C1:        CLC                       ;
CODE_0FF2C2:        ADC $F2A4,x               ;
CODE_0FF2C5:        ADC $F2A4,x               ;
CODE_0FF2C8:        STA $0F0C,x               ;
CODE_0FF2CB:        LDA $0F18,x               ;
CODE_0FF2CE:        CLC                       ;
CODE_0FF2CF:        ADC $F2A4,x               ;
CODE_0FF2D2:        STA $0F18,x               ;
CODE_0FF2D5:        DEX                       ;
CODE_0FF2D6:        BPL CODE_0FF2BE           ;
CODE_0FF2D8:        RTS                       ;

CODE_0FF2D9:        PHB                       ;
CODE_0FF2DA:        PHK                       ;
CODE_0FF2DB:        PLB                       ;
CODE_0FF2DC:        PHX                       ;
CODE_0FF2DD:        LDX #$0B                  ;
CODE_0FF2DF:        LDA $F23F,x               ;
CODE_0FF2E2:        STA $0F0C,x               ;
CODE_0FF2E5:        LDA $F233,x               ;
CODE_0FF2E8:        STA $0F18,x               ;
CODE_0FF2EB:        DEX                       ;
CODE_0FF2EC:        BPL CODE_0FF2DF           ;
CODE_0FF2EE:        PLX                       ;
CODE_0FF2EF:        PLB                       ;
CODE_0FF2F0:        LDA #$10                  ;
CODE_0FF2F2:        STA $0F4B                 ;
CODE_0FF2F5:        TSB $1601                 ;
CODE_0FF2F8:        LDA #$01                  ;
CODE_0FF2FA:        BNE CODE_0FF306           ;
CODE_0FF2FC:        STZ $0F4B                 ;
CODE_0FF2FF:        LDA #$20                  ;
CODE_0FF301:        TSB $1601                 ;
CODE_0FF304:        LDA #$00                  ;
CODE_0FF306:        STA $0F04                 ;
CODE_0FF309:        RTL                       ;

DATA_0FF30A:        db $0C,$00,$02,$4C,$80,$05,$2E,$12
                    db $24,$10,$24,$10,$FF

CODE_0FF317:        PHB                       ;
CODE_0FF318:        PHK                       ;
CODE_0FF319:        PLB                       ;
CODE_0FF31A:        LDY #$0C                  ;
CODE_0FF31C:        LDA $F30A,y               ;
CODE_0FF31F:        STA $1700,y               ;
CODE_0FF322:        DEY                       ;
CODE_0FF323:        BPL CODE_0FF31C           ;
CODE_0FF325:        LDA $077A                 ;
CODE_0FF328:        BEQ CODE_0FF33E           ;
CODE_0FF32A:        LDA #$24                  ;
CODE_0FF32C:        STA $1706                 ;
CODE_0FF32F:        LDA #$10                  ;
CODE_0FF331:        STA $1707                 ;
CODE_0FF334:        LDA #$2E                  ;
CODE_0FF336:        STA $170A                 ;
CODE_0FF339:        LDA #$12                  ;
CODE_0FF33B:        STA $170B                 ;
CODE_0FF33E:        PLB                       ;
CODE_0FF33F:        RTL                       ;

DATA_0FF340:        db $02,$4E,$4E,$4E,$4E,$02,$02,$02
                    db $4E,$4E,$4E,$4E,$4F,$99,$84,$85
                    db $86,$D0,$F1,$1A,$64,$83,$AE,$DB
                    db $00,$2F,$2F,$3C,$0A,$3C,$BB,$74
                    db $AB,$3F,$17,$F6,$F6,$F6,$F6,$17
                    db $1A,$1A,$F6,$F6,$F6,$F6,$F6,$F6
                    db $F3,$F3,$F3,$F3,$F3,$F4,$F4,$F4
                    db $F4,$F4,$F5,$F5,$F5,$F5,$F3,$F5
                    db $F5,$F6,$F3,$F4,$FF,$FF,$04,$E8
                    db $00,$1F,$1D,$08,$11,$08,$0A,$08
                    db $17,$08,$14,$08,$24,$08,$22,$08
                    db $18,$08,$1E,$08,$24,$08,$16,$08
                    db $0A,$08,$1B,$08,$12,$08,$18,$08
                    db $2B,$08,$FF,$04,$E8,$00,$1F,$1D
                    db $08,$11,$08,$0A,$08,$17,$08,$14
                    db $08,$24,$08,$22,$08,$18,$08,$1E
                    db $08,$24,$08,$15,$08,$1E,$08,$12
                    db $08,$10,$08,$12,$08,$2B,$08,$FF
                    db $05,$09,$00,$1B,$19,$08,$0E,$08
                    db $0A,$08,$0C,$08,$0E,$08,$24,$08
                    db $12,$08,$1C,$08,$24,$08,$19,$08
                    db $0A,$08,$1F,$08,$0E,$08,$0D,$08
                    db $FF,$05,$47,$00,$23,$20,$08,$12
                    db $08,$1D,$08,$11,$08,$24,$08,$14
                    db $08,$12,$08,$17,$08,$10,$08,$0D
                    db $08,$18,$08,$16,$08,$24,$08,$1C
                    db $08,$0A,$08,$1F,$08,$0E,$08,$0D
                    db $08,$FF,$05,$89,$00,$1F,$11,$08
                    db $1E,$08,$1B,$08,$1B,$08,$0A,$08
                    db $11,$08,$24,$08,$1D,$08,$18,$08
                    db $24,$08,$24,$08,$16,$08,$0A,$08
                    db $1B,$08,$12,$08,$18,$08,$FF,$05
                    db $89,$00,$1F,$11,$08,$1E,$08,$1B
                    db $08,$1B,$08,$0A,$08,$11,$08,$24
                    db $08,$1D,$08,$18,$08,$24,$08,$24
                    db $08,$15,$08,$1E,$08,$12,$08,$10
                    db $08,$12,$08,$FF,$05,$CA,$00,$19
                    db $18,$08,$1E,$08,$1B,$08,$24,$08
                    db $18,$08,$17,$08,$15,$08,$22,$08
                    db $24,$08,$11,$08,$0E,$08,$1B,$08
                    db $18,$08,$FF,$06,$07,$00,$25,$1D
                    db $08,$11,$08,$12,$08,$1C,$08,$24
                    db $08,$0E,$08,$17,$08,$0D,$08,$1C
                    db $08,$24,$08,$22,$08,$18,$08,$1E
                    db $08,$1B,$08,$24,$08,$1D,$08,$1B
                    db $08,$12,$08,$19,$08,$FF,$06,$46
                    db $00,$27,$18,$08,$0F,$08,$24,$08
                    db $0A,$08,$24,$08,$15,$08,$18,$08
                    db $17,$08,$10,$08,$24,$08,$0F,$08
                    db $1B,$08,$12,$08,$0E,$08,$17,$08
                    db $0D,$08,$1C,$08,$11,$08,$12,$08
                    db $19,$08,$FF,$06,$88,$00,$1F,$01
                    db $04,$00,$04,$00,$04,$00,$04,$00
                    db $04,$00,$04,$24,$04,$19,$04,$1D
                    db $04,$1C,$04,$AF,$04,$0A,$04,$0D
                    db $04,$0D,$04,$0E,$04,$0D,$04,$FF
                    db $06,$A6,$00,$29,$0F,$04,$18,$04
                    db $1B,$04,$24,$04,$0E,$04,$0A,$04
                    db $0C,$04,$11,$04,$24,$04,$19,$04
                    db $15,$04,$0A,$04,$22,$04,$0E,$04
                    db $1B,$04,$24,$04,$15,$04,$0E,$04
                    db $0F,$04,$1D,$04,$AF,$04,$FF,$3F
                    db $00,$00,$07,$0F,$08,$30,$08,$30
                    db $08,$0F,$08,$FF,$06,$24,$00,$2F
                    db $20,$08,$0E,$08,$24,$08,$19,$08
                    db $1B,$08,$0E,$08,$1C,$08,$0E,$08
                    db $17,$08,$1D,$08,$24,$08,$0F,$08
                    db $0A,$08,$17,$08,$1D,$08,$0A,$08
                    db $1C,$08,$22,$08,$24,$08,$20,$08
                    db $18,$08,$1B,$08,$15,$08,$0D,$08
                    db $06,$66,$00,$25,$15,$08,$0E,$08
                    db $1D,$08,$F2,$08,$1C,$08,$24,$08
                    db $1D,$08,$1B,$08,$22,$08,$24,$08
                    db $76,$08,$09,$08,$24,$08,$20,$08
                    db $18,$08,$1B,$08,$15,$08,$0D,$08
                    db $75,$08,$06,$A9,$00,$1B,$20,$08
                    db $12,$08,$1D,$08,$11,$08,$24,$08
                    db $18,$08,$17,$08,$0E,$08,$24,$08
                    db $10,$08,$0A,$08,$16,$08,$0E,$08
                    db $AF,$08,$FF,$06,$25,$00,$2B,$22
                    db $08,$18,$08,$1E,$08,$F2,$08,$1B
                    db $08,$0E,$08,$24,$08,$0A,$08,$24
                    db $08,$1C,$08,$1E,$08,$19,$08,$0E
                    db $08,$1B,$08,$24,$08,$19,$08,$15
                    db $08,$0A,$08,$22,$08,$0E,$08,$1B
                    db $08,$2B,$08,$06,$69,$00,$19,$20
                    db $08,$0E,$08,$24,$08,$11,$08,$18
                    db $08,$19,$08,$0E,$08,$24,$08,$20
                    db $08,$0E,$08,$F2,$08,$15,$08,$15
                    db $08,$06,$A9,$00,$1B,$1C,$08,$0E
                    db $08,$0E,$08,$24,$08,$22,$08,$18
                    db $08,$1E,$08,$24,$08,$0A,$08,$10
                    db $08,$0A,$08,$12,$08,$87,$10,$AF
                    db $08,$06,$E8,$00,$1F,$16,$08,$0A
                    db $08,$1B,$08,$12,$08,$18,$08,$24
                    db $08,$0A,$08,$17,$08,$0D,$08,$24
                    db $08,$1C,$08,$1D,$08,$0A,$08,$0F
                    db $08,$0F,$08,$AF,$08,$FF,$FF,$05
                    db $48,$00,$1F,$1D,$08,$11,$08,$0A
                    db $08,$17,$08,$14,$08,$24,$00,$22
                    db $08,$18,$08,$1E,$08,$24,$00,$16
                    db $08,$0A,$08,$1B,$08,$12,$08,$18
                    db $08,$2B,$08,$FF,$05,$48,$00,$1F
                    db $1D,$08,$11,$08,$0A,$08,$17,$08
                    db $14,$08,$24,$00,$22,$08,$18,$08
                    db $1E,$08,$24,$00,$15,$08,$1E,$08
                    db $12,$08,$10,$08,$12,$08,$2B,$08
                    db $FF,$05,$C5,$00,$2B,$0B,$08,$1E
                    db $08,$1D,$08,$24,$00,$18,$08,$1E
                    db $08,$1B,$08,$24,$00,$19,$08,$1B
                    db $08,$12,$08,$17,$08,$0C,$08,$0E
                    db $08,$1C,$08,$1C,$08,$24,$00,$12
                    db $08,$1C,$08,$24,$00,$12,$08,$17
                    db $08,$06,$05,$00,$1D,$0A,$08,$17
                    db $08,$18,$08,$1D,$08,$11,$08,$0E
                    db $08,$1B,$08,$24,$00,$0C,$08,$0A
                    db $08,$1C,$08,$1D,$08,$15,$08,$0E
                    db $08,$2B,$08,$FF,$01,$81,$01,$81
                    db $01,$81,$02,$01,$81,$00,$81,$00
                    db $80,$01,$81,$01,$00,$B0,$10,$10
                    db $10,$28,$10,$28,$06,$10,$10,$0C
                    db $80,$10,$28,$08,$90,$FF,$00

CODE_0FF70F:        PHB                       ;
CODE_0FF710:        PHK                       ;
CODE_0FF711:        PLB                       ;
CODE_0FF712:        LDX $0717                 ;
CODE_0FF715:        LDA $0718                 ;
CODE_0FF718:        BNE CODE_0FF727           ;
CODE_0FF71A:        INX                       ;
CODE_0FF71B:        INC $0717                 ;
CODE_0FF71E:        SEC                       ;
CODE_0FF71F:        LDA $F6FC,x               ;
CODE_0FF722:        STA $0718                 ;
CODE_0FF725:        BEQ CODE_0FF731           ;
CODE_0FF727:        LDA $F6EB,x               ;
CODE_0FF72A:        STA $0FF4                 ;
CODE_0FF72D:        DEC $0718                 ;
CODE_0FF730:        CLC                       ;
CODE_0FF731:        PLB                       ;
CODE_0FF732:        RTL                       ;

CODE_0FF733:        LDX #$07                  ;
CODE_0FF735:        LDA #$00                  ;
CODE_0FF737:        STA $06                   ;
CODE_0FF739:        STX $07                   ;
CODE_0FF73B:        CPX #$01                  ;
CODE_0FF73D:        BNE CODE_0FF743           ;
CODE_0FF73F:        CPY #$50                  ;
CODE_0FF741:        BCS CODE_0FF745           ;
CODE_0FF743:        STA ($06),y               ;
CODE_0FF745:        DEY                       ;
CODE_0FF746:        CPY #$FF                  ;
CODE_0FF748:        BNE CODE_0FF73B           ;
CODE_0FF74A:        DEX                       ;
CODE_0FF74B:        BPL CODE_0FF739           ;
CODE_0FF74D:        LDA #$FF                  ;
CODE_0FF74F:        STA $1702                 ;
CODE_0FF752:        INC A                     ;
CODE_0FF753:        STZ $0B25                 ;
CODE_0FF756:        STZ $0B26                 ;
CODE_0FF759:        STZ $0B27                 ;
CODE_0FF75C:        STZ $0B28                 ;
CODE_0FF75F:        STZ $0B29                 ;
CODE_0FF762:        LDX #$40                  ;
CODE_0FF764:        STZ $0F00,x               ;
CODE_0FF767:        INX                       ;
CODE_0FF768:        BNE CODE_0FF764           ;
CODE_0FF76A:        LDA $0F0B                 ;
CODE_0FF76D:        BEQ CODE_0FF779           ;
CODE_0FF76F:        DEC A                     ;
CODE_0FF770:        STA $0F0B                 ;
CODE_0FF773:        BNE CODE_0FF779           ;
CODE_0FF775:        JSL CODE_0FD085           ;
CODE_0FF779:        RTL                       ;

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

CODE_0FF913:        LDA $0B46,x               ;
CODE_0FF916:        TAY                       ;
CODE_0FF917:        LDA $03AE                 ;
CODE_0FF91A:        STA $0900,y               ;
CODE_0FF91D:        LDA $BC,x                 ;
CODE_0FF91F:        CMP #$02                  ;
CODE_0FF921:        BCS CODE_0FF92A           ;
CODE_0FF923:        LDA $03B9                 ;
CODE_0FF926:        CMP #$E8                  ;
CODE_0FF928:        BCC CODE_0FF92C           ;
CODE_0FF92A:        LDA #$F0                  ;
CODE_0FF92C:        STA $0901,y               ;
CODE_0FF92F:        LDA $A1,x                 ;
CODE_0FF931:        BMI CODE_0FF937           ;
CODE_0FF933:        LDA #$A9                  ;
CODE_0FF935:        BRA CODE_0FF939           ;

CODE_0FF937:        LDA #$29                  ;
CODE_0FF939:        STA $0903,y               ;
CODE_0FF93C:        LDA $0E68                 ;
CODE_0FF93F:        AND #$18                  ;
CODE_0FF941:        LSR A                     ;
CODE_0FF942:        LSR A                     ;
CODE_0FF943:        CLC                       ;
CODE_0FF944:        ADC #$62                  ;
CODE_0FF946:        STA $0902,y               ;
CODE_0FF949:        LDA $021A,x               ;
CODE_0FF94C:        STA $E4                   ;
CODE_0FF94E:        LDA $79,x                 ;
CODE_0FF950:        STA $E5                   ;
CODE_0FF952:        REP #$20                  ;
CODE_0FF954:        LDA $E4                   ;
CODE_0FF956:        SEC                       ;
CODE_0FF957:        SBC $42                   ;
CODE_0FF959:        STA $E6                   ;
CODE_0FF95B:        SEP #$20                  ;
CODE_0FF95D:        LDA #$02                  ;
CODE_0FF95F:        STA $0D00,y               ;
CODE_0FF962:        LDA $E7                   ;
CODE_0FF964:        BEQ CODE_0FF96B           ;
CODE_0FF966:        LDA #$03                  ;
CODE_0FF968:        STA $0D00,y               ;
CODE_0FF96B:        RTL                       ;

CODE_0FF96C:        PHB                       ;
CODE_0FF96D:        PHK                       ;
CODE_0FF96E:        PLB                       ;
CODE_0FF96F:        STZ $0F49                 ;
CODE_0FF972:        PHX                       ;
CODE_0FF973:        LDX $9E                   ;
CODE_0FF975:        LDA $1C,x                 ;
CODE_0FF977:        CMP #$04                  ;
CODE_0FF979:        BCS CODE_0FF983           ;
CODE_0FF97B:        LDA $29,x                 ;
CODE_0FF97D:        BMI CODE_0FF987           ;
CODE_0FF97F:        AND #$06                  ;
CODE_0FF981:        BEQ CODE_0FF987           ;
CODE_0FF983:        PLX                       ;
CODE_0FF984:        PLB                       ;
CODE_0FF985:        CLC                       ;
CODE_0FF986:        RTL                       ;

CODE_0FF987:        LDA $0029,x               ;
CODE_0FF98A:        STA $E0                   ;
CODE_0FF98C:        CMP #$02                  ;
CODE_0FF98E:        BEQ CODE_0FF998           ;
CODE_0FF990:        CMP #$03                  ;
CODE_0FF992:        BEQ CODE_0FF998           ;
CODE_0FF994:        CMP #$04                  ;
CODE_0FF996:        BNE CODE_0FF99D           ;
CODE_0FF998:        STZ $0F40,x               ;
CODE_0FF99B:        BRA CODE_0FF9AA           ;

CODE_0FF99D:        AND #$80                  ;
CODE_0FF99F:        BEQ CODE_0FF983           ;
CODE_0FF9A1:        LDA $0F                   ;
CODE_0FF9A3:        CMP #$0A                  ;
CODE_0FF9A5:        BCS CODE_0FF9AA           ;
CODE_0FF9A7:        INC $0F40,x               ;
CODE_0FF9AA:        LDA $0F40,x               ;
CODE_0FF9AD:        AND #$0C                  ;
CODE_0FF9AF:        STA $E4                   ;
CODE_0FF9B1:        LDA $1C,x                 ;
CODE_0FF9B3:        LDX $E4                   ;
CODE_0FF9B5:        CMP #$02                  ;
CODE_0FF9B7:        BNE CODE_0FF9BE           ;
CODE_0FF9B9:        TXA                       ;
CODE_0FF9BA:        CLC                       ;
CODE_0FF9BB:        ADC #$10                  ;
CODE_0FF9BD:        TAX                       ;
CODE_0FF9BE:        LDA $E0                   ;
CODE_0FF9C0:        AND #$0F                  ;
CODE_0FF9C2:        CMP #$04                  ;
CODE_0FF9C4:        BNE CODE_0FF9CF           ;
CODE_0FF9C6:        TXA                       ;
CODE_0FF9C7:        CLC                       ;
CODE_0FF9C8:        ADC #$20                  ;
CODE_0FF9CA:        TAX                       ;
CODE_0FF9CB:        LDA #$80                  ;
CODE_0FF9CD:        TSB $04                   ;
CODE_0FF9CF:        TYA                       ;
CODE_0FF9D0:        CLC                       ;
CODE_0FF9D1:        ADC #$08                  ;
CODE_0FF9D3:        TAY                       ;
CODE_0FF9D4:        LDA $03B9                 ;
CODE_0FF9D7:        CLC                       ;
CODE_0FF9D8:        ADC #$08                  ;
CODE_0FF9DA:        CMP #$F0                  ;
CODE_0FF9DC:        BCC CODE_0FF9E0           ;
CODE_0FF9DE:        LDA #$F0                  ;
CODE_0FF9E0:        PHA                       ;
CODE_0FF9E1:        LDA $04                   ;
CODE_0FF9E3:        BPL CODE_0FF9EB           ;
CODE_0FF9E5:        PLA                       ;
CODE_0FF9E6:        CLC                       ;
CODE_0FF9E7:        ADC #$02                  ;
CODE_0FF9E9:        BRA CODE_0FF9EC           ;

CODE_0FF9EB:        PLA                       ;
CODE_0FF9EC:        JSR CODE_0FFAB0           ;
CODE_0FF9EF:        LDA $04                   ;
CODE_0FF9F1:        BPL CODE_0FF9FB           ;
CODE_0FF9F3:        LDA $03B9                 ;
CODE_0FF9F6:        CLC                       ;
CODE_0FF9F7:        ADC #$12                  ;
CODE_0FF9F9:        BRA CODE_0FFA01           ;

CODE_0FF9FB:        LDA $03B9                 ;
CODE_0FF9FE:        CLC                       ;
CODE_0FF9FF:        ADC #$10                  ;
CODE_0FFA01:        JSR CODE_0FFAB0           ;
CODE_0FFA04:        LDX $E4                   ;
CODE_0FFA06:        LDA $FB19,x               ;
CODE_0FFA09:        ORA $04                   ;
CODE_0FFA0B:        STA $08F3,y               ;
CODE_0FFA0E:        LDA $FB1A,x               ;
CODE_0FFA11:        ORA $04                   ;
CODE_0FFA13:        STA $08F7,y               ;
CODE_0FFA16:        LDA $FB1B,x               ;
CODE_0FFA19:        ORA $04                   ;
CODE_0FFA1B:        STA $08FB,y               ;
CODE_0FFA1E:        LDA $FB1C,x               ;
CODE_0FFA21:        ORA $04                   ;
CODE_0FFA23:        STA $08FF,y               ;
CODE_0FFA26:        INC $0F49                 ;
CODE_0FFA29:        PLX                       ;
CODE_0FFA2A:        PLB                       ;
CODE_0FFA2B:        SEC                       ;
CODE_0FFA2C:        RTL                       ;

DATA_0FFA2D:        db $00,$FC,$F9,$F7,$F5,$F4,$F3,$F2
                    db $F2,$F2,$F3,$F4,$F5,$F7,$F9,$FC
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00

CODE_0FFA4D:        PHB                       ;
CODE_0FFA4E:        PHK                       ;
CODE_0FFA4F:        PLB                       ;
CODE_0FFA50:        PHX                       ;
CODE_0FFA51:        LDX $9E                   ;
CODE_0FFA53:        LDA $1C,x                 ;
CODE_0FFA55:        CMP #$35                  ;
CODE_0FFA57:        BNE CODE_0FFA9F           ;
CODE_0FFA59:        LDA $0EC4                 ;
CODE_0FFA5C:        BNE CODE_0FFA9F           ;
CODE_0FFA5E:        LDA $0F4A                 ;
CODE_0FFA61:        AND #$1F                  ;
CODE_0FFA63:        LDY $0B46,x               ;
CODE_0FFA66:        PHY                       ;
CODE_0FFA67:        TAX                       ;
CODE_0FFA68:        LDA $FA2D,x               ;
CODE_0FFA6B:        STA $DD                   ;
CODE_0FFA6D:        JSR CODE_0FFAA2           ;
CODE_0FFA70:        JSR CODE_0FFAA2           ;
CODE_0FFA73:        JSR CODE_0FFAA2           ;
CODE_0FFA76:        JSR CODE_0FFAA2           ;
CODE_0FFA79:        JSR CODE_0FFAA2           ;
CODE_0FFA7C:        JSR CODE_0FFAA2           ;
CODE_0FFA7F:        PLY                       ;
CODE_0FFA80:        CPX #$10                  ;
CODE_0FFA82:        BCS CODE_0FFA9C           ;
CODE_0FFA84:        LDA #$FF                  ;
CODE_0FFA86:        STA $0902,y               ;
CODE_0FFA89:        STA $0906,y               ;
CODE_0FFA8C:        LDA #$D7                  ;
CODE_0FFA8E:        STA $090A,y               ;
CODE_0FFA91:        STA $090E,y               ;
CODE_0FFA94:        LDA #$EE                  ;
CODE_0FFA96:        STA $0912,y               ;
CODE_0FFA99:        STA $0916,y               ;
CODE_0FFA9C:        INC $0F4A                 ;
CODE_0FFA9F:        PLX                       ;
CODE_0FFAA0:        PLB                       ;
CODE_0FFAA1:        RTL                       ;

CODE_0FFAA2:        LDA $0901,y               ;
CODE_0FFAA5:        CLC                       ;
CODE_0FFAA6:        ADC $DD                   ;
CODE_0FFAA8:        STA $0901,y               ;
CODE_0FFAAB:        INY                       ;
CODE_0FFAAC:        INY                       ;
CODE_0FFAAD:        INY                       ;
CODE_0FFAAE:        INY                       ;
CODE_0FFAAF:        RTS                       ;

CODE_0FFAB0:        STA $0901,y               ;
CODE_0FFAB3:        STA $0905,y               ;
CODE_0FFAB6:        LDA $03AE                 ;
CODE_0FFAB9:        STA $0900,y               ;
CODE_0FFABC:        CLC                       ;
CODE_0FFABD:        ADC #$08                  ;
CODE_0FFABF:        STA $0904,y               ;
CODE_0FFAC2:        LDA $FAD9,x               ;
CODE_0FFAC5:        STA $0902,y               ;
CODE_0FFAC8:        LDA $FADA,x               ;
CODE_0FFACB:        STA $0906,y               ;
CODE_0FFACE:        INY                       ;
CODE_0FFACF:        INY                       ;
CODE_0FFAD0:        INY                       ;
CODE_0FFAD1:        INY                       ;
CODE_0FFAD2:        INY                       ;
CODE_0FFAD3:        INY                       ;
CODE_0FFAD4:        INY                       ;
CODE_0FFAD5:        INY                       ;
CODE_0FFAD6:        INX                       ;
CODE_0FFAD7:        INX                       ;
CODE_0FFAD8:        RTS                       ;

DATA_0FFAD9:        db $6E,$6E,$6F,$6F,$C2,$C4,$C3,$C5
                    db $C0,$C0,$C1,$C1,$C4,$C2,$C5,$C3
                    db $F5,$F5,$F4,$F4,$80,$82,$81,$83
                    db $68,$68,$90,$90,$82,$80,$83,$81
                    db $6F,$6F,$6E,$6E,$C3,$C5,$C2,$C4
                    db $C1,$C1,$C0,$C0,$C5,$C3,$C4,$C2
                    db $F4,$F4,$F5,$F5,$81,$83,$80,$82
                    db $90,$90,$68,$68,$83,$81,$82,$80
                    db $00,$40,$00,$40,$00,$00,$00,$00
                    db $00,$40,$00,$40,$40,$40,$40,$40
                    db $BF,$27,$FF,$7F,$1F,$3F,$5F,$4A
                    db $3E,$03,$FF,$77,$7F,$2A,$5F,$31
                    db $9E,$02,$BF,$6F,$DF,$15,$1D,$00
                    db $FF,$53,$7F,$67,$9F,$4F,$7F,$67

CODE_0FFB49:        PHB                       ;
CODE_0FFB4A:        PHK                       ;
CODE_0FFB4B:        PLB                       ;
CODE_0FFB4C:        LDA $09                   ;
CODE_0FFB4E:        AND #$18                  ;
CODE_0FFB50:        LSR A                     ;
CODE_0FFB51:        LSR A                     ;
CODE_0FFB52:        TAX                       ;
CODE_0FFB53:        REP #$20                  ;
CODE_0FFB55:        LDA $FB29,x               ;
CODE_0FFB58:        STA $10CC                 ;
CODE_0FFB5B:        LDA $FB31,x               ;
CODE_0FFB5E:        STA $10CE                 ;
CODE_0FFB61:        LDA $FB39,x               ;
CODE_0FFB64:        STA $10D0                 ;
CODE_0FFB67:        LDA $FB41,x               ;
CODE_0FFB6A:        STA $10DA                 ;
CODE_0FFB6D:        SEP #$20                  ;
CODE_0FFB6F:        INC $1200                 ;
CODE_0FFB72:        PLB                       ;
CODE_0FFB73:        RTL                       ;

CODE_0FFB74:        REP #$30                  ;
CODE_0FFB76:        LDX #$0000                ;
CODE_0FFB79:        STZ $E6                   ;
CODE_0FFB7B:        LDA $1000,x               ;
CODE_0FFB7E:        STA $E4                   ;
CODE_0FFB80:        AND #$7C00                ;
CODE_0FFB83:        BEQ CODE_0FFB8D           ;
CODE_0FFB85:        LDA $E4                   ;
CODE_0FFB87:        SEC                       ;
CODE_0FFB88:        SBC #$0400                ;
CODE_0FFB8B:        STA $E4                   ;
CODE_0FFB8D:        LDA $E4                   ;
CODE_0FFB8F:        AND #$03E0                ;
CODE_0FFB92:        BEQ CODE_0FFB9C           ;
CODE_0FFB94:        LDA $E4                   ;
CODE_0FFB96:        SEC                       ;
CODE_0FFB97:        SBC #$0020                ;
CODE_0FFB9A:        STA $E4                   ;
CODE_0FFB9C:        LDA $E4                   ;
CODE_0FFB9E:        AND #$001F                ;
CODE_0FFBA1:        BEQ CODE_0FFBA5           ;
CODE_0FFBA3:        DEC $E4                   ;
CODE_0FFBA5:        LDA $E4                   ;
CODE_0FFBA7:        STA $1000,x               ;
CODE_0FFBAA:        ORA $E6                   ;
CODE_0FFBAC:        STA $E6                   ;
CODE_0FFBAE:        INX                       ;
CODE_0FFBAF:        INX                       ;
CODE_0FFBB0:        CPX #$0200                ;
CODE_0FFBB3:        BCC CODE_0FFB7B           ;
CODE_0FFBB5:        LDA $E6                   ;
CODE_0FFBB7:        BEQ CODE_0FFBC8           ;
CODE_0FFBB9:        SEP #$30                  ;
CODE_0FFBBB:        STA $0EB8                 ;
CODE_0FFBBE:        STA $0200                 ;
CODE_0FFBC1:        LDA #$01                  ;
CODE_0FFBC3:        STA $1200                 ;
CODE_0FFBC6:        CLC                       ;
CODE_0FFBC7:        RTL                       ;

CODE_0FFBC8:        SEP #$30                  ;
CODE_0FFBCA:        STZ $0EB8                 ;
CODE_0FFBCD:        STZ $0200                 ;
CODE_0FFBD0:        SEC                       ;
CODE_0FFBD1:        RTL                       ;

CODE_0FFBD2:        LDA $5E,x                 ;
CODE_0FFBD4:        BMI CODE_0FFBDF           ;
CODE_0FFBD6:        LDA $00                   ;
CODE_0FFBD8:        SEC                       ;
CODE_0FFBD9:        SBC #$18                  ;
CODE_0FFBDB:        STA $E4                   ;
CODE_0FFBDD:        BRA CODE_0FFBE3           ;

CODE_0FFBDF:        LDA $00                   ;
CODE_0FFBE1:        STA $E4                   ;
CODE_0FFBE3:        LDA $0238,x               ;
CODE_0FFBE6:        SEC                       ;
CODE_0FFBE7:        SBC $E4                   ;
CODE_0FFBE9:        STA $E4                   ;
CODE_0FFBEB:        PHY                       ;
CODE_0FFBEC:        LDY $0B46,x               ;
CODE_0FFBEF:        CMP #$18                  ;
CODE_0FFBF1:        BCC CODE_0FFC03           ;
CODE_0FFBF3:        LDA $0913,y               ;
CODE_0FFBF6:        ORA #$20                  ;
CODE_0FFBF8:        STA $0913,y               ;
CODE_0FFBFB:        LDA $0917,y               ;
CODE_0FFBFE:        ORA #$20                  ;
CODE_0FFC00:        STA $0917,y               ;
CODE_0FFC03:        LDA $E4                   ;
CODE_0FFC05:        CMP #$10                  ;
CODE_0FFC07:        BCC CODE_0FFC19           ;
CODE_0FFC09:        LDA $090B,y               ;
CODE_0FFC0C:        ORA #$20                  ;
CODE_0FFC0E:        STA $090B,y               ;
CODE_0FFC11:        LDA $090F,y               ;
CODE_0FFC14:        ORA #$20                  ;
CODE_0FFC16:        STA $090F,y               ;
CODE_0FFC19:        LDA $E4                   ;
CODE_0FFC1B:        CMP #$08                  ;
CODE_0FFC1D:        BCC CODE_0FFC2F           ;
CODE_0FFC1F:        LDA $0903,y               ;
CODE_0FFC22:        ORA #$20                  ;
CODE_0FFC24:        STA $0903,y               ;
CODE_0FFC27:        LDA $0907,y               ;
CODE_0FFC2A:        ORA #$20                  ;
CODE_0FFC2C:        STA $0907,y               ;
CODE_0FFC2F:        PLY                       ;
CODE_0FFC30:        RTL                       ;

DATA_0FFC31:        db $F9,$0E,$F7,$0E,$FA,$FB,$F8,$FB
                    db $F6,$FB,$FD,$FE,$20,$22,$24

CODE_0FFC40:        PHB
CODE_0FFC41:        PHK                       ;
CODE_0FFC42:        PLB                       ;
CODE_0FFC43:        LDY #$F0                  ;
CODE_0FFC45:        LDA $021A,x               ;
CODE_0FFC48:        STA $E4                   ;
CODE_0FFC4A:        LDA $79,x                 ;
CODE_0FFC4C:        STA $E5                   ;
CODE_0FFC4E:        REP #$20                  ;
CODE_0FFC50:        LDA $E4                   ;
CODE_0FFC52:        SEC                       ;
CODE_0FFC53:        SBC $42                   ;
CODE_0FFC55:        STA $E4                   ;
CODE_0FFC57:        CLC                       ;
CODE_0FFC58:        ADC #$0004                ;
CODE_0FFC5B:        STA $E6                   ;
CODE_0FFC5D:        CLC                       ;
CODE_0FFC5E:        ADC #$0008                ;
CODE_0FFC61:        STA $E8                   ;
CODE_0FFC63:        BPL CODE_0FFC6E           ;
CODE_0FFC65:        CMP #$FF80                ;
CODE_0FFC68:        BCS CODE_0FFC6E           ;
CODE_0FFC6A:        SEP #$30                  ;
CODE_0FFC6C:        PLB                       ;
CODE_0FFC6D:        RTL                       ;

CODE_0FFC6E:        SEP #$20                  ;
CODE_0FFC70:        LDA $E4                   ;
CODE_0FFC72:        STA $0800,y               ;
CODE_0FFC75:        LDA $0238,x               ;
CODE_0FFC78:        STA $0801,y               ;
CODE_0FFC7B:        LDA #$2B                  ;
CODE_0FFC7D:        STA $0803,y               ;
CODE_0FFC80:        LDA $09                   ;
CODE_0FFC82:        AND #$18                  ;
CODE_0FFC84:        LSR A                     ;
CODE_0FFC85:        LSR A                     ;
CODE_0FFC86:        LSR A                     ;
CODE_0FFC87:        PHX                       ;
CODE_0FFC88:        TAX                       ;
CODE_0FFC89:        CPX #$03                  ;
CODE_0FFC8B:        BNE CODE_0FFC8F           ;
CODE_0FFC8D:        LDX #$01                  ;
CODE_0FFC8F:        LDA $FC3D,x               ;
CODE_0FFC92:        STA $0802,y               ;
CODE_0FFC95:        PLX                       ;
CODE_0FFC96:        LDA $070F                 ;
CODE_0FFC99:        BEQ CODE_0FFCD0           ;
CODE_0FFC9B:        LDA $010F                 ;
CODE_0FFC9E:        ASL A                     ;
CODE_0FFC9F:        TAX                       ;
CODE_0FFCA0:        LDA $E6                   ;
CODE_0FFCA2:        STA $0804,y               ;
CODE_0FFCA5:        LDA $E8                   ;
CODE_0FFCA7:        STA $0808,y               ;
CODE_0FFCAA:        LDA $010D                 ;
CODE_0FFCAD:        STA $0805,y               ;
CODE_0FFCB0:        STA $0809,y               ;
CODE_0FFCB3:        LDA $FC31,x               ;
CODE_0FFCB6:        STA $0806,y               ;
CODE_0FFCB9:        LDA $FC32,x               ;
CODE_0FFCBC:        STA $080A,y               ;
CODE_0FFCBF:        LDA #$22                  ;
CODE_0FFCC1:        STA $0807,y               ;
CODE_0FFCC4:        STA $080B,y               ;
CODE_0FFCC7:        CPX #$04                  ;
CODE_0FFCC9:        BCS CODE_0FFCD0           ;
CODE_0FFCCB:        LDA #$23                  ;
CODE_0FFCCD:        STA $080B,y               ;
CODE_0FFCD0:        LDA #$02                  ;
CODE_0FFCD2:        STA $DD                   ;
CODE_0FFCD4:        LDA $E5                   ;
CODE_0FFCD6:        BEQ CODE_0FFCDA           ;
CODE_0FFCD8:        LDA #$01                  ;
CODE_0FFCDA:        ORA $DD                   ;
CODE_0FFCDC:        STA $0C00,y               ;
CODE_0FFCDF:        STZ $DD                   ;
CODE_0FFCE1:        LDA $E7                   ;
CODE_0FFCE3:        BEQ CODE_0FFCE7           ;
CODE_0FFCE5:        LDA #$01                  ;
CODE_0FFCE7:        ORA $DD                   ;
CODE_0FFCE9:        STA $0C04,y               ;
CODE_0FFCEC:        CPX #$04                  ;
CODE_0FFCEE:        BCS CODE_0FFCF4           ;
CODE_0FFCF0:        LDA #$02                  ;
CODE_0FFCF2:        STA $DD                   ;
CODE_0FFCF4:        LDA $E9                   ;
CODE_0FFCF6:        BEQ CODE_0FFCFA           ;
CODE_0FFCF8:        LDA #$01                  ;
CODE_0FFCFA:        ORA $DD                   ;
CODE_0FFCFC:        STA $0C08,y               ;
CODE_0FFCFF:        PLB                       ;
CODE_0FFD00:        RTL                       ;

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
