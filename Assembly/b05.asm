;Super Mario Bros. 1

;Routine to load the entire level's aesthetics. HDMA, layer 3, etc. 
CODE_058000:        STZ $0EDC                 ;
CODE_058003:        PHB                       ;\
CODE_058004:        LDA #$7E                  ; |
CODE_058006:        PHA                       ; |
CODE_058007:        PLB                       ; |
CODE_058008:        REP #$30                  ; |
CODE_05800A:        LDX #$0000                ; |Clear Background map16 tilemap
CODE_05800D:        LDA #$0000                ; |
CODE_058010:        STA $D000,x               ; |
CODE_058013:        STA $D100,x               ; |
CODE_058016:        STA $D200,x               ; |
CODE_058019:        STA $D300,x               ; |
CODE_05801C:        STA $D400,x               ; |
CODE_05801F:        STA $D500,x               ; |
CODE_058022:        STA $D600,x               ; |
CODE_058025:        STA $D700,x               ; |
CODE_058028:        STA $D800,x               ; |
CODE_05802B:        STA $D900,x               ; |
CODE_05802E:        STA $DA00,x               ; |
CODE_058031:        STA $DB00,x               ; |
CODE_058034:        STA $DC00,x               ; |
CODE_058037:        INX                       ; |
CODE_058038:        INX                       ; |
CODE_058039:        CPX #$0100                ; |
CODE_05803C:        BNE CODE_058010           ; |
CODE_05803E:        PLB                       ;/
CODE_05803F:        PHB                       ;\
CODE_058040:        PHK                       ; |Data bank = current bank
CODE_058041:        PLB                       ; |
CODE_058042:        STZ $0EC0                 ; |Index to the current BG map16 end offset
CODE_058045:        LDA $0E65                 ; |
CODE_058048:        AND #$00FF                ; |Store current background to $DB. $0E65 is clone
CODE_05804B:        BEQ CODE_05804F           ; |of $DB (or the opposite......)
CODE_05804D:        STA $DB                   ; |
CODE_05804F:        LDA $DB                   ; |
CODE_058051:        AND #$00FF                ; |Layer 2 background
CODE_058054:        ASL A                     ; |to 16-bit index
CODE_058055:        TAX                       ; |
CODE_058056:        LDA $AD04,x               ; |< relative index to table
CODE_058059:        STA $02                   ; |Get index to a table. Index is indexed by
CODE_05805B:        REP #$30                  ; |the 16-bit index from before. $02 = index
CODE_05805D:        LDX $02                   ; |X = index
CODE_05805F:        LDA $B557,x               ; |This table seems to be related to the properties of the background generated
CODE_058062:        STA $04                   ; |Such as the graphics, tilemap and the HDMA gradient associated.
CODE_058064:        INC $02                   ; |
CODE_058066:        INC $02                   ; |increase pointer to read next word next time.
CODE_058068:        AND #$03F0                ; |
CODE_05806B:        LSR A                     ; |note to self: continue documenting this.
CODE_05806C:        LSR A                     ;
CODE_05806D:        LSR A                     ;
CODE_05806E:        LSR A                     ;
CODE_05806F:        STA $EF                   ;
CODE_058071:        LDA $04                   ;\ Load data
CODE_058073:        AND #$000F                ; |Extract HDMA gradient type
CODE_058076:        STA $F1                   ;/Store to HDMA gradient type
CODE_058078:        LDA $04                   ;\Load data
CODE_05807A:        AND #$E000                ; |
CODE_05807D:        STA $ED                   ;/
CODE_05807F:        LDA $04                   ;
CODE_058081:        LSR A                     ;
CODE_058082:        AND #$0E00                ;
CODE_058085:        ORA $ED                   ;
CODE_058087:        XBA                       ;
CODE_058088:        STA $ED                   ;
CODE_05808A:        AND #$00F0                ;
CODE_05808D:        CMP #$00E0                ;
CODE_058090:        BNE CODE_0580B3           ;
CODE_058092:        LDA $EF                   ;
CODE_058094:        CMP #$003F                ;
CODE_058097:        BNE CODE_0580AE           ;
CODE_058099:        INC $0EC0                 ;\
CODE_05809C:        INC $0EC0                 ; |
CODE_05809F:        LDA $0EC0                 ; | Increase index to the final background map16 byte written to RAM $7ED000.
CODE_0580A2:        XBA                       ; |
CODE_0580A3:        TAX                       ; | And make sure the final bytes are FFFF to mark the end of the map16 tilemap.
CODE_0580A4:        LDA #$FFFF                ; |
CODE_0580A7:        STA $7ED000,x             ;/
CODE_0580AB:        JMP CODE_059166           ;

CODE_0580AE:        JSR CODE_058F19           ;
CODE_0580B1:        BRA CODE_05805B           ;

CODE_0580B3:        LDA $0EC0                 ;
CODE_0580B6:        XBA                       ;
CODE_0580B7:        CLC                       ;
CODE_0580B8:        ADC $ED                   ;
CODE_0580BA:        STA $EB                   ;
CODE_0580BC:        LDA $EF                   ;
CODE_0580BE:        CMP #$0010                ;
CODE_0580C1:        BCC CODE_0580C9           ;
CODE_0580C3:        JSR CODE_058E85           ;
CODE_0580C6:        JMP CODE_05805B           ;

CODE_0580C9:        ASL A                     ;A = $EF smaller than #$10
CODE_0580CA:        TAX                       ;
CODE_0580CB:        LDA $DB                   ;\
CODE_0580CD:        ASL A                     ; |background to index. Up to $21 is valid.
CODE_0580CE:        TAY                       ;/
CODE_0580CF:        LDA $80E1,y               ;\Setup indirect pointer based on background.
CODE_0580D2:        STA $04                   ;/
CODE_0580D4:        LDA #$0005                ;\Bank byte: $05
CODE_0580D7:        STA $06                   ;/
CODE_0580D9:        TXY                       ;
CODE_0580DA:        LDA [$04],y               ;
CODE_0580DC:        STA $00                   ;
CODE_0580DE:        JMP ($0000)               ;Jump to background generation/background loading routines

PNTR_0580E1:        dw $8141                                ;$00 -
                    dw $8141                                ;$01 -
                    dw $812B                                ;$02 -
                    dw $8149                                ;$03 -
                    dw $812D                                ;$04 -
                    dw $8149                                ;$05 -
                    dw $8149                                ;$06 -
                    dw $8149                                ;$07 -
                    dw $8149                                ;$08 -
                    dw $81DF                                ;$09 -
                    dw $8125                                ;$0A - this points to INSTRUCTION POINTER #0
                    dw $81A7                                ;$0B -
                    dw $8149                                ;$0C -
                    dw $81A7                                ;$0D -
                    dw $8149                                ;$0E -
                    dw $81C7                                ;$0F -
                    dw $8149                                ;$10 -
                    dw $8149                                ;$11 -
                    dw $81C7                                ;$12 -
                    dw $8149                                ;$13 -
                    dw $81A7                                ;$14 -
                    dw $81A7                                ;$15 -
                    dw $81A7                                ;$16 -
                    dw $8149                                ;$17 -
                    dw $8149                                ;$18 -
                    dw $8169                                ;$19 -
                    dw $8169                                ;$1A -
                    dw $8149                                ;$1B -
                    dw $818F                                ;$1C -
                    dw $818F                                ;$1D -
                    dw $818F                                ;$1E -
                    dw $818F                                ;$1F -
                    dw $818F                                ;$20 -
                    dw $816F                                ;$21 -
;*split*

PNTR_058125:        dw $823F                                ;INSTRUCTION POINTER #0: this points to opcode | Related to generating the goomba pillar background
                    dw $8244                                ;Related to generating the goomba pillar background
                    dw $81F5                                ;
                    dw $82E2                                ;
                    dw $9004                                ;
                    dw $864E                                ;
                    dw $864C                                ;
                    dw $8643
                    dw $8639
                    dw $864E
                    dw $864E
                    dw $8639
                    dw $864C
                    dw $864E
                    dw $8724
                    dw $8726
                    dw $875E
                    dw $8760
                    dw $8995
                    dw $86E9
                    dw $86E9
                    dw $86E9
                    dw $8845
                    dw $8843                                ;used in 1-1
                    dw $883A
                    dw $8838
                    dw $87EA
                    dw $87F4
                    dw $8800
                    dw $880C
                    dw $8818
                    dw $8824
                    dw $882C
                    dw $848D
                    dw $89E0
                    dw $89FD
                    dw $8A2E
                    dw $85EE
                    dw $85EC
                    dw $85EE
                    dw $85EC
                    dw $85EE
                    dw $85EC
                    dw $85EE
                    dw $85EC
                    dw $85EE
                    dw $85EC
                    dw $85EE
                    dw $85EC
                    dw $85EE
                    dw $85EC
                    dw $85EE
                    dw $85EC
                    dw $8B51
                    dw $8B51
                    dw $8B8F
                    dw $8C66
                    dw $8CE0
                    dw $8D8A
                    dw $8B22
                    dw $8A68
                    dw $8AD5
                    dw $8DD3
                    dw $8DD1
                    dw $8DC5
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8699
                    dw $8445
                    dw $8443
                    dw $8439
                    dw $8437
                    dw $8432
                    dw $8430
                    dw $8426
                    dw $8424
                    dw $83E9
                    dw $83E7
                    dw $83DD
                    dw $83DB
                    dw $8307

DATA_0581E1:        db $07,$0A,$0B,$12,$19,$29,$2A,$33
                    db $34,$30,$00,$07,$0A,$1D,$19,$00
                    db $29,$2A,$2D,$30

CODE_0581F5:        LDY $F1                   ;
CODE_0581F7:        LDX $EB                   ;
CODE_0581F9:        SEP #$20                  ;
CODE_0581FB:        LDA $81E1,y               ;
CODE_0581FE:        STA $7ED000,x             ;
CODE_058202:        LDA $81E2,y               ;
CODE_058205:        STA $7ED010,x             ;
CODE_058209:        LDA $81E3,y               ;
CODE_05820C:        STA $7ED020,x             ;
CODE_058210:        LDA $81E4,y               ;
CODE_058213:        STA $7ED030,x             ;
CODE_058217:        LDA $81E5,y               ;
CODE_05821A:        STA $7ED040,x             ;
CODE_05821E:        REP #$20                  ;
CODE_058220:        JMP CODE_05805B           ;

DATA_058223:        db $01,$02,$03,$04,$08,$09,$05,$06      ;
                    db $10,$11,$17,$18,$1B,$1C,$1F,$20      ;
                    db $21,$22,$25,$26,$23,$24,$2B,$2C      ;
                    db $2E,$2F,$31,$32                      ;

CODE_05823F:        LDY #$000E                ;
CODE_058242:        BRA CODE_058247           ;

CODE_058244:        LDY #$0000                ;
CODE_058247:        LDX $EB                   ;
CODE_058249:        INX                       ;
CODE_05824A:        SEP #$20                  ;
CODE_05824C:        LDA $8223,y               ;
CODE_05824F:        STA $7ED000,x             ;
CODE_058253:        LDA $8224,y               ;
CODE_058256:        STA $7ED001,x             ;
CODE_05825A:        LDA $8225,y               ;
CODE_05825D:        STA $7ED010,x             ;
CODE_058261:        LDA $8226,y               ;
CODE_058264:        STA $7ED011,x             ;
CODE_058268:        LDA $8229,y               ;
CODE_05826B:        STA $7ED020,x             ;
CODE_05826F:        LDA $822A,y               ;
CODE_058272:        STA $7ED021,x             ;
CODE_058276:        LDA #$30                  ;
CODE_058278:        STA $E4                   ;
CODE_05827A:        STZ $E5                   ;
CODE_05827C:        REP #$20                  ;
CODE_05827E:        TXA                       ;
CODE_05827F:        CLC                       ;
CODE_058280:        ADC $E4                   ;
CODE_058282:        TAX                       ;
CODE_058283:        SEP #$20                  ;
CODE_058285:        CMP #$D0                  ;
CODE_058287:        BCS CODE_0582AD           ;
CODE_058289:        LDA $8227,y               ;
CODE_05828C:        STA $7ED000,x             ;
CODE_058290:        LDA $8228,y               ;
CODE_058293:        STA $7ED001,x             ;
CODE_058297:        LDA $8229,y               ;
CODE_05829A:        STA $7ED010,x             ;
CODE_05829E:        LDA $822A,y               ;
CODE_0582A1:        STA $7ED011,x             ;
CODE_0582A5:        LDA #$20                  ;
CODE_0582A7:        STA $E4                   ;
CODE_0582A9:        STZ $E5                   ;
CODE_0582AB:        BRA CODE_05827C           ;

CODE_0582AD:        LDA $822B,y               ;
CODE_0582B0:        STA $7ED000,x             ;
CODE_0582B4:        LDA $822C,y               ;
CODE_0582B7:        STA $7ED001,x             ;
CODE_0582BB:        LDA $822D,y               ;
CODE_0582BE:        STA $7ED010,x             ;
CODE_0582C2:        LDA $822E,y               ;
CODE_0582C5:        STA $7ED011,x             ;
CODE_0582C9:        LDA $822F,y               ;
CODE_0582CC:        STA $7ED020,x             ;
CODE_0582D0:        LDA $8230,y               ;
CODE_0582D3:        STA $7ED021,x             ;
CODE_0582D7:        REP #$20                  ;
CODE_0582D9:        JMP CODE_05805B           ;

DATA_0582DC:        db $00,$00,$41,$00,$82,$00

CODE_0582E2:        LDA $F1                   ;
CODE_0582E4:        ASL A                     ;
CODE_0582E5:        TAY                       ;
CODE_0582E6:        LDA $82DC,y               ;
CODE_0582E9:        TAY                       ;
CODE_0582EA:        LDA $EB                   ;
CODE_0582EC:        CLC                       ;
CODE_0582ED:        ADC #$0010                ;
CODE_0582F0:        TAX                       ;
CODE_0582F1:        SEP #$20                  ;
CODE_0582F3:        LDA $B494,y               ;
CODE_0582F6:        CMP #$FF                  ;
CODE_0582F8:        BEQ CODE_058302           ;
CODE_0582FA:        STA $7ED000,x             ;
CODE_0582FE:        INY                       ;
CODE_0582FF:        INX                       ;
CODE_058300:        BRA CODE_0582F3           ;

CODE_058302:        REP #$20                  ;
CODE_058304:        JMP CODE_05805B           ;

CODE_058307:        LDX $EB                   ;
CODE_058309:        LDA $F1                   ;
CODE_05830B:        STA $E6                   ;
CODE_05830D:        SEP #$20                  ;
CODE_05830F:        STZ $E8                   ;
CODE_058311:        LDA #$09                  ;
CODE_058313:        STA $7ED000,x             ;
CODE_058317:        LDA #$0E                  ;
CODE_058319:        STA $7ED010,x             ;
CODE_05831D:        STA $7ED030,x             ;
CODE_058321:        STA $7ED050,x             ;
CODE_058325:        LDA #$12                  ;
CODE_058327:        STA $7ED020,x             ;
CODE_05832B:        STA $7ED040,x             ;
CODE_05832F:        INX                       ;
CODE_058330:        REP #$20                  ;
CODE_058332:        TXA                       ;
CODE_058333:        AND #$000F                ;
CODE_058336:        BNE CODE_058340           ;
CODE_058338:        TXA                       ;
CODE_058339:        CLC                       ;
CODE_05833A:        ADC #$00F0                ;
CODE_05833D:        TAX                       ;
CODE_05833E:        INC $E8                   ;
CODE_058340:        SEP #$20                  ;
CODE_058342:        DEC $E6                   ;
CODE_058344:        LDA $E6                   ;
CODE_058346:        BMI CODE_05837F           ;
CODE_058348:        LDA #$09                  ;
CODE_05834A:        STA $7ED000,x             ;
CODE_05834E:        LDA #$0F                  ;
CODE_058350:        STA $7ED010,x             ;
CODE_058354:        STA $7ED030,x             ;
CODE_058358:        STA $7ED050,x             ;
CODE_05835C:        LDA #$13                  ;
CODE_05835E:        STA $7ED020,x             ;
CODE_058362:        STA $7ED040,x             ;
CODE_058366:        INX                       ;
CODE_058367:        REP #$20                  ;
CODE_058369:        TXA                       ;
CODE_05836A:        AND #$000F                ;
CODE_05836D:        BNE CODE_058377           ;
CODE_05836F:        TXA                       ;
CODE_058370:        CLC                       ;
CODE_058371:        ADC #$00F0                ;
CODE_058374:        TAX                       ;
CODE_058375:        INC $E8                   ;
CODE_058377:        SEP #$20                  ;
CODE_058379:        DEC $E6                   ;
CODE_05837B:        LDA $E6                   ;
CODE_05837D:        BPL CODE_058311           ;
CODE_05837F:        LDX $EB                   ;
CODE_058381:        LDA $F1                   ;
CODE_058383:        CMP #$04                  ;
CODE_058385:        BCC CODE_058389           ;
CODE_058387:        LDA #$04                  ;
CODE_058389:        TAY                       ;
CODE_05838A:        LDA $83B0,y               ;
CODE_05838D:        STA $7ECFFF,x             ;
CODE_058391:        REP #$20                  ;
CODE_058393:        LDA $E8                   ;
CODE_058395:        BEQ CODE_05839D           ;
CODE_058397:        TXA                       ;
CODE_058398:        CLC                       ;
CODE_058399:        ADC #$00F0                ;
CODE_05839C:        TAX                       ;
CODE_05839D:        TXA                       ;
CODE_05839E:        CLC                       ;
CODE_05839F:        ADC $F1                   ;
CODE_0583A1:        TAX                       ;
CODE_0583A2:        SEP #$20                  ;
CODE_0583A4:        LDA $83B5,y               ;
CODE_0583A7:        STA $7ED001,x             ;
CODE_0583AB:        REP #$20                  ;
CODE_0583AD:        JMP CODE_05805B           ;

DATA_0583B0:        db $08,$08,$04,$04,$08

DATA_0583B5:        db $0A,$06,$0A,$06,$0A,$01,$02,$03
                    db $02,$04,$01,$02,$02,$03,$02,$02
                    db $04,$07,$08,$09,$07,$0E,$08,$0E
                    db $09,$01,$03,$04,$04,$06,$02,$04
                    db $02,$00,$05,$0C,$0F,$14

CODE_0583DB:        INC $EB                   ;
CODE_0583DD:        LDA $EB                   ;
CODE_0583DF:        CLC                       ;
CODE_0583E0:        ADC #$0010                ;
CODE_0583E3:        STA $EB                   ;
CODE_0583E5:        BRA CODE_0583E9           ;

CODE_0583E7:        INC $EB                   ;
CODE_0583E9:        LDX $EB                   ;
CODE_0583EB:        LDA $F1                   ;
CODE_0583ED:        TAY                       ;
CODE_0583EE:        LDA $83D1,y               ;
CODE_0583F1:        AND #$00FF                ;
CODE_0583F4:        STA $F1                   ;
CODE_0583F6:        LDA $83D6,y               ;
CODE_0583F9:        AND #$00FF                ;
CODE_0583FC:        TAY                       ;
CODE_0583FD:        SEP #$20                  ;
CODE_0583FF:        LDA $83BA,y               ;
CODE_058402:        STA $7ED000,x             ;
CODE_058406:        INX                       ;
CODE_058407:        INY                       ;
CODE_058408:        TXA                       ;
CODE_058409:        AND #$0F                  ;
CODE_05840B:        BNE CODE_058417           ;
CODE_05840D:        REP #$20                  ;
CODE_05840F:        TXA                       ;
CODE_058410:        CLC                       ;
CODE_058411:        ADC #$00F0                ;
CODE_058414:        TAX                       ;
CODE_058415:        SEP #$20                  ;
CODE_058417:        DEC $F1                   ;
CODE_058419:        BPL CODE_0583FF           ;
CODE_05841B:        REP #$20                  ;
CODE_05841D:        JMP CODE_05805B           ;

DATA_058420:        db $05,$0A,$06,$0C

CODE_058424:        INC $EB                   ;
CODE_058426:        LDA $EB                   ;
CODE_058428:        CLC                       ;
CODE_058429:        ADC #$0010                ;
CODE_05842C:        STA $EB                   ;
CODE_05842E:        BRA CODE_058432           ;

CODE_058430:        INC $EB                   ;
CODE_058432:        LDY #$0001                ;
CODE_058435:        BRA CODE_058448           ;

CODE_058437:        INC $EB                   ;
CODE_058439:        LDA $EB                   ;
CODE_05843B:        CLC                       ;
CODE_05843C:        ADC #$0010                ;
CODE_05843F:        STA $EB                   ;
CODE_058441:        BRA CODE_058445           ;

CODE_058443:        INC $EB                   ;
CODE_058445:        LDY #$0000                ;
CODE_058448:        LDX $EB                   ;
CODE_05844A:        SEP #$20                  ;
CODE_05844C:        LDA $8420,y               ;
CODE_05844F:        STA $7ED000,x             ;
CODE_058453:        REP #$20                  ;
CODE_058455:        TXA                       ;
CODE_058456:        CLC                       ;
CODE_058457:        ADC #$0010                ;
CODE_05845A:        TAX                       ;
CODE_05845B:        SEP #$20                  ;
CODE_05845D:        DEC $F1                   ;
CODE_05845F:        LDA $7ED000,x             ;
CODE_058463:        CMP #$0E                  ;
CODE_058465:        BNE CODE_05846B           ;
CODE_058467:        LDA #$0D                  ;
CODE_058469:        BRA CODE_058476           ;

CODE_05846B:        CMP #$02                  ;
CODE_05846D:        BNE CODE_058473           ;
CODE_05846F:        LDA #$0B                  ;
CODE_058471:        BRA CODE_058476           ;

CODE_058473:        LDA $8422,y               ;
CODE_058476:        STA $7ED000,x             ;
CODE_05847A:        REP #$20                  ;
CODE_05847C:        TXA                       ;
CODE_05847D:        CLC                       ;
CODE_05847E:        ADC #$0010                ;
CODE_058481:        TAX                       ;
CODE_058482:        SEP #$20                  ;
CODE_058484:        DEC $F1                   ;
CODE_058486:        BPL CODE_05845F           ;
CODE_058488:        REP #$20                  ;
CODE_05848A:        JMP CODE_05805B           ;

CODE_05848D:        LDA $EB                   ;
CODE_05848F:        CLC                       ;
CODE_058490:        ADC #$0010                ;
CODE_058493:        TAX                       ;
CODE_058494:        SEP #$20                  ;
CODE_058496:        LDA #$4E                  ;
CODE_058498:        STA $7ED030,x             ;
CODE_05849C:        LDA $7ED000,x             ;
CODE_0584A0:        BEQ CODE_0584A6           ;
CODE_0584A2:        LDA #$38                  ;
CODE_0584A4:        BRA CODE_0584A8           ;

CODE_0584A6:        LDA #$34                  ;
CODE_0584A8:        STA $7ED000,x             ;
CODE_0584AC:        LDA $7ED010,x             ;
CODE_0584B0:        BEQ CODE_0584BA           ;
CODE_0584B2:        CMP #$12                  ;
CODE_0584B4:        BEQ CODE_0584BA           ;
CODE_0584B6:        LDA #$44                  ;
CODE_0584B8:        BRA CODE_0584BC           ;

CODE_0584BA:        LDA #$40                  ;
CODE_0584BC:        STA $7ED010,x             ;
CODE_0584C0:        LDA $7ED020,x             ;
CODE_0584C4:        BEQ CODE_0584CE           ;
CODE_0584C6:        CMP #$12                  ;
CODE_0584C8:        BEQ CODE_0584CE           ;
CODE_0584CA:        LDA #$4D                  ;
CODE_0584CC:        BRA CODE_0584D0           ;

CODE_0584CE:        LDA #$4C                  ;
CODE_0584D0:        STA $7ED020,x             ;
CODE_0584D4:        INX                       ;
CODE_0584D5:        LDA $7ED000,x             ;
CODE_0584D9:        BEQ CODE_0584F7           ;
CODE_0584DB:        CMP #$12                  ;
CODE_0584DD:        BEQ CODE_0584F7           ;
CODE_0584DF:        CMP #$18                  ;
CODE_0584E1:        BEQ CODE_0584F3           ;
CODE_0584E3:        CMP #$07                  ;
CODE_0584E5:        BEQ CODE_0584F3           ;
CODE_0584E7:        CMP #$17                  ;
CODE_0584E9:        BEQ CODE_0584EF           ;
CODE_0584EB:        LDA #$39                  ;
CODE_0584ED:        BRA CODE_0584F9           ;

CODE_0584EF:        LDA #$3D                  ;
CODE_0584F1:        BRA CODE_0584F9           ;

CODE_0584F3:        LDA #$36                  ;
CODE_0584F5:        BRA CODE_0584F9           ;

CODE_0584F7:        LDA #$35                  ;
CODE_0584F9:        STA $7ED000,x             ;
CODE_0584FD:        LDA #$41                  ;
CODE_0584FF:        STA $7ED010,x             ;
CODE_058503:        LDA #$48                  ;
CODE_058505:        STA $7ED020,x             ;
CODE_058509:        LDA #$4E                  ;
CODE_05850B:        STA $7ED030,x             ;
CODE_05850F:        INX                       ;
CODE_058510:        DEC $F1                   ;
CODE_058512:        LDA $F1                   ;
CODE_058514:        BNE CODE_058519           ;
CODE_058516:        JMP CODE_058599           ;

CODE_058519:        LDA $7ED000,x             ;
CODE_05851D:        BNE CODE_058539           ;
CODE_05851F:        LDA #$36                  ;
CODE_058521:        STA $7ED000,x             ;
CODE_058525:        LDA #$35                  ;
CODE_058527:        STA $7ED001,x             ;
CODE_05852B:        LDA #$42                  ;
CODE_05852D:        STA $7ED010,x             ;
CODE_058531:        LDA #$41                  ;
CODE_058533:        STA $7ED011,x             ;
CODE_058537:        BRA CODE_05856F           ;

CODE_058539:        CMP #$18                  ;
CODE_05853B:        BEQ CODE_058557           ;
CODE_05853D:        LDA #$3A                  ;
CODE_05853F:        STA $7ED000,x             ;
CODE_058543:        LDA #$39                  ;
CODE_058545:        STA $7ED001,x             ;
CODE_058549:        LDA #$42                  ;
CODE_05854B:        STA $7ED010,x             ;
CODE_05854F:        LDA #$41                  ;
CODE_058551:        STA $7ED011,x             ;
CODE_058555:        BRA CODE_05856F           ;

CODE_058557:        LDA #$36                  ;
CODE_058559:        STA $7ED000,x             ;
CODE_05855D:        LDA #$35                  ;
CODE_05855F:        STA $7ED001,x             ;
CODE_058563:        LDA #$42                  ;
CODE_058565:        STA $7ED010,x             ;
CODE_058569:        LDA #$41                  ;
CODE_05856B:        STA $7ED011,x             ;
CODE_05856F:        LDA #$47                  ;
CODE_058571:        STA $7ED020,x             ;
CODE_058575:        LDA #$48                  ;
CODE_058577:        STA $7ED021,x             ;
CODE_05857B:        LDA #$4E                  ;
CODE_05857D:        STA $7ED030,x             ;
CODE_058581:        STA $7ED031,x             ;
CODE_058585:        INX                       ;
CODE_058586:        INX                       ;
CODE_058587:        TXA                       ;
CODE_058588:        AND #$0F                  ;
CODE_05858A:        BNE CODE_058510           ;
CODE_05858C:        REP #$20                  ;
CODE_05858E:        TXA                       ;
CODE_05858F:        CLC                       ;
CODE_058590:        ADC #$00F0                ;
CODE_058593:        TAX                       ;
CODE_058594:        SEP #$20                  ;
CODE_058596:        JMP CODE_058510           ;

CODE_058599:        LDA #$42                  ;
CODE_05859B:        STA $7ED010,x             ;
CODE_05859F:        LDA #$47                  ;
CODE_0585A1:        STA $7ED020,x             ;
CODE_0585A5:        LDA #$4E                  ;
CODE_0585A7:        STA $7ED030,x             ;
CODE_0585AB:        STA $7ED031,x             ;
CODE_0585AF:        LDA $7ED000,x             ;
CODE_0585B3:        BNE CODE_0585CF           ;
CODE_0585B5:        LDA #$36                  ;
CODE_0585B7:        STA $7ED000,x             ;
CODE_0585BB:        LDA #$37                  ;
CODE_0585BD:        STA $7ED001,x             ;
CODE_0585C1:        LDA #$43                  ;
CODE_0585C3:        STA $7ED011,x             ;
CODE_0585C7:        LDA #$49                  ;
CODE_0585C9:        STA $7ED021,x             ;
CODE_0585CD:        BRA CODE_0585E7           ;

CODE_0585CF:        LDA #$3A                  ;
CODE_0585D1:        STA $7ED000,x             ;
CODE_0585D5:        LDA #$3B                  ;
CODE_0585D7:        STA $7ED001,x             ;
CODE_0585DB:        LDA #$45                  ;
CODE_0585DD:        STA $7ED011,x             ;
CODE_0585E1:        LDA #$4A                  ;
CODE_0585E3:        STA $7ED021,x             ;
CODE_0585E7:        REP #$20                  ;
CODE_0585E9:        JMP CODE_05805B           ;

CODE_0585EC:        INC $EB                   ;
CODE_0585EE:        LDX $EB                   ;
CODE_0585F0:        STX $E2                   ;
CODE_0585F2:        LDA $EF                   ;
CODE_0585F4:        ASL A                     ;
CODE_0585F5:        TAY                       ;
CODE_0585F6:        LDA $878A,y               ;
CODE_0585F9:        TAY                       ;
CODE_0585FA:        SEP #$20                  ;
CODE_0585FC:        LDA $B323,y               ;
CODE_0585FF:        BEQ CODE_058610           ;
CODE_058601:        CMP #$FF                  ;
CODE_058603:        BEQ CODE_058634           ;
CODE_058605:        CMP #$FE                  ;
CODE_058607:        BEQ CODE_058624           ;
CODE_058609:        LDA $B323,y               ;
CODE_05860C:        STA $7ED000,x             ;
CODE_058610:        INY                       ;
CODE_058611:        INX                       ;
CODE_058612:        REP #$20                  ;
CODE_058614:        TXA                       ;
CODE_058615:        AND #$000F                ;
CODE_058618:        BNE CODE_058620           ;
CODE_05861A:        TXA                       ;
CODE_05861B:        CLC                       ;
CODE_05861C:        ADC #$00F0                ;
CODE_05861F:        TAX                       ;
CODE_058620:        SEP #$20                  ;
CODE_058622:        BRA CODE_0585FC           ;

CODE_058624:        REP #$20                  ;
CODE_058626:        LDA $E2                   ;
CODE_058628:        CLC                       ;
CODE_058629:        ADC #$0010                ;
CODE_05862C:        STA $E2                   ;
CODE_05862E:        TAX                       ;
CODE_05862F:        SEP #$20                  ;
CODE_058631:        INY                       ;
CODE_058632:        BRA CODE_0585FC           ;

CODE_058634:        REP #$20                  ;
CODE_058636:        JMP CODE_05805B           ;

CODE_058639:        LDA $EB                   ;
CODE_05863B:        CLC                       ;
CODE_05863C:        ADC #$0010                ;
CODE_05863F:        TAX                       ;
CODE_058640:        INX                       ;
CODE_058641:        BRA CODE_058650           ;

CODE_058643:        LDA $EB                   ;
CODE_058645:        CLC                       ;
CODE_058646:        ADC #$0010                ;
CODE_058649:        TAX                       ;
CODE_05864A:        BRA CODE_058650           ;

CODE_05864C:        INC $EB                   ;
CODE_05864E:        LDX $EB                   ;
CODE_058650:        STX $E2                   ;
CODE_058652:        LDA $EF                   ;
CODE_058654:        ASL A                     ;
CODE_058655:        TAY                       ;
CODE_058656:        LDA $87AA,y               ;
CODE_058659:        TAY                       ;
CODE_05865A:        SEP #$20                  ;
CODE_05865C:        LDA $B3E2,y               ;
CODE_05865F:        BEQ CODE_058670           ;
CODE_058661:        CMP #$FF                  ;
CODE_058663:        BEQ CODE_058694           ;
CODE_058665:        CMP #$FE                  ;
CODE_058667:        BEQ CODE_058684           ;
CODE_058669:        LDA $B3E2,y               ;
CODE_05866C:        STA $7ED000,x             ;
CODE_058670:        INY                       ;
CODE_058671:        INX                       ;
CODE_058672:        REP #$20                  ;
CODE_058674:        TXA                       ;
CODE_058675:        AND #$000F                ;
CODE_058678:        BNE CODE_058680           ;
CODE_05867A:        TXA                       ;
CODE_05867B:        CLC                       ;
CODE_05867C:        ADC #$00F0                ;
CODE_05867F:        TAX                       ;
CODE_058680:        SEP #$20                  ;
CODE_058682:        BRA CODE_05865C           ;

CODE_058684:        REP #$20                  ;
CODE_058686:        LDA $E2                   ;
CODE_058688:        CLC                       ;
CODE_058689:        ADC #$0010                ;
CODE_05868C:        STA $E2                   ;
CODE_05868E:        TAX                       ;
CODE_05868F:        SEP #$20                  ;
CODE_058691:        INY                       ;
CODE_058692:        BRA CODE_05865C           ;

CODE_058694:        REP #$20                  ;
CODE_058696:        JMP CODE_05805B           ;

CODE_058699:        LDX $EB                   ;
CODE_05869B:        STX $E2                   ;
CODE_05869D:        LDA $EF                   ;
CODE_05869F:        ASL A                     ;
CODE_0586A0:        TAY                       ;
CODE_0586A1:        LDA $87BE,y               ;
CODE_0586A4:        TAY                       ;
CODE_0586A5:        SEP #$20                  ;
CODE_0586A7:        LDA $AD48,y               ;
CODE_0586AA:        BEQ CODE_0586B8           ;
CODE_0586AC:        CMP #$FF                  ;
CODE_0586AE:        BEQ CODE_0586E4           ;
CODE_0586B0:        CMP #$FE                  ;
CODE_0586B2:        BEQ CODE_0586CC           ;
CODE_0586B4:        STA $7ED000,x             ;
CODE_0586B8:        INY                       ;
CODE_0586B9:        INX                       ;
CODE_0586BA:        REP #$20                  ;
CODE_0586BC:        TXA                       ;
CODE_0586BD:        AND #$000F                ;
CODE_0586C0:        BNE CODE_0586C8           ;
CODE_0586C2:        TXA                       ;
CODE_0586C3:        CLC                       ;
CODE_0586C4:        ADC #$00F0                ;
CODE_0586C7:        TAX                       ;
CODE_0586C8:        SEP #$20                  ;
CODE_0586CA:        BRA CODE_0586A7           ;

CODE_0586CC:        REP #$20                  ;
CODE_0586CE:        LDA $E2                   ;
CODE_0586D0:        CLC                       ;
CODE_0586D1:        ADC #$0010                ;
CODE_0586D4:        STA $E2                   ;
CODE_0586D6:        TAX                       ;
CODE_0586D7:        AND #$00F0                ;
CODE_0586DA:        CMP #$00F0                ;
CODE_0586DD:        BEQ CODE_0586E4           ;
CODE_0586DF:        SEP #$20                  ;
CODE_0586E1:        INY                       ;
CODE_0586E2:        BRA CODE_0586A7           ;

CODE_0586E4:        REP #$20                  ;
CODE_0586E6:        JMP CODE_05805B           ;

CODE_0586E9:        DEC $EF                   ;
CODE_0586EB:        LDA $EF                   ;
CODE_0586ED:        AND #$0003                ;
CODE_0586F0:        ASL A                     ;
CODE_0586F1:        ASL A                     ;
CODE_0586F2:        ASL A                     ;
CODE_0586F3:        ASL A                     ;
CODE_0586F4:        ORA $F1                   ;
CODE_0586F6:        ASL A                     ;
CODE_0586F7:        ASL A                     ;
CODE_0586F8:        TAY                       ;
CODE_0586F9:        LDX $EB                   ;
CODE_0586FB:        SEP #$20                  ;
CODE_0586FD:        LDA $91E4,y               ;
CODE_058700:        STA $7ED000,x             ;
CODE_058704:        LDA $91E5,y               ;
CODE_058707:        STA $7ED001,x             ;
CODE_05870B:        LDA $91E6,y               ;
CODE_05870E:        STA $7ED010,x             ;
CODE_058712:        LDA $91E7,y               ;
CODE_058715:        STA $7ED011,x             ;
CODE_058719:        REP #$20                  ;
CODE_05871B:        JMP CODE_05805B           ;

DATA_05871E:        db $04,$05,$0B,$0C,$0B,$0C

CODE_058724:        INC $EB                   ;
CODE_058726:        LDA $EB                   ;
CODE_058728:        CLC                       ;
CODE_058729:        ADC #$0020                ;
CODE_05872C:        TAX                       ;
CODE_05872D:        SEP #$20                  ;
CODE_05872F:        LDA $871E                 ;\
CODE_058732:        STA $7ED000,x             ; |
CODE_058736:        LDA $871F                 ; |
CODE_058739:        STA $7ED001,x             ; |
CODE_05873D:        LDA $8720                 ; |
CODE_058740:        STA $7ED010,x             ; |
CODE_058744:        LDA $8721                 ; |
CODE_058747:        STA $7ED011,x             ; |
CODE_05874B:        LDA $8722                 ; |
CODE_05874E:        STA $7ED020,x             ; |
CODE_058752:        LDA $8723                 ; |
CODE_058755:        STA $7ED021,x             ;/
CODE_058759:        REP #$20                  ;
CODE_05875B:        JMP CODE_05805B           ;

CODE_05875E:        INC $EB                   ;
CODE_058760:        LDA $EB                   ;
CODE_058762:        CLC                       ;
CODE_058763:        ADC #$0020                ;
CODE_058766:        TAX                       ;
CODE_058767:        SEP #$20                  ;
CODE_058769:        LDA $871E                 ;\
CODE_05876C:        STA $7ED010,x             ; |
CODE_058770:        LDA $871F                 ; |
CODE_058773:        STA $7ED011,x             ; |
CODE_058777:        LDA $8720                 ; |
CODE_05877A:        STA $7ED020,x             ; |
CODE_05877E:        LDA $8721                 ; |
CODE_058781:        STA $7ED021,x             ;/
CODE_058785:        REP #$20                  ;
CODE_058787:        JMP CODE_05805B           ;

DATA_05878A:        db $00,$00,$00,$00,$1F,$00,$1F,$00
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

CODE_0587EA:        LDY $87DC                 ;
CODE_0587ED:        LDA $EB                   ;
CODE_0587EF:        TAX                       ;
CODE_0587F0:        INX                       ;
CODE_0587F1:        INX                       ;
CODE_0587F2:        BRA CODE_05884A           ;

CODE_0587F4:        LDY $87DE                 ;
CODE_0587F7:        LDA $EB                   ;
CODE_0587F9:        CLC                       ;
CODE_0587FA:        ADC #$0012                ;
CODE_0587FD:        TAX                       ;
CODE_0587FE:        BRA CODE_05884A           ;

CODE_058800:        LDY $87E0                 ;
CODE_058803:        LDA $EB                   ;
CODE_058805:        CLC                       ;
CODE_058806:        ADC #$0001                ;
CODE_058809:        TAX                       ;
CODE_05880A:        BRA CODE_05884A           ;

CODE_05880C:        LDY $87E2                 ;
CODE_05880F:        LDA $EB                   ;
CODE_058811:        CLC                       ;
CODE_058812:        ADC #$0011                ;
CODE_058815:        TAX                       ;
CODE_058816:        BRA CODE_05884A           ;

CODE_058818:        LDY $87E4                 ;
CODE_05881B:        LDA $EB                   ;
CODE_05881D:        CLC                       ;
CODE_05881E:        ADC #$0020                ;
CODE_058821:        TAX                       ;
CODE_058822:        BRA CODE_05884A           ;

CODE_058824:        LDY $87E6                 ;
CODE_058827:        LDX $EB                   ;
CODE_058829:        INX                       ;
CODE_05882A:        BRA CODE_05884A           ;

CODE_05882C:        LDY $87E8                 ;
CODE_05882F:        LDA $EB                   ;
CODE_058831:        CLC                       ;
CODE_058832:        ADC #$0012                ;
CODE_058835:        TAX                       ;
CODE_058836:        BRA CODE_05884A           ;

CODE_058838:        INC $EB                   ;
CODE_05883A:        LDA $EB                   ;
CODE_05883C:        CLC                       ;
CODE_05883D:        ADC #$0010                ;
CODE_058840:        TAX                       ;
CODE_058841:        BRA CODE_058847           ;

CODE_058843:        INC $EB                   ;
CODE_058845:        LDX $EB                   ;
CODE_058847:        LDY #$0000                ;
CODE_05884A:        STX $E2                   ;
CODE_05884C:        SEP #$20                  ;
CODE_05884E:        LDA $B1A5,y               ;
CODE_058851:        CMP #$FF                  ;
CODE_058853:        BEQ CODE_0588C6           ;
CODE_058855:        CMP #$FE                  ;
CODE_058857:        BEQ CODE_0588A1           ;
CODE_058859:        JSR CODE_058874           ;
CODE_05885C:        STA $7ED000,x             ;
CODE_058860:        INY                       ;
CODE_058861:        INX                       ;
CODE_058862:        REP #$20                  ;
CODE_058864:        TXA                       ;
CODE_058865:        AND #$000F                ;
CODE_058868:        BNE CODE_058870           ;
CODE_05886A:        TXA                       ;
CODE_05886B:        CLC                       ;
CODE_05886C:        ADC #$00F0                ;
CODE_05886F:        TAX                       ;
CODE_058870:        SEP #$20                  ;
CODE_058872:        BRA CODE_05884E           ;

CODE_058874:        STA $E4                   ;
CODE_058876:        CMP #$12                  ;
CODE_058878:        BNE CODE_05887D           ;
CODE_05887A:        JMP CODE_0588CB           ;

CODE_05887D:        CMP #$03                  ;
CODE_05887F:        BNE CODE_058884           ;
CODE_058881:        JMP CODE_0588F8           ;

CODE_058884:        CMP #$04                  ;
CODE_058886:        BNE CODE_05888B           ;
CODE_058888:        JMP CODE_058905           ;

CODE_05888B:        CMP #$05                  ;
CODE_05888D:        BNE CODE_058892           ;
CODE_05888F:        JMP CODE_05891A           ;

CODE_058892:        CMP #$18                  ;
CODE_058894:        BNE CODE_058899           ;
CODE_058896:        JMP CODE_05892F           ;

CODE_058899:        CMP #$07                  ;
CODE_05889B:        BNE CODE_0588A0           ;
CODE_05889D:        JMP CODE_05894C           ;

CODE_0588A0:        RTS                       ;

CODE_0588A1:        INY                       ;
CODE_0588A2:        REP #$20                  ;
CODE_0588A4:        LDA $E2                   ;
CODE_0588A6:        CLC                       ;
CODE_0588A7:        ADC #$0010                ;
CODE_0588AA:        TAX                       ;
CODE_0588AB:        AND #$00F0                ;
CODE_0588AE:        BEQ CODE_0588C6           ;
CODE_0588B0:        DEX                       ;
CODE_0588B1:        TXA                       ;
CODE_0588B2:        AND #$000F                ;
CODE_0588B5:        CMP #$000F                ;
CODE_0588B8:        BNE CODE_0588C0           ;
CODE_0588BA:        TXA                       ;
CODE_0588BB:        SEC                       ;
CODE_0588BC:        SBC #$00F0                ;
CODE_0588BF:        TAX                       ;
CODE_0588C0:        STX $E2                   ;
CODE_0588C2:        SEP #$20                  ;
CODE_0588C4:        BRA CODE_05884E           ;

CODE_0588C6:        REP #$20                  ;
CODE_0588C8:        JMP CODE_05805B           ;

CODE_0588CB:        LDA $7ED000,x             ;
CODE_0588CF:        BEQ CODE_0588F5           ;
CODE_0588D1:        CMP #$18                  ;
CODE_0588D3:        BNE CODE_0588D9           ;
CODE_0588D5:        LDA #$02                  ;
CODE_0588D7:        BRA CODE_0588F7           ;

CODE_0588D9:        CMP #$06                  ;
CODE_0588DB:        BNE CODE_0588E1           ;
CODE_0588DD:        LDA #$11                  ;
CODE_0588DF:        BRA CODE_0588F7           ;

CODE_0588E1:        CMP #$16                  ;
CODE_0588E3:        BNE CODE_0588E9           ;
CODE_0588E5:        LDA #$01                  ;
CODE_0588E7:        BRA CODE_0588F7           ;

CODE_0588E9:        CMP #$05                  ;
CODE_0588EB:        BNE CODE_0588F1           ;
CODE_0588ED:        LDA #$62                  ;
CODE_0588EF:        BRA CODE_0588F7           ;

CODE_0588F1:        LDA #$10                  ;
CODE_0588F3:        BRA CODE_0588F7           ;

CODE_0588F5:        LDA $E4                   ;
CODE_0588F7:        RTS                       ;

CODE_0588F8:        LDA $7ED000,x             ;
CODE_0588FC:        BEQ CODE_058902           ;
CODE_0588FE:        LDA #$36                  ;
CODE_058900:        BRA CODE_058904           ;

CODE_058902:        LDA $E4                   ;
CODE_058904:        RTS                       ;

CODE_058905:        LDA $7ED000,x             ;
CODE_058909:        BEQ CODE_058917           ;
CODE_05890B:        CMP #$12                  ;
CODE_05890D:        BNE CODE_058913           ;
CODE_05890F:        LDA #$14                  ;
CODE_058911:        BRA CODE_058919           ;

CODE_058913:        LDA #$37                  ;
CODE_058915:        BRA CODE_058919           ;

CODE_058917:        LDA $E4                   ;
CODE_058919:        RTS                       ;

CODE_05891A:        LDA $7ED000,x             ;
CODE_05891E:        BEQ CODE_05892C           ;
CODE_058920:        CMP #$13                  ;
CODE_058922:        BNE CODE_058928           ;
CODE_058924:        LDA #$15                  ;
CODE_058926:        BRA CODE_05892E           ;

CODE_058928:        LDA #$38                  ;
CODE_05892A:        BRA CODE_05892E           ;

CODE_05892C:        LDA $E4                   ;
CODE_05892E:        RTS                       ;

CODE_05892F:        LDA $7ED000,x             ;
CODE_058933:        BEQ CODE_058949           ;
CODE_058935:        CMP #$16                  ;
CODE_058937:        BNE CODE_05893D           ;
CODE_058939:        LDA #$1E                  ;
CODE_05893B:        BRA CODE_05894B           ;

CODE_05893D:        CMP #$13                  ;
CODE_05893F:        BNE CODE_058945           ;
CODE_058941:        LDA #$1E                  ;
CODE_058943:        BRA CODE_05894B           ;

CODE_058945:        LDA #$1D                  ;
CODE_058947:        BRA CODE_05894B           ;

CODE_058949:        LDA $E4                   ;
CODE_05894B:        RTS                       ;

CODE_05894C:        LDA $7ED000,x             ;
CODE_058950:        BEQ CODE_05896E           ;
CODE_058952:        CMP #$16                  ;
CODE_058954:        BNE CODE_05895A           ;
CODE_058956:        LDA #$0E                  ;
CODE_058958:        BRA CODE_058970           ;

CODE_05895A:        CMP #$04                  ;
CODE_05895C:        BNE CODE_058962           ;
CODE_05895E:        LDA #$70                  ;
CODE_058960:        BRA CODE_058970           ;

CODE_058962:        CMP #$0B                  ;
CODE_058964:        BNE CODE_05896A           ;
CODE_058966:        LDA #$90                  ;
CODE_058968:        BRA CODE_058970           ;

CODE_05896A:        LDA #$49                  ;
CODE_05896C:        BRA CODE_058970           ;

CODE_05896E:        LDA $E4                   ;
CODE_058970:        RTS                       ;

DATA_058971:        db $00,$00,$90,$91,$92,$93,$00,$00
                    db $94,$95,$96,$97,$00,$00,$98,$99
                    db $9A,$9B,$00,$9C,$9D,$9E,$9F,$A0
                    db $00,$A1,$A2,$A3,$A4,$A5,$00,$A6
                    db $A7,$A8,$A9,$AA,$E2,$20

CODE_058997:        LDX $EB                   ;
CODE_058999:        LDY #$0000                ;
CODE_05899C:        LDA $8971,y               ;
CODE_05899F:        STA $7ED020,x             ;
CODE_0589A3:        LDA $8972,y               ;
CODE_0589A6:        STA $7ED021,x             ;
CODE_0589AA:        LDA $8973,y               ;
CODE_0589AD:        STA $7ED022,x             ;
CODE_0589B1:        LDA $8974,y               ;
CODE_0589B4:        STA $7ED023,x             ;
CODE_0589B8:        LDA $8975,y               ;
CODE_0589BB:        STA $7ED024,x             ;
CODE_0589BF:        LDA $8976,y               ;
CODE_0589C2:        STA $7ED025,x             ;
CODE_0589C6:        REP #$20                  ;
CODE_0589C8:        TXA                       ;
CODE_0589C9:        CLC                       ;
CODE_0589CA:        ADC #$0010                ;
CODE_0589CD:        TAX                       ;
CODE_0589CE:        SEP #$20                  ;
CODE_0589D0:        INY                       ;
CODE_0589D1:        INY                       ;
CODE_0589D2:        INY                       ;
CODE_0589D3:        INY                       ;
CODE_0589D4:        INY                       ;
CODE_0589D5:        INY                       ;
CODE_0589D6:        CPY #$0024                ;
CODE_0589D9:        BNE CODE_05899C           ;
CODE_0589DB:        REP #$20                  ;
CODE_0589DD:        JMP CODE_05805B           ;

CODE_0589E0:        LDX $EB                   ;
CODE_0589E2:        SEP #$20                  ;
CODE_0589E4:        LDA #$09                  ;
CODE_0589E6:        STA $7ED020,x             ;
CODE_0589EA:        LDA #$0B                  ;
CODE_0589EC:        STA $7ED021,x             ;
CODE_0589F0:        INX                       ;
CODE_0589F1:        INX                       ;
CODE_0589F2:        DEC $F1                   ;
CODE_0589F4:        LDA $F1                   ;
CODE_0589F6:        BPL CODE_0589E4           ;
CODE_0589F8:        REP #$20                  ;
CODE_0589FA:        JMP CODE_05805B           ;

CODE_0589FD:        LDX $EB                   ;
CODE_0589FF:        SEP #$20                  ;
CODE_058A01:        LDA $7ED020,x             ;
CODE_058A05:        CMP #$09                  ;
CODE_058A07:        BNE CODE_058A0D           ;
CODE_058A09:        LDA #$0A                  ;
CODE_058A0B:        BRA CODE_058A0F           ;

CODE_058A0D:        LDA #$04                  ;
CODE_058A0F:        STA $7ED020,x             ;
CODE_058A13:        LDA #$01                  ;
CODE_058A15:        STA $7ED030,x             ;
CODE_058A19:        REP #$20                  ;
CODE_058A1B:        TXA                       ;
CODE_058A1C:        CLC                       ;
CODE_058A1D:        ADC #$0020                ;
CODE_058A20:        TAX                       ;
CODE_058A21:        SEP #$20                  ;
CODE_058A23:        DEC $F1                   ;
CODE_058A25:        LDA $F1                   ;
CODE_058A27:        BPL CODE_058A01           ;
CODE_058A29:        REP #$20                  ;
CODE_058A2B:        JMP CODE_05805B           ;

CODE_058A2E:        LDX $EB                   ;
CODE_058A30:        SEP #$20                  ;
CODE_058A32:        LDA $7ED021,x             ;
CODE_058A36:        CMP #$0B                  ;
CODE_058A38:        BNE CODE_058A3E           ;
CODE_058A3A:        LDA #$0A                  ;
CODE_058A3C:        BRA CODE_058A40           ;

CODE_058A3E:        LDA #$04                  ;
CODE_058A40:        STA $7ED021,x             ;
CODE_058A44:        LDA #$01                  ;
CODE_058A46:        STA $7ED031,x             ;
CODE_058A4A:        REP #$20                  ;
CODE_058A4C:        TXA                       ;
CODE_058A4D:        CLC                       ;
CODE_058A4E:        ADC #$0020                ;
CODE_058A51:        TAX                       ;
CODE_058A52:        SEP #$20                  ;
CODE_058A54:        DEC $F1                   ;
CODE_058A56:        LDA $F1                   ;
CODE_058A58:        BPL CODE_058A32           ;
CODE_058A5A:        REP #$20                  ;
CODE_058A5C:        JMP CODE_05805B           ;

DATA_058A5F:        db $7A,$7B,$61,$62,$8C,$8D,$90,$91
                    db $92

CODE_058A68:        LDX $EB                   ;
CODE_058A6A:        LDA #$0006                ;
CODE_058A6D:        STA $F1                   ;
CODE_058A6F:        SEP #$20                  ;
CODE_058A71:        LDA $8A5F                 ;
CODE_058A74:        STA $7ED020,x             ;
CODE_058A78:        LDA $8A60                 ;
CODE_058A7B:        STA $7ED021,x             ;
CODE_058A7F:        LDA $8A61                 ;
CODE_058A82:        STA $7ED030,x             ;
CODE_058A86:        LDA $8A62                 ;
CODE_058A89:        STA $7ED031,x             ;
CODE_058A8D:        REP #$20                  ;
CODE_058A8F:        TXA                       ;
CODE_058A90:        CLC                       ;
CODE_058A91:        ADC #$0010                ;
CODE_058A94:        TAX                       ;
CODE_058A95:        SEP #$20                  ;
CODE_058A97:        DEC $F1                   ;
CODE_058A99:        LDA $F1                   ;
CODE_058A9B:        BNE CODE_058A7F           ;
CODE_058A9D:        LDA $8A63                 ;
CODE_058AA0:        STA $7ED030,x             ;
CODE_058AA4:        LDA $8A64                 ;
CODE_058AA7:        STA $7ED031,x             ;
CODE_058AAB:        LDA $8A65                 ;
CODE_058AAE:        STA $7ED040,x             ;
CODE_058AB2:        LDA $8A66                 ;
CODE_058AB5:        STA $7ED041,x             ;
CODE_058AB9:        LDA $8A67                 ;
CODE_058ABC:        STA $7ED042,x             ;
CODE_058AC0:        REP #$20                  ;
CODE_058AC2:        JMP CODE_05805B           ;

DATA_058AC5:        db $70,$71,$72,$73,$74,$75,$76,$77
                    db $78,$79,$7A,$7B,$00,$7C,$7D,$00

CODE_058AD5:        LDX $EB                   ;
CODE_058AD7:        INX                       ;
CODE_058AD8:        SEP #$20                  ;
CODE_058ADA:        STZ $E5                   ;
CODE_058ADC:        LDY #$0000                ;
CODE_058ADF:        LDA $8AC5,y               ;
CODE_058AE2:        STA $7ED000,x             ;
CODE_058AE6:        LDA $8AC6,y               ;
CODE_058AE9:        STA $7ED001,x             ;
CODE_058AED:        LDA $8AC7,y               ;
CODE_058AF0:        STA $7ED002,x             ;
CODE_058AF4:        LDA $8AC8,y               ;
CODE_058AF7:        STA $7ED003,x             ;
CODE_058AFB:        INY                       ;
CODE_058AFC:        INY                       ;
CODE_058AFD:        INY                       ;
CODE_058AFE:        INY                       ;
CODE_058AFF:        INX                       ;
CODE_058B00:        INX                       ;
CODE_058B01:        INX                       ;
CODE_058B02:        INX                       ;
CODE_058B03:        REP #$20                  ;
CODE_058B05:        TXA                       ;
CODE_058B06:        CLC                       ;
CODE_058B07:        ADC #$000C                ;
CODE_058B0A:        TAX                       ;
CODE_058B0B:        SEP #$20                  ;
CODE_058B0D:        INC $E5                   ;
CODE_058B0F:        LDA $E5                   ;
CODE_058B11:        CMP #$04                  ;
CODE_058B13:        BNE CODE_058ADF           ;
CODE_058B15:        REP #$20                  ;
CODE_058B17:        JMP CODE_05805B           ;

DATA_058B1A:        db $2F,$30,$31,$32,$35,$36,$3A,$3B


CODE_058B22:        SEP #$20                  ;
CODE_058B24:        LDY #$0000                ;
CODE_058B27:        LDX $EB                   ;
CODE_058B29:        LDA $8B1A,y               ;
CODE_058B2C:        STA $7ED020,x             ;
CODE_058B30:        LDA $8B1B,y               ;
CODE_058B33:        STA $7ED021,x             ;
CODE_058B37:        REP #$20                  ;
CODE_058B39:        TXA                       ;
CODE_058B3A:        CLC                       ;
CODE_058B3B:        ADC #$0010                ;
CODE_058B3E:        TAX                       ;
CODE_058B3F:        SEP #$20                  ;
CODE_058B41:        INY                       ;
CODE_058B42:        INY                       ;
CODE_058B43:        CPY #$0008                ;
CODE_058B46:        BNE CODE_058B29           ;
CODE_058B48:        REP #$20                  ;
CODE_058B4A:        JMP CODE_05805B           ;

DATA_058B4D:        db $01,$1F,$02,$20

CODE_058B51:        SEP #$20                  ;
CODE_058B53:        LDX $EB                   ;
CODE_058B55:        LDY $EF                   ;
CODE_058B57:        LDA $8B4D,y               ;
CODE_058B5A:        STA $7ED020,x             ;
CODE_058B5E:        LDA $8B4F,y               ;
CODE_058B61:        STA $7ED021,x             ;
CODE_058B65:        REP #$20                  ;
CODE_058B67:        TXA                       ;
CODE_058B68:        CLC                       ;
CODE_058B69:        ADC #$0010                ;
CODE_058B6C:        TAX                       ;
CODE_058B6D:        SEP #$20                  ;
CODE_058B6F:        DEC $F1                   ;
CODE_058B71:        LDA $F1                   ;
CODE_058B73:        BPL CODE_058B57           ;
CODE_058B75:        REP #$20                  ;
CODE_058B77:        JMP CODE_05805B           ;

DATA_058B7A:        db $08,$09,$05,$06,$07,$05,$03,$04
                    db $05,$0F,$10,$11,$16,$17,$12,$1D
                    db $09,$1E,$06,$07,$05

CODE_058B8F:        SEP #$20        
CODE_058B91:        LDX $EB                   ;
CODE_058B93:        TXA                       ;
CODE_058B94:        AND #$F0                  ;
CODE_058B96:        BEQ CODE_058BB7           ;
CODE_058B98:        LDA $7ED020,x             ;
CODE_058B9C:        CMP #$0C                  ;
CODE_058B9E:        BEQ CODE_058BE3           ;
CODE_058BA0:        LDA $8B7A                 ;
CODE_058BA3:        STA $7ED020,x             ;
CODE_058BA7:        LDA $8B7B                 ;
CODE_058BAA:        STA $7ED021,x             ;
CODE_058BAE:        LDA $8B7C                 ;
CODE_058BB1:        STA $7ED022,x             ;
CODE_058BB5:        BRA CODE_058BCC           ;

CODE_058BB7:        LDA $8B80                 ;
CODE_058BBA:        STA $7ED020,x             ;
CODE_058BBE:        LDA $8B81                 ;
CODE_058BC1:        STA $7ED021,x             ;
CODE_058BC5:        LDA $8B82                 ;
CODE_058BC8:        STA $7ED022,x             ;
CODE_058BCC:        LDA $8B7D                 ;
CODE_058BCF:        STA $7ED030,x             ;
CODE_058BD3:        LDA $8B7E                 ;
CODE_058BD6:        STA $7ED031,x             ;
CODE_058BDA:        LDA $8B7F                 ;
CODE_058BDD:        STA $7ED032,x             ;
CODE_058BE1:        BRA CODE_058C43           ;

CODE_058BE3:        LDA $8B83                 ;
CODE_058BE6:        STA $7ED020,x             ;
CODE_058BEA:        LDA $8B84                 ;
CODE_058BED:        STA $7ED021,x             ;
CODE_058BF1:        LDA $8B85                 ;
CODE_058BF4:        STA $7ED022,x             ;
CODE_058BF8:        LDA $8B86                 ;
CODE_058BFB:        STA $7ED030,x             ;
CODE_058BFF:        LDA $8B87                 ;
CODE_058C02:        STA $7ED031,x             ;
CODE_058C06:        LDA $8B88                 ;
CODE_058C09:        STA $7ED032,x             ;
CODE_058C0D:        LDA $8B89                 ;
CODE_058C10:        STA $7ED040,x             ;
CODE_058C14:        LDA $8B8A                 ;
CODE_058C17:        STA $7ED041,x             ;
CODE_058C1B:        LDA $8B8B                 ;
CODE_058C1E:        STA $7ED042,x             ;
CODE_058C22:        LDA $8B8C                 ;
CODE_058C25:        STA $7ED050,x             ;
CODE_058C29:        LDA $8B8D                 ;
CODE_058C2C:        STA $7ED051,x             ;
CODE_058C30:        LDA $8B8E                 ;
CODE_058C33:        STA $7ED052,x             ;
CODE_058C37:        REP #$20                  ;
CODE_058C39:        TXA                       ;
CODE_058C3A:        CLC                       ;
CODE_058C3B:        ADC #$0020                ;
CODE_058C3E:        TAX                       ;
CODE_058C3F:        SEP #$20                  ;
CODE_058C41:        DEC $F1                   ;
CODE_058C43:        REP #$20                  ;
CODE_058C45:        TXA                       ;
CODE_058C46:        CLC                       ;
CODE_058C47:        ADC #$0020                ;
CODE_058C4A:        TAX                       ;
CODE_058C4B:        SEP #$20                  ;
CODE_058C4D:        DEC $F1                   ;
CODE_058C4F:        LDA $F1                   ;
CODE_058C51:        BMI CODE_058C56           ;
CODE_058C53:        JMP CODE_058B93           ;

CODE_058C56:        REP #$20                  ;
CODE_058C58:        JMP CODE_05805B           ;

DATA_058C5B:        db $0C,$18,$19,$0A,$0B,$0D,$0E,$13
                    db $14,$1A,$1B

CODE_058C66:        SEP #$20                  ;
CODE_058C68:        LDX $EB                   ;
CODE_058C6A:        LDA $7ED020,x             ;
CODE_058C6E:        CMP #$1F                  ;
CODE_058C70:        BNE CODE_058CAF           ;
CODE_058C72:        LDA $8C5E                 ;
CODE_058C75:        STA $7ED010,x             ;
CODE_058C79:        LDA $8C5F                 ;
CODE_058C7C:        STA $7ED011,x             ;
CODE_058C80:        LDA $8C60                 ;
CODE_058C83:        STA $7ED020,x             ;
CODE_058C87:        LDA $8C61                 ;
CODE_058C8A:        STA $7ED021,x             ;
CODE_058C8E:        LDA $8C62                 ;
CODE_058C91:        STA $7ED030,x             ;
CODE_058C95:        LDA $8C63                 ;
CODE_058C98:        STA $7ED031,x             ;
CODE_058C9C:        LDA $8C64                 ;
CODE_058C9F:        STA $7ED040,x             ;
CODE_058CA3:        LDA $8C65                 ;
CODE_058CA6:        STA $7ED041,x             ;
CODE_058CAA:        INX                       ;
CODE_058CAB:        DEC $F1                   ;
CODE_058CAD:        BRA CODE_058CC4           ;

CODE_058CAF:        LDA $8C5B                 ;
CODE_058CB2:        STA $7ED020,x             ;
CODE_058CB6:        LDA $8C5C                 ;
CODE_058CB9:        STA $7ED030,x             ;
CODE_058CBD:        LDA $8C5D                 ;
CODE_058CC0:        STA $7ED040,x             ;
CODE_058CC4:        INX                       ;
CODE_058CC5:        DEC $F1                   ;
CODE_058CC7:        LDA $F1                   ;
CODE_058CC9:        BPL CODE_058C6A           ;
CODE_058CCB:        REP #$20                  ;
CODE_058CCD:        JMP CODE_05805B           ;

DATA_058CD0:        db $33,$34,$0D,$37,$13,$3C,$1A,$1B
                    db $33,$34,$38,$39,$3D,$3E,$40,$1B

CODE_058CE0:        LDX $EB                   ;
CODE_058CE2:        SEP #$20                  ;
CODE_058CE4:        LDA $7ED020,x             ;
CODE_058CE8:        CMP #$0C                  ;
CODE_058CEA:        BEQ CODE_058D26           ;
CODE_058CEC:        LDA $8CD8                 ;
CODE_058CEF:        STA $7ED010,x             ;
CODE_058CF3:        LDA $8CD9                 ;
CODE_058CF6:        STA $7ED011,x             ;
CODE_058CFA:        LDA $8CDA                 ;
CODE_058CFD:        STA $7ED020,x             ;
CODE_058D01:        LDA $8CDB                 ;
CODE_058D04:        STA $7ED021,x             ;
CODE_058D08:        LDA $8CDC                 ;
CODE_058D0B:        STA $7ED030,x             ;
CODE_058D0F:        LDA $8CDD                 ;
CODE_058D12:        STA $7ED031,x             ;
CODE_058D16:        LDA $8CDE                 ;
CODE_058D19:        STA $7ED040,x             ;
CODE_058D1D:        LDA $8CDF                 ;
CODE_058D20:        STA $7ED041,x             ;
CODE_058D24:        BRA CODE_058D5E           ;

CODE_058D26:        LDA $8CD0                 ;
CODE_058D29:        STA $7ED010,x             ;
CODE_058D2D:        LDA $8CD1                 ;
CODE_058D30:        STA $7ED011,x             ;
CODE_058D34:        LDA $8CD2                 ;
CODE_058D37:        STA $7ED020,x             ;
CODE_058D3B:        LDA $8CD3                 ;
CODE_058D3E:        STA $7ED021,x             ;
CODE_058D42:        LDA $8CD4                 ;
CODE_058D45:        STA $7ED030,x             ;
CODE_058D49:        LDA $8CD5                 ;
CODE_058D4C:        STA $7ED031,x             ;
CODE_058D50:        LDA $8CD6                 ;
CODE_058D53:        STA $7ED040,x             ;
CODE_058D57:        LDA $8CD7                 ;
CODE_058D5A:        STA $7ED041,x             ;
CODE_058D5E:        REP #$20                  ;
CODE_058D60:        DEC $F1                   ;
CODE_058D62:        DEC $F1                   ;
CODE_058D64:        DEC $F1                   ;
CODE_058D66:        LDA $EB                   ;
CODE_058D68:        CLC                       ;
CODE_058D69:        ADC #$0030                ;
CODE_058D6C:        STA $EB                   ;
CODE_058D6E:        LDA #$0001                ;
CODE_058D71:        STA $EF                   ;
CODE_058D73:        JMP CODE_058B51           ;

DATA_058D76:        db $41,$42,$43,$44,$45,$46,$47,$48
                    db $49,$4A,$4B,$4C,$4D,$4E,$4F,$50
                    db $51,$52,$53,$54

CODE_058D8A:        SEP #$20                  ;
CODE_058D8C:        LDX $EB                   ;
CODE_058D8E:        LDY #$0000                ;
CODE_058D91:        LDA $8D76,y               ;
CODE_058D94:        STA $7ED020,x             ;
CODE_058D98:        LDA $8D77,y               ;
CODE_058D9B:        STA $7ED021,x             ;
CODE_058D9F:        LDA $8D78,y               ;
CODE_058DA2:        STA $7ED022,x             ;
CODE_058DA6:        LDA $8D79,y               ;
CODE_058DA9:        STA $7ED023,x             ;
CODE_058DAD:        REP #$20                  ;
CODE_058DAF:        TXA                       ;
CODE_058DB0:        CLC                       ;
CODE_058DB1:        ADC #$0010                ;
CODE_058DB4:        TAX                       ;
CODE_058DB5:        SEP #$20                  ;
CODE_058DB7:        INY                       ;
CODE_058DB8:        INY                       ;
CODE_058DB9:        INY                       ;
CODE_058DBA:        INY                       ;
CODE_058DBB:        CPY #$0014                ;
CODE_058DBE:        BNE CODE_058D91           ;
CODE_058DC0:        REP #$20                  ;
CODE_058DC2:        JMP CODE_05805B           ;

CODE_058DC5:        LDX $EB                   ;
CODE_058DC7:        LDA #$1B1A                ;
CODE_058DCA:        STA $7ED000,x             ;
CODE_058DCE:        JMP CODE_05805B           ;

CODE_058DD1:        INC $EB                   ;
CODE_058DD3:        LDA $EB                   ;
CODE_058DD5:        CLC                       ;
CODE_058DD6:        ADC #$0010                ;
CODE_058DD9:        TAX                       ;
CODE_058DDA:        SEP #$20                  ;
CODE_058DDC:        LDA #$67                  ;
CODE_058DDE:        STA $7ED000,x             ;
CODE_058DE2:        LDA #$69                  ;
CODE_058DE4:        STA $7ED001,x             ;
CODE_058DE8:        LDA #$68                  ;
CODE_058DEA:        STA $7ED010,x             ;
CODE_058DEE:        LDA #$6A                  ;
CODE_058DF0:        STA $7ED011,x             ;
CODE_058DF4:        REP #$20                  ;
CODE_058DF6:        JMP CODE_05805B           ;

DATA_058DF9:        db $01,$8E,$49,$8E,$55,$8E,$85,$8E
                    db $08,$09,$0D,$0E,$08,$23,$0D,$25
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

CODE_058E85:        LDA $5C                   ;
CODE_058E87:        AND #$00FF                ;
CODE_058E8A:        ASL A                     ;
CODE_058E8B:        TAX                       ;
CODE_058E8C:        LDA #$0500                ;
CODE_058E8F:        STA $D9                   ;
CODE_058E91:        LDA $8DF9,x               ;
CODE_058E94:        STA $D8                   ;
CODE_058E96:        LDA $5C                   ;
CODE_058E98:        AND #$00FF                ;
CODE_058E9B:        CMP #$0002                ;
CODE_058E9E:        BCS CODE_058EA9           ;
CODE_058EA0:        LDA $EB                   ;
CODE_058EA2:        CLC                       ;
CODE_058EA3:        ADC #$0010                ;
CODE_058EA6:        TAX                       ;
CODE_058EA7:        BRA CODE_058EAB           ;

CODE_058EA9:        LDX $EB                   ;
CODE_058EAB:        LDA $EF                   ;
CODE_058EAD:        SEC                       ;
CODE_058EAE:        SBC #$0010                ;
CODE_058EB1:        ASL A                     ;
CODE_058EB2:        ASL A                     ;
CODE_058EB3:        TAY                       ;
CODE_058EB4:        SEP #$20                  ;
CODE_058EB6:        LDA [$D8],y               ;
CODE_058EB8:        STA $7ED020,x             ;
CODE_058EBC:        INY                       ;
CODE_058EBD:        LDA [$D8],y               ;
CODE_058EBF:        STA $7ED021,x             ;
CODE_058EC3:        INY                       ;
CODE_058EC4:        LDA [$D8],y               ;
CODE_058EC6:        STA $7ED030,x             ;
CODE_058ECA:        INY                       ;
CODE_058ECB:        LDA [$D8],y               ;
CODE_058ECD:        STA $7ED031,x             ;
CODE_058ED1:        REP #$20                  ;
CODE_058ED3:        INX                       ;
CODE_058ED4:        INX                       ;
CODE_058ED5:        DEC $F1                   ;
CODE_058ED7:        LDA $F1                   ;
CODE_058ED9:        BPL CODE_058EAB           ;
CODE_058EDB:        RTS                       ;

CODE_058EDC:        STA $7ED000,x             ;
CODE_058EE0:        STA $7ED100,x             ;
CODE_058EE4:        STA $7ED200,x             ;
CODE_058EE8:        STA $7ED300,x             ;
CODE_058EEC:        STA $7ED400,x             ;
CODE_058EF0:        STA $7ED500,x             ;
CODE_058EF4:        STA $7ED600,x             ;
CODE_058EF8:        STA $7ED700,x             ;
CODE_058EFC:        STA $7ED800,x             ;
CODE_058F00:        STA $7ED900,x             ;
CODE_058F04:        STA $7EDA00,x             ;
CODE_058F08:        STA $7EDB00,x             ;
CODE_058F0C:        STA $7EDC00,x             ;
CODE_058F10:        STA $7EDD00,x             ;
CODE_058F14:        STA $7EDE00,x             ;
CODE_058F18:        RTS                       ;

CODE_058F19:        LDA $EF                   ;
CODE_058F1B:        ASL A                     ;
CODE_058F1C:        TAX                       ;
CODE_058F1D:        LDA $8F25,x               ;
CODE_058F20:        STA $00                   ;
CODE_058F22:        JMP ($0000)               ;

;Pointers to various background and HDMA routines.
PNTR_058F25:        dw CODE_0590B6                          ;$00 - Increase index to background map16 tilemap's latest written tile by 1
                    dw CODE_0590BA                          ;$01 - Handle HDMA gradient. Underwater levels use below pointer.
                    dw CODE_0590D2                          ;$02 - Enable underwater HDMA gradient
                    dw CODE_0590E9                          ;$03 - 
                    dw CODE_05910D                          ;$04 - 
                    dw CODE_059099                          ;$05 - Related to background map16 tilemap generation
                    dw CODE_05905F                          ;$06 - Fill background with repetitive rock pattern of cave background
                    dw CODE_05903D                          ;$07 - Fill top 3 rows with blank tiles for underwater levels
                    dw CODE_059004                          ;$08 - Generate the rocks of the waterfall background
                    dw CODE_058FFA                          ;$09 - Enable Layer 3 image
                    dw CODE_058F97                          ;$0A - Generate the waterfall of the waterfall background
                    dw CODE_059116                          ;$0B - Load tilemap-specific graphics?
                    dw CODE_058F6F                          ;$0C - Generate Goomba pillar background's sand

DATA_058F3F:        db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F
                    db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F
                    db $13,$14,$15,$16,$13,$14,$15,$16
                    db $13,$14,$15,$16,$13,$14,$15,$16
                    db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A
                    db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A

CODE_058F6F:        LDX #$00D0                ;
CODE_058F72:        LDY #$0000                ;
CODE_058F75:        SEP #$20                  ;
CODE_058F77:        LDA $8F3F,y               ;
CODE_058F7A:        JSR CODE_058EDC           ;
CODE_058F7D:        INX                       ;
CODE_058F7E:        INY                       ;
CODE_058F7F:        CPY #$0030                ;
CODE_058F82:        BNE CODE_058F77           ;
CODE_058F84:        REP #$20                  ;
CODE_058F86:        RTS                       ;

DATA_058F87:        db $01,$02,$03,$07,$01,$02,$03,$07
                    db $01,$02,$03,$07,$01,$02,$03,$07

CODE_058F97:        STZ $E4                   ;
CODE_058F99:        LDA $E4                   ;
CODE_058F9B:        AND #$00FF                ;
CODE_058F9E:        XBA                       ;
CODE_058F9F:        CLC                       ;
CODE_058FA0:        ADC #$00A0                ;
CODE_058FA3:        TAX                       ;
CODE_058FA4:        LDY #$0000                ;
CODE_058FA7:        SEP #$20                  ;
CODE_058FA9:        LDA $8F87,y               ;
CODE_058FAC:        STA $7ED000,x             ;
CODE_058FB0:        TXA                       ;
CODE_058FB1:        AND #$01                  ;
CODE_058FB3:        BNE CODE_058FCF           ;
CODE_058FB5:        LDA #$0C                  ;
CODE_058FB7:        STA $7ED010,x             ;
CODE_058FBB:        STA $7ED030,x             ;
CODE_058FBF:        STA $7ED050,x             ;
CODE_058FC3:        LDA #$10                  ;
CODE_058FC5:        STA $7ED020,x             ;
CODE_058FC9:        STA $7ED040,x             ;
CODE_058FCD:        BRA CODE_058FE7           ;

CODE_058FCF:        LDA #$0D                  ;
CODE_058FD1:        STA $7ED010,x             ;
CODE_058FD5:        STA $7ED030,x             ;
CODE_058FD9:        STA $7ED050,x             ;
CODE_058FDD:        LDA #$11                  ;
CODE_058FDF:        STA $7ED020,x             ;
CODE_058FE3:        STA $7ED040,x             ;
CODE_058FE7:        INX                       ;
CODE_058FE8:        INY                       ;
CODE_058FE9:        TYA                       ;
CODE_058FEA:        AND #$0F                  ;
CODE_058FEC:        BNE CODE_058FA9           ;
CODE_058FEE:        REP #$20                  ;
CODE_058FF0:        INC $E4                   ;
CODE_058FF2:        LDA $E4                   ;
CODE_058FF4:        CMP #$0006                ;
CODE_058FF7:        BNE CODE_058F99           ;
CODE_058FF9:        RTS                       ;

CODE_058FFA:        SEP #$20                  ;
CODE_058FFC:        LDA $F1                   ;
CODE_058FFE:        STA $0EDC                 ;
CODE_059001:        REP #$20                  ;
CODE_059003:        RTS                       ;

CODE_059004:        LDX #$0080                ;
CODE_059007:        LDA #$0403                ;
CODE_05900A:        STA $7ED000,x             ;
CODE_05900E:        LDA #$0909                ;
CODE_059011:        STA $7ED010,x             ;
CODE_059015:        STA $7ED020,x             ;
CODE_059019:        STA $7ED030,x             ;
CODE_05901D:        STA $7ED040,x             ;
CODE_059021:        STA $7ED050,x             ;
CODE_059025:        STA $7ED060,x             ;
CODE_059029:        INX                       ;
CODE_05902A:        INX                       ;
CODE_05902B:        TXA                       ;
CODE_05902C:        AND #$000F                ;
CODE_05902F:        BNE CODE_059007           ;
CODE_059031:        TXA                       ;
CODE_059032:        CLC                       ;
CODE_059033:        ADC #$00F0                ;
CODE_059036:        TAX                       ;
CODE_059037:        CPX #$1000                ;
CODE_05903A:        BCC CODE_059007           ;
CODE_05903C:        RTS                       ;

;Part of underwater background generation routine
CODE_05903D:        LDX #$0000                ;\
CODE_059040:        LDA #$0202                ; |
CODE_059043:        JSR CODE_058EDC           ; |
CODE_059046:        INX                       ; | Fill the top 2 rows with blank tiles
CODE_059047:        INX                       ; |
CODE_059048:        CPX #$0020                ; |
CODE_05904B:        BNE CODE_059043           ;/
CODE_05904D:        LDA #$0101                ;\
CODE_059050:        JSR CODE_058EDC           ; |
CODE_059053:        INX                       ; |
CODE_059054:        INX                       ; | Fill the 3rd row with some transition tile into the water.
CODE_059055:        CPX #$0030                ; |
CODE_059058:        BNE CODE_059050           ;/
CODE_05905A:        RTS                       ;

DATA_05905B:        db $03,$05,$1D,$02        ;BG map16 tiles to fill the entire cave BG with (the repetitive rocks)

;Part of underground background generation routine
CODE_05905F:        LDX #$0000                ;
CODE_059062:        SEP #$20                  ;
CODE_059064:        LDA $905B                 ;
CODE_059067:        STA $7ED000,x             ;
CODE_05906B:        LDA $905C                 ;
CODE_05906E:        STA $7ED001,x             ;
CODE_059072:        LDA $905D                 ;
CODE_059075:        STA $7ED010,x             ;
CODE_059079:        LDA $905E                 ;
CODE_05907C:        STA $7ED011,x             ;
CODE_059080:        INX                       ;
CODE_059081:        INX                       ;
CODE_059082:        TXA                       ;
CODE_059083:        AND #$0F                  ;
CODE_059085:        BNE CODE_059064           ;
CODE_059087:        REP #$20                  ;
CODE_059089:        TXA                       ;
CODE_05908A:        CLC                       ;
CODE_05908B:        ADC #$0010                ;
CODE_05908E:        TAX                       ;
CODE_05908F:        SEP #$20                  ;
CODE_059091:        CPX #$0800                ;
CODE_059094:        BNE CODE_059064           ;
CODE_059096:        REP #$20                  ;
CODE_059098:        RTS                       ;

CODE_059099:        SEP #$20                  ;
CODE_05909B:        LDA $5C                   ;\
CODE_05909D:        CMP #$02                  ; |If map type is underground, branch
CODE_05909F:        BEQ CODE_0590A5           ;/
CODE_0590A1:        LDA #$5F                  ;\Executes when castle level
CODE_0590A3:        BRA CODE_0590A7           ;/Fill the background's top area with black map16 tiles.

CODE_0590A5:        LDA #$00                  ;Load background black map16 tile.
CODE_0590A7:        LDX #$0000                ;\
CODE_0590AA:        JSR CODE_058EDC           ; |
CODE_0590AD:        INX                       ; |Fill the background's top 2 rows with black tiles loaded in accumulator
CODE_0590AE:        CPX #$0020                ; |
CODE_0590B1:        BNE CODE_0590AA           ; |
CODE_0590B3:        REP #$20                  ; |
CODE_0590B5:        RTS                       ;/

CODE_0590B6:        INC $0EC0                 ;\ Increase index to the latest background map16 byte written to RAM $7ED000.
CODE_0590B9:        RTS                       ;/

CODE_0590BA:        SEP #$30                  ;\ Enable HDMA depending on $F1: HDMA gradient type
CODE_0590BC:        LDA $F1                   ; |
CODE_0590BE:        CMP #$02                  ; |
CODE_0590C0:        BNE CODE_0590C4           ; |
CODE_0590C2:        LDA #$FF                  ; |
CODE_0590C4:        CMP #$01                  ; |
CODE_0590C6:        BNE CODE_0590CB           ; |
CODE_0590C8:        STA $0ED1                 ; |
CODE_0590CB:        JSL CODE_04825E           ; |<-- HDMA enable routine
CODE_0590CF:        REP #$30                  ; |
CODE_0590D1:        RTS                       ;/

CODE_0590D2:        SEP #$30                  ;\
CODE_0590D4:        LDA #$02                  ; |
CODE_0590D6:        JSL CODE_04825E           ; |Enable underwater HDMA gradient (without the up/down movement, just the color definition)
CODE_0590DA:        REP #$30                  ; |
CODE_0590DC:        RTS                       ;/

DATA_0590DD:        db $0F,$20,$1B,$37,$58,$C9,$1F,$29
                    db $1C,$38,$57,$CA

CODE_0590E9:        LDX #$00D0                ;
CODE_0590EC:        LDY $F1                   ;
CODE_0590EE:        LDA $90DD,y               ;
CODE_0590F1:        JSR CODE_058EDC           ;
CODE_0590F4:        INX                       ;
CODE_0590F5:        CPX #$00E0                ;
CODE_0590F8:        BNE CODE_0590F1           ;
CODE_0590FA:        LDA $90E3,y               ;
CODE_0590FD:        JSR CODE_058EDC           ;
CODE_059100:        INX                       ;
CODE_059101:        CPX #$00F0                ;
CODE_059104:        BNE CODE_0590FD           ;
CODE_059106:        LDA #$0050                ;
CODE_059109:        JSR CODE_058EDC           ;
CODE_05910C:        RTS                       ;

CODE_05910D:        LDA $F1                   ;
CODE_05910F:        STA $99                   ;
CODE_059111:        JSL CODE_05E6B1           ;
CODE_059115:        RTS                       ;

CODE_059116:        LDA $F1                   ;
CODE_059118:        ORA #$0010                ;
CODE_05911B:        STA $99                   ;
CODE_05911D:        JSL CODE_05E6B1           ;
CODE_059121:        RTS                       ;

DATA_059122:        dw $0000,$0000,$0009,$0004              ;index to layer 2 background pointers
                    dw $0006,$0001,$0004,$0004              ;this is indexed by $7E00DB
                    dw $0001,$0008,$000A,$0001              ;
                    dw $0001,$0001,$0001,$0007              ;See the RAM map for the list of backgrounds
                    dw $0004,$0004,$0007,$0001              ;
                    dw $0001,$0001,$0001,$0001              ;
                    dw $0004,$0002,$0002,$0001              ;
                    dw $0003,$0003,$0003,$0003              ;
                    dw $0003,$0005                          ;

;Routine to build the map16 pages of the layer 2 backgrounds
;It's actually not for the map16 tilemap which build the backgrounds.
CODE_059166:        LDA $DB                   ;\ Load background number
CODE_059168:        ASL A                     ; |to index
CODE_059169:        TAX                       ; |
CODE_05916A:        LDA $9122,x               ; |Load index to layer 2 background pointer
CODE_05916D:        ASL A                     ; |
CODE_05916E:        TAX                       ; |
CODE_05916F:        LDA $91CE,x               ; |Store pointer to $00-$02. $02 is hardcoded to bank 5
CODE_059172:        STA $00                   ; |
CODE_059174:        LDA #$0005                ; |
CODE_059177:        STA $02                   ;/
CODE_059179:        LDX #$0000                ;Index to RAM?
CODE_05917C:        LDY #$0000                ;Loop count
CODE_05917F:        STX $E4                   ;\Start loop
CODE_059181:        TYX                       ; |
CODE_059182:        LDA $7ED000,x             ; |
CODE_059186:        CMP #$FFFF                ; |If the background map16 tilemap is $FFFF
CODE_059189:        BEQ CODE_0591CA           ;/Stop uploading tiles.
CODE_05918B:        PHY                       ;\
CODE_05918C:        LDX $E4                   ; |
CODE_05918E:        AND #$00FF                ; |
CODE_059191:        ASL A                     ; |
CODE_059192:        ASL A                     ; |Upload background data by copying -MAP16- data
CODE_059193:        ASL A                     ; |to the -VRAM tilemap- located in the -RAM-
CODE_059194:        TAY                       ; |
CODE_059195:        LDA [$00],y               ; |
CODE_059197:        STA $7E2000,x             ; |
CODE_05919B:        INY                       ; |
CODE_05919C:        INY                       ; |
CODE_05919D:        LDA [$00],y               ; |
CODE_05919F:        STA $7E2002,x             ; |
CODE_0591A3:        INY                       ; |
CODE_0591A4:        INY                       ; |
CODE_0591A5:        LDA [$00],y               ; |
CODE_0591A7:        STA $7E2040,x             ; |
CODE_0591AB:        INY                       ; |
CODE_0591AC:        INY                       ; |
CODE_0591AD:        LDA [$00],y               ; |
CODE_0591AF:        STA $7E2042,x             ; |
CODE_0591B3:        PLY                       ; |
CODE_0591B4:        INY                       ; |
CODE_0591B5:        TYA                       ; |
CODE_0591B6:        AND #$000F                ; |
CODE_0591B9:        BNE CODE_0591C1           ;/
CODE_0591BB:        TXA                       ;
CODE_0591BC:        CLC                       ;
CODE_0591BD:        ADC #$0040                ;
CODE_0591C0:        TAX                       ;
CODE_0591C1:        INX                       ;
CODE_0591C2:        INX                       ;
CODE_0591C3:        INX                       ;
CODE_0591C4:        INX                       ;
CODE_0591C5:        CPY #$1000                ;\read full map16 (?) ($0FFF bytes). If not done yet, loop
CODE_0591C8:        BNE CODE_05917F           ;/
CODE_0591CA:        SEP #$30                  ;
CODE_0591CC:        PLB                       ;
CODE_0591CD:        RTL                       ;

DATA_0591CE:        dw $9A2C,$9C2C,$AC14,$A614 ;pointers to various background map16 data
                    dw $A364,$972C,$9564,$94EC ;indexed by $DB's indexes
                    dw $944C,$A4C4,$92A4

DATA_0591E4:        db $00,$00,$00,$11,$00,$00,$00,$1F ;background map16 tiles
                    db $00,$00,$00,$0C,$00,$12,$00,$00 ;format: TTTTTTTT YXPCCCTT
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

DATA_0592A4:        db $24,$00,$24,$00,$24,$00,$24,$00 ;
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

DATA_05944C:        db $24,$00,$24,$00,$24,$00,$24,$00
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

DATA_0594EC:        db $24,$00,$24,$00,$24,$00,$24,$00
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

DATA_059564:        db $24,$00,$24,$00,$24,$00,$24,$00
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

DATA_05972C:        db $34,$15,$34,$15,$34,$15,$34,$15
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

DATA_059A2C:        db $24,$00,$24,$00,$24,$00,$24,$00
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

DATA_059C2C:        db $24,$10,$24,$10,$24,$10,$24,$10
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

DATA_05A364:        db $24,$00,$24,$00,$24,$00,$24,$00
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

DATA_05A4C4:        db $24,$00,$24,$00,$24,$00,$24,$00
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

DATA_05A614:        db $34,$15,$34,$15,$34,$15,$34,$15 ;Castle background map16 tiles
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

DATA_05AC14:        db $0E,$15,$0F,$15,$1E,$15,$1F,$15
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

DATA_05AD04:        dw $0000,$0036,$00C6,$00D8              ;Indices to $05B557
                    dw $01B8,$022A,$0264,$040E
                    dw $05B8,$05EA,$0610,$064C
                    dw $067A,$0686,$06B8,$06C6
                    dw $072A,$080A,$09B4,$09D0
                    dw $0A22,$0A54,$0A78,$0AAA
                    dw $0AB6,$0C60,$0D50,$0E40
                    dw $0E58,$0EBC,$0F26,$0F8A
                    dw $0FEE,$1060

DATA_05AD48:        db $FE,$00,$B9,$B8,$B6,$FE,$00,$BE
                    db $C3,$C6,$FE,$B4,$B1,$BC,$BD,$B0
                    db $B5,$FE,$C0,$C1,$C0,$C1,$C0,$C4
                    db $FE,$B2,$B3,$B2,$B3,$B2,$B3,$B6
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6
                    db $FF,$FE,$B9,$B8,$FE,$BE,$C3,$FE
                    db $BE,$C3,$FF,$FE,$00,$00,$BA,$B0
                    db $B5,$FE,$00,$BF,$C1,$C0,$C4

DATA_05AD8F:        db $FE,$00,$B9,$B3,$B2,$B3,$B6,$FE
                    db $00,$BE,$C3,$C2,$C3,$C6,$FE,$00
                    db $BA,$BC,$BD,$BC,$BD,$B0,$B5,$FE
                    db $BF,$C1,$C0,$C1,$C0,$C1,$C0,$C4
                    db $FE,$B9,$B3,$B2,$B3,$B2,$B3,$B2
                    db $B3,$FE,$BE,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$FE,$BE,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$FF,$FE,$00,$00,$00
                    db $00,$C7,$FE,$00,$00,$00,$BF,$C4
                    db $FE,$00,$00,$00,$B9,$B3,$B6,$00
                    db $B9,$B8,$BB,$B8,$B6,$FE,$00,$00
                    db $00,$BE,$C3,$C6,$00,$BE,$C3,$C2
                    db $C3,$C6,$FE,$00,$00,$B4,$B1,$BC
                    db $BD,$B0,$B1,$BC,$BD,$BC,$BD,$B0
                    db $B5,$FE,$00,$00,$C0,$C1,$C0,$C1
                    db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C4
                    db $FE,$B9,$B8,$B2,$B3,$B2,$B3,$B2
                    db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$FE
                    db $BE,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$FE,$BE
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$FF,$FE,$00
                    db $00,$00,$00,$C7,$FE,$00,$00,$00
                    db $BF,$C4,$FE,$00,$B9,$B8,$BB,$B3
                    db $BB,$B8,$B6,$FE,$00,$BE,$C3,$C2
                    db $C3,$C2,$C3,$C6,$FE,$B4,$B1,$BC
                    db $BD,$BC,$BD,$BC,$BD,$B0,$B5,$FE
                    db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1
                    db $C0,$C4,$FE,$B2,$B3,$B2,$B3,$B2
                    db $B3,$B2,$B3,$B2,$B3,$FE,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$FF,$FE,$B6,$FE,$C6
                    db $FE,$C6,$FF,$FE,$B4,$B1,$FE,$C0
                    db $C1,$FE,$B2,$B3,$FE,$C2,$C3,$FE
                    db $C2,$C3,$FF,$FE,$00,$00,$00,$00
                    db $00,$B9,$B8,$B6,$FE,$00,$00,$00
                    db $00,$00,$BE,$C3,$C6,$FE,$00,$00
                    db $00,$00,$B4,$B1,$BC,$BD,$B0,$B5
                    db $FE,$00,$00,$00,$00,$C0,$C1,$C0
                    db $C1,$C0,$C4,$FE,$B9,$B8,$BB,$B8
                    db $B2,$B3,$B2,$B3,$B2,$B3,$FE,$BE
                    db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$FE,$BE,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$FF,$FE,$00,$00
                    db $00,$00,$C7,$00,$C7,$FE,$00,$00
                    db $00,$BF,$C4,$BF,$C4,$FE,$00,$B9
                    db $B8,$BB,$B3,$BB,$B3,$B6,$FE,$00
                    db $BE,$C3,$C2,$C3,$C2,$C3,$C6,$FE
                    db $B4,$B1,$BC,$BD,$BC,$BD,$BC,$BD
                    db $B0,$B5,$FE,$C0,$C1,$C0,$C1,$C0
                    db $C1,$C0,$C1,$C0,$C4,$FE,$B2,$B3
                    db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2
                    db $C3,$C2,$C3,$FE,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$FF,$FE
                    db $00,$00,$BA,$B0,$B5,$00,$00,$00
                    db $C7,$FE,$00,$BF,$C1,$C0,$C4,$00
                    db $00,$BF,$C4,$FE,$00,$B9,$B3,$B2
                    db $B3,$B6,$00,$B9,$B3,$BB,$B8,$B6
                    db $FE,$00,$BE,$C3,$C2,$C3,$C6,$00
                    db $BE,$C3,$C2,$C3,$C6,$FE,$B4,$B1
                    db $BC,$BD,$BC,$BD,$B0,$B1,$BC,$BD
                    db $BC,$BD,$B0,$B1,$B0,$B5,$FE,$C0
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C1,$C0
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE
                    db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3
                    db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3
                    db $B6,$FE,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C6,$FE,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C6,$FF,$FE,$00
                    db $00,$00,$00,$C7,$FE,$00,$00,$00
                    db $BF,$C4,$FE,$00,$B9,$B8,$BB,$B3
                    db $B6,$FE,$00,$BE,$C3,$C2,$C3,$C6
                    db $FE,$B4,$B1,$BC,$BD,$BC,$BD,$B0
                    db $B5,$FE,$C0,$C1,$C0,$C1,$C0,$C1
                    db $C0,$C4,$FE,$B2,$B3,$B2,$B3,$B2
                    db $B3,$B2,$B3,$FE,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$FE,$C2,$C3,$C2
                    db $C3,$C2,$C3,$C2,$C3,$FF,$FE,$B4
                    db $B1,$B0,$B5,$FE,$C0,$C1,$C0,$C8
                    db $FE,$B2,$B3,$B2,$B3,$B6,$FE,$C2
                    db $C3,$C2,$C3,$C6,$FE,$C2,$C3,$C2
                    db $C3,$C6,$FF,$FE,$00,$00,$00,$00
                    db $00,$B4,$B5,$00,$C7,$B4,$B5,$FE
                    db $00,$00,$00,$00,$00,$C0,$C8,$BF
                    db $C8,$C0,$C8,$FE,$00,$00,$00,$B9
                    db $B8,$B2,$B3,$BB,$B3,$B2,$B3,$B6
                    db $FE,$00,$00,$00,$BE,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C6,$FE,$00,$BA
                    db $B0,$B1,$BC,$BD,$BC,$BD,$BC,$BD
                    db $BC,$BD,$B0,$B5,$FE,$BF,$C1,$C0
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C1,$C0
                    db $C1,$C0,$C4,$FE,$B9,$B3,$B2,$B3
                    db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3
                    db $B2,$B3,$BB,$B8,$B6,$FE,$BE,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C6,$FE
                    db $BE,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C6,$FF,$FE,$00,$00,$B4,$B1,$B0
                    db $B5,$FE,$00,$00,$C0,$C1,$C0,$C4
                    db $FE,$BB,$B8,$B2,$B3,$B2,$B3,$B6
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6
                    db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6
                    db $FF,$FE,$00,$00,$00,$00,$00,$00
                    db $00,$C7,$FE,$00,$00,$00,$00,$00
                    db $00,$BF,$C4,$FE,$00,$00,$B9,$B8
                    db $B6,$00,$B9,$B3,$BB,$B8,$B6,$FE
                    db $00,$00,$BE,$C3,$C6,$00,$BE,$C3
                    db $C2,$C3,$C6,$FE,$00,$00,$BA,$BC
                    db $BD,$B0,$B1,$BC,$BD,$BC,$BD,$B0
                    db $B5,$FE,$00,$BF,$C1,$C0,$C1,$C0
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE
                    db $00,$B9,$B3,$B2,$B3,$B2,$B3,$B2
                    db $B3,$B2,$B3,$B2,$B3,$B6,$FE,$00
                    db $BE,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C6,$FE,$B4,$B1
                    db $BC,$BD,$BC,$BD,$BC,$BD,$BC,$BD
                    db $BC,$BD,$BC,$BD,$B0,$B5,$FE,$C0
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C1,$C0
                    db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE
                    db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3
                    db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3
                    db $B6,$FE,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C6,$FE,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3
                    db $C2,$C3,$C2,$C3,$C6,$FF

DATA_05B1A5:        db $03,$04,$05,$FE,$12,$13,$16,$06
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
                    db $16,$16,$16,$16,$20,$FF,$1A,$1B
                    db $FE,$01,$02,$FE,$01,$02,$FE,$01
                    db $02,$FE,$01,$02,$FE,$01,$02,$FE
                    db $01,$02,$FE,$01,$26,$FE,$2C,$2D
                    db $FE,$30,$31,$32,$FF,$04,$05,$06
                    db $07,$FE,$0D,$0E,$0F,$10,$FE,$16
                    db $17,$18,$19,$FE,$1E,$1F,$20,$21
                    db $FE,$1E,$17,$18,$21,$FE,$27,$1F
                    db $28,$29,$FF,$FE,$11,$14,$FE,$1C
                    db $1D,$FF,$FE,$22,$23,$FE,$24,$25
                    db $FE,$2A,$2B,$FE,$2E,$2F,$FE,$33
                    db $34,$FF,$FE,$41,$42,$43,$44,$FE
                    db $45,$46,$47,$48,$FE,$49,$4A,$4B
                    db $4C,$FE,$4D,$4E,$4F,$50,$FE,$51
                    db $52,$53,$54,$FF,$FE,$0C,$0C,$0C
                    db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
                    db $0C,$0C,$0C,$0C,$0C,$FE,$12,$13
                    db $12,$13,$12,$13,$12,$13,$12,$13
                    db $12,$13,$12,$13,$12,$13,$FE,$36
                    db $37,$38,$36,$39,$3A,$3B,$3B,$36
                    db $3A,$3B,$3B,$3B,$36,$3A,$38,$FE
                    db $3C,$3D,$3E,$3C,$3F,$3D,$3E,$3E
                    db $3C,$3D,$3E,$3E,$3E,$3C,$3D,$3E
                    db $FF,$22,$23,$FE,$24,$25,$FE,$2A
                    db $2B,$FE,$33,$34,$FF,$08,$FE,$0C
                    db $FF,$14,$15,$16,$17,$FE,$1D,$1E
                    db $1F,$20,$FE,$1D,$1E,$1F,$20,$FE
                    db $1D,$2A,$2B,$20,$FF,$18,$19,$1A
                    db $1B,$FE,$21,$22,$23,$24,$FE,$21
                    db $22,$23,$24,$FE,$21,$22,$23,$24
                    db $FF,$00,$00,$00,$00,$01,$02,$FE
                    db $00,$00,$01,$03,$05,$06,$04,$02
                    db $FE,$01,$03,$05,$09,$09,$09,$09
                    db $06,$04,$02,$FE,$05,$09,$09,$09
                    db $09,$09,$09,$09,$09,$06,$FF,$01
                    db $03,$04,$03,$04,$02,$FE,$07,$08
                    db $09,$09,$08,$0A,$FE,$0B,$0C,$09
                    db $09,$0C,$0D,$0E,$FE,$11,$09,$09
                    db $09,$09,$12,$13,$FE,$11,$18,$19
                    db $1A,$1B,$12,$13,$FE,$11,$21,$22
                    db $23,$24,$12,$13,$FE,$11,$21,$22
                    db $23,$24,$12,$13,$FE,$11,$21,$22
                    db $23,$24,$12,$13,$FF,$02,$10,$10
                    db $10,$10,$10,$10,$10,$10,$10,$10
                    db $10,$10,$10,$10,$01,$FE,$35,$04
                    db $03,$04,$03,$04,$03,$04,$03,$04
                    db $03,$04,$03,$04,$03,$36,$FF,$00
                    db $00,$00,$00,$00,$00,$00,$07,$01
                    db $02,$03,$04,$01,$02,$03,$04,$00
                    db $00,$00,$00,$00,$00,$10,$11,$0A
                    db $0B,$0C,$0D,$0A,$0B,$0C,$0D,$00
                    db $00,$17,$18,$00,$00,$19,$15,$16
                    db $12,$14,$15,$16,$12,$14,$15,$23
                    db $24,$25,$22,$23,$24,$25,$1F,$20
                    db $21,$1E,$1F,$20,$21,$1E,$1F,$FF
                    db $08,$09,$03,$04,$05,$06,$00,$00
                    db $00,$00,$00,$07,$08,$09,$03,$04
                    db $0A,$0B,$0C,$0D,$0E,$0F,$00,$00
                    db $00,$00,$10,$11,$0A,$0B,$0C,$0D
                    db $16,$12,$14,$15,$16,$12,$17,$18
                    db $00,$00,$19,$15,$16,$12,$14,$15
                    db $20,$21,$1E,$1F,$20,$21,$1E,$22
                    db $23,$24,$25,$1F,$20,$21,$1E,$26
                    db $FF,$01,$02,$03,$04,$08,$09,$03
                    db $04,$05,$06,$00,$07,$08,$09,$03
                    db $29,$0A,$0B,$0C,$0D,$0A,$0B,$0C
                    db $0D,$0E,$0F,$10,$11,$0A,$0B,$0C
                    db $0D,$0A,$12,$13,$0D,$0A,$12,$14
                    db $15,$16,$12,$14,$15,$16,$12,$14
                    db $15,$1A,$1B,$1C,$1D,$1A,$1B,$1E
                    db $1F,$20,$21,$1E,$1F,$20,$21,$1E
                    db $1F,$FF

DATA_05B557:        dw $E091,$E070,$E048,$E020
                    dw $6900,$8163,$8970,$9180
                    dw $9510,$9920,$9D30,$A193
                    dw $B1A0,$B572,$E000,$81B0
                    dw $85D0,$8962,$9580,$A1C0
                    dw $A593,$B5A0,$B961,$6830
                    dw $7010,$9830,$E3F0

DATA_05B58D:        dw $E091,$E070,$E048,$E020
                    dw $6900,$8163,$8970,$9180
                    dw $9510,$9920,$9D30,$A193
                    dw $B1A0,$B572,$E000,$81B0
                    dw $85D0,$8962,$9580,$A1C0
                    dw $A593,$B5A0,$B961,$6830
                    dw $7010,$9830,$E000,$6910
                    dw $6D21,$7530,$79B0,$7DD0
                    dw $81B0,$85D0,$8973,$99C0
                    dw $9D90,$A1C0,$A596,$5C30
                    dw $E000,$6160,$6580,$6910
                    dw $6D22,$7930,$8190,$85A0
                    dw $8974,$9D60,$A197,$4010
                    dw $E000,$8160,$8580,$9940
                    dw $9D50,$A190,$A5A0,$A980
                    dw $B5B0,$B9F0,$BD70,$6010
                    dw $AC10,$E000,$8207,$A177
                    dw $E000,$8207,$A177,$E3F0

DATA_05B61D:        dw $E091,$E04F,$E020,$8000
                    dw $E000,$8001,$E000,$8002
                    dw $E3F0

DATA_06B62F:        dw $E04B,$E011,$0010,$0C11
                    dw $1012,$1C13,$2414,$2815
                    dw $3016,$4C16,$5417,$5C18
                    dw $6019,$641A,$681B,$6C1C
                    dw $7816,$801D,$901E,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$E000,$0010,$0C11
                    dw $1012,$1C13,$2414,$2815
                    dw $3016,$4C16,$5417,$5C18
                    dw $6019,$641A,$681B,$6C1C
                    dw $7816,$801D,$901E,$E000
                    dw $0030,$1831,$2020,$2432
                    dw $2C1B,$3023,$3833,$4034
                    dw $4835,$5436,$5837,$5C38
                    dw $6439,$683A,$6C3B,$703C
                    dw $743D,$783E,$943F,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$E000,$181F,$2020
                    dw $2421,$2C22,$3023,$3820
                    dw $4024,$5025,$5826,$5C27
                    dw $6428,$6C29,$742A,$782B
                    dw $882C,$902D,$982F,$E3F0

DATA_05B70F:        dw $E091,$E010,$E04C,$E080
                    dw $A010,$A420,$B010,$B420
                    dw $BC10,$A850,$E000,$A020
                    dw $A810,$AC20,$B810,$BC20
                    dw $B050,$4870,$E000,$A020
                    dw $A810,$AC20,$B410,$B820
                    dw $7C80,$E000,$AC10,$B020
                    dw $B810,$BC20,$E000,$A410
                    dw $A820,$B010,$B420,$BC50
                    dw $9090,$E000,$A810,$AC20
                    dw $B410,$B820,$E000,$A010
                    dw $A420,$B010,$B420,$BC10
                    dw $A860,$E000,$A020,$AC10
                    dw $B020,$B810,$BC20,$A460
                    dw $E3F0

DATA_05B781:        dw $E091,$E042,$E010,$B050
                    dw $B080,$E000,$6C70,$6C90
                    dw $A0F3,$E000,$7460,$74B0
                    dw $AC40,$ACA0,$E000,$8060
                    dw $80B0,$A4F9,$E000,$E000
                    dw $9060,$4060,$40C0,$B4F2
                    dw $E000,$3870,$38E0,$A4F4
                    dw $E3F0

DATA_05B7BB:        dw $E011,$E04B,$E031,$0010
                    dw $0C11,$1012,$1C13,$2414
                    dw $2815,$3016,$4C16,$5417
                    dw $5C18,$6019,$641A,$681B
                    dw $6C1C,$7816,$801D,$901E
                    dw $8107,$8510,$9911,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$8107,$8510,$9910
                    dw $E000,$0010,$0C11,$1012
                    dw $1C13,$2414,$2815,$3016
                    dw $4C16,$5417,$5C18,$6019
                    dw $641A,$681B,$6C1C,$7816
                    dw $801D,$901E,$8107,$8510
                    dw $9911,$E000,$181F,$2020
                    dw $2421,$2C22,$3023,$3820
                    dw $4024,$5025,$5826,$5C27
                    dw $6428,$6C29,$742A,$782B
                    dw $882C,$902D,$982F,$8107
                    dw $8510,$9910,$E000,$0030
                    dw $1831,$2020,$2432,$2C1B
                    dw $3023,$3833,$4034,$4835
                    dw $5436,$5837,$5C38,$6439
                    dw $683A,$6C3B,$703C,$743D
                    dw $783E,$943F,$8107,$8911
                    dw $9910,$E000,$181F,$2020
                    dw $2421,$2C22,$3023,$3820
                    dw $4024,$5025,$5826,$5C27
                    dw $6428,$6C29,$742A,$782B
                    dw $882C,$902D,$982F,$8107
                    dw $8510,$9910,$0010,$0C11
                    dw $1012,$1C13,$2414,$2815
                    dw $3016,$4C16,$5417,$5C18
                    dw $6019,$641A,$681B,$6C1C
                    dw $7816,$801D,$901E,$8107
                    dw $8510,$9911,$E000,$181F
                    dw $2020,$2421,$2C22,$3023
                    dw $3820,$4024,$5025,$5826
                    dw $5C27,$6428,$6C29,$742A
                    dw $782B,$882C,$902D,$982F
                    dw $8107,$8510,$9910,$0010
                    dw $0C11,$1012,$1C13,$2414
                    dw $2815,$3016,$4C16,$5417
                    dw $5C18,$6019,$641A,$681B
                    dw $6C1C,$7816,$801D,$901E
                    dw $8107,$8510,$9911,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$8107,$8510,$9910
                    dw $E3F0

DATA_05B965:        dw $E011,$E047,$E031,$0010
                    dw $0C11,$1012,$1C13,$2414
                    dw $2815,$3016,$4C16,$5417
                    dw $5C18,$6019,$641A,$681B
                    dw $6C1C,$7816,$801D,$901E
                    dw $8107,$8510,$9911,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$8107,$8510,$9910
                    dw $E000,$0010,$0C11,$1012
                    dw $1C13,$2414,$2815,$3016
                    dw $4C16,$5417,$5C18,$6019
                    dw $641A,$681B,$6C1C,$7816
                    dw $801D,$901E,$8107,$8510
                    dw $9911,$E000,$181F,$2020
                    dw $2421,$2C22,$3023,$3820
                    dw $4024,$5025,$5826,$5C27
                    dw $6428,$6C29,$742A,$782B
                    dw $882C,$902D,$982F,$8107
                    dw $8510,$9910,$E000,$0030
                    dw $1831,$2020,$2432,$2C1B
                    dw $3023,$3833,$4034,$4835
                    dw $5436,$5837,$5C38,$6439
                    dw $683A,$6C3B,$703C,$743D
                    dw $783E,$943F,$8107,$8911
                    dw $9910,$E000,$181F,$2020
                    dw $2421,$2C22,$3023,$3820
                    dw $4024,$5025,$5826,$5C27
                    dw $6428,$6C29,$742A,$782B
                    dw $882C,$902D,$982F,$8107
                    dw $8510,$9910,$0010,$0C11
                    dw $1012,$1C13,$2414,$2815
                    dw $3016,$4C16,$5417,$5C18
                    dw $6019,$641A,$681B,$6C1C
                    dw $7816,$801D,$901E,$8107
                    dw $8510,$9911,$E000,$181F
                    dw $2020,$2421,$2C22,$3023
                    dw $3820,$4024,$5025,$5826
                    dw $5C27,$6428,$6C29,$742A
                    dw $782B,$882C,$902D,$982F
                    dw $8107,$8510,$9910,$0010
                    dw $0C11,$1012,$1C13,$2414
                    dw $2815,$3016,$4C16,$5417
                    dw $5C18,$6019,$641A,$681B
                    dw $6C1C,$7816,$801D,$901E
                    dw $8107,$8510,$9911,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$8107,$8510,$9910
                    dw $E3F0

DATA_05BB0F:        dw $E091,$E042,$E010,$A850
                    dw $A880,$E000,$8C60,$8CB0
                    dw $E000,$A850,$A880,$E000
                    dw $7070,$7090,$A850,$A8B0
                    dw $9C70,$E000,$E000,$A840
                    dw $A8A0,$E000,$2470,$24E0
                    dw $E3F0

DATA_05BB41:        dw $E091,$E04E,$E010,$E0A0
                    dw $A803,$BC00,$E000,$A802
                    dw $E000,$A400,$AC01,$E000
                    dw $A803,$E000,$A401,$AC01
                    dw $BC08,$E000,$E3F0

DATA_05BB67:        dw $E091,$E010,$E0B0,$E0C0
                    dw $9010,$E000,$8800,$B010
                    dw $A425,$E000,$6810,$B420
                    dw $BC2F,$E000,$8810,$B800
                    dw $E000,$A800,$9810,$A420
                    dw $E000,$6800,$A420,$B420
                    dw $BC2F,$E000,$6810,$BC20
                    dw $E000,$E3F0

DATA_05BBA3:        dw $E091,$E010,$E045,$A410
                    dw $6800,$5C20,$E000,$6C00
                    dw $E000,$4030,$5C40,$E000
                    dw $5020,$9060,$E000,$A050
                    dw $8420,$7870,$E000,$4C80
                    dw $E000,$4090,$E3F0

DATA_05BBD1:        dw $E091,$E042,$E010,$2470
                    dw $24E0,$E3F0

DATA_05BBDD:        dw $E091,$E045,$E010,$8820
                    dw $B810,$7C00,$E000,$5890
                    dw $48A0,$E000,$98B0,$E000
                    dw $A410,$6800,$5CC0,$E000
                    dw $E000,$A010,$6400,$90D0
                    dw $E000,$8820,$B810,$7C00
                    dw $E3F0

DATA_05BC0F:        dw $E010,$E041,$2800,$E000
                    dw $E000,$2800,$E3F0

DATA_05BC1D:        dw $E091,$E042,$E013,$E04D
                    dw $A880,$AC24,$ACB2,$D043
                    dw $9090,$9436,$D890,$DC32
                    dw $BC92,$E000,$A064,$ACA0
                    dw $D003,$94A1,$B815,$E000
                    dw $C093,$C472,$B081,$B434
                    dw $9082,$9076,$E000,$C084
                    dw $C032,$8890,$ACA3,$D043
                    dw $8C36,$E000,$80A0,$A405
                    dw $ACB2,$D043,$98A3,$BC45
                    dw $7490,$7838,$E000,$C480
                    dw $C822,$B0A0,$D403,$9482
                    dw $9476,$E3F0

DATA_05BC81:        dw $E04B,$E011,$0010,$0C11
                    dw $1012,$1C13,$2414,$2815
                    dw $3016,$4C16,$5417,$5C18
                    dw $6019,$641A,$681B,$6C1C
                    dw $7816,$801D,$901E,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$E000,$0010,$0C11
                    dw $1012,$1C13,$2414,$2815
                    dw $3016,$4C16,$5417,$5C18
                    dw $6019,$641A,$681B,$6C1C
                    dw $7816,$801D,$901E,$E000
                    dw $0030,$1831,$2020,$2432
                    dw $2C1B,$3023,$3833,$4034
                    dw $4835,$5436,$5837,$5C38
                    dw $6439,$683A,$6C3B,$703C
                    dw $743D,$783E,$943F,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$E000,$181F,$2020
                    dw $2421,$2C22,$3023,$3820
                    dw $4024,$5025,$5826,$5C27
                    dw $6428,$6C29,$742A,$782B
                    dw $882C,$902D,$982F,$E3F0

DATA_05BD61:        dw $E011,$E04B,$E031,$0010
                    dw $0C11,$1012,$1C13,$2414
                    dw $2815,$3016,$4C16,$5417
                    dw $5C18,$6019,$641A,$681B
                    dw $6C1C,$7816,$801D,$901E
                    dw $8107,$8510,$9911,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$8107,$8510,$9910
                    dw $E000,$0010,$0C11,$1012
                    dw $1C13,$2414,$2815,$3016
                    dw $4C16,$5417,$5C18,$6019
                    dw $641A,$681B,$6C1C,$7816
                    dw $801D,$901E,$8107,$8510
                    dw $9911,$E000,$181F,$2020
                    dw $2421,$2C22,$3023,$3820
                    dw $4024,$5025,$5826,$5C27
                    dw $6428,$6C29,$742A,$782B
                    dw $882C,$902D,$982F,$8107
                    dw $8510,$9910,$E000,$0030
                    dw $1831,$2020,$2432,$2C1B
                    dw $3023,$3833,$4034,$4835
                    dw $5436,$5837,$5C38,$6439
                    dw $683A,$6C3B,$703C,$743D
                    dw $783E,$943F,$8107,$8911
                    dw $9910,$E000,$181F,$2020
                    dw $2421,$2C22,$3023,$3820
                    dw $4024,$5025,$5826,$5C27
                    dw $6428,$6C29,$742A,$782B
                    dw $882C,$902D,$982F,$8107
                    dw $8510,$9910,$0010,$0C11
                    dw $1012,$1C13,$2414,$2815
                    dw $3016,$4C16,$5417,$5C18
                    dw $6019,$641A,$681B,$6C1C
                    dw $7816,$801D,$901E,$8107
                    dw $8510,$9911,$E000,$181F
                    dw $2020,$2421,$2C22,$3023
                    dw $3820,$4024,$5025,$5826
                    dw $5C27,$6428,$6C29,$742A
                    dw $782B,$882C,$902D,$982F
                    dw $8107,$8510,$9910,$0010
                    dw $0C11,$1012,$1C13,$2414
                    dw $2815,$3016,$4C16,$5417
                    dw $5C18,$6019,$641A,$681B
                    dw $6C1C,$7816,$801D,$901E
                    dw $8107,$8510,$9911,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$8107,$8510,$9910
                    dw $E3F0

DATA_05BF0B:        dw $E091,$E013,$E042,$E04D
                    dw $C080,$C422,$B0A0,$D403
                    dw $9482,$9476,$E000,$80A0
                    dw $A405,$E3F0

DATA_05BF27:        dw $E091,$E042,$E010,$6C70
                    dw $6C90,$E000,$8C60,$8CB0
                    dw $E000,$7470,$7490,$AC50
                    dw $AC80,$E000,$8070,$80E0
                    dw $E000,$6070,$60E0,$E000
                    dw $8840,$88D0,$A060,$A0B0
                    dw $E000,$5470,$74A0,$E000
                    dw $6070,$60E0,$E000,$8870
                    dw $8890,$E000,$5070,$5090
                    dw $E000,$E000,$2870,$28E0
                    dw $E3F0

DATA_05BF79:        dw $E091,$E045,$E010,$8820
                    dw $B810,$7C00,$E000,$5890
                    dw $48A0,$E000,$98B0,$E000
                    dw $A410,$6800,$5CC0,$E000
                    dw $E000,$A010,$6400,$90D0
                    dw $E000,$8820,$B810,$7C00
                    dw $E3F0

DATA_05BFAB:        dw $E091,$E010,$E045,$8420
                    dw $7470,$E000,$4880,$5C90
                    dw $E000,$E000,$40C0,$E000
                    dw $4090,$E000,$4830,$E000
                    dw $04E0,$E3F0

DATA_05BFCF:        dw $E091,$E045,$E010,$8820
                    dw $B810,$7C00,$E000,$5890
                    dw $48A0,$E000,$98B0,$E000
                    dw $A410,$6800,$5CC0,$E000
                    dw $E000,$A010,$6400,$90D0
                    dw $E000,$8820,$B810,$7C00
                    dw $E3F0

DATA_05C001:        dw $E011,$E041,$2800,$E000
                    dw $2C00,$E3F0

DATA_05C00D:        dw $E011,$E047,$E031,$0010
                    dw $0C11,$1012,$1C13,$2414
                    dw $2815,$3016,$4C16,$5417
                    dw $5C18,$6019,$641A,$681B
                    dw $6C1C,$7816,$801D,$901E
                    dw $8107,$8510,$9911,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$8107,$8510,$9910
                    dw $E000,$0010,$0C11,$1012
                    dw $1C13,$2414,$2815,$3016
                    dw $4C16,$5417,$5C18,$6019
                    dw $641A,$681B,$6C1C,$7816
                    dw $801D,$901E,$8107,$8510
                    dw $9911,$E000,$181F,$2020
                    dw $2421,$2C22,$3023,$3820
                    dw $4024,$5025,$5826,$5C27
                    dw $6428,$6C29,$742A,$782B
                    dw $882C,$902D,$982F,$8107
                    dw $8510,$9910,$E000,$0030
                    dw $1831,$2020,$2432,$2C1B
                    dw $3023,$3833,$4034,$4835
                    dw $5436,$5837,$5C38,$6439
                    dw $683A,$6C3B,$703C,$743D
                    dw $783E,$943F,$8107,$8911
                    dw $9910,$E000,$181F,$2020
                    dw $2421,$2C22,$3023,$3820
                    dw $4024,$5025,$5826,$5C27
                    dw $6428,$6C29,$742A,$782B
                    dw $882C,$902D,$982F,$8107
                    dw $8510,$9910,$0010,$0C11
                    dw $1012,$1C13,$2414,$2815
                    dw $3016,$4C16,$5417,$5C18
                    dw $6019,$641A,$681B,$6C1C
                    dw $7816,$801D,$901E,$8107
                    dw $8510,$9911,$E000,$181F
                    dw $2020,$2421,$2C22,$3023
                    dw $3820,$4024,$5025,$5826
                    dw $5C27,$6428,$6C29,$742A
                    dw $782B,$882C,$902D,$982F
                    dw $8107,$8510,$9910,$0010
                    dw $0C11,$1012,$1C13,$2414
                    dw $2815,$3016,$4C16,$5417
                    dw $5C18,$6019,$641A,$681B
                    dw $6C1C,$7816,$801D,$901E
                    dw $8107,$8510,$9911,$E000
                    dw $181F,$2020,$2421,$2C22
                    dw $3023,$3820,$4024,$5025
                    dw $5826,$5C27,$6428,$6C29
                    dw $742A,$782B,$882C,$902D
                    dw $982F,$8107,$8510,$9910
                    dw $E3F0

DATA_05C1B7:        dw $E012,$E060,$E050,$E043
                    dw $4510,$6D10,$6100,$1530
                    dw $5520,$2900,$A960,$C970
                    dw $AD82,$CD92,$B9A0,$D9B0
                    dw $2D40,$4D50,$2007,$0025
                    dw $1C15,$E000,$4510,$6D10
                    dw $1530,$5520,$2900,$2D40
                    dw $4D50,$2007,$0025,$1C15
                    dw $E000,$4510,$6D10,$6100
                    dw $1530,$5520,$2900,$A960
                    dw $C970,$AD82,$CD92,$B9A0
                    dw $D9B0,$2D40,$4D50,$2007
                    dw $0025,$1C15,$E000,$4510
                    dw $6D10,$1530,$5520,$2900
                    dw $2D40,$4D50,$2007,$0025
                    dw $1C15,$E000,$4510,$6D10
                    dw $6100,$1530,$5520,$2900
                    dw $A960,$C970,$AD82,$CD92
                    dw $B9A0,$D9B0,$2D40,$4D50
                    dw $2007,$0025,$1C15,$E000
                    dw $4510,$6D10,$1530,$5520
                    dw $2900,$2D40,$4D50,$2007
                    dw $0025,$1C15,$E000,$4510
                    dw $6D10,$6100,$1530,$5520
                    dw $2900,$A960,$C970,$AD82
                    dw $CD92,$B9A0,$D9B0,$2D40
                    dw $4D50,$2007,$0025,$1C15
                    dw $E000,$4510,$6D10,$1530
                    dw $5520,$2900,$2D40,$4D50
                    dw $2007,$0025,$1C15,$E3F0

DATA_05C2A7:        dw $E012,$E060,$E050,$E043
                    dw $4510,$6D10,$6100,$1530
                    dw $5520,$2900,$A960,$C970
                    dw $AD82,$CD92,$B9A0,$D9B0
                    dw $2D40,$4D50,$2007,$0025
                    dw $1C15,$E000,$4510,$6D10
                    dw $1530,$5520,$2900,$2D40
                    dw $4D50,$2007,$0025,$1C15
                    dw $E000,$4510,$6D10,$6100
                    dw $1530,$5520,$2900,$A960
                    dw $C970,$AD82,$CD92,$B9A0
                    dw $D9B0,$2D40,$4D50,$2007
                    dw $0025,$1C15,$E000,$4510
                    dw $6D10,$1530,$5520,$2900
                    dw $2D40,$4D50,$2007,$0025
                    dw $1C15,$E000,$4510,$6D10
                    dw $6100,$1530,$5520,$2900
                    dw $A960,$C970,$AD82,$CD92
                    dw $B9A0,$D9B0,$2D40,$4D50
                    dw $2007,$0025,$1C15,$E000
                    dw $4510,$6D10,$1530,$5520
                    dw $2900,$2D40,$4D50,$2007
                    dw $0025,$1C15,$E000,$4510
                    dw $6D10,$6100,$1530,$5520
                    dw $2900,$A960,$C970,$AD82
                    dw $CD92,$B9A0,$D9B0,$2D40
                    dw $4D50,$2007,$0025,$1C15
                    dw $E000,$4510,$6D10,$1530
                    dw $5520,$2900,$2D40,$4D50
                    dw $2007,$0025,$1C15,$E3F0

DATA_05C397:        dw $E041,$E012,$2800,$E000
                    dw $2800,$E000,$2800,$E000
                    dw $2800,$E000,$2800,$E3F0


DATA_05C3AF:        dw $E046,$E050,$0003,$1003
                    dw $4019,$5019,$403F,$0826
                    dw $1826,$E000,$0C03,$4C19
                    dw $1C03,$5C19,$403F,$0426
                    dw $1426,$E000,$0803,$4819
                    dw $403A,$0026,$5449,$9C45
                    dw $3060,$E000,$0C07,$8C13
                    dw $1807,$9813,$803F,$0426
                    dw $3050,$6060,$E000,$2850
                    dw $0007,$8013,$1007,$9013
                    dw $803F,$5480,$E000,$0007
                    dw $8013,$1407,$9413,$803F
                    dw $4480,$E3F0

DATA_05C413:        dw $E046,$E050,$0007,$1007
                    dw $6017,$7017,$603F,$0826
                    dw $B890,$E000,$0005,$1005
                    dw $6017,$7017,$603F,$0826
                    dw $B4A0,$E000,$0005,$6017
                    dw $6039,$7047,$4860,$A890
                    dw $3850,$E000,$1005,$7017
                    dw $683B,$6447,$5860,$E000
                    dw $0005,$6017,$1005,$7017
                    dw $603F,$0826,$5860,$B890
                    dw $E000,$0005,$6017,$1005
                    dw $7017,$603F,$0826,$5480
                    dw $E000,$603F,$4480,$5080
                    dw $E3F0

DATA_05C47D:        dw $E046,$E050,$0003,$1003
                    dw $4019,$5019,$403F,$0826
                    dw $1826,$E000,$0C03,$4C19
                    dw $1C03,$5C19,$403F,$0426
                    dw $1426,$E000,$0803,$4819
                    dw $403A,$0026,$5449,$9C45
                    dw $3060,$E000,$0C07,$8C13
                    dw $1807,$9813,$803F,$0426
                    dw $3050,$6060,$E000,$2850
                    dw $0007,$8013,$1007,$9013
                    dw $803F,$5480,$E000,$0007
                    dw $8013,$1407,$9413,$803F
                    dw $4480,$E3F0

DATA_05C4E1:        dw $E046,$E050,$0003,$1003
                    dw $4019,$5019,$403F,$0826
                    dw $1826,$E000,$0C03,$4C19
                    dw $1C03,$5C19,$403F,$0426
                    dw $1426,$E000,$0803,$4819
                    dw $403A,$0026,$5449,$9C45
                    dw $3060,$E000,$0C07,$8C13
                    dw $1807,$9813,$803F,$0426
                    dw $3050,$6060,$E000,$2850
                    dw $0007,$8013,$1007,$9013
                    dw $803F,$5480,$E000,$0007
                    dw $8013,$1407,$9413,$803F
                    dw $4480,$E3F0

DATA_05C545:        dw $E050,$E046,$0005,$1405
                    dw $6017,$7417,$603F,$0826
                    dw $5C60,$E000,$0807,$1C07
                    dw $6817,$7C17,$603F,$1026
                    dw $E000,$1007,$7017,$603F
                    dw $7C47,$0426,$E000,$0426
                    dw $7435,$7047,$5860,$B890
                    dw $E000,$0C07,$1C07,$6C17
                    dw $7C17,$603F,$0426,$5080
                    dw $B490,$E000,$603F,$7C47
                    dw $0426,$4C80,$E000,$7435
                    dw $7047,$2450,$5480,$E000
                    dw $7017,$8017,$603F,$4090
                    dw $5090,$4480,$5480,$A0B0
                    dw $E3F0

DATA_05C5B7:        dw $E012,$E050,$E044,$A0A0
                    dw $2010,$2800,$4C30,$5830
                    dw $E000,$A0A0,$4430,$3010
                    dw $3800,$5C30,$E000,$A0A0
                    dw $4830,$5430,$E000,$A0A0
                    dw $2010,$2800,$5020,$5850
                    dw $E000,$A0A0,$4820,$5050
                    dw $5820,$E000,$A0A0,$4450
                    dw $2C00,$94D0,$E000,$A0A0
                    dw $2000,$4840,$5440,$3C00
                    dw $E000,$A0A0,$2010,$4830
                    dw $7470,$5C20,$E000,$A0A0
                    dw $2410,$8CC0,$3010,$5820
                    dw $E000,$A0A0,$4050,$5050
                    dw $4880,$5820,$E000,$A0A0
                    dw $2400,$4C20,$5820,$E3F0

DATA_05C637:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;Empty, unused data
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF

CODE_05C800:        LDA $4212                 ;
CODE_05C803:        LSR A                     ;
CODE_05C804:        BCS CODE_05C800           ;
CODE_05C806:        STZ $4016                 ;
CODE_05C809:        LDA $701FF4               ;
CODE_05C80D:        TAX                       ;
CODE_05C80E:        LDA $4218,x               ;
CODE_05C811:        STA $0FF8                 ;
CODE_05C814:        TAY                       ;
CODE_05C815:        EOR $0FFD                 ;
CODE_05C818:        AND $0FF8                 ;
CODE_05C81B:        STA $0FFA                 ;
CODE_05C81E:        STY $0FFD                 ;
CODE_05C821:        LDA $4219,x               ;
CODE_05C824:        STA $0FF4                 ;
CODE_05C827:        TAY                       ;
CODE_05C828:        EOR $0FFC                 ;
CODE_05C82B:        AND $0FF4                 ;
CODE_05C82E:        STA $0FF6                 ;
CODE_05C831:        STY $0FFC                 ;
CODE_05C834:        LDA $701FF6               ;
CODE_05C838:        TAX                       ;
CODE_05C839:        LDA $4218,x               ;
CODE_05C83C:        STA $0FF9                 ;
CODE_05C83F:        TAY                       ;
CODE_05C840:        EOR $0FFE                 ;
CODE_05C843:        AND $0FF9                 ;
CODE_05C846:        STA $0FFB                 ;
CODE_05C849:        STY $0FFE                 ;
CODE_05C84C:        LDA $4219,x               ;
CODE_05C84F:        STA $0FF5                 ;
CODE_05C852:        TAY                       ;
CODE_05C853:        EOR $0FFF                 ;
CODE_05C856:        AND $0FF5                 ;
CODE_05C859:        STA $0FF7                 ;
CODE_05C85C:        STY $0FFF                 ;
CODE_05C85F:        RTL                       ;

CODE_05C860:        PHB                       ;
CODE_05C861:        PHK                       ;
CODE_05C862:        PLB                       ;
CODE_05C863:        LDA $700006               ;
CODE_05C867:        BNE CODE_05C88B           ;
CODE_05C869:        LDA $0FF8                 ;
CODE_05C86C:        AND #$C0                  ;
CODE_05C86E:        TSB $0FF4                 ;
CODE_05C871:        LDA $0FFA                 ;
CODE_05C874:        AND #$C0                  ;
CODE_05C876:        TSB $0FF6                 ;
CODE_05C879:        LDA $0FF9                 ;
CODE_05C87C:        AND #$C0                  ;
CODE_05C87E:        TSB $0FF5                 ;
CODE_05C881:        LDA $0FFB                 ;
CODE_05C884:        AND #$C0                  ;
CODE_05C886:        TSB $0FF7                 ;
CODE_05C889:        BRA CODE_05C8F3           ;

CODE_05C88B:        LDA $0FF4                 ;
CODE_05C88E:        AND #$80                  ;
CODE_05C890:        LSR A                     ;
CODE_05C891:        TSB $0FF4                 ;
CODE_05C894:        LDA $0FF8                 ;
CODE_05C897:        AND #$C0                  ;
CODE_05C899:        STA $00                   ;
CODE_05C89B:        LDA $0FF4                 ;
CODE_05C89E:        AND #$7F                  ;
CODE_05C8A0:        ORA $00                   ;
CODE_05C8A2:        STA $0FF4                 ;
CODE_05C8A5:        LDA $0FF6                 ;
CODE_05C8A8:        AND #$80                  ;
CODE_05C8AA:        LSR A                     ;
CODE_05C8AB:        TSB $0FF6                 ;
CODE_05C8AE:        LDA $0FFA                 ;
CODE_05C8B1:        AND #$C0                  ;
CODE_05C8B3:        STA $00                   ;
CODE_05C8B5:        LDA $0FF6                 ;
CODE_05C8B8:        AND #$7F                  ;
CODE_05C8BA:        ORA $00                   ;
CODE_05C8BC:        STA $0FF6                 ;
CODE_05C8BF:        LDA $0FF5                 ;
CODE_05C8C2:        AND #$80                  ;
CODE_05C8C4:        LSR A                     ;
CODE_05C8C5:        TSB $0FF5                 ;
CODE_05C8C8:        LDA $0FF9                 ;
CODE_05C8CB:        AND #$C0                  ;
CODE_05C8CD:        STA $00                   ;
CODE_05C8CF:        LDA $0FF5                 ;
CODE_05C8D2:        AND #$7F                  ;
CODE_05C8D4:        ORA $00                   ;
CODE_05C8D6:        STA $0FF5                 ;
CODE_05C8D9:        LDA $0FF7                 ;
CODE_05C8DC:        AND #$80                  ;
CODE_05C8DE:        LSR A                     ;
CODE_05C8DF:        TSB $0FF7                 ;
CODE_05C8E2:        LDA $0FFB                 ;
CODE_05C8E5:        AND #$C0                  ;
CODE_05C8E7:        STA $00                   ;
CODE_05C8E9:        LDA $0FF7                 ;
CODE_05C8EC:        AND #$7F                  ;
CODE_05C8EE:        ORA $00                   ;
CODE_05C8F0:        STA $0FF7                 ;
CODE_05C8F3:        PLB                       ;
CODE_05C8F4:        RTL                       ;

DATA_05C8F5:        db $03,$02,$06,$08,$01,$13

CODE_05C8FB:        PHB                       ;
CODE_05C8FC:        PHK                       ;
CODE_05C8FD:        PLB                       ;
CODE_05C8FE:        PHX                       ;
CODE_05C8FF:        LDA $0770                 ;
CODE_05C902:        BEQ CODE_05C94D           ;
CODE_05C904:        LDA $0752                 ;
CODE_05C907:        CMP #$02                  ;
CODE_05C909:        BEQ CODE_05C91C           ;
CODE_05C90B:        LDY #$05                  ;
CODE_05C90D:        LDA $0710                 ;
CODE_05C910:        CMP #$06                  ;
CODE_05C912:        BEQ CODE_05C918           ;
CODE_05C914:        CMP #$07                  ;
CODE_05C916:        BNE CODE_05C91C           ;
CODE_05C918:        LDY #$05                  ;
CODE_05C91A:        BRA CODE_05C925           ;

CODE_05C91C:        LDY $BA                   ;
CODE_05C91E:        LDA $0743                 ;
CODE_05C921:        BEQ CODE_05C925           ;
CODE_05C923:        LDY #$04                  ;
CODE_05C925:        LDA $0F                   ;
CODE_05C927:        CMP #$04                  ;
CODE_05C929:        BEQ CODE_05C944           ;
CODE_05C92B:        CMP #$05                  ;
CODE_05C92D:        BEQ CODE_05C944           ;
CODE_05C92F:        LDA $DB                   ;
CODE_05C931:        CMP #$1B                  ;
CODE_05C933:        BNE CODE_05C939           ;
CODE_05C935:        LDA #$01                  ;
CODE_05C937:        BRA CODE_05C93C           ;

CODE_05C939:        LDA $C8F5,y               ;
CODE_05C93C:        LDX $0EDF                 ;
CODE_05C93F:        BNE CODE_05C944           ;
CODE_05C941:        STA $1602                 ;
CODE_05C944:        LDX $DB                   ;
CODE_05C946:        CPX #$21                  ;
CODE_05C948:        BNE CODE_05C94D           ;
CODE_05C94A:        STA $0EDF                 ;
CODE_05C94D:        PLX                       ;
CODE_05C94E:        PLB                       ;
CODE_05C94F:        RTL                       ;

CODE_05C950:        LDA $7FFB06               ;
CODE_05C954:        BPL CODE_05C958           ;
CODE_05C956:        LDA #$00                  ;
CODE_05C958:        STA $077A                 ;
CODE_05C95B:        LDA $7FFB00               ;
CODE_05C95F:        STA $075F                 ;
CODE_05C962:        STA $0766                 ;
CODE_05C965:        LDA $7FFB01               ;
CODE_05C969:        STA $075C                 ;
CODE_05C96C:        STA $0763                 ;
CODE_05C96F:        LDA $7FFB02               ;
CODE_05C973:        BPL CODE_05C976           ;
CODE_05C975:        INC A                     ;
CODE_05C976:        STA $0760                 ;
CODE_05C979:        STA $0767                 ;
CODE_05C97C:        LDA $7FFB03               ;
CODE_05C980:        STA $075A                 ;
CODE_05C983:        LDA $7FFB04               ;
CODE_05C987:        STA $0761                 ;
CODE_05C98A:        LDA $7FFB05               ;
CODE_05C98E:        STA $07FC                 ;
CODE_05C991:        STA $0781                 ;
CODE_05C994:        PHX                       ;
CODE_05C995:        LDX #$00                  ;
CODE_05C997:        LDA $701FE0,x             ;
CODE_05C99B:        STA $07C8,x               ;
CODE_05C99E:        INX                       ;
CODE_05C99F:        CPX #$06                  ;
CODE_05C9A1:        BNE CODE_05C997           ;
CODE_05C9A3:        PLX                       ;
CODE_05C9A4:        RTL                       ;

CODE_05C9A5:        LDA $700009               ;
CODE_05C9A9:        STA $0760                 ;
CODE_05C9AC:        STA $0767                 ;
CODE_05C9AF:        LDA $0E24                 ;
CODE_05C9B2:        STA $075C                 ;
CODE_05C9B5:        STA $0763                 ;
CODE_05C9B8:        LDA #$02                  ;
CODE_05C9BA:        STA $075A                 ;
CODE_05C9BD:        STA $0761                 ;
CODE_05C9C0:        STZ $075E                 ;
CODE_05C9C3:        STZ $0765                 ;
CODE_05C9C6:        PHX                       ;
CODE_05C9C7:        LDX #$00                  ;
CODE_05C9C9:        STZ $07CE,x               ;
CODE_05C9CC:        INX                       ;
CODE_05C9CD:        CPX #$0C                  ;
CODE_05C9CF:        BNE CODE_05C9C9           ;
CODE_05C9D1:        PLX                       ;
CODE_05C9D2:        RTL                       ;

CODE_05C9D3:        PHX                       ;
CODE_05C9D4:        PHY                       ;
CODE_05C9D5:        LDA $0369                 ;
CODE_05C9D8:        BEQ CODE_05CA13           ;
CODE_05C9DA:        LDY $0B46,x               ;
CODE_05C9DD:        LDX #$00                  ;
CODE_05C9DF:        LDA $0900,y               ;
CODE_05C9E2:        STA $0800,x               ;
CODE_05C9E5:        TYA                       ;
CODE_05C9E6:        AND #$03                  ;
CODE_05C9E8:        CMP #$01                  ;
CODE_05C9EA:        BNE CODE_05C9FD           ;
CODE_05C9EC:        LDA $0800,x               ;
CODE_05C9EF:        CMP #$F0                  ;
CODE_05C9F1:        BCC CODE_05C9FD           ;
CODE_05C9F3:        LDA #$F0                  ;
CODE_05C9F5:        STA $0800,x               ;
CODE_05C9F8:        LDA #$00                  ;
CODE_05C9FA:        STA $0D00,y               ;
CODE_05C9FD:        LDA $0D00,y               ;
CODE_05CA00:        STA $0C00,x               ;
CODE_05CA03:        LDA #$00                  ;
CODE_05CA05:        STA $0D00,y               ;
CODE_05CA08:        LDA #$F0                  ;
CODE_05CA0A:        STA $0900,y               ;
CODE_05CA0D:        INY                       ;
CODE_05CA0E:        INX                       ;
CODE_05CA0F:        CPX #$20                  ;
CODE_05CA11:        BNE CODE_05C9DF           ;
CODE_05CA13:        LDX #$00                  ;
CODE_05CA15:        STZ $E7                   ;
CODE_05CA17:        LDA $0300,x               ;
CODE_05CA1A:        BEQ CODE_05CA26           ;
CODE_05CA1C:        JSR CODE_05CA2E           ;
CODE_05CA1F:        LDA $E7                   ;
CODE_05CA21:        CLC                       ;
CODE_05CA22:        ADC #$20                  ;
CODE_05CA24:        STA $E7                   ;
CODE_05CA26:        INX                       ;
CODE_05CA27:        CPX #$0D                  ;
CODE_05CA29:        BCC CODE_05CA17           ;
CODE_05CA2B:        PLY                       ;
CODE_05CA2C:        PLX                       ;
CODE_05CA2D:        RTS                       ;

CODE_05CA2E:        LDA $9E                   ;
CODE_05CA30:        INC A                     ;
CODE_05CA31:        STA $02FC                 ;
CODE_05CA34:        PHX                       ;
CODE_05CA35:        LDY $030D,x               ;
CODE_05CA38:        STY $E6                   ;
CODE_05CA3A:        LDA $CB2D,y               ;
CODE_05CA3D:        CLC                       ;
CODE_05CA3E:        ADC #$A0                  ;
CODE_05CA40:        STA $E4                   ;
CODE_05CA42:        LDA $CB2E,y               ;
CODE_05CA45:        CLC                       ;
CODE_05CA46:        ADC #$A0                  ;
CODE_05CA48:        STA $E5                   ;
CODE_05CA4A:        LDY $E7                   ;
CODE_05CA4C:        LDA $031A,x               ;
CODE_05CA4F:        JSR CODE_05CAD3           ;
CODE_05CA52:        LDA $031A,x               ;
CODE_05CA55:        CLC                       ;
CODE_05CA56:        ADC #$08                  ;
CODE_05CA58:        JSR CODE_05CAD3           ;
CODE_05CA5B:        LDY $E7                   ;
CODE_05CA5D:        LDA $E4                   ;
CODE_05CA5F:        JSR CODE_05CABD           ;
CODE_05CA62:        TYA                       ;
CODE_05CA63:        CLC                       ;
CODE_05CA64:        ADC #$10                  ;
CODE_05CA66:        TAY                       ;
CODE_05CA67:        LDA $E5                   ;
CODE_05CA69:        JSR CODE_05CABD           ;
CODE_05CA6C:        LDX $E6                   ;
CODE_05CA6E:        CPX #$04                  ;
CODE_05CA70:        BCS CODE_05CA76           ;
CODE_05CA72:        LDA #$22                  ;
CODE_05CA74:        BRA CODE_05CA78           ;

CODE_05CA76:        LDA #$23                  ;
CODE_05CA78:        LDY $E7                   ;
CODE_05CA7A:        INY                       ;
CODE_05CA7B:        INY                       ;
CODE_05CA7C:        INY                       ;
CODE_05CA7D:        PHA                       ;
CODE_05CA7E:        JSR CODE_05CAD3           ;
CODE_05CA81:        PLA                       ;
CODE_05CA82:        JSR CODE_05CAD3           ;
CODE_05CA85:        LDY $E7                   ;
CODE_05CA87:        TXA                       ;
CODE_05CA88:        ASL A                     ;
CODE_05CA89:        ASL A                     ;
CODE_05CA8A:        ASL A                     ;
CODE_05CA8B:        TAX                       ;
CODE_05CA8C:        LDA #$08                  ;
CODE_05CA8E:        STA $E8                   ;
CODE_05CA90:        LDA $CAE5,x               ;
CODE_05CA93:        STA $0902,y               ;
CODE_05CA96:        INY                       ;
CODE_05CA97:        INY                       ;
CODE_05CA98:        INY                       ;
CODE_05CA99:        INY                       ;
CODE_05CA9A:        INX                       ;
CODE_05CA9B:        DEC $E8                   ;
CODE_05CA9D:        BNE CODE_05CA90           ;
CODE_05CA9F:        PLX                       ;
CODE_05CAA0:        DEC $0327,x               ;
CODE_05CAA3:        LDA $0327,x               ;
CODE_05CAA6:        BNE CODE_05CABC           ;
CODE_05CAA8:        LDA #$03                  ;
CODE_05CAAA:        STA $0327,x               ;
CODE_05CAAD:        INC $030D,x               ;
CODE_05CAB0:        LDA $030D,x               ;
CODE_05CAB3:        AND #$0F                  ;
CODE_05CAB5:        CMP #$09                  ;
CODE_05CAB7:        BNE CODE_05CABC           ;
CODE_05CAB9:        STZ $0300,x               ;
CODE_05CABC:        RTS                       ;

CODE_05CABD:        STA $0901,y               ;
CODE_05CAC0:        CLC                       ;
CODE_05CAC1:        ADC #$08                  ;
CODE_05CAC3:        STA $0905,y               ;
CODE_05CAC6:        CLC                       ;
CODE_05CAC7:        ADC #$08                  ;
CODE_05CAC9:        STA $0909,y               ;
CODE_05CACC:        CLC                       ;
CODE_05CACD:        ADC #$08                  ;
CODE_05CACF:        STA $090D,y               ;
CODE_05CAD2:        RTS                       ;

CODE_05CAD3:        STA $0900,y               ;
CODE_05CAD6:        STA $0904,y               ;
CODE_05CAD9:        STA $0908,y               ;
CODE_05CADC:        STA $090C,y               ;
CODE_05CADF:        TYA                       ;
CODE_05CAE0:        CLC                       ;
CODE_05CAE1:        ADC #$10                  ;
CODE_05CAE3:        TAY                       ;
CODE_05CAE4:        RTS                       ;

DATA_05CAE5:        db $10,$20,$FC,$FC,$11,$21,$FC,$FC
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

CODE_05CB42:        PHB                       ;
CODE_05CB43:        PHK                       ;
CODE_05CB44:        PLB                       ;
CODE_05CB45:        PHY                       ;
CODE_05CB46:        LDA $0B46,x               ;
CODE_05CB49:        CLC                       ;
CODE_05CB4A:        ADC #$04                  ;
CODE_05CB4C:        TAY                       ;
CODE_05CB4D:        LDA $47,x                 ;
CODE_05CB4F:        CMP #$02                  ;
CODE_05CB51:        BNE CODE_05CB55           ;
CODE_05CB53:        LDA #$41                  ;
CODE_05CB55:        EOR #$2B                  ;
CODE_05CB57:        STA $0903,y               ;
CODE_05CB5A:        LDA $1C,x                 ;
CODE_05CB5C:        CMP #$08                  ;
CODE_05CB5E:        BEQ CODE_05CB6F           ;
CODE_05CB60:        LDA $0EA2,x               ;
CODE_05CB63:        CMP #$0A                  ;
CODE_05CB65:        BCS CODE_05CB6F           ;
CODE_05CB67:        LDA $0903,y               ;
CODE_05CB6A:        EOR #$20                  ;
CODE_05CB6C:        STA $0903,y               ;
CODE_05CB6F:        LDA $0F4F,x               ;
CODE_05CB72:        LSR A                     ;
CODE_05CB73:        LSR A                     ;
CODE_05CB74:        AND #$0F                  ;
CODE_05CB76:        STA $E4                   ;
CODE_05CB78:        LDA $29,x                 ;
CODE_05CB7A:        AND #$20                  ;
CODE_05CB7C:        BNE CODE_05CB84           ;
CODE_05CB7E:        LDA $E4                   ;
CODE_05CB80:        CMP #$09                  ;
CODE_05CB82:        BCC CODE_05CB87           ;
CODE_05CB84:        STZ $0F4F,x               ;
CODE_05CB87:        LDA $0F                   ;
CODE_05CB89:        CMP #$09                  ;
CODE_05CB8B:        BCS CODE_05CB95           ;
CODE_05CB8D:        LDA $0E67                 ;
CODE_05CB90:        BNE CODE_05CB95           ;
CODE_05CB92:        INC $0F4F,x               ;
CODE_05CB95:        LDX $E4                   ;
CODE_05CB97:        LDA $03AE                 ;
CODE_05CB9A:        STA $0900,y               ;
CODE_05CB9D:        LDA $03B9                 ;
CODE_05CBA0:        CLC                       ;
CODE_05CBA1:        ADC #$08                  ;
CODE_05CBA3:        STA $0901,y               ;
CODE_05CBA6:        LDA $CB38,x               ;
CODE_05CBA9:        STA $0902,y               ;
CODE_05CBAC:        LDA #$02                  ;
CODE_05CBAE:        STA $0D00,y               ;
CODE_05CBB1:        LDX $9E                   ;
CODE_05CBB3:        LDA $021A,x               ;
CODE_05CBB6:        STA $E4                   ;
CODE_05CBB8:        LDA $79,x                 ;
CODE_05CBBA:        STA $E5                   ;
CODE_05CBBC:        REP #$20                  ;
CODE_05CBBE:        LDA $E4                   ;
CODE_05CBC0:        SEC                       ;
CODE_05CBC1:        SBC $42                   ;
CODE_05CBC3:        STA $E4                   ;
CODE_05CBC5:        SEP #$20                  ;
CODE_05CBC7:        LDA $E5                   ;
CODE_05CBC9:        BEQ CODE_05CBD0           ;
CODE_05CBCB:        LDA #$03                  ;
CODE_05CBCD:        STA $0D00,y               ;
CODE_05CBD0:        LDA $03B9                 ;
CODE_05CBD3:        CMP #$E0                  ;
CODE_05CBD5:        BCS CODE_05CBDD           ;
CODE_05CBD7:        LDA $BC,x                 ;
CODE_05CBD9:        CMP #$01                  ;
CODE_05CBDB:        BEQ CODE_05CBE2           ;
CODE_05CBDD:        LDA #$F0                  ;
CODE_05CBDF:        STA $0901,y               ;
CODE_05CBE2:        PLY                       ;
CODE_05CBE3:        PLB                       ;
CODE_05CBE4:        RTL                       ;

CODE_05CBE5:        LDA $03FA                 ;
CODE_05CBE8:        BEQ CODE_05CC16           ;
CODE_05CBEA:        LDA $0219                 ;
CODE_05CBED:        STA $E4                   ;
CODE_05CBEF:        LDA $0078                 ;
CODE_05CBF2:        STA $E5                   ;
CODE_05CBF4:        STZ $02FE                 ;
CODE_05CBF7:        REP #$20                  ;
CODE_05CBF9:        LDA $02FD                 ;
CODE_05CBFC:        CLC                       ;
CODE_05CBFD:        ADC $03CC                 ;
CODE_05CC00:        CMP $E4                   ;
CODE_05CC02:        BCC CODE_05CC09           ;
CODE_05CC04:        SEP #$20                  ;
CODE_05CC06:        LDA #$01                  ;
CODE_05CC08:        RTL                       ;

CODE_05CC09:        SEP #$20                  ;
CODE_05CC0B:        STZ $03FA                 ;
CODE_05CC0E:        LDA #$34                  ;
CODE_05CC10:        STA $02F7                 ;
CODE_05CC13:        STA $03CF                 ;
CODE_05CC16:        LDA $03CF                 ;
CODE_05CC19:        BEQ CODE_05CC46           ;
CODE_05CC1B:        CMP #$28                  ;
CODE_05CC1D:        BCC CODE_05CC23           ;
CODE_05CC1F:        LDA #$F8                  ;
CODE_05CC21:        BRA CODE_05CC25           ;

CODE_05CC23:        LDA #$F0                  ;
CODE_05CC25:        STA $03CE                 ;
CODE_05CC28:        LDA $0754                 ;
CODE_05CC2B:        BEQ CODE_05CC36           ;
CODE_05CC2D:        LDA $03CE                 ;
CODE_05CC30:        SEC                       ;
CODE_05CC31:        SBC #$10                  ;
CODE_05CC33:        STA $03CE                 ;
CODE_05CC36:        DEC $03CF                 ;
CODE_05CC39:        LDA $03CF                 ;
CODE_05CC3C:        BNE CODE_05CC3E           ;
CODE_05CC3E:        STZ $5D                   ;
CODE_05CC40:        STZ $0705                 ;
CODE_05CC43:        LDA #$00                  ;
CODE_05CC45:        RTL                       ;

CODE_05CC46:        LDA #$01                  ;
CODE_05CC48:        STA $0723                 ;
CODE_05CC4B:        STA $0254                 ;
CODE_05CC4E:        JSR CODE_05CC6C           ;
CODE_05CC51:        STZ $03CE                 ;
CODE_05CC54:        LDA $03FB                 ;
CODE_05CC57:        BEQ CODE_05CC5F           ;
CODE_05CC59:        DEC $03FB                 ;
CODE_05CC5C:        LDA #$01                  ;
CODE_05CC5E:        RTL                       ;

CODE_05CC5F:        LDA $0746                 ;
CODE_05CC62:        CMP #$01                  ;
CODE_05CC64:        BCS CODE_05CC69           ;
CODE_05CC66:        INC $0746                 ;
CODE_05CC69:        LDA #$00                  ;
CODE_05CC6B:        RTL                       ;

CODE_05CC6C:        LDX #$00                  ;
CODE_05CC6E:        REP #$20                  ;
CODE_05CC70:        LDA $11E0,x               ;
CODE_05CC73:        STA $E4                   ;
CODE_05CC75:        AND #$7C00                ;
CODE_05CC78:        BEQ CODE_05CC82           ;
CODE_05CC7A:        LDA $E4                   ;
CODE_05CC7C:        SEC                       ;
CODE_05CC7D:        SBC #$0400                ;
CODE_05CC80:        STA $E4                   ;
CODE_05CC82:        LDA $E4                   ;
CODE_05CC84:        AND #$03E0                ;
CODE_05CC87:        BEQ CODE_05CC91           ;
CODE_05CC89:        LDA $E4                   ;
CODE_05CC8B:        SEC                       ;
CODE_05CC8C:        SBC #$0020                ;
CODE_05CC8F:        STA $E4                   ;
CODE_05CC91:        LDA $E4                   ;
CODE_05CC93:        AND #$001F                ;
CODE_05CC96:        BEQ CODE_05CC9A           ;
CODE_05CC98:        DEC $E4                   ;
CODE_05CC9A:        LDA $E4                   ;
CODE_05CC9C:        STA $11E0,x               ;
CODE_05CC9F:        INX                       ;
CODE_05CCA0:        INX                       ;
CODE_05CCA1:        CPX #$20                  ;
CODE_05CCA3:        BNE CODE_05CC70           ;
CODE_05CCA5:        SEP #$20                  ;
CODE_05CCA7:        INC $1200                 ;
CODE_05CCAA:        RTS                       ;

DATA_05CCAB:        db $90,$80,$70,$90

DATA_05CCAF:        db $FF,$01

CODE_05CCB1:        PHX                       ;
CODE_05CCB2:        PHY                       ;
CODE_05CCB3:        LDY $0368                 ;
CODE_05CCB6:        LDX $0F4E                 ;
CODE_05CCB9:        LDA $021A,y               ;
CODE_05CCBC:        SEC                       ;
CODE_05CCBD:        SBC #$0E                  ;
CODE_05CCBF:        STA $021A,x               ;
CODE_05CCC2:        LDA $0079,y               ;
CODE_05CCC5:        STA $79,x                 ;
CODE_05CCC7:        LDA $0238,y               ;
CODE_05CCCA:        CLC                       ;
CODE_05CCCB:        ADC #$08                  ;
CODE_05CCCD:        STA $0238,x               ;
CODE_05CCD0:        LDA $07B7,x               ;
CODE_05CCD3:        AND #$03                  ;
CODE_05CCD5:        STA $041D,x               ;
CODE_05CCD8:        TAY                       ;
CODE_05CCD9:        LDA $CCAB,y               ;
CODE_05CCDC:        LDY #$00                  ;
CODE_05CCDE:        CMP $0238,x               ;
CODE_05CCE1:        BCC CODE_05CCE4           ;
CODE_05CCE3:        INY                       ;
CODE_05CCE4:        LDA $CCAF,y               ;
CODE_05CCE7:        STA $043D,x               ;
CODE_05CCEA:        STZ $06CB                 ;
CODE_05CCED:        LDA #$08                  ;\Set clipping?
CODE_05CCEF:        STA $0490,x               ;/
CODE_05CCF2:        LDA #$01                  ;
CODE_05CCF4:        STA $BC,x                 ;
CODE_05CCF6:        STA $10,x                 ;
CODE_05CCF8:        LSR A                     ;
CODE_05CCF9:        STA $0402,x               ;
CODE_05CCFC:        STA $29,x                 ;
CODE_05CCFE:        PLY                       ;
CODE_05CCFF:        PLX                       ;
CODE_05CD00:        RTS                       ;

CODE_05CD01:        PHB                       ;
CODE_05CD02:        PHK                       ;
CODE_05CD03:        PLB                       ;
CODE_05CD04:        LDY $0B46,x               ;
CODE_05CD07:        LDA $03AE                 ;
CODE_05CD0A:        STA $0900,y               ;
CODE_05CD0D:        CLC                       ;
CODE_05CD0E:        ADC #$08                  ;
CODE_05CD10:        STA $0904,y               ;
CODE_05CD13:        LDA $03B9                 ;
CODE_05CD16:        STA $0901,y               ;
CODE_05CD19:        STA $0905,y               ;
CODE_05CD1C:        LDA #$21                  ;
CODE_05CD1E:        STA $0903,y               ;
CODE_05CD21:        STA $0907,y               ;
CODE_05CD24:        LDA $0F58,x               ;
CODE_05CD27:        LSR A                     ;
CODE_05CD28:        LSR A                     ;
CODE_05CD29:        LSR A                     ;
CODE_05CD2A:        CMP #$03                  ;
CODE_05CD2C:        BNE CODE_05CD51           ;
CODE_05CD2E:        STZ $0F36,x               ;
CODE_05CD31:        LDA #$01                  ;
CODE_05CD33:        STA $0F36,x               ;
CODE_05CD36:        LDA $021A,x               ;
CODE_05CD39:        CLC                       ;
CODE_05CD3A:        ADC #$10                  ;
CODE_05CD3C:        STA $0F62,x               ;
CODE_05CD3F:        LDA $79,x                 ;
CODE_05CD41:        ADC #$00                  ;
CODE_05CD43:        STA $0F6B,x               ;
CODE_05CD46:        LDA $03B9                 ;
CODE_05CD49:        STA $0F74,x               ;
CODE_05CD4C:        LDA #$00                  ;
CODE_05CD4E:        STA $0F58,x               ;
CODE_05CD51:        TAX                       ;
CODE_05CD52:        LDA $CDE2,x               ;
CODE_05CD55:        STA $0902,y               ;
CODE_05CD58:        INC A                     ;
CODE_05CD59:        STA $0906,y               ;
CODE_05CD5C:        STX $E4                   ;
CODE_05CD5E:        LDX $9E                   ;
CODE_05CD60:        LDA $021A,x               ;
CODE_05CD63:        STA $E5                   ;
CODE_05CD65:        LDA $79,x                 ;
CODE_05CD67:        STA $E6                   ;
CODE_05CD69:        REP #$20                  ;
CODE_05CD6B:        LDA $E5                   ;
CODE_05CD6D:        SEC                       ;
CODE_05CD6E:        SBC $42                   ;
CODE_05CD70:        STA $E5                   ;
CODE_05CD72:        CLC                       ;
CODE_05CD73:        ADC #$0008                ;
CODE_05CD76:        STA $E7                   ;
CODE_05CD78:        SEP #$20                  ;
CODE_05CD7A:        LDA #$02                  ;
CODE_05CD7C:        STA $E9                   ;
CODE_05CD7E:        LDA $E6                   ;
CODE_05CD80:        BEQ CODE_05CD84           ;
CODE_05CD82:        LDA #$01                  ;
CODE_05CD84:        ORA $E9                   ;
CODE_05CD86:        STA $0D00,y               ;
CODE_05CD89:        LDA $E8                   ;
CODE_05CD8B:        BEQ CODE_05CD8F           ;
CODE_05CD8D:        LDA #$01                  ;
CODE_05CD8F:        ORA $E9                   ;
CODE_05CD91:        STA $0D04,y               ;
CODE_05CD94:        LDA $0F36,x               ;
CODE_05CD97:        BEQ CODE_05CDDB           ;
CODE_05CD99:        LDA $0F62,x               ;
CODE_05CD9C:        STA $E5                   ;
CODE_05CD9E:        LDA $0F6B,x               ;
CODE_05CDA1:        STA $E6                   ;
CODE_05CDA3:        REP #$20                  ;
CODE_05CDA5:        LDA $E5                   ;
CODE_05CDA7:        SEC                       ;
CODE_05CDA8:        SBC $42                   ;
CODE_05CDAA:        STA $E5                   ;
CODE_05CDAC:        SEP #$20                  ;
CODE_05CDAE:        LDA $E5                   ;
CODE_05CDB0:        STA $0908,y               ;
CODE_05CDB3:        LDA $0F58,x               ;
CODE_05CDB6:        LSR A                     ;
CODE_05CDB7:        CLC                       ;
CODE_05CDB8:        ADC #$04                  ;
CODE_05CDBA:        CLC                       ;
CODE_05CDBB:        ADC $0F74,x               ;
CODE_05CDBE:        STA $0909,y               ;
CODE_05CDC1:        LDX $E4                   ;
CODE_05CDC3:        LDA $CDE5,x               ;
CODE_05CDC6:        STA $090A,y               ;
CODE_05CDC9:        LDA #$28                  ;
CODE_05CDCB:        STA $090B,y               ;
CODE_05CDCE:        STZ $E9                   ;
CODE_05CDD0:        LDA $E6                   ;
CODE_05CDD2:        BEQ CODE_05CDD6           ;
CODE_05CDD4:        LDA #$01                  ;
CODE_05CDD6:        ORA $E9                   ;
CODE_05CDD8:        STA $0D08,y               ;
CODE_05CDDB:        LDX $9E                   ;
CODE_05CDDD:        INC $0F58,x               ;
CODE_05CDE0:        PLB                       ;
CODE_05CDE1:        RTL                       ;

DATA_05CDE2:        db $86,$A6,$89,$30

DATA_05CDE5:        db $31,$32,$06,$0A,$0E

CODE_05CDEB:        PHB                       ;
CODE_05CDEC:        PHK                       ;
CODE_05CDED:        PLB                       ;
CODE_05CDEE:        LDY #$04                  ;
CODE_05CDF0:        STY $02FF                 ;
CODE_05CDF3:        LDA $03AE                 ;
CODE_05CDF6:        SEC                       ;
CODE_05CDF7:        SBC #$08                  ;
CODE_05CDF9:        STA $E4                   ;
CODE_05CDFB:        LDX #$00                  ;
CODE_05CDFD:        LDA $CF1B,x               ;
CODE_05CE00:        CLC                       ;
CODE_05CE01:        ADC $E4                   ;
CODE_05CE03:        STA $0800,y               ;
CODE_05CE06:        LDA $03B9                 ;
CODE_05CE09:        SEC                       ;
CODE_05CE0A:        SBC #$04                  ;
CODE_05CE0C:        STA $0801,y               ;
CODE_05CE0F:        PHX                       ;
CODE_05CE10:        LDA $09                   ;
CODE_05CE12:        AND #$18                  ;
CODE_05CE14:        STX $E5                   ;
CODE_05CE16:        CLC                       ;
CODE_05CE17:        ADC $E5                   ;
CODE_05CE19:        TAX                       ;
CODE_05CE1A:        LDA $CEFB,x               ;
CODE_05CE1D:        STA $0803,y               ;
CODE_05CE20:        LDA $CEDB,x               ;
CODE_05CE23:        STA $0802,y               ;
CODE_05CE26:        PLX                       ;
CODE_05CE27:        INY                       ;
CODE_05CE28:        INY                       ;
CODE_05CE29:        INY                       ;
CODE_05CE2A:        INY                       ;
CODE_05CE2B:        INX                       ;
CODE_05CE2C:        CPX #$05                  ;
CODE_05CE2E:        BNE CODE_05CDFD           ;
CODE_05CE30:        LDX $9E                   ;
CODE_05CE32:        LDA $021A,x               ;
CODE_05CE35:        STA $E5                   ;
CODE_05CE37:        LDA $79,x                 ;
CODE_05CE39:        STA $E6                   ;
CODE_05CE3B:        REP #$20                  ;
CODE_05CE3D:        LDA $E5                   ;
CODE_05CE3F:        SEC                       ;
CODE_05CE40:        SBC #$0008                ;
CODE_05CE43:        SEC                       ;
CODE_05CE44:        SBC $42                   ;
CODE_05CE46:        STA $E9                   ;
CODE_05CE48:        CLC                       ;
CODE_05CE49:        ADC #$0010                ;
CODE_05CE4C:        STA $E8                   ;
CODE_05CE4E:        CLC                       ;
CODE_05CE4F:        ADC #$0004                ;
CODE_05CE52:        STA $DF                   ;
CODE_05CE54:        CLC                       ;
CODE_05CE55:        ADC #$0008                ;
CODE_05CE58:        STA $DD                   ;
CODE_05CE5A:        CLC                       ;
CODE_05CE5B:        ADC #$0004                ;
CODE_05CE5E:        STA $E7                   ;
CODE_05CE60:        CLC                       ;
CODE_05CE61:        ADC #$0010                ;
CODE_05CE64:        STA $E6                   ;
CODE_05CE66:        SEC                       ;
CODE_05CE67:        SBC #$0010                ;
CODE_05CE6A:        STA $E5                   ;
CODE_05CE6C:        SEP #$20                  ;
CODE_05CE6E:        LDA #$02                  ;
CODE_05CE70:        STA $E4                   ;
CODE_05CE72:        LDY #$04                  ;
CODE_05CE74:        LDX #$05                  ;
CODE_05CE76:        LDA $E5,x                 ;
CODE_05CE78:        BEQ CODE_05CE7C           ;
CODE_05CE7A:        LDA #$01                  ;
CODE_05CE7C:        ORA $E4                   ;
CODE_05CE7E:        STA $0C00,y               ;
CODE_05CE81:        INY                       ;
CODE_05CE82:        INY                       ;
CODE_05CE83:        INY                       ;
CODE_05CE84:        INY                       ;
CODE_05CE85:        DEX                       ;
CODE_05CE86:        BNE CODE_05CE76           ;
CODE_05CE88:        STZ $E4                   ;
CODE_05CE8A:        LDA $06CC                 ;
CODE_05CE8D:        BNE CODE_05CEA6           ;
CODE_05CE8F:        LDA #$F0                  ;
CODE_05CE91:        STA $0815                 ;
CODE_05CE94:        LDA $DE                   ;
CODE_05CE96:        BEQ CODE_05CE9A           ;
CODE_05CE98:        LDA #$01                  ;
CODE_05CE9A:        ORA $E4                   ;
CODE_05CE9C:        STA $0C00                 ;
CODE_05CE9F:        LDA $DD                   ;
CODE_05CEA1:        STA $0800                 ;
CODE_05CEA4:        BRA CODE_05CEBE           ;

CODE_05CEA6:        LDA #$F0                  ;
CODE_05CEA8:        STA $080D                 ;
CODE_05CEAB:        STA $0811                 ;
CODE_05CEAE:        LDA $E0                   ;
CODE_05CEB0:        BEQ CODE_05CEB4           ;
CODE_05CEB2:        LDA #$01                  ;
CODE_05CEB4:        ORA $E4                   ;
CODE_05CEB6:        STA $0C00                 ;
CODE_05CEB9:        LDA $DF                   ;
CODE_05CEBB:        STA $0800                 ;
CODE_05CEBE:        LDA $09                   ;
CODE_05CEC0:        AND #$10                  ;
CODE_05CEC2:        LSR A                     ;
CODE_05CEC3:        LSR A                     ;
CODE_05CEC4:        LSR A                     ;
CODE_05CEC5:        LSR A                     ;
CODE_05CEC6:        CLC                       ;
CODE_05CEC7:        ADC $03B9                 ;
CODE_05CECA:        STA $0801                 ;
CODE_05CECD:        LDA #$E7                  ;
CODE_05CECF:        STA $0802                 ;
CODE_05CED2:        LDA #$2C                  ;
CODE_05CED4:        STA $0803                 ;
CODE_05CED7:        LDX $9E                   ;
CODE_05CED9:        PLB                       ;
CODE_05CEDA:        RTL                       ;

DATA_05CEDB:        db $40,$41,$41,$42,$42,$00,$00,$00
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

CODE_05CFE8:        PHX                       ;
CODE_05CFE9:        INC $03CA                 ;
CODE_05CFEC:        LDA $03CA                 ;
CODE_05CFEF:        CMP #$34                  ;
CODE_05CFF1:        BCS CODE_05D050           ;
CODE_05CFF3:        LSR A                     ;
CODE_05CFF4:        LSR A                     ;
CODE_05CFF5:        TAX                       ;
CODE_05CFF6:        LDA $CF80,x               ;
CODE_05CFF9:        CLC                       ;
CODE_05CFFA:        ADC $03AE                 ;
CODE_05CFFD:        CLC                       ;
CODE_05CFFE:        ADC #$18                  ;
CODE_05D000:        STA $08F8                 ;
CODE_05D003:        LDA $CF8D,x               ;
CODE_05D006:        CLC                       ;
CODE_05D007:        ADC $03AE                 ;
CODE_05D00A:        CLC                       ;
CODE_05D00B:        ADC #$18                  ;
CODE_05D00D:        STA $08FC                 ;
CODE_05D010:        LDA $CF9A,x               ;
CODE_05D013:        BNE CODE_05D019           ;
CODE_05D015:        LDA #$F0                  ;
CODE_05D017:        BRA CODE_05D020           ;

CODE_05D019:        CLC                       ;
CODE_05D01A:        ADC $03B9                 ;
CODE_05D01D:        CLC                       ;
CODE_05D01E:        ADC #$10                  ;
CODE_05D020:        STA $08F9                 ;
CODE_05D023:        LDA $CFA7,x               ;
CODE_05D026:        BNE CODE_05D02C           ;
CODE_05D028:        LDA #$F0                  ;
CODE_05D02A:        BRA CODE_05D033           ;

CODE_05D02C:        CLC                       ;
CODE_05D02D:        ADC #$10                  ;
CODE_05D02F:        CLC                       ;
CODE_05D030:        ADC $03B9                 ;
CODE_05D033:        STA $08FD                 ;
CODE_05D036:        LDA $CFB4,x               ;
CODE_05D039:        STA $08FA                 ;
CODE_05D03C:        LDA $CFC1,x               ;
CODE_05D03F:        STA $08FE                 ;
CODE_05D042:        LDA $CFCE,x               ;
CODE_05D045:        STA $08FB                 ;
CODE_05D048:        LDA $CFDB,x               ;
CODE_05D04B:        STA $08FF                 ;
CODE_05D04E:        BRA CODE_05D053           ;

CODE_05D050:        STZ $03CB                 ;
CODE_05D053:        PLX                       ;
CODE_05D054:        RTS                       ;

CODE_05D055:        PHB                       ;
CODE_05D056:        PHK                       ;
CODE_05D057:        PLB                       ;
CODE_05D058:        LDA $03CB                 ;
CODE_05D05B:        BEQ CODE_05D060           ;
CODE_05D05D:        JSR CODE_05CFE8           ;
CODE_05D060:        LDA $0F4C                 ;
CODE_05D063:        BEQ CODE_05D07A           ;
CODE_05D065:        LDY $014B                 ;
CODE_05D068:        CPY #$08                  ;
CODE_05D06A:        BNE CODE_05D089           ;
CODE_05D06C:        LDA $0F4C                 ;
CODE_05D06F:        LSR A                     ;
CODE_05D070:        LSR A                     ;
CODE_05D071:        AND #$01                  ;
CODE_05D073:        TAY                       ;
CODE_05D074:        LDA $CF7E,y               ;
CODE_05D077:        TAY                       ;
CODE_05D078:        BRA CODE_05D089           ;

CODE_05D07A:        LDA $0792,x               ;
CODE_05D07D:        BNE CODE_05D082           ;
CODE_05D07F:        STZ $014B                 ;
CODE_05D082:        LDA $014B                 ;
CODE_05D085:        LSR A                     ;
CODE_05D086:        LSR A                     ;
CODE_05D087:        LSR A                     ;
CODE_05D088:        TAY                       ;
CODE_05D089:        LDA $CF74,y               ;
CODE_05D08C:        STA $014C                 ;
CODE_05D08F:        LDA $0B46,x               ;
CODE_05D092:        TAY                       ;
CODE_05D093:        LDA $03AE                 ;
CODE_05D096:        STA $0900,y               ;
CODE_05D099:        STA $0904,y               ;
CODE_05D09C:        CLC                       ;
CODE_05D09D:        ADC #$08                  ;
CODE_05D09F:        STA $0908,y               ;
CODE_05D0A2:        CLC                       ;
CODE_05D0A3:        ADC #$08                  ;
CODE_05D0A5:        STA $090C,y               ;
CODE_05D0A8:        STA $0910,y               ;
CODE_05D0AB:        STA $0914,y               ;
CODE_05D0AE:        LDA $03B9                 ;
CODE_05D0B1:        STA $0901,y               ;
CODE_05D0B4:        STA $090D,y               ;
CODE_05D0B7:        CLC                       ;
CODE_05D0B8:        ADC #$10                  ;
CODE_05D0BA:        STA $0905,y               ;
CODE_05D0BD:        STA $0911,y               ;
CODE_05D0C0:        SEC                       ;
CODE_05D0C1:        SBC #$18                  ;
CODE_05D0C3:        STA $0909,y               ;
CODE_05D0C6:        STA $0915,y               ;
CODE_05D0C9:        LDA $47,x                 ;
CODE_05D0CB:        STA $DE                   ;
CODE_05D0CD:        CMP #$01                  ;
CODE_05D0CF:        BEQ CODE_05D0D5           ;
CODE_05D0D1:        LDA #$61                  ;
CODE_05D0D3:        BRA CODE_05D0D7           ;

CODE_05D0D5:        LDA #$21                  ;
CODE_05D0D7:        STA $0903,y               ;
CODE_05D0DA:        STA $0907,y               ;
CODE_05D0DD:        STA $090B,y               ;
CODE_05D0E0:        STA $090F,y               ;
CODE_05D0E3:        STA $0913,y               ;
CODE_05D0E6:        STA $0917,y               ;
CODE_05D0E9:        STX $9E                   ;
CODE_05D0EB:        LDA $014C                 ;
CODE_05D0EE:        ASL A                     ;
CODE_05D0EF:        STA $DD                   ;
CODE_05D0F1:        ASL A                     ;
CODE_05D0F2:        CLC                       ;
CODE_05D0F3:        ADC $DD                   ;
CODE_05D0F5:        TAX                       ;
CODE_05D0F6:        CLC                       ;
CODE_05D0F7:        ADC #$06                  ;
CODE_05D0F9:        STA $DD                   ;
CODE_05D0FB:        LDA $DE                   ;
CODE_05D0FD:        CMP #$01                  ;
CODE_05D0FF:        BEQ CODE_05D10C           ;
CODE_05D101:        LDA $DD                   ;
CODE_05D103:        CLC                       ;
CODE_05D104:        ADC #$2A                  ;
CODE_05D106:        STA $DD                   ;
CODE_05D108:        SEC                       ;
CODE_05D109:        SBC #$06                  ;
CODE_05D10B:        TAX                       ;
CODE_05D10C:        LDA $CF20,x               ;
CODE_05D10F:        STA $0902,y               ;
CODE_05D112:        LDA #$02                  ;
CODE_05D114:        STA $0D00,y               ;
CODE_05D117:        INY                       ;
CODE_05D118:        INY                       ;
CODE_05D119:        INY                       ;
CODE_05D11A:        INY                       ;
CODE_05D11B:        INX                       ;
CODE_05D11C:        CPX $DD                   ;
CODE_05D11E:        BNE CODE_05D10C           ;
CODE_05D120:        LDA #$00                  ;
CODE_05D122:        STA $0CFC,y               ;
CODE_05D125:        STA $0CF0,y               ;
CODE_05D128:        LDX $9E                   ;
CODE_05D12A:        LDA $021A,x               ;
CODE_05D12D:        STA $E4                   ;
CODE_05D12F:        LDA $79,x                 ;
CODE_05D131:        STA $E5                   ;
CODE_05D133:        REP #$20                  ;
CODE_05D135:        LDA $E4                   ;
CODE_05D137:        SEC                       ;
CODE_05D138:        SBC $42                   ;
CODE_05D13A:        STA $E4                   ;
CODE_05D13C:        CLC                       ;
CODE_05D13D:        ADC #$0008                ;
CODE_05D140:        STA $E6                   ;
CODE_05D142:        CLC                       ;
CODE_05D143:        ADC #$0008                ;
CODE_05D146:        STA $E8                   ;
CODE_05D148:        SEP #$20                  ;
CODE_05D14A:        LDA $0B46,x               ;
CODE_05D14D:        TAY                       ;
CODE_05D14E:        LDA $E5                   ;
CODE_05D150:        BEQ CODE_05D15A           ;
CODE_05D152:        LDA #$03                  ;
CODE_05D154:        STA $0D00,y               ;
CODE_05D157:        STA $0D04,y               ;
CODE_05D15A:        LDA $E7                   ;
CODE_05D15C:        BEQ CODE_05D163           ;
CODE_05D15E:        LDA #$01                  ;
CODE_05D160:        STA $0D08,y               ;
CODE_05D163:        LDA $E9                   ;
CODE_05D165:        BEQ CODE_05D172           ;
CODE_05D167:        LDA #$01                  ;
CODE_05D169:        STA $0D0C,y               ;
CODE_05D16C:        STA $0D10,y               ;
CODE_05D16F:        STA $0D14,y               ;
CODE_05D172:        LDA $0F4C                 ;
CODE_05D175:        BNE CODE_05D189           ;
CODE_05D177:        STZ $0F4C                 ;
CODE_05D17A:        INC $014B                 ;
CODE_05D17D:        LDA $014B                 ;
CODE_05D180:        CMP #$30                  ;
CODE_05D182:        BCC CODE_05D1AD           ;
CODE_05D184:        STZ $014B                 ;
CODE_05D187:        BRA CODE_05D1AD           ;

CODE_05D189:        DEC $0F4C                 ;
CODE_05D18C:        LDA $0F4C                 ;
CODE_05D18F:        BNE CODE_05D1AD           ;
CODE_05D191:        LDA $014B                 ;
CODE_05D194:        CMP #$06                  ;
CODE_05D196:        BNE CODE_05D1AA           ;
CODE_05D198:        INC $014B                 ;
CODE_05D19B:        LDA #$28                  ;\Freeze bowser's animation
CODE_05D19D:        STA $0F4C                 ;/
CODE_05D1A0:        LDA #$3A                  ;\Bowser breathe fire sound
CODE_05D1A2:        STA $1600                 ;/
CODE_05D1A5:        JSR CODE_05CCB1           ;
CODE_05D1A8:        BRA CODE_05D1AD           ;

CODE_05D1AA:        STZ $014B                 ;
CODE_05D1AD:        LDA $0283                 ;
CODE_05D1B0:        BNE CODE_05D1F1           ;
CODE_05D1B2:        LDX $9E                   ;
CODE_05D1B4:        LDY $0B46,x               ;
CODE_05D1B7:        LDX #$06                  ;
CODE_05D1B9:        LDA $0903,y               ;
CODE_05D1BC:        ORA #$80                  ;
CODE_05D1BE:        STA $0903,y               ;
CODE_05D1C1:        INY                       ;
CODE_05D1C2:        INY                       ;
CODE_05D1C3:        INY                       ;
CODE_05D1C4:        INY                       ;
CODE_05D1C5:        DEX                       ;
CODE_05D1C6:        BNE CODE_05D1B9           ;
CODE_05D1C8:        LDX $9E                   ;
CODE_05D1CA:        LDY $0B46,x               ;
CODE_05D1CD:        LDA $0901,y               ;
CODE_05D1D0:        CLC                       ;
CODE_05D1D1:        ADC #$08                  ;
CODE_05D1D3:        STA $0901,y               ;
CODE_05D1D6:        STA $090D,y               ;
CODE_05D1D9:        LDA $0905,y               ;
CODE_05D1DC:        SEC                       ;
CODE_05D1DD:        SBC #$18                  ;
CODE_05D1DF:        STA $0905,y               ;
CODE_05D1E2:        STA $0911,y               ;
CODE_05D1E5:        LDA $0909,y               ;
CODE_05D1E8:        CLC                       ;
CODE_05D1E9:        ADC #$20                  ;
CODE_05D1EB:        STA $0909,y               ;
CODE_05D1EE:        STA $0915,y               ;
CODE_05D1F1:        JSR CODE_05C9D3           ;
CODE_05D1F4:        PLB                       ;
CODE_05D1F5:        RTL                       ;

CODE_05D1F6:        PHA                       ;
CODE_05D1F7:        PHB                       ;
CODE_05D1F8:        PHK                       ;
CODE_05D1F9:        PLB                       ;
CODE_05D1FA:        LDA $07B2                 ;
CODE_05D1FD:        BEQ CODE_05D26F           ;
CODE_05D1FF:        LDA $0FF4                 ;
CODE_05D202:        STA $E4                   ;
CODE_05D204:        AND #$C0                  ;
CODE_05D206:        BEQ CODE_05D26F           ;
CODE_05D208:        LDA $09                   ;
CODE_05D20A:        AND #$07                  ;
CODE_05D20C:        BNE CODE_05D26F           ;
CODE_05D20E:        LDA $E4                   ;
CODE_05D210:        CMP #$40                  ;
CODE_05D212:        BNE CODE_05D226           ;
CODE_05D214:        LDA #$17                  ;
CODE_05D216:        STA $07B2                 ;
CODE_05D219:        INC $075F                 ;
CODE_05D21C:        LDA $075F                 ;
CODE_05D21F:        CMP #$08                  ;
CODE_05D221:        BCC CODE_05D226           ;
CODE_05D223:        STZ $075F                 ;
CODE_05D226:        LDA $E4                   ;
CODE_05D228:        CMP #$80                  ;
CODE_05D22A:        BNE CODE_05D23E           ;
CODE_05D22C:        LDA #$17                  ;
CODE_05D22E:        STA $07B2                 ;
CODE_05D231:        INC $075C                 ;
CODE_05D234:        LDA $075C                 ;
CODE_05D237:        CMP #$04                  ;
CODE_05D239:        BCC CODE_05D23E           ;
CODE_05D23B:        STZ $075C                 ;
CODE_05D23E:        LDX #$00                  ;
CODE_05D240:        LDA $D2A6,x               ;
CODE_05D243:        STA $001702,x             ;
CODE_05D247:        INX                       ;
CODE_05D248:        CPX #$0B                  ;
CODE_05D24A:        BCC CODE_05D240           ;
CODE_05D24C:        LDA $075F                 ;
CODE_05D24F:        CLC                       ;
CODE_05D250:        ADC #$01                  ;
CODE_05D252:        STA $001706               ;
CODE_05D256:        LDA $075C                 ;
CODE_05D259:        CLC                       ;
CODE_05D25A:        ADC #$01                  ;
CODE_05D25C:        STA $00170A               ;
CODE_05D260:        LDA $075F                 ;
CODE_05D263:        ASL A                     ;
CODE_05D264:        ASL A                     ;
CODE_05D265:        ORA $075C                 ;
CODE_05D268:        TAX                       ;
CODE_05D269:        LDA $D272,x               ;
CODE_05D26C:        STA $0760                 ;
CODE_05D26F:        PLB                       ;
CODE_05D270:        PLA                       ;
CODE_05D271:        RTL                       ;

DATA_05D272:        db $00,$02,$03,$04,$00,$02,$03,$04
                    db $00,$01,$02,$03,$00,$02,$03,$04
                    db $00,$01,$02,$03,$00,$01,$02,$03
                    db $00,$02,$03,$04,$00,$01,$02,$03
                    db $00,$01,$02,$03,$00,$02,$03,$04
                    db $00,$02,$03,$04,$00,$01,$02,$03
                    db $00,$01,$02,$03,$58,$73,$00,$05
                    db $24,$20,$24,$20,$24,$20,$FF

CODE_05D2B1:        PHY                       ;
CODE_05D2B2:        LDY #$00                  ;
CODE_05D2B4:        LDA $0B25,y               ;
CODE_05D2B7:        BEQ CODE_05D2C0           ;
CODE_05D2B9:        INY                       ;
CODE_05D2BA:        CPY #$05                  ;
CODE_05D2BC:        BNE CODE_05D2B4           ;
CODE_05D2BE:        LDY #$00                  ;
CODE_05D2C0:        LDA #$01                  ;
CODE_05D2C2:        STA $0B25,y               ;
CODE_05D2C5:        LDA $5E,x                 ;
CODE_05D2C7:        BPL CODE_05D2E0           ;
CODE_05D2C9:        LDA $79,x                 ;
CODE_05D2CB:        XBA                       ;
CODE_05D2CC:        LDA $021A,x               ;
CODE_05D2CF:        REP #$20                  ;
CODE_05D2D1:        SEC                       ;
CODE_05D2D2:        SBC #$0008                ;
CODE_05D2D5:        SEP #$20                  ;
CODE_05D2D7:        STA $0B2F,y               ;
CODE_05D2DA:        XBA                       ;
CODE_05D2DB:        STA $0B2A,y               ;
CODE_05D2DE:        BRA CODE_05D2F5           ;

CODE_05D2E0:        LDA $79,x                 ;
CODE_05D2E2:        XBA                       ;
CODE_05D2E3:        LDA $021A,x               ;
CODE_05D2E6:        REP #$20                  ;
CODE_05D2E8:        CLC                       ;
CODE_05D2E9:        ADC #$0008                ;
CODE_05D2EC:        SEP #$20                  ;
CODE_05D2EE:        STA $0B2F,y               ;
CODE_05D2F1:        XBA                       ;
CODE_05D2F2:        STA $0B2A,y               ;
CODE_05D2F5:        LDA $03B9                 ;
CODE_05D2F8:        CLC                       ;
CODE_05D2F9:        ADC #$0C                  ;
CODE_05D2FB:        STA $0B34,y               ;
CODE_05D2FE:        PLY                       ;
CODE_05D2FF:        RTL                       ;

CODE_05D300:        PHB                       ;
CODE_05D301:        PHK                       ;
CODE_05D302:        PLB                       ;
CODE_05D303:        PHX                       ;
CODE_05D304:        PHY                       ;
CODE_05D305:        LDX #$00                  ;
CODE_05D307:        LDA $D46D,x               ;
CODE_05D30A:        TAY                       ;
CODE_05D30B:        LDA $0B25,x               ;
CODE_05D30E:        BEQ CODE_05D330           ;
CODE_05D310:        AND #$0C                  ;
CODE_05D312:        STA $E4                   ;
CODE_05D314:        BNE CODE_05D31B           ;
CODE_05D316:        JSR CODE_05D339           ;
CODE_05D319:        BRA CODE_05D330           ;

CODE_05D31B:        CMP #$04                  ;
CODE_05D31D:        BNE CODE_05D324           ;
CODE_05D31F:        JSR CODE_05D374           ;
CODE_05D322:        BRA CODE_05D330           ;

CODE_05D324:        CMP #$08                  ;
CODE_05D326:        BNE CODE_05D32D           ;
CODE_05D328:        JSR CODE_05D3B4           ;
CODE_05D32B:        BRA CODE_05D330           ;

CODE_05D32D:        STZ $0B25,x               ;
CODE_05D330:        INX                       ;
CODE_05D331:        CPX #$05                  ;
CODE_05D333:        BNE CODE_05D307           ;
CODE_05D335:        PLY                       ;
CODE_05D336:        PLX                       ;
CODE_05D337:        PLB                       ;
CODE_05D338:        RTL                       ;

CODE_05D339:        JSR CODE_05D458           ;
CODE_05D33C:        LDA $0B3B                 ;
CODE_05D33F:        CLC                       ;
CODE_05D340:        ADC #$04                  ;
CODE_05D342:        STA $0801,y               ;
CODE_05D345:        LDA #$26                  ;
CODE_05D347:        STA $0802,y               ;
CODE_05D34A:        LDA #$25                  ;
CODE_05D34C:        STA $0803,y               ;
CODE_05D34F:        REP #$20                  ;
CODE_05D351:        LDA $0B39                 ;
CODE_05D354:        CLC                       ;
CODE_05D355:        ADC #$0004                ;
CODE_05D358:        SEC                       ;
CODE_05D359:        SBC $42                   ;
CODE_05D35B:        STA $0B39                 ;
CODE_05D35E:        SEP #$20                  ;
CODE_05D360:        LDA $0B39                 ;
CODE_05D363:        STA $0800,y               ;
CODE_05D366:        LDA $0B3A                 ;
CODE_05D369:        BEQ CODE_05D36D           ;
CODE_05D36B:        LDA #$01                  ;
CODE_05D36D:        STA $0C00,y               ;
CODE_05D370:        INC $0B25,x               ;
CODE_05D373:        RTS                       ;

CODE_05D374:        JSR CODE_05D458           ;
CODE_05D377:        LDA $0B3B                 ;
CODE_05D37A:        STA $0801,y               ;
CODE_05D37D:        LDA #$60                  ;
CODE_05D37F:        STA $0802,y               ;
CODE_05D382:        LDA #$25                  ;
CODE_05D384:        STA $0803,y               ;
CODE_05D387:        REP #$20                  ;
CODE_05D389:        LDA $0B39                 ;
CODE_05D38C:        SEC                       ;
CODE_05D38D:        SBC $42                   ;
CODE_05D38F:        STA $0B39                 ;
CODE_05D392:        SEP #$20                  ;
CODE_05D394:        LDA $0B39                 ;
CODE_05D397:        STA $0800,y               ;
CODE_05D39A:        LDA $0B3A                 ;
CODE_05D39D:        BEQ CODE_05D3A3           ;
CODE_05D39F:        LDA #$03                  ;
CODE_05D3A1:        BRA CODE_05D3A5           ;

CODE_05D3A3:        LDA #$02                  ;
CODE_05D3A5:        STA $0C00,y               ;
CODE_05D3A8:        INC $0B25,x               ;
CODE_05D3AB:        RTS                       ;

DATA_05D3AC:        db $FF,$FE,$FC,$F9,$01,$02,$04,$07

CODE_05D3B4:        STX $F1                   ;
CODE_05D3B6:        JSR CODE_05D458           ;
CODE_05D3B9:        LDA $0B25,x               ;
CODE_05D3BC:        AND #$03                  ;
CODE_05D3BE:        TAX                       ;
CODE_05D3BF:        LDA $0B3B                 ;
CODE_05D3C2:        CLC                       ;
CODE_05D3C3:        ADC $D3AC,x               ;
CODE_05D3C6:        STA $0801,y               ;
CODE_05D3C9:        STA $0805,y               ;
CODE_05D3CC:        LDA $0B3B                 ;
CODE_05D3CF:        CLC                       ;
CODE_05D3D0:        ADC $D3B0,x               ;
CODE_05D3D3:        CLC                       ;
CODE_05D3D4:        ADC #$08                  ;
CODE_05D3D6:        STA $0809,y               ;
CODE_05D3D9:        STA $080D,y               ;
CODE_05D3DC:        LDA #$39                  ;
CODE_05D3DE:        STA $0802,y               ;
CODE_05D3E1:        STA $0806,y               ;
CODE_05D3E4:        STA $080A,y               ;
CODE_05D3E7:        STA $080E,y               ;
CODE_05D3EA:        LDA #$25                  ;
CODE_05D3EC:        STA $0803,y               ;
CODE_05D3EF:        STA $0807,y               ;
CODE_05D3F2:        STA $080B,y               ;
CODE_05D3F5:        STA $080F,y               ;
CODE_05D3F8:        LDA $D3AC,x               ;
CODE_05D3FB:        STA $EF                   ;
CODE_05D3FD:        LDA #$FF                  ;
CODE_05D3FF:        STA $F0                   ;
CODE_05D401:        REP #$20                  ;
CODE_05D403:        LDA $0B39                 ;
CODE_05D406:        SEC                       ;
CODE_05D407:        SBC $42                   ;
CODE_05D409:        CLC                       ;
CODE_05D40A:        ADC $EF                   ;
CODE_05D40C:        STA $ED                   ;
CODE_05D40E:        SEP #$20                  ;
CODE_05D410:        LDA $ED                   ;
CODE_05D412:        STA $0800,y               ;
CODE_05D415:        STA $0808,y               ;
CODE_05D418:        LDA $EE                   ;
CODE_05D41A:        BEQ CODE_05D41E           ;
CODE_05D41C:        LDA #$01                  ;
CODE_05D41E:        STA $0C00,y               ;
CODE_05D421:        STA $0C08,y               ;
CODE_05D424:        LDA $D3B0,x               ;
CODE_05D427:        STA $EF                   ;
CODE_05D429:        STZ $F0                   ;
CODE_05D42B:        REP #$20                  ;
CODE_05D42D:        LDA $0B39                 ;
CODE_05D430:        CLC                       ;
CODE_05D431:        ADC #$0008                ;
CODE_05D434:        SEC                       ;
CODE_05D435:        SBC $42                   ;
CODE_05D437:        CLC                       ;
CODE_05D438:        ADC $EF                   ;
CODE_05D43A:        STA $ED                   ;
CODE_05D43C:        SEP #$20                  ;
CODE_05D43E:        LDA $ED                   ;
CODE_05D440:        STA $0804,y               ;
CODE_05D443:        STA $080C,y               ;
CODE_05D446:        LDA $EE                   ;
CODE_05D448:        BEQ CODE_05D44C           ;
CODE_05D44A:        LDA #$01                  ;
CODE_05D44C:        STA $0C04,y               ;
CODE_05D44F:        STA $0C0C,y               ;
CODE_05D452:        LDX $F1                   ;
CODE_05D454:        INC $0B25,x               ;
CODE_05D457:        RTS                       ;

CODE_05D458:        LDA $0B34,x               ;
CODE_05D45B:        STA $0B3B                 ;
CODE_05D45E:        LDA $0B2A,x               ;
CODE_05D461:        XBA                       ;
CODE_05D462:        LDA $0B2F,x               ;
CODE_05D465:        REP #$20                  ;
CODE_05D467:        STA $0B39                 ;
CODE_05D46A:        SEP #$20                  ;
CODE_05D46C:        RTS                       ;

DATA_05D46E:        db $00,$10,$20,$40,$50

CODE_05D472:        PHB                       ;
CODE_05D473:        PHK                       ;
CODE_05D474:        PLB                       ;
CODE_05D475:        LDA $0201                 ;
CODE_05D478:        CMP #$01                  ;
CODE_05D47A:        BEQ CODE_05D4EE           ;
CODE_05D47C:        LDA $075F                 ;
CODE_05D47F:        CMP #$08                  ;
CODE_05D481:        BEQ CODE_05D4EE           ;
CODE_05D483:        LDA $BA                   ;
CODE_05D485:        CMP #$03                  ;
CODE_05D487:        BNE CODE_05D4EE           ;
CODE_05D489:        LDA $96                   ;
CODE_05D48B:        BNE CODE_05D4EB           ;
CODE_05D48D:        LDA $02FC                 ;
CODE_05D490:        BEQ CODE_05D4EE           ;
CODE_05D492:        LDX #$08                  ;
CODE_05D494:        LDA $1C,x                 ;
CODE_05D496:        CMP #$2D                  ;
CODE_05D498:        BEQ CODE_05D49F           ;
CODE_05D49A:        DEX                       ;
CODE_05D49B:        BPL CODE_05D494           ;
CODE_05D49D:        BRA CODE_05D4C2           ;

CODE_05D49F:        LDA $0238,x               ;
CODE_05D4A2:        CMP #$B8                  ;
CODE_05D4A4:        BCC CODE_05D4EE           ;
CODE_05D4A6:        LDA $10,x                 ;
CODE_05D4A8:        AND #$80                  ;
CODE_05D4AA:        BNE CODE_05D49A           ;
CODE_05D4AC:        LDA $021A,x               ;
CODE_05D4AF:        CLC                       ;
CODE_05D4B0:        ADC #$10                  ;
CODE_05D4B2:        STA $02FA                 ;
CODE_05D4B5:        LDA $79,x                 ;
CODE_05D4B7:        ADC #$00                  ;
CODE_05D4B9:        STA $02FB                 ;
CODE_05D4BC:        LDA #$08                  ;
CODE_05D4BE:        STA $96                   ;
CODE_05D4C0:        BRA CODE_05D4E1           ;

CODE_05D4C2:        LDX $02FC                 ;
CODE_05D4C5:        DEX                       ;
CODE_05D4C6:        LDA $0238,x               ;
CODE_05D4C9:        CMP #$B8                  ;
CODE_05D4CB:        BCC CODE_05D4EE           ;
CODE_05D4CD:        LDA $021A,x               ;
CODE_05D4D0:        CLC                       ;
CODE_05D4D1:        ADC #$04                  ;
CODE_05D4D3:        STA $02FA                 ;
CODE_05D4D6:        LDA $79,x                 ;
CODE_05D4D8:        ADC #$00                  ;
CODE_05D4DA:        STA $02FB                 ;
CODE_05D4DD:        LDA #$04                  ;
CODE_05D4DF:        STA $96                   ;
CODE_05D4E1:        LDA #$25                  ;\
CODE_05D4E3:        STA $1600                 ;/Bowser lands in lava sound impact
CODE_05D4E6:        LDA #$20                  ;\
CODE_05D4E8:        STA $1603                 ;/Bowser lands in lava sound
CODE_05D4EB:        JSR CODE_05D4F2           ;
CODE_05D4EE:        JMP CODE_05E3BF           ;

CODE_05D4F1:        RTL                       ;

CODE_05D4F2:        LDA $96                   ;
CODE_05D4F4:        STA $E4                   ;
CODE_05D4F6:        INC $02F9                 ;
CODE_05D4F9:        LDA $02F9                 ;
CODE_05D4FC:        LSR A                     ;
CODE_05D4FD:        LSR A                     ;
CODE_05D4FE:        CMP #$06                  ;
CODE_05D500:        BCS CODE_05D55D           ;
CODE_05D502:        STA $DD                   ;
CODE_05D504:        ASL A                     ;
CODE_05D505:        ASL A                     ;
CODE_05D506:        ASL A                     ;
CODE_05D507:        TAX                       ;
CODE_05D508:        LDY #$20                  ;
CODE_05D50A:        STZ $E9                   ;
CODE_05D50C:        TXA                       ;
CODE_05D50D:        AND #$01                  ;
CODE_05D50F:        CLC                       ;
CODE_05D510:        ADC #$FF                  ;
CODE_05D512:        STA $E8                   ;
CODE_05D514:        LDA $D563,x               ;
CODE_05D517:        STA $E7                   ;
CODE_05D519:        REP #$20                  ;
CODE_05D51B:        LDA $E7                   ;
CODE_05D51D:        CLC                       ;
CODE_05D51E:        ADC $02FA                 ;
CODE_05D521:        SEC                       ;
CODE_05D522:        SBC $42                   ;
CODE_05D524:        STA $E7                   ;
CODE_05D526:        SEP #$20                  ;
CODE_05D528:        LDA $E7                   ;
CODE_05D52A:        STA $0800,y               ;
CODE_05D52D:        LDA $E8                   ;
CODE_05D52F:        BEQ CODE_05D533           ;
CODE_05D531:        LDA #$00                  ;
CODE_05D533:        ORA $E9                   ;
CODE_05D535:        STA $0C00,y               ;
CODE_05D538:        LDA $D58B,x               ;
CODE_05D53B:        CLC                       ;
CODE_05D53C:        ADC #$D8                  ;
CODE_05D53E:        STA $0801,y               ;
CODE_05D541:        PHX                       ;
CODE_05D542:        LDX $DD                   ;
CODE_05D544:        LDA $D5BC,x               ;
CODE_05D547:        STA $0802,y               ;
CODE_05D54A:        LDX $E4                   ;
CODE_05D54C:        LDA $D5B3,x               ;
CODE_05D54F:        STA $0803,y               ;
CODE_05D552:        PLX                       ;
CODE_05D553:        INY                       ;
CODE_05D554:        INY                       ;
CODE_05D555:        INY                       ;
CODE_05D556:        INY                       ;
CODE_05D557:        INX                       ;
CODE_05D558:        DEC $E4                   ;
CODE_05D55A:        BNE CODE_05D50C           ;
CODE_05D55C:        RTS                       ;

CODE_05D55D:        STZ $02FC                 ;
CODE_05D560:        STZ $96                   ;
CODE_05D562:        RTS                       ;

DATA_05D563:        db $F6,$02,$F1,$07,$F2,$06,$ED,$0B
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
                    db $F0,$F0,$F3,$F3,$F0,$F0,$F3

;tile number lava particles of when podoboo lands in lava
DATA_06D60A:        db $33,$33,$34,$35,$36,$37

DATA_06D610:        db $28,$28,$68,$68

;Podoboo: leave behind fire and lava particles
CODE_05D614:        PHB                       ;
CODE_05D615:        PHK                       ;
CODE_05D616:        PLB                       ;
CODE_05D617:        PHX                       ;
CODE_05D618:        PHY                       ;
CODE_05D619:        LDA $0B00,x               ;\
CODE_05D61C:        CMP #$02                  ; | Check if you left a fire particle mid-air
CODE_05D61E:        BEQ CODE_05D657           ;/ If so, return
CODE_05D620:        LSR A                     ;\ Check if you landed in lava just now
CODE_05D621:        BCC CODE_05D66C           ;/ If so, return
CODE_05D623:        LDA $0B09,x               ;\
CODE_05D626:        LSR A                     ; |
CODE_05D627:        LSR A                     ; |if $18, branch
CODE_05D628:        CMP #$06                  ; |
CODE_05D62A:        BEQ CODE_05D659           ;/
CODE_05D62C:        TAY                       ;
CODE_05D62D:        LDA $D60A,y               ;\ Particle tile number in $ED
CODE_05D630:        STA $ED                   ;/
CODE_05D632:        LDA $021A,x               ;\ Store 16-bit sprite x position into $00
CODE_05D635:        STA $00                   ; |
CODE_05D637:        LDA $79,x                 ; |
CODE_05D639:        STA $01                   ; |
CODE_05D63B:        REP #$20                  ;\|
CODE_05D63D:        LDA $00                   ; |
CODE_05D63F:        CLC                       ; |Add 8 pixels to it, but subtract the left edge x-coordinate of the screen. store into $00-01 
CODE_05D640:        ADC #$0008                ; |
CODE_05D643:        SEC                       ; |
CODE_05D644:        SBC $42                   ; |
CODE_05D646:        STA $00                   ; |
CODE_05D648:        SEP #$20                  ;/
CODE_05D64A:        LDA $0B46,x               ;
CODE_05D64D:        CLC                       ;
CODE_05D64E:        ADC #$04                  ;
CODE_05D650:        STA $F2                   ;
CODE_05D652:        JSR CODE_05D73C           ;
CODE_05D655:        BRA CODE_05D66C           ;

CODE_05D657:        BRA CODE_05D69D           ;

CODE_05D659:        INC $0B00,x               ; Executes after a particle has been placed.
CODE_05D65C:        STZ $0B09,x               ;
CODE_05D65F:        LDA $0B00,x               ;\
CODE_05D662:        CMP #$02                  ; |
CODE_05D664:        BNE CODE_05D66C           ; | If the generated particle in question is the mid-air fire particle
CODE_05D666:        LDA $0238,x               ;\| Set Y position of mid-air particle
CODE_05D669:        STA $0B12,x               ;/
CODE_05D66C:        PLY                       ; Return
CODE_05D66D:        PLX                       ;
CODE_05D66E:        PLB                       ;
CODE_05D66F:        RTL                       ;

DATA_05D670:        db $FF,$FF,$FA,$FF,$FA,$FF,$FA,$FF
                    db $FF,$FF,$00,$00,$00,$00,$00,$00
                    db $FE,$FF,$FE,$FF,$FF,$00,$00,$00
                    db $FF,$12,$12,$12,$10,$10,$FC,$30
                    db $31,$32,$FC,$30,$31,$32,$FC,$FC
                    db $FF,$FF,$FF,$00,$00

CODE_05D69D:        LDA $0B09,x               ;\
CODE_05D6A0:        LSR A                     ; |
CODE_05D6A1:        LSR A                     ; |If less than #$28, branch
CODE_05D6A2:        LSR A                     ; |
CODE_05D6A3:        CMP #$05                  ; |
CODE_05D6A5:        BCC CODE_05D6AF           ;/
CODE_05D6A7:        LDA #$30                  ;\If $28 or higher, just set it to $30
CODE_05D6A9:        STA $0B09,x               ; |
CODE_05D6AC:        JMP CODE_05D739           ;/Then return

CODE_05D6AF:        STA $EB                   ;
CODE_05D6B1:        ASL A                     ;
CODE_05D6B2:        TAY                       ;
CODE_05D6B3:        LDA $021A,x               ;
CODE_05D6B6:        STA $00                   ;
CODE_05D6B8:        LDA $79,x                 ;
CODE_05D6BA:        STA $01                   ;
CODE_05D6BC:        REP #$20                  ;
CODE_05D6BE:        LDA $00                   ;
CODE_05D6C0:        CLC                       ;
CODE_05D6C1:        ADC #$0008                ;
CODE_05D6C4:        SEC                       ;
CODE_05D6C5:        SBC $42                   ;
CODE_05D6C7:        PHA                       ;
CODE_05D6C8:        CLC                       ;
CODE_05D6C9:        ADC $D670,y               ;
CODE_05D6CC:        STA $00                   ;
CODE_05D6CE:        PLA                       ;
CODE_05D6CF:        CLC                       ;
CODE_05D6D0:        ADC $D67A,y               ;
CODE_05D6D3:        STA $02                   ;
CODE_05D6D5:        SEP #$20                  ;
CODE_05D6D7:        LDY $EB                   ;
CODE_05D6D9:        LDA $D698,y               ;
CODE_05D6DC:        CLC                       ;
CODE_05D6DD:        ADC $0B12,x               ;
CODE_05D6E0:        STA $0B12,x               ;
CODE_05D6E3:        LDA $D684,y               ;
CODE_05D6E6:        CLC                       ;
CODE_05D6E7:        ADC $0B12,x               ;
CODE_05D6EA:        STA $04                   ;
CODE_05D6EC:        LDA $D689,y               ;
CODE_05D6EF:        CLC                       ;
CODE_05D6F0:        ADC $0B12,x               ;
CODE_05D6F3:        STA $ED                   ;
CODE_05D6F5:        LDA $0B46,x               ;
CODE_05D6F8:        TAY                       ;
CODE_05D6F9:        INY                       ;
CODE_05D6FA:        INY                       ;
CODE_05D6FB:        INY                       ;
CODE_05D6FC:        INY                       ;
CODE_05D6FD:        LDX $EB                   ;
CODE_05D6FF:        LDA $00                   ;
CODE_05D701:        STA $0900,y               ;
CODE_05D704:        LDA $02                   ;
CODE_05D706:        STA $0904,y               ;
CODE_05D709:        LDA $04                   ;
CODE_05D70B:        STA $0901,y               ;
CODE_05D70E:        LDA $ED                   ;
CODE_05D710:        STA $0905,y               ;
CODE_05D713:        LDA $D68E,x               ;
CODE_05D716:        STA $0902,y               ;
CODE_05D719:        LDA $D693,x               ;
CODE_05D71C:        STA $0906,y               ;
CODE_05D71F:        LDA #$28                  ;
CODE_05D721:        STA $0903,y               ;
CODE_05D724:        STA $0907,y               ;
CODE_05D727:        LDA $01                   ;
CODE_05D729:        BEQ CODE_05D730           ;
CODE_05D72B:        LDA #$01                  ;
CODE_05D72D:        STA $0D00,y               ;
CODE_05D730:        LDA $03                   ;
CODE_05D732:        BEQ CODE_05D739           ;
CODE_05D734:        LDA #$01                  ;
CODE_05D736:        STA $0D04,y               ;
CODE_05D739:        JMP CODE_05D66C           ;

CODE_05D73C:        STY $EC                   ;
CODE_05D73E:        LDX #$00                  ;
CODE_05D740:        LDA $EC                   ;
CODE_05D742:        ASL A                     ;
CODE_05D743:        ASL A                     ;
CODE_05D744:        STA $EB                   ;
CODE_05D746:        TXA                       ;
CODE_05D747:        CLC                       ;
CODE_05D748:        ADC $EB                   ;
CODE_05D74A:        TAY                       ;
CODE_05D74B:        LDA #$D8                  ;
CODE_05D74D:        CLC                       ;
CODE_05D74E:        ADC $D5F2,y               ;
CODE_05D751:        STA $EE                   ;
CODE_05D753:        LDA $D610,x               ;
CODE_05D756:        STA $EF                   ;
CODE_05D758:        TYA                       ;
CODE_05D759:        ASL A                     ;
CODE_05D75A:        TAY                       ;
CODE_05D75B:        REP #$20                  ;
CODE_05D75D:        LDA $D5C2,y               ;
CODE_05D760:        CLC                       ;
CODE_05D761:        ADC $00                   ;
CODE_05D763:        STA $F0                   ;
CODE_05D765:        SEP #$20                  ;
CODE_05D767:        TXA                       ;
CODE_05D768:        ASL A                     ;
CODE_05D769:        ASL A                     ;
CODE_05D76A:        CLC                       ;
CODE_05D76B:        ADC $F2                   ;
CODE_05D76D:        TAY                       ;
CODE_05D76E:        LDA $F0                   ;
CODE_05D770:        STA $0900,y               ;
CODE_05D773:        LDA $EE                   ;
CODE_05D775:        STA $0901,y               ;
CODE_05D778:        LDA $ED                   ;
CODE_05D77A:        STA $0902,y               ;
CODE_05D77D:        LDA $EF                   ;
CODE_05D77F:        STA $0903,y               ;
CODE_05D782:        LDA $F1                   ;
CODE_05D784:        BEQ CODE_05D78B           ;
CODE_05D786:        LDA #$01                  ;
CODE_05D788:        STA $0D00,y               ;
CODE_05D78B:        INX                       ;
CODE_05D78C:        CPX #$04                  ;
CODE_05D78E:        BNE CODE_05D740           ;
CODE_05D790:        RTS                       ;

DATA_05D791:        db $1C,$0E,$06,$08,$18,$16,$1A,$14
                    db $D0,$E0,$E1,$FC,$00,$FC,$F8,$F4

CODE_05D7A1:        PHB                       ;
CODE_05D7A2:        PHK                       ;
CODE_05D7A3:        PLB                       ;
CODE_05D7A4:        PHX                       ;
CODE_05D7A5:        PHY                       ;
CODE_05D7A6:        LDA $0E40                 ;
CODE_05D7A9:        BNE CODE_05D7AE           ;
CODE_05D7AB:        JSR CODE_05D7C2           ;
CODE_05D7AE:        JSR CODE_05D7D1           ;
CODE_05D7B1:        LDA $0E42                 ;
CODE_05D7B4:        AND #$20                  ;
CODE_05D7B6:        BEQ CODE_05D7BE           ;
CODE_05D7B8:        STZ $0E40                 ;
CODE_05D7BB:        STZ $0E41                 ;
CODE_05D7BE:        PLY                       ;
CODE_05D7BF:        PLX                       ;
CODE_05D7C0:        PLB                       ;
CODE_05D7C1:        RTL                       ;

CODE_05D7C2:        LDX #$03                  ;
CODE_05D7C4:        LDA $D79D,x               ;
CODE_05D7C7:        STA $0E42,x               ;
CODE_05D7CA:        DEX                       ;
CODE_05D7CB:        BPL CODE_05D7C4           ;
CODE_05D7CD:        INC $0E40                 ;
CODE_05D7D0:        RTS                       ;

CODE_05D7D1:        LDX #$03                  ;
CODE_05D7D3:        LDY #$30                  ;
CODE_05D7D5:        LDA $0E42,x               ;
CODE_05D7D8:        BMI CODE_05D805           ;
CODE_05D7DA:        BNE CODE_05D7DF           ;
CODE_05D7DC:        JSR CODE_05D815           ;
CODE_05D7DF:        LSR A                     ;
CODE_05D7E0:        LSR A                     ;
CODE_05D7E1:        CMP #$03                  ;
CODE_05D7E3:        BCS CODE_05D805           ;
CODE_05D7E5:        PHX                       ;
CODE_05D7E6:        TAX                       ;
CODE_05D7E7:        LDA $D799,x               ;
CODE_05D7EA:        STA $0802,y               ;
CODE_05D7ED:        LDA #$38                  ;
CODE_05D7EF:        STA $0803,y               ;
CODE_05D7F2:        PLX                       ;
CODE_05D7F3:        LDA $0E46,x               ;
CODE_05D7F6:        SEC                       ;
CODE_05D7F7:        SBC $071C                 ;
CODE_05D7FA:        STA $0800,y               ;
CODE_05D7FD:        LDA $0E4A,x               ;
CODE_05D800:        STA $0801,y               ;
CODE_05D803:        BRA CODE_05D80A           ;

CODE_05D805:        LDA #$F0                  ;
CODE_05D807:        STA $0801,y               ;
CODE_05D80A:        INY                       ;
CODE_05D80B:        INY                       ;
CODE_05D80C:        INY                       ;
CODE_05D80D:        INY                       ;
CODE_05D80E:        INC $0E42,x               ;
CODE_05D811:        DEX                       ;
CODE_05D812:        BPL CODE_05D7D5           ;
CODE_05D814:        RTS                       ;

CODE_05D815:        LDA $0202                 ;
CODE_05D818:        LSR A                     ;
CODE_05D819:        BCC CODE_05D823           ;
CODE_05D81B:        LDA $0219                 ;
CODE_05D81E:        CLC                       ;
CODE_05D81F:        ADC #$06                  ;
CODE_05D821:        BRA CODE_05D829           ;

CODE_05D823:        LDA $0219                 ;
CODE_05D826:        CLC                       ;
CODE_05D827:        ADC #$02                  ;
CODE_05D829:        STA $0E46,x               ;
CODE_05D82C:        LDA $06D5                 ;
CODE_05D82F:        CMP #$18                  ;
CODE_05D831:        BEQ CODE_05D837           ;
CODE_05D833:        CMP #$78                  ;
CODE_05D835:        BNE CODE_05D84A           ;
CODE_05D837:        LDA $07B8                 ;
CODE_05D83A:        AND #$04                  ;
CODE_05D83C:        SEC                       ;
CODE_05D83D:        SBC #$02                  ;
CODE_05D83F:        CLC                       ;
CODE_05D840:        ADC $03B8                 ;
CODE_05D843:        ADC $D795                 ;
CODE_05D846:        STA $0E4A,x               ;
CODE_05D849:        RTS                       ;

CODE_05D84A:        LDA #$F8                  ;
CODE_05D84C:        STA $0E4A,x               ;
CODE_05D84F:        RTS                       ;

DATA_05D850:        db $00,$A5,$40,$28,$C4,$39,$00,$D0
                    db $40,$12,$C8,$39,$00,$F0,$40,$12
                    db $C8,$39,$01,$10,$40,$12,$C8,$39
                    db $01,$30,$40,$12,$C8,$39,$00,$C5
                    db $C0,$10,$C5,$39,$01,$59,$C0,$06
                    db $C8,$39,$00,$DA,$C0,$10,$C6,$39
                    db $00,$A5,$00,$01,$C0,$39,$00,$BA
                    db $00,$01,$C1,$39,$01,$E5,$00,$01
                    db $C2,$39,$01,$FA,$00,$01,$C3,$39
                    db $00,$C6,$00,$13,$C9,$39,$CA,$39
                    db $D1,$39,$D1,$39,$D5,$39,$C9,$79
                    db $C9,$39,$F5,$39,$D5,$39,$C9,$79
                    db $00,$E6,$00,$13,$CB,$39,$CC,$39
                    db $D2,$39,$D2,$39,$D2,$39,$D6,$39
                    db $DA,$39,$DC,$39,$D2,$39,$DE,$39
                    db $01,$06,$00,$13,$CD,$39,$CE,$39
                    db $D3,$39,$D4,$39,$D7,$39,$D8,$39
                    db $D3,$39,$DB,$39,$D7,$39,$DF,$39
                    db $01,$26,$00,$13,$CF,$39,$D0,$39
                    db $CF,$39,$D0,$39,$D9,$39,$C8,$39
                    db $CF,$39,$DD,$39,$D9,$39,$DD,$39
                    db $01,$38,$00,$03,$5F,$38,$7A,$38
                    db $01,$46,$00,$25,$C9,$39,$E0,$39
                    db $C9,$79,$C9,$39,$C9,$79,$D5,$39
                    db $C9,$79,$D1,$39,$C9,$39,$C9,$79
                    db $C8,$39,$D5,$39,$C9,$79,$D5,$39
                    db $C9,$79,$C9,$39,$C9,$79,$C9,$39
                    db $C9,$79,$01,$66,$00,$25,$E3,$39
                    db $E1,$39,$E1,$39,$E3,$39,$E1,$39
                    db $E3,$39,$F4,$39,$E3,$39,$E3,$39
                    db $F4,$39,$C8,$39,$E3,$39,$F4,$39
                    db $E3,$39,$F4,$19,$E3,$39,$F4,$39
                    db $E3,$39,$EE,$39,$01,$86,$00,$25
                    db $E3,$39,$E3,$39,$E3,$39,$E3,$39
                    db $E3,$39,$E3,$39,$E8,$39,$E3,$39
                    db $E3,$39,$E3,$39,$C8,$39,$E3,$39
                    db $E8,$39,$E3,$39,$E8,$39,$E3,$39
                    db $E3,$39,$EF,$39,$F0,$39,$01,$A6
                    db $00,$25,$D2,$39,$D2,$39,$D2,$39
                    db $E5,$39,$E6,$39,$D2,$39,$F3,$39
                    db $D2,$39,$D2,$39,$D2,$39,$C8,$39
                    db $D2,$39,$F3,$39,$D2,$39,$F3,$39
                    db $D2,$39,$D2,$39,$F1,$39,$F6,$39
                    db $01,$C6,$00,$27,$D7,$39,$D7,$39
                    db $D7,$39,$D7,$39,$E7,$39,$D7,$39
                    db $D7,$39,$D7,$39,$D3,$39,$D4,$39
                    db $C8,$39,$D7,$39,$EC,$39,$D7,$39
                    db $D7,$39,$D3,$39,$D4,$39,$D3,$39
                    db $D4,$39,$F2,$39,$01,$E6,$40,$0E
                    db $E4,$39,$01,$EE,$00,$17,$EA,$39
                    db $EB,$39,$C7,$39,$E4,$39,$ED,$39
                    db $E4,$39,$E4,$39,$EA,$39,$EB,$39
                    db $EA,$39,$EB,$39,$E4,$39,$02,$08
                    db $00,$25,$2F,$06,$01,$04,$09,$04
                    db $08,$04,$05,$04,$24,$04,$01,$04
                    db $09,$04,$09,$04,$03,$04,$24,$04
                    db $17,$04,$12,$04,$17,$04,$1D,$04
                    db $0E,$04,$17,$04,$0D,$04,$18,$04
                    db $02,$4A,$00,$19,$01,$08,$24,$00
                    db $19,$08,$15,$08,$0A,$08,$22,$08
                    db $0E,$08,$1B,$08,$24,$00,$10,$08
                    db $0A,$08,$16,$08,$0E,$08,$02,$8A
                    db $00,$19,$02,$08,$24,$00,$19,$08
                    db $15,$08,$0A,$08,$22,$08,$0E,$08
                    db $1B,$08,$24,$00,$10,$08,$0A,$08
                    db $16,$08,$0E,$08,$02,$EB,$00,$07
                    db $1D,$08,$18,$08,$19,$08,$28,$08
                    db $02,$F5,$00,$01,$00,$08,$FF,$FF
                    db $00,$30

CODE_05DA72:        PHB                       ;
CODE_05DA73:        PHK                       ;
CODE_05DA74:        PLB                       ;
CODE_05DA75:        STY $00                   ;
CODE_05DA77:        LDA $03B9                 ;
CODE_05DA7A:        LDX $039A,y               ;
CODE_05DA7D:        LDY $0B46,x               ;
CODE_05DA80:        STY $02                   ;
CODE_05DA82:        DEC A                     ;
CODE_05DA83:        JSR CODE_05DAFF           ;
CODE_05DA86:        LDA $03AE                 ;
CODE_05DA89:        STA $0900,y               ;
CODE_05DA8C:        STA $0908,y               ;
CODE_05DA8F:        STA $0910,y               ;
CODE_05DA92:        STA $0904,y               ;
CODE_05DA95:        STA $090C,y               ;
CODE_05DA98:        STA $0914,y               ;
CODE_05DA9B:        STA $0918,y               ;
CODE_05DA9E:        STA $091C,y               ;
CODE_05DAA1:        STA $0920,y               ;
CODE_05DAA4:        LDA #$1B                  ;
CODE_05DAA6:        STA $0903,y               ;
CODE_05DAA9:        STA $090B,y               ;
CODE_05DAAC:        STA $0913,y               ;
CODE_05DAAF:        STA $0907,y               ;
CODE_05DAB2:        STA $090F,y               ;
CODE_05DAB5:        STA $0917,y               ;
CODE_05DAB8:        STA $091B,y               ;
CODE_05DABB:        STA $091F,y               ;
CODE_05DABE:        STA $0923,y               ;
CODE_05DAC1:        LDX #$08                  ;
CODE_05DAC3:        LDA #$2C                  ;
CODE_05DAC5:        STA $0902,y               ;
CODE_05DAC8:        INY                       ;
CODE_05DAC9:        INY                       ;
CODE_05DACA:        INY                       ;
CODE_05DACB:        INY                       ;
CODE_05DACC:        DEX                       ;
CODE_05DACD:        BPL CODE_05DAC3           ;
CODE_05DACF:        LDY $02                   ;
CODE_05DAD1:        LDA $0000                 ;
CODE_05DAD4:        BNE CODE_05DADB           ;
CODE_05DAD6:        LDA #$2A                  ;
CODE_05DAD8:        STA $0902,y               ;
CODE_05DADB:        LDA $0399                 ;
CODE_05DADE:        LSR A                     ;
CODE_05DADF:        LSR A                     ;
CODE_05DAE0:        LSR A                     ;
CODE_05DAE1:        LSR A                     ;
CODE_05DAE2:        INC A                     ;
CODE_05DAE3:        TAX                       ;
CODE_05DAE4:        ASL A                     ;
CODE_05DAE5:        ASL A                     ;
CODE_05DAE6:        CLC                       ;
CODE_05DAE7:        ADC $02                   ;
CODE_05DAE9:        TAY                       ;
CODE_05DAEA:        CPX #$09                  ;
CODE_05DAEC:        BCS CODE_05DAFA           ;
CODE_05DAEE:        LDA #$F0                  ;
CODE_05DAF0:        STA $0901,y               ;
CODE_05DAF3:        INY                       ;
CODE_05DAF4:        INY                       ;
CODE_05DAF5:        INY                       ;
CODE_05DAF6:        INY                       ;
CODE_05DAF7:        INX                       ;
CODE_05DAF8:        BRA CODE_05DAEA           ;

CODE_05DAFA:        LDY $0000                 ;
CODE_05DAFD:        PLB                       ;
CODE_05DAFE:        RTL                       ;

CODE_05DAFF:        LDX #$09                  ;
CODE_05DB01:        STA $0901,y               ;
CODE_05DB04:        PHA                       ;
CODE_05DB05:        LDA $0223                 ;
CODE_05DB08:        STA $E4                   ;
CODE_05DB0A:        LDA $82                   ;
CODE_05DB0C:        STA $E5                   ;
CODE_05DB0E:        REP #$20                  ;
CODE_05DB10:        LDA $E4                   ;
CODE_05DB12:        SEC                       ;
CODE_05DB13:        SBC $42                   ;
CODE_05DB15:        STA $E4                   ;
CODE_05DB17:        SEP #$20                  ;
CODE_05DB19:        LDA #$02                  ;
CODE_05DB1B:        STA $DD                   ;
CODE_05DB1D:        LDA $E5                   ;
CODE_05DB1F:        BEQ CODE_05DB23           ;
CODE_05DB21:        LDA #$01                  ;
CODE_05DB23:        ORA $DD                   ;
CODE_05DB25:        STA $0D00,y               ;
CODE_05DB28:        LDA $0236                 ;
CODE_05DB2B:        BNE CODE_05DB3B           ;
CODE_05DB2D:        LDA $0901,y               ;
CODE_05DB30:        BPL CODE_05DB3B           ;
CODE_05DB32:        CMP #$F0                  ;
CODE_05DB34:        BCS CODE_05DB3B           ;
CODE_05DB36:        LDA #$F0                  ;
CODE_05DB38:        STA $0901,y               ;
CODE_05DB3B:        PLA                       ;
CODE_05DB3C:        CLC                       ;
CODE_05DB3D:        ADC #$10                  ;
CODE_05DB3F:        INY                       ;
CODE_05DB40:        INY                       ;
CODE_05DB41:        INY                       ;
CODE_05DB42:        INY                       ;
CODE_05DB43:        DEX                       ;
CODE_05DB44:        BNE CODE_05DB01           ;
CODE_05DB46:        LDY $02                   ;
CODE_05DB48:        RTS                       ;

CODE_05DB49:        LDY $0B53                 ;
CODE_05DB4C:        REP #$20                  ;
CODE_05DB4E:        LDA $0E70                 ;
CODE_05DB51:        SEC                       ;
CODE_05DB52:        SBC $42                   ;
CODE_05DB54:        STA $0E6B                 ;
CODE_05DB57:        SEP #$20                  ;
CODE_05DB59:        LDA $0E6F                 ;
CODE_05DB5C:        BNE CODE_05DB89           ;
CODE_05DB5E:        LDA $0E6D                 ;
CODE_05DB61:        STA $0801,y               ;
CODE_05DB64:        LDA $0E6B                 ;
CODE_05DB67:        JSR CODE_05DC6F           ;
CODE_05DB6A:        STA $0800,y               ;
CODE_05DB6D:        LDA #$26                  ;
CODE_05DB6F:        STA $0802,y               ;
CODE_05DB72:        LDA #$29                  ;
CODE_05DB74:        STA $0803,y               ;
CODE_05DB77:        DEC $0E6E                 ;
CODE_05DB7A:        BEQ CODE_05DB7F           ;
CODE_05DB7C:        JMP CODE_05DC03           ;

CODE_05DB7F:        LDA #$06                  ;
CODE_05DB81:        STA $0E6E                 ;
CODE_05DB84:        INC $0E6F                 ;
CODE_05DB87:        BRA CODE_05DC03           ;

CODE_05DB89:        LDA $0E6F                 ;
CODE_05DB8C:        CMP #$06                  ;
CODE_05DB8E:        BCS CODE_05DC03           ;
CODE_05DB90:        PHX                       ;
CODE_05DB91:        LDX $0E6F                 ;
CODE_05DB94:        LDA $DC35,x               ;
CODE_05DB97:        CLC                       ;
CODE_05DB98:        ADC $0E6B                 ;
CODE_05DB9B:        STA $0800,y               ;
CODE_05DB9E:        STA $0804,y               ;
CODE_05DBA1:        JSR CODE_05DC6F           ;
CODE_05DBA4:        LDA $DC41,x               ;
CODE_05DBA7:        CLC                       ;
CODE_05DBA8:        ADC $0E6D                 ;
CODE_05DBAB:        STA $0801,y               ;
CODE_05DBAE:        CLC                       ;
CODE_05DBAF:        ADC #$08                  ;
CODE_05DBB1:        STA $0805,y               ;
CODE_05DBB4:        LDA $DC3B,x               ;
CODE_05DBB7:        CLC                       ;
CODE_05DBB8:        ADC $0E6B                 ;
CODE_05DBBB:        STA $0808,y               ;
CODE_05DBBE:        STA $080C,y               ;
CODE_05DBC1:        JSR CODE_05DC6F           ;
CODE_05DBC4:        LDA $DC41,x               ;
CODE_05DBC7:        CLC                       ;
CODE_05DBC8:        ADC $0E6D                 ;
CODE_05DBCB:        STA $0809,y               ;
CODE_05DBCE:        CLC                       ;
CODE_05DBCF:        ADC #$08                  ;
CODE_05DBD1:        STA $080D,y               ;
CODE_05DBD4:        LDX $0E6F                 ;
CODE_05DBD7:        DEX                       ;
CODE_05DBD8:        TXA                       ;
CODE_05DBD9:        ASL A                     ;
CODE_05DBDA:        ASL A                     ;
CODE_05DBDB:        TAX                       ;
CODE_05DBDC:        LDA #$03                  ;
CODE_05DBDE:        STA $04                   ;
CODE_05DBE0:        LDA $DC47,x               ;
CODE_05DBE3:        STA $0802,y               ;
CODE_05DBE6:        LDA $DC5B,x               ;
CODE_05DBE9:        STA $0803,y               ;
CODE_05DBEC:        INY                       ;
CODE_05DBED:        INY                       ;
CODE_05DBEE:        INY                       ;
CODE_05DBEF:        INY                       ;
CODE_05DBF0:        INX                       ;
CODE_05DBF1:        DEC $04                   ;
CODE_05DBF3:        BPL CODE_05DBE0           ;
CODE_05DBF5:        DEC $0E6E                 ;
CODE_05DBF8:        BNE CODE_05DC02           ;
CODE_05DBFA:        LDA #$06                  ;
CODE_05DBFC:        STA $0E6E                 ;
CODE_05DBFF:        INC $0E6F                 ;
CODE_05DC02:        PLX                       ;
CODE_05DC03:        JMP CODE_05DCE9           ;

CODE_05DC06:        LDA $09                   ;
CODE_05DC08:        LSR A                     ;
CODE_05DC09:        BCS CODE_05DC0E           ;
CODE_05DC0B:        DEC $0248,x               ;
CODE_05DC0E:        LDA $0248,x               ;
CODE_05DC11:        STA $0801,y               ;
CODE_05DC14:        LDA $03B3                 ;
CODE_05DC17:        STA $0800,y               ;
CODE_05DC1A:        LDA #$02                  ;
CODE_05DC1C:        STA $0C00,y               ;
CODE_05DC1F:        CMP #$F8                  ;
CODE_05DC21:        BCC CODE_05DC28           ;
CODE_05DC23:        LDA #$03                  ;
CODE_05DC25:        STA $0C00,y               ;
CODE_05DC28:        LDA #$23                  ;
CODE_05DC2A:        STA $0803,y               ;
CODE_05DC2D:        LDA #$2E                  ;
CODE_05DC2F:        STA $0802,y               ;
CODE_05DC32:        JMP CODE_05DB49           ;

DATA_05DC35:        db $00,$FC,$FB,$FA,$FA,$FA,$00,$04
                    db $05,$06,$06,$06,$00,$FC,$FC,$FE
                    db $FE,$FF,$27,$27,$28,$28,$36,$37
                    db $36,$37,$36,$37,$36,$37,$38,$29
                    db $38,$29,$38,$29,$38,$29,$29,$A9
                    db $29,$A9,$29,$29,$69,$69,$29,$29
                    db $69,$69,$29,$29,$69,$69,$29,$29
                    db $69,$69

CODE_05DC6F:        PHA                       ;
CODE_05DC70:        CMP #$F8                  ;
CODE_05DC72:        BCC CODE_05DC7C           ;
CODE_05DC74:        LDA #$01                  ;
CODE_05DC76:        STA $0C00,y               ;
CODE_05DC79:        STA $0C04,y               ;
CODE_05DC7C:        PLA                       ;
CODE_05DC7D:        RTS                       ;

CODE_05DC7E:        LDA $0248,x               ;
CODE_05DC81:        CLC                       ;
CODE_05DC82:        ADC #$04                  ;
CODE_05DC84:        STA $0E6D                 ;
CODE_05DC87:        LDA $022A,x               ;
CODE_05DC8A:        STA $0E70                 ;
CODE_05DC8D:        LDA $0089,x               ;
CODE_05DC90:        STA $0E71                 ;
CODE_05DC93:        LDA #$06                  ;
CODE_05DC95:        STA $0E6E                 ;
CODE_05DC98:        STZ $0E6F                 ;
CODE_05DC9B:        RTL                       ;

DATA_05DC9C:        db $28,$2A,$2C,$2E

CODE_05DCA0:        PHB                       ;
CODE_05DCA1:        PHK                       ;
CODE_05DCA2:        PLB                       ;
CODE_05DCA3:        LDY $0B62,x               ;
CODE_05DCA6:        LDA $39,x                 ;
CODE_05DCA8:        CMP #$02                  ;
CODE_05DCAA:        BCC CODE_05DCAF           ;
CODE_05DCAC:        JMP CODE_05DC06           ;

CODE_05DCAF:        LDA $B1,x                 ;
CODE_05DCB1:        BMI CODE_05DCB6           ;
CODE_05DCB3:        JMP CODE_05DB49           ;

CODE_05DCB6:        LDA $0248,x               ;
CODE_05DCB9:        STA $0801,y               ;
CODE_05DCBC:        LDA $03B3                 ;
CODE_05DCBF:        SEC                       ;
CODE_05DCC0:        SBC #$04                  ;
CODE_05DCC2:        STA $E4                   ;
CODE_05DCC4:        CMP #$F0                  ;
CODE_05DCC6:        BCS CODE_05DCCC           ;
CODE_05DCC8:        LDA #$02                  ;
CODE_05DCCA:        BRA CODE_05DCCE           ;

CODE_05DCCC:        LDA #$03                  ;
CODE_05DCCE:        STA $0C00,y               ;
CODE_05DCD1:        LDA $E4                   ;
CODE_05DCD3:        STA $0800,y               ;
CODE_05DCD6:        LDA $09                   ;
CODE_05DCD8:        LSR A                     ;
CODE_05DCD9:        AND #$03                  ;
CODE_05DCDB:        TAX                       ;
CODE_05DCDC:        LDA $DC9C,x               ;
CODE_05DCDF:        STA $0802,y               ;
CODE_05DCE2:        LDA #$28                  ;
CODE_05DCE4:        STA $0803,y               ;
CODE_05DCE7:        LDX $9E                   ;
CODE_05DCE9:        PLB                       ;
CODE_05DCEA:        RTL                       ;

DATA_05DCEB:        db $04,$00,$04,$00

DATA_05DCEF:        db $00,$04,$00,$04,$00,$08,$00,$08
                    db $08,$00,$08,$00

DATA_05DCFB:        db $44,$46,$44,$46,$81,$83,$80,$82
                    db $2A,$2A,$EA,$EA

;Draw hammer
CODE_05DD07:        PHB                       ;
CODE_05DD08:        PHK                       ;
CODE_05DD09:        PLB                       ; Preserve stuff
CODE_05DD0A:        LDY $0B62,x               ; get misc object OAM data offset
CODE_05DD0D:        LDA $0747                 ;\ If screen locked, branch
CODE_05DD10:        BNE CODE_05DD1A           ;/
CODE_05DD12:        LDA $39,x                 ;\
CODE_05DD14:        AND #$7F                  ; |
CODE_05DD16:        CMP #$01                  ; |
CODE_05DD18:        BEQ CODE_05DD1E           ;/
CODE_05DD1A:        LDX #$00                  ;
CODE_05DD1C:        BEQ CODE_05DD25           ;
CODE_05DD1E:        LDA $09                   ;
CODE_05DD20:        LSR A                     ;
CODE_05DD21:        LSR A                     ;
CODE_05DD22:        AND #$03                  ;
CODE_05DD24:        TAX                       ;
CODE_05DD25:        LDA $03BE                 ;
CODE_05DD28:        CLC                       ;
CODE_05DD29:        ADC $DCEF,x               ;
CODE_05DD2C:        STA $0801,y               ;
CODE_05DD2F:        REP #$20                  ;
CODE_05DD31:        LDA $DCEB,x               ;
CODE_05DD34:        AND #$00FF                ;
CODE_05DD37:        CLC                       ;
CODE_05DD38:        ADC $0E93                 ;
CODE_05DD3B:        SEC                       ;
CODE_05DD3C:        SBC #$0008                ;
CODE_05DD3F:        STA $E4                   ;
CODE_05DD41:        SEP #$20                  ;
CODE_05DD43:        LDA $E4                   ;
CODE_05DD45:        STA $0800,y               ;
CODE_05DD48:        LDA #$02                  ;
CODE_05DD4A:        STA $0C00,y               ;
CODE_05DD4D:        LDA $E5                   ;
CODE_05DD4F:        BEQ CODE_05DD56           ;
CODE_05DD51:        LDA #$03                  ;
CODE_05DD53:        STA $0C00,y               ;
CODE_05DD56:        LDA $DCFB,x               ;
CODE_05DD59:        STA $0802,y               ;
CODE_05DD5C:        LDA $DD03,x               ;
CODE_05DD5F:        STA $0803,y               ;
CODE_05DD62:        LDA $03D6                 ;
CODE_05DD65:        AND #$0F                  ;
CODE_05DD67:        CMP #$0F                  ;
CODE_05DD69:        BEQ CODE_05DD72           ;
CODE_05DD6B:        LDA $03D6                 ;
CODE_05DD6E:        AND #$F0                  ;
CODE_05DD70:        BEQ CODE_05DD76           ;
CODE_05DD72:        LDX $9E                   ;
CODE_05DD74:        STZ $39,x                 ;
CODE_05DD76:        LDX $9E                   ;
CODE_05DD78:        PLB                       ;
CODE_05DD79:        RTL                       ;

CODE_05DD7A:        PHD                       ;
CODE_05DD7B:        LDA #$0C                  ;
CODE_05DD7D:        XBA                       ;
CODE_05DD7E:        LDA #$00                  ;
CODE_05DD80:        TCD                       ;
CODE_05DD81:        REP #$10                  ;
CODE_05DD83:        LDX #$0000                ;
CODE_05DD86:        TXY                       ;
CODE_05DD87:        LDA $0C,x                 ;
CODE_05DD89:        LSR A                     ;
CODE_05DD8A:        ROR A                     ;
CODE_05DD8B:        ROR A                     ;
CODE_05DD8C:        STA $01                   ;
CODE_05DD8E:        LDA $08,x                 ;
CODE_05DD90:        ASL A                     ;
CODE_05DD91:        ASL A                     ;
CODE_05DD92:        ASL A                     ;
CODE_05DD93:        ASL A                     ;
CODE_05DD94:        TSB $01                   ;
CODE_05DD96:        LDA $04,x                 ;
CODE_05DD98:        ASL A                     ;
CODE_05DD99:        ASL A                     ;
CODE_05DD9A:        TSB $01                   ;
CODE_05DD9C:        LDA $00,x                 ;
CODE_05DD9E:        ORA $01                   ;
CODE_05DDA0:        STA $0A00,y               ;
CODE_05DDA3:        INY                       ;
CODE_05DDA4:        LDA $1C,x                 ;
CODE_05DDA6:        LSR A                     ;
CODE_05DDA7:        ROR A                     ;
CODE_05DDA8:        ROR A                     ;
CODE_05DDA9:        STA $01                   ;
CODE_05DDAB:        LDA $18,x                 ;
CODE_05DDAD:        ASL A                     ;
CODE_05DDAE:        ASL A                     ;
CODE_05DDAF:        ASL A                     ;
CODE_05DDB0:        ASL A                     ;
CODE_05DDB1:        TSB $01                   ;
CODE_05DDB3:        LDA $14,x                 ;
CODE_05DDB5:        ASL A                     ;
CODE_05DDB6:        ASL A                     ;
CODE_05DDB7:        TSB $01                   ;
CODE_05DDB9:        LDA $10,x                 ;
CODE_05DDBB:        ORA $01                   ;
CODE_05DDBD:        STA $0A00,y               ;
CODE_05DDC0:        INY                       ;
CODE_05DDC1:        REP #$20                  ;
CODE_05DDC3:        TXA                       ;
CODE_05DDC4:        CLC                       ;
CODE_05DDC5:        ADC #$0020                ;
CODE_05DDC8:        TAX                       ;
CODE_05DDC9:        SEP #$20                  ;
CODE_05DDCB:        CPX #$0200                ;
CODE_05DDCE:        BCC CODE_05DD87           ;
CODE_05DDD0:        SEP #$10                  ;
CODE_05DDD2:        PLD                       ;
CODE_05DDD3:        RTL                       ;

CODE_05DDD4:        INC $0B76                 ;
CODE_05DDD7:        LDA #$38                  ;
CODE_05DDD9:        STA $0287                 ;
CODE_05DDDC:        REP #$20                  ;
CODE_05DDDE:        LDA #$B000                ;
CODE_05DDE1:        STA $0285                 ;
CODE_05DDE4:        LDA #$0800                ;
CODE_05DDE7:        STA $0288                 ;
CODE_05DDEA:        LDA #$7C00                ;
CODE_05DDED:        STA $028A                 ;
CODE_05DDF0:        SEP #$20                  ;
CODE_05DDF2:        RTS                       ;

CODE_05DDF3:        INC $0B76                 ;
CODE_05DDF6:        LDA #$07                  ;
CODE_05DDF8:        STA $0287                 ;
CODE_05DDFB:        REP #$20                  ;
CODE_05DDFD:        LDA #$B800                ;
CODE_05DE00:        STA $0285                 ;
CODE_05DE03:        LDA #$0800                ;
CODE_05DE06:        STA $0288                 ;
CODE_05DE09:        LDA #$7C00                ;
CODE_05DE0C:        STA $028A                 ;
CODE_05DE0F:        SEP #$20                  ;
CODE_05DE11:        RTS                       ;

CODE_05DE12:        PHX                       ;
CODE_05DE13:        PHY                       ;
CODE_05DE14:        JSR CODE_05E231           ;Clear windowing HDMA table
CODE_05DE17:        JSR CODE_05E1CE           ;
CODE_05DE1A:        LDA #$22                  ;
CODE_05DE1C:        STA $1204                 ;
CODE_05DE1F:        LDA #$02                  ;
CODE_05DE21:        STA $1205                 ;
CODE_05DE24:        LDA #$15                  ;
CODE_05DE26:        STA $1207                 ;
CODE_05DE29:        LDA #$02                  ;
CODE_05DE2B:        STA $1208                 ;
CODE_05DE2E:        PLY                       ;
CODE_05DE2F:        PLX                       ;
CODE_05DE30:        RTL                       ;

CODE_05DE31:        JSR CODE_05E231           ;Clear windowing HDMA table
CODE_05DE34:        JSR CODE_05E1CE           ;
CODE_05DE37:        JSR CODE_05DE65           ;
CODE_05DE3A:        JSR CODE_05DDD4           ;
CODE_05DE3D:        LDA #$01                  ;\Set paused flag
CODE_05DE3F:        STA $0776                 ;/
CODE_05DE42:        STZ $0B77                 ;
CODE_05DE45:        STZ $0B78                 ;
CODE_05DE48:        STZ $0F8A                 ;
CODE_05DE4B:        RTL                       ;

CODE_05DE4C:        PHB                       ;\
CODE_05DE4D:        PHK                       ; |
CODE_05DE4E:        PLB                       ; |
CODE_05DE4F:        PHX                       ; |
CODE_05DE50:        PHY                       ; |
CODE_05DE51:        LDA $0B75                 ; |Pause window states
CODE_05DE54:        ASL A                     ; |
CODE_05DE55:        TAX                       ; |
CODE_05DE56:        JSR (PNTR_05DE5D,x)       ; |
CODE_05DE59:        PLY                       ; |
CODE_05DE5A:        PLX                       ; |
CODE_05DE5B:        PLB                       ; |
CODE_05DE5C:        RTL                       ;/

PNTR_05DE5D:        dw CODE_05E0B3            ;$00 = Expand
                    dw CODE_05DE97            ;$01 = Maintain pause window, wait for input etc
                    dw CODE_05E1AF            ;$02 = Select option?
                    dw CODE_05E11D            ;$03 = Collapse

CODE_05DE65:        REP #$20                  ;
CODE_05DE67:        LDA #$0010                ;
CODE_05DE6A:        STA $0B6B                 ;
CODE_05DE6D:        LDA #$0064                ;
CODE_05DE70:        STA $0B6D                 ;
CODE_05DE73:        LDA #$00A4                ;
CODE_05DE76:        STA $0B6F                 ;
CODE_05DE79:        LDA #$00C4                ;
CODE_05DE7C:        STA $0B71                 ;
CODE_05DE7F:        LDA #$00D0                ;
CODE_05DE82:        STA $0B73                 ;
CODE_05DE85:        SEP #$20                  ;
CODE_05DE87:        LDA $1680                 ;
CODE_05DE8A:        BEQ CODE_05DE96           ;
CODE_05DE8C:        LDA $077A                 ;
CODE_05DE8F:        BEQ CODE_05DE96           ;
CODE_05DE91:        LDA #$0E                  ;
CODE_05DE93:        STA $0B6B                 ;
CODE_05DE96:        RTS                       ;

CODE_05DE97:        JSR CODE_05DFFD           ;
CODE_05DE9A:        LDX $0753                 ;
CODE_05DE9D:        LDA $1680                 ;
CODE_05DEA0:        BEQ CODE_05DEB0           ;
CODE_05DEA2:        LDA $077A                 ;
CODE_05DEA5:        BEQ CODE_05DEB0           ;
CODE_05DEA7:        LDA $0761                 ;
CODE_05DEAA:        BMI CODE_05DEB0           ;
CODE_05DEAC:        TXA                       ;
CODE_05DEAD:        EOR #$01                  ;
CODE_05DEAF:        TAX                       ;
CODE_05DEB0:        LDA $0FF6,x               ;
CODE_05DEB3:        STA $F2                   ;
CODE_05DEB5:        AND #$2C                  ;
CODE_05DEB7:        BNE CODE_05DEBC           ;
CODE_05DEB9:        JMP CODE_05DF0D           ;

CODE_05DEBC:        LDA $F2                   ;
CODE_05DEBE:        AND #$20                  ;
CODE_05DEC0:        BNE CODE_05DEF8           ;
CODE_05DEC2:        LDA $F2                   ;
CODE_05DEC4:        AND #$08                  ;
CODE_05DEC6:        BNE CODE_05DEE1           ;
CODE_05DEC8:        INC $0B77                 ;
CODE_05DECB:        LDA $0B77                 ;
CODE_05DECE:        CMP #$03                  ;
CODE_05DED0:        BCC CODE_05DED7           ;
CODE_05DED2:        DEC $0B77                 ;
CODE_05DED5:        BRA CODE_05DF0D           ;

CODE_05DED7:        LDA #$01                  ;\Coin sound
CODE_05DED9:        STA $1603                 ;/
CODE_05DEDC:        STZ $0B78                 ;
CODE_05DEDF:        BRA CODE_05DF0D           ;

CODE_05DEE1:        DEC $0B77                 ;
CODE_05DEE4:        LDA $0B77                 ;
CODE_05DEE7:        BPL CODE_05DEEE           ;
CODE_05DEE9:        INC $0B77                 ;
CODE_05DEEC:        BRA CODE_05DF0D           ;

CODE_05DEEE:        LDA #$01                  ;\Coin sound
CODE_05DEF0:        STA $1603                 ;/
CODE_05DEF3:        STZ $0B78                 ;
CODE_05DEF6:        BRA CODE_05DF0D           ;

CODE_05DEF8:        INC $0B77                 ;
CODE_05DEFB:        LDA $0B77                 ;
CODE_05DEFE:        CMP #$03                  ;
CODE_05DF00:        BCC CODE_05DF05           ;
CODE_05DF02:        STZ $0B77                 ;
CODE_05DF05:        LDA #$01                  ;\Coin sound
CODE_05DF07:        STA $1603                 ;/
CODE_05DF0A:        STZ $0B78                 ;
CODE_05DF0D:        LDA #$4C                  ;
CODE_05DF0F:        STA $0800                 ;
CODE_05DF12:        LDX $0B77                 ;
CODE_05DF15:        LDA $DFA9,x               ;
CODE_05DF18:        STA $0801                 ;
CODE_05DF1B:        LDA $0B78                 ;
CODE_05DF1E:        AND #$10                  ;
CODE_05DF20:        LSR A                     ;
CODE_05DF21:        LSR A                     ;
CODE_05DF22:        LSR A                     ;
CODE_05DF23:        LSR A                     ;
CODE_05DF24:        TAX                       ;
CODE_05DF25:        LDA $DFAC,x               ;
CODE_05DF28:        STA $0802                 ;
CODE_05DF2B:        LDA #$21                  ;
CODE_05DF2D:        STA $0803                 ;
CODE_05DF30:        LDA #$00                  ;
CODE_05DF32:        STA $0C00                 ;
CODE_05DF35:        INC $0B78                 ;
CODE_05DF38:        LDA $F2                   ;
CODE_05DF3A:        AND #$10                  ;
CODE_05DF3C:        BEQ CODE_05DFA8           ;
CODE_05DF3E:        LDA #$F2                  ;
CODE_05DF40:        STA $1602                 ;
CODE_05DF43:        STZ $0B78                 ;
CODE_05DF46:        LDA $0B77                 ;
CODE_05DF49:        BEQ CODE_05DF68           ;
CODE_05DF4B:        LDA #$30                  ;
CODE_05DF4D:        STA $0F8A                 ;
CODE_05DF50:        LDA #$02                  ;
CODE_05DF52:        STA $0B75                 ;
CODE_05DF55:        LDA #$3B                  ;\
CODE_05DF57:        STA $1600                 ;/Save and continue/quit sound
CODE_05DF5A:        LDA $0B77                 ;
CODE_05DF5D:        CMP #$02                  ;
CODE_05DF5F:        BNE CODE_05DF7C           ;
CODE_05DF61:        LDA #$F3                  ;
CODE_05DF63:        STA $1602                 ;
CODE_05DF66:        BRA CODE_05DF7C           ;

CODE_05DF68:        LDA #$10                  ;
CODE_05DF6A:        STA $0F8A                 ;
CODE_05DF6D:        LDA #$10                  ;
CODE_05DF6F:        STA $0B6B                 ;
CODE_05DF72:        LDA #$02                  ;
CODE_05DF74:        STA $0B75                 ;
CODE_05DF77:        LDA #$43                  ;\
CODE_05DF79:        STA $1600                 ;/Pause sound
CODE_05DF7C:        LDA $1680                 ;
CODE_05DF7F:        BEQ CODE_05DF9A           ;
CODE_05DF81:        LDA $0B77                 ;
CODE_05DF84:        CMP #$02                  ;
CODE_05DF86:        BEQ CODE_05DF9A           ;
CODE_05DF88:        STZ $0776                 ;Clear paused flag
CODE_05DF8B:        LDA #$0E                  ;
CODE_05DF8D:        STA $0772                 ;
CODE_05DF90:        LDX $0B77                 ;
CODE_05DF93:        BEQ CODE_05DF99           ;
CODE_05DF95:        JSL CODE_008F03           ;
CODE_05DF99:        RTS                       ;

CODE_05DF9A:        LDA #$20                  ;
CODE_05DF9C:        STA $0F8A                 ;
CODE_05DF9F:        LDA $0B77                 ;
CODE_05DFA2:        BEQ CODE_05DFA8           ;
CODE_05DFA4:        JSL CODE_008F03           ;
CODE_05DFA8:        RTS                       ;

DATA_05DFA9:        db $50,$60,$70

DATA_05DFAC:        db $D0,$DE,$AA,$AA,$AA,$AA,$AA,$AA ;First 2 bytes are the flashing arrow animation
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$14 ;First byte = arrow, 2nd byte = empty space
                    db $15,$16,$17,$18,$19,$1A,$1B,$AA ;SMB1 Pause screen tilemap. Pwnsome
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$28,$29,$2A,$2B,$1C,$14,$15
                    db $16,$17,$18,$19,$1A,$1B,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$28,$29,$2A,$2B,$1C
                    db $24,$25,$26,$27,$AA,$AA,$AA,$AA
                    db $FF                             ;(end of tilemap)


CODE_05DFFD:        REP #$10                  ;
CODE_05DFFF:        LDY #$0010                ;
CODE_05E002:        LDX #$0000                ;
CODE_05E005:        LDA #$48                  ;
CODE_05E007:        STA $01                   ;
CODE_05E009:        LDA #$54                  ;
CODE_05E00B:        STA $00                   ;
CODE_05E00D:        LDA $DFAE,x               ;
CODE_05E010:        BPL CODE_05E02A           ;
CODE_05E012:        INX                       ;
CODE_05E013:        INC A                     ;
CODE_05E014:        BEQ CODE_05E04B           ;
CODE_05E016:        LDA $00                   ;
CODE_05E018:        CLC                       ;
CODE_05E019:        ADC #$08                  ;
CODE_05E01B:        STA $00                   ;
CODE_05E01D:        CMP #$B8                  ;
CODE_05E01F:        BCC CODE_05E00D           ;
CODE_05E021:        LDA $01                   ;
CODE_05E023:        CLC                       ;
CODE_05E024:        ADC #$08                  ;
CODE_05E026:        STA $01                   ;
CODE_05E028:        BRA CODE_05E009           ;

CODE_05E02A:        CLC                       ;
CODE_05E02B:        ADC #$C0                  ;
CODE_05E02D:        STA $0802,y               ;
CODE_05E030:        LDA $00                   ;
CODE_05E032:        STA $0800,y               ;
CODE_05E035:        LDA $01                   ;
CODE_05E037:        STA $0801,y               ;
CODE_05E03A:        LDA #$21                  ;
CODE_05E03C:        STA $0803,y               ;
CODE_05E03F:        LDA #$00                  ;
CODE_05E041:        STA $0C00,y               ;
CODE_05E044:        INX                       ;
CODE_05E045:        INY                       ;
CODE_05E046:        INY                       ;
CODE_05E047:        INY                       ;
CODE_05E048:        INY                       ;
CODE_05E049:        BRA CODE_05E016           ;

CODE_05E04B:        LDA #$40                  ;
CODE_05E04D:        STA $01                   ;
CODE_05E04F:        LDA #$40                  ;
CODE_05E051:        STA $00                   ;
CODE_05E053:        LDA $00                   ;
CODE_05E055:        STA $0800,y               ;
CODE_05E058:        CLC                       ;
CODE_05E059:        ADC #$10                  ;
CODE_05E05B:        STA $00                   ;
CODE_05E05D:        LDA $01                   ;
CODE_05E05F:        STA $0801,y               ;
CODE_05E062:        LDA #$CD                  ;
CODE_05E064:        STA $0802,y               ;
CODE_05E067:        LDA #$21                  ;
CODE_05E069:        STA $0803,y               ;
CODE_05E06C:        LDA #$02                  ;
CODE_05E06E:        STA $0C00,y               ;
CODE_05E071:        INY                       ;
CODE_05E072:        INY                       ;
CODE_05E073:        INY                       ;
CODE_05E074:        INY                       ;
CODE_05E075:        LDA $00                   ;
CODE_05E077:        CMP #$C0                  ;
CODE_05E079:        BCC CODE_05E053           ;
CODE_05E07B:        LDA $01                   ;
CODE_05E07D:        CMP #$80                  ;
CODE_05E07F:        BCS CODE_05E088           ;
CODE_05E081:        CLC                       ;
CODE_05E082:        ADC #$10                  ;
CODE_05E084:        STA $01                   ;
CODE_05E086:        BRA CODE_05E04F           ;

CODE_05E088:        SEP #$10                  ;
CODE_05E08A:        LDA #$4C                  ;
CODE_05E08C:        STA $0800                 ;
CODE_05E08F:        LDX $0B77                 ;
CODE_05E092:        LDA $DFA9,x               ;
CODE_05E095:        STA $0801                 ;
CODE_05E098:        LDA $0B78                 ;
CODE_05E09B:        AND #$10                  ;
CODE_05E09D:        LSR A                     ;
CODE_05E09E:        LSR A                     ;
CODE_05E09F:        LSR A                     ;
CODE_05E0A0:        LSR A                     ;
CODE_05E0A1:        TAX                       ;
CODE_05E0A2:        LDA $DFAC,x               ;
CODE_05E0A5:        STA $0802                 ;
CODE_05E0A8:        LDA #$21                  ;
CODE_05E0AA:        STA $0803                 ;
CODE_05E0AD:        LDA #$00                  ;
CODE_05E0AF:        STA $0C00                 ;
CODE_05E0B2:        RTS                       ;

;EXPAND PAUSE WINDOW ROUTINE
CODE_05E0B3:        LDA $0B6B                 ;\Windowing HDMA routine for pause which actually expands stuff
CODE_05E0B6:        BEQ CODE_05E116           ;/Timer for expanding and collapsing
CODE_05E0B8:        BMI CODE_05E116           ;
CODE_05E0BA:        REP #$30                  ;
CODE_05E0BC:        DEC $0B6B                 ;Decrease timer. when it hits 0, the expanding ends
CODE_05E0BF:        DEC $0B6D                 ;\Maximum left border set
CODE_05E0C2:        DEC $0B6D                 ;/
CODE_05E0C5:        INC $0B6F                 ;\Maximum right border set
CODE_05E0C8:        INC $0B6F                 ;/
CODE_05E0CB:        DEC $0B71                 ;\
CODE_05E0CE:        DEC $0B71                 ; |Maximum upper border set
CODE_05E0D1:        DEC $0B71                 ; |
CODE_05E0D4:        DEC $0B71                 ;/
CODE_05E0D7:        INC $0B73                 ;\
CODE_05E0DA:        INC $0B73                 ; |Maximum lower border set
CODE_05E0DD:        INC $0B73                 ; |
CODE_05E0E0:        INC $0B73                 ;/
CODE_05E0E3:        LDX #$007E                ;\
CODE_05E0E6:        LDA #$00FF                ; |
CODE_05E0E9:        STA $7FF000,x             ; |
CODE_05E0ED:        STA $7FF080,x             ; |
CODE_05E0F1:        STA $7FF100,x             ; |Clear windowing RAM?
CODE_05E0F5:        STA $7FF180,x             ; |NOPing it out doesn't seem to have any side effects
CODE_05E0F9:        DEX                       ; |
CODE_05E0FA:        DEX                       ; |
CODE_05E0FB:        BPL CODE_05E0E9           ;/
CODE_05E0FD:        LDA $0B6F                 ;\ Maximum right border
CODE_05E100:        XBA                       ; |swap low and high bytes
CODE_05E101:        ORA $0B6D                 ;/|OR with maximum left border -> to Windowing HDMA value
CODE_05E104:        LDX $0B71                 ; |Load maximum upper border as an index
CODE_05E107:        STA $7FF000,x             ;/ Store windowing HDMA value
CODE_05E10B:        INX                       ;\
CODE_05E10C:        INX                       ; |If we didn't reach maximum lower border yet
CODE_05E10D:        CPX $0B73                 ; |Loop
CODE_05E110:        BNE CODE_05E107           ;/
CODE_05E112:        SEP #$30                  ;
CODE_05E114:        BRA CODE_05E119           ;

CODE_05E116:        INC $0B75                 ;Increase pause window state?
CODE_05E119:        JSR CODE_05DFFD           ;
CODE_05E11C:        RTS                       ;

;COLLAPSE PAUSE WINDOW ROUTINE
CODE_05E11D:        LDA $0B6B                 ;
CODE_05E120:        BEQ CODE_05E180           ;
CODE_05E122:        BMI CODE_05E180           ;
CODE_05E124:        REP #$30                  ;
CODE_05E126:        INC $0B6D                 ;\Maximum left border
CODE_05E129:        INC $0B6D                 ;/
CODE_05E12C:        DEC $0B6F                 ;\
CODE_05E12F:        DEC $0B6F                 ;/Maximum right border
CODE_05E132:        INC $0B71                 ;\
CODE_05E135:        INC $0B71                 ; |
CODE_05E138:        INC $0B71                 ; |Maximum left border
CODE_05E13B:        INC $0B71                 ;/
CODE_05E13E:        DEC $0B73                 ;\
CODE_05E141:        DEC $0B73                 ; |
CODE_05E144:        DEC $0B73                 ; |Maximum right border
CODE_05E147:        DEC $0B73                 ;/
CODE_05E14A:        DEC $0B6B                 ;Decrease timer for collapsing
CODE_05E14D:        LDX #$007E                ;\
CODE_05E150:        LDA #$00FF                ; |
CODE_05E153:        STA $7FF000,x             ; |
CODE_05E157:        STA $7FF080,x             ; |Clear windowing RAM?
CODE_05E15B:        STA $7FF100,x             ; |
CODE_05E15F:        STA $7FF180,x             ; |
CODE_05E163:        DEX                       ; |
CODE_05E164:        DEX                       ; |
CODE_05E165:        BPL CODE_05E153           ;/
CODE_05E167:        LDA $0B6F                 ;\ Maximum right border
CODE_05E16A:        XBA                       ; |Swap low and high bytes
CODE_05E16B:        ORA $0B6D                 ;/ ORA with maximum left border -> to windowing HDMA value
CODE_05E16E:        LDX $0B71                 ;\Load maximum upper border as an index
CODE_05E171:        STA $7FF000,x             ; |
CODE_05E175:        INX                       ; |Store windowing HDMA value to the HDMA RAM
CODE_05E176:        INX                       ;/
CODE_05E177:        CPX $0B73                 ;\If not done yet, loop
CODE_05E17A:        BNE CODE_05E171           ;/
CODE_05E17C:        SEP #$30                  ;
CODE_05E17E:        BRA CODE_05E1AB           ;

CODE_05E180:        STZ $0B75                 ;Pause window state to zero
CODE_05E183:        LDA #$0F                  ;\
CODE_05E185:        STA $1201                 ;/Set brightness to max
CODE_05E188:        STZ $0776                 ;Clear paused flag
CODE_05E18B:        LDA $1206                 ;\
CODE_05E18E:        EOR #$03                  ; |reverse window mask settings
CODE_05E190:        STA $1206                 ;/
CODE_05E193:        LDA $1207                 ;
CODE_05E196:        EOR #$10                  ;
CODE_05E198:        STA $1207                 ;
CODE_05E19B:        JSR CODE_05DDF3           ;
CODE_05E19E:        JSL CODE_0385BF           ;
CODE_05E1A2:        LDA $1203                 ;
CODE_05E1A5:        AND #$F7                  ;
CODE_05E1A7:        STA $1203                 ;
CODE_05E1AA:        RTS                       ;

CODE_05E1AB:        JSR CODE_05DFFD           ;
CODE_05E1AE:        RTS                       ;

CODE_05E1AF:        DEC $0F8A                 ;
CODE_05E1B2:        BNE CODE_05E1CA           ;
CODE_05E1B4:        INC $0B75                 ;
CODE_05E1B7:        LDA #$10                  ;
CODE_05E1B9:        STA $0B6B                 ;
CODE_05E1BC:        STA $0F8A                 ;
CODE_05E1BF:        LDA $0B77                 ;\
CODE_05E1C2:        CMP #$02                  ; |If option is not Save and Quit
CODE_05E1C4:        BNE CODE_05E1CA           ; |Branch
CODE_05E1C6:        JML CODE_0080DE           ;/ Go save and quit

CODE_05E1CA:        JSR CODE_05DFFD           ;
CODE_05E1CD:        RTS                       ;

CODE_05E1CE:        PHB                       ;\
CODE_05E1CF:        LDA #$7F                  ; |
CODE_05E1D1:        PHA                       ; |
CODE_05E1D2:        PLB                       ; |
CODE_05E1D3:        REP #$30                  ; |
CODE_05E1D5:        LDX #$007E                ; |Clear $7FF000-$7F1FFF
CODE_05E1D8:        LDA #$0000                ; |
CODE_05E1DB:        STA $F000,x               ; |
CODE_05E1DE:        STA $F080,x               ; |
CODE_05E1E1:        STA $F100,x               ; |
CODE_05E1E4:        STA $F180,x               ; |
CODE_05E1E7:        DEX                       ; |
CODE_05E1E8:        DEX                       ; |
CODE_05E1E9:        BPL CODE_05E1DB           ; |
CODE_05E1EB:        PLB                       ;/
CODE_05E1EC:        SEP #$20                  ;A = 8-bit. XY = 16-bit
CODE_05E1EE:        LDX #$2641                ;\Window 1 left position & window 1 right position
CODE_05E1F1:        STX $4330                 ;/2 regs write once. Indirect HDMA
CODE_05E1F4:        LDX #$E22A                ;\
CODE_05E1F7:        STX $4332                 ; |Source: $05:E22A
CODE_05E1FA:        LDA #$05                  ; |
CODE_05E1FC:        STA $4334                 ;/
CODE_05E1FF:        LDA #$7F                  ;\
CODE_05E201:        STA $4337                 ;/Indirect HDMA address bank byte: $7F:xxxx
CODE_05E204:        LDA #$00                  ;\Window mask settings for BG1, 2, 3, 4.
CODE_05E206:        STA $1204                 ; |No window for BG1, 2, 3, 4.
CODE_05E209:        STZ $1205                 ;/
CODE_05E20C:        LDA $1206                 ;\
CODE_05E20F:        ORA #$03                  ; |Enable window 1 for OBJ. Window 1 inversion for OBJ
CODE_05E211:        STA $1206                 ;/
CODE_05E214:        LDA $1207                 ;\
CODE_05E217:        ORA #$10                  ; |Enable window masking for OBJ on the mainscreen
CODE_05E219:        STA $1207                 ; |
CODE_05E21C:        STZ $1208                 ;/ None on the subscreen
CODE_05E21F:        SEP #$10                  ;AXY = 8-bit
CODE_05E221:        LDA $1203                 ;\
CODE_05E224:        ORA #$08                  ; |Enable HDMA
CODE_05E226:        STA $1203                 ;/
CODE_05E229:        RTS                       ;

DATA_05E22A:        db $F8,$00,$F0,$F8,$F0,$F0,$00

CODE_05E231:        PHB                       ;\
CODE_05E232:        LDA #$7F                  ; |
CODE_05E234:        PHA                       ; |
CODE_05E235:        PLB                       ; |
CODE_05E236:        REP #$30                  ; |
CODE_05E238:        LDX #$01A0                ; |
CODE_05E23B:        LDA #$00FF                ; |
CODE_05E23E:        STA $F000,x               ; |
CODE_05E241:        STA $F002,x               ; |
CODE_05E244:        STA $F004,x               ; |
CODE_05E247:        STA $F006,x               ; |
CODE_05E24A:        STA $F008,x               ; |
CODE_05E24D:        STA $F00A,x               ; |
CODE_05E250:        STA $F00C,x               ; |
CODE_05E253:        STA $F00E,x               ; |
CODE_05E256:        STA $F010,x               ; |
CODE_05E259:        STA $F012,x               ; |
CODE_05E25C:        STA $F014,x               ; |
CODE_05E25F:        STA $F016,x               ; |
CODE_05E262:        STA $F018,x               ; |Clear windowing HDMA table
CODE_05E265:        STA $F01A,x               ; |
CODE_05E268:        STA $F01C,x               ; |
CODE_05E26B:        STA $F01E,x               ; |
CODE_05E26E:        STA $F200,x               ; |
CODE_05E271:        STA $F202,x               ; |
CODE_05E274:        STA $F204,x               ; |
CODE_05E277:        STA $F206,x               ; |
CODE_05E27A:        STA $F208,x               ; |
CODE_05E27D:        STA $F20A,x               ; |
CODE_05E280:        STA $F20C,x               ; |
CODE_05E283:        STA $F20E,x               ; |
CODE_05E286:        STA $F210,x               ; |
CODE_05E289:        STA $F212,x               ; |
CODE_05E28C:        STA $F214,x               ; |
CODE_05E28F:        STA $F216,x               ; |
CODE_05E292:        STA $F218,x               ; |
CODE_05E295:        STA $F21A,x               ; |
CODE_05E298:        STA $F21C,x               ; |
CODE_05E29B:        STA $F21E,x               ; |
CODE_05E29E:        TXA                       ; |
CODE_05E29F:        SEC                       ; |
CODE_05E2A0:        SBC #$0020                ; |
CODE_05E2A3:        TAX                       ; |
CODE_05E2A4:        BPL CODE_05E23B           ; |
CODE_05E2A6:        SEP #$30                  ; |
CODE_05E2A8:        PLB                       ; |
CODE_05E2A9:        RTS                       ;/

CODE_05E2AA:        LDA $02F7                 ;
CODE_05E2AD:        BNE CODE_05E2DE           ;
CODE_05E2AF:        LDY $BB                   ;
CODE_05E2B1:        DEY                       ;
CODE_05E2B2:        BNE CODE_05E2DE           ;
CODE_05E2B4:        LDA $03D3                 ;
CODE_05E2B7:        AND #$08                  ;
CODE_05E2B9:        BNE CODE_05E2DE           ;
CODE_05E2BB:        LDY $0B53,x               ;
CODE_05E2BE:        LDA $03B0                 ;
CODE_05E2C1:        STA $0800,y               ;
CODE_05E2C4:        LDA $03BB                 ;
CODE_05E2C7:        STA $0801,y               ;
CODE_05E2CA:        LDA #$9F                  ;
CODE_05E2CC:        STA $0802,y               ;
CODE_05E2CF:        LDA $0F                   ;
CODE_05E2D1:        CMP #$07                  ;
CODE_05E2D3:        BNE CODE_05E2D9           ;
CODE_05E2D5:        LDA #$0A                  ;
CODE_05E2D7:        BRA CODE_05E2DB           ;

CODE_05E2D9:        LDA #$2A                  ;
CODE_05E2DB:        STA $0803,y               ;
CODE_05E2DE:        RTL                       ;

DATA_05E2DF:        db $DF,$1B,$7F,$02,$39,$01,$00,$00 ;palette animation (axe, coins, [?], underground lanterns)
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

CODE_05E3BF:        INC $0E74                 ;
CODE_05E3C2:        LDA $0E74                 ;
CODE_05E3C5:        AND #$07                  ;
CODE_05E3C7:        BEQ CODE_05E3CC           ;
CODE_05E3C9:        JMP CODE_05E441           ;

CODE_05E3CC:        INC $0E75                 ;
CODE_05E3CF:        LDA $0E75                 ;
CODE_05E3D2:        CMP #$03                  ;
CODE_05E3D4:        BNE CODE_05E3DB           ;
CODE_05E3D6:        STZ $0E75                 ;
CODE_05E3D9:        LDA #$00                  ;
CODE_05E3DB:        ASL A                     ;
CODE_05E3DC:        ASL A                     ;
CODE_05E3DD:        ASL A                     ;
CODE_05E3DE:        TAX                       ;
CODE_05E3DF:        REP #$20                  ;
CODE_05E3E1:        LDA $E2DF,x               ;
CODE_05E3E4:        STA $1026                 ;
CODE_05E3E7:        LDA $E327,x               ;
CODE_05E3EA:        STA $100A                 ;
CODE_05E3ED:        LDA $E2F7,x               ;
CODE_05E3F0:        STA $102C                 ;
CODE_05E3F3:        LDA $E2E1,x               ;
CODE_05E3F6:        STA $1028                 ;
CODE_05E3F9:        LDA $E329,x               ;
CODE_05E3FC:        STA $100C                 ;
CODE_05E3FF:        LDA $E2F9,x               ;
CODE_05E402:        STA $102E                 ;
CODE_05E405:        LDA $E2E3,x               ;
CODE_05E408:        STA $102A                 ;
CODE_05E40B:        LDA $E32B,x               ;
CODE_05E40E:        STA $100E                 ;
CODE_05E411:        LDA $E2FB,x               ;
CODE_05E414:        STA $1030                 ;
CODE_05E417:        SEP #$20                  ;
CODE_05E419:        LDA $0E20                 ;
CODE_05E41C:        BNE CODE_05E441           ;
CODE_05E41E:        LDA $DB                   ;
CODE_05E420:        BEQ CODE_05E476           ;
CODE_05E422:        CMP #$1B                  ;
CODE_05E424:        BEQ CODE_05E476           ;
CODE_05E426:        CMP #$21                  ;
CODE_05E428:        BNE CODE_05E42D           ;
CODE_05E42A:        JMP CODE_05E587           ;

CODE_05E42D:        CMP #$09                  ;
CODE_05E42F:        BEQ CODE_05E478           ;
CODE_05E431:        CMP #$19                  ;
CODE_05E433:        BEQ CODE_05E439           ;
CODE_05E435:        CMP #$1A                  ;
CODE_05E437:        BNE CODE_05E43C           ;
CODE_05E439:        JMP CODE_05E4A5           ;

CODE_05E43C:        LDA #$01                  ;
CODE_05E43E:        STA $1200                 ;
CODE_05E441:        LDA $0E74                 ;
CODE_05E444:        AND #$03                  ;
CODE_05E446:        BNE CODE_05E476           ;
CODE_05E448:        INC $0E76                 ;
CODE_05E44B:        LDA $0E76                 ;
CODE_05E44E:        CMP #$03                  ;
CODE_05E450:        BNE CODE_05E457           ;
CODE_05E452:        STZ $0E76                 ;
CODE_05E455:        LDA #$00                  ;
CODE_05E457:        ASL A                     ;
CODE_05E458:        ASL A                     ;
CODE_05E459:        ASL A                     ;
CODE_05E45A:        TAX                       ;
CODE_05E45B:        REP #$20                  ;
CODE_05E45D:        LDA $E30F,x               ;
CODE_05E460:        STA $1032                 ;
CODE_05E463:        LDA $E311,x               ;
CODE_05E466:        STA $1034                 ;
CODE_05E469:        LDA $E313,x               ;
CODE_05E46C:        STA $1036                 ;
CODE_05E46F:        SEP #$20                  ;
CODE_05E471:        LDA #$01                  ;
CODE_05E473:        STA $1200                 ;
CODE_05E476:        PLB                       ;
CODE_05E477:        RTL                       ;

CODE_05E478:        LDA $0E74                 ;
CODE_05E47B:        AND #$38                  ;
CODE_05E47D:        LSR A                     ;
CODE_05E47E:        LSR A                     ;
CODE_05E47F:        TAX                       ;
CODE_05E480:        REP #$20                  ;
CODE_05E482:        LDA $E4D7,x               ;
CODE_05E485:        STA $10E6                 ;
CODE_05E488:        LDA $E4E7,x               ;
CODE_05E48B:        STA $10E8                 ;
CODE_05E48E:        LDA $E4F7,x               ;
CODE_05E491:        STA $10FA                 ;
CODE_05E494:        LDA $E507,x               ;
CODE_05E497:        STA $10FC                 ;
CODE_05E49A:        LDA $E517,x               ;
CODE_05E49D:        STA $10FE                 ;
CODE_05E4A0:        SEP #$20                  ;
CODE_05E4A2:        JMP CODE_05E43C           ;

CODE_05E4A5:        LDA $0E74                 ;
CODE_05E4A8:        AND #$38                  ;
CODE_05E4AA:        ASL A                     ;
CODE_05E4AB:        TAX                       ;
CODE_05E4AC:        REP #$20                  ;
CODE_05E4AE:        LDA $E33F,x               ;
CODE_05E4B1:        STA $10E6                 ;
CODE_05E4B4:        LDA $E341,x               ;
CODE_05E4B7:        STA $10E8                 ;
CODE_05E4BA:        LDA $E343,x               ;
CODE_05E4BD:        STA $10EA                 ;
CODE_05E4C0:        LDA $E345,x               ;
CODE_05E4C3:        STA $10EC                 ;
CODE_05E4C6:        LDA $E347,x               ;
CODE_05E4C9:        STA $10EE                 ;
CODE_05E4CC:        LDA $E349,x               ;
CODE_05E4CF:        STA $10F0                 ;
CODE_05E4D2:        SEP #$20                  ;
CODE_05E4D4:        JMP CODE_05E43C           ;

DATA_05E4D7:        db $BF,$7F,$38,$7F,$B4,$76,$30,$72
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

CODE_05E587:        LDA $0E74                 ;
CODE_05E58A:        AND #$38                  ;
CODE_05E58C:        TAX                       ;
CODE_05E58D:        LSR A                     ;
CODE_05E58E:        TAY                       ;
CODE_05E58F:        REP #$20                  ;
CODE_05E591:        LDA $E527,x               ;
CODE_05E594:        STA $10E2                 ;
CODE_05E597:        LDA $E529,x               ;
CODE_05E59A:        STA $10E4                 ;
CODE_05E59D:        LDA $E52B,x               ;
CODE_05E5A0:        STA $10E6                 ;
CODE_05E5A3:        LDA $E52D,x               ;
CODE_05E5A6:        STA $10E8                 ;
CODE_05E5A9:        LDA $E567,y               ;
CODE_05E5AC:        STA $10FC                 ;
CODE_05E5AF:        LDA $E569,y               ;
CODE_05E5B2:        STA $10FE                 ;
CODE_05E5B5:        SEP #$20                  ;
CODE_05E5B7:        LDA $1C                   ;
CODE_05E5B9:        CMP #$35                  ;
CODE_05E5BB:        BEQ CODE_05E631           ;
CODE_05E5BD:        LDA $0EB7                 ;
CODE_05E5C0:        BNE CODE_05E5E6           ;
CODE_05E5C2:        LDA $07B8                 ;
CODE_05E5C5:        AND #$0F                  ;
CODE_05E5C7:        BNE CODE_05E631           ;
CODE_05E5C9:        LDA $0F                   ;
CODE_05E5CB:        CMP #$08                  ;
CODE_05E5CD:        BNE CODE_05E5D4           ;
CODE_05E5CF:        LDA #$18                  ;\Lightning sound
CODE_05E5D1:        STA $1603                 ;/
CODE_05E5D4:        LDA #$11                  ;
CODE_05E5D6:        STA $0EB8                 ;
CODE_05E5D9:        LDA #$1F                  ;
CODE_05E5DB:        STA $0EB9                 ;
CODE_05E5DE:        STA $0EBA                 ;
CODE_05E5E1:        INC $0EB7                 ;
CODE_05E5E4:        BRA CODE_05E60E           ;

CODE_05E5E6:        DEC $0EB8                 ;
CODE_05E5E9:        DEC $0EB9                 ;
CODE_05E5EC:        DEC $0EB9                 ;
CODE_05E5EF:        DEC $0EBA                 ;
CODE_05E5F2:        DEC $0EBA                 ;
CODE_05E5F5:        DEC $0EB8                 ;
CODE_05E5F8:        DEC $0EB9                 ;
CODE_05E5FB:        DEC $0EB9                 ;
CODE_05E5FE:        DEC $0EBA                 ;
CODE_05E601:        DEC $0EBA                 ;
CODE_05E604:        LDA $0EB8                 ;
CODE_05E607:        CMP #$03                  ;
CODE_05E609:        BNE CODE_05E60E           ;
CODE_05E60B:        STZ $0EB7                 ;
CODE_05E60E:        REP #$20                  ;
CODE_05E610:        LDA $0EB8                 ;
CODE_05E613:        AND #$00FF                ;
CODE_05E616:        XBA                       ;
CODE_05E617:        ASL A                     ;
CODE_05E618:        ASL A                     ;
CODE_05E619:        STA $E4                   ;
CODE_05E61B:        LDA $0EB9                 ;
CODE_05E61E:        AND #$00FF                ;
CODE_05E621:        XBA                       ;
CODE_05E622:        LSR A                     ;
CODE_05E623:        LSR A                     ;
CODE_05E624:        LSR A                     ;
CODE_05E625:        ORA $E4                   ;
CODE_05E627:        ORA $0EBA                 ;
CODE_05E62A:        STA $E4                   ;
CODE_05E62C:        STA $10E2                 ;
CODE_05E62F:        SEP #$20                  ;
CODE_05E631:        JMP CODE_05E43C           ;

CODE_05E634:        LDA $0B76                 ;
CODE_05E637:        BNE CODE_05E6AE           ;
CODE_05E639:        STZ $028D                 ;Flag to upload animated FG
CODE_05E63C:        LDA $09                   ;
CODE_05E63E:        AND #$07                  ;
CODE_05E640:        BNE CODE_05E67A           ;
CODE_05E642:        LDA $09                   ;
CODE_05E644:        AND #$38                  ;
CODE_05E646:        LSR A                     ;
CODE_05E647:        LSR A                     ;
CODE_05E648:        LSR A                     ;
CODE_05E649:        STA $04                   ;
CODE_05E64B:        LDA #$06                  ;
CODE_05E64D:        STA $0287                 ;
CODE_05E650:        REP #$20                  ;
CODE_05E652:        LDA #$8000                ;
CODE_05E655:        LDY $04                   ;
CODE_05E657:        DEY                       ;
CODE_05E658:        BMI CODE_05E660           ;
CODE_05E65A:        CLC                       ;
CODE_05E65B:        ADC #$0800                ;
CODE_05E65E:        BRA CODE_05E657           ;

CODE_05E660:        CLC                       ;
CODE_05E661:        ADC #$4000                ;
CODE_05E664:        STA $0285                 ;
CODE_05E667:        LDA #$1C00                ;
CODE_05E66A:        STA $028A                 ;
CODE_05E66D:        LDA #$0600                ;
CODE_05E670:        STA $0288                 ;
CODE_05E673:        SEP #$20                  ;
CODE_05E675:        INC $028D                 ;Set flag to upload animated FG
CODE_05E678:        BRA CODE_05E6AE           ;

CODE_05E67A:        LDA $09                   ;
CODE_05E67C:        CLC                       ;
CODE_05E67D:        ADC #$04                  ;
CODE_05E67F:        STA $0285                 ;
CODE_05E682:        AND #$07                  ;
CODE_05E684:        BNE CODE_05E6AE           ;
CODE_05E686:        LDA #$0C                  ;
CODE_05E688:        STA $0287                 ;
CODE_05E68B:        REP #$20                  ;
CODE_05E68D:        LDA $0285                 ;
CODE_05E690:        AND #$0038                ;
CODE_05E693:        ASL A                     ;
CODE_05E694:        ASL A                     ;
CODE_05E695:        ASL A                     ;
CODE_05E696:        CLC                       ;
CODE_05E697:        ADC #$FB00                ;
CODE_05E69A:        STA $0285                 ;
CODE_05E69D:        LDA #$5160                ;
CODE_05E6A0:        STA $028A                 ;
CODE_05E6A3:        LDA #$0040                ;
CODE_05E6A6:        STA $0288                 ;
CODE_05E6A9:        SEP #$20                  ;
CODE_05E6AB:        INC $028D                 ;
CODE_05E6AE:        RTL                       ;

DATA_05E6AF:        db $01,$18

CODE_05E6B1:        SEP #$30                  ;
CODE_05E6B3:        PHB                       ;
CODE_05E6B4:        PHK                       ;
CODE_05E6B5:        PLB                       ;
CODE_05E6B6:        LDA $99                   ;\
CODE_05E6B8:        CMP #$01                  ; | Branch if not bonus room
CODE_05E6BA:        BNE CODE_05E6C7           ;/
CODE_05E6BC:        STA $02F8                 ;Set bonus room flag
CODE_05E6BF:        LDX $0753                 ;\
CODE_05E6C2:        LDA $E6AF,x               ; | Get Luigi or Mario's bonus room tileset number
CODE_05E6C5:        STA $99                   ;/
CODE_05E6C7:        JSR CODE_05E82A           ;GFX upload routine
CODE_05E6CA:        LDA $99                   ;\
CODE_05E6CC:        ASL A                     ; |
CODE_05E6CD:        TAX                       ; |
CODE_05E6CE:        LDA $E6DB,x               ; |
CODE_05E6D1:        STA $00                   ; | A routine for each tilemap
CODE_05E6D3:        LDA $E6DC,x               ; |
CODE_05E6D6:        STA $01                   ; |
CODE_05E6D8:        JMP ($0000)               ;/

PNTR_05E6DB:        dw CODE_05E71B                          ;$00 - Unused?
                    dw CODE_05E73C                          ;$01 - Mario bonus background
                    dw CODE_05E727                          ;$02 - Hills background & SUPER MARIO BROS banner
                    dw CODE_05E73C                          ;$03 - Underground background
                    dw CODE_05E74F                          ;$04 - Castle FG & BG tileset
                    dw CODE_05E727                          ;$05 - Tall slim hills background
                    dw CODE_05E71B                          ;$06 - Castle FG & BG tileset
                    dw CODE_05E743                          ;$07 - Hills background
                    dw CODE_05E71B                          ;$08 - Underwater BG & FG tileset
                    dw CODE_05E743                          ;$09 - Hills background & SUPER MARIO BROS banner
                    dw CODE_05E75B                          ;$0A - Game over screen & Mario bonus room background
                    dw CODE_05E727                          ;$0B - Starry night background
                    dw CODE_05E727                          ;$0C - Bowser's Castle (outside) background
                    dw CODE_05E71B                          ;$0D - Mushrooms background
                    dw CODE_05E727                          ;$0E - Waterfall background
                    dw CODE_05E71B                          ;$0F - Underwater ruins background
                    dw CODE_05E727                          ;$10 - Goomba pillars BG & snow FG
                    dw CODE_05E71B                          ;$11 - Underground foreground
                    dw CODE_05E71B                          ;$12 - Snow foreground
                    dw CODE_05E71B                          ;$13 - Bowser's Castle BG, part 1
                    dw CODE_05E71B                          ;$14 - Bowser's Castle BG, part 2
                    dw CODE_05E71B                          ;$15 - Game Over and Time Up text
                    dw CODE_05E71B                          ;$16 - Starry night background
                    dw CODE_05E71B                          ;$17 - Grass foreground
                    dw CODE_05E73C                          ;$18 - Luigi bonus background
                    dw CODE_05E71B                          ;$19 -
                    dw CODE_05E71B                          ;$1A -
                    dw CODE_05E71B                          ;$1B -
                    dw CODE_05E71B                          ;$1C -
                    dw CODE_05E71B                          ;$1D -
                    dw CODE_05E71B                          ;$1E -
                    dw CODE_05E71B                          ;$1F -

;Disable graphics animations so that GFX uploads normally
;without animation interfering
CODE_05E71B:        STZ $99                   ;Set GFX to upload to none
CODE_05E71D:        PLB                       ;
CODE_05E71E:        STZ $028D                 ;Disable flag to upload animated graphics
CODE_05E721:        LDA #$01                  ;\
CODE_05E723:        STA $028C                 ;/Disable graphics animation and stuff
CODE_05E726:        RTL                       ;

;Set grass or snow foreground
CODE_05E727:        LDA $DB                   ;\
CODE_05E729:        CMP #$16                  ; |If tall slim hills background with snow
CODE_05E72B:        BEQ CODE_05E748           ;/ get snow foreground
CODE_05E72D:        CMP #$14                  ;\ Same as above
CODE_05E72F:        BEQ CODE_05E748           ;/
CODE_05E731:        CMP #$0D                  ;\ Same as above
CODE_05E733:        BEQ CODE_05E748           ;/
CODE_05E735:        LDA #$17                  ;\Grass foreground
CODE_05E737:        JSR CODE_05E82A           ;/GFX upload routine
CODE_05E73A:        BRA CODE_05E71B           ;finish upload

;Set underground foreground
CODE_05E73C:        LDA #$11                  ;\Underground foreground
CODE_05E73E:        JSR CODE_05E82A           ;/GFX upload routine
CODE_05E741:        BRA CODE_05E71B           ;finish upload

;Set background to starry night and foreground to snow
CODE_05E743:        LDA #$16                  ;\Starry night background
CODE_05E745:        JSR CODE_05E82A           ;/GFX upload routine
CODE_05E748:        LDA #$12                  ;\Snow foreground
CODE_05E74A:        JSR CODE_05E82A           ;/GFX upload routine
CODE_05E74D:        BRA CODE_05E71B           ;finish upload

;Set Bowser's castle background
CODE_05E74F:        LDA #$13                  ;\Bowser's castle background (1)
CODE_05E751:        JSR CODE_05E82A           ;/GFX upload routine
CODE_05E754:        LDA #$14                  ;\Bowser's castle background (2)
CODE_05E756:        JSR CODE_05E82A           ;/GFX upload routine
CODE_05E759:        BRA CODE_05E71B           ;finish upload

;Set game over graphics
CODE_05E75B:        LDA #$15                  ;\Game over and time up text
CODE_05E75D:        JSR CODE_05E82A           ;/GFX upload routine
CODE_05E760:        BRA CODE_05E71B           ;finish upload

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Tables of pointers to GFX files, their VRAM
;;address as well as their size.
;;
;; Address -  VRAM - Size
;; $000000 - $0000 - $1000 ; $00 - Unused
;; $08E000 - $2000 - $1000 ; $01 - Mario bonus background
;; $06A000 - $2000 - $2000 ; $02 - Hills background & SUPER MARIO BROS. title screen banner
;; $098000 - $2000 - $1000 ; $03 - Underground background
;; $09A000 - $2000 - $2000 ; $04 - Castle background & foreground
;; $089800 - $2C00 - $0800 ; $05 - Tall slim hills background
;; $09A000 - $2000 - $2000 ; $06 - Castle background & foreground
;; $06A000 - $2000 - $1000 ; $07 - Hills background
;; $088000 - $2000 - $1000 ; $08 - Underwater background & foreground
;; $06A000 - $2000 - $2000 ; $09 - Hills background & SUPER MARIO BROS. title screen banner
;; $08D000 - $3400 - $2000 ; $0A - Game over screen & Mario bonus room background
;; $09E000 - $2C00 - $0800 ; $0B - Starry night background
;; $08A000 - $2800 - $1000 ; $0C - Bowser's Castle background & princess cage
;; $089000 - $2C00 - $0800 ; $0D - Mushrooms background
;; $08B000 - $2C00 - $0800 ; $0E - Waterfall background
;; $099000 - $2000 - $1000 ; $0F - Underwater ruins background
;; $08B800 - $2C00 - $1000 ; $10 - Goomba pillars background & snow foreground
;; $09D000 - $3000 - $1000 ; $11 - Underground foreground
;; $08C000 - $3000 - $1000 ; $12 - Snow foreground
;; $09E800 - $2000 - $0800 ; $13 - Bowser's Castle background, part 1
;; $09F000 - $2800 - $0800 ; $14 - Bowser's Castle background, part 2
;; $09F800 - $2C00 - $0800 ; $15 - Game Over and Time Up text
;; $09E000 - $2C00 - $0800 ; $16 - Starry night background
;; $09C000 - $3000 - $1000 ; $17 - Grass foreground
;; $08F000 - $2000 - $1000 ; $18 - Luigi bonus background

DATA_05E762:        db $00,$00,$08,$00,$06,$00,$09,$00      ;GFX bank bytes. every other byte is not used, so here's a more comprehensive list:
                    db $09,$00,$08,$00,$09,$00,$06,$00      ; $00,$08,$06,$09,$09,$08,$09,$06
                    db $08,$00,$06,$00,$08,$00,$09,$00      ; $08,$06,$08,$09,$08,$08,$08,$09
                    db $08,$00,$08,$00,$08,$00,$09,$00      ; $08,$09,$08,$09,$09,$09,$09,$09
                    db $08,$00,$09,$00,$08,$00,$09,$00      ; $08
                    db $09,$00,$09,$00,$09,$00,$09,$00
                    db $08,$00

DATA_05E794:        dw $0000,$E000,$A000,$8000              ;GFX address
                    dw $A000,$9800,$A000,$A000
                    dw $8000,$A000,$D000,$E000
                    dw $A000,$9000,$B000,$9000
                    dw $B800,$D000,$C000,$E800
                    dw $F000,$F800,$E000,$C000
                    dw $F000

DATA_05E7C6:        dw $0000,$2000,$2000,$2000              ;GFX VRAM address
                    dw $2000,$2C00,$2000,$2000
                    dw $2000,$2000,$3400,$2C00
                    dw $2800,$2C00,$2C00,$2000
                    dw $2C00,$3000,$3000,$2000
                    dw $2800,$2C00,$2C00,$3000
                    dw $2000

DATA_05E7F8:        dw $1000,$1000,$2000,$1000              ;GFX size
                    dw $2000,$0800,$2000,$1000
                    dw $1000,$2000,$2000,$0800
                    dw $1000,$0800,$0800,$1000
                    dw $1000,$1000,$1000,$0800
                    dw $0800,$0800,$0800,$1000
                    dw $1000

;GFX upload routine. GFX number in A
CODE_05E82A:        ASL A                     ;\ Routine enters with $7E0099 loaded in accumulator
CODE_05E82B:        TAX                       ;/ but can also be fixed values. A * 2 to index
CODE_05E82C:        LDA $E762,x               ;\
CODE_05E82F:        STA $0287                 ;/Load DMA source bank byte
CODE_05E832:        REP #$20                  ;16-bit A
CODE_05E834:        LDA $E794,x               ;\DMA source address
CODE_05E837:        STA $0285                 ;/
CODE_05E83A:        LDA $E7C6,x               ;\
CODE_05E83D:        STA $028A                 ;/DMA VRAM address
CODE_05E840:        LDA $E7F8,x               ;\
CODE_05E843:        STA $0288                 ;/DMA size
CODE_05E846:        SEP #$20                  ;8-bit A
CODE_05E848:        JSR CODE_05E84C           ;DMA this setup
CODE_05E84B:        RTS                       ;

CODE_05E84C:        LDA #$80                  ;\
CODE_05E84E:        STA $2115                 ;/address increment mode
CODE_05E851:        REP #$20                  ;
CODE_05E853:        LDA $028A                 ;\
CODE_05E856:        STA $2116                 ;/DMA VRAM address
CODE_05E859:        LDA #$1801                ;\
CODE_05E85C:        STA $4300                 ;/2 regs write once for $2118
CODE_05E85F:        LDA $0285                 ;\
CODE_05E862:        STA $4302                 ;/Set DMA source address
CODE_05E865:        LDX $0287                 ;\
CODE_05E868:        STX $4304                 ;/DMA source bank
CODE_05E86B:        LDA $0288                 ;\
CODE_05E86E:        STA $4305                 ;/DMA size
CODE_05E871:        LDX #$01                  ;\
CODE_05E873:        STX $420B                 ;/Enable DMA on channel 0
CODE_05E876:        SEP #$20                  ;
CODE_05E878:        RTS                       ;

CODE_05E879:        PHB                       ;
CODE_05E87A:        PHK                       ;
CODE_05E87B:        PLB                       ;
CODE_05E87C:        STZ $0F49                 ;
CODE_05E87F:        PHX                       ;
CODE_05E880:        LDX $9E                   ;Get current sprite index
CODE_05E882:        LDA $1C,x                 ;\
CODE_05E884:        CMP #$04                  ; |Return if not a regular shelled walking sprite
CODE_05E886:        BCS CODE_05E890           ;/
CODE_05E888:        LDA $29,x                 ;\
CODE_05E88A:        BMI CODE_05E894           ;/If not kicked, return
CODE_05E88C:        AND #$06                  ;\
CODE_05E88E:        BEQ CODE_05E894           ;/If not stunned or upside-down, return
CODE_05E890:        PLX                       ;
CODE_05E891:        PLB                       ;
CODE_05E892:        CLC                       ;
CODE_05E893:        RTL                       ;

CODE_05E894:        LDA $0029,x               ;
CODE_05E897:        STA $E0                   ;
CODE_05E899:        CMP #$02                  ;
CODE_05E89B:        BEQ CODE_05E8A5           ;
CODE_05E89D:        CMP #$03                  ;
CODE_05E89F:        BEQ CODE_05E8A5           ;
CODE_05E8A1:        CMP #$04                  ;
CODE_05E8A3:        BNE CODE_05E8AA           ;
CODE_05E8A5:        STZ $0F40,x               ;
CODE_05E8A8:        BRA CODE_05E8B7           ;

CODE_05E8AA:        AND #$80                  ;
CODE_05E8AC:        BEQ CODE_05E890           ;
CODE_05E8AE:        LDA $0F                   ;
CODE_05E8B0:        CMP #$0A                  ;
CODE_05E8B2:        BCS CODE_05E8B7           ;
CODE_05E8B4:        INC $0F40,x               ;
CODE_05E8B7:        LDA $0F40,x               ;
CODE_05E8BA:        AND #$0C                  ;
CODE_05E8BC:        STA $E4                   ;
CODE_05E8BE:        LDA $1C,x                 ;
CODE_05E8C0:        LDX $E4                   ;
CODE_05E8C2:        CMP #$02                  ;
CODE_05E8C4:        BNE CODE_05E8CB           ;
CODE_05E8C6:        TXA                       ;
CODE_05E8C7:        CLC                       ;
CODE_05E8C8:        ADC #$10                  ;
CODE_05E8CA:        TAX                       ;
CODE_05E8CB:        LDA $E0                   ;
CODE_05E8CD:        AND #$0F                  ;
CODE_05E8CF:        CMP #$04                  ;
CODE_05E8D1:        BNE CODE_05E8DC           ;
CODE_05E8D3:        TXA                       ;
CODE_05E8D4:        CLC                       ;
CODE_05E8D5:        ADC #$20                  ;
CODE_05E8D7:        TAX                       ;
CODE_05E8D8:        LDA #$80                  ;
CODE_05E8DA:        TSB $04                   ;
CODE_05E8DC:        TYA                       ;
CODE_05E8DD:        CLC                       ;
CODE_05E8DE:        ADC #$08                  ;
CODE_05E8E0:        TAY                       ;
CODE_05E8E1:        LDA $03B9                 ;
CODE_05E8E4:        CLC                       ;
CODE_05E8E5:        ADC #$08                  ;
CODE_05E8E7:        CMP #$F0                  ;
CODE_05E8E9:        BCC CODE_05E8ED           ;
CODE_05E8EB:        LDA #$F0                  ;
CODE_05E8ED:        PHA                       ;
CODE_05E8EE:        LDA $04                   ;
CODE_05E8F0:        BPL CODE_05E8F8           ;
CODE_05E8F2:        PLA                       ;
CODE_05E8F3:        CLC                       ;
CODE_05E8F4:        ADC #$02                  ;
CODE_05E8F6:        BRA CODE_05E8F9           ;

CODE_05E8F8:        PLA                       ;
CODE_05E8F9:        JSR CODE_05E9BF           ;
CODE_05E8FC:        LDA $04                   ;
CODE_05E8FE:        BPL CODE_05E908           ;
CODE_05E900:        LDA $03B9                 ;
CODE_05E903:        CLC                       ;
CODE_05E904:        ADC #$12                  ;
CODE_05E906:        BRA CODE_05E90E           ;

CODE_05E908:        LDA $03B9                 ;
CODE_05E90B:        CLC                       ;
CODE_05E90C:        ADC #$10                  ;
CODE_05E90E:        JSR CODE_05E9BF           ;
CODE_05E911:        LDX $E4                   ;
CODE_05E913:        LDA $EA28,x               ;
CODE_05E916:        ORA $04                   ;
CODE_05E918:        STA $08F3,y               ;
CODE_05E91B:        LDA $EA29,x               ;
CODE_05E91E:        ORA $04                   ;
CODE_05E920:        STA $08F7,y               ;
CODE_05E923:        LDA $EA2A,x               ;
CODE_05E926:        ORA $04                   ;
CODE_05E928:        STA $08FB,y               ;
CODE_05E92B:        LDA $EA2B,x               ;
CODE_05E92E:        ORA $04                   ;
CODE_05E930:        STA $08FF,y               ;
CODE_05E933:        INC $0F49                 ;
CODE_05E936:        PLX                       ;
CODE_05E937:        PLB                       ;
CODE_05E938:        SEC                       ;
CODE_05E939:        RTL                       ;

DATA_05E93A:        db $00,$FC,$F9,$F7,$F5,$F4,$F3,$F2
                    db $F2,$F2,$F3,$F4,$F5,$F7,$F9,$FC
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00

CODE_05E95A:        PHB                       ;
CODE_05E95B:        PHK                       ;
CODE_05E95C:        PLB                       ;
CODE_05E95D:        PHX                       ;
CODE_05E95E:        LDX $9E                   ;Get current sprite index
CODE_05E960:        LDA $1C,x                 ;\
CODE_05E962:        CMP #$35                  ; | If not princess peach, branch
CODE_05E964:        BNE CODE_05E9AE           ;/
CODE_05E966:        LDA $075F                 ;\
CODE_05E969:        CMP #$07                  ; | If world 8, return
CODE_05E96B:        BEQ CODE_05E9AE           ;/
CODE_05E96D:        LDA $0F4A                 ;
CODE_05E970:        AND #$1F                  ;
CODE_05E972:        LDY $0B46,x               ;
CODE_05E975:        PHY                       ;
CODE_05E976:        TAX                       ;
CODE_05E977:        LDA $E93A,x               ;
CODE_05E97A:        STA $DD                   ;
CODE_05E97C:        JSR CODE_05E9B1           ;
CODE_05E97F:        JSR CODE_05E9B1           ;
CODE_05E982:        JSR CODE_05E9B1           ;
CODE_05E985:        JSR CODE_05E9B1           ;
CODE_05E988:        JSR CODE_05E9B1           ;
CODE_05E98B:        JSR CODE_05E9B1           ;
CODE_05E98E:        PLY                       ;
CODE_05E98F:        CPX #$10                  ;
CODE_05E991:        BCS CODE_05E9AB           ;
CODE_05E993:        LDA #$FF                  ;
CODE_05E995:        STA $0902,y               ;
CODE_05E998:        STA $0906,y               ;
CODE_05E99B:        LDA #$D7                  ;
CODE_05E99D:        STA $090A,y               ;
CODE_05E9A0:        STA $090E,y               ;
CODE_05E9A3:        LDA #$EE                  ;
CODE_05E9A5:        STA $0912,y               ;
CODE_05E9A8:        STA $0916,y               ;
CODE_05E9AB:        INC $0F4A                 ;
CODE_05E9AE:        PLX                       ;
CODE_05E9AF:        PLB                       ;
CODE_05E9B0:        RTL                       ;

CODE_05E9B1:        LDA $0901,y               ;
CODE_05E9B4:        CLC                       ;
CODE_05E9B5:        ADC $DD                   ;
CODE_05E9B7:        STA $0901,y               ;
CODE_05E9BA:        INY                       ;
CODE_05E9BB:        INY                       ;
CODE_05E9BC:        INY                       ;
CODE_05E9BD:        INY                       ;
CODE_05E9BE:        RTS                       ;

CODE_05E9BF:        STA $0901,y               ;
CODE_05E9C2:        STA $0905,y               ;
CODE_05E9C5:        LDA $03AE                 ;
CODE_05E9C8:        STA $0900,y               ;
CODE_05E9CB:        CLC                       ;
CODE_05E9CC:        ADC #$08                  ;
CODE_05E9CE:        STA $0904,y               ;
CODE_05E9D1:        LDA $E9E8,x               ;
CODE_05E9D4:        STA $0902,y               ;
CODE_05E9D7:        LDA $E9E9,x               ;
CODE_05E9DA:        STA $0906,y               ;
CODE_05E9DD:        INY                       ;
CODE_05E9DE:        INY                       ;
CODE_05E9DF:        INY                       ;
CODE_05E9E0:        INY                       ;
CODE_05E9E1:        INY                       ;
CODE_05E9E2:        INY                       ;
CODE_05E9E3:        INY                       ;
CODE_05E9E4:        INY                       ;
CODE_05E9E5:        INX                       ;
CODE_05E9E6:        INX                       ;
CODE_05E9E7:        RTS                       ;

DATA_05E9E8:        db $6E,$6E,$6F,$6F,$C2,$C4,$C3,$C5
                    db $C0,$C0,$C1,$C1,$C4,$C2,$C5,$C3
                    db $F5,$F5,$F4,$F4,$80,$82,$81,$83
                    db $68,$68,$90,$90,$82,$80,$83,$81
                    db $6F,$6F,$6E,$6E,$C3,$C5,$C2,$C4
                    db $C1,$C1,$C0,$C0,$C5,$C3,$C4,$C2
                    db $F4,$F4,$F5,$F5,$81,$83,$80,$82
                    db $90,$90,$68,$68,$83,$81,$82,$80
                    db $00,$40,$00,$40,$00,$00,$00,$00
                    db $00,$40,$00,$40,$40,$40,$40,$40

CODE_05EA38:        LDA $0B46,x               ;
CODE_05EA3B:        TAY                       ;
CODE_05EA3C:        LDA $03AE                 ;
CODE_05EA3F:        STA $0900,y               ;
CODE_05EA42:        LDA $00BC,x               ;
CODE_05EA45:        CMP #$02                  ;
CODE_05EA47:        BCS CODE_05EA50           ;
CODE_05EA49:        LDA $03B9                 ;
CODE_05EA4C:        CMP #$E8                  ;
CODE_05EA4E:        BCC CODE_05EA52           ;
CODE_05EA50:        LDA #$F0                  ;
CODE_05EA52:        STA $0901,y               ;
CODE_05EA55:        LDA $00A1,x               ;
CODE_05EA58:        BMI CODE_05EA5E           ;
CODE_05EA5A:        LDA #$A9                  ;
CODE_05EA5C:        BRA CODE_05EA60           ;

CODE_05EA5E:        LDA #$29                  ;
CODE_05EA60:        STA $0903,y               ;
CODE_05EA63:        LDA $0E68                 ;
CODE_05EA66:        AND #$18                  ;
CODE_05EA68:        LSR A                     ;
CODE_05EA69:        LSR A                     ;
CODE_05EA6A:        CLC                       ;
CODE_05EA6B:        ADC #$62                  ;
CODE_05EA6D:        STA $0902,y               ;
CODE_05EA70:        LDA $021A,x               ;
CODE_05EA73:        STA $E4                   ;
CODE_05EA75:        LDA $79,x                 ;
CODE_05EA77:        STA $E5                   ;
CODE_05EA79:        REP #$20                  ;
CODE_05EA7B:        LDA $E4                   ;
CODE_05EA7D:        SEC                       ;
CODE_05EA7E:        SBC $42                   ;
CODE_05EA80:        STA $E6                   ;
CODE_05EA82:        SEP #$20                  ;
CODE_05EA84:        LDA #$02                  ;
CODE_05EA86:        STA $0D00,y               ;
CODE_05EA89:        LDA $E7                   ;
CODE_05EA8B:        BEQ CODE_05EA92           ;
CODE_05EA8D:        LDA #$03                  ;
CODE_05EA8F:        STA $0D00,y               ;
CODE_05EA92:        RTL                       ;

DATA_05EA93:        db $F9,$0E,$F7,$0E,$FA,$FB,$F8,$FB
                    db $F6,$FB

DATA_05EA9D:        db $20,$22,$24

CODE_05EAA0:        PHB                       ;
CODE_05EAA1:        PHK                       ;
CODE_05EAA2:        PLB                       ;
CODE_05EAA3:        LDY #$F0                  ;
CODE_05EAA5:        LDA $021A,x               ;
CODE_05EAA8:        STA $E4                   ;
CODE_05EAAA:        LDA $79,x                 ;
CODE_05EAAC:        STA $E5                   ;
CODE_05EAAE:        REP #$20                  ;
CODE_05EAB0:        LDA $E4                   ;
CODE_05EAB2:        CLC                       ;
CODE_05EAB3:        ADC #$0010                ;
CODE_05EAB6:        SEC                       ;
CODE_05EAB7:        SBC $42                   ;
CODE_05EAB9:        STA $E4                   ;
CODE_05EABB:        CLC                       ;
CODE_05EABC:        ADC #$0004                ;
CODE_05EABF:        STA $E6                   ;
CODE_05EAC1:        CLC                       ;
CODE_05EAC2:        ADC #$0008                ;
CODE_05EAC5:        STA $E8                   ;
CODE_05EAC7:        SEP #$20                  ;
CODE_05EAC9:        LDA $E4                   ;
CODE_05EACB:        STA $0800,y               ;
CODE_05EACE:        LDA $0238,x               ;
CODE_05EAD1:        STA $0801,y               ;
CODE_05EAD4:        LDA #$2B                  ;
CODE_05EAD6:        STA $0803,y               ;
CODE_05EAD9:        LDA $09                   ;
CODE_05EADB:        AND #$18                  ;
CODE_05EADD:        LSR A                     ;
CODE_05EADE:        LSR A                     ;
CODE_05EADF:        LSR A                     ;
CODE_05EAE0:        PHX                       ;
CODE_05EAE1:        TAX                       ;
CODE_05EAE2:        CPX #$03                  ;
CODE_05EAE4:        BNE CODE_05EAE8           ;
CODE_05EAE6:        LDX #$01                  ;
CODE_05EAE8:        LDA $EA9D,x               ;
CODE_05EAEB:        STA $0802,y               ;
CODE_05EAEE:        PLX                       ;
CODE_05EAEF:        LDA $070F                 ;
CODE_05EAF2:        BEQ CODE_05EB29           ;
CODE_05EAF4:        LDA $010F                 ;
CODE_05EAF7:        ASL A                     ;
CODE_05EAF8:        TAX                       ;
CODE_05EAF9:        LDA $E6                   ;
CODE_05EAFB:        STA $0804,y               ;
CODE_05EAFE:        LDA $E8                   ;
CODE_05EB00:        STA $0808,y               ;
CODE_05EB03:        LDA $010D                 ;
CODE_05EB06:        STA $0805,y               ;
CODE_05EB09:        STA $0809,y               ;
CODE_05EB0C:        LDA $EA93,x               ;
CODE_05EB0F:        STA $0806,y               ;
CODE_05EB12:        LDA $EA94,x               ;
CODE_05EB15:        STA $080A,y               ;
CODE_05EB18:        LDA #$22                  ;
CODE_05EB1A:        STA $0807,y               ;
CODE_05EB1D:        STA $080B,y               ;
CODE_05EB20:        CPX #$04                  ;
CODE_05EB22:        BCS CODE_05EB29           ;
CODE_05EB24:        LDA #$23                  ;
CODE_05EB26:        STA $080B,y               ;
CODE_05EB29:        LDA #$02                  ;
CODE_05EB2B:        STA $DD                   ;
CODE_05EB2D:        LDA $E5                   ;
CODE_05EB2F:        BEQ CODE_05EB33           ;
CODE_05EB31:        LDA #$01                  ;
CODE_05EB33:        ORA $DD                   ;
CODE_05EB35:        STA $0C00,y               ;
CODE_05EB38:        STZ $DD                   ;
CODE_05EB3A:        LDA $E7                   ;
CODE_05EB3C:        BEQ CODE_05EB40           ;
CODE_05EB3E:        LDA #$01                  ;
CODE_05EB40:        ORA $DD                   ;
CODE_05EB42:        STA $0C04,y               ;
CODE_05EB45:        CPX #$04                  ;
CODE_05EB47:        BCS CODE_05EB4D           ;
CODE_05EB49:        LDA #$02                  ;
CODE_05EB4B:        STA $DD                   ;
CODE_05EB4D:        LDA $E9                   ;
CODE_05EB4F:        BEQ CODE_05EB53           ;
CODE_05EB51:        LDA #$01                  ;
CODE_05EB53:        ORA $DD                   ;
CODE_05EB55:        STA $0C08,y               ;
CODE_05EB58:        PLB                       ;
CODE_05EB59:        RTL                       ;

CODE_05EB5A:        PHB                       ;
CODE_05EB5B:        PHK                       ;
CODE_05EB5C:        PLB                       ;
CODE_05EB5D:        LDA $07FC                 ;\ 
CODE_05EB60:        STA $701FF8               ;/ Set more difficult quest flag in SRAM
CODE_05EB64:        LDA $075F                 ;\
CODE_05EB67:        STA $701FF9               ;/ Set current world in SRAM
CODE_05EB6B:        LDA #$01                  ;
CODE_05EB6D:        STA $0F0B                 ;
CODE_05EB70:        LDA #$01                  ;
CODE_05EB72:        STA $07FC                 ;
CODE_05EB75:        STA $075D                 ;Enable hidden 1-up flag
CODE_05EB78:        STA $07FB                 ;
CODE_05EB7B:        STA $076A                 ;
CODE_05EB7E:        STA $7FFB05               ;
CODE_05EB82:        LDA #$80                  ;
CODE_05EB84:        STA $1602                 ;
CODE_05EB87:        STZ $075F                 ;
CODE_05EB8A:        STZ $0760                 ;
CODE_05EB8D:        STZ $075C                 ;
CODE_05EB90:        STZ $075B                 ;
CODE_05EB93:        STZ $0F0B                 ;
CODE_05EB96:        PLB                       ;
CODE_05EB97:        JSL CODE_03A287           ;
CODE_05EB9B:        RTL                       ;

DATA_05EB9C:        db $FF,$FF,$FF,$FF,$FF,$FF,$06,$FF
                    db $00,$FF,$FF,$06,$00,$01,$FF,$06
                    db $FF,$0F,$FF,$01,$FF,$FF,$FF,$FF
                    db $16,$06,$FF,$0E,$FF,$00,$0A,$FF
                    db $0B,$FF,$07,$FF,$FF,$14,$FF,$FF
                    db $FF,$FF,$FF,$FF,$16,$06,$00,$FF
                    db $0E,$05,$00,$FF,$0E,$FF,$06,$06
                    db $FF,$0F,$FF,$00,$FF,$FF,$FF,$FF
                    db $16,$FF,$FF,$12,$FF,$FF,$FF,$00
                    db $02,$06,$FF,$FF,$03,$FF,$0F,$FF
                    db $FF,$FF,$FF,$FF,$16,$00,$06,$FF
                    db $0E,$08,$00,$02,$08,$04,$05,$03
                    db $08,$FF,$0F,$06,$FF,$FF,$FF,$FF
                    db $16,$FF,$FF,$12,$FF,$FF,$00,$02
                    db $FF,$0E,$06,$FF,$FF,$08,$FF,$FF
                    db $FF,$FF,$FF,$FF,$16,$00,$0E,$05
                    db $08,$02,$0A,$FF,$0B,$FF,$07,$00
                    db $0E,$FF,$14,$03,$FF,$FF,$FF,$FF
                    db $16,$00,$02,$FF,$0E,$06,$02,$0E
                    db $12,$08,$06,$00,$08,$FF,$0E,$05
                    db $FF,$FF,$FF,$FF,$16,$FF,$FF,$FF
                    db $FF,$FF,$FF,$02,$FF,$00,$FF,$FF
                    db $02,$00,$01,$FF,$03,$08,$FF,$0F
                    db $02,$FF,$FF,$FF,$FF,$16,$02,$FF
                    db $0E,$FF,$00,$0A,$FF,$0B,$FF,$07
                    db $00,$0E,$FF,$14,$03,$FF,$FF,$FF
                    db $FF,$16,$02,$00,$FF,$0E,$05,$00
                    db $FF,$0E,$FF,$02,$02,$FF,$0F,$FF
                    db $00,$FF,$FF,$FF,$FF,$16,$FF,$FF
                    db $12,$FF,$FF,$FF,$00,$FF,$02,$FF
                    db $FF,$03,$FF,$0F,$FF,$FF,$FF,$FF
                    db $FF,$16,$00,$02,$FF,$0E,$08,$00
                    db $02,$08,$04,$05,$03,$08,$FF,$0F
                    db $02,$FF,$FF,$FF,$FF,$16,$FF,$FF
                    db $12,$FF,$FF,$00,$02,$FF,$0E,$06
                    db $FF,$FF,$08,$FF,$FF,$FF,$FF,$FF
                    db $FF,$16,$00,$0E,$05,$08,$02,$0A
                    db $FF,$0B,$FF,$07,$00,$0E,$FF,$14
                    db $03,$FF,$FF,$FF,$FF,$16,$FF,$02
                    db $00,$0E,$FF,$02,$0E,$12,$08,$FF
                    db $00,$08,$FF,$0E,$05,$FF,$FF,$FF
                    db $FF,$16,$01,$02,$02,$06,$03,$07
                    db $00,$00,$05,$03,$18,$18,$16,$03
                    db $03,$01,$02,$02,$04,$03,$08,$08
                    db $06,$03,$03,$11,$11,$16,$03,$03
                    db $08,$00,$00,$05,$03,$07,$07,$07
                    db $03,$03,$00,$00,$00,$00,$00,$01
                    db $02,$02,$03,$04,$05,$06,$06,$07
                    db $08,$09,$0A,$0B,$0C,$00,$0D,$0E
                    db $0E,$0F,$10,$11,$12,$13,$14,$00
                    db $15,$16,$17,$18,$00,$19,$1A,$1A
                    db $1B,$1C,$1D,$1E,$1F,$20,$00,$21
                    db $22,$23,$24,$00,$00,$00,$FF,$7F
                    db $63,$0C,$55,$01,$1C,$1A,$3E,$1B
                    db $9C,$2D,$BF,$3A,$00,$00,$2F,$15
                    db $14,$00,$19,$0C,$9F,$1C,$2E,$76
                    db $68,$5D,$E6,$44,$BC,$45,$A5,$14
                    db $FF,$7F,$3F,$02,$DB,$01,$36,$01
                    db $BF,$3A,$9C,$2D,$00,$00,$3F,$5B
                    db $76,$69,$F0,$50,$8B,$3C,$36,$01
                    db $DB,$01,$3F,$02,$BC,$45,$FF,$7F
                    db $A5,$14,$92,$00,$98,$00,$9F,$00
                    db $9C,$2D,$BF,$3A,$00,$00,$2F,$15
                    db $95,$2C,$3A,$41,$DF,$55,$1F,$03
                    db $7A,$02,$D5,$01,$BC,$45,$A5,$14
                    db $FF,$7F,$DF,$55,$3A,$41,$95,$2C
                    db $BF,$3A,$9C,$2D,$00,$00,$3F,$5B
                    db $7F,$21,$D9,$14,$53,$04,$00,$02
                    db $E0,$02,$E0,$03,$00,$00,$FF,$7F
                    db $63,$0C,$55,$01,$1C,$1A,$3E,$1B
                    db $9C,$2D,$BF,$3A,$00,$00,$2F,$15
                    db $60,$1E,$04,$33,$88,$43,$55,$76
                    db $90,$71,$CA,$58,$01,$80,$02,$81
                    db $41,$80,$01,$42,$C2,$02,$80,$41
                    db $C1,$41,$C1,$01,$C1,$01,$02,$80
                    db $00,$9B,$10,$18,$05,$2C,$20,$1C
                    db $0E,$60,$10,$20,$28,$30,$20,$10
                    db $80,$20,$30,$2C,$01,$FF,$00,$01
                    db $80,$01,$02,$01,$80,$01,$80,$01
                    db $02,$80,$02,$80,$01,$80,$01,$80
                    db $01,$80,$01,$02,$01,$00,$A0,$08
                    db $08,$40,$30,$10,$08,$10,$18,$1C
                    db $20,$58,$10,$40,$38,$40,$20,$50
                    db $30,$30,$48,$80,$FF,$00

CODE_05EE3A:        PHD                       ;
CODE_05EE3B:        LDA #$07                  ;
CODE_05EE3D:        XBA                       ;
CODE_05EE3E:        LDA #$00                  ;
CODE_05EE40:        TCD                       ;
CODE_05EE41:        LDX #$05                  ;
CODE_05EE43:        LDA $53                   ;
CODE_05EE45:        BEQ CODE_05EE49           ;
CODE_05EE47:        LDX #$0B                  ;
CODE_05EE49:        LDY #$05                  ;
CODE_05EE4B:        SEC                       ;
CODE_05EE4C:        LDA $CE,x                 ;
CODE_05EE4E:        SBC $07C8,y               ;
CODE_05EE51:        DEX                       ;
CODE_05EE52:        DEY                       ;
CODE_05EE53:        BPL CODE_05EE4C           ;
CODE_05EE55:        BCC CODE_05EE64           ;
CODE_05EE57:        INX                       ;
CODE_05EE58:        INY                       ;
CODE_05EE59:        LDA $CE,x                 ;
CODE_05EE5B:        STA $07C8,y               ;
CODE_05EE5E:        INX                       ;
CODE_05EE5F:        INY                       ;
CODE_05EE60:        CPY #$06                  ;
CODE_05EE62:        BCC CODE_05EE59           ;
CODE_05EE64:        PLD                       ;
CODE_05EE65:        RTL                       ;

DATA_05EE66:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;Empty, unused space
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF
