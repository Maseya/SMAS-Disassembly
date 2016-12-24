;Super Mario Bros. 1

;Routine to load the entire level's aesthetics. HDMA, layer 3, etc. 
CODE_058000:        9C DC 0E      STZ $0EDC                 ;
CODE_058003:        8B            PHB                       ;\
CODE_058004:        A9 7E         LDA #$7E                  ; |
CODE_058006:        48            PHA                       ; |
CODE_058007:        AB            PLB                       ; |
CODE_058008:        C2 30         REP #$30                  ; |
CODE_05800A:        A2 00 00      LDX #$0000                ; |Clear Background map16 tilemap
CODE_05800D:        A9 00 00      LDA #$0000                ; |
CODE_058010:        9D 00 D0      STA $D000,x               ; |
CODE_058013:        9D 00 D1      STA $D100,x               ; |
CODE_058016:        9D 00 D2      STA $D200,x               ; |
CODE_058019:        9D 00 D3      STA $D300,x               ; |
CODE_05801C:        9D 00 D4      STA $D400,x               ; |
CODE_05801F:        9D 00 D5      STA $D500,x               ; |
CODE_058022:        9D 00 D6      STA $D600,x               ; |
CODE_058025:        9D 00 D7      STA $D700,x               ; |
CODE_058028:        9D 00 D8      STA $D800,x               ; |
CODE_05802B:        9D 00 D9      STA $D900,x               ; |
CODE_05802E:        9D 00 DA      STA $DA00,x               ; |
CODE_058031:        9D 00 DB      STA $DB00,x               ; |
CODE_058034:        9D 00 DC      STA $DC00,x               ; |
CODE_058037:        E8            INX                       ; |
CODE_058038:        E8            INX                       ; |
CODE_058039:        E0 00 01      CPX #$0100                ; |
CODE_05803C:        D0 D2         BNE CODE_058010           ; |
CODE_05803E:        AB            PLB                       ;/
CODE_05803F:        8B            PHB                       ;\
CODE_058040:        4B            PHK                       ; |Data bank = current bank
CODE_058041:        AB            PLB                       ; |
CODE_058042:        9C C0 0E      STZ $0EC0                 ; |Index to the current BG2 map16 page being written to
CODE_058045:        AD 65 0E      LDA $0E65                 ; |
CODE_058048:        29 FF 00      AND #$00FF                ; |Store current background to $DB. $0E65 is clone
CODE_05804B:        F0 02         BEQ CODE_05804F           ; |of $DB (or the opposite......)
CODE_05804D:        85 DB         STA $DB                   ; |
CODE_05804F:        A5 DB         LDA $DB                   ; |
CODE_058051:        29 FF 00      AND #$00FF                ; |Layer 2 background
CODE_058054:        0A            ASL A                     ; |to 16-bit index
CODE_058055:        AA            TAX                       ; |
CODE_058056:        BD 04 AD      LDA DATA_05AD04,x         ; |Get relative index to backgrounds properties table, transfer it to X
CODE_058059:        85 02         STA $02                   ;/

CODE_05805B:        C2 30         REP #$30                  ;\
CODE_05805D:        A6 02         LDX $02                   ; |
CODE_05805F:        BD 57 B5      LDA DATA_05B557,x         ; |This table seems to be the group of commands associated with the background scene to load. Format: HHH LLL CCCCCC VVVV?
CODE_058062:        85 04         STA $04                   ; | ("Background scene" being the graphics tileset, layer 3 flag, HDMA gradient and the BG2 tilemap).
CODE_058064:        E6 02         INC $02                   ; |
CODE_058066:        E6 02         INC $02                   ;/ increase pointer to read next word of background commands next time.
CODE_058068:        29 F0 03      AND #$03F0                ; | 
CODE_05806B:        4A            LSR A                     ; |
CODE_05806C:        4A            LSR A                     ; |
CODE_05806D:        4A            LSR A                     ; |
CODE_05806E:        4A            LSR A                     ; |
CODE_05806F:        85 EF         STA $EF                   ;/ Store CCCCCC into $EF. It seems to be the "command"
CODE_058071:        A5 04         LDA $04                   ;\ 
CODE_058073:        29 0F 00      AND #$000F                ; |Store VVVV data. It seems to be the value associated with the command
CODE_058076:        85 F1         STA $F1                   ;/
CODE_058078:        A5 04         LDA $04                   ;\ Load HHH data
CODE_05807A:        29 00 E0      AND #$E000                ; | HHH = high nibble of background data starting index of map16 tilemap
CODE_05807D:        85 ED         STA $ED                   ;/| 
CODE_05807F:        A5 04         LDA $04                   ;\| Load LLL data
CODE_058081:        4A            LSR A                     ; | LLL = Low nibble of background data starting index of map16 tilemap * 2
CODE_058082:        29 00 0E      AND #$0E00                ; | This code basically turns HHH LLL into HHH0 LLL0
CODE_058085:        05 ED         ORA $ED                   ; |
CODE_058087:        EB            XBA                       ; |
CODE_058088:        85 ED         STA $ED                   ; |
CODE_05808A:        29 F0 00      AND #$00F0                ; |
CODE_05808D:        C9 E0 00      CMP #$00E0                ; | If #$E0, then $EF is a command to be processed
CODE_058090:        D0 21         BNE CODE_0580B3           ;/ 
CODE_058092:        A5 EF         LDA $EF                   ;\
CODE_058094:        C9 3F 00      CMP #$003F                ; | if not end of background data marker, process background generation
CODE_058097:        D0 15         BNE CODE_0580AE           ;/ (Otherwise just skip branch and finish up routine)
CODE_058099:        EE C0 0E      INC $0EC0                 ;\
CODE_05809C:        EE C0 0E      INC $0EC0                 ; | Skip 2 pages and place a BG2 map16 marker word
CODE_05809F:        AD C0 0E      LDA $0EC0                 ; | 
CODE_0580A2:        EB            XBA                       ; |
CODE_0580A3:        AA            TAX                       ; | And make sure the final bytes are FFFF to mark the end of the map16 tilemap.
CODE_0580A4:        A9 FF FF      LDA #$FFFF                ; |
CODE_0580A7:        9F 00 D0 7E   STA $7ED000,x             ;/
CODE_0580AB:        4C 66 91      JMP CODE_059166           ;

CODE_0580AE:        20 19 8F      JSR CODE_058F19           ;Process the background generation command
CODE_0580B1:        80 A8         BRA CODE_05805B           ;back to the command processing loop

CODE_0580B3:        AD C0 0E      LDA $0EC0                 ;\
CODE_0580B6:        EB            XBA                       ; | This part of the routine deals with the background generation command
CODE_0580B7:        18            CLC                       ; | (as in, place the tiles in the background)
CODE_0580B8:        65 ED         ADC $ED                   ; | $EB stores the starting index of the background objects to be placed at
CODE_0580BA:        85 EB         STA $EB                   ; | At this point $EF isn't a command but rather serves another purpose. TODO
CODE_0580BC:        A5 EF         LDA $EF                   ; | 
CODE_0580BE:        C9 10 00      CMP #$0010                ; | 
CODE_0580C1:        90 06         BCC CODE_0580C9           ; |
CODE_0580C3:        20 85 8E      JSR CODE_058E85           ; | If EF is #$10 or higher, then ???
CODE_0580C6:        4C 5B 80      JMP CODE_05805B           ;/

CODE_0580C9:        0A            ASL A                     ;
CODE_0580CA:        AA            TAX                       ;
CODE_0580CB:        A5 DB         LDA $DB                   ;\
CODE_0580CD:        0A            ASL A                     ; |background to index. Up to $21 is valid.
CODE_0580CE:        A8            TAY                       ;/
CODE_0580CF:        B9 E1 80      LDA PNTR_0580E1,y         ;\Setup indirect pointer based on background.
CODE_0580D2:        85 04         STA $04                   ;/
CODE_0580D4:        A9 05 00      LDA #$0005                ;\Bank byte: $05
CODE_0580D7:        85 06         STA $06                   ;/
CODE_0580D9:        9B            TXY                       ;
CODE_0580DA:        B7 04         LDA [$04],y               ;
CODE_0580DC:        85 00         STA $00                   ;
CODE_0580DE:        6C 00 00      JMP ($0000)               ;Jump to background generation/background loading routines

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

CODE_0581F5:        A4 F1         LDY $F1                   ;
CODE_0581F7:        A6 EB         LDX $EB                   ;
CODE_0581F9:        E2 20         SEP #$20                  ;
CODE_0581FB:        B9 E1 81      LDA DATA_0581E1,y               ;
CODE_0581FE:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058202:        B9 E2 81      LDA DATA_0581E1+1,y               ;
CODE_058205:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058209:        B9 E3 81      LDA DATA_0581E1+2,y               ;
CODE_05820C:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058210:        B9 E4 81      LDA DATA_0581E1+3,y               ;
CODE_058213:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058217:        B9 E5 81      LDA DATA_0581E1+4,y               ;
CODE_05821A:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_05821E:        C2 20         REP #$20                  ;
CODE_058220:        4C 5B 80      JMP CODE_05805B           ;

DATA_058223:        db $01,$02,$03,$04,$08,$09,$05,$06      ;
                    db $10,$11,$17,$18,$1B,$1C,$1F,$20      ;
                    db $21,$22,$25,$26,$23,$24,$2B,$2C      ;
                    db $2E,$2F,$31,$32                      ;

CODE_05823F:        A0 0E 00      LDY #$000E                ;
CODE_058242:        80 03         BRA CODE_058247           ;

CODE_058244:        A0 00 00      LDY #$0000                ;
CODE_058247:        A6 EB         LDX $EB                   ;
CODE_058249:        E8            INX                       ;
CODE_05824A:        E2 20         SEP #$20                  ;
CODE_05824C:        B9 23 82      LDA DATA_058223,y               ;
CODE_05824F:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058253:        B9 24 82      LDA DATA_058223+1,y               ;
CODE_058256:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_05825A:        B9 25 82      LDA DATA_058223+2,y               ;
CODE_05825D:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058261:        B9 26 82      LDA DATA_058223+3,y               ;
CODE_058264:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_058268:        B9 29 82      LDA DATA_058223+6,y               ;
CODE_05826B:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_05826F:        B9 2A 82      LDA DATA_058223+7,y               ;
CODE_058272:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058276:        A9 30         LDA #$30                  ;
CODE_058278:        85 E4         STA $E4                   ;
CODE_05827A:        64 E5         STZ $E5                   ;
CODE_05827C:        C2 20         REP #$20                  ;
CODE_05827E:        8A            TXA                       ;
CODE_05827F:        18            CLC                       ;
CODE_058280:        65 E4         ADC $E4                   ;
CODE_058282:        AA            TAX                       ;
CODE_058283:        E2 20         SEP #$20                  ;
CODE_058285:        C9 D0         CMP #$D0                  ;
CODE_058287:        B0 24         BCS CODE_0582AD           ;
CODE_058289:        B9 27 82      LDA DATA_058223+4,y               ;
CODE_05828C:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058290:        B9 28 82      LDA DATA_058223+5,y               ;
CODE_058293:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_058297:        B9 29 82      LDA DATA_058223+6,y               ;
CODE_05829A:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_05829E:        B9 2A 82      LDA DATA_058223+7,y               ;
CODE_0582A1:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0582A5:        A9 20         LDA #$20                  ;
CODE_0582A7:        85 E4         STA $E4                   ;
CODE_0582A9:        64 E5         STZ $E5                   ;
CODE_0582AB:        80 CF         BRA CODE_05827C           ;

CODE_0582AD:        B9 2B 82      LDA DATA_058223+8,y               ;
CODE_0582B0:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0582B4:        B9 2C 82      LDA DATA_058223+9,y               ;
CODE_0582B7:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0582BB:        B9 2D 82      LDA DATA_058223+10,y               ;
CODE_0582BE:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0582C2:        B9 2E 82      LDA DATA_058223+11,y               ;
CODE_0582C5:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0582C9:        B9 2F 82      LDA DATA_058223+12,y               ;
CODE_0582CC:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0582D0:        B9 30 82      LDA DATA_058223+13,y               ;
CODE_0582D3:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0582D7:        C2 20         REP #$20                  ;
CODE_0582D9:        4C 5B 80      JMP CODE_05805B           ;

DATA_0582DC:        db $00,$00,$41,$00,$82,$00

CODE_0582E2:        A5 F1         LDA $F1                   ;
CODE_0582E4:        0A            ASL A                     ;
CODE_0582E5:        A8            TAY                       ;
CODE_0582E6:        B9 DC 82      LDA DATA_0582DC,y               ;
CODE_0582E9:        A8            TAY                       ;
CODE_0582EA:        A5 EB         LDA $EB                   ;
CODE_0582EC:        18            CLC                       ;
CODE_0582ED:        69 10 00      ADC #$0010                ;
CODE_0582F0:        AA            TAX                       ;
CODE_0582F1:        E2 20         SEP #$20                  ;
CODE_0582F3:        B9 94 B4      LDA DATA_05B494,y               ;
CODE_0582F6:        C9 FF         CMP #$FF                  ;
CODE_0582F8:        F0 08         BEQ CODE_058302           ;
CODE_0582FA:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0582FE:        C8            INY                       ;
CODE_0582FF:        E8            INX                       ;
CODE_058300:        80 F1         BRA CODE_0582F3           ;

CODE_058302:        C2 20         REP #$20                  ;
CODE_058304:        4C 5B 80      JMP CODE_05805B           ;

CODE_058307:        A6 EB         LDX $EB                   ;
CODE_058309:        A5 F1         LDA $F1                   ;
CODE_05830B:        85 E6         STA $E6                   ;
CODE_05830D:        E2 20         SEP #$20                  ;
CODE_05830F:        64 E8         STZ $E8                   ;
CODE_058311:        A9 09         LDA #$09                  ;
CODE_058313:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058317:        A9 0E         LDA #$0E                  ;
CODE_058319:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_05831D:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058321:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_058325:        A9 12         LDA #$12                  ;
CODE_058327:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_05832B:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_05832F:        E8            INX                       ;
CODE_058330:        C2 20         REP #$20                  ;
CODE_058332:        8A            TXA                       ;
CODE_058333:        29 0F 00      AND #$000F                ;
CODE_058336:        D0 08         BNE CODE_058340           ;
CODE_058338:        8A            TXA                       ;
CODE_058339:        18            CLC                       ;
CODE_05833A:        69 F0 00      ADC #$00F0                ;
CODE_05833D:        AA            TAX                       ;
CODE_05833E:        E6 E8         INC $E8                   ;
CODE_058340:        E2 20         SEP #$20                  ;
CODE_058342:        C6 E6         DEC $E6                   ;
CODE_058344:        A5 E6         LDA $E6                   ;
CODE_058346:        30 37         BMI CODE_05837F           ;
CODE_058348:        A9 09         LDA #$09                  ;
CODE_05834A:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_05834E:        A9 0F         LDA #$0F                  ;
CODE_058350:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058354:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058358:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_05835C:        A9 13         LDA #$13                  ;
CODE_05835E:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058362:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_058366:        E8            INX                       ;
CODE_058367:        C2 20         REP #$20                  ;
CODE_058369:        8A            TXA                       ;
CODE_05836A:        29 0F 00      AND #$000F                ;
CODE_05836D:        D0 08         BNE CODE_058377           ;
CODE_05836F:        8A            TXA                       ;
CODE_058370:        18            CLC                       ;
CODE_058371:        69 F0 00      ADC #$00F0                ;
CODE_058374:        AA            TAX                       ;
CODE_058375:        E6 E8         INC $E8                   ;
CODE_058377:        E2 20         SEP #$20                  ;
CODE_058379:        C6 E6         DEC $E6                   ;
CODE_05837B:        A5 E6         LDA $E6                   ;
CODE_05837D:        10 92         BPL CODE_058311           ;
CODE_05837F:        A6 EB         LDX $EB                   ;
CODE_058381:        A5 F1         LDA $F1                   ;
CODE_058383:        C9 04         CMP #$04                  ;
CODE_058385:        90 02         BCC CODE_058389           ;
CODE_058387:        A9 04         LDA #$04                  ;
CODE_058389:        A8            TAY                       ;
CODE_05838A:        B9 B0 83      LDA DATA_0583B0,y               ;
CODE_05838D:        9F FF CF 7E   STA $7ECFFF,x             ;
CODE_058391:        C2 20         REP #$20                  ;
CODE_058393:        A5 E8         LDA $E8                   ;
CODE_058395:        F0 06         BEQ CODE_05839D           ;
CODE_058397:        8A            TXA                       ;
CODE_058398:        18            CLC                       ;
CODE_058399:        69 F0 00      ADC #$00F0                ;
CODE_05839C:        AA            TAX                       ;
CODE_05839D:        8A            TXA                       ;
CODE_05839E:        18            CLC                       ;
CODE_05839F:        65 F1         ADC $F1                   ;
CODE_0583A1:        AA            TAX                       ;
CODE_0583A2:        E2 20         SEP #$20                  ;
CODE_0583A4:        B9 B5 83      LDA DATA_0583B5,y               ;
CODE_0583A7:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0583AB:        C2 20         REP #$20                  ;
CODE_0583AD:        4C 5B 80      JMP CODE_05805B           ;

DATA_0583B0:        db $08,$08,$04,$04,$08

DATA_0583B5:        db $0A,$06,$0A,$06,$0A ;

DATA_0583BA:        db $01,$02,$03,$02,$04,$01,$02,$02 ;
                    db $03,$02,$02,$04,$07,$08,$09,$07 ;
                    db $0E,$08,$0E,$09,$01,$03,$04 ;

DATA_0583D1:        db $04,$06,$02,$04,$02 ;

DATA_0583D6:        db $00,$05,$0C,$0F,$14 ;

CODE_0583DB:        E6 EB         INC $EB                   ;
CODE_0583DD:        A5 EB         LDA $EB                   ;
CODE_0583DF:        18            CLC                       ;
CODE_0583E0:        69 10 00      ADC #$0010                ;
CODE_0583E3:        85 EB         STA $EB                   ;
CODE_0583E5:        80 02         BRA CODE_0583E9           ;

CODE_0583E7:        E6 EB         INC $EB                   ;
CODE_0583E9:        A6 EB         LDX $EB                   ;
CODE_0583EB:        A5 F1         LDA $F1                   ;
CODE_0583ED:        A8            TAY                       ;
CODE_0583EE:        B9 D1 83      LDA DATA_0583D1,y               ;
CODE_0583F1:        29 FF 00      AND #$00FF                ;
CODE_0583F4:        85 F1         STA $F1                   ;
CODE_0583F6:        B9 D6 83      LDA DATA_0583D6,y               ;
CODE_0583F9:        29 FF 00      AND #$00FF                ;
CODE_0583FC:        A8            TAY                       ;
CODE_0583FD:        E2 20         SEP #$20                  ;
CODE_0583FF:        B9 BA 83      LDA DATA_0583BA,y               ;
CODE_058402:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058406:        E8            INX                       ;
CODE_058407:        C8            INY                       ;
CODE_058408:        8A            TXA                       ;
CODE_058409:        29 0F         AND #$0F                  ;
CODE_05840B:        D0 0A         BNE CODE_058417           ;
CODE_05840D:        C2 20         REP #$20                  ;
CODE_05840F:        8A            TXA                       ;
CODE_058410:        18            CLC                       ;
CODE_058411:        69 F0 00      ADC #$00F0                ;
CODE_058414:        AA            TAX                       ;
CODE_058415:        E2 20         SEP #$20                  ;
CODE_058417:        C6 F1         DEC $F1                   ;
CODE_058419:        10 E4         BPL CODE_0583FF           ;
CODE_05841B:        C2 20         REP #$20                  ;
CODE_05841D:        4C 5B 80      JMP CODE_05805B           ;

DATA_058420:        db $05,$0A

DATA_058422:        db $06,$0C

CODE_058424:        E6 EB         INC $EB                   ;
CODE_058426:        A5 EB         LDA $EB                   ;
CODE_058428:        18            CLC                       ;
CODE_058429:        69 10 00      ADC #$0010                ;
CODE_05842C:        85 EB         STA $EB                   ;
CODE_05842E:        80 02         BRA CODE_058432           ;

CODE_058430:        E6 EB         INC $EB                   ;
CODE_058432:        A0 01 00      LDY #$0001                ;
CODE_058435:        80 11         BRA CODE_058448           ;

CODE_058437:        E6 EB         INC $EB                   ;
CODE_058439:        A5 EB         LDA $EB                   ;
CODE_05843B:        18            CLC                       ;
CODE_05843C:        69 10 00      ADC #$0010                ;
CODE_05843F:        85 EB         STA $EB                   ;
CODE_058441:        80 02         BRA CODE_058445           ;

CODE_058443:        E6 EB         INC $EB                   ;
CODE_058445:        A0 00 00      LDY #$0000                ;
CODE_058448:        A6 EB         LDX $EB                   ;
CODE_05844A:        E2 20         SEP #$20                  ;
CODE_05844C:        B9 20 84      LDA DATA_058420,y               ;
CODE_05844F:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058453:        C2 20         REP #$20                  ;
CODE_058455:        8A            TXA                       ;
CODE_058456:        18            CLC                       ;
CODE_058457:        69 10 00      ADC #$0010                ;
CODE_05845A:        AA            TAX                       ;
CODE_05845B:        E2 20         SEP #$20                  ;
CODE_05845D:        C6 F1         DEC $F1                   ;
CODE_05845F:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_058463:        C9 0E         CMP #$0E                  ;
CODE_058465:        D0 04         BNE CODE_05846B           ;
CODE_058467:        A9 0D         LDA #$0D                  ;
CODE_058469:        80 0B         BRA CODE_058476           ;

CODE_05846B:        C9 02         CMP #$02                  ;
CODE_05846D:        D0 04         BNE CODE_058473           ;
CODE_05846F:        A9 0B         LDA #$0B                  ;
CODE_058471:        80 03         BRA CODE_058476           ;

CODE_058473:        B9 22 84      LDA DATA_058422,y               ;
CODE_058476:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_05847A:        C2 20         REP #$20                  ;
CODE_05847C:        8A            TXA                       ;
CODE_05847D:        18            CLC                       ;
CODE_05847E:        69 10 00      ADC #$0010                ;
CODE_058481:        AA            TAX                       ;
CODE_058482:        E2 20         SEP #$20                  ;
CODE_058484:        C6 F1         DEC $F1                   ;
CODE_058486:        10 D7         BPL CODE_05845F           ;
CODE_058488:        C2 20         REP #$20                  ;
CODE_05848A:        4C 5B 80      JMP CODE_05805B           ;

CODE_05848D:        A5 EB         LDA $EB                   ;
CODE_05848F:        18            CLC                       ;
CODE_058490:        69 10 00      ADC #$0010                ;
CODE_058493:        AA            TAX                       ;
CODE_058494:        E2 20         SEP #$20                  ;
CODE_058496:        A9 4E         LDA #$4E                  ;
CODE_058498:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_05849C:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0584A0:        F0 04         BEQ CODE_0584A6           ;
CODE_0584A2:        A9 38         LDA #$38                  ;
CODE_0584A4:        80 02         BRA CODE_0584A8           ;

CODE_0584A6:        A9 34         LDA #$34                  ;
CODE_0584A8:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0584AC:        BF 10 D0 7E   LDA $7ED010,x             ;
CODE_0584B0:        F0 08         BEQ CODE_0584BA           ;
CODE_0584B2:        C9 12         CMP #$12                  ;
CODE_0584B4:        F0 04         BEQ CODE_0584BA           ;
CODE_0584B6:        A9 44         LDA #$44                  ;
CODE_0584B8:        80 02         BRA CODE_0584BC           ;

CODE_0584BA:        A9 40         LDA #$40                  ;
CODE_0584BC:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_0584C0:        BF 20 D0 7E   LDA $7ED020,x             ;
CODE_0584C4:        F0 08         BEQ CODE_0584CE           ;
CODE_0584C6:        C9 12         CMP #$12                  ;
CODE_0584C8:        F0 04         BEQ CODE_0584CE           ;
CODE_0584CA:        A9 4D         LDA #$4D                  ;
CODE_0584CC:        80 02         BRA CODE_0584D0           ;

CODE_0584CE:        A9 4C         LDA #$4C                  ;
CODE_0584D0:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0584D4:        E8            INX                       ;
CODE_0584D5:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0584D9:        F0 1C         BEQ CODE_0584F7           ;
CODE_0584DB:        C9 12         CMP #$12                  ;
CODE_0584DD:        F0 18         BEQ CODE_0584F7           ;
CODE_0584DF:        C9 18         CMP #$18                  ;
CODE_0584E1:        F0 10         BEQ CODE_0584F3           ;
CODE_0584E3:        C9 07         CMP #$07                  ;
CODE_0584E5:        F0 0C         BEQ CODE_0584F3           ;
CODE_0584E7:        C9 17         CMP #$17                  ;
CODE_0584E9:        F0 04         BEQ CODE_0584EF           ;
CODE_0584EB:        A9 39         LDA #$39                  ;
CODE_0584ED:        80 0A         BRA CODE_0584F9           ;

CODE_0584EF:        A9 3D         LDA #$3D                  ;
CODE_0584F1:        80 06         BRA CODE_0584F9           ;

CODE_0584F3:        A9 36         LDA #$36                  ;
CODE_0584F5:        80 02         BRA CODE_0584F9           ;

CODE_0584F7:        A9 35         LDA #$35                  ;
CODE_0584F9:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0584FD:        A9 41         LDA #$41                  ;
CODE_0584FF:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058503:        A9 48         LDA #$48                  ;
CODE_058505:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058509:        A9 4E         LDA #$4E                  ;
CODE_05850B:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_05850F:        E8            INX                       ;
CODE_058510:        C6 F1         DEC $F1                   ;
CODE_058512:        A5 F1         LDA $F1                   ;
CODE_058514:        D0 03         BNE CODE_058519           ;
CODE_058516:        4C 99 85      JMP CODE_058599           ;

CODE_058519:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_05851D:        D0 1A         BNE CODE_058539           ;
CODE_05851F:        A9 36         LDA #$36                  ;
CODE_058521:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058525:        A9 35         LDA #$35                  ;
CODE_058527:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_05852B:        A9 42         LDA #$42                  ;
CODE_05852D:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058531:        A9 41         LDA #$41                  ;
CODE_058533:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_058537:        80 36         BRA CODE_05856F           ;

CODE_058539:        C9 18         CMP #$18                  ;
CODE_05853B:        F0 1A         BEQ CODE_058557           ;
CODE_05853D:        A9 3A         LDA #$3A                  ;
CODE_05853F:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058543:        A9 39         LDA #$39                  ;
CODE_058545:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_058549:        A9 42         LDA #$42                  ;
CODE_05854B:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_05854F:        A9 41         LDA #$41                  ;
CODE_058551:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_058555:        80 18         BRA CODE_05856F           ;

CODE_058557:        A9 36         LDA #$36                  ;
CODE_058559:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_05855D:        A9 35         LDA #$35                  ;
CODE_05855F:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_058563:        A9 42         LDA #$42                  ;
CODE_058565:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058569:        A9 41         LDA #$41                  ;
CODE_05856B:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_05856F:        A9 47         LDA #$47                  ;
CODE_058571:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058575:        A9 48         LDA #$48                  ;
CODE_058577:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_05857B:        A9 4E         LDA #$4E                  ;
CODE_05857D:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058581:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_058585:        E8            INX                       ;
CODE_058586:        E8            INX                       ;
CODE_058587:        8A            TXA                       ;
CODE_058588:        29 0F         AND #$0F                  ;
CODE_05858A:        D0 84         BNE CODE_058510           ;
CODE_05858C:        C2 20         REP #$20                  ;
CODE_05858E:        8A            TXA                       ;
CODE_05858F:        18            CLC                       ;
CODE_058590:        69 F0 00      ADC #$00F0                ;
CODE_058593:        AA            TAX                       ;
CODE_058594:        E2 20         SEP #$20                  ;
CODE_058596:        4C 10 85      JMP CODE_058510           ;

CODE_058599:        A9 42         LDA #$42                  ;
CODE_05859B:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_05859F:        A9 47         LDA #$47                  ;
CODE_0585A1:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0585A5:        A9 4E         LDA #$4E                  ;
CODE_0585A7:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_0585AB:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_0585AF:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0585B3:        D0 1A         BNE CODE_0585CF           ;
CODE_0585B5:        A9 36         LDA #$36                  ;
CODE_0585B7:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0585BB:        A9 37         LDA #$37                  ;
CODE_0585BD:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0585C1:        A9 43         LDA #$43                  ;
CODE_0585C3:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0585C7:        A9 49         LDA #$49                  ;
CODE_0585C9:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0585CD:        80 18         BRA CODE_0585E7           ;

CODE_0585CF:        A9 3A         LDA #$3A                  ;
CODE_0585D1:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0585D5:        A9 3B         LDA #$3B                  ;
CODE_0585D7:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_0585DB:        A9 45         LDA #$45                  ;
CODE_0585DD:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_0585E1:        A9 4A         LDA #$4A                  ;
CODE_0585E3:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0585E7:        C2 20         REP #$20                  ;
CODE_0585E9:        4C 5B 80      JMP CODE_05805B           ;

CODE_0585EC:        E6 EB         INC $EB                   ;
CODE_0585EE:        A6 EB         LDX $EB                   ;
CODE_0585F0:        86 E2         STX $E2                   ;
CODE_0585F2:        A5 EF         LDA $EF                   ;
CODE_0585F4:        0A            ASL A                     ;
CODE_0585F5:        A8            TAY                       ;
CODE_0585F6:        B9 8A 87      LDA DATA_05878A,y         ;
CODE_0585F9:        A8            TAY                       ;
CODE_0585FA:        E2 20         SEP #$20                  ;
CODE_0585FC:        B9 23 B3      LDA DATA_05B323,y               ;
CODE_0585FF:        F0 0F         BEQ CODE_058610           ;
CODE_058601:        C9 FF         CMP #$FF                  ;
CODE_058603:        F0 2F         BEQ CODE_058634           ;
CODE_058605:        C9 FE         CMP #$FE                  ;
CODE_058607:        F0 1B         BEQ CODE_058624           ;
CODE_058609:        B9 23 B3      LDA DATA_05B323,y               ;
CODE_05860C:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058610:        C8            INY                       ;
CODE_058611:        E8            INX                       ;
CODE_058612:        C2 20         REP #$20                  ;
CODE_058614:        8A            TXA                       ;
CODE_058615:        29 0F 00      AND #$000F                ;
CODE_058618:        D0 06         BNE CODE_058620           ;
CODE_05861A:        8A            TXA                       ;
CODE_05861B:        18            CLC                       ;
CODE_05861C:        69 F0 00      ADC #$00F0                ;
CODE_05861F:        AA            TAX                       ;
CODE_058620:        E2 20         SEP #$20                  ;
CODE_058622:        80 D8         BRA CODE_0585FC           ;

CODE_058624:        C2 20         REP #$20                  ;
CODE_058626:        A5 E2         LDA $E2                   ;
CODE_058628:        18            CLC                       ;
CODE_058629:        69 10 00      ADC #$0010                ;
CODE_05862C:        85 E2         STA $E2                   ;
CODE_05862E:        AA            TAX                       ;
CODE_05862F:        E2 20         SEP #$20                  ;
CODE_058631:        C8            INY                       ;
CODE_058632:        80 C8         BRA CODE_0585FC           ;

CODE_058634:        C2 20         REP #$20                  ;
CODE_058636:        4C 5B 80      JMP CODE_05805B           ;

CODE_058639:        A5 EB         LDA $EB                   ;
CODE_05863B:        18            CLC                       ;
CODE_05863C:        69 10 00      ADC #$0010                ;
CODE_05863F:        AA            TAX                       ;
CODE_058640:        E8            INX                       ;
CODE_058641:        80 0D         BRA CODE_058650           ;

CODE_058643:        A5 EB         LDA $EB                   ;
CODE_058645:        18            CLC                       ;
CODE_058646:        69 10 00      ADC #$0010                ;
CODE_058649:        AA            TAX                       ;
CODE_05864A:        80 04         BRA CODE_058650           ;

CODE_05864C:        E6 EB         INC $EB                   ;
CODE_05864E:        A6 EB         LDX $EB                   ;
CODE_058650:        86 E2         STX $E2                   ;
CODE_058652:        A5 EF         LDA $EF                   ;
CODE_058654:        0A            ASL A                     ;
CODE_058655:        A8            TAY                       ;
CODE_058656:        B9 AA 87      LDA DATA_0587AA,y               ;
CODE_058659:        A8            TAY                       ;
CODE_05865A:        E2 20         SEP #$20                  ;
CODE_05865C:        B9 E2 B3      LDA DATA_05B3E2,y               ;
CODE_05865F:        F0 0F         BEQ CODE_058670           ;
CODE_058661:        C9 FF         CMP #$FF                  ;
CODE_058663:        F0 2F         BEQ CODE_058694           ;
CODE_058665:        C9 FE         CMP #$FE                  ;
CODE_058667:        F0 1B         BEQ CODE_058684           ;
CODE_058669:        B9 E2 B3      LDA DATA_05B3E2,y               ;
CODE_05866C:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058670:        C8            INY                       ;
CODE_058671:        E8            INX                       ;
CODE_058672:        C2 20         REP #$20                  ;
CODE_058674:        8A            TXA                       ;
CODE_058675:        29 0F 00      AND #$000F                ;
CODE_058678:        D0 06         BNE CODE_058680           ;
CODE_05867A:        8A            TXA                       ;
CODE_05867B:        18            CLC                       ;
CODE_05867C:        69 F0 00      ADC #$00F0                ;
CODE_05867F:        AA            TAX                       ;
CODE_058680:        E2 20         SEP #$20                  ;
CODE_058682:        80 D8         BRA CODE_05865C           ;

CODE_058684:        C2 20         REP #$20                  ;
CODE_058686:        A5 E2         LDA $E2                   ;
CODE_058688:        18            CLC                       ;
CODE_058689:        69 10 00      ADC #$0010                ;
CODE_05868C:        85 E2         STA $E2                   ;
CODE_05868E:        AA            TAX                       ;
CODE_05868F:        E2 20         SEP #$20                  ;
CODE_058691:        C8            INY                       ;
CODE_058692:        80 C8         BRA CODE_05865C           ;

CODE_058694:        C2 20         REP #$20                  ;
CODE_058696:        4C 5B 80      JMP CODE_05805B           ;

CODE_058699:        A6 EB         LDX $EB                   ;
CODE_05869B:        86 E2         STX $E2                   ;
CODE_05869D:        A5 EF         LDA $EF                   ;
CODE_05869F:        0A            ASL A                     ;
CODE_0586A0:        A8            TAY                       ;
CODE_0586A1:        B9 BE 87      LDA DATA_0587BE,y               ;
CODE_0586A4:        A8            TAY                       ;
CODE_0586A5:        E2 20         SEP #$20                  ;
CODE_0586A7:        B9 48 AD      LDA DATA_05AD48,y               ;
CODE_0586AA:        F0 0C         BEQ CODE_0586B8           ;
CODE_0586AC:        C9 FF         CMP #$FF                  ;
CODE_0586AE:        F0 34         BEQ CODE_0586E4           ;
CODE_0586B0:        C9 FE         CMP #$FE                  ;
CODE_0586B2:        F0 18         BEQ CODE_0586CC           ;
CODE_0586B4:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_0586B8:        C8            INY                       ;
CODE_0586B9:        E8            INX                       ;
CODE_0586BA:        C2 20         REP #$20                  ;
CODE_0586BC:        8A            TXA                       ;
CODE_0586BD:        29 0F 00      AND #$000F                ;
CODE_0586C0:        D0 06         BNE CODE_0586C8           ;
CODE_0586C2:        8A            TXA                       ;
CODE_0586C3:        18            CLC                       ;
CODE_0586C4:        69 F0 00      ADC #$00F0                ;
CODE_0586C7:        AA            TAX                       ;
CODE_0586C8:        E2 20         SEP #$20                  ;
CODE_0586CA:        80 DB         BRA CODE_0586A7           ;

CODE_0586CC:        C2 20         REP #$20                  ;
CODE_0586CE:        A5 E2         LDA $E2                   ;
CODE_0586D0:        18            CLC                       ;
CODE_0586D1:        69 10 00      ADC #$0010                ;
CODE_0586D4:        85 E2         STA $E2                   ;
CODE_0586D6:        AA            TAX                       ;
CODE_0586D7:        29 F0 00      AND #$00F0                ;
CODE_0586DA:        C9 F0 00      CMP #$00F0                ;
CODE_0586DD:        F0 05         BEQ CODE_0586E4           ;
CODE_0586DF:        E2 20         SEP #$20                  ;
CODE_0586E1:        C8            INY                       ;
CODE_0586E2:        80 C3         BRA CODE_0586A7           ;

CODE_0586E4:        C2 20         REP #$20                  ;
CODE_0586E6:        4C 5B 80      JMP CODE_05805B           ;

CODE_0586E9:        C6 EF         DEC $EF                   ;
CODE_0586EB:        A5 EF         LDA $EF                   ;
CODE_0586ED:        29 03 00      AND #$0003                ;
CODE_0586F0:        0A            ASL A                     ;
CODE_0586F1:        0A            ASL A                     ;
CODE_0586F2:        0A            ASL A                     ;
CODE_0586F3:        0A            ASL A                     ;
CODE_0586F4:        05 F1         ORA $F1                   ;
CODE_0586F6:        0A            ASL A                     ;
CODE_0586F7:        0A            ASL A                     ;
CODE_0586F8:        A8            TAY                       ;
CODE_0586F9:        A6 EB         LDX $EB                   ;
CODE_0586FB:        E2 20         SEP #$20                  ;
CODE_0586FD:        B9 E4 91      LDA DATA_0591E4,y               ;
CODE_058700:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058704:        B9 E5 91      LDA DATA_0591E4+1,y               ;
CODE_058707:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_05870B:        B9 E6 91      LDA DATA_0591E4+2,y               ;
CODE_05870E:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058712:        B9 E7 91      LDA DATA_0591E4+3,y               ;
CODE_058715:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_058719:        C2 20         REP #$20                  ;
CODE_05871B:        4C 5B 80      JMP CODE_05805B           ;

DATA_05871E:        db $04,$05,$0B,$0C,$0B,$0C

CODE_058724:        E6 EB         INC $EB                   ;
CODE_058726:        A5 EB         LDA $EB                   ;
CODE_058728:        18            CLC                       ;
CODE_058729:        69 20 00      ADC #$0020                ;
CODE_05872C:        AA            TAX                       ;
CODE_05872D:        E2 20         SEP #$20                  ;
CODE_05872F:        AD 1E 87      LDA DATA_05871E                 ;\
CODE_058732:        9F 00 D0 7E   STA $7ED000,x             ; |
CODE_058736:        AD 1F 87      LDA DATA_05871E+1                 ; |
CODE_058739:        9F 01 D0 7E   STA $7ED001,x             ; |
CODE_05873D:        AD 20 87      LDA DATA_05871E+2                 ; |
CODE_058740:        9F 10 D0 7E   STA $7ED010,x             ; |
CODE_058744:        AD 21 87      LDA DATA_05871E+3                 ; |
CODE_058747:        9F 11 D0 7E   STA $7ED011,x             ; |
CODE_05874B:        AD 22 87      LDA DATA_05871E+4                 ; |
CODE_05874E:        9F 20 D0 7E   STA $7ED020,x             ; |
CODE_058752:        AD 23 87      LDA DATA_05871E+5                 ; |
CODE_058755:        9F 21 D0 7E   STA $7ED021,x             ;/
CODE_058759:        C2 20         REP #$20                  ;
CODE_05875B:        4C 5B 80      JMP CODE_05805B           ;

CODE_05875E:        E6 EB         INC $EB                   ;
CODE_058760:        A5 EB         LDA $EB                   ;
CODE_058762:        18            CLC                       ;
CODE_058763:        69 20 00      ADC #$0020                ;
CODE_058766:        AA            TAX                       ;
CODE_058767:        E2 20         SEP #$20                  ;
CODE_058769:        AD 1E 87      LDA DATA_05871E                 ;\
CODE_05876C:        9F 10 D0 7E   STA $7ED010,x             ; |
CODE_058770:        AD 1F 87      LDA DATA_05871E+1                 ; |
CODE_058773:        9F 11 D0 7E   STA $7ED011,x             ; |
CODE_058777:        AD 20 87      LDA DATA_05871E+2                 ; |
CODE_05877A:        9F 20 D0 7E   STA $7ED020,x             ; |
CODE_05877E:        AD 21 87      LDA DATA_05871E+3                 ; |
CODE_058781:        9F 21 D0 7E   STA $7ED021,x             ;/
CODE_058785:        C2 20         REP #$20                  ;
CODE_058787:        4C 5B 80      JMP CODE_05805B           ;

DATA_05878A:        db $00,$00,$00,$00,$1F,$00,$1F,$00 ;
                    db $3D,$00,$3D,$00,$44,$00,$44,$00 ;
                    db $54,$00,$54,$00,$6E,$00,$00,$00 ;
                    db $B3,$00,$B3,$00,$00,$00,$00,$00 ;

DATA_0587AA:        db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$04,$00,$18,$00,$2C,$00 ;
                    db $52,$00,$90,$00 ;

DATA_0587BE:        db $00,$00,$31,$00,$3B,$00,$83,$00 ;
                    db $F5,$00,$4B,$01,$52,$01,$62,$01 ;
                    db $AC,$01,$06,$02,$8D,$02,$D5,$02 ;
                    db $F2,$02,$79,$03,$A0,$03 ;

DATA_0587DC:        db $9A,$00,$A7,$00,$C9,$00,$D0,$00 ;
                    db $DC,$00,$06,$01,$26,$01 ;

CODE_0587EA:        AC DC 87      LDY DATA_0587DC                 ;
CODE_0587ED:        A5 EB         LDA $EB                   ;
CODE_0587EF:        AA            TAX                       ;
CODE_0587F0:        E8            INX                       ;
CODE_0587F1:        E8            INX                       ;
CODE_0587F2:        80 56         BRA CODE_05884A           ;

CODE_0587F4:        AC DE 87      LDY DATA_0587DC+2                 ;
CODE_0587F7:        A5 EB         LDA $EB                   ;
CODE_0587F9:        18            CLC                       ;
CODE_0587FA:        69 12 00      ADC #$0012                ;
CODE_0587FD:        AA            TAX                       ;
CODE_0587FE:        80 4A         BRA CODE_05884A           ;

CODE_058800:        AC E0 87      LDY DATA_0587DC+4                 ;
CODE_058803:        A5 EB         LDA $EB                   ;
CODE_058805:        18            CLC                       ;
CODE_058806:        69 01 00      ADC #$0001                ;
CODE_058809:        AA            TAX                       ;
CODE_05880A:        80 3E         BRA CODE_05884A           ;

CODE_05880C:        AC E2 87      LDY DATA_0587DC+6                 ;
CODE_05880F:        A5 EB         LDA $EB                   ;
CODE_058811:        18            CLC                       ;
CODE_058812:        69 11 00      ADC #$0011                ;
CODE_058815:        AA            TAX                       ;
CODE_058816:        80 32         BRA CODE_05884A           ;

CODE_058818:        AC E4 87      LDY DATA_0587DC+8                 ;
CODE_05881B:        A5 EB         LDA $EB                   ;
CODE_05881D:        18            CLC                       ;
CODE_05881E:        69 20 00      ADC #$0020                ;
CODE_058821:        AA            TAX                       ;
CODE_058822:        80 26         BRA CODE_05884A           ;

CODE_058824:        AC E6 87      LDY DATA_0587DC+10                 ;
CODE_058827:        A6 EB         LDX $EB                   ;
CODE_058829:        E8            INX                       ;
CODE_05882A:        80 1E         BRA CODE_05884A           ;

CODE_05882C:        AC E8 87      LDY DATA_0587DC+12                 ;
CODE_05882F:        A5 EB         LDA $EB                   ;
CODE_058831:        18            CLC                       ;
CODE_058832:        69 12 00      ADC #$0012                ;
CODE_058835:        AA            TAX                       ;
CODE_058836:        80 12         BRA CODE_05884A           ;

CODE_058838:        E6 EB         INC $EB                   ;
CODE_05883A:        A5 EB         LDA $EB                   ;
CODE_05883C:        18            CLC                       ;
CODE_05883D:        69 10 00      ADC #$0010                ;
CODE_058840:        AA            TAX                       ;
CODE_058841:        80 04         BRA CODE_058847           ;

CODE_058843:        E6 EB         INC $EB                   ;
CODE_058845:        A6 EB         LDX $EB                   ;
CODE_058847:        A0 00 00      LDY #$0000                ;
CODE_05884A:        86 E2         STX $E2                   ;
CODE_05884C:        E2 20         SEP #$20                  ;
CODE_05884E:        B9 A5 B1      LDA DATA_05B1A5,y               ;
CODE_058851:        C9 FF         CMP #$FF                  ;
CODE_058853:        F0 71         BEQ CODE_0588C6           ;
CODE_058855:        C9 FE         CMP #$FE                  ;
CODE_058857:        F0 48         BEQ CODE_0588A1           ;
CODE_058859:        20 74 88      JSR CODE_058874           ;
CODE_05885C:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058860:        C8            INY                       ;
CODE_058861:        E8            INX                       ;
CODE_058862:        C2 20         REP #$20                  ;
CODE_058864:        8A            TXA                       ;
CODE_058865:        29 0F 00      AND #$000F                ;
CODE_058868:        D0 06         BNE CODE_058870           ;
CODE_05886A:        8A            TXA                       ;
CODE_05886B:        18            CLC                       ;
CODE_05886C:        69 F0 00      ADC #$00F0                ;
CODE_05886F:        AA            TAX                       ;
CODE_058870:        E2 20         SEP #$20                  ;
CODE_058872:        80 DA         BRA CODE_05884E           ;

CODE_058874:        85 E4         STA $E4                   ;
CODE_058876:        C9 12         CMP #$12                  ;
CODE_058878:        D0 03         BNE CODE_05887D           ;
CODE_05887A:        4C CB 88      JMP CODE_0588CB           ;

CODE_05887D:        C9 03         CMP #$03                  ;
CODE_05887F:        D0 03         BNE CODE_058884           ;
CODE_058881:        4C F8 88      JMP CODE_0588F8           ;

CODE_058884:        C9 04         CMP #$04                  ;
CODE_058886:        D0 03         BNE CODE_05888B           ;
CODE_058888:        4C 05 89      JMP CODE_058905           ;

CODE_05888B:        C9 05         CMP #$05                  ;
CODE_05888D:        D0 03         BNE CODE_058892           ;
CODE_05888F:        4C 1A 89      JMP CODE_05891A           ;

CODE_058892:        C9 18         CMP #$18                  ;
CODE_058894:        D0 03         BNE CODE_058899           ;
CODE_058896:        4C 2F 89      JMP CODE_05892F           ;

CODE_058899:        C9 07         CMP #$07                  ;
CODE_05889B:        D0 03         BNE CODE_0588A0           ;
CODE_05889D:        4C 4C 89      JMP CODE_05894C           ;

CODE_0588A0:        60            RTS                       ;

CODE_0588A1:        C8            INY                       ;
CODE_0588A2:        C2 20         REP #$20                  ;
CODE_0588A4:        A5 E2         LDA $E2                   ;
CODE_0588A6:        18            CLC                       ;
CODE_0588A7:        69 10 00      ADC #$0010                ;
CODE_0588AA:        AA            TAX                       ;
CODE_0588AB:        29 F0 00      AND #$00F0                ;
CODE_0588AE:        F0 16         BEQ CODE_0588C6           ;
CODE_0588B0:        CA            DEX                       ;
CODE_0588B1:        8A            TXA                       ;
CODE_0588B2:        29 0F 00      AND #$000F                ;
CODE_0588B5:        C9 0F 00      CMP #$000F                ;
CODE_0588B8:        D0 06         BNE CODE_0588C0           ;
CODE_0588BA:        8A            TXA                       ;
CODE_0588BB:        38            SEC                       ;
CODE_0588BC:        E9 F0 00      SBC #$00F0                ;
CODE_0588BF:        AA            TAX                       ;
CODE_0588C0:        86 E2         STX $E2                   ;
CODE_0588C2:        E2 20         SEP #$20                  ;
CODE_0588C4:        80 88         BRA CODE_05884E           ;

CODE_0588C6:        C2 20         REP #$20                  ;
CODE_0588C8:        4C 5B 80      JMP CODE_05805B           ;

CODE_0588CB:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0588CF:        F0 24         BEQ CODE_0588F5           ;
CODE_0588D1:        C9 18         CMP #$18                  ;
CODE_0588D3:        D0 04         BNE CODE_0588D9           ;
CODE_0588D5:        A9 02         LDA #$02                  ;
CODE_0588D7:        80 1E         BRA CODE_0588F7           ;

CODE_0588D9:        C9 06         CMP #$06                  ;
CODE_0588DB:        D0 04         BNE CODE_0588E1           ;
CODE_0588DD:        A9 11         LDA #$11                  ;
CODE_0588DF:        80 16         BRA CODE_0588F7           ;

CODE_0588E1:        C9 16         CMP #$16                  ;
CODE_0588E3:        D0 04         BNE CODE_0588E9           ;
CODE_0588E5:        A9 01         LDA #$01                  ;
CODE_0588E7:        80 0E         BRA CODE_0588F7           ;

CODE_0588E9:        C9 05         CMP #$05                  ;
CODE_0588EB:        D0 04         BNE CODE_0588F1           ;
CODE_0588ED:        A9 62         LDA #$62                  ;
CODE_0588EF:        80 06         BRA CODE_0588F7           ;

CODE_0588F1:        A9 10         LDA #$10                  ;
CODE_0588F3:        80 02         BRA CODE_0588F7           ;

CODE_0588F5:        A5 E4         LDA $E4                   ;
CODE_0588F7:        60            RTS                       ;

CODE_0588F8:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_0588FC:        F0 04         BEQ CODE_058902           ;
CODE_0588FE:        A9 36         LDA #$36                  ;
CODE_058900:        80 02         BRA CODE_058904           ;

CODE_058902:        A5 E4         LDA $E4                   ;
CODE_058904:        60            RTS                       ;

CODE_058905:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_058909:        F0 0C         BEQ CODE_058917           ;
CODE_05890B:        C9 12         CMP #$12                  ;
CODE_05890D:        D0 04         BNE CODE_058913           ;
CODE_05890F:        A9 14         LDA #$14                  ;
CODE_058911:        80 06         BRA CODE_058919           ;

CODE_058913:        A9 37         LDA #$37                  ;
CODE_058915:        80 02         BRA CODE_058919           ;

CODE_058917:        A5 E4         LDA $E4                   ;
CODE_058919:        60            RTS                       ;

CODE_05891A:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_05891E:        F0 0C         BEQ CODE_05892C           ;
CODE_058920:        C9 13         CMP #$13                  ;
CODE_058922:        D0 04         BNE CODE_058928           ;
CODE_058924:        A9 15         LDA #$15                  ;
CODE_058926:        80 06         BRA CODE_05892E           ;

CODE_058928:        A9 38         LDA #$38                  ;
CODE_05892A:        80 02         BRA CODE_05892E           ;

CODE_05892C:        A5 E4         LDA $E4                   ;
CODE_05892E:        60            RTS                       ;

CODE_05892F:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_058933:        F0 14         BEQ CODE_058949           ;
CODE_058935:        C9 16         CMP #$16                  ;
CODE_058937:        D0 04         BNE CODE_05893D           ;
CODE_058939:        A9 1E         LDA #$1E                  ;
CODE_05893B:        80 0E         BRA CODE_05894B           ;

CODE_05893D:        C9 13         CMP #$13                  ;
CODE_05893F:        D0 04         BNE CODE_058945           ;
CODE_058941:        A9 1E         LDA #$1E                  ;
CODE_058943:        80 06         BRA CODE_05894B           ;

CODE_058945:        A9 1D         LDA #$1D                  ;
CODE_058947:        80 02         BRA CODE_05894B           ;

CODE_058949:        A5 E4         LDA $E4                   ;
CODE_05894B:        60            RTS                       ;

CODE_05894C:        BF 00 D0 7E   LDA $7ED000,x             ;
CODE_058950:        F0 1C         BEQ CODE_05896E           ;
CODE_058952:        C9 16         CMP #$16                  ;
CODE_058954:        D0 04         BNE CODE_05895A           ;
CODE_058956:        A9 0E         LDA #$0E                  ;
CODE_058958:        80 16         BRA CODE_058970           ;

CODE_05895A:        C9 04         CMP #$04                  ;
CODE_05895C:        D0 04         BNE CODE_058962           ;
CODE_05895E:        A9 70         LDA #$70                  ;
CODE_058960:        80 0E         BRA CODE_058970           ;

CODE_058962:        C9 0B         CMP #$0B                  ;
CODE_058964:        D0 04         BNE CODE_05896A           ;
CODE_058966:        A9 90         LDA #$90                  ;
CODE_058968:        80 06         BRA CODE_058970           ;

CODE_05896A:        A9 49         LDA #$49                  ;
CODE_05896C:        80 02         BRA CODE_058970           ;

CODE_05896E:        A5 E4         LDA $E4                   ;
CODE_058970:        60            RTS                       ;

DATA_058971:        db $00,$00,$90,$91,$92,$93,$00,$00
                    db $94,$95,$96,$97,$00,$00,$98,$99
                    db $9A,$9B,$00,$9C,$9D,$9E,$9F,$A0
                    db $00,$A1,$A2,$A3,$A4,$A5,$00,$A6
                    db $A7,$A8,$A9,$AA

CODE_058995:        E2 20         SEP #$20                  ;
CODE_058997:        A6 EB         LDX $EB                   ;
CODE_058999:        A0 00 00      LDY #$0000                ;
CODE_05899C:        B9 71 89      LDA DATA_058971,y               ;
CODE_05899F:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0589A3:        B9 72 89      LDA DATA_058971+1,y               ;
CODE_0589A6:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0589AA:        B9 73 89      LDA DATA_058971+2,y               ;
CODE_0589AD:        9F 22 D0 7E   STA $7ED022,x             ;
CODE_0589B1:        B9 74 89      LDA DATA_058971+3,y               ;
CODE_0589B4:        9F 23 D0 7E   STA $7ED023,x             ;
CODE_0589B8:        B9 75 89      LDA DATA_058971+4,y               ;
CODE_0589BB:        9F 24 D0 7E   STA $7ED024,x             ;
CODE_0589BF:        B9 76 89      LDA DATA_058971+5,y               ;
CODE_0589C2:        9F 25 D0 7E   STA $7ED025,x             ;
CODE_0589C6:        C2 20         REP #$20                  ;
CODE_0589C8:        8A            TXA                       ;
CODE_0589C9:        18            CLC                       ;
CODE_0589CA:        69 10 00      ADC #$0010                ;
CODE_0589CD:        AA            TAX                       ;
CODE_0589CE:        E2 20         SEP #$20                  ;
CODE_0589D0:        C8            INY                       ;
CODE_0589D1:        C8            INY                       ;
CODE_0589D2:        C8            INY                       ;
CODE_0589D3:        C8            INY                       ;
CODE_0589D4:        C8            INY                       ;
CODE_0589D5:        C8            INY                       ;
CODE_0589D6:        C0 24 00      CPY #$0024                ;
CODE_0589D9:        D0 C1         BNE CODE_05899C           ;
CODE_0589DB:        C2 20         REP #$20                  ;
CODE_0589DD:        4C 5B 80      JMP CODE_05805B           ;

CODE_0589E0:        A6 EB         LDX $EB                   ;
CODE_0589E2:        E2 20         SEP #$20                  ;
CODE_0589E4:        A9 09         LDA #$09                  ;
CODE_0589E6:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_0589EA:        A9 0B         LDA #$0B                  ;
CODE_0589EC:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_0589F0:        E8            INX                       ;
CODE_0589F1:        E8            INX                       ;
CODE_0589F2:        C6 F1         DEC $F1                   ;
CODE_0589F4:        A5 F1         LDA $F1                   ;
CODE_0589F6:        10 EC         BPL CODE_0589E4           ;
CODE_0589F8:        C2 20         REP #$20                  ;
CODE_0589FA:        4C 5B 80      JMP CODE_05805B           ;

CODE_0589FD:        A6 EB         LDX $EB                   ;
CODE_0589FF:        E2 20         SEP #$20                  ;
CODE_058A01:        BF 20 D0 7E   LDA $7ED020,x             ;
CODE_058A05:        C9 09         CMP #$09                  ;
CODE_058A07:        D0 04         BNE CODE_058A0D           ;
CODE_058A09:        A9 0A         LDA #$0A                  ;
CODE_058A0B:        80 02         BRA CODE_058A0F           ;

CODE_058A0D:        A9 04         LDA #$04                  ;
CODE_058A0F:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058A13:        A9 01         LDA #$01                  ;
CODE_058A15:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058A19:        C2 20         REP #$20                  ;
CODE_058A1B:        8A            TXA                       ;
CODE_058A1C:        18            CLC                       ;
CODE_058A1D:        69 20 00      ADC #$0020                ;
CODE_058A20:        AA            TAX                       ;
CODE_058A21:        E2 20         SEP #$20                  ;
CODE_058A23:        C6 F1         DEC $F1                   ;
CODE_058A25:        A5 F1         LDA $F1                   ;
CODE_058A27:        10 D8         BPL CODE_058A01           ;
CODE_058A29:        C2 20         REP #$20                  ;
CODE_058A2B:        4C 5B 80      JMP CODE_05805B           ;

CODE_058A2E:        A6 EB         LDX $EB                   ;
CODE_058A30:        E2 20         SEP #$20                  ;
CODE_058A32:        BF 21 D0 7E   LDA $7ED021,x             ;
CODE_058A36:        C9 0B         CMP #$0B                  ;
CODE_058A38:        D0 04         BNE CODE_058A3E           ;
CODE_058A3A:        A9 0A         LDA #$0A                  ;
CODE_058A3C:        80 02         BRA CODE_058A40           ;

CODE_058A3E:        A9 04         LDA #$04                  ;
CODE_058A40:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058A44:        A9 01         LDA #$01                  ;
CODE_058A46:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_058A4A:        C2 20         REP #$20                  ;
CODE_058A4C:        8A            TXA                       ;
CODE_058A4D:        18            CLC                       ;
CODE_058A4E:        69 20 00      ADC #$0020                ;
CODE_058A51:        AA            TAX                       ;
CODE_058A52:        E2 20         SEP #$20                  ;
CODE_058A54:        C6 F1         DEC $F1                   ;
CODE_058A56:        A5 F1         LDA $F1                   ;
CODE_058A58:        10 D8         BPL CODE_058A32           ;
CODE_058A5A:        C2 20         REP #$20                  ;
CODE_058A5C:        4C 5B 80      JMP CODE_05805B           ;

DATA_058A5F:        db $7A,$7B,$61,$62

DATA_058A63:        db $8C,$8D,$90,$91,$92

CODE_058A68:        A6 EB         LDX $EB                   ;
CODE_058A6A:        A9 06 00      LDA #$0006                ;
CODE_058A6D:        85 F1         STA $F1                   ;
CODE_058A6F:        E2 20         SEP #$20                  ;
CODE_058A71:        AD 5F 8A      LDA DATA_058A5F                 ;
CODE_058A74:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058A78:        AD 60 8A      LDA DATA_058A5F+1                 ;
CODE_058A7B:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058A7F:        AD 61 8A      LDA DATA_058A5F+2                 ;
CODE_058A82:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058A86:        AD 62 8A      LDA DATA_058A5F+3                 ;
CODE_058A89:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_058A8D:        C2 20         REP #$20                  ;
CODE_058A8F:        8A            TXA                       ;
CODE_058A90:        18            CLC                       ;
CODE_058A91:        69 10 00      ADC #$0010                ;
CODE_058A94:        AA            TAX                       ;
CODE_058A95:        E2 20         SEP #$20                  ;
CODE_058A97:        C6 F1         DEC $F1                   ;
CODE_058A99:        A5 F1         LDA $F1                   ;
CODE_058A9B:        D0 E2         BNE CODE_058A7F           ;
CODE_058A9D:        AD 63 8A      LDA DATA_058A63                 ;
CODE_058AA0:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058AA4:        AD 64 8A      LDA DATA_058A63+1                 ;
CODE_058AA7:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_058AAB:        AD 65 8A      LDA DATA_058A63+2                 ;
CODE_058AAE:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_058AB2:        AD 66 8A      LDA DATA_058A63+3                 ;
CODE_058AB5:        9F 41 D0 7E   STA $7ED041,x             ;
CODE_058AB9:        AD 67 8A      LDA DATA_058A63+4                 ;
CODE_058ABC:        9F 42 D0 7E   STA $7ED042,x             ;
CODE_058AC0:        C2 20         REP #$20                  ;
CODE_058AC2:        4C 5B 80      JMP CODE_05805B           ;

DATA_058AC5:        db $70,$71,$72,$73,$74,$75,$76,$77
                    db $78,$79,$7A,$7B,$00,$7C,$7D,$00

CODE_058AD5:        A6 EB         LDX $EB                   ;
CODE_058AD7:        E8            INX                       ;
CODE_058AD8:        E2 20         SEP #$20                  ;
CODE_058ADA:        64 E5         STZ $E5                   ;
CODE_058ADC:        A0 00 00      LDY #$0000                ;
CODE_058ADF:        B9 C5 8A      LDA DATA_058AC5,y               ;
CODE_058AE2:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058AE6:        B9 C6 8A      LDA DATA_058AC5+1,y               ;
CODE_058AE9:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_058AED:        B9 C7 8A      LDA DATA_058AC5+2,y               ;
CODE_058AF0:        9F 02 D0 7E   STA $7ED002,x             ;
CODE_058AF4:        B9 C8 8A      LDA DATA_058AC5+3,y               ;
CODE_058AF7:        9F 03 D0 7E   STA $7ED003,x             ;
CODE_058AFB:        C8            INY                       ;
CODE_058AFC:        C8            INY                       ;
CODE_058AFD:        C8            INY                       ;
CODE_058AFE:        C8            INY                       ;
CODE_058AFF:        E8            INX                       ;
CODE_058B00:        E8            INX                       ;
CODE_058B01:        E8            INX                       ;
CODE_058B02:        E8            INX                       ;
CODE_058B03:        C2 20         REP #$20                  ;
CODE_058B05:        8A            TXA                       ;
CODE_058B06:        18            CLC                       ;
CODE_058B07:        69 0C 00      ADC #$000C                ;
CODE_058B0A:        AA            TAX                       ;
CODE_058B0B:        E2 20         SEP #$20                  ;
CODE_058B0D:        E6 E5         INC $E5                   ;
CODE_058B0F:        A5 E5         LDA $E5                   ;
CODE_058B11:        C9 04         CMP #$04                  ;
CODE_058B13:        D0 CA         BNE CODE_058ADF           ;
CODE_058B15:        C2 20         REP #$20                  ;
CODE_058B17:        4C 5B 80      JMP CODE_05805B           ;

DATA_058B1A:        db $2F,$30,$31,$32,$35,$36,$3A,$3B


CODE_058B22:        E2 20         SEP #$20                  ;
CODE_058B24:        A0 00 00      LDY #$0000                ;
CODE_058B27:        A6 EB         LDX $EB                   ;
CODE_058B29:        B9 1A 8B      LDA DATA_058B1A,y               ;
CODE_058B2C:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058B30:        B9 1B 8B      LDA DATA_058B1A+1,y               ;
CODE_058B33:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058B37:        C2 20         REP #$20                  ;
CODE_058B39:        8A            TXA                       ;
CODE_058B3A:        18            CLC                       ;
CODE_058B3B:        69 10 00      ADC #$0010                ;
CODE_058B3E:        AA            TAX                       ;
CODE_058B3F:        E2 20         SEP #$20                  ;
CODE_058B41:        C8            INY                       ;
CODE_058B42:        C8            INY                       ;
CODE_058B43:        C0 08 00      CPY #$0008                ;
CODE_058B46:        D0 E1         BNE CODE_058B29           ;
CODE_058B48:        C2 20         REP #$20                  ;
CODE_058B4A:        4C 5B 80      JMP CODE_05805B           ;

DATA_058B4D:        db $01,$1F,$02,$20

CODE_058B51:        E2 20         SEP #$20                  ;
CODE_058B53:        A6 EB         LDX $EB                   ;
CODE_058B55:        A4 EF         LDY $EF                   ;
CODE_058B57:        B9 4D 8B      LDA DATA_058B4D,y               ;
CODE_058B5A:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058B5E:        B9 4F 8B      LDA DATA_058B4D+2,y               ;
CODE_058B61:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058B65:        C2 20         REP #$20                  ;
CODE_058B67:        8A            TXA                       ;
CODE_058B68:        18            CLC                       ;
CODE_058B69:        69 10 00      ADC #$0010                ;
CODE_058B6C:        AA            TAX                       ;
CODE_058B6D:        E2 20         SEP #$20                  ;
CODE_058B6F:        C6 F1         DEC $F1                   ;
CODE_058B71:        A5 F1         LDA $F1                   ;
CODE_058B73:        10 E2         BPL CODE_058B57           ;
CODE_058B75:        C2 20         REP #$20                  ;
CODE_058B77:        4C 5B 80      JMP CODE_05805B           ;

DATA_058B7A:        db $08,$09,$05,$06,$07,$05,$03,$04
                    db $05,$0F,$10,$11,$16,$17,$12,$1D
                    db $09,$1E,$06,$07,$05

CODE_058B8F:        E2 20         SEP #$20        
CODE_058B91:        A6 EB         LDX $EB                   ;
CODE_058B93:        8A            TXA                       ;
CODE_058B94:        29 F0         AND #$F0                  ;
CODE_058B96:        F0 1F         BEQ CODE_058BB7           ;
CODE_058B98:        BF 20 D0 7E   LDA $7ED020,x             ;
CODE_058B9C:        C9 0C         CMP #$0C                  ;
CODE_058B9E:        F0 43         BEQ CODE_058BE3           ;
CODE_058BA0:        AD 7A 8B      LDA DATA_058B7A           ;
CODE_058BA3:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058BA7:        AD 7B 8B      LDA DATA_058B7A+1         ;
CODE_058BAA:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058BAE:        AD 7C 8B      LDA DATA_058B7A+2         ;
CODE_058BB1:        9F 22 D0 7E   STA $7ED022,x             ;
CODE_058BB5:        80 15         BRA CODE_058BCC           ;

CODE_058BB7:        AD 80 8B      LDA DATA_058B7A+6         ;
CODE_058BBA:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058BBE:        AD 81 8B      LDA DATA_058B7A+7         ;
CODE_058BC1:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058BC5:        AD 82 8B      LDA DATA_058B7A+8         ;
CODE_058BC8:        9F 22 D0 7E   STA $7ED022,x             ;
CODE_058BCC:        AD 7D 8B      LDA DATA_058B7A+3         ;
CODE_058BCF:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058BD3:        AD 7E 8B      LDA DATA_058B7A+4         ;
CODE_058BD6:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_058BDA:        AD 7F 8B      LDA DATA_058B7A+5         ;
CODE_058BDD:        9F 32 D0 7E   STA $7ED032,x             ;
CODE_058BE1:        80 60         BRA CODE_058C43           ;

CODE_058BE3:        AD 83 8B      LDA DATA_058B7A+9                 ;
CODE_058BE6:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058BEA:        AD 84 8B      LDA DATA_058B7A+10                 ;
CODE_058BED:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058BF1:        AD 85 8B      LDA DATA_058B7A+11                 ;
CODE_058BF4:        9F 22 D0 7E   STA $7ED022,x             ;
CODE_058BF8:        AD 86 8B      LDA DATA_058B7A+12                 ;
CODE_058BFB:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058BFF:        AD 87 8B      LDA DATA_058B7A+13                 ;
CODE_058C02:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_058C06:        AD 88 8B      LDA DATA_058B7A+14                 ;
CODE_058C09:        9F 32 D0 7E   STA $7ED032,x             ;
CODE_058C0D:        AD 89 8B      LDA DATA_058B7A+15                 ;
CODE_058C10:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_058C14:        AD 8A 8B      LDA DATA_058B7A+16                 ;
CODE_058C17:        9F 41 D0 7E   STA $7ED041,x             ;
CODE_058C1B:        AD 8B 8B      LDA DATA_058B7A+17                 ;
CODE_058C1E:        9F 42 D0 7E   STA $7ED042,x             ;
CODE_058C22:        AD 8C 8B      LDA DATA_058B7A+18                 ;
CODE_058C25:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_058C29:        AD 8D 8B      LDA DATA_058B7A+19                 ;
CODE_058C2C:        9F 51 D0 7E   STA $7ED051,x             ;
CODE_058C30:        AD 8E 8B      LDA DATA_058B7A+20                 ;
CODE_058C33:        9F 52 D0 7E   STA $7ED052,x             ;
CODE_058C37:        C2 20         REP #$20                  ;
CODE_058C39:        8A            TXA                       ;
CODE_058C3A:        18            CLC                       ;
CODE_058C3B:        69 20 00      ADC #$0020                ;
CODE_058C3E:        AA            TAX                       ;
CODE_058C3F:        E2 20         SEP #$20                  ;
CODE_058C41:        C6 F1         DEC $F1                   ;
CODE_058C43:        C2 20         REP #$20                  ;
CODE_058C45:        8A            TXA                       ;
CODE_058C46:        18            CLC                       ;
CODE_058C47:        69 20 00      ADC #$0020                ;
CODE_058C4A:        AA            TAX                       ;
CODE_058C4B:        E2 20         SEP #$20                  ;
CODE_058C4D:        C6 F1         DEC $F1                   ;
CODE_058C4F:        A5 F1         LDA $F1                   ;
CODE_058C51:        30 03         BMI CODE_058C56           ;
CODE_058C53:        4C 93 8B      JMP CODE_058B93           ;

CODE_058C56:        C2 20         REP #$20                  ;
CODE_058C58:        4C 5B 80      JMP CODE_05805B           ;

DATA_058C5B:        db $0C,$18,$19,$0A,$0B,$0D,$0E,$13
                    db $14,$1A,$1B

CODE_058C66:        E2 20         SEP #$20                  ;
CODE_058C68:        A6 EB         LDX $EB                   ;
CODE_058C6A:        BF 20 D0 7E   LDA $7ED020,x             ;
CODE_058C6E:        C9 1F         CMP #$1F                  ;
CODE_058C70:        D0 3D         BNE CODE_058CAF           ;
CODE_058C72:        AD 5E 8C      LDA DATA_058C5B+3                 ;
CODE_058C75:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058C79:        AD 5F 8C      LDA DATA_058C5B+4                 ;
CODE_058C7C:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_058C80:        AD 60 8C      LDA DATA_058C5B+5                 ;
CODE_058C83:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058C87:        AD 61 8C      LDA DATA_058C5B+6                 ;
CODE_058C8A:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058C8E:        AD 62 8C      LDA DATA_058C5B+7                 ;
CODE_058C91:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058C95:        AD 63 8C      LDA DATA_058C5B+8                 ;
CODE_058C98:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_058C9C:        AD 64 8C      LDA DATA_058C5B+9                 ;
CODE_058C9F:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_058CA3:        AD 65 8C      LDA DATA_058C5B+10                 ;
CODE_058CA6:        9F 41 D0 7E   STA $7ED041,x             ;
CODE_058CAA:        E8            INX                       ;
CODE_058CAB:        C6 F1         DEC $F1                   ;
CODE_058CAD:        80 15         BRA CODE_058CC4           ;

CODE_058CAF:        AD 5B 8C      LDA DATA_058C5B                 ;
CODE_058CB2:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058CB6:        AD 5C 8C      LDA DATA_058C5B+1                 ;
CODE_058CB9:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058CBD:        AD 5D 8C      LDA DATA_058C5B+2                 ;
CODE_058CC0:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_058CC4:        E8            INX                       ;
CODE_058CC5:        C6 F1         DEC $F1                   ;
CODE_058CC7:        A5 F1         LDA $F1                   ;
CODE_058CC9:        10 9F         BPL CODE_058C6A           ;
CODE_058CCB:        C2 20         REP #$20                  ;
CODE_058CCD:        4C 5B 80      JMP CODE_05805B           ;

DATA_058CD0:        db $33,$34,$0D,$37,$13,$3C,$1A,$1B

DATA_058CD8:        db $33,$34,$38,$39,$3D,$3E,$40,$1B

CODE_058CE0:        A6 EB         LDX $EB                   ;
CODE_058CE2:        E2 20         SEP #$20                  ;
CODE_058CE4:        BF 20 D0 7E   LDA $7ED020,x             ;
CODE_058CE8:        C9 0C         CMP #$0C                  ;
CODE_058CEA:        F0 3A         BEQ CODE_058D26           ;
CODE_058CEC:        AD D8 8C      LDA DATA_058CD8                 ;
CODE_058CEF:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058CF3:        AD D9 8C      LDA DATA_058CD8+1                 ;
CODE_058CF6:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_058CFA:        AD DA 8C      LDA DATA_058CD8+2                 ;
CODE_058CFD:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058D01:        AD DB 8C      LDA DATA_058CD8+3                 ;
CODE_058D04:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058D08:        AD DC 8C      LDA DATA_058CD8+4                 ;
CODE_058D0B:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058D0F:        AD DD 8C      LDA DATA_058CD8+5                 ;
CODE_058D12:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_058D16:        AD DE 8C      LDA DATA_058CD8+6                 ;
CODE_058D19:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_058D1D:        AD DF 8C      LDA DATA_058CD8+7                 ;
CODE_058D20:        9F 41 D0 7E   STA $7ED041,x             ;
CODE_058D24:        80 38         BRA CODE_058D5E           ;

CODE_058D26:        AD D0 8C      LDA DATA_058CD0                 ;
CODE_058D29:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058D2D:        AD D1 8C      LDA DATA_058CD0+1                 ;
CODE_058D30:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_058D34:        AD D2 8C      LDA DATA_058CD0+2                 ;
CODE_058D37:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058D3B:        AD D3 8C      LDA DATA_058CD0+3                 ;
CODE_058D3E:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058D42:        AD D4 8C      LDA DATA_058CD0+4                 ;
CODE_058D45:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058D49:        AD D5 8C      LDA DATA_058CD0+5                 ;
CODE_058D4C:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_058D50:        AD D6 8C      LDA DATA_058CD0+6                 ;
CODE_058D53:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_058D57:        AD D7 8C      LDA DATA_058CD0+7                 ;
CODE_058D5A:        9F 41 D0 7E   STA $7ED041,x             ;
CODE_058D5E:        C2 20         REP #$20                  ;
CODE_058D60:        C6 F1         DEC $F1                   ;
CODE_058D62:        C6 F1         DEC $F1                   ;
CODE_058D64:        C6 F1         DEC $F1                   ;
CODE_058D66:        A5 EB         LDA $EB                   ;
CODE_058D68:        18            CLC                       ;
CODE_058D69:        69 30 00      ADC #$0030                ;
CODE_058D6C:        85 EB         STA $EB                   ;
CODE_058D6E:        A9 01 00      LDA #$0001                ;
CODE_058D71:        85 EF         STA $EF                   ;
CODE_058D73:        4C 51 8B      JMP CODE_058B51           ;

DATA_058D76:        db $41,$42,$43,$44,$45,$46,$47,$48
                    db $49,$4A,$4B,$4C,$4D,$4E,$4F,$50
                    db $51,$52,$53,$54

CODE_058D8A:        E2 20         SEP #$20                  ;
CODE_058D8C:        A6 EB         LDX $EB                   ;
CODE_058D8E:        A0 00 00      LDY #$0000                ;
CODE_058D91:        B9 76 8D      LDA DATA_058D76,y               ;
CODE_058D94:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058D98:        B9 77 8D      LDA DATA_058D76+1,y               ;
CODE_058D9B:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058D9F:        B9 78 8D      LDA DATA_058D76+2,y               ;
CODE_058DA2:        9F 22 D0 7E   STA $7ED022,x             ;
CODE_058DA6:        B9 79 8D      LDA DATA_058D76+3,y               ;
CODE_058DA9:        9F 23 D0 7E   STA $7ED023,x             ;
CODE_058DAD:        C2 20         REP #$20                  ;
CODE_058DAF:        8A            TXA                       ;
CODE_058DB0:        18            CLC                       ;
CODE_058DB1:        69 10 00      ADC #$0010                ;
CODE_058DB4:        AA            TAX                       ;
CODE_058DB5:        E2 20         SEP #$20                  ;
CODE_058DB7:        C8            INY                       ;
CODE_058DB8:        C8            INY                       ;
CODE_058DB9:        C8            INY                       ;
CODE_058DBA:        C8            INY                       ;
CODE_058DBB:        C0 14 00      CPY #$0014                ;
CODE_058DBE:        D0 D1         BNE CODE_058D91           ;
CODE_058DC0:        C2 20         REP #$20                  ;
CODE_058DC2:        4C 5B 80      JMP CODE_05805B           ;

CODE_058DC5:        A6 EB         LDX $EB                   ;
CODE_058DC7:        A9 1A 1B      LDA #$1B1A                ;
CODE_058DCA:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058DCE:        4C 5B 80      JMP CODE_05805B           ;

CODE_058DD1:        E6 EB         INC $EB                   ;
CODE_058DD3:        A5 EB         LDA $EB                   ;
CODE_058DD5:        18            CLC                       ;
CODE_058DD6:        69 10 00      ADC #$0010                ;
CODE_058DD9:        AA            TAX                       ;
CODE_058DDA:        E2 20         SEP #$20                  ;
CODE_058DDC:        A9 67         LDA #$67                  ;
CODE_058DDE:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058DE2:        A9 69         LDA #$69                  ;
CODE_058DE4:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_058DE8:        A9 68         LDA #$68                  ;
CODE_058DEA:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058DEE:        A9 6A         LDA #$6A                  ;
CODE_058DF0:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_058DF4:        C2 20         REP #$20                  ;
CODE_058DF6:        4C 5B 80      JMP CODE_05805B           ;

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

CODE_058E85:        A5 5C         LDA $5C                   ;
CODE_058E87:        29 FF 00      AND #$00FF                ;
CODE_058E8A:        0A            ASL A                     ;
CODE_058E8B:        AA            TAX                       ;
CODE_058E8C:        A9 00 05      LDA #$0500                ;
CODE_058E8F:        85 D9         STA $D9                   ;
CODE_058E91:        BD F9 8D      LDA DATA_058DF9,x               ;
CODE_058E94:        85 D8         STA $D8                   ;
CODE_058E96:        A5 5C         LDA $5C                   ;
CODE_058E98:        29 FF 00      AND #$00FF                ;
CODE_058E9B:        C9 02 00      CMP #$0002                ;
CODE_058E9E:        B0 09         BCS CODE_058EA9           ;
CODE_058EA0:        A5 EB         LDA $EB                   ;
CODE_058EA2:        18            CLC                       ;
CODE_058EA3:        69 10 00      ADC #$0010                ;
CODE_058EA6:        AA            TAX                       ;
CODE_058EA7:        80 02         BRA CODE_058EAB           ;

CODE_058EA9:        A6 EB         LDX $EB                   ;
CODE_058EAB:        A5 EF         LDA $EF                   ;
CODE_058EAD:        38            SEC                       ;
CODE_058EAE:        E9 10 00      SBC #$0010                ;
CODE_058EB1:        0A            ASL A                     ;
CODE_058EB2:        0A            ASL A                     ;
CODE_058EB3:        A8            TAY                       ;
CODE_058EB4:        E2 20         SEP #$20                  ;
CODE_058EB6:        B7 D8         LDA [$D8],y               ;
CODE_058EB8:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058EBC:        C8            INY                       ;
CODE_058EBD:        B7 D8         LDA [$D8],y               ;
CODE_058EBF:        9F 21 D0 7E   STA $7ED021,x             ;
CODE_058EC3:        C8            INY                       ;
CODE_058EC4:        B7 D8         LDA [$D8],y               ;
CODE_058EC6:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058ECA:        C8            INY                       ;
CODE_058ECB:        B7 D8         LDA [$D8],y               ;
CODE_058ECD:        9F 31 D0 7E   STA $7ED031,x             ;
CODE_058ED1:        C2 20         REP #$20                  ;
CODE_058ED3:        E8            INX                       ;
CODE_058ED4:        E8            INX                       ;
CODE_058ED5:        C6 F1         DEC $F1                   ;
CODE_058ED7:        A5 F1         LDA $F1                   ;
CODE_058ED9:        10 D0         BPL CODE_058EAB           ;
CODE_058EDB:        60            RTS                       ;

CODE_058EDC:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058EE0:        9F 00 D1 7E   STA $7ED100,x             ;
CODE_058EE4:        9F 00 D2 7E   STA $7ED200,x             ;
CODE_058EE8:        9F 00 D3 7E   STA $7ED300,x             ;
CODE_058EEC:        9F 00 D4 7E   STA $7ED400,x             ;
CODE_058EF0:        9F 00 D5 7E   STA $7ED500,x             ;
CODE_058EF4:        9F 00 D6 7E   STA $7ED600,x             ;
CODE_058EF8:        9F 00 D7 7E   STA $7ED700,x             ;
CODE_058EFC:        9F 00 D8 7E   STA $7ED800,x             ;
CODE_058F00:        9F 00 D9 7E   STA $7ED900,x             ;
CODE_058F04:        9F 00 DA 7E   STA $7EDA00,x             ;
CODE_058F08:        9F 00 DB 7E   STA $7EDB00,x             ;
CODE_058F0C:        9F 00 DC 7E   STA $7EDC00,x             ;
CODE_058F10:        9F 00 DD 7E   STA $7EDD00,x             ;
CODE_058F14:        9F 00 DE 7E   STA $7EDE00,x             ;
CODE_058F18:        60            RTS                       ;

CODE_058F19:        A5 EF         LDA $EF                   ;
CODE_058F1B:        0A            ASL A                     ;
CODE_058F1C:        AA            TAX                       ;
CODE_058F1D:        BD 25 8F      LDA PNTR_058F25,x         ;
CODE_058F20:        85 00         STA $00                   ;
CODE_058F22:        6C 00 00      JMP ($0000)               ;

;Pointers to various background-generation commands and HDMA routines
PNTR_058F25:        dw CODE_0590B6                          ;$00 - Increase BG2 map16 tilemap's latest written page number by 1
                    dw CODE_0590BA                          ;$01 - Handle HDMA gradient. Underwater levels use below value, instead.
                    dw CODE_0590D2                          ;$02 - Enable underwater HDMA gradient
                    dw CODE_0590E9                          ;$03 - 
                    dw CODE_05910D                          ;$04 - 
                    dw CODE_059099                          ;$05 - Related to background map16 tilemap generation
                    dw CODE_05905F                          ;$06 - Fill background with repetitive rock pattern of cave background
                    dw CODE_05903D                          ;$07 - Fill top 3 rows with blank tiles for underwater levels
                    dw CODE_059004                          ;$08 - Generate the rocks of the waterfall background
                    dw CODE_058FFA                          ;$09 - Enable Layer 3 image processing
                    dw CODE_058F97                          ;$0A - Generate the waterfall of the waterfall background
                    dw CODE_059116                          ;$0B - Load tilemap-specific graphics?
                    dw CODE_058F6F                          ;$0C - Generate Goomba pillar background's sand

DATA_058F3F:        db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F
                    db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F
                    db $13,$14,$15,$16,$13,$14,$15,$16
                    db $13,$14,$15,$16,$13,$14,$15,$16
                    db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A
                    db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A

CODE_058F6F:        A2 D0 00      LDX #$00D0                ;
CODE_058F72:        A0 00 00      LDY #$0000                ;
CODE_058F75:        E2 20         SEP #$20                  ;
CODE_058F77:        B9 3F 8F      LDA DATA_058F3F,y               ;
CODE_058F7A:        20 DC 8E      JSR CODE_058EDC           ;
CODE_058F7D:        E8            INX                       ;
CODE_058F7E:        C8            INY                       ;
CODE_058F7F:        C0 30 00      CPY #$0030                ;
CODE_058F82:        D0 F3         BNE CODE_058F77           ;
CODE_058F84:        C2 20         REP #$20                  ;
CODE_058F86:        60            RTS                       ;

DATA_058F87:        db $01,$02,$03,$07,$01,$02,$03,$07
                    db $01,$02,$03,$07,$01,$02,$03,$07

CODE_058F97:        64 E4         STZ $E4                   ;
CODE_058F99:        A5 E4         LDA $E4                   ;
CODE_058F9B:        29 FF 00      AND #$00FF                ;
CODE_058F9E:        EB            XBA                       ;
CODE_058F9F:        18            CLC                       ;
CODE_058FA0:        69 A0 00      ADC #$00A0                ;
CODE_058FA3:        AA            TAX                       ;
CODE_058FA4:        A0 00 00      LDY #$0000                ;
CODE_058FA7:        E2 20         SEP #$20                  ;
CODE_058FA9:        B9 87 8F      LDA DATA_058F87,y               ;
CODE_058FAC:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_058FB0:        8A            TXA                       ;
CODE_058FB1:        29 01         AND #$01                  ;
CODE_058FB3:        D0 1A         BNE CODE_058FCF           ;
CODE_058FB5:        A9 0C         LDA #$0C                  ;
CODE_058FB7:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058FBB:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058FBF:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_058FC3:        A9 10         LDA #$10                  ;
CODE_058FC5:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058FC9:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_058FCD:        80 18         BRA CODE_058FE7           ;

CODE_058FCF:        A9 0D         LDA #$0D                  ;
CODE_058FD1:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_058FD5:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_058FD9:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_058FDD:        A9 11         LDA #$11                  ;
CODE_058FDF:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_058FE3:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_058FE7:        E8            INX                       ;
CODE_058FE8:        C8            INY                       ;
CODE_058FE9:        98            TYA                       ;
CODE_058FEA:        29 0F         AND #$0F                  ;
CODE_058FEC:        D0 BB         BNE CODE_058FA9           ;
CODE_058FEE:        C2 20         REP #$20                  ;
CODE_058FF0:        E6 E4         INC $E4                   ;
CODE_058FF2:        A5 E4         LDA $E4                   ;
CODE_058FF4:        C9 06 00      CMP #$0006                ;
CODE_058FF7:        D0 A0         BNE CODE_058F99           ;
CODE_058FF9:        60            RTS                       ;

CODE_058FFA:        E2 20         SEP #$20                  ;
CODE_058FFC:        A5 F1         LDA $F1                   ;\
CODE_058FFE:        8D DC 0E      STA $0EDC                 ;/ Process layer 3 image display flag
CODE_059001:        C2 20         REP #$20                  ;
CODE_059003:        60            RTS                       ;

CODE_059004:        A2 80 00      LDX #$0080                ;
CODE_059007:        A9 03 04      LDA #$0403                ;
CODE_05900A:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_05900E:        A9 09 09      LDA #$0909                ;
CODE_059011:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_059015:        9F 20 D0 7E   STA $7ED020,x             ;
CODE_059019:        9F 30 D0 7E   STA $7ED030,x             ;
CODE_05901D:        9F 40 D0 7E   STA $7ED040,x             ;
CODE_059021:        9F 50 D0 7E   STA $7ED050,x             ;
CODE_059025:        9F 60 D0 7E   STA $7ED060,x             ;
CODE_059029:        E8            INX                       ;
CODE_05902A:        E8            INX                       ;
CODE_05902B:        8A            TXA                       ;
CODE_05902C:        29 0F 00      AND #$000F                ;
CODE_05902F:        D0 D6         BNE CODE_059007           ;
CODE_059031:        8A            TXA                       ;
CODE_059032:        18            CLC                       ;
CODE_059033:        69 F0 00      ADC #$00F0                ;
CODE_059036:        AA            TAX                       ;
CODE_059037:        E0 00 10      CPX #$1000                ;
CODE_05903A:        90 CB         BCC CODE_059007           ;
CODE_05903C:        60            RTS                       ;

;Part of underwater background generation routine
CODE_05903D:        A2 00 00      LDX #$0000                ;\
CODE_059040:        A9 02 02      LDA #$0202                ; |
CODE_059043:        20 DC 8E      JSR CODE_058EDC           ; |
CODE_059046:        E8            INX                       ; | Fill the top 2 rows with blank tiles
CODE_059047:        E8            INX                       ; |
CODE_059048:        E0 20 00      CPX #$0020                ; |
CODE_05904B:        D0 F6         BNE CODE_059043           ;/
CODE_05904D:        A9 01 01      LDA #$0101                ;\
CODE_059050:        20 DC 8E      JSR CODE_058EDC           ; |
CODE_059053:        E8            INX                       ; |
CODE_059054:        E8            INX                       ; | Fill the 3rd row with some transition tile into the water.
CODE_059055:        E0 30 00      CPX #$0030                ; |
CODE_059058:        D0 F6         BNE CODE_059050           ;/
CODE_05905A:        60            RTS                       ;

DATA_05905B:        db $03,$05,$1D,$02        ;BG map16 tiles to fill the entire cave BG with (the repetitive rocks)

;Part of underground background generation routine
CODE_05905F:        A2 00 00      LDX #$0000                ;
CODE_059062:        E2 20         SEP #$20                  ;
CODE_059064:        AD 5B 90      LDA DATA_05905B           ;
CODE_059067:        9F 00 D0 7E   STA $7ED000,x             ;
CODE_05906B:        AD 5C 90      LDA DATA_05905B+1         ;
CODE_05906E:        9F 01 D0 7E   STA $7ED001,x             ;
CODE_059072:        AD 5D 90      LDA DATA_05905B+2         ;
CODE_059075:        9F 10 D0 7E   STA $7ED010,x             ;
CODE_059079:        AD 5E 90      LDA DATA_05905B+3         ;
CODE_05907C:        9F 11 D0 7E   STA $7ED011,x             ;
CODE_059080:        E8            INX                       ;
CODE_059081:        E8            INX                       ;
CODE_059082:        8A            TXA                       ;
CODE_059083:        29 0F         AND #$0F                  ;
CODE_059085:        D0 DD         BNE CODE_059064           ;
CODE_059087:        C2 20         REP #$20                  ;
CODE_059089:        8A            TXA                       ;
CODE_05908A:        18            CLC                       ;
CODE_05908B:        69 10 00      ADC #$0010                ;
CODE_05908E:        AA            TAX                       ;
CODE_05908F:        E2 20         SEP #$20                  ;
CODE_059091:        E0 00 08      CPX #$0800                ;
CODE_059094:        D0 CE         BNE CODE_059064           ;
CODE_059096:        C2 20         REP #$20                  ;
CODE_059098:        60            RTS                       ;

CODE_059099:        E2 20         SEP #$20                  ;
CODE_05909B:        A5 5C         LDA $5C                   ;\
CODE_05909D:        C9 02         CMP #$02                  ; |If map type is underground, branch
CODE_05909F:        F0 04         BEQ CODE_0590A5           ;/
CODE_0590A1:        A9 5F         LDA #$5F                  ;\Executes when castle level
CODE_0590A3:        80 02         BRA CODE_0590A7           ;/Fill the background's top area with black map16 tiles.

CODE_0590A5:        A9 00         LDA #$00                  ;Load background black map16 tile.
CODE_0590A7:        A2 00 00      LDX #$0000                ;\
CODE_0590AA:        20 DC 8E      JSR CODE_058EDC           ; |
CODE_0590AD:        E8            INX                       ; |Fill the background's top 2 rows with black tiles loaded in accumulator
CODE_0590AE:        E0 20 00      CPX #$0020                ; |
CODE_0590B1:        D0 F7         BNE CODE_0590AA           ; |
CODE_0590B3:        C2 20         REP #$20                  ; |
CODE_0590B5:        60            RTS                       ;/

CODE_0590B6:        EE C0 0E      INC $0EC0                 ;\ Increase index to the latest background map16 page written to.
CODE_0590B9:        60            RTS                       ;/

;Enable Generic HDMA
CODE_0590BA:        E2 30         SEP #$30                  ;\ Enable HDMA depending on $F1: HDMA gradient type
CODE_0590BC:        A5 F1         LDA $F1                   ; |
CODE_0590BE:        C9 02         CMP #$02                  ; |
CODE_0590C0:        D0 02         BNE CODE_0590C4           ; |
CODE_0590C2:        A9 FF         LDA #$FF                  ; |
CODE_0590C4:        C9 01         CMP #$01                  ; |
CODE_0590C6:        D0 03         BNE CODE_0590CB           ; |
CODE_0590C8:        8D D1 0E      STA $0ED1                 ; |
CODE_0590CB:        22 5E 82 04   JSL CODE_04825E           ; |<-- HDMA enable routine
CODE_0590CF:        C2 30         REP #$30                  ; |
CODE_0590D1:        60            RTS                       ;/

;Enable Underwater Level HDMA
CODE_0590D2:        E2 30         SEP #$30                  ;\
CODE_0590D4:        A9 02         LDA #$02                  ; |
CODE_0590D6:        22 5E 82 04   JSL CODE_04825E           ; |Enable underwater HDMA gradient (without the up/down movement, just the color definition)
CODE_0590DA:        C2 30         REP #$30                  ; |
CODE_0590DC:        60            RTS                       ;/

DATA_0590DD:        db $0F,$20,$1B,$37,$58,$C9 ;

DATA_0590E3:        db $1F,$29,$1C,$38,$57,$CA ;

CODE_0590E9:        A2 D0 00      LDX #$00D0                ;
CODE_0590EC:        A4 F1         LDY $F1                   ;
CODE_0590EE:        B9 DD 90      LDA DATA_0590DD,y               ;
CODE_0590F1:        20 DC 8E      JSR CODE_058EDC           ;
CODE_0590F4:        E8            INX                       ;
CODE_0590F5:        E0 E0 00      CPX #$00E0                ;
CODE_0590F8:        D0 F7         BNE CODE_0590F1           ;
CODE_0590FA:        B9 E3 90      LDA DATA_0590E3,y               ;
CODE_0590FD:        20 DC 8E      JSR CODE_058EDC           ;
CODE_059100:        E8            INX                       ;
CODE_059101:        E0 F0 00      CPX #$00F0                ;
CODE_059104:        D0 F7         BNE CODE_0590FD           ;
CODE_059106:        A9 50 00      LDA #$0050                ;
CODE_059109:        20 DC 8E      JSR CODE_058EDC           ;
CODE_05910C:        60            RTS                       ;

CODE_05910D:        A5 F1         LDA $F1                   ;
CODE_05910F:        85 99         STA $99                   ;
CODE_059111:        22 B1 E6 05   JSL CODE_05E6B1           ;Upload tileset graphics
CODE_059115:        60            RTS                       ;

CODE_059116:        A5 F1         LDA $F1                   ;
CODE_059118:        09 10 00      ORA #$0010                ;
CODE_05911B:        85 99         STA $99                   ;
CODE_05911D:        22 B1 E6 05   JSL CODE_05E6B1           ;Upload tileset graphics
CODE_059121:        60            RTS                       ;

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
CODE_059166:        A5 DB         LDA $DB                   ;\ Load background number
CODE_059168:        0A            ASL A                     ; |to index
CODE_059169:        AA            TAX                       ; |
CODE_05916A:        BD 22 91      LDA DATA_059122,x               ; |Load index to layer 2 background pointer
CODE_05916D:        0A            ASL A                     ; |
CODE_05916E:        AA            TAX                       ; |
CODE_05916F:        BD CE 91      LDA DATA_0591CE,x               ; |Store pointer to $00-$02. $02 is hardcoded to bank 5
CODE_059172:        85 00         STA $00                   ; |
CODE_059174:        A9 05 00      LDA #$0005                ; |
CODE_059177:        85 02         STA $02                   ;/
CODE_059179:        A2 00 00      LDX #$0000                ;Index to RAM?
CODE_05917C:        A0 00 00      LDY #$0000                ;Loop count
CODE_05917F:        86 E4         STX $E4                   ;\Start loop
CODE_059181:        BB            TYX                       ; |
CODE_059182:        BF 00 D0 7E   LDA $7ED000,x             ; |
CODE_059186:        C9 FF FF      CMP #$FFFF                ; |If the background map16 tilemap is $FFFF
CODE_059189:        F0 3F         BEQ CODE_0591CA           ;/Stop uploading tiles.
CODE_05918B:        5A            PHY                       ;\
CODE_05918C:        A6 E4         LDX $E4                   ; |
CODE_05918E:        29 FF 00      AND #$00FF                ; |
CODE_059191:        0A            ASL A                     ; |
CODE_059192:        0A            ASL A                     ; |Upload background data by copying -MAP16- data
CODE_059193:        0A            ASL A                     ; |to the -VRAM tilemap- located in the -RAM-
CODE_059194:        A8            TAY                       ; |
CODE_059195:        B7 00         LDA [$00],y               ; |
CODE_059197:        9F 00 20 7E   STA $7E2000,x             ; |
CODE_05919B:        C8            INY                       ; |
CODE_05919C:        C8            INY                       ; |
CODE_05919D:        B7 00         LDA [$00],y               ; |
CODE_05919F:        9F 02 20 7E   STA $7E2002,x             ; |
CODE_0591A3:        C8            INY                       ; |
CODE_0591A4:        C8            INY                       ; |
CODE_0591A5:        B7 00         LDA [$00],y               ; |
CODE_0591A7:        9F 40 20 7E   STA $7E2040,x             ; |
CODE_0591AB:        C8            INY                       ; |
CODE_0591AC:        C8            INY                       ; |
CODE_0591AD:        B7 00         LDA [$00],y               ; |
CODE_0591AF:        9F 42 20 7E   STA $7E2042,x             ; |
CODE_0591B3:        7A            PLY                       ; |
CODE_0591B4:        C8            INY                       ; |
CODE_0591B5:        98            TYA                       ; |
CODE_0591B6:        29 0F 00      AND #$000F                ; |
CODE_0591B9:        D0 06         BNE CODE_0591C1           ;/
CODE_0591BB:        8A            TXA                       ;
CODE_0591BC:        18            CLC                       ;
CODE_0591BD:        69 40 00      ADC #$0040                ;
CODE_0591C0:        AA            TAX                       ;
CODE_0591C1:        E8            INX                       ;
CODE_0591C2:        E8            INX                       ;
CODE_0591C3:        E8            INX                       ;
CODE_0591C4:        E8            INX                       ;
CODE_0591C5:        C0 00 10      CPY #$1000                ;\read full map16 (?) ($0FFF bytes). If not done yet, loop
CODE_0591C8:        D0 B5         BNE CODE_05917F           ;/
CODE_0591CA:        E2 30         SEP #$30                  ;
CODE_0591CC:        AB            PLB                       ;
CODE_0591CD:        6B            RTL                       ;

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

DATA_05B1A5:        db $03,$04,$05,$FE,$12,$13,$16,$06 ;
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

DATA_05B323:        db $1A,$1B,$FE,$01,$02,$FE,$01,$02 ;
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

DATA_05B3E2:        db $08,$FE,$0C,$FF,$14,$15,$16,$17 ;
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

DATA_05B494:        db $00,$00,$00,$00,$00,$00,$00,$07 ;
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
                    db $03,$04,$05,$06,$00,$07,$08,$09 ;
                    db $03,$29,$0A,$0B,$0C,$0D,$0A,$0B ;
                    db $0C,$0D,$0E,$0F,$10,$11,$0A,$0B ;
                    db $0C,$0D,$0A,$12,$13,$0D,$0A,$12 ;
                    db $14,$15,$16,$12,$14,$15,$16,$12 ;
                    db $14,$15,$1A,$1B,$1C,$1D,$1A,$1B ;
                    db $1E,$1F,$20,$21,$1E,$1F,$20,$21 ;
                    db $1E,$1F,$FF ;

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

DATA_05C397:        dw $E041,$E012,$2800,$E000      ;Mario bonus room background commands
                    dw $2800,$E000,$2800,$E000      ;Todo: same for luigi??
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

CODE_05C800:        AD 12 42      LDA $4212                 ;
CODE_05C803:        4A            LSR A                     ;
CODE_05C804:        B0 FA         BCS CODE_05C800           ;
CODE_05C806:        9C 16 40      STZ $4016                 ;
CODE_05C809:        AF F4 1F 70   LDA $701FF4               ;
CODE_05C80D:        AA            TAX                       ;
CODE_05C80E:        BD 18 42      LDA $4218,x               ;
CODE_05C811:        8D F8 0F      STA $0FF8                 ;
CODE_05C814:        A8            TAY                       ;
CODE_05C815:        4D FD 0F      EOR $0FFD                 ;
CODE_05C818:        2D F8 0F      AND $0FF8                 ;
CODE_05C81B:        8D FA 0F      STA $0FFA                 ;
CODE_05C81E:        8C FD 0F      STY $0FFD                 ;
CODE_05C821:        BD 19 42      LDA $4219,x               ;
CODE_05C824:        8D F4 0F      STA $0FF4                 ;
CODE_05C827:        A8            TAY                       ;
CODE_05C828:        4D FC 0F      EOR $0FFC                 ;
CODE_05C82B:        2D F4 0F      AND $0FF4                 ;
CODE_05C82E:        8D F6 0F      STA $0FF6                 ;
CODE_05C831:        8C FC 0F      STY $0FFC                 ;
CODE_05C834:        AF F6 1F 70   LDA $701FF6               ;
CODE_05C838:        AA            TAX                       ;
CODE_05C839:        BD 18 42      LDA $4218,x               ;
CODE_05C83C:        8D F9 0F      STA $0FF9                 ;
CODE_05C83F:        A8            TAY                       ;
CODE_05C840:        4D FE 0F      EOR $0FFE                 ;
CODE_05C843:        2D F9 0F      AND $0FF9                 ;
CODE_05C846:        8D FB 0F      STA $0FFB                 ;
CODE_05C849:        8C FE 0F      STY $0FFE                 ;
CODE_05C84C:        BD 19 42      LDA $4219,x               ;
CODE_05C84F:        8D F5 0F      STA $0FF5                 ;
CODE_05C852:        A8            TAY                       ;
CODE_05C853:        4D FF 0F      EOR $0FFF                 ;
CODE_05C856:        2D F5 0F      AND $0FF5                 ;
CODE_05C859:        8D F7 0F      STA $0FF7                 ;
CODE_05C85C:        8C FF 0F      STY $0FFF                 ;
CODE_05C85F:        6B            RTL                       ;

CODE_05C860:        8B            PHB                       ;
CODE_05C861:        4B            PHK                       ;
CODE_05C862:        AB            PLB                       ;
CODE_05C863:        AF 06 00 70   LDA $700006               ;
CODE_05C867:        D0 22         BNE CODE_05C88B           ;
CODE_05C869:        AD F8 0F      LDA $0FF8                 ;
CODE_05C86C:        29 C0         AND #$C0                  ;
CODE_05C86E:        0C F4 0F      TSB $0FF4                 ;
CODE_05C871:        AD FA 0F      LDA $0FFA                 ;
CODE_05C874:        29 C0         AND #$C0                  ;
CODE_05C876:        0C F6 0F      TSB $0FF6                 ;
CODE_05C879:        AD F9 0F      LDA $0FF9                 ;
CODE_05C87C:        29 C0         AND #$C0                  ;
CODE_05C87E:        0C F5 0F      TSB $0FF5                 ;
CODE_05C881:        AD FB 0F      LDA $0FFB                 ;
CODE_05C884:        29 C0         AND #$C0                  ;
CODE_05C886:        0C F7 0F      TSB $0FF7                 ;
CODE_05C889:        80 68         BRA CODE_05C8F3           ;

CODE_05C88B:        AD F4 0F      LDA $0FF4                 ;
CODE_05C88E:        29 80         AND #$80                  ;
CODE_05C890:        4A            LSR A                     ;
CODE_05C891:        0C F4 0F      TSB $0FF4                 ;
CODE_05C894:        AD F8 0F      LDA $0FF8                 ;
CODE_05C897:        29 C0         AND #$C0                  ;
CODE_05C899:        85 00         STA $00                   ;
CODE_05C89B:        AD F4 0F      LDA $0FF4                 ;
CODE_05C89E:        29 7F         AND #$7F                  ;
CODE_05C8A0:        05 00         ORA $00                   ;
CODE_05C8A2:        8D F4 0F      STA $0FF4                 ;
CODE_05C8A5:        AD F6 0F      LDA $0FF6                 ;
CODE_05C8A8:        29 80         AND #$80                  ;
CODE_05C8AA:        4A            LSR A                     ;
CODE_05C8AB:        0C F6 0F      TSB $0FF6                 ;
CODE_05C8AE:        AD FA 0F      LDA $0FFA                 ;
CODE_05C8B1:        29 C0         AND #$C0                  ;
CODE_05C8B3:        85 00         STA $00                   ;
CODE_05C8B5:        AD F6 0F      LDA $0FF6                 ;
CODE_05C8B8:        29 7F         AND #$7F                  ;
CODE_05C8BA:        05 00         ORA $00                   ;
CODE_05C8BC:        8D F6 0F      STA $0FF6                 ;
CODE_05C8BF:        AD F5 0F      LDA $0FF5                 ;
CODE_05C8C2:        29 80         AND #$80                  ;
CODE_05C8C4:        4A            LSR A                     ;
CODE_05C8C5:        0C F5 0F      TSB $0FF5                 ;
CODE_05C8C8:        AD F9 0F      LDA $0FF9                 ;
CODE_05C8CB:        29 C0         AND #$C0                  ;
CODE_05C8CD:        85 00         STA $00                   ;
CODE_05C8CF:        AD F5 0F      LDA $0FF5                 ;
CODE_05C8D2:        29 7F         AND #$7F                  ;
CODE_05C8D4:        05 00         ORA $00                   ;
CODE_05C8D6:        8D F5 0F      STA $0FF5                 ;
CODE_05C8D9:        AD F7 0F      LDA $0FF7                 ;
CODE_05C8DC:        29 80         AND #$80                  ;
CODE_05C8DE:        4A            LSR A                     ;
CODE_05C8DF:        0C F7 0F      TSB $0FF7                 ;
CODE_05C8E2:        AD FB 0F      LDA $0FFB                 ;
CODE_05C8E5:        29 C0         AND #$C0                  ;
CODE_05C8E7:        85 00         STA $00                   ;
CODE_05C8E9:        AD F7 0F      LDA $0FF7                 ;
CODE_05C8EC:        29 7F         AND #$7F                  ;
CODE_05C8EE:        05 00         ORA $00                   ;
CODE_05C8F0:        8D F7 0F      STA $0FF7                 ;
CODE_05C8F3:        AB            PLB                       ;
CODE_05C8F4:        6B            RTL                       ;

DATA_05C8F5:        db $03,$02,$06,$08,$01,$13

CODE_05C8FB:        8B            PHB                       ;
CODE_05C8FC:        4B            PHK                       ;
CODE_05C8FD:        AB            PLB                       ;
CODE_05C8FE:        DA            PHX                       ;
CODE_05C8FF:        AD 70 07      LDA $0770                 ;
CODE_05C902:        F0 49         BEQ CODE_05C94D           ;
CODE_05C904:        AD 52 07      LDA $0752                 ;
CODE_05C907:        C9 02         CMP #$02                  ;
CODE_05C909:        F0 11         BEQ CODE_05C91C           ;
CODE_05C90B:        A0 05         LDY #$05                  ;
CODE_05C90D:        AD 10 07      LDA $0710                 ;
CODE_05C910:        C9 06         CMP #$06                  ;
CODE_05C912:        F0 04         BEQ CODE_05C918           ;
CODE_05C914:        C9 07         CMP #$07                  ;
CODE_05C916:        D0 04         BNE CODE_05C91C           ;
CODE_05C918:        A0 05         LDY #$05                  ;
CODE_05C91A:        80 09         BRA CODE_05C925           ;

CODE_05C91C:        A4 BA         LDY $BA                   ;
CODE_05C91E:        AD 43 07      LDA $0743                 ;
CODE_05C921:        F0 02         BEQ CODE_05C925           ;
CODE_05C923:        A0 04         LDY #$04                  ;
CODE_05C925:        A5 0F         LDA $0F                   ;
CODE_05C927:        C9 04         CMP #$04                  ;
CODE_05C929:        F0 19         BEQ CODE_05C944           ;
CODE_05C92B:        C9 05         CMP #$05                  ;
CODE_05C92D:        F0 15         BEQ CODE_05C944           ;
CODE_05C92F:        A5 DB         LDA $DB                   ;
CODE_05C931:        C9 1B         CMP #$1B                  ;
CODE_05C933:        D0 04         BNE CODE_05C939           ;
CODE_05C935:        A9 01         LDA #$01                  ;
CODE_05C937:        80 03         BRA CODE_05C93C           ;

CODE_05C939:        B9 F5 C8      LDA DATA_05C8F5,y               ;
CODE_05C93C:        AE DF 0E      LDX $0EDF                 ;
CODE_05C93F:        D0 03         BNE CODE_05C944           ;
CODE_05C941:        8D 02 16      STA $1602                 ;
CODE_05C944:        A6 DB         LDX $DB                   ;
CODE_05C946:        E0 21         CPX #$21                  ;
CODE_05C948:        D0 03         BNE CODE_05C94D           ;
CODE_05C94A:        8D DF 0E      STA $0EDF                 ;
CODE_05C94D:        FA            PLX                       ;
CODE_05C94E:        AB            PLB                       ;
CODE_05C94F:        6B            RTL                       ;

CODE_05C950:        AF 06 FB 7F   LDA $7FFB06               ;
CODE_05C954:        10 02         BPL CODE_05C958           ;
CODE_05C956:        A9 00         LDA #$00                  ;
CODE_05C958:        8D 7A 07      STA $077A                 ;
CODE_05C95B:        AF 00 FB 7F   LDA $7FFB00               ;
CODE_05C95F:        8D 5F 07      STA $075F                 ;
CODE_05C962:        8D 66 07      STA $0766                 ;
CODE_05C965:        AF 01 FB 7F   LDA $7FFB01               ;
CODE_05C969:        8D 5C 07      STA $075C                 ;
CODE_05C96C:        8D 63 07      STA $0763                 ;
CODE_05C96F:        AF 02 FB 7F   LDA $7FFB02               ;
CODE_05C973:        10 01         BPL CODE_05C976           ;
CODE_05C975:        1A            INC A                     ;
CODE_05C976:        8D 60 07      STA $0760                 ;
CODE_05C979:        8D 67 07      STA $0767                 ;
CODE_05C97C:        AF 03 FB 7F   LDA $7FFB03               ;
CODE_05C980:        8D 5A 07      STA $075A                 ;
CODE_05C983:        AF 04 FB 7F   LDA $7FFB04               ;
CODE_05C987:        8D 61 07      STA $0761                 ;
CODE_05C98A:        AF 05 FB 7F   LDA $7FFB05               ;
CODE_05C98E:        8D FC 07      STA $07FC                 ;
CODE_05C991:        8D 81 07      STA $0781                 ;
CODE_05C994:        DA            PHX                       ;
CODE_05C995:        A2 00         LDX #$00                  ;
CODE_05C997:        BF E0 1F 70   LDA $701FE0,x             ;
CODE_05C99B:        9D C8 07      STA $07C8,x               ;
CODE_05C99E:        E8            INX                       ;
CODE_05C99F:        E0 06         CPX #$06                  ;
CODE_05C9A1:        D0 F4         BNE CODE_05C997           ;
CODE_05C9A3:        FA            PLX                       ;
CODE_05C9A4:        6B            RTL                       ;

CODE_05C9A5:        AF 09 00 70   LDA $700009               ;
CODE_05C9A9:        8D 60 07      STA $0760                 ;
CODE_05C9AC:        8D 67 07      STA $0767                 ;
CODE_05C9AF:        AD 24 0E      LDA $0E24                 ;
CODE_05C9B2:        8D 5C 07      STA $075C                 ;
CODE_05C9B5:        8D 63 07      STA $0763                 ;
CODE_05C9B8:        A9 02         LDA #$02                  ;
CODE_05C9BA:        8D 5A 07      STA $075A                 ;
CODE_05C9BD:        8D 61 07      STA $0761                 ;
CODE_05C9C0:        9C 5E 07      STZ $075E                 ;
CODE_05C9C3:        9C 65 07      STZ $0765                 ;
CODE_05C9C6:        DA            PHX                       ;
CODE_05C9C7:        A2 00         LDX #$00                  ;
CODE_05C9C9:        9E CE 07      STZ $07CE,x               ;
CODE_05C9CC:        E8            INX                       ;
CODE_05C9CD:        E0 0C         CPX #$0C                  ;
CODE_05C9CF:        D0 F8         BNE CODE_05C9C9           ;
CODE_05C9D1:        FA            PLX                       ;
CODE_05C9D2:        6B            RTL                       ;

CODE_05C9D3:        DA            PHX                       ;
CODE_05C9D4:        5A            PHY                       ;
CODE_05C9D5:        AD 69 03      LDA $0369                 ;
CODE_05C9D8:        F0 39         BEQ CODE_05CA13           ;
CODE_05C9DA:        BC 46 0B      LDY $0B46,x               ;
CODE_05C9DD:        A2 00         LDX #$00                  ;
CODE_05C9DF:        B9 00 09      LDA $0900,y               ;
CODE_05C9E2:        9D 00 08      STA $0800,x               ;
CODE_05C9E5:        98            TYA                       ;
CODE_05C9E6:        29 03         AND #$03                  ;
CODE_05C9E8:        C9 01         CMP #$01                  ;
CODE_05C9EA:        D0 11         BNE CODE_05C9FD           ;
CODE_05C9EC:        BD 00 08      LDA $0800,x               ;
CODE_05C9EF:        C9 F0         CMP #$F0                  ;
CODE_05C9F1:        90 0A         BCC CODE_05C9FD           ;
CODE_05C9F3:        A9 F0         LDA #$F0                  ;
CODE_05C9F5:        9D 00 08      STA $0800,x               ;
CODE_05C9F8:        A9 00         LDA #$00                  ;
CODE_05C9FA:        99 00 0D      STA $0D00,y               ;
CODE_05C9FD:        B9 00 0D      LDA $0D00,y               ;
CODE_05CA00:        9D 00 0C      STA $0C00,x               ;
CODE_05CA03:        A9 00         LDA #$00                  ;
CODE_05CA05:        99 00 0D      STA $0D00,y               ;
CODE_05CA08:        A9 F0         LDA #$F0                  ;
CODE_05CA0A:        99 00 09      STA $0900,y               ;
CODE_05CA0D:        C8            INY                       ;
CODE_05CA0E:        E8            INX                       ;
CODE_05CA0F:        E0 20         CPX #$20                  ;
CODE_05CA11:        D0 CC         BNE CODE_05C9DF           ;
CODE_05CA13:        A2 00         LDX #$00                  ;
CODE_05CA15:        64 E7         STZ $E7                   ;
CODE_05CA17:        BD 00 03      LDA $0300,x               ;
CODE_05CA1A:        F0 0A         BEQ CODE_05CA26           ;
CODE_05CA1C:        20 2E CA      JSR CODE_05CA2E           ;
CODE_05CA1F:        A5 E7         LDA $E7                   ;
CODE_05CA21:        18            CLC                       ;
CODE_05CA22:        69 20         ADC #$20                  ;
CODE_05CA24:        85 E7         STA $E7                   ;
CODE_05CA26:        E8            INX                       ;
CODE_05CA27:        E0 0D         CPX #$0D                  ;
CODE_05CA29:        90 EC         BCC CODE_05CA17           ;
CODE_05CA2B:        7A            PLY                       ;
CODE_05CA2C:        FA            PLX                       ;
CODE_05CA2D:        60            RTS                       ;

CODE_05CA2E:        A5 9E         LDA $9E                   ;
CODE_05CA30:        1A            INC A                     ;
CODE_05CA31:        8D FC 02      STA $02FC                 ;
CODE_05CA34:        DA            PHX                       ;
CODE_05CA35:        BC 0D 03      LDY $030D,x               ;
CODE_05CA38:        84 E6         STY $E6                   ;
CODE_05CA3A:        B9 2D CB      LDA DATA_05CB2D,y               ;
CODE_05CA3D:        18            CLC                       ;
CODE_05CA3E:        69 A0         ADC #$A0                  ;
CODE_05CA40:        85 E4         STA $E4                   ;
CODE_05CA42:        B9 2E CB      LDA DATA_05CB2D+1,y               ;
CODE_05CA45:        18            CLC                       ;
CODE_05CA46:        69 A0         ADC #$A0                  ;
CODE_05CA48:        85 E5         STA $E5                   ;
CODE_05CA4A:        A4 E7         LDY $E7                   ;
CODE_05CA4C:        BD 1A 03      LDA $031A,x               ;
CODE_05CA4F:        20 D3 CA      JSR CODE_05CAD3           ;
CODE_05CA52:        BD 1A 03      LDA $031A,x               ;
CODE_05CA55:        18            CLC                       ;
CODE_05CA56:        69 08         ADC #$08                  ;
CODE_05CA58:        20 D3 CA      JSR CODE_05CAD3           ;
CODE_05CA5B:        A4 E7         LDY $E7                   ;
CODE_05CA5D:        A5 E4         LDA $E4                   ;
CODE_05CA5F:        20 BD CA      JSR CODE_05CABD           ;
CODE_05CA62:        98            TYA                       ;
CODE_05CA63:        18            CLC                       ;
CODE_05CA64:        69 10         ADC #$10                  ;
CODE_05CA66:        A8            TAY                       ;
CODE_05CA67:        A5 E5         LDA $E5                   ;
CODE_05CA69:        20 BD CA      JSR CODE_05CABD           ;
CODE_05CA6C:        A6 E6         LDX $E6                   ;
CODE_05CA6E:        E0 04         CPX #$04                  ;
CODE_05CA70:        B0 04         BCS CODE_05CA76           ;
CODE_05CA72:        A9 22         LDA #$22                  ;
CODE_05CA74:        80 02         BRA CODE_05CA78           ;

CODE_05CA76:        A9 23         LDA #$23                  ;
CODE_05CA78:        A4 E7         LDY $E7                   ;
CODE_05CA7A:        C8            INY                       ;
CODE_05CA7B:        C8            INY                       ;
CODE_05CA7C:        C8            INY                       ;
CODE_05CA7D:        48            PHA                       ;
CODE_05CA7E:        20 D3 CA      JSR CODE_05CAD3           ;
CODE_05CA81:        68            PLA                       ;
CODE_05CA82:        20 D3 CA      JSR CODE_05CAD3           ;
CODE_05CA85:        A4 E7         LDY $E7                   ;
CODE_05CA87:        8A            TXA                       ;
CODE_05CA88:        0A            ASL A                     ;
CODE_05CA89:        0A            ASL A                     ;
CODE_05CA8A:        0A            ASL A                     ;
CODE_05CA8B:        AA            TAX                       ;
CODE_05CA8C:        A9 08         LDA #$08                  ;
CODE_05CA8E:        85 E8         STA $E8                   ;
CODE_05CA90:        BD E5 CA      LDA DATA_05CAE5,x               ;
CODE_05CA93:        99 02 09      STA $0902,y               ;
CODE_05CA96:        C8            INY                       ;
CODE_05CA97:        C8            INY                       ;
CODE_05CA98:        C8            INY                       ;
CODE_05CA99:        C8            INY                       ;
CODE_05CA9A:        E8            INX                       ;
CODE_05CA9B:        C6 E8         DEC $E8                   ;
CODE_05CA9D:        D0 F1         BNE CODE_05CA90           ;
CODE_05CA9F:        FA            PLX                       ;
CODE_05CAA0:        DE 27 03      DEC $0327,x               ;
CODE_05CAA3:        BD 27 03      LDA $0327,x               ;
CODE_05CAA6:        D0 14         BNE CODE_05CABC           ;
CODE_05CAA8:        A9 03         LDA #$03                  ;
CODE_05CAAA:        9D 27 03      STA $0327,x               ;
CODE_05CAAD:        FE 0D 03      INC $030D,x               ;
CODE_05CAB0:        BD 0D 03      LDA $030D,x               ;
CODE_05CAB3:        29 0F         AND #$0F                  ;
CODE_05CAB5:        C9 09         CMP #$09                  ;
CODE_05CAB7:        D0 03         BNE CODE_05CABC           ;
CODE_05CAB9:        9E 00 03      STZ $0300,x               ;
CODE_05CABC:        60            RTS                       ;

CODE_05CABD:        99 01 09      STA $0901,y               ;
CODE_05CAC0:        18            CLC                       ;
CODE_05CAC1:        69 08         ADC #$08                  ;
CODE_05CAC3:        99 05 09      STA $0905,y               ;
CODE_05CAC6:        18            CLC                       ;
CODE_05CAC7:        69 08         ADC #$08                  ;
CODE_05CAC9:        99 09 09      STA $0909,y               ;
CODE_05CACC:        18            CLC                       ;
CODE_05CACD:        69 08         ADC #$08                  ;
CODE_05CACF:        99 0D 09      STA $090D,y               ;
CODE_05CAD2:        60            RTS                       ;

CODE_05CAD3:        99 00 09      STA $0900,y               ;
CODE_05CAD6:        99 04 09      STA $0904,y               ;
CODE_05CAD9:        99 08 09      STA $0908,y               ;
CODE_05CADC:        99 0C 09      STA $090C,y               ;
CODE_05CADF:        98            TYA                       ;
CODE_05CAE0:        18            CLC                       ;
CODE_05CAE1:        69 10         ADC #$10                  ;
CODE_05CAE3:        A8            TAY                       ;
CODE_05CAE4:        60            RTS                       ;

DATA_05CAE5:        db $10,$20,$FC,$FC,$11,$21,$FC,$FC ;
                    db $10,$20,$FC,$FC,$11,$21,$FC,$FC ;
                    db $12,$22,$FC,$FC,$13,$23,$FC,$FC ;
                    db $14,$24,$16,$FC,$15,$25,$17,$FC ;
                    db $4C,$5C,$4E,$5E,$4D,$5D,$4F,$5F ;
                    db $8C,$9C,$8E,$9E,$8D,$9D,$8F,$9F ;
                    db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF ;
                    db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF ;
                    db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF ;

DATA_05CB2D:        db $00,$00,$01,$03,$06,$0A,$0F,$14 ;
                    db $1C,$24,$3C ;

DATA_05CB38:        db $0E,$0E,$0E,$66,$66,$64,$64,$64 ;
                    db $66,$66 ;

CODE_05CB42:        8B            PHB                       ;
CODE_05CB43:        4B            PHK                       ;
CODE_05CB44:        AB            PLB                       ;
CODE_05CB45:        5A            PHY                       ;
CODE_05CB46:        BD 46 0B      LDA $0B46,x               ;
CODE_05CB49:        18            CLC                       ;
CODE_05CB4A:        69 04         ADC #$04                  ;
CODE_05CB4C:        A8            TAY                       ;
CODE_05CB4D:        B5 47         LDA $47,x                 ;
CODE_05CB4F:        C9 02         CMP #$02                  ;
CODE_05CB51:        D0 02         BNE CODE_05CB55           ;
CODE_05CB53:        A9 41         LDA #$41                  ;
CODE_05CB55:        49 2B         EOR #$2B                  ;
CODE_05CB57:        99 03 09      STA $0903,y               ;
CODE_05CB5A:        B5 1C         LDA $1C,x                 ;
CODE_05CB5C:        C9 08         CMP #$08                  ;
CODE_05CB5E:        F0 0F         BEQ CODE_05CB6F           ;
CODE_05CB60:        BD A2 0E      LDA $0EA2,x               ;
CODE_05CB63:        C9 0A         CMP #$0A                  ;
CODE_05CB65:        B0 08         BCS CODE_05CB6F           ;
CODE_05CB67:        B9 03 09      LDA $0903,y               ;
CODE_05CB6A:        49 20         EOR #$20                  ;
CODE_05CB6C:        99 03 09      STA $0903,y               ;
CODE_05CB6F:        BD 4F 0F      LDA $0F4F,x               ;
CODE_05CB72:        4A            LSR A                     ;
CODE_05CB73:        4A            LSR A                     ;
CODE_05CB74:        29 0F         AND #$0F                  ;
CODE_05CB76:        85 E4         STA $E4                   ;
CODE_05CB78:        B5 29         LDA $29,x                 ;
CODE_05CB7A:        29 20         AND #$20                  ;
CODE_05CB7C:        D0 06         BNE CODE_05CB84           ;
CODE_05CB7E:        A5 E4         LDA $E4                   ;
CODE_05CB80:        C9 09         CMP #$09                  ;
CODE_05CB82:        90 03         BCC CODE_05CB87           ;
CODE_05CB84:        9E 4F 0F      STZ $0F4F,x               ;
CODE_05CB87:        A5 0F         LDA $0F                   ;
CODE_05CB89:        C9 09         CMP #$09                  ;
CODE_05CB8B:        B0 08         BCS CODE_05CB95           ;
CODE_05CB8D:        AD 67 0E      LDA $0E67                 ;
CODE_05CB90:        D0 03         BNE CODE_05CB95           ;
CODE_05CB92:        FE 4F 0F      INC $0F4F,x               ;
CODE_05CB95:        A6 E4         LDX $E4                   ;
CODE_05CB97:        AD AE 03      LDA $03AE                 ;
CODE_05CB9A:        99 00 09      STA $0900,y               ;
CODE_05CB9D:        AD B9 03      LDA $03B9                 ;
CODE_05CBA0:        18            CLC                       ;
CODE_05CBA1:        69 08         ADC #$08                  ;
CODE_05CBA3:        99 01 09      STA $0901,y               ;
CODE_05CBA6:        BD 38 CB      LDA DATA_05CB38,x               ;
CODE_05CBA9:        99 02 09      STA $0902,y               ;
CODE_05CBAC:        A9 02         LDA #$02                  ;
CODE_05CBAE:        99 00 0D      STA $0D00,y               ;
CODE_05CBB1:        A6 9E         LDX $9E                   ;
CODE_05CBB3:        BD 1A 02      LDA $021A,x               ;
CODE_05CBB6:        85 E4         STA $E4                   ;
CODE_05CBB8:        B5 79         LDA $79,x                 ;
CODE_05CBBA:        85 E5         STA $E5                   ;
CODE_05CBBC:        C2 20         REP #$20                  ;
CODE_05CBBE:        A5 E4         LDA $E4                   ;
CODE_05CBC0:        38            SEC                       ;
CODE_05CBC1:        E5 42         SBC $42                   ;
CODE_05CBC3:        85 E4         STA $E4                   ;
CODE_05CBC5:        E2 20         SEP #$20                  ;
CODE_05CBC7:        A5 E5         LDA $E5                   ;
CODE_05CBC9:        F0 05         BEQ CODE_05CBD0           ;
CODE_05CBCB:        A9 03         LDA #$03                  ;
CODE_05CBCD:        99 00 0D      STA $0D00,y               ;
CODE_05CBD0:        AD B9 03      LDA $03B9                 ;
CODE_05CBD3:        C9 E0         CMP #$E0                  ;
CODE_05CBD5:        B0 06         BCS CODE_05CBDD           ;
CODE_05CBD7:        B5 BC         LDA $BC,x                 ;
CODE_05CBD9:        C9 01         CMP #$01                  ;
CODE_05CBDB:        F0 05         BEQ CODE_05CBE2           ;
CODE_05CBDD:        A9 F0         LDA #$F0                  ;
CODE_05CBDF:        99 01 09      STA $0901,y               ;
CODE_05CBE2:        7A            PLY                       ;
CODE_05CBE3:        AB            PLB                       ;
CODE_05CBE4:        6B            RTL                       ;

CODE_05CBE5:        AD FA 03      LDA $03FA                 ;
CODE_05CBE8:        F0 2C         BEQ CODE_05CC16           ;
CODE_05CBEA:        AD 19 02      LDA $0219                 ;
CODE_05CBED:        85 E4         STA $E4                   ;
CODE_05CBEF:        AD 78 00      LDA $0078                 ;
CODE_05CBF2:        85 E5         STA $E5                   ;
CODE_05CBF4:        9C FE 02      STZ $02FE                 ;
CODE_05CBF7:        C2 20         REP #$20                  ;
CODE_05CBF9:        AD FD 02      LDA $02FD                 ;
CODE_05CBFC:        18            CLC                       ;
CODE_05CBFD:        6D CC 03      ADC $03CC                 ;
CODE_05CC00:        C5 E4         CMP $E4                   ;
CODE_05CC02:        90 05         BCC CODE_05CC09           ;
CODE_05CC04:        E2 20         SEP #$20                  ;
CODE_05CC06:        A9 01         LDA #$01                  ;
CODE_05CC08:        6B            RTL                       ;

CODE_05CC09:        E2 20         SEP #$20                  ;
CODE_05CC0B:        9C FA 03      STZ $03FA                 ;
CODE_05CC0E:        A9 34         LDA #$34                  ;
CODE_05CC10:        8D F7 02      STA $02F7                 ;
CODE_05CC13:        8D CF 03      STA $03CF                 ;
CODE_05CC16:        AD CF 03      LDA $03CF                 ;
CODE_05CC19:        F0 2B         BEQ CODE_05CC46           ;
CODE_05CC1B:        C9 28         CMP #$28                  ;
CODE_05CC1D:        90 04         BCC CODE_05CC23           ;
CODE_05CC1F:        A9 F8         LDA #$F8                  ;
CODE_05CC21:        80 02         BRA CODE_05CC25           ;

CODE_05CC23:        A9 F0         LDA #$F0                  ;
CODE_05CC25:        8D CE 03      STA $03CE                 ;
CODE_05CC28:        AD 54 07      LDA $0754                 ;
CODE_05CC2B:        F0 09         BEQ CODE_05CC36           ;
CODE_05CC2D:        AD CE 03      LDA $03CE                 ;
CODE_05CC30:        38            SEC                       ;
CODE_05CC31:        E9 10         SBC #$10                  ;
CODE_05CC33:        8D CE 03      STA $03CE                 ;
CODE_05CC36:        CE CF 03      DEC $03CF                 ;
CODE_05CC39:        AD CF 03      LDA $03CF                 ;
CODE_05CC3C:        D0 00         BNE CODE_05CC3E           ;
CODE_05CC3E:        64 5D         STZ $5D                   ;
CODE_05CC40:        9C 05 07      STZ $0705                 ;
CODE_05CC43:        A9 00         LDA #$00                  ;
CODE_05CC45:        6B            RTL                       ;

CODE_05CC46:        A9 01         LDA #$01                  ;
CODE_05CC48:        8D 23 07      STA $0723                 ;
CODE_05CC4B:        8D 54 02      STA $0254                 ;
CODE_05CC4E:        20 6C CC      JSR CODE_05CC6C           ;
CODE_05CC51:        9C CE 03      STZ $03CE                 ;
CODE_05CC54:        AD FB 03      LDA $03FB                 ;
CODE_05CC57:        F0 06         BEQ CODE_05CC5F           ;
CODE_05CC59:        CE FB 03      DEC $03FB                 ;
CODE_05CC5C:        A9 01         LDA #$01                  ;
CODE_05CC5E:        6B            RTL                       ;

CODE_05CC5F:        AD 46 07      LDA $0746                 ;
CODE_05CC62:        C9 01         CMP #$01                  ;
CODE_05CC64:        B0 03         BCS CODE_05CC69           ;
CODE_05CC66:        EE 46 07      INC $0746                 ;
CODE_05CC69:        A9 00         LDA #$00                  ;
CODE_05CC6B:        6B            RTL                       ;

CODE_05CC6C:        A2 00         LDX #$00                  ;
CODE_05CC6E:        C2 20         REP #$20                  ;
CODE_05CC70:        BD E0 11      LDA $11E0,x               ;
CODE_05CC73:        85 E4         STA $E4                   ;
CODE_05CC75:        29 00 7C      AND #$7C00                ;
CODE_05CC78:        F0 08         BEQ CODE_05CC82           ;
CODE_05CC7A:        A5 E4         LDA $E4                   ;
CODE_05CC7C:        38            SEC                       ;
CODE_05CC7D:        E9 00 04      SBC #$0400                ;
CODE_05CC80:        85 E4         STA $E4                   ;
CODE_05CC82:        A5 E4         LDA $E4                   ;
CODE_05CC84:        29 E0 03      AND #$03E0                ;
CODE_05CC87:        F0 08         BEQ CODE_05CC91           ;
CODE_05CC89:        A5 E4         LDA $E4                   ;
CODE_05CC8B:        38            SEC                       ;
CODE_05CC8C:        E9 20 00      SBC #$0020                ;
CODE_05CC8F:        85 E4         STA $E4                   ;
CODE_05CC91:        A5 E4         LDA $E4                   ;
CODE_05CC93:        29 1F 00      AND #$001F                ;
CODE_05CC96:        F0 02         BEQ CODE_05CC9A           ;
CODE_05CC98:        C6 E4         DEC $E4                   ;
CODE_05CC9A:        A5 E4         LDA $E4                   ;
CODE_05CC9C:        9D E0 11      STA $11E0,x               ;
CODE_05CC9F:        E8            INX                       ;
CODE_05CCA0:        E8            INX                       ;
CODE_05CCA1:        E0 20         CPX #$20                  ;
CODE_05CCA3:        D0 CB         BNE CODE_05CC70           ;
CODE_05CCA5:        E2 20         SEP #$20                  ;
CODE_05CCA7:        EE 00 12      INC $1200                 ;
CODE_05CCAA:        60            RTS                       ;

DATA_05CCAB:        db $90,$80,$70,$90

DATA_05CCAF:        db $FF,$01

CODE_05CCB1:        DA            PHX                       ;
CODE_05CCB2:        5A            PHY                       ;
CODE_05CCB3:        AC 68 03      LDY $0368                 ;
CODE_05CCB6:        AE 4E 0F      LDX $0F4E                 ;
CODE_05CCB9:        B9 1A 02      LDA $021A,y               ;
CODE_05CCBC:        38            SEC                       ;
CODE_05CCBD:        E9 0E         SBC #$0E                  ;
CODE_05CCBF:        9D 1A 02      STA $021A,x               ;
CODE_05CCC2:        B9 79 00      LDA $0079,y               ;
CODE_05CCC5:        95 79         STA $79,x                 ;
CODE_05CCC7:        B9 38 02      LDA $0238,y               ;
CODE_05CCCA:        18            CLC                       ;
CODE_05CCCB:        69 08         ADC #$08                  ;
CODE_05CCCD:        9D 38 02      STA $0238,x               ;
CODE_05CCD0:        BD B7 07      LDA $07B7,x               ;
CODE_05CCD3:        29 03         AND #$03                  ;
CODE_05CCD5:        9D 1D 04      STA $041D,x               ;
CODE_05CCD8:        A8            TAY                       ;
CODE_05CCD9:        B9 AB CC      LDA DATA_05CCAB,y               ;
CODE_05CCDC:        A0 00         LDY #$00                  ;
CODE_05CCDE:        DD 38 02      CMP $0238,x               ;
CODE_05CCE1:        90 01         BCC CODE_05CCE4           ;
CODE_05CCE3:        C8            INY                       ;
CODE_05CCE4:        B9 AF CC      LDA DATA_05CCAF,y               ;
CODE_05CCE7:        9D 3D 04      STA $043D,x               ;
CODE_05CCEA:        9C CB 06      STZ $06CB                 ;
CODE_05CCED:        A9 08         LDA #$08                  ;\Set clipping?
CODE_05CCEF:        9D 90 04      STA $0490,x               ;/
CODE_05CCF2:        A9 01         LDA #$01                  ;
CODE_05CCF4:        95 BC         STA $BC,x                 ;
CODE_05CCF6:        95 10         STA $10,x                 ;
CODE_05CCF8:        4A            LSR A                     ;
CODE_05CCF9:        9D 02 04      STA $0402,x               ;
CODE_05CCFC:        95 29         STA $29,x                 ;
CODE_05CCFE:        7A            PLY                       ;
CODE_05CCFF:        FA            PLX                       ;
CODE_05CD00:        60            RTS                       ;

CODE_05CD01:        8B            PHB                       ;
CODE_05CD02:        4B            PHK                       ;
CODE_05CD03:        AB            PLB                       ;
CODE_05CD04:        BC 46 0B      LDY $0B46,x               ;
CODE_05CD07:        AD AE 03      LDA $03AE                 ;
CODE_05CD0A:        99 00 09      STA $0900,y               ;
CODE_05CD0D:        18            CLC                       ;
CODE_05CD0E:        69 08         ADC #$08                  ;
CODE_05CD10:        99 04 09      STA $0904,y               ;
CODE_05CD13:        AD B9 03      LDA $03B9                 ;
CODE_05CD16:        99 01 09      STA $0901,y               ;
CODE_05CD19:        99 05 09      STA $0905,y               ;
CODE_05CD1C:        A9 21         LDA #$21                  ;
CODE_05CD1E:        99 03 09      STA $0903,y               ;
CODE_05CD21:        99 07 09      STA $0907,y               ;
CODE_05CD24:        BD 58 0F      LDA $0F58,x               ;
CODE_05CD27:        4A            LSR A                     ;
CODE_05CD28:        4A            LSR A                     ;
CODE_05CD29:        4A            LSR A                     ;
CODE_05CD2A:        C9 03         CMP #$03                  ;
CODE_05CD2C:        D0 23         BNE CODE_05CD51           ;
CODE_05CD2E:        9E 36 0F      STZ $0F36,x               ;
CODE_05CD31:        A9 01         LDA #$01                  ;
CODE_05CD33:        9D 36 0F      STA $0F36,x               ;
CODE_05CD36:        BD 1A 02      LDA $021A,x               ;
CODE_05CD39:        18            CLC                       ;
CODE_05CD3A:        69 10         ADC #$10                  ;
CODE_05CD3C:        9D 62 0F      STA $0F62,x               ;
CODE_05CD3F:        B5 79         LDA $79,x                 ;
CODE_05CD41:        69 00         ADC #$00                  ;
CODE_05CD43:        9D 6B 0F      STA $0F6B,x               ;
CODE_05CD46:        AD B9 03      LDA $03B9                 ;
CODE_05CD49:        9D 74 0F      STA $0F74,x               ;
CODE_05CD4C:        A9 00         LDA #$00                  ;
CODE_05CD4E:        9D 58 0F      STA $0F58,x               ;
CODE_05CD51:        AA            TAX                       ;
CODE_05CD52:        BD E2 CD      LDA DATA_05CDE2,x               ;
CODE_05CD55:        99 02 09      STA $0902,y               ;
CODE_05CD58:        1A            INC A                     ;
CODE_05CD59:        99 06 09      STA $0906,y               ;
CODE_05CD5C:        86 E4         STX $E4                   ;
CODE_05CD5E:        A6 9E         LDX $9E                   ;
CODE_05CD60:        BD 1A 02      LDA $021A,x               ;
CODE_05CD63:        85 E5         STA $E5                   ;
CODE_05CD65:        B5 79         LDA $79,x                 ;
CODE_05CD67:        85 E6         STA $E6                   ;
CODE_05CD69:        C2 20         REP #$20                  ;
CODE_05CD6B:        A5 E5         LDA $E5                   ;
CODE_05CD6D:        38            SEC                       ;
CODE_05CD6E:        E5 42         SBC $42                   ;
CODE_05CD70:        85 E5         STA $E5                   ;
CODE_05CD72:        18            CLC                       ;
CODE_05CD73:        69 08 00      ADC #$0008                ;
CODE_05CD76:        85 E7         STA $E7                   ;
CODE_05CD78:        E2 20         SEP #$20                  ;
CODE_05CD7A:        A9 02         LDA #$02                  ;
CODE_05CD7C:        85 E9         STA $E9                   ;
CODE_05CD7E:        A5 E6         LDA $E6                   ;
CODE_05CD80:        F0 02         BEQ CODE_05CD84           ;
CODE_05CD82:        A9 01         LDA #$01                  ;
CODE_05CD84:        05 E9         ORA $E9                   ;
CODE_05CD86:        99 00 0D      STA $0D00,y               ;
CODE_05CD89:        A5 E8         LDA $E8                   ;
CODE_05CD8B:        F0 02         BEQ CODE_05CD8F           ;
CODE_05CD8D:        A9 01         LDA #$01                  ;
CODE_05CD8F:        05 E9         ORA $E9                   ;
CODE_05CD91:        99 04 0D      STA $0D04,y               ;
CODE_05CD94:        BD 36 0F      LDA $0F36,x               ;
CODE_05CD97:        F0 42         BEQ CODE_05CDDB           ;
CODE_05CD99:        BD 62 0F      LDA $0F62,x               ;
CODE_05CD9C:        85 E5         STA $E5                   ;
CODE_05CD9E:        BD 6B 0F      LDA $0F6B,x               ;
CODE_05CDA1:        85 E6         STA $E6                   ;
CODE_05CDA3:        C2 20         REP #$20                  ;
CODE_05CDA5:        A5 E5         LDA $E5                   ;
CODE_05CDA7:        38            SEC                       ;
CODE_05CDA8:        E5 42         SBC $42                   ;
CODE_05CDAA:        85 E5         STA $E5                   ;
CODE_05CDAC:        E2 20         SEP #$20                  ;
CODE_05CDAE:        A5 E5         LDA $E5                   ;
CODE_05CDB0:        99 08 09      STA $0908,y               ;
CODE_05CDB3:        BD 58 0F      LDA $0F58,x               ;
CODE_05CDB6:        4A            LSR A                     ;
CODE_05CDB7:        18            CLC                       ;
CODE_05CDB8:        69 04         ADC #$04                  ;
CODE_05CDBA:        18            CLC                       ;
CODE_05CDBB:        7D 74 0F      ADC $0F74,x               ;
CODE_05CDBE:        99 09 09      STA $0909,y               ;
CODE_05CDC1:        A6 E4         LDX $E4                   ;
CODE_05CDC3:        BD E5 CD      LDA DATA_05CDE5,x               ;
CODE_05CDC6:        99 0A 09      STA $090A,y               ;
CODE_05CDC9:        A9 28         LDA #$28                  ;
CODE_05CDCB:        99 0B 09      STA $090B,y               ;
CODE_05CDCE:        64 E9         STZ $E9                   ;
CODE_05CDD0:        A5 E6         LDA $E6                   ;
CODE_05CDD2:        F0 02         BEQ CODE_05CDD6           ;
CODE_05CDD4:        A9 01         LDA #$01                  ;
CODE_05CDD6:        05 E9         ORA $E9                   ;
CODE_05CDD8:        99 08 0D      STA $0D08,y               ;
CODE_05CDDB:        A6 9E         LDX $9E                   ;
CODE_05CDDD:        FE 58 0F      INC $0F58,x               ;
CODE_05CDE0:        AB            PLB                       ;
CODE_05CDE1:        6B            RTL                       ;

DATA_05CDE2:        db $86,$A6,$89

DATA_05CDE5:        db $30,$31,$32,$06,$0A,$0E

CODE_05CDEB:        8B            PHB                       ;
CODE_05CDEC:        4B            PHK                       ;
CODE_05CDED:        AB            PLB                       ;
CODE_05CDEE:        A0 04         LDY #$04                  ;
CODE_05CDF0:        8C FF 02      STY $02FF                 ;
CODE_05CDF3:        AD AE 03      LDA $03AE                 ;
CODE_05CDF6:        38            SEC                       ;
CODE_05CDF7:        E9 08         SBC #$08                  ;
CODE_05CDF9:        85 E4         STA $E4                   ;
CODE_05CDFB:        A2 00         LDX #$00                  ;
CODE_05CDFD:        BD 1B CF      LDA DATA_05CF1B,x               ;
CODE_05CE00:        18            CLC                       ;
CODE_05CE01:        65 E4         ADC $E4                   ;
CODE_05CE03:        99 00 08      STA $0800,y               ;
CODE_05CE06:        AD B9 03      LDA $03B9                 ;
CODE_05CE09:        38            SEC                       ;
CODE_05CE0A:        E9 04         SBC #$04                  ;
CODE_05CE0C:        99 01 08      STA $0801,y               ;
CODE_05CE0F:        DA            PHX                       ;
CODE_05CE10:        A5 09         LDA $09                   ;
CODE_05CE12:        29 18         AND #$18                  ;
CODE_05CE14:        86 E5         STX $E5                   ;
CODE_05CE16:        18            CLC                       ;
CODE_05CE17:        65 E5         ADC $E5                   ;
CODE_05CE19:        AA            TAX                       ;
CODE_05CE1A:        BD FB CE      LDA DATA_05CEFB,x               ;
CODE_05CE1D:        99 03 08      STA $0803,y               ;
CODE_05CE20:        BD DB CE      LDA DATA_05CEDB,x               ;
CODE_05CE23:        99 02 08      STA $0802,y               ;
CODE_05CE26:        FA            PLX                       ;
CODE_05CE27:        C8            INY                       ;
CODE_05CE28:        C8            INY                       ;
CODE_05CE29:        C8            INY                       ;
CODE_05CE2A:        C8            INY                       ;
CODE_05CE2B:        E8            INX                       ;
CODE_05CE2C:        E0 05         CPX #$05                  ;
CODE_05CE2E:        D0 CD         BNE CODE_05CDFD           ;
CODE_05CE30:        A6 9E         LDX $9E                   ;
CODE_05CE32:        BD 1A 02      LDA $021A,x               ;
CODE_05CE35:        85 E5         STA $E5                   ;
CODE_05CE37:        B5 79         LDA $79,x                 ;
CODE_05CE39:        85 E6         STA $E6                   ;
CODE_05CE3B:        C2 20         REP #$20                  ;
CODE_05CE3D:        A5 E5         LDA $E5                   ;
CODE_05CE3F:        38            SEC                       ;
CODE_05CE40:        E9 08 00      SBC #$0008                ;
CODE_05CE43:        38            SEC                       ;
CODE_05CE44:        E5 42         SBC $42                   ;
CODE_05CE46:        85 E9         STA $E9                   ;
CODE_05CE48:        18            CLC                       ;
CODE_05CE49:        69 10 00      ADC #$0010                ;
CODE_05CE4C:        85 E8         STA $E8                   ;
CODE_05CE4E:        18            CLC                       ;
CODE_05CE4F:        69 04 00      ADC #$0004                ;
CODE_05CE52:        85 DF         STA $DF                   ;
CODE_05CE54:        18            CLC                       ;
CODE_05CE55:        69 08 00      ADC #$0008                ;
CODE_05CE58:        85 DD         STA $DD                   ;
CODE_05CE5A:        18            CLC                       ;
CODE_05CE5B:        69 04 00      ADC #$0004                ;
CODE_05CE5E:        85 E7         STA $E7                   ;
CODE_05CE60:        18            CLC                       ;
CODE_05CE61:        69 10 00      ADC #$0010                ;
CODE_05CE64:        85 E6         STA $E6                   ;
CODE_05CE66:        38            SEC                       ;
CODE_05CE67:        E9 10 00      SBC #$0010                ;
CODE_05CE6A:        85 E5         STA $E5                   ;
CODE_05CE6C:        E2 20         SEP #$20                  ;
CODE_05CE6E:        A9 02         LDA #$02                  ;
CODE_05CE70:        85 E4         STA $E4                   ;
CODE_05CE72:        A0 04         LDY #$04                  ;
CODE_05CE74:        A2 05         LDX #$05                  ;
CODE_05CE76:        B5 E5         LDA $E5,x                 ;
CODE_05CE78:        F0 02         BEQ CODE_05CE7C           ;
CODE_05CE7A:        A9 01         LDA #$01                  ;
CODE_05CE7C:        05 E4         ORA $E4                   ;
CODE_05CE7E:        99 00 0C      STA $0C00,y               ;
CODE_05CE81:        C8            INY                       ;
CODE_05CE82:        C8            INY                       ;
CODE_05CE83:        C8            INY                       ;
CODE_05CE84:        C8            INY                       ;
CODE_05CE85:        CA            DEX                       ;
CODE_05CE86:        D0 EE         BNE CODE_05CE76           ;
CODE_05CE88:        64 E4         STZ $E4                   ;
CODE_05CE8A:        AD CC 06      LDA $06CC                 ;
CODE_05CE8D:        D0 17         BNE CODE_05CEA6           ;
CODE_05CE8F:        A9 F0         LDA #$F0                  ;
CODE_05CE91:        8D 15 08      STA $0815                 ;
CODE_05CE94:        A5 DE         LDA $DE                   ;
CODE_05CE96:        F0 02         BEQ CODE_05CE9A           ;
CODE_05CE98:        A9 01         LDA #$01                  ;
CODE_05CE9A:        05 E4         ORA $E4                   ;
CODE_05CE9C:        8D 00 0C      STA $0C00                 ;
CODE_05CE9F:        A5 DD         LDA $DD                   ;
CODE_05CEA1:        8D 00 08      STA $0800                 ;
CODE_05CEA4:        80 18         BRA CODE_05CEBE           ;

CODE_05CEA6:        A9 F0         LDA #$F0                  ;
CODE_05CEA8:        8D 0D 08      STA $080D                 ;
CODE_05CEAB:        8D 11 08      STA $0811                 ;
CODE_05CEAE:        A5 E0         LDA $E0                   ;
CODE_05CEB0:        F0 02         BEQ CODE_05CEB4           ;
CODE_05CEB2:        A9 01         LDA #$01                  ;
CODE_05CEB4:        05 E4         ORA $E4                   ;
CODE_05CEB6:        8D 00 0C      STA $0C00                 ;
CODE_05CEB9:        A5 DF         LDA $DF                   ;
CODE_05CEBB:        8D 00 08      STA $0800                 ;
CODE_05CEBE:        A5 09         LDA $09                   ;
CODE_05CEC0:        29 10         AND #$10                  ;
CODE_05CEC2:        4A            LSR A                     ;
CODE_05CEC3:        4A            LSR A                     ;
CODE_05CEC4:        4A            LSR A                     ;
CODE_05CEC5:        4A            LSR A                     ;
CODE_05CEC6:        18            CLC                       ;
CODE_05CEC7:        6D B9 03      ADC $03B9                 ;
CODE_05CECA:        8D 01 08      STA $0801                 ;
CODE_05CECD:        A9 E7         LDA #$E7                  ;
CODE_05CECF:        8D 02 08      STA $0802                 ;
CODE_05CED2:        A9 2C         LDA #$2C                  ;
CODE_05CED4:        8D 03 08      STA $0803                 ;
CODE_05CED7:        A6 9E         LDX $9E                   ;
CODE_05CED9:        AB            PLB                       ;
CODE_05CEDA:        6B            RTL                       ;

DATA_05CEDB:        db $40,$41,$41,$42,$42,$00,$00,$00 ;
                    db $60,$61,$61,$62,$62,$00,$00,$00 ;
                    db $42,$41,$41,$40,$40,$00,$00,$00 ;
                    db $62,$61,$61,$60,$60,$00,$00,$00 ;

DATA_05CEFB:        db $2A,$6A,$6A,$2A,$2A,$00,$00,$00 ;
                    db $2A,$6A,$6A,$2A,$2A,$00,$00,$00 ;
                    db $6A,$2A,$2A,$6A,$6A,$00,$00,$00 ;
                    db $6A,$2A,$2A,$6A,$6A,$00,$00,$00 ;

DATA_05CF1B:        db $00,$10,$20,$30,$20 ;

DATA_05CF20:        db $C0,$E0,$C4,$C2,$E2,$C5,$C6,$E6 ;
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

DATA_05CF74:        db $00,$01,$01,$00,$02,$02,$03,$04 ;
                    db $05,$06 ;

DATA_05CF7E:        db $08,$09 ;

DATA_05CF80:        db $EE,$EE,$EE,$00,$F6,$F6,$F6,$00 ;
                    db $EC,$EC,$EC,$00,$00 ;

DATA_05CF8D:        db $00,$00,$E8,$E8,$E8,$00,$F2,$F2 ;
                    db $F2,$00,$FA,$FA,$FA ;

DATA_05CF9A:        db $EA,$EA,$EA,$00,$E5,$E5,$E5,$00 ;
                    db $E4,$E4,$E4,$00,$00 ;

DATA_05CFA7:        db $00,$00,$E8,$E8,$E8,$00,$ED,$ED ;
                    db $ED,$00,$E5,$E5,$E5 ;

DATA_05CFB4:        db $A9,$B9,$E8,$00,$A9,$B9,$E8,$00 ;
                    db $A9,$B9,$E8,$00,$00 ;

DATA_05CFC1:        db $00,$00,$A9,$B9,$E8,$00,$A9,$B9 ;
                    db $E8,$00,$A9,$B9,$E8 ;

DATA_05CFCE:        db $27,$27,$26,$27,$27,$27,$26,$27 ;
                    db $27,$27,$26,$27,$27 ;

DATA_05CFDB:        db $27,$27,$27,$27,$26,$27,$27,$27 ;
                    db $26,$27,$27,$27,$26 ;

CODE_05CFE8:        DA            PHX                       ;
CODE_05CFE9:        EE CA 03      INC $03CA                 ;
CODE_05CFEC:        AD CA 03      LDA $03CA                 ;
CODE_05CFEF:        C9 34         CMP #$34                  ;
CODE_05CFF1:        B0 5D         BCS CODE_05D050           ;
CODE_05CFF3:        4A            LSR A                     ;
CODE_05CFF4:        4A            LSR A                     ;
CODE_05CFF5:        AA            TAX                       ;
CODE_05CFF6:        BD 80 CF      LDA DATA_05CF80,x               ;
CODE_05CFF9:        18            CLC                       ;
CODE_05CFFA:        6D AE 03      ADC $03AE                 ;
CODE_05CFFD:        18            CLC                       ;
CODE_05CFFE:        69 18         ADC #$18                  ;
CODE_05D000:        8D F8 08      STA $08F8                 ;
CODE_05D003:        BD 8D CF      LDA DATA_05CF8D,x               ;
CODE_05D006:        18            CLC                       ;
CODE_05D007:        6D AE 03      ADC $03AE                 ;
CODE_05D00A:        18            CLC                       ;
CODE_05D00B:        69 18         ADC #$18                  ;
CODE_05D00D:        8D FC 08      STA $08FC                 ;
CODE_05D010:        BD 9A CF      LDA DATA_05CF9A,x               ;
CODE_05D013:        D0 04         BNE CODE_05D019           ;
CODE_05D015:        A9 F0         LDA #$F0                  ;
CODE_05D017:        80 07         BRA CODE_05D020           ;

CODE_05D019:        18            CLC                       ;
CODE_05D01A:        6D B9 03      ADC $03B9                 ;
CODE_05D01D:        18            CLC                       ;
CODE_05D01E:        69 10         ADC #$10                  ;
CODE_05D020:        8D F9 08      STA $08F9                 ;
CODE_05D023:        BD A7 CF      LDA DATA_05CFA7,x               ;
CODE_05D026:        D0 04         BNE CODE_05D02C           ;
CODE_05D028:        A9 F0         LDA #$F0                  ;
CODE_05D02A:        80 07         BRA CODE_05D033           ;

CODE_05D02C:        18            CLC                       ;
CODE_05D02D:        69 10         ADC #$10                  ;
CODE_05D02F:        18            CLC                       ;
CODE_05D030:        6D B9 03      ADC $03B9                 ;
CODE_05D033:        8D FD 08      STA $08FD                 ;
CODE_05D036:        BD B4 CF      LDA DATA_05CFB4,x               ;
CODE_05D039:        8D FA 08      STA $08FA                 ;
CODE_05D03C:        BD C1 CF      LDA DATA_05CFC1,x               ;
CODE_05D03F:        8D FE 08      STA $08FE                 ;
CODE_05D042:        BD CE CF      LDA DATA_05CFCE,x               ;
CODE_05D045:        8D FB 08      STA $08FB                 ;
CODE_05D048:        BD DB CF      LDA DATA_05CFDB,x               ;
CODE_05D04B:        8D FF 08      STA $08FF                 ;
CODE_05D04E:        80 03         BRA CODE_05D053           ;

CODE_05D050:        9C CB 03      STZ $03CB                 ;
CODE_05D053:        FA            PLX                       ;
CODE_05D054:        60            RTS                       ;

CODE_05D055:        8B            PHB                       ;
CODE_05D056:        4B            PHK                       ;
CODE_05D057:        AB            PLB                       ;
CODE_05D058:        AD CB 03      LDA $03CB                 ;
CODE_05D05B:        F0 03         BEQ CODE_05D060           ;
CODE_05D05D:        20 E8 CF      JSR CODE_05CFE8           ;
CODE_05D060:        AD 4C 0F      LDA $0F4C                 ;
CODE_05D063:        F0 15         BEQ CODE_05D07A           ;
CODE_05D065:        AC 4B 01      LDY $014B                 ;
CODE_05D068:        C0 08         CPY #$08                  ;
CODE_05D06A:        D0 1D         BNE CODE_05D089           ;
CODE_05D06C:        AD 4C 0F      LDA $0F4C                 ;
CODE_05D06F:        4A            LSR A                     ;
CODE_05D070:        4A            LSR A                     ;
CODE_05D071:        29 01         AND #$01                  ;
CODE_05D073:        A8            TAY                       ;
CODE_05D074:        B9 7E CF      LDA DATA_05CF7E,y               ;
CODE_05D077:        A8            TAY                       ;
CODE_05D078:        80 0F         BRA CODE_05D089           ;

CODE_05D07A:        BD 92 07      LDA $0792,x               ;
CODE_05D07D:        D0 03         BNE CODE_05D082           ;
CODE_05D07F:        9C 4B 01      STZ $014B                 ;
CODE_05D082:        AD 4B 01      LDA $014B                 ;
CODE_05D085:        4A            LSR A                     ;
CODE_05D086:        4A            LSR A                     ;
CODE_05D087:        4A            LSR A                     ;
CODE_05D088:        A8            TAY                       ;
CODE_05D089:        B9 74 CF      LDA DATA_05CF74,y               ;
CODE_05D08C:        8D 4C 01      STA $014C                 ;
CODE_05D08F:        BD 46 0B      LDA $0B46,x               ;
CODE_05D092:        A8            TAY                       ;
CODE_05D093:        AD AE 03      LDA $03AE                 ;
CODE_05D096:        99 00 09      STA $0900,y               ;
CODE_05D099:        99 04 09      STA $0904,y               ;
CODE_05D09C:        18            CLC                       ;
CODE_05D09D:        69 08         ADC #$08                  ;
CODE_05D09F:        99 08 09      STA $0908,y               ;
CODE_05D0A2:        18            CLC                       ;
CODE_05D0A3:        69 08         ADC #$08                  ;
CODE_05D0A5:        99 0C 09      STA $090C,y               ;
CODE_05D0A8:        99 10 09      STA $0910,y               ;
CODE_05D0AB:        99 14 09      STA $0914,y               ;
CODE_05D0AE:        AD B9 03      LDA $03B9                 ;
CODE_05D0B1:        99 01 09      STA $0901,y               ;
CODE_05D0B4:        99 0D 09      STA $090D,y               ;
CODE_05D0B7:        18            CLC                       ;
CODE_05D0B8:        69 10         ADC #$10                  ;
CODE_05D0BA:        99 05 09      STA $0905,y               ;
CODE_05D0BD:        99 11 09      STA $0911,y               ;
CODE_05D0C0:        38            SEC                       ;
CODE_05D0C1:        E9 18         SBC #$18                  ;
CODE_05D0C3:        99 09 09      STA $0909,y               ;
CODE_05D0C6:        99 15 09      STA $0915,y               ;
CODE_05D0C9:        B5 47         LDA $47,x                 ;
CODE_05D0CB:        85 DE         STA $DE                   ;
CODE_05D0CD:        C9 01         CMP #$01                  ;
CODE_05D0CF:        F0 04         BEQ CODE_05D0D5           ;
CODE_05D0D1:        A9 61         LDA #$61                  ;
CODE_05D0D3:        80 02         BRA CODE_05D0D7           ;

CODE_05D0D5:        A9 21         LDA #$21                  ;
CODE_05D0D7:        99 03 09      STA $0903,y               ;
CODE_05D0DA:        99 07 09      STA $0907,y               ;
CODE_05D0DD:        99 0B 09      STA $090B,y               ;
CODE_05D0E0:        99 0F 09      STA $090F,y               ;
CODE_05D0E3:        99 13 09      STA $0913,y               ;
CODE_05D0E6:        99 17 09      STA $0917,y               ;
CODE_05D0E9:        86 9E         STX $9E                   ;
CODE_05D0EB:        AD 4C 01      LDA $014C                 ;
CODE_05D0EE:        0A            ASL A                     ;
CODE_05D0EF:        85 DD         STA $DD                   ;
CODE_05D0F1:        0A            ASL A                     ;
CODE_05D0F2:        18            CLC                       ;
CODE_05D0F3:        65 DD         ADC $DD                   ;
CODE_05D0F5:        AA            TAX                       ;
CODE_05D0F6:        18            CLC                       ;
CODE_05D0F7:        69 06         ADC #$06                  ;
CODE_05D0F9:        85 DD         STA $DD                   ;
CODE_05D0FB:        A5 DE         LDA $DE                   ;
CODE_05D0FD:        C9 01         CMP #$01                  ;
CODE_05D0FF:        F0 0B         BEQ CODE_05D10C           ;
CODE_05D101:        A5 DD         LDA $DD                   ;
CODE_05D103:        18            CLC                       ;
CODE_05D104:        69 2A         ADC #$2A                  ;
CODE_05D106:        85 DD         STA $DD                   ;
CODE_05D108:        38            SEC                       ;
CODE_05D109:        E9 06         SBC #$06                  ;
CODE_05D10B:        AA            TAX                       ;
CODE_05D10C:        BD 20 CF      LDA DATA_05CF20,x               ;
CODE_05D10F:        99 02 09      STA $0902,y               ;
CODE_05D112:        A9 02         LDA #$02                  ;
CODE_05D114:        99 00 0D      STA $0D00,y               ;
CODE_05D117:        C8            INY                       ;
CODE_05D118:        C8            INY                       ;
CODE_05D119:        C8            INY                       ;
CODE_05D11A:        C8            INY                       ;
CODE_05D11B:        E8            INX                       ;
CODE_05D11C:        E4 DD         CPX $DD                   ;
CODE_05D11E:        D0 EC         BNE CODE_05D10C           ;
CODE_05D120:        A9 00         LDA #$00                  ;
CODE_05D122:        99 FC 0C      STA $0CFC,y               ;
CODE_05D125:        99 F0 0C      STA $0CF0,y               ;
CODE_05D128:        A6 9E         LDX $9E                   ;
CODE_05D12A:        BD 1A 02      LDA $021A,x               ;
CODE_05D12D:        85 E4         STA $E4                   ;
CODE_05D12F:        B5 79         LDA $79,x                 ;
CODE_05D131:        85 E5         STA $E5                   ;
CODE_05D133:        C2 20         REP #$20                  ;
CODE_05D135:        A5 E4         LDA $E4                   ;
CODE_05D137:        38            SEC                       ;
CODE_05D138:        E5 42         SBC $42                   ;
CODE_05D13A:        85 E4         STA $E4                   ;
CODE_05D13C:        18            CLC                       ;
CODE_05D13D:        69 08 00      ADC #$0008                ;
CODE_05D140:        85 E6         STA $E6                   ;
CODE_05D142:        18            CLC                       ;
CODE_05D143:        69 08 00      ADC #$0008                ;
CODE_05D146:        85 E8         STA $E8                   ;
CODE_05D148:        E2 20         SEP #$20                  ;
CODE_05D14A:        BD 46 0B      LDA $0B46,x               ;
CODE_05D14D:        A8            TAY                       ;
CODE_05D14E:        A5 E5         LDA $E5                   ;
CODE_05D150:        F0 08         BEQ CODE_05D15A           ;
CODE_05D152:        A9 03         LDA #$03                  ;
CODE_05D154:        99 00 0D      STA $0D00,y               ;
CODE_05D157:        99 04 0D      STA $0D04,y               ;
CODE_05D15A:        A5 E7         LDA $E7                   ;
CODE_05D15C:        F0 05         BEQ CODE_05D163           ;
CODE_05D15E:        A9 01         LDA #$01                  ;
CODE_05D160:        99 08 0D      STA $0D08,y               ;
CODE_05D163:        A5 E9         LDA $E9                   ;
CODE_05D165:        F0 0B         BEQ CODE_05D172           ;
CODE_05D167:        A9 01         LDA #$01                  ;
CODE_05D169:        99 0C 0D      STA $0D0C,y               ;
CODE_05D16C:        99 10 0D      STA $0D10,y               ;
CODE_05D16F:        99 14 0D      STA $0D14,y               ;
CODE_05D172:        AD 4C 0F      LDA $0F4C                 ;
CODE_05D175:        D0 12         BNE CODE_05D189           ;
CODE_05D177:        9C 4C 0F      STZ $0F4C                 ;
CODE_05D17A:        EE 4B 01      INC $014B                 ;
CODE_05D17D:        AD 4B 01      LDA $014B                 ;
CODE_05D180:        C9 30         CMP #$30                  ;
CODE_05D182:        90 29         BCC CODE_05D1AD           ;
CODE_05D184:        9C 4B 01      STZ $014B                 ;
CODE_05D187:        80 24         BRA CODE_05D1AD           ;

CODE_05D189:        CE 4C 0F      DEC $0F4C                 ;
CODE_05D18C:        AD 4C 0F      LDA $0F4C                 ;
CODE_05D18F:        D0 1C         BNE CODE_05D1AD           ;
CODE_05D191:        AD 4B 01      LDA $014B                 ;
CODE_05D194:        C9 06         CMP #$06                  ;
CODE_05D196:        D0 12         BNE CODE_05D1AA           ;
CODE_05D198:        EE 4B 01      INC $014B                 ;
CODE_05D19B:        A9 28         LDA #$28                  ;\Freeze bowser's animation
CODE_05D19D:        8D 4C 0F      STA $0F4C                 ;/
CODE_05D1A0:        A9 3A         LDA #$3A                  ;\Bowser breathe fire sound
CODE_05D1A2:        8D 00 16      STA $1600                 ;/
CODE_05D1A5:        20 B1 CC      JSR CODE_05CCB1           ;
CODE_05D1A8:        80 03         BRA CODE_05D1AD           ;

CODE_05D1AA:        9C 4B 01      STZ $014B                 ;
CODE_05D1AD:        AD 83 02      LDA $0283                 ;
CODE_05D1B0:        D0 3F         BNE CODE_05D1F1           ;
CODE_05D1B2:        A6 9E         LDX $9E                   ;
CODE_05D1B4:        BC 46 0B      LDY $0B46,x               ;
CODE_05D1B7:        A2 06         LDX #$06                  ;
CODE_05D1B9:        B9 03 09      LDA $0903,y               ;
CODE_05D1BC:        09 80         ORA #$80                  ;
CODE_05D1BE:        99 03 09      STA $0903,y               ;
CODE_05D1C1:        C8            INY                       ;
CODE_05D1C2:        C8            INY                       ;
CODE_05D1C3:        C8            INY                       ;
CODE_05D1C4:        C8            INY                       ;
CODE_05D1C5:        CA            DEX                       ;
CODE_05D1C6:        D0 F1         BNE CODE_05D1B9           ;
CODE_05D1C8:        A6 9E         LDX $9E                   ;
CODE_05D1CA:        BC 46 0B      LDY $0B46,x               ;
CODE_05D1CD:        B9 01 09      LDA $0901,y               ;
CODE_05D1D0:        18            CLC                       ;
CODE_05D1D1:        69 08         ADC #$08                  ;
CODE_05D1D3:        99 01 09      STA $0901,y               ;
CODE_05D1D6:        99 0D 09      STA $090D,y               ;
CODE_05D1D9:        B9 05 09      LDA $0905,y               ;
CODE_05D1DC:        38            SEC                       ;
CODE_05D1DD:        E9 18         SBC #$18                  ;
CODE_05D1DF:        99 05 09      STA $0905,y               ;
CODE_05D1E2:        99 11 09      STA $0911,y               ;
CODE_05D1E5:        B9 09 09      LDA $0909,y               ;
CODE_05D1E8:        18            CLC                       ;
CODE_05D1E9:        69 20         ADC #$20                  ;
CODE_05D1EB:        99 09 09      STA $0909,y               ;
CODE_05D1EE:        99 15 09      STA $0915,y               ;
CODE_05D1F1:        20 D3 C9      JSR CODE_05C9D3           ;
CODE_05D1F4:        AB            PLB                       ;
CODE_05D1F5:        6B            RTL                       ;

CODE_05D1F6:        48            PHA                       ;
CODE_05D1F7:        8B            PHB                       ;
CODE_05D1F8:        4B            PHK                       ;
CODE_05D1F9:        AB            PLB                       ;
CODE_05D1FA:        AD B2 07      LDA $07B2                 ;
CODE_05D1FD:        F0 70         BEQ CODE_05D26F           ;
CODE_05D1FF:        AD F4 0F      LDA $0FF4                 ;
CODE_05D202:        85 E4         STA $E4                   ;
CODE_05D204:        29 C0         AND #$C0                  ;
CODE_05D206:        F0 67         BEQ CODE_05D26F           ;
CODE_05D208:        A5 09         LDA $09                   ;
CODE_05D20A:        29 07         AND #$07                  ;
CODE_05D20C:        D0 61         BNE CODE_05D26F           ;
CODE_05D20E:        A5 E4         LDA $E4                   ;
CODE_05D210:        C9 40         CMP #$40                  ;
CODE_05D212:        D0 12         BNE CODE_05D226           ;
CODE_05D214:        A9 17         LDA #$17                  ;
CODE_05D216:        8D B2 07      STA $07B2                 ;
CODE_05D219:        EE 5F 07      INC $075F                 ;
CODE_05D21C:        AD 5F 07      LDA $075F                 ;
CODE_05D21F:        C9 08         CMP #$08                  ;
CODE_05D221:        90 03         BCC CODE_05D226           ;
CODE_05D223:        9C 5F 07      STZ $075F                 ;
CODE_05D226:        A5 E4         LDA $E4                   ;
CODE_05D228:        C9 80         CMP #$80                  ;
CODE_05D22A:        D0 12         BNE CODE_05D23E           ;
CODE_05D22C:        A9 17         LDA #$17                  ;
CODE_05D22E:        8D B2 07      STA $07B2                 ;
CODE_05D231:        EE 5C 07      INC $075C                 ;
CODE_05D234:        AD 5C 07      LDA $075C                 ;
CODE_05D237:        C9 04         CMP #$04                  ;
CODE_05D239:        90 03         BCC CODE_05D23E           ;
CODE_05D23B:        9C 5C 07      STZ $075C                 ;
CODE_05D23E:        A2 00         LDX #$00                  ;
CODE_05D240:        BD A6 D2      LDA DATA_05D2A6,x               ;
CODE_05D243:        9F 02 17 00   STA $001702,x             ;
CODE_05D247:        E8            INX                       ;
CODE_05D248:        E0 0B         CPX #$0B                  ;
CODE_05D24A:        90 F4         BCC CODE_05D240           ;
CODE_05D24C:        AD 5F 07      LDA $075F                 ;
CODE_05D24F:        18            CLC                       ;
CODE_05D250:        69 01         ADC #$01                  ;
CODE_05D252:        8F 06 17 00   STA $001706               ;
CODE_05D256:        AD 5C 07      LDA $075C                 ;
CODE_05D259:        18            CLC                       ;
CODE_05D25A:        69 01         ADC #$01                  ;
CODE_05D25C:        8F 0A 17 00   STA $00170A               ;
CODE_05D260:        AD 5F 07      LDA $075F                 ;
CODE_05D263:        0A            ASL A                     ;
CODE_05D264:        0A            ASL A                     ;
CODE_05D265:        0D 5C 07      ORA $075C                 ;
CODE_05D268:        AA            TAX                       ;
CODE_05D269:        BD 72 D2      LDA DATA_05D272,x               ;
CODE_05D26C:        8D 60 07      STA $0760                 ;
CODE_05D26F:        AB            PLB                       ;
CODE_05D270:        68            PLA                       ;
CODE_05D271:        6B            RTL                       ;

DATA_05D272:        db $00,$02,$03,$04,$00,$02,$03,$04 ;
                    db $00,$01,$02,$03,$00,$02,$03,$04 ;
                    db $00,$01,$02,$03,$00,$01,$02,$03 ;
                    db $00,$02,$03,$04,$00,$01,$02,$03 ;
                    db $00,$01,$02,$03,$00,$02,$03,$04 ;
                    db $00,$02,$03,$04,$00,$01,$02,$03 ;
                    db $00,$01,$02,$03 ;

DATA_05D2A6:        db $58,$73,$00,$05,$24,$20,$24,$20 ;
                    db $24,$20,$FF ;

CODE_05D2B1:        5A            PHY                       ;
CODE_05D2B2:        A0 00         LDY #$00                  ;
CODE_05D2B4:        B9 25 0B      LDA $0B25,y               ;
CODE_05D2B7:        F0 07         BEQ CODE_05D2C0           ;
CODE_05D2B9:        C8            INY                       ;
CODE_05D2BA:        C0 05         CPY #$05                  ;
CODE_05D2BC:        D0 F6         BNE CODE_05D2B4           ;
CODE_05D2BE:        A0 00         LDY #$00                  ;
CODE_05D2C0:        A9 01         LDA #$01                  ;
CODE_05D2C2:        99 25 0B      STA $0B25,y               ;
CODE_05D2C5:        B5 5E         LDA $5E,x                 ;
CODE_05D2C7:        10 17         BPL CODE_05D2E0           ;
CODE_05D2C9:        B5 79         LDA $79,x                 ;
CODE_05D2CB:        EB            XBA                       ;
CODE_05D2CC:        BD 1A 02      LDA $021A,x               ;
CODE_05D2CF:        C2 20         REP #$20                  ;
CODE_05D2D1:        38            SEC                       ;
CODE_05D2D2:        E9 08 00      SBC #$0008                ;
CODE_05D2D5:        E2 20         SEP #$20                  ;
CODE_05D2D7:        99 2F 0B      STA $0B2F,y               ;
CODE_05D2DA:        EB            XBA                       ;
CODE_05D2DB:        99 2A 0B      STA $0B2A,y               ;
CODE_05D2DE:        80 15         BRA CODE_05D2F5           ;

CODE_05D2E0:        B5 79         LDA $79,x                 ;
CODE_05D2E2:        EB            XBA                       ;
CODE_05D2E3:        BD 1A 02      LDA $021A,x               ;
CODE_05D2E6:        C2 20         REP #$20                  ;
CODE_05D2E8:        18            CLC                       ;
CODE_05D2E9:        69 08 00      ADC #$0008                ;
CODE_05D2EC:        E2 20         SEP #$20                  ;
CODE_05D2EE:        99 2F 0B      STA $0B2F,y               ;
CODE_05D2F1:        EB            XBA                       ;
CODE_05D2F2:        99 2A 0B      STA $0B2A,y               ;
CODE_05D2F5:        AD B9 03      LDA $03B9                 ;
CODE_05D2F8:        18            CLC                       ;
CODE_05D2F9:        69 0C         ADC #$0C                  ;
CODE_05D2FB:        99 34 0B      STA $0B34,y               ;
CODE_05D2FE:        7A            PLY                       ;
CODE_05D2FF:        6B            RTL                       ;

CODE_05D300:        8B            PHB                       ;
CODE_05D301:        4B            PHK                       ;
CODE_05D302:        AB            PLB                       ;
CODE_05D303:        DA            PHX                       ;
CODE_05D304:        5A            PHY                       ;
CODE_05D305:        A2 00         LDX #$00                  ;
CODE_05D307:        BD 6D D4      LDA DATA_05D46D,x               ;
CODE_05D30A:        A8            TAY                       ;
CODE_05D30B:        BD 25 0B      LDA $0B25,x               ;
CODE_05D30E:        F0 20         BEQ CODE_05D330           ;
CODE_05D310:        29 0C         AND #$0C                  ;
CODE_05D312:        85 E4         STA $E4                   ;
CODE_05D314:        D0 05         BNE CODE_05D31B           ;
CODE_05D316:        20 39 D3      JSR CODE_05D339           ;
CODE_05D319:        80 15         BRA CODE_05D330           ;

CODE_05D31B:        C9 04         CMP #$04                  ;
CODE_05D31D:        D0 05         BNE CODE_05D324           ;
CODE_05D31F:        20 74 D3      JSR CODE_05D374           ;
CODE_05D322:        80 0C         BRA CODE_05D330           ;

CODE_05D324:        C9 08         CMP #$08                  ;
CODE_05D326:        D0 05         BNE CODE_05D32D           ;
CODE_05D328:        20 B4 D3      JSR CODE_05D3B4           ;
CODE_05D32B:        80 03         BRA CODE_05D330           ;

CODE_05D32D:        9E 25 0B      STZ $0B25,x               ;
CODE_05D330:        E8            INX                       ;
CODE_05D331:        E0 05         CPX #$05                  ;
CODE_05D333:        D0 D2         BNE CODE_05D307           ;
CODE_05D335:        7A            PLY                       ;
CODE_05D336:        FA            PLX                       ;
CODE_05D337:        AB            PLB                       ;
CODE_05D338:        6B            RTL                       ;

CODE_05D339:        20 58 D4      JSR CODE_05D458           ;
CODE_05D33C:        AD 3B 0B      LDA $0B3B                 ;
CODE_05D33F:        18            CLC                       ;
CODE_05D340:        69 04         ADC #$04                  ;
CODE_05D342:        99 01 08      STA $0801,y               ;
CODE_05D345:        A9 26         LDA #$26                  ;
CODE_05D347:        99 02 08      STA $0802,y               ;
CODE_05D34A:        A9 25         LDA #$25                  ;
CODE_05D34C:        99 03 08      STA $0803,y               ;
CODE_05D34F:        C2 20         REP #$20                  ;
CODE_05D351:        AD 39 0B      LDA $0B39                 ;
CODE_05D354:        18            CLC                       ;
CODE_05D355:        69 04 00      ADC #$0004                ;
CODE_05D358:        38            SEC                       ;
CODE_05D359:        E5 42         SBC $42                   ;
CODE_05D35B:        8D 39 0B      STA $0B39                 ;
CODE_05D35E:        E2 20         SEP #$20                  ;
CODE_05D360:        AD 39 0B      LDA $0B39                 ;
CODE_05D363:        99 00 08      STA $0800,y               ;
CODE_05D366:        AD 3A 0B      LDA $0B3A                 ;
CODE_05D369:        F0 02         BEQ CODE_05D36D           ;
CODE_05D36B:        A9 01         LDA #$01                  ;
CODE_05D36D:        99 00 0C      STA $0C00,y               ;
CODE_05D370:        FE 25 0B      INC $0B25,x               ;
CODE_05D373:        60            RTS                       ;

CODE_05D374:        20 58 D4      JSR CODE_05D458           ;
CODE_05D377:        AD 3B 0B      LDA $0B3B                 ;
CODE_05D37A:        99 01 08      STA $0801,y               ;
CODE_05D37D:        A9 60         LDA #$60                  ;
CODE_05D37F:        99 02 08      STA $0802,y               ;
CODE_05D382:        A9 25         LDA #$25                  ;
CODE_05D384:        99 03 08      STA $0803,y               ;
CODE_05D387:        C2 20         REP #$20                  ;
CODE_05D389:        AD 39 0B      LDA $0B39                 ;
CODE_05D38C:        38            SEC                       ;
CODE_05D38D:        E5 42         SBC $42                   ;
CODE_05D38F:        8D 39 0B      STA $0B39                 ;
CODE_05D392:        E2 20         SEP #$20                  ;
CODE_05D394:        AD 39 0B      LDA $0B39                 ;
CODE_05D397:        99 00 08      STA $0800,y               ;
CODE_05D39A:        AD 3A 0B      LDA $0B3A                 ;
CODE_05D39D:        F0 04         BEQ CODE_05D3A3           ;
CODE_05D39F:        A9 03         LDA #$03                  ;
CODE_05D3A1:        80 02         BRA CODE_05D3A5           ;

CODE_05D3A3:        A9 02         LDA #$02                  ;
CODE_05D3A5:        99 00 0C      STA $0C00,y               ;
CODE_05D3A8:        FE 25 0B      INC $0B25,x               ;
CODE_05D3AB:        60            RTS                       ;

DATA_05D3AC:        db $FF,$FE,$FC,$F9

DATA_05D3B0:        db $01,$02,$04,$07

CODE_05D3B4:        86 F1         STX $F1                   ;
CODE_05D3B6:        20 58 D4      JSR CODE_05D458           ;
CODE_05D3B9:        BD 25 0B      LDA $0B25,x               ;
CODE_05D3BC:        29 03         AND #$03                  ;
CODE_05D3BE:        AA            TAX                       ;
CODE_05D3BF:        AD 3B 0B      LDA $0B3B                 ;
CODE_05D3C2:        18            CLC                       ;
CODE_05D3C3:        7D AC D3      ADC DATA_05D3AC,x               ;
CODE_05D3C6:        99 01 08      STA $0801,y               ;
CODE_05D3C9:        99 05 08      STA $0805,y               ;
CODE_05D3CC:        AD 3B 0B      LDA $0B3B                 ;
CODE_05D3CF:        18            CLC                       ;
CODE_05D3D0:        7D B0 D3      ADC DATA_05D3B0,x               ;
CODE_05D3D3:        18            CLC                       ;
CODE_05D3D4:        69 08         ADC #$08                  ;
CODE_05D3D6:        99 09 08      STA $0809,y               ;
CODE_05D3D9:        99 0D 08      STA $080D,y               ;
CODE_05D3DC:        A9 39         LDA #$39                  ;
CODE_05D3DE:        99 02 08      STA $0802,y               ;
CODE_05D3E1:        99 06 08      STA $0806,y               ;
CODE_05D3E4:        99 0A 08      STA $080A,y               ;
CODE_05D3E7:        99 0E 08      STA $080E,y               ;
CODE_05D3EA:        A9 25         LDA #$25                  ;
CODE_05D3EC:        99 03 08      STA $0803,y               ;
CODE_05D3EF:        99 07 08      STA $0807,y               ;
CODE_05D3F2:        99 0B 08      STA $080B,y               ;
CODE_05D3F5:        99 0F 08      STA $080F,y               ;
CODE_05D3F8:        BD AC D3      LDA DATA_05D3AC,x               ;
CODE_05D3FB:        85 EF         STA $EF                   ;
CODE_05D3FD:        A9 FF         LDA #$FF                  ;
CODE_05D3FF:        85 F0         STA $F0                   ;
CODE_05D401:        C2 20         REP #$20                  ;
CODE_05D403:        AD 39 0B      LDA $0B39                 ;
CODE_05D406:        38            SEC                       ;
CODE_05D407:        E5 42         SBC $42                   ;
CODE_05D409:        18            CLC                       ;
CODE_05D40A:        65 EF         ADC $EF                   ;
CODE_05D40C:        85 ED         STA $ED                   ;
CODE_05D40E:        E2 20         SEP #$20                  ;
CODE_05D410:        A5 ED         LDA $ED                   ;
CODE_05D412:        99 00 08      STA $0800,y               ;
CODE_05D415:        99 08 08      STA $0808,y               ;
CODE_05D418:        A5 EE         LDA $EE                   ;
CODE_05D41A:        F0 02         BEQ CODE_05D41E           ;
CODE_05D41C:        A9 01         LDA #$01                  ;
CODE_05D41E:        99 00 0C      STA $0C00,y               ;
CODE_05D421:        99 08 0C      STA $0C08,y               ;
CODE_05D424:        BD B0 D3      LDA DATA_05D3B0,x               ;
CODE_05D427:        85 EF         STA $EF                   ;
CODE_05D429:        64 F0         STZ $F0                   ;
CODE_05D42B:        C2 20         REP #$20                  ;
CODE_05D42D:        AD 39 0B      LDA $0B39                 ;
CODE_05D430:        18            CLC                       ;
CODE_05D431:        69 08 00      ADC #$0008                ;
CODE_05D434:        38            SEC                       ;
CODE_05D435:        E5 42         SBC $42                   ;
CODE_05D437:        18            CLC                       ;
CODE_05D438:        65 EF         ADC $EF                   ;
CODE_05D43A:        85 ED         STA $ED                   ;
CODE_05D43C:        E2 20         SEP #$20                  ;
CODE_05D43E:        A5 ED         LDA $ED                   ;
CODE_05D440:        99 04 08      STA $0804,y               ;
CODE_05D443:        99 0C 08      STA $080C,y               ;
CODE_05D446:        A5 EE         LDA $EE                   ;
CODE_05D448:        F0 02         BEQ CODE_05D44C           ;
CODE_05D44A:        A9 01         LDA #$01                  ;
CODE_05D44C:        99 04 0C      STA $0C04,y               ;
CODE_05D44F:        99 0C 0C      STA $0C0C,y               ;
CODE_05D452:        A6 F1         LDX $F1                   ;
CODE_05D454:        FE 25 0B      INC $0B25,x               ;
CODE_05D457:        60            RTS                       ;

CODE_05D458:        BD 34 0B      LDA $0B34,x               ;
CODE_05D45B:        8D 3B 0B      STA $0B3B                 ;
CODE_05D45E:        BD 2A 0B      LDA $0B2A,x               ;
CODE_05D461:        EB            XBA                       ;
CODE_05D462:        BD 2F 0B      LDA $0B2F,x               ;
CODE_05D465:        C2 20         REP #$20                  ;
CODE_05D467:        8D 39 0B      STA $0B39                 ;
CODE_05D46A:        E2 20         SEP #$20                  ;
CODE_05D46C:        60            RTS                       ;

DATA_05D46D:        db $00,$10,$20,$40,$50

CODE_05D472:        8B            PHB                       ;
CODE_05D473:        4B            PHK                       ;
CODE_05D474:        AB            PLB                       ;
CODE_05D475:        AD 01 02      LDA $0201                 ;
CODE_05D478:        C9 01         CMP #$01                  ;
CODE_05D47A:        F0 72         BEQ CODE_05D4EE           ;
CODE_05D47C:        AD 5F 07      LDA $075F                 ;
CODE_05D47F:        C9 08         CMP #$08                  ;
CODE_05D481:        F0 6B         BEQ CODE_05D4EE           ;
CODE_05D483:        A5 BA         LDA $BA                   ;
CODE_05D485:        C9 03         CMP #$03                  ;
CODE_05D487:        D0 65         BNE CODE_05D4EE           ;
CODE_05D489:        A5 96         LDA $96                   ;
CODE_05D48B:        D0 5E         BNE CODE_05D4EB           ;
CODE_05D48D:        AD FC 02      LDA $02FC                 ;
CODE_05D490:        F0 5C         BEQ CODE_05D4EE           ;
CODE_05D492:        A2 08         LDX #$08                  ;
CODE_05D494:        B5 1C         LDA $1C,x                 ;
CODE_05D496:        C9 2D         CMP #$2D                  ;
CODE_05D498:        F0 05         BEQ CODE_05D49F           ;
CODE_05D49A:        CA            DEX                       ;
CODE_05D49B:        10 F7         BPL CODE_05D494           ;
CODE_05D49D:        80 23         BRA CODE_05D4C2           ;

CODE_05D49F:        BD 38 02      LDA $0238,x               ;
CODE_05D4A2:        C9 B8         CMP #$B8                  ;
CODE_05D4A4:        90 48         BCC CODE_05D4EE           ;
CODE_05D4A6:        B5 10         LDA $10,x                 ;
CODE_05D4A8:        29 80         AND #$80                  ;
CODE_05D4AA:        D0 EE         BNE CODE_05D49A           ;
CODE_05D4AC:        BD 1A 02      LDA $021A,x               ;
CODE_05D4AF:        18            CLC                       ;
CODE_05D4B0:        69 10         ADC #$10                  ;
CODE_05D4B2:        8D FA 02      STA $02FA                 ;
CODE_05D4B5:        B5 79         LDA $79,x                 ;
CODE_05D4B7:        69 00         ADC #$00                  ;
CODE_05D4B9:        8D FB 02      STA $02FB                 ;
CODE_05D4BC:        A9 08         LDA #$08                  ;
CODE_05D4BE:        85 96         STA $96                   ;
CODE_05D4C0:        80 1F         BRA CODE_05D4E1           ;

CODE_05D4C2:        AE FC 02      LDX $02FC                 ;
CODE_05D4C5:        CA            DEX                       ;
CODE_05D4C6:        BD 38 02      LDA $0238,x               ;
CODE_05D4C9:        C9 B8         CMP #$B8                  ;
CODE_05D4CB:        90 21         BCC CODE_05D4EE           ;
CODE_05D4CD:        BD 1A 02      LDA $021A,x               ;
CODE_05D4D0:        18            CLC                       ;
CODE_05D4D1:        69 04         ADC #$04                  ;
CODE_05D4D3:        8D FA 02      STA $02FA                 ;
CODE_05D4D6:        B5 79         LDA $79,x                 ;
CODE_05D4D8:        69 00         ADC #$00                  ;
CODE_05D4DA:        8D FB 02      STA $02FB                 ;
CODE_05D4DD:        A9 04         LDA #$04                  ;
CODE_05D4DF:        85 96         STA $96                   ;
CODE_05D4E1:        A9 25         LDA #$25                  ;\
CODE_05D4E3:        8D 00 16      STA $1600                 ;/Bowser lands in lava sound impact
CODE_05D4E6:        A9 20         LDA #$20                  ;\
CODE_05D4E8:        8D 03 16      STA $1603                 ;/Bowser lands in lava sound
CODE_05D4EB:        20 F2 D4      JSR CODE_05D4F2           ;
CODE_05D4EE:        4C BF E3      JMP CODE_05E3BF           ;

CODE_05D4F1:        6B            RTL                       ;

CODE_05D4F2:        A5 96         LDA $96                   ;
CODE_05D4F4:        85 E4         STA $E4                   ;
CODE_05D4F6:        EE F9 02      INC $02F9                 ;
CODE_05D4F9:        AD F9 02      LDA $02F9                 ;
CODE_05D4FC:        4A            LSR A                     ;
CODE_05D4FD:        4A            LSR A                     ;
CODE_05D4FE:        C9 06         CMP #$06                  ;
CODE_05D500:        B0 5B         BCS CODE_05D55D           ;
CODE_05D502:        85 DD         STA $DD                   ;
CODE_05D504:        0A            ASL A                     ;
CODE_05D505:        0A            ASL A                     ;
CODE_05D506:        0A            ASL A                     ;
CODE_05D507:        AA            TAX                       ;
CODE_05D508:        A0 20         LDY #$20                  ;
CODE_05D50A:        64 E9         STZ $E9                   ;
CODE_05D50C:        8A            TXA                       ;
CODE_05D50D:        29 01         AND #$01                  ;
CODE_05D50F:        18            CLC                       ;
CODE_05D510:        69 FF         ADC #$FF                  ;
CODE_05D512:        85 E8         STA $E8                   ;
CODE_05D514:        BD 63 D5      LDA DATA_05D563,x               ;
CODE_05D517:        85 E7         STA $E7                   ;
CODE_05D519:        C2 20         REP #$20                  ;
CODE_05D51B:        A5 E7         LDA $E7                   ;
CODE_05D51D:        18            CLC                       ;
CODE_05D51E:        6D FA 02      ADC $02FA                 ;
CODE_05D521:        38            SEC                       ;
CODE_05D522:        E5 42         SBC $42                   ;
CODE_05D524:        85 E7         STA $E7                   ;
CODE_05D526:        E2 20         SEP #$20                  ;
CODE_05D528:        A5 E7         LDA $E7                   ;
CODE_05D52A:        99 00 08      STA $0800,y               ;
CODE_05D52D:        A5 E8         LDA $E8                   ;
CODE_05D52F:        F0 02         BEQ CODE_05D533           ;
CODE_05D531:        A9 00         LDA #$00                  ;
CODE_05D533:        05 E9         ORA $E9                   ;
CODE_05D535:        99 00 0C      STA $0C00,y               ;
CODE_05D538:        BD 8B D5      LDA DATA_05D58B,x               ;
CODE_05D53B:        18            CLC                       ;
CODE_05D53C:        69 D8         ADC #$D8                  ;
CODE_05D53E:        99 01 08      STA $0801,y               ;
CODE_05D541:        DA            PHX                       ;
CODE_05D542:        A6 DD         LDX $DD                   ;
CODE_05D544:        BD BC D5      LDA DATA_05D5BC,x               ;
CODE_05D547:        99 02 08      STA $0802,y               ;
CODE_05D54A:        A6 E4         LDX $E4                   ;
CODE_05D54C:        BD B3 D5      LDA DATA_05D5B3,x               ;
CODE_05D54F:        99 03 08      STA $0803,y               ;
CODE_05D552:        FA            PLX                       ;
CODE_05D553:        C8            INY                       ;
CODE_05D554:        C8            INY                       ;
CODE_05D555:        C8            INY                       ;
CODE_05D556:        C8            INY                       ;
CODE_05D557:        E8            INX                       ;
CODE_05D558:        C6 E4         DEC $E4                   ;
CODE_05D55A:        D0 B0         BNE CODE_05D50C           ;
CODE_05D55C:        60            RTS                       ;

CODE_05D55D:        9C FC 02      STZ $02FC                 ;
CODE_05D560:        64 96         STZ $96                   ;
CODE_05D562:        60            RTS                       ;

DATA_05D563:        db $F6,$02,$F1,$07,$F2,$06,$ED,$0B ;
                    db $F3,$05,$EE,$0A,$EF,$09,$EA,$0E ;
                    db $F1,$07,$EC,$0C,$ED,$0B,$E8,$10 ;
                    db $F0,$08,$EB,$0D,$EC,$0C,$E7,$11 ;
                    db $EF,$09,$EA,$0E,$EB,$0D,$E6,$12 ;

DATA_05D58B:        db $F5,$F5,$F8,$F8,$F1,$F1,$F4,$F4 ;
                    db $F4,$F4,$F7,$F7,$F0,$F0,$F3,$F3 ;
                    db $F2,$F2,$F5,$F5,$EE,$EE,$F1,$F1 ;
                    db $F1,$F1,$F4,$F4,$ED,$ED,$F0,$F0 ;
                    db $F0,$F0,$F3,$F3,$EC,$EC,$EF,$EF ;

DATA_05D5B3:        db $28,$68,$28,$68,$28,$68,$28,$68 ;
                    db $28 ;

DATA_05D5BC:        db $33,$33,$34,$35,$36,$37 ;

DATA_05D5C2:        db $F1,$FF,$F6,$FF,$02,$00,$07,$00 ;
                    db $EE,$FF,$F3,$FF,$05,$00,$0A,$00 ;
                    db $EC,$FF,$F1,$FF,$07,$00,$0C,$00 ;
                    db $EB,$FF,$F0,$FF,$08,$00,$0D,$00 ;
                    db $EA,$FF,$EF,$FF,$09,$00,$0E,$00 ;
                    db $EA,$FF,$EF,$FF,$09,$00,$0E,$00 ;

DATA_05D5F2:        db $F8,$F5,$F5,$F8,$F7,$F4,$F4,$F7 ;
                    db $F5,$F2,$F2,$F5,$F4,$F1,$F1,$F4 ;
                    db $F3,$F0,$F0,$F3,$F3,$F0,$F0,$F3 ;

;tile number lava particles of when podoboo lands in lava
DATA_05D60A:        db $33,$33,$34,$35,$36,$37

DATA_05D610:        db $28,$28,$68,$68

;Podoboo: leave behind fire and lava particles
CODE_05D614:        8B            PHB                       ;
CODE_05D615:        4B            PHK                       ;
CODE_05D616:        AB            PLB                       ;
CODE_05D617:        DA            PHX                       ;
CODE_05D618:        5A            PHY                       ;
CODE_05D619:        BD 00 0B      LDA $0B00,x               ;\
CODE_05D61C:        C9 02         CMP #$02                  ; | Check if you left a fire particle mid-air
CODE_05D61E:        F0 37         BEQ CODE_05D657           ;/ If so, return
CODE_05D620:        4A            LSR A                     ;\ Check if you landed in lava just now
CODE_05D621:        90 49         BCC CODE_05D66C           ;/ If so, return
CODE_05D623:        BD 09 0B      LDA $0B09,x               ;\
CODE_05D626:        4A            LSR A                     ; |
CODE_05D627:        4A            LSR A                     ; |if $18, branch
CODE_05D628:        C9 06         CMP #$06                  ; |
CODE_05D62A:        F0 2D         BEQ CODE_05D659           ;/
CODE_05D62C:        A8            TAY                       ;
CODE_05D62D:        B9 0A D6      LDA DATA_05D60A,y               ;\ Particle tile number in $ED
CODE_05D630:        85 ED         STA $ED                   ;/
CODE_05D632:        BD 1A 02      LDA $021A,x               ;\ Store 16-bit sprite x position into $00
CODE_05D635:        85 00         STA $00                   ; |
CODE_05D637:        B5 79         LDA $79,x                 ; |
CODE_05D639:        85 01         STA $01                   ; |
CODE_05D63B:        C2 20         REP #$20                  ;\|
CODE_05D63D:        A5 00         LDA $00                   ; |
CODE_05D63F:        18            CLC                       ; |Add 8 pixels to it, but subtract the left edge x-coordinate of the screen. store into $00-01 
CODE_05D640:        69 08 00      ADC #$0008                ; |
CODE_05D643:        38            SEC                       ; |
CODE_05D644:        E5 42         SBC $42                   ; |
CODE_05D646:        85 00         STA $00                   ; |
CODE_05D648:        E2 20         SEP #$20                  ;/
CODE_05D64A:        BD 46 0B      LDA $0B46,x               ;
CODE_05D64D:        18            CLC                       ;
CODE_05D64E:        69 04         ADC #$04                  ;
CODE_05D650:        85 F2         STA $F2                   ;
CODE_05D652:        20 3C D7      JSR CODE_05D73C           ;
CODE_05D655:        80 15         BRA CODE_05D66C           ;

CODE_05D657:        80 44         BRA CODE_05D69D           ;

CODE_05D659:        FE 00 0B      INC $0B00,x               ; Executes after a particle has been placed.
CODE_05D65C:        9E 09 0B      STZ $0B09,x               ;
CODE_05D65F:        BD 00 0B      LDA $0B00,x               ;\
CODE_05D662:        C9 02         CMP #$02                  ; |
CODE_05D664:        D0 06         BNE CODE_05D66C           ; | If the generated particle in question is the mid-air fire particle
CODE_05D666:        BD 38 02      LDA $0238,x               ;\| Set Y position of mid-air particle
CODE_05D669:        9D 12 0B      STA $0B12,x               ;/
CODE_05D66C:        7A            PLY                       ; Return
CODE_05D66D:        FA            PLX                       ;
CODE_05D66E:        AB            PLB                       ;
CODE_05D66F:        6B            RTL                       ;

DATA_05D670:        db $FF,$FF,$FA,$FF,$FA,$FF,$FA,$FF ;
                    db $FF,$FF ;

DATA_05D67A:        db $00,$00,$00,$00,$00,$00,$FE,$FF ;
                    db $FE,$FF ;

DATA_05D684:        db $FF,$00,$00,$00,$FF ;

DATA_05D689:        db $12,$12,$12,$10,$10 ;

DATA_05D68E:        db $FC,$30,$31,$32,$FC ;

DATA_05D693:        db $30,$31,$32,$FC,$FC ;

DATA_05D698:        db $FF,$FF,$FF,$00,$00 ;


CODE_05D69D:        BD 09 0B      LDA $0B09,x               ;\
CODE_05D6A0:        4A            LSR A                     ; |
CODE_05D6A1:        4A            LSR A                     ; |If less than #$28, branch
CODE_05D6A2:        4A            LSR A                     ; |
CODE_05D6A3:        C9 05         CMP #$05                  ; |
CODE_05D6A5:        90 08         BCC CODE_05D6AF           ;/
CODE_05D6A7:        A9 30         LDA #$30                  ;\If $28 or higher, just set it to $30
CODE_05D6A9:        9D 09 0B      STA $0B09,x               ; |
CODE_05D6AC:        4C 39 D7      JMP CODE_05D739           ;/Then return

CODE_05D6AF:        85 EB         STA $EB                   ;
CODE_05D6B1:        0A            ASL A                     ;
CODE_05D6B2:        A8            TAY                       ;
CODE_05D6B3:        BD 1A 02      LDA $021A,x               ;
CODE_05D6B6:        85 00         STA $00                   ;
CODE_05D6B8:        B5 79         LDA $79,x                 ;
CODE_05D6BA:        85 01         STA $01                   ;
CODE_05D6BC:        C2 20         REP #$20                  ;
CODE_05D6BE:        A5 00         LDA $00                   ;
CODE_05D6C0:        18            CLC                       ;
CODE_05D6C1:        69 08 00      ADC #$0008                ;
CODE_05D6C4:        38            SEC                       ;
CODE_05D6C5:        E5 42         SBC $42                   ;
CODE_05D6C7:        48            PHA                       ;
CODE_05D6C8:        18            CLC                       ;
CODE_05D6C9:        79 70 D6      ADC DATA_05D670,y               ;
CODE_05D6CC:        85 00         STA $00                   ;
CODE_05D6CE:        68            PLA                       ;
CODE_05D6CF:        18            CLC                       ;
CODE_05D6D0:        79 7A D6      ADC DATA_05D67A,y               ;
CODE_05D6D3:        85 02         STA $02                   ;
CODE_05D6D5:        E2 20         SEP #$20                  ;
CODE_05D6D7:        A4 EB         LDY $EB                   ;
CODE_05D6D9:        B9 98 D6      LDA DATA_05D698,y               ;
CODE_05D6DC:        18            CLC                       ;
CODE_05D6DD:        7D 12 0B      ADC $0B12,x               ;
CODE_05D6E0:        9D 12 0B      STA $0B12,x               ;
CODE_05D6E3:        B9 84 D6      LDA DATA_05D684,y               ;
CODE_05D6E6:        18            CLC                       ;
CODE_05D6E7:        7D 12 0B      ADC $0B12,x               ;
CODE_05D6EA:        85 04         STA $04                   ;
CODE_05D6EC:        B9 89 D6      LDA DATA_05D689,y               ;
CODE_05D6EF:        18            CLC                       ;
CODE_05D6F0:        7D 12 0B      ADC $0B12,x               ;
CODE_05D6F3:        85 ED         STA $ED                   ;
CODE_05D6F5:        BD 46 0B      LDA $0B46,x               ;
CODE_05D6F8:        A8            TAY                       ;
CODE_05D6F9:        C8            INY                       ;
CODE_05D6FA:        C8            INY                       ;
CODE_05D6FB:        C8            INY                       ;
CODE_05D6FC:        C8            INY                       ;
CODE_05D6FD:        A6 EB         LDX $EB                   ;
CODE_05D6FF:        A5 00         LDA $00                   ;
CODE_05D701:        99 00 09      STA $0900,y               ;
CODE_05D704:        A5 02         LDA $02                   ;
CODE_05D706:        99 04 09      STA $0904,y               ;
CODE_05D709:        A5 04         LDA $04                   ;
CODE_05D70B:        99 01 09      STA $0901,y               ;
CODE_05D70E:        A5 ED         LDA $ED                   ;
CODE_05D710:        99 05 09      STA $0905,y               ;
CODE_05D713:        BD 8E D6      LDA DATA_05D68E,x               ;
CODE_05D716:        99 02 09      STA $0902,y               ;
CODE_05D719:        BD 93 D6      LDA DATA_05D693,x               ;
CODE_05D71C:        99 06 09      STA $0906,y               ;
CODE_05D71F:        A9 28         LDA #$28                  ;
CODE_05D721:        99 03 09      STA $0903,y               ;
CODE_05D724:        99 07 09      STA $0907,y               ;
CODE_05D727:        A5 01         LDA $01                   ;
CODE_05D729:        F0 05         BEQ CODE_05D730           ;
CODE_05D72B:        A9 01         LDA #$01                  ;
CODE_05D72D:        99 00 0D      STA $0D00,y               ;
CODE_05D730:        A5 03         LDA $03                   ;
CODE_05D732:        F0 05         BEQ CODE_05D739           ;
CODE_05D734:        A9 01         LDA #$01                  ;
CODE_05D736:        99 04 0D      STA $0D04,y               ;
CODE_05D739:        4C 6C D6      JMP CODE_05D66C           ;

CODE_05D73C:        84 EC         STY $EC                   ;
CODE_05D73E:        A2 00         LDX #$00                  ;
CODE_05D740:        A5 EC         LDA $EC                   ;
CODE_05D742:        0A            ASL A                     ;
CODE_05D743:        0A            ASL A                     ;
CODE_05D744:        85 EB         STA $EB                   ;
CODE_05D746:        8A            TXA                       ;
CODE_05D747:        18            CLC                       ;
CODE_05D748:        65 EB         ADC $EB                   ;
CODE_05D74A:        A8            TAY                       ;
CODE_05D74B:        A9 D8         LDA #$D8                  ;
CODE_05D74D:        18            CLC                       ;
CODE_05D74E:        79 F2 D5      ADC DATA_05D5F2,y               ;
CODE_05D751:        85 EE         STA $EE                   ;
CODE_05D753:        BD 10 D6      LDA DATA_05D610,x               ;
CODE_05D756:        85 EF         STA $EF                   ;
CODE_05D758:        98            TYA                       ;
CODE_05D759:        0A            ASL A                     ;
CODE_05D75A:        A8            TAY                       ;
CODE_05D75B:        C2 20         REP #$20                  ;
CODE_05D75D:        B9 C2 D5      LDA DATA_05D5C2,y               ;
CODE_05D760:        18            CLC                       ;
CODE_05D761:        65 00         ADC $00                   ;
CODE_05D763:        85 F0         STA $F0                   ;
CODE_05D765:        E2 20         SEP #$20                  ;
CODE_05D767:        8A            TXA                       ;
CODE_05D768:        0A            ASL A                     ;
CODE_05D769:        0A            ASL A                     ;
CODE_05D76A:        18            CLC                       ;
CODE_05D76B:        65 F2         ADC $F2                   ;
CODE_05D76D:        A8            TAY                       ;
CODE_05D76E:        A5 F0         LDA $F0                   ;
CODE_05D770:        99 00 09      STA $0900,y               ;
CODE_05D773:        A5 EE         LDA $EE                   ;
CODE_05D775:        99 01 09      STA $0901,y               ;
CODE_05D778:        A5 ED         LDA $ED                   ;
CODE_05D77A:        99 02 09      STA $0902,y               ;
CODE_05D77D:        A5 EF         LDA $EF                   ;
CODE_05D77F:        99 03 09      STA $0903,y               ;
CODE_05D782:        A5 F1         LDA $F1                   ;
CODE_05D784:        F0 05         BEQ CODE_05D78B           ;
CODE_05D786:        A9 01         LDA #$01                  ;
CODE_05D788:        99 00 0D      STA $0D00,y               ;
CODE_05D78B:        E8            INX                       ;
CODE_05D78C:        E0 04         CPX #$04                  ;
CODE_05D78E:        D0 B0         BNE CODE_05D740           ;
CODE_05D790:        60            RTS                       ;

DATA_05D791:        db $1C,$0E,$06,$08

DATA_05D795:        db $18,$16,$1A,$14

DATA_05D799:        db $D0,$E0,$E1,$FC

DATA_05D79D:        db $00,$FC,$F8,$F4

CODE_05D7A1:        8B            PHB                       ;
CODE_05D7A2:        4B            PHK                       ;
CODE_05D7A3:        AB            PLB                       ;
CODE_05D7A4:        DA            PHX                       ;
CODE_05D7A5:        5A            PHY                       ;
CODE_05D7A6:        AD 40 0E      LDA $0E40                 ;
CODE_05D7A9:        D0 03         BNE CODE_05D7AE           ;
CODE_05D7AB:        20 C2 D7      JSR CODE_05D7C2           ;
CODE_05D7AE:        20 D1 D7      JSR CODE_05D7D1           ;
CODE_05D7B1:        AD 42 0E      LDA $0E42                 ;
CODE_05D7B4:        29 20         AND #$20                  ;
CODE_05D7B6:        F0 06         BEQ CODE_05D7BE           ;
CODE_05D7B8:        9C 40 0E      STZ $0E40                 ;
CODE_05D7BB:        9C 41 0E      STZ $0E41                 ;
CODE_05D7BE:        7A            PLY                       ;
CODE_05D7BF:        FA            PLX                       ;
CODE_05D7C0:        AB            PLB                       ;
CODE_05D7C1:        6B            RTL                       ;

CODE_05D7C2:        A2 03         LDX #$03                  ;
CODE_05D7C4:        BD 9D D7      LDA DATA_05D79D,x               ;
CODE_05D7C7:        9D 42 0E      STA $0E42,x               ;
CODE_05D7CA:        CA            DEX                       ;
CODE_05D7CB:        10 F7         BPL CODE_05D7C4           ;
CODE_05D7CD:        EE 40 0E      INC $0E40                 ;
CODE_05D7D0:        60            RTS                       ;

CODE_05D7D1:        A2 03         LDX #$03                  ;
CODE_05D7D3:        A0 30         LDY #$30                  ;
CODE_05D7D5:        BD 42 0E      LDA $0E42,x               ;
CODE_05D7D8:        30 2B         BMI CODE_05D805           ;
CODE_05D7DA:        D0 03         BNE CODE_05D7DF           ;
CODE_05D7DC:        20 15 D8      JSR CODE_05D815           ;
CODE_05D7DF:        4A            LSR A                     ;
CODE_05D7E0:        4A            LSR A                     ;
CODE_05D7E1:        C9 03         CMP #$03                  ;
CODE_05D7E3:        B0 20         BCS CODE_05D805           ;
CODE_05D7E5:        DA            PHX                       ;
CODE_05D7E6:        AA            TAX                       ;
CODE_05D7E7:        BD 99 D7      LDA DATA_05D799,x               ;
CODE_05D7EA:        99 02 08      STA $0802,y               ;
CODE_05D7ED:        A9 38         LDA #$38                  ;
CODE_05D7EF:        99 03 08      STA $0803,y               ;
CODE_05D7F2:        FA            PLX                       ;
CODE_05D7F3:        BD 46 0E      LDA $0E46,x               ;
CODE_05D7F6:        38            SEC                       ;
CODE_05D7F7:        ED 1C 07      SBC $071C                 ;
CODE_05D7FA:        99 00 08      STA $0800,y               ;
CODE_05D7FD:        BD 4A 0E      LDA $0E4A,x               ;
CODE_05D800:        99 01 08      STA $0801,y               ;
CODE_05D803:        80 05         BRA CODE_05D80A           ;

CODE_05D805:        A9 F0         LDA #$F0                  ;
CODE_05D807:        99 01 08      STA $0801,y               ;
CODE_05D80A:        C8            INY                       ;
CODE_05D80B:        C8            INY                       ;
CODE_05D80C:        C8            INY                       ;
CODE_05D80D:        C8            INY                       ;
CODE_05D80E:        FE 42 0E      INC $0E42,x               ;
CODE_05D811:        CA            DEX                       ;
CODE_05D812:        10 C1         BPL CODE_05D7D5           ;
CODE_05D814:        60            RTS                       ;

CODE_05D815:        AD 02 02      LDA $0202                 ;
CODE_05D818:        4A            LSR A                     ;
CODE_05D819:        90 08         BCC CODE_05D823           ;
CODE_05D81B:        AD 19 02      LDA $0219                 ;
CODE_05D81E:        18            CLC                       ;
CODE_05D81F:        69 06         ADC #$06                  ;
CODE_05D821:        80 06         BRA CODE_05D829           ;

CODE_05D823:        AD 19 02      LDA $0219                 ;
CODE_05D826:        18            CLC                       ;
CODE_05D827:        69 02         ADC #$02                  ;
CODE_05D829:        9D 46 0E      STA $0E46,x               ;
CODE_05D82C:        AD D5 06      LDA $06D5                 ;
CODE_05D82F:        C9 18         CMP #$18                  ;
CODE_05D831:        F0 04         BEQ CODE_05D837           ;
CODE_05D833:        C9 78         CMP #$78                  ;
CODE_05D835:        D0 13         BNE CODE_05D84A           ;
CODE_05D837:        AD B8 07      LDA $07B8                 ;
CODE_05D83A:        29 04         AND #$04                  ;
CODE_05D83C:        38            SEC                       ;
CODE_05D83D:        E9 02         SBC #$02                  ;
CODE_05D83F:        18            CLC                       ;
CODE_05D840:        6D B8 03      ADC $03B8                 ;
CODE_05D843:        6D 95 D7      ADC DATA_05D795                 ;
CODE_05D846:        9D 4A 0E      STA $0E4A,x               ;
CODE_05D849:        60            RTS                       ;

CODE_05D84A:        A9 F8         LDA #$F8                  ;
CODE_05D84C:        9D 4A 0E      STA $0E4A,x               ;
CODE_05D84F:        60            RTS                       ;

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

CODE_05DA72:        8B            PHB                       ;
CODE_05DA73:        4B            PHK                       ;
CODE_05DA74:        AB            PLB                       ;
CODE_05DA75:        84 00         STY $00                   ;
CODE_05DA77:        AD B9 03      LDA $03B9                 ;
CODE_05DA7A:        BE 9A 03      LDX $039A,y               ;
CODE_05DA7D:        BC 46 0B      LDY $0B46,x               ;
CODE_05DA80:        84 02         STY $02                   ;
CODE_05DA82:        3A            DEC A                     ;
CODE_05DA83:        20 FF DA      JSR CODE_05DAFF           ;
CODE_05DA86:        AD AE 03      LDA $03AE                 ;
CODE_05DA89:        99 00 09      STA $0900,y               ;
CODE_05DA8C:        99 08 09      STA $0908,y               ;
CODE_05DA8F:        99 10 09      STA $0910,y               ;
CODE_05DA92:        99 04 09      STA $0904,y               ;
CODE_05DA95:        99 0C 09      STA $090C,y               ;
CODE_05DA98:        99 14 09      STA $0914,y               ;
CODE_05DA9B:        99 18 09      STA $0918,y               ;
CODE_05DA9E:        99 1C 09      STA $091C,y               ;
CODE_05DAA1:        99 20 09      STA $0920,y               ;
CODE_05DAA4:        A9 1B         LDA #$1B                  ;
CODE_05DAA6:        99 03 09      STA $0903,y               ;
CODE_05DAA9:        99 0B 09      STA $090B,y               ;
CODE_05DAAC:        99 13 09      STA $0913,y               ;
CODE_05DAAF:        99 07 09      STA $0907,y               ;
CODE_05DAB2:        99 0F 09      STA $090F,y               ;
CODE_05DAB5:        99 17 09      STA $0917,y               ;
CODE_05DAB8:        99 1B 09      STA $091B,y               ;
CODE_05DABB:        99 1F 09      STA $091F,y               ;
CODE_05DABE:        99 23 09      STA $0923,y               ;
CODE_05DAC1:        A2 08         LDX #$08                  ;
CODE_05DAC3:        A9 2C         LDA #$2C                  ;
CODE_05DAC5:        99 02 09      STA $0902,y               ;
CODE_05DAC8:        C8            INY                       ;
CODE_05DAC9:        C8            INY                       ;
CODE_05DACA:        C8            INY                       ;
CODE_05DACB:        C8            INY                       ;
CODE_05DACC:        CA            DEX                       ;
CODE_05DACD:        10 F4         BPL CODE_05DAC3           ;
CODE_05DACF:        A4 02         LDY $02                   ;
CODE_05DAD1:        AD 00 00      LDA $0000                 ;
CODE_05DAD4:        D0 05         BNE CODE_05DADB           ;
CODE_05DAD6:        A9 2A         LDA #$2A                  ;
CODE_05DAD8:        99 02 09      STA $0902,y               ;
CODE_05DADB:        AD 99 03      LDA $0399                 ;
CODE_05DADE:        4A            LSR A                     ;
CODE_05DADF:        4A            LSR A                     ;
CODE_05DAE0:        4A            LSR A                     ;
CODE_05DAE1:        4A            LSR A                     ;
CODE_05DAE2:        1A            INC A                     ;
CODE_05DAE3:        AA            TAX                       ;
CODE_05DAE4:        0A            ASL A                     ;
CODE_05DAE5:        0A            ASL A                     ;
CODE_05DAE6:        18            CLC                       ;
CODE_05DAE7:        65 02         ADC $02                   ;
CODE_05DAE9:        A8            TAY                       ;
CODE_05DAEA:        E0 09         CPX #$09                  ;
CODE_05DAEC:        B0 0C         BCS CODE_05DAFA           ;
CODE_05DAEE:        A9 F0         LDA #$F0                  ;
CODE_05DAF0:        99 01 09      STA $0901,y               ;
CODE_05DAF3:        C8            INY                       ;
CODE_05DAF4:        C8            INY                       ;
CODE_05DAF5:        C8            INY                       ;
CODE_05DAF6:        C8            INY                       ;
CODE_05DAF7:        E8            INX                       ;
CODE_05DAF8:        80 F0         BRA CODE_05DAEA           ;

CODE_05DAFA:        AC 00 00      LDY $0000                 ;
CODE_05DAFD:        AB            PLB                       ;
CODE_05DAFE:        6B            RTL                       ;

CODE_05DAFF:        A2 09         LDX #$09                  ;
CODE_05DB01:        99 01 09      STA $0901,y               ;
CODE_05DB04:        48            PHA                       ;
CODE_05DB05:        AD 23 02      LDA $0223                 ;
CODE_05DB08:        85 E4         STA $E4                   ;
CODE_05DB0A:        A5 82         LDA $82                   ;
CODE_05DB0C:        85 E5         STA $E5                   ;
CODE_05DB0E:        C2 20         REP #$20                  ;
CODE_05DB10:        A5 E4         LDA $E4                   ;
CODE_05DB12:        38            SEC                       ;
CODE_05DB13:        E5 42         SBC $42                   ;
CODE_05DB15:        85 E4         STA $E4                   ;
CODE_05DB17:        E2 20         SEP #$20                  ;
CODE_05DB19:        A9 02         LDA #$02                  ;
CODE_05DB1B:        85 DD         STA $DD                   ;
CODE_05DB1D:        A5 E5         LDA $E5                   ;
CODE_05DB1F:        F0 02         BEQ CODE_05DB23           ;
CODE_05DB21:        A9 01         LDA #$01                  ;
CODE_05DB23:        05 DD         ORA $DD                   ;
CODE_05DB25:        99 00 0D      STA $0D00,y               ;
CODE_05DB28:        AD 36 02      LDA $0236                 ;
CODE_05DB2B:        D0 0E         BNE CODE_05DB3B           ;
CODE_05DB2D:        B9 01 09      LDA $0901,y               ;
CODE_05DB30:        10 09         BPL CODE_05DB3B           ;
CODE_05DB32:        C9 F0         CMP #$F0                  ;
CODE_05DB34:        B0 05         BCS CODE_05DB3B           ;
CODE_05DB36:        A9 F0         LDA #$F0                  ;
CODE_05DB38:        99 01 09      STA $0901,y               ;
CODE_05DB3B:        68            PLA                       ;
CODE_05DB3C:        18            CLC                       ;
CODE_05DB3D:        69 10         ADC #$10                  ;
CODE_05DB3F:        C8            INY                       ;
CODE_05DB40:        C8            INY                       ;
CODE_05DB41:        C8            INY                       ;
CODE_05DB42:        C8            INY                       ;
CODE_05DB43:        CA            DEX                       ;
CODE_05DB44:        D0 BB         BNE CODE_05DB01           ;
CODE_05DB46:        A4 02         LDY $02                   ;
CODE_05DB48:        60            RTS                       ;

CODE_05DB49:        AC 53 0B      LDY $0B53                 ;
CODE_05DB4C:        C2 20         REP #$20                  ;
CODE_05DB4E:        AD 70 0E      LDA $0E70                 ;
CODE_05DB51:        38            SEC                       ;
CODE_05DB52:        E5 42         SBC $42                   ;
CODE_05DB54:        8D 6B 0E      STA $0E6B                 ;
CODE_05DB57:        E2 20         SEP #$20                  ;
CODE_05DB59:        AD 6F 0E      LDA $0E6F                 ;
CODE_05DB5C:        D0 2B         BNE CODE_05DB89           ;
CODE_05DB5E:        AD 6D 0E      LDA $0E6D                 ;
CODE_05DB61:        99 01 08      STA $0801,y               ;
CODE_05DB64:        AD 6B 0E      LDA $0E6B                 ;
CODE_05DB67:        20 6F DC      JSR CODE_05DC6F           ;
CODE_05DB6A:        99 00 08      STA $0800,y               ;
CODE_05DB6D:        A9 26         LDA #$26                  ;
CODE_05DB6F:        99 02 08      STA $0802,y               ;
CODE_05DB72:        A9 29         LDA #$29                  ;
CODE_05DB74:        99 03 08      STA $0803,y               ;
CODE_05DB77:        CE 6E 0E      DEC $0E6E                 ;
CODE_05DB7A:        F0 03         BEQ CODE_05DB7F           ;
CODE_05DB7C:        4C 03 DC      JMP CODE_05DC03           ;

CODE_05DB7F:        A9 06         LDA #$06                  ;
CODE_05DB81:        8D 6E 0E      STA $0E6E                 ;
CODE_05DB84:        EE 6F 0E      INC $0E6F                 ;
CODE_05DB87:        80 7A         BRA CODE_05DC03           ;

CODE_05DB89:        AD 6F 0E      LDA $0E6F                 ;
CODE_05DB8C:        C9 06         CMP #$06                  ;
CODE_05DB8E:        B0 73         BCS CODE_05DC03           ;
CODE_05DB90:        DA            PHX                       ;
CODE_05DB91:        AE 6F 0E      LDX $0E6F                 ;
CODE_05DB94:        BD 35 DC      LDA DATA_05DC35,x               ;
CODE_05DB97:        18            CLC                       ;
CODE_05DB98:        6D 6B 0E      ADC $0E6B                 ;
CODE_05DB9B:        99 00 08      STA $0800,y               ;
CODE_05DB9E:        99 04 08      STA $0804,y               ;
CODE_05DBA1:        20 6F DC      JSR CODE_05DC6F           ;
CODE_05DBA4:        BD 41 DC      LDA DATA_05DC41,x               ;
CODE_05DBA7:        18            CLC                       ;
CODE_05DBA8:        6D 6D 0E      ADC $0E6D                 ;
CODE_05DBAB:        99 01 08      STA $0801,y               ;
CODE_05DBAE:        18            CLC                       ;
CODE_05DBAF:        69 08         ADC #$08                  ;
CODE_05DBB1:        99 05 08      STA $0805,y               ;
CODE_05DBB4:        BD 3B DC      LDA DATA_05DC3B,x               ;
CODE_05DBB7:        18            CLC                       ;
CODE_05DBB8:        6D 6B 0E      ADC $0E6B                 ;
CODE_05DBBB:        99 08 08      STA $0808,y               ;
CODE_05DBBE:        99 0C 08      STA $080C,y               ;
CODE_05DBC1:        20 6F DC      JSR CODE_05DC6F           ;
CODE_05DBC4:        BD 41 DC      LDA DATA_05DC41,x               ;
CODE_05DBC7:        18            CLC                       ;
CODE_05DBC8:        6D 6D 0E      ADC $0E6D                 ;
CODE_05DBCB:        99 09 08      STA $0809,y               ;
CODE_05DBCE:        18            CLC                       ;
CODE_05DBCF:        69 08         ADC #$08                  ;
CODE_05DBD1:        99 0D 08      STA $080D,y               ;
CODE_05DBD4:        AE 6F 0E      LDX $0E6F                 ;
CODE_05DBD7:        CA            DEX                       ;
CODE_05DBD8:        8A            TXA                       ;
CODE_05DBD9:        0A            ASL A                     ;
CODE_05DBDA:        0A            ASL A                     ;
CODE_05DBDB:        AA            TAX                       ;
CODE_05DBDC:        A9 03         LDA #$03                  ;
CODE_05DBDE:        85 04         STA $04                   ;
CODE_05DBE0:        BD 47 DC      LDA DATA_05DC47,x               ;
CODE_05DBE3:        99 02 08      STA $0802,y               ;
CODE_05DBE6:        BD 5B DC      LDA DATA_05DC5B,x               ;
CODE_05DBE9:        99 03 08      STA $0803,y               ;
CODE_05DBEC:        C8            INY                       ;
CODE_05DBED:        C8            INY                       ;
CODE_05DBEE:        C8            INY                       ;
CODE_05DBEF:        C8            INY                       ;
CODE_05DBF0:        E8            INX                       ;
CODE_05DBF1:        C6 04         DEC $04                   ;
CODE_05DBF3:        10 EB         BPL CODE_05DBE0           ;
CODE_05DBF5:        CE 6E 0E      DEC $0E6E                 ;
CODE_05DBF8:        D0 08         BNE CODE_05DC02           ;
CODE_05DBFA:        A9 06         LDA #$06                  ;
CODE_05DBFC:        8D 6E 0E      STA $0E6E                 ;
CODE_05DBFF:        EE 6F 0E      INC $0E6F                 ;
CODE_05DC02:        FA            PLX                       ;
CODE_05DC03:        4C E9 DC      JMP CODE_05DCE9           ;

CODE_05DC06:        A5 09         LDA $09                   ;
CODE_05DC08:        4A            LSR A                     ;
CODE_05DC09:        B0 03         BCS CODE_05DC0E           ;
CODE_05DC0B:        DE 48 02      DEC $0248,x               ;
CODE_05DC0E:        BD 48 02      LDA $0248,x               ;
CODE_05DC11:        99 01 08      STA $0801,y               ;
CODE_05DC14:        AD B3 03      LDA $03B3                 ;
CODE_05DC17:        99 00 08      STA $0800,y               ;
CODE_05DC1A:        A9 02         LDA #$02                  ;
CODE_05DC1C:        99 00 0C      STA $0C00,y               ;
CODE_05DC1F:        C9 F8         CMP #$F8                  ;
CODE_05DC21:        90 05         BCC CODE_05DC28           ;
CODE_05DC23:        A9 03         LDA #$03                  ;
CODE_05DC25:        99 00 0C      STA $0C00,y               ;
CODE_05DC28:        A9 23         LDA #$23                  ;
CODE_05DC2A:        99 03 08      STA $0803,y               ;
CODE_05DC2D:        A9 2E         LDA #$2E                  ;
CODE_05DC2F:        99 02 08      STA $0802,y               ;
CODE_05DC32:        4C 49 DB      JMP CODE_05DB49           ;

DATA_05DC35:        db $00,$FC,$FB,$FA,$FA,$FA ;

DATA_05DC3B:        db $00,$04,$05,$06,$06,$06 ;

DATA_05DC41:        db $00,$FC,$FC,$FE,$FE,$FF ;

DATA_05DC47:        db $27,$27,$28,$28,$36,$37,$36,$37 ;
                    db $36,$37,$36,$37,$38,$29,$38,$29 ;
                    db $38,$29,$38,$29 ;

DATA_05DC5B:        db $29,$A9,$29,$A9,$29,$29,$69,$69 ;
                    db $29,$29,$69,$69,$29,$29,$69,$69 ;
                    db $29,$29,$69,$69 ;

CODE_05DC6F:        48            PHA                       ;
CODE_05DC70:        C9 F8         CMP #$F8                  ;
CODE_05DC72:        90 08         BCC CODE_05DC7C           ;
CODE_05DC74:        A9 01         LDA #$01                  ;
CODE_05DC76:        99 00 0C      STA $0C00,y               ;
CODE_05DC79:        99 04 0C      STA $0C04,y               ;
CODE_05DC7C:        68            PLA                       ;
CODE_05DC7D:        60            RTS                       ;

CODE_05DC7E:        BD 48 02      LDA $0248,x               ;
CODE_05DC81:        18            CLC                       ;
CODE_05DC82:        69 04         ADC #$04                  ;
CODE_05DC84:        8D 6D 0E      STA $0E6D                 ;
CODE_05DC87:        BD 2A 02      LDA $022A,x               ;
CODE_05DC8A:        8D 70 0E      STA $0E70                 ;
CODE_05DC8D:        BD 89 00      LDA $0089,x               ;
CODE_05DC90:        8D 71 0E      STA $0E71                 ;
CODE_05DC93:        A9 06         LDA #$06                  ;
CODE_05DC95:        8D 6E 0E      STA $0E6E                 ;
CODE_05DC98:        9C 6F 0E      STZ $0E6F                 ;
CODE_05DC9B:        6B            RTL                       ;

DATA_05DC9C:        db $28,$2A,$2C,$2E

CODE_05DCA0:        8B            PHB                       ;
CODE_05DCA1:        4B            PHK                       ;
CODE_05DCA2:        AB            PLB                       ;
CODE_05DCA3:        BC 62 0B      LDY $0B62,x               ;
CODE_05DCA6:        B5 39         LDA $39,x                 ;
CODE_05DCA8:        C9 02         CMP #$02                  ;
CODE_05DCAA:        90 03         BCC CODE_05DCAF           ;
CODE_05DCAC:        4C 06 DC      JMP CODE_05DC06           ;

CODE_05DCAF:        B5 B1         LDA $B1,x                 ;
CODE_05DCB1:        30 03         BMI CODE_05DCB6           ;
CODE_05DCB3:        4C 49 DB      JMP CODE_05DB49           ;

CODE_05DCB6:        BD 48 02      LDA $0248,x               ;
CODE_05DCB9:        99 01 08      STA $0801,y               ;
CODE_05DCBC:        AD B3 03      LDA $03B3                 ;
CODE_05DCBF:        38            SEC                       ;
CODE_05DCC0:        E9 04         SBC #$04                  ;
CODE_05DCC2:        85 E4         STA $E4                   ;
CODE_05DCC4:        C9 F0         CMP #$F0                  ;
CODE_05DCC6:        B0 04         BCS CODE_05DCCC           ;
CODE_05DCC8:        A9 02         LDA #$02                  ;
CODE_05DCCA:        80 02         BRA CODE_05DCCE           ;

CODE_05DCCC:        A9 03         LDA #$03                  ;
CODE_05DCCE:        99 00 0C      STA $0C00,y               ;
CODE_05DCD1:        A5 E4         LDA $E4                   ;
CODE_05DCD3:        99 00 08      STA $0800,y               ;
CODE_05DCD6:        A5 09         LDA $09                   ;
CODE_05DCD8:        4A            LSR A                     ;
CODE_05DCD9:        29 03         AND #$03                  ;
CODE_05DCDB:        AA            TAX                       ;
CODE_05DCDC:        BD 9C DC      LDA DATA_05DC9C,x               ;
CODE_05DCDF:        99 02 08      STA $0802,y               ;
CODE_05DCE2:        A9 28         LDA #$28                  ;
CODE_05DCE4:        99 03 08      STA $0803,y               ;
CODE_05DCE7:        A6 9E         LDX $9E                   ;
CODE_05DCE9:        AB            PLB                       ;
CODE_05DCEA:        6B            RTL                       ;

DATA_05DCEB:        db $04,$00,$04,$00

DATA_05DCEF:        db $00,$04,$00,$04,$00,$08,$00,$08
                    db $08,$00,$08,$00

DATA_05DCFB:        db $44,$46,$44,$46,$81,$83,$80,$82

DATA_05DD03:        db $2A,$2A,$EA,$EA

;Draw hammer
CODE_05DD07:        8B            PHB                       ;
CODE_05DD08:        4B            PHK                       ;
CODE_05DD09:        AB            PLB                       ; Preserve stuff
CODE_05DD0A:        BC 62 0B      LDY $0B62,x               ; get misc object OAM data offset
CODE_05DD0D:        AD 47 07      LDA $0747                 ;\ If screen locked, branch
CODE_05DD10:        D0 08         BNE CODE_05DD1A           ;/
CODE_05DD12:        B5 39         LDA $39,x                 ;\
CODE_05DD14:        29 7F         AND #$7F                  ; |
CODE_05DD16:        C9 01         CMP #$01                  ; |
CODE_05DD18:        F0 04         BEQ CODE_05DD1E           ;/
CODE_05DD1A:        A2 00         LDX #$00                  ;
CODE_05DD1C:        F0 07         BEQ CODE_05DD25           ;
CODE_05DD1E:        A5 09         LDA $09                   ;
CODE_05DD20:        4A            LSR A                     ;
CODE_05DD21:        4A            LSR A                     ;
CODE_05DD22:        29 03         AND #$03                  ;
CODE_05DD24:        AA            TAX                       ;
CODE_05DD25:        AD BE 03      LDA $03BE                 ;
CODE_05DD28:        18            CLC                       ;
CODE_05DD29:        7D EF DC      ADC DATA_05DCEF,x               ;
CODE_05DD2C:        99 01 08      STA $0801,y               ;
CODE_05DD2F:        C2 20         REP #$20                  ;
CODE_05DD31:        BD EB DC      LDA DATA_05DCEB,x               ;
CODE_05DD34:        29 FF 00      AND #$00FF                ;
CODE_05DD37:        18            CLC                       ;
CODE_05DD38:        6D 93 0E      ADC $0E93                 ;
CODE_05DD3B:        38            SEC                       ;
CODE_05DD3C:        E9 08 00      SBC #$0008                ;
CODE_05DD3F:        85 E4         STA $E4                   ;
CODE_05DD41:        E2 20         SEP #$20                  ;
CODE_05DD43:        A5 E4         LDA $E4                   ;
CODE_05DD45:        99 00 08      STA $0800,y               ;
CODE_05DD48:        A9 02         LDA #$02                  ;
CODE_05DD4A:        99 00 0C      STA $0C00,y               ;
CODE_05DD4D:        A5 E5         LDA $E5                   ;
CODE_05DD4F:        F0 05         BEQ CODE_05DD56           ;
CODE_05DD51:        A9 03         LDA #$03                  ;
CODE_05DD53:        99 00 0C      STA $0C00,y               ;
CODE_05DD56:        BD FB DC      LDA DATA_05DCFB,x               ;
CODE_05DD59:        99 02 08      STA $0802,y               ;
CODE_05DD5C:        BD 03 DD      LDA DATA_05DD03,x               ;
CODE_05DD5F:        99 03 08      STA $0803,y               ;
CODE_05DD62:        AD D6 03      LDA $03D6                 ;
CODE_05DD65:        29 0F         AND #$0F                  ;
CODE_05DD67:        C9 0F         CMP #$0F                  ;
CODE_05DD69:        F0 07         BEQ CODE_05DD72           ;
CODE_05DD6B:        AD D6 03      LDA $03D6                 ;
CODE_05DD6E:        29 F0         AND #$F0                  ;
CODE_05DD70:        F0 04         BEQ CODE_05DD76           ;
CODE_05DD72:        A6 9E         LDX $9E                   ;
CODE_05DD74:        74 39         STZ $39,x                 ;
CODE_05DD76:        A6 9E         LDX $9E                   ;
CODE_05DD78:        AB            PLB                       ;
CODE_05DD79:        6B            RTL                       ;

CODE_05DD7A:        0B            PHD                       ;
CODE_05DD7B:        A9 0C         LDA #$0C                  ;
CODE_05DD7D:        EB            XBA                       ;
CODE_05DD7E:        A9 00         LDA #$00                  ;
CODE_05DD80:        5B            TCD                       ;
CODE_05DD81:        C2 10         REP #$10                  ;
CODE_05DD83:        A2 00 00      LDX #$0000                ;
CODE_05DD86:        9B            TXY                       ;
CODE_05DD87:        B5 0C         LDA $0C,x                 ;
CODE_05DD89:        4A            LSR A                     ;
CODE_05DD8A:        6A            ROR A                     ;
CODE_05DD8B:        6A            ROR A                     ;
CODE_05DD8C:        85 01         STA $01                   ;
CODE_05DD8E:        B5 08         LDA $08,x                 ;
CODE_05DD90:        0A            ASL A                     ;
CODE_05DD91:        0A            ASL A                     ;
CODE_05DD92:        0A            ASL A                     ;
CODE_05DD93:        0A            ASL A                     ;
CODE_05DD94:        04 01         TSB $01                   ;
CODE_05DD96:        B5 04         LDA $04,x                 ;
CODE_05DD98:        0A            ASL A                     ;
CODE_05DD99:        0A            ASL A                     ;
CODE_05DD9A:        04 01         TSB $01                   ;
CODE_05DD9C:        B5 00         LDA $00,x                 ;
CODE_05DD9E:        05 01         ORA $01                   ;
CODE_05DDA0:        99 00 0A      STA $0A00,y               ;
CODE_05DDA3:        C8            INY                       ;
CODE_05DDA4:        B5 1C         LDA $1C,x                 ;
CODE_05DDA6:        4A            LSR A                     ;
CODE_05DDA7:        6A            ROR A                     ;
CODE_05DDA8:        6A            ROR A                     ;
CODE_05DDA9:        85 01         STA $01                   ;
CODE_05DDAB:        B5 18         LDA $18,x                 ;
CODE_05DDAD:        0A            ASL A                     ;
CODE_05DDAE:        0A            ASL A                     ;
CODE_05DDAF:        0A            ASL A                     ;
CODE_05DDB0:        0A            ASL A                     ;
CODE_05DDB1:        04 01         TSB $01                   ;
CODE_05DDB3:        B5 14         LDA $14,x                 ;
CODE_05DDB5:        0A            ASL A                     ;
CODE_05DDB6:        0A            ASL A                     ;
CODE_05DDB7:        04 01         TSB $01                   ;
CODE_05DDB9:        B5 10         LDA $10,x                 ;
CODE_05DDBB:        05 01         ORA $01                   ;
CODE_05DDBD:        99 00 0A      STA $0A00,y               ;
CODE_05DDC0:        C8            INY                       ;
CODE_05DDC1:        C2 20         REP #$20                  ;
CODE_05DDC3:        8A            TXA                       ;
CODE_05DDC4:        18            CLC                       ;
CODE_05DDC5:        69 20 00      ADC #$0020                ;
CODE_05DDC8:        AA            TAX                       ;
CODE_05DDC9:        E2 20         SEP #$20                  ;
CODE_05DDCB:        E0 00 02      CPX #$0200                ;
CODE_05DDCE:        90 B7         BCC CODE_05DD87           ;
CODE_05DDD0:        E2 10         SEP #$10                  ;
CODE_05DDD2:        2B            PLD                       ;
CODE_05DDD3:        6B            RTL                       ;

CODE_05DDD4:        EE 76 0B      INC $0B76                 ;
CODE_05DDD7:        A9 38         LDA #$38                  ;
CODE_05DDD9:        8D 87 02      STA $0287                 ;
CODE_05DDDC:        C2 20         REP #$20                  ;
CODE_05DDDE:        A9 00 B0      LDA #$B000                ;
CODE_05DDE1:        8D 85 02      STA $0285                 ;
CODE_05DDE4:        A9 00 08      LDA #$0800                ;
CODE_05DDE7:        8D 88 02      STA $0288                 ;
CODE_05DDEA:        A9 00 7C      LDA #$7C00                ;
CODE_05DDED:        8D 8A 02      STA $028A                 ;
CODE_05DDF0:        E2 20         SEP #$20                  ;
CODE_05DDF2:        60            RTS                       ;

CODE_05DDF3:        EE 76 0B      INC $0B76                 ;
CODE_05DDF6:        A9 07         LDA #$07                  ;
CODE_05DDF8:        8D 87 02      STA $0287                 ;
CODE_05DDFB:        C2 20         REP #$20                  ;
CODE_05DDFD:        A9 00 B8      LDA #$B800                ;
CODE_05DE00:        8D 85 02      STA $0285                 ;
CODE_05DE03:        A9 00 08      LDA #$0800                ;
CODE_05DE06:        8D 88 02      STA $0288                 ;
CODE_05DE09:        A9 00 7C      LDA #$7C00                ;
CODE_05DE0C:        8D 8A 02      STA $028A                 ;
CODE_05DE0F:        E2 20         SEP #$20                  ;
CODE_05DE11:        60            RTS                       ;

CODE_05DE12:        DA            PHX                       ;
CODE_05DE13:        5A            PHY                       ;
CODE_05DE14:        20 31 E2      JSR CODE_05E231           ;Clear windowing HDMA table
CODE_05DE17:        20 CE E1      JSR CODE_05E1CE           ;
CODE_05DE1A:        A9 22         LDA #$22                  ;
CODE_05DE1C:        8D 04 12      STA $1204                 ;
CODE_05DE1F:        A9 02         LDA #$02                  ;
CODE_05DE21:        8D 05 12      STA $1205                 ;
CODE_05DE24:        A9 15         LDA #$15                  ;
CODE_05DE26:        8D 07 12      STA $1207                 ;
CODE_05DE29:        A9 02         LDA #$02                  ;
CODE_05DE2B:        8D 08 12      STA $1208                 ;
CODE_05DE2E:        7A            PLY                       ;
CODE_05DE2F:        FA            PLX                       ;
CODE_05DE30:        6B            RTL                       ;

CODE_05DE31:        20 31 E2      JSR CODE_05E231           ;Clear windowing HDMA table
CODE_05DE34:        20 CE E1      JSR CODE_05E1CE           ;
CODE_05DE37:        20 65 DE      JSR CODE_05DE65           ;
CODE_05DE3A:        20 D4 DD      JSR CODE_05DDD4           ;
CODE_05DE3D:        A9 01         LDA #$01                  ;\Set paused flag
CODE_05DE3F:        8D 76 07      STA $0776                 ;/
CODE_05DE42:        9C 77 0B      STZ $0B77                 ;
CODE_05DE45:        9C 78 0B      STZ $0B78                 ;
CODE_05DE48:        9C 8A 0F      STZ $0F8A                 ;
CODE_05DE4B:        6B            RTL                       ;

CODE_05DE4C:        8B            PHB                       ;\
CODE_05DE4D:        4B            PHK                       ; |
CODE_05DE4E:        AB            PLB                       ; |
CODE_05DE4F:        DA            PHX                       ; |
CODE_05DE50:        5A            PHY                       ; |
CODE_05DE51:        AD 75 0B      LDA $0B75                 ; |Pause window states
CODE_05DE54:        0A            ASL A                     ; |
CODE_05DE55:        AA            TAX                       ; |
CODE_05DE56:        FC 5D DE      JSR (PNTR_05DE5D,x)       ; |
CODE_05DE59:        7A            PLY                       ; |
CODE_05DE5A:        FA            PLX                       ; |
CODE_05DE5B:        AB            PLB                       ; |
CODE_05DE5C:        6B            RTL                       ;/

PNTR_05DE5D:        dw CODE_05E0B3            ;$00 = Expand
                    dw CODE_05DE97            ;$01 = Maintain pause window, wait for input etc
                    dw CODE_05E1AF            ;$02 = Select option?
                    dw CODE_05E11D            ;$03 = Collapse

CODE_05DE65:        C2 20         REP #$20                  ;
CODE_05DE67:        A9 10 00      LDA #$0010                ;
CODE_05DE6A:        8D 6B 0B      STA $0B6B                 ;
CODE_05DE6D:        A9 64 00      LDA #$0064                ;
CODE_05DE70:        8D 6D 0B      STA $0B6D                 ;
CODE_05DE73:        A9 A4 00      LDA #$00A4                ;
CODE_05DE76:        8D 6F 0B      STA $0B6F                 ;
CODE_05DE79:        A9 C4 00      LDA #$00C4                ;
CODE_05DE7C:        8D 71 0B      STA $0B71                 ;
CODE_05DE7F:        A9 D0 00      LDA #$00D0                ;
CODE_05DE82:        8D 73 0B      STA $0B73                 ;
CODE_05DE85:        E2 20         SEP #$20                  ;
CODE_05DE87:        AD 80 16      LDA $1680                 ;
CODE_05DE8A:        F0 0A         BEQ CODE_05DE96           ;
CODE_05DE8C:        AD 7A 07      LDA $077A                 ;
CODE_05DE8F:        F0 05         BEQ CODE_05DE96           ;
CODE_05DE91:        A9 0E         LDA #$0E                  ;
CODE_05DE93:        8D 6B 0B      STA $0B6B                 ;
CODE_05DE96:        60            RTS                       ;

CODE_05DE97:        20 FD DF      JSR CODE_05DFFD           ;
CODE_05DE9A:        AE 53 07      LDX $0753                 ;
CODE_05DE9D:        AD 80 16      LDA $1680                 ;
CODE_05DEA0:        F0 0E         BEQ CODE_05DEB0           ;
CODE_05DEA2:        AD 7A 07      LDA $077A                 ;
CODE_05DEA5:        F0 09         BEQ CODE_05DEB0           ;
CODE_05DEA7:        AD 61 07      LDA $0761                 ;
CODE_05DEAA:        30 04         BMI CODE_05DEB0           ;
CODE_05DEAC:        8A            TXA                       ;
CODE_05DEAD:        49 01         EOR #$01                  ;
CODE_05DEAF:        AA            TAX                       ;
CODE_05DEB0:        BD F6 0F      LDA $0FF6,x               ;
CODE_05DEB3:        85 F2         STA $F2                   ;
CODE_05DEB5:        29 2C         AND #$2C                  ;
CODE_05DEB7:        D0 03         BNE CODE_05DEBC           ;
CODE_05DEB9:        4C 0D DF      JMP CODE_05DF0D           ;

CODE_05DEBC:        A5 F2         LDA $F2                   ;
CODE_05DEBE:        29 20         AND #$20                  ;
CODE_05DEC0:        D0 36         BNE CODE_05DEF8           ;
CODE_05DEC2:        A5 F2         LDA $F2                   ;
CODE_05DEC4:        29 08         AND #$08                  ;
CODE_05DEC6:        D0 19         BNE CODE_05DEE1           ;
CODE_05DEC8:        EE 77 0B      INC $0B77                 ;
CODE_05DECB:        AD 77 0B      LDA $0B77                 ;
CODE_05DECE:        C9 03         CMP #$03                  ;
CODE_05DED0:        90 05         BCC CODE_05DED7           ;
CODE_05DED2:        CE 77 0B      DEC $0B77                 ;
CODE_05DED5:        80 36         BRA CODE_05DF0D           ;

CODE_05DED7:        A9 01         LDA #$01                  ;\Coin sound
CODE_05DED9:        8D 03 16      STA $1603                 ;/
CODE_05DEDC:        9C 78 0B      STZ $0B78                 ;
CODE_05DEDF:        80 2C         BRA CODE_05DF0D           ;

CODE_05DEE1:        CE 77 0B      DEC $0B77                 ;
CODE_05DEE4:        AD 77 0B      LDA $0B77                 ;
CODE_05DEE7:        10 05         BPL CODE_05DEEE           ;
CODE_05DEE9:        EE 77 0B      INC $0B77                 ;
CODE_05DEEC:        80 1F         BRA CODE_05DF0D           ;

CODE_05DEEE:        A9 01         LDA #$01                  ;\Coin sound
CODE_05DEF0:        8D 03 16      STA $1603                 ;/
CODE_05DEF3:        9C 78 0B      STZ $0B78                 ;
CODE_05DEF6:        80 15         BRA CODE_05DF0D           ;

CODE_05DEF8:        EE 77 0B      INC $0B77                 ;
CODE_05DEFB:        AD 77 0B      LDA $0B77                 ;
CODE_05DEFE:        C9 03         CMP #$03                  ;
CODE_05DF00:        90 03         BCC CODE_05DF05           ;
CODE_05DF02:        9C 77 0B      STZ $0B77                 ;
CODE_05DF05:        A9 01         LDA #$01                  ;\Coin sound
CODE_05DF07:        8D 03 16      STA $1603                 ;/
CODE_05DF0A:        9C 78 0B      STZ $0B78                 ;
CODE_05DF0D:        A9 4C         LDA #$4C                  ;
CODE_05DF0F:        8D 00 08      STA $0800                 ;
CODE_05DF12:        AE 77 0B      LDX $0B77                 ;
CODE_05DF15:        BD A9 DF      LDA DATA_05DFA9,x               ;
CODE_05DF18:        8D 01 08      STA $0801                 ;
CODE_05DF1B:        AD 78 0B      LDA $0B78                 ;
CODE_05DF1E:        29 10         AND #$10                  ;
CODE_05DF20:        4A            LSR A                     ;
CODE_05DF21:        4A            LSR A                     ;
CODE_05DF22:        4A            LSR A                     ;
CODE_05DF23:        4A            LSR A                     ;
CODE_05DF24:        AA            TAX                       ;
CODE_05DF25:        BD AC DF      LDA DATA_05DFAC,x               ;
CODE_05DF28:        8D 02 08      STA $0802                 ;
CODE_05DF2B:        A9 21         LDA #$21                  ;
CODE_05DF2D:        8D 03 08      STA $0803                 ;
CODE_05DF30:        A9 00         LDA #$00                  ;
CODE_05DF32:        8D 00 0C      STA $0C00                 ;
CODE_05DF35:        EE 78 0B      INC $0B78                 ;
CODE_05DF38:        A5 F2         LDA $F2                   ;
CODE_05DF3A:        29 10         AND #$10                  ;
CODE_05DF3C:        F0 6A         BEQ CODE_05DFA8           ;
CODE_05DF3E:        A9 F2         LDA #$F2                  ;
CODE_05DF40:        8D 02 16      STA $1602                 ;
CODE_05DF43:        9C 78 0B      STZ $0B78                 ;
CODE_05DF46:        AD 77 0B      LDA $0B77                 ;
CODE_05DF49:        F0 1D         BEQ CODE_05DF68           ;
CODE_05DF4B:        A9 30         LDA #$30                  ;
CODE_05DF4D:        8D 8A 0F      STA $0F8A                 ;
CODE_05DF50:        A9 02         LDA #$02                  ;
CODE_05DF52:        8D 75 0B      STA $0B75                 ;
CODE_05DF55:        A9 3B         LDA #$3B                  ;\
CODE_05DF57:        8D 00 16      STA $1600                 ;/Save and continue/quit sound
CODE_05DF5A:        AD 77 0B      LDA $0B77                 ;
CODE_05DF5D:        C9 02         CMP #$02                  ;
CODE_05DF5F:        D0 1B         BNE CODE_05DF7C           ;
CODE_05DF61:        A9 F3         LDA #$F3                  ;
CODE_05DF63:        8D 02 16      STA $1602                 ;
CODE_05DF66:        80 14         BRA CODE_05DF7C           ;

CODE_05DF68:        A9 10         LDA #$10                  ;
CODE_05DF6A:        8D 8A 0F      STA $0F8A                 ;
CODE_05DF6D:        A9 10         LDA #$10                  ;
CODE_05DF6F:        8D 6B 0B      STA $0B6B                 ;
CODE_05DF72:        A9 02         LDA #$02                  ;
CODE_05DF74:        8D 75 0B      STA $0B75                 ;
CODE_05DF77:        A9 43         LDA #$43                  ;\
CODE_05DF79:        8D 00 16      STA $1600                 ;/Pause sound
CODE_05DF7C:        AD 80 16      LDA $1680                 ;
CODE_05DF7F:        F0 19         BEQ CODE_05DF9A           ;
CODE_05DF81:        AD 77 0B      LDA $0B77                 ;
CODE_05DF84:        C9 02         CMP #$02                  ;
CODE_05DF86:        F0 12         BEQ CODE_05DF9A           ;
CODE_05DF88:        9C 76 07      STZ $0776                 ;Clear paused flag
CODE_05DF8B:        A9 0E         LDA #$0E                  ;
CODE_05DF8D:        8D 72 07      STA $0772                 ;
CODE_05DF90:        AE 77 0B      LDX $0B77                 ;
CODE_05DF93:        F0 04         BEQ CODE_05DF99           ;
CODE_05DF95:        22 03 8F 00   JSL CODE_008F03           ;
CODE_05DF99:        60            RTS                       ;

CODE_05DF9A:        A9 20         LDA #$20                  ;
CODE_05DF9C:        8D 8A 0F      STA $0F8A                 ;
CODE_05DF9F:        AD 77 0B      LDA $0B77                 ;
CODE_05DFA2:        F0 04         BEQ CODE_05DFA8           ;
CODE_05DFA4:        22 03 8F 00   JSL CODE_008F03           ;
CODE_05DFA8:        60            RTS                       ;

DATA_05DFA9:        db $50,$60,$70

DATA_05DFAC:        db $D0,$DE ; pause flashing arrow tiles

DATA_05DFAE:        db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ; smb1 pause screen tilemap
                    db $AA,$AA,$AA,$AA,$AA,$14,$15,$16 ;
                    db $17,$18,$19,$1A,$1B,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$28 ;
                    db $29,$2A,$2B,$1C,$14,$15,$16,$17 ;
                    db $18,$19,$1A,$1B,$AA,$AA,$AA,$AA ;
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA ;
                    db $AA,$28,$29,$2A,$2B,$1C,$24,$25 ;
                    db $26,$27,$AA,$AA,$AA,$AA,$FF ; FF = EOD

CODE_05DFFD:        C2 10         REP #$10                  ;
CODE_05DFFF:        A0 10 00      LDY #$0010                ;
CODE_05E002:        A2 00 00      LDX #$0000                ;
CODE_05E005:        A9 48         LDA #$48                  ;
CODE_05E007:        85 01         STA $01                   ;
CODE_05E009:        A9 54         LDA #$54                  ;
CODE_05E00B:        85 00         STA $00                   ;
CODE_05E00D:        BD AE DF      LDA DATA_05DFAE,x               ;
CODE_05E010:        10 18         BPL CODE_05E02A           ;
CODE_05E012:        E8            INX                       ;
CODE_05E013:        1A            INC A                     ;
CODE_05E014:        F0 35         BEQ CODE_05E04B           ;
CODE_05E016:        A5 00         LDA $00                   ;
CODE_05E018:        18            CLC                       ;
CODE_05E019:        69 08         ADC #$08                  ;
CODE_05E01B:        85 00         STA $00                   ;
CODE_05E01D:        C9 B8         CMP #$B8                  ;
CODE_05E01F:        90 EC         BCC CODE_05E00D           ;
CODE_05E021:        A5 01         LDA $01                   ;
CODE_05E023:        18            CLC                       ;
CODE_05E024:        69 08         ADC #$08                  ;
CODE_05E026:        85 01         STA $01                   ;
CODE_05E028:        80 DF         BRA CODE_05E009           ;

CODE_05E02A:        18            CLC                       ;
CODE_05E02B:        69 C0         ADC #$C0                  ;
CODE_05E02D:        99 02 08      STA $0802,y               ;
CODE_05E030:        A5 00         LDA $00                   ;
CODE_05E032:        99 00 08      STA $0800,y               ;
CODE_05E035:        A5 01         LDA $01                   ;
CODE_05E037:        99 01 08      STA $0801,y               ;
CODE_05E03A:        A9 21         LDA #$21                  ;
CODE_05E03C:        99 03 08      STA $0803,y               ;
CODE_05E03F:        A9 00         LDA #$00                  ;
CODE_05E041:        99 00 0C      STA $0C00,y               ;
CODE_05E044:        E8            INX                       ;
CODE_05E045:        C8            INY                       ;
CODE_05E046:        C8            INY                       ;
CODE_05E047:        C8            INY                       ;
CODE_05E048:        C8            INY                       ;
CODE_05E049:        80 CB         BRA CODE_05E016           ;

CODE_05E04B:        A9 40         LDA #$40                  ;
CODE_05E04D:        85 01         STA $01                   ;
CODE_05E04F:        A9 40         LDA #$40                  ;
CODE_05E051:        85 00         STA $00                   ;
CODE_05E053:        A5 00         LDA $00                   ;
CODE_05E055:        99 00 08      STA $0800,y               ;
CODE_05E058:        18            CLC                       ;
CODE_05E059:        69 10         ADC #$10                  ;
CODE_05E05B:        85 00         STA $00                   ;
CODE_05E05D:        A5 01         LDA $01                   ;
CODE_05E05F:        99 01 08      STA $0801,y               ;
CODE_05E062:        A9 CD         LDA #$CD                  ;
CODE_05E064:        99 02 08      STA $0802,y               ;
CODE_05E067:        A9 21         LDA #$21                  ;
CODE_05E069:        99 03 08      STA $0803,y               ;
CODE_05E06C:        A9 02         LDA #$02                  ;
CODE_05E06E:        99 00 0C      STA $0C00,y               ;
CODE_05E071:        C8            INY                       ;
CODE_05E072:        C8            INY                       ;
CODE_05E073:        C8            INY                       ;
CODE_05E074:        C8            INY                       ;
CODE_05E075:        A5 00         LDA $00                   ;
CODE_05E077:        C9 C0         CMP #$C0                  ;
CODE_05E079:        90 D8         BCC CODE_05E053           ;
CODE_05E07B:        A5 01         LDA $01                   ;
CODE_05E07D:        C9 80         CMP #$80                  ;
CODE_05E07F:        B0 07         BCS CODE_05E088           ;
CODE_05E081:        18            CLC                       ;
CODE_05E082:        69 10         ADC #$10                  ;
CODE_05E084:        85 01         STA $01                   ;
CODE_05E086:        80 C7         BRA CODE_05E04F           ;

CODE_05E088:        E2 10         SEP #$10                  ;
CODE_05E08A:        A9 4C         LDA #$4C                  ;
CODE_05E08C:        8D 00 08      STA $0800                 ;
CODE_05E08F:        AE 77 0B      LDX $0B77                 ;
CODE_05E092:        BD A9 DF      LDA DATA_05DFA9,x               ;
CODE_05E095:        8D 01 08      STA $0801                 ;
CODE_05E098:        AD 78 0B      LDA $0B78                 ;
CODE_05E09B:        29 10         AND #$10                  ;
CODE_05E09D:        4A            LSR A                     ;
CODE_05E09E:        4A            LSR A                     ;
CODE_05E09F:        4A            LSR A                     ;
CODE_05E0A0:        4A            LSR A                     ;
CODE_05E0A1:        AA            TAX                       ;
CODE_05E0A2:        BD AC DF      LDA DATA_05DFAC,x               ;
CODE_05E0A5:        8D 02 08      STA $0802                 ;
CODE_05E0A8:        A9 21         LDA #$21                  ;
CODE_05E0AA:        8D 03 08      STA $0803                 ;
CODE_05E0AD:        A9 00         LDA #$00                  ;
CODE_05E0AF:        8D 00 0C      STA $0C00                 ;
CODE_05E0B2:        60            RTS                       ;

;EXPAND PAUSE WINDOW ROUTINE
CODE_05E0B3:        AD 6B 0B      LDA $0B6B                 ;\Windowing HDMA routine for pause which actually expands stuff
CODE_05E0B6:        F0 5E         BEQ CODE_05E116           ;/Timer for expanding and collapsing
CODE_05E0B8:        30 5C         BMI CODE_05E116           ;
CODE_05E0BA:        C2 30         REP #$30                  ;
CODE_05E0BC:        CE 6B 0B      DEC $0B6B                 ;Decrease timer. when it hits 0, the expanding ends
CODE_05E0BF:        CE 6D 0B      DEC $0B6D                 ;\Maximum left border set
CODE_05E0C2:        CE 6D 0B      DEC $0B6D                 ;/
CODE_05E0C5:        EE 6F 0B      INC $0B6F                 ;\Maximum right border set
CODE_05E0C8:        EE 6F 0B      INC $0B6F                 ;/
CODE_05E0CB:        CE 71 0B      DEC $0B71                 ;\
CODE_05E0CE:        CE 71 0B      DEC $0B71                 ; |Maximum upper border set
CODE_05E0D1:        CE 71 0B      DEC $0B71                 ; |
CODE_05E0D4:        CE 71 0B      DEC $0B71                 ;/
CODE_05E0D7:        EE 73 0B      INC $0B73                 ;\
CODE_05E0DA:        EE 73 0B      INC $0B73                 ; |Maximum lower border set
CODE_05E0DD:        EE 73 0B      INC $0B73                 ; |
CODE_05E0E0:        EE 73 0B      INC $0B73                 ;/
CODE_05E0E3:        A2 7E 00      LDX #$007E                ;\
CODE_05E0E6:        A9 FF 00      LDA #$00FF                ; |
CODE_05E0E9:        9F 00 F0 7F   STA $7FF000,x             ; |
CODE_05E0ED:        9F 80 F0 7F   STA $7FF080,x             ; |
CODE_05E0F1:        9F 00 F1 7F   STA $7FF100,x             ; |Clear windowing RAM?
CODE_05E0F5:        9F 80 F1 7F   STA $7FF180,x             ; |NOPing it out doesn't seem to have any side effects
CODE_05E0F9:        CA            DEX                       ; |
CODE_05E0FA:        CA            DEX                       ; |
CODE_05E0FB:        10 EC         BPL CODE_05E0E9           ;/
CODE_05E0FD:        AD 6F 0B      LDA $0B6F                 ;\ Maximum right border
CODE_05E100:        EB            XBA                       ; |swap low and high bytes
CODE_05E101:        0D 6D 0B      ORA $0B6D                 ;/|OR with maximum left border -> to Windowing HDMA value
CODE_05E104:        AE 71 0B      LDX $0B71                 ; |Load maximum upper border as an index
CODE_05E107:        9F 00 F0 7F   STA $7FF000,x             ;/ Store windowing HDMA value
CODE_05E10B:        E8            INX                       ;\
CODE_05E10C:        E8            INX                       ; |If we didn't reach maximum lower border yet
CODE_05E10D:        EC 73 0B      CPX $0B73                 ; |Loop
CODE_05E110:        D0 F5         BNE CODE_05E107           ;/
CODE_05E112:        E2 30         SEP #$30                  ;
CODE_05E114:        80 03         BRA CODE_05E119           ;

CODE_05E116:        EE 75 0B      INC $0B75                 ;Increase pause window state?
CODE_05E119:        20 FD DF      JSR CODE_05DFFD           ;
CODE_05E11C:        60            RTS                       ;

;COLLAPSE PAUSE WINDOW ROUTINE
CODE_05E11D:        AD 6B 0B      LDA $0B6B                 ;
CODE_05E120:        F0 5E         BEQ CODE_05E180           ;
CODE_05E122:        30 5C         BMI CODE_05E180           ;
CODE_05E124:        C2 30         REP #$30                  ;
CODE_05E126:        EE 6D 0B      INC $0B6D                 ;\Maximum left border
CODE_05E129:        EE 6D 0B      INC $0B6D                 ;/
CODE_05E12C:        CE 6F 0B      DEC $0B6F                 ;\
CODE_05E12F:        CE 6F 0B      DEC $0B6F                 ;/Maximum right border
CODE_05E132:        EE 71 0B      INC $0B71                 ;\
CODE_05E135:        EE 71 0B      INC $0B71                 ; |
CODE_05E138:        EE 71 0B      INC $0B71                 ; |Maximum left border
CODE_05E13B:        EE 71 0B      INC $0B71                 ;/
CODE_05E13E:        CE 73 0B      DEC $0B73                 ;\
CODE_05E141:        CE 73 0B      DEC $0B73                 ; |
CODE_05E144:        CE 73 0B      DEC $0B73                 ; |Maximum right border
CODE_05E147:        CE 73 0B      DEC $0B73                 ;/
CODE_05E14A:        CE 6B 0B      DEC $0B6B                 ;Decrease timer for collapsing
CODE_05E14D:        A2 7E 00      LDX #$007E                ;\
CODE_05E150:        A9 FF 00      LDA #$00FF                ; |
CODE_05E153:        9F 00 F0 7F   STA $7FF000,x             ; |
CODE_05E157:        9F 80 F0 7F   STA $7FF080,x             ; |Clear windowing RAM?
CODE_05E15B:        9F 00 F1 7F   STA $7FF100,x             ; |
CODE_05E15F:        9F 80 F1 7F   STA $7FF180,x             ; |
CODE_05E163:        CA            DEX                       ; |
CODE_05E164:        CA            DEX                       ; |
CODE_05E165:        10 EC         BPL CODE_05E153           ;/
CODE_05E167:        AD 6F 0B      LDA $0B6F                 ;\ Maximum right border
CODE_05E16A:        EB            XBA                       ; |Swap low and high bytes
CODE_05E16B:        0D 6D 0B      ORA $0B6D                 ;/ ORA with maximum left border -> to windowing HDMA value
CODE_05E16E:        AE 71 0B      LDX $0B71                 ;\Load maximum upper border as an index
CODE_05E171:        9F 00 F0 7F   STA $7FF000,x             ; |
CODE_05E175:        E8            INX                       ; |Store windowing HDMA value to the HDMA RAM
CODE_05E176:        E8            INX                       ;/
CODE_05E177:        EC 73 0B      CPX $0B73                 ;\If not done yet, loop
CODE_05E17A:        D0 F5         BNE CODE_05E171           ;/
CODE_05E17C:        E2 30         SEP #$30                  ;
CODE_05E17E:        80 2B         BRA CODE_05E1AB           ;

CODE_05E180:        9C 75 0B      STZ $0B75                 ;Pause window state to zero
CODE_05E183:        A9 0F         LDA #$0F                  ;\
CODE_05E185:        8D 01 12      STA $1201                 ;/Set brightness to max
CODE_05E188:        9C 76 07      STZ $0776                 ;Clear paused flag
CODE_05E18B:        AD 06 12      LDA $1206                 ;\
CODE_05E18E:        49 03         EOR #$03                  ; |reverse window mask settings
CODE_05E190:        8D 06 12      STA $1206                 ;/
CODE_05E193:        AD 07 12      LDA $1207                 ;
CODE_05E196:        49 10         EOR #$10                  ;
CODE_05E198:        8D 07 12      STA $1207                 ;
CODE_05E19B:        20 F3 DD      JSR CODE_05DDF3           ;
CODE_05E19E:        22 BF 85 03   JSL CODE_0385BF           ;
CODE_05E1A2:        AD 03 12      LDA $1203                 ;
CODE_05E1A5:        29 F7         AND #$F7                  ;
CODE_05E1A7:        8D 03 12      STA $1203                 ;
CODE_05E1AA:        60            RTS                       ;

CODE_05E1AB:        20 FD DF      JSR CODE_05DFFD           ;
CODE_05E1AE:        60            RTS                       ;

CODE_05E1AF:        CE 8A 0F      DEC $0F8A                 ;
CODE_05E1B2:        D0 16         BNE CODE_05E1CA           ;
CODE_05E1B4:        EE 75 0B      INC $0B75                 ;
CODE_05E1B7:        A9 10         LDA #$10                  ;
CODE_05E1B9:        8D 6B 0B      STA $0B6B                 ;
CODE_05E1BC:        8D 8A 0F      STA $0F8A                 ;
CODE_05E1BF:        AD 77 0B      LDA $0B77                 ;\
CODE_05E1C2:        C9 02         CMP #$02                  ; |If option is not Save and Quit
CODE_05E1C4:        D0 04         BNE CODE_05E1CA           ; |Branch
CODE_05E1C6:        5C DE 80 00   JML CODE_0080DE           ;/ Go save and quit

CODE_05E1CA:        20 FD DF      JSR CODE_05DFFD           ;
CODE_05E1CD:        60            RTS                       ;

CODE_05E1CE:        8B            PHB                       ;\
CODE_05E1CF:        A9 7F         LDA #$7F                  ; |
CODE_05E1D1:        48            PHA                       ; |
CODE_05E1D2:        AB            PLB                       ; |
CODE_05E1D3:        C2 30         REP #$30                  ; |
CODE_05E1D5:        A2 7E 00      LDX #$007E                ; |Clear $7FF000-$7F1FFF
CODE_05E1D8:        A9 00 00      LDA #$0000                ; |
CODE_05E1DB:        9D 00 F0      STA $F000,x               ; |
CODE_05E1DE:        9D 80 F0      STA $F080,x               ; |
CODE_05E1E1:        9D 00 F1      STA $F100,x               ; |
CODE_05E1E4:        9D 80 F1      STA $F180,x               ; |
CODE_05E1E7:        CA            DEX                       ; |
CODE_05E1E8:        CA            DEX                       ; |
CODE_05E1E9:        10 F0         BPL CODE_05E1DB           ; |
CODE_05E1EB:        AB            PLB                       ;/
CODE_05E1EC:        E2 20         SEP #$20                  ;A = 8-bit. XY = 16-bit
CODE_05E1EE:        A2 41 26      LDX #$2641                ;\Window 1 left position & window 1 right position
CODE_05E1F1:        8E 30 43      STX $4330                 ;/2 regs write once. Indirect HDMA
CODE_05E1F4:        A2 2A E2      LDX #$E22A                ;\
CODE_05E1F7:        8E 32 43      STX $4332                 ; |Source: $05:E22A
CODE_05E1FA:        A9 05         LDA #$05                  ; |
CODE_05E1FC:        8D 34 43      STA $4334                 ;/
CODE_05E1FF:        A9 7F         LDA #$7F                  ;\
CODE_05E201:        8D 37 43      STA $4337                 ;/Indirect HDMA address bank byte: $7F:xxxx
CODE_05E204:        A9 00         LDA #$00                  ;\Window mask settings for BG1, 2, 3, 4.
CODE_05E206:        8D 04 12      STA $1204                 ; |No window for BG1, 2, 3, 4.
CODE_05E209:        9C 05 12      STZ $1205                 ;/
CODE_05E20C:        AD 06 12      LDA $1206                 ;\
CODE_05E20F:        09 03         ORA #$03                  ; |Enable window 1 for OBJ. Window 1 inversion for OBJ
CODE_05E211:        8D 06 12      STA $1206                 ;/
CODE_05E214:        AD 07 12      LDA $1207                 ;\
CODE_05E217:        09 10         ORA #$10                  ; |Enable window masking for OBJ on the mainscreen
CODE_05E219:        8D 07 12      STA $1207                 ; |
CODE_05E21C:        9C 08 12      STZ $1208                 ;/ None on the subscreen
CODE_05E21F:        E2 10         SEP #$10                  ;AXY = 8-bit
CODE_05E221:        AD 03 12      LDA $1203                 ;\
CODE_05E224:        09 08         ORA #$08                  ; |Enable HDMA
CODE_05E226:        8D 03 12      STA $1203                 ;/
CODE_05E229:        60            RTS                       ;

DATA_05E22A:        db $F8,$00,$F0,$F8,$F0,$F0,$00

CODE_05E231:        8B            PHB                       ;\
CODE_05E232:        A9 7F         LDA #$7F                  ; |
CODE_05E234:        48            PHA                       ; |
CODE_05E235:        AB            PLB                       ; |
CODE_05E236:        C2 30         REP #$30                  ; |
CODE_05E238:        A2 A0 01      LDX #$01A0                ; |
CODE_05E23B:        A9 FF 00      LDA #$00FF                ; |
CODE_05E23E:        9D 00 F0      STA $F000,x               ; |
CODE_05E241:        9D 02 F0      STA $F002,x               ; |
CODE_05E244:        9D 04 F0      STA $F004,x               ; |
CODE_05E247:        9D 06 F0      STA $F006,x               ; |
CODE_05E24A:        9D 08 F0      STA $F008,x               ; |
CODE_05E24D:        9D 0A F0      STA $F00A,x               ; |
CODE_05E250:        9D 0C F0      STA $F00C,x               ; |
CODE_05E253:        9D 0E F0      STA $F00E,x               ; |
CODE_05E256:        9D 10 F0      STA $F010,x               ; |
CODE_05E259:        9D 12 F0      STA $F012,x               ; |
CODE_05E25C:        9D 14 F0      STA $F014,x               ; |
CODE_05E25F:        9D 16 F0      STA $F016,x               ; |
CODE_05E262:        9D 18 F0      STA $F018,x               ; |Clear windowing HDMA table
CODE_05E265:        9D 1A F0      STA $F01A,x               ; |
CODE_05E268:        9D 1C F0      STA $F01C,x               ; |
CODE_05E26B:        9D 1E F0      STA $F01E,x               ; |
CODE_05E26E:        9D 00 F2      STA $F200,x               ; |
CODE_05E271:        9D 02 F2      STA $F202,x               ; |
CODE_05E274:        9D 04 F2      STA $F204,x               ; |
CODE_05E277:        9D 06 F2      STA $F206,x               ; |
CODE_05E27A:        9D 08 F2      STA $F208,x               ; |
CODE_05E27D:        9D 0A F2      STA $F20A,x               ; |
CODE_05E280:        9D 0C F2      STA $F20C,x               ; |
CODE_05E283:        9D 0E F2      STA $F20E,x               ; |
CODE_05E286:        9D 10 F2      STA $F210,x               ; |
CODE_05E289:        9D 12 F2      STA $F212,x               ; |
CODE_05E28C:        9D 14 F2      STA $F214,x               ; |
CODE_05E28F:        9D 16 F2      STA $F216,x               ; |
CODE_05E292:        9D 18 F2      STA $F218,x               ; |
CODE_05E295:        9D 1A F2      STA $F21A,x               ; |
CODE_05E298:        9D 1C F2      STA $F21C,x               ; |
CODE_05E29B:        9D 1E F2      STA $F21E,x               ; |
CODE_05E29E:        8A            TXA                       ; |
CODE_05E29F:        38            SEC                       ; |
CODE_05E2A0:        E9 20 00      SBC #$0020                ; |
CODE_05E2A3:        AA            TAX                       ; |
CODE_05E2A4:        10 95         BPL CODE_05E23B           ; |
CODE_05E2A6:        E2 30         SEP #$30                  ; |
CODE_05E2A8:        AB            PLB                       ; |
CODE_05E2A9:        60            RTS                       ;/

CODE_05E2AA:        AD F7 02      LDA $02F7                 ;
CODE_05E2AD:        D0 2F         BNE CODE_05E2DE           ;
CODE_05E2AF:        A4 BB         LDY $BB                   ;
CODE_05E2B1:        88            DEY                       ;
CODE_05E2B2:        D0 2A         BNE CODE_05E2DE           ;
CODE_05E2B4:        AD D3 03      LDA $03D3                 ;
CODE_05E2B7:        29 08         AND #$08                  ;
CODE_05E2B9:        D0 23         BNE CODE_05E2DE           ;
CODE_05E2BB:        BC 53 0B      LDY $0B53,x               ;
CODE_05E2BE:        AD B0 03      LDA $03B0                 ;
CODE_05E2C1:        99 00 08      STA $0800,y               ;
CODE_05E2C4:        AD BB 03      LDA $03BB                 ;
CODE_05E2C7:        99 01 08      STA $0801,y               ;
CODE_05E2CA:        A9 9F         LDA #$9F                  ;
CODE_05E2CC:        99 02 08      STA $0802,y               ;
CODE_05E2CF:        A5 0F         LDA $0F                   ;
CODE_05E2D1:        C9 07         CMP #$07                  ;
CODE_05E2D3:        D0 04         BNE CODE_05E2D9           ;
CODE_05E2D5:        A9 0A         LDA #$0A                  ;
CODE_05E2D7:        80 02         BRA CODE_05E2DB           ;

CODE_05E2D9:        A9 2A         LDA #$2A                  ;
CODE_05E2DB:        99 03 08      STA $0803,y               ;
CODE_05E2DE:        6B            RTL                       ;

;palette animation (axe, coins, [?], underground lanterns)
DATA_05E2DF:        db $DF,$1B,$7F,$02,$39,$01,$00,$00 ;
                    db $FF,$4B,$5F,$1F,$9C,$0D,$00,$00 ;
                    db $FF,$7F,$FF,$4B,$FF,$19,$00,$00 ;

DATA_05E2F7:        db $DA,$1A,$F3,$0D,$0D,$05,$00,$00 ;
                    db $5E,$2B,$77,$1E,$70,$11,$00,$00 ;
                    db $DF,$3B,$FB,$2E,$D3,$1D,$00,$00 ;

DATA_05E30F:        db $7F,$47,$98,$32,$B1,$15,$00,$00 ;
                    db $1B,$67,$34,$4A,$4D,$2D,$00,$00 ;
                    db $97,$7E,$B0,$6D,$EA,$54,$00,$00 ;

DATA_05E327:        db $5F,$03,$59,$02,$00,$38,$00,$00 ;
                    db $FF,$03,$BC,$02,$16,$00,$00,$00 ;
                    db $FF,$7F,$FF,$47,$DF,$00,$00,$00 ;

DATA_05E33F:        db $C5,$2C,$89,$3D,$CD,$3D,$51,$4E ;
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

CODE_05E3BF:        EE 74 0E      INC $0E74                 ;
CODE_05E3C2:        AD 74 0E      LDA $0E74                 ;
CODE_05E3C5:        29 07         AND #$07                  ;
CODE_05E3C7:        F0 03         BEQ CODE_05E3CC           ;
CODE_05E3C9:        4C 41 E4      JMP CODE_05E441           ;

CODE_05E3CC:        EE 75 0E      INC $0E75                 ;
CODE_05E3CF:        AD 75 0E      LDA $0E75                 ;
CODE_05E3D2:        C9 03         CMP #$03                  ;
CODE_05E3D4:        D0 05         BNE CODE_05E3DB           ;
CODE_05E3D6:        9C 75 0E      STZ $0E75                 ;
CODE_05E3D9:        A9 00         LDA #$00                  ;
CODE_05E3DB:        0A            ASL A                     ;
CODE_05E3DC:        0A            ASL A                     ;
CODE_05E3DD:        0A            ASL A                     ;
CODE_05E3DE:        AA            TAX                       ;
CODE_05E3DF:        C2 20         REP #$20                  ;
CODE_05E3E1:        BD DF E2      LDA DATA_05E2DF,x               ;
CODE_05E3E4:        8D 26 10      STA $1026                 ;
CODE_05E3E7:        BD 27 E3      LDA DATA_05E327,x               ;
CODE_05E3EA:        8D 0A 10      STA $100A                 ;
CODE_05E3ED:        BD F7 E2      LDA DATA_05E2F7,x               ;
CODE_05E3F0:        8D 2C 10      STA $102C                 ;
CODE_05E3F3:        BD E1 E2      LDA DATA_05E2DF+2,x               ;
CODE_05E3F6:        8D 28 10      STA $1028                 ;
CODE_05E3F9:        BD 29 E3      LDA DATA_05E327+2,x               ;
CODE_05E3FC:        8D 0C 10      STA $100C                 ;
CODE_05E3FF:        BD F9 E2      LDA DATA_05E2F7+2,x               ;
CODE_05E402:        8D 2E 10      STA $102E                 ;
CODE_05E405:        BD E3 E2      LDA DATA_05E2DF+4,x               ;
CODE_05E408:        8D 2A 10      STA $102A                 ;
CODE_05E40B:        BD 2B E3      LDA DATA_05E327+4,x               ;
CODE_05E40E:        8D 0E 10      STA $100E                 ;
CODE_05E411:        BD FB E2      LDA DATA_05E2F7+4,x               ;
CODE_05E414:        8D 30 10      STA $1030                 ;
CODE_05E417:        E2 20         SEP #$20                  ;
CODE_05E419:        AD 20 0E      LDA $0E20                 ;
CODE_05E41C:        D0 23         BNE CODE_05E441           ;
CODE_05E41E:        A5 DB         LDA $DB                   ;
CODE_05E420:        F0 54         BEQ CODE_05E476           ;
CODE_05E422:        C9 1B         CMP #$1B                  ;
CODE_05E424:        F0 50         BEQ CODE_05E476           ;
CODE_05E426:        C9 21         CMP #$21                  ;
CODE_05E428:        D0 03         BNE CODE_05E42D           ;
CODE_05E42A:        4C 87 E5      JMP CODE_05E587           ;

CODE_05E42D:        C9 09         CMP #$09                  ;
CODE_05E42F:        F0 47         BEQ CODE_05E478           ;
CODE_05E431:        C9 19         CMP #$19                  ;
CODE_05E433:        F0 04         BEQ CODE_05E439           ;
CODE_05E435:        C9 1A         CMP #$1A                  ;
CODE_05E437:        D0 03         BNE CODE_05E43C           ;
CODE_05E439:        4C A5 E4      JMP CODE_05E4A5           ;

CODE_05E43C:        A9 01         LDA #$01                  ;
CODE_05E43E:        8D 00 12      STA $1200                 ;
CODE_05E441:        AD 74 0E      LDA $0E74                 ;
CODE_05E444:        29 03         AND #$03                  ;
CODE_05E446:        D0 2E         BNE CODE_05E476           ;
CODE_05E448:        EE 76 0E      INC $0E76                 ;
CODE_05E44B:        AD 76 0E      LDA $0E76                 ;
CODE_05E44E:        C9 03         CMP #$03                  ;
CODE_05E450:        D0 05         BNE CODE_05E457           ;
CODE_05E452:        9C 76 0E      STZ $0E76                 ;
CODE_05E455:        A9 00         LDA #$00                  ;
CODE_05E457:        0A            ASL A                     ;
CODE_05E458:        0A            ASL A                     ;
CODE_05E459:        0A            ASL A                     ;
CODE_05E45A:        AA            TAX                       ;
CODE_05E45B:        C2 20         REP #$20                  ;
CODE_05E45D:        BD 0F E3      LDA DATA_05E30F,x               ;
CODE_05E460:        8D 32 10      STA $1032                 ;
CODE_05E463:        BD 11 E3      LDA DATA_05E30F+2,x               ;
CODE_05E466:        8D 34 10      STA $1034                 ;
CODE_05E469:        BD 13 E3      LDA DATA_05E30F+4,x               ;
CODE_05E46C:        8D 36 10      STA $1036                 ;
CODE_05E46F:        E2 20         SEP #$20                  ;
CODE_05E471:        A9 01         LDA #$01                  ;
CODE_05E473:        8D 00 12      STA $1200                 ;
CODE_05E476:        AB            PLB                       ;
CODE_05E477:        6B            RTL                       ;

CODE_05E478:        AD 74 0E      LDA $0E74                 ;
CODE_05E47B:        29 38         AND #$38                  ;
CODE_05E47D:        4A            LSR A                     ;
CODE_05E47E:        4A            LSR A                     ;
CODE_05E47F:        AA            TAX                       ;
CODE_05E480:        C2 20         REP #$20                  ;
CODE_05E482:        BD D7 E4      LDA DATA_05E4D7,x               ;
CODE_05E485:        8D E6 10      STA $10E6                 ;
CODE_05E488:        BD E7 E4      LDA DATA_05E4D7+16,x               ;
CODE_05E48B:        8D E8 10      STA $10E8                 ;
CODE_05E48E:        BD F7 E4      LDA DATA_05E4D7+32,x               ;
CODE_05E491:        8D FA 10      STA $10FA                 ;
CODE_05E494:        BD 07 E5      LDA DATA_05E4D7+48,x               ;
CODE_05E497:        8D FC 10      STA $10FC                 ;
CODE_05E49A:        BD 17 E5      LDA DATA_05E4D7+64,x               ;
CODE_05E49D:        8D FE 10      STA $10FE                 ;
CODE_05E4A0:        E2 20         SEP #$20                  ;
CODE_05E4A2:        4C 3C E4      JMP CODE_05E43C           ;

CODE_05E4A5:        AD 74 0E      LDA $0E74                 ;
CODE_05E4A8:        29 38         AND #$38                  ;
CODE_05E4AA:        0A            ASL A                     ;
CODE_05E4AB:        AA            TAX                       ;
CODE_05E4AC:        C2 20         REP #$20                  ;
CODE_05E4AE:        BD 3F E3      LDA DATA_05E33F,x               ;
CODE_05E4B1:        8D E6 10      STA $10E6                 ;
CODE_05E4B4:        BD 41 E3      LDA DATA_05E33F+2,x               ;
CODE_05E4B7:        8D E8 10      STA $10E8                 ;
CODE_05E4BA:        BD 43 E3      LDA DATA_05E33F+4,x               ;
CODE_05E4BD:        8D EA 10      STA $10EA                 ;
CODE_05E4C0:        BD 45 E3      LDA DATA_05E33F+6,x               ;
CODE_05E4C3:        8D EC 10      STA $10EC                 ;
CODE_05E4C6:        BD 47 E3      LDA DATA_05E33F+8,x               ;
CODE_05E4C9:        8D EE 10      STA $10EE                 ;
CODE_05E4CC:        BD 49 E3      LDA DATA_05E33F+10,x               ;
CODE_05E4CF:        8D F0 10      STA $10F0                 ;
CODE_05E4D2:        E2 20         SEP #$20                  ;
CODE_05E4D4:        4C 3C E4      JMP CODE_05E43C           ;

DATA_05E4D7:        db $BF,$7F,$38,$7F,$B4,$76,$30,$72 ;
                    db $BF,$7F,$38,$7F,$B4,$76,$30,$72 ;
                    db $38,$7F,$B4,$76,$30,$72,$BF,$7F ;
                    db $38,$7F,$B4,$76,$30,$72,$BF,$7F ;
                    db $B4,$76,$30,$72,$BF,$7F,$38,$7F ;
                    db $B4,$76,$30,$72,$BF,$7F,$38,$7F ;
                    db $C9,$69,$87,$61,$45,$59,$03,$51 ;
                    db $C9,$69,$C9,$69,$C9,$69,$46,$59 ;
                    db $30,$72,$BF,$7F,$38,$7F,$B4,$76 ;
                    db $30,$72,$BF,$7F,$38,$7F,$B4,$76 ;

DATA_05E527:        db $63,$0C,$E5,$1C,$27,$29,$06,$25 ;
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21 ;
                    db $63,$0C,$29,$19,$2C,$21,$2B,$1D ;
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21 ;
                    db $63,$0C,$E5,$1C,$27,$29,$06,$25 ;
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21 ;
                    db $63,$0C,$29,$19,$2C,$21,$2B,$1D ;
                    db $63,$0C,$07,$1D,$2A,$25,$09,$21 ;

DATA_05E567:        db $77,$00,$7A,$01,$98,$00,$9B,$01 ;
                    db $B9,$00,$BC,$01,$FB,$00,$FE,$01 ;
                    db $DA,$00,$DD,$01,$B9,$00,$BC,$01 ;
                    db $98,$00,$9B,$01,$77,$00,$7A,$01 ;

CODE_05E587:        AD 74 0E      LDA $0E74                 ;
CODE_05E58A:        29 38         AND #$38                  ;
CODE_05E58C:        AA            TAX                       ;
CODE_05E58D:        4A            LSR A                     ;
CODE_05E58E:        A8            TAY                       ;
CODE_05E58F:        C2 20         REP #$20                  ;
CODE_05E591:        BD 27 E5      LDA DATA_05E527,x               ;
CODE_05E594:        8D E2 10      STA $10E2                 ;
CODE_05E597:        BD 29 E5      LDA DATA_05E527+2,x               ;
CODE_05E59A:        8D E4 10      STA $10E4                 ;
CODE_05E59D:        BD 2B E5      LDA DATA_05E527+4,x               ;
CODE_05E5A0:        8D E6 10      STA $10E6                 ;
CODE_05E5A3:        BD 2D E5      LDA DATA_05E527+6,x               ;
CODE_05E5A6:        8D E8 10      STA $10E8                 ;
CODE_05E5A9:        B9 67 E5      LDA DATA_05E567,y               ;
CODE_05E5AC:        8D FC 10      STA $10FC                 ;
CODE_05E5AF:        B9 69 E5      LDA DATA_05E567+2,y               ;
CODE_05E5B2:        8D FE 10      STA $10FE                 ;
CODE_05E5B5:        E2 20         SEP #$20                  ;
CODE_05E5B7:        A5 1C         LDA $1C                   ;
CODE_05E5B9:        C9 35         CMP #$35                  ;
CODE_05E5BB:        F0 74         BEQ CODE_05E631           ;
CODE_05E5BD:        AD B7 0E      LDA $0EB7                 ;
CODE_05E5C0:        D0 24         BNE CODE_05E5E6           ;
CODE_05E5C2:        AD B8 07      LDA $07B8                 ;
CODE_05E5C5:        29 0F         AND #$0F                  ;
CODE_05E5C7:        D0 68         BNE CODE_05E631           ;
CODE_05E5C9:        A5 0F         LDA $0F                   ;
CODE_05E5CB:        C9 08         CMP #$08                  ;
CODE_05E5CD:        D0 05         BNE CODE_05E5D4           ;
CODE_05E5CF:        A9 18         LDA #$18                  ;\Lightning sound
CODE_05E5D1:        8D 03 16      STA $1603                 ;/
CODE_05E5D4:        A9 11         LDA #$11                  ;
CODE_05E5D6:        8D B8 0E      STA $0EB8                 ;
CODE_05E5D9:        A9 1F         LDA #$1F                  ;
CODE_05E5DB:        8D B9 0E      STA $0EB9                 ;
CODE_05E5DE:        8D BA 0E      STA $0EBA                 ;
CODE_05E5E1:        EE B7 0E      INC $0EB7                 ;
CODE_05E5E4:        80 28         BRA CODE_05E60E           ;

CODE_05E5E6:        CE B8 0E      DEC $0EB8                 ;
CODE_05E5E9:        CE B9 0E      DEC $0EB9                 ;
CODE_05E5EC:        CE B9 0E      DEC $0EB9                 ;
CODE_05E5EF:        CE BA 0E      DEC $0EBA                 ;
CODE_05E5F2:        CE BA 0E      DEC $0EBA                 ;
CODE_05E5F5:        CE B8 0E      DEC $0EB8                 ;
CODE_05E5F8:        CE B9 0E      DEC $0EB9                 ;
CODE_05E5FB:        CE B9 0E      DEC $0EB9                 ;
CODE_05E5FE:        CE BA 0E      DEC $0EBA                 ;
CODE_05E601:        CE BA 0E      DEC $0EBA                 ;
CODE_05E604:        AD B8 0E      LDA $0EB8                 ;
CODE_05E607:        C9 03         CMP #$03                  ;
CODE_05E609:        D0 03         BNE CODE_05E60E           ;
CODE_05E60B:        9C B7 0E      STZ $0EB7                 ;
CODE_05E60E:        C2 20         REP #$20                  ;
CODE_05E610:        AD B8 0E      LDA $0EB8                 ;
CODE_05E613:        29 FF 00      AND #$00FF                ;
CODE_05E616:        EB            XBA                       ;
CODE_05E617:        0A            ASL A                     ;
CODE_05E618:        0A            ASL A                     ;
CODE_05E619:        85 E4         STA $E4                   ;
CODE_05E61B:        AD B9 0E      LDA $0EB9                 ;
CODE_05E61E:        29 FF 00      AND #$00FF                ;
CODE_05E621:        EB            XBA                       ;
CODE_05E622:        4A            LSR A                     ;
CODE_05E623:        4A            LSR A                     ;
CODE_05E624:        4A            LSR A                     ;
CODE_05E625:        05 E4         ORA $E4                   ;
CODE_05E627:        0D BA 0E      ORA $0EBA                 ;
CODE_05E62A:        85 E4         STA $E4                   ;
CODE_05E62C:        8D E2 10      STA $10E2                 ;
CODE_05E62F:        E2 20         SEP #$20                  ;
CODE_05E631:        4C 3C E4      JMP CODE_05E43C           ;

CODE_05E634:        AD 76 0B      LDA $0B76                 ;
CODE_05E637:        D0 75         BNE CODE_05E6AE           ;
CODE_05E639:        9C 8D 02      STZ $028D                 ;Flag to upload animated FG
CODE_05E63C:        A5 09         LDA $09                   ;
CODE_05E63E:        29 07         AND #$07                  ;
CODE_05E640:        D0 38         BNE CODE_05E67A           ;
CODE_05E642:        A5 09         LDA $09                   ;
CODE_05E644:        29 38         AND #$38                  ;
CODE_05E646:        4A            LSR A                     ;
CODE_05E647:        4A            LSR A                     ;
CODE_05E648:        4A            LSR A                     ;
CODE_05E649:        85 04         STA $04                   ;
CODE_05E64B:        A9 06         LDA #$06                  ;
CODE_05E64D:        8D 87 02      STA $0287                 ;
CODE_05E650:        C2 20         REP #$20                  ;
CODE_05E652:        A9 00 80      LDA #$8000                ;
CODE_05E655:        A4 04         LDY $04                   ;
CODE_05E657:        88            DEY                       ;
CODE_05E658:        30 06         BMI CODE_05E660           ;
CODE_05E65A:        18            CLC                       ;
CODE_05E65B:        69 00 08      ADC #$0800                ;
CODE_05E65E:        80 F7         BRA CODE_05E657           ;

CODE_05E660:        18            CLC                       ;
CODE_05E661:        69 00 40      ADC #$4000                ;
CODE_05E664:        8D 85 02      STA $0285                 ;
CODE_05E667:        A9 00 1C      LDA #$1C00                ;
CODE_05E66A:        8D 8A 02      STA $028A                 ;
CODE_05E66D:        A9 00 06      LDA #$0600                ;
CODE_05E670:        8D 88 02      STA $0288                 ;
CODE_05E673:        E2 20         SEP #$20                  ;
CODE_05E675:        EE 8D 02      INC $028D                 ;Set flag to upload animated FG
CODE_05E678:        80 34         BRA CODE_05E6AE           ;

CODE_05E67A:        A5 09         LDA $09                   ;
CODE_05E67C:        18            CLC                       ;
CODE_05E67D:        69 04         ADC #$04                  ;
CODE_05E67F:        8D 85 02      STA $0285                 ;
CODE_05E682:        29 07         AND #$07                  ;
CODE_05E684:        D0 28         BNE CODE_05E6AE           ;
CODE_05E686:        A9 0C         LDA #$0C                  ;
CODE_05E688:        8D 87 02      STA $0287                 ;
CODE_05E68B:        C2 20         REP #$20                  ;
CODE_05E68D:        AD 85 02      LDA $0285                 ;
CODE_05E690:        29 38 00      AND #$0038                ;
CODE_05E693:        0A            ASL A                     ;
CODE_05E694:        0A            ASL A                     ;
CODE_05E695:        0A            ASL A                     ;
CODE_05E696:        18            CLC                       ;
CODE_05E697:        69 00 FB      ADC #$FB00                ;
CODE_05E69A:        8D 85 02      STA $0285                 ;
CODE_05E69D:        A9 60 51      LDA #$5160                ;
CODE_05E6A0:        8D 8A 02      STA $028A                 ;
CODE_05E6A3:        A9 40 00      LDA #$0040                ;
CODE_05E6A6:        8D 88 02      STA $0288                 ;
CODE_05E6A9:        E2 20         SEP #$20                  ;
CODE_05E6AB:        EE 8D 02      INC $028D                 ;
CODE_05E6AE:        6B            RTL                       ;

DATA_05E6AF:        db $01,$18								;Bonus Room background number, indexed by player number.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Graphics Tileset upload routines
;; $99 = Tileset number to upload
;; If tileset is 01 (Mario Bonus), then the game
;; picks either 01 or 18 (Luigi Bonus) according 
;; to the current player.

CODE_05E6B1:        E2 30         SEP #$30                  ;
CODE_05E6B3:        8B            PHB                       ;
CODE_05E6B4:        4B            PHK                       ;
CODE_05E6B5:        AB            PLB                       ;
CODE_05E6B6:        A5 99         LDA $99                   ;\
CODE_05E6B8:        C9 01         CMP #$01                  ; | Branch if not bonus room
CODE_05E6BA:        D0 0B         BNE CODE_05E6C7           ;/
CODE_05E6BC:        8D F8 02      STA $02F8                 ;Set bonus room flag
CODE_05E6BF:        AE 53 07      LDX $0753                 ;\
CODE_05E6C2:        BD AF E6      LDA DATA_05E6AF,x         ; | Get Luigi or Mario's bonus room tileset number
CODE_05E6C5:        85 99         STA $99                   ;/
CODE_05E6C7:        20 2A E8      JSR CODE_05E82A           ;GFX upload routine
CODE_05E6CA:        A5 99         LDA $99                   ;\
CODE_05E6CC:        0A            ASL A                     ; |
CODE_05E6CD:        AA            TAX                       ; |
CODE_05E6CE:        BD DB E6      LDA PNTR_05E6DB,x         ; |
CODE_05E6D1:        85 00         STA $00                   ; | A routine for each tilemap
CODE_05E6D3:        BD DC E6      LDA PNTR_05E6DB+1,x       ; |
CODE_05E6D6:        85 01         STA $01                   ; |
CODE_05E6D8:        6C 00 00      JMP ($0000)               ;/

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
CODE_05E71B:        64 99         STZ $99                   ;Set GFX to upload to none
CODE_05E71D:        AB            PLB                       ;
CODE_05E71E:        9C 8D 02      STZ $028D                 ;Disable flag to upload animated graphics
CODE_05E721:        A9 01         LDA #$01                  ;\
CODE_05E723:        8D 8C 02      STA $028C                 ;/Disable graphics animation and stuff
CODE_05E726:        6B            RTL                       ;

;Set grass or snow foreground
CODE_05E727:        A5 DB         LDA $DB                   ;\
CODE_05E729:        C9 16         CMP #$16                  ; |If tall slim hills background with snow
CODE_05E72B:        F0 1B         BEQ CODE_05E748           ;/ get snow foreground
CODE_05E72D:        C9 14         CMP #$14                  ;\ Same as above
CODE_05E72F:        F0 17         BEQ CODE_05E748           ;/
CODE_05E731:        C9 0D         CMP #$0D                  ;\ Same as above
CODE_05E733:        F0 13         BEQ CODE_05E748           ;/
CODE_05E735:        A9 17         LDA #$17                  ;\Grass foreground
CODE_05E737:        20 2A E8      JSR CODE_05E82A           ;/GFX upload routine
CODE_05E73A:        80 DF         BRA CODE_05E71B           ;finish upload

;Set underground foreground
CODE_05E73C:        A9 11         LDA #$11                  ;\Underground foreground
CODE_05E73E:        20 2A E8      JSR CODE_05E82A           ;/GFX upload routine
CODE_05E741:        80 D8         BRA CODE_05E71B           ;finish upload

;Set background to starry night and foreground to snow
CODE_05E743:        A9 16         LDA #$16                  ;\Starry night background
CODE_05E745:        20 2A E8      JSR CODE_05E82A           ;/GFX upload routine
CODE_05E748:        A9 12         LDA #$12                  ;\Snow foreground
CODE_05E74A:        20 2A E8      JSR CODE_05E82A           ;/GFX upload routine
CODE_05E74D:        80 CC         BRA CODE_05E71B           ;finish upload

;Set Bowser's castle background
CODE_05E74F:        A9 13         LDA #$13                  ;\Bowser's castle background (1)
CODE_05E751:        20 2A E8      JSR CODE_05E82A           ;/GFX upload routine
CODE_05E754:        A9 14         LDA #$14                  ;\Bowser's castle background (2)
CODE_05E756:        20 2A E8      JSR CODE_05E82A           ;/GFX upload routine
CODE_05E759:        80 C0         BRA CODE_05E71B           ;finish upload

;Set game over graphics
CODE_05E75B:        A9 15         LDA #$15                  ;\Game over and time up text
CODE_05E75D:        20 2A E8      JSR CODE_05E82A           ;/GFX upload routine
CODE_05E760:        80 B9         BRA CODE_05E71B           ;finish upload

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
CODE_05E82A:        0A            ASL A                     ;\ Routine enters with $7E0099 loaded in accumulator
CODE_05E82B:        AA            TAX                       ;/ but can also be fixed values. A * 2 to index
CODE_05E82C:        BD 62 E7      LDA DATA_05E762,x         ;\
CODE_05E82F:        8D 87 02      STA $0287                 ;/Load DMA source bank byte
CODE_05E832:        C2 20         REP #$20                  ;16-bit A
CODE_05E834:        BD 94 E7      LDA DATA_05E794,x         ;\DMA source address
CODE_05E837:        8D 85 02      STA $0285                 ;/
CODE_05E83A:        BD C6 E7      LDA DATA_05E7C6,x         ;\
CODE_05E83D:        8D 8A 02      STA $028A                 ;/DMA VRAM address
CODE_05E840:        BD F8 E7      LDA DATA_05E7F8,x         ;\
CODE_05E843:        8D 88 02      STA $0288                 ;/DMA size
CODE_05E846:        E2 20         SEP #$20                  ;8-bit A
CODE_05E848:        20 4C E8      JSR CODE_05E84C           ;DMA this setup
CODE_05E84B:        60            RTS                       ;

CODE_05E84C:        A9 80         LDA #$80                  ;\
CODE_05E84E:        8D 15 21      STA $2115                 ;/address increment mode
CODE_05E851:        C2 20         REP #$20                  ;
CODE_05E853:        AD 8A 02      LDA $028A                 ;\
CODE_05E856:        8D 16 21      STA $2116                 ;/DMA VRAM address
CODE_05E859:        A9 01 18      LDA #$1801                ;\
CODE_05E85C:        8D 00 43      STA $4300                 ;/2 regs write once for $2118
CODE_05E85F:        AD 85 02      LDA $0285                 ;\
CODE_05E862:        8D 02 43      STA $4302                 ;/Set DMA source address
CODE_05E865:        AE 87 02      LDX $0287                 ;\
CODE_05E868:        8E 04 43      STX $4304                 ;/DMA source bank
CODE_05E86B:        AD 88 02      LDA $0288                 ;\
CODE_05E86E:        8D 05 43      STA $4305                 ;/DMA size
CODE_05E871:        A2 01         LDX #$01                  ;\
CODE_05E873:        8E 0B 42      STX $420B                 ;/Enable DMA on channel 0
CODE_05E876:        E2 20         SEP #$20                  ;
CODE_05E878:        60            RTS                       ;

CODE_05E879:        8B            PHB                       ;
CODE_05E87A:        4B            PHK                       ;
CODE_05E87B:        AB            PLB                       ;
CODE_05E87C:        9C 49 0F      STZ $0F49                 ;
CODE_05E87F:        DA            PHX                       ;
CODE_05E880:        A6 9E         LDX $9E                   ;Get current sprite index
CODE_05E882:        B5 1C         LDA $1C,x                 ;\
CODE_05E884:        C9 04         CMP #$04                  ; |Return if not a regular shelled walking sprite
CODE_05E886:        B0 08         BCS CODE_05E890           ;/
CODE_05E888:        B5 29         LDA $29,x                 ;\
CODE_05E88A:        30 08         BMI CODE_05E894           ;/If not kicked, return
CODE_05E88C:        29 06         AND #$06                  ;\
CODE_05E88E:        F0 04         BEQ CODE_05E894           ;/If not stunned or upside-down, return
CODE_05E890:        FA            PLX                       ;
CODE_05E891:        AB            PLB                       ;
CODE_05E892:        18            CLC                       ;
CODE_05E893:        6B            RTL                       ;

CODE_05E894:        BD 29 00      LDA $0029,x               ;
CODE_05E897:        85 E0         STA $E0                   ;
CODE_05E899:        C9 02         CMP #$02                  ;
CODE_05E89B:        F0 08         BEQ CODE_05E8A5           ;
CODE_05E89D:        C9 03         CMP #$03                  ;
CODE_05E89F:        F0 04         BEQ CODE_05E8A5           ;
CODE_05E8A1:        C9 04         CMP #$04                  ;
CODE_05E8A3:        D0 05         BNE CODE_05E8AA           ;
CODE_05E8A5:        9E 40 0F      STZ $0F40,x               ;
CODE_05E8A8:        80 0D         BRA CODE_05E8B7           ;

CODE_05E8AA:        29 80         AND #$80                  ;
CODE_05E8AC:        F0 E2         BEQ CODE_05E890           ;
CODE_05E8AE:        A5 0F         LDA $0F                   ;
CODE_05E8B0:        C9 0A         CMP #$0A                  ;
CODE_05E8B2:        B0 03         BCS CODE_05E8B7           ;
CODE_05E8B4:        FE 40 0F      INC $0F40,x               ;
CODE_05E8B7:        BD 40 0F      LDA $0F40,x               ;
CODE_05E8BA:        29 0C         AND #$0C                  ;
CODE_05E8BC:        85 E4         STA $E4                   ;
CODE_05E8BE:        B5 1C         LDA $1C,x                 ;
CODE_05E8C0:        A6 E4         LDX $E4                   ;
CODE_05E8C2:        C9 02         CMP #$02                  ;
CODE_05E8C4:        D0 05         BNE CODE_05E8CB           ;
CODE_05E8C6:        8A            TXA                       ;
CODE_05E8C7:        18            CLC                       ;
CODE_05E8C8:        69 10         ADC #$10                  ;
CODE_05E8CA:        AA            TAX                       ;
CODE_05E8CB:        A5 E0         LDA $E0                   ;
CODE_05E8CD:        29 0F         AND #$0F                  ;
CODE_05E8CF:        C9 04         CMP #$04                  ;
CODE_05E8D1:        D0 09         BNE CODE_05E8DC           ;
CODE_05E8D3:        8A            TXA                       ;
CODE_05E8D4:        18            CLC                       ;
CODE_05E8D5:        69 20         ADC #$20                  ;
CODE_05E8D7:        AA            TAX                       ;
CODE_05E8D8:        A9 80         LDA #$80                  ;
CODE_05E8DA:        04 04         TSB $04                   ;
CODE_05E8DC:        98            TYA                       ;
CODE_05E8DD:        18            CLC                       ;
CODE_05E8DE:        69 08         ADC #$08                  ;
CODE_05E8E0:        A8            TAY                       ;
CODE_05E8E1:        AD B9 03      LDA $03B9                 ;
CODE_05E8E4:        18            CLC                       ;
CODE_05E8E5:        69 08         ADC #$08                  ;
CODE_05E8E7:        C9 F0         CMP #$F0                  ;
CODE_05E8E9:        90 02         BCC CODE_05E8ED           ;
CODE_05E8EB:        A9 F0         LDA #$F0                  ;
CODE_05E8ED:        48            PHA                       ;
CODE_05E8EE:        A5 04         LDA $04                   ;
CODE_05E8F0:        10 06         BPL CODE_05E8F8           ;
CODE_05E8F2:        68            PLA                       ;
CODE_05E8F3:        18            CLC                       ;
CODE_05E8F4:        69 02         ADC #$02                  ;
CODE_05E8F6:        80 01         BRA CODE_05E8F9           ;

CODE_05E8F8:        68            PLA                       ;
CODE_05E8F9:        20 BF E9      JSR CODE_05E9BF           ;
CODE_05E8FC:        A5 04         LDA $04                   ;
CODE_05E8FE:        10 08         BPL CODE_05E908           ;
CODE_05E900:        AD B9 03      LDA $03B9                 ;
CODE_05E903:        18            CLC                       ;
CODE_05E904:        69 12         ADC #$12                  ;
CODE_05E906:        80 06         BRA CODE_05E90E           ;

CODE_05E908:        AD B9 03      LDA $03B9                 ;
CODE_05E90B:        18            CLC                       ;
CODE_05E90C:        69 10         ADC #$10                  ;
CODE_05E90E:        20 BF E9      JSR CODE_05E9BF           ;
CODE_05E911:        A6 E4         LDX $E4                   ;
CODE_05E913:        BD 28 EA      LDA DATA_05EA28,x               ;
CODE_05E916:        05 04         ORA $04                   ;
CODE_05E918:        99 F3 08      STA $08F3,y               ;
CODE_05E91B:        BD 29 EA      LDA DATA_05EA28+1,x               ;
CODE_05E91E:        05 04         ORA $04                   ;
CODE_05E920:        99 F7 08      STA $08F7,y               ;
CODE_05E923:        BD 2A EA      LDA DATA_05EA28+2,x               ;
CODE_05E926:        05 04         ORA $04                   ;
CODE_05E928:        99 FB 08      STA $08FB,y               ;
CODE_05E92B:        BD 2B EA      LDA DATA_05EA28+3,x               ;
CODE_05E92E:        05 04         ORA $04                   ;
CODE_05E930:        99 FF 08      STA $08FF,y               ;
CODE_05E933:        EE 49 0F      INC $0F49                 ;
CODE_05E936:        FA            PLX                       ;
CODE_05E937:        AB            PLB                       ;
CODE_05E938:        38            SEC                       ;
CODE_05E939:        6B            RTL                       ;

DATA_05E93A:        db $00,$FC,$F9,$F7,$F5,$F4,$F3,$F2
                    db $F2,$F2,$F3,$F4,$F5,$F7,$F9,$FC
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00

CODE_05E95A:        8B            PHB                       ;
CODE_05E95B:        4B            PHK                       ;
CODE_05E95C:        AB            PLB                       ;
CODE_05E95D:        DA            PHX                       ;
CODE_05E95E:        A6 9E         LDX $9E                   ;Get current sprite index
CODE_05E960:        B5 1C         LDA $1C,x                 ;\
CODE_05E962:        C9 35         CMP #$35                  ; | If not princess peach, branch
CODE_05E964:        D0 48         BNE CODE_05E9AE           ;/
CODE_05E966:        AD 5F 07      LDA $075F                 ;\
CODE_05E969:        C9 07         CMP #$07                  ; | If world 8, return
CODE_05E96B:        F0 41         BEQ CODE_05E9AE           ;/
CODE_05E96D:        AD 4A 0F      LDA $0F4A                 ;
CODE_05E970:        29 1F         AND #$1F                  ;
CODE_05E972:        BC 46 0B      LDY $0B46,x               ;
CODE_05E975:        5A            PHY                       ;
CODE_05E976:        AA            TAX                       ;
CODE_05E977:        BD 3A E9      LDA DATA_05E93A,x               ;
CODE_05E97A:        85 DD         STA $DD                   ;
CODE_05E97C:        20 B1 E9      JSR CODE_05E9B1           ;
CODE_05E97F:        20 B1 E9      JSR CODE_05E9B1           ;
CODE_05E982:        20 B1 E9      JSR CODE_05E9B1           ;
CODE_05E985:        20 B1 E9      JSR CODE_05E9B1           ;
CODE_05E988:        20 B1 E9      JSR CODE_05E9B1           ;
CODE_05E98B:        20 B1 E9      JSR CODE_05E9B1           ;
CODE_05E98E:        7A            PLY                       ;
CODE_05E98F:        E0 10         CPX #$10                  ;
CODE_05E991:        B0 18         BCS CODE_05E9AB           ;
CODE_05E993:        A9 FF         LDA #$FF                  ;
CODE_05E995:        99 02 09      STA $0902,y               ;
CODE_05E998:        99 06 09      STA $0906,y               ;
CODE_05E99B:        A9 D7         LDA #$D7                  ;
CODE_05E99D:        99 0A 09      STA $090A,y               ;
CODE_05E9A0:        99 0E 09      STA $090E,y               ;
CODE_05E9A3:        A9 EE         LDA #$EE                  ;
CODE_05E9A5:        99 12 09      STA $0912,y               ;
CODE_05E9A8:        99 16 09      STA $0916,y               ;
CODE_05E9AB:        EE 4A 0F      INC $0F4A                 ;
CODE_05E9AE:        FA            PLX                       ;
CODE_05E9AF:        AB            PLB                       ;
CODE_05E9B0:        6B            RTL                       ;

CODE_05E9B1:        B9 01 09      LDA $0901,y               ;
CODE_05E9B4:        18            CLC                       ;
CODE_05E9B5:        65 DD         ADC $DD                   ;
CODE_05E9B7:        99 01 09      STA $0901,y               ;
CODE_05E9BA:        C8            INY                       ;
CODE_05E9BB:        C8            INY                       ;
CODE_05E9BC:        C8            INY                       ;
CODE_05E9BD:        C8            INY                       ;
CODE_05E9BE:        60            RTS                       ;

CODE_05E9BF:        99 01 09      STA $0901,y               ;
CODE_05E9C2:        99 05 09      STA $0905,y               ;
CODE_05E9C5:        AD AE 03      LDA $03AE                 ;
CODE_05E9C8:        99 00 09      STA $0900,y               ;
CODE_05E9CB:        18            CLC                       ;
CODE_05E9CC:        69 08         ADC #$08                  ;
CODE_05E9CE:        99 04 09      STA $0904,y               ;
CODE_05E9D1:        BD E8 E9      LDA DATA_05E9E8,x               ;
CODE_05E9D4:        99 02 09      STA $0902,y               ;
CODE_05E9D7:        BD E9 E9      LDA DATA_05E9E8+1,x               ;
CODE_05E9DA:        99 06 09      STA $0906,y               ;
CODE_05E9DD:        C8            INY                       ;
CODE_05E9DE:        C8            INY                       ;
CODE_05E9DF:        C8            INY                       ;
CODE_05E9E0:        C8            INY                       ;
CODE_05E9E1:        C8            INY                       ;
CODE_05E9E2:        C8            INY                       ;
CODE_05E9E3:        C8            INY                       ;
CODE_05E9E4:        C8            INY                       ;
CODE_05E9E5:        E8            INX                       ;
CODE_05E9E6:        E8            INX                       ;
CODE_05E9E7:        60            RTS                       ;

DATA_05E9E8:        db $6E,$6E,$6F,$6F,$C2,$C4,$C3,$C5 ;
                    db $C0,$C0,$C1,$C1,$C4,$C2,$C5,$C3 ;
                    db $F5,$F5,$F4,$F4,$80,$82,$81,$83 ;
                    db $68,$68,$90,$90,$82,$80,$83,$81 ;
                    db $6F,$6F,$6E,$6E,$C3,$C5,$C2,$C4 ;
                    db $C1,$C1,$C0,$C0,$C5,$C3,$C4,$C2 ;
                    db $F4,$F4,$F5,$F5,$81,$83,$80,$82 ;
                    db $90,$90,$68,$68,$83,$81,$82,$80 ;

DATA_05EA28:        db $00,$40,$00,$40,$00,$00,$00,$00 ;
                    db $00,$40,$00,$40,$40,$40,$40,$40 ;

CODE_05EA38:        BD 46 0B      LDA $0B46,x               ;
CODE_05EA3B:        A8            TAY                       ;
CODE_05EA3C:        AD AE 03      LDA $03AE                 ;
CODE_05EA3F:        99 00 09      STA $0900,y               ;
CODE_05EA42:        BD BC 00      LDA $00BC,x               ;
CODE_05EA45:        C9 02         CMP #$02                  ;
CODE_05EA47:        B0 07         BCS CODE_05EA50           ;
CODE_05EA49:        AD B9 03      LDA $03B9                 ;
CODE_05EA4C:        C9 E8         CMP #$E8                  ;
CODE_05EA4E:        90 02         BCC CODE_05EA52           ;
CODE_05EA50:        A9 F0         LDA #$F0                  ;
CODE_05EA52:        99 01 09      STA $0901,y               ;
CODE_05EA55:        BD A1 00      LDA $00A1,x               ;
CODE_05EA58:        30 04         BMI CODE_05EA5E           ;
CODE_05EA5A:        A9 A9         LDA #$A9                  ;
CODE_05EA5C:        80 02         BRA CODE_05EA60           ;

CODE_05EA5E:        A9 29         LDA #$29                  ;
CODE_05EA60:        99 03 09      STA $0903,y               ;
CODE_05EA63:        AD 68 0E      LDA $0E68                 ;
CODE_05EA66:        29 18         AND #$18                  ;
CODE_05EA68:        4A            LSR A                     ;
CODE_05EA69:        4A            LSR A                     ;
CODE_05EA6A:        18            CLC                       ;
CODE_05EA6B:        69 62         ADC #$62                  ;
CODE_05EA6D:        99 02 09      STA $0902,y               ;
CODE_05EA70:        BD 1A 02      LDA $021A,x               ;
CODE_05EA73:        85 E4         STA $E4                   ;
CODE_05EA75:        B5 79         LDA $79,x                 ;
CODE_05EA77:        85 E5         STA $E5                   ;
CODE_05EA79:        C2 20         REP #$20                  ;
CODE_05EA7B:        A5 E4         LDA $E4                   ;
CODE_05EA7D:        38            SEC                       ;
CODE_05EA7E:        E5 42         SBC $42                   ;
CODE_05EA80:        85 E6         STA $E6                   ;
CODE_05EA82:        E2 20         SEP #$20                  ;
CODE_05EA84:        A9 02         LDA #$02                  ;
CODE_05EA86:        99 00 0D      STA $0D00,y               ;
CODE_05EA89:        A5 E7         LDA $E7                   ;
CODE_05EA8B:        F0 05         BEQ CODE_05EA92           ;
CODE_05EA8D:        A9 03         LDA #$03                  ;
CODE_05EA8F:        99 00 0D      STA $0D00,y               ;
CODE_05EA92:        6B            RTL                       ;

DATA_05EA93:        db $F9,$0E,$F7,$0E,$FA,$FB,$F8,$FB
                    db $F6,$FB

DATA_05EA9D:        db $20,$22,$24

CODE_05EAA0:        8B            PHB                       ;
CODE_05EAA1:        4B            PHK                       ;
CODE_05EAA2:        AB            PLB                       ;
CODE_05EAA3:        A0 F0         LDY #$F0                  ;
CODE_05EAA5:        BD 1A 02      LDA $021A,x               ;
CODE_05EAA8:        85 E4         STA $E4                   ;
CODE_05EAAA:        B5 79         LDA $79,x                 ;
CODE_05EAAC:        85 E5         STA $E5                   ;
CODE_05EAAE:        C2 20         REP #$20                  ;
CODE_05EAB0:        A5 E4         LDA $E4                   ;
CODE_05EAB2:        18            CLC                       ;
CODE_05EAB3:        69 10 00      ADC #$0010                ;
CODE_05EAB6:        38            SEC                       ;
CODE_05EAB7:        E5 42         SBC $42                   ;
CODE_05EAB9:        85 E4         STA $E4                   ;
CODE_05EABB:        18            CLC                       ;
CODE_05EABC:        69 04 00      ADC #$0004                ;
CODE_05EABF:        85 E6         STA $E6                   ;
CODE_05EAC1:        18            CLC                       ;
CODE_05EAC2:        69 08 00      ADC #$0008                ;
CODE_05EAC5:        85 E8         STA $E8                   ;
CODE_05EAC7:        E2 20         SEP #$20                  ;
CODE_05EAC9:        A5 E4         LDA $E4                   ;
CODE_05EACB:        99 00 08      STA $0800,y               ;
CODE_05EACE:        BD 38 02      LDA $0238,x               ;
CODE_05EAD1:        99 01 08      STA $0801,y               ;
CODE_05EAD4:        A9 2B         LDA #$2B                  ;
CODE_05EAD6:        99 03 08      STA $0803,y               ;
CODE_05EAD9:        A5 09         LDA $09                   ;
CODE_05EADB:        29 18         AND #$18                  ;
CODE_05EADD:        4A            LSR A                     ;
CODE_05EADE:        4A            LSR A                     ;
CODE_05EADF:        4A            LSR A                     ;
CODE_05EAE0:        DA            PHX                       ;
CODE_05EAE1:        AA            TAX                       ;
CODE_05EAE2:        E0 03         CPX #$03                  ;
CODE_05EAE4:        D0 02         BNE CODE_05EAE8           ;
CODE_05EAE6:        A2 01         LDX #$01                  ;
CODE_05EAE8:        BD 9D EA      LDA DATA_05EA9D,x               ;
CODE_05EAEB:        99 02 08      STA $0802,y               ;
CODE_05EAEE:        FA            PLX                       ;
CODE_05EAEF:        AD 0F 07      LDA $070F                 ;
CODE_05EAF2:        F0 35         BEQ CODE_05EB29           ;
CODE_05EAF4:        AD 0F 01      LDA $010F                 ;
CODE_05EAF7:        0A            ASL A                     ;
CODE_05EAF8:        AA            TAX                       ;
CODE_05EAF9:        A5 E6         LDA $E6                   ;
CODE_05EAFB:        99 04 08      STA $0804,y               ;
CODE_05EAFE:        A5 E8         LDA $E8                   ;
CODE_05EB00:        99 08 08      STA $0808,y               ;
CODE_05EB03:        AD 0D 01      LDA $010D                 ;
CODE_05EB06:        99 05 08      STA $0805,y               ;
CODE_05EB09:        99 09 08      STA $0809,y               ;
CODE_05EB0C:        BD 93 EA      LDA DATA_05EA93,x               ;
CODE_05EB0F:        99 06 08      STA $0806,y               ;
CODE_05EB12:        BD 94 EA      LDA DATA_05EA93+1,x               ;
CODE_05EB15:        99 0A 08      STA $080A,y               ;
CODE_05EB18:        A9 22         LDA #$22                  ;
CODE_05EB1A:        99 07 08      STA $0807,y               ;
CODE_05EB1D:        99 0B 08      STA $080B,y               ;
CODE_05EB20:        E0 04         CPX #$04                  ;
CODE_05EB22:        B0 05         BCS CODE_05EB29           ;
CODE_05EB24:        A9 23         LDA #$23                  ;
CODE_05EB26:        99 0B 08      STA $080B,y               ;
CODE_05EB29:        A9 02         LDA #$02                  ;
CODE_05EB2B:        85 DD         STA $DD                   ;
CODE_05EB2D:        A5 E5         LDA $E5                   ;
CODE_05EB2F:        F0 02         BEQ CODE_05EB33           ;
CODE_05EB31:        A9 01         LDA #$01                  ;
CODE_05EB33:        05 DD         ORA $DD                   ;
CODE_05EB35:        99 00 0C      STA $0C00,y               ;
CODE_05EB38:        64 DD         STZ $DD                   ;
CODE_05EB3A:        A5 E7         LDA $E7                   ;
CODE_05EB3C:        F0 02         BEQ CODE_05EB40           ;
CODE_05EB3E:        A9 01         LDA #$01                  ;
CODE_05EB40:        05 DD         ORA $DD                   ;
CODE_05EB42:        99 04 0C      STA $0C04,y               ;
CODE_05EB45:        E0 04         CPX #$04                  ;
CODE_05EB47:        B0 04         BCS CODE_05EB4D           ;
CODE_05EB49:        A9 02         LDA #$02                  ;
CODE_05EB4B:        85 DD         STA $DD                   ;
CODE_05EB4D:        A5 E9         LDA $E9                   ;
CODE_05EB4F:        F0 02         BEQ CODE_05EB53           ;
CODE_05EB51:        A9 01         LDA #$01                  ;
CODE_05EB53:        05 DD         ORA $DD                   ;
CODE_05EB55:        99 08 0C      STA $0C08,y               ;
CODE_05EB58:        AB            PLB                       ;
CODE_05EB59:        6B            RTL                       ;

CODE_05EB5A:        8B            PHB                       ;
CODE_05EB5B:        4B            PHK                       ;
CODE_05EB5C:        AB            PLB                       ;
CODE_05EB5D:        AD FC 07      LDA $07FC                 ;\ 
CODE_05EB60:        8F F8 1F 70   STA $701FF8               ;/ Set more difficult quest flag in SRAM
CODE_05EB64:        AD 5F 07      LDA $075F                 ;\
CODE_05EB67:        8F F9 1F 70   STA $701FF9               ;/ Set current world in SRAM
CODE_05EB6B:        A9 01         LDA #$01                  ;
CODE_05EB6D:        8D 0B 0F      STA $0F0B                 ;
CODE_05EB70:        A9 01         LDA #$01                  ;
CODE_05EB72:        8D FC 07      STA $07FC                 ;
CODE_05EB75:        8D 5D 07      STA $075D                 ;Enable hidden 1-up flag
CODE_05EB78:        8D FB 07      STA $07FB                 ;
CODE_05EB7B:        8D 6A 07      STA $076A                 ;
CODE_05EB7E:        8F 05 FB 7F   STA $7FFB05               ;
CODE_05EB82:        A9 80         LDA #$80                  ;
CODE_05EB84:        8D 02 16      STA $1602                 ;
CODE_05EB87:        9C 5F 07      STZ $075F                 ;
CODE_05EB8A:        9C 60 07      STZ $0760                 ;
CODE_05EB8D:        9C 5C 07      STZ $075C                 ;
CODE_05EB90:        9C 5B 07      STZ $075B                 ;
CODE_05EB93:        9C 0B 0F      STZ $0F0B                 ;
CODE_05EB96:        AB            PLB                       ;
CODE_05EB97:        22 87 A2 03   JSL CODE_03A287           ;
CODE_05EB9B:        6B            RTL                       ;

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

CODE_05EE3A:        0B            PHD                       ;
CODE_05EE3B:        A9 07         LDA #$07                  ;
CODE_05EE3D:        EB            XBA                       ;
CODE_05EE3E:        A9 00         LDA #$00                  ;
CODE_05EE40:        5B            TCD                       ;
CODE_05EE41:        A2 05         LDX #$05                  ;
CODE_05EE43:        A5 53         LDA $53                   ;
CODE_05EE45:        F0 02         BEQ CODE_05EE49           ;
CODE_05EE47:        A2 0B         LDX #$0B                  ;
CODE_05EE49:        A0 05         LDY #$05                  ;
CODE_05EE4B:        38            SEC                       ;
CODE_05EE4C:        B5 CE         LDA $CE,x                 ;
CODE_05EE4E:        F9 C8 07      SBC $07C8,y               ;
CODE_05EE51:        CA            DEX                       ;
CODE_05EE52:        88            DEY                       ;
CODE_05EE53:        10 F7         BPL CODE_05EE4C           ;
CODE_05EE55:        90 0D         BCC CODE_05EE64           ;
CODE_05EE57:        E8            INX                       ;
CODE_05EE58:        C8            INY                       ;
CODE_05EE59:        B5 CE         LDA $CE,x                 ;
CODE_05EE5B:        99 C8 07      STA $07C8,y               ;
CODE_05EE5E:        E8            INX                       ;
CODE_05EE5F:        C8            INY                       ;
CODE_05EE60:        C0 06         CPY #$06                  ;
CODE_05EE62:        90 F5         BCC CODE_05EE59           ;
CODE_05EE64:        2B            PLD                       ;
CODE_05EE65:        6B            RTL                       ;

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
